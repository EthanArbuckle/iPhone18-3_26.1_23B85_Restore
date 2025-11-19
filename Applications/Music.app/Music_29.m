uint64_t sub_10035C37C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v2;
  v3[1] = sub_10035C4BC;

  return sub_10035BD38();
}

uint64_t sub_10035C4BC()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100222A34, v1, v0);
}

char *sub_10035C728()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  *&v0[OBJC_IVAR____TtC5Music17SingIndicatorView____lazy_storage___gradientView] = 0;
  v4 = OBJC_IVAR____TtC5Music17SingIndicatorView_singIndicatorLabel;
  v5 = [objc_allocWithZone(UILabel) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_100009F78(0, &qword_101183A00);
  v6 = static UIFont.preferredFont(forTextStyle:weight:)();
  [v5 setFont:v6];

  [v5 setAdjustsFontForContentSizeCategory:1];
  *&v1[v4] = v5;
  v17.receiver = v1;
  v17.super_class = type metadata accessor for SingIndicatorView();
  v7 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v8 = OBJC_IVAR____TtC5Music17SingIndicatorView_singIndicatorLabel;
  v9 = *&v7[OBJC_IVAR____TtC5Music17SingIndicatorView_singIndicatorLabel];
  v10 = v7;
  v11 = v9;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v12 = String._bridgeToObjectiveC()();

  [v11 setText:v12];

  [v10 addSubview:*&v7[v8]];
  if (qword_10117F8E0 != -1)
  {
    swift_once();
  }

  [v10 setBackgroundColor:qword_101219078];
  [v10 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  v13 = [v10 traitCollection];

  v14 = [v13 accessibilityContrast];
  if (v14 != 1)
  {
    v15 = [v10 layer];
    [v15 setCompositingFilter:kCAFilterPlusL];
  }

  return v10;
}

void sub_10035CA90()
{
  v29.receiver = v0;
  v29.super_class = type metadata accessor for SingIndicatorView();
  objc_msgSendSuper2(&v29, "layoutSubviews");
  v1 = sub_10035B7EC();
  [v0 addSubview:v1];

  [v0 bounds];
  v2 = CGRectGetWidth(v30) + 24.0 + -5.0;
  v3 = OBJC_IVAR____TtC5Music17SingIndicatorView____lazy_storage___gradientView;
  v4 = *&v0[OBJC_IVAR____TtC5Music17SingIndicatorView____lazy_storage___gradientView];
  v5 = CGPoint.topLeft.unsafeMutableAddressor();
  swift_beginAccess();
  [v4 setAnchorPoint:{*v5, v5[1]}];
  v6 = *&v0[v3];
  [v0 bounds];
  [v6 setFrame:{-v2, 0.0, v2, CGRectGetHeight(v31)}];

  v7 = *&v0[OBJC_IVAR____TtC5Music17SingIndicatorView_singIndicatorLabel];
  v8 = [v7 layer];
  [v8 setShadowOffset:{0.0, 0.0}];

  v9 = [v7 layer];
  LODWORD(v10) = 1058642330;
  [v9 setShadowOpacity:v10];

  v11 = [v7 layer];
  [v11 setShadowRadius:3.0];

  v12 = objc_opt_self();
  sub_10010FC20(&qword_101183990);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100EBDC10;
  v14 = [v0 leadingAnchor];
  v15 = [v7 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:-5.0];

  *(v13 + 32) = v16;
  v17 = [v0 trailingAnchor];
  v18 = [v7 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:5.0];

  *(v13 + 40) = v19;
  v20 = [v0 topAnchor];
  v21 = [v7 topAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:-5.0];

  *(v13 + 48) = v22;
  v23 = [v0 bottomAnchor];
  v24 = [v7 bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:5.0];

  *(v13 + 56) = v25;
  sub_100009F78(0, &qword_1011838A0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 activateConstraints:isa];

  v27 = [v0 layer];
  v28 = [v7 layer];
  [v27 setMask:v28];
}

void sub_10035CEF4(void *a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for SingIndicatorView();
  objc_msgSendSuper2(&v10, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v3 = [a1 accessibilityContrast];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 accessibilityContrast];

  if (!a1 || v3 != v5)
  {
    v6 = [v1 traitCollection];
    v7 = [v6 accessibilityContrast];

    v8 = [v1 layer];
    if (v7 == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = kCAFilterPlusL;
    }

    [v8 setCompositingFilter:v9];

    swift_unknownObjectRelease();
  }
}

id sub_10035D0CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SingIndicatorView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10035D170()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC5Music17SingIndicatorView____lazy_storage___gradientView) = 0;
  v2 = OBJC_IVAR____TtC5Music17SingIndicatorView_singIndicatorLabel;
  v3 = [objc_allocWithZone(UILabel) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_100009F78(0, &qword_101183A00);
  v4 = static UIFont.preferredFont(forTextStyle:weight:)();
  [v3 setFont:v4];

  [v3 setAdjustsFontForContentSizeCategory:1];
  *(v1 + v2) = v3;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10035D284()
{
  v1 = *(v0 + 16);
  [v1 setAlpha:1.0];
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform:v3];
}

void sub_10035D2E4(uint64_t a1)
{
  v2 = MetricsReportingController.shared.unsafeMutableAddressor();
  v3 = *((swift_isaMask & **v2) + 0x98);
  v4 = *v2;
  v3(a1);
}

uint64_t sub_10035D688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10035D728, v6, v5);
}

uint64_t sub_10035D728()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[8] = _Block_copy(v1);
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v0[9] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10035D7E8, v9, v8);
}

uint64_t sub_10035D7E8()
{
  v1 = v0[8];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v1[2](v1, 24);
  _Block_release(v1);
  v5 = v0[1];

  return v5();
}

id sub_10035D8C4()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 sharedApplication];
  v4 = [v3 connectedScenes];
  sub_100009F78(0, &qword_1011839F0);
  sub_100061F5C();
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100061FC4(v5);
  v7 = v6;

  if (v7 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_14:

    goto LABEL_15;
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = sub_1007E90D4(0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v9 = *(v7 + 32);
  }

  v10 = v9;

  v11 = [v2 sharedApplication];
  v12 = sub_10049DE94();

  if (v12)
  {
    v13 = UIWindowScene.mainWindow.getter();
    if (v13)
    {
      v14 = v13;
      v15 = [v13 isKeyWindow];

      if (v15)
      {
        v16 = *&v12[OBJC_IVAR____TtC5Music17MainSceneDelegate_responder];
        v17 = v16;

        return v16;
      }
    }

    else
    {
    }
  }

  else
  {
  }

LABEL_15:
  v18.receiver = v1;
  v18.super_class = type metadata accessor for ApplicationDelegate();
  return objc_msgSendSuper2(&v18, "nextResponder");
}

id sub_10035DB0C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music19ApplicationDelegate_remoteRadioController;
  *&v1[v2] = [objc_allocWithZone(MPRemoteRadioController) init];
  v3 = OBJC_IVAR____TtC5Music19ApplicationDelegate_carMetricsObserver;
  _s8ObserverCMa();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = MPCPlayActivityUtilitiesPlayEndNotification;
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v6 = v5;

  *(v4 + 16) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v6, 0, 1, 1, sub_10035DC94, v4);

  *&v1[v3] = v4;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ApplicationDelegate();
  return objc_msgSendSuper2(&v8, "init");
}

id sub_10035DC14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ApplicationDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10035DC9C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100008F30;

  return sub_10035D688(v2, v3, v5, v4);
}

uint64_t sub_10035DD5C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100008F30;

  return v6();
}

uint64_t sub_10035DE44()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100008F30;

  return sub_10035DD5C(v2, v3, v4);
}

uint64_t sub_10035DF04(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10002F3F4;

  return v7();
}

uint64_t sub_10035DFEC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10035E02C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10035DF04(a1, v4, v5, v6);
}

uint64_t sub_10035E0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_10002086C(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &unk_101181520);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1000095E8(a3, &unk_101181520);

    return v21;
  }

LABEL_8:
  sub_1000095E8(a3, &unk_101181520);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_10035E3E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_100009648(a1, v4);
}

uint64_t sub_10035E49C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F3F4;

  return sub_100009648(a1, v4);
}

uint64_t sub_10035E554(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 connectedScenes];
  sub_100009F78(0, &qword_1011839F0);
  sub_100061F5C();
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100061FC4(v12);
  v14 = v13;

  if (!(v14 >> 62))
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v20 = 0;
    return v20 & 1;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = sub_1007E90D4(0, v14);
    goto LABEL_6;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v14 + 32);
LABEL_6:
    v17 = v16;

    (*(v7 + 16))(v10, a2, v6);
    v18 = sub_100364518(a3);
    type metadata accessor for LaunchOptions(0);
    swift_allocObject();
    v19 = v17;
    sub_1002B8D68(v10, v18, v19);
    v20 = sub_1002C5A04();

    return v20 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10035EAC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10035EB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000089F8(a3, v25 - v10, &unk_101181520);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000095E8(v11, &unk_101181520);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10035EDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000089F8(a3, v25 - v10, &unk_101181520);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000095E8(v11, &unk_101181520);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_10010FC20(&qword_101184430);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_10010FC20(&qword_101184430);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_10035F0A4(char a1)
{
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a1)
    {
    }

    else
    {
      v6 = Strong;
      if ((*((swift_isaMask & *Strong) + 0x268))())
      {
        v7 = type metadata accessor for TaskPriority();
        (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
        type metadata accessor for MainActor();
        v8 = static MainActor.shared.getter();
        v9 = swift_allocObject();
        *(v9 + 16) = v8;
        *(v9 + 24) = &protocol witness table for MainActor;
        sub_1001F4F78(0, 0, v4, &unk_100EC7C30, v9);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_10035F24C(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for Notice.Variant(0);
  v1[4] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v1[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10035F340, v3, v2);
}

uint64_t sub_10035F340()
{

  v1 = sub_10035F6E4();
  if (v1)
  {
    v3 = *(v0 + 32);
    v2 = *(v0 + 40);
    swift_storeEnumTagMultiPayload();
    static Notice.variant(_:)(v3, v2);
    sub_1001DF158(v3, type metadata accessor for Notice.Variant);
    (*(*v1 + 200))(v2, 0);

    sub_1001DF158(v2, type metadata accessor for Notice);
  }

  **(v0 + 16) = v1 == 0;

  v4 = *(v0 + 8);

  return v4();
}

Swift::String_optional __swiftcall Application._extendLaunchTest()()
{
  v0 = 0x8000000100E47B90;
  v1 = 0xD000000000000013;
  result.value._object = v0;
  result.value._countAndFlagsBits = v1;
  return result;
}

id Application.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Application();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10035F578(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F3F4;

  return sub_1001F91D8(a1, v4);
}

uint64_t sub_10035F638(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002F3F4;

  return sub_10035F24C(a1);
}

uint64_t sub_10035F6E4()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];
  sub_100009F78(0, &qword_1011839F0);
  sub_10001C070(&qword_101183DE0, &qword_1011839F0);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100061FC4(v2);
  v4 = v3;

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = sub_1007E90D4(0, v4);
    goto LABEL_6;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_6:
    v7 = v6;

    v8 = UIWindowScene.noticePresenter.getter();

    return v8;
  }

  __break(1u);
  return result;
}

id sub_10035F860(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v7 = OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___headerRegistration;
  v8 = sub_10010FC20(&unk_10118A650);
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  v9 = OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___listCellRegistration;
  v10 = sub_10010FC20(&qword_10118C4B8);
  (*(*(v10 - 8) + 56))(&v2[v9], 1, 1, v10);
  *&v2[OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___collectionView] = 0;
  *&v2[OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___searchController] = 0;
  type metadata accessor for MusicLibrary();
  LOBYTE(v24) = 2;
  *(&v24 + 1) = static MusicLibrary.shared.getter();
  v25 = a1;
  v26 = 0;
  v27 = 0xE000000000000000;
  v28 = 260;
  v29 = 0;
  v30 = 0xE000000000000000;
  v31 = _swiftEmptyArrayStorage;
  v32 = &_swiftEmptySetSingleton;
  v33 = 0;
  v34 = 0xE000000000000000;
  v35 = _swiftEmptyArrayStorage;
  sub_10010FC20(&unk_10118C4C0);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC5Music30LibraryComposersViewController_responseController] = sub_1003A2630(&v24);
  v23.receiver = v2;
  v23.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v23, "initWithNibName:bundle:", 0, 0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v12 = String._bridgeToObjectiveC()();

  [v11 setTitle:v12];

  UIViewController.playActivityFeatureIdentifier.setter(4);
  v13 = [v11 traitCollection];

  v14 = UITraitCollection.preferredLargeTitleDisplayMode.getter();
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    v17 = [v11 navigationItem];
    [v17 setLargeTitleDisplayMode:v14];
  }

  sub_10010FC20(&unk_101182D80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100EBC6B0;
  v19 = sub_100217F14();
  *(v18 + 32) = &type metadata for LibraryFilterTrait;
  *(v18 + 40) = v19;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100EBC6B0;
  v21 = sub_100137E8C();
  *(v20 + 32) = &type metadata for MusicLibraryTrait;
  *(v20 + 40) = v21;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  return v11;
}

uint64_t sub_10035FC68()
{
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, "viewDidLoad");
  v1 = sub_10035FFA4();
  v2 = *&v0[OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___collectionView];
  v3 = objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration);
  v4 = v2;
  v5 = [v3 init];
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = static MPCPlayerCommandRequest.isAvailable(in:);
  *(v8 + 80) = 0;
  *(v8 + 88) = v6;
  v9 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_1002193FC;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005A63A8;
  aBlock[3] = &unk_1010A84F8;
  v10 = _Block_copy(aBlock);

  v11 = [v9 initWithSectionProvider:v10 configuration:v5];

  _Block_release(v10);

  [v1 setCollectionViewLayout:v11];

  v12 = *&v0[OBJC_IVAR____TtC5Music30LibraryComposersViewController_responseController];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = *(v12 + 32);
  *(v12 + 32) = sub_100363D28;
  *(v12 + 40) = v13;

  sub_100020438(v14);

  v15 = sub_1003607E4();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = *(v15 + 88);
  *(v15 + 88) = sub_100363D30;
  *(v15 + 96) = v16;

  sub_100020438(v17);

  v21[3] = sub_10010FC20(&unk_10118A650);
  v18 = sub_10001C8B8(v21);
  sub_1003609BC(v18);
  v22[3] = sub_10010FC20(&qword_10118C4B8);
  v19 = sub_10001C8B8(v22);
  sub_100360C44(v19);
  return swift_arrayDestroy();
}

id sub_10035FFA4()
{
  v1 = v0;
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___collectionView;
  v11 = *&v1[OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___collectionView];
  if (v11)
  {
    v12 = *&v1[OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___collectionView];
LABEL_6:
    v43 = v11;
    return v12;
  }

  sub_100009F78(0, &qword_101184600);
  (*(v3 + 104))(v5, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v2);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v13 = static UICollectionViewCompositionalLayout.list(using:)();
  (*(v7 + 8))(v9, v6);
  v14 = type metadata accessor for HIMetricsCollectionView();
  objc_allocWithZone(v14);
  v15 = v13;
  v16 = sub_100188F30(v15, 1u, 0);
  result = [v1 view];
  if (result)
  {
    v18 = result;
    [result bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v45.receiver = v16;
    v45.super_class = v14;
    v27 = v16;
    objc_msgSendSuper2(&v45, "frame");
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v44.receiver = v27;
    v44.super_class = v14;
    objc_msgSendSuper2(&v44, "setFrame:", v20, v22, v24, v26);
    sub_1001891B4(v29, v31, v33, v35);
    [v27 setAutoresizingMask:18];

    result = [v1 view];
    if (result)
    {
      v36 = result;
      [result addSubview:v27];

      v37 = v27;
      [v37 _setShouldPrefetchCellsWhenPerformingReloadData:1];
      [v37 setDataSource:v1];
      [v37 setDelegate:v1];
      [v37 setKeyboardDismissMode:1];
      [v37 setAllowsFocus:1];
      [v37 setRemembersLastFocusedIndexPath:1];

      v38 = AccessibilityIdentifier.libraryComposersView.unsafeMutableAddressor();
      v39 = *v38;
      v40 = v38[1];

      v41 = UIView.withAccessibilityIdentifier(_:)(v39, v40);

      v42 = *&v1[v10];
      *&v1[v10] = v41;
      v12 = v41;

      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10036039C(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_10118C4D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v40 - v6;
  v8 = sub_10010FC20(&unk_10118D400);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v41 = v9;
    v42 = a1;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v7);

    v17 = sub_10010FC20(&unk_10118C4E0);
    v18 = *(v17 - 8);
    v19 = *(v18 + 48);
    v20 = v18 + 48;
    if (v19(v7, 1, v17) == 1)
    {
      sub_1000095E8(v7, &unk_10118C4D0);
      v21 = 1;
    }

    else
    {
      v40 = v20;
      v22 = v19;
      v23 = v11;
      v24 = v41;
      (*(v41 + 16))(v14, v7, v8);
      sub_1000095E8(v7, &unk_10118C4E0);
      v25 = MusicLibrarySectionedResponse.isEmpty.getter();
      v26 = v24;
      v11 = v23;
      v19 = v22;
      (*(v26 + 8))(v14, v8);
      v21 = !v25;
    }

    [v16 setNeedsUpdateContentUnavailableConfiguration];
    v27 = sub_10035FFA4();
    [v27 setBouncesVertically:v21 & 1];

    v28 = OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___collectionView;
    [*&v16[OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___collectionView] setAlwaysBounceVertical:v21 & 1];
    [*&v16[v28] reloadData];
    v29 = sub_1003607E4();
    RequestResponse.Revision.content.getter(v4);
    if (v19(v4, 1, v17) == 1)
    {
      sub_1000095E8(v4, &unk_10118C4D0);
    }

    else
    {
      v30 = v41;
      (*(v41 + 16))(v11, v4, v8);
      sub_1000095E8(v4, &unk_10118C4E0);
      v31 = MusicLibrarySectionedResponse.isEmpty.getter();
      (*(v30 + 8))(v11, v8);
      if (!v31)
      {
        v39 = *(v29 + 64);
        *(v29 + 64) = 1;
        if (v39)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    v32 = (*(*&v16[OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___searchController] + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
    v33 = v32[1];
    if (v33)
    {
      v34 = *v32 & 0xFFFFFFFFFFFFLL;
      if ((v33 & 0x2000000000000000) != 0)
      {
        v35 = HIBYTE(v33) & 0xF;
      }

      else
      {
        v35 = v34;
      }

      v36 = v35 != 0;
      v37 = *(v29 + 64);
      *(v29 + 64) = v36;
      if (v37 == v36)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v38 = *(v29 + 64);
      *(v29 + 64) = 0;
      if ((v38 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

LABEL_13:
    sub_10043EAB8();
LABEL_14:
  }

  return result;
}

uint64_t sub_1003607E4()
{
  v1 = OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___searchController;
  if (*&v0[OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___searchController])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___searchController];
  }

  else
  {
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v3 = v0;
    v2 = sub_10043F158(0, 0);

    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_100360888(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtC5Music30LibraryComposersViewController_responseController);
    v6 = result;

    if (a2)
    {
      v7 = a1;
    }

    else
    {
      v7 = 0;
    }

    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 0xE000000000000000;
    }

    v9 = *(v5 + 48);
    swift_beginAccess();
    v10 = *(v9 + 16);
    v11 = *(v9 + 32);
    v12 = *(v9 + 48);
    v13 = *(v9 + 64);
    v14 = *(v9 + 96);
    v20[4] = *(v9 + 80);
    v20[5] = v14;
    v21 = *(v9 + 112);
    v20[2] = v12;
    v20[3] = v13;
    v20[0] = v10;
    v20[1] = v11;
    v15 = *(v9 + 16);
    v23 = *(v9 + 32);
    v22 = v15;
    v16 = *(v9 + 56);
    v17 = *(v9 + 72);
    v18 = *(v9 + 88);
    v29 = *(v9 + 104);
    v28 = v18;
    v27 = v17;
    v26 = v16;

    sub_100363198(v20, &v19);

    v24 = v7;
    v25 = v8;
    sub_100378EFC(&v22);
  }

  return result;
}

uint64_t sub_1003609BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_10118C540);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___headerRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &unk_10118C540);
  v10 = sub_10010FC20(&unk_10118A650);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &unk_10118C540);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &unk_10118C540);
  return swift_endAccess();
}

uint64_t sub_100360C44@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_10118C510);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___listCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &unk_10118C510);
  v10 = sub_10010FC20(&qword_10118C4B8);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &unk_10118C510);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790);
  type metadata accessor for Composer();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &unk_10118C510);
  return swift_endAccess();
}

