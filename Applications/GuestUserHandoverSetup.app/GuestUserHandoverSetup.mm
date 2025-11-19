id sub_100001CBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureWindow();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100001D64()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t sub_100001DB0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int sub_100001E08()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

void *sub_100001E7C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_100001ED0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_100001F00@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100001F2C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100002018(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)(v4, v5, a3, WitnessTable);
}

uint64_t sub_100002098@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10000224C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100002174(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000224C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_1000022C0(uint64_t a1, unint64_t *a2)
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

id sub_1000023A8(void *a1, id a2)
{
  v28.receiver = v2;
  v28.super_class = type metadata accessor for LiveActivityImageAccessoryView();
  v5 = objc_msgSendSuper2(&v28, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v6 = objc_allocWithZone(UIImageView);
  v7 = v5;
  v8 = [v6 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setContentMode:1];
  v27 = a1;
  if (a2)
  {
    a2 = a2;
    v9 = [a1 imageWithTintColor:a2];
    [v8 setImage:v9];
  }

  else
  {
    [v8 setImage:a1];
  }

  v10 = v7;
  [v10 addSubview:v8];
  v11 = objc_opt_self();
  sub_10000280C(&qword_100033478, "VW");
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10001F150;
  v13 = [v8 topAnchor];
  v14 = [v10 topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:4.0];

  *(v12 + 32) = v15;
  v16 = [v8 leadingAnchor];
  v17 = [v10 leadingAnchor];

  v18 = [v16 constraintEqualToAnchor:v17];
  *(v12 + 40) = v18;
  v19 = [v8 trailingAnchor];
  v20 = [v10 trailingAnchor];

  v21 = [v19 constraintEqualToAnchor:v20];
  *(v12 + 48) = v21;
  v22 = [v8 bottomAnchor];

  v23 = [v10 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:-4.0];

  *(v12 + 56) = v24;
  sub_100002854();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 activateConstraints:isa];

  return v10;
}

id sub_1000027B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveActivityImageAccessoryView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000280C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100002854()
{
  result = qword_100033480;
  if (!qword_100033480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100033480);
  }

  return result;
}

id sub_1000028A0()
{
  v0 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v0 setFont:v1];

  v2 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor:v2];

  [v0 setNumberOfLines:0];
  [v0 setLineBreakMode:0];
  return v0;
}

void *sub_1000029A8()
{
  v0 = type metadata accessor for UIButton.Configuration.TitleAlignment();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  (__chkstk_darwin)();
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UIButton.Configuration.Size();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  (__chkstk_darwin)();
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UIButton.Configuration();
  v30 = *(v10 - 8);
  v11 = *(v30 + 64);
  v12 = (__chkstk_darwin)();
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  static UIButton.Configuration.plain()();
  UIButton.Configuration.title.setter();
  (*(v6 + 104))(v9, enum case for UIButton.Configuration.Size.small(_:), v5);
  UIButton.Configuration.buttonSize.setter();
  (*(v1 + 104))(v4, enum case for UIButton.Configuration.TitleAlignment.trailing(_:), v0);
  UIButton.Configuration.titleAlignment.setter();
  UIButton.Configuration.titlePadding.setter();
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  UIButton.Configuration.contentInsets.setter();
  UIButton.Configuration.titleLineBreakMode.setter();
  v20 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.cornerRadius.setter();
  v20(v31, 0);
  v21 = v30;
  sub_100003928(0, &qword_100033540, UIButton_ptr);
  (*(v21 + 16))(v14, v16, v10);
  v22 = UIButton.init(configuration:primaryAction:)();
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = [objc_opt_self() systemBlueColor];
  [v22 setTintColor:v23];

  v24 = [v22 titleLabel];
  if (v24)
  {
    v25 = v24;
    [v24 setNumberOfLines:0];
  }

  [v22 setHidden:1];
  [v22 setEnabled:0];
  LODWORD(v26) = 1132068864;
  [v22 setContentCompressionResistancePriority:0 forAxis:v26];
  LODWORD(v27) = 1148846080;
  [v22 setContentHuggingPriority:0 forAxis:v27];
  (*(v21 + 8))(v16, v10);
  return v22;
}

id sub_100002D84(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_headerLabel;
  *&v2[v4] = sub_1000028A0();
  v5 = OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_actionButton;
  *&v2[v5] = sub_1000029A8();
  v6 = &v2[OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_action];
  *v6 = 0;
  *(v6 + 1) = 0;
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v11.receiver = v2;
  v11.super_class = type metadata accessor for AppSelectionSectionHeaderView();
  v8 = objc_msgSendSuper2(&v11, "initWithReuseIdentifier:", v7);

  v9 = v8;
  sub_10000301C();

  return v9;
}

uint64_t sub_100002F18()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for AppSelectionSectionHeaderView();
  objc_msgSendSuper2(&v6, "prepareForReuse");
  [*&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_headerLabel] setText:0];
  v1 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_actionButton];
  [v1 setTitle:0 forState:0];
  [v1 setHidden:1];
  [v1 setEnabled:0];
  v2 = &v0[OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_action];
  v3 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_action];
  v4 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_action + 8];
  *v2 = 0;
  *(v2 + 1) = 0;
  return sub_100003908(v3);
}

void sub_10000301C()
{
  sub_10000280C(&qword_100033478, "VW");
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10001F190;
  v2 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_headerLabel];
  v3 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_actionButton];
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = objc_allocWithZone(UIStackView);
  sub_100003928(0, &qword_100033538, UIView_ptr);
  v5 = v2;
  v32 = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v4 initWithArrangedSubviews:isa];

  v33 = v7;
  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v33 setAxis:0];
  [v33 setSpacing:8.0];
  [v33 setAlignment:3];
  [v33 setDistribution:0];
  v8 = [v0 contentView];
  [v8 addSubview:v33];

  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10001F150;
  v11 = [v33 topAnchor];
  v12 = [v0 contentView];
  v13 = [v12 layoutMarginsGuide];

  v14 = [v13 topAnchor];
  v15 = [v11 constraintEqualToAnchor:v14];

  *(v10 + 32) = v15;
  v16 = [v33 leadingAnchor];
  v17 = [v0 contentView];
  v18 = [v17 layoutMarginsGuide];

  v19 = [v18 leadingAnchor];
  v20 = [v16 constraintEqualToAnchor:v19];

  *(v10 + 40) = v20;
  v21 = [v33 trailingAnchor];
  v22 = [v0 contentView];
  v23 = [v22 layoutMarginsGuide];

  v24 = [v23 trailingAnchor];
  v25 = [v21 constraintEqualToAnchor:v24];

  *(v10 + 48) = v25;
  v26 = [v33 bottomAnchor];

  v27 = [v0 contentView];
  v28 = [v27 layoutMarginsGuide];

  v29 = [v28 bottomAnchor];
  v30 = [v26 constraintEqualToAnchor:v29];

  *(v10 + 56) = v30;
  sub_100003928(0, &qword_100033480, NSLayoutConstraint_ptr);
  v31 = Array._bridgeToObjectiveC()().super.isa;

  [v9 activateConstraints:v31];

  [v32 addTarget:v0 action:"performAuxillaryAction" forControlEvents:64];
}

id sub_1000034B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v31 = a1;
  v5 = type metadata accessor for UIButton.Configuration.TitleAlignment();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UIButton.Configuration.Size();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000280C(&qword_100033530, "hW");
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v31 - v17;
  v19 = *(v4 + OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_actionButton);
  static UIButton.Configuration.plain()();

  UIButton.Configuration.title.setter();
  (*(v11 + 104))(v14, enum case for UIButton.Configuration.Size.small(_:), v10);
  UIButton.Configuration.buttonSize.setter();
  (*(v6 + 104))(v9, enum case for UIButton.Configuration.TitleAlignment.trailing(_:), v5);
  UIButton.Configuration.titleAlignment.setter();
  UIButton.Configuration.titlePadding.setter();
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  UIButton.Configuration.contentInsets.setter();
  UIButton.Configuration.titleLineBreakMode.setter();
  v23 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.cornerRadius.setter();
  v23(v35, 0);
  v24 = type metadata accessor for UIButton.Configuration();
  (*(*(v24 - 8) + 56))(v18, 0, 1, v24);
  UIButton.configuration.setter();
  [v19 setHidden:{0, v31}];
  [v19 setEnabled:1];
  v25 = v32;
  v26 = &v32[OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_action];
  v27 = *&v32[OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_action];
  v28 = *&v32[OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_action + 8];
  v29 = v34;
  *v26 = v33;
  *(v26 + 1) = v29;

  sub_100003908(v27);
  return [v25 setNeedsLayout];
}

id sub_100003850()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppSelectionSectionHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100003908(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100003918(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100003928(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100003970()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = async function pointer to GuestUserHandoverService.activate()[1];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_100003A28;

  return GuestUserHandoverService.activate()();
}

uint64_t sub_100003A28()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100003B64, v5, v4);
}

uint64_t sub_100003B64()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100003BC4()
{
  v1 = OBJC_IVAR____TtC22GuestUserHandoverSetup17LiveActivityModel_guestUserHandoverService;
  v2 = type metadata accessor for GuestUserHandoverService();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC22GuestUserHandoverSetup17LiveActivityModel_airPlayReceiverCoordinator;
  v4 = type metadata accessor for AirPlayReceiverCoordinator();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t type metadata accessor for LiveActivityModel()
{
  result = qword_100033580;
  if (!qword_100033580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100003CF4()
{
  result = type metadata accessor for GuestUserHandoverService();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for AirPlayReceiverCoordinator();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100003DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100003DE0, 0, 0);
}

uint64_t sub_100003DE0()
{
  v14 = v0;
  if (qword_100033358 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[4] = sub_10000549C(v1, qword_100034C28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10001C470(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%{public}s] Requesting to end Guest User Mode", v5, 0xCu);
    sub_100005700(v6);
  }

  v0[5] = OBJC_IVAR____TtC22GuestUserHandoverSetup17LiveActivityModel_guestUserHandoverService;
  type metadata accessor for MainActor();
  v0[6] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100003FB0, v11, v10);
}

uint64_t sub_100003FB0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];

  v4 = async function pointer to GuestUserHandoverService.endGuestUserMode()[1];
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_100004050;

  return GuestUserHandoverService.endGuestUserMode()();
}

uint64_t sub_100004050()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1000042A4;
  }

  else
  {
    v3 = sub_100004164;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100004164()
{
  v13 = v0;
  v1 = v0[4];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10001C470(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%{public}s] Request to end Guest User Mode succeeded", v5, 0xCu);
    sub_100005700(v6);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000042A4()
{
  v18 = v0;
  v1 = v0[8];
  v2 = v0[4];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[8];
  if (v5)
  {
    v7 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v8 = 136446466;
    v11 = _typeName(_:qualified:)();
    v13 = sub_10001C470(v11, v12, &v17);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] Request to end Guest User Mode failed with error: %{public}@", v8, 0x16u);
    sub_100005900(v9);

    sub_100005700(v10);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_100004464()
{
  v1 = *v0;
  v2 = sub_10000280C(&qword_100033610, &qword_10001F250);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;
  v7[5] = v1;

  sub_10000756C(0, 0, v5, &unk_10001F2A0, v7);
}

uint64_t sub_100004594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000045B4, 0, 0);
}

uint64_t sub_1000045B4()
{
  v14 = v0;
  if (qword_100033358 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000549C(v1, qword_100034C28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10001C470(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%{public}s] Launching AirPlayReceiver with options to request View Mirroring", v5, 0xCu);
    sub_100005700(v6);
  }

  v0[4] = OBJC_IVAR____TtC22GuestUserHandoverSetup17LiveActivityModel_airPlayReceiverCoordinator;
  type metadata accessor for MainActor();
  v0[5] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100004780, v11, v10);
}

uint64_t sub_100004780()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];

  v4 = async function pointer to AirPlayReceiverCoordinator.launchAirPlayReceiver()[1];
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_100004820;

  return AirPlayReceiverCoordinator.launchAirPlayReceiver()();
}

uint64_t sub_100004820()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_100004914()
{
  v1 = *v0;
  v2 = sub_10000280C(&qword_100033610, &qword_10001F250);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v50 = v49 - v4;
  v5 = type metadata accessor for Locale();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  if (qword_100033358 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000549C(v9, qword_100034C28);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v49[1] = v1;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v54 = v14;
    *v13 = 136446210;
    v15 = _typeName(_:qualified:)();
    v17 = sub_10001C470(v15, v16, &v54);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%{public}s] Posting confirmation alert to end Guest User Mode", v13, 0xCu);
    sub_100005700(v14);
  }

  sub_10000280C(&qword_100033618, &qword_10001F258);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001F1F0;
  if (!kCFUserNotificationAlertHeaderKey)
  {
    __break(1u);
    goto LABEL_15;
  }

  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v19;

  AnyHashable.init<A>(_:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20 = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v20;
  *(inited + 80) = v21;
  if (!kCFUserNotificationAlertMessageKey)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v22;

  AnyHashable.init<A>(_:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v23 = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v23;
  *(inited + 152) = v24;
  if (!kCFUserNotificationDefaultButtonTitleKey)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v25;

  AnyHashable.init<A>(_:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v26 = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 240) = &type metadata for String;
  *(inited + 216) = v26;
  *(inited + 224) = v27;
  if (!kCFUserNotificationAlternateButtonTitleKey)
  {
    goto LABEL_17;
  }

  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v28;
  AnyHashable.init<A>(_:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v29 = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 312) = &type metadata for String;
  *(inited + 288) = v29;
  *(inited + 296) = v30;
  v54 = kCFUserNotificationAlertTopMostKey;
  v31 = kCFUserNotificationAlertTopMostKey;
  sub_10000280C(&qword_100033620, &qword_10001F260);
  sub_1000054D4();
  AnyHashable.init<A>(_:)();
  *(inited + 384) = &type metadata for Bool;
  *(inited + 360) = 1;
  v54 = SBUserNotificationDefaultButtonPresentationStyleKey;
  v32 = SBUserNotificationDefaultButtonPresentationStyleKey;
  AnyHashable.init<A>(_:)();
  *(inited + 456) = &type metadata for UInt32;
  *(inited + 432) = 1;
  v54 = SBUserNotificationDisplayActionButtonOnLockScreen;
  v33 = SBUserNotificationDisplayActionButtonOnLockScreen;
  AnyHashable.init<A>(_:)();
  *(inited + 528) = &type metadata for Bool;
  *(inited + 504) = 1;
  v54 = SBUserNotificationForcesModalAlertAppearance;
  v34 = SBUserNotificationForcesModalAlertAppearance;
  AnyHashable.init<A>(_:)();
  *(inited + 600) = &type metadata for Bool;
  *(inited + 576) = 1;
  sub_10000621C(inited);
  swift_setDeallocating();
  sub_10000280C(&unk_100033630, &qword_10001F268);
  swift_arrayDestroy();
  v53 = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v36 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 3uLL, &v53, isa);

  if (v36)
  {
    v37 = type metadata accessor for TaskPriority();
    v38 = v50;
    (*(*(v37 - 8) + 56))(v50, 1, 1, v37);
    v39 = swift_allocObject();
    v39[2] = 0;
    v39[3] = 0;
    v39[4] = v36;
    v39[5] = v51;

    sub_10000756C(0, 0, v38, &unk_10001F278, v39);
  }

  else
  {
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v56[0] = swift_slowAlloc();
      *v42 = 136446466;
      v43 = _typeName(_:qualified:)();
      v45 = sub_10001C470(v43, v44, v56);

      *(v42 + 4) = v45;
      *(v42 + 12) = 2082;
      swift_beginAccess();
      v52 = v53;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = sub_10001C470(v46, v47, v56);

      *(v42 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v40, v41, "[%{public}s] Unable to create user notification with error %{public}s", v42, 0x16u);
      swift_arrayDestroy();
    }
  }
}

uint64_t sub_100005198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[2] = a5;
  v5[3] = *a5;
  v6 = *(*(sub_10000280C(&qword_100033610, &qword_10001F250) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = async function pointer to CFUserNotificationRef.userResponse()[1];
  v8 = swift_task_alloc();
  v5[5] = v8;
  *v8 = v5;
  v8[1] = sub_100005290;

  return CFUserNotificationRef.userResponse()();
}

uint64_t sub_100005290(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100005390, 0, 0);
}

uint64_t sub_100005390()
{
  if (!v0[6])
  {
    v2 = v0[3];
    v1 = v0[4];
    v3 = v0[2];
    v4 = type metadata accessor for TaskPriority();
    (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
    v5 = swift_allocObject();
    v5[2] = 0;
    v5[3] = 0;
    v5[4] = v3;
    v5[5] = v2;

    sub_10000756C(0, 0, v1, &unk_10001F288, v5);
  }

  v6 = v0[4];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10000549C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1000054D4()
{
  result = qword_100033628;
  if (!qword_100033628)
  {
    sub_100005558(&qword_100033620, &qword_10001F260);
    sub_1000055A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100033628);
  }

  return result;
}

uint64_t sub_100005558(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000055A0()
{
  result = qword_1000333E0;
  if (!qword_1000333E0)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000333E0);
  }

  return result;
}

