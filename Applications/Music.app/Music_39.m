uint64_t sub_100461820(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101183AB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v34 - v3;
  v5 = sub_10010FC20(&qword_101181DB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v34 - v6;
  v8 = type metadata accessor for UIButton.Configuration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v35 = v4;
    v36 = a1;
    static UIButton.Configuration.plain()();
    v34 = objc_opt_self();
    v14 = [v34 clearColor];
    v15 = v13;
    v16 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.backgroundColor.setter();
    v16(v37, 0);
    v17 = v13;
    v18 = objc_opt_self();
    v19 = [v18 configurationWithPointSize:12.0];
    v20 = [v18 configurationWithWeight:7];
    v21 = [v19 configurationByApplyingConfiguration:v20];

    v22 = &v17[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_style];
    if (v17[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_style + 8] == 1)
    {
      UIButton.Configuration.title.setter();
      if (qword_10117F770 != -1)
      {
        swift_once();
      }

      v23 = &qword_101218D80;
      v24 = v35;
    }

    else
    {
      v25 = *v22;
      if (*v22 >= 1)
      {
        sub_10010FC20(&qword_101186688);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_100EBC6B0;
        *(v26 + 56) = &type metadata for Int;
        *(v26 + 64) = &protocol witness table for Int;
        *(v26 + 32) = v25;
        static String.localizedStringWithFormat(_:_:)();
        v17 = v15;
      }

      v24 = v35;
      UIButton.Configuration.title.setter();
      if (qword_10117F778 != -1)
      {
        swift_once();
      }

      v23 = &qword_101218D88;
    }

    v27 = [v18 configurationWithHierarchicalColor:*v23];
    v28 = [v21 configurationByApplyingConfiguration:v27];

    v29 = v28;
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    v30 = String._bridgeToObjectiveC()();
    v31 = [objc_opt_self() systemImageNamed:v30];

    UIButton.Configuration.image.setter();
    v32 = [v34 labelColor];
    UIButton.Configuration.baseForegroundColor.setter();
    UIButton.Configuration.imagePadding.setter();
    UIButton.Configuration.contentInsets.setter();
    UIConfigurationTextAttributesTransformer.init(_:)();
    v33 = type metadata accessor for UIConfigurationTextAttributesTransformer();
    (*(*(v33 - 8) + 56))(v7, 0, 1, v33);
    UIButton.Configuration.titleTextAttributesTransformer.setter();
    (*(v9 + 16))(v24, v11, v8);
    (*(v9 + 56))(v24, 0, 1, v8);
    UIButton.configuration.setter();

    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_100461D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  [objc_opt_self() systemFontOfSize:UIFontDescriptorSystemDesignRounded weight:13.0 design:UIFontWeightHeavy];
  sub_10016D0B4();
  return AttributeContainer.subscript.setter();
}

id sub_100461E6C()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for NowPlayingRouteSharePlayTogetherControl();
  objc_msgSendSuper2(&v7, "layoutSubviews");
  [v0 bounds];
  v1 = &v0[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_lastSeenBounds];
  result = CGRectEqualToRect(v8, *&v0[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_lastSeenBounds]);
  if ((result & 1) == 0)
  {
    if (v0[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_isBadgeVisible] == 1)
    {
      sub_100461F54();
    }

    sub_1004604BC();
    result = [v0 bounds];
    *v1 = v3;
    *(v1 + 1) = v4;
    *(v1 + 2) = v5;
    *(v1 + 3) = v6;
  }

  return result;
}

void sub_100461F54()
{
  v1 = v0;
  if (v0[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_isBadgeVisible] == 1)
  {
    v2 = [objc_allocWithZone(CAShapeLayer) init];
    Mutable = CGPathCreateMutable();
    [v0 bounds];
    CGRectGetMaxX(v9);
    if (qword_10117F758 != -1)
    {
      swift_once();
    }

    if (qword_10117F760 != -1)
    {
      swift_once();
    }

    CGMutablePathRef.addEllipse(in:transform:)();
    [v0 bounds];
    CGRectGetWidth(v10);
    [v0 bounds];
    CGRectGetHeight(v11);
    CGMutablePathRef.addRect(_:transform:)();
    [v2 setPath:Mutable];
    [v2 setFillRule:kCAFillRuleEvenOdd];
    v3 = [*&v0[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_containerView] layer];
    [v3 setMask:v2];

    v4 = *&v1[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_badgeView];
    [v4 setHidden:0];
    CGRect.center.getter();
    [v4 setCenter:?];
    if (qword_10117F768 != -1)
    {
      swift_once();
    }

    [v4 frame];
    [v4 setFrame:?];
  }

  else
  {
    v5 = [*&v0[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_containerView] layer];
    [v5 setMask:0];

    v6 = *&v0[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_badgeView];

    [v6 setHidden:1];
  }
}