uint64_t sub_100360FB8(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for MetricsEvent.Page(0);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v1;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "viewDidAppear:", a1 & 1, v5);
  v8 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v9 = MetricsEvent.Page.libraryComposersList.unsafeMutableAddressor();
  sub_100363C68(v9, v7);
  v10 = sub_10053771C();
  v12 = v11;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v13 = qword_101218AD0;
  v14 = GroupActivitiesManager.hasJoined.getter();
  v15 = GroupActivitiesManager.participantsCount.getter();
  v16 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v8) + 0xA0))(v7, v10, v12, v14 & 1, v15, *(v13 + v16));

  return sub_100363CCC(v7);
}

void sub_100361220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[0] = a1;
  v23[1] = a4;
  v4 = sub_10010FC20(&unk_10118C4D0);
  __chkstk_darwin(v4 - 8);
  v6 = v23 - v5;
  v7 = sub_10010FC20(&unk_10118D400);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - v9;
  v11 = sub_10010FC20(&unk_10118D3F0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v23 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v6);

    v20 = sub_10010FC20(&unk_10118C4E0);
    if ((*(*(v20 - 8) + 48))(v6, 1, v20) == 1)
    {
      sub_1000095E8(v6, &unk_10118C4D0);

      return;
    }

    (*(v8 + 16))(v10, v6, v7);
    sub_1000095E8(v6, &unk_10118C4E0);
    v21 = MusicLibrarySectionedResponse.sections.getter();
    (*(v8 + 8))(v10, v7);
    v22 = IndexPath.section.getter();
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v22 < *(v21 + 16))
    {
      (*(v12 + 16))(v14, v21 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v11);

      (*(v12 + 32))(v17, v14, v11);
      swift_getKeyPath();
      MusicLibrarySection.subscript.getter();

      sub_1005FF7FC(v23[2], v23[3], v24);

      UICollectionViewCell.contentConfiguration.setter();

      (*(v12 + 8))(v17, v11);
      return;
    }

    __break(1u);
  }
}

void sub_1003615DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10010FC20(&unk_10118C520);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v14 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    __chkstk_darwin(Strong);
    v14[-2] = a3;
    _s8TextCellVMa(0);
    sub_100363BC4(&qword_10118DE90, _s8TextCellVMa);
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();

    UIHostingConfiguration.margins(_:_:)();
    v13 = *(v5 + 8);
    v13(v7, v4);
    static Edge.Set.vertical.getter();
    v14[3] = v4;
    v14[4] = sub_100020674(&unk_10118C530, &unk_10118C520);
    sub_10001C8B8(v14);
    UIHostingConfiguration.margins(_:_:)();
    v13(v10, v4);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_10036186C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Font.TextStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Composer.name.getter();
  v8 = v7;
  v9 = _s8TextCellVMa(0);
  v10 = UIFontTextStyleBody;
  static SymbolRenderingMode.monochrome.getter();
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v6;
  a1[3] = v8;
  a1[4] = v10;
  v15 = 0x4040000000000000;
  v11 = *(v3 + 104);
  v11(v5, enum case for Font.TextStyle.title(_:), v2);
  sub_100363C0C();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v15 = 0x402E000000000000;
  v11(v5, enum case for Font.TextStyle.body(_:), v2);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v12 = *(v9 + 40);
  *(a1 + v12) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100361D48(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10010FC20(&unk_10118A650);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - v7;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v9 == a3)
  {
    goto LABEL_7;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v11 & 1) == 0)
  {
    strcpy(v15, "Unknown kind=");
    v15[7] = -4864;
    v12._countAndFlagsBits = a2;
    v12._object = a3;
    String.append(_:)(v12);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_7:
  }

  sub_1003609BC(v8);
  sub_100009F78(0, &unk_101184750);
  v13 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  (*(v6 + 8))(v8, v5);
  return v13;
}

void *sub_10036206C(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v4 = sub_10010FC20(&unk_10118ABC0);
  __chkstk_darwin(v4 - 8);
  v36 = &v32 - v5;
  v6 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for UICellAccessory.DisplayedState();
  v9 = *(v34 - 8);
  __chkstk_darwin(v34);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&qword_10118C4B8);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - v14;
  v16 = sub_10010FC20(&unk_10118C4F0);
  __chkstk_darwin(v16 - 8);
  v39 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v32 - v19;
  v33 = v2;
  sub_10037A404(a2, &v32 - v19);
  sub_100360C44(v15);
  v21 = sub_1007F8F08(v15, a2, v20);
  (*(v13 + 8))(v15, v12);
  sub_10010FC20(&unk_101184740);
  type metadata accessor for UICellAccessory();
  *(swift_allocObject() + 16) = xmmword_100EBC6B0;
  v22 = v34;
  (*(v9 + 104))(v11, enum case for UICellAccessory.DisplayedState.always(_:), v34);
  v23 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v23 - 8) + 56))(v36, 1, 1, v23);
  UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
  static UICellAccessory.disclosureIndicator(displayed:options:)();
  (*(v37 + 8))(v8, v38);
  (*(v9 + 8))(v11, v22);
  UICollectionViewListCell.accessories.setter();
  v24 = [v33 traitCollection];
  v25 = [v24 userInterfaceIdiom];

  if (v25 != 6)
  {
    v26 = v21;

    [v26 directionalLayoutMargins];
    [v26 setDirectionalLayoutMargins:?];
  }

  v27 = v39;
  sub_1000089F8(v20, v39, &unk_10118C4F0);
  v28 = type metadata accessor for Composer();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_1000095E8(v27, &unk_10118C4F0);
    v40 = 0u;
    v41 = 0u;
    v42 = 0;
  }

  else
  {
    *(&v41 + 1) = v28;
    v42 = sub_100363BC4(&unk_10118C500, &type metadata accessor for Composer);
    v30 = sub_10001C8B8(&v40);
    (*(v29 + 32))(v30, v27, v28);
  }

  sub_1000095E8(v20, &unk_10118C4F0);
  sub_1000095E8(&v40, &qword_1011A3DD0);
  return v21;
}

uint64_t sub_100362880()
{
  v0 = sub_10010FC20(&unk_10118C4D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_10010FC20(&unk_10118D400);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v2);

  v10 = sub_10010FC20(&unk_10118C4E0);
  if ((*(*(v10 - 8) + 48))(v2, 1, v10) == 1)
  {
    sub_1000095E8(v2, &unk_10118C4D0);
  }

  else
  {
    (*(v4 + 16))(v6, v2, v3);
    sub_1000095E8(v2, &unk_10118C4E0);
    (*(v4 + 32))(v9, v6, v3);
    if (MusicLibrarySectionedResponse.isEmpty.getter())
    {
      *(&v14 + 1) = type metadata accessor for UIContentUnavailableConfiguration();
      v15 = &protocol witness table for UIContentUnavailableConfiguration;
      v11 = sub_10001C8B8(&v13);
      sub_1007D8EE8(v11);
      UIViewController.contentUnavailableConfiguration.setter();
      return (*(v4 + 8))(v9, v3);
    }

    (*(v4 + 8))(v9, v3);
  }

  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  return UIViewController.contentUnavailableConfiguration.setter();
}

uint64_t type metadata accessor for LibraryComposersViewController()
{
  result = qword_10118C4A0;
  if (!qword_10118C4A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100362E54()
{
  sub_10003920C(319, &unk_101184560, &unk_10118A650);
  if (v0 <= 0x3F)
  {
    sub_10003920C(319, &qword_10118C4B0, &qword_10118C4B8);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100362F6C(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC5Music30LibraryComposersViewController_responseController];
  v2 = [a1 traitCollection];
  sub_100217F14();
  UITraitCollection.subscript.getter();

  v3 = sub_10049CB78();

  v4 = *(v1 + 48);
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v4 + 32);
  v7 = *(v4 + 48);
  v8 = *(v4 + 64);
  v9 = *(v4 + 96);
  v23[4] = *(v4 + 80);
  v23[5] = v9;
  v24 = *(v4 + 112);
  v23[2] = v7;
  v23[3] = v8;
  v23[0] = v5;
  v23[1] = v6;
  v16 = *(v4 + 16);
  v17 = v3 & 1;
  v10 = *(v4 + 33);
  v19 = *(v4 + 49);
  v18 = v10;
  v11 = *(v4 + 65);
  v12 = *(v4 + 81);
  v13 = *(v4 + 97);
  *&v22[15] = *(v4 + 112);
  *v22 = v13;
  v21 = v12;
  v20 = v11;
  sub_100363198(v23, &v15);
  return sub_100378EFC(&v16);
}

uint64_t sub_100363090(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC5Music30LibraryComposersViewController_responseController];
  v2 = [a1 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v3 = *&v24[0];
  v4 = *(v1 + 48);
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v4 + 32);
  v7 = *(v4 + 48);
  v8 = *(v4 + 64);
  v9 = *(v4 + 96);
  v24[4] = *(v4 + 80);
  v24[5] = v9;
  v25 = *(v4 + 112);
  v24[2] = v7;
  v24[3] = v8;
  v24[0] = v5;
  v24[1] = v6;
  v10 = v5;
  v11 = *(v4 + 32);
  v19 = *(v4 + 48);
  v18 = v11;
  v12 = *(v4 + 64);
  v13 = *(v4 + 80);
  v14 = *(v4 + 96);
  v23 = *(v4 + 112);
  v22 = v14;
  v21 = v13;
  v20 = v12;
  sub_100363198(v24, v16);

  v17[0] = v10;
  v17[1] = v3;
  return sub_100378EFC(v17);
}

uint64_t sub_1003631F4()
{
  v0 = sub_10010FC20(&unk_10118C4D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_10010FC20(&unk_10118D400);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v2);

  v7 = sub_10010FC20(&unk_10118C4E0);
  if ((*(*(v7 - 8) + 48))(v2, 1, v7) == 1)
  {
    sub_1000095E8(v2, &unk_10118C4D0);
    return 0;
  }

  else
  {
    (*(v4 + 16))(v6, v2, v3);
    sub_1000095E8(v2, &unk_10118C4E0);
    v9 = MusicLibrarySectionedResponse.sections.getter();
    (*(v4 + 8))(v6, v3);
    v8 = *(v9 + 16);
  }

  return v8;
}

uint64_t sub_1003633F8(unint64_t a1)
{
  v20 = a1;
  v1 = sub_10010FC20(&qword_10118C550);
  v19 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v19 - v2;
  v4 = sub_10010FC20(&unk_10118D3F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  v8 = sub_10010FC20(&unk_10118C4D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_10010FC20(&unk_10118D400);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - v13;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v10);

  v15 = sub_10010FC20(&unk_10118C4E0);
  if ((*(*(v15 - 8) + 48))(v10, 1, v15) == 1)
  {
    sub_1000095E8(v10, &unk_10118C4D0);
    return 0;
  }

  (*(v12 + 16))(v14, v10, v11);
  sub_1000095E8(v10, &unk_10118C4E0);
  v17 = MusicLibrarySectionedResponse.sections.getter();
  result = (*(v12 + 8))(v14, v11);
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(v17 + 16) <= v20)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  (*(v5 + 16))(v7, v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20, v4);

  MusicLibrarySection.items.getter();
  (*(v5 + 8))(v7, v4);
  sub_100020674(&unk_10118C230, &qword_10118C550);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v18 = dispatch thunk of Collection.distance(from:to:)();
  (*(v19 + 8))(v3, v1);
  return v18;
}

void sub_100363814(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_10119F3A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&unk_10118C4F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  v13 = type metadata accessor for Composer();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10037A404(a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000095E8(v12, &unk_10118C4F0);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    (*(v14 + 16))(v9, v16, v13);
    swift_storeEnumTagMultiPayload();
    v17 = [v1 traitCollection];
    sub_100217F14();
    UITraitCollection.subscript.getter();

    v18 = sub_10049CB78();

    v19 = objc_allocWithZone(type metadata accessor for LibraryAlbumsViewController());
    v20 = sub_1006E7454(v9, v18 & 1);
    v21 = [v2 navigationController];
    if (v21)
    {
      v22 = v21;
      UIViewController.traitOverrides.getter();
      v23 = type metadata accessor for UITraitOverrides();
      (*(*(v23 - 8) + 56))(v6, 0, 1, v23);
      UINavigationController.push(_:traitOverrides:animated:)(v20, v6, 1);

      sub_1000095E8(v6, &unk_10119F3A0);
      (*(v14 + 8))(v16, v13);
    }

    else
    {
      (*(v14 + 8))(v16, v13);
    }
  }
}

uint64_t sub_100363BC4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100363C0C()
{
  result = qword_10118DEA0;
  if (!qword_10118DEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DEA0);
  }

  return result;
}

uint64_t sub_100363C68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100363CCC(uint64_t a1)
{
  v2 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100363D38(uint64_t a1)
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
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        sub_1000160F8(*(a1 + 56) + 40 * v14, &v29);
        v27 = v17;
        v28 = v16;

        swift_dynamicCast();
        sub_100016270(&v23, v25);
        sub_100016270(v25, v26);
        sub_100016270(v26, &v24);
        result = sub_100019C10(v17, v16);
        if (v18)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_10000959C(v11);
          result = sub_100016270(&v24, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v19 = (v2[6] + 16 * result);
          *v19 = v17;
          v19[1] = v16;
          result = sub_100016270(&v24, (v2[7] + 32 * result));
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_100363FA8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10010FC20(&qword_1011801C0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100016270(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100016270(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = v7[v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_100016270(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100364270(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10010FC20(&qword_101180418);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = _swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 8;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v24 = *(*(a1 + 56) + v11);
    v13 = v12;
    swift_unknownObjectRetain();
    swift_dynamicCast();
    sub_100016270((v25 + 8), v23);
    sub_100016270(v23, v25);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v14 = Hasher._finalize()();

    v15 = -1 << *(v1 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v6[v16 >> 6]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = v6[v17];
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~v6[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v9) = v13;
    result = sub_100016270(v25, (v1[7] + 32 * v9));
    ++v1[2];
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100364518(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10010FC20(&qword_1011801C0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    sub_10000DD18(*(a1 + 56) + 32 * v13, v34 + 8);
    *&v34[0] = v14;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v14;
    type metadata accessor for OpenURLOptionsKey(0);
    v15 = v14;
    swift_dynamicCast();
    sub_100016270((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_100016270(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_100016270(v30, v31);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~v7[v17 >> 6]) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = v7[v18];
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~v7[v17 >> 6])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = sub_100016270(v31, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1003647E0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10010FC20(&qword_1011801C0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000DD18(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100016270(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100016270(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100016270(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100016270(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100364AF0(uint64_t a1, uint64_t (*a2)(void), void *a3, void *a4)
{
  v6 = a2();
  v8 = *v6;
  v7 = v6[1];
  *a3 = v8;
  *a4 = v7;
}

uint64_t *sub_100364B38()
{
  type metadata accessor for MLI.Observer();
  swift_allocObject();
  result = sub_100364B78();
  qword_101218B28 = result;
  return result;
}

uint64_t *sub_100364B78()
{
  v1 = v0;
  v64 = *v0;
  v2 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v2 - 8);
  v62 = &v61 - v3;
  v66 = sub_10010FC20(&qword_10118CA88);
  v4 = *(v66 - 1);
  __chkstk_darwin(v66);
  v6 = &v61 - v5;
  v7 = sub_10010FC20(&unk_1011A4B90);
  v8 = __chkstk_darwin(v7);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v61 - v11;
  *(v0 + 128) = 0;
  *(v0 + 6) = 0u;
  *(v0 + 7) = 0u;
  *(v0 + 4) = 0u;
  *(v0 + 5) = 0u;
  *(v0 + 2) = 0u;
  *(v0 + 3) = 0u;
  *(v0 + 1) = 0u;
  v0[17] = 0;
  v0[18] = 0;
  v65 = OBJC_IVAR____TtCO5Music3MLI8Observer__viewModel;
  v61 = type metadata accessor for LibraryImport.ViewModel(0);
  v13 = *(*(v61 - 8) + 56);
  v13(v12, 1, 1, v61);
  sub_1000089F8(v12, v10, &unk_1011A4B90);
  Published.init(initialValue:)();
  sub_1000095E8(v12, &unk_1011A4B90);
  (*(v4 + 32))(v0 + v65, v6, v66);
  v14 = (v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_sessionID);
  *v14 = 0;
  v14[1] = 0;
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_shouldMakeRequests) = 0;
  v15 = OBJC_IVAR____TtCO5Music3MLI8Observer_sessionIDBinding;
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_sessionIDBinding) = 0;
  v16 = OBJC_IVAR____TtCO5Music3MLI8Observer_networkConnectivityBinding;
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_networkConnectivityBinding) = 0;
  v63 = OBJC_IVAR____TtCO5Music3MLI8Observer_accountDidChangeObserver;
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_accountDidChangeObserver) = 0;
  v65 = OBJC_IVAR____TtCO5Music3MLI8Observer_foregroundObserver;
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_foregroundObserver) = 0;
  v17 = v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_stateHandler;
  *v17 = 0;
  v66 = v17;
  *(v17 + 8) = 1;
  v18 = OBJC_IVAR____TtCO5Music3MLI8Observer_mliReviewURL;
  v19 = type metadata accessor for URL();
  (*(*(v19 - 8) + 56))(v0 + v18, 1, 1, v19);
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_retryCount) = 0;
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_currentRetryDelay) = 2;
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_currentTask) = 0;
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_isInProgress) = 0;
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_hasNetworkConnectivity) = 0;
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_didReceiveError) = 0;
  v13(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_queuedViewModel, 1, 1, v61);
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_canUpdateViewModel) = 1;
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_bagObserver) = 0;
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_urlBagObserver) = 0;
  v20 = objc_opt_self();
  v21 = [v20 standardUserDefaults];
  strcpy(v72, "mliDidDismiss");
  v72[7] = -4864;
  sub_100009838();
  NSUserDefaults.subscript.getter(v72, &aBlock);

  if (v69)
  {
    if (swift_dynamicCast())
    {
      v22 = v72[0];
      goto LABEL_6;
    }
  }

  else
  {
    sub_1000095E8(&aBlock, &unk_101183F30);
  }

  v22 = 0;
LABEL_6:
  *(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_didDismissBanner) = v22;
  v23 = [v20 standardUserDefaults];
  v24 = String._bridgeToObjectiveC()();
  v25 = [v23 stringForKey:v24];

  if (v25)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v28 = v62;
  URL.init(string:)(v27, v62);
  swift_beginAccess();
  sub_10006B010(v28, v1 + v18, &qword_101183A20);
  swift_endAccess();
  type metadata accessor for Whitetail.Binding();
  if (qword_10117F620 != -1)
  {
    swift_once();
  }

  UIScreen.Dimensions.size.getter(v29);
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v69 = &type metadata for UserDefaultsKeyValueTrigger;
  v70 = &protocol witness table for UserDefaultsKeyValueTrigger;
  v38 = swift_allocObject();
  *&aBlock = v38;
  v38[2] = v31;
  v38[3] = v33;
  v38[4] = v35;
  v38[5] = v37;
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = swift_allocObject();
  v41 = v64;
  *(v40 + 16) = v39;
  *(v40 + 24) = v41;

  *(v1 + v15) = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&aBlock, 0, sub_10036ECA4, v40);

  v42 = *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor();
  ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  UIScreen.Dimensions.size.getter(v43);
  v69 = &type metadata for NotificationTrigger;
  v70 = &protocol witness table for NotificationTrigger;
  *&aBlock = v44;
  *(&aBlock + 1) = v45;
  v46 = swift_allocObject();
  swift_weakInit();

  *(v1 + v16) = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&aBlock, 1, sub_10036ECAC, v46);

  v47 = ICActiveUserIdentityDidChangeNotification;
  v48 = objc_opt_self();
  v49 = v47;
  v50 = [v48 defaultIdentityStore];
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v51 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v49, v50, 1, 1, sub_1003723AC, 0);
  *(v1 + v63) = v51;

  v52 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  v53 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillEnterForegroundNotification, 0, 1, 1, sub_100372520, v52);
  *(v1 + v65) = v53;

  sub_100027010();
  v54 = static OS_dispatch_queue.main.getter();
  v55 = String._bridgeToObjectiveC()();
  v56 = swift_allocObject();
  swift_weakInit();

  v70 = sub_100372528;
  v71 = v56;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v68 = sub_100366178;
  v69 = &unk_1010A8740;
  v57 = _Block_copy(&aBlock);

  v58 = MSVLogAddStateHandler();
  _Block_release(v57);

  v59 = v66;
  *v66 = v58;
  *(v59 + 8) = 0;
  sub_100366288();
  sub_100368FA0();
  sub_100369E70(0);
  return v1;
}

