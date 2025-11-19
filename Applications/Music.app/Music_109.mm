Swift::Void __swiftcall QRCodeOverlayViewController.dismissAnimated()()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v12 = sub_100BD6928;
  v13 = v2;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_10002BC98;
  v11 = &unk_1010E7568;
  v3 = _Block_copy(&v8);
  v4 = v0;

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v12 = sub_100BD6930;
  v13 = v5;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_1005C3688;
  v11 = &unk_1010E75B8;
  v6 = _Block_copy(&v8);
  v7 = v4;

  [v1 animateWithDuration:v3 animations:v6 completion:0.25];
  _Block_release(v6);
  _Block_release(v3);
}

id sub_100BD5778(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel) setAlpha:0.0];
  result = [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView) setEffect:0];
  if (*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager))
  {

    BrightnessManager.resetBrightnessToSystemDefault()();
  }

  return result;
}

char *sub_100BD5A0C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image] = 0;
  *&v4[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = 0;
  v10 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView;
  v11 = [objc_allocWithZone(UIImageView) init];
  v12 = UIView.forAutolayout.getter();

  *&v5[v10] = v12;
  v13 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer;
  *&v5[v13] = [objc_allocWithZone(CALayer) init];
  v14 = type metadata accessor for QRCodeOverlayViewController.ContainerView();
  v36.receiver = v5;
  v36.super_class = v14;
  v15 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView;
  v17 = *&v15[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView];
  v18 = v15;
  [v18 addSubview:v17];
  v19 = objc_opt_self();
  sub_10010FC20(&qword_1011B5630);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100EBDC10;
  v21 = [*&v15[v16] leadingAnchor];
  v22 = [v18 leadingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v20 + 32) = v23;
  v24 = [*&v15[v16] trailingAnchor];
  v25 = [v18 trailingAnchor];

  v26 = [v24 constraintEqualToAnchor:v25];
  *(v20 + 40) = v26;
  v27 = [*&v15[v16] topAnchor];
  v28 = [v18 topAnchor];

  v29 = [v27 constraintEqualToAnchor:v28];
  *(v20 + 48) = v29;
  v30 = [*&v15[v16] bottomAnchor];
  v31 = [v18 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v20 + 56) = v32;
  sub_100009F78(0, qword_1011B21C0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 activateConstraints:isa];

  sub_100009F78(0, &unk_1011B7AC0);
  static UITraitCollection.systemTraitsAffectingColorAppearance.getter();
  v35[3] = v14;
  v35[0] = v18;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_10000959C(v35);
  return v18;
}

Swift::Void __swiftcall QRCodeOverlayViewController.ContainerView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QRCodeOverlayViewController.ContainerView();
  objc_msgSendSuper2(&v2, "layoutSubviews");
  sub_100009F78(0, &qword_1011B6F58);
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  static CATransaction.performWithoutAnimation(_:)(sub_100BD6948);
}

void sub_100BD5E94(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView);
  v2 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer);
  [v1 bounds];
  [v2 setFrame:?];
}

void sub_100BD5FC8()
{
  v1 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
  if (v1)
  {
    v2 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer;
    v3 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer];
    v4 = kCAFilterSourceIn;
    v15 = v1;
    [v3 setCompositingFilter:v4];
    v5 = *&v0[v2];
    v6 = [v0 traitCollection];
    v7 = [v15 resolvedColorWithTraitCollection:v6];

    v8 = [v7 CGColor];
    [v5 setBackgroundColor:v8];

    v9 = [*&v0[v2] superlayer];
    if (v9)
    {
      v14 = v9;

      v10 = v14;
    }

    else
    {
      v12 = [*&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView] layer];
      v13 = *&v0[v2];
      [v12 addSublayer:v13];

      v10 = v15;
    }
  }

  else
  {
    v11 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer];

    [v11 removeFromSuperlayer];
  }
}

id sub_100BD61F4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *QRCodeOverlayViewController.ImageViewRepresentable.makeUIView(context:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image];
  *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image] = a4;
  v13 = a4;

  [*&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView] setImage:v13];

  if ((a3 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v8 + 8))(v10, v7);
    a2 = v19[1];
  }

  if (a2)
  {
    sub_100009F78(0, &qword_1011B4940);

    v15 = UIColor.init(_:)();
    v16 = *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
    *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = v15;
    v17 = v15;

    sub_100BD5FC8();
  }

  return v11;
}

void QRCodeOverlayViewController.ImageViewRepresentable.updateUIView(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image);
  *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image) = a5;
  v14 = a5;

  [*(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView) setImage:v14];

  if ((a4 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v10 + 8))(v12, v9);
    a3 = v19[1];
  }

  if (a3)
  {
    sub_100009F78(0, &qword_1011B4940);

    v16 = UIColor.init(_:)();
    v17 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor);
    *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor) = v16;
    v18 = v16;

    sub_100BD5FC8();
  }
}

uint64_t sub_100BD66F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100BD6D00();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100BD675C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100BD6D00();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100BD67C0()
{
  sub_100BD6D00();
  UIViewRepresentable.body.getter();
  __break(1u);
}

void sub_100BD6868(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_100BD6958()
{
  result = qword_1011B6F60;
  if (!qword_1011B6F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B6F60);
  }

  return result;
}

void sub_100BD69C8()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) init];
  v2 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
  *(v0 + v3) = [objc_allocWithZone(CAShapeLayer) init];
  v4 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() _systemImageNamed:v5];

  v7 = [objc_allocWithZone(UIImageView) initWithImage:v6];
  *(v0 + v4) = v7;
  v8 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
  *(v0 + v8) = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
  if (qword_1011B0758 != -1)
  {
    swift_once();
  }

  v10 = [objc_opt_self() effectForBlurEffect:qword_10121B948];
  v11 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v10];

  *(v0 + v9) = v11;
  v12 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
  *(v0 + v12) = [objc_allocWithZone(UILabel) init];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView) = 0;
  v13 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
  *(v0 + v13) = [objc_allocWithZone(UIScrollView) init];
  v14 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
  *(v0 + v14) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100BD6C28()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image) = 0;
  *(v0 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor) = 0;
  v2 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView;
  v3 = [objc_allocWithZone(UIImageView) init];
  v4 = UIView.forAutolayout.getter();

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer;
  *(v1 + v5) = [objc_allocWithZone(CALayer) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100BD6D00()
{
  result = qword_1011B6FC0;
  if (!qword_1011B6FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B6FC0);
  }

  return result;
}

uint64_t Radiosity.ViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25[0] = v2[8];
  sub_10010FC20(&qword_1011B2DD8);
  State.wrappedValue.getter();
  v6 = v26[0];
  v7 = v3[5];
  v26[4] = v3[4];
  v26[5] = v7;
  v8 = v3[7];
  v26[6] = v3[6];
  v26[7] = v8;
  v9 = v3[1];
  v26[0] = *v3;
  v26[1] = v9;
  v10 = v3[3];
  v26[2] = v3[2];
  v26[3] = v10;
  v11 = sub_10010FC20(&qword_1011B6FC8);
  *(a2 + *(v11 + 40)) = v6;
  v12 = (a2 + *(v11 + 36));
  v13 = v3[5];
  v12[4] = v3[4];
  v12[5] = v13;
  v14 = v3[7];
  v12[6] = v3[6];
  v12[7] = v14;
  v15 = v3[1];
  *v12 = *v3;
  v12[1] = v15;
  v16 = v3[3];
  v12[2] = v3[2];
  v12[3] = v16;
  v17 = sub_10010FC20(&qword_1011B6FD0);
  (*(*(v17 - 8) + 16))(a2, a1, v17);
  v18 = swift_allocObject();
  v19 = v3[7];
  v18[7] = v3[6];
  v18[8] = v19;
  v18[9] = v3[8];
  v20 = v3[3];
  v18[3] = v3[2];
  v18[4] = v20;
  v21 = v3[5];
  v18[5] = v3[4];
  v18[6] = v21;
  v22 = v3[1];
  v18[1] = *v3;
  v18[2] = v22;
  v23 = (a2 + *(sub_10010FC20(&qword_1011B6FD8) + 36));
  *v23 = sub_100BD6F0C;
  v23[1] = v18;
  sub_100BD6F10(v26, v25);
  return sub_100BD6F48(v3, v25);
}

uint64_t sub_100BD6F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[7];
  v31 = v2[6];
  v32 = v5;
  v33 = v2[8];
  v6 = v2[3];
  v27 = v2[2];
  v28 = v6;
  v7 = v2[5];
  v29 = v2[4];
  v30 = v7;
  v8 = v2[1];
  v25 = *v2;
  v26 = v8;
  v24[0] = v2[8];
  sub_10010FC20(&qword_1011B2DD8);
  State.wrappedValue.getter();
  v9 = v34[0];
  v34[4] = v29;
  v34[5] = v30;
  v34[6] = v31;
  v34[7] = v32;
  v34[0] = v25;
  v34[1] = v26;
  v34[2] = v27;
  v34[3] = v28;
  v10 = sub_10010FC20(&qword_1011B6FC8);
  *(a2 + *(v10 + 40)) = v9;
  v11 = (a2 + *(v10 + 36));
  v12 = v30;
  v11[4] = v29;
  v11[5] = v12;
  v13 = v32;
  v11[6] = v31;
  v11[7] = v13;
  v14 = v26;
  *v11 = v25;
  v11[1] = v14;
  v15 = v28;
  v11[2] = v27;
  v11[3] = v15;
  v16 = sub_10010FC20(&qword_1011B6FD0);
  (*(*(v16 - 8) + 16))(a2, a1, v16);
  v17 = swift_allocObject();
  v18 = v32;
  v17[7] = v31;
  v17[8] = v18;
  v17[9] = v33;
  v19 = v28;
  v17[3] = v27;
  v17[4] = v19;
  v20 = v30;
  v17[5] = v29;
  v17[6] = v20;
  v21 = v26;
  v17[1] = v25;
  v17[2] = v21;
  v22 = (a2 + *(sub_10010FC20(&qword_1011B6FD8) + 36));
  *v22 = sub_100BDA424;
  v22[1] = v17;
  sub_100BD6F10(v34, v24);
  return sub_100BD6F48(&v25, v24);
}

uint64_t sub_100BD71B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_100BD7234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_100BD72B0()
{
  swift_getWitnessTable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

id sub_100BD7300(char a1)
{
  v2 = a1 & 1;
  v3 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  result = swift_beginAccess();
  if (v1[v3] != v2)
  {
    if (v1[v3])
    {
      [v1 addSubview:*&v1[qword_1011B6FF8]];
      return [v1 addSubview:*&v1[qword_1011B7000]];
    }

    else
    {
      [*&v1[qword_1011B6FF8] removeFromSuperview];
      return [*&v1[qword_1011B7000] removeFromSuperview];
    }
  }

  return result;
}

uint64_t Radiosity.UIView.isRadiosityEnabled.getter()
{
  v1 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

id Radiosity.UIView.isRadiosityEnabled.setter(char a1)
{
  v3 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return sub_100BD7300(v4);
}

void (*Radiosity.UIView.isRadiosityEnabled.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_100BD74E8;
}

void sub_100BD74E8(uint64_t a1)
{
  v1 = *a1;
  Radiosity.UIView.isRadiosityEnabled.setter(*(*a1 + 32));

  free(v1);
}

void sub_100BD7528(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = v1 + direct field offset for Radiosity.UIView.specs;
  swift_beginAccess();
  v4 = *(v3 + 72);
  if (!v2)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 1;
    goto LABEL_6;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 0;
LABEL_6:
  sub_100BD7D0C(v5);
  sub_100BD8384();
}

double Radiosity.UIView.specs.getter@<D0>(_OWORD *a1@<X8>)
{
  sub_100BD9470(v8);
  sub_100BD6F10(v8, v7);
  v2 = v12;
  a1[4] = v11;
  a1[5] = v2;
  v3 = v14;
  a1[6] = v13;
  a1[7] = v3;
  v4 = v8[1];
  *a1 = v8[0];
  a1[1] = v4;
  result = *&v9;
  v6 = v10;
  a1[2] = v9;
  a1[3] = v6;
  return result;
}

uint64_t Radiosity.UIView.specs.setter(_OWORD *a1)
{
  sub_100BD9640(a1);

  return sub_100BD9714(a1);
}

void (*Radiosity.UIView.specs.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x320uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 792) = v1;
  v5 = (v1 + direct field offset for Radiosity.UIView.specs);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v4[2] = v5[2];
  v4[3] = v8;
  *v4 = v6;
  v4[1] = v7;
  v9 = v5[4];
  v10 = v5[5];
  v11 = v5[7];
  v4[6] = v5[6];
  v4[7] = v11;
  v4[4] = v9;
  v4[5] = v10;
  v12 = v5[7];
  v14 = v5[4];
  v13 = v5[5];
  v4[30] = v5[6];
  v4[31] = v12;
  v4[28] = v14;
  v4[29] = v13;
  v15 = *v5;
  v16 = v5[1];
  v17 = v5[3];
  v4[26] = v5[2];
  v4[27] = v17;
  v4[24] = v15;
  v4[25] = v16;
  sub_100BD6F10(v4, (v4 + 32));
  return sub_100BD771C;
}

void sub_100BD771C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 464);
  if (a2)
  {
    v2[12] = v2[28];
    v2[13] = v3;
    v4 = v2[31];
    v2[14] = v2[30];
    v2[15] = v4;
    v5 = v2[25];
    v2[8] = v2[24];
    v2[9] = v5;
    v6 = v2[27];
    v2[10] = v2[26];
    v2[11] = v6;
    sub_100BD6F10((v2 + 8), (v2 + 40));
    sub_100BD9640(v2 + 8);
    sub_100BD9714((v2 + 8));
    v7 = v2[29];
    v2[36] = v2[28];
    v2[37] = v7;
    v8 = v2[31];
    v2[38] = v2[30];
    v2[39] = v8;
    v9 = v2[25];
    v2[32] = v2[24];
    v2[33] = v9;
    v10 = v2[27];
    v2[34] = v2[26];
    v2[35] = v10;
    v11 = (v2 + 32);
  }

  else
  {
    v2[20] = v2[28];
    v2[21] = v3;
    v12 = v2[31];
    v2[22] = v2[30];
    v2[23] = v12;
    v13 = v2[25];
    v2[16] = v2[24];
    v2[17] = v13;
    v14 = v2[27];
    v2[18] = v2[26];
    v2[19] = v14;
    sub_100BD9640(v2 + 16);
    v11 = (v2 + 16);
  }

  sub_100BD9714(v11);

  free(v2);
}

__int128 *Radiosity.Specs.containerDetailHeaderArtwork.unsafeMutableAddressor()
{
  if (qword_1011B0768 != -1)
  {
    swift_once();
  }

  return &static Radiosity.Specs.containerDetailHeaderArtwork;
}

id Radiosity.UIView.init(content:isRadiosityEnabled:specs:)(void *a1, char a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[direct field offset for Radiosity.UIView.content] = a1;
  v9 = &v4[direct field offset for Radiosity.UIView.specs];
  v10 = *(a3 + 80);
  v9[4] = *(a3 + 64);
  v9[5] = v10;
  v11 = *(a3 + 112);
  v9[6] = *(a3 + 96);
  v9[7] = v11;
  v12 = *(a3 + 16);
  *v9 = *a3;
  v9[1] = v12;
  v13 = *(a3 + 48);
  v9[2] = *(a3 + 32);
  v9[3] = v13;
  v4[direct field offset for Radiosity.UIView.isRadiosityEnabled] = a2;
  if (*(a3 + 72))
  {
    v14 = objc_allocWithZone(UIView);
    v15 = a1;
    sub_100BD6F10(a3, v31);
    v16 = [v14 init];
  }

  else
  {
    v17 = objc_allocWithZone(_UIPortalView);
    v18 = a1;
    sub_100BD6F10(a3, v31);
    v16 = [v17 initWithSourceView:v18];
  }

  v19 = v16;
  *&v4[qword_1011B6FF8] = v16;
  v20 = objc_allocWithZone(_UIPortalView);
  v21 = a1;
  v22 = v19;
  v23 = [v20 initWithSourceView:v21];
  *&v4[qword_1011B7000] = v23;
  v30.receiver = v4;
  v30.super_class = type metadata accessor for Radiosity.UIView();
  v24 = v23;
  v25 = objc_msgSendSuper2(&v30, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v25 addSubview:{v21, v30.receiver, v30.super_class}];
  if (a2)
  {
    [v25 addSubview:v22];
    [v25 addSubview:v24];
  }

  [v25 bounds];
  [v21 setFrame:?];
  [v21 setAutoresizingMask:18];

  sub_100BD7D0C(0);
  sub_100BD8384();
  v26 = [v25 traitCollection];
  v27 = [v26 userInterfaceStyle];

  sub_100BD8888(v27);
  sub_10010FC20(qword_1011B36C0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100EBC6B0;
  *(v28 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v28 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  *(swift_allocObject() + 16) = ObjectType;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  sub_100BD9714(a3);

  return v25;
}

double sub_100BD7BEC(void *a1)
{
  v1 = a1;
  Radiosity.UIView.intrinsicContentSize.getter();
  v3 = v2;

  return v3;
}

Swift::Void __swiftcall Radiosity.UIView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for Radiosity.UIView();
  objc_msgSendSuper2(&v1, "layoutSubviews");
  sub_100BD7D0C(0);
  sub_100BD8384();
}

void sub_100BD7CB0(void *a1)
{
  v1 = a1;
  Radiosity.UIView.layoutSubviews()();
}

void sub_100BD7CF8(uint64_t a1)
{
  v2 = *(v1 + qword_1011B6FF8);
  *(v1 + qword_1011B6FF8) = a1;
}

void sub_100BD7D0C(char a1)
{
  v2 = v1;
  if (a1)
  {
    [*&v1[qword_1011B6FF8] removeFromSuperview];
    v3 = &v1[direct field offset for Radiosity.UIView.specs];
    swift_beginAccess();
    if (*(v3 + 9))
    {
      v4 = [objc_allocWithZone(UIView) init];
    }

    else
    {
      v4 = [objc_allocWithZone(_UIPortalView) initWithSourceView:*&v2[direct field offset for Radiosity.UIView.content]];
    }

    v5 = *&v2[qword_1011B6FF8];
    *&v2[qword_1011B6FF8] = v4;
    v6 = v4;

    v7 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
    swift_beginAccess();
    if (v2[v7] == 1)
    {
      [v2 addSubview:v6];
    }
  }

  v8 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v9 = *(v8 + 5);
  v52 = *(v8 + 4);
  v53 = v9;
  v10 = *(v8 + 7);
  v54 = *(v8 + 6);
  v55 = v10;
  v11 = *(v8 + 1);
  *&v50.a = *v8;
  *&v50.c = v11;
  v12 = *(v8 + 3);
  *&v50.tx = *(v8 + 2);
  v51 = v12;
  sub_100BD6F10(&v50, &v49);
  [v2 bounds];
  x = v58.origin.x;
  y = v58.origin.y;
  width = v58.size.width;
  height = v58.size.height;
  v49 = v50;
  v59 = CGRectApplyAffineTransform(v58, &v49);
  v17 = v59.origin.x;
  v18 = v59.origin.y;
  v19 = v59.size.width;
  v20 = v59.size.height;
  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  MinX = CGRectGetMinX(v59);
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  v46 = CGRectGetWidth(v60);
  v61.origin.x = v17;
  v61.origin.y = v18;
  v61.size.width = v19;
  v61.size.height = v20;
  v45 = CGRectGetWidth(v61);
  v62.origin.x = x;
  v62.origin.y = y;
  v62.size.width = width;
  v62.size.height = height;
  v21 = CGRectGetHeight(v62);
  v63.origin.x = v17;
  v63.origin.y = v18;
  v63.size.width = v19;
  v63.size.height = v20;
  v22 = CGRectGetHeight(v63);
  sub_100BD9714(&v50);
  v23 = *&v2[qword_1011B6FF8];
  [v2 bounds];
  [v23 setFrame:?];

  v24 = [*&v2[qword_1011B6FF8] layer];
  v25 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  [v24 setShadowColor:*(v25 + 7)];

  v26 = [*&v2[qword_1011B6FF8] layer];
  v27 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  LODWORD(v28) = *(v27 + 12);
  [v26 setShadowOpacity:v28];

  v29 = [*&v2[qword_1011B6FF8] layer];
  v30 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  [v29 setShadowRadius:v30[8]];

  v31 = [*&v2[qword_1011B6FF8] layer];
  v32 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v57 = *(v32 + 72);
  v33 = v57;
  if (v57)
  {
    v34 = &v2[direct field offset for Radiosity.UIView.specs];
    swift_beginAccess();
    v35 = v34[8];
    v36 = sub_100BDA3EC(&v57, &v49);
    v37 = v33(v36, MinX + (v46 - v45) * 0.5, v21 - v22, v19, v20, v35);
    v39 = v38;
    sub_100BD9A18(&v57);
  }

  else
  {
    v37 = 0;
  }

  [v31 setShadowPath:v37];

  v40 = [*&v2[qword_1011B6FF8] layer];
  v41 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v56 = *(v41 + 72);
  v42 = v56;
  if (v56)
  {
    v43 = *(&v56 + 1);
    sub_100BDA3EC(&v56, v48);
    v44 = sub_100BD8210(v42, v43, v2);
    sub_100BD9A18(&v56);
  }

  else
  {
    v44 = 0;
  }

  [v40 setMask:v44];
}

id sub_100BD8210(uint64_t (*a1)(uint64_t, double, double, double, double, double), uint64_t a2, char *a3)
{
  v5 = [objc_allocWithZone(CAShapeLayer) init];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 blackColor];
  v9 = [v8 CGColor];

  [v7 setBackgroundColor:v9];
  [a3 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = &a3[direct field offset for Radiosity.UIView.specs];
  v19 = swift_beginAccess();
  v20 = a1(v19, v11, v13, v15, v17, v18[8]);
  v22 = v21;

  [v7 setPath:v22];
  [v7 setFillRule:kCAFillRuleEvenOdd];

  return v7;
}

void sub_100BD8384()
{
  v1 = v0;
  v2 = &v0[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v3 = *(v2 + 5);
  v44 = *(v2 + 4);
  v45 = v3;
  v4 = *(v2 + 7);
  v46 = *(v2 + 6);
  v47 = v4;
  v5 = *(v2 + 1);
  *&v42.a = *v2;
  *&v42.c = v5;
  v6 = *(v2 + 3);
  *&v42.tx = *(v2 + 2);
  v43 = v6;
  sub_100BD6F10(&v42, &rect[3]);
  [v1 bounds];
  x = v48.origin.x;
  y = v48.origin.y;
  width = v48.size.width;
  height = v48.size.height;
  *&rect[3] = v42;
  v49 = CGRectApplyAffineTransform(v48, &rect[3]);
  v11 = v49.origin.x;
  rect[0] = *&v49.origin.x;
  rect[2] = *&v49.origin.y;
  v12 = v49.size.width;
  v13 = v49.size.height;
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  rect[1] = COERCE_ID(CGRectGetMinX(v49));
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  v14 = CGRectGetWidth(v50);
  v51.origin.x = v11;
  *&v51.origin.y = rect[2];
  v51.size.width = v12;
  v51.size.height = v13;
  v15 = *&rect[1] + (v14 - CGRectGetWidth(v51)) * 0.5;
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  v16 = CGRectGetHeight(v52);
  *&v53.origin.x = rect[0];
  *&v53.origin.y = rect[2];
  v53.size.width = v12;
  v53.size.height = v13;
  v17 = CGRectGetHeight(v53);
  sub_100BD9714(&v42);
  v18 = *&v1[qword_1011B7000];
  [v18 setFrame:{v15, v16 - v17, v12, v13}];
  v19 = &v1[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v20 = *(v19 + 1);
  *&rect[3] = *v19;
  *&rect[5] = v20;
  *&rect[7] = *(v19 + 2);
  [v18 setTransform:&rect[3]];
  rect[2] = [v18 layer];
  sub_10010FC20(&qword_1011B21B0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100EBDC20;
  v22 = &v1[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v23 = *(v22 + 13);

  v24 = [v1 traitCollection];
  v25 = [v24 userInterfaceStyle];

  v26 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorSaturate];
  v23(v25);
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v26 setValue:isa forKey:kCAFilterInputAmount];

  v28 = sub_100BDA3A0();
  *(v21 + 56) = v28;
  *(v21 + 32) = v26;
  swift_beginAccess();
  v29 = kCAFilterGaussianBlur;
  v30 = objc_allocWithZone(CAFilter);

  v31 = [v30 initWithType:v29];
  v32 = Double._bridgeToObjectiveC()().super.super.isa;
  [v31 setValue:v32 forKey:kCAFilterInputRadius];

  v33 = Bool._bridgeToObjectiveC()().super.super.isa;
  [v31 setValue:v33 forKey:kCAFilterInputNormalizeEdges];

  *(v21 + 88) = v28;
  *(v21 + 64) = v31;
  v34 = Array._bridgeToObjectiveC()().super.isa;

  [rect[2] setFilters:v34];

  v35 = [v18 layer];
  v36 = &v1[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v37 = *(v36 + 11);

  v38 = [v1 traitCollection];
  v39 = [v38 userInterfaceStyle];

  LODWORD(v16) = v37(v39);

  LODWORD(v40) = LODWORD(v16);
  [v35 setOpacity:v40];
}

void sub_100BD8888(uint64_t a1)
{
  sub_100BD8384();
  v3 = [*(v1 + qword_1011B6FF8) layer];
  v4 = v3;
  if (a1 == 2)
  {
    v5 = -1.0;
  }

  else
  {
    v5 = -2.0;
  }

  if (a1 == 2)
  {
    v6 = -2.0;
  }

  else
  {
    v6 = -1.0;
  }

  [v3 setZPosition:v5];

  v7 = [*(v1 + qword_1011B7000) layer];
  [v7 setZPosition:v6];
}

id Radiosity.UIView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Radiosity.UIView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100BD89F8(uint64_t a1)
{
  v2 = *(a1 + direct field offset for Radiosity.UIView.specs + 80);
  v6[4] = *(a1 + direct field offset for Radiosity.UIView.specs + 64);
  v6[5] = v2;
  v3 = *(a1 + direct field offset for Radiosity.UIView.specs + 112);
  v6[6] = *(a1 + direct field offset for Radiosity.UIView.specs + 96);
  v6[7] = v3;
  v4 = *(a1 + direct field offset for Radiosity.UIView.specs + 16);
  v6[0] = *(a1 + direct field offset for Radiosity.UIView.specs);
  v6[1] = v4;
  v5 = *(a1 + direct field offset for Radiosity.UIView.specs + 48);
  v6[2] = *(a1 + direct field offset for Radiosity.UIView.specs + 32);
  v6[3] = v5;
  sub_100BD9714(v6);
}

__n128 Radiosity.Specs.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

__n128 Radiosity.Specs.transform.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  return result;
}

uint64_t Radiosity.Specs.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v7 = *(v1 + 72);
  v6 = *(v1 + 80);
  v8 = v4;
  result = sub_100030444(v7);
  *a1 = v3;
  *(a1 + 8) = v8;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v6;
  return result;
}

__n128 Radiosity.Specs.shadow.setter(uint64_t a1)
{
  sub_100020438(*(v1 + 72));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v4;
  *(v1 + 80) = *(a1 + 32);
  return result;
}

uint64_t SyncedLyricsManager.Configuration.animationDuration.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Whitetail.Binding.configurationBlock.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Radiosity.Specs.radiosity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  *a1 = *(v1 + 88);
  *(a1 + 8) = *(v1 + 96);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

__n128 Radiosity.Specs.radiosity.setter(uint64_t a1)
{

  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 88) = *a1;
  *(v1 + 104) = v4;
  *(v1 + 120) = *(a1 + 32);
  return result;
}

uint64_t View.radiosity(specs:)(__int128 *a1)
{
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  State.init(wrappedValue:)();
  LOBYTE(v3) = v12[0];
  *(&v3 + 1) = *(&v12[0] + 1);
  sub_100BD6F10(a1, v12);
  View.modifier<A>(_:)();
  v12[6] = v10;
  v12[7] = v11;
  v12[8] = v3;
  v12[2] = v6;
  v12[3] = v7;
  v12[4] = v8;
  v12[5] = v9;
  v12[0] = v4;
  v12[1] = v5;
  return sub_100BD99DC(v12);
}

double Radiosity.Specs.with(_:)@<D0>(void (*a1)(__int128 *)@<X0>, _OWORD *a2@<X8>)
{
  v5 = v2[5];
  v19 = v2[4];
  v20 = v5;
  v6 = v2[7];
  v21 = v2[6];
  v22 = v6;
  v7 = v2[1];
  v15 = *v2;
  v16 = v7;
  v8 = v2[3];
  v17 = v2[2];
  v18 = v8;
  sub_100BD6F10(v2, &v14);
  a1(&v15);
  v9 = v20;
  a2[4] = v19;
  a2[5] = v9;
  v10 = v22;
  a2[6] = v21;
  a2[7] = v10;
  v11 = v16;
  *a2 = v15;
  a2[1] = v11;
  result = *&v17;
  v13 = v18;
  a2[2] = v17;
  a2[3] = v13;
  return result;
}

__n128 sub_100BD8E00()
{
  v8.a = 1.0;
  v8.b = 0.0;
  v8.c = 0.0;
  v8.d = 1.0;
  v8.tx = 0.0;
  v8.ty = 0.0;
  CGAffineTransformScale(&v7, &v8, 0.85, 0.85);
  tx = v7.tx;
  ty = v7.ty;
  v5 = *&v7.c;
  v6 = *&v7.a;
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 CGColor];

  result = v6;
  static Radiosity.Specs.containerDetailHeaderArtwork = v6;
  *algn_10121B970 = v5;
  qword_10121B980 = *&tx;
  unk_10121B988 = *&ty;
  dword_10121B990 = 1050253722;
  qword_10121B998 = v3;
  unk_10121B9A0 = 0x402E000000000000;
  qword_10121B9A8 = 0;
  unk_10121B9B0 = 0;
  qword_10121B9B8 = sub_100BD8F00;
  unk_10121B9C0 = 0;
  qword_10121B9C8 = sub_100BD8F28;
  unk_10121B9D0 = 0;
  qword_10121B9D8 = 0x4040000000000000;
  return result;
}

