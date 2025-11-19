void sub_10030CD1C(int a1, id a2)
{
  v2 = [a2 navigationController];
  if (v2)
  {
    v3 = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    v6[4] = sub_100097224;
    v6[5] = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_100004AE4;
    v6[3] = &unk_1006367A8;
    v5 = _Block_copy(v6);

    [v3 dismissViewControllerAnimated:1 completion:v5];
    _Block_release(v5);
  }
}

void sub_10030CE08()
{
  v0 = sub_100417D54();
  if (!v0 || (v1 = v0, v2 = [v0 text], v1, !v2))
  {
LABEL_7:

    sub_100417EA8();
    return;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = sub_100122BFC(v3, v5);

    if (!v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  sub_10030A7D0();
}

void sub_10030CF1C()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_100142308(1, 0, 0);
    }
  }
}

id sub_10030D054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_device;
  v12 = type metadata accessor for FMIPDevice();
  (*(*(v12 - 8) + 56))(&v7[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_primaryItemPart;
  v14 = type metadata accessor for FMIPItem();
  (*(*(v14 - 8) + 56))(&v7[v13], 1, 1, v14);
  v15 = &v7[OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_mode];
  *v15 = 0;
  v15[4] = 1;
  v16 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v17 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = 0;
    goto LABEL_6;
  }

  v17 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = String._bridgeToObjectiveC()();

LABEL_6:
  v21.receiver = v7;
  v21.super_class = type metadata accessor for FMDevicePhoneNumberViewController();
  v19 = objc_msgSendSuper2(&v21, "initWithTitle:detailText:symbolName:contentLayout:", v16, v17, v18, a7);

  return v19;
}

id sub_10030D2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_device;
  v11 = type metadata accessor for FMIPDevice();
  (*(*(v11 - 8) + 56))(&v6[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_primaryItemPart;
  v13 = type metadata accessor for FMIPItem();
  (*(*(v13 - 8) + 56))(&v6[v12], 1, 1, v13);
  v14 = &v6[OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_mode];
  *v14 = 0;
  v14[4] = 1;
  v15 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  v19.receiver = v6;
  v19.super_class = type metadata accessor for FMDevicePhoneNumberViewController();
  v17 = objc_msgSendSuper2(&v19, "initWithTitle:detailText:icon:contentLayout:", v15, v16, a5, a6);

  return v17;
}

id sub_10030D50C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMDevicePhoneNumberViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMDevicePhoneNumberViewController()
{
  result = qword_1006BB460;
  if (!qword_1006BB460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10030D5F8()
{
  sub_100096CC0(319, &qword_1006AFC78, &type metadata accessor for FMIPDevice);
  if (v0 <= 0x3F)
  {
    sub_100096CC0(319, &qword_1006BA400, &type metadata accessor for FMIPItem);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10030D700(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);
  v8 = *(v4 + 56);
  v9 = *(v4 + 72);
  v10[0] = *(v4 + 40);
  v10[1] = v8;
  v11 = v9;
  sub_10030BBAC(a1, a2, a3, a4, v5, v6, v7, v10);
}

uint64_t sub_10030D744(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_10030D760()
{
  result = qword_1006AF730;
  if (!qword_1006AF730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006AF730);
  }

  return result;
}

void *sub_10030D7C4(void *a1, uint64_t a2)
{
  if ([a1 value])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  sub_10017EE08(v20, &v18);
  if (*(&v19 + 1))
  {
    sub_10000905C(0, &qword_1006BB4D8);
    if (swift_dynamicCast())
    {
      v4 = [v16 stringValue];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v8 = 1;
      goto LABEL_11;
    }
  }

  else
  {
    sub_10000D2C0(&v18);
  }

  sub_10017EE08(v20, &v18);
  if (!*(&v19 + 1))
  {
    sub_10000D2C0(&v18);
    return sub_10000D2C0(v20);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_10000D2C0(v20);
  }

  v8 = 0;
  v5 = v16;
  v7 = v17;
LABEL_11:
  type metadata accessor for FMContactsUtilities();
  if (sub_100476878(v5, v7))
  {

    [objc_opt_self() showOfferToSelfErrorInViewController:a2 completion:0];
    return sub_10000D2C0(v20);
  }

  v9 = [a1 contact];
  v10 = objc_allocWithZone(MFComposeRecipient);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithContact:v9 address:v11 kind:v8];

  v13 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView;
  result = *(a2 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView);
  if (result)
  {
    [result addRecipient:v12];
    sub_10019415C();
    result = *(a2 + v13);
    if (result)
    {
      [result clearText];
      *(a2 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchedContacts) = 0;

      sub_100195F20();

      sub_10000D2C0(v20);
      v15 = (a2 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientText);
      *v15 = 0;
      v15[1] = 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10030DAE0(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v25 = *(v5 - 8);
  v26 = v5;
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v23 = v8;
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  sub_10000905C(0, &qword_1006AEDC0);
  v15 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v22 = *(v9 + 8);
  v22(v12, v8);
  v16 = swift_allocObject();
  v17 = v24;
  *(v16 + 16) = a1;
  *(v16 + 24) = v17;
  aBlock[4] = sub_10030DE6C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100636820;
  v18 = _Block_copy(aBlock);
  v19 = a1;
  v20 = v17;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918();
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v18);

  (*(v27 + 8))(v4, v2);
  (*(v25 + 8))(v7, v26);
  return (v22)(v14, v23);
}

void sub_10030DEB8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subDetailText);
  *v5 = a1;
  v5[1] = a2;

  v6 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryDetailLabel;
  v7 = *(v2 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryDetailLabel);
  if (a1 || a2 != 0xE000000000000000)
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v8 = 1;
  }

  v9 = v7;

  [v9 setHidden:v8 & 1];

  v10 = *(v2 + v6);

  v11 = String._bridgeToObjectiveC()();

  [v10 setText:v11];
}

id sub_10030DFDC()
{
  if (v0[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_isSelectable])
  {
    v1 = 1;
  }

  else
  {
    v1 = v0[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitleIsCopyToPasteboardEnabled];
  }

  [v0 setUserInteractionEnabled:v1];
  v2 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel;
  v3 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitleIsCopyToPasteboardEnabled;
  result = [*&v0[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel] setUserInteractionEnabled:v0[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitleIsCopyToPasteboardEnabled]];
  *(*&v0[v2] + OBJC_IVAR____TtC6FindMy15FMCopyableLabel_isCopyToPasteboardEnabled) = v0[v3];
  return result;
}

id sub_10030E068(char a1, double a2)
{
  v5 = &v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_identifier];
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_backgroundView;
  *&v2[v6] = [objc_allocWithZone(UIView) init];
  v7 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_titleLabel;
  *&v2[v7] = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel;
  type metadata accessor for FMCopyableLabel();
  *&v2[v8] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryDetailLabel;
  *&v2[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_chevron;
  v11 = sub_1003DE824();
  v12 = [objc_allocWithZone(UIImageView) initWithImage:v11];

  *&v2[v10] = v12;
  v13 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_separator;
  *&v2[v13] = [objc_allocWithZone(UIView) init];
  *&v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabelTrailingConstraint] = 0;
  v14 = &v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_title];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitle];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subDetailText];
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitleColor;
  *&v2[v17] = [objc_opt_self() secondaryLabelColor];
  v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitleIsSingleLine] = 0;
  v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_titleIsSingleLine] = 0;
  v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitleIsCopyToPasteboardEnabled] = 0;
  v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_separated] = 1;
  v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_enabled] = 1;
  v18 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_isChevronVisible;
  v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_isChevronVisible] = 0;
  v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_isSelectable] = 1;
  *&v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_backgroundOffset] = a2;
  v2[v18] = a1;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for FMSettingSingleRowView();
  v19 = objc_msgSendSuper2(&v21, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10030E434();
  sub_10030E8AC(a2);
  [v19 setClipsToBounds:0];

  return v19;
}

uint64_t sub_10030E378()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_title + 8);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_title);

    v3._countAndFlagsBits = v2;
    v3._object = v1;
    String.append(_:)(v3);
  }

  v4 = *(v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitle + 8);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitle);
    String.append(_:)(*(&v4 - 1));
    v6._countAndFlagsBits = 44;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
  }

  return 0;
}

id sub_10030E434()
{
  v1 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_titleLabel;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_titleLabel];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 preferredFontForTextStyle:UIFontTextStyleBody];
  [v4 setFont:v5];

  [*&v0[v1] setNumberOfLines:0];
  [*&v0[v1] setAdjustsFontForContentSizeCategory:1];
  [*&v0[v1] setTextAlignment:4];
  v6 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel;
  v7 = *&v0[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel];
  v8 = [v3 preferredFontForTextStyle:UIFontTextStyleBody];
  [v7 setFont:v8];

  v9 = *&v0[v6];
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 secondaryLabelColor];
  [v11 setTextColor:v12];

  v13 = qword_1006AEC30;
  v14 = *&v0[v6];
  if (v13 != -1)
  {
    swift_once();
  }

  [v14 setTextAlignment:2 * (qword_1006D47A0 != 1)];

  [*&v0[v6] setNumberOfLines:0];
  [*&v0[v6] setAdjustsFontForContentSizeCategory:1];
  v15 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryDetailLabel;
  v16 = *&v0[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryDetailLabel];
  v17 = [v3 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v16 setFont:v17];

  v18 = *&v0[v15];
  v19 = [v10 secondaryLabelColor];
  [v18 setTextColor:v19];

  [*&v0[v15] setTextAlignment:2 * (qword_1006D47A0 != 1)];
  [*&v0[v15] setNumberOfLines:0];
  LODWORD(v20) = 1144750080;
  [*&v0[v15] setContentCompressionResistancePriority:0 forAxis:v20];
  [*&v0[v15] setAdjustsFontForContentSizeCategory:1];
  v21 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_chevron;
  [*&v0[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_chevron] setHidden:(v0[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_isChevronVisible] & 1) == 0];
  [*&v0[v21] setContentMode:1];
  v22 = *&v0[v21];
  v23 = [v10 tertiaryLabelColor];
  [v22 setTintColor:v23];

  v24 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_separator;
  v25 = *&v0[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_separator];
  v26 = [v10 labelColor];
  v27 = [v26 colorWithAlphaComponent:0.1];

  [v25 setBackgroundColor:v27];
  [v0 addSubview:*&v0[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_backgroundView]];
  [v0 addSubview:*&v0[v1]];
  [v0 addSubview:*&v0[v6]];
  [v0 addSubview:*&v0[v15]];
  [v0 addSubview:*&v0[v21]];
  v28 = *&v0[v24];

  return [v0 addSubview:v28];
}