uint64_t sub_1000055F8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100005640(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005A70;

  return sub_100005198(a1, v4, v5, v7, v6);
}

uint64_t sub_100005700(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000574C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000580C;

  return sub_100003DC0(a1, v4, v5, v7, v6);
}

uint64_t sub_10000580C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100005900(uint64_t a1)
{
  v2 = sub_10000280C(&qword_100034110, &qword_10001F290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000596C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000059AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005A70;

  return sub_100004594(a1, v4, v5, v7, v6);
}

void sub_100005A74()
{
  v0 = sub_10000280C(&qword_100033530, "hW");
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v20 - v2;
  v21 = type metadata accessor for UIButton.Configuration.Size();
  v4 = *(v21 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v21);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UIButton.Configuration();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_msgSend(objc_allocWithZone(UIButton) "init")];
  v13 = [objc_opt_self() sbui_systemApertureSymbolButtonConfiguration];
  static UIButton.Configuration._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = [objc_opt_self() sbui_systemApertureDefaultConfiguration];
  v15 = String._bridgeToObjectiveC()();
  v16 = [objc_opt_self() systemImageNamed:v15 withConfiguration:v14];

  if (v16)
  {

    UIButton.Configuration.image.setter();
    v17 = objc_opt_self();
    v18 = [v17 redColor];
    UIButton.Configuration.baseBackgroundColor.setter();
    v19 = [v17 redColor];
    UIButton.Configuration.baseForegroundColor.setter();
    (*(v4 + 104))(v7, enum case for UIButton.Configuration.Size.medium(_:), v21);
    UIButton.Configuration.buttonSize.setter();
    (*(v9 + 16))(v3, v12, v8);
    (*(v9 + 56))(v3, 0, 1, v8);
    UIButton.configuration.setter();
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    __break(1u);
  }
}

id sub_100005DB4()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000549C(v2, qword_100034C10);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10001C470(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s deinit", v5, 0xCu);
    sub_100005700(v6);
  }

  v10 = type metadata accessor for ProxCardSetUpRootViewController();
  v13.receiver = v1;
  v13.super_class = v10;
  return objc_msgSendSuper2(&v13, "dealloc");
}

void sub_100005FAC(char a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for ProxCardSetUpRootViewController();
  objc_msgSendSuper2(&v14, "viewDidAppear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup31ProxCardSetUpRootViewController_model];
  v4 = type metadata accessor for AllowGuestProximityCardViewController();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC22GuestUserHandoverSetup37AllowGuestProximityCardViewController_model] = v3;
  v13.receiver = v5;
  v13.super_class = v4;

  v6 = objc_msgSendSuper2(&v13, "initWithContentView:", 0);
  v7 = [objc_opt_self() defaultConfiguration];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() blackColor];
    [v8 setCustomBackgroundColor:v9];

    v10 = v6;
    v11 = [v1 presentProxCardFlowWithDelegate:v1 initialViewController:v10 configuration:v8];

    v12 = *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup31ProxCardSetUpRootViewController_proxNavigationController];
    *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup31ProxCardSetUpRootViewController_proxNavigationController] = v11;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_10000621C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000280C(&unk_1000336E0, "|W");
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100006510(v4, v13);
      result = sub_10001CA18(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100006580(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100006338(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000280C(&unk_1000336F0, &qword_10001F2E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10001CAA0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_10000643C(void *a1)
{
  *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup31ProxCardSetUpRootViewController_proxNavigationController] = 0;
  *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup31ProxCardSetUpRootViewController_configurationContext] = a1;
  if (a1 && (v2 = [a1 userInfo]) != 0)
  {
    v3 = v2;
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = v4;
  }

  else
  {
    v5 = sub_10000621C(&_swiftEmptyArrayStorage);
  }

  *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup31ProxCardSetUpRootViewController_model] = sub_10000B674(v5);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ProxCardSetUpRootViewController();
  return objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_100006510(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000280C(&unk_100033630, &qword_10001F268);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100006580(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_100006590()
{
  v0 = [objc_opt_self() blackColor];
  v1 = [v0 colorWithAlphaComponent:0.9];

  qword_100034B60 = v1;
}

id sub_1000065FC(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22GuestUserHandoverSetup33LiveActivityPlatterViewController_leadingAccessoryView;
  if (qword_100033330 != -1)
  {
    swift_once();
  }

  v5 = qword_100034BD0;
  v6 = objc_allocWithZone(type metadata accessor for LiveActivityImageAccessoryView());
  v7 = sub_1000023A8(v5, 0);
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2[v4] = v7;
  v8 = OBJC_IVAR____TtC22GuestUserHandoverSetup33LiveActivityPlatterViewController_labelAccessoryView;
  v9 = [objc_allocWithZone(type metadata accessor for LiveActivityLabelAccessoryView()) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2[v8] = v9;
  v10 = OBJC_IVAR____TtC22GuestUserHandoverSetup33LiveActivityPlatterViewController_tapGestureInterceptorView;
  v11 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [objc_opt_self() clearColor];
  [v11 setBackgroundColor:v12];

  v13 = [v11 layer];
  [v13 setHitTestsAsOpaque:1];

  *&v2[v10] = v11;
  v14 = OBJC_IVAR____TtC22GuestUserHandoverSetup33LiveActivityPlatterViewController_endGuestUserModeButton;
  sub_100005A74();
  v16 = v15;
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2[v14] = v16;
  *&v2[OBJC_IVAR____TtC22GuestUserHandoverSetup33LiveActivityPlatterViewController_liveActivityModel] = a1;
  v18.receiver = v2;
  v18.super_class = type metadata accessor for LiveActivityPlatterViewController();
  return objc_msgSendSuper2(&v18, "initWithNibName:bundle:", 0, 0);
}

void sub_100006804()
{
  v67.receiver = v0;
  v67.super_class = type metadata accessor for LiveActivityPlatterViewController();
  objc_msgSendSuper2(&v67, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v2 = v1;
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];

  v3 = [v0 view];
  if (!v3)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4 = v3;
  v5 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup33LiveActivityPlatterViewController_leadingAccessoryView];
  [v3 addSubview:v5];

  v6 = [v0 view];
  if (!v6)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6;
  v8 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup33LiveActivityPlatterViewController_labelAccessoryView];
  [v6 addSubview:v8];

  v9 = [v0 view];
  if (!v9)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = v9;
  v11 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup33LiveActivityPlatterViewController_tapGestureInterceptorView];
  [v9 addSubview:v11];

  v12 = [v0 view];
  if (!v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = v12;
  v14 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup33LiveActivityPlatterViewController_endGuestUserModeButton];
  [v12 addSubview:v14];

  sub_10000280C(&qword_100033478, "VW");
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10001F2F0;
  v16 = [v5 leadingAnchor];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v18 = v17;
  v19 = [v17 leadingAnchor];

  v20 = [v16 constraintEqualToAnchor:v19 constant:16.0];
  *(v15 + 32) = v20;
  v21 = [v5 centerYAnchor];
  v22 = [v0 view];
  if (!v22)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v23 = v22;
  v24 = [v22 centerYAnchor];

  v25 = [v21 constraintEqualToAnchor:v24];
  *(v15 + 40) = v25;
  v26 = [v8 leadingAnchor];
  v27 = [v5 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:23.0];

  *(v15 + 48) = v28;
  v29 = [v8 centerYAnchor];
  v30 = [v0 view];
  if (!v30)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v31 = v30;
  v32 = [v30 centerYAnchor];

  v33 = [v29 constraintEqualToAnchor:v32];
  *(v15 + 56) = v33;
  v34 = [v11 topAnchor];
  v35 = [v0 view];
  if (!v35)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v36 = v35;
  v37 = [v35 topAnchor];

  v38 = [v34 constraintEqualToAnchor:v37];
  *(v15 + 64) = v38;
  v39 = [v11 leadingAnchor];
  v40 = [v0 view];
  if (!v40)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v41 = v40;
  v42 = [v40 leadingAnchor];

  v43 = [v39 constraintEqualToAnchor:v42];
  *(v15 + 72) = v43;
  v44 = [v11 trailingAnchor];
  v45 = [v0 view];
  if (!v45)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v46 = v45;
  v47 = [v45 trailingAnchor];

  v48 = [v44 constraintEqualToAnchor:v47];
  *(v15 + 80) = v48;
  v49 = [v11 bottomAnchor];
  v50 = [v0 view];
  if (!v50)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v51 = v50;
  v52 = [v50 bottomAnchor];

  v53 = [v49 constraintEqualToAnchor:v52];
  *(v15 + 88) = v53;
  v54 = [v14 centerYAnchor];
  v55 = [v0 view];
  if (!v55)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v56 = v55;
  v57 = [v55 centerYAnchor];

  v58 = [v54 constraintEqualToAnchor:v57];
  *(v15 + 96) = v58;
  v59 = [v14 trailingAnchor];
  v60 = [v0 view];
  if (v60)
  {
    v61 = v60;
    v62 = objc_opt_self();
    v63 = [v61 trailingAnchor];

    v64 = [v59 constraintEqualToAnchor:v63 constant:-16.0];
    *(v15 + 104) = v64;
    sub_100002854();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v62 activateConstraints:isa];

    v66 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"tapGestureDetectedWithSender:"];
    [v11 addGestureRecognizer:v66];
    [v14 addTarget:v0 action:"endGuestUserModeButtonTapped" forControlEvents:64];

    return;
  }

LABEL_29:
  __break(1u);
}

id sub_1000070BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveActivityPlatterViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100007190()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22GuestUserHandoverSetup33LiveActivityPlatterViewController_leadingAccessoryView;
  if (qword_100033330 != -1)
  {
    swift_once();
  }

  v3 = qword_100034BD0;
  v4 = objc_allocWithZone(type metadata accessor for LiveActivityImageAccessoryView());
  v5 = sub_1000023A8(v3, 0);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v2) = v5;
  v6 = OBJC_IVAR____TtC22GuestUserHandoverSetup33LiveActivityPlatterViewController_labelAccessoryView;
  v7 = [objc_allocWithZone(type metadata accessor for LiveActivityLabelAccessoryView()) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v6) = v7;
  v8 = OBJC_IVAR____TtC22GuestUserHandoverSetup33LiveActivityPlatterViewController_tapGestureInterceptorView;
  v9 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [objc_opt_self() clearColor];
  [v9 setBackgroundColor:v10];

  v11 = [v9 layer];
  [v11 setHitTestsAsOpaque:1];

  *(v1 + v8) = v9;
  v12 = OBJC_IVAR____TtC22GuestUserHandoverSetup33LiveActivityPlatterViewController_endGuestUserModeButton;
  sub_100005A74();
  v14 = v13;
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v12) = v14;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100007370(const char *a1, uint64_t (*a2)(void))
{
  v5 = v2;
  swift_getObjectType();
  if (qword_100033358 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000549C(v6, qword_100034C28);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    v11 = _typeName(_:qualified:)();
    v13 = sub_10001C470(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 0xCu);
    sub_100005700(v10);
  }

  v14 = *(v5 + OBJC_IVAR____TtC22GuestUserHandoverSetup33LiveActivityPlatterViewController_liveActivityModel);
  return a2();
}

void sub_1000074EC(uint64_t a1)
{
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    [v3 pushViewController:a1 animated:1];
  }
}

uint64_t sub_10000756C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000280C(&qword_100033610, &qword_10001F250);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000C77C(a3, v27 - v11, &qword_100033610, &qword_10001F250);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000CBD0(v12, &qword_100033610, &qword_10001F250);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_10000CBD0(a3, &qword_100033610, &qword_10001F250);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000CBD0(a3, &qword_100033610, &qword_10001F250);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10000786C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_10000280C(&qword_100033610, &qword_10001F250);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version2();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AudioHapticController();
  *(v3 + 16) = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_appRestrictionState) = 1;
  *(v3 + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_shouldPlayAttentionAudioHaptics) = 1;
  GuestUserHandoverService.init()();
  v15 = OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_requestConfiguration;
  v16 = type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version1();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v3 + v15, a1, v16);
  static GuestUserRemoteUnlockRequestConfiguration.Version2.emptyConfiguration.getter();
  (*(v11 + 32))(v3 + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_requestDataConfiguration, v14, v10);
  *(v3 + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_playbackBehavior) = a2 & 1;
  *(v3 + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_applicationLibrary) = GuestUserRemoteUnlockRequestConfiguration.Version1.applicationLibrary.getter();
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  type metadata accessor for MainActor();

  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = &protocol witness table for MainActor;
  v20[4] = v3;
  sub_10000756C(0, 0, v9, &unk_10001F400, v20);

  (*(v17 + 8))(a1, v16);
  return v3;
}

uint64_t sub_100007B34()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = async function pointer to GuestUserHandoverService.activate()[1];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_100003A28;

  return GuestUserHandoverService.activate()();
}

void *sub_100007BEC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_10000280C(&qword_100033610, &qword_10001F250);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version1();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AudioHapticController();
  v3[2] = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_appRestrictionState) = 1;
  *(v3 + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_shouldPlayAttentionAudioHaptics) = 1;
  GuestUserHandoverService.init()();
  static GuestUserRemoteUnlockRequestConfiguration.Version1.emptyConfiguration.getter();
  (*(v12 + 32))(v3 + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_requestConfiguration, v15, v11);
  v16 = OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_requestDataConfiguration;
  v17 = type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version2();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v3 + v16, a1, v17);
  *(v3 + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_playbackBehavior) = a2 & 1;
  *(v3 + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_applicationLibrary) = GuestUserRemoteUnlockRequestConfiguration.Version2.makeApplicationLibrary()();
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  type metadata accessor for MainActor();

  v20 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = &protocol witness table for MainActor;
  v21[4] = v3;
  sub_10000756C(0, 0, v10, &unk_10001F3D8, v21);

  (*(v18 + 8))(a1, v17);
  return v3;
}

uint64_t sub_10000802C()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = async function pointer to GuestUserHandoverService.activate()[1];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1000080E4;

  return GuestUserHandoverService.activate()();
}

uint64_t sub_1000080E4()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000D338, v5, v4);
}

void sub_100008220()
{
  if (*(v0 + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_shouldPlayAttentionAudioHaptics) == 1)
  {
    if (qword_100033350 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000549C(v1, qword_100034C10);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Playing attention request audio/haptics", v4, 2u);
    }

    v6[4] = sub_10000D30C;
    v6[5] = 0;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_10000B440;
    v6[3] = &unk_10002D308;
    v5 = _Block_copy(v6);

    AudioServicesPlaySystemSoundWithCompletion(0x501u, v5);
    _Block_release(v5);
  }
}

uint64_t sub_100008394()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version1();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = type metadata accessor for MainActor();
  v1[8] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v1[9] = v5;
  *v5 = v1;
  v5[1] = sub_1000084C8;

  return sub_100008EBC();
}

