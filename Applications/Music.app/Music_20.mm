uint64_t sub_10025F94C(uint64_t a1, uint64_t *a2)
{
  v10 = a2;
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v9 - 8);
  __chkstk_darwin(v9);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v8 = sub_100027010();
  static DispatchQoS.userInteractive.getter();
  v11 = _swiftEmptyArrayStorage;
  sub_100029680(&qword_101187210, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10010FC20(&qword_101187218);
  sub_100029908(&qword_101187220, &qword_101187218);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *v10 = result;
  return result;
}

id sub_10025FBE0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10025FCD4()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101187050);
  sub_1000060E4(v0, qword_101187050);
  return static Logger.music(_:)();
}

char *sub_10025FDD4()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC5Music30CarPlayNowPlayingIndicatorView_isPlaying] = 0;
  v0[OBJC_IVAR____TtC5Music30CarPlayNowPlayingIndicatorView_isHighlighted] = 0;
  v2 = OBJC_IVAR____TtC5Music30CarPlayNowPlayingIndicatorView_waveform;
  if (qword_10117F898 != -1)
  {
    swift_once();
  }

  v3 = qword_101219020;
  v4 = objc_allocWithZone(type metadata accessor for WaveformPlayIndicator());
  *&v0[v2] = WaveformPlayIndicator.init(settings:)(v3);
  v26.receiver = v0;
  v26.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v26, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v6 = OBJC_IVAR____TtC5Music30CarPlayNowPlayingIndicatorView_waveform;
  v7 = *&v5[OBJC_IVAR____TtC5Music30CarPlayNowPlayingIndicatorView_waveform];
  v8 = v5;
  v9 = v7;
  WaveformPlayIndicator.mode.setter(1);

  v10 = *&v5[v6];
  v11 = OBJC_IVAR____TtC5Music30CarPlayNowPlayingIndicatorView_isHighlighted;
  swift_beginAccess();
  v12 = v8[v11];
  v13 = objc_opt_self();
  v14 = v10;
  v15 = &selRef__carSystemFocusLabelColor;
  if (!v12)
  {
    v15 = &selRef_tintColor;
  }

  v16 = [v13 *v15];
  v17 = [v16 colorWithAlphaComponent:0.2];
  v18 = [v16 colorWithAlphaComponent:0.2];
  v19 = [v16 colorWithAlphaComponent:0.2];
  UIScreen.Dimensions.size.getter(v20);
  WaveformPlayIndicator.colorPalette.setter(v21, v22, v23, v24);

  [v8 addSubview:*&v5[v6]];
  [v8 sizeToFit];

  return v8;
}

void sub_100260204(char a1)
{
  v3 = OBJC_IVAR____TtC5Music30CarPlayNowPlayingIndicatorView_isHighlighted;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = objc_opt_self();
  v5 = &selRef__carSystemFocusLabelColor;
  if ((a1 & 1) == 0)
  {
    v5 = &selRef_tintColor;
  }

  v6 = [v4 *v5];
  v7 = [v6 colorWithAlphaComponent:0.2];
  v8 = [v6 colorWithAlphaComponent:0.2];
  v9 = [v6 colorWithAlphaComponent:0.2];
  UIScreen.Dimensions.size.getter(v10);
  WaveformPlayIndicator.colorPalette.setter(v11, v12, v13, v14);
}

void (*sub_100260318(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC5Music30CarPlayNowPlayingIndicatorView_isHighlighted;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1002603A0;
}

void sub_1002603A0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[3] + v3[4]);
    v5 = objc_opt_self();
    v6 = &selRef__carSystemFocusLabelColor;
    if (!v4)
    {
      v6 = &selRef_tintColor;
    }

    v7 = [v5 *v6];
    v8 = [v7 colorWithAlphaComponent:0.2];
    v9 = [v7 colorWithAlphaComponent:0.2];
    v10 = [v7 colorWithAlphaComponent:0.2];
    UIScreen.Dimensions.size.getter(v11);
    WaveformPlayIndicator.colorPalette.setter(v12, v13, v14, v15);
  }

  free(v3);
}

uint64_t sub_1002605B0()
{
  v1 = OBJC_IVAR____TtC5Music30CarPlayNowPlayingIndicatorView_isHighlighted;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_1002605F8(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_100260318(v2);
  return sub_100260668;
}

void sub_100260668(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_100260800()
{
  swift_getKeyPath();
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1002608E8(uint64_t a1, uint64_t a2)
{
  v5 = (*(v2 + OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_viewModel) + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle);
  v6 = v5[1];
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

char *sub_100260A70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10010FC20(&qword_1011888C0);
  __chkstk_darwin(v5 - 8);
  v7 = v49 - v6;
  v8 = type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.Content(0);
  __chkstk_darwin(v8);
  v10 = (v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = &v3[OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_playAction];
  type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel(0);
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = swift_allocObject();
  if (qword_10117F408 != -1)
  {
    swift_once();
  }

  v13 = sub_10010FC20(&unk_101188920);
  v14 = sub_1000060E4(v13, qword_101187268);
  sub_1000089F8(v14, v12 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__artwork, &unk_101188920);
  if (qword_10117F410 != -1)
  {
    swift_once();
  }

  v15 = sub_10010FC20(&qword_101187768);
  v16 = sub_1000060E4(v15, qword_101187280);
  sub_1000089F8(v16, v12 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__artworkShape, &qword_101187768);
  v17 = (v12 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__title);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = (v12 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__titleAccessory);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v12 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle);
  *v19 = 0;
  v19[1] = 0;
  *(v12 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__isPlayable) = 0;
  ObservationRegistrar.init()();
  *&v3[OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_viewModel] = v12;
  v10[1] = 0;
  v10[2] = 0;
  *v10 = v12;
  v20 = v8[6];
  *(v10 + v20) = swift_getKeyPath();
  sub_10010FC20(&qword_1011877B8);
  swift_storeEnumTagMultiPayload();
  v21 = v10 + v8[7];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = v10 + v8[8];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  objc_allocWithZone(sub_10010FC20(&qword_101187840));

  *&v3[OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_hostingView] = _UIHostingView.init(rootView:)();
  if (a2)
  {
    v23 = String._bridgeToObjectiveC()();
  }

  else
  {
    v23 = 0;
  }

  v24 = type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView();
  v50.receiver = v3;
  v50.super_class = v24;
  v25 = objc_msgSendSuper2(&v50, "initWithReuseIdentifier:", v23);

  v26 = v25;
  static UIBackgroundConfiguration.clear()();
  v27 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v27 - 8) + 56))(v7, 0, 1, v27);
  UITableViewHeaderFooterView.backgroundConfiguration.setter();
  v28 = [v26 contentView];
  v29 = OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_hostingView;
  [v28 addSubview:*&v26[OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_hostingView]];

  [*&v26[v29] setAutoresizingMask:18];
  v30 = *&v26[v29];
  v31 = [v26 contentView];
  [v31 bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  [v30 setFrame:{v33, v35, v37, v39}];
  v40 = *&v26[v29];
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v40;

  v43 = dispatch thunk of _UIHostingView.rootView.modify();
  v45 = *(v44 + 8);
  *(v44 + 8) = sub_100267B80;
  *(v44 + 16) = v41;
  sub_100020438(v45);
  v43(v49, 0);

  __chkstk_darwin(v46);
  v49[-2] = v26;
  __chkstk_darwin(v47);
  v49[-2] = v26;
  withObservationTracking<A>(_:onChange:)();

  return v26;
}

void sub_100260FF4(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_playAction);
    v4 = Strong;
    sub_100030444(v3);

    if (v3)
    {
      v3(a1 & 1);
      sub_100020438(v3);
    }
  }
}

unint64_t sub_100261270@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RoundedCornerStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101187650);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel.Shape(0);
  __chkstk_darwin(v14 - 8);
  v16 = (&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002676BC(v2, v16);
  v17 = sub_10010FC20(&qword_1011875B8);
  if ((*(*(v17 - 8) + 48))(v16, 1, v17) == 1)
  {
    a1[3] = &type metadata for Circle;
    result = sub_100267720();
    a1[4] = result;
  }

  else
  {
    v19 = *v16;
    v20 = *(v16 + 8);
    sub_10003D17C(v16 + *(v17 + 48), v13, &unk_101187650);
    if (v20)
    {
      v19 = 5.0;
    }

    sub_1000089F8(v13, v10, &unk_101187650);
    v21 = *(v5 + 48);
    if (v21(v10, 1, v4) == 1)
    {
      if (qword_10117F418 != -1)
      {
        swift_once();
      }

      v22 = sub_1000060E4(v4, qword_101187298);
      (*(v5 + 16))(v7, v22, v4);
      if (v21(v10, 1, v4) != 1)
      {
        sub_1000095E8(v10, &unk_101187650);
      }
    }

    else
    {
      (*(v5 + 32))(v7, v10, v4);
    }

    v23 = type metadata accessor for RoundedRectangle();
    a1[3] = v23;
    a1[4] = sub_100267480(&qword_101187830, &type metadata accessor for RoundedRectangle);
    v24 = sub_10001C8B8(a1);
    *v24 = v19;
    v24[1] = v19;
    (*(v5 + 32))(v24 + *(v23 + 20), v7, v4);
    return sub_1000095E8(v13, &unk_101187650);
  }

  return result;
}

uint64_t sub_10026166C(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_1000089F8(a1, &v6 - v3, &unk_101188920);
  return sub_100261718(v4);
}

uint64_t sub_100261718(uint64_t a1)
{
  v3 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__artwork;
  swift_beginAccess();
  sub_1000089F8(v1 + v6, v5, &unk_101188920);
  v7 = sub_10026782C(v5, a1);
  sub_1000095E8(v5, &unk_101188920);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000089F8(a1, v5, &unk_101188920);
    swift_beginAccess();
    sub_100138A94(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_1000095E8(a1, &unk_101188920);
}

uint64_t sub_100261944@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a1;
  swift_beginAccess();
  return sub_1000089F8(v9 + v7, a3, a2);
}

uint64_t sub_100261A48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *a2;
  swift_beginAccess();
  return sub_1000089F8(v7 + v8, a4, a3);
}

uint64_t sub_100261B2C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10010FC20(&qword_101187768);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_1000089F8(a1, &v9[-v5], &qword_101187768);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000095E8(v6, &qword_101187768);
}

uint64_t sub_100261CAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a3;
  swift_beginAccess();
  sub_1002190E0(a2, a1 + v7, a4);
  return swift_endAccess();
}

uint64_t sub_100261D2C()
{
  swift_getKeyPath();
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__title);

  return v1;
}

uint64_t sub_100261DE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__title + 8);
  *a2 = *(v3 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__title);
  a2[1] = v4;
}

uint64_t sub_100261EA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100261EE0(v1, v2);
}

uint64_t sub_100261EE0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__title);
  v6 = *(v2 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__title) == a1 && *(v2 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__title + 8) == a2;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100262074()
{
  swift_getKeyPath();
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100262144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__titleAccessory);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_1002621A0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);

  return v4;
}

uint64_t sub_100262268@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = (v5 + *a2);
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
}

uint64_t sub_100262324(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100262364(v1, v2);
}

uint64_t sub_100262364(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle);
  v6 = *(v2 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1002624E0()
{
  swift_getKeyPath();
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__isPlayable);
}

uint64_t sub_100262588@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__isPlayable);
  return result;
}

uint64_t sub_100262660(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__isPlayable) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__isPlayable) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100262788()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101187768);
  __chkstk_darwin(v2);
  v4 = &v18 - v3;
  v5 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  if (qword_10117F408 != -1)
  {
    v17 = v6;
    swift_once();
    v6 = v17;
  }

  v9 = sub_1000060E4(v6, qword_101187268);
  sub_1000089F8(v9, v8, &unk_101188920);
  sub_100261718(v8);
  if (qword_10117F410 != -1)
  {
    swift_once();
  }

  v10 = sub_1000060E4(v2, qword_101187280);
  sub_1000089F8(v10, v4, &qword_101187768);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  *(&v18 - 2) = v1;
  *(&v18 - 1) = v4;
  v19 = v1;
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1000095E8(v4, &qword_101187768);
  sub_100261EE0(0, 0xE000000000000000);
  v12 = swift_getKeyPath();
  __chkstk_darwin(v12);
  *(&v18 - 3) = 0;
  *(&v18 - 2) = 0;
  *(&v18 - 4) = v1;
  v19 = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v14 = (v1 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle);
  if (*(v1 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle + 8))
  {
    v15 = swift_getKeyPath();
    __chkstk_darwin(v15);
    *(&v18 - 3) = 0;
    *(&v18 - 2) = 0;
    *(&v18 - 4) = v1;
    v19 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *v14 = 0;
    v14[1] = 0;
  }

  if (*(v1 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__isPlayable))
  {
    v16 = swift_getKeyPath();
    __chkstk_darwin(v16);
    *(&v18 - 2) = v1;
    *(&v18 - 8) = 0;
    v19 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__isPlayable) = 0;
  }

  return result;
}

uint64_t sub_100262C20(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v7 = sub_10010FC20(a2);
  sub_100006080(v7, a4);
  v8 = sub_1000060E4(v7, a4);
  v9 = a5(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v8, 1, 1, v9);
}

uint64_t sub_100262CC4()
{
  sub_1000095E8(v0 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__artwork, &unk_101188920);
  sub_1000095E8(v0 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__artworkShape, &qword_101187768);

  v1 = OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100262DDC()
{
  swift_getKeyPath();
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100262F7C(void *a1)
{
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  v6 = a1;
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  sub_1001F4CB8(0, 0, v4, &unk_100EC3020, v8);
}

uint64_t sub_1002630A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10026313C, v6, v5);
}

uint64_t sub_10026313C()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_hostingView;
  v3 = *&v1[OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_hostingView];
  v4 = [v1 contentView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  [v3 sizeThatFits:{v6, v8}];
  v10 = v9;
  v12 = v11;

  [*&v1[v2] frame];
  if (v10 != v14 || v12 != v13)
  {
    [*(v0 + 16) invalidateIntrinsicContentSize];
  }

  v16 = *(v0 + 16);
  *(swift_task_alloc() + 16) = v16;
  *(swift_task_alloc() + 16) = v16;
  withObservationTracking<A>(_:onChange:)();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1002632B8@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v2 = sub_10010FC20(&qword_101187738);
  __chkstk_darwin(v2 - 8);
  v4 = &v78 - v3;
  v80 = sub_10010FC20(&qword_101187740);
  __chkstk_darwin(v80);
  v82 = &v78 - v5;
  v81 = sub_10010FC20(&qword_101187748);
  __chkstk_darwin(v81);
  v84 = &v78 - v6;
  v83 = sub_10010FC20(&qword_101187750);
  __chkstk_darwin(v83);
  v87 = &v78 - v7;
  v85 = sub_10010FC20(&qword_101187758);
  __chkstk_darwin(v85);
  v89 = &v78 - v8;
  v88 = sub_10010FC20(&qword_101187760);
  __chkstk_darwin(v88);
  v86 = &v78 - v9;
  v10 = sub_10010FC20(&qword_101187768);
  __chkstk_darwin(v10 - 8);
  v12 = &v78 - v11;
  v13 = type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel.Shape(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v1;
  v17 = *v1;
  swift_getKeyPath();
  *&v92 = v17;
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__artworkShape;
  swift_beginAccess();
  sub_1000089F8(v17 + v18, v12, &qword_101187768);
  v19 = *(v14 + 48);
  if (v19(v12, 1, v13) == 1)
  {
    v20 = sub_10010FC20(&qword_1011875B8);
    v21 = *(v20 + 48);
    *v16 = 0;
    v16[8] = 1;
    v22 = type metadata accessor for RoundedCornerStyle();
    (*(*(v22 - 8) + 56))(&v16[v21], 1, 1, v22);
    (*(*(v20 - 8) + 56))(v16, 0, 1, v20);
    if (v19(v12, 1, v13) != 1)
    {
      sub_1000095E8(v12, &qword_101187768);
    }
  }

  else
  {
    sub_100268288(v12, v16, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel.Shape);
  }

  sub_100261270(v91);
  sub_1002674C8(v16, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel.Shape);
  *v4 = static VerticalAlignment.center.getter();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v23 = sub_10010FC20(&qword_101187770);
  sub_100263A98(v79, v91, &v4[*(v23 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v24 = v82;
  sub_10003D17C(v4, v82, &qword_101187738);
  v25 = (v24 + *(v80 + 36));
  v26 = v97;
  v25[4] = v96;
  v25[5] = v26;
  v25[6] = v98;
  v27 = v93;
  *v25 = v92;
  v25[1] = v27;
  v28 = v95;
  v25[2] = v94;
  v25[3] = v28;
  v29 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = v24;
  v39 = v84;
  sub_10003D17C(v38, v84, &qword_101187740);
  v40 = v39 + *(v81 + 36);
  *v40 = v29;
  *(v40 + 8) = v31;
  *(v40 + 16) = v33;
  *(v40 + 24) = v35;
  *(v40 + 32) = v37;
  *(v40 + 40) = 0;
  v41 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v39;
  v51 = v87;
  sub_10003D17C(v50, v87, &qword_101187748);
  v52 = v51 + *(v83 + 36);
  *v52 = v41;
  *(v52 + 8) = v43;
  *(v52 + 16) = v45;
  *(v52 + 24) = v47;
  *(v52 + 32) = v49;
  *(v52 + 40) = 0;
  v53 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v51;
  v63 = v89;
  sub_10003D17C(v62, v89, &qword_101187750);
  v64 = v63 + *(v85 + 36);
  *v64 = v53;
  *(v64 + 8) = v55;
  *(v64 + 16) = v57;
  *(v64 + 24) = v59;
  *(v64 + 32) = v61;
  *(v64 + 40) = 0;
  v65 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v74 = v63;
  v75 = v86;
  sub_10003D17C(v74, v86, &qword_101187758);
  v76 = v75 + *(v88 + 36);
  *v76 = v65;
  *(v76 + 8) = v67;
  *(v76 + 16) = v69;
  *(v76 + 24) = v71;
  *(v76 + 32) = v73;
  *(v76 + 40) = 0;
  sub_10003D17C(v75, v90, &qword_101187760);
  return sub_10000959C(v91);
}

uint64_t sub_100263A98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a2;
  v87 = a3;
  v83 = type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.Content.PlayShuffleStyle(0);
  __chkstk_darwin(v83);
  v5 = (&v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = sub_10010FC20(&qword_101187778);
  __chkstk_darwin(v81);
  v82 = (&v68 - v6);
  v80 = sub_10010FC20(&qword_101187780);
  __chkstk_darwin(v80);
  v86 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v84 = &v68 - v9;
  v76 = sub_10010FC20(&qword_101187788);
  __chkstk_darwin(v76);
  v85 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v78 = (&v68 - v12);
  v13 = sub_10010FC20(&qword_101187790);
  v74 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v68 - v14;
  v16 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v16 - 8);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v68 - v20;
  v22 = type metadata accessor for Artwork();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v73 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10010FC20(&qword_101187798);
  __chkstk_darwin(v25 - 8);
  v79 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v88 = &v68 - v28;
  v77 = a1;
  v29 = *a1;
  swift_getKeyPath();
  *&v92 = v29;
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__artwork;
  swift_beginAccess();
  sub_1000089F8(v29 + v30, v21, &unk_101188920);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1000095E8(v21, &unk_101188920);
    v31 = 1;
    v32 = v88;
  }

  else
  {
    v72 = v13;
    v33 = v73;
    (*(v23 + 32))(v73, v21, v22);
    (*(v23 + 16))(v18, v33, v22);
    (*(v23 + 56))(v18, 0, 1, v22);
    ArtworkImage.init(_:)();
    v34 = &v15[*(sub_10010FC20(&unk_10118F340) + 36)];
    *v34 = 0x3FF0000000000000;
    *(v34 + 4) = 0;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v35 = &v15[*(sub_10010FC20(&qword_10118F330) + 36)];
    v36 = v93;
    *v35 = v92;
    *(v35 + 1) = v36;
    *(v35 + 2) = v94;
    v37 = static Edge.Set.all.getter();
    v71 = v22;
    v15[*(sub_10010FC20(&qword_1011877D8) + 36)] = v37;
    if (qword_10117F420 != -1)
    {
      swift_once();
    }

    v38 = qword_1011872B0;
    v39 = &v15[*(sub_10010FC20(&qword_1011877E0) + 36)];
    sub_100008FE4(v75, v39);
    v70 = static Alignment.center.getter();
    v69 = v40;
    v41 = &v15[*(sub_10010FC20(&qword_1011877E8) + 36)];
    sub_10000954C(v39, *(v39 + 24));
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_10001C8B8(v89);
    dispatch thunk of InsettableShape.inset(by:)();
    sub_100267528(v89, v41);
    *(v41 + 40) = 0;
    sub_100267584(v89);
    *(v41 + 48) = v38;
    *(v41 + 56) = 256;
    v42 = v69;
    *(v41 + 64) = v70;
    *(v41 + 72) = v42;
    *(v39 + 40) = 256;

    static Color.black.getter();
    v70 = Color.opacity(_:)();

    v69 = static Alignment.center.getter();
    v44 = v43;
    v13 = v72;
    v45 = &v15[*(v72 + 36)];
    sub_100008FE4(v75, v89);
    sub_10000954C(v89, AssociatedTypeWitness);
    *(v45 + 3) = swift_getAssociatedTypeWitness();
    *(v45 + 4) = swift_getAssociatedConformanceWitness();
    sub_10001C8B8(v45);
    dispatch thunk of InsettableShape.inset(by:)();
    (*(v23 + 8))(v73, v71);
    sub_100267584(v89);
    *(v45 + 5) = v70;
    *(v45 + 3) = xmmword_100EC2AD0;
    v46 = v69;
    *(v45 + 8) = 0x3FF0000000000000;
    *(v45 + 9) = v46;
    *(v45 + 10) = v44;
    v32 = v88;
    sub_10003D17C(v15, v88, &qword_101187790);
    v31 = 0;
  }

  (*(v74 + 56))(v32, v31, 1, v13);
  v47 = static HorizontalAlignment.leading.getter();
  v48 = v78;
  *v78 = v47;
  *(v48 + 8) = 0;
  *(v48 + 16) = 1;
  v49 = sub_10010FC20(&qword_1011877A0);
  v50 = v77;
  sub_10026471C(v77, v48 + *(v49 + 44));
  KeyPath = swift_getKeyPath();
  v52 = v48 + *(sub_10010FC20(&qword_1011877A8) + 36);
  *v52 = KeyPath;
  *(v52 + 8) = 1;
  *(v52 + 16) = 0;
  *(v48 + *(v76 + 36)) = 0x4000000000000000;
  v53 = static VerticalAlignment.center.getter();
  v54 = v82;
  *v82 = v53;
  *(v54 + 8) = 0;
  *(v54 + 16) = 1;
  v55 = sub_10010FC20(&qword_1011877B0);
  sub_1002650FC(v50, v54 + *(v55 + 44));
  *v5 = swift_getKeyPath();
  sub_10010FC20(&qword_1011877B8);
  swift_storeEnumTagMultiPayload();
  v56 = v83;
  v57 = v5 + *(v83 + 20);
  *v57 = swift_getKeyPath();
  v57[8] = 0;
  v58 = v5 + *(v56 + 24);
  *v58 = swift_getKeyPath();
  v58[8] = 0;
  v59 = *(v56 + 28);
  *(v5 + v59) = swift_getKeyPath();
  sub_10010FC20(&unk_10118F250);
  swift_storeEnumTagMultiPayload();
  sub_100020674(&qword_1011877C0, &qword_101187778);
  sub_100267480(&qword_1011877C8, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.Content.PlayShuffleStyle);
  v60 = v84;
  View.buttonStyle<A>(_:)();
  sub_1002674C8(v5, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.Content.PlayShuffleStyle);
  sub_1000095E8(v54, &qword_101187778);
  *(v60 + *(v80 + 36)) = 0x3FF0000000000000;
  v61 = v79;
  sub_1000089F8(v32, v79, &qword_101187798);
  v62 = v85;
  sub_1000089F8(v48, v85, &qword_101187788);
  v63 = v86;
  sub_1000089F8(v60, v86, &qword_101187780);
  v64 = v87;
  sub_1000089F8(v61, v87, &qword_101187798);
  v65 = sub_10010FC20(&qword_1011877D0);
  sub_1000089F8(v62, v64 + v65[12], &qword_101187788);
  v66 = v64 + v65[16];
  *v66 = 0;
  *(v66 + 8) = 1;
  sub_1000089F8(v63, v64 + v65[20], &qword_101187780);
  sub_1000095E8(v60, &qword_101187780);
  sub_1000095E8(v48, &qword_101187788);
  sub_1000095E8(v88, &qword_101187798);
  sub_1000095E8(v63, &qword_101187780);
  sub_1000095E8(v62, &qword_101187788);
  return sub_1000095E8(v61, &qword_101187798);
}

uint64_t sub_10026471C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v3 = sub_10010FC20(&qword_1011888F0);
  v82 = *(v3 - 8);
  v83 = v3;
  __chkstk_darwin(v3);
  v73 = v72 - v4;
  v5 = sub_10010FC20(&qword_101187808);
  __chkstk_darwin(v5 - 8);
  v85 = v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v84 = v72 - v8;
  v9 = type metadata accessor for Text.Suffix();
  v74 = *(v9 - 8);
  v75 = v9;
  __chkstk_darwin(v9);
  v11 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10010FC20(&qword_101187810);
  __chkstk_darwin(v76);
  v81 = v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v72 - v14;
  v16 = *a1;
  swift_getKeyPath();
  v17 = OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel___observationRegistrar;
  v87 = v16;
  v77 = sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel);
  v78 = v17;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v79 = v16;
  v18 = *(v16 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__title + 8);
  v87 = *(v16 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__title);
  v88 = v18;
  v19 = sub_100009838();

  v72[1] = v19;
  v20 = Text.init<A>(_:)();
  v22 = v21;
  v87 = v20;
  v88 = v21;
  LOBYTE(v18) = v23 & 1;
  v89 = v23 & 1;
  v90 = v24;
  v25 = sub_100264EE8(a1);
  v27 = v26;
  v29 = v28;
  static Text.Suffix.alwaysVisible(_:)();
  v30 = v29 & 1;
  v31 = v15;
  sub_10011895C(v25, v27, v30);

  View.textSuffix(_:)();
  (*(v74 + 8))(v11, v75);
  sub_10011895C(v20, v22, v18);

  if (qword_10117F428 != -1)
  {
    swift_once();
  }

  v32 = qword_1011872B8;
  KeyPath = swift_getKeyPath();
  v34 = &v15[*(sub_10010FC20(&qword_101187818) + 36)];
  *v34 = KeyPath;
  v34[1] = v32;
  v35 = qword_10117F430;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = dword_1011872C0;
  *&v15[*(sub_10010FC20(&qword_101187820) + 36)] = v36;
  v37 = &v15[*(v76 + 36)];
  v38 = *(sub_10010FC20(&qword_1011A13C0) + 28);
  v39 = enum case for Image.Scale.small(_:);
  v40 = type metadata accessor for Image.Scale();
  (*(*(v40 - 8) + 104))(v37 + v38, v39, v40);
  *v37 = swift_getKeyPath();
  swift_getKeyPath();
  v41 = v79;
  v87 = v79;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v42 = *(v41 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle + 8);
  v80 = v31;
  if (v42)
  {
    v87 = *(v41 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle);
    v88 = v42;

    v43 = Text.init<A>(_:)();
    v45 = v44;
    v47 = v46;
    if (qword_10117F438 != -1)
    {
      swift_once();
    }

    v48 = Text.font(_:)();
    v50 = v49;
    v52 = v51;
    sub_10011895C(v43, v45, v47 & 1);

    if (qword_10117F440 != -1)
    {
      swift_once();
    }

    LODWORD(v87) = dword_1011872D0;
    v53 = Text.foregroundStyle<A>(_:)();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    sub_10011895C(v48, v50, v52 & 1);

    v60 = v83;
    v61 = *(v83 + 36);
    v62 = swift_getKeyPath();
    v63 = v73;
    *&v73[v61] = v62;
    sub_10010FC20(&unk_10118F250);
    swift_storeEnumTagMultiPayload();
    *v63 = v53;
    *(v63 + 8) = v55;
    *(v63 + 16) = v57 & 1;
    *(v63 + 24) = v59;
    v64 = v84;
    sub_10003D17C(v63, v84, &qword_1011888F0);
    v65 = 0;
  }

  else
  {
    v65 = 1;
    v60 = v83;
    v64 = v84;
  }

  (*(v82 + 56))(v64, v65, 1, v60);
  v67 = v80;
  v66 = v81;
  sub_1000089F8(v80, v81, &qword_101187810);
  v68 = v85;
  sub_1000089F8(v64, v85, &qword_101187808);
  v69 = v86;
  sub_1000089F8(v66, v86, &qword_101187810);
  v70 = sub_10010FC20(&qword_101187828);
  sub_1000089F8(v68, v69 + *(v70 + 48), &qword_101187808);
  sub_1000095E8(v64, &qword_101187808);
  sub_1000095E8(v67, &qword_101187810);
  sub_1000095E8(v68, &qword_101187808);
  return sub_1000095E8(v66, &qword_101187810);
}