void sub_10030E8AC(double a1)
{
  v3 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_backgroundView;
  [*&v1[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_backgroundView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v115 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_titleLabel;
  [*&v1[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_titleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v113 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel;
  [*&v1[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v114 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryDetailLabel;
  [*&v1[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryDetailLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v110 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_chevron;
  [*&v1[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_chevron] setTranslatesAutoresizingMaskIntoConstraints:0];
  v111 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_separator;
  [*&v1[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_separator] setTranslatesAutoresizingMaskIntoConstraints:0];
  v112 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1005521F0;
  v5 = [*&v1[v3] topAnchor];
  v6 = [v1 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  v8 = [*&v1[v3] bottomAnchor];
  v9 = [v1 bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v4 + 40) = v10;
  v11 = [*&v1[v3] leadingAnchor];
  v12 = [v1 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:-a1];

  *(v4 + 48) = v13;
  v14 = [*&v1[v3] trailingAnchor];
  v15 = [v1 trailingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:a1];

  *(v4 + 56) = v16;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v112 activateConstraints:isa];

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100552EF0;
  v19 = [*&v1[v115] leadingAnchor];
  v20 = [v1 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v18 + 32) = v21;
  v22 = [*&v1[v115] topAnchor];
  v23 = [v1 topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:16.0];

  *(v18 + 40) = v24;
  v25 = [*&v1[v115] widthAnchor];
  v26 = [v25 constraintGreaterThanOrEqualToConstant:105.0];

  *(v18 + 48) = v26;
  v27 = Array._bridgeToObjectiveC()().super.isa;

  [v112 activateConstraints:v27];

  v28 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabelTrailingConstraint;
  v29 = *&v1[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabelTrailingConstraint];
  if (v1[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_isChevronVisible] == 1)
  {
    if (v29)
    {
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1005528C0;
      *(v30 + 32) = v29;
      v31 = v29;
      v32 = Array._bridgeToObjectiveC()().super.isa;

      [v112 deactivateConstraints:v32];
    }

    v33 = [*&v1[v113] trailingAnchor];
    v34 = [*&v1[v110] leadingAnchor];
    v35 = [v33 constraintEqualToAnchor:v34 constant:-1.0];

    v36 = *&v1[v28];
    *&v1[v28] = v35;
    v37 = v35;

    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_100552EF0;
    v39 = [*&v1[v113] leadingAnchor];
    v40 = [*&v1[v115] trailingAnchor];
    v41 = [v39 constraintGreaterThanOrEqualToAnchor:v40 constant:20.0];

    *(v38 + 32) = v41;
    *(v38 + 40) = v37;
    v42 = *&v1[v113];
    v109 = v37;
    v43 = [v42 topAnchor];
    v44 = [*&v1[v115] topAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];

    *(v38 + 48) = v45;
    v46 = Array._bridgeToObjectiveC()().super.isa;

    [v112 activateConstraints:v46];

    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1005521F0;
    v48 = [*&v1[v110] trailingAnchor];
    v49 = [v1 trailingAnchor];
    v50 = [v48 constraintEqualToAnchor:v49 constant:-1.0];

    *(v47 + 32) = v50;
    v51 = [*&v1[v110] centerYAnchor];
    v52 = [v1 centerYAnchor];
    v53 = [v51 constraintEqualToAnchor:v52];

    *(v47 + 40) = v53;
    v54 = [*&v1[v110] widthAnchor];
    v55 = [v54 constraintEqualToConstant:18.0];

    *(v47 + 48) = v55;
    v56 = [*&v1[v110] heightAnchor];
    v57 = [v56 constraintEqualToConstant:18.0];

    *(v47 + 56) = v57;
    p_ivar_lyt = (&LocateDeviceIntentResponse__metaData + 16);
  }

  else
  {
    if (v29)
    {
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_1005528C0;
      *(v59 + 32) = v29;
      v60 = v29;
      v61 = Array._bridgeToObjectiveC()().super.isa;

      [v112 deactivateConstraints:v61];
    }

    v62 = [*&v1[v113] trailingAnchor];
    v63 = [v1 trailingAnchor];
    v64 = [v62 constraintEqualToAnchor:v63];

    v65 = *&v1[v28];
    *&v1[v28] = v64;
    v66 = v64;

    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_100552EF0;
    v68 = [*&v1[v113] leadingAnchor];
    v69 = [*&v1[v115] trailingAnchor];
    v70 = [v68 constraintGreaterThanOrEqualToAnchor:v69 constant:20.0];

    *(v67 + 32) = v70;
    *(v67 + 40) = v66;
    v71 = *&v1[v113];
    v109 = v66;
    v72 = [v71 topAnchor];
    v73 = [*&v1[v115] topAnchor];
    v74 = [v72 constraintEqualToAnchor:v73];

    *(v67 + 48) = v74;
    p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
  }

  v75 = Array._bridgeToObjectiveC()().super.isa;

  [v112 activateConstraints:v75];

  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_100552EF0;
  v77 = [*&v1[v114] leadingAnchor];
  v78 = [*&v1[v113] leadingAnchor];
  v79 = [v77 constraintEqualToAnchor:v78];

  *(v76 + 32) = v79;
  v80 = [*&v1[v114] trailingAnchor];
  v81 = [*&v1[v113] trailingAnchor];
  v82 = [v80 constraintEqualToAnchor:v81];

  *(v76 + 40) = v82;
  v83 = [*&v1[v114] topAnchor];
  v84 = [*&v1[v113] p_ivar_lyt[430]];
  v85 = [v83 constraintEqualToAnchor:v84];

  *(v76 + 48) = v85;
  v86 = Array._bridgeToObjectiveC()().super.isa;

  [v112 activateConstraints:v86];

  v117 = &type metadata for SolariumFeatureFlag;
  v87 = sub_10000BD04();
  v118 = v87;
  LOBYTE(v86) = isFeatureEnabled(_:)();
  sub_100006060(v116);
  v88 = 0.0;
  if ((v86 & 1) == 0)
  {
    v117 = &type metadata for SolariumFeatureFlag;
    v118 = v87;
    v89 = isFeatureEnabled(_:)();
    sub_100006060(v116);
    v88 = 16.0;
    if ((v89 & 1) == 0)
    {
      if (qword_1006AEC30 != -1)
      {
        swift_once();
      }

      v88 = *&qword_1006D4798;
    }
  }

  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_100555280;
  v91 = [*&v1[v111] topAnchor];
  v92 = [*&v1[v115] p_ivar_lyt[430]];
  v93 = [v91 constraintGreaterThanOrEqualToAnchor:v92 constant:16.0];

  *(v90 + 32) = v93;
  v94 = [*&v1[v111] topAnchor];
  v95 = [*&v1[v114] p_ivar_lyt[430]];
  v96 = [v94 constraintGreaterThanOrEqualToAnchor:v95 constant:16.0];

  *(v90 + 40) = v96;
  v97 = [*&v1[v111] leadingAnchor];
  v98 = [v1 leadingAnchor];
  v99 = [v97 constraintEqualToAnchor:v98];

  *(v90 + 48) = v99;
  v100 = [*&v1[v111] trailingAnchor];
  v101 = [v1 trailingAnchor];
  v102 = [v100 constraintEqualToAnchor:v101 constant:v88];

  *(v90 + 56) = v102;
  v103 = [*&v1[v111] p_ivar_lyt[430]];
  v104 = [v1 p_ivar_lyt[430]];
  v105 = [v103 constraintEqualToAnchor:v104];

  *(v90 + 64) = v105;
  v106 = [*&v1[v111] heightAnchor];
  v107 = [v106 constraintEqualToConstant:1.0];

  *(v90 + 72) = v107;
  v108 = Array._bridgeToObjectiveC()().super.isa;

  [v112 activateConstraints:v108];
}

void sub_10030F74C(uint64_t a1, uint64_t a2)
{
  sub_10000905C(0, &qword_1006B0C30);
  sub_1000D5BCC();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for FMSettingSingleRowView();
  objc_msgSendSuper2(&v9, "touchesBegan:withEvent:", isa, a2);

  if (v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_isSelectable] == 1)
  {
    v5 = *&v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_backgroundView];
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 secondarySystemFillColor];
    [v7 setBackgroundColor:v8];
  }
}

void sub_10030F904(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  sub_10000905C(0, &qword_1006B0C30);
  sub_1000D5BCC();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a4;
  v9 = a1;
  isa = Set._bridgeToObjectiveC()().super.isa;

  v15.receiver = v9;
  v15.super_class = type metadata accessor for FMSettingSingleRowView();
  objc_msgSendSuper2(&v15, *a5, isa, v8);

  v11 = *&v9[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_backgroundView];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 clearColor];
  [v13 setBackgroundColor:v14];
}

id sub_10030FA68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMSettingSingleRowView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10030FBBC()
{
  v1 = (v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_identifier);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_backgroundView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_titleLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel;
  type metadata accessor for FMCopyableLabel();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryDetailLabel;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_chevron;
  v7 = sub_1003DE824();
  v8 = [objc_allocWithZone(UIImageView) initWithImage:v7];

  *(v0 + v6) = v8;
  v9 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_separator;
  *(v0 + v9) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabelTrailingConstraint) = 0;
  v10 = (v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_title);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitle);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subDetailText);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitleColor;
  *(v0 + v13) = [objc_opt_self() secondaryLabelColor];
  *(v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitleIsSingleLine) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_titleIsSingleLine) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitleIsCopyToPasteboardEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_separated) = 1;
  *(v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_enabled) = 1;
  *(v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_isChevronVisible) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_isSelectable) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10030FE88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMScrollView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10030FF84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMBlurredView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100310014()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMNoLocationBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1003100E4()
{
  v1 = v0 + OBJC_IVAR____TtC6FindMy26FMNoLocationBackgroundView_appliedStyle;
  v2 = [objc_opt_self() systemBlueColor];
  v3 = [v2 colorWithAlphaComponent:0.2];

  v4 = [v3 CGColor];
  *v1 = xmmword_10055D670;
  *(v1 + 16) = xmmword_10055D680;
  *(v1 + 32) = xmmword_10055CCB0;
  *(v1 + 48) = xmmword_1005526C0;
  __asm
  {
    FMOV            V0.2D, #20.0
    FMOV            V1.2D, #15.0
  }

  *(v1 + 64) = _Q0;
  *(v1 + 80) = _Q1;
  *(v1 + 96) = xmmword_10055CCC0;
  *(v1 + 112) = vdupq_n_s64(0x3FD999999999999AuLL);
  __asm { FMOV            V0.2D, #30.0 }

  *(v1 + 128) = _Q0;
  *(v1 + 144) = xmmword_10055CCD0;
  *(v1 + 160) = v4;
  *(v1 + 168) = 1;
  v12 = OBJC_IVAR____TtC6FindMy26FMNoLocationBackgroundView_centerCircle;
  *(v0 + v12) = [objc_allocWithZone(CALayer) init];
  v13 = OBJC_IVAR____TtC6FindMy26FMNoLocationBackgroundView_centerPlaceholder;
  *(v0 + v13) = [objc_allocWithZone(CALayer) init];
  v14 = OBJC_IVAR____TtC6FindMy26FMNoLocationBackgroundView_centerImage;
  *(v0 + v14) = [objc_allocWithZone(CALayer) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for FMDeviceCellViewModel()
{
  result = qword_1006BB6B8;
  if (!qword_1006BB6B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003102F8()
{
  sub_10000AF8C();
  if (v0 <= 0x3F)
  {
    sub_1001D6088();
    if (v1 <= 0x3F)
    {
      sub_100310478();
      if (v2 <= 0x3F)
      {
        sub_10002C124(319, &qword_1006B1398, &qword_1006BC2B0);
        if (v3 <= 0x3F)
        {
          sub_10002C124(319, &unk_1006B13A0, &qword_1006C0000);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Date();
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

void sub_100310478()
{
  if (!qword_1006BB6C8)
  {
    sub_10007EC08(&qword_1006B41A0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006BB6C8);
    }
  }
}

uint64_t sub_1003104DC@<X0>(NSString *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, void *a10, unsigned __int8 a11)
{
  v377 = a8;
  v390 = a7;
  v380 = a6;
  v381 = a4;
  v394 = a1;
  v391 = a9;
  v393 = type metadata accessor for FMIPDevice();
  v392 = *(v393 - 8);
  v14 = __chkstk_darwin(v393);
  v349 = &v348 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v352 = &v348 - v17;
  __chkstk_darwin(v16);
  v351 = &v348 - v18;
  v19 = sub_10007EBC0(&qword_1006B3B10);
  __chkstk_darwin(v19 - 8);
  v353 = &v348 - v20;
  v355 = type metadata accessor for FMIPPerson();
  v354 = *(v355 - 8);
  __chkstk_darwin(v355);
  v350 = &v348 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v389 = type metadata accessor for FMIPFeatures();
  v388 = *(v389 - 8);
  v22 = __chkstk_darwin(v389);
  v387 = &v348 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v386 = &v348 - v24;
  v25 = sub_10007EBC0(&unk_1006B0000);
  v26 = __chkstk_darwin(v25 - 8);
  v366 = &v348 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v367 = &v348 - v28;
  v385 = type metadata accessor for Date();
  v384 = *(v385 - 8);
  v29 = __chkstk_darwin(v385);
  v359 = &v348 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v383 = &v348 - v31;
  v32 = type metadata accessor for FMIPDeviceStatus();
  v410 = *(v32 - 8);
  v411 = v32;
  v33 = __chkstk_darwin(v32);
  v408 = &v348 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v409 = &v348 - v35;
  v36 = sub_10007EBC0(&unk_1006C0220);
  v37 = __chkstk_darwin(v36 - 8);
  v365 = &v348 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v358 = &v348 - v40;
  v41 = __chkstk_darwin(v39);
  v368 = &v348 - v42;
  v43 = __chkstk_darwin(v41);
  object = &v348 - v44;
  __chkstk_darwin(v43);
  v356 = &v348 - v45;
  v46 = sub_10007EBC0(&unk_1006BB1C0);
  __chkstk_darwin(v46 - 8);
  v379 = &v348 - v47;
  v406 = type metadata accessor for FMIPItemState();
  v412 = *(v406 - 8);
  v48 = __chkstk_darwin(v406);
  v405 = &v348 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v404 = &v348 - v50;
  v362 = type metadata accessor for FMIPBatteryStatus();
  v376 = *(v362 - 1);
  v51 = __chkstk_darwin(v362);
  v372 = &v348 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  countAndFlagsBits = &v348 - v53;
  v403 = type metadata accessor for FMIPItemBatteryStatus();
  v364 = *(v403 - 8);
  __chkstk_darwin(v403);
  v361 = &v348 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_10007EBC0(&qword_1006B07D0);
  v56 = __chkstk_darwin(v55 - 8);
  v363 = &v348 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __chkstk_darwin(v56);
  v374 = &v348 - v59;
  v60 = __chkstk_darwin(v58);
  v407 = &v348 - v61;
  v62 = __chkstk_darwin(v60);
  v357 = &v348 - v63;
  v64 = __chkstk_darwin(v62);
  v373 = (&v348 - v65);
  v66 = __chkstk_darwin(v64);
  v369 = &v348 - v67;
  v68 = __chkstk_darwin(v66);
  v378 = &v348 - v69;
  __chkstk_darwin(v68);
  v71 = &v348 - v70;
  v72 = type metadata accessor for FMIPItem();
  v417 = *(v72 - 8);
  v73 = v417;
  v74 = __chkstk_darwin(v72);
  v375 = &v348 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v74);
  v360 = &v348 - v76;
  v77 = type metadata accessor for FMIPDeviceState();
  v78 = *(v77 - 1);
  v79 = __chkstk_darwin(v77);
  v81 = &v348 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v79);
  v83 = (&v348 - v82);
  v401 = type metadata accessor for FMDeviceCellViewModel();
  __chkstk_darwin(v401);
  v400 = &v348 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v413 = a5;
  v382 = sub_1004A43A0(a2, a5, 0);
  v85 = v73 + 48;
  v86 = *(v73 + 48);
  LODWORD(v420) = v86(a3, 1, v72);
  v419 = a2;
  FMIPDevice.state.getter();
  static FMIPDeviceState.isThisDevice.getter();
  v395 = sub_100316F8C(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState);
  v402 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v87 = *(v78 + 8);
  v398 = v81;
  (v87)(v81, v77);
  v397 = v83;
  v399 = v77;
  v396 = v87;
  (v87)(v83, v77);
  v418 = a3;
  sub_100007204(a3, v71, &qword_1006B07D0);
  v415 = v86;
  v416 = v85;
  v88 = v86(v71, 1, v72);
  v89 = v417;
  v414 = v72;
  if (v88 == 1)
  {
    sub_100012DF0(v71, &qword_1006B07D0);
LABEL_4:
    v95 = 0;
    goto LABEL_5;
  }

  v90 = v360;
  (*(v417 + 32))(v360, v71, v72);
  v91 = v361;
  FMIPItem.batteryStatus.getter();
  (*(v89 + 8))(v90, v72);
  v92 = v364;
  v93 = v403;
  v94 = (*(v364 + 88))(v91, v403);
  if (v94 == enum case for FMIPItemBatteryStatus.unknown(_:))
  {
    goto LABEL_4;
  }

  if (v94 == enum case for FMIPItemBatteryStatus.highPower(_:))
  {
    v95 = 2;
  }

  else if (v94 == enum case for FMIPItemBatteryStatus.fresh(_:))
  {
    v95 = 1;
  }

  else if (v94 == enum case for FMIPItemBatteryStatus.earlyLife(_:))
  {
    v95 = 3;
  }

  else if (v94 == enum case for FMIPItemBatteryStatus.lateLife(_:))
  {
    v95 = 4;
  }

  else if (v94 == enum case for FMIPItemBatteryStatus.replace(_:))
  {
    v95 = 5;
  }

  else
  {
    if (v94 != enum case for FMIPItemBatteryStatus.dead(_:))
    {
      (*(v92 + 8))(v91, v93);
      goto LABEL_4;
    }

    v95 = 6;
  }

LABEL_5:
  if (v420 != 1)
  {
    if (v95 == 5)
    {
    }

    else
    {
      v115 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v115 & 1) == 0)
      {
        if (v95 <= 2)
        {
          v116 = v418;
        }

        else
        {
          if (v95 > 4)
          {
            v117 = v418;

            v109 = v117;
            v105 = 0;
            LODWORD(v403) = 0;
            LODWORD(v376) = 1;
            v101 = 1;
            goto LABEL_40;
          }

          v116 = v418;
        }

        v118 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v105 = 0;
        LODWORD(v403) = 0;
        LODWORD(v376) = v118;
        v101 = v118;
        v109 = v116;
        goto LABEL_40;
      }
    }

    v105 = 0;
    LODWORD(v403) = 0;
    LODWORD(v376) = 1;
    v101 = 1;
LABEL_31:
    v109 = v418;
LABEL_40:
    v110 = v378;
    goto LABEL_41;
  }

  FMIPDevice.batteryLevel.getter();
  v97 = v96;
  if (FMIPDevice.category.getter() == 0x6863746157 && v98 == 0xE500000000000000)
  {

    v99 = 0.1;
  }

  else
  {
    v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v100)
    {
      v99 = 0.1;
    }

    else
    {
      v99 = 0.2;
    }
  }

  v101 = v97 < v99;
  v102 = v397;
  FMIPDevice.state.getter();
  v103 = v398;
  static FMIPDeviceState.isLowPowerModeEnabled.getter();
  v104 = v399;
  v105 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v106 = v396;
  (v396)(v103, v104);
  (v106)(v102, v104);
  FMIPDevice.batteryStatus.getter();
  v107 = v362;
  (*(v376 + 104))(v372, enum case for FMIPBatteryStatus.charging(_:), v362);
  sub_100316F8C(&unk_1006C1DB0, &type metadata accessor for FMIPBatteryStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v421 == v426 && v422 == v427)
  {
    LODWORD(v403) = 1;
  }

  else
  {
    LODWORD(v403) = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v108 = *(v376 + 8);
  v108(v372, v107);
  v108(countAndFlagsBits, v107);

  if (!((v97 < v99) | v105 & 1))
  {
    LODWORD(v376) = 0;
    v105 = 0;
    v101 = 0;
    goto LABEL_31;
  }

  v109 = v418;
  v110 = v378;
  if (v403)
  {
    LODWORD(v376) = 0;
    v111 = 1;
    v112 = &v428;
  }

  else
  {
    v113 = v418;
    FMIPDevice.batteryLevel.getter();
    v109 = v113;
    LODWORD(v403) = 0;
    v111 = v114 != 0.0;
    v112 = &v408;
  }

  *(v112 - 64) = v111;
LABEL_41:
  sub_100007204(v109, v110, &qword_1006B07D0);
  v119 = v414;
  if (v415(v110, 1, v414) == 1)
  {
    sub_100012DF0(v110, &qword_1006B07D0);
    v120 = 0;
  }

  else
  {
    v121 = v404;
    FMIPItem.state.getter();
    (*(v417 + 8))(v110, v119);
    v122 = v405;
    static FMIPItemState.isBTConnected.getter();
    sub_100316F8C(&qword_1006C0350, &type metadata accessor for FMIPItemState);
    v123 = v406;
    v120 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v124 = *(v412 + 8);
    v124(v122, v123);
    v124(v121, v123);
  }

  v125 = v379;
  FMIPDevice.itemGroup.getter();
  v126 = type metadata accessor for FMIPItemGroup();
  v127 = *(v126 - 8);
  v128 = (*(v127 + 48))(v125, 1, v126);
  LODWORD(v364) = v95;
  if (v128 == 1)
  {
    sub_100012DF0(v125, &unk_1006BB1C0);
    v129 = 0;
  }

  else
  {
    v130 = v404;
    FMIPItemGroup.state.getter();
    (*(v127 + 8))(v125, v126);
    v131 = v405;
    static FMIPItemState.isBTConnected.getter();
    sub_100316F8C(&qword_1006C0350, &type metadata accessor for FMIPItemState);
    v132 = v406;
    v129 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v133 = *(v412 + 8);
    v133(v131, v132);
    v133(v130, v132);
  }

  v134 = v418;
  LODWORD(v379) = v105;
  v135 = v397;
  v136 = v419;
  FMIPDevice.state.getter();
  v137 = v398;
  static FMIPDeviceState.isDeviceWithYou.getter();
  v138 = v399;
  v139 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v140 = v137;
  v141 = v396;
  (v396)(v140, v138);
  (v141)(v135, v138);
  LODWORD(v378) = v101;
  LODWORD(v372) = v139;
  if (v420 == 1)
  {
    v147 = v402 | v129 | v139;
    v148 = object;
    FMIPDevice.bestLocation.getter();
    v149 = type metadata accessor for FMIPLocation();
    v150 = *(v149 - 8);
    v151 = (*(v150 + 48))(v148, 1, v149);
    v144 = v414;
    v146 = v417;
    if (v151 == 1)
    {
      sub_100012DF0(v148, &unk_1006C0220);
      v142 = v418;
      v152 = v401;
      v153 = v400;
      if (v147)
      {
LABEL_72:

        v154 = 1.79769313e308;
        goto LABEL_73;
      }

LABEL_52:
      countAndFlagsBits = 0;
      object = 0;
      v154 = 1.79769313e308;
LABEL_74:
      v178 = v373;
      goto LABEL_75;
    }

    v158 = FMIPLocation.location.getter();
    (*(v150 + 8))(v148, v149);
    v152 = v401;
    v153 = v400;
    if (!v413)
    {

      v142 = v418;
      if (v147)
      {
        goto LABEL_72;
      }

      goto LABEL_52;
    }

    v159 = qword_1006AEC58;
    v160 = v413;
    v142 = v418;
    if (v159 != -1)
    {
      swift_once();
    }

    v161 = [qword_1006D48A8 localizedDistanceFromLocation:v158 toLocation:v160];
    v162 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v164 = v163;

    if (v147)
    {

LABEL_65:
      v154 = 0.01;
      v146 = v417;
      v136 = v419;
LABEL_73:
      v174 = [objc_opt_self() mainBundle];
      v175._countAndFlagsBits = 0xD00000000000001DLL;
      v429._object = 0x8000000100590BA0;
      v175._object = 0x8000000100590B80;
      v429._countAndFlagsBits = 0xD00000000000002FLL;
      v176._countAndFlagsBits = 0;
      v176._object = 0xE000000000000000;
      v177 = NSLocalizedString(_:tableName:bundle:value:comment:)(v175, 0, v174, v176, v429);
      countAndFlagsBits = v177._countAndFlagsBits;
      object = v177._object;

      goto LABEL_74;
    }

    object = v164;
    countAndFlagsBits = v162;
    [v158 distanceFromLocation:v160];
    v173 = v172;
  }

  else
  {
    v142 = v134;
    v143 = v369;
    sub_100007204(v134, v369, &qword_1006B07D0);
    v144 = v414;
    v145 = v415(v143, 1, v414);
    v146 = v417;
    if (v145 == 1)
    {
      sub_100012DF0(v143, &qword_1006B07D0);
      goto LABEL_71;
    }

    v155 = v356;
    FMIPItem.location.getter();
    (*(v146 + 8))(v143, v144);
    v156 = type metadata accessor for FMIPLocation();
    v157 = *(v156 - 8);
    if ((*(v157 + 48))(v155, 1, v156) == 1)
    {
      sub_100012DF0(v155, &unk_1006C0220);
LABEL_70:
      v142 = v418;
LABEL_71:
      v152 = v401;
      v153 = v400;
      if (v120)
      {
        goto LABEL_72;
      }

      goto LABEL_52;
    }

    v165 = FMIPLocation.location.getter();
    (*(v157 + 8))(v155, v156);
    if (!v413)
    {

      goto LABEL_70;
    }

    v166 = qword_1006AEC58;
    v167 = v413;
    v142 = v418;
    if (v166 != -1)
    {
      swift_once();
    }

    v168 = [qword_1006D48A8 localizedDistanceFromLocation:v165 toLocation:v167];
    v169 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v171 = v170;

    v152 = v401;
    v153 = v400;
    if (v120)
    {

      goto LABEL_65;
    }

    object = v171;
    countAndFlagsBits = v169;
    [v165 distanceFromLocation:v167];
    v173 = v347;
  }

  v154 = round(v173 / 10.0);
  v146 = v417;
  v178 = v373;
  v136 = v419;
LABEL_75:
  LODWORD(v369) = a11;
  v179 = sub_100314228(v136, v142);
  v181 = v180;
  v182 = sub_10031589C(v136);
  v399 = v183;
  v398 = v181;
  v184 = v142;
  if (v420 == 1)
  {
    v185 = v183;
  }

  else
  {
    v185 = v181;
  }

  v397 = v182;
  v396 = v179;
  if (v420 == 1)
  {
    v179 = v182;
  }

  v186 = v184;
  sub_100007204(v184, v178, &qword_1006B07D0);
  v187 = v415(v178, 1, v144);
  v395 = v185;
  v188 = v185;
  v373 = v179;
  v189 = v179;
  if (v187 == 1)
  {
    sub_100012DF0(v178, &qword_1006B07D0);
    v190 = 0;
    v191 = v186;
  }

  else
  {
    v192 = v404;
    FMIPItem.state.getter();
    v362 = *(v146 + 8);
    (v362)(v178, v144);
    v193 = v405;
    static FMIPItemState.isLocating.getter();
    sub_100316F8C(&qword_1006C0350, &type metadata accessor for FMIPItemState);
    v194 = v406;
    v195 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v196 = v144;
    v197 = v412 + 8;
    v198 = *(v412 + 8);
    v198(v193, v194);
    v412 = v197;
    v198(v192, v194);
    if (v195)
    {
      v191 = v186;
      v199 = v357;
      sub_100007204(v186, v357, &qword_1006B07D0);
      v200 = v415(v199, 1, v196);
      v152 = v401;
      if (v200 == 1)
      {
        sub_100012DF0(v199, &qword_1006B07D0);
        v190 = 0;
      }

      else
      {
        v201 = v404;
        FMIPItem.state.getter();
        (v362)(v199, v196);
        v202 = v405;
        static FMIPItemState.isBTConnected.getter();
        v203 = v406;
        v204 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v205 = v202;
        v191 = v186;
        v198(v205, v203);
        v198(v201, v203);
        v190 = v204 ^ 1;
      }

      v144 = v196;
      v146 = v417;
      v153 = v400;
    }

    else
    {
      v190 = 0;
      v144 = v196;
      v146 = v417;
      v152 = v401;
      v153 = v400;
      v191 = v186;
    }

    v136 = v419;
  }

  v206 = FMIPDevice.isLocating.getter();
  if (v420 == 1)
  {
    v207 = v206;
  }

  else
  {
    v207 = v190;
  }

  LODWORD(v405) = v207;
  v208 = v407;
  (*(v146 + 56))(v407, 1, 1, v144);
  sub_100260334(v136, v208, v413 != 0, 1, v377 & 1, v369 & 1, 0, 0, &v421, 0);
  v209 = v421;
  v210 = v422;
  v212 = v423;
  v211 = v424;

  if (v210)
  {
    v213 = [objc_opt_self() mainBundle];
    v430._object = 0x800000010057DBA0;
    v214._object = 0x800000010057DB70;
    v430._countAndFlagsBits = 0xD000000000000039;
    v214._countAndFlagsBits = 0xD000000000000027;
    v215._countAndFlagsBits = 0;
    v215._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v214, 0, v213, v215, v430);

    sub_10007EBC0(&unk_1006B20B0);
    v216 = swift_allocObject();
    *(v216 + 16) = xmmword_100552210;
    *(v216 + 56) = &type metadata for String;
    v217 = sub_10008EE84();
    *(v216 + 32) = v209;
    *(v216 + 40) = v210;
    *(v216 + 96) = &type metadata for String;
    *(v216 + 104) = v217;
    v191 = v418;
    *(v216 + 64) = v217;
    *(v216 + 72) = v212;
    *(v216 + 80) = v211;
    v406 = String.init(format:_:)();
    v412 = v218;
    v144 = v414;
  }

  else
  {
    v406 = v212;
    v412 = v211;
  }

  v219 = v375;
  sub_100012DF0(v407, &qword_1006B07D0);
  v220 = v374;
  sub_100007204(v191, v374, &qword_1006B07D0);
  v221 = v415(v220, 1, v144);
  v222 = v419;
  v223 = v417;
  if (v221 == 1)
  {
    sub_100012DF0(v220, &qword_1006B07D0);
LABEL_101:
    v236 = v372;
    goto LABEL_104;
  }

  (*(v417 + 32))(v219, v220, v144);
  if (v420 == 1)
  {
    (*(v223 + 8))(v219, v144);
    goto LABEL_101;
  }

  v224 = sub_10034C388(v219, _swiftEmptyArrayStorage, 1, 0, v394);
  v227 = v226;
  v412 = v228;
  if (v225)
  {
    v229 = v225;
    v407 = v224;
    v230 = [objc_opt_self() mainBundle];
    v431._object = 0x800000010057DBA0;
    v231._object = 0x800000010057DB70;
    v431._countAndFlagsBits = 0xD000000000000039;
    v231._countAndFlagsBits = 0xD000000000000027;
    v232._countAndFlagsBits = 0;
    v232._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v231, 0, v230, v232, v431);

    sub_10007EBC0(&unk_1006B20B0);
    v233 = swift_allocObject();
    *(v233 + 16) = xmmword_100552210;
    *(v233 + 56) = &type metadata for String;
    v234 = sub_10008EE84();
    *(v233 + 32) = v407;
    *(v233 + 40) = v229;
    *(v233 + 96) = &type metadata for String;
    *(v233 + 104) = v234;
    *(v233 + 64) = v234;
    *(v233 + 72) = v227;
    *(v233 + 80) = v412;
    v191 = v418;
    v222 = v419;
    v144 = v414;
    v406 = String.init(format:_:)();
    v412 = v235;
  }

  else
  {
    v406 = v226;
  }

  v236 = v372;
  (*(v223 + 8))(v219, v144);
LABEL_104:
  v237 = countAndFlagsBits;
  v238 = object;
  if ((v380 & 1) == 0)
  {

    v237 = 0;
    v238 = 0xE000000000000000;
  }

  v239 = v402 | v236;
  *v153 = v237;
  v153[1] = v238;
  v153[2] = FMIPDevice.identifier.getter();
  v153[3] = v240;
  sub_100007204(v191, v153 + v152[6], &qword_1006B07D0);
  *(v153 + v152[7]) = a10;
  *(v153 + v152[8]) = v381;
  *(v153 + v152[11]) = 0x4040800000000000;
  *(v153 + v152[12]) = 1;

  FMIPDevice.status.getter();
  (*(v410 + 104))(v408, enum case for FMIPDeviceStatus.online(_:), v411);
  sub_100316F8C(&unk_1006C1D40, &type metadata accessor for FMIPDeviceStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v421 == v426 && v422 == v427)
  {
    v241 = v411;
    v242 = *(v410 + 8);
    v242(v408, v411);
    v242(v409, v241);
  }

  else
  {
    v243 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v244 = v411;
    v245 = *(v410 + 8);
    v245(v408, v411);
    v245(v409, v244);
    v222 = v419;

    v246 = 0;
    if ((v243 & 1) == 0)
    {
      goto LABEL_111;
    }
  }

  v247 = v368;
  FMIPDevice.location.getter();
  v248 = type metadata accessor for FMIPLocation();
  v246 = (*(*(v248 - 8) + 48))(v247, 1, v248) != 1;
  sub_100012DF0(v247, &unk_1006C0220);
LABEL_111:
  v249 = v420;
  *(v153 + v152[13]) = v246;
  v250 = 0.0;
  if ((v239 & 1) == 0)
  {
    v250 = v154;
  }

  *(v153 + v152[14]) = v250;
  v251 = v418;
  *(v153 + v152[15]) = sub_1003168DC(v222, v418);
  v252 = (v153 + v152[16]);
  v253 = v412;
  *v252 = v406;
  v252[1] = v253;
  v254 = sub_1002642B0(v222, v251, a10, v249 != 1);
  v256 = v255;

  v257 = (v153 + v152[17]);
  *v257 = v254;
  v257[1] = v256;
  if (v249 == 1)
  {
    v265 = v365;
    FMIPDevice.bestLocation.getter();
    v266 = type metadata accessor for FMIPLocation();
    v267 = *(v266 - 8);
    v268 = (*(v267 + 48))(v265, 1, v266);
    v261 = v384;
    v262 = v383;
    if (v268 == 1)
    {
      sub_100012DF0(v265, &unk_1006C0220);
      v269 = *(v261 + 56);
      v270 = &v398;
      goto LABEL_121;
    }

    v276 = FMIPLocation.location.getter();
    (*(v267 + 8))(v265, v266);
    v277 = [v276 timestamp];

    v278 = v359;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v279 = *(v261 + 32);
    v280 = &v398;
    goto LABEL_125;
  }

  v258 = v363;
  sub_100007204(v251, v363, &qword_1006B07D0);
  v259 = v414;
  v260 = v415(v258, 1, v414);
  v261 = v384;
  v262 = v383;
  if (v260 != 1)
  {
    v271 = v358;
    FMIPItem.location.getter();
    (*(v417 + 8))(v258, v259);
    v272 = type metadata accessor for FMIPLocation();
    v273 = *(v272 - 8);
    if ((*(v273 + 48))(v271, 1, v272) == 1)
    {
      v263 = &unk_1006C0220;
      v264 = v271;
      goto LABEL_120;
    }

    v281 = FMIPLocation.location.getter();
    (*(v273 + 8))(v271, v272);
    v282 = [v281 timestamp];

    v278 = v359;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v279 = *(v261 + 32);
    v280 = &v399;
LABEL_125:
    v283 = *(v280 - 32);
    v284 = v278;
    v275 = v385;
    v279(v283, v284, v385);
    (*(v261 + 56))(v283, 0, 1, v275);
    v279(v262, v283, v275);
    goto LABEL_126;
  }

  v263 = &qword_1006B07D0;
  v264 = v258;
LABEL_120:
  sub_100012DF0(v264, v263);
  v269 = *(v261 + 56);
  v270 = &v399;
LABEL_121:
  v274 = *(v270 - 32);
  v275 = v385;
  v269(v274, 1, 1, v385);
  static Date.distantFuture.getter();
  if ((*(v261 + 48))(v274, 1, v275) != 1)
  {
    sub_100012DF0(v274, &unk_1006B0000);
  }

LABEL_126:
  (*(v261 + 32))(v153 + v152[18], v262, v275);
  *(v153 + v152[9]) = v373;
  *(v153 + v152[10]) = v395;
  v285 = v382;
  *(v153 + v152[19]) = (v382 & 0x200) != 0;
  *(v153 + v152[20]) = (v285 & 0x100000) != 0;
  v286 = v386;
  FMIPDevice.features.getter();
  v287 = v387;
  static FMIPFeatures.isWipeEnabled.getter();
  sub_100316F8C(&qword_1006C1D50, &type metadata accessor for FMIPFeatures);
  v288 = v389;
  v289 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v290 = *(v388 + 8);
  v290(v287, v288);
  v290(v286, v288);
  *(v153 + v152[21]) = v289 & 1;
  if (v420 == 1)
  {
    FMIPDevice.batteryLevel.getter();
  }

  else
  {
    v291 = qword_10055D7A8[v364];
  }

  v292 = v379;
  v293 = v378;
  v294 = v392;
  *(v153 + v152[26]) = v291;
  *(v153 + v152[28]) = v292 & 1;
  if (v293)
  {
    v295 = 6;
  }

  else
  {
    v295 = 0;
  }

  *(v153 + v152[27]) = v295;
  *(v153 + v152[29]) = v376 & 1;
  *(v153 + v152[30]) = v403 & 1;
  *(v153 + v152[22]) = v405 & 1;
  *(v153 + v152[23]) = 0;
  *(v153 + v152[24]) = FMIPDevice.deviceIsPendingRemoval.getter() & 1;
  v296 = FMIPDevice.ownerIdentifier.getter();
  v298 = v297;
  if (v296 == FMIPDefaultOwnerIdentifier.getter() && v298 == v299)
  {

LABEL_136:

    v301 = FMIPDefaultOwnerIdentifier.getter();
    v303 = v302;

    v304 = (v153 + v152[25]);
    *v304 = v301;
    v304[1] = v303;
LABEL_137:
    v305 = v393;
    goto LABEL_138;
  }

  v300 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v300)
  {
    goto LABEL_136;
  }

  v307 = [objc_opt_self() mainBundle];
  v432._object = 0x8000000100590B30;
  v308._countAndFlagsBits = 0xD000000000000030;
  v308._object = 0x8000000100590AF0;
  v432._countAndFlagsBits = 0xD000000000000042;
  v309._countAndFlagsBits = 0;
  v309._object = 0xE000000000000000;
  v310 = NSLocalizedString(_:tableName:bundle:value:comment:)(v308, 0, v307, v309, v432);

  v312 = (v153 + v152[25]);
  *v312 = v310;
  v313 = v390;
  if (!v390)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v336 = type metadata accessor for Logger();
    sub_100005B14(v336, qword_1006D4630);
    v337 = Logger.logObject.getter();
    v338 = static os_log_type_t.fault.getter();
    v339 = os_log_type_enabled(v337, v338);
    v251 = v418;
    if (v339)
    {
      v340 = swift_slowAlloc();
      *v340 = 0;
      _os_log_impl(&_mh_execute_header, v337, v338, "FMDeviceCellViewModel: familyMembers cannot be nil", v340, 2u);
    }

    goto LABEL_137;
  }

  __chkstk_darwin(v311);
  v314 = v353;
  sub_1001108D8(sub_100316F6C, v313, v353);
  v315 = v314;

  v316 = v354;
  v317 = v355;
  if ((*(v354 + 48))(v314, 1, v355) == 1)
  {
    sub_100012DF0(v314, &qword_1006B3B10);
    v305 = v393;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v318 = type metadata accessor for Logger();
    sub_100005B14(v318, qword_1006D4630);
    v319 = *(v294 + 16);
    v320 = v351;
    v319(v351, v222, v305);
    v321 = v352;
    v319(v352, v222, v305);
    v322 = Logger.logObject.getter();
    v323 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v322, v323))
    {
      v324 = swift_slowAlloc();
      v420 = swift_slowAlloc();
      v421 = v420;
      *v324 = 136446466;
      LODWORD(v417) = v323;
      v325 = FMIPDevice.ownerIdentifier.getter();
      v326 = v320;
      v327 = v321;
      v329 = v328;
      v330 = *(v294 + 8);
      v330(v326, v393);
      v331 = sub_100005B4C(v325, v329, &v421);

      *(v324 + 4) = v331;
      *(v324 + 12) = 2082;
      v319(v349, v327, v393);
      v332 = String.init<A>(describing:)();
      v334 = v333;
      v330(v327, v393);
      v294 = v392;
      v222 = v419;
      v335 = sub_100005B4C(v332, v334, &v421);

      *(v324 + 14) = v335;
      _os_log_impl(&_mh_execute_header, v322, v417, "FMDeviceCellViewModel: Failed to look up owner using identifier %{public}s, for device %{public}s", v324, 0x16u);
      swift_arrayDestroy();

      v305 = v393;
    }

    else
    {

      v346 = *(v294 + 8);
      v346(v321, v305);
      v346(v320, v305);
    }
  }

  else
  {
    v341 = v350;
    (*(v316 + 32))(v350, v315, v317);
    v342 = v316;
    v343 = FMIPPerson.firstName.getter();
    v345 = v344;

    (*(v342 + 8))(v341, v317);

    v312->_countAndFlagsBits = v343;
    v312->_object = v345;
    v305 = v393;
  }

  v251 = v418;
LABEL_138:
  sub_100316EAC(v153, v391);
  sub_100012DF0(v251, &qword_1006B07D0);
  (*(v294 + 8))(v222, v305);
  return sub_100316F10(v153);
}

uint64_t sub_100313614()
{
  v0 = FMIPPerson.identifier.getter();
  v2 = v1;
  if (v0 == FMIPDevice.ownerIdentifier.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

void sub_1003136B0()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v30 - v6;
  v8 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  if (*(v0 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  v11 = type metadata accessor for FMDeviceCellViewModel();
  sub_100007204(v0 + *(v11 + 24), v10, &qword_1006B07D0);
  if ((*(v2 + 48))(v10, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v7, v10, v1);
    Hasher._combine(_:)(1u);
    sub_100316F8C(&qword_1006B6918, &type metadata accessor for FMIPItem);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v7, v1);
  }

  v30 = v11;
  v31 = v0;
  v12 = *(v0 + *(v11 + 28));
  if (v12)
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(*(v12 + 16));
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = *(v2 + 16);
      v15 = v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
      v16 = *(v2 + 72);
      v17 = (v2 + 8);
      do
      {
        v14(v5, v15, v1);
        sub_100316F8C(&qword_1006B6918, &type metadata accessor for FMIPItem);
        dispatch thunk of Hashable.hash(into:)();
        (*v17)(v5, v1);
        v15 += v16;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v19 = v30;
  v18 = v31;
  v20 = *(v31 + v30[8]);
  if (v20)
  {
    Hasher._combine(_:)(1u);
    v21 = v20;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v22 = *(v18 + v19[9]);
  if (v22)
  {
    Hasher._combine(_:)(1u);
    v23 = v22;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v24 = *(v18 + v19[10]);
  if (v24)
  {
    Hasher._combine(_:)(1u);
    v25 = v24;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v26 = *(v18 + v19[11]);
  if (v26 == 0.0)
  {
    v26 = 0.0;
  }

  Hasher._combine(_:)(*&v26);
  Hasher._combine(_:)(*(v18 + v19[12]));
  Hasher._combine(_:)(*(v18 + v19[13]));
  v27 = *(v18 + v19[14]);
  if (v27 == 0.0)
  {
    v27 = 0.0;
  }

  Hasher._combine(_:)(*&v27);
  v28 = *(v18 + v19[15]);
  if (v28 == 0.0)
  {
    v28 = 0.0;
  }

  Hasher._combine(_:)(*&v28);
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for Date();
  sub_100316F8C(&qword_1006B1480, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v18 + v19[19]));
  Hasher._combine(_:)(*(v18 + v19[20]));
  Hasher._combine(_:)(*(v18 + v19[21]));
  Hasher._combine(_:)(*(v18 + v19[22]));
  Hasher._combine(_:)(*(v18 + v19[23]));
  Hasher._combine(_:)(*(v18 + v19[24]));
  String.hash(into:)();
  v29 = *(v18 + v19[26]);
  if (v29 == 0.0)
  {
    v29 = 0.0;
  }

  Hasher._combine(_:)(*&v29);
  String.hash(into:)();

  Hasher._combine(_:)(*(v18 + v19[28]));
  Hasher._combine(_:)(*(v18 + v19[29]));
  Hasher._combine(_:)(*(v18 + v19[30]));
}

void *sub_100313D34(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));
  v3 = v2;
  return v2;
}

void *sub_100313D60(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));
  v3 = v2;
  return v2;
}

uint64_t sub_100313D8C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 64));

  return v2;
}

uint64_t sub_100313DC4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 68));

  return v2;
}

uint64_t sub_100313E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

Swift::Int sub_100313EAC()
{
  Hasher.init(_seed:)();
  sub_1003136B0();
  return Hasher._finalize()();
}

Swift::Int sub_100313EF0()
{
  Hasher.init(_seed:)();
  sub_1003136B0();
  return Hasher._finalize()();
}

