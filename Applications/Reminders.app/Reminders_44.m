uint64_t sub_1004CA628(uint64_t a1)
{
  v3 = sub_100058000(&qword_100778EC8);
  __chkstk_darwin(v3 - 8);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v19[-v7];
  __chkstk_darwin(v9);
  v11 = &v19[-v10];
  v12 = type metadata accessor for TTRIBoardReminderCellContentConfiguration();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000B0D8(a1, v20);
  sub_100058000(&qword_10077A650);
  if (swift_dynamicCast())
  {
    v16 = *(v13 + 56);
    v16(v11, 0, 1, v12);
    sub_1002C5104(v11, v15, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
    v17 = qword_100786D58;
    swift_beginAccess();
    sub_10000794C(v1 + v17, v8, &qword_100778EC8);
    sub_1004CCA18(v15, v5, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
    v16(v5, 0, 1, v12);
    swift_beginAccess();
    sub_1004CAE68(v5, v1 + v17);
    swift_endAccess();
    sub_1004C406C(v15, v8);
    sub_1004C43C0(v15);
    [v1 setUserInteractionEnabled:*v15];
    sub_1004C5504();
    sub_100004758(a1);
    sub_1000079B4(v8, &qword_100778EC8);
    return sub_1002C51D0(v15, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
  }

  else
  {
    sub_100004758(a1);
    (*(v13 + 56))(v11, 1, 1, v12);
    return sub_1000079B4(v11, &qword_100778EC8);
  }
}

void (*sub_1004CA92C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *(*(sub_100058000(&qword_100778EC8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[14] = v6;
  v8 = qword_100786D58;
  swift_beginAccess();
  sub_10000794C(v1 + v8, v7, &qword_100778EC8);
  v9 = type metadata accessor for TTRIBoardReminderCellContentConfiguration();
  result = (*(*(v9 - 8) + 48))(v7, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v4[3] = v9;
    v4[4] = sub_1004CC8E8(&qword_100778F08, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
    v11 = sub_1000317B8(v4);
    sub_1002C5104(v7, v11, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
    return sub_1004CAAD0;
  }

  return result;
}

void sub_1004CAAD0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 112);
  if (a2)
  {
    sub_10000B0D8(*a1, v2 + 40);
    sub_1004CA628(v2 + 40);
    sub_100004758(v2);
  }

  else
  {
    sub_1004CA628(*a1);
  }

  free(v3);

  free(v2);
}

uint64_t sub_1004CAB48@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_100058000(&qword_100778EC8);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = qword_100786D58;
  swift_beginAccess();
  sub_10000794C(v1 + v6, v5, &qword_100778EC8);
  v7 = type metadata accessor for TTRIBoardReminderCellContentConfiguration();
  result = (*(*(v7 - 8) + 48))(v5, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    a1[3] = v7;
    a1[4] = sub_1004CC8E8(&qword_100778F08, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
    v9 = sub_1000317B8(a1);
    return sub_1002C5104(v5, v9, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
  }

  return result;
}

void (*sub_1004CACB8(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1004CA92C(v2);
  return sub_1001861BC;
}

uint64_t sub_1004CAD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return UIContentView.supports(_:)(a1, ObjectType, a3);
}

uint64_t sub_1004CAD78(uint64_t a1, uint64_t a2)
{
  v5 = v2 + qword_100786D58;
  swift_beginAccess();
  v6 = type metadata accessor for TTRIBoardReminderCellContentConfiguration();
  result = (*(*(v6 - 8) + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v5 + *(v6 + 64) + 8);
    if (v8)
    {

      v8(a2, a1, &protocol witness table for TTRIRemindersListLargeImageAttachmentsView);
      return sub_1000301AC(v8);
    }
  }

  return result;
}

uint64_t sub_1004CAE68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100778EC8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004CAEE8()
{
  result = qword_100786E20;
  if (!qword_100786E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786E20);
  }

  return result;
}

unint64_t sub_1004CAF3C()
{
  result = qword_100786E28;
  if (!qword_100786E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786E28);
  }

  return result;
}

unint64_t sub_1004CAF90()
{
  result = qword_100786E30;
  if (!qword_100786E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786E30);
  }

  return result;
}

void sub_1004CB000(char *a1, id a2)
{
  [a2 displayScale];
  v4 = v3;
  v5 = [a1 traitCollection];
  [v5 displayScale];
  v7 = v6;

  if ((sub_10002E9C4(v7, 0.0000000149011612, v4) & 1) == 0)
  {
    v8 = [a1 traitCollection];
    [v8 displayScale];
    v10 = v9;

    v11 = &a1[qword_100786D18];
    *v11 = fmax(v10, 1.0);
    *(v11 + 8) = 0;
  }
}

unint64_t sub_1004CB0D0(unint64_t result)
{
  if (result >= 0xE)
  {
    return 14;
  }

  return result;
}

id sub_1004CB0E0()
{
  v0 = [objc_allocWithZone(UILabel) init];
  sub_100003540(0, &qword_100771DF0);
  v1 = static UIFont.roundedBodyFont.getter();
  [v0 setFont:v1];

  [v0 setAdjustsFontForContentSizeCategory:1];
  v2 = objc_opt_self();
  v3 = [v2 tintColor];
  [v0 setTextColor:v3];

  v4 = v0;
  v5 = [v2 tintColor];
  [v4 setTintColor:v5];

  v6 = NUIContainerViewSizeUseDefault[0];
  v7 = NUIContainerViewSizeUseDefault[1];
  type metadata accessor for UILayoutPriority(0);
  sub_1004CC8E8(&unk_10077A6B0, type metadata accessor for UILayoutPriority);
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v8) = v10;
  [v4 setLayoutSize:v6 withContentPriority:{v7, v8}];
  return v4;
}

id sub_1004CB28C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() systemImageNamed:v0];

  v2 = [objc_allocWithZone(UIImageView) initWithImage:v1];
  v3 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody scale:1];
  [v2 setPreferredSymbolConfiguration:v3];

  v4 = [objc_opt_self() ttr_systemOrangeColor];
  [v2 setTintColor:v4];

  v5 = NUIContainerViewSizeUseDefault[0];
  v6 = NUIContainerViewSizeUseDefault[1];
  type metadata accessor for UILayoutPriority(0);
  sub_1004CC8E8(&unk_10077A6B0, type metadata accessor for UILayoutPriority);
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v7) = v9;
  [v2 setLayoutSize:v5 withContentPriority:{v6, v7}];

  return v2;
}

id sub_1004CB44C()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = NUIContainerViewSizeUnbounded[0];
  v2 = NUIContainerViewSizeUnbounded[1];
  type metadata accessor for UILayoutPriority(0);
  sub_1004CC8E8(&unk_10077A6B0, type metadata accessor for UILayoutPriority);
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v3) = v7;
  [v0 setLayoutSize:v1 withContentPriority:{v2, v3}];
  [v0 setTextAlignment:4];
  [v0 setNumberOfLines:0];
  sub_100003540(0, &qword_100771DF0);
  v4 = static UIFont.roundedSubheadlineFont.getter();
  [v0 setFont:v4];

  [v0 setAdjustsFontForContentSizeCategory:1];
  v5 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor:v5];

  return v0;
}

id sub_1004CB5E0()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTextAlignment:4];
  sub_100003540(0, &qword_100771DF0);
  v1 = static UIFont.roundedSubheadlineFont.getter();
  [v0 setFont:v1];

  [v0 setNumberOfLines:0];
  [v0 setAdjustsFontForContentSizeCategory:1];
  v2 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor:v2];

  return v0;
}

id sub_1004CB6CC()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTextAlignment:4];
  sub_100003540(0, &qword_100771DF0);
  v1 = static UIFont.roundedSubheadlineFont.getter();
  isa = UIFont.withBoldTrait()().super.isa;

  [v0 setFont:isa];
  v3 = static TTRCommonAsset.Color.hashtagTokenTextColor.getter();
  [v0 setTextColor:v3];

  [v0 setNumberOfLines:0];
  [v0 setAdjustsFontForContentSizeCategory:1];
  LODWORD(v4) = 1132068864;
  [v0 setLayoutSize:NUIContainerViewSizeUseDefault[0] withContentPriority:{NUIContainerViewSizeUseDefault[1], v4}];
  return v0;
}

uint64_t sub_1004CB7D4(void *a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100786E38);
  __chkstk_darwin(v4 - 8);
  v32[0] = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v32 - v7;
  v9 = sub_100058000(&qword_100778F38);
  __chkstk_darwin(v9 - 8);
  v11 = v32 - v10;
  v12 = type metadata accessor for TTRReminderCellStyle.CompletedButtonType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v32 - v17;
  v32[1] = a2;
  TTRBoardReminderCellCompletedButtonConfiguration.buttonStyle.getter();
  v19 = *(v13 + 48);
  if (v19(v11, 1, v12) == 1)
  {
    *v18 = 0;
    v20 = enum case for TTRReminderCellStyle.CompletedButtonType.toggle(_:);
    (*(v13 + 104))(v18, enum case for TTRReminderCellStyle.CompletedButtonType.toggle(_:), v12);
    if (v19(v11, 1, v12) != 1)
    {
      sub_1000079B4(v11, &qword_100778F38);
    }
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    v20 = enum case for TTRReminderCellStyle.CompletedButtonType.toggle(_:);
  }

  (*(v13 + 16))(v15, v18, v12);
  v21 = (*(v13 + 88))(v15, v12);
  if (v21 == v20)
  {
    (*(v13 + 96))(v15, v12);
    v22 = TTRBoardReminderCellCompletedButtonConfiguration.isCompleted.getter();
    v23 = TTRBoardReminderCellCompletedButtonConfiguration.tintColor.getter();
    if (!v23)
    {
      v23 = [objc_opt_self() tintColor];
    }

    *v8 = v22 & 1;
    *(v8 + 1) = v23;
    v24 = enum case for TTRIReminderCompletionButton.Icon.complete(_:);
    v25 = type metadata accessor for TTRIReminderCompletionButton.Icon();
    v26 = *(v25 - 8);
    (*(v26 + 104))(v8, v24, v25);
    (*(v26 + 56))(v8, 0, 1, v25);
    goto LABEL_14;
  }

  if (v21 == enum case for TTRReminderCellStyle.CompletedButtonType.confirmSuggestedReminder(_:))
  {
    v27 = type metadata accessor for TTRIReminderCompletionButton.Icon();
    (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
    (*(v13 + 8))(v15, v12);
LABEL_13:
    v22 = 0;
LABEL_14:
    sub_10000794C(v8, v32[0], &qword_100786E38);
    TTRIReminderCompletionButton.icon.setter();
    TTRBoardReminderCellCompletedButtonConfiguration.preferredSymbolConfiguration.getter();
    TTRIReminderCompletionButton.preferredSymbolConfiguration.setter();
    [a1 setSelected:v22 & 1];
    TTRIReminderCompletionButton.prefersFadedAppearance.setter();
    sub_1000079B4(v8, &qword_100786E38);
    return (*(v13 + 8))(v18, v12);
  }

  if (v21 == enum case for TTRReminderCellStyle.CompletedButtonType.placeholder(_:))
  {
    v28 = enum case for TTRIReminderCompletionButton.Icon.placeholder(_:);
    v29 = type metadata accessor for TTRIReminderCompletionButton.Icon();
    v30 = *(v29 - 8);
    (*(v30 + 104))(v8, v28, v29);
    (*(v30 + 56))(v8, 0, 1, v29);
    goto LABEL_13;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1004CBD2C(void *a1, uint64_t a2)
{
  v35 = a1;
  v3 = sub_100058000(&qword_100786EA0);
  __chkstk_darwin(v3 - 8);
  v33 = &v29 - v4;
  v5 = sub_100058000(&unk_100772600);
  __chkstk_darwin(v5 - 8);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  v10 = type metadata accessor for AttributedString();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttributeContainer();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v29 - v19;
  type metadata accessor for TTRIBoardReminderCellContentConfiguration();
  sub_1004CC8E8(&qword_100778EF8, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
  result = TTRBoardReminderCellContentConfigurationType.subtaskCountIsHidden.getter();
  if ((result & 1) == 0)
  {
    v30 = v11;
    v31 = v10;
    AttributeContainer.init()();
    v36 = *(a2 + 16);
    v22 = v36;
    sub_10008CD14();
    v23 = v22;
    AttributeContainer.subscript.setter();
    v36 = [objc_opt_self() tintColor];
    sub_1004CC894();
    AttributeContainer.subscript.setter();
    v32 = a2;
    TTRBoardReminderCellSubtaskCountConfiguration.subtaskCountString.getter();
    (*(v15 + 16))(v17, v20, v14);
    AttributedString.init(_:attributes:)();
    UIButton.configuration.getter();
    v24 = type metadata accessor for UIButton.Configuration();
    if ((*(*(v24 - 8) + 48))(v9, 1, v24))
    {
      sub_10000794C(v9, v34, &unk_100772600);
      UIButton.configuration.setter();
      sub_1000079B4(v9, &unk_100772600);
      v26 = v30;
      v25 = v31;
    }

    else
    {
      v26 = v30;
      v25 = v31;
      v27 = v33;
      (*(v30 + 16))(v33, v13, v31);
      (*(v26 + 56))(v27, 0, 1, v25);
      UIButton.Configuration.attributedTitle.setter();
      UIButton.configuration.setter();
    }

    v28 = TTRBoardReminderCellSubtaskCountConfiguration.tintColor.getter();
    [v35 setTintColor:v28];

    (*(v26 + 8))(v13, v25);
    return (*(v15 + 8))(v20, v14);
  }

  return result;
}

void sub_1004CC1C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100058000(&qword_100786EA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_100058000(&unk_100772600);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = *(a2 + 8);
  if (v12)
  {
    type metadata accessor for TTRIBoardReminderCellContentConfiguration();
    v33 = v12;
    if ((TTRBoardReminderCellSuggestedSectionConfiguration.isHidden.getter() & 1) != 0 || (v13 = TTRBoardReminderCellSuggestedSectionConfiguration.sectionTitle.getter(), !v14))
    {
      v24 = v33;
    }

    else
    {
      v31 = v13;
      v32 = v14;
      v30 = sub_100003540(0, &qword_1007708F0);
      v29 = static TTRLocalizableStrings.RemindersList.moveToSectionFormat()();
      v28 = v15;
      sub_100058000(&unk_100776BD0);
      inited = swift_initStackObject();
      v27 = xmmword_10062D400;
      *(inited + 16) = xmmword_10062D400;
      *(inited + 32) = NSFontAttributeName;
      v17 = sub_100003540(0, &qword_100771DF0);
      *(inited + 64) = v17;
      *(inited + 40) = v33;
      v18 = NSFontAttributeName;
      v33 = v33;
      v19 = v18;
      sub_100460A28(inited);
      swift_setDeallocating();
      sub_1000079B4(inited + 32, &unk_100776BE0);
      v20 = swift_initStackObject();
      *(v20 + 16) = v27;
      *(v20 + 32) = v19;
      v21.super.isa = UIFont.withBoldTrait()().super.isa;
      *(v20 + 64) = v17;
      *(v20 + 40) = v21;
      sub_100460A28(v20);
      swift_setDeallocating();
      sub_1000079B4(v20 + 32, &unk_100776BE0);
      v22 = static NSAttributedString.formattedString(format:formatAttributes:content:contentAttributes:)();

      UIButton.configuration.getter();
      v23 = type metadata accessor for UIButton.Configuration();
      if ((*(*(v23 - 8) + 48))(v11, 1, v23))
      {
        sub_10000794C(v11, v8, &unk_100772600);
        UIButton.configuration.setter();

        sub_1000079B4(v11, &unk_100772600);
      }

      else
      {
        v25 = v22;
        AttributedString.init(_:)();
        v26 = type metadata accessor for AttributedString();
        (*(*(v26 - 8) + 56))(v5, 0, 1, v26);
        UIButton.Configuration.attributedTitle.setter();
        UIButton.configuration.setter();
      }
    }
  }
}

uint64_t sub_1004CC5F0(uint64_t a1, uint64_t a2)
{
  v24 = type metadata accessor for TTRRemindersListViewModel.ImageAttachment();
  v4 = *(v24 - 8);
  __chkstk_darwin(v24);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TTRIRemindersListLargeImageAttachmentsView.ViewModel();
  v7 = *(v23 - 8);
  __chkstk_darwin(v23);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = *(a2 + 16);
    if (v10)
    {
      v19[0] = a1;
      v25 = _swiftEmptyArrayStorage;
      sub_1004A2674(0, v10, 0);
      v11 = v25;
      v13 = *(v4 + 16);
      v12 = v4 + 16;
      v14 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
      v20 = *(v12 + 56);
      v21 = v13;
      v22 = v12;
      v19[1] = v7 + 32;
      do
      {
        v15 = v24;
        v21(v6, v14, v24);
        TTRRemindersListViewModel.ImageAttachment.image.getter();
        TTRRemindersListViewModel.ImageAttachment.attachmentID.getter();
        TTRIRemindersListLargeImageAttachmentsView.ViewModel.init(image:attachmentID:)();
        (*(v12 - 8))(v6, v15);
        v25 = v11;
        v17 = v11[2];
        v16 = v11[3];
        if (v17 >= v16 >> 1)
        {
          sub_1004A2674(v16 > 1, v17 + 1, 1);
          v11 = v25;
        }

        v11[2] = v17 + 1;
        (*(v7 + 32))(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v9, v23);
        v14 += v20;
        --v10;
      }

      while (v10);
    }
  }

  return TTRIRemindersListLargeImageAttachmentsView.viewModels.setter();
}

unint64_t sub_1004CC894()
{
  result = qword_100786EA8;
  if (!qword_100786EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786EA8);
  }

  return result;
}

uint64_t sub_1004CC8E8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1004CC938()
{
  v1 = *(type metadata accessor for TTRIBoardReminderCellContentConfiguration() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_100058000(&qword_100778EC8) - 8);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_1004C5B1C(v5, v6, v7, v0 + v2, v8);
}

uint64_t sub_1004CCA18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_1004CCA80()
{
  v2.receiver = *(v0 + 16);
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "layoutSubviews");
}

uint64_t sub_1004CCAD0@<X0>(char *a1@<X8>)
{
  v2 = sub_100058000(&unk_10077D160);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuidString:)();
  result = (*(v6 + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = objc_opt_self();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v12 = [v10 objectIDWithUUID:isa];

    (*(v6 + 8))(v8, v5);
    v13 = *(sub_100058000(&qword_100777A40) + 48);
    *a1 = v12;
    v14 = enum case for REMNavigationSpecifier.AccountPathSpecifier.showInAccountsList(_:);
    v15 = type metadata accessor for REMNavigationSpecifier.AccountPathSpecifier();
    (*(*(v15 - 8) + 104))(&a1[v13], v14, v15);
    v16 = enum case for REMNavigationSpecifier.account(_:);
    v17 = type metadata accessor for REMNavigationSpecifier();
    return (*(*(v17 - 8) + 104))(a1, v16, v17);
  }

  return result;
}

uint64_t sub_1004CCDA4(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23[1] = a4;
  v26 = a2;
  v8 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for REMFeatureFlags();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, enum case for REMFeatureFlags.ppt_skipSelectionForNavigationTests(_:), v12, v14);
  v17 = REMFeatureFlags.isEnabled.getter();
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    sub_10000B0D8(a1, v27);
    sub_100058000(a3);
    swift_allocObject();
    return Promise.init(value:)();
  }

  else
  {
    v19 = a1[3];
    v20 = a1[4];
    sub_10000C36C(a1, v19);
    static REMNavigationSpecifier.ReminderPathSpecifier.showInList.getter();
    v21 = sub_100058000(v24);
    v22 = (*(*(v20 + 8) + 56))(v26, v11, v21, v21, v19);
    (*(v9 + 8))(v11, v8);
    return v22;
  }
}

uint64_t sub_1004CD050@<X0>(char *a1@<X8>)
{
  v2 = sub_100058000(&unk_10077D160);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  UUID.init(uuidString:)();
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = objc_opt_self();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v6 + 8))(v4, v5);
    v10 = [v8 objectIDWithUUID:isa];

    v11 = *(sub_100058000(&unk_100793000) + 48);
    *a1 = v10;
    v12 = enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:);
    v13 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
    (*(*(v13 - 8) + 104))(&a1[v11], v12, v13);
    v14 = enum case for REMNavigationSpecifier.list(_:);
    v15 = type metadata accessor for REMNavigationSpecifier();
    return (*(*(v15 - 8) + 104))(a1, v14, v15);
  }

  return result;
}

id sub_1004CD250(void *a1)
{
  v2 = sub_100058000(&unk_10077D160);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  UUID.init(uuidString:)();
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    __break(1u);
  }

  v7 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v4, v5);
  v9 = [v7 objectIDWithUUID:isa];

  v14 = 0;
  v10 = [a1 fetchReminderWithObjectID:v9 error:&v14];
  if (v10)
  {
    v11 = v14;
  }

  else
  {
    v12 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v10;
}

id sub_1004CD444(void *a1)
{
  v2 = sub_100058000(&unk_10077D160);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  UUID.init(uuidString:)();
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    __break(1u);
  }

  v7 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v4, v5);
  v9 = [v7 objectIDWithUUID:isa];

  v14 = 0;
  v10 = [a1 fetchReminderWithObjectID:v9 error:&v14];
  if (v10)
  {
    v11 = v14;
  }

  else
  {
    v12 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v10;
}

id sub_1004CD638(void *a1)
{
  v2 = sub_100058000(&unk_10077D160);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  UUID.init(uuidString:)();
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    __break(1u);
  }

  v7 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v4, v5);
  v9 = [v7 objectIDWithUUID:isa];

  v14 = 0;
  v10 = [a1 fetchReminderWithObjectID:v9 error:&v14];
  if (v10)
  {
    v11 = v14;
  }

  else
  {
    v12 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v10;
}

id sub_1004CD82C(void *a1)
{
  v2 = sub_100058000(&unk_10077D160);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  UUID.init(uuidString:)();
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    __break(1u);
  }

  v7 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v4, v5);
  v9 = [v7 objectIDWithUUID:isa];

  v14 = 0;
  v10 = [a1 fetchReminderWithObjectID:v9 error:&v14];
  if (v10)
  {
    v11 = v14;
  }

  else
  {
    v12 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v10;
}

uint64_t sub_1004CDA20(void *a1)
{
  v2 = sub_100058000(&unk_10077D160);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v30 - v6;
  v34 = "EF-91CB-A8A3484D56AE";
  UUID.init(uuidString:)();
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v33 = *(v9 + 48);
  if (v33(v7, 1, v8) == 1)
  {
    __break(1u);
  }

  v10 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v31 = *(v9 + 8);
  v31(v7, v8);
  v32 = v10;
  v12 = [v10 objectIDWithUUID:isa];

  v35 = 0;
  v13 = [a1 fetchReminderWithObjectID:v12 error:&v35];

  if (!v13)
  {
    v29 = v35;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v13;
  }

  v14 = v35;
  if (([v13 isCompleted] & 1) == 0)
  {
    return v13;
  }

  if (qword_1007673A8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003E30(v15, qword_100786F30);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Reminder.isCompleted == true, setup failed", v18, 2u);
  }

  v35 = 0;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(45);

  v35 = 0xD00000000000002BLL;
  v36 = 0x8000000100689D80;
  UUID.init(uuidString:)();
  result = (v33)(v4, 1, v8);
  if (result != 1)
  {
    v20 = objc_opt_self();
    v21 = UUID._bridgeToObjectiveC()().super.isa;
    v31(v4, v8);
    v22 = [v32 objectIDWithUUID:v21];

    v23 = [v22 description];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27._countAndFlagsBits = v24;
    v27._object = v26;
    String.append(_:)(v27);

    v28 = String._bridgeToObjectiveC()();

    [v20 internalErrorWithDebugDescription:v28];

    swift_willThrow();
    return v13;
  }

  __break(1u);
  return result;
}

void sub_1004CDE7C(void *a1)
{
  v2 = sub_100058000(&unk_10077D160);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  UUID.init(uuidString:)();
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    __break(1u);
  }

  v7 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v4, v5);
  v9 = [v7 objectIDWithUUID:isa];

  v24 = 0;
  v10 = [a1 fetchReminderWithObjectID:v9 error:&v24];

  if (v10)
  {
    v11 = v24;
    if ([v10 isCompleted])
    {
      if (qword_1007673A8 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_100003E30(v12, qword_100786F30);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Reminder isCompleted. Marking as not-completed", v15, 2u);
      }

      v16 = [objc_allocWithZone(REMSaveRequest) initWithStore:a1];
      v17 = [v16 updateReminder:v10];
      [v17 setCompleted:0];
      v24 = 0;
      if ([v16 saveSynchronouslyWithError:&v24])
      {
        v18 = v24;
      }

      else
      {
        v23 = v24;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_1007673A8 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100003E30(v20, qword_100786F30);
      v16 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v16, v21, "Reminder.isCompleted == false, no need to update it.", v22, 2u);
      }

      v17 = v10;
    }
  }

  else
  {
    v19 = v24;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1004CE31C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007875C8);
  v1 = sub_100003E30(v0, qword_1007875C8);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004CE3E4()
{

  return v0;
}

uint64_t sub_1004CE414()
{
  sub_1004CE3E4();

  return swift_deallocClassInstance();
}

