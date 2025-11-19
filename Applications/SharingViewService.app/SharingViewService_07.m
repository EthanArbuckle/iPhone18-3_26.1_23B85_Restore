uint64_t sub_1000A58E0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000A5B48();
  }

  return result;
}

uint64_t sub_1000A5938()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_1000A60FC(&qword_1001BA7C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005DCC(&unk_1001BBA90);
  sub_1000A6144(&qword_1001BA7D0, &unk_1001BBA90);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

void sub_1000A5A10()
{
  if (*(v0 + 88))
  {
    v1 = v0;
    v2 = qword_1001B9440;
    swift_unknownObjectRetain();
    if (v2 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000D298(v3, qword_1001BD3E0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Invaliding touch delay timer", v6, 2u);
    }

    swift_getObjectType();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
    *(v1 + 88) = 0;

    swift_unknownObjectRelease();
  }
}

void sub_1000A5B48()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000122EC(0, &qword_1001BCE90);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_1001B9440 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  sub_10000D298(v7, qword_1001BD3E0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Touch delay timer fired", v10, 2u);
  }

  *(v1 + 96) = 1;
  sub_1000A5A10();
}

void sub_1000A5D30()
{
  if ((*(v0 + 96) & 1) != 0 || (v1 = *(v0 + 56) + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_model, swift_beginAccess(), *(v1 + *(type metadata accessor for PasswordSharingModel() + 40)) == 1))
  {
    sub_10000E8F8();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_1000A5F68(Strong);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = sub_100070288();
      if (v3)
      {
        v4 = v3;
        v5 = String._bridgeToObjectiveC()();
        [v4 setIdleTimerDisabled:1 forReason:v5];

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1001B9440 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000D298(v6, qword_1001BD3E0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Touch delay timer has not fired yet, cannot share password", v9, 2u);
    }
  }
}

uint64_t sub_1000A5EEC()
{
  sub_100012604(v0 + 16);
  sub_100012604(v0 + 32);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1000A5F68(void *a1)
{
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
    _os_log_impl(&_mh_execute_header, v3, v4, "Show activity indicator", v5, 2u);
  }

  v6 = String._bridgeToObjectiveC()();

  [a1 showActivityIndicatorWithStatus:v6];
}

uint64_t sub_1000A60A4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A60E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A60FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000A6144(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000072B0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000A6198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 48) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a3 + 56) = a1;
  *(a3 + 64) = &off_10018FE20;
  *(a3 + 72) = a2;
  *(a3 + 80) = &off_100191FB0;
  *(a1 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_delegate + 8) = &off_100193240;
  swift_unknownObjectWeakAssign();
  *(*(a3 + 72) + OBJC_IVAR____TtC18SharingViewService21PasswordSharingRouter_delegate + 8) = &off_100193260;
  swift_unknownObjectWeakAssign();
  return a3;
}

uint64_t sub_1000A625C(void *a1, unint64_t a2)
{
  v4 = type metadata accessor for PasswordSharingModel();
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = sub_100004BE0(_swiftEmptyArrayStorage);
  }

  sub_1000099C4(v7, v6);
  type metadata accessor for PasswordSharingInteractor();
  swift_allocObject();
  v8 = sub_10000DFE8(v6);
  v9 = type metadata accessor for PasswordSharingRouter();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC18SharingViewService21PasswordSharingRouter_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v10[OBJC_IVAR____TtC18SharingViewService21PasswordSharingRouter_prxContainerViewController] = a1;
  v15.receiver = v10;
  v15.super_class = v9;
  v11 = a1;
  v12 = objc_msgSendSuper2(&v15, "init");
  type metadata accessor for PasswordSharingPresenter();
  v13 = swift_allocObject();
  return sub_1000A6198(v8, v12, v13);
}

UILabel __swiftcall setupTitleLabel(inContainerView:textAlignment:)(SVSCardContainerView *inContainerView, NSTextAlignment textAlignment)
{
  v4 = [objc_allocWithZone(UILabel) init];
  v5 = [objc_opt_self() blackColor];
  [v4 setTextColor:v5];

  v6 = objc_opt_self();
  v7 = [v6 systemFontOfSize:30.0];
  v8 = [v7 fontDescriptor];
  v9 = [v8 fontDescriptorWithSymbolicTraits:2];

  sub_100005DCC(&qword_1001BBBA0);
  Optional.unwrap(_:file:line:)();

  [v7 pointSize];
  v10 = [v6 fontWithDescriptor:v33 size:?];

  [v4 setFont:v10];
  [v4 setNumberOfLines:1];
  [v4 setMinimumScaleFactor:0.5];
  [v4 setLineBreakMode:4];
  v11 = v4;
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 setTextAlignment:textAlignment];
  [v11 setAdjustsFontSizeToFitWidth:1];
  [v11 setAccessibilityTraits:UIAccessibilityTraitHeader];
  [(SVSCardContainerView *)inContainerView addSubview:v11];
  if (textAlignment != NSTextAlignmentCenter)
  {
    if (qword_1001B9448 != -1)
    {
      goto LABEL_21;
    }

    goto LABEL_4;
  }

  for (i = 36.0; ; i = *(&xmmword_1001BD608 + 1))
  {
    sub_100005DCC(&qword_1001BBB00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10016D310;
    v14 = [v11 leadingAnchor];
    v15 = [(SVSCardContainerView *)inContainerView leadingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:i];

    *(inited + 32) = v16;
    v17 = [(SVSCardContainerView *)inContainerView trailingAnchor];
    v18 = [v11 trailingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18 constant:36.0];

    *(inited + 40) = v19;
    v20 = [v11 firstBaselineAnchor];

    inContainerView = [(SVSCardContainerView *)inContainerView topAnchor];
    if (qword_1001B9448 != -1)
    {
      swift_once();
    }

    v21 = [v20 constraintEqualToAnchor:inContainerView constant:*&qword_1001BD618];

    *(inited + 48) = v21;
    v22 = inited & 0xC000000000000001;
    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(inited + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_21:
    swift_once();
LABEL_4:
    ;
  }

  v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:
  v25 = v23;
  LODWORD(v24) = 1148846080;
  [v23 setPriority:v24];
  [v25 setActive:1];

  if (v22)
  {
    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_23;
    }

    v27 = *(inited + 40);
  }

  v29 = v27;
  LODWORD(v28) = 1148846080;
  [v27 setPriority:v28];
  [v29 setActive:1];

  if (v22)
  {
    v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_18:
    v31 = v30;

    LODWORD(v32) = 1148846080;
    [v31 setPriority:v32];
    [v31 setActive:1];

    return v11;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
  {
    v30 = *(inited + 48);
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
  return result;
}

UIButton __swiftcall setupXButton(inContainerView:)(SVSCardContainerView *inContainerView)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() imageNamed:v2];

  if (!v3)
  {
    goto LABEL_26;
  }

  v5 = [objc_opt_self() buttonWithType:0];
  [v5 setImage:v3 forState:0];
  v6 = v5;
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (SFDeviceModelCodeGet() == 1)
  {
    v7 = 31.0;
  }

  else
  {
    v7 = 24.0;
  }

  [(SVSCardContainerView *)inContainerView addSubview:v6];
  sub_100005DCC(&qword_1001BBB00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10016D4A0;
  v9 = [v6 heightAnchor];
  v10 = [v9 constraintEqualToConstant:40.0];

  *(inited + 32) = v10;
  v11 = [v6 widthAnchor];
  v12 = [v11 constraintEqualToConstant:40.0];

  *(inited + 40) = v12;
  v13 = [(SVSCardContainerView *)inContainerView trailingAnchor];
  v14 = [v6 centerXAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:v7];

  *(inited + 48) = v15;
  v16 = [v6 centerYAnchor];

  v17 = [(SVSCardContainerView *)inContainerView topAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:v7];

  *(inited + 56) = v18;
  v19 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_23;
    }

    v20 = *(inited + 32);
  }

  v22 = v20;
  LODWORD(v21) = 1148846080;
  [v20 setPriority:v21];
  [v22 setActive:1];

  if (!v19)
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v23 = *(inited + 40);
      goto LABEL_12;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_12:
  v25 = v23;
  LODWORD(v24) = 1148846080;
  [v23 setPriority:v24];
  [v25 setActive:1];

  if (v19)
  {
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
    v28 = v26;
    LODWORD(v27) = 1148846080;
    [v26 setPriority:v27];
    [v28 setActive:1];

    if (v19)
    {
      v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_20:
      v30 = v29;

      LODWORD(v31) = 1148846080;
      [v30 setPriority:v31];
      [v30 setActive:1];

      return v6;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v29 = *(inited + 56);
      goto LABEL_20;
    }

    goto LABEL_25;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
  {
    v26 = *(inited + 48);
    goto LABEL_16;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

Swift::Void __swiftcall setupBottomLabel(inContainerView:forLabel:)(SVSCardContainerView *inContainerView, UILabel forLabel)
{
  [(objc_class *)forLabel.super.super.super.isa setNumberOfLines:3];
  v4 = [objc_opt_self() secondaryLabelColor];
  [(objc_class *)forLabel.super.super.super.isa setTextColor:v4];

  [(objc_class *)forLabel.super.super.super.isa setTextAlignment:1];
  v5 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCallout];
  [(objc_class *)forLabel.super.super.super.isa setFont:v5];

  [(objc_class *)forLabel.super.super.super.isa setMinimumScaleFactor:0.3];
  [(objc_class *)forLabel.super.super.super.isa setAdjustsFontSizeToFitWidth:1];
  [(objc_class *)forLabel.super.super.super.isa setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SVSCardContainerView *)inContainerView addSubview:forLabel.super.super.super.isa];
  sub_100005DCC(&qword_1001BBB00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10016CED0;
  v7 = [(objc_class *)forLabel.super.super.super.isa centerXAnchor];
  v8 = [(SVSCardContainerView *)inContainerView centerXAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(inited + 32) = v9;
  v10 = [(objc_class *)forLabel.super.super.super.isa widthAnchor];
  v11 = [(SVSCardContainerView *)inContainerView widthAnchor];
  if (qword_1001B9448 != -1)
  {
    swift_once();
  }

  v12 = *(&xmmword_1001BD608 + 1);
  v13 = [v10 constraintEqualToAnchor:v11 constant:*(&xmmword_1001BD608 + 1) * -2.0];

  *(inited + 40) = v13;
  v14 = [(objc_class *)forLabel.super.super.super.isa leadingAnchor];
  v15 = [(SVSCardContainerView *)inContainerView leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:v12];

  *(inited + 48) = v16;
  v17 = [(objc_class *)forLabel.super.super.super.isa trailingAnchor];
  v18 = [(SVSCardContainerView *)inContainerView trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:v12];

  *(inited + 56) = v19;
  v20 = [(objc_class *)forLabel.super.super.super.isa bottomAnchor];
  v21 = [(SVSCardContainerView *)inContainerView bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:-30.0];

  *(inited + 64) = v22;
  v23 = [(objc_class *)forLabel.super.super.super.isa heightAnchor];
  v24 = [v23 constraintLessThanOrEqualToConstant:55.0];

  *(inited + 72) = v24;
  v25 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 6uLL)
    {
      __break(1u);
      return;
    }

    v26 = *(inited + 32);
  }

  v28 = v26;
  LODWORD(v27) = 1148846080;
  [v26 setPriority:v27];
  [v28 setActive:1];

  if (v25)
  {
    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v29 = *(inited + 40);
  }

  v31 = v29;
  LODWORD(v30) = 1148846080;
  [v29 setPriority:v30];
  [v31 setActive:1];

  if (v25)
  {
    v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v32 = *(inited + 48);
  }

  v34 = v32;
  LODWORD(v33) = 1148846080;
  [v32 setPriority:v33];
  [v34 setActive:1];

  if (v25)
  {
    v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v35 = *(inited + 56);
  }

  v37 = v35;
  LODWORD(v36) = 1148846080;
  [v35 setPriority:v36];
  [v37 setActive:1];

  if (v25)
  {
    v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v38 = *(inited + 64);
  }

  v40 = v38;
  LODWORD(v39) = 1148846080;
  [v38 setPriority:v39];
  [v40 setActive:1];

  if (v25)
  {
    v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v41 = *(inited + 72);
  }

  v43 = v41;
  LODWORD(v42) = 1148846080;
  [v41 setPriority:v42];
  [v43 setActive:1];

  swift_setDeallocating();
  swift_arrayDestroy();
}

id sub_1000A72CC(void *a1, id a2, double a3)
{
  [a2 addSubview:a1];
  v6 = [a1 widthAnchor];
  v7 = [v6 constraintEqualToConstant:a3];

  [v7 setActive:1];
  v8 = [a1 heightAnchor];
  v9 = [v8 constraintEqualToConstant:a3];

  [v9 setActive:1];
  v10 = [a1 centerXAnchor];
  v11 = [a2 centerXAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  [v12 setActive:1];
  v13 = [a1 centerYAnchor];
  v14 = [a2 centerYAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:-9.0];

  [v15 setActive:1];
  return v15;
}

SVSHighlightButton __swiftcall setupNormalButton(inContainerView:)(SVSCardContainerView *inContainerView)
{
  sub_1000A81E4(inContainerView);
  v3.super.super.super.super.super.isa = v2;
  v4 = [(objc_class *)v2 bottomAnchor];
  v5 = [(SVSCardContainerView *)inContainerView bottomAnchor];
  if (qword_1001B9448 != -1)
  {
    swift_once();
  }

  v6 = [v4 constraintEqualToAnchor:v5 constant:-*(&xmmword_1001BD608 + 1)];

  LODWORD(v7) = 1148846080;
  [v6 setPriority:v7];
  [v6 setActive:1];

  return v3;
}

UIButton __swiftcall setupOptionButton(inContainerView:)(SVSCardContainerView *inContainerView)
{
  v2 = [objc_opt_self() buttonWithType:1];
  v3 = [v2 titleLabel];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() systemFontOfSize:17.0 weight:UIFontWeightSemibold];
    [v4 setFont:v5];
  }

  v6 = v2;
  [(SVSCardContainerView *)inContainerView addSubview:v6];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_100005DCC(&qword_1001BBB00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10016D4A0;
  v8 = [v6 centerXAnchor];
  v9 = [(SVSCardContainerView *)inContainerView centerXAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(inited + 32) = v10;
  v11 = [v6 widthAnchor];

  v12 = [(SVSCardContainerView *)inContainerView widthAnchor];
  if (qword_1001B9448 != -1)
  {
    swift_once();
  }

  v13 = [v11 constraintEqualToAnchor:v12 constant:*(&xmmword_1001BD608 + 1) * -2.0];

  *(inited + 40) = v13;
  v14 = [v6 lastBaselineAnchor];

  v15 = [(SVSCardContainerView *)inContainerView bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:-*&xmmword_1001BD608];

  *(inited + 48) = v16;
  v17 = [v6 heightAnchor];

  v18 = [v17 constraintEqualToConstant:33.0];
  *(inited + 56) = v18;
  v20 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_23;
    }

    v21 = *(inited + 32);
  }

  v23 = v21;
  LODWORD(v22) = 1148846080;
  [v21 setPriority:v22];
  [v23 setActive:1];

  if (v20)
  {
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v24 = *(inited + 40);
LABEL_12:
  v26 = v24;
  LODWORD(v25) = 1148846080;
  [v24 setPriority:v25];
  [v26 setActive:1];

  if (!v20)
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v27 = *(inited + 48);
      goto LABEL_16;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
  v29 = v27;
  LODWORD(v28) = 1148846080;
  [v27 setPriority:v28];
  [v29 setActive:1];

  if (v20)
  {
    v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_20:
    v31 = v30;

    LODWORD(v32) = 1148846080;
    [v31 setPriority:v32];
    [v31 setActive:1];

    return v6;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
  {
    v30 = *(inited + 56);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

Swift::tuple_SVSHighlightButton_UIButton __swiftcall setupNormalButtonAndOptionButton(inContainerView:)(SVSCardContainerView *inContainerView)
{
  sub_1000A81E4(inContainerView);
  v3 = v2;
  v4 = [objc_opt_self() buttonWithType:1];
  v5 = [v4 titleLabel];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() systemFontOfSize:17.0 weight:UIFontWeightMedium];
    [v6 setFont:v7];
  }

  v8 = v4;
  [(SVSCardContainerView *)inContainerView addSubview:v8];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_100005DCC(&qword_1001BBB00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10016FBD0;
  v10 = [v8 centerXAnchor];
  v11 = [(SVSCardContainerView *)inContainerView centerXAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(inited + 32) = v12;
  v13 = [v8 widthAnchor];

  v14 = v3;
  v15 = [v14 widthAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];

  *(inited + 40) = v16;
  v17 = [v8 lastBaselineAnchor];

  v18 = [(SVSCardContainerView *)inContainerView bottomAnchor];
  if (qword_1001B9448 != -1)
  {
    swift_once();
  }

  v19 = [v17 constraintEqualToAnchor:v18 constant:-*&xmmword_1001BD608];

  *(inited + 48) = v19;
  v20 = [v8 firstBaselineAnchor];

  v21 = [v14 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:31.0];

  *(inited + 56) = v22;
  v23 = [v8 heightAnchor];

  v24 = [v23 constraintEqualToConstant:33.0];
  *(inited + 64) = v24;
  v27 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_27;
    }

    v28 = *(inited + 32);
  }

  v30 = v28;
  LODWORD(v29) = 1148846080;
  [v28 setPriority:v29];
  [v30 setActive:1];

  if (v27)
  {
    v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v31 = *(inited + 40);
LABEL_12:
  v33 = v31;
  LODWORD(v32) = 1148846080;
  [v31 setPriority:v32];
  [v33 setActive:1];

  if (v27)
  {
    v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_16;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v34 = *(inited + 48);
LABEL_16:
  v36 = v34;
  LODWORD(v35) = 1148846080;
  [v34 setPriority:v35];
  [v36 setActive:1];

  if (v27)
  {
    v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_20;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v37 = *(inited + 56);
LABEL_20:
  v39 = v37;
  LODWORD(v38) = 1148846080;
  [v37 setPriority:v38];
  [v39 setActive:1];

  if (!v27)
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 5uLL)
    {
      v40 = *(inited + 64);
      goto LABEL_24;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_24:
  v41 = v40;

  LODWORD(v42) = 1148846080;
  [v41 setPriority:v42];
  [v41 setActive:1];

  v25 = v14;
  v26 = v8;
LABEL_31:
  result._1.super.super.super.super.isa = v26;
  result._0.super.super.super.super.super.isa = v25;
  return result;
}

UIPickerView __swiftcall setupHeightlessPicker(inContainerView:)(SVSCardContainerView *inContainerView)
{
  v2 = [objc_allocWithZone(UIPickerView) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SVSCardContainerView *)inContainerView addSubview:v2];
  v3 = [v2 widthAnchor];
  v4 = [(SVSCardContainerView *)inContainerView widthAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];

  [v5 setActive:1];
  v6 = [v2 centerXAnchor];
  v7 = [(SVSCardContainerView *)inContainerView centerXAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  [v8 setActive:1];
  v9 = [v2 centerYAnchor];

  v10 = [(SVSCardContainerView *)inContainerView centerYAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:-9.0];

  [v11 setActive:1];
  return v2;
}

uint64_t sub_1000A8124()
{
  result = sub_100128010();
  v1 = 56.0;
  if (result == 1)
  {
    v1 = 40.0;
  }

  v2 = vdup_n_s32(result == 1);
  v3.i64[0] = v2.u32[0];
  v3.i64[1] = v2.u32[1];
  xmmword_1001BD608 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v3, 0x3FuLL)), xmmword_10016FBF0, xmmword_10016FBE0);
  qword_1001BD618 = *&v1;
  return result;
}

double sub_1000A818C()
{
  if (qword_1001B9448 != -1)
  {
    swift_once();
  }

  result = *(&xmmword_1001BD608 + 1);
  qword_1001C3B98 = *(&xmmword_1001BD608 + 1);
  return result;
}

void sub_1000A81E4(void *a1)
{
  v2 = [objc_opt_self() buttonWithType:0];
  [v2 _setContinuousCornerRadius:12.0];
  v3 = objc_opt_self();
  v4 = [v3 tertiarySystemFillColor];
  [v2 setBackgroundColor:v4];

  v5 = [v2 titleLabel];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() systemFontOfSize:17.0 weight:UIFontWeightMedium];
    [v6 setFont:v7];
  }

  v8 = [v3 blackColor];
  [v2 setTitleColor:v8 forState:0];

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_100005DCC(&qword_1001BBB00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10016D310;
  v10 = [v2 heightAnchor];
  v11 = [v10 constraintEqualToConstant:50.0];

  *(inited + 32) = v11;
  v12 = [v2 centerXAnchor];
  v13 = [a1 centerXAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(inited + 40) = v14;
  v15 = [v2 widthAnchor];

  v16 = [a1 widthAnchor];
  if (qword_1001B9448 != -1)
  {
    swift_once();
  }

  v17 = [v15 constraintEqualToAnchor:v16 constant:*(&xmmword_1001BD608 + 1) * -2.0];

  *(inited + 48) = v17;
  [a1 addSubview:v2];
  v18 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_19;
    }

    v19 = *(inited + 32);
  }

  v21 = v19;
  LODWORD(v20) = 1148846080;
  [v19 setPriority:v20];
  [v21 setActive:1];

  if (!v18)
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v22 = *(inited + 40);
      goto LABEL_12;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_12:
  v24 = v22;
  LODWORD(v23) = 1148846080;
  [v22 setPriority:v23];
  [v24 setActive:1];

  if (v18)
  {
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
    v26 = v25;

    LODWORD(v27) = 1148846080;
    [v26 setPriority:v27];
    [v26 setActive:1];

    return;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
  {
    v25 = *(inited + 48);
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

UILabel __swiftcall setUpSubtitleLabel(in:)(SVSCardContainerView *in)
{
  v2 = [objc_allocWithZone(UILabel) init];
  v3 = [objc_opt_self() blackColor];
  [v2 setTextColor:v3];

  v4 = [objc_opt_self() systemFontOfSize:15.0];
  [v2 setFont:v4];

  [v2 setNumberOfLines:3];
  v5 = v2;
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setTextAlignment:1];
  [(SVSCardContainerView *)in addSubview:v5];
  v6 = objc_opt_self();
  sub_100005DCC(&qword_1001BBB00);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10016D400;
  v8 = [v5 leadingAnchor];
  v9 = [(SVSCardContainerView *)in leadingAnchor];
  if (qword_1001B9448 != -1)
  {
    swift_once();
  }

  v10 = *(&xmmword_1001BD608 + 1);
  v11 = [v8 constraintEqualToAnchor:v9 constant:*(&xmmword_1001BD608 + 1)];

  *(v7 + 32) = v11;
  v12 = [v5 trailingAnchor];

  v13 = [(SVSCardContainerView *)in trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:-v10];

  *(v7 + 40) = v14;
  sub_10000D1F4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 activateConstraints:isa];

  return v5;
}