uint64_t sub_100313F78(uint64_t a1)
{
  result = sub_100316F8C(&qword_1006BB790, type metadata accessor for FMDeviceCellViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100313FD0(uint64_t a1)
{
  result = sub_100316F8C(&qword_1006BB798, type metadata accessor for FMDeviceCellViewModel);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100314028(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for FMDeviceCellViewModel();
  v6 = v5[8];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    sub_10000905C(0, &qword_1006BC2B0);
    v9 = v8;
    v10 = v7;
    v11 = static NSObject.== infix(_:_:)();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v12 = v5[17];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v13 == *v15 && v14 == v15[1];
  if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v17 = v5[16];
  v18 = *(a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v21 = v18 == *v20 && v19 == v20[1];
  if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v22 = a1[1];
  v23 = a2[1];
  if (!v22)
  {
    if (!v23)
    {
      goto LABEL_28;
    }

    return 0;
  }

  if (!v23 || (*a1 != *a2 || v22 != v23) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_28:
  if (*(a1 + v5[13]) != *(a2 + v5[13]) || *(a1 + v5[14]) != *(a2 + v5[14]) || *(a1 + v5[15]) != *(a2 + v5[15]) || *(a1 + v5[24]) != *(a2 + v5[24]))
  {
    return 0;
  }

  v25 = v5[25];
  v26 = *(a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  if (v26 == *v28 && v27 == v28[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

UIImage *sub_100314228(uint64_t a1, uint64_t a2)
{
  v168 = a1;
  v166 = type metadata accessor for FMIPItemState();
  v163 = *(v166 - 8);
  v3 = __chkstk_darwin(v166);
  v165 = &v138[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v164 = &v138[-v5];
  v6 = type metadata accessor for FMIPItem();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v160 = &v138[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v146 = &v138[-v10];
  v11 = sub_10007EBC0(&unk_1006BB1C0);
  v12 = __chkstk_darwin(v11 - 8);
  v158 = &v138[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v157 = &v138[-v14];
  v15 = type metadata accessor for FMIPItemGroup();
  v161 = *(v15 - 8);
  v162 = v15;
  v16 = __chkstk_darwin(v15);
  v147 = &v138[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v154 = &v138[-v18];
  v19 = sub_10007EBC0(&unk_1006C2470);
  __chkstk_darwin(v19 - 8);
  v141 = &v138[-v20];
  v21 = type metadata accessor for FMIPPartType();
  v170 = *(v21 - 8);
  __chkstk_darwin(v21);
  v143 = &v138[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v169 = sub_10007EBC0(&qword_1006B41F0);
  v23 = __chkstk_darwin(v169);
  v153 = &v138[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v26 = &v138[-v25];
  v27 = sub_10007EBC0(&qword_1006B07D0);
  v28 = __chkstk_darwin(v27 - 8);
  v159 = &v138[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = __chkstk_darwin(v28);
  v145 = &v138[-v31];
  v32 = __chkstk_darwin(v30);
  v148 = &v138[-v33];
  v34 = __chkstk_darwin(v32);
  v152 = &v138[-v35];
  __chkstk_darwin(v34);
  v37 = &v138[-v36];
  v38 = sub_10007EBC0(&unk_1006B41F8);
  v39 = __chkstk_darwin(v38 - 8);
  v142 = &v138[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = __chkstk_darwin(v39);
  v155 = &v138[-v42];
  v43 = __chkstk_darwin(v41);
  v156 = &v138[-v44];
  v45 = __chkstk_darwin(v43);
  v144 = &v138[-v46];
  v47 = __chkstk_darwin(v45);
  v49 = &v138[-v48];
  __chkstk_darwin(v47);
  v51 = &v138[-v50];
  v167 = [objc_opt_self() configurationWithPointSize:9.0];
  v175 = a2;
  sub_100007204(a2, v37, &qword_1006B07D0);
  v172 = *(v7 + 48);
  v173 = v7 + 48;
  v52 = v172(v37, 1, v6);
  v174 = v6;
  v171 = v7;
  if (v52 == 1)
  {
    sub_100012DF0(v37, &qword_1006B07D0);
    v53 = 1;
  }

  else
  {
    FMIPItem.partType.getter();
    (*(v7 + 8))(v37, v6);
    v53 = 0;
  }

  v54 = v51;
  v55 = v170;
  isa = v170[7].super.isa;
  isa(v54, v53, 1, v21);
  v57 = v55[13].super.isa;
  v150 = v55 + 13;
  v149 = v57;
  v57(v49, enum case for FMIPPartType.rightBud(_:), v21);
  isa(v49, 0, 1, v21);
  v58 = *(v169 + 48);
  sub_100007204(v54, v26, &unk_1006B41F8);
  sub_100007204(v49, &v26[v58], &unk_1006B41F8);
  v59 = v55[6].super.isa;
  v60 = v59(v26, 1, v21);
  v151 = v59;
  if (v60 == 1)
  {
    sub_100012DF0(v49, &unk_1006B41F8);
    sub_100012DF0(v54, &unk_1006B41F8);
    if (v59(&v26[v58], 1, v21) == 1)
    {
      v62 = v174;
      v61 = v175;
LABEL_16:
      sub_100012DF0(v26, &unk_1006B41F8);
      v64 = v61;
      goto LABEL_23;
    }
  }

  else
  {
    v140 = v54;
    v63 = v144;
    sub_100007204(v26, v144, &unk_1006B41F8);
    if (v59(&v26[v58], 1, v21) != 1)
    {
      v75 = v143;
      (v170[4].super.isa)(v143, &v26[v58], v21);
      sub_100316F8C(&qword_1006B4208, &type metadata accessor for FMIPPartType);
      v139 = dispatch thunk of static Equatable.== infix(_:_:)();
      v76 = v170[1].super.isa;
      v76(v75, v21);
      sub_100012DF0(v49, &unk_1006B41F8);
      sub_100012DF0(v140, &unk_1006B41F8);
      v76(v63, v21);
      sub_100012DF0(v26, &unk_1006B41F8);
      v62 = v174;
      v64 = v175;
      if (v139)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    sub_100012DF0(v49, &unk_1006B41F8);
    sub_100012DF0(v140, &unk_1006B41F8);
    (v170[1].super.isa)(v63, v21);
  }

  sub_100012DF0(v26, &qword_1006B41F0);
  v62 = v174;
  v64 = v175;
LABEL_10:
  v65 = v152;
  sub_100007204(v64, v152, &qword_1006B07D0);
  if (v172(v65, 1, v62) == 1)
  {
    sub_100012DF0(v65, &qword_1006B07D0);
    v66 = 1;
    v67 = v153;
    v68 = v156;
  }

  else
  {
    v68 = v156;
    FMIPItem.partType.getter();
    (*(v171 + 8))(v65, v62);
    v66 = 0;
    v67 = v153;
  }

  v69 = v155;
  isa(v68, v66, 1, v21);
  v149(v69, enum case for FMIPPartType.leftBud(_:), v21);
  isa(v69, 0, 1, v21);
  v70 = *(v169 + 48);
  sub_100007204(v68, v67, &unk_1006B41F8);
  sub_100007204(v69, v67 + v70, &unk_1006B41F8);
  v71 = v151;
  if (v151(v67, 1, v21) == 1)
  {
    sub_100012DF0(v69, &unk_1006B41F8);
    sub_100012DF0(v68, &unk_1006B41F8);
    if (v71(v67 + v70, 1, v21) == 1)
    {
      v26 = v67;
      v61 = v175;
      goto LABEL_16;
    }

LABEL_19:
    v73 = &qword_1006B41F0;
    v74 = v67;
LABEL_25:
    sub_100012DF0(v74, v73);
    goto LABEL_26;
  }

  v72 = v142;
  sub_100007204(v67, v142, &unk_1006B41F8);
  if (v71(v67 + v70, 1, v21) == 1)
  {
    sub_100012DF0(v155, &unk_1006B41F8);
    sub_100012DF0(v156, &unk_1006B41F8);
    (v170[1].super.isa)(v72, v21);
    goto LABEL_19;
  }

  v77 = v170;
  v78 = v67 + v70;
  v79 = v143;
  (v170[4].super.isa)(v143, v78, v21);
  sub_100316F8C(&qword_1006B4208, &type metadata accessor for FMIPPartType);
  v80 = dispatch thunk of static Equatable.== infix(_:_:)();
  v81 = v77[1].super.isa;
  v81(v79, v21);
  sub_100012DF0(v155, &unk_1006B41F8);
  sub_100012DF0(v156, &unk_1006B41F8);
  v81(v72, v21);
  sub_100012DF0(v67, &unk_1006B41F8);
  v64 = v175;
  if ((v80 & 1) == 0)
  {
LABEL_26:
    v170 = 0;
    v83 = v171;
    v85 = v161;
    v84 = v162;
LABEL_27:
    v86 = v157;
    goto LABEL_34;
  }

LABEL_23:
  v82 = v148;
  sub_100007204(v64, v148, &qword_1006B07D0);
  if (v172(v82, 1, v62) == 1)
  {
    v73 = &qword_1006B07D0;
    v74 = v82;
    goto LABEL_25;
  }

  v87 = v141;
  FMIPItem.partInfo.getter();
  v83 = v171;
  (*(v171 + 8))(v82, v62);
  v88 = type metadata accessor for FMIPPartInfo();
  v89 = *(v88 - 8);
  v90 = (*(v89 + 48))(v87, 1, v88);
  v85 = v161;
  v84 = v162;
  if (v90 == 1)
  {
    sub_100012DF0(v87, &unk_1006C2470);
  }

  else
  {
    FMIPPartInfo.symbol.getter();
    v91 = v87;
    v93 = v92;
    (*(v89 + 8))(v91, v88);
    if (v93)
    {
      v94 = String._bridgeToObjectiveC()();
      v95 = [objc_opt_self() systemImageNamed:v94];

      if (v95)
      {
        v96 = [objc_opt_self() systemGrayColor];
        v170 = sub_1003DE2DC(v96);
      }

      else
      {
        v170 = 0;
      }

      goto LABEL_27;
    }
  }

  v170 = 0;
  v86 = v157;
LABEL_34:
  FMIPDevice.itemGroup.getter();
  v97 = *(v85 + 48);
  if (v97(v86, 1, v84) == 1)
  {
    sub_100012DF0(v86, &unk_1006BB1C0);
    v98 = 0;
    goto LABEL_42;
  }

  v99 = v154;
  (*(v85 + 32))(v154, v86, v84);
  v100 = v145;
  sub_100007204(v175, v145, &qword_1006B07D0);
  v101 = v174;
  if (v172(v100, 1, v174) == 1)
  {
    (*(v85 + 8))(v99, v84);
    sub_100012DF0(v100, &qword_1006B07D0);
LABEL_38:
    v98 = 0;
    goto LABEL_42;
  }

  (*(v83 + 32))(v146, v100, v101);
  v102 = v164;
  FMIPItem.state.getter();
  v103 = v165;
  static FMIPItemState.markLostActive.getter();
  sub_100316F8C(&qword_1006C0350, &type metadata accessor for FMIPItemState);
  v104 = v166;
  v105 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v106 = *(v163 + 8);
  v106(v103, v104);
  v106(v102, v104);
  if ((v105 & 1) == 0)
  {
    v107 = v164;
    FMIPItemGroup.state.getter();
    v108 = v165;
    static FMIPItemState.markLostActive.getter();
    v109 = v166;
    v110 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v106(v108, v109);
    v106(v107, v109);
    if ((v110 & 1) == 0)
    {
      (*(v171 + 8))(v146, v174);
      v85 = v161;
      v84 = v162;
      (*(v161 + 8))(v154, v162);
      goto LABEL_38;
    }
  }

  v111 = v167;
  v112 = String._bridgeToObjectiveC()();
  v113 = [objc_opt_self() systemImageNamed:v112 withConfiguration:v111];

  v98 = [objc_opt_self() systemOrangeColor];
  (*(v171 + 8))(v146, v174);
  v85 = v161;
  v84 = v162;
  (*(v161 + 8))(v154, v162);
  v170 = v113;
LABEL_42:
  v114 = v158;
  FMIPDevice.itemGroup.getter();
  if (v97(v114, 1, v84) == 1)
  {
    sub_100012DF0(v114, &unk_1006BB1C0);
    v115 = v160;
  }

  else
  {
    v116 = v147;
    (*(v85 + 32))(v147, v114, v84);
    v117 = v164;
    FMIPItemGroup.state.getter();
    v118 = v165;
    static FMIPItemState.pairingIncomplete.getter();
    sub_100316F8C(&qword_1006C0350, &type metadata accessor for FMIPItemState);
    v119 = v166;
    v120 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v121 = *(v163 + 8);
    v121(v118, v119);
    v121(v117, v119);
    v115 = v160;
    if (v120)
    {
      v122 = v167;
      v123 = String._bridgeToObjectiveC()();
      v124 = [objc_opt_self() systemImageNamed:v123 withConfiguration:v122];

      v125 = [objc_opt_self() systemOrangeColor];
      (*(v85 + 8))(v116, v84);
      v98 = v125;
      v170 = v124;
    }

    else
    {
      (*(v85 + 8))(v116, v84);
    }
  }

  v126 = v159;
  sub_100007204(v175, v159, &qword_1006B07D0);
  v127 = v174;
  if (v172(v126, 1, v174) == 1)
  {

    sub_100012DF0(v126, &qword_1006B07D0);
  }

  else
  {
    v128 = v171;
    (*(v171 + 32))(v115, v126, v127);
    v129 = v164;
    FMIPItem.state.getter();
    v130 = v165;
    static FMIPItemState.isFirmwareUpdating.getter();
    sub_100316F8C(&qword_1006C0350, &type metadata accessor for FMIPItemState);
    v131 = v166;
    v132 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v133 = *(v163 + 8);
    v133(v130, v131);
    v133(v129, v131);
    if (v132)
    {
      v134 = v167;
      v135 = String._bridgeToObjectiveC()();
      v136 = [objc_opt_self() systemImageNamed:v135 withConfiguration:v134];

      [objc_opt_self() systemBlueColor];
      (*(v128 + 8))(v115, v127);
      return v136;
    }

    (*(v128 + 8))(v115, v127);
  }

  return v170;
}

id sub_10031589C(uint64_t a1)
{
  v112 = type metadata accessor for FMIPItemState();
  v111 = *(v112 - 8);
  v2 = __chkstk_darwin(v112);
  v110 = &v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v109 = &v107 - v4;
  v5 = sub_10007EBC0(&unk_1006BB1C0);
  __chkstk_darwin(v5 - 8);
  v124 = &v107 - v6;
  v7 = type metadata accessor for FMIPItemGroup();
  v125 = *(v7 - 8);
  v126 = v7;
  __chkstk_darwin(v7);
  v131 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007EBC0(&qword_1006B8678);
  __chkstk_darwin(v9 - 8);
  v118 = &v107 - v10;
  v11 = type metadata accessor for FMIPEraseMetadata();
  v120 = *(v11 - 8);
  v121 = v11;
  __chkstk_darwin(v11);
  v119 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007EBC0(&unk_1006B0000);
  v14 = __chkstk_darwin(v13 - 8);
  v122 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v107 = &v107 - v16;
  v17 = type metadata accessor for FMIPActionStatus();
  v128 = *(v17 - 8);
  v129 = v17;
  v18 = __chkstk_darwin(v17);
  v115 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v114 = &v107 - v21;
  __chkstk_darwin(v20);
  v108 = &v107 - v22;
  v23 = sub_10007EBC0(&unk_1006C1D20);
  __chkstk_darwin(v23 - 8);
  v25 = &v107 - v24;
  v116 = type metadata accessor for FMIPLockMetadata();
  v127 = *(v116 - 8);
  __chkstk_darwin(v116);
  v113 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for FMIPDeviceState();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v31 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v107 - v32;
  v34 = objc_opt_self();
  v133 = [v34 systemRedColor];
  v35 = objc_opt_self();
  v132 = [v35 configurationWithPointSize:11.0];
  v123 = a1;
  FMIPDevice.state.getter();
  static FMIPDeviceState.isInRepairMode.getter();
  sub_100316F8C(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState);
  LOBYTE(a1) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v36 = *(v28 + 8);
  v36(v31, v27);
  v36(v33, v27);
  if (a1)
  {
    v37 = [v35 configurationWithPointSize:8.0];
    v38 = String._bridgeToObjectiveC()();
    v39 = [objc_opt_self() systemImageNamed:v38 withConfiguration:v37];

    v40 = [v34 systemMintColor];
    v133 = v40;
  }

  else
  {
    v39 = 0;
  }

  FMIPDevice.lockMetadata.getter();
  v41 = v127;
  v42 = v116;
  v43 = (*(v127 + 48))(v25, 1, v116);
  v44 = v132;
  v130 = v34;
  if (v43 == 1)
  {
    sub_100012DF0(v25, &unk_1006C1D20);
    v45 = v131;
  }

  else
  {
    v117 = v39;
    v46 = v113;
    (*(v41 + 32))(v113, v25, v42);
    v47 = v108;
    FMIPLockMetadata.status.getter();
    v48 = FMIPActionStatus.isActionSuccessful.getter();
    v49 = *(v128 + 8);
    v49(v47, v129);
    if ((v48 & 1) != 0 && (v50 = v107, FMIPDevice.lockedTimestamp.getter(), v51 = type metadata accessor for Date(), v52 = (*(*(v51 - 8) + 48))(v50, 1, v51), sub_100012DF0(v50, &unk_1006B0000), v52 != 1) || (v53 = v114, FMIPLockMetadata.status.getter(), v54 = v129, v55 = v115, (*(v128 + 104))(v115, enum case for FMIPActionStatus.pending(_:), v129), sub_100316F8C(&qword_1006C1D70, &type metadata accessor for FMIPActionStatus), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v56 = v55, v46 = v113, v49(v56, v54), v57 = v54, v41 = v127, v49(v53, v57), v135 == v134))
    {
      v44 = v132;
      v58 = v132;
      v59 = String._bridgeToObjectiveC()();
      v39 = [objc_opt_self() systemImageNamed:v59 withConfiguration:v58];

      v60 = v46;
      v34 = v130;
      v61 = [v130 systemOrangeColor];

      (*(v41 + 8))(v60, v42);
      v133 = v61;
      v45 = v131;
    }

    else
    {
      (*(v41 + 8))(v46, v42);
      v34 = v130;
      v45 = v131;
      v39 = v117;
      v44 = v132;
    }
  }

  if (FMIPDevice.isLostModeActive.getter())
  {
    v62 = v44;
    v63 = String._bridgeToObjectiveC()();
    v64 = [objc_opt_self() systemImageNamed:v63 withConfiguration:v62];

    v65 = [v34 systemOrangeColor];
    v133 = v65;
    v39 = v64;
  }

  v66 = v120;
  v67 = v44;
  if (FMIPDevice.deviceIsPendingRemoval.getter())
  {
    v68 = v44;
    v69 = String._bridgeToObjectiveC()();
    v70 = v45;
    v71 = [objc_opt_self() systemImageNamed:v69 withConfiguration:v68];

    v72 = [v34 systemRedColor];
    v133 = v72;
    v39 = v71;
    v45 = v70;
  }

  v73 = v118;
  FMIPDevice.eraseMetadata.getter();
  v74 = v121;
  if ((*(v66 + 48))(v73, 1, v121) == 1)
  {
    sub_100012DF0(v73, &qword_1006B8678);
  }

  else
  {
    v117 = v39;
    (*(v66 + 32))(v119, v73, v74);
    v75 = v114;
    FMIPEraseMetadata.status.getter();
    v77 = v128;
    v76 = v129;
    v78 = v115;
    (*(v128 + 104))(v115, enum case for FMIPActionStatus.eraseCancelled(_:), v129);
    sub_100316F8C(&unk_1006C1DA0, &type metadata accessor for FMIPActionStatus);
    v79 = dispatch thunk of static Equatable.== infix(_:_:)();
    v80 = *(v77 + 8);
    v80(v78, v76);
    v80(v75, v76);
    if (v79)
    {
      (*(v66 + 8))(v119, v74);
      v39 = v117;
      v44 = v67;
    }

    else
    {
      v44 = v67;
      v81 = v67;
      v82 = String._bridgeToObjectiveC()();
      v83 = [objc_opt_self() systemImageNamed:v82 withConfiguration:v81];
      v84 = v119;
      v39 = v83;

      v85 = [v130 systemRedColor];
      (*(v66 + 8))(v84, v74);
      v133 = v85;
    }

    v45 = v131;
  }

  v86 = v122;
  FMIPDevice.wipedTimestamp.getter();
  v87 = type metadata accessor for Date();
  v88 = (*(*(v87 - 8) + 48))(v86, 1, v87);
  sub_100012DF0(v86, &unk_1006B0000);
  if (v88 != 1)
  {
    v89 = v44;
    v90 = String._bridgeToObjectiveC()();
    v91 = [objc_opt_self() systemImageNamed:v90 withConfiguration:v89];

    v92 = [v130 systemRedColor];
    v133 = v92;
    v39 = v91;
  }

  v93 = v124;
  FMIPDevice.itemGroup.getter();
  v94 = v125;
  v95 = v126;
  if ((*(v125 + 48))(v93, 1, v126) == 1)
  {

    sub_100012DF0(v93, &unk_1006BB1C0);
  }

  else
  {
    (*(v94 + 32))(v45, v93, v95);
    v96 = v109;
    v97 = v94;
    FMIPItemGroup.state.getter();
    v98 = v110;
    static FMIPItemState.pairingIncomplete.getter();
    sub_100316F8C(&qword_1006C0350, &type metadata accessor for FMIPItemState);
    v99 = v112;
    v100 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v101 = *(v111 + 8);
    v101(v98, v99);
    v101(v96, v99);
    if (v100)
    {
      v102 = v132;
      v103 = String._bridgeToObjectiveC()();
      v104 = [objc_opt_self() systemImageNamed:v103 withConfiguration:v102];

      v105 = [v130 systemOrangeColor];
      (*(v97 + 8))(v45, v95);
      v133 = v105;
      return v104;
    }

    else
    {
      (*(v97 + 8))(v45, v95);
    }
  }

  return v39;
}

double sub_1003168DC(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = type metadata accessor for FMIPDeviceStatus();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMIPItemState();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = __chkstk_darwin(v5);
  v42 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v41 = &v41 - v8;
  v9 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v41 - v10;
  v12 = type metadata accessor for FMIPItem();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FMIPDeviceState();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v41 - v21;
  v45 = FMIPDevice.hasLocation.getter();
  v49 = a1;
  FMIPDevice.state.getter();
  static FMIPDeviceState.isThisDevice.getter();
  sub_100316F8C(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState);
  LOBYTE(a1) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v23 = *(v17 + 8);
  v23(v20, v16);
  v23(v22, v16);
  v24 = -1.0;
  if (a1)
  {
    return v24;
  }

  sub_100007204(v50, v11, &qword_1006B07D0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100012DF0(v11, &qword_1006B07D0);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v25 = v41;
    FMIPItem.state.getter();
    v26 = v42;
    static FMIPItemState.isBTConnected.getter();
    sub_100316F8C(&qword_1006C0350, &type metadata accessor for FMIPItemState);
    v27 = v44;
    v28 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v29 = *(v43 + 8);
    v29(v26, v27);
    v29(v25, v27);
    (*(v13 + 8))(v15, v12);
    if (v28)
    {
      return v24;
    }
  }

  v30 = v46;
  FMIPDevice.status.getter();
  v32 = v47;
  v31 = v48;
  v33 = (*(v47 + 88))(v30, v48);
  if (v33 == enum case for FMIPDeviceStatus.online(_:))
  {
    v34 = 5.0;
    v24 = 1.0;
    if (v45)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v33 != enum case for FMIPDeviceStatus.offline(_:) && v33 != enum case for FMIPDeviceStatus.pending(_:))
  {
    (*(v32 + 8))(v30, v31);
    v34 = 4.0;
    v24 = 0.0;
    if (v45)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v34 = 13.0;
  v24 = 9.0;
  if ((v45 & 1) == 0)
  {
LABEL_13:
    v24 = v34;
  }

LABEL_14:
  v35 = FMIPDevice.ownerIdentifier.getter();
  v37 = v36;
  if (v35 == FMIPDefaultOwnerIdentifier.getter() && v37 == v38)
  {
  }

  else
  {
    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v39 & 1) == 0)
    {
      return v24 + 5.0;
    }
  }

  return v24;
}

uint64_t sub_100316EAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMDeviceCellViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100316F10(uint64_t a1)
{
  v2 = type metadata accessor for FMDeviceCellViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100316F8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100317040(uint64_t a1, double a2, double a3)
{
  if (v3[OBJC_IVAR____TtC6FindMy17FMPassthroughView_enabled] == 1)
  {
    v7 = OBJC_IVAR____TtC6FindMy17FMPassthroughView_exemptViews;
    swift_beginAccess();
    v8 = *&v3[v7];
    if (v8 >> 62)
    {
LABEL_19:
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; ; ++i)
    {
      if (v9 == i)
      {

        return 0;
      }

      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v11 = *(v8 + 8 * i + 32);
      }

      v12 = v11;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      [v3 convertPoint:v11 toCoordinateSpace:{a2, a3}];
      v14 = v13;
      v16 = v15;
      type metadata accessor for FMPassthroughView();
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        break;
      }

      [v12 bounds];
      v24.x = v14;
      v24.y = v16;
      v18 = CGRectContainsPoint(v25, v24);

      if (v18)
      {

        return 1;
      }
    }

    v19 = v17;

    v20 = [v19 pointInside:a1 withEvent:{v14, v16}];

    return v20;
  }

  else
  {
    v23.receiver = v3;
    v23.super_class = type metadata accessor for FMPassthroughView();
    return objc_msgSendSuper2(&v23, "pointInside:withEvent:", a1, a2, a3);
  }
}

id sub_1003172D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPassthroughView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100317318(uint64_t a1)
{
  v63 = a1;
  v65 = type metadata accessor for FMItemCapabilities();
  v1 = *(v65 - 8);
  v2 = __chkstk_darwin(v65);
  v61 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v67 = &v55 - v4;
  v5 = sub_10007EBC0(&qword_1006BB7D8);
  v6 = __chkstk_darwin(v5 - 8);
  v64 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v62 = &v55 - v8;
  sub_10007EBC0(&qword_1006BB7E0);
  v9 = sub_10007EBC0(&qword_1006B39A8);
  v10 = *(*(v9 - 8) + 72);
  v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v12 = 2 * v10;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1005528D0;
  v14 = v13 + v11;
  v15 = *(v9 + 48);
  static FMItemCapabilities.canBTFinding.getter();
  *(v14 + v15) = 2;
  v16 = v14 + v10;
  v17 = *(v9 + 48);
  static FMItemCapabilities.canR1.getter();
  *(v16 + v17) = 2;
  v18 = *(v9 + 48);
  static FMItemCapabilities.canPlaySound.getter();
  *(v14 + v12 + v18) = 1;
  v19 = sub_1001544BC(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  v21 = 0;
  v22 = *(v19 + 64);
  v56 = v19 + 64;
  v58 = v1;
  v59 = v19;
  v23 = 1 << *(v19 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v26 = (v23 + 63) >> 6;
  v57 = v1 + 16;
  v66 = (v1 + 32);
  v60 = (v1 + 8);
  v68 = 0;
  if ((v24 & v22) != 0)
  {
    while (1)
    {
      v27 = v21;
LABEL_12:
      v31 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v32 = v31 | (v27 << 6);
      v34 = v58;
      v33 = v59;
      (*(v58 + 16))(v67, *(v59 + 48) + *(v58 + 72) * v32, v65);
      v35 = *(*(v33 + 56) + 8 * v32);
      v36 = sub_10007EBC0(&qword_1006BB7E8);
      v37 = *(v36 + 48);
      v30 = v64;
      (*(v34 + 32))();
      *&v30[v37] = v35;
      (*(*(v36 - 8) + 56))(v30, 0, 1, v36);
      v29 = v27;
LABEL_13:
      v38 = v30;
      v39 = v62;
      sub_10031791C(v38, v62);
      v40 = sub_10007EBC0(&qword_1006BB7E8);
      v41 = (*(*(v40 - 8) + 48))(v39, 1, v40);
      v42 = v63;
      if (v41 == 1)
      {
        break;
      }

      v43 = *(v39 + *(v40 + 48));
      v44 = v65;
      v45 = v61;
      (*v66)(v61, v39, v65);
      v46 = v67;
      FMIPUnknownItem.capabilities.getter();
      sub_10031798C();
      v47 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v48 = *v60;
      (*v60)(v46, v44);
      result = v48(v45, v44);
      if ((v47 & ((v43 & ~v68) != 0)) != 0)
      {
        v49 = v43;
      }

      else
      {
        v49 = 0;
      }

      v50 = v49 | v68;
      v21 = v29;
      v68 = v50;
      if (!v25)
      {
        goto LABEL_5;
      }
    }

    FMIPUnknownItem.handle.getter();
    if (v52 && (, (FMIPUnknownItem.isRequestable.getter() & 1) != 0))
    {
      v53 = type metadata accessor for FMIPUnknownItem();
      (*(*(v53 - 8) + 8))(v42, v53);
      return v68 | 4;
    }

    else
    {
      v54 = type metadata accessor for FMIPUnknownItem();
      (*(*(v54 - 8) + 8))(v42, v54);
      return v68;
    }
  }

  else
  {
LABEL_5:
    if (v26 <= v21 + 1)
    {
      v28 = v21 + 1;
    }

    else
    {
      v28 = v26;
    }

    v29 = v28 - 1;
    v30 = v64;
    while (1)
    {
      v27 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v27 >= v26)
      {
        v51 = sub_10007EBC0(&qword_1006BB7E8);
        (*(*(v51 - 8) + 56))(v30, 1, 1, v51);
        v25 = 0;
        goto LABEL_13;
      }

      v25 = *(v56 + 8 * v27);
      ++v21;
      if (v25)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10031791C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006BB7D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10031798C()
{
  result = qword_1006B4180;
  if (!qword_1006B4180)
  {
    type metadata accessor for FMItemCapabilities();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B4180);
  }

  return result;
}

id sub_100317B3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OBTableView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t NSUserDefaults.set<A>(value:forKey:)()
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v4 = v3;

  if (!v1)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v7 = String._bridgeToObjectiveC()();
    [v0 setValue:isa forKey:v7];

    return sub_10000A858(v2, v4);
  }

  return result;
}

uint64_t NSUserDefaults.codable<A>(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  __chkstk_darwin(a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v3 dataForKey:v10];

  if (!v11)
  {
    return (*(v7 + 56))(a3, 1, 1, a2);
  }

  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_10000A858(v12, v14);

  if (!v4)
  {
    (*(v7 + 32))(a3, v9, a2);
    return (*(v7 + 56))(a3, 0, 1, a2);
  }

  return result;
}

void sub_100317E3C(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for FMLostModeUpdateViewController();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "viewDidLoad");
  sub_100317E98();
}

id sub_100317E98()
{
  *(*&v0[qword_1006B8E50] + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_delegate + 8) = &off_100636980;
  swift_unknownObjectWeakAssign();
  sub_100317F88();
  sub_100318394();
  v1 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"dismissKeyboardActionWithSender:"];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result addGestureRecognizer:v1];

    v4 = *&v0[qword_1006BB818];

    return [v4 setEnabled:0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100317F88()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPDevice();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMLostModeTrackable();
  v6 = __chkstk_darwin(v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v28 - v9;
  v11 = String._bridgeToObjectiveC()();
  [v1 setAccessibilityIdentifier:v11];

  v12 = *&v1[qword_1006B8E50];
  v13 = String._bridgeToObjectiveC()();
  [v12 setAccessibilityIdentifier:v13];

  v12[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_isEditable] = 1;
  sub_100143FE8();
  v12[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_shouldShowNotifyWhenFound] = 0;
  v14 = [*&v12[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_notifyWhenFoundView] setHidden:1];
  v15 = qword_1006D3E00;
  v16 = sub_100283FCC(v14);
  v12[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_shouldShowMessageView] = v16 & 1;
  [*&v12[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_messageView] setHidden:(v16 & 1) == 0];
  v12[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_shouldShowDisableButton] = 1;
  [*&v12[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_disableButton] setHidden:0];
  sub_1000970F8(&v1[v15], v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(sub_10007EBC0(&qword_1006AFC80) + 48);
    v28[1] = v5;
    v18 = v29;
    v19 = v30;
    (*(v29 + 32))(v4, v10, v30);
    v20 = FMIPDevice.isConsideredAccessory.getter();
    (*(v18 + 8))(v4, v19);
    v21 = v20 ^ 1;
    sub_100012DF0(&v10[v17], &qword_1006B07D0);
    v22 = v19;
    v23 = v18;
  }

  else
  {
    sub_10009715C(v10);
    v21 = 0;
    v23 = v29;
    v22 = v30;
  }

  v12[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_isMessageEditable] = v21 & 1;
  sub_100143FE8();
  sub_1000970F8(&v1[v15], v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v26 = *(sub_10007EBC0(&qword_1006AFC80) + 48);
    (*(v23 + 32))(v4, v8, v22);
    v25 = FMIPDevice.maxMessageLength.getter();
    (*(v23 + 8))(v4, v22);
    sub_100012DF0(&v8[v26], &qword_1006B07D0);
  }

  else
  {
    sub_10009715C(v8);
    v25 = 0;
  }

  v27 = &v12[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_maxMessageLength];
  *v27 = v25;
  v27[8] = EnumCaseMultiPayload != 1;
  sub_100142AE4();
}

void sub_100318394()
{
  v1 = *&v0[qword_1006BB818];
  v2 = String._bridgeToObjectiveC()();
  [v1 setAccessibilityIdentifier:v2];

  [v1 setTarget:v0];
  [v1 setAction:"handleSaveButtonTapped"];
  v3 = [v0 navigationItem];
  [v3 setRightBarButtonItem:v1];
}

uint64_t sub_100318470()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B64E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v27 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10007EBC0(&qword_1006B28E8);
  v7 = *(v24 - 8);
  __chkstk_darwin(v24);
  v9 = &v23 - v8;
  v26 = sub_10007EBC0(&qword_1006B28F0);
  v28 = *(v26 - 8);
  __chkstk_darwin(v26);
  v11 = &v23 - v10;
  sub_100319784(v30);
  v12 = *&v0[qword_1006D4360];
  v13 = v12;
  sub_100437A74(v12);

  v14 = sub_100269160(v1 + qword_1006D3E00, v30);
  sub_100319CD4(v30);
  v29 = v14;
  sub_10007EBC0(&qword_1006B28D8);
  sub_100004098(&qword_1006B2900, &qword_1006B28D8);
  v15 = Publisher.eraseToAnyPublisher()();

  v29 = v15;
  sub_10007EBC0(&qword_1006B28F8);
  sub_100004098(&qword_1006B2908, &qword_1006B28F8);
  Publisher.catch<A>(_:)();

  NSRunLoop.SchedulerTimeType.Stride.init(integerLiteral:)();
  v16 = [objc_opt_self() mainRunLoop];
  v29 = v16;
  v17 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  sub_10011060C();
  sub_100004098(&qword_1006B2920, &qword_1006B28E8);
  sub_100110658();
  v18 = v24;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_100012DF0(v4, &qword_1006B64E0);

  (*(v25 + 8))(v6, v27);
  (*(v7 + 8))(v9, v18);
  *(swift_allocObject() + 16) = v1;
  sub_100004098(&qword_1006B2930, &qword_1006B28F0);
  v19 = v1;
  v20 = v26;
  v21 = Publisher.sink(receiveCompletion:receiveValue:)();

  (*(v28 + 8))(v11, v20);
  *&v19[qword_1006B8820] = v21;
}

void sub_1003189EC(void *a1)
{
  v1 = a1;
  sub_100318470();
}

void sub_100318A34(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100318B10(v4);
}

void sub_100318A9C(void *a1)
{
  v3 = a1;
  v1 = [v3 view];
  if (v1)
  {
    v2 = v1;
    [v1 endEditing:1];
  }

  else
  {
    __break(1u);
  }
}

void sub_100318B10(void *a1)
{
  v35 = &type metadata for SolariumFeatureFlag;
  v33 = sub_10000BD04();
  v36 = v33;
  v2 = isFeatureEnabled(_:)();
  sub_100006060(aBlock);
  v3 = ~v2;
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v38._object = 0x8000000100579A00;
  v6._countAndFlagsBits = 0xD00000000000001ELL;
  v6._object = 0x8000000100590CE0;
  v7.value._object = 0x80000001005799E0;
  v38._countAndFlagsBits = 0xD000000000000018;
  v7.value._countAndFlagsBits = 0xD000000000000013;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v38);

  sub_10022FB78(v1 + qword_1006D3E00);
  sub_10022FEFC(0xD000000000000020, 0x8000000100590D00);

  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();

  v11 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:v3 & 1];

  v12 = [v4 mainBundle];
  v39._object = 0x800000010057B8F0;
  v13._object = 0x800000010057B8D0;
  v39._countAndFlagsBits = 0xD000000000000025;
  v13._countAndFlagsBits = 0xD000000000000013;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v39);

  v15 = String._bridgeToObjectiveC()();

  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v15 style:1 handler:0];

  v18 = [v4 mainBundle];
  v40._object = 0x8000000100579A00;
  v19._countAndFlagsBits = 0xD000000000000025;
  v19._object = 0x8000000100590D30;
  v20.value._object = 0x80000001005799E0;
  v40._countAndFlagsBits = 0xD000000000000018;
  v20.value._countAndFlagsBits = 0xD000000000000013;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v40);

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v23 = String._bridgeToObjectiveC()();

  v36 = sub_100319D28;
  v37 = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017328;
  v35 = &unk_1006369D0;
  v24 = _Block_copy(aBlock);

  v25 = [v16 actionWithTitle:v23 style:2 handler:v24];
  _Block_release(v24);

  [v11 addAction:v25];
  [v11 addAction:v17];
  v35 = &type metadata for SolariumFeatureFlag;
  v36 = v33;
  v26 = isFeatureEnabled(_:)();
  sub_100006060(aBlock);
  if (v26)
  {
    v27 = v11;
    v28 = [v27 popoverPresentationController];
    if (v28)
    {
      v29 = v28;
      [v28 setSourceView:a1];
    }

    v30 = [v27 popoverPresentationController];

    if (v30)
    {
      [a1 bounds];
      [v30 setSourceRect:?];
    }
  }

  [v32 presentViewController:v11 animated:1 completion:0];
}

uint64_t sub_100318FC4()
{
  v0 = sub_10007EBC0(&qword_1006B64E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v24 - v1;
  v3 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v29 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006B28E8);
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = sub_10007EBC0(&qword_1006B28F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = *(result + qword_1006D4360);
    v16 = v15;
    v25 = v3;
    v17 = v16;
    sub_100437A74(v15);

    v30 = sub_100269438(v14 + qword_1006D3E00);
    v27 = v10;
    sub_10007EBC0(&qword_1006B28D8);
    v26 = v9;
    sub_100004098(&qword_1006B2900, &qword_1006B28D8);
    v18 = Publisher.eraseToAnyPublisher()();

    v30 = v18;
    sub_10007EBC0(&qword_1006B28F8);
    sub_100004098(&qword_1006B2908, &qword_1006B28F8);
    Publisher.catch<A>(_:)();

    NSRunLoop.SchedulerTimeType.Stride.init(integerLiteral:)();
    v19 = [objc_opt_self() mainRunLoop];
    v30 = v19;
    v20 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v20 - 8) + 56))(v2, 1, 1, v20);
    sub_10011060C();
    sub_100004098(&qword_1006B2920, &qword_1006B28E8);
    sub_100110658();
    Publisher.timeout<A>(_:scheduler:options:customError:)();
    sub_100012DF0(v2, &qword_1006B64E0);

    (*(v29 + 8))(v5, v25);
    (*(v28 + 8))(v8, v6);
    *(swift_allocObject() + 16) = v14;
    sub_100004098(&qword_1006B2930, &qword_1006B28F0);
    v21 = v14;
    v22 = v26;
    v23 = Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v27 + 8))(v12, v22);
    *&v21[qword_1006B8820] = v23;
  }

  return result;
}

void sub_100319564()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v14._object = 0x8000000100579A00;
  v3._countAndFlagsBits = 0xD00000000000001DLL;
  v3._object = 0x8000000100590CC0;
  v4.value._object = 0x80000001005799E0;
  v14._countAndFlagsBits = 0xD000000000000018;
  v4.value._countAndFlagsBits = 0xD000000000000013;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v14);

  v6 = String._bridgeToObjectiveC()();

  v12 = [objc_opt_self() alertControllerWithTitle:v6 message:0 preferredStyle:1];

  v7 = [v1 mainBundle];
  v15._object = 0x8000000100579B60;
  v8._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v8._object = 0xEF454C5449545F4ELL;
  v15._countAndFlagsBits = 0xD000000000000021;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v15);

  v10 = String._bridgeToObjectiveC()();

  v11 = [objc_opt_self() actionWithTitle:v10 style:0 handler:0];

  [v12 addAction:v11];
  [v0 presentViewController:v12 animated:1 completion:0];
}

id sub_100319784@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + qword_1006B8E50);
  v4 = [*(*(v3 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_messageView) + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_contentTextView) text];
  if (v4)
  {
    v5 = v4;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v22 = 0;
    v7 = 0;
  }

  v8 = [*(*(v3 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_phoneNumberView) + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_contentTextView) text];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = [*(*(v3 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_emailView) + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_contentTextView) text];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v19 = *(v1 + qword_1006D4358 + 48);
  v18 = *(v1 + qword_1006D4358 + 56);
  v20 = *(*(v3 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_sendEmailUpdatesView) + OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_toggle);

  result = [v20 isOn];
  *a1 = v22;
  *(a1 + 8) = v7;
  *(a1 + 16) = v10;
  *(a1 + 24) = v12;
  *(a1 + 32) = v15;
  *(a1 + 40) = v17;
  *(a1 + 48) = v19;
  *(a1 + 56) = v18;
  *(a1 + 64) = result;
  return result;
}