uint64_t sub_1004CE4BC()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100003E68(v6, static OpenAnyListAppIntent.title);
  sub_100003E30(v6, static OpenAnyListAppIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t OpenAnyListAppIntent.title.unsafeMutableAddressor()
{
  if (qword_1007673B8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_100003E30(v0, static OpenAnyListAppIntent.title);
}

uint64_t static OpenAnyListAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1007673B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_100003E30(v2, static OpenAnyListAppIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static OpenAnyListAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100058000(&qword_100767528);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t OpenAnyListAppIntent.target.setter(uint64_t a1)
{
  v2 = type metadata accessor for AnyListEntity();
  __chkstk_darwin(v2 - 8);
  sub_1004CF844(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return sub_1004CF8A8(a1);
}

void (*OpenAnyListAppIntent.target.modify(uint64_t *a1))(void *)
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_1004CFB68;
}

uint64_t OpenAnyListAppIntent.perform()(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for REMNavigationSpecifier.SmartListPathSpecifier();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for REMNavigationSpecifier();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  type metadata accessor for AnyListEntity();
  v2[14] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  v7 = type metadata accessor for RemindersAppIntentCategory();
  v2[18] = v7;
  v2[19] = *(v7 - 8);
  v2[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[21] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004CEE5C, v9, v8);
}

uint64_t sub_1004CEE5C()
{
  v1 = v0[20];
  v3 = v0[18];
  v2 = v0[19];
  v15 = v0[17];
  v4 = v0[14];
  v18 = v0[16];
  v19 = v0[15];
  v16 = v0[12];
  v17 = v0[11];
  v11 = v0[10];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v13 = v0[7];
  v14 = v0[13];
  v8 = v0[4];
  v12 = v0[5];

  v0[2] = v8;
  (*(v2 + 104))(v1, enum case for RemindersAppIntentCategory.publicAppIntent(_:), v3);
  sub_1002B5D54();
  AppIntent.postAnalytics(category:)();
  (*(v2 + 8))(v1, v3);
  IntentParameter.wrappedValue.getter();
  (*(v5 + 104))(v11, enum case for REMNavigationSpecifier.SmartListPathSpecifier.showContents(_:), v6);
  (*(v7 + 104))(v13, enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:), v12);
  sub_100290988(v11, v13, v14);
  (*(v7 + 8))(v13, v12);
  (*(v5 + 8))(v11, v6);
  REMNavigationSpecifier.url.getter();
  (*(v16 + 8))(v14, v17);
  sub_1004CF8A8(v4);
  URL.open()();
  (*(v18 + 8))(v15, v19);
  static IntentResult.result<>()();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004CF0D8(uint64_t a1)
{
  v2 = type metadata accessor for AnyListEntity();
  __chkstk_darwin(v2 - 8);
  sub_1004CF844(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return sub_1004CF8A8(a1);
}

void (*sub_1004CF168(uint64_t *a1))(void *)
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_1004CF1DC;
}

uint64_t sub_1004CF1F4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001AA3C;

  return OpenAnyListAppIntent.perform()(a1, v4);
}

uint64_t sub_1004CF294@<X0>(uint64_t *a1@<X8>)
{
  result = _s9Reminders20OpenAnyListAppIntentVACycfC_0();
  *a1 = result;
  return result;
}

uint64_t _s9Reminders20OpenAnyListAppIntentVACycfC_0()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v31 = *(v0 - 8);
  v32 = v0;
  __chkstk_darwin(v0);
  v30 = v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100058000(&qword_100767518);
  __chkstk_darwin(v2 - 8);
  v29 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v28 = v25 - v5;
  v6 = sub_100058000(&qword_100767520);
  __chkstk_darwin(v6 - 8);
  v27 = v25 - v7;
  v8 = sub_100058000(&qword_100767528);
  __chkstk_darwin(v8 - 8);
  v26 = v25 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v25[1] = sub_100058000(&qword_100767530);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v26;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for AnyListEntity();
  (*(*(v21 - 8) + 56))(v27, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v28, 1, 1, v22);
  v23(v29, 1, 1, v22);
  (*(v31 + 104))(v30, enum case for InputConnectionBehavior.default(_:), v32);
  sub_1004CFB24(&qword_100767538);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t sub_1004CF844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyListEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004CF8A8(uint64_t a1)
{
  v2 = type metadata accessor for AnyListEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1004CF908()
{
  result = qword_100787688;
  if (!qword_100787688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787688);
  }

  return result;
}

unint64_t sub_1004CF998()
{
  result = qword_100787690;
  if (!qword_100787690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787690);
  }

  return result;
}

unint64_t sub_1004CF9F0()
{
  result = qword_100787698;
  if (!qword_100787698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787698);
  }

  return result;
}

unint64_t sub_1004CFAC0()
{
  result = qword_1007876A0;
  if (!qword_1007876A0)
  {
    sub_10005D20C(&qword_1007876A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007876A0);
  }

  return result;
}

uint64_t sub_1004CFB24(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnyListEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004CFB6C(unint64_t a1, unint64_t a2)
{
  sub_10001DF64();
  if (a2 >> 62)
  {
    v4 = _CocoaArrayWrapper.subscript.getter();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v4;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v6 = 0xD000000000000046;
    v5 = 0x8000000100689F30;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v4;
  }

  _StringGuts.grow(_:)(82);
  v5 = 0x8000000100689EE0;
  v6 = 0xD000000000000043;
LABEL_11:
  String.append(_:)(*&v6);
  v8._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x756F662074756220;
  v9._object = 0xEB0000000020646ELL;
  String.append(_:)(v9);
  swift_getObjectType();
  v10._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v10);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

id sub_1004CFD38(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  *&a4[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_dataSource] = 0;
  *&a4[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_collectionView] = 0;
  v9 = OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_lastConsumedViewModel;
  v10 = type metadata accessor for TTRTemplatesListViewModel();
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  *&a4[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController____lazy_storage___cancelButton] = 0;
  *&a4[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController____lazy_storage___doneButton] = 0;
  v11 = OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_style;
  v12 = type metadata accessor for TTRTemplatesListStyle();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&a4[v11], a1, v12);
  v14 = &a4[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_presenter];
  *v14 = a2;
  *(v14 + 1) = &off_10071D850;
  *&a4[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_localUndoManager] = a3;
  v17.receiver = a4;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", 0, 0);
  (*(v13 + 8))(a1, v12);
  return v15;
}

void *sub_1004CFEC4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v35 = type metadata accessor for TTRTemplatesListViewModel.OptimisticApply();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for TTRTemplatesListViewModel();
  v11 = *(v36 - 8);
  v12 = __chkstk_darwin(v36);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v34 = &v34 - v15;
  v16 = sub_100058000(&qword_100775FD8);
  __chkstk_darwin(v16 - 8);
  v18 = &v34 - v17;
  v40[3] = type metadata accessor for TTRITemplatesListRouter();
  v40[4] = &off_1007333C0;
  v40[0] = a2;
  a4[3] = 0;
  swift_unknownObjectWeakInit();
  a4[5] = 0;
  swift_unknownObjectWeakInit();
  a4[7] = 0;
  swift_unknownObjectWeakInit();
  TTRTemplatesListViewModel.init(isPlaceholder:)();
  *(a4 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_isCreatingList) = 0;
  v19 = sub_100058000(&qword_100775FE0);
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1004D03E8(&_swiftEmptyArrayStorage);
  }

  TTRTemplatesListViewModel.OptimisticApply.init(templateOrdering:deletedTemplateIDs:)();
  v20 = OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_editorUndoManager;
  v21 = objc_allocWithZone(TTRUndoManager);
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 initWithDebugIdentifier:v22];

  *(a4 + v20) = v23;
  v24 = (a4 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_interactor);
  *v24 = a1;
  v24[1] = protocol witness table for TTRTemplatesListInteractor;
  sub_10000B0D8(v40, a4 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_router);
  *(a4 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_undoManager) = a3;
  ObjectType = swift_getObjectType();
  v26 = protocol witness table for TTRTemplatesListInteractor[1];
  v38 = ObjectType;
  v39 = v26;
  v37 = a1;
  type metadata accessor for TTRRemoveTemplatePresenterCapability();
  swift_allocObject();

  v27 = a3;
  *(a4 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_removeTemplateCapability) = TTRRemoveTemplatePresenterCapability.init(interactor:)();
  type metadata accessor for TTRMainActorDeferredAction();
  swift_allocObject();
  *(a4 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_deferredAction) = TTRMainActorDeferredAction.init()();
  sub_1004D0A4C(&qword_1007876B8);

  TTRMainActorDeferredAction.delegate.setter();

  swift_getObjectType();
  if (dispatch thunk of TTRTemplatesListInteractorType.lastFetchedTemplates.getter())
  {
    TTRTemplatesListViewModel.init(templates:)();
  }

  else
  {
    TTRTemplatesListViewModel.init(isPlaceholder:)();
  }

  v28 = OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_optimisticApply;
  swift_beginAccess();
  v29 = v35;
  (*(v8 + 16))(v10, a4 + v28, v35);
  v30 = v34;
  TTRTemplatesListViewModel.applying(_:)();

  (*(v8 + 8))(v10, v29);
  v31 = v36;
  (*(v11 + 8))(v14, v36);
  sub_100004758(v40);
  v32 = OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_viewModel;
  swift_beginAccess();
  (*(v11 + 40))(a4 + v32, v30, v31);
  swift_endAccess();
  return a4;
}

void sub_1004D03E8(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_100058000(&qword_100782428);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = sub_1004CFB6C(v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_10001DF64();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_10001DF64();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v38)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

id sub_1004D06B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v35 = a3;
  v6 = type metadata accessor for TTRTemplatesListStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(TTRUndoManager);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithDebugIdentifier:v11];

  v13 = type metadata accessor for TTRInteractorAsyncEditsCommitter();
  v14 = v12;
  v15 = static TTRInteractorEditsCommitting<>.async.getter();
  v37 = v13;
  v38 = &protocol witness table for TTRInteractorAsyncEditsCommitter;
  v36[0] = v15;
  type metadata accessor for TTRTemplatesListInteractor();
  swift_allocObject();
  v16 = v14;
  v17 = a2;
  v18 = TTRTemplatesListInteractor.init(account:undoManager:committer:)();
  v19 = type metadata accessor for TTRITemplatesListRouter();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRIActivityAlertRouterCapability();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v20 + 32) = v21;
  v37 = v19;
  v38 = &off_1007333C0;
  v36[0] = v20;
  type metadata accessor for TTRITemplatesListPresenter();
  v22 = swift_allocObject();
  v23 = sub_10000AE84(v36, v19);
  __chkstk_darwin(v23);
  v25 = (&v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *v25;
  v28 = v16;

  v29 = sub_1004CFEC4(v18, v27, v28, v22);
  sub_100004758(v36);
  (*(v7 + 16))(v9, a1, v6);
  v30 = objc_allocWithZone(type metadata accessor for TTRITemplatesListViewController());

  v31 = sub_1004CFD38(v9, v29, v28, v30);
  sub_1004D0A4C(&qword_1007876B0);

  TTRTemplatesListInteractor.delegate.setter();
  v29[3] = &off_100720D90;
  swift_unknownObjectWeakAssign();
  v29[5] = v34;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  TTRTemplatesListInteractor.start()();

  return v31;
}

uint64_t sub_1004D0A4C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTRITemplatesListPresenter();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1004D0A90@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_100058000(&qword_100787710);
  __chkstk_darwin(v6 - 8);
  v8 = &v20[-v7];
  v9 = type metadata accessor for UICellConfigurationState();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = *v3;
  v25 = *(v3 + 16);
  v13 = *(v3 + 18);
  v14 = *(v3 + 35);
  v22 = *(v3 + 19);
  v23[0] = v14;
  *(v23 + 13) = *(v3 + 48);
  sub_10000B0D8(a1, v21);
  sub_10008E15C(v3, v20);
  sub_100058000(&qword_100787718);
  v15 = swift_dynamicCast();
  v16 = *(v10 + 56);
  if (v15)
  {
    v16(v8, 0, 1, v9);
    (*(v10 + 32))(v12, v8, v9);
    v17 = UICellConfigurationState.isEditing.getter();
    (*(v10 + 8))(v12, v9);
    v13 = (v17 & 1) == 0;
  }

  else
  {
    v16(v8, 1, 1, v9);
    sub_1000079B4(v8, &qword_100787710);
  }

  *a2 = v24;
  *(a2 + 16) = v25;
  *(a2 + 18) = v13;
  result = *&v22;
  v19 = v23[0];
  *(a2 + 19) = v22;
  *(a2 + 35) = v19;
  *(a2 + 48) = *(v23 + 13);
  return result;
}

uint64_t sub_1004D0CE4()
{
  v1 = *(v0 + 16);
  v7[0] = *v0;
  v7[1] = v1;
  v7[2] = *(v0 + 32);
  v8 = *(v0 + 48);
  v2 = objc_allocWithZone(type metadata accessor for CompletedCellContentView());
  sub_10008E15C(v7, v6);
  sub_1004D0DEC(v7);
  v4 = v3;
  sub_1004D2D44(&qword_100787720, type metadata accessor for CompletedCellContentView);
  return v4;
}

double sub_1004D0D84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  v10 = *v2;
  v11 = v4;
  v12 = v2[2];
  v13 = *(v2 + 6);
  sub_1004D0A90(a1, v7);
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  return result;
}

void sub_1004D0DEC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_100058000(&unk_100772600);
  v5 = __chkstk_darwin(v4 - 8);
  v91 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v89 - v8;
  __chkstk_darwin(v7);
  v11 = &v89 - v10;
  v96 = v2;
  v12 = &v2[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration];
  v13 = *(a1 + 16);
  *v12 = *a1;
  *(v12 + 1) = v13;
  *(v12 + 2) = *(a1 + 32);
  *(v12 + 6) = *(a1 + 48);
  v14 = objc_allocWithZone(UILabel);
  v90 = a1;
  sub_10008E15C(a1, &aBlock);
  v15 = [v14 init];
  v16 = [objc_allocWithZone(UILabel) init];
  static TTRLocalizableStrings.Common.dotSeparator.getter();
  v17 = String._bridgeToObjectiveC()();

  [v16 setText:v17];

  v94 = sub_100058000(&qword_10076B780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D410;
  *(inited + 32) = v15;
  *(inited + 40) = v16;
  v19 = v15;
  v92 = v16;
  v93 = v19;
  if ((inited & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v20 = v19;
  }

  v21 = v20;
  v22 = sub_100003540(0, &qword_100771DF0);
  v23 = objc_opt_self();
  v97 = v22;
  v24 = static UIFont.roundedBodyFont.getter();
  [v21 setFont:v24];

  v25 = [v23 secondaryLabelColor];
  [v21 setTextColor:v25];

  [v21 setAdjustsFontForContentSizeCategory:1];
  if ((inited & 0xC000000000000001) != 0)
  {
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      goto LABEL_21;
    }

    v26 = *(inited + 40);
  }

  v27 = v26;

  v28 = static UIFont.roundedBodyFont.getter();
  [v27 setFont:v28];

  v29 = [v23 secondaryLabelColor];
  [v27 setTextColor:v29];

  [v27 setAdjustsFontForContentSizeCategory:1];
  v30 = objc_opt_self();
  v31 = [v30 buttonWithType:1];
  static TTRLocalizableStrings.RemindersList.clearCompletedButtonTitle.getter();
  v32 = String._bridgeToObjectiveC()();

  [v31 setTitle:v32 forStates:0];

  static UIButton.Configuration.plain()();
  v33 = type metadata accessor for UIButton.Configuration();
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v35(v11, 0, 1, v33);
  UIButton.configuration.setter();
  UIButton.configuration.getter();
  v36 = *(v34 + 48);
  if (v36(v9, 1, v33))
  {
    sub_1004D2CC4(v9, v11);
    UIButton.configuration.setter();
    sub_1000079B4(v9, &unk_100772600);
  }

  else
  {
    UIButton.Configuration.contentInsets.setter();
    UIButton.configuration.setter();
  }

  v37 = [v31 titleLabel];
  if (v37)
  {
    v38 = v37;
    v39 = static UIFont.roundedBodyFont.getter();
    [v38 setFont:v39];
  }

  v40 = [v31 titleLabel];
  [v40 setAdjustsFontSizeToFitWidth:1];

  [v31 setShowsMenuAsPrimaryAction:1];
  v41 = [v30 buttonWithType:1];
  static UIButton.Configuration.plain()();
  v35(v11, 0, 1, v33);
  UIButton.configuration.setter();
  v42 = v91;
  UIButton.configuration.getter();
  if (v36(v42, 1, v33))
  {
    sub_1004D2CC4(v42, v11);
    UIButton.configuration.setter();
    sub_1000079B4(v42, &unk_100772600);
  }

  else
  {
    UIButton.Configuration.contentInsets.setter();
    UIButton.configuration.setter();
  }

  v43 = [v41 titleLabel];
  if (v43)
  {
    v44 = v43;
    v45 = static UIFont.roundedBodyFont.getter();
    [v44 setFont:v45];
  }

  v46 = [v41 titleLabel];
  [v46 setAdjustsFontSizeToFitWidth:1];

  v97 = sub_100003540(0, &qword_10076B020);
  sub_100058000(&unk_100771E00);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1006337E0;
  v48 = v93;
  *(v47 + 32) = v93;
  *(v47 + 40) = 1132068864;
  v49 = v92;
  *(v47 + 48) = v92;
  type metadata accessor for UILayoutPriority(0);
  LODWORD(aBlock) = 1144750080;
  v98[0] = 1065353216;
  v91 = sub_1004D2D44(&unk_10077A6B0, type metadata accessor for UILayoutPriority);
  v50 = v48;
  v51 = v49;
  v93 = v50;
  v52 = v51;
  static _UIKitNumericRawRepresentable.+ infix(_:_:)();
  *(v47 + 64) = v31;
  *(v47 + 72) = 1144750080;
  *(v47 + 80) = v41;
  *(v47 + 88) = 1144750080;
  sub_100058000(&qword_1007884F0);
  v53 = type metadata accessor for TTRIViewContentPriorityType();
  v54 = *(v53 - 8);
  v55 = v31;
  v56 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_10062D400;
  *(v57 + v56) = 0;
  (*(v54 + 104))(v57 + v56, enum case for TTRIViewContentPriorityType.compressionResistance(_:), v53);
  v58 = v55;
  v59 = v41;
  v60 = v58;
  v61 = v59;
  static UIView.setContentPriorities(_:for:)();

  v62 = v96;
  v63 = v93;
  *&v96[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_completedCountLabel] = v93;
  *&v62[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_separatorLabel] = v52;
  *&v62[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_clearButton] = v60;
  *&v62[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_showHideButton] = v61;
  v100.receiver = v62;
  v100.super_class = ObjectType;
  v64 = v63;
  v65 = v52;
  v66 = v60;
  v67 = v61;
  v68 = objc_msgSendSuper2(&v100, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v69 = objc_allocWithZone(UIView);
  v70 = v68;
  v71 = [v69 init];
  v98[0] = 1132068864;
  LODWORD(v99[0]) = 1065353216;
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v72) = aBlock;
  [v71 setContentHuggingPriority:0 forAxis:v72];
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_100634FC0;
  v96 = v64;
  *(v73 + 32) = v64;
  *(v73 + 40) = v65;
  v74 = v66;
  *(v73 + 48) = v66;
  *(v73 + 56) = v71;
  *(v73 + 64) = v67;
  v75 = v70;
  v76 = v71;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v75 setArrangedSubviews:isa];

  v78 = v75;
  [v78 setAxis:0];
  [v78 setSpacing:5.0];
  [v78 setAlignment:2];
  [v78 setDistribution:0];

  [v78 setLayoutMarginsRelativeArrangement:1];
  [v78 setPreservesSuperviewLayoutMargins:1];
  [v78 setDebugBoundingBoxesEnabled:0];

  v79 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&v103 = sub_1004D2D34;
  *(&v103 + 1) = v79;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v102 = sub_10010CA7C;
  *(&v102 + 1) = &unk_10072BED0;
  v80 = _Block_copy(&aBlock);

  v81 = v74;
  [v74 _setMenuProvider:v80];
  _Block_release(v80);
  [v67 addTarget:v78 action:"showHideAction:" forControlEvents:0x2000];

  v83 = *&v78[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration + 16];
  v82 = *&v78[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration + 32];
  v84 = *&v78[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration];
  v104 = *&v78[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration + 48];
  v102 = v83;
  v103 = v82;
  aBlock = v84;
  v85 = swift_allocObject();
  *(v85 + 16) = v78;
  v86 = swift_allocObject();
  *(v86 + 16) = sub_1004D2D3C;
  *(v86 + 24) = v85;
  v99[4] = sub_100026410;
  v99[5] = v86;
  v99[0] = _NSConcreteStackBlock;
  v99[1] = 1107296256;
  v99[2] = sub_100026440;
  v99[3] = &unk_10072BF48;
  v87 = _Block_copy(v99);
  v88 = v78;
  sub_10008E15C(&aBlock, v98);

  [v88 performBatchUpdates:v87];
  _Block_release(v87);
  LOBYTE(v74) = swift_isEscapingClosureAtFileLocation();

  sub_10008E220(&aBlock);

  if ((v74 & 1) == 0)
  {

    sub_10008E220(v90);
    return;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

char *sub_1004D1B40()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *&result[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration + 40];
    if (v2)
    {
      sub_10008E7EC(*&result[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration + 40]);

      v3 = v2();
      sub_1000301AC(v2);
      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1004D1CB0()
{
  sub_100058000(&unk_100777760);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10062D400;
  v2 = *(v0 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_completedCountLabel);
  *(v1 + 56) = sub_100003540(0, &qword_100776820);
  *(v1 + 32) = v2;
  v3 = v0 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration;
  if (*(v0 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration + 16))
  {
    v4 = *(v0 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_clearButton);
    v14 = sub_100003540(0, &unk_10077A690);
    *&v13 = v4;
    v5 = v2;
    v6 = v4;
    v1 = sub_1005470E4(1, 2, 1, v1);
    *(v1 + 16) = 2;
    sub_100007DD8(&v13, (v1 + 64));
    if (!*(v3 + 17))
    {
      return v1;
    }
  }

  else
  {
    v7 = v2;
    if (!*(v3 + 17))
    {
      return v1;
    }
  }

  v8 = *(v0 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_showHideButton);
  v14 = sub_100003540(0, &unk_10077A690);
  *&v13 = v8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = v8;
  if (v9 >= v10 >> 1)
  {
    v1 = sub_1005470E4((v10 > 1), v9 + 1, 1, v1);
  }

  *(v1 + 16) = v9 + 1;
  sub_100007DD8(&v13, (v1 + 32 * v9 + 32));
  return v1;
}

uint64_t sub_1004D1E48(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration];
  v4 = *&v1[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration + 16];
  v21 = *&v1[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration];
  v22 = v4;
  v23 = *&v1[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration + 32];
  v24 = *&v1[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration + 48];
  v25[0] = v21;
  v25[1] = v4;
  v25[2] = v23;
  v26 = v24;
  v5 = *a1;
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  *(v3 + 6) = *(a1 + 48);
  *(v3 + 1) = v6;
  *(v3 + 2) = v7;
  *v3 = v5;
  sub_10008E15C(&v21, v19);
  sub_10008E15C(a1, v19);
  sub_10008E220(v25);
  v8 = v3[16];
  v9 = v3[17];
  v10 = v3[18];
  if (v21 == *v3 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v22 == v8 && BYTE1(v22) == v9 && ((v10 ^ BYTE2(v22)) & 1) == 0)
  {
    sub_10008E220(&v21);
    return sub_10008E220(a1);
  }

  else
  {
    v12 = *(v3 + 1);
    v19[0] = *v3;
    v19[1] = v12;
    v19[2] = *(v3 + 2);
    v20 = *(v3 + 6);
    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1004D2E68;
    *(v14 + 24) = v13;
    aBlock[4] = sub_100068444;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_10072BFE8;
    v15 = _Block_copy(aBlock);
    sub_10008E15C(v19, v17);
    v16 = v1;

    [v16 performBatchUpdates:v15];
    _Block_release(v15);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    sub_10008E220(&v21);
    sub_10008E220(a1);
    result = sub_10008E220(v19);
    if (v16)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1004D20B8(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_completedCountLabel);
  v3 = (a1 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration);

  v4 = String._bridgeToObjectiveC()();

  [v2 setText:v4];

  if (!v3[16])
  {
    v5 = 1;
    goto LABEL_5;
  }

  if (v3[16] == 1)
  {
    v5 = 0;
LABEL_5:
    v6 = v3[18];
    goto LABEL_7;
  }

  v6 = 0;
  v5 = 0;
LABEL_7:
  [*(a1 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_separatorLabel) setHidden:v5];
  v7 = *(a1 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_clearButton);
  [v7 setHidden:v5];
  if ((v5 & 1) == 0)
  {
    [v7 setEnabled:v6];
  }

  v8 = *(a1 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_showHideButton);
  if (v3[17])
  {
    if (v3[17] == 1)
    {
      static TTRLocalizableStrings.showButtonTitle.getter();
    }

    else
    {
      static TTRLocalizableStrings.hideButtonTitle.getter();
    }

    v10 = String._bridgeToObjectiveC()();

    [v8 setTitle:v10 forState:0];

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return [v8 setHidden:v9];
}

uint64_t destroy for TTRIRemindersListCompletedCellContentConfiguration(uint64_t a1)
{

  if (*(a1 + 24))
  {
  }

  if (*(a1 + 40))
  {
  }

  return result;
}

uint64_t initializeWithCopy for TTRIRemindersListCompletedCellContentConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v6 = (a2 + 24);
  v5 = *(a2 + 24);

  if (v5)
  {
    v7 = *(a2 + 32);
    *(a1 + 24) = v5;
    *(a1 + 32) = v7;
  }

  else
  {
    *(a1 + 24) = *v6;
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = *(a2 + 48);
    *(a1 + 40) = v8;
    *(a1 + 48) = v9;
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
  }

  return a1;
}

uint64_t assignWithCopy for TTRIRemindersListCompletedCellContentConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  v5 = *(a2 + 24);
  if (v4)
  {
    if (v5)
    {
      v6 = *(a2 + 32);
      *(a1 + 24) = v5;
      *(a1 + 32) = v6;

      goto LABEL_8;
    }
  }

  else if (v5)
  {
    v7 = *(a2 + 32);
    *(a1 + 24) = v5;
    *(a1 + 32) = v7;

    goto LABEL_8;
  }

  *(a1 + 24) = *(a2 + 24);
LABEL_8:
  v8 = *(a2 + 40);
  if (!*(a1 + 40))
  {
    if (v8)
    {
      v10 = *(a2 + 48);
      *(a1 + 40) = v8;
      *(a1 + 48) = v10;

      return a1;
    }

LABEL_14:
    *(a1 + 40) = *(a2 + 40);
    return a1;
  }

  if (!v8)
  {

    goto LABEL_14;
  }

  v9 = *(a2 + 48);
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;

  return a1;
}

uint64_t assignWithTake for TTRIRemindersListCompletedCellContentConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  v6 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 18) = *(a2 + 18);
  if (v6)
  {
    if (v5)
    {
      v7 = *(a2 + 32);
      *(a1 + 24) = v5;
      *(a1 + 32) = v7;

      goto LABEL_8;
    }
  }

  else if (v5)
  {
    v8 = *(a2 + 32);
    *(a1 + 24) = v5;
    *(a1 + 32) = v8;
    goto LABEL_8;
  }

  *(a1 + 24) = *(a2 + 24);
