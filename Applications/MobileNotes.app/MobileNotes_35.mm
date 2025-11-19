id TagCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id TagCell.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR___ICTagCell_displayText];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR___ICTagCell_includeSymbolPrefix] = 0;
  *&v1[OBJC_IVAR___ICTagCell_displayImage] = 0;
  v1[OBJC_IVAR___ICTagCell_hasGroupInset] = 1;
  v1[OBJC_IVAR___ICTagCell_isPreviewing] = 0;
  *&v1[OBJC_IVAR___ICTagCell_identifier] = 0;
  v5 = OBJC_IVAR___ICTagCell_imageView;
  *&v1[v5] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = OBJC_IVAR___ICTagCell_textLabel;
  *&v1[v6] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = OBJC_IVAR___ICTagCell_unemphasizedBackgroundColor;
  v8 = objc_opt_self();
  *&v1[v7] = [v8 tertiarySystemFillColor];
  v9 = OBJC_IVAR___ICTagCell_excludedBackgroundColor;
  *&v1[v9] = [v8 systemBackgroundColor];
  *&v1[OBJC_IVAR___ICTagCell____lazy_storage___imageViewBackgroundColor] = 0;
  v10 = OBJC_IVAR___ICTagCell_emphasizedTextColor;
  *&v1[v10] = [v8 whiteColor];
  *&v1[OBJC_IVAR___ICTagCell_maxWidthConstraint] = 0;
  *&v1[OBJC_IVAR___ICTagCell_minWidthConstraint] = 0;
  v1[OBJC_IVAR___ICTagCell_isEmphasized] = 0;
  v1[OBJC_IVAR___ICTagCell_isExcluded] = 0;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v15, "initWithCoder:", a1);
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    sub_100480318();
  }

  return v12;
}

Swift::Void __swiftcall TagCell.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "layoutSubviews");
  sub_10047EB28();
}

void sub_100480A74()
{
  v1 = *(v0 + OBJC_IVAR___ICTagCell_textLabel);
  v2 = objc_opt_self();
  v3 = [v2 ic_preferredFontForStyle:UIFontTextStyleSubheadline symbolicTraits:2];
  if (!v3)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = v3;
  v5 = [v3 ic_fontWithSingleLineA];

  if (!v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v1 setFont:v5];

  if (!*(v0 + OBJC_IVAR___ICTagCell_displayText + 8))
  {
    return;
  }

  v6 = *(v0 + OBJC_IVAR___ICTagCell_includeSymbolPrefix);

  if (v6 == 1)
  {
    v7 = String._bridgeToObjectiveC()();

    v8 = [v7 ic_withHashtagPrefix];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (*(v0 + OBJC_IVAR___ICTagCell_isExcluded) == 1)
  {
    sub_10015DA04(&unk_1006C8190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100535E30;
    *(inited + 32) = NSFontAttributeName;
    v10 = NSFontAttributeName;
    v11 = [v2 ic_preferredFontForStyle:UIFontTextStyleSubheadline symbolicTraits:2];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 ic_fontWithSingleLineA];

      if (v13)
      {
        v14 = sub_1000054A4(0, &unk_1006C95C0);
        *(inited + 40) = v13;
        *(inited + 64) = v14;
        *(inited + 72) = NSStrikethroughStyleAttributeName;
        *(inited + 104) = &type metadata for Int;
        *(inited + 80) = 1;
        v15 = NSStrikethroughStyleAttributeName;
        sub_1001901EC(inited);
        swift_setDeallocating();
        sub_10015DA04(&qword_1006C81A0);
        swift_arrayDestroy();
        v16 = objc_allocWithZone(NSAttributedString);
        v17 = String._bridgeToObjectiveC()();

        type metadata accessor for Key(0);
        sub_1001D8FD8();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v19 = [v16 initWithString:v17 attributes:isa];

        [v1 setAttributedText:v19];
        return;
      }

LABEL_17:
      __break(1u);
      return;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v1 setAttributedText:0];
  v20 = String._bridgeToObjectiveC()();

  [v1 setText:v20];
}

uint64_t TagCell.configurationState.getter()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v4, "_bridgedConfigurationState");
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  if (qword_1006BC998 != -1)
  {
    swift_once();
  }

  v2 = qword_1006EFB78;
  AnyHashable.init<A>(_:)();
  return UICellConfigurationState.subscript.setter();
}

id TagCell.updateConfiguration(using:)()
{
  v1 = v0;
  v2 = type metadata accessor for UICellConfigurationState.DropState();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v14[-v7];
  UICellConfigurationState.cellDropState.getter();
  (*(v3 + 104))(v6, enum case for UICellConfigurationState.DropState.targeted(_:), v2);
  v9 = static UICellConfigurationState.DropState.== infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v10(v8, v2);
  if (v9)
  {
    goto LABEL_2;
  }

  if (UICellConfigurationState.isSelected.getter())
  {
    if (qword_1006BC998 != -1)
    {
      swift_once();
    }

    UICellConfigurationState.subscript.getter();
    if (v17)
    {
      if (swift_dynamicCast())
      {
        v11 = v15 ^ 1;
        goto LABEL_10;
      }
    }

    else
    {
      sub_1000073B4(v16, &qword_1006C2AF8);
    }

LABEL_2:
    v11 = 1;
    goto LABEL_10;
  }

  v11 = 0;
LABEL_10:
  v1[OBJC_IVAR___ICTagCell_isEmphasized] = v11 & 1;
  sub_10047EED4();
  if (qword_1006BC998 != -1)
  {
    swift_once();
  }

  UICellConfigurationState.subscript.getter();
  if (!v17)
  {
    sub_1000073B4(v16, &qword_1006C2AF8);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  v12 = v15;
LABEL_17:
  v1[OBJC_IVAR___ICTagCell_isExcluded] = v12;
  sub_10047EED4();
  return [v1 layoutIfNeeded];
}

UICollectionViewLayoutAttributes __swiftcall TagCell.preferredLayoutAttributesFitting(_:)(UICollectionViewLayoutAttributes a1)
{
  ObjectType = swift_getObjectType();
  sub_10047EB28();
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "preferredLayoutAttributesFittingAttributes:", a1.super.isa);

  return v4;
}

BOOL ContentInsetViewController.Configuration.isEqual(_:)(uint64_t a1)
{
  sub_10027CA3C(a1, v5);
  if (!v6)
  {
    sub_10027CAAC(v5);
    return 0;
  }

  type metadata accessor for ContentInsetViewController.Configuration();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = _s11MobileNotes26ContentInsetViewControllerC13ConfigurationC2eeoiySbAE_AEtFZ_0(v1, v4);

  return v2;
}

void sub_100481B78()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___ICContentInsetViewController_configuration];
  type metadata accessor for ContentInsetViewController.Configuration();
  v3 = v2;
  v4 = static NSObject.== infix(_:_:)();

  if (v4)
  {
    return;
  }

  v5 = *&v1[OBJC_IVAR___ICContentInsetViewController_contentViewController];
  v6 = [v5 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  [v6 removeFromSuperview];

  v8 = [v1 view];
  if (!v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v8;
  v10 = [v5 view];
  if (!v10)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v11 = v10;
  [v9 addSubview:v10];

  sub_100482018();
}

Swift::Void __swiftcall ContentInsetViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for ContentInsetViewController();
  objc_msgSendSuper2(&v1, "viewDidLoad");
  sub_100481EBC();
}

id sub_100481EBC()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = result;
  v3 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor:v3];

  v4 = *&v0[OBJC_IVAR___ICContentInsetViewController_contentViewController];
  [v0 addChildViewController:v4];
  result = [v4 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  result = [v4 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v7 = result;
  [v6 addSubview:result];

  sub_100482018();

  return [v4 didMoveToParentViewController:v0];
}

void sub_100482018()
{
  v1 = *(v0 + OBJC_IVAR___ICContentInsetViewController_contentViewController);
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  v4 = OBJC_IVAR___ICContentInsetViewController_configuration;
  [v2 ic_addAnchorsToFillSuperviewWithPaddingFromDirectionalEdgeInsets:*(*(v0 + OBJC_IVAR___ICContentInsetViewController_configuration) + OBJC_IVAR___ICContentInsetViewControllerConfiguration_usesSafeAreaLayoutGuide) usesSafeAreaLayoutGuide:{*(*(v0 + OBJC_IVAR___ICContentInsetViewController_configuration) + OBJC_IVAR___ICContentInsetViewControllerConfiguration_insets), *(*(v0 + OBJC_IVAR___ICContentInsetViewController_configuration) + OBJC_IVAR___ICContentInsetViewControllerConfiguration_insets + 8), *(*(v0 + OBJC_IVAR___ICContentInsetViewController_configuration) + OBJC_IVAR___ICContentInsetViewControllerConfiguration_insets + 16), *(*(v0 + OBJC_IVAR___ICContentInsetViewController_configuration) + OBJC_IVAR___ICContentInsetViewControllerConfiguration_insets + 24)}];

  v5 = [v1 view];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  [v5 ic_applyRoundedCornersWithRadius:*(*(v0 + v4) + OBJC_IVAR___ICContentInsetViewControllerConfiguration_cornerRadius)];

  v7 = [v1 view];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  [v7 setNeedsLayout];

  v9 = [v1 view];
  if (!v9)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v10 = v9;
  [v9 layoutIfNeeded];
}

id ContentInsetViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_100482258(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

BOOL _s11MobileNotes26ContentInsetViewControllerC13ConfigurationC2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + OBJC_IVAR___ICContentInsetViewControllerConfiguration_insets), *(a2 + OBJC_IVAR___ICContentInsetViewControllerConfiguration_insets)), vceqq_f64(*(a1 + OBJC_IVAR___ICContentInsetViewControllerConfiguration_insets + 16), *(a2 + OBJC_IVAR___ICContentInsetViewControllerConfiguration_insets + 16))))) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + OBJC_IVAR___ICContentInsetViewControllerConfiguration_usesSafeAreaLayoutGuide) == *(a2 + OBJC_IVAR___ICContentInsetViewControllerConfiguration_usesSafeAreaLayoutGuide))
  {
    return *(a1 + OBJC_IVAR___ICContentInsetViewControllerConfiguration_cornerRadius) == *(a2 + OBJC_IVAR___ICContentInsetViewControllerConfiguration_cornerRadius);
  }

  return 0;
}

double AddFileAttachmentIntent.init()@<D0>(_OWORD *a1@<X8>)
{
  sub_100484054(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

uint64_t AddFileAttachmentIntent.file.setter(uint64_t a1)
{
  v2 = sub_10015DA04(&qword_1006BCE98);
  __chkstk_darwin(v2 - 8);
  sub_100484C88(a1, &v5 - v3);
  IntentParameter.wrappedValue.setter();
  return sub_1000073B4(a1, &qword_1006BCE98);
}

uint64_t AddFileAttachmentIntent.note.setter(uint64_t a1)
{
  v2 = type metadata accessor for NoteEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_10027FEEC(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NoteEntity);
  IntentParameter.wrappedValue.setter();
  return sub_10027FF54(a1, type metadata accessor for NoteEntity);
}

uint64_t sub_10048253C()
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
  sub_100025918(v6, static AddFileAttachmentIntent.title);
  sub_10002597C(v6, static AddFileAttachmentIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t AddFileAttachmentIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC9A0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static AddFileAttachmentIntent.title);
}

uint64_t static AddFileAttachmentIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC9A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static AddFileAttachmentIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static AddFileAttachmentIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t static AddFileAttachmentIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006C9668);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C9670);
  __chkstk_darwin(v1);
  sub_10021B230();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 543450177;
  v2._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C9678);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 544175136;
  v3._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C9680);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:_:)();
}

uint64_t sub_100482D20()
{
  swift_getKeyPath();
  sub_10021B230();
  v0 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  sub_10015DA04(&unk_1006BD390);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100534670;
  *(v1 + 32) = v0;

  v2 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildBlock(_:)();

  return v2;
}

uint64_t (*AddFileAttachmentIntent.name.modify(uint64_t *a1))()
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

uint64_t (*AddFileAttachmentIntent.file.modify(uint64_t *a1))()
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

uint64_t (*AddFileAttachmentIntent.note.modify(uint64_t *a1))()
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

uint64_t (*AddFileAttachmentIntent.loggingConfiguration.modify(uint64_t *a1))()
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
  return sub_10017D9DC;
}

uint64_t AddFileAttachmentIntent.perform()(uint64_t a1)
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

  return _swift_task_switch(sub_1004830EC, 0, 0);
}

uint64_t sub_1004830EC()
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
  v7[1] = sub_100483248;
  v8 = v0[27];

  return sub_100384000(v8, v6);
}

uint64_t sub_100483248(uint64_t a1)
{
  v2 = *(*v1 + 240);
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 208);
  v5 = *(*v1 + 200);
  *(*v1 + 256) = a1;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_1004833C0, 0, 0);
}

uint64_t sub_1004833C0()
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
  sub_100484D18(v3, (v0 + 2));
  v10 = swift_task_alloc();
  v0[34] = v10;
  v11 = sub_10015DA04(&unk_1006BFED0);
  *v10 = v0;
  v10[1] = sub_10027E0D0;

  return NSManagedObjectContext.perform<A>(_:)(v0 + 15, sub_100484CF8, v4, v11);
}

void sub_1004834E4(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v73 = a3;
  v7 = sub_10015DA04(&unk_1006BE0D0);
  __chkstk_darwin(v7 - 8);
  v71 = &v57 - v8;
  v67 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v66 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v64 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  v62 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LocalizedStringResource();
  v69 = *(v14 - 8);
  v70 = v14;
  v15 = __chkstk_darwin(v14);
  v63 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v68 = &v57 - v17;
  v18 = type metadata accessor for IntentFile();
  v72 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10015DA04(&qword_1006BCE98);
  __chkstk_darwin(v21 - 8);
  v23 = &v57 - v22;
  v24 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v24 - 8);
  v26 = &v57 - v25;
  v27 = type metadata accessor for URL();
  __chkstk_darwin(v27);
  v30 = &v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_6;
  }

  v60 = a4;
  v61 = v28;
  v31 = a1;
  v59 = a2;
  v32 = [a2 objectWithID:v31];
  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (!v33)
  {

LABEL_6:
    type metadata accessor for ICError(0);
    v74 = 227;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_1002801B8(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    return;
  }

  v34 = v33;
  if ([v33 isPasswordProtectedAndLocked])
  {
    sub_100197CCC();
    swift_allocError();
    v36 = 15;
LABEL_13:
    *v35 = v36;
    swift_willThrow();

    return;
  }

  if (![v34 isEditable])
  {
    sub_100197CCC();
    swift_allocError();
    v36 = 16;
    goto LABEL_13;
  }

  if (![v34 canAddAttachment])
  {
    sub_100197CCC();
    swift_allocError();
    v36 = 35;
    goto LABEL_13;
  }

  v58 = v31;
  v57 = *(v73 + 8);
  IntentParameter.wrappedValue.getter();
  v37 = v72;
  if ((*(v72 + 48))(v23, 1, v18))
  {
    sub_1000073B4(v23, &qword_1006BCE98);
    (*(v61 + 56))(v26, 1, 1, v27);
LABEL_15:
    sub_1000073B4(v26, &qword_1006BCC20);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    (*(v65 + 104))(v66, enum case for LocalizedStringResource.BundleDescription.main(_:), v67);
    v39 = v68;
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    IntentParameter.projectedValue.getter();
    v41 = v69;
    v40 = v70;
    (*(v69 + 16))(v63, v39, v70);
    v42 = v71;
    IntentDialog.init(_:)();
    v43 = type metadata accessor for IntentDialog();
    (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
    type metadata accessor for AppIntentError();
    sub_1002801B8(&unk_1006BFBC0, &type metadata accessor for AppIntentError);
    swift_allocError();
    IntentParameter.needsValueError(_:)();

    sub_1000073B4(v42, &unk_1006BE0D0);
    swift_willThrow();

    (*(v41 + 8))(v39, v40);
    return;
  }

  (*(v37 + 16))(v20, v23, v18);
  sub_1000073B4(v23, &qword_1006BCE98);
  IntentFile.fileURL.getter();
  (*(v37 + 8))(v20, v18);
  v38 = v61;
  if ((*(v61 + 48))(v26, 1, v27) == 1)
  {
    goto LABEL_15;
  }

  (*(v38 + 32))(v30, v26, v27);
  if (!URL.startAccessingSecurityScopedResource()())
  {

    (*(v38 + 8))(v30, v27);
LABEL_25:
    *v60 = 0;
    return;
  }

  URL._bridgeToObjectiveC()(v44);
  v46 = v45;
  v47 = v73;
  IntentParameter.wrappedValue.getter();
  if (v75[1])
  {
    v48 = String._bridgeToObjectiveC()();
  }

  else
  {
    v48 = 0;
  }

  v49 = [v34 addAttachmentWithFileURL:v46 filename:v48];

  URL.stopAccessingSecurityScopedResource()();
  (*(v61 + 8))(v30, v27);
  if (!v49)
  {

    goto LABEL_25;
  }

  v50 = [objc_allocWithZone(ICAttachmentInsertionController) initWithNote:v34];
  v51 = v50;
  if (*(v47 + 40))
  {
    v52 = [v50 addAttachment:v49];
  }

  else
  {
    v52 = [v50 addAttachment:v49 atTextRange:{*(v47 + 24), *(v47 + 32)}];
  }

  v53 = v59;

  v75[0] = 0;
  if ([v53 save:v75])
  {
    v54 = v75[0];
    v55 = [v49 objectID];

    *v60 = v55;
  }

  else
  {
    v56 = v75[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_100483FA8(uint64_t a1)
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

  return AddFileAttachmentIntent.perform()(a1);
}

uint64_t sub_100484054@<X0>(char **a1@<X8>)
{
  v64 = a1;
  v1 = sub_10015DA04(&unk_1006BCAC0);
  __chkstk_darwin(v1 - 8);
  v63 = &v56 - v2;
  v3 = sub_10015DA04(&qword_1006BCE98);
  __chkstk_darwin(v3 - 8);
  v61 = &v56 - v4;
  v5 = type metadata accessor for InputConnectionBehavior();
  v6 = *(v5 - 8);
  v78 = v5;
  v79 = v6;
  __chkstk_darwin(v5);
  v77 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10015DA04(&unk_1006BE0D0);
  v9 = __chkstk_darwin(v8 - 8);
  v62 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v76 = &v56 - v11;
  v12 = sub_10015DA04(&qword_1006BCB40);
  __chkstk_darwin(v12 - 8);
  v60 = &v56 - v13;
  v14 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v14 - 8);
  v56 = &v56 - v15;
  v16 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Locale();
  __chkstk_darwin(v20 - 8);
  v21 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v21 - 8);
  v22 = type metadata accessor for LocalizedStringResource();
  v72 = v22;
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v75 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_10015DA04(&qword_1006BCB48);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v27 = v17 + 104;
  v26 = *(v17 + 104);
  v65 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v66 = v16;
  v26(v19, enum case for LocalizedStringResource.BundleDescription.main(_:), v16);
  v68 = v27;
  v67 = v26;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v26(v19, v25, v16);
  v28 = v56;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v29 = *(v23 + 56);
  v71 = v23 + 56;
  v73 = v29;
  v29(v28, 0, 1, v22);
  v30 = type metadata accessor for String.IntentInputOptions();
  v82 = 0;
  v83 = 0;
  (*(*(v30 - 8) + 56))(v60, 1, 1, v30);
  v69 = type metadata accessor for IntentDialog();
  v31 = *(v69 - 8);
  v70 = *(v31 + 56);
  v32 = v31 + 56;
  v70(v76, 1, 1, v69);
  v58 = v32;
  v59 = enum case for InputConnectionBehavior.default(_:);
  v33 = *(v79 + 104);
  v79 += 104;
  v74 = v33;
  (v33)(v77);
  v34 = v28;
  v60 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  v57 = sub_10015DA04(&unk_1006BCEA0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v35 = v65;
  v36 = v66;
  v37 = v67;
  v67(v19, v65, v66);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v37(v19, v35, v36);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v73(v34, 0, 1, v72);
  v38 = type metadata accessor for IntentFile();
  (*(*(v38 - 8) + 56))(v61, 1, 1, v38);
  v70(v76, 1, 1, v69);
  sub_10015DA04(&unk_1006C9010);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_100531E30;
  static UTType.item.getter();
  v39 = v59;
  v74(v77, v59, v78);
  v61 = IntentParameter<>.init(title:description:default:supportedContentTypes:requestValueDialog:inputConnectionBehavior:)();
  v57 = sub_10015DA04(&unk_1006BE580);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v40 = v65;
  v41 = v66;
  v42 = v67;
  v67(v19, v65, v66);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v42(v19, v40, v41);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v73(v34, 0, 1, v72);
  v43 = type metadata accessor for NoteEntity(0);
  (*(*(v43 - 8) + 56))(v63, 1, 1, v43);
  v44 = v69;
  v45 = v70;
  v70(v76, 1, 1, v69);
  v45(v62, 1, 1, v44);
  v82 = sub_100270998();
  v83 = v46;
  v84 = v47;
  v85 = v48;
  v86 = v49;
  v74(v77, v39, v78);
  sub_1001797CC();
  v50 = IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
  v87 = 1;
  sub_10015DA04(&qword_1006C34B0);
  v80 = 0xD000000000000021;
  v81 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v51 = AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&unk_1006BCA40);
  v80 = 0xD000000000000024;
  v81 = 0x800000010055CF90;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  v53 = v87;
  v54 = v64;
  v55 = v61;
  *v64 = v60;
  v54[1] = v55;
  v54[3] = 0;
  v54[4] = 0;
  v54[2] = v50;
  *(v54 + 40) = v53;
  v54[6] = v51;
  v54[7] = result;
  return result;
}

uint64_t sub_100484C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&qword_1006BCE98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100484D54()
{
  result = qword_1006C9688;
  if (!qword_1006C9688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9688);
  }

  return result;
}