id sub_10031992C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMLostModeUpdateViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMLostModeUpdateViewController()
{
  result = qword_1006BB848;
  if (!qword_1006BB848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100319A10(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPDevice();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = type metadata accessor for FMLostModeTrackable();
  __chkstk_darwin(v8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_100319784(v23);
  if (a1 >> 61 != 2)
  {
    if (a1 >> 61 == 3)
    {

      v11 = static String.emailPredicate.getter();
      v12 = String._bridgeToObjectiveC()();

      v13 = [v11 evaluateWithObject:v12];

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_1000970F8(v1 + qword_1006D3E00, v10);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10009715C(v10);
    goto LABEL_14;
  }

  v14 = *(sub_10007EBC0(&qword_1006AFC80) + 48);
  (*(v5 + 32))(v7, v10, v4);
  v15 = FMIPDevice.isConsideredAccessory.getter();
  (*(v5 + 8))(v7, v4);
  sub_100012DF0(&v10[v14], &qword_1006B07D0);
  if ((v15 & 1) == 0)
  {
LABEL_14:
    v13 = 1;
    goto LABEL_15;
  }

  if (v25)
  {
    v16 = v24;
  }

  else
  {
    v16 = 0;
  }

  if (v25)
  {
    v17 = v25;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  v13 = sub_100122BFC(v16, v17);

LABEL_15:
  v18 = *(v2 + qword_1006D4358 + 48);
  v26[2] = *(v2 + qword_1006D4358 + 32);
  v26[3] = v18;
  v27 = *(v2 + qword_1006D4358 + 64);
  v19 = *(v2 + qword_1006D4358 + 16);
  v26[0] = *(v2 + qword_1006D4358);
  v26[1] = v19;
  v20 = sub_10026B3B8(v23, v26);
  sub_100319CD4(v23);
  return [*(v2 + qword_1006BB818) setEnabled:v13 & ~v20 & 1];
}

void sub_100319D30(void *a1)
{
  type metadata accessor for FMLostModeSummaryTextView();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = *(v3 + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_contentTextView);
  v6 = a1;
  v52 = v5;
  v7 = [v52 selectedTextRange];
  if (!v7)
  {
    v7 = [objc_allocWithZone(UITextRange) init];
  }

  v8 = [v7 end];
  [v52 caretRectForPosition:v8];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  if (v14 == 0.0 && v16 == 0.0)
  {
    v17 = [v1 scrollView];
    if (!v17)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v18 = v17;
    v19 = [v17 coordinateSpace];

    v20 = v6;
    [v4 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = [v4 coordinateSpace];

    [v19 convertRect:v29 fromCoordinateSpace:{v22, v24, v26, v28}];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v54.origin.x = v31;
    v54.origin.y = v33;
    v54.size.width = v35;
    v54.size.height = v37;
    MinX = CGRectGetMinX(v54);
    v55.origin.x = v31;
    v55.origin.y = v33;
    v55.size.width = v35;
    v55.size.height = v37;
    MaxY = CGRectGetMaxY(v55);
    v56.origin.x = v31;
    v56.origin.y = v33;
    v56.size.width = v35;
    v56.size.height = v37;
    Width = CGRectGetWidth(v56);
    v41 = 1.0;
  }

  else
  {
    v42 = [v52 coordinateSpace];
    v43 = [v1 scrollView];
    if (!v43)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v44 = v43;
    v45 = [v43 coordinateSpace];

    [v42 convertRect:v45 toCoordinateSpace:{v10, v12, v14, v16}];
    MinX = v46;
    MaxY = v47;
    Width = v48;
    v41 = v49;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v50 = [v1 scrollView];
  if (!v50)
  {
    __break(1u);
    goto LABEL_16;
  }

  v51 = v50;
  v57.origin.x = MinX;
  v57.origin.y = MaxY;
  v57.size.width = Width;
  v57.size.height = v41;
  v58 = CGRectOffset(v57, 0.0, 15.0);
  [v51 scrollRectToVisible:1 animated:{v58.origin.x, v58.origin.y, v58.size.width, v58.size.height}];
}

id sub_10031A09C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC6FindMy13FMCalloutView_path;
  *&v4[v9] = [objc_allocWithZone(UIBezierPath) init];
  *&v4[OBJC_IVAR____TtC6FindMy13FMCalloutView_triangleWidth] = 0x4028000000000000;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for FMCalloutView();
  v10 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 clearColor];
  [v12 setBackgroundColor:v13];

  [v12 setUserInteractionEnabled:0];
  return v12;
}

id sub_10031A2B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMCalloutView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10031A31C()
{
  v1 = [objc_opt_self() clearColor];
  [v1 setFill];

  v2 = OBJC_IVAR____TtC6FindMy13FMCalloutView_path;
  [*(v0 + OBJC_IVAR____TtC6FindMy13FMCalloutView_path) fill];
  v3 = [objc_allocWithZone(UITableView) init];
  v10 = [v3 separatorColor];

  if (v10)
  {
    v4 = *(v0 + v2);
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 mainScreen];
    [v7 scale];
    v9 = v8;

    [v6 setLineWidth:1.0 / v9];
    [v10 setStroke];
    [*(v0 + v2) stroke];
  }
}

uint64_t FMIPDevice.locateDeviceClass.getter()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B0080);
  __chkstk_darwin(v2 - 8);
  v4 = v29 - v3;
  FMIPDevice.category.getter();
  v5 = String.uppercased()();

  v32 = v5;
  v30 = 0x4B4F4F4243414DLL;
  v31 = 0xE700000000000000;
  v6 = type metadata accessor for Locale();
  v7 = *(*(v6 - 8) + 56);
  v7(v4, 1, 1, v6);
  sub_100035F3C();
  StringProtocol.range<A>(of:options:range:locale:)();
  v9 = v8;
  sub_10031AA18(v4);

  if ((v9 & 1) == 0)
  {
    return 4;
  }

  v29[1] = v1;
  FMIPDevice.category.getter();
  v10 = String.uppercased()();

  v32 = v10;
  v30 = 4407629;
  v31 = 0xE300000000000000;
  v7(v4, 1, 1, v6);
  StringProtocol.range<A>(of:options:range:locale:)();
  v12 = v11;
  sub_10031AA18(v4);

  if ((v12 & 1) == 0)
  {
    return 4;
  }

  FMIPDevice.category.getter();
  v13 = String.uppercased()();

  v32 = v13;
  v30 = 0x454E4F485049;
  v31 = 0xE600000000000000;
  v7(v4, 1, 1, v6);
  StringProtocol.range<A>(of:options:range:locale:)();
  v15 = v14;
  sub_10031AA18(v4);

  if ((v15 & 1) == 0)
  {
    return 2;
  }

  FMIPDevice.category.getter();
  v16 = String.uppercased()();

  v32 = v16;
  v30 = 1145131081;
  v31 = 0xE400000000000000;
  v7(v4, 1, 1, v6);
  StringProtocol.range<A>(of:options:range:locale:)();
  v18 = v17;
  sub_10031AA18(v4);

  if ((v18 & 1) == 0)
  {
    return 3;
  }

  FMIPDevice.category.getter();
  v19 = String.uppercased()();

  v32 = v19;
  v30 = 1146048585;
  v31 = 0xE400000000000000;
  v7(v4, 1, 1, v6);
  StringProtocol.range<A>(of:options:range:locale:)();
  v21 = v20;
  sub_10031AA18(v4);

  if ((v21 & 1) == 0)
  {
    return 6;
  }

  FMIPDevice.category.getter();
  v22 = String.uppercased()();

  v32 = v22;
  v30 = 0x4843544157;
  v31 = 0xE500000000000000;
  v7(v4, 1, 1, v6);
  StringProtocol.range<A>(of:options:range:locale:)();
  v24 = v23;
  sub_10031AA18(v4);

  if ((v24 & 1) == 0)
  {
    return 1;
  }

  FMIPDevice.category.getter();
  v25 = String.uppercased()();

  v32 = v25;
  v30 = 0x524F535345434341;
  v31 = 0xE900000000000059;
  v7(v4, 1, 1, v6);
  StringProtocol.range<A>(of:options:range:locale:)();
  v27 = v26;
  sub_10031AA18(v4);

  if (v27)
  {
    return 0;
  }

  else
  {
    return 7;
  }
}

uint64_t sub_10031AA18(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006B0080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FMIPDevice.playSoundDeviceClass.getter()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B0080);
  __chkstk_darwin(v2 - 8);
  v4 = v29 - v3;
  FMIPDevice.category.getter();
  v5 = String.uppercased()();

  v32 = v5;
  v30 = 0x4B4F4F4243414DLL;
  v31 = 0xE700000000000000;
  v6 = type metadata accessor for Locale();
  v7 = *(*(v6 - 8) + 56);
  v7(v4, 1, 1, v6);
  sub_100035F3C();
  StringProtocol.range<A>(of:options:range:locale:)();
  v9 = v8;
  sub_10031AA18(v4);

  if ((v9 & 1) == 0)
  {
    return 4;
  }

  v29[1] = v1;
  FMIPDevice.category.getter();
  v10 = String.uppercased()();

  v32 = v10;
  v30 = 4407629;
  v31 = 0xE300000000000000;
  v7(v4, 1, 1, v6);
  StringProtocol.range<A>(of:options:range:locale:)();
  v12 = v11;
  sub_10031AA18(v4);

  if ((v12 & 1) == 0)
  {
    return 4;
  }

  FMIPDevice.category.getter();
  v13 = String.uppercased()();

  v32 = v13;
  v30 = 0x454E4F485049;
  v31 = 0xE600000000000000;
  v7(v4, 1, 1, v6);
  StringProtocol.range<A>(of:options:range:locale:)();
  v15 = v14;
  sub_10031AA18(v4);

  if ((v15 & 1) == 0)
  {
    return 2;
  }

  FMIPDevice.category.getter();
  v16 = String.uppercased()();

  v32 = v16;
  v30 = 1145131081;
  v31 = 0xE400000000000000;
  v7(v4, 1, 1, v6);
  StringProtocol.range<A>(of:options:range:locale:)();
  v18 = v17;
  sub_10031AA18(v4);

  if ((v18 & 1) == 0)
  {
    return 3;
  }

  FMIPDevice.category.getter();
  v19 = String.uppercased()();

  v32 = v19;
  v30 = 1146048585;
  v31 = 0xE400000000000000;
  v7(v4, 1, 1, v6);
  StringProtocol.range<A>(of:options:range:locale:)();
  v21 = v20;
  sub_10031AA18(v4);

  if ((v21 & 1) == 0)
  {
    return 5;
  }

  FMIPDevice.category.getter();
  v22 = String.uppercased()();

  v32 = v22;
  v30 = 0x4843544157;
  v31 = 0xE500000000000000;
  v7(v4, 1, 1, v6);
  StringProtocol.range<A>(of:options:range:locale:)();
  v24 = v23;
  sub_10031AA18(v4);

  if ((v24 & 1) == 0)
  {
    return 1;
  }

  FMIPDevice.category.getter();
  v25 = String.uppercased()();

  v32 = v25;
  v30 = 0x524F535345434341;
  v31 = 0xE900000000000059;
  v7(v4, 1, 1, v6);
  StringProtocol.range<A>(of:options:range:locale:)();
  v27 = v26;
  sub_10031AA18(v4);

  if (v27)
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_10031B008()
{
  v1 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(v0 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_mediator) + 56);
  v5 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_10032A93C(v4 + v5, v3, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v6 = *(v3 + 1);
    v7 = *(v3 + 2);

    if (v7 >= 4)
    {
      sub_100091880(v6, v7);
      return 0;
    }

    else
    {
      return 1u >> (v7 & 0xF);
    }
  }

  else
  {
    sub_10032A9A4(v3, type metadata accessor for FMSelectedSection);
    return 1;
  }
}

void sub_10031B13C(char a1)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005B14(v3, qword_1006D4630);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31[0] = v8;
    *v7 = 136315138;
    if (v4[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_updatesEnabled])
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (v4[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_updatesEnabled])
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    v11 = sub_100005B4C(v9, v10, v31);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMDevicesListDataSource: updatesEnabled: %s", v7, 0xCu);
    sub_100006060(v8);
  }

  v12 = OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_updatesEnabled;
  if (v4[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_updatesEnabled] == 1)
  {
    v13 = *&v4[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_mediator];
    v14 = *(v13 + 24);
    type metadata accessor for FMDevicesSubscription();
    v15 = swift_allocObject();
    *(v15 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
    swift_unknownObjectWeakInit();

    UUID.init()();
    *(v15 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100636B48;
    swift_unknownObjectWeakAssign();
    v16 = *(v14 + 16);

    os_unfair_lock_lock((v16 + 24));
    sub_10000E7C0((v16 + 16));
    os_unfair_lock_unlock((v16 + 24));

    *&v4[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_deviceSubscription] = v15;

    v17 = *(v13 + 40);
    v18 = sub_1003CB7D0(v4, v17);

    *&v4[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_locationSubscription] = v18;

    LOBYTE(v14) = v4[v12] ^ a1;

    v19 = FMIPManager.devices.getter();

    v20 = *(*(v13 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
    v30 = v20;
    sub_10031D668(v19, v20, v14 & 1);

    return;
  }

  if (*&v4[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_deviceSubscription])
  {
    v21 = *(*(*&v4[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_mediator] + 24) + 16);

    os_unfair_lock_lock((v21 + 24));
    sub_10008FB6C((v21 + 16));
    os_unfair_lock_unlock((v21 + 24));
  }

  v22 = *&v4[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_locationSubscription];
  if (v22)
  {
    v23 = *(*&v4[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_mediator] + 40);
    v24 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_subscriptions;
    swift_beginAccess();

    v25 = v23;
    v26 = sub_1003CEA10(&v23[v24], v22);
    v27 = *&v23[v24];
    if (v27 >> 62)
    {
      v29 = v26;
      v28 = _CocoaArrayWrapper.endIndex.getter();
      v26 = v29;
      if (v28 >= v29)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28 >= v26)
      {
LABEL_20:
        sub_1003CEA44(v26, v28);
        swift_endAccess();

        return;
      }
    }

    __break(1u);
  }
}

char *sub_10031B5A0(uint64_t a1, void *a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v26 = *(v4 - 8);
  v27 = v4;
  __chkstk_darwin(v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  *&v2[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_deviceSubscription] = 0;
  *&v2[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_locationSubscription] = 0;
  *&v2[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_cellsViewModel] = _swiftEmptyArrayStorage;
  v9 = OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_itemAger;
  type metadata accessor for FMItemAger();
  swift_allocObject();
  *&v2[v9] = sub_10002BE70();
  v25 = OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_updateQueue;
  v24[1] = sub_10000905C(0, &qword_1006AEDC0);
  static DispatchQoS.userInitiated.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_10000A348(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007EBC0(&unk_1006AEDD0);
  sub_100004044(&unk_1006B0630, &unk_1006AEDD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v26 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v27);
  *&v2[v25] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v2[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_delayedUpdateWorkItem] = 0;
  v2[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_isRemovingCell] = 0;
  v10 = &v2[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource__listTitle];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v2[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_updatesEnabled] = 0;
  v11 = &v2[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_listSubtitle];
  *v11 = 0;
  *(v11 + 1) = 0;
  v13 = v28;
  v12 = v29;
  *&v3[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_mediator] = v28;
  *&v3[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_tableView] = v12;
  v14 = type metadata accessor for FMDevicesListDataSource();
  v30.receiver = v3;
  v30.super_class = v14;

  v15 = v12;
  v16 = objc_msgSendSuper2(&v30, "init");
  sub_10007EBC0(&unk_1006BBCD0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = v16;
  v19 = String._bridgeToObjectiveC()();
  [v15 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v19];

  *(*&v18[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_itemAger] + 24) = &off_100636B08;
  swift_unknownObjectWeakAssign();

  sub_10031E57C();
  v20 = FMIPManager.devices.getter();
  v21 = *(*(v13 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  v22 = v21;
  sub_10031D668(v20, v21, 0);

  return v18;
}

unint64_t sub_10031BA04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v46 - v10;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_100005B14(v12, qword_1006D4630);
  v14 = *(v6 + 16);
  v14(v11, a1, v5);
  v50 = a1;
  v14(v9, a1, v5);
  v15 = v2;
  v49 = v13;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = &OBJC_IVAR____TtC6FindMy16FMCustomRoleView_deleteButton;
  if (os_log_type_enabled(v16, v17))
  {
    v48 = a2;
    v19 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v51 = v47;
    *v19 = 136315650;
    v20 = IndexPath.debugDescription.getter();
    v22 = v21;
    v46 = *(v6 + 8);
    v46(v11, v5);
    v23 = sub_100005B4C(v20, v22, &v51);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2048;
    v24 = OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_cellsViewModel;
    v25 = *(*&v15[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_cellsViewModel] + 16);

    *(v19 + 14) = v25;
    *(v19 + 22) = 2048;
    result = IndexPath.section.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v27 = *&v15[v24];
    if (result >= *(v27 + 16))
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v28 = *(*(v27 + 8 * result + 32) + 16);

    v46(v9, v5);
    *(v19 + 24) = v28;

    _os_log_impl(&_mh_execute_header, v16, v17, "FMDevicesListDataSource: device for index path: %s, section: %ld row: %ld", v19, 0x20u);
    sub_100006060(v47);

    a2 = v48;
    v18 = &OBJC_IVAR____TtC6FindMy16FMCustomRoleView_deleteButton;
  }

  else
  {

    v29 = *(v6 + 8);
    v29(v9, v5);

    v29(v11, v5);
  }

  v30 = IndexPath.section.getter();
  v31 = v18[393];
  if (v30 >= *(*&v15[v31] + 16))
  {
    goto LABEL_17;
  }

  v32 = IndexPath.row.getter();
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

  v33 = *&v15[v31];
  if (result >= *(v33 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v32 < *(*(v33 + 8 * result + 32) + 16))
  {
    v34 = IndexPath.section.getter();
    result = IndexPath.row.getter();
    if ((v34 & 0x8000000000000000) == 0)
    {
      v35 = *&v15[v31];
      if (v34 < *(v35 + 16))
      {
        v36 = result;
        if ((result & 0x8000000000000000) == 0)
        {
          v37 = *(v35 + 8 * v34 + 32);
          if (result < *(v37 + 16))
          {
            v38 = *(type metadata accessor for FMDeviceCellViewModel() - 8);
            v39 = v37 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v36;
            v40 = *(v39 + 16);
            v41 = *(v39 + 24);

            sub_1000E512C(v40, v41, a2);
          }

          goto LABEL_27;
        }

LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "FMDevicesListDataSource: Not returning any device... out of bound", v44, 2u);
  }

  v45 = type metadata accessor for FMIPDevice();
  return (*(*(v45 - 8) + 56))(a2, 1, 1, v45);
}

unint64_t sub_10031BF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v43 - v10;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_100005B14(v12, qword_1006D4630);
  v14 = *(v6 + 16);
  v14(v11, a1, v5);
  v47 = a1;
  v14(v9, a1, v5);
  v15 = v2;
  v46 = v13;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = &OBJC_IVAR____TtC6FindMy16FMCustomRoleView_deleteButton;
  if (os_log_type_enabled(v16, v17))
  {
    v45 = a2;
    v19 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v48 = v44;
    *v19 = 136315650;
    v20 = IndexPath.debugDescription.getter();
    v22 = v21;
    v43 = *(v6 + 8);
    v43(v11, v5);
    v23 = sub_100005B4C(v20, v22, &v48);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2048;
    v24 = OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_cellsViewModel;
    v25 = *(*&v15[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_cellsViewModel] + 16);

    *(v19 + 14) = v25;
    *(v19 + 22) = 2048;
    result = IndexPath.section.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v27 = *&v15[v24];
    if (result >= *(v27 + 16))
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v28 = *(*(v27 + 8 * result + 32) + 16);

    v43(v9, v5);
    *(v19 + 24) = v28;

    _os_log_impl(&_mh_execute_header, v16, v17, "FMDevicesListDataSource: device for index path: %s, section: %ld row: %ld", v19, 0x20u);
    sub_100006060(v44);

    a2 = v45;
    v18 = &OBJC_IVAR____TtC6FindMy16FMCustomRoleView_deleteButton;
  }

  else
  {

    v29 = *(v6 + 8);
    v29(v9, v5);

    v29(v11, v5);
  }

  v30 = IndexPath.section.getter();
  v31 = v18[393];
  if (v30 >= *(*&v15[v31] + 16))
  {
    goto LABEL_17;
  }

  v32 = IndexPath.row.getter();
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

  v33 = *&v15[v31];
  if (result >= *(v33 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v32 < *(*(v33 + 8 * result + 32) + 16))
  {
    v34 = IndexPath.section.getter();
    result = IndexPath.row.getter();
    if ((v34 & 0x8000000000000000) == 0)
    {
      v35 = *&v15[v31];
      if (v34 < *(v35 + 16))
      {
        v36 = result;
        if ((result & 0x8000000000000000) == 0)
        {
          v37 = *(v35 + 8 * v34 + 32);
          if (result < *(v37 + 16))
          {
            v38 = type metadata accessor for FMDeviceCellViewModel();
            return sub_1001104A8(v37 + ((*(*(v38 - 8) + 80) + 32) & ~*(*(v38 - 8) + 80)) + *(*(v38 - 8) + 72) * v36 + *(v38 + 24), a2);
          }

          goto LABEL_27;
        }

LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "FMDevicesListDataSource: Not returning any device... out of bound", v41, 2u);
  }

  v42 = type metadata accessor for FMIPItem();
  return (*(*(v42 - 8) + 56))(a2, 1, 1, v42);
}

void sub_10031C438()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_mediator);

  v2 = FMIPManager.devices.getter();

  v3 = *(*(v1 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  v4 = v3;
  sub_10031D668(v2, v3, 0);
}

unint64_t sub_10031C530(void *a1)
{
  v3 = type metadata accessor for FMDeviceCellViewModel();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v9 = [a1 dequeueReusableCellWithIdentifier:v7 forIndexPath:isa];

  sub_10007EBC0(&unk_1006BBCD0);
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = v10;
  v12 = IndexPath.row.getter();
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_cellsViewModel;
  v15 = *(v1 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_cellsViewModel);
  if (result >= *(v15 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v12 < *(*(v15 + 8 * result + 32) + 16))
  {
    v16 = IndexPath.section.getter();
    result = IndexPath.row.getter();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v17 = *(v1 + v14);
      if (v16 < *(v17 + 16))
      {
        if ((result & 0x8000000000000000) == 0)
        {
          v18 = *(v17 + 8 * v16 + 32);
          if (result < *(v18 + 16))
          {
            sub_10032A93C(v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * result, v6, type metadata accessor for FMDeviceCellViewModel);
            result = IndexPath.section.getter();
            if ((result & 0x8000000000000000) == 0)
            {
              v19 = *(v1 + v14);
              if (result < *(v19 + 16))
              {
                v20 = *(*(v19 + 8 * result + 32) + 16);
                v21 = IndexPath.row.getter() == v20 - 1;
                *(v11 + qword_1006B72D0) = v21;
                v22 = qword_1006B72B8;
                [*(v11 + qword_1006B72B8) setHidden:?];
                v23 = [v11 containerView];
                [v23 bounds];
                v25 = v24;

                v26 = *(v11 + v22);
                v27 = sub_10052B310();
                sub_100046EA0();
                [v26 setFrame:{v27, v25 + -1.0, v28, 1.0}];
                (*((swift_isaMask & *v11) + 0x168))(v6);
                sub_10032A9A4(v6, type metadata accessor for FMDeviceCellViewModel);
                return v11;
              }

              goto LABEL_22;
            }

LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
            return result;
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

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_12:

  v29 = objc_allocWithZone(UITableViewCell);

  return [v29 init];
}

void sub_10031CA54(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a1 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_mediator) + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  v4 = v3;
  sub_10031D668(a2, v3, 0);
}

uint64_t sub_10031CAD4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v6 - 8);
  __chkstk_darwin(v6);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPDevice();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100005B14(v13, qword_1006D4630);
  (*(v10 + 16))(v12, a3, v9);
  v14 = a2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v35 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v36 = v6;
    v21 = v20;
    aBlock[0] = v20;
    *v18 = 138412546;
    *(v18 + 4) = v14;
    *v19 = v14;
    *(v18 + 12) = 2080;
    v22 = v14;
    v23 = FMIPDevice.debugDescription.getter();
    v25 = v24;
    (*(v10 + 8))(v12, v9);
    v26 = sub_100005B4C(v23, v25, aBlock);

    *(v18 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v15, v16, "FMDevicesListDataSource: didUpdate image %@ device %s", v18, 0x16u);
    sub_100012DF0(v19, &unk_1006AF760);

    sub_100006060(v21);
    v6 = v36;

    a1 = v35;
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v27 = static OS_dispatch_queue.main.getter();
  v28 = swift_allocObject();
  v29 = v37;
  *(v28 + 16) = v37;
  *(v28 + 24) = a1;
  aBlock[4] = sub_10032AAD0;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100637048;
  v30 = _Block_copy(aBlock);
  v31 = v29;

  v32 = v38;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A348(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  v33 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);

  (*(v42 + 8))(v33, v6);
  return (*(v39 + 8))(v32, v41);
}

uint64_t sub_10031D034(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWallTime();
  v23 = *(v4 - 8);
  v24 = v4;
  v5 = __chkstk_darwin(v4);
  v21 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v22 = &v20 - v7;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v8);
  v9 = OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_delayedUpdateWorkItem;
  if (*(a1 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_delayedUpdateWorkItem))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a2;
  aBlock[4] = sub_10032AAD8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006370C0;
  _Block_copy(aBlock);
  v25 = _swiftEmptyArrayStorage;
  sub_10000A348(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);

  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v12 = DispatchWorkItem.init(flags:block:)();

  *(a1 + v9) = v12;

  sub_10000905C(0, &qword_1006AEDC0);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = v21;
  static DispatchWallTime.now()();
  v15 = v22;
  + infix(_:_:)();
  v16 = *(v23 + 8);
  v17 = v14;
  v18 = v24;
  v16(v17, v24);
  OS_dispatch_queue.asyncAfter(wallDeadline:execute:)();

  return (v16)(v15, v18);
}

void sub_10031D3B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = FMIPManager.devices.getter();
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_mediator);
      v5 = v3;

      v6 = *(v4 + 40);

      v7 = *&v6[OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation];
      v8 = v7;
    }

    else
    {
      v7 = 0;
    }

    sub_10031D668(v2, v7, 0);
  }
}

void sub_10031D4B8(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_mediator);

  v4 = FMIPManager.devices.getter();

  v5 = *(*(v3 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  v6 = v5;
  sub_10031D668(v4, v5, a2);
}

void sub_10031D56C(uint64_t a1, unint64_t a2)
{

  v3 = FMIPManager.devices.getter();

  if (a2 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v4 = *(a2 + 32);
  }

  v5 = v4;
LABEL_9:
  v6 = v5;
  sub_10031D668(v3, v5, 0);
}

void sub_10031D668(uint64_t a1, NSObject *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_updatesEnabled] == 1)
  {
    v37 = v14;
    if ([*&v4[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_tableView] isEditing])
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100005B14(v17, qword_1006D4630);
      v38 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v38, v18, "FMDevicesListDataSource: Ignoring data source update due to editing mode", v19, 2u);
      }

      v20 = v38;
    }

    else
    {
      v38 = a2;
      v35 = v13;
      v36 = v9;
      v21 = *&v4[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_cellsViewModel];
      v22 = *(a1 + 16);

      v23 = 0;
      while (v22 != v23)
      {
        type metadata accessor for FMIPDevice();
        ++v23;
        if (FMIPDevice.isBrassStatusTrue.getter())
        {
          v24 = [objc_opt_self() sharedInstance];
          v44 = State.rawValue.getter;
          v45 = 0;
          aBlock = _NSConcreteStackBlock;
          v41 = 1107296256;
          v42 = sub_1001A44B4;
          v43 = &unk_100636F08;
          v25 = _Block_copy(&aBlock);
          [v24 downloadWithReply:v25];
          _Block_release(v25);

          break;
        }
      }

      v26 = swift_allocObject();
      *(v26 + 16) = v4;
      *(v26 + 24) = a1;
      *(v26 + 32) = v38;
      *(v26 + 40) = v21;
      *(v26 + 48) = a3 & 1;
      if (v22 < 0xB || (a3 & 1) != 0)
      {
        v31 = v38;
        v32 = v38;
        v33 = v4;

        sub_10031DC38(v33, a1, v31, v21, a3 & 1);
      }

      else
      {
        v27 = swift_allocObject();
        *(v27 + 16) = sub_10032AA68;
        *(v27 + 24) = v26;
        v44 = sub_100009624;
        v45 = v27;
        aBlock = _NSConcreteStackBlock;
        v41 = 1107296256;
        v42 = sub_100004AE4;
        v43 = &unk_100636F80;
        v28 = _Block_copy(&aBlock);
        v29 = v38;
        v30 = v4;

        static DispatchQoS.unspecified.getter();
        v39 = _swiftEmptyArrayStorage;
        sub_10000A348(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10007EBC0(&unk_1006B0640);
        sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v28);

        (*(v36 + 8))(v11, v8);
        (*(v35 + 8))(v16, v37);
      }
    }
  }
}

uint64_t sub_10031DC38(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v34 = *(v13 - 8);
  v35 = v13;
  __chkstk_darwin(v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10031E990(a2, a3);

  v18 = sub_10034A06C(v17);

  v19 = sub_10052A81C(v18);

  sub_100036B80(v19);

  if (sub_100245174(v16, a4) & 1) == 0 || (a5)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100005B14(v21, qword_1006D4630);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134218240;
      *(v24 + 4) = *(v16 + 16);

      *(v24 + 12) = 2048;
      *(v24 + 14) = *(a4 + 16);

      _os_log_impl(&_mh_execute_header, v22, v23, "FMDevicesListDataSource: reloading table view new: %ld, old: %ld", v24, 0x16u);
    }

    else
    {
    }

    v25 = swift_allocObject();
    *(v25 + 16) = v16;
    *(v25 + 24) = a1;
    v26 = objc_opt_self();

    v27 = a1;
    v28 = [v26 currentThread];
    v29 = [v28 isMainThread];

    if (v29)
    {
      sub_10031E1C0(v16, v27);
    }

    else
    {

      sub_10000905C(0, &qword_1006AEDC0);
      v30 = static OS_dispatch_queue.main.getter();
      v31 = swift_allocObject();
      *(v31 + 16) = sub_10032AA78;
      *(v31 + 24) = v25;
      aBlock[4] = sub_1000CE0E8;
      aBlock[5] = v31;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_100636FF8;
      v32 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10000A348(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640);
      sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v32);

      (*(v36 + 8))(v12, v10);
      return (*(v34 + 8))(v15, v35);
    }
  }

  else
  {
  }
}