uint64_t sub_1003654C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    type metadata accessor for MainActor();

    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v7;
    v10[5] = a2;
    sub_1001F4CB8(0, 0, v5, &unk_100EC7F78, v10);
  }

  return result;
}

uint64_t sub_10036561C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_10010FC20(&unk_1011A4B90);
  v4[3] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100365748, v7, v6);
}

uint64_t sub_100365748()
{
  v29 = v0;

  sub_10036CFF0();
  sub_100368FA0();
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  if (qword_10117F620 != -1)
  {
    swift_once();
  }

  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 stringForKey:v3];

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [v1 standardUserDefaults];
  v9.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
  if (qword_10117F628 != -1)
  {
    swift_once();
  }

  v10 = String._bridgeToObjectiveC()();
  [v8 setValue:v9.super.super.isa forKey:v10];

  v11 = [v1 standardUserDefaults];
  if (v7)
  {
    v13 = v0[5];
    v12 = v0[6];
    v14 = v0[4];
    Date.init()();
    Date.timeIntervalSinceReferenceDate.getter();
    (*(v13 + 8))(v12, v14);
    v15.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
  }

  else
  {
    v15.super.super.isa = 0;
  }

  v16 = String._bridgeToObjectiveC()();
  [v11 setValue:v15.super.super.isa forKey:v16];

  swift_unknownObjectRelease();
  if (qword_10117F658 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000060E4(v17, qword_101218B30);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28 = v21;
    *v20 = 136446210;
    if (v7)
    {
      v22 = v7;
    }

    else
    {
      v5 = 7104878;
      v22 = 0xE300000000000000;
    }

    v23 = sub_1000105AC(v5, v22, &v28);

    *(v20 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v18, v19, "sessionID: %{public}s", v20, 0xCu);
    sub_10000959C(v21);
  }

  if (v7)
  {

    sub_1003685AC();
  }

  else
  {
    v24 = v0[3];
    v25 = type metadata accessor for LibraryImport.ViewModel(0);
    (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
    sub_100369A78(v24);
    sub_1000095E8(v24, &unk_1011A4B90);
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_100365B88()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    static ApplicationCapabilities.shared.getter(v1);
    sub_100014984(v1);
    sub_100369564(SBYTE1(v1[0]));
  }

  return result;
}

uint64_t sub_100365BF4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100369E70(1);
  }

  return result;
}

uint64_t sub_100365C50(char a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1 & 1) != 0 && (static ApplicationCapabilities.shared.getter(v10), v5 = v11, , sub_100014984(v10), v6 = sub_10048BBDC(10, v5), , (v6))
    {
      v7 = sub_100365D48();
      v8 = sub_1003647E0(v7);

      v9 = a2(v8);

      return v9;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

unint64_t sub_100365D48()
{
  v18[1] = *v0;
  v1 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v1);
  v3 = v18 - v2;
  sub_10010FC20(&unk_1011972C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EC7D50;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000044;
  v5 = *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_sessionID + 8);
  v18[2] = *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_sessionID);
  v18[3] = v5;

  sub_10010FC20(&qword_1011815E0);
  *(inited + 48) = String.init<A>(describing:)();
  *(inited + 56) = v6;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "isInProgress");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_isInProgress);
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0xD000000000000014;
  *(inited + 136) = 0x8000000100E47F00;
  *(inited + 144) = sub_100366EA8() & 1;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0xD000000000000012;
  *(inited + 184) = 0x8000000100E47D80;
  *(inited + 192) = *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_shouldMakeRequests);
  *(inited + 216) = &type metadata for Bool;
  *(inited + 224) = 0x6965636552646964;
  *(inited + 232) = 0xEF726F7272456576;
  *(inited + 240) = *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_didReceiveError);
  *(inited + 264) = &type metadata for Bool;
  *(inited + 272) = 0xD000000000000010;
  *(inited + 280) = 0x8000000100E47DA0;
  *(inited + 288) = *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_didDismissBanner);
  *(inited + 312) = &type metadata for Bool;
  *(inited + 320) = 0x5255776569766572;
  *(inited + 328) = 0xE90000000000004CLL;
  v7 = OBJC_IVAR____TtCO5Music3MLI8Observer_mliReviewURL;
  swift_beginAccess();
  sub_1000089F8(v0 + v7, v3, &qword_101183A20);
  *(inited + 336) = String.init<A>(describing:)();
  *(inited + 344) = v8;
  *(inited + 360) = &type metadata for String;
  *(inited + 368) = 0xD000000000000013;
  *(inited + 376) = 0x8000000100E47F20;
  v9 = [objc_opt_self() standardUserDefaults];
  if (qword_10117F628 != -1)
  {
    swift_once();
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 stringForKey:v10];

  if (!v11)
  {
    v15 = (inited + 384);
    *(inited + 408) = &type metadata for String;
    goto LABEL_7;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = (inited + 384);
  *(inited + 408) = &type metadata for String;
  if (!v14)
  {
LABEL_7:
    *v15 = 7104878;
    v14 = 0xE300000000000000;
    goto LABEL_8;
  }

  *v15 = v12;
LABEL_8:
  *(inited + 392) = v14;
  *(inited + 416) = 0xD000000000000010;
  *(inited + 424) = 0x8000000100E47F40;
  sub_1003718A8((inited + 432));
  *(inited + 464) = 0x65646F4D77656976;
  *(inited + 472) = 0xE90000000000006CLL;
  sub_100371A90((inited + 480));
  v16 = sub_10010BC60(inited);
  swift_setDeallocating();
  sub_10010FC20(&unk_1011927D0);
  swift_arrayDestroy();
  return v16;
}

uint64_t sub_100366178(uint64_t a1, char a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  v7 = v4(a2 & 1, sub_100372530, v6);

  return v7;
}

uint64_t sub_100366218(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  v4 = (*(a2 + 16))(a2, v3.super.isa);

  return v4;
}

void sub_100366288()
{
  v1 = v0;
  BagProvider.shared.unsafeMutableAddressor();

  v2 = BagProvider.bag.getter();

  if (v2)
  {
    v3 = [v2 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
    if (v3)
    {
      v4 = v3;
      v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v6 = sub_10005476C(v5);

      if (v6)
      {
        if (*(v6 + 16) && (v7 = sub_100019C10(6909037, 0xE300000000000000), (v8 & 1) != 0))
        {
          sub_10000DD18(*(v6 + 56) + 32 * v7, v58);

          sub_10010FC20(&qword_101197BD0);
          if (swift_dynamicCast())
          {
            v9 = v59;
            v10 = *(v59 + 16);
            if (v10)
            {
              v11 = sub_100019C10(0x72676F7250696C6DLL, 0xEF74786554737365);
              if (v12)
              {
                sub_10000DD18(*(v9 + 56) + 32 * v11, v58);
                v13 = swift_dynamicCast();
                v10 = v59;
                v14 = v60;
                if (!v13)
                {
                  v10 = 0;
                  v14 = 0;
                }

LABEL_26:
                *(v1 + 16) = v10;
                *(v1 + 24) = v14;

                if (*(v9 + 16) && (v25 = sub_100019C10(0xD000000000000010, 0x8000000100E47FF0), (v26 & 1) != 0))
                {
                  sub_10000DD18(*(v9 + 56) + 32 * v25, v58);
                  v27 = swift_dynamicCast();
                  if (v27)
                  {
                    v28 = v59;
                  }

                  else
                  {
                    v28 = 0;
                  }

                  if (v27)
                  {
                    v29 = v60;
                  }

                  else
                  {
                    v29 = 0;
                  }
                }

                else
                {
                  v28 = 0;
                  v29 = 0;
                }

                v30 = *(v9 + 16);
                if (v30)
                {
                  v31 = sub_100019C10(0xD000000000000016, 0x8000000100E48010);
                  if (v32)
                  {
                    sub_10000DD18(*(v9 + 56) + 32 * v31, v58);
                    v33 = swift_dynamicCast();
                    v30 = v59;
                    v34 = v60;
                    if (!v33)
                    {
                      v30 = 0;
                      v34 = 0;
                    }

                    goto LABEL_41;
                  }

                  v30 = 0;
                }

                v34 = 0;
LABEL_41:
                *(v1 + 32) = v28;
                *(v1 + 40) = v29;
                *(v1 + 48) = v30;
                *(v1 + 56) = v34;

                if (*(v9 + 16) && (v35 = sub_100019C10(0xD000000000000018, 0x8000000100E48030), (v36 & 1) != 0))
                {
                  sub_10000DD18(*(v9 + 56) + 32 * v35, v58);
                  v37 = swift_dynamicCast();
                  v38 = v59;
                  if (!v37)
                  {
                    v38 = 0;
                  }

                  v57 = v38;
                  if (v37)
                  {
                    v39 = v60;
                  }

                  else
                  {
                    v39 = 0;
                  }
                }

                else
                {
                  v57 = 0;
                  v39 = 0;
                }

                if (*(v9 + 16) && (v40 = sub_100019C10(0xD000000000000017, 0x8000000100E48050), (v41 & 1) != 0))
                {
                  sub_10000DD18(*(v9 + 56) + 32 * v40, v58);
                  v42 = swift_dynamicCast();
                  if (v42)
                  {
                    v43 = v59;
                  }

                  else
                  {
                    v43 = 0;
                  }

                  if (v42)
                  {
                    v44 = v60;
                  }

                  else
                  {
                    v44 = 0;
                  }
                }

                else
                {
                  v43 = 0;
                  v44 = 0;
                }

                if (*(v9 + 16) && (v45 = sub_100019C10(0xD00000000000001ALL, 0x8000000100E48070), (v46 & 1) != 0))
                {
                  sub_10000DD18(*(v9 + 56) + 32 * v45, v58);
                  v47 = swift_dynamicCast();
                  if (v47)
                  {
                    v48 = v59;
                  }

                  else
                  {
                    v48 = 0;
                  }

                  if (v47)
                  {
                    v49 = v60;
                  }

                  else
                  {
                    v49 = 0;
                  }
                }

                else
                {
                  v48 = 0;
                  v49 = 0;
                }

                if (*(v9 + 16) && (v50 = sub_100019C10(0xD00000000000001BLL, 0x8000000100E48090), (v51 & 1) != 0))
                {
                  sub_10000DD18(*(v9 + 56) + 32 * v50, &v59);

                  v52 = swift_dynamicCast();
                  v54 = *(&v58[0] + 1);
                  v53 = *&v58[0];
                  if (!v52)
                  {
                    v53 = 0;
                    v54 = 0;
                  }
                }

                else
                {

                  v53 = 0;
                  v54 = 0;
                }

                v55 = *(v1 + 80);
                v58[0] = *(v1 + 64);
                v58[1] = v55;
                v56 = *(v1 + 112);
                v58[2] = *(v1 + 96);
                v58[3] = v56;
                *(v1 + 64) = v57;
                *(v1 + 72) = v39;
                *(v1 + 80) = v43;
                *(v1 + 88) = v44;
                *(v1 + 96) = v48;
                *(v1 + 104) = v49;
                *(v1 + 112) = v53;
                *(v1 + 120) = v54;
                sub_100373974(v58);
                return;
              }

              v10 = 0;
            }

            v14 = 0;
            goto LABEL_26;
          }
        }

        else
        {
        }
      }
    }

    if (qword_10117F658 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000060E4(v21, qword_101218B30);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to find mli key from bag", v24, 2u);
    }
  }

  else
  {
    if (qword_10117F658 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000060E4(v15, qword_101218B30);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to receive, creating bag observer", v18, 2u);
    }

    v19 = swift_allocObject();
    swift_weakInit();

    v20 = BagProvider.createObserver(handler:)(sub_10037396C, v19);

    *(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_bagObserver) = v20;
  }
}

uint64_t sub_10036697C()
{
  if (qword_10117F658 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000060E4(v0, qword_101218B30);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Received bag, retrying", v3, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtCO5Music3MLI8Observer_bagObserver) = 0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100366288();
  }

  return result;
}

uint64_t sub_100366ACC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64657472617473;
  if (v2 != 1)
  {
    v5 = 0x6465776569766572;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x64657472617473;
  if (*a2 != 1)
  {
    v8 = 0x6465776569766572;
    v3 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100366BCC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100366C70()
{
  String.hash(into:)();
}

Swift::Int sub_100366D00()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100366DA0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100372BA8(*a1);
  *a2 = result;
  return result;
}

void sub_100366DD0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64657472617473;
  if (v2 != 1)
  {
    v5 = 0x6465776569766572;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100366E30()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100366EA8()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_sessionID + 8))
  {
    v2 = *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_didDismissBanner) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  if (qword_10117F658 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000060E4(v3, qword_101218B30);
  swift_retain_n();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 67240706;
    *(v6 + 4) = v2 & 1;
    *(v6 + 8) = 2082;

    sub_10010FC20(&qword_1011815E0);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v13);

    *(v6 + 10) = v10;
    *(v6 + 18) = 1026;
    v11 = *(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_didDismissBanner);

    *(v6 + 20) = v11;

    _os_log_impl(&_mh_execute_header, v4, v5, "shouldShowMLIBannerView = %{BOOL,public}d\nsessionID: %{public}s\ndidDismissBanner: %{BOOL,public}d", v6, 0x18u);
    sub_10000959C(v7);
  }

  else
  {
  }

  return v2 & 1;
}

uint64_t sub_1003670A4(uint64_t a1)
{
  v2 = v1;
  v18 = *v2;
  v4 = type metadata accessor for LibraryImportStatus();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = &protocol witness table for MainActor;
  (*(v5 + 32))(v15 + v13, v7, v4);
  *(v15 + v14) = v2;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  sub_1001F4CB8(0, 0, v10, &unk_100EC8000, v15);
}

uint64_t sub_1003672F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for LibraryImportStatus();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003673E4, v8, v7);
}

uint64_t sub_1003673E4()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];

  (*(v3 + 16))(v1, v4, v2);
  v5 = (*(v3 + 88))(v1, v2);
  if (v5 == enum case for LibraryImportStatus.initialized(_:))
  {
    v6 = v0[6];
    (*(v0[5] + 96))(v6, v0[4]);
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = [objc_opt_self() standardUserDefaults];
    v10 = String._bridgeToObjectiveC()();

    if (qword_10117F620 != -1)
    {
      swift_once();
    }

    v11 = v0[3];
    v12 = String._bridgeToObjectiveC()();
    [v9 setValue:v10 forKey:v12];

    *(v11 + 136) = v7;
    *(v11 + 144) = v8;
    *(v11 + 128) = 1;

    sub_10036E140();
  }

  else if (v5 == enum case for LibraryImportStatus.userDismissedWebView(_:))
  {
    if (!*(v0[3] + OBJC_IVAR____TtCO5Music3MLI8Observer_sessionID + 8))
    {
      sub_10036E140();
    }
  }

  else if (v5 == enum case for LibraryImportStatus.dismissedReview(_:))
  {
    sub_100368C10();
  }

  else
  {
    (*(v0[5] + 8))(v0[6], v0[4]);
  }

  v13 = v0[1];

  return v13();
}