float sub_100BD8F00(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0.42;
  }

  else
  {
    return flt_100F08EC4[a1];
  }
}

double sub_100BD8F28(unint64_t a1)
{
  if (a1 > 2)
  {
    return 1.8;
  }

  else
  {
    return dbl_100F08ED0[a1];
  }
}

__n128 sub_100BD8F70()
{
  v8.a = 1.0;
  v8.b = 0.0;
  v8.c = 0.0;
  v8.d = 1.0;
  v8.tx = 0.0;
  v8.ty = 0.0;
  CGAffineTransformScale(&v7, &v8, 0.94, 0.94);
  tx = v7.tx;
  ty = v7.ty;
  v5 = *&v7.c;
  v6 = *&v7.a;
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 CGColor];

  result = v6;
  static Radiosity.Specs.nowPlaying = v6;
  *algn_10121B9F0 = v5;
  qword_10121BA00 = *&tx;
  unk_10121BA08 = *&ty;
  dword_10121BA10 = 1053609165;
  qword_10121BA18 = v3;
  unk_10121BA20 = 0x402E000000000000;
  qword_10121BA28 = 0;
  unk_10121BA30 = 0;
  qword_10121BA38 = variable initialization expression of Layer.alpha;
  unk_10121BA40 = 0;
  qword_10121BA48 = sub_100BD906C;
  unk_10121BA50 = 0;
  qword_10121BA58 = 0x4049000000000000;
  return result;
}

__int128 *Radiosity.Specs.nowPlaying.unsafeMutableAddressor()
{
  if (qword_1011B0770 != -1)
  {
    swift_once();
  }

  return &static Radiosity.Specs.nowPlaying;
}

uint64_t sub_100BD90E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  if (*a1 != -1)
  {
    swift_once();
    v4 = a3;
  }

  return sub_100BD6F10(a2, v4);
}

double Radiosity.Specs.pathShadow(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = *(v4 + 48);
  v25 = *(v4 + 32);
  v26 = v7;
  v27 = *(v4 + 64);
  v8 = *(v4 + 16);
  v23 = *v4;
  v24 = v8;
  v9 = (v4 + 72);
  v10 = *(v4 + 72);
  v22 = *(v4 + 120);
  v11 = *(v4 + 80);
  v12 = *(v5 + 104);
  v20 = *(v5 + 88);
  v21 = v12;
  if (a3)
  {
    sub_100BD6F10(v5, v19);
  }

  else
  {
    v28 = *v9;
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a1;
    sub_100BD6F10(v5, v19);
    sub_100BD9A18(&v28);
    v10 = sub_100BD9A0C;
  }

  v15 = v26;
  *(a4 + 32) = v25;
  *(a4 + 48) = v15;
  v16 = v24;
  *a4 = v23;
  *(a4 + 16) = v16;
  result = *&v20;
  v18 = v21;
  *(a4 + 88) = v20;
  *(a4 + 64) = v27;
  *(a4 + 72) = v10;
  *(a4 + 80) = v11;
  *(a4 + 104) = v18;
  *(a4 + 120) = v22;
  return result;
}

id sub_100BD9258(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v13 = objc_opt_self();
  v14 = [v13 bezierPathWithRoundedRect:a1 byRoundingCorners:a2 cornerRadii:{a3, a4, a5, a7, a7}];
  v15 = [v14 CGPath];

  v16 = [v13 bezierPathWithRoundedRect:a2 cornerRadius:{a3, a4, a5, a7}];
  UIEdgeInsets.init(edges:inset:)();
  v19 = [v13 bezierPathWithRoundedRect:sub_100058728(a2 cornerRadius:{a3, a4, a5, v17, v18)}];
  CGPathCreateMutable();
  v20 = [v16 CGPath];
  CGMutablePathRef.addPath(_:transform:)();

  v21 = [v19 CGPath];
  CGMutablePathRef.addPath(_:transform:)();

  return v15;
}

_BYTE *sub_100BD9414(_BYTE *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*result == 1)
  {
    result = a2(&v4);
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  return result;
}

__n128 sub_100BD9470@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + direct field offset for Radiosity.UIView.specs;
  swift_beginAccess();
  v4 = *(v3 + 80);
  *(a1 + 64) = *(v3 + 64);
  *(a1 + 80) = v4;
  v5 = *(v3 + 112);
  *(a1 + 96) = *(v3 + 96);
  *(a1 + 112) = v5;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  result = *(v3 + 32);
  v8 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v8;
  return result;
}

id sub_100BD94D8(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for _UIHostingView();
  v8 = type metadata accessor for Radiosity.UIView();
  (*(v5 + 16))(v7, v2, v4);
  v9 = _UIHostingView.__allocating_init(rootView:)();
  v10 = *(v3 + 36);
  LOBYTE(v3) = *(v2 + *(v3 + 40));
  v11 = *(v2 + v10 + 80);
  v18[4] = *(v2 + v10 + 64);
  v18[5] = v11;
  v12 = *(v2 + v10 + 112);
  v18[6] = *(v2 + v10 + 96);
  v18[7] = v12;
  v13 = *(v2 + v10 + 16);
  v18[0] = *(v2 + v10);
  v18[1] = v13;
  v14 = *(v2 + v10 + 48);
  v18[2] = *(v2 + v10 + 32);
  v18[3] = v14;
  sub_100BD6F10(v18, v17);
  v15 = objc_allocWithZone(v8);
  return Radiosity.UIView.init(content:isRadiosityEnabled:specs:)(v9, v3, v18);
}

uint64_t sub_100BD9640(_OWORD *a1)
{
  v3 = (v1 + direct field offset for Radiosity.UIView.specs);
  swift_beginAccess();
  v4 = v3[5];
  v17 = v3[4];
  v18 = v4;
  v5 = v3[7];
  v19 = v3[6];
  v20 = v5;
  v6 = v3[1];
  v14[0] = *v3;
  v14[1] = v6;
  v7 = v3[3];
  v15 = v3[2];
  v16 = v7;
  v21[0] = v14[0];
  v21[1] = v6;
  v21[2] = v15;
  v21[3] = v7;
  v21[4] = v17;
  v21[5] = v4;
  v21[6] = v19;
  v21[7] = v5;
  v8 = a1[3];
  v3[2] = a1[2];
  v3[3] = v8;
  v9 = a1[1];
  *v3 = *a1;
  v3[1] = v9;
  v10 = a1[7];
  v3[6] = a1[6];
  v3[7] = v10;
  v11 = a1[5];
  v3[4] = a1[4];
  v3[5] = v11;
  sub_100BD6F10(v14, v13);
  sub_100BD6F10(a1, v13);
  sub_100BD9714(v21);
  sub_100BD7528(v14);
  return sub_100BD9714(v14);
}

id sub_100BD9760(void *a1, uint64_t a2)
{
  v5 = __chkstk_darwin(a1);
  (*(v7 + 16))(&v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v2, v5);
  dispatch thunk of _UIHostingView.rootView.setter();
  [a1 invalidateIntrinsicContentSize];
  v8 = (v2 + *(a2 + 36));
  v9 = v8[5];
  v15[4] = v8[4];
  v15[5] = v9;
  v10 = v8[7];
  v15[6] = v8[6];
  v15[7] = v10;
  v11 = v8[1];
  v15[0] = *v8;
  v15[1] = v11;
  v12 = v8[3];
  v15[2] = v8[2];
  v15[3] = v12;
  sub_100BD6F10(v15, v14);
  sub_100BD9640(v15);
  sub_100BD9714(v15);
  return Radiosity.UIView.isRadiosityEnabled.setter(*(v2 + *(a2 + 40)));
}

void sub_100BD98F4(void *a1)
{
  v1 = [a1 traitCollection];
  v2 = [v1 userInterfaceStyle];

  sub_100BD8888(v2);
}

uint64_t sub_100BD9A74(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100BD9A8C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_100BD9AB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100BD9B00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100BD9BDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100BD9C24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100BD9CA4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100BD9CF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_100BD9D48(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_100BD9D88()
{
  result = qword_1011B7088;
  if (!qword_1011B7088)
  {
    sub_1001109D0(&qword_1011B6FD8);
    sub_100020674(&qword_1011B7090, &qword_1011B6FC8);
    sub_100020674(&qword_1011B7098, &qword_1011B70A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7088);
  }

  return result;
}

unint64_t sub_100BD9E6C()
{
  result = qword_1011B70A8[0];
  if (!qword_1011B70A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1011B70A8);
  }

  return result;
}

uint64_t sub_100BD9EC0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100BD9F48(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 129;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 56);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * (((v6 + 7) & 0xF8) - 127));
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

double sub_100BDA09C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 129;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return result;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v19 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v19 + 120) = 0;
          result = 0.0;
          *(v19 + 104) = 0u;
          *(v19 + 88) = 0u;
          *(v19 + 72) = 0u;
          *(v19 + 56) = 0u;
          *(v19 + 40) = 0u;
          *(v19 + 24) = 0u;
          *(v19 + 8) = 0u;
          *v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v19 + 56) = a2 - 1;
        }
      }

      else
      {
        v18 = *(v6 + 56);

        v18();
      }

      return result;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 129);
  if (v10 <= 3)
  {
    v17 = (v15 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v17;
      }

      else
      {
        *&a1[v10] = v17;
      }

      return result;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v17;
  }

  return result;
}

uint64_t sub_100BDA2E8()
{
  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_100BDA3A0()
{
  result = qword_1011B21B8;
  if (!qword_1011B21B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011B21B8);
  }

  return result;
}

uint64_t sub_100BDA428(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t Reactions.StackView.Model.reaction.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double sub_100BDA5B4@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_100BDA634()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t Reactions.StackView.Model.reaction.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*Reactions.StackView.Model.reaction.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t Reactions.StackView.Model.$reaction.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B7140);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011B7138);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$reaction.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011B7140);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011B7138);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

uint64_t Reactions.StackView.Model.count.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100BDAB10@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100BDAB90()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t Reactions.StackView.Model.count.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*Reactions.StackView.Model.count.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t Reactions.StackView.Model.$count.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B7158);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011B7150);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$count.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011B7158);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__count;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011B7150);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

uint64_t Reactions.StackView.Model.userImage.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100BDB050@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100BDB0D0(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return static Published.subscript.setter();
}

uint64_t Reactions.StackView.Model.userImage.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*Reactions.StackView.Model.userImage.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t Reactions.StackView.Model.$userImage.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B7168);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011B5600);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$userImage.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011B7168);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011B5600);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36370;
}

void (*Reactions.StackView.Model.isReacting.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A360A8;
}

uint64_t Reactions.StackView.Model.$isReacting.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B7178);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011B3D00);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$isReacting.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011B7178);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011B3D00);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

uint64_t sub_100BDB8D8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*Reactions.StackView.Model.hasAnimatedBackground.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t Reactions.StackView.Model.$hasAnimatedBackground.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B7178);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011B3D00);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$hasAnimatedBackground.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011B7178);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011B3D00);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

uint64_t Reactions.StackView.Model.__allocating_init(reaction:count:userImage:isVibrant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v31 = a5;
  v29 = a3;
  v30 = a4;
  v27 = a1;
  v28 = a2;
  v26 = sub_10010FC20(&qword_1011B3D00);
  v5 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = v24 - v6;
  v25 = sub_10010FC20(&qword_1011B5600);
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = v24 - v9;
  v11 = sub_10010FC20(&qword_1011B7138);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v24 - v13;
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v34 = 0;
  v35 = 0;
  v24[1] = sub_10010FC20(&qword_1011B7770);
  Published.init(initialValue:)();
  (*(v12 + 32))(v15 + v16, v14, v11);
  v17 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v34 = 0;
  sub_10010FC20(&qword_1011B1180);
  Published.init(initialValue:)();
  (*(v8 + 32))(v15 + v17, v10, v25);
  v18 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  LOBYTE(v34) = 0;
  Published.init(initialValue:)();
  v19 = *(v5 + 32);
  v20 = v26;
  v19(v15 + v18, v7, v26);
  v21 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground;
  LOBYTE(v34) = 1;
  Published.init(initialValue:)();
  v19(v15 + v21, v7, v20);
  v22 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant;
  *(v15 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant) = 0;
  swift_beginAccess();
  (*(v12 + 8))(v15 + v16, v11);
  v32 = v27;
  v33 = v28;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v32 = v29;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v30;

  static Published.subscript.setter();
  *(v15 + v22) = v31;
  return v15;
}

uint64_t Reactions.StackView.Model.init(reaction:count:userImage:isVibrant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v31 = a5;
  v29 = a3;
  v30 = a4;
  v27 = a1;
  v28 = a2;
  v26 = sub_10010FC20(&qword_1011B3D00);
  v6 = *(v26 - 8);
  __chkstk_darwin(v26);
  v8 = &v25 - v7;
  v9 = sub_10010FC20(&qword_1011B5600);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - v11;
  v13 = sub_10010FC20(&qword_1011B7138);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  v17 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v34 = 0;
  v35 = 0;
  v25 = sub_10010FC20(&qword_1011B7770);
  Published.init(initialValue:)();
  (*(v14 + 32))(v5 + v17, v16, v13);
  v18 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v34 = 0;
  sub_10010FC20(&qword_1011B1180);
  Published.init(initialValue:)();
  (*(v10 + 32))(v5 + v18, v12, v9);
  v19 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  LOBYTE(v34) = 0;
  Published.init(initialValue:)();
  v20 = *(v6 + 32);
  v21 = v26;
  v20(v5 + v19, v8, v26);
  v22 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground;
  LOBYTE(v34) = 1;
  Published.init(initialValue:)();
  v20(v5 + v22, v8, v21);
  v23 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant;
  *(v5 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant) = 0;
  swift_beginAccess();
  (*(v14 + 8))(v5 + v17, v13);
  v32 = v27;
  v33 = v28;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v32 = v29;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v30;

  static Published.subscript.setter();
  *(v5 + v23) = v31;
  return v5;
}

uint64_t Reactions.StackView.Model.deinit()
{
  v1 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v2 = sub_10010FC20(&qword_1011B7138);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__count;
  v4 = sub_10010FC20(&qword_1011B7150);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v6 = sub_10010FC20(&qword_1011B5600);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  v8 = sub_10010FC20(&qword_1011B3D00);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground, v8);
  return v0;
}

uint64_t Reactions.StackView.Model.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v2 = sub_10010FC20(&qword_1011B7138);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__count;
  v4 = sub_10010FC20(&qword_1011B7150);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v6 = sub_10010FC20(&qword_1011B5600);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  v8 = sub_10010FC20(&qword_1011B3D00);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground, v8);

  return swift_deallocClassInstance();
}

uint64_t sub_100BDC7A8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Reactions.StackView.Model(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t property wrapper backing initializer of Reactions.StackView.model()
{
  type metadata accessor for Reactions.StackView.Model(0);
  sub_100BDF9B4(&qword_1011B7188, type metadata accessor for Reactions.StackView.Model);

  return ObservedObject.init(wrappedValue:)();
}

uint64_t Reactions.StackView.model.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Reactions.StackView.$model.getter()
{
  type metadata accessor for Reactions.StackView.Model(0);
  sub_100BDF9B4(&qword_1011B7188, type metadata accessor for Reactions.StackView.Model);

  return ObservedObject.projectedValue.getter();
}

double Reactions.StackView.specs.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = result;
  *(a1 + 32) = v3;
  return result;
}

__n128 Reactions.StackView.init(model:specs:)@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Reactions.StackView(0);
  v5 = v4[6];
  *(a2 + v5) = swift_getKeyPath();
  sub_10010FC20(&qword_1011B4820);
  swift_storeEnumTagMultiPayload();
  v6 = v4[7];
  *(a2 + v6) = swift_getKeyPath();
  sub_10010FC20(&unk_1011B0880);
  swift_storeEnumTagMultiPayload();
  v7 = v4[8];
  *(a2 + v7) = swift_getKeyPath();
  sub_10010FC20(&unk_1011B3D50);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Reactions.StackView.Model(0);
  sub_100BDF9B4(&qword_1011B7188, type metadata accessor for Reactions.StackView.Model);
  *a2 = ObservedObject.init(wrappedValue:)();
  *(a2 + 8) = v8;
  result = *a1;
  v10 = *(a1 + 16);
  *(a2 + 16) = *a1;
  *(a2 + 32) = v10;
  *(a2 + 48) = *(a1 + 32);
  return result;
}

