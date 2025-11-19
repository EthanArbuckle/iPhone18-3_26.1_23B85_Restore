uint64_t storeEnumTagSinglePayload for ICAttachmentArchiveModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10027BB44()
{
  result = qword_1006C1F10;
  if (!qword_1006C1F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1F10);
  }

  return result;
}

unint64_t sub_10027BB9C()
{
  result = qword_1006C1F18;
  if (!qword_1006C1F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1F18);
  }

  return result;
}

unint64_t sub_10027BBF4()
{
  result = qword_1006C1F20;
  if (!qword_1006C1F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1F20);
  }

  return result;
}

unint64_t sub_10027BC4C()
{
  result = qword_1006C1F28;
  if (!qword_1006C1F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1F28);
  }

  return result;
}

unint64_t sub_10027BCA4()
{
  result = qword_1006C1F30;
  if (!qword_1006C1F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1F30);
  }

  return result;
}

unint64_t sub_10027BCFC()
{
  result = qword_1006C1F38;
  if (!qword_1006C1F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1F38);
  }

  return result;
}

unint64_t sub_10027BD54()
{
  result = qword_1006C1F40;
  if (!qword_1006C1F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1F40);
  }

  return result;
}

unint64_t sub_10027BDAC()
{
  result = qword_1006C1F48;
  if (!qword_1006C1F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1F48);
  }

  return result;
}

unint64_t sub_10027BE04()
{
  result = qword_1006C1F50;
  if (!qword_1006C1F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1F50);
  }

  return result;
}

uint64_t sub_10027BE70(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIListContentConfiguration();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v27[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27[-1] - v9;
  static UIListContentConfiguration.valueCell()();
  v11 = type metadata accessor for UICellConfigurationState();
  v28 = v11;
  v29 = &protocol witness table for UICellConfigurationState;
  v12 = sub_100180240(v27);
  (*(*(v11 - 8) + 16))(v12, a1, v11);
  UIListContentConfiguration.updated(for:)();
  v13 = *(v5 + 8);
  v13(v8, v4);
  sub_100009F60(v27);
  v14 = OBJC_IVAR____TtC11MobileNotes42FolderComposerFilterCellTagsExpandCollapse_hiddenTagCount;
  v15 = *(v2 + OBJC_IVAR____TtC11MobileNotes42FolderComposerFilterCellTagsExpandCollapse_hiddenTagCount);
  v16 = [objc_opt_self() mainBundle];
  if (v15)
  {
    v17 = String._bridgeToObjectiveC()();
    v18 = [v16 localizedStringForKey:v17 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    UIListContentConfiguration.text.setter();
    v27[0] = 43;
    v27[1] = 0xE100000000000000;
    v26 = *(v2 + v14);
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);
  }

  else
  {
    v20 = String._bridgeToObjectiveC()();
    v21 = [v16 localizedStringForKey:v20 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    UIListContentConfiguration.text.setter();
  }

  UIListContentConfiguration.secondaryText.setter();
  v22 = [objc_opt_self() ICTintColor];
  v23 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v23(v27, 0);
  v28 = v4;
  v29 = &protocol witness table for UIListContentConfiguration;
  v24 = sub_100180240(v27);
  (*(v5 + 16))(v24, v10, v4);
  UICollectionViewCell.contentConfiguration.setter();
  return (v13)(v10, v4);
}

id sub_10027C3E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FolderComposerFilterCellTagsExpandCollapse();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10027C4FC()
{
  v1 = [v0 textAttachment];
  v2 = v1;
  if (v1)
  {
    v1 = sub_1000054A4(0, &qword_1006C6820);
  }

  else
  {
    v8[1] = 0;
    v8[2] = 0;
  }

  v8[0] = v2;
  v8[3] = v1;
  v7[3] = sub_10015DA04(&qword_1006BE7A0);
  v7[0] = swift_allocObject();
  sub_10027CA3C(v8, v7[0] + 16);
  v3 = sub_1001C9878(v7);
  sub_100009F60(v7);
  sub_10027CAAC(v8);
  v4 = *&v3[OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_menu];
  if (v4)
  {
    v5 = v4;
    v6 = sub_10027CB14(v3);
    [v6 setMenu:{v5, v7[0]}];
    [v0 setView:v6];

    v3 = v6;
  }
}

double sub_10027C670(double a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for Key(0);
  sub_1001D8FD8();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v30.receiver = v9;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, "attachmentBoundsForAttributes:location:textContainer:proposedLineFragment:position:", isa, a8, a9, a1, a2, a3, a4, a5, a6);
  v21 = v20;

  v22 = [v9 textAttachment];
  if (v22)
  {
    v23 = v22;
    type metadata accessor for InlineMenuButtonTextAttachment();
    v24 = swift_dynamicCastClass();
    if (v24)
    {
      v25 = v24;
      v26 = OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_font;
      [*(v24 + OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_font) descender];
      [*(v25 + v26) lineHeight];
      if (v27 + 8.0 < *(v25 + OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_minimumHeight))
      {
        v28 = *(v25 + v26);
        [v28 lineHeight];
      }
    }
  }

  return v21;
}

uint64_t sub_10027C968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributeContainer();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = *(a2 + OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_font);
  sub_10027CDF0();
  v8 = v7;
  return AttributeContainer.subscript.setter();
}

uint64_t sub_10027CA3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&qword_1006BE7A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10027CAAC(uint64_t a1)
{
  v2 = sub_10015DA04(&qword_1006BE7A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10027CB14(char *a1)
{
  v2 = sub_10015DA04(&qword_1006C1FB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for UIButton.Configuration();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  static UIButton.Configuration.gray()();
  v12 = *&a1[OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_foregroundColor];
  UIButton.Configuration.baseForegroundColor.setter();
  v13 = OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_font;
  [*&a1[OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_font] lineHeight];
  if (v14 + 8.0 < *&a1[OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_minimumHeight])
  {
    [*&a1[v13] lineHeight];
  }

  UIButton.Configuration.contentInsets.setter();
  *(swift_allocObject() + 16) = a1;
  v15 = a1;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v16 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v16 - 8) + 56))(v4, 0, 1, v16);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  sub_1000054A4(0, &qword_1006BDAC8);
  (*(v6 + 16))(v9, v11, v5);
  v17 = UIButton.init(configuration:primaryAction:)();
  [v17 setShowsMenuAsPrimaryAction:1];
  [v17 setChangesSelectionAsPrimaryAction:1];
  (*(v6 + 8))(v11, v5);
  return v17;
}

unint64_t sub_10027CDF0()
{
  result = qword_1006C1FB8;
  if (!qword_1006C1FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1FB8);
  }

  return result;
}

uint64_t sub_10027CE6C()
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
  sub_100025918(v6, static AddLinkAttachmentIntent.title);
  sub_10002597C(v6, static AddLinkAttachmentIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t AddLinkAttachmentIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC698 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static AddLinkAttachmentIntent.title);
}

uint64_t static AddLinkAttachmentIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC698 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static AddLinkAttachmentIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static AddLinkAttachmentIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
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

uint64_t static AddLinkAttachmentIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006C1FC0);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C1FC8);
  __chkstk_darwin(v1);
  sub_10027D64C();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 543450177;
  v2._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C1FD8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 544175136;
  v3._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C1FE0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:_:)();
}

unint64_t sub_10027D64C()
{
  result = qword_1006C1FD0;
  if (!qword_1006C1FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1FD0);
  }

  return result;
}

uint64_t sub_10027D6A0()
{
  swift_getKeyPath();
  sub_10027D64C();
  v0 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  sub_10015DA04(&unk_1006BD390);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100534670;
  *(v1 + 32) = v0;

  v2 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildBlock(_:)();

  return v2;
}

double AddLinkAttachmentIntent.init()@<D0>(_OWORD *a1@<X8>)
{
  sub_10027F308(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

uint64_t (*AddLinkAttachmentIntent.name.modify(uint64_t *a1))()
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
  return sub_10017E594;
}

uint64_t AddLinkAttachmentIntent.url.setter(uint64_t a1)
{
  v2 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v2 - 8);
  sub_1001D9600(a1, &v5 - v3);
  IntentParameter.wrappedValue.setter();
  return sub_1000073B4(a1, &qword_1006BCC20);
}

uint64_t (*AddLinkAttachmentIntent.url.modify(uint64_t *a1))()
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
  return sub_10017E594;
}

uint64_t AddLinkAttachmentIntent.note.setter(uint64_t a1)
{
  v2 = type metadata accessor for NoteEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_10027FEEC(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NoteEntity);
  IntentParameter.wrappedValue.setter();
  return sub_10027FF54(a1, type metadata accessor for NoteEntity);
}

uint64_t (*AddLinkAttachmentIntent.note.modify(uint64_t *a1))()
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
  return sub_10017E594;
}

uint64_t AddLinkAttachmentIntent.insertionRange.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 24) = result;
  *(v3 + 32) = a2;
  *(v3 + 40) = a3 & 1;
  return result;
}

uint64_t (*AddLinkAttachmentIntent.loggingConfiguration.modify(uint64_t *a1))()
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
  *(v2 + 32) = AppDependency.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t AddLinkAttachmentIntent.perform()(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v2[20] = type metadata accessor for AttachmentEntity();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v3 = type metadata accessor for NoteID();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  type metadata accessor for NoteEntity(0);
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_10027DCD8, 0, 0);
}

uint64_t sub_10027DCD8()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  AppDependency.wrappedValue.getter();
  v5 = v0[13];
  v0[29] = [v5 modernManagedObjectContext];

  IntentParameter.wrappedValue.getter();
  (*(v4 + 16))(v2, v1, v3);
  sub_10027FF54(v1, type metadata accessor for NoteEntity);
  AppDependency.wrappedValue.getter();
  v6 = v0[14];
  v0[30] = v6;
  v7 = swift_task_alloc();
  v0[31] = v7;
  *v7 = v0;
  v7[1] = sub_10027DE34;
  v8 = v0[27];

  return sub_100384000(v8, v6);
}

uint64_t sub_10027DE34(uint64_t a1)
{
  v2 = *(*v1 + 240);
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 208);
  v5 = *(*v1 + 200);
  *(*v1 + 256) = a1;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_10027DFAC, 0, 0);
}

uint64_t sub_10027DFAC()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[19];
  v4 = swift_allocObject();
  v0[33] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[3];
  *(v4 + 64) = v3[2];
  *(v4 + 80) = v7;
  *(v4 + 32) = v5;
  *(v4 + 48) = v6;
  v8 = v1;
  v9 = v2;
  sub_10027FEB4(v3, (v0 + 2));
  v10 = swift_task_alloc();
  v0[34] = v10;
  v11 = sub_10015DA04(&unk_1006BFED0);
  *v10 = v0;
  v10[1] = sub_10027E0D0;

  return NSManagedObjectContext.perform<A>(_:)(v0 + 15, sub_10027FE94, v4, v11);
}

uint64_t sub_10027E0D0()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_10027E6EC;
  }

  else
  {
    v2 = sub_10027E204;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10027E204()
{
  v1 = *(v0 + 120);
  *(v0 + 288) = v1;
  if (v1)
  {
    v2 = *(v0 + 232);
    v3 = v1;
    v4 = swift_task_alloc();
    *(v0 + 296) = v4;
    *v4 = v0;
    v4[1] = sub_10027E3E0;
    v5 = *(v0 + 232);
    v6 = *(v0 + 192);

    return AttachmentEntity.init(for:in:)(v6, v3, v5);
  }

  else
  {
    v8 = *(v0 + 256);
    v9 = *(v0 + 232);
    type metadata accessor for ICError(0);
    *(v0 + 136) = 227;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_1002801B8(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_10027E3E0()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_10027E7A0;
  }

  else
  {
    v2 = sub_10027E4F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10027E4F4()
{
  v12 = v0[36];
  v13 = v0[29];
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v14 = v0[32];
  sub_10027FEEC(v2, v1, type metadata accessor for AttachmentEntity);
  v5 = _s11MobileNotes20OpenAttachmentIntentVACycfC_0();
  v7 = v6;
  v9 = v8;
  sub_10027FEEC(v1, v4, type metadata accessor for AttachmentEntity);
  sub_10027FEEC(v4, v3, type metadata accessor for AttachmentEntity);
  IntentParameter.wrappedValue.setter();
  sub_10027FF54(v4, type metadata accessor for AttachmentEntity);
  sub_10027FF54(v1, type metadata accessor for AttachmentEntity);
  v0[10] = v5;
  v0[11] = v7;
  v0[12] = v9;
  sub_1002801B8(&unk_1006C0540, type metadata accessor for AttachmentEntity);
  sub_100020F2C();
  static IntentResult.result<A, B>(value:opensIntent:)();

  sub_10027FF54(v2, type metadata accessor for AttachmentEntity);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10027E6EC()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10027E7A0()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 256);

  v3 = *(v0 + 8);

  return v3();
}

void sub_10027E85C(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v67 = a3;
  v8 = sub_10015DA04(&unk_1006BE0D0);
  __chkstk_darwin(v8 - 8);
  v66 = &v54 - v9;
  v62 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v59 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v64 = *(v14 - 8);
  v65 = v14;
  v15 = __chkstk_darwin(v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v63 = &v54 - v18;
  v19 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v19 - 8);
  v21 = &v54 - v20;
  v22 = type metadata accessor for URL();
  __chkstk_darwin(v22);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_6;
  }

  v57 = v4;
  v58 = v23;
  v56 = a4;
  v26 = a1;
  v55 = a2;
  v27 = [a2 objectWithID:v26];
  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (!v28)
  {

LABEL_6:
    type metadata accessor for ICError(0);
    v68 = 227;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_1002801B8(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    return;
  }

  v29 = v28;
  if ([v28 isPasswordProtectedAndLocked])
  {
    sub_100197CCC();
    swift_allocError();
    v31 = 15;
LABEL_13:
    *v30 = v31;
    swift_willThrow();

    return;
  }

  if (![v29 isEditable])
  {
    sub_100197CCC();
    swift_allocError();
    v31 = 16;
    goto LABEL_13;
  }

  if (![v29 canAddAttachment])
  {
    sub_100197CCC();
    swift_allocError();
    v31 = 35;
    goto LABEL_13;
  }

  v54 = v26;
  IntentParameter.wrappedValue.getter();
  v32 = v58;
  if ((*(v58 + 48))(v21, 1, v22) == 1)
  {
    sub_1000073B4(v21, &qword_1006BCC20);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    (*(v60 + 104))(v61, enum case for LocalizedStringResource.BundleDescription.main(_:), v62);
    v33 = v63;
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    IntentParameter.projectedValue.getter();
    v35 = v64;
    v34 = v65;
    (*(v64 + 16))(v17, v33, v65);
    v36 = v66;
    IntentDialog.init(_:)();
    v37 = type metadata accessor for IntentDialog();
    (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
    type metadata accessor for AppIntentError();
    sub_1002801B8(&unk_1006BFBC0, &type metadata accessor for AppIntentError);
    swift_allocError();
    IntentParameter.needsValueError(_:)();

    sub_1000073B4(v36, &unk_1006BE0D0);
    swift_willThrow();

    (*(v35 + 8))(v33, v34);
  }

  else
  {
    (*(v32 + 32))(v25, v21, v22);
    URL._bridgeToObjectiveC()(v38);
    v40 = v39;
    v41 = [v29 addURLAttachmentWithURL:v39];

    (*(v32 + 8))(v25, v22);
    if (v41)
    {
      v42 = objc_allocWithZone(ICAttachmentInsertionController);
      v43 = v41;
      v44 = v42;
      v45 = v67;
      v46 = [v44 initWithNote:v29];
      v47 = v46;
      v48 = v27;
      if (*(v45 + 40))
      {
        v49 = [v46 addAttachment:v43];
      }

      else
      {
        v49 = [v46 addAttachment:v43 atTextRange:{*(v45 + 24), *(v45 + 32)}];
      }

      v50 = v55;

      v69 = 0;
      if ([v50 save:&v69])
      {
        v51 = v69;
        v52 = [v43 objectID];

        *v56 = v52;
      }

      else
      {
        v53 = v69;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    else
    {

      *v56 = 0;
    }
  }
}

uint64_t (*sub_10027F0EC(uint64_t *a1))()
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
  return sub_10017D9DC;
}

uint64_t sub_10027F168(uint64_t a1)
{
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  v5 = v1[3];
  *(v2 + 48) = v1[2];
  *(v2 + 64) = v5;
  v6 = swift_task_alloc();
  *(v2 + 80) = v6;
  *v6 = v2;
  v6[1] = sub_10027F214;

  return AddLinkAttachmentIntent.perform()(a1);
}

uint64_t sub_10027F214()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10027F308@<X0>(char **a1@<X8>)
{
  v58 = a1;
  v1 = sub_10015DA04(&unk_1006BCAC0);
  __chkstk_darwin(v1 - 8);
  v57 = &v50 - v2;
  v3 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v3 - 8);
  v55 = &v50 - v4;
  v71 = type metadata accessor for InputConnectionBehavior();
  v73 = *(v71 - 8);
  __chkstk_darwin(v71);
  v72 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10015DA04(&unk_1006BE0D0);
  v7 = __chkstk_darwin(v6 - 8);
  v56 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v66 = &v50 - v9;
  v10 = sub_10015DA04(&qword_1006BCB40);
  __chkstk_darwin(v10 - 8);
  v54 = &v50 - v11;
  v12 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v12 - 8);
  v53 = &v50 - v13;
  v14 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Locale();
  __chkstk_darwin(v18 - 8);
  v19 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v19 - 8);
  v20 = type metadata accessor for LocalizedStringResource();
  v68 = v20;
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v59 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10015DA04(&qword_1006BCB48);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v23 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v24 = *(v15 + 104);
  v60 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v51 = v14;
  v24(v17, enum case for LocalizedStringResource.BundleDescription.main(_:), v14);
  v61 = v15 + 104;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24(v17, v23, v14);
  v25 = v53;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v26 = *(v21 + 56);
  v67 = v21 + 56;
  v69 = v26;
  v26(v25, 0, 1, v20);
  v27 = type metadata accessor for String.IntentInputOptions();
  v76 = 0;
  v77 = 0;
  (*(*(v27 - 8) + 56))(v54, 1, 1, v27);
  v63 = type metadata accessor for IntentDialog();
  v28 = *(v63 - 8);
  v29 = *(v28 + 56);
  v64 = v28 + 56;
  v65 = v29;
  v29(v66, 1, 1, v63);
  v70 = enum case for InputConnectionBehavior.default(_:);
  v62 = *(v73 + 104);
  v73 += 104;
  v30 = v71;
  v62(v72);
  v54 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  v52 = sub_10015DA04(&qword_1006BCC28);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v31 = v60;
  v32 = v51;
  v50 = v24;
  v24(v17, v60, v51);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24(v17, v31, v32);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v69(v25, 0, 1, v68);
  v33 = type metadata accessor for URL();
  (*(*(v33 - 8) + 56))(v55, 1, 1, v33);
  v34 = v66;
  v65(v66, 1, 1, v63);
  (v62)(v72, v70, v30);
  v55 = IntentParameter<>.init(title:description:default:requestValueDialog:inputConnectionBehavior:)();
  v52 = sub_10015DA04(&unk_1006BE580);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v35 = v60;
  v36 = v50;
  v50(v17, v60, v32);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v36(v17, v35, v32);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v69(v25, 0, 1, v68);
  v37 = type metadata accessor for NoteEntity(0);
  (*(*(v37 - 8) + 56))(v57, 1, 1, v37);
  v38 = v63;
  v39 = v65;
  v65(v34, 1, 1, v63);
  v39(v56, 1, 1, v38);
  v76 = sub_100270998();
  v77 = v40;
  v78 = v41;
  v79 = v42;
  v80 = v43;
  (v62)(v72, v70, v71);
  sub_1001797CC();
  v44 = IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
  v81 = 1;
  sub_10015DA04(&qword_1006C34B0);
  v74 = 0xD000000000000021;
  v75 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v45 = AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&unk_1006BCA40);
  v74 = 0xD000000000000024;
  v75 = 0x800000010055CF90;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  v47 = v81;
  v48 = v58;
  v49 = v55;
  *v58 = v54;
  v48[1] = v49;
  v48[3] = 0;
  v48[4] = 0;
  v48[2] = v44;
  *(v48 + 40) = v47;
  v48[6] = v45;
  v48[7] = result;
  return result;
}

uint64_t sub_10027FEEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10027FF54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10027FFB8()
{
  result = qword_1006C1FE8;
  if (!qword_1006C1FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1FE8);
  }

  return result;
}