id sub_1004622A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingRouteSharePlayTogetherControl();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for MusicTabsDictionaryProvider.Configuration.AMSBagConfiguration.State(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MusicTabsDictionaryProvider.Configuration.AMSBagConfiguration.State(uint64_t result, int a2, int a3)
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

uint64_t sub_100462408(uint64_t a1)
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

uint64_t sub_100462424(uint64_t result, int a2)
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

void sub_100462454()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButton;
  v3 = [objc_allocWithZone(MPRouteButton) init];
  v4 = UIView.forAutolayout.getter();

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_sharePlayTogetherButton;
  v6 = [objc_allocWithZone(UIButton) init];
  v7 = UIView.forAutolayout.getter();

  *(v1 + v5) = v7;
  v8 = v1 + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_style;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_isBadgeVisible) = 0;
  v9 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_containerView;
  v10 = [objc_allocWithZone(UIStackView) init];
  v11 = UIView.forAutolayout.getter();

  *(v1 + v9) = v11;
  v12 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButtonContainerView;
  *(v1 + v12) = [objc_allocWithZone(UIView) init];
  v13 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_sharePlayTogetherButtonContainerView;
  *(v1 + v13) = [objc_allocWithZone(UIView) init];
  v14 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_badgeView;
  *(v1 + v14) = [objc_allocWithZone(UIView) init];
  *(v1 + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_inactiveStyleConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_activeStyleConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeOnlyStyleConstraints) = _swiftEmptyArrayStorage;
  v15 = (v1 + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_lastSeenBounds);
  *v15 = 0u;
  v15[1] = 0u;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100462628()
{
  if (qword_10117F6B8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100462684()
{
  v0 = sub_10010FC20(&qword_10118C2B0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  _s14descr101092F61V16TracklistManagerCMa();
  v7 = swift_allocObject();
  type metadata accessor for Playlist.Entry();
  MusicItemCollection.init(arrayLiteral:)();
  (*(v1 + 16))(v3, v6, v0);
  Published.init(initialValue:)();
  (*(v1 + 8))(v6, v0);
  v8 = OBJC_IVAR____TtCO5Music14ClarityUIMusic16TracklistManager_playlist;
  v9 = type metadata accessor for Playlist();
  (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
  return v7;
}

uint64_t sub_100462830@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = _s14descr101092F61V19PlaylistDetailsViewVMa();
  v43 = *(v2 - 8);
  v42 = *(v43 + 64);
  __chkstk_darwin(v2 - 8);
  v41 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MultimodalListStyle.IconStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  v11 = sub_10010FC20(&qword_101190DF8);
  __chkstk_darwin(v11 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  v17 = type metadata accessor for MultimodalListStyle();
  v18 = *(v17 - 8);
  v38 = v17;
  v39 = v18;
  __chkstk_darwin(v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10010FC20(&qword_101190E00);
  v22 = *(v21 - 8);
  v36 = v21;
  v37 = v22;
  __chkstk_darwin(v21);
  v24 = &v34 - v23;
  v35 = v1;
  v44 = v1;
  sub_10010FC20(&qword_101190E08);
  sub_100465430();
  List<>.init(content:)();
  sub_10056CF3C(v16);
  v25 = type metadata accessor for MultimodalListStyle.Layout();
  (*(*(v25 - 8) + 56))(v16, 0, 1, v25);
  (*(v5 + 104))(v10, enum case for MultimodalListStyle.IconStyle.square(_:), v4);
  sub_1000089F8(v16, v13, &qword_101190DF8);
  (*(v5 + 16))(v7, v10, v4);
  MultimodalListStyle.init(layout:iconStyle:)();
  (*(v5 + 8))(v10, v4);
  sub_1000095E8(v16, &qword_101190DF8);
  sub_100020674(&qword_101190E28, &qword_101190E00);
  v26 = v40;
  v27 = v36;
  v28 = v38;
  View.listStyle<A>(_:)();
  (*(v39 + 8))(v20, v28);
  (*(v37 + 8))(v24, v27);
  v29 = v41;
  sub_1004654E0(v35, v41);
  v30 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v31 = swift_allocObject();
  sub_100465998(v29, v31 + v30, _s14descr101092F61V19PlaylistDetailsViewVMa);
  result = sub_10010FC20(&qword_101190E30);
  v33 = (v26 + *(result + 36));
  *v33 = sub_100465544;
  v33[1] = v31;
  v33[2] = 0;
  v33[3] = 0;
  return result;
}

uint64_t sub_100462D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v51 = sub_10010FC20(&qword_101190E20);
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = (&v38 - v3);
  v4 = sub_10010FC20(&qword_101190E38);
  v46 = *(v4 - 8);
  v47 = v4;
  __chkstk_darwin(v4);
  v45 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v44 = &v38 - v7;
  v8 = _s14descr101092F61V19PlaylistDetailsViewVMa();
  v9 = v8 - 8;
  v42 = *(v8 - 8);
  v10 = *(v42 + 64);
  __chkstk_darwin(v8);
  v43 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&qword_10118C2B0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v38 - v13;
  v15 = a1;
  v16 = (a1 + *(v9 + 36));
  v17 = *v16;
  v18 = v16[1];
  v19 = *(v16 + 16);
  _s14descr101092F61V16TracklistManagerCMa();
  sub_100465AB4(&unk_101190DB8, _s14descr101092F61V16TracklistManagerCMa);
  v40 = v18;
  v41 = v17;
  v39 = v19;
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100020674(&unk_101186ED0, &qword_10118C2B0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  (*(v12 + 8))(v14, v11);
  if (v53 == v52)
  {
    v20 = 1;
    v21 = v50;
  }

  else
  {
    v38 = v10;
    v22 = v15;
    v23 = v15;
    v24 = v43;
    sub_1004654E0(v23, v43);
    v25 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v42 = swift_allocObject();
    sub_100465998(v24, v42 + v25, _s14descr101092F61V19PlaylistDetailsViewVMa);
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_1004654E0(v22, v24);
    v26 = swift_allocObject();
    sub_100465998(v24, v26 + v25, _s14descr101092F61V19PlaylistDetailsViewVMa);
    sub_10010FC20(&qword_101190E40);
    sub_100020674(&qword_101190E48, &qword_10118C2B0);
    sub_10046581C();
    sub_100465AB4(&qword_101190E60, &type metadata accessor for Playlist.Entry);
    v27 = v44;
    ForEach<>.init(_:content:)();
    v29 = v45;
    v28 = v46;
    v30 = *(v46 + 16);
    v31 = v47;
    v30(v45, v27, v47);
    v32 = v48;
    *v48 = sub_10024F1B0;
    *(v32 + 8) = 0;
    *(v32 + 16) = 0;
    v33 = v42;
    *(v32 + 24) = sub_1004655A4;
    *(v32 + 32) = v33;
    v34 = sub_10010FC20(&qword_101190E68);
    v30((v32 + *(v34 + 48)), v29, v31);
    KeyValueObservationTrigger.keyPath.getter();
    v35 = *(v28 + 8);

    v35(v27, v31);
    v35(v29, v31);
    sub_1000D8FC4();

    v36 = v50;
    sub_10003D17C(v32, v50, &qword_101190E20);
    v20 = 0;
    v21 = v36;
  }

  return (*(v49 + 56))(v21, v20, 1, v51);
}

uint64_t sub_100463408()
{
  v1 = sub_10010FC20(&qword_101191570);
  __chkstk_darwin(v1 - 8);
  v28 = &v20 - v2;
  v3 = sub_10010FC20(&qword_10118C2B0);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = &v20 - v4;
  v5 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v8 = _s14descr101092F61V19PlaylistDetailsViewVMa();
  _s14descr101092F61V20PlaybackStateManagerCMa();
  sub_100465AB4(&qword_101190DA0, _s14descr101092F61V20PlaybackStateManagerCMa);
  StateObject.wrappedValue.getter();
  v21 = *(v8 + 36);
  v9 = sub_10040FD74();

  v10 = (v0 + *(v8 + 32));
  v11 = *v10;
  v12 = *(v10 + 1);
  v24 = v11;
  v30 = v11;
  v23 = v12;
  v31 = v12;
  v22 = sub_10010FC20(&unk_101197960);
  State.wrappedValue.getter();
  if (v9 == 2 || v9 == 4 && (v29 & 1) == 0)
  {
    v16 = StateObject.wrappedValue.getter();
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    type metadata accessor for MainActor();

    v18 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = &protocol witness table for MainActor;
    v19[4] = v16;
    sub_1001F524C(0, 0, v7, &unk_100ECE108, v19);
  }

  else
  {
    StateObject.wrappedValue.getter();
    _s14descr101092F61V16TracklistManagerCMa();
    sub_100465AB4(&unk_101190DB8, _s14descr101092F61V16TracklistManagerCMa);
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = v25;
    static Published.subscript.getter();

    v14 = v28;
    sub_10034DF4C(v28);
    (*(v26 + 8))(v13, v27);
    sub_100410208(v0 + v21, v14);

    sub_1000095E8(v14, &qword_101191570);
    v30 = v24;
    v31 = v23;
    v29 = 0;
    return State.wrappedValue.setter();
  }
}

uint64_t sub_100463888(uint64_t a1)
{
  v2 = type metadata accessor for Playlist();
  v51 = *(v2 - 8);
  v52 = v2;
  __chkstk_darwin(v2);
  v45 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&unk_1011A4980);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v42 - v6;
  v8 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v8 - 8);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v42 - v11;
  __chkstk_darwin(v13);
  v15 = &v42 - v14;
  v16 = _s14descr101092F61V19PlaylistDetailsViewVMa();
  _s14descr101092F61V16TracklistManagerCMa();
  sub_100465AB4(&unk_101190DB8, _s14descr101092F61V16TracklistManagerCMa);
  StateObject.wrappedValue.getter();
  v17 = *(v16 + 36);
  sub_10049CBF4(a1 + v17);

  v53 = v16;
  v18 = (a1 + *(v16 + 20));
  v20 = *v18;
  v19 = v18[1];
  v21 = *(v18 + 16);
  v22 = _s14descr101092F61V20PlaybackStateManagerCMa();
  v23 = sub_100465AB4(&qword_101190DA0, _s14descr101092F61V20PlaybackStateManagerCMa);
  v50 = v19;
  v49 = v21;
  v47 = v23;
  v48 = v22;
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v24 = v52;
  v25 = *(v51 + 16);
  v54 = a1;
  v26 = a1 + v17;
  v27 = v51;
  v25(v12, v26, v52);
  (*(v27 + 56))(v12, 0, 1, v24);
  v28 = *(v5 + 56);
  sub_1000089F8(v15, v7, &unk_1011814D0);
  sub_1000089F8(v12, &v7[v28], &unk_1011814D0);
  v29 = *(v27 + 48);
  if (v29(v7, 1, v24) == 1)
  {
    sub_1000095E8(v12, &unk_1011814D0);
    sub_1000095E8(v15, &unk_1011814D0);
    if (v29(&v7[v28], 1, v24) == 1)
    {
      sub_1000095E8(v7, &unk_1011814D0);
LABEL_12:
      v33 = 0;
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  v43 = v12;
  v44 = v20;
  v30 = v46;
  sub_1000089F8(v7, v46, &unk_1011814D0);
  if (v29(&v7[v28], 1, v24) == 1)
  {
    sub_1000095E8(v43, &unk_1011814D0);
    sub_1000095E8(v15, &unk_1011814D0);
    (*(v27 + 8))(v30, v24);
LABEL_6:
    sub_1000095E8(v7, &unk_1011A4980);
    goto LABEL_7;
  }

  v34 = &v7[v28];
  v35 = v45;
  (*(v27 + 32))(v45, v34, v24);
  sub_100465AB4(&unk_1011A4660, &type metadata accessor for Playlist);
  v36 = dispatch thunk of static Equatable.== infix(_:_:)();
  v37 = *(v27 + 8);
  v37(v35, v24);
  sub_1000095E8(v43, &unk_1011814D0);
  sub_1000095E8(v15, &unk_1011814D0);
  v37(v30, v24);
  sub_1000095E8(v7, &unk_1011814D0);
  if (v36)
  {
    goto LABEL_12;
  }

LABEL_7:
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v31 = v56;
  if (!v56)
  {

    goto LABEL_12;
  }

  v32 = [v56 state];

  v33 = v32 == 4;
LABEL_13:
  v38 = (v54 + *(v53 + 32));
  v39 = *v38;
  v40 = *(v38 + 1);
  LOBYTE(v56) = v39;
  v57 = v40;
  v55 = v33;
  sub_10010FC20(&unk_101197960);
  return State.wrappedValue.setter();
}

uint64_t sub_100463F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v50 = a3;
  v47 = type metadata accessor for Playlist.Entry();
  v43 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = v4;
  v48 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s14descr101092F61V19PlaylistDetailsViewVMa();
  v44 = *(v5 - 8);
  v6 = *(v44 + 64);
  __chkstk_darwin(v5);
  v45 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = _s14descr101092F61V12SongCellViewVMa();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_101190E70);
  __chkstk_darwin(v9 - 8);
  v11 = v39 - v10;
  v12 = type metadata accessor for Song();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  Playlist.Entry.item.getter();
  v17 = type metadata accessor for Playlist.Entry.Item();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v11, 1, v17) == 1)
  {
    sub_1000095E8(v11, &qword_101190E70);
LABEL_6:
    v37 = 1;
    v36 = v50;
    return (*(v49 + 56))(v36, v37, 1, v51);
  }

  if ((*(v18 + 88))(v11, v17) != enum case for Playlist.Entry.Item.song(_:))
  {
    (*(v18 + 8))(v11, v17);
    goto LABEL_6;
  }

  (*(v18 + 96))(v11, v17);
  v40 = v12;
  v41 = v13;
  (*(v13 + 32))(v15, v11, v12);
  v19 = v42;
  v39[3] = type metadata accessor for PlaybackIndicator();
  v39[2] = sub_100465AB4(&qword_101186998, type metadata accessor for PlaybackIndicator);
  v39[1] = StateObject.wrappedValue.getter();
  v20 = *(v5 + 36);
  v21 = v51;
  v22 = *(v51 + 28);
  v23 = type metadata accessor for Playlist();
  (*(*(v23 - 8) + 16))(&v8[v22], v19 + v20, v23);
  v24 = v43;
  v25 = *(v43 + 16);
  v26 = v47;
  v25(&v8[*(v21 + 32)], v16, v47);
  (*(v41 + 16))(&v8[*(v21 + 36)], v15, v40);
  v27 = v19;
  v28 = v45;
  sub_1004654E0(v27, v45);
  v25(v48, v16, v26);
  v29 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v30 = (v6 + *(v24 + 80) + v29) & ~*(v24 + 80);
  v31 = swift_allocObject();
  sub_100465998(v28, v31 + v29, _s14descr101092F61V19PlaylistDetailsViewVMa);
  (*(v24 + 32))(v31 + v30, v48, v26);
  *(v8 + 2) = sub_100462628;
  *(v8 + 3) = 0;
  v8[32] = 0;
  v32 = ObservedObject.init(wrappedValue:)();
  v34 = v33;
  (*(v41 + 8))(v15, v40);
  *(v8 + 5) = v32;
  *(v8 + 6) = v34;
  *v8 = sub_1004658D8;
  *(v8 + 1) = v31;
  v35 = v50;
  sub_100465998(v8, v50, _s14descr101092F61V12SongCellViewVMa);
  v36 = v35;
  v37 = 0;
  return (*(v49 + 56))(v36, v37, 1, v51);
}

uint64_t sub_100464524(uint64_t a1)
{
  v91 = a1;
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v72 = &v69 - v3;
  v88 = type metadata accessor for Playlist.Entry();
  v90 = *(v88 - 8);
  __chkstk_darwin(v88);
  v71 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10010FC20(&qword_101190E78);
  __chkstk_darwin(v78);
  v74 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v75 = &v69 - v7;
  v83 = sub_10010FC20(&qword_101190E80) - 8;
  __chkstk_darwin(v83);
  v92 = (&v69 - v8);
  v9 = sub_10010FC20(&qword_101191570);
  __chkstk_darwin(v9 - 8);
  v81 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v73 = &v69 - v12;
  __chkstk_darwin(v13);
  v77 = &v69 - v14;
  __chkstk_darwin(v15);
  v70 = &v69 - v16;
  __chkstk_darwin(v17);
  v76 = &v69 - v18;
  __chkstk_darwin(v19);
  v21 = &v69 - v20;
  v22 = _s14descr101092F61V19PlaylistDetailsViewVMa();
  v23 = (v1 + *(v22 + 20));
  v25 = *v23;
  v24 = v23[1];
  v26 = *(v23 + 16);
  v27 = _s14descr101092F61V20PlaybackStateManagerCMa();
  v28 = sub_100465AB4(&qword_101190DA0, _s14descr101092F61V20PlaybackStateManagerCMa);
  StateObject.wrappedValue.getter();
  v29 = *(v22 + 36);
  v82 = v1;
  v79 = v29;
  v80 = v22;
  v30 = sub_10040FD74();

  v89 = v25;
  v87 = v24;
  v86 = v26;
  v84 = v27;
  v85 = v28;
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v31 = *(v83 + 56);
  v32 = v92;
  *v92 = v30;
  sub_10003D17C(v21, v32 + v31, &qword_101191570);
  if (v30 != 4)
  {
    v33 = v30 == 2;
    v35 = v91;
    v34 = v92;
    v36 = v90;
    v37 = v88;
    if (!v33)
    {
      goto LABEL_17;
    }

    v38 = v76;
    (*(v90 + 16))(v76, v91, v88);
    (*(v36 + 56))(v38, 0, 1, v37);
    v39 = *(v78 + 48);
    v40 = v75;
    sub_1000089F8(v38, v75, &qword_101191570);
    sub_1000089F8(v34 + v31, v40 + v39, &qword_101191570);
    v41 = *(v36 + 48);
    if (v41(v40, 1, v37) == 1)
    {
      sub_1000095E8(v38, &qword_101191570);
      if (v41(v40 + v39, 1, v37) != 1)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    v54 = v70;
    sub_1000089F8(v40, v70, &qword_101191570);
    if (v41(v40 + v39, 1, v37) == 1)
    {
      v55 = v76;
LABEL_15:
      sub_1000095E8(v55, &qword_101191570);
      (*(v36 + 8))(v54, v37);
      v35 = v91;
      goto LABEL_16;
    }

    v61 = v40 + v39;
    v62 = v71;
    (*(v36 + 32))(v71, v61, v37);
    sub_100465AB4(&unk_1011A4730, &type metadata accessor for Playlist.Entry);
    LODWORD(v83) = dispatch thunk of static Equatable.== infix(_:_:)();
    v63 = *(v36 + 8);
    v63(v62, v37);
    sub_1000095E8(v76, &qword_101191570);
    v63(v54, v37);
    v34 = v92;
    sub_1000095E8(v40, &qword_101191570);
    if ((v83 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  v42 = v73;
  v36 = v90;
  v43 = v77;
  v37 = v88;
  (*(v90 + 16))(v77, v91, v88);
  (*(v36 + 56))(v43, 0, 1, v37);
  v44 = *(v78 + 48);
  v45 = v74;
  sub_1000089F8(v43, v74, &qword_101191570);
  v34 = v92;
  sub_1000089F8(v92 + v31, v45 + v44, &qword_101191570);
  v46 = *(v36 + 48);
  if (v46(v45, 1, v37) != 1)
  {
    sub_1000089F8(v45, v42, &qword_101191570);
    if (v46(v45 + v44, 1, v37) == 1)
    {
      v40 = v45;
      v54 = v42;
      v55 = v77;
      goto LABEL_15;
    }

    v64 = v45 + v44;
    v65 = v45;
    v66 = v71;
    (*(v36 + 32))(v71, v64, v37);
    sub_100465AB4(&unk_1011A4730, &type metadata accessor for Playlist.Entry);
    v67 = dispatch thunk of static Equatable.== infix(_:_:)();
    v68 = *(v36 + 8);
    v68(v66, v37);
    sub_1000095E8(v77, &qword_101191570);
    v68(v42, v37);
    v36 = v90;
    v34 = v92;
    sub_1000095E8(v65, &qword_101191570);
    v35 = v91;
    if ((v67 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_10:
    sub_1000095E8(v34 + v31, &qword_101191570);
    v48 = StateObject.wrappedValue.getter();
    v49 = type metadata accessor for TaskPriority();
    v50 = v72;
    (*(*(v49 - 8) + 56))(v72, 1, 1, v49);
    type metadata accessor for MainActor();

    v51 = static MainActor.shared.getter();
    v52 = swift_allocObject();
    v52[2] = v51;
    v52[3] = &protocol witness table for MainActor;
    v52[4] = v48;
    sub_1001F524C(0, 0, v50, &unk_100ECE100, v52);
  }

  sub_1000095E8(v43, &qword_101191570);
  v47 = v46(v45 + v44, 1, v37);
  v40 = v45;
  v35 = v91;
  if (v47 == 1)
  {
LABEL_9:
    sub_1000095E8(v40, &qword_101191570);
    goto LABEL_10;
  }

LABEL_16:
  sub_1000095E8(v40, &qword_101190E78);
LABEL_17:
  StateObject.wrappedValue.getter();
  v56 = v81;
  (*(v36 + 16))(v81, v35, v37);
  (*(v36 + 56))(v56, 0, 1, v37);
  v57 = v82;
  sub_100410208(v82 + v79, v56);

  sub_1000095E8(v56, &qword_101191570);
  v58 = (v57 + *(v80 + 32));
  v59 = *v58;
  v60 = *(v58 + 1);
  v94 = *v58;
  v95 = v60;
  sub_10010FC20(&unk_101197960);
  State.wrappedValue.getter();
  if (v93 == 1)
  {
    v94 = v59;
    v95 = v60;
    v93 = 0;
    State.wrappedValue.setter();
  }

  return sub_1000095E8(v34, &qword_101190E80);
}

uint64_t _s14descr101092F61V19PlaylistDetailsViewVMa()
{
  result = qword_101190D80;
  if (!qword_101190D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004650C4()
{
  sub_1004651A8();
  if (v0 <= 0x3F)
  {
    sub_100465200();
    if (v1 <= 0x3F)
    {
      sub_100465294();
      if (v2 <= 0x3F)
      {
        sub_100465328();
        if (v3 <= 0x3F)
        {
          sub_1004653BC();
          if (v4 <= 0x3F)
          {
            type metadata accessor for Playlist();
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

void sub_1004651A8()
{
  if (!qword_101190D90)
  {
    type metadata accessor for MultimodalListStyle.Layout();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_101190D90);
    }
  }
}

void sub_100465200()
{
  if (!qword_101190D98)
  {
    _s14descr101092F61V20PlaybackStateManagerCMa();
    sub_100465AB4(&qword_101190DA0, _s14descr101092F61V20PlaybackStateManagerCMa);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_101190D98);
    }
  }
}

void sub_100465294()
{
  if (!qword_101190DA8)
  {
    type metadata accessor for PlaybackIndicator();
    sub_100465AB4(&qword_101186998, type metadata accessor for PlaybackIndicator);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_101190DA8);
    }
  }
}

void sub_100465328()
{
  if (!qword_101190DB0)
  {
    _s14descr101092F61V16TracklistManagerCMa();
    sub_100465AB4(&unk_101190DB8, _s14descr101092F61V16TracklistManagerCMa);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_101190DB0);
    }
  }
}

void sub_1004653BC()
{
  if (!qword_101197850)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_101197850);
    }
  }
}

unint64_t sub_100465430()
{
  result = qword_101190E10;
  if (!qword_101190E10)
  {
    sub_1001109D0(&qword_101190E08);
    sub_100020674(&qword_101190E18, &qword_101190E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190E10);
  }

  return result;
}

uint64_t sub_1004654E0(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr101092F61V19PlaylistDetailsViewVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100465544()
{
  v1 = *(_s14descr101092F61V19PlaylistDetailsViewVMa() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100463888(v2);
}

uint64_t sub_100465600()
{
  v1 = _s14descr101092F61V19PlaylistDetailsViewVMa();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_10010FC20(&unk_101193FC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for MultimodalListStyle.Layout();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  sub_1000D8FC4();
  sub_1000D8FC4();
  sub_1000D8FC4();

  v4 = *(v1 + 36);
  v5 = type metadata accessor for Playlist();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_10046579C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s14descr101092F61V19PlaylistDetailsViewVMa() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100463F38(a1, v6, a2);
}

unint64_t sub_10046581C()
{
  result = qword_101190E50;
  if (!qword_101190E50)
  {
    sub_1001109D0(&qword_101190E40);
    sub_100465AB4(&qword_101190E58, _s14descr101092F61V12SongCellViewVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190E50);
  }

  return result;
}

uint64_t sub_1004658D8()
{
  v1 = *(_s14descr101092F61V19PlaylistDetailsViewVMa() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Playlist.Entry() - 8);
  return sub_100464524(v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t sub_100465998(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100465A00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100410CC8(a1, v4, v5, v6);
}

uint64_t sub_100465AB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100465AFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_100410CC8(a1, v4, v5, v6);
}

unint64_t sub_100465BB0()
{
  result = qword_101190E88[0];
  if (!qword_101190E88[0])
  {
    sub_1001109D0(&qword_101190E30);
    sub_1001109D0(&qword_101190E00);
    type metadata accessor for MultimodalListStyle();
    sub_100020674(&qword_101190E28, &qword_101190E00);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, qword_101190E88);
  }

  return result;
}

uint64_t sub_100465CD0()
{
  type metadata accessor for Array();
  result = type metadata accessor for Published();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Optional();
    result = type metadata accessor for Published();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100465DC0()
{
  v1 = *(*v0 + 96);
  type metadata accessor for Array();
  v2 = type metadata accessor for Published();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 104);
  type metadata accessor for Optional();
  v4 = type metadata accessor for Published();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_100465EB8()
{
  sub_100465DC0();

  return swift_deallocClassInstance();
}

uint64_t sub_100465F28@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SelectionManager();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100465F6C()
{
}

uint64_t sub_100465FAC()
{
  v1 = *(*v0 + 96);
  v2 = sub_10010FC20(&qword_101191068);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 104);
  v4 = sub_10010FC20(&unk_101191070);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TabSelectionManager()
{
  result = qword_101190F48;
  if (!qword_101190F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100466198()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_10046634C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x7473696C79616C70;
  if (v2 != 1)
  {
    v4 = 1735290739;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6D75626C61;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7473696C79616C70;
  if (*a2 != 1)
  {
    v8 = 1735290739;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6D75626C61;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
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

Swift::Int sub_10046643C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1004664D4()
{
  String.hash(into:)();
}

Swift::Int sub_100466558()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1004665EC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100479E88(*a1);
  *a2 = result;
  return result;
}

void sub_10046661C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x7473696C79616C70;
  if (v2 != 1)
  {
    v5 = 1735290739;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D75626C61;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100466670()
{
  v1 = type metadata accessor for Playlist.Folder.Item();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&unk_1011841D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  v9 = type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin(v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10047AAB4(v0, v11, type metadata accessor for PlaylistPicker.Mode);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v4, v11, v1);
    Hasher._combine(_:)(1uLL);
    sub_10047A9B8(&unk_10118D3C0, &type metadata accessor for Playlist.Folder.Item);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    Hasher._combine(_:)(0);
    sub_10047AA00();
    dispatch thunk of Hashable.hash(into:)();
    return (*(v6 + 8))(v8, v5);
  }
}

Swift::Int sub_100466914()
{
  Hasher.init(_seed:)();
  sub_100466670();
  return Hasher._finalize()();
}

Swift::Int sub_100466958()
{
  Hasher.init(_seed:)();
  sub_100466670();
  return Hasher._finalize()();
}

uint64_t sub_100466998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = type metadata accessor for AppInterfaceContext.Activity(0);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = *(a4 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = type metadata accessor for PlaylistPicker.Context(0);
  v5[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[14] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[15] = v8;
  v5[16] = v7;

  return _swift_task_switch(sub_100466AF8, v8, v7);
}

uint64_t sub_100466AF8()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v9 = v0[2];
  v8 = v0[3];
  v10 = sub_10010FC20(&unk_1011841D0);
  (*(*(v10 - 8) + 16))(v1, v9, v10);
  type metadata accessor for PlaylistPicker.Mode(0);
  swift_storeEnumTagMultiPayload();
  (*(v3 + 16))(v4, v8, v7);
  v11 = sub_100478C60(v4, v7, v6);
  v12 = (v1 + *(v2 + 20));
  *v12 = v11;
  v12[1] = v13;
  v12[2] = v14;
  sub_10047AAB4(v1, v5, type metadata accessor for PlaylistPicker.Context);
  swift_storeEnumTagMultiPayload();
  v15 = swift_task_alloc();
  v0[17] = v15;
  *v15 = v0;
  v15[1] = sub_100466C94;
  v17 = v0[8];
  v16 = v0[9];

  return sub_100706024(v16, v17);
}

uint64_t sub_100466C94()
{
  v2 = *v1;
  v3 = (*v1)[8];
  (*v1)[18] = v0;

  sub_10047AB30(v3, type metadata accessor for AppInterfaceContext.Activity);
  if (v0)
  {
    v4 = v2[15];
    v5 = v2[16];
    v6 = sub_100466EAC;
  }

  else
  {
    sub_10047AB30(v2[9], type metadata accessor for AppInterfaceContext.Activity);
    v4 = v2[15];
    v5 = v2[16];
    v6 = sub_100466DFC;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100466DFC()
{

  sub_10047AB30(*(v0 + 104), type metadata accessor for PlaylistPicker.Context);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100466EAC()
{

  if (qword_10117F6E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101218C50);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to present playlist picker.", v4, 2u);
  }

  sub_10047AB30(*(v0 + 104), type metadata accessor for PlaylistPicker.Context);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10046701C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for AppInterfaceContext.Activity(0);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for PlaylistPicker.Context(0);
  v2[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[9] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[10] = v4;
  v2[11] = v3;

  return _swift_task_switch(sub_100467120, v4, v3);
}

uint64_t sub_100467120()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[2];
  v5 = type metadata accessor for Playlist.Folder.Item();
  (*(*(v5 - 8) + 16))(v1, v4, v5);
  type metadata accessor for PlaylistPicker.Mode(0);
  swift_storeEnumTagMultiPayload();
  v6 = (v1 + *(v2 + 20));
  *v6 = 0;
  v6[1] = 0;
  v6[2] = 1;
  sub_10047AAB4(v1, v3, type metadata accessor for PlaylistPicker.Context);
  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_10046726C;
  v9 = v0[5];
  v8 = v0[6];

  return sub_100706024(v8, v9);
}

uint64_t sub_10046726C()
{
  v2 = *v1;
  v3 = (*v1)[5];
  (*v1)[13] = v0;

  sub_10047AB30(v3, type metadata accessor for AppInterfaceContext.Activity);
  if (v0)
  {
    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_100467478;
  }

  else
  {
    sub_10047AB30(v2[6], type metadata accessor for AppInterfaceContext.Activity);
    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_1004673D4;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1004673D4()
{

  sub_10047AB30(*(v0 + 64), type metadata accessor for PlaylistPicker.Context);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100467478()
{

  if (qword_10117F6E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101218C50);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to present playlist picker.", v4, 2u);
  }

  sub_10047AB30(*(v0 + 64), type metadata accessor for PlaylistPicker.Context);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1004675DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10002F3F4;

  return sub_100466998(a1, a2, v10, a3, a4);
}

uint64_t sub_1004676A0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_10046701C(a1, v4);
}

id sub_10046773C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v6 = v5;
  v161 = a5;
  v162 = a1;
  v149 = a3;
  v150 = a4;
  v148 = a2;
  v7 = type metadata accessor for Playlist.Folder();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v141 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  v142 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for Playlist();
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v138 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Playlist.Folder.Item();
  v155 = *(v13 - 8);
  v156 = v13;
  v14 = __chkstk_darwin(v13);
  v144 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v154 = &v138 - v16;
  v17 = type metadata accessor for Locale();
  __chkstk_darwin(v17 - 8);
  v158 = &v138 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v19 - 8);
  v157 = &v138 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10010FC20(&unk_10118F670);
  v22 = __chkstk_darwin(v21 - 8);
  v145 = &v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v143 = &v138 - v24;
  v152 = type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin(v152);
  v159 = &v138 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin(v26);
  v28 = (&v138 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v147 = _s9PlaylistsVMa(0);
  v29 = __chkstk_darwin(v147);
  v31 = &v138 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v151 = &v138 - v32;
  v33 = &v5[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_containerSource];
  *v33 = 0;
  v33[1] = 0;
  v33[2] = 1;
  v34 = &v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newPlaylistHandler];
  *v34 = 0;
  v34[1] = 0;
  v35 = &v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_addToPlaylistHandler];
  *v35 = 0;
  v35[1] = 0;
  v36 = &v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newFolderHandler];
  *v36 = 0;
  v36[1] = 0;
  v37 = &v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_moveToFolderHandler];
  *v37 = 0;
  v37[1] = 0;
  v38 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_folder;
  v153 = v8;
  v39 = *(v8 + 56);
  v160 = v7;
  v39(&v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_folder], 1, 1, v7);
  v40 = &v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_searchText];
  *v40 = 0;
  v40[1] = 0xE000000000000000;
  v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_allowsAnimatedChanges] = 0;
  *&v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_recentsResponseController] = 0;
  v41 = &v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists];
  v42 = sub_10010FC20(&qword_101193C80);
  v43 = *(*(v42 - 8) + 56);
  v43(v41, 1, 1, v42);
  v44 = &v41[*(type metadata accessor for PlaylistPicker.ViewController.Playlists(0) + 20)];
  v45 = v28;
  v46 = v26;
  v43(v44, 1, 1, v42);
  *&v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___contextBarButtonItem] = 0;
  *&v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___moveButton] = 0;
  v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_shouldDisableNewFolderCell] = 0;
  v47 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_playlistContainsDuplicatesCache;
  *&v6[v47] = sub_10010D1E8(_swiftEmptyArrayStorage);
  v48 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newCellRegistration;
  v49 = sub_10010FC20(&qword_101191148);
  (*(*(v49 - 8) + 56))(&v6[v48], 1, 1, v49);
  v50 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_playlistCellRegistration;
  v51 = sub_10010FC20(&qword_10118CCD8);
  (*(*(v51 - 8) + 56))(&v6[v50], 1, 1, v51);
  v52 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_folderCellRegistration;
  v53 = sub_10010FC20(&qword_10118CCE8);
  (*(*(v53 - 8) + 56))(&v6[v52], 1, 1, v53);
  v54 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_headerRegistration;
  v55 = sub_10010FC20(&unk_101191158);
  (*(*(v55 - 8) + 56))(&v6[v54], 1, 1, v55);
  *&v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___collectionView] = 0;
  *&v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___collectionViewLayout] = 0;
  sub_10047AAB4(v162, &v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context], type metadata accessor for PlaylistPicker.Context);
  v56 = *v33;
  v57 = v33[1];
  v58 = v33[2];
  v59 = v149;
  *v33 = v148;
  v33[1] = v59;
  v33[2] = v150;
  sub_10047AB1C(v56, v57, v58);
  swift_beginAccess();
  sub_1002190E0(v161, &v6[v38], &unk_10118F670);
  swift_endAccess();
  sub_1000089F8(&v6[v38], v45 + *(v26 + 20), &unk_10118F670);
  if (qword_10117F5D8 != -1)
  {
    swift_once();
  }

  *v45 = qword_101218AB8;
  *(v45 + *(v26 + 24)) = 0;
  type metadata accessor for MusicLibrary();

  *v31 = static MusicLibrary.shared.getter();
  *(v31 + 2) = 0;
  v31[24] = 1;
  v60 = v147;
  v61 = &v31[*(v147 + 36)];
  *v61 = 0;
  *(v61 + 1) = 0xE000000000000000;
  v149 = v60[10];
  v150 = v45;
  *&v31[v149] = &_swiftEmptySetSingleton;
  v62 = &v31[v60[11]];
  *v62 = 263;
  v63 = v60[8];
  sub_10047AAB4(v45, &v31[v63], _s9PlaylistsV5ScopeVMa);
  *(v31 + 4) = 256;
  v64 = objc_opt_self();
  v65 = [v64 standardUserDefaults];
  if (qword_10117F298 != -1)
  {
    swift_once();
  }

  v66 = sub_1000060E4(v46, qword_101218730);
  v148 = v63;
  v67 = sub_1001982EC(&v31[v63], v66);
  v147 = 0xD000000000000010;
  if (v67)
  {
    v68 = 0xD000000000000011;
  }

  else
  {
    v68 = 0xD000000000000010;
  }

  v146 = "LibraryPlaylists";
  if (v67)
  {
    v69 = "LibraryPlaylists";
  }

  else
  {
    v69 = "v32@0:8@16@24";
  }

  v164 = v68;
  v165 = v69 | 0x8000000000000000;

  v70._countAndFlagsBits = 0x53746E65746E6F43;
  v70._object = 0xEB0000000074726FLL;
  String.append(_:)(v70);

  sub_100110448();
  sub_10011049C();
  NSUserDefaults.decodeValue<A>(_:forKey:)(&_s11ContentSortVN, &v164);

  v71 = sub_100375B90(v164);
  if ((v71 & 0xFF00) == 0x200)
  {
    v72 = v150;
    v73 = sub_1001982EC(v150, v66);
    v71 = sub_10045FDA0(v73 & 1 | 0x80u);
    if ((v71 & 0xFF00) == 0x200)
    {
      LOBYTE(v74) = 1;
      LOBYTE(v71) = 7;
    }

    else
    {
      v74 = (v71 >> 8) & 1;
    }
  }

  else
  {
    v74 = (v71 >> 8) & 1;
    v72 = v150;
  }

  v75 = v148;
  *v62 = v71;
  v62[1] = v74;
  v76 = [v64 standardUserDefaults];
  v77 = sub_1001982EC(&v31[v75], v66);
  if (v77)
  {
    v78 = 0xD000000000000011;
  }

  else
  {
    v78 = v147;
  }

  v79 = v146;
  if ((v77 & 1) == 0)
  {
    v79 = "v32@0:8@16@24";
  }

  v80 = v79 | 0x8000000000000000;
  v81 = sub_10010FC20(&unk_10118CD70);
  v164 = v78;
  v165 = v80;

  v82._countAndFlagsBits = 0x704F7265746C6946;
  v82._object = 0xEC0000006E6F6974;
  String.append(_:)(v82);

  sub_100178DD8(&unk_101182910, sub_100178D84);
  sub_100178DD8(&unk_101182920, sub_100178E50);
  NSUserDefaults.decodeValue<A>(_:forKey:)(v81, &v164);

  v83 = v164;
  if (!v164)
  {
    v84 = sub_10018F3F4();
    v85 = Optional<A>.convertToSet.getter(v84);
    if (v85)
    {
      v83 = v85;
    }

    else
    {
      v83 = &_swiftEmptySetSingleton;
    }
  }

  v86 = v161;
  v88 = v155;
  v87 = v156;
  v89 = v153;
  v90 = sub_10018F5B8();
  v91 = sub_1003AE5C4(v90, v83);

  sub_10047AB30(v72, _s9PlaylistsV5ScopeVMa);
  *&v31[v149] = v91;
  v92 = v151;
  sub_10047AEE0(v31, v151, _s9PlaylistsVMa);
  sub_10010FC20(&qword_101191390);
  swift_allocObject();
  *&v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_responseController] = sub_1003A13B8(v92);
  v93 = type metadata accessor for PlaylistPicker.ViewController(0);
  v163.receiver = v6;
  v163.super_class = v93;
  v94 = objc_msgSendSuper2(&v163, "initWithNibName:bundle:", 0, 0);
  v95 = v159;
  sub_10047AAB4(v162, v159, type metadata accessor for PlaylistPicker.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v97 = v160;
  if (EnumCaseMultiPayload == 1)
  {
    v98 = v154;
    (*(v88 + 32))(v154, v95, v87);
    v99 = v144;
    (*(v88 + 16))(v144, v98, v87);
    v100 = (*(v88 + 88))(v99, v87);
    if (v100 == enum case for Playlist.Folder.Item.folder(_:))
    {
      (*(v88 + 96))(v99, v87);
      v101 = v141;
      (*(v89 + 32))(v141, v99, v160);
      v102 = [v94 navigationItem];
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v103._countAndFlagsBits = 0x9C80E22065766F4DLL;
      v103._object = 0xA800000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v103);
      v104._countAndFlagsBits = Playlist.Folder.name.getter();
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v104);

      v105._countAndFlagsBits = 0x646C6F46209D80E2;
      v105._object = 0xAD00006F74207265;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v105);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v106 = String._bridgeToObjectiveC()();

      [v102 setPrompt:v106];

      v107 = v101;
      v97 = v160;
      (*(v89 + 8))(v107, v160);
    }

    else if (v100 == enum case for Playlist.Folder.Item.playlist(_:))
    {
      (*(v88 + 96))(v99, v87);
      v112 = v139;
      v113 = v138;
      (*(v139 + 32))(v138, v99, v140);
      v161 = [v94 navigationItem];
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v114._countAndFlagsBits = 0x9C80E22065766F4DLL;
      v114._object = 0xA800000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v114);
      v115._countAndFlagsBits = Playlist.name.getter();
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v115);

      v116._countAndFlagsBits = 0x6F74209D80E2;
      v116._object = 0xA600000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v116);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v117 = String._bridgeToObjectiveC()();

      v118 = v161;
      [v161 setPrompt:v117];

      (*(v112 + 8))(v113, v140);
      v97 = v160;
    }

    else
    {
      (*(v88 + 8))(v99, v87);
    }

    v128 = v145;
    sub_1000089F8(v86, v145, &unk_10118F670);
    v129 = (*(v89 + 48))(v128, 1, v97);
    v130 = v94;
    if (v129 == 1)
    {
      sub_1000095E8(v128, &unk_10118F670);
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
    }

    else
    {
      Playlist.Folder.name.getter();
      (*(v89 + 8))(v128, v97);
    }

    v131 = String._bridgeToObjectiveC()();

    [v130 setTitle:v131];

    v132 = [v130 navigationItem];
    sub_10010FC20(&qword_101183990);
    v133 = swift_allocObject();
    *(v133 + 16) = xmmword_100EBC6D0;
    *(v133 + 32) = sub_100471D54();
    *(v133 + 40) = sub_1004718C4();
    sub_100009F78(0, &qword_101181580);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v132 setRightBarButtonItems:isa animated:0];

    (*(v88 + 8))(v154, v87);
  }

  else
  {
    v108 = v143;
    sub_1000089F8(v86, v143, &unk_10118F670);
    v109 = *(v89 + 48);
    v110 = v109(v108, 1, v97);
    v111 = v94;
    if (v110 == 1)
    {
      sub_1000095E8(v108, &unk_10118F670);
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
    }

    else
    {
      Playlist.Folder.name.getter();
      (*(v89 + 8))(v108, v97);
    }

    v119 = String._bridgeToObjectiveC()();

    [v111 setTitle:v119];

    v120 = [objc_allocWithZone(UISearchController) init];
    v121 = [v120 searchBar];
    [v121 setReturnKeyType:9];

    v122 = [v120 searchBar];
    v109(v86, 1, v97);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v123 = String._bridgeToObjectiveC()();

    [v122 setPlaceholder:v123];

    v124 = [v120 searchBar];
    [v124 setDelegate:v111];

    [v120 setObscuresBackgroundDuringPresentation:0];
    v125 = [v111 navigationItem];
    [v125 setSearchController:v120];

    v126 = [v111 navigationItem];
    [v126 setHidesSearchBarWhenScrolling:0];

    v127 = [v111 navigationItem];
    [v127 setPreferredSearchBarPlacement:2];

    sub_10047AB30(v159, type metadata accessor for PlaylistPicker.Mode);
  }

  v135 = v94;
  v136 = [v135 navigationItem];
  [v136 setLargeTitleDisplayMode:2];

  sub_100477184(0, 0, 1);
  sub_10047AB30(v162, type metadata accessor for PlaylistPicker.Context);
  sub_1000095E8(v86, &unk_10118F670);
  return v135;
}