uint64_t sub_10031E1C0(uint64_t a1, uint64_t a2)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    sub_10007EBC0(&unk_1006C0340);
    v9 = Array.debugDescription.getter();
    v11 = sub_100005B4C(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMDevicesListDataSource: model update with %s", v7, 0xCu);
    sub_100006060(v8);
  }

  *(a2 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_cellsViewModel) = a1;

  sub_10031E3E8();
  sub_100037FA8();
  v12 = a2 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    (*(v14 + 8))(a2, &off_100636A60, ObjectType, v14);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10031E3E8()
{
  v1 = v0;
  v2 = 0;
  v3 = *(v0 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_cellsViewModel);
  v4 = *(v3 + 16);
  v5 = (v3 + 32);
  while (v4)
  {
    v6 = *v5++;
    v7 = *(v6 + 16);
    --v4;
    v8 = __OFADD__(v2, v7);
    v2 += v7;
    if (v8)
    {
      __break(1u);
      break;
    }
  }

  v9 = [objc_opt_self() mainBundle];
  v21._object = 0x8000000100590FE0;
  v10._object = 0x8000000100590FB0;
  v21._countAndFlagsBits = 0xD000000000000036;
  v10._countAndFlagsBits = 0xD000000000000024;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v21);

  sub_10007EBC0(&unk_1006B20B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100552220;
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_10008EE84();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  v16 = String.init(format:_:)();
  v18 = v17;

  v19 = (v1 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_listSubtitle);
  *v19 = v16;
  v19[1] = v18;
}

uint64_t sub_10031E57C()
{
  v1 = v0;
  v2 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMDevicesListDataSource: updateListTitle", v8, 2u);
  }

  v9 = *(*(v1 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_mediator) + 56);
  v10 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_10032A93C(v9 + v10, v4, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v11 = *(v4 + 1);
    v12 = *(v4 + 2);

    if (v12 > 1)
    {
      if (v12 == 3)
      {
        return result;
      }

      if (v12 == 2)
      {
        v14 = [objc_opt_self() mainBundle];
        v15 = 0xD000000000000011;
        v29 = 0x8000000100590F80;
        v16 = 0x8000000100590F60;
        v17 = 0xD000000000000023;
        goto LABEL_15;
      }

LABEL_19:
      v14 = [objc_opt_self() mainBundle];
      v31._object = 0x8000000100590EF0;
      v26._countAndFlagsBits = 0x5F53454349564544;
      v26._object = 0xEC000000454D4F48;
      v31._countAndFlagsBits = 0xD00000000000001ELL;
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v14, v27, v31);
      countAndFlagsBits = v28._countAndFlagsBits;
      object = v28._object;
      sub_100091880(v11, v12);
      goto LABEL_17;
    }

    if (v12)
    {
      if (v12 == 1)
      {
        v14 = [objc_opt_self() mainBundle];
        v15 = 0xD000000000000010;
        v29 = 0x8000000100590F30;
        v16 = 0x8000000100590F10;
        v17 = 0xD000000000000022;
LABEL_15:
        v19.super.isa = v14;
        v20 = 0;
        v21 = 0xE000000000000000;
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    v18 = [objc_opt_self() mainBundle];
  }

  else
  {
    sub_10032A9A4(v4, type metadata accessor for FMSelectedSection);
    v18 = [objc_opt_self() mainBundle];
  }

  v14 = v18;
  v29 = 0x8000000100587660;
  v15 = 0x5F53454349564544;
  v16 = 0xEB00000000424154;
  v19.super.isa = v14;
  v20 = 0;
  v21 = 0xE000000000000000;
  v17 = 0xD00000000000001DLL;
LABEL_16:
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v15, 0, v19, *&v20, *&v17);
  countAndFlagsBits = v22._countAndFlagsBits;
  object = v22._object;
LABEL_17:

  v25 = (v1 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource__listTitle);
  *v25 = countAndFlagsBits;
  v25[1] = object;
}

