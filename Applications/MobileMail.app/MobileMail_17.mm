unint64_t sub_1003E5C70()
{
  v2 = qword_1006DB590;
  if (!qword_1006DB590)
  {
    type metadata accessor for PhotoContentConfiguration();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB590);
    return WitnessTable;
  }

  return v2;
}

char *sub_1003E5CF0(char *a1, char *a2)
{
  *a2 = *a1;
  v3 = *(a2 + 1);
  *(a2 + 1) = *(a1 + 1);
  _objc_release(v3);
  *(a2 + 2) = *(a1 + 2);

  v8 = *(type metadata accessor for PhotoContentConfiguration() + 28);
  v10 = type metadata accessor for CornerConfiguration();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if ((v12)(&a2[v8], 1))
  {
    if (v12(&a1[v8], 1, v10))
    {
      v5 = sub_10025C9B0(&qword_1006DB578);
      memcpy(&a2[v8], &a1[v8], *(*(v5 - 8) + 64));
    }

    else
    {
      (*(v11 + 32))();
      (*(v11 + 56))(&a2[v8], 0, 1, v10);
    }
  }

  else if (v12(&a1[v8], 1, v10))
  {
    (*(v11 + 8))();
    v4 = sub_10025C9B0(&qword_1006DB578);
    memcpy(&a2[v8], &a1[v8], *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v11 + 40))(&a2[v8], &a1[v8], v10);
  }

  return a2;
}

uint64_t sub_1003E5FD0(uint64_t a1)
{
  v6 = type metadata accessor for PhotoContentConfiguration();
  if (!(*(*(v6 - 8) + 48))(a1, 1))
  {
    _objc_release(*(a1 + 8));

    v2 = a1 + *(v6 + 28);
    v3 = type metadata accessor for CornerConfiguration();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(v2, 1))
    {
      (*(v4 + 8))(v2, v3);
    }
  }

  return a1;
}

char *sub_1003E60F8(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  v5 = *(type metadata accessor for PhotoContentConfiguration() + 28);
  v7 = type metadata accessor for CornerConfiguration();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(&a1[v5], 1))
  {
    v2 = sub_10025C9B0(&qword_1006DB578);
    memcpy(&a2[v5], &a1[v5], *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))();
    (*(v8 + 56))(&a2[v5], 0, 1, v7);
  }

  return a2;
}

void sub_1003E6280()
{
  v1 = sub_1003E508C();
  v27 = [v1 view];
  _objc_release(v1);
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v25[OBJC_IVAR____TtC10MobileMail16PhotoContentView_imageView];
  _objc_retain(v2);
  [v25 addSubview:v2];
  _objc_release(v2);
  v3 = *&v25[OBJC_IVAR____TtC10MobileMail16PhotoContentView_imageView];
  _objc_retain(v3);
  [v25 insertSubview:v27 aboveSubview:v3];
  _objc_release(v3);
  _objc_retain(v25);
  v4 = [objc_opt_self() secondarySystemBackgroundColor];
  [v25 setBackgroundColor:?];
  _objc_release(v4);
  _objc_release(v25);
  v5 = *&v25[OBJC_IVAR____TtC10MobileMail16PhotoContentView_imageView];
  _objc_retain(v5);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v5);
  v6 = *&v25[OBJC_IVAR____TtC10MobileMail16PhotoContentView_imageView];
  _objc_retain(v6);
  [v6 setContentMode:2];
  _objc_release(v6);
  v7 = *&v25[OBJC_IVAR____TtC10MobileMail16PhotoContentView_imageView];
  _objc_retain(v7);
  [v7 setClipsToBounds:1];
  _objc_release(v7);
  v8 = *&v25[OBJC_IVAR____TtC10MobileMail16PhotoContentView_imageView];
  _objc_retain(v8);
  [v8 setHidden:1];
  _objc_release(v8);
  v23 = objc_opt_self();
  sub_100293824();
  _allocateUninitializedArray<A>(_:)();
  v22 = v0;
  v9 = [v27 widthAnchor];
  v10 = [v9 constraintEqualToConstant:*&v25[OBJC_IVAR____TtC10MobileMail16PhotoContentView_senderImageViewWidth]];
  _objc_release(v9);
  *v22 = v10;
  v12 = [v27 heightAnchor];
  v11 = [v27 widthAnchor];
  v13 = [v12 constraintEqualToAnchor:?];
  _objc_release(v11);
  _objc_release(v12);
  v22[1] = v13;
  v16 = [v27 topAnchor];
  _objc_retain(v25);
  v14 = [v25 layoutMarginsGuide];
  _objc_release(v25);
  v15 = [v14 topAnchor];
  _objc_release(v14);
  v17 = [v16 constraintEqualToAnchor:v15];
  _objc_release(v15);
  _objc_release(v16);
  v22[2] = v17;
  v20 = [v27 trailingAnchor];
  _objc_retain(v25);
  v18 = [v25 layoutMarginsGuide];
  _objc_release(v25);
  v19 = [v18 trailingAnchor];
  _objc_release(v18);
  v21 = [v20 constraintEqualToAnchor:v19];
  _objc_release(v19);
  _objc_release(v20);
  v22[3] = v21;
  sub_1002612B0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v23 activateConstraints:isa];
  _objc_release(isa);
  v26 = *&v25[OBJC_IVAR____TtC10MobileMail16PhotoContentView_imageView];
  _objc_retain(v26);
  [v26 mf_pinToView:v25 usingLayoutMargins:0];
  _objc_release(v26);
  _objc_release(v27);
}

void sub_1003E68A8()
{
  sub_1003E311C(OBJC_IVAR____TtC10MobileMail16PhotoContentView_appliedConfiguration);
  v1 = OBJC_IVAR____TtC10MobileMail16PhotoContentView_imageView;
  sub_1002649B4();
  *v1 = sub_10025C704();
  *OBJC_IVAR____TtC10MobileMail16PhotoContentView_senderImageViewWidth = 0x4041000000000000;
  v2 = OBJC_IVAR____TtC10MobileMail16PhotoContentView_contentCornerConfiguration;
  v0 = type metadata accessor for CornerConfiguration();
  (*(*(v0 - 8) + 56))(v2, 1);
  *OBJC_IVAR____TtC10MobileMail16PhotoContentView____lazy_storage___avatarViewController = 0;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("init(coder:) has not been implemented", 0x25uLL, 1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1003E6A60()
{
  ObjectType = swift_getObjectType();
  v14 = 0;
  v11 = type metadata accessor for CornerConfiguration();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v5 = &v1 - v4;
  v14 = v0;
  _objc_retain(v0);
  v13.receiver = v0;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "layoutSubviews");
  _objc_release(v0);
  v7 = OBJC_IVAR____TtC10MobileMail16PhotoContentView_contentCornerConfiguration;
  v10 = &v0[OBJC_IVAR____TtC10MobileMail16PhotoContentView_contentCornerConfiguration];
  swift_beginAccess();
  if ((*(v8 + 48))(v10, 1, v11) == 0)
  {
    (*(v8 + 16))(v5, &v3[v7], v11);
    swift_endAccess();
    _objc_retain(v3);
    v2.super.isa = [v3 layer];
    _objc_release(v3);
    CornerConfiguration.apply(to:)(v2);
    _objc_release(v2.super.isa);
    (*(v8 + 8))(v5, v11);
  }

  else
  {
    swift_endAccess();
  }

  _objc_retain(v3);
  [v3 setClipsToBounds:1];
  _objc_release(v3);
}

void (*sub_1003E6EA4(uint64_t ***a1))(void **a1, char a2)
{
  v2 = sub_100294700(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1003E59CC(v2);
  return sub_10034C098;
}

uint64_t type metadata accessor for PhotoConfigurationCell()
{
  v1 = qword_1006DB5F0;
  if (!qword_1006DB5F0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1003E6FE4()
{
  updated = sub_1003E70D0();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_1003E70D0()
{
  v4 = qword_1006DB600;
  if (!qword_1006DB600)
  {
    type metadata accessor for SearchItem.Photo();
    v3 = type metadata accessor for Optional();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1006DB600);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1003E71BC()
{
  v4 = sub_1003E72D0();
  if (v0 <= 0x3F)
  {
    v4 = sub_1003E736C();
    if (v1 <= 0x3F)
    {
      v4 = sub_1003E7410();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_1003E72D0()
{
  v4 = qword_1006DB670;
  if (!qword_1006DB670)
  {
    sub_1002A75C8();
    v3 = type metadata accessor for Optional();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1006DB670);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1003E736C()
{
  v4 = qword_1006DB678;
  if (!qword_1006DB678)
  {
    sub_10025CAA4(&qword_1006DB680);
    v3 = type metadata accessor for Optional();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1006DB678);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1003E7410()
{
  v4 = qword_1006DB688;
  if (!qword_1006DB688)
  {
    type metadata accessor for CornerConfiguration();
    v3 = type metadata accessor for Optional();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1006DB688);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1003E74C8()
{
  updated = type metadata accessor for PhotoContentConfiguration();
  if (v0 <= 0x3F)
  {
    updated = sub_1003E7410();
    if (v1 <= 0x3F)
    {
      updated = swift_updateClassMetadata2();
      if (!updated)
      {
        return 0;
      }
    }
  }

  return updated;
}

unint64_t sub_1003E7640()
{
  v2 = qword_1006DB6F8;
  if (!qword_1006DB6F8)
  {
    type metadata accessor for PhotoContentConfiguration();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB6F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003E76C0()
{
  v2 = qword_1006DB700;
  if (!qword_1006DB700)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB700);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003E7738()
{
  v2 = qword_1006DB710;
  if (!qword_1006DB710)
  {
    sub_10025CAA4(&qword_1006DB708);
    sub_1003E77D0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB710);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003E77D0()
{
  v2 = qword_1006DB718;
  if (!qword_1006DB718)
  {
    sub_1002A75C8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB718);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003E7850()
{
  v2 = qword_1006DB728;
  if (!qword_1006DB728)
  {
    sub_10025CAA4(&qword_1006DB720);
    sub_1003E78E8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB728);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003E78E8()
{
  v2 = qword_1006DB730;
  if (!qword_1006DB730)
  {
    sub_10025CAA4(&qword_1006DB680);
    sub_1003E7980();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB730);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003E7980()
{
  v2 = qword_1006DB738;
  if (!qword_1006DB738)
  {
    sub_1002913A4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB738);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003E7A00()
{
  v2 = qword_1006DB740;
  if (!qword_1006DB740)
  {
    sub_10025CAA4(&qword_1006DB578);
    sub_1003E7A98();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB740);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003E7A98()
{
  v2 = qword_1006DB748;
  if (!qword_1006DB748)
  {
    type metadata accessor for CornerConfiguration();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB748);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003E7B18(uint64_t a1)
{
  v4 = type metadata accessor for CornerConfiguration();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!(v6)(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  v2 = a1 + *(sub_10025C9B0(&qword_1006DB750) + 48);
  if (!v6())
  {
    (*(v5 + 8))(v2, v4);
  }

  return a1;
}

unint64_t sub_1003E7C44()
{
  v2 = qword_1006DB758;
  if (!qword_1006DB758)
  {
    type metadata accessor for CornerConfiguration();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB758);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003E7CC4()
{
  v2 = qword_1006DB760;
  if (!qword_1006DB760)
  {
    sub_1002913A4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB760);
    return WitnessTable;
  }

  return v2;
}

uint64_t QuickReplyView.ResetReason.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Did change reference message", 0x1CuLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Did complete quick-reply send animation", 0x27uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Did disable quick reply", 0x17uLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Did transition to full compose", 0x1EuLL, 1)._countAndFlagsBits;
    case 4:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Missing animation context", 0x19uLL, 1)._countAndFlagsBits;
    case 5:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("The user scrolled before the animation completed", 0x30uLL, 1)._countAndFlagsBits;
    case 6:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("The animation timed out waiting for a message to be added to the conversation view", 0x52uLL, 1)._countAndFlagsBits;
  }

  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return v2;
}

uint64_t QuickReplyView.ResetReason.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
  }

  return 0;
}

uint64_t sub_1003E8184@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = QuickReplyView.ResetReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

double static QuickReplyView.defaultHeight.getter()
{
  sub_1003E82C0();
  v3 = *sub_1003E83AC();
  _objc_retain(v3);
  String.height(width:font:)();
  v4 = v0;
  static QuickReply.additionalWebViewPadding.getter();
  v5 = v4 + v1 + 24.0 + 24.0;
  _objc_release(v3);

  return v5;
}

uint64_t sub_1003E82C0()
{
  v0 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Reply All", 9uLL, 1);
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Compose a quick reply to a single recipient", 0x2BuLL, 1);
  bundle = sub_10028FEB4();
  v2._countAndFlagsBits = sub_100015E30();
  v2._object = v3;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v0, 0, bundle, v2, v1)._countAndFlagsBits;

  _objc_release(bundle);

  return countAndFlagsBits;
}

uint64_t *sub_1003E83AC()
{
  if (qword_1006D6088 != -1)
  {
    swift_once();
  }

  return &qword_1006DB770;
}

uint64_t QuickReplyView.delegate.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t QuickReplyView.delegate.setter()
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void (*QuickReplyView.delegate.modify(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR____TtC10MobileMail14QuickReplyView_delegate;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_10029464C;
}

double sub_1003E881C()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonDefaultTopOffset);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1003E8880(double a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonDefaultTopOffset);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

id sub_1003E88EC()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonTopConstraint);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1003E895C(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonTopConstraint);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_1003E89F4()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewLeadingConstraint);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1003E8A64(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewLeadingConstraint);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_1003E8AFC()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewTrailingConstraint);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1003E8B6C(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewTrailingConstraint);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_1003E8C04()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewTopConstraint);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1003E8C74(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewTopConstraint);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_1003E8D0C()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewBottomConstraint);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1003E8D7C(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewBottomConstraint);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_1003E8E14()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_composeView);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1003E8E84(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_composeView);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_1003E8F1C()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_snapshot);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1003E8F8C(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_snapshot);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

double QuickReplyView.horizontalInset.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_horizontalInset);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

void QuickReplyView.horizontalInset.setter(double a1)
{
  v2 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_horizontalInset);
  swift_beginAccess();
  *v2 = a1;
  swift_endAccess();
  sub_1003E91A8();
}

void sub_1003E91A8()
{
  v9 = OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewLeadingConstraint;
  v10 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewLeadingConstraint);
  swift_beginAccess();
  if (*v10)
  {
    v7 = *(v8 + v9);
    _objc_retain(v7);
    swift_endAccess();
    v5 = (v8 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_horizontalInset);
    swift_beginAccess();
    v6 = *v5;
    swift_endAccess();
    [v7 setConstant:v6];
    _objc_release(v7);
  }

  else
  {
    swift_endAccess();
  }

  v4 = (v8 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewTrailingConstraint);
  swift_beginAccess();
  if (*v4)
  {
    v3 = *v4;
    _objc_retain(*v4);
    swift_endAccess();
    v1 = (v8 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_horizontalInset);
    swift_beginAccess();
    v2 = *v1;
    swift_endAccess();
    [v3 setConstant:-v2];
    _objc_release(v3);
  }

  else
  {
    swift_endAccess();
  }
}

void (*QuickReplyView.horizontalInset.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1003E93E4;
}

void sub_1003E93E4(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1003E91A8();
  }
}

double QuickReplyView.topInset.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_topInset);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

void QuickReplyView.topInset.setter(double a1)
{
  v2 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_topInset);
  swift_beginAccess();
  *v2 = a1;
  swift_endAccess();
  sub_1003E95B8();
}

void sub_1003E95B8()
{
  v5 = OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewTopConstraint;
  v6 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewTopConstraint);
  swift_beginAccess();
  if (*v6)
  {
    v3 = *(v4 + v5);
    _objc_retain(v3);
    swift_endAccess();
    v1 = (v4 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_topInset);
    swift_beginAccess();
    v2 = *v1;
    swift_endAccess();
    [v3 setConstant:v2];
    _objc_release(v3);
  }

  else
  {
    swift_endAccess();
  }
}

void (*QuickReplyView.topInset.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1003E9724;
}

void sub_1003E9724(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1003E95B8();
  }
}

double QuickReplyView.bottomInset.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_bottomInset);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

void QuickReplyView.bottomInset.setter(double a1)
{
  v2 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_bottomInset);
  swift_beginAccess();
  *v2 = a1;
  swift_endAccess();
  sub_1003E98F8();
}

void sub_1003E98F8()
{
  v5 = OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewBottomConstraint;
  v6 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewBottomConstraint);
  swift_beginAccess();
  if (*v6)
  {
    v3 = *(v4 + v5);
    _objc_retain(v3);
    swift_endAccess();
    v1 = (v4 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_bottomInset);
    swift_beginAccess();
    v2 = *v1;
    swift_endAccess();
    [v3 setConstant:-v2];
    _objc_release(v3);
  }

  else
  {
    swift_endAccess();
  }
}

void (*QuickReplyView.bottomInset.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1003E9A68;
}

void sub_1003E9A68(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1003E98F8();
  }
}

id QuickReplyView.contentView.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___contentView);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_1003EA078();
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___contentView);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

BOOL QuickReplyView.isComposing.getter()
{
  v4[4] = 0;
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_composeView);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  v4[0] = v3;
  sub_10026A58C(v4);
  return v3 != 0;
}

id sub_1003E9D74()
{
  v1 = objc_opt_self();
  _objc_retain(UIFontTextStyleBody);
  v2 = [v1 preferredFontForTextStyle:UIFontTextStyleBody];
  _objc_release(UIFontTextStyleBody);
  result = v2;
  qword_1006DB770 = v2;
  return result;
}

void *sub_1003E9DFC()
{
  v1 = *sub_1003E83AC();
  _objc_retain(v1);
  return v1;
}

uint64_t sub_1003E9E3C()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_currentlyLoadingCounter);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1003E9EA0(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_currentlyLoadingCounter);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

void QuickReplyView.contentView.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___contentView);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_1003EA078()
{
  v1 = sub_1003EA0D8();
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v1;
}

id sub_1003EA0D8()
{
  sub_1002AA63C();
  v4 = sub_10025C704();
  v1 = [objc_opt_self() mailConversationViewExpandedCellBackgroundColor];
  [v4 setBackgroundColor:?];
  _objc_release(v1);
  v2 = [v4 layer];
  _objc_retain(kCACornerCurveContinuous);
  [v2 setCornerCurve:kCACornerCurveContinuous];
  _objc_release(kCACornerCurveContinuous);
  _objc_release(v2);
  v3 = [v4 layer];
  [v3 setCornerRadius:12.0];
  _objc_release(v3);
  [v4 setPreservesSuperviewLayoutMargins:1];
  [v4 setInsetsLayoutMarginsFromSafeArea:0];
  return v4;
}

void (*QuickReplyView.contentView.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = QuickReplyView.contentView.getter();
  return sub_1003EA2A4;
}

void sub_1003EA2A4(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    QuickReplyView.contentView.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    QuickReplyView.contentView.setter(*a1);
  }
}

id sub_1003EA324()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___placeholderLabel);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_1003EA42C();
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___placeholderLabel);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

id sub_1003EA42C()
{
  sub_100264928();
  v5 = sub_10025C704();
  _objc_retain(v5);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v5);
  type metadata accessor for QuickReplyView();
  sub_1003E82C0();
  v2 = String._bridgeToObjectiveC()();

  [v5 setText:v2];
  _objc_release(v2);
  v3 = *sub_1003E83AC();
  _objc_retain(v3);
  [v5 setFont:v3];
  _objc_release(v3);
  v4 = [objc_opt_self() secondaryLabelColor];
  [v5 setTextColor:?];
  _objc_release(v4);
  [v5 setAdjustsFontForContentSizeCategory:1];
  LODWORD(v0) = 1132068864;
  [v5 setContentHuggingPriority:0 forAxis:v0];
  return v5;
}

void sub_1003EA5B8(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___placeholderLabel);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

Class sub_1003EA650()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___sendButton);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_1003EA75C(v6);
  _objc_retain(v4);
  v3 = &v6[OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___sendButton];
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

Class sub_1003EA75C(void *a1)
{
  v9 = a1;
  v11 = sub_1003F7EF8;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v15 = UIButtonTypeCustom;
  v21 = type metadata accessor for UIButton.Configuration();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v6 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = &v5 - v6;
  v26 = &v5 - v6;
  v25 = __chkstk_darwin(v9);
  static UIButton.Configuration.plain()();
  v1 = [objc_opt_self() mailInteractiveColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  sub_1002A75C8();
  v7 = MFImageGlyphQuickReplyDisabledSend;
  _objc_retain(MFImageGlyphQuickReplyDisabledSend);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = sub_1002A7840();
  _objc_release(v7);
  UIButton.Configuration.image.setter();
  sub_100015D3C();
  v14 = swift_allocObject();
  _objc_retain(v9);
  swift_unknownObjectWeakInit();
  _objc_release(v9);

  v13 = sub_100015E30();
  v12 = v2;
  v10 = sub_100015E5C();
  variable initialization expression of MailStatusMailboxActivityObserver.delegate();
  v17 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

  v24 = v17;
  sub_1003F7F00();
  _objc_retain(v17);
  v27.value.super.super.isa = v17;
  isa = UIButton.init(type:primaryAction:)(v15, v27).super.super.super.super.isa;
  v23 = isa;
  _objc_retain(isa);
  v16 = 0;
  [(objc_class *)isa setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(isa);
  LODWORD(v3) = 1148846080;
  [(objc_class *)isa setContentHuggingPriority:v15 forAxis:v3];
  _objc_retain(isa);
  [(objc_class *)isa setEnabled:v16 & 1];
  _objc_release(isa);
  _objc_release(v17);
  (*(v18 + 8))(v20, v21);
  return isa;
}

void sub_1003EAA98()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v0 = swift_allocObject();
    _objc_retain(Strong);
    swift_unknownObjectWeakInit();
    _objc_release(Strong);

    QuickReplyView.animationContext(_:)(sub_1003F7F64, v0);

    _objc_release(Strong);
  }
}

void sub_1003EABD8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    swift_beginAccess();
    v0 = swift_unknownObjectWeakLoadStrong();
    v4 = v0;
    if (v0)
    {
      swift_unknownObjectRetain();
      sub_100294754();
      swift_endAccess();
      ObjectType = swift_getObjectType();
      v2 = sub_1003EA650(ObjectType);
      [v4 quickReplyView:Strong didTapSendButton:? animationContext:?];
      _objc_release(v2);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_100294754();
      swift_endAccess();
    }

    _objc_release(Strong);
  }
}

uint64_t QuickReplyView.animationContext(_:)(void (*a1)(void), uint64_t a2)
{
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v56 = 0u;
  v57 = 0u;
  v51 = 0;
  v41 = 0u;
  v42 = 0u;
  v70 = a1;
  v71 = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v68 = Strong;
    v28 = (v32 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_composeView);
    swift_beginAccess();
    v29 = *v28;
    _objc_retain(*v28);
    swift_endAccess();
    if (v29)
    {
      v67 = v29;
      v26 = sub_1003EB7B0();
      v27 = [v26 snapshotViewAfterScreenUpdates:0];
      _objc_release(v26);
      if (v27)
      {
        v66 = v27;
        v15 = sub_1003EB7B0();
        [v15 frame];
        v62 = v2;
        v63 = v3;
        v64 = v4;
        v65 = v5;
        v58 = v2;
        v59 = v3;
        v60 = v4;
        v61 = v5;
        [v27 setFrame:{v2, v3, v4, v5}];
        _objc_release(v15);
        v16 = QuickReplyView.contentView.getter();
        [v16 frame];
        v52 = v6;
        v53 = v7;
        v54 = v8;
        v55 = v9;
        v17 = v8;
        v18 = v9;
        *&v57 = v8;
        *(&v57 + 1) = v9;
        _objc_release(v16);
        v56 = 0uLL;
        v25 = sub_1003EA0D8();
        v51 = v25;
        v47 = 0;
        v48 = 0;
        v49 = v17;
        v50 = v18;
        [v25 setFrame:{0.0, 0.0, v17, v18}];
        sub_1003EDFB0(v25);
        [v29 frame];
        v43 = v10;
        v44 = v11;
        v45 = v12;
        v46 = v13;
        v19 = v10;
        v20 = v11;
        v21 = v12;
        v22 = v13;
        *&v41 = v10;
        *(&v41 + 1) = v11;
        *&v42 = v12;
        *(&v42 + 1) = v13;
        swift_getObjectType();

        _objc_retain(v27);
        _objc_retain(v25);
        v23 = swift_allocObject();
        v23[2] = a1;
        v23[3] = a2;
        v23[4] = v19;
        v23[5] = v20;
        v23[6] = v21;
        v23[7] = v22;
        v23[8] = v27;
        v23[9] = v25;
        v39 = sub_1003F1D74;
        v40 = v23;
        aBlock = _NSConcreteStackBlock;
        v35 = 1107296256;
        v36 = 0;
        v37 = sub_1002919E0;
        v38 = &unk_10065DDE8;
        v24 = _Block_copy(&aBlock);

        [Strong mailComposeViewSnapshotForQuickReplyView:v32 :v24];
        _Block_release(v24);
        _objc_release(v25);
        _objc_release(v27);
        _objc_release(v29);
        return swift_unknownObjectRelease();
      }

      _objc_release(v29);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  a1(0);
}

void sub_1003EB254(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___sendButton);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

Class sub_1003EB2EC()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___expandButton);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_1003EB3F8(v6);
  _objc_retain(v4);
  v3 = &v6[OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___expandButton];
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

Class sub_1003EB3F8(void *a1)
{
  sub_100015D3C();
  v5 = swift_allocObject();
  _objc_retain(a1);
  swift_unknownObjectWeakInit();
  _objc_release(a1);

  sub_100015E30();
  v4 = sub_100015E5C();
  v2 = variable initialization expression of MailStatusMailboxActivityObserver.delegate();
  v6 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

  sub_1003F7E30();
  _objc_retain(v6);
  v8.value.super.super.isa = v6;
  isa = UIButton.init(type:primaryAction:)(UIButtonTypeCustom, v8).super.super.super.super.isa;
  _objc_retain(isa);
  [(objc_class *)isa setTranslatesAutoresizingMaskIntoConstraints:0, 0, v4, v2, sub_1003F7E28, v5];
  _objc_release(isa);
  _objc_release(v6);
  return isa;
}

void sub_1003EB5AC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    swift_beginAccess();
    v0 = swift_unknownObjectWeakLoadStrong();
    v4 = v0;
    if (v0)
    {
      swift_unknownObjectRetain();
      sub_100294754();
      swift_endAccess();
      ObjectType = swift_getObjectType();
      v2 = sub_1003EB2EC(ObjectType);
      [v4 quickReplyView:Strong didTapExpandButton:?];
      _objc_release(v2);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_100294754();
      swift_endAccess();
    }

    _objc_release(Strong);
  }
}

void sub_1003EB718(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___expandButton);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_1003EB7B0()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___buttonStackView);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_1003EB8BC();
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___buttonStackView);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

id sub_1003EB8BC()
{
  sub_100264A18();
  sub_1002AA63C();
  _allocateUninitializedArray<A>(_:)();
  v3 = v0;
  *v0 = sub_1003EB2EC();
  v3[1] = sub_1003EA650();
  sub_1002612B0();
  v5 = sub_1003C7248();
  _objc_retain(v5);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v5);
  [v5 setAxis:0];
  [v5 setAlignment:3];
  [v5 setDistribution:0];
  LODWORD(v1) = 1148846080;
  [v5 setContentHuggingPriority:0 forAxis:v1];
  v4 = sub_1003EB2EC();
  [(objc_class *)v4 setHidden:1];
  _objc_release(v4);
  return v5;
}