unint64_t sub_100484DB0()
{
  result = qword_1006C9690;
  if (!qword_1006C9690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9690);
  }

  return result;
}

unint64_t sub_100484E08()
{
  result = qword_1006C9698;
  if (!qword_1006C9698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9698);
  }

  return result;
}

double InsertAllMentionIntent.init()@<D0>(uint64_t a1@<X8>)
{
  sub_100486910(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t InsertAllMentionIntent.target.setter(uint64_t a1)
{
  v2 = sub_10015DA04(&unk_1006BCAC0);
  __chkstk_darwin(v2 - 8);
  sub_1002D9248(a1, &v5 - v3);
  IntentParameter.wrappedValue.setter();
  return sub_1000073B4(a1, &unk_1006BCAC0);
}

uint64_t sub_100484FDC()
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
  sub_100025918(v6, static InsertAllMentionIntent.title);
  sub_10002597C(v6, static InsertAllMentionIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t InsertAllMentionIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC9A8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static InsertAllMentionIntent.title);
}

uint64_t static InsertAllMentionIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC9A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static InsertAllMentionIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static InsertAllMentionIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

void (*InsertAllMentionIntent.target.modify(uint64_t *a1))(void *a1)
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
  return sub_10017D9E0;
}

uint64_t InsertAllMentionIntent.insertionRange.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 8) = result;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3 & 1;
  return result;
}

uint64_t InsertAllMentionIntent.perform()(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  sub_10015DA04(&unk_1006BE0D0);
  v2[13] = swift_task_alloc();
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  type metadata accessor for Locale();
  v2[17] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v2[18] = swift_task_alloc();
  v4 = type metadata accessor for LocalizedStringResource();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  sub_10015DA04(&unk_1006BCAC0);
  v2[23] = swift_task_alloc();
  v5 = type metadata accessor for NoteEntity(0);
  v2[24] = v5;
  v2[25] = *(v5 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_1004858AC, 0, 0);
}

uint64_t sub_1004858AC()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[12];
  AppDependency.wrappedValue.getter();
  v5 = v0[7];
  v6 = [v5 modernManagedObjectContext];
  v0[28] = v6;

  v7 = swift_allocObject();
  v0[29] = v7;
  *(v7 + 16) = 0;
  v0[30] = *v4;
  IntentParameter.wrappedValue.getter();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v8 = v0[21];
    v18 = v0[22];
    v19 = v0[20];
    v20 = v0[19];
    v9 = v0[15];
    v10 = v0[16];
    v11 = v0[13];
    v12 = v0[14];
    sub_1000073B4(v0[23], &unk_1006BCAC0);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    (*(v9 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    IntentParameter.projectedValue.getter();
    (*(v19 + 16))(v8, v18, v20);
    IntentDialog.init(_:)();
    v13 = type metadata accessor for IntentDialog();
    (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
    type metadata accessor for AppIntentError();
    sub_100486F54(&unk_1006BFBC0, &type metadata accessor for AppIntentError);
    swift_allocError();
    IntentParameter.needsValueError(_:)();

    sub_1000073B4(v11, &unk_1006BE0D0);
    swift_willThrow();

    (*(v19 + 8))(v18, v20);

    v14 = v0[1];

    return v14();
  }

  else
  {
    sub_1002D92B8(v0[23], v0[27]);
    AppDependency.wrappedValue.getter();
    v16 = v0[8];
    v0[31] = v16;

    v17 = swift_task_alloc();
    v0[32] = v17;
    *v17 = v0;
    v17[1] = sub_100485CD4;

    return sub_1001A9A64(sub_1001A9A64, v16, sub_1003E8854, v7);
  }
}

uint64_t sub_100485CD4()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 248);

  if (v0)
  {
    v4 = sub_1004865B8;
  }

  else
  {
    v4 = sub_100485E20;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100485E20()
{
  *(v0 + 40) = 0;
  v1 = *(v0 + 232);
  *(v0 + 48) = 0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (!v2)
  {
    v32 = *(v0 + 216);
    v9 = *(v0 + 168);
    v10 = *(v0 + 176);
    v29 = *(v0 + 160);
    v30 = *(v0 + 152);
    v31 = *(v0 + 224);
    v12 = *(v0 + 120);
    v11 = *(v0 + 128);
    v13 = *(v0 + 104);
    v14 = *(v0 + 112);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    (*(v12 + 104))(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v14);
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    IntentParameter.projectedValue.getter();
    (*(v29 + 16))(v9, v10, v30);
    IntentDialog.init(_:)();
    v15 = type metadata accessor for IntentDialog();
    (*(*(v15 - 8) + 56))(v13, 0, 1, v15);
    type metadata accessor for AppIntentError();
    sub_100486F54(&unk_1006BFBC0, &type metadata accessor for AppIntentError);
    swift_allocError();
    IntentParameter.needsValueError(_:)();

    sub_1000073B4(v13, &unk_1006BE0D0);
    swift_willThrow();

    (*(v29 + 8))(v10, v30);
    sub_1001AD144(v32);
    goto LABEL_7;
  }

  v3 = v2;
  if (![v3 ic_isModernNoteType])
  {
    v16 = *(v0 + 224);
    v17 = *(v0 + 216);
    sub_100197CCC();
    swift_allocError();
    *v18 = 4;
    swift_willThrow();

    sub_1001AD144(v17);
    goto LABEL_7;
  }

  v4 = *(v0 + 264);
  v5 = *(v0 + 224);
  v6 = *(v0 + 96);
  v7 = swift_task_alloc();
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v0 + 40;
  v7[5] = v6;
  NSManagedObjectContext.performAndWait<A>(_:)();
  if (v4)
  {
    v8 = *(v0 + 224);
    sub_1001AD144(*(v0 + 216));

    sub_1003E88B0(*(v0 + 40), *(v0 + 48));
LABEL_7:

    v19 = *(v0 + 8);

    return v19();
  }

  v21 = *(v0 + 40);
  v22 = *(v0 + 48);
  *(v0 + 272) = v21;
  *(v0 + 280) = v22;
  if (!v21)
  {
    v27 = *(v0 + 224);
    v28 = *(v0 + 216);
    type metadata accessor for ICError(0);
    *(v0 + 80) = 227;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_100486F54(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    sub_1001AD144(v28);
    goto LABEL_7;
  }

  sub_1003E8870(v21, v22);
  v23 = v21;
  v24 = v22;
  v25 = swift_task_alloc();
  *(v0 + 288) = v25;
  *v25 = v0;
  v25[1] = sub_100486338;
  v26 = *(v0 + 208);

  return NoteEntity.init(for:in:)(v26, v23, v24);
}

uint64_t sub_100486338()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_1004866AC;
  }

  else
  {
    v2 = sub_10048644C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10048644C()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[28];
  v4 = v0[26];
  v5 = v0[27];
  sub_100486F54(&qword_1006BE480, type metadata accessor for NoteEntity);
  static IntentResult.result<A>(value:)();

  sub_1001AD144(v4);
  sub_1001AD144(v5);
  sub_1003E88B0(v2, v1);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1004865B8()
{
  v1 = *(v0 + 216);

  sub_1001AD144(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004866AC()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 216);

  sub_1001AD144(v3);
  sub_1003E88B0(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

void sub_1004867B8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 ic_existingObjectWithID:a2];
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = sub_100487144(v7);
      v10 = v9;

      if (!v3)
      {
        v11 = *a3;
        v12 = *(a3 + 8);
        *a3 = v8;
        *(a3 + 8) = v10;
        sub_1003E88B0(v11, v12);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_100486864(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_1001E26AC;

  return InsertAllMentionIntent.perform()(a1);
}

uint64_t sub_100486910@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = type metadata accessor for InputConnectionBehavior();
  v39 = *(v1 - 8);
  v40 = v1;
  __chkstk_darwin(v1);
  v38 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10015DA04(&unk_1006BE0D0);
  v4 = __chkstk_darwin(v3 - 8);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v36 = &v32 - v6;
  v7 = sub_10015DA04(&unk_1006BCAC0);
  __chkstk_darwin(v7 - 8);
  v35 = &v32 - v8;
  v9 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v9 - 8);
  v33 = &v32 - v10;
  v11 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Locale();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for LocalizedStringResource();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v34 = sub_10015DA04(&qword_1006BCB98);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v20 = *(v12 + 104);
  v20(v14, enum case for LocalizedStringResource.BundleDescription.main(_:), v11);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20(v14, v19, v11);
  v21 = v33;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v18 + 56))(v21, 0, 1, v17);
  v22 = type metadata accessor for NoteEntity(0);
  (*(*(v22 - 8) + 56))(v35, 1, 1, v22);
  v23 = type metadata accessor for IntentDialog();
  v24 = *(*(v23 - 8) + 56);
  v24(v36, 1, 1, v23);
  v24(v37, 1, 1, v23);
  v44 = sub_10026EE08();
  v45 = v25;
  v46 = v26;
  v47 = v27;
  v48 = v28;
  (*(v39 + 104))(v38, enum case for InputConnectionBehavior.default(_:), v40);
  sub_1001797CC();
  v29 = IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
  sub_10015DA04(&qword_1006C34B0);
  v42 = 0xD000000000000021;
  v43 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  v31 = v41;
  *(v41 + 8) = 0;
  *(v31 + 16) = 0;
  *v31 = v29;
  *(v31 + 24) = 1;
  *(v31 + 32) = result;
  return result;
}

uint64_t sub_100486F54(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100486FA0()
{
  result = qword_1006C96B0;
  if (!qword_1006C96B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C96B0);
  }

  return result;
}

unint64_t sub_100486FF8()
{
  result = qword_1006C96B8;
  if (!qword_1006C96B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C96B8);
  }

  return result;
}

unint64_t sub_1004870E0()
{
  result = qword_1006BFAA0;
  if (!qword_1006BFAA0)
  {
    sub_10017992C(&unk_1006BE4B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFAA0);
  }

  return result;
}