unint64_t sub_100280014()
{
  result = qword_1006C1FF0;
  if (!qword_1006C1FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1FF0);
  }

  return result;
}

unint64_t sub_10028006C()
{
  result = qword_1006C1FF8;
  if (!qword_1006C1FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1FF8);
  }

  return result;
}

uint64_t sub_100280110(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100280158(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002801B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100280200()
{
  v0 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_100025918(v10, static NotesSetting.typeDisplayRepresentation);
  sub_10002597C(v10, static NotesSetting.typeDisplayRepresentation);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v9 + 56))(v2, 1, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t NotesSetting.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_1006BC6A0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return sub_10002597C(v0, static NotesSetting.typeDisplayRepresentation);
}

uint64_t static NotesSetting.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10002597C(v2, static NotesSetting.typeDisplayRepresentation);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t NotesSetting.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6363416C61636F6CLL;
  v2 = 0xD000000000000013;
  if (a1 == 3)
  {
    v2 = 0xD000000000000014;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  v3 = 0xD000000000000010;
  if (a1)
  {
    v3 = 0xD000000000000014;
  }

  if (a1 <= 1u)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1002806AC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MobileNotes0B7SettingO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1002806DC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000746E756FLL;
  v4 = 0x6363416C61636F6CLL;
  v5 = 0x800000010055CBA0;
  v6 = 0xD000000000000013;
  if (v2 == 3)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v5 = 0x800000010055CBC0;
  }

  if (v2 != 2)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0x800000010055CB50;
  v8 = 0xD000000000000010;
  if (*v1)
  {
    v8 = 0xD000000000000014;
    v7 = 0x800000010055CB70;
  }

  if (*v1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v7;
  }

  *a1 = v9;
  a1[1] = v3;
}

Swift::Int sub_10028078C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100280880()
{
  String.hash(into:)();
}

Swift::Int sub_100280960()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100280A50(uint64_t a1)
{
  v2 = sub_100179C4C();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t NotesSetting.debugDescription.getter(unsigned __int8 a1)
{
  v1 = 0x6361206C61636F6CLL;
  v2 = 0xD000000000000016;
  if (a1 == 3)
  {
    v2 = 0xD000000000000015;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  v3 = 0xD000000000000013;
  if (a1)
  {
    v3 = 0xD000000000000017;
  }

  if (a1 <= 1u)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100280B58()
{
  v0 = sub_10015DA04(&unk_1006BEA80);
  __chkstk_darwin(v0 - 8);
  v60 = &v38 - v1;
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v47 = &v38 - v3;
  v59 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v59 - 8);
  __chkstk_darwin(v59);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for LocalizedStringResource();
  v13 = *(v61 - 8);
  __chkstk_darwin(v61);
  sub_10015DA04(&qword_1006C2088);
  v14 = sub_10015DA04(&qword_1006BDD78);
  v15 = *(v14 - 8);
  v44 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v42 = 4 * v44;
  v17 = swift_allocObject();
  v43 = v17;
  *(v17 + 16) = xmmword_100539C20;
  v41 = *(v14 + 48);
  v52 = v14;
  *(v17 + v16) = 0;
  v18 = v17 + v16;
  v49 = v12;
  String.LocalizationValue.init(stringLiteral:)();
  v50 = v9;
  static Locale.current.getter();
  v55 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v4 + 104);
  v56 = v4 + 104;
  v58 = v19;
  v20 = v59;
  v19(v6);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v21 = *(v13 + 56);
  v53 = v13 + 56;
  v54 = v21;
  v22 = v47;
  v21(v47, 1, 1, v61);
  v57 = type metadata accessor for DisplayRepresentation.Image();
  v23 = *(v57 - 8);
  v45 = *(v23 + 56);
  v46 = v23 + 56;
  v45(v60, 1, 1, v57);
  v51 = v18;
  DisplayRepresentation.init(title:subtitle:image:)();
  v24 = v44;
  v41 = *(v14 + 48);
  *(v18 + v44) = 1;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v48 = v6;
  v25 = v6;
  v26 = v55;
  v58(v25, v55, v20);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v27 = v54;
  v54(v22, 1, 1, v61);
  v28 = v57;
  v45(v60, 1, 1, v57);
  DisplayRepresentation.init(title:subtitle:image:)();
  v41 = 2 * v24;
  v39 = (v51 + 2 * v24);
  v40 = *(v52 + 48);
  *v39 = 2;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v58(v48, v26, v59);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v29 = v47;
  v27(v47, 1, 1, v61);
  v30 = v45;
  v45(v60, 1, 1, v28);
  v31 = v29;
  DisplayRepresentation.init(title:subtitle:image:)();
  v32 = v51;
  v33 = (v51 + v41 + v44);
  v44 = *(v52 + 48);
  *v33 = 3;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v58(v48, v55, v59);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v34 = v31;
  v54(v31, 1, 1, v61);
  v35 = v60;
  v30(v60, 1, 1, v57);
  DisplayRepresentation.init(title:subtitle:image:)();
  *(v32 + v42) = 4;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v58(v48, v55, v59);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v54(v34, 1, 1, v61);
  v30(v35, 1, 1, v57);
  DisplayRepresentation.init(title:subtitle:image:)();
  v36 = sub_1001909E8(v43);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static NotesSetting.caseDisplayRepresentations = v36;
  return result;
}

uint64_t *NotesSetting.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_1006BC6A8 != -1)
  {
    swift_once();
  }

  return &static NotesSetting.caseDisplayRepresentations;
}

uint64_t static NotesSetting.caseDisplayRepresentations.getter()
{
  if (qword_1006BC6A8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1002814BC(uint64_t a1)
{
  v2 = sub_100281774();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t _s11MobileNotes0B7SettingO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10064C4F8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100281568()
{
  result = qword_1006C2028;
  if (!qword_1006C2028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2028);
  }

  return result;
}

unint64_t sub_1002815C0()
{
  result = qword_1006C2030;
  if (!qword_1006C2030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2030);
  }

  return result;
}

unint64_t sub_100281618()
{
  result = qword_1006C2038;
  if (!qword_1006C2038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2038);
  }

  return result;
}

unint64_t sub_100281670()
{
  result = qword_1006C2040;
  if (!qword_1006C2040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2040);
  }

  return result;
}

unint64_t sub_1002816C8()
{
  result = qword_1006C2048;
  if (!qword_1006C2048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2048);
  }

  return result;
}

unint64_t sub_10028171C()
{
  result = qword_1006C2050;
  if (!qword_1006C2050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2050);
  }

  return result;
}

unint64_t sub_100281774()
{
  result = qword_1006C2058;
  if (!qword_1006C2058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2058);
  }

  return result;
}

unint64_t sub_10028181C()
{
  result = qword_1006C2060;
  if (!qword_1006C2060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2060);
  }

  return result;
}

unint64_t sub_100281874()
{
  result = qword_1006C2068;
  if (!qword_1006C2068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2068);
  }

  return result;
}

unint64_t sub_1002818CC()
{
  result = qword_1006C2070;
  if (!qword_1006C2070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2070);
  }

  return result;
}

unint64_t sub_100281924()
{
  result = qword_1006C2078;
  if (!qword_1006C2078)
  {
    sub_10017992C(&qword_1006C2080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2078);
  }

  return result;
}

uint64_t LaunchTaskRunner.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*LaunchTaskRunner.delegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___ICLaunchTaskRunner_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_100281AE0;
}

void sub_100281AE0(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id LaunchTaskRunner.__allocating_init(launchTasks:logger:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR___ICLaunchTaskRunner_launchTasks] = a1;
  v6 = OBJC_IVAR___ICLaunchTaskRunner_logger;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a2, v7);
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, "init");
  (*(v8 + 8))(a2, v7);
  return v9;
}

id LaunchTaskRunner.init(launchTasks:logger:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___ICLaunchTaskRunner_launchTasks] = a1;
  v6 = OBJC_IVAR___ICLaunchTaskRunner_logger;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v2[v6], a2, v7);
  v11.receiver = v2;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "init");
  (*(v8 + 8))(a2, v7);
  return v9;
}

uint64_t sub_100281EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_100281F44;

  return LaunchTaskRunner.run()();
}

uint64_t sub_100281F44()
{

  return _swift_task_switch(sub_10000AB3C, 0, 0);
}

id _s11MobileNotes16LaunchTaskRunnerC010runDelayedC5Tasks8delegate17completionHandlerAC17CancellationTokenCAA0cdE8Delegate_pSg_ySbYbctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v4 = sub_10015DA04(&qword_1006C2170);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10009A114();
  sub_10015DA04(&qword_1006C2168);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  static Logger.launchTask.getter();
  v13 = type metadata accessor for LaunchTaskRunner();
  v14 = objc_allocWithZone(v13);
  swift_unknownObjectWeakInit();
  *&v14[OBJC_IVAR___ICLaunchTaskRunner_launchTasks] = v12;
  (*(v8 + 16))(&v14[OBJC_IVAR___ICLaunchTaskRunner_logger], v10, v7);
  v27.receiver = v14;
  v27.super_class = v13;
  v15 = objc_msgSendSuper2(&v27, "init");
  (*(v8 + 8))(v10, v7);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  static TaskPriority.low.getter();
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v6, 0, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v18 = v25;
  v17[4] = v15;
  v17[5] = v18;
  v17[6] = a3;
  v19 = v15;

  v20 = sub_10023D268(0, 0, v6, &unk_10053E450, v17);
  v21 = type metadata accessor for LaunchTaskRunner.CancellationToken();
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR___ICLaunchTaskCancellationToken_task] = v20;
  v26.receiver = v22;
  v26.super_class = v21;

  v23 = objc_msgSendSuper2(&v26, "init");

  return v23;
}

uint64_t sub_1002823D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000A600;

  return sub_100281EB0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1002824A8()
{
  v1 = sub_10015DA04(&qword_1006C21C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v18[-1] - v2;
  v4 = type metadata accessor for UIListContentConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FolderComposerFilterCellEntry();
  v21.receiver = v0;
  v21.super_class = v8;
  objc_msgSendSuper2(&v21, "layoutSubviews");
  UICollectionViewCell.contentConfiguration.getter();
  if (!v19)
  {
    sub_1000073B4(v18, &qword_1006C21C8);
    (*(v5 + 56))(v3, 1, 1, v4);
    return sub_1000073B4(v3, &qword_1006C21C0);
  }

  sub_10015DA04(&qword_1006C21D0);
  v9 = swift_dynamicCast();
  (*(v5 + 56))(v3, v9 ^ 1u, 1, v4);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1000073B4(v3, &qword_1006C21C0);
  }

  (*(v5 + 32))(v7, v3, v4);
  [v0 directionalLayoutMargins];
  v11 = v10;
  if (!ICAccessibilityAccessibilityLargerTextSizesEnabled())
  {
    v11 = v11 + 44.0;
  }

  UIListContentConfiguration.directionalLayoutMargins.getter();
  if (v12 != v11)
  {
    v13 = UIListContentConfiguration.directionalLayoutMargins.modify();
    *(v14 + 8) = v11;
    v13(v18, 0);
    v19 = v4;
    v20 = &protocol witness table for UIListContentConfiguration;
    v15 = sub_100180240(v18);
    (*(v5 + 16))(v15, v7, v4);
    UICollectionViewCell.contentConfiguration.setter();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1002827C4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10015DA04(&qword_1006BD9D8);
  __chkstk_darwin(v4 - 8);
  v28 = &v26 - v5;
  v6 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v29 = *(v6 - 8);
  v30 = v6;
  __chkstk_darwin(v6);
  v26 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for UICellAccessory.DisplayedState();
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UIListContentConfiguration();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v26 - v16;
  static UIListContentConfiguration.valueCell()();
  v18 = type metadata accessor for UICellConfigurationState();
  v34 = v18;
  v35 = &protocol witness table for UICellConfigurationState;
  v19 = sub_100180240(v33);
  (*(*(v18 - 8) + 16))(v19, a1, v18);
  UIListContentConfiguration.updated(for:)();
  v31 = *(v12 + 8);
  v31(v15, v11);
  sub_100009F60(v33);
  v32 = v2;
  if (!*(v2 + OBJC_IVAR____TtC11MobileNotes29FolderComposerFilterCellEntry_leadingText + 8))
  {
    ICAccessibilityAccessibilityLargerTextSizesEnabled();
  }

  UIListContentConfiguration.text.setter();
  v20 = v32;

  UIListContentConfiguration.secondaryText.setter();
  v34 = v11;
  v35 = &protocol witness table for UIListContentConfiguration;
  v21 = sub_100180240(v33);
  (*(v12 + 16))(v21, v17, v11);
  UICollectionViewCell.contentConfiguration.setter();
  if (*(v20 + OBJC_IVAR____TtC11MobileNotes29FolderComposerFilterCellEntry_showDisclosure) == 1)
  {
    sub_10015DA04(&unk_1006BD9E0);
    type metadata accessor for UICellAccessory();
    *(swift_allocObject() + 16) = xmmword_100531E30;
    v22 = v27;
    (*(v8 + 104))(v10, enum case for UICellAccessory.DisplayedState.always(_:), v27);
    v23 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v23 - 8) + 56))(v28, 1, 1, v23);
    v24 = v26;
    UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
    static UICellAccessory.disclosureIndicator(displayed:options:)();
    (*(v29 + 8))(v24, v30);
    (*(v8 + 8))(v10, v22);
  }

  UICollectionViewListCell.accessories.setter();
  return (v31)(v17, v11);
}

id sub_100282EF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FolderComposerFilterCellEntry();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100282F9C(uint64_t a1)
{
  v3 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v3 - 8);
  v5 = v46 - v4;
  v6 = _s3TagVMa();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v63 = _swiftEmptyArrayStorage;
  sub_100189644(0, v9 & ~(v9 >> 63), 0);
  v10 = v63;
  if (v55)
  {
    result = __CocoaSet.startIndex.getter();
  }

  else
  {
    result = _HashTable.startBucket.getter();
    v12 = *(a1 + 36);
  }

  v60 = result;
  v61 = v12;
  v62 = v55 != 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
    v51 = v5;
    v52 = a1;
    v13 = 0;
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v14 = a1;
    }

    v48 = a1 + 56;
    v49 = v14;
    v46[1] = v1;
    v47 = a1 + 64;
    v50 = v9;
    while (v13 < v9)
    {
      if (__OFADD__(v13++, 1))
      {
        goto LABEL_42;
      }

      v17 = v60;
      v57 = v61;
      v58 = v10;
      v56 = v62;
      sub_1002CB444(v60, v61, v62, a1);
      v19 = v18;
      v20 = type metadata accessor for Date();
      v21 = *(*(v20 - 8) + 56);
      v22 = 1;
      v23 = v8;
      v21(v8, 1, 1, v20);
      v24 = [v19 creationDate];
      v25 = v51;
      if (v24)
      {
        v26 = v24;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v22 = 0;
      }

      v21(v25, v22, 1, v20);
      v27 = v25;
      v8 = v23;
      sub_10023A078(v27, v23);
      v28 = [v19 displayText];
      if (v28)
      {
        v29 = v28;
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;
      }

      else
      {

        v30 = 0;
        v32 = 0xE000000000000000;
      }

      a1 = v52;
      v9 = v50;
      v33 = &v8[*(v54 + 20)];
      *v33 = v30;
      v33[1] = v32;
      v10 = v58;
      v63 = v58;
      v35 = v58[2];
      v34 = v58[3];
      if (v35 >= v34 >> 1)
      {
        sub_100189644(v34 > 1, v35 + 1, 1);
        v10 = v63;
      }

      v10[2] = v35 + 1;
      result = sub_10024E29C(v8, v10 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v35);
      if (v55)
      {
        if (!v56)
        {
          goto LABEL_47;
        }

        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        sub_10015DA04(&qword_1006C1BE0);
        v15 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v15(v59, 0);
        if (v13 == v9)
        {
LABEL_39:
          sub_1000153F8(v60, v61, v62);
          return v10;
        }
      }

      else
      {
        if (v56)
        {
          goto LABEL_48;
        }

        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        v36 = 1 << *(a1 + 32);
        if (v17 >= v36)
        {
          goto LABEL_43;
        }

        v37 = v17 >> 6;
        v38 = *(v48 + 8 * (v17 >> 6));
        if (((v38 >> v17) & 1) == 0)
        {
          goto LABEL_44;
        }

        if (*(a1 + 36) != v57)
        {
          goto LABEL_45;
        }

        v39 = v38 & (-2 << (v17 & 0x3F));
        if (v39)
        {
          v36 = __clz(__rbit64(v39)) | v17 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v40 = v37 << 6;
          v41 = v37 + 1;
          v42 = (v47 + 8 * v37);
          while (v41 < (v36 + 63) >> 6)
          {
            v44 = *v42++;
            v43 = v44;
            v40 += 64;
            ++v41;
            if (v44)
            {
              result = sub_1000153F8(v17, v57, 0);
              v36 = __clz(__rbit64(v43)) + v40;
              goto LABEL_38;
            }
          }

          result = sub_1000153F8(v17, v57, 0);
        }

LABEL_38:
        v45 = *(a1 + 36);
        v60 = v36;
        v61 = v45;
        v62 = 0;
        if (v13 == v9)
        {
          goto LABEL_39;
        }
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_1002834B0()
{
  v0 = type metadata accessor for Logger();
  sub_100025918(v0, qword_1006C21D8);
  sub_10002597C(v0, qword_1006C21D8);
  return static Logger.archiving.getter();
}

uint64_t sub_1002834FC(void *a1)
{
  v3 = v1;
  v5 = sub_10015DA04(&qword_1006C2240);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10017CC60(a1, a1[3]);
  sub_100284F0C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v10) = *v3;
  v11 = 0;
  sub_10027A9FC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v10) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10) = *(v3 + 40);
    v11 = 3;
    sub_100284F60();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = *(v3 + 48);
    v11 = 4;
    sub_10015DA04(&qword_1006C2258);
    sub_10028504C(&qword_1006C2260, &qword_1006C2268);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = *(v3 + 56);
    v11 = 5;
    sub_10015DA04(&qword_1006C13F0);
    sub_10027AF58(&qword_1006C1E40);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100283818()
{
  v1 = *v0;
  v2 = 0x6E65644965707974;
  v3 = 1701869940;
  v4 = 1936154996;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x696669746E656469;
  if (v1 != 1)
  {
    v5 = 0x656C746974;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002838D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100284230(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100283908(uint64_t a1)
{
  v2 = sub_100284F0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100283944(uint64_t a1)
{
  v2 = sub_100284F0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100283980@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100284440(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

id sub_1002839DC(id a1, uint64_t a2, _BYTE *a3)
{
  v5 = v3;
  if ((*a3 & 1) == 0 || (v9 = [a1 managedObjectContext]) == 0)
  {
LABEL_8:
    ObjectType = swift_getObjectType();
    v14 = a1;
    v16 = (*(a2 + 16))(*(v5 + 8), *(v5 + 16), a3, ObjectType, a2);
    if (!v4)
    {
      v14 = v16;
      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        v18 = v17;
        v14 = v14;
        v19 = v14;
        if ([v18 isRenamable])
        {

          v19 = String._bridgeToObjectiveC()();

          [v18 setTitle:v19];
        }
      }
    }

    return v14;
  }

  v10 = *(v3 + 40);
  if (v10 == 2)
  {

    goto LABEL_8;
  }

  v11 = v9;
  v12 = objc_opt_self();
  v13 = &selRef_localAccountInContext_;
  if ((v10 & 1) == 0)
  {
    v13 = &selRef_cloudKitAccountInContext_;
  }

  v14 = [v12 *v13];

  if (!v14)
  {
    goto LABEL_8;
  }

  return v14;
}

id sub_100283B90(id a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = a1;
  v5 = *(v3 + 16);
  v23 = a1;
  if (!v5)
  {
    goto LABEL_18;
  }

  v7 = 0;
  v8 = v3 + 40;
  v22 = v8;
  do
  {
    v9 = (v8 + 16 * v7);
    v10 = v7;
    while (1)
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v7 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_31;
      }

      if (!*(a2 + 16))
      {
        goto LABEL_6;
      }

      v11 = *(v9 - 1);
      v12 = *v9;

      v13 = sub_1002DF11C(v11, v12);
      if (v14)
      {
        if ([*(*(a2 + 56) + 8 * v13) identifier])
        {
          break;
        }
      }

LABEL_6:
      ++v10;
      v9 += 2;
      if (v7 == v5)
      {
        v4 = v23;
        goto LABEL_18;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    a1 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v4 = v23;
    v8 = v22;
  }

  while (v7 != v5);
LABEL_18:
  a1 = [v4 subFolderIdentifiersOrderedSet];
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_34;
  }

  v16 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    a1 = a1;
    v17 = a1;
    if (!v16)
    {
      break;
    }

    v18 = 0;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        a1 = _swiftEmptyArrayStorage[v18 + 4];
      }

      v19 = a1;
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      [v17 addObject:a1];

      ++v18;
      if (v20 == v16)
      {
        goto LABEL_29;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v21 = a1;
    v16 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v21;
  }

LABEL_29:

  [v23 setSubFolderOrderMergeableDataDirty:1];
  [v23 saveSubFolderMergeableDataIfNeeded];
  return [v23 subFolderIdentifiersOrderedSetDocument];
}

uint64_t sub_100283E30(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x4C41434F4CLL;
  }

  else
  {
    v2 = 0x44554F4C43;
  }

  if (*a2)
  {
    v3 = 0x4C41434F4CLL;
  }

  else
  {
    v3 = 0x44554F4C43;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_100283EB0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100283F20()
{
  String.hash(into:)();
}

Swift::Int sub_100283F74()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100283FE0@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10064C5B8, *a1);

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

void sub_100284040(uint64_t *a1@<X8>)
{
  v2 = 0x44554F4C43;
  if (*v1)
  {
    v2 = 0x4C41434F4CLL;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t sub_100284130()
{
  sub_100285454();
  sub_100285400();

  return ArgumentDecodable<>.init(fromArgument:)();
}

uint64_t sub_1002841B8()
{
  sub_100285454();
  sub_100285400();

  return static ArgumentDecodable<>.typeSummary(forName:)();
}

uint64_t sub_100284230(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1936154996 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010056A310 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100284440@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10015DA04(&qword_1006C2270);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  sub_10017CC60(a1, a1[3]);
  sub_100284F0C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100009F60(a1);
  }

  else
  {
    LOBYTE(v29) = 0;
    sub_10027ACE4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = LOBYTE(v33[0]);
    LOBYTE(v33[0]) = 1;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v11;
    v27 = v10;
    LOBYTE(v33[0]) = 2;
    v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v28 = v13;
    LOBYTE(v29) = 3;
    sub_100284FF8();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v25 = LOBYTE(v33[0]);
    sub_10015DA04(&qword_1006C2258);
    LOBYTE(v29) = 4;
    sub_10028504C(&qword_1006C2280, &qword_1006C1208);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v24 = v9;
    v14 = v33[0];
    sub_10015DA04(&qword_1006C13F0);
    v37 = 5;
    sub_10027AF58(&qword_1006C1E98);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v23 = v38;
    v15 = v24;
    LOBYTE(v29) = v24;
    v17 = v26;
    v16 = v27;
    *(&v29 + 1) = v27;
    *&v30 = v12;
    v18 = v28;
    *(&v30 + 1) = v26;
    *&v31 = v28;
    BYTE8(v31) = v25;
    *&v32 = v14;
    *(&v32 + 1) = v38;
    sub_100284D24(&v29, v33);
    sub_100009F60(a1);
    LOBYTE(v33[0]) = v15;
    v33[1] = v16;
    v33[2] = v12;
    v33[3] = v17;
    v33[4] = v18;
    v34 = v25;
    v35 = v14;
    v36 = v23;
    result = sub_100284D5C(v33);
    v20 = v30;
    *a2 = v29;
    a2[1] = v20;
    v21 = v32;
    a2[2] = v31;
    a2[3] = v21;
  }

  return result;
}

uint64_t sub_100284874(int a1)
{
  if (a1 == 1)
  {
    return 0;
  }

  if (a1 == 3)
  {
    return 1;
  }

  if (qword_1006BC6B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10002597C(v2, qword_1006C21D8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v1 = 2;
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unknown account type — returning nil", v5, 2u);
  }

  else
  {

    return 2;
  }

  return v1;
}

uint64_t sub_100284980@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_100279F6C(a2);
  v5 = [a1 identifier];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v8;
  }

  else
  {
    v7 = 0;
    v39 = 0xE000000000000000;
  }

  v9 = [a1 localizedName];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v11;
  v37 = v10;

  v35 = sub_100284874([a1 accountType]);
  v12 = [a1 hashtags];
  sub_1000054A4(0, &qword_1006C63E0);
  sub_100284CBC();
  v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = sub_100282F9C(v13);

  v15 = sub_10026F868(v14);

  v38 = a1;
  v16 = [a1 subFolderIdentifiersOrderedSet];
  v17 = [v16 allObjects];

  sub_1000054A4(0, &qword_1006C21F0);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v34 = v15;
    if (v19)
    {
      goto LABEL_6;
    }

LABEL_16:

    v22 = _swiftEmptyArrayStorage;
LABEL_17:
    LOBYTE(v41) = 1;
    *(&v41 + 1) = v7;
    *&v42 = v39;
    *(&v42 + 1) = v37;
    *&v43 = v36;
    BYTE8(v43) = v35;
    *&v44 = v34;
    *(&v44 + 1) = v22;
    LOBYTE(v45[0]) = 1;
    v45[1] = v7;
    v45[2] = v39;
    v45[3] = v37;
    v45[4] = v36;
    v46 = v35;
    v47 = v34;
    v48 = v22;
    sub_100284D24(&v41, v40);
    result = sub_100284D5C(v45);
    v31 = v42;
    *a3 = v41;
    a3[1] = v31;
    v32 = v44;
    a3[2] = v43;
    a3[3] = v32;
    return result;
  }

  v19 = _CocoaArrayWrapper.endIndex.getter();
  v34 = v15;
  if (!v19)
  {
    goto LABEL_16;
  }

LABEL_6:
  v45[0] = _swiftEmptyArrayStorage;
  result = sub_100189444(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v33 = v7;
    v21 = 0;
    v22 = v45[0];
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *(v18 + 8 * v21 + 32);
      }

      v24 = v23;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v45[0] = v22;
      v29 = v22[2];
      v28 = v22[3];
      if (v29 >= v28 >> 1)
      {
        sub_100189444((v28 > 1), v29 + 1, 1);
        v22 = v45[0];
      }

      ++v21;
      v22[2] = v29 + 1;
      v30 = &v22[2 * v29];
      v30[4] = v25;
      v30[5] = v27;
    }

    while (v19 != v21);

    v7 = v33;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

unint64_t sub_100284CBC()
{
  result = qword_1006C1770;
  if (!qword_1006C1770)
  {
    sub_1000054A4(255, &qword_1006C63E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1770);
  }

  return result;
}

uint64_t sub_100284D8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100284DD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100284E34(uint64_t a1)
{
  *(a1 + 8) = sub_100284E64();
  result = sub_100284EB8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100284E64()
{
  result = qword_1006C2230;
  if (!qword_1006C2230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2230);
  }

  return result;
}

unint64_t sub_100284EB8()
{
  result = qword_1006C2238;
  if (!qword_1006C2238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2238);
  }

  return result;
}

unint64_t sub_100284F0C()
{
  result = qword_1006C2248;
  if (!qword_1006C2248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2248);
  }

  return result;
}