void sub_1003EBA3C(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___buttonStackView);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_1003EBAD4()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___tapGesture);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_1003EBBE0(v6);
  _objc_retain(v4);
  v3 = &v6[OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___tapGesture];
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

id sub_1003EBBE0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4[4] = a1;
  sub_1003C7288();
  _objc_retain(a1);
  v4[3] = ObjectType;
  v4[0] = a1;
  return sub_1003C72EC(v4, "didTapContentView:");
}

void sub_1003EBC5C(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___tapGesture);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

uint64_t sub_1003EBCF4()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006DB778);
  sub_1000208F4(v1, qword_1006DB778);
  return sub_1003EBD40();
}

uint64_t sub_1003EBD78()
{
  if (qword_1006D6090 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006DB778);
}

uint64_t sub_1003EBDE4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1003EBD78();
  swift_beginAccess();
  v1 = type metadata accessor for Logger();
  (*(*(v1 - 8) + 16))(a1, v3);
  return swift_endAccess();
}

uint64_t sub_1003EBE70(uint64_t a1)
{
  v10 = a1;
  v14 = 0;
  v13 = 0;
  v11 = type metadata accessor for Logger();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v3 - v4;
  v14 = __chkstk_darwin(v10);
  v13 = v1;
  v5 = sub_1003EBD78();
  (*(v8 + 16))(v6, v10, v11);
  v7 = &v12;
  swift_beginAccess();
  (*(v8 + 40))(v5, v6, v11);
  swift_endAccess();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_1003EBFD0()
{
  v0 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Reply to %@", 0xBuLL, 1);
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Compose a quick reply to a list of recipients", 0x2DuLL, 1);
  bundle = sub_10028FEB4();
  v2._countAndFlagsBits = sub_100015E30();
  v2._object = v3;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v0, 0, bundle, v2, v1)._countAndFlagsBits;

  _objc_release(bundle);

  return countAndFlagsBits;
}

uint64_t sub_1003EC0BC()
{
  v9 = 0;
  v2 = (*(*(type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v8 = &v1 - v2;
  v3 = (*(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v7 = &v1 - v3;
  v4 = (*(*(type metadata accessor for DispatchQoS() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v6 = &v1 - v4;
  sub_100272A48();
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.mobilemail.quickreply.placeholder.update", 0x32uLL, 1);
  static DispatchQoS.userInitiated.getter();
  sub_1003EC258();
  sub_1003EC2F8(v8);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1006DB790 = result;
  return result;
}

uint64_t sub_1003EC258()
{
  sub_1003F7620(0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  sub_1003F7D20();
  sub_10025C9B0(&qword_1006DB968);
  sub_1003F7DA0();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_1003EC2F8@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t *sub_1003EC364()
{
  if (qword_1006D6098 != -1)
  {
    swift_once();
  }

  return &qword_1006DB790;
}

void *sub_1003EC3C4()
{
  v1 = *sub_1003EC364();
  _objc_retain(v1);
  return v1;
}

char *QuickReplyView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v7 = a1;
  *(&v7 + 1) = a2;
  *&v8 = a3;
  *(&v8 + 1) = a4;
  ObjectType = swift_getObjectType();
  v11 = v7;
  v12 = v8;
  v13 = v4;
  *&v4[OBJC_IVAR____TtC10MobileMail14QuickReplyView_buttonHeightWidth] = 0x4046000000000000;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView_defaultHorizontalMargin] = 24.0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView_horizontalInsetFromLayoutMargin] = 7.0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView_additionalHorizontalInset] = 2.0;
  swift_unknownObjectWeakInit();
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonDefaultTopOffset] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonTopConstraint] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewLeadingConstraint] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewTrailingConstraint] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewTopConstraint] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewBottomConstraint] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView_composeView] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView_snapshot] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView_horizontalInset] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView_topInset] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView_bottomInset] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView_currentlyLoadingCounter] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___contentView] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___placeholderLabel] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___sendButton] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___expandButton] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___buttonStackView] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___tapGesture] = 0;
  v10.receiver = v13;
  v10.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v10, "initWithFrame:", v7, v8);
  _objc_retain(v9);
  v13 = v9;
  sub_1003EC690();
  _objc_release(v13);
  return v9;
}

void sub_1003EC690()
{
  swift_getObjectType();
  v1 = v0;
  [v0 setPreservesSuperviewLayoutMargins:1];

  v2 = v0;
  [v0 setInsetsLayoutMarginsFromSafeArea:0];

  v3 = v0;
  v104 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor:?];

  v105 = QuickReplyView.contentView.getter();
  [v135 addSubview:?];

  v107 = QuickReplyView.contentView.getter();
  v106 = sub_1003EA324();
  [v107 addSubview:?];

  v109 = QuickReplyView.contentView.getter();
  v108 = sub_1003EB7B0();
  [v109 addSubview:?];

  v110 = sub_1003EA324();
  v115 = [v110 leadingAnchor];

  v111 = QuickReplyView.contentView.getter();
  v112 = [v111 layoutMarginsGuide];

  v113 = [v112 leadingAnchor];
  v114 = [v115 constraintEqualToAnchor:v113 constant:-*&v135[OBJC_IVAR____TtC10MobileMail14QuickReplyView_horizontalInsetFromLayoutMargin]];

  LODWORD(v4) = 1144750080;
  [v114 setPriority:v4];
  v116 = sub_1003EA324();
  v120 = [v116 leadingAnchor];

  v117 = QuickReplyView.contentView.getter();
  v118 = [v117 leadingAnchor];

  v119 = [v120 constraintGreaterThanOrEqualToAnchor:v118 constant:*&v135[OBJC_IVAR____TtC10MobileMail14QuickReplyView_defaultHorizontalMargin]];
  LODWORD(v5) = 1148846080;
  [v119 setPriority:v5];
  v145 = sub_1003F2D88();
  v121 = sub_1003EB7B0();
  v126 = [v121 trailingAnchor];

  v122 = QuickReplyView.contentView.getter();
  v123 = [v122 layoutMarginsGuide];

  v124 = [v123 trailingAnchor];
  v125 = [v126 constraintEqualToAnchor:v124 constant:*&v135[OBJC_IVAR____TtC10MobileMail14QuickReplyView_horizontalInsetFromLayoutMargin] + v145 - *&v135[OBJC_IVAR____TtC10MobileMail14QuickReplyView_additionalHorizontalInset]];

  LODWORD(v6) = 1144750080;
  [v125 setPriority:v6];
  v127 = sub_1003EB7B0();
  v131 = [v127 trailingAnchor];

  v128 = QuickReplyView.contentView.getter();
  v129 = [v128 trailingAnchor];

  v130 = [v131 constraintLessThanOrEqualToAnchor:v129 constant:v145 - *&v135[OBJC_IVAR____TtC10MobileMail14QuickReplyView_defaultHorizontalMargin] - *&v135[OBJC_IVAR____TtC10MobileMail14QuickReplyView_additionalHorizontalInset]];
  LODWORD(v7) = 1148846080;
  [v130 setPriority:v7];
  static QuickReplyView.defaultHeight.getter();
  v8 = v135;
  UIRoundToViewScale();
  v133 = v9;

  v132 = &v135[OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonDefaultTopOffset];
  swift_beginAccess();
  *v132 = v133;
  swift_endAccess();
  v134 = sub_1003EB7B0();
  v140 = [v134 topAnchor];

  v136 = QuickReplyView.contentView.getter();
  v139 = [v136 topAnchor];

  v137 = &v135[OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonDefaultTopOffset];
  swift_beginAccess();
  v138 = *v137;
  swift_endAccess();
  v142 = [v140 constraintEqualToAnchor:v139 constant:v138];

  v141 = &v135[OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonTopConstraint];
  swift_beginAccess();
  v10 = *v141;
  *v141 = v142;

  swift_endAccess();
  v143 = &v135[OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonTopConstraint];
  swift_beginAccess();
  if (*v143)
  {
    v103 = *v143;
    v11 = *v143;
    swift_endAccess();
    LODWORD(v12) = 1144750080;
    [v103 setPriority:v12];
  }

  else
  {
    swift_endAccess();
  }

  v37 = sub_1003EB7B0();
  v43 = [v37 bottomAnchor];

  v38 = QuickReplyView.contentView.getter();
  v41 = [v38 bottomAnchor];

  v39 = &v135[OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonDefaultTopOffset];
  swift_beginAccess();
  v40 = *v39;
  swift_endAccess();
  v42 = [v43 constraintLessThanOrEqualToAnchor:v41 constant:-v40];

  LODWORD(v13) = 1148846080;
  [v42 setPriority:v13];
  v44 = QuickReplyView.contentView.getter();
  v49 = [v44 leadingAnchor];

  v14 = v135;
  v45 = [v135 safeAreaLayoutGuide];

  v48 = [v45 leadingAnchor];
  v46 = &v135[OBJC_IVAR____TtC10MobileMail14QuickReplyView_horizontalInset];
  swift_beginAccess();
  v47 = *v46;
  swift_endAccess();
  v51 = [v49 constraintEqualToAnchor:v48 constant:v47];

  v50 = &v135[OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewLeadingConstraint];
  swift_beginAccess();
  v15 = *v50;
  *v50 = v51;

  swift_endAccess();
  v52 = QuickReplyView.contentView.getter();
  v57 = [v52 trailingAnchor];

  v16 = v135;
  v53 = [v135 safeAreaLayoutGuide];

  v56 = [v53 trailingAnchor];
  v54 = &v135[OBJC_IVAR____TtC10MobileMail14QuickReplyView_horizontalInset];
  swift_beginAccess();
  v55 = *v54;
  swift_endAccess();
  v59 = [v57 constraintEqualToAnchor:v56 constant:-v55];

  v58 = &v135[OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewTrailingConstraint];
  swift_beginAccess();
  v17 = *v58;
  *v58 = v59;

  swift_endAccess();
  v60 = QuickReplyView.contentView.getter();
  v64 = [v60 topAnchor];

  v18 = v135;
  v63 = [v135 topAnchor];

  v61 = &v135[OBJC_IVAR____TtC10MobileMail14QuickReplyView_topInset];
  swift_beginAccess();
  v62 = *v61;
  swift_endAccess();
  v66 = [v64 constraintEqualToAnchor:v63 constant:v62];

  v65 = &v135[OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewTopConstraint];
  swift_beginAccess();
  v19 = *v65;
  *v65 = v66;

  swift_endAccess();
  v67 = QuickReplyView.contentView.getter();
  v71 = [v67 bottomAnchor];

  v20 = v135;
  v70 = [v135 bottomAnchor];

  v68 = &v135[OBJC_IVAR____TtC10MobileMail14QuickReplyView_bottomInset];
  swift_beginAccess();
  v69 = *v68;
  swift_endAccess();
  v73 = [v71 constraintEqualToAnchor:v70 constant:-v69];

  v72 = &v135[OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewBottomConstraint];
  swift_beginAccess();
  v21 = *v72;
  *v72 = v73;

  swift_endAccess();
  v74 = objc_opt_self();
  sub_10025C9B0(&unk_1006DB860);
  _allocateUninitializedArray<A>(_:)();
  v101 = v22;
  v23 = v114;
  *v101 = v114;
  v24 = v119;
  v101[1] = v119;
  v75 = sub_1003EA324();
  v78 = [v75 trailingAnchor];

  v76 = sub_1003EB7B0();
  v77 = [v76 leadingAnchor];

  v79 = [v78 constraintEqualToAnchor:v77 constant:-22.0];
  v101[2] = v79;
  v80 = sub_1003EA324();
  v83 = [v80 centerYAnchor];

  v81 = sub_1003EB7B0();
  v82 = [v81 centerYAnchor];

  v84 = [v83 constraintEqualToAnchor:v82];
  v101[3] = v84;
  v85 = sub_1003EB2EC();
  v86 = [(objc_class *)v85 widthAnchor];

  v87 = [v86 constraintEqualToConstant:*&v135[OBJC_IVAR____TtC10MobileMail14QuickReplyView_buttonHeightWidth]];
  v101[4] = v87;
  v88 = sub_1003EB2EC();
  v89 = [(objc_class *)v88 heightAnchor];

  v90 = [v89 constraintEqualToConstant:*&v135[OBJC_IVAR____TtC10MobileMail14QuickReplyView_buttonHeightWidth]];
  v101[5] = v90;
  v91 = &v135[OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonTopConstraint];
  swift_beginAccess();
  sub_1002935A0(v91, v101 + 6);
  swift_endAccess();
  v25 = v42;
  v101[7] = v42;
  v92 = sub_1003EA650();
  v93 = [(objc_class *)v92 widthAnchor];

  v94 = [v93 constraintEqualToConstant:*&v135[OBJC_IVAR____TtC10MobileMail14QuickReplyView_buttonHeightWidth]];
  v101[8] = v94;
  v95 = sub_1003EA650();
  v96 = [(objc_class *)v95 heightAnchor];

  v97 = [v96 constraintEqualToConstant:*&v135[OBJC_IVAR____TtC10MobileMail14QuickReplyView_buttonHeightWidth]];
  v101[9] = v97;
  v26 = v130;
  v101[10] = v130;
  v27 = v125;
  v101[11] = v125;
  v98 = &v135[OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewBottomConstraint];
  swift_beginAccess();
  sub_1002935A0(v98, v101 + 12);
  swift_endAccess();
  v99 = &v135[OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewLeadingConstraint];
  swift_beginAccess();
  sub_1002935A0(v99, v101 + 13);
  swift_endAccess();
  v100 = &v135[OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewTrailingConstraint];
  swift_beginAccess();
  sub_1002935A0(v100, v101 + 14);
  swift_endAccess();
  v102 = &v135[OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewTopConstraint];
  swift_beginAccess();
  sub_1002935A0(v102, v101 + 15);
  swift_endAccess();
  sub_1002612B0();
  sub_10025C9B0(&qword_1006D75A8);
  sub_100293824();
  sub_100293888();
  Sequence.compactMap<A>(_:)();
  sub_100264880();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v74 activateConstraints:isa];

  v35 = QuickReplyView.contentView.getter();
  v34 = sub_1003EBAD4();
  [v35 addGestureRecognizer:?];

  v36 = [objc_opt_self() defaultCenter];
  v28 = v135;
  v29 = UIContentSizeCategoryDidChangeNotification;
  [v36 addObserver:v135 selector:"contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_1003F3A18();
  v30 = v135;
  v144 = sub_1003F3A7C();
  v32 = QuickReplyView.contentView.getter();
  v31 = v144;
  [v32 addInteraction:v144];
  swift_unknownObjectRelease();
}