uint64_t sub_1000084C8(char a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 72);
  v7 = *v2;
  *(v5 + 80) = v1;

  v8 = *(v5 + 64);
  v9 = *(v5 + 56);
  if (v3)
  {
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
    v13 = sub_100008D6C;
    v14 = v10;
    v15 = v12;
  }

  else
  {
    *(v5 + 136) = a1 & 1;
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v17;
    *(v5 + 88) = v16;
    *(v5 + 96) = v17;
    v13 = sub_10000865C;
    v14 = v16;
  }

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_10000865C()
{
  v27 = v0;
  if (*(v0 + 136) == 1)
  {
    v2 = *(v0 + 40);
    v1 = *(v0 + 48);
    v3 = *(v0 + 32);
    v4 = *(v0 + 16);
    v5 = OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_requestConfiguration;
    static GuestUserRemoteUnlockRequestConfiguration.Version1.emptyConfiguration.getter();
    v6 = static GuestUserRemoteUnlockRequestConfiguration.Version1.== infix(_:_:)();
    (*(v2 + 8))(v1, v3);
    if (v6)
    {
      v7 = *(v0 + 16);
      v8 = OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_requestDataConfiguration;
      v9 = async function pointer to GuestUserHandoverService.replayRequest(requestConfiguration:)[1];
      v10 = swift_task_alloc();
      *(v0 + 104) = v10;
      *v10 = v0;
      v10[1] = sub_10000895C;

      return GuestUserHandoverService.replayRequest(requestConfiguration:)(v7 + v8);
    }

    else
    {
      v23 = async function pointer to GuestUserHandoverService.replayRequest(requestConfiguration:)[1];
      v24 = swift_task_alloc();
      *(v0 + 120) = v24;
      *v24 = v0;
      v24[1] = sub_100008C30;

      return GuestUserHandoverService.replayRequest(requestConfiguration:)(v4 + v5);
    }
  }

  else
  {
    v11 = *(v0 + 64);

    if (qword_100033350 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000549C(v12, qword_100034C10);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 24);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26 = v17;
      *v16 = 136446210;
      v18 = _typeName(_:qualified:)();
      v20 = sub_10001C470(v18, v19, &v26);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s unlock request failed", v16, 0xCu);
      sub_100005700(v17);
    }

    v21 = *(v0 + 48);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_10000895C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_100008DDC;
  }

  else
  {
    v7 = sub_100008A98;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100008A98()
{
  v15 = v0;
  v1 = v0[8];

  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000549C(v2, qword_100034C10);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10001C470(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s successfully sent present prox card request to service", v6, 0xCu);
    sub_100005700(v7);
  }

  v11 = v0[6];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100008C30()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_100008E4C;
  }

  else
  {
    v7 = sub_10000D330;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100008D6C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100008DDC()
{
  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100008E4C()
{
  v1 = v0[16];
  v2 = v0[8];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100008EBC()
{
  v1[2] = *v0;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_100008F7C, v3, v2);
}

uint64_t sub_100008F7C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = static MainActor.shared.getter();
  v0[7] = v3;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *(v4 + 16) = v2;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_100009084;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 11, v3, &protocol witness table for MainActor, 0xD000000000000019, 0x8000000100020200, sub_10000D150, v4, &type metadata for Bool);
}

uint64_t sub_100009084()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v10 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = v2[5];
    v5 = v2[6];
    v6 = sub_100009210;
  }

  else
  {
    v7 = v2[7];
    v8 = v2[8];

    v4 = v2[5];
    v5 = v2[6];
    v6 = sub_1000091A8;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1000091A8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 88);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100009210()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[4];

  v4 = v0[1];
  v5 = v0[10];

  return v4(0);
}

void sub_10000928C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000280C(&qword_100033948, &qword_10001F438);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_10000D1F8;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100009730;
  aBlock[3] = &unk_10002D2E0;
  v11 = _Block_copy(aBlock);

  SBSRequestPasscodeUnlockUI();
  _Block_release(v11);
}

uint64_t sub_100009440(char a1)
{
  if ((a1 & 1) != 0 && MKBGetDeviceLockState() - 1 >= 2)
  {
    if (qword_100033350 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000549C(v10, qword_100034C10);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136446210;
      v15 = _typeName(_:qualified:)();
      v17 = sub_10001C470(v15, v16, &v18);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s unlock request succeeded", v13, 0xCu);
      sub_100005700(v14);
    }

    LOBYTE(v18) = 1;
    sub_10000280C(&qword_100033948, &qword_10001F438);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (qword_100033350 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000549C(v1, qword_100034C10);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v18 = v5;
      *v4 = 136446210;
      v6 = _typeName(_:qualified:)();
      v8 = sub_10001C470(v6, v7, &v18);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s unlock request failed", v4, 0xCu);
      sub_100005700(v5);
    }

    sub_10000D2B8();
    v18 = swift_allocError();
    sub_10000280C(&qword_100033948, &qword_10001F438);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_100009730(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2 != 0;

  v3(v4);
}

uint64_t sub_100009788()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_10000280C(&qword_100033610, &qword_10001F250);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for GuestUserRemoteUnlockResponse();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v21 - v12;
  v14 = type metadata accessor for GuestUserAccessError();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  sub_10000CC30(v13, v11);
  type metadata accessor for MainActor();

  v16 = static MainActor.shared.getter();
  v17 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v19[2] = v16;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = v1;
  sub_10000CC98(v11, v19 + v17);
  *(v19 + v18) = v2;
  sub_10000756C(0, 0, v6, &unk_10001F430, v19);

  return sub_10000CE2C(v13);
}

uint64_t sub_100009A14()
{
  v1 = v0;
  v22 = *v0;
  v2 = sub_10000280C(&qword_100033610, &qword_10001F250);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for ViewMirroringDevice();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for GuestUserRemoteUnlockResponse();
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  v10 = __chkstk_darwin(v8);
  v11 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v21 - v12;
  static ViewMirroringDevice.localDevice.getter();
  if (*(v0 + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_appRestrictionState) == 1)
  {
    v14 = *(v0 + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_applicationLibrary);
    v15 = *(v1 + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_applicationLibrary);

    ApplicationLibrary.selectedApplicationBundleIds.getter();
  }

  GuestUserModeConfiguration.init(viewMirroringDevice:appRestrictionState:allowedApplicationBundleIds:)();
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  sub_10000CC30(v13, v11);
  type metadata accessor for MainActor();

  v17 = static MainActor.shared.getter();
  v18 = (*(v21 + 80) + 40) & ~*(v21 + 80);
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = v1;
  sub_10000CC98(v11, v19 + v18);
  *(v19 + ((v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
  sub_10000756C(0, 0, v5, &unk_10001F428, v19);

  return sub_10000CE2C(v13);
}

uint64_t sub_100009D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a6;
  v6[4] = type metadata accessor for MainActor();
  v8 = static MainActor.shared.getter();
  v9 = OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_service;
  v6[5] = v8;
  v6[6] = v9;
  v10 = async function pointer to GuestUserHandoverService.sendGuestUserAccessResponse(_:)[1];
  v11 = swift_task_alloc();
  v6[7] = v11;
  *v11 = v6;
  v11[1] = sub_100009DDC;

  return GuestUserHandoverService.sendGuestUserAccessResponse(_:)(a5);
}

uint64_t sub_100009DDC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v11 = *v1;
  v3[8] = v2;

  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v8;
  v3[10] = v7;
  if (v2)
  {
    v9 = sub_10000A2A0;
  }

  else
  {
    v9 = sub_100009F3C;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_100009F3C()
{
  v16 = v0;
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000549C(v1, qword_100034C10);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10001C470(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s successfully sent Guest User Mode response", v5, 0xCu);
    sub_100005700(v6);
  }

  v10 = v0[6];
  v11 = v0[2];
  v12 = async function pointer to GuestUserHandoverService.dismissRequest()[1];
  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = sub_10000A104;

  return GuestUserHandoverService.dismissRequest()();
}

uint64_t sub_10000A104()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_10000A4B8;
  }

  else
  {
    v7 = sub_10000A240;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10000A240()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000A2A0()
{
  v17 = v0;
  v1 = v0[8];
  v2 = v0[5];

  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000549C(v3, qword_100034C10);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    v10 = _typeName(_:qualified:)();
    v12 = sub_10001C470(v10, v11, &v16);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s error sending Guest User Mode response: %{public}@", v7, 0x16u);
    sub_10000CBD0(v8, &qword_100034110, &qword_10001F290);

    sub_100005700(v9);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_10000A4B8()
{
  v17 = v0;
  v1 = v0[12];
  v2 = v0[5];

  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000549C(v3, qword_100034C10);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    v10 = _typeName(_:qualified:)();
    v12 = sub_10001C470(v10, v11, &v16);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s error sending Guest User Mode response: %{public}@", v7, 0x16u);
    sub_10000CBD0(v8, &qword_100034110, &qword_10001F290);

    sub_100005700(v9);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_10000A6D0(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = type metadata accessor for GuestUserAccessError();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000280C(&qword_100033610, &qword_10001F250);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v6 + 16))(v8, a1, v5);
  type metadata accessor for MainActor();

  v14 = static MainActor.shared.getter();
  v15 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 2) = v14;
  *(v17 + 3) = &protocol witness table for MainActor;
  *(v17 + 4) = v2;
  (*(v6 + 32))(&v17[v15], v8, v5);
  *&v17[v16] = v4;
  sub_10000F63C(0, 0, v12, &unk_10001F410, v17);
}

uint64_t sub_10000A90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a6;
  v6[4] = type metadata accessor for MainActor();
  v8 = static MainActor.shared.getter();
  v9 = OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_service;
  v6[5] = v8;
  v6[6] = v9;
  v10 = async function pointer to GuestUserHandoverService.transportError(_:)[1];
  v11 = swift_task_alloc();
  v6[7] = v11;
  *v11 = v6;
  v11[1] = sub_10000A9D8;

  return GuestUserHandoverService.transportError(_:)(a5);
}

uint64_t sub_10000A9D8()
{
  v2 = v0;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v10 = *v1;
  *(*v1 + 64) = v2;

  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = sub_10000AEBC;
  }

  else
  {
    v8 = sub_10000AB34;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10000AB34()
{
  v16 = v0;
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000549C(v1, qword_100034C10);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10001C470(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s successfully sent Guest Mode Error", v5, 0xCu);
    sub_100005700(v6);
  }

  v10 = v0[6];
  v11 = v0[2];
  v12 = async function pointer to GuestUserHandoverService.dismissRequest()[1];
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_10000ACFC;

  return GuestUserHandoverService.dismissRequest()();
}

uint64_t sub_10000ACFC()
{
  v2 = v0;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v10 = *v1;
  *(*v1 + 80) = v2;

  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = sub_10000B114;
  }

  else
  {
    v8 = sub_10000AE58;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10000AE58()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000AEBC()
{
  v21 = v0;
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = type metadata accessor for Logger();
  sub_10000549C(v2, qword_100034C10);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[8];
  if (v5)
  {
    v7 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v8 = 136446466;
    v11 = _typeName(_:qualified:)();
    v13 = sub_10001C470(v11, v12, &v20);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error sending Guest Mode Error: %{public}@", v8, 0x16u);
    sub_10000CBD0(v9, &qword_100034110, &qword_10001F290);

    sub_100005700(v10);
  }

  else
  {
  }

  v15 = v0[6];
  v16 = v0[2];
  v17 = async function pointer to GuestUserHandoverService.dismissRequest()[1];
  v18 = swift_task_alloc();
  v0[9] = v18;
  *v18 = v0;
  v18[1] = sub_10000ACFC;

  return GuestUserHandoverService.dismissRequest()();
}

uint64_t sub_10000B114()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_10000B178()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_requestConfiguration;
  v3 = type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version1();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_requestDataConfiguration;
  v5 = type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version2();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_service;
  v7 = type metadata accessor for GuestUserHandoverService();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_applicationLibrary];

  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v9, v10);
}

uint64_t type metadata accessor for ProxCardSetUpModel()
{
  result = qword_100033780;
  if (!qword_100033780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000B300()
{
  result = type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version1();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version2();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = type metadata accessor for GuestUserHandoverService();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_10000B440(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10000B484(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000B57C;

  return v7(a1);
}

uint64_t sub_10000B57C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000B674(uint64_t a1)
{
  v2 = sub_10000280C(&qword_100033900, &qword_10001F3B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v95 - v4;
  v6 = type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version2();
  v98 = *(v6 - 8);
  v7 = *(v98 + 64);
  v8 = __chkstk_darwin(v6);
  v96 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v95 - v10;
  v12 = sub_10000280C(&qword_100033908, &qword_10001F3B8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v101 = &v95 - v14;
  v103 = type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version1();
  v102 = *(v103 - 8);
  v15 = *(v102 + 64);
  v16 = __chkstk_darwin(v103);
  v104 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v100 = &v95 - v18;
  if (qword_100033350 != -1)
  {
LABEL_77:
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000549C(v19, qword_100034C10);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  v22 = os_log_type_enabled(v20, v21);
  v99 = v6;
  v97 = v11;
  v95 = v5;
  if (v22)
  {
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v110[0] = v23;
    *v11 = 136446210;
    v24 = Dictionary.description.getter();
    v26 = sub_10001C470(v24, v25, v110);

    *(v11 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, "contextUserInfo %{public}s", v11, 0xCu);
    sub_100005700(v23);
  }

  v112 = static GuestUserHandoverSetupCoordinator.Constants.isRetriggerKey.getter();
  v113 = v27;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v28 = sub_10001CA18(v110), (v29 & 1) == 0))
  {
    sub_10000C4A0(v110);
LABEL_10:
    v105 = 0;
    goto LABEL_11;
  }

  sub_10000C550(*(a1 + 56) + 32 * v28, &v107);
  sub_10000C4A0(v110);
  if ((swift_dynamicCast() & 1) == 0 || (v112 & 1) == 0)
  {
    goto LABEL_10;
  }

  v105 = 1;
LABEL_11:
  v6 = a1 + 64;
  v30 = 1 << *(a1 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(a1 + 64);
  v5 = (v30 + 63) >> 6;

  v33 = 0;
  v34 = &qword_100033910;
  v35 = &unk_10001F3C0;
  v106 = a1;
  while (1)
  {
    while (1)
    {
      if (!v32)
      {
        while (1)
        {
          v36 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            __break(1u);
            goto LABEL_76;
          }

          if (v36 >= v5)
          {
            break;
          }

          v32 = *(v6 + 8 * v36);
          ++v33;
          if (v32)
          {
            v33 = v36;
            goto LABEL_20;
          }
        }

        v46 = 1 << *(a1 + 32);
        v47 = -1;
        if (v46 < 64)
        {
          v47 = ~(-1 << v46);
        }

        v48 = v47 & *(a1 + 64);
        v49 = (v46 + 63) >> 6;

        v5 = 0;
        while (v48)
        {
LABEL_38:
          v51 = __clz(__rbit64(v48));
          v48 &= v48 - 1;
          v52 = v51 | (v5 << 6);
          sub_10000C4F4(*(a1 + 48) + 40 * v52, v110);
          sub_10000C550(*(a1 + 56) + 32 * v52, v111);
          sub_10000C77C(v110, &v107, &qword_100033910, &unk_10001F3C0);
          v53 = swift_dynamicCast();
          v11 = v113;
          if (v53)
          {
            v54 = v112;
          }

          else
          {
            v54 = 0;
          }

          v55 = static GuestUserHandoverSetupCoordinator.Constants.requestDataConfigurationKey.getter();
          if (v53 && v11)
          {
            if (v54 == v55 && v11 == v56)
            {

              sub_10000CBD0(v110, &qword_100033910, &unk_10001F3C0);
              sub_100005700(v109);
LABEL_58:

              v107 = static GuestUserHandoverSetupCoordinator.Constants.requestDataConfigurationKey.getter();
              v108 = v75;
              AnyHashable.init<A>(_:)();
              if (*(a1 + 16) && (v76 = sub_10001CA18(v110), (v77 & 1) != 0))
              {
                sub_10000C550(*(a1 + 56) + 32 * v76, &v107);
                sub_10000C4A0(v110);

                v78 = swift_dynamicCast();
                v79 = v99;
                v80 = v97;
                v81 = v95;
                if (v78)
                {
                  v82 = v112;
                  v83 = v113;
                }

                else
                {
                  v82 = 0;
                  v83 = 0xF000000000000000;
                }
              }

              else
              {

                sub_10000C4A0(v110);
                v82 = 0;
                v83 = 0xF000000000000000;
                v79 = v99;
                v80 = v97;
                v81 = v95;
              }

              sub_10000C5AC(v82, v83);
              sub_10000C67C(&qword_100033930, &type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version2);
              sub_10000C67C(&qword_100033938, &type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version2);
              sub_10000C67C(&qword_100033940, &type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version2);
              TransportSerializable<>.init(transportData:)();
              v86 = v98;
              v87 = (*(v98 + 48))(v81, 1, v79);
              v64 = v105;
              if (v87 == 1)
              {
                static GuestUserRemoteUnlockRequestConfiguration.Version2.emptyConfiguration.getter();
                if ((*(v86 + 48))(v81, 1, v79) != 1)
                {
                  sub_10000CBD0(v81, &qword_100033900, &qword_10001F3B0);
                }
              }

              else
              {
                (*(v86 + 32))(v80, v81, v79);
              }

              v91 = v96;
              (*(v86 + 16))(v96, v80, v79);
              v92 = type metadata accessor for ProxCardSetUpModel();
              v93 = *(v92 + 48);
              v94 = *(v92 + 52);
              v62 = swift_allocObject();
              sub_100007BEC(v91, v64);
              sub_10000C614(v82, v83);
              (*(v86 + 8))(v80, v79);
              goto LABEL_48;
            }

            v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

            sub_10000CBD0(v110, &qword_100033910, &unk_10001F3C0);
            sub_100005700(v109);
            if (v57)
            {
              goto LABEL_58;
            }
          }

          else
          {
            sub_10000CBD0(v110, &qword_100033910, &unk_10001F3C0);

            sub_100005700(v109);
          }
        }

        while (1)
        {
          v50 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            break;
          }

          if (v50 >= v49)
          {

            v58 = v104;
            static GuestUserRemoteUnlockRequestConfiguration.Version1.emptyConfiguration.getter();
            v59 = type metadata accessor for ProxCardSetUpModel();
            v60 = *(v59 + 48);
            v61 = *(v59 + 52);
            v62 = swift_allocObject();
            v63 = v58;
            v64 = v105;
            sub_10000786C(v63, v105);
            goto LABEL_48;
          }

          v48 = *(v6 + 8 * v50);
          ++v5;
          if (v48)
          {
            v5 = v50;
            goto LABEL_38;
          }
        }

LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

LABEL_20:
      v37 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v38 = v37 | (v33 << 6);
      sub_10000C4F4(*(a1 + 48) + 40 * v38, v110);
      sub_10000C550(*(a1 + 56) + 32 * v38, v111);
      v11 = v34;
      v39 = v35;
      sub_10000C77C(v110, &v107, v34, v35);
      v40 = swift_dynamicCast();
      v41 = v113;
      v42 = v40 ? v112 : 0;
      v43 = static GuestUserHandoverSetupCoordinator.Constants.requestConfigurationKey.getter();
      if (v40)
      {
        if (v41)
        {
          break;
        }
      }

      v34 = v11;
      v35 = v39;
      sub_10000CBD0(v110, v11, v39);

      sub_100005700(v109);
      a1 = v106;
    }

    if (v42 == v43 && v41 == v44)
    {
      break;
    }

    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v34 = v11;
    v35 = v39;
    sub_10000CBD0(v110, v11, v39);
    sub_100005700(v109);
    a1 = v106;
    if (v45)
    {
      goto LABEL_50;
    }
  }

  sub_10000CBD0(v110, &qword_100033910, &unk_10001F3C0);
  sub_100005700(v109);
  a1 = v106;
LABEL_50:

  v107 = static GuestUserHandoverSetupCoordinator.Constants.requestConfigurationKey.getter();
  v108 = v66;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v67 = sub_10001CA18(v110), (v68 & 1) != 0))
  {
    sub_10000C550(*(a1 + 56) + 32 * v67, &v107);
    sub_10000C4A0(v110);

    if (swift_dynamicCast())
    {
      v69 = v112;
      v70 = v113;
      goto LABEL_56;
    }
  }

  else
  {

    sub_10000C4A0(v110);
  }

  v69 = 0;
  v70 = 0xF000000000000000;
LABEL_56:
  v71 = v104;
  v72 = v103;
  v73 = v102;
  sub_10000C5AC(v69, v70);
  sub_10000C67C(&qword_100033918, &type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version1);
  sub_10000C67C(&qword_100033920, &type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version1);
  sub_10000C67C(&qword_100033928, &type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version1);
  v74 = v101;
  TransportSerializable<>.init(transportData:)();
  v84 = (*(v73 + 48))(v74, 1, v72);
  v64 = v105;
  if (v84 == 1)
  {
    v85 = v100;
    static GuestUserRemoteUnlockRequestConfiguration.Version1.emptyConfiguration.getter();
    if ((*(v73 + 48))(v74, 1, v72) != 1)
    {
      sub_10000CBD0(v74, &qword_100033908, &qword_10001F3B8);
    }
  }

  else
  {
    v85 = v100;
    (*(v73 + 32))(v100, v74, v72);
  }

  (*(v73 + 16))(v71, v85, v72);
  v88 = type metadata accessor for ProxCardSetUpModel();
  v89 = *(v88 + 48);
  v90 = *(v88 + 52);
  v62 = swift_allocObject();
  sub_10000786C(v71, v64);
  sub_10000C614(v69, v70);
  (*(v73 + 8))(v85, v72);
LABEL_48:
  *(v62 + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_shouldPlayAttentionAudioHaptics) = v64 ^ 1;
  return v62;
}

uint64_t sub_10000C550(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000C5AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000C5C0(a1, a2);
  }

  return a1;
}

uint64_t sub_10000C5C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000C614(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000C628(a1, a2);
  }

  return a1;
}

uint64_t sub_10000C628(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000C67C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000C6C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100005A70;

  return sub_10000802C();
}

uint64_t sub_10000C77C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000280C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000C7E4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C81C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005A70;

  return sub_10000B484(a1, v5);
}

uint64_t sub_10000C8D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000C914()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100005A70;

  return sub_100007B34();
}