uint64_t Reactions.StackView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v113 = a1;
  v2 = sub_10010FC20(&qword_1011B7190);
  __chkstk_darwin(v2 - 8);
  v99 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v100 = (&v90 - v5);
  v6 = type metadata accessor for Reactions.StackView(0);
  v103 = *(v6 - 8);
  __chkstk_darwin(v6);
  v104 = v7;
  v105 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011B7198);
  v108 = *(v8 - 8);
  v109 = v8;
  __chkstk_darwin(v8);
  v107 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v106 = &v90 - v11;
  v12 = sub_10010FC20(&qword_1011B1478);
  __chkstk_darwin(v12 - 8);
  v14 = &v90 - v13;
  v98 = type metadata accessor for DynamicTypeSize();
  v15 = *(v98 - 8);
  __chkstk_darwin(v98);
  v17 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for BlendMode();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v102 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v20;
  v22 = __chkstk_darwin(v21);
  v23 = *(v19 + 104);
  v112 = &v90 - v24;
  v23(v22);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v26 = v114;
  v27 = *(v1 + 16);
  if (v27 < v114)
  {
    v26 = *(v1 + 16);
  }

  v28 = __OFSUB__(v26, 1);
  v29 = v26 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    v97 = v1;
    v95 = *(v1 + 48);
    v30 = *(v1 + 24);
    v31 = *(v1 + 32);
    v32 = *(v1 + 40);
    KeyPath = v29;
    v92 = v17;
    v94 = v27;
    sub_100B4CD34(v17);
    v110 = v19;
    v93 = *(v15 + 16);
    v33 = v17;
    v34 = v98;
    v93(v14, v33, v98);
    v111 = v18;
    v91 = *(v15 + 56);
    v91(v14, 0, 1, v34);
    v35 = UIContentSizeCategory.init(_:)();
    v36 = objc_opt_self();
    v37 = [v36 traitCollectionWithPreferredContentSizeCategory:v35];
    v38 = objc_opt_self();
    v39 = [v38 defaultMetrics];
    [v39 scaledValueForValue:v37 compatibleWithTraitCollection:v30];
    v41 = v40;

    v42 = v14;
    v43 = v14;
    v44 = v92;
    v93(v42, v92, v34);
    v45 = v110;
    v46 = v113;
    v91(v43, 0, 1, v34);
    v47 = v111;
    v48 = UIContentSizeCategory.init(_:)();
    v49 = [v36 traitCollectionWithPreferredContentSizeCategory:v48];
    v50 = [v38 defaultMetrics];
    [v50 scaledValueForValue:v49 compatibleWithTraitCollection:v32];
    v52 = v51;

    (*(v15 + 8))(v44, v34);
    v53 = v94;
    *&v117 = v94;
    *(&v117 + 1) = v41;
    *&v118 = v31;
    *(&v118 + 1) = v52;
    LODWORD(v49) = v95;
    v119 = v95;
    *v46 = static VerticalAlignment.center.getter();
    *(v46 + 8) = v31 - v41;
    *(v46 + 16) = 0;
    v93 = (v46 + *(sub_10010FC20(&qword_1011B71A0) + 44));
    if (v49)
    {
      v54 = KeyPath & ~(KeyPath >> 63);
    }

    else
    {
      v54 = v53;
    }

    v98 = v54;
    *&v114 = 0;
    *(&v114 + 1) = KeyPath & ~(KeyPath >> 63);
    KeyPath = swift_getKeyPath();
    v55 = v97;
    v56 = v105;
    sub_100BDEEB8(v97, v105);
    v57 = v102;
    v58 = v112;
    (*(v45 + 16))(v102, v112, v47);
    v59 = (*(v103 + 80) + 49) & ~*(v103 + 80);
    v60 = (v104 + *(v45 + 80) + v59) & ~*(v45 + 80);
    v61 = swift_allocObject();
    v62 = v118;
    *(v61 + 16) = v117;
    *(v61 + 32) = v62;
    *(v61 + 48) = v119;
    sub_100BDEF1C(v56, v61 + v59);
    (*(v45 + 32))(v61 + v60, v57, v47);
    sub_10010FC20(&qword_1011B71A8);
    sub_10010FC20(&qword_1011B71B0);
    sub_100BDF068();
    sub_100BDF1CC();
    v63 = v106;
    ForEach<>.init(_:id:content:)();
    v64 = static Alignment.center.getter();
    v65 = v100;
    *v100 = v64;
    *(v65 + 8) = v66;
    v67 = sub_10010FC20(&qword_1011B71F0);
    sub_100BDE014(&v117, v55, v58, v65 + *(v67 + 44));
    v69 = v108;
    v68 = v109;
    v70 = *(v108 + 16);
    v71 = v107;
    v70(v107, v63, v109);
    v72 = v99;
    sub_1000089F8(v65, v99, &qword_1011B7190);
    v73 = v93;
    *v93 = 0;
    *(v73 + 8) = 1;
    v74 = sub_10010FC20(&qword_1011B71F8);
    v70(v73 + *(v74 + 48), v71, v68);
    sub_1000089F8(v72, v73 + *(v74 + 64), &qword_1011B7190);
    sub_1000095E8(v65, &qword_1011B7190);
    v75 = *(v69 + 8);
    v75(v63, v68);
    sub_1000095E8(v72, &qword_1011B7190);
    v75(v71, v68);
    result = v98 + 1;
    if (!__OFADD__(v98, 1))
    {
      Int.seconds.getter(result);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v76 = sub_10010FC20(&qword_1011B7200);
      v77 = v113;
      v78 = (v113 + *(v76 + 36));
      v79 = v115;
      *v78 = v114;
      v78[1] = v79;
      v78[2] = v116;
      v80 = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v82 = v81;
      v84 = v83;
      v86 = v85;
      v88 = v87;
      v89 = v77 + *(sub_10010FC20(&qword_1011B7208) + 36);
      *v89 = v80;
      *(v89 + 8) = v82;
      *(v89 + 16) = v84;
      *(v89 + 24) = v86;
      *(v89 + 32) = v88;
      *(v89 + 40) = 0;
      return (*(v110 + 8))(v112, v111);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100BDD528@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v22 = a2;
  v5 = type metadata accessor for ScaleTransition();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_1011B74E0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  *a3 = static Alignment.center.getter();
  a3[1] = v16;
  v17 = sub_10010FC20(&qword_1011B7588);
  sub_100BDD7F4(a1, v22, a3 + *(v17 + 44));
  static UnitPoint.center.getter();
  ScaleTransition.init(_:anchor:)();
  static Animation.easeInOut(duration:)();
  v18 = sub_100BDF9B4(&qword_1011B7528, &type metadata accessor for ScaleTransition);
  Transition.animation(_:)();

  (*(v6 + 8))(v8, v5);
  (*(v10 + 16))(v12, v15, v9);
  v23 = v5;
  v24 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = AnyTransition.init<A>(_:)();
  (*(v10 + 8))(v15, v9);
  result = sub_10010FC20(&qword_1011B71B0);
  *(a3 + *(result + 36)) = v19;
  return result;
}

uint64_t sub_100BDD7F4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v43 = a1;
  v44 = a2;
  v46 = a3;
  v3 = sub_10010FC20(&qword_1011B7590);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v45 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v9 = sub_10010FC20(&qword_1011B74F0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v42 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v41 = static Color.clear.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v40 = v47[1];
  LODWORD(v39) = v48;
  v15 = v49;
  v38 = v50;
  v37 = v51;
  v36 = v52;
  v16 = static Color.white.getter();
  v17 = &v14[*(v10 + 44)];
  v18 = *(sub_10010FC20(&qword_1011B74F8) + 36);
  v19 = enum case for BlendMode.destinationOut(_:);
  v20 = type metadata accessor for BlendMode();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v17 + v18, v19, v20);
  *v17 = v16;
  *(v17 + *(sub_10010FC20(&qword_1011B7500) + 56)) = 256;
  v22 = v40;
  *v14 = v41;
  *(v14 + 1) = v22;
  v14[16] = v39;
  *(v14 + 3) = v15;
  v14[32] = v38;
  v23 = v36;
  *(v14 + 5) = v37;
  *(v14 + 6) = v23;
  v41 = static Color.clear.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v24 = v53;
  LOBYTE(v15) = v54;
  v25 = v55;
  LOBYTE(v19) = v56;
  v40 = v57;
  v39 = v58;
  sub_100BDDC5C(v47);
  v26 = v47[0];
  v27 = &v8[*(v4 + 44)];
  v28 = sub_10010FC20(&qword_1011B7508);
  (*(v21 + 16))(v27 + *(v28 + 36), v44, v20);
  *v27 = v26;
  *(v27 + *(sub_10010FC20(&qword_1011B7510) + 56)) = 256;
  v29 = v42;
  *v8 = v41;
  *(v8 + 1) = v24;
  v8[16] = v15;
  *(v8 + 3) = v25;
  v8[32] = v19;
  v30 = v39;
  *(v8 + 5) = v40;
  *(v8 + 6) = v30;
  sub_1000089F8(v14, v29, &qword_1011B74F0);
  v31 = v45;
  sub_1000089F8(v8, v45, &qword_1011B7590);
  v32 = v46;
  sub_1000089F8(v29, v46, &qword_1011B74F0);
  v33 = sub_10010FC20(&qword_1011B7598);
  sub_1000089F8(v31, v32 + *(v33 + 48), &qword_1011B7590);
  sub_1000095E8(v8, &qword_1011B7590);
  sub_1000095E8(v14, &qword_1011B74F0);
  sub_1000095E8(v31, &qword_1011B7590);
  return sub_1000095E8(v29, &qword_1011B74F0);
}

uint64_t sub_100BDDC5C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v23 = a1;
  v3 = sub_10010FC20(&qword_1011B7530);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v22 = &v21 - v5;
  v6 = type metadata accessor for ColorSchemeContrast();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ColorScheme();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Reactions.StackView(0);
  sub_100B4D1B4(v13);
  sub_100B4D164(v9);
  v14 = *(v4 + 56);
  v15 = v11;
  v16 = v22;
  (*(v15 + 32))(v22, v13, v10);
  (*(v7 + 32))(v16 + v14, v9, v6);
  v17 = (*(v15 + 88))(v16, v10);
  if (v17 == enum case for ColorScheme.light(_:))
  {
    if ((*(v7 + 88))(v16 + v14, v6) == enum case for ColorSchemeContrast.increased(_:))
    {
      v18 = [objc_opt_self() secondarySystemFillColor];
      v24 = Color.init(_:)();
LABEL_7:
      *v23 = AnyShapeStyle.init<A>(_:)();
      return (*(v15 + 8))(v16, v10);
    }
  }

  else if (v17 == enum case for ColorScheme.dark(_:) && (*(v7 + 88))(v16 + v14, v6) == enum case for ColorSchemeContrast.increased(_:))
  {
    LODWORD(v24) = static HierarchicalShapeStyle.quinary.getter();
    goto LABEL_7;
  }

  if (*(*(v2 + 8) + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant) == 1)
  {
    LODWORD(v24) = static HierarchicalShapeStyle.quaternary.getter();
  }

  else
  {
    v20 = [objc_opt_self() secondarySystemFillColor];
    v24 = Color.init(_:)();
  }

  *v23 = AnyShapeStyle.init<A>(_:)();
  return sub_1000095E8(v16, &qword_1011B7530);
}

uint64_t sub_100BDE014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v89 = a2;
  v90 = a3;
  v84 = a1;
  v93 = a4;
  v80 = type metadata accessor for ScaleTransition();
  v77 = *(v80 - 8);
  __chkstk_darwin(v80);
  v74 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_1011B74E0);
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v75 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v76 = &v70 - v9;
  v10 = type metadata accessor for Image.ResizingMode();
  v72 = *(v10 - 8);
  v73 = v10;
  __chkstk_darwin(v10);
  v71 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&qword_1011B4970);
  __chkstk_darwin(v12 - 8);
  v87 = &v70 - v13;
  v88 = sub_10010FC20(&qword_1011B74E8) - 8;
  __chkstk_darwin(v88);
  v92 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v70 - v16;
  v18 = sub_10010FC20(&qword_1011B74F0);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v94 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v70 - v22;
  v91 = static Color.clear.getter();
  v24 = *(a1 + 8);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v25 = v122;
  LODWORD(v86) = v123;
  v85 = v124;
  LODWORD(v83) = v125;
  v81 = v127;
  *&v82 = v126;
  v26 = static Color.white.getter();
  v27 = &v23[*(v19 + 44)];
  v28 = *(sub_10010FC20(&qword_1011B74F8) + 36);
  v29 = enum case for BlendMode.destinationOut(_:);
  v30 = type metadata accessor for BlendMode();
  v31 = *(v30 - 8);
  (*(v31 + 104))(v27 + v28, v29, v30);
  *v27 = v26;
  *(v27 + *(sub_10010FC20(&qword_1011B7500) + 56)) = 256;
  *v23 = v91;
  *(v23 + 1) = v25;
  v23[16] = v86;
  *(v23 + 3) = v85;
  v23[32] = v83;
  v32 = v81;
  *(v23 + 5) = v82;
  *(v23 + 6) = v32;
  v91 = v23;
  sub_100BDEB5C(&v128);
  v85 = *(&v130 + 1);
  v86 = v130;
  LOBYTE(v27) = v131;
  v33 = type metadata accessor for Font.Design();
  v82 = v129;
  v83 = v128;
  v34 = v87;
  (*(*(v33 - 8) + 56))(v87, 1, 1, v33);
  v35 = static Font.system(size:weight:design:)();
  sub_1000095E8(v34, &qword_1011B4970);
  KeyPath = swift_getKeyPath();
  LOBYTE(v128) = v27;
  static Alignment.center.getter();
  v87 = v24;
  _FrameLayout.init(width:height:alignment:)();
  sub_100BDDC5C(&v128);
  v37 = v128;
  v38 = &v17[*(v88 + 44)];
  v39 = sub_10010FC20(&qword_1011B7508);
  (*(v31 + 16))(&v38[*(v39 + 36)], v90, v30);
  *v38 = v37;
  *&v38[*(sub_10010FC20(&qword_1011B7510) + 56)] = 256;
  v40 = v82;
  *v17 = v83;
  *(v17 + 1) = v40;
  v41 = v85;
  *(v17 + 4) = v86;
  *(v17 + 5) = v41;
  v17[48] = v27;
  *(v17 + 7) = KeyPath;
  *(v17 + 8) = v35;
  v42 = v139;
  *(v17 + 72) = v138;
  *(v17 + 88) = v42;
  v43 = v17;
  *(v17 + 104) = v140;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v44 = v128;
  if (!v128)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v128 != 1)
  {

LABEL_5:
    sub_100BDF994(&v128);
    goto LABEL_6;
  }

  v45 = v44;
  Image.init(uiImage:)();
  v47 = v71;
  v46 = v72;
  v48 = v73;
  (*(v72 + 104))(v71, enum case for Image.ResizingMode.stretch(_:), v73);
  v90 = Image.resizable(capInsets:resizingMode:)();

  (*(v46 + 8))(v47, v48);
  v49 = static Alignment.center.getter();
  v88 = v50;
  v89 = v49;
  static Color.black.getter();
  v86 = Color.opacity(_:)();

  static UnitPoint.center.getter();
  v51 = v74;
  ScaleTransition.init(_:anchor:)();
  static Animation.easeInOut(duration:)();
  v52 = sub_100BDF9B4(&qword_1011B7528, &type metadata accessor for ScaleTransition);
  v53 = v76;
  v54 = v80;
  Transition.animation(_:)();

  (*(v77 + 8))(v51, v54);
  v55 = v78;
  v56 = v79;
  (*(v78 + 16))(v75, v53, v79);
  *&v128 = v54;
  *(&v128 + 1) = v52;
  swift_getOpaqueTypeConformance2();
  v57 = AnyTransition.init<A>(_:)();
  (*(v55 + 8))(v53, v56);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();

  *(v121 + 8) = v105;
  v115 = v90;
  LOWORD(v116) = 257;
  *(&v116 + 1) = v89;
  *&v117 = v88;
  *(&v117 + 1) = v86;
  *&v118 = 0x3FE0000000000000;
  BYTE8(v118) = 0;
  v119 = 0uLL;
  LOBYTE(v120) = 2;
  *(&v120 + 1) = 0x3FF0000000000000;
  *&v121[0] = v57;
  *(&v121[1] + 8) = v106;
  *(&v121[2] + 8) = v107;
  UIScreen.Dimensions.size.getter(*&v107);
  v134 = v121[0];
  v135 = v121[1];
  v136 = v121[2];
  v137 = *&v121[3];
  v130 = v117;
  v131 = v118;
  v132 = v119;
  v133 = v120;
  v128 = v115;
  v129 = v116;
LABEL_6:
  v58 = v91;
  v59 = v94;
  sub_1000089F8(v91, v94, &qword_1011B74F0);
  v60 = v92;
  sub_1000089F8(v43, v92, &qword_1011B74E8);
  v101 = v134;
  v102 = v135;
  v103 = v136;
  v104 = v137;
  v97 = v130;
  v98 = v131;
  v99 = v132;
  v100 = v133;
  v95 = v128;
  v96 = v129;
  v61 = v59;
  v62 = v93;
  sub_1000089F8(v61, v93, &qword_1011B74F0);
  v63 = sub_10010FC20(&qword_1011B7518);
  sub_1000089F8(v60, v62 + *(v63 + 48), &qword_1011B74E8);
  v64 = v62 + *(v63 + 64);
  v111 = v101;
  v112 = v102;
  v113 = v103;
  v114 = v104;
  v109 = v99;
  v110 = v100;
  v107 = v97;
  v108 = v98;
  v105 = v95;
  v106 = v96;
  sub_1000089F8(&v105, &v115, &qword_1011B7520);
  sub_1000095E8(v43, &qword_1011B74E8);
  sub_1000095E8(v58, &qword_1011B74F0);
  v65 = v112;
  *(v64 + 96) = v111;
  *(v64 + 112) = v65;
  *(v64 + 128) = v113;
  *(v64 + 144) = v114;
  v66 = v108;
  *(v64 + 32) = v107;
  *(v64 + 48) = v66;
  v67 = v110;
  *(v64 + 64) = v109;
  *(v64 + 80) = v67;
  v68 = v106;
  *v64 = v105;
  *(v64 + 16) = v68;
  v121[0] = v101;
  v121[1] = v102;
  v121[2] = v103;
  *&v121[3] = v104;
  v117 = v97;
  v118 = v98;
  v119 = v99;
  v120 = v100;
  v115 = v95;
  v116 = v96;
  sub_1000095E8(&v115, &qword_1011B7520);
  sub_1000095E8(v60, &qword_1011B74E8);
  return sub_1000095E8(v94, &qword_1011B74F0);
}

double sub_100BDEB5C@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ScaleTransition();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(&v35 + 1))
  {
    sub_1000098E0();
    v9 = Text.init<A>(_:)();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = static Animation.easeInOut(duration:)();
    static UnitPoint.center.getter();
    ScaleTransition.init(_:anchor:)();
    (*(v3 + 16))(v5, v8, v2);
    sub_100BDF9B4(&qword_1011B7528, &type metadata accessor for ScaleTransition);
    v17 = AnyTransition.init<A>(_:)();
    (*(v3 + 8))(v8, v2);
    v28 = v9;
    v29 = v11;
    v30 = v13 & 1;
    v31 = v15;
    v32 = v16;
    v33 = v17;
    v34 = 0;
  }

  else
  {
    v18 = Image.init(_internalSystemName:)();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v35 == 1)
    {
      v19 = static Color.primary.getter();
    }

    else
    {
      v19 = static Color.accentColor.getter();
    }

    v20 = v19;
    v21 = static Font.callout.getter();
    KeyPath = swift_getKeyPath();
    v28 = v18;
    v29 = v20;
    v30 = KeyPath;
    v31 = v21;
    v32 = 0;
    v33 = 0;
    v34 = 1;
  }

  sub_10010FC20(&qword_1011B7538);
  sub_10010FC20(&qword_1011B7540);
  sub_100BDF9FC();
  sub_100BDFAE0();
  _ConditionalContent<>.init(storage:)();
  result = *&v35;
  v24 = v36;
  v25 = v37;
  v26 = v38;
  *a1 = v35;
  *(a1 + 16) = v24;
  *(a1 + 32) = v25;
  *(a1 + 48) = v26;
  return result;
}

uint64_t Reactions.StackView.Specs.init(maxItemCount:platterLength:stackSpacing:fontSize:sizingMode:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a6;
  *(a3 + 32) = a2 & 1;
  return result;
}

uint64_t sub_100BDEEB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Reactions.StackView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100BDEF1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Reactions.StackView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100BDEF80@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for Reactions.StackView(0) - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for BlendMode() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_100BDD528(v1 + v4, v7, a1);
}

unint64_t sub_100BDF068()
{
  result = qword_1011B71B8;
  if (!qword_1011B71B8)
  {
    sub_1001109D0(&qword_1011B71A8);
    sub_100BDF0EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B71B8);
  }

  return result;
}

unint64_t sub_100BDF0EC()
{
  result = qword_1011B71C0;
  if (!qword_1011B71C0)
  {
    sub_1001109D0(&qword_1011B71C8);
    sub_100BDF178();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B71C0);
  }

  return result;
}

unint64_t sub_100BDF178()
{
  result = qword_1011B71D0;
  if (!qword_1011B71D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B71D0);
  }

  return result;
}

unint64_t sub_100BDF1CC()
{
  result = qword_1011B71D8;
  if (!qword_1011B71D8)
  {
    sub_1001109D0(&qword_1011B71B0);
    sub_100020674(&qword_1011B71E0, &qword_1011B71E8);
    sub_100020674(&qword_1011B5ED8, &qword_1011B5EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B71D8);
  }

  return result;
}

unint64_t sub_100BDF2D0()
{
  result = qword_1011B7210;
  if (!qword_1011B7210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7210);
  }

  return result;
}

void sub_100BDF37C()
{
  sub_100BDF48C();
  if (v0 <= 0x3F)
  {
    sub_100BDF520(319, &qword_1011B45F8, &type metadata accessor for ColorScheme);
    if (v1 <= 0x3F)
    {
      sub_100BDF520(319, &unk_1011B3228, &type metadata accessor for ColorSchemeContrast);
      if (v2 <= 0x3F)
      {
        sub_100BDF520(319, &qword_1011B4260, &type metadata accessor for DynamicTypeSize);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100BDF48C()
{
  if (!qword_1011B7280)
  {
    type metadata accessor for Reactions.StackView.Model(255);
    sub_100BDF9B4(&qword_1011B7188, type metadata accessor for Reactions.StackView.Model);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1011B7280);
    }
  }
}

void sub_100BDF520(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100BDF57C()
{
  sub_1000054CC(319, &qword_1011B72F8, &qword_1011B7770);
  if (v0 <= 0x3F)
  {
    sub_100005390(319, &unk_1011B7300);
    if (v1 <= 0x3F)
    {
      sub_1000054CC(319, &unk_1011B5740, &qword_1011B1180);
      if (v2 <= 0x3F)
      {
        sub_100005390(319, &qword_1011B3E78);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_100BDF718(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100BDF75C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100BDF7C4()
{
  result = qword_1011B74B0;
  if (!qword_1011B74B0)
  {
    sub_1001109D0(&qword_1011B74B8);
    sub_100BDF850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B74B0);
  }

  return result;
}

unint64_t sub_100BDF850()
{
  result = qword_1011B74C0;
  if (!qword_1011B74C0)
  {
    sub_1001109D0(&qword_1011B7208);
    sub_100BDF8DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B74C0);
  }

  return result;
}

unint64_t sub_100BDF8DC()
{
  result = qword_1011B74C8;
  if (!qword_1011B74C8)
  {
    sub_1001109D0(&qword_1011B7200);
    sub_100020674(&qword_1011B74D0, &qword_1011B74D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B74C8);
  }

  return result;
}

double sub_100BDF994(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_100BDF9B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100BDF9FC()
{
  result = qword_1011B7548;
  if (!qword_1011B7548)
  {
    sub_1001109D0(&qword_1011B7538);
    sub_100020674(&qword_1011B7550, &qword_1011B7558);
    sub_100020674(&qword_1011B5ED8, &qword_1011B5EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7548);
  }

  return result;
}

unint64_t sub_100BDFAE0()
{
  result = qword_1011B7560;
  if (!qword_1011B7560)
  {
    sub_1001109D0(&qword_1011B7540);
    sub_100BDFB98();
    sub_100020674(&unk_1011B48B0, &qword_1011B2D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7560);
  }

  return result;
}

unint64_t sub_100BDFB98()
{
  result = qword_1011B7568;
  if (!qword_1011B7568)
  {
    sub_1001109D0(&qword_1011B7570);
    sub_100020674(&qword_1011B7578, &qword_1011B7580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7568);
  }

  return result;
}

id sub_100BDFD38(uint64_t a1, uint64_t a2)
{
  sub_100018AA0(a1, v16);
  v5 = v17;
  if (v17)
  {
    v6 = sub_10000954C(v16, v17);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    sub_10000959C(v16);
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for SliderView.PanGestureRecognizer();
  v15.receiver = v2;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, "initWithTarget:action:", v11, a2);
  swift_unknownObjectRelease();
  sub_100011EC0(a1);
  return v13;
}

uint64_t *SliderView.Specs.barHeight.unsafeMutableAddressor()
{
  if (qword_1011B0778 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.barHeight;
}

uint64_t *SliderView.Specs.expandedBarHeight.unsafeMutableAddressor()
{
  if (qword_1011B0780 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.expandedBarHeight;
}

CGFloat sub_100BE0058()
{
  CGAffineTransformMakeScale(&v1, 1.05, 1.05);
  result = v1.a;
  *static SliderView.Specs.expandedTransform = v1;
  return result;
}

char *SliderView.Specs.expandedTransform.unsafeMutableAddressor()
{
  if (qword_1011B0788 != -1)
  {
    swift_once();
  }

  return static SliderView.Specs.expandedTransform;
}

double static SliderView.Specs.expandedTransform.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1011B0788 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *&static SliderView.Specs.expandedTransform[16];
  *a1 = *static SliderView.Specs.expandedTransform;
  a1[1] = v1;
  result = *&static SliderView.Specs.expandedTransform[32];
  a1[2] = *&static SliderView.Specs.expandedTransform[32];
  return result;
}

uint64_t *SliderView.Specs.stretchLimit.unsafeMutableAddressor()
{
  if (qword_1011B0790 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.stretchLimit;
}

uint64_t *SliderView.Specs.escapeHeight.unsafeMutableAddressor()
{
  if (qword_1011B0798 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.escapeHeight;
}

id sub_100BE0290()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051260355;
  LODWORD(v2) = 1059816735;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_10121BAC0 = result;
  return result;
}

double sub_100BE02E4()
{
  v0 = Int.seconds.getter(1);
  result = v0 / Int.seconds.getter(100);
  qword_10121BAC8 = *&result;
  return result;
}

id SliderView.panRecognizer.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for SliderView.PanGestureRecognizer()) initWithTarget:v0 action:"panGestureRecognized:"];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void SliderView.panRecognizer.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer) = a1;
}

void (*SliderView.panRecognizer.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = SliderView.panRecognizer.getter();
  return sub_100BE0424;
}

void sub_100BE0424(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer) = v2;
}

id SliderView.trackLayoutGuide.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.trackLayoutGuide.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SliderView.elapsedTrackColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.elapsedTrackColor.setter(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor);
  swift_beginAccess();
  v4 = *v3;
  *v3 = a1;
  v5 = a1;

  v6 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
  v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (*(v1 + v7) == 1)
  {
    v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor);
    swift_beginAccess();
  }

  [v6 setBackgroundColor:*v3];
  v8 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
  v9 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  [v8 setBackgroundColor:*(v1 + v9)];
}

void (*SliderView.elapsedTrackColor.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  *(v3 + 72) = v1;
  *(v3 + 80) = v4;
  swift_beginAccess();
  return sub_100BE0734;
}

void sub_100BE0734(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[9];
    v5 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
    v6 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    if (*(v4 + v6))
    {
      v7 = (v3[9] + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor);
      swift_beginAccess();
      v8 = v3[9];
    }

    else
    {
      v8 = v3[9];
      v7 = (v8 + v3[10]);
    }

    [v5 setBackgroundColor:*v7];
    v9 = *(v8 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
    v10 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
    swift_beginAccess();
    [v9 setBackgroundColor:*(v8 + v10)];
  }

  free(v3);
}

id SliderView.remainingTrackColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.remainingTrackColor.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
  v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (*(v1 + v7) == 1)
  {
    v8 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  }

  else
  {
    v8 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  }

  v9 = (v1 + v8);
  swift_beginAccess();
  [v6 setBackgroundColor:*v9];
  [*(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack) setBackgroundColor:*(v1 + v3)];
}

void (*SliderView.remainingTrackColor.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  *(v3 + 72) = v1;
  *(v3 + 80) = v4;
  swift_beginAccess();
  return sub_100BE0A10;
}

void sub_100BE0A10(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[9];
    v5 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
    v6 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    v7 = &OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
    if (!*(v4 + v6))
    {
      v7 = &OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
    }

    v8 = *v7;
    v10 = v3[9];
    v9 = v3[10];
    swift_beginAccess();
    [v5 setBackgroundColor:*(v10 + v8)];
    [*(v10 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack) setBackgroundColor:*(v10 + v9)];
  }

  free(v3);
}