LABEL_8:
  v9 = *(a2 + 40);
  if (!*(a1 + 40))
  {
    if (v9)
    {
      v11 = *(a2 + 48);
      *(a1 + 40) = v9;
      *(a1 + 48) = v11;
      return a1;
    }

LABEL_14:
    *(a1 + 40) = *(a2 + 40);
    return a1;
  }

  if (!v9)
  {

    goto LABEL_14;
  }

  v10 = *(a2 + 48);
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListCompletedCellContentConfiguration(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TTRIRemindersListCompletedCellContentConfiguration(uint64_t result, int a2, int a3)
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

void (*sub_1004D27A0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x160uLL);
  }

  *a1 = v3;
  *(v3 + 344) = v1;
  v4 = v1 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration;
  v6 = *(v1 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration + 16);
  v5 = *(v1 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration + 32);
  v7 = *(v1 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration);
  *(v3 + 48) = *(v1 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration + 48);
  *(v3 + 16) = v6;
  *(v3 + 32) = v5;
  *v3 = v7;
  *(v3 + 248) = &type metadata for TTRIRemindersListCompletedCellContentConfiguration;
  v8 = v3;
  *(v3 + 256) = sub_1003DE974();
  v9 = swift_allocObject();
  *(v8 + 224) = v9;
  v10 = *(v4 + 16);
  *(v9 + 16) = *v4;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v4 + 32);
  *(v9 + 64) = *(v4 + 48);
  sub_10008E15C(v8, v8 + 168);
  return sub_1004D2888;
}

void sub_1004D2888(uint64_t *a1, char a2)
{
  v3 = *a1;
  sub_10000B0D8(*a1 + 224, *a1 + 264);
  if (a2)
  {
    sub_10000B0D8(v3 + 264, v3 + 304);
    sub_100058000(&qword_10077A650);
    if (swift_dynamicCast())
    {
      *(v3 + 56) = *(v3 + 168);
      *(v3 + 72) = *(v3 + 184);
      *(v3 + 88) = *(v3 + 200);
      *(v3 + 104) = *(v3 + 216);
      sub_1004D1E48(v3 + 56);
    }

    sub_100004758(v3 + 264);
  }

  else
  {
    sub_100058000(&qword_10077A650);
    if (swift_dynamicCast())
    {
      v4 = *(v3 + 184);
      *(v3 + 112) = *(v3 + 168);
      *(v3 + 128) = v4;
      *(v3 + 144) = *(v3 + 200);
      *(v3 + 160) = *(v3 + 216);
      sub_1004D1E48(v3 + 112);
    }
  }

  sub_100004758(v3 + 224);

  free(v3);
}

uint64_t sub_1004D29AC@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration;
  v4 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v4;
  v9[2] = *(v3 + 32);
  v10 = *(v3 + 48);
  a1[3] = &type metadata for TTRIRemindersListCompletedCellContentConfiguration;
  a1[4] = sub_1003DE974();
  v5 = swift_allocObject();
  *a1 = v5;
  v6 = *(v3 + 16);
  *(v5 + 16) = *v3;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v3 + 32);
  *(v5 + 64) = *(v3 + 48);
  return sub_10008E15C(v9, v8);
}

uint64_t sub_1004D2A48(uint64_t a1)
{
  sub_10000B0D8(a1, v7);
  sub_100058000(&qword_10077A650);
  if (swift_dynamicCast())
  {
    v8[0] = v3;
    v8[1] = v4;
    v8[2] = v5;
    v9 = v6;
    sub_1004D1E48(v8);
  }

  return sub_100004758(a1);
}

void (*sub_1004D2AD4(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1004D27A0(v2);
  return sub_1001861BC;
}

uint64_t sub_1004D2B44(uint64_t a1)
{
  sub_10000B0D8(a1, v5);
  sub_100058000(&qword_10077A650);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = result;

    sub_1000301AC(v3);
    sub_1000301AC(v4);
    return v2;
  }

  return result;
}

double sub_1004D2BE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (TTRRemindersListViewModel.CompletedRemindersState.canClear.getter())
  {
    if (TTRRemindersListViewModel.CompletedRemindersState.count.getter() > 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    if ((TTRRemindersListViewModel.CompletedRemindersState.canToggleVisibility.getter() & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    if ((TTRRemindersListViewModel.CompletedRemindersState.canToggleVisibility.getter() & 1) == 0)
    {
LABEL_6:
      v5 = 0;
      goto LABEL_11;
    }
  }

  if (TTRRemindersListViewModel.CompletedRemindersState.shown.getter())
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

LABEL_11:
  v6 = TTRRemindersListViewModel.CompletedRemindersState.countText.getter();
  v8 = v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.CompletedRemindersState();
  (*(*(v9 - 8) + 8))(a1, v9);
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v4;
  *(a2 + 17) = v5;
  *(a2 + 18) = 1;
  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  return result;
}

uint64_t sub_1004D2CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_100772600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004D2D44(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1004D2DB0()
{
  result = qword_100787728;
  if (!qword_100787728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787728);
  }

  return result;
}

unint64_t sub_1004D2E08()
{
  result = qword_100787730;
  if (!qword_100787730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787730);
  }

  return result;
}

id sub_1004D2E70(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v118 = a4;
  v120 = a3;
  v112 = a2;
  v125 = a1;
  v4 = type metadata accessor for TTRRemindersListLayout();
  v131 = *(v4 - 8);
  v132 = v4;
  __chkstk_darwin(v4);
  v107 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v121 = &v106 - v7;
  __chkstk_darwin(v8);
  v106 = &v106 - v9;
  __chkstk_darwin(v10);
  v126 = &v106 - v11;
  v12 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  __chkstk_darwin(v12 - 8);
  v117 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v115 = (&v106 - v15);
  v116 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0) - 8;
  __chkstk_darwin(v116);
  v130 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TTRListType.SortingCapability();
  __chkstk_darwin(v17 - 8);
  v113 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for TTRRemindersListDataModelSourceCountCompleted();
  v111 = *(v114 - 8);
  __chkstk_darwin(v114);
  v110 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v109 = *(v129 - 8);
  __chkstk_darwin(v129);
  v21 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v128 = &v106 - v23;
  v119 = type metadata accessor for TTRRemindersListDefaultListType();
  v24 = *(v119 - 1);
  __chkstk_darwin(v119);
  v26 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v27 - 8);
  v127 = (&v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v106 - v34;
  sub_100058000(&qword_10076C210);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_10062D400;
  static REMSuggestedAttributesElector.ExcludedAttributes.lists.getter();
  v140[0] = v36;
  sub_1004D40D4(&qword_100769628, &type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes);
  sub_100058000(&qword_10076C218);
  sub_10010BA44();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v108 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters;
  v37 = v112;
  v38 = v127;
  sub_10010BD5C(v112, v127, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v122 = v35;
  v123 = v30;
  v39 = *(v30 + 16);
  v124 = v29;
  v39(v32, v35, v29);
  (*(v24 + 104))(v26, enum case for TTRRemindersListDefaultListType.any(_:), v119);
  sub_10007786C(v38, v32, v26, v140);
  ObjectType = sub_1004D3EB8();
  v137 = &protocol witness table for REMTemplate;
  v135[0] = v120;
  v40 = v120;
  static REMRemindersListDataView.SortingStyle.fallbackForTemplate.getter();
  v41 = v128;
  static REMRemindersListDataView.SortingStyle.sortingStyle(for:fallback:)();
  v42 = v109;
  v43 = v129;
  v119 = *(v109 + 8);
  v120 = (v109 + 8);
  v119(v21, v129);
  sub_1004D3F04(v135);
  v44 = *v37;
  (*(v111 + 104))(v110, enum case for TTRRemindersListDataModelSourceCountCompleted.off(_:), v114);
  (*(v42 + 16))(v21, v41, v43);
  type metadata accessor for TTRShowTemplateDataModelSource();
  swift_allocObject();
  v45 = v40;
  v46 = v44;
  v47 = TTRShowTemplateDataModelSource.init(store:template:listRepresentation:countCompleted:sortingStyle:canChangeSortingStyle:)();
  v48 = v140[0];

  v49 = v48;
  v50 = v113;
  static TTRListType.SortingCapability.sortingCapabilityForNonSmartList.getter();
  type metadata accessor for TTRShowTemplateViewModelSource();
  v51 = swift_allocObject();
  v114 = v49;
  v52 = sub_1004D3F6C(v47, v49, v50, v51);
  v53 = v127;
  v54 = v108;
  sub_10010BD5C(v37, v127, v108);
  sub_10010BCAC(v140, v135);
  v55 = sub_1004D40D4(&qword_100781130, type metadata accessor for TTRShowTemplateViewModelSource);
  v56 = v130;
  sub_10010BD5C(v53, v130, v54);
  v57 = v116;
  sub_10010BCAC(v135, v56 + *(v116 + 28));
  v58 = (v56 + *(v57 + 32));
  *v58 = v52;
  v58[1] = v55;
  v59 = v135[0];
  sub_100058000(&qword_10076C230);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_10062D3F0;
  sub_10000794C(&v139, v134, &qword_100769608);
  v61 = *(v134[5] + 8);
  *(v60 + 32) = v134[4];
  *(v60 + 40) = v61;
  sub_10000794C(&v138, v133, &qword_100769600);
  swift_retain_n();
  v62 = v59;
  swift_unknownObjectRelease();
  *(v60 + 48) = v133[3];
  sub_100004758(v133);
  sub_100004758(v134);
  type metadata accessor for TTRReminderListEditingPresenter(0);
  v63 = swift_allocObject();
  v64 = sub_1003A8FF8(v62, v52, v60, v63);

  sub_10010BD08(v135);
  sub_10010BE0C(v53, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v65 = *(v57 + 36);
  v113 = v64;
  *(v56 + v65) = v64;
  v66 = v115;
  sub_100078BBC(v115);
  v116 = type metadata accessor for TTRIShowTemplatePresenter();
  v67 = swift_allocObject();
  *(v67 + OBJC_IVAR____TtC9Reminders25TTRIShowTemplatePresenter_isConfirmingUpdate) = 0;
  v68 = (v67 + OBJC_IVAR____TtC9Reminders25TTRIShowTemplatePresenter_dataModelSource);
  *v68 = v47;
  v68[1] = &protocol witness table for TTRShowTemplateDataModelSource;
  v69 = *v66;
  v70 = v66[1];
  ObjectType = swift_getObjectType();
  v137 = *(v70 + 16);
  v135[0] = v69;
  type metadata accessor for TTRRemoveTemplatePresenterCapability();
  swift_allocObject();
  v127 = v47;

  v71 = v118;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  *(v67 + OBJC_IVAR____TtC9Reminders25TTRIShowTemplatePresenter_removeTemplateCapability) = TTRRemoveTemplatePresenterCapability.init(interactor:)();
  v72 = v117;
  sub_10010BD5C(v66, v117, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v73 = sub_1003A6440(v72, v71, v67);
  sub_10010BE0C(v66, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v74 = *(v73 + 144);
  v75 = swift_getObjectType();
  v76 = *(v74 + 112);

  if (v76(v75, v74))
  {
    swift_getObjectType();
    v77 = v106;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v78 = v126;
    (*(v131 + 32))(v126, v77, v132);
  }

  else
  {
    v78 = v126;
    (*(v131 + 104))(v126, enum case for TTRRemindersListLayout.list(_:), v132);
  }

  v79 = sub_1003A4A1C(v78, v73);
  v117 = v80;
  v82 = v81;
  v84 = v83;
  (*(v131 + 8))(v78, v132);
  v118 = swift_getObjectType();
  *(v73 + 24) = *(v84 + 8);
  v126 = v82;
  swift_unknownObjectWeakAssign();
  v85 = *(v73 + 144);
  v86 = swift_getObjectType();
  v87 = *(v85 + 112);

  if (v87(v86, v85))
  {
    swift_getObjectType();
    v88 = v107;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();

    v89 = v121;
    (*(v131 + 32))(v121, v88, v132);
  }

  else
  {

    v89 = v121;
    (*(v131 + 104))(v121, enum case for TTRRemindersListLayout.list(_:), v132);
  }

  v90 = objc_allocWithZone(type metadata accessor for TTRIShowRemindersViewController());
  v91 = v79;
  v92 = sub_1003A902C(v73, v91, v117, v89, 0, 0, 0, v90);

  v93 = *(v84 + 32);
  v94 = v92;
  v93(v92, &off_100723D78, v118, v84);
  sub_1004D40D4(&qword_100787760, type metadata accessor for TTRIShowTemplatePresenter);

  TTRRemindersListInteractor.delegate.setter();

  TTRRemindersListInteractor.optimisticUpdatesDelegate.setter();
  swift_unknownObjectWeakAssign();
  sub_1004D40D4(&qword_100787768, type metadata accessor for TTRShowTemplateViewModelSource);

  dispatch thunk of TTRShowTemplateDataModelSource.delegate.setter();

  sub_10056FEB0(v95, &off_10071A9B0);

  *(v113 + 3) = &off_10071AB30;
  swift_unknownObjectWeakAssign();
  sub_10000794C(&v141, v135, &qword_100769600);
  v96 = v137;
  swift_unknownObjectRelease();
  v96[5] = &off_10071A918;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_100004758(v135);
  sub_10000794C(&v142, v135, &qword_100769608);
  swift_getObjectType();
  sub_1004D40D4(&qword_100787770, type metadata accessor for TTRIShowTemplatePresenter);

  dispatch thunk of TTRIQuickBarInputAccessoryModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  sub_100004758(v135);
  dispatch thunk of TTRShowTemplateDataModelSource.start()();
  v97 = objc_allocWithZone(UINavigationController);
  swift_retain_n();
  v98 = [v97 initWithRootViewController:v94];
  v99 = [v98 navigationBar];
  [v99 setPrefersLargeTitles:1];

  v100 = [v98 presentationController];
  if (v100)
  {
    v101 = v100;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v102 = *(v73 + 24);
      v103 = swift_getObjectType();
      (*(v102 + 104))(v101, v103, v102);
      swift_unknownObjectRelease();
    }

    *(v73 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_hasPreparedForModalPresentation) = 1;
  }

  v104 = v125;
  v125[3] = v116;
  v104[4] = &off_10071A620;

  swift_unknownObjectRelease();
  *v104 = v73;
  v119(v128, v129);
  (*(v123 + 8))(v122, v124);
  sub_10010BE0C(v130, type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder);
  sub_10010BD08(v140);
  return v98;
}

id TTRIShowTemplateAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowTemplateAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIShowTemplateAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowTemplateAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1004D3EB8()
{
  result = qword_100770AF8;
  if (!qword_100770AF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100770AF8);
  }

  return result;
}

uint64_t sub_1004D3F04(uint64_t a1)
{
  v2 = sub_100058000(&unk_100775680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004D3F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRListType.SortingCapability();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a4 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_template) = 0;
  *(a4 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_listRepresentation) = 0;
  v13 = a4 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_remindersCount;
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  *(a4 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_showLargeAttachmentsValue) = 1;
  *(a4 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_sectionsContextInstance) = 0;
  *(a4 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource____lazy_storage___dragAndDropCapability) = 0;
  (*(v9 + 16))(v12, a3, v8, v10);
  v14 = sub_1003A649C(a1, a2, v12, a4);
  (*(v9 + 8))(a3, v8);
  return v14;
}

uint64_t sub_1004D40D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004D411C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100787778);
  v1 = sub_100003E30(v0, qword_100787778);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1004D4234(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_showLargeAttachmentsValue) != (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_showLargeAttachmentsValue) = a1 & 1;
    v2 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
    if (v2)
    {
      v4 = v2;
      v3 = [v4 appearanceContext];
      if (v3)
      {

        type metadata accessor for TTRListEditor();
        __chkstk_darwin(v4);
        static TTROneshotEditing.oneshotEdit(_:undoManager:editBlock:)();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1004D434C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
  swift_beginAccess();
  sub_10000794C(v1 + v10, v5, &unk_10078A380);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000079B4(v5, &unk_10078A380);
    v11 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.none(_:);
    v12 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
    return (*(*(v12 - 8) + 104))(a1, v11, v12);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    if (*(v1 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_hasIncompleteOrCompletedReminders) == 2)
    {
      TTRRemindersListViewModel.EmptyListMessagingType.init(completedCount:)();
    }

    else
    {
      TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter();
      TTRRemindersListViewModel.EmptyListMessagingType.init(hasIncompleteOrCompletedReminders:shouldCategorizeGroceryItems:)();
    }

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1004D45B0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (v3)
  {
    *a1 = [v3 objectID];
    v4 = enum case for TTRAutoCompleteReminderListScope.list(_:);
    v5 = type metadata accessor for TTRAutoCompleteReminderListScope();
    v12 = *(v5 - 8);
    (*(v12 + 104))(a1, v4, v5);
    v6 = *(v12 + 56);
    v7 = a1;
    v8 = 0;
    v9 = v5;
  }

  else
  {
    v10 = type metadata accessor for TTRAutoCompleteReminderListScope();
    v6 = *(*(v10 - 8) + 56);
    v9 = v10;
    v7 = a1;
    v8 = 1;
  }

  return v6(v7, v8, 1, v9);
}

uint64_t sub_1004D46CC(uint64_t a1, uint64_t (*a2)(__n128), uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  v5 = v4;
  if (!v4)
  {
    v5 = sub_100572610(a1, a2, a3);
  }

  v6 = v4;
  return v5;
}

id sub_1004D4714@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (v3)
  {
    *a1 = v3;
    v4 = enum case for TTRRemindersListSortingStyleSaveTarget.list(_:);
    v10 = v3;
    v5 = type metadata accessor for TTRRemindersListSortingStyleSaveTarget();
    v6 = *(v5 - 8);
    (*(v6 + 104))(a1, v4, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    v7 = v10;
  }

  else
  {
    v8 = type metadata accessor for TTRRemindersListSortingStyleSaveTarget();
    (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1004D484C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*(v4 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_sectionsContextInstance))
  {
    __chkstk_darwin(a1);
    v12[2] = v6;
    v12[3] = v7;
    v12[4] = v8;
    v9 = v8;
    type metadata accessor for TTRRemindersListViewModelSourceSectionsContext();

    v10 = sub_1002E7DEC(v9, a4 & 1, sub_1004DD31C, v12);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1004D4944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v8 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  (*(*(v8 - 8) + 16))(v7, a3, v8);
  (*(v5 + 104))(v7, enum case for TTRRemindersListViewModel.Item.section(_:), v4);
  v9 = dispatch thunk of TTRRemindersListTreeContentsQueryable.hasLoadedReminderItems(in:)();
  (*(v5 + 8))(v7, v4);
  return v9 & 1;
}

id sub_1004D4AC0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (v3)
  {
    *a1 = v3;
    v4 = enum case for TTRRemindersListTargetContainer.TargetList.upToDateList(_:);
    v5 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
    (*(*(v5 - 8) + 104))(a1, v4, v5);
    type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
    swift_storeEnumTagMultiPayload();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    v7 = sub_1004DD314;
  }

  else
  {
    *a1 = 0;
    type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
    swift_storeEnumTagMultiPayload();
    v6 = 0;
    v7 = sub_10057F4D0;
  }

  v8 = v7;
  v9 = (a1 + *(type metadata accessor for TTRRemindersListCreationTargetWithSectionID(0) + 20));
  *v9 = v8;
  v9[1] = v6;
  v10 = v3;

  return v10;
}

uint64_t sub_1004D4BE8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = [a1 objectID];
  v3 = enum case for TTRRemindersListViewModel.SectionID.sectionless(_:);
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v7 = *(v4 - 8);
  (*(v7 + 104))(a2, v3, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

void sub_1004D4CC0(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = type metadata accessor for TTRSectionID();
  v38 = *(v3 - 8);
  __chkstk_darwin(v3);
  v37 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (v16)
  {
    v35 = v3;
    v17 = v16;

    TTRRemindersListTreeViewModel.parent(of:)();

    v18 = type metadata accessor for TTRRemindersListViewModel.Item();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v11, 1, v18) == 1)
    {

      sub_1000079B4(v11, &qword_100772140);
    }

    else if ((*(v19 + 88))(v11, v18) == enum case for TTRRemindersListViewModel.Item.section(_:))
    {
      (*(v19 + 96))(v11, v18);
      (*(v13 + 32))(v15, v11, v12);
      TTRRemindersListViewModel.SectionHeader.id.getter();
      if ((*(v6 + 88))(v8, v5) == enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
      {
        (*(v6 + 96))(v8, v5);
        v34 = *v8;
        sub_100058000(&qword_10076B780);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10062D420;
        v21 = v36;
        v22 = v13;
        v23 = TTRReminderEditor.changeItem.getter();
        v24 = [v23 objectID];

        *(inited + 32) = v24;
        sub_10001D5F8(inited);
        swift_setDeallocating();
        swift_arrayDestroy();
        type metadata accessor for TTRListEditor();
        v40 = v17;
        v25 = v17;
        v26 = TTRReminderEditor.changeItem.getter();
        v27 = [v26 saveRequest];

        v39 = v21;
        type metadata accessor for TTRReminderEditor();
        sub_1004DD2CC(&unk_1007756A0, &type metadata accessor for TTRReminderEditor);
        TTRUndoableEditing.undoManager.getter();
        TTROneshotEditing.init(item:saveRequest:undoManager:)();
        v28 = v37;
        v29 = v38;
        v30 = v34;
        v31 = v35;
        *v37 = v34;
        (*(v29 + 104))(v28, enum case for TTRSectionID.sectioned(_:), v31);
        v32 = v30;
        TTRListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)();

        (*(v29 + 8))(v28, v31);
        (*(v22 + 8))(v15, v12);
      }

      else
      {
        (*(v13 + 8))(v15, v12);

        (*(v6 + 8))(v8, v5);
      }
    }

    else
    {

      (*(v19 + 8))(v11, v18);
    }
  }
}

void sub_1004D5270(void *a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v5 - 8);
  v7 = &v34 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v15 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  __chkstk_darwin(v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v17 = 0;
  swift_storeEnumTagMultiPayload();

  TTRRemindersListTreeViewModel.parent(of:)();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000079B4(v7, &qword_100772140);
LABEL_20:
    sub_10014AA38(v17, v38);
    return;
  }

  (*(v9 + 32))(v14, v7, v8);
  v18 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (!v18)
  {
    goto LABEL_19;
  }

  (*(v9 + 16))(v11, v14, v8);
  v19 = (*(v9 + 88))(v11, v8);
  if (v19 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
  {
    goto LABEL_5;
  }

  if (v19 == enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    v21 = *(v9 + 8);
    v22 = v18;
    v21(v14, v8);
    sub_10014AA9C(v17);
    v23 = v38;
    *v38 = v22;
    v24 = enum case for TTRRemindersListTargetContainer.TargetList.upToDateList(_:);
    v25 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
    (*(*(v25 - 8) + 104))(v23, v24, v25);
    swift_storeEnumTagMultiPayload();
    v21(v11, v8);
    return;
  }

  if (v19 == enum case for TTRRemindersListViewModel.Item.reminder(_:))
  {
    (*(v9 + 96))(v11, v8);
    (*(v36 + 32))();
    v34 = v18;
    v26 = TTRRemindersListViewModel.ReminderID.objectID.getter();
    v27 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
    swift_beginAccess();
    v28 = *(v2 + v27);

    v29 = sub_10013F404(v26, v28);

    (*(v36 + 8))(v35, v37);
    (*(v9 + 8))(v14, v8);
    if (v29)
    {
      sub_10014AA9C(v17);
      v30 = v38;
      *v38 = v29;
      v30[1] = v18;
      swift_storeEnumTagMultiPayload();
      return;
    }

    goto LABEL_20;
  }

  if (v19 == enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) || v19 == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:) || v19 == enum case for TTRRemindersListViewModel.Item.completed(_:) || v19 == enum case for TTRRemindersListViewModel.Item.hashtags(_:) || v19 == enum case for TTRRemindersListViewModel.Item.templateStatus(_:) || v19 == enum case for TTRRemindersListViewModel.Item.tip(_:))
  {
LABEL_5:
    v20 = *(v9 + 8);
    v20(v14, v8);
    v20(v11, v8);
    goto LABEL_20;
  }

  if (v19 == enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) || v19 == enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
  {
LABEL_19:
    (*(v9 + 8))(v14, v8);
    goto LABEL_20;
  }

  v31 = qword_1007673C0;
  v32 = v18;
  if (v31 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_100003E30(v33, qword_100787778);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("unsupported parent Item type", 28, 2);
  __break(1u);
}

double sub_1004D589C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = sub_1004D5A60();
  v12 = *(v5 + 16);
  v12(v10, a1, v4);
  v13 = *(v5 + 88);
  v14 = (v5 + 8);
  if (v13(v10, v4) == enum case for TTRRemindersListViewModel.Item.reminder(_:))
  {
    (*v14)(v10, v4);
    v12(v7, a1, v4);
    *(a2 + 24) = type metadata accessor for TTRShowRemindersInListDragAndDropPresenterCapability.MoveReminderSubjectForItem(0);
    *(a2 + 32) = &off_10072B818;
    v15 = sub_1000317B8(a2);
    sub_1004B7ED8(v7, v11, v15);
  }

  else
  {

    (*v14)(v10, v4);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1004D5A60()
{
  v1 = OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource____lazy_storage___dragAndDropCapability;
  if (*(v0 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource____lazy_storage___dragAndDropCapability))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource____lazy_storage___dragAndDropCapability);
  }

  else
  {
    type metadata accessor for TTRShowRemindersInListDragAndDropPresenterCapability();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 24) = &off_10072C1F8;
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
  }

  return v2;
}