uint64_t sub_10000C9C8()
{
  v1 = type metadata accessor for GuestUserAccessError();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000CAA0(uint64_t a1)
{
  v4 = *(type metadata accessor for GuestUserAccessError() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000580C;

  return sub_10000A90C(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_10000CBD0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000280C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000CC30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GuestUserRemoteUnlockResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CC98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GuestUserRemoteUnlockResponse();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CCFC(uint64_t a1)
{
  v4 = *(type metadata accessor for GuestUserRemoteUnlockResponse() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005A70;

  return sub_100009D10(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_10000CE2C(uint64_t a1)
{
  v2 = type metadata accessor for GuestUserRemoteUnlockResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000CE88()
{
  v1 = *(type metadata accessor for GuestUserRemoteUnlockResponse() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for GuestUserModeConfiguration();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    v8 = type metadata accessor for GuestUserAccessError();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v0 + v3, 1, v8))
    {
      (*(v9 + 8))(v0 + v3, v8);
    }
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_10000D020(uint64_t a1)
{
  v4 = *(type metadata accessor for GuestUserRemoteUnlockResponse() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000580C;

  return sub_100009D10(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_10000D158()
{
  v1 = sub_10000280C(&qword_100033948, &qword_10001F438);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000D1F8(char a1)
{
  v3 = *(sub_10000280C(&qword_100033948, &qword_10001F438) - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100009440(a1);
}

uint64_t sub_10000D2A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000D2B8()
{
  result = qword_100033950;
  if (!qword_100033950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100033950);
  }

  return result;
}

void sub_10000D33C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Locale();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v19.receiver = v0;
  v19.super_class = type metadata accessor for ErrorProximityCardViewController();
  objc_msgSendSuper2(&v19, "viewDidLoad");
  sub_1000186CC();
  sub_10000D608();
  v7 = String._bridgeToObjectiveC()();

  [v0 setTitle:v7];

  type metadata accessor for GuestUserAccessError();
  sub_10000DFCC();
  Error.localizedDescription.getter();
  v8 = String._bridgeToObjectiveC()();

  [v0 setSubtitle:v8];

  sub_10000280C(&qword_100033478, "VW");
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10001F4A0;
  sub_10000DA80();
  *(v9 + 32) = v10;
  sub_10000E024();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setImages:isa];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v12 = String.init(localized:table:bundle:locale:comment:)();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  *(v15 + 24) = ObjectType;
  v16 = v1;
  v17 = sub_100019718(v12, v14, 0, sub_10000E0A8, v15);

  v18 = [v16 addAction:v17];
}

uint64_t sub_10000D608()
{
  v1 = type metadata accessor for Locale();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for GuestUserAccessError();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v15 = *(v8 + 16);
  v15(&v29 - v13, v0, v7);
  if ((*(v8 + 88))(v14, v7) == enum case for GuestUserAccessError.remoteUnlockFailed(_:))
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  else
  {
    v33 = v4;
    if (qword_100033350 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000549C(v17, qword_100034C10);
    v15(v12, v0, v7);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v31 = v19;
      v21 = v20;
      v30 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34 = v32;
      *v21 = 136446466;
      *(v21 + 4) = sub_10001C470(0xD000000000000014, 0x8000000100020320, &v34);
      *(v21 + 12) = 2114;
      sub_10000DFCC();
      swift_allocError();
      v15(v22, v12, v7);
      v23 = _swift_stdlib_bridgeErrorToNSError();
      v24 = v12;
      v25 = *(v8 + 8);
      v25(v24, v7);
      *(v21 + 14) = v23;
      v26 = v30;
      *v30 = v23;
      _os_log_impl(&_mh_execute_header, v18, v31, "%{public}s found unexpected GuestUserAccessError: (%{public}@; falling back to .remoteUnlockFailed", v21, 0x16u);
      sub_100005900(v26);

      sub_100005700(v32);
    }

    else
    {

      v27 = v12;
      v25 = *(v8 + 8);
      v25(v27, v7);
    }

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v28 = String.init(localized:table:bundle:locale:comment:)();
    v25(v14, v7);
    return v28;
  }
}

void sub_10000DA80()
{
  v0 = [objc_opt_self() systemYellowColor];
  v1 = [objc_opt_self() configurationWithPointSize:100.0];
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() _systemImageNamed:v2 withConfiguration:v1];

  if (v3)
  {
    [v3 imageWithTintColor:v0 renderingMode:1];
  }

  else
  {
    __break(1u);
  }
}

id sub_10000DB88(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000549C(v6, qword_100034C10);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v9 = 136446466;
    v10 = _typeName(_:qualified:)();
    v12 = sub_10001C470(v10, v11, &v15);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_10001C470(0x4C64694477656976, 0xED0000292864616FLL, &v15);
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s %{public}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  ObjectType = swift_getObjectType();
  (*(a2 + 8))(ObjectType, a2);
  sub_10000A6D0(a3 + OBJC_IVAR____TtC22GuestUserHandoverSetup32ErrorProximityCardViewController_error);

  return [a1 dismissViewControllerAnimated:1 completion:0];
}

id sub_10000DE14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ErrorProximityCardViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ErrorProximityCardViewController()
{
  result = qword_100033988;
  if (!qword_100033988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000DF1C()
{
  result = type metadata accessor for GuestUserAccessError();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_10000DFCC()
{
  result = qword_100033998;
  if (!qword_100033998)
  {
    type metadata accessor for GuestUserAccessError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100033998);
  }

  return result;
}

unint64_t sub_10000E024()
{
  result = qword_1000339A0;
  if (!qword_1000339A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000339A0);
  }

  return result;
}

uint64_t sub_10000E070()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E0B0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

id sub_10000E224()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

id sub_10000E308(void *a1)
{
  swift_getObjectType();
  v2 = [a1 role];
  v3 = [objc_allocWithZone(UISceneConfiguration) initWithName:0 sessionRole:v2];

  v4 = [a1 role];
  v21[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21[1] = v5;
  v20[2] = v21;
  LOBYTE(v2) = sub_10000E0B0(sub_10000E5B8, v20, &off_10002CF08);

  if (v2)
  {
    type metadata accessor for LiveActivitySceneDelegate();
  }

  else
  {
    type metadata accessor for ProxCardSetUpSceneDelegate();
  }

  [v3 setDelegateClass:swift_getObjCClassFromMetadata()];
  if (qword_100033340 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000549C(v6, qword_100034BE0);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v21[0] = swift_slowAlloc();
    *v10 = 136446466;
    v11 = _typeName(_:qualified:)();
    v13 = sub_10001C470(v11, v12, v21);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    v14 = [v7 role];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = sub_10001C470(v15, v17, v21);

    *(v10 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s application configuring for role %{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  return v3;
}

uint64_t sub_10000E5B8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

id sub_10000E610(double a1)
{
  v2 = v1;
  v4 = Application.bundleIdentifier.getter();
  v6 = v5;
  swift_beginAccess();
  v7 = *(v1 + 16);
  if (*(v7 + 16) && (v8 = *(v2 + 16), , v9 = sub_10001CAA0(v4, v6), v11 = v10, , (v11 & 1) != 0))
  {
    v12 = *(*(v7 + 56) + 8 * v9);
  }

  else
  {

    v13 = Application.appIconImage.getter();
    if (v13)
    {
      v14 = v13;
      v15 = [objc_allocWithZone(UIImage) initWithCGImage:v13 scale:0 orientation:a1];
    }

    else
    {
      if (qword_100033328 != -1)
      {
        swift_once();
      }

      v15 = qword_100033A40;
    }

    v12 = v15;
    v16 = Application.bundleIdentifier.getter();
    v18 = v17;
    swift_beginAccess();
    v19 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v2 + 16);
    *(v2 + 16) = 0x8000000000000000;
    sub_10000EBA0(v12, v16, v18, isUniquelyReferenced_nonNull_native);

    *(v2 + 16) = v22;
    swift_endAccess();
  }

  return v12;
}

uint64_t sub_10000E7D4()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

void sub_10000E830()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() systemImageNamed:v0];

  if (v1)
  {
    v2 = [objc_opt_self() systemBlueColor];
    v3 = [v1 imageWithTintColor:v2];

    qword_100033A40 = v3;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000E8FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000280C(&unk_1000336F0, &qword_10001F2E0);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10000EBA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10001CAA0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10000E8FC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10001CAA0(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_10000ED18();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

id sub_10000ED18()
{
  v1 = v0;
  sub_10000280C(&unk_1000336F0, &qword_10001F2E0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10000EE84(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10000280C(&qword_100033610, &qword_10001F250);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  type metadata accessor for MainActor();
  v15 = a3;

  v16 = a1;
  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v15;
  v18[5] = a4;
  v18[6] = a5;
  v18[7] = v16;
  v18[8] = a2;
  sub_10000F63C(0, 0, v13, &unk_10001F5B0, v18);
}

uint64_t sub_10000EFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  type metadata accessor for MainActor();
  v8[7] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[8] = v10;
  v8[9] = v9;

  return _swift_task_switch(sub_10000F084, v10, v9);
}

uint64_t sub_10000F084()
{
  v24 = v0;
  v1 = [*(v0 + 16) actions];
  sub_100003928(0, &qword_100033B38, PRXAction_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_18:
    v15 = *(v0 + 56);

    if (qword_100033350 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000549C(v16, qword_100034C10);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_10001C470(0xD000000000000025, 0x800000010001F530, &v23);
      _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s unable to find primary action", v19, 0xCu);
      sub_100005700(v20);
    }

    v21 = *(v0 + 8);

    return v21();
  }

LABEL_17:
  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_18;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    *(v0 + 80) = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (![v5 style])
    {
      break;
    }

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_18;
    }
  }

  v8 = *(v0 + 24);

  [v6 setEnabled:0];
  v22 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 88) = v10;
  *v10 = v0;
  v10[1] = sub_10000F400;
  v12 = *(v0 + 40);
  v11 = *(v0 + 48);
  v13 = *(v0 + 32);

  return v22(v12, v11);
}

uint64_t sub_10000F400()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_10000F5BC;
  }

  else
  {
    v7 = sub_10000F53C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10000F53C()
{
  v1 = v0[10];
  v2 = v0[7];

  [v1 setEnabled:1];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10000F5BC()
{
  v1 = v0[10];
  v2 = v0[7];

  [v1 setEnabled:1];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_10000F63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000280C(&qword_100033610, &qword_10001F250);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_100010FFC(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10001106C(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_10001106C(a3);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001106C(a3);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

id sub_10000F8A8()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000549C(v2, qword_100034C10);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10001C470(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s deinit", v5, 0xCu);
    sub_100005700(v6);
  }

  v10 = type metadata accessor for AllowGuestProximityCardViewController();
  v13.receiver = v1;
  v13.super_class = v10;
  return objc_msgSendSuper2(&v13, "dealloc");
}

void sub_10000FA54()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Locale();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v30.receiver = v0;
  v30.super_class = type metadata accessor for AllowGuestProximityCardViewController();
  objc_msgSendSuper2(&v30, "viewDidLoad");
  sub_100018938();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v7 = String._bridgeToObjectiveC()();

  [v0 setTitle:v7];

  sub_10001090C();
  if (MKBGetDeviceLockState() - 1 > 1)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v14 = String.init(localized:table:bundle:locale:comment:)();
    v16 = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = ObjectType;
    v18 = sub_100019768(v14, v16, 0, sub_100010DC8, v17);

    v19 = [v1 addAction:v18];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v20 = String.init(localized:table:bundle:locale:comment:)();
    v22 = v21;
    v23 = swift_allocObject();
    *(v23 + 16) = ObjectType;
    v24 = objc_opt_self();
    v25 = objc_opt_self();
    v26 = [v25 systemBlackColor];
    v27 = [v25 systemWhiteColor];
    v28 = [v24 initWithBackgroundColor:v26 textColor:v27];

    v13 = sub_10001991C(v20, v22, v28, sub_100010DD0, v23);
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v8 = String.init(localized:table:bundle:locale:comment:)();
    v10 = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = ObjectType;
    v12 = swift_allocObject();
    v12[2] = v1;
    v12[3] = &unk_10001F598;
    v12[4] = v11;
    v1;

    v13 = sub_100019768(v8, v10, 0, sub_100010EC4, v12);
  }

  v29 = [v1 addAction:v13];
}

uint64_t sub_10000FEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_10000FF8C, v5, v4);
}

uint64_t sub_10000FF8C()
{
  v16 = v0;
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000549C(v1, qword_100034C10);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10001C470(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s requesting passcode unlock", v5, 0xCu);
    sub_100005700(v6);
  }

  v11 = v0[2];
  v10 = v0[3];
  ObjectType = swift_getObjectType();
  v0[8] = (*(v10 + 8))(ObjectType, v10);
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_100010170;

  return sub_100008394();
}

uint64_t sub_100010170()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_10001028C;
  }

  else
  {
    v7 = v2[8];

    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_10000AE58;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10001028C()
{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

void sub_1000102FC(uint64_t a1, uint64_t a2)
{
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000549C(v3, qword_100034C10);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10001C470(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s continue guest user set up", v6, 0xCu);
    sub_100005700(v7);
  }

  swift_getObjectType();
  v11 = (*(a2 + 8))();
  v12 = type metadata accessor for AppRestrictionProximityCardViewController();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC22GuestUserHandoverSetup41AppRestrictionProximityCardViewController_model] = v11;
  v16.receiver = v13;
  v16.super_class = v12;
  v14 = objc_msgSendSuper2(&v16, "initWithContentView:", 0);
  sub_1000074EC(v14);
}

id sub_1000104D8(void *a1, uint64_t a2)
{
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000549C(v4, qword_100034C10);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v7 = 136446466;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10001C470(v8, v9, &v13);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_10001C470(0x4C64694477656976, 0xED0000292864616FLL, &v13);
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  ObjectType = swift_getObjectType();
  (*(a2 + 8))(ObjectType, a2);
  sub_100009788();

  return [a1 dismissViewControllerAnimated:1 completion:0];
}

void sub_100010714(char a1)
{
  v2 = v1;
  swift_getObjectType();
  v14.receiver = v1;
  v14.super_class = type metadata accessor for AllowGuestProximityCardViewController();
  objc_msgSendSuper2(&v14, "viewDidAppear:", a1 & 1);
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000549C(v4, qword_100034C10);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446466;
    v9 = _typeName(_:qualified:)();
    v11 = sub_10001C470(v9, v10, &v13);

    *(v7 + 4) = v11;
    *(v7 + 12) = 1026;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s viewDidAppear animated:%{BOOL,public}d", v7, 0x12u);
    sub_100005700(v8);
  }

  v12 = *&v2[OBJC_IVAR____TtC22GuestUserHandoverSetup37AllowGuestProximityCardViewController_model];
  sub_100008220();
}

void sub_10001090C()
{
  v1 = v0;
  v2 = *(*&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup37AllowGuestProximityCardViewController_model] + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_playbackBehavior);
  v3 = objc_allocWithZone(type metadata accessor for VideoPlayerView());
  v4 = sub_1000118BC(v2);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [v0 contentView];
  [v5 addSubview:v4];

  v31 = objc_opt_self();
  sub_10000280C(&qword_100033478, "VW");
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10001F540;
  v7 = [v4 topAnchor];
  v8 = [v1 contentView];
  v9 = [v8 mainContentGuide];

  v10 = [v9 topAnchor];
  v11 = [v7 constraintGreaterThanOrEqualToAnchor:v10];

  *(v6 + 32) = v11;
  v12 = [v4 centerXAnchor];
  v13 = [v1 contentView];
  v14 = [v13 mainContentGuide];

  v15 = [v14 centerXAnchor];
  v16 = [v12 constraintEqualToAnchor:v15];

  *(v6 + 40) = v16;
  v17 = [v4 centerYAnchor];
  v18 = [v1 contentView];
  v19 = [v18 mainContentGuide];

  v20 = [v19 centerYAnchor];
  v21 = [v17 constraintEqualToAnchor:v20];

  *(v6 + 48) = v21;
  v22 = [v4 bottomAnchor];
  v23 = [v1 contentView];
  v24 = [v23 mainContentGuide];

  v25 = [v24 bottomAnchor];
  v26 = [v22 constraintLessThanOrEqualToAnchor:v25];

  *(v6 + 56) = v26;
  v27 = [v4 widthAnchor];
  v28 = [v27 constraintEqualToConstant:370.0];

  *(v6 + 64) = v28;
  v29 = [v4 heightAnchor];

  v30 = [v29 constraintEqualToConstant:180.0];
  *(v6 + 72) = v30;
  sub_100003928(0, &qword_100033480, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v31 activateConstraints:isa];
}

uint64_t sub_100010DD8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000580C;

  return sub_10000FEF0(a1, a2, v6);
}

uint64_t sub_100010E84()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100010ED0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100010F20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100005A70;

  return sub_10000EFE4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100010FFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000280C(&qword_100033610, &qword_10001F250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001106C(uint64_t a1)
{
  v2 = sub_10000280C(&qword_100033610, &qword_10001F250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000110DC()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for VideoPlayerView();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  v1 = [v0 layer];
  v2 = [v1 sublayers];

  if (v2)
  {
    sub_100011870();
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v3 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = &_swiftEmptyArrayStorage;
    if (!(&_swiftEmptyArrayStorage >> 62))
    {
LABEL_3:
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_12:

      return;
    }
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      [v0 frame];
      [v7 setFrame:{0.0, 0.0}];
    }

    while (v4 != v5);
    goto LABEL_12;
  }

  __break(1u);
}

id sub_100011314()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoPlayerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for VideoPlayerView.PlaybackBehavior(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VideoPlayerView.PlaybackBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000114E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7473614C776F6873;
  }

  else
  {
    v4 = 0x6D6F724679616C70;
  }

  if (v3)
  {
    v5 = 0xED00007472617453;
  }

  else
  {
    v5 = 0xED0000656D617246;
  }

  if (*a2)
  {
    v6 = 0x7473614C776F6873;
  }

  else
  {
    v6 = 0x6D6F724679616C70;
  }

  if (*a2)
  {
    v7 = 0xED0000656D617246;
  }

  else
  {
    v7 = 0xED00007472617453;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1000115A4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100011640()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000116C8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100011760@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10002CF80, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1000117C0(uint64_t *a1@<X8>)
{
  v2 = 0x6D6F724679616C70;
  if (*v1)
  {
    v2 = 0x7473614C776F6873;
  }

  v3 = 0xED00007472617453;
  if (*v1)
  {
    v3 = 0xED0000656D617246;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_10001181C()
{
  result = qword_100033B68;
  if (!qword_100033B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100033B68);
  }

  return result;
}

unint64_t sub_100011870()
{
  result = qword_100033B70;
  if (!qword_100033B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100033B70);
  }

  return result;
}

id sub_1000118BC(int a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for URL();
  v60 = *(v3 - 8);
  v61 = v3;
  v4 = *(v60 + 64);
  __chkstk_darwin(v3);
  v62 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VideoPlayerView();
  v64.receiver = v1;
  v64.super_class = v6;
  v63 = objc_msgSendSuper2(&v64, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v7 = [objc_opt_self() mainBundle];
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 URLForResource:v8 withExtension:v9];

  if (v10)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = objc_allocWithZone(AVPlayerItem);
    URL._bridgeToObjectiveC()(v12);
    v14 = v13;
    v15 = [v11 initWithURL:v13];

    v16 = objc_allocWithZone(AVPlayer);
    v59 = v15;
    v17 = [v16 initWithPlayerItem:v15];
    v18 = [objc_opt_self() playerLayerWithPlayer:v17];
    [v18 setVideoGravity:AVLayerVideoGravityResizeAspectFill];
    v19 = [v63 layer];
    [v19 addSublayer:v18];

    v20 = [objc_opt_self() sharedInstance];
    v65 = 0;
    LODWORD(v14) = [v20 setCategory:AVAudioSessionCategoryPlayback mode:AVAudioSessionModeDefault options:1 error:&v65];

    if (v14)
    {
      v21 = v65;
      if (a1)
      {
        goto LABEL_16;
      }

LABEL_14:
      v39 = &selRef_play;
LABEL_17:
      [v17 *v39];
      if (qword_100033350 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_10000549C(v44, qword_100034C10);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *v47 = 136446722;
        v48 = _typeName(_:qualified:)();
        v50 = sub_10001C470(v48, v49, &v65);

        *(v47 + 4) = v50;
        *(v47 + 12) = 2082;
        *(v47 + 14) = sub_10001C470(0x766F6D2E3130334ELL, 0xE800000000000000, &v65);
        *(v47 + 22) = 2082;
        if (a1)
        {
          v51 = 0x7473614C776F6873;
        }

        else
        {
          v51 = 0x6D6F724679616C70;
        }

        if (a1)
        {
          v52 = 0xED0000656D617246;
        }

        else
        {
          v52 = 0xED00007472617453;
        }

        v53 = sub_10001C470(v51, v52, &v65);

        *(v47 + 24) = v53;
        _os_log_impl(&_mh_execute_header, v45, v46, "%{public}s successfully loaded %{public}s; playbackBehavior: %{public}s", v47, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      (*(v60 + 8))(v62, v61);
      return v63;
    }

    v58 = a1;
    v29 = v65;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100033350 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000549C(v30, qword_100034C10);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v65 = v57;
      *v33 = 136446466;
      v34 = _typeName(_:qualified:)();
      v36 = sub_10001C470(v34, v35, &v65);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2114;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v37;
      v38 = v56;
      *v56 = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "%{public}s failed to configure AVAudioSession: %{public}@", v33, 0x16u);
      sub_100005900(v38);

      sub_100005700(v57);

      LOBYTE(a1) = v58;
      if ((v58 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {

      LOBYTE(a1) = v58;
      if ((v58 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

LABEL_16:
    v40 = [v59 asset];
    [v40 duration];
    v41 = v65;
    v42 = v67;
    v43 = v66;

    v65 = v41;
    v66 = v43;
    v67 = v42;
    [v17 seekToTime:&v65];
    v39 = &selRef_pause;
    goto LABEL_17;
  }

  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000549C(v22, qword_100034C10);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v25 = 136446466;
    v26 = _typeName(_:qualified:)();
    v28 = sub_10001C470(v26, v27, &v65);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_10001C470(0x766F6D2E3130334ELL, 0xE800000000000000, &v65);
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s failed to load %{public}s", v25, 0x16u);
    swift_arrayDestroy();
  }

  return v63;
}

uint64_t sub_10001213C()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

Swift::Int sub_100012278()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000122E4()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100012338()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  type metadata accessor for Application();
  sub_100015320(&qword_100033C48, &type metadata accessor for Application);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000123D8()
{
  v1 = *v0;
  Hasher._combine(_:)(0);
  type metadata accessor for Application();
  sub_100015320(&qword_100033C48, &type metadata accessor for Application);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100012470()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  type metadata accessor for Application();
  sub_100015320(&qword_100033C48, &type metadata accessor for Application);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10001250C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4._countAndFlagsBits = Application.id.getter();
  String.append(_:)(v4);

  *a1 = 762080353;
  a1[1] = 0xE400000000000000;
  return result;
}

uint64_t sub_100012570(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for Application();
  return static Application.== infix(_:_:)() & 1;
}

id sub_1000125B4()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = [objc_opt_self() buttonWithProximityType:1];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v5 = String._bridgeToObjectiveC()();

  [v4 setTitle:v5 forState:0];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v4;
}

id sub_10001271C()
{
  v0 = [objc_allocWithZone(CAGradientLayer) init];
  sub_10000280C(&unk_100033C60, &unk_10001F8C8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10001F6A0;
  v2 = objc_opt_self();
  v3 = [v2 clearColor];
  v4 = [v3 CGColor];

  type metadata accessor for CGColor(0);
  v6 = v5;
  *(v1 + 56) = v5;
  *(v1 + 32) = v4;
  v7 = [v2 blackColor];
  v8 = [v7 colorWithAlphaComponent:0.8];

  v9 = [v8 CGColor];
  *(v1 + 88) = v6;
  *(v1 + 64) = v9;
  v10 = [v2 blackColor];
  v11 = [v10 CGColor];

  *(v1 + 120) = v6;
  *(v1 + 96) = v11;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 setColors:isa];

  sub_10000280C(&qword_100033478, "VW");
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10001F6B0;
  sub_100003928(0, &qword_100033C70, NSNumber_ptr);
  *(v13 + 32) = NSNumber.init(floatLiteral:)(0.0);
  *(v13 + 40) = NSNumber.init(floatLiteral:)(0.4);
  *(v13 + 48) = NSNumber.init(floatLiteral:)(1.0);
  v14 = Array._bridgeToObjectiveC()().super.isa;

  [v0 setLocations:v14];

  return v0;
}

char *sub_100012970(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_startButton;
  *&v2[v4] = sub_1000125B4();
  v5 = OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_gradientContainer;
  v6 = [objc_allocWithZone(UIView) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setUserInteractionEnabled:0];
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_gradientLayer;
  *&v2[v7] = sub_10001271C();
  *&v2[OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_model] = a1;

  v8 = sub_100014AD4();
  type metadata accessor for AppIconImageCache();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100006338(&_swiftEmptyArrayStorage);
  *&v2[OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_tableView] = v8;
  v10 = objc_allocWithZone(sub_10000280C(&qword_100033C50, &qword_10001F8C0));
  v11 = v8;

  *&v2[OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_datasource] = UITableViewDiffableDataSource.init(tableView:cellProvider:)();
  v12 = [objc_allocWithZone(PRXScrollableContentView) initWithCardStyle:0 scrollView:v11];
  v13 = [*&v2[v5] layer];
  [v13 addSublayer:*&v2[v7]];

  v19.receiver = v2;
  v19.super_class = type metadata accessor for AppSelectionProximityCardViewController();
  v14 = objc_msgSendSuper2(&v19, "initWithContentView:", v12);
  v15 = *&v14[OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_gradientContainer];
  v16 = v14;
  [v12 addSubview:v15];
  v17 = OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_startButton;
  [v12 addSubview:*&v16[OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_startButton]];
  [v11 setDataSource:*&v16[OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_datasource]];
  [v11 setDelegate:v16];
  [*&v16[v17] addTarget:v16 action:"startGuestMode" forControlEvents:64];

  return v16;
}

id sub_100012BF0()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000549C(v2, qword_100034C10);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10001C470(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s selected start Guest Mode action", v5, 0xCu);
    sub_100005700(v6);
  }

  v10 = *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_model];
  sub_100009A14();

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_100012DC8()
{
  v1 = type metadata accessor for Locale();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v8.receiver = v0;
  v8.super_class = type metadata accessor for AppSelectionProximityCardViewController();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  sub_100018BA4();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v5 = String._bridgeToObjectiveC()();

  [v0 setTitle:v5];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v6 = String._bridgeToObjectiveC()();

  [v0 setSubtitle:v6];

  return sub_100013210();
}

id sub_100012FE8(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = type metadata accessor for UIListContentConfiguration();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a3;
  v11 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13 = [a1 dequeueReusableCellWithIdentifier:v11 forIndexPath:isa];

  UITableViewCell.defaultContentConfiguration()();

  Application.localizedTitle.getter();

  UIListContentConfiguration.text.setter();

  sub_100014C74(a1);
  sub_10000E610(v14);

  UIListContentConfiguration.image.setter();
  v19[3] = v5;
  v19[4] = &protocol witness table for UIListContentConfiguration;
  v15 = sub_100014E14(v19);
  (*(v6 + 16))(v15, v9, v5);
  UITableViewCell.contentConfiguration.setter();

  LOBYTE(isa) = Application.isSelectedToShare.getter();

  if (isa)
  {
    v16 = 3;
  }

  else
  {
    v16 = 0;
  }

  [v13 setAccessoryType:v16];
  (*(v6 + 8))(v9, v5);
  return v13;
}

uint64_t sub_100013210()
{
  v1 = v0;
  v2 = sub_10000280C(&qword_100033C80, &qword_10001F8D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - v5;
  sub_1000153A0();
  sub_1000153F4();
  NSDiffableDataSourceSnapshot.init()();
  v7 = *(*(v0 + OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_model) + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_applicationLibrary);

  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10002CFD0);
  v8 = ApplicationLibrary.applications.getter();
  v9 = v8;
  if (!(v8 >> 62))
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_11:

LABEL_12:
    v18 = 0;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    v15 = *(v1 + OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_datasource);
    dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    return (*(v3 + 8))(v6, v2);
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_3:
  v19 = &_swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v10 & 0x8000000000000000) == 0)
  {
    v16 = v0;
    v17 = v3;
    v12 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(v9 + 8 * v12 + 32);
      }

      ++v12;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v13 = v19[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v10 != v12);

    v1 = v16;
    v3 = v17;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_100013484()
{
  v44.receiver = v0;
  v44.super_class = type metadata accessor for AppSelectionProximityCardViewController();
  objc_msgSendSuper2(&v44, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_gradientLayer];
  v2 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_gradientContainer];
  [v2 bounds];
  [v1 setFrame:?];
  sub_10000280C(&qword_100033478, "VW");
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10001F6C0;
  v4 = [v2 leadingAnchor];
  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  v7 = [v5 leadingAnchor];

  v8 = [v4 constraintEqualToAnchor:v7];
  *(v3 + 32) = v8;
  v9 = [v2 trailingAnchor];
  v10 = [v0 view];
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10;
  v12 = [v10 trailingAnchor];

  v13 = [v9 constraintEqualToAnchor:v12];
  *(v3 + 40) = v13;
  v14 = [v2 bottomAnchor];
  v15 = [v0 view];
  if (!v15)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v16 = v15;
  v43 = objc_opt_self();
  v17 = [v16 bottomAnchor];

  v18 = [v14 constraintEqualToAnchor:v17];
  *(v3 + 48) = v18;
  v19 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_startButton];
  v20 = [v19 topAnchor];
  v21 = [v2 topAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:40.0];

  *(v3 + 56) = v22;
  v23 = [v19 bottomAnchor];
  v24 = [v2 bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:-40.0];

  *(v3 + 64) = v25;
  v26 = [v19 leadingAnchor];
  v27 = [v2 leadingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:30.0];

  *(v3 + 72) = v28;
  v29 = [v19 trailingAnchor];
  v30 = [v2 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:-30.0];

  *(v3 + 80) = v31;
  sub_100003928(0, &qword_100033480, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v43 activateConstraints:isa];

  [v2 frame];
  Height = CGRectGetHeight(v45);
  v34 = Height / 3.0;
  if (Height / 3.0 != 0.0)
  {
    v35 = Height;
    v36 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_tableView];
    v37 = [v36 tableFooterView];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 widthAnchor];
      [v36 frame];
      v40 = [v39 constraintEqualToConstant:CGRectGetWidth(v46)];

      [v40 setActive:1];
      v41 = [v38 heightAnchor];
      v42 = [v41 constraintEqualToConstant:v34];

      [v42 setActive:1];
    }

    else
    {
      [v36 frame];
      v42 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, CGRectGetWidth(v47), v34}];
      [v36 setTableFooterView:v42];
    }

    [v36 setContentInset:{0.0, 0.0, v35, 0.0}];
    [v36 contentInset];
    [v36 setScrollIndicatorInsets:?];
  }
}

uint64_t sub_100013AA8(char a1)
{
  v2 = v1;
  v4 = sub_10000280C(&qword_100033C80, &qword_10001F8D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v9 = *(*(v1 + OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_model) + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_applicationLibrary);

  v10 = ApplicationLibrary.applications.getter();

  v12 = v10 >> 62;
  if ((a1 & 1) == 0)
  {
    if (v12)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v16 = result;
      if (!result)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v16 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        goto LABEL_21;
      }
    }

    if (v16 >= 1)
    {
      for (i = 0; i != v16; ++i)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v18 = *(v10 + 8 * i + 32);
        }

        Application.isSelectedToShare.setter();
      }

      goto LABEL_21;
    }

    goto LABEL_23;
  }

  if (v12)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v13 = result;
    if (result)
    {
      goto LABEL_4;
    }

LABEL_21:

    v19 = *(v2 + OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_datasource);
    dispatch thunk of UITableViewDiffableDataSource.snapshot()();
    v22._rawValue = &_swiftEmptyArrayStorage;
    v20 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
    sub_100013D58(v20);
    NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v22);

    dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
    sub_100013E4C((a1 & 1) == 0);
    return (*(v5 + 8))(v8, v4);
  }

  v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_21;
  }