void sub_1003EDCA0()
{
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_buttonHeightWidth = 0x4046000000000000;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_defaultHorizontalMargin = 24.0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_horizontalInsetFromLayoutMargin = 7.0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_additionalHorizontalInset = 2.0;
  swift_unknownObjectWeakInit();
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonDefaultTopOffset = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonTopConstraint = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewLeadingConstraint = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewTrailingConstraint = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewTopConstraint = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewBottomConstraint = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_composeView = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_snapshot = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_horizontalInset = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_topInset = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_bottomInset = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_currentlyLoadingCounter = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___contentView = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___placeholderLabel = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___sendButton = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___expandButton = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___buttonStackView = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___tapGesture = 0;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("init(coder:) has not been implemented", 0x25uLL, 1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall QuickReplyView.layoutSubviews()()
{
  ObjectType = swift_getObjectType();
  v4 = v0;
  _objc_retain(v0);
  v3.receiver = v0;
  v3.super_class = ObjectType;
  objc_msgSendSuper2(&v3, "layoutSubviews");
  _objc_release(v0);
  v2 = QuickReplyView.contentView.getter();
  sub_1003EDFB0(v2);
  _objc_release(v2);
}

Swift::Void __swiftcall QuickReplyView.prepareForReuse()()
{
  _objc_retain(v0);
  [v0 setHidden:0];
  _objc_release(v0);
}

uint64_t QuickReplyView.resetWithReason(_:)(uint64_t a1)
{
  v111 = a1;
  v110 = 0;
  v93 = sub_1003EF3DC;
  v94 = sub_1003F77F0;
  v95 = sub_10026EE84;
  v96 = sub_10025E604;
  v97 = sub_100264354;
  v98 = sub_1003F3ABC;
  v99 = sub_10026EE84;
  v100 = sub_10026434C;
  v101 = sub_10026434C;
  v102 = sub_10026EF2C;
  v103 = sub_10026434C;
  v104 = sub_10026434C;
  v105 = sub_1002644E4;
  v106 = sub_10026434C;
  v107 = sub_10026434C;
  v108 = sub_10026EF2C;
  v128 = 0;
  v127 = 0;
  v109 = 0;
  v112 = type metadata accessor for Logger();
  v113 = *(v112 - 8);
  v114 = v112 - 8;
  v115 = (*(v113 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v116 = v39 - v115;
  v128 = __chkstk_darwin(v111);
  v127 = v1;
  v117 = OBJC_IVAR____TtC10MobileMail14QuickReplyView_composeView;
  v118 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_composeView);
  swift_beginAccess();
  if (*v118)
  {
    v91 = *&v92[v117];
    _objc_retain(v91);
    swift_endAccess();
    [v91 removeFromSuperview];
    _objc_release(v91);
  }

  else
  {
    swift_endAccess();
  }

  v79 = &v92[OBJC_IVAR____TtC10MobileMail14QuickReplyView_composeView];
  v80 = &v126;
  v89 = 0;
  swift_beginAccess();
  v2 = *v79;
  *v79 = 0;
  _objc_release(v2);
  swift_endAccess();
  v81 = sub_1003EB2EC();
  v87 = &selRef_setDisplayMessageOnReload_;
  v83 = 1;
  [(objc_class *)v81 setHidden:1];
  _objc_release(v81);
  v82 = sub_1003EA324();
  v3 = v87[147];
  v88 = 0;
  [v82 v3];
  _objc_release(v82);
  v84 = sub_1003EBAD4();
  v85 = &selRef_setDisplayMessageOnReload_;
  [v84 setEnabled:v83 & 1];
  _objc_release(v84);
  v86 = sub_1003EA650();
  [v86 v85[45]];
  _objc_release(v86);
  _objc_retain(v92);
  [v92 v87[147]];
  _objc_release(v92);
  v90 = &v92[OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonTopConstraint];
  swift_beginAccess();
  if (*v90)
  {
    v78 = *v90;
    _objc_retain(v78);
    swift_endAccess();
    v75 = &v92[OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonDefaultTopOffset];
    v76 = &v119;
    swift_beginAccess();
    v77 = *v75;
    swift_endAccess();
    [v78 setConstant:v77];
    _objc_release(v78);
  }

  else
  {
    swift_endAccess();
  }

  QuickReplyView.removeSnapshotIfNeeded()();
  v4 = v116;
  v47 = sub_1003EBD78();
  v48 = &v125;
  v57 = 32;
  swift_beginAccess();
  (*(v113 + 16))(v4, v47, v112);
  swift_endAccess();
  _objc_retain(v92);
  v49 = 24;
  v58 = 7;
  v52 = swift_allocObject();
  *(v52 + 16) = v92;
  v59 = swift_allocObject();
  *(v59 + 16) = v111;
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.default.getter();
  v55 = 17;
  v61 = swift_allocObject();
  v54 = 32;
  *(v61 + 16) = 32;
  v62 = swift_allocObject();
  v56 = 8;
  *(v62 + 16) = 8;
  v5 = swift_allocObject();
  v50 = v5;
  *(v5 + 16) = v93;
  *(v5 + 24) = 0;
  v6 = swift_allocObject();
  v7 = v50;
  v51 = v6;
  *(v6 + 16) = v94;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v51;
  v63 = v8;
  *(v8 + 16) = v95;
  *(v8 + 24) = v9;
  v64 = swift_allocObject();
  *(v64 + 16) = 64;
  v65 = swift_allocObject();
  *(v65 + 16) = v56;
  v10 = swift_allocObject();
  v11 = v52;
  v53 = v10;
  *(v10 + 16) = v96;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v53;
  v66 = v12;
  *(v12 + 16) = v97;
  *(v12 + 24) = v13;
  v67 = swift_allocObject();
  *(v67 + 16) = v54;
  v68 = swift_allocObject();
  *(v68 + 16) = v56;
  v14 = swift_allocObject();
  v15 = v59;
  v60 = v14;
  *(v14 + 16) = v98;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v60;
  v70 = v16;
  *(v16 + 16) = v99;
  *(v16 + 24) = v17;
  v72 = sub_10025C9B0(&unk_1006D7720);
  v69 = _allocateUninitializedArray<A>(_:)();
  v71 = v18;

  v19 = v61;
  v20 = v71;
  *v71 = v100;
  v20[1] = v19;

  v21 = v62;
  v22 = v71;
  v71[2] = v101;
  v22[3] = v21;

  v23 = v63;
  v24 = v71;
  v71[4] = v102;
  v24[5] = v23;

  v25 = v64;
  v26 = v71;
  v71[6] = v103;
  v26[7] = v25;

  v27 = v65;
  v28 = v71;
  v71[8] = v104;
  v28[9] = v27;

  v29 = v66;
  v30 = v71;
  v71[10] = v105;
  v30[11] = v29;

  v31 = v67;
  v32 = v71;
  v71[12] = v106;
  v32[13] = v31;

  v33 = v68;
  v34 = v71;
  v71[14] = v107;
  v34[15] = v33;

  v35 = v70;
  v36 = v71;
  v71[16] = v108;
  v36[17] = v35;
  sub_1002612B0();

  if (os_log_type_enabled(v73, v74))
  {
    v37 = v109;
    v40 = static UnsafeMutablePointer.allocate(capacity:)();
    v39[8] = sub_10025C9B0(&qword_1006D7290);
    v41 = sub_1002641E8(1);
    v42 = sub_1002641E8(2);
    v43 = &v124;
    v124 = v40;
    v44 = &v123;
    v123 = v41;
    v45 = &v122;
    v122 = v42;
    sub_10026423C(2, &v124);
    sub_10026423C(3, v43);
    v120 = v100;
    v121 = v61;
    sub_100264250(&v120, v43, v44, v45);
    v46 = v37;
    if (v37)
    {

      __break(1u);
    }

    else
    {
      v120 = v101;
      v121 = v62;
      sub_100264250(&v120, &v124, &v123, &v122);
      v39[6] = 0;
      v120 = v102;
      v121 = v63;
      sub_100264250(&v120, &v124, &v123, &v122);
      v39[5] = 0;
      v120 = v103;
      v121 = v64;
      sub_100264250(&v120, &v124, &v123, &v122);
      v39[4] = 0;
      v120 = v104;
      v121 = v65;
      sub_100264250(&v120, &v124, &v123, &v122);
      v39[3] = 0;
      v120 = v105;
      v121 = v66;
      sub_100264250(&v120, &v124, &v123, &v122);
      v39[2] = 0;
      v120 = v106;
      v121 = v67;
      sub_100264250(&v120, &v124, &v123, &v122);
      v39[1] = 0;
      v120 = v107;
      v121 = v68;
      sub_100264250(&v120, &v124, &v123, &v122);
      v39[0] = 0;
      v120 = v108;
      v121 = v70;
      sub_100264250(&v120, &v124, &v123, &v122);
      _os_log_impl(&_mh_execute_header, v73, v74, "<%s %@> [Quick Reply] Did reset quick reply with reason: %s", v40, 0x20u);
      sub_10026429C(v41);
      sub_10026429C(v42);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v73);
  return (*(v113 + 8))(v116, v112);
}

Swift::Void __swiftcall QuickReplyView.removeSnapshotIfNeeded()()
{
  v5 = OBJC_IVAR____TtC10MobileMail14QuickReplyView_snapshot;
  v6 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_snapshot);
  swift_beginAccess();
  if (*v6)
  {
    v3 = *(v4 + v5);
    _objc_retain(v3);
    swift_endAccess();
    [v3 removeFromSuperview];
    _objc_release(v3);
  }

  else
  {
    swift_endAccess();
  }

  v2 = (v4 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_snapshot);
  swift_beginAccess();
  v1 = *v2;
  *v2 = 0;
  _objc_release(v1);
  swift_endAccess();
}

uint64_t QuickReplyView.updatePlaceholder(message:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC10MobileMail14QuickReplyView_currentlyLoadingCounter;
  v13 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_currentlyLoadingCounter);
  result = swift_beginAccess();
  if (__OFADD__(*v13, 1))
  {
    __break(1u);
  }

  else
  {
    *&v9[v12] = *v13 + 1;
    swift_endAccess();
    v4 = &v9[OBJC_IVAR____TtC10MobileMail14QuickReplyView_currentlyLoadingCounter];
    swift_beginAccess();
    v6 = *v4;
    swift_endAccess();
    v5 = sub_1003EA324();
    [v5 setText:0];
    _objc_release(v5);
    v8 = swift_allocObject();
    _objc_retain(v9);
    swift_unknownObjectWeakInit();
    _objc_release(v9);

    v7 = swift_allocObject();
    v7[2] = v8;
    v7[3] = v6;
    v7[4] = ObjectType;
    sub_1003F031C(a1, sub_1003F77FC, v7);
  }

  return result;
}

void sub_1003EF674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v86 = a1;
  v85 = a2;
  v82 = a3;
  v83 = a4;
  v84 = 0;
  v70 = sub_1003EF3DC;
  v71 = sub_1003F77F0;
  v72 = sub_10026EE84;
  v73 = sub_10025E604;
  v74 = sub_100264354;
  v75 = sub_10026434C;
  v76 = sub_10026434C;
  v77 = sub_10026EF2C;
  v78 = sub_10026434C;
  v79 = sub_10026434C;
  v80 = sub_1002644E4;
  v106 = 0;
  v107 = 0;
  v105 = 0;
  v104 = 0;
  v102 = 0;
  v81 = 0;
  v87 = type metadata accessor for Logger();
  v88 = *(v87 - 8);
  v89 = v87 - 8;
  v90 = (*(v88 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v91 = v32 - v90;
  v106 = __chkstk_darwin(v86);
  v107 = v4;
  v92 = v5 + 16;
  v105 = v5 + 16;
  v104 = v6;
  v93 = &v103;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v69 = Strong;
    v65 = Strong;
    v102 = Strong;
    v66 = &Strong[OBJC_IVAR____TtC10MobileMail14QuickReplyView_currentlyLoadingCounter];
    v67 = &v101;
    swift_beginAccess();
    v68 = *v66;
    swift_endAccess();
    if (v68 == v83)
    {
      v7 = sub_1003EA324();
      v8 = v91;
      v43 = v7;

      v42 = String._bridgeToObjectiveC()();

      [v43 setText:v42];
      _objc_release(v42);
      _objc_release(v43);
      v44 = sub_1003EBD78();
      v45 = &v100;
      v50 = 32;
      swift_beginAccess();
      (*(v88 + 16))(v8, v44, v87);
      swift_endAccess();
      _objc_retain(v65);
      v51 = 7;
      v52 = swift_allocObject();
      *(v52 + 16) = v65;
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();
      v48 = 17;
      v54 = swift_allocObject();
      *(v54 + 16) = 32;
      v55 = swift_allocObject();
      v49 = 8;
      *(v55 + 16) = 8;
      v9 = swift_allocObject();
      v46 = v9;
      *(v9 + 16) = v70;
      *(v9 + 24) = 0;
      v10 = swift_allocObject();
      v11 = v46;
      v47 = v10;
      *(v10 + 16) = v71;
      *(v10 + 24) = v11;
      v12 = swift_allocObject();
      v13 = v47;
      v56 = v12;
      *(v12 + 16) = v72;
      *(v12 + 24) = v13;
      v57 = swift_allocObject();
      *(v57 + 16) = 64;
      v58 = swift_allocObject();
      *(v58 + 16) = v49;
      v14 = swift_allocObject();
      v15 = v52;
      v53 = v14;
      *(v14 + 16) = v73;
      *(v14 + 24) = v15;
      v16 = swift_allocObject();
      v17 = v53;
      v60 = v16;
      *(v16 + 16) = v74;
      *(v16 + 24) = v17;
      v62 = sub_10025C9B0(&unk_1006D7720);
      v59 = _allocateUninitializedArray<A>(_:)();
      v61 = v18;

      v19 = v54;
      v20 = v61;
      *v61 = v75;
      v20[1] = v19;

      v21 = v55;
      v22 = v61;
      v61[2] = v76;
      v22[3] = v21;

      v23 = v56;
      v24 = v61;
      v61[4] = v77;
      v24[5] = v23;

      v25 = v57;
      v26 = v61;
      v61[6] = v78;
      v26[7] = v25;

      v27 = v58;
      v28 = v61;
      v61[8] = v79;
      v28[9] = v27;

      v29 = v60;
      v30 = v61;
      v61[10] = v80;
      v30[11] = v29;
      sub_1002612B0();

      if (os_log_type_enabled(v63, v64))
      {
        v31 = v81;
        v34 = static UnsafeMutablePointer.allocate(capacity:)();
        v32[6] = sub_10025C9B0(&qword_1006D7290);
        v33 = 1;
        v35 = sub_1002641E8(1);
        v36 = sub_1002641E8(v33);
        v38 = &v99;
        v99 = v34;
        v39 = &v98;
        v98 = v35;
        v40 = &v97;
        v97 = v36;
        v37 = 2;
        sub_10026423C(2, &v99);
        sub_10026423C(v37, v38);
        v95 = v75;
        v96 = v54;
        sub_100264250(&v95, v38, v39, v40);
        v41 = v31;
        if (v31)
        {

          __break(1u);
        }

        else
        {
          v95 = v76;
          v96 = v55;
          sub_100264250(&v95, &v99, &v98, &v97);
          v32[4] = 0;
          v95 = v77;
          v96 = v56;
          sub_100264250(&v95, &v99, &v98, &v97);
          v32[3] = 0;
          v95 = v78;
          v96 = v57;
          sub_100264250(&v95, &v99, &v98, &v97);
          v32[2] = 0;
          v95 = v79;
          v96 = v58;
          sub_100264250(&v95, &v99, &v98, &v97);
          v32[1] = 0;
          v95 = v80;
          v96 = v60;
          sub_100264250(&v95, &v99, &v98, &v97);
          _os_log_impl(&_mh_execute_header, v63, v64, "<%s %@> [Quick Reply] Did update placeholder label", v34, 0x16u);
          v32[0] = 1;
          sub_10026429C(v35);
          sub_10026429C(v36);
          UnsafeMutablePointer.deallocate()();
        }
      }

      else
      {
      }

      _objc_release(v63);
      (*(v88 + 8))(v91, v87);
      _objc_release(v65);
    }

    else
    {
      _objc_release(v65);
    }
  }
}

void sub_1003F031C(void *a1, void (*a2)(void), uint64_t a3)
{
  v108 = a1;
  v102 = a2;
  v101 = a3;
  v87 = 0;
  v75 = sub_1003F780C;
  v76 = sub_1003EF3DC;
  v77 = sub_1003F77F0;
  v78 = sub_10026EE84;
  v79 = sub_10025E604;
  v80 = sub_100264354;
  v81 = sub_10026434C;
  v82 = sub_10026434C;
  v83 = sub_10026EF2C;
  v84 = sub_10026434C;
  v85 = sub_10026434C;
  v86 = sub_1002644E4;
  ObjectType = swift_getObjectType();
  v126 = 0;
  v124 = 0;
  v125 = 0;
  v123 = 0;
  v89 = 0;
  v116 = 0;
  v95 = 0;
  v90 = type metadata accessor for Logger();
  v91 = *(v90 - 8);
  v92 = v90 - 8;
  v93 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v94 = v39 - v93;
  v96 = type metadata accessor for DispatchWorkItemFlags();
  v97 = *(v96 - 8);
  v98 = v96 - 8;
  v99 = (*(v97 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v95);
  v100 = v39 - v99;
  v103 = type metadata accessor for DispatchQoS();
  v104 = *(v103 - 8);
  v105 = v103 - 8;
  v106 = (*(v104 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v108);
  v107 = v39 - v106;
  v126 = v4;
  v124 = v5;
  v125 = v6;
  v123 = v3;
  _objc_retain(v4);
  if (v108)
  {
    v73 = v108;
    v72 = v108;
    v116 = v108;
    v71 = *sub_1003EC364();
    _objc_retain(v71);
    _objc_retain(v72);
    _objc_retain(v74);

    v7 = swift_allocObject();
    v8 = v74;
    v9 = v102;
    v10 = v101;
    v11 = ObjectType;
    v12 = v75;
    v7[2] = v72;
    v7[3] = v8;
    v7[4] = v9;
    v7[5] = v10;
    v7[6] = v11;
    v114 = v12;
    v115 = v7;
    aBlock = _NSConcreteStackBlock;
    v110 = 1107296256;
    v111 = 0;
    v112 = sub_1002AEFF8;
    v113 = &unk_10065E270;
    v70 = _Block_copy(&aBlock);
    sub_100274F94();
    sub_100274FAC();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    (*(v97 + 8))(v100, v96);
    (*(v104 + 8))(v107, v103);
    _Block_release(v70);

    _objc_release(v71);
    _objc_release(v72);
  }

  else
  {
    v13 = v94;
    v49 = sub_1003EBD78();
    v50 = &v122;
    v55 = 32;
    swift_beginAccess();
    (*(v91 + 16))(v13, v49, v90);
    swift_endAccess();
    _objc_retain(v74);
    v56 = 7;
    v57 = swift_allocObject();
    *(v57 + 16) = v74;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    v53 = 17;
    v59 = swift_allocObject();
    *(v59 + 16) = 32;
    v60 = swift_allocObject();
    v54 = 8;
    *(v60 + 16) = 8;
    v14 = swift_allocObject();
    v51 = v14;
    *(v14 + 16) = v76;
    *(v14 + 24) = 0;
    v15 = swift_allocObject();
    v16 = v51;
    v52 = v15;
    *(v15 + 16) = v77;
    *(v15 + 24) = v16;
    v17 = swift_allocObject();
    v18 = v52;
    v61 = v17;
    *(v17 + 16) = v78;
    *(v17 + 24) = v18;
    v62 = swift_allocObject();
    *(v62 + 16) = 64;
    v63 = swift_allocObject();
    *(v63 + 16) = v54;
    v19 = swift_allocObject();
    v20 = v57;
    v58 = v19;
    *(v19 + 16) = v79;
    *(v19 + 24) = v20;
    v21 = swift_allocObject();
    v22 = v58;
    v65 = v21;
    *(v21 + 16) = v80;
    *(v21 + 24) = v22;
    v67 = sub_10025C9B0(&unk_1006D7720);
    v64 = _allocateUninitializedArray<A>(_:)();
    v66 = v23;

    v24 = v59;
    v25 = v66;
    *v66 = v81;
    v25[1] = v24;

    v26 = v60;
    v27 = v66;
    v66[2] = v82;
    v27[3] = v26;

    v28 = v61;
    v29 = v66;
    v66[4] = v83;
    v29[5] = v28;

    v30 = v62;
    v31 = v66;
    v66[6] = v84;
    v31[7] = v30;

    v32 = v63;
    v33 = v66;
    v66[8] = v85;
    v33[9] = v32;

    v34 = v65;
    v35 = v66;
    v66[10] = v86;
    v35[11] = v34;
    sub_1002612B0();

    if (os_log_type_enabled(v68, v69))
    {
      v36 = v89;
      v41 = static UnsafeMutablePointer.allocate(capacity:)();
      v39[7] = sub_10025C9B0(&qword_1006D7290);
      v40 = 1;
      v42 = sub_1002641E8(1);
      v43 = sub_1002641E8(v40);
      v45 = &v121;
      v121 = v41;
      v46 = &v120;
      v120 = v42;
      v47 = &v119;
      v119 = v43;
      v44 = 2;
      sub_10026423C(2, &v121);
      sub_10026423C(v44, v45);
      v117 = v81;
      v118 = v59;
      sub_100264250(&v117, v45, v46, v47);
      v48 = v36;
      if (v36)
      {

        __break(1u);
      }

      else
      {
        v117 = v82;
        v118 = v60;
        sub_100264250(&v117, &v121, &v120, &v119);
        v39[5] = 0;
        v117 = v83;
        v118 = v61;
        sub_100264250(&v117, &v121, &v120, &v119);
        v39[4] = 0;
        v117 = v84;
        v118 = v62;
        sub_100264250(&v117, &v121, &v120, &v119);
        v39[3] = 0;
        v117 = v85;
        v118 = v63;
        sub_100264250(&v117, &v121, &v120, &v119);
        v39[2] = 0;
        v117 = v86;
        v118 = v65;
        sub_100264250(&v117, &v121, &v120, &v119);
        _os_log_impl(&_mh_execute_header, v68, v69, "<%s %@> [Quick Reply] Message is nil, will use default placeholder label", v41, 0x16u);
        v39[1] = 1;
        sub_10026429C(v42);
        sub_10026429C(v43);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    _objc_release(v68);
    (*(v91 + 8))(v94, v90);

    v37 = sub_1003E82C0();
    v39[0] = v38;
    v102(v37);
  }
}

Swift::Void __swiftcall QuickReplyView.addComposeView(_:)(UIView a1)
{
  _objc_retain(a1.super.super.isa);
  v4 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_composeView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1.super.super.isa;
  _objc_release(v2);
  swift_endAccess();
  [(objc_class *)a1.super.super.isa setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = QuickReplyView.contentView.getter();
  [v5 addSubview:a1.super.super.isa];
  _objc_release(v5);
  v7 = QuickReplyView.contentView.getter();
  v6 = sub_1003EA324();
  [v7 bringSubviewToFront:?];
  _objc_release(v6);
  _objc_release(v7);
  v26 = objc_opt_self();
  sub_100293824();
  _allocateUninitializedArray<A>(_:)();
  v25 = v3;
  v10 = [(objc_class *)a1.super.super.isa leadingAnchor];
  v8 = sub_1003EA324();
  v9 = [v8 leadingAnchor];
  _objc_release(v8);
  v11 = [v10 constraintEqualToAnchor:v9];
  _objc_release(v9);
  _objc_release(v10);
  *v25 = v11;
  v14 = [(objc_class *)a1.super.super.isa trailingAnchor];
  v12 = sub_1003EB7B0();
  v13 = [v12 leadingAnchor];
  _objc_release(v12);
  v15 = [v14 constraintEqualToSystemSpacingAfterAnchor:v13 multiplier:-1.0];
  _objc_release(v13);
  _objc_release(v14);
  v25[1] = v15;
  v18 = [(objc_class *)a1.super.super.isa topAnchor];
  v16 = QuickReplyView.contentView.getter();
  v17 = [v16 topAnchor];
  _objc_release(v16);
  v19 = [v18 constraintEqualToAnchor:v17 constant:24.0];
  _objc_release(v17);
  _objc_release(v18);
  v25[2] = v19;
  v23 = [(objc_class *)a1.super.super.isa bottomAnchor];
  v21 = QuickReplyView.contentView.getter();
  v22 = [v21 bottomAnchor];
  _objc_release(v21);
  v24 = [v23 constraintEqualToAnchor:v22 constant:-24.0];
  _objc_release(v22);
  _objc_release(v23);
  v25[3] = v24;
  sub_1002612B0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v26 activateConstraints:isa];
  _objc_release(isa);
  v28 = sub_1003EBAD4();
  [v28 setEnabled:0];
  _objc_release(v28);
}

void sub_1003F1738(unsigned __int8 a1)
{
  v2 = sub_1003EA324();
  [v2 setHidden:(a1 ^ 1) & 1];
  _objc_release(v2);
}

void QuickReplyView.updateQuickReplySendButtonTopOffset(_:)(double a1)
{
  v8 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonTopConstraint);
  swift_beginAccess();
  v9 = *v8;
  _objc_retain(*v8);
  swift_endAccess();
  if (v9)
  {
    [v9 constant];
    if (v2 - a1 >= 0.0)
    {
      v5 = v2 - a1;
    }

    else
    {
      v5 = -(v2 - a1);
    }

    if (v5 >= 2.22044605e-16)
    {
      swift_beginAccess();
      swift_endAccess();
      sub_1002B18F8();
      max<A>(_:_:)();
      v4 = (v7 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonTopConstraint);
      swift_beginAccess();
      if (*v4)
      {
        v3 = *v4;
        _objc_retain(*v4);
        swift_endAccess();
        [v3 setConstant:v10];
        _objc_release(v3);
      }

      else
      {
        swift_endAccess();
      }
    }

    _objc_release(v9);
  }
}

void sub_1003F1AEC(void *a1, void (*a2)(id), double a3, double a4, double a5, double a6, uint64_t a7, void *a8, void *a9)
{
  _objc_retain(a1);
  if (a1)
  {
    sub_1002649B4();
    _objc_retain(a1);
    v21 = sub_10042A1CC(a1);
    _objc_retain(v21);
    [v21 setFrame:{a3, a4, a5, a6}];
    _objc_release(v21);
    sub_1003F7E94();
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    _objc_retain(v21);
    _objc_retain(a8);
    _objc_retain(a9);
    v20 = sub_1003F1D98(v21, a8, a9, UIEdgeInsetsZero.top, left, bottom, right);

    _objc_retain(v20);
    a2(v20);
    _objc_release(v20);

    _objc_release(v20);
    _objc_release(v21);
    _objc_release(a1);
  }

  else
  {

    a2(0);
  }
}

uint64_t sub_1003F1E10(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

UIView_optional __swiftcall QuickReplyView.contentViewSnapshot()()
{
  v9 = QuickReplyView.contentView.getter();
  v10 = [v9 snapshotViewAfterScreenUpdates:0];
  if (v10)
  {
    [v9 frame];
    [v10 setFrame:{v0, v1, v2, v3}];
    v6 = [v10 layer];
    [v6 setCornerRadius:12.0];
    _objc_release(v6);
    v7 = [v10 layer];
    _objc_retain(kCACornerCurveContinuous);
    [v7 setCornerCurve:kCACornerCurveContinuous];
    _objc_release(kCACornerCurveContinuous);
    _objc_release(v7);
    [v10 setClipsToBounds:1];
    sub_1003EDFB0(v10);
    _objc_release(v9);
    v8 = v10;
  }

  else
  {
    _objc_release(v9);
    v8 = 0;
  }

  v5 = v8;
  result.value.super.super.isa = v5;
  result.is_nil = v4;
  return result;
}

Swift::Void __swiftcall QuickReplyView.showSnapshot()()
{
  v62 = sub_1003EF3DC;
  v63 = sub_1003F77F0;
  v64 = sub_10026EE84;
  v65 = sub_10025E604;
  v66 = sub_100264354;
  v67 = sub_10026434C;
  v68 = sub_10026434C;
  v69 = sub_10026EF2C;
  v70 = sub_10026434C;
  v71 = sub_10026434C;
  v72 = sub_1002644E4;
  v88 = 0;
  v73 = 0;
  v81 = 0;
  v74 = type metadata accessor for Logger();
  v75 = *(v74 - 8);
  v76 = v74 - 8;
  v77 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v74);
  v78 = v26 - v77;
  v88 = v0;
  v79 = QuickReplyView.contentViewSnapshot()();
  if (v79)
  {
    v60 = v79;
    v59 = v79;
    v81 = v79;
    _objc_retain(v79);
    v57 = &v61[OBJC_IVAR____TtC10MobileMail14QuickReplyView_snapshot];
    v58 = &v80;
    swift_beginAccess();
    v1 = *v57;
    *v57 = v59;
    _objc_release(v1);
    swift_endAccess();
    [v61 addSubview:v59];
    _objc_release(v59);
  }

  else
  {
    v2 = v78;
    v36 = sub_1003EBD78();
    v37 = &v87;
    v42 = 32;
    swift_beginAccess();
    (*(v75 + 16))(v2, v36, v74);
    swift_endAccess();
    _objc_retain(v61);
    v43 = 7;
    v44 = swift_allocObject();
    *(v44 + 16) = v61;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    v40 = 17;
    v46 = swift_allocObject();
    *(v46 + 16) = 32;
    v47 = swift_allocObject();
    v41 = 8;
    *(v47 + 16) = 8;
    v3 = swift_allocObject();
    v38 = v3;
    *(v3 + 16) = v62;
    *(v3 + 24) = 0;
    v4 = swift_allocObject();
    v5 = v38;
    v39 = v4;
    *(v4 + 16) = v63;
    *(v4 + 24) = v5;
    v6 = swift_allocObject();
    v7 = v39;
    v48 = v6;
    *(v6 + 16) = v64;
    *(v6 + 24) = v7;
    v49 = swift_allocObject();
    *(v49 + 16) = 64;
    v50 = swift_allocObject();
    *(v50 + 16) = v41;
    v8 = swift_allocObject();
    v9 = v44;
    v45 = v8;
    *(v8 + 16) = v65;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v45;
    v52 = v10;
    *(v10 + 16) = v66;
    *(v10 + 24) = v11;
    v54 = sub_10025C9B0(&unk_1006D7720);
    v51 = _allocateUninitializedArray<A>(_:)();
    v53 = v12;

    v13 = v46;
    v14 = v53;
    *v53 = v67;
    v14[1] = v13;

    v15 = v47;
    v16 = v53;
    v53[2] = v68;
    v16[3] = v15;

    v17 = v48;
    v18 = v53;
    v53[4] = v69;
    v18[5] = v17;

    v19 = v49;
    v20 = v53;
    v53[6] = v70;
    v20[7] = v19;

    v21 = v50;
    v22 = v53;
    v53[8] = v71;
    v22[9] = v21;

    v23 = v52;
    v24 = v53;
    v53[10] = v72;
    v24[11] = v23;
    sub_1002612B0();

    if (os_log_type_enabled(v55, v56))
    {
      v25 = v73;
      v28 = static UnsafeMutablePointer.allocate(capacity:)();
      v26[7] = sub_10025C9B0(&qword_1006D7290);
      v27 = 1;
      v29 = sub_1002641E8(1);
      v30 = sub_1002641E8(v27);
      v32 = &v86;
      v86 = v28;
      v33 = &v85;
      v85 = v29;
      v34 = &v84;
      v84 = v30;
      v31 = 2;
      sub_10026423C(2, &v86);
      sub_10026423C(v31, v32);
      v82 = v67;
      v83 = v46;
      sub_100264250(&v82, v32, v33, v34);
      v35 = v25;
      if (v25)
      {

        __break(1u);
      }

      else
      {
        v82 = v68;
        v83 = v47;
        sub_100264250(&v82, &v86, &v85, &v84);
        v26[5] = 0;
        v82 = v69;
        v83 = v48;
        sub_100264250(&v82, &v86, &v85, &v84);
        v26[4] = 0;
        v82 = v70;
        v83 = v49;
        sub_100264250(&v82, &v86, &v85, &v84);
        v26[3] = 0;
        v82 = v71;
        v83 = v50;
        sub_100264250(&v82, &v86, &v85, &v84);
        v26[2] = 0;
        v82 = v72;
        v83 = v52;
        sub_100264250(&v82, &v86, &v85, &v84);
        _os_log_impl(&_mh_execute_header, v55, v56, "<%s %@> [Quick Reply] unable to show snapshot", v28, 0x16u);
        v26[1] = 1;
        sub_10026429C(v29);
        sub_10026429C(v30);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    _objc_release(v55);
    (*(v75 + 8))(v78, v74);
  }
}

double sub_1003F2D88()
{
  v76 = sub_1003EF3DC;
  v77 = sub_1003F77F0;
  v78 = sub_10026EE84;
  v79 = sub_10025E604;
  v80 = sub_100264354;
  v81 = sub_10026434C;
  v82 = sub_10026434C;
  v83 = sub_10026EF2C;
  v84 = sub_10026434C;
  v85 = sub_10026434C;
  v86 = sub_1002644E4;
  v108 = 0;
  v107 = 0.0;
  v87 = 0;
  v100 = 0.0;
  v99 = 0.0;
  v88 = type metadata accessor for Logger();
  v89 = *(v88 - 8);
  v90 = v88 - 8;
  v91 = (*(v89 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v88);
  v92 = v31 - v91;
  v108 = v0;
  v93 = sub_1003EA650();
  v94 = [(objc_class *)v93 imageView];
  _objc_release(v93);
  if (v94)
  {
    v74 = v94;
    v70 = v94;
    [v94 frame];
    v95 = v1;
    v96 = v2;
    v97 = v3;
    v98 = v4;
    v71 = v3;
    _objc_release(v70);
    v72 = v71;
    v73 = 0;
  }

  else
  {
    v72 = 0.0;
    v73 = 1;
  }

  v69 = v72;
  if (v73)
  {
    v6 = v92;
    v41 = sub_1003EBD78();
    v42 = &v106;
    v47 = 32;
    swift_beginAccess();
    (*(v89 + 16))(v6, v41, v88);
    swift_endAccess();
    _objc_retain(v75);
    v48 = 7;
    v49 = swift_allocObject();
    *(v49 + 16) = v75;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    v45 = 17;
    v51 = swift_allocObject();
    *(v51 + 16) = 32;
    v52 = swift_allocObject();
    v46 = 8;
    *(v52 + 16) = 8;
    v7 = swift_allocObject();
    v43 = v7;
    *(v7 + 16) = v76;
    *(v7 + 24) = 0;
    v8 = swift_allocObject();
    v9 = v43;
    v44 = v8;
    *(v8 + 16) = v77;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v44;
    v53 = v10;
    *(v10 + 16) = v78;
    *(v10 + 24) = v11;
    v54 = swift_allocObject();
    *(v54 + 16) = 64;
    v55 = swift_allocObject();
    *(v55 + 16) = v46;
    v12 = swift_allocObject();
    v13 = v49;
    v50 = v12;
    *(v12 + 16) = v79;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v50;
    v57 = v14;
    *(v14 + 16) = v80;
    *(v14 + 24) = v15;
    v59 = sub_10025C9B0(&unk_1006D7720);
    v56 = _allocateUninitializedArray<A>(_:)();
    v58 = v16;

    v17 = v51;
    v18 = v58;
    *v58 = v81;
    v18[1] = v17;

    v19 = v52;
    v20 = v58;
    v58[2] = v82;
    v20[3] = v19;

    v21 = v53;
    v22 = v58;
    v58[4] = v83;
    v22[5] = v21;

    v23 = v54;
    v24 = v58;
    v58[6] = v84;
    v24[7] = v23;

    v25 = v55;
    v26 = v58;
    v58[8] = v85;
    v26[9] = v25;

    v27 = v57;
    v28 = v58;
    v58[10] = v86;
    v28[11] = v27;
    sub_1002612B0();

    if (os_log_type_enabled(v60, v61))
    {
      v29 = v87;
      v33 = static UnsafeMutablePointer.allocate(capacity:)();
      v31[6] = sub_10025C9B0(&qword_1006D7290);
      v32 = 1;
      v34 = sub_1002641E8(1);
      v35 = sub_1002641E8(v32);
      v37 = &v105;
      v105 = v33;
      v38 = &v104;
      v104 = v34;
      v39 = &v103;
      v103 = v35;
      v36 = 2;
      sub_10026423C(2, &v105);
      sub_10026423C(v36, v37);
      v101 = v81;
      v102 = v51;
      sub_100264250(&v101, v37, v38, v39);
      v40 = v29;
      if (v29)
      {

        __break(1u);
      }

      else
      {
        v101 = v82;
        v102 = v52;
        sub_100264250(&v101, &v105, &v104, &v103);
        v31[4] = 0;
        v101 = v83;
        v102 = v53;
        sub_100264250(&v101, &v105, &v104, &v103);
        v31[3] = 0;
        v101 = v84;
        v102 = v54;
        sub_100264250(&v101, &v105, &v104, &v103);
        v31[2] = 0;
        v101 = v85;
        v102 = v55;
        sub_100264250(&v101, &v105, &v104, &v103);
        v31[1] = 0;
        v101 = v86;
        v102 = v57;
        sub_100264250(&v101, &v105, &v104, &v103);
        _os_log_impl(&_mh_execute_header, v60, v61, "<%s %@> [Quick Reply] Incorrect send button horizontal placement", v33, 0x16u);
        v31[0] = 1;
        sub_10026429C(v34);
        sub_10026429C(v35);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    _objc_release(v60);
    (*(v89 + 8))(v92, v88);
    return 0.0;
  }

  else
  {
    v68 = v69;
    v67 = v69;
    v107 = v69;
    if (v69 <= 0.0)
    {
      v66 = 22.0;
    }

    else
    {
      v66 = v67;
    }

    v107 = v66;
    v62 = (*&v75[OBJC_IVAR____TtC10MobileMail14QuickReplyView_buttonHeightWidth] - v66) / 2.0;
    v100 = v62;
    _objc_retain(v75);
    v63 = v75;
    UIRoundToViewScale();
    v64 = v5;
    _objc_release(v63);
    v99 = v64;
    return v64;
  }
}

unint64_t sub_1003F3A18()
{
  v2 = qword_1006DB880;
  if (!qword_1006DB880)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DB880);
    return ObjCClassMetadata;
  }

  return v2;
}

void sub_1003F3AC4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v265 = a1;
  v264 = a2;
  v262 = a3;
  v263 = a4;
  v232 = a5;
  v233 = sub_1003F7BC0;
  v234 = sub_1003F5BD8;
  v235 = sub_1003F5BD8;
  v236 = sub_1003F5C50;
  v237 = sub_1003F7B3C;
  v238 = sub_1003EF3DC;
  v239 = sub_1003F77F0;
  v240 = sub_10026EE84;
  v241 = sub_10025E604;
  v242 = sub_100264354;
  v243 = sub_10026434C;
  v244 = sub_10026434C;
  v245 = sub_10026EF2C;
  v246 = sub_10026434C;
  v247 = sub_10026434C;
  v248 = sub_1002644E4;
  v249 = sub_1003F7A40;
  v345 = 0;
  v344 = 0;
  v342 = 0;
  v343 = 0;
  v250 = 0;
  v328 = 0;
  v327 = 0;
  v325 = 0;
  v324 = 0;
  v322 = 0;
  v319 = 0;
  v316 = 0;
  v308 = 0;
  v303 = 0;
  v298 = 0;
  v297 = 0;
  v296 = 0;
  v280 = 0;
  v256 = 0;
  v251 = type metadata accessor for Logger();
  v252 = *(v251 - 8);
  v253 = v251 - 8;
  v254 = (*(v252 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v255 = v64 - v254;
  v257 = type metadata accessor for DispatchWorkItemFlags();
  v258 = *(v257 - 8);
  v259 = v257 - 8;
  v260 = (*(v258 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v256);
  v261 = v64 - v260;
  v266 = type metadata accessor for DispatchQoS();
  v267 = *(v266 - 8);
  v268 = v266 - 8;
  v269 = (*(v267 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v265);
  v270 = v64 - v269;
  v345 = v5;
  v344 = v6;
  v342 = v7;
  v343 = v8;
  v271 = [v5 headers];
  if (v271)
  {
    v231 = v271;
    v228 = v271;
    v229 = [v271 copyAddressListForReplyTo];
    _objc_release(v228);
    if (v229)
    {
      v227 = v229;
      v224 = v229;
      v225 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      _objc_release(v224);
      v226 = v225;
    }

    else
    {
      v226 = 0;
    }

    v230 = v226;
  }

  else
  {
    v230 = 0;
  }

  v223 = v230;
  if (v230)
  {
    v222 = v223;
    v220 = v223;
    v280 = v223;
    v279 = v223;
    v221 = sub_10025C9B0(&unk_1006D69B0);
    sub_1002B76F0();
    v9 = Collection.isEmpty.getter();
    if ((v9 & 1) == 0)
    {
      v217 = 0;
      sub_100272A48();
      v219 = static OS_dispatch_queue.main.getter();
      v215 = 7;
      v216 = swift_allocObject();
      v214 = v216 + 16;
      _objc_retain(v264);
      swift_unknownObjectWeakInit();
      _objc_release(v264);

      v10 = swift_allocObject();
      v11 = v262;
      v12 = v263;
      v13 = v232;
      v14 = v233;
      v15 = v10;
      v16 = v216;
      v15[2] = v220;
      v15[3] = v16;
      v15[4] = v11;
      v15[5] = v12;
      v15[6] = v13;
      v277 = v14;
      v278 = v15;
      v272 = _NSConcreteStackBlock;
      v273 = 1107296256;
      v274 = 0;
      v275 = sub_1002AEFF8;
      v276 = &unk_10065E9E8;
      v218 = _Block_copy(&v272);

      sub_100274F94();
      sub_100274FAC();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      (*(v258 + 8))(v261, v257);
      (*(v267 + 8))(v270, v266);
      _Block_release(v218);
      _objc_release(v219);

      return;
    }
  }

  sub_1002644F0();
  v212 = [v265 preferredEmailAddressToReplyWith];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v213 = sub_1003F5B90();
  _objc_release(v212);
  if (v213)
  {
    v211 = v213;
    v17 = v250;
    v202 = v213;
    v328 = v213;
    v203 = [v265 to];
    v204 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v327 = v204;
    _objc_release(v203);
    v326 = v204;
    v205 = sub_10025C9B0(&unk_1006D69B0);
    v206 = sub_10025C9B0(&qword_1006DB930);
    v208 = sub_1002B76F0();
    v18 = sub_10025E9D8(v234, 0, v205, v206, &type metadata for Never, v208, &protocol witness table for Never, v207);
    v209 = v17;
    v210 = v18;
    if (v17)
    {
      __break(1u);
      __break(1u);
    }

    else
    {
      v197 = v210;
      v325 = v210;
      v198 = [v265 from];
      v199 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v324 = v199;
      _objc_release(v198);
      v323 = v199;
      v19 = sub_10025E9D8(v235, 0, v205, v206, &type metadata for Never, v208, &protocol witness table for Never, v207);
      v200 = 0;
      v201 = v19;
      v195 = v19;
      v322 = v19;
      v196 = [v265 bcc];
      if (v196)
      {
        v194 = v196;
        v191 = v196;
        v192 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        _objc_release(v191);
        v193 = v192;
      }

      else
      {
        v193 = 0;
      }

      v320 = v193;
      if (v193)
      {
        v321 = v320;
      }

      else
      {
        v321 = _allocateUninitializedArray<A>(_:)();
        if (v320)
        {
          sub_100264880();
        }
      }

      v189 = v321;
      v319 = v321;
      v190 = [v265 cc];
      if (v190)
      {
        v188 = v190;
        v185 = v190;
        v186 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        _objc_release(v185);
        v187 = v186;
      }

      else
      {
        v187 = 0;
      }

      v317 = v187;
      if (v187)
      {
        v318 = v317;
      }

      else
      {
        v318 = _allocateUninitializedArray<A>(_:)();
        if (v317)
        {
          sub_100264880();
        }
      }

      v20 = v200;
      v184 = v318;
      v316 = v318;
      v314 = v204;
      Collection.first.getter();
      v310 = v312;
      v311 = v313;
      v21 = sub_10025C9B0(&unk_1006D7340);
      sub_10026A250(v236, 0, v21, &type metadata for Never, &type metadata for Bool, v207, &v315);
      if (!v20)
      {
        sub_100268744();
        v309 = v315;
        if (v315 == 2)
        {
          v183 = 0;
        }

        else
        {
          v183 = v309;
        }

        v179 = v183;
        v308 = v183 & 1;
        v307 = v195;
        v180 = sub_10025C9B0(&qword_1006DB938);
        v181 = sub_1003F7AB4();
        Collection.first.getter();
        v182 = v306;
        if (v306 == 1 || (v178 = v182, (v177 = v178) == 0))
        {
          v166 = 0;
          v167 = 0;
        }

        else
        {
          v176 = v177;
          v174 = v177;
          v22 = [v177 simpleAddress];
          v175 = v22;
          if (v22)
          {
            v173 = v175;
            v168 = v175;
            v169 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v170 = v23;
            _objc_release(v168);
            v171 = v169;
            v172 = v170;
          }

          else
          {
            v171 = 0;
            v172 = 0;
          }

          v165 = v172;
          v164 = v171;
          _objc_release(v174);
          v166 = v164;
          v167 = v165;
        }

        v161 = v167;
        v162 = v166;

        v163 = [v202 simpleAddress];
        if (v163)
        {
          v160 = v163;
          v157 = v163;
          *&v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(&v158 + 1) = v24;
          _objc_release(v157);
          v159 = v158;
        }

        else
        {
          v159 = 0uLL;
        }

        v156 = v159;

        v304[0] = v162;
        v304[1] = v161;
        v305 = v156;
        if (v161)
        {
          sub_100268860(v304, &v283);
          if (*(&v305 + 1))
          {
            v153 = &v282;
            v282 = v283;
            v152 = &v281;
            v281 = v305;
            v154 = static String.== infix(_:_:)();
            sub_100268744();
            sub_100268744();
            sub_100268744();
            v155 = v154;
LABEL_56:
            v150 = v155;

            v303 = v150 & 1;
            v302 = v197;
            Collection.first.getter();
            v151 = v301;
            if (v301 == 1 || (v149 = v151, (v148 = v149) == 0))
            {
              v137 = 0;
              v138 = 0;
            }

            else
            {
              v147 = v148;
              v145 = v148;
              v25 = [v148 simpleAddress];
              v146 = v25;
              if (v25)
              {
                v144 = v146;
                v139 = v146;
                v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v141 = v26;
                _objc_release(v139);
                v142 = v140;
                v143 = v141;
              }

              else
              {
                v142 = 0;
                v143 = 0;
              }

              v136 = v143;
              v135 = v142;
              _objc_release(v145);
              v137 = v135;
              v138 = v136;
            }

            v132 = v138;
            v133 = v137;

            v134 = [v202 simpleAddress];
            if (v134)
            {
              v131 = v134;
              v128 = v134;
              *&v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(&v129 + 1) = v27;
              _objc_release(v128);
              v130 = v129;
            }

            else
            {
              v130 = 0uLL;
            }

            v127 = v130;

            v299[0] = v133;
            v299[1] = v132;
            v300 = v127;
            if (v132)
            {
              sub_100268860(v299, &v286);
              if (*(&v300 + 1))
              {
                v124 = &v285;
                v285 = v286;
                v123 = &v284;
                v284 = v300;
                v125 = static String.== infix(_:_:)();
                sub_100268744();
                sub_100268744();
                sub_100268744();
                v126 = v125;
LABEL_77:
                v121 = v126;

                v298 = v121 & 1;
                v122 = Array.count.getter();

                v120 = v122 == 1 && Array.count.getter() == 1;
                v119 = v120;

                if (v119)
                {
                  if (v150)
                  {
                    v118 = 1;
                  }

                  else
                  {
                    v118 = v121;
                  }

                  if (v118)
                  {
                    v117 = 1;
                  }

                  else
                  {
                    v117 = v179;
                  }

                  v116 = v117;
                }

                else
                {
                  v116 = 0;
                }

                v115 = v116;

                if (v115)
                {
                  v287 = v184;
                  v114 = Collection.isEmpty.getter();
                }

                else
                {
                  v114 = 0;
                }

                v113 = v114;

                if (v113)
                {
                  v288 = v189;
                  v112 = Collection.isEmpty.getter();
                }

                else
                {
                  v112 = 0;
                }

                v111 = v112;

                v297 = v111 & 1;
                if (v150)
                {

                  v110 = v204;
                }

                else
                {

                  v110 = v199;
                }

                v109 = v110;
                v296 = v110;
                v106 = 0;
                sub_100272A48();
                v108 = static OS_dispatch_queue.main.getter();
                v104 = 7;
                v105 = swift_allocObject();
                v103 = v105 + 16;
                _objc_retain(v264);
                swift_unknownObjectWeakInit();
                _objc_release(v264);

                v28 = swift_allocObject();
                v29 = v262;
                v30 = v263;
                v31 = v232;
                v32 = v237;
                v33 = v109;
                v34 = v28;
                v35 = v105;
                *(v34 + 16) = v111 & 1;
                *(v34 + 24) = v35;
                *(v34 + 32) = v33;
                *(v34 + 40) = v29;
                *(v34 + 48) = v30;
                *(v34 + 56) = v31;
                v294 = v32;
                v295 = v34;
                v289 = _NSConcreteStackBlock;
                v290 = 1107296256;
                v291 = 0;
                v292 = sub_1002AEFF8;
                v293 = &unk_10065E998;
                v107 = _Block_copy(&v289);

                sub_100274F94();
                sub_100274FAC();
                OS_dispatch_queue.async(group:qos:flags:execute:)();
                (*(v258 + 8))(v261, v257);
                (*(v267 + 8))(v270, v266);
                _Block_release(v107);
                _objc_release(v108);

                _objc_release(v202);
                return;
              }

              sub_100268744();
            }

            else if (!*(&v300 + 1))
            {
              sub_100268744();
              v126 = 1;
              goto LABEL_77;
            }

            sub_100268828();
            v126 = 0;
            goto LABEL_77;
          }

          sub_100268744();
        }

        else if (!*(&v305 + 1))
        {
          sub_100268744();
          v155 = 1;
          goto LABEL_56;
        }

        sub_100268828();
        v155 = 0;
        goto LABEL_56;
      }
    }

    __break(1u);
    return;
  }

  v36 = v255;
  v82 = sub_1003EBD78();
  v83 = &v341;
  v88 = 32;
  swift_beginAccess();
  (*(v252 + 16))(v36, v82, v251);
  swift_endAccess();
  _objc_retain(v264);
  v89 = 7;
  v90 = swift_allocObject();
  *(v90 + 16) = v264;
  v101 = Logger.logObject.getter();
  v102 = static os_log_type_t.default.getter();
  v86 = 17;
  v92 = swift_allocObject();
  *(v92 + 16) = 32;
  v93 = swift_allocObject();
  v87 = 8;
  *(v93 + 16) = 8;
  v37 = swift_allocObject();
  v84 = v37;
  *(v37 + 16) = v238;
  *(v37 + 24) = 0;
  v38 = swift_allocObject();
  v39 = v84;
  v85 = v38;
  *(v38 + 16) = v239;
  *(v38 + 24) = v39;
  v40 = swift_allocObject();
  v41 = v85;
  v94 = v40;
  *(v40 + 16) = v240;
  *(v40 + 24) = v41;
  v95 = swift_allocObject();
  *(v95 + 16) = 64;
  v96 = swift_allocObject();
  *(v96 + 16) = v87;
  v42 = swift_allocObject();
  v43 = v90;
  v91 = v42;
  *(v42 + 16) = v241;
  *(v42 + 24) = v43;
  v44 = swift_allocObject();
  v45 = v91;
  v98 = v44;
  *(v44 + 16) = v242;
  *(v44 + 24) = v45;
  v100 = sub_10025C9B0(&unk_1006D7720);
  v97 = _allocateUninitializedArray<A>(_:)();
  v99 = v46;

  v47 = v92;
  v48 = v99;
  *v99 = v243;
  v48[1] = v47;

  v49 = v93;
  v50 = v99;
  v99[2] = v244;
  v50[3] = v49;

  v51 = v94;
  v52 = v99;
  v99[4] = v245;
  v52[5] = v51;

  v53 = v95;
  v54 = v99;
  v99[6] = v246;
  v54[7] = v53;

  v55 = v96;
  v56 = v99;
  v99[8] = v247;
  v56[9] = v55;

  v57 = v98;
  v58 = v99;
  v99[10] = v248;
  v58[11] = v57;
  sub_1002612B0();

  if (os_log_type_enabled(v101, v102))
  {
    v59 = v250;
    v74 = static UnsafeMutablePointer.allocate(capacity:)();
    v72 = sub_10025C9B0(&qword_1006D7290);
    v73 = 1;
    v75 = sub_1002641E8(1);
    v76 = sub_1002641E8(v73);
    v78 = &v333;
    v333 = v74;
    v79 = &v332;
    v332 = v75;
    v80 = &v331;
    v331 = v76;
    v77 = 2;
    sub_10026423C(2, &v333);
    sub_10026423C(v77, v78);
    v329 = v243;
    v330 = v92;
    sub_100264250(&v329, v78, v79, v80);
    v81 = v59;
    if (v59)
    {

      __break(1u);
    }

    else
    {
      v329 = v244;
      v330 = v93;
      sub_100264250(&v329, &v333, &v332, &v331);
      v71 = 0;
      v329 = v245;
      v330 = v94;
      sub_100264250(&v329, &v333, &v332, &v331);
      v70 = 0;
      v329 = v246;
      v330 = v95;
      sub_100264250(&v329, &v333, &v332, &v331);
      v69 = 0;
      v329 = v247;
      v330 = v96;
      sub_100264250(&v329, &v333, &v332, &v331);
      v68 = 0;
      v329 = v248;
      v330 = v98;
      sub_100264250(&v329, &v333, &v332, &v331);
      _os_log_impl(&_mh_execute_header, v101, v102, "<%s %@> [Quick Reply] Preferred email address is nil, will use default placeholder label", v74, 0x16u);
      v67 = 1;
      sub_10026429C(v75);
      sub_10026429C(v76);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v101);
  (*(v252 + 8))(v255, v251);
  v64[1] = 0;
  sub_100272A48();
  v66 = static OS_dispatch_queue.main.getter();

  v60 = swift_allocObject();
  v61 = v263;
  v62 = v232;
  v63 = v249;
  v60[2] = v262;
  v60[3] = v61;
  v60[4] = v62;
  v339 = v63;
  v340 = v60;
  aBlock = _NSConcreteStackBlock;
  v335 = 1107296256;
  v336 = 0;
  v337 = sub_1002AEFF8;
  v338 = &unk_10065E948;
  v65 = _Block_copy(&aBlock);

  sub_100274F94();
  sub_100274FAC();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  (*(v258 + 8))(v261, v257);
  (*(v267 + 8))(v270, v266);
  _Block_release(v65);
  _objc_release(v66);
}

void sub_1003F578C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v16[7] = a1;
  v16[6] = (a2 + 16);
  v16[4] = a3;
  v16[5] = a4;
  if (Array.count.getter() != 1)
  {
    goto LABEL_11;
  }

  swift_beginAccess();
  v16[0] = swift_unknownObjectWeakLoadStrong();
  if (v16[0])
  {
    v13 = v16[0];
    _objc_retain(v16[0]);
    sub_10026A58C(v16);
    swift_endAccess();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      swift_unknownObjectRetain();
      sub_100294754();
      swift_endAccess();
      _objc_release(v13);
      swift_getObjectType();

      sub_1003F7C3C();
      _arrayForceCast<A, B>(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;

      v11 = [Strong displayNameForAddresses:isa];
      _objc_release(isa);
      swift_unknownObjectRelease();
      v12 = v11;
      goto LABEL_7;
    }

    sub_100294754();
    swift_endAccess();
    _objc_release(v13);
  }

  else
  {
    sub_10026A58C(v16);
    swift_endAccess();
  }

  v12 = 0;
LABEL_7:
  if (v12)
  {

    sub_1003EBFD0();
    sub_10025C9B0(&qword_1006DB0A8);
    _allocateUninitializedArray<A>(_:)();
    v7 = v4;
    _objc_retain(v12);
    v7[3] = sub_1003F7C3C();
    v7[4] = sub_1003F7CA0();
    *v7 = v12;
    sub_1002612B0();
    v8 = String.init(format:_:)();
    v9 = v5;

    (a3)(v8, v9);

    _objc_release(v12);
    return;
  }

LABEL_11:

  v6 = sub_1003E82C0();
  (a3)(v6);
}

uint64_t sub_1003F5B18(void (*a1)(uint64_t))
{

  v1 = sub_1003E82C0();
  a1(v1);
}

id sub_1003F5BD8@<X0>(void *a1@<X8>)
{
  sub_1002644F0();

  result = sub_1003F5B90();
  *a1 = result;
  return result;
}

uint64_t sub_1003F5C50@<X0>(_BYTE *a1@<X8>)
{
  v2 = objc_opt_self();

  v3 = String._bridgeToObjectiveC()();

  v5 = [v2 addressIsEmptyGroup:v3];
  _objc_release(v3);
  result = v5;
  *a1 = v5;
  return result;
}

void sub_1003F5D08(char a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v18 = a1 & 1;
  v17[7] = (a2 + 16);
  v17[6] = a3;
  v17[4] = a4;
  v17[5] = a5;
  if ((a1 & 1) == 0)
  {
    goto LABEL_11;
  }

  swift_beginAccess();
  v17[0] = swift_unknownObjectWeakLoadStrong();
  if (v17[0])
  {
    v14 = v17[0];
    _objc_retain(v17[0]);
    sub_10026A58C(v17);
    swift_endAccess();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      swift_unknownObjectRetain();
      sub_100294754();
      swift_endAccess();
      _objc_release(v14);
      swift_getObjectType();

      sub_1003F7C3C();
      _arrayForceCast<A, B>(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;

      v12 = [Strong displayNameForAddresses:isa];
      _objc_release(isa);
      swift_unknownObjectRelease();
      v13 = v12;
      goto LABEL_7;
    }

    sub_100294754();
    swift_endAccess();
    _objc_release(v14);
  }

  else
  {
    sub_10026A58C(v17);
    swift_endAccess();
  }

  v13 = 0;
LABEL_7:
  if (v13)
  {

    sub_1003EBFD0();
    sub_10025C9B0(&qword_1006DB0A8);
    _allocateUninitializedArray<A>(_:)();
    v8 = v5;
    _objc_retain(v13);
    v8[3] = sub_1003F7C3C();
    v8[4] = sub_1003F7CA0();
    *v8 = v13;
    sub_1002612B0();
    v9 = String.init(format:_:)();
    v10 = v6;

    (a4)(v9, v10);

    _objc_release(v13);
    return;
  }

LABEL_11:

  v7 = sub_1003E82C0();
  (a4)(v7);
}

void sub_1003F6090(uint64_t a1)
{
  v78 = a1;
  v77 = 0;
  v65 = sub_1003EF3DC;
  v66 = sub_1003F77F0;
  v67 = sub_10026EE84;
  v68 = sub_10025E604;
  v69 = sub_100264354;
  v70 = sub_10026434C;
  v71 = sub_10026434C;
  v72 = sub_10026EF2C;
  v73 = sub_10026434C;
  v74 = sub_10026434C;
  v75 = sub_1002644E4;
  v94 = 0;
  v93 = 0;
  v76 = 0;
  v85 = 0;
  v79 = type metadata accessor for Logger();
  v80 = *(v79 - 8);
  v81 = v79 - 8;
  v82 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v83 = v26 - v82;
  v94 = __chkstk_darwin(v78);
  v93 = v1;
  v84 = v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    p_Strong = &Strong;
    v61 = Strong;
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    v62 = [v61 mailComposeViewForQuickReplyView:v64];
    swift_unknownObjectRelease();
    v63 = v62;
  }

  else
  {
    sub_100294754();
    swift_endAccess();
    v63 = 0;
  }

  v59.super.super.isa = v63;
  if (v63)
  {
    isa = v59.super.super.isa;
    v57 = v59.super.super.isa;
    v85 = v59.super.super.isa;
    QuickReplyView.addComposeView(_:)(v59);
    _objc_release(v57);
  }

  else
  {
    v2 = v83;
    v36 = sub_1003EBD78();
    v37 = &v91;
    v42 = 32;
    swift_beginAccess();
    (*(v80 + 16))(v2, v36, v79);
    swift_endAccess();
    _objc_retain(v64);
    v43 = 7;
    v44 = swift_allocObject();
    *(v44 + 16) = v64;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    v40 = 17;
    v46 = swift_allocObject();
    *(v46 + 16) = 32;
    v47 = swift_allocObject();
    v41 = 8;
    *(v47 + 16) = 8;
    v3 = swift_allocObject();
    v38 = v3;
    *(v3 + 16) = v65;
    *(v3 + 24) = 0;
    v4 = swift_allocObject();
    v5 = v38;
    v39 = v4;
    *(v4 + 16) = v66;
    *(v4 + 24) = v5;
    v6 = swift_allocObject();
    v7 = v39;
    v48 = v6;
    *(v6 + 16) = v67;
    *(v6 + 24) = v7;
    v49 = swift_allocObject();
    *(v49 + 16) = 64;
    v50 = swift_allocObject();
    *(v50 + 16) = v41;
    v8 = swift_allocObject();
    v9 = v44;
    v45 = v8;
    *(v8 + 16) = v68;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v45;
    v52 = v10;
    *(v10 + 16) = v69;
    *(v10 + 24) = v11;
    v54 = sub_10025C9B0(&unk_1006D7720);
    v51 = _allocateUninitializedArray<A>(_:)();
    v53 = v12;

    v13 = v46;
    v14 = v53;
    *v53 = v70;
    v14[1] = v13;

    v15 = v47;
    v16 = v53;
    v53[2] = v71;
    v16[3] = v15;

    v17 = v48;
    v18 = v53;
    v53[4] = v72;
    v18[5] = v17;

    v19 = v49;
    v20 = v53;
    v53[6] = v73;
    v20[7] = v19;

    v21 = v50;
    v22 = v53;
    v53[8] = v74;
    v22[9] = v21;

    v23 = v52;
    v24 = v53;
    v53[10] = v75;
    v24[11] = v23;
    sub_1002612B0();

    if (os_log_type_enabled(v55, v56))
    {
      v25 = v76;
      v28 = static UnsafeMutablePointer.allocate(capacity:)();
      v26[6] = sub_10025C9B0(&qword_1006D7290);
      v27 = 1;
      v29 = sub_1002641E8(1);
      v30 = sub_1002641E8(v27);
      v32 = &v90;
      v90 = v28;
      v33 = &v89;
      v89 = v29;
      v34 = &v88;
      v88 = v30;
      v31 = 2;
      sub_10026423C(2, &v90);
      sub_10026423C(v31, v32);
      v86 = v70;
      v87 = v46;
      sub_100264250(&v86, v32, v33, v34);
      v35 = v25;
      if (v25)
      {

        __break(1u);
      }

      else
      {
        v86 = v71;
        v87 = v47;
        sub_100264250(&v86, &v90, &v89, &v88);
        v26[4] = 0;
        v86 = v72;
        v87 = v48;
        sub_100264250(&v86, &v90, &v89, &v88);
        v26[3] = 0;
        v86 = v73;
        v87 = v49;
        sub_100264250(&v86, &v90, &v89, &v88);
        v26[2] = 0;
        v86 = v74;
        v87 = v50;
        sub_100264250(&v86, &v90, &v89, &v88);
        v26[1] = 0;
        v86 = v75;
        v87 = v52;
        sub_100264250(&v86, &v90, &v89, &v88);
        _os_log_impl(&_mh_execute_header, v55, v56, "<%s %@> [Quick Reply] Failed to create a compose view", v28, 0x16u);
        v26[0] = 1;
        sub_10026429C(v29);
        sub_10026429C(v30);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    _objc_release(v55);
    (*(v80 + 8))(v83, v79);
  }
}

void sub_1003F6CE8()
{
  swift_getObjectType();
  static QuickReplyView.defaultHeight.getter();
  _objc_retain(v0);
  UIRoundToViewScale();
  v6 = v1;
  _objc_release(v0);
  v5 = &v0[OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonDefaultTopOffset];
  swift_beginAccess();
  *v5 = v6;
  swift_endAccess();
  v7 = OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonTopConstraint;
  v8 = &v0[OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonTopConstraint];
  swift_beginAccess();
  if (*v8)
  {
    v4 = *&v0[v7];
    _objc_retain(v4);
    swift_endAccess();
    v2 = &v0[OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonDefaultTopOffset];
    swift_beginAccess();
    v3 = *v2;
    swift_endAccess();
    [v4 setConstant:v3];
    _objc_release(v4);
  }

  else
  {
    swift_endAccess();
  }
}

UIPointerStyle_optional __swiftcall QuickReplyView.pointerInteraction(_:styleFor:)(UIPointerInteraction _, UIPointerRegion styleFor)
{
  isa = _.super.isa;
  v12[1] = styleFor.super.isa;
  v12[0] = v2;
  swift_getObjectType();
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v26 = 0.0;
  v16 = 0;
  v21 = type metadata accessor for UIPointerShape();
  v19 = *(v21 - 8);
  v20 = v21 - 8;
  v14 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = (v12 - v14);
  v32 = __chkstk_darwin(isa);
  v31 = v3;
  v30 = v4;
  v15 = sub_1003E82C0();
  v24 = v5;
  v28 = v15;
  v29 = v5;
  v23 = *sub_1003E83AC();
  _objc_retain(v23);
  v27 = v23;
  String.height(width:font:)();
  v17 = v6;
  static QuickReply.additionalWebViewPadding.getter();
  v18 = v17 + v7;
  v26 = v17 + v7;
  sub_1003F7890();
  v8 = v19;
  v9 = v22;
  *v22 = v18;
  (*(v8 + 104))(v9, enum case for UIPointerShape.verticalBeam(_:));
  sub_1003F73E8();
  v25 = UIPointerStyle.init(shape:constrainedAxes:)();
  _objc_release(v23);

  v11 = v25;
  result.value.super.super.isa = v11;
  result.is_nil = v10;
  return result;
}

uint64_t sub_1003F73E8()
{
  sub_1003F7710(0);

  return 0;
}

id sub_1003F74D4(void *a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v12 = [v7 initWithInsets:a1 cornerRadius:a4 compositionSnapshot:a5 buttonsSnapshot:a6 backgroundSnapshot:a7];
  _objc_release(a3);
  _objc_release(a2);
  _objc_release(a1);
  return v12;
}

id sub_1003F7574()
{
  v2 = [v0 initWithDelegate:?];
  swift_unknownObjectRelease();
  return v2;
}

id sub_1003F75BC()
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithString:?];
  _objc_release(v2);

  return v3;
}

uint64_t sub_1003F7620(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      type metadata accessor for OS_dispatch_queue.Attributes();
      v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = &_swiftEmptyArrayStorage;
    }

    type metadata accessor for OS_dispatch_queue.Attributes();
    return v2;
  }

  return result;
}

unint64_t sub_1003F7710(unint64_t result)
{
  v3 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return &_swiftEmptyArrayStorage;
    }

    type metadata accessor for UIAxis();
    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t sub_1003F7824(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1003F7890()
{
  v2 = qword_1006DB890;
  if (!qword_1006DB890)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DB890);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1003F790C()
{
  v2 = qword_1006DB898;
  if (!qword_1006DB898)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB898);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003F79C4()
{
  v2 = qword_1006DB928;
  if (!qword_1006DB928)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB928);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003F7A50(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1003F7AB4()
{
  v2 = qword_1006DB940;
  if (!qword_1006DB940)
  {
    sub_10025CAA4(&qword_1006DB938);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB940);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003F7B5C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1003F7BD8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1003F7C3C()
{
  v2 = qword_1006DB950;
  if (!qword_1006DB950)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DB950);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1003F7CA0()
{
  v2 = qword_1006DB958;
  if (!qword_1006DB958)
  {
    sub_1003F7C3C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB958);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003F7D20()
{
  v2 = qword_1006DB960;
  if (!qword_1006DB960)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB960);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003F7DA0()
{
  v2 = qword_1006DB970;
  if (!qword_1006DB970)
  {
    sub_10025CAA4(&qword_1006DB968);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB970);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003F7E30()
{
  v2 = qword_1006DB990;
  if (!qword_1006DB990)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DB990);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1003F7E94()
{
  v2 = qword_1006DB9A0;
  if (!qword_1006DB9A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DB9A0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1003F7F00()
{
  v2 = qword_1006DB9B0;
  if (!qword_1006DB9B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DB9B0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1003F7F6C()
{
  v17 = "Email messages to remove follow up suggestion";
  v42 = &v52;
  v52 = 0;
  v53 = 0;
  v28 = 0;
  v0 = type metadata accessor for InputConnectionBehavior();
  v5 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v40 = &v5 - v5;
  v1 = sub_10025C9B0(&unk_1006D7080);
  v6 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v39 = &v5 - v6;
  v7 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v5 - v6);
  v38 = &v5 - v7;
  v8 = (*(*(sub_10025C9B0(&qword_1006D6280) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v36 = &v5 - v8;
  v9 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v23 = &v5 - v9;
  v10 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v22 = &v5 - v10;
  v11 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v20 = &v5 - v11;
  v27 = type metadata accessor for LocalizedStringResource();
  v24 = *(v27 - 8);
  v25 = v27 - 8;
  v12 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v35 = &v5 - v12;
  sub_10025C9B0(&unk_1006D7090);
  v13 = v51;
  memset(v51, 0, sizeof(v51));
  sub_10000B074();
  sub_1003DC7F0();
  v44 = AppDependency.__allocating_init(key:manager:)();

  v52 = v44;
  sub_10025C9B0(&unk_1006D70A0);
  v29 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Message", 7uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v15 = "AppIntents";
  v16 = 10;
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v29 & 1);
  sub_100015CC0();
  sub_10025D410(v23);
  v48 = v17;
  v18 = 45;
  v49 = 45;
  v19 = 2;
  v50 = 2;
  v26 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("REMOVE_FOLLOW_UP_ENTITY_DESCRIPTION", 0x23uLL, v29 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v15, v16, v29 & 1);
  sub_100015CC0();
  sub_10025D410(v23);
  v45[1] = v17;
  v45[2] = v18;
  v46 = v19;
  v47 = v26 & 1 & v29;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v24 + 56))(v36, v26, v29, v27);
  v37 = v45;
  v45[0] = 0;
  v30 = type metadata accessor for IntentDialog();
  v3 = *(v30 - 8);
  v32 = *(v3 + 56);
  v31 = v3 + 56;
  v32(v38, v29);
  (v32)(v39, v29, v29, v30);
  v34 = sub_10025C9B0(&unk_1006D6FF0);
  v33 = sub_10027D124();
  v41 = sub_10027EAAC();
  sub_1003BD8F8(v40);
  v43 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();

  v53 = v43;
  sub_10027EB24();
  return v44;
}

uint64_t sub_1003F8680@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v9 = "Remove the follow up suggestion on one or more email messages";
  v1 = sub_10025C9B0(&qword_1006D6280);
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v17 = &v4 - v4;
  v19 = 0;
  v5 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v13 = &v4 - v5;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v12 = &v4 - v6;
  v7 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v10 = &v4 - v7;
  v16 = type metadata accessor for LocalizedStringResource();
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v18 = &v4 - v8;
  v20 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("REMOVE_FOLLOW_UP_DESCRIPTION", 0x1CuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v20 & 1);
  sub_100015CC0();
  sub_10025D410(v13);
  v23 = v9;
  v24 = 61;
  v25 = 2;
  v21 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v14 + 56))(v17, v20, v20, v16);
  sub_10027F040();
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v2 = type metadata accessor for IntentDescription();
  return (*(*(v2 - 8) + 56))(v22, v21, v20);
}

uint64_t sub_1003F89C0@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v9 = "Remove the follow up suggestion on one or more email messages";
  v5 = 0;
  v4 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v14 = &v3 - v4;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v13 = &v3 - v6;
  v1 = type metadata accessor for String.LocalizationValue();
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v11 = &v3 - v7;
  v8 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Remove Follow Up", 0x10uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v8 & 1);
  sub_100015CC0();
  sub_10025D410(v14);
  v15 = v9;
  v16 = 61;
  v17 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1003F8BA4@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_10025C9B0(&qword_1006DB9B8);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v26 = &v7 - v8;
  v19 = sub_10025C9B0(&unk_1006DB9C0);
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v9 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v21 = &v7 - v9;
  v10 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v9);
  v16 = &v7 - v10;
  v11 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v10);
  v20 = &v7 - v11;
  v25 = sub_100335360();
  v12 = 21;
  v24 = &unk_10065EC30;
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Remove follow up for ", v12, 1);
  object = v4._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);

  KeyPath = swift_getKeyPath();
  sub_10025C9B0(&qword_1006DB9D0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v22 & 1);
  v15 = v5._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);

  (*(v17 + 16))(v16, v20, v19);
  (*(v17 + 32))(v21, v16, v19);
  (*(v17 + 8))(v20, v19);
  ParameterSummaryString.init(stringInterpolation:)();
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v22 & 1)._countAndFlagsBits;
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_1003F8EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[41] = a3;
  v3[40] = a2;
  v3[39] = a1;
  v3[34] = v3;
  v3[22] = 0;
  v3[23] = 0;
  v3[35] = 0;
  v3[36] = 0;
  v3[22] = a2;
  v3[23] = a3;
  type metadata accessor for MainActor();
  v3[42] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[43] = v6;
  v3[44] = v4;

  return _swift_task_switch(sub_1003F8FA0, v6);
}

uint64_t sub_1003F8FA0()
{
  *(v0 + 272) = v0;
  v8 = sub_10027A534();
  sub_10035277C();
  v3 = v7[41];
  v4 = v7[40];
  _objc_release(v8);
  v7[24] = v4;
  v7[25] = v3;
  v6 = sub_10027A6E8();
  v7[45] = v6;
  v5 = sub_10027A534();
  v7[46] = v5;
  v1 = swift_task_alloc();
  v7[47] = v1;
  v7[48] = sub_1003F9D20();
  *v1 = v7[34];
  v1[1] = sub_1003F9194;

  return sub_10045F520(v6, v5);
}

uint64_t sub_1003F9194(uint64_t a1)
{
  v7 = *v2;
  v6 = *v2 + 16;
  v7[34] = *v2;
  v7[49] = a1;
  v7[50] = v1;

  if (v1)
  {
    v3 = *(v6 + 328);
    v4 = sub_1003F9C68;
  }

  else
  {

    v3 = *(v6 + 328);
    v4 = sub_1003F9338;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_1003F9338()
{
  v1 = v0[50];
  v14 = v0[49];
  v0[34] = v0;
  v0[35] = v14;
  v15 = sub_10027A534();
  sub_100352C0C(v14);
  v0[51] = v1;
  if (v1)
  {
    _objc_release(v15);

    v3 = *(*(v13 + 272) + 8);

    return v3();
  }

  else
  {
    v10 = *(v13 + 392);
    v7 = *(v13 + 328);
    v6 = *(v13 + 320);
    _objc_release(v15);
    sub_1003F9D9C();

    v5 = sub_10027A534();
    v8 = sub_100353058();
    _objc_release(v5);
    *(v13 + 208) = v6;
    *(v13 + 216) = v7;
    v9 = sub_10028E57C();
    *(v13 + 224) = v6;
    *(v13 + 232) = v7;
    v2 = sub_10028E5B4();
    v12 = sub_10027D364(v10, v8, v9, v2);
    *(v13 + 416) = v12;
    *(v13 + 288) = v12;
    *(v13 + 16) = *(v13 + 272);
    *(v13 + 56) = v13 + 256;
    *(v13 + 24) = sub_1003F9670;
    v11 = swift_continuation_init();
    *(v13 + 136) = sub_10025C9B0(&unk_1006D7CE0);
    *(v13 + 112) = v11;
    *(v13 + 80) = _NSConcreteStackBlock;
    *(v13 + 88) = 1107296256;
    *(v13 + 92) = 0;
    *(v13 + 96) = sub_10027D41C;
    *(v13 + 104) = &unk_10065EBA0;
    [v12 performInteractionWithCompletion:?];

    return _swift_continuation_await(v13 + 16);
  }
}

uint64_t sub_1003F9670()
{
  v3 = *v0;
  *(*v0 + 272) = *v0;
  v1 = *(v3 + 344);

  return _swift_task_switch(sub_1003F9788, v1);
}

uint64_t sub_1003F9788()
{
  *(v0 + 272) = v0;
  _objc_release(*(v0 + 256));
  v16 = [objc_opt_self() defaultCenter];
  _objc_retain(@"AppIntentDidRemoveFollowUp");
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  if (*(v0 + 168))
  {
    object = v15[10]._object;
    v9 = sub_10027EC3C(&v15[9]._countAndFlagsBits, object);
    v10 = *(object - 8);
    v12 = swift_task_alloc();
    (*(v10 + 16))(v12, v9, object);
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v10 + 8))(v12, object);

    sub_1000160F4(&v15[9]);
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v1 = v15[25]._object;
  sub_10025C9B0(&unk_1006DB9F0);
  _allocateUninitializedArray<A>(_:)();
  v7 = v2;
  v15[15] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mailMessageIDs", 0xEuLL, 1);
  _convertToAnyHashable<A>(_:)();
  v15[18]._object = sub_10027A6E8();
  sub_10025C9B0(&unk_1006D6FF0);
  sub_10027D6A0();
  result = Sequence.compactMap<A>(_:)();
  v8 = result;
  if (!v1)
  {
    countAndFlagsBits = v15[26]._countAndFlagsBits;
    sub_100264880();
    *(v7 + 64) = sub_10025C9B0(&unk_1006D69B0);
    *(v7 + 40) = v8;
    sub_1002612B0();
    sub_100268744();
    Dictionary.init(dictionaryLiteral:)();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v16 postNotificationName:@"AppIntentDidRemoveFollowUp" object:v14 userInfo:isa];
    _objc_release(isa);
    swift_unknownObjectRelease();
    _objc_release(@"AppIntentDidRemoveFollowUp");
    _objc_release(v16);
    v15[19]._countAndFlagsBits = sub_10027A6E8();
    sub_10027D124();
    static IntentResult.result<A>(value:)();
    sub_100264880();
    _objc_release(countAndFlagsBits);

    v4 = *(v15[17]._countAndFlagsBits + 8);

    return v4();
  }

  return result;
}

uint64_t sub_1003F9C68()
{
  v1 = *(v0 + 368);
  *(v0 + 272) = v0;
  _objc_release(v1);

  v2 = *(*(v0 + 272) + 8);

  return v2();
}

unint64_t sub_1003F9D20()
{
  v2 = qword_1006DB9D8;
  if (!qword_1006DB9D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB9D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003F9D9C()
{
  v2 = qword_1006DB9E0;
  if (!qword_1006DB9E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DB9E0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1003F9E40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v12 = a2;
  v13 = a1;
  v21 = 0;
  v2 = sub_10025C9B0(&qword_1006D7DF0);
  v14 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v17 = &v9 - v14;
  v15 = *v3;
  v16 = v3[1];
  v21 = v3;

  MailMessageEntityID.init(with:)();
  v18 = type metadata accessor for MailMessageEntityID();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  if ((*(v19 + 48))(v17, 1) == 1)
  {
    result = sub_1002C1698(v17);
    v5 = v12;
    *v12 = 0;
    v5[1] = 0;
  }

  else
  {
    v10 = MailMessageEntityID.mailMessageID.getter();
    v11 = v6;
    (*(v19 + 8))(v17, v18);
    result = v10;
    v7 = v12;
    v8 = v11;
    *v12 = v10;
    v7[1] = v8;
  }

  return result;
}

uint64_t sub_1003FA018(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v7 = v1[1];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002609F0;

  return sub_1003F8EC8(a1, v6, v7);
}

uint64_t sub_1003FA0E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003F7F6C();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_1003FA158()
{
  v2 = qword_1006DBA10;
  if (!qword_1006DBA10)
  {
    sub_10025CAA4(&qword_1006DBA18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBA10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003FA1E0(uint64_t a1)
{
  result = sub_100335360();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003FA224()
{
  v2 = qword_1006DBA30;
  if (!qword_1006DBA30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBA30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003FA2B8()
{
  v2 = qword_1006DBA38;
  if (!qword_1006DBA38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBA38);
    return WitnessTable;
  }

  return v2;
}

void *sub_1003FA3A0@<X0>(void *a1@<X8>)
{
  v72 = a1;
  v69 = v83;
  v71 = 80;
  memset(v83, 0, sizeof(v83));
  v1 = sub_10025C9B0(&unk_1006DB310);
  v15 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v53 = &v14 - v15;
  v40 = sub_10025C9B0(&unk_1006D7380);
  v16 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40);
  v41 = &v14 - v16;
  v2 = sub_10025C9B0(&unk_1006D8270);
  v17 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v39 = &v14 - v17;
  v51 = 0;
  v3 = type metadata accessor for InputConnectionBehavior();
  v18 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v67 = &v14 - v18;
  v19 = (*(*(sub_10025C9B0(&unk_1006D7080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v51);
  v66 = &v14 - v19;
  v20 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v65 = &v14 - v20;
  v30 = type metadata accessor for IntentPerson.ParameterMode();
  v24 = *(v30 - 8);
  v25 = v30 - 8;
  v21 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v36 = &v14 - v21;
  v6 = sub_10025C9B0(&qword_1006D6280);
  v22 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v63 = &v14 - v22;
  sub_10025C9B0(&unk_1006D7090);
  v23 = v82;
  memset(v82, 0, sizeof(v82));
  sub_10000B074();
  sub_1003DC7F0();
  v83[0] = AppDependency.__allocating_init(key:manager:)();
  v28 = sub_10025C9B0(&unk_1006D7410);
  v54 = type metadata accessor for LocalizedStringResource();
  v7 = *(v54 - 8);
  v56 = *(v7 + 56);
  v55 = v7 + 56;
  v58 = 1;
  v56(v63, 1);
  v26 = &v81;
  v81 = 0;
  v29 = &enum case for IntentPerson.ParameterMode.email(_:);
  v32 = *(v24 + 104);
  v31 = v24 + 104;
  v32(v36, enum case for IntentPerson.ParameterMode.email(_:), v30);
  v59 = type metadata accessor for IntentDialog();
  v8 = *(v59 - 8);
  v61 = *(v8 + 56);
  v60 = v8 + 56;
  v61(v65, v58);
  v33 = sub_10025C9B0(&unk_1006D7160);
  v34 = sub_10028035C();
  sub_1003BD8F8(v67);
  v83[1] = IntentParameter<>.init(description:default:mode:requestValueDialog:inputConnectionBehavior:)();
  (v56)(v63, v58, v58, v54);
  v27 = &v80;
  v80 = 0;
  v32(v36, *v29, v30);
  (v61)(v65, v58, v58, v59);
  sub_1003BD8F8(v67);
  v83[2] = IntentParameter<>.init(description:default:mode:requestValueDialog:inputConnectionBehavior:)();
  (v56)(v63, v58, v58, v54);
  v35 = &v79;
  v79 = 0;
  v32(v36, *v29, v30);
  (v61)(v65, v58, v58, v59);
  sub_1003BD8F8(v67);
  v83[3] = IntentParameter<>.init(description:default:mode:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D7430);
  (v56)(v63, v58, v58, v54);
  v38 = v78;
  v78[0] = 0;
  v78[1] = 0;
  v9 = type metadata accessor for String.IntentInputOptions();
  (*(*(v9 - 8) + 56))(v39, v58);
  (v61)(v65, v58, v58, v59);
  v37 = sub_10025C9B0(&unk_1006D7340);
  sub_10028DF54();
  sub_1003BD8F8(v67);
  v83[4] = IntentParameter<>.init(description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D7450);
  (v56)(v63, v58, v58, v54);
  v10 = type metadata accessor for AttributedString();
  (*(*(v10 - 8) + 56))(v41, v58);
  (v61)(v65, v58, v58, v59);
  sub_10028E064();
  sub_1003BD8F8(v67);
  v83[5] = IntentParameter<>.init(description:default:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D82A0);
  (v56)(v63, v58, v58, v54);
  v44 = v77;
  memset(v77, 0, sizeof(v77));
  (v61)(v65, v58, v58, v59);
  (v61)(v66, v58, v58, v59);
  v43 = sub_10025C9B0(&unk_1006D7470);
  v42 = sub_10028E17C();
  v45 = sub_100264788();
  sub_1003BD8F8(v67);
  v83[6] = IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D7490);
  (v56)(v63, v58, v58, v54);
  v49 = &v76;
  v76 = 0;
  v47 = type metadata accessor for UTType();
  v46 = _allocateUninitializedArray<A>(_:)();
  static UTType.item.getter();
  v11 = v46;
  sub_1002612B0();
  v50 = v11;
  (v61)(v65, v58, v58, v59);
  v48 = sub_10025C9B0(&unk_1006D7270);
  sub_10028E214();
  sub_1003BD8F8(v67);
  v83[7] = IntentParameter<>.init(description:default:supportedContentTypes:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&qword_1006DB330);
  (v56)(v63, v58, v58, v54);
  v52 = &v75;
  v75 = 0;
  v12 = type metadata accessor for Bool.IntentDisplayName();
  (*(*(v12 - 8) + 56))(v53, v58);
  (v61)(v65, v58, v58, v59);
  sub_1003424B8();
  sub_1003BD8F8(v67);
  v83[8] = IntentParameter<>.init(description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&qword_1006DBAE0);
  (v56)(v63, v58, v58, v54);
  v57 = v84;
  sub_1002E41D4(v84);
  v64 = v74;
  memcpy(v74, v57, 0x80uLL);
  (v61)(v65, v58, v58, v59);
  (v61)(v66, v58, v58, v59);
  v62 = sub_10027D1BC();
  v68 = sub_10027EAAC();
  sub_1003BD8F8(v67);
  v83[9] = IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v70 = __dst;
  memcpy(__dst, v69, v71);
  sub_100342838(v70, v73);
  sub_100342970();
  return memcpy(v72, v70, v71);
}

void *sub_1003FAF74@<X0>(void *a1@<X8>)
{
  v5 = v1;

  IntentParameter.wrappedValue.getter();
  memcpy(__dst, v4, sizeof(__dst));

  return memcpy(a1, __dst, 0x80uLL);
}

void *sub_1003FAFF8(void *a1)
{
  v7 = a1;
  v6 = v1;

  sub_1002E0080(a1, v5);
  memcpy(__dst, a1, sizeof(__dst));
  IntentParameter.wrappedValue.setter();

  result = a1;
  sub_10027D9CC();
  return result;
}

uint64_t sub_1003FB080(const void *a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v3 = (*(*(sub_10025C9B0(&unk_1006D7380) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v8 = __chkstk_darwin(v6);
  v7 = v1;
  v5 = *(v1 + 40);

  sub_100289B6C(v6, v4);
  IntentParameter.wrappedValue.setter();

  return sub_100285F68(v6);
}

uint64_t sub_1003FB158()
{

  IntentParameter.wrappedValue.getter();

  return v1 & 1;
}

uint64_t sub_1003FB1B8()
{

  IntentParameter.wrappedValue.setter();
}

uint64_t sub_1003FB224@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v31 = 0;
  v30 = sub_1003FB7EC;
  v1 = sub_10025C9B0(&qword_1006DBA58);
  v10 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v34 = &v9 - v10;
  v25 = sub_10025C9B0(&unk_1006DBA60);
  v23 = *(v25 - 8);
  v24 = v25 - 8;
  v11 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25);
  v27 = &v9 - v11;
  v12 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v9 - v11);
  v22 = &v9 - v12;
  v13 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v9 - v12);
  v26 = &v9 - v13;
  v33 = sub_100324770();
  v32 = &unk_10065EE28;
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18 = 6;
  v28 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Reply ", 6uLL, 1);
  object = v4._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);

  KeyPath = swift_getKeyPath();
  sub_10025C9B0(&qword_1006DBA70);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v28 & 1);
  v16 = v5._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);

  v17 = swift_getKeyPath();
  sub_10025C9B0(&qword_1006DBA78);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" with ", v18, v28 & 1);
  v19 = v6._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v6);

  v20 = swift_getKeyPath();
  sub_10025C9B0(&unk_1006DBA80);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v28 & 1);
  v21 = v7._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v7);

  (*(v23 + 16))(v22, v26, v25);
  (*(v23 + 32))(v27, v22, v25);
  (*(v23 + 8))(v26, v25);
  ParameterSummaryString.init(stringInterpolation:)();
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v28 & 1)._countAndFlagsBits;
  return IntentParameterSummary.init(_:table:_:)();
}

uint64_t sub_1003FB65C()
{

  v1 = IntentParameter.projectedValue.getter();

  return v1;
}

_BYTE *sub_1003FB6B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100342838(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_1003FB65C();
  result = __dst;
  *a2 = v2;
  sub_100342970();
  return result;
}

_BYTE *sub_1003FB71C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100342838(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_100288E04();
  result = __dst;
  *a2 = v2;
  sub_100342970();
  return result;
}

_BYTE *sub_1003FB784@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100342838(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_100288D44();
  result = __dst;
  *a2 = v2;
  sub_100342970();
  return result;
}

uint64_t sub_1003FB7EC()
{
  swift_getKeyPath();
  sub_100324770();
  v2 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  swift_getKeyPath();
  v3 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  swift_getKeyPath();
  v4 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  swift_getKeyPath();
  v5 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  swift_getKeyPath();
  v6 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  sub_10025C9B0(&qword_1006DBAD8);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  v0[4] = v6;
  sub_1002612B0();
  v7 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildBlock(_:)();

  return v7;
}

_BYTE *sub_1003FBA00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100342838(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_100289148();
  result = __dst;
  *a2 = v2;
  sub_100342970();
  return result;
}

_BYTE *sub_1003FBA68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100342838(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_100289208();
  result = __dst;
  *a2 = v2;
  sub_100342970();
  return result;
}

_BYTE *sub_1003FBAD0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100342838(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_1002892C8();
  result = __dst;
  *a2 = v2;
  sub_100342970();
  return result;
}

_BYTE *sub_1003FBB38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100342838(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_100289388();
  result = __dst;
  *a2 = v2;
  sub_100342970();
  return result;
}

_BYTE *sub_1003FBBA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100342838(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_1002DF99C();
  result = __dst;
  *a2 = v2;
  sub_100342970();
  return result;
}

uint64_t sub_1003FBC14(uint64_t a1)
{
  v2[120] = v1;
  v2[119] = a1;
  v2[103] = v2;
  v2[104] = 0;
  v2[105] = 0;
  v2[110] = 0;
  v2[115] = 0;
  v2[116] = 0;
  v2[117] = 0;
  v3 = type metadata accessor for Logger();
  v2[121] = v3;
  v2[122] = *(v3 - 8);
  v2[123] = swift_task_alloc();
  v2[124] = swift_task_alloc();
  sub_10025C9B0(&qword_1006D7DF0);
  v2[125] = swift_task_alloc();
  v4 = type metadata accessor for MailMessageEntityID();
  v2[126] = v4;
  v2[127] = *(v4 - 8);
  v2[128] = swift_task_alloc();
  v2[104] = v1;
  type metadata accessor for MainActor();
  v2[129] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[130] = v7;
  v2[131] = v5;

  return _swift_task_switch(sub_1003FBE20, v7);
}

uint64_t sub_1003FBE20()
{
  *(v0 + 824) = v0;
  v70 = sub_100289454();
  sub_10035277C();
  v66 = *(v69 + 960);
  _objc_release(v70);
  v67 = swift_allocObject();
  *(v69 + 1056) = v67;
  *(v69 + 840) = v67 + 2;
  v67[2] = 0;
  v67[3] = 0;
  v67[4] = 0;
  v67[5] = 0;
  memcpy((v69 + 144), v66, 0x50uLL);
  *(v69 + 1064) = sub_100288818();
  v68 = sub_100286A40();
  if (v68)
  {
    *(v69 + 944) = &OBJC_PROTOCOL___ComposeCapable;
    v65 = swift_dynamicCastObjCProtocolConditional();
    if (v65)
    {
      v64 = v65;
    }

    else
    {
      _objc_release(v68);
      v64 = 0;
    }

    v63 = v64;
  }

  else
  {
    v63 = 0;
  }

  *(v69 + 1072) = v63;
  if (v63)
  {
    v62 = *(v69 + 1008);
    v61 = *(v69 + 1000);
    v60 = *(v69 + 1016);
    *(v69 + 880) = v63;
    sub_1003FAF74((v69 + 16));

    sub_10027D9CC();
    MailMessageEntityID.init(with:)();
    if ((*(v60 + 48))(v61, 1, v62) != 1)
    {
      (*(*(v69 + 1016) + 32))(*(v69 + 1024), *(v69 + 1000), *(v69 + 1008));
      v58 = sub_100289454();
      v59 = [v58 daemonInterface];
      _objc_release(v58);
      if (!v59)
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v56 = [v59 messageRepository];
      _objc_release(v59);
      v57 = EMMessageRepository.message(forMailMessageEntityID:)();
      *(v69 + 1080) = v57;
      _objc_release(v56);
      *(v69 + 920) = v57;
      v2 = sub_1003FB158();
      if (v2)
      {
        *(v69 + 1088) = sub_10028D4AC();
        _objc_retain(v57);
        v53 = sub_100289CFC();
        v54 = v3;
        v55 = v4;
        *(v69 + 1096) = v53;
        *(v69 + 1104) = v3;
        *(v69 + 1112) = v4;
        v5 = swift_task_alloc();
        v6 = v53;
        v7 = v54;
        v8 = v55;
        v9 = v5;
        v10 = v57;
        *(v69 + 1120) = v9;
        *v9 = *(v69 + 824);
        v9[1] = sub_1003FCD10;
      }

      else
      {
        *(v69 + 1136) = sub_10028D4AC();
        _objc_retain(v57);
        v50 = sub_100289CFC();
        v51 = v11;
        v52 = v12;
        *(v69 + 1144) = v50;
        *(v69 + 1152) = v11;
        *(v69 + 1160) = v12;
        v13 = swift_task_alloc();
        v6 = v50;
        v7 = v51;
        v8 = v52;
        v14 = v13;
        v10 = v57;
        *(v69 + 1168) = v14;
        *v14 = *(v69 + 824);
        v14[1] = sub_1003FD550;
      }

      return sub_100286504(v10, v6, v7, v8);
    }

    v15 = *(v69 + 992);
    v46 = *(v69 + 968);
    v45 = *(v69 + 976);
    sub_1002C1698(*(v69 + 1000));
    v16 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v45 + 16))(v15, v16, v46);
    oslog = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    sub_10025C9B0(&unk_1006D7720);
    v49 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v47))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v42 = sub_1002641E8(0);
      v43 = sub_1002641E8(0);
      *(v69 + 888) = buf;
      *(v69 + 896) = v42;
      *(v69 + 904) = v43;
      sub_10026423C(0, (v69 + 888));
      sub_10026423C(0, (v69 + 888));
      *(v69 + 912) = v49;
      v44 = swift_task_alloc();
      v44[2] = v69 + 888;
      v44[3] = v69 + 896;
      v44[4] = v69 + 904;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, oslog, v47, "#SiriMail ReplyMessageIntent perform: failed to get uniqueIdentifier, throwing error", buf, 2u);
      sub_10026429C(v42);
      sub_10026429C(v43);
      UnsafeMutablePointer.deallocate()();
    }

    v38 = *(v69 + 992);
    v39 = *(v69 + 968);
    v37 = *(v69 + 976);
    _objc_release(oslog);
    (*(v37 + 8))(v38, v39);
    v40 = type metadata accessor for ToolboxErrors();
    sub_100281ED4();
    swift_allocError();
    (*(*(v40 - 8) + 104))(v17, enum case for ToolboxErrors.noMessagesFound(_:));
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = *(v69 + 984);
    v33 = *(v69 + 968);
    v32 = *(v69 + 976);
    v19 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v32 + 16))(v18, v19, v33);
    log = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    sub_10025C9B0(&unk_1006D7720);
    v36 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v34))
    {
      v28 = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v29 = sub_1002641E8(0);
      v30 = sub_1002641E8(0);
      *(v69 + 848) = v28;
      *(v69 + 856) = v29;
      *(v69 + 864) = v30;
      sub_10026423C(0, (v69 + 848));
      sub_10026423C(0, (v69 + 848));
      *(v69 + 872) = v36;
      v31 = swift_task_alloc();
      v31[2] = v69 + 848;
      v31[3] = v69 + 856;
      v31[4] = v69 + 864;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, log, v34, "Failed to find a scene capable of composing", v28, 2u);
      sub_10026429C(v29);
      sub_10026429C(v30);
      UnsafeMutablePointer.deallocate()();
    }

    v24 = *(v69 + 984);
    v25 = *(v69 + 968);
    __src = *(v69 + 960);
    v23 = *(v69 + 976);
    _objc_release(log);
    (*(v23 + 8))(v24, v25);
    sub_10028B33C();
    swift_allocError();
    v27 = v20;
    sub_100342838(__src, (v69 + 224));
    *(v27 + 24) = &unk_10065EE28;
    *(v27 + 32) = sub_100324770();
    v21 = swift_allocObject();
    *v27 = v21;
    memcpy((v21 + 16), __src, 0x50uLL);
    *(v27 + 40) = 0;
    swift_willThrow();
  }

  v22 = *(*(v69 + 824) + 8);

  return v22();
}