BOOL sub_1004D5AFC(void *a1)
{
  v2 = sub_1004D5A60();
  if (sub_1004B91A4())
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v2, ObjectType, v4);
    swift_unknownObjectRelease();
    v6 = [a1 objectID];
    v7 = TTRRemindersListTreeViewModel.existingReminderIDs(having:)();

    v8 = *(v7 + 16);

    return v8 == 0;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1004D5BD0(void *a1)
{
  swift_getObjectType();
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
  {
    swift_getObjectType();
    v3 = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.matchesPredicate(_:)();
    swift_unknownObjectRelease();
    if ((v3 & 1) == 0)
    {
LABEL_18:
      v9 = 0;
      return v9 & 1;
    }
  }

  v4 = OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list;
  v5 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (!v5)
  {
LABEL_7:
    if (qword_1007673C0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003E30(v10, qword_100787778);
    sub_10000B0D8(a1, v32);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = 7104878;
      v14 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v14 = 136315394;
      v15 = *(v1 + v4);
      if (v15)
      {
        v16 = [v15 description];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;
      }

      else
      {
        v19 = 0xE300000000000000;
        v17 = 7104878;
      }

      v20 = sub_100004060(v17, v19, &v31);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2080;
      sub_10000C36C(v32, v33);
      dispatch thunk of TTRReminderProtocol.ttrList.getter();
      sub_10000794C(&v29, &v27, &unk_100775680);
      if (v28)
      {
        sub_100005FD0(&v27, v26);
        sub_10000B0D8(v26, &v25);
        sub_100058000(&unk_100787E60);
        v13 = String.init<A>(describing:)();
        v22 = v21;
        sub_100004758(v26);
        sub_1000079B4(&v29, &unk_100775680);
      }

      else
      {
        sub_1000079B4(&v29, &unk_100775680);
        v22 = 0xE300000000000000;
      }

      sub_100004758(v32);
      v23 = sub_100004060(v13, v22, &v31);

      *(v14 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v11, v12, "matchesListPredicate returns false because one of the lists is nil {viewModelSourceList: %s, reminderList: %s}", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100004758(v32);
    }

    goto LABEL_18;
  }

  sub_10000C36C(a1, a1[3]);
  v6 = v5;
  dispatch thunk of TTRReminderProtocol.ttrList.getter();
  if (!v30)
  {

    sub_1000079B4(&v29, &unk_100775680);
    goto LABEL_7;
  }

  sub_100005FD0(&v29, v32);
  sub_100003540(0, &qword_100775690);
  v7 = [v6 objectID];
  sub_10000C36C(v32, v33);
  v8 = dispatch thunk of TTRListProtocol.objectID.getter();
  v9 = static NSObject.== infix(_:_:)();

  sub_100004758(v32);
  return v9 & 1;
}

uint64_t sub_1004D5FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1004D5A60();
  sub_1004B7628(a1, a2, a3);
}

uint64_t sub_1004D6048@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1004D5A60();
  sub_1004B7834(a1, a2);
}