id SliderView.trackingColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.trackingColor.setter(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor);
  swift_beginAccess();
  v4 = *v3;
  *v3 = a1;
  v5 = a1;

  v6 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
  v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if ((*(v1 + v7) & 1) == 0)
  {
    v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor);
    swift_beginAccess();
  }

  [v6 setBackgroundColor:*v3];
  v8 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
  v9 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  [v8 setBackgroundColor:*(v1 + v9)];
}

void (*SliderView.trackingColor.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  *(v3 + 72) = v1;
  *(v3 + 80) = v4;
  swift_beginAccess();
  return sub_100BE0CE8;
}

void sub_100BE0CE8(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[9];
    v5 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
    v6 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    if (*(v4 + v6) == 1)
    {
      v7 = v3[9];
      v8 = (v7 + v3[10]);
    }

    else
    {
      v8 = (v3[9] + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor);
      swift_beginAccess();
      v7 = v3[9];
    }

    [v5 setBackgroundColor:*v8];
    v9 = *(v7 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
    v10 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
    swift_beginAccess();
    [v9 setBackgroundColor:*(v7 + v10)];
  }

  free(v3);
}

double SliderView.value.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SliderView.isEnabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void SliderView.isEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = SliderView.panRecognizer.getter();
  [v4 setEnabled:*(v1 + v3)];
}

void (*SliderView.isEnabled.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_100BE0F70;
}

void sub_100BE0F70(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = SliderView.panRecognizer.getter();
    [v6 setEnabled:*(v4 + v5)];
  }

  free(v3);
}

uint64_t SliderView.isTracking.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SliderView.transitionStartValue.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue;
  swift_beginAccess();
  return *v1;
}

void SliderView.transitionStartValue.setter(uint64_t a1, char a2)
{
  v5 = &v2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  *v5 = *&a1;
  *(v5 + 8) = a2 & 1;
  if (v7)
  {
    if (a2)
    {
      return;
    }
  }

  else if ((a2 & 1) == 0 && v6 == *&a1)
  {
    return;
  }

  sub_100BE37D8();
  if ((v5[1] & 1) == 0)
  {
    v8 = *&v2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
    if (v8)
    {
      v9 = *v5;
      v10 = v8;
      [v2 bounds];
      [v10 setConstant:v9 * CGRectGetWidth(v11)];
    }
  }
}

void (*SliderView.transitionStartValue.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  return sub_100BE11EC;
}

void sub_100BE11EC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(v3 + 32);
  if (a2)
  {
    SliderView.transitionStartValue.setter(*&v4, v5);
    goto LABEL_3;
  }

  v6 = *(v3 + 40) + *(v3 + 48);
  v7 = *v6;
  v8 = *(v6 + 8);
  *v6 = v4;
  *(v6 + 8) = v5;
  if (v8)
  {
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (v7 == v4)
    {
      v9 = v5;
    }

    else
    {
      v9 = 1;
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v10 = *(v3 + 40) + *(v3 + 48);
  sub_100BE37D8();
  if ((*(v10 + 8) & 1) == 0)
  {
    v11 = *(v3 + 40);
    v12 = *&v11[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
    if (v12)
    {
      v13 = *&v11[*(v3 + 48)];
      v14 = v12;
      [v11 bounds];
      [v14 setConstant:v13 * CGRectGetWidth(v16)];
    }
  }

LABEL_3:

  free(v3);
}

uint64_t sub_100BE13A8(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_100BE1430(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id SliderView.semanticContentAttribute.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SliderView();
  return objc_msgSendSuper2(&v2, "semanticContentAttribute");
}

id SliderView.semanticContentAttribute.setter(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SliderView();
  objc_msgSendSuper2(&v4, "setSemanticContentAttribute:", a1);
  return [*&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView] setSemanticContentAttribute:{objc_msgSend(v1, "semanticContentAttribute")}];
}

uint64_t sub_100BE166C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for UIView.Corner.Radius();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_10010FC20(&qword_1011B7710);
  __chkstk_darwin(v14 - 8);
  v16 = &v95 - v15;
  v17 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView;
  v18 = [objc_allocWithZone(UIStackView) init];
  v19 = UIView.forAutolayout.getter();

  *&v5[v17] = v19;
  v20 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack;
  v21 = [objc_allocWithZone(UIView) init];
  v22 = UIView.forAutolayout.getter();

  *&v5[v20] = v22;
  v23 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack;
  v24 = [objc_allocWithZone(UIView) init];
  v25 = UIView.forAutolayout.getter();

  *&v5[v23] = v25;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint] = 0;
  v26 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_feedbackGenerator;
  *&v5[v26] = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:0];
  v27 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth];
  *v27 = 0;
  v27[8] = 1;
  v28 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds];
  *v28 = 0u;
  v28[1] = 0u;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer] = 0;
  v29 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  *&v5[v29] = [objc_allocWithZone(UILayoutGuide) init];
  v30 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  v31 = objc_opt_self();
  *&v5[v30] = [v31 whiteColor];
  v32 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  *&v5[v32] = [v31 systemFillColor];
  v33 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  if (qword_1011B04D0 != -1)
  {
    swift_once();
  }

  v34 = static UIColor.MusicTint.normal;
  *&v5[v33] = static UIColor.MusicTint.normal;
  v35 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  *&v5[v35] = Int.seconds.getter(0);
  v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled] = 1;
  v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking] = 0;
  v36 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
  *v36 = 0;
  v36[8] = 1;
  v37 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler];
  *v37 = 0;
  v37[1] = 0;
  v38 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_cancelledHandler];
  *v38 = 0;
  v38[1] = 0;
  v39 = type metadata accessor for SliderView();
  v96.receiver = v5;
  v96.super_class = v39;
  v40 = v34;
  v41 = objc_msgSendSuper2(&v96, "initWithFrame:", a1, a2, a3, a4);
  v42 = SliderView.panRecognizer.getter();
  [v42 _setRequiresSystemGesturesToFail:0];

  v43 = *&v41[OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer];
  v44 = v41;
  [v44 addGestureRecognizer:v43];
  v45 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  swift_beginAccess();
  [v44 addLayoutGuide:*&v44[v45]];
  [v44 setExclusiveTouch:1];
  v46 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView;
  v47 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack;
  [*&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView] addArrangedSubview:*&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack]];
  [*&v44[v46] addArrangedSubview:*&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack]];
  [*&v44[v46] setAxis:0];
  v48 = qword_1011B0778;
  v49 = *&v44[v46];
  if (v48 != -1)
  {
    swift_once();
  }

  v50 = *&static SliderView.Specs.barHeight;
  *v13 = *&static SliderView.Specs.barHeight * 0.5;
  *(v13 + 8) = 1;
  (*(v11 + 104))(v13, enum case for UIView.Corner.Radius.value(_:), v10);
  static CACornerMask.all.getter();
  UIView.Corner.init(radius:mask:)();
  v51 = type metadata accessor for UIView.Corner();
  (*(*(v51 - 8) + 56))(v16, 0, 1, v51);
  UIView.corner.setter();

  v52 = [*&v44[v46] layer];
  [v52 setMasksToBounds:1];

  [v44 addSubview:*&v44[v46]];
  v53 = [*&v44[v47] widthAnchor];
  v54 = [v53 constraintEqualToConstant:0.0];

  v55 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint;
  v56 = *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
  *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint] = v54;

  v57 = [*&v44[v46] heightAnchor];
  v58 = [v57 constraintEqualToConstant:v50];

  v59 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint;
  v60 = *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint];
  *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint] = v58;

  sub_10010FC20(&qword_1011B5630);
  result = swift_allocObject();
  *(result + 16) = xmmword_100EE4600;
  v62 = *&v44[v55];
  if (v62)
  {
    v63 = result;
    *(result + 32) = v62;
    v64 = *&v44[v59];
    if (v64)
    {
      v95 = objc_opt_self();
      v63[5] = v64;
      v65 = *&v44[v46];
      v66 = v62;
      v67 = v64;
      v68 = [v65 leadingAnchor];
      v69 = [v44 leadingAnchor];

      v70 = [v68 constraintEqualToAnchor:v69];
      v63[6] = v70;
      v71 = [*&v44[v46] trailingAnchor];
      v72 = [v44 trailingAnchor];

      v73 = [v71 constraintEqualToAnchor:v72];
      v63[7] = v73;
      v74 = [*&v44[v46] topAnchor];
      v75 = [v44 topAnchor];

      v76 = [v74 constraintEqualToAnchor:v75];
      v63[8] = v76;
      v77 = [*&v44[v46] bottomAnchor];
      v78 = [v44 bottomAnchor];

      v79 = [v77 constraintEqualToAnchor:v78];
      v63[9] = v79;
      v80 = [*&v44[v46] centerYAnchor];
      v81 = [v44 centerYAnchor];

      v82 = [v80 constraintEqualToAnchor:v81];
      v63[10] = v82;
      v83 = [*&v44[v45] leadingAnchor];
      v84 = [v44 leadingAnchor];

      v85 = [v83 constraintEqualToAnchor:v84];
      v63[11] = v85;
      v86 = [*&v44[v45] trailingAnchor];
      v87 = [v44 trailingAnchor];

      v88 = [v86 constraintEqualToAnchor:v87];
      v63[12] = v88;
      v89 = [*&v44[v45] centerYAnchor];
      v90 = [v44 centerYAnchor];

      v91 = [v89 constraintEqualToAnchor:v90];
      v63[13] = v91;
      v92 = [*&v44[v45] heightAnchor];
      v93 = [v92 constraintEqualToConstant:v50];

      v63[14] = v93;
      sub_100009F78(0, qword_1011B21C0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v95 activateConstraints:isa];

      return v44;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall SliderView.layoutSubviews()()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for SliderView();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  [v0 bounds];
  v1 = &v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds];
  if (!CGRectEqualToRect(v11, *&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds]))
  {
    v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
    if (v2)
    {
      v3 = v2;
      [v0 bounds];
      Width = CGRectGetWidth(v12);
      v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
      swift_beginAccess();
      [v3 setConstant:Width * *&v0[v5]];

      [v0 bounds];
      *v1 = v6;
      *(v1 + 1) = v7;
      *(v1 + 2) = v8;
      *(v1 + 3) = v9;
    }

    else
    {
      __break(1u);
    }
  }
}

void SliderView.setValue(_:animated:)(char a1, double a2)
{
  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  if (a2 <= 1.0)
  {
    v4 = a2;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  if (v4 != *&v2[v5])
  {
    v6 = *&v2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
    if (v6)
    {
      v7 = v6;
      [v2 bounds];
      [v7 setConstant:v4 * CGRectGetWidth(v16)];

      sub_100BE308C();
      v8 = swift_allocObject();
      *(v8 + 16) = v2;
      *(v8 + 24) = v4;
      if (a1)
      {
        v9 = vabdd_f64(*&v2[v5], v4) * 0.25;
        if (v9 > 0.1)
        {
          v10 = v9;
        }

        else
        {
          v10 = 0.1;
        }

        v11 = objc_opt_self();
        v12 = swift_allocObject();
        *(v12 + 16) = sub_100BE3BB0;
        *(v12 + 24) = v8;
        aBlock[4] = sub_100029B6C;
        aBlock[5] = v12;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10002BC98;
        aBlock[3] = &unk_1010E7D28;
        v13 = _Block_copy(aBlock);
        v14 = v2;

        [v11 animateWithDuration:4 delay:v13 options:0 animations:v10 completion:0.0];

        _Block_release(v13);
      }

      else
      {
        *&v2[v5] = v4;
        [v2 layoutIfNeeded];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100BE2464(void *a1)
{
  v3 = [a1 state];
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v35 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
      swift_beginAccess();
      if (v1[v35] != 1)
      {
        return;
      }

      v36 = swift_allocObject();
      *(v36 + 16) = v1;
      v1[v35] = 0;
      v37 = swift_allocObject();
      *(v37 + 16) = 0;
      *(v37 + 24) = v1;
      *(v37 + 32) = sub_100BE3E88;
      *(v37 + 40) = v36;
      v27 = objc_opt_self();
      v55 = sub_100BE41D8;
      v56 = v37;
      aBlock = _NSConcreteStackBlock;
      v52 = 1107296256;
      v28 = &unk_1010E7ED0;
    }

    else
    {
      if (v3 != 4)
      {
        return;
      }

      v24 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
      swift_beginAccess();
      if (v1[v24] != 1)
      {
        return;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = v1;
      v1[v24] = 0;
      v26 = swift_allocObject();
      *(v26 + 16) = 0;
      *(v26 + 24) = v1;
      *(v26 + 32) = sub_100BE3E70;
      *(v26 + 40) = v25;
      v27 = objc_opt_self();
      v55 = sub_100BE3E78;
      v56 = v26;
      aBlock = _NSConcreteStackBlock;
      v52 = 1107296256;
      v28 = &unk_1010E7E58;
    }

    v53 = sub_10002BC98;
    v54 = v28;
    v38 = _Block_copy(&aBlock);
    v39 = v1;

    [v27 _animateUsingSpringWithDuration:2 delay:v38 options:0 mass:1.0 stiffness:0.0 damping:2.0 initialVelocity:500.0 animations:40.0 completion:0.0];
    goto LABEL_39;
  }

  if (v3 == 1)
  {
    v29 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
    if (!v29)
    {
      goto LABEL_54;
    }

    [v29 constant];
    v30 = &v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth];
    *v30 = v31;
    v30[8] = 0;
    v32 = swift_allocObject();
    *(v32 + 16) = v1;
    v33 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    if (v1[v33] == 1)
    {
      v34 = v1;

      return;
    }

    v1[v33] = 1;
    v40 = swift_allocObject();
    *(v40 + 16) = 1;
    *(v40 + 24) = v1;
    *(v40 + 32) = sub_100BE3EA8;
    *(v40 + 40) = v32;
    v41 = objc_opt_self();
    v55 = sub_100BE41D8;
    v56 = v40;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_10002BC98;
    v54 = &unk_1010E7F48;
    v38 = _Block_copy(&aBlock);
    v42 = v1;

    [v41 _animateUsingSpringWithDuration:2 delay:v38 options:0 mass:1.0 stiffness:0.0 damping:1.0 initialVelocity:288.0 animations:26.5 completion:0.0];
LABEL_39:

    _Block_release(v38);
    return;
  }

  if (v3 != 2)
  {
    return;
  }

  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (v1[v4] != 1 || (v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth + 8] & 1) != 0)
  {
    return;
  }

  v5 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth];
  [a1 translationInView:v1];
  v7 = v6;
  v9 = fabs(v8);
  if (qword_1011B0798 != -1)
  {
    v50 = v9;
    swift_once();
    v9 = v50;
  }

  if (v9 >= *&static SliderView.Specs.escapeHeight)
  {
    v43 = SliderView.panRecognizer.getter();
    [v43 setState:4];

    return;
  }

  v10 = [v1 effectiveUserInterfaceLayoutDirection];
  v11 = -v7;
  if (v10 != 1)
  {
    v11 = v7;
  }

  v12 = v5 + v11;
  [v1 bounds];
  Width = CGRectGetWidth(v58);
  if (Width >= v12)
  {
    Width = v12;
  }

  if (Width < 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = Width;
  }

  v15 = v1;
  [v1 bounds];
  v16 = v14 / CGRectGetWidth(v59);
  if (v16 < 0.0)
  {
    v16 = 0.0;
  }

  if (v16 <= 1.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1.0;
  }

  v57 = 14;
  v18 = sub_100025D88();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v18) & 1) == 0)
  {
    v23 = 0;
    v19 = v15;
    goto LABEL_43;
  }

  v19 = v1;
  v20 = &v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
  swift_beginAccess();
  if ((v20[1] & 1) == 0)
  {
    v21 = *v20;
    if (qword_1011B07A8 != -1)
    {
      swift_once();
    }

    v22 = v21 + *&qword_10121BAC8;
    if (v21 - *&qword_10121BAC8 <= v21 + *&qword_10121BAC8)
    {
      if (v21 - *&qword_10121BAC8 <= v17)
      {
        v23 = v17 <= v22;
        if (v17 <= v22)
        {
          v17 = v21;
        }

        goto LABEL_43;
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_54:
    __break(1u);
    return;
  }

LABEL_27:
  v23 = 0;
LABEL_43:
  v44 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  if (v17 != *&v19[v44])
  {
    v45 = v17 == 1.0;
    if (v17 == 0.0)
    {
      v45 = 1;
    }

    if (v45 || v23)
    {
      [*&v19[OBJC_IVAR____TtC11MusicCoreUI10SliderView_feedbackGenerator] impactOccurred];
    }
  }

  SliderView.setValue(_:animated:)(0, v17);
  v46 = v15;
  v47 = &v15[OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler];
  swift_beginAccess();
  v48 = *v47;
  if (*v47)
  {
    v49 = *&v46[v44];

    v48(1, v49);
    sub_100020438(v48);
  }
}

uint64_t sub_100BE2B78(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_cancelledHandler);
  result = swift_beginAccess();
  v3 = *v1;
  if (*v1)
  {

    v3(v4);
    return sub_100020438(v3);
  }

  return result;
}

uint64_t sub_100BE2BEC(uint64_t a1, char a2)
{
  v4 = (a1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler);
  result = swift_beginAccess();
  v6 = *v4;
  if (*v4)
  {
    v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
    swift_beginAccess();
    v8 = *(a1 + v7);

    v6(a2 & 1, v8);
    return sub_100020438(v6);
  }

  return result;
}

void sub_100BE2D0C(char a1, _BYTE *a2, void (*a3)(id))
{
  v6 = type metadata accessor for UIView.Corner.Radius();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_10010FC20(&qword_1011B7710);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - v11;
  v13 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint];
  if ((a1 & 1) == 0)
  {
    if (v13)
    {
      v17 = qword_1011B0778;
      v15 = v13;
      if (v17 != -1)
      {
        swift_once();
      }

      v16 = &static SliderView.Specs.barHeight;
      goto LABEL_10;
    }

LABEL_21:
    __break(1u);
    return;
  }

  if (!v13)
  {
    __break(1u);
    goto LABEL_21;
  }

  v14 = qword_1011B0780;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = &static SliderView.Specs.expandedBarHeight;
LABEL_10:
  v18 = *v16;
  [v15 setConstant:*v16];

  *v9 = v18 * 0.5;
  *(v9 + 8) = 1;
  (*(v7 + 104))(v9, enum case for UIView.Corner.Radius.value(_:), v6);
  static CACornerMask.all.getter();
  UIView.Corner.init(radius:mask:)();
  v19 = type metadata accessor for UIView.Corner();
  (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
  UIView.corner.setter();
  v20 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark];
  if (v20)
  {
    v21 = 0.0;
    if (a1)
    {
      v21 = 1.0;
    }

    v20 = [v20 setAlpha:v21];
  }

  if (a3)
  {
    a3(v20);
  }

  v22 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack];
  v23 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (a2[v23] == 1)
  {
    v24 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  }

  else
  {
    v24 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  }

  v25 = &a2[v24];
  swift_beginAccess();
  [v22 setBackgroundColor:*v25];
  v26 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack];
  v27 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  [v26 setBackgroundColor:*&a2[v27]];
  sub_100BE308C();
  [a2 layoutIfNeeded];
}

void sub_100BE308C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint);
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = v1;
  [v2 constant];
  v5 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint);
  if (!v5)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v6 = v4;
  v7 = v4 * 0.5;
  [v5 constant];
  v9 = v8;
  [*(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView) frame];
  Width = CGRectGetWidth(v24);
  v11 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v6 * 0.5 startAngle:v6 * 0.5 endAngle:v6 * 0.5 clockwise:{1.57079633, 4.71238898}];
  v12 = v11;
  v13 = Width - v7;
  if (v9 <= Width - v7)
  {
    [v11 addLineToPoint:{v9, 0.0}];
    [v12 addLineToPoint:{v9, v6}];
  }

  else if (v9 >= Width)
  {
    [v11 addLineToPoint:{Width - v7, 0.0}];
    [v12 addArcWithCenter:1 radius:Width - v7 startAngle:v6 * 0.5 endAngle:v6 * 0.5 clockwise:{4.71238898, 1.57079633}];
  }

  else
  {
    v14 = v7 - (Width - v9);
    v15 = 1.57079633 - acos(v14 / v7);
    v16 = sqrt(v7 * v7 - v14 * v14);
    v17 = v16 + v16;
    [v12 addLineToPoint:{v13, 0.0}];
    [v12 addArcWithCenter:1 radius:v13 startAngle:v7 endAngle:v7 clockwise:{4.71238898, (v15 + 4.71238898)}];
    [v12 currentPoint];
    v19 = v18;
    [v12 currentPoint];
    [v12 addLineToPoint:{v19, v17 + v20}];
    [v12 addArcWithCenter:1 radius:v13 startAngle:v7 endAngle:v7 clockwise:{(1.57079633 - v15), 1.57079633}];
  }

  [v12 closePath];
  v21 = [v3 layer];
  v22 = [v12 CGPath];
  [v21 setShadowPath:v22];
}