uint64_t sub_1003FCD10(uint64_t a1)
{
  v6 = *v1;
  v5 = *v1;
  v4 = *(*v1 + 1096);
  *(v5 + 824) = *v1;
  *(v5 + 1128) = a1;

  sub_100289E1C(v4);
  v2 = *(v6 + 1040);

  return _swift_task_switch(sub_1003FCEAC, v2);
}

uint64_t sub_1003FCEAC()
{
  v1 = v0[141];
  v2 = v0[135];
  v0[103] = v0;
  v24 = sub_1003FDD90(v2, v1);
  _objc_retain(v24);
  v0[116] = v24;
  v23 = v0[134];
  v22 = v0[120];
  memcpy(v0 + 38, v22, 0x50uLL);
  sub_100282548(v24);
  memcpy(v0 + 48, v22, 0x50uLL);
  sub_100286C38(v23, v24);
  v25 = [v24 attachments];
  _objc_release(v24);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v0[117] = v26;
  _objc_release(v25);
  v27 = [objc_opt_self() defaultCenter];
  v28 = MFMailComposeControllerDidLaunchNotification;
  _objc_retain(MFMailComposeControllerDidLaunchNotification);
  v0[96] = 0;
  v0[97] = 0;
  v0[98] = 0;
  v0[99] = 0;
  if (v0[99])
  {
    v17 = *(v21 + 792);
    v15 = sub_10027EC3C((v21 + 768), v17);
    v16 = *(v17 - 8);
    v18 = swift_task_alloc();
    (*(v16 + 16))(v18, v15, v17);
    v19 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v16 + 8))(v18, v17);

    sub_1000160F4(v21 + 768);
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v10 = *(v21 + 1080);
  v13 = *(v21 + 1056);
  v14 = *(v21 + 1024);
  v12 = *(v21 + 1008);
  __src = *(v21 + 960);
  v11 = *(v21 + 1016);
  v8 = [objc_opt_self() mainQueue];
  sub_100342838(__src, (v21 + 464));

  v6 = swift_allocObject();
  memcpy(v6 + 2, __src, 0x50uLL);
  v6[12] = v26;
  v6[13] = v13;
  *(v21 + 720) = sub_1003FF288;
  *(v21 + 728) = v6;
  *(v21 + 688) = _NSConcreteStackBlock;
  *(v21 + 696) = 1107296256;
  *(v21 + 700) = 0;
  *(v21 + 704) = sub_10028C0DC;
  *(v21 + 712) = &unk_10065ED00;
  aBlock = _Block_copy((v21 + 688));

  v9 = [v27 addObserverForName:v28 object:v20 queue:v8 usingBlock:aBlock];
  _Block_release(aBlock);
  _objc_release(v8);
  swift_unknownObjectRelease();
  _objc_release(v28);
  _objc_release(v27);
  *(v21 + 760) = swift_getObjectType();
  *(v21 + 736) = v9;
  swift_beginAccess();
  sub_10028D584((v21 + 736), v13 + 16);
  swift_endAccess();
  _objc_retain(v10);
  sub_1002CD3D8(v10, (v21 + 544));
  memcpy((v21 + 616), (v21 + 544), 0x48uLL);
  sub_10028D658();
  static IntentResult.result<A>(value:)();
  sub_10028D6D0();

  _objc_release(*(v21 + 928));
  _objc_release(v10);
  (*(v11 + 8))(v14, v12);
  swift_unknownObjectRelease();

  v3 = *(*(v21 + 824) + 8);

  return v3();
}