void sub_100367604(char a1)
{
  v3 = a1 & 1;
  v4 = sub_10010FC20(&unk_1011A4B90);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = OBJC_IVAR____TtCO5Music3MLI8Observer_didDismissBanner;
  LODWORD(v5) = *(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_didDismissBanner);
  *(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_didDismissBanner) = a1;
  if (v5 != v3)
  {
    v8 = [objc_opt_self() standardUserDefaults];
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v10 = String._bridgeToObjectiveC()();
    [v8 setValue:isa forKey:v10];

    if (*(v1 + v7))
    {
      v11 = type metadata accessor for LibraryImport.ViewModel(0);
      (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
      sub_100369A78(v6);
      sub_1000095E8(v6, &unk_1011A4B90);
    }
  }
}

void sub_100367784()
{
  v1 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v1 - 8);
  v55 = &v48 - v2;
  v3 = type metadata accessor for MusicDataRequest();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v52 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v54 = &v48 - v7;
  v57 = type metadata accessor for URLRequest();
  isa = v57[-1].isa;
  __chkstk_darwin(v57);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v56 = &v48 - v11;
  v12 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v12 - 8);
  v14 = &v48 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_sessionID + 8);
  if (v21)
  {
    v48 = v4;
    v49 = v3;
    v50 = *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_sessionID);
    v51 = &v48 - v20;
    v22 = objc_opt_self();

    v23 = [v22 standardUserDefaults];
    if (qword_10117F620 != -1)
    {
      swift_once();
    }

    v24 = String._bridgeToObjectiveC()();
    [v23 removeObjectForKey:v24];

    v25 = sub_10036DCC4();
    if (v26)
    {
      v58 = 0x2F2F3A7370747468;
      v59 = 0xE800000000000000;
      String.append(_:)(*&v25);

      v27._countAndFlagsBits = 47;
      v27._object = 0xE100000000000000;
      String.append(_:)(v27);
      v28._countAndFlagsBits = v50;
      v28._object = v21;
      String.append(_:)(v28);

      URL.init(string:)();

      if ((*(v16 + 48))(v14, 1, v15) != 1)
      {
        v37 = v51;
        (*(v16 + 32))(v51, v14, v15);
        (*(v16 + 16))(v18, v37, v15);
        v38 = v56;
        URLRequest.init(url:cachePolicy:timeoutInterval:)();
        v50 = v16;
        URLRequest.httpMethod.setter();
        v39 = isa;
        (*(isa + 2))(v9, v38, v57);
        v40 = v54;
        MusicDataRequest.init(urlRequest:)();
        v41 = type metadata accessor for TaskPriority();
        v42 = v55;
        (*(*(v41 - 8) + 56))(v55, 1, 1, v41);
        v44 = v48;
        v43 = v49;
        v45 = v52;
        (*(v48 + 16))(v52, v40, v49);
        v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v47 = swift_allocObject();
        *(v47 + 16) = 0;
        *(v47 + 24) = 0;
        (*(v44 + 32))(v47 + v46, v45, v43);
        sub_1001F5AC8(0, 0, v42, &unk_100EC7FF0, v47);

        (*(v44 + 8))(v40, v43);
        (*(v39 + 1))(v56, v57);
        (*(v50 + 8))(v51, v15);
        return;
      }

      sub_1000095E8(v14, &qword_101183A20);
    }

    else
    {
    }

    if (qword_10117F658 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000060E4(v33, qword_101218B30);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Unable to create a url to delete the session", v36, 2u);
    }
  }

  else
  {
    if (qword_10117F658 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000060E4(v29, qword_101218B30);
    v57 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v57, v30, "Attempting to delete the session without a sessionID", v31, 2u);
    }

    v32 = v57;
  }
}

void sub_100367F14()
{
  v1 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 41))
  {
    if (*(v0 + 16) | *(v0 + 8) | *v0 | *(v0 + 24) | *(v0 + 32))
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v0 + 40) == 0;
    }

    if (v8)
    {
      if (qword_10117F630 != -1)
      {
        swift_once();
      }

      sub_100367784();

      sub_10036F49C();
    }

    else
    {
      v9 = [objc_opt_self() standardUserDefaults];
      if (qword_10117F620 != -1)
      {
        swift_once();
      }

      v17 = String._bridgeToObjectiveC()();
      [v9 removeObjectForKey:v17];

      v10 = v17;
    }
  }

  else
  {
    sub_10036ECB4(v3);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_1000095E8(v3, &qword_101183A20);
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      v11 = [objc_opt_self() sharedApplication];
      URL._bridgeToObjectiveC()(v12);
      v14 = v13;
      sub_10010CD7C(_swiftEmptyArrayStorage);
      type metadata accessor for OpenExternalURLOptionsKey(0);
      sub_100373174(&qword_10118A3E0, type metadata accessor for OpenExternalURLOptionsKey);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v11 openURL:v14 options:isa completionHandler:0];

      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_1003682B8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_10036835C;

  return MusicDataRequest.response()(a1);
}

uint64_t sub_10036835C()
{

  if (v0)
  {

    v1 = sub_100368510;
  }

  else
  {
    v1 = sub_100368474;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100368474()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for MusicDataResponse();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100368510()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for MusicDataResponse();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1003685AC()
{
  v1 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_10010FC20(&unk_1011A4B90);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  if (qword_10117F648 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for LibraryImport.ViewModel(0);
  v11 = sub_1000060E4(v10, qword_10118C580);
  sub_100372A44(v11, v9, type metadata accessor for LibraryImport.ViewModel);
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v9, v6, &unk_1011A4B90);

  static Published.subscript.setter();
  sub_1000095E8(v9, &unk_1011A4B90);
  v12 = *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_shouldMakeRequests);
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_shouldMakeRequests) = 1;
  if (v12 != 1)
  {
    sub_100369E70(0);
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v0;

  sub_1001F4CB8(0, 0, v3, &unk_100EC7FE0, v14);
}

uint64_t sub_10036886C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_10036892C, 0, 0);
}

uint64_t sub_10036892C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtCO5Music3MLI8Observer_canUpdateViewModel) = 0;
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100368A08;

  return sub_10062A46C(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100368A08()
{
  v2 = *v1;

  v3 = v2[5];
  v4 = v2[4];
  v5 = v2[3];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1003754EC;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_100368BA0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100368BA0()
{
  sub_100369820(1);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100368C10()
{
  v1 = sub_10010FC20(&unk_1011A4B90);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v20 - v5;
  sub_100367604(0);
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_isInProgress) = 1;
  *(v0 + 128) = 2;
  if (qword_10117F630 != -1)
  {
    swift_once();
  }

  v7 = *(qword_101218B28 + 24);
  if (v7)
  {
    v8 = *(qword_101218B28 + 16);
    v9 = _s16ActionButtonViewV5ModelVMa(0);
    v10 = *(v9 + 48);
    v11 = _s12ClickMetricsVMa(0);
    v12 = *(*(v11 - 8) + 56);
    v12(&v3[v10], 1, 1, v11);
    v12(&v3[*(v9 + 52)], 1, 1, v11);
    *v3 = 0;
    *(v3 + 1) = 0;
    *(v3 + 2) = v8;
    *(v3 + 3) = v7;
    v13 = type metadata accessor for LibraryImport.ViewModel(0);
    *(v3 + 2) = 0u;
    *(v3 + 3) = 0u;
    *(v3 + 4) = 0u;
    *(v3 + 5) = 0u;
    *(v3 + 6) = 0u;
    *(v3 + 7) = 0u;
    *(v3 + 8) = 0u;
    v3[144] = 0;
    swift_storeEnumTagMultiPayload();
    v14 = *(*(v13 - 8) + 56);
    v14(v3, 0, 1, v13);
    sub_1003731BC(v3, v6, type metadata accessor for LibraryImport.ViewModel);
    v14(v6, 0, 1, v13);
  }

  else
  {
    v15 = type metadata accessor for LibraryImport.ViewModel(0);
    v16 = *(v15 - 8);
    v17 = *(v16 + 56);
    v17(v3, 1, 1, v15);
    if (qword_10117F640 != -1)
    {
      swift_once();
    }

    v18 = sub_1000060E4(v15, qword_10118C568);
    sub_100372A44(v18, v6, type metadata accessor for LibraryImport.ViewModel);
    v17(v6, 0, 1, v15);
    if ((*(v16 + 48))(v3, 1, v15) != 1)
    {
      sub_1000095E8(v3, &unk_1011A4B90);
    }
  }

  sub_100369A78(v6);
  sub_1000095E8(v6, &unk_1011A4B90);
  return sub_100369E70(0);
}

uint64_t sub_100368FA0()
{
  v1 = [objc_opt_self() standardUserDefaults];
  if (qword_10117F620 != -1)
  {
    swift_once();
  }

  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 valueForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {
    sub_1000095E8(v13, &unk_101183F30);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v4 = 0;
    v5 = 0;
    goto LABEL_11;
  }

  v4 = v9;
  v5 = v10;
LABEL_11:
  v6 = (v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_sessionID);
  v7 = v5 != 0;
  *v6 = v4;
  v6[1] = v5;

  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_isInProgress) = v7;
  return result;
}

void sub_10036910C(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v33 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v6 - 8);
  v8 = &v30[-v7];
  v9 = sub_10010FC20(&qword_10118CA90);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v30[-v11];
  v13 = OBJC_IVAR____TtCO5Music3MLI8Observer_mliReviewURL;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_1000089F8(a1, v12, &qword_101183A20);
  sub_1000089F8(v1 + v13, &v12[v14], &qword_101183A20);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      sub_1000095E8(v12, &qword_101183A20);
      return;
    }
  }

  else
  {
    sub_1000089F8(v12, v8, &qword_101183A20);
    if (v15(&v12[v14], 1, v3) != 1)
    {
      v18 = *(v4 + 32);
      v19 = &v12[v14];
      v20 = v4;
      v21 = v33;
      v18(v33, v19, v3);
      sub_100373174(&qword_101199D20, &type metadata accessor for URL);
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      v32 = v20;
      v22 = *(v20 + 8);
      v22(v21, v3);
      v22(v8, v3);
      sub_1000095E8(v12, &qword_101183A20);
      if (v31)
      {
        return;
      }

      goto LABEL_7;
    }

    (*(v4 + 8))(v8, v3);
  }

  v32 = v4;
  sub_1000095E8(v12, &qword_10118CA90);
LABEL_7:
  v16 = [objc_opt_self() standardUserDefaults];
  if (v15((v1 + v13), 1, v3))
  {
    v17 = 0;
  }

  else
  {
    v23 = v32;
    v24 = v1 + v13;
    v25 = v33;
    (*(v32 + 16))(v33, v24, v3);
    v26 = URL.absoluteString.getter();
    v28 = v27;
    (*(v23 + 8))(v25, v3);
    v34[0] = v26;
    v34[1] = v28;
    v17 = _bridgeAnythingToObjectiveC<A>(_:)();
    sub_100015BB0(v34);
  }

  v29 = String._bridgeToObjectiveC()();
  [v16 setObject:v17 forKey:v29];

  swift_unknownObjectRelease();
}

uint64_t sub_100369564(char a1)
{
  v3 = a1 & 1;
  v4 = sub_10010FC20(&unk_1011A4B90);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v5);
  v10 = &v18 - v9;
  v11 = OBJC_IVAR____TtCO5Music3MLI8Observer_hasNetworkConnectivity;
  v12 = *(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_hasNetworkConnectivity);
  *(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_hasNetworkConnectivity) = a1;
  if (v12 == v3)
  {
    return result;
  }

  if (*(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_currentTask))
  {

    Task.cancel()();

    if (*(v1 + v11))
    {
LABEL_4:

      return sub_100369E70(0);
    }
  }

  else if (a1)
  {
    goto LABEL_4;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = type metadata accessor for LibraryImport.ViewModel(0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {
    v15 = v10;
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_10003CC78(v10, type metadata accessor for LibraryImport.ViewModel);
    if (EnumCaseMultiPayload)
    {
      return result;
    }

    if (qword_10117F650 != -1)
    {
      swift_once();
    }

    v17 = sub_1000060E4(v13, qword_10118C598);
    sub_100372A44(v17, v7, type metadata accessor for LibraryImport.ViewModel);
    (*(v14 + 56))(v7, 0, 1, v13);
    sub_100369A78(v7);
    v15 = v7;
  }

  return sub_1000095E8(v15, &unk_1011A4B90);
}

void sub_100369820(char a1)
{
  v3 = sub_10010FC20(&unk_1011A4B90);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for LibraryImport.ViewModel(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_canUpdateViewModel);
  *(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_canUpdateViewModel) = a1;
  if (v13 & 1) == 0 && (a1)
  {
    v14 = OBJC_IVAR____TtCO5Music3MLI8Observer_queuedViewModel;
    swift_beginAccess();
    sub_1000089F8(v1 + v14, v8, &unk_1011A4B90);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1000095E8(v8, &unk_1011A4B90);
    }

    else
    {
      sub_1003731BC(v8, v12, type metadata accessor for LibraryImport.ViewModel);
      sub_100372A44(v12, v5, type metadata accessor for LibraryImport.ViewModel);
      (*(v10 + 56))(v5, 0, 1, v9);
      sub_100369A78(v5);
      sub_1000095E8(v5, &unk_1011A4B90);
      sub_10003CC78(v12, type metadata accessor for LibraryImport.ViewModel);
    }
  }
}

uint64_t sub_100369A78(uint64_t a1)
{
  v3 = sub_10010FC20(&unk_1011A4B90);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v23 - v8;
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  v12 = type metadata accessor for LibraryImport.ViewModel(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a1, v11, &unk_1011A4B90);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &unk_1011A4B90);
    v16 = *(v13 + 56);
    v16(v9, 1, 1, v12);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000089F8(v9, v6, &unk_1011A4B90);

    static Published.subscript.setter();
    sub_1000095E8(v9, &unk_1011A4B90);
    v16(v9, 1, 1, v12);
    v17 = OBJC_IVAR____TtCO5Music3MLI8Observer_queuedViewModel;
    swift_beginAccess();
    v18 = v1 + v17;
    v19 = v9;
  }

  else
  {
    sub_1003731BC(v11, v15, type metadata accessor for LibraryImport.ViewModel);
    v20 = (v13 + 56);
    if (*(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_canUpdateViewModel) == 1)
    {
      sub_100372A44(v15, v9, type metadata accessor for LibraryImport.ViewModel);
      (*v20)(v9, 0, 1, v12);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000089F8(v9, v6, &unk_1011A4B90);

      static Published.subscript.setter();
      sub_1000095E8(v9, &unk_1011A4B90);
      return sub_10003CC78(v15, type metadata accessor for LibraryImport.ViewModel);
    }

    sub_1003731BC(v15, v9, type metadata accessor for LibraryImport.ViewModel);
    (*v20)(v9, 0, 1, v12);
    v22 = OBJC_IVAR____TtCO5Music3MLI8Observer_queuedViewModel;
    swift_beginAccess();
    v18 = v1 + v22;
    v19 = v9;
  }

  sub_10006B010(v19, v18, &unk_1011A4B90);
  return swift_endAccess();
}

uint64_t sub_100369E70(int a1)
{
  LODWORD(v40) = a1;
  v2 = *v1;
  v3 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v3 - 8);
  v39 = &v33 - v4;
  v5 = type metadata accessor for MusicDataRequest();
  v37 = *(v5 - 8);
  v38 = v5;
  v6 = *(v37 + 64);
  v7 = __chkstk_darwin(v5);
  v8 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v33 - v9;
  v11 = sub_10010FC20(&qword_10118CAA8);
  __chkstk_darwin(v11 - 8);
  v13 = &v33 - v12;
  v14 = type metadata accessor for URLRequest();
  v15 = __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v15);
  v21 = &v33 - v20;
  v22 = *(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_sessionID + 8);
  if (v22)
  {
    if (*(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_hasNetworkConnectivity) == 1)
    {
      v23 = *(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_sessionID);
      if (*(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_isInProgress) & 1) != 0 || (v40)
      {
        v36 = v10;
        v40 = v2;
        v24 = result;
        v25 = v19;

        sub_10036D248(v23, v22, v13);

        if ((*(v25 + 48))(v13, 1, v24) == 1)
        {
          return sub_1000095E8(v13, &qword_10118CAA8);
        }

        else
        {
          v34 = v24;
          v35 = v25;
          (*(v25 + 32))(v21, v13, v24);
          (*(v25 + 16))(v17, v21, v24);
          v26 = v36;
          MusicDataRequest.init(urlRequest:)();
          v27 = type metadata accessor for TaskPriority();
          (*(*(v27 - 8) + 56))(v39, 1, 1, v27);
          v28 = v37;
          v29 = v38;
          (*(v37 + 16))(v8, v26, v38);
          v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
          v31 = (v6 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
          v32 = swift_allocObject();
          *(v32 + 16) = 0;
          *(v32 + 24) = 0;
          (*(v28 + 32))(v32 + v30, v8, v29);
          *(v32 + v31) = v1;
          *(v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8)) = v40;

          sub_1001F4CB8(0, 0, v39, &unk_100EC7FB0, v32);

          (*(v28 + 8))(v26, v29);
          return (*(v35 + 8))(v21, v34);
        }
      }
    }
  }

  return result;
}

uint64_t sub_10036A2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[55] = a5;
  sub_10010FC20(&unk_101181520);
  v5[56] = swift_task_alloc();
  v6 = type metadata accessor for MusicDataResponse();
  v5[57] = v6;
  v5[58] = *(v6 - 8);
  v7 = swift_task_alloc();
  v5[59] = v7;
  v8 = swift_task_alloc();
  v5[60] = v8;
  *v8 = v5;
  v8[1] = sub_10036A41C;

  return MusicDataRequest.response()(v7);
}

uint64_t sub_10036A41C()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_10036AF00;
  }

  else
  {
    v2 = sub_10036A530;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10036A530()
{
  v1 = *(v0 + 488);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v2 = MusicDataResponse.data.getter();
  v4 = v3;
  sub_100373410();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    sub_10002C064(v2, v4);

    v19 = *(v0 + 352);
    *(v0 + 144) = *(v0 + 336);
    *(v0 + 160) = v19;
    v20 = *(v0 + 384);
    *(v0 + 176) = *(v0 + 368);
    *(v0 + 192) = v20;
    v21 = *(v0 + 288);
    *(v0 + 80) = *(v0 + 272);
    *(v0 + 96) = v21;
    v22 = *(v0 + 320);
    *(v0 + 112) = *(v0 + 304);
    *(v0 + 128) = v22;
    v23 = *(v0 + 224);
    *(v0 + 16) = *(v0 + 208);
    *(v0 + 32) = v23;
    v24 = *(v0 + 256);
    *(v0 + 48) = *(v0 + 240);
    *(v0 + 64) = v24;
    type metadata accessor for MainActor();
    *(v0 + 496) = static MainActor.shared.getter();
    v25 = dispatch thunk of Actor.unownedExecutor.getter();
    v27 = v26;
    v28 = sub_10036AB98;
    goto LABEL_24;
  }

  (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
  sub_10002C064(v2, v4);

  *(v0 + 504) = v1;
  v5 = _convertErrorToNSError(_:)();
  v6 = [v5 userInfo];

  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v7 + 16))
  {
    v10 = sub_100019C10(v8, v9);
    v12 = v11;

    if (v12)
    {
      sub_10000DD18(*(v7 + 56) + 32 * v10, v0 + 400);

      if ((swift_dynamicCast() & 1) != 0 && *(v0 + 432) == 404)
      {
        v13 = [objc_opt_self() standardUserDefaults];
        if (qword_10117F620 != -1)
        {
          swift_once();
        }

        v14 = String._bridgeToObjectiveC()();
        [v13 removeObjectForKey:v14];

        if (qword_10117F658 != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        sub_1000060E4(v15, qword_101218B30);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v16, v17, "[PB] closing session", v18, 2u);
        }

        goto LABEL_28;
      }

      goto LABEL_16;
    }
  }

  else
  {
  }

LABEL_16:
  v29 = *(v0 + 440);
  v30 = OBJC_IVAR____TtCO5Music3MLI8Observer_retryCount;
  *(v0 + 512) = OBJC_IVAR____TtCO5Music3MLI8Observer_retryCount;
  if (*(v29 + v30) <= 2)
  {
    v31 = *(v0 + 448);
    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v29;

    v34 = sub_1001F4CB8(0, 0, v31, &unk_100EC7FC0, v33);
    v35 = *(v29 + OBJC_IVAR____TtCO5Music3MLI8Observer_currentTask);
    *(v29 + OBJC_IVAR____TtCO5Music3MLI8Observer_currentTask) = v34;
    if (v35)
    {

      Task.cancel()();
    }

    else
    {
    }

LABEL_28:

    v43 = *(v0 + 8);

    return v43();
  }

  if (qword_10117F658 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_1000060E4(v36, qword_101218B30);
  swift_errorRetain();
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 138543362;
    swift_errorRetain();
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v39 + 4) = v41;
    *v40 = v41;
    _os_log_impl(&_mh_execute_header, v37, v38, "[PB] Request failed with error: %{public}@", v39, 0xCu);
    sub_1000095E8(v40, &unk_101183D70);
  }

  type metadata accessor for MainActor();
  *(v0 + 520) = static MainActor.shared.getter();
  v25 = dispatch thunk of Actor.unownedExecutor.getter();
  v27 = v42;
  v28 = sub_10036ADF8;