id sub_100487144(void *a1)
{
  v1 = a1;
  v2 = [a1 managedObjectContext];
  if (v2)
  {
    v3 = v2;
    if (![v1 isSharedViaICloud])
    {
      sub_100197CCC();
      swift_allocError();
      v5 = 5;
      goto LABEL_7;
    }

    if ([v1 isPasswordProtectedAndLocked])
    {
      sub_100197CCC();
      swift_allocError();
      v5 = 15;
LABEL_7:
      *v4 = v5;
LABEL_8:
      swift_willThrow();

      return v1;
    }

    if (![v1 isEditable])
    {
      sub_100197CCC();
      swift_allocError();
      v5 = 16;
      goto LABEL_7;
    }

    v7 = [v1 textStorage];
    if (!v7)
    {
      type metadata accessor for ICError(0);
      v1 = sub_1001E27A0(_swiftEmptyArrayStorage);
      sub_100486F54(&qword_1006BE4D0, type metadata accessor for ICError);
      _BridgedStoredNSError.init(_:userInfo:)();
      goto LABEL_8;
    }

    v8 = v7;
    v9 = [v7 length];
    v10 = [objc_allocWithZone(ICAttachmentInsertionController) initWithNote:v1];
    v11 = objc_opt_self();
    v12 = [v11 allKeyword];
    if (!v12)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = String._bridgeToObjectiveC()();
    }

    v13 = [v11 allUserRecordName];
    if (!v13)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = String._bridgeToObjectiveC()();
    }

    v14 = [objc_opt_self() createMentionAttachmentIfApplicableWithMentionText:v12 userRecordName:v13 note:v1 parentAttachment:0];

    if (v14)
    {

      v15 = String._bridgeToObjectiveC()();
      [v14 updateChangeCountWithReason:v15];
    }

    [v1 updateModificationDateAndChangeCountAndSaveImmediately];
    v17 = 0;
    if ([v3 save:&v17])
    {
      v16 = v17;
      v1 = [v1 objectID];
    }

    else
    {
      v1 = v17;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for ICError(0);
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_100486F54(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  return v1;
}

id sub_10048759C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v79 = a3;
  v73 = a4;
  v74 = a5;
  v78 = a2;
  v6 = _s14AudioRecordingV8FragmentVMa(0);
  v70 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v72 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10015DA04(&unk_1006BE0B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v70 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v81 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v70 - v15;
  v17 = [a1 document];
  UUID.init()();
  v18 = objc_allocWithZone(ICTTAudioRecording);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v20 = [v18 initWithDocument:v17 identity:isa];

  v75 = *(v12 + 8);
  v75(v16, v11);
  v71 = a1;
  v21 = [a1 document];
  v22 = [v21 replica];

  v76 = v12 + 8;
  v77 = v11;
  if (v22)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = *(v12 + 32);
    v23(v10, v16, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    v24 = v81;
    v23(v81, v10, v11);
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    v25 = v81;
    UUID.init()();
    v26 = (*(v12 + 48))(v10, 1, v11);
    v24 = v25;
    if (v26 != 1)
    {
      sub_10035E478(v10);
    }
  }

  v27 = v80;
  v28 = v80[1];
  v29 = v82;
  v30 = v74;
  if (v28)
  {
    v31 = v80[2];
    v32 = *v80;
    v33 = sub_1001909D4(_swiftEmptyArrayStorage);
    v34 = sub_1002EEF18(v33, v78, v79, v30, v32, v28, v31);
    if (v29)
    {
LABEL_12:
      v75(v24, v77);

      return v20;
    }

    v35 = v34;

    v36 = objc_allocWithZone(ICTTMergeableAttributedString);
    v37 = UUID._bridgeToObjectiveC()().super.isa;
    v38 = [v36 initWithReplicaID:v37];

    [v20 setTopLineSummary:v38];
    v39 = [v20 topLineSummary];
    if (v39)
    {
      v40 = v39;
      ICTTMergeableAttributedString.insertAuthorAttributedString(_:at:)(v35, 0);
    }
  }

  v41 = v27[4];
  if (v41)
  {
    v42 = v27[5];
    v43 = v27[3];
    v44 = sub_1001909D4(_swiftEmptyArrayStorage);
    v45 = sub_1002EEF18(v44, v78, v79, v30, v43, v41, v42);
    if (v29)
    {
      goto LABEL_12;
    }

    v46 = v45;

    v47 = objc_allocWithZone(ICTTMergeableAttributedString);
    v48 = UUID._bridgeToObjectiveC()().super.isa;
    v49 = [v47 initWithReplicaID:v48];

    [v20 setSummary:v49];
    v50 = [v20 summary];
    if (v50)
    {
      v51 = v50;
      ICTTMergeableAttributedString.insertAuthorAttributedString(_:at:)(v46, 0);
    }

    if (v27[7])
    {
      v52 = 0;
    }

    else
    {
      v52 = [objc_allocWithZone(NSNumber) initWithInteger:v27[6]];
    }

    [v20 setSummaryVersion:{v52, v70}];
  }

  if (v27[8])
  {
    v53 = v27[8];
  }

  else
  {
    v53 = _swiftEmptyArrayStorage;
  }

  v54 = v53[2];
  if (v54)
  {
    v82 = v29;
    v55 = (*(v70 + 80) + 32) & ~*(v70 + 80);
    v79 = v53;
    v56 = v53 + v55;
    v57 = *(v70 + 72);

    v59 = v71;
    v58 = v72;
    v60 = v20;
    v61 = v73;
    do
    {
      sub_10048A6F4(v56, v58, _s14AudioRecordingV8FragmentVMa);
      v62 = sub_1004899F4(v59, v61);
      sub_10048A75C(v58, _s14AudioRecordingV8FragmentVMa);
      v63 = [v60 fragments];
      [v63 addObject:v62];

      v56 += v57;
      --v54;
    }

    while (v54);

    v27 = v80;
    v20 = v60;
  }

  else
  {
  }

  v64 = *(v27 + 72);
  v65 = v77;
  v66 = v81;
  if (v64 == 2)
  {
    v67 = 0;
  }

  else
  {
    v67 = [objc_allocWithZone(NSNumber) initWithBool:v64 & 1];
  }

  [v20 setCallRecording:{v67, v70}];

  if ((v27[11] & 1) == 0)
  {
    v68 = [objc_allocWithZone(NSNumber) initWithInteger:v27[10]];
    [v20 setCallType:v68];
  }

  v75(v66, v65);
  return v20;
}

uint64_t sub_100487CB8(void *a1)
{
  v3 = v1;
  v5 = sub_10015DA04(&qword_1006C9880);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10017CC60(a1, a1[3]);
  sub_10048B6CC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v13 = *(v3 + 2);
  v11 = 0;
  sub_10027ABE8();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 24);
    v13 = *(v3 + 5);
    v11 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v12 = *(v3 + 8);
    v11 = 3;
    sub_10015DA04(&qword_1006C9868);
    sub_10048B720(&qword_1006C9888, &qword_1006C9890);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100487F8C()
{
  v1 = *v0;
  v2 = 0x53656E694C706F74;
  v3 = 0x746E656D67617266;
  v4 = 0x65526C6C61437369;
  if (v1 != 4)
  {
    v4 = 0x657079546C6C6163;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7972616D6D7573;
  if (v1 != 1)
  {
    v5 = 0x567972616D6D7573;
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

uint64_t sub_100488070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10048AE1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100488098(uint64_t a1)
{
  v2 = sub_10048B6CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004880D4(uint64_t a1)
{
  v2 = sub_10048B6CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100488110@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10048B038(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    a2[2] = v7[2];
    a2[3] = v5;
    a2[4] = v8[0];
    *(a2 + 73) = *(v8 + 9);
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    a2[1] = v6;
  }

  return result;
}

void sub_10048817C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _s14AudioRecordingV17TranscriptSegmentVMa(0);
  v71 = *(v4 - 8);
  v72 = v4;
  __chkstk_darwin(v4);
  v6 = (&v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10015DA04(&unk_1006C1710);
  v8 = __chkstk_darwin(v7 - 8);
  v70 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v65 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = _s14AudioRecordingV8FragmentVMa(0);
  v16 = *(v66 + 20);
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v74 = *(v18 + 56);
  v75 = v17;
  v73 = v18 + 56;
  v74(a2 + v16, 1, 1);
  v19 = [a1 identity];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = UUID.uuidString.getter();
  v22 = v21;
  (*(v13 + 8))(v15, v12);
  *a2 = v20;
  a2[1] = v22;
  v68 = a2;
  v23 = a1;
  v24 = [a1 createdDate];
  if (v24)
  {
    v25 = v24;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  (v74)(v11, v26, 1, v75);
  sub_10023A078(v11, v68 + v16);
  v27 = [a1 transcript];
  v28 = [v27 allObjects];

  type metadata accessor for ICTTTranscriptSegment();
  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = v72;
  if (v29 >> 62)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
    v67 = v23;
    if (v31)
    {
      goto LABEL_6;
    }

LABEL_28:

    v33 = _swiftEmptyArrayStorage;
    goto LABEL_29;
  }

  v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v67 = v23;
  if (!v31)
  {
    goto LABEL_28;
  }

LABEL_6:
  v76 = _swiftEmptyArrayStorage;
  sub_100189864(0, v31 & ~(v31 >> 63), 0);
  if (v31 < 0)
  {
    __break(1u);
    return;
  }

  v32 = 0;
  v69 = v29 & 0xC000000000000001;
  v33 = v76;
  do
  {
    if (v69)
    {
      v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v34 = *(v29 + 8 * v32 + 32);
    }

    v35 = v34;
    v36 = *(v30 + 20);
    (v74)(v6 + v36, 1, 1, v75);
    v37 = [v35 text];
    if (v37)
    {
      v38 = v37;
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    v42 = v70;
    *v6 = v39;
    v6[1] = v41;
    v43 = [v35 timestamp];
    if (v43)
    {
      v44 = v43;
      [v44 doubleValue];
      Date.init(timeIntervalSince1970:)();

      v45 = 0;
    }

    else
    {
      v45 = 1;
    }

    (v74)(v42, v45, 1, v75);
    sub_10023A078(v42, v6 + v36);
    v46 = [v35 duration];
    v47 = v46;
    if (v46)
    {
      [v46 doubleValue];
      v49 = v48;
    }

    else
    {
      v49 = 0;
    }

    v30 = v72;
    v50 = v6 + *(v72 + 24);
    *v50 = v49;
    v50[8] = v47 == 0;
    v51 = [v35 speaker];
    if (v51)
    {
      v52 = v51;
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;
    }

    else
    {

      v53 = 0;
      v55 = 0;
    }

    v56 = (v6 + *(v30 + 28));
    *v56 = v53;
    v56[1] = v55;
    v76 = v33;
    v58 = v33[2];
    v57 = v33[3];
    if (v58 >= v57 >> 1)
    {
      sub_100189864(v57 > 1, v58 + 1, 1);
      v33 = v76;
    }

    ++v32;
    v33[2] = v58 + 1;
    sub_10048A68C(v6, v33 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v58, _s14AudioRecordingV17TranscriptSegmentVMa);
  }

  while (v31 != v32);

LABEL_29:
  v60 = v66;
  v59 = v67;
  *(v68 + *(v66 + 24)) = v33;
  v61 = [v59 transcriptVersion];
  v62 = v61;
  if (v61)
  {
    v63 = [v61 integerValue];
  }

  else
  {
    v63 = 0;
  }

  v64 = v68 + *(v60 + 28);
  *v64 = v63;
  v64[8] = v62 == 0;
}

uint64_t sub_1004887C4(void *a1)
{
  v3 = v1;
  v5 = sub_10015DA04(&qword_1006C9840);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10017CC60(a1, a1[3]);
  sub_10048AD2C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v9 = _s14AudioRecordingV8FragmentVMa(0);
    v13 = 1;
    type metadata accessor for Date();
    sub_10048ACE4(&qword_1006C1230, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    sub_10015DA04(&unk_1006C97D0);
    sub_10048AD80(&qword_1006C9848, &qword_1006C9850);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11[14] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100488A44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v3 - 8);
  v31 = &v27 - v4;
  v5 = sub_10015DA04(&qword_1006C9820);
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v7 = &v27 - v6;
  v8 = _s14AudioRecordingV8FragmentVMa(0);
  v9 = (v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = 0;
  v11[1] = 0;
  v12 = v9[7];
  v13 = type metadata accessor for Date();
  v14 = *(*(v13 - 8) + 56);
  v30 = v12;
  v14(v11 + v12, 1, 1, v13);
  v15 = v9[8];
  *(v11 + v15) = 0;
  v16 = (v11 + v9[9]);
  *v16 = 0;
  *(v16 + 8) = 1;
  sub_10017CC60(a1, a1[3]);
  sub_10048AD2C();
  v32 = v7;
  v17 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    sub_100009F60(a1);
  }

  else
  {
    v27 = v16;
    v28 = v15;
    v35 = a1;
    v19 = v31;
    v18 = v32;
    v40 = 0;
    *v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v11[1] = v20;
    v39 = 1;
    sub_10048ACE4(&qword_1006C1220, &type metadata accessor for Date);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10023A078(v19, v11 + v30);
    sub_10015DA04(&unk_1006C97D0);
    v38 = 2;
    sub_10048AD80(&qword_1006C9830, &qword_1006C9838);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v22 = v33;
    *(v11 + v28) = v36;
    v37 = 3;
    v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v25 = v24;
    (*(v22 + 8))(v18, v34);
    v26 = v27;
    *v27 = v23;
    *(v26 + 8) = v25 & 1;
    sub_10048A6F4(v11, v29, _s14AudioRecordingV8FragmentVMa);
    sub_100009F60(v35);
  }

  return sub_10048A75C(v11, _s14AudioRecordingV8FragmentVMa);
}

unint64_t sub_100488E74()
{
  v1 = 0x696669746E656469;
  v2 = 0x697263736E617274;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x4164657461657263;
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

uint64_t sub_100488EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10048BB04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100488F24(uint64_t a1)
{
  v2 = sub_10048AD2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100488F60(uint64_t a1)
{
  v2 = sub_10048AD2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100488FCC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for UUID();
  __chkstk_darwin(v11 - 8);
  type metadata accessor for ICTTTranscriptSegment();
  v12 = a1;
  UUID.init()();
  v13 = ICTTTranscriptSegment.__allocating_init(document:identity:)();
  if (*(v2 + 8))
  {
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  [v13 setText:v14];

  v15 = _s14AudioRecordingV17TranscriptSegmentVMa(0);
  sub_100006038(v2 + v15[5], v10, &unk_1006C1710);
  v16 = 0;
  if ((*(v5 + 48))(v10, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v10, v4);
    Date.timeIntervalSince1970.getter();
    v16 = [objc_allocWithZone(NSNumber) initWithDouble:v17];
    (*(v5 + 8))(v7, v4);
  }

  [v13 setTimestamp:v16];

  v18 = v2 + v15[6];
  if (*(v18 + 8))
  {
    v19 = 0;
  }

  else
  {
    v19 = [objc_allocWithZone(NSNumber) initWithDouble:*v18];
  }

  [v13 setDuration:v19];

  if (*(v2 + v15[7] + 8))
  {
    v20 = String._bridgeToObjectiveC()();
  }

  else
  {
    v20 = 0;
  }

  [v13 setSpeaker:v20];

  return v13;
}

uint64_t sub_1004892E8(void *a1)
{
  v3 = sub_10015DA04(&qword_1006C9818);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10017CC60(a1, a1[3]);
  sub_10048AC90();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    _s14AudioRecordingV17TranscriptSegmentVMa(0);
    v8[14] = 1;
    type metadata accessor for Date();
    sub_10048ACE4(&qword_1006C1230, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100489508@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v3 - 8);
  v31 = &v27 - v4;
  v33 = sub_10015DA04(&qword_1006C9808);
  v30 = *(v33 - 8);
  __chkstk_darwin(v33);
  v6 = &v27 - v5;
  v7 = _s14AudioRecordingV17TranscriptSegmentVMa(0);
  v8 = (v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = 0;
  v10[1] = 0;
  v11 = v8[7];
  v12 = type metadata accessor for Date();
  v13 = *(*(v12 - 8) + 56);
  v29 = v11;
  v13(v10 + v11, 1, 1, v12);
  v14 = (v10 + v8[8]);
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = (v10 + v8[9]);
  *v15 = 0;
  v15[1] = 0;
  sub_10017CC60(a1, a1[3]);
  sub_10048AC90();
  v32 = v6;
  v16 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    sub_100009F60(a1);
  }

  else
  {
    v34 = v14;
    v17 = v30;
    v18 = v31;
    v38 = 0;
    *v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v10[1] = v19;
    v37 = 1;
    sub_10048ACE4(&qword_1006C1220, &type metadata accessor for Date);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10023A078(v18, v10 + v29);
    v36 = 2;
    v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v21 = v34;
    *v34 = v20;
    *(v21 + 8) = v22 & 1;
    v35 = 3;
    v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v26 = v25;
    (*(v17 + 8))(v32, v33);
    *v15 = v24;
    v15[1] = v26;
    sub_10048A6F4(v10, v28, _s14AudioRecordingV17TranscriptSegmentVMa);
    sub_100009F60(0);
  }

  return sub_10048A75C(v10, _s14AudioRecordingV17TranscriptSegmentVMa);
}

uint64_t sub_1004898AC()
{
  v1 = 1954047348;
  v2 = 0x6E6F697461727564;
  if (*v0 != 2)
  {
    v2 = 0x72656B61657073;
  }

  if (*v0)
  {
    v1 = 0x6D617473656D6974;
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

uint64_t sub_100489924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10048BC84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10048994C(uint64_t a1)
{
  v2 = sub_10048AC90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100489988(uint64_t a1)
{
  v2 = sub_10048AC90();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1004899F4(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v47 = a1;
  v5 = _s14AudioRecordingV17TranscriptSegmentVMa(0);
  v46 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v8 - 8);
  v10 = v43 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10015DA04(&unk_1006BE0B0);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v43 - v19;
  v21 = v3[1];
  if (v21 && *(a2 + 16) && (v22 = sub_1002DF11C(*v3, v21), (v23 & 1) != 0) && (v24 = [*(*(a2 + 56) + 8 * v22) identifier]) != 0)
  {
    v25 = v24;
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.init(uuidString:)();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    (*(v12 + 56))(v20, 1, 1, v11);
  }

  sub_100006038(v20, v18, &unk_1006BE0B0);
  v26 = *(v12 + 48);
  if (v26(v18, 1, v11) == 1)
  {
    UUID.init()();
    if (v26(v18, 1, v11) != 1)
    {
      sub_10035E478(v18);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v18, v11);
  }

  type metadata accessor for ICTTAudioRecording.Fragment();
  v27 = v47;
  v28 = ICTTAudioRecording.Fragment.__allocating_init(document:identity:)();
  v29 = _s14AudioRecordingV8FragmentVMa(0);
  sub_100006038(v3 + v29[5], v10, &unk_1006C1710);
  v30 = type metadata accessor for Date();
  v31 = *(v30 - 8);
  isa = 0;
  if ((*(v31 + 48))(v10, 1, v30) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v31 + 8))(v10, v30);
  }

  [v28 setCreatedDate:isa];

  if (*(v3 + v29[6]))
  {
    v33 = *(v3 + v29[6]);
  }

  else
  {
    v33 = _swiftEmptyArrayStorage;
  }

  v34 = v33[2];
  if (v34)
  {
    v44 = v29;
    v45 = v20;
    v47 = v3;
    v35 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v43[1] = v33;
    v36 = v33 + v35;
    v37 = *(v46 + 72);

    do
    {
      sub_10048A6F4(v36, v7, _s14AudioRecordingV17TranscriptSegmentVMa);
      v38 = sub_100488FCC(v27);
      sub_10048A75C(v7, _s14AudioRecordingV17TranscriptSegmentVMa);
      v39 = [v28 transcript];
      [v39 addObject:v38];

      v36 += v37;
      --v34;
    }

    while (v34);

    v3 = v47;
    v29 = v44;
    v20 = v45;
  }

  else
  {
  }

  v40 = v3 + v29[7];
  if (v40[8])
  {
    v41 = 0;
  }

  else
  {
    v41 = [objc_allocWithZone(NSNumber) initWithInteger:*v40];
  }

  [v28 setTranscriptVersion:v41];

  sub_10035E478(v20);
  return v28;
}

void sub_100489F54(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v70 = a4;
  v7 = _s14AudioRecordingV8FragmentVMa(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v10 = (&v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = 1;
  v86 = 1;
  v11 = [a1 fragments];
  v12 = [v11 count];

  if (v12 < 1)
  {
    sub_100279F6C(a3);

    v69 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v71 = 0;
    v68 = 0;
    v67 = 0;
    v66 = 0;
    v28 = v89;
    LODWORD(v72) = 2;
    LOBYTE(v29) = v86;
    v30 = 1;
LABEL_33:
    v56 = v71;
    v74 = v71;
    v75 = v27;
    v76 = v26;
    v77 = v25;
    v78 = v24;
    v79 = v23;
    v80 = v22;
    LOBYTE(v81) = v28;
    *(&v81 + 1) = *v88;
    HIDWORD(v81) = *&v88[3];
    v82 = v21;
    LOBYTE(v83) = v72;
    *(&v83 + 1) = *v87;
    HIDWORD(v83) = *&v87[3];
    v57 = v69;
    v84 = v69;
    v85 = v29;
    sub_10048A604(&v74);
    v58 = v70;
    *v70 = v56;
    v58[1] = v30;
    v58[2] = v26;
    v58[3] = v25;
    v58[4] = v24;
    v58[5] = v23;
    v59 = v68;
    v58[6] = v22;
    v58[7] = v59;
    v60 = v67;
    v58[8] = v21;
    v58[9] = v60;
    v58[10] = v57;
    *(v58 + 88) = v66;
    return;
  }

  v13 = [a1 topLineSummary];
  v14 = a1;
  if (v13)
  {
    v15 = v13;
    v16 = a2;
    sub_10027A180(a3, &v74);
    v17 = v16;
    v14 = a1;
    v18 = sub_1002FCE90(v15, v17, a3);
    v61 = v19;
    v62 = v20;
  }

  else
  {
    v18 = 0;
    v61 = 0;
    v62 = 0;
  }

  v31 = [v14 summary];
  if (v31)
  {
    v63 = sub_1002FCE90(v31, a2, a3);
    v64 = v32;
    v65 = v33;
  }

  else
  {
    sub_100279F6C(a3);
    v63 = 0;
    v64 = 0;
    v65 = 0;
  }

  v34 = [v14 summaryVersion];
  v35 = v34;
  if (v34)
  {
    v68 = [v34 integerValue];
  }

  else
  {
    v68 = 0;
  }

  v89 = v35 == 0;
  v36 = [v14 fragments];
  v37 = [v36 allObjects];

  type metadata accessor for ICTTAudioRecording.Fragment();
  v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v38 >> 62)
  {
    v39 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v71 = v18;
  v69 = v14;
  if (v39)
  {
    v74 = _swiftEmptyArrayStorage;
    sub_100189604(0, v39 & ~(v39 >> 63), 0);
    if (v39 < 0)
    {
      __break(1u);
      goto LABEL_36;
    }

    v72 = a2;
    v40 = 0;
    v21 = v74;
    do
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v41 = *(v38 + 8 * v40 + 32);
      }

      sub_10048817C(v41, v10);
      v74 = v21;
      v43 = v21[2];
      v42 = v21[3];
      if (v43 >= v42 >> 1)
      {
        sub_100189604(v42 > 1, v43 + 1, 1);
        v21 = v74;
      }

      ++v40;
      v21[2] = v43 + 1;
      sub_10048A68C(v10, v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v43, _s14AudioRecordingV8FragmentVMa);
    }

    while (v39 != v40);

    v18 = v71;
    a2 = v72;
  }

  else
  {

    v21 = _swiftEmptyArrayStorage;
  }

  v44 = [v69 callRecording];
  v45 = v65;
  v24 = v64;
  v46 = v63;
  if (v44)
  {
    v47 = v44;
    LODWORD(v72) = [v44 BOOLValue];
  }

  else
  {
    LODWORD(v72) = 2;
  }

  v48 = v68;
  v49 = v69;
  v50 = [v69 callType];
  if (!v50)
  {

    v54 = 0;
    goto LABEL_32;
  }

  v51 = v18;
  v52 = v50;
  v53 = [v50 unsignedIntegerValue];

  v54 = v53;
  if ((v53 & 0x8000000000000000) == 0)
  {
    v86 = 0;
    v18 = v51;
LABEL_32:
    v69 = v54;
    v55 = v61;
    v74 = v18;
    v75 = v61;
    v76 = v62;
    v77 = v46;
    v78 = v24;
    v79 = v45;
    v80 = v48;
    v28 = v89;
    LOBYTE(v81) = v89;
    HIDWORD(v81) = *&v88[3];
    *(&v81 + 1) = *v88;
    v82 = v21;
    LOBYTE(v83) = v72;
    HIDWORD(v83) = *&v87[3];
    *(&v83 + 1) = *v87;
    v26 = v62;
    v84 = v54;
    v22 = v48;
    v25 = v46;
    v29 = v86;
    v85 = v86;
    v68 = v81;
    v23 = v45;
    v67 = v83;
    sub_10048A634(&v74, v73);
    v27 = v55;
    v30 = v55;
    v66 = v29;
    goto LABEL_33;
  }

LABEL_36:
  __break(1u);
}

uint64_t sub_10048A68C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10048A6F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10048A75C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10048A7E4()
{
  sub_10027A640(319, &qword_1006C0620);
  if (v0 <= 0x3F)
  {
    sub_10001E5B8();
    if (v1 <= 0x3F)
    {
      sub_10027A640(319, &unk_1006C9728);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10048A8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_10015DA04(&unk_1006C1710);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10048A994(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_10015DA04(&unk_1006C1710);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10048AA44()
{
  sub_10027A640(319, &qword_1006C0620);
  if (v0 <= 0x3F)
  {
    sub_10001E5B8();
    if (v1 <= 0x3F)
    {
      sub_10048AB18();
      if (v2 <= 0x3F)
      {
        sub_10027A640(319, qword_1006BFE18);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10048AB18()
{
  if (!qword_1006C97C8)
  {
    sub_10017992C(&unk_1006C97D0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006C97C8);
    }
  }
}

uint64_t sub_10048AB7C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10048AB94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10048ABB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 89))
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

uint64_t sub_10048AC14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_10048AC90()
{
  result = qword_1006C9810;
  if (!qword_1006C9810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9810);
  }

  return result;
}

uint64_t sub_10048ACE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10048AD2C()
{
  result = qword_1006C9828;
  if (!qword_1006C9828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9828);
  }

  return result;
}

uint64_t sub_10048AD80(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10017992C(&unk_1006C97D0);
    sub_10048ACE4(a2, _s14AudioRecordingV17TranscriptSegmentVMa);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10048AE1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53656E694C706F74 && a2 == 0xEE007972616D6D75;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x567972616D6D7573 && a2 == 0xEE006E6F69737265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E656D67617266 && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65526C6C61437369 && a2 == 0xEF676E6964726F63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657079546C6C6163 && a2 == 0xE800000000000000)
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

uint64_t sub_10048B038@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10015DA04(&qword_1006C9858);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  v62 = 1;
  v59 = 1;
  v9 = a1[3];
  v38 = a1;
  sub_10017CC60(a1, v9);
  sub_10048B6CC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v63 = v2;
    v37 = 0;
    sub_100009F60(v38);
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = v62;
    *v53 = *v61;
    *&v53[3] = *&v61[3];
    v54 = v37;
    v55 = 2;
    *v56 = *v60;
    *&v56[3] = *&v60[3];
    v57 = 0;
    v58 = v59;
    return sub_10048A604(&v45);
  }

  else
  {
    LOBYTE(v39) = 0;
    sub_10027AF04();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v36 = v45;
    v34 = v46;
    v35 = v47;
    LOBYTE(v39) = 1;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v37 = a2;
    v12 = v45;
    v11 = v46;
    v13 = v47;
    LOBYTE(v45) = 2;
    v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v30 = v12;
    v31 = v11;
    v33 = v13;
    v62 = v14 & 1;
    sub_10015DA04(&qword_1006C9868);
    LOBYTE(v39) = 3;
    sub_10048B720(&qword_1006C9870, &qword_1006C9878);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v15 = v45;
    LOBYTE(v45) = 4;
    HIDWORD(v29) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v16 = v15;
    v44 = 5;
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v63 = 0;
    v19 = v18;
    v20 = v17;
    (*(v6 + 8))(v8, v5);
    v19 &= 1u;
    v59 = v19;
    *&v39 = v36;
    v21 = v34;
    *(&v39 + 1) = v34;
    v22 = v35;
    *&v40 = v35;
    v23 = v30;
    *(&v40 + 1) = v30;
    v24 = v31;
    *&v41 = v31;
    *(&v41 + 1) = v33;
    *&v42 = v32;
    v25 = v62;
    BYTE8(v42) = v62;
    *v43 = v15;
    LOBYTE(v15) = BYTE4(v29);
    v43[8] = BYTE4(v29);
    *&v43[16] = v20;
    v43[24] = v19;
    sub_10048A634(&v39, &v45);
    sub_100009F60(v38);
    v45 = v36;
    v46 = v21;
    v47 = v22;
    v48 = v23;
    v49 = v24;
    v50 = v33;
    v51 = v32;
    v52 = v25;
    v54 = v16;
    v55 = v15;
    v57 = v20;
    v58 = v19;
    result = sub_10048A604(&v45);
    v26 = v42;
    v27 = v37;
    v37[2] = v41;
    v27[3] = v26;
    v27[4] = *v43;
    *(v27 + 73) = *&v43[9];
    v28 = v40;
    *v27 = v39;
    v27[1] = v28;
  }

  return result;
}

unint64_t sub_10048B6CC()
{
  result = qword_1006C9860;
  if (!qword_1006C9860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9860);
  }

  return result;
}

uint64_t sub_10048B720(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10017992C(&qword_1006C9868);
    sub_10048ACE4(a2, _s14AudioRecordingV8FragmentVMa);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10048B7F0()
{
  result = qword_1006C9898;
  if (!qword_1006C9898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9898);
  }

  return result;
}

unint64_t sub_10048B848()
{
  result = qword_1006C98A0;
  if (!qword_1006C98A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C98A0);
  }

  return result;
}

unint64_t sub_10048B8A0()
{
  result = qword_1006C98A8;
  if (!qword_1006C98A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C98A8);
  }

  return result;
}

unint64_t sub_10048B8F8()
{
  result = qword_1006C98B0;
  if (!qword_1006C98B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C98B0);
  }

  return result;
}

unint64_t sub_10048B950()
{
  result = qword_1006C98B8;
  if (!qword_1006C98B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C98B8);
  }

  return result;
}

unint64_t sub_10048B9A8()
{
  result = qword_1006C98C0;
  if (!qword_1006C98C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C98C0);
  }

  return result;
}

unint64_t sub_10048BA00()
{
  result = qword_1006C98C8;
  if (!qword_1006C98C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C98C8);
  }

  return result;
}

unint64_t sub_10048BA58()
{
  result = qword_1006C98D0;
  if (!qword_1006C98D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C98D0);
  }

  return result;
}

unint64_t sub_10048BAB0()
{
  result = qword_1006C98D8;
  if (!qword_1006C98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C98D8);
  }

  return result;
}

uint64_t sub_10048BB04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697263736E617274 && a2 == 0xEA00000000007470 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100575420 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10048BC84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72656B61657073 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t AddOrRemoveNoteLockIntent.perform()(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  sub_10015DA04(&unk_1006BE0D0);
  v2[23] = swift_task_alloc();
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  type metadata accessor for Locale();
  v2[27] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v2[28] = swift_task_alloc();
  v4 = type metadata accessor for LocalizedStringResource();
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v5 = type metadata accessor for NoteEntity(0);
  v2[33] = v5;
  v2[34] = *(v5 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  sub_10015DA04(&unk_1006BCAC0);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();

  return _swift_task_switch(sub_10048C084, 0, 0);
}

uint64_t sub_10048C084()
{
  v1 = *(v0 + 176);
  v2 = *(v1 + 32);
  *(v0 + 336) = v2;
  if (!v2)
  {
    type metadata accessor for ICError(0);
    *(v0 + 136) = 222;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_10048FED0(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
LABEL_17:

    v29 = *(v0 + 8);

    return v29();
  }

  v3 = *(v0 + 328);
  v4 = *(v0 + 264);
  v5 = *(v0 + 272);
  v6 = v2;
  AppDependency.wrappedValue.getter();
  v7 = *(v0 + 144);
  *(v0 + 344) = [v7 modernManagedObjectContext];

  v8 = swift_allocObject();
  *(v0 + 352) = v8;
  *(v8 + 16) = 0;
  *(v0 + 360) = *(v1 + 8);
  IntentParameter.wrappedValue.getter();
  v9 = *(v5 + 48);
  *(v0 + 368) = v9;
  *(v0 + 376) = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v9(v3, 1, v4))
  {
    sub_1000073B4(*(v0 + 328), &unk_1006BCAC0);
    *(v0 + 416) = 0;
    v10 = *(v0 + 352);
    swift_beginAccess();
    v11 = *(v10 + 16);
    *(v0 + 424) = v11;
    if (v11)
    {
      v12 = v11;
      if ([v12 ic_isModernNoteType])
      {

        return _swift_task_switch(sub_10048CC3C, 0, 0);
      }

      IntentParameter.wrappedValue.getter();
      v24 = *(v0 + 472);
      sub_100197CCC();
      swift_allocError();
      v26 = *(v0 + 344);
      v27 = *(v0 + 336);
      if (v24 == 1)
      {
        v28 = 32;
      }

      else
      {
        v28 = 23;
      }

      *v25 = v28;
      swift_willThrow();
    }

    else
    {
      v34 = *(v0 + 336);
      v18 = *(v0 + 248);
      v17 = *(v0 + 256);
      v31 = *(v0 + 240);
      v32 = *(v0 + 232);
      v33 = *(v0 + 344);
      v19 = *(v0 + 200);
      v20 = *(v0 + 208);
      v22 = *(v0 + 184);
      v21 = *(v0 + 192);
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      (*(v19 + 104))(v20, enum case for LocalizedStringResource.BundleDescription.main(_:), v21);
      LocalizedStringResource.init(_:table:locale:bundle:comment:)();
      IntentParameter.projectedValue.getter();
      (*(v31 + 16))(v18, v17, v32);
      IntentDialog.init(_:)();
      v23 = type metadata accessor for IntentDialog();
      (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
      type metadata accessor for AppIntentError();
      sub_10048FED0(&unk_1006BFBC0, &type metadata accessor for AppIntentError);
      swift_allocError();
      IntentParameter.needsValueError(_:)();

      sub_1000073B4(v22, &unk_1006BE0D0);
      swift_willThrow();

      (*(v31 + 8))(v17, v32);
    }

    goto LABEL_17;
  }

  v13 = *(v0 + 328);
  sub_1001AD0E0(v13, *(v0 + 312));
  sub_1000073B4(v13, &unk_1006BCAC0);
  AppDependency.wrappedValue.getter();
  v14 = *(v0 + 160);
  *(v0 + 384) = v14;
  v15 = swift_allocObject();
  *(v0 + 392) = v15;
  *(v15 + 16) = sub_10048FF18;
  *(v15 + 24) = v8;

  v16 = swift_task_alloc();
  *(v0 + 400) = v16;
  *v16 = v0;
  v16[1] = sub_10048C6E0;

  return sub_1001A861C(v14, sub_10048FF20, v15);
}

uint64_t sub_10048C6E0()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  v3 = *(v2 + 384);
  sub_1001AD144(*(v2 + 312));

  if (v0)
  {
    v4 = sub_10048D67C;
  }

  else
  {
    v4 = sub_10048C850;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10048C850()
{
  *(v0 + 416) = *(v0 + 408);
  v1 = *(v0 + 352);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v0 + 424) = v2;
  if (v2)
  {
    v3 = v2;
    if ([v3 ic_isModernNoteType])
    {

      return _swift_task_switch(sub_10048CC3C, 0, 0);
    }

    IntentParameter.wrappedValue.getter();
    v11 = *(v0 + 472);
    sub_100197CCC();
    swift_allocError();
    v13 = *(v0 + 344);
    v14 = *(v0 + 336);
    if (v11 == 1)
    {
      v15 = 32;
    }

    else
    {
      v15 = 23;
    }

    *v12 = v15;
    swift_willThrow();
  }

  else
  {
    v21 = *(v0 + 336);
    v4 = *(v0 + 248);
    v5 = *(v0 + 256);
    v18 = *(v0 + 240);
    v19 = *(v0 + 232);
    v20 = *(v0 + 344);
    v6 = *(v0 + 200);
    v7 = *(v0 + 208);
    v8 = *(v0 + 184);
    v9 = *(v0 + 192);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    (*(v6 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    IntentParameter.projectedValue.getter();
    (*(v18 + 16))(v4, v5, v19);
    IntentDialog.init(_:)();
    v10 = type metadata accessor for IntentDialog();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
    type metadata accessor for AppIntentError();
    sub_10048FED0(&unk_1006BFBC0, &type metadata accessor for AppIntentError);
    swift_allocError();
    IntentParameter.needsValueError(_:)();

    sub_1000073B4(v8, &unk_1006BE0D0);
    swift_willThrow();

    (*(v18 + 8))(v5, v19);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10048CC3C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v1[52];
  v5 = v1[53];
  v7 = v1[42];
  v6 = v1[43];
  v8 = v1[22];
  v1[2] = v2;
  v1[7] = v1 + 19;
  v1[3] = sub_10048CD84;
  v9 = swift_continuation_init();
  v10 = swift_task_alloc();
  v10[2] = v6;
  v10[3] = v5;
  v10[4] = v8;
  v10[5] = v7;
  v10[6] = v9;
  NSManagedObjectContext.performAndWait<A>(_:)();

  if (v4)
  {
    sub_10015DA04(&unk_1006C9B40);
    swift_allocError();
    *v11 = v4;
    swift_continuation_throwingResumeWithError();
  }

  return _swift_continuation_await(v3);
}

uint64_t sub_10048CD84()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 432) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_10048CEA8;
  }

  else
  {
    *(v1 + 440) = *(v1 + 152);
    v3 = sub_10048CFD8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10048CEA8()
{
  v1 = v0[53];
  v2 = v0[43];
  v3 = v0[42];
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10048CFD8()
{
  v1 = *(v0 + 440);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 managedObjectContext];
    *(v0 + 448) = v3;

    if (v3)
    {
      v4 = [v2 objectID];
      v5 = v3;
      v6 = swift_task_alloc();
      *(v0 + 456) = v6;
      *v6 = v0;
      v6[1] = sub_10048D320;
      v7 = *(v0 + 304);

      return NoteEntity.init(for:in:)(v7, v4, v5);
    }
  }

  IntentParameter.wrappedValue.getter();
  if (!*(v0 + 473))
  {
    v9 = *(v0 + 440);
    v10 = *(v0 + 424);
    v11 = *(v0 + 344);
    v12 = *(v0 + 336);
    sub_100197CCC();
    swift_allocError();
    v14 = 30;
    goto LABEL_10;
  }

  if (*(v0 + 473) != 1)
  {
    v15 = *(v0 + 368);
    v16 = *(v0 + 320);
    v17 = *(v0 + 264);
    IntentParameter.wrappedValue.getter();
    v18 = v15(v16, 1, v17);
    v19 = *(v0 + 320);
    if (v18)
    {
      sub_1000073B4(v19, &unk_1006BCAC0);
    }

    else
    {
      v20 = *(v19 + *(*(v0 + 264) + 28));
      sub_1000073B4(v19, &unk_1006BCAC0);
      if (v20)
      {
        v21 = 34;
LABEL_16:
        v9 = *(v0 + 440);
        v10 = *(v0 + 424);
        v11 = *(v0 + 344);
        v12 = *(v0 + 336);
        sub_100197CCC();
        swift_allocError();
        *v22 = v21;
        goto LABEL_17;
      }
    }

    v21 = 30;
    goto LABEL_16;
  }

  v9 = *(v0 + 440);
  v10 = *(v0 + 424);
  v11 = *(v0 + 344);
  v12 = *(v0 + 336);
  sub_100197CCC();
  swift_allocError();
  v14 = 34;
LABEL_10:
  *v13 = v14;
LABEL_17:
  swift_willThrow();

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_10048D320()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_10048D7A0;
  }

  else
  {
    v2 = sub_10048D434;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10048D434()
{
  v15 = v0[55];
  v16 = v0[56];
  v12 = v0[43];
  v13 = v0[53];
  v14 = v0[42];
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[35];
  v4 = v0[36];
  sub_1001AD0E0(v2, v1);
  v5 = _s11MobileNotes14OpenNoteIntentVACycfC_0();
  v7 = v6;
  v9 = v8;
  sub_1001AD0E0(v1, v4);
  sub_1001AD0E0(v4, v3);
  IntentParameter.wrappedValue.setter();
  sub_1001AD144(v4);
  sub_1001AD144(v1);
  v0[13] = v5;
  v0[14] = v7;
  v0[15] = v9;
  sub_10048FED0(&qword_1006BE480, type metadata accessor for NoteEntity);
  sub_10002128C();
  static IntentResult.result<A, B>(value:opensIntent:)();

  sub_1001AD144(v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10048D67C()
{
  v1 = *(v0 + 336);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10048D7A0()
{
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v3 = *(v0 + 424);
  v4 = *(v0 + 336);

  v5 = *(v0 + 8);

  return v5();
}

double AddOrRemoveNoteLockIntent.init()@<D0>(uint64_t a1@<X8>)
{
  sub_10048FF60(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t AddOrRemoveNoteLockIntent.target.setter(uint64_t a1)
{
  v2 = sub_10015DA04(&unk_1006BCAC0);
  __chkstk_darwin(v2 - 8);
  sub_1002D9248(a1, &v5 - v3);
  IntentParameter.wrappedValue.setter();
  return sub_1000073B4(a1, &unk_1006BCAC0);
}

uint64_t sub_10048D9D8()
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
  sub_100025918(v6, static AddOrRemoveNoteLockIntent.title);
  sub_10002597C(v6, static AddOrRemoveNoteLockIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t static AddOrRemoveNoteLockIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t static AddOrRemoveNoteLockIntent.parameterSummary.getter()
{
  KeyPath = swift_getKeyPath();
  v1 = sub_10015DA04(&qword_1006C98E8);
  v2 = sub_10002062C();
  v3 = sub_1000060B4(&qword_1006C98F8, &qword_1006C98E8);

  return ParameterSummarySwitchCondition.init(_:_:)(KeyPath, sub_10048DFFC, 0, v1, v2, v3);
}

uint64_t sub_10048DFFC@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_10015DA04(&qword_1006C99A0);
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  v3 = __chkstk_darwin(v1);
  v30 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v31 = v25 - v5;
  v6 = sub_10015DA04(&qword_1006C99A8);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v28 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - v11;
  __chkstk_darwin(v10);
  v29 = v25 - v13;
  v38 = 0;
  v35 = sub_10015DA04(&qword_1006C99B0);
  v25[3] = sub_10002062C();
  v14 = sub_10021BF28();
  v25[2] = sub_1000060B4(&qword_1006C99B8, &qword_1006C99B0);
  ParameterSummaryCaseCondition.init(_:_:)();
  v25[1] = sub_1000060B4(&qword_1006C99C0, &qword_1006C99A8);
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v36 = *(v7 + 8);
  v26 = v12;
  v36(v12, v6);
  v27 = v7 + 8;
  v37 = 1;
  v15 = v28;
  v25[0] = v14;
  ParameterSummaryCaseCondition.init(_:_:)();
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v36(v15, v6);
  v16 = v30;
  ParameterSummaryDefaultCaseCondition.init(_:)();
  sub_1000060B4(&qword_1006C99C8, &qword_1006C99A0);
  v17 = v31;
  v18 = v16;
  v19 = v32;
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v20 = *(v33 + 8);
  v20(v18, v19);
  v21 = v29;
  v22 = v26;
  static ParameterSummaryCaseBuilder.buildBlock<A, B, C>(_:_:_:)();
  v20(v17, v19);
  v23 = v36;
  v36(v22, v6);
  return v23(v21, v6);
}

uint64_t sub_10048E50C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v18[0] = a2;
  v18[1] = a3;
  v4 = sub_10015DA04(&qword_1006C99D0);
  __chkstk_darwin(v4 - 8);
  v5 = sub_10015DA04(&qword_1006C99D8);
  __chkstk_darwin(v5);
  v6 = sub_10015DA04(&qword_1006C99B0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v18 - v11;
  sub_10002062C();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C99E0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v14._countAndFlagsBits = a1;
  v14._object = v18[0];
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C99E8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v15);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:)();
  sub_1000060B4(&qword_1006C99B8, &qword_1006C99B0);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v16 = *(v7 + 8);
  v16(v10, v6);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v16)(v12, v6);
}

uint64_t (*AddOrRemoveNoteLockIntent.operation.modify(uint64_t *a1))()
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

uint64_t (*AddOrRemoveNoteLockIntent.target.modify(uint64_t *a1))()
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

uint64_t (*AddOrRemoveNoteLockIntent.loggingConfiguration.modify(uint64_t *a1))()
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
  return sub_10017D9DC;
}

void sub_10048E9B0(void *a1, uint64_t a2)
{
  if (([a1 isDeletedOrInTrash] & 1) == 0)
  {
    v4 = [a1 objectID];
    swift_beginAccess();
    v5 = *(a2 + 16);
    *(a2 + 16) = v4;
  }
}

void sub_10048EA28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = [a1 ic_existingObjectWithID:a2];
  if (!v7)
  {
    return;
  }

  v8 = v7;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {

    return;
  }

  v10 = v9;
  IntentParameter.wrappedValue.getter();
  v11 = [v10 isPasswordProtected];
  if (v19)
  {
    if (v19 == 1)
    {
      if (v11)
      {
        v12 = 0;
        goto LABEL_13;
      }

      v13 = 33;
LABEL_16:
      sub_100197CCC();
      swift_allocError();
      *v18 = v13;
      swift_willThrow();

      return;
    }

    v12 = v11 ^ 1;
  }

  else
  {
    if (v11)
    {
      v13 = 24;
      goto LABEL_16;
    }

    v12 = 1;
  }

LABEL_13:
  v13 = _s11MobileNotes15AppIntentsErrorO5error3forACSgSo23ICNotePreventLockReasonV_tFZ_0([v10 preventLockReason]);
  if (v13 != 42)
  {
    goto LABEL_16;
  }

  v14 = [objc_allocWithZone(ICNoteLockManager) initWithNote:v10];
  [v14 setWindow:a4];
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = v14;
  if (v12)
  {
    v23 = sub_100490D6C;
    v24 = v15;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_10048ECF4;
    v22 = &unk_10065FAD8;
    v16 = _Block_copy(&v19);
    v17 = v14;

    [v17 addLockWithCompletionHandler:v16];
  }

  else
  {
    v23 = sub_100490CFC;
    v24 = v15;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_10048ECF4;
    v22 = &unk_10065FA88;
    v16 = _Block_copy(&v19);
    v17 = v14;

    [v17 removeLockWithCompletionHandler:v16];
  }

  _Block_release(v16);
}

uint64_t sub_10048ECF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_10048ED48()
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
  sub_100025918(v10, static AddOrRemoveNoteLockIntent.LockOperation.typeDisplayRepresentation);
  sub_10002597C(v10, static AddOrRemoveNoteLockIntent.LockOperation.typeDisplayRepresentation);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v9 + 56))(v2, 1, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_10048F094()
{
  v0 = sub_10015DA04(&unk_1006BEA80);
  __chkstk_darwin(v0 - 8);
  v37 = v29 - v1;
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v35 = v29 - v3;
  v45 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v45 - 8);
  __chkstk_darwin(v45);
  v33 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for LocalizedStringResource();
  v10 = *(v43 - 8);
  __chkstk_darwin(v43);
  sub_10015DA04(&unk_1006C9990);
  v11 = sub_10015DA04(&qword_1006BDCC8);
  v38 = v11;
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v34 = 2 * v12;
  v14 = swift_allocObject();
  v36 = v14;
  *(v14 + 16) = xmmword_100539C40;
  v47 = v14 + v13;
  v31 = *(v11 + 48);
  *(v14 + v13) = 0;
  v29[1] = v9;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v46 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v15 = *(v4 + 104);
  v32 = v4 + 104;
  v39 = v15;
  v16 = v33;
  v15(v33);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v30 = *(v10 + 56);
  v44 = v10 + 56;
  v17 = v35;
  v18 = v43;
  v30(v35, 1, 1, v43);
  v41 = type metadata accessor for DisplayRepresentation.Image();
  v19 = *(v41 - 8);
  v40 = *(v19 + 56);
  v42 = v19 + 56;
  v20 = v37;
  v40(v37, 1, 1, v41);
  v21 = v47;
  v22 = v20;
  DisplayRepresentation.init(title:subtitle:image:)();
  v23 = v38;
  v31 = *(v38 + 48);
  *(v21 + v12) = 1;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v39(v16, v46, v45);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v24 = v18;
  v25 = v30;
  v30(v17, 1, 1, v24);
  v40(v22, 1, 1, v41);
  DisplayRepresentation.init(title:subtitle:image:)();
  v26 = (v47 + v34);
  v34 = *(v23 + 48);
  *v26 = 2;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v39(v16, v46, v45);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v25(v17, 1, 1, v43);
  v40(v22, 1, 1, v41);
  DisplayRepresentation.init(title:subtitle:image:)();
  v27 = sub_100192278(v36);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static AddOrRemoveNoteLockIntent.LockOperation.caseDisplayRepresentations = v27;
  return result;
}

uint64_t *AddOrRemoveNoteLockIntent.LockOperation.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_1006BC9C0 != -1)
  {
    swift_once();
  }

  return &static AddOrRemoveNoteLockIntent.LockOperation.caseDisplayRepresentations;
}

uint64_t static AddOrRemoveNoteLockIntent.LockOperation.caseDisplayRepresentations.getter()
{
  if (qword_1006BC9C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static AddOrRemoveNoteLockIntent.LockOperation.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_1006BC9C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static AddOrRemoveNoteLockIntent.LockOperation.caseDisplayRepresentations = a1;
}

uint64_t (*static AddOrRemoveNoteLockIntent.LockOperation.caseDisplayRepresentations.modify())()
{
  if (qword_1006BC9C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t AddOrRemoveNoteLockIntent.LockOperation.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 6579297;
  }

  if (a1 == 1)
  {
    return 0x65766F6D6572;
  }

  return 0x656C67676F74;
}

uint64_t sub_10048F90C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x65766F6D6572;
  if (v2 != 1)
  {
    v3 = 0x656C67676F74;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 6579297;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  v6 = 0x65766F6D6572;
  if (*a2 != 1)
  {
    v6 = 0x656C67676F74;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 6579297;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

unint64_t sub_10048F9F8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MobileNotes25AddOrRemoveNoteLockIntentV0G9OperationO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_10048FA28(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0x65766F6D6572;
  if (v2 != 1)
  {
    v4 = 0x656C67676F74;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 6579297;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

Swift::Int sub_10048FA78()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10048FB0C()
{
  String.hash(into:)();
}

Swift::Int sub_10048FB8C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10048FC54(uint64_t a1)
{
  v2 = sub_100179BF8();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10048FCA0(uint64_t a1)
{
  v2 = sub_100490A9C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10048FD34(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = sub_10015DA04(&qword_1006C98E8);
  v5 = sub_1000060B4(&qword_1006C98F8, &qword_1006C98E8);

  return ParameterSummarySwitchCondition.init(_:_:)(KeyPath, sub_10048DFFC, 0, v4, a2, v5);
}

uint64_t sub_10048FE00(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_1001E26AC;

  return AddOrRemoveNoteLockIntent.perform()(a1);
}

uint64_t sub_10048FED0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10048FF20@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = 0;
  return result;
}

uint64_t sub_10048FF60@<X0>(uint64_t *a1@<X8>)
{
  v60 = a1;
  v1 = sub_10015DA04(&unk_1006BCAC0);
  __chkstk_darwin(v1 - 8);
  v59 = v44 - v2;
  v3 = type metadata accessor for InputConnectionBehavior();
  v4 = *(v3 - 8);
  v64 = v3;
  v65 = v4;
  __chkstk_darwin(v3);
  v63 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10015DA04(&unk_1006BE0D0);
  v7 = __chkstk_darwin(v6 - 8);
  v62 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v58 = v44 - v9;
  v10 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v10 - 8);
  v61 = v44 - v11;
  v12 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Locale();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v17 - 8);
  v18 = type metadata accessor for LocalizedStringResource();
  v52 = v18;
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v44[1] = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_10015DA04(&unk_1006BCEB0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v21 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v22 = *(v13 + 104);
  v45 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v46 = v12;
  v22(v15, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  v47 = v22;
  v48 = v13 + 104;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v22(v15, v21, v12);
  v23 = v61;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v24 = *(v19 + 56);
  v51 = v19 + 56;
  v53 = v24;
  v24(v23, 0, 1, v18);
  LOBYTE(v68) = 3;
  v25 = type metadata accessor for IntentDialog();
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v49 = v27;
  v50 = v26 + 56;
  v28 = v58;
  v27(v58, 1, 1, v25);
  v27(v62, 1, 1, v25);
  v55 = enum case for InputConnectionBehavior.default(_:);
  v29 = *(v65 + 104);
  v65 += 104;
  v56 = v29;
  v29(v63);
  sub_100179BF8();
  v57 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  v54 = sub_10015DA04(&qword_1006BCB98);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v30 = v45;
  v31 = v46;
  v32 = v47;
  v47(v15, v45, v46);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32(v15, v30, v31);
  v33 = v61;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v53(v33, 0, 1, v52);
  v34 = type metadata accessor for NoteEntity(0);
  (*(*(v34 - 8) + 56))(v59, 1, 1, v34);
  v35 = v49;
  v49(v28, 1, 1, v25);
  v35(v62, 1, 1, v25);
  v68 = sub_100270998();
  v69 = v36;
  v70 = v37;
  v71 = v38;
  v72 = v39;
  v56(v63, v55, v64);
  sub_1001797CC();
  v40 = IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
  sub_10015DA04(&qword_1006C34B0);
  v66 = 0xD000000000000021;
  v67 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v41 = AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&unk_1006BCA40);
  v66 = 0xD000000000000024;
  v67 = 0x800000010055CF90;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  v43 = v60;
  *v60 = v57;
  v43[1] = v40;
  v43[2] = v41;
  v43[3] = result;
  v43[4] = 0;
  return result;
}

unint64_t _s11MobileNotes25AddOrRemoveNoteLockIntentV0G9OperationO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10064D780, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100490890()
{
  result = qword_1006C9900;
  if (!qword_1006C9900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9900);
  }

  return result;
}

unint64_t sub_1004908E8()
{
  result = qword_1006C9908;
  if (!qword_1006C9908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9908);
  }

  return result;
}

unint64_t sub_100490940()
{
  result = qword_1006C9910;
  if (!qword_1006C9910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9910);
  }

  return result;
}

unint64_t sub_100490998()
{
  result = qword_1006C9918;
  if (!qword_1006C9918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9918);
  }

  return result;
}

unint64_t sub_1004909F0()
{
  result = qword_1006C9920;
  if (!qword_1006C9920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9920);
  }

  return result;
}

unint64_t sub_100490A44()
{
  result = qword_1006C9928;
  if (!qword_1006C9928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9928);
  }

  return result;
}

unint64_t sub_100490A9C()
{
  result = qword_1006C9938;
  if (!qword_1006C9938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9938);
  }

  return result;
}