unint64_t sub_100284F60()
{
  result = qword_1006C2250;
  if (!qword_1006C2250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2250);
  }

  return result;
}

uint64_t sub_100284FB4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s3TagVMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100284FF8()
{
  result = qword_1006C2278;
  if (!qword_1006C2278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2278);
  }

  return result;
}

uint64_t sub_10028504C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10017992C(&qword_1006C2258);
    sub_100284FB4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICAccountArchiveModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ICAccountArchiveModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10028523C()
{
  result = qword_1006C2288;
  if (!qword_1006C2288)
  {
    sub_10017992C(&qword_1006C2290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2288);
  }

  return result;
}

unint64_t sub_1002852A4()
{
  result = qword_1006C2298;
  if (!qword_1006C2298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2298);
  }

  return result;
}

unint64_t sub_1002852FC()
{
  result = qword_1006C22A0;
  if (!qword_1006C22A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C22A0);
  }

  return result;
}

unint64_t sub_100285354()
{
  result = qword_1006C22A8;
  if (!qword_1006C22A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C22A8);
  }

  return result;
}

unint64_t sub_1002853AC()
{
  result = qword_1006C22B0;
  if (!qword_1006C22B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C22B0);
  }

  return result;
}

unint64_t sub_100285400()
{
  result = qword_1006C22B8;
  if (!qword_1006C22B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C22B8);
  }

  return result;
}

unint64_t sub_100285454()
{
  result = qword_1006C22C0;
  if (!qword_1006C22C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C22C0);
  }

  return result;
}

uint64_t OpenFolderIntent.target.setter(uint64_t a1)
{
  v2 = type metadata accessor for FolderEntity();
  __chkstk_darwin(v2 - 8);
  sub_10028671C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return sub_100286780(a1);
}

uint64_t sub_100285548()
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
  sub_100025918(v6, static OpenFolderIntent.title);
  sub_10002597C(v6, static OpenFolderIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t OpenFolderIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC6B8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static OpenFolderIntent.title);
}

uint64_t static OpenFolderIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC6B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static OpenFolderIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static OpenFolderIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
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

uint64_t static OpenFolderIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006C22C8);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C22D0);
  __chkstk_darwin(v1);
  sub_10002116C();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x656874206E65704FLL;
  v2._object = 0xE900000000000020;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C22D8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x7265646C6F6620;
  v3._object = 0xE700000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t (*OpenFolderIntent.target.modify(uint64_t *a1))()
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
  return sub_10017E594;
}

uint64_t (*OpenFolderIntent.loggingConfiguration.modify(uint64_t *a1))()
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
  *(v2 + 32) = AppDependency.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t sub_100285DD4(uint64_t a1)
{
  v2 = type metadata accessor for FolderEntity();
  __chkstk_darwin(v2 - 8);
  sub_10028671C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return sub_100286780(a1);
}

uint64_t (*sub_100285E64(uint64_t *a1))()
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
  return sub_10017D9DC;
}

uint64_t sub_100285ED8()
{
  v0 = sub_10015DA04(&qword_1006C22C8);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C22D0);
  __chkstk_darwin(v1);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x656874206E65704FLL;
  v2._object = 0xE900000000000020;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C22D8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x7265646C6F6620;
  v3._object = 0xE700000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_100286080@<X0>(uint64_t *a1@<X8>)
{
  result = _s11MobileNotes16OpenFolderIntentVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t _s11MobileNotes16OpenFolderIntentVACycfC_0()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v31 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v29 = &v26 - v5;
  v6 = sub_10015DA04(&unk_1006BF9D0);
  __chkstk_darwin(v6 - 8);
  v28 = &v26 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v27 = &v26 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v26 = sub_10015DA04(&unk_1006BCC30);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v27;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for FolderEntity();
  (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v29, 1, 1, v22);
  v23(v30, 1, 1, v22);
  (*(v32 + 104))(v31, enum case for InputConnectionBehavior.default(_:), v33);
  sub_100286964(&qword_1006C45A0);
  v24 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_10015DA04(&unk_1006BCA40);
  v34 = 0xD000000000000024;
  v35 = 0x800000010055CF90;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&qword_1006C34B0);
  v34 = 0xD000000000000021;
  v35 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v24;
}

uint64_t sub_10028671C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FolderEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100286780(uint64_t a1)
{
  v2 = type metadata accessor for FolderEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100286810(uint64_t a1)
{
  result = sub_100286838();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100286838()
{
  result = qword_1006C2310;
  if (!qword_1006C2310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2310);
  }

  return result;
}

unint64_t sub_100286890()
{
  result = qword_1006C2318;
  if (!qword_1006C2318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2318);
  }

  return result;
}

uint64_t sub_100286964(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FolderEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ApplyFormattingIntent.perform()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100286A40, v4, v3);
}

uint64_t sub_100286A40()
{
  v1 = *(v0 + 24);

  v2 = *(v1 + 48);
  if (!v2)
  {
    sub_100197CCC();
    swift_allocError();
    *v16 = 41;
    swift_willThrow();
LABEL_51:
    v21 = *(v0 + 8);
    goto LABEL_52;
  }

  v3 = v2;
  v4 = [v3 note];
  if (!v4)
  {
    goto LABEL_49;
  }

  v5 = v4;
  v6 = [v3 textView];
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  v8 = [v6 ic_selectedRanges];

  sub_100286FCC();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_48:

    goto LABEL_49;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_48;
  }

LABEL_6:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v11 = *(v9 + 32);
  }

  v12 = v11;

  [v12 rangeValue];
  if (v13 < 1)
  {

LABEL_14:
LABEL_49:
    sub_100197CCC();
    swift_allocError();
    *v22 = 41;
    swift_willThrow();
    goto LABEL_50;
  }

  if ([v5 isPasswordProtectedAndLocked])
  {
    sub_100197CCC();
    swift_allocError();
    v15 = 15;
LABEL_21:
    *v14 = v15;
    swift_willThrow();

LABEL_50:
    goto LABEL_51;
  }

  if (![v5 isEditable])
  {
    sub_100197CCC();
    swift_allocError();
    v15 = 16;
    goto LABEL_21;
  }

  IntentParameter.wrappedValue.getter();
  if (*(v0 + 40) > 1u)
  {
    if (*(v0 + 40) != 2)
    {
      goto LABEL_25;
    }

    v17 = &selRef_toggleBoldface;
  }

  else if (*(v0 + 40))
  {
    v17 = &selRef_disableBoldface;
  }

  else
  {
    v17 = &selRef_enableBoldface;
  }

  [v3 *v17];
LABEL_25:
  IntentParameter.wrappedValue.getter();
  if (*(v0 + 40) > 1u)
  {
    if (*(v0 + 40) != 2)
    {
      goto LABEL_32;
    }

    v18 = &selRef_toggleItalics;
  }

  else if (*(v0 + 40))
  {
    v18 = &selRef_disableItalics;
  }

  else
  {
    v18 = &selRef_enableItalics;
  }

  [v3 *v18];
LABEL_32:
  IntentParameter.wrappedValue.getter();
  if (*(v0 + 40) > 1u)
  {
    if (*(v0 + 40) != 2)
    {
      goto LABEL_39;
    }

    v19 = &selRef_toggleUnderline;
  }

  else if (*(v0 + 40))
  {
    v19 = &selRef_disableUnderline;
  }

  else
  {
    v19 = &selRef_enableUnderline;
  }

  [v3 *v19];
LABEL_39:
  IntentParameter.wrappedValue.getter();
  if (*(v0 + 40) <= 1u)
  {
    if (*(v0 + 40))
    {
      v20 = &selRef_disableStrikethrough;
    }

    else
    {
      v20 = &selRef_enableStrikethrough;
    }

    goto LABEL_45;
  }

  if (*(v0 + 40) == 2)
  {
    v20 = &selRef_toggleStrikethrough;
LABEL_45:
    [v3 *v20];
  }

  [v3 updateStyleSelectorStateIfNeededIgnoreTypingAttributes:0];
  static IntentResult.result<>()();

  v21 = *(v0 + 8);
LABEL_52:

  return v21();
}

double ApplyFormattingIntent.init()@<D0>(uint64_t a1@<X8>)
{
  sub_100288A4C(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

unint64_t sub_100286FCC()
{
  result = qword_1006C2348;
  if (!qword_1006C2348)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006C2348);
  }

  return result;
}

uint64_t sub_100287058()
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
  sub_100025918(v6, static ApplyFormattingIntent.title);
  sub_10002597C(v6, static ApplyFormattingIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t static ApplyFormattingIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
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

uint64_t (*ApplyFormattingIntent.bold.modify(uint64_t *a1))()
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
  return sub_10017E594;
}

uint64_t (*ApplyFormattingIntent.italic.modify(uint64_t *a1))()
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
  return sub_10017E594;
}

uint64_t (*ApplyFormattingIntent.underline.modify(uint64_t *a1))()
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
  return sub_10017E594;
}

uint64_t (*ApplyFormattingIntent.strikethrough.modify(uint64_t *a1))()
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
  return sub_10017D9DC;
}

uint64_t (*ApplyFormattingIntent.loggingConfiguration.modify(uint64_t *a1))()
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
  *(v2 + 32) = AppDependency.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t sub_1002878B8()
{
  v0 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_100025918(v10, static ApplyFormattingIntent.ChangeOperationType.typeDisplayRepresentation);
  sub_10002597C(v10, static ApplyFormattingIntent.ChangeOperationType.typeDisplayRepresentation);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v9 + 56))(v2, 1, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_100287C04()
{
  v0 = sub_10015DA04(&unk_1006BEA80);
  __chkstk_darwin(v0 - 8);
  v45 = v36 - v1;
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v43 = v36 - v3;
  v4 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v41 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for LocalizedStringResource();
  v13 = *(v54 - 8);
  __chkstk_darwin(v54);
  sub_10015DA04(&qword_1006C23C0);
  v14 = sub_10015DA04(&qword_1006BDD68);
  v46 = v14;
  v15 = *(*(v14 - 8) + 72);
  v16 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
  v42 = 2 * v15;
  v17 = swift_allocObject();
  v44 = v17;
  *(v17 + 16) = xmmword_100539C40;
  v18 = (v17 + v16);
  v38 = *(v14 + 48);
  *v18 = 0;
  String.LocalizationValue.init(stringLiteral:)();
  v36[1] = v9;
  static Locale.current.getter();
  v53 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v5 + 104);
  v39 = v5 + 104;
  v40 = v19;
  v20 = v41;
  v37 = v4;
  v19(v41);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v21 = *(v13 + 56);
  v50 = v13 + 56;
  v51 = v21;
  v22 = v43;
  v21(v43, 1, 1, v54);
  v48 = type metadata accessor for DisplayRepresentation.Image();
  v23 = *(v48 - 8);
  v47 = *(v23 + 56);
  v49 = v23 + 56;
  v24 = v45;
  v47(v45, 1, 1, v48);
  v52 = v18;
  v25 = v22;
  v26 = v24;
  DisplayRepresentation.init(title:subtitle:image:)();
  v27 = v46;
  v38 = *(v46 + 48);
  v18[v15] = 1;
  v36[0] = v12;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v28 = v4;
  v29 = v40;
  v40(v20, v53, v28);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v30 = v25;
  v31 = v25;
  v32 = v54;
  v51(v31, 1, 1, v54);
  v47(v26, 1, 1, v48);
  DisplayRepresentation.init(title:subtitle:image:)();
  v33 = &v52[v42];
  v42 = *(v27 + 48);
  *v33 = 2;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v29(v20, v53, v37);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v51(v30, 1, 1, v32);
  v47(v26, 1, 1, v48);
  DisplayRepresentation.init(title:subtitle:image:)();
  v34 = sub_100190BD0(v44);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static ApplyFormattingIntent.ChangeOperationType.caseDisplayRepresentations = v34;
  return result;
}

uint64_t *ApplyFormattingIntent.ChangeOperationType.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_1006BC6D0 != -1)
  {
    swift_once();
  }

  return &static ApplyFormattingIntent.ChangeOperationType.caseDisplayRepresentations;
}