uint64_t sub_100264EE8(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__titleAccessory + 8);
  if (v2)
  {

    Image.init(systemName:)();
    v3 = Text.init(_:)();
    v5 = v4;
    v7 = v6;
    v8 = static Text.+ infix(_:_:)();
    v10 = v9;
    v12 = v11;
    sub_10011895C(v3, v5, v7 & 1);

    static Font.caption2.getter();
    v13 = Text.font(_:)();
    v15 = v14;
    v17 = v16;

    sub_10011895C(v8, v10, v12 & 1);

    static HierarchicalShapeStyle.secondary.getter();
    v2 = Text.foregroundStyle<A>(_:)();
    sub_10011895C(v13, v15, v17 & 1);
  }

  return v2;
}

uint64_t sub_1002650FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&qword_1011877F8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v48 - v6;
  v8 = sub_10010FC20(&qword_101186968);
  v61 = *(v8 - 8);
  __chkstk_darwin(v8);
  v60 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v59 = &v48 - v11;
  __chkstk_darwin(v12);
  v58 = &v48 - v13;
  __chkstk_darwin(v14);
  v62 = &v48 - v15;
  v16 = *a1;
  swift_getKeyPath();
  v63 = v16;
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v16 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__isPlayable) == 1 && a1[1])
  {
    v17 = a1[2];
    v18 = a1[1];

    v19 = LocalizedStringKey.init(stringLiteral:)();
    v21 = v20;
    v56 = a2;
    v23 = v22;
    v49 = v24;
    v25 = swift_allocObject();
    v52 = v18;
    v53 = v7;
    v50 = &v48;
    *(v25 + 16) = v18;
    v57 = v17;
    *(v25 + 24) = v17;
    __chkstk_darwin(v17);
    v55 = v4;
    *(&v48 - 6) = v19;
    *(&v48 - 5) = v21;
    *(&v48 - 32) = v23 & 1;
    *(&v48 - 3) = v49;
    *(&v48 - 2) = 0x6C69662E79616C70;
    *(&v48 - 1) = 0xE90000000000006CLL;

    v54 = sub_10010FC20(&qword_101186978);
    v51 = sub_100020674(&qword_101186980, &qword_101186978);
    Button.init(action:label:)();

    v26 = LocalizedStringKey.init(stringLiteral:)();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = swift_allocObject();
    *(v33 + 16) = v18;
    v34 = v57;
    *(v33 + 24) = v57;
    __chkstk_darwin(v34);
    *(&v48 - 6) = v26;
    *(&v48 - 5) = v28;
    v35 = v30 & 1;
    v4 = v55;
    *(&v48 - 32) = v35;
    *(&v48 - 3) = v32;
    *(&v48 - 2) = 0x656C6666756873;
    *(&v48 - 1) = 0xE700000000000000;

    v36 = v58;
    Button.init(action:label:)();

    v37 = v61;
    v38 = v62;
    v39 = *(v61 + 16);
    v40 = v59;
    v39(v59, v62, v8);
    v41 = v60;
    v39(v60, v36, v8);
    v54 = v5;
    v42 = v53;
    v39(v53, v40, v8);
    v43 = sub_10010FC20(&qword_101187800);
    v39((v42 + *(v43 + 48)), v41, v8);
    sub_100020438(v52);
    v44 = *(v37 + 8);
    v44(v36, v8);
    v44(v38, v8);
    v44(v41, v8);
    v44(v40, v8);
    v45 = v42;
    v5 = v54;
    a2 = v56;
    sub_10003D17C(v45, v56, &qword_1011877F8);
    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  return (*(v5 + 56))(a2, v46, 1, v4);
}

uint64_t sub_1002656E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v100 = a2;
  v97 = type metadata accessor for ColorScheme();
  v107 = *(v97 - 8);
  __chkstk_darwin(v97);
  v106 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for CPUIHorizontalSizeClass();
  v6 = *(v98 - 8);
  __chkstk_darwin(v98);
  v8 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v96 = &v83 - v10;
  v11 = type metadata accessor for IconOnlyLabelStyle();
  v89 = *(v11 - 8);
  __chkstk_darwin(v11);
  v86 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_10010FC20(&qword_101187918);
  __chkstk_darwin(v85);
  v14 = &v83 - v13;
  v91 = sub_10010FC20(&qword_101187920);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v88 = &v83 - v15;
  v87 = sub_10010FC20(&qword_101187928);
  __chkstk_darwin(v87);
  v93 = &v83 - v16;
  v92 = sub_10010FC20(&qword_101187930);
  __chkstk_darwin(v92);
  v95 = &v83 - v17;
  v94 = sub_10010FC20(&qword_101187938);
  __chkstk_darwin(v94);
  v102 = &v83 - v18;
  v101 = sub_10010FC20(&qword_101187940);
  __chkstk_darwin(v101);
  v104 = &v83 - v19;
  v103 = sub_10010FC20(&qword_101187948);
  __chkstk_darwin(v103);
  v105 = &v83 - v20;
  v21 = type metadata accessor for Capsule();
  __chkstk_darwin(v21 - 8);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for EnvironmentValues();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = a1;
  v28 = ButtonStyleConfiguration.isPressed.getter();
  v108 = v3;
  if (v28)
  {
    LOBYTE(v29) = 1;
    goto LABEL_10;
  }

  v83 = v25;
  v84 = v11;
  v30 = type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.Content.PlayShuffleStyle(0);
  v31 = v3 + *(v30 + 20);
  v32 = *v31;
  if (*(v31 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v33 = v6;
    v34 = v23;
    v35 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v23 = v34;
    v6 = v33;
    v3 = v108;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000D8F20(v32, 0);
    (*(v83 + 8))(v27, v24);
    if (v112)
    {
      goto LABEL_5;
    }

LABEL_7:
    v36 = v3 + *(v30 + 24);
    v29 = *v36;
    if (*(v36 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v37 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000D8F20(v29, 0);
      (*(v83 + 8))(v27, v24);
      LOBYTE(v29) = v112;
    }

    goto LABEL_9;
  }

  if ((v32 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  LOBYTE(v29) = 1;
LABEL_9:
  v11 = v84;
LABEL_10:
  v38 = enum case for RoundedCornerStyle.continuous(_:);
  v39 = type metadata accessor for RoundedCornerStyle();
  (*(*(v39 - 8) + 104))(v23, v38, v39);
  ButtonStyleConfiguration.label.getter();
  if (qword_10117F448 != -1)
  {
    swift_once();
  }

  v99 = v23;
  v40 = qword_1011872D8;
  KeyPath = swift_getKeyPath();
  v42 = &v14[*(sub_10010FC20(&qword_101187950) + 36)];
  *v42 = KeyPath;
  v42[1] = v40;
  v43 = qword_10117F458;

  if (v43 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Image.Scale();
  v45 = sub_1000060E4(v44, qword_1011872E8);
  v46 = swift_getKeyPath();
  v47 = &v14[*(v85 + 36)];
  v48 = sub_10010FC20(&qword_1011A13C0);
  (*(*(v44 - 8) + 16))(v47 + *(v48 + 28), v45, v44);
  *v47 = v46;
  v49 = v86;
  IconOnlyLabelStyle.init()();
  sub_1002680E8();
  sub_100267480(&qword_101187970, &type metadata accessor for IconOnlyLabelStyle);
  v50 = v88;
  View.labelStyle<A>(_:)();
  (*(v89 + 8))(v49, v11);
  sub_1000095E8(v14, &qword_101187918);
  if (v29)
  {
    v51 = v29;
    v52 = static Color.primary.getter();
    v53 = v106;
  }

  else
  {
    v53 = v106;
    if (qword_10117F450 != -1)
    {
      swift_once();
    }

    v51 = v29;
    v52 = qword_1011872E0;
  }

  v54 = v93;
  (*(v90 + 32))(v93, v50, v91);
  *(v54 + *(v87 + 36)) = v52;
  v55 = v96;
  sub_10056CCC4(v96);
  v56 = v8;
  v57 = v8;
  v58 = v98;
  (*(v6 + 104))(v56, enum case for CPUIHorizontalSizeClass.wide(_:), v98);
  static CPUIHorizontalSizeClass.== infix(_:_:)();
  v59 = *(v6 + 8);
  v59(v57, v58);
  v59(v55, v58);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v60 = v95;
  sub_10003D17C(v54, v95, &qword_101187928);
  v61 = (v60 + *(v92 + 36));
  v62 = v117;
  v61[4] = v116;
  v61[5] = v62;
  v61[6] = v118;
  v63 = v113;
  *v61 = v112;
  v61[1] = v63;
  v64 = v115;
  v61[2] = v114;
  v61[3] = v64;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v65 = v102;
  sub_10003D17C(v60, v102, &qword_101187930);
  v66 = (v65 + *(v94 + 36));
  v67 = v120;
  *v66 = v119;
  v66[1] = v67;
  v66[2] = v121;
  type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.Content.PlayShuffleStyle(0);
  sub_10056CEEC(v53);
  if (v51)
  {
    if (qword_10117F450 != -1)
    {
      swift_once();
    }

    v111 = &protocol witness table for Color;
    v110 = &type metadata for Color;
    v109[0] = qword_1011872E0;
  }

  else
  {
    sub_100266D08(v53, v109);
  }

  (*(v107 + 8))(v53, v97);
  v68 = sub_10000954C(v109, v110);
  v69 = __chkstk_darwin(v68);
  (*(v71 + 16))(&v83 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0), v69);
  v72 = AnyShapeStyle.init<A>(_:)();
  v73 = static Edge.Set.all.getter();
  v74 = v104;
  sub_10003D17C(v65, v104, &qword_101187938);
  v75 = v74 + *(v101 + 36);
  *v75 = v72;
  *(v75 + 8) = v73;
  sub_10000959C(v109);
  v76 = static Animation.spring(response:dampingFraction:blendDuration:)();
  v77 = v105;
  sub_10003D17C(v74, v105, &qword_101187940);
  v78 = v77 + *(v103 + 36);
  *v78 = v76;
  *(v78 + 8) = v51 & 1;
  v79 = sub_10010FC20(&qword_101187978);
  v80 = v100;
  v81 = v100 + *(v79 + 36);
  sub_100268288(v99, v81, &type metadata accessor for Capsule);
  *(v81 + *(sub_10010FC20(&qword_101187980) + 36)) = 256;
  return sub_10003D17C(v77, v80, &qword_101187948);
}

id sub_100266568()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100266648()
{
  sub_1002667CC(319, &qword_1011A4570, &type metadata accessor for Artwork, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1002667CC(319, &unk_1011873B0, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel.Shape, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObservationRegistrar();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1002667CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100266888()
{
  sub_1002668E0();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1002668E0()
{
  if (!qword_101187640)
  {
    sub_1001109D0(&qword_101187648);
    sub_1001109D0(&unk_101187650);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_101187640);
    }
  }
}

void sub_1002669B4()
{
  type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_100266B58(319, &qword_1011A11C0, &unk_10118F700, "dM\n", &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1002667CC(319, &qword_1011876E8, &type metadata accessor for CPUIHorizontalSizeClass, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_100266B08();
        if (v3 <= 0x3F)
        {
          sub_100266B58(319, &qword_1011876F0, &unk_1011876F8, &unk_100EC2BC8, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100266B08()
{
  if (!qword_10118F2D0[0])
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, qword_10118F2D0);
    }
  }
}

void sub_100266B58(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_100266C20()
{
  static Color.white.getter();
  v0 = Color.opacity(_:)();

  qword_1011872B0 = v0;
  return result;
}

uint64_t sub_100266C64()
{
  static Font.callout.getter();
  static Font.Weight.medium.getter();
  v0 = Font.weight(_:)();

  qword_1011872B8 = v0;
  return result;
}

uint64_t sub_100266CA8()
{
  result = static HierarchicalShapeStyle.primary.getter();
  dword_1011872C0 = result;
  return result;
}

uint64_t sub_100266CC8()
{
  result = static Font.caption.getter();
  qword_1011872C8 = result;
  return result;
}

uint64_t sub_100266CE8()
{
  result = static HierarchicalShapeStyle.secondary.getter();
  dword_1011872D0 = result;
  return result;
}

uint64_t sub_100266D08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for BlendMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ColorScheme();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == enum case for ColorScheme.light(_:))
  {
    static Color.black.getter();
    v14 = Color.opacity(_:)();

    (*(v5 + 104))(v7, enum case for BlendMode.plusDarker(_:), v4);
    v15 = sub_10010FC20(&qword_101187988);
    a2[3] = v15;
    a2[4] = sub_100020674(&qword_101187990, &qword_101187988);
    v16 = sub_10001C8B8(a2);
    (*(v5 + 16))(v16 + *(v15 + 36), v7, v4);
    *v16 = v14;
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v18 = (v5 + 104);
    v19 = (v5 + 16);
    v20 = (v5 + 8);
    if (v13 == enum case for ColorScheme.dark(_:))
    {
      static Color.white.getter();
      v21 = Color.opacity(_:)();

      (*v18)(v7, enum case for BlendMode.plusLighter(_:), v4);
      v22 = sub_10010FC20(&qword_101187988);
      a2[3] = v22;
      a2[4] = sub_100020674(&qword_101187990, &qword_101187988);
      v23 = sub_10001C8B8(a2);
      (*v19)(v23 + *(v22 + 36), v7, v4);
      *v23 = v21;
      return (*v20)(v7, v4);
    }

    else
    {
      static Color.black.getter();
      v27 = Color.opacity(_:)();

      (*v18)(v7, enum case for BlendMode.plusDarker(_:), v4);
      v24 = sub_10010FC20(&qword_101187988);
      a2[3] = v24;
      a2[4] = sub_100020674(&qword_101187990, &qword_101187988);
      v25 = sub_10001C8B8(a2);
      (*v19)(v25 + *(v24 + 36), v7, v4);
      *v25 = v27;
      (*v20)(v7, v4);
      return (*(v9 + 8))(v12, v8);
    }
  }
}

uint64_t sub_100267160()
{
  result = static Font.callout.getter();
  qword_1011872D8 = result;
  return result;
}

uint64_t sub_100267180()
{
  result = static Color.accentColor.getter();
  qword_1011872E0 = result;
  return result;
}

uint64_t sub_1002671C8(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4)
{
  v6 = a2(0);
  sub_100006080(v6, a3);
  v7 = sub_1000060E4(v6, a3);
  v8 = *a4;
  v9 = *(*(v6 - 8) + 104);

  return v9(v7, v8, v6);
}

uint64_t sub_100267260()
{
  sub_1002675D8();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_10026729C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isFocused.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1002672CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return Label<>.init(_:systemImage:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1002673B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_100267480(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002674C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1002675D8()
{
  result = qword_1011877F0;
  if (!qword_1011877F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011877F0);
  }

  return result;
}

uint64_t sub_1002676BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel.Shape(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100267720()
{
  result = qword_101187838;
  if (!qword_101187838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101187838);
  }

  return result;
}

uint64_t sub_1002677E0()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__title);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_10026782C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_10010FC20(&unk_101191420);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1000089F8(a1, &v21 - v12, &unk_101188920);
  sub_1000089F8(a2, &v13[v15], &unk_101188920);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1000089F8(v13, v10, &unk_101188920);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_100267480(&unk_10118D3D0, &type metadata accessor for Artwork);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1000095E8(v13, &unk_101188920);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1000095E8(v13, &unk_101191420);
    v17 = 1;
    return v17 & 1;
  }

  sub_1000095E8(v13, &unk_101188920);
  v17 = 0;
  return v17 & 1;
}

uint64_t (*sub_100267B90())()
{
  v1 = *(v0 + 16);
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  return sub_100267BF4;
}

uint64_t sub_100267BFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_1002630A4(a1, v4, v5, v6);
}

void sub_100267CE8()
{
  sub_1002667CC(319, &qword_1011876E8, &type metadata accessor for CPUIHorizontalSizeClass, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100266B08();
    if (v1 <= 0x3F)
    {
      sub_1002667CC(319, &qword_1011878B0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100267DE4()
{
  result = qword_1011878E8;
  if (!qword_1011878E8)
  {
    sub_1001109D0(&qword_101187760);
    sub_100267E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011878E8);
  }

  return result;
}

unint64_t sub_100267E70()
{
  result = qword_1011878F0;
  if (!qword_1011878F0)
  {
    sub_1001109D0(&qword_101187758);
    sub_100267EFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011878F0);
  }

  return result;
}

unint64_t sub_100267EFC()
{
  result = qword_1011878F8;
  if (!qword_1011878F8)
  {
    sub_1001109D0(&qword_101187750);
    sub_100267F88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011878F8);
  }

  return result;
}

unint64_t sub_100267F88()
{
  result = qword_101187900;
  if (!qword_101187900)
  {
    sub_1001109D0(&qword_101187748);
    sub_100268014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101187900);
  }

  return result;
}

unint64_t sub_100268014()
{
  result = qword_101187908;
  if (!qword_101187908)
  {
    sub_1001109D0(&qword_101187740);
    sub_100020674(&qword_101187910, &qword_101187738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101187908);
  }

  return result;
}

unint64_t sub_1002680E8()
{
  result = qword_101187958;
  if (!qword_101187958)
  {
    sub_1001109D0(&qword_101187918);
    sub_1002681A0();
    sub_100020674(&qword_1011A1670, &qword_1011A13C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101187958);
  }

  return result;
}

unint64_t sub_1002681A0()
{
  result = qword_101187960;
  if (!qword_101187960)
  {
    sub_1001109D0(&qword_101187950);
    sub_100267480(&qword_101187968, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_100020674(&unk_1011914B0, &qword_101184D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101187960);
  }

  return result;
}

uint64_t sub_100268288(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1002682F0()
{
  result = qword_101187998;
  if (!qword_101187998)
  {
    sub_1001109D0(&qword_101187978);
    sub_1002683A8();
    sub_100020674(&qword_1011879F0, &qword_101187980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101187998);
  }

  return result;
}

unint64_t sub_1002683A8()
{
  result = qword_1011879A0;
  if (!qword_1011879A0)
  {
    sub_1001109D0(&qword_101187948);
    sub_100268460();
    sub_100020674(&qword_1011879E0, &qword_1011879E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011879A0);
  }

  return result;
}

unint64_t sub_100268460()
{
  result = qword_1011879A8;
  if (!qword_1011879A8)
  {
    sub_1001109D0(&qword_101187940);
    sub_100268518();
    sub_100020674(&qword_1011879D0, &qword_1011879D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011879A8);
  }

  return result;
}

unint64_t sub_100268518()
{
  result = qword_1011879B0;
  if (!qword_1011879B0)
  {
    sub_1001109D0(&qword_101187938);
    sub_1002685A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011879B0);
  }

  return result;
}

unint64_t sub_1002685A4()
{
  result = qword_1011879B8;
  if (!qword_1011879B8)
  {
    sub_1001109D0(&qword_101187930);
    sub_100268630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011879B8);
  }

  return result;
}

unint64_t sub_100268630()
{
  result = qword_1011879C0;
  if (!qword_1011879C0)
  {
    sub_1001109D0(&qword_101187928);
    sub_1001109D0(&qword_101187918);
    type metadata accessor for IconOnlyLabelStyle();
    sub_1002680E8();
    sub_100267480(&qword_101187970, &type metadata accessor for IconOnlyLabelStyle);
    swift_getOpaqueTypeConformance2();
    sub_100020674(&unk_101199EA0, &qword_1011879C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011879C0);
  }

  return result;
}

id sub_100268B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v76.receiver = v10;
  v76.super_class = swift_getObjectType();
  v18 = objc_msgSendSuper2(&v76, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v19 = [objc_opt_self() clearColor];
  [v18 setBackgroundColor:v19];

  v20 = sub_1002693B8(a1, a2, a3, a4, a5);

  if (a7)
  {

    v72 = sub_1002699B0(a6, a7, a8, a9, v18);
  }

  else
  {
    v72 = 0;
  }

  v21 = a6;
  v22 = [objc_allocWithZone(UILayoutGuide) init];
  v23 = v18;
  [v23 addLayoutGuide:v22];
  v24 = v20;
  [v23 addSubview:v24];

  v71 = v21;
  if (a10)
  {

    sub_10010FC20(&qword_101183990);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100EBC6C0;
    v26 = [v24 centerYAnchor];

    v27 = [v23 layoutMarginsGuide];
    v28 = [v27 centerYAnchor];

    v29 = [v26 constraintEqualToAnchor:v28];
    LODWORD(v30) = 1132068864;
    v31 = [v29 withPriority:v30];

    *(v25 + 32) = v31;
  }

  else
  {
    sub_10010FC20(&qword_101183990);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100EBC6D0;
    v33 = [v22 topAnchor];
    v34 = [v23 layoutMarginsGuide];
    v73 = v22;
    v35 = [v34 topAnchor];

    v36 = [v33 constraintEqualToAnchor:v35];
    *(v32 + 32) = v36;
    v37 = [v73 heightAnchor];
    v38 = [v23 layoutMarginsGuide];

    v39 = [v38 heightAnchor];
    v40 = [v37 constraintEqualToAnchor:v39 multiplier:0.15];

    *(v32 + 40) = v40;
    Array<A>.activate()(v32);

    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100EBC6D0;
    v41 = [v24 topAnchor];

    v42 = [v73 bottomAnchor];
    v43 = [v41 constraintLessThanOrEqualToAnchor:v42];

    LODWORD(v44) = 1132068864;
    v45 = [v43 withPriority:v44];

    *(v25 + 32) = v45;
    v46 = [v24 centerYAnchor];

    v47 = [v23 layoutMarginsGuide];
    v48 = [v47 centerYAnchor];

    v49 = [v46 constraintEqualToAnchor:v48];
    type metadata accessor for UILayoutPriority(0);
    sub_10026A1D0();
    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v50) = v75;
    v51 = [v49 withPriority:v50];

    v22 = v73;
    *(v25 + 40) = v51;
  }

  Array<A>.activate()(v25);

  sub_10010FC20(&qword_101183990);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_100EBDC10;
  v53 = [v24 topAnchor];

  v54 = v23;
  v55 = [v54 layoutMarginsGuide];
  v56 = [v55 topAnchor];

  v57 = [v53 constraintGreaterThanOrEqualToAnchor:v56 constant:16.0];
  *(v52 + 32) = v57;
  v58 = [v24 bottomAnchor];

  if (v72)
  {
    v59 = [v72 topAnchor];
  }

  else
  {
    v60 = [v54 layoutMarginsGuide];
    v59 = [v60 bottomAnchor];
  }

  v61 = [v58 constraintLessThanOrEqualToAnchor:v59 constant:-16.0];

  *(v52 + 40) = v61;
  v62 = [v24 leadingAnchor];

  v63 = [v54 layoutMarginsGuide];
  v64 = [v63 leadingAnchor];

  v65 = [v62 constraintEqualToAnchor:v64 constant:12.0];
  *(v52 + 48) = v65;
  v66 = [v24 trailingAnchor];

  v67 = [v54 layoutMarginsGuide];
  v68 = [v67 trailingAnchor];

  v69 = [v66 constraintEqualToAnchor:v68 constant:-12.0];
  *(v52 + 56) = v69;
  Array<A>.activate()(v52);

  sub_10026A228(v71, a7);

  return v54;
}

id sub_1002693B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2)
  {
    v7 = sub_100269600();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v7 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = sub_100269700();
  if ((a5 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v9 = sub_1002698B0();
LABEL_8:
  v21[4] = v7;
  v21[5] = v8;
  v21[6] = v9;
  v10 = v9;
  v11 = v7;
  result = v8;
  v13 = result;
  v14 = 0;
LABEL_9:
  if (v14 <= 3)
  {
    v15 = 3;
  }

  else
  {
    v15 = v14;
  }

  while (1)
  {
    if (v14 == 3)
    {
      sub_10010FC20(&qword_1011839B8);
      swift_arrayDestroy();
      v18 = objc_allocWithZone(UIStackView);
      sub_100009F78(0, &qword_101181620);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v20 = [v18 initWithArrangedSubviews:isa];

      [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v20 setAxis:1];
      [v20 setAlignment:3];
      [v20 setBaselineRelativeArrangement:1];
      [v20 setSpacing:28.0];

      return v20;
    }

    if (v15 == v14)
    {
      break;
    }

    v16 = v21[v14++ + 4];
    if (v16)
    {
      v17 = v16;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id sub_100269600()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setText:v1];

  if (qword_10117F460 != -1)
  {
    swift_once();
  }

  [v0 setFont:qword_1011879F8];
  [v0 setTextAlignment:1];
  [v0 setNumberOfLines:0];
  LODWORD(v2) = 1148846080;
  [v0 setContentHuggingPriority:1 forAxis:v2];
  return v0;
}

id sub_100269700()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setText:v1];

  if (qword_10117F468 != -1)
  {
    swift_once();
  }

  [v0 setFont:qword_101187A00];
  if (qword_10117F470 != -1)
  {
    swift_once();
  }

  [v0 setTextColor:qword_101187A08];
  [v0 setTextAlignment:1];
  [v0 setNumberOfLines:0];
  LODWORD(v2) = 1148846080;
  [v0 setContentHuggingPriority:1 forAxis:v2];
  type metadata accessor for UILayoutPriority(0);
  [v0 contentCompressionResistancePriorityForAxis:1];
  sub_10026A1D0();
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v3) = v5;
  [v0 setContentCompressionResistancePriority:1 forAxis:v3];
  return v0;
}

id sub_1002698B0()
{
  v0 = [objc_allocWithZone(UIActivityIndicatorView) init];
  [v0 setActivityIndicatorViewStyle:21];
  v1 = [objc_opt_self() labelColor];
  [v0 setColor:v1];

  [v0 startAnimating];
  type metadata accessor for UILayoutPriority(0);
  [v0 contentCompressionResistancePriorityForAxis:1];
  sub_10026A1D0();
  static _UIKitNumericRawRepresentable.+ infix(_:_:)();
  LODWORD(v2) = v4;
  [v0 setContentCompressionResistancePriority:1 forAxis:v2];
  return v0;
}

id sub_1002699B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = [objc_allocWithZone(CPUIRoundedLabelButton) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = v10;

  v12 = String._bridgeToObjectiveC()();
  [v11 setTitle:v12 forState:0];

  sub_10010FC20(&unk_101181640);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100EBC6B0;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  v14 = v11;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 setAccessibilityUserInputLabels:isa];

  v16 = [v14 titleLabel];
  if (v16)
  {
    if (qword_10117F478 != -1)
    {
      swift_once();
    }

    [v16 setFont:qword_101187A10];
  }

  sub_100009F78(0, &qword_1011839A0);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;

  v18 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v14 addAction:v18 forControlEvents:{64, 0, 0, 0, sub_10026A26C, v17}];

  [a5 addSubview:v14];
  sub_10010FC20(&qword_101183990);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100EBDC10;
  v20 = [v14 heightAnchor];
  v21 = [v20 constraintEqualToConstant:40.0];

  *(v19 + 32) = v21;
  v22 = [v14 bottomAnchor];
  v23 = [a5 layoutMarginsGuide];
  v24 = [v23 bottomAnchor];

  v25 = [v22 constraintEqualToAnchor:v24 constant:-16.0];
  *(v19 + 40) = v25;
  v26 = [v14 widthAnchor];
  v27 = [a5 layoutMarginsGuide];
  v28 = [v27 widthAnchor];

  v29 = [v26 constraintEqualToAnchor:v28 multiplier:0.765];
  *(v19 + 48) = v29;
  v30 = [v14 centerXAnchor];

  v31 = [a5 layoutMarginsGuide];
  v32 = [v31 centerXAnchor];

  v33 = [v30 constraintEqualToAnchor:v32];
  *(v19 + 56) = v33;
  Array<A>.activate()(v19);

  return v14;
}