unint64_t sub_100490B44()
{
  result = qword_1006C9948;
  if (!qword_1006C9948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9948);
  }

  return result;
}

unint64_t sub_100490B9C()
{
  result = qword_1006C9950;
  if (!qword_1006C9950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9950);
  }

  return result;
}

unint64_t sub_100490BF4()
{
  result = qword_1006C9958;
  if (!qword_1006C9958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9958);
  }

  return result;
}

uint64_t sub_100490D00()
{
  v1 = *(v0 + 16);
  **(*(v1 + 64) + 40) = [*(v0 + 24) updatedNote];

  return swift_continuation_throwingResume();
}

id sub_100490D78()
{
  v146 = sub_10015DA04(&qword_1006C9B00);
  v145 = *(v146 - 8);
  v0 = __chkstk_darwin(v146);
  v142 = v118 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = v1;
  __chkstk_darwin(v0);
  v156 = v118 - v2;
  v144 = sub_10015DA04(&qword_1006C9B08);
  v143 = *(v144 - 8);
  v3 = *(v143 + 64);
  v4 = __chkstk_darwin(v144);
  v140 = v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v155 = v118 - v5;
  v6 = sub_10015DA04(&qword_1006C9B10);
  v162 = *(v6 - 8);
  v163 = v6;
  v7 = *(v162 + 64);
  v8 = __chkstk_darwin(v6);
  v150 = v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v154 = v118 - v9;
  v10 = sub_10015DA04(&qword_1006C9B18);
  v160 = *(v10 - 8);
  v161 = v10;
  v11 = *(v160 + 64);
  v12 = __chkstk_darwin(v10);
  v149 = v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v153 = v118 - v13;
  v159 = sub_10015DA04(&qword_1006C9B20);
  v152 = *(v159 - 8);
  v14 = *(v152 + 64);
  v15 = __chkstk_darwin(v159);
  __chkstk_darwin(v15);
  v17 = v118 - v16;
  v18 = sub_10015DA04(&qword_1006C9B28);
  v151 = *(v18 - 8);
  v19 = *(v151 + 64);
  v20 = __chkstk_darwin(v18);
  __chkstk_darwin(v20);
  v22 = v118 - v21;
  v23 = sub_10015DA04(&unk_1006C9B30);
  v24 = __chkstk_darwin(v23);
  v25 = __chkstk_darwin(v24);
  v30 = *(v164 + OBJC_IVAR___ICSmartFolderComposerViewController____lazy_storage___collectionView);
  if (v30)
  {
    v31 = *(v164 + OBJC_IVAR___ICSmartFolderComposerViewController____lazy_storage___collectionView);
  }

  else
  {
    v123 = v29;
    v133 = v28;
    v124 = v19;
    v134 = v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v125 = v14;
    v135 = v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v126 = v11;
    v127 = v7;
    v136 = v118 - v26;
    v137 = v27;
    v147 = v25;
    v138 = v22;
    v148 = v18;
    v139 = v17;
    v128 = v3;
    v129 = OBJC_IVAR___ICSmartFolderComposerViewController____lazy_storage___collectionView;
    v32 = *(v164 + OBJC_IVAR___ICSmartFolderComposerViewController_smartFolder);
    v33 = v32;
    v121 = sub_100492024();
    v120 = v34;
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = type metadata accessor for SmartFolderComposerCollectionView();
    v41 = objc_allocWithZone(v40);
    *&v41[OBJC_IVAR____TtC11MobileNotes33SmartFolderComposerCollectionView_smartFolderComposerDataSource] = 0;
    v122 = v32;
    *&v41[OBJC_IVAR____TtC11MobileNotes33SmartFolderComposerCollectionView_smartFolder] = v32;
    v42 = swift_allocObject();
    *(v42 + 16) = v40;
    v43 = objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration);
    v132 = v33;

    v158 = v38;

    v157 = v39;

    v44 = [v43 init];
    v45 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    aBlock[4] = sub_100495B68;
    aBlock[5] = v42;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002B39FC;
    aBlock[3] = &unk_10065FC90;
    v46 = _Block_copy(aBlock);
    v47 = [v45 initWithSectionProvider:v46 configuration:v44];

    _Block_release(v46);

    v165.receiver = v41;
    v165.super_class = v40;
    v48 = objc_msgSendSuper2(&v165, "initWithFrame:collectionViewLayout:", v47, 0.0, 0.0, 0.0, 0.0);

    v49 = objc_opt_self();
    v50 = v48;
    v51 = [v49 sharedContext];
    if (v51)
    {
      v52 = v51;
      v53 = [v51 managedObjectContext];
    }

    else
    {
      v53 = 0;
    }

    v54 = objc_allocWithZone(type metadata accessor for SmartFolderComposerDataSource());
    v55 = qword_1006C79A0;
    v56 = v132;
    v57 = v50;

    v54[v55] = ICInternalSettingsSmartFoldersCanIncludeRecentlyDeletedNotes();
    v131 = v37;
    v58 = qword_1006C79B0;
    *&v54[qword_1006C79B0] = 0;
    v54[qword_1006C79B8] = 1;
    v59 = v35;
    v60 = &v54[qword_1006C79C0];
    v61 = [objc_opt_self() mainBundle];
    v62 = String._bridgeToObjectiveC()();
    v63 = [v61 localizedStringForKey:v62 value:0 table:0];
    v130 = v36;
    v64 = v63;

    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;

    *v60 = v65;
    v60[1] = v67;
    v118[0] = v54;
    *&v54[qword_1006C79A8] = v57;
    v68 = *&v54[v58];
    *&v54[v58] = v53;
    v132 = v57;
    v119 = v53;

    v118[1] = type metadata accessor for TagDetailCell();
    v69 = v136;
    UICollectionView.CellRegistration.init(handler:)();
    v70 = swift_allocObject();
    v71 = v121;
    v70[2] = v122;
    v70[3] = v71;
    v70[4] = v120;
    v70[5] = sub_100495B40;
    v118[2] = v59;
    v70[6] = v59;
    type metadata accessor for SmartFolderComposerTextFieldCell();
    v122 = v56;

    v72 = v138;
    UICollectionView.CellRegistration.init(handler:)();
    v73 = swift_allocObject();
    v74 = v131;
    *(v73 + 16) = sub_100495B50;
    *(v73 + 24) = v74;
    type metadata accessor for TagContainerCell();

    v75 = v139;
    UICollectionView.CellRegistration.init(handler:)();
    v76 = swift_allocObject();
    v77 = v157;
    v78 = v158;
    v76[2] = sub_100495B58;
    v76[3] = v78;
    v76[4] = sub_100495B60;
    v76[5] = v77;
    type metadata accessor for SmartFolderComposerCreateTagCell();

    v79 = v153;
    UICollectionView.CellRegistration.init(handler:)();
    v80 = swift_allocObject();
    v81 = v130;
    *(v80 + 16) = sub_100495B48;
    *(v80 + 24) = v81;
    type metadata accessor for SmartFolderComposerSwitchCell();

    v82 = v154;
    UICollectionView.CellRegistration.init(handler:)();
    v83 = v137;
    (*(v137 + 16))(v133, v69, v147);
    v84 = v151;
    (*(v151 + 16))(v134, v72, v148);
    v85 = v152;
    (*(v152 + 16))(v135, v75, v159);
    (*(v160 + 16))(v149, v79, v161);
    v86 = v162;
    (*(v162 + 16))(v150, v82, v163);
    v87 = v83;
    v88 = (*(v83 + 80) + 16) & ~*(v83 + 80);
    v89 = (v123 + *(v84 + 80) + v88) & ~*(v84 + 80);
    v90 = (v124 + *(v85 + 80) + v89) & ~*(v85 + 80);
    v91 = v160;
    v92 = (v125 + *(v160 + 80) + v90) & ~*(v160 + 80);
    v93 = (v126 + *(v86 + 80) + v92) & ~*(v86 + 80);
    v94 = swift_allocObject();
    (*(v87 + 32))(v94 + v88, v133, v147);
    (*(v84 + 32))(v94 + v89, v134, v148);
    (*(v85 + 32))(v94 + v90, v135, v159);
    (*(v91 + 32))(v94 + v92, v149, v161);
    (*(v162 + 32))(v94 + v93, v150, v163);
    v95 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    v150 = v95;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for TagHeaderCell();
    v96 = v95;
    v97 = v155;
    UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v98 = v156;
    UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
    v99 = v143;
    v100 = v140;
    v101 = v144;
    (*(v143 + 16))(v140, v97, v144);
    v102 = v145;
    v103 = v142;
    v104 = v146;
    (*(v145 + 16))(v142, v98, v146);
    v105 = (*(v99 + 80) + 16) & ~*(v99 + 80);
    v106 = (v128 + *(v102 + 80) + v105) & ~*(v102 + 80);
    v107 = swift_allocObject();
    (*(v99 + 32))(v107 + v105, v100, v101);
    (*(v102 + 32))(v107 + v106, v103, v104);
    dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();
    sub_1003FF1F0();
    v108 = v132;

    v109 = v122;

    (*(v102 + 8))(v156, v104);
    (*(v99 + 8))(v155, v101);
    (*(v162 + 8))(v154, v163);
    (*(v160 + 8))(v153, v161);
    (*(v152 + 8))(v139, v159);
    (*(v151 + 8))(v138, v148);
    (*(v137 + 8))(v136, v147);
    v110 = *&v108[OBJC_IVAR____TtC11MobileNotes33SmartFolderComposerCollectionView_smartFolderComposerDataSource];
    *&v108[OBJC_IVAR____TtC11MobileNotes33SmartFolderComposerCollectionView_smartFolderComposerDataSource] = v150;
    v111 = v108;

    v112 = objc_opt_self();
    v113 = v111;
    v114 = [v112 ICGroupedBackgroundColor];
    [v113 setBackgroundColor:v114];

    [v113 setShowsVerticalScrollIndicator:0];

    v115 = *(v164 + v129);
    *(v164 + v129) = v113;
    v31 = v113;

    v30 = 0;
  }

  v116 = v30;
  return v31;
}