id sub_1000A88C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:a1];
  v6 = OBJC_IVAR____TtC18SharingViewService11TextSpinner_spinner;
  *&v3[OBJC_IVAR____TtC18SharingViewService11TextSpinner_spinner] = v5;
  if (a3)
  {
    v7 = [objc_allocWithZone(UILabel) init];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [objc_opt_self() secondaryLabelColor];
    [v7 setTextColor:v8];

    v9 = String._bridgeToObjectiveC()();

    [v7 setText:v9];

    sub_100005DCC(&qword_1001BBB00);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10016D400;
    v11 = *&v3[v6];
    *(v10 + 32) = v11;
    *(v10 + 40) = v7;
    v12 = v11;
  }

  else
  {
    v13 = v5;
    sub_100005DCC(&qword_1001BBB00);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10016D240;
    *(v10 + 32) = v13;
    v14 = v13;
  }

  v23.receiver = v3;
  v23.super_class = type metadata accessor for TextSpinner();
  v15 = objc_msgSendSuper2(&v23, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v16 = v15;
  v17 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v17)
  {
    v18 = v15;
    for (i = 0; i != v17; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(v10 + 8 * i + 32);
      }

      v21 = v20;
      [v18 addArrangedSubview:v20];
    }
  }

  return v16;
}

id sub_1000A8B84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextSpinner();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000A8BEC()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BD650);
  v1 = sub_10000D298(v0, qword_1001BD650);
  if (qword_1001B92A0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C3888);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000A8CB4()
{
  v1 = v0;
  v2 = type metadata accessor for SFInterventionWorkflow.SprinboardSettings();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SFInterventionResponse();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v1[OBJC_IVAR___SVSInterventionViewController_interventionReplyAction];
  if (v10)
  {
    v11 = v10;
    if ([v11 canSendResponse])
    {
      v12 = [objc_allocWithZone(BSMutableSettings) init];
      (*(v7 + 104))(v9, enum case for SFInterventionResponse.accept(_:), v6);
      v13 = static SFInterventionResponse.== infix(_:_:)();
      (*(v7 + 8))(v9, v6);
      (*(v3 + 104))(v5, enum case for SFInterventionWorkflow.SprinboardSettings.interventionShouldContinue(_:), v2);
      v14 = SFInterventionWorkflow.SprinboardSettings.rawValue.getter();
      (*(v3 + 8))(v5, v2);
      [v12 setFlag:v13 & 1 forSetting:v14];
      v15 = [objc_opt_self() responseWithInfo:v12];
      [v11 sendResponse:v15];
    }

    else
    {
      if (qword_1001B9458 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_10000D298(v20, qword_1001BD650);
      v15 = Logger.logObject.getter();
      v21 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v15, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v15, v21, "Cannot send response for action in SVSInterventionViewController", v22, 2u);
      }
    }
  }

  else
  {
    if (qword_1001B9458 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000D298(v16, qword_1001BD650);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Missing action when performing SVSInterventionViewController dismiss", v19, 2u);
    }
  }

  v23 = OBJC_IVAR___SVSInterventionViewController_interventionViewController;
  v24 = *&v1[OBJC_IVAR___SVSInterventionViewController_interventionViewController];
  if (v24)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v1;
    aBlock[4] = sub_100070128;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001C544;
    aBlock[3] = &unk_100193330;
    v26 = _Block_copy(aBlock);
    v27 = v24;
    v28 = v1;

    [v27 dismissViewControllerAnimated:1 completion:v26];
    _Block_release(v26);
  }

  else
  {
    [v1 dismissViewControllerAnimated:1 completion:0];
  }

  v29 = *&v1[v23];
  *&v1[v23] = 0;
}

void sub_1000A9190(__objc2_prot *a1, void (*a2)(void), uint64_t a3)
{
  v82 = type metadata accessor for SFInterventionWorkflow.SprinboardSettings();
  v7 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005DCC(&unk_1001BD6F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v71 - v10;
  v12 = type metadata accessor for SFInterventionWorkflow();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    __break(1u);
    goto LABEL_51;
  }

  v16 = [(__objc2_prot *)a1 userInfo];
  v77 = a3;
  if (!v16)
  {
    goto LABEL_11;
  }

  v84 = v13;
  v17 = v3;
  v18 = v7;
  v19 = v16;
  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v85 = static SFInterventionWorkflow.SprinboardSettings.userInfoKey.getter();
  v86 = v21;
  AnyHashable.init<A>(_:)();
  if (*(v20 + 16) && (v22 = sub_100032C7C(v88), (v23 & 1) != 0))
  {
    sub_10000BFEC(*(v20 + 56) + 32 * v22, v87);
    sub_10000BF98(v88);

    if (swift_dynamicCast())
    {
      SFInterventionWorkflow.init(rawValue:)();
      v24 = v84;
      v83 = v84[6];
      v3 = v17;
      if ((v83)(v11, 1, v12) == 1)
      {
        v25 = v24;
        (v24[13])(v15, enum case for SFInterventionWorkflow.receive(_:), v12);
        v7 = v18;
        if ((v83)(v11, 1, v12) != 1)
        {
          sub_10001259C(v11, &unk_1001BD6F0);
        }
      }

      else
      {
        v25 = v24;
        (v24[4])(v15, v11, v12);
        v7 = v18;
      }

      v70 = OBJC_IVAR___SVSInterventionViewController_workflow;
      swift_beginAccess();
      (v25[5])(v3 + v70, v15, v12);
      swift_endAccess();
      goto LABEL_11;
    }
  }

  else
  {

    sub_10000BF98(v88);
  }

  v7 = v18;
  v3 = v17;
LABEL_11:
  v26 = &off_1001AD000;
  v27 = [(__objc2_prot *)a1 actions];
  if (!v27)
  {
LABEL_37:
    if (qword_1001B9458 != -1)
    {
      goto LABEL_49;
    }

    goto LABEL_38;
  }

  v28 = v27;
  v72 = a1;
  v75 = a2;
  v29 = sub_100092528();
  sub_1000701D8();
  v30 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v71 = v3;
  v74 = v30;
  v76 = v29;
  if ((v30 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v30 = v88[0];
    v31 = v88[1];
    v32 = v88[2];
    a1 = v88[3];
    v26 = v88[4];
  }

  else
  {
    v33 = -1 << *(v30 + 32);
    v31 = v30 + 56;
    v32 = ~v33;
    v34 = -v33;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v26 = (v35 & *(v30 + 56));

    a1 = 0;
  }

  v73 = v32;
  v36 = (v32 + 64) >> 6;
  v80 = enum case for SFInterventionWorkflow.SprinboardSettings.interventionReply(_:);
  v78 = (v7 + 8);
  v79 = (v7 + 104);
  while (v30 < 0)
  {
    v41 = __CocoaSet.Iterator.next()();
    if (!v41 || (v85 = v41, swift_dynamicCast(), v40 = v87[0], v39 = a1, a2 = v26, !v87[0]))
    {
LABEL_36:
      sub_100024148();

      a2 = v75;
      a1 = v72;
      v26 = &off_1001AD000;
      goto LABEL_37;
    }

LABEL_29:
    v83 = a1;
    v84 = v26;
    v42 = [v40 info];
    if (v42)
    {
      v43 = v42;
      v44 = v81;
      v45 = v30;
      v46 = v82;
      (*v79)(v81, v80, v82);
      v47 = SFInterventionWorkflow.SprinboardSettings.rawValue.getter();
      v48 = v46;
      v30 = v45;
      (*v78)(v44, v48);
      LOBYTE(v44) = [v43 BOOLForSetting:v47];

      if (v44)
      {
        sub_100024148();

        v49 = qword_1001B9458;
        v50 = v40;
        if (v49 != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        sub_10000D298(v51, qword_1001BD650);
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();
        v54 = os_log_type_enabled(v52, v53);
        a2 = v75;
        v55 = v71;
        if (v54)
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&_mh_execute_header, v52, v53, "Found interventionReplyAction", v56, 2u);
        }

        v57 = *(v55 + OBJC_IVAR___SVSInterventionViewController_interventionReplyAction);
        *(v55 + OBJC_IVAR___SVSInterventionViewController_interventionReplyAction) = v40;

        goto LABEL_44;
      }
    }

    a1 = v39;
    v26 = a2;
  }

  v37 = a1;
  v38 = v26;
  v39 = a1;
  if (v26)
  {
LABEL_25:
    a2 = ((v38 - 1) & v38);
    v40 = *(*(v30 + 48) + ((v39 << 9) | (8 * __clz(__rbit64(v38)))));
    if (!v40)
    {
      goto LABEL_36;
    }

    goto LABEL_29;
  }

  while (1)
  {
    v39 = &v37->isa + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v39 >= v36)
    {
      goto LABEL_36;
    }

    v38 = *(v31 + 8 * v39);
    v37 = (v37 + 1);
    if (v38)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_49:
  swift_once();
LABEL_38:
  v58 = type metadata accessor for Logger();
  sub_10000D298(v58, qword_1001BD650);
  v59 = a1;
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v87[0] = v63;
    *v62 = 136315138;
    v64 = [v59 v26[176]];
    if (v64)
    {
      v65 = v64;
      sub_100092528();
      sub_1000701D8();
      v66 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v66 = 0;
    }

    v85 = v66;
    sub_100005DCC(&qword_1001BBFF8);
    v67 = String.init<A>(reflecting:)();
    v69 = sub_10002065C(v67, v68, v87);

    *(v62 + 4) = v69;
    _os_log_impl(&_mh_execute_header, v60, v61, "Failed to get action for SVSInterventionViewController {actions: %s}", v62, 0xCu);
    sub_1000083B0(v63);
  }

  v50 = 0;
LABEL_44:
  if (a2)
  {
    a2();

    return;
  }

LABEL_51:
  __break(1u);
}

void sub_1000A9B40(char a1)
{
  v3 = type metadata accessor for SFInterventionWorkflow();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = type metadata accessor for SVSInterventionViewController();
  v20.receiver = v1;
  v20.super_class = v10;
  objc_msgSendSuper2(&v20, "viewIsAppearing:", a1 & 1);
  v11 = OBJC_IVAR___SVSInterventionViewController_workflow;
  swift_beginAccess();
  v12 = *(v4 + 16);
  v12(v9, &v1[v11], v3);
  v13 = [objc_opt_self() getCurrentInterventionType];
  v12(v7, v9, v3);
  v14 = (*(v4 + 88))(v7, v3);
  if (v14 == enum case for SFInterventionWorkflow.send(_:))
  {
    v15 = [objc_allocWithZone(SCUIInterventionViewController) initWithWorkflow:1 contextDictionary:0 options:0 type:v13];
LABEL_5:
    v16 = v15;
    [v15 setInterventionDelegate:v1];
LABEL_8:
    (*(v4 + 8))(v9, v3);
    [v16 setModalPresentationStyle:0];
    v17 = *&v1[OBJC_IVAR___SVSInterventionViewController_interventionViewController];
    *&v1[OBJC_IVAR___SVSInterventionViewController_interventionViewController] = v16;
    v18 = v16;

    [v1 presentViewController:v18 animated:1 completion:0];
    return;
  }

  if (v14 == enum case for SFInterventionWorkflow.receive(_:))
  {
    v15 = [objc_allocWithZone(SCUIInterventionViewController) initWithWorkflow:0 contextDictionary:0 options:0 type:v13];
    goto LABEL_5;
  }

  if (v14 == enum case for SFInterventionWorkflow.moreInfo(_:))
  {
    v16 = [objc_allocWithZone(type metadata accessor for SVSMoreHelpWebViewController()) init];
    swift_unknownObjectWeakAssign();
    goto LABEL_8;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000A9F90(void *a1, uint64_t a2, uint64_t a3, const char *a4, unsigned int *a5)
{
  swift_unknownObjectRetain();
  v8 = a1;
  sub_1000AAAD0(a4, a5);
  swift_unknownObjectRelease();
}

id sub_1000AA068(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR___SVSInterventionViewController_interventionViewController] = 0;
  *&v3[OBJC_IVAR___SVSInterventionViewController_interventionReplyAction] = 0;
  v6 = OBJC_IVAR___SVSInterventionViewController_workflow;
  v7 = enum case for SFInterventionWorkflow.receive(_:);
  v8 = type metadata accessor for SFInterventionWorkflow();
  (*(*(v8 - 8) + 104))(&v3[v6], v7, v8);
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for SVSInterventionViewController();
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v9, a3);

  return v10;
}

id sub_1000AA1C8(void *a1)
{
  *&v1[OBJC_IVAR___SVSInterventionViewController_interventionViewController] = 0;
  *&v1[OBJC_IVAR___SVSInterventionViewController_interventionReplyAction] = 0;
  v3 = OBJC_IVAR___SVSInterventionViewController_workflow;
  v4 = enum case for SFInterventionWorkflow.receive(_:);
  v5 = type metadata accessor for SFInterventionWorkflow();
  (*(*(v5 - 8) + 104))(&v1[v3], v4, v5);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SVSInterventionViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

uint64_t type metadata accessor for SVSInterventionViewController()
{
  result = qword_1001BD6A8;
  if (!qword_1001BD6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AA3C0()
{
  result = type metadata accessor for SFInterventionWorkflow();
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

id sub_1000AA718(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  swift_unknownObjectWeakInit();
  v8.receiver = a1;
  v8.super_class = type metadata accessor for SVSMoreHelpWebViewController();
  return objc_msgSendSuper2(&v8, *a4, a3);
}

id sub_1000AA77C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100005DCC(&qword_1001BA7B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  swift_unknownObjectWeakInit();
  sub_10006B004(a1, v6);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v10 = 0;
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    URL._bridgeToObjectiveC()(v9);
    v10 = v11;
    (*(v8 + 8))(v6, v7);
  }

  v12 = type metadata accessor for SVSMoreHelpWebViewController();
  v16.receiver = v2;
  v16.super_class = v12;
  v13 = objc_msgSendSuper2(&v16, "initWithURL:", v10);

  v14 = v13;
  sub_10001259C(a1, &qword_1001BA7B0);
  if (v14)
  {
  }

  return v14;
}

id sub_1000AAA14(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000AAA80()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AAAB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000AAAD0(const char *a1, unsigned int *a2)
{
  v4 = type metadata accessor for SFInterventionResponse();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001B9458 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000D298(v8, qword_1001BD650);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, a1, v11, 2u);
  }

  (*(v5 + 104))(v7, *a2, v4);
  sub_1000A8CB4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000AAC88()
{
  v0 = type metadata accessor for SFInterventionResponse();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001B9458 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BD650);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Intervention ViewController did contact someone", v7, 2u);
  }

  (*(v1 + 104))(v3, enum case for SFInterventionResponse.reject(_:), v0);
  sub_1000A8CB4();
  (*(v1 + 8))(v3, v0);
  type metadata accessor for SCUIInterventionViewController();
  return static SCUIInterventionViewController.openChatWithParents()();
}

uint64_t sub_1000AAE4C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000AB1B0(void *a1, uint64_t a2, SEL *a3)
{
  v5 = objc_opt_self();
  v6 = a1;
  v7 = [v5 *a3];
  v8 = [v6 traitCollection];
  v9 = [v7 resolvedColorWithTraitCollection:v8];

  return v9;
}

void sub_1000AB3C0()
{
  v1 = *&v0[OBJC_IVAR____TtC18SharingViewService21B389MapViewController_mapView];
  [v1 setAutoresizingMask:18];
  [v1 setDelegate:v0];
  [v1 setUserInteractionEnabled:0];
  v2 = [objc_opt_self() filterIncludingAllCategories];
  [v1 setPointOfInterestFilter:v2];

  [v1 setShowsAttribution:0];
  [v1 setShowsBuildings:1];
  [v1 setRegion:{*(*&v0[OBJC_IVAR____TtC18SharingViewService21B389MapViewController_mapAnnotation] + OBJC_IVAR____TtC18SharingViewService17B389MapAnnotation_region), *(*&v0[OBJC_IVAR____TtC18SharingViewService21B389MapViewController_mapAnnotation] + OBJC_IVAR____TtC18SharingViewService17B389MapAnnotation_region + 8), *(*&v0[OBJC_IVAR____TtC18SharingViewService21B389MapViewController_mapAnnotation] + OBJC_IVAR____TtC18SharingViewService17B389MapAnnotation_region + 16), *(*&v0[OBJC_IVAR____TtC18SharingViewService21B389MapViewController_mapAnnotation] + OBJC_IVAR____TtC18SharingViewService17B389MapAnnotation_region + 24)}];
  type metadata accessor for B389AnnotationView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = String._bridgeToObjectiveC()();
  [v1 registerClass:ObjCClassFromMetadata forAnnotationViewWithReuseIdentifier:v4];

  v6 = [objc_allocWithZone(UIView) init];
  [v6 setClipsToBounds:1];
  v5 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"viewTapped:"];
  [v6 addGestureRecognizer:v5];

  [v6 addSubview:v1];
  [v0 setView:v6];
}

id sub_1000AB798(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000AB854(void *a1)
{
  type metadata accessor for B389MapAnnotation();
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    sub_1000122EC(0, &qword_1001BA740);
    swift_unknownObjectRetain();
    if (static NSObject.== infix(_:_:)())
    {
      v4 = String._bridgeToObjectiveC()();
      v5 = [a1 dequeueReusableAnnotationViewWithIdentifier:v4 forAnnotation:v3];

      type metadata accessor for B389AnnotationView();
      v6 = swift_dynamicCastClassUnconditional();
      v7 = v5;
      [v6 setCanShowCallout:1];
      [v6 setAllowsPulse:1];
      [v6 updateStateFromLocation:*(v3 + OBJC_IVAR____TtC18SharingViewService17B389MapAnnotation_pairingLocation) duration:0.0];

      swift_unknownObjectRelease();
      return v6;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000ABA38()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BD8F0);
  v1 = sub_10000D298(v0, qword_1001BD8F0);
  if (qword_1001B92B0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C38B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000ABB00()
{
  v1 = v0;
  v78.receiver = v0;
  v78.super_class = type metadata accessor for B389ErrorViewController();
  objc_msgSendSuper2(&v78, "viewDidLoad");
  v2 = [v0 view];
  if (!v2)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryLarge];
  [v3 _setLocalOverrideTraitCollection:v4];

  [v1 setDismissalType:1];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v6 = String._bridgeToObjectiveC()();
  v76 = sub_1000ACAAC;
  v77 = v5;
  aBlock = _NSConcreteStackBlock;
  v73 = 1107296256;
  v74 = sub_10001BE90;
  v75 = &unk_100193450;
  v7 = _Block_copy(&aBlock);
  v68 = objc_opt_self();
  v8 = [v68 actionWithTitle:v6 style:0 handler:v7];

  _Block_release(v7);

  [v1 setDismissButtonAction:v8];

  v9 = [v1 subtitle];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (*&v1[OBJC_IVAR____TtC18SharingViewService23B389ErrorViewController_error])
    {
      swift_errorRetain();
      if (IsAppleInternalBuild())
      {
        aBlock = 0;
        v73 = 0xE000000000000000;
        _StringGuts.grow(_:)(23);

        aBlock = v11;
        v73 = v13;
        v14._object = 0x800000010014B6C0;
        v14._countAndFlagsBits = 0xD000000000000012;
        String.append(_:)(v14);
        v15 = _convertErrorToNSError(_:)();
        NSErrorToOSStatus();

        v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v16);

        v17._countAndFlagsBits = 41;
        v17._object = 0xE100000000000000;
        String.append(_:)(v17);
        v18 = String._bridgeToObjectiveC()();

        [v1 setSubtitle:v18];

        goto LABEL_8;
      }
    }
  }

LABEL_8:
  v19 = *&v1[OBJC_IVAR____TtC18SharingViewService23B389ErrorViewController_buttons];
  v20 = *(v19 + 16);
  if (v20)
  {
    v67 = &v74;

    v21 = 0;
    v22 = (v19 + 56);
    while (v21 < *(v19 + 16))
    {
      v23 = v21 + 1;
      v24 = *v22;
      v25 = *(v22 - 3);
      v26 = v21 != 0;
      v70 = *(v22 - 1);
      swift_unknownObjectWeakInit();
      v27 = swift_allocObject();
      *(v27 + 16) = v25;
      *(v27 + 24) = v70;
      *(v27 + 40) = v24;
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      v28 = String._bridgeToObjectiveC()();
      v76 = sub_1000ACB0C;
      v77 = v27;
      aBlock = _NSConcreteStackBlock;
      v73 = 1107296256;
      v74 = sub_10001BE90;
      v75 = &unk_1001934A0;
      v29 = _Block_copy(&aBlock);
      v30 = [v68 actionWithTitle:v28 style:v26 handler:{v29, v67}];

      _Block_release(v29);
      swift_unknownObjectWeakDestroy();

      v31 = [v1 addAction:v30];

      v22 += 4;
      v21 = v23;
      if (v20 == v23)
      {

        v32 = v1;
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  v33 = String._bridgeToObjectiveC()();
  v34 = sub_100127AD0(v33);

  if (!v34)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = String._bridgeToObjectiveC()();
  }

  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v76 = sub_1000ACB34;
  v77 = v35;
  aBlock = _NSConcreteStackBlock;
  v73 = 1107296256;
  v74 = sub_10001BE90;
  v75 = &unk_1001934C8;
  v36 = _Block_copy(&aBlock);

  v37 = [v68 actionWithTitle:v34 style:0 handler:v36];

  _Block_release(v36);

  v38 = [v1 addAction:v37];

  v32 = v1;
LABEL_16:
  v39 = [objc_opt_self() configurationWithPointSize:4 weight:50.0];
  v40 = String._bridgeToObjectiveC()();
  v71 = [objc_opt_self() systemImageNamed:v40 withConfiguration:v39];

  v41 = [objc_allocWithZone(UIImageView) initWithImage:v71];
  v42 = [objc_opt_self() systemRedColor];
  [v41 setTintColor:v42];

  v43 = v41;
  [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v43 setContentMode:1];
  v44 = [v32 contentView];
  [v44 addSubview:v43];

  v69 = objc_opt_self();
  sub_100005DCC(&qword_1001BBB00);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_10016D4A0;
  v46 = [v43 centerXAnchor];
  v47 = [v32 contentView];
  v48 = [v47 mainContentGuide];

  v49 = [v48 centerXAnchor];
  v50 = [v46 constraintEqualToAnchor:v49];

  *(v45 + 32) = v50;
  v51 = [v43 centerYAnchor];
  v52 = [v32 contentView];
  v53 = [v52 mainContentGuide];

  v54 = [v53 centerYAnchor];
  v55 = [v51 constraintEqualToAnchor:v54];

  *(v45 + 40) = v55;
  v56 = [v43 topAnchor];
  v57 = [v32 contentView];
  v58 = [v57 mainContentGuide];

  v59 = [v58 topAnchor];
  v60 = [v56 constraintGreaterThanOrEqualToAnchor:v59];

  *(v45 + 48) = v60;
  v61 = [v43 bottomAnchor];

  v62 = [v32 contentView];
  v63 = [v62 mainContentGuide];

  v64 = [v63 bottomAnchor];
  v65 = [v61 constraintLessThanOrEqualToAnchor:v64];

  *(v45 + 56) = v65;
  sub_10000D1F4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v69 activateConstraints:isa];
}

void sub_1000AC560()
{
  if (qword_1001B9460 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000D298(v0, qword_1001BD8F0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "dismissPressed in B389ErrorViewController", v3, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      [v6 dismiss:5];
    }
  }
}

void sub_1000AC69C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000AC738();
  }
}