void sub_100468D9C()
{
  v1 = sub_10010FC20(&qword_101191468);
  __chkstk_darwin(v1 - 8);
  v3 = &v37 - v2;
  v4 = sub_10010FC20(&unk_101191440);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_10010FC20(&qword_10118D318);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v10 = sub_10010FC20(&unk_101191450);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for PlaylistPicker.ViewController(0);
  v38.receiver = v0;
  v38.super_class = v13;
  objc_msgSendSuper2(&v38, "viewDidLoad");
  sub_10046E004();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790);
  UICollectionView.CellRegistration.init(handler:)();
  v14 = sub_10010FC20(&qword_101191148);
  (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  v15 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newCellRegistration;
  swift_beginAccess();
  sub_10006B010(v12, &v0[v15], &unk_101191450);
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for Playlist();
  UICollectionView.CellRegistration.init(handler:)();
  v16 = sub_10010FC20(&qword_10118CCD8);
  (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  v17 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_playlistCellRegistration;
  swift_beginAccess();
  sub_10006B010(v9, &v0[v17], &qword_10118D318);
  swift_endAccess();
  type metadata accessor for Playlist.Folder();
  UICollectionView.CellRegistration.init(handler:)();
  v18 = sub_10010FC20(&qword_10118CCE8);
  (*(*(v18 - 8) + 56))(v6, 0, 1, v18);
  v19 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_folderCellRegistration;
  swift_beginAccess();
  sub_10006B010(v6, &v0[v19], &unk_101191440);
  swift_endAccess();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  v20 = sub_10010FC20(&unk_101191158);
  (*(*(v20 - 8) + 56))(v3, 0, 1, v20);
  v21 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_headerRegistration;
  swift_beginAccess();
  sub_10006B010(v3, &v0[v21], &qword_101191468);
  swift_endAccess();
  v22 = sub_100477A1C();
  [v22 setDelegate:v0];

  v23 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___collectionView;
  [*&v0[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___collectionView] setDataSource:v0];
  v24 = *&v0[v23];
  v25 = [v0 view];
  if (v25)
  {
    v26 = v25;
    [v25 frame];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    [v24 setFrame:{v28, v30, v32, v34}];
    [*&v0[v23] setAutoresizingMask:18];
    [*&v0[v23] setKeyboardDismissMode:1];
    v35 = [v0 view];
    if (v35)
    {
      v36 = v35;
      [v35 addSubview:*&v0[v23]];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1004693CC(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    *(swift_allocObject() + 16) = Strong;
    v4 = v3;
    UICollectionViewCell.configurationUpdateHandler.setter();
    [a1 setUserInteractionEnabled:(v4[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_shouldDisableNewFolderCell] & 1) == 0];
  }
}

uint64_t sub_10046948C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10010FC20(&qword_101191528);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  v11 = a3;
  v12 = a2;
  sub_10010FC20(&qword_101191530);
  sub_10047B704();
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.vertical.getter();
  v13[3] = v5;
  v13[4] = sub_100020674(&qword_101191560, &qword_101191528);
  sub_10001C8B8(v13);
  UIHostingConfiguration.margins(_:_:)();
  (*(v6 + 8))(v8, v5);
  return UICollectionViewCell.contentConfiguration.setter();
}

uint64_t sub_10046961C(uint64_t a1)
{
  v2 = _s23NewPlaylistOrFolderCellVMa(0);
  __chkstk_darwin(v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_101191548);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  sub_10047AAB4(a1 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context, v4, type metadata accessor for PlaylistPicker.Mode);
  if (qword_10117F788 != -1)
  {
    swift_once();
  }

  *&v4[*(v2 + 20)] = qword_101191080;
  v8 = *(v2 + 24);
  *&v4[v8] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  if (UICellConfigurationState.isDisabled.getter())
  {
    v9 = 0.5;
  }

  else
  {
    v9 = 1.0;
  }

  sub_10047AEE0(v4, v7, _s23NewPlaylistOrFolderCellVMa);
  *&v7[*(v5 + 36)] = v9;
  UICellConfigurationState.isDisabled.getter();
  sub_10047B7C0();
  View.accessibilityAddTraits(uiTraits:)();
  return sub_1000095E8(v7, &qword_101191548);
}

void sub_100469830(void *a1, uint64_t a2, char *a3)
{
  v5 = type metadata accessor for Playlist();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v94 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v93 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  v92 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin(v14);
  v96 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v80 - v17;
  v19 = sub_10010FC20(&unk_1011841D0);
  v86 = *(v19 - 8);
  v87 = v19;
  __chkstk_darwin(v19);
  v88 = &v80 - v20;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v22 = Strong;
  v95 = v14;
  v89 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v6;
  v91 = v5;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v85 = (v23 + 16);
  *(v23 + 24) = 0;
  v24 = Playlist.id.getter();
  v26 = v25;
  v27 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_playlistContainsDuplicatesCache;
  swift_beginAccess();
  v28 = *&v22[v27];
  if (!*(v28 + 16))
  {

    goto LABEL_9;
  }

  v29 = v7;
  v30 = a3;
  v31 = a1;

  v32 = sub_100019C10(v24, v26);
  v34 = v33;

  if ((v34 & 1) == 0)
  {

    a1 = v31;
    a3 = v30;
    v7 = v29;
    goto LABEL_9;
  }

  v35 = *(*(v28 + 56) + 16 * v32);

  v36 = &v22[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_containerSource];
  v37 = *&v22[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_containerSource + 16];
  a1 = v31;
  a3 = v30;
  v7 = v29;
  if (v37 == 1)
  {
    goto LABEL_9;
  }

  v38 = *v36;
  v39 = v36[1];
  sub_10047AAB4(&v22[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context], v18, type metadata accessor for PlaylistPicker.Mode);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10047AB30(v18, type metadata accessor for PlaylistPicker.Mode);
    goto LABEL_9;
  }

  v81 = v35;
  v83 = v39;
  v84 = v38;
  v66 = v86;
  v65 = v87;
  v67 = v88;
  (*(v86 + 32))(v88, v18, v87);
  sub_100020674(&qword_1011913B0, &unk_1011841D0);
  v82 = v37;

  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (dispatch thunk of Collection.distance(from:to:)() < 1)
  {
    (*(v66 + 8))(v67, v65);
    sub_10047AB1C(v84, v83, v82);
    goto LABEL_9;
  }

  v68 = v66;
  v69 = v81;
  sub_10047AB1C(v84, v83, v82);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v69 != dispatch thunk of Collection.distance(from:to:)())
  {
    if (v69 < 1)
    {
      (*(v68 + 8))(v88, v65);
      goto LABEL_9;
    }

    v73 = v84;
    if (v84)
    {
      v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v74)
      {
        goto LABEL_32;
      }

      if (v73 == 2)
      {
        v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v75 & 1) == 0)
        {
          (*(v86 + 8))(v88, v87);
          goto LABEL_9;
        }

        goto LABEL_32;
      }
    }

LABEL_32:
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v76._countAndFlagsBits = 0;
    v76._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v76);
    v97 = v69;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v77._countAndFlagsBits = 0xD00000000000001CLL;
    v77._object = 0x8000000100E4D020;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v77);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    v78 = String.init(localized:table:bundle:locale:comment:)();
    v72 = v79;
    (*(v86 + 8))(v88, v87);
    *(v23 + 16) = v78;
    goto LABEL_33;
  }

  v70 = sub_100466198();
  v72 = v71;
  (*(v68 + 8))(v67, v65);
  *(v23 + 16) = v70;
LABEL_33:
  *(v23 + 24) = v72;

LABEL_9:
  active = Playlist.hasActiveCollaboration.getter();
  v41 = v90;
  if (active)
  {
    v42 = Playlist.curatorName.getter();
    if (v43 || (v42 = sub_10034E2C4(), v43))
    {
      v44 = v42;
      v45 = v43;
      v88 = a3;
      v46 = *(v23 + 24);
      if (v46)
      {
        v47 = *v85;

        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v48._countAndFlagsBits = 2128194;
        v48._object = 0xE300000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v48);
        v49._countAndFlagsBits = v44;
        v49._object = v45;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v49);

        v50._countAndFlagsBits = 548913696;
        v50._object = 0xA400000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v50);
        v51._countAndFlagsBits = v47;
        v51._object = v46;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v51);

        v52 = 0;
        v53 = 0xE000000000000000;
      }

      else
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v54._countAndFlagsBits = 2128194;
        v54._object = 0xE300000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v54);
        v55._countAndFlagsBits = v44;
        v55._object = v45;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v55);

        v53 = 0x8000000100E4CEF0;
        v52 = 0xD000000000000012;
      }

      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v52);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      v56 = String.init(localized:table:bundle:locale:comment:)();
      a3 = v88;
      *(v23 + 16) = v56;
      *(v23 + 24) = v57;
    }
  }

  v58 = v96;
  sub_10047AAB4(&v22[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context], v96, type metadata accessor for PlaylistPicker.Mode);
  v59 = swift_getEnumCaseMultiPayload() != 1;
  sub_10047AB30(v58, type metadata accessor for PlaylistPicker.Mode);
  [a1 setUserInteractionEnabled:v59];
  v60 = a3;
  v61 = v89;
  v62 = v91;
  (*(v41 + 16))(v89, v60, v91);
  v63 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v64 = swift_allocObject();
  (*(v41 + 32))(v64 + v63, v61, v62);
  *(v64 + ((v7 + v63 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;

  UICollectionViewCell.configurationUpdateHandler.setter();
}

uint64_t sub_10046A268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10010FC20(&qword_101191508);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12[-v9];
  v13 = a3;
  v14 = a4 + 16;
  v15 = a2;
  sub_10010FC20(&qword_101191510);
  sub_10047B638();
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.vertical.getter();
  v16[3] = v7;
  v16[4] = sub_100020674(&qword_101191520, &qword_101191508);
  sub_10001C8B8(v16);
  UIHostingConfiguration.margins(_:_:)();
  (*(v8 + 8))(v10, v7);
  return UICollectionViewCell.contentConfiguration.setter();
}

uint64_t sub_10046A40C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v49 = a2;
  v50 = a3;
  v45 = a1;
  v3 = type metadata accessor for Font.TextStyle();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v46 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for MusicFavoriteStatus();
  v5 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v40 - v8;
  v10 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v13 - 8);
  v15 = &v40 - v14;
  v16 = _s12PlaylistCellVMa(0);
  __chkstk_darwin(v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  Playlist.artworkViewModel.getter(v15);
  Playlist.variant.getter();
  v19 = sub_10010FC20(&unk_101182950);
  (*(*(v19 - 8) + 56))(v12, 0, 11, v19);
  v20 = Corner.medium.unsafeMutableAddressor();
  v21 = *v20;
  v22 = v20[1];
  v23 = *(v20 + 16);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, 0, 1, 0, 1, 2, v52);
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v15, v12, 0, 1, v52, v21, v22, v23, v18);
  v42 = Playlist.name.getter();
  v41 = v24;
  v25 = v45;
  swift_beginAccess();
  v26 = v25[1];
  v40 = *v25;

  active = Playlist.hasActiveCollaboration.getter();
  Playlist.favoriteStatus.getter();
  v29 = v43;
  v28 = v44;
  (*(v5 + 104))(v43, enum case for MusicFavoriteStatus.favorited(_:), v44);
  v30 = static MusicFavoriteStatus.== infix(_:_:)();
  v31 = *(v5 + 8);
  v31(v29, v28);
  v31(v9, v28);
  if (qword_10117F788 != -1)
  {
    swift_once();
  }

  v32 = &v18[v16[5]];
  v33 = v41;
  *v32 = v42;
  v32[1] = v33;
  v34 = &v18[v16[6]];
  *v34 = v40;
  *(v34 + 1) = v26;
  v18[v16[7]] = active & 1;
  v35 = qword_101191080;
  v18[v16[8]] = v30 & 1;
  v18[v16[9]] = 0;
  *&v18[v16[10]] = v35;
  v36 = v16[11];
  *&v18[v36] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  v51 = 0x4020000000000000;
  (*(v47 + 104))(v46, enum case for Font.TextStyle.largeTitle(_:), v48);
  sub_100363C0C();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  if (UICellConfigurationState.isDisabled.getter())
  {
    v37 = 0.5;
  }

  else
  {
    v37 = 1.0;
  }

  v38 = v50;
  sub_10047AEE0(v18, v50, _s12PlaylistCellVMa);
  result = sub_10010FC20(&qword_101191510);
  *(v38 + *(result + 36)) = v37;
  return result;
}

uint64_t sub_10046A92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10010FC20(&qword_1011914F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  v10 = a3;
  _s12PlaylistCellVMa(0);
  sub_10047A9B8(&qword_1011914F8, _s12PlaylistCellVMa);
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.vertical.getter();
  v11[3] = v4;
  v11[4] = sub_100020674(&qword_101191500, &qword_1011914F0);
  sub_10001C8B8(v11);
  UIHostingConfiguration.margins(_:_:)();
  (*(v5 + 8))(v7, v4);
  return UICollectionViewCell.contentConfiguration.setter();
}

uint64_t sub_10046AADC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Font.TextStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v6 - 8);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v9 - 8);
  v11 = v29 - v10;
  v12 = type metadata accessor for ArtworkImage.ViewModel(0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = enum case for Playlist.Variant.folder(_:);
  v14 = type metadata accessor for Playlist.Variant();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v8, v13, v14);
  (*(v15 + 56))(v8, 0, 1, v14);
  v16 = sub_10010FC20(&unk_101182950);
  (*(*(v16 - 8) + 56))(v8, 0, 11, v16);
  v17 = Corner.medium.unsafeMutableAddressor();
  v18 = *v17;
  v19 = v17[1];
  LOBYTE(v15) = *(v17 + 16);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, 0, 1, 0, 1, 2, v30);
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v11, v8, 0, 1, v30, v18, v19, v15, a1);
  v20 = Playlist.Folder.name.getter();
  v22 = v21;
  if (qword_10117F788 != -1)
  {
    swift_once();
  }

  v23 = qword_101191080;
  v24 = _s12PlaylistCellVMa(0);
  v25 = (a1 + v24[5]);
  *v25 = v20;
  v25[1] = v22;
  v26 = (a1 + v24[6]);
  *v26 = 0;
  v26[1] = 0;
  *(a1 + v24[7]) = 0;
  *(a1 + v24[8]) = 0;
  *(a1 + v24[9]) = 1;
  *(a1 + v24[10]) = v23;
  v27 = v24[11];
  *(a1 + v27) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  v29[1] = 0x4020000000000000;
  (*(v3 + 104))(v5, enum case for Font.TextStyle.largeTitle(_:), v2);
  sub_100363C0C();
  return ScaledMetric.init(wrappedValue:relativeTo:)();
}

void sub_10046AEB0(uint64_t a1)
{
  v46 = a1;
  v1 = sub_10010FC20(&unk_101191470);
  v42 = *(v1 - 8);
  v43 = v1;
  __chkstk_darwin(v1);
  v40 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v41 = &v39 - v4;
  v5 = sub_10010FC20(&unk_10118A510);
  v45 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = &v39 - v9;
  v10 = sub_10010FC20(&qword_101193C80);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - v12;
  v14 = type metadata accessor for PlaylistPicker.ViewController.Playlists(0);
  __chkstk_darwin(v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v39 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v22 = IndexPath.section.getter();
    v47 = v21;
    v23 = sub_1004732C0(v22);
    v24 = v23;
    if (v23)
    {
      if (v23 == 1)
      {
        v25 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
        v26 = v47;
        swift_beginAccess();
        sub_10047AAB4(v26 + v25, v19, type metadata accessor for PlaylistPicker.ViewController.Playlists);
        if ((*(v11 + 48))(v19, 1, v10))
        {
          v16 = v19;
LABEL_7:
          sub_10047AB30(v16, type metadata accessor for PlaylistPicker.ViewController.Playlists);
LABEL_11:
          sub_10010FC20(&unk_10118A520);
          sub_1002D8BFC();
          UIHostingConfiguration<>.init(content:)();
          v32 = v44;
          UIHostingConfiguration.minSize(width:height:)();
          v33 = *(v45 + 8);
          v33(v7, v5);
          static Edge.Set.vertical.getter();
          v50 = v5;
          v51 = sub_100020674(&qword_1011914E0, &unk_10118A510);
          sub_10001C8B8(v49);
          UIHostingConfiguration.margins(_:_:)();
          v33(v32, v5);
LABEL_16:
          UICollectionViewCell.contentConfiguration.setter();

          return;
        }

        (*(v11 + 16))(v13, v19, v10);
        v30 = v19;
      }

      else
      {
        v27 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
        v28 = v47;
        swift_beginAccess();
        sub_10047AAB4(v28 + v27, v16, type metadata accessor for PlaylistPicker.ViewController.Playlists);
        v29 = *(v14 + 20);
        if ((*(v11 + 48))(&v16[v29], 1, v10))
        {
          goto LABEL_7;
        }

        (*(v11 + 16))(v13, &v16[v29], v10);
        v30 = v16;
      }

      sub_10047AB30(v30, type metadata accessor for PlaylistPicker.ViewController.Playlists);
      v31 = MusicLibrarySectionedResponse.isEmpty.getter();
      v23 = (*(v11 + 8))(v13, v10);
      if (v31)
      {
        goto LABEL_11;
      }
    }

    __chkstk_darwin(v23);
    *(&v39 - 2) = v47;
    *(&v39 - 8) = v24;
    sub_10010FC20(&qword_101191480);
    sub_10047B4C0();
    v34 = v40;
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.top.getter();
    if (v24)
    {
      v36 = v42;
      v35 = v43;
      v37 = v41;
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {

      v36 = v42;
      v35 = v43;
      v37 = v41;
    }

    UIHostingConfiguration.margins(_:_:)();
    v38 = *(v36 + 8);
    v38(v34, v35);
    v48 = static Color.clear.getter();
    v50 = sub_10010FC20(&qword_1011914D0);
    v51 = sub_100020674(&qword_1011914D8, &qword_1011914D0);
    sub_10001C8B8(v49);
    UIHostingConfiguration.background<A>(_:)();

    v38(v37, v35);
    goto LABEL_16;
  }
}

double sub_10046B624@<D0>(uint64_t a1@<X8>)
{
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  result = *&v7;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_10046B698@<X0>(unsigned __int8 a1@<W1>, uint64_t *a2@<X8>)
{
  v3 = sub_10047A230(a1);
  v5 = v4;
  v6 = sub_100479D70(&off_10109B300);
  v7 = Text.init(optional:options:)(v3, v5, v6);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  v14 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v16 = static Color.primary.getter();
  result = swift_getKeyPath();
  *a2 = v7;
  a2[1] = v9;
  a2[2] = v11;
  a2[3] = v13;
  a2[4] = KeyPath;
  a2[5] = v14;
  a2[6] = result;
  a2[7] = v16;
  return result;
}

uint64_t sub_10046B7A8(char a1)
{
  v2 = v1;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for PlaylistPicker.ViewController(0);
  objc_msgSendSuper2(&v5, "viewWillAppear:", a1 & 1);
  if (*&v2[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_recentsResponseController])
  {

    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  }

  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
}

uint64_t sub_10046B8A4(char a1)
{
  v3 = type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlaylistPicker.ViewController(0);
  v18.receiver = v1;
  v18.super_class = v6;
  objc_msgSendSuper2(&v18, "viewDidAppear:", a1 & 1);
  *(v1 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_allowsAnimatedChanges) = 1;
  v7 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v8 = MetricsEvent.Page.playlistPicker.unsafeMutableAddressor();
  sub_10047AAB4(v8, v5, type metadata accessor for MetricsEvent.Page);
  v9 = sub_10053771C();
  v11 = v10;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v12 = qword_101218AD0;
  v13 = GroupActivitiesManager.hasJoined.getter();
  v14 = GroupActivitiesManager.participantsCount.getter();
  v15 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v7) + 0xA0))(v5, v9, v11, v13 & 1, v14, *(v12 + v15));

  return sub_10047AB30(v5, type metadata accessor for MetricsEvent.Page);
}

uint64_t sub_10046BAC8(char a1)
{
  v2 = v1;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for PlaylistPicker.ViewController(0);
  objc_msgSendSuper2(&v5, "viewDidDisappear:", a1 & 1);
  v2[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_allowsAnimatedChanges] = 0;
  if (*&v2[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_recentsResponseController])
  {

    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(0);
  }

  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(0);
}

void sub_10046BBD0()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for PlaylistPicker.ViewController(0);
  objc_msgSendSuper2(&v14, "viewWillLayoutSubviews");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3 && (v4 = [v3 windowScene], v3, v4))
    {
      v5 = [v4 effectiveGeometry];

      v6 = [v5 coordinateSpace];
      [v6 bounds];
      v8 = v7;
      v10 = v9;
      swift_unknownObjectRelease();
      v11 = 0;
      v12 = v8;
      v13 = v10;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v11 = 1;
    }

    sub_100477184(v12, v13, v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10046BF68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v66 = a1;
  v5 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v5 - 8);
  v59 = &v57 - v6;
  v7 = sub_10010FC20(&unk_101191440);
  __chkstk_darwin(v7 - 8);
  v63 = &v57 - v8;
  v9 = type metadata accessor for Playlist.Folder();
  v61 = *(v9 - 8);
  v62 = v9;
  __chkstk_darwin(v9);
  v60 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v57 - v12;
  v14 = sub_10010FC20(&qword_10118D318);
  __chkstk_darwin(v14 - 8);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v58 = &v57 - v18;
  v65 = type metadata accessor for Playlist();
  v19 = *(v65 - 8);
  __chkstk_darwin(v65);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10010FC20(&qword_1011831B0);
  __chkstk_darwin(v22 - 8);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v57 - v26;
  v28 = sub_10010FC20(&unk_101191450);
  __chkstk_darwin(v28 - 8);
  v30 = &v57 - v29;
  v31 = IndexPath.section.getter();
  if (!sub_1004732C0(v31))
  {
    v40 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newCellRegistration;
    swift_beginAccess();
    sub_1000089F8(v2 + v40, v30, &unk_101191450);
    v41 = sub_10010FC20(&qword_101191148);
    v42 = *(v41 - 8);
    result = (*(v42 + 48))(v30, 1, v41);
    if (result != 1)
    {
      v67 = 0;
      sub_100009F78(0, &unk_101184790);
      v39 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      (*(v42 + 8))(v30, v41);
      return v39;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v64 = a2;
  sub_10047361C(v27);
  v32 = type metadata accessor for Playlist.Folder.Item();
  v33 = *(v32 - 8);
  v34 = v19;
  if ((*(v33 + 48))(v27, 1, v32) == 1)
  {
LABEL_3:
    v35 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_playlistCellRegistration;
    swift_beginAccess();
    sub_1000089F8(v3 + v35, v16, &qword_10118D318);
    v36 = sub_10010FC20(&qword_10118CCD8);
    v37 = *(v36 - 8);
    result = (*(v37 + 48))(v16, 1, v36);
    if (result != 1)
    {
      (*(v34 + 56))(v13, 1, 1, v65);
      v39 = sub_1007F9EBC(v16, v64, v13);
      sub_1000095E8(v13, &unk_1011814D0);
LABEL_10:
      (*(v37 + 8))(v16, v36);
LABEL_11:
      sub_1000095E8(v27, &qword_1011831B0);
      return v39;
    }

    __break(1u);
    goto LABEL_18;
  }

  sub_1000089F8(v27, v24, &qword_1011831B0);
  v43 = (*(v33 + 88))(v24, v32);
  if (v43 == enum case for Playlist.Folder.Item.folder(_:))
  {
    (*(v33 + 96))(v24, v32);
    v45 = v60;
    v44 = v61;
    v46 = v62;
    (*(v61 + 32))(v60, v24, v62);
    v47 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_folderCellRegistration;
    swift_beginAccess();
    v16 = v63;
    sub_1000089F8(v3 + v47, v63, &unk_101191440);
    v36 = sub_10010FC20(&qword_10118CCE8);
    v37 = *(v36 - 8);
    result = (*(v37 + 48))(v16, 1, v36);
    if (result != 1)
    {
      v48 = v59;
      (*(v44 + 16))(v59, v45, v46);
      (*(v44 + 56))(v48, 0, 1, v46);
      v39 = sub_1007FA3F8(v16, v64, v48);
      sub_1000095E8(v48, &unk_10118F670);
      (*(v44 + 8))(v45, v46);
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  if (v43 != enum case for Playlist.Folder.Item.playlist(_:))
  {
    (*(v33 + 8))(v24, v32);
    goto LABEL_3;
  }

  (*(v33 + 96))(v24, v32);
  v49 = v65;
  (*(v19 + 32))(v21, v24, v65);
  v50 = v64;
  sub_100475A78(v64);
  v51 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_playlistCellRegistration;
  swift_beginAccess();
  v52 = v3 + v51;
  v53 = v58;
  sub_1000089F8(v52, v58, &qword_10118D318);
  v54 = sub_10010FC20(&qword_10118CCD8);
  v55 = *(v54 - 8);
  result = (*(v55 + 48))(v53, 1, v54);
  if (result != 1)
  {
    (*(v19 + 16))(v13, v21, v49);
    (*(v19 + 56))(v13, 0, 1, v49);
    v56 = v53;
    v39 = sub_1007F9EBC(v53, v50, v13);
    sub_1000095E8(v13, &unk_1011814D0);
    (*(v19 + 8))(v21, v49);
    (*(v55 + 8))(v56, v54);
    goto LABEL_11;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10046CD80(void *a1, uint64_t a2)
{
  v124 = a1;
  v4 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v4 - 8);
  v115 = &v102 - v5;
  v6 = type metadata accessor for PlaylistPicker.Context(0);
  __chkstk_darwin(v6 - 8);
  v114 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Playlist.Folder();
  v116 = *(v8 - 8);
  v117 = v8;
  __chkstk_darwin(v8);
  v120 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for Track();
  v106 = *(v119 - 8);
  __chkstk_darwin(v119);
  v118 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_10010FC20(&unk_10118C0B0);
  __chkstk_darwin(v108);
  v109 = &v102 - v11;
  v12 = sub_10010FC20(&unk_1011841D0);
  v13 = *(v12 - 8);
  v110 = v12;
  v111 = v13;
  __chkstk_darwin(v12);
  v107 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v112 = &v102 - v16;
  v17 = type metadata accessor for Playlist();
  v18 = *(v17 - 8);
  v122 = v17;
  v123 = v18;
  __chkstk_darwin(v17);
  v113 = (&v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_10010FC20(&qword_1011831B0);
  __chkstk_darwin(v20 - 8);
  v22 = &v102 - v21;
  v23 = type metadata accessor for Playlist.Folder.Item();
  v24 = *(v23 - 1);
  __chkstk_darwin(v23);
  v26 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v125 = &v102 - v28;
  v29 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v29 - 8);
  v121 = &v102 - v30;
  v31 = type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin(v31);
  v33 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v102 - v35;
  v37 = IndexPath.section.getter();
  v38 = sub_1004732C0(v37);
  if (!v38)
  {
    sub_10047AAB4(&v2[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context], v36, type metadata accessor for PlaylistPicker.Mode);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v41 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newFolderHandler;
    }

    else
    {
      v41 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newPlaylistHandler;
    }

    v75 = *&v2[v41];
    v76 = v122;
    if (v75)
    {

      v75(v2);
      sub_100020438(v75);
    }

    sub_10047AB30(v36, type metadata accessor for PlaylistPicker.Mode);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v124 deselectItemAtIndexPath:isa animated:1];

    v78 = v121;
    (*(v123 + 56))(v121, 1, 1, v76);
    sub_100477300(0, v78);
    v39 = &unk_1011814D0;
    v40 = v78;
    return sub_1000095E8(v40, v39);
  }

  v104 = v38;
  v105 = v2;
  sub_10047361C(v22);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v39 = &qword_1011831B0;
    v40 = v22;
    return sub_1000095E8(v40, v39);
  }

  v42 = v125;
  (*(v24 + 32))(v125, v22, v23);
  (*(v24 + 16))(v26, v42, v23);
  v43 = (*(v24 + 88))(v26, v23);
  if (v43 == enum case for Playlist.Folder.Item.folder(_:))
  {
    v102 = a2;
    v103 = v24;
    (*(v24 + 96))(v26, v23);
    v44 = v116;
    v45 = v120;
    v46 = v26;
    v47 = v117;
    (*(v116 + 32))(v120, v46, v117);
    v48 = v105;
    v49 = v114;
    sub_10047AAB4(&v105[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context], v114, type metadata accessor for PlaylistPicker.Context);
    v50 = *&v48[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_containerSource];
    v51 = *&v48[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_containerSource + 8];
    v52 = *&v48[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_containerSource + 16];
    v53 = v115;
    (*(v44 + 16))(v115, v45, v47);
    (*(v44 + 56))(v53, 0, 1, v47);
    objc_allocWithZone(type metadata accessor for PlaylistPicker.ViewController(0));
    sub_10047ABA0(v50, v51, v52);
    v54 = sub_10046773C(v49, v50, v51, v52, v53);
    v55 = *&v48[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newPlaylistHandler];
    v56 = *&v48[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newPlaylistHandler + 8];
    v57 = &v54[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newPlaylistHandler];
    v58 = *&v54[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newPlaylistHandler];
    *v57 = v55;
    v57[1] = v56;
    sub_100030444(v55);
    sub_100020438(v58);
    v59 = *&v48[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_addToPlaylistHandler];
    v60 = *&v48[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_addToPlaylistHandler + 8];
    v61 = &v54[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_addToPlaylistHandler];
    v62 = *&v54[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_addToPlaylistHandler];
    *v61 = v59;
    v61[1] = v60;
    sub_100030444(v59);
    sub_100020438(v62);
    v63 = *&v48[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newFolderHandler];
    v64 = *&v48[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newFolderHandler + 8];
    v65 = &v54[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newFolderHandler];
    v66 = *&v54[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newFolderHandler];
    *v65 = v63;
    v65[1] = v64;
    sub_100030444(v63);
    sub_100020438(v66);
    v67 = *&v48[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_moveToFolderHandler];
    v68 = *&v48[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_moveToFolderHandler + 8];
    v69 = &v54[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_moveToFolderHandler];
    v70 = *&v54[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_moveToFolderHandler];
    *v69 = v67;
    v69[1] = v68;
    sub_100030444(v67);
    sub_100020438(v70);
    v71 = [v48 navigationController];
    if (v71)
    {
      v72 = v71;
      [v71 pushViewController:v54 animated:1];
    }

    v73 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v124 deselectItemAtIndexPath:v73 animated:1];

    (*(v44 + 8))(v120, v47);
    return (*(v103 + 8))(v125, v23);
  }

  if (v43 != enum case for Playlist.Folder.Item.playlist(_:))
  {
    v83 = *(v24 + 8);
    v83(v125, v23);
    return (v83)(v26, v23);
  }

  (*(v24 + 96))(v26, v23);
  v80 = v122;
  v79 = v123;
  v81 = v113;
  (*(v123 + 32))(v113, v26, v122);
  v82 = v105;
  sub_10047AAB4(&v105[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context], v33, type metadata accessor for PlaylistPicker.Mode);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v79 + 8))(v81, v80);
    (*(v24 + 8))(v125, v23);
    return sub_10047AB30(v33, type metadata accessor for PlaylistPicker.Mode);
  }

  v103 = v24;
  v84 = v111;
  v85 = v110;
  (*(v111 + 32))(v112, v33, v110);
  if ((Playlist.hasActiveCollaboration.getter() & 1) == 0)
  {
    goto LABEL_26;
  }

  v124 = v23;
  v102 = a2;
  (*(v84 + 16))(v107, v112, v85);
  sub_100020674(&unk_10118C0A0, &unk_1011841D0);
  v86 = v109;
  dispatch thunk of Sequence.makeIterator()();
  v87 = *(v108 + 36);
  sub_100020674(&qword_1011913B0, &unk_1011841D0);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v86 + v87) == v126[0])
  {
LABEL_25:
    sub_1000095E8(v86, &unk_10118C0B0);
    v82 = v105;
    v23 = v124;
    v80 = v122;
    v84 = v111;
LABEL_26:
    v95 = *&v82[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_addToPlaylistHandler];
    v96 = v113;
    if (v95)
    {

      v95(v82, v96);
      sub_100020438(v95);
    }

    v97 = v123;
    v98 = v121;
    (*(v123 + 16))(v121, v96, v80);
    (*(v97 + 56))(v98, 0, 1, v80);
    sub_100477300(v104, v98);
    sub_1000095E8(v98, &unk_1011814D0);
    (*(v84 + 8))(v112, v85);
    (*(v97 + 8))(v96, v80);
    return (*(v103 + 8))(v125, v23);
  }

  v88 = (v106 + 16);
  v89 = (v106 + 8);
  v90 = v119;
  while (1)
  {
    v91 = dispatch thunk of Collection.subscript.read();
    v92 = v118;
    (*v88)(v118);
    v91(v126, 0);
    dispatch thunk of Collection.formIndex(after:)();
    Track.catalogID.getter();
    v94 = v93;
    (*v89)(v92, v90);
    if (!v94)
    {
      break;
    }

    dispatch thunk of Collection.endIndex.getter();
    if (*(v86 + v87) == v126[0])
    {
      goto LABEL_25;
    }
  }

  sub_1000095E8(v86, &unk_10118C0B0);
  v99 = v112;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v100 = dispatch thunk of Collection.distance(from:to:)() > 1;
  v101 = v113;
  sub_100476794(v113, v102, v100);
  (*(v111 + 8))(v99, v85);
  (*(v123 + 8))(v101, v122);
  return (*(v103 + 8))(v125, v124);
}