uint64_t sub_1003FD550(uint64_t a1)
{
  v6 = *v1;
  v5 = *v1;
  v4 = *(*v1 + 1144);
  *(v5 + 824) = *v1;
  *(v5 + 1176) = a1;

  sub_100289E1C(v4);
  v2 = *(v6 + 1040);

  return _swift_task_switch(sub_1003FD6EC, v2);
}

uint64_t sub_1003FD6EC()
{
  v1 = v0[147];
  v2 = v0[135];
  v0[103] = v0;
  v24 = sub_1003FDDD8(v2, v1);
  _objc_retain(v24);
  v0[116] = v24;
  v23 = v0[134];
  v22 = v0[120];
  memcpy(v0 + 38, v22, 0x50uLL);
  sub_100282548(v24);
  memcpy(v0 + 48, v22, 0x50uLL);
  sub_100286C38(v23, v24);
  v25 = [v24 attachments];
  _objc_release(v24);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v0[117] = v26;
  _objc_release(v25);
  v27 = [objc_opt_self() defaultCenter];
  v28 = MFMailComposeControllerDidLaunchNotification;
  _objc_retain(MFMailComposeControllerDidLaunchNotification);
  v0[96] = 0;
  v0[97] = 0;
  v0[98] = 0;
  v0[99] = 0;
  if (v0[99])
  {
    v17 = *(v21 + 792);
    v15 = sub_10027EC3C((v21 + 768), v17);
    v16 = *(v17 - 8);
    v18 = swift_task_alloc();
    (*(v16 + 16))(v18, v15, v17);
    v19 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v16 + 8))(v18, v17);

    sub_1000160F4(v21 + 768);
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v10 = *(v21 + 1080);
  v13 = *(v21 + 1056);
  v14 = *(v21 + 1024);
  v12 = *(v21 + 1008);
  __src = *(v21 + 960);
  v11 = *(v21 + 1016);
  v8 = [objc_opt_self() mainQueue];
  sub_100342838(__src, (v21 + 464));

  v6 = swift_allocObject();
  memcpy(v6 + 2, __src, 0x50uLL);
  v6[12] = v26;
  v6[13] = v13;
  *(v21 + 720) = sub_1003FF288;
  *(v21 + 728) = v6;
  *(v21 + 688) = _NSConcreteStackBlock;
  *(v21 + 696) = 1107296256;
  *(v21 + 700) = 0;
  *(v21 + 704) = sub_10028C0DC;
  *(v21 + 712) = &unk_10065ED00;
  aBlock = _Block_copy((v21 + 688));

  v9 = [v27 addObserverForName:v28 object:v20 queue:v8 usingBlock:aBlock];
  _Block_release(aBlock);
  _objc_release(v8);
  swift_unknownObjectRelease();
  _objc_release(v28);
  _objc_release(v27);
  *(v21 + 760) = swift_getObjectType();
  *(v21 + 736) = v9;
  swift_beginAccess();
  sub_10028D584((v21 + 736), v13 + 16);
  swift_endAccess();
  _objc_retain(v10);
  sub_1002CD3D8(v10, (v21 + 544));
  memcpy((v21 + 616), (v21 + 544), 0x48uLL);
  sub_10028D658();
  static IntentResult.result<A>(value:)();
  sub_10028D6D0();

  _objc_release(*(v21 + 928));
  _objc_release(v10);
  (*(v11 + 8))(v14, v12);
  swift_unknownObjectRelease();

  v3 = *(*(v21 + 824) + 8);

  return v3();
}