uint64_t sub_1000AC738()
{
  v0 = sub_100005DCC(&qword_1001BA7B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  if (qword_1001B9460 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000D298(v3, qword_1001BD8F0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = 80;
    _os_log_impl(&_mh_execute_header, v4, v5, "dismissPressed in %ld", v6, 0xCu);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
    sub_10003BFDC(5, v2, 0, 0, 81);

    return sub_10000D310(v2);
  }

  return result;
}

id sub_1000AC928()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for B389ErrorViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000AC9DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000ACA24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000ACA74()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000ACAB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000ACACC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000ACB4C()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BD948);
  v1 = sub_10000D298(v0, qword_1001BD948);
  if (qword_1001B92D8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C3930);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000ACC14(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18SharingViewService26AuthenticateAccountsRouter_navigationController);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC18SharingViewService26AuthenticateAccountsRouter_currentCardViewController);
    *(v1 + OBJC_IVAR____TtC18SharingViewService26AuthenticateAccountsRouter_currentCardViewController) = a1;
    v9 = v2;
    v5 = a1;

    [v9 pushViewController:v5 animated:1];
  }

  else
  {
    if (qword_1001B9468 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000D298(v6, qword_1001BD948);
    v9 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v9, v7, "Cannot show a card without presenting the initial card first.", v8, 2u);
    }
  }
}

void sub_1000ACD58()
{
  if ((*(v0 + OBJC_IVAR____TtC18SharingViewService26AuthenticateAccountsRouter_dismissed) & 1) == 0)
  {
    v1 = v0;
    *(v0 + OBJC_IVAR____TtC18SharingViewService26AuthenticateAccountsRouter_dismissed) = 1;
    if (qword_1001B9468 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000D298(v2, qword_1001BD948);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136315138;
      type metadata accessor for SVSUserActionType(0);
      v7 = String.init<A>(reflecting:)();
      v9 = sub_10002065C(v7, v8, &v12);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "AuthenticateAccounts -- dismiss {type: %s}", v5, 0xCu);
      sub_1000083B0(v6);
    }

    v10 = *(v1 + OBJC_IVAR____TtC18SharingViewService26AuthenticateAccountsRouter_navigationController);
    if (v10)
    {
      [v10 dismissViewControllerAnimated:1 completion:0];
    }

    v11 = *(v1 + OBJC_IVAR____TtC18SharingViewService26AuthenticateAccountsRouter_currentCardViewController);
    *(v1 + OBJC_IVAR____TtC18SharingViewService26AuthenticateAccountsRouter_currentCardViewController) = 0;
  }
}

void sub_1000ACF08()
{
  v1 = OBJC_IVAR____TtC18SharingViewService26AuthenticateAccountsRouter_remoteViewControllerProxy;
  v2 = *(v0 + OBJC_IVAR____TtC18SharingViewService26AuthenticateAccountsRouter_remoteViewControllerProxy);
  if (v2)
  {
    [v2 dismiss];
  }

  *(v0 + v1) = 0;
  swift_unknownObjectRelease();
  v3 = *(v0 + OBJC_IVAR____TtC18SharingViewService26AuthenticateAccountsRouter_currentCardViewController);
  *(v0 + OBJC_IVAR____TtC18SharingViewService26AuthenticateAccountsRouter_currentCardViewController) = 0;
}

id sub_1000ACFDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AuthenticateAccountsRouter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000AD090()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BD9A8);
  v1 = sub_10000D298(v0, qword_1001BD9A8);
  if (qword_1001B92C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C38E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000AD158(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  if (*(a1 + 16) <= 1u)
  {
    if (*(a1 + 16))
    {
    }

    else
    {
      v6 = v5;
    }

    return v5;
  }

  if (*(a1 + 16) == 2)
  {
    v8 = v5;
    return v5;
  }

  if (v5 > 4)
  {
    if (__PAIR128__((v5 >= 5) + v4 - 1, v5 - 5) < 2)
    {
      return 5;
    }

    if (!(v5 ^ 7 | v4))
    {
      if (*(a1 + 17))
      {
        if (*(a1 + 17) != 1)
        {

          return 8;
        }

        v10 = a1;
      }

      else
      {
        v10 = a1;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        if (*(v10 + *(type metadata accessor for D2DSetupModel() + 76)))
        {
          return 7;
        }

        else
        {
          return 6;
        }
      }
    }

    return 8;
  }

  if (__PAIR128__(v4, v5) < 2)
  {
    v7 = a2;
    if (a4 == 3)
    {
      if (a2 ^ 3 | a3)
      {
        if (!(a2 | a3))
        {
          v13 = *(a1 + *(type metadata accessor for D2DSetupModel() + 88));
          if (v13 != 2 && (v13 & 1) == 0)
          {
            return 3;
          }
        }
      }

      else
      {
        v16 = *(a1 + *(type metadata accessor for D2DSetupModel() + 88));
        if (v16 != 2 && (v16 & 1) != 0)
        {
          return 0;
        }
      }
    }

    sub_10008ABF4(v7, a3, a4);
    return v7;
  }

  if (__PAIR128__((v5 >= 3) + v4 - 1, v5 - 3) < 2)
  {
    return 4;
  }

  v14 = a1 + *(type metadata accessor for D2DSetupModel() + 60);
  if (*(v14 + 4) & 1) == 0 && (*(v14 + 1))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void sub_1000AD3F0()
{
  v1 = v0;
  v48[0] = type metadata accessor for D2DSetupModel();
  v2 = __chkstk_darwin(v48[0]);
  v4 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v48 - v5;
  if (qword_1001B9470 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000D298(v7, qword_1001BD9A8);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  v10 = &qword_1001BD000;
  v11 = &qword_1001BD000;
  if (os_log_type_enabled(v8, v9))
  {
    v12 = swift_slowAlloc();
    *&v51[0] = swift_slowAlloc();
    *v12 = 136315394;
    v13 = OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_model;
    swift_beginAccess();
    sub_10008AA10(v1 + v13, v6);
    sub_10008AA10(v6, v4);
    v14 = String.init<A>(reflecting:)();
    v16 = v15;
    sub_10008AAD8(v6);
    v17 = sub_10002065C(v14, v16, v51);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    v18 = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_state + 8);
    v19 = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_state + 16);
    *&v62 = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_state);
    *(&v62 + 1) = v18;
    v63 = v19;
    sub_10008ABF4(v62, v18, v19);
    v20 = String.init<A>(reflecting:)();
    v22 = sub_10002065C(v20, v21, v51);
    v11 = &qword_1001BD000;

    *(v12 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v8, v9, "Model: %s, State: %s", v12, 0x16u);
    swift_arrayDestroy();

    v10 = &qword_1001BD000;
  }

  v23 = v1 + v10[312];
  swift_beginAccess();
  sub_10008AA10(v23, v6);
  v24 = v1 + v11[313];
  v25 = *v24;
  v26 = *(v24 + 8);
  v27 = *(v24 + 16);
  sub_10008ABF4(*v24, v26, v27);
  sub_1000AEB58(v6, v25, v26, v27, &v62);
  sub_1000ADEC8(&v62);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 136315138;
    v32 = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 144);
    v33 = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 112);
    v58 = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 128);
    v59 = v32;
    v34 = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 144);
    v35 = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 176);
    v60 = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 160);
    v61 = v35;
    v36 = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 80);
    v37 = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 48);
    v54 = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 64);
    v55 = v36;
    v38 = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 80);
    v39 = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 112);
    v56 = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 96);
    v57 = v39;
    v40 = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 16);
    v51[0] = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel);
    v51[1] = v40;
    v41 = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 48);
    v43 = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel);
    v42 = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 16);
    v52 = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 32);
    v53 = v41;
    v49[20] = v58;
    v49[21] = v34;
    v44 = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 176);
    v49[22] = v60;
    v49[23] = v44;
    v49[16] = v54;
    v49[17] = v38;
    v49[18] = v56;
    v49[19] = v33;
    v49[12] = v43;
    v49[13] = v42;
    v50 = v31;
    v49[14] = v52;
    v49[15] = v37;
    sub_100013C0C(v51, v49);
    v45 = String.init<A>(reflecting:)();
    v47 = sub_10002065C(v45, v46, &v50);

    *(v30 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v28, v29, "ViewModel: %s", v30, 0xCu);
    sub_1000083B0(v31);
  }

  if (*(v24 + 16) >= 3u && *v24 == 0 && *(v23 + *(v48[0] + 80)) == 1)
  {
    sub_1000AE900("D2D Setup request start setup process", sub_100080268);
  }
}

void sub_1000AD8C8()
{
  v1 = type metadata accessor for D2DSetupModel();
  __chkstk_darwin(v1 - 8);
  v3 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_state;
  v5 = *(v0 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_state);
  v6 = *(v0 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_state + 8);
  v7 = OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_model;
  v8 = *(v0 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_state + 16);
  swift_beginAccess();
  v49 = v7;
  v50 = v0;
  sub_10008AA10(v0 + v7, v3);
  sub_10008ABF4(v5, v6, v8);
  v9 = sub_1000AD158(v3, v5, v6, v8);
  v11 = v10;
  v13 = v12;
  sub_10008ABCC(v5, v6, v8);
  sub_10008AAD8(v3);
  v14 = *v4;
  v15 = *(v4 + 8);
  v16 = *(v4 + 16);
  sub_10008ABF4(*v4, v15, v16);
  v17 = sub_100095628(v9, v11, v13, v14, v15, v16);
  sub_10008ABCC(v14, v15, v16);
  if (v17)
  {
    v48 = v9;
    v18 = v50;
    sub_10008AA10(v50 + v49, v3);
    v19 = *v4;
    v20 = *(v4 + 8);
    v21 = *(v4 + 16);
    sub_10008ABF4(*v4, v20, v21);
    sub_1000AEB58(v3, v19, v20, v21, v64);
    sub_1000ADEC8(v64);
    if (qword_1001B9470 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000D298(v22, qword_1001BD9A8);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 136315138;
      v27 = *(v18 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 144);
      v28 = *(v18 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 112);
      v60 = *(v18 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 128);
      v61 = v27;
      v29 = *(v18 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 144);
      v30 = *(v18 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 176);
      v62 = *(v18 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 160);
      v63 = v30;
      v31 = *(v18 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 80);
      v32 = *(v18 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 48);
      v56 = *(v18 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 64);
      v57 = v31;
      v33 = *(v18 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 80);
      v34 = *(v18 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 112);
      v58 = *(v18 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 96);
      v59 = v34;
      v35 = *(v18 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 16);
      v53[0] = *(v18 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel);
      v53[1] = v35;
      v36 = *(v18 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 48);
      v38 = *(v18 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel);
      v37 = *(v18 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 16);
      v54 = *(v18 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 32);
      v55 = v36;
      v51[20] = v60;
      v51[21] = v29;
      v39 = *(v18 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 176);
      v51[22] = v62;
      v51[23] = v39;
      v51[16] = v56;
      v51[17] = v33;
      v51[18] = v58;
      v51[19] = v28;
      v51[12] = v38;
      v51[13] = v37;
      v52 = v26;
      v51[14] = v54;
      v51[15] = v32;
      sub_100013C0C(v53, v51);
      v40 = String.init<A>(reflecting:)();
      v42 = sub_10002065C(v40, v41, &v52);

      *(v25 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v23, v24, "ViewModel: %s", v25, 0xCu);
      sub_1000083B0(v26);
    }

    sub_10008ABCC(v48, v11, v13);
  }

  else
  {
    v43 = v9;
    v44 = *v4;
    v45 = *(v4 + 8);
    *v4 = v43;
    *(v4 + 8) = v11;
    v46 = *(v4 + 16);
    *(v4 + 16) = v13;
    sub_10008ABF4(v43, v11, v13);
    sub_10008ABCC(v44, v45, v46);
    sub_1000ADC7C();
    sub_10008ABCC(v43, v11, v13);
  }
}

void sub_1000ADC7C()
{
  v2 = *(v0 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_state);
  v1 = *(v0 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_state + 8);
  if (*(v0 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_state + 16) <= 1u)
  {
    if (*(v0 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_state + 16))
    {
      sub_100095D90();
      return;
    }

    sub_100095F70(v2);
    v3 = v2;
    v4 = v1;
    v5 = 0;
    goto LABEL_6;
  }

  if (*(v0 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_state + 16) == 2)
  {
    sub_100095F70(v2);
    v3 = v2;
    v4 = v1;
    v5 = 2;
LABEL_6:

    sub_10008ABCC(v3, v4, v5);
    return;
  }

  if (v2 <= 3)
  {
    if (v2 > 1)
    {
      if (v2 ^ 2 | v1)
      {
        sub_100095D40();
      }

      else
      {
        sub_100095D18();
      }
    }

    else if (v2 | v1)
    {
      sub_100095BF8();
    }

    else
    {
      sub_100095BD0();
    }
  }

  else if (v2 <= 5)
  {
    if (v2 ^ 4 | v1)
    {
      sub_100095DB8();
    }

    else
    {
      sub_100095D68();
    }
  }

  else if (v2 ^ 6 | v1)
  {
    if (v2 ^ 7 | v1)
    {
      v6 = *(v0 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_router);
      v7 = v0 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_model;
      swift_beginAccess();
      v8 = v7 + *(type metadata accessor for D2DSetupModel() + 72);
      if (*(v8 + 4))
      {
        v9 = 0;
      }

      else
      {
        v9 = *v8;
      }

      *(v6 + OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_dismissedForExternalContent) = v9 == 25;
      sub_100096BC4(v9, v9 != 19);
    }

    else
    {
      sub_100095DE0();
    }
  }

  else
  {
    sub_100095E08();
  }
}

uint64_t sub_1000ADEC8(_OWORD *a1)
{
  v2 = a1;
  v3 = (v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel);
  v4 = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 144);
  v28[8] = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 128);
  v28[9] = v4;
  v5 = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 176);
  v28[10] = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 160);
  v28[11] = v5;
  v6 = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 80);
  v28[4] = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 64);
  v28[5] = v6;
  v7 = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 112);
  v28[6] = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 96);
  v28[7] = v7;
  v8 = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 16);
  v28[0] = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel);
  v28[1] = v8;
  v9 = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 48);
  v28[2] = *(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 32);
  v28[3] = v9;
  v10 = a1[9];
  v3[8] = a1[8];
  v3[9] = v10;
  v11 = a1[11];
  v3[10] = a1[10];
  v3[11] = v11;
  v12 = a1[5];
  v3[4] = a1[4];
  v3[5] = v12;
  v13 = a1[7];
  v3[6] = a1[6];
  v3[7] = v13;
  v14 = a1[1];
  *v3 = *a1;
  v3[1] = v14;
  v15 = a1[3];
  v3[2] = a1[2];
  v3[3] = v15;
  sub_100013C0C(a1, v27);
  sub_1000AEB04(v28);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    v18 = v3[9];
    v27[8] = v3[8];
    v27[9] = v18;
    v19 = v3[11];
    v27[10] = v3[10];
    v27[11] = v19;
    v20 = v3[5];
    v27[4] = v3[4];
    v27[5] = v20;
    v21 = v3[7];
    v27[6] = v3[6];
    v27[7] = v21;
    v22 = v3[1];
    v27[0] = *v3;
    v27[1] = v22;
    v23 = v3[3];
    v27[2] = v3[2];
    v27[3] = v23;
    v24 = *(v16 + 32);
    sub_100013C0C(v27, &v26);
    v24(v1, &off_1001935D0, v27, ObjectType, v16);
    sub_1000AEB04(v2);
    swift_unknownObjectRelease();
    v2 = v27;
  }

  return sub_1000AEB04(v2);
}

uint64_t sub_1000AE028()
{
  sub_100012604(v0 + 16);
  sub_10008AAD8(v0 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_model);
  sub_10008ABCC(*(v0 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_state), *(v0 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_state + 8), *(v0 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_state + 16));
  v1 = *(v0 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 144);
  v8[8] = *(v0 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 128);
  v8[9] = v1;
  v2 = *(v0 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 176);
  v8[10] = *(v0 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 160);
  v8[11] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 80);
  v8[4] = *(v0 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 64);
  v8[5] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 112);
  v8[6] = *(v0 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 96);
  v8[7] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 16);
  v8[0] = *(v0 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel);
  v8[1] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 48);
  v8[2] = *(v0 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_viewModel + 32);
  v8[3] = v6;
  sub_1000AEB04(v8);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for D2DSetupPresenter()
{
  result = qword_1001BDA10;
  if (!qword_1001BDA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AE160()
{
  result = type metadata accessor for D2DSetupModel();
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

uint64_t sub_1000AE21C(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1000AE248(void *a1)
{
  if (qword_1001B9470 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BD9A8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "D2D Setup request handle device setup notification)", v5, 2u);
  }

  return sub_10007F9A0(a1);
}

uint64_t sub_1000AE3A4(uint64_t a1, unint64_t a2, const char *a3, uint64_t (*a4)(void, void))
{
  if (qword_1001B9470 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000D298(v8, qword_1001BD9A8);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v18 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    v13 = a3;
    if (IsAppleInternalBuild())
    {

      v14 = a1;
      v15 = a2;
    }

    else
    {
      v15 = 0xE100000000000000;
      v14 = 42;
    }

    v16 = sub_10002065C(v14, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, v13, v11, 0xCu);
    sub_1000083B0(v12);

    a4 = v18;
  }

  else
  {
  }

  return a4(a1, a2);
}

void sub_1000AE580()
{
  v1 = v0;
  if (qword_1001B9470 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BD9A8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "D2D Setup request block hardware buttons", v5, 2u);
  }

  v6 = *(*(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_interactor) + 48);
  if (v6)
  {

    v6(17);

    sub_100012050(v6);
  }
}

void sub_1000AE6B0()
{
  v1 = v0;
  if (qword_1001B9470 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BD9A8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "D2D Setup request reset hardware button functionality", v5, 2u);
  }

  v6 = *(*(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_interactor) + 64);
  if (v6)
  {

    v6(v7);

    sub_100012050(v6);
  }
}

void sub_1000AE7DC()
{
  v1 = v0;
  if (qword_1001B9470 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BD9A8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "D2D Setup request dismiss", v5, 2u);
  }

  *(*(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_router) + OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_dismissedForExternalContent) = 0;
  sub_100096BC4(5, 1);
}

uint64_t sub_1000AE900(const char *a1, uint64_t (*a2)(void))
{
  if (qword_1001B9470 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BD9A8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a1, v7, 2u);
  }

  return a2();
}

void sub_1000AE9FC()
{
  v1 = v0;
  if (qword_1001B9470 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BD9A8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "D2D Setup request What's Next", v5, 2u);
  }

  sub_10008BC94();
  *(*(v1 + OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_router) + OBJC_IVAR____TtC18SharingViewService14D2DSetupRouter_dismissedForExternalContent) = 0;
  sub_100096BC4(5, 1);
}