uint64_t sub_10031E990(uint64_t a1, void *a2)
{
  v394 = a2;
  v3 = type metadata accessor for FMDeviceCellViewModel();
  v391 = *(v3 - 8);
  v4 = __chkstk_darwin(v3 - 8);
  v413 = &v338 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v412 = &v338 - v7;
  v8 = __chkstk_darwin(v6);
  v354 = &v338 - v9;
  __chkstk_darwin(v8);
  v361 = &v338 - v10;
  v396 = type metadata accessor for FMIPDeviceImageCacheRequest();
  v428 = *(v396 - 8);
  v11 = __chkstk_darwin(v396);
  v381 = &v338 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v373 = &v338 - v14;
  __chkstk_darwin(v13);
  v359 = &v338 - v15;
  v16 = type metadata accessor for FMIPDeviceImageSize();
  v426 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v368 = &v338 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v338 - v20;
  v22 = __chkstk_darwin(v19);
  v395 = &v338 - v23;
  __chkstk_darwin(v22);
  v360 = &v338 - v24;
  v25 = sub_10007EBC0(&qword_1006B07D0);
  v26 = __chkstk_darwin(v25 - 8);
  v380 = &v338 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v358 = &v338 - v29;
  v30 = __chkstk_darwin(v28);
  v367 = &v338 - v31;
  __chkstk_darwin(v30);
  v33 = &v338 - v32;
  v410 = type metadata accessor for FMIPItem();
  v34 = *(v410 - 8);
  v35 = __chkstk_darwin(v410);
  v342 = &v338 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v350 = &v338 - v38;
  v39 = __chkstk_darwin(v37);
  v404 = &v338 - v40;
  v41 = __chkstk_darwin(v39);
  v403 = &v338 - v42;
  __chkstk_darwin(v41);
  v369 = &v338 - v43;
  v372 = type metadata accessor for FMSelectedSection();
  v44 = __chkstk_darwin(v372);
  v351 = &v338 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v371 = &v338 - v46;
  v47 = sub_10007EBC0(&unk_1006BB1C0);
  v48 = __chkstk_darwin(v47 - 8);
  v379 = &v338 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v353 = &v338 - v51;
  __chkstk_darwin(v50);
  v400 = &v338 - v52;
  v427 = type metadata accessor for FMIPItemGroup();
  v53 = *(v427 - 8);
  v54 = __chkstk_darwin(v427);
  v378 = &v338 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v393 = &v338 - v56;
  v57 = sub_10007EBC0(&unk_1006BB1B0);
  v58 = __chkstk_darwin(v57 - 8);
  v377 = &v338 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __chkstk_darwin(v58);
  v341 = &v338 - v61;
  v62 = __chkstk_darwin(v60);
  v349 = &v338 - v63;
  __chkstk_darwin(v62);
  v399 = &v338 - v64;
  v65 = sub_10007EBC0(&unk_1006C0220);
  v66 = __chkstk_darwin(v65 - 8);
  v376 = &v338 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __chkstk_darwin(v66);
  v340 = &v338 - v69;
  v70 = __chkstk_darwin(v68);
  v348 = &v338 - v71;
  __chkstk_darwin(v70);
  v398 = &v338 - v72;
  v425 = type metadata accessor for FMIPSafeLocationType();
  v73 = *(v425 - 8);
  v74 = __chkstk_darwin(v425);
  v375 = &v338 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __chkstk_darwin(v74);
  v339 = &v338 - v77;
  v78 = __chkstk_darwin(v76);
  v347 = &v338 - v79;
  __chkstk_darwin(v78);
  v397 = &v338 - v80;
  v392 = 0;
  v81 = type metadata accessor for FMIPDevice();
  v82 = __chkstk_darwin(v81);
  v401 = &v338 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __chkstk_darwin(v82);
  v355 = &v338 - v85;
  v86 = __chkstk_darwin(v84);
  v357 = &v338 - v87;
  v88 = __chkstk_darwin(v86);
  v89 = __chkstk_darwin(v88);
  v352 = &v338 - v90;
  __chkstk_darwin(v89);
  v96 = &v338 - v91;
  v97 = &_swiftEmptyDictionarySingleton;
  v436 = &_swiftEmptyDictionarySingleton;
  v98 = *(a1 + 16);
  if (v98)
  {
    v99 = a1;
    v418 = v92;
    v100 = 0;
    v102 = *(v93 + 16);
    v101 = (v93 + 16);
    v424 = v99 + ((*(v101 + 64) + 32) & ~*(v101 + 64));
    v429 = v101 - 1;
    v390 = OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_mediator;
    v421 = (v73 + 104);
    v419 = (v73 + 8);
    v420 = enum case for FMIPSafeLocationType.home(_:);
    v423 = (v53 + 48);
    v382 = (v53 + 32);
    v384 = (v53 + 8);
    v407 = (v34 + 16);
    v408 = (v34 + 32);
    v409 = (v34 + 8);
    v402 = (v34 + 56);
    v362 = (v34 + 48);
    v389 = enum case for FMIPDeviceImageSize.list(_:);
    v388 = (v426 + 13);
    v386 = (v428 + 1);
    v385 = (v426 + 1);
    v422 = v101[7];
    *&v95 = 136315138;
    v370 = v95;
    *&v95 = 136315394;
    v338 = v95;
    v405 = v16;
    v374 = v21;
    v363 = v33;
    v414 = v34;
    v103 = v102;
    v104 = v427;
    v433 = v101;
    v105 = v401;
    v430 = &v338 - v91;
    v106 = v406;
    v107 = v94;
    v431 = v94;
    v383 = v98;
    v432 = v102;
    v387 = (v426 + 2);
    while (1)
    {
      v103(v96, v424 + v422 * v100, v107);
      if ((sub_100321DA8(v96) & 1) == 0)
      {
        (*v429)(v96, v107);
        goto LABEL_4;
      }

      v415 = v100;
      v428 = *(v106 + v390);
      v108 = v397;
      v109 = v425;
      v417 = *v421;
      v417(v397, v420, v425);

      v110 = v398;
      FMIPDevice.bestLocation.getter();
      v111 = v399;
      sub_1000E698C(v108, v110, v399);

      sub_100012DF0(v111, &unk_1006BB1B0);
      sub_100012DF0(v110, &unk_1006C0220);
      v416 = *v419;
      v416(v108, v109);
      v112 = FMIPDevice.ownerIdentifier.getter();
      if (!v436[2])
      {
        break;
      }

      sub_10000726C(v112, v113);
      v115 = v114;

      if ((v115 & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_11:
      v121 = v400;
      FMIPDevice.itemGroup.getter();
      v122 = *v423;
      v123 = (*v423)(v121, 1, v104);
      v124 = v431;
      v103 = v432;
      v426 = v122;
      if (v123 == 1)
      {
        sub_100012DF0(v121, &unk_1006BB1C0);
        goto LABEL_24;
      }

      (*v382)(v393, v121, v104);
      v125 = v428[7];
      v126 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
      swift_beginAccess();
      v127 = v125 + v126;
      v128 = v371;
      sub_10032A93C(v127, v371, type metadata accessor for FMSelectedSection);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        sub_10032A9A4(v128, type metadata accessor for FMSelectedSection);
LABEL_23:
        (*v384)(v393, v104);
LABEL_24:
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v147 = type metadata accessor for Logger();
        sub_100005B14(v147, qword_1006D4630);
        v103(v105, v96, v124);
        v148 = Logger.logObject.getter();
        v149 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v148, v149))
        {
          v150 = swift_slowAlloc();
          v151 = swift_slowAlloc();
          v434[0] = v151;
          *v150 = v370;
          v103(v418, v105, v124);
          v152 = String.init<A>(describing:)();
          v154 = v153;
          v411 = *v429;
          v411(v105, v124);
          v155 = sub_100005B4C(v152, v154, v434);

          *(v150 + 4) = v155;
          _os_log_impl(&_mh_execute_header, v148, v149, "FMDevicesListDataSource: Using non-primary part for: %s", v150, 0xCu);
          sub_100006060(v151);
          v104 = v427;
        }

        else
        {

          v411 = *v429;
          v411(v105, v124);
        }

        v156 = v379;
        v157 = v428;
        v158 = v375;
        v159 = v425;
        v417(v375, v420, v425);

        v160 = v376;
        v161 = v430;
        FMIPDevice.bestLocation.getter();
        v162 = v377;
        sub_1000E698C(v158, v160, v377);

        sub_100012DF0(v160, &unk_1006C0220);
        v416(v158, v159);
        v163 = type metadata accessor for FMIPSafeLocation();
        LODWORD(v417) = (*(*(v163 - 8) + 48))(v162, 1, v163);
        sub_100012DF0(v162, &unk_1006BB1B0);
        FMIPDevice.itemGroup.getter();
        if ((v426)(v156, 1, v104) == 1)
        {
          sub_100012DF0(v156, &unk_1006BB1C0);
          v164 = v395;
          v165 = v405;
          (*v388)(v395, v389, v405);
          v166 = v161;
          v167 = v418;
          v168 = v431;
          v432(v418, v161, v431);
          (*v387)(v368, v164, v165);
          v169 = objc_opt_self();

          v170 = [v169 mainScreen];
          [v170 scale];

          v171 = v373;
          FMIPDeviceImageCacheRequest.init(device:size:scale:)();
          dispatch thunk of FMImageCache.cachedImage(for:completion:)();
          (*v386)(v171, v396);

          v172 = v434[0];
          (*v385)(v164, v165);
        }

        else
        {
          (*v382)(v378, v156, v104);
          v173 = *(v157[3] + 24);

          v174 = FMIPItemGroup.items.getter();
          v426 = sub_10053840C(v174);

          v175 = v374;
          v176 = v405;
          (*v388)(v374, v389, v405);
          v177 = v418;
          v179 = v431;
          v178 = v432;
          v432(v418, v161, v431);
          v180 = *v387;
          v181 = v395;
          (*v387)(v395, v175, v176);
          v182 = objc_opt_self();
          v183 = [v182 mainScreen];
          [v183 scale];

          FMIPDeviceImageCacheRequest.init(itemParts:device:size:scale:)();
          v426 = v173;
          dispatch thunk of FMImageCache.cachedImage(for:completion:)();
          v172 = v434[0];
          if (v434[0])
          {

            v184 = v405;
            v185 = v374;
            (*v386)(v381, v396);
          }

          else
          {
            v178(v177, v430, v179);
            v185 = v374;
            v184 = v405;
            v180(v181, v374, v405);
            v186 = [v182 mainScreen];
            [v186 scale];

            v187 = v373;
            FMIPDeviceImageCacheRequest.init(device:size:scale:)();
            dispatch thunk of FMImageCache.cachedImage(for:completion:)();
            v188 = *v386;
            v189 = v396;
            (*v386)(v187, v396);

            v172 = v435;
            v188(v381, v189);
          }

          (*v385)(v185, v184);
          (*v384)(v378, v427);
          v167 = v418;
          v166 = v430;
          v168 = v431;
          v157 = v428;
        }

        v190 = v417 != 1;
        v428 = v172;

        v191 = FMIPManager.familyMembers.getter();

        v432(v167, v166, v168);
        v192 = v380;
        (*v402)(v380, 1, 1, v410);
        v193 = *(v157[5] + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision);

        v194 = v394;
        v195 = v394;

        v196 = v412;
        sub_1003104DC(v157, v167, v192, v172, v194, (v193 & 1) == 0, v191, v190, v412, 0, 0);
        v197 = FMIPDevice.ownerIdentifier.getter();
        v199 = v198;
        sub_10032A93C(v196, v413, type metadata accessor for FMDeviceCellViewModel);
        v200 = v436;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v434[0] = v200;
        v203 = sub_10000726C(v197, v199);
        v204 = v200[2];
        v205 = (v202 & 1) == 0;
        v206 = v204 + v205;
        if (__OFADD__(v204, v205))
        {
          goto LABEL_140;
        }

        v207 = v202;
        v96 = v166;
        if (v200[3] >= v206)
        {
          v98 = v383;
          v103 = v432;
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v202 & 1) == 0)
            {
              goto LABEL_141;
            }
          }

          else
          {
            sub_1001BDC24();
            if ((v207 & 1) == 0)
            {
              goto LABEL_141;
            }
          }
        }

        else
        {
          sub_1001B5C98(v206, isUniquelyReferenced_nonNull_native);
          v208 = sub_10000726C(v197, v199);
          v98 = v383;
          if ((v207 & 1) != (v209 & 1))
          {
            goto LABEL_143;
          }

          v203 = v208;
          v103 = v432;
          if ((v207 & 1) == 0)
          {
            goto LABEL_141;
          }
        }

        v210 = *(v434[0][7] + 8 * v203);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v210 = sub_10008BBF0(0, v210[2] + 1, 1, v210);
        }

        v211 = v428;
        v213 = v210[2];
        v212 = v210[3];
        if (v213 >= v212 >> 1)
        {
          v210 = sub_10008BBF0(v212 > 1, v213 + 1, 1, v210);
        }

        v210[2] = v213 + 1;
        sub_10032AA04(v413, v210 + ((*(v391 + 80) + 32) & ~*(v391 + 80)) + *(v391 + 72) * v213);

        *(v434[0][7] + 8 * v203) = v210;

        sub_10032A9A4(v412, type metadata accessor for FMDeviceCellViewModel);
        v214 = v431;
        v411(v96, v431);
        v107 = v214;

        v436 = v434[0];
        v104 = v427;
        v105 = v401;
        v100 = v415;
        v106 = v406;
        goto LABEL_4;
      }

      v129 = *(v128 + 8);
      v130 = *(v128 + 16);

      if (v130 < 2)
      {
        goto LABEL_23;
      }

      if (v130 != 2)
      {
        if (v130 == 3)
        {
          goto LABEL_23;
        }

        sub_100091880(v129, v130);
      }

      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v131 = type metadata accessor for Logger();
      v132 = sub_100005B14(v131, qword_1006D4630);
      v133 = v352;
      v103(v352, v96, v124);
      v346 = v132;
      v134 = Logger.logObject.getter();
      v135 = static os_log_type_t.default.getter();
      v136 = os_log_type_enabled(v134, v135);
      v137 = v124;
      v138 = v353;
      if (v136)
      {
        v139 = v133;
        v140 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v434[0] = v141;
        *v140 = v370;
        v103(v418, v139, v137);
        v142 = String.init<A>(describing:)();
        v144 = v143;
        v145 = v139;
        v96 = v430;
        v356 = *v429;
        v356(v145, v137);
        v146 = sub_100005B4C(v142, v144, v434);
        v103 = v432;

        *(v140 + 4) = v146;
        v122 = v426;
        _os_log_impl(&_mh_execute_header, v134, v135, "FMDevicesListDataSource: Using item group for: %s", v140, 0xCu);
        sub_100006060(v141);
        v104 = v427;
      }

      else
      {

        v356 = *v429;
        v356(v133, v137);
      }

      v106 = v406;
      FMIPDevice.itemGroup.getter();
      if ((v122)(v138, 1, v104) == 1)
      {
        sub_100012DF0(v138, &unk_1006BB1C0);
        v215 = &_swiftEmptySetSingleton;
      }

      else
      {
        v215 = FMIPItemGroup.groupedItems.getter();
        (*v384)(v138, v104);
      }

      v216 = v410;
      v217 = 0;
      v411 = v215;
      v220 = *(v215 + 7);
      v219 = v215 + 56;
      v218 = v220;
      v221 = 1 << *(v219 - 24);
      if (v221 < 64)
      {
        v222 = ~(-1 << v221);
      }

      else
      {
        v222 = -1;
      }

      v223 = v222 & v218;
      v224 = (v221 + 63) >> 6;
      v366 = v219;
      v365 = v224;
      if ((v222 & v218) != 0)
      {
        while (1)
        {
LABEL_59:
          v226 = *(*(v411 + 6) + ((v217 << 9) | (8 * __clz(__rbit64(v223)))));
          v223 &= v223 - 1;
          v227 = (v226 + 7);
          v228 = 1 << *(v226 + 32);
          v229 = v228 < 64 ? ~(-1 << v228) : -1;
          v230 = v229 & v226[7];
          v231 = (v228 + 63) >> 6;
          swift_bridgeObjectRetain_n();
          v232 = 0;
          v233 = v414;
          v426 = v226;
          if (v230)
          {
            while (1)
            {
              v234 = v232;
LABEL_67:
              v235 = v226[6] + *(v233 + 72) * (__clz(__rbit64(v230)) | (v234 << 6));
              v236 = v233;
              v237 = v403;
              (*(v233 + 16))(v403, v235, v216);
              v238 = *(v236 + 32);
              v239 = v404;
              v238(v404, v237, v216);
              if (FMIPItem.primaryItemPart.getter())
              {
                break;
              }

              v230 &= v230 - 1;
              (*v409)(v239, v216);
              v232 = v234;
              v233 = v414;
              v96 = v430;
              v226 = v426;
              if (!v230)
              {
                goto LABEL_64;
              }
            }

            v243 = v367;
            v238(v367, v239, v216);
            v244 = *v402;
            (*v402)(v243, 0, 1, v216);
            v241 = v363;
            v238(v363, v243, v216);
            v364 = v244;
            v244(v241, 0, 1, v216);
            v242 = *v362;
            v96 = v430;
          }

          else
          {
            while (1)
            {
LABEL_64:
              v234 = v232 + 1;
              if (__OFADD__(v232, 1))
              {
                __break(1u);
                goto LABEL_138;
              }

              if (v234 >= v231)
              {
                break;
              }

              v230 = *&v227[8 * v234];
              ++v232;
              if (v230)
              {
                goto LABEL_67;
              }
            }

            v240 = v367;
            v364 = *v402;
            v364(v367, 1, 1, v216);
            v241 = v363;
            sub_1000F0690(v226, v363);
            v242 = *v362;
            if ((*v362)(v240, 1, v216) != 1)
            {
              sub_100012DF0(v240, &qword_1006B07D0);
            }
          }

          v103 = v432;
          v216 = v410;
          v245 = v242(v241, 1, v410);
          v104 = v427;
          if (v245 == 1)
          {
            break;
          }

          v246 = v369;
          (*v408)(v369, v241, v216);
          v106 = v406;
          if (sub_100322BE0(v246))
          {
            v247 = v428[7];
            v248 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
            swift_beginAccess();
            v249 = v351;
            sub_10032A93C(v247 + v248, v351, type metadata accessor for FMSelectedSection);
            if (swift_getEnumCaseMultiPayload() == 6)
            {
              v250 = *(v249 + 8);
              v251 = *(v249 + 16);

              sub_100091880(v250, v251);
              if (v251 >= 4 && (FMIPDevice.shouldDisplaySeparatedLocation.getter() & 1) == 0)
              {
                v252 = v339;
                v253 = v425;
                v417(v339, v420, v425);

                v254 = v340;
                FMIPItem.location.getter();
                v255 = v341;
                sub_1000E698C(v252, v254, v341);
                LODWORD(v345) = 0;
                goto LABEL_83;
              }
            }

            else
            {
              sub_10032A9A4(v249, type metadata accessor for FMSelectedSection);
            }

            v252 = v347;
            v253 = v425;
            v417(v347, v420, v425);

            v254 = v348;
            FMIPDevice.bestLocation.getter();
            v255 = v349;
            sub_1000E698C(v252, v254, v349);
            LODWORD(v345) = 1;
LABEL_83:

            sub_100012DF0(v254, &unk_1006C0220);
            v416(v252, v253);
            v256 = type metadata accessor for FMIPSafeLocation();
            LODWORD(v344) = (*(*(v256 - 8) + 48))(v255, 1, v256);
            sub_100012DF0(v255, &unk_1006BB1B0);
            v257 = v360;
            v258 = v405;
            (*v388)(v360, v389, v405);
            v259 = v418;
            v432(v418, v96, v431);
            v260 = v395;
            v343 = *v387;
            (v343)(v395, v257, v258);
            v261 = objc_opt_self();

            v262 = [v261 mainScreen];
            [v262 scale];

            FMIPDeviceImageCacheRequest.init(itemParts:device:size:scale:)();
            dispatch thunk of FMImageCache.cachedImage(for:completion:)();
            v263 = v386;
            if (v434[0])
            {
              v343 = v434[0];

              v264 = *v263;
              v265 = v396;
            }

            else
            {
              v432(v259, v430, v431);
              (v343)(v260, v360, v405);
              v266 = [v261 mainScreen];
              [v266 scale];

              v267 = v373;
              FMIPDeviceImageCacheRequest.init(device:size:scale:)();
              dispatch thunk of FMImageCache.cachedImage(for:completion:)();
              v264 = *v263;
              v268 = v267;
              v269 = v396;
              (*v263)(v268, v396);

              v265 = v269;
              v343 = v435;
            }

            v270 = v358;
            v271 = v407;
            v272 = v364;
            v264(v359, v265);
            (*v385)(v360, v405);
            v273 = v428;

            v364 = FMIPManager.familyMembers.getter();

            v432(v357, v430, v431);
            if (v345)
            {
              v274 = *v271;
              v275 = v410;
              v274(v270, v369, v410);
              v272(v270, 0, 1, v275);
              v276 = *(v273[5] + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision);
              v277 = v426;
              v278 = v426[2];
              if (v278)
              {
                v279 = sub_10008C8B4(v426[2], 0);
                v280 = sub_1004A2330(v434, &v279[(*(v414 + 80) + 32) & ~*(v414 + 80)], v278, v277);
                v426 = v434[0];
                v345 = v434[4];

                sub_1002204D4();
                if (v280 != v278)
                {
                  goto LABEL_142;
                }

                v281 = v369;
                v271 = v407;
                v273 = v428;
              }

              else
              {

                v279 = _swiftEmptyArrayStorage;
                v281 = v369;
                v271 = v407;
              }

              v282 = v276;
            }

            else
            {
              v272(v270, 1, 1, v410);
              v282 = *(v273[5] + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision);

              v279 = 0;
              v281 = v369;
            }

            v283 = v344 != 1;
            v284 = v343;
            v426 = v343;
            v285 = v394;
            v286 = v394;
            sub_1003104DC(v273, v357, v358, v284, v285, v282 ^ 1, v364, v283, v361, v279, 1u);
            v287 = *v271;
            v288 = v350;
            v289 = v410;
            (*v271)(v350, v281, v410);
            v290 = v355;
            v291 = v431;
            v432(v355, v430, v431);
            v292 = Logger.logObject.getter();
            LODWORD(v345) = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v292, v345))
            {
              v293 = swift_slowAlloc();
              v344 = swift_slowAlloc();
              v434[0] = v344;
              *v293 = v338;
              v287(v342, v288, v289);
              v294 = String.init<A>(describing:)();
              v296 = v295;
              v364 = *v409;
              (v364)(v288, v289);
              v297 = sub_100005B4C(v294, v296, v434);

              *(v293 + 4) = v297;
              *(v293 + 12) = 2080;
              v298 = v355;
              v432(v418, v355, v291);
              v299 = String.init<A>(describing:)();
              v301 = v300;
              v356(v298, v291);
              v302 = sub_100005B4C(v299, v301, v434);

              *(v293 + 14) = v302;
              _os_log_impl(&_mh_execute_header, v292, v345, "FMDevicesListDataSource: Using part %s for: %s", v293, 0x16u);
              swift_arrayDestroy();
            }

            else
            {

              v356(v290, v291);
              v364 = *v409;
              (v364)(v288, v289);
            }

            v104 = v427;
            v96 = v430;
            v303 = FMIPDevice.ownerIdentifier.getter();
            v306 = sub_1004B1E10(v434, v303, v304);
            v307 = v369;
            if (*v305)
            {
              v308 = v305;
              sub_10032A93C(v361, v354, type metadata accessor for FMDeviceCellViewModel);
              v309 = *v308;
              v310 = swift_isUniquelyReferenced_nonNull_native();
              *v308 = v309;
              if ((v310 & 1) == 0)
              {
                v309 = sub_10008BBF0(0, v309[2] + 1, 1, v309);
                *v308 = v309;
              }

              v312 = v309[2];
              v311 = v309[3];
              if (v312 >= v311 >> 1)
              {
                v309 = sub_10008BBF0(v311 > 1, v312 + 1, 1, v309);
                *v308 = v309;
              }

              v309[2] = v312 + 1;
              sub_10032AA04(v354, v309 + ((*(v391 + 80) + 32) & ~*(v391 + 80)) + *(v391 + 72) * v312);
              (v306)(v434, 0);

              sub_10032A9A4(v361, type metadata accessor for FMDeviceCellViewModel);
              v313 = v307;
              v216 = v410;
              (v364)(v313, v410);
              v104 = v427;
            }

            else
            {
              (v306)(v434, 0);

              sub_10032A9A4(v361, type metadata accessor for FMDeviceCellViewModel);
              v314 = v307;
              v216 = v410;
              (v364)(v314, v410);
            }

            v103 = v432;
LABEL_104:
            v106 = v406;
            goto LABEL_105;
          }

          (*v409)(v246, v216);

LABEL_105:
          v219 = v366;
          v224 = v365;
          if (!v223)
          {
            goto LABEL_55;
          }
        }

        sub_100012DF0(v241, &qword_1006B07D0);
        goto LABEL_104;
      }

      while (1)
      {
LABEL_55:
        v225 = v217 + 1;
        if (__OFADD__(v217, 1))
        {
          goto LABEL_139;
        }

        if (v225 >= v224)
        {
          break;
        }

        v223 = *&v219[8 * v225];
        ++v217;
        if (v223)
        {
          v217 = v225;
          goto LABEL_59;
        }
      }

      (*v384)(v393, v104);
      v107 = v431;
      v356(v96, v431);

      v105 = v401;
      v98 = v383;
      v100 = v415;
LABEL_4:
      if (++v100 == v98)
      {
        v97 = v436;
        goto LABEL_111;
      }
    }

LABEL_10:
    v116 = FMIPDevice.ownerIdentifier.getter();
    v118 = v117;
    v119 = v436;
    v120 = swift_isUniquelyReferenced_nonNull_native();
    v434[0] = v119;
    sub_1001BB384(_swiftEmptyArrayStorage, v116, v118, v120);

    v436 = v434[0];
    goto LABEL_11;
  }

LABEL_111:
  v315 = 1 << *(v97 + 32);
  v316 = -1;
  if (v315 < 64)
  {
    v316 = ~(-1 << v315);
  }

  v317 = v316 & v97[8];
  v318 = (v315 + 63) >> 6;

  v319 = 0;
  v320 = _swiftEmptyArrayStorage;
  v433 = _swiftEmptyArrayStorage;
  while (v317)
  {
LABEL_119:
    v322 = __clz(__rbit64(v317)) | (v319 << 6);
    v323 = (v97[6] + 16 * v322);
    v325 = *v323;
    v324 = v323[1];
    v434[0] = *(v97[7] + 8 * v322);
    swift_bridgeObjectRetain_n();

    v326 = v392;
    sub_100325EBC(v434);
    v392 = v326;
    if (v326)
    {
      goto LABEL_144;
    }

    v317 &= v317 - 1;

    v327 = v434[0];
    if (v325 == FMIPDefaultOwnerIdentifier.getter() && v324 == v328)
    {

LABEL_131:

      v433 = v327;
    }

    else
    {
      v330 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v330)
      {
        goto LABEL_131;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v320 = sub_10008BBCC(0, v320[2] + 1, 1, v320);
      }

      v332 = v320[2];
      v331 = v320[3];
      if (v332 >= v331 >> 1)
      {
        v320 = sub_10008BBCC((v331 > 1), v332 + 1, 1, v320);
      }

      v320[2] = v332 + 1;
      v320[v332 + 4] = v327;
    }
  }

  while (1)
  {
    v321 = v319 + 1;
    if (__OFADD__(v319, 1))
    {
      break;
    }

    if (v321 >= v318)
    {

      v434[0] = v320;

      v333 = v392;
      sub_100325E50(v434);
      if (v333)
      {
        goto LABEL_144;
      }

      v334 = v434[0];
      v335 = v434[0][2];
      v336 = swift_isUniquelyReferenced_nonNull_native();
      v434[0] = v334;
      if (!v336 || v335 >= v334[3] >> 1)
      {
        v334 = sub_10008BBCC(v336, v335 + 1, 1, v334);
        v434[0] = v334;
      }

      sub_1003CD648(0, 0, 1, v433);

      return v334;
    }

    v317 = v97[v321 + 8];
    ++v319;
    if (v317)
    {
      v319 = v321;
      goto LABEL_119;
    }
  }

LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_144:

  __break(1u);
  return result;
}

BOOL sub_10032198C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMDeviceCellViewModel();
  v5 = *(v4 + 60);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 != v7)
  {
    return v6 < v7;
  }

  v8 = *(v4 + 56);
  v9 = round(*(a1 + v8));
  v10 = v9 > -9.22337204e18;
  if (v9 >= 9.22337204e18)
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = 30 * (v9 / 30);
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = round(*(a2 + v8));
  if (v13 > -9.22337204e18 && v13 < 9.22337204e18)
  {
    v15 = 30 * (v13 / 30);
    if (v11 != v15)
    {
      if (v10)
      {
        v16 = 30 * (v9 / 30);
        return v16 < v15;
      }

LABEL_19:
      v16 = 0x7FFFFFFFFFFFFFFFLL;
      return v16 < v15;
    }

LABEL_16:
    v17 = *(a1 + 16);
    v18 = *(a1 + 24);

    v19._countAndFlagsBits = v17;
    v19._object = v18;
    String.append(_:)(v19);
    v20 = *(a2 + 16);
    v21 = *(a2 + 24);

    v22._countAndFlagsBits = v20;
    v22._object = v21;
    String.append(_:)(v22);
    sub_100035F3C();
    v23 = StringProtocol.caseInsensitiveCompare<A>(_:)();

    return v23 == -1;
  }

  v15 = 0x7FFFFFFFFFFFFFFFLL;
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_19;
  }

  v16 = 30 * (v9 / 30);
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  return v16 < v15;
}

BOOL sub_100321BCC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(*a1 + 16))
  {
    v4 = type metadata accessor for FMDeviceCellViewModel();
    v5 = v2 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80));
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8._countAndFlagsBits = v6;
  v8._object = v7;
  String.append(_:)(v8);

  if (*(v3 + 16))
  {
    v9 = type metadata accessor for FMDeviceCellViewModel();
    v10 = v3 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80));
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13._countAndFlagsBits = v11;
  v13._object = v12;
  String.append(_:)(v13);

  sub_100035F3C();
  v14 = StringProtocol.caseInsensitiveCompare<A>(_:)();

  return v14 == -1;
}

uint64_t sub_100321DA8(uint64_t a1)
{
  v119 = a1;
  v2 = type metadata accessor for FMIPDeviceState();
  v114 = *(v2 - 8);
  v115 = v2;
  v3 = __chkstk_darwin(v2);
  v113 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v112 = &v104 - v5;
  v6 = type metadata accessor for FMIPDevice();
  v7 = *(v6 - 8);
  v117 = v6;
  v118 = v7;
  v8 = __chkstk_darwin(v6);
  v116 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v111 = &v104 - v11;
  v12 = __chkstk_darwin(v10);
  v106 = &v104 - v13;
  v14 = __chkstk_darwin(v12);
  v107 = &v104 - v15;
  __chkstk_darwin(v14);
  v105 = &v104 - v16;
  v17 = sub_10007EBC0(&unk_1006BB1B0);
  __chkstk_darwin(v17 - 8);
  v110 = &v104 - v18;
  v19 = sub_10007EBC0(&unk_1006C0220);
  __chkstk_darwin(v19 - 8);
  v21 = &v104 - v20;
  v22 = type metadata accessor for FMIPSafeLocationType();
  v108 = *(v22 - 8);
  v109 = v22;
  __chkstk_darwin(v22);
  v24 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10007EBC0(&unk_1006BB1C0);
  __chkstk_darwin(v25 - 8);
  v27 = &v104 - v26;
  v28 = type metadata accessor for FMSelectedSection();
  v29 = __chkstk_darwin(v28);
  v31 = &v104 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v104 - v32;
  v34 = *(v1 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_mediator);
  v35 = *(v34 + 56);
  v36 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_10032A93C(v35 + v36, v33, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    sub_10032A9A4(v33, type metadata accessor for FMSelectedSection);
    return 1;
  }

  v37 = *(v33 + 1);
  v38 = *(v33 + 2);

  if (v38 > 1)
  {
    if (v38 == 2)
    {
      v81 = v119;
      v82 = FMIPDevice.baIdentifier.getter();
      v85 = v117;
      v84 = v118;
      if (v83)
      {
        v86 = v82;
        v87 = v83;
        v88 = *(v34 + 56);
        v89 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
        swift_beginAccess();
        sub_10032A93C(v88 + v89, v31, type metadata accessor for FMSelectedSection);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v90 = *v31;
          v91 = sub_100091880(*(v31 + 1), *(v31 + 2));
          v120[0] = v86;
          v120[1] = v87;
          __chkstk_darwin(v91);
          *(&v104 - 2) = v120;
          v92 = sub_10008A40C(sub_1001413D4, (&v104 - 4), v90);

          if (v92)
          {
            return 1;
          }
        }

        else
        {

          sub_10032A9A4(v31, type metadata accessor for FMSelectedSection);
        }

        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v99 = type metadata accessor for Logger();
        sub_100005B14(v99, qword_1006D4630);
        v94 = v107;
        (*(v84 + 16))(v107, v81, v85);
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v120[0] = v52;
          *v51 = 136446210;
          v100 = FMIPDevice.identifier.getter();
          v102 = v101;
          (*(v84 + 8))(v94, v85);
          v103 = sub_100005B4C(v100, v102, v120);

          *(v51 + 4) = v103;
          v57 = "FMDevicesListDataSource: Not including device: %{public}s because it is not marked as separated.";
          goto LABEL_39;
        }
      }

      else
      {
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v93 = type metadata accessor for Logger();
        sub_100005B14(v93, qword_1006D4630);
        v94 = v106;
        (*(v84 + 16))(v106, v81, v85);
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v121[0] = v52;
          *v51 = 136446210;
          v95 = FMIPDevice.identifier.getter();
          v97 = v96;
          (*(v84 + 8))(v94, v85);
          v98 = sub_100005B4C(v95, v97, v121);

          *(v51 + 4) = v98;
          v57 = "FMDevicesListDataSource: Not including device: %{public}s because it does not have a BA identifier.";
          goto LABEL_39;
        }
      }

      (*(v84 + 8))(v94, v85);
      return 0;
    }

    if (v38 == 3)
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      sub_100005B14(v59, qword_1006D4630);
      v46 = v118;
      v48 = v116;
      v47 = v117;
      (*(v118 + 16))(v116, v119, v117);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v121[0] = v52;
        *v51 = 136446210;
        v60 = FMIPDevice.identifier.getter();
        v62 = v61;
        (*(v46 + 8))(v48, v47);
        v63 = sub_100005B4C(v60, v62, v121);

        *(v51 + 4) = v63;
        v57 = "FMDevicesListDataSource: Not including device: %{public}s because we are in UT cluster.";
        goto LABEL_39;
      }

      goto LABEL_27;
    }
  }

  else
  {
    if (!v38)
    {
      return 1;
    }

    if (v38 == 1)
    {
      v39 = v112;
      v40 = v119;
      FMIPDevice.state.getter();
      v41 = v113;
      static FMIPDeviceState.isThisDevice.getter();
      sub_10000A348(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState);
      v42 = v115;
      v43 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v44 = *(v114 + 8);
      v44(v41, v42);
      v44(v39, v42);
      if ((v43 & 1) == 0)
      {
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v45 = type metadata accessor for Logger();
        sub_100005B14(v45, qword_1006D4630);
        v47 = v117;
        v46 = v118;
        v48 = v111;
        (*(v118 + 16))(v111, v40, v117);
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v121[0] = v52;
          *v51 = 136446210;
          v53 = FMIPDevice.identifier.getter();
          v55 = v54;
          (*(v46 + 8))(v48, v47);
          v56 = sub_100005B4C(v53, v55, v121);

          *(v51 + 4) = v56;
          v57 = "FMDevicesListDataSource: Not including device: %{public}s because it is not this device.";
LABEL_39:
          _os_log_impl(&_mh_execute_header, v49, v50, v57, v51, 0xCu);
          sub_100006060(v52);

          return 0;
        }

LABEL_27:

        goto LABEL_28;
      }

      return 1;
    }
  }

  v116 = v37;
  v64 = v119;
  FMIPDevice.itemGroup.getter();
  v65 = type metadata accessor for FMIPItemGroup();
  if ((*(*(v65 - 8) + 48))(v27, 1, v65) != 1)
  {
    sub_100091880(v116, v38);
    sub_100012DF0(v27, &unk_1006BB1C0);
    return 1;
  }

  sub_100012DF0(v27, &unk_1006BB1C0);
  v67 = v108;
  v66 = v109;
  (*(v108 + 104))(v24, enum case for FMIPSafeLocationType.home(_:), v109);

  FMIPDevice.bestLocation.getter();
  v68 = v110;
  sub_1000E698C(v24, v21, v110);

  sub_100012DF0(v21, &unk_1006C0220);
  (*(v67 + 8))(v24, v66);
  v69 = type metadata accessor for FMIPSafeLocation();
  v70 = (*(*(v69 - 8) + 48))(v68, 1, v69);
  sub_100012DF0(v68, &unk_1006BB1B0);
  if (v70 == 1)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_100005B14(v71, qword_1006D4630);
    v47 = v117;
    v46 = v118;
    v48 = v105;
    (*(v118 + 16))(v105, v64, v117);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = v38;
      v76 = swift_slowAlloc();
      v121[0] = v76;
      *v74 = 136446210;
      v77 = FMIPDevice.name.getter();
      v79 = v78;
      (*(v46 + 8))(v48, v47);
      v80 = sub_100005B4C(v77, v79, v121);

      *(v74 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v72, v73, "FMDevicesListDataSource: Not including device: %{public}s because it is not at home.", v74, 0xCu);
      sub_100006060(v76);

      sub_100091880(v116, v75);
      return 0;
    }

    sub_100091880(v116, v38);