uint64_t static ApplyFormattingIntent.ChangeOperationType.caseDisplayRepresentations.getter()
{
  if (qword_1006BC6D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static ApplyFormattingIntent.ChangeOperationType.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_1006BC6D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static ApplyFormattingIntent.ChangeOperationType.caseDisplayRepresentations = a1;
}

uint64_t (*static ApplyFormattingIntent.ChangeOperationType.caseDisplayRepresentations.modify())()
{
  if (qword_1006BC6D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t ApplyFormattingIntent.ChangeOperationType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x656C62616E65;
  }

  if (a1 == 1)
  {
    return 0x656C6261736964;
  }

  return 0x656C67676F74;
}

uint64_t sub_100288494(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x656C6261736964;
  if (v2 != 1)
  {
    v4 = 0x656C67676F74;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656C62616E65;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x656C6261736964;
  if (*a2 != 1)
  {
    v8 = 0x656C67676F74;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656C62616E65;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
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

unint64_t sub_10028858C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MobileNotes21ApplyFormattingIntentV19ChangeOperationTypeO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1002885BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x656C6261736964;
  if (v2 != 1)
  {
    v5 = 0x656C67676F74;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C62616E65;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::Int sub_100288614()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002886B0()
{
  String.hash(into:)();
}

Swift::Int sub_100288738()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100288808(uint64_t a1)
{
  v2 = sub_100179A00();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100288854(uint64_t a1)
{
  v2 = sub_100289884();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1002888E8@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_10002597C(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100288998(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = *(v1 + 48);
  v5 = swift_task_alloc();
  *(v2 + 72) = v5;
  *v5 = v2;
  v5[1] = sub_100246FCC;

  return ApplyFormattingIntent.perform()(a1);
}

uint64_t sub_100288A4C@<X0>(uint64_t *a1@<X8>)
{
  v61 = a1;
  v1 = type metadata accessor for InputConnectionBehavior();
  v2 = *(v1 - 8);
  v81 = v1;
  v82 = v2;
  __chkstk_darwin(v1);
  v65 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10015DA04(&unk_1006BE0D0);
  v5 = __chkstk_darwin(v4 - 8);
  v79 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v73 = &v56 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v72 = &v56 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v71 = v16;
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_10015DA04(&qword_1006BCC40);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v21 = *(v11 + 104);
  v66 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v67 = v10;
  v21(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  v69 = v21;
  v68 = v11 + 104;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v57 = v13;
  v21(v13, v20, v10);
  v22 = v72;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v23 = *(v17 + 56);
  v77 = v17 + 56;
  v78 = v23;
  v23(v22, 0, 1, v16);
  v85 = 3;
  v24 = type metadata accessor for IntentDialog();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v70 = v26;
  v27 = v25 + 56;
  v26(v73, 1, 1, v24);
  v26(v79, 1, 1, v24);
  v76 = enum case for InputConnectionBehavior.default(_:);
  v28 = *(v82 + 104);
  v82 += 104;
  v74 = v28;
  v28(v65);
  v75 = sub_100179A00();
  v62 = v19;
  v60 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v29 = v57;
  v30 = v66;
  v31 = v67;
  v32 = v69;
  v69(v57, v66, v67);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32(v29, v30, v31);
  v33 = v72;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v78(v33, 0, 1, v71);
  v85 = 3;
  v34 = v73;
  v35 = v24;
  v63 = v24;
  v36 = v24;
  v37 = v70;
  v64 = v27;
  v70(v73, 1, 1, v36);
  v37(v79, 1, 1, v35);
  v38 = v65;
  v74(v65, v76, v81);
  v39 = v34;
  v59 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v40 = v66;
  v41 = v67;
  v42 = v69;
  v69(v29, v66, v67);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v42(v29, v40, v41);
  v43 = v72;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v78(v43, 0, 1, v71);
  v85 = 3;
  v44 = v63;
  v45 = v70;
  v70(v39, 1, 1, v63);
  v45(v79, 1, 1, v44);
  v74(v38, v76, v81);
  v58 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v46 = v66;
  v47 = v67;
  v48 = v69;
  v69(v29, v66, v67);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v48(v29, v46, v47);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v78(v43, 0, 1, v71);
  v85 = 3;
  v49 = v63;
  v50 = v70;
  v70(v73, 1, 1, v63);
  v50(v79, 1, 1, v49);
  v74(v38, v76, v81);
  v51 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  sub_10015DA04(&qword_1006C34B0);
  v83 = 0xD000000000000021;
  v84 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v52 = AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&unk_1006BCA40);
  v83 = 0xD000000000000024;
  v84 = 0x800000010055CF90;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  v54 = v61;
  v55 = v59;
  *v61 = v60;
  v54[1] = v55;
  v54[2] = v58;
  v54[3] = v51;
  v54[4] = v52;
  v54[5] = result;
  v54[6] = 0;
  return result;
}

unint64_t _s11MobileNotes21ApplyFormattingIntentV19ChangeOperationTypeO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10064C6A8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100289678()
{
  result = qword_1006C2350;
  if (!qword_1006C2350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2350);
  }

  return result;
}

unint64_t sub_1002896D0()
{
  result = qword_1006C2358;
  if (!qword_1006C2358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2358);
  }

  return result;
}

unint64_t sub_100289728()
{
  result = qword_1006C2360;
  if (!qword_1006C2360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2360);
  }

  return result;
}

unint64_t sub_100289780()
{
  result = qword_1006C2368;
  if (!qword_1006C2368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2368);
  }

  return result;
}

unint64_t sub_1002897D8()
{
  result = qword_1006C2370;
  if (!qword_1006C2370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2370);
  }

  return result;
}

unint64_t sub_10028982C()
{
  result = qword_1006C2378;
  if (!qword_1006C2378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2378);
  }

  return result;
}

unint64_t sub_100289884()
{
  result = qword_1006C2380;
  if (!qword_1006C2380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2380);
  }

  return result;
}

unint64_t sub_100289908()
{
  result = qword_1006C2388;
  if (!qword_1006C2388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2388);
  }

  return result;
}

unint64_t sub_100289960()
{
  result = qword_1006C2390;
  if (!qword_1006C2390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2390);
  }

  return result;
}

unint64_t sub_1002899B8()
{
  result = qword_1006C2398;
  if (!qword_1006C2398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2398);
  }

  return result;
}

__n128 sub_100289AE0(uint64_t a1, uint64_t a2)
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

uint64_t sub_100289AFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100289B44(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t SetParagraphStyleIntent.perform()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100289C54, v7, v6);
}

uint64_t sub_100289C54()
{
  v1 = *(v0 + 32);

  if (!v1)
  {
    sub_100197CCC();
    swift_allocError();
    *v12 = 41;
    swift_willThrow();
LABEL_13:
    v14 = *(v0 + 8);
    goto LABEL_14;
  }

  v2 = *(v0 + 32);
  v3 = [v2 note];
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  v5 = [v2 textView];
  if (!v5 || ((v6 = v5, v7 = [v5 ic_selectedRanges], v6, sub_100286FCC(), v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v7, v8 >> 62) ? (v9 = _CocoaArrayWrapper.endIndex.getter()) : (v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v9 < 1))
  {

LABEL_11:
    sub_100197CCC();
    swift_allocError();
    *v13 = 41;
    swift_willThrow();
LABEL_12:

    goto LABEL_13;
  }

  if ([v4 isPasswordProtectedAndLocked])
  {
    sub_100197CCC();
    swift_allocError();
    v11 = 15;
LABEL_20:
    *v10 = v11;
    swift_willThrow();

    goto LABEL_12;
  }

  if (![v4 isEditable])
  {
    sub_100197CCC();
    swift_allocError();
    v11 = 16;
    goto LABEL_20;
  }

  IntentParameter.wrappedValue.getter();
  [v2 setCurrentTextStyle:ParagraphStyle.namedStyle.getter(*(v0 + 48))];
  [v2 updateStyleSelectorStateIfNeededIgnoreTypingAttributes:0];
  static IntentResult.result<>()();

  v14 = *(v0 + 8);
LABEL_14:

  return v14();
}

uint64_t sub_100289F54()
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
  sub_100025918(v6, static SetParagraphStyleIntent.title);
  sub_10002597C(v6, static SetParagraphStyleIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t static SetParagraphStyleIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
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

uint64_t static SetParagraphStyleIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006C23C8);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C23D0);
  __chkstk_darwin(v1);
  sub_10002182C();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x800000010056A490;
  v2._countAndFlagsBits = 0xD000000000000017;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C23D8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t (*SetParagraphStyleIntent.paragraphStyle.modify(uint64_t *a1))()
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
  return sub_10017D9DC;
}

uint64_t (*SetParagraphStyleIntent.loggingConfiguration.modify(uint64_t *a1))()
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
  *(v2 + 32) = AppDependency.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t sub_10028A81C(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A600;

  return SetParagraphStyleIntent.perform()(a1, v4, v6, v7, v5);
}

uint64_t sub_10028A8CC@<X0>(uint64_t *a1@<X8>)
{
  result = _s11MobileNotes23SetParagraphStyleIntentVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_10028A930()
{
  v0 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_100025918(v10, static ParagraphStyle.typeDisplayRepresentation);
  sub_10002597C(v10, static ParagraphStyle.typeDisplayRepresentation);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v9 + 56))(v2, 1, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_10028AC84()
{
  v0 = sub_10015DA04(&unk_1006BEA80);
  __chkstk_darwin(v0 - 8);
  v81 = &v60 - v1;
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v67 = &v60 - v3;
  v74 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for LocalizedStringResource();
  v82 = *(v78 - 8);
  __chkstk_darwin(v78);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015DA04(&qword_1006C2460);
  v14 = sub_10015DA04(&qword_1006BDD58);
  v15 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
  v73 = *(*(v14 - 8) + 72);
  v16 = v73;
  v17 = swift_allocObject();
  v62 = v17;
  *(v17 + 16) = xmmword_10053EEF0;
  v18 = v17 + v15;
  v64 = *(v14 + 48);
  v76 = v14;
  *(v17 + v15) = 0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v72 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v4 + 104);
  v69 = v4 + 104;
  v77 = v19;
  v19(v71);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v20 = *(v82 + 56);
  v82 += 56;
  v80 = v20;
  v21 = v67;
  v20(v67, 1, 1, v78);
  v79 = type metadata accessor for DisplayRepresentation.Image();
  v22 = *(v79 - 8);
  v75 = *(v22 + 56);
  v70 = v22 + 56;
  v75(v81, 1, 1, v79);
  v68 = v18;
  DisplayRepresentation.init(title:subtitle:image:)();
  v61 = v18 + v16;
  v64 = *(v14 + 48);
  *(v18 + v16) = 1;
  v66 = v11;
  String.LocalizationValue.init(stringLiteral:)();
  v23 = v8;
  static Locale.current.getter();
  v24 = v71;
  v25 = v74;
  v77(v71, v72, v74);
  v65 = v13;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v26 = v21;
  v27 = v78;
  v80(v21, 1, 1, v78);
  v28 = v75;
  v75(v81, 1, 1, v79);
  DisplayRepresentation.init(title:subtitle:image:)();
  v64 = 2 * v73;
  v60 = (v68 + 2 * v73);
  v61 = *(v76 + 48);
  *v60 = 2;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v29 = v24;
  v30 = v24;
  v31 = v72;
  v77(v30, v72, v25);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v80(v21, 1, 1, v27);
  v28(v81, 1, 1, v79);
  DisplayRepresentation.init(title:subtitle:image:)();
  v32 = v73;
  v61 = v68 + v64 + v73;
  v33 = v76;
  v64 = *(v76 + 48);
  *v61 = 3;
  String.LocalizationValue.init(stringLiteral:)();
  v63 = v23;
  static Locale.current.getter();
  v34 = v77;
  v77(v29, v31, v74);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v80(v21, 1, 1, v78);
  v35 = v79;
  v75(v81, 1, 1, v79);
  DisplayRepresentation.init(title:subtitle:image:)();
  v64 = 4 * v32;
  v36 = v68;
  v61 = *(v33 + 48);
  *(v68 + 4 * v32) = 4;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v34(v71, v72, v74);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v37 = v78;
  v38 = v80;
  v80(v26, 1, 1, v78);
  v75(v81, 1, 1, v35);
  DisplayRepresentation.init(title:subtitle:image:)();
  v61 = v36 + v64 + v73;
  v64 = *(v76 + 48);
  *v61 = 5;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v39 = v72;
  v40 = v74;
  v41 = v77;
  v77(v71, v72, v74);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v38(v67, 1, 1, v37);
  v42 = v75;
  v75(v81, 1, 1, v79);
  DisplayRepresentation.init(title:subtitle:image:)();
  v43 = v68;
  v61 = v68 + 6 * v73;
  v64 = *(v76 + 48);
  *v61 = 6;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v44 = v71;
  v41(v71, v39, v40);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v45 = v78;
  v80(v67, 1, 1, v78);
  v42(v81, 1, 1, v79);
  DisplayRepresentation.init(title:subtitle:image:)();
  v64 = 8 * v73;
  v46 = v76;
  v61 = *(v76 + 48);
  *(v43 + 7 * v73) = 7;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v47 = v72;
  v48 = v74;
  v77(v44, v72, v74);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v80(v67, 1, 1, v45);
  v49 = v75;
  v75(v81, 1, 1, v79);
  DisplayRepresentation.init(title:subtitle:image:)();
  v50 = v68;
  v60 = (v68 + v64);
  v61 = *(v46 + 48);
  *v60 = 8;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v51 = v71;
  v77(v71, v47, v48);
  v52 = v51;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v53 = v67;
  v80(v67, 1, 1, v78);
  v54 = v81;
  v55 = v79;
  v49(v81, 1, 1, v79);
  v56 = v53;
  DisplayRepresentation.init(title:subtitle:image:)();
  v57 = (v50 + v64 + v73);
  v73 = *(v76 + 48);
  *v57 = 9;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v77(v52, v72, v74);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v80(v56, 1, 1, v78);
  v75(v54, 1, 1, v55);
  DisplayRepresentation.init(title:subtitle:image:)();
  v58 = sub_100190DB8(v62);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static ParagraphStyle.caseDisplayRepresentations = v58;
  return result;
}

uint64_t *ParagraphStyle.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_1006BC6E8 != -1)
  {
    swift_once();
  }

  return &static ParagraphStyle.caseDisplayRepresentations;
}

uint64_t static ParagraphStyle.caseDisplayRepresentations.getter()
{
  if (qword_1006BC6E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static ParagraphStyle.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_1006BC6E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static ParagraphStyle.caseDisplayRepresentations = a1;
}

uint64_t (*static ParagraphStyle.caseDisplayRepresentations.modify())()
{
  if (qword_1006BC6E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t ParagraphStyle.init(namedStyle:)(uint64_t result)
{
  if (result <= 4)
  {
    if (result >= 0)
    {
      return result;
    }

    return 3;
  }

  if (result > 100)
  {
    switch(result)
    {
      case 'e':
        return 7;
      case 'f':
        return 8;
      case 'g':
        return 9;
    }

    return 3;
  }

  if (result != 5)
  {
    if (result == 100)
    {
      return 6;
    }

    return 3;
  }

  return result;
}

uint64_t ParagraphStyle.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x687361447473696CLL;
    v6 = 0x626D754E7473696CLL;
    if (a1 != 8)
    {
      v6 = 0x6F646F547473696CLL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6E6F6974706163;
    if (a1 != 5)
    {
      v7 = 0x6C6C75427473696CLL;
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
    v1 = 0x656C746974;
    v2 = 0x6964616568627573;
    v3 = 2036625250;
    if (a1 != 3)
    {
      v3 = 0x6469576465786966;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x676E6964616568;
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

uint64_t sub_10028BEAC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = ParagraphStyle.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == ParagraphStyle.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

unint64_t sub_10028BF34@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MobileNotes14ParagraphStyleO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10028BF64@<X0>(uint64_t *a1@<X8>)
{
  result = ParagraphStyle.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_10028BF90()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ParagraphStyle.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10028BFF4()
{
  ParagraphStyle.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int sub_10028C048()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ParagraphStyle.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10028C0E0(uint64_t a1)
{
  v2 = sub_100179A54();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10028C12C(uint64_t a1)
{
  v2 = sub_10028CA00();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t _s11MobileNotes23SetParagraphStyleIntentVACycfC_0()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v28 = *(v0 - 8);
  v29 = v0;
  __chkstk_darwin(v0);
  v27 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v26 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v25 = v23 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v24 = v23 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23[1] = sub_10015DA04(&qword_1006BCC50);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v24;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v32 = 10;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v25, 1, 1, v19);
  v20(v26, 1, 1, v19);
  (*(v28 + 104))(v27, enum case for InputConnectionBehavior.default(_:), v29);
  sub_100179A54();
  v21 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  sub_10015DA04(&qword_1006C34B0);
  v30 = 0xD000000000000021;
  v31 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&unk_1006BCA40);
  v30 = 0xD000000000000024;
  v31 = 0x800000010055CF90;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v21;
}

unint64_t _s11MobileNotes14ParagraphStyleO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10064C738, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10028C7F4()
{
  result = qword_1006C23F0;
  if (!qword_1006C23F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C23F0);
  }

  return result;
}

unint64_t sub_10028C84C()
{
  result = qword_1006C23F8;
  if (!qword_1006C23F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C23F8);
  }

  return result;
}

unint64_t sub_10028C8A4()
{
  result = qword_1006C2400;
  if (!qword_1006C2400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2400);
  }

  return result;
}

unint64_t sub_10028C8FC()
{
  result = qword_1006C2408;
  if (!qword_1006C2408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2408);
  }

  return result;
}

unint64_t sub_10028C954()
{
  result = qword_1006C2410;
  if (!qword_1006C2410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2410);
  }

  return result;
}

unint64_t sub_10028C9A8()
{
  result = qword_1006C2418;
  if (!qword_1006C2418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2418);
  }

  return result;
}

unint64_t sub_10028CA00()
{
  result = qword_1006C2420;
  if (!qword_1006C2420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2420);
  }

  return result;
}

unint64_t sub_10028CAA8()
{
  result = qword_1006C2428;
  if (!qword_1006C2428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2428);
  }

  return result;
}

unint64_t sub_10028CB00()
{
  result = qword_1006C2430;
  if (!qword_1006C2430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2430);
  }

  return result;
}

unint64_t sub_10028CB58()
{
  result = qword_1006C2438;
  if (!qword_1006C2438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2438);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParagraphStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ParagraphStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

id sub_10028CFFC()
{
  v1 = *&v0[OBJC_IVAR___ICClearActivityCachesActivity_note];
  [v1 clearReplicaIDsToNotesVersion];
  v2 = String._bridgeToObjectiveC()();
  [v1 updateChangeCountWithReason:v2];

  v3 = [v1 managedObjectContext];
  [v3 ic_save];

  return [v0 activityDidFinish:1];
}

uint64_t sub_10028D0C8(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = type metadata accessor for RealtimeCollaborationSelectionDocument.ParticipantSelection();
  v7 = __chkstk_darwin(v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = _swiftEmptyArrayStorage;
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100189664(0, v23[2] + 1, 1);
          v23 = v40;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          sub_100189664(v25 > 1, v26 + 1, 1);
          v23 = v40;
        }

        v23[2] = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = _swiftEmptyArrayStorage;
LABEL_14:

    return v37;
  }

  return result;
}