double sub_1000AEB58@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unsigned __int8 a4@<W3>, _OWORD *a5@<X8>)
{
  sub_100070A28(&v465);
  v391 = a5;
  v404 = a1;
  object = v465._object;
  countAndFlagsBits = v465._countAndFlagsBits;
  v398 = v467;
  v399 = v466;
  v396 = v469;
  v397 = v468;
  v394 = v471;
  v395 = v470;
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      v10 = a2;
      v11 = a3;
      v12 = 2;
      goto LABEL_6;
    }

    if (a2 > 3)
    {
      if (a2 <= 5)
      {
        if (a2 ^ 4 | a3)
        {
          if (*(a1 + 16) < 3u || *a1 ^ 5 | *(a1 + 8))
          {
            v272 = objc_opt_self();
            v273 = [v272 mainBundle];
            v274._countAndFlagsBits = 0xD000000000000014;
            v495._object = 0xE000000000000000;
            v274._object = 0x800000010014B8E0;
            v275.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v275.value._object = 0xEB00000000656C62;
            v276._countAndFlagsBits = 0;
            v276._object = 0xE000000000000000;
            v495._countAndFlagsBits = 0;
            v412 = NSLocalizedString(_:tableName:bundle:value:comment:)(v274, v275, v273, v276, v495);

            v238 = type metadata accessor for D2DSetupModel();
            v277 = *(a1 + v238[29]);
            v278 = [v272 mainBundle];
            v279 = "IOS_SETUP_SYNC_TITLE";
            if (v277)
            {
              v279 = "ING_SECONDS_FORMAT";
              v280 = 0xD000000000000016;
            }

            else
            {
              v280 = 0xD000000000000013;
            }

            v496._object = 0xE000000000000000;
            v281 = v279 | 0x8000000000000000;
            v282.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v282.value._object = 0xEB00000000656C62;
            v283._countAndFlagsBits = 0;
            v283._object = 0xE000000000000000;
            v496._countAndFlagsBits = 0;
            NSLocalizedString(_:tableName:bundle:value:comment:)(*&v280, v282, v278, v283, v496);

            v284 = objc_allocWithZone(NSAttributedString);
            v285 = String._bridgeToObjectiveC()();

            v286 = [v284 initWithString:v285];
          }

          else
          {
            v228 = objc_opt_self();
            v229 = [v228 mainBundle];
            v492._object = 0xE000000000000000;
            v230._object = 0x800000010014B9A0;
            v230._countAndFlagsBits = 0xD000000000000016;
            v231.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v231.value._object = 0xEB00000000656C62;
            v232._countAndFlagsBits = 0;
            v232._object = 0xE000000000000000;
            v492._countAndFlagsBits = 0;
            v412 = NSLocalizedString(_:tableName:bundle:value:comment:)(v230, v231, v229, v232, v492);

            v233 = String._bridgeToObjectiveC()();
            v234 = SFDeviceClassCodeGet();
            v235 = sub_100126C04(v233, v234);

            v236 = v235;
            v237 = v235;
            if (!v235)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v237 = String._bridgeToObjectiveC()();

              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v236 = String._bridgeToObjectiveC()();
            }

            v238 = type metadata accessor for D2DSetupModel();
            v239 = *(a1 + v238[29]);
            v240 = v235;
            if (v239 == 1)
            {

              v241 = sub_100126C04(v237, *(a1 + v238[25]));
              v242 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v244 = v243;

              v437[0] = v242;
              v437[1] = v244;
              v245._countAndFlagsBits = 5523295;
              v245._object = 0xE300000000000000;
              String.append(_:)(v245);
              v247 = v242;
              v246 = v244;
            }

            else
            {

              v351 = sub_100126C04(v236, *(a1 + v238[25]));
              v247 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v246 = v352;
            }

            v353 = [v228 mainBundle];
            v504._object = 0xE000000000000000;
            v354._countAndFlagsBits = v247;
            v354._object = v246;
            v355.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v355.value._object = 0xEB00000000656C62;
            v356._countAndFlagsBits = 0;
            v356._object = 0xE000000000000000;
            v504._countAndFlagsBits = 0;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v354, v355, v353, v356, v504);

            v357 = objc_allocWithZone(NSAttributedString);
            v285 = String._bridgeToObjectiveC()();

            v286 = [v357 initWithString:v285];
          }

          v406 = v286;

          v358 = [objc_opt_self() configurationWithPointSize:72.0];
          v359 = String._bridgeToObjectiveC()();
          v409 = [objc_opt_self() systemImageNamed:v359 withConfiguration:v358];

          v403 = [objc_opt_self() systemBlueColor];
          type metadata accessor for D2DSetupModel();
          v360 = a1 + v238[16];
          v402 = *v360;
          v411 = *(v360 + 4);
          sub_100005DCC(&unk_1001BBB70);
          v361 = swift_allocObject();
          *(v361 + 16) = xmmword_10016CCE0;
          v362 = objc_opt_self();
          v363 = [v362 mainBundle];
          v505._object = 0xE000000000000000;
          v364._countAndFlagsBits = 0x4954414D49545345;
          v364._object = 0xEA0000000000474ELL;
          v365.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v365.value._object = 0xEB00000000656C62;
          v366._countAndFlagsBits = 0;
          v366._object = 0xE000000000000000;
          v505._countAndFlagsBits = 0;
          v367 = NSLocalizedString(_:tableName:bundle:value:comment:)(v364, v365, v363, v366, v505);

          *(v361 + 56) = &type metadata for String;
          v393 = sub_10000BF44();
          *(v361 + 64) = v393;
          *(v361 + 32) = v367;
          v368 = [v362 mainBundle];
          v506._object = 0xE000000000000000;
          v369._countAndFlagsBits = 0xD000000000000022;
          v369._object = 0x800000010014B950;
          v370.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v370.value._object = 0xEB00000000656C62;
          v371._countAndFlagsBits = 0;
          v371._object = 0xE000000000000000;
          v506._countAndFlagsBits = 0;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v369, v370, v368, v371, v506);

          v419 = String.init(format:arguments:)();
          v421 = v372;

          v373 = a1 + v238[17];
          if (*(v373 + 8))
          {
            v414 = 0;
            v20 = v412._countAndFlagsBits;
            v21 = v412._object;
            v18 = v409;
            v17 = v403;
            v13 = v402;
          }

          else
          {
            v374 = *v373;
            v20 = v412._countAndFlagsBits;
            v21 = v412._object;
            v17 = v403;
            v13 = v402;
            if (*v373 >= 0.0)
            {
              v375 = [objc_allocWithZone(NSDateComponentsFormatter) init];
              v18 = v409;
              if (v375)
              {
                v376 = v375;
                [v375 setUnitsStyle:3];
                [v376 setIncludesApproximationPhrase:1];
                [v376 setAllowedUnits:240];
                [v376 setMaximumUnitCount:1];
                v414 = v376;
                v377 = [v376 stringFromTimeInterval:v374];
                if (v377)
                {
                  v378 = v377;

                  v379 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v381 = v380;

                  v382 = swift_allocObject();
                  *(v382 + 16) = xmmword_10016CCE0;
                  *(v382 + 56) = &type metadata for String;
                  *(v382 + 64) = v393;
                  *(v382 + 32) = v379;
                  *(v382 + 40) = v381;
                  v383 = [v362 mainBundle];
                  v507._object = 0xE000000000000000;
                  v384._countAndFlagsBits = 0xD000000000000022;
                  v384._object = 0x800000010014B950;
                  v385.value._countAndFlagsBits = 0x617A696C61636F4CLL;
                  v385.value._object = 0xEB00000000656C62;
                  v386._countAndFlagsBits = 0;
                  v386._object = 0xE000000000000000;
                  v507._countAndFlagsBits = 0;
                  NSLocalizedString(_:tableName:bundle:value:comment:)(v384, v385, v383, v386, v507);

                  v17 = v403;
                  v13 = v402;
                  v419 = String.init(format:arguments:)();
                  v421 = v387;

                  v390 = 0;
                  v416 = 0;
                  v417 = 0;
                  v14 = 0;
                  v15 = 0;
                  v16 = 0;
                  v415 = 1;
                  v19 = v406;
                  v22 = v411;
                  goto LABEL_10;
                }
              }

              else
              {
                v414 = 0;
              }
            }

            else
            {
              v414 = 0;
              v18 = v409;
            }
          }

          v22 = v411;
          v390 = 0;
          v416 = 0;
          v417 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v415 = 1;
          v19 = v406;
          goto LABEL_10;
        }

        if (*(a1 + 16) < 3u || *a1 ^ 4 | *(a1 + 8))
        {
          v248 = String._bridgeToObjectiveC()();
          v249 = type metadata accessor for D2DSetupModel();
          v250 = sub_100126C04(v248, *(a1 + *(v249 + 100)));

          v251 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v253 = v252;

          v132 = [objc_opt_self() mainBundle];
          v493._object = 0xE000000000000000;
          v254._countAndFlagsBits = v251;
          v254._object = v253;
          v255.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v255.value._object = 0xEB00000000656C62;
          v256._countAndFlagsBits = 0;
          v256._object = 0xE000000000000000;
          v493._countAndFlagsBits = 0;
          v257 = NSLocalizedString(_:tableName:bundle:value:comment:)(v254, v255, v132, v256, v493);
          v20 = v257._countAndFlagsBits;
          v413 = v257._object;
        }

        else
        {
          v132 = [objc_opt_self() mainBundle];
          v482._object = 0xE000000000000000;
          v133._countAndFlagsBits = 0xD00000000000001BLL;
          v133._object = 0x800000010014B9E0;
          v134.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v134.value._object = 0xEB00000000656C62;
          v135._countAndFlagsBits = 0;
          v135._object = 0xE000000000000000;
          v482._countAndFlagsBits = 0;
          v136 = NSLocalizedString(_:tableName:bundle:value:comment:)(v133, v134, v132, v135, v482);
          v20 = v136._countAndFlagsBits;
          v413 = v136._object;
        }

        v258 = String._bridgeToObjectiveC()();
        v259 = SFDeviceClassCodeGet();
        v260 = sub_100126C04(v258, v259);

        if (!v260)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v260 = String._bridgeToObjectiveC()();
        }

        v261 = type metadata accessor for D2DSetupModel();
        v262 = sub_100126C04(v260, *(a1 + *(v261 + 100)));

        v263 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v265 = v264;

        v266 = [objc_opt_self() mainBundle];
        v494._object = 0xE000000000000000;
        v267._countAndFlagsBits = v263;
        v267._object = v265;
        v268.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v268.value._object = 0xEB00000000656C62;
        v269._countAndFlagsBits = 0;
        v269._object = 0xE000000000000000;
        v494._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v267, v268, v266, v269, v494);

        v270 = objc_allocWithZone(NSAttributedString);
        v271 = String._bridgeToObjectiveC()();

        v19 = [v270 initWithString:v271];

        v13 = 0;
        v390 = 0;
        v416 = 0;
        v417 = 0;
        v419 = 0;
        v421 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v22 = 1;
        v414 = 0;
        v415 = 1;
        v21 = v413;
      }

      else if (a2 ^ 6 | a3)
      {
        if (a2 ^ 7 | a3)
        {
          v13 = 0;
          v390 = 0;
          v416 = 0;
          v417 = 0;
          v419 = 0;
          v421 = 0;
          v14 = 0;
          v15 = 0;
          v414 = 0;
          v415 = 3;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0xE000000000000000;
          v22 = 1;
        }

        else
        {
          sub_1000B167C(&v465);
          v62 = objc_opt_self();
          v63 = [v62 mainBundle];
          v64._countAndFlagsBits = 0xD000000000000012;
          v475._object = 0xE000000000000000;
          v64._object = 0x800000010014B810;
          v65.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v65.value._object = 0xEB00000000656C62;
          v66._countAndFlagsBits = 0;
          v66._object = 0xE000000000000000;
          v475._countAndFlagsBits = 0;
          v67 = NSLocalizedString(_:tableName:bundle:value:comment:)(v64, v65, v63, v66, v475);

          v68 = String._bridgeToObjectiveC()();
          v69 = type metadata accessor for D2DSetupModel();
          v70 = sub_100126C04(v68, *(a1 + *(v69 + 100)));

          v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v73 = v72;

          v74 = [v62 mainBundle];
          v476._object = 0xE000000000000000;
          v75._countAndFlagsBits = v71;
          v75._object = v73;
          v76.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v76.value._object = 0xEB00000000656C62;
          v77._countAndFlagsBits = 0;
          v77._object = 0xE000000000000000;
          v476._countAndFlagsBits = 0;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v75, v76, v74, v77, v476);

          v78 = objc_allocWithZone(NSAttributedString);
          v79 = String._bridgeToObjectiveC()();

          v80 = [v78 initWithString:v79];

          if (IsAppleInternalBuild() && v80)
          {
            v81 = *(a1 + *(v69 + 76));
            v82 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v80];
            strcpy(v437, "\n[INTERNAL] ");
            BYTE5(v437[1]) = 0;
            HIWORD(v437[1]) = -5120;
            *&v425 = v81;
            v83 = v81;
            sub_100005DCC(&qword_1001BCA40);
            v84._countAndFlagsBits = String.init<A>(reflecting:)();
            String.append(_:)(v84);

            v85 = objc_allocWithZone(NSAttributedString);
            v86 = String._bridgeToObjectiveC()();

            v87 = [v85 initWithString:v86];

            [v82 appendAttributedString:v87];
            v88 = [v62 mainBundle];
            v477._object = 0xE000000000000000;
            v89._countAndFlagsBits = 0xD000000000000024;
            v89._object = 0x800000010014B850;
            v90.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v90.value._object = 0xEB00000000656C62;
            v91._countAndFlagsBits = 0;
            v91._object = 0xE000000000000000;
            v477._countAndFlagsBits = 0;
            v92 = NSLocalizedString(_:tableName:bundle:value:comment:)(v89, v90, v88, v91, v477);
            v392 = v92._countAndFlagsBits;
            v417 = v92._object;

            v93 = v82;
          }

          else
          {
            v93 = v80;
            v392 = 0;
            v417 = 0;
          }

          v307 = [objc_opt_self() configurationWithPointSize:72.0];
          v308 = String._bridgeToObjectiveC()();
          v18 = [objc_opt_self() systemImageNamed:v308 withConfiguration:v307];

          v17 = [objc_opt_self() systemRedColor];
          v309 = [v62 mainBundle];
          v499._object = 0xE000000000000000;
          v310._countAndFlagsBits = 0x4F545455425F4B4FLL;
          v310._object = 0xEF454C5449545F4ELL;
          v311.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v311.value._object = 0xEB00000000656C62;
          v312._countAndFlagsBits = 0;
          v312._object = 0xE000000000000000;
          v499._countAndFlagsBits = 0;
          v313 = NSLocalizedString(_:tableName:bundle:value:comment:)(v310, v311, v309, v312, v499);
          v15 = v313._countAndFlagsBits;
          v16 = v313._object;

          object = 0;
          countAndFlagsBits = 0;
          v398 = 0;
          v399 = 0;
          v396 = 0;
          v397 = 0;
          v394 = 0;
          v395 = 0;
          v13 = 0;
          v390 = 0;
          v416 = 0;
          v419 = 0;
          v421 = 0;
          v22 = 1;
          v414 = 0;
          v415 = 3;
          v20 = v67._countAndFlagsBits;
          v21 = v67._object;
          v19 = v93;
          v14 = v392;
        }
      }

      else
      {
        sub_1000B167C(&v465);
        v137 = String._bridgeToObjectiveC()();
        v423 = type metadata accessor for D2DSetupModel();
        v138 = sub_100126C04(v137, *(a1 + *(v423 + 100)));

        v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v140 = a1;
        v142 = v141;

        v143 = objc_opt_self();
        v144 = [v143 mainBundle];
        v483._object = 0xE000000000000000;
        v145._countAndFlagsBits = v139;
        v145._object = v142;
        v146.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v146.value._object = 0xEB00000000656C62;
        v147._countAndFlagsBits = 0;
        v147._object = 0xE000000000000000;
        v483._countAndFlagsBits = 0;
        v148 = NSLocalizedString(_:tableName:bundle:value:comment:)(v145, v146, v144, v147, v483);

        v149 = v143;
        v150 = [v143 mainBundle];
        v484._object = 0xE000000000000000;
        v151._countAndFlagsBits = 1162760004;
        v151._object = 0xE400000000000000;
        v152.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v152.value._object = 0xEB00000000656C62;
        v153._countAndFlagsBits = 0;
        v153._object = 0xE000000000000000;
        v484._countAndFlagsBits = 0;
        v154 = NSLocalizedString(_:tableName:bundle:value:comment:)(v151, v152, v150, v153, v484);

        if (*(v140 + *(v423 + 112)))
        {
          v155 = String._bridgeToObjectiveC()();
          v156 = sub_100126B8C(v155);

          v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v159 = v158;

          v160 = v149;
          v161 = [v149 mainBundle];
          v485._object = 0xE000000000000000;
          v162._countAndFlagsBits = v157;
          v162._object = v159;
          v163.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v163.value._object = 0xEB00000000656C62;
          v164._countAndFlagsBits = 0;
          v164._object = 0xE000000000000000;
          v485._countAndFlagsBits = 0;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v162, v163, v161, v164, v485);

          v165 = objc_allocWithZone(NSAttributedString);
          v166 = String._bridgeToObjectiveC()();

          v405 = [v165 initWithString:v166];

          v167 = String._bridgeToObjectiveC()();
          v168 = sub_100126B8C(v167);

          v169 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v171 = v170;

          v172 = [v160 mainBundle];
          v486._object = 0xE000000000000000;
          v173._countAndFlagsBits = v169;
          v173._object = v171;
          v174.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v174.value._object = 0xEB00000000656C62;
          v175._countAndFlagsBits = 0;
          v175._object = 0xE000000000000000;
          v486._countAndFlagsBits = 0;
          v176 = NSLocalizedString(_:tableName:bundle:value:comment:)(v173, v174, v172, v175, v486);
          v14 = v176._countAndFlagsBits;

          if (qword_1001B93E0 != -1)
          {
            swift_once();
          }

          v417 = v176._object;
          v177 = type metadata accessor for Logger();
          sub_10000D298(v177, qword_1001BCC20);
          v178 = Logger.logObject.getter();
          v179 = static os_log_type_t.default.getter();
          v20 = v148._countAndFlagsBits;
          v21 = v148._object;
          if (os_log_type_enabled(v178, v179))
          {
            v180 = swift_slowAlloc();
            *v180 = 0;
            _os_log_impl(&_mh_execute_header, v178, v179, "Other device is of same device class, offer Exit Buddy", v180, 2u);

            v415 = 3;
            sub_10008ABCC(a2, a3, 3);
            v414 = 0;
            object = 0;
            countAndFlagsBits = 0;
            v398 = 0;
            v399 = 0;
            v396 = 0;
            v397 = 0;
            v394 = 0;
            v395 = 0;
            v13 = 0;
            v390 = 0;
            v416 = 0;
            v419 = 0;
            v421 = 0;
            v17 = 0;
            v18 = 0;
            v22 = 1;
          }

          else
          {

            object = 0;
            countAndFlagsBits = 0;
            v398 = 0;
            v399 = 0;
            v396 = 0;
            v397 = 0;
            v394 = 0;
            v395 = 0;
            v13 = 0;
            v390 = 0;
            v416 = 0;
            v419 = 0;
            v421 = 0;
            v17 = 0;
            v18 = 0;
            v22 = 1;
            v414 = 0;
            v415 = 3;
          }

          v19 = v405;
          v15 = v154._countAndFlagsBits;
          v16 = v154._object;
        }

        else
        {
          v287 = [objc_opt_self() configurationWithPointSize:72.0];
          v288 = String._bridgeToObjectiveC()();
          v18 = [objc_opt_self() systemImageNamed:v288 withConfiguration:v287];

          v17 = [objc_opt_self() systemBlueColor];
          object = 0;
          countAndFlagsBits = 0;
          v398 = 0;
          v399 = 0;
          v396 = 0;
          v397 = 0;
          v394 = 0;
          v395 = 0;
          v13 = 0;
          v390 = 0;
          v416 = 0;
          v417 = 0;
          v419 = 0;
          v421 = 0;
          v14 = 0;
          v19 = 0;
          v22 = 1;
          v414 = 0;
          v415 = 3;
          v20 = v148._countAndFlagsBits;
          v21 = v148._object;
          v15 = v154._countAndFlagsBits;
          v16 = v154._object;
        }
      }

      goto LABEL_10;
    }

    if (a2 > 1)
    {
      if (!(a2 ^ 2 | a3))
      {
        v113 = objc_opt_self();
        v114 = [v113 mainBundle];
        v480._object = 0xE000000000000000;
        v115._countAndFlagsBits = 0xD000000000000019;
        v115._object = 0x800000010014BA60;
        v116.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v116.value._object = 0xEB00000000656C62;
        v117._countAndFlagsBits = 0;
        v117._object = 0xE000000000000000;
        v480._countAndFlagsBits = 0;
        v118 = NSLocalizedString(_:tableName:bundle:value:comment:)(v115, v116, v114, v117, v480);

        v119 = type metadata accessor for D2DSetupModel();
        v120 = a1 + *(v119 + 60);
        if (*(v120 + 4) & 1) == 0 && (*(v120 + 2))
        {
          v314 = [v113 mainBundle];
          v500._object = 0xE000000000000000;
          v315._countAndFlagsBits = 0x434E495F48545541;
          v315._object = 0xEE0054434552524FLL;
          v316.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v316.value._object = 0xEB00000000656C62;
          v317._countAndFlagsBits = 0;
          v317._object = 0xE000000000000000;
          v500._countAndFlagsBits = 0;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v315, v316, v314, v317, v500);

          sub_100005DCC(&qword_1001B9F48);
          v318 = swift_allocObject();
          *(v318 + 16) = xmmword_10016CCE0;
          v20 = v118._countAndFlagsBits;
          *(v318 + 32) = NSForegroundColorAttributeName;
          v319 = objc_opt_self();
          v320 = NSForegroundColorAttributeName;
          v321 = [v319 systemRedColor];
          *(v318 + 64) = sub_1000122EC(0, &qword_1001B9F50);
          *(v318 + 40) = v321;
          sub_100004E20(v318);
          swift_setDeallocating();
          sub_10001259C(v318 + 32, &qword_1001B9618);
          swift_deallocClassInstance();
          v322 = objc_allocWithZone(NSAttributedString);
          v323 = String._bridgeToObjectiveC()();

          type metadata accessor for Key(0);
          sub_1000169FC();
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v19 = [v322 initWithString:v323 attributes:isa];

          v13 = 0;
          v390 = 0;
          v416 = 0;
          v417 = 0;
          v419 = 0;
          v421 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v22 = 1;
          v414 = 0;
          v415 = 3;
        }

        else
        {
          v121 = String._bridgeToObjectiveC()();
          v122 = sub_100126C04(v121, *(a1 + *(v119 + 100)));

          v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v125 = v124;

          v126 = [v113 mainBundle];
          v481._object = 0xE000000000000000;
          v127._countAndFlagsBits = v123;
          v127._object = v125;
          v128.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v128.value._object = 0xEB00000000656C62;
          v129._countAndFlagsBits = 0;
          v129._object = 0xE000000000000000;
          v481._countAndFlagsBits = 0;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v127, v128, v126, v129, v481);

          v130 = objc_allocWithZone(NSAttributedString);
          v131 = String._bridgeToObjectiveC()();

          v19 = [v130 initWithString:v131];

          v13 = 0;
          v390 = 0;
          v416 = 0;
          v417 = 0;
          v419 = 0;
          v421 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v22 = 1;
          v414 = 0;
          v415 = 3;
          v20 = v118._countAndFlagsBits;
        }

        v21 = v118._object;
        goto LABEL_10;
      }

      v204 = *(a1 + *(type metadata accessor for D2DSetupModel() + 116));
      v205 = [objc_opt_self() mainBundle];
      v206 = "WAITING_FOR_SOFTWARE_UPDATE";
      if (v204)
      {
        v206 = "IOS_SETUP_CONTINUE";
        v207 = 0xD000000000000015;
      }

      else
      {
        v207 = 0xD000000000000012;
      }

      v388 = 0xE000000000000000;
      if (v204)
      {
        v208 = 0xEF54475F4E4F5F4ELL;
      }

      else
      {
        v208 = 0xEC0000004E4F5F4ELL;
      }

      v209 = v206 | 0x8000000000000000;
      v210.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v210.value._object = 0xEB00000000656C62;
      v211._countAndFlagsBits = 0;
      v211._object = 0xE000000000000000;
      v212 = 0;
      v213 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v207, v210, v205, v211, *(&v388 - 1));
      v20 = v213._countAndFlagsBits;

      v214 = [objc_opt_self() configurationWithPointSize:72.0];
      v215 = String._bridgeToObjectiveC()();
      v216 = [objc_opt_self() systemImageNamed:v215 withConfiguration:v214];

      v17 = [objc_opt_self() systemBlueColor];
      v217 = [objc_opt_self() mainBundle];
      v490._object = 0xE000000000000000;
      v218._countAndFlagsBits = 0x5255545F49464957;
      v218._object = v208;
      v219.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v219.value._object = 0xEB00000000656C62;
      v220._countAndFlagsBits = 0;
      v220._object = 0xE000000000000000;
      v490._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v218, v219, v217, v220, v490);

      v221 = objc_allocWithZone(NSAttributedString);
      v222 = String._bridgeToObjectiveC()();
      v18 = v216;

      v19 = [v221 initWithString:v222];

      v21 = v213._object;
      v223 = [objc_opt_self() mainBundle];
      v491._object = 0xE000000000000000;
      v224._object = 0x800000010014BA20;
      v224._countAndFlagsBits = 0xD000000000000012;
      v225.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v225.value._object = 0xEB00000000656C62;
      v226._countAndFlagsBits = 0;
      v226._object = 0xE000000000000000;
      v491._countAndFlagsBits = 0;
      v227 = NSLocalizedString(_:tableName:bundle:value:comment:)(v224, v225, v223, v226, v491);
      v15 = v227._countAndFlagsBits;
      v16 = v227._object;

      v414 = 0;
      v13 = 0;
      v390 = 0;
      v416 = 0;
      v417 = 0;
      v419 = 0;
      v421 = 0;
      v14 = 0;
    }

    else
    {
      if (!(a2 | a3))
      {
        v94 = String._bridgeToObjectiveC()();
        v95 = type metadata accessor for D2DSetupModel();
        v96 = *(a1 + v95[25]);
        v97 = sub_100126C04(v94, v96);

        v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v100 = v99;

        v101 = objc_opt_self();
        v102 = [v101 mainBundle];
        v478._object = 0xE000000000000000;
        v103._countAndFlagsBits = v98;
        v103._object = v100;
        v104.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v104.value._object = 0xEB00000000656C62;
        v105._countAndFlagsBits = 0;
        v105._object = 0xE000000000000000;
        v478._countAndFlagsBits = 0;
        v106 = NSLocalizedString(_:tableName:bundle:value:comment:)(v103, v104, v102, v105, v478);

        v422 = v96;
        v408 = sub_100127AE0(v96, *(a1 + v95[26]));
        LOBYTE(v96) = *(a1 + v95[21]);
        v107 = [v101 mainBundle];
        v420 = v95;
        if (v96)
        {
          v479._object = 0xE000000000000000;
          v108._countAndFlagsBits = 0xD00000000000001CLL;
          v108._object = 0x800000010014BBF0;
          v109.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v109.value._object = 0xEB00000000656C62;
          v110._countAndFlagsBits = 0;
          v110._object = 0xE000000000000000;
          v479._countAndFlagsBits = 0;
          v111 = NSLocalizedString(_:tableName:bundle:value:comment:)(v108, v109, v107, v110, v479);
          v112 = v111._countAndFlagsBits;
          v410 = v111._object;
        }

        else
        {
          v289._countAndFlagsBits = 0xD000000000000012;
          v497._object = 0xE000000000000000;
          v289._object = 0x800000010014BA20;
          v290.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v290.value._object = 0xEB00000000656C62;
          v291._countAndFlagsBits = 0;
          v291._object = 0xE000000000000000;
          v497._countAndFlagsBits = 0;
          v292 = NSLocalizedString(_:tableName:bundle:value:comment:)(v289, v290, v107, v291, v497);
          v112 = v292._countAndFlagsBits;
          v410 = v292._object;

          v293 = (a1 + v95[7]);
          v294 = v293[1];
          if (v294)
          {
            v295 = *v293;
            v437[0] = *v293;
            v437[1] = v294;
            *&v425 = 64;
            *(&v425 + 1) = 0xE100000000000000;
            sub_1000B16D0();

            if (StringProtocol.contains<A>(_:)())
            {
              v418 = v295;
            }

            else
            {
              v325 = String._bridgeToObjectiveC()();

              v326 = SFLocalizePhoneNumber();

              v418 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v294 = v327;
            }

            v407 = v292._countAndFlagsBits;
            v438 = &type metadata for AppleAccountFeatureFlags;
            v439 = sub_1000B1724();
            isFeatureEnabled(_:)();
            sub_1000083B0(v437);
            v328 = String._bridgeToObjectiveC()();

            v329 = sub_100126C04(v328, v422);

            v330 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v332 = v331;

            v333 = [v101 mainBundle];
            v501._object = 0xE000000000000000;
            v334._countAndFlagsBits = v330;
            v334._object = v332;
            v335.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v335.value._object = 0xEB00000000656C62;
            v336._countAndFlagsBits = 0;
            v336._object = 0xE000000000000000;
            v501._countAndFlagsBits = 0;
            v337 = NSLocalizedString(_:tableName:bundle:value:comment:)(v334, v335, v333, v336, v501);

            sub_100005DCC(&unk_1001BBB70);
            v338 = swift_allocObject();
            *(v338 + 16) = xmmword_10016CCE0;
            *(v338 + 56) = &type metadata for String;
            *(v338 + 64) = sub_10000BF44();
            *(v338 + 32) = v418;
            *(v338 + 40) = v294;
            v339 = [v101 mainBundle];
            v502._object = 0xE000000000000000;
            v340._countAndFlagsBits = 0x535F4445544F5551;
            v340._object = 0xED0000474E495254;
            v341.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v341.value._object = 0xEB00000000656C62;
            v342._countAndFlagsBits = 0;
            v342._object = 0xE000000000000000;
            v502._countAndFlagsBits = 0;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v340, v341, v339, v342, v502);

            v343 = String.init(format:arguments:)();
            v345 = v344;

            v19 = sub_1000B65D8(0x50415F444C4F423CLL, 0xEF3E44495F454C50, v343, v345, UIFontTextStyleSubheadline, v337._countAndFlagsBits, v337._object);

LABEL_72:
            v20 = v106._countAndFlagsBits;
            v18 = v408;
            if (*(a1 + 16) >= 3u && *a1 == 0 && (*(a1 + v420[20]) & 1) == 0)
            {
              sub_1000B167C(&v465);
              v414 = 0;
              object = 0;
              countAndFlagsBits = 0;
              v398 = 0;
              v399 = 0;
              v396 = 0;
              v397 = 0;
              v394 = 0;
              v395 = 0;
              v13 = 0;
              v390 = 0;
              v416 = 0;
            }

            else
            {
              v346 = [v101 mainBundle];
              v347._countAndFlagsBits = 0xD000000000000014;
              v503._object = 0xE000000000000000;
              v347._object = 0x800000010014BB20;
              v348.value._countAndFlagsBits = 0x617A696C61636F4CLL;
              v348.value._object = 0xEB00000000656C62;
              v349._countAndFlagsBits = 0;
              v349._object = 0xE000000000000000;
              v503._countAndFlagsBits = 0;
              v350 = NSLocalizedString(_:tableName:bundle:value:comment:)(v347, v348, v346, v349, v503);
              v390 = v350._countAndFlagsBits;
              v416 = v350._object;

              v414 = 0;
              v13 = 0;
            }

            v419 = 0;
            v421 = 0;
            v14 = 0;
            v417 = 0;
            v17 = 0;
            v22 = 1;
            v415 = 3;
            v21 = v106._object;
            v16 = v410;
            v15 = v407;
            goto LABEL_10;
          }
        }

        v407 = v112;
        v296 = String._bridgeToObjectiveC()();
        v297 = sub_100126C04(v296, v422);

        v298 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v300 = v299;

        v301 = [v101 mainBundle];
        v498._object = 0xE000000000000000;
        v302._countAndFlagsBits = v298;
        v302._object = v300;
        v303.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v303.value._object = 0xEB00000000656C62;
        v304._countAndFlagsBits = 0;
        v304._object = 0xE000000000000000;
        v498._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v302, v303, v301, v304, v498);

        v305 = objc_allocWithZone(NSAttributedString);
        v306 = String._bridgeToObjectiveC()();

        v19 = [v305 initWithString:v306];

        goto LABEL_72;
      }

      v181 = String._bridgeToObjectiveC()();
      v182 = type metadata accessor for D2DSetupModel();
      v183 = sub_100126C04(v181, *(a1 + *(v182 + 100)));

      v184 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v186 = v185;

      v187 = objc_opt_self();
      v188 = [v187 mainBundle];
      v487._object = 0xE000000000000000;
      v189._countAndFlagsBits = v184;
      v189._object = v186;
      v190.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v190.value._object = 0xEB00000000656C62;
      v191._countAndFlagsBits = 0;
      v191._object = 0xE000000000000000;
      v487._countAndFlagsBits = 0;
      v192 = NSLocalizedString(_:tableName:bundle:value:comment:)(v189, v190, v188, v191, v487);
      v20 = v192._countAndFlagsBits;

      v193 = [v187 mainBundle];
      v488._object = 0xE000000000000000;
      v194._countAndFlagsBits = 0xD00000000000001ALL;
      v194._object = 0x800000010014BAC0;
      v195.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v195.value._object = 0xEB00000000656C62;
      v196._countAndFlagsBits = 0;
      v196._object = 0xE000000000000000;
      v488._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v194, v195, v193, v196, v488);

      v197 = objc_allocWithZone(NSAttributedString);
      v198 = String._bridgeToObjectiveC()();

      v19 = [v197 initWithString:v198];

      v21 = v192._object;
      v199 = [v187 mainBundle];
      v489._object = 0xE000000000000000;
      v200._countAndFlagsBits = 0xD00000000000001FLL;
      v200._object = 0x800000010014BAE0;
      v201.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v201.value._object = 0xEB00000000656C62;
      v202._countAndFlagsBits = 0;
      v202._object = 0xE000000000000000;
      v489._countAndFlagsBits = 0;
      v203 = NSLocalizedString(_:tableName:bundle:value:comment:)(v200, v201, v199, v202, v489);
      v14 = v203._countAndFlagsBits;
      v417 = v203._object;

      v414 = 0;
      v13 = 0;
      v390 = 0;
      v416 = 0;
      v419 = 0;
      v421 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    v22 = 1;
    v415 = 3;
    goto LABEL_10;
  }

  if (!a4)
  {
    v10 = a2;
    v11 = a3;
    v12 = 0;
LABEL_6:
    sub_10008ABCC(v10, v11, v12);
    v13 = 0;
    v390 = 0;
    v416 = 0;
    v417 = 0;
    v419 = 0;
    v421 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0xE000000000000000;
    v22 = 1;
    v414 = 0;
    v415 = 3;
    goto LABEL_10;
  }

  v23 = String._bridgeToObjectiveC()();
  v24 = *(a1 + *(type metadata accessor for D2DSetupModel() + 100));
  v25 = sub_100126C04(v23, v24);

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = objc_opt_self();
  v30 = [v29 mainBundle];
  v472._object = 0xE000000000000000;
  v31._countAndFlagsBits = v26;
  v31._object = v28;
  v32.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v32.value._object = 0xEB00000000656C62;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  v472._countAndFlagsBits = 0;
  v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v32, v30, v33, v472);

  v35 = String._bridgeToObjectiveC()();
  v36 = SFDeviceClassCodeGet();
  v37 = sub_100126C04(v35, v36);

  if (!v37)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = String._bridgeToObjectiveC()();
  }

  v38 = sub_100126C04(v37, v24);

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  v42 = [v29 mainBundle];
  v473._object = 0xE000000000000000;
  v43._countAndFlagsBits = v39;
  v43._object = v41;
  v44.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v44.value._object = 0xEB00000000656C62;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  v473._countAndFlagsBits = 0;
  v46 = NSLocalizedString(_:tableName:bundle:value:comment:)(v43, v44, v42, v45, v473);

  sub_100005DCC(&unk_1001BBB70);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_10016CCE0;
  *(v47 + 56) = &type metadata for String;
  *(v47 + 64) = sub_10000BF44();
  *(v47 + 32) = v46;
  v48 = [v29 mainBundle];
  v474._object = 0xE000000000000000;
  v49._countAndFlagsBits = 0xD000000000000017;
  v49._object = 0x800000010014B7D0;
  v50.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v50.value._object = 0xEB00000000656C62;
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  v474._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v49, v50, v48, v51, v474);

  v52 = String.init(format:arguments:)();
  v54 = v53;

  v19 = sub_1000B65D8(0xD000000000000014, 0x800000010014B7F0, a2, a3, UIFontTextStyleSubheadline, v52, v54);

  sub_10008ABCC(a2, a3, 1);
  v13 = 0;
  v390 = 0;
  v416 = 0;
  v417 = 0;
  v419 = 0;
  v421 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v414 = 0;
  v415 = 1;
  v22 = 1;
  v20 = v34._countAndFlagsBits;
  v21 = v34._object;