LABEL_4:
  if (v13 >= 1)
  {
    for (j = 0; j != v13; ++j)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(v10 + 8 * j + 32);
      }

      Application.isSelectedToShare.setter();
    }

    goto LABEL_21;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100013D58(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  v6 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v3 = result;
  if (!*(v5 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_100013E4C(char a1)
{
  v8 = [*(v1 + OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_tableView) headerViewForSection:0];
  if (v8)
  {
    type metadata accessor for AppSelectionSectionHeaderView();
    if (swift_dynamicCastClass())
    {
      v3 = sub_10001213C();
      v5 = v4;
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      *(v7 + 24) = a1 & 1;

      sub_1000034B4(v3, v5, sub_10001544C, v7);
    }

    else
    {
    }
  }
}

uint64_t sub_100013FD4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000280C(&qword_100033C80, &qword_10001F8D8);
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  __chkstk_darwin(v9);
  v12 = &v41 - v11;
  v13 = *(v1 + OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_datasource);
  dispatch thunk of UITableViewDiffableDataSource.snapshot()();
  v14 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  v15 = IndexPath.section.getter();
  if ((v15 & 0x8000000000000000) == 0)
  {
    v16 = v15;
    v42 = v2;
    v17 = v12;
    v18 = v9;
    v19 = *(v14 + 16);

    v20 = v16 < v19;
    v9 = v18;
    v12 = v17;
    if (!v20)
    {
      goto LABEL_8;
    }

    v21 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
    v22 = IndexPath.row.getter();
    if ((v22 & 0x8000000000000000) == 0 && v22 < *(v21 + 16))
    {
      v23 = *(v21 + 8 * v22 + 32);
      swift_retain_n();

      v24 = Application.isSelectedToShare.modify();
      *v25 = !*v25;
      v24(v45, 0);

      sub_10000280C(&qword_100033C90, qword_10001F8E0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_10001F6D0;
      *(v26 + 32) = v23;

      NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v26);

      dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
      v27 = *(*(v42 + OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_model) + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_applicationLibrary);

      LOBYTE(v26) = ApplicationLibrary.areAllApplicationsSelectedToShare.getter();

      sub_100013E4C(v26 & 1);

      return (*(v44 + 8))(v12, v9);
    }
  }

LABEL_8:
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000549C(v28, qword_100034C10);
  (*(v5 + 16))(v8, a1, v4);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v45[0] = swift_slowAlloc();
    *v31 = 136446466;
    v32 = _typeName(_:qualified:)();
    v34 = sub_10001C470(v32, v33, v45);
    ObjectType = v9;
    v35 = v34;

    *(v31 + 4) = v35;
    *(v31 + 12) = 2082;
    sub_100015320(&qword_100033C88, &type metadata accessor for IndexPath);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    (*(v5 + 8))(v8, v4);
    v39 = sub_10001C470(v36, v38, v45);

    *(v31 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v29, v30, "[%{public}s] unable to find selected application at index path %{public}s", v31, 0x16u);
    swift_arrayDestroy();

    return (*(v44 + 8))(v12, ObjectType);
  }

  (*(v5 + 8))(v8, v4);
  return (*(v44 + 8))(v12, v9);
}

id sub_100014514()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppSelectionProximityCardViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100014608(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100013AA8(a2 & 1);
  }
}