void sub_100269E8C()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleCallout;
  v2 = [v0 preferredFontForTextStyle:v1];

  qword_101187A00 = v2;
}

id sub_100269EF8()
{
  result = [objc_opt_self() secondaryLabelColor];
  qword_101187A08 = result;
  return result;
}

void sub_100269F48(uint64_t a1, id *a2, uint64_t *a3)
{
  sub_100009F78(0, &qword_101183A00);
  v5 = *a2;
  v6 = static UIFont.emphasizedPreferredFont(forTextStyle:)();

  *a3 = v6;
}

id sub_10026A004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = a6;
  v13 = a3;
  v15 = a1;
  v16 = a9;
  if (a7)
  {
    v26 = a9;
    v18 = a1;
    v19 = a3;
    v20 = swift_allocObject();
    *(v20 + 16) = a7;
    *(v20 + 24) = a8;
    if (v11)
    {
      v21 = swift_allocObject();
      *(v21 + 16) = sub_100029B94;
      *(v21 + 24) = v20;
      sub_100030444(a7);

      v22 = sub_10026A1C8;
LABEL_9:
      v13 = v19;
      v15 = v18;
      v16 = v26;
      goto LABEL_10;
    }

    v23 = sub_100029B94;
LABEL_8:
    sub_100030444(a7);
    sub_100020438(v23);
    a5 = 0;
    v11 = 0;
    v22 = 0;
    v21 = 0;
    goto LABEL_9;
  }

  if (!a6)
  {
    v26 = a9;
    v18 = a1;
    v19 = a3;
    v23 = 0;
    goto LABEL_8;
  }

  sub_100030444(0);
  a5 = 0;
  v11 = 0;
  v22 = 0;
  v21 = 0;
LABEL_10:
  v24 = objc_allocWithZone(type metadata accessor for CarPlayInformationView());

  return sub_100268B8C(v15, a2, v13, a4, 0, a5, v11, v22, v21, v16 & 1);
}

unint64_t sub_10026A1D0()
{
  result = qword_101187A40;
  if (!qword_101187A40)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101187A40);
  }

  return result;
}

uint64_t sub_10026A228(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10026A298@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for Playlist.Entry.InternalItem();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  Playlist.Entry.internalItem.getter();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v7, &protocol witness table for Playlist.Entry.InternalItem, v6);
  v14 = *(v8 + 8);
  v14(v13, v7);
  Playlist.Entry.internalItem.getter();
  v15 = (*(v8 + 88))(v11, v7);
  if (v15 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    goto LABEL_2;
  }

  if (v15 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
LABEL_4:
    v14(v11, v7);
    v17 = sub_10010FC20(&unk_101182950);
    (*(*(v17 - 8) + 56))(v3, 5, 11, v17);
    goto LABEL_7;
  }

  if (v15 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
LABEL_6:
    v14(v11, v7);
    v18 = sub_10010FC20(&unk_101182950);
    (*(*(v18 - 8) + 56))(v3, 1, 11, v18);
    goto LABEL_7;
  }

  if (v15 != enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    if (v15 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
    {
      if (v15 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
      {
        v27 = sub_10010FC20(&unk_101182950);
        (*(*(v27 - 8) + 56))(v3, 1, 11, v27);
        v14(v11, v7);
        goto LABEL_7;
      }

      goto LABEL_4;
    }

    goto LABEL_6;
  }

LABEL_2:
  v14(v11, v7);
  v16 = sub_10010FC20(&unk_101182950);
  (*(*(v16 - 8) + 56))(v3, 6, 11, v16);
LABEL_7:
  v19 = sub_10026E2A4();
  v20 = Corner.small.unsafeMutableAddressor();
  v21 = *v20;
  v22 = v20[1];
  v23 = *(v20 + 16);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, 0, 1, 0, 1, 2, v30);
  v24 = v29;
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v6, v3, v19, 0, v30, v21, v22, v23, v29);
  v25 = type metadata accessor for ArtworkImage.Info(0);
  return (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
}

uint64_t sub_10026A6F8()
{
  v0 = type metadata accessor for Playlist.Kind();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_101187EF0);
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  v7 = sub_10010FC20(&qword_101187EF8);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v23 - v12;
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  v16 = Playlist.isChart.getter();
  if (v16 != 2 && (v16 & 1) != 0)
  {
    goto LABEL_6;
  }

  v24 = v3;
  Playlist.kind.getter();
  (*(v1 + 104))(v13, enum case for Playlist.Kind.replay(_:), v0);
  (*(v1 + 56))(v13, 0, 1, v0);
  v17 = *(v4 + 48);
  sub_1000089F8(v15, v6, &qword_101187EF8);
  sub_1000089F8(v13, &v6[v17], &qword_101187EF8);
  v18 = *(v1 + 48);
  if (v18(v6, 1, v0) != 1)
  {
    sub_1000089F8(v6, v10, &qword_101187EF8);
    if (v18(&v6[v17], 1, v0) != 1)
    {
      v20 = v24;
      (*(v1 + 32))(v24, &v6[v17], v0);
      sub_10026FEE8(&qword_101187F00, &type metadata accessor for Playlist.Kind);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v1 + 8);
      v21(v20, v0);
      sub_1000095E8(v13, &qword_101187EF8);
      sub_1000095E8(v15, &qword_101187EF8);
      v21(v10, v0);
      sub_1000095E8(v6, &qword_101187EF8);
      return v19 & 1;
    }

    sub_1000095E8(v13, &qword_101187EF8);
    sub_1000095E8(v15, &qword_101187EF8);
    (*(v1 + 8))(v10, v0);
    goto LABEL_9;
  }

  sub_1000095E8(v13, &qword_101187EF8);
  sub_1000095E8(v15, &qword_101187EF8);
  if (v18(&v6[v17], 1, v0) != 1)
  {
LABEL_9:
    sub_1000095E8(v6, &qword_101187EF0);
    v19 = 0;
    return v19 & 1;
  }

  sub_1000095E8(v6, &qword_101187EF8);
LABEL_6:
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_10026AB50(uint64_t a1, uint64_t a2)
{
  v154 = a2;
  v166 = a1;
  v3 = sub_10010FC20(&unk_10118D2F0);
  __chkstk_darwin(v3 - 8);
  v152 = &v117 - v4;
  v150 = type metadata accessor for Track();
  v162 = *(v150 - 8);
  v5 = __chkstk_darwin(v150);
  v151 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v160 = &v117 - v7;
  v8 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v8 - 8);
  v165 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v10 - 8);
  v164 = &v117 - v11;
  v148 = sub_10010FC20(&qword_101187EB0);
  v153 = *(v148 - 8);
  __chkstk_darwin(v148);
  v147 = &v117 - v12;
  v146 = sub_10010FC20(&qword_1011A4740);
  v13 = __chkstk_darwin(v146);
  v145 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v144 = &v117 - v15;
  v143 = sub_10010FC20(&qword_101187EB8);
  v141 = *(v143 - 8);
  __chkstk_darwin(v143);
  v138 = &v117 - v16;
  v135 = sub_10010FC20(&qword_101187EC0);
  v133 = *(v135 - 8);
  __chkstk_darwin(v135);
  v132 = &v117 - v17;
  v127 = sub_10010FC20(&qword_101186E00);
  v18 = __chkstk_darwin(v127);
  v125 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v124 = &v117 - v20;
  v123 = sub_10010FC20(&qword_101187EC8);
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v121 = &v117 - v21;
  v163 = sub_10010FC20(&qword_101187ED0);
  v161 = *(v163 - 8);
  __chkstk_darwin(v163);
  v120 = &v117 - v22;
  v130 = sub_10010FC20(&qword_1011928F0);
  v126 = *(v130 - 8);
  __chkstk_darwin(v130);
  v119 = &v117 - v23;
  v24 = sub_10010FC20(&qword_101187ED8);
  v158 = *(v24 - 8);
  v159 = v24;
  __chkstk_darwin(v24);
  v118 = &v117 - v25;
  v157 = sub_10010FC20(&qword_101180C90);
  v26 = __chkstk_darwin(v157);
  v156 = &v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v117 - v28;
  v149 = sub_10010FC20(&qword_101187EE0);
  v134 = *(v149 - 1);
  __chkstk_darwin(v149);
  v117 = &v117 - v30;
  v31 = sub_10010FC20(&qword_101187EE8);
  v155 = *(v31 - 8);
  __chkstk_darwin(v31);
  v33 = &v117 - v32;
  v34 = sub_10010FC20(&unk_10119F000);
  v35 = __chkstk_darwin(v34);
  v139 = &v117 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v39 = &v117 - v38;
  __chkstk_darwin(v37);
  v41 = &v117 - v40;
  *(v2 + 16) = 0;
  v42 = v2 + OBJC_IVAR____TtC5Music17PlaylistEntryData__artworkInfo;
  v43 = type metadata accessor for ArtworkImage.Info(0);
  v44 = *(v43 - 8);
  v45 = *(v44 + 56);
  v131 = v43;
  v129 = v45;
  v128 = v44 + 56;
  (v45)(v41, 1, 1);
  sub_1000089F8(v41, v39, &unk_10119F000);
  v140 = v34;
  Published.init(initialValue:)();
  v137 = v41;
  sub_1000095E8(v41, &unk_10119F000);
  v46 = *(v155 + 32);
  v136 = v42;
  v142 = v31;
  v46(v42, v33, v31);
  v47 = OBJC_IVAR____TtC5Music17PlaylistEntryData__leadingNumberState;
  v169 = 0;
  LOBYTE(v170) = -2;
  sub_10010FC20(&qword_101187AF0);
  v48 = v117;
  Published.init(initialValue:)();
  (*(v134 + 32))(v2 + v47, v48, v149);
  *(v2 + OBJC_IVAR____TtC5Music17PlaylistEntryData_showVideoIcon) = 0;
  v49 = v2 + OBJC_IVAR____TtC5Music17PlaylistEntryData__artist;
  v50 = type metadata accessor for AttributedString();
  (*(*(v50 - 8) + 56))(v29, 1, 1, v50);
  sub_1000089F8(v29, v156, &qword_101180C90);
  v51 = v118;
  Published.init(initialValue:)();
  v149 = v29;
  sub_1000095E8(v29, &qword_101180C90);
  v52 = *(v158 + 32);
  v134 = v49;
  v52(v49, v51, v159);
  v53 = OBJC_IVAR____TtC5Music17PlaylistEntryData__album;
  v169 = 0;
  v170 = 0;
  sub_10010FC20(&qword_1011815E0);
  v54 = v119;
  Published.init(initialValue:)();
  (*(v126 + 32))(v2 + v53, v54, v130);
  v55 = v2 + OBJC_IVAR____TtC5Music17PlaylistEntryData__duration;
  v169 = 0;
  LOBYTE(v170) = 1;
  v56 = sub_10010FC20(&qword_101187648);
  v57 = v120;
  v126 = v56;
  Published.init(initialValue:)();
  v58 = *(v161 + 32);
  v130 = v55;
  v58(v55, v57, v163);
  v59 = OBJC_IVAR____TtC5Music17PlaylistEntryData__previewID;
  v169 = 0;
  v170 = 0;
  sub_10010FC20(&unk_1011A49A0);
  v60 = v121;
  Published.init(initialValue:)();
  (*(v122 + 32))(v2 + v59, v60, v123);
  v61 = OBJC_IVAR____TtC5Music17PlaylistEntryData__socialContributor;
  v62 = type metadata accessor for SocialProfile();
  v63 = v124;
  (*(*(v62 - 8) + 56))(v124, 1, 1, v62);
  sub_1000089F8(v63, v125, &qword_101186E00);
  v64 = v132;
  Published.init(initialValue:)();
  sub_1000095E8(v63, &qword_101186E00);
  (*(v133 + 32))(v2 + v61, v64, v135);
  v65 = OBJC_IVAR____TtC5Music17PlaylistEntryData__contextMenuProvider;
  v169 = 0;
  v170 = 0;
  sub_10010FC20(&qword_101187B38);
  v66 = v138;
  Published.init(initialValue:)();
  (*(v141 + 32))(v2 + v65, v66, v143);
  v67 = OBJC_IVAR____TtC5Music17PlaylistEntryData__reactionsConfiguration;
  v68 = type metadata accessor for Tracklist.ReactionsConfiguration(0);
  v69 = v144;
  (*(*(v68 - 8) + 56))(v144, 1, 1, v68);
  sub_1000089F8(v69, v145, &qword_1011A4740);
  v70 = v147;
  Published.init(initialValue:)();
  sub_1000095E8(v69, &qword_1011A4740);
  v71 = *(v153 + 32);
  v153 = v2;
  v71(v2 + v67, v70, v148);
  v72 = v166;
  Track.artworkViewModel.getter(v164);
  v73 = v162;
  v74 = *(v162 + 16);
  v75 = v160;
  v76 = v72;
  v77 = v150;
  v74(v160, v76, v150);
  v78 = *(v73 + 88);
  v79 = v77;
  v80 = v78(v75, v77);
  v81 = enum case for Track.song(_:);
  if (v80 == enum case for Track.song(_:))
  {
    v82 = sub_10010FC20(&unk_101182950);
    (*(*(v82 - 8) + 56))(v165, 1, 11, v82);
    v83 = enum case for Track.musicVideo(_:);
  }

  else
  {
    v83 = v80;
    v84 = v165;
    v85 = enum case for Track.musicVideo(_:);
    v86 = sub_10010FC20(&unk_101182950);
    v87 = *(*(v86 - 8) + 56);
    if (v83 == v85)
    {
      v87(v84, 5, 11, v86);
    }

    else
    {
      v87(v84, 1, 11, v86);
      v83 = v85;
    }
  }

  v88 = *(v162 + 8);
  v89 = v79;
  v88(v160, v79);
  v90 = v151;
  v74(v151, v166, v89);
  v91 = v78(v90, v89);
  v92 = v91 == v83;
  v93 = 0x3FF0000000000000;
  if (v92)
  {
    v94 = 0x3FFC71C71C71C71CLL;
  }

  else
  {
    v94 = 0x3FF0000000000000;
  }

  v95 = v89;
  v88(v90, v89);
  v96 = v88;
  if (v91 != v81)
  {
    v93 = v94;
  }

  v97 = Corner.small.unsafeMutableAddressor();
  v98 = *v97;
  v99 = v97[1];
  v100 = *(v97 + 16);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, 0, 1, 0, 1, 2, &v169);
  v101 = v139;
  v102 = ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v164, v165, v93, 0, &v169, v98, v99, v100, v139);
  v129(v101, 0, 1, v131, v102);
  v103 = v136;
  swift_beginAccess();
  (*(v155 + 8))(v103, v142);
  sub_1000089F8(v101, v137, &unk_10119F000);
  Published.init(initialValue:)();
  sub_1000095E8(v101, &unk_10119F000);
  swift_endAccess();
  v104 = v166;
  v105 = Track.title.getter();
  v107 = v106;
  v108 = v153;
  swift_beginAccess();
  v167 = v105;
  v168 = v107;
  Published.init(initialValue:)();
  swift_endAccess();
  v109 = v149;
  BylineProviding.byline(with:)(&off_101099D10, v95, &protocol witness table for Track, v149);
  v110 = v134;
  swift_beginAccess();
  (*(v158 + 8))(v110, v159);
  sub_1000089F8(v109, v156, &qword_101180C90);
  Published.init(initialValue:)();
  sub_1000095E8(v109, &qword_101180C90);
  swift_endAccess();
  v111 = Track.duration.getter();
  LOBYTE(v107) = v112;
  v113 = v130;
  swift_beginAccess();
  (*(v161 + 8))(v113, v163);
  v167 = v111;
  LOBYTE(v168) = v107 & 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v114 = v152;
  Track.contentRating.getter();
  LOBYTE(v111) = TextBadge.init(for:isPlayable:)(v114, 1);
  swift_beginAccess();
  LOBYTE(v167) = v111;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v167) = 0;
  Published.init(initialValue:)();
  swift_endAccess();
  v115 = type metadata accessor for Playlist();
  (*(*(v115 - 8) + 8))(v154, v115);
  v96(v104, v95);
  return v108;
}

uint64_t sub_10026BF48()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10026BFC0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10026C05C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10026C0D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10026C15C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t (*sub_10026C1DC())(uint64_t)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_10026FF74;
}

uint64_t sub_10026C2A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10026C318()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10026C38C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_10026C414()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10026C498@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_10026C518()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10026C59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = sub_10010FC20(a5);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v14 - v11;
  sub_1000089F8(a1, &v14 - v11, a5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v12, v10, a5);

  static Published.subscript.setter();
  return sub_1000095E8(v12, a5);
}

uint64_t sub_10026C6C4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_10026C74C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10026C7D0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10026C850()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10026C8C4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10026C944@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  return result;
}

double sub_10026C978@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_10026C9F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_10026FF74;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  if (v1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
  }

  sub_100030444(v1);

  return static Published.subscript.setter();
}

uint64_t sub_10026CB00(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = a1;
  a2(&v3, &v4);
  return v3;
}