uint64_t sub_100492024()
{
  v1 = *(v0 + OBJC_IVAR___ICSmartFolderComposerViewController_smartFolder);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 title];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = [objc_opt_self() mainBundle];
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 localizedStringForKey:v6 value:0 table:0];

    if (!v7)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = String._bridgeToObjectiveC()();
    }

    v3 = [objc_opt_self() deduplicatingTitle:v7 account:*(v0 + OBJC_IVAR___ICSmartFolderComposerViewController_account)];

    if (!v3)
    {
      return 0;
    }

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v4;
}

void sub_100492184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (a2)
    {
      v15[0] = a1;
      v15[1] = a2;

      static CharacterSet.whitespacesAndNewlines.getter();
      sub_10019E0AC();
      a1 = StringProtocol.trimmingCharacters(in:)();
      v11 = v10;
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      v11 = 0;
    }

    v12 = &v9[OBJC_IVAR___ICSmartFolderComposerViewController_folderTitle];
    *v12 = a1;
    v12[1] = v11;
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    *(v13 + OBJC_IVAR___ICSmartFolderComposerViewController_hasChanges) = 1;
    [v13 setModalInPresentation:1];
    sub_100492A88();
  }
}

void sub_100492338(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    *(Strong + OBJC_IVAR___ICSmartFolderComposerViewController_allowsRecentlyDeleted) = a1 & 1;
    *(Strong + OBJC_IVAR___ICSmartFolderComposerViewController_hasChanges) = 1;
    [Strong setModalInPresentation:1];
    sub_100492A88();
  }
}

void sub_1004923C0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR___ICSmartFolderComposerViewController_tagSelection);
    *(Strong + OBJC_IVAR___ICSmartFolderComposerViewController_tagSelection) = a1;
    v5 = a1;

    sub_100492B84();
  }
}

void sub_100492438(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = (Strong + OBJC_IVAR___ICSmartFolderComposerViewController_createTagText);
    *v6 = a1;
    v6[1] = a2;

    v5[OBJC_IVAR___ICSmartFolderComposerViewController_hasChanges] = 1;
    [v5 setModalInPresentation:1];
    sub_100492A88();
  }
}

void sub_1004924E4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10049255C(a1, a2, 0, 0);
  }
}

void sub_10049255C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for CharacterSet();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v54[1] = a1;
    v54[2] = a2;

    static CharacterSet.whitespacesAndNewlines.getter();
    sub_10019E0AC();
    v15 = StringProtocol.trimmingCharacters(in:)();
    v17 = v16;
    (*(v11 + 8))(v14, v10);

    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      v19 = *&v5[OBJC_IVAR___ICSmartFolderComposerViewController_account];
      v20 = String._bridgeToObjectiveC()();

      v21 = [objc_opt_self() hashtagWithDisplayText:v20 account:v19 createIfNecessary:1];

      if (v21)
      {
        v22 = [v21 managedObjectContext];
        [v22 ic_save];

        v23 = [v21 standardizedContent];
        if (v23)
        {
          v24 = v23;
          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = v26;

          v28 = OBJC_IVAR___ICSmartFolderComposerViewController_discardableTagIdentifiers;
          swift_beginAccess();
          v29 = *&v5[v28];

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v5[v28] = v29;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v29 = sub_1001CAE70(0, *(v29 + 2) + 1, 1, v29);
            *&v5[v28] = v29;
          }

          v32 = *(v29 + 2);
          v31 = *(v29 + 3);
          if (v32 >= v31 >> 1)
          {
            v29 = sub_1001CAE70((v31 > 1), v32 + 1, 1, v29);
          }

          *(v29 + 2) = v32 + 1;
          v33 = &v29[16 * v32];
          *(v33 + 4) = v25;
          *(v33 + 5) = v27;
          *&v5[v28] = v29;
          swift_endAccess();
          v34 = OBJC_IVAR___ICSmartFolderComposerViewController_hasChanges;
          v5[OBJC_IVAR___ICSmartFolderComposerViewController_hasChanges] = 1;
          [v5 setModalInPresentation:1];
          sub_100492A88();
          v35 = sub_100490D78();
          v36 = *&v35[OBJC_IVAR____TtC11MobileNotes33SmartFolderComposerCollectionView_smartFolderComposerDataSource];
          if (v36)
          {
            v37 = v36;
            v38 = sub_1003FFF38();
            if (v38)
            {
              v39 = v38;
              v40 = sub_100435D90();
              v54[0] = v27;
              v41 = v25;
              v42 = v40;
              [v40 setText:0];

              v25 = v41;
              v27 = v54[0];
            }
          }

          v43 = &v5[OBJC_IVAR___ICSmartFolderComposerViewController_createTagText];
          *v43 = 0;
          v43[1] = 0;

          v5[v34] = 1;
          [v5 setModalInPresentation:1];
          sub_100492A88();
          v44 = *&v5[OBJC_IVAR___ICSmartFolderComposerViewController____lazy_storage___collectionView];
          v45 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v46 = swift_allocObject();
          v46[2] = v45;
          v46[3] = v25;
          v46[4] = v27;
          v46[5] = a3;
          v46[6] = a4;
          v47 = *&v44[OBJC_IVAR____TtC11MobileNotes33SmartFolderComposerCollectionView_smartFolderComposerDataSource];
          if (v47)
          {
            v48 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v49 = swift_allocObject();
            v49[2] = v48;
            v49[3] = sub_100495F44;
            v49[4] = v46;

            sub_1001C71A4(a3);

            v50 = v47;
            v51 = v44;
            sub_1003FF1F0();
            v52 = sub_1003FFF54();
            if (v52)
            {
              v53 = v52;
              sub_1002B49B8(1, sub_100273A78, v49);
            }

            else
            {
            }
          }

          else
          {

            sub_1001C71A4(a3);
          }
        }

        return;
      }
    }

    else
    {
    }
  }

  if (a3)
  {
    a3(v12);
  }
}

void sub_100492A88()
{
  v1 = sub_100272498(&OBJC_IVAR___ICSmartFolderComposerViewController____lazy_storage___doneBarButtonItem, &selRef_doneActionWithSender_, 0);
  v7 = v1;
  if ((*(v0 + OBJC_IVAR___ICSmartFolderComposerViewController_isCreatingTag) & 1) == 0 && (v2 = *(v0 + OBJC_IVAR___ICSmartFolderComposerViewController_folderTitle + 8)) != 0 && ((v2 & 0x2000000000000000) != 0 ? (v3 = HIBYTE(v2) & 0xF) : (v3 = *(v0 + OBJC_IVAR___ICSmartFolderComposerViewController_folderTitle) & 0xFFFFFFFFFFFFLL), v3))
  {
    if ([*(v0 + OBJC_IVAR___ICSmartFolderComposerViewController_tagSelection) isEmpty])
    {
      v4 = *(v0 + OBJC_IVAR___ICSmartFolderComposerViewController_createTagText + 8);
      if (v4)
      {
        if ((v4 & 0x2000000000000000) != 0)
        {
          v5 = HIBYTE(v4) & 0xF;
        }

        else
        {
          v5 = *(v0 + OBJC_IVAR___ICSmartFolderComposerViewController_createTagText) & 0xFFFFFFFFFFFFLL;
        }

        v6 = v5 != 0;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 1;
    }

    v1 = v7;
  }

  else
  {
    v6 = 0;
  }

  [v1 setEnabled:v6];
}

void sub_100492B84()
{
  v0[OBJC_IVAR___ICSmartFolderComposerViewController_hasChanges] = 1;
  [v0 setModalInPresentation:1];
  sub_100492A88();
  v1 = sub_100490D78();
  [v1 endEditing:1];

  v2 = *&v0[OBJC_IVAR___ICSmartFolderComposerViewController_tagSelection];
  v6 = *&v0[OBJC_IVAR___ICSmartFolderComposerViewController____lazy_storage___collectionView];
  v3 = [v2 selectedTagCount];
  v4 = *&v6[OBJC_IVAR____TtC11MobileNotes33SmartFolderComposerCollectionView_smartFolderComposerDataSource];
  if (v4)
  {
    v5 = v4;
    sub_1004001B4(v3);
  }
}

void sub_100492C60(void *a1)
{
  *(v1 + OBJC_IVAR___ICSmartFolderComposerViewController____lazy_storage___collectionView) = 0;
  *(v1 + OBJC_IVAR___ICSmartFolderComposerViewController____lazy_storage___cancelBarButtonItem) = 0;
  *(v1 + OBJC_IVAR___ICSmartFolderComposerViewController____lazy_storage___doneBarButtonItem) = 0;
  *(v1 + OBJC_IVAR___ICSmartFolderComposerViewController_allowsRecentlyDeleted) = 0;
  v2 = (v1 + OBJC_IVAR___ICSmartFolderComposerViewController_createTagText);
  *v2 = 0;
  v2[1] = 0;
  *(v1 + OBJC_IVAR___ICSmartFolderComposerViewController_discardableTagIdentifiers) = _swiftEmptyArrayStorage;
  v3 = (v1 + OBJC_IVAR___ICSmartFolderComposerViewController_folderTitle);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR___ICSmartFolderComposerViewController_hasChanges) = 0;
  *(v1 + OBJC_IVAR___ICSmartFolderComposerViewController_isCreatingTag) = 0;
  *(v1 + OBJC_IVAR___ICSmartFolderComposerViewController_scrollViewKeyboardResizer) = 0;
  *(v1 + OBJC_IVAR___ICSmartFolderComposerViewController_smartFolder) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *sub_100492D70(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR___ICSmartFolderComposerViewController____lazy_storage___collectionView] = 0;
  *&v4[OBJC_IVAR___ICSmartFolderComposerViewController____lazy_storage___cancelBarButtonItem] = 0;
  *&v4[OBJC_IVAR___ICSmartFolderComposerViewController____lazy_storage___doneBarButtonItem] = 0;
  v4[OBJC_IVAR___ICSmartFolderComposerViewController_allowsRecentlyDeleted] = 0;
  v10 = &v4[OBJC_IVAR___ICSmartFolderComposerViewController_createTagText];
  *v10 = 0;
  v10[1] = 0;
  *&v4[OBJC_IVAR___ICSmartFolderComposerViewController_discardableTagIdentifiers] = _swiftEmptyArrayStorage;
  v11 = &v4[OBJC_IVAR___ICSmartFolderComposerViewController_folderTitle];
  *v11 = 0;
  v11[1] = 0;
  v4[OBJC_IVAR___ICSmartFolderComposerViewController_hasChanges] = 0;
  v4[OBJC_IVAR___ICSmartFolderComposerViewController_isCreatingTag] = 0;
  *&v4[OBJC_IVAR___ICSmartFolderComposerViewController_scrollViewKeyboardResizer] = 0;
  v12 = OBJC_IVAR___ICSmartFolderComposerViewController_smartFolder;
  *&v4[OBJC_IVAR___ICSmartFolderComposerViewController_smartFolder] = 0;
  *&v4[OBJC_IVAR___ICSmartFolderComposerViewController_account] = a1;
  *&v4[v12] = a2;
  v13 = &v4[OBJC_IVAR___ICSmartFolderComposerViewController_completion];
  *v13 = a3;
  v13[1] = a4;
  v14 = objc_opt_self();
  v15 = a2;
  v16 = a1;

  v17 = [v14 sharedContext];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 managedObjectContext];
  }

  else
  {
    v19 = 0;
  }

  v20 = [objc_allocWithZone(ICTagSelection) initWithManagedObjectContext:v19];

  *&v4[OBJC_IVAR___ICSmartFolderComposerViewController_tagSelection] = v20;
  v27.receiver = v4;
  v27.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v27, "initWithNibName:bundle:", 0, 0);
  v22 = sub_100492024();
  v24 = v23;

  v25 = &v21[OBJC_IVAR___ICSmartFolderComposerViewController_folderTitle];
  *v25 = v22;
  v25[1] = v24;

  return v21;
}