LABEL_10:
  v464 = v22;
  memset(v424, 0, sizeof(v424));
  sub_10001259C(v424, &qword_1001B9D00);
  *&v425 = v414;
  *(&v425 + 1) = v20;
  *&v426 = v21;
  *(&v426 + 1) = v18;
  *&v427 = v17;
  *(&v427 + 1) = v19;
  *&v428 = v15;
  *(&v428 + 1) = v16;
  *&v429 = v14;
  *(&v429 + 1) = v417;
  LODWORD(v430) = v13;
  v389 = v464;
  BYTE4(v430) = v464;
  *(&v430 + 5) = v462;
  BYTE7(v430) = v463;
  *(&v430 + 1) = v419;
  *&v431 = v421;
  *(&v431 + 1) = v390;
  *&v432 = v416;
  *(&v432 + 1) = v415;
  *&v433 = countAndFlagsBits;
  *(&v433 + 1) = object;
  *&v434 = v399;
  *(&v434 + 1) = v398;
  *&v435 = v397;
  *(&v435 + 1) = v396;
  *&v436 = v395;
  *(&v436 + 1) = v394;
  sub_100013C0C(&v425, v437);
  sub_10008AAD8(v404);
  v437[0] = v414;
  v437[1] = v20;
  v437[2] = v21;
  v438 = v18;
  v439 = v17;
  v440 = v19;
  v441 = v15;
  v442 = v16;
  v443 = v14;
  v444 = v417;
  v445 = v13;
  v446 = v389;
  v447 = v462;
  v448 = v463;
  v449 = v419;
  v450 = v421;
  v451 = v390;
  v452 = v416;
  v453 = v415;
  v454 = countAndFlagsBits;
  v455 = object;
  v456 = v399;
  v457 = v398;
  v458 = v397;
  v459 = v396;
  v460 = v395;
  v461 = v394;
  sub_1000AEB04(v437);
  v55 = v434;
  v391[8] = v433;
  v391[9] = v55;
  v56 = v436;
  v391[10] = v435;
  v391[11] = v56;
  v57 = v430;
  v391[4] = v429;
  v391[5] = v57;
  v58 = v432;
  v391[6] = v431;
  v391[7] = v58;
  v59 = v426;
  *v391 = v425;
  v391[1] = v59;
  result = *&v427;
  v61 = v428;
  v391[2] = v427;
  v391[3] = v61;
  return result;
}

unint64_t sub_1000B16D0()
{
  result = qword_1001BDB20;
  if (!qword_1001BDB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BDB20);
  }

  return result;
}

unint64_t sub_1000B1724()
{
  result = qword_1001BDB28;
  if (!qword_1001BDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BDB28);
  }

  return result;
}

__n128 sub_1000B1778(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000B1794(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1000B17DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000B1844(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000B188C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

__n128 sub_1000B18EC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000B1910(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1000B1958(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000B19B8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1000B19EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1000B1A34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000B1AA4()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BDB30);
  v1 = sub_10000D298(v0, qword_1001BDB30);
  if (qword_1001B92B8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C38D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000B1B6C()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for B332SetupViewControllerProxy();
  objc_msgSendSuper2(&v9, "viewDidLoad");
  if (qword_1001B9478 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BDB30);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "viewDidLoad", v5, 2u);
  }

  v6 = *&v1[OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_pairingAgentObserver];
  sub_1000122EC(0, &qword_1001BCE90);
  v7 = static OS_dispatch_queue.main.getter();
  [v6 setDispatchQueue:v7];

  [v6 setDelegate:v1];
  [v6 activate];
  return [*&v1[OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_setupVC] setModalPresentationStyle:0];
}

void sub_1000B1EC8(uint64_t a1)
{
  v2 = v1;
  if (qword_1001B9478 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BDB30);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "ppUpdate", v7, 2u);
  }

  v8 = *(v2 + OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_setupVC);
  v9 = OBJC_IVAR____TtC18SharingViewService23B332SetupViewController_presentedPairingVC;
  v10 = *(v8 + OBJC_IVAR____TtC18SharingViewService23B332SetupViewController_presentedPairingVC);
  if (v10)
  {

    [v10 setDeviceState:a1];
  }

  else
  {
    v11 = [objc_allocWithZone(PNPPairingViewController) init];
    [v11 setDeviceState:a1];
    v12 = *(v8 + v9);
    *(v8 + v9) = v11;
    v13 = v11;

    sub_1000B3AD8();
    swift_unknownObjectWeakAssign();
    [v13 setAppearanceDelegate:v2];
    [v13 setDelegate:v2];
  }
}

void sub_1000B2140(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_dismissed;
  if ((*(v4 + OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_dismissed) & 1) == 0)
  {
    v9 = [v4 _remoteViewControllerProxy];
    if (v9)
    {
      v10 = v9;
      *(v4 + v5) = 1;
      if (qword_1001B9478 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000D298(v11, qword_1001BDB30);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Invalidating retainRemoteViewControllerProxy", v14, 2u);
      }

      if ([v10 respondsToSelector:"invalidate"])
      {
        [v10 invalidate];
      }

      swift_unknownObjectRelease();
      if (a2)
      {
        v26 = a2;
        v27 = a3;
        aBlock = _NSConcreteStackBlock;
        v23 = 1107296256;
        v24 = sub_10001C544;
        v25 = &unk_100193910;
        v15 = _Block_copy(&aBlock);
      }

      else
      {
        v15 = 0;
      }

      v21.super_class = type metadata accessor for B332SetupViewControllerProxy();
      objc_msgSendSuper2(&v21, "dismissViewControllerAnimated:completion:", a1 & 1, v15, v4, v21.super_class);
    }

    else
    {
      if (qword_1001B9478 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_10000D298(v16, qword_1001BDB30);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "No proxy to dismiss", v19, 2u);
      }

      if (a2)
      {
        v26 = a2;
        v27 = a3;
        aBlock = _NSConcreteStackBlock;
        v23 = 1107296256;
        v24 = sub_10001C544;
        v25 = &unk_1001938E8;
        v15 = _Block_copy(&aBlock);
      }

      else
      {
        v15 = 0;
      }

      v20 = type metadata accessor for B332SetupViewControllerProxy();
      v28.receiver = v4;
      v28.super_class = v20;
      objc_msgSendSuper2(&v28, "dismissViewControllerAnimated:completion:", a1 & 1, v15, v21.receiver, v21.super_class);
    }

    _Block_release(v15);
  }
}