void *initializeBufferWithCopyOfBuffer for AppItem(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithCopy for AppItem(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for AppItem(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for AppItem(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for AppItem(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppsSection(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AppsSection(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100014A28()
{
  result = qword_100033C38;
  if (!qword_100033C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100033C38);
  }

  return result;
}

unint64_t sub_100014A80()
{
  result = qword_100033C40;
  if (!qword_100033C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100033C40);
  }

  return result;
}

id sub_100014AD4()
{
  v0 = [objc_allocWithZone(UITableView) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v0 setAllowsMultipleSelection:1];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 blackColor];
  [v2 setBackgroundColor:v3];

  sub_100003928(0, &qword_100033C58, UITableViewCell_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = String._bridgeToObjectiveC()();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];

  type metadata accessor for AppSelectionSectionHeaderView();
  v6 = swift_getObjCClassFromMetadata();
  v7 = String._bridgeToObjectiveC()();
  [v2 registerClass:v6 forHeaderFooterViewReuseIdentifier:v7];

  [v2 setEstimatedSectionHeaderHeight:44.0];
  [v2 setSectionHeaderHeight:UITableViewAutomaticDimension];
  return v2;
}

void sub_100014C74(void *a1)
{
  v1 = [a1 window];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 screen];

    [v3 scale];
  }

  else
  {
    if (qword_100033350 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000549C(v4, qword_100034C10);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_10001C470(0xD000000000000030, 0x8000000100020630, &v9);
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s unable to determine scale for current view", v7, 0xCu);
      sub_100005700(v8);
    }
  }
}

uint64_t *sub_100014E14(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

char *sub_100014E78(void *a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for Locale();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = String._bridgeToObjectiveC()();
  v8 = [a1 dequeueReusableHeaderFooterViewWithIdentifier:v7];

  if (v8)
  {
    type metadata accessor for AppSelectionSectionHeaderView();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v9;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v11 = String.init(localized:table:bundle:locale:comment:)();
      v12 = *&v10[OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_headerLabel];
      v32[0] = v11;
      v32[1] = v13;
      sub_100015274();
      StringProtocol.localizedUppercase.getter();
      v14 = String._bridgeToObjectiveC()();

      [v12 setText:v14];

      v15 = v8;
      [v10 setNeedsLayout];
      v16 = *(*(v1 + OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_model) + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_applicationLibrary);

      v17 = ApplicationLibrary.areAllApplicationsSelectedToShare.getter();

      LOBYTE(v16) = v17 & 1;
      v18 = sub_10001213C();
      v20 = v19;
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = v16;

      sub_1000034B4(v18, v20, sub_100015300, v22);

      return v10;
    }
  }

  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000549C(v23, qword_100034C10);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v32[0] = v27;
    *v26 = 136446210;
    v28 = _typeName(_:qualified:)();
    v30 = sub_10001C470(v28, v29, v32);

    *(v26 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v24, v25, "[%{public}s] unable to dequeue header view", v26, 0xCu);
    sub_100005700(v27);
  }

  return 0;
}

unint64_t sub_100015274()
{
  result = qword_100033C78;
  if (!qword_100033C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100033C78);
  }

  return result;
}

uint64_t sub_1000152C8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100015320(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100015368()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

unint64_t sub_1000153A0()
{
  result = qword_100033C98;
  if (!qword_100033C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100033C98);
  }

  return result;
}

unint64_t sub_1000153F4()
{
  result = qword_100033CA0;
  if (!qword_100033CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100033CA0);
  }

  return result;
}

void sub_100015450()
{
  if (qword_100033348 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000549C(v0, qword_100034BF8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136446210;
    *(v2 + 4) = sub_10001C470(0xD000000000000016, 0x8000000100020790, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Played audio/haptic resource: %{public}s", v2, 0xCu);
    sub_100005700(v3);
  }
}

id sub_1000157EC(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_leadingAccessoryView;
  if (qword_100033330 != -1)
  {
    swift_once();
  }

  v5 = qword_100034BD0;
  v6 = type metadata accessor for LiveActivityImageAccessoryView();
  v7 = objc_allocWithZone(v6);
  v8 = v5;
  v9 = sub_1000023A8(v8, 0);
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2[v4] = v9;
  v10 = OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_trailingAccessoryView;
  if (qword_100033338 != -1)
  {
    swift_once();
  }

  v11 = qword_100034BD8;
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 blueColor];
  v15 = objc_allocWithZone(v6);
  v16 = sub_1000023A8(v13, v14);
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2[v10] = v16;
  v17 = OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_minimalAccessoryView;
  v18 = objc_allocWithZone(v6);
  v19 = sub_1000023A8(v8, 0);
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2[v17] = v19;
  v20 = OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_labelAccessoryView;
  v21 = [objc_allocWithZone(type metadata accessor for LiveActivityLabelAccessoryView()) init];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2[v20] = v21;
  v22 = OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_tapGestureInterceptorView;
  v23 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = [v12 clearColor];
  [v23 setBackgroundColor:v24];

  v25 = [v23 layer];
  [v25 setHitTestsAsOpaque:1];

  *&v2[v22] = v23;
  v26 = OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_endGuestUserModeButton;
  sub_100005A74();
  v28 = v27;
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2[v26] = v28;
  *&v2[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_activeConstraints] = &_swiftEmptyArrayStorage;
  v29 = &v2[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_associatedAppBundleIdentifier];
  *v29 = static AirPlayReceiverCoordinator.applicationBundleIdentifier.getter();
  v29[1] = v30;
  static AirPlayReceiverCoordinator.requestViewMirroringLaunchURLString.getter();
  URL.init(string:)();

  *&v2[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_contentRole] = 2;
  *&v2[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_preferredLayoutMode] = 3;
  *&v2[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_maximumLayoutMode] = 4;
  *&v2[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_presentationBehaviors] = 8;
  *&v2[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_activeLayoutMode] = 0;
  *&v2[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_liveActivityModel] = a1;
  v32.receiver = v2;
  v32.super_class = type metadata accessor for LiveActivityDynamicIslandViewController();
  return objc_msgSendSuper2(&v32, "initWithNibName:bundle:", 0, 0);
}

void sub_100015B78()
{
  swift_getObjectType();
  v27.receiver = v0;
  v27.super_class = type metadata accessor for LiveActivityDynamicIslandViewController();
  objc_msgSendSuper2(&v27, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v1;
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];

  v3 = [v0 view];
  if (!v3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = v3;
  v5 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_leadingAccessoryView];
  [v3 addSubview:v5];

  v6 = [v0 view];
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = v6;
  v8 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_labelAccessoryView];
  [v6 addSubview:v8];

  v9 = [v0 view];
  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  v11 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_tapGestureInterceptorView];
  [v9 addSubview:v11];

  v12 = [v0 view];
  if (!v12)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_endGuestUserModeButton];
  [v12 addSubview:v14];

  [v14 addTarget:v0 action:"endGuestUserModeButtonTapped" forControlEvents:64];
  v15 = objc_allocWithZone(UITapGestureRecognizer);
  v16 = v0;
  v17 = [v15 initWithTarget:v16 action:"launchAppGestureDetectedWithSender:"];
  [v5 addGestureRecognizer:v17];
  [v8 addGestureRecognizer:v17];
  v18 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v16 action:"launchAppGestureDetectedWithSender:"];

  [v11 addGestureRecognizer:v18];
  if (qword_100033358 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000549C(v19, qword_100034C28);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v22 = 136446466;
    v23 = _typeName(_:qualified:)();
    v25 = sub_10001C470(v23, v24, &v26);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_10001C470(0x4C64694477656976, 0xED0000292864616FLL, &v26);
    _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s %{public}s Added gesture recognizers", v22, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_100015F64(void *a1)
{
  swift_getObjectType();
  if (qword_100033358 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000549C(v3, qword_100034C28);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v7 = 136446722;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10001C470(v8, v9, v16);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_10001C470(0xD00000000000001DLL, 0x8000000100020B10, v16);
    *(v7 + 22) = 2050;
    v11 = *&v4[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_activeLayoutMode];

    *(v7 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s %{public}s %{public}ld", v7, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v12 = sub_10001672C();
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 24) = v12;
  v16[4] = sub_100017CC0;
  v16[5] = v13;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_1000162F8;
  v16[3] = &unk_10002D6C0;
  v14 = _Block_copy(v16);
  v15 = v4;

  [a1 animateAlongsideTransition:v14 completion:0];
  _Block_release(v14);
}

void sub_1000161F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000163C0();
  v5 = objc_opt_self();
  v6 = OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_activeConstraints;
  v7 = *(a2 + OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_activeConstraints);
  sub_100002854();

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 deactivateConstraints:isa];

  v9 = *(a2 + v6);
  *(a2 + v6) = a3;

  v10 = *(a2 + v6);

  v11 = Array._bridgeToObjectiveC()().super.isa;

  [v5 activateConstraints:v11];
}

uint64_t sub_1000162F8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_1000163C0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_activeLayoutMode;
  v3 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_activeLayoutMode];
  if (v3 <= 1)
  {
    if ((v3 + 1) < 3)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v3 == 4)
  {
    [*&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_leadingAccessoryView] setHidden:0];
    [*&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_trailingAccessoryView] setHidden:1];
    [*&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_minimalAccessoryView] setHidden:1];
    [*&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_labelAccessoryView] setHidden:0];
    v4 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_endGuestUserModeButton];
    v5 = 0;
  }

  else
  {
    if (v3 == 3)
    {
      [*&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_leadingAccessoryView] setHidden:0];
      [*&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_trailingAccessoryView] setHidden:0];
      [*&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_minimalAccessoryView] setHidden:1];
    }

    else
    {
      if (v3 != 2)
      {
LABEL_9:
        if (qword_100033358 != -1)
        {
          swift_once();
        }

        v6 = type metadata accessor for Logger();
        sub_10000549C(v6, qword_100034C28);
        v15 = v0;
        v7 = Logger.logObject.getter();
        v8 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          v10 = swift_slowAlloc();
          v16 = v10;
          *v9 = 136446466;
          v11 = _typeName(_:qualified:)();
          v13 = sub_10001C470(v11, v12, &v16);

          *(v9 + 4) = v13;
          *(v9 + 12) = 2050;
          v14 = *&v1[v2];

          *(v9 + 14) = v14;
          _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s found unexpected activeLayoutMode %{public}ld", v9, 0x16u);
          sub_100005700(v10);
        }

        else
        {
        }

        return;
      }

      [*&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_leadingAccessoryView] setHidden:1];
      [*&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_trailingAccessoryView] setHidden:1];
      [*&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_minimalAccessoryView] setHidden:0];
    }

    [*&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_labelAccessoryView] setHidden:1];
    v4 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_endGuestUserModeButton];
    v5 = 1;
  }

  [v4 setHidden:v5];
}