void sub_1003FDE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v100 = a4;
  v99 = a3;
  v101 = a1;
  v94 = 0;
  v136 = 0;
  v135 = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v120 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v95 = type metadata accessor for URL();
  v96 = *(v95 - 8);
  v97 = v96;
  __chkstk_darwin(v95 - 8);
  v98 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = (*(*(sub_10025C9B0(&qword_1006D7250) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v101);
  v103 = &v17 - v102;
  v136 = v6;
  v135 = a2;
  v134 = v7;
  v104 = v8 + 16;
  v133 = v8 + 16;
  v105 = sub_100289454();
  v107 = sub_10035333C();
  v106 = v107;

  if (v107)
  {
    v93 = v106;
    v90 = v106;
    v91 = [v106 composeWebView];

    v92 = v91;
  }

  else
  {
    v92 = 0;
  }

  v89 = v92;
  if (v92)
  {
    v88 = v89;
    v86 = v89;
    v132 = v89;

    v129 = v99;
    v87 = sub_10025C9B0(&unk_1006D74B0);
    sub_10028E3AC();
    Collection<>.makeIterator()();
    while (1)
    {
      sub_10025C9B0(&unk_1006D74C0);
      IndexingIterator.next()();
      if (!v128)
      {
        break;
      }

      sub_10028E434();
      if (swift_dynamicCast())
      {
        v84 = v121;
      }

      else
      {
        v84 = 0;
      }

      v83 = v84;
      if (v84)
      {
        v82 = v83;
        v80 = v83;
        v120 = v83;
        v9 = [v83 fetchLocalData];
        v81 = v9;
        if (v9)
        {
          v79 = v81;
          v74 = v81;
          v75 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v76 = v10;

          v77 = v75;
          v78 = v76;
        }

        else
        {
          v77 = 0;
          v78 = 0xF000000000000000;
        }

        v116 = v77;
        v117 = v78;
        v11 = v80;
        if (v117 >> 60 == 15)
        {
          v73 = [v80 fetchDataSynchronously:0 stripPrivateMetadata:0];
          if (v73)
          {
            v72 = v73;
            v67 = v73;
            v68 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v69 = v12;

            v70 = v68;
            v71 = v69;
          }

          else
          {
            v70 = 0;
            v71 = 0xF000000000000000;
          }

          v65 = v71;
          v66 = v70;
          if (v71 >> 60 == 15)
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          else
          {
            v63 = v66;
            v64 = v65;
            v118 = v66;
            v119 = v65;
            if (v117 >> 60 != 15)
            {
              sub_10028E498(&v116);
            }
          }
        }

        else
        {
          v118 = v116;
          v119 = v117;
        }

        v60 = v118;
        v61 = v119;
        v114 = v118;
        v115 = v119;
        v62 = [v80 url];
        if (v62)
        {
          v59 = v62;
          v58 = v62;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();
          (*(v97 + 32))(v103, v98, v95);
          (*(v97 + 56))(v103, 0, 1, v95);
        }

        else
        {
          (*(v97 + 56))(v103, 1, 1, v95);
        }

        if ((*(v97 + 48))(v103, 1, v95) == 1)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v55 = URL.absoluteString.getter();
        v56 = v13;
        v112 = v55;
        v113 = v13;
        (*(v97 + 8))(v103, v95);
        v57 = [v80 mimeType];
        if (v57)
        {
          v54 = v57;
          v49 = v57;
          v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v51 = v14;

          v52 = v50;
          v53 = v51;
        }

        else
        {
          v52 = 0;
          v53 = 0;
        }

        v47 = v53;
        v48 = v52;
        if (v53)
        {
          v45 = v48;
          v46 = v47;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v42 = v46;
        v43 = v45;
        v110 = v45;
        v111 = v46;
        v44 = [v80 contentID];
        if (v44)
        {
          v41 = v44;
          v36 = v44;
          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = v15;

          v39 = v37;
          v40 = v38;
        }

        else
        {
          v39 = 0;
          v40 = 0;
        }

        v34 = v40;
        v35 = v39;
        if (v40)
        {
          v32 = v35;
          v33 = v34;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v31 = v33;
        v26 = v32;
        v108 = v32;
        v109 = v33;
        sub_10028E4E8(v60, v61);
        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_100288010(v60, v61);

        v29 = String._bridgeToObjectiveC()();

        v28 = String._bridgeToObjectiveC()();

        v27 = String._bridgeToObjectiveC()();

        [v86 replaceFilenamePlaceholderWithAttachment:isa fileName:v29 mimeType:v28 contentID:v27];

        sub_100288010(v60, v61);
      }
    }

    sub_100264880();
    v85 = &v126;
    swift_beginAccess();
    sub_100015DA0(v104, v124);
    swift_endAccess();
    if (v125)
    {
      v25 = v127;
      sub_100014898(v124, v127);
      v24 = [objc_opt_self() defaultCenter];
      v22 = v122;
      sub_10026F5D4(v25, v122);
      v19 = v123;
      sub_10027EC3C(v22, v123);
      v17 = *(v19 - 8);
      v18 = v17;
      v21 = &v17;
      __chkstk_darwin(&v17);
      v20 = &v17 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v20);
      v23 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v18 + 8))(v20, v19);
      sub_1000160F4(v22);
      [v24 removeObserver:{v23, v17}];
      swift_unknownObjectRelease();

      sub_1000160F4(v25);
    }

    else
    {
      sub_10000B0D8(v124);
    }
  }
}

uint64_t sub_1003FEA40(uint64_t a1)
{
  *(v2 + 96) = v2;
  memcpy((v2 + 16), v1, 0x50uLL);
  v3 = swift_task_alloc();
  *(v5 + 104) = v3;
  *v3 = *(v5 + 96);
  v3[1] = sub_1003FEB08;

  return sub_1003FBC14(a1);
}

uint64_t sub_1003FEB08()
{
  v2 = *v1;
  *(v2 + 96) = *v1;
  v5 = v2 + 96;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t sub_1003FEED0()
{
  v3[1] = 0;
  v13 = type metadata accessor for AssistantSchema.IntentSchema();
  v8 = *(v13 - 8);
  v9 = v13 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(0);
  v12 = v3 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v10 = v3 - v5;
  v7 = type metadata accessor for AssistantSchema();
  v6 = qword_1006F0208;
  sub_10002094C(v7, qword_1006F0208);
  v11 = sub_1000208F4(v7, v6);
  sub_10027DF0C();
  sub_1003FF010();
  (*(v8 + 8))(v10, v13);
  return AssistantSchema.init<A>(_:)();
}

uint64_t sub_1003FF010()
{
  if (!sub_10047E218(18, 0, 0))
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Do not reference schema types directly", 0x26uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ReplyMailIntent", 0xFuLL, 1);
  return AssistantSchema.IntentSchema.init(_:)();
}

uint64_t sub_1003FF0E8()
{
  if (qword_1006D60A0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for AssistantSchema();
  return sub_1000208F4(v0, qword_1006F0208);
}

uint64_t sub_1003FF154@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1003FF0E8();
  v1 = type metadata accessor for AssistantSchema();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

id sub_1003FF1B8(void *a1, void *a2)
{
  v6 = [v2 initReplyAllToMessage:? legacyMessage:?];
  _objc_release(a2);
  _objc_release(a1);
  return v6;
}

id sub_1003FF220(void *a1, void *a2)
{
  v6 = [v2 initReplyToMessage:? legacyMessage:?];
  _objc_release(a2);
  _objc_release(a1);
  return v6;
}

uint64_t sub_1003FF298(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1003FF2FC()
{
  v2 = qword_1006DBA98;
  if (!qword_1006DBA98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBA98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003FF390()
{
  v2 = qword_1006DBAA0;
  if (!qword_1006DBAA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBAA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003FF424()
{
  v2 = qword_1006DBAA8;
  if (!qword_1006DBAA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBAA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003FF50C(uint64_t a1)
{
  result = sub_1003FF538();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1003FF538()
{
  v2 = qword_1006DBAB0;
  if (!qword_1006DBAB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBAB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003FF5B4(uint64_t a1)
{
  result = sub_100324770();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003FF5F8()
{
  v2 = qword_1006DBAB8;
  if (!qword_1006DBAB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBAB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003FF68C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1003FF7A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1003FF9A0()
{
  v2 = qword_1006DBAC0;
  if (!qword_1006DBAC0)
  {
    sub_10025CAA4(&unk_1006DBAC8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBAC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003FFA28()
{
  v25 = &v30;
  v30 = 0;
  v31 = 0;
  v13 = 0;
  v0 = type metadata accessor for InputConnectionBehavior();
  v8 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v23 = &v7 - v8;
  v1 = sub_10025C9B0(&unk_1006D7080);
  v9 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v22 = &v7 - v9;
  v10 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v9);
  v21 = &v7 - v10;
  v3 = sub_10025C9B0(&qword_1006D6280);
  v11 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v19 = &v7 - v11;
  sub_10025C9B0(&unk_1006D7090);
  v12 = v29;
  memset(v29, 0, sizeof(v29));
  sub_10000B074();
  sub_1003DC7F0();
  v27 = AppDependency.__allocating_init(key:manager:)();

  v30 = v27;
  sub_10025C9B0(&unk_1006DCC10);
  v4 = *(*(type metadata accessor for LocalizedStringResource() - 8) + 56);
  v14 = 1;
  v4(v19, 1);
  memset(__src, 0, sizeof(__src));
  v20 = __dst;
  memcpy(__dst, __src, sizeof(__dst));
  v15 = type metadata accessor for IntentDialog();
  v5 = *(v15 - 8);
  v17 = *(v5 + 56);
  v16 = v5 + 56;
  v17(v21, v14);
  (v17)(v22, v14, v14, v15);
  v18 = sub_10028D658();
  v24 = sub_1002B9D60();
  sub_1003BD8F8(v23);
  v26 = IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();

  v31 = v26;
  sub_10027EB24();
  return v27;
}

void *sub_1003FFE00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a1;
  v7 = a2;

  IntentParameter.wrappedValue.getter();
  memcpy(__dst, v5, sizeof(__dst));

  return memcpy(a3, __dst, 0x48uLL);
}

void *sub_1003FFE8C(void *a1, uint64_t a2, uint64_t a3)
{
  v6[11] = a1;
  v6[9] = a2;
  v6[10] = a3;

  sub_1002CD078(a1, v6);
  memcpy(__dst, a1, sizeof(__dst));
  IntentParameter.wrappedValue.setter();

  result = a1;
  sub_10028D6D0();
  return result;
}

uint64_t sub_1003FFF1C@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v9 = "Save an email draft";
  v4 = 0;
  v3 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v14 = &v3 - v3;
  v5 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v13 = &v3 - v5;
  v1 = type metadata accessor for String.LocalizationValue();
  v6 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v11 = &v3 - v6;
  v7 = 10;
  v8 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Save Draft", 0xAuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", v7, v8 & 1);
  sub_100015CC0();
  sub_10025D410(v14);
  v15 = v9;
  v16 = 19;
  v17 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100400100@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_10025C9B0(&qword_1006DBAF0);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v26 = &v7 - v8;
  v19 = sub_10025C9B0(&qword_1006DBAF8);
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v9 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v21 = &v7 - v9;
  v10 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v9);
  v16 = &v7 - v10;
  v11 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v10);
  v20 = &v7 - v11;
  v25 = sub_10032A2AC();
  v12 = 5;
  v24 = &unk_10065EEC8;
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Save ", v12, 1);
  object = v4._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);

  KeyPath = swift_getKeyPath();
  sub_10025C9B0(&qword_1006DBB00);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v22 & 1);
  v15 = v5._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);

  (*(v17 + 16))(v16, v20, v19);
  (*(v17 + 32))(v21, v16, v19);
  (*(v17 + 8))(v20, v19);
  ParameterSummaryString.init(stringInterpolation:)();
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v22 & 1)._countAndFlagsBits;
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_100400430()
{
  v1 = sub_100400424();
  swift_beginAccess();
  v2 = *v1;
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_100400488(char a1)
{
  v2 = sub_100400424();
  swift_beginAccess();
  *v2 = a1;
  return swift_endAccess();
}

uint64_t sub_1004004DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[34] = a3;
  v3[33] = a2;
  v3[32] = a1;
  v3[22] = v3;
  v3[20] = 0;
  v3[21] = 0;
  v3[27] = 0;
  type metadata accessor for LocalizedStringResource.BundleDescription();
  v3[35] = swift_task_alloc();
  type metadata accessor for Locale();
  v3[36] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v3[37] = swift_task_alloc();
  type metadata accessor for LocalizedStringResource();
  v3[38] = swift_task_alloc();
  v4 = type metadata accessor for IntentDialog();
  v3[39] = v4;
  v3[40] = *(v4 - 8);
  v3[41] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[42] = v5;
  v3[43] = *(v5 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[20] = a2;
  v3[21] = a3;
  type metadata accessor for MainActor();
  v3[46] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10040077C, v6);
}

uint64_t sub_10040077C()
{
  *(v0 + 176) = v0;
  v42 = sub_10027A534();
  sub_10035277C();
  _objc_release(v42);
  v39 = sub_10027A534();
  v40 = sub_10035333C();
  if (v40)
  {
    v1 = *(v41 + 360);
    v35 = *(v41 + 336);
    v34 = *(v41 + 344);
    *(v41 + 216) = v40;
    _objc_release(v39);
    v2 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v34 + 16))(v1, v2, v35);
    v37 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();
    sub_10025C9B0(&unk_1006D7720);
    v38 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v37, v36))
    {
      v30 = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v31 = sub_1002641E8(0);
      v32 = sub_1002641E8(0);
      *(v41 + 224) = v30;
      *(v41 + 232) = v31;
      *(v41 + 240) = v32;
      sub_10026423C(0, (v41 + 224));
      sub_10026423C(0, (v41 + 224));
      *(v41 + 248) = v38;
      v33 = swift_task_alloc();
      v33[2] = v41 + 224;
      v33[3] = v41 + 232;
      v33[4] = v41 + 240;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v37, v36, "#SiriMail saving draft of active email composition.", v30, 2u);
      sub_10026429C(v31);
      sub_10026429C(v32);
      UnsafeMutablePointer.deallocate()();
    }

    v27 = *(v41 + 360);
    v22 = *(v41 + 336);
    v28 = *(v41 + 328);
    v26 = *(v41 + 312);
    v29 = *(v41 + 280);
    v24 = *(v41 + 272);
    v23 = *(v41 + 264);
    v21 = *(v41 + 344);
    v25 = *(v41 + 320);
    _objc_release(v37);
    (*(v21 + 8))(v27, v22);
    [v40 setResolution:2];
    [v40 setUpForSaveAsDraft];
    [v40 finishPopoverAlertClosingComposition:1];
    sub_1003FFE00(v23, v24, (v41 + 16));
    memcpy((v41 + 88), (v41 + 16), 0x48uLL);
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("It’s saved.", 0xDuLL, 0);
    String.LocalizationValue.init(stringLiteral:)();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
    sub_100015CC0();
    sub_10025D410(v29);
    LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
    IntentDialog.init(_:)();
    sub_10028D658();
    static IntentResult.result<A>(value:dialog:)();
    (*(v25 + 8))(v28, v26);
    sub_10028D6D0();
    _objc_release(v40);

    v3 = *(*(v41 + 176) + 8);
  }

  else
  {
    v4 = *(v41 + 352);
    v17 = *(v41 + 336);
    v16 = *(v41 + 344);
    _objc_release(v39);
    v5 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v16 + 16))(v4, v5, v17);
    oslog = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    sub_10025C9B0(&unk_1006D7720);
    v20 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v18))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v13 = sub_1002641E8(0);
      v14 = sub_1002641E8(0);
      *(v41 + 184) = buf;
      *(v41 + 192) = v13;
      *(v41 + 200) = v14;
      sub_10026423C(0, (v41 + 184));
      sub_10026423C(0, (v41 + 184));
      *(v41 + 208) = v20;
      v15 = swift_task_alloc();
      v15[2] = v41 + 184;
      v15[3] = v41 + 192;
      v15[4] = v41 + 200;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, oslog, v18, "#SiriMail SaveDraftIntent - Failed to find an active email composition, throwing activeDraftNotFound", buf, 2u);
      sub_10026429C(v13);
      sub_10026429C(v14);
      UnsafeMutablePointer.deallocate()();
    }

    v9 = *(v41 + 352);
    v10 = *(v41 + 336);
    v8 = *(v41 + 344);
    _objc_release(oslog);
    (*(v8 + 8))(v9, v10);
    v11 = type metadata accessor for ToolboxErrors();
    sub_100281ED4();
    swift_allocError();
    (*(*(v11 - 8) + 104))(v6, enum case for ToolboxErrors.activeDraftNotFound(_:));
    swift_willThrow();

    v3 = *(*(v41 + 176) + 8);
  }

  return v3();
}

uint64_t sub_100401288()
{
  v3[1] = 0;
  v13 = type metadata accessor for AssistantSchema.IntentSchema();
  v8 = *(v13 - 8);
  v9 = v13 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(0);
  v12 = v3 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v10 = v3 - v5;
  v7 = type metadata accessor for AssistantSchema();
  v6 = qword_1006F0220;
  sub_10002094C(v7, qword_1006F0220);
  v11 = sub_1000208F4(v7, v6);
  sub_10027DF0C();
  sub_1004013C8();
  (*(v8 + 8))(v10, v13);
  return AssistantSchema.init<A>(_:)();
}

uint64_t sub_1004013C8()
{
  if (!sub_10047E218(18, 0, 0))
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Do not reference schema types directly", 0x26uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SaveDraftIntent", 0xFuLL, 1);
  return AssistantSchema.IntentSchema.init(_:)();
}