uint64_t sub_1004D609C(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v183 = &v154 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v184 = &v154 - v7;
  v8 = sub_100058000(&qword_100776348);
  v171 = *(v8 - 8);
  __chkstk_darwin(v8);
  v172 = &v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v176 = &v154 - v11;
  __chkstk_darwin(v12);
  v169 = &v154 - v13;
  __chkstk_darwin(v14);
  v174 = &v154 - v15;
  v16 = type metadata accessor for TTRRemindersListViewModel.Item();
  v190 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v154 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = v1;
  v19 = sub_1004D5A60();
  if (!sub_1004B91A4())
  {

    return 0;
  }

  v21 = v20;
  ObjectType = swift_getObjectType();
  (*(v21 + 8))(v19, ObjectType, v21);
  swift_unknownObjectRelease();

  v23 = a1;
  v24 = TTRRemindersListTreeViewModel.moveSteps(forIndentingReminders:canIndentUncommittedReminder:supportsIndentOutdentInSection:)();
  v170 = v25;
  v27 = v26;

  if (!v24)
  {
    return 0;
  }

  v154 = v27;
  v155 = v24;
  v175 = v8;
  v180 = v3;
  v195 = _swiftEmptyArrayStorage;
  v28 = *(v23 + 16);
  v182 = v4;
  if (v28)
  {
    v29 = v190 + 16;
    v190 = *(v190 + 16);
    v30 = v23 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
    v31 = *(v29 + 56);
    v32 = (v29 - 8);
    v189 = _swiftEmptyArrayStorage;
    (v190)(v18, v30, v16);
    while (1)
    {
      v33 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
      (*v32)(v18, v16);
      if (v33)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v195 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v195 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v4 = v182;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v189 = v195;
      }

      v30 += v31;
      if (!--v28)
      {
        break;
      }

      (v190)(v18, v30, v16);
    }
  }

  else
  {
    v189 = _swiftEmptyArrayStorage;
  }

  v35 = sub_10001D5F8(v189);

  swift_getObjectType();
  if (!dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter() || (swift_getObjectType(), v37 = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter(), swift_unknownObjectRelease(), (v37 & 1) == 0))
  {
    v41 = v170;
    v39 = v180;
    v40 = v183;
    v163 = *(v170 + 16);
    if (!v163)
    {
      v178 = 0;
      v38 = _swiftEmptyArrayStorage;
      goto LABEL_65;
    }

    v42 = 0;
    v178 = 0;
    v179 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
    v187 = v35 & 0xC000000000000001;
    v43 = v35 & 0xFFFFFFFFFFFFFF8;
    if (v35 < 0)
    {
      v43 = v35;
    }

    v181 = v43;
    v190 = v35 + 56;
    v38 = _swiftEmptyArrayStorage;
    v186 = (v4 + 8);
    v188 = (v4 + 16);
    v162 = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *&v36 = 138412546;
    v156 = v36;
    while (1)
    {
      if (v42 >= *(v41 + 16))
      {
        goto LABEL_114;
      }

      v177 = v38;
      v167 = (*(v171 + 80) + 32) & ~*(v171 + 80);
      v44 = *(v171 + 72);
      v168 = v42;
      v166 = v44;
      v45 = v41 + v167 + v44 * v42;
      v46 = v174;
      sub_10000794C(v45, v174, &qword_100776348);
      v47 = v175;
      v48 = *(v46 + *(v175 + 48));
      v192 = v48;
      v49 = *(v48 + 16);

      swift_beginAccess();
      v189 = v49;
      if (v49)
      {
        break;
      }

      v52 = *v188;
LABEL_58:
      v95 = v192;
      v96 = *(v47 + 48);
      v97 = v169;
      v52(v169, v174, v39);
      *(v97 + v96) = v95;

      v38 = v177;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_10054847C(0, v38[2] + 1, 1, v38);
      }

      v41 = v170;
      v99 = v38[2];
      v98 = v38[3];
      if (v99 >= v98 >> 1)
      {
        v38 = sub_10054847C(v98 > 1, v99 + 1, 1, v38);
      }

      v42 = &v168->isa + 1;
      v38[2] = v99 + 1;
      sub_1004DD25C(v169, v38 + v167 + v99 * v166);

      sub_1000079B4(v174, &qword_100776348);
      if (v42 == v163)
      {
        goto LABEL_65;
      }
    }

    v50 = 0;
    v51 = v184;
    while (1)
    {
      if (v50 >= *(v48 + 16))
      {
        goto LABEL_112;
      }

      v52 = *(v4 + 16);
      v52(v51, v48 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v50, v39);
      v53 = TTRRemindersListViewModel.ReminderID.objectID.getter();
      v54 = v53;
      if (v187)
      {
        v55 = __CocoaSet.contains(_:)();

        if ((v55 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (!*(v35 + 16))
        {

          goto LABEL_26;
        }

        sub_100003540(0, &qword_10076BA50);
        v61 = NSObject._rawHashValue(seed:)(*(v35 + 40));
        v62 = -1 << *(v35 + 32);
        v63 = v61 & ~v62;
        if (((*(v190 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
        {
LABEL_24:

          v39 = v180;
          v4 = v182;
          v40 = v183;
          goto LABEL_25;
        }

        v64 = ~v62;
        while (1)
        {
          v65 = *(*(v35 + 48) + 8 * v63);
          v66 = static NSObject.== infix(_:_:)();

          if (v66)
          {
            break;
          }

          v63 = (v63 + 1) & v64;
          if (((*(v190 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        v39 = v180;
        v4 = v182;
        v40 = v183;
      }

      v56 = TTRRemindersListViewModel.ReminderID.objectID.getter();
      v57 = v56;
      v58 = *&v179[v185];
      if ((v58 & 0xC000000000000001) != 0)
      {

        v59 = __CocoaDictionary.lookup(_:)();
        if (v59)
        {
          v193 = v59;
          sub_100003540(0, &qword_10076BB00);
          swift_dynamicCast();
          v60 = v194;
LABEL_42:

          v51 = v184;
          if (!v60)
          {
            goto LABEL_26;
          }

          v69 = [v60 subtaskContext];
          if (!v69)
          {

            goto LABEL_26;
          }

          v194 = 0;
          v70 = v69;
          v71 = [v69 fetchObjectIDsOfCompletedSubtasksWithError:&v194];
          v72 = v194;
          v173 = v70;
          if (v71)
          {
            v73 = v71;
            sub_100003540(0, &qword_10076BA50);
            v74 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
            v75 = v72;

            __chkstk_darwin(v76);
            *(&v154 - 2) = &v192;
            v77 = v184;
            *(&v154 - 1) = v184;
            v78 = v178;
            sub_10052B31C(sub_1004DD240, (&v154 - 4), v74);
            v178 = v78;
            v51 = v77;

            v4 = v182;
            v40 = v183;
            goto LABEL_26;
          }

          v79 = v194;
          v80 = _convertNSErrorToError(_:)();

          swift_willThrow();
          if (qword_1007673C0 != -1)
          {
            swift_once();
          }

          v178 = 0;
          v81 = type metadata accessor for Logger();
          sub_100003E30(v81, qword_100787778);
          v82 = v60;
          swift_errorRetain();
          v83 = Logger.logObject.getter();
          v84 = static os_log_type_t.error.getter();

          LODWORD(v161) = v84;
          v164 = v83;
          v85 = os_log_type_enabled(v83, v84);
          v165 = v80;
          v40 = v183;
          if (v85)
          {
            v86 = swift_slowAlloc();
            *&v160 = v82;
            v87 = v86;
            v88 = swift_slowAlloc();
            v158 = v88;
            v159 = swift_slowAlloc();
            v194 = v159;
            *v87 = v156;
            v89 = [v82 objectID];
            v157 = v87;
            *(v87 + 4) = v89;
            *v88 = v89;
            *(v87 + 12) = 2080;
            swift_getErrorValue();
            v90 = Error.rem_errorDescription.getter();
            v91 = v164;
            v93 = sub_100004060(v90, v92, &v194);

            v94 = v157;
            *(v157 + 14) = v93;
            _os_log_impl(&_mh_execute_header, v91, v161, "Failed to fetch objectIDs of completed subtasks of reminder {reminder.objectID: %@, error: %s}", v94, 0x16u);
            sub_1000079B4(v158, &unk_10076DF80);

            sub_100004758(v159);
          }

          else
          {
          }

          goto LABEL_25;
        }
      }

      else
      {
        if (!*(v58 + 16))
        {

          goto LABEL_25;
        }

        v67 = sub_1002613B0(v57);
        if (v68)
        {
          v60 = *(*(v58 + 56) + 8 * v67);
          goto LABEL_42;
        }
      }

LABEL_25:
      v51 = v184;
LABEL_26:
      ++v50;
      (*v186)(v51, v39);
      if (v50 == v189)
      {
        v47 = v175;
        goto LABEL_58;
      }
    }
  }

  v178 = 0;
  v38 = _swiftEmptyArrayStorage;
  v39 = v180;
  v40 = v183;
  v41 = v170;
LABEL_65:
  v167 = *(v41 + 16);
  if (v167)
  {
    v100 = 0;
    v181 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
    v187 = v35 & 0xC000000000000001;
    v101 = v35 & 0xFFFFFFFFFFFFFF8;
    if (v35 < 0)
    {
      v101 = v35;
    }

    v184 = v101;
    v190 = v35 + 56;
    v186 = (v4 + 8);
    v188 = (v4 + 16);
    v166 = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *&v36 = 138412546;
    v160 = v36;
    while (1)
    {
      if (v100 >= *(v41 + 16))
      {
        goto LABEL_113;
      }

      v177 = v38;
      v174 = (*(v171 + 80) + 32) & ~*(v171 + 80);
      v173 = *(v171 + 72);
      v102 = v176;
      sub_10000794C(v41 + v174 + v173 * v100, v176, &qword_100776348);
      v103 = v175;
      v104 = *(v102 + *(v175 + 48));
      v194 = v104;
      v105 = v104[2];

      swift_beginAccess();
      v189 = v105;
      if (v105)
      {
        break;
      }

      v107 = *v188;
LABEL_105:
      v149 = v194;
      v150 = *(v103 + 48);
      v151 = v172;
      v107(v172, v176, v39);
      *(v151 + v150) = v149;

      v38 = v177;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_10054847C(0, v38[2] + 1, 1, v38);
      }

      v41 = v170;
      v153 = v38[2];
      v152 = v38[3];
      if (v153 >= v152 >> 1)
      {
        v38 = sub_10054847C(v152 > 1, v153 + 1, 1, v38);
      }

      ++v100;
      v38[2] = v153 + 1;
      sub_1004DD25C(v172, v38 + v174 + v153 * v173);

      sub_1000079B4(v176, &qword_100776348);
      if (v100 == v167)
      {
        goto LABEL_110;
      }
    }

    v169 = v100;
    v106 = 0;
    while (1)
    {
      if (v106 >= v104[2])
      {
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
      }

      v107 = *(v4 + 16);
      v107(v40, v104 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v106, v39);
      v108 = TTRRemindersListViewModel.ReminderID.objectID.getter();
      v109 = v108;
      if (v187)
      {
        break;
      }

      if (*(v35 + 16))
      {
        sub_100003540(0, &qword_10076BA50);
        v115 = NSObject._rawHashValue(seed:)(*(v35 + 40));
        v116 = -1 << *(v35 + 32);
        v117 = v115 & ~v116;
        if (((*(v190 + ((v117 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v117) & 1) == 0)
        {
LABEL_85:

          v39 = v180;
          v4 = v182;
          goto LABEL_86;
        }

        v118 = ~v116;
        while (1)
        {
          v119 = *(*(v35 + 48) + 8 * v117);
          v120 = static NSObject.== infix(_:_:)();

          if (v120)
          {
            break;
          }

          v117 = (v117 + 1) & v118;
          if (((*(v190 + ((v117 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v117) & 1) == 0)
          {
            goto LABEL_85;
          }
        }

        v39 = v180;
        v4 = v182;
        v40 = v183;
LABEL_77:
        v108 = TTRRemindersListViewModel.ReminderID.objectID.getter();
        v111 = v108;
        v112 = *(v185 + v181);
        if ((v112 & 0xC000000000000001) != 0)
        {

          v113 = __CocoaDictionary.lookup(_:)();
          if (!v113)
          {
            goto LABEL_94;
          }

          v191 = v113;
          sub_100003540(0, &qword_10076BB00);
          swift_dynamicCast();
          v114 = v193;
          goto LABEL_90;
        }

        if (*(v112 + 16))
        {

          v121 = sub_1002613B0(v111);
          if ((v122 & 1) == 0)
          {
LABEL_94:

            goto LABEL_73;
          }

          v114 = *(*(v112 + 56) + 8 * v121);
LABEL_90:

          if (!v114)
          {
            goto LABEL_73;
          }

          v123 = [v114 subtaskContext];
          if (!v123)
          {

            goto LABEL_73;
          }

          v193 = 0;
          v124 = v123;
          v125 = [v123 fetchObjectIDsOfUnsupportedSubtasksWithError:&v193];
          v126 = v193;
          v179 = v124;
          if (v125)
          {
            v127 = v125;
            sub_100003540(0, &qword_10076BA50);
            v128 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
            v129 = v126;

            __chkstk_darwin(v130);
            *(&v154 - 2) = &v194;
            v40 = v183;
            *(&v154 - 1) = v183;
            v131 = v178;
            sub_10052B31C(sub_1004DD354, (&v154 - 4), v128);
            v178 = v131;

            v4 = v182;
            goto LABEL_73;
          }

          v132 = v193;
          v133 = _convertNSErrorToError(_:)();

          swift_willThrow();
          if (qword_1007673C0 != -1)
          {
            swift_once();
          }

          v178 = 0;
          v134 = type metadata accessor for Logger();
          sub_100003E30(v134, qword_100787778);
          v135 = v114;
          swift_errorRetain();
          v136 = v135;
          v137 = Logger.logObject.getter();
          v138 = static os_log_type_t.error.getter();

          v168 = v137;
          if (os_log_type_enabled(v137, v138))
          {
            v139 = swift_slowAlloc();
            LODWORD(v162) = v138;
            v140 = v139;
            v141 = swift_slowAlloc();
            v163 = v133;
            v142 = v141;
            v161 = v141;
            v165 = swift_slowAlloc();
            v193 = v165;
            *v140 = v160;
            v143 = [v136 objectID];
            *(v140 + 4) = v143;
            *v142 = v143;
            *(v140 + 12) = 2080;
            swift_getErrorValue();
            v164 = v136;
            v144 = Error.rem_errorDescription.getter();
            v146 = sub_100004060(v144, v145, &v193);
            v147 = v168;
            v148 = v146;

            *(v140 + 14) = v148;
            _os_log_impl(&_mh_execute_header, v147, v162, "Failed to fetch objectIDs of completed subtasks of reminder {reminder.objectID: %@, error: %s}", v140, 0x16u);
            sub_1000079B4(v161, &unk_10076DF80);

            sub_100004758(v165);
          }

          else
          {
          }

LABEL_86:
          v40 = v183;
          goto LABEL_73;
        }
      }

LABEL_73:
      ++v106;
      (*v186)(v40, v39);
      if (v106 == v189)
      {
        v103 = v175;
        v100 = v169;
        goto LABEL_105;
      }
    }

    v110 = __CocoaSet.contains(_:)();

    if ((v110 & 1) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_77;
  }

LABEL_110:

  return v155;
}

uint64_t sub_1004D773C(id *a1, void **a2)
{
  v4 = sub_100058000(&qword_10076B070);
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  TTRRemindersListViewModel.ReminderID.groupID.getter();
  TTRRemindersListViewModel.ReminderID.init(objectID:groupID:)();
  v10 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_100548688(0, v10[2] + 1, 1, v10);
    *a2 = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_100548688(v12 > 1, v13 + 1, 1, v10);
    *a2 = v10;
  }

  v10[2] = v13 + 1;
  return (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v8, v5);
}

uint64_t sub_1004D7910()
{
  v0 = sub_1004D5A60();
  v2 = sub_1004B91A4();
  if (v2)
  {
    v3 = v1;
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);
    swift_unknownObjectRelease();

    v2 = TTRRemindersListTreeViewModel.moveSteps(forOutdentingReminders:canOutdentUncommittedReminder:supportsIndentOutdentInSection:)();
  }

  else
  {
  }

  return v2;
}

void *sub_1004D7A00()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (v1)
  {
    sub_100003540(0, &qword_1007865E0);
    v2 = v1;
    v1 = static NSUserActivity.forStoringListPayload(for:)();
  }

  return v1;
}

void sub_1004D7A68()
{
  v1 = type metadata accessor for TTRUserActivityListPayload.State();
  v3 = __chkstk_darwin(v1);
  v5 = (&v9[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (v6)
  {
    *v5 = v6;
    (*(v2 + 104))(v5, enum case for TTRUserActivityListPayload.State.list(_:), v3);
    v9[3] = type metadata accessor for TTRUserActivityListPayload();
    v9[4] = &protocol witness table for TTRUserActivityListPayload;
    sub_1000317B8(v9);
    v7 = v6;
    TTRUserActivityListPayload.init(state:)();
    NSUserActivity.setPayload(_:)();

    sub_100004758(v9);
  }
}

uint64_t sub_1004D7B94()
{
  v1 = v0;
  v2 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v13 - 8);
  v15 = &v29 - v14;
  v16 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (!v16)
  {
    return 0;
  }

  v30 = v3;
  v31 = v2;
  sub_100003540(0, &qword_1007865E0);
  v17 = v16;
  v18 = static NSUserActivity.forStoringWindowSceneRestorationPayload()();
  v19 = v1 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v29 = v17;
    v20 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    sub_10056FD04(ObjectType, v20);
    swift_unknownObjectRelease();
    v22 = type metadata accessor for TTRRemindersListViewModel.Item();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v12, 1, v22) == 1)
    {
      sub_1000079B4(v12, &qword_100772140);
      v24 = 1;
    }

    else
    {
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      (*(v23 + 8))(v12, v22);
      v24 = 0;
    }

    v17 = v29;
  }

  else
  {
    v24 = 1;
  }

  v25 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v25 - 8) + 56))(v15, v24, 1, v25);
  v26 = *(sub_100058000(&qword_10076E920) + 48);
  *v5 = [v17 objectID];
  sub_10000794C(v15, v5 + v26, &unk_10076BB50);
  (*(v30 + 104))(v5, enum case for TTRUserActivityWindowSceneRestorationPayload.State.selectedListID(_:), v31);
  TTRUserActivityWindowSceneRestorationPayload.init(state:)();
  v32[3] = v6;
  v32[4] = &protocol witness table for TTRUserActivityWindowSceneRestorationPayload;
  v27 = sub_1000317B8(v32);
  (*(v7 + 16))(v27, v9, v6);
  NSUserActivity.setPayload(_:)();

  (*(v7 + 8))(v9, v6);
  sub_1000079B4(v15, &unk_10076BB50);
  sub_100004758(v32);
  return v18;
}

uint64_t sub_1004D7FD8()
{
  v1 = sub_100058000(&unk_10076DF20);
  __chkstk_darwin(v1 - 8);
  v3 = (&v11 - v2);
  v4 = *(v0 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (v4)
  {
    v5 = v4;
    v6 = REMList.accountCapabilities.getter();
    [v6 supportsSections];

    *v3 = v5;
    v7 = enum case for TTRListOrCustomSmartList.list(_:);
    v8 = type metadata accessor for TTRListOrCustomSmartList();
    v9 = *(v8 - 8);
    (*(v9 + 104))(v3, v7, v8);
    (*(v9 + 56))(v3, 0, 1, v8);
    return TTRRemindersListSectionMenuCapabilities.init(listOrCustomSmartList:canSupportAddSection:)();
  }

  else
  {

    return TTRRemindersListSectionMenuCapabilities.init()();
  }
}

id sub_1004D816C@<X0>(unsigned int *a1@<X1>, uint64_t (*a2)(void)@<X2>, void *a3@<X8>)
{
  v5 = *(v3 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (v5)
  {
    *a3 = v5;
    v6 = *a1;
    v12 = v5;
    v7 = (a2)(0);
    v8 = *(v7 - 8);
    (*(v8 + 104))(a3, v6, v7);
    (*(v8 + 56))(a3, 0, 1, v7);
    v9 = v12;
  }

  else
  {
    v10 = a2();
    (*(*(v10 - 8) + 56))(a3, 1, 1, v10);
    v9 = 0;
  }

  return v9;
}

uint64_t sub_1004D828C()
{
  v1 = OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource____lazy_storage___groceryTipFetchHelper;
  if (*(v0 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource____lazy_storage___groceryTipFetchHelper))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource____lazy_storage___groceryTipFetchHelper);
  }

  else
  {
    v3 = sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_userDefaults), *(v0 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_userDefaults + 24));
    v4 = __chkstk_darwin(v3);
    v6 = (&v19[-1] - v5);
    (*(v7 + 16))(&v19[-1] - v5, v4);
    v8 = *v6;
    v9 = type metadata accessor for TTRUserDefaults();
    v19[3] = v9;
    v19[4] = &off_10072C150;
    v19[0] = v8;
    type metadata accessor for GroceryTipFetchHelper();
    v2 = swift_allocObject();
    v10 = sub_10000AE84(v19, v9);
    v11 = __chkstk_darwin(v10);
    v13 = (&v19[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;
    *(v2 + 64) = v9;
    *(v2 + 72) = &off_10072C150;
    *(v2 + 40) = v15;
    *(v2 + 16) = 2;
    *(v2 + 80) = 0;
    sub_100004758(v19);
    v16 = swift_allocObject();
    swift_weakInit();
    *(v2 + 24) = sub_1004DCFB8;
    *(v2 + 32) = v16;

    sub_1000301AC(0);

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1004D84F0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1004D8548();
  }

  return result;
}

uint64_t sub_1004D8548()
{
  v1 = type metadata accessor for TTRRemindersListTip();
  v65 = *(v1 - 8);
  __chkstk_darwin(v1);
  v67 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRRemindersListTips();
  v68 = *(v3 - 8);
  v69 = v3;
  __chkstk_darwin(v3);
  v66 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for TTRRemindersListTips.TipID();
  v5 = *(v73 - 8);
  __chkstk_darwin(v73);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100787E58);
  __chkstk_darwin(v8 - 8);
  v72 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v60 - v11;
  v13 = type metadata accessor for AnyTip();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v63 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v64 = &v60 - v17;
  v19 = __chkstk_darwin(v18);
  v21 = &v60 - v20;
  v22 = v0;
  v23 = *(sub_1004D828C(v19) + 16);

  if (v23)
  {
    v71 = v13;
    v24 = v22 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    v70 = v1;
    if (Strong)
    {
      v62 = v22;
      v26 = *(v24 + 8);
      ObjectType = swift_getObjectType();
      v28 = *(v5 + 104);
      v61 = enum case for TTRRemindersListTips.TipID.renameSection(_:);
      v29 = v73;
      v60 = v28;
      v28(v7);
      v30 = *(v26 + 128);
      v31 = v26;
      v22 = v62;
      v30(v7, ObjectType, v31);
      swift_unknownObjectRelease();
      v32 = v5;
      (*(v5 + 8))(v7, v29);
      v33 = v14;
      v13 = v71;
      if ((*(v14 + 48))(v12, 1, v71) != 1)
      {
        (*(v14 + 32))(v21, v12, v13);
        v60(v7, v61, v73);
        (*(v14 + 16))(v64, v21, v13);
        v34 = v66;
        TTRRemindersListTips.init(tipID:tip:)();
        v36 = v67;
        v35 = v68;
        v37 = v69;
        (*(v68 + 16))(v67, v34, v69);
        v38 = v65;
        v39 = v70;
        (*(v65 + 104))(v36, enum case for TTRRemindersListTip.tipKit(_:), v70);

        TTRRemindersListCurrentTipCapability.requestShowTip(_:)();

        (*(v38 + 8))(v36, v39);
        (*(v35 + 8))(v34, v37);
        return (*(v33 + 8))(v21, v71);
      }
    }

    else
    {
      v32 = v5;
      v33 = v14;
      v13 = v71;
      (*(v14 + 56))(v12, 1, 1, v71);
    }

    sub_1000079B4(v12, &qword_100787E58);
    v14 = v33;
    v5 = v32;
    v1 = v70;
  }

  v41 = *(*(v22 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource____lazy_storage___groceryTipFetchHelper) + 16);
  if (v41 == 2 || (v41 & 1) != 0)
  {
    goto LABEL_18;
  }

  v43 = v22 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v49 = v72;
    (*(v14 + 56))(v72, 1, 1, v13);
    goto LABEL_17;
  }

  v70 = v1;
  v44 = *(v43 + 8);
  v45 = swift_getObjectType();
  v62 = v14;
  v46 = *(v5 + 104);
  v61 = enum case for TTRRemindersListTips.TipID.convertToGrocery(_:);
  v47 = v73;
  v60 = v46;
  v46(v7);
  v48 = v72;
  (*(v44 + 128))(v7, v45, v44);
  v49 = v48;
  v50 = v62;
  swift_unknownObjectRelease();
  (*(v5 + 8))(v7, v47);
  v51 = v13;
  if ((*(v50 + 48))(v49, 1, v13) == 1)
  {
LABEL_17:
    sub_1000079B4(v49, &qword_100787E58);
LABEL_18:

    TTRRemindersListCurrentTipCapability.requestDismissTip()();
  }

  v52 = *(v50 + 32);
  v53 = v63;
  v71 = v51;
  v52(v63, v49, v51);
  v60(v7, v61, v47);
  (*(v50 + 16))(v64, v53, v51);
  v54 = v66;
  TTRRemindersListTips.init(tipID:tip:)();
  v56 = v67;
  v55 = v68;
  v57 = v69;
  (*(v68 + 16))(v67, v54, v69);
  v58 = v65;
  v59 = v70;
  (*(v65 + 104))(v56, enum case for TTRRemindersListTip.tipKit(_:), v70);

  TTRRemindersListCurrentTipCapability.requestShowTip(_:)();

  (*(v58 + 8))(v56, v59);
  (*(v55 + 8))(v54, v57);
  return (*(v50 + 8))(v53, v71);
}

uint64_t sub_1004D8D44@<X0>(uint64_t a1@<X8>)
{
  v93 = a1;
  v2 = type metadata accessor for TTRRemindersListViewModel.ListInfo.MacOS();
  __chkstk_darwin(v2 - 8);
  v4 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.ListInfo.IOS();
  __chkstk_darwin(v5 - 8);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_1007693B0);
  __chkstk_darwin(v8 - 8);
  v96 = &v73 - v9;
  v10 = sub_100058000(&qword_1007693B8);
  __chkstk_darwin(v10 - 8);
  v95 = &v73 - v11;
  v12 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v91 = *(v12 - 8);
  v92 = v12;
  __chkstk_darwin(v12);
  v97 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&unk_10076DF20);
  __chkstk_darwin(v14 - 8);
  v16 = (&v73 - v15);
  v17 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v89 = *(v17 - 8);
  v90 = v17;
  __chkstk_darwin(v17);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100058000(&unk_100780980);
  __chkstk_darwin(v20 - 8);
  v94 = &v73 - v21;
  v22 = sub_100058000(&unk_100775640);
  __chkstk_darwin(v22 - 8);
  v24 = &v73 - v23;
  v25 = type metadata accessor for TTRListColors.Color();
  __chkstk_darwin(v25);
  v29 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list;
  v31 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (v31)
  {
    v32 = v1;
    v85 = v27;
    v86 = v26;
    v87 = v7;
    v88 = v4;
    type metadata accessor for TTRListColors();
    v98[3] = sub_100003540(0, &qword_10076ABC0);
    v98[4] = &protocol witness table for REMList;
    v98[0] = v31;
    v33 = v24;
    v34 = v31;
    static TTRListColors.color(for:)();
    sub_1000079B4(v98, &unk_100775680);
    v35 = REMList.accountCapabilities.getter();
    v75 = [v35 supportsSections];

    v36 = [v34 objectID];
    v37 = [v34 isGroup];
    *v33 = v36;
    v33[8] = v37;
    v38 = enum case for TTRListType.list(_:);
    v39 = type metadata accessor for TTRListType();
    v40 = *(v39 - 8);
    (*(v40 + 104))(v33, v38, v39);
    v41 = *(v40 + 56);
    v84 = v33;
    v41(v33, 0, 1, v39);
    v42 = [v34 displayName];
    v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v43;

    v83 = v29;
    v80 = TTRListColors.Color.nativeColor.getter();
    v44 = 0;
    v78 = *(v32 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_remindersCount + 16);
    if ((v78 & 1) == 0)
    {
      v44 = *(v32 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_remindersCount + 8);
    }

    v74 = (v32 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_remindersCount);
    v79 = v44;
    type metadata accessor for TTRRemindersListViewModel();
    v45 = v94;
    static TTRRemindersListViewModel.makeListSharingInfo(_:)();
    v46 = type metadata accessor for TTRRemindersListViewModel.ListSharingInfo();
    (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
    swift_getObjectType();
    v47 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter();
    if (v47)
    {
      swift_unknownObjectRelease();
    }

    v77 = v47;
    v48 = *(v32 + v30);
    v49 = v97;
    if (v48)
    {
      v50 = v48;
      v51 = REMList.accountCapabilities.getter();
      [v51 supportsSections];

      *v16 = v50;
      v52 = enum case for TTRListOrCustomSmartList.list(_:);
      v53 = type metadata accessor for TTRListOrCustomSmartList();
      v54 = *(v53 - 8);
      (*(v54 + 104))(v16, v52, v53);
      (*(v54 + 56))(v16, 0, 1, v53);
      v49 = v97;
      TTRRemindersListSectionMenuCapabilities.init(listOrCustomSmartList:canSupportAddSection:)();
    }

    else
    {
      TTRRemindersListSectionMenuCapabilities.init()();
    }

    v76 = TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
    (*(v89 + 8))(v19, v90);
    if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.deleteCompletedContext.getter())
    {
      swift_unknownObjectRelease();
    }

    if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.templateContext.getter())
    {
      swift_unknownObjectRelease();
    }

    v60 = &enum case for TTRRemindersListViewModel.SupportsEditableSections.firstLevel(_:);
    if (!v75)
    {
      v60 = &enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:);
    }

    (*(v91 + 104))(v49, *v60, v92);
    dispatch thunk of TTRRemindersListDataModelSourceBaseType.printingDataModelSource.getter();
    sub_1000079B4(v98, &qword_1007693C0);
    if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
    {
      swift_getObjectType();
      LODWORD(v92) = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter();
      swift_unknownObjectRelease();
    }

    else
    {
      LODWORD(v92) = 0;
    }

    if (v74[2])
    {
      v91 = 0;
    }

    else
    {
      v91 = *v74;
    }

    v61 = [v34 objectID];
    v62 = [v61 stringRepresentation];

    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v64;
    v90 = v63;

    v65 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
    (*(*(v65 - 8) + 56))(v95, 1, 1, v65);
    v66 = type metadata accessor for TTRTemplatePublicLinkData();
    (*(*(v66 - 8) + 56))(v96, 1, 1, v66);
    v75 = [v34 isOriginOfExistingTemplate];
    v67 = [v34 groceryContext];
    if (v67)
    {
      v68 = v67;
      [v67 shouldCategorizeGroceryItems];
    }

    v69 = REMList.autoCategorizationContext.getter();
    if (v69)
    {
      v70 = v69;
      [v69 shouldAutoCategorizeItems];
    }

    TTRRemindersListViewModel.ListInfo.IOS.init(showsActionMenuButton:hasBottomInsetForPencilInput:usesFlatDiffableSnapshot_workaroundRdar135908527:)();
    TTRRemindersListViewModel.ListInfo.MacOS.init(wantsTopShadow:)();
    v71 = v93;
    TTRRemindersListViewModel.ListInfo.init(listType:name:color:reminderCount:sharingInfo:canCreateNewReminder:canToggleCompletedReminderVisbility:canAddSection:canClearCompletedReminders:canSaveAsTemplate:supportsEditableSections:canBePrinted:completedRemindersShown:hasDefaultNewReminderButton:completedRemindersCount:canBeDeleted:collapsedStatesAutosaveName:canCreateCustomSmartListForHashtagsState:hashtagsStateToShow:templateStatus:isOriginOfExistingTemplate:isPublicTemplatePreview:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:isRecentlyDeletedList:iOS:macOS:)();

    (*(v85 + 8))(v83, v86);
    v72 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    return (*(*(v72 - 8) + 56))(v71, 0, 1, v72);
  }

  else
  {
    v55 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    v56 = *(*(v55 - 8) + 56);
    v57 = v55;
    v58 = v93;

    return v56(v58, 1, 1, v57);
  }
}

uint64_t sub_1004D989C()
{

  sub_100004758(v0 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_userDefaults);
}

uint64_t sub_1004D990C()
{
  v0 = sub_10056FD38();

  sub_100004758(v0 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_userDefaults);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRShowRemindersInListViewModelSource()
{
  result = qword_1007877F8;
  if (!qword_1007877F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004D9A98(void *a1)
{
  v2 = v1;
  v45 = *v1;
  v4 = type metadata accessor for REMAnalyticsEvent();
  v46 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10078A380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v43 - v9;
  v11 = [a1 objectID];
  v12 = OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list;
  v13 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (v13)
  {
    v14 = [v13 objectID];
    v15 = v14;
    if (v11)
    {
      if (v14)
      {
        sub_100003540(0, &qword_10076BA50);
        v16 = static NSObject.== infix(_:_:)();

LABEL_9:
        v11 = v15;
        goto LABEL_10;
      }

LABEL_6:
      v16 = 0;
LABEL_10:

      goto LABEL_12;
    }

    if (v14)
    {
      v16 = 0;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    goto LABEL_6;
  }

  v16 = 1;
LABEL_12:
  v17 = [a1 appearanceContext];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 showingLargeAttachments];

    *(v2 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_showLargeAttachmentsValue) = v19;
  }

  v20 = *(v2 + v12);
  *(v2 + v12) = a1;

  v21 = a1;
  sub_1004D8D44(v10);
  sub_10056F540(v10);
  if ((v16 & 1) == 0)
  {
    sub_1004D828C();
    sub_1004D9F20(v21);

    v22 = v2 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v23 = *(v22 + 1);
      ObjectType = swift_getObjectType();
      (*(v23 + 88))(1, ObjectType, v23);
      swift_unknownObjectRelease();
    }

    type metadata accessor for TTRUserDefaults();
    v25 = static TTRUserDefaults.appUserDefaults.getter();
    v26 = [v21 groceryContext];
    v43 = v10;
    v44 = v4;
    if (v26)
    {
      v27 = v26;
      v28 = [v26 shouldCategorizeGroceryItems];
    }

    else
    {
      v28 = 0;
    }

    type metadata accessor for REMAnalyticsManager();
    static REMAnalyticsManager.shared.getter();
    v29 = sub_100058000(&qword_100770980);
    v30 = &v6[*(v29 + 48)];
    v31 = &v6[*(v29 + 80)];
    v32 = [v21 isShared];
    *v6 = v28;
    v6[1] = v32;
    v33 = enum case for REMRemindersOpenUserOperation.list(_:);
    v34 = type metadata accessor for REMRemindersOpenUserOperation();
    (*(*(v34 - 8) + 104))(v6, v33, v34);
    *v30 = TTRUserDefaults.activitySessionId.getter();
    v30[1] = v35;
    TTRUserDefaults.activitySessionBeginTime.getter();
    *v31 = _typeName(_:qualified:)();
    v31[1] = v36;
    v37 = v46;
    v38 = v44;
    (*(v46 + 104))(v6, enum case for REMAnalyticsEvent.openListUserOperation(_:), v44);
    REMAnalyticsManager.post(event:)();

    (*(v37 + 8))(v6, v38);
    v10 = v43;
  }

  v39 = v2 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v40 = *(v39 + 1);
    v41 = swift_getObjectType();
    (*(v40 + 104))(v41, v40);
    swift_unknownObjectRelease();
  }

  return sub_1000079B4(v10, &unk_10078A380);
}

uint64_t sub_1004D9F20(void *a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  if (*(v2 + 80))
  {

    Task.cancel()();
  }

  *(v2 + 80) = 0;

  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v9 = a1;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v8;
  v11[5] = v9;

  *(v2 + 80) = sub_10009E31C(0, 0, v6, &unk_1006435B0, v11);
}

void sub_1004DA0E4(id a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v50 = a3;
  v61 = a2;
  v6 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v51 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRTipKitDataModelSourceContextKeyCondition();
  v56 = *(v9 - 8);
  v57 = v9;
  __chkstk_darwin(v9);
  v55 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v59 = *(v11 - 8);
  v60 = v11;
  __chkstk_darwin(v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&qword_100769378);
  __chkstk_darwin(v14 - 8);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v50 - v19;
  v21 = OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list;
  v22 = *(v3 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  v52 = v7;
  v58 = a1;
  if (!v22)
  {
    if (!a1)
    {
      v25 = 1;
      v54 = 1;
      v26 = v59;
      goto LABEL_23;
    }

    v24 = 0;
LABEL_7:
    v27 = [a1 sortingStyle];
    v28 = v27;
    if (v24)
    {
      if (v27)
      {
        v53 = v6;
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;
        if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
        {
          v54 = 1;
        }

        else
        {
          v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v6 = v53;
        a1 = v58;
      }

      else
      {
        v54 = 0;
        v28 = v24;
      }
    }

    else
    {
      if (!v27)
      {
        v54 = 1;
        goto LABEL_19;
      }

      v54 = 0;
    }

LABEL_19:
    v33 = *(v4 + v21);
    *(v4 + v21) = a1;
    v24 = a1;

    v34 = v4 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    v26 = v59;
    if (Strong)
    {
      v36 = *(v34 + 8);
      ObjectType = swift_getObjectType();
      (*(v36 + 104))(ObjectType, v36);
      swift_unknownObjectRelease();
    }

    v25 = 0;
    goto LABEL_22;
  }

  v23 = [v22 sortingStyle];
  v24 = v23;
  if (a1)
  {
    goto LABEL_7;
  }

  v25 = 1;
  if (v23)
  {
    v54 = 0;
    v26 = v59;
LABEL_22:

    goto LABEL_23;
  }

  v54 = 1;
  v26 = v59;
LABEL_23:
  REMRemindersListDataView.SectionsModel.remindersCount.getter();
  sub_10000794C(v20, v16, &qword_100769378);
  v38 = v60;
  v39 = (*(v26 + 48))(v16, 1, v60);
  if (v39 == 1)
  {
    v40 = 0;
    v41 = 0;
  }

  else
  {
    (*(v26 + 32))(v13, v16, v38);
    v53 = v6;
    v42 = v38;
    v40 = REMRemindersListDataView.CountByCompleted.completed.getter();
    v41 = REMRemindersListDataView.CountByCompleted.incomplete.getter();
    v43 = v42;
    v6 = v53;
    (*(v26 + 8))(v13, v43);
  }

  sub_1000079B4(v20, &qword_100769378);
  v44 = v4 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_remindersCount;
  *v44 = v40;
  *(v44 + 8) = v41;
  *(v44 + 16) = v39 == 1;
  *(v4 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_hasIncompleteOrCompletedReminders) = REMRemindersListDataView.SectionsModel.hasIncompleteOrCompletedReminders.getter();
  swift_getObjectType();
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.tipKitContext.getter())
  {
    swift_getObjectType();
    (*(v56 + 104))(v55, enum case for TTRTipKitDataModelSourceContextKeyCondition.unknown(_:), v57);
    dispatch thunk of TTRRemindersListDataModelSourceTipKitContextType.thisListHasCompletedReminders.setter();
    swift_unknownObjectRelease();
  }

  if ((v25 & 1) == 0)
  {
    v45 = v58;
    v46 = v45;
    if (v54)
    {
      v47 = REMRemindersListDataView.SectionsModel.sections.getter();
      sub_1004DA6CC(v47, v50);
    }

    else
    {
      v48 = [v45 sortingStyle];
      v49 = v51;
      REMSortingStyle.dataViewSortingStyle.getter();

      sub_10057A85C();
      (*(v52 + 8))(v49, v6);
    }
  }
}

void sub_1004DA6CC(uint64_t a1, uint64_t a2)
{
  v115 = a2;
  v187 = a1;
  v3 = sub_100058000(&unk_10076B050);
  __chkstk_darwin(v3 - 8);
  v163 = &v114 - v4;
  v174 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v185 = *(v174 - 8);
  __chkstk_darwin(v174);
  v173 = (&v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v172 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextSize();
  v184 = *(v172 - 8);
  __chkstk_darwin(v172);
  v171 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor();
  v183 = *(v170 - 8);
  __chkstk_darwin(v170);
  v169 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle();
  v141 = *(v168 - 8);
  __chkstk_darwin(v168);
  v167 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_10076B060);
  __chkstk_darwin(v9 - 8);
  v166 = &v114 - v10;
  v165 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v133 = *(v165 - 8);
  __chkstk_darwin(v165);
  v164 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v132 = *(v181 - 8);
  __chkstk_darwin(v181);
  v127 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v162 = &v114 - v14;
  v15 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v131 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = (&v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v186 = type metadata accessor for TTRListColors.Color();
  v130 = *(v186 - 8);
  __chkstk_darwin(v186);
  v180 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v129 = *(v161 - 8);
  __chkstk_darwin(v161);
  v160 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v159 = &v114 - v21;
  v158 = sub_100058000(&qword_10076E8D8);
  __chkstk_darwin(v158);
  v23 = (&v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v157 = &v114 - v25;
  v156 = type metadata accessor for TTRRemindersListTreeViewModel.Section();
  v179 = *(v156 - 8);
  __chkstk_darwin(v156);
  v155 = &v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v27 - 8);
  v114 = &v114 - v28;
  v154 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v30 = &v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v114 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v35 - 8);
  v37 = &v114 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v114 - v39;
  v41 = *(v2 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (!v41)
  {
    return;
  }

  v178 = v41;
  v117 = v40;
  sub_1004D8D44(v40);
  v42 = v187;

  v116 = v2;
  v43 = sub_1004DC054();
  v177 = v15;
  v176 = v17;
  v175 = v23;
  if (v43)
  {
    v44 = v43[2];
    v45 = v187;
    v42 = v187;
    if (v44)
    {
      v46 = v43 + 4;
      do
      {
        v47 = sub_10000C36C(v46, v46[3]);
        sub_1003216A4(v45, *v47);
        v42 = v48;

        v46 += 5;
        v45 = v42;
        --v44;
      }

      while (v44);
    }

    v15 = v177;
    v17 = v176;
    v23 = v175;
  }

  v182 = v42;
  sub_10000794C(v117, v37, &unk_10078A380);
  if ((*(v32 + 48))(v37, 1, v31) == 1)
  {
    sub_1000079B4(v37, &unk_10078A380);
  }

  else
  {
    (*(v32 + 32))(v34, v37, v31);
    TTRRemindersListViewModel.ListInfo.supportsEditableSections.getter();
    v49 = (*(v153 + 88))(v30, v154);
    v50 = v116;
    if (v49 != enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:))
    {
      if (v49 == enum case for TTRRemindersListViewModel.SupportsEditableSections.firstLevel(_:))
      {
        (*(v32 + 8))(v34, v31);
        v51 = OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_sectionsContextInstance;
        v52 = *(v50 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_sectionsContextInstance);
        if (v52)
        {
          swift_beginAccess();
          v53 = *(v52 + 40);
          v54 = sub_100003540(0, &qword_10076E8E8);
        }

        else
        {
          v54 = sub_100003540(0, &qword_10076E8E8);
          v53 = &_swiftEmptySetSingleton;
        }

        v55 = v180;
        type metadata accessor for TTRRemindersListViewModelSourceSectionsContext();
        v107 = swift_allocObject();
        *(v107 + 64) = 0;
        *(v107 + 24) = 0;
        *(v107 + 32) = 0;
        *(v107 + 16) = 0;
        swift_unknownObjectWeakInit();
        *(v107 + 128) = 0u;
        *(v107 + 144) = 0u;
        *(v107 + 96) = 0u;
        *(v107 + 112) = 0u;
        *(v107 + 64) = &off_10072ED30;
        v108 = v116;
        swift_unknownObjectWeakAssign();
        *(v107 + 88) = v54;
        v109 = v182;
        *(v107 + 72) = v187;
        *(v107 + 80) = v109;
        *(v107 + 40) = v53;
        *(v107 + 48) = 1;
        *(v108 + v51) = v107;

        v15 = v177;
        v17 = v176;
        v23 = v175;
        goto LABEL_16;
      }

      if (v49 != enum case for TTRRemindersListViewModel.SupportsEditableSections.secondLevel(_:))
      {
        goto LABEL_40;
      }
    }

    (*(v32 + 8))(v34, v31);
    *(v50 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_sectionsContextInstance) = 0;
  }

  v55 = v180;
LABEL_16:
  v126 = static TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidthOrHiddenForFirstSection.getter();
  v128 = v56;
  v57 = v182;
  v58 = *(v182 + 16);
  v59 = _swiftEmptyArrayStorage;
  if (v58)
  {
    *&v188 = _swiftEmptyArrayStorage;

    v153 = v58;
    sub_1004A22E0(0, v58, 0);
    v154 = *(v57 + 16);
    v152 = type metadata accessor for REMRemindersListDataView.SectionLite();
    v60 = *(v152 - 8);
    v150 = v57 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
    v59 = v188;
    v149 = type metadata accessor for TTRListColors();
    v61 = 0;
    v148 = v60 + 16;
    v151 = v60;
    v147 = v60 + 32;
    v146 = (v131 + 11);
    v145 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectioned(_:);
    v125 = (v132 + 13);
    v144 = (v130 + 2);
    v124 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:);
    v123 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidth(_:);
    v143 = (v130 + 7);
    v142 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle.plain(_:);
    v141 += 13;
    v140 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.regular(_:);
    v139 = v183 + 104;
    v138 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.regular(_:);
    v137 = (v184 + 104);
    v136 = (v185 + 13);
    v135 = (v133 + 2);
    v134 = (v133 + 7);
    ++v133;
    v122 = (v131 + 12);
    v121 = v132 + 2;
    v120 = (v132 + 1);
    v132 = (v129 + 16);
    v131 = v130 + 1;
    v119 = enum case for TTRRemindersListViewModel.SectionID.sectionless(_:);
    v130 = (v129 + 8);
    v118 = enum case for TTRRemindersListViewModel.SectionID.objectID(_:);
    v129 = v179 + 32;
    do
    {
      if (v154 == v61)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        if (qword_1007673C0 != -1)
        {
          swift_once();
        }

        v110 = type metadata accessor for Logger();
        sub_100003E30(v110, qword_100787778);
        sub_100008E04(_swiftEmptyArrayStorage);
        sub_100008E04(_swiftEmptyArrayStorage);
        v111 = "Unknown type in dataModelSection.type";
        for (i = 37; ; i = 60)
        {
          sub_1003F9818(v111, i, 2);
          __break(1u);
LABEL_40:
          if (qword_1007673C0 != -1)
          {
            swift_once();
          }

          v113 = type metadata accessor for Logger();
          sub_100003E30(v113, qword_100787778);
          sub_100008E04(_swiftEmptyArrayStorage);
          sub_100008E04(_swiftEmptyArrayStorage);
        }
      }

      if (v61 >= *(v182 + 16))
      {
        goto LABEL_35;
      }

      v185 = v59;
      v62 = v158;
      v63 = *(v158 + 48);
      v64 = v15;
      v65 = v55;
      v66 = v151;
      v67 = v157;
      v68 = v152;
      (*(v151 + 16))(&v157[v63], v150 + *(v151 + 72) * v61, v152);
      *v23 = v61;
      v187 = v61;
      v69 = v17;
      v70 = *(v62 + 48);
      (*(v66 + 32))(v23 + v70, &v67[v63], v68);
      v190 = sub_100003540(0, &qword_10076ABC0);
      v191 = &protocol witness table for REMList;
      v189 = v178;
      v71 = v178;
      static TTRListColors.color(for:)();
      sub_1000079B4(&v189, &unk_100775680);
      v184 = v70;
      REMRemindersListDataView.SectionLite.type.getter();
      v72 = (*v146)(v69, v64);
      v183 = v71;
      if (v72 == v145)
      {
        (*v122)(v69, v64);
        v73 = *v69;

        v74 = v162;
        v126(v187);
        (*v121)(v127, v74, v181);
        v75 = v166;
        v76 = v186;
        (*v144)(v166, v65, v186);
        (*v143)(v75, 0, 1, v76);
        (*v141)(v167, v142, v168);
        (*v139)(v169, v140, v170);
        (*v137)(v171, v138, v172);
        v77 = v164;
        v78 = v163;
        v79 = v174;
        TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
        v80 = v173;
        *v173 = v73;
        (*v136)(v80, v118, v79);
        v81 = v165;
        (*v135)(v78, v77, v165);
        (*v134)(v78, 0, 1, v81);
        v82 = v73;
        v83 = [v183 objectID];
        v84 = v159;
        TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();

        (*v133)(v77, v81);
        (*v120)(v74, v181);
        v85 = v187;
      }

      else
      {
        v85 = v187;
        if (v72 != v124)
        {
          goto LABEL_36;
        }

        v86 = [v71 groceryContext];
        if (v86)
        {
          v87 = v86;
          [v86 shouldCategorizeGroceryItems];
        }

        (*v125)(v162, v123, v181);
        v88 = v166;
        v89 = v186;
        (*v144)(v166, v65, v186);
        (*v143)(v88, 0, 1, v89);
        (*v141)(v167, v142, v168);
        (*v139)(v169, v140, v170);
        (*v137)(v171, v138, v172);
        v90 = v164;
        TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
        v91 = v183;
        v92 = [v183 objectID];
        v93 = v173;
        *v173 = v92;
        (*v136)(v93, v119, v174);
        v94 = v163;
        v95 = v165;
        (*v135)(v163, v90, v165);
        (*v134)(v94, 0, 1, v95);
        v96 = [v91 objectID];
        v84 = v159;
        TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
        (*v133)(v90, v95);
      }

      v97 = v161;
      (*v132)(v160, v84, v161);
      v23 = v175;
      REMRemindersListDataView.SectionLite.reminders.getter();
      v98 = v155;
      TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
      v55 = v180;
      (*v131)(v180, v186);
      (*v130)(v84, v97);
      sub_1000079B4(v23, &qword_10076E8D8);
      v59 = v185;
      *&v188 = v185;
      v100 = v185[2];
      v99 = v185[3];
      if (v100 >= v99 >> 1)
      {
        sub_1004A22E0(v99 > 1, v100 + 1, 1);
        v59 = v188;
      }

      v61 = v85 + 1;
      v59[2] = v100 + 1;
      (*(v179 + 32))(v59 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v100, v98, v156);
      v15 = v177;
      v17 = v176;
    }

    while (v153 != v61);
  }

  v101 = type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
  v102 = static TTRRemindersListReminderIDProviding<>.uniqueWithinTree.getter();
  v103 = type metadata accessor for TTRRemindersListViewModel.Item();
  v104 = v114;
  (*(*(v103 - 8) + 56))(v114, 1, 1, v103);
  v190 = v101;
  v191 = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
  v189 = v102;
  sub_10000B0D8(&v189, &v188);
  v105 = swift_allocObject();
  *(v105 + 16) = v59;
  sub_100005FD0(&v188, v105 + 24);
  *(v105 + 64) = v116;

  v106 = v117;
  sub_100586238(1, v117, sub_100070528, v105, v115, 0, v104);

  sub_1000079B4(v104, &qword_100772140);
  sub_1000079B4(v106, &unk_10078A380);

  sub_100004758(&v189);
}