LABEL_28:
    (*(v46 + 8))(v48, v47);
    return 0;
  }

  sub_100091880(v116, v38);
  return 1;
}

uint64_t sub_100322BE0(uint64_t a1)
{
  v55 = a1;
  v2 = type metadata accessor for FMIPItem();
  v51 = *(v2 - 8);
  v52 = v2;
  __chkstk_darwin(v2);
  v50 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007EBC0(&unk_1006BB1B0);
  __chkstk_darwin(v4 - 8);
  v54 = &v50 - v5;
  v6 = sub_10007EBC0(&unk_1006C0220);
  __chkstk_darwin(v6 - 8);
  v8 = &v50 - v7;
  v9 = type metadata accessor for FMIPSafeLocationType();
  v53 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMSelectedSection();
  v13 = __chkstk_darwin(v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v50 - v16;
  v18 = *(v1 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_mediator);
  v19 = *(v18 + 56);
  v20 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_10032A93C(v19 + v20, v17, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    sub_10032A9A4(v17, type metadata accessor for FMSelectedSection);
    return 0;
  }

  v21 = *(v17 + 1);
  v22 = *(v17 + 2);

  result = 0;
  if (v22 < 2)
  {
    return result;
  }

  if (v22 == 2)
  {
    v29 = *(v18 + 56);
    v30 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_10032A93C(v29 + v30, v15, type metadata accessor for FMSelectedSection);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v31 = *(v15 + 1);
      v32 = *(v15 + 2);

      v34 = v51;
      v33 = v52;
      v35 = v50;
      v36 = v55;
      if (v32 >= 2)
      {
        if (v32 == 2)
        {
          v46 = *(v18 + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
          swift_beginAccess();
          v47 = *(v46 + *(type metadata accessor for FMPendingActionInfo(0) + 32));
          if (v47)
          {

            v56[0] = FMIPItem.identifier.getter();
            v56[1] = v48;
            __chkstk_darwin(v56[0]);
            *(&v50 - 2) = v56;
            v49 = sub_10008A40C(sub_10011F7D4, (&v50 - 4), v47);

            if (v49)
            {
              return 1;
            }
          }
        }

        else if (v32 != 3)
        {
          sub_100091880(v31, v32);
        }
      }
    }

    else
    {
      sub_10032A9A4(v15, type metadata accessor for FMSelectedSection);
      v34 = v51;
      v33 = v52;
      v35 = v50;
      v36 = v55;
    }

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100005B14(v37, qword_1006D4630);
    (*(v34 + 16))(v35, v36, v33);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v56[0] = v41;
      *v40 = 136446210;
      v42 = FMIPItem.identifier.getter();
      v44 = v43;
      (*(v34 + 8))(v35, v33);
      v45 = sub_100005B4C(v42, v44, v56);

      *(v40 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v38, v39, "FMDevicesListDataSource: Not including itemPart: %{public}s because it is not this device.", v40, 0xCu);
      sub_100006060(v41);
    }

    else
    {

      (*(v34 + 8))(v35, v33);
    }

    return 0;
  }

  if (v22 != 3)
  {
    v24 = v53;
    (*(v53 + 104))(v11, enum case for FMIPSafeLocationType.home(_:), v9);

    FMIPItem.location.getter();
    v25 = v21;
    v26 = v54;
    sub_1000E698C(v11, v8, v54);

    sub_100091880(v25, v22);
    sub_100012DF0(v8, &unk_1006C0220);
    (*(v24 + 8))(v11, v9);
    v27 = type metadata accessor for FMIPSafeLocation();
    v28 = (*(*(v27 - 8) + 48))(v26, 1, v27) != 1;
    sub_100012DF0(v26, &unk_1006BB1B0);
    return v28;
  }

  return result;
}

void sub_1003232BC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v64 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v7 - 8);
  v63 = &v62 - v8;
  v9 = sub_10007EBC0(&unk_1006BB1C0);
  __chkstk_darwin(v9 - 8);
  v65 = &v62 - v10;
  v11 = type metadata accessor for FMSelectedSection();
  v12 = __chkstk_darwin(v11);
  v67 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v66 = &v62 - v15;
  __chkstk_darwin(v14);
  v17 = &v62 - v16;
  v18 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v18 - 8);
  v20 = &v62 - v19;
  v21 = type metadata accessor for FMIPDevice();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a1;
  sub_10031BA04(a1, v20);
  if ((*(v22 + 48))(v20, 1, v21) != 1)
  {
    v64 = v22;
    v35 = *(v22 + 32);
    v62 = v21;
    v35(v24, v20, v21);
    My = type metadata accessor for Feature.FindMy();
    v69[3] = My;
    v69[4] = sub_10000A348(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
    v37 = sub_100008FC0(v69);
    (*(*(My - 8) + 104))(v37, enum case for Feature.FindMy.baAirpodsMultipartUI(_:), My);
    v38 = isFeatureEnabled(_:)();
    sub_100006060(v69);
    v39 = *(v2 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_mediator);
    v40 = *(v39 + 56);
    v41 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_10032A93C(v40 + v41, v17, type metadata accessor for FMSelectedSection);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      sub_10032A9A4(v17, type metadata accessor for FMSelectedSection);
      v44 = v24;
      v45 = v65;
      if ((v38 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_13:
      FMIPDevice.itemGroup.getter();
      v46 = type metadata accessor for FMIPItemGroup();
      v47 = *(v46 - 8);
      if ((*(v47 + 48))(v45, 1, v46) == 1)
      {
        sub_100012DF0(v45, &unk_1006BB1C0);
      }

      else
      {
        v48 = FMIPItemGroup.items.getter();
        (*(v47 + 8))(v45, v46);
        v49 = *(v48 + 16);

        if (v49 && (FMIPDevice.shouldDisplaySeparatedLocation.getter() & 1) != 0)
        {
          v50 = *(v39 + 56);
          v51 = v64;
          v52 = v66;
          v53 = v62;
          (*(v64 + 16))(v66, v44, v62);
          swift_storeEnumTagMultiPayload();
          v54 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
          swift_beginAccess();
          v55 = v67;
          sub_10032A93C(v50 + v54, v67, type metadata accessor for FMSelectedSection);
          swift_beginAccess();

          sub_100058530(v52, v50 + v54);
          swift_endAccess();
          sub_100058594(v55);

          sub_10032A9A4(v55, type metadata accessor for FMSelectedSection);
          sub_10032A9A4(v52, type metadata accessor for FMSelectedSection);
LABEL_22:

          FMIPManager.updateLastActiveTimestamp()();
          (*(v51 + 8))(v44, v53);

          return;
        }
      }

LABEL_21:
      v56 = v63;
      sub_10031BF30(v68, v63);
      v57 = *(v39 + 56);
      v58 = *(sub_10007EBC0(&qword_1006BEEE0) + 48);
      v51 = v64;
      v59 = v66;
      v53 = v62;
      (*(v64 + 16))(v66, v44, v62);
      sub_1001104A8(v56, v59 + v58);
      swift_storeEnumTagMultiPayload();
      v60 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
      swift_beginAccess();
      v61 = v67;
      sub_10032A93C(v57 + v60, v67, type metadata accessor for FMSelectedSection);
      swift_beginAccess();

      sub_100058530(v59, v57 + v60);
      swift_endAccess();
      sub_100058594(v61);

      sub_10032A9A4(v61, type metadata accessor for FMSelectedSection);
      sub_10032A9A4(v59, type metadata accessor for FMSelectedSection);
      sub_100012DF0(v56, &qword_1006B07D0);
      goto LABEL_22;
    }

    v42 = *(v17 + 1);
    v43 = *(v17 + 2);

    v44 = v24;
    v45 = v65;
    if (v43 > 1)
    {
      if (v43 == 2)
      {
        goto LABEL_21;
      }

      if (v43 == 3)
      {
LABEL_9:
        if ((v38 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_13;
      }
    }

    else if (v43 <= 1)
    {
      goto LABEL_9;
    }

    sub_100091880(v42, v43);
    goto LABEL_21;
  }

  sub_100012DF0(v20, &unk_1006BBCE0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100005B14(v25, qword_1006D4630);
  v26 = v64;
  (*(v64 + 16))(v6, v68, v4);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v69[0] = v30;
    *v29 = 136315138;
    sub_10000A348(&qword_1006C01F0, &type metadata accessor for IndexPath);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    (*(v26 + 8))(v6, v4);
    v34 = sub_100005B4C(v31, v33, v69);

    *(v29 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v27, v28, "FMDevicesListDataSource: cannot select device at indexPath: %s", v29, 0xCu);
    sub_100006060(v30);
  }

  else
  {

    (*(v26 + 8))(v6, v4);
  }
}

void *sub_100323C38(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v49 = v5;
  v53 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v46 - v7;
  v9 = type metadata accessor for FMIPDevice();
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  v11 = __chkstk_darwin(v9);
  v50 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  v14 = type metadata accessor for FMDeviceCellViewModel();
  v15 = *(v14 - 1);
  __chkstk_darwin(v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = _swiftEmptyArrayStorage;
  v18 = IndexPath.section.getter();
  v19 = IndexPath.row.getter();
  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = *&v1[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_cellsViewModel];
  if (v18 >= *(v20 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v21 = *(v20 + 8 * v18 + 32);
  if (v19 >= *(v21 + 16))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_17;
  }

  sub_10032A93C(v21 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v19, v17, type metadata accessor for FMDeviceCellViewModel);
  v22 = v17[v14[19]];
  v54 = v17;
  if (v22)
  {
    v23 = 1;
  }

  else
  {
    v23 = v17[v14[20]];
  }

  v24 = v55;
  v25 = v56;
  sub_10031BA04(a1, v8);
  if ((*(v24 + 48))(v8, 1, v25) == 1)
  {
    sub_10032A9A4(v54, type metadata accessor for FMDeviceCellViewModel);
    sub_100012DF0(v8, &unk_1006BBCE0);
    return _swiftEmptyArrayStorage;
  }

  v48 = *(v24 + 32);
  v48(v13, v8, v25);
  if (!v23)
  {
    (*(v24 + 8))(v13, v25);
    sub_10032A9A4(v54, type metadata accessor for FMDeviceCellViewModel);
    return _swiftEmptyArrayStorage;
  }

  v26 = v54[v14[20]];
  v28 = v24 + 16;
  v27 = *(v24 + 16);
  v29 = v50;
  v47 = v13;
  v27(v50, v13, v25);
  v30 = v51 + 16;
  v31 = a1;
  v32 = v52;
  (*(v51 + 16))(v53, v31, v52);
  v33 = (*(v28 + 64) + 24) & ~*(v28 + 64);
  v34 = (v10 + *(v30 + 64) + v33) & ~*(v30 + 64);
  v35 = (v30 + 16);
  if (v26 == 1)
  {
    v36 = swift_allocObject();
    *(v36 + 16) = v1;
    v48((v36 + v33), v29, v25);
    (*v35)(v36 + v34, v53, v32);
    v61 = sub_10032A3AC;
    v62 = v36;
    aBlock = _NSConcreteStackBlock;
    v58 = 1107296256;
    v59 = sub_10052BC74;
    v60 = &unk_100636EB8;
  }

  else
  {
    v41 = swift_allocObject();
    *(v41 + 16) = v1;
    v48((v41 + v33), v29, v25);
    (*v35)(v41 + v34, v53, v32);
    v61 = sub_10032A16C;
    v62 = v41;
    aBlock = _NSConcreteStackBlock;
    v58 = 1107296256;
    v59 = sub_10052BC74;
    v60 = &unk_100636E68;
  }

  v37 = _Block_copy(&aBlock);
  v38 = objc_opt_self();
  v39 = v2;
  v42 = [v38 contextualActionWithStyle:1 title:0 handler:v37];
  _Block_release(v37);

  v14 = v42;
  v43 = String._bridgeToObjectiveC()();
  v44 = [objc_opt_self() systemImageNamed:v43];

  [v14 setImage:v44];
  v45 = [objc_opt_self() systemRedColor];
  [v14 setBackgroundColor:v45];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v8 = v54;
  v18 = v55;
  v13 = v47;
  if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_22;
  }

LABEL_17:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  (*(v18 + 8))(v13, v56);
  sub_10032A9A4(v8, type metadata accessor for FMDeviceCellViewModel);
  return v63;
}

uint64_t sub_1003243A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;

  sub_1003245E0(a6, v10, sub_10032A4AC, v9);
}

uint64_t sub_100324434(char a1, uint64_t (*a2)(void))
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315138;
    v14 = v8;
    if (a1)
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (a1)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    v11 = v10;
    String.append(_:)(*&v9);

    v12 = sub_100005B4C(0, 0xE000000000000000, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMDevicesListDataSource: handle repair succeeded %s", v7, 0xCu);
    sub_100006060(v8);
  }

  return a2(a1 & 1);
}

void sub_1003245E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a4;
  v59 = a1;
  v5 = type metadata accessor for FMIPDevice();
  v61 = *(v5 - 8);
  v62 = v5;
  v6 = *(v61 + 64);
  __chkstk_darwin(v5);
  v60 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "FMDevicesListDataSource: Remove button pressed, needs repair. Showing alert", v10, 2u);
  }

  v11 = *(&v64->isa + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_tableView);
  while (1)
  {
    v12 = v11;
    v11 = [v11 nextResponder];

    if (!v11)
    {
      break;
    }

    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v58 = v13;
      v14 = objc_opt_self();
      v15 = [v14 mainBundle];
      v72._object = 0x8000000100586960;
      v16._countAndFlagsBits = 0xD000000000000019;
      v16._object = 0x8000000100586940;
      v72._countAndFlagsBits = 0xD00000000000002BLL;
      v17._countAndFlagsBits = 0;
      v17._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v72);
      v56 = a3;

      v18 = [v14 mainBundle];
      v73._object = 0x80000001005869B0;
      v19._countAndFlagsBits = 0xD00000000000001CLL;
      v19._object = 0x8000000100586990;
      v73._countAndFlagsBits = 0xD00000000000002ELL;
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v73);

      v21 = String._bridgeToObjectiveC()();

      v22 = String._bridgeToObjectiveC()();

      v23 = [objc_opt_self() alertControllerWithTitle:v21 message:v22 preferredStyle:1];
      v54 = v23;

      v24 = [v14 mainBundle];
      v74._object = 0x800000010057B8F0;
      v25._object = 0x800000010057B8D0;
      v74._countAndFlagsBits = 0xD000000000000025;
      v25._countAndFlagsBits = 0xD000000000000013;
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v74);

      v27 = swift_allocObject();
      *(v27 + 16) = a3;
      *(v27 + 24) = v63;

      v28 = String._bridgeToObjectiveC()();

      v69 = sub_10032AB3C;
      v70 = v27;
      aBlock = _NSConcreteStackBlock;
      v66 = 1107296256;
      v57 = &v67;
      v67 = sub_100017328;
      v68 = &unk_100636D50;
      v29 = _Block_copy(&aBlock);

      v55 = objc_opt_self();
      v30 = [v55 actionWithTitle:v28 style:1 handler:v29];
      _Block_release(v29);

      [v23 addAction:v30];
      v31 = [v14 mainBundle];
      v75._object = 0x800000010057B8A0;
      v32._countAndFlagsBits = 0xD000000000000015;
      v32._object = 0x800000010057B880;
      v75._countAndFlagsBits = 0xD000000000000027;
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      v53[1] = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, v31, v33, v75)._countAndFlagsBits;

      v35 = v60;
      v34 = v61;
      v36 = v62;
      (*(v61 + 16))(v60, v59, v62);
      v37 = (*(v34 + 80) + 24) & ~*(v34 + 80);
      v38 = (v6 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
      v39 = v64;
      v40 = swift_allocObject();
      *(v40 + 16) = v39;
      (*(v34 + 32))(v40 + v37, v35, v36);
      v41 = v58;
      *(v40 + v38) = v58;
      v42 = (v40 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8));
      v43 = v63;
      *v42 = v56;
      v42[1] = v43;

      v44 = v39;
      v45 = v11;
      v46 = String._bridgeToObjectiveC()();

      v69 = sub_100329FF8;
      v70 = v40;
      aBlock = _NSConcreteStackBlock;
      v66 = 1107296256;
      v67 = sub_100017328;
      v68 = &unk_100636DA0;
      v47 = _Block_copy(&aBlock);

      v48 = [v55 actionWithTitle:v46 style:0 handler:v47];
      _Block_release(v47);

      v49 = v54;
      [v54 addAction:v48];

      [v41 presentViewController:v49 animated:1 completion:0];
      return;
    }
  }

  v64 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v64, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v64, v50, "FMDevicesListDataSource: Cannot repair device without a view controller", v51, 2u);
  }

  v52 = v64;
}

uint64_t sub_100324D60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v19 = a3;
  v20 = a5;
  v9 = type metadata accessor for FMIPDevice();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a3, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v13, v12, v9);
  v16 = (v15 + v14);
  *v16 = v20;
  v16[1] = a6;
  *(v15 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8)) = a4;

  v17 = a4;
  sub_1000DE3B4(v19, v17, sub_10032A0A8, v15);
}

void sub_100324F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, void *a7)
{
  v107 = type metadata accessor for FMIPDevice();
  v12 = *(v107 - 8);
  v13 = __chkstk_darwin(v107);
  v15 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v104 = &v98 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v98 - v19;
  __chkstk_darwin(v18);
  v22 = &v98 - v21;
  if (a2)
  {
    v105 = a5;
    v106 = v12;
    swift_getErrorValue();
    v23 = sub_100271E80(v108);
    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v25)
    {
      if (v23 == v26 && v25 == v27)
      {
      }

      else
      {
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v29 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      swift_getErrorValue();
      if (sub_100271D20(v109) == -7003)
      {
        v41 = v106;
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        sub_100005B14(v42, qword_1006D4630);
        v43 = v107;
        (*(v41 + 16))(v15, a4, v107);
        v44 = v41;
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          aBlock[0] = v48;
          *v47 = 136315138;
          v49 = FMIPDevice.name.getter();
          v51 = v50;
          (*(v44 + 8))(v15, v43);
          v52 = sub_100005B4C(v49, v51, aBlock);

          *(v47 + 4) = v52;
          _os_log_impl(&_mh_execute_header, v45, v46, "FMDevicesListDataSource: Repair device %s, user cancelled auth.", v47, 0xCu);
          sub_100006060(v48);
        }

        else
        {

          (*(v44 + 8))(v15, v43);
        }

        v105(0);
        return;
      }
    }

    else
    {
    }

LABEL_20:
    v102 = a6;
    v103 = a4;
    v53 = v106;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    v55 = sub_100005B14(v54, qword_1006D4630);
    v56 = v107;
    v99 = *(v53 + 16);
    v99(v20, v103, v107);
    swift_errorRetain();
    v100 = v55;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    v59 = os_log_type_enabled(v57, v58);
    v101 = a7;
    if (v59)
    {
      v60 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v60 = 136315394;
      v61 = FMIPDevice.name.getter();
      v63 = v62;
      v64 = *(v53 + 8);
      v64(v20, v107);
      v65 = sub_100005B4C(v61, v63, aBlock);
      v56 = v107;

      *(v60 + 4) = v65;
      *(v60 + 12) = 2080;
      v110 = a2;
      swift_errorRetain();
      sub_10007EBC0(&qword_1006B9570);
      v66 = String.init<A>(describing:)();
      v68 = sub_100005B4C(v66, v67, aBlock);

      *(v60 + 14) = v68;
      _os_log_impl(&_mh_execute_header, v57, v58, "FMDevicesListDataSource: Repair device %s failed with error: %s", v60, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v64 = *(v53 + 8);
      v64(v20, v56);
    }

    v69 = v104;
    v99(v104, v103, v56);
    swift_errorRetain();
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = v64;
      v73 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v73 = 136315394;
      v74 = FMIPDevice.name.getter();
      v76 = v75;
      v72(v69, v56);
      v77 = sub_100005B4C(v74, v76, aBlock);

      *(v73 + 4) = v77;
      *(v73 + 12) = 2080;
      v110 = a2;
      swift_errorRetain();
      sub_10007EBC0(&qword_1006B9570);
      v78 = String.init<A>(describing:)();
      v80 = sub_100005B4C(v78, v79, aBlock);

      *(v73 + 14) = v80;
      _os_log_impl(&_mh_execute_header, v70, v71, "FMDeviceDetailContentViewController: Repair device %s failed with error: %s", v73, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v64(v69, v56);
    }

    v81 = objc_opt_self();
    v82 = [v81 mainBundle];
    v83._countAndFlagsBits = 0xD00000000000001FLL;
    v112._object = 0x8000000100586A00;
    v83._object = 0x80000001005869E0;
    v112._countAndFlagsBits = 0xD000000000000031;
    v84._countAndFlagsBits = 0;
    v84._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v83, 0, v82, v84, v112);

    v85 = [v81 mainBundle];
    v113._object = 0x8000000100586A70;
    v86._object = 0x8000000100586A40;
    v113._countAndFlagsBits = 0xD000000000000033;
    v86._countAndFlagsBits = 0xD000000000000021;
    v87._countAndFlagsBits = 0;
    v87._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v86, 0, v85, v87, v113);

    v88 = String._bridgeToObjectiveC()();

    v89 = String._bridgeToObjectiveC()();

    v90 = [objc_opt_self() alertControllerWithTitle:v88 message:v89 preferredStyle:1];

    v91 = [v81 mainBundle];
    v114._object = 0x8000000100579B60;
    v92._countAndFlagsBits = 0x4F545455425F4B4FLL;
    v92._object = 0xEF454C5449545F4ELL;
    v93._countAndFlagsBits = 0;
    v93._object = 0xE000000000000000;
    v114._countAndFlagsBits = 0xD000000000000021;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v92, 0, v91, v93, v114);

    v94 = swift_allocObject();
    *(v94 + 16) = v105;
    *(v94 + 24) = v102;

    v95 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_1000E218C;
    aBlock[5] = v94;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100017328;
    aBlock[3] = &unk_100636E18;
    v96 = _Block_copy(aBlock);

    v97 = [objc_opt_self() actionWithTitle:v95 style:0 handler:v96];
    _Block_release(v96);

    [v90 addAction:v97];
    [v101 presentViewController:v90 animated:1 completion:0];

    return;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_100005B14(v30, qword_1006D4630);
  v31 = v107;
  (*(v12 + 16))(v22, a4, v107);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v105 = a5;
    v35 = v34;
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v35 = 136315138;
    v37 = FMIPDevice.name.getter();
    v39 = v38;
    (*(v12 + 8))(v22, v31);
    v40 = sub_100005B4C(v37, v39, aBlock);

    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v32, v33, "FMDevicesListDataSource: Repair device %s succeeded", v35, 0xCu);
    sub_100006060(v36);

    a5 = v105;
  }

  else
  {

    (*(v12 + 8))(v22, v31);
  }

  a5(1);
}

id sub_100325B4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMDevicesListDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100325CB8()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource__listTitle);

  return v1;
}

uint64_t sub_100325CF4()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_listSubtitle);

  return v1;
}

void sub_100325D30(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_updatesEnabled);
  *(v1 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_updatesEnabled) = a1;
  sub_10031B13C(v2);
}

uint64_t sub_100325D48()
{

  v0 = FMIPManager.isInitialized.getter();

  return v0 & 1;
}