uint64_t sub_10026CB40()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10026CBB8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10026CC38()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10026CCAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v82 = a4;
  v83 = a5;
  v81 = a3;
  v88 = a2;
  v5 = sub_10010FC20(&qword_101186E00);
  v6 = __chkstk_darwin(v5 - 8);
  v87 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v86 = &v70 - v9;
  v10 = __chkstk_darwin(v8);
  v84 = &v70 - v11;
  __chkstk_darwin(v10);
  v85 = &v70 - v12;
  v13 = sub_10010FC20(&qword_1011A4740);
  v14 = __chkstk_darwin(v13 - 8);
  v80 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v79 = &v70 - v16;
  v17 = type metadata accessor for Playlist.Entry.InternalItem();
  v77 = *(v17 - 8);
  v78 = v17;
  __chkstk_darwin(v17);
  v76 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Song();
  v72 = *(v19 - 8);
  v73 = v19;
  __chkstk_darwin(v19);
  v71 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10010FC20(&unk_10118D2F0);
  __chkstk_darwin(v21 - 8);
  v75 = &v70 - v22;
  v23 = sub_10010FC20(&qword_101180C90);
  v24 = __chkstk_darwin(v23 - 8);
  v74 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v70 - v26;
  v28 = sub_10010FC20(&unk_10119F000);
  v29 = __chkstk_darwin(v28 - 8);
  v31 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v70 - v32;
  sub_10026A298(&v70 - v32);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v33, v31, &unk_10119F000);

  static Published.subscript.setter();
  sub_1000095E8(v33, &unk_10119F000);
  if (sub_10026A6F8())
  {
    result = Playlist.Entry.position.getter();
    v35 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v36 = 0x80;
  }

  else
  {
    v35 = 0;
    v36 = -2;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v89 = v35;
  LOBYTE(v90) = v36;

  static Published.subscript.setter();
  v37 = Playlist.Entry.title.getter();
  v39 = v38;
  swift_getKeyPath();
  swift_getKeyPath();
  v89 = v37;
  v90 = v39;

  static Published.subscript.setter();
  v40 = type metadata accessor for Playlist.Entry();
  BylineProviding.byline(with:)(&off_101099118, v40, &protocol witness table for Playlist.Entry, v27);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v27, v74, &qword_101180C90);

  static Published.subscript.setter();
  sub_1000095E8(v27, &qword_101180C90);
  v41 = 0;
  v42 = 0;
  if (sub_10026A6F8())
  {
    v41 = Playlist.Entry.albumTitle.getter();
    v42 = v43;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v89 = v41;
  v90 = v42;

  static Published.subscript.setter();
  v44 = Playlist.Entry.duration.getter();
  v46 = v45;
  swift_getKeyPath();
  swift_getKeyPath();
  v89 = v44;
  LOBYTE(v90) = v46 & 1;

  static Published.subscript.setter();
  v47 = v75;
  Playlist.Entry.contentRating.getter();
  LOBYTE(v44) = TextBadge.init(for:isPlayable:)(v47, 1);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v89) = v44;

  static Published.subscript.setter();
  v48 = v76;
  Playlist.Entry.internalItem.getter();
  v50 = v77;
  v49 = v78;
  v51 = (*(v77 + 88))(v48, v78);
  v53 = v84;
  v52 = v85;
  if (v51 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v50 + 96))(v48, v49);
    v55 = v71;
    v54 = v72;
    v56 = v48;
    v57 = v73;
    (*(v72 + 32))(v71, v56, v73);
    v58 = Song.id.getter();
    v60 = v59;
    (*(v54 + 8))(v55, v57);
  }

  else
  {
    (*(v50 + 8))(v48, v49);
    v58 = 0;
    v60 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v89 = v58;
  v90 = v60;

  static Published.subscript.setter();
  v61 = v79;
  sub_1000089F8(v81, v79, &qword_1011A4740);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v61, v80, &qword_1011A4740);

  static Published.subscript.setter();
  sub_1000095E8(v61, &qword_1011A4740);
  swift_getKeyPath();
  swift_getKeyPath();
  v62 = v82;
  if (v82)
  {
    v63 = swift_allocObject();
    v64 = v83;
    *(v63 + 16) = v62;
    *(v63 + 24) = v64;
    v65 = sub_10026FF70;
  }

  else
  {
    v65 = 0;
    v63 = 0;
  }

  v89 = v65;
  v90 = v63;

  sub_100030444(v62);
  static Published.subscript.setter();
  Playlist.Entry.contributor.getter();
  v66 = type metadata accessor for SocialProfile();
  v67 = *(v66 - 8);
  v68 = *(v67 + 48);
  if (v68(v53, 1, v66) == 1)
  {
    Playlist.contributor(for:)();
    if (v68(v53, 1, v66) != 1)
    {
      sub_1000095E8(v53, &qword_101186E00);
    }
  }

  else
  {
    (*(v67 + 32))(v52, v53, v66);
    (*(v67 + 56))(v52, 0, 1, v66);
  }

  v69 = v86;
  sub_1000089F8(v52, v86, &qword_101186E00);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v69, v87, &qword_101186E00);

  static Published.subscript.setter();
  sub_1000095E8(v69, &qword_101186E00);
  return sub_1000095E8(v52, &qword_101186E00);
}

uint64_t sub_10026D718()
{
  v1 = OBJC_IVAR____TtC5Music17PlaylistEntryData__artworkInfo;
  v2 = sub_10010FC20(&qword_101187EE8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Music17PlaylistEntryData__leadingNumberState;
  v4 = sub_10010FC20(&qword_101187EE0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC5Music17PlaylistEntryData__title;
  v6 = sub_10010FC20(&qword_101184258);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC5Music17PlaylistEntryData__artist;
  v8 = sub_10010FC20(&qword_101187ED8);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC5Music17PlaylistEntryData__album;
  v10 = sub_10010FC20(&qword_1011928F0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC5Music17PlaylistEntryData__duration;
  v12 = sub_10010FC20(&qword_101187ED0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC5Music17PlaylistEntryData__explicitBadge;
  v14 = sub_10010FC20(&qword_101187F08);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC5Music17PlaylistEntryData__previewID;
  v16 = sub_10010FC20(&qword_101187EC8);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtC5Music17PlaylistEntryData__socialContributor;
  v18 = sub_10010FC20(&qword_101187EC0);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = OBJC_IVAR____TtC5Music17PlaylistEntryData__contextMenuProvider;
  v20 = sub_10010FC20(&qword_101187EB8);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  v21 = OBJC_IVAR____TtC5Music17PlaylistEntryData__reactionsConfiguration;
  v22 = sub_10010FC20(&qword_101187EB0);
  (*(*(v22 - 8) + 8))(v0 + v21, v22);
  v23 = OBJC_IVAR____TtC5Music17PlaylistEntryData__isProminent;
  v24 = sub_10010FC20(&unk_101189E60);
  (*(*(v24 - 8) + 8))(v0 + v23, v24);
  return v0;
}

uint64_t sub_10026DAC8()
{
  sub_10026D718();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlaylistEntryData()
{
  result = qword_101187AD0;
  if (!qword_101187AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10026DB74()
{
  sub_1000054CC(319, &qword_101187AE0, &unk_10119F000);
  if (v0 <= 0x3F)
  {
    sub_1000054CC(319, &qword_101187AE8, &qword_101187AF0);
    if (v1 <= 0x3F)
    {
      sub_100005390(319, &qword_101187AF8);
      if (v2 <= 0x3F)
      {
        sub_1000054CC(319, &qword_101187B00, &qword_101180C90);
        if (v3 <= 0x3F)
        {
          sub_1000054CC(319, &qword_101187B08, &qword_1011815E0);
          if (v4 <= 0x3F)
          {
            sub_1000054CC(319, &qword_101187B10, &qword_101187648);
            if (v5 <= 0x3F)
            {
              sub_100005390(319, &qword_101187B18);
              if (v6 <= 0x3F)
              {
                sub_1000054CC(319, &qword_101187B20, &unk_1011A49A0);
                if (v7 <= 0x3F)
                {
                  sub_1000054CC(319, &qword_101187B28, &qword_101186E00);
                  if (v8 <= 0x3F)
                  {
                    sub_1000054CC(319, &qword_101187B30, &qword_101187B38);
                    if (v9 <= 0x3F)
                    {
                      sub_1000054CC(319, &unk_101187B40, &qword_1011A4740);
                      if (v10 <= 0x3F)
                      {
                        sub_100005390(319, &qword_10119ED80);
                        if (v11 <= 0x3F)
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
        }
      }
    }
  }
}

uint64_t sub_10026E010()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t (*sub_10026E094())(uint64_t)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_10026E26C;
}

uint64_t sub_10026E160()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10026E1D4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PlaylistEntryData();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10026E214(uint64_t a1)
{
  result = sub_10026FEE8(&qword_101187EA8, type metadata accessor for PlaylistEntryData);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10026E270@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

double sub_10026E2A4()
{
  v0 = type metadata accessor for UploadedVideo();
  v1 = *(v0 - 8);
  v30 = v0;
  v31 = v1;
  __chkstk_darwin(v0);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&unk_10118A5E0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = type metadata accessor for TVEpisode();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Playlist.Entry.InternalItem();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Playlist.Entry.internalItem.getter();
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v15 + 8))(v17, v14);
    return 0.666666667;
  }

  if (v18 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v15 + 8))(v17, v14);
    return 1.77777778;
  }

  if (v18 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    goto LABEL_7;
  }

  if (v18 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v15 + 96))(v17, v14);
    (*(v11 + 32))(v13, v17, v10);
    TVEpisode.artworkViewModel.getter(v9);
    v20 = type metadata accessor for ArtworkImage.ViewModel(0);
    if ((*(*(v20 - 8) + 48))(v9, 1, v20) == 1)
    {
      (*(v11 + 8))(v13, v10);
      sub_1000095E8(v9, &unk_10118A5E0);
      return 1.77777778;
    }

    v24 = ArtworkImage.ViewModel.calculatedAspectRatio.getter();
    v26 = v25;
    (*(v11 + 8))(v13, v10);
    sub_10026E7C0(v9);
    if (v26)
    {
      return 1.77777778;
    }

    return *&v24;
  }

  else
  {
    if (v18 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) || v18 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
    {
LABEL_7:
      (*(v15 + 8))(v17, v14);
      return 1.0;
    }

    (*(v15 + 96))(v17, v14);
    v21 = v30;
    v22 = v31;
    (*(v31 + 32))(v3, v17, v30);
    ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v21, &protocol witness table for UploadedVideo, v7);
    v23 = type metadata accessor for ArtworkImage.ViewModel(0);
    if ((*(*(v23 - 8) + 48))(v7, 1, v23) == 1)
    {
      (*(v22 + 8))(v3, v21);
      sub_1000095E8(v7, &unk_10118A5E0);
      return 1.77777778;
    }

    v27 = ArtworkImage.ViewModel.calculatedAspectRatio.getter();
    v29 = v28;
    (*(v22 + 8))(v3, v21);
    sub_10026E7C0(v7);
    if (v29)
    {
      return 1.77777778;
    }

    return *&v27;
  }
}

uint64_t sub_10026E7C0(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkImage.ViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10026E81C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v145 = a6;
  v144 = a5;
  v142 = a4;
  v163 = a3;
  v175 = a2;
  v162 = a1;
  v140 = type metadata accessor for Playlist.Entry.InternalItem();
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v138 = v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for Song();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v128 = v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&unk_10118D2F0);
  __chkstk_darwin(v10 - 8);
  v137 = v127 - v11;
  v12 = sub_10010FC20(&qword_101187EB0);
  v181 = *(v12 - 8);
  v182 = v12;
  __chkstk_darwin(v12);
  v161 = v127 - v13;
  v180 = sub_10010FC20(&qword_1011A4740);
  v14 = __chkstk_darwin(v180);
  v179 = v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v178 = v127 - v16;
  v160 = sub_10010FC20(&qword_101187EB8);
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v158 = v127 - v17;
  v157 = sub_10010FC20(&qword_101187EC0);
  v156 = *(v157 - 8);
  __chkstk_darwin(v157);
  v155 = v127 - v18;
  v154 = sub_10010FC20(&qword_101186E00);
  v19 = __chkstk_darwin(v154);
  v141 = v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v143 = v127 - v22;
  v23 = __chkstk_darwin(v21);
  v183 = v127 - v24;
  __chkstk_darwin(v23);
  v184 = v127 - v25;
  v26 = sub_10010FC20(&qword_101187EC8);
  v176 = *(v26 - 8);
  v177 = v26;
  __chkstk_darwin(v26);
  v153 = v127 - v27;
  v28 = sub_10010FC20(&qword_101187ED0);
  v173 = *(v28 - 8);
  v174 = v28;
  __chkstk_darwin(v28);
  v151 = v127 - v29;
  v30 = sub_10010FC20(&qword_1011928F0);
  v171 = *(v30 - 8);
  v172 = v30;
  __chkstk_darwin(v30);
  v147 = v127 - v31;
  v170 = sub_10010FC20(&qword_101187ED8);
  v169 = *(v170 - 8);
  __chkstk_darwin(v170);
  v146 = v127 - v32;
  v168 = sub_10010FC20(&qword_101180C90);
  v33 = __chkstk_darwin(v168);
  v167 = v127 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v166 = v127 - v35;
  v165 = sub_10010FC20(&qword_101187EE0);
  v164 = *(v165 - 8);
  __chkstk_darwin(v165);
  v37 = v127 - v36;
  v185 = sub_10010FC20(&qword_101187EE8);
  v149 = *(v185 - 8);
  v38 = v149;
  __chkstk_darwin(v185);
  v40 = v127 - v39;
  v152 = sub_10010FC20(&unk_10119F000);
  v41 = __chkstk_darwin(v152);
  v43 = v127 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v45 = v127 - v44;
  *(v6 + 16) = 0;
  v46 = OBJC_IVAR____TtC5Music17PlaylistEntryData__artworkInfo;
  v47 = type metadata accessor for ArtworkImage.Info(0);
  (*(*(v47 - 8) + 56))(v45, 1, 1, v47);
  v148 = v45;
  v150 = v43;
  sub_1000089F8(v45, v43, &unk_10119F000);
  Published.init(initialValue:)();
  sub_1000095E8(v45, &unk_10119F000);
  v48 = v46;
  (*(v38 + 32))(v6 + v46, v40, v185);
  v49 = OBJC_IVAR____TtC5Music17PlaylistEntryData__leadingNumberState;
  v188 = 0;
  LOBYTE(v189) = -2;
  v131 = sub_10010FC20(&qword_101187AF0);
  Published.init(initialValue:)();
  (*(v164 + 32))(v6 + v49, v37, v165);
  *(v6 + OBJC_IVAR____TtC5Music17PlaylistEntryData_showVideoIcon) = 0;
  v50 = OBJC_IVAR____TtC5Music17PlaylistEntryData__artist;
  v51 = type metadata accessor for AttributedString();
  v52 = v166;
  (*(*(v51 - 8) + 56))(v166, 1, 1, v51);
  v53 = v52;
  sub_1000089F8(v52, v167, &qword_101180C90);
  v54 = v146;
  Published.init(initialValue:)();
  sub_1000095E8(v53, &qword_101180C90);
  v55 = *(v169 + 32);
  v132 = v50;
  v55(v7 + v50, v54, v170);
  v56 = OBJC_IVAR____TtC5Music17PlaylistEntryData__album;
  v188 = 0;
  v189 = 0;
  v57 = sub_10010FC20(&qword_1011815E0);
  v58 = v147;
  v133 = v57;
  Published.init(initialValue:)();
  v59 = *(v171 + 32);
  v135 = v56;
  v59(v7 + v56, v58, v172);
  v60 = OBJC_IVAR____TtC5Music17PlaylistEntryData__duration;
  v188 = 0;
  LOBYTE(v189) = 1;
  v61 = sub_10010FC20(&qword_101187648);
  v62 = v151;
  v134 = v61;
  Published.init(initialValue:)();
  v63 = *(v173 + 32);
  v136 = v60;
  v63(v7 + v60, v62, v174);
  v64 = OBJC_IVAR____TtC5Music17PlaylistEntryData__previewID;
  v188 = 0;
  v189 = 0;
  v65 = sub_10010FC20(&unk_1011A49A0);
  v66 = v153;
  v146 = v65;
  Published.init(initialValue:)();
  v67 = *(v176 + 32);
  v147 = v64;
  v67(v7 + v64, v66, v177);
  v68 = OBJC_IVAR____TtC5Music17PlaylistEntryData__socialContributor;
  v69 = type metadata accessor for SocialProfile();
  v151 = *(v69 - 8);
  v70 = *(v151 + 7);
  v71 = v184;
  v153 = v69;
  v127[1] = v151 + 56;
  v127[0] = v70;
  v70(v184, 1, 1);
  sub_1000089F8(v71, v183, &qword_101186E00);
  v72 = v155;
  Published.init(initialValue:)();
  sub_1000095E8(v71, &qword_101186E00);
  (*(v156 + 32))(v7 + v68, v72, v157);
  v73 = OBJC_IVAR____TtC5Music17PlaylistEntryData__contextMenuProvider;
  v188 = 0;
  v189 = 0;
  sub_10010FC20(&qword_101187B38);
  v74 = v158;
  Published.init(initialValue:)();
  (*(v159 + 32))(v7 + v73, v74, v160);
  v75 = OBJC_IVAR____TtC5Music17PlaylistEntryData__reactionsConfiguration;
  v76 = type metadata accessor for Tracklist.ReactionsConfiguration(0);
  v77 = v178;
  (*(*(v76 - 8) + 56))(v178, 1, 1, v76);
  sub_1000089F8(v77, v179, &qword_1011A4740);
  v78 = v161;
  Published.init(initialValue:)();
  sub_1000095E8(v77, &qword_1011A4740);
  v79 = *(v181 + 32);
  v160 = v75;
  v79(v7 + v75, v78, v182);
  v80 = v148;
  v81 = v162;
  sub_10026A298(v148);
  swift_beginAccess();
  (*(v149 + 8))(v7 + v48, v185);
  sub_1000089F8(v80, v150, &unk_10119F000);
  Published.init(initialValue:)();
  sub_1000095E8(v80, &unk_10119F000);
  swift_endAccess();
  if (sub_10026A6F8())
  {
    result = Playlist.Entry.position.getter();
    v83 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v84 = 0x80;
  }

  else
  {
    v83 = 0;
    v84 = -2;
  }

  swift_beginAccess();
  (*(v164 + 8))(v7 + v49, v165);
  v186 = v83;
  LOBYTE(v187) = v84;
  Published.init(initialValue:)();
  swift_endAccess();
  v85 = Playlist.Entry.title.getter();
  v87 = v86;
  swift_beginAccess();
  v186 = v85;
  v187 = v87;
  Published.init(initialValue:)();
  swift_endAccess();
  v88 = type metadata accessor for Playlist.Entry();
  v89 = v166;
  v185 = v88;
  BylineProviding.byline(with:)(&off_101099CE8, v88, &protocol witness table for Playlist.Entry, v166);
  v90 = v132;
  swift_beginAccess();
  (*(v169 + 8))(v7 + v90, v170);
  sub_1000089F8(v89, v167, &qword_101180C90);
  Published.init(initialValue:)();
  sub_1000095E8(v89, &qword_101180C90);
  swift_endAccess();
  v91 = 0;
  v92 = 0;
  if (sub_10026A6F8())
  {
    v91 = Playlist.Entry.albumTitle.getter();
    v92 = v93;
  }

  v94 = v135;
  swift_beginAccess();
  (*(v171 + 8))(v7 + v94, v172);
  v186 = v91;
  v187 = v92;
  Published.init(initialValue:)();
  swift_endAccess();
  v95 = Playlist.Entry.duration.getter();
  v97 = v96;
  v98 = v136;
  swift_beginAccess();
  (*(v173 + 8))(v7 + v98, v174);
  v186 = v95;
  LOBYTE(v187) = v97 & 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v99 = v137;
  Playlist.Entry.contentRating.getter();
  LOBYTE(v95) = TextBadge.init(for:isPlayable:)(v99, 1);
  swift_beginAccess();
  LOBYTE(v186) = v95;
  Published.init(initialValue:)();
  swift_endAccess();
  v100 = v138;
  Playlist.Entry.internalItem.getter();
  v101 = v139;
  v102 = v140;
  v103 = (*(v139 + 88))(v100, v140);
  v104 = v144;
  v105 = v141;
  if (v103 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v101 + 96))(v100, v102);
    v106 = v129;
    v107 = v128;
    v108 = v100;
    v109 = v130;
    (*(v129 + 32))(v128, v108, v130);
    v110 = Song.id.getter();
    v112 = v111;
    (*(v106 + 8))(v107, v109);
  }

  else
  {
    (*(v101 + 8))(v100, v102);
    v110 = 0;
    v112 = 0;
  }

  v113 = v163;
  v114 = v143;
  v115 = v147;
  swift_beginAccess();
  (*(v176 + 8))(&v115[v7], v177);
  v186 = v110;
  v187 = v112;
  Published.init(initialValue:)();
  swift_endAccess();
  v116 = v178;
  sub_1000089F8(v113, v178, &qword_1011A4740);
  v117 = v160;
  swift_beginAccess();
  (*(v181 + 8))(v7 + v117, v182);
  sub_1000089F8(v116, v179, &qword_1011A4740);
  Published.init(initialValue:)();
  sub_1000095E8(v116, &qword_1011A4740);
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v186) = v142 & 1;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  if (v104)
  {
    v118 = swift_allocObject();
    v119 = v145;
    *(v118 + 16) = v104;
    *(v118 + 24) = v119;
    v120 = sub_10026FF70;
  }

  else
  {
    v120 = 0;
    v118 = 0;
  }

  v121 = v153;
  v122 = v175;
  v188 = v120;
  v189 = v118;
  sub_100030444(v104);

  static Published.subscript.setter();
  Playlist.Entry.contributor.getter();
  v123 = v151;
  v124 = *(v151 + 6);
  if (v124(v105, 1, v121) == 1)
  {
    Playlist.contributor(for:)();
    if (v124(v105, 1, v121) != 1)
    {
      sub_1000095E8(v105, &qword_101186E00);
    }
  }

  else
  {
    v123[4](v114, v105, v121);
    (v127[0])(v114, 0, 1, v121);
  }

  v125 = v184;
  sub_1000089F8(v114, v184, &qword_101186E00);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v125, v183, &qword_101186E00);

  static Published.subscript.setter();
  sub_1000095E8(v163, &qword_1011A4740);
  v126 = type metadata accessor for Playlist();
  (*(*(v126 - 8) + 8))(v122, v126);
  (*(*(v185 - 8) + 8))(v81);
  sub_1000095E8(v125, &qword_101186E00);
  sub_1000095E8(v114, &qword_101186E00);
  return v7;
}

uint64_t sub_10026FEE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10026FF30(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

void *sub_10026FF78()
{
  v1 = sub_10010FC20(&unk_101183B10);
  v51 = *(v1 - 8);
  v52 = v1;
  __chkstk_darwin(v1);
  v50 = v39 - v2;
  v57 = type metadata accessor for NSNotificationCenter.Publisher();
  v53 = *(v57 - 8);
  v3 = __chkstk_darwin(v57);
  v49 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v56 = v39 - v5;
  v46 = sub_10010FC20(&unk_101189DD0);
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = v39 - v6;
  v7 = sub_10010FC20(&qword_101183B30);
  v47 = *(v7 - 1);
  v48 = v7;
  __chkstk_darwin(v7);
  v45 = v39 - v8;
  v9 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v9 - 8);
  v11 = v39 - v10;
  v55 = sub_10010FC20(&unk_101183D80);
  v40 = *(v55 - 1);
  __chkstk_darwin(v55);
  v13 = v39 - v12;
  v42 = sub_10010FC20(&qword_101189DE0);
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v15 = v39 - v14;
  v60 = v0;
  v0[3] = &_swiftEmptySetSingleton;
  v0[2] = 0;
  v0[4] = 0;
  type metadata accessor for WaveformState.SamplingMode.ValueProvider();
  swift_allocObject();
  v0[5] = WaveformState.SamplingMode.ValueProvider.init(value:)();
  v0[6] = sub_10010BB3C(_swiftEmptyArrayStorage);
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v16 = qword_101218AC8;
  (*(*qword_101218AC8 + 456))();
  v17 = sub_100009F78(0, &qword_101182960);
  v18 = static OS_dispatch_queue.main.getter();
  v61 = v18;
  v58 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v19 = *(v58 - 8);
  v54 = *(v19 + 56);
  v20 = v19 + 56;
  v54(v11, 1, 1, v58);
  v39[2] = &protocol conformance descriptor for Published<A>.Publisher;
  sub_100020674(&unk_1011A4650, &unk_101183D80);
  v59 = sub_10001C070(&qword_101184920, &qword_101182960);
  v21 = v55;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v11, &qword_101182140);

  (*(v40 + 8))(v13, v21);
  swift_allocObject();
  swift_weakInit();
  v55 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100020674(&unk_10118ACC0, &qword_101189DE0);

  v22 = v42;
  Publisher<>.sink(receiveValue:)();

  (*(v41 + 8))(v15, v22);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v24 = v43;
  (*(*v16 + 504))(v23);
  v39[1] = v17;
  v25 = static OS_dispatch_queue.main.getter();
  v61 = v25;
  v39[0] = v20;
  v26 = v54;
  v54(v11, 1, 1, v58);
  sub_100020674(&unk_101189E00, &unk_101189DD0);
  v28 = v45;
  v27 = v46;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v11, &qword_101182140);

  (*(v44 + 8))(v24, v27);
  swift_allocObject();
  swift_weakInit();
  sub_100020674(&qword_101183B70, &qword_101183B30);
  v29 = v48;
  Publisher<>.sink(receiveValue:)();

  (*(v47 + 8))(v28, v29);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v48 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();
  v30 = v49;
  NSNotificationCenter.publisher(for:object:)();
  v31 = static OS_dispatch_queue.main.getter();
  v61 = v31;
  v26(v11, 1, 1, v58);
  v47 = sub_100274D98(&qword_101183B80, &type metadata accessor for NSNotificationCenter.Publisher);
  v32 = v50;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v11, &qword_101182140);

  swift_allocObject();
  swift_weakInit();
  v55 = sub_100020674(&qword_101183B88, &unk_101183B10);
  v33 = v52;
  Publisher<>.sink(receiveValue:)();

  v51 = *(v51 + 8);
  (v51)(v32, v33);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v34 = static OS_dispatch_queue.main.getter();
  v61 = v34;
  v54(v11, 1, 1, v58);
  v35 = v57;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v11, &qword_101182140);

  swift_allocObject();
  v36 = v60;
  swift_weakInit();

  Publisher<>.sink(receiveValue:)();

  (v51)(v32, v33);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v37 = *(v53 + 8);
  v37(v30, v35);
  v37(v56, v35);
  return v36;
}