Swift::Void __swiftcall SliderView.addGlowIfNeeded()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow;
  if (!*&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow])
  {
    v2 = [objc_allocWithZone(UIView) init];
    v3 = v0;
    v4 = UIView.forAutolayout.getter();

    v5 = [v4 layer];
    v6 = [objc_opt_self() whiteColor];
    v7 = [v6 CGColor];

    [v5 setShadowColor:v7];
    v8 = [v4 layer];
    [v8 setShadowOpacity:0.0];

    v9 = [v4 layer];
    [v9 setShadowOffset:{0.0, 0.0}];

    v10 = [v4 layer];
    [v10 setShadowRadius:4.0];

    v11 = *&v3[v1];
    *&v3[v1] = v4;
    v12 = v4;

    [v3 addSubview:v12];
    sub_100BE308C();
    sub_100009F78(0, &qword_1011B7C10);
    if (qword_1011B07A0 != -1)
    {
      swift_once();
    }

    v13 = qword_10121BAC0;
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    v15 = v12;
    static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v13, 0, sub_100BE3D98, v14, 0, 0, 0.65, 0.0);
  }
}

Swift::Void __swiftcall SliderView.removeGlowIfNeeded()()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow];
  if (v1)
  {
    sub_100009F78(0, &qword_1011B7C10);
    v2 = qword_1011B07A0;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = qword_10121BAC0;
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    v7 = v3;
    v8 = v0;
    static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v4, 0, sub_100BE3DC0, v5, sub_100BE3DE0, v6, 0.65, 0.0);
  }
}

void sub_100BE3774(void *a1, float a2)
{
  v4 = [a1 layer];
  *&v3 = a2;
  [v4 setShadowOpacity:v3];
}

void sub_100BE37D8()
{
  v1 = v0;
  v2 = sub_100025D88();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2))
  {
    v3 = &v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
    swift_beginAccess();
    v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark;
    v5 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark];
    if (v3[1])
    {
      [v5 removeFromSuperview];
      v6 = *&v1[v4];
      *&v1[v4] = 0;

      isa = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
      *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint] = 0;
    }

    else
    {
      if (v5)
      {
        return;
      }

      v8 = *v3;
      v9 = [objc_allocWithZone(UIView) init];
      v10 = UIView.forAutolayout.getter();

      v11 = [objc_opt_self() blackColor];
      [v10 setBackgroundColor:v11];

      v12 = [v10 layer];
      [v12 setCompositingFilter:kCAFilterDestOut];

      v13 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
      swift_beginAccess();
      v14 = 0.0;
      if (v1[v13])
      {
        v14 = 1.0;
      }

      [v10 setAlpha:v14];
      [v1 addSubview:v10];
      v15 = *&v1[v4];
      *&v1[v4] = v10;
      v16 = v10;

      v17 = [v16 leadingAnchor];
      v18 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView];
      v19 = [v18 leadingAnchor];
      [v1 bounds];
      v20 = [v17 constraintEqualToAnchor:v19 constant:v8 * CGRectGetWidth(v32)];

      v21 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint;
      v22 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
      *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint] = v20;

      sub_10010FC20(&qword_1011B5630);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_100EBE270;
      v24 = [v16 widthAnchor];
      v25 = [v24 constraintEqualToConstant:2.0];

      *(v23 + 32) = v25;
      v26 = [v16 heightAnchor];
      v27 = [v18 heightAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];

      *(v23 + 40) = v28;
      v29 = *&v1[v21];
      if (!v29)
      {
        __break(1u);
        return;
      }

      v30 = objc_opt_self();
      *(v23 + 48) = v29;
      sub_100009F78(0, qword_1011B21C0);
      v31 = v29;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v30 activateConstraints:isa];
    }
  }
}

id sub_100BE3BB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  *&v1[v3] = v2;
  return [v1 layoutIfNeeded];
}

id sub_100BE3C2C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100BE3DE0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow) = 0;
}

unint64_t sub_100BE3E08()
{
  result = qword_1011B76A8;
  if (!qword_1011B76A8)
  {
    sub_100009F78(255, &qword_1011B76A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B76A8);
  }

  return result;
}

uint64_t sub_100BE3EC8()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

void sub_100BE3F10()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView;
  v3 = [objc_allocWithZone(UIStackView) init];
  v4 = UIView.forAutolayout.getter();

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack;
  v6 = [objc_allocWithZone(UIView) init];
  v7 = UIView.forAutolayout.getter();

  *(v1 + v5) = v7;
  v8 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack;
  v9 = [objc_allocWithZone(UIView) init];
  v10 = UIView.forAutolayout.getter();

  *(v1 + v8) = v10;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint) = 0;
  v11 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_feedbackGenerator;
  *(v1 + v11) = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:0];
  v12 = v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds);
  *v13 = 0u;
  v13[1] = 0u;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer) = 0;
  v14 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  *(v1 + v14) = [objc_allocWithZone(UILayoutGuide) init];
  v15 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  v16 = objc_opt_self();
  *(v1 + v15) = [v16 whiteColor];
  v17 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  *(v1 + v17) = [v16 systemFillColor];
  v18 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  if (qword_1011B04D0 != -1)
  {
    swift_once();
  }

  *(v1 + v18) = static UIColor.MusicTint.normal;
  v19 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  *(v1 + v19) = Int.seconds.getter(0);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking) = 0;
  v20 = v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_cancelledHandler);
  *v22 = 0;
  v22[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t SymbolButton.CustomView.init(view:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>, int64x2_t a3@<Q0>, int64x2_t a4@<Q1>)
{
  a3.i64[0] = 0;
  *a2 = result;
  a4.i64[0] = result;
  v4 = vdupq_lane_s64(vmvnq_s8(vceqq_s64(a4, a3)).i64[0], 0);
  v5 = vandq_s8(*&UIEdgeInsetsZero.bottom, v4);
  v6 = 0x3FF0000000000000;
  *(a2 + 8) = vandq_s8(*&UIEdgeInsetsZero.top, v4);
  if (!result)
  {
    v6 = 0;
  }

  *(a2 + 24) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = 0;
  return result;
}

BOOL sub_100BE4230(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  v4 = qword_100F09C98[a1];
  Hasher._combine(_:)(v4);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = qword_100F09C98[*(*(a2 + 48) + v7)];
    result = v9 == v4;
    if (v9 == v4)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_100BE4310(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Playlist.Collaborator();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_100BF905C(&qword_1011B48E0, &type metadata accessor for Playlist.Collaborator), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_100BF905C(&qword_1011B48E8, &type metadata accessor for Playlist.Collaborator);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t SymbolButton.updateConfigurationIfNeeded(_:animation:)(uint64_t a1, uint64_t a2, id a3, uint64_t a4, int a5)
{
  v6 = v5;
  v77 = a5;
  v78 = a4;
  v76 = a2;
  v75 = type metadata accessor for UIViewConfigurationState();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_1011B6D30);
  __chkstk_darwin(v10 - 8);
  v12 = &v70 - v11;
  v13 = type metadata accessor for SymbolButton.Configuration(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a1, v12, &qword_1011B6D30);
  v17 = *(v14 + 48);
  if (v17(v12, 1, v13) == 1)
  {
    v18 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_100BF8F8C(&v6[v18], v16, type metadata accessor for SymbolButton.Configuration);
    if (v17(v12, 1, v13) != 1)
    {
      sub_1000095E8(v12, &qword_1011B6D30);
    }
  }

  else
  {
    sub_100BF8FF4(v12, v16, type metadata accessor for SymbolButton.Configuration);
  }

  v19 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment;
  swift_beginAccess();
  if (v6[v19])
  {
    sub_100282F24(*(v16 + 25), *(v16 + 26));
    *(v16 + 200) = xmmword_100EBCEE0;
    *(v16 + 27) = 0;
    *(v16 + 28) = 0;
  }

  v20 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden;
  swift_beginAccess();
  v21 = &selRef_trackNumber;
  if ((v6[v20] & 1) != 0 || *&v16[*(v13 + 68)] != 0.0)
  {
    [v6 state];
    v22 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled;
    swift_beginAccess();
    v23 = v6[v22];
    v79 = v13;
    v72 = v19;
    if (v23 & 1) != 0 || (v24 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted, swift_beginAccess(), (v6[v24]) || (v25 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected, swift_beginAccess(), v6[v25] == 1))
    {
      if ((v6[v19] & 1) == 0)
      {
        v70 = v22;
        v71 = a3;
        if (qword_1011B07E8 != -1)
        {
          swift_once();
        }

        v27 = static SymbolButton.Background.normal;
        v26 = qword_10121BB88;
        v29 = qword_10121BB90;
        v28 = qword_10121BB98;
        v30 = *(v16 + 25);
        v31 = *(v16 + 26);

        v32 = v26;
        sub_100282F24(v30, v31);
        *(v16 + 25) = v27;
        *(v16 + 26) = v26;
        *(v16 + 27) = v29;
        *(v16 + 28) = v28;
        a3 = v71;
        v13 = v79;
        v21 = &selRef_trackNumber;
        v22 = v70;
      }

      v33 = [v6 v21[4]];
      v34 = [v33 userInterfaceIdiom];

      if (v34 == 6)
      {
        v35 = objc_opt_self();
        v36 = [v35 labelColor];

        *(v16 + 14) = v36;
        v13 = v79;
        v37 = [v35 labelColor];

        *(v16 + 22) = v37;
      }

      *&v16[*(v13 + 68)] = 0x3FF0000000000000;
      v19 = v72;
    }

    if (([v6 state] & 2) != 0 && v6[v22] == 1)
    {
      *&v16[*(v13 + 68)] = 0x3FD0000000000000;
    }

    if ([v6 state])
    {
      v38 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted;
      swift_beginAccess();
      v39 = v79;
      if (v6[v38] == 1)
      {
        if ((v6[v19] & 1) == 0)
        {
          v71 = a3;
          if (qword_1011B07F0 != -1)
          {
            swift_once();
          }

          v40 = static SymbolButton.Background.highlighted;
          v41 = qword_10121BBA8;
          v42 = qword_10121BBB8;
          v70 = qword_10121BBB0;
          v43 = *(v16 + 25);
          v44 = *(v16 + 26);

          v45 = v41;
          sub_100282F24(v43, v44);
          *(v16 + 25) = v40;
          *(v16 + 26) = v41;
          *(v16 + 27) = v70;
          *(v16 + 28) = v42;
          a3 = v71;
          v39 = v79;
          v21 = &selRef_trackNumber;
        }

        v46 = *(v39 + 68);
        *&v16[v46] = 0x3FE0000000000000;
        v47 = [v6 v21[4]];
        v48 = [v47 userInterfaceIdiom];

        v49 = v48 == 6;
        v19 = v72;
        if (v49)
        {
          v50 = objc_opt_self();
          v51 = [v50 labelColor];

          *(v16 + 14) = v51;
          v52 = [v50 labelColor];

          *(v16 + 22) = v52;
          *&v16[v46] = 0x3FF0000000000000;
          if ([v6 showsMenuAsPrimaryAction])
          {
            if ([v6 isContextMenuInteractionEnabled])
            {
              v71 = v52;
              v53 = v51;
              if ((v6[v19] & 1) == 0)
              {
                sub_100282F24(*(v16 + 25), *(v16 + 26));
                *(v16 + 25) = 0x3FF0000000000000;
                *(v16 + 26) = 0;
                *(v16 + 27) = 0;
                *(v16 + 28) = 0;
              }

              v54 = [v50 blackColor];

              *(v16 + 14) = v54;
              v55 = [v50 blackColor];

              *(v16 + 22) = v55;
            }
          }
        }
      }
    }

    if (([v6 state] & 4) != 0)
    {
      v56 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected;
      swift_beginAccess();
      v57 = v6[v56];
      v58 = v79;
      if (v57 == 1)
      {
        if ((v6[v19] & 1) == 0)
        {
          sub_100282F24(*(v16 + 25), *(v16 + 26));
          *(v16 + 25) = 0x3FF0000000000000;
          *(v16 + 26) = 0;
          *(v16 + 27) = 0;
          *(v16 + 28) = 0;
        }

        v59 = *(v58 + 68);
        *&v16[v59] = 0x3FF0000000000000;
        v60 = [v6 v21[4]];
        v61 = [v60 userInterfaceIdiom];

        if (v61 == 6)
        {
          v62 = objc_opt_self();
          v63 = [v62 blackColor];

          *(v16 + 14) = v63;
          v64 = [v62 blackColor];

          *(v16 + 22) = v64;
        }

        else if ([v6 state])
        {
          *&v16[v59] = 0x3FE0000000000000;
        }
      }
    }
  }

  v65 = &v6[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider];
  swift_beginAccess();
  v66 = *v65;
  if (*v65)
  {

    v67 = [v6 v21[4]];
    v68 = v73;
    UIViewConfigurationState.init(traitCollection:)();
    [v6 isEnabled];
    UIViewConfigurationState.isDisabled.setter();
    [v6 isSelected];
    UIViewConfigurationState.isSelected.setter();
    [v6 isHighlighted];
    UIViewConfigurationState.isHighlighted.setter();
    v66(v68, v16);
    sub_100020438(v66);
    (*(v74 + 8))(v68, v75);
  }

  SymbolButton.setConfiguration(_:animation:updates:)(v16, v76, a3, v78, v77 & 1, _swiftEmptyArrayStorage);
  return sub_100BF7180(v16, type metadata accessor for SymbolButton.Configuration);
}

__n128 static SymbolButton.Material.with(_:)@<Q0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v6 = 0uLL;
  v7 = 0;
  v8 = 2;
  v9 = 0uLL;
  a1(&v6);
  v3 = v7;
  v4 = v8;
  result = v9;
  *a2 = v6;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = result;
  return result;
}

double static SymbolButton.Symbol.with(_:)@<D0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v9 = 0uLL;
  v13 = 0uLL;
  v17 = 0;
  *&v16[7] = 0;
  *&v10 = 0;
  *(&v10 + 1) = UIFontTextStyleSubheadline;
  *&v11 = 0;
  BYTE8(v11) = 1;
  v12 = xmmword_100EFDCA0;
  v14[0] = -1;
  *&v14[16] = 0;
  *&v14[24] = 0x3FF0000000000000;
  *&v14[1] = *v16;
  v15 = 0;
  v4 = UIFontTextStyleSubheadline;
  a1(&v9);
  v5 = *v14;
  *(a2 + 64) = v13;
  *(a2 + 80) = v5;
  *(a2 + 96) = *&v14[16];
  *(a2 + 112) = v15;
  v6 = v10;
  *a2 = v9;
  *(a2 + 16) = v6;
  result = *&v11;
  v8 = v12;
  *(a2 + 32) = v11;
  *(a2 + 48) = v8;
  return result;
}

__n128 static SymbolButton.Title.with(_:)@<Q0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v7 = 0uLL;
  v8.n128_u64[0] = UIFontTextStyleSubheadline;
  v8.n128_f64[1] = UIFontWeightSemibold;
  v9 = 0uLL;
  v10 = 0x3FF0000000000000uLL;
  LOBYTE(v11) = 0;
  *(&v11 + 1) = 0;
  v4 = UIFontTextStyleSubheadline;
  a1(&v7);
  v5 = v10;
  *(a2 + 32) = v9;
  *(a2 + 48) = v5;
  *(a2 + 64) = v11;
  result = v8;
  *a2 = v7;
  *(a2 + 16) = result;
  return result;
}

uint64_t static SymbolButton.Background.with(_:)(void (*a1)(uint64_t *))
{
  v2 = 0x3FF0000000000000;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  a1(&v2);
  return v3;
}

char *SymbolButton.__allocating_init(configuration:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_100BF5FEC(a1, a2, a3);
  sub_100020438(a2);
  return v8;
}

char *SymbolButton.init(configuration:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100BF5FEC(a1, a2, a3);
  sub_100020438(a2);
  return v4;
}

void sub_100BE51EC(void *a1)
{
  if ([a1 sender])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      v1 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_handler];
      swift_beginAccess();
      v2 = *v1;
      if (*v1)
      {

        v2();

        sub_100020438(v2);
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1000095E8(v6, &qword_1011B7C70);
  }
}

id SymbolButton._monochromaticTreatment.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SymbolButton(0);
  return objc_msgSendSuper2(&v2, "_monochromaticTreatment");
}

void SymbolButton._monochromaticTreatment.setter(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SymbolButton(0);
  objc_msgSendSuper2(&v5, "_setMonochromaticTreatment:", a1);
  v3 = sub_100BEDD78();
  [v3 _setMonochromaticTreatment:{objc_msgSend(v1, "_monochromaticTreatment")}];

  v4 = sub_100BEDC00();
  [v4 _setMonochromaticTreatment:{objc_msgSend(v1, "_monochromaticTreatment")}];
}

uint64_t SymbolButton.debugLabel.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t SymbolButton.debugLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t SymbolButton.configurationProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = sub_10010FC20(&qword_1011B6D30);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = (v2 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider);
  swift_beginAccess();
  v9 = *v8;
  *v8 = a1;
  v8[1] = a2;
  sub_100030444(a1);
  sub_100020438(v9);
  v10 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  SymbolButton.updateConfigurationIfNeeded(_:animation:)(v7, 0, 0, 0, 1);
  sub_100020438(a1);
  return sub_1000095E8(v7, &qword_1011B6D30);
}

void (*SymbolButton.configurationProvider.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(sub_10010FC20(&qword_1011B6D30) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  *(v4 + 32) = v6;
  swift_beginAccess();
  return sub_100BE585C;
}

void sub_100BE585C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[4];
  if ((a2 & 1) == 0)
  {
    v5 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v4, 0, 0, 0, 1);
    sub_1000095E8(v4, &qword_1011B6D30);
  }

  free(v4);

  free(v3);
}

uint64_t SymbolButton.configurationState.getter()
{
  v1 = [v0 traitCollection];
  UIViewConfigurationState.init(traitCollection:)();
  [v0 isEnabled];
  UIViewConfigurationState.isDisabled.setter();
  [v0 isSelected];
  UIViewConfigurationState.isSelected.setter();
  [v0 isHighlighted];
  return UIViewConfigurationState.isHighlighted.setter();
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenHighlighted.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*SymbolButton.automaticallyAdjustsAlphaWhenHighlighted.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(sub_10010FC20(&qword_1011B6D30) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_100BF94BC;
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenSelected.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100BE5BC0(char a1, uint64_t *a2)
{
  v5 = a1 & 1;
  v6 = sub_10010FC20(&qword_1011B6D30);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = *a2;
  result = swift_beginAccess();
  v11 = *(v2 + v9);
  *(v2 + v9) = a1;
  if (v11 != v5)
  {
    v12 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v8, 0, 0, 0, 1);
    return sub_1000095E8(v8, &qword_1011B6D30);
  }

  return result;
}

uint64_t (*SymbolButton.automaticallyAdjustsAlphaWhenSelected.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(sub_10010FC20(&qword_1011B6D30) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_100BF94BC;
}

void sub_100BE5DB8(void ***a1)
{
  v1 = *a1;
  v2 = (*a1)[5];
  v3 = (*a1)[3];
  v4 = *(*a1 + 48);
  v5 = v2[v3];
  v2[v3] = v4;
  if (v4 != v5)
  {
    v6 = v1[4];
    v7 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v6, 0, 0, 0, 1);
    sub_1000095E8(v6, &qword_1011B6D30);
  }

  free(v1[4]);

  free(v1);
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenDisabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*SymbolButton.automaticallyAdjustsAlphaWhenDisabled.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(sub_10010FC20(&qword_1011B6D30) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_100BF94BC;
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenHidden.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*SymbolButton.automaticallyAdjustsAlphaWhenHidden.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(sub_10010FC20(&qword_1011B6D30) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_100BF94BC;
}

uint64_t SymbolButton.prefersSolariumTreatment.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*SymbolButton.prefersSolariumTreatment.modify(uint64_t *a1))(void ***)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(sub_10010FC20(&qword_1011B6D30) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_100BE61F8;
}

uint64_t SymbolButton.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  return sub_100BF8F8C(v1 + v3, a1, type metadata accessor for SymbolButton.Configuration);
}

void (*SymbolButton.configuration.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(type metadata accessor for SymbolButton.Configuration(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 32) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 32) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 40) = v6;
  v8 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_100BF8F8C(v1 + v8, v7, type metadata accessor for SymbolButton.Configuration);
  return sub_100BE63CC;
}

void sub_100BE63CC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    sub_100BF8F8C(*(*a1 + 40), v3, type metadata accessor for SymbolButton.Configuration);
    SymbolButton.setConfiguration(_:animation:updates:)(v3, 0, 0, 0, 1, _swiftEmptyArrayStorage);
    sub_100BF7180(v3, type metadata accessor for SymbolButton.Configuration);
  }

  else
  {
    SymbolButton.setConfiguration(_:animation:updates:)(*(*a1 + 40), 0, 0, 0, 1, _swiftEmptyArrayStorage);
  }

  sub_100BF7180(v4, type metadata accessor for SymbolButton.Configuration);
  free(v4);
  free(v3);

  free(v2);
}