LABEL_24:

  return _swift_task_switch(v28, v25, v27);
}

uint64_t sub_10036AB98()
{

  sub_10036BD38(v0 + 16);

  return _swift_task_switch(sub_10036AC0C, 0, 0);
}

uint64_t sub_10036AC0C()
{
  if (*(*(v0 + 440) + OBJC_IVAR____TtCO5Music3MLI8Observer_shouldMakeRequests) == 1)
  {
    sub_100373464(v0 + 16);
    if (*(v0 + 40))
    {
      (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    }

    else
    {
      v1 = *(v0 + 440);
      v2 = *(v0 + 448);
      v3 = *(v0 + 32);
      v4 = type metadata accessor for TaskPriority();
      (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
      v5 = swift_allocObject();
      v5[2] = 0;
      v5[3] = 0;
      v5[4] = v3;
      v5[5] = v1;

      v6 = sub_1001F4CB8(0, 0, v2, &unk_100EC7FD0, v5);
      v7 = *(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_currentTask);
      *(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_currentTask) = v6;
      v9 = *(v0 + 464);
      v8 = *(v0 + 472);
      v10 = *(v0 + 456);
      if (v7)
      {

        Task.cancel()();
      }

      (*(v9 + 8))(v8, v10);
    }
  }

  else
  {
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    sub_100373464(v0 + 16);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10036ADF8()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 440);

  *(v2 + v1) = 0;
  *(v2 + OBJC_IVAR____TtCO5Music3MLI8Observer_currentRetryDelay) = 2;
  *(v2 + OBJC_IVAR____TtCO5Music3MLI8Observer_didReceiveError) = 1;

  return _swift_task_switch(sub_10036AE8C, 0, 0);
}

uint64_t sub_10036AE8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10036AF00()
{
  v0[63] = v0[61];
  v1 = _convertErrorToNSError(_:)();
  v2 = [v1 userInfo];

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v3 + 16))
  {

    goto LABEL_13;
  }

  v6 = sub_100019C10(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_13:

    goto LABEL_14;
  }

  sub_10000DD18(*(v3 + 56) + 32 * v6, (v0 + 50));

  if ((swift_dynamicCast() & 1) != 0 && v0[54] == 404)
  {
    v9 = [objc_opt_self() standardUserDefaults];
    if (qword_10117F620 != -1)
    {
      swift_once();
    }

    v10 = String._bridgeToObjectiveC()();
    [v9 removeObjectForKey:v10];

    if (qword_10117F658 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000060E4(v11, qword_101218B30);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "[PB] closing session", v14, 2u);
    }

    goto LABEL_25;
  }

LABEL_14:
  v15 = v0[55];
  v16 = OBJC_IVAR____TtCO5Music3MLI8Observer_retryCount;
  v0[64] = OBJC_IVAR____TtCO5Music3MLI8Observer_retryCount;
  if (*(v15 + v16) <= 2)
  {
    v17 = v0[56];
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v15;

    v20 = sub_1001F4CB8(0, 0, v17, &unk_100EC7FC0, v19);
    v21 = *(v15 + OBJC_IVAR____TtCO5Music3MLI8Observer_currentTask);
    *(v15 + OBJC_IVAR____TtCO5Music3MLI8Observer_currentTask) = v20;
    if (v21)
    {

      Task.cancel()();
    }

    else
    {
    }

LABEL_25:

    v30 = v0[1];

    return v30();
  }

  if (qword_10117F658 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000060E4(v22, qword_101218B30);
  swift_errorRetain();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138543362;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 4) = v27;
    *v26 = v27;
    _os_log_impl(&_mh_execute_header, v23, v24, "[PB] Request failed with error: %{public}@", v25, 0xCu);
    sub_1000095E8(v26, &unk_101183D70);
  }

  type metadata accessor for MainActor();
  v0[65] = static MainActor.shared.getter();
  v29 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10036ADF8, v29, v28);
}

uint64_t sub_10036B448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for ContinuousClock();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_10036B508, 0, 0);
}

uint64_t sub_10036B508()
{
  v1 = *(v0 + 16);
  v2 = 1000000000000000000 * v1;
  v3 = (v1 * 0xDE0B6B3A7640000uLL) >> 64;
  v4 = (v1 >> 63) & 0xF21F494C589C0000;
  static Clock<>.continuous.getter();
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_10036B5FC;

  return sub_10062A46C(v2, v4 + v3, 0, 0, 1);
}

uint64_t sub_10036B5FC()
{
  v2 = *v1;

  v3 = v2[6];
  v4 = v2[5];
  v5 = v2[4];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1003754CC;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_10036B794;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10036B794()
{
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    sub_100369E70(0);
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10036B808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_10036B8C8, 0, 0);
}

uint64_t sub_10036B8C8()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtCO5Music3MLI8Observer_currentRetryDelay;
  v0[6] = OBJC_IVAR____TtCO5Music3MLI8Observer_currentRetryDelay;
  v3 = *(v1 + v2);
  v4 = 1000000000000000000 * v3;
  v5 = (v3 * 0xDE0B6B3A7640000uLL) >> 64;
  v6 = (v3 >> 63) & 0xF21F494C589C0000;
  static Clock<>.continuous.getter();
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_10036B9CC;

  return sub_10062A46C(v4, v6 + v5, 0, 0, 1);
}

uint64_t sub_10036B9CC()
{
  v2 = *v1;

  v3 = v2[5];
  v4 = v2[4];
  v5 = v2[3];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1003754C8;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_10036BB64;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10036BB64()
{
  v1 = v0[2];
  v2 = static Task<>.isCancelled.getter();
  v3 = OBJC_IVAR____TtCO5Music3MLI8Observer_retryCount;
  if ((v2 & 1) == 0)
  {
    v6 = *(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_retryCount);
    v7 = __OFADD__(v6, 1);
    v8 = v6 + 1;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      v9 = v0[6];
      v10 = v0[2];
      *(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_retryCount) = v8;
      v11 = *(v10 + v9);
      if (v11 + 0x4000000000000000 >= 0)
      {
        *(v0[2] + v0[6]) = 2 * v11;
        if (qword_10117F658 == -1)
        {
LABEL_6:
          v12 = type metadata accessor for Logger();
          sub_1000060E4(v12, qword_101218B30);

          v13 = Logger.logObject.getter();
          v14 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v13, v14))
          {
            v15 = swift_slowAlloc();
            *v15 = 134349056;
            *(v15 + 4) = *(v1 + v3);

            _os_log_impl(&_mh_execute_header, v13, v14, "[PB] Retrying request (attempt #%{public}ld)", v15, 0xCu);
          }

          else
          {
          }

          sub_100369E70(0);
          goto LABEL_10;
        }

LABEL_15:
        swift_once();
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  v4 = v0[6];
  v5 = v0[2];
  *(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_retryCount) = 0;
  *(v5 + v4) = 2;
LABEL_10:

  v16 = v0[1];

  return v16();
}

uint64_t sub_10036BD38(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v4 - 8);
  v53 = &v50[-v5];
  v6 = sub_10010FC20(&qword_10118CA98);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v50[-v8];
  v10 = sub_10010FC20(&unk_1011A4B90);
  __chkstk_darwin(v10 - 8);
  v57 = &v50[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v59 = &v50[-v13];
  __chkstk_darwin(v14);
  v16 = &v50[-v15];
  __chkstk_darwin(v17);
  v19 = &v50[-v18];
  __chkstk_darwin(v20);
  v22 = &v50[-v21];
  v23 = type metadata accessor for LibraryImport.ViewModel(0);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v54 = &v50[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = v25;
  __chkstk_darwin(v26);
  v28 = &v50[-v27];
  v58 = a1;
  sub_10036C510(&v50[-v27]);
  v61 = v28;
  sub_100372A44(v28, v22, type metadata accessor for LibraryImport.ViewModel);
  v55 = *(v24 + 56);
  v56 = v24 + 56;
  v55(v22, 0, 1, v23);
  swift_getKeyPath();
  swift_getKeyPath();
  v60 = v2;
  static Published.subscript.getter();

  v29 = *(v7 + 56);
  sub_1000089F8(v22, v9, &unk_1011A4B90);
  sub_1000089F8(v19, &v9[v29], &unk_1011A4B90);
  v30 = v24;
  v31 = *(v24 + 48);
  if (v31(v9, 1, v23) == 1)
  {
    sub_1000095E8(v19, &unk_1011A4B90);
    sub_1000095E8(v22, &unk_1011A4B90);
    if (v31(&v9[v29], 1, v23) == 1)
    {
      sub_1000095E8(v9, &unk_1011A4B90);
      v32 = v61;
      return sub_10003CC78(v32, type metadata accessor for LibraryImport.ViewModel);
    }
  }

  else
  {
    sub_1000089F8(v9, v16, &unk_1011A4B90);
    if (v31(&v9[v29], 1, v23) != 1)
    {
      v36 = v54;
      sub_1003731BC(&v9[v29], v54, type metadata accessor for LibraryImport.ViewModel);
      v51 = sub_10054EB74(v16, v36);
      sub_10003CC78(v36, type metadata accessor for LibraryImport.ViewModel);
      sub_1000095E8(v19, &unk_1011A4B90);
      sub_1000095E8(v22, &unk_1011A4B90);
      sub_10003CC78(v16, type metadata accessor for LibraryImport.ViewModel);
      sub_1000095E8(v9, &unk_1011A4B90);
      v32 = v61;
      if (v51)
      {
        return sub_10003CC78(v32, type metadata accessor for LibraryImport.ViewModel);
      }

      goto LABEL_7;
    }

    sub_1000095E8(v19, &unk_1011A4B90);
    sub_1000095E8(v22, &unk_1011A4B90);
    sub_10003CC78(v16, type metadata accessor for LibraryImport.ViewModel);
  }

  sub_1000095E8(v9, &qword_10118CA98);
  v32 = v61;
LABEL_7:
  v33 = OBJC_IVAR____TtCO5Music3MLI8Observer_isInProgress;
  v34 = v60;
  *(v60 + OBJC_IVAR____TtCO5Music3MLI8Observer_isInProgress) = (*(v58 + 24) & 1) == 0;
  swift_getKeyPath();
  swift_getKeyPath();
  v35 = v59;
  static Published.subscript.getter();

  if (v31(v35, 1, v23) == 1)
  {
    sub_1000095E8(v35, &unk_1011A4B90);
  }

  else if (swift_getEnumCaseMultiPayload())
  {
    sub_10003CC78(v35, type metadata accessor for LibraryImport.ViewModel);
  }

  else
  {
    v37 = *(v35 + 8);
    v38 = *(v35 + 24);
    if (*(v35 + 32) < 1.0 && (*(v34 + v33) & 1) == 0)
    {
      v41 = *v35;
      v59 = *(v35 + 16);
      v42 = v37;
      v43 = type metadata accessor for TaskPriority();
      v44 = v53;
      (*(*(v43 - 8) + 56))(v53, 1, 1, v43);
      v45 = v54;
      sub_100372A44(v61, v54, type metadata accessor for LibraryImport.ViewModel);
      type metadata accessor for MainActor();

      v46 = static MainActor.shared.getter();
      v47 = (*(v30 + 80) + 80) & ~*(v30 + 80);
      v48 = swift_allocObject();
      v48[2] = v46;
      v48[3] = &protocol witness table for MainActor;
      v48[4] = v34;
      v48[5] = v41;
      v49 = v59;
      v48[6] = v42;
      v48[7] = v49;
      v32 = v61;
      v48[8] = v38;
      v48[9] = 0x3FF0000000000000;
      sub_1003731BC(v45, v48 + v47, type metadata accessor for LibraryImport.ViewModel);
      sub_1001F4CB8(0, 0, v44, &unk_100EC7F90, v48);

      return sub_10003CC78(v32, type metadata accessor for LibraryImport.ViewModel);
    }
  }

  v39 = v57;
  sub_100372A44(v32, v57, type metadata accessor for LibraryImport.ViewModel);
  v55(v39, 0, 1, v23);
  sub_100369A78(v39);
  sub_1000095E8(v39, &unk_1011A4B90);
  return sub_10003CC78(v32, type metadata accessor for LibraryImport.ViewModel);
}

uint64_t sub_10036C510@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_101199B50);
  __chkstk_darwin(v3 - 8);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v41 - v7;
  if (*(v1 + 8))
  {
    v10 = *(v1 + 32);
    v9 = *(v1 + 40);
    if (!v9 || *(v1 + 56) || *(v1 + 88))
    {
      v50 = *(v1 + 32);
      v11 = *(v1 + 48);
      v65 = *(v1 + 64);
      v66 = v11;
      v12 = *(v1 + 80);
      v13 = *(v1 + 88);
      v14 = *(v1 + 144);
      v63 = *(v1 + 128);
      v64[0] = v14;
      *(v64 + 10) = *(v1 + 154);
      swift_bridgeObjectRetain_n();
      *&v51 = v9;

      sub_1000089F8(&v66, v59, &qword_1011815E0);
      sub_1000089F8(&v65, v59, &qword_1011815E0);
      sub_100372BF4(v12, v13, &v63, &v52);
      v49 = v54;
      if (v54)
      {
        v42 = 0;
        v43 = 0;
      }

      else
      {
        v18 = swift_allocObject();
        v19 = *v53;
        v18[1] = v52;
        v18[2] = v19;
        *(v18 + 42) = *&v53[10];
        v42 = sub_100373150;
        v43 = v18;
      }

      sub_100372BF4(v12, v13, &v63, &v55);
      v20 = v57;
      if (v57)
      {
        v41 = 0;
        v21 = 0;
      }

      else
      {
        v21 = swift_allocObject();
        v22 = *v56;
        v21[1] = v55;
        v21[2] = v22;
        *(v21 + 42) = *&v56[10];
        v41 = sub_100373148;
      }

      sub_100372BF4(v12, v13, &v63, v58);
      if (v58[42] & 1) != 0 || (v58[41])
      {
        v47 = 0;
        v48 = 0;
        v45 = 0;
        v46 = 0;
        v44 = 0;
      }

      else
      {
        v23 = *(v1 + 104);
        v48 = *(v1 + 96);
        v24 = *(v1 + 112);
        v45 = *(v1 + 120);
        v46 = v24;

        v47 = v23;

        v44 = sub_100371240;
      }

      sub_100372BF4(v12, v13, &v63, v59);
      if (v62)
      {
        v25 = 0;
      }

      else if (v61)
      {
        if (v59[1] | v59[0] | v59[2] | v59[3] | v59[4])
        {
          v26 = 0;
        }

        else
        {
          v26 = v60 == 0;
        }

        v25 = !v26;
      }

      else
      {
        v25 = 1;
      }

      sub_10036FE40(v1, v8);
      sub_100370228(v1, v5);
      v27 = v51;
      *a1 = v50;
      *(a1 + 8) = v27;
      v28 = v65;
      *(a1 + 16) = v66;
      *(a1 + 32) = v28;
      *(a1 + 48) = v12;
      *(a1 + 56) = v13;
      if (v49)
      {
        *(a1 + 64) = 0;
        *(a1 + 72) = 0;
        if ((v20 & 1) == 0)
        {
LABEL_35:
          v29 = swift_allocObject();
          *(v29 + 16) = v41;
          *(v29 + 24) = v21;
          v30 = sub_100029B94;
LABEL_38:
          *(a1 + 80) = v30;
          *(a1 + 88) = v29;
          v33 = v47;
          *(a1 + 96) = v48;
          *(a1 + 104) = v33;
          v34 = v45;
          *(a1 + 112) = v46;
          *(a1 + 120) = v34;
          *(a1 + 128) = v44;
          *(a1 + 136) = 0;
          *(a1 + 144) = v25;
          v35 = _s16ActionButtonViewV5ModelVMa(0);
          sub_10003D17C(v8, a1 + *(v35 + 48), &qword_101199B50);
          sub_10003D17C(v5, a1 + *(v35 + 52), &qword_101199B50);
          type metadata accessor for LibraryImport.ViewModel(0);
          return swift_storeEnumTagMultiPayload();
        }
      }

      else
      {
        v31 = swift_allocObject();
        v32 = v43;
        *(v31 + 16) = v42;
        *(v31 + 24) = v32;
        *(a1 + 64) = sub_10018A020;
        *(a1 + 72) = v31;
        if ((v20 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      v30 = 0;
      v29 = 0;
      goto LABEL_38;
    }

    v36 = *(v1 + 80);
    v37 = _s16ActionButtonViewV5ModelVMa(0);
    v38 = *(v37 + 48);
    v39 = _s12ClickMetricsVMa(0);
    v40 = *(*(v39 - 8) + 56);
    v40(a1 + v38, 1, 1, v39);
    v40(a1 + *(v37 + 52), 1, 1, v39);
    *a1 = v36;
    *(a1 + 8) = 0;
    *(a1 + 16) = v10;
    *(a1 + 24) = v9;
    *(a1 + 32) = v36;
    *(a1 + 40) = 0;
    *(a1 + 48) = v36;
    type metadata accessor for LibraryImport.ViewModel(0);
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 129) = 0u;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v15 = *v1;
    if (*v1 < 0.0)
    {
      v15 = 0.0;
    }

    if (v15 > 1.0)
    {
      v15 = 1.0;
    }

    v16 = *(v1 + 56);
    *a1 = *(v1 + 32);
    v51 = *(v1 + 40);
    *(a1 + 8) = v51;
    *(a1 + 24) = v16;
    *(a1 + 32) = v15;
    type metadata accessor for LibraryImport.ViewModel(0);
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_10036CA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = type metadata accessor for ContinuousClock();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  sub_10010FC20(&unk_1011A4B90);
  v6[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[17] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[18] = v9;
  v6[19] = v8;

  return _swift_task_switch(sub_10036CBA8, v9, v8);
}

uint64_t sub_10036CBA8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  *(v0 + 16) = *v2;
  *(v0 + 32) = v2[1];
  v3 = *v2;
  v4 = v2[1];
  *(v1 + 32) = *(v2 + 4);
  *v1 = v3;
  *(v1 + 16) = v4;
  v5 = type metadata accessor for LibraryImport.ViewModel(0);
  *(v0 + 160) = v5;
  swift_storeEnumTagMultiPayload();
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  *(v0 + 168) = v7;
  *(v0 + 176) = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v1, 0, 1, v5);
  sub_1000089F8(v0 + 16, v0 + 48, &qword_1011815E0);
  sub_1000089F8(v0 + 32, v0 + 64, &qword_1011815E0);
  sub_100369A78(v1);
  sub_1000095E8(v1, &unk_1011A4B90);
  v8 = static Duration.seconds(_:)();
  v10 = v9;
  static Clock<>.continuous.getter();
  v11 = swift_task_alloc();
  *(v0 + 184) = v11;
  *v11 = v0;
  v11[1] = sub_10036CD6C;

  return sub_10062A46C(v8, v10, 0, 0, 1);
}

uint64_t sub_10036CD6C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[15];
  v5 = v2[14];
  v6 = v2[13];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[18];
    v8 = v3[19];
    v9 = sub_1003754D0;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[18];
    v8 = v3[19];
    v9 = sub_10036CF00;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_10036CF00()
{
  v1 = v0[21];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[12];

  sub_100372A44(v4, v3, type metadata accessor for LibraryImport.ViewModel);
  v1(v3, 0, 1, v2);
  sub_100369A78(v3);
  sub_1000095E8(v3, &unk_1011A4B90);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10036CFF0()
{
  v1 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v1 - 8);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v12[-v5];
  v7 = *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_shouldMakeRequests);
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_shouldMakeRequests) = 0;
  if ((v7 & 1) != 0 && *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_currentTask))
  {

    Task.cancel()();
  }

  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_isInProgress) = 0;
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_didReceiveError) = 0;
  sub_100367604(0);
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = OBJC_IVAR____TtCO5Music3MLI8Observer_mliReviewURL;
  swift_beginAccess();
  sub_1000089F8(v0 + v9, v3, &qword_101183A20);
  swift_beginAccess();
  sub_1001EBCE4(v6, v0 + v9);
  swift_endAccess();
  sub_10036910C(v3);
  sub_1000095E8(v3, &qword_101183A20);
  sub_1000095E8(v6, &qword_101183A20);
  v10 = *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_currentTask);
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_currentTask) = 0;
  if (v10)
  {
    Task.cancel()();
  }

  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;

  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_retryCount) = 0;
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_currentRetryDelay) = 2;
  return result;
}