uint64_t sub_1004014A0()
{
  if (qword_1006D60A8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for AssistantSchema();
  return sub_1000208F4(v0, qword_1006F0220);
}

uint64_t sub_10040150C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004014A0();
  v1 = type metadata accessor for AssistantSchema();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1004015BC(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v7 = v1[1];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002609F0;

  return sub_1004004DC(a1, v6, v7);
}

uint64_t sub_100401688@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003FFA28();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_1004016FC()
{
  v2 = qword_1006DBB08;
  if (!qword_1006DBB08)
  {
    sub_10025CAA4(&qword_1006DBB10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBB08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100401784()
{
  v2 = qword_1006DBB18;
  if (!qword_1006DBB18)
  {
    sub_10025CAA4(&qword_1006DBB20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBB18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10040180C()
{
  v2 = qword_1006DBB28;
  if (!qword_1006DBB28)
  {
    sub_10025CAA4(&qword_1006DBB20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBB28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1004018C4()
{
  v2 = qword_1006DBB30;
  if (!qword_1006DBB30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBB30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100401940(uint64_t a1)
{
  result = sub_10032A2AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10040196C(uint64_t a1)
{
  result = sub_100401998();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100401998()
{
  v2 = qword_1006DBB38;
  if (!qword_1006DBB38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBB38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100401A2C()
{
  v2 = qword_1006DBB40;
  if (!qword_1006DBB40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBB40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100401AC0()
{
  v2 = qword_1006DBB48;
  if (!qword_1006DBB48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBB48);
    return WitnessTable;
  }

  return v2;
}

void *sub_100401BBC()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_contactStore);
  _objc_retain(v2);
  return v2;
}

uint64_t sub_100401C04()
{
  sub_10025C9B0(&qword_1006DBBB8);
  v4 = _allocateUninitializedArray<A>(_:)();
  v3 = v0;
  v1 = [objc_opt_self() descriptorForRequiredKeys];
  result = v4;
  *v3 = v1;
  sub_1002612B0();
  return result;
}

uint64_t sub_100401C88()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_contactKeys);

  return v2;
}

uint64_t sub_100401CC8()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_scheduler);
  swift_unknownObjectRetain();
  return v2;
}

void *sub_100401D08()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_suggestionHighlightedTextColor);
  _objc_retain(v2);
  return v2;
}

void *sub_100401D50()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_suggestionTextColor);
  _objc_retain(v2);
  return v2;
}

uint64_t sub_100401D98()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_richLinkMetadataGenerator);

  return v2;
}

char *sub_100401E1C(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v17 = a1;
  v16 = a2;
  v18 = v2;
  v4 = OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_contactKeys;
  *&v2[v4] = sub_100401C04();
  v8 = OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_scheduler;
  v5 = objc_opt_self();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.mobilemail.fetch-contact", 0x22uLL, 1);
  v6 = String._bridgeToObjectiveC()();

  v7 = [v5 serialDispatchQueueSchedulerWithName:v6 qualityOfService:25];
  _objc_release(v6);
  *&v18[v8] = v7;
  v9 = OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_suggestionHighlightedTextColor;
  *&v18[v9] = [objc_opt_self() labelColor];
  v10 = OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_suggestionTextColor;
  *&v18[v10] = [objc_opt_self() secondaryLabelColor];
  _objc_retain(a1);
  *&v18[OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_contactStore] = a1;
  type metadata accessor for RichLinkMetadataGenerator();
  _objc_retain(a2);
  *&v18[OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_richLinkMetadataGenerator] = RichLinkMetadataGenerator.__allocating_init(messageRepository:)();
  v15.receiver = v18;
  v15.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v15, "init");
  _objc_retain(v14);
  v18 = v14;
  _objc_release(a2);
  _objc_release(a1);
  _objc_release(v18);
  return v14;
}

void sub_10040209C(int a1, id a2)
{
  _objc_retain(a2);
  DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v2);

  v5 = MSAccessibilityIdentifierMailSearchSuggestionsCell;
  _objc_retain(MSAccessibilityIdentifierMailSearchSuggestionsCell);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_100268744();
  _objc_release(v5);
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v3);

  SearchItem.accessibilityDescription.getter();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_100268744();
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v4);

  sub_100268744();
  String.init(stringInterpolation:)();
  v6 = String._bridgeToObjectiveC()();

  [a2 setAccessibilityIdentifier:v6];
  _objc_release(v6);
  _objc_release(a2);
}

uint64_t sub_1004022D4()
{
  _objc_retain(v0);
  *(swift_allocObject() + 16) = v0;
  type metadata accessor for ContactConfigurationCell();
  type metadata accessor for SearchItem();
  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t sub_100402380(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v102 = a1;
  v103 = a2;
  v94 = a3;
  v93 = a4;
  v72 = sub_1004033E4;
  v73 = sub_100408C38;
  v74 = sub_10026EE84;
  v75 = sub_10026434C;
  v76 = sub_10026434C;
  v77 = sub_10026EF2C;
  v128 = 0;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v123 = 0;
  v78 = 0;
  v116 = 0;
  v109 = 0;
  v4 = sub_10025C9B0(&qword_1006DBCA0);
  v79 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v80 = v29 - v79;
  v91 = 0;
  v81 = type metadata accessor for UIBackgroundConfiguration();
  v82 = *(v81 - 8);
  v83 = v81 - 8;
  v84 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v91);
  v85 = v29 - v84;
  v128 = v29 - v84;
  v86 = type metadata accessor for Logger();
  v87 = *(v86 - 8);
  v88 = v86 - 8;
  v89 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v91);
  v90 = v29 - v89;
  v107 = type metadata accessor for SearchItem();
  v105 = *(v107 - 8);
  v106 = v107 - 8;
  v92 = (*(v105 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v91);
  v108 = v29 - v92;
  v95 = type metadata accessor for SearchItem.Contact();
  v97 = *(v95 - 8);
  v96 = v95 - 8;
  v98 = v97;
  v100 = *(v97 + 64);
  v99 = (v100 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v108);
  v101 = v29 - v99;
  v6 = __chkstk_darwin(v5);
  v104 = v29 - v7;
  v127 = v29 - v7;
  v126 = v102;
  v125 = v103;
  v124 = v8;
  v123 = v9;
  (*(v105 + 16))(v6);
  if ((*(v105 + 88))(v108, v107) != enum case for SearchItem.contact(_:))
  {
    return (*(v105 + 8))(v108, v107);
  }

  v11 = v78;
  v12 = v104;
  (*(v105 + 96))(v108, v107);
  v63 = *(v97 + 32);
  v64 = v97 + 32;
  v63(v12, v108, v95);
  v66 = SearchItem.Contact.emailAddresses.getter();
  v121 = v66;
  v65 = sub_10025C9B0(&unk_1006D69B0);
  sub_1002B76F0();
  Collection.first.getter();
  v67 = v119;
  v68 = v120;

  v117 = v67;
  v118 = v68;
  v69 = sub_10025C9B0(&unk_1006D7340);
  v13 = sub_10025C9B0(&unk_1006DBC20);
  result = sub_10026A250(v72, 0, v69, &type metadata for Never, v13, v70, &v122);
  v71 = v11;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    sub_100268744();
    v62 = v122;
    v116 = v122;
    v14 = SearchItem.Contact.name.getter();
    sub_1002910B8(v14, v15);
    swift_unknownObjectRetain();
    if (v62)
    {
      v61 = v62;
      v43 = v62;
      v109 = v62;
      v37 = *(v93 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_contactStore);
      _objc_retain(v37);
      v41 = [v37 cnStore];
      _objc_release(v37);
      v40 = *(v93 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_scheduler);
      swift_unknownObjectRetain();
      swift_getObjectType();
      swift_unknownObjectRetain();
      v38 = *(v93 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_contactKeys);

      sub_10025C9B0(&qword_1006DBBB8);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v42 = [v41 em_onScheduler:v40 contactFutureForEmailAddress:v43 keysToFetch:isa];
      _objc_release(isa);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      _objc_release(v41);
      sub_100291CDC(v42);
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = v90;
      v44 = sub_1004139EC();
      v45 = &v115;
      v49 = 32;
      swift_beginAccess();
      (*(v87 + 16))(v16, v44, v86);
      swift_endAccess();
      v46 = v98;
      (*(v97 + 16))(v101, v104, v95);
      v47 = (*(v46 + 80) + 16) & ~*(v46 + 80);
      v50 = 7;
      v51 = swift_allocObject();
      v63((v51 + v47), v101, v95);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();
      v48 = 17;
      v53 = swift_allocObject();
      *(v53 + 16) = 32;
      v54 = swift_allocObject();
      *(v54 + 16) = 8;
      v17 = swift_allocObject();
      v18 = v51;
      v52 = v17;
      *(v17 + 16) = v73;
      *(v17 + 24) = v18;
      v19 = swift_allocObject();
      v20 = v52;
      v56 = v19;
      *(v19 + 16) = v74;
      *(v19 + 24) = v20;
      v58 = sub_10025C9B0(&unk_1006D7720);
      v55 = _allocateUninitializedArray<A>(_:)();
      v57 = v21;

      v22 = v53;
      v23 = v57;
      *v57 = v75;
      v23[1] = v22;

      v24 = v54;
      v25 = v57;
      v57[2] = v76;
      v25[3] = v24;

      v26 = v56;
      v27 = v57;
      v57[4] = v77;
      v27[5] = v26;
      sub_1002612B0();

      if (os_log_type_enabled(v59, v60))
      {
        v28 = v71;
        v30 = static UnsafeMutablePointer.allocate(capacity:)();
        v29[2] = sub_10025C9B0(&qword_1006D7290);
        v31 = sub_1002641E8(0);
        v32 = sub_1002641E8(1);
        v33 = &v114;
        v114 = v30;
        v34 = &v113;
        v113 = v31;
        v35 = &v112;
        v112 = v32;
        sub_10026423C(2, &v114);
        sub_10026423C(1, v33);
        v110 = v75;
        v111 = v53;
        sub_100264250(&v110, v33, v34, v35);
        v36 = v28;
        if (v28)
        {

          __break(1u);
        }

        else
        {
          v110 = v76;
          v111 = v54;
          sub_100264250(&v110, &v114, &v113, &v112);
          v29[1] = 0;
          v110 = v77;
          v111 = v56;
          sub_100264250(&v110, &v114, &v113, &v112);
          _os_log_impl(&_mh_execute_header, v59, v60, "No email address for contact %s", v30, 0xCu);
          sub_10026429C(v31);
          sub_10026429C(v32);
          UnsafeMutablePointer.deallocate()();
        }
      }

      else
      {
      }

      _objc_release(v59);
      (*(v87 + 8))(v90, v86);
    }

    static UIBackgroundConfiguration.listPlainCell()();
    UIBackgroundConfiguration.cornerRadius.setter();
    _objc_retain(v102);
    (*(v82 + 16))(v80, v85, v81);
    (*(v82 + 56))(v80, 0, 1, v81);
    UICollectionViewCell.backgroundConfiguration.setter();
    _objc_release(v102);
    sub_10040209C(v94, v102);
    (*(v82 + 8))(v85, v81);
    swift_unknownObjectRelease();
    return (*(v97 + 8))(v104, v95);
  }

  return result;
}

id sub_1004033E4@<X0>(void *a1@<X8>)
{
  sub_1003F7C3C();

  result = sub_10040345C();
  *a1 = result;
  return result;
}