void sub_100270B48(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 32);
    *(Strong + 32) = v1;
    v4 = v1;
    sub_100272438(v3);
  }
}

uint64_t sub_100270BC0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100270C18();
  }

  return result;
}

uint64_t sub_100270C18()
{
  v1 = v0;
  v2 = *(v0 + 32);
  if (v2 && (v3 = [v2 tracklist], v4 = objc_msgSend(v3, "playingItem"), v3, v4))
  {
    [v4 duration];
    v5 = v21;
  }

  else
  {
    v5 = 0;
  }

  if (qword_10117F5F8 != -1)
  {
LABEL_24:
    swift_once();
  }

  v6 = (*(*qword_101218AC8 + 360))();
  v7 = [v6 route];

  if (v7)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v8 = MPAVEndpointRoute.canReceiveAudioSamples.getter();
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 1;
  }

  swift_beginAccess();
  v9 = *(v1 + 48);
  v12 = *(v9 + 64);
  v11 = v9 + 64;
  v10 = v12;
  v13 = 1 << *(*(v1 + 48) + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  if (v15)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v18 >= v16)
    {
    }

    v15 = *(v11 + 8 * v18);
    ++v17;
    if (v15)
    {
      v17 = v18;
      do
      {
LABEL_20:
        v15 &= v15 - 1;

        sub_100272624(v19, v5, v8 & 1);
      }

      while (v15);
      continue;
    }
  }
}

void sub_100270E5C()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v4 = &v53 - v3;
  if (qword_10117F488 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v5 = type metadata accessor for Logger();
    v6 = sub_1000060E4(v5, qword_101187F18);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Updating Waveform subscription…", v9, 2u);
    }

    v10 = v1[4];
    if (v10)
    {
      if ([v10 state] == 1)
      {
        break;
      }
    }

    swift_beginAccess();
    if (!*(v1[6] + 16))
    {
      break;
    }

    v11 = [objc_opt_self() sharedApplication];
    v12 = [v11 connectedScenes];

    v13 = sub_100009F78(0, &qword_1011839F0);
    sub_10001C070(&qword_101183DE0, &qword_1011839F0);
    v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v56 = v6;
    v57 = v1;
    v53 = v4;
    v55 = v14;
    v58 = v13;
    if ((v14 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v14 = v64;
      v15 = v65;
      v16 = v66;
      v4 = v67;
      v1 = v68;
    }

    else
    {
      v17 = -1 << *(v14 + 32);
      v15 = v14 + 56;
      v16 = ~v17;
      v18 = -v17;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v1 = (v19 & *(v14 + 56));

      v4 = 0;
    }

    v54 = v16;
    v20 = (v16 + 64) >> 6;
    v61 = UIWindowSceneSessionRoleApplication;
    while (v14 < 0)
    {
      v26 = __CocoaSet.Iterator.next()();
      if (!v26 || (v62 = v26, swift_dynamicCast(), v25 = v63, v23 = v4, v24 = v1, !v63))
      {
LABEL_32:
        sub_10005C9F8();

        v1 = v57;
        goto LABEL_33;
      }

LABEL_26:
      v59 = v4;
      v60 = v1;
      v27 = [v25 session];
      v28 = [v27 role];

      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;
      if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
      {
      }

      else
      {
        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v34 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if ([v25 activationState] != 2)
      {
        sub_10005C9F8();

        v41 = v57;
        if (v57[2])
        {
          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            v45 = "Already observing waveform";
            goto LABEL_49;
          }
        }

        else
        {
          if (qword_10117F480 != -1)
          {
            swift_once();
          }

          v46 = qword_101187F10;
          v47 = v53;
          if (qword_10117F5F8 != -1)
          {
            swift_once();
          }

          v48 = qword_101218AC8;
          v49 = type metadata accessor for TaskPriority();
          (*(*(v49 - 8) + 56))(v47, 1, 1, v49);
          v50 = swift_allocObject();
          swift_weakInit();
          v51 = swift_allocObject();
          v51[2] = 0;
          v51[3] = 0;
          v51[4] = v48;
          v51[5] = v46;
          v51[6] = v50;

          v52 = v46;
          v41[2] = sub_1001F4CB8(0, 0, v47, &unk_100EC37A0, v51);

          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            v45 = "Waveform task created";
LABEL_49:
            _os_log_impl(&_mh_execute_header, v42, v43, v45, v44, 2u);
          }
        }

        return;
      }

LABEL_16:

      v4 = v23;
      v1 = v24;
    }

    v21 = v4;
    v22 = v1;
    v23 = v4;
    if (v1)
    {
LABEL_22:
      v24 = (v22 - 1) & v22;
      v25 = *(*(v14 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
      if (!v25)
      {
        goto LABEL_32;
      }

      goto LABEL_26;
    }

    while (1)
    {
      v23 = (v21 + 1);
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= v20)
      {
        goto LABEL_32;
      }

      v22 = *(v15 + 8 * v23);
      ++v21;
      if (v22)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_52:
    swift_once();
  }

LABEL_33:
  if (v1[2])
  {

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Shouldn't observe waveform", v37, 2u);
    }

    Task.cancel()();
    v1[2] = 0;

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Waveform task destroyed", v40, 2u);
    }
  }
}

uint64_t sub_100271618(uint64_t a1, uint64_t a2, const char *a3)
{
  if (qword_10117F488 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, qword_101187F18);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a3, v7, 2u);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100270E5C();
  }

  return result;
}

uint64_t sub_100271734()
{
  if (*(v0 + 16))
  {

    Task.cancel()();
  }

  *(v0 + 16) = 0;

  return v0;
}

uint64_t sub_1002717C8()
{
  sub_100271734();

  return swift_deallocClassInstance();
}

id sub_1002717FC()
{
  result = sub_10027181C();
  qword_101187F10 = result;
  return result;
}

id sub_10027181C()
{
  v0 = [objc_opt_self() currentSettings];
  sub_10010FC20(&qword_101183990);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100EBEE70;
  sub_100009F78(0, &qword_101189A20);
  *(v1 + 32) = NSNumber.init(integerLiteral:)(20);
  *(v1 + 40) = NSNumber.init(integerLiteral:)(170);
  *(v1 + 48) = NSNumber.init(integerLiteral:)(527);
  *(v1 + 56) = NSNumber.init(integerLiteral:)(1500);
  *(v1 + 64) = NSNumber.init(integerLiteral:)(4500);
  *(v1 + 72) = NSNumber.init(integerLiteral:)(10000);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 setStops:isa];

  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100EC3620;
  *(v3 + 32) = NSNumber.init(integerLiteral:)(0);
  *(v3 + 40) = NSNumber.init(floatLiteral:)(3.840823);
  *(v3 + 48) = NSNumber.init(floatLiteral:)(-8.182433);
  *(v3 + 56) = NSNumber.init(floatLiteral:)(7.772333);
  *(v3 + 64) = NSNumber.init(floatLiteral:)(-2.430722);
  v4 = Array._bridgeToObjectiveC()().super.isa;

  [v0 setAdjustmentCoefficients:v4];

  return v0;
}

uint64_t sub_1002719D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = sub_10010FC20(&qword_1011880F0);
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v8 = sub_10010FC20(&qword_1011880F8);
  v6[16] = v8;
  v6[17] = *(v8 - 8);
  v6[18] = swift_task_alloc();

  return _swift_task_switch(sub_100271B0C, 0, 0);
}

uint64_t sub_100271B0C()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = (*(**(v0 + 80) + 296))();
  (*(*v4 + 104))(v4);

  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *v5 = v0;
  v5[1] = sub_100271C70;
  v6 = *(v0 + 128);

  return AsyncStream.Iterator.next(isolation:)(v0 + 64, 0, 0, v6);
}

uint64_t sub_100271C70()
{

  return _swift_task_switch(sub_100271D6C, 0, 0);
}

uint64_t sub_100271D6C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[8];
  if (v4)
  {
    v5 = *(v4 + 2);
    if (v5 >> 31)
    {
      __break(1u);
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1004994DC(0, v5, 0, v4);
      }

      v3[20] = v4;
      v6 = v3[11];
      v7 = objc_allocWithZone(MRUWaveformData);
      LODWORD(v8) = 1195081728;
      v9 = [v7 initWithFFTSamples:v4 + 32 count:v5 sampleRate:v6 settings:v8];
      v3[21] = v9;
      v10 = [v9 amplitudes];
      sub_100009F78(0, &qword_101189A20);
      v3[22] = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      swift_weakLoadStrong();
      swift_weakInit();

      type metadata accessor for MainActor();
      v3[23] = static MainActor.shared.getter();
      v11 = dispatch thunk of Actor.unownedExecutor.getter();
      v13 = v12;
      a1 = sub_100271F44;
      a2 = v11;
      a3 = v13;
    }

    return _swift_task_switch(a1, a2, a3);
  }

  else
  {
    (*(v3[17] + 8))(v3[18], v3[16]);

    v14 = v3[1];

    return v14();
  }
}

uint64_t sub_100271F44()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v2 = *(v0 + 176);
  if (!Strong)
  {

    swift_weakDestroy();
    v10 = sub_1002751DC;
    goto LABEL_23;
  }

  v6 = v2 & 0xC000000000000001;
  if ((v2 & 0xC000000000000001) != 0)
  {
    v7 = sub_1007E9138(0, *(v0 + 176));
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_28;
    }

    v7 = *(*(v0 + 176) + 32);
  }

  v8 = v7;
  [v7 doubleValue];

  if (v6)
  {
    v9 = sub_1007E9138(1uLL, *(v0 + 176));
    goto LABEL_10;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = *(*(v0 + 176) + 40);
LABEL_10:
  v11 = v9;
  [v9 doubleValue];

  if (v6)
  {
    v12 = sub_1007E9138(2uLL, *(v0 + 176));
    goto LABEL_14;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v12 = *(*(v0 + 176) + 48);
LABEL_14:
  v13 = v12;
  [v12 doubleValue];

  if (v6)
  {
    v14 = sub_1007E9138(3uLL, *(v0 + 176));
    goto LABEL_18;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v14 = *(*(v0 + 176) + 56);
LABEL_18:
  v15 = v14;
  [v14 doubleValue];

  if (!v6)
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 5uLL)
    {
      v16 = *(*(v0 + 176) + 64);
      goto LABEL_22;
    }

LABEL_31:
    __break(1u);
    return _swift_task_switch(v3, v4, v5);
  }

  v16 = sub_1007E9138(4uLL, *(v0 + 176));
LABEL_22:

  [v16 doubleValue];

  dispatch thunk of WaveformState.SamplingMode.ValueProvider.update(to:)();

  swift_weakDestroy();
  v10 = sub_1002721E8;
LABEL_23:
  v3 = v10;
  v4 = 0;
  v5 = 0;

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1002721E8()
{
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_100271C70;
  v2 = *(v0 + 128);

  return AsyncStream.Iterator.next(isolation:)(v0 + 64, 0, 0, v2);
}

uint64_t MPAVEndpointRoute.canReceiveAudioSamples.getter()
{
  result = [v0 endpointObject];
  if (result)
  {
    v2 = result;
    v3 = [result outputDevices];

    if (!v3)
    {
      return 1;
    }

    sub_100009F78(0, &qword_101187F30);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = sub_1007E9550(v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (![v7 isLocalDevice] || objc_msgSend(v8, "deviceType") == 3 || objc_msgSend(v8, "deviceSubtype") == 14)
        {

          v10 = 0;
          goto LABEL_22;
        }

        ++v6;
        if (v9 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

LABEL_21:
    v10 = 1;
LABEL_22:

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100272438(void *a1)
{
  if (a1)
  {
    v2 = [a1 tracklist];
    v3 = [v2 playingItem];

    if (v3)
    {
      v4 = [v3 contentItemIdentifier];

      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v3 = v6;

      v7 = *(v1 + 32);
      if (!v7)
      {
LABEL_10:
        v11 = 0;
        v9 = 0;
        if (v3)
        {
          goto LABEL_11;
        }

LABEL_18:
        if (!v9)
        {
          return;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v5 = 0;
      v7 = *(v1 + 32);
      if (!v7)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v5 = 0;
    v3 = 0;
    v7 = *(v1 + 32);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  v8 = [v7 tracklist];
  v9 = [v8 playingItem];

  if (v9)
  {
    v10 = [v9 contentItemIdentifier];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v12;

    if (v3)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  v11 = 0;
  if (!v3)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (!v9)
  {
LABEL_19:

    goto LABEL_20;
  }

  if (v5 == v11 && v3 == v9)
  {

    return;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    return;
  }

LABEL_20:

  sub_100270C18();
}

uint64_t sub_100272624(uint64_t a1, char a2, int a3)
{
  v4 = v3;
  v34 = a3;
  v7 = sub_10010FC20(&qword_101188100);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v13 = &v33[-v12];
  __chkstk_darwin(v11);
  v15 = &v33[-v14];
  swift_getKeyPath();
  v16 = OBJC_IVAR____TtCC5Music14WaveformPlayer13ListenerToken___observationRegistrar;
  v38 = a1;
  v35 = sub_100274D98(&qword_101188108, type metadata accessor for WaveformPlayer.ListenerToken);
  v36 = v16;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *(a1 + 48);
  v18 = *(v4 + 32);
  v19 = v18;

  v20 = v17(v18);
  LOBYTE(v17) = v21;

  if (v17)
  {
LABEL_2:
    v22 = &enum case for WaveformState.hidden(_:);
    goto LABEL_11;
  }

  if (a2)
  {
    v22 = &enum case for WaveformState.buffering(_:);
    goto LABEL_11;
  }

  if (v20 != 2)
  {
    if (v20 == 4)
    {
      v22 = &enum case for WaveformState.paused(_:);
      goto LABEL_11;
    }

    goto LABEL_2;
  }

  if (v34)
  {
    *v13 = *(v4 + 40);
    v23 = enum case for WaveformState.SamplingMode.custom(_:);
    v24 = type metadata accessor for WaveformState.SamplingMode();
    (*(*(v24 - 8) + 104))(v13, v23, v24);
    v25 = enum case for WaveformState.playing(_:);
    v26 = type metadata accessor for WaveformState();
    (*(*(v26 - 8) + 104))(v13, v25, v26);

    goto LABEL_12;
  }

  v27 = enum case for WaveformState.SamplingMode.unavailable(_:);
  v28 = type metadata accessor for WaveformState.SamplingMode();
  (*(*(v28 - 8) + 104))(v13, v27, v28);
  v22 = &enum case for WaveformState.playing(_:);
LABEL_11:
  v29 = *v22;
  v26 = type metadata accessor for WaveformState();
  (*(*(v26 - 8) + 104))(v13, v29, v26);
LABEL_12:
  type metadata accessor for WaveformState();
  (*(*(v26 - 8) + 56))(v13, 0, 1, v26);
  sub_100274EF0(v13, v15);
  swift_getKeyPath();
  v38 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = OBJC_IVAR____TtCC5Music14WaveformPlayer13ListenerToken__displayState;
  swift_beginAccess();
  sub_100274F60(a1 + v30, v10);
  LOBYTE(v30) = sub_100272C40(v10);
  sub_1000095E8(v10, &qword_101188100);
  if (v30)
  {
    v10 = v15;
  }

  else
  {
    sub_100274F60(v15, v10);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v33[-16] = a1;
    *&v33[-8] = v10;
    v37 = a1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_1000095E8(v15, &qword_101188100);
  }

  return sub_1000095E8(v10, &qword_101188100);
}

uint64_t sub_100272AC8()
{
  swift_getKeyPath();
  sub_100274D98(&qword_101188108, type metadata accessor for WaveformPlayer.ListenerToken);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_100272B78@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_100274D98(&qword_101188108, type metadata accessor for WaveformPlayer.ListenerToken);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtCC5Music14WaveformPlayer13ListenerToken__displayState;
  swift_beginAccess();
  return sub_100274F60(v5 + v3, a1);
}

uint64_t sub_100272C40(uint64_t a1)
{
  v2 = v1;
  v34 = a1;
  v35 = sub_10010FC20(&qword_101188110);
  __chkstk_darwin(v35);
  v4 = &v34 - v3;
  v5 = sub_10010FC20(&qword_101188100);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v34 - v9;
  v11 = type metadata accessor for WaveformState();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v34 - v17;
  __chkstk_darwin(v16);
  v20 = &v34 - v19;
  sub_100274F60(v2, v10);
  v21 = *(v12 + 48);
  if (v21(v10, 1, v11) == 1)
  {
    (*(v12 + 104))(v20, enum case for WaveformState.hidden(_:), v11);
    if (v21(v10, 1, v11) != 1)
    {
      sub_1000095E8(v10, &qword_101188100);
    }
  }

  else
  {
    (*(v12 + 32))(v20, v10, v11);
  }

  sub_100274F60(v34, v8);
  if (v21(v8, 1, v11) == 1)
  {
    (*(v12 + 104))(v18, enum case for WaveformState.hidden(_:), v11);
    v22 = v21(v8, 1, v11);
    v23 = v15;
    if (v22 != 1)
    {
      sub_1000095E8(v8, &qword_101188100);
    }
  }

  else
  {
    (*(v12 + 32))(v18, v8, v11);
    v23 = v15;
  }

  v24 = *(v35 + 48);
  v25 = *(v12 + 32);
  v25(v4, v20, v11);
  v25(&v4[v24], v18, v11);
  v26 = *(v12 + 88);
  v27 = v26(v4, v11);
  v28 = v27;
  if (v27 == enum case for WaveformState.playing(_:))
  {
    (*(v12 + 16))(v23, v4, v11);
    v29 = *(v12 + 96);
    v29(v23, v11);
    if (v26(&v4[v24], v11) == v28)
    {
      v29(&v4[v24], v11);
      v30 = type metadata accessor for WaveformState.SamplingMode();
      v31 = *(*(v30 - 8) + 8);
      v31(&v4[v24], v30);
      v31(v23, v30);
LABEL_16:
      (*(v12 + 8))(v4, v11);
      return 1;
    }

    v33 = type metadata accessor for WaveformState.SamplingMode();
    (*(*(v33 - 8) + 8))(v23, v33);
  }

  else if ((v27 == enum case for WaveformState.hidden(_:) || v27 == enum case for WaveformState.paused(_:) || v27 == enum case for WaveformState.buffering(_:)) && v26(&v4[v24], v11) == v27)
  {
    goto LABEL_16;
  }

  sub_1000095E8(v4, &qword_101188110);
  return 0;
}

uint64_t sub_10027317C(uint64_t a1)
{
  v3 = *(v1 + 32);
  if (v3 && (v4 = [v3 tracklist], v5 = objc_msgSend(v4, "playingItem"), v4, v5))
  {
    [v5 duration];
    v6 = v11;
  }

  else
  {
    v6 = 0;
  }

  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v7 = (*(*qword_101218AC8 + 360))();
  v8 = [v7 route];

  if (v8)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v9 = MPAVEndpointRoute.canReceiveAudioSamples.getter();
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 1;
  }

  return sub_100272624(a1, v6, v9 & 1);
}

void sub_1002732FC()
{
  swift_beginAccess();
  v40 = v0;
  v1 = *(v0 + 48);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(v0 + 48) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v36 = v9;
  for (i = v8; v7; v8 = i)
  {
LABEL_11:
    while (1)
    {
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = v9;
      v14 = (*(v9 + 48) + ((v10 << 11) | (32 * v12)));
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = v14[3];
      swift_beginAccess();
      v19 = *(*(v40 + 48) + 16);

      if (!v19)
      {
        break;
      }

      sub_1006BE598(v15, v16, v17, v18);
      if ((v20 & 1) == 0)
      {
        break;
      }

      swift_endAccess();

      v9 = v13;
      v8 = i;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v38 = v17;
    v39 = v15;
    swift_endAccess();
    if (qword_10117F488 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000060E4(v21, qword_101187F18);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    v25 = v17;
    v24 = v39;
    if (os_log_type_enabled(v22, v23))
    {
      v26 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v41 = v35;
      *v26 = 136446210;

      v27 = String.init<A>(describing:)();
      v29 = sub_1000105AC(v27, v28, &v41);
      v24 = v39;

      *(v26 + 4) = v29;
      v25 = v38;
      _os_log_impl(&_mh_execute_header, v22, v23, "Removing invalid token with id=%{public}s", v26, 0xCu);
      sub_10000959C(v35);
    }

    swift_beginAccess();
    v30 = sub_1006BE598(v24, v16, v25, v18);
    v32 = v31;

    if (v32)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = *(v40 + 48);
      v41 = v34;
      *(v40 + 48) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1006C8430();
        v34 = v41;
      }

      sub_1004089D0(v30, v34);
      *(v40 + 48) = v34;
    }

    swift_endAccess();
    v9 = v36;
  }

LABEL_7:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      sub_100270E5C();
      return;
    }

    v7 = *(v3 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1002736A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100274D98(&qword_101188108, type metadata accessor for WaveformPlayer.ListenerToken);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 48);
  v4 = *(v3 + 56);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_100275188;
  a2[1] = v6;
}

uint64_t sub_100273780()
{
  swift_getKeyPath();
  sub_100274D98(&qword_101188108, type metadata accessor for WaveformPlayer.ListenerToken);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_100273830@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100274D98(&qword_101188108, type metadata accessor for WaveformPlayer.ListenerToken);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 64);
  v4 = *(v3 + 72);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1002750D4;
  a2[1] = v6;
}

uint64_t sub_100273908(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  sub_100274D98(&qword_101188108, type metadata accessor for WaveformPlayer.ListenerToken);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_100273A10(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_101188100);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  swift_getKeyPath();
  v33 = v1;
  sub_100274D98(&qword_101188108, type metadata accessor for WaveformPlayer.ListenerToken);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtCC5Music14WaveformPlayer13ListenerToken__displayState;
  swift_beginAccess();
  sub_100274F60(v1 + v7, v6);
  v8 = sub_100272C40(a1);
  sub_1000095E8(v6, &qword_101188100);
  if ((v8 & 1) == 0)
  {
    v9 = sub_100273DE8();
    v11 = v10;
    swift_getKeyPath();
    v32 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_100274F60(v2 + v7, v6);
    v12 = sub_100273DE8();
    v14 = v13;
    sub_1000095E8(v6, &qword_101188100);
    if (qword_10117F488 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000060E4(v15, qword_101187F18);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v29 = v9;
      v19 = v18;
      v30 = swift_slowAlloc();
      v32 = v30;
      *v19 = 136315650;
      swift_getKeyPath();
      v28 = v12;
      v31 = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v20 = *(v2 + 64);

      v22 = v20(v21);
      v24 = v23;

      v25 = sub_1000105AC(v22, v24, &v32);

      *(v19 + 4) = v25;
      *(v19 + 12) = 2080;
      v26 = sub_1000105AC(v29, v11, &v32);

      *(v19 + 14) = v26;
      *(v19 + 22) = 2080;
      v27 = sub_1000105AC(v28, v14, &v32);

      *(v19 + 24) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s changing waveform state %s -> %s", v19, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t sub_100273DE8()
{
  v1 = v0;
  v2 = 0x6E6564646968;
  v3 = sub_10010FC20(&qword_101188100);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  sub_100274F60(v1, &v14 - v7);
  v9 = type metadata accessor for WaveformState();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    sub_100274F60(v8, v6);
    v11 = (*(v10 + 88))(v6, v9);
    if (v11 == enum case for WaveformState.playing(_:))
    {
      (*(v10 + 96))(v6, v9);
      v12 = type metadata accessor for WaveformState.SamplingMode();
      (*(*(v12 - 8) + 8))(v6, v12);
      v2 = 0x676E6979616C70;
    }

    else if (v11 != enum case for WaveformState.hidden(_:))
    {
      if (v11 == enum case for WaveformState.paused(_:))
      {
        v2 = 0x646573756170;
      }

      else if (v11 == enum case for WaveformState.buffering(_:))
      {
        v2 = 0x6E69726566667562;
      }

      else
      {
        (*(v10 + 8))(v6, v9);
        v2 = 0x6E776F6E6B6E75;
      }
    }
  }

  sub_1000095E8(v8, &qword_101188100);
  return v2;
}

uint64_t sub_100274064@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100274D98(&qword_101188108, type metadata accessor for WaveformPlayer.ListenerToken);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtCC5Music14WaveformPlayer13ListenerToken__displayState;
  swift_beginAccess();
  return sub_100274F60(v3 + v4, a2);
}

uint64_t sub_10027412C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10010FC20(&qword_101188100);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100274F60(a1, &v9[-v5]);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_100274D98(&qword_101188108, type metadata accessor for WaveformPlayer.ListenerToken);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000095E8(v6, &qword_101188100);
}

uint64_t sub_100274274(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101188100);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  sub_100274F60(a2, &v12[-v8]);
  v10 = OBJC_IVAR____TtCC5Music14WaveformPlayer13ListenerToken__displayState;
  swift_beginAccess();
  sub_100274F60(a1 + v10, v7);
  swift_beginAccess();
  sub_100274FEC(v9, a1 + v10);
  swift_endAccess();
  sub_100273A10(v7);
  sub_1000095E8(v7, &qword_101188100);
  return sub_1000095E8(v9, &qword_101188100);
}

uint64_t sub_1002743BC()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101188100);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for WaveformState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  swift_getKeyPath();
  v24 = v0;
  sub_100274D98(&qword_101188108, type metadata accessor for WaveformPlayer.ListenerToken);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtCC5Music14WaveformPlayer13ListenerToken__displayState;
  swift_beginAccess();
  sub_100274F60(v1 + v12, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000095E8(v4, &qword_101188100);
    return 0;
  }

  (*(v6 + 32))(v11, v4, v5);
  (*(v6 + 16))(v8, v11, v5);
  v14 = (*(v6 + 88))(v8, v5);
  if (v14 == enum case for WaveformState.playing(_:))
  {
    (*(v6 + 96))(v8, v5);
    v15 = *AccessibilityString.nowPlayingWafeformLabel.unsafeMutableAddressor();
    v16 = *(v6 + 8);

    v16(v11, v5);
    v17 = type metadata accessor for WaveformState.SamplingMode();
    (*(*(v17 - 8) + 8))(v8, v17);
    return v15;
  }

  else
  {
    if (v14 == enum case for WaveformState.hidden(_:))
    {
      (*(v6 + 8))(v11, v5);
      return 0;
    }

    if (v14 != enum case for WaveformState.paused(_:))
    {
      v20 = enum case for WaveformState.buffering(_:);
      v21 = *(v6 + 8);
      v22 = v14;
      v21(v11, v5);
      if (v22 != v20)
      {
        v21(v8, v5);
      }

      return 0;
    }

    v18 = *AccessibilityString.pausedWafeformLabel.unsafeMutableAddressor();
    v19 = *(v6 + 8);

    v19(v11, v5);
    return v18;
  }
}

Swift::Int sub_100274774()
{
  v1 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1)
  {
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t sub_1002747E0()
{
  v1 = *(v0 + 24);
  result = String.hash(into:)();
  if (v1)
  {

    return String.hash(into:)();
  }

  return result;
}

Swift::Int sub_100274844()
{
  v1 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1)
  {
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t sub_1002748C8()
{

  sub_1000095E8(v0 + OBJC_IVAR____TtCC5Music14WaveformPlayer13ListenerToken__displayState, &qword_101188100);
  v1 = OBJC_IVAR____TtCC5Music14WaveformPlayer13ListenerToken___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1002749A8(uint64_t result)
{
  if (result)
  {
    return MPCPlayerResponse.playState(for:)();
  }

  return result;
}

uint64_t sub_100274A18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (result)
  {
    return a4(a2, a3);
  }

  return result;
}

uint64_t sub_100274A60()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101187F18);
  sub_1000060E4(v0, qword_101187F18);
  return static Logger.music(_:)();
}

uint64_t type metadata accessor for WaveformPlayer.ListenerToken()
{
  result = qword_101188030;
  if (!qword_101188030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100274B3C()
{
  sub_100274C24();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100274C24()
{
  if (!qword_101188040)
  {
    type metadata accessor for WaveformState();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101188040);
    }
  }
}

unint64_t sub_100274C90()
{
  result = qword_1011880E8;
  if (!qword_1011880E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011880E8);
  }

  return result;
}

uint64_t sub_100274CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v12 & 1) != 0))
  {
    if (a4)
    {
      if (a8 && (a3 == a7 && a4 == a8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!a8)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_100274D98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100274E28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_1002719D4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100274EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101188100);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100274F60(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101188100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100274FEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101188100);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100275094()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 64) = v0[3];
  *(v1 + 72) = v2;
}

uint64_t sub_1002750D4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100275104(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_100275148()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 48) = v0[3];
  *(v1 + 56) = v2;
}