uint64_t sub_10036D248@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a1;
  v5 = type metadata accessor for URLComponents();
  v59 = *(v5 - 8);
  __chkstk_darwin(v5);
  v53 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v7 - 8);
  v9 = &v50 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v51 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v52 = &v50 - v14;
  v15 = sub_10010FC20(&qword_101194980);
  __chkstk_darwin(v15 - 8);
  v17 = &v50 - v16;
  v18 = sub_10036DCC4();
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    v56 = v10;
    v57 = a3;
    v22 = sub_10036D9E0();
    if (v22 && (v23 = v22, v24 = [v22 stringForBagKey:ICURLBagKeyLanguageTag], v23, v24))
    {
      v25 = a2;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v26;
    }

    else
    {
      v25 = a2;
      v55 = 0;
    }

    v27 = [objc_opt_self() currentDeviceInfo];
    v28 = [v27 isIPad];

    v29 = 0xE600000000000000;
    if (v28)
    {
      v29 = 0xE400000000000000;
    }

    v54 = v29;
    v60 = 0;
    v61 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    v60 = 0x2F2F3A7370747468;
    v61 = 0xE800000000000000;
    v30._countAndFlagsBits = v20;
    v30._object = v21;
    String.append(_:)(v30);

    v31._countAndFlagsBits = 47;
    v31._object = 0xE100000000000000;
    String.append(_:)(v31);
    v32._countAndFlagsBits = v58;
    v32._object = v25;
    String.append(_:)(v32);
    v33._countAndFlagsBits = 0x736572676F72702FLL;
    v33._object = 0xE900000000000073;
    String.append(_:)(v33);
    URLComponents.init(string:)();

    v34 = *(v59 + 48);
    if (v34(v17, 1, v5))
    {
    }

    else
    {
      v38 = 1684107369;
      if (!v28)
      {
        v38 = 0x656E6F687069;
      }

      v58 = v38;
      sub_10010FC20(&unk_101197BC0);
      type metadata accessor for URLQueryItem();
      *(swift_allocObject() + 16) = xmmword_100EBDC20;
      URLQueryItem.init(name:value:)();

      URLQueryItem.init(name:value:)();

      URLComponents.queryItems.setter();
    }

    v40 = v56;
    v39 = v57;
    if (v34(v17, 1, v5))
    {
      (*(v11 + 56))(v9, 1, 1, v40);
    }

    else
    {
      v41 = v59;
      v42 = v53;
      (*(v59 + 16))(v53, v17, v5);
      URLComponents.url.getter();
      (*(v41 + 8))(v42, v5);
      if ((*(v11 + 48))(v9, 1, v40) != 1)
      {
        v48 = v52;
        (*(v11 + 32))(v52, v9, v40);
        (*(v11 + 16))(v51, v48, v40);
        URLRequest.init(url:cachePolicy:timeoutInterval:)();
        (*(v11 + 8))(v48, v40);
        v49 = type metadata accessor for URLRequest();
        (*(*(v49 - 8) + 56))(v39, 0, 1, v49);
        return sub_1000095E8(v17, &qword_101194980);
      }
    }

    sub_1000095E8(v9, &qword_101183A20);
    if (qword_10117F658 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_1000060E4(v43, qword_101218B30);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Unable to create a urlRequest", v46, 2u);
    }

    v47 = type metadata accessor for URLRequest();
    (*(*(v47 - 8) + 56))(v39, 1, 1, v47);
    return sub_1000095E8(v17, &qword_101194980);
  }

  v35 = type metadata accessor for URLRequest();
  v36 = *(*(v35 - 8) + 56);

  return v36(a3, 1, 1, v35);
}

uint64_t sub_10036D9E0()
{
  v1 = v0;
  BagProvider.shared.unsafeMutableAddressor();

  v2 = BagProvider.bag.getter();

  if (!v2)
  {
    if (qword_10117F658 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000060E4(v3, qword_101218B30);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Bag is nil, creating url bag observer", v6, 2u);
    }

    v7 = swift_allocObject();
    swift_weakInit();

    v8 = BagProvider.createObserver(handler:)(sub_100372A3C, v7);

    *(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_urlBagObserver) = v8;
  }

  return v2;
}

uint64_t sub_10036DB70()
{
  if (qword_10117F658 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000060E4(v0, qword_101218B30);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Received bag, retrying", v3, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtCO5Music3MLI8Observer_urlBagObserver) = 0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100369E70(0);
  }

  return result;
}

uint64_t sub_10036DCC4()
{
  v0 = sub_10036D9E0();
  if (!v0)
  {
    goto LABEL_23;
  }

  v1 = v0;
  v2 = [v0 dictionaryForBagKey:ICURLBagKeyMusicCommon];

  if (!v2)
  {
    goto LABEL_23;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = sub_10005476C(v3);

  if (!v4)
  {
    goto LABEL_23;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v4 + 16))
  {

    goto LABEL_22;
  }

  v7 = sub_100019C10(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_10000DD18(*(v4 + 56) + 32 * v7, v30);

  sub_10010FC20(&qword_101197BD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:
    if (qword_10117F658 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000060E4(v23, qword_101218B30);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_28;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "Unable to get the domain";
    goto LABEL_27;
  }

  if (!*(v29._countAndFlagsBits + 16) || (v10 = sub_100019C10(0x746C7561666564, 0xE700000000000000), (v11 & 1) == 0))
  {
LABEL_22:

    goto LABEL_23;
  }

  sub_10000DD18(*(v29._countAndFlagsBits + 56) + 32 * v10, v30);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v12 = sub_10036D9E0();
  if (v12)
  {
    v13 = v12;
    v14 = [v12 dictionaryForBagKey:ICURLBagKeyMusicSubscription];

    if (v14)
    {
      v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = sub_10005476C(v15);

      if (v16)
      {
        if (!*(v16 + 16) || (v17 = sub_100019C10(6909037, 0xE300000000000000), (v18 & 1) == 0))
        {
LABEL_29:

          goto LABEL_30;
        }

        sub_10000DD18(*(v16 + 56) + 32 * v17, v30);

        if (swift_dynamicCast())
        {
          if (*(v29._countAndFlagsBits + 16))
          {
            v19 = sub_100019C10(0x6150495041696C6DLL, 0xEA00000000006874);
            if (v20)
            {
              sub_10000DD18(*(v29._countAndFlagsBits + 56) + 32 * v19, v30);

              if (swift_dynamicCast())
              {
                v30[0] = v29;
                v21._countAndFlagsBits = 3241519;
                v21._object = 0xE300000000000000;
                String.append(_:)(v21);
                String.append(_:)(v29);

                return *&v30[0];
              }

              goto LABEL_30;
            }
          }

          goto LABEL_29;
        }
      }
    }
  }

LABEL_30:

  if (qword_10117F658 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_1000060E4(v28, qword_101218B30);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v24, v25))
  {
    goto LABEL_28;
  }

  v26 = swift_slowAlloc();
  *v26 = 0;
  v27 = "Unable to get the path";
LABEL_27:
  _os_log_impl(&_mh_execute_header, v24, v25, v27, v26, 2u);

LABEL_28:

  return 0;
}

uint64_t sub_10036E140()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v2 - 8);
  v4 = &v39 - v3;
  v5 = type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for MetricsPageProperties();
  __chkstk_darwin(v11 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MetricsEvent.Page.libraryLanding.unsafeMutableAddressor();
  sub_100372A44(v14, v10, type metadata accessor for MetricsEvent.Page);
  MetricsEvent.Page.metricsPageProperties.getter(v13);
  sub_10003CC78(v10, type metadata accessor for MetricsEvent.Page);
  v16 = *v13;
  v15 = *(v13 + 1);
  v17 = *(v13 + 2);
  v18 = *(v13 + 3);
  v19 = type metadata accessor for URL();
  v20 = *(*(v19 - 8) + 56);
  v41 = v4;
  v20(v4, 1, 1, v19);
  sub_10010FC20(&qword_101190BE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = 0x6C61727265666572;
  v22 = inited + 32;
  *(inited + 40) = 0xEE00737574617453;
  v23 = *(v1 + 128);
  v40 = v17;
  v24 = v7;
  if (v23)
  {
    if (v23 == 1)
    {
      v25 = 0xE700000000000000;
      v26 = 0x64657472617473;
    }

    else
    {
      v25 = 0xE800000000000000;
      v26 = 0x6465776569766572;
    }
  }

  else
  {
    v25 = 0xE700000000000000;
    v26 = 0x6E776F6E6B6E75;
  }

  *(inited + 48) = v26;
  *(inited + 56) = v25;
  v27 = inited;

  v28 = sub_10010C578(v27);
  swift_setDeallocating();
  sub_1000095E8(v22, &qword_101183AA0);
  v29 = v24;
  MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v16, v15, v40, v18, v41, v28, 0, 0, v24, 1, *(v1 + 136), *(v1 + 144), 2);

  v30 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v31 = sub_10053771C();
  v33 = v32;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v34 = qword_101218AD0;
  v35 = GroupActivitiesManager.hasJoined.getter();
  v36 = GroupActivitiesManager.participantsCount.getter();
  v37 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v30) + 0xA0))(v29, v31, v33, v35 & 1, v36, *(v34 + v37));

  sub_10003CC78(v29, type metadata accessor for MetricsEvent.Page);
  return sub_10003CC78(v13, type metadata accessor for MetricsPageProperties);
}

uint64_t sub_10036E568()
{

  v1 = OBJC_IVAR____TtCO5Music3MLI8Observer__viewModel;
  v2 = sub_10010FC20(&qword_10118CA88);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1000095E8(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_mliReviewURL, &qword_101183A20);

  sub_1000095E8(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_queuedViewModel, &unk_1011A4B90);

  return v0;
}