void sub_100493014(uint64_t a1, uint64_t a2, uint64_t a3, NSString a4, uint64_t a5)
{
  if (a4)
  {
    a4 = String._bridgeToObjectiveC()();
  }

  v8 = a4;
  (*(a5 + 16))(a5, a1, a2);
}

void sub_100493090()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = sub_100490D78();
    [v2 addSubview:v3];

    v4 = OBJC_IVAR___ICSmartFolderComposerViewController____lazy_storage___collectionView;
    [*&v0[OBJC_IVAR___ICSmartFolderComposerViewController____lazy_storage___collectionView] ic_addAnchorsToFillSuperview];
    [*&v0[v4] setDelegate:v0];
    if (*&v0[OBJC_IVAR___ICSmartFolderComposerViewController_smartFolder])
    {
      v5 = [objc_opt_self() mainBundle];
      v6 = String._bridgeToObjectiveC()();
      v7 = String._bridgeToObjectiveC()();
      v8 = [v5 localizedStringForKey:v6 value:v7 table:0];
    }

    else
    {
      v6 = [objc_opt_self() mainBundle];
      v7 = String._bridgeToObjectiveC()();
      v8 = [v6 localizedStringForKey:v7 value:0 table:0];
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();

    [v0 setTitle:v9];

    v10 = [v0 navigationItem];
    v11 = sub_100272498(&OBJC_IVAR___ICSmartFolderComposerViewController____lazy_storage___cancelBarButtonItem, &selRef_cancelActionWithSender_, 1);
    [v10 setLeftBarButtonItem:v11];

    v12 = [v0 navigationItem];
    v13 = sub_100272498(&OBJC_IVAR___ICSmartFolderComposerViewController____lazy_storage___doneBarButtonItem, &selRef_doneActionWithSender_, 0);
    [v12 setRightBarButtonItem:v13];

    sub_100492A88();
    v14 = [v0 navigationController];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 presentationController];

      if (v16)
      {
        [v16 setDelegate:v0];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100493444(char a1)
{
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "viewWillAppear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR___ICSmartFolderComposerViewController_scrollViewKeyboardResizer];
  if (v3)
  {
    [v3 startAutoResizing];
  }

  v4 = sub_100490D78();
  [v4 layoutIfNeeded];

  sub_100493544();
  if (!*&v1[OBJC_IVAR___ICSmartFolderComposerViewController_smartFolder])
  {
    v5 = *&v1[OBJC_IVAR___ICSmartFolderComposerViewController____lazy_storage___collectionView];
    v6 = *&v5[OBJC_IVAR____TtC11MobileNotes33SmartFolderComposerCollectionView_smartFolderComposerDataSource];
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = sub_1003FF468();
      if (v9)
      {
        v10 = v9;
        v11 = sub_100435D90();

        [v11 becomeFirstResponder];
      }
    }
  }
}

void sub_100493544()
{
  v1 = sub_10015DA04(&unk_1006C3FD0);
  __chkstk_darwin(v1 - 8);
  v87 = &v68 - v2;
  v86 = type metadata accessor for IndexPath();
  v3 = *(v86 - 8);
  __chkstk_darwin(v86);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ICQueryType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v0;
  v10 = *&v0[OBJC_IVAR___ICSmartFolderComposerViewController_smartFolder];
  if (v10)
  {
    v78 = v10;
    v11 = [v78 smartFolderQueryObjC];
    if (v11)
    {
      v82 = v5;
      v75 = v7;
      v76 = v6;
      v73 = v11;
      dispatch thunk of ICQuery.type.getter();
      v12 = [v78 managedObjectContext];
      v74 = v9;
      v13 = ICQueryType.tagSelection(managedObjectContext:)();

      v14 = [v13 tagIdentifiers];
      v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v77 = v15;
      v16 = *(v15 + 16);
      v17 = v83;
      if (v16)
      {
        v85 = (v3 + 48);
        v80 = (v3 + 8);
        v81 = (v3 + 32);
        v71 = v89;
        v18 = (v77 + 40);
        do
        {
          v20 = *(v18 - 1);
          v21 = *v18;

          v22 = sub_100490D78();
          v23 = swift_allocObject();
          *(v23 + 16) = v17;
          v24 = *&v22[OBJC_IVAR____TtC11MobileNotes33SmartFolderComposerCollectionView_smartFolderComposerDataSource];
          if (v24)
          {
            v84 = v20;
            LOBYTE(aBlock[0]) = 2;
            v25 = v17;
            v26 = v24;
            v27 = v87;
            dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
            v28 = v86;
            if ((*v85)(v27, 1, v86) == 1)
            {

              sub_10018031C(v27);
            }

            else
            {
              v29 = v82;
              (*v81)(v82, v27, v28);
              v30 = *&v26[qword_1006C79A8];
              if (v26[qword_1006C79B8])
              {
                isa = IndexPath._bridgeToObjectiveC()().super.isa;
                v32 = [v30 cellForItemAtIndexPath:isa];

                (*v80)(v29, v28);
                if (!v32)
                {

                  v17 = v83;
                  goto LABEL_6;
                }
              }

              else
              {
                v32 = dispatch thunk of UICollectionViewDiffableDataSource.collectionView(_:cellForItemAt:)();
                (*v80)(v29, v28);
              }

              type metadata accessor for TagContainerCell();
              v33 = swift_dynamicCastClass();
              v17 = v83;
              if (v33)
              {
                v79 = v32;
                v34 = sub_1002B3F04();
                v35 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagDataSource;
                swift_beginAccess();
                v36 = *&v34[v35];
                if (!v36)
                {
                  goto LABEL_23;
                }

                v37 = [v36 indexer];
                if (!v37)
                {
                  goto LABEL_23;
                }

                v38 = v37;
                objc_opt_self();
                v39 = swift_dynamicCastObjCClass();
                if (v39)
                {
                  v72 = v38;
                  v40 = *&v34[v35];
                  if (!v40)
                  {

LABEL_23:

                    goto LABEL_6;
                  }

                  v41 = v39;
                  v42 = v40;
                  v43 = [v41 objectIDs];
                  sub_1000054A4(0, &qword_1006BFEC0);
                  v69 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                  v68 = *&v42[OBJC_IVAR____TtC11MobileNotes13TagDataSource_modernViewContext];
                  v70 = v42;
                  v44 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v45 = swift_allocObject();
                  v46 = v69;
                  *(v45 + 16) = v44;
                  *(v45 + 24) = v46;
                  v47 = v68;
                  v48 = v84;
                  *(v45 + 32) = v68;
                  *(v45 + 40) = v48;
                  *(v45 + 48) = v21;
                  *(v45 + 56) = v42;
                  *(v45 + 64) = 0;
                  *(v45 + 72) = sub_1004960A8;
                  *(v45 + 80) = v23;
                  v89[2] = sub_1002736A4;
                  v89[3] = v45;
                  aBlock[0] = _NSConcreteStackBlock;
                  aBlock[1] = 1107296256;
                  v89[0] = sub_10028DCE8;
                  v89[1] = &unk_10065FF88;
                  v49 = _Block_copy(aBlock);
                  v50 = v47;
                  v51 = v34;
                  v52 = v50;
                  v84 = v70;
                  v53 = v52;

                  [v53 performBlock:v49];

                  _Block_release(v49);
                }

                else
                {
                }
              }

              else
              {
              }
            }
          }

          else
          {
            v19 = v17;
          }

LABEL_6:
          v18 += 2;
          --v16;
        }

        while (v16);
      }

      v54 = [v78 title];
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      v58 = &v17[OBJC_IVAR___ICSmartFolderComposerViewController_folderTitle];
      *v58 = v55;
      v58[1] = v57;

      v59 = v74;
      v60 = ICQueryType.allowsDeleted.getter();
      v61 = sub_100490D78();
      v62 = *&v61[OBJC_IVAR____TtC11MobileNotes33SmartFolderComposerCollectionView_smartFolderComposerDataSource];
      if (v62)
      {
        v63 = v62;
        v64 = sub_1003FFF70();
        if (v64)
        {
          v65 = v64;
          v66 = sub_1004BEDF4();
          [v66 setOn:v60 & 1];
        }

        else
        {
        }

        (*(v75 + 8))(v59, v76);
      }

      else
      {
        (*(v75 + 8))(v59, v76);
      }
    }

    else
    {
      v67 = v78;
    }
  }
}

void sub_100493E7C(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "viewDidAppear:", a1 & 1);
  if (!*&v1[OBJC_IVAR___ICSmartFolderComposerViewController_smartFolder])
  {
    v3 = sub_100490D78();
    v4 = *&v3[OBJC_IVAR____TtC11MobileNotes33SmartFolderComposerCollectionView_smartFolderComposerDataSource];
    if (v4)
    {
      v5 = v4;
      v6 = sub_1003FF468();
      if (v6)
      {
        v7 = v6;
        v8 = sub_100435D90();
        [v8 selectAll:0];
      }
    }
  }
}

void sub_100494010(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_100494190();
    }

    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      v5 = [v3 navigationController];

      if (v5)
      {
        v6 = swift_allocObject();
        swift_beginAccess();
        v7 = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectWeakInit();

        aBlock[4] = sub_100496114;
        aBlock[5] = v6;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10028DCE8;
        aBlock[3] = &unk_10065FE48;
        v8 = _Block_copy(aBlock);

        [v5 dismissViewControllerAnimated:1 completion:v8];
        _Block_release(v8);
      }
    }
  }
}

id sub_100494190()
{
  v1 = OBJC_IVAR___ICSmartFolderComposerViewController_discardableTagIdentifiers;
  result = swift_beginAccess();
  if (*(*&v0[v1] + 16))
  {
    result = [*&v0[OBJC_IVAR___ICSmartFolderComposerViewController_account] managedObjectContext];
    if (result)
    {
      v3 = result;
      v4 = swift_allocObject();
      *(v4 + 16) = v0;
      *(v4 + 24) = v3;
      v5 = swift_allocObject();
      *(v5 + 16) = sub_100495B38;
      *(v5 + 24) = v4;
      aBlock[4] = sub_10000EFBC;
      aBlock[5] = v5;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000EAF8;
      aBlock[3] = &unk_10065FC40;
      v6 = _Block_copy(aBlock);
      v7 = v0;
      v8 = v3;

      [v8 performBlockAndWait:v6];

      _Block_release(v6);
      LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

      if (v8)
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_10049433C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR___ICSmartFolderComposerViewController_completion);
    v2 = result;

    v1(0, 0, 0, 0);
  }

  return result;
}

void sub_100494464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a2;
  v6[4] = a3;
  v8[4] = sub_100496094;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10028DCE8;
  v8[3] = &unk_10065FEC0;
  v7 = _Block_copy(v8);
  sub_1001C71A4(a2);

  dispatchMainAfterDelay();
  _Block_release(v7);
}

void sub_10049456C(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    *(Strong + OBJC_IVAR___ICSmartFolderComposerViewController_isCreatingTag) = 0;
    sub_100492A88();
  }

  if (a2)
  {
    a2();
  }
}

id sub_1004945EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + OBJC_IVAR___ICSmartFolderComposerViewController_account);
  swift_beginAccess();
  v4 = v3;

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 deleteUnusedHashtagsWithStandardizedContent:isa];

  return [a2 ic_save];
}

uint64_t sub_1004946A0()
{
  v1 = *&v0[OBJC_IVAR___ICSmartFolderComposerViewController_folderTitle + 8];
  if (!v1)
  {
    return 0;
  }

  v2 = *&v0[OBJC_IVAR___ICSmartFolderComposerViewController_folderTitle];
  v3 = *&v0[OBJC_IVAR___ICSmartFolderComposerViewController_smartFolder];
  if (v3)
  {

    v4 = [v3 title];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    if (v5 == v2 && v1 == v7)
    {

LABEL_13:

      return 1;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v10 = objc_opt_self();
  v11 = String._bridgeToObjectiveC()();

  v12 = *&v0[OBJC_IVAR___ICSmartFolderComposerViewController_account];
  v32[0] = 0;
  LODWORD(v10) = [v10 isTitleValid:v11 account:v12 parentFolder:0 error:v32];

  if (v10)
  {
    v13 = v32[0];
    return 1;
  }

  v15 = v32[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_10015DA04(&unk_1006C9B40);
  sub_1000054A4(0, &unk_1006C4560);
  swift_dynamicCast();
  v16 = [v31 userInfo];
  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v17 + 16))
  {

LABEL_23:

    goto LABEL_24;
  }

  v20 = v0;
  v21 = sub_1002DF11C(v18, v19);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_10000A2A0(*(v17 + 56) + 32 * v21, v32);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v17 + 16))
  {

    goto LABEL_28;
  }

  v26 = sub_1002DF11C(v24, v25);
  v28 = v27;

  if ((v28 & 1) == 0)
  {
LABEL_28:

    goto LABEL_23;
  }

  sub_10000A2A0(*(v17 + 56) + 32 * v26, v32);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v29 = String._bridgeToObjectiveC()();

  v30 = String._bridgeToObjectiveC()();

  [v20 ic_showSingleButtonAlertWithTitle:v29 message:v30];

LABEL_24:

  return 0;
}

void sub_100494A64(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong navigationController];

    if (v4)
    {
      aBlock[4] = sub_1004960A0;
      aBlock[5] = a1;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10028DCE8;
      aBlock[3] = &unk_10065FEE8;
      v5 = _Block_copy(aBlock);

      [v4 dismissViewControllerAnimated:1 completion:v5];
      _Block_release(v5);
    }
  }
}

void sub_100494B74()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___ICSmartFolderComposerViewController_tagSelection);

    v3 = [v2 selectedTagCount];
  }

  else
  {
    v3 = 0;
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = OBJC_IVAR___ICSmartFolderComposerViewController_tagSelection;
    if ([*(v4 + OBJC_IVAR___ICSmartFolderComposerViewController_tagSelection) isNonEmpty])
    {
      type metadata accessor for ICQuery();
      v7 = *&v5[v6];
      v8 = static ICQuery.makeQueryForNotesMatching(_:)();

      goto LABEL_9;
    }
  }

  v8 = 0;
LABEL_9:
  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = *&v9[OBJC_IVAR___ICSmartFolderComposerViewController_smartFolder];
    if (v11)
    {
      v12 = v11;

      v13 = [v12 smartFolderQueryObjC];
      if (v8)
      {
LABEL_12:
        if (v13)
        {
          type metadata accessor for ICQuery();
          v14 = v8;
          v15 = v13;
          v16 = static NSObject.== infix(_:_:)();

          if (v16)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_17;
      }
    }

    else
    {

      v13 = 0;
      if (v8)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v13 = 0;
    if (v8)
    {
      goto LABEL_12;
    }
  }

  if (!v13)
  {
LABEL_14:
    v17 = 0;
    goto LABEL_18;
  }

LABEL_17:
  v18 = v8;
  v17 = v8;
LABEL_18:
  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = *(v19 + OBJC_IVAR___ICSmartFolderComposerViewController_completion);
    v21 = v19;

    swift_beginAccess();
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v24 = *(v22 + OBJC_IVAR___ICSmartFolderComposerViewController_folderTitle);
      v23 = *(v22 + OBJC_IVAR___ICSmartFolderComposerViewController_folderTitle + 8);
      v25 = v22;
    }

    else
    {
      v24 = 0;
      v23 = 0;
    }

    v20(v17, v3, v24, v23);
  }

  else
  {
  }
}

uint64_t sub_100494E84(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      if (!*&Strong[OBJC_IVAR___ICSmartFolderComposerViewController_smartFolder])
      {
        v6 = Strong;
        v7 = sub_100490D78();
        v8 = *&v7[OBJC_IVAR____TtC11MobileNotes33SmartFolderComposerCollectionView_smartFolderComposerDataSource];
        if (v8)
        {
          v9 = v8;
          v10 = sub_1003FF468();
          if (v10)
          {
            v11 = v10;
            v12 = sub_100435D90();

            [v12 becomeFirstResponder];
          }
        }

        Strong = v6;
      }
    }
  }

  return a4(0);
}

void sub_100494F7C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_100490D78();

    v10 = *&v9[OBJC_IVAR____TtC11MobileNotes33SmartFolderComposerCollectionView_smartFolderComposerDataSource];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1003FFF54();
      if (v12)
      {
        v13 = v12;
        v14 = sub_1002B3F04();
        sub_1003AA804(a2, a3, 1, 0, 0);
      }
    }
  }

  if (a4)
  {
    a4();
  }
}

void sub_100495458(uint64_t a1, char *a2, uint64_t a3)
{
  if (a2[OBJC_IVAR___ICSmartFolderComposerViewController_hasChanges] == 1)
  {

    v5 = sub_100490D78();
    v6 = *&v5[OBJC_IVAR____TtC11MobileNotes33SmartFolderComposerCollectionView_smartFolderComposerDataSource];
    v45 = a2;
    if (v6)
    {
      v7 = v6;
      v8 = sub_1003FF468();
      v9 = v8 != 0;
      if (v8)
      {
        v10 = v8;
        v11 = sub_100435D90();

        LODWORD(v10) = [v11 isFirstResponder];
        if (!v10)
        {
          v9 = 0;
          goto LABEL_19;
        }

        v12 = *&a2[OBJC_IVAR___ICSmartFolderComposerViewController____lazy_storage___collectionView];
        v13 = *&v12[OBJC_IVAR____TtC11MobileNotes33SmartFolderComposerCollectionView_smartFolderComposerDataSource];
        if (!v13)
        {
          v9 = 1;
          goto LABEL_19;
        }

        v5 = v12;
        v7 = v13;
        v14 = sub_1003FF468();
        if (v14)
        {
          v15 = v14;
          v16 = sub_100435D90();

          [v16 resignFirstResponder];
        }
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_19:
    v24 = [objc_opt_self() alertControllerWithTitle:0 message:0 preferredStyle:0];
    v25 = objc_opt_self();
    v26 = [v25 mainBundle];
    v27 = String._bridgeToObjectiveC()();
    v28 = [v26 localizedStringForKey:v27 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = v9;
    *(v30 + 24) = v29;
    *(v30 + 32) = sub_100495AEC;
    *(v30 + 40) = a3;

    v31 = String._bridgeToObjectiveC()();

    v50 = sub_100495AFC;
    v51 = v30;
    aBlock = _NSConcreteStackBlock;
    v47 = 1107296256;
    v48 = sub_1002DEFE0;
    v49 = &unk_10065FB78;
    v32 = _Block_copy(&aBlock);

    v33 = objc_opt_self();
    v34 = [v33 actionWithTitle:v31 style:1 handler:v32];
    _Block_release(v32);

    [v24 addAction:v34];
    v35 = [v25 mainBundle];
    v36 = String._bridgeToObjectiveC()();
    v37 = [v35 localizedStringForKey:v36 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = swift_allocObject();
    *(v38 + 16) = sub_100495AEC;
    *(v38 + 24) = a3;

    v39 = String._bridgeToObjectiveC()();

    v50 = sub_100495B0C;
    v51 = v38;
    aBlock = _NSConcreteStackBlock;
    v47 = 1107296256;
    v48 = sub_1002DEFE0;
    v49 = &unk_10065FBC8;
    v40 = _Block_copy(&aBlock);

    v41 = [v33 actionWithTitle:v39 style:2 handler:v40];
    _Block_release(v40);

    [v24 addAction:v41];
    v42 = [v24 popoverPresentationController];
    if (v42)
    {
      v43 = v42;
      [v42 setBarButtonItem:a1];
    }

    [v45 presentViewController:v24 animated:1 completion:{0, a1}];

    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    sub_100494190();
  }

  swift_beginAccess();
  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18 && (v19 = v18, v20 = [v18 navigationController], v19, v20))
  {
    v21 = swift_allocObject();
    swift_beginAccess();
    v22 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v50 = sub_100495AF4;
    v51 = v21;
    aBlock = _NSConcreteStackBlock;
    v47 = 1107296256;
    v48 = sub_10028DCE8;
    v49 = &unk_10065FB28;
    v23 = _Block_copy(&aBlock);

    [v20 dismissViewControllerAnimated:1 completion:v23];
    _Block_release(v23);
  }

  else
  {
  }
}

uint64_t sub_100495B94()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100495BDC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  sub_10015DA04(&unk_1006C9B30);
  sub_10015DA04(&qword_1006C9B28);
  sub_10015DA04(&qword_1006C9B20);
  sub_10015DA04(&qword_1006C9B18);
  sub_10015DA04(&qword_1006C9B10);

  return sub_1003FFAF0(a1, a2, a3);
}

uint64_t sub_100495E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10015DA04(&qword_1006C9B08);
  sub_10015DA04(&qword_1006C9B00);

  return sub_1003FFE28(a1, a2, a3);
}

uint64_t sub_100495F54()
{
  result = sub_1004946A0();
  if (result)
  {
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = *&v0[OBJC_IVAR___ICSmartFolderComposerViewController_createTagText + 8];
    if (v3)
    {
      v4 = *&v0[OBJC_IVAR___ICSmartFolderComposerViewController_createTagText];
      v0[OBJC_IVAR___ICSmartFolderComposerViewController_isCreatingTag] = 1;

      sub_100492A88();
      v5 = swift_allocObject();
      v5[2] = v0;
      v5[3] = sub_100496080;
      v5[4] = v2;
      v6 = v0;

      sub_10049255C(v4, v3, sub_100496088, v5);
    }

    else
    {
      v7 = swift_retain_n();
      sub_100494A64(v7);
    }
  }

  return result;
}

void sub_1004960A8()
{
  v1 = *(v0 + 16);
  v1[OBJC_IVAR___ICSmartFolderComposerViewController_hasChanges] = 0;
  [v1 setModalInPresentation:0];
  sub_100492A88();
}

void sub_1004961BC(void *a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for MathNotesSceneDelegate();
  objc_msgSendSuper2(&v13, "sceneWillEnterForeground:", a1);
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = objc_opt_self();
    v6 = a1;
    v7 = [v5 sharedController];
    if (v7)
    {
      v8 = v7;
      v9 = swift_allocObject();
      *(v9 + 16) = v4;
      v12[4] = sub_1004966CC;
      v12[5] = v9;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 1107296256;
      v12[2] = sub_10028DCE8;
      v12[3] = &unk_100660000;
      v10 = _Block_copy(v12);
      v11 = v6;

      [v8 startWindowSceneSessionWithType:2 windowScene:v4 successHandler:v10];

      _Block_release(v10);
      v6 = v8;
    }
  }
}