void sub_10046DE00(uint64_t a1, uint64_t a2)
{
  v5 = _s9PlaylistsVMa(0);
  __chkstk_darwin(v5);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = (v2 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_searchText);
  v9 = *(v2 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_searchText);
  v10 = *(v2 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_searchText + 8);
  v11 = v9 == a1 && v10 == a2;
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v12 = *(v2 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_recentsResponseController);
    if (v12)
    {
      v13 = *(v12 + 48);
      v14 = *(*v13 + 96);
      swift_beginAccess();
      sub_10047AAB4(v13 + v14, v7, _s9PlaylistsVMa);
      v15 = &v7[*(v5 + 36)];

      *v15 = v9;
      v15[1] = v10;
      sub_1003777F4(v7);
    }

    v17 = *v8;
    v16 = v8[1];
    v18 = *(*(v2 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_responseController) + 48);
    v19 = *(*v18 + 96);
    swift_beginAccess();
    sub_10047AAB4(v18 + v19, v7, _s9PlaylistsVMa);
    v20 = &v7[*(v5 + 36)];

    *v20 = v17;
    v20[1] = v16;
    sub_1003777F4(v7);
  }
}

uint64_t sub_10046E004()
{
  v1 = v0;
  v2 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin(v2);
  v4 = (&v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = _s9PlaylistsVMa(0);
  __chkstk_darwin(v5);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v59 - v9;
  __chkstk_darwin(v11);
  v13 = &v59 - v12;
  v14 = type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin(v14);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10047AAB4(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context, v16, type metadata accessor for PlaylistPicker.Mode);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v63 = v10;
    v64 = v16;
    v17 = *(*(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_responseController) + 48);
    v18 = *(*v17 + 96);
    swift_beginAccess();
    sub_10047AAB4(v17 + v18, v13, _s9PlaylistsVMa);
    v13[v5[8] + *(v2 + 24)] = 1;

    sub_1003777F4(v13);

    if (qword_10117F5D0 != -1)
    {
      swift_once();
    }

    v19 = qword_101218AB0;
    v20 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_folder;
    swift_beginAccess();
    sub_1000089F8(v1 + v20, v4 + *(v2 + 20), &unk_10118F670);
    *v4 = v19;
    *(v4 + *(v2 + 24)) = 1;
    type metadata accessor for MusicLibrary();

    *v7 = static MusicLibrary.shared.getter();
    *(v7 + 2) = 0;
    v7[24] = 1;
    v21 = &v7[v5[9]];
    *v21 = 0;
    *(v21 + 1) = 0xE000000000000000;
    v62 = v5[10];
    *&v7[v62] = &_swiftEmptySetSingleton;
    v22 = &v7[v5[11]];
    *v22 = 263;
    v23 = v5[8];
    v65 = v4;
    sub_10047AAB4(v4, &v7[v23], _s9PlaylistsV5ScopeVMa);
    *(v7 + 4) = 256;
    v60 = objc_opt_self();
    v24 = [v60 standardUserDefaults];
    if (qword_10117F298 != -1)
    {
      swift_once();
    }

    v25 = sub_1000060E4(v2, qword_101218730);
    v61 = v23;
    v26 = sub_1001982EC(&v7[v23], v25);
    v27 = "LibraryPlaylists";
    if (v26)
    {
      v28 = 0xD000000000000011;
    }

    else
    {
      v28 = 0xD000000000000010;
    }

    v59 = "LibraryPlaylists";
    if ((v26 & 1) == 0)
    {
      v27 = "v32@0:8@16@24";
    }

    v66 = v28;
    v67 = v27 | 0x8000000000000000;

    v29._countAndFlagsBits = 0x53746E65746E6F43;
    v29._object = 0xEB0000000074726FLL;
    String.append(_:)(v29);

    sub_100110448();
    sub_10011049C();
    NSUserDefaults.decodeValue<A>(_:forKey:)(&_s11ContentSortVN, &v66);

    v30 = v66;
    v31 = sub_100375B90(6u);
    if ((v31 & 0xFF00) == 0x200 && (v31 = sub_100375B90(v30), (v31 & 0xFF00) == 0x200))
    {
      v32 = sub_1001982EC(v65, v25);
      v31 = sub_10045FDA0(v32 & 1 | 0x80u);
      v33 = v61;
      if ((v31 & 0xFF00) == 0x200)
      {
        LOBYTE(v34) = 1;
        LOBYTE(v31) = 7;
      }

      else
      {
        v34 = (v31 >> 8) & 1;
      }
    }

    else
    {
      v34 = (v31 >> 8) & 1;
      v33 = v61;
    }

    *v22 = v31;
    v22[1] = v34;
    v35 = [v60 standardUserDefaults];
    v36 = sub_1001982EC(&v7[v33], v25);
    if (v36)
    {
      v37 = 0xD000000000000011;
    }

    else
    {
      v37 = 0xD000000000000010;
    }

    v38 = v59;
    if ((v36 & 1) == 0)
    {
      v38 = "v32@0:8@16@24";
    }

    v39 = v38 | 0x8000000000000000;
    v40 = sub_10010FC20(&unk_10118CD70);
    v66 = v37;
    v67 = v39;

    v41._countAndFlagsBits = 0x704F7265746C6946;
    v41._object = 0xEC0000006E6F6974;
    String.append(_:)(v41);

    sub_100178DD8(&unk_101182910, sub_100178D84);
    sub_100178DD8(&unk_101182920, sub_100178E50);
    NSUserDefaults.decodeValue<A>(_:forKey:)(v40, &v66);

    v42 = v66;
    if (!v66)
    {
      v43 = sub_10018F3F4();
      v44 = Optional<A>.convertToSet.getter(v43);
      if (v44)
      {
        v42 = v44;
      }

      else
      {
        v42 = &_swiftEmptySetSingleton;
      }
    }

    v45 = v65;
    v46 = sub_10018F5B8();
    v47 = sub_1003AE5C4(v46, v42);

    sub_10047AB30(v45, _s9PlaylistsV5ScopeVMa);
    v48 = v63;
    *&v7[v62] = v47;
    sub_10047AEE0(v7, v48, _s9PlaylistsVMa);
    sub_10010FC20(&qword_101191390);
    swift_allocObject();
    v49 = sub_1003A13B8(v48);
    v50 = v49[6];
    v51 = *(*v50 + 96);
    swift_beginAccess();
    sub_10047AAB4(v50 + v51, v13, _s9PlaylistsVMa);
    *(v13 + 2) = 4;
    v13[24] = 0;
    sub_1003777F4(v13);
    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
    v52 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v53 = v49[4];
    v49[4] = sub_10047B3E0;
    v49[5] = v52;

    sub_100020438(v53);

    *(v1 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_recentsResponseController) = v49;

    v16 = v64;
  }

  sub_10047AB30(v16, type metadata accessor for PlaylistPicker.Mode);
  v54 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_responseController;

  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);

  v55 = *(v1 + v54);
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v57 = *(v55 + 32);
  *(v55 + 32) = sub_10047B3D8;
  *(v55 + 40) = v56;

  sub_100020438(v57);
}

void sub_10046E870(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v3 = type metadata accessor for PlaylistPicker.ViewController.Playlists(0);
  __chkstk_darwin(v3 - 8);
  v37 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&unk_101182900);
  __chkstk_darwin(v5 - 8);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v34 = &v31 - v8;
  v9 = sub_10010FC20(&qword_101193C80);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - v11;
  v13 = sub_10010FC20(&unk_10118CDC0);
  __chkstk_darwin(v13 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v31 - v17;
  RequestResponse.Revision.content.getter(&v31 - v17);
  v19 = sub_10010FC20(&unk_10118CDD0);
  v20 = *(*(v19 - 8) + 48);
  v21 = v20(v18, 1, v19);
  v36 = v10;
  if (v21 == 1)
  {
    sub_1000095E8(v18, &unk_10118CDC0);
    v22 = v9;
  }

  else
  {
    v32 = *(v10 + 16);
    v33 = a1;
    v32(v12, v18, v9);
    sub_1000095E8(v18, &unk_10118CDD0);
    v23 = MusicLibrarySectionedResponse.totalItemCount.getter();
    (*(v10 + 8))(v12, v9);
    v22 = v9;
    if (v23 > 3)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return;
      }

      v25 = Strong;
      RequestResponse.Revision.content.getter(v15);
      if (v20(v15, 1, v19) == 1)
      {
        sub_1000095E8(v15, &unk_10118CDC0);
        v26 = 1;
        v27 = v34;
      }

      else
      {
        v27 = v34;
        v32(v34, v15, v22);
        sub_1000095E8(v15, &unk_10118CDD0);
        v26 = 0;
      }

      (*(v36 + 56))(v27, v26, 1, v22);
      goto LABEL_11;
    }
  }

  swift_beginAccess();
  v28 = swift_unknownObjectWeakLoadStrong();
  if (!v28)
  {
    return;
  }

  v25 = v28;
  v27 = v35;
  (*(v36 + 56))(v35, 1, 1, v22);
LABEL_11:
  v29 = v25 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
  swift_beginAccess();
  v30 = v37;
  sub_10047AAB4(v29, v37, type metadata accessor for PlaylistPicker.ViewController.Playlists);
  sub_10006B010(v27, v30, &unk_101182900);
  sub_10046F354(v30);
}

uint64_t sub_10046ECDC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v3 - 8);
  v5 = &v25[-v4];
  v6 = type metadata accessor for PlaylistPicker.ViewController.Playlists(0);
  __chkstk_darwin(v6);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10010FC20(&unk_10118CDC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v25[-v10];
  v12 = sub_10010FC20(&unk_101182900);
  __chkstk_darwin(v12 - 8);
  v14 = &v25[-v13];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    RequestResponse.Revision.content.getter(v11);
    v17 = sub_10010FC20(&unk_10118CDD0);
    if ((*(*(v17 - 8) + 48))(v11, 1, v17) == 1)
    {
      sub_1000095E8(v11, &unk_10118CDC0);
      v18 = sub_10010FC20(&qword_101193C80);
      (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
    }

    else
    {
      v19 = sub_10010FC20(&qword_101193C80);
      v20 = *(v19 - 8);
      (*(v20 + 16))(v14, v11, v19);
      sub_1000095E8(v11, &unk_10118CDD0);
      (*(v20 + 56))(v14, 0, 1, v19);
    }

    v21 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
    swift_beginAccess();
    sub_10047AAB4(v16 + v21, v8, type metadata accessor for PlaylistPicker.ViewController.Playlists);
    sub_10006B010(v14, &v8[*(v6 + 20)], &unk_101182900);
    sub_10046F354(v8);
  }

  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = a2;

  sub_10035EDD0(0, 0, v5, &unk_100ECE460, v23);

  return sub_1000095E8(v5, &unk_101181520);
}

uint64_t sub_10046F104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_10046F124, 0, 0);
}

uint64_t sub_10046F124()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_10046F218;

    return sub_1004720D0();
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_10046F218()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_10046F32C, 0, 0);
}

uint64_t sub_10046F354(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AIDiffingUpdate();
  v138 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v6 = &v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v125 - v8;
  __chkstk_darwin(v10);
  v137 = &v125 - v11;
  __chkstk_darwin(v12);
  v139 = &v125 - v13;
  v14 = sub_10010FC20(&qword_101193C80);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v141 = &v125 - v16;
  v151 = type metadata accessor for PlaylistPicker.ViewController.Playlists(0);
  v155 = *(v151 - 8);
  __chkstk_darwin(v151);
  v136 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v147 = &v125 - v19;
  __chkstk_darwin(v20);
  v143 = &v125 - v21;
  __chkstk_darwin(v22);
  v24 = &v125 - v23;
  __chkstk_darwin(v25);
  v135 = &v125 - v26;
  __chkstk_darwin(v27);
  v146 = &v125 - v28;
  v140 = v29;
  __chkstk_darwin(v30);
  v142 = &v125 - v31;
  v32 = sub_10010FC20(&unk_101182900);
  __chkstk_darwin(v32 - 8);
  v134 = &v125 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v149 = &v125 - v35;
  __chkstk_darwin(v36);
  v133 = &v125 - v37;
  __chkstk_darwin(v38);
  v148 = &v125 - v39;
  v40 = type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin(v40);
  v42 = &v125 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = &v125 - v44;
  if (v2[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_allowsAnimatedChanges] != 1)
  {
    sub_10047AAB4(a1, v24, type metadata accessor for PlaylistPicker.ViewController.Playlists);
    v120 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
    swift_beginAccess();
    sub_10047AE7C(v24, &v2[v120]);
    swift_endAccess();
    v121 = sub_100477A1C();
    [v121 reloadData];

    return sub_10047AB30(a1, type metadata accessor for PlaylistPicker.ViewController.Playlists);
  }

  v129 = v24;
  v131 = v9;
  v130 = v6;
  v158 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context;
  sub_10047AAB4(&v2[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context], &v125 - v44, type metadata accessor for PlaylistPicker.Mode);
  v154 = v40;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10047AB30(v45, type metadata accessor for PlaylistPicker.Mode);
  v47 = &unk_10109B450;
  if (EnumCaseMultiPayload != 1)
  {
    v47 = &unk_10109B428;
  }

  v48 = *v47;

  v157 = v48;
  if (!v48)
  {
    v50 = _swiftEmptyArrayStorage;
    v144 = _swiftEmptyArrayStorage;
LABEL_62:
    v122 = sub_100477A1C();
    v123 = swift_allocObject();
    *(v123 + 16) = v50;
    UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(v144, 1, sub_10047AF60, v123, 0, 0);

    return sub_10047AB30(a1, type metadata accessor for PlaylistPicker.ViewController.Playlists);
  }

  v145 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
  swift_beginAccess();
  v49 = 0;
  v156 = (v15 + 48);
  v150 = (v15 + 8);
  v132 = (v15 + 16);
  v50 = _swiftEmptyArrayStorage;
  v152 = v140 + 7;
  v153 = a1;
  v144 = _swiftEmptyArrayStorage;
  while (1)
  {
    sub_10047AAB4(&v2[v158], v42, type metadata accessor for PlaylistPicker.Mode);
    v53 = swift_getEnumCaseMultiPayload();
    result = sub_10047AB30(v42, type metadata accessor for PlaylistPicker.Mode);
    v55 = &unk_10109B4A0;
    if (v53 != 1)
    {
      v55 = &unk_10109B478;
    }

    if (v49 >= *v55)
    {
      break;
    }

    v56 = &unk_10109B488;
    if (v53 == 1)
    {
      v56 = &unk_10109B4B0;
    }

    v57 = *(v49 + v56);

    if (!v57)
    {
      goto LABEL_8;
    }

    if (v57 == 1)
    {
      v58 = v148;
      sub_1000089F8(a1, v148, &unk_101182900);
      v59 = *v156;
      if ((*v156)(v58, 1, v14) == 1)
      {
        sub_1000095E8(v58, &unk_101182900);
      }

      else
      {
        v63 = MusicLibrarySectionedResponse.isEmpty.getter();
        v64 = *v150;
        (*v150)(v58, v14);
        if (!v63)
        {
          v65 = v142;
          sub_10047AAB4(&v2[v145], v142, type metadata accessor for PlaylistPicker.ViewController.Playlists);
          if (v59(v65, 1, v14))
          {
            sub_10047AB30(v65, type metadata accessor for PlaylistPicker.ViewController.Playlists);
          }

          else
          {
            v70 = *v132;
            v71 = v141;
            (*v132)(v141, v65, v14);
            sub_10047AB30(v65, type metadata accessor for PlaylistPicker.ViewController.Playlists);
            v72 = MusicLibrarySectionedResponse.isEmpty.getter();
            v64(v71, v14);
            if (!v72)
            {
              v128 = sub_100477A1C();
              v89 = v135;
              sub_10047AAB4(&v2[v145], v135, type metadata accessor for PlaylistPicker.ViewController.Playlists);
              if (v59(v89, 1, v14))
              {
                sub_10047AB30(v89, type metadata accessor for PlaylistPicker.ViewController.Playlists);
                v127 = 0;
              }

              else
              {
                v92 = v141;
                (v70)(v141, v89, v14);
                sub_10047AB30(v89, type metadata accessor for PlaylistPicker.ViewController.Playlists);
                v127 = MusicLibrarySectionedResponse.sections.getter();
                v64(v92, v14);
              }

              a1 = v153;
              v93 = v133;
              sub_1000089F8(v153, v133, &unk_101182900);
              if (v59(v93, 1, v14) == 1)
              {
                sub_1000095E8(v93, &unk_101182900);
                v126 = 0;
              }

              else
              {
                v126 = MusicLibrarySectionedResponse.sections.getter();
                v64(v93, v14);
              }

              v94 = v129;
              v95 = swift_allocObject();
              v125 = v95;
              swift_unknownObjectWeakInit();
              sub_10047AAB4(a1, v94, type metadata accessor for PlaylistPicker.ViewController.Playlists);
              v96 = (*(v155 + 80) + 24) & ~*(v155 + 80);
              v97 = swift_allocObject();
              *(v97 + 16) = v95;
              sub_10047AEE0(v94, v97 + v96, type metadata accessor for PlaylistPicker.ViewController.Playlists);

              v98 = sub_10010FC20(&unk_10118CEC0);
              v99 = sub_1003C1614();
              v124 = v98;
              v100 = v128;
              UICollectionView.calculateAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(v127, v126, v49, v49, 0, sub_10047B348, v97, sub_10047B904, v139, 0, sub_100470770, 0, v124, v99);

              sub_10047AAB4(v139, v137, type metadata accessor for AIDiffingUpdate);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v144 = sub_10049A5D0(0, v144[2] + 1, 1, v144);
              }

              v102 = v144[2];
              v101 = v144[3];
              if (v102 >= v101 >> 1)
              {
                v144 = sub_10049A5D0(v101 > 1, v102 + 1, 1, v144);
              }

              sub_10047AB30(v139, type metadata accessor for AIDiffingUpdate);
              v103 = v144;
              v144[2] = v102 + 1;
              v104 = v103 + ((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * v102;
              v105 = &v160;
LABEL_59:
              sub_10047AEE0(*(v105 - 32), v104, type metadata accessor for AIDiffingUpdate);
              goto LABEL_8;
            }
          }
        }
      }

      a1 = v153;
      v73 = v146;
      sub_10047AAB4(v153, v146, type metadata accessor for PlaylistPicker.ViewController.Playlists);
      v74 = (*(v155 + 80) + 24) & ~*(v155 + 80);
      v75 = (v152 + v74) & 0xFFFFFFFFFFFFFFF8;
      v76 = swift_allocObject();
      *(v76 + 16) = v2;
      sub_10047AEE0(v73, v76 + v74, type metadata accessor for PlaylistPicker.ViewController.Playlists);
      *(v76 + v75) = v49;
      v77 = v2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_10006429C(0, v50[2] + 1, 1, v50);
      }

      v79 = v50[2];
      v78 = v50[3];
      if (v79 >= v78 >> 1)
      {
        v50 = sub_10006429C((v78 > 1), v79 + 1, 1, v50);
      }

      v50[2] = v79 + 1;
      v51 = &v50[2 * v79];
      v52 = sub_10047B104;
    }

    else
    {
      v60 = *(v151 + 20);
      v61 = v149;
      sub_1000089F8(a1 + v60, v149, &unk_101182900);
      v62 = *v156;
      if ((*v156)(v61, 1, v14) == 1)
      {
        sub_1000095E8(v61, &unk_101182900);
      }

      else
      {
        v66 = MusicLibrarySectionedResponse.isEmpty.getter();
        v67 = *v150;
        (*v150)(v61, v14);
        if (!v66)
        {
          v68 = v143;
          sub_10047AAB4(&v2[v145], v143, type metadata accessor for PlaylistPicker.ViewController.Playlists);
          v69 = *(v151 + 20);
          if (v62(v68 + v69, 1, v14))
          {
            sub_10047AB30(v68, type metadata accessor for PlaylistPicker.ViewController.Playlists);
          }

          else
          {
            v80 = v68 + v69;
            v81 = v141;
            v128 = *v132;
            (v128)(v141, v80, v14);
            sub_10047AB30(v68, type metadata accessor for PlaylistPicker.ViewController.Playlists);
            v82 = MusicLibrarySectionedResponse.isEmpty.getter();
            v67(v81, v14);
            if (!v82)
            {
              v127 = sub_100477A1C();
              v90 = v136;
              sub_10047AAB4(&v2[v145], v136, type metadata accessor for PlaylistPicker.ViewController.Playlists);
              v91 = *(v151 + 20);
              if (v62(v90 + v91, 1, v14))
              {
                sub_10047AB30(v90, type metadata accessor for PlaylistPicker.ViewController.Playlists);
                v128 = 0;
              }

              else
              {
                v106 = v90 + v91;
                v107 = v141;
                (v128)(v141, v106, v14);
                sub_10047AB30(v90, type metadata accessor for PlaylistPicker.ViewController.Playlists);
                v128 = MusicLibrarySectionedResponse.sections.getter();
                v67(v107, v14);
              }

              v108 = v134;
              sub_1000089F8(v153 + v60, v134, &unk_101182900);
              if (v62(v108, 1, v14) == 1)
              {
                sub_1000095E8(v108, &unk_101182900);
                v126 = 0;
              }

              else
              {
                v126 = MusicLibrarySectionedResponse.sections.getter();
                v67(v108, v14);
              }

              v109 = swift_allocObject();
              v125 = v109;
              swift_unknownObjectWeakInit();
              a1 = v153;
              v110 = v129;
              sub_10047AAB4(v153, v129, type metadata accessor for PlaylistPicker.ViewController.Playlists);
              v111 = (*(v155 + 80) + 24) & ~*(v155 + 80);
              v112 = swift_allocObject();
              *(v112 + 16) = v109;
              sub_10047AEE0(v110, v112 + v111, type metadata accessor for PlaylistPicker.ViewController.Playlists);

              v113 = sub_10010FC20(&unk_10118CEC0);
              v114 = sub_1003C1614();
              v115 = v112;
              v116 = v127;
              UICollectionView.calculateAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(v128, v126, v49, 0, 1, sub_10047AF68, v115, sub_10047B904, v131, 0, sub_100470770, 0, v113, v114);

              sub_10047AAB4(v131, v130, type metadata accessor for AIDiffingUpdate);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v144 = sub_10049A5D0(0, v144[2] + 1, 1, v144);
              }

              v118 = v144[2];
              v117 = v144[3];
              if (v118 >= v117 >> 1)
              {
                v144 = sub_10049A5D0(v117 > 1, v118 + 1, 1, v144);
              }

              sub_10047AB30(v131, type metadata accessor for AIDiffingUpdate);
              v119 = v144;
              v144[2] = v118 + 1;
              v104 = v119 + ((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * v118;
              v105 = &v159;
              goto LABEL_59;
            }
          }
        }
      }

      a1 = v153;
      v83 = v147;
      sub_10047AAB4(v153, v147, type metadata accessor for PlaylistPicker.ViewController.Playlists);
      v84 = (*(v155 + 80) + 24) & ~*(v155 + 80);
      v85 = (v152 + v84) & 0xFFFFFFFFFFFFFFF8;
      v76 = swift_allocObject();
      *(v76 + 16) = v2;
      sub_10047AEE0(v83, v76 + v84, type metadata accessor for PlaylistPicker.ViewController.Playlists);
      *(v76 + v85) = v49;
      v86 = v2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_10006429C(0, v50[2] + 1, 1, v50);
      }

      v88 = v50[2];
      v87 = v50[3];
      if (v88 >= v87 >> 1)
      {
        v50 = sub_10006429C((v87 > 1), v88 + 1, 1, v50);
      }

      v50[2] = v88 + 1;
      v51 = &v50[2 * v88];
      v52 = sub_10047AF48;
    }

    v51[4] = v52;
    v51[5] = v76;
LABEL_8:
    v49 = (v49 + 1);
    if (v157 == v49)
    {
      goto LABEL_62;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100470770(uint64_t a1, uint64_t a2)
{
  v72 = type metadata accessor for Artwork();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v64 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_10010FC20(&unk_101191420);
  __chkstk_darwin(v66);
  v71 = &v64 - v5;
  v6 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v6 - 8);
  v65 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v68 = &v64 - v9;
  __chkstk_darwin(v10);
  v69 = &v64 - v11;
  v12 = type metadata accessor for Playlist.Folder();
  v13 = *(v12 - 8);
  v74 = v12;
  v75 = v13;
  __chkstk_darwin(v12);
  v73 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v67 = &v64 - v16;
  v17 = type metadata accessor for Playlist.Folder.Item();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10010FC20(&unk_101191430);
  v22 = __chkstk_darwin(v21 - 8);
  v24 = &v64 - v23;
  v26 = *(v25 + 56);
  v27 = *(v18 + 16);
  v27(&v64 - v23, a1, v17, v22);
  (v27)(&v24[v26], a2, v17);
  v28 = *(v18 + 88);
  v29 = v28(v24, v17);
  v30 = v29;
  if (v29 == enum case for Playlist.Folder.Item.folder(_:))
  {
    (v27)(v20, v24, v17);
    v31 = *(v18 + 96);
    v31(v20, v17);
    if (v28(&v24[v26], v17) == v30)
    {
      v31(&v24[v26], v17);
      v32 = v74;
      v33 = *(v75 + 32);
      v34 = v67;
      v33(v67, v20, v74);
      v33(v73, &v24[v26], v32);
      v35 = Playlist.Folder.name.getter();
      v37 = v36;
      if (v35 == Playlist.Folder.name.getter() && v37 == v38)
      {

        v39 = v71;
      }

      else
      {
        v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v39 = v71;
        if ((v42 & 1) == 0)
        {
          v56 = *(v75 + 8);
          v56(v73, v32);
          v56(v34, v32);
          goto LABEL_20;
        }
      }

      v43 = v34;
      v44 = v69;
      Playlist.Folder.artwork.getter();
      v45 = v68;
      Playlist.Folder.artwork.getter();
      v46 = *(v66 + 48);
      sub_1000089F8(v44, v39, &unk_101188920);
      v66 = v46;
      sub_1000089F8(v45, v39 + v46, &unk_101188920);
      v47 = *(v70 + 48);
      if (v47(v39, 1, v72) == 1)
      {
        sub_1000095E8(v45, &unk_101188920);
        sub_1000095E8(v44, &unk_101188920);
        v48 = v43;
        v49 = v74;
        v50 = *(v75 + 8);
        v50(v73, v74);
        v50(v48, v49);
        if (v47(v39 + v66, 1, v72) == 1)
        {
          sub_1000095E8(v39, &unk_101188920);
          v41 = 1;
LABEL_22:
          (*(v18 + 8))(v24, v17);
          return v41 & 1;
        }
      }

      else
      {
        v51 = v43;
        v52 = v65;
        sub_1000089F8(v39, v65, &unk_101188920);
        v53 = v66;
        if (v47(v39 + v66, 1, v72) != 1)
        {
          v57 = v70;
          v58 = v39 + v53;
          v59 = v64;
          v60 = v72;
          (*(v70 + 32))(v64, v58, v72);
          sub_10047A9B8(&unk_10118D3D0, &type metadata accessor for Artwork);
          v41 = dispatch thunk of static Equatable.== infix(_:_:)();
          v70 = *(v57 + 8);
          (v70)(v59, v60);
          sub_1000095E8(v68, &unk_101188920);
          sub_1000095E8(v69, &unk_101188920);
          v61 = v74;
          v62 = *(v75 + 8);
          v62(v73, v74);
          v62(v51, v61);
          (v70)(v65, v60);
          sub_1000095E8(v71, &unk_101188920);
          goto LABEL_22;
        }

        sub_1000095E8(v68, &unk_101188920);
        sub_1000095E8(v69, &unk_101188920);
        v54 = v74;
        v55 = *(v75 + 8);
        v55(v73, v74);
        v55(v51, v54);
        (*(v70 + 8))(v52, v72);
      }

      sub_1000095E8(v39, &unk_101191420);
LABEL_20:
      v41 = 0;
      goto LABEL_22;
    }

    (*(v75 + 8))(v20, v74);
    goto LABEL_10;
  }

  if (v29 != enum case for Playlist.Folder.Item.playlist(_:) || v28(&v24[v26], v17) != v29)
  {
LABEL_10:
    sub_1000095E8(v24, &unk_101191430);
    goto LABEL_11;
  }

  v40 = *(v18 + 8);
  v40(&v24[v26], v17);
  v40(v24, v17);
LABEL_11:
  v41 = 0;
  return v41 & 1;
}

void sub_100471044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
  swift_beginAccess();
  sub_1002190E0(a2, a1 + v10, &unk_101182900);
  swift_endAccess();
  v11 = sub_100477A1C();
  sub_10010FC20(&unk_101191400);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100EBC6B0;
  *(v12 + 32) = a3;
  v16[1] = v12;
  sub_10047A9B8(&unk_10118A630, &type metadata accessor for IndexSet);
  sub_10010FC20(&unk_101191410);
  sub_100020674(&unk_10118A640, &unk_101191410);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  IndexSet._bridgeToObjectiveC()(v13);
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  [v11 reloadSections:v15];
}

void sub_100471264(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
    v5 = Strong;
    swift_beginAccess();
    sub_1002190E0(a2, v5 + v4, &unk_101182900);
    swift_endAccess();
  }
}