uint64_t *sub_10001672C()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_activeLayoutMode;
  v2 = *(v0 + OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_activeLayoutMode);
  if (v2 > 1)
  {
    switch(v2)
    {
      case 4:
        v3 = sub_100017128();
        goto LABEL_15;
      case 3:
        v3 = sub_100016D1C();
        goto LABEL_15;
      case 2:
        v3 = sub_100016A34();
        goto LABEL_15;
    }
  }

  else
  {
    v3 = &_swiftEmptyArrayStorage;
    if ((v2 + 1) < 3)
    {
      goto LABEL_15;
    }
  }

  if (qword_100033358 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v4 = type metadata accessor for Logger();
    sub_10000549C(v4, qword_100034C28);
    v5 = v0;
    v6 = v0;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 136446466;
      v11 = _typeName(_:qualified:)();
      v13 = sub_10001C470(v11, v12, &v21);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2050;
      v14 = *(v5 + v1);

      *(v9 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s found unexpected activeLayoutMode %{public}ld", v9, 0x16u);
      sub_100005700(v10);
    }

    else
    {
    }

    v3 = &_swiftEmptyArrayStorage;
LABEL_15:
    if (v3 >> 62)
    {
      v15 = _CocoaArrayWrapper.endIndex.getter();
      if (!v15)
      {
LABEL_25:

        return &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v15)
      {
        goto LABEL_25;
      }
    }

    v21 = &_swiftEmptyArrayStorage;
    v0 = &v21;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v15 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

  v16 = 0;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v17 = *(v3 + v16 + 4);
    }

    ++v16;
    LODWORD(v18) = 1144750080;
    [v17 setPriority:v18];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v19 = v21[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v15 != v16);

  return v21;
}

id sub_100016A34()
{
  sub_10000280C(&qword_100033478, "VW");
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10001F150;
  v2 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_minimalAccessoryView];
  v3 = [v2 centerXAnchor];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  v6 = [result SBUISA_systemApertureMinimalViewLayoutGuide];

  v7 = [v6 centerXAnchor];
  v8 = [v3 constraintEqualToAnchor:v7];

  *(v1 + 32) = v8;
  v9 = [v2 centerYAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v10 = result;
  v11 = [result SBUISA_systemApertureMinimalViewLayoutGuide];

  v12 = [v11 centerYAnchor];
  v13 = [v9 constraintEqualToAnchor:v12];

  *(v1 + 40) = v13;
  v14 = [v2 widthAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v15 = result;
  v16 = [result SBUISA_systemApertureMinimalViewLayoutGuide];

  v17 = [v16 widthAnchor];
  v18 = [v14 constraintEqualToAnchor:v17];

  *(v1 + 48) = v18;
  v19 = [v2 heightAnchor];
  result = [v0 view];
  if (result)
  {
    v20 = result;
    v21 = [result SBUISA_systemApertureMinimalViewLayoutGuide];

    v22 = [v21 heightAnchor];
    v23 = [v19 constraintEqualToAnchor:v22];

    *(v1 + 56) = v23;
    return v1;
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_100016D1C()
{
  sub_10000280C(&qword_100033478, "VW");
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10001F6C0;
  v2 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_leadingAccessoryView];
  v3 = [v2 topAnchor];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  v6 = [result topAnchor];

  v7 = [v3 constraintEqualToAnchor:v6];
  *(v1 + 32) = v7;
  v8 = [v2 leadingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = result;
  v10 = [result leadingAnchor];

  v11 = [v8 constraintEqualToAnchor:v10];
  *(v1 + 40) = v11;
  v12 = [v2 trailingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = result;
  v14 = [result SBUISA_systemApertureObstructedAreaLayoutGuide];

  v15 = [v14 leadingAnchor];
  v16 = [v12 constraintEqualToAnchor:v15];

  *(v1 + 48) = v16;
  v17 = [v2 bottomAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = result;
  v19 = [result bottomAnchor];

  v20 = [v17 constraintEqualToAnchor:v19];
  *(v1 + 56) = v20;
  v21 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_trailingAccessoryView];
  v22 = [v21 topAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v23 = result;
  v24 = [result topAnchor];

  v25 = [v22 constraintEqualToAnchor:v24];
  *(v1 + 64) = v25;
  v26 = [v21 trailingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v27 = result;
  v28 = [result trailingAnchor];

  v29 = [v26 constraintEqualToAnchor:v28];
  *(v1 + 72) = v29;
  v30 = [v21 bottomAnchor];
  result = [v0 view];
  if (result)
  {
    v31 = result;
    v32 = [result bottomAnchor];

    v33 = [v30 constraintEqualToAnchor:v32];
    *(v1 + 80) = v33;
    return v1;
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_100017128()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v2 = result;
  v3 = [result window];

  result = [v0 view];
  v4 = result;
  if (v3)
  {
    if (!result)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v5 = [result widthAnchor];

    v6 = [v3 widthAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];

LABEL_7:
    sub_10000280C(&qword_100033478, "VW");
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10001F930;
    *(v17 + 32) = v7;
    v18 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_leadingAccessoryView];
    v66 = v7;
    v19 = [v18 leadingAnchor];
    result = [v0 view];
    if (result)
    {
      v20 = result;
      v21 = [result SBUISA_systemApertureCustomControlsContentLayoutGuide];

      v22 = [v21 leadingAnchor];
      v23 = [v19 constraintEqualToAnchor:v22];

      *(v17 + 40) = v23;
      v24 = [v18 centerYAnchor];
      result = [v0 view];
      if (result)
      {
        v25 = result;
        v26 = [result centerYAnchor];

        v27 = [v24 constraintEqualToAnchor:v26];
        *(v17 + 48) = v27;
        v28 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_labelAccessoryView];
        v29 = [v28 leadingAnchor];
        v30 = [v18 trailingAnchor];
        v31 = [v29 constraintEqualToAnchor:v30 constant:8.0];

        *(v17 + 56) = v31;
        v32 = [v28 centerYAnchor];
        v33 = [v18 centerYAnchor];
        v34 = [v32 constraintEqualToAnchor:v33];

        *(v17 + 64) = v34;
        v35 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_tapGestureInterceptorView];
        v36 = [v35 topAnchor];
        result = [v0 view];
        if (result)
        {
          v37 = result;
          v38 = [result topAnchor];

          v39 = [v36 constraintEqualToAnchor:v38];
          *(v17 + 72) = v39;
          v40 = [v35 leadingAnchor];
          result = [v0 view];
          if (result)
          {
            v41 = result;
            v42 = [result leadingAnchor];

            v43 = [v40 constraintEqualToAnchor:v42];
            *(v17 + 80) = v43;
            v44 = [v35 trailingAnchor];
            result = [v0 view];
            if (result)
            {
              v45 = result;
              v46 = [result trailingAnchor];

              v47 = [v44 constraintEqualToAnchor:v46];
              *(v17 + 88) = v47;
              v48 = [v35 bottomAnchor];
              result = [v0 view];
              if (result)
              {
                v49 = result;
                v50 = [result bottomAnchor];

                v51 = [v48 constraintEqualToAnchor:v50];
                *(v17 + 96) = v51;
                v52 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_endGuestUserModeButton];
                v53 = [v52 topAnchor];
                result = [v0 view];
                if (result)
                {
                  v54 = result;
                  v55 = [result topAnchor];

                  v56 = [v53 constraintEqualToAnchor:v55 constant:16.0];
                  *(v17 + 104) = v56;
                  v57 = [v52 trailingAnchor];
                  result = [v0 view];
                  if (result)
                  {
                    v58 = result;
                    v59 = [result SBUISA_systemApertureCustomControlsContentLayoutGuide];

                    v60 = [v59 trailingAnchor];
                    v61 = [v57 constraintEqualToAnchor:v60];

                    *(v17 + 112) = v61;
                    v62 = [v52 bottomAnchor];
                    result = [v0 view];
                    if (result)
                    {
                      v63 = result;
                      v64 = [result bottomAnchor];

                      v65 = [v62 constraintEqualToAnchor:v64 constant:-16.0];
                      *(v17 + 120) = v65;

                      return v17;
                    }

                    goto LABEL_26;
                  }

LABEL_25:
                  __break(1u);
LABEL_26:
                  __break(1u);
                  goto LABEL_27;
                }

LABEL_24:
                __break(1u);
                goto LABEL_25;
              }

LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

LABEL_22:
            __break(1u);
            goto LABEL_23;
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

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (result)
  {
    v3 = [result widthAnchor];

    v8 = [objc_opt_self() mainScreen];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v67.origin.x = v10;
    v67.origin.y = v12;
    v67.size.width = v14;
    v67.size.height = v16;
    v7 = [v3 constraintEqualToConstant:CGRectGetWidth(v67)];
    goto LABEL_7;
  }

LABEL_28:
  __break(1u);
  return result;
}

id sub_1000179EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveActivityDynamicIslandViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LiveActivityDynamicIslandViewController()
{
  result = qword_100033EE0;
  if (!qword_100033EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100017B48()
{
  sub_100017C28();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100017C28()
{
  if (!qword_100033EF0)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100033EF0);
    }
  }
}

uint64_t sub_100017C80()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100017CC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100017CE0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_leadingAccessoryView;
  if (qword_100033330 != -1)
  {
    swift_once();
  }

  v3 = qword_100034BD0;
  v4 = type metadata accessor for LiveActivityImageAccessoryView();
  v5 = objc_allocWithZone(v4);
  v6 = v3;
  v7 = sub_1000023A8(v6, 0);
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v2) = v7;
  v8 = OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_trailingAccessoryView;
  if (qword_100033338 != -1)
  {
    swift_once();
  }

  v9 = qword_100034BD8;
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 blueColor];
  v13 = objc_allocWithZone(v4);
  v14 = sub_1000023A8(v11, v12);
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v8) = v14;
  v15 = OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_minimalAccessoryView;
  v16 = objc_allocWithZone(v4);
  v17 = sub_1000023A8(v6, 0);
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v15) = v17;
  v18 = OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_labelAccessoryView;
  v19 = [objc_allocWithZone(type metadata accessor for LiveActivityLabelAccessoryView()) init];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v18) = v19;
  v20 = OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_tapGestureInterceptorView;
  v21 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = [v10 clearColor];
  [v21 setBackgroundColor:v22];

  v23 = [v21 layer];
  [v23 setHitTestsAsOpaque:1];

  *(v1 + v20) = v21;
  v24 = OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_endGuestUserModeButton;
  sub_100005A74();
  v26 = v25;
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v24) = v26;
  *(v1 + OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_activeConstraints) = &_swiftEmptyArrayStorage;
  v27 = (v1 + OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_associatedAppBundleIdentifier);
  *v27 = static AirPlayReceiverCoordinator.applicationBundleIdentifier.getter();
  v27[1] = v28;
  static AirPlayReceiverCoordinator.requestViewMirroringLaunchURLString.getter();
  URL.init(string:)();

  *(v1 + OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_contentRole) = 2;
  *(v1 + OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_preferredLayoutMode) = 3;
  *(v1 + OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_maximumLayoutMode) = 4;
  *(v1 + OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_presentationBehaviors) = 8;
  *(v1 + OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_activeLayoutMode) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100018030(const char *a1, uint64_t (*a2)(void))
{
  v5 = v2;
  swift_getObjectType();
  if (qword_100033358 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000549C(v6, qword_100034C28);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    v11 = _typeName(_:qualified:)();
    v13 = sub_10001C470(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 0xCu);
    sub_100005700(v10);
  }

  v14 = *(v5 + OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_liveActivityModel);
  return a2();
}

uint64_t sub_1000181AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000280C(&qword_100033EF8, &qword_10001F988);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001821C(uint64_t a1)
{
  v2 = sub_10000280C(&qword_100033EF8, &qword_10001F988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100018284()
{
  v1 = type metadata accessor for Locale();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v9.receiver = v0;
  v9.super_class = type metadata accessor for LiveActivityLabelAccessoryView();
  v5 = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v6 = String._bridgeToObjectiveC()();

  [v5 setText:v6];

  v7 = [objc_opt_self() whiteColor];
  [v5 setTextColor:v7];

  return v5;
}

id sub_1000184D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveActivityLabelAccessoryView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10001852C()
{
  v0 = [objc_opt_self() sbui_systemApertureDefaultConfiguration];
  v1 = [objc_opt_self() mainBundle];
  v2 = v0;
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() imageNamed:v3 inBundle:v1 withConfiguration:v2];

  if (v4)
  {

    qword_100034BD0 = v4;
  }

  else
  {
    __break(1u);
  }
}

void sub_100018618()
{
  v0 = [objc_opt_self() sbui_systemApertureDefaultConfiguration];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1 withConfiguration:v0];

  if (v2)
  {

    qword_100034BD8 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1000186CC()
{
  v1 = v0;
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000549C(v2, qword_100034C10);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10001C470(0xD000000000000020, 0x8000000100020E50, &v8);
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_10001C470(0xD00000000000001DLL, 0x8000000100020DD0, &v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  [v1 setOverrideUserInterfaceStyle:2];
  [v1 setDismissalType:1];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v7 = sub_1000197B8(0, 0xE000000000000000, 0, sub_10001AF00, v6, &unk_10002D960, &unk_10002D988, sub_10001AED8, &unk_10002D9A0);

  [v1 setDismissButtonAction:v7];
}

void sub_100018938()
{
  v1 = v0;
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000549C(v2, qword_100034C10);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10001C470(0xD000000000000025, 0x8000000100020E20, &v8);
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_10001C470(0xD00000000000001DLL, 0x8000000100020DD0, &v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  [v1 setOverrideUserInterfaceStyle:2];
  [v1 setDismissalType:1];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v7 = sub_1000197B8(0, 0xE000000000000000, 0, sub_10001AE90, v6, &unk_10002D898, &unk_10002D910, sub_10001AE68, &unk_10002D928);

  [v1 setDismissButtonAction:v7];
}

void sub_100018BA4()
{
  v1 = v0;
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000549C(v2, qword_100034C10);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10001C470(0xD000000000000027, 0x8000000100020DF0, &v8);
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_10001C470(0xD00000000000001DLL, 0x8000000100020DD0, &v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  [v1 setOverrideUserInterfaceStyle:2];
  [v1 setDismissalType:1];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v7 = sub_1000197B8(0, 0xE000000000000000, 0, sub_10001AE38, v6, &unk_10002D820, &unk_10002D848, sub_10001AE40, &unk_10002D860);

  [v1 setDismissButtonAction:v7];
}

void sub_100018E10()
{
  v1 = v0;
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000549C(v2, qword_100034C10);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10001C470(0xD000000000000029, 0x800000010001F9A0, &v8);
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_10001C470(0xD00000000000001DLL, 0x8000000100020DD0, &v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  [v1 setOverrideUserInterfaceStyle:2];
  [v1 setDismissalType:1];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v7 = sub_1000197B8(0, 0xE000000000000000, 0, sub_10001ADF8, v6, &unk_10002D758, &unk_10002D7D0, sub_10001ADD0, &unk_10002D7E8);

  [v1 setDismissButtonAction:v7];
}

void sub_10001907C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_100033350 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000549C(v2, qword_100034C10);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_10001C470(0xD000000000000020, 0x8000000100020E50, &v8);
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s selected dismiss action", v5, 0xCu);
      sub_100005700(v6);
    }

    v7 = *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup32ErrorProximityCardViewController_model];

    sub_100009788();

    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_100019224()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_100033350 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000549C(v2, qword_100034C10);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_10001C470(0xD000000000000025, 0x8000000100020E20, &v8);
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s selected dismiss action", v5, 0xCu);
      sub_100005700(v6);
    }

    v7 = *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup37AllowGuestProximityCardViewController_model];

    sub_100009788();

    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1000193CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_100033350 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000549C(v2, qword_100034C10);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_10001C470(0xD000000000000027, 0x8000000100020DF0, &v8);
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s selected dismiss action", v5, 0xCu);
      sub_100005700(v6);
    }

    v7 = *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_model];

    sub_100009788();

    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_100019574()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_100033350 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000549C(v2, qword_100034C10);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_10001C470(0xD000000000000029, 0x800000010001F9A0, &v8);
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s selected dismiss action", v5, 0xCu);
      sub_100005700(v6);
    }

    v7 = *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup41AppRestrictionProximityCardViewController_model];

    sub_100009788();

    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

id sub_1000197B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a4;
  v14[4] = a5;

  v15 = String._bridgeToObjectiveC()();
  v19[4] = a8;
  v19[5] = v14;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100019AD0;
  v19[3] = a9;
  v16 = _Block_copy(v19);
  v17 = [objc_opt_self() actionWithTitle:v15 style:a3 handler:v16];

  _Block_release(v16);

  return v17;
}