void *sub_1004DC054()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (!v1)
  {
    return 0;
  }

  v2 = v0;
  v3 = v1;
  v4 = [v3 groceryContext];
  if ((!v4 || (v5 = v4, v6 = [v4 shouldCategorizeGroceryItems], v5, (v6 & 1) == 0)) && ((v7 = REMList.autoCategorizationContext.getter()) == 0 || (v8 = v7, v9 = objc_msgSend(v7, "shouldAutoCategorizeItems"), v8, (v9 & 1) == 0)) || (sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_userDefaults), *(v2 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_userDefaults + 24)), v10 = objc_msgSend(v3, "objectID"), v11 = TTRUserDefaults.shouldHideEmptySectionsInGroceryOrAutoCategorizingList(with:)(), v10, (v11 & 1) == 0))
  {

    result = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
      return result;
    }

    goto LABEL_15;
  }

  if (*(v2 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_sectionsContextInstance))
  {
    swift_beginAccess();
  }

  else
  {
    v12 = 0;
  }

  v28[3] = &type metadata for TTRRemoveEmptySectionFilter;
  v28[4] = &off_1007206D0;
  v28[0] = v12;
  v14 = sub_1005486B0(0, 1, 1, _swiftEmptyArrayStorage);
  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1005486B0((v15 > 1), v16 + 1, 1, v14);
  }

  v17 = v14;

  v18 = sub_10000AE84(v28, &type metadata for TTRRemoveEmptySectionFilter);
  v19 = __chkstk_darwin(v18);
  v21 = (&v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21, v19);
  v23 = *v21;
  v26 = &type metadata for TTRRemoveEmptySectionFilter;
  v27 = &off_1007206D0;
  *&v25 = v23;
  v17[2] = v16 + 1;
  sub_100005FD0(&v25, &v17[5 * v16 + 4]);
  sub_100004758(v28);
  result = v17;
  if (!v17[2])
  {
LABEL_15:

    return 0;
  }

  return result;
}

uint64_t sub_1004DC2E8@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(v2 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_sectionsContextInstance);
  if (v4 && swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v4 + 64);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);

    v8(ObjectType, v6);
    swift_unknownObjectRelease();
    v9 = a1;
    TTRSection.init(with:store:)();
  }

  else
  {
    v11 = type metadata accessor for TTRSection();
    v12 = *(*(v11 - 8) + 56);

    return v12(a2, 1, 1, v11);
  }
}

void sub_1004DC408()
{
  v1 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  v8 = type metadata accessor for TTRListType.SortingCapability();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_sortingCapability;
  swift_beginAccess();
  (*(v9 + 16))(v11, v0 + v12, v8);
  v13 = (*(v9 + 88))(v11, v8);
  if (v13 == enum case for TTRListType.SortingCapability.notSupported(_:))
  {
    (*(v9 + 96))(v11, v8);
    (*(v2 + 32))(v7, v11, v1);
    (*(v2 + 104))(v4, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v1);
    static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
    v14 = *(v2 + 8);
    v14(v4, v1);
    v14(v7, v1);
  }

  else if (v13 == enum case for TTRListType.SortingCapability.supported(_:))
  {
    (*(v9 + 96))(v11, v8);
  }

  else
  {
    if (qword_1007673C0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003E30(v15, qword_100787778);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("unsupported sorting capability", 30, 2);
    __break(1u);
  }
}

id sub_1004DC728@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (v2)
  {
    v3 = &off_100714578;
    v4 = &type metadata for TTRShowRemindersInListDragAndDropREMListTarget;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v2;
  a1[3] = v4;
  a1[4] = v3;
  return v2;
}

uint64_t sub_1004DC768(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_sectionsContextInstance))
  {
    return 0;
  }

  v4 = sub_1002E28FC(a2);

  return v4;
}

uint64_t sub_1004DC7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  sub_100058000(&qword_10076BE10);
  v5[27] = swift_task_alloc();
  v5[28] = type metadata accessor for MainActor();
  v5[29] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004DC898, v7, v6);
}

uint64_t sub_1004DC898()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_20;
  }

  v2 = Strong;
  sub_10000C36C((Strong + 40), *(Strong + 64));
  if ((TTRUserDefaults.hasCreatedGroceryList.getter() & 1) == 0)
  {
    sub_10000C36C((v2 + 40), *(v2 + 64));
    if (TTRUserDefaults.groceryTipDismissed.getter())
    {
      goto LABEL_16;
    }

    REMList.ttrGroceryContext.getter();
    if (*(v0 + 80))
    {
      sub_100005FD0((v0 + 56), v0 + 16);
      sub_10000C36C((v0 + 16), *(v0 + 40));
      ShouldSuggestConversionToGrocery = dispatch thunk of TTRListGroceryContextProtocol.ttrShouldSuggestConversionToGroceryList.getter();
      sub_100004758(v0 + 16);
      if (ShouldSuggestConversionToGrocery)
      {
        v6 = 0;
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v8 = v0 + 56;
LABEL_15:
    sub_1000079B4(v8, &qword_1007757E0);
    goto LABEL_16;
  }

  REMList.ttrGroceryContext.getter();
  if (!*(v0 + 160))
  {
    v8 = v0 + 136;
    goto LABEL_15;
  }

  sub_100005FD0((v0 + 136), v0 + 96);
  sub_10000C36C((v0 + 96), *(v0 + 120));
  if ((dispatch thunk of TTRListGroceryContextProtocol.ttrShouldCategorizeGroceryItems.getter() & 1) == 0 || (v3 = [*(v0 + 208) sectionContext]) == 0)
  {
    sub_100004758(v0 + 96);
    goto LABEL_16;
  }

  v4 = v3;
  v5 = [v3 hasSections];

  sub_100004758(v0 + 96);
  if ((v5 & 1) == 0)
  {
LABEL_16:
    v6 = 2;
    goto LABEL_17;
  }

  v6 = 1;
LABEL_17:
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    v9 = *(v0 + 216);
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = swift_allocObject();
    swift_weakInit();

    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = &protocol witness table for MainActor;
    *(v13 + 32) = v11;
    *(v13 + 40) = v6;

    sub_10009EF3C(0, 0, v9, &unk_1006435C8, v13);
  }

LABEL_20:

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1004DCB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  type metadata accessor for MainActor();
  *(v5 + 56) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004DCC10, v7, v6);
}

uint64_t sub_1004DCC10()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    v3 = *(Strong + 16);
    v4 = *(v0 + 64);
    if (v3 == 2)
    {
      if (v4 == 2)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else if (v4 != 2 && ((v4 ^ v3) & 1) == 0)
    {
      goto LABEL_9;
    }

    *(Strong + 16) = v4;
    v5 = *(Strong + 24);
    if (v5)
    {

      v5(v6);

      sub_1000301AC(v5);
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_10:
  **(v0 + 40) = v2 == 0;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1004DCD18()
{
  sub_1000301AC(*(v0 + 24));
  sub_100004758(v0 + 40);

  return swift_deallocClassInstance();
}

unint64_t sub_1004DCD98()
{
  result = qword_100787E48;
  if (!qword_100787E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787E48);
  }

  return result;
}

uint64_t sub_1004DCE34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001AA3C;

  return sub_1004DC7C4(a1, v4, v5, v7, v6);
}

uint64_t sub_1004DCEF4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001AA38;

  return sub_1004DCB74(a1, v4, v5, v6, v7);
}

uint64_t sub_1004DCFC0()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    v11 = TTRRemindersListViewModel.ReminderID.objectID.getter();
    v12 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
    swift_beginAccess();
    v13 = *(v1 + v12);

    v14 = sub_10013F404(v11, v13);

    (*(v3 + 8))(v5, v2);
    return v14;
  }

  if (v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) || v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
  {
    (*(v7 + 8))(v9, v6);
  }

  else if (v10 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  return 0;
}

uint64_t sub_1004DD25C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100776348);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004DD2CC(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1004DD370()
{
  v1 = OBJC_IVAR____TtC9Reminders29TTRIBoardColumnCollectionView____lazy_storage___insetsUpdater;
  if (*(v0 + OBJC_IVAR____TtC9Reminders29TTRIBoardColumnCollectionView____lazy_storage___insetsUpdater))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders29TTRIBoardColumnCollectionView____lazy_storage___insetsUpdater);
  }

  else
  {
    type metadata accessor for TTRIShowRemindersScrollViewInsetsUpdater();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v2[5] = 2;
    v2[6] = 0;
    v2[7] = 0;
    v2[8] = 0;
    swift_unknownObjectWeakAssign();
    v2[3] = sub_100290088;
    v2[4] = 0;
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_1004DD41C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_1004DD754();
  sub_1004DD7A0();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "pressesEnded:withEvent:", isa, a2);

  result = [v2 delegate];
  if (result)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_100488B48(a1);
        swift_unknownObjectRelease();
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1004DD754()
{
  result = qword_100787F00;
  if (!qword_100787F00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100787F00);
  }

  return result;
}

unint64_t sub_1004DD7A0()
{
  result = qword_100787F08;
  if (!qword_100787F08)
  {
    sub_1004DD754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787F08);
  }

  return result;
}

uint64_t sub_1004DD860()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100787F10);
  v1 = sub_100003E30(v0, qword_100787F10);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_1004DD928(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v67 = a2;
  v65 = a1;
  v6 = *((swift_isaMask & *v3) + 0x50);
  v59 = *((swift_isaMask & *v3) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  v58 = AssociatedTypeWitness;
  __chkstk_darwin(AssociatedTypeWitness);
  v55 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v56 = v53 - v10;
  v11 = type metadata accessor for IndexPath();
  v63 = *(v11 - 8);
  v64 = v11;
  __chkstk_darwin(v11);
  v62 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v61 = v53 - v14;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v53 - v17;
  v19 = *(v6 - 1);
  __chkstk_darwin(v20);
  v53[2] = v21;
  v54 = v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v53 - v23;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v26 = result;
  v66 = a3;
  sub_10019CB14(a3, v18);

  if ((*(v19 + 48))(v18, 1, v6) == 1)
  {
    (*(v16 + 8))(v18, v15);
    return _swiftEmptyArrayStorage;
  }

  v60 = v19;
  v28 = *(v19 + 32);
  v53[1] = v19 + 32;
  v28(v24, v18, v6);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_19;
  }

  v29 = result;
  v30 = v67;
  swift_getObjectType();
  v31 = sub_1001893F4();

  v32 = sub_10039C078(v31);
  if (!v32)
  {
    v32 = sub_1004DE0AC(v4, v30);
  }

  [v30 setLocalContext:v32];
  v33 = *&v4[qword_100787F30];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v34 = result;
    v53[0] = v28;
    v35 = sub_1001893F4();

    v27 = v33(v35, v30, v24);
    if (v27 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v37 = v66;
    if (v36)
    {
      v67 = v6;
      v38 = v62;
      v39 = v63;
      v40 = v64;
      (*(v63 + 16))(v62, v66, v64);
      swift_beginAccess();
      v41 = v24;
      v42 = v61;
      sub_10058CCF4(v61, v38);
      (*(v39 + 8))(v42, v40);
      swift_endAccess();
      sub_1004DEB54();
      if (sub_1004DE1B8(v41, v37, v65))
      {
        v43 = v59;
        v44 = v67;
        (*(v59 + 24))(v67, v59);
        swift_beginAccess();
        v45 = v58;
        swift_getAssociatedConformanceWitness();
        type metadata accessor for Set();
        v66 = v27;
        v46 = v56;
        Set.insert(_:)();
        swift_endAccess();
        (*(v57 + 8))(v46, v45);
        v65 = objc_opt_self();
        v47 = v60;
        v48 = v54;
        (*(v60 + 16))(v54, v41, v44);
        v49 = (*(v47 + 80) + 40) & ~*(v47 + 80);
        v50 = swift_allocObject();
        v50[2] = v44;
        v50[3] = v43;
        v50[4] = v4;
        (v53[0])(v50 + v49, v48, v44);
        aBlock[4] = sub_1004DF860;
        aBlock[5] = v50;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10001047C;
        aBlock[3] = &unk_10072C4C0;
        v51 = _Block_copy(aBlock);
        v52 = v4;
        v27 = v66;

        [v65 animateWithDuration:v51 animations:0.2];
        _Block_release(v51);

        (*(v47 + 8))(v41, v44);
        return v27;
      }

      (*(v60 + 8))(v41, v67);
    }

    else
    {
      (*(v60 + 8))(v24, v6);
    }

    return v27;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1004DE0AC(uint64_t a1, void *a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    type metadata accessor for TTRIAnyTreeViewDragSessionContext();
    v5 = sub_1001893F4();

    v6 = swift_allocObject();
    sub_1004DED40(v5);
    [a2 setLocalContext:v6];
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004DE178(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1004DED40(a1);
  return v2;
}

uint64_t sub_1004DE1B8(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = a2;
  v6 = *((swift_isaMask & *v3) + 0x50);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - v9;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = sub_10018AFFC(a1);

  if ((v13 & 1) == 0)
  {
    return 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_16;
  }

  v14 = result;
  v15 = *(v6 - 8);
  (*(v15 + 16))(v10, a1, v6);
  (*(v15 + 56))(v10, 0, 1, v6);
  v16 = sub_100191678(v10);
  v18 = v17;

  (*(v8 + 8))(v10, v7);
  result = 0;
  if ((v18 & 1) == 0 && v16 >= 1)
  {
    v19 = [a3 indexPathsForSelectedRows];
    if (v19)
    {
      v20 = v19;
      type metadata accessor for IndexPath();
      v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v21 = _swiftEmptyArrayStorage;
    }

    if (sub_10010D158(v24, v21))
    {
      v22 = v21[2];

      if (v22 > 1)
      {
        return 0;
      }
    }

    else
    {
    }

    return 1;
  }

  return result;
}

void sub_1004DE428(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1001A2544(a2, 100);
  }

  else
  {
    __break(1u);
  }
}

Class sub_1004DE494(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = a1;
  sub_1004DD928(v11, a4, v10);

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
  sub_1000776A8();
  v13.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v13.super.isa;
}

Class sub_1004DE5E8(void *a1, double a2, double a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = a5;
  swift_unknownObjectRetain();
  v16 = a1;
  sub_1004DEF34(a6, v14, a2, a3);

  swift_unknownObjectRelease();
  (*(v12 + 8))(v14, v11);
  sub_1000776A8();
  v17.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v17.super.isa;
}

id sub_1004DE750(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  v11 = sub_1004DF3B4(v8);

  (*(v6 + 8))(v8, v5);

  return v11;
}

void sub_1004DE890(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  a5(a4);

  swift_unknownObjectRelease();
}

uint64_t sub_1004DE914(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = sub_1004DF750(a4);

  swift_unknownObjectRelease();
  return v8 & 1;
}

uint64_t sub_1004DE9B8()
{
  swift_unknownObjectWeakDestroy();

  return swift_unknownObjectRelease();
}

uint64_t sub_1004DEAA8()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1004DEB54()
{
  if (qword_1007673C8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003E30(v0, qword_100787F10);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v9 = v3;
    *v2 = 136315138;
    swift_beginAccess();
    type metadata accessor for IndexPath();
    sub_1004DF808();

    v4 = Set.description.getter();
    v6 = v5;

    v7 = sub_100004060(v4, v6, &v9);

    *(v2 + 4) = v7;
    _os_log_impl(&_mh_execute_header, oslog, v1, "TTRIAnyTreeViewDragSessionContext: draggedIndexPaths updated: %s", v2, 0xCu);
    sub_100004758(v3);
  }

  else
  {
  }
}

uint64_t sub_1004DED40(uint64_t a1)
{
  UUID.init()();
  *(v1 + qword_1007A8808) = &_swiftEmptySetSingleton;
  v3 = qword_1007A8810;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  *(v1 + v3) = Set.init()();
  *(v1 + qword_1007A8800) = a1;
  return v1;
}

uint64_t sub_1004DEE34()
{
  v1 = qword_1007A87F8;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1004DEEC4()
{
  sub_1004DEE34();

  return swift_deallocClassInstance();
}

void *sub_1004DEF34(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v47 = a1;
  v9 = *v4;
  v10 = swift_isaMask;
  v11 = type metadata accessor for IndexPath();
  v44 = *(v11 - 8);
  v45 = v11;
  __chkstk_darwin(v11);
  v43 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v42 = &v41 - v14;
  v15 = *((v10 & v9) + 0x50);
  v16 = type metadata accessor for Optional();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v41 - v18;
  v20 = *(v15 - 8);
  __chkstk_darwin(v21);
  v23 = &v41 - v22;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25 = result;
  v46 = a2;
  sub_10019CB14(a2, v19);

  if ((*(v20 + 48))(v19, 1, v15) == 1)
  {
    (*(v17 + 8))(v19, v16);
    return _swiftEmptyArrayStorage;
  }

  (*(v20 + 32))(v23, v19, v15);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_17;
  }

  v26 = result;
  v27 = sub_10019CD00(v23);

  if (v27)
  {
LABEL_12:
    (*(v20 + 8))(v23, v15);
    return _swiftEmptyArrayStorage;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v28 = result;
  swift_getObjectType();
  v29 = sub_1001893F4();

  v30 = sub_10039C078(v29);
  if (!v30)
  {
    goto LABEL_12;
  }

  v31 = *(v5 + qword_100787F38);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v32 = result;
  v33 = sub_1001893F4();

  v34 = v31(v33, v47, v23, a3, a4);
  if (v34 >> 62)
  {
    v40 = _CocoaArrayWrapper.endIndex.getter();
    v35 = v46;
    if (v40)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v35 = v46;
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_11:
      v36 = v43;
      v37 = v44;
      v38 = v45;
      (*(v44 + 16))(v43, v35, v45);
      swift_beginAccess();
      v39 = v42;
      sub_10058CCF4(v42, v36);
      (*(v37 + 8))(v39, v38);
      swift_endAccess();
      sub_1004DEB54();

      (*(v20 + 8))(v23, v15);
      return v34;
    }
  }

  (*(v20 + 8))(v23, v15);

  return v34;
}

uint64_t sub_1004DF3B4(uint64_t a1)
{
  v2 = v1;
  v4 = *((swift_isaMask & *v2) + 0x50);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = *(v4 - 8);
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v14 = result;
  sub_10019CB14(a1, v8);

  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    (*(v6 + 8))(v8, v5);
    return 0;
  }

  (*(v9 + 32))(v12, v8, v4);
  v15 = *(v2 + qword_100787F40);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_8;
  }

  v16 = result;
  v17 = sub_1001893F4();

  v18 = v15(v17, v12);
  (*(v9 + 8))(v12, v4);
  return v18;
}

void sub_1004DF600(uint64_t a1)
{
  *(v1 + qword_100787F68) = a1;
  swift_unknownObjectRelease();
  v3 = *(v1 + qword_100787F48);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_1001893F4();
    swift_unknownObjectRetain();

    v3(v6, a1);
  }

  else
  {
    __break(1u);
  }
}