id sub_1000B2540(id result)
{
  if (result)
  {
    sub_1000368A8(result);
    v3 = *(v2 + 16);
    v4 = 32;
    while (v3)
    {
      v5 = *(v2 + v4);
      v4 += 8;
      --v3;
      if ((v5 & 0x10) != 0)
      {

        return [v1 dismiss:4];
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000B2668()
{
  if (qword_1001B9478 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000D298(v1, qword_1001BDB30);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    v7 = _typeName(_:qualified:)();
    v9 = sub_10002065C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s deinit", v5, 0xCu);
    sub_1000083B0(v6);
  }

  [*&v2[OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_pairingAgentObserver] invalidate];
  v10 = type metadata accessor for B332SetupViewControllerProxy();
  v13.receiver = v2;
  v13.super_class = v10;
  return objc_msgSendSuper2(&v13, "dealloc");
}

id sub_1000B287C(uint64_t a1, uint64_t a2, void *a3)
{
  v3[OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_dismissed] = 0;
  v3[OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_presented] = 0;
  v3[OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_showedAlert] = 0;
  v3[OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_shouldShowWhatsNew] = 0;
  *&v3[OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_deviceType] = 0;
  v3[OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_daemonAskedForAlert] = 0;
  v3[OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_didCompleteOneRotation] = 0;
  v6 = OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_pairingAgentObserver;
  *&v3[v6] = [objc_allocWithZone(SFB332SetupObserver) init];
  *&v3[OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_retainRemoteViewControllerProxy] = 0;
  v7 = OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_setupVC;
  type metadata accessor for B332SetupViewController();
  *&v3[v7] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for B332SetupViewControllerProxy();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_1000B2A14(void *a1)
{
  v1[OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_dismissed] = 0;
  v1[OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_presented] = 0;
  v1[OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_showedAlert] = 0;
  v1[OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_shouldShowWhatsNew] = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_deviceType] = 0;
  v1[OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_daemonAskedForAlert] = 0;
  v1[OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_didCompleteOneRotation] = 0;
  v3 = OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_pairingAgentObserver;
  *&v1[v3] = [objc_allocWithZone(SFB332SetupObserver) init];
  *&v1[OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_retainRemoteViewControllerProxy] = 0;
  v4 = OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_setupVC;
  type metadata accessor for B332SetupViewController();
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for B332SetupViewControllerProxy();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_1000B2D60()
{
  v1 = v0;
  if (qword_1001B9478 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BDB30);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "didTapToPairPencil", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_pairingAgentObserver);

  return [v6 pairTapped];
}

id sub_1000B2EA8()
{
  v1 = v0;
  if (qword_1001B9478 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BDB30);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "didTapCancelPairing", v5, 2u);
  }

  return [v1 showPairingFailure];
}

void sub_1000B3004()
{
  v1 = OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_showedAlert;
  if (*(v0 + OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_showedAlert))
  {
    return;
  }

  if (*(v0 + OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_daemonAskedForAlert) != 1)
  {
    if (qword_1001B9478 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000D298(v7, qword_1001BDB30);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(oslog, v8))
    {
      goto LABEL_18;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "showAlertIfNeeded - daemonAskedForAlert is false.";
    goto LABEL_17;
  }

  if (*(v0 + OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_didCompleteOneRotation) == 1)
  {
    v2 = v0;
    if (qword_1001B9478 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000D298(v3, qword_1001BDB30);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "showAlertIfNeeded - showing alert", v6, 2u);
    }

    [*(*(v2 + OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_setupVC) + OBJC_IVAR____TtC18SharingViewService23B332SetupViewController_presentedPairingVC) showPairingPromptAlert];
    *(v2 + v1) = 1;
    return;
  }

  if (qword_1001B9478 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000D298(v11, qword_1001BDB30);
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "showAlertIfNeeded - didCompleteOneRotation is false.";
LABEL_17:
    _os_log_impl(&_mh_execute_header, oslog, v8, v10, v9, 2u);
  }

LABEL_18:
}

id sub_1000B3314()
{
  if (qword_1001B9478 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000D298(v1, qword_1001BDB30);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412546;
    v7 = *(*(&v2->isa + OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_setupVC) + OBJC_IVAR____TtC18SharingViewService23B332SetupViewController_presentedPairingVC);
    *(v5 + 4) = v7;
    *v6 = v7;
    *(v5 + 12) = 1024;
    v8 = *(&v2->isa + OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_presented);
    v9 = v7;

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "showPairingStarted. presentedPairingVC: %@, presented: %{BOOL}d", v5, 0x12u);
    sub_10001259C(v6, &unk_1001BBA60);
  }

  else
  {

    v3 = v2;
  }

  v10 = [v2 pnpDeviceTypeForType:*(&v2->isa + OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_deviceType)];
  if (*(&v2->isa + OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_presented))
  {
    result = *(*(&v2->isa + OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_setupVC) + OBJC_IVAR____TtC18SharingViewService23B332SetupViewController_presentedPairingVC);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    *(&v2->isa + OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_presented) = 1;
    v12 = *(&v2->isa + OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_setupVC);
    [v2 presentViewController:v12 animated:0 completion:0];
    result = *(v12 + OBJC_IVAR____TtC18SharingViewService23B332SetupViewController_presentedPairingVC);
  }

  return [result pairingStartedWithDimming:1 deviceType:v10];
}

id sub_1000B35A0()
{
  v1 = v0;
  if (qword_1001B9478 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BDB30);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "showPairingSuccess", v5, 2u);
  }

  v6 = [v1 pnpDeviceTypeForType:*&v1[OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_deviceType]];
  result = *(*&v1[OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_setupVC] + OBJC_IVAR____TtC18SharingViewService23B332SetupViewController_presentedPairingVC);
  if (result)
  {
    v8 = v1[OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_shouldShowWhatsNew];

    return [result pairingSucceededWithShouldShowWhatsNew:v8 deviceType:v6];
  }

  return result;
}

id sub_1000B37B4(const char *a1, const char **a2)
{
  v5 = v2;
  if (qword_1001B9478 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000D298(v6, qword_1001BDB30);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 2u);
  }

  v10 = *(*(v5 + OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_setupVC) + OBJC_IVAR____TtC18SharingViewService23B332SetupViewController_presentedPairingVC);
  v11 = *a2;

  return [v10 v11];
}

id sub_1000B3928()
{
  v1 = v0;
  if (qword_1001B9478 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BDB30);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "showPairConsentPrompt", v5, 2u);
  }

  v1[OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_daemonAskedForAlert] = 1;

  return [v1 showAlertIfNeeded];
}

void sub_1000B3AD8()
{
  if (qword_1001B9478 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000D298(v1, qword_1001BDB30);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = *&v2[OBJC_IVAR____TtC18SharingViewService23B332SetupViewController_presentedPairingVC];
    *(v4 + 4) = v6;
    *v5 = v6;
    v7 = v6;
    _os_log_impl(&_mh_execute_header, oslog, v3, "set presentedPairingVC: %@", v4, 0xCu);
    sub_10001259C(v5, &unk_1001BBA60);
  }
}

uint64_t sub_1000B3C30(char a1)
{
  v2 = v1;
  v23.receiver = v2;
  v23.super_class = type metadata accessor for B332SetupViewController();
  objc_msgSendSuper2(&v23, "viewWillAppear:", a1 & 1);
  if (qword_1001B9478 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BDB30);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "B332SetupViewController viewWillAppear", v7, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v9 = Strong;
  v10 = [Strong _remoteViewControllerProxy];

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21 = v19;
  v22 = v20;
  v11 = *(&v20 + 1);
  if (*(&v20 + 1))
  {
    v12 = sub_10000836C(&v21, *(&v22 + 1));
    v13 = *(*(&v20 + 1) - 8);
    __chkstk_darwin(v12);
    v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v15);
    v16 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v13 + 8))(v15, v11);
    sub_1000083B0(&v21);
  }

  else
  {
LABEL_11:
    v16 = 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_retainRemoteViewControllerProxy) = v16;
    v18 = result;
    swift_unknownObjectRetain();

    result = swift_unknownObjectRelease();
  }

  if (v16)
  {
    [v16 setStatusBarHidden:1 withDuration:0.0];
    [v16 setDesiredHardwareButtonEvents:0];
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1000B3F44(char a1)
{
  v2 = v1;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for B332SetupViewController();
  objc_msgSendSuper2(&v11, "viewDidAppear:", a1 & 1);
  if (qword_1001B9478 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BDB30);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "B332SetupViewController viewDidAppear", v7, 2u);
  }

  v8 = OBJC_IVAR____TtC18SharingViewService23B332SetupViewController_presentedPairingVC;
  result = *&v2[OBJC_IVAR____TtC18SharingViewService23B332SetupViewController_presentedPairingVC];
  if (result)
  {
    result = [result setModalPresentationStyle:0];
    v10 = *&v2[v8];
    if (v10)
    {
      return [v2 presentViewController:v10 animated:1 completion:0];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1000B4104(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), SEL *a5)
{
  v8.receiver = a1;
  v8.super_class = a4();
  return objc_msgSendSuper2(&v8, *a5, a3);
}

id sub_1000B4204()
{
  if (qword_1001B9478 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000D298(v1, qword_1001BDB30);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    v7 = _typeName(_:qualified:)();
    v9 = sub_10002065C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s deinit", v5, 0xCu);
    sub_1000083B0(v6);
  }

  v10 = type metadata accessor for B332SetupViewController();
  v13.receiver = v2;
  v13.super_class = v10;
  return objc_msgSendSuper2(&v13, "dealloc");
}

void sub_1000B45F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, double a6)
{
  v7 = v6;
  v14 = sub_100005DCC(&unk_1001BBAA0);
  __chkstk_darwin(v14 - 8);
  v16 = &v25 - v15;
  if (qword_1001B9478 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000D298(v17, qword_1001BDB30);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = a6;
    _os_log_impl(&_mh_execute_header, v18, v19, "updateDeviceInfo. batteryLevel: %f", v20, 0xCu);
  }

  v21 = [objc_allocWithZone(PNPDeviceState) init];
  [v21 setDeviceType:{objc_msgSend(v7, "pnpDeviceTypeForType:", a1)}];
  [v21 setBatteryLevel:a6];
  [v21 setBatteryLevelUnknown:a6 < 0.0];
  [v21 setIsCharging:a4 & 1];
  [v21 setEdge:a2];
  sub_10000BE6C(a5, v16);
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  isa = 0;
  if ((*(v23 + 48))(v16, 1, v22) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v23 + 8))(v16, v22);
  }

  [v21 setIdentifier:isa];

  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    [v21 setOrientation:a3];
    sub_1000B1EC8(v21);
  }
}

id sub_1000B48D0()
{
  v1 = v0;
  if (qword_1001B9478 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BDB30);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "dismissUI", v5, 2u);
  }

  return [v1 dismiss:0];
}

void sub_1000B49CC()
{
  [v0 dismiss:0];
  if (qword_1001B9478 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000D298(v1, qword_1001BDB30);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v2, "viewControllerDidDismiss", v3, 2u);
  }
}

void sub_1000B4AC8()
{
  if (qword_1001B9478 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000D298(v0, qword_1001BDB30);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "B332SetupViewController dismiss", v3, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong dismissViewControllerAnimated:0 completion:0];
  }
}

uint64_t sub_1000B4C00()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B4C38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000B4C60()
{
  v46.receiver = v0;
  v46.super_class = type metadata accessor for D2DSetupVisualAuthViewController();
  objc_msgSendSuper2(&v46, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 112];
  v2 = *&v0[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 144];
  v54 = *&v0[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 128];
  v55 = v2;
  v3 = *&v0[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 176];
  v4 = *&v0[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 144];
  v56 = *&v0[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 160];
  v57 = v3;
  v5 = *&v0[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 80];
  v50 = *&v0[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 64];
  v51 = v5;
  v6 = *&v0[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 112];
  v7 = *&v0[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 80];
  v52 = *&v0[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 96];
  v53 = v6;
  v8 = *&v0[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 16];
  v47[0] = *&v0[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel];
  v47[1] = v8;
  v9 = *&v0[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 48];
  v10 = v9;
  v48 = *&v0[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 32];
  v49 = v9;
  v11 = *&v0[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 16];
  v42 = *&v0[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel];
  v43 = v11;
  v12 = *&v0[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 48];
  v44 = *&v0[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 32];
  v45 = v12;
  v13 = *&v0[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 128];
  v14 = *&v0[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 160];
  v39 = *&v0[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 144];
  v40 = v14;
  v41 = *&v0[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 176];
  v15 = *&v0[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 96];
  v35 = *&v0[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 80];
  v36 = v15;
  v37 = *&v0[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 112];
  v38 = v13;
  v58[2] = v48;
  v58[3] = v10;
  v58[0] = v47[0];
  v58[1] = v8;
  v58[5] = v7;
  v58[6] = v52;
  v16 = *&v0[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 176];
  v58[10] = v56;
  v58[11] = v16;
  v58[8] = v54;
  v58[9] = v4;
  v17 = v50;
  v58[7] = v1;
  v58[4] = v50;
  if (sub_100013CE0(v58) == 1)
  {
    v23 = v42;
    v24 = v43;
    v25 = v44;
    v26 = v45;
    v27 = v17;
    v32 = v39;
    v33 = v40;
    v34 = v41;
    v28 = v35;
    v29 = v36;
    v30 = v37;
    v31 = v38;
    sub_100019558(v47, v22);
    sub_1000195C8(&v23);
  }

  else
  {
    v23 = v42;
    v24 = v43;
    v25 = v44;
    v26 = v45;
    v27 = v17;
    v32 = v39;
    v33 = v40;
    v34 = v41;
    v28 = v35;
    v29 = v36;
    v30 = v37;
    v31 = v38;
    sub_100019558(v47, v22);

    sub_1000195C8(&v23);
    if (*(&v17 + 1))
    {
      v18 = swift_allocObject();
      swift_unknownObjectUnownedInit();

      v19 = String._bridgeToObjectiveC()();

      v22[4] = sub_1000B5170;
      v22[5] = v18;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 1107296256;
      v22[2] = sub_10001BE90;
      v22[3] = &unk_100193988;
      v20 = _Block_copy(v22);
      v21 = [objc_opt_self() actionWithTitle:v19 style:1 handler:v20];

      _Block_release(v20);
    }
  }
}

void sub_1000B4F30()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000AE364();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1000B4FE4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  [v3 showConfirmationRing];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000AE344(a1, a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1000B5074()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for D2DSetupVisualAuthViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for D2DSetupVisualAuthViewController()
{
  result = qword_1001BDDF0;
  if (!qword_1001BDDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B5138()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B5178(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000B5190()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for D2DSetupFinishViewController();
  objc_msgSendSuper2(&v21, "viewDidLoad");
  v1 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:101];
  [v1 startAnimating];
  v2 = v1;
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [v0 contentView];
  [v3 addSubview:v2];

  v4 = [v0 contentView];
  v5 = [v4 mainContentGuide];

  v6 = objc_opt_self();
  sub_100005DCC(&qword_1001BBB00);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10016D4A0;
  v8 = [v2 topAnchor];
  v9 = [v5 topAnchor];
  v10 = [v8 constraintGreaterThanOrEqualToAnchor:v9];

  *(v7 + 32) = v10;
  v11 = [v2 bottomAnchor];
  v12 = [v5 bottomAnchor];
  v13 = [v11 constraintLessThanOrEqualToAnchor:v12];

  *(v7 + 40) = v13;
  v14 = [v2 centerXAnchor];
  v15 = [v5 centerXAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v7 + 48) = v16;
  v17 = [v2 centerYAnchor];

  v18 = [v5 centerYAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v7 + 56) = v19;
  sub_10000D1F4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 activateConstraints:isa];
}

void sub_1000B5514(void *a1, uint64_t a2, uint64_t a3, const char **a4, void (*a5)(uint64_t, uint64_t))
{
  v12.receiver = a1;
  v12.super_class = type metadata accessor for D2DSetupFinishViewController();
  v8 = *a4;
  v9 = v12.receiver;
  objc_msgSendSuper2(&v12, v8, a3);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    a5(Strong, v11);
    swift_unknownObjectRelease();
  }
}

id sub_1000B55EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for D2DSetupFinishViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000B5694(unint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return [*v1 setDiscoveryFlags:result];
  }

  __break(1u);
  return result;
}

void sub_1000B56FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v8 = *v6;
  if (a1)
  {
    v10[4] = a1;
    v10[5] = a2;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10001BE90;
    v10[3] = a5;
    v9 = _Block_copy(v10);
  }

  else
  {
    v9 = 0;
  }

  [v8 *a6];
  _Block_release(v9);
}

uint64_t sub_1000B57A8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[4] = sub_1000B59D4;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10001BF68;
  v9[3] = &unk_100193AA8;
  v7 = _Block_copy(v9);
  sub_100024138(a1);

  [v5 setDeviceChangedHandler:v7];
  _Block_release(v7);
  return sub_100012050(a1);
}

void sub_1000B58A4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *v2;
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_1000E4BD0;
    v5[3] = &unk_100193A58;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
    v3 = *v2;
  }

  [v3 activateWithCompletion:v4];
  _Block_release(v4);
}

uint64_t sub_1000B597C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B5994()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B59D4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1000B5A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000B5B04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AuthenticateAccountsModel()
{
  result = qword_1001BDF30;
  if (!qword_1001BDF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B5C0C()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100008998();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000B5CD4(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_100005DCC(&unk_1001BBAA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v50 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AuthenticateAccountsModel();
  v12 = &a2[v11[11]];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &a2[v11[12]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &a2[v11[13]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v51 = 0xD000000000000010;
  v52 = 0x8000000100145050;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v15 = sub_100032C7C(v53), (v16 & 1) != 0))
  {
    sub_10000BFEC(*(a1 + 56) + 32 * v15, v54);
    sub_10000BF98(v53);
    if (swift_dynamicCast())
    {
      UUID.init(uuidString:)();

      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        v49 = *(v8 + 32);
        v49(v10, v6, v7);
        v49(a2, v10, v7);
        goto LABEL_12;
      }

      sub_10000BEDC(v6);
    }
  }

  else
  {
    sub_10000BF98(v53);
  }

  if (qword_1001B9480 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000D298(v17, qword_1001BDEC0);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v53[0] = v21;
    *v20 = 136315138;
    v22 = Dictionary.description.getter();
    v24 = sub_10002065C(v22, v23, v53);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "No device identifier. {userInfo: %s}", v20, 0xCu);
    sub_1000083B0(v21);
  }

  UUID.init()();
LABEL_12:
  *&v54[0] = 0x726174536F747561;
  *(&v54[0] + 1) = 0xE900000000000074;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v25 = sub_100032C7C(v53), (v26 & 1) == 0))
  {
    sub_10000BF98(v53);
    goto LABEL_17;
  }

  sub_10000BFEC(*(a1 + 56) + 32 * v25, v54);
  sub_10000BF98(v53);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v27 = 0;
    goto LABEL_18;
  }

  v27 = v51;
LABEL_18:
  a2[v11[5]] = v27;
  v51 = 0x556E6F6973736573;
  v52 = 0xEB00000000444955;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v28 = sub_100032C7C(v53), (v29 & 1) == 0))
  {
    sub_10000BF98(v53);
    goto LABEL_23;
  }

  sub_10000BFEC(*(a1 + 56) + 32 * v28, v54);
  sub_10000BF98(v53);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:
    v30 = 0;
    v31 = 0xE000000000000000;
    goto LABEL_24;
  }

  v30 = v51;
  v31 = v52;
LABEL_24:
  v32 = &a2[v11[6]];
  *v32 = v30;
  v32[1] = v31;
  *&v54[0] = 1769173874;
  *(&v54[0] + 1) = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v33 = sub_100032C7C(v53), (v34 & 1) == 0))
  {
    sub_10000BF98(v53);
    goto LABEL_29;
  }

  sub_10000BFEC(*(a1 + 56) + 32 * v33, v54);
  sub_10000BF98(v53);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    v35 = 0;
    goto LABEL_30;
  }

  v35 = v51;
LABEL_30:
  *&a2[v11[7]] = v35;
  v51 = 0xD000000000000010;
  v52 = 0x800000010014BE70;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v36 = sub_100032C7C(v53), (v37 & 1) == 0))
  {
    sub_10000BF98(v53);
LABEL_37:
    if (qword_1001B9480 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000D298(v38, qword_1001BDEC0);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v51 = v42;
      *v41 = 136446210;
      *&v54[0] = 0xD000000000000010;
      *(&v54[0] + 1) = 0x800000010014BE70;
      AnyHashable.init<A>(_:)();
      if (*(a1 + 16) && (v43 = sub_100032C7C(v53), (v44 & 1) != 0))
      {
        sub_10000BFEC(*(a1 + 56) + 32 * v43, v54);
        sub_10000BF98(v53);
      }

      else
      {

        sub_10000BF98(v53);
        memset(v54, 0, sizeof(v54));
      }

      sub_100005DCC(&qword_1001BBB40);
      v45 = String.init<A>(describing:)();
      v47 = sub_10002065C(v45, v46, &v51);

      *(v41 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v39, v40, "Invalid device action type, assuming v1. {deviceActionType: %{public}s}", v41, 0xCu);
      sub_1000083B0(v42);
    }

    else
    {
    }

    goto LABEL_47;
  }

  sub_10000BFEC(*(a1 + 56) + 32 * v36, v54);
  sub_10000BF98(v53);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_37;
  }

  if (v51 == 43)
  {

    v48 = 1;
    goto LABEL_48;
  }

  if (v51 != 32)
  {
    goto LABEL_37;
  }

LABEL_47:
  v48 = 0;
LABEL_48:
  a2[v11[8]] = v48;
  *&a2[v11[9]] = 0;
  *&a2[v11[10]] = 0;
}

uint64_t sub_1000B6510()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BDEC0);
  v1 = sub_10000D298(v0, qword_1001BDEC0);
  if (qword_1001B92D8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C3930);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000B65D8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v41[0] = a5;
  v13 = sub_100005DCC(&qword_1001BDF88);
  __chkstk_darwin(v13 - 8);
  v15 = v41 - v14;
  v44 = a6;
  v45 = a7;
  v42 = a1;
  v43 = a2;
  v41[10] = a3;
  v41[11] = a4;
  sub_1000B16D0();
  v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v18 = v17;
  v44 = v16;
  v45 = v17;
  v42 = a3;
  v43 = a4;
  v19 = type metadata accessor for Locale();
  (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  v20 = StringProtocol.range<A>(of:options:range:locale:)();
  v22 = v21;
  LOBYTE(a4) = v23;
  sub_10001259C(v15, &qword_1001BDF88);
  if ((a4 & 1) != 0 || (v20 ^ v22) < 0x4000)
  {
    v39 = objc_allocWithZone(NSAttributedString);
    v38 = String._bridgeToObjectiveC()();

    v37 = [v39 initWithString:v38];
  }

  else
  {
    v44 = v20;
    v45 = v22;
    v42 = v16;
    v43 = v18;

    sub_100005DCC(&qword_1001BDF90);
    sub_1000B69D8();
    v24 = _NSRange.init<A, B>(_:in:)();
    v26 = v25;
    v27 = objc_opt_self();
    v28 = [v27 preferredFontForTextStyle:v41[0]];
    [v28 pointSize];
    v30 = v29;

    sub_100005DCC(&qword_1001B9F48);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10016CCE0;
    *(inited + 32) = NSFontAttributeName;
    v32 = NSFontAttributeName;
    v33 = [v27 systemFontOfSize:v30];
    *(inited + 64) = sub_1000B6A3C();
    *(inited + 40) = v33;
    sub_100004E20(inited);
    swift_setDeallocating();
    sub_10001259C(inited + 32, &qword_1001B9618);
    v34 = objc_allocWithZone(NSMutableAttributedString);
    v35 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_1000169FC();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v37 = [v34 initWithString:v35 attributes:isa];

    v38 = [v27 boldSystemFontOfSize:v30];
    [v37 addAttribute:v32 value:v38 range:{v24, v26}];
  }

  return v37;
}

unint64_t sub_1000B69D8()
{
  result = qword_1001BDF98;
  if (!qword_1001BDF98)
  {
    sub_1000072B0(&qword_1001BDF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BDF98);
  }

  return result;
}