void sub_100471300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PlaylistPicker.ViewController.Playlists(0);
  v11 = *(v10 + 20);
  v12 = a1 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
  swift_beginAccess();
  sub_1002190E0(a2 + v11, v12 + *(v10 + 20), &unk_101182900);
  swift_endAccess();
  v13 = sub_100477A1C();
  sub_10010FC20(&unk_101191400);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100EBC6B0;
  *(v14 + 32) = a3;
  v18[1] = v14;
  sub_10047A9B8(&unk_10118A630, &type metadata accessor for IndexSet);
  sub_10010FC20(&unk_101191410);
  sub_100020674(&unk_10118A640, &unk_101191410);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  IndexSet._bridgeToObjectiveC()(v15);
  v17 = v16;
  (*(v7 + 8))(v9, v6);
  [v13 reloadSections:v17];
}

uint64_t sub_10047153C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = type metadata accessor for PlaylistPicker.ViewController.Playlists(0);
    v7 = *(v6 + 20);
    v8 = &v5[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists];
    swift_beginAccess();
    sub_1002190E0(a2 + v7, &v8[*(v6 + 20)], &unk_101182900);
    swift_endAccess();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_playlistContainsDuplicatesCache;
    v11 = result;
    swift_beginAccess();
    v12 = *&v11[v10];

    v13 = v12 + 64;
    v14 = 1 << *(v12 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v12 + 64);

    result = swift_beginAccess();
    v17 = 0;
    v28 = v12;
    while (v16)
    {
LABEL_13:
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v20 = (*(v12 + 48) + ((v17 << 10) | (16 * v19)));
      v22 = *v20;
      v21 = v20[1];
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v23 = result;
        v24 = a1;

        v25 = sub_10047325C();
        v27 = sub_1005761EC(v29, v22, v21);
        if (*(v26 + 8) != 2)
        {
          *(v26 + 8) = 1;
        }

        (v27)(v29, 0);
        (v25)(v30, 0);

        a1 = v24;
        v12 = v28;
      }
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= ((v14 + 63) >> 6))
      {
      }

      v16 = *(v13 + 8 * v18);
      ++v17;
      if (v16)
      {
        v17 = v18;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1004717AC()
{
  type metadata accessor for Playlist.Folder.Item();
  sub_10047A9B8(&unk_1011913F0, &type metadata accessor for Playlist.Folder.Item);
  sub_10047A9B8(&qword_10118D3E0, &type metadata accessor for Playlist.Folder.Item);
  return static MusicItem<>.==~ infix(_:_:)() & 1;
}

uint64_t sub_10047186C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 40;
    do
    {
      v3 = *(v2 - 8);

      v3(v4);

      v2 += 16;
      --v1;
    }

    while (v1);
  }

  return result;
}

objc_class *sub_1004718C4()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___contextBarButtonItem;
  v4 = *(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___contextBarButtonItem);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___contextBarButtonItem);
  }

  else
  {
    sub_100009F78(0, &qword_101181580);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v6 = String.init(localized:table:bundle:locale:comment:)();
    v8 = v7;
    v9 = String._bridgeToObjectiveC()();
    v10 = [objc_opt_self() systemImageNamed:v9];

    sub_100009F78(0, &unk_1011845F0);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v12.value = 0;
    v13 = v0;
    isa = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, v12, 0, sub_10047AE74, v11).super.super.isa;

    v15 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v6, v8, v10, 0, isa, 1, 0, 0);
    v16 = *(v13 + v3);
    *(v13 + v3) = v15;
    v5 = v15;

    v4 = 0;
  }

  v17 = v4;
  return v5;
}

void *sub_100471B40()
{
  v0 = _s9PlaylistsVMa(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = _swiftEmptyArrayStorage;
  if (Strong)
  {
    v5 = Strong;
    v6 = *(*(Strong + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_responseController) + 48);
    v7 = *(*v6 + 96);
    swift_beginAccess();
    sub_10047AAB4(v6 + v7, v2, _s9PlaylistsVMa);
    v8 = swift_allocObject();
    swift_weakInit();

    v9.super.super.isa = sub_100211D00(sub_1003BC69C, v8).super.super.isa;

    sub_10047AB30(v2, _s9PlaylistsVMa);

    isa = v9.super.super.isa;
    v12 = _swiftEmptyArrayStorage;
    if (v9.super.super.isa)
    {
      v10 = v9.super.super.isa;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = v12;
    }

    sub_1000095E8(&isa, &qword_10118CE10);
  }

  return v4;
}

objc_class *sub_100471D54()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___moveButton;
  v4 = *(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___moveButton);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___moveButton);
  }

  else
  {
    sub_100009F78(0, &qword_101181580);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v6 = String.init(localized:table:bundle:locale:comment:)();
    v8 = v7;
    sub_100009F78(0, &qword_1011839A0);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = v0;
    v15.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v10.value._countAndFlagsBits = v6;
    v10.value._object = v8;
    v15.value.super.isa = 0;
    v16.value.super.super.isa = 0;
    isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v10, v15, v16, v17).super.super.isa;
    [(objc_class *)isa setEnabled:0];
    [(objc_class *)isa setStyle:2];
    v12 = *(v0 + v3);
    *(v9 + v3) = isa;
    v5 = isa;

    v4 = 0;
  }

  v13 = v4;
  return v5;
}

void sub_100471F88()
{
  v0 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v0 - 8);
  v2 = &v7[-v1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *&Strong[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_moveToFolderHandler];
    if (v4)
    {
      v5 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_folder;
      v6 = Strong;
      swift_beginAccess();
      sub_1000089F8(v6 + v5, v2, &unk_10118F670);

      v4(v6, v2);
      sub_100020438(v4);

      sub_1000095E8(v2, &unk_10118F670);
    }

    else
    {
    }
  }
}

uint64_t sub_1004720D0()
{
  v1[8] = v0;
  sub_10010FC20(&unk_10118F670);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v2 = type metadata accessor for Playlist.Folder();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = type metadata accessor for PlaylistPicker.Mode(0);
  v1[16] = swift_task_alloc();
  v3 = type metadata accessor for Playlist.Folder.Item();
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[21] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[22] = v5;
  v1[23] = v4;

  return _swift_task_switch(sub_1004722AC, v5, v4);
}

uint64_t sub_1004722AC()
{
  sub_10047AAB4(v0[8] + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context, v0[16], type metadata accessor for PlaylistPicker.Mode);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v19 = v0[16];

    sub_10047AB30(v19, type metadata accessor for PlaylistPicker.Mode);
LABEL_6:

    v20 = v0[1];

    return v20();
  }

  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  (*(v4 + 32))(v2, v0[16], v3);
  (*(v4 + 16))(v1, v2, v3);
  v5 = (*(v4 + 88))(v1, v3);
  if (v5 != enum case for Playlist.Folder.Item.folder(_:))
  {
    if (v5 == enum case for Playlist.Folder.Item.playlist(_:))
    {
      v22 = v0[8];
      v23 = v0[9];
      v24 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_folder;
      swift_beginAccess();
      sub_1000089F8(v22 + v24, v23, &unk_10118F670);
      v17 = swift_task_alloc();
      v0[26] = v17;
      *v17 = v0;
      v18 = sub_100472CC4;
      goto LABEL_11;
    }

    v29 = v0[18];
    v28 = v0[19];
    v30 = v0[17];

    (*(v29 + 8))(v28, v30);
    v31 = sub_100471D54();
    LODWORD(v30) = [(objc_class *)v31 isEnabled];

    if (v30)
    {
      [*(v0[8] + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___moveButton) setEnabled:0];
    }

    v32 = v0[20];
    v33 = v0[17];
    v34 = v0[18];
    v35 = v0[8];
    v36 = *(v35 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_shouldDisableNewFolderCell);
    *(v35 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_shouldDisableNewFolderCell) = 0;
    sub_100472F78(v36);
    (*(v34 + 8))(v32, v33);
    goto LABEL_6;
  }

  v6 = v0[19];
  v7 = v0[14];
  v8 = v0[11];
  v9 = v0[12];
  v10 = v0[10];
  v11 = v0[8];
  (*(v0[18] + 96))(v6, v0[17]);
  v12 = *(v9 + 32);
  v12(v7, v6, v8);
  v13 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_folder;
  swift_beginAccess();
  sub_1000089F8(v11 + v13, v10, &unk_10118F670);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v14 = v0[11];
    v15 = v0[12];
    v16 = v0[9];
    sub_1000095E8(v0[10], &unk_10118F670);
    (*(v15 + 56))(v16, 1, 1, v14);
    v17 = swift_task_alloc();
    v0[25] = v17;
    *v17 = v0;
    v18 = sub_100472A10;
LABEL_11:
    v17[1] = v18;
    v25 = v0[9];

    return sub_100354500(v25);
  }

  v12(v0[13], v0[10], v0[11]);
  v26 = swift_task_alloc();
  v0[24] = v26;
  *v26 = v0;
  v26[1] = sub_100472764;
  v27 = v0[13];

  return sub_100352848(v27);
}

uint64_t sub_100472764(char a1)
{
  v2 = *v1;
  *(*v1 + 216) = a1;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);

  return _swift_task_switch(sub_10047288C, v4, v3);
}

uint64_t sub_10047288C()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);

  v6 = *(v5 + 8);
  v6(v2, v4);
  v6(v3, v4);
  v7 = (0x10u >> v1) & 1;
  v8 = sub_100471D54();
  LODWORD(v4) = [(objc_class *)v8 isEnabled];

  if (v4 != v7)
  {
    [*(*(v0 + 64) + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___moveButton) setEnabled:v7];
  }

  v9 = 5u >> v1;
  v10 = *(v0 + 160);
  v11 = *(v0 + 136);
  v12 = *(v0 + 144);
  v13 = *(v0 + 64);
  v14 = *(v13 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_shouldDisableNewFolderCell);
  *(v13 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_shouldDisableNewFolderCell) = v9 & 1;
  sub_100472F78(v14);
  (*(v12 + 8))(v10, v11);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100472A10(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  *(*v1 + 217) = a1;

  sub_1000095E8(v3, &unk_10118F670);
  v4 = *(v2 + 184);
  v5 = *(v2 + 176);

  return _swift_task_switch(sub_100472B6C, v5, v4);
}

uint64_t sub_100472B6C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 217);
  v5 = sub_100471D54();
  LODWORD(v3) = [(objc_class *)v5 isEnabled];

  if (v4 != v3)
  {
    [*(*(v0 + 64) + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___moveButton) setEnabled:v4];
  }

  v6 = *(v0 + 160);
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);
  v9 = *(v0 + 64);
  v10 = *(v9 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_shouldDisableNewFolderCell);
  *(v9 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_shouldDisableNewFolderCell) = 0;
  sub_100472F78(v10);
  (*(v8 + 8))(v6, v7);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100472CC4(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  *(*v1 + 218) = a1;

  sub_1000095E8(v3, &unk_10118F670);
  v4 = *(v2 + 184);
  v5 = *(v2 + 176);

  return _swift_task_switch(sub_100472E20, v5, v4);
}

uint64_t sub_100472E20()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 218);
  v5 = sub_100471D54();
  LODWORD(v2) = [(objc_class *)v5 isEnabled];

  if (v4 != v2)
  {
    [*(*(v0 + 64) + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___moveButton) setEnabled:v4];
  }

  v6 = *(v0 + 160);
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);
  v9 = *(v0 + 64);
  v10 = *(v9 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_shouldDisableNewFolderCell);
  *(v9 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_shouldDisableNewFolderCell) = 0;
  sub_100472F78(v10);
  (*(v8 + 8))(v6, v7);

  v11 = *(v0 + 8);

  return v11();
}

void sub_100472F78(char a1)
{
  v2 = a1 & 1;
  v3 = type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin(v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_shouldDisableNewFolderCell) != v2)
  {
    sub_10047AAB4(v1 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context, v5, type metadata accessor for PlaylistPicker.Mode);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_10047AB30(v5, type metadata accessor for PlaylistPicker.Mode);
    if (EnumCaseMultiPayload == 1)
    {
      v7 = &off_10109B4E0;
    }

    else
    {
      v7 = &off_10109B4B8;
    }

    v8 = &unk_10109B4F0;
    if (EnumCaseMultiPayload != 1)
    {
      v8 = &unk_10109B4C8;
    }

    v9 = *v8;
    if (*v8)
    {
      v16[1] = v7;
      v10 = 0;
      if (EnumCaseMultiPayload == 1)
      {
        v11 = &unk_10109B500;
      }

      else
      {
        v11 = &unk_10109B4D8;
      }

      while ((v9 & ~(v9 >> 63)) != v10)
      {
        v12 = v11[v10];
        if (v12 != 1 && v12 != 2)
        {

LABEL_19:

          v14 = sub_100477A1C();
          sub_10010FC20(&qword_10118AC80);
          type metadata accessor for IndexPath();
          *(swift_allocObject() + 16) = xmmword_100EBC6B0;
          IndexPath.init(item:section:)();
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v14 reconfigureItemsAtIndexPaths:isa];

          return;
        }

        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v13)
        {
          goto LABEL_19;
        }

        if (v9 == ++v10)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_16:
    }
  }
}