uint64_t sub_100275188@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1002751E0()
{
  type metadata accessor for ArtworkPrefetchingController.CacheReference();
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000001ALL;
  *(result + 24) = 0x8000000100E42D30;
  *(result + 32) = 0;
  *(result + 40) = 1;
  qword_101188118 = result;
  return result;
}

uint64_t sub_100275240()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1002752B8()
{
  LOBYTE(v5) = 11;
  v0 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v0))
  {
    v1 = [objc_opt_self() currentDevice];
    v2 = [v1 userInterfaceIdiom];

    if (v2 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v6 != 255)
      {
        sub_10004ADFC(v5, v6);
        v3 = v6 ^ 1;
        return v3 & 1;
      }
    }

    else if (!v2)
    {
      goto LABEL_4;
    }

LABEL_8:
    v3 = 0;
    return v3 & 1;
  }

LABEL_4:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = v6;
  if (v6 == 255)
  {
    goto LABEL_8;
  }

  sub_10004ADFC(v5, v6);
  return v3 & 1;
}

uint64_t sub_10027541C(uint64_t a1, char *a2)
{
  v3 = v2;
  v79 = a1;
  v5 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v5 - 8);
  v75 = &v73 - v6;
  v7 = type metadata accessor for EditorialVideoArtworkFlavor();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v73 - v12;
  v14 = sub_10010FC20(&qword_101197A00);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v73 - v16;
  v18 = OBJC_IVAR____TtC5Music10MotionData__keyframeData;
  v83 = 0;
  v84 = -1;
  sub_10010FC20(&unk_101188178);
  Published.init(initialValue:)();
  v74 = v15;
  v19 = v15;
  v20 = v14;
  v21 = v8;
  (*(v19 + 32))(v3 + v18, v17, v20);
  *(v3 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshot) = 0;
  *(v3 + OBJC_IVAR____TtC5Music10MotionData_shouldSnapshotKeyframe) = 0;
  v22 = v3 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshotSize;
  *v22 = 0;
  *(v22 + 8) = 0;
  *(v22 + 16) = 1;
  *(v3 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshotTask) = 0;
  v23 = OBJC_IVAR____TtC5Music10MotionData_videoArtwork;
  v24 = type metadata accessor for VideoArtwork();
  v76 = *(v24 - 8);
  v25 = *(v76 + 16);
  v73 = v23;
  v77 = v24;
  v25(v3 + v23, v79);
  v26 = OBJC_IVAR____TtC5Music10MotionData_videoFlavor;
  v27 = *(v21 + 16);
  v27(v3 + OBJC_IVAR____TtC5Music10MotionData_videoFlavor, a2, v7);
  v78 = a2;
  v27(v13, a2, v7);
  static EditorialVideoArtworkFlavor.motionDetailSquare.getter();
  sub_100278F14(&qword_1011882F0, &type metadata accessor for EditorialVideoArtworkFlavor);
  LOBYTE(v23) = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v21 + 8);
  v28(v11, v7);
  if (v23)
  {
    v28(v13, v7);
    v29 = sub_100278D30();
    v31 = v30;
    bottom = UIEdgeInsetsZero.bottom;
    v33 = objc_opt_self();
    v34 = [v33 currentDevice];
    v35 = [v34 userInterfaceIdiom];

    sub_1001CF564(v35 == 1, 0, v80, v29, v31, bottom);
    if (v82 >= v81)
    {
      v36 = v81;
    }

    else
    {
      v36 = v82;
    }

    v37 = objc_opt_self();
    v38 = [v37 mainScreen];
    [v38 scale];
    v40 = v39;

    v41 = sub_100278D30();
    v43 = v42;
    v44 = [v33 currentDevice];
    v45 = [v44 userInterfaceIdiom];

    sub_1001CF564(v45 == 1, 0, &v83, v41, v43, bottom);
    if (v86 >= v85)
    {
      v46 = v85;
    }

    else
    {
      v46 = v86;
    }

    v47 = v36 * v40;
    goto LABEL_11;
  }

  static EditorialVideoArtworkFlavor.motionDetailTall.getter();
  v48 = dispatch thunk of static Equatable.== infix(_:_:)();
  v28(v11, v7);
  v28(v13, v7);
  if (v48)
  {
    v37 = objc_opt_self();
    v49 = [v37 mainScreen];
    [v49 bounds];
    v51 = v50;

    v52 = [v37 mainScreen];
    [v52 scale];
    v54 = v53;

    v47 = v51 * v54;
    v55 = [v37 mainScreen];
    [v55 bounds];
    v57 = v56;

    v46 = v57 * 4.0 / 3.0;
LABEL_11:
    v58 = [v37 mainScreen];
    [v58 scale];
    v60 = v59;

    v61 = (v3 + OBJC_IVAR____TtC5Music10MotionData_keyframeSize);
    *v61 = v47;
    v61[1] = v46 * v60;
    v62 = type metadata accessor for TaskPriority();
    v63 = v75;
    (*(*(v62 - 8) + 56))(v75, 1, 1, v62);
    type metadata accessor for MainActor();

    v64 = static MainActor.shared.getter();
    v65 = swift_allocObject();
    v65[2] = v64;
    v65[3] = &protocol witness table for MainActor;
    v65[4] = v3;
    sub_1001F4CB8(0, 0, v63, &unk_100EC3970, v65);

    v28(v78, v7);
    (*(v76 + 8))(v79, v77);
    return v3;
  }

  if (qword_10117F548 != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  sub_1000060E4(v66, static Logger.NowPlaying.motion);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&_mh_execute_header, v67, v68, "MotionData: MINP unsupported artwork flavor. Use detail square or tall.", v69, 2u);
  }

  v28(v78, v7);
  v70 = *(v76 + 8);
  v71 = v77;
  v70(v79, v77);
  v70(v3 + v73, v71);
  v28((v3 + v26), v7);
  (*(v74 + 8))(v3 + OBJC_IVAR____TtC5Music10MotionData__keyframeData, v20);

  type metadata accessor for MotionData();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_100275D08()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1001AB600;

  return sub_100275DB4();
}

uint64_t sub_100275DB4()
{
  v1[12] = v0;
  v2 = type metadata accessor for EditorialVideoArtworkFlavor();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  sub_10010FC20(&unk_101195200);
  v1[16] = swift_task_alloc();
  sub_10010FC20(&unk_101184060);
  v1[17] = swift_task_alloc();
  v3 = type metadata accessor for Artwork();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[21] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[22] = v5;
  v1[23] = v4;

  return _swift_task_switch(sub_100275F74, v5, v4);
}

uint64_t sub_100275F74()
{
  v31 = v0;
  if (qword_10117F548 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[24] = sub_1000060E4(v1, static Logger.NowPlaying.motion);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v30 = v5;
    *v4 = 136446210;
    type metadata accessor for VideoArtwork();
    sub_100278F14(&qword_101188310, &type metadata accessor for VideoArtwork);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = sub_1000105AC(v6, v7, &v30);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching keyframe data for %{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  v9 = v0[16];
  v10 = v0[17];
  v11 = v0[12];
  VideoArtwork.previewFrame.getter();
  v12 = *(v11 + OBJC_IVAR____TtC5Music10MotionData_keyframeSize);
  v13 = *(v11 + OBJC_IVAR____TtC5Music10MotionData_keyframeSize + 8);
  v14 = [objc_opt_self() currentTraitCollection];
  [v14 displayScale];
  v16 = v15;

  static Artwork.CropStyle.boundedBox.getter();
  v17 = type metadata accessor for Artwork.CropStyle();
  (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
  v18 = enum case for Artwork.ImageFormat.heic(_:);
  v19 = type metadata accessor for Artwork.ImageFormat();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v9, v18, v19);
  (*(v20 + 56))(v9, 0, 1, v19);
  if (qword_10117F490 != -1)
  {
    swift_once();
  }

  v21 = qword_101188118;
  v0[25] = qword_101188118;
  v22 = sub_100278F14(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference);

  v23 = swift_task_alloc();
  v0[26] = v23;
  *v23 = v0;
  v23[1] = sub_100276374;
  v25 = v0[16];
  v26 = v0[17];
  v27.n128_u64[0] = v12;
  v28.n128_u64[0] = v13;

  v24.n128_f64[0] = 1.0 / v16;
  return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v26, v25, v21, v22, v27, v28, v24);
}

uint64_t sub_100276374(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *(*v2 + 152);
  v7 = *(*v2 + 144);
  v8 = *(*v2 + 136);
  v9 = *(*v2 + 128);
  *(v4 + 216) = a1;
  *(v4 + 224) = v1;

  sub_1000095E8(v9, &unk_101195200);
  sub_1000095E8(v8, &unk_101184060);
  (*(v6 + 8))(v5, v7);
  v10 = *(v3 + 184);
  v11 = *(v3 + 176);
  if (v1)
  {
    v12 = sub_1002767C4;
  }

  else
  {
    v12 = sub_100276598;
  }

  return _swift_task_switch(v12, v11, v10);
}

uint64_t sub_100276598()
{
  v1 = v0 + 10;

  static EditorialVideoArtworkFlavor.motionDetailSquare.getter();
  sub_100278F14(&unk_101189E50, &type metadata accessor for EditorialVideoArtworkFlavor);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  if (v0[2] == v0[4] && v0[3] == v0[5])
  {
    (*(v3 + 8))(v0[15], v0[13]);

    v5 = 0;
    v6 = 11;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (*(v3 + 8))(v2, v4);

    v8 = (v7 & 1) == 0;
    if (v7)
    {
      v6 = 11;
    }

    else
    {
      v1 = v0 + 8;
      v6 = 9;
    }

    v5 = v8;
  }

  v9 = v0[27];
  swift_getKeyPath();
  swift_getKeyPath();
  *v1 = v9;
  LOBYTE(v0[v6]) = v5;

  v10 = v9;
  static Published.subscript.setter();
  v11 = v0[27];
  sub_100276998();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002767C4()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "MotionData: MINP keyframe image download failed with error: %{public}@.", v3, 0xCu);
    sub_1000095E8(v4, &unk_101183D70);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 48) = 0;
  *(v0 + 56) = -1;

  static Published.subscript.setter();

  v6 = *(v0 + 8);

  return v6();
}

void sub_100276998()
{
  v1 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v1 - 8);
  v3 = &v40 - v2;
  v4 = type metadata accessor for EditorialVideoArtworkFlavor();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v40 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v40 - v13;
  if (*(v0 + OBJC_IVAR____TtC5Music10MotionData_shouldSnapshotKeyframe) != 1 || (v15 = (v0 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshotSize), (*(v0 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshotSize + 16) & 1) != 0) || (v17 = *v15, v16 = v15[1], v41 = v12, swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , v18 = v45, v45 == 255))
  {
    v29 = OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshotTask;
    if (*(v0 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshotTask))
    {

      sub_10010FC20(&qword_1011824A0);
      Task.cancel()();
    }

    *(v0 + v29) = 0;
    goto LABEL_19;
  }

  v19 = v44;
  v20 = *(v0 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshot);
  if (!v20 || (([v20 frame], v22 == v17) ? (v23 = v21 == v16) : (v23 = 0), !v23))
  {
    v40 = v0;
    LOBYTE(v44) = 11;
    v24 = sub_100025CE0();
    v25 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v24);
    v26 = [objc_opt_self() currentDevice];
    v27 = [v26 userInterfaceIdiom];

    if ((v25 & 1) == 0)
    {
      if (v27 || (v18 & 1) == 0)
      {
        goto LABEL_33;
      }

      v28 = v19;
      static EditorialVideoArtworkFlavor.motionDetailTall.getter();
      sub_100278F14(&unk_101189E50, &type metadata accessor for EditorialVideoArtworkFlavor);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v44 == v42 && v45 == v43)
      {
        (*(v5 + 8))(v8, v41);
        goto LABEL_29;
      }

      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (*(v5 + 8))(v8, v41);
      goto LABEL_35;
    }

    if (v27 != 1)
    {
      if (v27 || (v18 & 1) == 0)
      {
        goto LABEL_33;
      }

      v28 = v19;
      static EditorialVideoArtworkFlavor.motionDetailTall.getter();
      sub_100278F14(&unk_101189E50, &type metadata accessor for EditorialVideoArtworkFlavor);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v44 == v42 && v45 == v43)
      {
        (*(v5 + 8))(v14, v41);
LABEL_29:

LABEL_36:
        v32 = OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshotTask;
        v33 = v40;
        if (*(v40 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshotTask))
        {

          sub_10010FC20(&qword_1011824A0);
          Task.cancel()();
        }

        v34 = type metadata accessor for TaskPriority();
        (*(*(v34 - 8) + 56))(v3, 1, 1, v34);
        type metadata accessor for MainActor();
        v35 = v28;

        v36 = v33;
        v37 = static MainActor.shared.getter();
        v38 = swift_allocObject();
        *(v38 + 16) = v37;
        *(v38 + 24) = &protocol witness table for MainActor;
        *(v38 + 32) = v35;
        *(v38 + 40) = v17;
        *(v38 + 48) = v16;
        *(v38 + 56) = v36;
        v39 = sub_10086E3AC(0, 0, v3, &unk_100EC39D0, v38);
        sub_10004ADFC(v19, v18);

        *(v36 + v32) = v39;
LABEL_19:

        return;
      }

      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (*(v5 + 8))(v14, v41);

      if (v31)
      {
        goto LABEL_36;
      }

      goto LABEL_32;
    }

    if ((v18 & 1) == 0)
    {
      v28 = v19;
      static EditorialVideoArtworkFlavor.motionDetailSquare.getter();
      sub_100278F14(&unk_101189E50, &type metadata accessor for EditorialVideoArtworkFlavor);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v44 == v42 && v45 == v43)
      {
        (*(v5 + 8))(v11, v41);
        goto LABEL_29;
      }

      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (*(v5 + 8))(v11, v41);
LABEL_35:

      if (v30)
      {
        goto LABEL_36;
      }

LABEL_32:
      sub_10004ADFC(v19, v18);
    }
  }

LABEL_33:
  sub_10004ADFC(v19, v18);
}

uint64_t sub_1002770A0(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a7;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v7 + 24) = a6;
  v8 = type metadata accessor for CancellationError();
  *(v7 + 56) = v8;
  *(v7 + 64) = *(v8 - 8);
  *(v7 + 72) = swift_task_alloc();
  v9 = sub_10010FC20(&qword_1011882F8);
  *(v7 + 80) = v9;
  *(v7 + 88) = *(v9 - 8);
  *(v7 + 96) = swift_task_alloc();
  type metadata accessor for NowPlayingArtworkBackgroundTreatment();
  *(v7 + 104) = swift_task_alloc();
  sub_10010FC20(&qword_101183A20);
  *(v7 + 112) = swift_task_alloc();
  v10 = sub_10010FC20(&qword_101188300);
  *(v7 + 120) = v10;
  *(v7 + 128) = *(v10 - 8);
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 152) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 160) = v12;
  *(v7 + 168) = v11;

  return _swift_task_switch(sub_1002772DC, v12, v11);
}