uint64_t sub_100325D98(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

Swift::Int sub_100325E50(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10025F354(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_100325F64(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100325EBC(void **a1)
{
  v2 = *(type metadata accessor for FMDeviceCellViewModel() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10025F368(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10032606C(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100325F64(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10007EBC0(&unk_1006C0340);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100326828(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100326198(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_10032606C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for FMDeviceCellViewModel();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for FMDeviceCellViewModel() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1003271B4(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10032640C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100326198(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v25 = *a4;
    v4 = (*a4 + 8 * a3 - 8);
    v5 = result - a3;
LABEL_5:
    v24 = a3;
    v6 = *(v25 + 8 * a3);
    v22 = v5;
    v23 = v4;
    while (1)
    {
      v7 = *v4;
      if (*(v6 + 16))
      {
        v8 = type metadata accessor for FMDeviceCellViewModel();
        v9 = v6 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80));
        v10 = *(v9 + 16);
        v11 = *(v9 + 24);
      }

      else
      {
        v10 = 0;
        v11 = 0xE000000000000000;
      }

      v12._countAndFlagsBits = v10;
      v12._object = v11;
      String.append(_:)(v12);

      if (*(v7 + 16))
      {
        v13 = type metadata accessor for FMDeviceCellViewModel();
        v14 = v7 + ((*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80));
        v16 = *(v14 + 16);
        v15 = *(v14 + 24);
      }

      else
      {
        v16 = 0;
        v15 = 0xE000000000000000;
      }

      v17._countAndFlagsBits = v16;
      v17._object = v15;
      String.append(_:)(v17);

      sub_100035F3C();
      v18 = StringProtocol.caseInsensitiveCompare<A>(_:)();

      if (v18 != -1)
      {
LABEL_4:
        a3 = v24 + 1;
        v4 = v23 + 1;
        v5 = v22 - 1;
        if (v24 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v25)
      {
        break;
      }

      v19 = *v4;
      v6 = v4[1];
      *v4 = v6;
      v4[1] = v19;
      --v4;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10032640C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for FMDeviceCellViewModel();
  v9 = __chkstk_darwin(v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v51 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v51 - v17;
  v53 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v60 = -v20;
    v22 = a1 - a3;
    v65 = v19;
    v52 = v20;
    v23 = v19 + v20 * a3;
    v58 = v11;
LABEL_5:
    v56 = v21;
    v57 = a3;
    v54 = v23;
    v55 = v22;
    while (1)
    {
      sub_10032A93C(v23, v18, type metadata accessor for FMDeviceCellViewModel);
      sub_10032A93C(v21, v14, type metadata accessor for FMDeviceCellViewModel);
      v24 = v8[15];
      v25 = *&v18[v24];
      v26 = *&v14[v24];
      if (v25 != v26)
      {
        v31 = v25 < v26;
        goto LABEL_26;
      }

      v27 = v8[14];
      v28 = round(*&v18[v27]);
      v29 = v28 > -9.22337204e18;
      if (v28 >= 9.22337204e18)
      {
        v29 = 0;
      }

      if (v29)
      {
        v30 = 30 * (v28 / 30);
      }

      else
      {
        v30 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v32 = round(*&v14[v27]);
      if (v32 > -9.22337204e18 && v32 < 9.22337204e18)
      {
        v34 = 30 * (v32 / 30);
        if (v30 == v34)
        {
LABEL_21:
          v36 = &v18[v8[17]];
          v37 = *(v36 + 1);
          v38 = *(v18 + 2);
          v39 = *(v18 + 3);
          v63 = *v36;
          v64 = v37;

          v40._countAndFlagsBits = v38;
          v40._object = v39;
          String.append(_:)(v40);
          v41 = v64;
          v59 = v63;
          v42 = &v14[v8[17]];
          v43 = *(v42 + 1);
          v44 = *(v14 + 2);
          v45 = *(v14 + 3);
          v63 = *v42;
          v64 = v43;

          v46._countAndFlagsBits = v44;
          v46._object = v45;
          String.append(_:)(v46);
          v47 = v63;
          v48 = v64;
          v63 = v59;
          v64 = v41;
          v61 = v47;
          v62 = v48;
          sub_100035F3C();
          v49 = StringProtocol.caseInsensitiveCompare<A>(_:)();
          v11 = v58;

          v31 = v49 == -1;
          goto LABEL_26;
        }

        if (!v29)
        {
LABEL_24:
          v35 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_25;
        }

        v35 = 30 * (v28 / 30);
      }

      else
      {
        v34 = 0x7FFFFFFFFFFFFFFFLL;
        if (v30 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_21;
        }

        if (!v29)
        {
          goto LABEL_24;
        }

        v35 = 30 * (v28 / 30);
        v34 = 0x7FFFFFFFFFFFFFFFLL;
      }

LABEL_25:
      v31 = v35 < v34;
LABEL_26:
      sub_10032A9A4(v14, type metadata accessor for FMDeviceCellViewModel);
      result = sub_10032A9A4(v18, type metadata accessor for FMDeviceCellViewModel);
      if (!v31)
      {
        goto LABEL_4;
      }

      if (!v65)
      {
        __break(1u);
        return result;
      }

      sub_10032AA04(v23, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10032AA04(v11, v21);
      v21 += v60;
      v23 += v60;
      if (__CFADD__(v22++, 1))
      {
LABEL_4:
        a3 = v57 + 1;
        v21 = v56 + v52;
        v22 = v55 - 1;
        v23 = v54 + v52;
        if (v57 + 1 == v53)
        {
          return result;
        }

        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_100326828(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v121 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_4:
    v5 = *v121;
    if (!*v121)
    {
      goto LABEL_139;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_6;
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v122 = v9;
    if (v9 + 1 >= v8)
    {
      v8 = v9 + 1;
    }

    else
    {
      v5 = v9;
      v15 = *v7;
      v135 = *(*v7 + 8 * (v9 + 1));
      v133 = *(v15 + 8 * v9);

      v127 = sub_100321BCC(&v135, &v133);
      if (v6)
      {
      }

      v16 = v9 + 2;
      v129 = v8;
      v131 = 8 * v9;
      v17 = v15 + 8 * v9 + 16;
      v125 = v10;
      while (v8 != v16)
      {
        v30 = *(v17 - 8);
        v29 = *v17;
        if (*(*v17 + 16))
        {
          v31 = type metadata accessor for FMDeviceCellViewModel();
          v32 = v29 + ((*(*(v31 - 8) + 80) + 32) & ~*(*(v31 - 8) + 80));
          v33 = (v32 + *(v31 + 100));
          v34 = *v33;
          v35 = v33[1];
          v36 = *(v32 + 16);
          v37 = *(v32 + 24);
        }

        else
        {
          v36 = 0;
          v34 = 0;
          v37 = 0xE000000000000000;
          v35 = 0xE000000000000000;
        }

        v135 = v34;
        v136 = v35;

        v38._countAndFlagsBits = v36;
        v38._object = v37;
        String.append(_:)(v38);

        v39 = v135;
        v5 = v136;
        if (*(v30 + 16))
        {
          v18 = type metadata accessor for FMDeviceCellViewModel();
          v19 = v30 + ((*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80));
          v20 = (v19 + *(v18 + 100));
          v21 = *v20;
          v22 = v20[1];
          v23 = *(v19 + 16);
          v24 = *(v19 + 24);
        }

        else
        {
          v23 = 0;
          v21 = 0;
          v24 = 0xE000000000000000;
          v22 = 0xE000000000000000;
        }

        v135 = v21;
        v136 = v22;

        v25._countAndFlagsBits = v23;
        v25._object = v24;
        String.append(_:)(v25);

        v26 = v135;
        v27 = v136;
        v135 = v39;
        v136 = v5;
        v133 = v26;
        v134 = v27;
        sub_100035F3C();
        v28 = StringProtocol.caseInsensitiveCompare<A>(_:)();

        ++v16;
        v17 += 8;
        v10 = v125;
        v8 = v129;
        if (((v127 ^ (v28 != -1)) & 1) == 0)
        {
          v8 = v16 - 1;
          break;
        }
      }

      v7 = a3;
      v6 = 0;
      if (v127)
      {
        v40 = v122;
        if (v8 < v122)
        {
          goto LABEL_132;
        }

        if (v122 < v8)
        {
          v41 = 8 * v8 - 8;
          v42 = v8;
          do
          {
            if (v40 != --v42)
            {
              v43 = *a3;
              if (!*a3)
              {
                goto LABEL_136;
              }

              v44 = *(v43 + v131);
              *(v43 + v131) = *(v43 + v41);
              *(v43 + v41) = v44;
            }

            ++v40;
            v41 -= 8;
            v131 += 8;
          }

          while (v40 < v42);
        }
      }
    }

    v45 = v7[1];
    if (v8 < v45)
    {
      if (__OFSUB__(v8, v122))
      {
        goto LABEL_129;
      }

      if (v8 - v122 < a4)
      {
        if (__OFADD__(v122, a4))
        {
          goto LABEL_130;
        }

        if (v122 + a4 < v45)
        {
          v45 = v122 + a4;
        }

        if (v45 < v122)
        {
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          result = sub_10025EFD4(v10);
          v10 = result;
LABEL_6:
          v137 = v10;
          v11 = *(v10 + 16);
          if (v11 >= 2)
          {
            while (*v7)
            {
              v12 = *(v10 + 16 * v11);
              v13 = *(v10 + 16 * (v11 - 1) + 40);
              sub_100327FA8((*v7 + 8 * v12), (*v7 + 8 * *(v10 + 16 * (v11 - 1) + 32)), (*v7 + 8 * v13), v5);
              if (v6)
              {
              }

              if (v13 < v12)
              {
                goto LABEL_126;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v10 = sub_10025EFD4(v10);
              }

              if (v11 - 2 >= *(v10 + 16))
              {
                goto LABEL_127;
              }

              v14 = (v10 + 16 * v11);
              *v14 = v12;
              v14[1] = v13;
              v137 = v10;
              result = sub_10025EF48(v11 - 1);
              v10 = v137;
              v11 = *(v137 + 16);
              if (v11 <= 1)
              {
              }
            }

            goto LABEL_137;
          }
        }

        v123 = v45;
        if (v8 != v45)
        {
          break;
        }
      }
    }

LABEL_60:
    if (v8 < v122)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10008B8B8(0, *(v10 + 16) + 1, 1, v10);
      v10 = result;
    }

    v73 = *(v10 + 16);
    v72 = *(v10 + 24);
    v74 = v73 + 1;
    if (v73 >= v72 >> 1)
    {
      result = sub_10008B8B8((v72 > 1), v73 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 16) = v74;
    v75 = v10 + 16 * v73;
    *(v75 + 32) = v122;
    *(v75 + 40) = v8;
    v9 = v8;
    v76 = *v121;
    if (!*v121)
    {
      goto LABEL_138;
    }

    if (v73)
    {
      while (1)
      {
        v5 = v10;
        v10 = v74 - 1;
        if (v74 >= 4)
        {
          break;
        }

        if (v74 == 3)
        {
          v77 = v5[4];
          v78 = v5[5];
          v87 = __OFSUB__(v78, v77);
          v79 = v78 - v77;
          v80 = v87;
LABEL_80:
          if (v80)
          {
            goto LABEL_117;
          }

          v93 = &v5[2 * v74];
          v95 = *v93;
          v94 = v93[1];
          v96 = __OFSUB__(v94, v95);
          v97 = v94 - v95;
          v98 = v96;
          if (v96)
          {
            goto LABEL_120;
          }

          v99 = &v5[2 * v10 + 4];
          v101 = *v99;
          v100 = v99[1];
          v87 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v87)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v97, v102))
          {
            goto LABEL_124;
          }

          if (v97 + v102 >= v79)
          {
            if (v79 < v102)
            {
              v10 = v74 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        v103 = &v5[2 * v74];
        v105 = *v103;
        v104 = v103[1];
        v87 = __OFSUB__(v104, v105);
        v97 = v104 - v105;
        v98 = v87;
LABEL_94:
        if (v98)
        {
          goto LABEL_119;
        }

        v106 = &v5[2 * v10];
        v108 = v106[4];
        v107 = v106[5];
        v87 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v87)
        {
          goto LABEL_122;
        }

        if (v109 < v97)
        {
          v10 = v5;
          goto LABEL_15;
        }

LABEL_101:
        v114 = v10 - 1;
        if (v10 - 1 >= v74)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        if (!*v7)
        {
          goto LABEL_135;
        }

        v115 = v5[2 * v114 + 4];
        v116 = v5[2 * v10 + 5];
        sub_100327FA8((*v7 + 8 * v115), (*v7 + 8 * v5[2 * v10 + 4]), (*v7 + 8 * v116), v76);
        if (v6)
        {
        }

        if (v116 < v115)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_10025EFD4(v5);
        }

        if (v114 >= v5[2])
        {
          goto LABEL_114;
        }

        v117 = &v5[2 * v114];
        v117[4] = v115;
        v117[5] = v116;
        v137 = v5;
        result = sub_10025EF48(v10);
        v10 = v137;
        v74 = *(v137 + 16);
        if (v74 <= 1)
        {
          goto LABEL_15;
        }
      }

      v81 = &v5[2 * v74 + 4];
      v82 = *(v81 - 64);
      v83 = *(v81 - 56);
      v87 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v87)
      {
        goto LABEL_115;
      }

      v86 = *(v81 - 48);
      v85 = *(v81 - 40);
      v87 = __OFSUB__(v85, v86);
      v79 = v85 - v86;
      v80 = v87;
      if (v87)
      {
        goto LABEL_116;
      }

      v88 = &v5[2 * v74];
      v90 = *v88;
      v89 = v88[1];
      v87 = __OFSUB__(v89, v90);
      v91 = v89 - v90;
      if (v87)
      {
        goto LABEL_118;
      }

      v87 = __OFADD__(v79, v91);
      v92 = v79 + v91;
      if (v87)
      {
        goto LABEL_121;
      }

      if (v92 >= v84)
      {
        v110 = &v5[2 * v10 + 4];
        v112 = *v110;
        v111 = v110[1];
        v87 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v87)
        {
          goto LABEL_125;
        }

        if (v79 < v113)
        {
          v10 = v74 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

LABEL_15:
    v8 = v7[1];
    if (v9 >= v8)
    {
      goto LABEL_4;
    }
  }

  v126 = v10;
  v120 = v6;
  v132 = *v7;
  v46 = (*v7 + 8 * v8 - 8);
  v47 = v122 - v8;
LABEL_47:
  v128 = v46;
  v130 = v8;
  v48 = *(v132 + 8 * v8);
  v124 = v47;
  while (1)
  {
    v49 = *v46;
    if (*(v48 + 16))
    {
      v50 = type metadata accessor for FMDeviceCellViewModel();
      v51 = v48 + ((*(*(v50 - 8) + 80) + 32) & ~*(*(v50 - 8) + 80));
      v52 = (v51 + *(v50 + 100));
      v53 = *v52;
      v54 = v52[1];
      v55 = *(v51 + 16);
      v56 = *(v51 + 24);
    }

    else
    {
      v55 = 0;
      v53 = 0;
      v56 = 0xE000000000000000;
      v54 = 0xE000000000000000;
    }

    v135 = v53;
    v136 = v54;

    v57._countAndFlagsBits = v55;
    v57._object = v56;
    String.append(_:)(v57);

    v58 = v135;
    v5 = v136;
    if (*(v49 + 16))
    {
      v59 = type metadata accessor for FMDeviceCellViewModel();
      v60 = v49 + ((*(*(v59 - 8) + 80) + 32) & ~*(*(v59 - 8) + 80));
      v61 = (v60 + *(v59 + 100));
      v62 = *v61;
      v63 = v61[1];
      v64 = *(v60 + 16);
      v65 = *(v60 + 24);
    }

    else
    {
      v64 = 0;
      v62 = 0;
      v65 = 0xE000000000000000;
      v63 = 0xE000000000000000;
    }

    v135 = v62;
    v136 = v63;

    v66._countAndFlagsBits = v64;
    v66._object = v65;
    String.append(_:)(v66);

    v67 = v135;
    v68 = v136;
    v135 = v58;
    v136 = v5;
    v133 = v67;
    v134 = v68;
    sub_100035F3C();
    v69 = StringProtocol.caseInsensitiveCompare<A>(_:)();

    if (v69 != -1)
    {
LABEL_46:
      v8 = v130 + 1;
      v46 = v128 + 1;
      v47 = v124 - 1;
      if (v130 + 1 != v123)
      {
        goto LABEL_47;
      }

      v7 = a3;
      v6 = v120;
      v10 = v126;
      v8 = v123;
      goto LABEL_60;
    }

    if (!v132)
    {
      break;
    }

    v70 = *v46;
    v48 = v46[1];
    *v46 = v48;
    v46[1] = v70;
    --v46;
    if (__CFADD__(v47++, 1))
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_1003271B4(int64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v171 = a1;
  v185 = type metadata accessor for FMDeviceCellViewModel();
  v8 = __chkstk_darwin(v185);
  v174 = &v165 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v165 - v11;
  v13 = __chkstk_darwin(v10);
  v187 = &v165 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = (&v165 - v16);
  v18 = __chkstk_darwin(v15);
  v183 = &v165 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v165 - v21;
  v23 = __chkstk_darwin(v20);
  v167 = &v165 - v24;
  result = __chkstk_darwin(v23);
  v166 = &v165 - v26;
  v27 = a3[1];
  v180 = v28;
  if (v27 < 1)
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_136:
    v29 = *v171;
    if (!*v171)
    {
      goto LABEL_176;
    }

    a4 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v180;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_170;
    }

    result = a4;
LABEL_139:
    v192 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*a3)
      {
        v161 = *(result + 16 * a4);
        v162 = result;
        v163 = *(result + 16 * (a4 - 1) + 40);
        sub_100328340(*a3 + v17[9] * v161, *a3 + v17[9] * *(result + 16 * (a4 - 1) + 32), *a3 + v17[9] * v163, v29);
        if (v5)
        {
        }

        if (v163 < v161)
        {
          goto LABEL_163;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v162 = sub_10025EFD4(v162);
        }

        if (a4 - 2 >= *(v162 + 2))
        {
          goto LABEL_164;
        }

        v164 = &v162[16 * a4];
        *v164 = v161;
        *(v164 + 1) = v163;
        v192 = v162;
        sub_10025EF48(a4 - 1);
        result = v192;
        a4 = *(v192 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_174;
    }
  }

  v29 = 0;
  v30 = _swiftEmptyArrayStorage;
  v172 = a3;
  v170 = a4;
  v184 = v12;
  v181 = v22;
  while (1)
  {
    v175 = v30;
    if (v29 + 1 >= v27)
    {
      v70 = v29 + 1;
      goto LABEL_46;
    }

    v182 = v27;
    v31 = *a3;
    v32 = v180[9];
    v33 = *a3 + v32 * (v29 + 1);
    v186 = type metadata accessor for FMDeviceCellViewModel;
    v34 = v166;
    sub_10032A93C(v33, v166, type metadata accessor for FMDeviceCellViewModel);
    v178 = v31;
    v35 = v31 + v32 * v29;
    v36 = v29;
    v37 = v167;
    sub_10032A93C(v35, v167, v186);
    LODWORD(v179) = sub_10032198C(v34, v37);
    if (v5)
    {
      sub_10032A9A4(v37, type metadata accessor for FMDeviceCellViewModel);
      sub_10032A9A4(v34, type metadata accessor for FMDeviceCellViewModel);
    }

    v169 = 0;
    sub_10032A9A4(v37, type metadata accessor for FMDeviceCellViewModel);
    result = sub_10032A9A4(v34, type metadata accessor for FMDeviceCellViewModel);
    v168 = v36;
    v38 = v36 + 2;
    v39 = v178 + v32 * (v36 + 2);
    v40 = v185;
    v186 = v32;
    do
    {
      if (v182 == v38)
      {
        v70 = v182;
        goto LABEL_32;
      }

      sub_10032A93C(v39, v22, type metadata accessor for FMDeviceCellViewModel);
      v43 = v183;
      sub_10032A93C(v33, v183, type metadata accessor for FMDeviceCellViewModel);
      v44 = v40[15];
      v45 = *&v22[v44];
      v46 = *(v43 + v44);
      if (v45 != v46)
      {
        v41 = v45 < v46;
        goto LABEL_8;
      }

      v47 = v40[14];
      v48 = round(*&v22[v47]);
      v49 = v48 > -9.22337204e18;
      if (v48 >= 9.22337204e18)
      {
        v49 = 0;
      }

      if (v49)
      {
        v50 = 30 * (v48 / 30);
      }

      else
      {
        v50 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v51 = round(*(v183 + v47));
      if (v51 > -9.22337204e18 && v51 < 9.22337204e18)
      {
        v53 = 30 * (v51 / 30);
        if (v50 == v53)
        {
LABEL_24:
          v55 = &v22[v40[17]];
          v56 = *(v55 + 1);
          v58 = *(v22 + 2);
          v57 = *(v22 + 3);
          v190 = *v55;
          v191 = v56;

          v59._countAndFlagsBits = v58;
          v59._object = v57;
          String.append(_:)(v59);
          v61 = v190;
          v60 = v191;
          v62 = (v183 + v40[17]);
          v63 = v62[1];
          v64 = *(v183 + 16);
          v65 = *(v183 + 24);
          v190 = *v62;
          v191 = v63;

          v66._countAndFlagsBits = v64;
          v66._object = v65;
          String.append(_:)(v66);
          v67 = v190;
          v68 = v191;
          v190 = v61;
          v191 = v60;
          v22 = v181;
          v188 = v67;
          v189 = v68;
          sub_100035F3C();
          v69 = StringProtocol.caseInsensitiveCompare<A>(_:)();

          v12 = v184;

          v41 = v69 == -1;
          goto LABEL_8;
        }

        if (!v49)
        {
LABEL_27:
          v54 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_28;
        }

        v54 = 30 * (v48 / 30);
      }

      else
      {
        v53 = 0x7FFFFFFFFFFFFFFFLL;
        if (v50 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_24;
        }

        if (!v49)
        {
          goto LABEL_27;
        }

        v54 = 30 * (v48 / 30);
        v53 = 0x7FFFFFFFFFFFFFFFLL;
      }

LABEL_28:
      v41 = v54 < v53;
LABEL_8:
      sub_10032A9A4(v183, type metadata accessor for FMDeviceCellViewModel);
      result = sub_10032A9A4(v22, type metadata accessor for FMDeviceCellViewModel);
      v42 = v179 ^ v41;
      ++v38;
      v32 = v186;
      v39 += v186;
      v33 += v186;
    }

    while ((v42 & 1) == 0);
    v70 = v38 - 1;
LABEL_32:
    v5 = v169;
    a3 = v172;
    a4 = v170;
    v29 = v168;
    if (v179)
    {
      if (v70 >= v168)
      {
        if (v168 < v70)
        {
          v71 = v32 * (v70 - 1);
          v72 = v70 * v32;
          v182 = v70;
          v73 = v168;
          v74 = v168 * v32;
          do
          {
            if (v73 != --v70)
            {
              v75 = *v172;
              if (!*v172)
              {
                goto LABEL_173;
              }

              sub_10032AA04(v75 + v74, v174);
              if (v74 < v71 || v75 + v74 >= (v75 + v72))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v74 != v71)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10032AA04(v174, v75 + v71);
              v22 = v181;
              v32 = v186;
            }

            ++v73;
            v71 -= v32;
            v72 -= v32;
            v74 += v32;
          }

          while (v73 < v70);
          v5 = v169;
          a3 = v172;
          a4 = v170;
          v12 = v184;
          v29 = v168;
          v70 = v182;
        }

        goto LABEL_46;
      }

LABEL_169:
      __break(1u);
LABEL_170:
      result = sub_10025EFD4(a4);
      goto LABEL_139;
    }

LABEL_46:
    v76 = a3[1];
    if (v70 < v76)
    {
      if (__OFSUB__(v70, v29))
      {
        goto LABEL_166;
      }

      if (v70 - v29 < a4)
      {
        if (__OFADD__(v29, a4))
        {
          goto LABEL_167;
        }

        if ((v29 + a4) < v76)
        {
          v76 = v29 + a4;
        }

        if (v76 < v29)
        {
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

        v176 = v76;
        if (v70 != v76)
        {
          break;
        }
      }
    }

LABEL_83:
    if (v70 < v29)
    {
      goto LABEL_165;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v30 = v175;
    }

    else
    {
      result = sub_10008B8B8(0, *(v175 + 2) + 1, 1, v175);
      v30 = result;
    }

    a4 = *(v30 + 2);
    v114 = *(v30 + 3);
    v115 = a4 + 1;
    if (a4 >= v114 >> 1)
    {
      result = sub_10008B8B8((v114 > 1), a4 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v115;
    v116 = &v30[16 * a4];
    *(v116 + 4) = v29;
    *(v116 + 5) = v70;
    v29 = *v171;
    if (!*v171)
    {
      goto LABEL_175;
    }

    v176 = v70;
    if (a4)
    {
      while (1)
      {
        v117 = v115 - 1;
        if (v115 >= 4)
        {
          break;
        }

        if (v115 == 3)
        {
          v118 = *(v30 + 4);
          v119 = *(v30 + 5);
          v128 = __OFSUB__(v119, v118);
          v120 = v119 - v118;
          v121 = v128;
LABEL_103:
          if (v121)
          {
            goto LABEL_154;
          }

          v134 = &v30[16 * v115];
          v136 = *v134;
          v135 = *(v134 + 1);
          v137 = __OFSUB__(v135, v136);
          v138 = v135 - v136;
          v139 = v137;
          if (v137)
          {
            goto LABEL_157;
          }

          v140 = &v30[16 * v117 + 32];
          v142 = *v140;
          v141 = *(v140 + 1);
          v128 = __OFSUB__(v141, v142);
          v143 = v141 - v142;
          if (v128)
          {
            goto LABEL_160;
          }

          if (__OFADD__(v138, v143))
          {
            goto LABEL_161;
          }

          if (v138 + v143 >= v120)
          {
            if (v120 < v143)
            {
              v117 = v115 - 2;
            }

            goto LABEL_124;
          }

          goto LABEL_117;
        }

        v144 = &v30[16 * v115];
        v146 = *v144;
        v145 = *(v144 + 1);
        v128 = __OFSUB__(v145, v146);
        v138 = v145 - v146;
        v139 = v128;
LABEL_117:
        if (v139)
        {
          goto LABEL_156;
        }

        v147 = &v30[16 * v117];
        v149 = *(v147 + 4);
        v148 = *(v147 + 5);
        v128 = __OFSUB__(v148, v149);
        v150 = v148 - v149;
        if (v128)
        {
          goto LABEL_159;
        }

        if (v150 < v138)
        {
          goto LABEL_3;
        }

LABEL_124:
        a4 = v117 - 1;
        if (v117 - 1 >= v115)
        {
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        if (!*a3)
        {
          goto LABEL_172;
        }

        v155 = v30;
        v156 = *&v30[16 * a4 + 32];
        v157 = *&v30[16 * v117 + 40];
        sub_100328340(*a3 + v180[9] * v156, *a3 + v180[9] * *&v30[16 * v117 + 32], *a3 + v180[9] * v157, v29);
        if (v5)
        {
        }

        if (v157 < v156)
        {
          goto LABEL_150;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v158 = v155;
        }

        else
        {
          v158 = sub_10025EFD4(v155);
        }

        v22 = v181;
        if (a4 >= *(v158 + 2))
        {
          goto LABEL_151;
        }

        v159 = &v158[16 * a4];
        *(v159 + 4) = v156;
        *(v159 + 5) = v157;
        v192 = v158;
        result = sub_10025EF48(v117);
        v30 = v192;
        v115 = *(v192 + 16);
        v12 = v184;
        if (v115 <= 1)
        {
          goto LABEL_3;
        }
      }

      v122 = &v30[16 * v115 + 32];
      v123 = *(v122 - 64);
      v124 = *(v122 - 56);
      v128 = __OFSUB__(v124, v123);
      v125 = v124 - v123;
      if (v128)
      {
        goto LABEL_152;
      }

      v127 = *(v122 - 48);
      v126 = *(v122 - 40);
      v128 = __OFSUB__(v126, v127);
      v120 = v126 - v127;
      v121 = v128;
      if (v128)
      {
        goto LABEL_153;
      }

      v129 = &v30[16 * v115];
      v131 = *v129;
      v130 = *(v129 + 1);
      v128 = __OFSUB__(v130, v131);
      v132 = v130 - v131;
      if (v128)
      {
        goto LABEL_155;
      }

      v128 = __OFADD__(v120, v132);
      v133 = v120 + v132;
      if (v128)
      {
        goto LABEL_158;
      }

      if (v133 >= v125)
      {
        v151 = &v30[16 * v117 + 32];
        v153 = *v151;
        v152 = *(v151 + 1);
        v128 = __OFSUB__(v152, v153);
        v154 = v152 - v153;
        if (v128)
        {
          goto LABEL_162;
        }

        if (v120 < v154)
        {
          v117 = v115 - 2;
        }

        goto LABEL_124;
      }

      goto LABEL_103;
    }

LABEL_3:
    v27 = a3[1];
    v29 = v176;
    a4 = v170;
    if (v176 >= v27)
    {
      goto LABEL_136;
    }
  }

  v169 = v5;
  v77 = *a3;
  v78 = v180[9];
  v79 = *a3 + v78 * (v70 - 1);
  v80 = -v78;
  v168 = v29;
  v81 = v29 - v70;
  v186 = v77;
  v173 = v78;
  v82 = v77 + v70 * v78;
  v83 = v185;
  while (2)
  {
    v182 = v70;
    v177 = v82;
    v178 = v81;
    v179 = v79;
    v84 = v79;
LABEL_57:
    sub_10032A93C(v82, v17, type metadata accessor for FMDeviceCellViewModel);
    v85 = v187;
    sub_10032A93C(v84, v187, type metadata accessor for FMDeviceCellViewModel);
    v86 = v83[15];
    v87 = *(v17 + v86);
    v88 = *(v85 + v86);
    if (v87 == v88)
    {
      v89 = v83[14];
      v90 = round(*(v17 + v89));
      v91 = v90 > -9.22337204e18;
      if (v90 >= 9.22337204e18)
      {
        v91 = 0;
      }

      if (v91)
      {
        v92 = 30 * (v90 / 30);
      }

      else
      {
        v92 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v94 = round(*(v187 + v89));
      if (v94 > -9.22337204e18 && v94 < 9.22337204e18)
      {
        v96 = 30 * (v94 / 30);
        if (v92 == v96)
        {
          goto LABEL_72;
        }

        if (!v91)
        {
          goto LABEL_75;
        }

        v97 = 30 * (v90 / 30);
LABEL_76:
        v93 = v97 < v96;
      }

      else
      {
        v96 = 0x7FFFFFFFFFFFFFFFLL;
        if (v92 != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v91)
          {
            v97 = 30 * (v90 / 30);
            v96 = 0x7FFFFFFFFFFFFFFFLL;
            goto LABEL_76;
          }

LABEL_75:
          v97 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_76;
        }

LABEL_72:
        v98 = (v17 + v83[17]);
        v99 = v98[1];
        v101 = v17[2];
        v100 = v17[3];
        v190 = *v98;
        v191 = v99;

        v102._countAndFlagsBits = v101;
        v102._object = v100;
        String.append(_:)(v102);
        v104 = v190;
        v103 = v191;
        v105 = (v187 + *(v185 + 68));
        v106 = v105[1];
        v107 = *(v187 + 16);
        v108 = *(v187 + 24);
        v190 = *v105;
        v191 = v106;

        v109._countAndFlagsBits = v107;
        v109._object = v108;
        String.append(_:)(v109);
        v110 = v190;
        v111 = v191;
        v190 = v104;
        v191 = v103;
        v83 = v185;
        v188 = v110;
        v189 = v111;
        sub_100035F3C();
        v112 = StringProtocol.caseInsensitiveCompare<A>(_:)();

        v12 = v184;

        v93 = v112 == -1;
      }
    }

    else
    {
      v93 = v87 < v88;
    }

    a4 = type metadata accessor for FMDeviceCellViewModel;
    sub_10032A9A4(v187, type metadata accessor for FMDeviceCellViewModel);
    result = sub_10032A9A4(v17, type metadata accessor for FMDeviceCellViewModel);
    if (!v93)
    {
      goto LABEL_55;
    }

    if (v186)
    {
      sub_10032AA04(v82, v12);
      swift_arrayInitWithTakeFrontToBack();
      sub_10032AA04(v12, v84);
      v84 += v80;
      v82 += v80;
      if (__CFADD__(v81++, 1))
      {
LABEL_55:
        v70 = v182 + 1;
        v79 = v179 + v173;
        v81 = v178 - 1;
        v82 = v177 + v173;
        if (v182 + 1 == v176)
        {
          v5 = v169;
          a3 = v172;
          v70 = v176;
          v22 = v181;
          v29 = v168;
          goto LABEL_83;
        }

        continue;
      }

      goto LABEL_57;
    }

    break;
  }

  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
  return result;
}