uint64_t sub_1004732C0(uint64_t a1)
{
  v34 = a1;
  v2 = type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin(v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v33 - v6;
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context;
  sub_10047AAB4(v1 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context, &v33 - v12, type metadata accessor for PlaylistPicker.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10047AB30(v13, type metadata accessor for PlaylistPicker.Mode);
  v16 = &unk_10109B1F8;
  if (EnumCaseMultiPayload != 1)
  {
    v16 = &unk_10109B1D0;
  }

  v17 = *v16;

  v18 = v17 - 1;
  v19 = v34;
  if (v18 < v34)
  {
    sub_10047AAB4(v1 + v14, v10, type metadata accessor for PlaylistPicker.Mode);
    v20 = swift_getEnumCaseMultiPayload();
    sub_10047AB30(v10, type metadata accessor for PlaylistPicker.Mode);
    sub_10047AAB4(v1 + v14, v7, type metadata accessor for PlaylistPicker.Mode);
    v21 = swift_getEnumCaseMultiPayload();
    sub_10047AB30(v7, type metadata accessor for PlaylistPicker.Mode);
    v22 = &unk_10109B298;
    if (v21 != 1)
    {
      v22 = &unk_10109B270;
    }

    v23 = *v22;

    v25 = v23 - 1;
    if (v23 - 1 >= 0)
    {
      v26 = &unk_10109B248;
      if (v20 != 1)
      {
        v26 = &unk_10109B220;
      }

      if (v25 < *v26)
      {
        v27 = &unk_10109B230;
        if (v20 == 1)
        {
          v27 = &unk_10109B258;
        }

        v28 = &v27[v25];
LABEL_20:
        v32 = *v28;

        return v32;
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_10047AAB4(v1 + v14, v4, type metadata accessor for PlaylistPicker.Mode);
  v29 = swift_getEnumCaseMultiPayload();
  result = sub_10047AB30(v4, type metadata accessor for PlaylistPicker.Mode);
  if (v19 < 0)
  {
    goto LABEL_22;
  }

  v30 = &unk_10109B2E8;
  if (v29 != 1)
  {
    v30 = &unk_10109B2C0;
  }

  if (*v30 > v19)
  {
    v31 = &unk_10109B2D0;
    if (v29 == 1)
    {
      v31 = &unk_10109B2F8;
    }

    v28 = &v31[v19];
    goto LABEL_20;
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_10047361C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v79 = a1;
  v3 = sub_10010FC20(&qword_1011828F0);
  v71 = *(v3 - 8);
  v72 = v3;
  __chkstk_darwin(v3);
  v70 = &v67 - v4;
  v5 = sub_10010FC20(&unk_10118CEC0);
  v68 = *(v5 - 8);
  v69 = v5;
  __chkstk_darwin(v5);
  v67 = &v67 - v6;
  v7 = sub_10010FC20(&qword_101193C80);
  v77 = *(v7 - 8);
  v78 = v7;
  __chkstk_darwin(v7);
  v73 = &v67 - v8;
  v9 = type metadata accessor for PlaylistPicker.ViewController.Playlists(0);
  __chkstk_darwin(v9);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v67 - v13;
  v15 = type metadata accessor for IndexPath();
  v75 = *(v15 - 8);
  v76 = v15;
  __chkstk_darwin(v15);
  v74 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v67 - v18;
  v20 = type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin(v20);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v67 - v24;
  v26 = IndexPath.section.getter();
  v27 = sub_1004732C0(v26);
  if (v27)
  {
    if (v27 == 1)
    {
      sub_10047AAB4(v1 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context, v25, type metadata accessor for PlaylistPicker.Mode);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = &off_10109B3A0;
      }

      else
      {
        v28 = &off_10109B378;
      }

      sub_10047AB30(v25, type metadata accessor for PlaylistPicker.Mode);
      v29 = sub_1003FCC44(1, v28);
      v31 = v30;

      if ((v31 & 1) != 0 || IndexPath.section.getter() < v29)
      {
        goto LABEL_23;
      }

      IndexPath.item.getter();
      result = IndexPath.section.getter();
      if (!__OFSUB__(result, v29))
      {
        IndexPath.init(item:section:)();
        v33 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
        swift_beginAccess();
        sub_10047AAB4(v2 + v33, v14, type metadata accessor for PlaylistPicker.ViewController.Playlists);
        v35 = v77;
        v34 = v78;
        if ((*(v77 + 48))(v14, 1, v78))
        {
          (*(v75 + 8))(v19, v76);
          v36 = v14;
LABEL_22:
          sub_10047AB30(v36, type metadata accessor for PlaylistPicker.ViewController.Playlists);
LABEL_23:
          v50 = type metadata accessor for Playlist.Folder.Item();
          return (*(*(v50 - 8) + 56))(v79, 1, 1, v50);
        }

        v51 = v73;
        (*(v35 + 16))(v73, v14, v34);
        sub_10047AB30(v14, type metadata accessor for PlaylistPicker.ViewController.Playlists);
        v52 = MusicLibrarySectionedResponse.sections.getter();
        (*(v35 + 8))(v51, v34);
        result = IndexPath.section.getter();
        if ((result & 0x8000000000000000) == 0)
        {
          if (result < *(v52 + 16))
          {
            v53 = v67;
            v54 = v68;
            v55 = v69;
            (*(v68 + 16))(v67, v52 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * result, v69);

            v56 = v70;
            MusicLibrarySection.items.getter();
            (*(v54 + 8))(v53, v55);
            IndexPath.item.getter();
            v57 = v79;
            v58 = v72;
            MusicItemCollection.subscript.getter();
            (*(v71 + 8))(v56, v58);
            (*(v75 + 8))(v19, v76);
LABEL_31:
            v66 = type metadata accessor for Playlist.Folder.Item();
            return (*(*(v66 - 8) + 56))(v57, 0, 1, v66);
          }

          goto LABEL_36;
        }

        goto LABEL_34;
      }

      __break(1u);
    }

    else
    {
      sub_10047AAB4(v1 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context, v22, type metadata accessor for PlaylistPicker.Mode);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v41 = &off_10109B3F0;
      }

      else
      {
        v41 = &off_10109B3C8;
      }

      sub_10047AB30(v22, type metadata accessor for PlaylistPicker.Mode);
      v42 = sub_1003FCC44(2, v41);
      v44 = v43;

      if ((v44 & 1) != 0 || IndexPath.section.getter() < v42)
      {
        goto LABEL_23;
      }

      IndexPath.item.getter();
      result = IndexPath.section.getter();
      if (!__OFSUB__(result, v42))
      {
        v45 = v74;
        IndexPath.init(item:section:)();
        v46 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
        swift_beginAccess();
        sub_10047AAB4(v2 + v46, v11, type metadata accessor for PlaylistPicker.ViewController.Playlists);
        v47 = *(v9 + 20);
        v49 = v77;
        v48 = v78;
        if ((*(v77 + 48))(&v11[v47], 1, v78))
        {
          (*(v75 + 8))(v45, v76);
          v36 = v11;
          goto LABEL_22;
        }

        v59 = v73;
        (*(v49 + 16))(v73, &v11[v47], v48);
        sub_10047AB30(v11, type metadata accessor for PlaylistPicker.ViewController.Playlists);
        v60 = MusicLibrarySectionedResponse.sections.getter();
        (*(v49 + 8))(v59, v48);
        result = IndexPath.section.getter();
        if ((result & 0x8000000000000000) == 0)
        {
          if (result < *(v60 + 16))
          {
            v61 = v67;
            v62 = v68;
            v63 = v69;
            (*(v68 + 16))(v67, v60 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * result, v69);

            v64 = v70;
            MusicLibrarySection.items.getter();
            (*(v62 + 8))(v61, v63);
            IndexPath.item.getter();
            v57 = v79;
            v65 = v72;
            MusicItemCollection.subscript.getter();
            (*(v71 + 8))(v64, v65);
            (*(v75 + 8))(v45, v76);
            goto LABEL_31;
          }

LABEL_37:
          __break(1u);
          return result;
        }

        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v37 = type metadata accessor for Playlist.Folder.Item();
  v38 = *(*(v37 - 8) + 56);
  v39 = v37;
  v40 = v79;

  return v38(v40, 1, 1, v39);
}

void *sub_100473F98(uint64_t a1)
{
  v183 = a1;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v179 = v2;
  v180 = v3;
  __chkstk_darwin(v2);
  v182 = &v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v165 = &v131 - v6;
  v172 = type metadata accessor for Playlist();
  v7 = *(v172 - 8);
  __chkstk_darwin(v172);
  v171 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Playlist.Folder.Item();
  v133 = *(v9 - 8);
  __chkstk_darwin(v9);
  v166 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v173 = &v131 - v12;
  __chkstk_darwin(v13);
  v174 = &v131 - v14;
  v184 = sub_10010FC20(&unk_1011913B8);
  __chkstk_darwin(v184);
  v181 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v131 - v17;
  v186 = sub_10010FC20(&qword_1011828F0);
  v132 = *(v186 - 8);
  __chkstk_darwin(v186);
  v157 = &v131 - v19;
  v154 = sub_10010FC20(&qword_1011913C8);
  __chkstk_darwin(v154);
  v178 = &v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v175 = &v131 - v22;
  v23 = sub_10010FC20(&unk_1011913D0);
  __chkstk_darwin(v23 - 8);
  v153 = &v131 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v156 = &v131 - v26;
  __chkstk_darwin(v27);
  v142 = &v131 - v28;
  v155 = sub_10010FC20(&unk_10118CEC0);
  v158 = *(v155 - 8);
  __chkstk_darwin(v155);
  v148 = &v131 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v149 = &v131 - v31;
  v32 = sub_10010FC20(&unk_101182900);
  __chkstk_darwin(v32 - 8);
  v136 = &v131 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v131 - v35;
  v151 = sub_10010FC20(&qword_101193C80);
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v134 = &v131 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v135 = &v131 - v39;
  v40 = type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin(v40);
  v139 = &v131 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v44 = &v131 - v43;
  v140 = v1;
  v137 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context;
  sub_10047AAB4(v1 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context, &v131 - v43, type metadata accessor for PlaylistPicker.Mode);
  v138 = v40;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_10047AB30(v44, type metadata accessor for PlaylistPicker.Mode);
  v47 = &unk_10109B540;
  if (EnumCaseMultiPayload != 1)
  {
    v47 = &unk_10109B518;
  }

  v48 = *v47;
  v185 = v9;
  if (!v48)
  {
LABEL_12:

    v187 = _swiftEmptyArrayStorage;
    v54 = v151;
LABEL_42:
    v92 = v139;
    sub_10047AAB4(v140 + v137, v139, type metadata accessor for PlaylistPicker.Mode);
    v93 = swift_getEnumCaseMultiPayload();
    result = sub_10047AB30(v92, type metadata accessor for PlaylistPicker.Mode);
    v94 = &unk_10109B590;
    if (v93 != 1)
    {
      v94 = &unk_10109B568;
    }

    v95 = *v94;
    if (!*v94)
    {
LABEL_53:

      return v187;
    }

    v96 = 0;
    if (v93 == 1)
    {
      v97 = &unk_10109B5A0;
    }

    else
    {
      v97 = &unk_10109B578;
    }

    while (1)
    {
      if ((v95 & ~(v95 >> 63)) == v96)
      {
        goto LABEL_86;
      }

      v98 = v181;
      if (v96[v97])
      {
        if (v96[v97] != 2)
        {
          break;
        }
      }

      v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v99)
      {
        v98 = v181;
        goto LABEL_56;
      }

      if (v95 == ++v96)
      {
        goto LABEL_53;
      }
    }

LABEL_56:

    v100 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
    v101 = v140;
    swift_beginAccess();
    v102 = v136;
    sub_1000089F8(v101 + v100, v136, &unk_101182900);
    v103 = v150;
    if ((*(v150 + 48))(v102, 1, v54) == 1)
    {
      sub_1000095E8(v102, &unk_101182900);
      return v187;
    }

    (*(v103 + 32))(v134, v102, v54);
    result = MusicLibrarySectionedResponse.sections.getter();
    v172 = result[2];
    if (!v172)
    {
LABEL_81:

      (*(v103 + 8))(v134, v54);
      return v187;
    }

    v104 = 0;
    v171 = result + ((*(v158 + 80) + 32) & ~*(v158 + 80));
    v170 = (v158 + 16);
    v169 = (v158 + 8);
    v168 = (v132 + 32);
    v177 = (v133 + 16);
    v176 = (v133 + 32);
    v174 = (v180 + 32);
    v175 = v96;
    v167 = result;
    while (1)
    {
      if (v104 >= result[2])
      {
        goto LABEL_88;
      }

      v108 = v158;
      v109 = *(v158 + 72);
      v173 = v104;
      v110 = v148;
      v111 = v155;
      (*(v158 + 16))(v148, &v171[v109 * v104], v155);
      v112 = v153;
      MusicLibrarySection.items.getter();
      (*(v108 + 8))(v110, v111);
      v113 = v112;
      v114 = v156;
      sub_1000089F8(v113, v156, &unk_1011913D0);
      (*v168)(v157, v114, v186);
      sub_100020674(&unk_1011913E0, &qword_1011828F0);
      v115 = v178;
      dispatch thunk of Sequence.makeIterator()();
      v116 = *(sub_10010FC20(&unk_1011828E0) + 36);
      sub_100020674(&qword_10118C1D0, &qword_1011828F0);
      dispatch thunk of Collection.endIndex.getter();
      if (*&v115[v116] != v188)
      {
        break;
      }

      v105 = 0;
LABEL_61:
      v104 = (v173 + 1);
      v106 = *(v154 + 36);
      sub_1000095E8(v153, &unk_1011913D0);
      v107 = v178;
      *&v178[v106] = v105;
      sub_1000095E8(v107, &qword_1011913C8);
      v103 = v150;
      result = v167;
      if (v104 == v172)
      {
        goto LABEL_81;
      }
    }

    v117 = 0;
    while (1)
    {
      v119 = dispatch thunk of Collection.subscript.read();
      v120 = v166;
      (*v177)(v166);
      v119(&v188, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v121 = *(v184 + 48);
      *v98 = v117;
      result = (*v176)(&v98[v121], v120, v9);
      v105 = v117 + 1;
      if (__OFADD__(v117, 1))
      {
        goto LABEL_84;
      }

      v122 = Playlist.Folder.Item.id.getter();
      v124 = v123;
      if (v122 == Playlist.id.getter() && v124 == v125)
      {
        break;
      }

      v127 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v127)
      {
        goto LABEL_75;
      }

      v9 = v185;
LABEL_66:
      v98 = v181;
      sub_1000095E8(v181, &unk_1011913B8);
      v118 = v178;
      dispatch thunk of Collection.endIndex.getter();
      ++v117;
      if (*&v118[v116] == v188)
      {
        v54 = v151;
        goto LABEL_61;
      }
    }

LABEL_75:
    IndexPath.init(row:section:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v187 = sub_100499724(0, v187[2] + 1, 1, v187);
    }

    v129 = v187[2];
    v128 = v187[3];
    v9 = v185;
    if (v129 >= v128 >> 1)
    {
      v187 = sub_100499724(v128 > 1, v129 + 1, 1, v187);
    }

    v130 = v187;
    v187[2] = v129 + 1;
    (*(v180 + 32))(v130 + ((*(v180 + 80) + 32) & ~*(v180 + 80)) + *(v180 + 72) * v129, v182, v179);
    goto LABEL_66;
  }

  v187 = v7;
  v176 = v18;
  v49 = 0;
  if (EnumCaseMultiPayload == 1)
  {
    v50 = &unk_10109B550;
  }

  else
  {
    v50 = &unk_10109B528;
  }

  v51 = v142;
  while (1)
  {
    if ((v48 & ~(v48 >> 63)) == v49)
    {
      goto LABEL_85;
    }

    v52 = v50[v49];
    v164 = v49;
    if (v52 > 1)
    {
      break;
    }

    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v53)
    {
      goto LABEL_14;
    }

    v49 = v164 + 1;
    if (v48 == v164 + 1)
    {
      goto LABEL_12;
    }
  }

LABEL_14:

  v55 = v140 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
  swift_beginAccess();
  v56 = type metadata accessor for PlaylistPicker.ViewController.Playlists(0);
  sub_1000089F8(v55 + *(v56 + 20), v36, &unk_101182900);
  v57 = v150;
  v54 = v151;
  v58 = (*(v150 + 48))(v36, 1, v151);
  v59 = v187;
  if (v58 == 1)
  {
    sub_1000095E8(v36, &unk_101182900);
    v187 = _swiftEmptyArrayStorage;
    goto LABEL_42;
  }

  (*(v57 + 32))(v135, v36, v54);
  result = MusicLibrarySectionedResponse.sections.getter();
  v60 = v186;
  v147 = result[2];
  if (!v147)
  {

    v187 = _swiftEmptyArrayStorage;
LABEL_41:
    (*(v150 + 8))(v135, v54);
    goto LABEL_42;
  }

  v61 = 0;
  v146 = result + ((*(v158 + 80) + 32) & ~*(v158 + 80));
  v145 = v158 + 16;
  v144 = v158 + 8;
  v143 = (v132 + 32);
  v170 = (v133 + 16);
  v169 = (v133 + 32);
  v168 = (v133 + 88);
  LODWORD(v167) = enum case for Playlist.Folder.Item.playlist(_:);
  v163 = (v133 + 8);
  v162 = (v133 + 96);
  v161 = (v59 + 4);
  v160 = (v59 + 1);
  v187 = _swiftEmptyArrayStorage;
  v159 = v180 + 32;
  v62 = v175;
  v141 = result;
LABEL_20:
  if (v61 >= result[2])
  {
    goto LABEL_87;
  }

  v65 = v158;
  v66 = *(v158 + 72);
  v152 = v61;
  v67 = v149;
  v68 = v155;
  (*(v158 + 16))(v149, &v146[v66 * v61], v155);
  MusicLibrarySection.items.getter();
  (*(v65 + 8))(v67, v68);
  v69 = v156;
  sub_1000089F8(v51, v156, &unk_1011913D0);
  (*v143)(v157, v69, v60);
  sub_100020674(&unk_1011913E0, &qword_1011828F0);
  dispatch thunk of Sequence.makeIterator()();
  v70 = *(sub_10010FC20(&unk_1011828E0) + 36);
  v177 = sub_100020674(&qword_10118C1D0, &qword_1011828F0);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v62 + v70) == v188)
  {
    v63 = 0;
    goto LABEL_19;
  }

  v71 = 0;
  v72 = v176;
  while (1)
  {
    v73 = v71;
    v74 = v70;
    v75 = dispatch thunk of Collection.subscript.read();
    v76 = *v170;
    v77 = v174;
    v78 = v185;
    (*v170)(v174);
    v75(&v188, 0);
    v70 = v74;
    dispatch thunk of Collection.formIndex(after:)();
    v79 = *(v184 + 48);
    *v72 = v73;
    result = (*v169)(&v72[v79], v77, v78);
    v63 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      break;
    }

    v80 = v73;
    v81 = &v72[v79];
    v82 = v173;
    (v76)(v173, v81, v78);
    v83 = (*v168)(v82, v78);
    if (v83 == v167)
    {
      (*v162)(v82, v78);
      (*v161)(v171, v82, v172);
      v84 = Playlist.id.getter();
      v86 = v85;
      if (v84 == Playlist.id.getter() && v86 == v87)
      {

        v62 = v175;
        goto LABEL_31;
      }

      v88 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v62 = v175;
      if (v88)
      {
LABEL_31:
        IndexPath.init(row:section:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v187 = sub_100499724(0, v187[2] + 1, 1, v187);
        }

        v90 = v187[2];
        v89 = v187[3];
        if (v90 >= v89 >> 1)
        {
          v187 = sub_100499724(v89 > 1, v90 + 1, 1, v187);
        }

        (*v160)(v171, v172);
        v91 = v187;
        v187[2] = v90 + 1;
        (*(v180 + 32))(v91 + ((*(v180 + 80) + 32) & ~*(v180 + 80)) + *(v180 + 72) * v90, v165, v179);
      }

      else
      {
        (*v160)(v171, v172);
      }

      v60 = v186;
      goto LABEL_24;
    }

    (*v163)(v82, v78);
    v60 = v186;
    v62 = v175;
LABEL_24:
    v72 = v176;
    sub_1000095E8(v176, &unk_1011913B8);
    dispatch thunk of Collection.endIndex.getter();
    v71 = v80 + 1;
    if (*(v62 + v74) == v188)
    {
      v54 = v151;
      v9 = v185;
      v51 = v142;
LABEL_19:
      v61 = v152 + 1;
      v64 = *(v154 + 36);
      sub_1000095E8(v51, &unk_1011913D0);
      *(v62 + v64) = v63;
      sub_1000095E8(v62, &qword_1011913C8);
      result = v141;
      if (v61 == v147)
      {

        goto LABEL_41;
      }

      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

uint64_t sub_1004756F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x73746E65636572;
  if (v2 != 1)
  {
    v4 = 0x6C79616C506C6C61;
    v3 = 0xEC00000073747369;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7824750;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x73746E65636572;
  if (*a2 != 1)
  {
    v8 = 0x6C79616C506C6C61;
    v7 = 0xEC00000073747369;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7824750;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
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

Swift::Int sub_100475804()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1004758A8()
{
  String.hash(into:)();
}

Swift::Int sub_100475938()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1004759D8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10047A96C(*a1);
  *a2 = result;
  return result;
}

void sub_100475A08(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x73746E65636572;
  if (v2 != 1)
  {
    v5 = 0x6C79616C506C6C61;
    v4 = 0xEC00000073747369;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7824750;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100475A78(uint64_t a1)
{
  v2 = v1;
  v61 = a1;
  v3 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v3 - 8);
  v57 = &v51 - v4;
  v5 = type metadata accessor for Playlist();
  v58 = *(v5 - 8);
  __chkstk_darwin(v5);
  v56 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v6;
  __chkstk_darwin(v7);
  v59 = &v51 - v8;
  v9 = sub_10010FC20(&qword_1011831B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v51 - v10;
  v12 = type metadata accessor for Playlist.Folder.Item();
  v62 = *(v12 - 8);
  v63 = v12;
  __chkstk_darwin(v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v60 = &v51 - v16;
  v17 = type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin(v17);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10010FC20(&unk_1011841D0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v55 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v51 - v24;
  v64 = v2;
  sub_10047AAB4(v2 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context, v19, type metadata accessor for PlaylistPicker.Mode);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10047AB30(v19, type metadata accessor for PlaylistPicker.Mode);
  }

  v53 = v5;
  v52 = *(v21 + 32);
  v52(v25, v19, v20);
  sub_100020674(&qword_1011913B0, &unk_1011841D0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v27 = v21;
  if (dispatch thunk of Collection.distance(from:to:)() >= 1)
  {
    sub_10047361C(v11);
    v28 = v62;
    v29 = v63;
    if ((*(v62 + 48))(v11, 1, v63) == 1)
    {
      (*(v21 + 8))(v25, v20);
      return sub_1000095E8(v11, &qword_1011831B0);
    }

    v30 = v60;
    (*(v28 + 32))();
    (*(v28 + 16))(v14, v30, v29);
    if ((*(v28 + 88))(v14, v29) != enum case for Playlist.Folder.Item.playlist(_:))
    {
      v42 = *(v28 + 8);
      v42(v30, v29);
      (*(v21 + 8))(v25, v20);
      return (v42)(v14, v29);
    }

    (*(v28 + 96))(v14, v29);
    v31 = *(v58 + 32);
    v61 = v58 + 32;
    v51 = v31;
    v31(v59, v14, v53);
    v32 = Playlist.id.getter();
    v34 = v33;
    v35 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_playlistContainsDuplicatesCache;
    v36 = v64;
    swift_beginAccess();
    v37 = *(v36 + v35);
    if (*(v37 + 16) && (, v38 = sub_100019C10(v32, v34), v40 = v39, , (v40 & 1) != 0))
    {
      v41 = *(*(v37 + 56) + 16 * v38 + 8);

      if ((v41 & 1) == 0)
      {
        (*(v58 + 8))(v59, v53);
        (*(v62 + 8))(v60, v63);
        return (*(v21 + 8))(v25, v20);
      }
    }

    else
    {
    }

    v43 = type metadata accessor for TaskPriority();
    (*(*(v43 - 8) + 56))(v57, 1, 1, v43);
    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = v58;
    (*(v58 + 16))(v56, v59, v53);
    (*(v21 + 16))(v55, v25, v20);
    type metadata accessor for MainActor();

    v46 = static MainActor.shared.getter();
    v47 = (*(v45 + 80) + 40) & ~*(v45 + 80);
    v27 = v21;
    v48 = (v54 + *(v21 + 80) + v47) & ~*(v21 + 80);
    v49 = swift_allocObject();
    *(v49 + 2) = v46;
    *(v49 + 3) = &protocol witness table for MainActor;
    *(v49 + 4) = v44;
    v50 = v53;
    v51(&v49[v47], v56, v53);
    v52(&v49[v48], v55, v20);

    sub_1001F4CB8(0, 0, v57, &unk_100ECE448, v49);

    (*(v45 + 8))(v59, v50);
    (*(v62 + 8))(v60, v63);
  }

  return (*(v27 + 8))(v25, v20);
}

uint64_t sub_1004762A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  type metadata accessor for MainActor();
  v6[14] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[15] = v8;
  v6[16] = v7;

  return _swift_task_switch(sub_100476344, v8, v7);
}

uint64_t sub_100476344()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    type metadata accessor for MusicLibrary();
    v2 = static MusicLibrary.shared.getter();
    v0[18] = v2;
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_100476458;
    v4 = v0[13];

    return Playlist.numberOfDuplicateTracks(_:library:)(v4, v2);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100476458(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 160) = a1;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);

  return _swift_task_switch(sub_1004765A4, v4, v3);
}

uint64_t sub_1004765A4()
{
  v1 = v0[17];

  v2 = Playlist.id.getter();
  v4 = v3;
  v5 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_playlistContainsDuplicatesCache;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (*(v6 + 16) && (, v7 = sub_100019C10(v2, v4), v9 = v8, , (v9 & 1) != 0))
  {
    v10 = *(*(v6 + 56) + 16 * v7);

    v11 = 1;
  }

  else
  {

    v10 = 0;
    v11 = 0;
  }

  v12 = v0[20];
  v13 = Playlist.id.getter();
  v15 = v14;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v1 + v5);
  *(v1 + v5) = 0x8000000000000000;
  sub_1006C6668(v12, 0, v13, v15, isUniquelyReferenced_nonNull_native);

  *(v1 + v5) = v22;
  swift_endAccess();
  v17 = v0[17];
  if (!v11 || v12 != v10)
  {
    sub_100473F98(v0[12]);
    v18 = sub_100477A1C();
    type metadata accessor for IndexPath();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v18 reconfigureItemsAtIndexPaths:isa];
  }

  v20 = v0[1];

  return v20();
}

void sub_100476794(void (*a1)(char *, uint64_t, uint64_t), uint64_t a2, char a3)
{
  v57 = a2;
  v48 = a1;
  v4 = type metadata accessor for IndexPath();
  v55 = *(v4 - 8);
  __chkstk_darwin(v4);
  v56 = v5;
  v53 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Playlist();
  v49 = *(v6 - 8);
  v50 = v6;
  __chkstk_darwin(v6);
  v46 = v7;
  v47 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v51 = String.init(localized:table:bundle:locale:comment:)();
  v52 = v10;
  v11 = String._bridgeToObjectiveC()();

  v12 = String._bridgeToObjectiveC()();

  v13 = [objc_opt_self() alertControllerWithTitle:v11 message:v12 preferredStyle:1];

  v14 = &selRef__replacePlaceholderViewWithView_;
  v15 = v57;
  if (a3)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v43[2] = String.init(localized:table:bundle:locale:comment:)();
    v43[1] = v16;
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = v49;
    v19 = *(v49 + 16);
    v45 = v13;
    v20 = v47;
    v21 = v50;
    v19(v47, v48, v50);
    v22 = v55;
    v48 = *(v55 + 16);
    v23 = v53;
    v48(v53, v15, v4);
    v24 = *(v18 + 80);
    v44 = v4;
    v25 = (v24 + 24) & ~v24;
    v26 = (v46 + *(v22 + 80) + v25) & ~*(v22 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v17;
    v28 = v27 + v25;
    v4 = v44;
    v29 = v20;
    v13 = v45;
    (*(v18 + 32))(v28, v29, v21);
    v30 = v27 + v26;
    v31 = v57;
    (*(v22 + 32))(v30, v23, v4);

    v32 = String._bridgeToObjectiveC()();

    v62 = sub_10047AC28;
    v63 = v27;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_10027D328;
    v61 = &unk_1010AD690;
    v33 = _Block_copy(&aBlock);

    v34 = [objc_opt_self() actionWithTitle:v32 style:0 handler:v33];
    _Block_release(v33);

    v35 = v55;
    [v13 addAction:v34];

    v14 = &selRef__replacePlaceholderViewWithView_;
    v48(v23, v31, v4);
  }

  else
  {
    v35 = v55;
    v23 = v53;
    (*(v55 + 16))(v53, v57, v4);
  }

  v36 = (*(v35 + 80) + 24) & ~*(v35 + 80);
  v37 = swift_allocObject();
  v38 = v54;
  *(v37 + 16) = v54;
  (*(v35 + 32))(v37 + v36, v23, v4);
  v39 = v38;
  v40 = String._bridgeToObjectiveC()();

  v62 = sub_10047ABB4;
  v63 = v37;
  aBlock = _NSConcreteStackBlock;
  v59 = 1107296256;
  v60 = sub_10027D328;
  v61 = &unk_1010AD640;
  v41 = _Block_copy(&aBlock);

  v42 = [objc_opt_self() v14[28]];
  _Block_release(v41);

  [v13 addAction:v42];
  [v39 presentViewController:v13 animated:1 completion:0];
}

uint64_t sub_100476F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = *(result + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_addToPlaylistHandler);
    if (v9)
    {

      v9(v8, a3);
      sub_100020438(v9);
    }

    v10 = IndexPath.section.getter();
    v11 = sub_1004732C0(v10);
    v12 = type metadata accessor for Playlist();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v6, a3, v12);
    (*(v13 + 56))(v6, 0, 1, v12);
    sub_100477300(v11, v6);

    return sub_1000095E8(v6, &unk_1011814D0);
  }

  return result;
}

void sub_10047710C()
{
  v0 = sub_100477A1C();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v0 deselectItemAtIndexPath:isa animated:1];
}

void sub_100477184(uint64_t a1, uint64_t a2, char a3)
{
  v7 = [v3 view];
  if (v7)
  {
    v8 = v7;
    [v7 safeAreaInsets];

    UIEdgeInsets.vertical.getter();
    [v3 additionalSafeAreaInsets];
    UIEdgeInsets.vertical.getter();
    v9 = static HI.Modal.modalSize(modalType:sceneSize:canExceedSceneSize:verticalInsets:)(1u, a1, a2, a3 & 1, 0);
    v11 = v10;
    [v3 preferredContentSize];
    if (v9 != v13 || v11 != v12)
    {
      [v3 setPreferredContentSize:{v9, v11}];
      v15 = [v3 navigationController];
      if (v15)
      {
        v16 = v15;
        [v15 setPreferredContentSize:{v9, v11}];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100477300(char a1, uint64_t a2)
{
  v5 = sub_10010FC20(&unk_1011838F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v53 - v6;
  v8 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - v9;
  v11 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v14 - 8);
  v16 = &v53 - v15;
  v17 = type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin(v17);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10047AAB4(v2 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context, v19, type metadata accessor for PlaylistPicker.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_10047AB30(v19, type metadata accessor for PlaylistPicker.Mode);
  if (EnumCaseMultiPayload != 1)
  {
    if (a1)
    {
      v54 = 0xEF7473696C79616CLL;
      v53 = 0x507972617262696CLL;
      sub_1000089F8(a2, v16, &unk_1011814D0);
      v22 = type metadata accessor for Playlist();
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(v16, 1, v22) == 1)
      {
        sub_1000095E8(v16, &unk_1011814D0);
      }

      else
      {
        v27 = v2;
        v28 = Playlist.catalogID.getter();
        v30 = v29;
        (*(v23 + 8))(v16, v22);
        if (v30)
        {
          v53 = v28;
          v54 = v30;
        }

        v2 = v27;
      }

      if (a1 == 3)
      {
        v24 = 0;
        v25 = 17;
        v26 = 0xE000000000000000;
      }

      else
      {
        if (a1 == 2)
        {
          v24 = 0x6C79616C506C6C61;
        }

        else
        {
          v24 = 0x73746E65636572;
        }

        if (a1 == 2)
        {
          v26 = 0xEC00000073747369;
        }

        else
        {
          v26 = 0xE700000000000000;
        }

        v25 = 17;
      }
    }

    else
    {
      v24 = 0;
      v54 = 0xEB00000000747369;
      v53 = 0x6C79616C5077656ELL;
      v25 = 5;
      v26 = 0xE000000000000000;
    }

    v31 = type metadata accessor for URL();
    (*(*(v31 - 8) + 56))(v10, 1, 1, v31);
    sub_10010FC20(&qword_101190BE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBE260;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    *(inited + 48) = v24;
    *(inited + 56) = v26;
    *(inited + 64) = 0x49746E65746E6F63;
    *(inited + 72) = 0xE900000000000064;
    v33 = (v2 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_containerSource);
    v34 = *(v2 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_containerSource + 16);
    if (v34 == 1 || (v35 = *v33, v36 = v33[1], sub_10047ABA0(*v33, v36, v34), , sub_10047AB1C(v35, v36, v34), !v34))
    {

      v36 = 0;
      v34 = 0xE000000000000000;
    }

    *(inited + 80) = v36;
    *(inited + 88) = v34;
    *(inited + 96) = 1684957547;
    *(inited + 104) = 0xE400000000000000;
    v37 = v33[2];
    if (v37 == 1)
    {
      v38 = 0;
      v39 = 0xE000000000000000;
    }

    else
    {
      v41 = *v33;
      v40 = v33[1];

      sub_10047AB1C(v41, v40, v37);
      if (v41)
      {
        if (v41 == 1)
        {
          v39 = 0xE800000000000000;
          v38 = 0x7473696C79616C70;
        }

        else
        {
          v39 = 0xE400000000000000;
          v38 = 1735290739;
        }
      }

      else
      {
        v39 = 0xE500000000000000;
        v38 = 0x6D75626C61;
      }
    }

    *(inited + 112) = v38;
    *(inited + 120) = v39;
    v42 = sub_10010C578(inited);
    swift_setDeallocating();
    sub_10010FC20(&qword_101183AA0);
    swift_arrayDestroy();
    v43 = MetricsEvent.Page.playlistPicker.unsafeMutableAddressor();
    sub_10047AAB4(v43, v7, type metadata accessor for MetricsEvent.Page);
    v44 = type metadata accessor for MetricsEvent.Page(0);
    (*(*(v44 - 8) + 56))(v7, 0, 1, v44);
    MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)(v53, v54, v25, 44, v10, 0, 0, 12, v13, v42, 0, 0x300u, v7, 0);
    v45 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v46 = sub_10053771C();
    v48 = v47;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v49 = qword_101218AD0;
    v50 = GroupActivitiesManager.hasJoined.getter();
    v51 = GroupActivitiesManager.participantsCount.getter();
    v52 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    (*((swift_isaMask & *v45) + 0xB8))(v13, v46, v48, v50 & 1, v51, *(v49 + v52));

    return sub_10047AB30(v13, type metadata accessor for MetricsEvent.Click);
  }

  return result;
}

id sub_100477A1C()
{
  v1 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___collectionView;
  v2 = *(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___collectionView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___collectionView);
  }

  else
  {
    v4 = sub_100477ABC();
    v5 = [objc_allocWithZone(UICollectionView) initWithFrame:v4 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_100477ABC()
{
  v1 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___collectionViewLayout;
  v2 = *(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___collectionViewLayout);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___collectionViewLayout);
  }

  else
  {
    v4 = sub_100477B20();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100477B20()
{
  v0 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UICollectionLayoutListConfiguration();
  v4 = swift_allocBox();
  (*(v1 + 104))(v3, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v0);
  UICollectionLayoutListConfiguration.init(appearance:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionLayoutListConfiguration.itemSeparatorHandler.setter();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_10047AB98;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005A63A8;
  aBlock[3] = &unk_1010AD5F0;
  v8 = _Block_copy(aBlock);

  v9 = [v7 initWithSectionProvider:v8];
  _Block_release(v8);

  return v9;
}

uint64_t sub_100477D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a1;
  v42 = a2;
  v4 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v36[-v9];
  __chkstk_darwin(v11);
  v13 = &v36[-v12];
  v14 = type metadata accessor for UIListSeparatorConfiguration();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v19 = *(v15 + 16);
  if (!Strong)
  {
    return v19(a3, v42, v14);
  }

  v20 = Strong;
  v38 = v7;
  v39 = a3;
  v40 = v4;
  v21 = v42;
  v42 = v14;
  v19(v17, v21, v14);
  v22 = IndexPath.section.getter();
  v23 = sub_1004732C0(v22);
  if (!v23)
  {
    v37 = enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
    v24 = v5;
    v25 = *(v5 + 104);
    v26 = v40;
    v25(v13);
    UIListSeparatorConfiguration.topSeparatorVisibility.setter();
    (v25)(v13, v37, v26);
    v5 = v24;
    v23 = UIListSeparatorConfiguration.bottomSeparatorVisibility.setter();
  }

  v27 = sub_100477A1C(v23);
  v28 = IndexPath.section.getter();
  v29 = sub_10047A378(v28);

  v30 = IndexPath.item.getter();
  v31 = *(v5 + 104);
  v32 = &enum case for UIListSeparatorConfiguration.Visibility.automatic(_:);
  if (!v30)
  {
    v32 = &enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
  }

  v33 = v40;
  v31(v10, *v32, v40);
  UIListSeparatorConfiguration.topSeparatorVisibility.setter();
  result = IndexPath.item.getter();
  if (__OFSUB__(v29, 1))
  {
    __break(1u);
  }

  else
  {
    v35 = &enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
    if (result != v29 - 1)
    {
      v35 = &enum case for UIListSeparatorConfiguration.Visibility.automatic(_:);
    }

    v31(v38, *v35, v33);
    UIListSeparatorConfiguration.bottomSeparatorVisibility.setter();

    return (*(v15 + 32))(v39, v17, v42);
  }

  return result;
}

void *sub_1004780B4(uint64_t a1)
{
  v2 = type metadata accessor for UICollectionLayoutListConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = swift_projectBox();
  v11 = &enum case for UICollectionLayoutListConfiguration.HeaderMode.none(_:);
  if (a1)
  {
    v11 = &enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:);
  }

  (*(v7 + 104))(v9, *v11, v6);
  swift_beginAccess();
  UICollectionLayoutListConfiguration.headerMode.setter();
  UICollectionLayoutListConfiguration.headerTopPadding.setter();
  swift_endAccess();
  sub_100009F78(0, &qword_101191398);
  swift_beginAccess();
  (*(v3 + 16))(v5, v10, v2);
  v12 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  (*(v3 + 8))(v5, v2);
  v13 = [v12 boundarySupplementaryItems];
  sub_100009F78(0, &unk_1011913A0);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v16 = 0;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = sub_1007E9BB0(v16, v14);
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v17 = *(v14 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      [v17 setPinToVisibleBounds:0];

      ++v16;
      if (v19 == i)
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

  [v12 contentInsets];
  [v12 setContentInsets:0.0];
  [v12 contentInsets];
  [v12 setContentInsets:?];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v22 = [Strong traitCollection];
    v23 = [v22 userInterfaceIdiom];

    if (v23 == 6)
    {
      if (qword_10117F788 != -1)
      {
        swift_once();
      }

      [v12 contentInsets];
      [v12 setContentInsets:?];
      [v12 contentInsets];
      [v12 setContentInsets:?];
    }
  }

  return v12;
}

double sub_1004784EC()
{
  result = *HI.HoverOutset.text.unsafeMutableAddressor();
  qword_101191080 = *&result;
  return result;
}

id sub_100478540()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaylistPicker.ViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004787A0()
{
  type metadata accessor for PlaylistPicker.Context(319);
  if (v0 <= 0x3F)
  {
    sub_10005BAFC();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PlaylistPicker.ViewController.Playlists(319);
      if (v2 <= 0x3F)
      {
        sub_10003920C(319, &qword_101191140, &qword_101191148);
        if (v3 <= 0x3F)
        {
          sub_10003920C(319, &qword_10118CCD0, &qword_10118CCD8);
          if (v4 <= 0x3F)
          {
            sub_10003920C(319, &qword_10118CCE0, &qword_10118CCE8);
            if (v5 <= 0x3F)
            {
              sub_10003920C(319, &qword_101191150, &unk_101191158);
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

void sub_100478AD0()
{
  sub_10003920C(319, qword_1011911D0, &qword_101193C80);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_100478C0C()
{
  result = qword_101191368;
  if (!qword_101191368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101191368);
  }

  return result;
}

uint64_t sub_100478C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78 = a1;
  v62 = type metadata accessor for Playlist.Entry.InternalItem();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_101191570);
  __chkstk_darwin(v6 - 8);
  v64 = &v58 - v7;
  v66 = type metadata accessor for Playlist.Entry();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v59 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_10118A530);
  __chkstk_darwin(v9 - 8);
  v69 = &v58 - v10;
  v70 = type metadata accessor for Track();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v63 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&unk_1011846B0);
  __chkstk_darwin(v12 - 8);
  v73 = &v58 - v13;
  v74 = type metadata accessor for MusicVideo();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v67 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10010FC20(&unk_101183960);
  __chkstk_darwin(v15 - 8);
  v76 = &v58 - v16;
  v77 = type metadata accessor for Song();
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v71 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v18 - 8);
  v20 = &v58 - v19;
  v21 = type metadata accessor for Playlist();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v25 - 8);
  v27 = &v58 - v26;
  v28 = type metadata accessor for Album();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80[3] = a2;
  v80[4] = a3;
  v32 = sub_10001C8B8(v80);
  (*(*(a2 - 8) + 32))(v32, v78, a2);
  sub_100008FE4(v80, v79);
  sub_10010FC20(&qword_10118E0B0);
  v33 = swift_dynamicCast();
  v34 = *(v29 + 56);
  if (v33)
  {
    v34(v27, 0, 1, v28);
    (*(v29 + 32))(v31, v27, v28);
    Album.catalogID.getter();
    (*(v29 + 8))(v31, v28);
    sub_10000959C(v80);
    return 0;
  }

  v34(v27, 1, 1, v28);
  sub_1000095E8(v27, &unk_101184730);
  sub_100008FE4(v80, v79);
  v36 = swift_dynamicCast();
  v37 = *(v22 + 56);
  if (v36)
  {
    v37(v20, 0, 1, v21);
    (*(v22 + 32))(v24, v20, v21);
    Playlist.catalogID.getter();
    (*(v22 + 8))(v24, v21);
    sub_10000959C(v80);
    return 1;
  }

  v37(v20, 1, 1, v21);
  sub_1000095E8(v20, &unk_1011814D0);
  sub_100008FE4(v80, v79);
  v38 = v76;
  v39 = v77;
  v40 = swift_dynamicCast();
  v41 = v75;
  v42 = *(v75 + 56);
  if (v40)
  {
    v42(v38, 0, 1, v39);
    v43 = v71;
    (*(v41 + 32))(v71, v38, v39);
    Song.catalogID.getter();
LABEL_11:
    (*(v41 + 8))(v43, v39);
    sub_10000959C(v80);
    return 2;
  }

  v42(v38, 1, 1, v39);
  sub_1000095E8(v38, &unk_101183960);
  sub_100008FE4(v80, v79);
  v44 = v73;
  v39 = v74;
  v45 = swift_dynamicCast();
  v41 = v72;
  v46 = *(v72 + 56);
  if (v45)
  {
    v46(v44, 0, 1, v39);
    v43 = v67;
    (*(v41 + 32))(v67, v44, v39);
    MusicVideo.catalogID.getter();
    goto LABEL_11;
  }

  v46(v44, 1, 1, v39);
  sub_1000095E8(v44, &unk_1011846B0);
  sub_100008FE4(v80, v79);
  v47 = v69;
  v39 = v70;
  v48 = swift_dynamicCast();
  v41 = v68;
  v49 = *(v68 + 56);
  if (v48)
  {
    v49(v47, 0, 1, v39);
    v43 = v63;
    (*(v41 + 32))(v63, v47, v39);
    Track.catalogID.getter();
    goto LABEL_11;
  }

  v49(v47, 1, 1, v39);
  sub_1000095E8(v47, &qword_10118A530);
  sub_100008FE4(v80, v79);
  v50 = v64;
  v51 = v66;
  if (swift_dynamicCast())
  {
    v52 = v65;
    (*(v65 + 56))(v50, 0, 1, v51);
    v53 = v59;
    (*(v52 + 32))(v59, v50, v51);
    v54 = v60;
    Playlist.Entry.internalItem.getter();
    v55 = v61;
    v56 = v62;
    v57 = (*(v61 + 88))(v54, v62);
    if (v57 == enum case for Playlist.Entry.InternalItem.musicVideo(_:) || v57 == enum case for Playlist.Entry.InternalItem.song(_:))
    {
      (*(v55 + 8))(v54, v56);
      Playlist.Entry.catalogID.getter();
      (*(v52 + 8))(v53, v51);
      sub_10000959C(v80);
    }

    else
    {
      (*(v52 + 8))(v53, v51);
      sub_10000959C(v80);
      (*(v55 + 8))(v54, v56);
    }

    return 0;
  }

  else
  {
    sub_10000959C(v80);
    (*(v65 + 56))(v50, 1, 1, v51);
    sub_1000095E8(v50, &qword_101191570);
    return 0;
  }
}

uint64_t sub_1004798BC(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v39 = a2;
  v2 = type metadata accessor for Playlist.Folder.Item();
  v37 = *(v2 - 8);
  __chkstk_darwin(v2);
  v35 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v34 = &v34 - v5;
  v6 = sub_10010FC20(&unk_1011841D0);
  v36 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  v12 = type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin(v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v34 - v16;
  v18 = sub_10010FC20(&unk_101191380);
  __chkstk_darwin(v18 - 8);
  v20 = &v34 - v19;
  v22 = *(v21 + 56);
  sub_10047AAB4(v38, &v34 - v19, type metadata accessor for PlaylistPicker.Mode);
  sub_10047AAB4(v39, &v20[v22], type metadata accessor for PlaylistPicker.Mode);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10047AAB4(v20, v14, type metadata accessor for PlaylistPicker.Mode);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = v37;
      v24 = *(v37 + 32);
      v25 = v34;
      v24(v34, v14, v2);
      v26 = &v20[v22];
      v27 = v35;
      v24(v35, v26, v2);
      v28 = static Playlist.Folder.Item.== infix(_:_:)();
      v29 = *(v23 + 8);
      v29(v27, v2);
      v29(v25, v2);
LABEL_9:
      sub_10047AB30(v20, type metadata accessor for PlaylistPicker.Mode);
      return v28 & 1;
    }

    (*(v37 + 8))(v14, v2);
  }

  else
  {
    sub_10047AAB4(v20, v17, type metadata accessor for PlaylistPicker.Mode);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v30 = v36;
      v31 = *(v36 + 32);
      v31(v11, v17, v6);
      v31(v8, &v20[v22], v6);
      type metadata accessor for Track();
      sub_10047A9B8(&unk_10118A620, &type metadata accessor for Track);
      v28 = static MusicItemCollection<>.== infix(_:_:)();
      v32 = *(v30 + 8);
      v32(v8, v6);
      v32(v11, v6);
      goto LABEL_9;
    }

    (*(v36 + 8))(v17, v6);
  }

  sub_1000095E8(v20, &unk_101191380);
  v28 = 0;
  return v28 & 1;
}

Swift::Int sub_100479D70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011914E8);
    v2 = static _SetStorage.allocate(capacity:)();
    v3 = 0;
    v4 = v2 + 56;
    while (1)
    {
      Hasher.init(_seed:)();
      NSFileManager.Failure.hash(into:)();
      result = Hasher._finalize()();
      v9 = -1 << *(v2 + 32);
      v10 = result & ~v9;
      v11 = v10 >> 6;
      v12 = *(v4 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if (((1 << v10) & v12) != 0)
      {
        v14 = ~v9;
        while (1)
        {
          result = static MPCPlayerCommandRequest.isAvailable(in:)();
          if (result)
          {
            break;
          }

          v10 = (v10 + 1) & v14;
          v11 = v10 >> 6;
          v12 = *(v4 + 8 * (v10 >> 6));
          v13 = 1 << v10;
          if (((1 << v10) & v12) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v4 + 8 * v11) = v13 | v12;
        v5 = *(v2 + 16);
        v6 = __OFADD__(v5, 1);
        v7 = v5 + 1;
        if (v6)
        {
          __break(1u);
          return result;
        }

        *(v2 + 16) = v7;
      }

      if (++v3 == v1)
      {
        return v2;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_100479E88(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109B158, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void sub_100479ED4()
{
  v1 = (v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_containerSource);
  *v1 = 0;
  v1[1] = 0;
  v1[2] = 1;
  v2 = (v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newPlaylistHandler);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_addToPlaylistHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newFolderHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_moveToFolderHandler);
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_folder;
  v7 = type metadata accessor for Playlist.Folder();
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  v8 = (v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_searchText);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_allowsAnimatedChanges) = 0;
  *(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_recentsResponseController) = 0;
  v9 = v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
  v10 = sub_10010FC20(&qword_101193C80);
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 1, 1, v10);
  v12 = type metadata accessor for PlaylistPicker.ViewController.Playlists(0);
  v11(v9 + *(v12 + 20), 1, 1, v10);
  *(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___contextBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___moveButton) = 0;
  *(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_shouldDisableNewFolderCell) = 0;
  v13 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_playlistContainsDuplicatesCache;
  *(v0 + v13) = sub_10010D1E8(_swiftEmptyArrayStorage);
  v14 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newCellRegistration;
  v15 = sub_10010FC20(&qword_101191148);
  (*(*(v15 - 8) + 56))(v0 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_playlistCellRegistration;
  v17 = sub_10010FC20(&qword_10118CCD8);
  (*(*(v17 - 8) + 56))(v0 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_folderCellRegistration;
  v19 = sub_10010FC20(&qword_10118CCE8);
  (*(*(v19 - 8) + 56))(v0 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_headerRegistration;
  v21 = sub_10010FC20(&unk_101191158);
  (*(*(v21 - 8) + 56))(v0 + v20, 1, 1, v21);
  *(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___collectionView) = 0;
  *(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___collectionViewLayout) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10047A230(unsigned __int8 a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  if (!a1)
  {
    return a1;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_10047A378(uint64_t a1)
{
  v3 = type metadata accessor for PlaylistPicker.ViewController.Playlists(0);
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_101182900);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_10010FC20(&qword_101193C80);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  v16 = sub_1004732C0(a1);
  if (!v16)
  {
    return 1;
  }

  if (v16 == 1)
  {
    v17 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
    swift_beginAccess();
    sub_1000089F8(v1 + v17, v8, &unk_101182900);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1000095E8(v8, &unk_101182900);
      return 0;
    }

    (*(v10 + 32))(v15, v8, v9);
    v21 = MusicLibrarySectionedResponse.totalItemCount.getter();
    (*(v10 + 8))(v15, v9);
    if (v21 >= 3)
    {
      return 3;
    }

    else
    {
      return v21;
    }
  }

  else
  {
    v19 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
    swift_beginAccess();
    sub_10047AAB4(v1 + v19, v5, type metadata accessor for PlaylistPicker.ViewController.Playlists);
    v20 = *(v3 + 20);
    if ((*(v10 + 48))(&v5[v20], 1, v9))
    {
      sub_10047AB30(v5, type metadata accessor for PlaylistPicker.ViewController.Playlists);
      return 0;
    }

    (*(v10 + 16))(v12, &v5[v20], v9);
    sub_10047AB30(v5, type metadata accessor for PlaylistPicker.ViewController.Playlists);
    v22 = MusicLibrarySectionedResponse.totalItemCount.getter();
    (*(v10 + 8))(v12, v9);
    return v22;
  }
}

uint64_t sub_10047A6E0(void *a1)
{
  v2 = type metadata accessor for UICellConfigurationState.DragState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for UICellConfigurationState();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v14 = [a1 cellForItemAtIndexPath:isa];

  if (v14)
  {
    v15 = [v14 _bridgedConfigurationState];
    static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

    UICellConfigurationState.cellDragState.getter();
    (*(v10 + 8))(v12, v9);
    (*(v3 + 104))(v5, enum case for UICellConfigurationState.DragState.dragging(_:), v2);
    sub_10047A9B8(&qword_101191460, &type metadata accessor for UICellConfigurationState.DragState);
    LOBYTE(v15) = dispatch thunk of static Equatable.== infix(_:_:)();

    v16 = *(v3 + 8);
    v16(v5, v2);
    v16(v8, v2);
    v17 = v15 ^ 1;
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

unint64_t sub_10047A96C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109B5A8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10047A9B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10047AA00()
{
  result = qword_101191370;
  if (!qword_101191370)
  {
    sub_1001109D0(&unk_1011841D0);
    sub_10047A9B8(&qword_10118A618, &type metadata accessor for Track);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101191370);
  }

  return result;
}

uint64_t sub_10047AAB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10047AB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_10047AB30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10047ABA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

void sub_10047ABB4()
{
  type metadata accessor for IndexPath();

  sub_10047710C();
}

uint64_t sub_10047AC28(uint64_t a1)
{
  v3 = *(type metadata accessor for Playlist() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  type metadata accessor for IndexPath();
  v5 = *(v1 + 16);

  return sub_100476F6C(a1, v5, v1 + v4);
}

uint64_t sub_10047AD00(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Playlist() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_10010FC20(&unk_1011841D0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10002F3F4;

  return sub_1004762A8(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_10047AE7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistPicker.ViewController.Playlists(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10047AEE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10047AF80()
{
  v1 = type metadata accessor for PlaylistPicker.ViewController.Playlists(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;
  v4 = sub_10010FC20(&qword_101193C80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v7 = *(v1 + 20);
  if (!v6(v3 + v7, 1, v4))
  {
    (*(v5 + 8))(v3 + v7, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_10047B11C(uint64_t (*a1)(uint64_t, unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PlaylistPicker.ViewController.Playlists(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v4, v1 + v3, v5);
}

uint64_t sub_10047B1D0()
{
  v1 = type metadata accessor for PlaylistPicker.ViewController.Playlists(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;
  v4 = sub_10010FC20(&qword_101193C80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v7 = *(v1 + 20);
  if (!v6(v3 + v7, 1, v4))
  {
    (*(v5 + 8))(v3 + v7, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_10047B360(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PlaylistPicker.ViewController.Playlists(0) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_10047B3E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10046F104(a1, v4, v5, v6);
}

unint64_t sub_10047B4C0()
{
  result = qword_101191488;
  if (!qword_101191488)
  {
    sub_1001109D0(&qword_101191480);
    sub_10024E8D0();
    sub_100020674(&unk_1011914C0, &unk_101184E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101191488);
  }

  return result;
}

uint64_t sub_10047B580(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Playlist() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10046A268(a1, a2, v2 + v6, v7);
}

unint64_t sub_10047B638()
{
  result = qword_101191518;
  if (!qword_101191518)
  {
    sub_1001109D0(&qword_101191510);
    sub_10047A9B8(&qword_1011914F8, _s12PlaylistCellVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101191518);
  }

  return result;
}

unint64_t sub_10047B704()
{
  result = qword_101191538;
  if (!qword_101191538)
  {
    sub_1001109D0(&qword_101191530);
    sub_10047B7C0();
    sub_10047A9B8(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101191538);
  }

  return result;
}

unint64_t sub_10047B7C0()
{
  result = qword_101191540;
  if (!qword_101191540)
  {
    sub_1001109D0(&qword_101191548);
    sub_10047A9B8(&unk_101191550, _s23NewPlaylistOrFolderCellVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101191540);
  }

  return result;
}

unint64_t sub_10047B8A0()
{
  result = qword_101191568;
  if (!qword_101191568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101191568);
  }

  return result;
}

uint64_t sub_10047B908(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      if (v6 > 3)
      {
        if (*v3 > 5u)
        {
          if (v6 == 6)
          {
            v7 = 0xD000000000000010;
          }

          else
          {
            v7 = 0x7473696C79616C70;
          }

          if (v6 == 6)
          {
            v8 = 0x8000000100E3C6C0;
          }

          else
          {
            v8 = 0xEC00000065707954;
          }
        }

        else if (v6 == 4)
        {
          v8 = 0xE500000000000000;
          v7 = 0x656C746974;
        }

        else
        {
          v7 = 0x79616C507473616CLL;
          v8 = 0xEE00657461446465;
        }
      }

      else if (*v3 > 1u)
      {
        if (v6 == 2)
        {
          v7 = 0x44657361656C6572;
          v8 = 0xEB00000000657461;
        }

        else
        {
          v8 = 0xE400000000000000;
          v7 = 1918985593;
        }
      }

      else
      {
        if (*v3)
        {
          v7 = 0xD000000000000010;
        }

        else
        {
          v7 = 0x614E747369747261;
        }

        if (*v3)
        {
          v8 = 0x8000000100E3C680;
        }

        else
        {
          v8 = 0xEA0000000000656DLL;
        }
      }

      v9 = *v4;
      if (v9 > 3)
      {
        if (*v4 > 5u)
        {
          if (v9 == 6)
          {
            v11 = 0x8000000100E3C6C0;
            if (v7 != 0xD000000000000010)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v11 = 0xEC00000065707954;
            if (v7 != 0x7473696C79616C70)
            {
LABEL_5:
              v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v5 & 1) == 0)
              {
                return 0;
              }

              goto LABEL_6;
            }
          }
        }

        else if (v9 == 4)
        {
          v11 = 0xE500000000000000;
          if (v7 != 0x656C746974)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v11 = 0xEE00657461446465;
          if (v7 != 0x79616C507473616CLL)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        if (*v4 > 1u)
        {
          if (v9 == 2)
          {
            v11 = 0xEB00000000657461;
            if (v7 != 0x44657361656C6572)
            {
              goto LABEL_5;
            }

            goto LABEL_47;
          }

          v11 = 0xE400000000000000;
          v10 = 1918985593;
        }

        else
        {
          v10 = 0x614E747369747261;
          v11 = 0xEA0000000000656DLL;
          if (*v4)
          {
            v11 = 0x8000000100E3C680;
            if (v7 != 0xD000000000000010)
            {
              goto LABEL_5;
            }

            goto LABEL_47;
          }
        }

        if (v7 != v10)
        {
          goto LABEL_5;
        }
      }

LABEL_47:
      if (v8 != v11)
      {
        goto LABEL_5;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_10047BC00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      if (*v3 == 1)
      {
        v6 = 0x657469726F766166;
      }

      else
      {
        v6 = 0x64616F6C6E776F64;
      }

      if (*v3)
      {
        v7 = v6;
      }

      else
      {
        v7 = 7105633;
      }

      if (*v3)
      {
        v8 = 0xE900000000000073;
      }

      else
      {
        v8 = 0xE300000000000000;
      }

      if (*v4 == 1)
      {
        v9 = 0x657469726F766166;
      }

      else
      {
        v9 = 0x64616F6C6E776F64;
      }

      if (*v4)
      {
        v10 = v9;
      }

      else
      {
        v10 = 7105633;
      }

      if (*v4)
      {
        v11 = 0xE900000000000073;
      }

      else
      {
        v11 = 0xE300000000000000;
      }

      if (v7 == v10 && v8 == v11)
      {
      }

      else
      {
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_10047BD40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistCurators.Curator(0) - 8;
  v5 = __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_100482098(v13, v10, type metadata accessor for PlaylistCurators.Curator);
        sub_100482098(v14, v7, type metadata accessor for PlaylistCurators.Curator);
        v16 = static PlaylistCurators.Curator.__derived_struct_equals(_:_:)(v10, v7);
        sub_100482100(v7, type metadata accessor for PlaylistCurators.Curator);
        sub_100482100(v10, type metadata accessor for PlaylistCurators.Curator);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_10047BEF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MotionArtworkMetadataService.QueueState.Item(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v29 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10010FC20(&qword_101191960);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v10 = &v26 - v9;
  v30 = sub_10010FC20(&qword_101191968);
  __chkstk_darwin(v30);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
    return 0;
  }

  if (!v13 || a1 == a2)
  {
    return 1;
  }

  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v31 = (v5 + 48);
  v17 = *(v8 + 72);
  v27 = v10;
  v28 = v17;
  while (1)
  {
    v20 = *(v30 + 48);
    sub_1000089F8(v15, v12, &qword_101191960);
    sub_1000089F8(v16, &v12[v20], &qword_101191960);
    v21 = *v31;
    if ((*v31)(v12, 1, v4) != 1)
    {
      break;
    }

    if (v21(&v12[v20], 1, v4) != 1)
    {
      goto LABEL_17;
    }

    sub_1000095E8(v12, &qword_101191960);
LABEL_7:
    v16 += v28;
    v15 += v28;
    if (!--v13)
    {
      return 1;
    }
  }

  v22 = v27;
  sub_1000089F8(v12, v27, &qword_101191960);
  if (v21(&v12[v20], 1, v4) == 1)
  {
    sub_100482100(v22, type metadata accessor for MotionArtworkMetadataService.QueueState.Item);
LABEL_17:
    v25 = &qword_101191968;
    goto LABEL_18;
  }

  v23 = v29;
  sub_100481D28(&v12[v20], v29, type metadata accessor for MotionArtworkMetadataService.QueueState.Item);
  if (*v22 == *v23 && v22[1] == v23[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v18 = v29;
    v19 = static Album.== infix(_:_:)();
    sub_100482100(v18, type metadata accessor for MotionArtworkMetadataService.QueueState.Item);
    sub_100482100(v22, type metadata accessor for MotionArtworkMetadataService.QueueState.Item);
    sub_1000095E8(v12, &qword_101191960);
    if ((v19 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_7;
  }

  sub_100482100(v29, type metadata accessor for MotionArtworkMetadataService.QueueState.Item);
  sub_100482100(v22, type metadata accessor for MotionArtworkMetadataService.QueueState.Item);
  v25 = &qword_101191960;
LABEL_18:
  sub_1000095E8(v12, v25);
  return 0;
}

uint64_t sub_10047C398(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v31 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    v25 = 0;
    return v25 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v20 = *(v9 + 16);
  v19 = v9 + 16;
  v21 = (v19 - 8);
  v29 = *(v19 + 56);
  v30 = v20;
  while (1)
  {
    v22 = v30;
    result = (v30)(v14, v17, v8);
    if (!v15)
    {
      break;
    }

    v24 = v19;
    v22(v12, v18, v8);
    sub_100481DBC(v31, 255, v32);
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();
    v26 = *v21;
    (*v21)(v12, v8);
    v26(v14, v8);
    if (v25)
    {
      v18 += v29;
      v17 += v29;
      v27 = v15-- == 1;
      v19 = v24;
      if (!v27)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10047C594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetMusicItem();
  __chkstk_darwin(v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v47 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  while (1)
  {
    sub_100482098(v13, v10, type metadata accessor for WidgetMusicItem);
    sub_100482098(v14, v6, type metadata accessor for WidgetMusicItem);
    v16 = v4[9];
    v17 = *&v10[v16];
    v18 = *&v10[v16 + 8];
    v19 = &v6[v16];
    v20 = v17 == *v19 && v18 == *(v19 + 1);
    if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v21 = v4[10];
      v22 = &v10[v21];
      v23 = *&v10[v21 + 8];
      v24 = &v6[v21];
      v25 = *(v24 + 1);
      v26 = !v23 || v25 == 0;
      if (v26 || (*v22 == *v24 ? (v32 = v23 == v25) : (v32 = 0), !v32 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
      {
        v27 = v4[11];
        v28 = *&v10[v27];
        v29 = *&v10[v27 + 8];
        v30 = &v6[v27];
        v31 = v28 == *v30 && v29 == *(v30 + 1);
        if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }
      }
    }

    v33 = v4[12];
    v34 = &v10[v33];
    v35 = *&v10[v33 + 8];
    v36 = &v6[v33];
    v37 = *(v36 + 1);
    if (v35)
    {
      if (v37)
      {
        v38 = *v34 == *v36 && v35 == v37;
        if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_5;
        }
      }
    }

    else if (!v37)
    {
      goto LABEL_5;
    }

    v39 = v4[13];
    v40 = &v10[v39];
    v41 = *&v10[v39 + 8];
    v42 = &v6[v39];
    v43 = *(v42 + 1);
    v44 = v43 == 0;
    if (v41)
    {
      if (!v43)
      {
        break;
      }

      if (*v40 == *v42 && v41 == v43)
      {
LABEL_5:
        sub_100482100(v6, type metadata accessor for WidgetMusicItem);
        sub_100482100(v10, type metadata accessor for WidgetMusicItem);
        goto LABEL_6;
      }

      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    sub_100482100(v6, type metadata accessor for WidgetMusicItem);
    sub_100482100(v10, type metadata accessor for WidgetMusicItem);
    if ((v44 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    v14 += v15;
    v13 += v15;
    if (!--v11)
    {
      return 1;
    }
  }

  sub_100482100(v6, type metadata accessor for WidgetMusicItem);
  sub_100482100(v10, type metadata accessor for WidgetMusicItem);
  return 0;
}

void sub_10047C95C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(v4 - 1);
      v8 = *v4;

      v9 = v5;
      v15 = v6;

      v10 = v7;
      v14 = v8;

      v11 = [v9 identifiers];
      v12 = [v10 identifiers];
      v13 = [v11 intersectsSet:v12];

      if (!v13)
      {
        break;
      }

      v3 += 6;
      v4 += 6;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_10047CAF4(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v15 = 0;
    return v15 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v15 = 1;
    return v15 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v4 = type metadata accessor for GridView.Base.ViewModel();
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        sub_1007E99E0(v12 - 4, a1);
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        if (v11)
        {
LABEL_20:
          sub_1007E99E0(v12 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

LABEL_25:
      sub_100481DBC(&qword_101191970, 255, &type metadata accessor for GridView.Base.ViewModel);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v15)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v15 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10047CD0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = 0xD000000000000029;
      v7 = "nt";
      switch(*v3)
      {
        case 1:
          v6 = 0xD000000000000025;
          v7 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v6 = 0xD000000000000023;
          v7 = "LibraryView.Playlists";
          break;
        case 3:
          v6 = 0xD000000000000022;
          v7 = "LibraryView.Artists";
          break;
        case 4:
          v6 = 0xD000000000000021;
          v7 = "LibraryView.Albums";
          break;
        case 5:
          v6 = 0xD000000000000026;
          v7 = "LibraryView.Songs";
          break;
        case 6:
          v6 = 0xD000000000000027;
          v7 = "LibraryView.MadeForYou";
          break;
        case 7:
          v6 = 0xD000000000000022;
          v7 = "LibraryView.MusicVideos";
          break;
        case 8:
          v6 = 0xD000000000000028;
          v7 = "LibraryView.Genres";
          break;
        case 9:
          v6 = 0xD000000000000025;
          v7 = "LibraryView.Compilations";
          break;
        case 0xA:
          v6 = 0xD000000000000021;
          v7 = "LibraryView.Composers";
          break;
        case 0xB:
          v6 = 0xD000000000000026;
          v7 = "LibraryView.Shows";
          break;
        case 0xC:
          v6 = 0xD000000000000027;
          v7 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      v8 = v7 | 0x8000000000000000;
      v9 = 0xD000000000000029;
      v10 = "nt";
      switch(*v4)
      {
        case 1:
          v9 = 0xD000000000000025;
          v10 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v9 = 0xD000000000000023;
          v10 = "LibraryView.Playlists";
          break;
        case 3:
          v9 = 0xD000000000000022;
          v10 = "LibraryView.Artists";
          break;
        case 4:
          v9 = 0xD000000000000021;
          v10 = "LibraryView.Albums";
          break;
        case 5:
          v9 = 0xD000000000000026;
          v10 = "LibraryView.Songs";
          break;
        case 6:
          v9 = 0xD000000000000027;
          v10 = "LibraryView.MadeForYou";
          break;
        case 7:
          v9 = 0xD000000000000022;
          v10 = "LibraryView.MusicVideos";
          break;
        case 8:
          v9 = 0xD000000000000028;
          v10 = "LibraryView.Genres";
          break;
        case 9:
          v9 = 0xD000000000000025;
          v10 = "LibraryView.Compilations";
          break;
        case 0xA:
          v9 = 0xD000000000000021;
          v10 = "LibraryView.Composers";
          break;
        case 0xB:
          v9 = 0xD000000000000026;
          v10 = "LibraryView.Shows";
          break;
        case 0xC:
          v9 = 0xD000000000000027;
          v10 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      if (v6 == v9 && v8 == (v10 | 0x8000000000000000))
      {
      }

      else
      {
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_10047D074(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v15 = 0;
    return v15 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v15 = 1;
    return v15 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v4 = type metadata accessor for MusicLibrary();
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        sub_1007E976C(v12 - 4, a1);
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        if (v11)
        {
LABEL_20:
          sub_1007E976C(v12 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

LABEL_25:
      sub_100481DBC(&qword_10118CE20, 255, &type metadata accessor for MusicLibrary);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v15)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v15 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10047D28C(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      return 0;
    }

LABEL_5:
    if (!v5)
    {
      return 1;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
      return 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v4 = sub_1007E97F0(v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }

          v4 = *(v3 + 8 * v12);

          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_44;
            }

            goto LABEL_26;
          }
        }

        sub_1007E97F0(v12 - 4, a2);
LABEL_26:
        v15 = sub_10047E418();

        v4 = sub_10047E418();

        result = v15 == v4;
        if (v15 == v4)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return result;
      }
    }

    v16 = v3 + 32;
    v17 = (a2 + 32);
    v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v5 - 1;
    while (1)
    {
      if (!v18)
      {
        goto LABEL_41;
      }

      if (!v19)
      {
        break;
      }

      v16 += 8;
      v21 = *v17++;
      a2 = v21;
      v3 = sub_10047E418();
      v4 = v21;
      v22 = sub_10047E418();
      v24 = v20-- != 0;
      v25 = v3 == v22;
      result = v3 == v22;
      if (v25)
      {
        --v19;
        --v18;
        if (v24)
        {
          continue;
        }
      }

      return result;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_10047D4BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 80);
    for (i = (a2 + 80); ; i += 17)
    {
      v7 = *(v3 - 4);
      v6 = *(v3 - 3);
      v41 = *(v3 - 16);
      v8 = *v3;
      v28 = *(v3 - 1);
      v26 = v3[1];
      v45 = v3[2];
      v33 = v3[3];
      v43 = v3[4];
      v35 = v3[6];
      v24 = v3[7];
      v25 = v3[5];
      v37 = v3[8];
      v40 = v3[10];
      v10 = *(i - 4);
      v9 = *(i - 3);
      v11 = *(i - 16);
      v12 = *i;
      v27 = *(i - 1);
      v31 = v3[9];
      v32 = i[1];
      v44 = i[2];
      v46 = i[3];
      v42 = i[4];
      v34 = i[6];
      v29 = i[7];
      v30 = i[5];
      v36 = i[8];
      v38 = i[10];
      v39 = i[9];
      if ((*(v3 - 6) != *(i - 6) || *(v3 - 5) != *(i - 5)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      if (v7 == v10 && v6 == v9)
      {
        if (v41 != v11)
        {
          return 0;
        }
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        result = 0;
        if ((v13 & 1) == 0 || v41 != v11)
        {
          return result;
        }
      }

      if (v8)
      {
        v15 = v44;
        v14 = v45;
        if (!v12)
        {
          return 0;
        }

        if (v28 != v27 || v8 != v12)
        {
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v15 = v44;
          v14 = v45;
          if ((v16 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        v15 = v44;
        v14 = v45;
        if (v12)
        {
          return 0;
        }
      }

      if (v14)
      {
        v18 = v39;
        v17 = v40;
        v20 = v37;
        v19 = v38;
        v22 = v35;
        v21 = v36;
        v23 = v34;
        if (!v15 || (v26 != v32 || v14 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v18 = v39;
        v17 = v40;
        v20 = v37;
        v19 = v38;
        v22 = v35;
        v21 = v36;
        v23 = v34;
        if (v15)
        {
          return 0;
        }
      }

      if ((v33 != v46 || v43 != v42) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      if (v22)
      {
        if (!v23 || (v25 != v30 || v22 != v23) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v23)
      {
        return 0;
      }

      if (v20)
      {
        if (!v21 || (v24 != v29 || v20 != v21) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v21)
      {
        return 0;
      }

      if ((v31 != v18 || v17 != v19) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      v3 += 17;
      result = 1;
      if (!--v2)
      {
        return result;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10047D7CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryImport.ViewModel(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10010FC20(&qword_101191950);
  __chkstk_darwin(v49);
  v8 = &v42 - v7;
  v9 = type metadata accessor for SidebarActivityView.Activity();
  v10 = __chkstk_darwin(v9);
  v11 = __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v13 = __chkstk_darwin(&v42 - v12);
  v15 = &v42 - v14;
  v16 = __chkstk_darwin(v13);
  v21 = &v42 - v18;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    return 0;
  }

  if (!v22 || a1 == a2)
  {
    return 1;
  }

  v45 = v16;
  v46 = v20;
  v43 = v6;
  v44 = &v42 - v18;
  v23 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = *(v17 + 72);
  v47 = v19;
  v48 = v26;
  while (1)
  {
    sub_100482098(v24, v21, type metadata accessor for SidebarActivityView.Activity);
    sub_100482098(v25, v15, type metadata accessor for SidebarActivityView.Activity);
    v31 = *(v49 + 48);
    sub_100482098(v21, v8, type metadata accessor for SidebarActivityView.Activity);
    sub_100482098(v15, &v8[v31], type metadata accessor for SidebarActivityView.Activity);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      break;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v33 = v46;
      sub_100482098(v8, v46, type metadata accessor for SidebarActivityView.Activity);
      v28 = *v33;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
LABEL_17:

        goto LABEL_20;
      }
    }

    else
    {
      v27 = v47;
      sub_100482098(v8, v47, type metadata accessor for SidebarActivityView.Activity);
      v28 = *v27;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_17;
      }
    }

    v29 = *&v8[v31];
    sub_100009F78(0, &qword_101197A30);
    v30 = static NSObject.== infix(_:_:)();

    if ((v30 & 1) == 0)
    {
      sub_100482100(v8, type metadata accessor for SidebarActivityView.Activity);
      goto LABEL_21;
    }

    sub_100482100(v8, type metadata accessor for SidebarActivityView.Activity);
LABEL_8:
    sub_100482100(v15, type metadata accessor for SidebarActivityView.Activity);
    sub_100482100(v21, type metadata accessor for SidebarActivityView.Activity);
    v25 += v48;
    v24 += v48;
    if (!--v22)
    {
      return 1;
    }
  }

  v34 = v15;
  v35 = v9;
  v36 = v45;
  sub_100482098(v8, v45, type metadata accessor for SidebarActivityView.Activity);
  v37 = v35;
  if (!swift_getEnumCaseMultiPayload())
  {
    v38 = &v8[v31];
    v39 = v43;
    sub_100481D28(v38, v43, type metadata accessor for LibraryImport.ViewModel);
    v40 = sub_10054EB74(v36, v39);
    sub_100482100(v39, type metadata accessor for LibraryImport.ViewModel);
    sub_100482100(v36, type metadata accessor for LibraryImport.ViewModel);
    sub_100482100(v8, type metadata accessor for SidebarActivityView.Activity);
    v9 = v37;
    v15 = v34;
    v21 = v44;
    if ((v40 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_8;
  }

  sub_100482100(v36, type metadata accessor for LibraryImport.ViewModel);
  v15 = v34;
  v21 = v44;
LABEL_20:
  sub_1000095E8(v8, &qword_101191950);
LABEL_21:
  sub_100482100(v15, type metadata accessor for SidebarActivityView.Activity);
  sub_100482100(v21, type metadata accessor for SidebarActivityView.Activity);
  return 0;
}

void *sub_10047DCF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a1 + 32;
  type metadata accessor for ImpressionTracker();
  while (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v3 += 16;
    if (!--v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return 0;
}

uint64_t sub_10047DDD0(uint64_t a1)
{
  v2 = v1;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  type metadata accessor for ImpressionTracker();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    if (v5 != a1)
    {
      v7 = *(v5 + 48);
      if ((v7 & 0xC000000000000001) != 0)
      {

        v8 = __CocoaSet.contains(_:)();

        if (v8)
        {
          goto LABEL_6;
        }
      }

      else if (*(v7 + 16))
      {
        Hasher.init(_seed:)();
        v9 = sub_10047E418();
        Hasher._combine(_:)(v9);
        v10 = Hasher._finalize()();
        v11 = -1 << *(v7 + 32);
        v12 = v10 & ~v11;
        if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
        {
          v13 = ~v11;
          while (sub_10047E418() != *(v2 + 56))
          {
            v12 = (v12 + 1) & v13;
            if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          goto LABEL_6;
        }
      }

LABEL_14:
      v16 = *(v6 + 48);

      sub_1003B4580(v15, v2);

      v14 = *(v6 + 48);
      *(v6 + 48) = v16;
      sub_10047E058(v14);
      swift_unknownObjectRelease();
    }
  }

LABEL_6:

  return swift_unknownObjectRelease();
}

uint64_t sub_10047DFA0(uint64_t a1)
{

  v4 = sub_10047DCF8(v3);

  if (v4)
  {
    v6 = sub_10047DCF8(a1);
    if (v6)
    {
      v7 = sub_10047D28C(v6, v4);

      if ((v7 & 1) == 0)
      {
        v8 = sub_100670590(v4);

        v9 = *(v1 + 48);
        *(v1 + 48) = v8;
        sub_10047E058(v9);
      }
    }
  }

  return result;
}

uint64_t sub_10047E058(uint64_t result)
{
  v2 = v1;
  v3 = result;
  v4 = *(v1 + 48);
  v5 = v4 & 0xC000000000000001;
  if ((result & 0xC000000000000001) != 0)
  {
    if (result < 0)
    {
      v6 = result;
    }

    else
    {
      v6 = result & 0xFFFFFFFFFFFFFF8;
    }

    if (v5)
    {

      v7 = __CocoaSet.isEqual(to:)();
    }

    else
    {

      v7 = sub_100481C24(v6, v4);
    }

    v10 = v7;

    if (v10)
    {
      result = __CocoaSet.count.getter();
      goto LABEL_36;
    }

LABEL_37:
    v25 = *(v2 + 32);
    v26 = *(v25 + 16);
    if (v26)
    {

      v27 = (v25 + 40);
      do
      {
        v28 = *v27;
        ObjectType = swift_getObjectType();
        v30 = *(v28 + 32);
        swift_unknownObjectRetain();
        v31 = v30(ObjectType, v28);
        if (!v31 || (v32 = v31, swift_unknownObjectRelease(), v32 != v2))
        {
          if (swift_conformsToProtocol2())
          {
          }

          (*(v28 + 40))();
        }

        swift_unknownObjectRelease();
        v27 += 2;
        --v26;
      }

      while (v26);
    }

    v34 = sub_1003AE22C(v33);

    v35 = sub_10018DE70(v34);

    v36 = *(v2 + 32);
    *(v2 + 32) = v35;
    sub_10047DFA0(v36);
  }

  if (v5)
  {
    if (v4 < 0)
    {
      v8 = *(v1 + 48);
    }

    else
    {
      v8 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    v9 = sub_100481C24(v8, v3);

    if ((v9 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_35:
    result = *(v3 + 16);
LABEL_36:
    if (result == *(*(v2 + 32) + 16))
    {
      return result;
    }

    goto LABEL_37;
  }

  if (v4 == result)
  {
    goto LABEL_35;
  }

  if (*(result + 16) != *(v4 + 16))
  {
    goto LABEL_37;
  }

  v11 = 0;
  v12 = 1 << *(result + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(result + 56);
  v38 = (v12 + 63) >> 6;
  v15 = v4 + 56;
  if (v14)
  {
    do
    {
      v16 = __clz(__rbit64(v14));
      v37 = (v14 - 1) & v14;
LABEL_28:
      v19 = *(*(v3 + 48) + 8 * (v16 | (v11 << 6)));
      Hasher.init(_seed:)();
      v20 = sub_10047E418();
      Hasher._combine(_:)(v20);
      v21 = Hasher._finalize()();
      v22 = -1 << *(v4 + 32);
      v23 = v21 & ~v22;
      if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_37;
      }

      v24 = ~v22;
      while (1)
      {
        result = sub_10047E418();
        if (result == *(v19 + 56))
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      v14 = v37;
    }

    while (v37);
  }

  v17 = v11;
  while (1)
  {
    v11 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v11 >= v38)
    {
      goto LABEL_35;
    }

    v18 = *(v3 + 56 + 8 * v11);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v37 = (v18 - 1) & v18;
      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}