uint64_t sub_1002772DC()
{
  v26 = v0;
  v2 = *(v0 + 17);
  v1 = *(v0 + 18);
  v3 = *(v0 + 15);
  v4 = *(v0 + 16);
  v5 = *(v0 + 14);
  v7 = v0[4];
  v6 = v0[5];
  v8 = *(v0 + 3);
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  NowPlayingArtworkBackgroundTreatment.init(contentMode:)();
  *(swift_task_alloc() + 16) = v8;
  NowPlayingArtworkBackground.init(videoURL:namespace:treatment:staticArt:)();

  (*(v4 + 16))(v2, v1, v3);
  v10 = objc_allocWithZone(sub_10010FC20(&qword_101188308));
  v11 = _UIHostingView.init(rootView:)();
  *(v0 + 22) = v11;
  [v11 setFrame:{0.0, 0.0, v7, v6}];
  if (qword_10117F548 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  *(v0 + 23) = sub_1000060E4(v12, static Logger.NowPlaying.motion);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v15 = 136446466;
    type metadata accessor for VideoArtwork();
    sub_100278F14(&qword_101188310, &type metadata accessor for VideoArtwork);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = sub_1000105AC(v16, v17, v25);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    v19 = CGSize.description.getter();
    v21 = sub_1000105AC(v19, v20, v25);

    *(v15 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "Snapshotting keyframe for %{public}s @ %{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  static Task<>.checkCancellation()();
  v22 = [v11 layer];
  CALayer.mcui.getter();

  v23 = swift_task_alloc();
  *(v0 + 24) = v23;
  *v23 = v0;
  v23[1] = sub_100277BBC;

  return MCUINamespace<A>.snapshot()();
}

uint64_t sub_100277BBC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[25] = a1;
  v4[26] = v1;

  (*(v3[11] + 8))(v3[12], v3[10]);
  v5 = v3[21];
  v6 = v3[20];
  if (v1)
  {
    v7 = sub_1002784A8;
  }

  else
  {
    v7 = sub_100277D4C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100277D4C()
{
  v56 = v0;
  v1 = *(v0 + 208);

  static Task<>.checkCancellation()();
  if (v1)
  {

    *(v0 + 16) = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    if (swift_dynamicCast())
    {

      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.default.getter();

      v4 = os_log_type_enabled(v2, v3);
      v5 = *(v0 + 176);
      v6 = *(v0 + 144);
      v7 = *(v0 + 120);
      v8 = *(v0 + 128);
      if (v4)
      {
        v53 = *(v0 + 144);
        v9 = swift_slowAlloc();
        v55[0] = swift_slowAlloc();
        *v9 = 136446466;
        type metadata accessor for VideoArtwork();
        sub_100278F14(&qword_101188310, &type metadata accessor for VideoArtwork);
        v10 = dispatch thunk of CustomStringConvertible.description.getter();
        v12 = sub_1000105AC(v10, v11, v55);

        *(v9 + 4) = v12;
        *(v9 + 12) = 2082;
        v13 = CGSize.description.getter();
        v15 = sub_1000105AC(v13, v14, v55);

        *(v9 + 14) = v15;
        _os_log_impl(&_mh_execute_header, v2, v3, "Cancelled snapshot for %{public}s @ %{public}s", v9, 0x16u);
        swift_arrayDestroy();

        (*(v8 + 8))(v53, v7);
      }

      else
      {

        (*(v8 + 8))(v6, v7);
      }

      (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    }

    else
    {

      swift_errorRetain();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      v35 = os_log_type_enabled(v33, v34);
      v36 = *(v0 + 144);
      v37 = *(v0 + 120);
      v38 = *(v0 + 128);
      if (v35)
      {
        v54 = *(v0 + 176);
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v55[0] = swift_slowAlloc();
        *v39 = 136446722;
        type metadata accessor for VideoArtwork();
        v52 = v37;
        sub_100278F14(&qword_101188310, &type metadata accessor for VideoArtwork);
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        v43 = sub_1000105AC(v41, v42, v55);

        *(v39 + 4) = v43;
        *(v39 + 12) = 2082;
        v44 = CGSize.description.getter();
        v46 = sub_1000105AC(v44, v45, v55);

        *(v39 + 14) = v46;
        *(v39 + 22) = 2112;
        swift_errorRetain();
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 24) = v47;
        *v40 = v47;
        _os_log_impl(&_mh_execute_header, v33, v34, "Error with snapshot for %{public}s @ %{public}s: %@", v39, 0x20u);
        sub_1000095E8(v40, &unk_101183D70);

        swift_arrayDestroy();

        (*(v38 + 8))(v36, v52);
      }

      else
      {

        (*(v38 + 8))(v36, v37);
      }

      v48 = *(v0 + 48);
      v49 = *(v48 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshot);
      *(v48 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshot) = 0;
    }
  }

  else
  {

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v55[0] = swift_slowAlloc();
      *v18 = 136446466;
      type metadata accessor for VideoArtwork();
      sub_100278F14(&qword_101188310, &type metadata accessor for VideoArtwork);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = sub_1000105AC(v19, v20, v55);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2082;
      v22 = CGSize.description.getter();
      v24 = sub_1000105AC(v22, v23, v55);

      *(v18 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v16, v17, "Did snapshot keyframe for %{public}s @ %{public}s", v18, 0x16u);
      swift_arrayDestroy();
    }

    v25 = *(v0 + 200);
    v26 = *(v0 + 176);
    v27 = *(v0 + 144);
    v28 = *(v0 + 120);
    v29 = *(v0 + 128);
    v30 = *(v0 + 48);
    v31 = [objc_allocWithZone(UIImageView) initWithImage:v25];
    [v26 frame];
    [v31 setFrame:?];

    (*(v29 + 8))(v27, v28);
    v32 = *(v30 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshot);
    *(v30 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshot) = v31;
  }

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_1002784A8()
{
  v38 = v0;

  *(v0 + 16) = *(v0 + 208);
  swift_errorRetain();
  sub_10010FC20(&qword_1011824A0);
  if (swift_dynamicCast())
  {

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();

    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 176);
    v5 = *(v0 + 144);
    v6 = *(v0 + 120);
    v7 = *(v0 + 128);
    if (v3)
    {
      v35 = *(v0 + 144);
      v8 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v8 = 136446466;
      type metadata accessor for VideoArtwork();
      sub_100278F14(&qword_101188310, &type metadata accessor for VideoArtwork);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = sub_1000105AC(v9, v10, &v37);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2082;
      v12 = CGSize.description.getter();
      v14 = sub_1000105AC(v12, v13, &v37);

      *(v8 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v1, v2, "Cancelled snapshot for %{public}s @ %{public}s", v8, 0x16u);
      swift_arrayDestroy();

      (*(v7 + 8))(v35, v6);
    }

    else
    {

      (*(v7 + 8))(v5, v6);
    }

    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  }

  else
  {

    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 144);
    v19 = *(v0 + 120);
    v20 = *(v0 + 128);
    if (v17)
    {
      v36 = *(v0 + 176);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v21 = 136446722;
      type metadata accessor for VideoArtwork();
      v34 = v19;
      sub_100278F14(&qword_101188310, &type metadata accessor for VideoArtwork);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = sub_1000105AC(v23, v24, &v37);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      v26 = CGSize.description.getter();
      v28 = sub_1000105AC(v26, v27, &v37);

      *(v21 + 14) = v28;
      *(v21 + 22) = 2112;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 24) = v29;
      *v22 = v29;
      _os_log_impl(&_mh_execute_header, v15, v16, "Error with snapshot for %{public}s @ %{public}s: %@", v21, 0x20u);
      sub_1000095E8(v22, &unk_101183D70);

      swift_arrayDestroy();

      (*(v20 + 8))(v18, v34);
    }

    else
    {

      (*(v20 + 8))(v18, v19);
    }

    v30 = *(v0 + 48);
    v31 = *(v30 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshot);
    *(v30 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshot) = 0;
  }

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1002789F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  Image.init(uiImage:)();
  (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
  v9 = Image.resizable(capInsets:resizingMode:)();

  result = (*(v5 + 8))(v7, v4);
  *a2 = v9;
  return result;
}

uint64_t sub_100278B20()
{
  v1 = OBJC_IVAR____TtC5Music10MotionData_videoArtwork;
  v2 = type metadata accessor for VideoArtwork();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Music10MotionData_videoFlavor;
  v4 = type metadata accessor for EditorialVideoArtworkFlavor();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC5Music10MotionData__keyframeData;
  v6 = sub_10010FC20(&qword_101197A00);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_100278C7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002F3F4;

  return sub_100275D08();
}

double sub_100278D30()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 bounds];
  v3 = v2;

  v4 = [v0 mainScreen];
  [v4 bounds];
  v6 = v5;

  v7 = [v0 mainScreen];
  [v7 bounds];
  v9 = v8;
  v11 = v10;

  if (v6 >= v3)
  {
    v12 = [v0 mainScreen];
    [v12 bounds];

    return v11;
  }

  return v9;
}

uint64_t sub_100278E34(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = *(v1 + 7);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002F3F4;

  return sub_1002770A0(v7, v8, a1, v4, v5, v6, v9);
}

uint64_t sub_100278F14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100278FC4()
{
  result = type metadata accessor for BaselineSpacer.Configuration.Mode(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100279060()
{
  sub_1002790B8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1002790B8()
{
  if (!qword_101188430)
  {
    v0 = type metadata accessor for Font.TextStyle();
    if (!v1)
    {
      atomic_store(v0, &qword_101188430);
    }
  }
}

uint64_t sub_100279114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_100279198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_100279260@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v33 = type metadata accessor for BaselineSpacer.Scaled(0);
  __chkstk_darwin(v33);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Font.TextStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  __chkstk_darwin(v11);
  v29 = &v29 - v12;
  v31 = sub_10010FC20(&qword_1011884E8);
  __chkstk_darwin(v31);
  v14 = (&v29 - v13);
  v15 = type metadata accessor for BaselineSpacer.Configuration.Mode(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for BaselineSpacer.Configuration(0);
  __chkstk_darwin(v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  sub_1002798AC(v2, v20, type metadata accessor for BaselineSpacer.Configuration);
  sub_1002797F4(v20, v17);
  v22 = sub_10010FC20(&qword_1011883A8);
  if ((*(*(v22 - 8) + 48))(v17, 1, v22) == 1)
  {
    *v14 = *(v2 + *(v18 + 20));
    swift_storeEnumTagMultiPayload();
    sub_100279914();
    sub_100279968();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v24 = v29;
    (*(v5 + 32))(v29, v17, v4);
    v25 = *(v21 + *(v18 + 20));
    v26 = *(v5 + 16);
    v26(v10, v24, v4);
    v34 = v25;
    v26(v7, v10, v4);
    sub_100279858();
    v27 = v30;
    ScaledMetric.init(wrappedValue:relativeTo:)();
    v28 = *(v5 + 8);
    v28(v10, v4);
    sub_1002798AC(v27, v14, type metadata accessor for BaselineSpacer.Scaled);
    swift_storeEnumTagMultiPayload();
    sub_100279914();
    sub_100279968();
    _ConditionalContent<>.init(storage:)();
    sub_1002799C0(v27);
    return (v28)(v24, v4);
  }
}

double sub_100279684@<D0>(uint64_t a1@<X8>)
{
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  result = *&v7;
  *(a1 + 48) = v7;
  return result;
}

double sub_10027971C@<D0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_101188508);
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  result = *&v7;
  *(a1 + 48) = v7;
  return result;
}

uint64_t sub_1002797F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BaselineSpacer.Configuration.Mode(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100279858()
{
  result = qword_1011884F0;
  if (!qword_1011884F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011884F0);
  }

  return result;
}

uint64_t sub_1002798AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100279914()
{
  result = qword_1011884F8;
  if (!qword_1011884F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011884F8);
  }

  return result;
}

unint64_t sub_100279968()
{
  result = qword_101188500;
  if (!qword_101188500)
  {
    type metadata accessor for BaselineSpacer.Scaled(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101188500);
  }

  return result;
}

uint64_t sub_1002799C0(uint64_t a1)
{
  v2 = type metadata accessor for BaselineSpacer.Scaled(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100279A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100279ACC()
{
  if (!qword_101188578)
  {
    sub_100279858();
    v0 = type metadata accessor for ScaledMetric();
    if (!v1)
    {
      atomic_store(v0, &qword_101188578);
    }
  }
}

unint64_t sub_100279B38()
{
  result = qword_1011885A8;
  if (!qword_1011885A8)
  {
    sub_1001109D0(&qword_1011885B0);
    sub_100279914();
    sub_100279968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011885A8);
  }

  return result;
}

unint64_t sub_100279BFC()
{
  result = qword_1011885B8;
  if (!qword_1011885B8)
  {
    sub_1001109D0(&qword_1011885C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011885B8);
  }

  return result;
}

uint64_t sub_100279C80(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100279C98(uint64_t a1, uint64_t a2)
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

uint64_t sub_100279CB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_100279CFC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100279D6C@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v55 = type metadata accessor for BlendMode();
  v2 = *(v55 - 8);
  __chkstk_darwin(v55);
  v48 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v54 = &v47 - v5;
  __chkstk_darwin(v6);
  v53 = &v47 - v7;
  v49 = type metadata accessor for EnvironmentValues();
  v8 = *(v49 - 8);
  __chkstk_darwin(v49);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10010FC20(&qword_1011885D0);
  __chkstk_darwin(v50);
  v12 = &v47 - v11;
  v52 = sub_10010FC20(&qword_1011885D8);
  __chkstk_darwin(v52);
  v51 = &v47 - v13;
  v62 = *v1;
  v14 = *(v1 + 16);
  v60 = *(v1 + 32);
  v61 = *(v1 + 40);
  v58 = *(v1 + 48);
  v59 = *(v1 + 56);
  v15 = swift_allocObject();
  v16 = *(v1 + 16);
  v15[1] = *v1;
  v15[2] = v16;
  v15[3] = *(v1 + 32);
  *(v15 + 57) = *(v1 + 41);
  v17 = v60;
  v18 = v61;
  sub_100118E9C(&v62, v57);
  sub_100030444(v14);
  sub_1000089F8(&v60, v57, &qword_1011885E0);
  sub_1000089F8(&v58, v57, &qword_1011885E8);
  sub_10027A374(v1, v12);
  v19 = sub_10010FC20(&qword_1011885F0);
  v20 = *(v19 + 52);
  v21 = static Color.primary.getter();
  MoreLabel.init(color:)(v21, &v12[v20]);
  v22 = &v12[*(v19 + 56)];
  *v22 = sub_10027A93C;
  v22[1] = v15;
  if (v18 == 1)
  {
    v23 = v49;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000095E8(&v60, &qword_1011885E0);
    v23 = v49;
    (*(v8 + 8))(v10, v49);
    v17 = v57[0];
  }

  v25 = v54;
  if (v17 == 2 || (v17 & 1) == 0)
  {
    v26 = 2;
  }

  else
  {
    v26 = 3;
  }

  v27 = v58;
  v28 = v59;
  KeyPath = swift_getKeyPath();
  v30 = &v12[*(v50 + 36)];
  *v30 = KeyPath;
  *(v30 + 1) = v26;
  v30[16] = 0;
  if ((v28 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v31 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000095E8(&v58, &qword_1011885E8);
    (*(v8 + 8))(v10, v23);
    v27 = v57[0];
  }

  v32 = v55;
  v33 = *(v2 + 104);
  if ((v27 & 0xFE) == 2)
  {
    v33(v25, enum case for BlendMode.normal(_:), v55);
    v34 = *(v2 + 32);
  }

  else
  {
    v35 = &enum case for BlendMode.plusDarker(_:);
    if ((v27 & 1) == 0)
    {
      v35 = &enum case for BlendMode.plusLighter(_:);
    }

    v36 = v48;
    v33(v48, *v35, v55);
    v34 = *(v2 + 32);
    v34(v25, v36, v32);
  }

  v37 = v53;
  v34(v53, v25, v32);
  v38 = v51;
  v39 = v52;
  v34(&v51[*(v52 + 36)], v37, v32);
  sub_10027A96C(v12, v38);
  v40 = AccessibilityIdentifier.containerDetailHeaderDescription.unsafeMutableAddressor();
  v41 = *v40;
  v42 = v40[1];
  v43 = v40[2];
  v44 = v40[3];
  v45 = sub_10027A9DC();

  View.accessibilityIdentifier(_:)(v41, v42, v43, v44, v39, v45);

  return sub_1000095E8(v38, &qword_1011885D8);
}

double sub_10027A374@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&qword_101188610);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v33 = type metadata accessor for Font.TextStyle();
  v7 = *(v33 - 8);
  __chkstk_darwin(v33);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a1;
  v43 = 2570;
  v44 = 0xE200000000000000;
  v41 = 10;
  v42 = 0xE100000000000000;
  sub_100009838();
  v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v31 = v14;
  v15 = *(a1 + 6);
  v43 = v15;
  LOBYTE(v44) = *(a1 + 56);
  if (v44 == 1)
  {
    v16 = v15;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000095E8(&v43, &qword_1011885E8);
    (*(v11 + 8))(v13, v10);
    v16 = v34;
  }

  if ((v16 & 0xFE) == 2)
  {
    v18 = 1.0;
    v19 = static HierarchicalShapeStyle.secondary.getter();
  }

  else
  {
    v18 = 0.6;
    v19 = static HierarchicalShapeStyle.primary.getter();
  }

  v20 = v19;
  v21 = v33;
  (*(v7 + 104))(v9, enum case for Font.TextStyle.subheadline(_:), v33);
  v22 = type metadata accessor for Font.Design();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  v23 = static Font.system(_:design:weight:)();
  sub_1000095E8(v6, &qword_101188610);
  (*(v7 + 8))(v9, v21);
  KeyPath = swift_getKeyPath();
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(a2 + 20) = v18;
  v25 = v36;
  *(a2 + 88) = v37;
  v26 = v39;
  *(a2 + 104) = v38;
  *(a2 + 120) = v26;
  *(a2 + 136) = v40;
  result = *&v34;
  v28 = v35;
  *(a2 + 40) = v34;
  *(a2 + 56) = v28;
  v29 = v31;
  *a2 = v32;
  *(a2 + 8) = v29;
  *(a2 + 16) = v20;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = v23;
  *(a2 + 72) = v25;
  return result;
}

uint64_t sub_10027A7BC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_10027A830@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for Font.TextStyle.subheadline(_:);
  v3 = type metadata accessor for Font.TextStyle();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_10027A8A4(uint64_t a1)
{
  result = sub_10027A8CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10027A8CC()
{
  result = qword_1011885C8;
  if (!qword_1011885C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011885C8);
  }

  return result;
}

uint64_t sub_10027A93C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_10027A96C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011885D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10027A9DC()
{
  result = qword_1011885F8;
  if (!qword_1011885F8)
  {
    sub_1001109D0(&qword_1011885D8);
    sub_10027AA68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011885F8);
  }

  return result;
}

unint64_t sub_10027AA68()
{
  result = qword_101188600;
  if (!qword_101188600)
  {
    sub_1001109D0(&qword_1011885D0);
    sub_100020674(&qword_101188608, &qword_1011885F0);
    sub_100020674(&qword_1011860B8, &unk_10119A2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101188600);
  }

  return result;
}

unint64_t sub_10027AB4C()
{
  result = qword_101188618;
  if (!qword_101188618)
  {
    sub_1001109D0(&qword_101188620);
    sub_10027A9DC();
    sub_10027ABD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101188618);
  }

  return result;
}

unint64_t sub_10027ABD8()
{
  result = qword_101181038;
  if (!qword_101181038)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101181038);
  }

  return result;
}