unint64_t sub_1000B6A3C()
{
  result = qword_1001BDFA0;
  if (!qword_1001BDFA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001BDFA0);
  }

  return result;
}

uint64_t sub_1000B6A88()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BDFA8);
  v1 = sub_10000D298(v0, qword_1001BDFA8);
  if (qword_1001B92D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C3918);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t *sub_1000B6B50@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1000B6C18(void *a1)
{
  v3 = v1;
  v5 = sub_100005DCC(&qword_1001BE020);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_10000836C(a1, a1[3]);
  sub_1000B8758();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = *(v3 + 16);
    v11[0] = 1;
    sub_1000B87AC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + 24);
    v13 = v12;
    v11[23] = 2;
    sub_1000B8800(&v13, v11);
    sub_10002535C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100025404(v12, *(&v12 + 1));
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1000B6E1C()
{
  v1 = 0x6574617473;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000B6EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B8870(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B6ECC(uint64_t a1)
{
  v2 = sub_1000B8758();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B6F08(uint64_t a1)
{
  v2 = sub_1000B8758();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000B6F44@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000B89DC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1000B6FA0(uint64_t *a1, void (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v8 = v3;
    a2();
    swift_allocObject();
    v6 = a3();
    *(v8 + v4) = v6;
  }

  return v6;
}

void sub_1000B70EC(uint64_t a1, void *a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v5;

  v6 = a2;
  v4();
}

void sub_1000B71A4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v5 = isa;
  (*(a3 + 16))(a3);
}

uint64_t sub_1000B72BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000B7380;
  v9[3] = &unk_100193B98;
  v6 = _Block_copy(v9);
  v7 = *(a4 + 16);

  v7(a4, a1, v6);
  _Block_release(v6);
}

uint64_t sub_1000B7380(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {

    v4 = v2;
    v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {

    v6 = 0xF000000000000000;
  }

  v3(v2, v6);
  sub_100025404(v2, v6);
}

id sub_1000B7418()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC18SharingViewService32HeadphoneDigitalEngravingManager____lazy_storage___decoder] = 0;
  *&v0[OBJC_IVAR____TtC18SharingViewService32HeadphoneDigitalEngravingManager____lazy_storage___encoder] = 0;
  v2 = &v0[OBJC_IVAR____TtC18SharingViewService32HeadphoneDigitalEngravingManager_fetchEngravingDataHandler];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = objc_allocWithZone(NSUserDefaults);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithSuiteName:v4];

  if (!v5)
  {
    v5 = [objc_opt_self() standardUserDefaults];
  }

  *&v0[OBJC_IVAR____TtC18SharingViewService32HeadphoneDigitalEngravingManager_localStorage] = v5;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

void sub_1000B7534(void *a1)
{
  v3 = [objc_allocWithZone(SFHeadphoneProduct) initWithProductID:{objc_msgSend(a1, "productIdentifier")}];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 supportsDigitalEngraving];

    if (v5)
    {
      v6 = [a1 addressString];
      if (v6)
      {
        v7 = v6;
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;

        sub_1000B7760(v8, v10, v14);
        if (v14[1])
        {
          sub_1000B84A0(v14);
        }

        else
        {
          v15[0] = v8;
          v15[1] = v10;
          v16 = 0;
          v17 = xmmword_10016C900;
          v18 = 0;

          sub_1000B7B44(v15);

          sub_100025404(0, 0xF000000000000000);
          v11 = *(v1 + OBJC_IVAR____TtC18SharingViewService32HeadphoneDigitalEngravingManager_fetchEngravingDataHandler);
          if (v11)
          {
            v12 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v13 = swift_allocObject();
            v13[2] = v8;
            v13[3] = v10;
            v13[4] = v12;
            sub_100024138(v11);

            v11(a1, sub_1000B8494, v13);
            sub_100012050(v11);
          }

          else
          {
          }
        }
      }
    }
  }
}

void sub_1000B7760(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + OBJC_IVAR____TtC18SharingViewService32HeadphoneDigitalEngravingManager_localStorage);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 dictionaryForKey:v8];

  v10 = 0uLL;
  if (!v9)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_9;
  }

  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v11 + 16) || (v12 = sub_100032CC0(a1, a2), (v13 & 1) == 0))
  {

    goto LABEL_7;
  }

  sub_10000BFEC(*(v11 + 56) + 32 * v12, v20);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v10 = 0uLL;
    goto LABEL_9;
  }

  v15 = v24;
  v14 = v25;
  sub_1000B6FA0(&OBJC_IVAR____TtC18SharingViewService32HeadphoneDigitalEngravingManager____lazy_storage___decoder, &type metadata accessor for JSONDecoder, &JSONDecoder.init());
  sub_1000B85C4();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_1000083FC(v15, v14);

  v16 = v20[0];
  v17 = v20[1];
  v18 = v21;
  v10 = v22;
  v19 = v23;
LABEL_9:
  *a3 = v16;
  *(a3 + 8) = v17;
  *(a3 + 16) = v18;
  *(a3 + 24) = v10;
  *(a3 + 40) = v19;
}

void sub_1000B7B44(uint64_t a1)
{
  v2 = v1;
  sub_1000B6FA0(&OBJC_IVAR____TtC18SharingViewService32HeadphoneDigitalEngravingManager____lazy_storage___encoder, &type metadata accessor for JSONEncoder, &JSONEncoder.init());
  v4 = *(a1 + 16);
  v31 = *a1;
  v32 = v4;
  v33 = *(a1 + 32);
  sub_1000B8508();
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;

  v8 = OBJC_IVAR____TtC18SharingViewService32HeadphoneDigitalEngravingManager_localStorage;
  v9 = *(v1 + OBJC_IVAR____TtC18SharingViewService32HeadphoneDigitalEngravingManager_localStorage);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 dictionaryForKey:v10];

  if (v11)
  {
    v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v12 = &_swiftEmptyDictionarySingleton;
  }

  v14 = *a1;
  v13 = *(a1 + 8);
  *(&v32 + 1) = &type metadata for Data;
  *&v31 = v5;
  *(&v31 + 1) = v7;
  sub_100005E14(&v31, v30);

  sub_100005E64(v5, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v12;
  sub_1000359C0(v30, v14, v13, isUniquelyReferenced_nonNull_native);
  v16 = *(v2 + v8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v18 = String._bridgeToObjectiveC()();
  [v16 setObject:isa forKey:{v18, v29}];

  if (qword_1001B9488 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000D298(v19, qword_1001BDFA8);
  sub_100005E64(v5, v7);
  sub_1000B855C(a1, &v31);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  sub_1000083FC(v5, v7);
  sub_1000B8594(a1);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *&v30[0] = swift_slowAlloc();
    *v22 = 136315394;
    *&v31 = v5;
    *(&v31 + 1) = v7;
    sub_100005E64(v5, v7);
    v23 = String.init<A>(reflecting:)();
    v25 = sub_10002065C(v23, v24, v30);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    *&v31 = v14;
    *(&v31 + 1) = v13;
    v26 = String.init<A>(reflecting:)();
    v28 = sub_10002065C(v26, v27, v30);

    *(v22 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "Storing engraving data received from AACP %s for:%s", v22, 0x16u);
    swift_arrayDestroy();

    sub_1000083FC(v5, v7);
  }

  else
  {

    sub_1000083FC(v5, v7);
  }
}

void sub_1000B80F8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    v29 = v4;
    v30 = v5;
    sub_100005E64(a1, a2);
    if (qword_1001B9488 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000D298(v10, qword_1001BDFA8);
    sub_100005E64(a1, a2);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    sub_100025404(a1, a2);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22[0] = v21;
      *v13 = 136315138;
      v23 = a1;
      v24 = a2;
      sub_100005E64(a1, a2);
      v14 = String.init<A>(reflecting:)();
      v16 = a4;
      v17 = a3;
      v18 = sub_10002065C(v14, v15, v22);

      *(v13 + 4) = v18;
      a3 = v17;
      a4 = v16;
      _os_log_impl(&_mh_execute_header, v11, v12, "Engraving data received from AACP %s", v13, 0xCu);
      sub_1000083B0(v21);
    }

    v23 = a3;
    v24 = a4;
    v25 = 1;
    v26 = a1;
    v27 = a2;
    v28 = 0;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20 = Strong;

      sub_1000B7B44(&v23);

      sub_100025404(a1, a2);
    }

    else
    {
      sub_100025404(a1, a2);
    }
  }
}

uint64_t sub_1000B841C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B8454()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B84A0(uint64_t a1)
{
  v2 = sub_100005DCC(&qword_1001BE008);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000B8508()
{
  result = qword_1001BE010;
  if (!qword_1001BE010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BE010);
  }

  return result;
}

unint64_t sub_1000B85C4()
{
  result = qword_1001BE018;
  if (!qword_1001BE018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BE018);
  }

  return result;
}

uint64_t sub_1000B8620(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B8638()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B8678(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_1000B86A0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000B86B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1000B86FC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1000B8758()
{
  result = qword_1001BE028;
  if (!qword_1001BE028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BE028);
  }

  return result;
}

unint64_t sub_1000B87AC()
{
  result = qword_1001BE030;
  if (!qword_1001BE030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BE030);
  }

  return result;
}

uint64_t sub_1000B8800(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005DCC(&unk_1001BE190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B8870(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000010014BFE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010014C000 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010014C020 == a2)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1000B89DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100005DCC(&qword_1001BE038);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_10000836C(a1, a1[3]);
  sub_1000B8758();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000083B0(a1);
  }

  LOBYTE(v19) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v18 = v9;
  v22 = 1;
  sub_1000B8CB8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v19;
  v22 = 2;
  sub_1000251FC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v21 = v12;
  v13 = v20;
  v17 = v19;
  LOBYTE(v19) = 3;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);

  v15 = v17;
  sub_100025480(v17, v13);
  sub_1000083B0(a1);

  result = sub_100025404(v15, v13);
  *a2 = v18;
  *(a2 + 8) = v11;
  *(a2 + 16) = v21;
  *(a2 + 24) = v15;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  return result;
}

unint64_t sub_1000B8CB8()
{
  result = qword_1001BE040;
  if (!qword_1001BE040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BE040);
  }

  return result;
}

unint64_t sub_1000B8D30()
{
  result = qword_1001BE048;
  if (!qword_1001BE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BE048);
  }

  return result;
}

unint64_t sub_1000B8D88()
{
  result = qword_1001BE050;
  if (!qword_1001BE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BE050);
  }

  return result;
}

unint64_t sub_1000B8DE0()
{
  result = qword_1001BE058;
  if (!qword_1001BE058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BE058);
  }

  return result;
}

unint64_t sub_1000B8E38()
{
  result = qword_1001BE060;
  if (!qword_1001BE060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BE060);
  }

  return result;
}

unint64_t sub_1000B8E8C()
{
  result = qword_1001BE068;
  if (!qword_1001BE068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BE068);
  }

  return result;
}

void sub_1000B8EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 144);
  v70 = *(a3 + 128);
  v71 = v5;
  v6 = *(a3 + 176);
  v72 = *(a3 + 160);
  v73 = v6;
  v7 = *(a3 + 80);
  v66 = *(a3 + 64);
  v67 = v7;
  v8 = *(a3 + 112);
  v68 = *(a3 + 96);
  v69 = v8;
  v9 = *(a3 + 16);
  v62 = *a3;
  v63 = v9;
  v10 = *(a3 + 48);
  v64 = *(a3 + 32);
  v65 = v10;
  nullsub_4(&v62);
  v11 = &v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel];
  v12 = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 144];
  v74[8] = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 128];
  v74[9] = v12;
  v13 = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 176];
  v74[10] = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 160];
  v74[11] = v13;
  v14 = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 80];
  v74[4] = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 64];
  v74[5] = v14;
  v15 = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 112];
  v74[6] = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 96];
  v74[7] = v15;
  v16 = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 16];
  v74[0] = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel];
  v74[1] = v16;
  v17 = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 48];
  v74[2] = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 32];
  v74[3] = v17;
  v18 = v71;
  *(v11 + 8) = v70;
  *(v11 + 9) = v18;
  v19 = v73;
  *(v11 + 10) = v72;
  *(v11 + 11) = v19;
  v20 = v67;
  *(v11 + 4) = v66;
  *(v11 + 5) = v20;
  v21 = v69;
  *(v11 + 6) = v68;
  *(v11 + 7) = v21;
  v22 = v63;
  *v11 = v62;
  *(v11 + 1) = v22;
  v23 = v65;
  *(v11 + 2) = v64;
  *(v11 + 3) = v23;
  sub_100013C0C(a3, aBlock);
  sub_1000195C8(v74);
  v24 = String._bridgeToObjectiveC()();
  [v3 setTitle:v24];

  [v3 setAttributedSubtitle:*(a3 + 40)];
  v25 = *(a3 + 24);
  if (v25)
  {
    v26 = OBJC_IVAR____TtC18SharingViewService26D2DSetupWiFiViewController_imageView;
    v27 = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupWiFiViewController_imageView];
    if (v27)
    {
      v28 = v27;
      [v28 setImage:v25];
      v29 = *(a3 + 32);
      if (v29)
      {
        v30 = v29;
        [v28 setTintColor:v30];
      }
    }

    else
    {
      v57 = [objc_allocWithZone(UIImageView) initWithImage:v25];
      v58 = *&v3[v26];
      *&v3[v26] = v57;

      if (*(a3 + 32))
      {
        v59 = *&v3[v26];
        if (!v59)
        {
LABEL_8:

          goto LABEL_9;
        }

        [v59 setTintColor:?];
      }
    }

    v31 = *&v3[v26];
    if (v31)
    {
      v32 = v31;
      [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
      v33 = [v3 contentView];
      [v33 addSubview:v32];

      v34 = [v3 contentView];
      v35 = [v34 mainContentGuide];

      v60 = objc_opt_self();
      sub_100005DCC(&qword_1001BBB00);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_10016D4A0;
      v37 = [v32 topAnchor];
      v38 = [v35 topAnchor];
      v39 = [v37 constraintGreaterThanOrEqualToAnchor:v38];

      *(v36 + 32) = v39;
      v40 = [v32 bottomAnchor];
      v41 = [v35 bottomAnchor];
      v42 = [v40 constraintLessThanOrEqualToAnchor:v41];

      *(v36 + 40) = v42;
      v43 = [v32 centerXAnchor];
      v44 = [v35 centerXAnchor];
      v45 = [v43 constraintEqualToAnchor:v44];

      *(v36 + 48) = v45;
      v46 = [v32 centerYAnchor];

      v47 = [v35 centerYAnchor];
      v48 = [v46 constraintEqualToAnchor:v47];

      *(v36 + 56) = v48;
      sub_10000D1F4();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v60 activateConstraints:isa];
    }

    goto LABEL_8;
  }

LABEL_9:
  v50 = OBJC_IVAR____TtC18SharingViewService26D2DSetupWiFiViewController_action;
  if (!*&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupWiFiViewController_action])
  {
    if (*(a3 + 56))
    {
      v51 = swift_allocObject();
      swift_unknownObjectUnownedInit();

      v52 = String._bridgeToObjectiveC()();
      aBlock[4] = sub_1000B96C0;
      aBlock[5] = v51;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001BE90;
      aBlock[3] = &unk_100193DE0;
      v53 = _Block_copy(aBlock);
      v54 = [objc_opt_self() actionWithTitle:v52 style:0 handler:v53];

      _Block_release(v53);

      v55 = [v3 addAction:v54];

      v56 = *&v3[v50];
      *&v3[v50] = v55;
    }
  }
}

void sub_1000B94B4()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v0 = *&Strong[OBJC_IVAR____TtC18SharingViewService26D2DSetupWiFiViewController_action];
  if (v0)
  {
    [v0 setEnabled:0];
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000AE560();
    swift_unknownObjectRelease();
  }
}

void sub_1000B95A4()
{
  v1 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupWiFiViewController_action);
}

id sub_1000B95E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for D2DSetupWiFiViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000B9688()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B96C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000B96E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000B98CC();
  }
}