uint64_t *SymbolButton.Background.normal.unsafeMutableAddressor()
{
  if (qword_1011B07E8 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.normal;
}

uint64_t *SymbolButton.Background.highlighted.unsafeMutableAddressor()
{
  if (qword_1011B07F0 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.highlighted;
}

uint64_t SymbolButton.Update.alongside.getter()
{
  v1 = *v0;
  sub_100030444(*v0);
  return v1;
}

uint64_t SymbolButton.Update.alongside.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100020438(*v2);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SymbolButton.Update.completion.getter()
{
  v1 = *(v0 + 32);
  sub_100030444(v1);
  return v1;
}

uint64_t SymbolButton.Update.completion.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100020438(*(v2 + 32));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SymbolButton.Update.init(alongside:animationOptions:completion:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a6;
  *(a5 + 24) = a7;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  return result;
}

void SymbolButton.setConfiguration(_:animation:updates:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v171 = a6;
  LODWORD(v170) = a5;
  v164 = a4;
  v162 = *&a3;
  v168 = *&a2;
  ObjectType = swift_getObjectType();
  v174 = sub_10010FC20(&qword_1011B1188);
  __chkstk_darwin(v174);
  v9 = &v158 - v8;
  v10 = type metadata accessor for UUID();
  v172 = *(v10 - 8);
  v173 = v10;
  __chkstk_darwin(v10);
  v12 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SymbolButton.Configuration(0);
  v165 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v175 = &v158 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v169 = &v158 - v17;
  v18 = __chkstk_darwin(v16);
  v167 = &v158 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v158 - v21;
  v166 = v23;
  __chkstk_darwin(v20);
  v25 = &v158 - v24;
  v26 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_100BF8F8C(v6 + v26, v25, type metadata accessor for SymbolButton.Configuration);
  v27 = a1;
  v28 = _s11MusicCoreUI12SymbolButtonC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(a1, v25);
  v29 = 0;
  if (v28)
  {
    goto LABEL_62;
  }

  sub_100BF8F8C(v27, v22, type metadata accessor for SymbolButton.Configuration);
  swift_beginAccess();
  v159 = v22;
  v160 = v6;
  sub_100BF6E60(v22, v6 + v26);
  swift_endAccess();
  UUID.init()();
  v161 = UUID.uuidString.getter();
  v176 = v30;
  v172[1](v12, v173);
  v31 = *(v13 + 36);
  v32 = *(v174 + 12);
  v174 = v25;
  sub_1000089F8(&v25[v31], v9, &qword_1011B7710);
  sub_1000089F8(v27 + v31, &v9[v32], &qword_1011B7710);
  v33 = type metadata accessor for UIView.Corner();
  v34 = *(*(v33 - 8) + 48);
  v35 = v34(v9, 1, v33);
  v36 = v34(&v9[v32], 1, v33);
  v37 = v27;
  if (v35 == 1)
  {
    if (v36 != 1)
    {
      sub_1000095E8(&v9[v32], &qword_1011B7710);
LABEL_6:
      sub_1000095E8(v9, &qword_1011B7710);
      v38 = v160;
      *(v160 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated) = 1;
      v39 = v176;
      goto LABEL_8;
    }
  }

  else if (v36 == 1)
  {
    goto LABEL_6;
  }

  sub_1000095E8(v9, &qword_1011B1188);
  v39 = v176;
  v38 = v160;
LABEL_8:
  v172 = v13;
  [v38 invalidateIntrinsicContentSize];
  [v38 accessibilityUpdateSymbolButton];
  v40 = *(v37 + 8);
  v177 = v37;
  if (v40)
  {
    v41 = *(v37 + 16);
    v42 = String._bridgeToObjectiveC()();
    v43 = objc_opt_self();
    v44 = [v43 _systemImageNamed:v42];

    if (!v44)
    {
      v45 = String._bridgeToObjectiveC()();
      v44 = [v43 imageNamed:v45 inBundle:v41];
    }
  }

  else
  {
    v44 = 0;
  }

  [v38 setLargeContentImage:v44];

  v46 = [v38 window];
  if (!v46 || (v46, (v170 & 1) != 0) || (v47 = v168, v168 <= 0.0))
  {
    v60 = v177;
    if (qword_1011B04C8 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    v62 = sub_1000060E4(v61, qword_10121B578);
    v63 = v175;
    sub_100BF8F8C(v60, v175, type metadata accessor for SymbolButton.Configuration);
    v64 = v38;

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.debug.getter();

    v67 = os_log_type_enabled(v65, v66);
    v173 = v62;
    if (v67)
    {
      v68 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      *&aBlock = v170;
      *v68 = 136446722;
      v69 = &v64[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
      swift_beginAccess();
      v70 = v69[1];
      if (v70)
      {
        v71 = *v69;
        v72 = v70;
      }

      else
      {
        v73 = v64;
        v74 = [v73 description];
        v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v72 = v75;

        v63 = v175;
      }

      v76 = sub_100010744(v71, v72, &aBlock);

      *(v68 + 4) = v76;
      *(v68 + 12) = 2082;
      *(v68 + 14) = sub_100010744(v161, v39, &aBlock);
      *(v68 + 22) = 2082;
      v77 = SymbolButton.Configuration.description.getter();
      v79 = v78;
      sub_100BF7180(v63, type metadata accessor for SymbolButton.Configuration);
      v80 = sub_100010744(v77, v79, &aBlock);

      *(v68 + 24) = v80;
      _os_log_impl(&_mh_execute_header, v65, v66, "[%{public}s] UpdateID=%{public}s — Applying new configuration=%{public}s", v68, 0x20u);
      swift_arrayDestroy();

      v60 = v177;
    }

    else
    {

      sub_100BF7180(v63, type metadata accessor for SymbolButton.Configuration);
    }

    sub_100BEF154(v60);
    v81 = *(v171 + 16);
    v25 = v174;
    if (v81)
    {
      v82 = v171 + 72;
      while (1)
      {
        v83 = *(v82 - 40);
        v84 = *(v82 - 8);
        if (v83)
        {
          break;
        }

        sub_100030444(v84);
        if (v84)
        {
          goto LABEL_35;
        }

LABEL_30:
        v82 += 48;
        sub_100020438(v83);
        if (!--v81)
        {
          goto LABEL_36;
        }
      }

      sub_100030444(v84);
      sub_100030444(v83);
      v83(v64);
      if (!v84)
      {
        goto LABEL_30;
      }

LABEL_35:
      v84(v64);
      sub_100020438(v84);
      goto LABEL_30;
    }

LABEL_36:
    v85 = *(v25 + 5);
    v191[4] = *(v25 + 4);
    v191[5] = v85;
    v191[6] = *(v25 + 6);
    v192 = *(v25 + 14);
    v86 = *(v25 + 1);
    v191[0] = *v25;
    v191[1] = v86;
    v87 = *(v25 + 3);
    v191[2] = *(v25 + 2);
    v191[3] = v87;
    v88 = v177;
    v89 = *v177;
    v90 = v177[1];
    v91 = v177[3];
    v195 = v177[2];
    v196 = v91;
    aBlock = v89;
    v194 = v90;
    v92 = v177[4];
    v93 = v177[5];
    v94 = v177[6];
    v200 = *(v177 + 14);
    v198 = v93;
    v199 = v94;
    v197 = v92;
    if (_s11MusicCoreUI12SymbolButtonC0D0V21hasSignificantChanges4from2toSbAESg_AItFZ_0(v191, &aBlock))
    {
      goto LABEL_48;
    }

    v95 = *(v25 + 15);
    v96 = *(v25 + 16);
    v97 = *(v25 + 152);
    v180 = *(v25 + 136);
    v181 = v97;
    v182 = *(v25 + 168);
    v98 = v25[184];
    v179[0] = v95;
    v179[1] = v96;
    v183 = v98;
    *v184 = *(v25 + 185);
    v99 = *(v25 + 24);
    v100 = *(v88 + 120);
    v101 = *(v88 + 128);
    v102 = *(v88 + 152);
    v186 = *(v88 + 136);
    v187 = v102;
    v188 = *(v88 + 168);
    v103 = *(v88 + 184);
    *&v184[7] = v99;
    v185[0] = v100;
    v185[1] = v101;
    v189 = v103;
    *v190 = *(v88 + 185);
    *&v190[7] = *(v88 + 192);
    if (sub_100BF6928(v179, v185))
    {
      goto LABEL_48;
    }

    if (v101)
    {
      if ((((*&v96 != 0) & (v98 ^ 1) ^ v103) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if (((*&v96 != 0) & (v98 ^ 1)) != 0)
    {
      goto LABEL_48;
    }

    v104 = *(v172 + 10);
    v105 = *&v25[v104];
    v106 = *(v88 + v104);
    if (v105)
    {
      if (v105 != v106)
      {
        goto LABEL_48;
      }

LABEL_47:
      if ((*&v25[*(v172 + 11) + 16] == 1) == (*(v88 + *(v172 + 11) + 16) == 1))
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (!v106)
    {
      goto LABEL_47;
    }

LABEL_48:
    [v64 setNeedsLayout];
LABEL_49:
    v107 = v64;

    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v178[0] = swift_slowAlloc();
      *v110 = 136446466;
      v111 = &v107[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
      swift_beginAccess();
      if (v111[1])
      {
        v112 = *v111;
        v113 = v111[1];
      }

      else
      {
        v114 = [v107 description];
        v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v113 = v115;
      }

      v116 = sub_100010744(v112, v113, v178);

      *(v110 + 4) = v116;
      *(v110 + 12) = 2082;
      v117 = sub_100010744(v161, v176, v178);

      *(v110 + 14) = v117;
      _os_log_impl(&_mh_execute_header, v108, v109, "[%{public}s] UpdateID=%{public}s — Updated ✅", v110, 0x16u);
      swift_arrayDestroy();

      v29 = 0;
      v25 = v174;
    }

    else
    {

      v29 = 0;
    }

    goto LABEL_62;
  }

  v48 = v177;
  if (qword_1011B04C8 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_1000060E4(v49, qword_10121B578);
  v50 = v167;
  sub_100BF8F8C(v48, v167, type metadata accessor for SymbolButton.Configuration);
  v51 = v38;

  v52 = Logger.logObject.getter();
  LODWORD(v53) = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v175 = swift_slowAlloc();
    *&aBlock = v175;
    *v54 = 136446722;
    v55 = &v51[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
    swift_beginAccess();
    v56 = v55[1];
    v57 = v169;
    if (v56)
    {
      v58 = *v55;
      v59 = v56;
    }

    else
    {
      v118 = v51;
      v119 = [v118 description];
      LODWORD(v173) = v53;
      v53 = v119;
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v120;

      v50 = v167;
      LOBYTE(v53) = v173;
    }

    v121 = sub_100010744(v58, v59, &aBlock);

    *(v54 + 4) = v121;
    *(v54 + 12) = 2082;
    *(v54 + 14) = sub_100010744(v161, v39, &aBlock);
    *(v54 + 22) = 2082;
    v122 = SymbolButton.Configuration.description.getter();
    v123 = v50;
    v125 = v124;
    sub_100BF7180(v123, type metadata accessor for SymbolButton.Configuration);
    v126 = sub_100010744(v122, v125, &aBlock);

    *(v54 + 24) = v126;
    _os_log_impl(&_mh_execute_header, v52, v53, "[%{public}s] UpdateID=%{public}s — Animating to new configuration=%{public}s", v54, 0x20u);
    swift_arrayDestroy();

    v48 = v177;
  }

  else
  {

    sub_100BF7180(v50, type metadata accessor for SymbolButton.Configuration);
    v57 = v169;
  }

  v127 = *&v51[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount];
  v128 = v127 + 1;
  v129 = v159;
  if (__OFADD__(v127, 1))
  {
    __break(1u);
  }

  else
  {
    *&v51[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount] = v128;
    if (v128 != v127)
    {
      sub_100BEFBCC();
    }

    v130 = swift_allocObject();
    v170 = v130;
    *(v130 + 16) = _swiftEmptyArrayStorage;
    v173 = v130 + 16;
    v175 = objc_opt_self();
    v172 = v51;
    v25 = v174;
    sub_100BF8F8C(v174, v129, type metadata accessor for SymbolButton.Configuration);
    sub_100BF8F8C(v48, v57, type metadata accessor for SymbolButton.Configuration);
    v131 = *(v165 + 80);
    v132 = (v131 + 16) & ~v131;
    v165 = v166 + v131;
    v133 = (v166 + v131 + v132) & ~v131;
    v166 += 7;
    v167 = v131;
    v134 = (v166 + v133) & 0xFFFFFFFFFFFFFFF8;
    v135 = swift_allocObject();
    sub_100BF8FF4(v129, v135 + v132, type metadata accessor for SymbolButton.Configuration);
    sub_100BF8FF4(v57, v135 + v133, type metadata accessor for SymbolButton.Configuration);
    v137 = v172;
    v136 = v173;
    *(v135 + v134) = v172;
    *(v135 + ((v134 + 15) & 0xFFFFFFFFFFFFFFF8)) = v136;
    v138 = swift_allocObject();
    *(v138 + 16) = sub_100BF6EC4;
    *(v138 + 24) = v135;
    v173 = v135;
    *&v195 = sub_100029B6C;
    *(&v195 + 1) = v138;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v168 = COERCE_DOUBLE(&v194);
    *&v194 = sub_100029B9C;
    *(&v194 + 1) = &unk_1010E7FE8;
    v139 = _Block_copy(&aBlock);
    v172 = v137;

    [v175 performWithoutAnimation:v139];
    _Block_release(v139);
    LOBYTE(v139) = swift_isEscapingClosureAtFileLocation();

    if ((v139 & 1) == 0)
    {
      v140 = v162;
      v141 = v167;
      v142 = ~v167;
      v143 = v159;
      sub_100BF8F8C(v177, v159, type metadata accessor for SymbolButton.Configuration);
      sub_100BF8F8C(v25, v169, type metadata accessor for SymbolButton.Configuration);
      v144 = (v141 + 24) & v142;
      v145 = (v165 + v144) & v142;
      v146 = (v166 + v145) & 0xFFFFFFFFFFFFFFF8;
      v147 = swift_allocObject();
      v148 = v172;
      *(v147 + 16) = v172;
      sub_100BF8FF4(v143, v147 + v144, type metadata accessor for SymbolButton.Configuration);
      sub_100BF8FF4(v169, v147 + v145, type metadata accessor for SymbolButton.Configuration);
      v149 = v170;
      v150 = v171;
      *(v147 + v146) = v170;
      *(v147 + ((v146 + 15) & 0xFFFFFFFFFFFFFFF8)) = v150;
      *&v195 = sub_100BF6F6C;
      *(&v195 + 1) = v147;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v194 = sub_10002BC98;
      *(&v194 + 1) = &unk_1010E8038;
      v151 = _Block_copy(&aBlock);
      v152 = v148;

      v153 = swift_allocObject();
      v153[2] = v149;
      v153[3] = v152;
      v154 = v161;
      v153[4] = v150;
      v153[5] = v154;
      v155 = ObjectType;
      v153[6] = v176;
      v153[7] = v155;
      *&v195 = sub_100BF7018;
      *(&v195 + 1) = v153;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v194 = sub_1005C3688;
      *(&v194 + 1) = &unk_1010E8088;
      v156 = _Block_copy(&aBlock);
      v157 = v152;

      [v175 animateKeyframesWithDuration:v164 delay:v151 options:v156 animations:v47 completion:v140];
      _Block_release(v156);
      _Block_release(v151);

      v29 = sub_100BF6EC4;
LABEL_62:
      sub_100BF7180(v25, type metadata accessor for SymbolButton.Configuration);
      sub_100020438(v29);
      return;
    }
  }

  __break(1u);
}

void sub_100BE793C(uint64_t a1, __int128 *a2, char *a3, char **a4)
{
  v4 = a3;
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 96);
  v174 = *(a1 + 80);
  v175 = v9;
  v176 = *(a1 + 112);
  v10 = *(a1 + 32);
  v170 = *(a1 + 16);
  v171 = v10;
  v11 = *(a1 + 64);
  v172 = *(a1 + 48);
  v173 = v11;
  v169[0] = v7;
  v169[1] = v8;
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[3];
  v177[2] = a2[2];
  v177[3] = v14;
  v177[0] = v12;
  v177[1] = v13;
  v15 = a2[4];
  v16 = a2[5];
  v17 = a2[6];
  v178 = *(a2 + 14);
  v177[5] = v16;
  v177[6] = v17;
  v177[4] = v15;
  if (_s11MusicCoreUI12SymbolButtonC0D0V21hasSignificantChanges4from2toSbAESg_AItFZ_0(v169, v177))
  {
    v18 = sub_100BEDC00();
    v19 = a2[5];
    v166[4] = a2[4];
    v166[5] = v19;
    v167 = a2[6];
    v168 = *(a2 + 14);
    v20 = a2[1];
    v166[0] = *a2;
    v166[1] = v20;
    v21 = a2[3];
    v166[2] = a2[2];
    v166[3] = v21;
    v22 = type metadata accessor for SymbolButton.ImageView();
    v156.receiver = objc_allocWithZone(v22);
    v156.super_class = v22;
    v23 = objc_msgSendSuper2(&v156, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v23 setAdjustsImageSizeForAccessibilityContentSizeCategory:0];
    [v23 setContentMode:4];
    sub_100BF16F8(v166);
    v24 = [v18 preferredSymbolConfiguration];
    [v23 setPreferredSymbolConfiguration:v24];

    [v18 frame];
    [v23 setFrame:?];

    v25 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView;
    v26 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView];
    *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView] = v23;
    v27 = v23;

    [v27 setAlpha:0.0];
    v28 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
    v29 = *&a3[v25];
    if (([v29 isDescendantOfView:v28] & 1) == 0)
    {
      [v28 addSubview:v29];
    }

    if (!v8 && *(&v166[0] + 1))
    {
      [a3 setNeedsLayout];
      [a3 layoutIfNeeded];
    }

    v30 = *(&v167 + 1);
    v31 = *&a3[v25];
    v32 = *a4;
    v33 = v31;
    v34 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_100BF9ED0(0, *(v32 + 2) + 1, 1, v32);
      *a4 = v32;
    }

    v37 = *(v32 + 2);
    v36 = *(v32 + 3);
    v4 = a3;
    if (v37 >= v36 >> 1)
    {
      *a4 = sub_100BF9ED0((v36 > 1), v37 + 1, 1, v32);
    }

    v38 = *a4;
    *(v38 + 2) = v37 + 1;
    v39 = &v38[88 * v37];
    *(v39 + 4) = v31;
    *(v39 + 5) = v30;
    *(v39 + 6) = 0;
    *(v39 + 7) = 0;
    *(v39 + 8) = 0;
    *(v39 + 9) = v34;
    *(v39 + 5) = xmmword_100EBCEE0;
    *(v39 + 12) = 0;
    *(v39 + 13) = 0;
    v39[112] = 0;
  }

  v40 = *(a1 + 136);
  v41 = *(a1 + 168);
  v164[2] = *(a1 + 152);
  v164[3] = v41;
  v42 = *(a1 + 184);
  v164[0] = *(a1 + 120);
  v164[1] = v40;
  v43 = *(a2 + 136);
  v44 = *(a2 + 168);
  v165[2] = *(a2 + 152);
  v165[3] = v44;
  v165[4] = *(a2 + 184);
  v45 = *(a2 + 120);
  v165[1] = v43;
  v164[4] = v42;
  v165[0] = v45;
  if (sub_100BF6928(v164, v165))
  {
    v46 = sub_100BEDD78();
    v47 = *(a2 + 136);
    v48 = *(a2 + 168);
    v161[2] = *(a2 + 152);
    v162 = v48;
    v163 = *(a2 + 184);
    v161[0] = *(a2 + 120);
    v161[1] = v47;
    v49 = objc_allocWithZone(type metadata accessor for SymbolButton.Label());
    sub_100BF7098(v161, v160);
    v50 = sub_100BF193C(v161);
    v51 = [v46 font];
    [v50 setFont:v51];

    v52 = v50;
    v53 = v46;
    [v53 frame];
    [v52 setFrame:?];

    v54 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel;
    v55 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel];
    *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel] = v52;
    v56 = v52;

    [v56 setAlpha:0.0];
    v57 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
    v58 = *&v4[v54];
    if (([v58 isDescendantOfView:v57] & 1) == 0)
    {
      [v57 addSubview:v58];
    }

    v59 = v162;
    v60 = *&v4[v54];
    v61 = *(a1 + 136);
    v62 = *(a1 + 168);
    v159[2] = *(a1 + 152);
    v159[3] = v62;
    v63 = *(a1 + 184);
    v159[0] = *(a1 + 120);
    v159[1] = v61;
    v64 = *(a2 + 136);
    v65 = *(a2 + 168);
    v160[2] = *(a2 + 152);
    v160[3] = v65;
    v160[4] = *(a2 + 184);
    v66 = *(a2 + 120);
    v160[1] = v64;
    v159[4] = v63;
    v160[0] = v66;
    v67 = v60;
    v68 = sub_100BF71F4(v159, v160);
    v69 = *a4;
    v70 = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v69;
    if ((v70 & 1) == 0)
    {
      v69 = sub_100BF9ED0(0, *(v69 + 2) + 1, 1, v69);
      *a4 = v69;
    }

    v72 = *(v69 + 2);
    v71 = *(v69 + 3);
    v4 = a3;
    if (v72 >= v71 >> 1)
    {
      *a4 = sub_100BF9ED0((v71 > 1), v72 + 1, 1, v69);
    }

    v73 = *a4;
    *(v73 + 2) = v72 + 1;
    v74 = &v73[88 * v72];
    *(v74 + 4) = v60;
    *(v74 + 5) = v59;
    *(v74 + 6) = 0;
    *(v74 + 7) = 0;
    *(v74 + 8) = 0;
    *(v74 + 9) = v53;
    *(v74 + 5) = xmmword_100EBCEE0;
    *(v74 + 12) = 0;
    *(v74 + 13) = 0;
    v74[112] = v68 & 1;
  }

  v75 = type metadata accessor for SymbolButton.Configuration(0);
  v76 = *(v75 + 40);
  v77 = *(a1 + v76);
  v78 = a2 + v76;
  v79 = *(a2 + v76);
  if (v77)
  {
    if (v77 == v79)
    {
      goto LABEL_47;
    }

    if (!v79)
    {
      v153 = v75;
      v80 = 0;
      v151 = 1;
      goto LABEL_26;
    }
  }

  else if (!v79)
  {
    goto LABEL_47;
  }

  v153 = v75;
  v81 = v79;
  v151 = 0;
  v80 = v79;
LABEL_26:
  v82 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView;
  v83 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView];
  *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView] = v80;
  v84 = v80;

  v85 = a3;
  if (v80)
  {
    v86 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
    if ([v86 isDescendantOfView:v86])
    {
      [v86 insertSubview:v84 aboveSubview:v86];
    }

    else
    {

      if (([v84 isDescendantOfView:v86] & 1) == 0)
      {
        [v86 addSubview:v84];
      }
    }

    v85 = a3;
    sub_100BEE064();
  }

  v87 = *&v85[v82];
  if (v87)
  {
    [v87 setAlpha:0.0];
  }

  sub_100BEE064();
  [*&v85[v82] layoutIfNeeded];
  if ((v151 & 1) == 0)
  {
    v89 = v79;
    if (v79)
    {
      v88 = *(v78 + 40);
      if (v77)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v88 = 0;
      if (v77)
      {
        goto LABEL_39;
      }
    }

LABEL_41:
    v91 = 0;
    goto LABEL_42;
  }

  v79 = 0;
  v88 = 0;
  if (!v77)
  {
    goto LABEL_41;
  }

LABEL_39:
  v90 = v77;
  v91 = 1;
LABEL_42:
  v92 = *a4;
  v93 = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v92;
  if ((v93 & 1) == 0)
  {
    v92 = sub_100BF9ED0(0, *(v92 + 2) + 1, 1, v92);
    *a4 = v92;
  }

  v95 = *(v92 + 2);
  v94 = *(v92 + 3);
  if (v95 >= v94 >> 1)
  {
    v92 = sub_100BF9ED0((v94 > 1), v95 + 1, 1, v92);
    *a4 = v92;
  }

  *(v92 + 2) = v95 + 1;
  v96 = &v92[88 * v95];
  *(v96 + 4) = v79;
  *(v96 + 5) = v88;
  *(v96 + 6) = 0;
  *(v96 + 7) = 0;
  *(v96 + 8) = 0;
  *(v96 + 9) = v77;
  *(v96 + 10) = 0;
  *(v96 + 11) = v91;
  *(v96 + 12) = 0;
  *(v96 + 13) = 0;
  v96[112] = 0;
  v4 = a3;
  v75 = v153;
LABEL_47:
  v97 = *(v75 + 44);
  v98 = *(a1 + v97 + 16);
  v99 = (a2 + v97);
  v100 = v99[2];
  if (v98 == 1)
  {
    if (v100 == 1)
    {
      return;
    }

    v105 = *v99;
    v104 = v99[1];
    v101 = &v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v102 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v106 = type metadata accessor for SymbolButton.BadgeView();
    v107 = objc_allocWithZone(v106);
    v152 = OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView;
    v108 = objc_allocWithZone(UIView);
    if (v102)
    {
      v109 = v102;
      sub_100BF7150(v105, v104, v100);
      v110 = v105;
      v111 = [v108 init];
      v112 = objc_opt_self();
      v113 = [v112 blackColor];
      [v111 setBackgroundColor:v113];

      v114 = [v111 layer];
      [v114 setCompositingFilter:kCAFilterDestOut];

      *&v107[v152] = v111;
      v115 = &v107[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_configuration];
      *v115 = v110;
      v115[1] = v104;
      v115[2] = v100;
      v158.receiver = v107;
      v158.super_class = v106;
      v116 = v100;
      v117 = objc_msgSendSuper2(&v158, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      v118 = v116;
      if (!v100)
      {
        v118 = [v112 tintColor];
      }

      v119 = v116;
      [v117 setBackgroundColor:v118];

      [v117 setAlpha:*&v104];
      [*&v117[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView] setAlpha:*&v104];
      sub_100BF2078();
      v120 = v110;
    }

    else
    {
      v150 = v100;
      v121 = [v108 init];
      v122 = v105;
      v123 = v121;
      v124 = objc_opt_self();
      v125 = [v124 blackColor];
      [v123 setBackgroundColor:v125];

      v126 = [v123 layer];
      [v126 setCompositingFilter:kCAFilterDestOut];

      *&v107[v152] = v123;
      v127 = &v107[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_configuration];
      *v127 = v122;
      v127[1] = v104;
      v127[2] = v100;
      v157.receiver = v107;
      v157.super_class = v106;
      v128 = v150;
      v117 = objc_msgSendSuper2(&v157, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      v129 = v128;
      if (!v100)
      {
        v129 = [v124 tintColor];
      }

      v130 = v128;
      [v117 setBackgroundColor:v129];

      [v117 setAlpha:*&v104];
      [*&v117[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView] setAlpha:*&v104];
      sub_100BF2078();
      sub_100B10F40(v122, v104, v100);
      v120 = v122;
    }

    v131 = *v101;
    *v101 = v117;
    v132 = v117;
    sub_100BEDE80(v131);

    if (*v101)
    {
      [*v101 setAlpha:0.0];
      if (*v101)
      {
        v133 = *v101;
        v134 = [a3 traitCollection];
        v135 = [v134 userInterfaceIdiom];

        if (v135 == 6)
        {
          v136 = 12.0;
        }

        else
        {
          v136 = 8.0;
        }

        [a3 bounds];
        MaxX = CGRectGetMaxX(v179);
        v180.origin.x = 0.0;
        v180.origin.y = 0.0;
        v180.size.width = v136;
        v180.size.height = v136;
        v138 = MaxX - CGRectGetWidth(v180) + 1.0;
        [a3 bounds];
        [v133 setFrame:{v138, CGRectGetMinY(v181) + -1.0, v136, v136}];
      }
    }

    sub_100B10F40(v120, v104, v100);
    v98 = 1;
  }

  else
  {
    if (v100 != 1)
    {
      return;
    }

    v101 = &v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v102 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView] = 0;
    v103 = v102;
    sub_100BEDE80(v102);

    v104 = 0;
  }

  v139 = *v101;
  if (*v101)
  {
    v140 = v104;
  }

  else
  {
    v140 = 0;
  }

  if (*v101)
  {
    v141 = v98 != 1;
  }

  else
  {
    v141 = 0;
  }

  v142 = *a4;
  v143 = v139;
  v144 = v102;
  v145 = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v142;
  if ((v145 & 1) == 0)
  {
    v142 = sub_100BF9ED0(0, *(v142 + 2) + 1, 1, v142);
    *a4 = v142;
  }

  v147 = *(v142 + 2);
  v146 = *(v142 + 3);
  if (v147 >= v146 >> 1)
  {
    *a4 = sub_100BF9ED0((v146 > 1), v147 + 1, 1, v142);
  }

  v148 = *a4;
  *(v148 + 2) = v147 + 1;
  v149 = &v148[88 * v147];
  *(v149 + 4) = v139;
  *(v149 + 5) = v140;
  *(v149 + 6) = v141;
  *(v149 + 7) = 0;
  *(v149 + 8) = 0;
  *(v149 + 9) = v102;
  *(v149 + 10) = 0;
  *(v149 + 11) = v102 != 0;
  *(v149 + 12) = 0;
  *(v149 + 13) = 0;
  v149[112] = 0;
}

uint64_t sub_100BE8694(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v81 = a5;
  v9 = type metadata accessor for SymbolButton.Configuration(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9 - 8);
  v13 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v68 - v14;
  v74 = objc_opt_self();
  sub_100BF8F8C(a2, v15, type metadata accessor for SymbolButton.Configuration);
  sub_100BF8F8C(a3, v13, type metadata accessor for SymbolButton.Configuration);
  v16 = *(v10 + 80);
  v17 = (v16 + 24) & ~v16;
  v18 = (v11 + v16 + v17) & ~v16;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  sub_100BF8FF4(v15, v19 + v17, type metadata accessor for SymbolButton.Configuration);
  sub_100BF8FF4(v13, v19 + v18, type metadata accessor for SymbolButton.Configuration);
  *(v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v87 = sub_100BF9134;
  v88 = v19;
  aBlock = _NSConcreteStackBlock;
  v84 = 1107296256;
  v85 = sub_10002BC98;
  v86 = &unk_1010E8A28;
  v20 = _Block_copy(&aBlock);
  v21 = a1;
  v82 = a4;

  [v74 addKeyframeWithRelativeStartTime:v20 relativeDuration:0.0 animations:1.0];
  _Block_release(v20);
  v22 = *(v81 + 16);
  if (v22)
  {
    v23 = (v81 + 40);
    do
    {
      v24 = *(v23 - 1);
      if (v24)
      {
        v25 = *(v23 + 3);
        v27 = v23[1];
        v26 = v23[2];
        v28 = *v23;
        v29 = swift_allocObject();
        *(v29 + 2) = v24;
        v29[3] = v28;
        *(v29 + 4) = v21;
        v87 = sub_1002CF93C;
        v88 = v29;
        aBlock = _NSConcreteStackBlock;
        v84 = 1107296256;
        v85 = sub_10002BC98;
        v86 = &unk_1010E8A78;
        v30 = _Block_copy(&aBlock);
        sub_100030444(v24);
        v31 = v21;
        sub_100030444(v24);
        sub_100030444(v25);

        [v74 addKeyframeWithRelativeStartTime:v30 relativeDuration:v27 animations:v26];
        sub_100020438(v25);
        _Block_release(v30);
        sub_100020438(v24);
      }

      v23 += 6;
      --v22;
    }

    while (v22);
  }

  v32 = v82;
  swift_beginAccess();
  v33 = v32[2];
  v34 = *(v33 + 16);
  v69 = v33;

  v68 = v34;
  if (!v34)
  {
  }

  v36 = 0;
  v72 = &v85;
  v37 = v69 + 56;
  while (v36 < *(v69 + 16))
  {
    v48 = *(v37 - 24);
    v47 = *(v37 - 16);
    v49 = *(v37 - 8);
    v50 = *v37;
    v51 = *(v37 + 8);
    v52 = *(v37 + 16);
    v54 = *(v37 + 24);
    v53 = *(v37 + 32);
    v55 = *(v37 + 40);
    v81 = *(v37 + 48);
    v56 = *(v37 + 56);
    v82 = v48;
    if ((v48 == 0) | v49 & 1)
    {
      v57 = 1.0;
    }

    else
    {
      v57 = *&v47;
    }

    v80 = v52;
    v79 = v47;
    v78 = v53;
    v77 = v54;
    v76 = v49;
    v75 = v50;
    v73 = v56;
    if (v52)
    {
      v92 = v53 & 1;
      if (v56)
      {
        v58 = 1.0;
      }

      else
      {
        v58 = 0.5;
      }

      v70 = v51;
      v59 = v47;
      v60 = swift_allocObject();
      *(v60 + 16) = v52;
      *(v60 + 24) = v54;
      *(v60 + 32) = v92;
      *(v60 + 33) = *v91;
      *(v60 + 36) = *&v91[3];
      v61 = v81;
      *(v60 + 40) = v55;
      *(v60 + 48) = v61;
      v87 = sub_100BF923C;
      v88 = v60;
      aBlock = _NSConcreteStackBlock;
      v84 = 1107296256;
      v85 = sub_10002BC98;
      v86 = &unk_1010E8B18;
      v62 = _Block_copy(&aBlock);
      v71 = v36;
      v63 = v62;
      v64 = v50;
      v65 = v70;
      sub_100BF90A4(v82, v59, v49, v64);
      sub_100BF90A4(v52, v54, v53, v55);
      sub_100BF90A4(v52, v54, v53, v55);
      v66 = v52;
      sub_100030444(v55);

      [v74 addKeyframeWithRelativeStartTime:v63 relativeDuration:0.0 animations:v58];
      v67 = v63;
      v36 = v71;
      _Block_release(v67);

      sub_100020438(v55);
      if (v82)
      {
LABEL_8:
        v38 = v76;
        v90 = v76 & 1;
        if (v73)
        {
          v39 = 1.0;
        }

        else
        {
          v39 = 0.5;
        }

        if (v73)
        {
          v40 = 0.0;
        }

        else
        {
          v40 = 0.5;
        }

        v41 = swift_allocObject();
        v42 = v82;
        v43 = v79;
        *(v41 + 16) = v82;
        *(v41 + 24) = v43;
        *(v41 + 32) = v90;
        *(v41 + 33) = *v89;
        *(v41 + 36) = *&v89[3];
        v44 = v75;
        *(v41 + 40) = v75;
        *(v41 + 48) = v65;
        *(v41 + 56) = v57;
        v87 = sub_100BF91D4;
        v88 = v41;
        aBlock = _NSConcreteStackBlock;
        v84 = 1107296256;
        v85 = sub_10002BC98;
        v86 = &unk_1010E8AC8;
        v45 = _Block_copy(&aBlock);
        sub_100BF90A4(v42, v43, v38, v44);
        v46 = v42;
        sub_100030444(v44);

        [v74 addKeyframeWithRelativeStartTime:v45 relativeDuration:v40 animations:v39];
        _Block_release(v45);

        sub_100020438(v44);
        goto LABEL_15;
      }
    }

    else
    {
      sub_100BF90A4(v82, v47, v49, v50);
      sub_100BF90A4(0, v54, v53, v55);
      v65 = v51;
      if (v82)
      {
        goto LABEL_8;
      }
    }

    v82 = 0;
    v43 = v79;
    v38 = v76;
    v44 = v75;
LABEL_15:
    ++v36;
    sub_100BF90EC(v82, v43, v38, v44);
    result = sub_100BF90EC(v80, v77, v78, v55);
    v37 += 88;
    if (v68 == v36)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100BE8E94(char *a1, uint64_t a2, char **a3, char *a4)
{
  v123 = a4;
  v124 = a1;
  v7 = v130;
  v8 = sub_10010FC20(&qword_1011B7710);
  __chkstk_darwin(v8 - 8);
  v126 = &v121 - v9;
  v128 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v128);
  v11 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SymbolButton.Metrics(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 traitCollection];
  sub_100BEEC4C(v14);
  sub_100BF7180(v14, type metadata accessor for SymbolButton.Metrics);
  sub_100BF8F8C(a2, v11, type metadata accessor for SymbolButton.Configuration);
  sub_100BEE284(v11, v15, v14);
  v129 = v14;
  sub_100BEEEF4(v14);
  v16 = *&a1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView];
  v17 = *(a2 + 248);
  v137[0] = *(a2 + 232);
  v137[1] = v17;
  v137[2] = *(a2 + 264);
  v122 = v16;
  sub_100BF0E28(v137);
  v127 = *&a1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
  v18 = *(a2 + 200);
  v19 = *(a2 + 208);
  if (v19 == 1)
  {
    v121 = *(a2 + 216);
    v125 = v18;
    if (qword_1011B07B8 != -1)
    {
      goto LABEL_56;
    }

    goto LABEL_3;
  }

  v20 = *(a2 + 200);
  v23 = *(a2 + 224);
  v24 = *(a2 + 208);
  v21 = v24;
  v22 = *(a2 + 216);
LABEL_5:
  sub_100BF7108(v18, v19);
  sub_100BF12A4(v21, v20, v22, v23);

  v25 = *(a3 + 17);
  v26 = *(a3 + 21);
  *(v7 + 31) = *(a3 + 19);
  *(v7 + 32) = v26;
  v27 = *(a3 + 23);
  *(v7 + 29) = *(a3 + 15);
  *(v7 + 30) = v25;
  v28 = *(a2 + 152);
  *(v7 + 35) = *(a2 + 136);
  *(v7 + 36) = v28;
  v29 = *(a2 + 184);
  *(v7 + 37) = *(a2 + 168);
  *(v7 + 38) = v29;
  v30 = *(a2 + 120);
  *(v7 + 33) = v27;
  *(v7 + 34) = v30;
  v31 = sub_100BF6928(&v135, v136);
  v32 = v124;
  if ((v31 & 1) == 0)
  {
    v33 = sub_100BEDD78();
    v34 = *(a2 + 136);
    *(v7 + 24) = *(a2 + 120);
    *(v7 + 25) = v34;
    v35 = *(a2 + 168);
    *(v7 + 26) = *(a2 + 152);
    *(v7 + 27) = v35;
    *(v7 + 28) = *(a2 + 184);
    v36 = v134[0];
    v37 = v134[1];
    sub_100BF1AC4(v134);

    if (v37)
    {
      v38 = HIBYTE(v37) & 0xF;
      if ((v37 & 0x2000000000000000) == 0)
      {
        v38 = v36 & 0xFFFFFFFFFFFFLL;
      }

      if (v38)
      {
        v39 = String._bridgeToObjectiveC()();
        [v32 setAccessibilityLabel:v39];
      }
    }
  }

  v40 = *(a3 + 5);
  *(v7 + 12) = *(a3 + 4);
  *(v7 + 13) = v40;
  *(v7 + 14) = *(a3 + 6);
  v132[14] = a3[14];
  v41 = *(a3 + 1);
  *(v7 + 8) = *a3;
  *(v7 + 9) = v41;
  v42 = *(a3 + 3);
  *(v7 + 10) = *(a3 + 2);
  *(v7 + 11) = v42;
  v43 = *a2;
  v44 = *(a2 + 16);
  v45 = *(a2 + 48);
  *(v7 + 18) = *(a2 + 32);
  *(v7 + 19) = v45;
  *(v7 + 16) = v43;
  *(v7 + 17) = v44;
  v46 = *(a2 + 64);
  v47 = *(a2 + 80);
  v48 = *(a2 + 96);
  v133[14] = *(a2 + 112);
  *(v7 + 21) = v47;
  *(v7 + 22) = v48;
  *(v7 + 20) = v46;
  if (!_s11MusicCoreUI12SymbolButtonC0D0V21hasSignificantChanges4from2toSbAESg_AItFZ_0(v132, v133))
  {
    v49 = sub_100BEDC00();
    v50 = *(a2 + 80);
    *(v7 + 4) = *(a2 + 64);
    *(v7 + 5) = v50;
    *(v7 + 6) = *(a2 + 96);
    v131 = *(a2 + 112);
    v51 = *(a2 + 16);
    v130[0] = *a2;
    v130[1] = v51;
    v52 = *(a2 + 48);
    v130[2] = *(a2 + 32);
    v130[3] = v52;
    sub_100BF16F8(v130);
  }

  v53 = *(v128 + 44);
  v54 = (a2 + v53);
  v55 = *(a2 + v53 + 16);
  if (v55 != 1 && *(a3 + v53 + 16) != 1)
  {
    v56 = *&v32[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    if (v56)
    {
      v57 = *v54;
      a3 = v54[1];
      if (v55)
      {
        v58 = v56;
        v59 = v55;
        v60 = v55;
      }

      else
      {
        v61 = objc_opt_self();
        v62 = v56;
        sub_100BF7150(v57, a3, 0);
        v60 = [v61 tintColor];
        v59 = 0;
      }

      sub_100BF7150(v57, a3, v55);
      v63 = v59;
      [v56 setBackgroundColor:v60];

      [v56 setAlpha:*&a3];
      [*&v56[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView] setAlpha:*&a3];
      sub_100BF2078();
      sub_100B10F40(v57, a3, v55);
    }
  }

  v64 = [v122 contentView];
  v65 = *(a2 + 280);
  v19 = *(a2 + 288);
  v7 = *(a2 + 296);
  v66 = v7;
  UIView.border.setter(v65, v19, v7);

  [v32 setAlpha:*(a2 + *(v128 + 68))];
  v67 = v129;
  sub_100BEEC4C(v129);
  sub_100BF0094(v67);
  sub_100BF7180(v67, type metadata accessor for SymbolButton.Metrics);
  v68 = [v32 superview];
  [v68 layoutIfNeeded];

  [v32 layoutIfNeeded];
  if (v32[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated] == 1)
  {
    v121 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated;
    v69 = v122;
    [v122 _setAllowsGroupFiltering:1];
    v70 = [v69 contentView];
    v71 = [v70 subviews];

    sub_100009F78(0, &qword_1011B7C10);
    v72 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v129 = v72;
    if (v72 >> 62)
    {
      v73 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v73 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a2 = v128;
    v127 = &v32[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration];
    swift_beginAccess();
    if (v73)
    {
      v74 = 0;
      v75 = v129 & 0xC000000000000001;
      v7 = (v129 & 0xFFFFFFFFFFFFFF8);
      a3 = &selRef_compoundStringWithElements_;
      v125 = v129 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v75)
        {
          v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v74 >= v7[2])
          {
            goto LABEL_55;
          }

          v76 = *(v129 + 8 * v74 + 32);
        }

        v77 = v76;
        v19 = (v74 + 1);
        if (__OFADD__(v74, 1))
        {
          goto LABEL_54;
        }

        type metadata accessor for SymbolButton.Label();
        if (([v77 a3[491]] & 1) == 0)
        {
          v78 = a3;
          v79 = *(v127 + *(a2 + 76));
          if (v79 == 2)
          {
            v80 = v127 + *(a2 + 36);
            v81 = v126;
            sub_1000089F8(v80, v126, &qword_1011B7710);
            v82 = type metadata accessor for UIView.Corner();
            LOBYTE(v79) = (*(*(v82 - 8) + 48))(v81, 1, v82) != 1;
            v83 = v81;
            a2 = v128;
            v7 = v125;
            sub_1000095E8(v83, &qword_1011B7710);
          }

          [v77 setClipsToBounds:v79 & 1];
          a3 = v78;
        }

        ++v74;
      }

      while (v19 != v73);
    }

    *(v124 + v121) = 0;
  }

  v84 = v123;
  swift_beginAccess();
  v85 = *(v84 + 2);
  v86 = v85[2];
  v124 = v85;

  v123 = v86;
  if (v86)
  {
    v19 = 0;
    v87 = (v124 + 7);
    do
    {
      if (v19 >= v124[2])
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        swift_once();
LABEL_3:
        swift_beginAccess();
        v20 = *&static SymbolButton.Background.clear;
        v21 = qword_10121BAF8;
        v22 = qword_10121BB00;
        v23 = qword_10121BB08;

        v24 = v21;
        v18 = v125;
        goto LABEL_5;
      }

      v93 = *(v87 - 3);
      v92 = *(v87 - 2);
      v94 = *(v87 - 1);
      a3 = *v87;
      v95 = v87[2];
      v96 = v87[3];
      v97 = v87[4];
      v128 = v87[1];
      v129 = v96;
      v98 = v87[5];
      v7 = v87[6];
      v126 = v94;
      v127 = a3;
      v125 = v92;
      if (v93)
      {
        if (a3)
        {
          sub_100BF90A4(v93, v92, v94, a3);
          sub_100BF90A4(v95, v129, v97, v98);
          v99 = [v122 contentView];
          v121 = v7;
          v100 = v97;
          v101 = v99;
          [v99 bounds];
          v103 = v102;
          v105 = v104;
          v107 = v106;
          v109 = v108;

          a2 = v98;
          (a3)(v103, v105, v107, v109);
          v97 = v100;
          v7 = v121;
          [v93 setFrame:?];
          if (!v95)
          {
            goto LABEL_38;
          }
        }

        else
        {
          sub_100BF90A4(v93, v92, v94, 0);
          a2 = v98;
          sub_100BF90A4(v95, v129, v97, v98);
          if (!v95)
          {
LABEL_38:
            sub_100BF90EC(v93, v125, v126, v127);
            v88 = 0;
            v89 = v129;
            v90 = v97;
            goto LABEL_39;
          }
        }
      }

      else
      {
        sub_100BF90A4(0, v92, v94, a3);
        sub_100BF90A4(v95, v129, v97, v98);
        a2 = v98;
        if (!v95)
        {
          goto LABEL_38;
        }
      }

      if (!a2)
      {
        sub_100BF90EC(v93, v125, v126, v127);
        v88 = v95;
        v89 = v129;
        v90 = v97;
        v91 = 0;
        goto LABEL_40;
      }

      v110 = v97;
      v111 = [v122 contentView];
      [v111 bounds];
      v113 = v112;
      v115 = v114;
      v117 = v116;
      v119 = v118;

      (a2)(v113, v115, v117, v119);
      [v95 setFrame:?];
      sub_100BF90EC(v93, v125, v126, v127);
      v88 = v95;
      v89 = v129;
      v90 = v110;
LABEL_39:
      v91 = a2;
LABEL_40:
      sub_100BF90EC(v88, v89, v90, v91);
      ++v19;
      v87 += 11;
    }

    while (v123 != v19);
  }
}

uint64_t *SymbolButton.Background.clear.unsafeMutableAddressor()
{
  if (qword_1011B07B8 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.clear;
}

void sub_100BE99C8(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  swift_beginAccess();
  v8 = *(a2 + 16);
  v9 = *(v8 + 16);
  v40 = v8;

  v39 = v9;
  if (v9)
  {
    v10 = 0;
    v6 = (v40 + 56);
    while (v10 < *(v40 + 16))
    {
      v11 = v6[2];
      if (v11)
      {
        v13 = *(v6 - 1);
        v12 = *v6;
        v15 = v6[3];
        v14 = v6[4];
        v16 = v6[5];
        v41 = *(v6 - 2);
        v42 = *(v6 - 3);
        sub_100BF90A4(v42, v41, v13, *v6);
        sub_100BF90A4(v11, v15, v14, v16);
        if ([v11 isDescendantOfView:a3])
        {
          [v11 removeFromSuperview];
        }

        sub_100BF90EC(v42, v41, v13, v12);
        sub_100BF90EC(v11, v15, v14, v16);
      }

      ++v10;
      v6 += 11;
      if (v39 == v10)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_9:

  v10 = a3;
  v17 = *(a4 + 16);
  if (v17)
  {
    v18 = a4 + 72;
    do
    {
      v19 = *(v18 - 8);
      if (v19)
      {
        v20 = *(v18 - 40);
        sub_100030444(v20);
        sub_100030444(v19);
        v19(a3);
        sub_100020438(v20);
        sub_100020438(v19);
      }

      v18 += 48;
      --v17;
    }

    while (v17);
  }

  v21 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount];
  v22 = v21 - 1;
  if (__OFSUB__(v21, 1))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_18;
  }

  *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount] = v22;
  v6 = a6;
  if (v22 != v21)
  {
    sub_100BEFBCC();
  }

  if (qword_1011B04C8 != -1)
  {
    goto LABEL_26;
  }

LABEL_18:
  v23 = type metadata accessor for Logger();
  sub_1000060E4(v23, qword_10121B578);
  v24 = v10;

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v27 = 136446466;
    v28 = &v24[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
    swift_beginAccess();
    v29 = v28[1];
    if (v29)
    {
      v30 = *v28;
      v31 = v29;
    }

    else
    {
      v32 = [v24 description];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v33;
    }

    v34 = sub_100010744(v30, v31, &v43);

    *(v27 + 4) = v34;
    *(v27 + 12) = 2082;
    *(v27 + 14) = sub_100010744(a5, v6, &v43);
    _os_log_impl(&_mh_execute_header, v25, v26, "[%{public}s] UpdateID=%{public}s — Updated ✅", v27, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t SymbolButton.Configuration.background.getter()
{
  v1 = *(v0 + 200);
  sub_100BF7108(v1, *(v0 + 208));
  return v1;
}

uint64_t SymbolButton.Configuration.background.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_100282F24(*(v4 + 200), *(v4 + 208));
  *(v4 + 200) = a1;
  *(v4 + 208) = a2;
  *(v4 + 216) = a3;
  *(v4 + 224) = a4;
  return result;
}

uint64_t SymbolButton.Configuration.border.getter()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 296);
  return v1;
}

void SymbolButton.Configuration.border.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 280) = a1;
  *(v3 + 288) = a2;
  *(v3 + 296) = a3;
}