void sub_100496328(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v5[4] = sub_1004966D4;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10028DCE8;
  v5[3] = &unk_100660050;
  v3 = _Block_copy(v5);
  v4 = a1;

  performBlockOnMainThread();
  _Block_release(v3);
}

void sub_1004963F4(uint64_t a1)
{
  v2 = [objc_opt_self() sharedManager];
  [v2 windowSceneWillBegin:a1];
}

void sub_1004964CC(void *a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for MathNotesSceneDelegate();
  objc_msgSendSuper2(&v10, "sceneDidEnterBackground:", a1);
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = objc_opt_self();
    v6 = a1;
    v7 = [v5 sharedManager];
    [v7 windowSceneDidEnd:v4];

    v8 = [objc_opt_self() sharedController];
    if (v8)
    {
      v9 = v8;
      [v8 endWindowSceneSessionSynchronously:0 forSessionType:2 endReason:1 windowScene:v4];
    }
  }
}

id sub_100496674()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MathNotesSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004966DC(uint64_t a1)
{
  v2 = v1;
  v14 = &type metadata for NotesFeature;
  v15 = sub_100025864();
  v12[0] = "GreyParrot";
  v12[1] = 10;
  v13 = 2;
  v4 = isFeatureEnabled(_:)();
  sub_100009F60(v12);
  if ((v4 & 1) != 0 && (v5 = [objc_allocWithZone(ICWindowStateArchive) init], v6 = String._bridgeToObjectiveC()(), objc_msgSend(v5, "setWindowIdentifier:", v6), v6, v7 = String._bridgeToObjectiveC()(), objc_msgSend(v5, "setToolPickerIdentifier:", v7), v7, UIScene.hostApplicationIdentifier.getter(), v8))
  {
    v9 = String._bridgeToObjectiveC()();

    [v5 setHostApplicationIdentifier:v9];

    v10 = [objc_allocWithZone(ICWindow) initWithWindowScene:a1 behavior:1];
    v11 = [objc_allocWithZone(ICViewControllerManager) init];
    [v11 setupWithWindow:v10 stateRestoreArchive:v5 completion:0];
    [v10 makeKeyAndVisible];
    [v10 setViewControllerManager:v11];
    [v2 setIcWindow:v10];
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void *sub_100496944(uint64_t a1)
{
  v35 = type metadata accessor for Participant();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v27 = v1;
    v39 = _swiftEmptyArrayStorage;
    sub_100189444(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = _HashTable.startBucket.getter();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = Participant.handle.getter();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = v38[2];
      v17 = v38[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_100189444((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      v16[2] = v18 + 1;
      v19 = &v16[2 * v18];
      v19[4] = v37;
      v19[5] = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1000153F8(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_1000153F8(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100496C4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100496CC0()
{
  v1 = v0;
  v2 = sub_10015DA04(&qword_1006C2570);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - v4;
  if (*(v0 + OBJC_IVAR____TtC11MobileNotes34CollaborationParticipantDataSource_groupSession))
  {

    v6 = GroupSession.activeParticipants.getter();
    sub_100497708(v6);
    *(v0 + 24) = v6;

    GroupSession.$activeParticipants.getter();
    swift_allocObject();
    swift_weakInit();
    sub_1000060B4(&qword_1006C2578, &qword_1006C2570);
    v7 = Publisher<>.sink(receiveValue:)();

    (*(v3 + 8))(v5, v2);
    *(v1 + 32) = v7;
  }

  else
  {
    sub_100497708(&_swiftEmptySetSingleton);
    *(v0 + 24) = &_swiftEmptySetSingleton;

    *(v0 + 32) = 0;

    swift_getKeyPath();
    swift_getKeyPath();
    v9[1] = _swiftEmptyArrayStorage;

    return static Published.subscript.setter();
  }
}

uint64_t sub_100496EF0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;

    sub_100497708(v4);
    *(v3 + 24) = v1;
  }

  return result;
}

uint64_t sub_100496F6C(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v17 = *(v5 - 8);
  v18 = v5;
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Notification();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_1000054A4(0, &qword_1006BE9E0);
  v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v13 + ((v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
  aBlock[4] = sub_10049C260;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10028DCE8;
  aBlock[3] = &unk_1006600A0;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000BF84(&qword_1006C1130, &type metadata accessor for DispatchWorkItemFlags);
  sub_10015DA04(&unk_1006C3F20);
  sub_1000060B4(&qword_1006C1140, &unk_1006C3F20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v19 + 8))(v4, v2);
  return (*(v17 + 8))(v7, v18);
}

uint64_t sub_100497338(uint64_t a1, uint64_t a2)
{
  v3 = Notification.userInfo.getter();
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v5 = sub_100024E34(v21), (v6 & 1) == 0))
  {

    sub_100024F9C(v21);
LABEL_11:
    v22 = 0u;
    v23 = 0u;
    return sub_1000073B4(&v22, &qword_1006BE7A0);
  }

  sub_10000A2A0(*(v4 + 56) + 32 * v5, &v22);
  sub_100024F9C(v21);

  if (!*(&v23 + 1))
  {
    return sub_1000073B4(&v22, &qword_1006BE7A0);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v9 = v21[0];
    v8 = v21[1];
    v10 = [*(a2 + 16) identifier];
    if (!v10)
    {
    }

    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (v9 == v12 && v8 == v14)
    {

      goto LABEL_16;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
LABEL_16:
      v16 = Notification.userInfo.getter();
      if (v16)
      {
        v17 = v16;
        *&v22 = 0x70756F7247434352;
        *(&v22 + 1) = 0xEF6E6F6973736553;
        AnyHashable.init<A>(_:)();
        if (*(v17 + 16))
        {
          v18 = sub_100024E34(v21);
          if (v19)
          {
            sub_10000A2A0(*(v17 + 56) + 32 * v18, &v22);
            sub_100024F9C(v21);

            if (*(&v23 + 1))
            {
              sub_10015DA04(&qword_1006C2558);
              if (swift_dynamicCast())
              {
                v20 = v21[0];
              }

              else
              {
                v20 = 0;
              }

              goto LABEL_26;
            }

LABEL_25:
            sub_1000073B4(&v22, &qword_1006BE7A0);
            v20 = 0;
LABEL_26:
            *(a2 + OBJC_IVAR____TtC11MobileNotes34CollaborationParticipantDataSource_groupSession) = v20;

            sub_100496CC0();
          }
        }

        sub_100024F9C(v21);
      }

      v22 = 0u;
      v23 = 0u;
      goto LABEL_25;
    }
  }

  return result;
}

uint64_t sub_100497708(void *a1)
{
  v37 = type metadata accessor for Participant();
  v39 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v40 = v1;
  v4 = *(v1 + 24);
  v5 = *(v4 + 16);
  v6 = a1[2];
  v31 = a1;
  if (v5 <= v6 >> 3)
  {
    v41 = a1;

    sub_10049807C(v4);

    v8 = v41;
  }

  else
  {

    v7 = sub_100498B10(v4, a1);

    v8 = v7;
  }

  v32 = _swiftEmptyArrayStorage;
  v41 = _swiftEmptyArrayStorage;
  v9 = v8[7];
  v33 = v8 + 7;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v9;
  v13 = (v10 + 63) >> 6;
  v34 = v39 + 8;
  v35 = v39 + 16;
  v38 = v8;

  v14 = 0;
  if (!v12)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_7:
    while (1)
    {
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v16 = v39;
      v17 = v36;
      v18 = v37;
      (*(v39 + 16))(v36, v38[6] + *(v39 + 72) * (v15 | (v14 << 6)), v37);
      v19 = *(v40 + 16);
      Participant.handle.getter();
      a1 = String._bridgeToObjectiveC()();

      v20 = [v19 participantForHandle:a1];

      (*(v16 + 8))(v17, v18);
      if (v20)
      {
        break;
      }

      if (!v12)
      {
        goto LABEL_9;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      a1 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v32 = v41;
  }

  while (v12);
  while (1)
  {
LABEL_9:
    v21 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v21 >= v13)
    {
      break;
    }

    v12 = v33[v21];
    ++v14;
    if (v12)
    {
      v14 = v21;
      goto LABEL_7;
    }
  }

  sub_10030FC2C(0, 0, v32);

  v22 = *(v40 + 24);
  v23 = v31;
  if (v31[2] <= v22[2] >> 3)
  {
    v41 = *(v40 + 24);

    sub_10049807C(v23);
    v24 = v41;
  }

  else
  {

    v24 = sub_100498B10(v23, v22);
  }

  v25 = sub_100496944(v24);

  v26 = sub_10026FDD0(v25);

  a1 = sub_10049BD80(&v42, v26);

  if (v42 >> 62)
  {
LABEL_24:
    result = _CocoaArrayWrapper.endIndex.getter();
    v28 = result;
    if (result >= a1)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  v28 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v28 >= a1)
  {
LABEL_22:
    sub_10030FD6C(a1, v28);

    v41 = v42;
    sub_10015DA04(&qword_1006C5ED0);
    sub_1000060B4(&qword_1006C9E18, &qword_1006C5ED0);
    sub_100005B0C(&qword_1006C1800, &qword_1006C5F80);
    v29 = Sequence<>.uniqued()();

    swift_getKeyPath();
    swift_getKeyPath();
    v41 = v29;

    return static Published.subscript.setter();
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100497C30()
{

  v1 = OBJC_IVAR____TtC11MobileNotes34CollaborationParticipantDataSource__cleanedUpParticipants;
  v2 = sub_10015DA04(&qword_1006C49B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100497D08@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CollaborationParticipantDataSource();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100497D48@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100497DC8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_100497E44(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000054A4(0, &qword_1006C63E0);
    sub_100005B0C(&qword_1006C1770, &qword_1006C63E0);
    Set.Iterator.init(_cocoa:)();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_10019E530();
      return;
    }

    while (1)
    {
      v16 = sub_1003B3A3C(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (__CocoaSet.Iterator.next()())
      {
        sub_1000054A4(0, &qword_1006C63E0);
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_10049807C(uint64_t a1)
{
  v3 = sub_10015DA04(&qword_1006C2568);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  v6 = type metadata accessor for Participant();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    v18[0] = v7 + 8;
    v18[1] = v7 + 16;

    for (i = 0; v13; result = sub_1000073B4(v5, &qword_1006C2568))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v7 + 16))(v10, *(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v6);
      sub_1003B3C20(v10, v5);
      (*(v7 + 8))(v10, v6);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100498298(uint64_t a1)
{
  v3 = sub_10015DA04(&qword_1006C9E20);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for MarkdownStyle(0);
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;

    for (i = 0; v13; result = sub_1000073B4(v5, &qword_1006C9E20))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      sub_1003B93D8(*(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v10);
      sub_1003B41F8(v10, v5);
      sub_1003B94A0(v10);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_100498478(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000054A4(0, &qword_1006C63E0);
    sub_100005B0C(&qword_1006C1770, &qword_1006C63E0);
    Set.Iterator.init(_cocoa:)();
    v4 = v78;
    v6 = v79;
    v7 = v80;
    v8 = v81;
    v9 = v82;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v73 = v4;
  v74 = v6;
  v75 = v7;
  v76 = v8;
  v64 = v7;
  v13 = (v7 + 64) >> 6;
  v70 = v3 + 7;
  v77 = v9;
  v67 = v6;
  v68 = v4;
  for (i = v13; ; v13 = i)
  {
    if (v4 < 0)
    {
      v21 = __CocoaSet.Iterator.next()();
      if (!v21)
      {
        goto LABEL_62;
      }

      v71 = v21;
      sub_1000054A4(0, &qword_1006C63E0);
      swift_dynamicCast();
      v19 = v72;
      v17 = v8;
      v2 = v9;
      if (!v72)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v14 = v9;
      v15 = v8;
      if (v9)
      {
LABEL_20:
        v2 = (v14 - 1) & v14;
        v19 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
        v20 = v19;
        v17 = v15;
      }

      else
      {
        v16 = v13 <= (v8 + 1) ? v8 + 1 : v13;
        v17 = v16 - 1;
        v18 = v8;
        while (1)
        {
          v15 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_66;
          }

          if (v15 >= v13)
          {
            break;
          }

          v14 = *(v6 + 8 * v15);
          ++v18;
          if (v14)
          {
            goto LABEL_20;
          }
        }

        v19 = 0;
        v2 = 0;
      }

      v73 = v4;
      v74 = v6;
      v75 = v64;
      v76 = v17;
      v77 = v2;
      if (!v19)
      {
        goto LABEL_62;
      }
    }

    v22 = v19;
    v23 = NSObject._rawHashValue(seed:)(v3[5]);
    v24 = -1 << *(v3 + 32);
    v8 = v23 & ~v24;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v70[v8 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v17;
    v9 = v2;
    v6 = v67;
    v4 = v68;
  }

  v25 = ~v24;
  v26 = sub_1000054A4(0, &qword_1006C63E0);
  v27 = *(v3[6] + 8 * v8);
  v69 = v26;
  while (1)
  {
    v28 = static NSObject.== infix(_:_:)();

    if (v28)
    {
      break;
    }

    v8 = (v8 + 1) & v25;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v70[v8 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(v3[6] + 8 * v8);
  }

  v30 = *(v3 + 32);
  v61 = ((1 << v30) + 63) >> 6;
  v5 = 8 * v61;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v62 = &v60;
    __chkstk_darwin(v29);
    v32 = &v60 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v70, v31);
    v33 = *&v32[8 * v4] & ~v15;
    v34 = v3[2];
    v63 = v32;
    *&v32[8 * v4] = v33;
    v4 = v34 - 1;
    v36 = v67;
    v35 = v68;
    v37 = i;
LABEL_33:
    v65 = v4;
    while (v35 < 0)
    {
      v38 = __CocoaSet.Iterator.next()();
      if (!v38)
      {
        goto LABEL_61;
      }

      v71 = v38;
      swift_dynamicCast();
      v39 = v72;
      if (!v72)
      {
        goto LABEL_61;
      }

LABEL_50:
      v44 = NSObject._rawHashValue(seed:)(v3[5]);
      v45 = v3;
      v46 = -1 << *(v3 + 32);
      v47 = v44 & ~v46;
      v48 = v47 >> 6;
      v49 = 1 << v47;
      if (((1 << v47) & v70[v47 >> 6]) != 0)
      {
        v50 = ~v46;
        while (1)
        {
          v8 = *(v45[6] + 8 * v47);
          v51 = static NSObject.== infix(_:_:)();

          if (v51)
          {
            break;
          }

          v47 = (v47 + 1) & v50;
          v48 = v47 >> 6;
          v49 = 1 << v47;
          if (((1 << v47) & v70[v47 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v52 = v63[v48];
        v63[v48] = v52 & ~v49;
        v53 = (v52 & v49) == 0;
        v3 = v45;
        v36 = v67;
        v35 = v68;
        v4 = v65;
        v37 = i;
        if (!v53)
        {
          v4 = v65 - 1;
          if (__OFSUB__(v65, 1))
          {
            __break(1u);
          }

          if (v65 == 1)
          {

            v3 = &_swiftEmptySetSingleton;
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v3 = v45;
        v36 = v67;
        v35 = v68;
        v4 = v65;
        v37 = i;
      }
    }

    if (v2)
    {
      v15 = v17;
LABEL_48:
      v42 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v39 = *(*(v35 + 48) + ((v15 << 9) | (8 * v42)));
      v43 = v39;
      v41 = v15;
LABEL_49:
      v73 = v35;
      v74 = v36;
      v75 = v64;
      v76 = v41;
      v17 = v41;
      v77 = v2;
      if (!v39)
      {
LABEL_61:
        v3 = sub_1003B5524(v63, v61, v4, v3);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v37 <= v17 + 1)
    {
      v40 = v17 + 1;
    }

    else
    {
      v40 = v37;
    }

    v41 = v40 - 1;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v15 >= v37)
      {
        v39 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v15);
      ++v17;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v55 = v5;

    v56 = v55;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v57 = swift_slowAlloc();
  memcpy(v57, v70, v56);
  sub_10049A950(v57, v61, v3, v8, &v73);
  v59 = v58;

  v3 = v59;
LABEL_62:
  sub_10019E530();
  return v3;
}

void *sub_100498B10(uint64_t a1, void *a2)
{
  v5 = sub_10015DA04(&qword_1006C2568);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v64 - v9);
  v11 = type metadata accessor for Participant();
  v12 = __chkstk_darwin(v11);
  v84 = (&v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v16 = (&v64 - v15);
  __chkstk_darwin(v14);
  v79 = (&v64 - v18);
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v65 = v10;
  v67 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v78 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v86 = (v22 & v19);
  v71 = (63 - v21) >> 6;
  v85 = v17 + 16;
  v76 = (v17 + 48);
  v77 = (v17 + 56);
  v75 = (v17 + 32);
  v81 = a2 + 7;
  v66 = v17;
  v87 = (v17 + 8);

  v24 = 0;
  v68 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v86;
    v26 = v24;
    if (v86)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v65;
      (*(v66 + 16))(v65, *(a1 + 48) + *(v66 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v71 <= (v24 + 1) ? v24 + 1 : v71;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v71)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v65;
    }

    v73 = *v77;
    v73(v30, v31, 1, v11);
    v88 = a1;
    v89 = v20;
    v90 = v78;
    v91 = v28;
    v92 = v2;
    v72 = *v76;
    if (v72(v30, 1, v11) == 1)
    {
      sub_1000073B4(v30, &qword_1006C2568);
      goto LABEL_52;
    }

    v70 = *v75;
    v70(v79, v30, v11);
    v69 = sub_10000BF84(&qword_1006C63C8, &type metadata accessor for Participant);
    v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v81[v24 >> 6]) != 0)
    {
      break;
    }

    (*v87)(v79, v11);
LABEL_22:
    v24 = v28;
    v86 = v2;
  }

  v64 = v87 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v80 = ~v33;
  v34 = *(v66 + 72);
  v82 = *(v66 + 16);
  v83 = v34;
  while (1)
  {
    v82(v16, a2[6] + v83 * v24, v11);
    v35 = sub_10000BF84(&qword_1006C63D0, &type metadata accessor for Participant);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v86 = *v87;
    v86(v16, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v80;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v81[v24 >> 6]) == 0)
    {
      a1 = v68;
      v86(v79, v11);
      goto LABEL_22;
    }
  }

  v80 = v35;
  v37 = (v86)(v79, v11);
  v38 = *(a2 + 32);
  v64 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v64;
  a1 = v68;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v65 = &v64;
    __chkstk_darwin(v37);
    v40 = &v64 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v81, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = a2[2];
    v79 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v67;
    v44 = i;
    v45 = v71;
LABEL_26:
    v66 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v82(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v83, v11);
      v50 = 0;
LABEL_39:
      v73(v24, v50, 1, v11);
      v88 = a1;
      v89 = v44;
      v90 = v78;
      v91 = v28;
      v92 = v2;
      if (v72(v24, 1, v11) == 1)
      {
        sub_1000073B4(v24, &qword_1006C2568);
        a2 = sub_1003B5718(v79, v64, v66, a2);
        goto LABEL_52;
      }

      v70(v84, v24, v11);
      v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v81[v54 >> 6]) != 0)
      {
        v82(v16, v52[6] + v54 * v83, v11);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v86(v16, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v81[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v82(v16, v52[6] + v54 * v83, v11);
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();
            v86(v16, v11);
          }

          while ((v57 & 1) == 0);
        }

        v86(v84, v11);
        v58 = v79[v26];
        v79[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v68;
        v24 = v67;
        v44 = i;
        v45 = v71;
        if ((v58 & v20) != 0)
        {
          v43 = v66 - 1;
          if (__OFSUB__(v66, 1))
          {
            __break(1u);
          }

          if (v66 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v86(v84, v11);
        a2 = v52;
        a1 = v68;
        v24 = v67;
        v44 = i;
        v45 = v71;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;

    v79 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v79;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v81, v61);
  a2 = sub_10049ABF4(v63, v64, v79, v24, &v88);

LABEL_52:
  sub_10019E530();
  return a2;
}

void *sub_100499574(uint64_t a1, uint64_t a2)
{
  v150 = sub_10015DA04(&qword_1006C1790);
  v6 = __chkstk_darwin(v150);
  v8 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v149 = &v118 - v9;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v126 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v119 = &v118 - v15;
  __chkstk_darwin(v14);
  v124 = &v118 - v16;
  v17 = sub_10015DA04(&qword_1006C9E20);
  v18 = __chkstk_darwin(v17 - 8);
  v147 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v121 = &v118 - v20;
  v137 = type metadata accessor for MarkdownStyle(0);
  v21 = __chkstk_darwin(v137);
  v140 = &v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v141 = &v118 - v24;
  v25 = __chkstk_darwin(v23);
  v136 = &v118 - v26;
  v27 = __chkstk_darwin(v25);
  v151 = &v118 - v28;
  v29 = __chkstk_darwin(v27);
  v30 = __chkstk_darwin(v29);
  v145 = &v118 - v31;
  v32 = __chkstk_darwin(v30);
  v122 = &v118 - v33;
  __chkstk_darwin(v32);
  v139 = &v118 - v36;
  if (!*(a2 + 16))
  {

    return &_swiftEmptySetSingleton;
  }

  v123 = v35;
  v118 = 0;
  v38 = a1 + 56;
  v37 = *(a1 + 56);
  v39 = -1 << *(a1 + 32);
  v134 = ~v39;
  if (-v39 < 64)
  {
    v40 = ~(-1 << -v39);
  }

  else
  {
    v40 = -1;
  }

  v41 = v40 & v37;
  v128 = (63 - v39) >> 6;
  v133 = (v34 + 56);
  v125 = v34;
  v132 = (v34 + 48);
  v154 = (v11 + 48);
  v127 = (v11 + 32);
  v143 = (v11 + 8);
  v146 = a2;
  v152 = (a2 + 56);
  v135 = a1;

  v43 = 0;
  v153 = v10;
  for (i = a1 + 56; ; v38 = i)
  {
    v44 = v41;
    v45 = v43;
    v46 = v121;
    if (v41)
    {
LABEL_15:
      v2 = (v44 - 1) & v44;
      v50 = v135;
      sub_1003B93D8(*(v135 + 48) + *(v125 + 72) * (__clz(__rbit64(v44)) | (v45 << 6)), v121);
      v51 = 0;
      v48 = v45;
    }

    else
    {
      v47 = v128 <= (v43 + 1) ? v43 + 1 : v128;
      v48 = v47 - 1;
      v49 = v43;
      while (1)
      {
        v45 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_121;
        }

        if (v45 >= v128)
        {
          break;
        }

        v44 = *(v38 + 8 * v45);
        ++v49;
        if (v44)
        {
          goto LABEL_15;
        }
      }

      v2 = 0;
      v51 = 1;
      v50 = v135;
    }

    v52 = v137;
    v130 = *v133;
    v130(v46, v51, 1, v137);
    v156 = v50;
    v157 = v38;
    v158 = v134;
    v159 = v48;
    v160 = v2;
    v129 = *v132;
    v53 = v129(v46, 1, v52);
    v45 = v146;
    if (v53 == 1)
    {
      sub_1000073B4(v46, &qword_1006C9E20);
      goto LABEL_116;
    }

    v54 = v139;
    sub_1003B943C(v46, v139);
    Hasher.init(_seed:)();
    v55 = v54;
    v56 = v122;
    sub_1003B93D8(v55, v122);
    v3 = *v154;
    v57 = (*v154)(v56, 6, v10);
    if (v57 <= 2)
    {
      if (!v57)
      {
        v59 = v124;
        (*v127)(v124, v122, v10);
        Hasher._combine(_:)(6uLL);
        sub_10000BF84(&qword_1006C07C0, &type metadata accessor for URL);
        dispatch thunk of Hashable.hash(into:)();
        (*v143)(v59, v10);
        goto LABEL_30;
      }

      v58 = v57 != 1;
    }

    else if (v57 > 4)
    {
      v58 = v57 == 5 ? 4 : 5;
    }

    else
    {
      v58 = v57 == 3 ? 2 : 3;
    }

    Hasher._combine(_:)(v58);
LABEL_30:
    v60 = Hasher._finalize()();
    v61 = -1 << *(v45 + 32);
    v43 = v60 & ~v61;
    v38 = v43 >> 6;
    v46 = 1 << v43;
    if (((1 << v43) & v152[v43 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_1003B94A0(v139);
    v43 = v48;
    v41 = v2;
    v10 = v153;
  }

  v138 = ~v61;
  v148 = *(v125 + 72);
  v144 = v2;
  v142 = v3;
  while (1)
  {
    v62 = v145;
    sub_1003B93D8(*(v45 + 48) + v148 * v43, v145);
    v63 = *(v150 + 48);
    v64 = v62;
    v65 = v149;
    sub_1003B93D8(v64, v149);
    sub_1003B93D8(v139, v65 + v63);
    v66 = v3(v65, 6, v153);
    if (v66 > 2)
    {
      if (v66 > 4)
      {
        if (v66 == 5)
        {
          sub_1003B94A0(v145);
          v67 = v149;
          if (v3(v149 + v63, 6, v153) == 5)
          {
            goto LABEL_56;
          }
        }

        else
        {
          sub_1003B94A0(v145);
          v67 = v149;
          if (v3(v149 + v63, 6, v153) == 6)
          {
            goto LABEL_56;
          }
        }
      }

      else if (v66 == 3)
      {
        sub_1003B94A0(v145);
        v67 = v149;
        if (v3(v149 + v63, 6, v153) == 3)
        {
          goto LABEL_56;
        }
      }

      else
      {
        sub_1003B94A0(v145);
        v67 = v149;
        if (v3(v149 + v63, 6, v153) == 4)
        {
          goto LABEL_56;
        }
      }

      goto LABEL_51;
    }

    if (v66)
    {
      if (v66 == 1)
      {
        sub_1003B94A0(v145);
        v67 = v149;
        if (v3(v149 + v63, 6, v153) == 1)
        {
          goto LABEL_56;
        }
      }

      else
      {
        sub_1003B94A0(v145);
        v67 = v149;
        if (v3(v149 + v63, 6, v153) == 2)
        {
          goto LABEL_56;
        }
      }

      goto LABEL_51;
    }

    v67 = v149;
    v68 = v123;
    sub_1003B93D8(v149, v123);
    v69 = v153;
    if (!v3(v67 + v63, 6, v153))
    {
      break;
    }

    sub_1003B94A0(v145);
    (*v143)(v68, v69);
    v2 = v144;
    v45 = v146;
LABEL_51:
    sub_1000073B4(v67, &qword_1006C1790);
LABEL_52:
    v43 = (v43 + 1) & v138;
    v38 = v43 >> 6;
    v46 = 1 << v43;
    if ((v152[v43 >> 6] & (1 << v43)) == 0)
    {
      goto LABEL_6;
    }
  }

  v70 = v67 + v63;
  v71 = v119;
  (*v127)(v119, v70, v69);
  v120 = static URL.== infix(_:_:)();
  v72 = v71;
  v73 = *v143;
  (*v143)(v72, v69);
  sub_1003B94A0(v145);
  v73(v68, v69);
  v3 = v142;
  v2 = v144;
  v45 = v146;
  if ((v120 & 1) == 0)
  {
    sub_1003B94A0(v67);
    goto LABEL_52;
  }

LABEL_56:
  sub_1003B94A0(v67);
  v74 = sub_1003B94A0(v139);
  v75 = *(v45 + 32);
  v122 = ((1 << v75) + 63) >> 6;
  v42 = 8 * v122;
  if ((v75 & 0x3Fu) > 0xD)
  {
    goto LABEL_122;
  }

  while (2)
  {
    v123 = &v118;
    __chkstk_darwin(v74);
    v43 = &v118 - ((v76 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v152, v76);
    v77 = *(v43 + 8 * v38) & ~v46;
    v138 = v43;
    *(v43 + 8 * v38) = v77;
    v78 = *(v45 + 16) - 1;
    v79 = v135;
    v45 = v153;
    v46 = v141;
    v38 = i;
    v80 = v128;
LABEL_58:
    v125 = v78;
    while (2)
    {
      if (v2)
      {
        v81 = v48;
LABEL_70:
        v84 = __clz(__rbit64(v2));
        v85 = (v2 - 1) & v2;
        sub_1003B93D8(*(v79 + 48) + (v84 | (v81 << 6)) * v148, v147);
        v86 = 0;
LABEL_71:
        v87 = v147;
        v88 = v137;
        v130(v147, v86, 1, v137);
        v156 = v79;
        v157 = v38;
        v158 = v134;
        v159 = v48;
        v160 = v85;
        if (v129(v87, 1, v88) == 1)
        {
          sub_1000073B4(v147, &qword_1006C9E20);
          v45 = sub_1003B5D68(v138, v122, v125, v146);
          goto LABEL_116;
        }

        v89 = v151;
        sub_1003B943C(v147, v151);
        Hasher.init(_seed:)();
        v90 = v89;
        v91 = v136;
        sub_1003B93D8(v90, v136);
        v92 = v3(v91, 6, v45);
        v144 = v85;
        if (v92 <= 2)
        {
          v93 = v148;
          if (v92)
          {
            v94 = v146;
            v95 = v92 != 1;
            goto LABEL_84;
          }

          v96 = v124;
          (*v127)(v124, v136, v45);
          Hasher._combine(_:)(6uLL);
          sub_10000BF84(&qword_1006C07C0, &type metadata accessor for URL);
          dispatch thunk of Hashable.hash(into:)();
          (*v143)(v96, v45);
          v94 = v146;
        }

        else
        {
          v93 = v148;
          if (v92 > 4)
          {
            v94 = v146;
            if (v92 == 5)
            {
              v95 = 4;
            }

            else
            {
              v95 = 5;
            }
          }

          else
          {
            v94 = v146;
            if (v92 == 3)
            {
              v95 = 2;
            }

            else
            {
              v95 = 3;
            }
          }

LABEL_84:
          Hasher._combine(_:)(v95);
        }

        v43 = &v155;
        v97 = Hasher._finalize()();
        v98 = -1 << *(v94 + 32);
        v99 = v97 & ~v98;
        v100 = v99 >> 6;
        v101 = 1 << v99;
        if (((1 << v99) & v152[v99 >> 6]) == 0)
        {
LABEL_59:
          sub_1003B94A0(v151);
          v79 = v135;
          v45 = v153;
          v38 = i;
          v80 = v128;
          v2 = v144;
          continue;
        }

        v149 = ~v98;
LABEL_87:
        sub_1003B93D8(*(v94 + 48) + v99 * v93, v46);
        v43 = *(v150 + 48);
        sub_1003B93D8(v46, v8);
        sub_1003B93D8(v151, &v8[v43]);
        v102 = v3(v8, 6, v153);
        if (v102 <= 2)
        {
          if (v102)
          {
            if (v102 == 1)
            {
              sub_1003B94A0(v46);
              if (v3(&v8[v43], 6, v153) == 1)
              {
                goto LABEL_111;
              }
            }

            else
            {
              sub_1003B94A0(v46);
              if (v3(&v8[v43], 6, v153) == 2)
              {
                goto LABEL_111;
              }
            }

            goto LABEL_106;
          }

          v103 = v3;
          v104 = v140;
          sub_1003B93D8(v8, v140);
          v105 = &v8[v43];
          v106 = v8;
          v107 = v104;
          v108 = v153;
          if (v103(v105, 6, v153))
          {
            v43 = v141;
            sub_1003B94A0(v141);
            (*v143)(v107, v108);
            v8 = v106;
            v46 = v43;
            v3 = v142;
            v93 = v148;
            goto LABEL_106;
          }

          v109 = v126;
          (*v127)(v126, &v106[v43], v108);
          LODWORD(v139) = static URL.== infix(_:_:)();
          v145 = v48;
          v110 = *v143;
          (*v143)(v109, v108);
          v43 = v141;
          sub_1003B94A0(v141);
          v110(v107, v108);
          v48 = v145;
          v94 = v146;
          v8 = v106;
          v46 = v43;
          v3 = v142;
          v93 = v148;
          if (v139)
          {
LABEL_111:
            sub_1003B94A0(v8);
            sub_1003B94A0(v151);
            v111 = *(v138 + 8 * v100);
            *(v138 + 8 * v100) = v111 & ~v101;
            v112 = (v111 & v101) == 0;
            v79 = v135;
            v45 = v153;
            v38 = i;
            v80 = v128;
            v2 = v144;
            if (!v112)
            {
              v78 = v125 - 1;
              if (__OFSUB__(v125, 1))
              {
                __break(1u);
              }

              if (v125 == 1)
              {

                v45 = &_swiftEmptySetSingleton;
                goto LABEL_116;
              }

              goto LABEL_58;
            }

            continue;
          }

          sub_1003B94A0(v8);
        }

        else
        {
          if (v102 > 4)
          {
            if (v102 == 5)
            {
              sub_1003B94A0(v46);
              if (v3(&v8[v43], 6, v153) == 5)
              {
                goto LABEL_111;
              }
            }

            else
            {
              sub_1003B94A0(v46);
              if (v3(&v8[v43], 6, v153) == 6)
              {
                goto LABEL_111;
              }
            }
          }

          else if (v102 == 3)
          {
            sub_1003B94A0(v46);
            if (v3(&v8[v43], 6, v153) == 3)
            {
              goto LABEL_111;
            }
          }

          else
          {
            sub_1003B94A0(v46);
            if (v3(&v8[v43], 6, v153) == 4)
            {
              goto LABEL_111;
            }
          }

LABEL_106:
          sub_1000073B4(v8, &qword_1006C1790);
        }

        v99 = (v99 + 1) & v149;
        v100 = v99 >> 6;
        v101 = 1 << v99;
        if ((v152[v99 >> 6] & (1 << v99)) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_87;
      }

      break;
    }

    if (v80 <= v48 + 1)
    {
      v82 = v48 + 1;
    }

    else
    {
      v82 = v80;
    }

    v83 = v82 - 1;
    while (1)
    {
      v81 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v81 >= v80)
      {
        v85 = 0;
        v86 = 1;
        v48 = v83;
        goto LABEL_71;
      }

      v2 = *(v38 + 8 * v81);
      ++v48;
      if (v2)
      {
        v48 = v81;
        goto LABEL_70;
      }
    }

    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    v114 = v42;

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v115 = swift_slowAlloc();
  memcpy(v115, v152, v114);
  v116 = v118;
  v117 = sub_10049B0C8(v115, v122, v45, v43, &v156);

  if (v116)
  {

    __break(1u);
  }

  else
  {

    v45 = v117;
LABEL_116:
    sub_10019E530();
    return v45;
  }

  return result;
}

void sub_10049A950(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!__CocoaSet.Iterator.next()())
          {
            goto LABEL_29;
          }

          sub_1000054A4(0, &qword_1006C63E0);
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v5[3] = v15;
                v5[4] = 0;
                goto LABEL_29;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v5[3] = v11;
          v5[4] = v16;
          if (!v12)
          {
LABEL_29:

            sub_1003B5524(a1, a2, v30, a3);
            return;
          }
        }

        v18 = NSObject._rawHashValue(seed:)(*(a3 + 40));
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_1000054A4(0, &qword_1006C63E0);
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = static NSObject.== infix(_:_:)();

          if (v27)
          {
            goto LABEL_23;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_23:

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
      v5 = a5;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

void *sub_10049ABF4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = sub_10015DA04(&qword_1006C2568);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for Participant();
  v13 = __chkstk_darwin(v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_1000073B4(v11, &qword_1006C2568);
          v45 = v61;

          return sub_1003B5718(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_10000BF84(&qword_1006C63C8, &type metadata accessor for Participant);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_10000BF84(&qword_1006C63D0, &type metadata accessor for Participant);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

void *sub_10049B0C8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v66 = a2;
  v84 = sub_10015DA04(&qword_1006C1790);
  __chkstk_darwin(v84);
  v10 = &v65 - v9;
  v90 = type metadata accessor for URL();
  v11 = *(v90 - 8);
  v12 = __chkstk_darwin(v90);
  v70 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v68 = &v65 - v14;
  v15 = sub_10015DA04(&qword_1006C9E20);
  __chkstk_darwin(v15 - 8);
  v73 = &v65 - v16;
  v76 = type metadata accessor for MarkdownStyle(0);
  v17 = __chkstk_darwin(v76);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v65 - v21;
  v23 = __chkstk_darwin(v20);
  v78 = &v65 - v24;
  result = __chkstk_darwin(v23);
  v26 = *(a3 + 16);
  v27 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v28 = *(a1 + v27) & ((-1 << a4) - 1);
  v69 = a1;
  *(a1 + v27) = v28;
  v29 = v26 - 1;
  v75 = (v30 + 56);
  v79 = v30;
  v74 = (v30 + 48);
  v89 = (v11 + 48);
  v71 = (v11 + 32);
  v80 = (v11 + 8);
  v87 = a3 + 56;
  v88 = a3;
  v72 = a5;
  v82 = v19;
  v83 = &v65 - v31;
LABEL_2:
  v67 = v29;
LABEL_4:
  while (2)
  {
    v33 = *a5;
    v32 = a5[1];
    v35 = a5[2];
    v34 = a5[3];
    v36 = a5[4];
    v86 = v35;
    if (v36)
    {
      v37 = v34;
LABEL_13:
      v41 = (v36 - 1) & v36;
      v42 = v73;
      sub_1003B93D8(*(v33 + 48) + *(v79 + 72) * (__clz(__rbit64(v36)) | (v37 << 6)), v73);
      v43 = 0;
      v40 = v37;
LABEL_14:
      v44 = v76;
      (*v75)(v42, v43, 1, v76);
      *a5 = v33;
      a5[1] = v32;
      a5[2] = v86;
      a5[3] = v40;
      a5[4] = v41;
      if ((*v74)(v42, 1, v44) == 1)
      {
        sub_1000073B4(v42, &qword_1006C9E20);
        v64 = v88;

        return sub_1003B5D68(v69, v66, v67, v64);
      }

      v45 = v83;
      sub_1003B943C(v42, v83);
      Hasher.init(_seed:)();
      v46 = v78;
      sub_1003B93D8(v45, v78);
      v47 = *v89;
      v48 = v90;
      v49 = (*v89)(v46, 6, v90);
      if (v49 <= 2)
      {
        v50 = v82;
        if (!v49)
        {
          v52 = v68;
          (*v71)(v68, v78, v48);
          Hasher._combine(_:)(6uLL);
          sub_10000BF84(&qword_1006C07C0, &type metadata accessor for URL);
          dispatch thunk of Hashable.hash(into:)();
          (*v80)(v52, v48);
LABEL_28:
          v53 = Hasher._finalize()();
          v54 = -1 << *(v88 + 32);
          v55 = v53 & ~v54;
          v56 = v55 >> 6;
          v57 = 1 << v55;
          if (((1 << v55) & *(v87 + 8 * (v55 >> 6))) == 0)
          {
LABEL_3:
            result = sub_1003B94A0(v45);
            a5 = v72;
            continue;
          }

          v85 = ~v54;
          v86 = *(v79 + 72);
          while (1)
          {
            sub_1003B93D8(*(v88 + 48) + v86 * v55, v22);
            v58 = *(v84 + 48);
            sub_1003B93D8(v22, v10);
            sub_1003B93D8(v45, &v10[v58]);
            v59 = v47(v10, 6, v90);
            if (v59 > 2)
            {
              if (v59 > 4)
              {
                if (v59 == 5)
                {
                  sub_1003B94A0(v22);
                  if (v47(&v10[v58], 6, v90) == 5)
                  {
                    goto LABEL_54;
                  }
                }

                else
                {
                  sub_1003B94A0(v22);
                  if (v47(&v10[v58], 6, v90) == 6)
                  {
                    goto LABEL_54;
                  }
                }
              }

              else if (v59 == 3)
              {
                sub_1003B94A0(v22);
                if (v47(&v10[v58], 6, v90) == 3)
                {
                  goto LABEL_54;
                }
              }

              else
              {
                sub_1003B94A0(v22);
                if (v47(&v10[v58], 6, v90) == 4)
                {
                  goto LABEL_54;
                }
              }

              goto LABEL_49;
            }

            if (v59)
            {
              break;
            }

            sub_1003B93D8(v10, v50);
            v60 = v90;
            if (v47(&v10[v58], 6, v90))
            {
              sub_1003B94A0(v22);
              (*v80)(v50, v60);
              v45 = v83;
LABEL_49:
              sub_1000073B4(v10, &qword_1006C1790);
              goto LABEL_50;
            }

            v61 = v70;
            (*v71)(v70, &v10[v58], v60);
            v77 = static URL.== infix(_:_:)();
            v81 = *v80;
            v62 = v61;
            v50 = v82;
            v81(v62, v60);
            sub_1003B94A0(v22);
            v81(v50, v60);
            v45 = v83;
            if (v77)
            {
LABEL_54:
              sub_1003B94A0(v10);
              result = sub_1003B94A0(v45);
              v63 = v69[v56];
              v69[v56] = v63 & ~v57;
              a5 = v72;
              if ((v63 & v57) != 0)
              {
                v29 = v67 - 1;
                if (__OFSUB__(v67, 1))
                {
                  goto LABEL_60;
                }

                if (v67 == 1)
                {
                  return &_swiftEmptySetSingleton;
                }

                goto LABEL_2;
              }

              goto LABEL_4;
            }

            sub_1003B94A0(v10);
LABEL_50:
            v55 = (v55 + 1) & v85;
            v56 = v55 >> 6;
            v57 = 1 << v55;
            if ((*(v87 + 8 * (v55 >> 6)) & (1 << v55)) == 0)
            {
              goto LABEL_3;
            }
          }

          if (v59 == 1)
          {
            sub_1003B94A0(v22);
            if (v47(&v10[v58], 6, v90) == 1)
            {
              goto LABEL_54;
            }
          }

          else
          {
            sub_1003B94A0(v22);
            if (v47(&v10[v58], 6, v90) == 2)
            {
              goto LABEL_54;
            }
          }

          goto LABEL_49;
        }

        v51 = v49 != 1;
      }

      else
      {
        v50 = v82;
        if (v49 > 4)
        {
          if (v49 == 5)
          {
            v51 = 4;
          }

          else
          {
            v51 = 5;
          }
        }

        else if (v49 == 3)
        {
          v51 = 2;
        }

        else
        {
          v51 = 3;
        }
      }

      Hasher._combine(_:)(v51);
      goto LABEL_28;
    }

    break;
  }

  v38 = (v35 + 64) >> 6;
  if (v38 <= v34 + 1)
  {
    v39 = v34 + 1;
  }

  else
  {
    v39 = (v35 + 64) >> 6;
  }

  v40 = v39 - 1;
  while (1)
  {
    v37 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v37 >= v38)
    {
      v41 = 0;
      v43 = 1;
      v42 = v73;
      goto LABEL_14;
    }

    v36 = *(v32 + 8 * v37);
    ++v34;
    if (v36)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}