uint64_t sub_1004034C8()
{
  _objc_retain(v0);
  *(swift_allocObject() + 16) = v0;
  type metadata accessor for DocumentConfigurationCell();
  type metadata accessor for SearchItem();
  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t sub_100403574(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a1;
  v44 = a2;
  v36 = a3;
  v35 = a4;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v4 = sub_10025C9B0(&qword_1006D7ED0);
  v31 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v32 = &v11 - v31;
  v33 = 0;
  v48 = type metadata accessor for SearchItem();
  v46 = *(v48 - 8);
  v47 = v48 - 8;
  v34 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v49 = &v11 - v34;
  v37 = type metadata accessor for SearchItem.Document();
  v38 = *(v37 - 8);
  v39 = v37 - 8;
  v41 = *(v38 + 64);
  v40 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v49);
  v42 = &v11 - v40;
  v6 = __chkstk_darwin(v5);
  v45 = &v11 - v7;
  v54 = &v11 - v7;
  v53 = v43;
  v52 = v44;
  v51 = v8;
  v50 = v9;
  (*(v46 + 16))(v6);
  if ((*(v46 + 88))(v49, v48) != enum case for SearchItem.document(_:))
  {
    return (*(v46 + 8))(v49, v48);
  }

  (*(v46 + 96))(v49, v48);
  v26 = *(v38 + 32);
  v25 = v38 + 32;
  v26(v45, v49, v37);
  (*(v38 + 16))(v42, v45, v37);
  v26(v32, v42, v37);
  (*(v38 + 56))(v32, 0, 1, v37);
  sub_1002C5234(v32);
  _objc_retain(v43);
  v27 = *(v35 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_contactStore);
  _objc_retain(v27);
  v28 = [v27 cnStore];
  _objc_release(v27);
  v29 = *(v35 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_scheduler);
  swift_unknownObjectRetain();
  swift_getObjectType();
  v30 = SearchItem.Document.senders.getter();
  if (v30)
  {
    v24 = v30;
    v21 = v30;
    v20 = sub_1002644F0();
    sub_10025C9B0(&unk_1006DBC20);
    v22 = _arrayForceCast<A, B>(_:)();

    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v19 = v23;
  if (v23)
  {
    v18 = v19;
    v15 = v19;
    sub_10025C9B0(&unk_1006DBC20);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v17 = isa;
  }

  else
  {
    v17 = 0;
  }

  v13 = v17;
  v11 = *(v35 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_contactKeys);

  sub_10025C9B0(&qword_1006DBBB8);
  v12 = Array._bridgeToObjectiveC()().super.isa;

  v14 = [v28 em_contactsFutureOnScheduler:v29 forEmailAddresses:v13 keysToFetch:v12];
  _objc_release(v12);
  _objc_release(v13);
  swift_unknownObjectRelease();
  _objc_release(v28);
  sub_100412A80(v14);
  _objc_release(v43);
  sub_10040209C(v36, v43);
  return (*(v38 + 8))(v45, v37);
}

uint64_t sub_100403C0C()
{
  _objc_retain(v0);
  *(swift_allocObject() + 16) = v0;
  type metadata accessor for AdjustableSeparatorInsetListCell();
  type metadata accessor for SearchItem();
  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t sub_100403CB8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v135 = a1;
  v136 = a2;
  v129 = a3;
  v128 = a4;
  v101 = sub_100408B34;
  v102 = sub_100408B40;
  v189 = 0;
  v188 = 0;
  v187 = 0;
  v185 = 0;
  v184 = 0;
  v183 = 0;
  v182 = 0;
  v181 = 0;
  v178 = 0;
  v172 = 0;
  v173 = 0;
  v171 = 0;
  v162 = 0;
  v151 = 0;
  v186 = 0;
  v118 = 0;
  v103 = type metadata accessor for UICellAccessory.LabelOptions();
  v104 = *(v103 - 8);
  v105 = v103 - 8;
  v106 = (*(v104 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v107 = &v26 - v106;
  v108 = type metadata accessor for UICellAccessory.DisplayedState();
  v109 = *(v108 - 8);
  v110 = v108 - 8;
  v111 = (*(v109 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v118);
  v112 = &v26 - v111;
  v113 = type metadata accessor for UIListContentConfiguration();
  v114 = *(v113 - 8);
  v115 = v113 - 8;
  v116 = (*(v114 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v118);
  v117 = &v26 - v116;
  v189 = &v26 - v116;
  v119 = type metadata accessor for SearchItem.Generic();
  v120 = *(v119 - 8);
  v121 = v119 - 8;
  v122 = (*(v120 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v118);
  v123 = &v26 - v122;
  v188 = &v26 - v122;
  v124 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v125 = &v26 - v124;
  v187 = &v26 - v124;
  v126 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v127 = &v26 - v126;
  v186 = &v26 - v126;
  v141 = type metadata accessor for SearchItem();
  v139 = *(v141 - 8);
  v140 = v141 - 8;
  v133 = *(v139 + 64);
  v130 = (v133 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v141);
  v131 = &v26 - v130;
  v132 = (v133 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v26 - v130);
  v134 = &v26 - v132;
  __chkstk_darwin(&v26 - v132);
  v142 = &v26 - v8;
  v185 = v135;
  v184 = v136;
  v183 = v9;
  v182 = v10;
  v179 = 0;
  v137 = *(v139 + 16);
  v138 = v139 + 16;
  v137();
  v143 = *(v139 + 88);
  v144 = v139 + 88;
  v145 = v143(v142, v141);
  if (v145 == enum case for SearchItem.suggestion(_:))
  {
    v11 = v127;
    (*(v139 + 96))(v142, v141);
    (*(v120 + 32))(v11, v142, v119);
    v186 = v11;
    v93 = v149;
    v149[3] = v119;
    v149[4] = &protocol witness table for SearchItem.Generic;
    v12 = sub_10026AC9C(v149);
    (*(v120 + 16))(v12, v11, v119);
    v94 = __dst;
    sub_10035805C(v93, __dst);
    v13 = SearchItem.Generic.imageTintColor.getter();
    v14 = v179;
    v179 = v13;
    _objc_release(v14);
    v98 = v146;
    sub_1002F171C(v94, v146);
    v96 = v147;
    v95 = v148;
    sub_10027EC3C(v98, v147);
    v97 = dispatch thunk of ListSearchItem.count.getter();
    v99 = v97 != NSNotFound.getter();
    sub_1000160F4(v98);
    v181 = v99;
    (*(v120 + 8))(v127, v119);
    v100 = v99;
  }

  else
  {
    if (v145 != enum case for SearchItem.recent(_:))
    {
      (*(v139 + 8))(v142, v141);
      sub_10026A58C(&v179);
      v88 = 0;
      v89 = 0;
      v90 = 0;
      v91 = 0;
LABEL_26:
      v28 = v91;
      v27 = v90;
      sub_1003009E8(v88);
      return sub_1003009E8(v27);
    }

    (*(v139 + 96))(v142, v141);
    v178 = v127;
    (*(v120 + 32))(v127, v142, v119);
    v178 = v127;
    v181 = 0;
    v92 = v177;
    v177[3] = v119;
    v177[4] = &protocol witness table for SearchItem.Generic;
    v15 = sub_10026AC9C(v177);
    (*(v120 + 16))(v15, v127, v119);
    sub_10035805C(v92, __dst);
    (*(v120 + 8))(v127, v119);
    v100 = 0;
  }

  v71 = v100;
  v74 = objc_opt_self();
  v80 = __dst;
  v75 = v174;
  sub_1002F171C(__dst, v174);
  v73 = v175;
  v72 = v176;
  sub_10027EC3C(v75, v175);
  v76 = [v74 ef_formatInteger:dispatch thunk of ListSearchItem.count.getter() withGrouping:1];
  sub_1000160F4(v75);
  v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v78 = v16;
  v172 = v77;
  v173 = v16;
  _objc_release(v76);
  sub_1002AED18();
  v79 = UIFontTextStyleHeadline;
  _objc_retain(UIFontTextStyleHeadline);
  v83 = sub_10042A20C(v79, 2);
  v171 = v83;
  static UIListContentConfiguration.subtitleCell()();
  v85 = v168;
  sub_1002F171C(v80, v168);
  v82 = v169;
  v81 = v170;
  sub_10027EC3C(v85, v169);
  v84 = dispatch thunk of ListSearchItem.image.getter();
  v86 = [v84 imageByApplyingSymbolConfiguration:v83];
  _objc_release(v84);
  sub_1000160F4(v85);
  UIListContentConfiguration.image.setter();
  v87 = v179;
  _objc_retain(v179);
  if (v87)
  {
    v70 = v87;
    v69 = v87;
    v151 = v87;
    _objc_retain(v87);
    v67 = &v150;
    v68 = UIListContentConfiguration.imageProperties.modify();
    UIListContentConfiguration.ImageProperties.tintColor.setter();
    v68();
    _objc_release(v69);
  }

  (v137)(v134, v129, v141);
  if (v143(v134, v141) != enum case for SearchItem.suggestion(_:))
  {
    (*(v139 + 8))(v134, v141);
LABEL_18:
    (v137)(v131, v129, v141);
    if (v143(v131, v141) == enum case for SearchItem.recent(_:))
    {
      (*(v139 + 96))(v131, v141);
      (*(v120 + 32))(v123, v131, v119);
      UIListContentConfiguration.imageToTextPadding.setter();
      SearchItem.Generic.attributedTitle.getter();
      UIListContentConfiguration.attributedText.setter();
      (*(v120 + 8))(v123, v119);
    }

    else
    {
      (*(v139 + 8))(v131, v141);
      v43 = v165;
      sub_1002F171C(__dst, v165);
      v42 = v166;
      v41 = v167;
      sub_10027EC3C(v43, v166);
      dispatch thunk of ListSearchItem.title.getter();
      UIListContentConfiguration.text.setter();
      sub_1000160F4(v43);
    }

    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    goto LABEL_22;
  }

  v17 = v125;
  (*(v139 + 96))(v134, v141);
  (*(v120 + 32))(v17, v134, v119);
  v65 = SearchItem.Generic.attributedTitle.getter();
  v66 = [v65 mutableCopy];
  _objc_release(v65);
  if (v66)
  {
    v64 = v66;
    v63 = v66;
  }

  else
  {
    v63 = 0;
  }

  v62 = v63;
  if (!v63)
  {
    (*(v120 + 8))(v125, v119);
    goto LABEL_18;
  }

  v61 = v62;
  v56 = v62;
  v162 = v62;
  _objc_retain(v62);
  v55 = [v56 length];
  _objc_release(v56);
  v48 = 0;
  type metadata accessor for EnumerationOptions();
  v49 = _allocateUninitializedArray<A>(_:)();
  sub_1002691BC();
  SetAlgebra<>.init(arrayLiteral:)();
  v57 = v161;
  _objc_retain(v128);
  _objc_retain(v56);
  v50 = 32;
  v51 = 7;
  v18 = swift_allocObject();
  v19 = v56;
  v54 = v18;
  *(v18 + 16) = v128;
  *(v18 + 24) = v19;

  v52 = v54;
  v20 = swift_allocObject();
  v21 = v54;
  v53 = v20;
  *(v20 + 16) = v101;
  *(v20 + 24) = v21;

  v159 = v102;
  v160 = v53;
  v154 = _NSConcreteStackBlock;
  v155 = 1107296256;
  v156 = 0;
  v157 = sub_100405220;
  v158 = &unk_10065F2E8;
  v59 = v53;
  v58 = _Block_copy(&v154);

  v152 = 0;
  v153 = v55;
  [v56 enumerateAttributesInRange:0 options:v55 usingBlock:{v57, v58}];
  _Block_release(v58);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    _objc_retain(v56);
    UIListContentConfiguration.attributedText.setter();
    _objc_release(v56);
    (*(v120 + 8))(v125, v119);
    v44 = v101;
    v45 = v52;
    v46 = 0;
    v47 = 0;
LABEL_22:
    v34 = v47;
    v35 = v46;
    v36 = v45;
    v37 = v44;
    v38 = sub_100269AA8();
    v39 = &v164;
    v40 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.numberOfLines.setter();
    v40();
    if (v71)
    {
      _objc_retain(v135);
      v33 = type metadata accessor for UICellAccessory();
      v32 = _allocateUninitializedArray<A>(_:)();
      v31 = v23;
      sub_1004052E4(v112);
      sub_100405350(v107);
      static UICellAccessory.label(text:displayed:options:)();
      (*(v104 + 8))(v107, v103);
      (*(v109 + 8))(v112, v108);
      sub_1002612B0();
    }

    else
    {
      _objc_retain(v135);
      v30 = 0;
      type metadata accessor for UICellAccessory();
      _allocateUninitializedArray<A>(_:)();
    }

    UICollectionViewListCell.accessories.setter();
    _objc_release(v135);
    _objc_retain(v135);
    v29 = v163;
    v163[3] = v113;
    v163[4] = &protocol witness table for UIListContentConfiguration;
    v24 = sub_10026AC9C(v163);
    (*(v114 + 16))(v24, v117, v113);
    UICollectionViewCell.contentConfiguration.setter();
    _objc_release(v135);
    static SearchCollectionViewLayoutFactory_iOS.horizontalPadding.getter();
    sub_100269900(v25, 0);
    sub_10040209C(v129, v135);
    (*(v114 + 8))(v117, v113);
    _objc_release(v83);

    sub_10026A58C(&v179);
    sub_1000160F4(__dst);
    v88 = v37;
    v89 = v36;
    v90 = v35;
    v91 = v34;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

void sub_100404EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_10025C9B0(&qword_1006DBC68);
  sub_100408BB0();
  if (Sequence.contains(where:)())
  {
    v10 = *(a5 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_suggestionHighlightedTextColor);
    _objc_retain(v10);
    v11 = v10;
  }

  else
  {
    v9 = *(a5 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_suggestionTextColor);
    _objc_retain(v9);
    v11 = v9;
  }

  sub_10025C9B0(&qword_1006DBC78);
  _allocateUninitializedArray<A>(_:)();
  v7 = v6;
  sub_1002935A0(&NSForegroundColorAttributeName, v6);
  _objc_retain(v11);
  v7[4] = sub_1002A9C44();
  v7[1] = v11;
  sub_1002612B0();
  type metadata accessor for Key();
  sub_10026974C();
  Dictionary.init(dictionaryLiteral:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a6 addAttributes:isa range:{a2, a3}];
  _objc_release(isa);
  _objc_release(v11);
}

uint64_t sub_100405148(id *a1)
{
  v3[2] = a1;
  v3[1] = *a1;
  _objc_retain(CSSuggestionHighlightAttributeName);
  v3[0] = CSSuggestionHighlightAttributeName;
  type metadata accessor for Key();
  sub_100269254();
  v2 = == infix<A>(_:_:)();
  sub_10026A58C(v3);
  return v2 & 1;
}

void sub_100405220(uint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  _objc_retain(a2);
  type metadata accessor for Key();
  sub_10026974C();
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8(v9, a3, a4, a5);

  _objc_release(a2);
}

uint64_t sub_1004052E4@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for UICellAccessory.DisplayedState.always(_:);
  v1 = type metadata accessor for UICellAccessory.DisplayedState();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_100405350@<X0>(uint64_t a1@<X8>)
{
  v4[1] = a1;
  v1 = sub_10025C9B0(&unk_1006DBC90);
  v4[0] = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v5 = v4 - v4[0];
  v6 = 0;
  v2 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v2 - 8) + 56))(v5, 1);
  return UICellAccessory.LabelOptions.init(isHidden:reservedLayoutWidth:tintColor:font:adjustsFontForContentSizeCategory:)();
}

uint64_t sub_100405430()
{
  _objc_retain(v0);
  *(swift_allocObject() + 16) = v0;
  type metadata accessor for LocationConfigurationCell();
  type metadata accessor for SearchItem();
  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t sub_1004054DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a1;
  v38 = a2;
  v33 = a3;
  v32 = a4;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v4 = sub_10025C9B0(&qword_1006D9878);
  v28 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v29 = v10 - v28;
  v30 = 0;
  v42 = type metadata accessor for SearchItem();
  v40 = *(v42 - 8);
  v41 = v42 - 8;
  v31 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v43 = v10 - v31;
  v34 = type metadata accessor for SearchItem.Location();
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v5 = __chkstk_darwin(v43);
  v39 = v10 - v6;
  v48 = v10 - v6;
  v47 = v37;
  v46 = v38;
  v45 = v7;
  v44 = v8;
  (*(v40 + 16))(v5);
  if ((*(v40 + 88))(v43, v42) != enum case for SearchItem.location(_:))
  {
    return (*(v40 + 8))(v43, v42);
  }

  (*(v40 + 96))(v43, v42);
  (*(v35 + 32))(v39, v43, v34);
  (*(v35 + 16))(v29, v39, v34);
  (*(v35 + 56))(v29, 0, 1, v34);
  sub_100347BAC(v29);
  _objc_retain(v37);
  v24 = *(v32 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_contactStore);
  _objc_retain(v24);
  v25 = [v24 cnStore];
  _objc_release(v24);
  v26 = *(v32 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_scheduler);
  swift_unknownObjectRetain();
  swift_getObjectType();
  v27 = SearchItem.Location.senders.getter();
  if (v27)
  {
    v23 = v27;
    v20 = v27;
    v19 = sub_1002644F0();
    sub_10025C9B0(&unk_1006DBC20);
    v21 = _arrayForceCast<A, B>(_:)();

    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v18 = v22;
  if (v22)
  {
    v17 = v18;
    v14 = v18;
    sub_10025C9B0(&unk_1006DBC20);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v16 = isa;
  }

  else
  {
    v16 = 0;
  }

  v12 = v16;
  v10[1] = *(v32 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_contactKeys);

  sub_10025C9B0(&qword_1006DBBB8);
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v25 em_contactsFutureOnScheduler:v26 forEmailAddresses:v12 keysToFetch:v11];
  _objc_release(v11);
  _objc_release(v12);
  swift_unknownObjectRelease();
  _objc_release(v25);
  sub_100412A80(v13);
  _objc_release(v37);
  sub_10040209C(v33, v37);
  return (*(v35 + 8))(v39, v34);
}

uint64_t sub_100405AE0()
{
  _objc_retain(v0);
  *(swift_allocObject() + 16) = v0;
  type metadata accessor for PhotoConfigurationCell();
  type metadata accessor for SearchItem();
  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t sub_100405B8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a1;
  v38 = a2;
  v33 = a3;
  v32 = a4;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v4 = sub_10025C9B0(&unk_1006DBC50);
  v28 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v29 = v10 - v28;
  v30 = 0;
  v42 = type metadata accessor for SearchItem();
  v40 = *(v42 - 8);
  v41 = v42 - 8;
  v31 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v43 = v10 - v31;
  v34 = type metadata accessor for SearchItem.Photo();
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v5 = __chkstk_darwin(v43);
  v39 = v10 - v6;
  v48 = v10 - v6;
  v47 = v37;
  v46 = v38;
  v45 = v7;
  v44 = v8;
  (*(v40 + 16))(v5);
  if ((*(v40 + 88))(v43, v42) != enum case for SearchItem.photo(_:))
  {
    return (*(v40 + 8))(v43, v42);
  }

  (*(v40 + 96))(v43, v42);
  (*(v35 + 32))(v39, v43, v34);
  (*(v35 + 16))(v29, v39, v34);
  (*(v35 + 56))(v29, 0, 1, v34);
  sub_1003E2748(v29);
  _objc_retain(v37);
  v24 = *(v32 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_contactStore);
  _objc_retain(v24);
  v25 = [v24 cnStore];
  _objc_release(v24);
  v26 = *(v32 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_scheduler);
  swift_unknownObjectRetain();
  swift_getObjectType();
  v27 = SearchItem.Photo.senders.getter();
  if (v27)
  {
    v23 = v27;
    v20 = v27;
    v19 = sub_1002644F0();
    sub_10025C9B0(&unk_1006DBC20);
    v21 = _arrayForceCast<A, B>(_:)();

    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v18 = v22;
  if (v22)
  {
    v17 = v18;
    v14 = v18;
    sub_10025C9B0(&unk_1006DBC20);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v16 = isa;
  }

  else
  {
    v16 = 0;
  }

  v12 = v16;
  v10[1] = *(v32 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_contactKeys);

  sub_10025C9B0(&qword_1006DBBB8);
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v25 em_contactsFutureOnScheduler:v26 forEmailAddresses:v12 keysToFetch:v11];
  _objc_release(v11);
  _objc_release(v12);
  swift_unknownObjectRelease();
  _objc_release(v25);
  sub_100412A80(v13);
  _objc_release(v37);
  sub_10040209C(v33, v37);
  return (*(v35 + 8))(v39, v34);
}

uint64_t sub_100406190(uint64_t a1, uint64_t a2)
{

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1003C1558();
  type metadata accessor for SearchItem();
  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t sub_10040625C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v41 = a1;
  v42 = a2;
  v37 = a3;
  v35 = a4;
  v36 = a5;
  v31 = sub_1004089D8;
  v32 = sub_100406C4C;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  v65 = 0;
  v63 = 0;
  v62 = 0;
  v33 = 0;
  v46 = type metadata accessor for SearchItem();
  v44 = *(v46 - 8);
  v45 = v46 - 8;
  v34 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v47 = v17 - v34;
  v38 = type metadata accessor for SearchItem.TopHit();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v5 = __chkstk_darwin(v47);
  v43 = v17 - v6;
  v72 = v17 - v6;
  v71 = v41;
  v70 = v42;
  v69 = v7;
  v67 = v8;
  v68 = v9;
  (*(v44 + 16))(v5);
  if ((*(v44 + 88))(v47, v46) != enum case for SearchItem.topHit(_:))
  {
    return (*(v44 + 8))(v47, v46);
  }

  v11 = v43;
  (*(v44 + 96))(v47, v46);
  (*(v39 + 32))(v11, v47, v38);
  v30 = SearchItem.TopHit.matchingHintsByGlobalMessageID.getter();
  v66 = v30;

  v20 = v35(v12);
  v19 = 1;
  v65 = v20 & 1;

  v17[0] = sub_100413A58();
  v17[1] = &v64;
  v21 = 32;
  swift_beginAccess();
  v29 = *v17[0];
  _objc_retain(v29);
  swift_endAccess();
  v63 = v29;
  v28 = [v41 cellHelper];
  v62 = v28;
  v18 = [v28 cellView];
  swift_getObjectType();
  _objc_retain(v29);
  [v18 setLayoutValuesHelper:v29];
  _objc_release(v29);
  _objc_release(v18);
  [v28 setShowsAccessory:v19 & 1 showingDetail:v20 & 1];
  v24 = SearchItem.TopHit.message.getter();
  v23 = [objc_opt_self() mainThreadScheduler];

  _objc_retain(v28);
  v13 = swift_allocObject();
  v14 = v31;
  v15 = v13;
  v16 = v28;
  *(v15 + 16) = v30;
  *(v15 + 24) = v16;
  v60 = v14;
  v61 = v15;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v56 = 1107296256;
  v57 = 0;
  v58 = sub_1002919E0;
  v59 = &unk_10065F180;
  v22 = _Block_copy(&aBlock);

  [v24 onScheduler:v23 addSuccessBlock:v22];
  _Block_release(v22);
  swift_unknownObjectRelease();
  _objc_release(v24);
  v27 = SearchItem.TopHit.message.getter();
  v53 = v32;
  v54 = 0;
  v48 = _NSConcreteStackBlock;
  v49 = v25;
  v50 = 0;
  v51 = sub_100291B2C;
  v52 = &unk_10065F1A8;
  v26 = _Block_copy(&v48);
  [v27 addFailureBlock:?];
  _Block_release(v26);
  _objc_release(v27);
  _objc_release(v28);
  _objc_release(v29);

  return (*(v39 + 8))(v43, v38);
}

uint64_t sub_100406974(void *a1, uint64_t a2, void *a3)
{

  if (a2)
  {
    sub_100278E2C();
    v7 = [a1 objectID];
    v8 = [v7 globalMessageID];
    _objc_release(v7);
    v13 = sub_100406C0C(v8);
    sub_10025C9B0(&qword_1006DBC40);
    sub_100408AB4();
    Dictionary.subscript.getter();
    _objc_release(v13);

    v9 = v14;
  }

  else
  {
    v9 = 0;
  }

  _objc_retain(a1);
  v6 = [a1 category];
  [a3 setCategory:?];
  _objc_release(a1);
  _objc_release(v6);
  _objc_retain(a1);

  if (v9)
  {
    type metadata accessor for EMMessageSnippetHintZone();
    sub_10025C9B0(&unk_1006D69B0);
    sub_1002682D4();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v5 = isa;
  }

  else
  {
    v5 = 0;
  }

  [a3 setMessageListItem:a1 style:3 hintsBySnippetZone:?];
  _objc_release(v5);
  swift_unknownObjectRelease();
}

uint64_t sub_100406C4C(uint64_t a1)
{
  v32 = a1;
  v26 = 0;
  v34 = sub_100408AAC;
  v38 = sub_10026EE84;
  v40 = sub_10026434C;
  v42 = sub_10026434C;
  v45 = sub_10026EF2C;
  v57 = 0;
  v23 = 0;
  v30 = type metadata accessor for Logger();
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v24 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = v15 - v24;
  v25 = v15 - v24;
  v57 = __chkstk_darwin(v32);
  v29 = sub_1004139EC();
  v31 = &v56;
  v35 = 32;
  swift_beginAccess();
  (*(v27 + 16))(v1, v29, v30);
  swift_endAccess();
  swift_errorRetain();
  v36 = 7;
  v37 = swift_allocObject();
  *(v37 + 16) = v32;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();
  v33 = 17;
  v41 = swift_allocObject();
  *(v41 + 16) = 34;
  v43 = swift_allocObject();
  *(v43 + 16) = 8;
  v2 = swift_allocObject();
  v3 = v37;
  v39 = v2;
  *(v2 + 16) = v34;
  *(v2 + 24) = v3;
  v4 = swift_allocObject();
  v5 = v39;
  v46 = v4;
  *(v4 + 16) = v38;
  *(v4 + 24) = v5;
  v48 = sub_10025C9B0(&unk_1006D7720);
  v44 = _allocateUninitializedArray<A>(_:)();
  v47 = v6;

  v7 = v41;
  v8 = v47;
  *v47 = v40;
  v8[1] = v7;

  v9 = v43;
  v10 = v47;
  v47[2] = v42;
  v10[3] = v9;

  v11 = v46;
  v12 = v47;
  v47[4] = v45;
  v12[5] = v11;
  sub_1002612B0();

  if (os_log_type_enabled(v49, v50))
  {
    v13 = v23;
    v16 = static UnsafeMutablePointer.allocate(capacity:)();
    v15[3] = sub_10025C9B0(&qword_1006D7290);
    v17 = sub_1002641E8(0);
    v18 = sub_1002641E8(1);
    v19 = &v55;
    v55 = v16;
    v20 = &v54;
    v54 = v17;
    v21 = &v53;
    v53 = v18;
    sub_10026423C(2, &v55);
    sub_10026423C(1, v19);
    v51 = v40;
    v52 = v41;
    sub_100264250(&v51, v19, v20, v21);
    v22 = v13;
    if (v13)
    {

      __break(1u);
    }

    else
    {
      v51 = v42;
      v52 = v43;
      sub_100264250(&v51, &v55, &v54, &v53);
      v15[1] = 0;
      v51 = v45;
      v52 = v46;
      sub_100264250(&v51, &v55, &v54, &v53);
      _os_log_impl(&_mh_execute_header, v49, v50, "Failed to load message: %{public}s", v16, 0xCu);
      sub_10026429C(v17);
      sub_10026429C(v18);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v49);
  return (*(v27 + 8))(v25, v30);
}

uint64_t sub_10040726C()
{
  swift_errorRetain();
  v1 = _convertErrorToNSError(_:)();
  v2 = [v1 ef_publicDescription];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(v1);
  _objc_release(v2);

  return v3;
}

uint64_t sub_1004072F4()
{
  _objc_retain(v0);
  *(swift_allocObject() + 16) = v0;
  type metadata accessor for InstantAnswerFlightCell();
  type metadata accessor for SearchItem();
  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t sub_1004073A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a1;
  v22 = a2;
  v17 = a3;
  v16 = a4;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v4 = sub_10025C9B0(&unk_1006DBC30);
  v12 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v13 = &v11 - v12;
  v14 = 0;
  v26 = type metadata accessor for SearchItem();
  v24 = *(v26 - 8);
  v25 = v26 - 8;
  v15 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14);
  v27 = &v11 - v15;
  v18 = type metadata accessor for SearchItem.InstantAnswer();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v5 = __chkstk_darwin(v27);
  v23 = &v11 - v6;
  v32 = &v11 - v6;
  v31 = v21;
  v30 = v22;
  v29 = v7;
  v28 = v8;
  (*(v24 + 16))(v5);
  if ((*(v24 + 88))(v27, v26) != enum case for SearchItem.instantAnswer(_:))
  {
    return (*(v24 + 8))(v27, v26);
  }

  v10 = v21;
  (*(v24 + 96))(v27, v26);
  (*(v19 + 32))(v23, v27, v18);
  _objc_retain(v10);
  (*(v19 + 16))(v13, v23, v18);
  (*(v19 + 56))(v13, 0, 1, v18);
  sub_1002F1A44(v13);
  _objc_release(v21);
  sub_10040209C(v17, v21);
  return (*(v19 + 8))(v23, v18);
}

uint64_t sub_10040772C()
{
  _objc_retain(v0);
  *(swift_allocObject() + 16) = v0;
  type metadata accessor for InstantAnswerHotelCell();
  type metadata accessor for SearchItem();
  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t sub_1004077D8()
{
  _objc_retain(v0);
  *(swift_allocObject() + 16) = v0;
  type metadata accessor for AdjustableSeparatorInsetListCell();
  type metadata accessor for SearchItem();
  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t sub_100407884(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a1;
  v30 = a2;
  v25 = a3;
  v24 = a4;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v22 = 0;
  v17 = type metadata accessor for UIListContentConfiguration();
  v18 = *(v17 - 8);
  v19 = v17 - 8;
  v20 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v21 = v13 - v20;
  v43 = v13 - v20;
  v34 = type metadata accessor for SearchItem();
  v32 = *(v34 - 8);
  v33 = v34 - 8;
  v23 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v35 = v13 - v23;
  v26 = type metadata accessor for SearchItem.LegacySuggested();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v4 = __chkstk_darwin(v35);
  v31 = v13 - v5;
  v42 = v13 - v5;
  v41 = v29;
  v40 = v30;
  v39 = v6;
  v38 = v7;
  (*(v32 + 16))(v4);
  if ((*(v32 + 88))(v35, v34) != enum case for SearchItem.legacy(_:))
  {
    return (*(v32 + 8))(v35, v34);
  }

  v9 = v31;
  (*(v32 + 96))(v35, v34);
  (*(v27 + 32))(v9, v35, v26);
  static UIListContentConfiguration.subtitleCell()();
  SearchItem.LegacySuggested.image.getter();
  UIListContentConfiguration.image.setter();
  SearchItem.LegacySuggested.text.getter();
  UIListContentConfiguration.text.setter();
  SearchItem.LegacySuggested.secondaryText.getter();
  UIListContentConfiguration.secondaryText.setter();
  v13[1] = SearchItem.LegacySuggested.tintColor.getter();
  v13[2] = &v37;
  v14 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.tintColor.setter();
  v10 = v29;
  v16 = 0;
  v14();
  _objc_retain(v10);
  v15 = v36;
  v36[3] = v17;
  v36[4] = &protocol witness table for UIListContentConfiguration;
  v11 = sub_10026AC9C(v36);
  (*(v18 + 16))(v11, v21, v17);
  UICollectionViewCell.contentConfiguration.setter();
  _objc_release(v29);
  static SearchCollectionViewLayoutFactory_iOS.horizontalPadding.getter();
  sub_100269900(v12, v16);
  sub_10040209C(v25, v29);
  (*(v18 + 8))(v21, v17);
  return (*(v27 + 8))(v31, v26);
}

uint64_t sub_100407D28()
{
  _objc_retain(v0);
  *(swift_allocObject() + 16) = v0;
  type metadata accessor for LinkConfigurationCell();
  type metadata accessor for SearchItem();
  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t sub_100407DD4(char *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v47 = a1;
  v48 = a2;
  v40 = a3;
  v39 = a4;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v4 = sub_10025C9B0(&qword_1006D9760);
  v35 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v36 = &v12 - v35;
  v37 = 0;
  v52 = type metadata accessor for SearchItem();
  v50 = *(v52 - 8);
  v51 = v52 - 8;
  v38 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v37);
  v53 = &v12 - v38;
  v41 = type metadata accessor for SearchItem.Link();
  v42 = *(v41 - 8);
  v43 = v41 - 8;
  v45 = *(v42 + 64);
  v44 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v53);
  v46 = &v12 - v44;
  v6 = __chkstk_darwin(v5);
  v49 = &v12 - v7;
  v59 = &v12 - v7;
  v58 = v47;
  v57 = v48;
  v56 = v8;
  v55 = v9;
  (*(v50 + 16))(v6);
  if ((*(v50 + 88))(v53, v52) != enum case for SearchItem.link(_:))
  {
    return (*(v50 + 8))(v53, v52);
  }

  (*(v50 + 96))(v53, v52);
  v30 = *(v42 + 32);
  v29 = v42 + 32;
  v30(v49, v53, v41);
  (*(v42 + 16))(v46, v49, v41);
  v30(v36, v46, v41);
  (*(v42 + 56))(v36, 0, 1, v41);
  sub_10034483C(v36);
  _objc_retain(v47);
  v31 = *&v39[OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_contactStore];
  _objc_retain(v31);
  v32 = [v31 cnStore];
  _objc_release(v31);
  v33 = *&v39[OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_scheduler];
  swift_unknownObjectRetain();
  swift_getObjectType();
  v34 = SearchItem.Link.senders.getter();
  if (v34)
  {
    v28 = v34;
    v25 = v34;
    v24 = sub_1002644F0();
    sub_10025C9B0(&unk_1006DBC20);
    v26 = _arrayForceCast<A, B>(_:)();

    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v23 = v27;
  if (v27)
  {
    v22 = v23;
    v19 = v23;
    sub_10025C9B0(&unk_1006DBC20);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v21 = isa;
  }

  else
  {
    v21 = 0;
  }

  v14 = v21;
  v12 = *&v39[OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_contactKeys];

  sub_10025C9B0(&qword_1006DBBB8);
  v13 = Array._bridgeToObjectiveC()().super.isa;

  v15 = [v32 em_contactsFutureOnScheduler:v33 forEmailAddresses:v14 keysToFetch:v13];
  _objc_release(v13);
  _objc_release(v14);
  swift_unknownObjectRelease();
  _objc_release(v32);
  sub_100412A80(v15);
  v11 = v39;
  _objc_release(v47);
  _objc_retain(v11);
  v17 = v11;
  v16 = &v47[OBJC_IVAR____TtC10MobileMail21LinkConfigurationCell_richLinkMetadataGeneratorDelegate];
  v18 = &v54;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  sub_10040209C(v40, v47);
  return (*(v42 + 8))(v49, v41);
}

uint64_t sub_100408508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v9 = swift_allocObject();
  *(v9 + 16) = a5;
  *(v9 + 24) = a6;
  RichLinkMetadataGenerator.retreiveMetadata(for:messageID:handler:)();
}

uint64_t sub_100408614(uint64_t a1, void (*a2)(uint64_t))
{

  a2(a1);
}

id sub_10040894C()
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithString:?];
  _objc_release(v2);

  return v3;
}

uint64_t sub_1004089E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_100408A48(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_100408AB4()
{
  v2 = qword_1006DBC48;
  if (!qword_1006DBC48)
  {
    sub_100278E2C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBC48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100408B4C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_100408BB0()
{
  v2 = qword_1006DBC70;
  if (!qword_1006DBC70)
  {
    sub_10025CAA4(&qword_1006DBC68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBC70);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100408C38()
{
  type metadata accessor for SearchItem.Contact();

  return sub_1004034A4();
}

void *sub_100408C9C()
{
  v2 = *(v0 + 16);
  _objc_retain(v2);
  return v2;
}

uint64_t sub_100408CD0@<X0>(char *a1@<X8>)
{
  v8 = a1;
  v25 = 0;
  v2 = sub_10025C9B0(&qword_1006DBCA8);
  v10 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v11 = v6 - v10;
  v12 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6 - v10);
  v21 = v6 - v12;
  v22 = type metadata accessor for GroupedSearchItems.SectionCache();
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v13 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v14 = v6 - v13;
  v15 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6 - v13);
  v16 = v6 - v15;
  v25 = v1;
  v17 = (v1 + OBJC_IVAR____TtC10MobileMail30SearchCollectionViewDataSource____lazy_storage___viewModel);
  v18 = &v24;
  swift_beginAccess();
  sub_100409054(v17, v21);
  swift_endAccess();
  if ((*(v19 + 48))(v21, 1, v22) == 1)
  {
    sub_10040917C(v21);
    sub_100409224(v14);
    v7 = *(v19 + 16);
    v6[2] = (v19 + 16);
    v7(v11, v14, v22);
    (*(v19 + 56))(v11, 0, 1, v22);
    v6[0] = (v9 + OBJC_IVAR____TtC10MobileMail30SearchCollectionViewDataSource____lazy_storage___viewModel);
    v6[1] = &v23;
    swift_beginAccess();
    sub_100409A48(v11, v6[0]);
    swift_endAccess();
    v7(v8, v14, v22);
    return (*(v19 + 8))(v14, v22);
  }

  else
  {
    (*(v19 + 32))(v16, v21, v22);
    (*(v19 + 16))(v8, v16, v22);
    return (*(v19 + 8))(v16, v22);
  }
}

void *sub_100409054(const void *a1, void *a2)
{
  v6 = type metadata accessor for GroupedSearchItems.SectionCache();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10025C9B0(&qword_1006DBCA8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_10040917C(uint64_t a1)
{
  v3 = type metadata accessor for GroupedSearchItems.SectionCache();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_100409224@<X0>(uint64_t a1@<X8>)
{
  v119 = a1;
  v110 = 0;
  v109 = sub_10040BA2C;
  v121 = 0;
  v114 = &v120;
  v120 = 0;
  v75 = 0;
  v116 = type metadata accessor for GroupedSearchItems.SectionCache();
  v111 = *(v116 - 8);
  v112 = v116 - 8;
  v73 = (*(v111 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v116);
  v113 = &v72 - v73;
  v74 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v72 - v73);
  v115 = &v72 - v74;
  v121 = &v72 - v74;
  v106 = sub_10025C9B0(&qword_1006DBCB8);
  v107 = _allocateUninitializedArray<A>(_:)();
  v99 = v2;
  v77 = *(v106 + 48);
  v76 = enum case for GroupedSearchItems.Section.Kind.recentSearches(_:);
  v100 = type metadata accessor for GroupedSearchItems.Section.Kind();
  v3 = *(v100 - 8);
  v102 = *(v3 + 104);
  v101 = v3 + 104;
  (v102)(v99, v76);
  v103 = &ShowToCCIndicatorsKey_ptr;
  v4 = [objc_opt_self() recentSearchCategory];
  v5 = v99;
  v6 = v102;
  v7 = v4;
  v8 = v106;
  *(v99 + v77) = v7;
  v98 = *(*(v8 - 8) + 72);
  v78 = *(v8 + 48);
  v79 = v5 + v98;
  v6();
  v9 = [objc_opt_self() instantAnswersCategory];
  v10 = v98;
  v11 = v99;
  v12 = v102;
  v13 = v9;
  v14 = v106;
  *(v79 + v78) = v13;
  v80 = *(v14 + 48);
  v81 = v11 + 2 * v10;
  v12();
  v15 = [objc_opt_self() topHitsCategory];
  v16 = v98;
  v17 = v99;
  v18 = v102;
  v19 = v15;
  v20 = v106;
  *(v81 + v80) = v19;
  v82 = *(v20 + 48);
  v83 = v17 + 3 * v16;
  v18();
  v21 = [objc_opt_self() contactCategory];
  v22 = v98;
  v23 = v99;
  v24 = v102;
  v25 = v21;
  v26 = v106;
  *(v83 + v82) = v25;
  v84 = *(v26 + 48);
  v85 = v23 + 4 * v22;
  v24();
  v27 = [objc_opt_self() documentCategory];
  v28 = v98;
  v29 = v99;
  v30 = v102;
  v31 = v27;
  v32 = v106;
  *(v85 + v84) = v31;
  v86 = *(v32 + 48);
  v87 = v29 + 5 * v28;
  v30();
  v33 = [objc_opt_self() linkCategory];
  v34 = v98;
  v35 = v99;
  v36 = v102;
  v37 = v33;
  v38 = v106;
  *(v87 + v86) = v37;
  v88 = *(v38 + 48);
  v89 = v35 + 6 * v34;
  v36();
  v39 = [objc_opt_self() locationCategory];
  v40 = v98;
  v41 = v99;
  v42 = v102;
  v43 = v39;
  v44 = v106;
  *(v89 + v88) = v43;
  v90 = *(v44 + 48);
  v91 = v41 + 7 * v40;
  v42();
  v45 = [objc_opt_self() allMailboxesCategory];
  v46 = v98;
  v47 = v99;
  v48 = v102;
  v49 = v45;
  v50 = v106;
  *(v91 + v90) = v49;
  v92 = *(v50 + 48);
  v93 = v47 + 8 * v46;
  v48();
  v51 = [objc_opt_self() cannedCategory];
  v52 = v98;
  v53 = v99;
  v54 = v102;
  v55 = v51;
  v56 = v106;
  *(v93 + v92) = v55;
  v94 = *(v56 + 48);
  v95 = v53 + 9 * v52;
  v54();
  v57 = [objc_opt_self() otherCategory];
  v58 = v98;
  v59 = v99;
  v60 = v102;
  v61 = v57;
  v62 = v106;
  *(v95 + v94) = v61;
  v96 = *(v62 + 48);
  v97 = v59 + 10 * v58;
  v60();
  v63 = [objc_opt_self() mailboxCategory];
  v64 = v98;
  v65 = v99;
  v66 = v102;
  v67 = v63;
  v68 = v106;
  *(v97 + v96) = v67;
  v104 = *(v68 + 48);
  v105 = v65 + 11 * v64;
  v66();
  v69 = [objc_opt_self() suggestedSearchCategory];
  v70 = v107;
  *(v105 + v104) = v69;
  sub_1002612B0();
  v108 = v70;

  v120 = v108;
  GroupedSearchItems.SectionCache.init(sortedSectionKinds:makeItem:)();
  v118 = *(v111 + 32);
  v117 = v111 + 32;
  v118(v115, v113, v116);
  sub_100264880();
  return (v118)(v119, v115, v116);
}

void *sub_100409A48(const void *a1, void *a2)
{
  v7 = type metadata accessor for GroupedSearchItems.SectionCache();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = sub_10025C9B0(&qword_1006DBCA8);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = sub_10025C9B0(&qword_1006DBCA8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_100409C70(uint64_t a1)
{
  v10 = a1;
  v14 = 0;
  v13 = 0;
  v4 = (*(*(sub_10025C9B0(&qword_1006DBCA8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = &v3 - v4;
  v14 = __chkstk_darwin(v10);
  v13 = v1;
  v11 = type metadata accessor for GroupedSearchItems.SectionCache();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  (*(v8 + 16))(v5, v10);
  (*(v8 + 56))(v5, 0, 1, v11);
  v6 = (v1 + OBJC_IVAR____TtC10MobileMail30SearchCollectionViewDataSource____lazy_storage___viewModel);
  v7 = &v12;
  swift_beginAccess();
  sub_100409A48(v5, v6);
  swift_endAccess();
  return (*(v8 + 8))(v10, v11);
}

uint64_t SearchCollectionViewDataSource.isEmpty.getter()
{
  v9 = 0;
  v1 = type metadata accessor for GroupedSearchItems.SectionCache();
  v3 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v4 = &v3 - v3;
  v9 = v0;
  sub_100408CD0(&v3 - v3);
  v6 = GroupedSearchItems.SectionCache.cachedSections()();
  sub_100409C70(v4);
  v8 = v6;
  v5 = sub_10025C9B0(&qword_1006DBCC0);
  sub_10040BA74();
  v7 = Collection.isEmpty.getter();

  return v7 & 1;
}

id SearchCollectionViewDataSource.dataSource.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail30SearchCollectionViewDataSource____lazy_storage___dataSource);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_100409FF4(v6);
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail30SearchCollectionViewDataSource____lazy_storage___dataSource);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}