void *sub_10028D398(uint64_t a1)
{
  v43 = type metadata accessor for Participant();
  v3 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for UUID();
  v5 = *(v41 - 8);
  __chkstk_darwin(v41);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v8)
  {
    v39 = v7;
    v31 = v1;
    v47 = _swiftEmptyArrayStorage;
    v33 = a1;
    sub_100189684(0, v8, 0);
    v10 = v5;
    v11 = v33;
    v45 = v33 + 56;
    v46 = v47;
    result = _HashTable.startBucket.getter();
    v12 = result;
    v13 = 0;
    v37 = v3 + 8;
    v38 = v3 + 16;
    v40 = v10;
    v35 = v3;
    v36 = v10 + 32;
    v32 = v11 + 64;
    v34 = v8;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v11 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v45 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v44 = *(v11 + 36);
      v18 = v42;
      v17 = v43;
      (*(v3 + 16))(v42, *(v11 + 48) + *(v3 + 72) * v12, v43);
      v19 = v39;
      Participant.id.getter();
      (*(v3 + 8))(v18, v17);
      v20 = v46;
      v47 = v46;
      v22 = v46[2];
      v21 = v46[3];
      if (v22 >= v21 >> 1)
      {
        sub_100189684(v21 > 1, v22 + 1, 1);
        v20 = v47;
      }

      v20[2] = v22 + 1;
      v23 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v46 = v20;
      result = (*(v40 + 32))(v20 + v23 + *(v40 + 72) * v22, v19, v41);
      v14 = 1 << *(v11 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v24 = *(v45 + 8 * v16);
      if ((v24 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      if (v44 != *(v11 + 36))
      {
        goto LABEL_26;
      }

      v25 = v24 & (-2 << (v12 & 0x3F));
      if (v25)
      {
        v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v15 = v34;
        v3 = v35;
      }

      else
      {
        v26 = v16 << 6;
        v27 = v16 + 1;
        v28 = (v32 + 8 * v16);
        v15 = v34;
        v3 = v35;
        while (v27 < (v14 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_1000153F8(v12, v44, 0);
            v14 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        result = sub_1000153F8(v12, v44, 0);
LABEL_19:
        v11 = v33;
      }

      ++v13;
      v12 = v14;
      if (v13 == v15)
      {
        return v46;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_10028D75C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  v32 = a1;
  v28 = a3;
  v38 = sub_10015DA04(&qword_1006BE8D0);
  v6 = __chkstk_darwin(v38);
  v37 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v31 = &v28 - v9;
  v10 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 64);
  v14 = (v11 + 63) >> 6;
  v33 = v8 + 32;
  v34 = v8;
  v29 = (v8 + 8);
  v30 = v8 + 16;
  v35 = a2;

  v16 = 0;
  v17 = v31;
  if (v13)
  {
    while (1)
    {
      v36 = v4;
      v18 = v16;
LABEL_9:
      v19 = v34;
      v20 = v38;
      (*(v34 + 16))(v17, *(v35 + 48) + *(v34 + 72) * (__clz(__rbit64(v13)) | (v18 << 6)), v38);
      v21 = *(v19 + 32);
      v22 = v37;
      v21(v37, v17, v20);
      v23 = v36;
      v24 = v32(v22);
      v4 = v23;
      if (v23)
      {
        (*v29)(v37, v38);
      }

      if (v24)
      {
        break;
      }

      v13 &= v13 - 1;
      result = (*v29)(v37, v38);
      v16 = v18;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v27 = v28;
    v21(v28, v37, v38);
    v26 = v27;
    v25 = 0;
    return (*(v34 + 56))(v26, v25, 1, v38);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v14)
      {

        v25 = 1;
        v26 = v28;
        return (*(v34 + 56))(v26, v25, 1, v38);
      }

      v13 = *(v10 + 8 * v18);
      ++v16;
      if (v13)
      {
        v36 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10028DA28@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  v32 = a1;
  v28 = a3;
  v38 = type metadata accessor for Participant();
  v6 = __chkstk_darwin(v38);
  v37 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v31 = &v28 - v9;
  v10 = a2 + 56;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 56);
  v14 = (v11 + 63) >> 6;
  v33 = v8 + 32;
  v34 = v8;
  v29 = (v8 + 8);
  v30 = v8 + 16;
  v35 = a2;

  v16 = 0;
  v17 = v31;
  if (v13)
  {
    while (1)
    {
      v36 = v4;
      v18 = v16;
LABEL_9:
      v19 = v34;
      v20 = v38;
      (*(v34 + 16))(v17, *(v35 + 48) + *(v34 + 72) * (__clz(__rbit64(v13)) | (v18 << 6)), v38);
      v21 = *(v19 + 32);
      v22 = v37;
      v21(v37, v17, v20);
      v23 = v36;
      v24 = v32(v22);
      v4 = v23;
      if (v23)
      {
        (*v29)(v37, v38);
      }

      if (v24)
      {
        break;
      }

      v13 &= v13 - 1;
      result = (*v29)(v37, v38);
      v16 = v18;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v27 = v28;
    v21(v28, v37, v38);
    v26 = v27;
    v25 = 0;
    return (*(v34 + 56))(v26, v25, 1, v38);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v14)
      {

        v25 = 1;
        v26 = v28;
        return (*(v34 + 56))(v26, v25, 1, v38);
      }

      v13 = *(v10 + 8 * v18);
      ++v16;
      if (v13)
      {
        v36 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10028DCE8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10028DD2C()
{
  v0 = type metadata accessor for Logger();
  sub_100025918(v0, qword_1006C2498);
  sub_10002597C(v0, qword_1006C2498);
  return static Logger.realtimeCollaboration.getter();
}

id RealtimeCollaborationSelectionController.init(editorController:realtimeCollaborationController:)(void *a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_10015DA04(&qword_1006C24C0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v33 - v8;
  v10 = OBJC_IVAR___ICRealtimeCollaborationSelectionController__groupSession;
  v33[1] = 0;
  sub_10015DA04(&qword_1006C24D0);
  Published.init(initialValue:)();
  (*(v7 + 32))(&v2[v10], v9, v6);
  *&v2[OBJC_IVAR___ICRealtimeCollaborationSelectionController_activeParticipantsObservation] = 0;
  *&v2[OBJC_IVAR___ICRealtimeCollaborationSelectionController_activeParticipants] = &_swiftEmptySetSingleton;
  v2[OBJC_IVAR___ICRealtimeCollaborationSelectionController_didScheduleCollaboratorStatusesUpdate] = 0;
  swift_unknownObjectUnownedInit();
  swift_unknownObjectUnownedInit();
  v34.receiver = v2;
  v34.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v34, "init");
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 defaultCenter];
  v15 = qword_1006BC7D0;
  v16 = v13;
  if (v15 != -1)
  {
    swift_once();
  }

  [v14 addObserver:v16 selector:"realtimeCollaborationControllerGroupActivityDidChange:" name:qword_1006EF720 object:a2];

  v17 = [v12 defaultCenter];
  [v17 addObserver:v16 selector:"editorDidChangeSelection:" name:ICNoteEditorViewControllerSelectionDidChangeNotification object:a1];

  v18 = [v12 defaultCenter];
  v19 = ICTextViewLayoutDidChangeNotification;
  v20 = v16;
  v21 = [a1 textView];
  [v18 addObserver:v20 selector:"textViewLayoutDidChange:" name:v19 object:v21];

  v22 = [v12 defaultCenter];
  [v22 addObserver:v20 selector:"tableScrollViewBoundsDidChange:" name:ICTableScrollViewBoundsDidChangeNotification object:0];

  v23 = [v12 defaultCenter];
  v24 = ICNoteDidPerformMergeNotification;
  v25 = v20;
  v26 = [a1 note];
  [v23 addObserver:v25 selector:"noteDidPerformMerge:" name:v24 object:v26];

  v27 = [v12 defaultCenter];
  [v27 addObserver:v25 selector:"tableAttachmentProviderDidMergeTable:" name:ICTableAttachmentProviderDidMergeTable object:0];

  v28 = OBJC_IVAR___ICRealtimeCollaborationController_activeSession;
  swift_beginAccess();
  v29 = *&a2[v28];
  if (v29)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    static Published.subscript.getter();

    v30 = v33[0];
    swift_getKeyPath();
    swift_getKeyPath();
    v33[0] = v29;
    v31 = v25;

    static Published.subscript.setter();
    sub_10028E3CC(v30);
  }

  else
  {
  }

  return v25;
}

void sub_10028E3CC(uint64_t a1)
{
  v61 = a1;
  v2 = sub_10015DA04(&qword_1006C2570);
  v59 = *(v2 - 8);
  __chkstk_darwin(v2);
  v57 = v55 - v3;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v56 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10015DA04(&qword_1006BE0A8);
  __chkstk_darwin(v7);
  v9 = v55 - v8;
  v10 = sub_10015DA04(&unk_1006BE0B0);
  v11 = __chkstk_darwin(v10 - 8);
  v60 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = v55 - v14;
  __chkstk_darwin(v13);
  v17 = v55 - v16;
  swift_getKeyPath();
  swift_getKeyPath();
  v62 = v1;
  static Published.subscript.getter();

  if (!v63)
  {
LABEL_18:
    swift_getKeyPath();
    swift_getKeyPath();
    v45 = v62;
    static Published.subscript.getter();

    if (v63)
    {
    }

    else if (v61)
    {
      if (qword_1006BC6F0 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_10002597C(v46, qword_1006C2498);
      v47 = v45;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v50 = 138412546;
        Strong = swift_unknownObjectUnownedLoadStrong();
        *(v50 + 4) = Strong;
        *v51 = Strong;
        *(v50 + 12) = 2048;
        v53 = swift_unknownObjectUnownedLoadStrong();
        v54 = *&v53[OBJC_IVAR___ICRealtimeCollaborationController_id];

        *(v50 + 14) = v54;
        _os_log_impl(&_mh_execute_header, v48, v49, "%@: SelectionController[%ld]: no group session", v50, 0x16u);
        sub_1000073B4(v51, &qword_1006C1440);
      }

      else
      {

        v48 = v47;
      }

      sub_100290078(&_swiftEmptySetSingleton);
      *(&v47->isa + OBJC_IVAR___ICRealtimeCollaborationSelectionController_activeParticipants) = &_swiftEmptySetSingleton;

      *(&v47->isa + OBJC_IVAR___ICRealtimeCollaborationSelectionController_activeParticipantsObservation) = 0;

      _s11MobileNotes40RealtimeCollaborationSelectionControllerC08realtimedf9DidChangeE5StateyyAA0cdF0CF_0();
    }

    return;
  }

  v55[0] = v2;
  v55[1] = v63;
  GroupSession.id.getter();
  v58 = v5;
  v18 = *(v5 + 56);
  v19 = 1;
  v18(v17, 0, 1, v4);
  if (v61)
  {
    GroupSession.id.getter();
    v19 = 0;
  }

  v20 = v60;
  v18(v15, v19, 1, v4);
  v21 = *(v7 + 48);
  sub_100294900(v17, v9);
  sub_100294900(v15, &v9[v21]);
  v22 = v58;
  v23 = *(v58 + 48);
  if (v23(v9, 1, v4) == 1)
  {
    sub_1000073B4(v15, &unk_1006BE0B0);
    sub_1000073B4(v17, &unk_1006BE0B0);
    if (v23(&v9[v21], 1, v4) == 1)
    {
      sub_1000073B4(v9, &unk_1006BE0B0);
LABEL_17:

      goto LABEL_18;
    }

    goto LABEL_9;
  }

  sub_100294900(v9, v20);
  if (v23(&v9[v21], 1, v4) == 1)
  {
    sub_1000073B4(v15, &unk_1006BE0B0);
    sub_1000073B4(v17, &unk_1006BE0B0);
    (*(v22 + 8))(v20, v4);
LABEL_9:
    sub_1000073B4(v9, &qword_1006BE0A8);
    v24 = v59;
    goto LABEL_10;
  }

  v43 = v56;
  (*(v22 + 32))(v56, &v9[v21], v4);
  sub_100294978(&qword_1006C1820, &type metadata accessor for UUID);
  LODWORD(v60) = dispatch thunk of static Equatable.== infix(_:_:)();
  v44 = *(v22 + 8);
  v44(v43, v4);
  sub_1000073B4(v15, &unk_1006BE0B0);
  sub_1000073B4(v17, &unk_1006BE0B0);
  v44(v20, v4);
  sub_1000073B4(v9, &unk_1006BE0B0);
  v24 = v59;
  if (v60)
  {
    goto LABEL_17;
  }

LABEL_10:
  v25 = v62;
  if (qword_1006BC6F0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10002597C(v26, qword_1006C2498);
  v27 = v25;

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v61 = v31;
    v62 = swift_slowAlloc();
    v63 = v62;
    *v30 = 138412802;
    v32 = swift_unknownObjectUnownedLoadStrong();
    *(v30 + 4) = v32;
    *v31 = v32;
    *(v30 + 12) = 2048;
    v33 = swift_unknownObjectUnownedLoadStrong();
    v34 = *&v33[OBJC_IVAR___ICRealtimeCollaborationController_id];

    *(v30 + 14) = v34;
    *(v30 + 22) = 2080;
    v35 = v56;
    GroupSession.id.getter();
    sub_100294978(&qword_1006C2580, &type metadata accessor for UUID);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    (*(v58 + 8))(v35, v4);
    v39 = sub_100009D88(v36, v38, &v63);

    *(v30 + 24) = v39;
    _os_log_impl(&_mh_execute_header, v28, v29, "%@: SelectionController[%ld]: received group session %s", v30, 0x20u);
    sub_1000073B4(v61, &qword_1006C1440);

    sub_100009F60(v62);
  }

  else
  {
  }

  v40 = v57;
  GroupSession.$activeParticipants.getter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000060B4(&qword_1006C2578, &qword_1006C2570);
  v41 = v55[0];
  v42 = Publisher<>.sink(receiveValue:)();

  (*(v24 + 8))(v40, v41);
  *&v27[OBJC_IVAR___ICRealtimeCollaborationSelectionController_activeParticipantsObservation] = v42;

  _s11MobileNotes40RealtimeCollaborationSelectionControllerC08realtimedf9DidChangeE5StateyyAA0cdF0CF_0();
}

uint64_t sub_10028EE10()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10028EE84(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;

    sub_100290078(v4);
    *&v3[OBJC_IVAR___ICRealtimeCollaborationSelectionController_activeParticipants] = v1;
  }

  return result;
}

void _s11MobileNotes40RealtimeCollaborationSelectionControllerC08realtimedf9DidChangeE5StateyyAA0cdF0CF_0()
{
  v0 = sub_10015DA04(&qword_1006C2560);
  __chkstk_darwin(v0 - 8);
  v2 = &v59 - v1;
  v3 = type metadata accessor for CollaboratorStatus();
  v71 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RealtimeCollaborationSelectionDocument.ParticipantSelection();
  v73 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v72 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v70 = &v59 - v13;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v74 = [Strong authorHighlightsUpdater];

  if (!v74)
  {
    return;
  }

  if ((AuthorHighlightsUpdater.showsCollaboratorStatuses.getter() & 1) == 0)
  {
    goto LABEL_10;
  }

  v68 = v9;
  v15 = swift_unknownObjectUnownedLoadStrong();
  v16 = [v15 note];

  if (!v16)
  {
    goto LABEL_10;
  }

  v69 = [v16 textStorage];

  if (!v69)
  {
    goto LABEL_10;
  }

  v17 = AuthorHighlightsUpdater.authorHighlightsController.getter();
  v18 = [v17 isPerformingHighlightUpdatesForTextStorage:v69];

  if (v18)
  {

    v19 = v69;
LABEL_11:

    return;
  }

  v20 = swift_unknownObjectUnownedLoadStrong();
  v21 = [v20 textView];

  if (v21)
  {
    v22 = [v21 isPerformingHighlightUpdates];

    if (v22)
    {

LABEL_10:
      v19 = v74;
      goto LABEL_11;
    }
  }

  v23 = swift_unknownObjectUnownedLoadStrong();
  v24 = OBJC_IVAR___ICRealtimeCollaborationController_selectionDocument;
  swift_beginAccess();
  v25 = *&v23[v24];
  if (!v25)
  {

LABEL_34:
    AuthorHighlightsUpdater.collaboratorStatuses.setter();
    AuthorHighlightsUpdater.scheduleUpdate(animated:)(0);

    return;
  }

  v26 = v25;
  RealtimeCollaborationSelectionDocument.localParticipantID.getter();

  v27 = v72;
  (*(v72 + 32))(v70, v12, v68);
  v28 = swift_unknownObjectUnownedLoadStrong();
  v29 = OBJC_IVAR___ICRealtimeCollaborationController_selectionDocument;
  swift_beginAccess();
  v30 = *&v28[v29];
  if (!v30)
  {

    (*(v27 + 8))(v70, v68);
    goto LABEL_34;
  }

  v31 = v30;
  v32 = RealtimeCollaborationSelectionDocument.selections.getter();

  if (!*(v32 + 16))
  {

    (*(v72 + 8))(v70, v68);
    goto LABEL_34;
  }

  __chkstk_darwin(v33);
  v34 = v69;
  *(&v59 - 2) = v70;
  *(&v59 - 1) = v34;

  v60 = sub_10028D0C8(sub_1002948C0, (&v59 - 4), v32);
  v35 = sub_10026F9F8(v32, sub_1002949D8, 0);

  v67 = AuthorHighlightsUpdater.collaboratorStatuses.modify();
  v37 = v36;
  v38 = sub_1002932C8(v36, v35);

  v39 = (*v37)[2];
  if (v39 < v38)
  {
    __break(1u);
    goto LABEL_39;
  }

  sub_10030D9BC(v38, v39);

  (v67)(v75, 0);
  v40 = v60;

  v42 = sub_10026F9F8(v41, sub_1002949D8, 0);

  v67 = AuthorHighlightsUpdater.collaboratorStatuses.modify();
  v44 = v43;
  v45 = sub_100293890(v43, v42);

  v46 = (*v44)[2];
  if (v46 < v45)
  {
LABEL_39:
    __break(1u);
    return;
  }

  sub_10030D9BC(v45, v46);

  (v67)(v75, 0);
  v47 = *(v40 + 16);
  if (v47)
  {
    v48 = *(v73 + 16);
    v49 = v40 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
    v65 = *(v73 + 72);
    v66 = v48;
    v73 += 16;
    v64 = (v73 - 8);
    v63 = (v71 + 48);
    v62 = (v71 + 32);
    v67 = _swiftEmptyArrayStorage;
    v50 = v72;
    v48(v8, v49, v6);
    while (1)
    {
      sub_1002908C0(v8, v2);
      (*v64)(v8, v6);
      if ((*v63)(v2, 1, v3) == 1)
      {
        sub_1000073B4(v2, &qword_1006C2560);
      }

      else
      {
        v51 = *v62;
        (*v62)(v5, v2, v3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = v51;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v67 = sub_1001CB4E4(0, v67[2] + 1, 1, v67);
        }

        v53 = v67;
        v55 = v67[2];
        v54 = v67[3];
        if (v55 >= v54 >> 1)
        {
          v53 = sub_1001CB4E4(v54 > 1, v55 + 1, 1, v67);
        }

        v53[2] = v55 + 1;
        v56 = (*(v71 + 80) + 32) & ~*(v71 + 80);
        v67 = v53;
        v61(v53 + v56 + *(v71 + 72) * v55, v5, v3);
        v50 = v72;
      }

      v49 += v65;
      if (!--v47)
      {
        break;
      }

      v66(v8, v49, v6);
    }

    v57 = v67;
  }

  else
  {

    v57 = _swiftEmptyArrayStorage;
    v50 = v72;
  }

  v58 = AuthorHighlightsUpdater.collaboratorStatuses.modify();
  sub_1002DBD9C(v57);
  v58(v75, 0);
  AuthorHighlightsUpdater.update(animated:)(0);

  (*(v50 + 8))(v70, v68);
}

uint64_t sub_10028F7E4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10028F864(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  static Published.subscript.setter();
  sub_10028E3CC(v5);
}

uint64_t sub_10028F950@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006C2538);
  __chkstk_darwin(v2 - 8);
  v53 = &v51 - v3;
  v4 = type metadata accessor for RealtimeCollaborationSelectionDocument.TableSelection();
  v54 = *(v4 - 8);
  v55 = v4;
  __chkstk_darwin(v4);
  v52 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10015DA04(&qword_1006C2540);
  __chkstk_darwin(v6 - 8);
  v8 = &v51 - v7;
  v58 = type metadata accessor for ICTTMergeableString.Location();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10015DA04(&qword_1006C2548);
  __chkstk_darwin(v10 - 8);
  v12 = &v51 - v11;
  v13 = type metadata accessor for ICTTMergeableString.Selection();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v18 = [Strong textView];

  if (v18)
  {
    v19 = a1;
    if ([v18 isFirstResponder])
    {
      ICTextView.selection.getter();

      if ((*(v14 + 48))(v12, 1, v13) == 1)
      {
        v20 = &qword_1006C2548;
LABEL_5:
        v21 = v12;
LABEL_6:
        sub_1000073B4(v21, v20);
LABEL_7:
        v22 = type metadata accessor for RealtimeCollaborationSelectionDocument.Selection();
        return (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
      }

      v35 = *(v14 + 32);
      v35(v16, v12, v13);
      v36 = swift_allocBox();
      v35(v37, v16, v13);
      *a1 = v36;
      v38 = &enum case for RealtimeCollaborationSelectionDocument.Selection.text(_:);
LABEL_20:
      v39 = *v38;
      v40 = type metadata accessor for RealtimeCollaborationSelectionDocument.Selection();
      v41 = *(v40 - 8);
      (*(v41 + 104))(v19, v39, v40);
      return (*(v41 + 56))(v19, 0, 1, v40);
    }

    v24 = swift_unknownObjectUnownedLoadStrong();
    v25 = [v24 auxiliaryResponder];

    if (v25 && (v25, v26 = swift_unknownObjectUnownedLoadStrong(), v27 = [v26 auxiliaryStylingController], v26, v27))
    {
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        v29 = [v28 attachment];
        if (!v29)
        {

          swift_unknownObjectRelease();
          goto LABEL_7;
        }

        v30 = v29;
        ICEditingTextView.location(for:)();
        v31 = v56;
        v32 = v58;
        if ((*(v56 + 48))(v8, 1, v58) == 1)
        {

          swift_unknownObjectRelease();
          v20 = &qword_1006C2540;
          v21 = v8;
          goto LABEL_6;
        }

        v51 = *(v31 + 32);
        v51(v57, v8, v32);
        v12 = v53;
        ICTableAttachmentViewController.collaborationSelection.getter();

        swift_unknownObjectRelease();
        v43 = v54;
        v42 = v55;
        if ((*(v54 + 48))(v12, 1, v55) == 1)
        {
          (*(v31 + 8))(v57, v32);
          v20 = &qword_1006C2538;
          goto LABEL_5;
        }

        v44 = *(v43 + 32);
        v45 = v52;
        v44(v52, v12, v42);
        v46 = sub_10015DA04(&qword_1006C2550);
        v47 = swift_allocBox();
        v49 = v48;
        v50 = *(v46 + 48);
        v51(v48, v57, v32);
        v44(&v49[v50], v45, v42);
        *v19 = v47;
        v38 = &enum case for RealtimeCollaborationSelectionDocument.Selection.table(_:);
        goto LABEL_20;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  v33 = type metadata accessor for RealtimeCollaborationSelectionDocument.Selection();
  v34 = *(*(v33 - 8) + 56);

  return v34(a1, 1, 1, v33);
}

void sub_100290078(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v63 = v4;
  v64 = v5;
  __chkstk_darwin(v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10015DA04(&qword_1006C2530);
  __chkstk_darwin(v8 - 8);
  v10 = (&v60 - v9);
  v11 = OBJC_IVAR___ICRealtimeCollaborationSelectionController_activeParticipants;
  v12 = *(v1 + OBJC_IVAR___ICRealtimeCollaborationSelectionController_activeParticipants);
  v13 = *(v12 + 16);
  v14 = a1[2];
  v61 = v7;
  if (v13 <= v14 >> 3)
  {
    v66[0] = a1;

    sub_10049807C(v12);

    v15 = v66[0];
  }

  else
  {

    v15 = sub_100498B10(v12, a1);
  }

  v16 = v15[2];
  v17 = &qword_1006C2000;
  v62 = v1;
  if (v16)
  {
    if (qword_1006BC6F0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10002597C(v18, qword_1006C2498);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v65 = v10;
      v22 = v11;
      v23 = v21;
      v24 = swift_slowAlloc();
      v66[0] = v24;
      *v23 = 136315138;
      sub_10028D398(v15);

      v25 = Array.description.getter();
      v27 = v26;

      v28 = sub_100009D88(v25, v27, v66);
      v2 = v62;

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v19, v20, "Posting full local selection for added participants {participantIDs: %s}", v23, 0xCu);
      sub_100009F60(v24);

      v11 = v22;
      v17 = &qword_1006C2000;
      v10 = v65;
    }

    else
    {
    }

    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_10028F950(v10);
    RealtimeCollaborationController.postLocalSelection(_:asDelta:)(v10, 0);

    sub_1000073B4(v10, &qword_1006C2530);
  }

  else
  {
  }

  v30 = *(v2 + v11);
  if (a1[2] <= v30[2] >> 3)
  {
    v66[0] = *(v2 + v11);

    sub_10049807C(a1);
    v31 = v66[0];
    if (*(v66[0] + 16))
    {
      goto LABEL_14;
    }

LABEL_26:

    return;
  }

  v31 = sub_100498B10(a1, v30);
  if (!v31[2])
  {
    goto LABEL_26;
  }

LABEL_14:
  if (qword_1006BC6F0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_10002597C(v32, qword_1006C2498);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v66[0] = v36;
    *v35 = 136315138;
    sub_10028D398(v31);
    v37 = Array.description.getter();
    v39 = v38;

    v40 = sub_100009D88(v37, v39, v66);

    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v33, v34, "Removing selections for removed participants {participantIDs: %s}", v35, 0xCu);
    sub_100009F60(v36);
  }

  v41 = sub_10028D398(v31);

  v42 = v41;
  v43 = v41[2];
  v44 = v61;
  if (v43)
  {
    v45 = v17[151];
    v46 = v63;
    v47 = v64 + 16;
    v64 = *(v64 + 16);
    v65 = v45;
    v48 = *(v47 + 64);
    v60 = v42;
    v49 = v42 + ((v48 + 32) & ~v48);
    v50 = *(v47 + 56);
    v51 = (v47 - 8);
    (v64)(v61, v49, v63);
    while (1)
    {
      v57 = swift_unknownObjectUnownedLoadStrong();
      v58 = OBJC_IVAR___ICRealtimeCollaborationController_selectionDocument;
      swift_beginAccess();
      v59 = *&v57[v58];
      if (v59)
      {
        swift_endAccess();
        v52 = v59;
        v53 = RealtimeCollaborationSelectionDocument.removeSelection(forParticipantID:)();
        v55 = v54;

        v56 = v53;
        v46 = v63;
        sub_1001C60E4(v56, v55);

        (*v51)(v44, v46);
      }

      else
      {
        (*v51)(v44, v46);
        swift_endAccess();
      }

      v49 += v50;
      if (!--v43)
      {
        break;
      }

      (v64)(v44, v49, v46);
    }
  }

  _s11MobileNotes40RealtimeCollaborationSelectionControllerC08realtimedf9DidChangeE5StateyyAA0cdF0CF_0();
}

uint64_t sub_1002906C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[1] = a3;
  v3 = type metadata accessor for RealtimeCollaborationSelectionDocument.Selection();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  RealtimeCollaborationSelectionDocument.ParticipantSelection.participantID.getter();
  sub_100294978(&qword_1006C1820, &type metadata accessor for UUID);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    RealtimeCollaborationSelectionDocument.ParticipantSelection.selection.getter();
    v12 = ICTTTextStorage.canResolve(_:)();
    (*(v4 + 8))(v6, v3);
  }

  return v12 & 1;
}

uint64_t sub_1002908C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RealtimeCollaborationSelectionDocument.Selection();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10015DA04(&qword_1006C2568);
  __chkstk_darwin(v6 - 8);
  v8 = v26 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v26[1])
  {
    goto LABEL_15;
  }

  v9 = GroupSession.activeParticipants.getter();

  __chkstk_darwin(v10);
  v26[-2] = a1;
  sub_10028DA28(sub_1002948E0, v9, v8);

  v11 = type metadata accessor for Participant();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    sub_1000073B4(v8, &qword_1006C2568);
    goto LABEL_15;
  }

  Participant.handle.getter();
  (*(v12 + 8))(v8, v11);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v14 = [Strong note];

  if (!v14)
  {

    goto LABEL_15;
  }

  v15 = String._bridgeToObjectiveC()();

  v16 = [v14 participantForHandle:v15];

  if (!v16)
  {
LABEL_15:
    v23 = 1;
    goto LABEL_16;
  }

  v17 = [v16 userIdentity];
  v18 = [v17 userRecordID];

  if (!v18)
  {
    goto LABEL_13;
  }

  v19 = [v18 recordName];

  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  v20 = swift_unknownObjectUnownedLoadStrong();
  v21 = [v20 authorHighlightsController];

  if (!v21)
  {

    goto LABEL_15;
  }

  v22 = [v21 highlightColorForUserID:v19];

  if (!v22)
  {
LABEL_13:

    goto LABEL_15;
  }

  RealtimeCollaborationSelectionDocument.ParticipantSelection.participantID.getter();
  RealtimeCollaborationSelectionDocument.ParticipantSelection.selection.getter();
  CollaboratorStatus.init(participantID:participant:color:selection:)();
  v23 = 0;
LABEL_16:
  v24 = type metadata accessor for CollaboratorStatus();
  return (*(*(v24 - 8) + 56))(a2, v23, 1, v24);
}

void sub_100290D18()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___ICRealtimeCollaborationSelectionController_didScheduleCollaboratorStatusesUpdate;
  if ((v0[OBJC_IVAR___ICRealtimeCollaborationSelectionController_didScheduleCollaboratorStatusesUpdate] & 1) == 0)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v11 = [Strong authorHighlightsUpdater];

    if (v11)
    {
      v12 = v0;
      v13 = AuthorHighlightsUpdater.didScheduleUpdate.getter();

      if ((v13 & 1) == 0 && (v12[v9] & 1) == 0)
      {
        v12[v9] = 1;
        sub_1001B3B1C();
        v20 = static OS_dispatch_queue.main.getter();
        v14 = swift_allocObject();
        *(v14 + 16) = v12;
        aBlock[4] = sub_100294888;
        aBlock[5] = v14;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10028DCE8;
        aBlock[3] = &unk_100653038;
        v19 = _Block_copy(aBlock);
        v15 = v12;
        static DispatchQoS.unspecified.getter();
        v21 = _swiftEmptyArrayStorage;
        sub_100294978(&qword_1006C1130, &type metadata accessor for DispatchWorkItemFlags);
        sub_10015DA04(&unk_1006C3F20);
        sub_1000060B4(&qword_1006C1140, &unk_1006C3F20);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v17 = v19;
        v16 = v20;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v17);

        (*(v2 + 8))(v4, v1);
        (*(v6 + 8))(v8, v5);
      }
    }
  }
}