unint64_t sub_10027AC3C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1701667182;
    v6 = 0x655073746E696F70;
    if (a1 != 2)
    {
      v6 = 0x6165724165666173;
    }

    if (a1)
    {
      v5 = 0x69536E6565726373;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    v2 = 0x6863746F4E736168;
    if (a1 != 7)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x615272656E726F63;
    if (a1 != 4)
    {
      v3 = 0x6D6F696469;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_10027AD7C()
{
  Hasher.init(_seed:)();
  sub_100109BFC();
  return Hasher._finalize()();
}

Swift::Int sub_10027ADCC()
{
  Hasher.init(_seed:)();
  sub_100109BFC();
  return Hasher._finalize()();
}

unint64_t sub_10027AE10@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10028252C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10027AE40@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10027AC3C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10027AE88@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10028252C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10027AEBC(uint64_t a1)
{
  v2 = sub_100282A8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10027AEF8(uint64_t a1)
{
  v2 = sub_100282A8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10027AF34(void *a1)
{
  v3 = v1;
  v5 = sub_10010FC20(&qword_1011886C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - v7;
  sub_10000954C(a1, a1[3]);
  sub_100282A8C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11[0]) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11[0] = *(v3 + 16);
    v12 = 1;
    type metadata accessor for CGSize(0);
    sub_100282BF0(&qword_1011886D0, type metadata accessor for CGSize);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v11[0] = *(v3 + 32);
    v12 = 2;
    sub_100282B9C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9 = *(v3 + 56);
    v11[0] = *(v3 + 40);
    v11[1] = v9;
    v12 = 3;
    type metadata accessor for UIEdgeInsets(0);
    sub_100282BF0(&qword_1011886E0, type metadata accessor for UIEdgeInsets);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v11[0] = *(v3 + 72);
    v12 = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11[0]) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11[0]) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11[0]) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11[0]) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 sub_10027B284@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100282578(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

void sub_10027B2FC(void *a1, uint64_t a2, char *a3, uint64_t a4, void *a5, uint64_t a6, double a7)
{
  v232 = a6;
  v228 = a3;
  v13 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v13 - 8);
  v231 = (&v219 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = &v219 - v16;
  __chkstk_darwin(v18);
  v20 = (&v219 - v19);
  v21 = &v7[OBJC_IVAR____TtCC5Music31MultiDeviceTesterViewController10DeviceView_device];
  v22 = *(a2 + 80);
  *(v21 + 4) = *(a2 + 64);
  *(v21 + 5) = v22;
  *(v21 + 48) = *(a2 + 96);
  v23 = *(a2 + 16);
  *v21 = *a2;
  *(v21 + 1) = v23;
  v24 = *(a2 + 48);
  *(v21 + 2) = *(a2 + 32);
  *(v21 + 3) = v24;
  v25 = OBJC_IVAR____TtCC5Music31MultiDeviceTesterViewController10DeviceView_viewController;
  *&v7[OBJC_IVAR____TtCC5Music31MultiDeviceTesterViewController10DeviceView_viewController] = a1;
  v26 = a1;
  sub_100282B34(a2, &v239);
  v234 = v26;
  [v26 _setIgnoresWrapperViewForContentOverlayInsets:1];
  [*&v7[v25] setAdditionalSafeAreaInsets:{*(a2 + 40), *(a2 + 48), *(a2 + 56), *(a2 + 64)}];
  v27 = [*&v7[v25] view];
  if (!v27)
  {
    goto LABEL_41;
  }

  v28 = v27;
  v230 = a4;
  v227 = v17;
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];

  v29 = [*&v7[v25] view];
  if (!v29)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v30 = v29;
  v31 = [v29 layer];

  [v31 setCornerRadius:*(a2 + 72)];
  v32 = [*&v7[v25] view];
  if (!v32)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v33 = v32;
  v34 = [v32 layer];

  [v34 setCornerCurve:kCACornerCurveContinuous];
  v35 = type metadata accessor for MultiDeviceTesterViewController.DeviceView();
  v238.receiver = v7;
  v238.super_class = v35;
  v36 = objc_msgSendSuper2(&v238, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100282C9C(v234);
  if (*(a2 + 80))
  {
    v37 = a7 + -81.0;
    v38 = *(a2 + 24);
    v39 = 1.0;
    if (v37 < v38)
    {
      v39 = v37 / v38;
    }
  }

  else
  {
    v40 = [objc_opt_self() mainScreen];
    [v40 _pointsPerInch];
    v42 = v41;

    v38 = *(a2 + 24);
    v39 = v42 / *(a2 + 32);
  }

  v226 = a5;
  v43 = *(a2 + 16);
  v235 = OBJC_IVAR____TtCC5Music31MultiDeviceTesterViewController10DeviceView_viewController;
  v44 = [*&v36[OBJC_IVAR____TtCC5Music31MultiDeviceTesterViewController10DeviceView_viewController] view];
  if (!v44)
  {
    goto LABEL_44;
  }

  v45 = v44;
  v46 = v39 * v43;
  v47 = v39 * v38;
  CGAffineTransformMakeTranslation(&v239, (v43 - v39 * v43) * -0.5, (v38 - v39 * v38) * -0.5);
  CGAffineTransformScale(&v237, &v239, v39, v39);
  v239 = v237;
  [v45 setTransform:&v239];

  v48 = [objc_allocWithZone(UIView) init];
  v49 = UIView.forAutolayout.getter();

  v233 = objc_opt_self();
  v50 = [v233 tertiarySystemFillColor];
  [v49 setBackgroundColor:v50];

  v51 = [v49 layer];
  [v51 setCornerRadius:10.0];

  v52 = [v49 layer];
  [v52 setMaskedCorners:3];

  v53 = [v49 layer];
  [v53 setCornerCurve:kCACornerCurveContinuous];

  v54 = v36;
  v229 = v49;
  [v54 addSubview:v49];
  v55 = [objc_allocWithZone(UILabel) init];
  v56 = UIView.forAutolayout.getter();

  v239.a = 0.0;
  v239.b = -2.68156159e154;
  _StringGuts.grow(_:)(26);
  sub_100282B34(a2, &v239);

  *&v239.a = *a2;
  v57._countAndFlagsBits = 10;
  v57._object = 0xE100000000000000;
  String.append(_:)(v57);
  if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v43 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v43 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  *&v237.a = v43;
  v58._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v58);

  v59._countAndFlagsBits = 120;
  v59._object = 0xE100000000000000;
  String.append(_:)(v59);
  if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v38 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v38 >= 9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  *&v237.a = v38;
  v60._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v60);

  v61._countAndFlagsBits = 0x657265646E65520ALL;
  v61._object = 0xED00002073612064;
  String.append(_:)(v61);
  if (COERCE_UNSIGNED_INT64(fabs(v39 * v43)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v46 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v46 >= 9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *&v237.a = v46;
  v62._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v62);

  v63._countAndFlagsBits = 120;
  v63._object = 0xE100000000000000;
  String.append(_:)(v63);
  if (COERCE_UNSIGNED_INT64(fabs(v39 * v38)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v47 <= -9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v47 >= 9.22337204e18)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v223 = kCACornerCurveContinuous;
  *&v237.a = v47;
  v64._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v64);

  v65 = String._bridgeToObjectiveC()();

  [v56 setText:v65];

  [v56 setNumberOfLines:3];
  [v56 setAdjustsFontSizeToFitWidth:1];
  [v56 setMinimumScaleFactor:0.3];
  SymbolButton.Configuration.init()(v20);

  *v20 = 0xD000000000000013;
  v20[1] = 0x8000000100E40AC0;
  v66 = SymbolButton.Background.tertiary.unsafeMutableAddressor();
  v67 = *v66;
  v68 = v66[3];
  v224 = v56;
  v69 = v20[25];
  v70 = v20[26];
  v236 = v36;
  v71 = *(v66 + 1);
  v20[25] = v67;
  *(v20 + 13) = v71;
  v20[28] = v68;
  v72 = v71;

  v73 = v72;
  sub_100282F24(v69, v70);
  v220 = v20;
  v74 = v20;
  v75 = v227;
  sub_100282F68(v74, v227);
  v76 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v77 = swift_allocObject();
  v78 = *(a2 + 32);
  *(v77 + 72) = *(a2 + 48);
  v79 = *(a2 + 80);
  *(v77 + 88) = *(a2 + 64);
  *(v77 + 104) = v79;
  v80 = *(a2 + 16);
  *(v77 + 24) = *a2;
  *(v77 + 40) = v80;
  *(v77 + 16) = v76;
  *(v77 + 120) = *(a2 + 96);
  *(v77 + 56) = v78;
  v81 = v230;
  *(v77 + 128) = v228;
  *(v77 + 136) = v81;
  v82 = type metadata accessor for SymbolButton(0);
  v83 = objc_allocWithZone(v82);
  v225 = a2;
  sub_100282B34(a2, &v239);
  v84 = v54;

  v85 = SymbolButton.init(configuration:handler:)(v75, sub_100282FCC, v77);
  v86 = v233;
  v87 = [v233 labelColor];
  v228 = v85;
  [v85 setTintColor:v87];

  v88 = v231;
  SymbolButton.Configuration.init()(v231);
  v89 = v66[3];
  v90 = v88[25];
  v91 = v88[26];
  v92 = *(v66 + 1);
  v88[25] = *v66;
  *(v88 + 13) = v92;
  v88[28] = v89;
  v93 = v92;

  v94 = v93;
  sub_100282F24(v90, v91);

  *v88 = 0xD000000000000011;
  v88[1] = 0x8000000100E42E50;
  sub_100282F68(v88, v75);
  v95 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v96 = swift_allocObject();
  v97 = v232;
  v96[2] = v226;
  v96[3] = v97;
  v96[4] = v95;
  v98 = objc_allocWithZone(v82);

  v99 = SymbolButton.init(configuration:handler:)(v75, sub_100282FDC, v96);
  v100 = [v86 labelColor];
  [v99 setTintColor:v100];

  v227 = [objc_allocWithZone(UILayoutGuide) init];
  [v84 addLayoutGuide:?];
  v226 = v224;
  [v84 addSubview:?];
  v101 = [*&v236[v235] view];
  if (!v101)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v102 = v101;
  [v84 addSubview:v101];

  v222 = sub_10010FC20(&qword_101183990);
  v103 = swift_allocObject();
  *(v103 + 16) = xmmword_100EBC6D0;
  v219 = v99;
  v104 = v228;
  *(v103 + 32) = v99;
  *(v103 + 40) = v104;
  v105 = objc_allocWithZone(UIStackView);
  sub_100009F78(0, &qword_101181620);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v107 = [v105 initWithArrangedSubviews:isa];

  v108 = UIView.forAutolayout.getter();
  [v108 setAxis:1];
  [v108 setSpacing:10.0];
  v224 = v108;
  [v84 addSubview:?];
  v109 = [*&v236[v235] view];
  if (!v109)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v110 = v109;
  [v84 addSubview:v109];

  v111 = [objc_allocWithZone(UIView) init];
  v112 = UIView.forAutolayout.getter();

  v113 = v225;
  [v112 setHidden:(*(v225 + 96) & 1) == 0];
  v114 = v233;
  v115 = [v233 blackColor];
  [v112 setBackgroundColor:v115];

  v116 = [v112 layer];
  [v116 setMaskedCorners:12];

  v117 = [v112 layer];
  v118 = v223;
  [v117 setCornerCurve:v223];

  v119 = [v112 layer];
  [v119 setCornerRadius:20.0];

  v221 = v112;
  [v84 addSubview:v112];
  v120 = [objc_allocWithZone(UIView) init];
  v121 = UIView.forAutolayout.getter();

  [v121 setHidden:(*(v113 + 97) & 1) == 0];
  v122 = [v114 whiteColor];
  [v121 setBackgroundColor:v122];

  v123 = [v121 layer];
  [v123 setCornerRadius:4.0];

  v124 = [v121 layer];
  [v124 setCornerCurve:v118];

  v233 = v121;
  [v84 addSubview:v121];
  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_100EC3DE0;
  v126 = v229;
  v127 = [v229 leadingAnchor];
  v128 = [v84 leadingAnchor];

  v129 = [v127 constraintEqualToAnchor:v128];
  *(v125 + 32) = v129;
  v130 = [v126 trailingAnchor];
  v131 = [v84 trailingAnchor];

  v132 = [v130 constraintEqualToAnchor:v131];
  *(v125 + 40) = v132;
  v133 = [v126 topAnchor];
  v134 = [v84 topAnchor];

  v135 = [v133 constraintEqualToAnchor:v134];
  *(v125 + 48) = v135;
  v136 = [v126 heightAnchor];
  v137 = [v84 heightAnchor];

  v138 = [v136 constraintEqualToAnchor:v137 multiplier:0.5];
  *(v125 + 56) = v138;
  v139 = v226;
  v140 = [v226 topAnchor];

  v141 = [v84 topAnchor];
  v142 = [v140 constraintEqualToAnchor:v141 constant:10.0];

  *(v125 + 64) = v142;
  v143 = [v139 leadingAnchor];

  v144 = [v84 leadingAnchor];
  v145 = [v143 constraintEqualToAnchor:v144 constant:10.0];

  *(v125 + 72) = v145;
  v146 = [v139 bottomAnchor];

  v147 = v227;
  v148 = [v227 topAnchor];
  v149 = [v146 constraintEqualToAnchor:v148 constant:-10.0];

  *(v125 + 80) = v149;
  v150 = v224;
  v151 = [v224 centerYAnchor];

  v152 = [v139 centerYAnchor];
  v153 = [v151 constraintEqualToAnchor:v152];

  *(v125 + 88) = v153;
  v154 = [v150 leadingAnchor];

  v155 = [v139 trailingAnchor];
  v156 = [v154 constraintEqualToAnchor:v155 constant:10.0];

  *(v125 + 96) = v156;
  v157 = [v150 trailingAnchor];

  v158 = [v84 trailingAnchor];
  v159 = [v157 constraintEqualToAnchor:v158 constant:-10.0];

  *(v125 + 104) = v159;
  v160 = [v147 leadingAnchor];
  v161 = [v84 leadingAnchor];

  v162 = [v160 constraintEqualToAnchor:v161];
  *(v125 + 112) = v162;
  v163 = [v147 trailingAnchor];
  v164 = [v84 trailingAnchor];

  v165 = [v163 constraintEqualToAnchor:v164];
  *(v125 + 120) = v165;
  v166 = [v147 bottomAnchor];
  v167 = [v84 bottomAnchor];

  v168 = [v166 constraintEqualToAnchor:v167];
  *(v125 + 128) = v168;
  v169 = [v147 widthAnchor];
  v170 = [v169 constraintEqualToConstant:v39 * v43];

  *(v125 + 136) = v170;
  v171 = [v147 heightAnchor];
  v172 = [v171 constraintEqualToConstant:v39 * v38];

  *(v125 + 144) = v172;
  v173 = v235;
  v174 = [*&v236[v235] view];
  if (!v174)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v175 = v174;
  v176 = [v174 leadingAnchor];

  v177 = [v147 leadingAnchor];
  v178 = [v176 constraintEqualToAnchor:v177];

  *(v125 + 152) = v178;
  v179 = [*&v236[v173] view];
  if (!v179)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v180 = v179;
  v181 = [v179 topAnchor];

  v182 = [v147 topAnchor];
  v183 = [v181 constraintEqualToAnchor:v182];

  *(v125 + 160) = v183;
  v184 = v236;
  v185 = [*&v236[v173] view];
  v186 = v173;
  v187 = v221;
  if (!v185)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v188 = v185;
  v189 = [v185 widthAnchor];

  v190 = [v189 constraintEqualToConstant:v43];
  *(v125 + 168) = v190;
  v191 = [*&v184[v186] view];
  if (!v191)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v192 = v191;
  v193 = [v191 heightAnchor];

  v194 = [v193 constraintEqualToConstant:v38];
  *(v125 + 176) = v194;
  v195 = [v187 widthAnchor];
  v196 = [v195 constraintEqualToConstant:v39 * 209.0];

  *(v125 + 184) = v196;
  v197 = [v187 heightAnchor];
  v198 = [v197 constraintEqualToConstant:v39 * 30.0];

  *(v125 + 192) = v198;
  v199 = [v187 topAnchor];
  v200 = [*&v184[v186] view];
  if (v200)
  {
    v201 = v200;
    sub_100282B6C(v225);
    v236 = objc_opt_self();
    v202 = [v201 topAnchor];

    v203 = [v199 constraintEqualToAnchor:v202];
    *(v125 + 200) = v203;
    v204 = [v187 centerXAnchor];
    v205 = [v84 centerXAnchor];

    v206 = [v204 constraintEqualToAnchor:v205];
    *(v125 + 208) = v206;
    v207 = v233;
    v208 = [v233 heightAnchor];
    v209 = [v208 constraintEqualToConstant:5.0];

    *(v125 + 216) = v209;
    v210 = [v207 widthAnchor];
    v211 = [v210 constraintEqualToConstant:148.0];

    *(v125 + 224) = v211;
    v212 = [v207 centerXAnchor];
    v213 = [v84 centerXAnchor];

    v214 = [v212 constraintEqualToAnchor:v213];
    *(v125 + 232) = v214;
    v215 = [v207 bottomAnchor];
    v216 = [v84 bottomAnchor];

    v217 = [v215 constraintEqualToAnchor:v216 constant:-8.0];
    *(v125 + 240) = v217;
    sub_100009F78(0, &qword_1011838A0);
    v218 = Array._bridgeToObjectiveC()().super.isa;

    [v236 activateConstraints:v218];

    sub_100282FE8(v231);
    sub_100282FE8(v220);
    return;
  }

LABEL_51:
  __break(1u);
}

void sub_10027CE00(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, id))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v7 = Strong;
  v8 = *(Strong + OBJC_IVAR____TtCC5Music31MultiDeviceTesterViewController10DeviceView_viewController);

  v9 = [v8 view];
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [v9 transform];
  v24 = v27;
  v25 = aBlock;
  v10 = v28;
  v11 = v29;
  aBlock = 0x3FF0000000000000uLL;
  *&v27 = 0;
  *(&v27 + 1) = 0x3FF0000000000000;
  v28 = 0;
  v29 = 0;
  [v9 setTransform:&aBlock];
  v12 = [v9 layer];
  [v12 setCornerRadius:0.0];

  [v9 bounds];
  v15 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v13, v14}];
  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_100283044;
  *(v17 + 24) = v16;
  v28 = sub_1001EBE40;
  v29 = v17;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v27 = sub_10006BD7C;
  *(&v27 + 1) = &unk_1010A3010;
  v18 = _Block_copy(&aBlock);

  v19 = v9;

  v20 = [v15 imageWithActions:v18];
  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  aBlock = v25;
  v27 = v24;
  v28 = v10;
  v29 = v11;
  [v19 setTransform:&aBlock];
  v21 = [v19 layer];
  [v21 setCornerRadius:*(a3 + 72)];

  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = v22;
    a4(v22, v20);

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_10027D140(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }

  else
  {
    __break(1u);
  }
}

void sub_10027D208(void *a1, objc_method *a2, uint64_t a3)
{
  v6 = [a1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = v6;
  [v6 transform];
  v15 = v18;
  v16 = v17;
  v8 = v19;
  v9 = v20;

  v10 = [a1 view];
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = v10;
  v17 = 0x3FF0000000000000uLL;
  *&v18 = 0;
  *(&v18 + 1) = 0x3FF0000000000000;
  v19 = 0;
  v20 = 0;
  [v10 setTransform:&v17];

  Implementation = method_getImplementation(a2);
  (Implementation)(a1, a3);
  v13 = [a1 view];
  if (v13)
  {
    v14 = v13;
    v17 = v16;
    v18 = v15;
    v19 = v8;
    v20 = v9;
    [v13 setTransform:&v17];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_10027D328(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_10027D428()
{
  v1 = v0;
  v107.receiver = v0;
  v107.super_class = type metadata accessor for MultiDeviceTesterViewController();
  objc_msgSendSuper2(&v107, "viewDidLoad");
  static LifecyclePatrol.isEnabled = 0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2;
  v4 = [objc_opt_self() secondarySystemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = OBJC_IVAR____TtC5Music31MultiDeviceTesterViewController_scrollView;
  [*&v1[OBJC_IVAR____TtC5Music31MultiDeviceTesterViewController_scrollView] setContentInset:{0.0, 20.0, 0.0, 20.0}];
  v6 = OBJC_IVAR____TtC5Music31MultiDeviceTesterViewController_stackView;
  [*&v1[OBJC_IVAR____TtC5Music31MultiDeviceTesterViewController_stackView] setAxis:0];
  [*&v1[v6] setAlignment:1];
  [*&v1[v6] setSpacing:10.0];
  [*&v1[v5] addSubview:*&v1[v6]];
  v7 = [v1 view];
  if (!v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v7;
  v104 = v6;
  [v7 addSubview:*&v1[v5]];

  sub_100009F78(0, &qword_101183A18);
  sub_100009F78(0, &qword_1011839A0);
  v108.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  isa = UIButton.init(type:primaryAction:)(UIButtonTypeSystem, v108).super.super.super.super.isa;
  v10 = UIView.forAutolayout.getter();

  [v10 setShowsMenuAsPrimaryAction:{1, 0, 0, 0, UIScreen.Dimensions.size.getter, 0}];
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  aBlock[4] = sub_1002831AC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003D57B8;
  aBlock[3] = &unk_1010A3150;
  v12 = _Block_copy(aBlock);
  v13 = v1;

  [v10 _setMenuProvider:v12];
  _Block_release(v12);
  v14 = [v13 view];
  if (!v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = v14;
  v16 = v10;
  [v15 addSubview:v16];

  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  v18 = v13;
  v102 = v17;
  v109.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v19 = UIButton.init(type:primaryAction:)(UIButtonTypeSystem, v109).super.super.super.super.isa;
  v20 = UIView.forAutolayout.getter();

  v21 = [v18 view];
  if (!v21)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = v21;
  v105 = v20;
  [v22 addSubview:?];

  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  v24 = v18;
  v103 = v23;
  v110.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v25 = UIButton.init(type:primaryAction:)(UIButtonTypeSystem, v110).super.super.super.super.isa;
  v26 = UIView.forAutolayout.getter();

  v27 = [v24 view];
  if (!v27)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v28 = v27;
  v29 = v26;
  [v28 addSubview:v29];

  sub_10010FC20(&qword_101183990);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100EC3DF0;
  v31 = [v16 topAnchor];

  v32 = [v24 view];
  if (!v32)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v33 = v32;
  v34 = [v32 layoutMarginsGuide];

  v35 = [v34 topAnchor];
  v36 = [v31 constraintEqualToAnchor:v35];

  *(v30 + 32) = v36;
  v37 = [v16 leadingAnchor];

  v38 = [v24 view];
  if (!v38)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v39 = v38;
  v40 = [v38 layoutMarginsGuide];

  v41 = [v40 leadingAnchor];
  v42 = [v37 constraintEqualToAnchor:v41];

  *(v30 + 40) = v42;
  v43 = [v105 topAnchor];

  v44 = [v24 view];
  if (!v44)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v45 = v44;
  v46 = [v44 layoutMarginsGuide];

  v47 = [v46 topAnchor];
  v48 = [v43 constraintEqualToAnchor:v47];

  *(v30 + 48) = v48;
  v49 = [v105 trailingAnchor];

  v50 = [v29 leadingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50 constant:-20.0];

  *(v30 + 56) = v51;
  v52 = [v29 topAnchor];

  v53 = [v24 view];
  if (!v53)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v54 = v53;
  v55 = [v53 layoutMarginsGuide];

  v56 = [v55 topAnchor];
  v57 = [v52 constraintEqualToAnchor:v56];

  *(v30 + 64) = v57;
  v58 = [v29 trailingAnchor];

  v59 = [v24 view];
  if (!v59)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v60 = v59;
  v61 = [v59 layoutMarginsGuide];

  v62 = [v61 trailingAnchor];
  v63 = [v58 constraintEqualToAnchor:v62];

  *(v30 + 72) = v63;
  v64 = [*&v1[v104] widthAnchor];
  v65 = [*&v1[v5] widthAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];

  LODWORD(v67) = 1132068864;
  v68 = [v66 withPriority:v67];

  *(v30 + 80) = v68;
  v69 = [*&v1[v104] leadingAnchor];
  v70 = [*&v1[v5] leadingAnchor];
  v71 = [v69 constraintEqualToAnchor:v70];

  *(v30 + 88) = v71;
  v72 = [*&v1[v104] trailingAnchor];
  v73 = [*&v1[v5] trailingAnchor];
  v74 = [v72 constraintEqualToAnchor:v73];

  *(v30 + 96) = v74;
  v75 = [*&v1[v104] topAnchor];
  v76 = [*&v1[v5] topAnchor];
  v77 = [v75 constraintEqualToAnchor:v76];

  *(v30 + 104) = v77;
  v78 = [*&v1[v104] bottomAnchor];
  v79 = [*&v1[v5] bottomAnchor];
  v80 = [v78 constraintEqualToAnchor:v79];

  *(v30 + 112) = v80;
  v81 = [*&v1[v5] topAnchor];
  v82 = [v16 bottomAnchor];

  v83 = [v81 constraintEqualToAnchor:v82 constant:20.0];
  *(v30 + 120) = v83;
  v84 = [*&v1[v5] leadingAnchor];
  v85 = [v24 view];
  if (!v85)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v86 = v85;
  v87 = [v85 leadingAnchor];

  v88 = [v84 constraintEqualToAnchor:v87];
  *(v30 + 128) = v88;
  v89 = [*&v1[v5] trailingAnchor];
  v90 = [v24 view];
  if (!v90)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v91 = v90;
  v92 = [v90 trailingAnchor];

  v93 = [v89 constraintEqualToAnchor:v92];
  *(v30 + 136) = v93;
  v94 = [*&v1[v5] bottomAnchor];
  v95 = [v24 view];
  if (v95)
  {
    v96 = v95;
    v97 = objc_opt_self();
    v98 = [v96 safeAreaLayoutGuide];

    v99 = [v98 bottomAnchor];
    v100 = [v94 constraintEqualToAnchor:v99];

    *(v30 + 144) = v100;
    sub_100009F78(0, &qword_1011838A0);
    v101 = Array._bridgeToObjectiveC()().super.isa;

    [v97 activateConstraints:v101];

    return;
  }

LABEL_27:
  __break(1u);
}

UIMenu sub_10027E1A4(uint64_t a1, uint64_t a2, char *a3)
{
  v53 = _swiftEmptyArrayStorage;
  v43 = OBJC_IVAR____TtC5Music31MultiDeviceTesterViewController_devices;
  sub_100009F78(0, &qword_1011839A0);
  v4 = 0;
  v42 = a3;
  do
  {
    v5 = &off_101099E30 + 2 * v4;
    v6 = v5[4];
    v7 = v5[5];
    v52 = _swiftEmptyArrayStorage;

    String._bridgeToObjectiveC()();
    v8 = swift_allocObject();
    v8[2] = a3;
    v8[3] = v6;
    v46 = v7;
    v47 = v6;
    v8[4] = v7;

    v9 = a3;
    children._rawValue = 0;
    v10 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v11 = *&a3[v43];
    if (!*(v11 + 16))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v12 = v52;
    v13 = sub_100019C10(v6, v7);
    if ((v14 & 1) == 0)
    {
      goto LABEL_33;
    }

    v15 = *(*(v11 + 56) + 8 * v13);
    v16 = *(v15 + 16);
    if (v16)
    {
      v44 = v10;
      v45 = v4;
      v18 = v6 == 0x656E6F685069 && v46 == 0xE600000000000000;

      v19 = 32;
      do
      {
        v20 = *(v15 + v19);
        v21 = *(v15 + v19 + 32);
        v55 = *(v15 + v19 + 16);
        v56 = v21;
        v54 = v20;
        v22 = *(v15 + v19 + 48);
        v23 = *(v15 + v19 + 64);
        v24 = *(v15 + v19 + 80);
        v60 = *(v15 + v19 + 96);
        v58 = v23;
        v59 = v24;
        v57 = v22;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          sub_100282B34(&v54, v48);
          sub_100282B34(&v54, v48);
        }

        else
        {
          v51 = v54;
          v49 = v47;
          v50 = v46;
          sub_100282B34(&v54, v48);

          sub_100282B34(&v54, v48);
          v25._countAndFlagsBits = 32;
          v25._object = 0xE100000000000000;
          String.append(_:)(v25);
          v48[0] = v49;
          v48[1] = v50;
          v49 = 0;
          v50 = 0xE000000000000000;
          sub_100009838();
          StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

          sub_100282B6C(&v54);
        }

        sub_100282B34(&v54, v48);
        String._bridgeToObjectiveC()();
        sub_100282B6C(&v54);
        v26 = swift_allocObject();
        v27 = v56;
        *(v26 + 72) = v57;
        v28 = v59;
        *(v26 + 88) = v58;
        *(v26 + 104) = v28;
        v29 = v55;
        *(v26 + 24) = v54;
        *(v26 + 40) = v29;
        *(v26 + 16) = v9;
        *(v26 + 120) = v60;
        *(v26 + 56) = v27;
        v30 = v9;
        v31 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v19 += 104;
        --v16;
      }

      while (v16);
      v12 = v52;

      a3 = v42;
      v10 = v44;
      v4 = v45;
    }

    v32 = String._bridgeToObjectiveC()();
    if (v12 >> 62)
    {
      sub_100009F78(0, &qword_10118CDE0);

      preferredElementSize = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100009F78(0, &qword_10118CDE0);
      preferredElementSize = v12;
    }

    sub_100009F78(0, &unk_1011845F0);
    v34._object = v46;
    v34._countAndFlagsBits = v47;
    v61.value.super.isa = 0;
    v61.is_nil = v32;
    v35 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v34, 0, v61, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v4;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v4 != 8);
  v36 = v53;
  swift_arrayDestroy();
  v37 = String._bridgeToObjectiveC()();
  LOBYTE(v7) = v37;
  if (!(v36 >> 62))
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100009F78(0, &qword_10118CDE0);
    v38 = v36;
    goto LABEL_31;
  }

LABEL_34:
  sub_100009F78(0, &qword_10118CDE0);

  v38 = _bridgeCocoaArray<A>(_:)();

LABEL_31:

  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  v62.value.super.isa = 0;
  v62.is_nil = v7;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v39, 0, v62, 0, 0xFFFFFFFFFFFFFFFFLL, v38, children);
}

void sub_10027E820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a2 + OBJC_IVAR____TtC5Music31MultiDeviceTesterViewController_stackView) arrangedSubviews];
  sub_100009F78(0, &qword_101181620);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  if (v9 < 1)
  {
LABEL_19:
    __break(1u);
    return;
  }

  for (i = 0; i != v9; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = sub_100062D50(i, v8);
    }

    else
    {
      v11 = *(v8 + 8 * i + 32);
    }

    v12 = v11;
    [v11 removeFromSuperview];
  }

LABEL_10:

  v13 = *(a2 + OBJC_IVAR____TtC5Music31MultiDeviceTesterViewController_devices);
  if (!*(v13 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v14 = sub_100019C10(a3, a4);
  if ((v15 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = *(*(v13 + 56) + 8 * v14);
  v17 = *(v16 + 16);
  if (v17)
  {

    v18 = 32;
    do
    {
      v19 = *(v16 + v18);
      v20 = *(v16 + v18 + 16);
      v25[2] = *(v16 + v18 + 32);
      v25[0] = v19;
      v25[1] = v20;
      v21 = *(v16 + v18 + 48);
      v22 = *(v16 + v18 + 64);
      v23 = *(v16 + v18 + 80);
      v26 = *(v16 + v18 + 96);
      v25[4] = v22;
      v25[5] = v23;
      v25[3] = v21;
      sub_100282B34(v25, v24);
      sub_10027F1B4(v25);
      sub_100282B6C(v25);
      v18 += 104;
      --v17;
    }

    while (v17);
  }

  sub_10027F7A0();
}

void sub_10027EA00(uint64_t a1, uint64_t a2)
{
  v2 = [*(a2 + OBJC_IVAR____TtC5Music31MultiDeviceTesterViewController_stackView) arrangedSubviews];
  sub_100009F78(0, &qword_101181620);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = sub_100062D50(i, v3);
    }

    else
    {
      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    [v6 removeFromSuperview];
  }

LABEL_10:
}

uint64_t sub_10027EB5C(char a1)
{
  v2 = v1;
  v18.receiver = v2;
  v18.super_class = type metadata accessor for MultiDeviceTesterViewController();
  objc_msgSendSuper2(&v18, "viewDidAppear:", a1 & 1);
  v4 = [objc_opt_self() standardUserDefaults];
  v16 = 0xD00000000000001DLL;
  v17 = 0x8000000100E42E30;
  sub_100009838();
  NSUserDefaults.subscript.getter(&v16, &v19);

  if (!*(&v20 + 1))
  {
    return sub_100011DF0(&v19);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v7 = v16;
    v6 = v17;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_10010FC20(&qword_1011886E8);
    sub_1002830E0(&qword_101188718, sub_100283158);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v8 = v19;
    v9 = *(v19 + 16);
    if (v9)
    {
      v10 = 32;
      do
      {
        v11 = *(v8 + v10);
        v12 = *(v8 + v10 + 32);
        v20 = *(v8 + v10 + 16);
        v21 = v12;
        v19 = v11;
        v13 = *(v8 + v10 + 48);
        v14 = *(v8 + v10 + 64);
        v15 = *(v8 + v10 + 80);
        v25 = *(v8 + v10 + 96);
        v23 = v14;
        v24 = v15;
        v22 = v13;
        sub_100282B34(&v19, &v16);
        sub_10027F1B4(&v19);
        sub_100282B6C(&v19);
        v10 += 104;
        --v9;
      }

      while (v9);
    }

    return sub_10002C064(v7, v6);
  }

  return result;
}