id sub_10001996C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a4;
  v14[4] = a5;

  v15 = String._bridgeToObjectiveC()();
  v19[4] = a8;
  v19[5] = v14;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100019AD0;
  v19[3] = a9;
  v16 = _Block_copy(v19);
  v17 = [objc_opt_self() actionWithTitle:v15 customColors:a3 handler:v16];

  _Block_release(v16);

  return v17;
}

void sub_100019AD0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_100019B38(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_100019BB0()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v25.receiver = v0;
  v25.super_class = type metadata accessor for AppRestrictionProximityCardViewController();
  objc_msgSendSuper2(&v25, "viewDidLoad");
  sub_100018E10();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v6 = String._bridgeToObjectiveC()();

  [v0 setTitle:v6];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v7 = String._bridgeToObjectiveC()();

  [v0 setSubtitle:v7];

  sub_10001A458();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v8 = String.init(localized:table:bundle:locale:comment:)();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = ObjectType;
  v12 = sub_1000197B8(v8, v10, 0, sub_10001ADA4, v11, &unk_10002D758, &unk_10002D7D0, sub_10001ADD0, &unk_10002D7E8);

  v13 = [v0 addAction:v12];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = ObjectType;
  v18 = objc_opt_self();
  v19 = objc_opt_self();
  v20 = [v19 systemBlackColor];
  v21 = [v19 systemWhiteColor];
  v22 = [v18 initWithBackgroundColor:v20 textColor:v21];

  v23 = sub_10001996C(v14, v16, v22, sub_10001ADAC, v17, &unk_10002D758, &unk_10002D780, sub_10001AF40, &unk_10002D798);

  v24 = [v0 addAction:v23];
}

void sub_10001A030(uint64_t a1, uint64_t a2)
{
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000549C(v3, qword_100034C10);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446210;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10001C470(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s selected open apps enabled", v6, 0xCu);
    sub_100005700(v7);
  }

  ObjectType = swift_getObjectType();
  v12 = *(a2 + 8);
  *(v12(ObjectType, a2) + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_appRestrictionState) = 1;

  v13 = v12(ObjectType, a2);
  v14 = objc_allocWithZone(type metadata accessor for AppSelectionProximityCardViewController());
  v15 = sub_100012970(v13);
  sub_1000074EC(v15);
}

id sub_10001A22C(void *a1, uint64_t a2)
{
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000549C(v4, qword_100034C10);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    v9 = _typeName(_:qualified:)();
    v11 = sub_10001C470(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s selected all apps enabled", v7, 0xCu);
    sub_100005700(v8);
  }

  ObjectType = swift_getObjectType();
  v13 = *(a2 + 8);
  *(v13(ObjectType, a2) + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_appRestrictionState) = 0;

  v13(ObjectType, a2);
  sub_100009A14();

  return [a1 dismissViewControllerAnimated:1 completion:0];
}

void sub_10001A458()
{
  v1 = type metadata accessor for Locale();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() imageNamed:v5];

  if (v6)
  {
    v7 = [objc_allocWithZone(UIImageView) initWithImage:v6];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 setContentMode:1];
    v8 = [v0 contentView];
    [v8 addSubview:v7];

    v58 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
    v9 = [objc_allocWithZone(PRXDisclaimerContentView) initWithCardStyle:0];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v10 = objc_allocWithZone(NSMutableAttributedString);
    v11 = String._bridgeToObjectiveC()();

    v12 = [v10 initWithString:v11];

    v13 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    v14 = [v9 disclaimerLabel];
    [v14 setFont:v58];

    [v13 setAlignment:1];
    v57 = v13;
    v15 = v12;
    [v15 addAttribute:NSParagraphStyleAttributeName value:v57 range:{0, objc_msgSend(v15, "length")}];

    v16 = [v9 disclaimerLabel];
    [v16 setAttributedText:v15];

    v55 = v9;
    [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [v0 contentView];
    [v17 addSubview:v55];

    v56 = objc_opt_self();
    sub_10000280C(&qword_100033478, "VW");
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10001F9B0;
    v19 = [v7 topAnchor];
    v20 = [v0 contentView];
    v21 = [v20 mainContentGuide];

    v22 = [v21 topAnchor];
    v23 = [v19 constraintGreaterThanOrEqualToAnchor:v22];

    *(v18 + 32) = v23;
    v24 = [v7 leadingAnchor];
    v25 = [v0 contentView];
    v26 = [v25 mainContentGuide];

    v27 = [v26 leadingAnchor];
    v28 = [v24 constraintEqualToAnchor:v27];

    *(v18 + 40) = v28;
    v29 = [v7 trailingAnchor];
    v30 = [v0 contentView];
    v31 = [v30 mainContentGuide];

    v32 = [v31 trailingAnchor];
    v33 = [v29 constraintEqualToAnchor:v32];

    *(v18 + 48) = v33;
    v34 = [v7 heightAnchor];
    v35 = [v34 constraintEqualToConstant:100.0];

    *(v18 + 56) = v35;
    v36 = [v55 topAnchor];
    v37 = [v7 bottomAnchor];

    v38 = [v36 constraintEqualToAnchor:v37 constant:16.0];
    *(v18 + 64) = v38;
    v39 = [v55 leadingAnchor];
    v40 = [v0 contentView];
    v41 = [v40 mainContentGuide];

    v42 = [v41 leadingAnchor];
    v43 = [v39 constraintEqualToAnchor:v42];

    *(v18 + 72) = v43;
    v44 = [v55 trailingAnchor];
    v45 = [v0 contentView];
    v46 = [v45 mainContentGuide];

    v47 = [v46 trailingAnchor];
    v48 = [v44 constraintEqualToAnchor:v47];

    *(v18 + 80) = v48;
    v49 = [v55 bottomAnchor];

    v50 = [v0 contentView];
    v51 = [v50 mainContentGuide];

    v52 = [v51 bottomAnchor];
    v53 = [v49 constraintLessThanOrEqualToAnchor:v52];

    *(v18 + 88) = v53;
    sub_100002854();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v56 activateConstraints:isa];
  }
}

id sub_10001AD1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppRestrictionProximityCardViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10001ADB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001AE00()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001AE98()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t *sub_10001AFD8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_10001B064(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_10001AFD8(v3, a2);
  sub_10000549C(v3, a2);
  return Logger.init(subsystem:category:)();
}

id sub_10001B19C(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v8 = *(v3 + OBJC_IVAR____TtC22GuestUserHandoverSetup25LiveActivitySceneDelegate_liveActivityModel);
    objc_allocWithZone(a2(0));

    v10 = v3;
    v11 = a3(v9);
    v12 = *(v3 + v4);
    *(v10 + v4) = v11;
    v6 = v11;

    v5 = 0;
  }

  v13 = v5;
  return v6;
}

id sub_10001B2C8()
{
  v1 = v0;
  v2 = sub_10000280C(&qword_100033610, &qword_10001F250);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - v4;
  *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup25LiveActivitySceneDelegate_window] = 0;
  v6 = OBJC_IVAR____TtC22GuestUserHandoverSetup25LiveActivitySceneDelegate_liveActivityModel;
  v7 = type metadata accessor for LiveActivityModel();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  GuestUserHandoverService.init()();
  AirPlayReceiverCoordinator.init()();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v10;
  sub_10000756C(0, 0, v5, &unk_10001FA28, v13);

  *&v1[v6] = v10;
  *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup25LiveActivitySceneDelegate____lazy_storage___dynamicIslandViewController] = 0;
  *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup25LiveActivitySceneDelegate____lazy_storage___platterViewController] = 0;
  v14 = type metadata accessor for LiveActivitySceneDelegate();
  v16.receiver = v1;
  v16.super_class = v14;
  return objc_msgSendSuper2(&v16, "init");
}

id sub_10001B49C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveActivitySceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10001B560()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001B5A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000580C;

  return sub_100003970();
}

void sub_10001B654(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  type metadata accessor for ActivityScene();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v31 = a1;
    if ([v5 SBUI_isHostedBySystemAperture])
    {
      if (qword_100033358 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_10000549C(v6, qword_100034C28);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v32 = v10;
        *v9 = 136446210;
        v11 = _typeName(_:qualified:)();
        v13 = sub_10001C470(v11, v12, &v32);

        *(v9 + 4) = v13;
        _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s configuring for Dynamic Island", v9, 0xCu);
        sub_100005700(v10);
      }

      v14 = sub_10001B134();
      [v5 setSystemApertureElementViewControllerProvider:v14];

      v15 = v31;
    }

    else
    {
      if (qword_100033358 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_10000549C(v16, qword_100034C28);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v32 = v20;
        *v19 = 136446210;
        v21 = _typeName(_:qualified:)();
        v23 = sub_10001C470(v21, v22, &v32);

        *(v19 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s configuring for Lock Screen platter", v19, 0xCu);
        sub_100005700(v20);
      }

      if (qword_100033320 != -1)
      {
        swift_once();
      }

      v24 = qword_100034B60;
      dispatch thunk of ActivityScene.backgroundTintColor.setter();
      v25 = objc_allocWithZone(type metadata accessor for ActivitySceneMetrics());
      ActivitySceneMetrics.init(size:cornerRadius:)();
      dispatch thunk of ActivityScene.resolvedMetrics.setter();
      v26 = [objc_allocWithZone(type metadata accessor for SecureWindow()) initWithWindowScene:v5];

      v27 = OBJC_IVAR____TtC22GuestUserHandoverSetup25LiveActivitySceneDelegate_window;
      v28 = *(v2 + OBJC_IVAR____TtC22GuestUserHandoverSetup25LiveActivitySceneDelegate_window);
      *(v2 + OBJC_IVAR____TtC22GuestUserHandoverSetup25LiveActivitySceneDelegate_window) = v26;
      v29 = v26;

      v30 = sub_10001B168();
      [v29 setRootViewController:v30];

      v15 = *(v2 + v27);
      [v15 makeKeyAndVisible];
    }
  }
}

id sub_10001BB90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProxCardSetUpSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10001BC34(void *a1)
{
  swift_getObjectType();
  v2 = sub_10000280C(&qword_100034108, &unk_10001FA70);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v52 - v4;
  v6 = type metadata accessor for GuestUserAccessError();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v56 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v52 - v11;
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000549C(v13, qword_100034C10);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55 = a1;
    v61 = v54;
    *v17 = 136446466;
    v18 = _typeName(_:qualified:)();
    v20 = sub_10001C470(v18, v19, &v61);
    v53 = v15;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_10001C470(0xD00000000000002ELL, 0x8000000100021010, &v61);
    v15 = v53;
    _os_log_impl(&_mh_execute_header, v53, v16, "%{public}s %{public}s", v17, 0x16u);
    swift_arrayDestroy();
    a1 = v55;
  }

  v22 = *(v57 + OBJC_IVAR____TtC22GuestUserHandoverSetup26ProxCardSetUpSceneDelegate_rootViewController);
  if (!v22)
  {
    goto LABEL_17;
  }

  v23 = v22;
  v24 = [a1 activationContext];
  if (!v24 || (v25 = v24, v26 = [v24 userInfo], v25, !v26))
  {

    v63 = 0u;
    v64 = 0u;
LABEL_16:
    sub_10000CBD0(&v63, &qword_100034118, &qword_10001FA80);
LABEL_17:
    v33 = a1;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v61 = v38;
      *v36 = 136446466;
      v39 = _typeName(_:qualified:)();
      v41 = sub_10001C470(v39, v40, &v61);

      *(v36 + 4) = v41;
      *(v36 + 12) = 2114;
      v42 = [v33 activationContext];
      *(v36 + 14) = v42;
      *v37 = v42;
      _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s failed to handle updated activation context %{public}@", v36, 0x16u);
      sub_10000CBD0(v37, &qword_100034110, &qword_10001F290);

      sub_100005700(v38);
    }

    return;
  }

  v57 = v14;
  v27 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v59 = static GuestUserHandoverSetupCoordinator.Constants.activationContextErrorKey.getter();
  v60 = v28;
  AnyHashable.init<A>(_:)();
  if (!*(v27 + 16) || (v29 = sub_10001CA18(&v61), (v30 & 1) == 0))
  {

    sub_10000C4A0(&v61);
    v63 = 0u;
    v64 = 0u;
    goto LABEL_15;
  }

  sub_10000C550(*(v27 + 56) + 32 * v29, &v63);
  sub_10000C4A0(&v61);

  if (!*(&v64 + 1))
  {
LABEL_15:

    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_17;
  }

  v32 = v61;
  v31 = v62;
  sub_10000C5C0(v61, v62);
  v54 = sub_10001CA5C(&qword_100034120);
  sub_10001CA5C(&qword_100034128);
  sub_10001CA5C(&qword_100034130);
  v55 = v32;
  TransportSerializable<>.init(transportData:)();
  v54 = v31;
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {

    sub_10000C628(v55, v54);
    sub_10000CBD0(v5, &qword_100034108, &unk_10001FA70);
    goto LABEL_17;
  }

  (*(v7 + 32))(v12, v5, v6);
  v43 = *&v23[OBJC_IVAR____TtC22GuestUserHandoverSetup31ProxCardSetUpRootViewController_model];
  v44 = *(v7 + 16);
  v45 = v56;
  v44(v56, v12, v6);
  v46 = type metadata accessor for ErrorProximityCardViewController();
  v47 = objc_allocWithZone(v46);
  *&v47[OBJC_IVAR____TtC22GuestUserHandoverSetup32ErrorProximityCardViewController_model] = v43;
  v44(&v47[OBJC_IVAR____TtC22GuestUserHandoverSetup32ErrorProximityCardViewController_error], v45, v6);
  v58.receiver = v47;
  v58.super_class = v46;

  v48 = objc_msgSendSuper2(&v58, "initWithContentView:", 0);
  v49 = *(v7 + 8);
  v49(v45, v6);
  v50 = *&v23[OBJC_IVAR____TtC22GuestUserHandoverSetup31ProxCardSetUpRootViewController_proxNavigationController];
  if (v50)
  {
    v51 = v50;
    [v51 pushViewController:v48 animated:1];
  }

  else
  {
  }

  sub_10000C628(v55, v54);
  v49(v12, v6);
}

uint64_t sub_10001C470(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001C53C(v11, 0, 0, 1, a1, a2);
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
    sub_10000C550(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005700(v11);
  return v7;
}

unint64_t sub_10001C53C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10001C648(a5, a6);
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

char *sub_10001C648(uint64_t a1, unint64_t a2)
{
  v4 = sub_10001C694(a1, a2);
  sub_10001C7C4(&off_10002CF58);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10001C694(uint64_t a1, unint64_t a2)
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

  v6 = sub_10001C8B0(v5, 0);
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
        v7 = sub_10001C8B0(v10, 0);
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

uint64_t sub_10001C7C4(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10001C924(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10001C8B0(uint64_t a1, uint64_t a2)
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

  sub_10000280C(&qword_100034138, &qword_10001FA88);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001C924(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000280C(&qword_100034138, &qword_10001FA88);
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

unint64_t sub_10001CA18(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10001CB18(a1, v4);
}

uint64_t sub_10001CA5C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GuestUserAccessError();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001CAA0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10001CBE4(a1, a2, v6);
}

unint64_t sub_10001CB18(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000C4F4(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000C4A0(v8);
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

unint64_t sub_10001CBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_10001CC9C(void *a1)
{
  v2 = v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v17 = a1;
    [v5 setDelegate:v2];
    [v5 setAllowsAlertStacking:1];
    v6 = [objc_allocWithZone(type metadata accessor for SecureWindow()) initWithWindowScene:v5];
    v7 = OBJC_IVAR____TtC22GuestUserHandoverSetup26ProxCardSetUpSceneDelegate_window;
    v8 = *(v2 + OBJC_IVAR____TtC22GuestUserHandoverSetup26ProxCardSetUpSceneDelegate_window);
    *(v2 + OBJC_IVAR____TtC22GuestUserHandoverSetup26ProxCardSetUpSceneDelegate_window) = v6;

    v9 = [v5 configurationContext];
    v10 = objc_allocWithZone(type metadata accessor for ProxCardSetUpRootViewController());
    v11 = sub_10000643C(v9);

    v12 = OBJC_IVAR____TtC22GuestUserHandoverSetup26ProxCardSetUpSceneDelegate_rootViewController;
    v13 = *(v2 + OBJC_IVAR____TtC22GuestUserHandoverSetup26ProxCardSetUpSceneDelegate_rootViewController);
    *(v2 + OBJC_IVAR____TtC22GuestUserHandoverSetup26ProxCardSetUpSceneDelegate_rootViewController) = v11;

    v14 = *(v2 + v7);
    if (v14)
    {
      [v14 setRootViewController:*(v2 + v12)];
      v15 = *(v2 + v7);
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    [v16 makeKeyAndVisible];
  }
}