uint64_t SymbolButton.Configuration.badge.getter()
{
  v1 = v0 + *(type metadata accessor for SymbolButton.Configuration(0) + 44);
  v2 = *v1;
  sub_100BF7150(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

void SymbolButton.Configuration.badge.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + *(type metadata accessor for SymbolButton.Configuration(0) + 44);
  sub_100B10F40(*v7, *(v7 + 8), *(v7 + 16));
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
}

uint64_t SymbolButton.Configuration.symbolToTextSpacing.setter(double a1)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t SymbolButton.Configuration.minimumSize.setter(double a1, double a2)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  v6 = (v2 + *(result + 52));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t SymbolButton.Configuration.maximumImageSize.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  v8 = v3 + *(result + 56);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t SymbolButton.Configuration.contentInsets.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  v10 = (v4 + *(result + 60));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t SymbolButton.Configuration.accessibility.getter()
{
  v1 = (v0 + *(type metadata accessor for SymbolButton.Configuration(0) + 64));
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 1);
  v5 = v3;
  return v2;
}

void SymbolButton.Configuration.accessibility.setter(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + *(type metadata accessor for SymbolButton.Configuration(0) + 64);

  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
}

UIContentSizeCategory sub_100BEA628()
{
  static SymbolButton.Configuration.Accessibility.forBarButtonItem = 1;
  qword_10121BAD8 = UIContentSizeCategoryLarge;
  unk_10121BAE0 = UIContentSizeCategoryExtraLarge;
  byte_10121BAE8 = 1;
  v0 = UIContentSizeCategoryLarge;

  return UIContentSizeCategoryExtraLarge;
}