uint64_t sub_10036E6F0()
{
  sub_10036E568();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MLI.Observer()
{
  result = qword_10118C658;
  if (!qword_10118C658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10036E79C()
{
  sub_10036E94C();
  if (v0 <= 0x3F)
  {
    sub_10036E9B0(319, &qword_1011814C0, &type metadata accessor for URL);
    if (v1 <= 0x3F)
    {
      sub_10036E9B0(319, &qword_10118C670, type metadata accessor for LibraryImport.ViewModel);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10036E94C()
{
  if (!qword_10118C668)
  {
    sub_1001109D0(&unk_1011A4B90);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10118C668);
    }
  }
}

void sub_10036E9B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_10036EA04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_10036EA60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_10036EAC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_10036EB20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10036EBA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_10036EC00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10036EC64@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MLI.Observer();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10036ECB4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URLComponents();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_101194980);
  __chkstk_darwin(v7 - 8);
  v9 = v49 - v8;
  v11 = *v1;
  v10 = v1[1];
  v13 = v1[2];
  v12 = v1[3];
  v14 = v1[4];
  v15 = *(v1 + 40);
  if (*(v1 + 41))
  {
    if (v13 | v10 | v11 | v12 | v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15 == 0;
    }

    if (!v16)
    {
      goto LABEL_33;
    }

    if (qword_10117F630 != -1)
    {
      swift_once();
    }

    v17 = *(qword_101218B28 + 40);
    if (v17)
    {
      v18 = *(qword_101218B28 + 32);
      v57 = 0x2F2F3A636973756DLL;
      v58 = 0xE800000000000000;

      v19._countAndFlagsBits = v18;
      v19._object = v17;
      String.append(_:)(v19);

      URL.init(string:)();
    }

    if (qword_10117F658 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000060E4(v32, qword_101218B30);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v27, v28))
    {
LABEL_32:

LABEL_33:
      v33 = type metadata accessor for URL();
      v34 = *(*(v33 - 8) + 56);

      return v34(a1, 1, 1, v33);
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "No deep link";
LABEL_31:
    _os_log_impl(&_mh_execute_header, v27, v28, v30, v29, 2u);

    goto LABEL_32;
  }

  v55 = v6;
  v59 = v12;
  if (qword_10117F630 != -1)
  {
    v48 = v13;
    swift_once();
    v13 = v48;
  }

  if (!*(qword_101218B28 + OBJC_IVAR____TtCO5Music3MLI8Observer_sessionID + 8))
  {
    if (qword_10117F658 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000060E4(v26, qword_101218B30);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_32;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Trying to open url with no sessionID";
    goto LABEL_31;
  }

  v54 = v4;
  v21 = *(qword_101218B28 + 56);
  if (!v21)
  {
    if (qword_10117F658 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000060E4(v31, qword_101218B30);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_32;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "No review deep link";
    goto LABEL_31;
  }

  v53 = a1;
  v22 = *(qword_101218B28 + OBJC_IVAR____TtCO5Music3MLI8Observer_sessionID);
  v51 = v13;
  v52 = v22;
  v23 = *(qword_101218B28 + 48);
  v57 = 0x2F2F3A636973756DLL;
  v58 = 0xE800000000000000;

  v24._countAndFlagsBits = v23;
  v24._object = v21;
  String.append(_:)(v24);

  URLComponents.init(string:)();

  v25 = *(v54 + 48);
  if (v25(v9, 1, v3))
  {
  }

  else
  {
    v50 = v25;
    sub_10010FC20(&unk_101197BC0);
    v49[0] = *(*(type metadata accessor for URLQueryItem() - 8) + 72);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_100EBE260;
    v49[1] = v35;
    URLQueryItem.init(name:value:)();

    v57 = 0;
    v58 = 0xE000000000000000;
    if (v10)
    {
      v36 = 0;
    }

    else
    {
      v36 = v11;
    }

    if (v15)
    {
      v37 = 0;
    }

    else
    {
      v37 = v14;
    }

    v38 = __OFADD__(v36, v37);
    v39 = v36 + v37;
    if (v38)
    {
      __break(1u);
      return result;
    }

    v56 = v39;
    v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v40);

    URLQueryItem.init(name:value:)();

    v57 = 0;
    v58 = 0xE000000000000000;
    v41 = v51;
    if (v59)
    {
      v41 = 0;
    }

    v56 = v41;
    v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v42);

    URLQueryItem.init(name:value:)();

    URLComponents.queryItems.setter();
    v25 = v50;
  }

  v43 = v25(v9, 1, v3);
  v44 = v53;
  v45 = v55;
  if (v43)
  {
    v46 = type metadata accessor for URL();
    (*(*(v46 - 8) + 56))(v44, 1, 1, v46);
  }

  else
  {
    v47 = v54;
    (*(v54 + 16))(v55, v9, v3);
    URLComponents.url.getter();
    (*(v47 + 8))(v45, v3);
  }

  return sub_1000095E8(v9, &qword_101194980);
}

uint64_t sub_10036F49C()
{
  v0 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10036ECB4(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_1000095E8(v2, &qword_101183A20);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  sub_10010CD7C(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_100373174(&qword_10118A3E0, type metadata accessor for OpenExternalURLOptionsKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v8 openURL:v11 options:isa completionHandler:0];

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10036F6EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x736D75626C61;
  if (v2 != 1)
  {
    v4 = 0x69762D636973756DLL;
    v3 = 0xEC000000736F6564;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x73676E6F73;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x736D75626C61;
  if (*a2 != 1)
  {
    v8 = 0x69762D636973756DLL;
    v7 = 0xEC000000736F6564;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x73676E6F73;
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

Swift::Int sub_10036F7F4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10036F898()
{
  String.hash(into:)();
}

Swift::Int sub_10036F928()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10036F9C8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100373C20(*a1);
  *a2 = result;
  return result;
}

void sub_10036F9F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x736D75626C61;
  if (v2 != 1)
  {
    v5 = 0x69762D636973756DLL;
    v4 = 0xEC000000736F6564;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x73676E6F73;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10036FA58()
{
  v1 = 0x736D75626C61;
  if (*v0 != 1)
  {
    v1 = 0x69762D636973756DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73676E6F73;
  }
}

unint64_t sub_10036FAB4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100373C20(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10036FADC(uint64_t a1)
{
  v2 = sub_100375348();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10036FB18(uint64_t a1)
{
  v2 = sub_100375348();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10036FB54(void *a1)
{
  v3 = sub_10010FC20(&qword_10118CB90);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000954C(a1, a1[3]);
  sub_100375348();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

double sub_10036FD00@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100373C6C(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

BOOL sub_10036FD5C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_100372538(&v5, &v7);
}

void sub_10036FDA8(uint64_t a1)
{
  if (*(a1 + 41))
  {
    if (*(a1 + 16) | *(a1 + 8) | *a1 | *(a1 + 24) | *(a1 + 32))
    {
      v1 = 0;
    }

    else
    {
      v1 = *(a1 + 40) == 0;
    }

    if (v1)
    {
      if (qword_10117F630 != -1)
      {
        swift_once();
      }

      sub_100367784();
    }

    else
    {
      sub_100367F14();
    }
  }
}

uint64_t sub_10036FE40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s12ClickMetricsVMa(0);
  v29 = *(v4 - 1);
  __chkstk_darwin(v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - v8;
  v11 = *(a1 + 80);
  v10 = *(a1 + 88);
  v12 = *(a1 + 144);
  v41 = *(a1 + 128);
  v42[0] = v12;
  *(v42 + 10) = *(a1 + 154);
  swift_bridgeObjectRetain_n();
  sub_100372BF4(v11, v10, &v41, v31);
  if (v34)
  {

LABEL_13:

    v16 = *(v29 + 56);

    return v16(a2, 1, 1, v4);
  }

  if (v32)
  {
    v13 = 0;
  }

  else
  {
    v13 = (v31[1] | v31[0] | v31[2] | v31[3] | v31[4]) == 0;
  }

  if (v13)
  {
    v14 = 28;
  }

  else
  {
    v14 = 19;
  }

  if (v33)
  {
    v15 = v14;
  }

  else
  {
    v15 = 28;
  }

  sub_100372BF4(v11, v10, &v41, v35);
  if (v38)
  {
    goto LABEL_13;
  }

  if (v37)
  {
    v18 = (v35[1] | v35[0] | v35[2] | v35[3] | v35[4]) == 0;
    v19 = v36 == 0;
    if (v18 && v19)
    {
      v20 = 0x7972746552;
    }

    else
    {
      v20 = 19279;
    }

    if (v18 && v19)
    {
      v21 = 0xE500000000000000;
    }

    else
    {
      v21 = 0xE200000000000000;
    }
  }

  else
  {
    v21 = 0xE900000000000077;
    v20 = 0x6F4E776569766552;
  }

  sub_100372BF4(v11, v10, &v41, v39);
  if (v39[42])
  {
    v22 = type metadata accessor for URL();
    (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  }

  else
  {
    sub_10036ECB4(v9);
  }

  v40 = *(a1 + 176);
  v23 = v40;
  v6[v4[8]] = 4;
  *v6 = v15;
  sub_10003D17C(v9, &v6[v4[5]], &qword_101183A20);
  v24 = &v6[v4[6]];
  *v24 = v20;
  v24[1] = v21;
  v25 = &v6[v4[7]];
  if (*(&v23 + 1) >= 2uLL)
  {
    v26 = v23;
  }

  else
  {
    v26 = 0;
  }

  v27 = 12;
  if (*(&v23 + 1) >= 2uLL)
  {
    v27 = *(&v23 + 1);
  }

  *v25 = v26;
  *(v25 + 1) = v27;
  sub_1003731BC(v6, a2, _s12ClickMetricsVMa);
  (*(v29 + 56))(a2, 0, 1, v4);
  return sub_1000089F8(&v40, v30, &qword_10118CAA0);
}

uint64_t sub_100370228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s12ClickMetricsVMa(0);
  v5 = *(v4 - 1);
  __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v8 - 8);
  v10 = &v18[-v9];
  v11 = type metadata accessor for URL();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v19 = *(a1 + 176);
  v12 = v19;
  v7[v4[8]] = 4;
  *v7 = 19;
  sub_10003D17C(v10, &v7[v4[5]], &qword_101183A20);
  v13 = &v7[v4[6]];
  *v13 = 0x65736F6C43;
  v13[1] = 0xE500000000000000;
  v14 = &v7[v4[7]];
  if (*(&v12 + 1) >= 2uLL)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  v16 = 12;
  if (*(&v12 + 1) >= 2uLL)
  {
    v16 = *(&v12 + 1);
  }

  *v14 = v15;
  v14[1] = v16;
  sub_1003731BC(v7, a2, _s12ClickMetricsVMa);
  (*(v5 + 56))(a2, 0, 1, v4);
  return sub_1000089F8(&v19, v18, &qword_10118CAA0);
}

unint64_t sub_10037044C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x537373696D736964;
    v6 = 0x526F54736D657469;
    if (a1 != 8)
    {
      v6 = 0x7363697274656DLL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6E6F69746361;
    if (a1 != 5)
    {
      v7 = 0x547373696D736964;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x73736572676F7270;
    v2 = 0x656C746974;
    v3 = 0x656C746974627573;
    if (a1 != 3)
    {
      v3 = 0x74536E6F69746361;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1003705AC(void *a1)
{
  v3 = v1;
  v5 = sub_10010FC20(&qword_10118CAF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-v7 - 16];
  sub_10000954C(a1, a1[3]);
  sub_100374B88();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v11 = *v3;
  BYTE8(v11) = *(v3 + 8);
  v13 = 0;
  sub_100282B9C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = *(v3 + 144);
    v11 = *(v3 + 128);
    *v12 = v9;
    *&v12[10] = *(v3 + 154);
    v13 = 8;
    sub_100374CBC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11 = *(v3 + 176);
    v13 = 9;
    sub_100374D10();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1003708B8(void *a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_10118CB10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - v6;
  sub_10000954C(a1, a1[3]);
  sub_100374AE0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[9];
  v24 = v2[8];
  v25 = v8;
  v9 = v2[11];
  v26 = v2[10];
  v27 = v9;
  v10 = v2[5];
  v20 = v2[4];
  v21 = v10;
  v11 = v2[7];
  v22 = v2[6];
  v23 = v11;
  v12 = v2[1];
  v16 = *v2;
  v17 = v12;
  v13 = v2[3];
  v18 = v2[2];
  v19 = v13;
  sub_100374D64(v2, v15);
  sub_100374D9C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v15[8] = v24;
  v15[9] = v25;
  v15[10] = v26;
  v15[11] = v27;
  v15[4] = v20;
  v15[5] = v21;
  v15[6] = v22;
  v15[7] = v23;
  v15[0] = v16;
  v15[1] = v17;
  v15[2] = v18;
  v15[3] = v19;
  sub_100373464(v15);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100370A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100373E74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100370ABC(uint64_t a1)
{
  v2 = sub_100374B88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100370AF8(uint64_t a1)
{
  v2 = sub_100374B88();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100370B34@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1003741B8(a1, v11);
  if (!v2)
  {
    v5 = v19;
    a2[8] = v18;
    a2[9] = v5;
    v6 = v21;
    a2[10] = v20;
    a2[11] = v6;
    v7 = v15;
    a2[4] = v14;
    a2[5] = v7;
    v8 = v17;
    a2[6] = v16;
    a2[7] = v8;
    v9 = v11[1];
    *a2 = v11[0];
    a2[1] = v9;
    result = *&v12;
    v10 = v13;
    a2[2] = v12;
    a2[3] = v10;
  }

  return result;
}

uint64_t sub_100370BB0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v15[8] = a1[8];
  v15[9] = v2;
  v3 = a1[11];
  v15[10] = a1[10];
  v15[11] = v3;
  v4 = a1[5];
  v15[4] = a1[4];
  v15[5] = v4;
  v5 = a1[7];
  v15[6] = a1[6];
  v15[7] = v5;
  v6 = a1[1];
  v15[0] = *a1;
  v15[1] = v6;
  v7 = a1[3];
  v15[2] = a1[2];
  v15[3] = v7;
  v8 = a2[9];
  v16[8] = a2[8];
  v16[9] = v8;
  v9 = a2[11];
  v16[10] = a2[10];
  v16[11] = v9;
  v10 = a2[5];
  v16[4] = a2[4];
  v16[5] = v10;
  v11 = a2[7];
  v16[6] = a2[6];
  v16[7] = v11;
  v12 = a2[1];
  v16[0] = *a2;
  v16[1] = v12;
  v13 = a2[3];
  v16[2] = a2[2];
  v16[3] = v13;
  return sub_1003725BC(v15, v16) & 1;
}

uint64_t sub_100370C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100370CDC(uint64_t a1)
{
  v2 = sub_100374DF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100370D18(uint64_t a1)
{
  v2 = sub_100374DF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100370D54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10010FC20(&qword_10118CB20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10000954C(a1, a1[3]);
  sub_100374DF0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_10000959C(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_100370ED0(void *a1)
{
  v2 = sub_10010FC20(&qword_10118CB30);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000954C(a1, a1[3]);
  sub_100374DF0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10037100C(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100371080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100371108(uint64_t a1)
{
  v2 = sub_100374AE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100371144(uint64_t a1)
{
  v2 = sub_100374AE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100371180@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1003748B4(a1, v11);
  if (!v2)
  {
    v5 = v19;
    a2[8] = v18;
    a2[9] = v5;
    v6 = v21;
    a2[10] = v20;
    a2[11] = v6;
    v7 = v15;
    a2[4] = v14;
    a2[5] = v7;
    v8 = v17;
    a2[6] = v16;
    a2[7] = v8;
    v9 = v11[1];
    *a2 = v11[0];
    a2[1] = v9;
    result = *&v12;
    v10 = v13;
    a2[2] = v12;
    a2[3] = v10;
  }

  return result;
}

void sub_100371240()
{
  v0 = sub_10010FC20(&unk_1011A4B90);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  if (qword_10117F630 != -1)
  {
    swift_once();
  }

  v3 = qword_101218B28;
  v4 = OBJC_IVAR____TtCO5Music3MLI8Observer_didDismissBanner;
  v5 = *(qword_101218B28 + OBJC_IVAR____TtCO5Music3MLI8Observer_didDismissBanner);
  *(qword_101218B28 + OBJC_IVAR____TtCO5Music3MLI8Observer_didDismissBanner) = 1;
  if ((v5 & 1) == 0)
  {
    v6 = [objc_opt_self() standardUserDefaults];
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v8 = String._bridgeToObjectiveC()();
    [v6 setValue:isa forKey:v8];

    if (*(v3 + v4))
    {
      v9 = type metadata accessor for LibraryImport.ViewModel(0);
      (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
      sub_100369A78(v2);
      sub_1000095E8(v2, &unk_1011A4B90);
    }
  }
}

uint64_t sub_1003713F0()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10118C558 = result;
  unk_10118C560 = v3;
  return result;
}

uint64_t sub_1003714F0()
{
  v0 = type metadata accessor for LibraryImport.ViewModel(0);
  sub_100006080(v0, qword_10118C568);
  v1 = sub_1000060E4(v0, qword_10118C568);
  if (qword_10117F638 != -1)
  {
    swift_once();
  }

  v3 = qword_10118C558;
  v2 = unk_10118C560;
  v4 = _s16ActionButtonViewV5ModelVMa(0);
  v5 = *(v4 + 48);
  v6 = _s12ClickMetricsVMa(0);
  v7 = *(*(v6 - 8) + 56);
  v7(v1 + v5, 1, 1, v6);
  v7(v1 + *(v4 + 52), 1, 1, v6);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = v3;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0;
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_10037164C()
{
  v0 = type metadata accessor for LibraryImport.ViewModel(0);
  sub_100006080(v0, qword_10118C580);
  v1 = sub_1000060E4(v0, qword_10118C580);
  if (qword_10117F638 != -1)
  {
    v4 = v1;
    swift_once();
    v1 = v4;
  }

  v2 = unk_10118C560;
  *v1 = qword_10118C558;
  v1[1] = v2;
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = 0;
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_100371704()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for LibraryImport.ViewModel(0);
  sub_100006080(v2, qword_10118C598);
  v3 = sub_1000060E4(v2, qword_10118C598);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v4 = String.init(localized:table:bundle:locale:comment:)();
  v6 = v5;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  *v3 = v4;
  v3[1] = v6;
  v3[2] = v7;
  v3[3] = v8;
  v3[4] = 0;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1003718A8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 valueForKey:v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (!*(&v15 + 1))
  {
    result = sub_1000095E8(v16, &unk_101183F30);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    v12 = 0xE300000000000000;
    v10 = 7104878;
    goto LABEL_9;
  }

  Date.init(timeIntervalSinceReferenceDate:)();
  v10 = Date.description.getter();
  v12 = v11;
  result = (*(v3 + 8))(v5, v2);
LABEL_9:
  a1[3] = &type metadata for String;
  *a1 = v10;
  a1[1] = v12;
  return result;
}

uint64_t sub_100371A90@<X0>(unint64_t *a1@<X8>)
{
  v2 = _s16ActionButtonViewV5ModelVMa(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v36[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10010FC20(&unk_1011A4B90);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v36[-v9];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = type metadata accessor for LibraryImport.ViewModel(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_28;
  }

  sub_1000089F8(v10, v8, &unk_1011A4B90);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1003731BC(v8, v4, _s16ActionButtonViewV5ModelVMa);
      sub_10010FC20(&unk_1011972C0);
      inited = swift_initStackObject();
      v14 = inited;
      *(inited + 16) = xmmword_100EBCED0;
      *(inited + 32) = 1701869940;
      *(inited + 40) = 0xE400000000000000;
      strcpy((inited + 48), "actionButton");
      *(inited + 61) = 0;
      *(inited + 62) = -5120;
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = 0x656C746974;
      v15 = *v4;
      if (v4[1])
      {
        v16 = v4[1];
      }

      else
      {
        v15 = 7104878;
        v16 = 0xE300000000000000;
      }

      *(inited + 88) = 0xE500000000000000;
      *(inited + 96) = v15;
      *(inited + 104) = v16;
      *(inited + 120) = &type metadata for String;
      *(inited + 128) = 0x656C746974627573;
      v17 = v4[2];
      if (v4[3])
      {
        v18 = v4[3];
      }

      else
      {
        v17 = 7104878;
        v18 = 0xE300000000000000;
      }

      *(inited + 136) = 0xE800000000000000;
      *(inited + 144) = v17;
      *(inited + 152) = v18;
      *(inited + 168) = &type metadata for String;
      *(inited + 176) = 0x614C6E6F69746361;
      v19 = v4[4];
      if (v4[5])
      {
        v20 = v4[5];
      }

      else
      {
        v19 = 7104878;
        v20 = 0xE300000000000000;
      }

      *(inited + 184) = 0xEB000000006C6562;
      *(inited + 192) = v19;
      *(inited + 200) = v20;
      *(inited + 216) = &type metadata for String;
      *(inited + 224) = 0x6E6F69746361;
      v21 = v4[6];
      if (v4[7])
      {
        v22 = v4[7];
      }

      else
      {
        v21 = 7104878;
        v22 = 0xE300000000000000;
      }

      *(inited + 232) = 0xE600000000000000;
      *(inited + 240) = v21;
      *(inited + 248) = v22;
      *(inited + 264) = &type metadata for String;
      *(inited + 272) = 0xD000000000000011;
      *(inited + 280) = 0x8000000100E47F60;

      sub_100372010(v4, (v14 + 288));
      v23 = sub_10010BC60(v14);
      swift_setDeallocating();
      sub_10010FC20(&unk_1011927D0);
      swift_arrayDestroy();
      a1[3] = sub_10010FC20(&qword_101197BD0);
      *a1 = v23;
      sub_10003CC78(v4, _s16ActionButtonViewV5ModelVMa);
      return sub_1000095E8(v10, &unk_1011A4B90);
    }

    sub_10003CC78(v8, type metadata accessor for LibraryImport.ViewModel);
LABEL_28:
    a1[3] = &type metadata for String;
    *a1 = 7104878;
    a1[1] = 0xE300000000000000;
    return sub_1000095E8(v10, &unk_1011A4B90);
  }

  v24 = *v8;
  v25 = v8[1];
  v26 = v8[2];
  v27 = v8[3];
  v28 = v8[4];
  sub_10010FC20(&unk_1011972C0);
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_100EBEF50;
  *(v29 + 32) = 1701869940;
  *(v29 + 40) = 0xE400000000000000;
  *(v29 + 48) = 0x6572676F72506E69;
  *(v29 + 56) = 0xEA00000000007373;
  *(v29 + 72) = &type metadata for String;
  *(v29 + 80) = 0x656C746974;
  v30 = 7104878;
  if (v25)
  {
    v31 = v24;
  }

  else
  {
    v31 = 7104878;
  }

  if (v25)
  {
    v32 = v25;
  }

  else
  {
    v32 = 0xE300000000000000;
  }

  *(v29 + 88) = 0xE500000000000000;
  *(v29 + 96) = v31;
  *(v29 + 104) = v32;
  *(v29 + 120) = &type metadata for String;
  *(v29 + 128) = 0x656C746974627573;
  if (v27)
  {
    v30 = v26;
    v33 = v27;
  }

  else
  {
    v33 = 0xE300000000000000;
  }

  *(v29 + 136) = 0xE800000000000000;
  *(v29 + 144) = v30;
  *(v29 + 152) = v33;
  *(v29 + 168) = &type metadata for String;
  *(v29 + 176) = 0x73736572676F7270;
  *(v29 + 184) = 0xE800000000000000;
  *(v29 + 216) = &type metadata for CGFloat;
  *(v29 + 192) = v28;
  v34 = sub_10010BC60(v29);
  swift_setDeallocating();
  sub_10010FC20(&unk_1011927D0);
  swift_arrayDestroy();
  a1[3] = sub_10010FC20(&qword_101197BD0);
  *a1 = v34;
  return sub_1000095E8(v10, &unk_1011A4B90);
}

void *sub_100372010@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = result[16];
  if (v3)
  {
    v5 = result[14];
    v4 = result[15];
    v7 = result[12];
    v6 = result[13];
    sub_10010FC20(&qword_101190BE0);
    inited = swift_initStackObject();
    v9 = inited;
    *(inited + 32) = 0x656C746974;
    *(inited + 16) = xmmword_100EBDC20;
    if (v6)
    {
      v10 = v7;
    }

    else
    {
      v10 = 7104878;
    }

    v11 = 0xE300000000000000;
    if (v6)
    {
      v12 = v6;
    }

    else
    {
      v12 = 0xE300000000000000;
    }

    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v10;
    *(inited + 56) = v12;
    *(inited + 64) = 0x656C746974627573;
    if (v4)
    {
      v13 = v5;
    }

    else
    {
      v13 = 7104878;
    }

    if (v4)
    {
      v11 = v4;
    }

    *(inited + 72) = 0xE800000000000000;
    *(inited + 80) = v13;
    *(inited + 88) = v11;

    sub_10037292C(v7, v6, v5, v4, v3);

    v14 = sub_10010C578(v9);
    swift_setDeallocating();
    sub_10010FC20(&qword_101183AA0);
    swift_arrayDestroy();
    a2[3] = sub_10010FC20(&unk_10118A3F0);

    *a2 = v14;
  }

  else
  {
    a2[3] = &type metadata for String;
    *a2 = 7104878;
    a2[1] = 0xE300000000000000;
  }

  return result;
}

uint64_t sub_1003721A8()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101218B30);
  sub_1000060E4(v0, qword_101218B30);
  return static Logger.music(_:)();
}

uint64_t sub_100372200()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10037227C(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011A4B90);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1000089F8(a1, &v9 - v6, &unk_1011A4B90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v7, v4, &unk_1011A4B90);

  static Published.subscript.setter();
  return sub_1000095E8(v7, &unk_1011A4B90);
}

void sub_1003723AC()
{
  if (qword_10117F658 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000060E4(v0, qword_101218B30);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Active user changed, reset user defaults", v3, 2u);
  }

  v4 = [objc_opt_self() standardUserDefaults];
  if (qword_10117F620 != -1)
  {
    swift_once();
  }

  v5 = String._bridgeToObjectiveC()();
  [v4 removeObjectForKey:v5];
}

BOOL sub_100372538(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 40);
  if ((*(a1 + 40) & 1) == 0)
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    return (v4 & 1) == 0;
  }

  return (*(a2 + 40) & 1) != 0;
}

uint64_t sub_1003725BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return v2;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v2 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return v2;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a1 + 40);
  v4 = *(a2 + 40);
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    if (*(a1 + 32) != *(a2 + 32) || v3 != v4)
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

  else if (v4)
  {
    return 0;
  }

  v9 = *(a1 + 56);
  v10 = *(a2 + 56);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (*(a1 + 48) != *(a2 + 48) || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = *(a1 + 72);
  v16 = *(a2 + 72);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (*(a1 + 64) != *(a2 + 64) || v15 != v16)
    {
      v17 = a1;
      v18 = a2;
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v21 = *(a1 + 88);
  v22 = *(a2 + 88);
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    if (*(a1 + 80) != *(a2 + 80) || v21 != v22)
    {
      v23 = a1;
      v24 = a2;
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v24;
      v26 = v25;
      a1 = v23;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v27 = *(a1 + 104);
  v28 = *(a2 + 104);
  if (v27)
  {
    if (!v28)
    {
      return 0;
    }

    if (*(a1 + 96) != *(a2 + 96) || v27 != v28)
    {
      v29 = a1;
      v30 = a2;
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v30;
      v32 = v31;
      a1 = v29;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v28)
  {
    return 0;
  }

  v33 = *(a1 + 120);
  v34 = *(a2 + 120);
  if (v33)
  {
    if (!v34)
    {
      return 0;
    }

    if (*(a1 + 112) != *(a2 + 112) || v33 != v34)
    {
      v35 = a1;
      v36 = a2;
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v36;
      v38 = v37;
      a1 = v35;
      if ((v38 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v34)
  {
    return 0;
  }

  if (*(a1 + 169))
  {
    if ((*(a2 + 169) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_57;
  }

  if (*(a2 + 169))
  {
    return 0;
  }

  v41 = *(a2 + 136);
  v42 = *(a2 + 152);
  if (*(a1 + 136))
  {
    if ((v41 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v41 & 1 | (*(a1 + 128) != *(a2 + 128)))
  {
    return 0;
  }

  if (*(a1 + 152))
  {
    if ((v42 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42 & 1 | (*(a1 + 144) != *(a2 + 144)))
  {
    return 0;
  }

  if (*(a1 + 168))
  {
    if ((*(a2 + 168) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_57;
  }

  v2 = 0;
  if ((*(a2 + 168) & 1) == 0 && *(a1 + 160) == *(a2 + 160))
  {
LABEL_57:
    v39 = *(a1 + 184);
    v40 = *(a2 + 184);
    if (v39 == 1)
    {
      if (v40 == 1)
      {
        return 1;
      }
    }

    else if (v40 != 1)
    {
      if (v39)
      {
        if (v40 && (*(a1 + 176) == *(a2 + 176) && v39 == v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v40)
      {
        return 1;
      }
    }

    return 0;
  }

  return v2;
}

uint64_t sub_10037292C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_10037297C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10036561C(a1, v4, v5, v6);
}

uint64_t sub_100372A44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100372AAC(uint64_t a1)
{
  v4 = *(type metadata accessor for LibraryImport.ViewModel(0) - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_10036CA78(a1, v6, v7, v8, (v1 + 5), v1 + v5);
}

unint64_t sub_100372BA8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109A858, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void sub_100372BF4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = *(a3 + 24);
  v40 = *(a3 + 16);
  v41 = v8;
  v11 = *(a3 + 32);
  v12 = *(a3 + 40);
  v13 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v13 - 8);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v40 - v17;
  if (!a2)
  {
    goto LABEL_28;
  }

  if (a1 == 0x7472617473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v19 = 1;
LABEL_6:

    goto LABEL_7;
  }

  if (a1 == 0x776569766572 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    if (*(a3 + 41))
    {
      v23 = 0;
      v25 = 0;
      v11 = 0;
      v34 = 1;
      v26 = 1;
      v12 = 1;
    }

    else
    {
      v34 = v9 & 1;
      v26 = v10 & 1;
      v25 = v40;
      v23 = v41;
    }

    v42 = v23;
    v43 = v34;
    v41 = v34;
    v44 = v25;
    v45 = v26;
    v46 = v11;
    LODWORD(v40) = v12 & 1;
    v47 = v12 & 1;
    v48 = 0;
    if (qword_10117F630 != -1)
    {
      swift_once();
    }

    v35 = qword_101218B28;
    sub_10036ECB4(v18);
    v36 = OBJC_IVAR____TtCO5Music3MLI8Observer_mliReviewURL;
    swift_beginAccess();
    sub_1000089F8(v35 + v36, v15, &qword_101183A20);
    swift_beginAccess();
    sub_1001EBCE4(v18, v35 + v36);
    swift_endAccess();
    sub_10036910C(v15);
    sub_1000095E8(v15, &qword_101183A20);
    sub_1000095E8(v18, &qword_101183A20);
    v33 = 0;
    v24 = v41;
    v32 = v40;
    goto LABEL_23;
  }

  if (a1 == 0x65736F6C63 && a2 == 0xE500000000000000)
  {
    v19 = 0;
    goto LABEL_6;
  }

  v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v19 = 0;
  if ((v39 & 1) == 0)
  {
LABEL_28:
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v11 = 0;
    v28 = 0;
    v27 = 1;
    goto LABEL_29;
  }

LABEL_7:
  if (qword_10117F630 != -1)
  {
    swift_once();
  }

  v20 = qword_101218B28;
  v21 = type metadata accessor for URL();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = OBJC_IVAR____TtCO5Music3MLI8Observer_mliReviewURL;
  swift_beginAccess();
  sub_1000089F8(v20 + v22, v15, &qword_101183A20);
  swift_beginAccess();
  sub_1001EBCE4(v18, v20 + v22);
  swift_endAccess();
  sub_10036910C(v15);
  sub_1000095E8(v15, &qword_101183A20);
  sub_1000095E8(v18, &qword_101183A20);
  if ((v19 & 1) == 0)
  {
    v29 = [objc_opt_self() standardUserDefaults];
    v30.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
    if (qword_10117F628 != -1)
    {
      swift_once();
    }

    v31 = String._bridgeToObjectiveC()();
    [v29 setValue:v30.super.super.isa forKey:v31];

    v24 = 0;
    v25 = 0;
    v26 = 0;
    v11 = 0;
    v32 = 0;
    v33 = 256;
    v23 = 1;
LABEL_23:
    v37 = [objc_opt_self() defaultCenter];
    v38 = static NSNotificationName.libraryImportCompleted.getter();
    [v37 postNotificationName:v38 object:0];

    v27 = 0;
    v28 = v33 | v32;
    goto LABEL_29;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v11 = 0;
  v27 = 0;
  v28 = 256;
LABEL_29:
  *a4 = v23;
  *(a4 + 8) = v24;
  *(a4 + 16) = v25;
  *(a4 + 24) = v26;
  *(a4 + 32) = v11;
  *(a4 + 40) = v28;
  *(a4 + 42) = v27;
}

uint64_t sub_100373174(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003731BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100373224(uint64_t a1)
{
  v4 = *(type metadata accessor for MusicDataRequest() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_10036A2E4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10037335C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10036B808(a1, v4, v5, v6);
}

unint64_t sub_100373410()
{
  result = qword_10118CAB0;
  if (!qword_10118CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CAB0);
  }

  return result;
}

uint64_t sub_100373494(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_10036B448(a1, v4, v5, v7, v6);
}

uint64_t sub_100373554()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1003735A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10036886C(a1, v4, v5, v6);
}

uint64_t sub_100373654(uint64_t a1)
{
  type metadata accessor for MusicDataRequest();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002F3F4;

  return sub_1003682B8(a1);
}

uint64_t sub_100373744(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_100373834(uint64_t a1)
{
  v4 = *(type metadata accessor for LibraryImportStatus() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1003672F0(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1003739A4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_1003739C8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_100373A0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 192))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_100373A68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_100373AFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_100373B58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100373BCC()
{
  result = qword_10118CAB8;
  if (!qword_10118CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CAB8);
  }

  return result;
}

unint64_t sub_100373C20(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109A8C0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100373C6C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10010FC20(&qword_10118CB80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_10000954C(a1, a1[3]);
  sub_100375348();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  v25 = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  v12 = v9;
  v24 = 1;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v22 = v14;
  v21 = v13;
  v23 = 2;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v8;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_10000959C(a1);
  *a2 = v12;
  *(a2 + 8) = v11 & 1;
  *(a2 + 16) = v21;
  *(a2 + 24) = v22 & 1;
  *(a2 + 32) = v15;
  *(a2 + 40) = v18 & 1;
  return result;
}

uint64_t sub_100373E74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736572676F7270 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100E480B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74536E6F69746361 && a2 == 0xEC000000676E6972 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x547373696D736964 && a2 == 0xEC000000656C7469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x537373696D736964 && a2 == 0xEF656C7469746275 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x526F54736D657469 && a2 == 0xED00007765697665 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1003741B8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v55 = sub_10010FC20(&qword_10118CAD8);
  v5 = *(v55 - 8);
  __chkstk_darwin(v55);
  v7 = &v30 - v6;
  sub_10000954C(a1, a1[3]);
  sub_100374B88();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  LOBYTE(v56) = 0;
  sub_100282AE0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v8 = v68;
  v99 = v69;
  LOBYTE(v68) = 1;
  v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v54 = v8;
  v98 = v9 & 1;
  LOBYTE(v68) = 2;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v52 = v11;
  LOBYTE(v68) = 3;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v51 = v13;
  v45 = v12;
  LOBYTE(v68) = 4;
  v50 = 0;
  v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v49 = v14;
  LOBYTE(v68) = 5;
  v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v48 = v15;
  LOBYTE(v68) = 6;
  v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v47 = v16;
  LOBYTE(v68) = 7;
  v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v46 = v17;
  LOBYTE(v56) = 8;
  sub_100374BDC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v35 = v10;
  v50 = v68;
  v39 = v70;
  v40 = v69;
  v37 = v72;
  v38 = v71;
  v36 = v73;
  v101 = BYTE1(v73);
  v100 = 9;
  sub_100374C30();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v5 + 8))(v7, v55);
  v34 = *(&v95 + 1);
  v55 = v95;
  *&v56 = v54;
  v33 = v99;
  BYTE8(v56) = v99;
  v18 = v52;
  *&v57 = v53;
  v32 = v98;
  BYTE8(v57) = v98;
  v19 = v35;
  *&v58 = v35;
  *(&v58 + 1) = v52;
  v20 = v51;
  *&v59 = v45;
  *(&v59 + 1) = v51;
  v22 = v48;
  v21 = v49;
  *&v60 = v44;
  *(&v60 + 1) = v49;
  *&v61 = v43;
  *(&v61 + 1) = v48;
  *&v62 = v42;
  *(&v62 + 1) = v47;
  *&v63 = v41;
  *(&v63 + 1) = v46;
  *&v64 = v50;
  *(&v64 + 1) = v40;
  *&v65 = v39;
  *(&v65 + 1) = v38;
  *&v66 = v37;
  BYTE8(v66) = v36;
  v31 = v101;
  BYTE9(v66) = v101;
  v67 = v95;
  sub_100374C84(&v56, &v68);
  sub_10000959C(a1);
  v68 = v54;
  LOBYTE(v69) = v33;
  v70 = v53;
  LOBYTE(v71) = v32;
  v72 = v19;
  v73 = v18;
  v74 = v45;
  v75 = v20;
  v76 = v44;
  v77 = v21;
  v78 = v43;
  v79 = v22;
  v80 = v42;
  v81 = v47;
  v82 = v41;
  v83 = v46;
  v84 = v50;
  v85 = v40;
  v86 = v39;
  v87 = v38;
  v88 = v37;
  v89 = v36;
  v90 = v31;
  v91 = v96;
  v92 = v97;
  v93 = v55;
  v94 = v34;
  result = sub_100373464(&v68);
  v24 = v65;
  a2[8] = v64;
  a2[9] = v24;
  v25 = v67;
  a2[10] = v66;
  a2[11] = v25;
  v26 = v61;
  a2[4] = v60;
  a2[5] = v26;
  v27 = v63;
  a2[6] = v62;
  a2[7] = v27;
  v28 = v57;
  *a2 = v56;
  a2[1] = v28;
  v29 = v59;
  a2[2] = v58;
  a2[3] = v29;
  return result;
}

uint64_t sub_1003748B4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v40 = a2;
  v4 = sub_10010FC20(&qword_10118CAC0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  sub_10000954C(a1, a1[3]);
  sub_100374AE0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  v8 = v40;
  sub_100374B34();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v5 + 8))(v7, v4);
  v24 = v36;
  v25 = v37;
  v26 = v38;
  v27 = v39;
  v20 = v32;
  v21 = v33;
  v22 = v34;
  v23 = v35;
  v16 = v28;
  v17 = v29;
  v18 = v30;
  v19 = v31;
  result = sub_10000959C(a1);
  v10 = v25;
  v8[8] = v24;
  v8[9] = v10;
  v11 = v27;
  v8[10] = v26;
  v8[11] = v11;
  v12 = v21;
  v8[4] = v20;
  v8[5] = v12;
  v13 = v23;
  v8[6] = v22;
  v8[7] = v13;
  v14 = v17;
  *v8 = v16;
  v8[1] = v14;
  v15 = v19;
  v8[2] = v18;
  v8[3] = v15;
  return result;
}

unint64_t sub_100374AE0()
{
  result = qword_10118CAC8;
  if (!qword_10118CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CAC8);
  }

  return result;
}

unint64_t sub_100374B34()
{
  result = qword_10118CAD0;
  if (!qword_10118CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CAD0);
  }

  return result;
}

unint64_t sub_100374B88()
{
  result = qword_10118CAE0;
  if (!qword_10118CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CAE0);
  }

  return result;
}

unint64_t sub_100374BDC()
{
  result = qword_10118CAE8;
  if (!qword_10118CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CAE8);
  }

  return result;
}

unint64_t sub_100374C30()
{
  result = qword_10118CAF0;
  if (!qword_10118CAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CAF0);
  }

  return result;
}

unint64_t sub_100374CBC()
{
  result = qword_10118CB00;
  if (!qword_10118CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CB00);
  }

  return result;
}

unint64_t sub_100374D10()
{
  result = qword_10118CB08;
  if (!qword_10118CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CB08);
  }

  return result;
}

unint64_t sub_100374D9C()
{
  result = qword_10118CB18;
  if (!qword_10118CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CB18);
  }

  return result;
}

unint64_t sub_100374DF0()
{
  result = qword_10118CB28;
  if (!qword_10118CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CB28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LyricsOptionsManager.Option(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LyricsOptionsManager.Option(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100374FB4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100374FC8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100374FE8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

unint64_t sub_100375034()
{
  result = qword_10118CB38;
  if (!qword_10118CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CB38);
  }

  return result;
}

unint64_t sub_10037508C()
{
  result = qword_10118CB40;
  if (!qword_10118CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CB40);
  }

  return result;
}

unint64_t sub_1003750E4()
{
  result = qword_10118CB48;
  if (!qword_10118CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CB48);
  }

  return result;
}

unint64_t sub_10037513C()
{
  result = qword_10118CB50;
  if (!qword_10118CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CB50);
  }

  return result;
}

unint64_t sub_100375194()
{
  result = qword_10118CB58;
  if (!qword_10118CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CB58);
  }

  return result;
}

unint64_t sub_1003751EC()
{
  result = qword_10118CB60;
  if (!qword_10118CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CB60);
  }

  return result;
}

unint64_t sub_100375244()
{
  result = qword_10118CB68;
  if (!qword_10118CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CB68);
  }

  return result;
}

unint64_t sub_10037529C()
{
  result = qword_10118CB70;
  if (!qword_10118CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CB70);
  }

  return result;
}

unint64_t sub_1003752F4()
{
  result = qword_10118CB78;
  if (!qword_10118CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CB78);
  }

  return result;
}

unint64_t sub_100375348()
{
  result = qword_10118CB88;
  if (!qword_10118CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CB88);
  }

  return result;
}

unint64_t sub_1003753B0()
{
  result = qword_10118CB98;
  if (!qword_10118CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CB98);
  }

  return result;
}

unint64_t sub_100375408()
{
  result = qword_10118CBA0;
  if (!qword_10118CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CBA0);
  }

  return result;
}

unint64_t sub_100375460()
{
  result = qword_10118CBA8;
  if (!qword_10118CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CBA8);
  }

  return result;
}

uint64_t sub_1003754F0(unsigned __int16 a1)
{
  v1 = a1;
  if ((a1 & 0xFF00) == 0x200)
  {
    return v1;
  }

  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  v2 = static MusicLibrary.== infix(_:_:)();

  v4 = &off_101098A68;
  if (v2)
  {
    v5 = &off_101098A40;
  }

  else
  {
    v5 = &off_101098A68;
  }

  v6 = v5[2];
  if (!v6)
  {
LABEL_71:

    return 512;
  }

  v7 = 0;
  if (v2)
  {
    v4 = &off_101098A40;
  }

  v8 = v4 + 4;
  while (v7 < v5[2])
  {
    v9 = *(v8 + v7);
    if (v9 > 3)
    {
      if (*(v8 + v7) > 5u)
      {
        if (v9 == 6)
        {
          v14 = 0xD000000000000010;
          v15 = 0x8000000100E3C6C0;
          if (v1 > 3u)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v14 = 0x7473696C79616C70;
          v15 = 0xEC00000065707954;
          if (v1 > 3u)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
        if (v9 == 4)
        {
          v14 = 0x656C746974;
        }

        else
        {
          v14 = 0x79616C507473616CLL;
        }

        if (v9 == 4)
        {
          v15 = 0xE500000000000000;
        }

        else
        {
          v15 = 0xEE00657461446465;
        }

        if (v1 > 3u)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      v10 = 0x44657361656C6572;
      if (v9 != 2)
      {
        v10 = 1918985593;
      }

      v11 = 0xEB00000000657461;
      if (v9 != 2)
      {
        v11 = 0xE400000000000000;
      }

      v12 = 0xD000000000000010;
      if (!*(v8 + v7))
      {
        v12 = 0x614E747369747261;
      }

      v13 = 0xEA0000000000656DLL;
      if (*(v8 + v7))
      {
        v13 = 0x8000000100E3C680;
      }

      if (*(v8 + v7) <= 1u)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      if (*(v8 + v7) <= 1u)
      {
        v15 = v13;
      }

      else
      {
        v15 = v11;
      }

      if (v1 > 3u)
      {
LABEL_38:
        v16 = 0xD000000000000010;
        if (v1 != 6)
        {
          v16 = 0x7473696C79616C70;
        }

        v17 = 0xEC00000065707954;
        if (v1 == 6)
        {
          v17 = 0x8000000100E3C6C0;
        }

        v18 = 0x79616C507473616CLL;
        if (v1 == 4)
        {
          v18 = 0x656C746974;
        }

        v19 = 0xEE00657461446465;
        if (v1 == 4)
        {
          v19 = 0xE500000000000000;
        }

        if (v1 <= 5u)
        {
          v20 = v18;
        }

        else
        {
          v20 = v16;
        }

        if (v1 <= 5u)
        {
          v21 = v19;
        }

        else
        {
          v21 = v17;
        }

        if (v14 != v20)
        {
          goto LABEL_60;
        }

        goto LABEL_59;
      }
    }

    if (v1 > 1u)
    {
      if (v1 == 2)
      {
        v24 = 0x44657361656C6572;
      }

      else
      {
        v24 = 1918985593;
      }

      if (v1 == 2)
      {
        v21 = 0xEB00000000657461;
      }

      else
      {
        v21 = 0xE400000000000000;
      }

      if (v14 != v24)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v22 = 0x614E747369747261;
      v21 = 0xEA0000000000656DLL;
      if (v1)
      {
        v22 = 0xD000000000000010;
        v21 = 0x8000000100E3C680;
      }

      if (v14 != v22)
      {
        goto LABEL_60;
      }
    }

LABEL_59:
    if (v15 == v21)
    {

LABEL_73:

      return v1 & 0x1FF;
    }

LABEL_60:
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      goto LABEL_73;
    }

    if (v6 == ++v7)
    {
      goto LABEL_71;
    }
  }

  __break(1u);
  return result;
}