uint64_t sub_1000B9798(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  [v1 showActivityIndicatorWithStatus:v3];

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = [a1 text];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000E82C8();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000B98CC()
{
  v1 = &v0[OBJC_IVAR____TtC18SharingViewService38AuthenticateAccountsAuthViewController_viewModel];
  v2 = String._bridgeToObjectiveC()();
  [v0 setTitle:v2];

  v3 = String._bridgeToObjectiveC()();
  [v0 setSubtitle:v3];

  [v0 setNumberOfDigits:*(v1 + 5)];
  [v0 setDismissalType:*(v1 + 6)];
  if (v1[32] == 1)
  {
    v5 = String._bridgeToObjectiveC()();
    [v0 showActivityIndicatorWithStatus:?];
  }

  else
  {
    [v0 hideActivityIndicator];
    v4 = [v0 passcodeEntryView];
    v5 = String._bridgeToObjectiveC()();
    [v4 setText:?];
  }
}

id sub_1000B9A40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AuthenticateAccountsAuthViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000B9AF4(uint64_t a1)
{
  v1 = a1;
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v37 = _swiftEmptyArrayStorage;
    sub_100020C44(0, v2 & ~(v2 >> 63), 0);
    v32 = _swiftEmptyArrayStorage;
    if (v31)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v34 = v3;
    v35 = v4;
    v36 = v31 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v29 = v1 + 56;
      v28 = v1 + 64;
      v30 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v9 = v34;
        v8 = v35;
        v10 = v36;
        v11 = v1;
        sub_1000DD6A4(v34, v35, v36, v1, &qword_1001BC220);
        v13 = v12;
        v14 = [v12 events];

        v15 = v32;
        v37 = v32;
        v17 = v32[2];
        v16 = v32[3];
        if (v17 >= v16 >> 1)
        {
          sub_100020C44((v16 > 1), v17 + 1, 1);
          v15 = v37;
        }

        v15[2] = v17 + 1;
        v15[v17 + 4] = v14;
        v32 = v15;
        if (v31)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v30;
          sub_100005DCC(&qword_1001BDDC0);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v6(v33, 0);
          if (v5 == v30)
          {
LABEL_32:
            sub_10006710C(v34, v35, v36);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v18 = 1 << *(v11 + 32);
          if (v9 >= v18)
          {
            goto LABEL_36;
          }

          v19 = v9 >> 6;
          v20 = *(v29 + 8 * (v9 >> 6));
          if (((v20 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v8)
          {
            goto LABEL_38;
          }

          v21 = v20 & (-2 << (v9 & 0x3F));
          if (v21)
          {
            v18 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v30;
          }

          else
          {
            v22 = v19 << 6;
            v23 = v19 + 1;
            v24 = (v28 + 8 * v19);
            v2 = v30;
            while (v23 < (v18 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                sub_10006710C(v9, v8, 0);
                v18 = __clz(__rbit64(v25)) + v22;
                goto LABEL_31;
              }
            }

            sub_10006710C(v9, v8, 0);
          }

LABEL_31:
          v27 = *(v1 + 36);
          v34 = v18;
          v35 = v27;
          v36 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_1000B9E58(uint64_t a1)
{
  if (a1)
  {
    sub_1000122EC(0, &qword_1001BC220);
    sub_1000A1F20(&qword_1001BBC40, &qword_1001BC220);
    return Set.description.getter();
  }

  else
  {
    _StringGuts.grow(_:)(17);

    sub_100005DCC(&qword_1001BE268);
    v2._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v2);

    v3._countAndFlagsBits = 0x656E6F6E2E3ELL;
    v3._object = 0xE600000000000000;
    String.append(_:)(v3);
    return 0x6C616E6F6974704FLL;
  }
}

uint64_t sub_1000B9F5C(uint64_t a1)
{
  if (a1)
  {
    sub_1000122EC(0, &unk_1001BE1F0);
    return Array.description.getter();
  }

  else
  {
    _StringGuts.grow(_:)(17);

    sub_100005DCC(&unk_1001BE210);
    v2._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v2);

    v3._countAndFlagsBits = 0x656E6F6E2E3ELL;
    v3._object = 0xE600000000000000;
    String.append(_:)(v3);
    return 0x6C616E6F6974704FLL;
  }
}

char *sub_1000BA034@<X0>(int a1@<W0>, unint64_t a2@<X1>, char *a3@<X3>, unint64_t a4@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  v4 = a2;
  if (!a2)
  {
    return _swiftEmptyArrayStorage;
  }

  LODWORD(v5) = a1;
  a3 = sub_100020B10(0, 1, 1, _swiftEmptyArrayStorage);
  v7 = *(a3 + 2);
  a4 = *(a3 + 3);
  v6 = v7 + 1;
  if (v7 >= a4 >> 1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    *(a3 + 2) = v6;
    a3[v7 + 32] = v5;
    if (v4 == 1)
    {
      break;
    }

    v8 = *(a3 + 3);
    if (v6 >= v8 >> 1)
    {
      a3 = sub_100020B10((v8 > 1), v7 + 2, 1, a3);
    }

    a4 = v5 >> 8;
    *(a3 + 2) = v7 + 2;
    a3[v6 + 32] = BYTE1(v5);
    v5 = v4 - 2;
    if (v4 == 2)
    {
      break;
    }

    v6 = v7 + 34;
    for (i = 0xFFFFFFFFFFFFFFELL; i; --i)
    {
      a4 = *(a3 + 3);
      v4 = v6 - 31;
      if (v6 - 32 >= a4 >> 1)
      {
        a3 = sub_100020B10((a4 > 1), v6 - 31, 1, a3);
      }

      *(a3 + 2) = v4;
      a3[v6++] = 0;
      if (!--v5)
      {
        return a3;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    a3 = sub_100020B10((a4 > 1), v6, 1, a3);
  }

  return a3;
}

char *sub_1000BA17C@<X0>(int a1@<W0>, unint64_t a2@<X1>, char *a3@<X3>, unint64_t a4@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v4 = a2;
  if (!a2)
  {
    return _swiftEmptyArrayStorage;
  }

  LODWORD(v5) = a1;
  a3 = sub_100020B10(0, 1, 1, _swiftEmptyArrayStorage);
  v7 = *(a3 + 2);
  a4 = *(a3 + 3);
  i = v7 + 1;
  if (v7 >= a4 >> 1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    *(a3 + 2) = i;
    a3[v7 + 32] = v5;
    if (v4 == 1)
    {
      break;
    }

    v9 = *(a3 + 2);
    v8 = *(a3 + 3);
    if (v9 >= v8 >> 1)
    {
      a3 = sub_100020B10((v8 > 1), v9 + 1, 1, a3);
    }

    *(a3 + 2) = v9 + 1;
    a3[v9 + 32] = BYTE1(v5);
    if (v4 == 2)
    {
      break;
    }

    v11 = *(a3 + 2);
    v10 = *(a3 + 3);
    if (v11 >= v10 >> 1)
    {
      a3 = sub_100020B10((v10 > 1), v11 + 1, 1, a3);
    }

    *(a3 + 2) = v11 + 1;
    a3[v11 + 32] = BYTE2(v5);
    if (v4 == 3)
    {
      break;
    }

    v7 = *(a3 + 2);
    v12 = *(a3 + 3);
    if (v7 >= v12 >> 1)
    {
      a3 = sub_100020B10((v12 > 1), v7 + 1, 1, a3);
    }

    a4 = BYTE3(v5);
    *(a3 + 2) = v7 + 1;
    a3[v7 + 32] = BYTE3(v5);
    v5 = v4 - 4;
    if (v4 == 4)
    {
      break;
    }

    for (i = 0xFFFFFFFFFFFFFFCLL; i; --i)
    {
      v7 = *(a3 + 2);
      v13 = *(a3 + 3);
      v4 = v7 + 1;
      if (v7 >= v13 >> 1)
      {
        a3 = sub_100020B10((v13 > 1), v7 + 1, 1, a3);
      }

      *(a3 + 2) = v4;
      a4 = &a3[v7];
      a3[v7 + 32] = 0;
      if (!--v5)
      {
        return a3;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    a3 = sub_100020B10((a4 > 1), i, 1, a3);
  }

  return a3;
}

void *sub_1000BA33C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = _swiftEmptyArrayStorage;
    v26 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v27 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject roles];
      sub_1000122EC(0, &qword_1001BE240);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v30 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v32 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_100025698(&qword_1001BE280, &qword_1001BD390);
            for (i = 0; i != v16; ++i)
            {
              sub_100005DCC(&qword_1001BD390);
              v19 = sub_1000DD3E4(v31, i, v8);
              v21 = *v20;
              (v19)(v31, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v32;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v32;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v30;
      if (v30 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000BA6E8(uint64_t a1)
{
  if (qword_1001B92E0 != -1)
  {
    v18 = a1;
    swift_once();
    a1 = v18;
  }

  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  v3 = &off_1001B9FF0;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = off_1001B9FF0;
  v20 = off_1001B9FF0;
  off_1001B9FF0 = 0x8000000000000000;
  v6 = sub_100032CC0(v2, v1);
  v8 = v5[2];
  v9 = (v7 & 1) == 0;
  v10 = __OFADD__(v8, v9);
  v11 = v8 + v9;
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  LOBYTE(v3) = v7;
  if (v5[3] < v11)
  {
    sub_100033FA4(v11, isUniquelyReferenced_nonNull_native);
    v5 = v20;
    v6 = sub_100032CC0(v2, v1);
    if ((v3 & 1) == (v12 & 1))
    {
      goto LABEL_8;
    }

    v6 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
LABEL_8:
    off_1001B9FF0 = v5;
    if ((v3 & 1) == 0)
    {
      v3 = v6;
      sub_100035BC8(v6, v2, v1, 0, v5);

      v6 = v3;
    }

    v13 = v5[7];
    v14 = *(v13 + 8 * v6);
    v15 = __CFADD__(v14, 1);
    v16 = v14 + 1;
    if (!v15)
    {
      break;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    v19 = v6;
    sub_10003607C();
    v6 = v19;
    v5 = v20;
  }

  *(v13 + 8 * v6) = v16;
  return swift_endAccess();
}

uint64_t sub_1000BA87C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1000BA8D0()
{
  v1 = v0;
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BE0E0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "startTapped", v5, 2u);
  }

  *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_didTapStart) = 1;
  v6 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_sessionError);
  if (!v6)
  {
    v7 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_roleVC;
    v8 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_roleVC);
    if (!v8)
    {
      v9 = [objc_allocWithZone(type metadata accessor for AirTagRolePickerViewController()) init];
      swift_unknownObjectWeakAssign();
      v10 = *(v1 + v7);
      *(v1 + v7) = v9;
      v11 = v9;

      sub_1000707D4(&v25);
      v12 = String._bridgeToObjectiveC()();
      v13 = String._bridgeToObjectiveC()();
      v14 = String._bridgeToObjectiveC()();
      v15 = String._bridgeToObjectiveC()();
      sub_1000B167C(&v25);
      v16 = [v11 dismissalConfirmationActionWithTitle:v12 message:v13 confirmButtonTitle:v14 cancelButtonTitle:v15];

      [v11 setDismissButtonAction:v16];
      v8 = *(v1 + v7);
      if (!v8)
      {
        goto LABEL_18;
      }
    }

    v18 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_vcNav;
    v19 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_vcNav);
    if (v19)
    {
      v20 = v8;
      v21 = v19;
      v22 = sub_1000D5D10();

      v23 = *(v1 + v18);
      if (!v22)
      {
        if (v23)
        {
          v24 = v23;
          [v24 pushViewController:v20 animated:1];
          goto LABEL_17;
        }

LABEL_21:
        __break(1u);
        return;
      }

      if (v23)
      {
        v24 = v23;

LABEL_17:
LABEL_18:
        sub_1000BD9C0(v17);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  swift_errorRetain();
  sub_1000CC65C(v6);
}

void sub_1000BABC8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

unint64_t sub_1000BAC40(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005DCC(&qword_1001BE230);
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
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_100005E14(&v22, v24);
        sub_100005E14(v24, v25);
        sub_100005E14(v25, &v23);
        result = sub_100032CC0(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_1000083B0(v11);
          result = sub_100005E14(&v23, v11);
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
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_100005E14(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
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

uint64_t sub_1000BAE88(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005DCC(&qword_1001B95D8);
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
    v14 = *(*(a1 + 48) + 4 * v13);
    sub_10000BFEC(*(a1 + 56) + 32 * v13, v33 + 8);
    LODWORD(v33[0]) = v14;
    v31[0] = v33[0];
    v31[1] = v33[1];
    v32 = v34;
    LODWORD(v30[0]) = v14;
    swift_dynamicCast();
    sub_100005E14((v31 + 8), v25);
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100005E14(v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100005E14(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
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
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_100005E14(v30, (v2[7] + 32 * v10));
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

uint64_t sub_1000BB140(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1000BB214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005DCC(&unk_1001BBB80);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100005EB8(a3, v25 - v10, &unk_1001BBB80);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10001259C(v11, &unk_1001BBB80);
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

      sub_10001259C(a3, &unk_1001BBB80);

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

  sub_10001259C(a3, &unk_1001BBB80);
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

void sub_1000BB514(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1000BB5A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000122EC(0, &qword_1001BBB58);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v1(v2);
}

uint64_t sub_1000BB624(uint64_t a1, double a2, double a3, double a4)
{
  v7 = *(a1 + 32);

  v7(v8, a2, a3, a4);
}

void sub_1000BB690()
{
  v1 = v0;
  v2 = type metadata accessor for B389PresentationConfig.Mode(0);
  __chkstk_darwin(v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005DCC(&unk_1001BE180);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_presentationConfig;
  swift_beginAccess();
  sub_100005EB8(v0 + v11, v10, &unk_1001BE180);
  v12 = type metadata accessor for B389PresentationConfig(0);
  v13 = *(*(v12 - 8) + 48);
  if (v13(v10, 1, v12) == 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_100025418(&v10[*(v12 + 24)], v4, type metadata accessor for B389PresentationConfig.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v17 = *v4;
    sub_10005F788(v10, type metadata accessor for B389PresentationConfig);
    if (v17 != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_10005F788(v4, type metadata accessor for B389PresentationConfig.Mode);
    sub_10005F788(v10, type metadata accessor for B389PresentationConfig);
    goto LABEL_9;
  }

  v15 = v4[*(sub_100005DCC(&unk_1001BA6E0) + 48)];
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 8))(v4, v16);
  sub_10005F788(v10, type metadata accessor for B389PresentationConfig);
  if (v15)
  {
LABEL_7:
    type metadata accessor for SDB389BubbleMonitor();
    swift_allocObject();
    v18 = sub_10001B6DC(-50);
    goto LABEL_11;
  }

LABEL_9:
  sub_100005EB8(v1 + v11, v8, &unk_1001BE180);
  if (v13(v8, 1, v12) == 1)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v19 = *&v8[*(v12 + 44)];
  type metadata accessor for SDB389BubbleMonitor();
  swift_allocObject();
  v18 = sub_10001B6DC(v19);
  sub_10005F788(v8, type metadata accessor for B389PresentationConfig);
LABEL_11:
  *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_bubbleMonitor) = v18;

  v20 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_bubbleMonitor;
  sub_1000122EC(0, &qword_1001BCE90);
  v21 = static OS_dispatch_queue.main.getter();
  swift_beginAccess();
  v22 = *(v18 + 24);
  *(v18 + 24) = v21;

  v23 = *(v1 + v20);
  if (v23)
  {
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_beginAccess();
    v25 = *(v23 + 48);
    *(v23 + 48) = sub_1000E4AC4;
    *(v23 + 56) = v24;

    sub_100012050(v25);

    if (*(v1 + v20))
    {

      sub_10001B75C(nullsub_4, 0);
    }
  }
}

void sub_1000BBB08(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for B389PresentationConfig.Mode(0);
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005DCC(&unk_1001BE180);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v34 - v11;
  if (qword_1001B9258 != -1)
  {
    swift_once();
  }

  v13 = qword_1001C3830;
  v14 = String._bridgeToObjectiveC()();
  LOBYTE(v13) = [v13 BOOLForKey:v14];

  if ((v13 & 1) == 0)
  {
    v15 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_presentationConfig;
    swift_beginAccess();
    sub_100005EB8(v2 + v15, v12, &unk_1001BE180);
    v16 = type metadata accessor for B389PresentationConfig(0);
    if ((*(*(v16 - 8) + 48))(v12, 1, v16) == 1)
    {
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

    v17 = v12[*(v16 + 40)];
    sub_10005F788(v12, type metadata accessor for B389PresentationConfig);
    if (v17 == 1)
    {
      sub_1000D76A4(a1);
      return;
    }
  }

  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000D298(v18, qword_1001BE0E0);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "continuePressed", v21, 2u);
  }

  sub_1000C3C6C(1);
  v22 = objc_allocWithZone(LSApplicationRecord);
  v23 = sub_1000D9594(0xD000000000000010, 0x8000000100144B50, 0);
  if (v23)
  {
    v27 = v23;
    sub_1000BA8D0();
    v28 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_presentationConfig;
    swift_beginAccess();
    sub_100005EB8(v2 + v28, v10, &unk_1001BE180);
    v29 = type metadata accessor for B389PresentationConfig(0);
    if ((*(*(v29 - 8) + 48))(v10, 1, v29) != 1)
    {
      sub_100025418(&v10[*(v29 + 24)], v6, type metadata accessor for B389PresentationConfig.Mode);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          sub_10005F788(v6, type metadata accessor for B389PresentationConfig.Mode);
          sub_10005F788(v10, type metadata accessor for B389PresentationConfig);
          goto LABEL_24;
        }

        v31 = v6[*(sub_100005DCC(&unk_1001BA6E0) + 48)];
        v32 = type metadata accessor for UUID();
        (*(*(v32 - 8) + 8))(v6, v32);
        sub_10005F788(v10, type metadata accessor for B389PresentationConfig);
        if ((v31 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v33 = *v6;
        sub_10005F788(v10, type metadata accessor for B389PresentationConfig);
        if (v33 != 1)
        {
LABEL_24:

          return;
        }
      }

      sub_1000D78A8();
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "FindMy not installed when continueFromStartView, showing AirTagInstallFindMyViewController", v26, 2u);
  }

  sub_1000D5E68();
}

void sub_1000BC07C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_linkingVC);
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    sub_1000707D4(&v24);
    v4 = String._bridgeToObjectiveC()();
    v5 = String._bridgeToObjectiveC()();
    v6 = String._bridgeToObjectiveC()();
    v7 = String._bridgeToObjectiveC()();
    sub_1000B167C(&v24);
    v8 = [v3 dismissalConfirmationActionWithTitle:v4 message:v5 confirmButtonTitle:v6 cancelButtonTitle:v7];

    [v3 setDismissButtonAction:v8];
    v9 = (v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_appleIDInfo);
    swift_beginAccess();
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    v13 = v9[3];
    v14 = v9[4];
    v15 = &v3[OBJC_IVAR____TtC18SharingViewService27AirTagLinkingViewController_appleIDInfo];
    v16 = *&v3[OBJC_IVAR____TtC18SharingViewService27AirTagLinkingViewController_appleIDInfo];
    v17 = *&v3[OBJC_IVAR____TtC18SharingViewService27AirTagLinkingViewController_appleIDInfo + 8];
    v18 = *&v3[OBJC_IVAR____TtC18SharingViewService27AirTagLinkingViewController_appleIDInfo + 16];
    *v15 = v10;
    v15[1] = v11;
    v15[2] = v12;
    v15[3] = v13;
    v15[4] = v14;
    sub_10005F8FC(v10, v11, v12);
    sub_10005F8FC(v10, v11, v12);
    sub_100016CBC(v16, v17, v18);
    sub_10007DD38();
    sub_100016CBC(v10, v11, v12);
    v19 = *(v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_vcNav);
    if (v19)
    {
      [v19 pushViewController:v3 animated:1];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1001B9490 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000D298(v20, qword_1001BE0E0);
    oslog = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v21, "linkingVC is nill when showLoadingView is called", v22, 2u);
    }
  }
}

void sub_1000BC340()
{
  v1 = *(v0 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_namingVC);
  if (v1)
  {
    v2 = v1;
    sub_1000707D4(&v13);
    v3 = String._bridgeToObjectiveC()();
    v4 = String._bridgeToObjectiveC()();
    v5 = String._bridgeToObjectiveC()();
    v6 = String._bridgeToObjectiveC()();
    sub_1000B167C(&v13);
    v7 = [v2 dismissalConfirmationActionWithTitle:v3 message:v4 confirmButtonTitle:v5 cancelButtonTitle:v6];

    [v2 setDismissButtonAction:v7];
    v8 = *(v0 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_vcNav);
    if (v8)
    {
      sub_1000BD9C0([v8 pushViewController:v2 animated:1]);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1001B9490 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000D298(v9, qword_1001BE0E0);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "namingVC is nill when showNamingVC is called", v11, 2u);
    }
  }
}

void sub_1000BC538()
{
  v1 = sub_100005DCC(&qword_1001BA000);
  __chkstk_darwin(v1 - 8);
  v3 = &v43 - v2;
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = type metadata accessor for DispatchTime();
  v8 = __chkstk_darwin(v48);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v13 = *&v0[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_loadingVC];
  if (v13)
  {
    v44 = v4;
    v45 = v12;
    v46 = &v43 - v11;
    v47 = v3;
    v14 = v13;
    sub_1000707D4(&v49);
    v15 = String._bridgeToObjectiveC()();
    v16 = String._bridgeToObjectiveC()();
    v17 = String._bridgeToObjectiveC()();
    v18 = String._bridgeToObjectiveC()();
    sub_1000B167C(&v49);
    v19 = [v14 dismissalConfirmationActionWithTitle:v15 message:v16 confirmButtonTitle:v17 cancelButtonTitle:v18];

    v20 = v0;
    [v14 setDismissButtonAction:v19];

    v21 = *&v0[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_vcNav];
    if (v21)
    {
      v43 = v14;
      [v21 pushViewController:v14 animated:1];
      static DispatchTime.now()();
      *v7 = 90;
      v22 = v44;
      (*(v5 + 104))(v7, enum case for DispatchTimeInterval.seconds(_:), v44);
      v23 = v46;
      + infix(_:_:)();
      (*(v5 + 8))(v7, v22);
      v24 = v45;
      v25 = *(v45 + 8);
      v26 = v48;
      v25(v10, v48);
      if (qword_1001B9490 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_10000D298(v27, qword_1001BE0E0);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Starting timeout.", v30, 2u);
      }

      (*(v24 + 16))(v10, v23, v26);
      v31 = *(v24 + 56);
      v32 = v47;
      v31(v47, 1, 1, v26);
      sub_1000122EC(0, &qword_1001BCE90);
      v33 = static OS_dispatch_queue.main.getter();
      v34 = v23;
      v35 = swift_allocObject();
      *(v35 + 16) = v20;
      type metadata accessor for PushableTimer(0);
      swift_allocObject();
      v36 = v20;
      v37 = sub_1000235B4(v10, v32, v33, sub_1000E4AA0, v35);

      *&v36[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_timeout] = v37;

      swift_getObjectType();
      OS_dispatch_source.resume()();

      sub_1000BD9C0(v38);

      v25(v34, v26);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1001B9490 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_10000D298(v39, qword_1001BE0E0);
    v48 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v48, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v48, v40, "loadingVC is nill when showLoadingView is called", v41, 2u);
    }

    v42 = v48;
  }
}

uint64_t sub_1000BCB28()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BE0E0);
  v1 = sub_10000D298(v0, qword_1001BE0E0);
  if (qword_1001B92B0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C38B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_1000BCC50()
{
  v1 = *(v0 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_roleCategories);
  if (!v1)
  {
    return 0;
  }

  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
    goto LABEL_50;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  if (v3)
  {
    v4 = 0;
    v30 = v1 + 32;
    v31 = v1 & 0xC000000000000001;
    v5 = _swiftEmptyArrayStorage;
    v28 = v2;
    v29 = v1;
    v27 = v3;
    while (1)
    {
      if (v31)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v2 + 16))
        {
          goto LABEL_44;
        }

        v6 = *(v30 + 8 * v4);
      }

      v34 = v6;
      v7 = __OFADD__(v4, 1);
      v8 = v4 + 1;
      if (v7)
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        v3 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_4;
      }

      v32 = v8;
      v33 = v5;
      v9 = [v6 roles];
      sub_1000122EC(0, &qword_1001BE240);
      v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v10 >> 62)
      {
        v11 = _CocoaArrayWrapper.endIndex.getter();
        if (!v11)
        {
LABEL_25:

          goto LABEL_26;
        }
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v11)
        {
          goto LABEL_25;
        }
      }

      sub_100020C24(0, v11 & ~(v11 >> 63), 0);
      if (v11 < 0)
      {
        goto LABEL_47;
      }

      v12 = 0;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = _swiftEmptyArrayStorage[2];
        v16 = _swiftEmptyArrayStorage[3];
        v17 = v34;
        if (v15 >= v16 >> 1)
        {
          sub_100020C24((v16 > 1), v15 + 1, 1);
        }

        ++v12;
        _swiftEmptyArrayStorage[2] = v15 + 1;
        v18 = &_swiftEmptyArrayStorage[2 * v15];
        v18[4] = v17;
        v18[5] = v14;
      }

      while (v11 != v12);

      v2 = v28;
      v1 = v29;
      v3 = v27;
LABEL_26:
      v19 = _swiftEmptyArrayStorage[2];
      v5 = v33;
      v20 = v33[2];
      v21 = v20 + v19;
      if (__OFADD__(v20, v19))
      {
        goto LABEL_45;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v21 <= v33[3] >> 1)
      {
        if (_swiftEmptyArrayStorage[2])
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v20 <= v21)
        {
          v23 = v20 + v19;
        }

        else
        {
          v23 = v20;
        }

        v5 = sub_100032730(isUniquelyReferenced_nonNull_native, v23, 1, v33);
        if (_swiftEmptyArrayStorage[2])
        {
LABEL_35:
          if ((v5[3] >> 1) - v5[2] < v19)
          {
            goto LABEL_48;
          }

          sub_100005DCC(&qword_1001BA780);
          swift_arrayInitWithCopy();

          if (v19)
          {
            v24 = v5[2];
            v7 = __OFADD__(v24, v19);
            v25 = v24 + v19;
            if (v7)
            {
              goto LABEL_49;
            }

            v5[2] = v25;
          }

          goto LABEL_7;
        }
      }

      if (v19)
      {
        goto LABEL_46;
      }

LABEL_7:
      v4 = v32;
      if (v32 == v3)
      {
        goto LABEL_41;
      }
    }
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_41:

  return v5;
}

void *sub_1000BCF94()
{
  if (*(v0 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_customRoleName + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_customRoleName);
LABEL_15:

    return v1;
  }

  result = sub_1000BCC50();
  if (!result)
  {
LABEL_6:
    v1 = 0;
    goto LABEL_15;
  }

  if (*(v0 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_selectedRoleIndex + 8) == 1)
  {

    goto LABEL_6;
  }

  v3 = *(v0 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_selectedRoleIndex);
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < result[2])
  {
    v4 = result[2 * v3 + 5];

    v5 = [v4 roleId];
    if (v5 == SPBeaconRoleIdOther)
    {
      v6 = [objc_opt_self() mainBundle];
      v7 = String._bridgeToObjectiveC()();
      v8 = String._bridgeToObjectiveC()();
      v9 = sub_1001279D0(v6, v7, v8);
    }

    else
    {
      v9 = [v4 role];
    }

    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = (v0 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_fnameDisplay);
    v13 = *(v0 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_fnameDisplay + 8);
    if (v13)
    {
      v14 = *v12;
      v15 = objc_opt_self();

      v16 = [v15 mainBundle];
      v17 = String._bridgeToObjectiveC()();
      v18 = String._bridgeToObjectiveC()();
      v19 = sub_1001279D0(v16, v17, v18);

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100005DCC(&unk_1001BBB70);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_10016CCD0;
      *(v20 + 56) = &type metadata for String;
      v21 = sub_10000BF44();
      *(v20 + 32) = v14;
      *(v20 + 40) = v13;
      *(v20 + 96) = &type metadata for String;
      *(v20 + 104) = v21;
      *(v20 + 64) = v21;
      *(v20 + 72) = v1;
      *(v20 + 80) = v11;
      v1 = static String.localizedStringWithFormat(_:_:)();
    }

    else
    {
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}