uint64_t sub_10029105C()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v10 - v5;
  Participant.id.getter();
  RealtimeCollaborationSelectionDocument.ParticipantSelection.participantID.getter();
  v7 = static UUID.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7 & 1;
}

Swift::Void __swiftcall RealtimeCollaborationSelectionController.showSelection(for:)(CKShareParticipant a1)
{
  isa = a1.super.isa;
  v113 = type metadata accessor for ICTTTextStorage.Selection();
  v105 = *(v113 - 8);
  __chkstk_darwin(v113);
  v112 = &v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for RealtimeCollaborationSelectionDocument.Selection();
  v107 = *(v3 - 8);
  v108 = v3;
  __chkstk_darwin(v3);
  v106 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v110 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  location = &v86 - v9;
  v10 = type metadata accessor for RealtimeCollaborationSelectionDocument.ParticipantSelection();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v111 = &v86 - v16;
  v17 = __chkstk_darwin(v15);
  v109 = &v86 - v18;
  v104 = v19;
  __chkstk_darwin(v17);
  v21 = &v86 - v20;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v22 = aBlock[0];
  if (!aBlock[0])
  {
    return;
  }

  v103 = v1;
  v102 = OBJC_IVAR___ICRealtimeCollaborationSelectionController_editorController;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v24 = [Strong note];

  if (!v24 || (v25 = [v24 textStorage], v24, !v25))
  {
LABEL_26:

    return;
  }

  v26 = [(objc_class *)isa userIdentity];
  v27 = [v26 lookupInfo];

  if (!v27)
  {
LABEL_17:

    return;
  }

  v95 = v25;
  v28 = GroupSession.activeParticipants.getter();
  v29 = v27;
  v30 = sub_1002941D8(v28, v29);
  v91 = v29;

  v31 = sub_10028D398(v30);

  v32 = sub_10026FC34(v31);

  v25 = swift_unknownObjectUnownedLoadStrong();
  v33 = OBJC_IVAR___ICRealtimeCollaborationController_selectionDocument;
  swift_beginAccess();
  v34 = *&v25[v33];
  if (!v34)
  {

    goto LABEL_17;
  }

  v35 = v34;
  v100 = RealtimeCollaborationSelectionDocument.selections.getter();

  v36 = v100;
  v37 = *(v100 + 16);
  if (!v37)
  {

    goto LABEL_26;
  }

  v90 = v21;
  v89 = v22;
  v38 = *(v11 + 80);
  v86 = ~v38;
  v87 = v38;
  v93 = v100 + ((v38 + 32) & ~v38);
  v99 = v11 + 16;
  v114 = (v110 + 16);
  isa = (v32 + 56);
  v39 = (v110 + 8);
  v96 = v10;
  v98 = v11;
  v88 = v14;
  v97 = (v11 + 8);
  while (1)
  {
    if (v37 > *(v36 + 16))
    {
      __break(1u);
      return;
    }

    v40 = *(v11 + 72);
    v101 = v37 - 1;
    v41 = *(v11 + 16);
    v92 = v93 + v40 * (v37 - 1);
    v94 = v41;
    (v41)(v111);
    RealtimeCollaborationSelectionDocument.ParticipantSelection.participantID.getter();
    if (*(v32 + 16))
    {
      sub_100294978(&qword_1006C07C8, &type metadata accessor for UUID);
      v42 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v43 = -1 << *(v32 + 32);
      v44 = v42 & ~v43;
      if ((*(isa + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
      {
        break;
      }
    }

LABEL_8:
    (*v39)(location, v5);
    (*v97)(v111, v96);
    v11 = v98;
    v36 = v100;
    v37 = v101;
    if (!v101)
    {

      goto LABEL_34;
    }
  }

  v45 = ~v43;
  v46 = *(v110 + 9);
  v47 = *(v110 + 2);
  while (1)
  {
    v48 = v32;
    v47(v8, *(v32 + 48) + v46 * v44, v5);
    sub_100294978(&qword_1006C1820, &type metadata accessor for UUID);
    v49 = dispatch thunk of static Equatable.== infix(_:_:)();
    v50 = *v39;
    (*v39)(v8, v5);
    if (v49)
    {
      break;
    }

    v44 = (v44 + 1) & v45;
    v32 = v48;
    if (((*(isa + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v50(location, v5);
  v51 = v98;
  v52 = *(v98 + 8);
  v53 = v96;
  v52(v111, v96);
  v54 = v109;
  v94(v109, v92, v53);

  v57 = *(v51 + 32);
  v56 = v51 + 32;
  v55 = v57;
  v58 = v90;
  (v57)(v90, v54, v53);
  v59 = swift_unknownObjectUnownedLoadStrong();
  v60 = [v59 textView];

  if (!v60)
  {
    v52(v58, v53);
LABEL_34:

    goto LABEL_26;
  }

  v110 = v55;
  v111 = v60;
  v114 = v52;
  v61 = v106;
  RealtimeCollaborationSelectionDocument.ParticipantSelection.selection.getter();
  v62 = ICTTTextStorage.resolvedSelections(_:)();
  (*(v107 + 8))(v61, v108);
  v63 = *(v62 + 16);
  if (v63)
  {
    v98 = v56;
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1001896A4(0, v63, 0);
    v64 = aBlock[0];
    v65 = *(v105 + 16);
    v66 = *(v105 + 80);
    v109 = v62;
    v67 = v62 + ((v66 + 32) & ~v66);
    isa = *(v105 + 72);
    location = v65;
    v68 = (v105 + 8);
    do
    {
      v70 = v112;
      v69 = v113;
      (location)(v112, v67, v113);
      v71 = ICTTTextStorage.Selection.range.getter();
      v73 = v72;
      (*v68)(v70, v69);
      aBlock[0] = v64;
      v75 = v64[2];
      v74 = v64[3];
      if (v75 >= v74 >> 1)
      {
        sub_1001896A4((v74 > 1), v75 + 1, 1);
        v64 = aBlock[0];
      }

      v64[2] = v75 + 1;
      v76 = &v64[2 * v75];
      v76[4] = v71;
      v76[5] = v73;
      v67 += isa;
      --v63;
    }

    while (v63);

    v53 = v96;
    v58 = v90;
  }

  else
  {

    v64 = _swiftEmptyArrayStorage;
  }

  v118 = _NSRange.init(union:)(v64);
  v77 = v88;
  v78 = v91;
  if (v118.is_nil)
  {
    v114(v58, v53);

    goto LABEL_26;
  }

  length = v118.value.length;
  location = v118.value.location;
  v94(v88, v58, v53);
  v80 = (v87 + 24) & v86;
  v81 = swift_allocObject();
  v82 = v110;
  v83 = v111;
  *(v81 + 16) = v111;
  v82(v81 + v80, v77, v53);
  aBlock[4] = sub_10029468C;
  aBlock[5] = v81;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10028DCE8;
  aBlock[3] = &unk_100652F98;
  v84 = _Block_copy(aBlock);
  v85 = v83;

  [v85 ic_scrollRangeToVisible:location animated:length completionHandler:{1, v84}];

  _Block_release(v84);

  v114(v58, v53);
}

uint64_t sub_100291D7C()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  RealtimeCollaborationSelectionDocument.ParticipantSelection.participantID.getter();
  ICEditingTextView.expandAvatar(for:animated:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100291EC4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v19 = *(v5 - 8);
  v20 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Notification.userInfo.getter();
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v8;
  *&v23 = 0x70756F7247434352;
  *(&v23 + 1) = 0xEF6E6F6973736553;
  AnyHashable.init<A>(_:)();
  if (!*(v9 + 16) || (v10 = sub_100024E34(aBlock), (v11 & 1) == 0))
  {

    sub_100024F9C(aBlock);
LABEL_9:
    v23 = 0u;
    v24 = 0u;
    goto LABEL_10;
  }

  sub_10000A2A0(*(v9 + 56) + 32 * v10, &v23);
  sub_100024F9C(aBlock);

  if (!*(&v24 + 1))
  {
LABEL_10:
    sub_1000073B4(&v23, &qword_1006BE7A0);
    v12 = 0;
    goto LABEL_11;
  }

  sub_10015DA04(&qword_1006C2558);
  if (swift_dynamicCast())
  {
    v12 = aBlock[0];
  }

  else
  {
    v12 = 0;
  }

LABEL_11:
  sub_1001B3B1C();
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = v12;
  aBlock[4] = sub_1002948B8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10028DCE8;
  aBlock[3] = &unk_100653088;
  v15 = _Block_copy(aBlock);

  v16 = v1;
  static DispatchQoS.unspecified.getter();
  *&v23 = _swiftEmptyArrayStorage;
  sub_100294978(&qword_1006C1130, &type metadata accessor for DispatchWorkItemFlags);
  sub_10015DA04(&unk_1006C3F20);
  sub_1000060B4(&qword_1006C1140, &unk_1006C3F20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v21 + 8))(v4, v2);
  (*(v19 + 8))(v7, v20);
}

uint64_t sub_1002922B4(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  v2 = a1;
  static Published.subscript.setter();
  sub_10028E3CC(v4);
}

uint64_t sub_100292548()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v4 = *(v13 - 8);
  __chkstk_darwin(v13);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001B3B1C();
  v7 = static OS_dispatch_queue.main.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_100294864;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10028DCE8;
  aBlock[3] = &unk_100652FE8;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_100294978(&qword_1006C1130, &type metadata accessor for DispatchWorkItemFlags);
  sub_10015DA04(&unk_1006C3F20);
  sub_1000060B4(&qword_1006C1140, &unk_1006C3F20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v14 + 8))(v3, v1);
  (*(v4 + 8))(v6, v13);
}

uint64_t sub_100292840(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100292930(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  a4();

  return (*(v7 + 8))(v9, v6);
}

unint64_t *sub_100292B80(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    v9 = sub_100293E54(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

uint64_t sub_100292C18(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v27 - v10;
  v12 = *(a1 + 16);
  v13 = v12 == 0;
  v29 = v12;
  if (!v12)
  {
    return 0;
  }

  v27 = v2;
  v28 = v9;
  v35 = v9 + 16;
  v36 = a2 + 56;
  v14 = (v9 + 8);
  v15 = type metadata accessor for CollaboratorStatus();
  v16 = 0;
  v17 = *(v15 - 8);
  v32 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v31 = *(v17 + 72);
  v37 = v11;
  while (1)
  {
    v30 = v13;
    v33 = v16;
    CollaboratorStatus.participantID.getter();
    if (*(a2 + 16))
    {
      sub_100294978(&qword_1006C07C8, &type metadata accessor for UUID);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = -1 << *(a2 + 32);
      v20 = v18 & ~v19;
      if ((*(v36 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        break;
      }
    }

LABEL_3:
    (*v14)(v37, v5);
    v16 = v33 + 1;
    v13 = v33 + 1 == v29;
    if (v33 + 1 == v29)
    {
      return 0;
    }
  }

  v34 = ~v19;
  v21 = *(v28 + 72);
  v22 = *(v28 + 16);
  while (1)
  {
    v23 = a2;
    v22(v8, *(a2 + 48) + v21 * v20, v5);
    sub_100294978(&qword_1006C1820, &type metadata accessor for UUID);
    v24 = dispatch thunk of static Equatable.== infix(_:_:)();
    v25 = *v14;
    (*v14)(v8, v5);
    if (v24)
    {
      break;
    }

    v20 = (v20 + 1) & v34;
    a2 = v23;
    if (((*(v36 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v25(v37, v5);
  return v33;
}

uint64_t sub_100292F68(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = v30 - v10;
  v11 = *(a1 + 16);
  v12 = v11 == 0;
  v33 = v11;
  if (!v11)
  {
    return 0;
  }

  v32 = v2;
  v39 = a2 + 56;
  v37 = v6 + 16;
  v13 = (v6 + 8);
  v14 = type metadata accessor for CollaboratorStatus();
  v15 = 0;
  v16 = *(v14 - 8);
  v17 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v18 = *(v16 + 72);
  v19 = v40;
  v38 = a2;
  v30[2] = v17;
  v31 = v6;
  v30[1] = v18;
  while (1)
  {
    v36 = v15;
    CollaboratorStatus.participantID.getter();
    v20 = *(a2 + 16);
    v35 = v13 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (!v20)
    {
      break;
    }

    sub_100294978(&qword_1006C07C8, &type metadata accessor for UUID);
    v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v22 = -1 << *(a2 + 32);
    v23 = v21 & ~v22;
    if (((*(v39 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
      break;
    }

    v34 = v12;
    v24 = ~v22;
    v25 = *(v6 + 72);
    v26 = *(v6 + 16);
    while (1)
    {
      v26(v9, *(v38 + 48) + v25 * v23, v5);
      sub_100294978(&qword_1006C1820, &type metadata accessor for UUID);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *v13;
      (*v13)(v9, v5);
      if (v27)
      {
        break;
      }

      v23 = (v23 + 1) & v24;
      if (((*(v39 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        v28(v40, v5);
        return v36;
      }
    }

    v19 = v40;
    v28(v40, v5);
    v15 = v36 + 1;
    v12 = v36 + 1 == v33;
    a2 = v38;
    v6 = v31;
    if (v36 + 1 == v33)
    {
      return 0;
    }
  }

  (*v13)(v19, v5);
  return v36;
}

uint64_t sub_1002932C8(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v47 - v9;
  v11 = type metadata accessor for CollaboratorStatus();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v51 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v50 = &v47 - v16;
  __chkstk_darwin(v15);
  v18 = &v47 - v17;
  v49 = a1;
  v19 = *a1;
  v20 = v69;
  result = sub_100292F68(v19, a2);
  if (!v20)
  {
    v63 = v18;
    v53 = result;
    if (v22)
    {
      return v19[2];
    }

    else
    {
      v23 = v53 + 1;
      if (!__OFADD__(v53, 1))
      {
        v47 = 0;
        v61 = v12 + 16;
        v66 = v5 + 16;
        v68 = a2 + 56;
        v69 = (v5 + 8);
        v55 = (v12 + 8);
        v48 = (v12 + 40);
        v24 = v63;
        v52 = v5;
        v70 = v10;
        v67 = v8;
        v56 = v11;
        v54 = v12;
        while (1)
        {
          v27 = v19[2];
          if (v23 == v27)
          {
            return v53;
          }

          if (v23 >= v27)
          {
            break;
          }

          v28 = (*(v12 + 80) + 32) & ~*(v12 + 80);
          v64 = v19;
          v65 = v23;
          v57 = v28;
          v58 = *(v12 + 72);
          v59 = v19 + v28;
          v29 = *(v12 + 16);
          v62 = v58 * v23;
          v60 = v29;
          v29(v24, v19 + v28 + v58 * v23, v11);
          CollaboratorStatus.participantID.getter();
          if (*(a2 + 16) && (sub_100294978(&qword_1006C07C8, &type metadata accessor for UUID), v30 = dispatch thunk of Hashable._rawHashValue(seed:)(), v31 = -1 << *(a2 + 32), v32 = v30 & ~v31, ((*(v68 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
          {
            v33 = ~v31;
            v34 = *(v52 + 72);
            v35 = *(v52 + 16);
            while (1)
            {
              v36 = a2;
              v37 = v67;
              v35(v67, *(a2 + 48) + v34 * v32, v4);
              sub_100294978(&qword_1006C1820, &type metadata accessor for UUID);
              v38 = dispatch thunk of static Equatable.== infix(_:_:)();
              v39 = *v69;
              (*v69)(v37, v4);
              if (v38)
              {
                break;
              }

              v32 = (v32 + 1) & v33;
              a2 = v36;
              if (((*(v68 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
              {
                goto LABEL_6;
              }
            }

            v39(v70, v4);
            v11 = v56;
            v24 = v63;
            result = (*v55)(v63, v56);
            v25 = v65;
            if (v53 == v65)
            {
              a2 = v36;
              v12 = v54;
              v19 = v64;
            }

            else
            {
              if ((v53 & 0x8000000000000000) != 0)
              {
                goto LABEL_33;
              }

              v40 = v64[2];
              if (v53 >= v40)
              {
                goto LABEL_34;
              }

              a2 = v36;
              v41 = v59;
              v42 = v58 * v53;
              v43 = v60;
              result = (v60)(v50, &v59[v58 * v53], v11);
              if (v65 >= v40)
              {
                goto LABEL_35;
              }

              v43(v51, &v41[v62], v11);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v64 = sub_10030D58C(v64);
              }

              v12 = v54;
              v44 = v64 + v57;
              v45 = *v48;
              v46 = v64 + v57 + v42;
              v19 = v64;
              result = (*v48)(v46, v51, v11);
              if (v65 >= v19[2])
              {
                goto LABEL_36;
              }

              result = v45(&v44[v62], v50, v11);
              v25 = v65;
              *v49 = v19;
              v24 = v63;
            }

            v26 = __OFADD__(v53++, 1);
            if (v26)
            {
              goto LABEL_32;
            }
          }

          else
          {
LABEL_6:
            (*v69)(v70, v4);
            v11 = v56;
            v24 = v63;
            result = (*v55)(v63, v56);
            v12 = v54;
            v19 = v64;
            v25 = v65;
          }

          v26 = __OFADD__(v25, 1);
          v23 = v25 + 1;
          if (v26)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100293890(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v51 - v9;
  v11 = type metadata accessor for CollaboratorStatus();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v55 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v56 = &v51 - v16;
  __chkstk_darwin(v15);
  v18 = &v51 - v17;
  v54 = a1;
  v19 = *a1;
  v20 = v73;
  result = sub_100292C18(v19, a2);
  if (!v20)
  {
    v65 = v18;
    v66 = result;
    if (v22)
    {
      return v19[2];
    }

    else
    {
      v23 = v66 + 1;
      if (!__OFADD__(v66, 1))
      {
        v51 = 0;
        v64 = v12 + 16;
        v70 = v5 + 16;
        v72 = a2 + 56;
        v73 = (v5 + 8);
        v58 = (v12 + 8);
        v53 = (v12 + 40);
        v24 = v65;
        v52 = v5;
        v74 = v10;
        v71 = v8;
        v63 = v11;
        v57 = v12;
        while (1)
        {
          v27 = v19[2];
          if (v23 == v27)
          {
            return v66;
          }

          if (v23 >= v27)
          {
            break;
          }

          v28 = (*(v12 + 80) + 32) & ~*(v12 + 80);
          v68 = v19;
          v69 = v23;
          v59 = v28;
          v29 = v19 + v28;
          v60 = *(v12 + 72);
          v30 = v60 * v23;
          v31 = *(v12 + 16);
          v67 = v30;
          v61 = v31;
          v62 = v29;
          v31(v24, &v29[v30], v11);
          CollaboratorStatus.participantID.getter();
          if (*(a2 + 16) && (sub_100294978(&qword_1006C07C8, &type metadata accessor for UUID), v32 = dispatch thunk of Hashable._rawHashValue(seed:)(), v33 = -1 << *(a2 + 32), v34 = v32 & ~v33, ((*(v72 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
          {
            v35 = ~v33;
            v36 = *(v52 + 72);
            v37 = *(v52 + 16);
            while (1)
            {
              v38 = a2;
              v39 = v71;
              v37(v71, *(a2 + 48) + v36 * v34, v4);
              sub_100294978(&qword_1006C1820, &type metadata accessor for UUID);
              v40 = dispatch thunk of static Equatable.== infix(_:_:)();
              v41 = *v73;
              (*v73)(v39, v4);
              if (v40)
              {
                break;
              }

              v34 = (v34 + 1) & v35;
              a2 = v38;
              if (((*(v72 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
              {
                goto LABEL_15;
              }
            }

            v41(v74, v4);
            v24 = v65;
            v11 = v63;
            result = (*v58)(v65, v63);
            a2 = v38;
            v19 = v68;
            v25 = v69;
          }

          else
          {
LABEL_15:
            (*v73)(v74, v4);
            v24 = v65;
            v11 = v63;
            result = (*v58)(v65, v63);
            v42 = v66;
            v25 = v69;
            if (v66 == v69)
            {
              v19 = v68;
            }

            else
            {
              if ((v66 & 0x8000000000000000) != 0)
              {
                goto LABEL_31;
              }

              v43 = v68[2];
              if (v66 >= v43)
              {
                goto LABEL_32;
              }

              v44 = v61;
              v45 = v60 * v66;
              v46 = v62;
              result = (v61)(v56, &v62[v60 * v66], v11);
              if (v69 >= v43)
              {
                goto LABEL_33;
              }

              v44(v55, &v46[v67], v11);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v68 = sub_10030D58C(v68);
              }

              v47 = v68 + v59;
              v48 = *v53;
              v49 = v68 + v59 + v45;
              v19 = v68;
              v11 = v63;
              result = (*v53)(v49, v55, v63);
              if (v69 >= v19[2])
              {
                goto LABEL_34;
              }

              result = v48(&v47[v67], v56, v11);
              v25 = v69;
              *v54 = v19;
              v24 = v65;
            }

            v26 = __OFADD__(v42, 1);
            v50 = v42 + 1;
            if (v26)
            {
              goto LABEL_30;
            }

            v66 = v50;
          }

          v26 = __OFADD__(v25, 1);
          v23 = v25 + 1;
          v12 = v57;
          if (v26)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100293E54(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v46 = a2;
  v56 = a4;
  v47 = a1;
  v5 = type metadata accessor for Participant();
  result = __chkstk_darwin(v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = 0;
  v10 = 0;
  v53 = result;
  v54 = a3;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v51 = v7 + 16;
  v52 = v7;
  v50 = (v7 + 8);
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v55 = (v16 - 1) & v16;
LABEL_12:
    v21 = v18 | (v10 << 6);
    v22 = *(v54 + 48);
    v23 = *(v52 + 72);
    v49 = v21;
    (*(v52 + 16))(v9, v22 + v23 * v21, v5);
    v24 = Participant.handle.getter();
    v26 = v25;
    v27 = [v56 emailAddress];
    if (v27)
    {
      v28 = v27;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      if (v24 == v29 && v26 == v31)
      {
        goto LABEL_25;
      }

      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v33)
      {
        goto LABEL_26;
      }
    }

    else
    {
    }

    v34 = Participant.handle.getter();
    v36 = v35;
    v37 = [v56 phoneNumber];
    if (v37)
    {
      v38 = v37;
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      if (v34 == v39 && v36 == v41)
      {
LABEL_25:

LABEL_26:
        v5 = v53;
        result = (*v50)(v9, v53);
        v16 = v55;
LABEL_27:
        *(v47 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
        if (__OFADD__(v48++, 1))
        {
          __break(1u);
LABEL_30:
          v44 = v54;

          return sub_1003B5718(v47, v46, v48, v44);
        }
      }

      else
      {
        v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v5 = v53;
        result = (*v50)(v9, v53);
        v16 = v55;
        if (v42)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {

      v5 = v53;
      result = (*v50)(v9, v53);
      v16 = v55;
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_30;
    }

    v20 = *(v12 + 8 * v10);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v55 = (v20 - 1) & v20;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002941D8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Participant();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v10 = v8 & 0x3F;
  v11 = ((1 << v8) + 63) >> 6;
  v12 = 8 * v11;
  v13 = a2;
  v58 = v13;
  if (v10 > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v47 = v11;
    v48 = v3;
    v46 = &v46;
    __chkstk_darwin(v13);
    v49 = &v46 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v49, v12);
    v50 = 0;
    v11 = 0;
    v14 = a1 + 56;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(a1 + 56);
    v3 = (v15 + 63) >> 6;
    v52 = (v7 + 8);
    v53 = v7 + 16;
    v55 = v6;
    v56 = a1;
    v54 = v7;
    while (v17)
    {
      v18 = __clz(__rbit64(v17));
      v57 = (v17 - 1) & v17;
LABEL_13:
      v21 = v18 | (v11 << 6);
      v22 = *(a1 + 48);
      v23 = *(v7 + 72);
      v51 = v21;
      (*(v7 + 16))(v9, v22 + v23 * v21, v6);
      v24 = Participant.handle.getter();
      v12 = v25;
      v26 = [v58 emailAddress];
      if (v26)
      {
        v27 = v26;
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        if (v24 == v28 && v12 == v30)
        {
          goto LABEL_26;
        }

        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v32)
        {
          goto LABEL_27;
        }
      }

      else
      {
      }

      v33 = Participant.handle.getter();
      v12 = v34;
      v35 = [v58 phoneNumber];
      if (v35)
      {
        v36 = v35;
        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v38;

        if (v33 == v37 && v12 == v39)
        {
LABEL_26:

LABEL_27:
          v6 = v55;
          (*v52)(v9, v55);
          a1 = v56;
          v17 = v57;
          v7 = v54;
LABEL_28:
          *&v49[(v51 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v51;
          if (__OFADD__(v50++, 1))
          {
            __break(1u);
LABEL_31:
            v42 = sub_1003B5718(v49, v47, v50, a1);

            return v42;
          }
        }

        else
        {
          v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v6 = v55;
          (*v52)(v9, v55);
          a1 = v56;
          v17 = v57;
          v7 = v54;
          if (v40)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {

        v6 = v55;
        (*v52)(v9, v55);
        a1 = v56;
        v17 = v57;
        v7 = v54;
      }
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v3)
      {
        goto LABEL_31;
      }

      v20 = *(v14 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v57 = (v20 - 1) & v20;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_34:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v44 = swift_slowAlloc();
  v45 = v58;
  v42 = sub_100292B80(v44, v11, a1, v45);

  return v42;
}

uint64_t sub_10029468C()
{
  type metadata accessor for RealtimeCollaborationSelectionDocument.ParticipantSelection();

  return sub_100291D7C();
}

uint64_t type metadata accessor for RealtimeCollaborationSelectionController()
{
  result = qword_1006C2518;
  if (!qword_1006C2518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100294744()
{
  sub_100294800();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100294800()
{
  if (!qword_1006C2528)
  {
    sub_10017992C(&qword_1006C24D0);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1006C2528);
    }
  }
}

void sub_100294888()
{
  v1 = *(v0 + 16);
  _s11MobileNotes40RealtimeCollaborationSelectionControllerC08realtimedf9DidChangeE5StateyyAA0cdF0CF_0();
  *(v1 + OBJC_IVAR___ICRealtimeCollaborationSelectionController_didScheduleCollaboratorStatusesUpdate) = 0;
}

uint64_t sub_100294900(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&unk_1006BE0B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100294978(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002949E4(uint64_t a1)
{
  v3 = _s6ObjectVMa(0);
  v36 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v37 = v5;
  v43 = _swiftEmptyArrayStorage;
  sub_1001896C4(0, v6 & ~(v6 >> 63), 0);
  v7 = v43;
  if (v38)
  {
    result = __CocoaSet.startIndex.getter();
  }

  else
  {
    result = _HashTable.startBucket.getter();
    v9 = *(a1 + 36);
  }

  v10 = v37;
  v40 = result;
  v41 = v9;
  v42 = v38 != 0;
  if ((v6 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v12 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v12 = a1;
    }

    v33 = a1 + 56;
    v34 = v12;
    v31[1] = v1;
    v32 = a1 + 64;
    v35 = v6;
    while (v11 < v6)
    {
      if (__OFADD__(v11++, 1))
      {
        goto LABEL_39;
      }

      v16 = v40;
      v15 = v41;
      v17 = v42;
      v18 = a1;
      sub_1002CB458(v40, v41, v42, a1);
      sub_1002950D0();
      v43 = v7;
      v20 = v7[2];
      v19 = v7[3];
      if (v20 >= v19 >> 1)
      {
        sub_1001896C4(v19 > 1, v20 + 1, 1);
        v10 = v37;
        v7 = v43;
      }

      v7[2] = v20 + 1;
      result = sub_10029A014(v10, v7 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v20);
      if (v38)
      {
        if (!v17)
        {
          goto LABEL_44;
        }

        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v6 = v35;
        sub_10015DA04(&qword_1006C26A0);
        v13 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v13(v39, 0);
      }

      else
      {
        if (v17)
        {
          goto LABEL_45;
        }

        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        v21 = 1 << *(a1 + 32);
        if (v16 >= v21)
        {
          goto LABEL_40;
        }

        v22 = v16 >> 6;
        v23 = *(v33 + 8 * (v16 >> 6));
        if (((v23 >> v16) & 1) == 0)
        {
          goto LABEL_41;
        }

        if (*(a1 + 36) != v15)
        {
          goto LABEL_42;
        }

        v24 = v23 & (-2 << (v16 & 0x3F));
        if (v24)
        {
          v21 = __clz(__rbit64(v24)) | v16 & 0x7FFFFFFFFFFFFFC0;
          v6 = v35;
        }

        else
        {
          v25 = v22 << 6;
          v26 = v22 + 1;
          v27 = (v32 + 8 * v22);
          v6 = v35;
          while (v26 < (v21 + 63) >> 6)
          {
            v29 = *v27++;
            v28 = v29;
            v25 += 64;
            ++v26;
            if (v29)
            {
              result = sub_1000153F8(v16, v15, 0);
              v21 = __clz(__rbit64(v28)) + v25;
              goto LABEL_34;
            }
          }

          result = sub_1000153F8(v16, v15, 0);
LABEL_34:
          a1 = v18;
        }

        v30 = *(a1 + 36);
        v40 = v21;
        v41 = v30;
        v42 = 0;
      }

      v10 = v37;
      if (v11 == v6)
      {
        sub_1000153F8(v40, v41, v42);
        return v7;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_100294DB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

char *sub_100294E28(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = _s6ObjectVMa(0);
  v5 = __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = aBlock - v8;
  *&v1[OBJC_IVAR____TtCV11MobileNotes19SyncingDebugSection10Controller_managedObjectContextObjectsDidChangeObservation] = 0;
  v10 = a1;
  sub_1002950D0(v10, v9);
  swift_beginAccess();
  sub_10029865C(v9, v7);
  Published.init(initialValue:)();
  sub_1002986C0(v9);
  swift_endAccess();
  v23.receiver = v1;
  v23.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v23, "init");
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 defaultCenter];
  v15 = [v10 managedObjectContext];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v10;
  aBlock[4] = sub_100298B3C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10041C404;
  aBlock[3] = &unk_100653128;
  v18 = _Block_copy(aBlock);
  v19 = v10;

  v20 = [v14 addObserverForName:NSManagedObjectContextObjectsDidChangeNotification object:v15 queue:0 usingBlock:v18];

  _Block_release(v18);
  *&v13[OBJC_IVAR____TtCV11MobileNotes19SyncingDebugSection10Controller_managedObjectContextObjectsDidChangeObservation] = v20;

  swift_unknownObjectRelease();
  return v13;
}

void sub_1002950D0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10015DA04(&unk_1006C1710);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v30 - v8;
  v10 = _s6ObjectVMa(0);
  v11 = *(v10 + 36);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v30[1] = v13 + 56;
  v14(a2 + v11, 1, 1, v12);
  *a2 = [a1 objectID];
  sub_100298B60();
  if (v15)
  {
    v30[0] = v9;
    v16 = sub_1002949E4(v15);

    v31 = v16;

    sub_100296058(&v31);

    v17 = v31;
    v9 = v30[0];
  }

  else
  {
    v17 = 0;
  }

  *(a2 + 8) = v17;
  *(a2 + 16) = sub_100299A34(a1);
  *(a2 + 24) = v18;
  *(a2 + 32) = sub_100299E6C(a1);
  *(a2 + 40) = v19;
  *(a2 + 48) = [a1 markedForDeletion];
  v20 = [a1 cloudState];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 localVersionDate];

    if (v22)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    v14(v7, v23, 1, v12);
    sub_100299FA4(v7, v9);
  }

  else
  {
    v14(v9, 1, 1, v12);
  }

  sub_10023A078(v9, a2 + v11);
  v24 = [a1 lastUpdateChangeCountReason];
  if (v24)
  {
    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
  }

  else
  {

    v26 = 0;
    v28 = 0;
  }

  v29 = (a2 + *(v10 + 40));
  *v29 = v26;
  v29[1] = v28;
}

uint64_t sub_1002953C0()
{
  static Animation.spring(response:dampingFraction:blendDuration:)();
  withAnimation<A>(_:_:)();
}

uint64_t sub_100295448(uint64_t a1, void *a2)
{
  v3 = _s6ObjectVMa(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1002950D0(a2, v8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10029865C(v8, v6);
    static Published.subscript.setter();
    return sub_1002986C0(v8);
  }

  return result;
}

void sub_100295648()
{
  sub_1002958C4(319, &qword_1006C25D0, _s6ObjectVMa, &type metadata accessor for Published);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100295758()
{
  sub_1000054A4(319, &qword_1006BFEC0);
  if (v0 <= 0x3F)
  {
    sub_100295860();
    if (v1 <= 0x3F)
    {
      sub_1002958C4(319, &qword_1006C0EE8, &type metadata accessor for Date, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100006994();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100295860()
{
  if (!qword_1006C2640)
  {
    sub_10017992C(&unk_1006C2648);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006C2640);
    }
  }
}

void sub_1002958C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100295928(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v3 = sub_10015DA04(&unk_1006C1710);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v16 = _s6ObjectVMa(0);
  v17 = *(v16 + 36);
  v24 = a1;
  sub_100239F98(a1 + v17, v8);
  v18 = *(v10 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    static Date.distantPast.getter();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1000073B4(v8, &unk_1006C1710);
    }
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
  }

  v19 = v25;
  sub_100239F98(v25 + *(v16 + 36), v6);
  if (v18(v6, 1, v9) == 1)
  {
    static Date.distantPast.getter();
    if (v18(v6, 1, v9) != 1)
    {
      sub_1000073B4(v6, &unk_1006C1710);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v6, v9);
  }

  sub_100296010(&qword_1006C1720, &type metadata accessor for Date);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v21 = static Date.> infix(_:_:)();
LABEL_15:
    v20 = v21;
    goto LABEL_16;
  }

  if (*(v24 + 16) != *(v19 + 16) || *(v24 + 24) != *(v19 + 24))
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_15;
  }

  v20 = 0;
LABEL_16:
  v22 = *(v10 + 8);
  v22(v13, v9);
  v22(v15, v9);
  return v20 & 1;
}

void sub_100295C88(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v7 - 8);
  v9 = &v12 - v8;
  NSObject.hash(into:)();
  v10 = *(v1 + 8);
  if (v10)
  {
    Hasher._combine(_:)(1u);
    sub_1002982F0(a1, v10);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + 48));
  v11 = _s6ObjectVMa(0);
  sub_100239F98(v1 + *(v11 + 36), v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    Hasher._combine(_:)(1u);
    sub_100296010(&qword_1006C1238, &type metadata accessor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v6, v3);
  }

  if (*(v1 + *(v11 + 40) + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_100295F0C()
{
  Hasher.init(_seed:)();
  sub_100295C88(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100295F50()
{
  Hasher.init(_seed:)();
  sub_100295C88(v1);
  return Hasher._finalize()();
}

id sub_100295F8C@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_100296010(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int sub_100296058(void **a1)
{
  v2 = *(_s6ObjectVMa(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001B3A40(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100296100(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100296100(uint64_t *a1)
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
        _s6ObjectVMa(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(_s6ObjectVMa(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100296798(v8, v9, a1, v4);
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
    return sub_10029622C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10029622C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_10015DA04(&unk_1006C1710);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v60 = &v45 - v12;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v45 - v18;
  v62 = _s6ObjectVMa(0);
  v20 = __chkstk_darwin(v62);
  v54 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v63 = &v45 - v23;
  result = __chkstk_darwin(v22);
  v61 = &v45 - v26;
  v47 = a2;
  if (a3 != a2)
  {
    v27 = v11;
    v28 = *a4;
    v29 = *(v25 + 72);
    v58 = v17;
    v59 = (v14 + 48);
    v56 = (v14 + 8);
    v57 = (v14 + 32);
    v30 = v28 + v29 * (a3 - 1);
    v52 = -v29;
    v53 = v28;
    v31 = a1 - a3;
    v46 = v29;
    v32 = v28 + v29 * a3;
    v55 = v27;
LABEL_6:
    v50 = v30;
    v51 = a3;
    v48 = v32;
    v49 = v31;
    while (1)
    {
      v34 = v61;
      sub_10029865C(v32, v61);
      sub_10029865C(v30, v63);
      v35 = v34 + *(v62 + 36);
      v36 = v60;
      sub_100239F98(v35, v60);
      v37 = *v59;
      if ((*v59)(v36, 1, v13) == 1)
      {
        static Date.distantPast.getter();
        if (v37(v36, 1, v13) != 1)
        {
          sub_1000073B4(v60, &unk_1006C1710);
        }
      }

      else
      {
        (*v57)(v19, v36, v13);
      }

      sub_100239F98(v63 + *(v62 + 36), v27);
      v38 = v37(v27, 1, v13);
      v39 = v58;
      if (v38 == 1)
      {
        static Date.distantPast.getter();
        if (v37(v27, 1, v13) != 1)
        {
          sub_1000073B4(v27, &unk_1006C1710);
        }
      }

      else
      {
        (*v57)(v58, v27, v13);
      }

      sub_100296010(&qword_1006C1720, &type metadata accessor for Date);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        if (*(v61 + 16) == *(v63 + 16) && *(v61 + 24) == *(v63 + 24))
        {
          v33 = *v56;
          (*v56)(v39, v13);
          v33(v19, v13);
          sub_1002986C0(v63);
          result = sub_1002986C0(v61);
LABEL_5:
          a3 = v51 + 1;
          v30 = v50 + v46;
          v31 = v49 - 1;
          v32 = v48 + v46;
          if (v51 + 1 == v47)
          {
            return result;
          }

          goto LABEL_6;
        }

        v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      else
      {
        v40 = static Date.> infix(_:_:)();
      }

      v41 = v40;
      v42 = *v56;
      (*v56)(v39, v13);
      v42(v19, v13);
      sub_1002986C0(v63);
      result = sub_1002986C0(v61);
      v27 = v55;
      if ((v41 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v53)
      {
        break;
      }

      v43 = v54;
      sub_10029A014(v32, v54);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10029A014(v43, v30);
      v30 += v52;
      v32 += v52;
      if (__CFADD__(v31++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100296798(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v152 = a1;
  v6 = sub_10015DA04(&unk_1006C1710);
  v7 = __chkstk_darwin(v6 - 8);
  v175 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v149 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v149 - v13;
  __chkstk_darwin(v12);
  v16 = &v149 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v174 = &v149 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v181 = &v149 - v22;
  v23 = __chkstk_darwin(v21);
  v163 = &v149 - v24;
  __chkstk_darwin(v23);
  v26 = &v149 - v25;
  v176 = _s6ObjectVMa(0);
  v162 = *(v176 - 8);
  v27 = __chkstk_darwin(v176);
  v155 = &v149 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v173 = &v149 - v30;
  v31 = __chkstk_darwin(v29);
  v183 = &v149 - v32;
  v33 = __chkstk_darwin(v31);
  v182 = &v149 - v34;
  v35 = __chkstk_darwin(v33);
  v170 = &v149 - v36;
  v37 = __chkstk_darwin(v35);
  v169 = &v149 - v38;
  v39 = __chkstk_darwin(v37);
  v41 = &v149 - v40;
  result = __chkstk_darwin(v39);
  v164 = a3;
  if (a3[1] < 1)
  {
    v46 = _swiftEmptyArrayStorage;
LABEL_126:
    v47 = *v152;
    if (!*v152)
    {
      goto LABEL_165;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v48 = v167;
    if ((result & 1) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_128;
  }

  v44 = a3[1];
  v151 = &v149 - v43;
  v161 = v16;
  v180 = v11;
  v149 = a4;
  v45 = 0;
  v178 = (v18 + 32);
  v179 = (v18 + 48);
  v177 = (v18 + 8);
  v46 = _swiftEmptyArrayStorage;
  v47 = v175;
  v48 = v176;
  v165 = v14;
  v168 = v26;
  v150 = v41;
  v49 = v44;
LABEL_4:
  v153 = v45;
  if (v45 + 1 >= v49)
  {
    v49 = v45 + 1;
  }

  else
  {
    v160 = v46;
    v50 = *v164;
    v51 = *(v162 + 72);
    v172 = *v164 + v51 * (v45 + 1);
    sub_10029865C(v172, v151);
    v171 = v50;
    v52 = v50 + v51 * v45;
    v53 = v151;
    sub_10029865C(v52, v41);
    v54 = v167;
    LODWORD(v159) = sub_100295928(v53, v41);
    v167 = v54;
    if (v54)
    {
      sub_1002986C0(v41);
      sub_1002986C0(v53);
    }

    sub_1002986C0(v41);
    result = sub_1002986C0(v53);
    v55 = v45 + 2;
    v56 = v171 + v51 * v55;
    v166 = v49;
    v57 = v51;
    v171 = v51;
    while (1)
    {
      v46 = v160;
      if (v49 == v55)
      {
        break;
      }

      v60 = v169;
      sub_10029865C(v56, v169);
      sub_10029865C(v172, v170);
      v61 = v161;
      sub_100239F98(v60 + *(v48 + 36), v161);
      v62 = *v179;
      if ((*v179)(v61, 1, v17) == 1)
      {
        static Date.distantPast.getter();
        if (v62(v61, 1, v17) != 1)
        {
          sub_1000073B4(v161, &unk_1006C1710);
        }
      }

      else
      {
        (*v178)(v168, v61, v17);
      }

      sub_100239F98(v170 + *(v48 + 36), v14);
      if (v62(v14, 1, v17) == 1)
      {
        v63 = v163;
        static Date.distantPast.getter();
        if (v62(v14, 1, v17) != 1)
        {
          sub_1000073B4(v14, &unk_1006C1710);
        }
      }

      else
      {
        v63 = v163;
        (*v178)(v163, v14, v17);
      }

      sub_100296010(&qword_1006C1720, &type metadata accessor for Date);
      v64 = v168;
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        if (*(v169 + 16) == *(v170 + 16) && *(v169 + 24) == *(v170 + 24))
        {
          v58 = 0;
        }

        else
        {
          v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v63 = v163;
        v64 = v168;
      }

      else
      {
        v58 = static Date.> infix(_:_:)();
      }

      v59 = *v177;
      (*v177)(v63, v17);
      v59(v64, v17);
      sub_1002986C0(v170);
      result = sub_1002986C0(v169);
      ++v55;
      v57 = v171;
      v56 += v171;
      v172 += v171;
      v14 = v165;
      v49 = v166;
      v48 = v176;
      if ((v159 ^ v58))
      {
        v49 = v55 - 1;
        v46 = v160;
        break;
      }
    }

    v45 = v153;
    if (v159)
    {
      if (v49 < v153)
      {
        goto LABEL_158;
      }

      if (v153 < v49)
      {
        v65 = v57 * (v49 - 1);
        v66 = v49;
        v67 = v49 * v57;
        v166 = v66;
        v68 = v66;
        v69 = v153;
        v70 = v153 * v57;
        do
        {
          if (v69 != --v68)
          {
            v172 = v68;
            v71 = *v164;
            if (!*v164)
            {
              goto LABEL_162;
            }

            sub_10029A014(v71 + v70, v155);
            if (v70 < v65 || v71 + v70 >= (v71 + v67))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v70 != v65)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_10029A014(v155, v71 + v65);
            v57 = v171;
            v68 = v172;
          }

          ++v69;
          v65 -= v57;
          v67 -= v57;
          v70 += v57;
        }

        while (v69 < v68);
        v14 = v165;
        v49 = v166;
        v45 = v153;
        v46 = v160;
      }
    }
  }

  v72 = v164[1];
  if (v49 >= v72)
  {
    goto LABEL_49;
  }

  if (__OFSUB__(v49, v45))
  {
    goto LABEL_155;
  }

  if (v49 - v45 >= v149)
  {
LABEL_49:
    v74 = v49;
    if (v49 < v45)
    {
      goto LABEL_154;
    }

    goto LABEL_50;
  }

  if (__OFADD__(v45, v149))
  {
    goto LABEL_156;
  }

  if (v45 + v149 >= v72)
  {
    v73 = v164[1];
  }

  else
  {
    v73 = v45 + v149;
  }

  if (v73 < v45)
  {
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    result = sub_1001B36CC(v46);
    v46 = result;
LABEL_128:
    v184 = v46;
    v144 = *(v46 + 2);
    if (v144 >= 2)
    {
      while (*v164)
      {
        v145 = v46;
        v46 = (v144 - 1);
        v146 = *&v145[16 * v144];
        v147 = *&v145[16 * v144 + 24];
        sub_1002977AC(*v164 + *(v162 + 72) * v146, *v164 + *(v162 + 72) * *&v145[16 * v144 + 16], (*v164 + *(v162 + 72) * v147), v47);
        if (v48)
        {
        }

        if (v147 < v146)
        {
          goto LABEL_152;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v145 = sub_1001B36CC(v145);
        }

        if (v144 - 2 >= *(v145 + 2))
        {
          goto LABEL_153;
        }

        v148 = &v145[16 * v144];
        *v148 = v146;
        *(v148 + 1) = v147;
        v184 = v145;
        result = sub_1001B3640(v46);
        v46 = v184;
        v144 = *(v184 + 2);
        if (v144 <= 1)
        {
        }
      }

      goto LABEL_163;
    }
  }

  if (v49 == v73)
  {
    goto LABEL_49;
  }

  v160 = v46;
  v123 = *v164;
  v124 = *(v162 + 72);
  v125 = *v164 + v124 * (v49 - 1);
  v171 = -v124;
  v172 = v123;
  v126 = v45 - v49;
  v154 = v124;
  v127 = v123 + v49 * v124;
  v156 = v73;
LABEL_102:
  v166 = v49;
  v157 = v127;
  v128 = v127;
  v158 = v126;
  v159 = v125;
  v129 = v125;
  while (1)
  {
    v130 = v182;
    sub_10029865C(v128, v182);
    sub_10029865C(v129, v183);
    v131 = v180;
    sub_100239F98(v130 + *(v48 + 36), v180);
    v132 = *v179;
    if ((*v179)(v131, 1, v17) == 1)
    {
      static Date.distantPast.getter();
      if (v132(v131, 1, v17) != 1)
      {
        sub_1000073B4(v180, &unk_1006C1710);
      }
    }

    else
    {
      (*v178)(v181, v131, v17);
    }

    sub_100239F98(v183 + *(v48 + 36), v47);
    v133 = v132(v47, 1, v17);
    v134 = v174;
    if (v133 == 1)
    {
      static Date.distantPast.getter();
      if (v132(v47, 1, v17) != 1)
      {
        sub_1000073B4(v47, &unk_1006C1710);
      }
    }

    else
    {
      (*v178)(v174, v47, v17);
    }

    sub_100296010(&qword_1006C1720, &type metadata accessor for Date);
    v135 = v181;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      if (*(v182 + 16) == *(v183 + 16) && *(v182 + 24) == *(v183 + 24))
      {
        v142 = v135;
        v143 = *v177;
        (*v177)(v134, v17);
        v143(v142, v17);
        v47 = v175;
        sub_1002986C0(v183);
        sub_1002986C0(v182);
LABEL_101:
        v49 = v166 + 1;
        v125 = v159 + v154;
        v126 = v158 - 1;
        v127 = v157 + v154;
        v74 = v156;
        if (v166 + 1 != v156)
        {
          goto LABEL_102;
        }

        v14 = v165;
        v46 = v160;
        if (v156 < v153)
        {
          goto LABEL_154;
        }

LABEL_50:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1001B36E0(0, *(v46 + 2) + 1, 1, v46);
          v46 = result;
        }

        v76 = *(v46 + 2);
        v75 = *(v46 + 3);
        v77 = v76 + 1;
        if (v76 >= v75 >> 1)
        {
          result = sub_1001B36E0((v75 > 1), v76 + 1, 1, v46);
          v46 = result;
        }

        *(v46 + 2) = v77;
        v78 = &v46[16 * v76];
        *(v78 + 4) = v153;
        *(v78 + 5) = v74;
        v79 = *v152;
        if (!*v152)
        {
          goto LABEL_164;
        }

        v156 = v74;
        if (v76)
        {
          while (1)
          {
            v80 = v77 - 1;
            if (v77 >= 4)
            {
              break;
            }

            if (v77 == 3)
            {
              v81 = *(v46 + 4);
              v82 = *(v46 + 5);
              v91 = __OFSUB__(v82, v81);
              v83 = v82 - v81;
              v84 = v91;
LABEL_69:
              if (v84)
              {
                goto LABEL_143;
              }

              v97 = &v46[16 * v77];
              v99 = *v97;
              v98 = *(v97 + 1);
              v100 = __OFSUB__(v98, v99);
              v101 = v98 - v99;
              v102 = v100;
              if (v100)
              {
                goto LABEL_146;
              }

              v103 = &v46[16 * v80 + 32];
              v105 = *v103;
              v104 = *(v103 + 1);
              v91 = __OFSUB__(v104, v105);
              v106 = v104 - v105;
              if (v91)
              {
                goto LABEL_149;
              }

              if (__OFADD__(v101, v106))
              {
                goto LABEL_150;
              }

              if (v101 + v106 >= v83)
              {
                if (v83 < v106)
                {
                  v80 = v77 - 2;
                }

                goto LABEL_90;
              }

              goto LABEL_83;
            }

            v107 = &v46[16 * v77];
            v109 = *v107;
            v108 = *(v107 + 1);
            v91 = __OFSUB__(v108, v109);
            v101 = v108 - v109;
            v102 = v91;
LABEL_83:
            if (v102)
            {
              goto LABEL_145;
            }

            v110 = &v46[16 * v80];
            v112 = *(v110 + 4);
            v111 = *(v110 + 5);
            v91 = __OFSUB__(v111, v112);
            v113 = v111 - v112;
            if (v91)
            {
              goto LABEL_148;
            }

            if (v113 < v101)
            {
              goto LABEL_3;
            }

LABEL_90:
            v118 = v80 - 1;
            if (v80 - 1 >= v77)
            {
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
              __break(1u);
LABEL_144:
              __break(1u);
LABEL_145:
              __break(1u);
LABEL_146:
              __break(1u);
LABEL_147:
              __break(1u);
LABEL_148:
              __break(1u);
LABEL_149:
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
              goto LABEL_157;
            }

            if (!*v164)
            {
              goto LABEL_161;
            }

            v119 = *&v46[16 * v118 + 32];
            v120 = *&v46[16 * v80 + 40];
            v121 = v167;
            sub_1002977AC(*v164 + *(v162 + 72) * v119, *v164 + *(v162 + 72) * *&v46[16 * v80 + 32], (*v164 + *(v162 + 72) * v120), v79);
            v167 = v121;
            if (v121)
            {
            }

            if (v120 < v119)
            {
              goto LABEL_139;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v46 = sub_1001B36CC(v46);
            }

            if (v118 >= *(v46 + 2))
            {
              goto LABEL_140;
            }

            v122 = &v46[16 * v118];
            *(v122 + 4) = v119;
            *(v122 + 5) = v120;
            v184 = v46;
            result = sub_1001B3640(v80);
            v46 = v184;
            v77 = *(v184 + 2);
            v14 = v165;
            if (v77 <= 1)
            {
              goto LABEL_3;
            }
          }

          v85 = &v46[16 * v77 + 32];
          v86 = *(v85 - 64);
          v87 = *(v85 - 56);
          v91 = __OFSUB__(v87, v86);
          v88 = v87 - v86;
          if (v91)
          {
            goto LABEL_141;
          }

          v90 = *(v85 - 48);
          v89 = *(v85 - 40);
          v91 = __OFSUB__(v89, v90);
          v83 = v89 - v90;
          v84 = v91;
          if (v91)
          {
            goto LABEL_142;
          }

          v92 = &v46[16 * v77];
          v94 = *v92;
          v93 = *(v92 + 1);
          v91 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v91)
          {
            goto LABEL_144;
          }

          v91 = __OFADD__(v83, v95);
          v96 = v83 + v95;
          if (v91)
          {
            goto LABEL_147;
          }

          if (v96 >= v88)
          {
            v114 = &v46[16 * v80 + 32];
            v116 = *v114;
            v115 = *(v114 + 1);
            v91 = __OFSUB__(v115, v116);
            v117 = v115 - v116;
            if (v91)
            {
              goto LABEL_151;
            }

            if (v83 < v117)
            {
              v80 = v77 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_69;
        }

LABEL_3:
        v49 = v164[1];
        v45 = v156;
        v41 = v150;
        if (v156 >= v49)
        {
          goto LABEL_126;
        }

        goto LABEL_4;
      }

      v136 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {
      v136 = static Date.> infix(_:_:)();
    }

    v137 = v136;
    v138 = v135;
    v139 = *v177;
    (*v177)(v134, v17);
    v139(v138, v17);
    sub_1002986C0(v183);
    result = sub_1002986C0(v182);
    if ((v137 & 1) == 0)
    {
      v47 = v175;
      v48 = v176;
      goto LABEL_101;
    }

    v48 = v176;
    if (!v172)
    {
      break;
    }

    v140 = v173;
    sub_10029A014(v128, v173);
    swift_arrayInitWithTakeFrontToBack();
    sub_10029A014(v140, v129);
    v129 += v171;
    v128 += v171;
    v141 = __CFADD__(v126++, 1);
    v47 = v175;
    if (v141)
    {
      goto LABEL_101;
    }
  }

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
  return result;
}