char *SymbolButton.Configuration.Accessibility.forBarButtonItem.unsafeMutableAddressor()
{
  if (qword_1011B07B0 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Configuration.Accessibility.forBarButtonItem;
}

uint64_t static SymbolButton.Configuration.Accessibility.forBarButtonItem.getter()
{
  if (qword_1011B07B0 != -1)
  {
    swift_once();
  }

  v0 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v1 = unk_10121BAE0;
  v2 = qword_10121BAD8;
  v3 = v1;
  return v0;
}

uint64_t SymbolButton.Configuration.alpha.setter(double a1)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

void *SymbolButton.Configuration.tint.getter()
{
  v1 = *(v0 + *(type metadata accessor for SymbolButton.Configuration(0) + 72));
  v2 = v1;
  return v1;
}

void SymbolButton.Configuration.tint.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SymbolButton.Configuration(0) + 72);

  *(v1 + v3) = a1;
}

uint64_t SymbolButton.Configuration.shouldClipToBounds.setter(char a1)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  *(v1 + *(result + 76)) = a1;
  return result;
}

void SymbolButton.Configuration.init()(uint64_t a1@<X8>)
{
  HIBYTE(v30) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = UIFontTextStyleSubheadline;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = xmmword_100EFDCA0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = -1;
  *(a1 + 81) = v30;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x3FF0000000000000;
  *(a1 + 112) = 0;
  v2 = UIFontTextStyleSubheadline;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = v2;
  *(a1 + 144) = UIFontWeightSemibold;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0x3FF0000000000000;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 232) = 1;
  v3 = type metadata accessor for SymbolButton.Configuration(0);
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  v4 = v3[9];
  v5 = type metadata accessor for UIView.Corner();
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = a1 + v3[10];
  *(v6 + 48) = 0;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *v6 = 0u;
  v7 = (a1 + v3[11]);
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 1;
  *(a1 + v3[12]) = 0x4010000000000000;
  *(a1 + v3[13]) = vdupq_n_s64(0x4040000000000000uLL);
  v8 = a1 + v3[14];
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v9 = (a1 + v3[15]);
  v10 = *&NSDirectionalEdgeInsetsZero.bottom;
  *v9 = *&NSDirectionalEdgeInsetsZero.top;
  v9[1] = v10;
  v11 = a1 + v3[16];
  *v11 = 1;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(a1 + v3[17]) = 0x3FF0000000000000;
  *(a1 + v3[18]) = 0;
  *(a1 + v3[19]) = 2;
  v12 = qword_1011B07E8;
  v13 = v2;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_10121BB98;
  *(a1 + 200) = static SymbolButton.Background.normal;
  v28 = qword_10121BB88;
  *(a1 + 208) = *&qword_10121BB88;
  *(a1 + 224) = v14;
  v15 = objc_opt_self();

  v16 = v28;
  v17 = [v15 currentTraitCollection];
  v18 = [v17 userInterfaceIdiom];

  if (v18 == 6)
  {
    if (qword_1011B07F8 != -1)
    {
      swift_once();
    }

    v19 = static SymbolButton.Material.xr;
    v20 = qword_10121BBC8;
    v21 = qword_10121BBD0;
    v29 = qword_10121BBD0;
    v22 = byte_10121BBD8;
    v24 = qword_10121BBE0;
    v23 = unk_10121BBE8;
    *(a1 + 232) = static SymbolButton.Material.xr;
    *(a1 + 240) = v20;
    *(a1 + 248) = v21;
    *(a1 + 256) = v22;
    *(a1 + 264) = v24;
    *(a1 + 272) = v23;

    v25 = v19;
    v26 = v20;

    v27 = v29;
  }
}

uint64_t *SymbolButton.Material.xr.unsafeMutableAddressor()
{
  if (qword_1011B07F8 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Material.xr;
}

uint64_t SymbolButton.Symbol.offset.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 64) = result;
  *(v3 + 72) = a2;
  *(v3 + 80) = a3;
  return result;
}

void *SymbolButton.Symbol.tint.getter()
{
  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

BOOL sub_100BEAD84(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 14);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return _s11MusicCoreUI12SymbolButtonC0D0V23__derived_struct_equalsySbAE_AEtFZ_0(v12, v14);
}

BOOL sub_100BEAE28(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s11MusicCoreUI12SymbolButtonC5TitleV23__derived_struct_equalsySbAE_AEtFZ_0(v8, v9);
}

id sub_100BEAECC()
{
  result = [objc_opt_self() clearColor];
  static SymbolButton.Background.clear = 0x3FF0000000000000;
  qword_10121BAF8 = result;
  qword_10121BB00 = 0;
  qword_10121BB08 = 0;
  return result;
}

uint64_t static SymbolButton.Background.clear.getter()
{
  if (qword_1011B07B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_10121BAF8;
  v1 = qword_10121BAF8;

  return v0;
}

uint64_t static SymbolButton.Background.clear.setter(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (qword_1011B07B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = qword_10121BAF8;
  static SymbolButton.Background.clear = *&a4;
  qword_10121BAF8 = a1;
  qword_10121BB00 = a2;
  qword_10121BB08 = a3;
}

uint64_t (*static SymbolButton.Background.clear.modify())()
{
  if (qword_1011B07B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess_0;
}

void SymbolButton.Material.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
}

BOOL sub_100BEB140(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s11MusicCoreUI12SymbolButtonC8MaterialV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v8);
}

void SyncedLyricsViewController.BottomViewMetadata.insets.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

void *SymbolButton.CustomView.tint.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void *static SymbolButton.CustomView.with(_:configurator:)@<X0>(void *result@<X0>, uint64_t (*a2)(void **)@<X1>, uint64_t a3@<X8>)
{
  if (result)
  {
    v11 = result;
    v5 = *&UIEdgeInsetsZero.bottom;
    v12 = *&UIEdgeInsetsZero.top;
    v13 = v5;
    v14 = 0x3FF0000000000000uLL;
    v6 = result;
    result = a2(&v11);
    v7 = v11;
    v8 = v12;
    v9 = v13;
    v10 = v14;
  }

  else
  {
    v7 = 0;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  *a3 = v7;
  *(a3 + 8) = v8;
  *(a3 + 24) = v9;
  *(a3 + 40) = v10;
  return result;
}

uint64_t sub_100BEB26C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s11MusicCoreUI12SymbolButtonC10CustomViewV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7) & 1;
}

uint64_t static SymbolButton.Badge.with(_:)(void (*a1)(__int128 *))
{
  v2 = xmmword_100EFDCB0;
  v3 = 0;
  a1(&v2);
  return v3;
}

Swift::Void __swiftcall SymbolButton.layoutSubviews()()
{
  v1 = v0;
  v2 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v2);
  v4 = &v139 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for UIView.Corner.Radius();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v139 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SymbolButton.Metrics(0);
  __chkstk_darwin(v6);
  v8 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v139 - v10;
  __chkstk_darwin(v12);
  v14 = &v139 - v13;
  v15 = type metadata accessor for SymbolButton(0);
  v152.receiver = v0;
  v152.super_class = v15;
  objc_msgSendSuper2(&v152, "layoutSubviews");
  v16 = *&v0[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView];
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView] bounds];
  [v16 setFrame:?];
  v17 = [v16 contentView];
  [v17 bounds];
  v19 = v18;

  sub_100BEEC4C(v14);
  v20 = *&v14[v6[12] + 16];
  [v1 effectiveUserInterfaceLayoutDirection];
  [v1 contentHorizontalAlignment];
  v143 = v2;
  v151 = v19;
  if ([v1 contentVerticalAlignment] == 2)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v20;
  }

  [v1 effectiveUserInterfaceLayoutDirection];
  CGRect.inset(by:for:)();
  v146 = v22;
  v24 = v23;
  v148 = v25;
  v149 = v26;
  sub_100BF7180(v14, type metadata accessor for SymbolButton.Metrics);
  sub_100BEEC4C(v11);
  v27 = *&v11[v6[8]];
  sub_100BF7180(v11, type metadata accessor for SymbolButton.Metrics);
  v28 = sub_100BEDC00();
  sub_100BEEC4C(v8);
  v29 = &v8[v6[11]];
  v30 = *v29;
  v31 = *(v29 + 1);
  v32 = v29[16];
  sub_100BF7180(v8, type metadata accessor for SymbolButton.Metrics);
  if (v32)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = v30;
  }

  if (v32)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = v31;
  }

  [v28 sizeThatFits:{v33, v34}];
  v151 = v35;
  v37 = v36;

  v38 = &v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration];
  swift_beginAccess();
  if (!*(v38 + 128) || (*(v38 + 184) & 1) != 0)
  {
    v45 = sub_100BEDD78();
    [v45 frame];
    v47 = v49;
    v145 = v50;
  }

  else
  {
    v39 = v146;
    v159.origin.x = v146;
    v159.origin.y = v24;
    v40 = v148;
    v159.size.width = v148;
    v41 = v149;
    v159.size.height = v149;
    Width = CGRectGetWidth(v159);
    v160.origin.x = 0.0;
    v160.origin.y = 0.0;
    v160.size.width = v151;
    v160.size.height = v37;
    v43 = Width - (v27 + CGRectGetWidth(v160));
    v161.origin.x = v39;
    v161.origin.y = v24;
    v161.size.width = v40;
    v161.size.height = v41;
    Height = CGRectGetHeight(v161);
    v45 = sub_100BEDD78();
    [v45 sizeThatFits:{v43, Height}];
    v47 = v46;
    v145 = v48;
  }

  v51 = &selRef_objectAtIndexedSubscript_;
  v52 = &selRef_compoundStringWithElements_;
  v144 = v27;
  v147 = v47;
  if (*(v38 + 8))
  {
    v162.origin.x = 0.0;
    v162.origin.y = 0.0;
    v53 = v151;
    v162.size.width = v151;
    v162.size.height = v37;
    v54 = CGRectGetWidth(v162) + 0.0;
    v163.origin.x = 0.0;
    v163.origin.y = 0.0;
    v163.size.height = 0.0;
    v163.size.width = v54;
    v55 = CGRectGetHeight(v163);
    v164.origin.x = 0.0;
    v164.origin.y = 0.0;
    v164.size.width = v53;
    v164.size.height = v37;
    v56 = CGRectGetHeight(v164);
    if (v55 <= v56)
    {
      v55 = v56;
    }
  }

  else
  {
    v54 = 0.0;
    v55 = 0.0;
  }

  v57 = v146;
  if (*(v38 + 128))
  {
    if ((*(v38 + 184) & 1) == 0)
    {
      v165.origin.x = 0.0;
      v165.origin.y = 0.0;
      v58 = v147;
      v165.size.width = v147;
      v59 = v145;
      v165.size.height = v145;
      v54 = v54 + CGRectGetWidth(v165);
      v166.origin.x = 0.0;
      v166.origin.y = 0.0;
      v166.size.width = v54;
      v166.size.height = v55;
      v55 = CGRectGetHeight(v166);
      v167.origin.x = 0.0;
      v167.origin.y = 0.0;
      v167.size.width = v58;
      v167.size.height = v59;
      v60 = CGRectGetHeight(v167);
      if (v55 <= v60)
      {
        v55 = v60;
      }
    }
  }

  v61 = *(v38 + 8);
  v150 = v37;
  if (v61 && *(v38 + 128) && !*(v38 + 184))
  {
    v54 = v144 + v54;
  }

  v62 = [v1 contentHorizontalAlignment];
  MinY = 0.0;
  MinX = 0.0;
  if (v62 <= 5)
  {
    if (((1 << v62) & 9) != 0)
    {
      v168.origin.x = v57;
      v168.origin.y = v24;
      v168.size.width = v148;
      v168.size.height = v149;
      CGRectGetMidX(v168);
      v169.origin.x = 0.0;
      v169.origin.y = 0.0;
      v169.size.width = v54;
      v169.size.height = v55;
      CGRectGetWidth(v169);
      v69 = [v1 traitCollection];
      [v69 displayScale];

      CGFloat.roundValue(scale:)();
      MinX = v70;
    }

    else
    {
      v65 = v57;
      v66 = v24;
      v67 = v148;
      v68 = v149;
      if (((1 << v62) & 0x12) != 0)
      {
        MinX = CGRectGetMinX(*&v65);
      }

      else
      {
        MaxX = CGRectGetMaxX(*&v65);
        v170.origin.x = 0.0;
        v170.origin.y = 0.0;
        v170.size.width = v54;
        v170.size.height = v55;
        MinX = MaxX - CGRectGetWidth(v170);
      }
    }
  }

  v72 = [v1 contentVerticalAlignment];
  if (v72 > 1)
  {
    if (v72 == 2)
    {
      v176.origin.x = v57;
      v176.origin.y = v24;
      v176.size.width = v148;
      v176.size.height = v149;
      MaxY = CGRectGetMaxY(v176);
      v177.origin.y = 0.0;
      v177.origin.x = MinX;
      v177.size.width = v54;
      v177.size.height = v55;
      MinY = MaxY - CGRectGetHeight(v177);
    }

    else if (v72 == 3)
    {
      v172.origin.x = v57;
      v172.origin.y = v24;
      v73 = v148;
      v172.size.width = v148;
      v74 = v149;
      v172.size.height = v149;
      MinY = CGRectGetMinY(v172);
      v173.origin.x = v57;
      v173.origin.y = v24;
      v173.size.width = v73;
      v173.size.height = v74;
      v55 = CGRectGetHeight(v173);
    }
  }

  else if (v72)
  {
    if (v72 == 1)
    {
      v171.origin.x = v57;
      v171.origin.y = v24;
      v171.size.width = v148;
      v171.size.height = v149;
      MinY = CGRectGetMinY(v171);
    }
  }

  else
  {
    v174.origin.x = v57;
    v174.origin.y = v24;
    v174.size.width = v148;
    v174.size.height = v149;
    CGRectGetMidY(v174);
    v175.origin.y = 0.0;
    v175.origin.x = MinX;
    v175.size.width = v54;
    v175.size.height = v55;
    CGRectGetHeight(v175);
    v75 = [v1 traitCollection];
    [v75 displayScale];

    CGFloat.roundValue(scale:)();
    MinY = v76;
  }

  v78 = MinX;
  if (*(v38 + 8))
  {
    v178.origin.x = MinX;
    v178.origin.y = MinY;
    v178.size.width = v151;
    v178.size.height = v150;
    v78 = v144 + CGRectGetMaxX(v178);
  }

  v79 = [v1 contentVerticalAlignment];
  if (v79 == 3)
  {
    v183.origin.x = MinX;
    v183.origin.y = MinY;
    v183.size.width = v54;
    v183.size.height = v55;
    v150 = CGRectGetHeight(v183);
    v184.origin.x = MinX;
    v184.origin.y = MinY;
    v184.size.width = v54;
    v184.size.height = v55;
    v84 = CGRectGetHeight(v184);
    v82 = MinY;
    v83 = v147;
  }

  else if (v79)
  {
    v82 = MinY;
    v83 = v147;
    v84 = v145;
  }

  else
  {
    v179.origin.x = MinX;
    v179.origin.y = MinY;
    v179.size.width = v54;
    v179.size.height = v55;
    CGRectGetMidY(v179);
    v180.origin.x = MinX;
    v180.origin.y = MinY;
    v180.size.width = v151;
    v180.size.height = v150;
    CGRectGetHeight(v180);
    v80 = [v1 traitCollection];
    [v80 displayScale];

    CGFloat.roundValue(scale:)();
    v82 = v81;
    v181.origin.x = MinX;
    v181.origin.y = MinY;
    v181.size.width = v54;
    v181.size.height = v55;
    CGRectGetMidY(v181);
    v182.origin.x = v78;
    v182.origin.y = MinY;
    v83 = v147;
    v182.size.width = v147;
    v84 = v145;
    v182.size.height = v145;
    CGRectGetHeight(v182);
    v52 = &selRef_compoundStringWithElements_;
    v85 = [v1 traitCollection];
    [v85 displayScale];

    CGFloat.roundValue(scale:)();
    MinY = v86;
  }

  v87 = sub_100BEDD78();
  if ([v1 v52[461]] == 4 || objc_msgSend(v1, v52[461]) == 5)
  {
    v156 = 0u;
    v157 = 0u;
    v158 = 1;
    CGRect.applyingLayoutDirection(in:bounds:)();
    v78 = v88;
    MinY = v89;
    v83 = v90;
    v84 = v91;
  }

  [v87 setFrame:{v78, MinY, v83, v84}];

  if (*(v38 + 128))
  {
    if ((*(v38 + 184) & 1) == 0)
    {
      v92 = [*&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView] image];
      if (v92)
      {
        v93 = v92;
        sub_100BEEC4C(v11);
        v94 = *&v11[v6[7]];
        sub_100BF7180(v11, type metadata accessor for SymbolButton.Metrics);
        v95 = [v93 imageByApplyingSymbolConfiguration:v94];

        if (v95)
        {
          UIImage.baselineOffsetFromBottom.getter();
          v51 = &selRef_objectAtIndexedSubscript_;
          if ((v96 & 1) == 0)
          {
            v97 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel;
            [*&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel] frame];
            CGRectGetMinY(v185);
            [*&v1[v97] _firstLineBaseline];
            v186.origin.x = MinX;
            v186.origin.y = v82;
            v186.size.width = v151;
            v186.size.height = v150;
            CGRectGetHeight(v186);
          }
        }

        else
        {
          v51 = &selRef_objectAtIndexedSubscript_;
        }

        v52 = &selRef_compoundStringWithElements_;
      }
    }
  }

  sub_100BEEC4C(v11);
  sub_100BF7180(v11, type metadata accessor for SymbolButton.Metrics);
  CGRect.offset(by:)();
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v106 = *&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView];
  if ([v1 v52[461]] == 4 || objc_msgSend(v1, v52[461]) == 5)
  {
    v153 = 0u;
    v154 = 0u;
    v155 = 1;
    CGRect.applyingLayoutDirection(in:bounds:)();
  }

  else
  {
    v107 = v99;
    v108 = v101;
    v109 = v103;
    v110 = v105;
  }

  v111 = v143;
  [v106 v51[252]];

  sub_100BEE064();
  v112 = *&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
  if (v112)
  {
    v113 = v112;
    v114 = [v1 traitCollection];
    v115 = [v114 userInterfaceIdiom];

    v116 = v115 == 6;
    v51 = &selRef_objectAtIndexedSubscript_;
    if (v116)
    {
      v117 = 12.0;
    }

    else
    {
      v117 = 8.0;
    }

    [v1 bounds];
    v118 = CGRectGetMaxX(v187);
    v188.origin.x = 0.0;
    v188.origin.y = 0.0;
    v188.size.width = v117;
    v188.size.height = v117;
    v119 = v118 - CGRectGetWidth(v188) + 1.0;
    [v1 bounds];
    [v113 setFrame:{v119, CGRectGetMinY(v189) + -1.0, v117, v117}];
  }

  v120 = *&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
  v121 = [v16 contentView];
  [v121 bounds];
  v123 = v122;
  v125 = v124;
  v127 = v126;
  v129 = v128;

  [v120 v51[252]];
  sub_100BF8F8C(v38, v4, type metadata accessor for SymbolButton.Configuration);
  v130 = *(v111 + 36);
  v131 = type metadata accessor for UIView.Corner();
  if ((*(*(v131 - 8) + 48))(&v4[v130], 1, v131))
  {
    v132 = type metadata accessor for SymbolButton.Configuration;
    v133 = v4;
  }

  else
  {
    v134 = v140;
    UIView.Corner.radius.getter();
    sub_100BF7180(v4, type metadata accessor for SymbolButton.Configuration);
    v135 = v141;
    v136 = v142;
    v137 = (*(v141 + 88))(v134, v142);
    v138 = enum case for UIView.Corner.Radius.rounded(_:);
    (*(v135 + 8))(v134, v136);
    if (v137 != v138)
    {
      return;
    }

    sub_100BEEC4C(v11);
    sub_100BF0094(v11);
    v132 = type metadata accessor for SymbolButton.Metrics;
    v133 = v11;
  }

  sub_100BF7180(v133, v132);
}

Swift::Void __swiftcall SymbolButton.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v3 = type metadata accessor for SymbolButton.Metrics(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SymbolButton.Configuration(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v13 = sub_10010FC20(&qword_1011B6D30);
  __chkstk_darwin(v13 - 8);
  v15 = &v19 - v14;
  v16 = type metadata accessor for SymbolButton(0);
  v20.receiver = v1;
  v20.super_class = v16;
  objc_msgSendSuper2(&v20, "traitCollectionDidChange:", isa);
  (*(v7 + 56))(v15, 1, 1, v6);
  SymbolButton.updateConfigurationIfNeeded(_:animation:)(v15, 0, 0, 0, 1);
  sub_1000095E8(v15, &qword_1011B6D30);
  v17 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_100BF8F8C(v1 + v17, v12, type metadata accessor for SymbolButton.Configuration);
  v18 = [v1 traitCollection];
  sub_100BEEC4C(v5);
  sub_100BF7180(v5, type metadata accessor for SymbolButton.Metrics);
  sub_100BF8F8C(v12, v9, type metadata accessor for SymbolButton.Configuration);
  sub_100BEE284(v9, v18, v5);
  sub_100BF7180(v12, type metadata accessor for SymbolButton.Configuration);
  sub_100BEEEF4(v5);
}

double SymbolButton.intrinsicContentSize.getter()
{
  v1 = type metadata accessor for SymbolButton.Metrics(0);
  __chkstk_darwin(v1);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v35 - v5;
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  sub_100BEEC4C(&v35 - v11);
  sub_100BF7180(v12, type metadata accessor for SymbolButton.Metrics);
  NSDirectionalEdgeInsets.horizontal.getter();
  v14 = v13;
  sub_100BEEC4C(v12);
  sub_100BF7180(v12, type metadata accessor for SymbolButton.Metrics);
  NSDirectionalEdgeInsets.vertical.getter();
  v15 = v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  if (!*(v15 + 8))
  {
    v23 = 0.0;
    if (!*(v15 + 128))
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  sub_100BEEC4C(v9);
  v16 = &v9[v1[11]];
  v17 = *v16;
  v18 = v16[16];
  sub_100BF7180(v9, type metadata accessor for SymbolButton.Metrics);
  v19 = sub_100BEDC00();
  [v19 intrinsicContentSize];
  v21 = v20;

  if (v17 >= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v17;
  }

  if (v18)
  {
    v22 = v21;
  }

  v23 = v22 + 0.0;
  if (*(v15 + 128))
  {
LABEL_10:
    if ((*(v15 + 184) & 1) == 0)
    {
      v24 = sub_100BEDD78();
      [v24 intrinsicContentSize];
      v26 = v25;

      v23 = v23 + v26;
    }
  }

LABEL_12:
  if (*(v15 + 8) && *(v15 + 128) && (*(v15 + 184) & 1) == 0)
  {
    sub_100BEEC4C(v12);
    v27 = *&v12[v1[8]];
    sub_100BF7180(v12, type metadata accessor for SymbolButton.Metrics);
    v23 = v23 + v27;
  }

  v28 = *(v15 + *(type metadata accessor for SymbolButton.Configuration(0) + 40));
  if (v28)
  {
    [v28 intrinsicContentSize];
    if (v29 > v23)
    {
      v23 = v29;
    }
  }

  v30 = v14 + 0.0;
  sub_100BEEC4C(v6);
  v31 = *&v6[v1[10]];
  sub_100BF7180(v6, type metadata accessor for SymbolButton.Metrics);
  if (v23 > v31)
  {
    v32 = v23;
  }

  else
  {
    v32 = v31;
  }

  v33 = v30 + v32;
  sub_100BEEC4C(v3);
  sub_100BF7180(v3, type metadata accessor for SymbolButton.Metrics);
  return v33;
}