void sub_1004DF6AC(uint64_t a1)
{
  *(v1 + qword_100787F68) = 0;
  swift_unknownObjectRelease();
  v3 = *(v1 + qword_100787F50);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_1001893F4();

    v3(v6, a1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1004DF750(uint64_t a1)
{
  v3 = *(v1 + qword_100787F58);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_1001893F4();

    v7 = v3(v6, a1);
    return v7 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1004DF808()
{
  result = qword_100769AC0;
  if (!qword_100769AC0)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100769AC0);
  }

  return result;
}

uint64_t sub_1004DF8A8(uint64_t a1, char *a2, __int16 a3)
{
  v6 = *v3;
  sub_100058000(&qword_10076CC68);
  swift_allocObject();

  v7 = TTRTreeStorageDerivedUntouchedTree.init(baseTree:)();
  v8 = sub_1004E11AC(&qword_10076CC58, type metadata accessor for TTRIEditableSectionsPresentationTreeMaker);
  v9 = (*(v8 + 40))(v7, a2, v6, v8);
  if (sub_1004DFC54(a2, a3 & 0x1FF)[2])
  {
    sub_100058000(&qword_100788168);
    TTRMutableTreeStorage.__allocating_init(topLevelNodeValues:)();
    sub_100058000(&qword_1007881B0);
    swift_allocObject();

    v9 = TTRTreeStorageDerivedTreeWithDesignatedInitialItems.init(upstreamTree:designatedItemTree:)();

    v10 = &unk_1007881B8;
    v11 = &qword_1007881B0;
  }

  else
  {

    v10 = &unk_1007881C0;
    v11 = &qword_10076CC20;
  }

  sub_10000E188(v10, v11);
  return v9;
}

uint64_t sub_1004DFAB4(uint64_t a1)
{
  if (TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter())
  {
    return sub_1004E0E94(a1, &qword_100788190, &unk_100643850, &qword_100788198);
  }

  sub_100058000(&qword_100788188);
  swift_allocObject();

  v3 = TTRRemindersListTreeWithoutEmptySectionless.init(upstreamTree:)();
  v4 = sub_1004E0E94(v3, &qword_1007881A0, &unk_100643860, &qword_1007881A8);

  return v4;
}

uint64_t sub_1004DFBB0()
{
  sub_100058000(&qword_10076CC68);
  swift_allocObject();

  v0 = TTRTreeStorageDerivedUntouchedTree.init(baseTree:)();
  sub_10000E188(&qword_100788180, &qword_10076CC68);
  return v0;
}

void *sub_1004DFC54(char *a1, int a2)
{
  LODWORD(v123) = a2;
  v121 = sub_100058000(&qword_100785FA8);
  v127 = *(v121 - 8);
  __chkstk_darwin(v121);
  v4 = &v101 - v3;
  v129 = type metadata accessor for TTRRemindersListTreeViewModel.AuxiliaryData();
  __chkstk_darwin(v129);
  v128 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_10076B050);
  __chkstk_darwin(v6 - 8);
  v111 = &v101 - v7;
  v109 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v110 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for TTRRemindersListViewModel.CompletedRemindersState();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v105 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_1007693B0);
  __chkstk_darwin(v10 - 8);
  v115 = &v101 - v11;
  v12 = type metadata accessor for TTRTemplatePublicLinkData();
  v118 = *(v12 - 8);
  v119 = v12;
  __chkstk_darwin(v12);
  v116 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&qword_1007693B8);
  __chkstk_darwin(v14 - 8);
  v113 = &v101 - v15;
  v114 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
  v122 = *(v114 - 8);
  __chkstk_darwin(v114);
  v101 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TTRRemindersListViewModel.Item();
  v117 = *(v17 - 8);
  __chkstk_darwin(v17);
  v125 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v126 = &v101 - v20;
  __chkstk_darwin(v21);
  v120 = &v101 - v22;
  __chkstk_darwin(v23);
  v104 = &v101 - v24;
  __chkstk_darwin(v25);
  v103 = &v101 - v26;
  __chkstk_darwin(v27);
  v102 = &v101 - v28;
  __chkstk_darwin(v29);
  v112 = &v101 - v30;
  __chkstk_darwin(v31);
  v33 = &v101 - v32;
  v34 = sub_100058000(&qword_100769E98);
  __chkstk_darwin(v34 - 8);
  v36 = &v101 - v35;
  v37 = type metadata accessor for TTRRemindersListTip();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v101 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100547094(0, 5, 0, _swiftEmptyArrayStorage);
  v42 = a1;
  TTRRemindersListViewModel.ListInfo.tip.getter();
  v43 = (*(v38 + 48))(v36, 1, v37);
  v130 = v17;
  if (v43 == 1)
  {
    sub_1000079B4(v36, &qword_100769E98);
    v44 = v17;
    v45 = v117;
  }

  else
  {
    v124 = v4;
    (*(v38 + 32))(v40, v36, v37);
    (*(v38 + 16))(v33, v40, v37);
    v46 = v117;
    (*(v117 + 104))(v33, enum case for TTRRemindersListViewModel.Item.tip(_:), v17);
    v48 = *(v41 + 2);
    v47 = *(v41 + 3);
    v49 = v41;
    if (v48 >= v47 >> 1)
    {
      v49 = sub_100547094(v47 > 1, v48 + 1, 1, v41);
    }

    (*(v38 + 8))(v40, v37);
    v41 = v49;
    *(v49 + 16) = v48 + 1;
    v45 = v46;
    v44 = v130;
    (*(v46 + 32))(&v41[((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v48], v33, v130);
    v4 = v124;
  }

  v50 = v42;
  v51 = v113;
  TTRRemindersListViewModel.ListInfo.hashtagsStateToShow.getter();
  v52 = v122;
  v53 = v114;
  v54 = (*(v122 + 48))(v51, 1, v114);
  v55 = v120;
  v56 = v118;
  v124 = v50;
  if (v54 == 1)
  {
    sub_1000079B4(v51, &qword_1007693B8);
    v57 = v115;
  }

  else
  {
    v58 = v101;
    (*(v52 + 32))(v101, v51, v53);
    v59 = *(v52 + 16);
    v60 = v112;
    v59(v112, v58, v53);
    (*(v45 + 104))(v60, enum case for TTRRemindersListViewModel.Item.hashtags(_:), v44);
    v62 = *(v41 + 2);
    v61 = *(v41 + 3);
    if (v62 >= v61 >> 1)
    {
      v41 = sub_100547094(v61 > 1, v62 + 1, 1, v41);
    }

    (*(v122 + 8))(v58, v53);
    *(v41 + 2) = v62 + 1;
    (*(v45 + 32))(&v41[((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v62], v112, v44);
    v57 = v115;
  }

  TTRRemindersListViewModel.ListInfo.templateStatus.getter();
  v63 = v119;
  if ((*(v56 + 48))(v57, 1, v119) == 1)
  {
    sub_1000079B4(v57, &qword_1007693B0);
  }

  else
  {
    v64 = v116;
    (*(v56 + 32))(v116, v57, v63);
    v65 = v102;
    (*(v56 + 16))(v102, v64, v63);
    (*(v45 + 104))(v65, enum case for TTRRemindersListViewModel.Item.templateStatus(_:), v44);
    v67 = *(v41 + 2);
    v66 = *(v41 + 3);
    if (v67 >= v66 >> 1)
    {
      v41 = sub_100547094(v66 > 1, v67 + 1, 1, v41);
    }

    (*(v56 + 8))(v116, v63);
    *(v41 + 2) = v67 + 1;
    (*(v45 + 32))(&v41[((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v67], v65, v44);
  }

  v68 = v123;
  v69 = v55;
  if (TTRRemindersListViewModel.ListInfo.isPublicTemplatePreview.getter())
  {
    v70 = v103;
    (*(v45 + 104))(v103, enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:), v44);
    v72 = *(v41 + 2);
    v71 = *(v41 + 3);
    if (v72 >= v71 >> 1)
    {
      v41 = sub_100547094(v71 > 1, v72 + 1, 1, v41);
    }

    *(v41 + 2) = v72 + 1;
    (*(v45 + 32))(&v41[((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v72], v70, v44);
    if ((TTRRemindersListViewModel.ListInfo.isRecentlyDeletedList.getter() & 1) == 0)
    {
LABEL_18:
      if (!v68)
      {
        goto LABEL_32;
      }

      goto LABEL_26;
    }
  }

  else if ((TTRRemindersListViewModel.ListInfo.isRecentlyDeletedList.getter() & 1) == 0)
  {
    goto LABEL_18;
  }

  v73 = v104;
  (*(v45 + 104))(v104, enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:), v44);
  v75 = *(v41 + 2);
  v74 = *(v41 + 3);
  if (v75 >= v74 >> 1)
  {
    v41 = sub_100547094(v74 > 1, v75 + 1, 1, v41);
  }

  *(v41 + 2) = v75 + 1;
  (*(v45 + 32))(&v41[((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v75], v73, v44);
  if (!v68)
  {
    goto LABEL_32;
  }

LABEL_26:
  if (v68 == 1)
  {
    if ((TTRRemindersListViewModel.ListInfo.canToggleCompletedReminderVisbility.getter() & 1) == 0 || (TTRRemindersListViewModel.ListInfo.completedRemindersShown.getter() & 1) == 0 || (TTRRemindersListViewModel.ListInfo.canClearCompletedReminders.getter() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if ((TTRRemindersListViewModel.ListInfo.canToggleCompletedReminderVisbility.getter() & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_32:
  v76 = v105;
  TTRRemindersListViewModel.ListInfo.completedRemindersState(completedRowHasShowHide:)();
  v77 = v106;
  v78 = v107;
  (*(v106 + 16))(v69, v76, v107);
  (*(v45 + 104))(v69, enum case for TTRRemindersListViewModel.Item.completed(_:), v44);
  v80 = *(v41 + 2);
  v79 = *(v41 + 3);
  if (v80 >= v79 >> 1)
  {
    v41 = sub_100547094(v79 > 1, v80 + 1, 1, v41);
  }

  (*(v77 + 8))(v76, v78);
  *(v41 + 2) = v80 + 1;
  (*(v45 + 32))(&v41[((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v80], v69, v44);
LABEL_35:
  v81 = *(v41 + 2);
  if (v81)
  {
    v131 = _swiftEmptyArrayStorage;
    sub_1004A225C(0, v81, 0);
    v122 = *(v45 + 16);
    v123 = v45 + 16;
    v82 = v131;
    v83 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v116 = v41;
    v84 = &v41[v83];
    v85 = *(v45 + 72);
    v124 = (v45 + 8);
    v119 = v127 + 32;
    v120 = v85;
    do
    {
      v86 = v126;
      v87 = v130;
      v88 = v122;
      (v122)(v126, v84, v130);
      v88(v125, v86, v87);
      v89 = v4;
      dispatch thunk of TTRTreeStorageNodeAuxiliaryData.init()();
      v118 = sub_1004E11AC(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
      TTRTreeStorageNodeValue.init(item:auxiliaryData:children:)();
      v90 = *v124;
      (*v124)(v86, v87);
      v131 = v82;
      v92 = v82[2];
      v91 = v82[3];
      if (v92 >= v91 >> 1)
      {
        sub_1004A225C(v91 > 1, v92 + 1, 1);
        v82 = v131;
      }

      v82[2] = v92 + 1;
      (*(v127 + 32))(v82 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v92, v89, v121);
      v84 = &v120[v84];
      --v81;
      v4 = v89;
    }

    while (v81);

    v93 = enum case for TTRRemindersListViewModel.SectionID.NamedID.designatedItemsSection(_:);
    v94 = type metadata accessor for TTRRemindersListViewModel.SectionID.NamedID();
    v95 = v110;
    (*(*(v94 - 8) + 104))(v110, v93, v94);
    (*(v108 + 104))(v95, enum case for TTRRemindersListViewModel.SectionID.named(_:), v109);
    v96 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
    (*(*(v96 - 8) + 56))(v111, 1, 1, v96);
    v97 = v126;
    TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
    v98 = v130;
    (*(v117 + 104))(v97, enum case for TTRRemindersListViewModel.Item.section(_:), v130);
    sub_100058000(&qword_100785FA0);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_10062D400;
    (v122)(v125, v97, v98);
    TTRRemindersListTreeViewModel.AuxiliaryData.init()();
    TTRTreeStorageNodeValue.init(item:auxiliaryData:children:)();
    v90(v97, v98);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v99;
}

uint64_t sub_1004E0D00(uint64_t a1, char *a2, __int16 a3)
{
  sub_100058000(&qword_10076CC68);
  swift_allocObject();

  v5 = TTRTreeStorageDerivedUntouchedTree.init(baseTree:)();

  if (sub_1004DFC54(a2, a3 & 0x1FF)[2])
  {
    sub_100058000(&qword_100788168);
    TTRMutableTreeStorage.__allocating_init(topLevelNodeValues:)();
    sub_100058000(&qword_100788170);
    swift_allocObject();

    v6 = TTRTreeStorageDerivedTreeWithDesignatedInitialItems.init(upstreamTree:designatedItemTree:)();

    sub_10000E188(&qword_100788178, &qword_100788170);
    return v6;
  }

  else
  {

    sub_10000E188(&qword_100788180, &qword_10076CC68);
  }

  return v5;
}

uint64_t sub_1004E0E94(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v20 = a3;
  v21 = a4;
  v5 = sub_100058000(&unk_10076B050);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = enum case for TTRRemindersListViewModel.SectionID.NamedID.remindersInListSection(_:);
  v17 = type metadata accessor for TTRRemindersListViewModel.SectionID.NamedID();
  (*(*(v17 - 8) + 104))(v11, v16, v17);
  (*(v9 + 104))(v11, enum case for TTRRemindersListViewModel.SectionID.named(_:), v8);
  v18 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
  (*(v13 + 104))(v15, enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:), v12);
  sub_100058000(a2);
  swift_allocObject();

  TTRTreeStorageDerivedRerootedTree.init(upstreamTree:rootItem:)();
  sub_10000E188(v21, a2);
  sub_100058000(&qword_10076CC20);
  swift_allocObject();
  return TTRAnyTreeStorageChainedTreeDeriving.init(_:)();
}

uint64_t sub_1004E11AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004E11F4(uint64_t result)
{
  v2 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView;
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView);
  v4 = *&v3[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_gridView];
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  v6 = v3;
  v7 = [objc_msgSend(v4 columnAtIndex:{1), "isHidden"}];

  result = swift_unknownObjectRelease();
  if (v7 == (v5 & 1))
  {
    return result;
  }

  v8 = *(v1 + v2);
  v9 = *&v8[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_gridView];
  if (!v9)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v10 = v8;
  [objc_msgSend(v9 columnAtIndex:{1), "setHidden:", v5 & 1}];

  return swift_unknownObjectRelease();
}

id sub_1004E1314()
{
  v1 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell____lazy_storage___fillerView;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell____lazy_storage___fillerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell____lazy_storage___fillerView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1004E1398()
{
  v1 = v0;
  v2 = type metadata accessor for TTRITreeViewCellModel();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_1007884E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_treeCellViewModel;
  swift_beginAccess();
  sub_10000794C(&v1[v9], v8, &unk_1007884E0);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_1000079B4(v8, &unk_1007884E0);
    v10 = 12.0;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_1000079B4(v8, &unk_1007884E0);
    v11 = TTRITreeViewCellModel.level.getter();
    (*(v3 + 8))(v5, v2);
    v10 = v11 * 16.0 + 12.0;
  }

  v12 = &v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_totalIndentation];
  *v12 = v10;
  *(v12 + 8) = 0;
  v13 = [v1 containerView];
  [v13 setDirectionalLayoutMargins:{11.0, v10, 11.0, 0.0}];

  [v1 setNeedsLayout];
  return 0;
}

uint64_t sub_1004E15F0()
{
  v1 = v0;
  v69 = _swiftEmptyArrayStorage;
  v2 = *&v0[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_subtitleLabel];
  v3 = [v2 text];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = v2;
  }

  else
  {
LABEL_6:
    v2 = 0;
  }

  if ((v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_unitTest_forceLargeTextLayout] & 1) == 0)
  {
    v10 = [v1 traitCollection];
    v11 = [v10 preferredContentSizeCategory];

    LOBYTE(v10) = UIContentSizeCategory.isAccessibilityCategory.getter();
    if ((v10 & 1) == 0)
    {
      v67 = v2;
      sub_100058000(&qword_10076B920);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_10062F800;
      v41 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_leadingControl;
      v42 = *&v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_leadingControl];
      v43 = *&v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_iconContainerView];
      *(v40 + 32) = v42;
      *(v40 + 40) = v43;
      v44 = *&v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_titleLabel];
      *(v40 + 48) = v44;
      aBlock[0] = v40;
      v45 = v42;
      v65 = v43;
      v46 = v44;
      sub_100058000(&qword_100780A08);
      sub_100003540(0, &qword_10076B020);
      sub_10000E188(&qword_100788500, &qword_100780A08);
      v47 = Sequence.removingNils<A>()();

      v29 = v69;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_100547B84(0, v69[2] + 1, 1, v69);
      }

      v49 = v29[2];
      v48 = v29[3];
      if (v49 >= v48 >> 1)
      {
        v29 = sub_100547B84((v48 > 1), v49 + 1, 1, v29);
      }

      v29[2] = v49 + 1;
      v29[v49 + 4] = v47;
      v69 = v29;
      v32 = v67;
      if (!v67)
      {
        goto LABEL_37;
      }

      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_10062F800;
      v51 = *&v1[v41];
      *(v50 + 32) = v51;
      *(v50 + 40) = v43;
      *(v50 + 48) = v67;
      aBlock[0] = v50;
      v52 = v51;
      v53 = v67;
      v54 = v65;
      v55 = Sequence.removingNils<A>()();

      v29 = v69;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_100547B84(0, v69[2] + 1, 1, v69);
      }

      v57 = v29[2];
      v56 = v29[3];
      if (v57 >= v56 >> 1)
      {
        v29 = sub_100547B84((v56 > 1), v57 + 1, 1, v29);
      }

      v29[2] = v57 + 1;
      v29[v57 + 4] = v55;
      goto LABEL_36;
    }
  }

  v12 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_leadingControl;
  v13 = *&v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_leadingControl];
  if (v13)
  {
    v14 = v13;
    v66 = sub_1004E1314();
  }

  else
  {
    v66 = 0;
  }

  sub_100058000(&qword_10076B920);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10062D3F0;
  v16 = *&v1[v12];
  v17 = *&v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_iconContainerView];
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  aBlock[0] = v15;
  v18 = v16;
  v19 = v17;
  sub_100058000(&qword_100780A08);
  sub_100003540(0, &qword_10076B020);
  sub_10000E188(&qword_100788500, &qword_100780A08);
  v20 = Sequence.removingNils<A>()();

  v21 = v69;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_100547B84(0, v69[2] + 1, 1, v69);
  }

  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    v21 = sub_100547B84((v22 > 1), v23 + 1, 1, v21);
  }

  v21[2] = v23 + 1;
  v21[v23 + 4] = v20;
  v69 = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10062D3F0;
  v25 = *&v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_titleLabel];
  *(v24 + 32) = v66;
  *(v24 + 40) = v25;
  aBlock[0] = v24;
  v26 = v66;
  v27 = v25;
  v28 = Sequence.removingNils<A>()();

  v29 = v69;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_100547B84(0, v69[2] + 1, 1, v69);
  }

  v31 = v29[2];
  v30 = v29[3];
  if (v31 >= v30 >> 1)
  {
    v29 = sub_100547B84((v30 > 1), v31 + 1, 1, v29);
  }

  v29[2] = v31 + 1;
  v29[v31 + 4] = v28;
  v69 = v29;
  v32 = v2;
  if (!v2)
  {

    goto LABEL_37;
  }

  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10062D3F0;
  *(v33 + 32) = v66;
  *(v33 + 40) = v2;
  aBlock[0] = v33;
  v34 = v2;
  v35 = v26;
  v36 = v34;
  v37 = Sequence.removingNils<A>()();

  v29 = v69;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v39 = v29[2];
    v38 = v29[3];
    if (v39 >= v38 >> 1)
    {
      v29 = sub_100547B84((v38 > 1), v39 + 1, 1, v29);
    }

    v29[2] = v39 + 1;
    v29[v39 + 4] = v37;
LABEL_36:
    v69 = v29;
LABEL_37:
    v58 = [v1 containerView];
    v59 = [v58 arrangedSubviewRows];

    if (v59)
    {
      sub_100058000(&unk_10076BCD0);
      v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v61 = sub_10012678C(v60, v29);

      if (v61)
      {
        break;
      }
    }

    v36 = [v1 containerView];
    v29 = swift_allocObject();
    v29[2] = v1;
    v29[3] = &v69;
    v37 = swift_allocObject();
    v35 = sub_1004E49C8;
    *(v37 + 16) = sub_1004E49C8;
    *(v37 + 24) = v29;
    aBlock[4] = sub_100026410;
    aBlock[5] = v37;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_10072C580;
    v62 = _Block_copy(aBlock);
    v63 = v1;

    [v36 performBatchUpdates:v62];

    _Block_release(v62);
    LOBYTE(v62) = swift_isEscapingClosureAtFileLocation();

    if ((v62 & 1) == 0)
    {
      goto LABEL_41;
    }

    __break(1u);
LABEL_43:
    v29 = sub_100547B84(0, v29[2] + 1, 1, v29);
  }

  v35 = 0;
LABEL_41:

  return sub_1000301AC(v35);
}

uint64_t sub_1004E1E80()
{
  v1 = type metadata accessor for TTRITreeViewCellModel();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&unk_1007884E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_treeCellViewModel;
  swift_beginAccess();
  sub_10000794C(v0 + v8, v7, &unk_1007884E0);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_1000079B4(v7, &unk_1007884E0);
  }

  else
  {
    v10 = v0;
    (*(v2 + 16))(v4, v7, v1);
    sub_1000079B4(v7, &unk_1007884E0);
    v11 = TTRITreeViewCellModel.level.getter();
    (*(v2 + 8))(v4, v1);
    if (v11 > 0 && *(v10 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityGroupName + 8))
    {
      return static TTRAccesibility.AccountsList.Format.GroupMemberName_ItemCount.getter();
    }
  }

  return static TTRAccesibility.AccountsList.Format.Name_ItemCount.getter();
}

char *sub_1004E20B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v5 = &v3[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityCount];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v3[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityGroupName];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_treeCellViewModel;
  v8 = type metadata accessor for TTRITreeViewCellModel();
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  *&v3[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_treeCellViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_leadingControl] = 0;
  v3[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_unitTest_forceLargeTextLayout] = 0;
  *&v3[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityAdditionalLabelAttributes] = 0;
  v9 = &v3[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_totalIndentation];
  *v9 = 0;
  v9[8] = 1;
  v3[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_needsUpdateGridSubviewRows] = 1;
  *&v3[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell____lazy_storage___fillerView] = 0;
  v10 = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_iconContainerView;
  *&v3[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_iconContainerView] = v10;
  v12 = v11;
  v74 = v11;
  [v10 setMinimumLayoutSize:{32.0, 32.0}];
  v13 = *&v3[v12];
  [v13 minimumLayoutSize];
  [v13 setMaximumLayoutSize:?];

  v14 = [objc_allocWithZone(UILabel) init];
  v15 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_titleLabel;
  *&v3[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_titleLabel] = v14;
  [v14 setNumberOfLines:0];
  [*&v3[v15] setUserInteractionEnabled:0];
  v16 = *&v3[v15];
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 labelColor];
  [v18 setTextColor:v19];

  v20 = *&v4[v15];
  sub_100003540(0, &qword_100771DF0);
  v21 = v20;
  v22 = static UIFont.roundedBodyFont.getter();
  [v21 setFont:v22];

  v69 = v15;
  [*&v4[v15] setAdjustsFontForContentSizeCategory:1];
  v23 = [objc_allocWithZone(UILabel) init];
  v24 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_subtitleLabel;
  *&v4[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_subtitleLabel] = v23;
  [v23 setNumberOfLines:1];
  [*&v4[v24] setUserInteractionEnabled:0];
  v25 = v24;
  v26 = *&v4[v24];
  v27 = [v17 secondaryLabelColor];
  [v26 setTextColor:v27];

  v28 = *&v4[v25];
  v29 = static UIFont.roundedFootnoteFont.getter();
  [v28 setFont:v29];

  v73 = v25;
  [*&v4[v25] setAdjustsFontForContentSizeCategory:1];
  sub_100003540(0, &qword_10076B020);
  sub_100058000(&unk_100771E00);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10062F800;
  v68 = *&v4[v74];
  *(v30 + 32) = v68;
  *(v30 + 40) = 1144750080;
  v31 = *&v4[v15];
  *(v30 + 48) = v31;
  *(v30 + 56) = 1132068864;
  v32 = *&v4[v25];
  *(v30 + 64) = v32;
  *(v30 + 72) = 1132068864;
  sub_100058000(&qword_1007884F0);
  v33 = type metadata accessor for TTRIViewContentPriorityType();
  v34 = *(v33 - 8);
  v35 = *(v34 + 72);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v72 = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_10062D3F0;
  v38 = (v37 + v36);
  *v38 = 0;
  v71 = enum case for TTRIViewContentPriorityType.hugging(_:);
  v39 = *(v34 + 104);
  v39(v37 + v36);
  *(v38 + v35) = 0;
  v70 = enum case for TTRIViewContentPriorityType.compressionResistance(_:);
  v39(v38 + v35);
  v40 = v68;
  v41 = v31;
  v42 = v32;
  static UIView.setContentPriorities(_:for:)();

  v43 = swift_allocObject();
  v44 = *&v4[v74];
  *(v43 + 16) = xmmword_10062F800;
  *(v43 + 32) = v44;
  *(v43 + 40) = 1144750080;
  v45 = *&v4[v69];
  *(v43 + 48) = v45;
  type metadata accessor for UILayoutPriority(0);
  v76 = 1065353216;
  v77 = 1144750080;
  sub_1004E4980(&unk_10077A6B0, type metadata accessor for UILayoutPriority);
  v46 = v44;
  v47 = v45;
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  v48 = *&v4[v73];
  *(v43 + 64) = v48;
  v77 = 1144750080;
  v76 = 0x40000000;
  v49 = v48;
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_10062D3F0;
  v51 = v50 + v72;
  *(v50 + v72) = 1;
  (v39)(v50 + v72, v71, v33);
  *(v51 + v35) = 1;
  (v39)(v51 + v35, v70, v33);
  static UIView.setContentPriorities(_:for:)();

  type metadata accessor for TTRIAccountsListsCellAccessoryView();
  v52 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView] = v52;
  result = *&v52[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_gridView];
  if (result)
  {
    [result setMinimumLayoutSize:{44.0, 44.0}];
    if (a3)
    {
      v54 = String._bridgeToObjectiveC()();
    }

    else
    {
      v54 = 0;
    }

    v75.receiver = v4;
    v75.super_class = type metadata accessor for TTRIAccountsListsBaseCell();
    v55 = objc_msgSendSuper2(&v75, "initWithStyle:reuseIdentifier:", a1, v54);

    v56 = v55;
    v57 = [v56 containerView];
    [v57 setHorizontalDistribution:0];
    [v57 setVerticalDistribution:0];
    [v57 setHorizontalAlignment:0];
    [v57 setVerticalAlignment:3];
    [v57 setColumnSpacing:12.0];
    [v57 setRowSpacing:0.0];
    v58 = v57;
    [v58 setDebugBoundingBoxesEnabled:0];
    [v58 setPreservesSuperviewLayoutMargins:0];
    [v58 setDelegate:v56];

    sub_1004E1398();
    v59 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView;
    *(*&v56[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView] + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_layoutDelegate + 8) = &off_10072C4F8;
    result = swift_unknownObjectWeakAssign();
    v60 = *&v56[v59];
    v61 = *&v60[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_gridView];
    if (v61)
    {
      v62 = v60;
      [v61 intrinsicContentSize];
      [v62 frame];
      [v62 setFrame:?];

      v63 = *&v56[v59];
      v64 = v56;
      [v64 setAccessoryView:v63];
      [v64 setAccessoryType:0];

      sub_100058000(&unk_10076BD70);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_10062D400;
      *(v65 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
      *(v65 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
      UIView.registerForTraitChanges<A>(_:handler:)();

      swift_unknownObjectRelease();

      return v64;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1004E2CA8(uint64_t a1, uint64_t a2)
{
  v8.receiver = v2;
  v8.super_class = type metadata accessor for TTRIAccountsListsBaseCell();
  objc_msgSendSuper2(&v8, "didUpdateFocusInContext:withAnimationCoordinator:", a1, a2);
  if ((static UIAccessibility.ttriIsFullKeyboardAccessRunning.getter() & 1) == 0)
  {
    if ([v2 isFocused])
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = [v2 contentView];
    [v6 setOverrideUserInterfaceStyle:v5];

    v7 = [v2 accessoryView];
    [v7 setOverrideUserInterfaceStyle:v5];
  }
}

uint64_t sub_1004E2F28()
{
  v1 = v0;
  v2 = type metadata accessor for TTRITreeViewCellModel();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v49 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&unk_1007884E0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v48 - v7;
  v9 = [*(v0 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_titleLabel) text];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = static TTRAccesibility.General.Label.Untitled.getter();
    v13 = v14;
  }

  sub_100058000(&unk_100771E10);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10062D400;
  *(v15 + 32) = v11;
  *(v15 + 40) = v13;
  v51 = v15;
  v16 = *(v1 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_subtitleLabel);
  v17 = [v16 text];
  if (v17)
  {
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      v23 = [v16 text];
      if (v23)
      {
        v24 = v23;
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v29 = *(v15 + 16);
        v28 = *(v15 + 24);
        if (v29 >= v28 >> 1)
        {
          v15 = sub_100546970((v28 > 1), v29 + 1, 1, v15);
        }

        *(v15 + 16) = v29 + 1;
        v30 = v15 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
        v51 = v15;
      }
    }
  }

  if (*(v1 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityAdditionalLabelAttributes))
  {

    sub_100081340(v31);
    v15 = v51;
  }

  v50 = v15;
  static TTRAccesibility.General.Label.Separator.getter();
  sub_100058000(&unk_100781F20);
  sub_10000E188(&qword_100771E20, &unk_100781F20);
  v32 = BidirectionalCollection<>.joined(separator:)();
  v34 = v33;

  (*((swift_isaMask & *v1) + 0x1E0))(v35);
  if (*(v1 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityCount + 8))
  {
    v36 = 0;
  }

  else
  {
    v36 = *(v1 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityCount);
  }

  v37 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_treeCellViewModel;
  swift_beginAccess();
  sub_10000794C(v1 + v37, v8, &unk_1007884E0);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_1000079B4(v8, &unk_1007884E0);
  }

  else
  {
    v42 = v49;
    (*(v3 + 16))(v49, v8, v2);
    sub_1000079B4(v8, &unk_1007884E0);
    v43 = TTRITreeViewCellModel.level.getter();
    (*(v3 + 8))(v42, v2);
    if (v43 > 0)
    {
      v44 = *(v1 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityGroupName + 8);
      if (v44)
      {
        v45 = *(v1 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityGroupName);
        sub_100058000(&unk_100786CB0);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_10062F800;
        *(v46 + 56) = &type metadata for String;
        v47 = sub_10005C390();
        *(v46 + 32) = v32;
        *(v46 + 40) = v34;
        *(v46 + 96) = &type metadata for Int;
        *(v46 + 104) = &protocol witness table for Int;
        *(v46 + 64) = v47;
        *(v46 + 72) = v36;
        *(v46 + 136) = &type metadata for String;
        *(v46 + 144) = v47;
        *(v46 + 112) = v45;
        *(v46 + 120) = v44;

        goto LABEL_20;
      }
    }
  }

  sub_100058000(&unk_100786CB0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_10062D3F0;
  *(v38 + 56) = &type metadata for String;
  v39 = sub_10005C390();
  *(v38 + 32) = v32;
  *(v38 + 40) = v34;
  *(v38 + 96) = &type metadata for Int;
  *(v38 + 104) = &protocol witness table for Int;
  *(v38 + 64) = v39;
  *(v38 + 72) = v36;
LABEL_20:
  v40 = String.init(format:_:)();

  return v40;
}

void sub_1004E36B0(char *a1)
{
  v2 = [a1 containerView];

  sub_100058000(&unk_10076BCD0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setArrangedSubviewRows:isa];

  v4 = [a1 containerView];
  [v4 setAlignment:1 forView:*&a1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_iconContainerView] inAxis:0];
}

id sub_1004E37A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIAccountsListsBaseCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TTRIAccountsListsBaseCell()
{
  result = qword_100788220;
  if (!qword_100788220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004E3920()
{
  sub_1003373BC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1004E39FC(uint64_t a1, void *a2)
{
  v64 = a2;
  v70 = type metadata accessor for TTRITreeViewExpandedState();
  v73 = *(v70 - 8);
  __chkstk_darwin(v70);
  v63 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v65 = &v60 - v6;
  v66 = sub_100058000(&unk_100771B50);
  __chkstk_darwin(v66);
  v69 = &v60 - v7;
  v8 = sub_100058000(&qword_10076B9C0);
  __chkstk_darwin(v8 - 8);
  v62 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v67 = &v60 - v11;
  __chkstk_darwin(v12);
  v68 = &v60 - v13;
  v14 = type metadata accessor for TTRITreeViewCellModel();
  v72 = *(v14 - 8);
  __chkstk_darwin(v14);
  v74 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100058000(&unk_1007884E0);
  __chkstk_darwin(v16 - 8);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v60 - v20;
  __chkstk_darwin(v22);
  v24 = &v60 - v23;
  __chkstk_darwin(v25);
  v27 = &v60 - v26;
  v28 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_treeCellViewModel;
  swift_beginAccess();
  sub_10000794C(v2 + v28, v27, &unk_1007884E0);
  sub_10000794C(a1, v24, &unk_1007884E0);
  swift_beginAccess();
  sub_100337758(v24, v2 + v28);
  swift_endAccess();
  v29 = v72;
  sub_10000794C(a1, v21, &unk_1007884E0);
  v30 = *(v29 + 48);
  if (v30(v21, 1, v14) != 1)
  {
    (*(v29 + 32))(v74, v21, v14);
    v61 = v27;
    sub_10000794C(v27, v18, &unk_1007884E0);
    if (v30(v18, 1, v14) == 1)
    {
      sub_1000079B4(v18, &unk_1007884E0);
      v32 = 1;
      v33 = v68;
    }

    else
    {
      v33 = v68;
      TTRITreeViewCellModel.expandedState.getter();
      (*(v29 + 8))(v18, v14);
      v32 = 0;
    }

    v34 = v67;
    v35 = v73;
    v36 = *(v73 + 56);
    v37 = v70;
    v36(v33, v32, 1, v70);
    TTRITreeViewCellModel.expandedState.getter();
    v36(v34, 0, 1, v37);
    v38 = *(v66 + 48);
    v39 = v69;
    sub_10000794C(v33, v69, &qword_10076B9C0);
    v40 = v39;
    sub_10000794C(v34, v39 + v38, &qword_10076B9C0);
    v41 = *(v35 + 48);
    if (v41(v40, 1, v37) == 1)
    {
      sub_1000079B4(v34, &qword_10076B9C0);
      v42 = v69;
      sub_1000079B4(v33, &qword_10076B9C0);
      if (v41(v42 + v38, 1, v37) == 1)
      {
        sub_1000079B4(v42, &qword_10076B9C0);
LABEL_17:
        sub_1004E1398();
LABEL_18:
        (*(v29 + 8))(v74, v14);
        v31 = v61;
        return sub_1000079B4(v31, &unk_1007884E0);
      }
    }

    else
    {
      v43 = v62;
      sub_10000794C(v40, v62, &qword_10076B9C0);
      if (v41(v40 + v38, 1, v37) != 1)
      {
        v57 = v73;
        v44 = v65;
        (*(v73 + 32))(v65, v40 + v38, v37);
        sub_1004E4980(&qword_10076B990, &type metadata accessor for TTRITreeViewExpandedState);
        LODWORD(v66) = dispatch thunk of static Equatable.== infix(_:_:)();
        v58 = *(v57 + 8);
        v58(v44, v70);
        sub_1000079B4(v67, &qword_10076B9C0);
        sub_1000079B4(v68, &qword_10076B9C0);
        v58(v43, v70);
        v37 = v70;
        sub_1000079B4(v40, &qword_10076B9C0);
        if (v66)
        {
          goto LABEL_17;
        }

LABEL_12:
        TTRITreeViewCellModel.expandedState.getter();
        v45 = v73;
        v46 = v63;
        (*(v73 + 104))(v63, enum case for TTRITreeViewExpandedState.expanded(_:), v37);
        v47 = static TTRITreeViewExpandedState.== infix(_:_:)();
        v48 = *(v45 + 8);
        v48(v46, v37);
        v48(v44, v37);
        v49 = *&v71[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView];
        v50 = v49[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_isExpanded];
        v49[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_isExpanded] = v47 & 1;
        if ((v47 & 1) != v50)
        {
          v51 = v49;
          sub_1004B2404();
        }

        v52 = v71;
        sub_1004E1398();
        [v52 setNeedsLayout];
        v53 = v64;
        sub_10000C36C(v64, v64[3]);
        if (dispatch thunk of TTRITreeViewAnimating.isAnimated.getter())
        {
          sub_10000C36C(v53, v53[3]);
          v54 = swift_allocObject();
          v55 = v71;
          *(v54 + 16) = v71;
          v56 = v55;
          dispatch thunk of TTRITreeViewAnimating.addAnimations(_:)();
        }

        goto LABEL_18;
      }

      sub_1000079B4(v67, &qword_10076B9C0);
      v42 = v69;
      sub_1000079B4(v68, &qword_10076B9C0);
      (*(v73 + 8))(v43, v37);
    }

    sub_1000079B4(v42, &unk_100771B50);
    v44 = v65;
    goto LABEL_12;
  }

  sub_1000079B4(v27, &unk_1007884E0);
  v31 = v21;
  return sub_1000079B4(v31, &unk_1007884E0);
}

uint64_t sub_1004E42E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_treeCellViewModel;
  swift_beginAccess();
  return sub_10000794C(v3 + v4, a1, &unk_1007884E0);
}

uint64_t sub_1004E43A8(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_treeCellViewDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1004E4418(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *v1;
  v6 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_treeCellViewDelegate;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return sub_10017D654;
}

void sub_1004E45F4(void *a1)
{
  v2 = v1;
  v4 = [v2 accessoryView];
  if (v4)
  {
    v5 = v4;
    sub_100003540(0, &qword_10076B020);
    v6 = a1;
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      [v6 bounds];
      v10 = *&v6[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_gridView];
      if (v10)
      {
        v11 = v8;
        v12 = v9;
        [v10 intrinsicContentSize];
        if (v14 != v11 || v13 != v12)
        {
          [v6 frame];
          [v6 setFrame:?];

          [v2 setNeedsLayout];
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1004E4748(void *a1, void *a2)
{
  v4 = [a1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  LODWORD(v4) = UIContentSizeCategory.isAccessibilityCategory.getter() & 1;
  v6 = [a2 preferredContentSizeCategory];
  LODWORD(v5) = UIContentSizeCategory.isAccessibilityCategory.getter() & 1;

  if (v4 != v5)
  {
    *(a1 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_needsUpdateGridSubviewRows) = 1;

    [a1 setNeedsLayout];
  }
}

void sub_1004E482C()
{
  v1 = v0 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityCount;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = (v0 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityGroupName);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_treeCellViewModel;
  v4 = type metadata accessor for TTRITreeViewCellModel();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_treeCellViewDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_leadingControl) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_unitTest_forceLargeTextLayout) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityAdditionalLabelAttributes) = 0;
  v5 = v0 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_totalIndentation;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_needsUpdateGridSubviewRows) = 1;
  *(v0 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell____lazy_storage___fillerView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1004E4980(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004E49D0()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  v13 = sub_100058000(&unk_100776BC0);
  __chkstk_darwin(v13 - 8);
  v15 = &v26 - v14;
  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = &unk_1007A8000;
  if (Strong)
  {
    v29 = v2;
    v27 = v3;
    swift_getObjectType();
    v28 = v5;
    v18 = v10;
    v19 = v12;
    v20 = v7;
    v21 = v6;
    v22 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_viewModel;
    swift_beginAccess();
    v23 = v0 + v22;
    v6 = v21;
    v7 = v20;
    v12 = v19;
    v10 = v18;
    sub_100277260(v23, v15);
    v2 = v29;
    v3 = v27;
    v5 = v28;
    dispatch thunk of TTRRemindersListEditableSectionNamePresenterDelegate.update(viewModel:)();
    swift_unknownObjectRelease();
    sub_1000079B4(v15, &unk_100776BC0);
    v17 = &unk_1007A8000;
  }

  v24 = v17[269];
  swift_beginAccess();
  result = (*(v3 + 48))(v1 + v24, 1, v2);
  if (!result)
  {
    (*(v3 + 16))(v5, v1 + v24, v2);
    TTRRemindersListEditableSectionNameViewModel.item.getter();
    (*(v3 + 8))(v5, v2);
    (*(v7 + 32))(v12, v10, v6);
    swift_getObjectType();
    dispatch thunk of TTRRemindersListEditableSectionNameEditingPresenterType.updateItemAfterStateChangeIfNeeded(viewModelItem:)();
    return (*(v7 + 8))(v12, v6);
  }

  return result;
}

uint64_t sub_1004E4D04()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item.SectionCasesItem();
  v28 = *(v1 - 8);
  v29 = v1;
  __chkstk_darwin(v1);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v26 = *(v4 - 8);
  v27 = v4;
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_10076B070);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  v14 = sub_100058000(&qword_100776288);
  __chkstk_darwin(v14);
  v16 = &v25 - v15;
  v17 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_viewModel;
  swift_beginAccess();
  if ((*(v8 + 48))(v0 + v17, 1, v7))
  {
    goto LABEL_4;
  }

  (*(v8 + 16))(v10, v0 + v17, v7);
  TTRRemindersListEditableSectionNameViewModel.item.getter();
  (*(v8 + 8))(v10, v7);
  TTRRemindersListViewModel.Item.sectionCasesOnly.getter();
  (*(v26 + 8))(v6, v27);
  TTRRemindersListViewModel.Item.SectionCasesItem.id.getter();
  (*(v28 + 8))(v3, v29);
  v18 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_1000079B4(v13, &qword_10076B070);
LABEL_4:
    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
    (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
    return 0;
  }

  TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter();
  (*(v19 + 8))(v13, v18);
  v22 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
  v23 = *(v22 - 8);
  (*(v23 + 56))(v16, 0, 1, v22);
  v24 = (*(v23 + 88))(v16, v22);
  if (v24 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.objectID(_:))
  {
    goto LABEL_8;
  }

  if (v24 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.sectionless(_:))
  {
    (*(v23 + 8))(v16, v22);
    return 1;
  }

  if (v24 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.uncommittedEditingSection(_:))
  {
LABEL_8:
    (*(v23 + 8))(v16, v22);
  }

  else if (v24 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.unknown(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  return 0;
}

uint64_t sub_1004E5200()
{
  v1 = type metadata accessor for TTRIReminderCellTitleEditingEvent();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  dispatch thunk of TTRRemindersListEditableSectionNameEditingPresenterType.requestHandleBeginEditingDisplayName()();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v0 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_layoutStyle);
    if (v5 == 2)
    {
      v6 = 0;
      v7 = 0;
      v8 = 1;
    }

    else
    {
      v6 = (v5 & 1) != 0;
      if (v5)
      {
        v7 = 3;
      }

      else
      {
        v7 = 0;
      }

      v8 = (v5 & 1) == 0;
    }

    sub_1002769C4(v7, v8, v6);
    swift_unknownObjectRelease();
  }

  (*(v2 + 104))(v4, enum case for TTRIReminderCellTitleEditingEvent.editingDidBegin(_:), v1);
  sub_1004E5430(v4);
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1004E5374(char a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = *(v1 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_layoutStyle);
  if (v5 == 2 || (v5 & 1) == 0)
  {
    if (a1)
    {
      v7 = 0;
      v8 = 0;
      v6 = 1;
      goto LABEL_10;
    }

LABEL_9:
    v7 = 0;
    v8 = *(result + OBJC_IVAR____TtC9Reminders50TTRIRemindersListEditableSectionNameViewController_previousLineIndexWhereClippingBegins);
    v6 = *(v4 + OBJC_IVAR____TtC9Reminders50TTRIRemindersListEditableSectionNameViewController_previousLineIndexWhereClippingBegins + 8);
    goto LABEL_10;
  }

  if ((a1 & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = 0;
  v7 = 1;
  v8 = 3;
LABEL_10:
  sub_1002769C4(v8, v6, v7);

  return swift_unknownObjectRelease();
}

uint64_t sub_1004E5430(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(v1, &off_10072C5A8, a1, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1004E5D4C(v1, a1, result);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004E54EC()
{
  v1 = type metadata accessor for TTRIReminderCellTitleEditingEvent();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, enum case for TTRIReminderCellTitleEditingEvent.editingChanged(_:), v1, v3);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v0 + 40);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(v0, &off_10072C5A8, v5, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1004E5D4C(v0, v5, Strong);
    swift_unknownObjectRelease();
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1004E564C()
{
  v0 = type metadata accessor for TTRIReminderCellTitleEditingEvent();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_unknownObjectWeakLoadStrong() || (swift_getObjectType(), dispatch thunk of TTRRemindersListEditableSectionNamePresenterDelegate.currentText.getter(), v5 = v4, swift_unknownObjectRelease(), !v5))
  {
  }

  swift_getObjectType();
  dispatch thunk of TTRRemindersListEditableSectionNameEditingPresenterType.requestEndEditingDisplayName(newDisplayName:listLayout:)();

  sub_1004E5374(0);
  (*(v1 + 104))(v3, enum case for TTRIReminderCellTitleEditingEvent.editingDidEnd(_:), v0);
  sub_1004E5430(v3);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1004E57E8()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);
  sub_10003B788(v0 + 48);
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_viewModel, &unk_100776BC0);

  swift_unknownObjectRelease();
  sub_100004758(v0 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_router);
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_listLayout;
  v2 = type metadata accessor for TTRRemindersListLayout();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1004E58C0()
{
  sub_1004E57E8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIRemindersListEditableSectionNamePresenter()
{
  result = qword_100788558;
  if (!qword_100788558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004E596C()
{
  sub_1004E5A6C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TTRRemindersListLayout();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1004E5A6C()
{
  if (!qword_1007859D8)
  {
    type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1007859D8);
    }
  }
}

uint64_t sub_1004E5AC4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_viewModel;
  swift_beginAccess();
  return sub_100277260(v1 + v3, a1);
}

uint64_t sub_1004E5B24()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    dispatch thunk of TTRRemindersListEditableSectionNamePresenterDelegate.endEditing()();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004E5B84()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    dispatch thunk of TTRRemindersListEditableSectionNamePresenterDelegate.setCurrentEditingText(_:)();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004E5C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1004E61C0(v4, a3, a4, result);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004E5C74()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1004E64A8(v0, result);

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1004E5CCC(uint64_t a1)
{
  result = sub_1004E5CF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004E5CF4()
{
  result = qword_100788628;
  if (!qword_100788628)
  {
    type metadata accessor for TTRIRemindersListEditableSectionNamePresenter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788628);
  }

  return result;
}

void sub_1004E5D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v4 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction();
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRIReminderCellTitleEditingEvent();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(a1 + 40);
    ObjectType = swift_getObjectType();
    v17 = (*(v15 + 8))(a1, &off_10072C5A8, ObjectType, v15);
    v19 = v18;
    swift_unknownObjectRelease();
    if (v17)
    {
      v35 = swift_getObjectType();
      v36 = *(v19 + 8);
      *&v34 = v17;
      sub_10008687C(&v34, v37);
      v20 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_internalDeferredItemUpdates;
      v21 = v33;
      swift_beginAccess();
      v29 = *(v12 + 16);
      v29(v14, v21 + v20, v11);
      TTRIShowRemindersDeferredItemUpdates.needsRefreshCellSizes.setter();
      sub_10037AF34(v14);
      (*(v8 + 16))(v10, v32, v7);
      v22 = (*(v8 + 88))(v10, v7);
      if (v22 == enum case for TTRIReminderCellTitleEditingEvent.editingWillBegin(_:))
      {
LABEL_10:
        sub_100004758(v37);
        return;
      }

      if (v22 == enum case for TTRIReminderCellTitleEditingEvent.editingDidBegin(_:))
      {
        sub_10000B0D8(v37, v6);
        v23 = &enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.beginEditing(_:);
LABEL_8:
        (*(v30 + 104))(v6, *v23, v31);
        v29(v14, v33 + v20, v11);
        TTRIShowRemindersDeferredItemUpdates.pendingScrollAction.setter();
        sub_10037AF34(v14);
        goto LABEL_10;
      }

      if (v22 == enum case for TTRIReminderCellTitleEditingEvent.editingChanged(_:))
      {
        v24 = *(sub_100058000(&qword_100780A10) + 48);
        sub_10000B0D8(v37, v6);
        v25 = enum case for TTRIShowRemindersEditableCellScrollingTarget.primaryText(_:);
        v26 = type metadata accessor for TTRIShowRemindersEditableCellScrollingTarget();
        (*(*(v26 - 8) + 104))(&v6[v24], v25, v26);
        v23 = &enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.textChange(_:);
        goto LABEL_8;
      }

      if (v22 == enum case for TTRIReminderCellTitleEditingEvent.editingDidEnd(_:))
      {
        goto LABEL_10;
      }

      if (qword_100767228 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100003E30(v27, qword_100780830);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown editing event", 21, 2);
      __break(1u);
    }
  }
}

uint64_t sub_1004E61C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v24 = a2;
  v25 = a3;
  v5 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_100776BC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v23 - v17;
  v19 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_viewModel;
  swift_beginAccess();
  sub_100277260(a1 + v19, v11);
  if ((*(v6 + 48))(v11, 1, v5))
  {
    return sub_1000079B4(v11, &unk_100776BC0);
  }

  (*(v6 + 16))(v8, v11, v5);
  sub_1000079B4(v11, &unk_100776BC0);
  TTRRemindersListEditableSectionNameViewModel.item.getter();
  (*(v6 + 8))(v8, v5);
  (*(v13 + 32))(v18, v15, v12);
  v21 = *(v23 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v22 = *(v23 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v23 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v21);
  (*(v22 + 1024))(v18, v24, v25, v21, v22);
  return (*(v13 + 8))(v18, v12);
}

uint64_t sub_1004E64A8(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_100776BC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v21 - v15;
  v17 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_viewModel;
  swift_beginAccess();
  sub_100277260(a1 + v17, v9);
  if ((*(v4 + 48))(v9, 1, v3))
  {
    return sub_1000079B4(v9, &unk_100776BC0);
  }

  (*(v4 + 16))(v6, v9, v3);
  sub_1000079B4(v9, &unk_100776BC0);
  TTRRemindersListEditableSectionNameViewModel.item.getter();
  (*(v4 + 8))(v6, v3);
  (*(v11 + 32))(v16, v13, v10);
  v19 = *(v21 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v20 = *(v21 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v21 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v19);
  (*(v20 + 1032))(v16, v19, v20);
  return (*(v11 + 8))(v16, v10);
}

uint64_t sub_1004E6788()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100788630);
  v1 = sub_100003E30(v0, qword_100788630);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1004E6850@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[6];
  if (v3)
  {
    v5 = v1[11];
    v4 = v1[12];
    v6 = v1[9];
    v7 = v1[10];
    v10 = v1 + 7;
    v8 = v1[7];
    v9 = v10[1];
    v11 = v6 & 1;
    v12 = (v6 >> 8) & 1;
    v19[0] = v3;
    v19[1] = v8;
    v19[2] = v9;
    v19[3] = v6;
    v19[4] = v7;
    v19[5] = v5;
    v19[6] = v4;
    result = sub_1004E6A64(v19, &v18);
  }

  else
  {
    if (qword_1007673D0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003E30(v14, qword_100788630);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Should not enter TTRIAboutYourDevicesPresenter if there's no eligible account", v17, 2u);
    }

    result = [objc_opt_self() newObjectID];
    v3 = result;
    v8 = 0;
    v11 = 0;
    LOBYTE(v12) = 0;
    v7 = _swiftEmptyArrayStorage;
    v9 = 0xE000000000000000;
    v5 = _swiftEmptyArrayStorage;
    v4 = _swiftEmptyArrayStorage;
  }

  *a1 = v3;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v11;
  *(a1 + 25) = v12;
  *(a1 + 32) = v7;
  *(a1 + 40) = v5;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1004E69DC()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);
  sub_10014E49C(*(v0 + 48));
  swift_unknownObjectRelease();
  sub_100004758(v0 + 120);

  return swift_deallocClassInstance();
}

uint64_t sub_1004E6A64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076DA58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004E6AE8()
{
  result = qword_100788708;
  if (!qword_100788708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788708);
  }

  return result;
}

uint64_t sub_1004E6B3C(void *a1, void *a2)
{
  swift_getObjectType();
  type metadata accessor for RDIDispatchQueue();
  v4 = static RDIDispatchQueue.storeQueue.getter();
  sub_1000A96A0();
  static OS_dispatch_queue.main.getter();
  type metadata accessor for REMContactsProvider();
  swift_allocObject();
  v5 = v4;
  REMContactsProvider.init(contactStoreCreator:queue:backgroundQueue:)();
  type metadata accessor for TTRReminderLocationOptionsProvider();
  swift_allocObject();

  v6 = a2;
  v7 = a1;
  TTRReminderLocationOptionsProvider.init(store:meCardProvider:geoService:)();
  type metadata accessor for TTRLocationQuickPicksInteractor();
  swift_allocObject();
  v8 = v6;

  v9 = TTRLocationQuickPicksInteractor.init(geoService:locationOptionsProvider:)();

  return v9;
}

uint64_t sub_1004E6CD8()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100788710);
  v1 = sub_100003E30(v0, qword_100788710);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004E6DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;

  return _swift_task_switch(sub_1004E6E44, 0, 0);
}

uint64_t sub_1004E6E44()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = [v2 store];
  v4 = [v2 objectID];
  if (v1 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v0[2] = 0;
  v6 = [v3 createShareForListWithID:v4 appIconData:isa error:v0 + 2];

  v7 = v0[2];
  if (v7)
  {
    v7;

LABEL_6:
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }

  if (!v6)
  {
    if (qword_1007673D8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_100788710);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to create share for list", v14, 2u);
    }

    sub_1004E8380();
    swift_allocError();
    goto LABEL_6;
  }

  v10 = v0[1];

  return v10(v6);
}

void sub_1004E70C0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1007673D8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003E30(v5, qword_100788710);
    swift_errorRetain();

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v8 = 136315394;
      *(v8 + 4) = sub_100004060(a2, a3, &v12);
      *(v8 + 12) = 2080;
      swift_getErrorValue();
      v9 = Error.localizedDescription.getter();
      v11 = sub_100004060(v9, v10, &v12);

      *(v8 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v6, v7, "Could not add share observer for {accountID: %s, error: %s}", v8, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}