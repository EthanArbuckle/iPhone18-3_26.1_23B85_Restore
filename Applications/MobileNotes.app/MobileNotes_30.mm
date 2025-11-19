id sub_1003F886C()
{
  v0 = sub_100393814();
  v1 = [v0 children];
  sub_1002D0574();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = sub_1003F89A4();
  sub_10015DA04(&qword_1006C32B8);
  Array.appendNonNil(_:)();

  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v0 menuByReplacingChildren:{isa, v6, v2}];

  return v4;
}

id sub_1003F89A4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong behavior];

    if (v3 == 1)
    {
      return 0;
    }
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = [v8 eventReporter];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(ICViewAttachmentsActivity) initWithPresentingViewController:v5 eventReporter:v9];

  if (*(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion))
  {
    v11 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion + 8);
    v14[4] = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion);
    v14[5] = v11;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_10017C07C;
    v14[3] = &unk_10065CFC0;
    v12 = _Block_copy(v14);
  }

  else
  {
    v12 = 0;
  }

  v4 = [v10 actionWithCompletion:v12];
  _Block_release(v12);

  return v4;
}

id sub_1003F8D48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoteBrowseActionMenu();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003F8F8C(const void *a1)
{
  type metadata accessor for AppIntentsVocabularyManager();
  *(v1 + 16) = swift_task_alloc();
  *(v1 + 24) = _Block_copy(a1);

  return _swift_task_switch(sub_1003F9028, 0, 0);
}

uint64_t sub_1003F9028()
{
  static Logger.link.getter();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1003F90C0;

  return sub_100478EDC();
}

uint64_t sub_1003F90C0()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 40) = v0;

  sub_1003F93F4(v2);
  if (v0)
  {

    return _swift_task_switch(sub_1003F9240, 0, 0);
  }

  else
  {
    (*(*(v3 + 24) + 16))();
    _Block_release(*(v3 + 24));

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1003F9240()
{
  v1 = *(v0 + 24);
  v2 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, v2);

  _Block_release(*(v0 + 24));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1003F9348()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000A600;

  return sub_1003F8F8C(v2);
}

uint64_t sub_1003F93F4(uint64_t a1)
{
  v2 = type metadata accessor for AppIntentsVocabularyManager();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1003F9450(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___ICTagDetailCell_text];
  *v3 = a1;
  *(v3 + 1) = a2;

  if (*&v2[OBJC_IVAR___ICTagDetailCell_attributedText] && *(v3 + 1))
  {
    sub_1003FB458(0);
  }

  return [v2 setNeedsUpdateConfiguration];
}

uint64_t sub_1003F958C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1003F987C(void *a1)
{
  v2 = OBJC_IVAR___ICTagDetailCell_tagSelection;
  v3 = *(v1 + OBJC_IVAR___ICTagDetailCell_tagSelection);
  *(v1 + OBJC_IVAR___ICTagDetailCell_tagSelection) = a1;
  v11 = a1;

  sub_1003F9988();
  v4 = *(v1 + v2);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR___ICTagDetailCell_showOperatorMenuButton);
    v6 = objc_opt_self();
    v7 = v4;
    v8 = [v6 secondaryLabelColor];
    v9 = [v7 summaryWithJoinOperatorMenu:v5 usingTextStyle:UIFontTextStyleFootnote foregroundColor:v8];

    sub_1003FB458(v9);
    v10 = v9;
  }

  else
  {
    sub_1003FB458(0);
    v10 = v11;
  }
}

void sub_1003F9988()
{
  v1 = sub_1003FB05C(&OBJC_IVAR___ICTagDetailCell____lazy_storage___allAction);
  v2 = OBJC_IVAR___ICTagDetailCell_tagSelection;
  v3 = *(v0 + OBJC_IVAR___ICTagDetailCell_tagSelection);
  v4 = v3 && [v3 tagOperator] == 1;
  [v1 setState:v4];

  v7 = sub_1003FB05C(&OBJC_IVAR___ICTagDetailCell____lazy_storage___anyAction);
  v5 = *(v0 + v2);
  v6 = v5 && [v5 tagOperator] == 2;
  [v7 setState:v6];
}

id sub_1003F9B08()
{
  v1 = sub_1003F9C10();
  v2 = OBJC_IVAR___ICTagDetailCell_showOperatorMenuButton;
  v1[OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView_preservesMenuLineHeight] = v0[OBJC_IVAR___ICTagDetailCell_showOperatorMenuButton];

  v3 = *&v0[OBJC_IVAR___ICTagDetailCell_tagSelection];
  if (v3)
  {
    v4 = v0[v2];
    v5 = objc_opt_self();
    v6 = v3;
    v7 = [v5 secondaryLabelColor];
    v8 = [v6 summaryWithJoinOperatorMenu:v4 usingTextStyle:UIFontTextStyleFootnote foregroundColor:v7];

    sub_1003FB458(v8);
  }

  else
  {
    sub_1003FB458(0);
  }

  return [v0 setNeedsUpdateConfiguration];
}

id sub_1003F9C10()
{
  v1 = OBJC_IVAR___ICTagDetailCell____lazy_storage___textView;
  v2 = *(v0 + OBJC_IVAR___ICTagDetailCell____lazy_storage___textView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICTagDetailCell____lazy_storage___textView);
  }

  else
  {
    v4 = sub_1003FB228();
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    v8 = objc_opt_self();
    v9 = [v8 secondaryLabelColor];
    v10 = type metadata accessor for InlineMenuButtonTextView();
    v11 = objc_allocWithZone(v10);
    v12 = OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView_menu;
    *&v11[OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView_menu] = 0;
    v11[OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView_preservesMenuLineHeight] = 0;
    v13 = &v11[OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView_fontSymbolicTraits];
    *v13 = 0;
    v13[4] = 1;
    *&v11[OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView____lazy_storage___menuAttachment] = 0;
    *&v11[v12] = v4;
    v14 = &v11[OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView_menuReplacementSubstring];
    *v14 = v5;
    v14[1] = v7;
    *&v11[OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView_textStyle] = UIFontTextStyleFootnote;
    *v13 = 2;
    v13[4] = 0;
    *&v11[OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView_foregroundColor] = v9;
    v27.receiver = v11;
    v27.super_class = v10;
    v15 = v4;
    v16 = UIFontTextStyleFootnote;
    v17 = v9;
    v18 = objc_msgSendSuper2(&v27, "initWithFrame:textContainer:", 0, 0.0, 0.0, 0.0, 0.0);
    [v18 setTranslatesAutoresizingMaskIntoConstraints:{0, v27.receiver, v27.super_class}];
    [v18 setEditable:0];
    v3 = v18;
    [v3 setSelectable:0];
    [v3 setScrollEnabled:0];
    [v3 setShowsHorizontalScrollIndicator:0];
    [v3 setShowsVerticalScrollIndicator:0];
    [v3 setAdjustsFontForContentSizeCategory:0];
    [v3 setInsetsLayoutMarginsFromSafeArea:0];
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    [v3 setContentInset:{UIEdgeInsetsZero.top, left, bottom, right}];
    [v3 setContentInsetAdjustmentBehavior:2];

    v22 = [v3 textContainer];
    [v22 setLineFragmentPadding:0.0];

    v23 = [v8 clearColor];
    [v3 setBackgroundColor:v23];

    [v3 setTextContainerInset:{UIEdgeInsetsZero.top, left, bottom, right}];
    v24 = *(v0 + v1);
    *(v0 + v1) = v3;

    v2 = 0;
  }

  v25 = v2;
  return v3;
}

void sub_1003F9F54(void *a1, char a2)
{
  if (a2)
  {
    v4 = [objc_allocWithZone(CATransition) init];
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [v6 setTimingFunction:v7];

    [v6 setType:kCATransitionFade];
    [v6 setDuration:0.25];

    v8 = [v2 layer];
    [v8 addAnimation:v6 forKey:kCATransitionFade];
  }

  v9 = a1;

  sub_1003F987C(a1);
}

id sub_1003FA0F8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR___ICTagDetailCell_selectionOperatorChangeHandler];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v4[OBJC_IVAR___ICTagDetailCell_text];
  *v11 = 0;
  v11[1] = 0;
  *&v4[OBJC_IVAR___ICTagDetailCell_attributedText] = 0;
  *&v4[OBJC_IVAR___ICTagDetailCell_maxNumberOfLines] = 0;
  *&v4[OBJC_IVAR___ICTagDetailCell_tagSelection] = 0;
  v4[OBJC_IVAR___ICTagDetailCell_showOperatorMenuButton] = 0;
  *&v4[OBJC_IVAR___ICTagDetailCell____lazy_storage___allAction] = 0;
  *&v4[OBJC_IVAR___ICTagDetailCell____lazy_storage___anyAction] = 0;
  *&v4[OBJC_IVAR___ICTagDetailCell____lazy_storage___menu] = 0;
  *&v4[OBJC_IVAR___ICTagDetailCell____lazy_storage___listContentView] = 0;
  *&v4[OBJC_IVAR___ICTagDetailCell____lazy_storage___textView] = 0;
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  sub_1000054A4(0, &qword_1006BDAB0);
  v13 = v12;
  static UITraitCollection.traitsAffectingSizeAndColor.getter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v13;
}

id sub_1003FA2D0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR___ICTagDetailCell_selectionOperatorChangeHandler];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v1[OBJC_IVAR___ICTagDetailCell_text];
  *v5 = 0;
  v5[1] = 0;
  *&v1[OBJC_IVAR___ICTagDetailCell_attributedText] = 0;
  *&v1[OBJC_IVAR___ICTagDetailCell_maxNumberOfLines] = 0;
  *&v1[OBJC_IVAR___ICTagDetailCell_tagSelection] = 0;
  v1[OBJC_IVAR___ICTagDetailCell_showOperatorMenuButton] = 0;
  *&v1[OBJC_IVAR___ICTagDetailCell____lazy_storage___allAction] = 0;
  *&v1[OBJC_IVAR___ICTagDetailCell____lazy_storage___anyAction] = 0;
  *&v1[OBJC_IVAR___ICTagDetailCell____lazy_storage___menu] = 0;
  *&v1[OBJC_IVAR___ICTagDetailCell____lazy_storage___listContentView] = 0;
  *&v1[OBJC_IVAR___ICTagDetailCell____lazy_storage___textView] = 0;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  if (v6)
  {
    sub_1000054A4(0, &qword_1006BDAB0);
    static UITraitCollection.traitsAffectingSizeAndColor.getter();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = v6;
    UIView.registerForTraitChanges<A>(_:handler:)();

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return v6;
}

void sub_1003FA48C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIListContentConfiguration();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v30[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v30[-1] - v9;
  v11 = sub_10015DA04(&qword_1006C5030);
  __chkstk_darwin(v11 - 8);
  v13 = &v30[-1] - v12;
  sub_1003FA814();
  static UIBackgroundConfiguration.listGroupedHeaderFooter()();
  v14 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  UICollectionViewCell.backgroundConfiguration.setter();
  v15 = v1 + OBJC_IVAR___ICTagDetailCell_text;
  if (*(v1 + OBJC_IVAR___ICTagDetailCell_text + 8))
  {
    goto LABEL_2;
  }

  v19 = *(v1 + OBJC_IVAR___ICTagDetailCell_attributedText);
  if (!v19)
  {
    return;
  }

  if ((*(v1 + OBJC_IVAR___ICTagDetailCell_showOperatorMenuButton) & 1) == 0)
  {
LABEL_2:
    static UIListContentConfiguration.groupedFooter()();
    v16 = type metadata accessor for UICellConfigurationState();
    v31 = v16;
    v32 = &protocol witness table for UICellConfigurationState;
    v17 = sub_100180240(v30);
    (*(*(v16 - 8) + 16))(v17, a1, v16);
    UIListContentConfiguration.updated(for:)();
    v18 = *(v5 + 8);
    v18(v8, v4);
    sub_100009F60(v30);
    if (*(v15 + 8))
    {

      UIListContentConfiguration.text.setter();
    }

    else
    {
      v24 = *(v2 + OBJC_IVAR___ICTagDetailCell_attributedText);
      if (v24)
      {
        v25 = v24;
        UIListContentConfiguration.attributedText.setter();
      }
    }

    v26 = sub_1003FAD88();
    v31 = v4;
    v32 = &protocol witness table for UIListContentConfiguration;
    v27 = sub_100180240(v30);
    (*(v5 + 16))(v27, v10, v4);
    UIListContentView.configuration.setter();

    [*(v2 + OBJC_IVAR___ICTagDetailCell____lazy_storage___listContentView) setHidden:0];
    v28 = sub_1003F9C10();
    [v28 setHidden:1];

    v18(v10, v4);
  }

  else
  {
    v20 = v19;
    v21 = sub_1003F9C10();
    v22 = v20;
    sub_1004B073C(v19);

    [*(v2 + OBJC_IVAR___ICTagDetailCell____lazy_storage___textView) setHidden:0];
    v23 = sub_1003FAD88();
    [v23 setHidden:1];
  }
}

void sub_1003FA814()
{
  v1 = sub_1003F9C10();
  v43 = [v1 superview];

  v2 = v43;
  if (!v43)
  {
    v3 = sub_1003FAD88();
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v4 = OBJC_IVAR___ICTagDetailCell____lazy_storage___textView;
    [*&v0[OBJC_IVAR___ICTagDetailCell____lazy_storage___textView] setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [v0 contentView];
    v6 = OBJC_IVAR___ICTagDetailCell____lazy_storage___listContentView;
    [v5 addSubview:*&v0[OBJC_IVAR___ICTagDetailCell____lazy_storage___listContentView]];

    v7 = [v0 contentView];
    [v7 addSubview:*&v0[v4]];

    v42 = objc_opt_self();
    sub_10015DA04(&unk_1006BD390);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100534660;
    v9 = [*&v0[v4] topAnchor];
    v10 = [v0 contentView];
    v11 = [v10 topAnchor];

    v12 = [v9 constraintEqualToAnchor:v11 constant:8.0];
    *(v8 + 32) = v12;
    v13 = [*&v0[v4] leadingAnchor];
    v14 = [v0 contentView];
    v15 = [v14 safeAreaLayoutGuide];

    v16 = [v15 leadingAnchor];
    v17 = [v13 constraintEqualToAnchor:v16 constant:20.0];

    *(v8 + 40) = v17;
    v18 = [*&v0[v4] trailingAnchor];
    v19 = [v0 contentView];
    v20 = [v19 trailingAnchor];

    v21 = [v18 constraintEqualToAnchor:v20 constant:-20.0];
    *(v8 + 48) = v21;
    v22 = [*&v0[v4] bottomAnchor];
    v23 = [v0 contentView];
    v24 = [v23 bottomAnchor];

    v25 = [v22 constraintEqualToAnchor:v24 constant:-8.0];
    *(v8 + 56) = v25;
    v26 = [*&v0[v6] topAnchor];
    v27 = [v0 contentView];
    v28 = [v27 topAnchor];

    v29 = [v26 constraintEqualToAnchor:v28];
    *(v8 + 64) = v29;
    v30 = [*&v0[v6] leadingAnchor];
    v31 = [v0 contentView];
    v32 = [v31 leadingAnchor];

    v33 = [v30 constraintEqualToAnchor:v32];
    *(v8 + 72) = v33;
    v34 = [*&v0[v6] trailingAnchor];
    v35 = [v0 contentView];
    v36 = [v35 trailingAnchor];

    v37 = [v34 constraintEqualToAnchor:v36];
    *(v8 + 80) = v37;
    v38 = [*&v0[v6] bottomAnchor];
    v39 = [v0 contentView];
    v40 = [v39 bottomAnchor];

    v41 = [v38 constraintEqualToAnchor:v40];
    *(v8 + 88) = v41;
    sub_1000054A4(0, &qword_1006C5D90);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v42 activateConstraints:isa];
    v2 = isa;
  }
}

id sub_1003FAD88()
{
  v1 = v0;
  v2 = type metadata accessor for UIListContentConfiguration();
  __chkstk_darwin(v2 - 8);
  v3 = OBJC_IVAR___ICTagDetailCell____lazy_storage___listContentView;
  v4 = *(v0 + OBJC_IVAR___ICTagDetailCell____lazy_storage___listContentView);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR___ICTagDetailCell____lazy_storage___listContentView);
  }

  else
  {
    sub_1000054A4(0, &qword_1006C5038);
    static UIListContentConfiguration.groupedFooter()();
    v6 = UIListContentView.init(configuration:)();
    v7 = *(v0 + v3);
    *(v1 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void sub_1003FAF48()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___ICTagDetailCell_tagSelection);
    if (v2)
    {
      v3 = *(Strong + OBJC_IVAR___ICTagDetailCell_showOperatorMenuButton);
      v4 = objc_opt_self();
      v5 = v2;
      v6 = [v4 secondaryLabelColor];
      v7 = [v5 summaryWithJoinOperatorMenu:v3 usingTextStyle:UIFontTextStyleFootnote foregroundColor:v6];

      sub_1003FB458(v7);
    }

    else
    {
      sub_1003FB458(0);
    }

    [v1 setNeedsUpdateConfiguration];
  }
}

id sub_1003FB05C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *&v1[*a1];
  if (v3)
  {
    v4 = *&v1[*a1];
  }

  else
  {
    sub_1000054A4(0, &unk_1006BD380);
    v5 = ICLocalizedStringFromICTagSelectionOperator();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    String.lowercased()();

    *(swift_allocObject() + 16) = v1;
    v6 = v1;
    v7 = v1;
    v8 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v9 = *&v1[v2];
    *&v7[v2] = v8;
    v4 = v8;

    v3 = 0;
  }

  v10 = v3;
  return v4;
}

id sub_1003FB188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a2 + OBJC_IVAR___ICTagDetailCell_tagSelection);
  if (result)
  {
    result = [result setTagOperator:a3];
  }

  v6 = *(a2 + OBJC_IVAR___ICTagDetailCell_selectionOperatorChangeHandler);
  if (v6)
  {

    v6(a3);

    return sub_10000C840(v6);
  }

  return result;
}

objc_class *sub_1003FB228()
{
  v1 = OBJC_IVAR___ICTagDetailCell____lazy_storage___menu;
  v2 = *(v0 + OBJC_IVAR___ICTagDetailCell____lazy_storage___menu);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICTagDetailCell____lazy_storage___menu);
  }

  else
  {
    sub_1000054A4(0, &unk_1006C6410);
    sub_10015DA04(&unk_1006BD390);
    preferredElementSize = swift_allocObject();
    *(preferredElementSize + 16) = xmmword_100531E20;
    v5 = v0;
    *(preferredElementSize + 32) = sub_1003FB05C(&OBJC_IVAR___ICTagDetailCell____lazy_storage___allAction);
    *(preferredElementSize + 40) = sub_1003FB05C(&OBJC_IVAR___ICTagDetailCell____lazy_storage___anyAction);
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v12.value.super.isa = 0;
    v12.is_nil = 0;
    v7.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v6, 0, v12, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v11).super.super.isa;
    v8 = *(v0 + v1);
    *(v5 + v1) = v7;
    v3 = v7.super.super.isa;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1003FB458(void *a1)
{
  v2 = OBJC_IVAR___ICTagDetailCell_attributedText;
  v3 = *&v1[OBJC_IVAR___ICTagDetailCell_attributedText];
  *&v1[OBJC_IVAR___ICTagDetailCell_attributedText] = a1;
  v4 = a1;

  if (*&v1[v2])
  {
    v5 = &v1[OBJC_IVAR___ICTagDetailCell_text];
    if (*&v1[OBJC_IVAR___ICTagDetailCell_text + 8])
    {
      *v5 = 0;
      *(v5 + 1) = 0;

      if (*&v1[v2] && *(v5 + 1))
      {
        sub_1003FB458(0);
      }

      [v1 setNeedsUpdateConfiguration];
    }
  }

  return [v1 setNeedsUpdateConfiguration];
}

uint64_t sub_1003FB544()
{
  type metadata accessor for NoteEntity.NoteEntityStager();
  result = swift_allocObject();
  static NoteEntity._contextStager = result;
  return result;
}

uint64_t *NoteEntity._contextStager.unsafeMutableAddressor()
{
  if (qword_1006BC8F8 != -1)
  {
    swift_once();
  }

  return &static NoteEntity._contextStager;
}

uint64_t static NoteEntity._contextStager.getter()
{
  if (qword_1006BC8F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static NoteEntity._contextStager.setter(uint64_t a1)
{
  if (qword_1006BC8F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static NoteEntity._contextStager = a1;
}

uint64_t (*static NoteEntity._contextStager.modify())()
{
  if (qword_1006BC8F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t NoteEntity.NoteEntityStager._stage(entities:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1003FDB24;

  return sub_1003FC0F0(a1);
}

uint64_t sub_1003FB7F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001B70EC;

  return sub_1003FC0F0(a1);
}

uint64_t sub_1003FB8A0@<X0>(void *a1@<X8>)
{
  if (qword_1006BC8F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static NoteEntity._contextStager;
}

uint64_t sub_1003FB924()
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
  sub_100025918(v10, static NoteEntityTransientType.typeDisplayRepresentation);
  sub_10002597C(v10, static NoteEntityTransientType.typeDisplayRepresentation);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  LocalizedStringResource.init(stringLiteral:)();
  (*(v9 + 56))(v2, 0, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t NoteEntityTransientType.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_1006BC900 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return sub_10002597C(v0, static NoteEntityTransientType.typeDisplayRepresentation);
}

uint64_t static NoteEntityTransientType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC900 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10002597C(v2, static NoteEntityTransientType.typeDisplayRepresentation);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t NoteEntityTransientType.displayRepresentation.getter()
{
  v0 = sub_10015DA04(&unk_1006BEA80);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v8 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);
  EntityProperty.wrappedValue.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v13);

  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
  LocalizedStringResource.init(stringInterpolation:)();
  (*(v7 + 56))(v5, 1, 1, v6);
  v11 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t sub_1003FBF90@<X0>(uint64_t *a1@<X8>)
{
  result = _s11MobileNotes23NoteEntityTransientTypeVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1003FBFB8(uint64_t a1)
{
  v2 = sub_1003FD584();

  return static TransientAppEntity.defaultQuery.getter(a1, v2);
}

uint64_t sub_1003FC004(uint64_t a1)
{
  v2 = sub_1003FD584();

  return TransientAppEntity.id.getter(a1, v2);
}

uint64_t sub_1003FC050(uint64_t a1)
{
  v2 = sub_1003FD670();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1003FC0A4(uint64_t a1)
{
  v2 = sub_1003FD920();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1003FC0F0(uint64_t a1)
{
  v1[20] = a1;
  v1[21] = sub_10015DA04(&qword_1006C7888);
  v1[22] = swift_task_alloc();
  v2 = sub_10015DA04(&qword_1006BF3E8);
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v3 = type metadata accessor for NoteEntity(0);
  v1[28] = v3;
  v1[29] = *(v3 - 8);
  v1[30] = swift_task_alloc();
  sub_10015DA04(&unk_1006BCAC0);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  sub_10015DA04(&unk_1006C5400);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();

  return _swift_task_switch(sub_1003FC300, 0, 0);
}

uint64_t sub_1003FC300()
{
  v1 = *(v0 + 160);
  v2 = v1[2];
  *(v0 + 288) = v2;
  if (v2)
  {
    *(v0 + 296) = 0;
    *(v0 + 304) = _swiftEmptyArrayStorage;
    v4 = *(v0 + 272);
    v3 = *(v0 + 280);
    v5 = *(v0 + 264);
    v6 = *(v0 + 224);
    v7 = *(v0 + 232);
    *(v0 + 312) = v1[4];
    *(v0 + 320) = v1[5];

    sub_1001E28D0((v0 + 16));
    EntityProperty.wrappedValue.getter();
    v8 = *(v0 + 96);
    v9 = *(v0 + 104);
    *(v0 + 328) = *(v0 + 16);
    *(v0 + 112) = v8;
    *(v0 + 120) = v9;
    IntentParameter.wrappedValue.setter();
    EntityProperty.wrappedValue.getter();
    *(v0 + 336) = *(v0 + 24);
    sub_100006038(v3, v4, &unk_1006C5400);
    IntentParameter.wrappedValue.setter();
    sub_1000073B4(v3, &unk_1006C5400);
    v10 = *(v7 + 56);
    *(v0 + 344) = v10;
    *(v0 + 352) = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v10(v5, 1, 1, v6);
    v11 = *(v0 + 32);
    *(v0 + 56) = *(v0 + 16);
    *(v0 + 72) = v11;
    *(v0 + 88) = *(v0 + 48);
    v12 = swift_task_alloc();
    *(v0 + 360) = v12;
    v13 = sub_100023DE8();
    v14 = sub_1000060B4(&qword_1006BFAA0, &unk_1006BE4B0);
    *v12 = v0;
    v12[1] = sub_1003FC5B8;
    v15 = *(v0 + 256);

    return AppIntent.callAsFunction<>(donate:)(v15, 1, &type metadata for CreateNoteIntent, v13, v14);
  }

  else
  {

    v16 = *(v0 + 8);

    return v16(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1003FC5B8()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_1003FCD74;
  }

  else
  {
    v2 = sub_1003FC6CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003FC6CC()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  v4 = *(v0 + 248);
  v5 = *(v0 + 224);
  v6 = *(v0 + 232);
  sub_1000073B4(v3, &unk_1006BCAC0);
  v1(v2, 0, 1, v5);
  sub_1003FDAB4(v2, v3);
  sub_100006038(v3, v4, &unk_1006BCAC0);
  v7 = (*(v6 + 48))(v4, 1, v5);
  v8 = *(v0 + 176);
  if (v7 == 1)
  {
    v9 = (v0 + 208);
    sub_1000073B4(*(v0 + 248), &unk_1006BCAC0);
    type metadata accessor for ICError(0);
    *(v0 + 152) = 218;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_1003FDA6C(&qword_1006BE4D0, 255, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v8 = *(v0 + 144);
    swift_storeEnumTagMultiPayload();
    sub_1003FDA6C(&qword_1006C7768, 255, type metadata accessor for NoteEntity);
    StagingResult.init(result:)();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v0 + 304);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1001CBAFC(0, v11[2] + 1, 1, *(v0 + 304));
    }

    v13 = v11[2];
    v12 = v11[3];
    v14 = v13 + 1;
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1001CBAFC(v12 > 1, v13 + 1, 1, v11);
    }
  }

  else
  {
    v9 = (v0 + 216);
    v15 = *(v0 + 240);
    sub_1002D92B8(*(v0 + 248), v15);
    v16 = type metadata accessor for NoteID();
    (*(*(v16 - 8) + 16))(v8, v15, v16);
    swift_storeEnumTagMultiPayload();
    sub_1003FDA6C(&qword_1006C7768, 255, type metadata accessor for NoteEntity);
    StagingResult.init(result:)();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v0 + 304);
    if ((v17 & 1) == 0)
    {
      v11 = sub_1001CBAFC(0, v11[2] + 1, 1, *(v0 + 304));
    }

    v13 = v11[2];
    v18 = v11[3];
    v14 = v13 + 1;
    if (v13 >= v18 >> 1)
    {
      v11 = sub_1001CBAFC(v18 > 1, v13 + 1, 1, v11);
    }

    v19 = *(v0 + 240);

    sub_1001AD144(v19);
  }

  v20 = *v9;
  v21 = *(v0 + 288);
  v22 = *(v0 + 184);
  v23 = *(v0 + 192);
  v24 = *(v0 + 296) + 1;
  sub_1000073B4(*(v0 + 264), &unk_1006BCAC0);
  v11[2] = v14;
  (*(v23 + 32))(v11 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v13, v20, v22);
  if (v24 == v21)
  {

    v25 = *(v0 + 8);

    return v25(v11);
  }

  else
  {
    v27 = *(v0 + 296) + 1;
    *(v0 + 296) = v27;
    *(v0 + 304) = v11;
    v29 = *(v0 + 272);
    v28 = *(v0 + 280);
    v30 = *(v0 + 264);
    v31 = *(v0 + 224);
    v32 = *(v0 + 232);
    v33 = *(v0 + 160) + 16 * v27;
    *(v0 + 312) = *(v33 + 32);
    *(v0 + 320) = *(v33 + 40);

    sub_1001E28D0((v0 + 16));
    EntityProperty.wrappedValue.getter();
    v34 = *(v0 + 96);
    v35 = *(v0 + 104);
    *(v0 + 328) = *(v0 + 16);
    *(v0 + 112) = v34;
    *(v0 + 120) = v35;
    IntentParameter.wrappedValue.setter();
    EntityProperty.wrappedValue.getter();
    *(v0 + 336) = *(v0 + 24);
    sub_100006038(v28, v29, &unk_1006C5400);
    IntentParameter.wrappedValue.setter();
    sub_1000073B4(v28, &unk_1006C5400);
    v36 = *(v32 + 56);
    *(v0 + 344) = v36;
    *(v0 + 352) = (v32 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v36(v30, 1, 1, v31);
    v37 = *(v0 + 32);
    *(v0 + 56) = *(v0 + 16);
    *(v0 + 72) = v37;
    *(v0 + 88) = *(v0 + 48);
    v38 = swift_task_alloc();
    *(v0 + 360) = v38;
    v39 = sub_100023DE8();
    v40 = sub_1000060B4(&qword_1006BFAA0, &unk_1006BE4B0);
    *v38 = v0;
    v38[1] = sub_1003FC5B8;
    v41 = *(v0 + 256);

    return AppIntent.callAsFunction<>(donate:)(v41, 1, &type metadata for CreateNoteIntent, v39, v40);
  }
}

uint64_t sub_1003FCD74()
{
  v1 = *(v0 + 176);
  type metadata accessor for ICError(0);
  *(v0 + 136) = 218;
  sub_1001E27A0(_swiftEmptyArrayStorage);
  sub_1003FDA6C(&qword_1006BE4D0, 255, type metadata accessor for ICError);
  _BridgedStoredNSError.init(_:userInfo:)();
  *v1 = *(v0 + 128);
  swift_storeEnumTagMultiPayload();
  sub_1003FDA6C(&qword_1006C7768, 255, type metadata accessor for NoteEntity);
  StagingResult.init(result:)();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 304);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1001CBAFC(0, v3[2] + 1, 1, *(v0 + 304));
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_1001CBAFC(v4 > 1, v5 + 1, 1, v3);
  }

  v7 = *(v0 + 192);
  v6 = *(v0 + 200);
  v8 = *(v0 + 288);
  v9 = *(v0 + 184);
  v10 = *(v0 + 296) + 1;
  sub_1000073B4(*(v0 + 264), &unk_1006BCAC0);
  v3[2] = v5 + 1;
  (*(v7 + 32))(v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, v6, v9);
  if (v10 == v8)
  {

    v11 = *(v0 + 8);

    return v11(v3);
  }

  else
  {
    v13 = *(v0 + 296) + 1;
    *(v0 + 296) = v13;
    *(v0 + 304) = v3;
    v15 = *(v0 + 272);
    v14 = *(v0 + 280);
    v16 = *(v0 + 264);
    v17 = *(v0 + 232);
    v27 = *(v0 + 224);
    v18 = *(v0 + 160) + 16 * v13;
    *(v0 + 312) = *(v18 + 32);
    *(v0 + 320) = *(v18 + 40);

    sub_1001E28D0((v0 + 16));
    EntityProperty.wrappedValue.getter();
    v19 = *(v0 + 96);
    v20 = *(v0 + 104);
    *(v0 + 328) = *(v0 + 16);
    *(v0 + 112) = v19;
    *(v0 + 120) = v20;
    IntentParameter.wrappedValue.setter();
    EntityProperty.wrappedValue.getter();
    *(v0 + 336) = *(v0 + 24);
    sub_100006038(v14, v15, &unk_1006C5400);
    IntentParameter.wrappedValue.setter();
    sub_1000073B4(v14, &unk_1006C5400);
    v21 = *(v17 + 56);
    *(v0 + 344) = v21;
    *(v0 + 352) = (v17 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v21(v16, 1, 1, v27);
    v22 = *(v0 + 32);
    *(v0 + 56) = *(v0 + 16);
    *(v0 + 72) = v22;
    *(v0 + 88) = *(v0 + 48);
    v23 = swift_task_alloc();
    *(v0 + 360) = v23;
    v24 = sub_100023DE8();
    v25 = sub_1000060B4(&qword_1006BFAA0, &unk_1006BE4B0);
    *v23 = v0;
    v23[1] = sub_1003FC5B8;
    v26 = *(v0 + 256);

    return AppIntent.callAsFunction<>(donate:)(v26, 1, &type metadata for CreateNoteIntent, v24, v25);
  }
}

uint64_t _s11MobileNotes23NoteEntityTransientTypeVACycfC_0()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v6 - 8);
  sub_10015DA04(&unk_1006C1870);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v7 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v8 = *(v1 + 104);
  v8(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v9 = EntityProperty<>.init(title:)();
  sub_10015DA04(&unk_1006BCD60);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v8(v3, v7, v0);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  EntityProperty<>.init(title:)();
  return v9;
}

unint64_t sub_1003FD584()
{
  result = qword_1006C7770;
  if (!qword_1006C7770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7770);
  }

  return result;
}

unint64_t sub_1003FD670()
{
  result = qword_1006C7780;
  if (!qword_1006C7780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7780);
  }

  return result;
}

unint64_t sub_1003FD6C8()
{
  result = qword_1006C7788;
  if (!qword_1006C7788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7788);
  }

  return result;
}

unint64_t sub_1003FD720()
{
  result = qword_1006C7790;
  if (!qword_1006C7790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7790);
  }

  return result;
}

unint64_t sub_1003FD778()
{
  result = qword_1006C7798;
  if (!qword_1006C7798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7798);
  }

  return result;
}

unint64_t sub_1003FD820()
{
  result = qword_1006C77B0;
  if (!qword_1006C77B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C77B0);
  }

  return result;
}

unint64_t sub_1003FD874()
{
  result = qword_1006C77B8;
  if (!qword_1006C77B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C77B8);
  }

  return result;
}

unint64_t sub_1003FD8C8()
{
  result = qword_1006C77C0;
  if (!qword_1006C77C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C77C0);
  }

  return result;
}

unint64_t sub_1003FD920()
{
  result = qword_1006C77C8;
  if (!qword_1006C77C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C77C8);
  }

  return result;
}

unint64_t sub_1003FDA08()
{
  result = qword_1006C77E0;
  if (!qword_1006C77E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C77E0);
  }

  return result;
}

uint64_t sub_1003FDA6C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003FDAB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&unk_1006BCAC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1003FDB40(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR___ICMoveNavigationController_canAppearAbovePasswordEntryView] = 1;
  v7 = objc_allocWithZone(type metadata accessor for MoveViewController());
  v8 = sub_1003EF0F8(a1, a2);
  *&v3[OBJC_IVAR___ICMoveNavigationController_moveViewController] = v8;
  v15.receiver = v3;
  v15.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v15, "initWithRootViewController:", v8);
  v10 = objc_opt_self();
  v11 = v9;
  if ([v10 ic_isVision])
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  [v11 setModalPresentationStyle:v12];
  v13 = [v11 presentationController];

  if (v13)
  {
    [v13 setDelegate:v11];
  }

  return v11;
}

uint64_t sub_1003FDE94()
{
  v0 = [objc_opt_self() isRunningUnitTests];
  v1 = [objc_opt_self() standardUserDefaults];
  type metadata accessor for Cohort();
  result = swift_allocObject();
  *(result + 16) = v0;
  *(result + 24) = v1;
  qword_1006EF9E0 = result;
  return result;
}

unint64_t sub_1003FDF10()
{
  v1 = *(v0 + 24);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    sub_10027CAAC(v10);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v4 = sub_1003FE09C(0x63uLL) + 1;
    v5 = String._bridgeToObjectiveC()();
    [v1 setInteger:v4 forKey:v5];

    return v4;
  }

  return v7;
}

uint64_t sub_1003FE040()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1003FE09C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ICArchiveCreator.softwareIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ICArchiveCreator.softwareVersionName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ICArchiveCreator.softwareVersionName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ICArchiveCreator.softwareVersion.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ICArchiveCreator.softwareVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

double sub_1003FE250()
{
  sub_1003FE6DC(v1);
  static ICArchiveCreator.default = v1[0];
  *&qword_1006EF9F8 = v1[1];
  result = *&v2;
  *&qword_1006EFA08 = v2;
  return result;
}

__int128 *ICArchiveCreator.default.unsafeMutableAddressor()
{
  if (qword_1006BC910 != -1)
  {
    swift_once();
  }

  return &static ICArchiveCreator.default;
}

uint64_t static ICArchiveCreator.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC910 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1006EFA10;
  *a1 = static ICArchiveCreator.default;
  *(a1 + 8) = *(&static ICArchiveCreator.default + 8);
  *(a1 + 24) = unk_1006EFA00;
  *(a1 + 40) = v1;
}

unint64_t sub_1003FE380()
{
  v1 = 0x6572617774666F73;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1003FE3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1003FE990(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1003FE414(uint64_t a1)
{
  v2 = sub_1003FE62C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003FE450(uint64_t a1)
{
  v2 = sub_1003FE62C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ICArchiveCreator.encode(to:)(void *a1)
{
  v3 = sub_10015DA04(&qword_1006C7970);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10017CC60(a1, a1[3]);
  sub_1003FE62C();
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

unint64_t sub_1003FE62C()
{
  result = qword_1006C7978;
  if (!qword_1006C7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7978);
  }

  return result;
}

double ICArchiveCreator.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1003FEAC0(a1, v6);
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

void sub_1003FE6DC(uint64_t *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4 = [v3 bundleIdentifier];

  if (v4)
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v26 = 0;
    v6 = 0;
  }

  v7 = [v2 mainBundle];
  v8 = [v7 infoDictionary];

  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v9 + 16) || (v10 = sub_1002DF11C(0xD00000000000001ALL, 0x800000010055E950), (v11 & 1) == 0))
  {

LABEL_14:
    v13 = 0;
    v14 = 0;
    goto LABEL_15;
  }

  sub_10000A2A0(*(v9 + 56) + 32 * v10, v29);

  v12 = swift_dynamicCast();
  if (v12)
  {
    v13 = v27;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v28;
  }

  else
  {
    v14 = 0;
  }

LABEL_15:
  v15 = [v2 mainBundle];
  v16 = [v15 infoDictionary];

  if (!v16)
  {
    goto LABEL_23;
  }

  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (kCFBundleVersionKey)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v17 + 16))
    {
      v20 = sub_1002DF11C(v18, v19);
      v22 = v21;

      if (v22)
      {
        sub_10000A2A0(*(v17 + 56) + 32 * v20, v29);

        v23 = swift_dynamicCast();
        v24 = v27;
        v25 = v28;
        if (!v23)
        {
          v24 = 0;
          v25 = 0;
        }

        goto LABEL_24;
      }
    }

    else
    {
    }

LABEL_23:
    v24 = 0;
    v25 = 0;
LABEL_24:
    *a1 = v26;
    a1[1] = v6;
    a1[2] = v13;
    a1[3] = v14;
    a1[4] = v24;
    a1[5] = v25;
    return;
  }

  __break(1u);
}

uint64_t sub_1003FE990(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001005727E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100572800 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6572617774666F73 && a2 == 0xEF6E6F6973726556)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1003FEAC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v34 = a2;
  v3 = sub_10015DA04(&qword_1006C7998);
  v35 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v34 - v4;
  v6 = objc_opt_self();
  v7 = [v6 mainBundle];

  v8 = [v6 mainBundle];
  v9 = [v8 infoDictionary];

  if (v9)
  {
    v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (!*(v10 + 16) || (v11 = sub_1002DF11C(0xD00000000000001ALL, 0x800000010055E950), (v12 & 1) == 0) || (sub_10000A2A0(*(v10 + 56) + 32 * v11, v36), , (swift_dynamicCast() & 1) != 0))
    {
    }
  }

  v13 = [v6 mainBundle];
  v14 = [v13 infoDictionary];

  if (!v14)
  {
    goto LABEL_14;
  }

  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  result = kCFBundleVersionKey;
  if (!kCFBundleVersionKey)
  {
    __break(1u);
    return result;
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v15 + 16))
  {
    v19 = sub_1002DF11C(v17, v18);
    v21 = v20;

    if (v21)
    {
      sub_10000A2A0(*(v15 + 56) + 32 * v19, v36);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
  }

LABEL_14:
  sub_10017CC60(a1, a1[3]);
  sub_1003FE62C();
  v22 = v37;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    return sub_100009F60(a1);
  }

  v36[0] = 0;
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v25 = v24;
  v26 = v23;
  v36[0] = 1;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = v28;
  v37 = v27;
  v36[0] = 2;
  v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v32 = v31;
  (*(v35 + 8))(v5, v3);
  result = sub_100009F60(a1);
  v33 = v34;
  *v34 = v26;
  v33[1] = v25;
  v33[2] = v37;
  v33[3] = v29;
  v33[4] = v30;
  v33[5] = v32;
  return result;
}

uint64_t sub_1003FEED8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_1003FEF34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1003FEFB8()
{
  result = qword_1006C7980;
  if (!qword_1006C7980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7980);
  }

  return result;
}

unint64_t sub_1003FF010()
{
  result = qword_1006C7988;
  if (!qword_1006C7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7988);
  }

  return result;
}

unint64_t sub_1003FF068()
{
  result = qword_1006C7990;
  if (!qword_1006C7990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7990);
  }

  return result;
}

uint64_t type metadata accessor for SmartFolderComposerDataSource()
{
  result = qword_1006C79C8;
  if (!qword_1006C79C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1003FF178@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004007A8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1003FF1B4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004007B8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003FF1F0()
{
  v1 = v0;
  v2 = sub_10015DA04(&qword_1006C7A48);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-v4];
  sub_1004007C8();
  sub_10040081C();
  NSDiffableDataSourceSnapshot.init()();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10064D450);
  v13[15] = 0;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  v13[14] = 1;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  v6 = *(v0 + qword_1006C79B0);
  if (v6)
  {
    v7 = objc_opt_self();
    v8 = v6;
    v9 = [v7 allVisibleHashtagsInContext:v8];
    sub_100356300();
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = v10 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v11)
    {
      v13[11] = 2;
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
    }
  }

  v13[13] = 2;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  if (*(v1 + qword_1006C79A0) == 1)
  {
    v13[12] = 3;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  }

  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
  return (*(v3 + 8))(v5, v2);
}

id sub_1003FF484(char *a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = &a1[OBJC_IVAR___ICTagDetailCell_text];
  *v8 = v5;
  v8[1] = v7;

  if (*&a1[OBJC_IVAR___ICTagDetailCell_attributedText] && v8[1])
  {
    sub_1003FB458(0);
  }

  return [a1 setNeedsUpdateConfiguration];
}

void sub_1003FF590(uint64_t a1, int a2, int a3, id a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    v11 = [a4 title];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = a6;
  }

  v14 = sub_100435D90();
  if (v13)
  {
    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  [v14 setText:v15];

  v16 = (a1 + OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerTextFieldCell_textDidChange);
  v17 = *(a1 + OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerTextFieldCell_textDidChange);
  *v16 = a7;
  v16[1] = a8;
  sub_100010854(a7);
  sub_10000C840(v17);
  v18 = *(a1 + OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerTextFieldCell____lazy_storage___textField);
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 mainBundle];
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 localizedStringForKey:v22 value:0 table:0];

  if (!v23)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = String._bridgeToObjectiveC()();
  }

  [v20 setAccessibilityLabel:v23];
}

id sub_1003FF768(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = &a1[OBJC_IVAR___ICTagContainerCell_selectionDidChange];
  v7 = *&a1[OBJC_IVAR___ICTagContainerCell_selectionDidChange];
  *v6 = a4;
  v6[1] = a5;
  sub_100010854(a4);
  result = sub_10000C840(v7);
  v9 = a1[OBJC_IVAR___ICTagContainerCell_includesAllTagsItem];
  a1[OBJC_IVAR___ICTagContainerCell_includesAllTagsItem] = 0;
  if (v9 == 1)
  {
    result = [a1 setNeedsUpdateConfiguration];
  }

  v10 = a1[OBJC_IVAR___ICTagContainerCell_hasGroupInset];
  a1[OBJC_IVAR___ICTagContainerCell_hasGroupInset] = 1;
  if ((v10 & 1) == 0)
  {
    [a1 setNeedsLayout];
    [a1 layoutIfNeeded];

    return [a1 setNeedsUpdateConfiguration];
  }

  return result;
}

uint64_t sub_1003FF850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = [objc_opt_self() mainBundle];
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 localizedStringForKey:v13 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = sub_100435D90();
  v16 = String._bridgeToObjectiveC()();

  [v15 setPlaceholder:v16];

  v17 = (a1 + OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerCreateTagCell_tagDidChange);
  v18 = *(a1 + OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerCreateTagCell_tagDidChange);
  *v17 = a4;
  v17[1] = a5;
  sub_100010854(a4);
  sub_10000C840(v18);
  v19 = (a1 + OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerCreateTagCell_tagDidEnter);
  v20 = *(a1 + OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerCreateTagCell_tagDidEnter);
  *v19 = a6;
  v19[1] = a7;
  sub_100010854(a6);

  return sub_10000C840(v20);
}

uint64_t sub_1003FF9C8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [objc_opt_self() mainBundle];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 localizedStringForKey:v9 value:0 table:0];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = &a1[OBJC_IVAR____TtC11MobileNotes29SmartFolderComposerSwitchCell_text];
  *v14 = v11;
  v14[1] = v13;

  [a1 setNeedsUpdateConfiguration];
  v15 = &a1[OBJC_IVAR____TtC11MobileNotes29SmartFolderComposerSwitchCell_onDidChange];
  v16 = *&a1[OBJC_IVAR____TtC11MobileNotes29SmartFolderComposerSwitchCell_onDidChange];
  *v15 = a4;
  v15[1] = a5;
  sub_100010854(a4);

  return sub_10000C840(v16);
}

uint64_t sub_1003FFAF0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v3 = *a3;
  if (v3 <= 1)
  {
    if (*a3)
    {
      type metadata accessor for SmartFolderComposerTextFieldCell();
    }

    else
    {
      type metadata accessor for TagDetailCell();
    }

    return UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  }

  if (v3 != 2)
  {
    if (v3 == 3)
    {
      type metadata accessor for SmartFolderComposerCreateTagCell();
    }

    else
    {
      type metadata accessor for SmartFolderComposerSwitchCell();
    }

    return UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  }

  type metadata accessor for TagContainerCell();
  v4 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  v5 = OBJC_IVAR___ICTagContainerCell_allowsContextualMenu;
  *(v4 + OBJC_IVAR___ICTagContainerCell_allowsContextualMenu) = 0;
  v6 = sub_1002B3F04();
  v6[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_allowsContextualMenu] = *(v4 + v5);

  return v4;
}

id sub_1003FFC4C(char *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + qword_1006C79C0);
    v3 = *(Strong + qword_1006C79C0 + 8);
    v5 = Strong;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v6 = &a1[OBJC_IVAR____TtC11MobileNotes13TagHeaderCell_text];
  *v6 = v4;
  *(v6 + 1) = v3;

  return [a1 setNeedsUpdateConfiguration];
}

id sub_1003FFCF8(char *a1)
{
  result = IndexPath.section.getter();
  if (result == 3)
  {
    v3 = [objc_opt_self() mainBundle];
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 localizedStringForKey:v4 value:0 table:0];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = &a1[OBJC_IVAR___ICTagDetailCell_text];
    *v9 = v6;
    v9[1] = v8;

    if (*&a1[OBJC_IVAR___ICTagDetailCell_attributedText] && v9[1])
    {
      sub_1003FB458(0);
    }

    return [a1 setNeedsUpdateConfiguration];
  }

  return result;
}

uint64_t sub_1003FFE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v5 == a3)
  {

    goto LABEL_13;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
LABEL_13:
    type metadata accessor for TagHeaderCell();
    return UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v8 == a3)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for TagDetailCell();
  return UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
}

uint64_t sub_1003FFF8C(char a1, void (*a2)(void))
{
  v5 = sub_10015DA04(&unk_1006C3FD0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16[-v6];
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16[15] = a1;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10018031C(v7);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v12 = *(v2 + qword_1006C79A8);
    if (*(v2 + qword_1006C79B8) == 1)
    {
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v14 = [v12 cellForItemAtIndexPath:isa];

      (*(v9 + 8))(v11, v8);
      if (!v14)
      {
        return 0;
      }
    }

    else
    {
      v14 = dispatch thunk of UICollectionViewDiffableDataSource.collectionView(_:cellForItemAt:)();
      (*(v9 + 8))(v11, v8);
    }

    a2(0);
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_1004001B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10015DA04(&qword_1006C7A48);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29[-v6];
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  IndexPath.init(item:section:)();
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v29[15] = 2;
  v12 = NSDiffableDataSourceSnapshot.numberOfItems(inSection:)();
  (*(v5 + 8))(v7, v4);
  if (v12 >= 2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v2 + qword_1006C79B8) == 1)
    {
      v13 = UICollectionElementKindSectionHeader;

      v14 = *(v2 + qword_1006C79A8);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v16 = [v14 supplementaryViewForElementKind:v13 atIndexPath:isa];

      if (!v16)
      {
        return (*(v9 + 8))(v11, v8);
      }
    }

    else
    {
      v16 = dispatch thunk of UICollectionViewDiffableDataSource.collectionView(_:viewForSupplementaryElementOfKind:at:)();
    }

    type metadata accessor for TagHeaderCell();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v18 = v17;
      v19 = [objc_opt_self() mainBundle];
      v20 = String._bridgeToObjectiveC()();
      v21 = [v19 localizedStringForKey:v20 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10015DA04(&qword_1006C1A30);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_100531E30;
      *(v22 + 56) = &type metadata for Int;
      *(v22 + 64) = &protocol witness table for Int;
      *(v22 + 32) = a1;
      v23 = static String.localizedStringWithFormat(_:_:)();
      v25 = v24;

      v26 = (v2 + qword_1006C79C0);
      *v26 = v23;
      v26[1] = v25;

      v27 = &v18[OBJC_IVAR____TtC11MobileNotes13TagHeaderCell_text];
      *v27 = v23;
      v27[1] = v25;

      [v18 setNeedsUpdateConfiguration];
    }
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100400584()
{
}

uint64_t sub_1004005D8(uint64_t a1)
{
}

void sub_100400638()
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

unint64_t sub_1004006CC()
{
  result = qword_1006C7A28;
  if (!qword_1006C7A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7A28);
  }

  return result;
}

unint64_t sub_100400754()
{
  result = qword_1006C7A40;
  if (!qword_1006C7A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7A40);
  }

  return result;
}

unint64_t sub_1004007A8(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_1004007B8(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_1004007C8()
{
  result = qword_1006C7A50;
  if (!qword_1006C7A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7A50);
  }

  return result;
}

unint64_t sub_10040081C()
{
  result = qword_1006C7A58;
  if (!qword_1006C7A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7A58);
  }

  return result;
}

uint64_t sub_100400870(uint64_t a1)
{
  v2 = sub_10015DA04(&qword_1006BEA90);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  sub_100006038(a1, &v12 - v6, &qword_1006BEA90);
  v8 = type metadata accessor for ManagedEntityContextType();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1 || (sub_100006038(v7, v5, &qword_1006BEA90), LODWORD(result) = (*(v9 + 88))(v5, v8), result == enum case for ManagedEntityContextType.modern(_:)))
  {
    sub_1000073B4(v7, &qword_1006BEA90);
    result = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (v11)
    {
      return result;
    }

    __break(1u);
  }

  if (result != enum case for ManagedEntityContextType.html(_:))
  {
    (*(v9 + 8))(v5, v8);
  }

  sub_1000073B4(v7, &qword_1006BEA90);
  return 0;
}

uint64_t sub_100400A4C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TableEntity();
  result = EntityProperty.projectedValue.getter();
  *a1 = result;
  return result;
}

void *sub_100400AEC(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  v17 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v9 = 0;
    do
    {
      v14 = result;
      for (i = v9; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v11 = a4(0);
        v13 = *(v11 - 8);
        result = (v11 - 8);
        v12 = v13;
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v16, a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * i);
        if (v4)
        {

          return v14;
        }

        if (v16)
        {
          break;
        }

        if (v9 == v6)
        {
          return v14;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = v17;
    }

    while (v9 != v6);
  }

  return result;
}

void sub_100400C78(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v23 = _swiftEmptyArrayStorage;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000054A4(0, &qword_1006BFEC0);
    sub_1001C607C();
    Set.Iterator.init(_cocoa:)();
    v5 = v22[1];
    v6 = v22[2];
    v7 = v22[3];
    v8 = v22[4];
    v9 = v22[5];
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
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

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  while (v5 < 0)
  {
    v18 = __CocoaSet.Iterator.next()();
    if (!v18 || (v21 = v18, sub_1000054A4(0, &qword_1006BFEC0), swift_dynamicCast(), v17 = v22[0], v15 = v8, v16 = v9, !v22[0]))
    {
LABEL_23:
      sub_10019E530();
      return;
    }

LABEL_19:
    v22[0] = v17;
    a1(&v21, v22);
    if (v4)
    {

      sub_10019E530();

      return;
    }

    if (v21)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v8 = v15;
    v9 = v16;
    v5 = v20;
  }

  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_15:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      goto LABEL_23;
    }

    v14 = *(v6 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void *sub_100400F34(uint64_t a1)
{
  v25 = type metadata accessor for String.StandardComparator();
  v2 = *(v25 - 8);
  v3 = __chkstk_darwin(v25);
  v24 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v22 = v18 - v5;
  v23 = sub_10015DA04(&qword_1006C7D00);
  v6 = *(v23 - 8);
  __chkstk_darwin(v23);
  v8 = v18 - v7;
  v9 = *(a1 + 16);
  v26 = _swiftEmptyArrayStorage;
  sub_1001898A4(0, v9, 0);
  v10 = v26;
  v18[0] = a1;
  if (v9)
  {
    v11 = a1 + 32;
    v19 = (v2 + 8);
    v20 = (v2 + 16);
    v18[2] = v6 + 32;

    v21 = v6;
    v12 = v24;
    do
    {
      swift_getKeyPath();
      v13 = v22;
      static String.StandardComparator.localizedStandard.getter();
      v14 = v25;
      (*v20)(v12, v13, v25);
      SortDescriptor.init<A>(_:comparator:order:)();
      (*v19)(v13, v14);
      v26 = v10;
      v16 = v10[2];
      v15 = v10[3];
      if (v16 >= v15 >> 1)
      {
        sub_1001898A4(v15 > 1, v16 + 1, 1);
        v10 = v26;
      }

      v10[2] = v16 + 1;
      (*(v21 + 32))(v10 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v16, v8, v23);
      ++v11;
      --v9;
    }

    while (v9);
  }

  else
  {
  }

  return v10;
}

uint64_t sub_100401204()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = qword_1006BC718;
    swift_unknownObjectRetain();
    if (v1 != -1)
    {
      swift_once();
    }

    v2 = sub_10015DA04(&unk_1006C7A60);
    sub_10002597C(v2, static ICAttachment.hasValidEntityIdentifier);
    v4[0] = v0;
    v4[1] = v4;
    swift_unknownObjectRetain();
    LOBYTE(v0) = Predicate.evaluate(_:)();
    swift_unknownObjectRelease();
  }

  return v0 & 1;
}

uint64_t sub_100401448(uint64_t a1)
{
  swift_getObjectType();
  sub_100006038(a1, v7, &qword_1006BE7A0);
  if (!v8)
  {
    sub_1000073B4(v7, &qword_1006BE7A0);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v4 = 0;
    return v4 & 1;
  }

  if ((static TableID.== infix(_:_:)() & 1) == 0)
  {

    goto LABEL_11;
  }

  if (*&v6[OBJC_IVAR____TtC11MobileNotesP33_3A26B74EEED685164DF9267FE58E345F17TableSearchResult_title] == *(v1 + OBJC_IVAR____TtC11MobileNotesP33_3A26B74EEED685164DF9267FE58E345F17TableSearchResult_title) && *&v6[OBJC_IVAR____TtC11MobileNotesP33_3A26B74EEED685164DF9267FE58E345F17TableSearchResult_title + 8] == *(v1 + OBJC_IVAR____TtC11MobileNotesP33_3A26B74EEED685164DF9267FE58E345F17TableSearchResult_title + 8))
  {

    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

uint64_t sub_10040168C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v24 = a4;
  v4 = sub_100400F34(a1);
  sub_10015DA04(&unk_1006C7A70);
  sub_10015DA04(&qword_1006C7D08);
  v5 = sub_10015DA04(&qword_1006C7D00);
  sub_1000060B4(&qword_1006C7D30, &unk_1006C7A70);
  sub_1000060B4(&qword_1006C7D10, &qword_1006C7D08);
  sub_1000060B4(&qword_1006C7D18, &qword_1006C7D00);
  v6 = &v24;
  v7 = Sequence.sorted<A, B>(using:)();

  v8 = a3;
  if (a3)
  {
    return v7;
  }

  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 & 0xFFFFFFFFFFFFFF8;
    v5 = v7 >> 62;
    if (!(v7 >> 62))
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 >= a2)
      {
        v10 = a2;
      }

      else
      {
        v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (a2)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      if (v9 >= v11)
      {
        goto LABEL_11;
      }

      goto LABEL_44;
    }
  }

  if (v7 < 0)
  {
    v6 = v7;
  }

  else
  {
    v6 = v8;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = _CocoaArrayWrapper.endIndex.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    if (v4 >= a2)
    {
      v21 = a2;
    }

    else
    {
      v21 = v4;
    }

    if (v4 < 0)
    {
      v21 = a2;
    }

    if (a2)
    {
      v11 = v21;
    }

    else
    {
      v11 = 0;
    }

    if (_CocoaArrayWrapper.endIndex.getter() >= v11)
    {
LABEL_11:
      if ((v7 & 0xC000000000000001) != 0 && v11)
      {
        type metadata accessor for TableSearchResult(0);

        v12 = 0;
        do
        {
          v13 = v12 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v12);
          v12 = v13;
        }

        while (v11 != v13);
      }

      else
      {
      }

      if (v5)
      {
        v6 = _CocoaArrayWrapper.subscript.getter();
        v5 = v14;
        v4 = v15;
        v11 = v16;

        if (v11)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v4 = 0;
        v6 = (v7 & 0xFFFFFFFFFFFFFF8);
        v5 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
        v11 = (2 * v11) | 1;
        if (v11)
        {
LABEL_22:
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v18 = swift_dynamicCastClass();
          if (!v18)
          {
            swift_unknownObjectRelease();
            v18 = _swiftEmptyArrayStorage;
          }

          v19 = v18[2];

          if (!__OFSUB__(v11 >> 1, v4))
          {
            if (v19 == (v11 >> 1) - v4)
            {
              v7 = swift_dynamicCastClass();
              swift_unknownObjectRelease();
              if (!v7)
              {
                swift_unknownObjectRelease();
                v7 = _swiftEmptyArrayStorage;
              }

              goto LABEL_28;
            }

            goto LABEL_46;
          }

LABEL_45:
          __break(1u);
LABEL_46:
          swift_unknownObjectRelease_n();
        }
      }

      sub_100375164(v6, v5, v4, v11);
      v7 = v17;
LABEL_28:
      swift_unknownObjectRelease();
      return v7;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004019D8(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, unsigned int (*a5)(char *, uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  v11 = sub_10015DA04(&qword_1006C7D00);
  v13 = sub_1002553A8(sub_100401D2C, 0, a5, v11, &type metadata for Never, a7, &protocol witness table for Never, v12);
  sub_10015DA04(&qword_1006C7D08);
  sub_1000060B4(&qword_1006C7D10, &qword_1006C7D08);
  sub_1000060B4(&qword_1006C7D18, &qword_1006C7D00);
  v14 = v30;
  v15 = Sequence.sorted<A, B>(using:)();

  v16 = a3;
  if (a3)
  {
    return v15;
  }

  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v16 = v15 & 0xFFFFFFFFFFFFFF8;
    a4 = v15 >> 62;
    if (!(v15 >> 62))
    {
      v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17 >= a2)
      {
        v18 = a2;
      }

      else
      {
        v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (a2)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      if (v17 >= v19)
      {
        goto LABEL_11;
      }

      goto LABEL_44;
    }
  }

  if (v15 < 0)
  {
    v14 = v15;
  }

  else
  {
    v14 = v16;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  result = _CocoaArrayWrapper.endIndex.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    if (v13 >= a2)
    {
      v29 = a2;
    }

    else
    {
      v29 = v13;
    }

    if (v13 < 0)
    {
      v29 = a2;
    }

    if (a2)
    {
      v19 = v29;
    }

    else
    {
      v19 = 0;
    }

    if (_CocoaArrayWrapper.endIndex.getter() >= v19)
    {
LABEL_11:
      if ((v15 & 0xC000000000000001) != 0 && v19)
      {
        type metadata accessor for TableSearchResult(0);

        v20 = 0;
        do
        {
          v21 = v20 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v20);
          v20 = v21;
        }

        while (v19 != v21);
      }

      else
      {
      }

      if (a4)
      {
        v14 = _CocoaArrayWrapper.subscript.getter();
        a2 = v22;
        v13 = v23;
        v19 = v24;

        if (v19)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v13 = 0;
        v14 = v15 & 0xFFFFFFFFFFFFFF8;
        a2 = (v15 & 0xFFFFFFFFFFFFFF8) + 32;
        v19 = (2 * v19) | 1;
        if (v19)
        {
LABEL_22:
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v26 = swift_dynamicCastClass();
          if (!v26)
          {
            swift_unknownObjectRelease();
            v26 = _swiftEmptyArrayStorage;
          }

          v27 = v26[2];

          if (!__OFSUB__(v19 >> 1, v13))
          {
            if (v27 == (v19 >> 1) - v13)
            {
              v15 = swift_dynamicCastClass();
              swift_unknownObjectRelease_n();
              if (v15)
              {
                return v15;
              }

              v15 = _swiftEmptyArrayStorage;
LABEL_28:
              swift_unknownObjectRelease();
              return v15;
            }

            goto LABEL_46;
          }

LABEL_45:
          __break(1u);
LABEL_46:
          swift_unknownObjectRelease_n();
        }
      }

      sub_100375164(v14, a2, v13, v19);
      v15 = v25;
      goto LABEL_28;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  __break(1u);
  return result;
}

uint64_t sub_100401D2C()
{
  v0 = type metadata accessor for String.StandardComparator();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v8 - v5;
  swift_getKeyPath();
  static String.StandardComparator.localizedStandard.getter();
  (*(v1 + 16))(v4, v6, v0);
  SortDescriptor.init<A>(_:comparator:order:)();
  return (*(v1 + 8))(v6, v0);
}

void (*VisibleTablesQuery.loggingConfiguration.modify(uint64_t *a1))(void *a1)
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
  return sub_10017D9E0;
}

uint64_t VisibleTablesQuery.entities(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a3;
  return _swift_task_switch(sub_100401F08, 0, 0);
}

uint64_t sub_100401F08()
{
  AppDependency.wrappedValue.getter();
  v1 = v0[2];
  v0[5] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1001927C4;
  v3 = v0[3];

  return sub_10018D004(v3, v1);
}

uint64_t VisibleTablesQuery.suggestedEntities()(uint64_t a1, uint64_t a2)
{
  v2[122] = a2;
  v2[121] = a1;
  v3 = type metadata accessor for TableID();
  v2[123] = v3;
  v2[124] = *(v3 - 8);
  v2[125] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[126] = v4;
  v2[127] = *(v4 - 8);
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  v2[130] = swift_task_alloc();
  v2[131] = swift_task_alloc();
  v5 = sub_10015DA04(&unk_1006C7A60);
  v2[132] = v5;
  v2[133] = *(v5 - 8);
  v2[134] = swift_task_alloc();

  return _swift_task_switch(sub_100402174, 0, 0);
}

uint64_t sub_100402174()
{
  AppDependency.wrappedValue.getter();
  v1 = v0[103];
  v2 = [v1 modernManagedObjectContext];
  v0[135] = v2;

  sub_1000054A4(0, &unk_1006C2C90);
  v3 = static NSObject<>.ic_fetchRequest()();
  v0[136] = v3;
  sub_10015DA04(&unk_1006BD390);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100534950;
  *(v4 + 32) = [swift_getObjCClassFromMetadata() predicateForVisibleAttachmentsInContext:v2];
  sub_1000054A4(0, &qword_1006C2CA0);
  sub_10015DA04(&qword_1006C1A30);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100531E30;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_1001D9030();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  *(v4 + 40) = NSPredicate.init(format:_:)();
  if (qword_1006BC718 != -1)
  {
    swift_once();
  }

  v9 = v0[134];
  v10 = v0[133];
  v11 = v0[132];
  v12 = sub_10002597C(v11, static ICAttachment.hasValidEntityIdentifier);
  (*(v10 + 16))(v9, v12, v11);
  v13 = NSPredicate.init<A>(_:)();
  if (v13)
  {
    *(v4 + 48) = v13;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v18 = [objc_opt_self() andPredicateWithSubpredicates:isa];

    [v3 setPredicate:v18];
    [v3 setFetchLimit:25];
    AppDependency.wrappedValue.getter();
    Logger.init(subsystem:category:)();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "VisibleTablesQuery: suggested entities", v21, 2u);
    }

    v22 = v0[131];
    v23 = v0[127];
    v24 = v0[126];

    v25 = *(v23 + 8);
    v0[137] = v25;
    v25(v22, v24);
    v26 = swift_allocObject();
    v0[138] = v26;
    *(v26 + 16) = v2;
    *(v26 + 24) = v3;
    v27 = v2;
    v28 = v3;
    sub_10015DA04(&unk_1006C7A70);
    swift_asyncLet_begin();
    v15 = sub_100402568;
    v13 = (v0 + 2);
    v14 = v0 + 109;
    v16 = v0 + 82;
  }

  else
  {
    __break(1u);
  }

  return _swift_asyncLet_get_throwing(v13, v14, v15, v16);
}

uint64_t sub_100402568()
{
  *(v1 + 1112) = v0;
  if (v0)
  {
    return _swift_asyncLet_finish(v1 + 16, v1 + 872, sub_100402EF0, v1 + 832);
  }

  else
  {
    return _swift_task_switch(sub_1004025AC, 0, 0);
  }
}

size_t sub_1004025AC()
{
  v38 = v0;
  v1 = *(v0 + 872);

  v2 = sub_10040168C(&off_10064D540, 25, 0, v1);

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    v8 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v4 = v2;
  v37 = _swiftEmptyArrayStorage;
  result = sub_1001897A4(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = *(v0 + 992);
  v8 = v37;
  v9 = v4;
  v35 = v4 & 0xC000000000000001;
  v10 = v4;
  v11 = v3;
  do
  {
    if (v35)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v12 = *(v9 + 8 * v6 + 32);
    }

    v13 = v12;
    (*(v7 + 16))(*(v0 + 1000), v12 + OBJC_IVAR____TtC11MobileNotesP33_3A26B74EEED685164DF9267FE58E345F17TableSearchResult_id, *(v0 + 984));

    v37 = v8;
    v15 = v8[2];
    v14 = v8[3];
    if (v15 >= v14 >> 1)
    {
      sub_1001897A4(v14 > 1, v15 + 1, 1);
      v8 = v37;
    }

    v16 = *(v0 + 1000);
    v17 = *(v0 + 984);
    ++v6;
    v8[2] = v15 + 1;
    (*(v7 + 32))(v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, v16, v17);
    v9 = v10;
  }

  while (v11 != v6);

LABEL_14:
  *(v0 + 1120) = v8;
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = v8[2];

    _os_log_impl(&_mh_execute_header, v18, v19, "VisibleTablesQuery: found %ld suggested attachment(s)", v20, 0xCu);
  }

  else
  {
  }

  (*(v0 + 1096))(*(v0 + 1040), *(v0 + 1008));
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 1096);
  v25 = *(v0 + 1032);
  v26 = *(v0 + 1008);
  if (v23)
  {
    v36 = *(v0 + 1008);
    v34 = *(v0 + 1096);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = v28;
    *v27 = 136315138;
    v29 = Array.description.getter();
    v31 = sub_100009D88(v29, v30, &v37);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v21, v22, "VisibleTablesQuery: matching attachment IDs: %s", v27, 0xCu);
    sub_100009F60(v28);

    v34(v25, v36);
  }

  else
  {

    v24(v25, v26);
  }

  AppDependency.wrappedValue.getter();
  v32 = *(v0 + 920);
  *(v0 + 1128) = v32;
  v33 = swift_task_alloc();
  *(v0 + 1136) = v33;
  *v33 = v0;
  v33[1] = sub_100402A54;

  return sub_10018D004(v8, v32);
}

uint64_t sub_100402A54(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 1144) = v1;

  if (v1)
  {
    v5 = sub_100402CC0;
    v6 = v4 + 16;
    v7 = v4 + 872;
    v8 = v4 + 880;
  }

  else
  {
    *(v4 + 1152) = a1;
    v5 = sub_100402BC8;
    v6 = v4 + 16;
    v7 = v4 + 872;
    v8 = v4 + 928;
  }

  return _swift_asyncLet_finish(v6, v7, v5, v8);
}

uint64_t sub_100402BE4()
{
  v1 = *(v0 + 1088);

  v2 = *(v0 + 8);
  v3 = *(v0 + 1152);

  return v2(v3);
}

uint64_t sub_100402CDC()
{
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "VisibleTablesQuery: error fetching notes: %@", v3, 0xCu);
    sub_1000073B4(v4, &qword_1006C1440);
  }

  v6 = v0[137];
  v7 = v0[136];
  v8 = v1;
  v9 = v0[135];
  v10 = v0[128];
  v11 = v0[126];

  v6(v10, v11);
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_100402F0C()
{
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "VisibleTablesQuery: error fetching notes: %@", v3, 0xCu);
    sub_1000073B4(v4, &qword_1006C1440);
  }

  v6 = v0[137];
  v7 = v0[136];
  v8 = v1;
  v9 = v0[135];
  v10 = v0[128];
  v11 = v0[126];

  v6(v10, v11);
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_100403120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100403144, 0, 0);
}

uint64_t sub_100403144()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = v2;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[6] = v6;
  v7 = sub_10015DA04(&unk_1006C7A70);
  *v6 = v0;
  v6[1] = sub_100261544;
  v8 = v0[2];

  return NSManagedObjectContext.perform<A>(_:)(v8, sub_10040BAE8, v3, v7);
}

unint64_t sub_100403244@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for TableID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000054A4(0, &unk_1006C2C90);
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (!v1)
  {
    v9 = result;
    v31 = v7;
    v32 = 0;
    v33 = a1;
    v35 = _swiftEmptyArrayStorage;
    v10 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
LABEL_23:
      v11 = _CocoaArrayWrapper.endIndex.getter();
      if (v11)
      {
LABEL_4:
        v29 = v6;
        v30 = v3;
        v3 = 0;
        v6 = _swiftEmptyArrayStorage;
        v28 = (v4 + 4);
        v4 = &selRef_handleToggleBlockQuote_;
        do
        {
          v12 = v3;
          while (1)
          {
            if ((v9 & 0xC000000000000001) != 0)
            {
              v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v12 >= *(v10 + 16))
              {
                goto LABEL_22;
              }

              v13 = *(v9 + 8 * v12 + 32);
            }

            v14 = v13;
            v3 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            if ([v13 isVisibleTable])
            {
              break;
            }

            ++v12;
            if (v3 == v11)
            {
              goto LABEL_25;
            }
          }

          v27 = type metadata accessor for TableSearchResult(0);
          v15 = objc_allocWithZone(v27);
          v16 = v29;
          ICTableObject<>.tableEntityIdentifier.getter();
          (*v28)(&v15[OBJC_IVAR____TtC11MobileNotesP33_3A26B74EEED685164DF9267FE58E345F17TableSearchResult_id], v16, v30);
          v17 = [v14 title];
          if (v17)
          {
            v18 = v17;
            v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v25 = v20;
            v26 = v19;

            v22 = v25;
            v21 = v26;
          }

          else
          {

            v21 = 0;
            v22 = 0xE000000000000000;
          }

          v23 = &v15[OBJC_IVAR____TtC11MobileNotesP33_3A26B74EEED685164DF9267FE58E345F17TableSearchResult_title];
          *v23 = v21;
          *(v23 + 1) = v22;
          v34.receiver = v15;
          v34.super_class = v27;
          objc_msgSendSuper2(&v34, "init");
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v6 = v35;
        }

        while (v3 != v11);
        goto LABEL_25;
      }
    }

    else
    {
      v11 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_4;
      }
    }

    v6 = _swiftEmptyArrayStorage;
LABEL_25:

    *v33 = v6;
  }

  return result;
}

uint64_t sub_100403538(uint64_t a1)
{
  v3 = *(v1 + 8);
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return _swift_task_switch(sub_10040355C, 0, 0);
}

uint64_t sub_10040355C()
{
  AppDependency.wrappedValue.getter();
  v1 = v0[2];
  v0[5] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_100187AB0;
  v3 = v0[3];

  return sub_10018D004(v3, v1);
}

uint64_t sub_10040361C(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_1001927BC;

  return VisibleTablesQuery.suggestedEntities()(v3, v4);
}

uint64_t sub_1004036B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001B837C();
  *v5 = v2;
  v5[1] = sub_10000A600;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t VisibleTablesQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100403790, 0, 0);
}

uint64_t sub_100403790()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10015DA04(&unk_1006C7A88);
  v3 = *(type metadata accessor for VisibleTablesQuery.Comparator(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[6] = v5;
  *(v5 + 16) = xmmword_100531E30;
  v6 = (v5 + v4);
  *v6 = swift_getKeyPath();
  v6[1] = v2;
  v6[2] = v1;
  swift_storeEnumTagMultiPayload();

  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1002BA0BC;
  v8 = v0[4];
  v9 = v0[5];

  return VisibleTablesQuery.entities(matching:mode:sortedBy:limit:)(v5, 0, _swiftEmptyArrayStorage, 0, 1, v8, v9);
}

uint64_t VisibleTablesQuery.entities(matching:mode:sortedBy:limit:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 1192) = a7;
  *(v7 + 1184) = a6;
  *(v7 + 1593) = a5;
  *(v7 + 1176) = a4;
  *(v7 + 1168) = a3;
  *(v7 + 1592) = a2;
  *(v7 + 1160) = a1;
  v8 = type metadata accessor for Logger();
  *(v7 + 1200) = v8;
  *(v7 + 1208) = *(v8 - 8);
  *(v7 + 1216) = swift_task_alloc();
  *(v7 + 1224) = swift_task_alloc();
  *(v7 + 1232) = swift_task_alloc();
  *(v7 + 1240) = swift_task_alloc();
  v9 = sub_10015DA04(&unk_1006C7A60);
  *(v7 + 1248) = v9;
  *(v7 + 1256) = *(v9 - 8);
  *(v7 + 1264) = swift_task_alloc();
  v10 = type metadata accessor for TableID();
  *(v7 + 1272) = v10;
  *(v7 + 1280) = *(v10 - 8);
  *(v7 + 1288) = swift_task_alloc();
  *(v7 + 1296) = swift_task_alloc();
  v11 = type metadata accessor for VisibleTablesQuery.Comparator(0);
  *(v7 + 1304) = v11;
  *(v7 + 1312) = *(v11 - 8);
  *(v7 + 1320) = swift_task_alloc();
  *(v7 + 1328) = swift_task_alloc();
  *(v7 + 1336) = swift_task_alloc();
  *(v7 + 1344) = swift_task_alloc();
  sub_10015DA04(&qword_1006BEA90);
  *(v7 + 1352) = swift_task_alloc();
  *(v7 + 1360) = swift_task_alloc();

  return _swift_task_switch(sub_100403BB4, 0, 0);
}

uint64_t sub_100403BB4()
{
  v129 = v0;
  v1 = *(v0 + 1360);
  v2 = *(v0 + 1352);
  v125 = *(v0 + 1168);
  v3 = *(v0 + 1592);
  AppDependency.wrappedValue.getter();
  v4 = *(v0 + 1096);
  *(v0 + 1368) = [v4 modernManagedObjectContext];

  v5 = enum case for ManagedEntityContextType.modern(_:);
  v124 = enum case for ManagedEntityContextType.modern(_:);
  v6 = type metadata accessor for ManagedEntityContextType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 104);
  v8(v1, v5, v6);
  v9 = *(v7 + 56);
  v9(v1, 0, 1, v6);
  sub_100006038(v1, v2, &qword_1006BEA90);

  *(v0 + 1376) = sub_100409DD0(v10, v3 & 1, v2, 0);
  sub_1000073B4(v1, &qword_1006BEA90);
  v8(v1, v124, v6);
  v9(v1, 0, 1, v6);
  sub_100006038(v1, v2, &qword_1006BEA90);

  *(v0 + 1384) = sub_100409DD0(v11, v3 & 1, v2, 1);
  sub_1000073B4(v1, &qword_1006BEA90);
  if (*(v125 + 16))
  {
    v12 = *(v0 + 1168);
    v13 = sub_10015DA04(&qword_1006C7A98);
    v14 = sub_1000060B4(&qword_1006C7AA0, &qword_1006C7A98);
    v15 = swift_allocObject();
    v15[2] = v12;
    v15[3] = sub_1001B78EC;
    v15[4] = 0;
    v15[5] = sub_1002C2CF8;
    v15[6] = 0;
    v15[7] = sub_1002C2D08;
    v15[8] = 0;
  }

  else
  {
    v13 = sub_10015DA04(&qword_1006C7AA8);
    v14 = sub_1000060B4(&qword_1006C7AB0, &qword_1006C7AA8);
    v15 = &off_10064D568;
  }

  v16 = *(v0 + 1160);
  *(v0 + 720) = v13;
  *(v0 + 728) = v14;
  *(v0 + 696) = v15;
  sub_10017CC60((v0 + 696), v13);
  v17 = sub_1000054A4(0, &qword_1006C13E8);
  *(v0 + 1392) = v17;
  *(v0 + 1400) = sub_1002553A8(sub_1004083E8, 0, v13, v17, &type metadata for Never, v14, &protocol witness table for Never, v18);
  v19 = *(v16 + 16);
  *(v0 + 1408) = v19;
  v20 = _swiftEmptyArrayStorage;
  if (v19)
  {
    v21 = *(v0 + 1336);
    v22 = *(v0 + 1312);
    v23 = *(v0 + 1160) + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v24 = *(v22 + 72);
    do
    {
      v25 = *(v0 + 1344);
      v26 = *(v0 + 1336);
      sub_10040B48C(v23, v25, type metadata accessor for VisibleTablesQuery.Comparator);
      sub_10040B48C(v25, v26, type metadata accessor for VisibleTablesQuery.Comparator);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v28 = *(v0 + 1336);
      if (EnumCaseMultiPayload == 3)
      {
        v29 = *(v21 + 8);
        v30 = HIBYTE(v29) & 0xF;
        if ((v29 & 0x2000000000000000) == 0)
        {
          v30 = *v28 & 0xFFFFFFFFFFFFLL;
        }

        if (v30)
        {
          v31 = *(v0 + 1344);
          v32 = objc_opt_self();
          v33 = String._bridgeToObjectiveC()();

          v34 = [v32 prefixMatchingQueryStringForSearchString:v33];

          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = v36;

          sub_10040B4F4(v31, type metadata accessor for VisibleTablesQuery.Comparator);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_1001CAE70(0, *(v20 + 2) + 1, 1, v20);
          }

          v39 = *(v20 + 2);
          v38 = *(v20 + 3);
          if (v39 >= v38 >> 1)
          {
            v20 = sub_1001CAE70((v38 > 1), v39 + 1, 1, v20);
          }

          *(v20 + 2) = v39 + 1;
          v40 = &v20[16 * v39];
          *(v40 + 4) = v35;
          *(v40 + 5) = v37;
          goto LABEL_8;
        }
      }

      else
      {
        sub_10040B4F4(v28, type metadata accessor for VisibleTablesQuery.Comparator);
      }

      sub_10040B4F4(*(v0 + 1344), type metadata accessor for VisibleTablesQuery.Comparator);
LABEL_8:
      v23 += v24;
      --v19;
    }

    while (v19);
  }

  v41 = *(v20 + 2);
  if (v41)
  {
    sub_100189444(0, v41, 0);
    v42 = (v20 + 40);
    do
    {
      v43 = *(v42 - 1);
      v44 = *v42;
      v127 = 40;
      v128 = 0xE100000000000000;

      v45._countAndFlagsBits = v43;
      v45._object = v44;
      String.append(_:)(v45);
      v46._countAndFlagsBits = 41;
      v46._object = 0xE100000000000000;
      String.append(_:)(v46);

      v48 = _swiftEmptyArrayStorage[2];
      v47 = _swiftEmptyArrayStorage[3];
      if (v48 >= v47 >> 1)
      {
        sub_100189444((v47 > 1), v48 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v48 + 1;
      v49 = &_swiftEmptyArrayStorage[2 * v48];
      v49[4] = 40;
      v49[5] = 0xE100000000000000;
      v42 += 2;
      --v41;
    }

    while (v41);
    v50 = *(v0 + 1592);

    *(v0 + 1104) = _swiftEmptyArrayStorage;
    v127 = 32;
    v128 = 0xE100000000000000;
    if (v50)
    {
      v51 = 31868;
    }

    else
    {
      v51 = 9766;
    }

    v52 = 0xE200000000000000;
    String.append(_:)(*&v51);

    v53._countAndFlagsBits = 32;
    v53._object = 0xE100000000000000;
    String.append(_:)(v53);
    sub_10015DA04(&qword_1006C13F0);
    sub_1000060B4(&qword_1006C13F8, &qword_1006C13F0);
    v54 = BidirectionalCollection<>.joined(separator:)();
    v56 = v55;

    *(v0 + 1416) = v56;
    sub_1000054A4(0, &unk_1006C1400);
    v57 = swift_task_alloc();
    *(v0 + 1424) = v57;
    *v57 = v0;
    v57[1] = sub_1004049FC;
    v58 = _swiftEmptyArrayStorage;
    v59 = v54;
    v60 = v56;

    return static ICSearchQueryOperation.searchResults(queryString:rankingQueries:)(v59, v60, v58);
  }

  *(v0 + 1512) = 0;
  if (*(v0 + 1408))
  {
    v61 = 0;
    v62 = *(v0 + 1320);
    v63 = *(v0 + 1312);
    v64 = *(v0 + 1160) + ((*(v63 + 80) + 32) & ~*(v63 + 80));
    v65 = *(v63 + 72);
    v66 = _swiftEmptyArrayStorage;
    while (1)
    {
      v68 = *(v0 + 1328);
      v69 = *(v0 + 1320);
      sub_10040B48C(v64, v68, type metadata accessor for VisibleTablesQuery.Comparator);
      sub_10040B48C(v68, v69, type metadata accessor for VisibleTablesQuery.Comparator);
      v70 = swift_getEnumCaseMultiPayload();
      v71 = *(v0 + 1320);
      if (v70 == 3)
      {
        v72 = *(v62 + 8);
        v73 = HIBYTE(v72) & 0xF;
        if ((v72 & 0x2000000000000000) == 0)
        {
          v73 = *v71 & 0xFFFFFFFFFFFFLL;
        }

        if (v73)
        {
          v74 = *(v0 + 1328);
          v75 = objc_opt_self();
          v76 = String._bridgeToObjectiveC()();

          v77 = [v75 prefixMatchingQueryStringForSearchString:v76];

          v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v80 = v79;

          sub_10040B4F4(v74, type metadata accessor for VisibleTablesQuery.Comparator);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = sub_1001CAE70(0, *(v66 + 2) + 1, 1, v66);
          }

          v82 = *(v66 + 2);
          v81 = *(v66 + 3);
          if (v82 >= v81 >> 1)
          {
            v66 = sub_1001CAE70((v81 > 1), v82 + 1, 1, v66);
          }

          *(v66 + 2) = v82 + 1;
          v83 = &v66[16 * v82];
          *(v83 + 4) = v78;
          *(v83 + 5) = v80;
          goto LABEL_34;
        }
      }

      else
      {
        sub_10040B4F4(v71, type metadata accessor for VisibleTablesQuery.Comparator);
      }

      sub_10040B4F4(*(v0 + 1328), type metadata accessor for VisibleTablesQuery.Comparator);
LABEL_34:
      v67 = *(v0 + 1408);
      ++v61;
      v64 += v65;
      if (v61 == v67)
      {
        v84 = *(v66 + 2);

        v85 = v84 < v67;
        goto LABEL_47;
      }
    }
  }

  v85 = 1;
LABEL_47:
  *(v0 + 1594) = v85;
  v86 = *(v0 + 1368);
  sub_1000054A4(0, &unk_1006C2C90);
  v87 = static NSObject<>.ic_fetchRequest()();
  *(v0 + 1520) = v87;
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v87 setSortDescriptors:isa];

  sub_10015DA04(&unk_1006BD390);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_100531E10;
  *(v89 + 32) = [swift_getObjCClassFromMetadata() predicateForVisibleAttachmentsInContext:v86];
  sub_1000054A4(0, &qword_1006C2CA0);
  sub_10015DA04(&qword_1006C1A30);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_100531E30;
  v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v93 = v92;
  *(v90 + 56) = &type metadata for String;
  *(v90 + 64) = sub_1001D9030();
  *(v90 + 32) = v91;
  *(v90 + 40) = v93;
  *(v89 + 40) = NSPredicate.init(format:_:)();
  if (qword_1006BC718 != -1)
  {
    swift_once();
  }

  v94 = *(v0 + 1264);
  v95 = *(v0 + 1256);
  v96 = *(v0 + 1248);
  v97 = sub_10002597C(v96, static ICAttachment.hasValidEntityIdentifier);
  (*(v95 + 16))(v94, v97, v96);
  v59 = NSPredicate.init<A>(_:)();
  if (!v59)
  {
    __break(1u);
    return static ICSearchQueryOperation.searchResults(queryString:rankingQueries:)(v59, v60, v58);
  }

  v98 = v59;
  v99 = *(v0 + 1376);
  v100 = *(v0 + 1593);

  *(v89 + 48) = v98;
  *(v89 + 56) = v99;
  v101 = v99;
  v102 = Array._bridgeToObjectiveC()().super.isa;

  v103 = [objc_opt_self() andPredicateWithSubpredicates:v102];

  [v87 setPredicate:v103];
  if ((v100 & 1) == 0)
  {
    [v87 setFetchLimit:*(v0 + 1176)];
  }

  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();

  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v104, v105))
  {
    v126 = *(v0 + 1240);
    v106 = *(v0 + 1208);
    v107 = *(v0 + 1200);
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v127 = v109;
    *v108 = 136315138;
    v110 = Array.description.getter();
    v112 = sub_100009D88(v110, v111, &v127);

    *(v108 + 4) = v112;
    _os_log_impl(&_mh_execute_header, v104, v105, "VisibleTablesQuery: performing with filters %s", v108, 0xCu);
    sub_100009F60(v109);

    v113 = *(v106 + 8);
    v113(v126, v107);
  }

  else
  {
    v114 = *(v0 + 1240);
    v115 = *(v0 + 1208);
    v116 = *(v0 + 1200);

    v113 = *(v115 + 8);
    v113(v114, v116);
  }

  *(v0 + 1528) = v113;
  v117 = *(v0 + 1376);
  v118 = *(v0 + 1368);
  v119 = swift_allocObject();
  *(v0 + 1536) = v119;
  v119[2] = v118;
  v119[3] = v87;
  v119[4] = v117;
  v120 = v118;
  v121 = v117;
  v122 = v87;
  *(v0 + 1544) = sub_10015DA04(&unk_1006C7A70);
  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 16, v0 + 1120, sub_1004067D0, v0 + 656);
}

uint64_t sub_1004049FC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1432) = a1;
  *(v3 + 1440) = v1;

  if (v1)
  {

    v4 = sub_1004073F8;
  }

  else
  {
    v4 = sub_100404B4C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100404B4C()
{
  v73 = v0;
  v1 = *(v0 + 1432);
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    *(v0 + 1448) = type metadata accessor for MainActor();
    *(v0 + 1456) = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1004052E4, v3, v2);
  }

  *(v0 + 1512) = 0;
  if (*(v0 + 1408))
  {
    v4 = 0;
    v5 = *(v0 + 1320);
    v6 = *(v0 + 1312);
    v7 = *(v0 + 1160) + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    v9 = _swiftEmptyArrayStorage;
    while (1)
    {
      v11 = *(v0 + 1328);
      v12 = *(v0 + 1320);
      sub_10040B48C(v7, v11, type metadata accessor for VisibleTablesQuery.Comparator);
      sub_10040B48C(v11, v12, type metadata accessor for VisibleTablesQuery.Comparator);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v14 = *(v0 + 1320);
      if (EnumCaseMultiPayload == 3)
      {
        v15 = *(v5 + 8);
        v16 = HIBYTE(v15) & 0xF;
        if ((v15 & 0x2000000000000000) == 0)
        {
          v16 = *v14 & 0xFFFFFFFFFFFFLL;
        }

        if (v16)
        {
          v17 = *(v0 + 1328);
          v18 = objc_opt_self();
          v19 = String._bridgeToObjectiveC()();

          v20 = [v18 prefixMatchingQueryStringForSearchString:v19];

          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v22;

          sub_10040B4F4(v17, type metadata accessor for VisibleTablesQuery.Comparator);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1001CAE70(0, *(v9 + 2) + 1, 1, v9);
          }

          v25 = *(v9 + 2);
          v24 = *(v9 + 3);
          if (v25 >= v24 >> 1)
          {
            v9 = sub_1001CAE70((v24 > 1), v25 + 1, 1, v9);
          }

          *(v9 + 2) = v25 + 1;
          v26 = &v9[16 * v25];
          *(v26 + 4) = v21;
          *(v26 + 5) = v23;
          goto LABEL_11;
        }
      }

      else
      {
        sub_10040B4F4(v14, type metadata accessor for VisibleTablesQuery.Comparator);
      }

      sub_10040B4F4(*(v0 + 1328), type metadata accessor for VisibleTablesQuery.Comparator);
LABEL_11:
      v10 = *(v0 + 1408);
      ++v4;
      v7 += v8;
      if (v4 == v10)
      {
        v27 = *(v9 + 2);

        v28 = v27 < v10;
        goto LABEL_24;
      }
    }
  }

  v28 = 1;
LABEL_24:
  *(v0 + 1594) = v28;
  v29 = *(v0 + 1368);
  sub_1000054A4(0, &unk_1006C2C90);
  v30 = static NSObject<>.ic_fetchRequest()();
  *(v0 + 1520) = v30;
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v30 setSortDescriptors:isa];

  sub_10015DA04(&unk_1006BD390);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100531E10;
  *(v32 + 32) = [swift_getObjCClassFromMetadata() predicateForVisibleAttachmentsInContext:v29];
  sub_1000054A4(0, &qword_1006C2CA0);
  sub_10015DA04(&qword_1006C1A30);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100531E30;
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;
  *(v33 + 56) = &type metadata for String;
  *(v33 + 64) = sub_1001D9030();
  *(v33 + 32) = v34;
  *(v33 + 40) = v36;
  *(v32 + 40) = NSPredicate.init(format:_:)();
  if (qword_1006BC718 != -1)
  {
    swift_once();
  }

  v37 = *(v0 + 1264);
  v38 = *(v0 + 1256);
  v39 = *(v0 + 1248);
  v40 = sub_10002597C(v39, static ICAttachment.hasValidEntityIdentifier);
  (*(v38 + 16))(v37, v40, v39);
  v41 = NSPredicate.init<A>(_:)();
  if (v41)
  {
    v45 = v41;
    v46 = *(v0 + 1376);
    v47 = *(v0 + 1593);

    *(v32 + 48) = v45;
    *(v32 + 56) = v46;
    v48 = v46;
    v49 = Array._bridgeToObjectiveC()().super.isa;

    v50 = [objc_opt_self() andPredicateWithSubpredicates:v49];

    [v30 setPredicate:v50];
    if ((v47 & 1) == 0)
    {
      [v30 setFetchLimit:*(v0 + 1176)];
    }

    AppDependency.wrappedValue.getter();
    Logger.init(subsystem:category:)();

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v71 = *(v0 + 1240);
      v53 = *(v0 + 1208);
      v54 = *(v0 + 1200);
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v72 = v56;
      *v55 = 136315138;
      v57 = Array.description.getter();
      v59 = sub_100009D88(v57, v58, &v72);

      *(v55 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v51, v52, "VisibleTablesQuery: performing with filters %s", v55, 0xCu);
      sub_100009F60(v56);

      v60 = *(v53 + 8);
      v60(v71, v54);
    }

    else
    {
      v61 = *(v0 + 1240);
      v62 = *(v0 + 1208);
      v63 = *(v0 + 1200);

      v60 = *(v62 + 8);
      v60(v61, v63);
    }

    *(v0 + 1528) = v60;
    v64 = *(v0 + 1376);
    v65 = *(v0 + 1368);
    v66 = swift_allocObject();
    *(v0 + 1536) = v66;
    v66[2] = v65;
    v66[3] = v30;
    v66[4] = v64;
    v67 = v65;
    v68 = v64;
    v69 = v30;
    *(v0 + 1544) = sub_10015DA04(&unk_1006C7A70);
    swift_asyncLet_begin();
    v43 = sub_1004067D0;
    v41 = v0 + 16;
    v42 = v0 + 1120;
    v44 = v0 + 656;
  }

  else
  {
    __break(1u);
  }

  return _swift_asyncLet_get_throwing(v41, v42, v43, v44);
}

uint64_t sub_1004052E4()
{
  v19 = v0;
  v1 = *(v0 + 1368);

  v2 = [objc_opt_self() sharedIndexer];
  sub_1000054A4(0, &unk_1006C64D0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_10015DA04(&unk_1006BD390);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100534670;
  *(v4 + 32) = v1;
  sub_1000054A4(0, &unk_1006C2CF0);
  v5 = v1;
  v6 = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v2 objectsForSearchableItems:isa inContexts:v6];

  sub_10015DA04(&unk_1006C1410);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = _swiftEmptyArrayStorage;
  v18 = _swiftEmptyArrayStorage;
  if (v8 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v17 + 1464) = v9;
    if (!i)
    {
      goto LABEL_24;
    }

    v11 = 0;
    if ((v8 & 0xC000000000000001) != 0)
    {
      break;
    }

LABEL_5:
    if (v11 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      swift_unknownObjectRetain();
      v12 = v11 + 1;
      if (!__OFADD__(v11, 1))
      {
        goto LABEL_7;
      }

LABEL_27:
      __break(1u);
    }

    __break(1u);
LABEL_29:
    ;
  }

  while (1)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_27;
    }

LABEL_7:
    *(v17 + 1112) = &OBJC_PROTOCOL___ICTableObject;
    v13 = swift_dynamicCastObjCProtocolConditional();
    if (!v13)
    {
      goto LABEL_14;
    }

    v9 = v13;
    swift_getObjectType();
    sub_1000054A4(0, &qword_1006C2D00);
    if (!swift_dynamicCastMetatype())
    {
      goto LABEL_14;
    }

    swift_getObjectType();
    swift_unknownObjectRetain();
    if (sub_100401204() & 1) == 0 || (objc_opt_self(), (v14 = swift_dynamicCastObjCClass()) == 0) || ![v14 isVisibleTable] || (objc_msgSend(v9, "isDeletedOrInTrash"))
    {
      swift_unknownObjectRelease();
LABEL_14:
      swift_unknownObjectRelease();
      if (v12 == i)
      {
        break;
      }

      goto LABEL_15;
    }

    v15 = objc_allocWithZone(type metadata accessor for TableSearchResult(0));
    sub_10040B188(v9, v15);
    swift_unknownObjectRelease();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v9 = &v18;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    *(v17 + 1464) = v18;
    if (v12 == i)
    {
      break;
    }

LABEL_15:
    ++v11;
    if ((v8 & 0xC000000000000001) == 0)
    {
      goto LABEL_5;
    }
  }

LABEL_24:

  return _swift_task_switch(sub_10040569C, 0, 0);
}

uint64_t sub_10040569C()
{
  v72 = v0;
  if (static EntityQueryComparatorMode.== infix(_:_:)())
  {

    *(v0 + 1472) = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100405E14, v2, v1);
  }

  *(v0 + 1512) = *(v0 + 1464);
  if (*(v0 + 1408))
  {
    v3 = 0;
    v4 = *(v0 + 1320);
    v5 = *(v0 + 1312);
    v6 = *(v0 + 1160) + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      v10 = *(v0 + 1328);
      v11 = *(v0 + 1320);
      sub_10040B48C(v6, v10, type metadata accessor for VisibleTablesQuery.Comparator);
      sub_10040B48C(v10, v11, type metadata accessor for VisibleTablesQuery.Comparator);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v13 = *(v0 + 1320);
      if (EnumCaseMultiPayload == 3)
      {
        v14 = *(v4 + 8);
        v15 = HIBYTE(v14) & 0xF;
        if ((v14 & 0x2000000000000000) == 0)
        {
          v15 = *v13 & 0xFFFFFFFFFFFFLL;
        }

        if (v15)
        {
          v16 = *(v0 + 1328);
          v17 = objc_opt_self();
          v18 = String._bridgeToObjectiveC()();

          v19 = [v17 prefixMatchingQueryStringForSearchString:v18];

          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;

          sub_10040B4F4(v16, type metadata accessor for VisibleTablesQuery.Comparator);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1001CAE70(0, *(v8 + 2) + 1, 1, v8);
          }

          v24 = *(v8 + 2);
          v23 = *(v8 + 3);
          if (v24 >= v23 >> 1)
          {
            v8 = sub_1001CAE70((v23 > 1), v24 + 1, 1, v8);
          }

          *(v8 + 2) = v24 + 1;
          v25 = &v8[16 * v24];
          *(v25 + 4) = v20;
          *(v25 + 5) = v22;
          goto LABEL_9;
        }
      }

      else
      {
        sub_10040B4F4(v13, type metadata accessor for VisibleTablesQuery.Comparator);
      }

      sub_10040B4F4(*(v0 + 1328), type metadata accessor for VisibleTablesQuery.Comparator);
LABEL_9:
      v9 = *(v0 + 1408);
      ++v3;
      v6 += v7;
      if (v3 == v9)
      {
        v26 = *(v8 + 2);

        v27 = v26 < v9;
        goto LABEL_22;
      }
    }
  }

  v27 = 1;
LABEL_22:
  *(v0 + 1594) = v27;
  v28 = *(v0 + 1368);
  sub_1000054A4(0, &unk_1006C2C90);
  v29 = static NSObject<>.ic_fetchRequest()();
  *(v0 + 1520) = v29;
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v29 setSortDescriptors:isa];

  sub_10015DA04(&unk_1006BD390);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100531E10;
  *(v31 + 32) = [swift_getObjCClassFromMetadata() predicateForVisibleAttachmentsInContext:v28];
  sub_1000054A4(0, &qword_1006C2CA0);
  sub_10015DA04(&qword_1006C1A30);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100531E30;
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;
  *(v32 + 56) = &type metadata for String;
  *(v32 + 64) = sub_1001D9030();
  *(v32 + 32) = v33;
  *(v32 + 40) = v35;
  *(v31 + 40) = NSPredicate.init(format:_:)();
  if (qword_1006BC718 != -1)
  {
    swift_once();
  }

  v36 = *(v0 + 1264);
  v37 = *(v0 + 1256);
  v38 = *(v0 + 1248);
  v39 = sub_10002597C(v38, static ICAttachment.hasValidEntityIdentifier);
  (*(v37 + 16))(v36, v39, v38);
  v40 = NSPredicate.init<A>(_:)();
  if (v40)
  {
    v44 = v40;
    v45 = *(v0 + 1376);
    v46 = *(v0 + 1593);

    *(v31 + 48) = v44;
    *(v31 + 56) = v45;
    v47 = v45;
    v48 = Array._bridgeToObjectiveC()().super.isa;

    v49 = [objc_opt_self() andPredicateWithSubpredicates:v48];

    [v29 setPredicate:v49];
    if ((v46 & 1) == 0)
    {
      [v29 setFetchLimit:*(v0 + 1176)];
    }

    AppDependency.wrappedValue.getter();
    Logger.init(subsystem:category:)();

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v70 = *(v0 + 1240);
      v52 = *(v0 + 1208);
      v53 = *(v0 + 1200);
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v71 = v55;
      *v54 = 136315138;
      v56 = Array.description.getter();
      v58 = sub_100009D88(v56, v57, &v71);

      *(v54 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v50, v51, "VisibleTablesQuery: performing with filters %s", v54, 0xCu);
      sub_100009F60(v55);

      v59 = *(v52 + 8);
      v59(v70, v53);
    }

    else
    {
      v60 = *(v0 + 1240);
      v61 = *(v0 + 1208);
      v62 = *(v0 + 1200);

      v59 = *(v61 + 8);
      v59(v60, v62);
    }

    *(v0 + 1528) = v59;
    v63 = *(v0 + 1376);
    v64 = *(v0 + 1368);
    v65 = swift_allocObject();
    *(v0 + 1536) = v65;
    v65[2] = v64;
    v65[3] = v29;
    v65[4] = v63;
    v66 = v64;
    v67 = v63;
    v68 = v29;
    *(v0 + 1544) = sub_10015DA04(&unk_1006C7A70);
    swift_asyncLet_begin();
    v42 = sub_1004067D0;
    v40 = v0 + 16;
    v41 = v0 + 1120;
    v43 = v0 + 656;
  }

  else
  {
    __break(1u);
  }

  return _swift_asyncLet_get_throwing(v40, v41, v42, v43);
}

uint64_t sub_100405E14()
{
  v48 = v0;
  v1 = *(v0 + 1464);

  v47 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v4 = 0;
    v44 = v1 & 0xFFFFFFFFFFFFFF8;
    v45 = v1 & 0xC000000000000001;
    v43 = *(v0 + 1464) + 32;
    v5 = &qword_1006BE7A0;
    while (1)
    {
      if (v45)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v44 + 16))
        {
          goto LABEL_30;
        }

        v6 = *(v43 + 8 * v4);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      *(v0 + 928) = type metadata accessor for TableSearchResult(0);
      *(v0 + 904) = v7;
      sub_100006038(v0 + 904, v0 + 936, v5);
      v9 = *(v0 + 960);
      if (v9)
      {
        v10 = sub_10017CC60((v0 + 936), *(v0 + 960));
        v11 = *(v9 - 8);
        v12 = v5;
        v13 = i;
        v14 = swift_task_alloc();
        (*(v11 + 16))(v14, v10, v9);
        v15 = v7;
        v16 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v11 + 8))(v14, v9);
        i = v13;
        v5 = v12;

        sub_100009F60(v0 + 936);
      }

      else
      {
        v17 = v7;
        v16 = 0;
      }

      v1 = [*(v0 + 1384) evaluateWithObject:v16];
      swift_unknownObjectRelease();
      sub_1000073B4(v0 + 904, v5);
      if (v1)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = &v47;
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v4;
      if (v8 == i)
      {
        v3 = v47;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

LABEL_18:
  v18 = *(v0 + 1593);
  v19 = *(v0 + 1176);

  v20 = *(v0 + 720);
  v21 = *(v0 + 728);
  v22 = sub_10017CC60((v0 + 696), v20);
  *(v0 + 1144) = v3;
  v23 = sub_10015DA04(&unk_1006C7A70);
  v24 = sub_1000060B4(&qword_1006C3700, &unk_1006C7A70);
  v25 = sub_1004019D8(v22, v19, v18 & 1, v23, v20, v24, v21);

  if (v25 >> 62)
  {
    v26 = _CocoaArrayWrapper.endIndex.getter();
    if (v26)
    {
      goto LABEL_20;
    }

LABEL_33:

    v32 = _swiftEmptyArrayStorage;
    goto LABEL_34;
  }

  v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
    goto LABEL_33;
  }

LABEL_20:
  v47 = _swiftEmptyArrayStorage;
  v27 = sub_1001897A4(0, v26 & ~(v26 >> 63), 0);
  if (v26 < 0)
  {
    __break(1u);
    return _swift_task_switch(v27, v28, v29);
  }

  v30 = 0;
  v31 = *(v0 + 1280);
  v32 = v47;
  v33 = v25;
  v46 = v25 & 0xC000000000000001;
  v34 = v25;
  v35 = v26;
  do
  {
    if (v46)
    {
      v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v36 = *(v33 + 8 * v30 + 32);
    }

    v37 = v36;
    (*(v31 + 16))(*(v0 + 1296), v36 + OBJC_IVAR____TtC11MobileNotesP33_3A26B74EEED685164DF9267FE58E345F17TableSearchResult_id, *(v0 + 1272));

    v47 = v32;
    v39 = v32[2];
    v38 = v32[3];
    if (v39 >= v38 >> 1)
    {
      sub_1001897A4(v38 > 1, v39 + 1, 1);
      v32 = v47;
    }

    v40 = *(v0 + 1296);
    v41 = *(v0 + 1272);
    ++v30;
    v32[2] = v39 + 1;
    (*(v31 + 32))(v32 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v39, v40, v41);
    v33 = v34;
  }

  while (v35 != v30);

LABEL_34:
  *(v0 + 1480) = v32;
  v27 = sub_1004062F8;
  v28 = 0;
  v29 = 0;

  return _swift_task_switch(v27, v28, v29);
}

uint64_t sub_1004062F8()
{
  AppDependency.wrappedValue.getter();
  v1 = v0[144];
  v0[186] = v1;
  v2 = swift_task_alloc();
  v0[187] = v2;
  *v2 = v0;
  v2[1] = sub_1004063B8;
  v3 = v0[185];

  return sub_10018D004(v3, v1);
}

uint64_t sub_1004063B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[121] = v2;
  v4[122] = a1;
  v4[123] = v1;
  v4[188] = v1;

  v5 = v3[186];
  if (v1)
  {

    v6 = sub_100406678;
  }

  else
  {

    v6 = sub_100406520;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100406520()
{
  v1 = *(v0 + 1384);
  v2 = *(v0 + 1376);

  v5 = *(v0 + 976);
  sub_100009F60(v0 + 696);
  sub_10000C840(0);

  v3 = *(v0 + 8);

  return v3(v5);
}

uint64_t sub_100406678()
{
  v1 = *(v0 + 1384);
  v2 = *(v0 + 1376);

  sub_100009F60(v0 + 696);
  sub_10000C840(0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1004067D0()
{
  *(v1 + 1552) = v0;
  if (v0)
  {

    return _swift_asyncLet_finish(v1 + 16, v1 + 1120, sub_100407550, v1 + 736);
  }

  else
  {

    return _swift_task_switch(sub_10040687C, 0, 0);
  }
}

size_t sub_10040687C()
{
  v51 = v0;
  v1 = *(v0 + 1120);
  v2 = _swiftEmptyArrayStorage;
  if (*(v0 + 1594) == 1)
  {

    v2 = v1;
  }

  v3 = *(v0 + 1512);

  if ((static EntityQueryComparatorMode.== infix(_:_:)() & 1) != 0 && v3)
  {
    v4 = *(v0 + 1512);

    v50 = v4;

    sub_1002DCA98(v1);
    v5 = sub_1002707F0(v4);

    v2 = sub_10037517C(v5);
  }

  v6 = *(v0 + 1544);
  v7 = *(v0 + 1593);
  v8 = *(v0 + 1176);

  v9 = *(v0 + 720);
  v10 = *(v0 + 728);
  v11 = sub_10017CC60((v0 + 696), v9);
  *(v0 + 1128) = v2;
  v12 = sub_1000060B4(&qword_1006C3700, &unk_1006C7A70);
  v13 = sub_1004019D8(v11, v8, v7 & 1, v6, v9, v12, v10);

  v14 = v13;
  if (v13 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
    v14 = v13;
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_18:

    v20 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_18;
  }

LABEL_8:
  v16 = v14;
  v50 = _swiftEmptyArrayStorage;
  result = sub_1001897A4(0, v15 & ~(v15 >> 63), 0);
  if (v15 < 0)
  {
    __break(1u);
    return result;
  }

  v18 = 0;
  v19 = *(v0 + 1280);
  v20 = v50;
  v21 = v16;
  v48 = v16 & 0xC000000000000001;
  v22 = v16;
  v23 = v15;
  do
  {
    if (v48)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v24 = *(v21 + 8 * v18 + 32);
    }

    v25 = v24;
    (*(v19 + 16))(*(v0 + 1288), v24 + OBJC_IVAR____TtC11MobileNotesP33_3A26B74EEED685164DF9267FE58E345F17TableSearchResult_id, *(v0 + 1272));

    v50 = v20;
    v27 = v20[2];
    v26 = v20[3];
    if (v27 >= v26 >> 1)
    {
      sub_1001897A4(v26 > 1, v27 + 1, 1);
      v20 = v50;
    }

    v28 = *(v0 + 1288);
    v29 = *(v0 + 1272);
    ++v18;
    v20[2] = v27 + 1;
    (*(v19 + 32))(v20 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v27, v28, v29);
    v21 = v22;
  }

  while (v23 != v18);

LABEL_19:
  *(v0 + 1560) = v20;
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 134217984;
    *(v32 + 4) = v20[2];

    _os_log_impl(&_mh_execute_header, v30, v31, "VisibleTablesQuery: found %ld matching tables(s)", v32, 0xCu);
  }

  else
  {
  }

  (*(v0 + 1528))(*(v0 + 1232), *(v0 + 1200));
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v0 + 1528);
  if (v35)
  {
    v49 = *(v0 + 1528);
    v47 = *(v0 + 1224);
    v37 = *(v0 + 1200);
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v50 = v39;
    *v38 = 136315138;
    v40 = Array.description.getter();
    v42 = sub_100009D88(v40, v41, &v50);

    *(v38 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v33, v34, "VisibleTablesQuery: matching note IDs: %s", v38, 0xCu);
    sub_100009F60(v39);

    v49(v47, v37);
  }

  else
  {
    v43 = *(v0 + 1224);
    v44 = *(v0 + 1200);

    v36(v43, v44);
  }

  AppDependency.wrappedValue.getter();
  v45 = *(v0 + 1136);
  *(v0 + 1568) = v45;
  v46 = swift_task_alloc();
  *(v0 + 1576) = v46;
  *v46 = v0;
  v46[1] = sub_100406E3C;

  return sub_10018D004(v20, v45);
}

uint64_t sub_100406E3C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[129] = v2;
  v4[130] = a1;
  v4[131] = v1;
  v4[198] = v1;

  if (v1)
  {
    v5 = sub_10040713C;
    v6 = v4 + 2;
    v7 = v4 + 140;
    v8 = v4 + 124;
  }

  else
  {
    v5 = sub_100406FAC;
    v6 = v4 + 2;
    v7 = v4 + 140;
    v8 = v4 + 132;
  }

  return _swift_asyncLet_finish(v6, v7, v5, v8);
}

uint64_t sub_100406FC8()
{
  v1 = *(v0 + 1520);
  v2 = *(v0 + 1384);
  v3 = *(v0 + 1376);

  v6 = *(v0 + 1040);
  sub_100009F60(v0 + 696);
  sub_10000C840(&unk_1005496C8);

  v4 = *(v0 + 8);

  return v4(v6);
}

uint64_t sub_100407158()
{
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "VisibleTablesQuery: error fetching notes: %@", v3, 0xCu);
    sub_1000073B4(v4, &qword_1006C1440);
  }

  v6 = *(v0 + 1528);
  v7 = *(v0 + 1520);
  v8 = *(v0 + 1216);
  v9 = *(v0 + 1200);

  v6(v8, v9);
  swift_willThrow();

  v10 = *(v0 + 1384);
  v11 = *(v0 + 1376);

  sub_100009F60(v0 + 696);
  sub_10000C840(&unk_1005496C8);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1004073F8()
{
  v1 = *(v0 + 1384);
  v2 = *(v0 + 1376);

  sub_100009F60(v0 + 696);
  sub_10000C840(0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10040756C()
{
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "VisibleTablesQuery: error fetching notes: %@", v3, 0xCu);
    sub_1000073B4(v4, &qword_1006C1440);
  }

  v6 = *(v0 + 1528);
  v7 = *(v0 + 1520);
  v8 = *(v0 + 1216);
  v9 = *(v0 + 1200);

  v6(v8, v9);
  swift_willThrow();

  v10 = *(v0 + 1384);
  v11 = *(v0 + 1376);

  sub_100009F60(v0 + 696);
  sub_10000C840(&unk_1005496C8);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10040780C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *v3;
  return _swift_task_switch(sub_100407838, 0, 0);
}

uint64_t sub_100407838()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_10015DA04(&unk_1006C7A88);
  v3 = *(type metadata accessor for VisibleTablesQuery.Comparator(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[7] = v5;
  *(v5 + 16) = xmmword_100531E30;
  v6 = (v5 + v4);
  *v6 = swift_getKeyPath();
  v6[1] = v2;
  v6[2] = v1;
  swift_storeEnumTagMultiPayload();

  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1002BEE5C;
  v8 = v0[5];
  v9 = v0[6];

  return VisibleTablesQuery.entities(matching:mode:sortedBy:limit:)(v5, 0, _swiftEmptyArrayStorage, 0, 1, v8, v9);
}

uint64_t sub_1004079C0()
{
  v0 = sub_10015DA04(&qword_1006C7AB8);
  sub_100025918(v0, static VisibleTablesQuery.sortingOptions);
  sub_10002597C(v0, static VisibleTablesQuery.sortingOptions);
  type metadata accessor for TableEntity();
  sub_10040B6EC(&qword_1006BCCE0, type metadata accessor for TableEntity);
  return EntityQuerySortingOptions.init(content:)();
}

uint64_t sub_100407A7C()
{
  v0 = sub_10015DA04(&unk_1006C7CE8);
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v12 - v5;
  swift_getKeyPath();
  sub_10040B6EC(&qword_1006BCCE0, type metadata accessor for TableEntity);
  sub_1000060B4(&qword_1006C2FA0, &unk_1006C1870);
  EntityQuerySortableByProperty.init<A>(_:)();
  type metadata accessor for TableEntity();
  static EntityQuerySortingOptionsBuilder.buildExpression(_:)();
  v7 = *(v1 + 8);
  v7(v4, v0);
  sub_10015DA04(&qword_1006C7CF8);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100531E30;
  (*(v1 + 16))(v9 + v8, v6, v0);
  v10 = static EntityQuerySortingOptionsBuilder.buildBlock(_:)();

  v7(v6, v0);
  return v10;
}

uint64_t VisibleTablesQuery.sortingOptions.unsafeMutableAddressor()
{
  if (qword_1006BC918 != -1)
  {
    swift_once();
  }

  v0 = sub_10015DA04(&qword_1006C7AB8);

  return sub_10002597C(v0, static VisibleTablesQuery.sortingOptions);
}

uint64_t static VisibleTablesQuery.sortingOptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC918 != -1)
  {
    swift_once();
  }

  v2 = sub_10015DA04(&qword_1006C7AB8);
  v3 = sub_10002597C(v2, static VisibleTablesQuery.sortingOptions);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100407DEC()
{
  v0 = sub_10015DA04(&unk_1006C7AC0);
  sub_100025918(v0, static VisibleTablesQuery.properties);
  sub_10002597C(v0, static VisibleTablesQuery.properties);
  type metadata accessor for TableEntity();
  type metadata accessor for VisibleTablesQuery.Comparator(0);
  sub_10040B6EC(&qword_1006BCCE0, type metadata accessor for TableEntity);
  return EntityQueryProperties.init(properties:)();
}

uint64_t sub_100407EC0()
{
  sub_10015DA04(&qword_1006C7CC8);
  swift_getKeyPath();
  EntityQueryProperty.__allocating_init<>(_:comparators:)();
  sub_10040B6EC(&qword_1006BCCE0, type metadata accessor for TableEntity);
  v0 = static EntityQueryPropertiesBuilder.buildExpression(_:)();

  sub_10015DA04(&unk_1006BD390);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100534670;
  *(v1 + 32) = v0;
  type metadata accessor for TableEntity();
  type metadata accessor for VisibleTablesQuery.Comparator(0);

  v2 = static EntityQueryPropertiesBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_100408000()
{
  v0 = sub_10015DA04(&qword_1006C7CD0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  sub_10015DA04(&qword_1006C7CD8);
  swift_allocObject();
  ContainsComparator.init<>(mappingTransform:)();
  type metadata accessor for TableEntity();
  sub_10040B6EC(&qword_1006BCCE0, type metadata accessor for TableEntity);
  static EntityQueryComparatorsBuilder.buildExpression(_:)();

  sub_10015DA04(&qword_1006C7CE0);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100531E30;
  (*(v1 + 16))(v5 + v4, v3, v0);
  sub_10015DA04(&unk_1006C1870);
  type metadata accessor for VisibleTablesQuery.Comparator(0);
  sub_10001CAF8();
  v6 = static EntityQueryComparatorsBuilder.buildBlock(_:)();

  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_100408254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  a3[1] = a1;
  a3[2] = a2;
  type metadata accessor for VisibleTablesQuery.Comparator(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t VisibleTablesQuery.properties.unsafeMutableAddressor()
{
  if (qword_1006BC920 != -1)
  {
    swift_once();
  }

  v0 = sub_10015DA04(&unk_1006C7AC0);

  return sub_10002597C(v0, static VisibleTablesQuery.properties);
}

uint64_t static VisibleTablesQuery.properties.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC920 != -1)
  {
    swift_once();
  }

  v2 = sub_10015DA04(&unk_1006C7AC0);
  v3 = sub_10002597C(v2, static VisibleTablesQuery.properties);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1004083E8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for String.StandardComparator();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = sub_10015DA04(&qword_1006C7D20);
  __chkstk_darwin(v9 - 8);
  sub_1000054A4(0, &qword_1006C13E8);
  swift_getKeyPath();
  static String.StandardComparator.localizedStandard.getter();
  (*(v3 + 16))(v6, v8, v2);
  SortDescriptor.init<A>(_:comparator:order:)();
  (*(v3 + 8))(v8, v2);
  sub_1000054A4(0, &unk_1006C2C90);
  result = NSSortDescriptor.init<A>(_:)();
  *a1 = result;
  return result;
}

uint64_t sub_1004085CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1004085F0, 0, 0);
}

uint64_t sub_1004085F0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = v3;
  v6 = v2;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[7] = v8;
  v9 = sub_10015DA04(&unk_1006C7A70);
  *v8 = v0;
  v8[1] = sub_1002BFD74;
  v10 = v0[2];

  return NSManagedObjectContext.perform<A>(_:)(v10, sub_10040BA80, v4, v9);
}

unint64_t sub_100408704@<X0>(void *a1@<X2>, objc_class **a2@<X8>)
{
  v41 = a2;
  v4 = type metadata accessor for TableID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000054A4(0, &unk_1006C2C90);
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (!v2)
  {
    v10 = result;
    v11 = v41;
    v43 = v8;
    v38 = v4;
    v39 = 0;
    v37 = v7;
    v51 = _swiftEmptyArrayStorage;
    v12 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
LABEL_31:
      v13 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v13 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v43;
    v15 = v11;
    if (v13)
    {
      v16 = 0;
      v46 = v10 & 0xC000000000000001;
      v36 = (v5 + 32);
      v40 = _swiftEmptyArrayStorage;
      v42 = a1;
      v44 = v13;
      v45 = v12;
      do
      {
        v5 = v16;
        while (1)
        {
          if (v46)
          {
            v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v5 >= *(v12 + 16))
            {
              goto LABEL_30;
            }

            v25 = *(v10 + 8 * v5 + 32);
          }

          v11 = v25;
          v16 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

          if ([v25 isVisibleTable])
          {
            v50[3] = v14;
            v50[0] = v11;
            sub_100006038(v50, v48, &qword_1006BE7A0);
            v26 = v49;
            if (v49)
            {
              v17 = sub_10017CC60(v48, v49);
              v18 = v10;
              v19 = *(v26 - 8);
              __chkstk_darwin(v17);
              v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v19 + 16))(v21);
              v22 = v11;
              v23 = _bridgeAnythingToObjectiveC<A>(_:)();
              (*(v19 + 8))(v21, v26);
              v10 = v18;
              a1 = v42;
              v14 = v43;
              sub_100009F60(v48);
            }

            else
            {
              v27 = v11;
              v23 = 0;
            }

            v24 = [a1 evaluateWithObject:v23];
            swift_unknownObjectRelease();
            sub_1000073B4(v50, &qword_1006BE7A0);
            v13 = v44;
            v12 = v45;
            if (v24)
            {
              break;
            }
          }

          ++v5;
          if (v16 == v13)
          {
            v15 = v41;
            goto LABEL_27;
          }
        }

        v40 = type metadata accessor for TableSearchResult(0);
        v28 = objc_allocWithZone(v40);
        v29 = v37;
        ICTableObject<>.tableEntityIdentifier.getter();
        (*v36)(&v28[OBJC_IVAR____TtC11MobileNotesP33_3A26B74EEED685164DF9267FE58E345F17TableSearchResult_id], v29, v38);
        v30 = [v11 title];
        if (v30)
        {
          v31 = v30;
          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v33;
        }

        else
        {

          v32 = 0;
          v34 = 0xE000000000000000;
        }

        v35 = &v28[OBJC_IVAR____TtC11MobileNotesP33_3A26B74EEED685164DF9267FE58E345F17TableSearchResult_title];
        *v35 = v32;
        v35[1] = v34;
        v47.receiver = v28;
        v47.super_class = v40;
        objc_msgSendSuper2(&v47, "init");
        v11 = &v51;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v13 = v44;
        if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v40 = v51;
        v15 = v41;
        v12 = v45;
      }

      while (v16 != v13);
    }

    else
    {
      v40 = _swiftEmptyArrayStorage;
    }

LABEL_27:

    *v15 = v40;
  }

  return result;
}

uint64_t sub_100408B90(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 16) = a1;
  v14 = *v6;
  v13 = v6[1];
  v15 = swift_task_alloc();
  *(v7 + 24) = v15;
  *v15 = v7;
  v15[1] = sub_100189314;

  return VisibleTablesQuery.entities(matching:mode:sortedBy:limit:)(a2, a3 & 1, a4, a5, a6 & 1, v14, v13);
}

void sub_100408C6C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 title];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

id sub_100408CD4(uint64_t a1, int a2)
{
  v77 = a2;
  v4 = type metadata accessor for ICQueryType();
  v80 = *(v4 - 8);
  v81 = v4;
  __chkstk_darwin(v4);
  v6 = &v76[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for FolderEntity();
  v79 = *(v7 - 8);
  __chkstk_darwin(v7);
  v78 = &v76[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10015DA04(&qword_1006BEA90);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v76[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v76[-v13];
  v15 = sub_10015DA04(&qword_1006C7D28);
  v16 = *(__chkstk_darwin(v15 - 8) + 56);
  v17 = v2;
  v19 = &v76[-v18];
  sub_10040B48C(v17, &v76[-v18], type metadata accessor for VisibleTablesQuery.Comparator);
  v20 = v16;
  v21 = v19 + v16;
  v22 = a1;
  sub_100006038(a1, v21, &qword_1006BEA90);
  type metadata accessor for VisibleTablesQuery.Comparator(0);
  v82 = v19;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      v26 = v20;
      if (EnumCaseMultiPayload != 9 && EnumCaseMultiPayload != 10)
      {
        v58 = v82;
        sub_100192680(v82, v85);
        sub_10001FA64((v58 + 40), v84);
        sub_10001FA64((v58 + 72), v83);
        v59 = v86;
        v60 = v87;
        sub_10017CC60(v85, v86);
        v61 = sub_1001B76E8(a1, v59, v60);
        v63 = v62;
        sub_10015DA04(&qword_1006BE850);
        v64 = swift_allocObject();
        *(v64 + 16) = xmmword_100539C20;
        *(v64 + 32) = v61;
        *(v64 + 40) = v63;
        *(v64 + 88) = &type metadata for String;
        *(v64 + 56) = &type metadata for String;
        *(v64 + 64) = v61;
        *(v64 + 72) = v63;
        sub_10000A2A0(v84, v64 + 96);
        *(v64 + 152) = &type metadata for String;
        *(v64 + 128) = v61;
        *(v64 + 136) = v63;
        sub_10000A2A0(v83, v64 + 160);
        swift_bridgeObjectRetain_n();
        v65 = String._bridgeToObjectiveC()();
        isa = Array._bridgeToObjectiveC()().super.isa;

        v27 = [objc_opt_self() predicateWithFormat:v65 argumentArray:isa];

        sub_100009F60(v83);
        goto LABEL_25;
      }
    }

    else
    {
      v26 = v20;
      if (EnumCaseMultiPayload == 6)
      {
LABEL_23:
        v50 = v82;
        sub_100192680(v82, v85);
        sub_10001FA64((v50 + 40), v84);
        v51 = v86;
        v52 = v87;
        sub_10017CC60(v85, v86);
        v53 = sub_1001B76E8(a1, v51, v52);
        v55 = v54;
        sub_10015DA04(&qword_1006BE850);
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_100535E30;
        *(v56 + 56) = &type metadata for String;
        *(v56 + 32) = v53;
        *(v56 + 40) = v55;
        sub_10000A2A0(v84, v56 + 64);
        v35 = String._bridgeToObjectiveC()();
        v36.super.isa = Array._bridgeToObjectiveC()().super.isa;

        v37 = [objc_opt_self() predicateWithFormat:v35 argumentArray:v36.super.isa];
        goto LABEL_24;
      }
    }

    v28 = v82;
    sub_100192680(v82, v85);
    sub_10001FA64((v28 + 40), v84);
    v29 = v86;
    v30 = v87;
    sub_10017CC60(v85, v86);
    v31 = sub_1001B76E8(a1, v29, v30);
    v33 = v32;
    sub_10015DA04(&qword_1006BE850);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_100539C40;
    *(v34 + 32) = v31;
    *(v34 + 40) = v33;
    *(v34 + 88) = &type metadata for String;
    *(v34 + 56) = &type metadata for String;
    *(v34 + 64) = v31;
    *(v34 + 72) = v33;
    sub_10000A2A0(v84, v34 + 96);

    v35 = String._bridgeToObjectiveC()();
    v36.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v37 = [objc_opt_self() predicateWithFormat:v35 argumentArray:v36.super.isa];
LABEL_24:
    v27 = v37;

LABEL_25:
    sub_100009F60(v84);
    sub_100009F60(v85);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload > 2)
  {
    v26 = v20;
    if (EnumCaseMultiPayload == 3)
    {
      sub_10040B4F4(v82, type metadata accessor for VisibleTablesQuery.Comparator);
      v27 = 0;
      goto LABEL_26;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v38 = *(v82 + 1);
      v39 = *(v82 + 2);
      v40 = sub_100400870(v22);
      v42 = v41;
      sub_10015DA04(&qword_1006BE850);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_100535E30;
      *(v43 + 32) = v40;
      *(v43 + 40) = v42;
      *(v43 + 88) = &type metadata for String;
      *(v43 + 56) = &type metadata for String;
      *(v43 + 64) = v38;
      *(v43 + 72) = v39;
      v44 = String._bridgeToObjectiveC()();
      v45 = Array._bridgeToObjectiveC()().super.isa;

      v27 = [objc_opt_self() predicateWithFormat:v44 argumentArray:v45];

      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v46 = *v82;
      sub_10015DA04(&qword_1006BE850);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_100531E30;
      *(v47 + 56) = sub_10015DA04(&unk_1006C3060);
      *(v47 + 32) = v46;
      v48 = String._bridgeToObjectiveC()();
      v49 = Array._bridgeToObjectiveC()().super.isa;

      v27 = [objc_opt_self() predicateWithFormat:v48 argumentArray:v49];

      v26 = v20;
      goto LABEL_26;
    }

    v24 = type metadata accessor for ManagedEntityContextType();
    v25 = *(v24 - 8);
    v26 = v20;
    if ((*(v25 + 48))(v82 + v20, 1, v24) != 1)
    {
      sub_100006038(v82 + v20, v12, &qword_1006BEA90);
      if ((*(v25 + 88))(v12, v24) == enum case for ManagedEntityContextType.html(_:))
      {
        v27 = [objc_opt_self() predicateWithValue:0];
        (*(v80 + 8))(v82, v81);
        goto LABEL_26;
      }

      (*(v25 + 8))(v12, v24);
    }

    v70 = v80;
    v69 = v81;
    (*(v80 + 32))(v6, v82, v81);
    v27 = ICQueryType.predicate.getter();
    (*(v70 + 8))(v6, v69);
    goto LABEL_26;
  }

  if ((*(v79 + 48))(v82, 1, v7) == 1)
  {
    v27 = 0;
    v26 = v20;
  }

  else
  {
    v26 = v20;
    if ((v77 & 1) == 0)
    {
      v67 = type metadata accessor for ManagedEntityContextType();
      v68 = *(v67 - 8);
      if ((*(v68 + 48))(v82 + v20, 1, v67) != 1)
      {
        sub_100006038(v82 + v20, v14, &qword_1006BEA90);
        if ((*(v68 + 88))(v14, v67) != enum case for ManagedEntityContextType.html(_:))
        {
          (*(v68 + 8))(v14, v67);
        }
      }
    }

    v71 = v78;
    sub_1002C3358(v82, v78);
    sub_1000054A4(0, &qword_1006C2CA0);
    sub_10015DA04(&qword_1006C1A30);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_100531E30;
    v73 = FolderID.managedIdentifier.getter();
    v75 = v74;
    *(v72 + 56) = &type metadata for String;
    *(v72 + 64) = sub_1001D9030();
    *(v72 + 32) = v73;
    *(v72 + 40) = v75;
    v27 = NSPredicate.init(format:_:)();
    sub_10040B4F4(v71, type metadata accessor for FolderEntity);
  }

LABEL_26:
  sub_1000073B4(v82 + v26, &qword_1006BEA90);
  return v27;
}

id sub_100409DD0(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v67 = a4;
  v62 = a2;
  v63 = a1;
  v75 = type metadata accessor for ICQueryType();
  v69 = *(v75 - 8);
  v5 = __chkstk_darwin(v75);
  v61 = (&v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __chkstk_darwin(v5);
  v74 = &v60 - v8;
  __chkstk_darwin(v7);
  v73 = &v60 - v9;
  v72 = type metadata accessor for VisibleTablesQuery.Comparator(0);
  v66 = *(v72 - 8);
  v10 = __chkstk_darwin(v72);
  v68 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v60 - v12;
  v14 = type metadata accessor for ManagedEntityContextType();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10015DA04(&unk_1006C3040);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v60 - v20;
  v22 = sub_10015DA04(&qword_1006BEA90);
  v23 = __chkstk_darwin(v22 - 8);
  v71 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v60 - v25;
  (*(v15 + 104))(&v60 - v25, enum case for ManagedEntityContextType.html(_:), v14);
  (*(v15 + 56))(v26, 0, 1, v14);
  v27 = *(v19 + 56);
  v70 = a3;
  sub_100006038(a3, v21, &qword_1006BEA90);
  sub_100006038(v26, &v21[v27], &qword_1006BEA90);
  v28 = *(v15 + 48);
  if (v28(v21, 1, v14) == 1)
  {
    sub_1000073B4(v26, &qword_1006BEA90);
    if (v28(&v21[v27], 1, v14) == 1)
    {
      v29 = sub_1000073B4(v21, &qword_1006BEA90);
      v30 = v62;
      goto LABEL_23;
    }

    goto LABEL_6;
  }

  sub_100006038(v21, v71, &qword_1006BEA90);
  if (v28(&v21[v27], 1, v14) == 1)
  {
    sub_1000073B4(v26, &qword_1006BEA90);
    (*(v15 + 8))(v71, v14);
LABEL_6:
    sub_1000073B4(v21, &unk_1006C3040);
    v31 = v68;
    goto LABEL_7;
  }

  (*(v15 + 32))(v17, &v21[v27], v14);
  sub_10040B6EC(&qword_1006C1A20, &type metadata accessor for ManagedEntityContextType);
  v45 = v71;
  v46 = dispatch thunk of static Equatable.== infix(_:_:)();
  v47 = *(v15 + 8);
  v47(v17, v14);
  sub_1000073B4(v26, &qword_1006BEA90);
  v47(v45, v14);
  v29 = sub_1000073B4(v21, &qword_1006BEA90);
  v31 = v68;
  v30 = v62;
  if (v46)
  {
LABEL_23:
    __chkstk_darwin(v29);
    *(&v60 - 2) = v70;
    *(&v60 - 8) = v67 & 1;
    sub_100400AEC(sub_10040BAA0, (&v60 - 4), v63, type metadata accessor for VisibleTablesQuery.Comparator);

    sub_1000054A4(0, &qword_1006C2CA0);
    v48.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v49 = objc_opt_self();
    if (v30)
    {
      v50 = [v49 orPredicateWithSubpredicates:v48.super.isa];
    }

    else
    {
      v50 = [v49 andPredicateWithSubpredicates:v48.super.isa];
    }

    goto LABEL_35;
  }

LABEL_7:
  v76 = _swiftEmptyArrayStorage;
  v32 = *(v63 + 16);
  if (v32)
  {
    v33 = v63 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
    v34 = *(v66 + 72);
    v71 = (v69 + 32);
    v65 = v69 + 8;
    v66 = v69 + 16;
    v35 = _swiftEmptyArrayStorage;
    v64 = _swiftEmptyArrayStorage;
    do
    {
      sub_10040B48C(v33, v13, type metadata accessor for VisibleTablesQuery.Comparator);
      sub_10040B48C(v13, v31, type metadata accessor for VisibleTablesQuery.Comparator);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v36 = *v71;
        v37 = v73;
        v38 = v75;
        (*v71)(v73, v31, v75);
        (*v66)(v74, v37, v38);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_1001CB244(0, *(v35 + 2) + 1, 1, v35);
        }

        v40 = *(v35 + 2);
        v39 = *(v35 + 3);
        if (v40 >= v39 >> 1)
        {
          v35 = sub_1001CB244(v39 > 1, v40 + 1, 1, v35);
        }

        v41 = v69;
        v42 = v75;
        (*(v69 + 8))(v73, v75);
        sub_10040B4F4(v13, type metadata accessor for VisibleTablesQuery.Comparator);
        *(v35 + 2) = v40 + 1;
        v36(&v35[((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v40], v74, v42);
        v31 = v68;
      }

      else
      {
        sub_10040B4F4(v31, type metadata accessor for VisibleTablesQuery.Comparator);
        v43 = sub_100408CD4(v70, v67 & 1);
        if (v43)
        {
          v44 = v43;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          sub_10040B4F4(v13, type metadata accessor for VisibleTablesQuery.Comparator);
          v64 = v76;
        }

        else
        {
          sub_10040B4F4(v13, type metadata accessor for VisibleTablesQuery.Comparator);
        }
      }

      v33 += v34;
      --v32;
    }

    while (v32);
  }

  else
  {

    v35 = _swiftEmptyArrayStorage;
  }

  v51 = v62;
  if (*(v35 + 2))
  {
    v52 = swift_allocObject();
    *(v52 + 16) = v35;
    v53 = v61;
    *v61 = v52;
    v54 = v69;
    v55 = v75;
    (*(v69 + 104))(v53, enum case for ICQueryType.and(_:), v75);
    ICQueryType.predicate.getter();
    (*(v54 + 8))(v53, v55);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
  }

  sub_1000054A4(0, &qword_1006C2CA0);
  v48.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v56 = objc_opt_self();
  v57 = &selRef_orPredicateWithSubpredicates_;
  if ((v51 & 1) == 0)
  {
    v57 = &selRef_andPredicateWithSubpredicates_;
  }

  v50 = [v56 *v57];
LABEL_35:
  v58 = v50;

  sub_1000073B4(v70, &qword_1006BEA90);
  return v58;
}

uint64_t VisibleTablesQuery.Comparator.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ICQueryType();
  v58 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FolderEntity();
  v57 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v57 - v9;
  v11 = sub_10015DA04(&unk_1006BF9D0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v57 - v15;
  v17 = type metadata accessor for VisibleTablesQuery.Comparator(0);
  __chkstk_darwin(v17);
  v19 = (&v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10040B48C(v1, v19, type metadata accessor for VisibleTablesQuery.Comparator);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        sub_100192680(v19, v63);
        sub_10001FA64((v19 + 40), v62);
        *&v61[0] = 0;
        *(&v61[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(19);
        v59[0] = v61[0];
        v25 = 0x5472657461657267;
        v26 = 0xEC000000286E6168;
      }

      else
      {
        if (EnumCaseMultiPayload != 10)
        {
          sub_100192680(v19, v63);
          sub_10001FA64((v19 + 40), v62);
          sub_10001FA64((v19 + 72), v61);
          *&v59[0] = 0;
          *(&v59[0] + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(18);
          v60 = v59[0];
          v48._countAndFlagsBits = 0x286E656577746562;
          v48._object = 0xE800000000000000;
          String.append(_:)(v48);
          sub_10015DA04(&qword_1006C7AD0);
          _print_unlocked<A, B>(_:_:)();
          v49._countAndFlagsBits = 8236;
          v49._object = 0xE200000000000000;
          String.append(_:)(v49);
          sub_10000A2A0(v62, v59);
          v50._countAndFlagsBits = String.init<A>(reflecting:)();
          String.append(_:)(v50);

          v51._countAndFlagsBits = 8236;
          v51._object = 0xE200000000000000;
          String.append(_:)(v51);
          sub_10000A2A0(v61, v59);
          v52._countAndFlagsBits = String.init<A>(reflecting:)();
          String.append(_:)(v52);

          v24 = v60;
          sub_100009F60(v61);
          goto LABEL_28;
        }

        sub_100192680(v19, v63);
        sub_10001FA64((v19 + 40), v62);
        *&v61[0] = 0;
        *(&v61[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(28);
        v59[0] = v61[0];
        v25 = 0xD000000000000015;
        v26 = 0x80000001005699F0;
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      sub_100192680(v19, v63);
      sub_10001FA64((v19 + 40), v62);
      *&v61[0] = 0;
      *(&v61[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(18);
      v59[0] = v61[0];
      v25 = 0x6C61757145746F6ELL;
      v26 = 0xEB00000000286F54;
    }

    else if (EnumCaseMultiPayload == 7)
    {
      sub_100192680(v19, v63);
      sub_10001FA64((v19 + 40), v62);
      *&v61[0] = 0;
      *(&v61[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      v59[0] = v61[0];
      v25 = 0x6E6168547373656CLL;
      v26 = 0xE900000000000028;
    }

    else
    {
      sub_100192680(v19, v63);
      sub_10001FA64((v19 + 40), v62);
      *&v61[0] = 0;
      *(&v61[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(25);
      v59[0] = v61[0];
      v26 = 0x8000000100569A10;
      v25 = 0xD000000000000012;
    }

LABEL_27:
    String.append(_:)(*&v25);
    sub_10015DA04(&qword_1006C7AD0);
    _print_unlocked<A, B>(_:_:)();
    v44._countAndFlagsBits = 8236;
    v44._object = 0xE200000000000000;
    String.append(_:)(v44);
    sub_10000A2A0(v62, v61);
    v45._countAndFlagsBits = String.init<A>(reflecting:)();
    String.append(_:)(v45);

    v46._countAndFlagsBits = 41;
    v46._object = 0xE100000000000000;
    String.append(_:)(v46);
    v24 = *&v59[0];
LABEL_28:
    sub_100009F60(v62);
    sub_100009F60(v63);
    return v24;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v36 = *v19;
      v37 = *(v19 + 1);
      strcpy(v63, "textSearch(");
      HIDWORD(v63[1]) = -352321536;
      *&v62[0] = v36;
      *(&v62[0] + 1) = v37;
      v38._countAndFlagsBits = String.init<A>(reflecting:)();
      String.append(_:)(v38);
LABEL_23:

      v43._countAndFlagsBits = 41;
      v43._object = 0xE100000000000000;
      String.append(_:)(v43);
      return v63[0];
    }

    if (EnumCaseMultiPayload == 4)
    {
      v27 = *v19;
      v28 = *(v19 + 1);
      v29 = *(v19 + 2);
      v63[0] = 0;
      v63[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      v30._countAndFlagsBits = 0x736E6961746E6F63;
      v30._object = 0xE900000000000028;
      String.append(_:)(v30);
      *&v62[0] = v27;
      sub_10015DA04(&unk_1006C7AD8);
      _print_unlocked<A, B>(_:_:)();
      v31._countAndFlagsBits = 8236;
      v31._object = 0xE200000000000000;
      String.append(_:)(v31);
      *&v62[0] = v28;
      *(&v62[0] + 1) = v29;
      v32._countAndFlagsBits = String.init<A>(reflecting:)();
      String.append(_:)(v32);

      v33._countAndFlagsBits = 41;
      v33._object = 0xE100000000000000;
      String.append(_:)(v33);

      return v63[0];
    }

    sub_100192680(v19, v63);
    sub_10001FA64((v19 + 40), v62);
    *&v59[0] = 0;
    *(&v59[0] + 1) = 0xE000000000000000;
    v25 = 0x286F546C61757165;
    v26 = 0xE800000000000000;
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = v58;
      (*(v58 + 32))(v4, v19, v2);
      v63[0] = 0;
      v63[1] = 0xE000000000000000;
      v22._countAndFlagsBits = 0x2879726575516369;
      v22._object = 0xE800000000000000;
      String.append(_:)(v22);
      _print_unlocked<A, B>(_:_:)();
      v23._countAndFlagsBits = 41;
      v23._object = 0xE100000000000000;
      String.append(_:)(v23);
      v24 = v63[0];
      (*(v21 + 8))(v4, v2);
      return v24;
    }

    v63[0] = 0;
    v63[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v63[0] = 0xD000000000000014;
    v63[1] = 0x8000000100569A30;
    sub_1000054A4(0, &qword_1006BFEC0);
    v39 = Array.description.getter();
    v41 = v40;

    v42._countAndFlagsBits = v39;
    v42._object = v41;
    String.append(_:)(v42);
    goto LABEL_23;
  }

  sub_1002C32E8(v19, v16);
  sub_100006038(v16, v14, &unk_1006BF9D0);
  if ((*(v57 + 48))(v14, 1, v5) == 1)
  {
    v34 = 0xE300000000000000;
    v35 = 7104878;
  }

  else
  {
    sub_1002C3358(v14, v10);
    sub_10040B48C(v10, v8, type metadata accessor for FolderEntity);
    v53 = String.init<A>(describing:)();
    v34 = v54;
    sub_10040B4F4(v10, type metadata accessor for FolderEntity);
    v35 = v53;
  }

  strcpy(v63, "containedIn(");
  BYTE5(v63[1]) = 0;
  HIWORD(v63[1]) = -5120;
  v55 = v34;
  String.append(_:)(*&v35);

  v56._countAndFlagsBits = 41;
  v56._object = 0xE100000000000000;
  String.append(_:)(v56);
  v24 = v63[0];
  sub_1000073B4(v16, &unk_1006BF9D0);
  return v24;
}

id sub_10040B188(void *a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for TableID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ICTableObject<>.tableEntityIdentifier.getter();
  (*(v6 + 32))(&a2[OBJC_IVAR____TtC11MobileNotesP33_3A26B74EEED685164DF9267FE58E345F17TableSearchResult_id], v8, v5);
  v9 = [a1 title];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {

    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = &a2[OBJC_IVAR____TtC11MobileNotesP33_3A26B74EEED685164DF9267FE58E345F17TableSearchResult_title];
  *v14 = v11;
  v14[1] = v13;
  v16.receiver = a2;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, "init");
}

uint64_t sub_10040B2EC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000A600;

  return sub_100403120(a1, v5, v4);
}

uint64_t sub_10040B3D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A1FC;

  return sub_1004085CC(a1, v4, v5, v6);
}

uint64_t sub_10040B48C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10040B4F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10040B558()
{
  result = qword_1006C7AE8;
  if (!qword_1006C7AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7AE8);
  }

  return result;
}

unint64_t sub_10040B5B0()
{
  result = qword_1006C7AF0;
  if (!qword_1006C7AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7AF0);
  }

  return result;
}

unint64_t sub_10040B650()
{
  result = qword_1006C7B00;
  if (!qword_1006C7B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7B00);
  }

  return result;
}

uint64_t sub_10040B6EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10040B738()
{
  result = qword_1006C7B10;
  if (!qword_1006C7B10)
  {
    sub_10017992C(&qword_1006C0288);
    sub_10040B6EC(&unk_1006BEAD0, type metadata accessor for TableEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7B10);
  }

  return result;
}

uint64_t sub_10040B7F4()
{
  result = type metadata accessor for TableID();
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

uint64_t sub_10040B89C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_10040B8F0()
{
  sub_1002C397C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ICQueryType();
    if (v1 <= 0x3F)
    {
      sub_100271680();
      if (v2 <= 0x3F)
      {
        sub_100271730(319, &qword_1006C7C80, &unk_1006C7AD8);
        if (v3 <= 0x3F)
        {
          sub_100271730(319, &qword_1006C7C88, &qword_1006C7AD0);
          if (v4 <= 0x3F)
          {
            sub_10040BA00();
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10040BA00()
{
  if (!qword_1006C7C90)
  {
    sub_10017992C(&qword_1006C7AD0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1006C7C90);
    }
  }
}

id sub_10040BAA0@<X0>(void *a1@<X8>)
{
  result = sub_100408CD4(*(v1 + 16), *(v1 + 24));
  *a1 = result;
  return result;
}

id sub_10040BB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[1] = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChecklistItemEntity();
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = a3;
  AppDependency.wrappedValue.getter();
  v12 = v19[3];
  IntentParameter.wrappedValue.getter();
  (*(v5 + 16))(v7, &v11[*(v9 + 28)], v4);
  sub_10040D4E8(v11, type metadata accessor for ChecklistItemEntity);
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  (*(v5 + 8))(v7, v4);
  v16 = [v12 managedObjectIDForURIRepresentation:v15];

  if (!v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = 0;

    sub_10040C9A0(v17, 230);

    swift_willThrow();
  }

  return v16;
}

uint64_t OpenChecklistItemIntent.target.setter(uint64_t a1)
{
  v2 = type metadata accessor for ChecklistItemEntity();
  __chkstk_darwin(v2 - 8);
  sub_100247CF0(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChecklistItemEntity);
  IntentParameter.wrappedValue.setter();
  return sub_10040D4E8(a1, type metadata accessor for ChecklistItemEntity);
}

uint64_t sub_10040BE04()
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
  sub_100025918(v6, static OpenChecklistItemIntent.title);
  sub_10002597C(v6, static OpenChecklistItemIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t OpenChecklistItemIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC928 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static OpenChecklistItemIntent.title);
}

uint64_t static OpenChecklistItemIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC928 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static OpenChecklistItemIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static OpenChecklistItemIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t static OpenChecklistItemIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006C7D38);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C7D40);
  __chkstk_darwin(v1);
  sub_10002104C();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x74206C6165766552;
  v2._object = 0xEB00000000206568;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C7D48);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x696C6B6365686320;
  v3._object = 0xEF6D657469207473;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t (*OpenChecklistItemIntent.target.modify(uint64_t *a1))()
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

uint64_t (*OpenChecklistItemIntent.loggingConfiguration.modify(uint64_t *a1))()
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

uint64_t sub_10040C69C(uint64_t a1)
{
  v2 = type metadata accessor for ChecklistItemEntity();
  __chkstk_darwin(v2 - 8);
  sub_100247CF0(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChecklistItemEntity);
  IntentParameter.wrappedValue.setter();
  return sub_10040D4E8(a1, type metadata accessor for ChecklistItemEntity);
}

uint64_t (*sub_10040C748(uint64_t *a1))()
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

uint64_t sub_10040C7BC()
{
  v0 = sub_10015DA04(&qword_1006C7D38);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C7D40);
  __chkstk_darwin(v1);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x74206C6165766552;
  v2._object = 0xEB00000000206568;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C7D48);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x696C6B6365686320;
  v3._object = 0xEF6D657469207473;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_10040C974@<X0>(uint64_t *a1@<X8>)
{
  result = _s11MobileNotes23OpenChecklistItemIntentVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

id sub_10040C9A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v7 = type metadata accessor for ChecklistItemID();
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ChecklistItemEntity();
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  v14 = (a1 + 16);
  v13 = v15;
  if (v15)
  {
    v16 = v13;
  }

  else
  {
    v34 = a2;
    sub_10015DA04(&qword_1006BFBE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v18;
    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    v32 = 0xD00000000000003BLL;
    v33 = 0x8000000100572AE0;
    IntentParameter.wrappedValue.getter();
    sub_100247CF0(v12, v9, type metadata accessor for ChecklistItemID);
    sub_10040D4E8(v12, type metadata accessor for ChecklistItemEntity);
    ChecklistItemID.uriRepresentation.getter(v6);
    v19 = type metadata accessor for URL();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v6, 1, v19) == 1)
    {
      sub_1000073B4(v6, &qword_1006BCC20);
      v21 = 0;
      v22 = 0xE000000000000000;
    }

    else
    {
      v21 = URL.absoluteString.getter();
      v22 = v23;
      (*(v20 + 8))(v6, v19);
    }

    type metadata accessor for ICError(0);
    v24._countAndFlagsBits = v21;
    v24._object = v22;
    String.append(_:)(v24);

    sub_10040D4E8(v9, type metadata accessor for ChecklistItemID);
    v25._countAndFlagsBits = 46;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
    v26 = v32;
    v27 = v33;
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v26;
    *(inited + 56) = v27;
    sub_1001E27A0(inited);
    swift_setDeallocating();
    sub_1000073B4(inited + 32, &unk_1006BFA10);
    sub_10040D548(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v28 = v32;
    swift_beginAccess();
    v29 = *v14;
    *v14 = v28;
    v16 = v28;

    v13 = 0;
  }

  v30 = v13;
  return v16;
}

uint64_t _s11MobileNotes23OpenChecklistItemIntentVACycfC_0()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v31 = *(v0 - 8);
  v32 = v0;
  __chkstk_darwin(v0);
  v30 = v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v29 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v28 = v26 - v5;
  v6 = sub_10015DA04(&qword_1006C6490);
  __chkstk_darwin(v6 - 8);
  v27 = v26 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v26[0] = v26 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v26[1] = sub_10015DA04(&qword_1006BCE40);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v26[0];
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for ChecklistItemEntity();
  (*(*(v21 - 8) + 56))(v27, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v28, 1, 1, v22);
  v23(v29, 1, 1, v22);
  (*(v31 + 104))(v30, enum case for InputConnectionBehavior.default(_:), v32);
  sub_10040D548(&qword_1006BE070, type metadata accessor for ChecklistItemEntity);
  v24 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_10015DA04(&unk_1006BCA40);
  v33 = 0xD000000000000024;
  v34 = 0x800000010055CF90;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&qword_1006C34B0);
  v33 = 0xD000000000000021;
  v34 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v24;
}

unint64_t sub_10040D400()
{
  result = qword_1006C7D50;
  if (!qword_1006C7D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7D50);
  }

  return result;
}

uint64_t sub_10040D4E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10040D548(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_10040D590(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = a3;
  v33 = a2;
  v31 = a1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for UICollectionLayoutListConfiguration.FooterMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &ObjectType - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UICollectionLayoutListConfiguration();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC11MobileNotes27TagAssignmentCollectionView_tagAssignmentDataSource] = 0;
  (*(v10 + 104))(v12, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v9);
  UICollectionLayoutListConfiguration.init(appearance:)();
  (*(v6 + 104))(v8, enum case for UICollectionLayoutListConfiguration.FooterMode.supplementary(_:), v5);
  UICollectionLayoutListConfiguration.footerMode.setter();
  sub_10040DA74();
  v17 = static UICollectionViewCompositionalLayout.list(using:)();
  (*(v14 + 8))(v16, v13);
  v34.receiver = v4;
  v34.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v34, "initWithFrame:collectionViewLayout:", v17, 0.0, 0.0, 0.0, 0.0);

  v19 = objc_allocWithZone(type metadata accessor for TagAssignmentDataSource());
  v20 = v31;
  v21 = v31;
  v22 = v32;

  v23 = v18;
  v24 = sub_100355CBC(v23, v20, v33, v22);

  v25 = *&v23[OBJC_IVAR____TtC11MobileNotes27TagAssignmentCollectionView_tagAssignmentDataSource];
  *&v23[OBJC_IVAR____TtC11MobileNotes27TagAssignmentCollectionView_tagAssignmentDataSource] = v24;

  v26 = objc_opt_self();
  v27 = v23;
  v28 = [v26 ICGroupedBackgroundColor];
  [v27 setBackgroundColor:v28];

  [v27 setShowsVerticalScrollIndicator:0];

  return v27;
}

void sub_10040D978(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong collectionViewLayout];

    [v5 invalidateLayout];
  }

  if (a2)
  {
    a2();
  }
}

unint64_t sub_10040DA74()
{
  result = qword_1006C2B20;
  if (!qword_1006C2B20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006C2B20);
  }

  return result;
}

uint64_t sub_10040DAEC()
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
  sub_100025918(v6, static DeleteNotesIntent.title);
  sub_10002597C(v6, static DeleteNotesIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t DeleteNotesIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC930 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static DeleteNotesIntent.title);
}

uint64_t static DeleteNotesIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC930 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static DeleteNotesIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static DeleteNotesIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t static DeleteNotesIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006C7DA8);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&unk_1006C7DB0);
  __chkstk_darwin(v1);
  sub_10021B380();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x74206574656C6544;
  v2._object = 0xEB00000000206568;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&unk_1006C7DC0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x7365746F6E20;
  v3._object = 0xE600000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t (*DeleteNotesIntent.loggingConfiguration.modify(uint64_t *a1))()
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

uint64_t (*DeleteNotesIntent.entities.modify(uint64_t *a1))()
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

uint64_t sub_10040E374()
{
  v0 = sub_10015DA04(&qword_1006C7DA8);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&unk_1006C7DB0);
  __chkstk_darwin(v1);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x74206574656C6544;
  v2._object = 0xEB00000000206568;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&unk_1006C7DC0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x7365746F6E20;
  v3._object = 0xE600000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_10040E51C(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A600;

  return DeleteNotesIntent.perform()(a1, v4, v5, v6);
}

uint64_t DeleteNotesIntent.perform()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[40] = a3;
  v4[41] = a4;
  v4[38] = a1;
  v4[39] = a2;
  v5 = type metadata accessor for NoteEntity(0);
  v4[42] = v5;
  v4[43] = *(v5 - 8);
  v4[44] = swift_task_alloc();
  v4[45] = type metadata accessor for MainActor();
  v4[46] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[47] = v7;
  v4[48] = v6;

  return _swift_task_switch(sub_10040E6CC, v7, v6);
}

uint64_t sub_10040E6CC()
{
  v0[34] = &type metadata for DeleteNotesIntent;
  sub_10015DA04(&qword_1006C68D8);
  String.init<A>(describing:)();
  v1 = objc_allocWithZone(ICNAEventReporter);
  v2 = String._bridgeToObjectiveC()();

  v0[49] = [v1 initWithSubTrackerName:v2];

  IntentParameter.wrappedValue.getter();
  v3 = v0[35];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v0[43];
    v26 = v0[42];
    v6 = specialized ContiguousArray.reserveCapacity(_:)();
    v9 = 0;
    v27 = v5;
    v10 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    do
    {
      if (v9 >= *(v3 + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        return _swift_task_switch(v6, v7, v8);
      }

      sub_1001AD0E0(v10 + *(v27 + 72) * v9, v0[44]);
      AppDependency.wrappedValue.getter();
      v11 = v0[36];
      URL._bridgeToObjectiveC()(*(v26 + 20));
      v13 = v12;
      v14 = [v11 managedObjectIDForURIRepresentation:v12];

      if (!v14)
      {
        goto LABEL_22;
      }

      v6 = [v11 managedObjectContextForObjectID:v14];
      if (!v6)
      {
        goto LABEL_23;
      }

      v15 = v6;
      ++v9;
      v16 = v0[44];
      v17 = [v6 objectWithID:v14];

      sub_1001AD144(v16);
      v0[37] = &OBJC_PROTOCOL___ICSearchIndexableNote;
      swift_dynamicCastObjCProtocolUnconditional();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = specialized ContiguousArray._endMutation()();
    }

    while (v4 != v9);

    v18 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage >> 62)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  v18 = _swiftEmptyArrayStorage;
  if (!(_swiftEmptyArrayStorage >> 62))
  {
LABEL_8:
    v19 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_1000054A4(0, &qword_1006C2D00);
    if (swift_dynamicCastMetatype() || (v23 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_9:
    }

    else
    {
      v24 = v19 + 32;
      while (1)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          break;
        }

        v24 += 8;
        if (!--v23)
        {
          goto LABEL_9;
        }
      }

      v18 = (v19 | 1);
    }

    goto LABEL_10;
  }

LABEL_14:
  sub_1000054A4(0, &qword_1006C2D00);

  v22 = _bridgeCocoaArray<A>(_:)();
  swift_bridgeObjectRelease_n();
  v18 = v22;
LABEL_10:
  v0[50] = v18;

  v0[51] = static MainActor.shared.getter();
  v20 = dispatch thunk of Actor.unownedExecutor.getter();
  v8 = v21;
  v0[52] = v20;
  v0[53] = v21;
  v6 = sub_10040EA9C;
  v7 = v20;

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10040EA9C()
{
  sub_10035F884(v0[50]);
  v1 = objc_allocWithZone(ICDeleteDecision);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithSourceObjects:isa options:1];
  v0[54] = v3;

  v4 = [v3 type];
  v5 = [v3 additionalStep];
  if (!v4)
  {
LABEL_7:

    v7 = sub_1003D6B20(v3, 0);
    v9 = v8;

    v0[55] = v7;
    v0[56] = v9;
    v0[57] = static MainActor.shared.getter();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
    v0[58] = v10;
    v0[59] = v11;
    v13 = sub_10040ED84;
    v14 = v10;
LABEL_10:

    return _swift_task_switch(v13, v14, v12);
  }

  if (v4 != 1)
  {

    goto LABEL_9;
  }

  if (v5 <= 0xC && ((1 << v5) & 0x1B80) != 0)
  {
    goto LABEL_7;
  }

  v15 = [v3 guiltyObjects];
  sub_1000054A4(0, &qword_1006C2D00);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v16 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = v0[50];

  if (v18 >> 62)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v17 >= v19)
  {
LABEL_9:

    v14 = v0[47];
    v12 = v0[48];
    v13 = sub_10040FA24;
    goto LABEL_10;
  }

  v20 = swift_task_alloc();
  v0[65] = v20;
  *v20 = v0;
  v20[1] = sub_10040F22C;
  v21 = v0[40];
  v22 = v0[41];
  v23 = v0[39];

  return sub_10040FAF8(v23, v21, v22);
}

uint64_t sub_10040ED84()
{
  v1 = v0[49];
  v2 = objc_opt_self();
  v0[60] = v2;
  sub_10015DA04(&qword_1006C7DD0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 deleteHTMLNotesIfNeeded:isa eventReporter:v1];

  v0[61] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[62] = v5;
  v0[63] = v4;

  return _swift_task_switch(sub_10040EE84, v5, v4);
}

uint64_t sub_10040EE84()
{
  v1 = v0[60];
  v2 = v0[49];
  sub_1000054A4(0, &qword_1006C1420);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[64] = isa;

  v0[2] = v0;
  v0[3] = sub_10040EFE4;
  v4 = swift_continuation_init();
  v0[25] = sub_10015DA04(&unk_1006BFBB0);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100252EB0;
  v0[21] = &unk_10065D678;
  v0[22] = v4;
  [v1 deleteModernNotesIfNeeded:isa eventReporter:v2 completion:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10040EFE4()
{
  v1 = *(*v0 + 504);
  v2 = *(*v0 + 496);

  return _swift_task_switch(sub_10040F0EC, v2, v1);
}

uint64_t sub_10040F0EC()
{
  v1 = v0[64];

  v2 = v0[58];
  v3 = v0[59];

  return _swift_task_switch(sub_10040F158, v2, v3);
}

uint64_t sub_10040F158()
{

  v1 = *(v0 + 416);
  v2 = *(v0 + 424);

  return _swift_task_switch(sub_10040F1BC, v1, v2);
}

uint64_t sub_10040F1BC()
{

  v1 = *(v0 + 376);
  v2 = *(v0 + 384);

  return _swift_task_switch(sub_100410B2C, v1, v2);
}

uint64_t sub_10040F22C()
{
  v2 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {

    v3 = *(v2 + 416);
    v4 = *(v2 + 424);
    v5 = sub_10040F944;
  }

  else
  {
    v3 = *(v2 + 416);
    v4 = *(v2 + 424);
    v5 = sub_10040F348;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10040F348()
{
  v1 = sub_1003D6B20(*(v0 + 432), 1);
  v3 = v2;

  *(v0 + 536) = v1;
  *(v0 + 544) = v3;
  *(v0 + 552) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 560) = v5;
  *(v0 + 568) = v4;

  return _swift_task_switch(sub_10040F408, v5, v4);
}

uint64_t sub_10040F408()
{
  v1 = v0[49];
  v2 = objc_opt_self();
  v0[72] = v2;
  sub_10015DA04(&qword_1006C7DD0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 deleteHTMLNotesIfNeeded:isa eventReporter:v1];

  v0[73] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[74] = v5;
  v0[75] = v4;

  return _swift_task_switch(sub_10040F50C, v5, v4);
}

uint64_t sub_10040F50C()
{
  v1 = v0[72];
  v2 = v0[49];
  sub_1000054A4(0, &qword_1006C1420);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[76] = isa;

  v0[10] = v0;
  v0[11] = sub_10040F66C;
  v4 = swift_continuation_init();
  v0[33] = sub_10015DA04(&unk_1006BFBB0);
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_100252EB0;
  v0[29] = &unk_10065D6A0;
  v0[30] = v4;
  [v1 deleteModernNotesIfNeeded:isa eventReporter:v2 completion:v0 + 26];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_10040F66C()
{
  v1 = *(*v0 + 600);
  v2 = *(*v0 + 592);

  return _swift_task_switch(sub_10040F774, v2, v1);
}

uint64_t sub_10040F774()
{
  v1 = v0[76];

  v2 = v0[71];
  v3 = v0[70];

  return _swift_task_switch(sub_10040F7E4, v3, v2);
}

uint64_t sub_10040F7E4()
{

  v1 = *(v0 + 416);
  v2 = *(v0 + 424);

  return _swift_task_switch(sub_10040F848, v1, v2);
}

uint64_t sub_10040F848()
{

  v1 = *(v0 + 376);
  v2 = *(v0 + 384);

  return _swift_task_switch(sub_10040F8B8, v1, v2);
}

uint64_t sub_10040F8B8()
{
  v1 = *(v0 + 392);

  static IntentResult.result<>()();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10040F944()
{
  v1 = v0[54];

  v2 = v0[47];
  v3 = v0[48];

  return _swift_task_switch(sub_10040F9B0, v2, v3);
}

uint64_t sub_10040F9B0()
{
  v1 = *(v0 + 392);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10040FA24()
{
  v1 = *(v0 + 392);

  sub_100197CCC();
  swift_allocError();
  *v2 = 13;
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10040FACC@<X0>(uint64_t *a1@<X8>)
{
  result = _s11MobileNotes06DeleteB6IntentVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_10040FAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = type metadata accessor for ConfirmationActionName();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  type metadata accessor for Locale();
  v3[14] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v3[15] = swift_task_alloc();
  type metadata accessor for LocalizedStringResource();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v6 = type metadata accessor for IntentDialog();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  v7 = sub_10015DA04(&qword_1006C6920);
  v3[21] = v7;
  v3[22] = *(v7 - 8);
  v3[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[24] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[25] = v9;
  v3[26] = v8;

  return _swift_task_switch(sub_10040FDA0, v9, v8);
}

uint64_t sub_10040FDA0()
{
  v1 = *(v0 + 160);
  v15 = *(v0 + 152);
  v2 = *(v0 + 104);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v16 = *(v0 + 144);
  v5 = *(v0 + 40);
  *(v0 + 32) = *(v0 + 56);
  *(v0 + 16) = v5;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v6 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v7 = *(v3 + 104);
  v7(v2, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v7(v2, v6, v4);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  IntentDialog.init(full:supporting:)();
  static IntentResult.result<>(dialog:)();
  (*(v15 + 8))(v1, v16);
  static ConfirmationActionName.continue.getter();
  v8 = swift_task_alloc();
  *(v0 + 216) = v8;
  v9 = sub_10021B380();
  v10 = sub_1000060B4(&qword_1006C7E10, &qword_1006C6920);
  *v8 = v0;
  v8[1] = sub_100410020;
  v11 = *(v0 + 184);
  v12 = *(v0 + 168);
  v13 = *(v0 + 80);

  return AppIntent.requestConfirmation<A>(result:confirmationActionName:showPrompt:)(v11, v13, 1, &type metadata for DeleteNotesIntent, v12, v9, v10);
}

uint64_t sub_100410020()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 176);
  v5 = *(*v1 + 168);
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 72);
  v8 = *(*v1 + 64);
  *(*v1 + 224) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v9 = *(v2 + 200);
  v10 = *(v2 + 208);
  if (v0)
  {
    v11 = sub_1004102D0;
  }

  else
  {
    v11 = sub_100410200;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_100410200()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004102D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s11MobileNotes06DeleteB6IntentVACycfC_0()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v30 = *(v0 - 8);
  v31 = v0;
  __chkstk_darwin(v0);
  v29 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v28 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v27 = &v21 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v26 = &v21 - v7;
  v25 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  v24 = type metadata accessor for LocalizedStringResource();
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v21 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015DA04(&qword_1006C34B0);
  v32 = 0xD000000000000021;
  v33 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v23 = AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&unk_1006BCA40);
  v32 = 0xD000000000000024;
  v33 = 0x800000010055CF90;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&unk_1006BCAF0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v14 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v15 = *(v8 + 104);
  v16 = v25;
  v15(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v25);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v15(v10, v14, v16);
  v17 = v26;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v22 + 56))(v17, 0, 1, v24);
  v34 = 0;
  v18 = type metadata accessor for IntentDialog();
  v19 = *(*(v18 - 8) + 56);
  v19(v27, 1, 1, v18);
  v19(v28, 1, 1, v18);
  (*(v30 + 104))(v29, enum case for InputConnectionBehavior.default(_:), v31);
  sub_1004109D0();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  return v23;
}

unint64_t sub_100410978()
{
  result = qword_1006C7DD8;
  if (!qword_1006C7DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7DD8);
  }

  return result;
}

unint64_t sub_1004109D0()
{
  result = qword_1006BCAD0;
  if (!qword_1006BCAD0)
  {
    type metadata accessor for NoteEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BCAD0);
  }

  return result;
}

unint64_t sub_100410A30()
{
  result = qword_1006C7DE8;
  if (!qword_1006C7DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7DE8);
  }

  return result;
}

unint64_t sub_100410A88()
{
  result = qword_1006C7DF0;
  if (!qword_1006C7DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7DF0);
  }

  return result;
}

id sub_100410C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v12 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = String._bridgeToObjectiveC()();

LABEL_6:
  v17.receiver = v7;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, "initWithTitle:detailText:symbolName:contentLayout:", v12, v13, v14, a7);

  return v15;
}

BOOL static NSOperatingSystemVersion.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2 < a5;
  if (a2 == a5)
  {
    v6 = a3 < a6;
  }

  if (a1 == a4)
  {
    return v6;
  }

  else
  {
    return a1 < a4;
  }
}

unint64_t sub_100410F54()
{
  result = qword_1006C7E18;
  if (!qword_1006C7E18)
  {
    type metadata accessor for OperatingSystemVersion(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7E18);
  }

  return result;
}

BOOL sub_100410FAC(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    v5 = a1[2] < a2[2];
  }

  if (*a1 == *a2)
  {
    return v5;
  }

  else
  {
    return *a1 < *a2;
  }
}

BOOL sub_100410FE4(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    v5 = a2[2] < a1[2];
  }

  if (*a2 == *a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = *a2 < *a1;
  }

  return !v6;
}

BOOL sub_100411020(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    v5 = a1[2] < a2[2];
  }

  if (*a1 == *a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = *a1 < *a2;
  }

  return !v6;
}

BOOL sub_10041105C(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    v5 = a2[2] < a1[2];
  }

  if (*a2 == *a1)
  {
    return v5;
  }

  else
  {
    return *a2 < *a1;
  }
}

BOOL sub_1004110E8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    sub_10027CAAC(v10);
    return 1;
  }

  sub_10015DA04(&qword_1006C7E48);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 1;
  }

  if (v7[2] != 3)
  {

    return 1;
  }

  v4 = v7[4];
  v3 = v7[5];
  v5 = v7[6];

  if (v4 != 15)
  {
    return v4 < 15;
  }

  if (v3)
  {
    return v3 >> 63;
  }

  return v5 >> 63;
}

id sub_100411240()
{
  if (!sub_1004110E8())
  {
    return 0;
  }

  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v21._object = 0x8000000100572D60;
  v2._object = 0x8000000100572D40;
  v21._countAndFlagsBits = 0xD00000000000001BLL;
  v2._countAndFlagsBits = 0xD000000000000014;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v21);

  v4 = [v0 mainBundle];
  v22._object = 0x8000000100572E30;
  v5._countAndFlagsBits = 0xD0000000000000AALL;
  v5._object = 0x8000000100572D80;
  v22._countAndFlagsBits = 0xD000000000000016;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v22);

  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() _systemImageNamed:v7];

  v9 = [v0 mainBundle];
  v23._object = 0x8000000100572E50;
  v10._countAndFlagsBits = 0x7261745320746547;
  v10._object = 0xEB00000000646574;
  v23._countAndFlagsBits = 0xD000000000000040;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v23);

  v12 = objc_allocWithZone(type metadata accessor for SystemPaperWelcomeViewController());
  v13 = v8;
  v14 = String._bridgeToObjectiveC()();

  v15 = String._bridgeToObjectiveC()();

  v16 = [v12 initWithTitle:v14 detailText:v15 icon:v13 contentLayout:2];

  v17 = [objc_opt_self() boldButton];
  [v17 addTarget:v16 action:"dismiss:" forControlEvents:64];
  v18 = String._bridgeToObjectiveC()();

  [v17 setTitle:v18 forState:0];

  v19 = [v16 buttonTray];
  [v19 addButton:v17];

  [v16 setModalPresentationStyle:2];
  return v16;
}

uint64_t sub_100411574@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v27 = v1;
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10015DA04(&qword_1006C7EA8);
  v29 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v28 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v31 = sub_100270C4C();
  v32 = v13;
  v33 = v14;
  v34 = v15;
  v35 = v16;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v18 = *(v2 + 104);
  v26 = v2 + 104;
  v18(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v1);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_100271050();
  AppShortcutOptionsCollection.init(_:title:systemImageName:)();
  v31 = sub_100270998();
  v32 = v19;
  v33 = v20;
  v34 = v21;
  v35 = v22;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18(v4, v17, v27);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v23 = v28;
  AppShortcutOptionsCollection.init(_:title:systemImageName:)();
  type metadata accessor for NoteEntity(0);
  sub_1004126B0();
  sub_100412708();
  static AppShortcutOptionsCollectionSpecificationBuilder.buildBlock<A, B>(_:_:)();
  v24 = *(v29 + 8);
  v24(v23, v8);
  return (v24)(v12, v8);
}

uint64_t sub_1004119C0@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ShortcutTileColor.yellow(_:);
  v3 = type metadata accessor for ShortcutTileColor();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100411A44()
{
  v0 = sub_10015DA04(&qword_1006C7E50);
  __chkstk_darwin(v0 - 8);
  v51 = v44 - v1;
  v48 = sub_10015DA04(&qword_1006C7E58);
  __chkstk_darwin(v48);
  v47 = v44 - v2;
  v3 = sub_10015DA04(&qword_1006C7E60);
  __chkstk_darwin(v3 - 8);
  v49 = v44 - v4;
  v5 = sub_10015DA04(&qword_1006C7E68);
  __chkstk_darwin(v5 - 8);
  v52 = v44 - v6;
  KeyPath = sub_10015DA04(&qword_1006C7E70);
  __chkstk_darwin(KeyPath);
  v7 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v8 = *(v7 - 8);
  v62 = v7;
  v63 = v8;
  __chkstk_darwin(v7);
  v59 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v58 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v15 - 8);
  v17 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AppShortcut();
  v19 = *(v18 - 8);
  v60 = v18;
  v61 = v19;
  __chkstk_darwin(v18);
  v21 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E28D0(v64);
  sub_10015DA04(&qword_1006C7E78);
  sub_10015DA04(&qword_1006C7E80);
  v22 = swift_allocObject();
  v57 = xmmword_100531E30;
  *(v22 + 16) = xmmword_100531E30;
  sub_100023DE8();
  AppShortcutPhrase.init(stringLiteral:)();
  v53 = v14;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v56 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v55 = *(v63 + 104);
  v63 += 104;
  v55(v59);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v45 = v21;
  v44[0] = v17;
  AppShortcut.init<A>(intent:phrases:shortTitle:systemImageName:)();
  v50 = static AppShortcutsBuilder.buildExpression(_:)();
  v23 = *(v61 + 8);
  v61 += 8;
  v54 = v23;
  v23(v21, v60);
  v64[7] = _s11MobileNotes14OpenNoteIntentVACycfC_0();
  v64[8] = v24;
  v64[9] = v25;
  sub_10015DA04(&qword_1006C7E88);
  sub_10015DA04(&qword_1006C7E90);
  v26 = swift_allocObject();
  *(v26 + 16) = v57;
  v44[1] = v26;
  sub_10002128C();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v27._countAndFlagsBits = 0x656874206E65704FLL;
  v27._object = 0xEE002065746F6E20;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v27);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C7E98);
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v28);
  AppShortcutPhrase.init(stringInterpolation:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v55)(v59, v56, v62);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  KeyPath = swift_getKeyPath();
  v29 = type metadata accessor for NoteEntity(0);
  sub_10015DA04(&unk_1006BE580);
  v30 = sub_1004126B0();
  AppShortcutParameterPresentationSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v31._countAndFlagsBits = 0x206E65704FLL;
  v31._object = 0xE500000000000000;
  AppShortcutParameterPresentationSummaryString.StringInterpolation.appendLiteral(_:)(v31);
  swift_getKeyPath();
  AppShortcutParameterPresentationSummaryString.StringInterpolation.appendInterpolation(_:)();

  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  AppShortcutParameterPresentationSummaryString.StringInterpolation.appendLiteral(_:)(v32);
  AppShortcutParameterPresentationSummaryString.init(stringInterpolation:)();
  AppShortcutParameterPresentationSummary.init(_:table:)();
  sub_10015DA04(&qword_1006C7EA0);
  v33 = sub_10017992C(&qword_1006C7EA8);
  v34 = sub_100412708();
  v64[0] = v29;
  v64[1] = v33;
  v64[2] = v33;
  v64[3] = v30;
  v64[4] = v34;
  v64[5] = v34;
  swift_getOpaqueTypeConformance2();
  AppShortcutParameterPresentation.init<A>(for:summary:optionsCollections:)();
  v35 = v45;
  AppShortcut.init<A, B, C, D>(intent:phrases:shortTitle:systemImageName:parameterPresentation:)();
  v52 = static AppShortcutsBuilder.buildExpression(_:)();
  v54(v35, v60);
  v36 = [objc_opt_self() configurationForDefaultMainDisplayMonitor];
  v37 = [objc_opt_self() monitorWithConfiguration:v36];

  type metadata accessor for ShowQuickNoteIntent.LayoutMonitorBox();
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  v64[0] = v38;
  sub_10015DA04(&qword_1006C7EB8);
  sub_10015DA04(&qword_1006C7EC0);
  *(swift_allocObject() + 16) = v57;
  sub_10021B1DC();
  AppShortcutPhrase.init(stringLiteral:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v55)(v59, v56, v62);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  AppShortcut.init<A>(intent:phrases:shortTitle:systemImageName:)();
  v39 = static AppShortcutsBuilder.buildExpression(_:)();
  v54(v35, v60);
  sub_10015DA04(&qword_1006C7EC8);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100539C40;
  v41 = v52;
  *(v40 + 32) = v50;
  *(v40 + 40) = v41;
  *(v40 + 48) = v39;
  v42 = static AppShortcutsBuilder.buildBlock(_:)();

  return v42;
}

unint64_t sub_1004126B0()
{
  result = qword_1006BE480;
  if (!qword_1006BE480)
  {
    type metadata accessor for NoteEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BE480);
  }

  return result;
}

unint64_t sub_100412708()
{
  result = qword_1006C7EB0;
  if (!qword_1006C7EB0)
  {
    sub_10017992C(&qword_1006C7EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7EB0);
  }

  return result;
}

objc_class *sub_10041276C()
{
  v1 = OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menu;
  v2 = *(v0 + OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menu);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menu);
  }

  else
  {
    sub_1000054A4(0, &unk_1006C6410);
    sub_10015DA04(&unk_1006BD390);
    preferredElementSize = swift_allocObject();
    *(preferredElementSize + 16) = xmmword_10054A150;
    v5 = v0;
    *(preferredElementSize + 32) = sub_100412C40();
    *(preferredElementSize + 40) = sub_100412C6C();
    *(preferredElementSize + 48) = sub_100412DA8();
    *(preferredElementSize + 56) = sub_100412DD4();
    *(preferredElementSize + 64) = sub_100412E00();
    *(preferredElementSize + 72) = sub_100412E2C();
    *(preferredElementSize + 80) = sub_100412E58();
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v16.value.super.isa = 0;
    v16.is_nil = 0;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v6, 0, v16, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v14).super.super.isa;
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100531E20;
    *(v8 + 32) = sub_100412AD4();
    *(v8 + 40) = isa;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v17.value.super.isa = 0;
    v17.is_nil = 0;
    v10.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v9, 0, v17, 0, 0xFFFFFFFFFFFFFFFFLL, v8, v15).super.super.isa;
    v11 = *(v0 + v1);
    *(v5 + v1) = v10;
    v3 = v10.super.super.isa;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

void sub_1004128EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection);
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v1 = [v2 selectionType];
      v3 = 0;
      goto LABEL_6;
    }

    v1 = 0;
  }

  v3 = 1;
LABEL_6:
  v4 = sub_100412AD4();
  [v4 setState:v3];

  v5 = sub_100412C40();
  v6 = v5;
  v7 = v3 ^ 1;
  if (v1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  [v5 setState:v8];

  v9 = sub_100412C6C();
  v10 = v9;
  if (v1 == 1)
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  [v9 setState:v11];

  v12 = sub_100412DA8();
  v13 = v12;
  if (v1 == 2)
  {
    v14 = v7;
  }

  else
  {
    v14 = 0;
  }

  [v12 setState:v14];

  v15 = sub_100412DD4();
  v16 = v15;
  if (v1 == 3)
  {
    v17 = v7;
  }

  else
  {
    v17 = 0;
  }

  [v15 setState:v17];

  v18 = sub_100412E00();
  v19 = v18;
  if (v1 == 4)
  {
    v20 = v7;
  }

  else
  {
    v20 = 0;
  }

  [v18 setState:v20];

  v21 = sub_100412E2C();
  v22 = v21;
  if (v1 == 5)
  {
    v23 = v7;
  }

  else
  {
    v23 = 0;
  }

  [v21 setState:v23];

  v24 = sub_100412FE4();
  v25 = v24;
  if (v1 == 7)
  {
    v26 = v7;
  }

  else
  {
    v26 = 0;
  }

  [v24 setState:v26];

  v27 = sub_100413010();
  v28 = v27;
  if (v1 == 6)
  {
    v29 = v7;
  }

  else
  {
    v29 = 0;
  }

  [v27 setState:v29];

  v30 = sub_10041303C();
  v31 = v30;
  if (v1 == 8)
  {
    v32 = v7;
  }

  else
  {
    v32 = 0;
  }

  [v30 setState:v32];

  v33 = sub_100413068();
  v34 = v33;
  if (v1 == 9)
  {
    v35 = v7;
  }

  else
  {
    v35 = 0;
  }

  [v33 setState:v35];

  v36 = sub_100413094();
  v38 = v36;
  if (v1 == 10)
  {
    v37 = v7;
  }

  else
  {
    v37 = 0;
  }

  [v36 setState:v37];
}

id sub_100412AD4()
{
  v1 = OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menuActionOff;
  v2 = *&v0[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menuActionOff];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menuActionOff];
  }

  else
  {
    sub_1000054A4(0, &unk_1006BD380);
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 localizedStringForKey:v5 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(swift_allocObject() + 16) = v0;
    v7 = v0;
    v8 = v0;
    v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v10 = *&v0[v1];
    *&v8[v1] = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_100412C98(uint64_t *a1)
{
  v2 = *a1;
  v3 = *&v1[*a1];
  if (v3)
  {
    v4 = *&v1[*a1];
  }

  else
  {
    sub_1000054A4(0, &unk_1006BD380);
    v5 = ICLocalizedStringFromICDateFilterSelectionType();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    *(swift_allocObject() + 16) = v1;
    v6 = v1;
    v7 = v1;
    v8 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v9 = *&v1[v2];
    *&v7[v2] = v8;
    v4 = v8;

    v3 = 0;
  }

  v10 = v3;
  return v4;
}

objc_class *sub_100412E58()
{
  v1 = OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___customMenu;
  v2 = *(v0 + OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___customMenu);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___customMenu);
  }

  else
  {
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 localizedStringForKey:v5 value:0 table:0];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    sub_10015DA04(&unk_1006BD390);
    preferredElementSize = swift_allocObject();
    *(preferredElementSize + 16) = xmmword_10054A160;
    v11 = v0;
    *(preferredElementSize + 32) = sub_100412FE4();
    *(preferredElementSize + 40) = sub_100413010();
    *(preferredElementSize + 48) = sub_10041303C();
    *(preferredElementSize + 56) = sub_100413068();
    *(preferredElementSize + 64) = sub_100413094();
    sub_1000054A4(0, &unk_1006C6410);
    v12._countAndFlagsBits = v7;
    v12._object = v9;
    v18.value.super.isa = 0;
    v18.is_nil = 0;
    v13.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v12, 0, v18, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v17).super.super.isa;
    v14 = *(v0 + v1);
    *(v11 + v1) = v13;
    v3 = v13.super.super.isa;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

void sub_1004130EC(uint64_t a1, char *a2)
{
  v3 = *&a2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection];
  *&a2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection] = 0;

  [a2 setNeedsUpdateConfiguration];
  sub_1004128EC();
  v4 = *&a2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelectionDidChange];
  if (v4)
  {

    v4(v5);

    sub_10000C840(v4);
  }
}

uint64_t sub_100413188(uint64_t a1, void *a2, uint64_t a3)
{
  (*((swift_isaMask & *a2) + 0x220))();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSelectionType:a3];
  v6 = *(a2 + OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection);
  *(a2 + OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection) = v5;
  v7 = v5;

  [a2 setNeedsUpdateConfiguration];
  result = sub_1004128EC();
  v9 = *(a2 + OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelectionDidChange);
  if (v9)
  {

    v9(v10);

    return sub_10000C840(v9);
  }

  return result;
}

id sub_100413294(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menu] = 0;
  *&v4[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menuActionOff] = 0;
  *&v4[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menuActionToday] = 0;
  *&v4[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menuActionYesterday] = 0;
  *&v4[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menuActionLastSevenDays] = 0;
  *&v4[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menuActionLastThirtyDays] = 0;
  *&v4[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menuActionLastThreeMonths] = 0;
  *&v4[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menuActionLastTwelveMonths] = 0;
  *&v4[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___customMenu] = 0;
  *&v4[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menuActionRelativeRange] = 0;
  *&v4[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menuActionSpecificRange] = 0;
  *&v4[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menuActionSpecificDate] = 0;
  *&v4[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menuActionBeforeDate] = 0;
  *&v4[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menuActionAfterDate] = 0;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for FolderComposerFilterCellDate();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id sub_1004133C4(void *a1)
{
  *&v1[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menu] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menuActionOff] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menuActionToday] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menuActionYesterday] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menuActionLastSevenDays] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menuActionLastThirtyDays] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menuActionLastThreeMonths] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menuActionLastTwelveMonths] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___customMenu] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menuActionRelativeRange] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menuActionSpecificRange] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menuActionSpecificDate] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menuActionBeforeDate] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menuActionAfterDate] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FolderComposerFilterCellDate();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

void sub_1004134F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterCellDate____lazy_storage___menuActionAfterDate);
}

id sub_1004135F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FolderComposerFilterCellDate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double CreateTableIntent.init()@<D0>(_OWORD *a1@<X8>)
{
  sub_100416848(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

uint64_t CreateTableIntent.note.setter(uint64_t a1)
{
  v2 = type metadata accessor for NoteEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_1004173D0(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NoteEntity);
  IntentParameter.wrappedValue.setter();
  return sub_100417438(a1, type metadata accessor for NoteEntity);
}

uint64_t sub_100413A1C()
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
  sub_100025918(v6, static CreateTableIntent.title);
  sub_10002597C(v6, static CreateTableIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t CreateTableIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC938 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static CreateTableIntent.title);
}

uint64_t static CreateTableIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC938 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static CreateTableIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static CreateTableIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t static CreateTableIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006C7F70);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C7F78);
  __chkstk_darwin(v1);
  sub_10021B0E0();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x6C62617420646441;
  v2._object = 0xEF20687469772065;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C7F80);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 544175136;
  v3._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C7F88);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:_:)();
}

uint64_t sub_100414214()
{
  swift_getKeyPath();
  sub_10021B0E0();
  v0 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  sub_10015DA04(&unk_1006BD390);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100534670;
  *(v1 + 32) = v0;

  v2 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildBlock(_:)();

  return v2;
}

uint64_t (*CreateTableIntent.name.modify(uint64_t *a1))()
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

uint64_t (*CreateTableIntent.csvString.modify(uint64_t *a1))()
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

uint64_t (*CreateTableIntent.note.modify(uint64_t *a1))()
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

uint64_t (*CreateTableIntent.loggingConfiguration.modify(uint64_t *a1))()
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

uint64_t CreateTableIntent.perform()(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v2[20] = type metadata accessor for TableEntity();
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

  return _swift_task_switch(sub_1004145E0, 0, 0);
}

uint64_t sub_1004145E0()
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
  sub_100417438(v1, type metadata accessor for NoteEntity);
  AppDependency.wrappedValue.getter();
  v6 = v0[14];
  v0[30] = v6;
  v7 = swift_task_alloc();
  v0[31] = v7;
  *v7 = v0;
  v7[1] = sub_10041473C;
  v8 = v0[27];

  return sub_100384000(v8, v6);
}

uint64_t sub_10041473C(uint64_t a1)
{
  v2 = *(*v1 + 240);
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 208);
  v5 = *(*v1 + 200);
  *(*v1 + 256) = a1;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_1004148B4, 0, 0);
}

uint64_t sub_1004148B4()
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
  sub_100417398(v3, (v0 + 2));
  v10 = swift_task_alloc();
  v0[34] = v10;
  v11 = sub_10015DA04(&unk_1006BFED0);
  *v10 = v0;
  v10[1] = sub_1004149D8;

  return NSManagedObjectContext.perform<A>(_:)(v0 + 15, sub_100417378, v4, v11);
}

uint64_t sub_1004149D8()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_10027E6EC;
  }

  else
  {
    v2 = sub_100414B0C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100414B0C()
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
    v4[1] = sub_100414CE8;
    v5 = *(v0 + 232);
    v6 = *(v0 + 192);

    return TableEntity.init(for:in:)(v6, v3, v5);
  }

  else
  {
    v8 = *(v0 + 256);
    v9 = *(v0 + 232);
    type metadata accessor for ICError(0);
    *(v0 + 136) = 227;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_100417538(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_100414CE8()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_10027E7A0;
  }

  else
  {
    v2 = sub_100414DFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100414DFC()
{
  v12 = v0[36];
  v13 = v0[29];
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v14 = v0[32];
  sub_1004173D0(v2, v1, type metadata accessor for TableEntity);
  v5 = _s11MobileNotes15OpenTableIntentVACycfC_0();
  v7 = v6;
  v9 = v8;
  sub_1004173D0(v1, v4, type metadata accessor for TableEntity);
  sub_1004173D0(v4, v3, type metadata accessor for TableEntity);
  IntentParameter.wrappedValue.setter();
  sub_100417438(v4, type metadata accessor for TableEntity);
  sub_100417438(v1, type metadata accessor for TableEntity);
  v0[10] = v5;
  v0[11] = v7;
  v0[12] = v9;
  sub_100417538(&unk_1006BEAD0, type metadata accessor for TableEntity);
  sub_1000213AC();
  static IntentResult.result<A, B>(value:opensIntent:)();

  sub_100417438(v2, type metadata accessor for TableEntity);

  v10 = v0[1];

  return v10();
}

void sub_100414FF4(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v169 = a3;
  v154 = a4;
  v6 = type metadata accessor for DataFrame.Row();
  v152 = *(v6 - 8);
  __chkstk_darwin(v6);
  v172 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for DataFrame.Rows();
  v167 = *(v164 - 8);
  __chkstk_darwin(v164);
  v163 = &v138 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for UUID();
  v158 = *(v171 - 1);
  __chkstk_darwin(v171);
  v157 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for DataFrame();
  v165 = *(v166 - 8);
  v10 = __chkstk_darwin(v166);
  v168 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v138 - v12;
  v14 = type metadata accessor for CSVType();
  v174 = *(v14 - 8);
  v175 = v14;
  v15 = __chkstk_darwin(v14);
  v176 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v173 = &v138 - v18;
  __chkstk_darwin(v17);
  v155 = &v138 - v19;
  v159 = type metadata accessor for CSVReadingOptions();
  v156 = *(v159 - 8);
  v20 = __chkstk_darwin(v159);
  v22 = &v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v153 = &v138 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v138 - v26;
  __chkstk_darwin(v25);
  v29 = &v138 - v28;
  v162 = type metadata accessor for String.Encoding();
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v160 = &v138 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10015DA04(&unk_1006C7FD0);
  v32 = __chkstk_darwin(v31 - 8);
  v34 = &v138 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v32);
  v37 = &v138 - v36;
  __chkstk_darwin(v35);
  if (!a1)
  {
    goto LABEL_6;
  }

  v146 = v22;
  v147 = v6;
  v148 = &v138 - v38;
  v39 = a1;
  v40 = [a2 objectWithID:v39];
  objc_opt_self();
  v41 = swift_dynamicCastObjCClass();
  if (!v41)
  {

LABEL_6:
    type metadata accessor for ICError(0);
    *&v178 = 227;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_100417538(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    return;
  }

  v42 = v41;
  v151 = v39;
  v43 = v40;
  if ([v42 isPasswordProtectedAndLocked])
  {

    sub_100197CCC();
    swift_allocError();
    v45 = 15;
    goto LABEL_34;
  }

  if (![v42 isEditable])
  {
    goto LABEL_32;
  }

  if (![v42 canAddAttachment])
  {

    sub_100197CCC();
    swift_allocError();
    v45 = 35;
    goto LABEL_34;
  }

  v143 = v42;
  v144 = v43;
  v142 = a2;
  v46 = *(v165 + 56);
  v46(v148, 1, 1, v166);
  v149 = *(v169 + 8);
  IntentParameter.wrappedValue.getter();
  if (*(&v180 + 1))
  {
    v145 = v46;
    v47 = v160;
    static String.Encoding.utf8.getter();
    v150 = String.data(using:allowLossyConversion:)();
    v49 = v48;

    v50 = v47;
    v51 = v49;
    (*(v161 + 8))(v50, v162);
    if (v49 >> 60 != 15)
    {
      v141 = sub_100417694(&off_10064D5C8);
      swift_arrayDestroy();
      v140 = sub_100417694(&off_10064D628);
      swift_arrayDestroy();
      (v174[13])(v155, enum case for CSVType.double(_:), v175);
      CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)();
      v105 = v156;
      (*(v156 + 16))(v27, v29, v159);
      sub_10027AA50(v150, v51);
      sub_10041780C(_swiftEmptyArrayStorage);
      v106 = v170;
      DataFrame.init(csvData:columns:rows:types:options:)();
      v170 = v106;
      if (v106)
      {

        v107 = v144;
        sub_1001C60E4(v150, v51);

        (*(v105 + 8))(v29, v159);
        sub_1000073B4(v148, &unk_1006C7FD0);
        return;
      }

      v141 = v51;
      v111 = v148;
      sub_1000073B4(v148, &unk_1006C7FD0);
      v112 = v166;
      v145(v37, 0, 1, v166);
      sub_1004179F8(v37, v111);
      v113 = v112;
      sub_100006038(v111, v34, &unk_1006C7FD0);
      v114 = v165;
      if ((*(v165 + 48))(v34, 1, v112) != 1)
      {
        (*(v114 + 32))(v13, v34, v112);
        v52 = DataFrame.shape.getter();
        DataFrame.shape.getter();
        v53 = v115;
        sub_1001C60E4(v150, v141);
        (*(v114 + 8))(v13, v113);
        (*(v156 + 8))(v29, v159);
        goto LABEL_12;
      }

      (*(v156 + 8))(v29, v159);
      sub_1001C60E4(v150, v141);
      sub_1000073B4(v34, &unk_1006C7FD0);
    }
  }

  v52 = 2;
  v53 = 2;
LABEL_12:
  v54 = v170;
  v55 = v171;
  v56 = v158;
  v57 = v143;
  v58 = [v143 currentReplicaID];

  v59 = v157;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v60 = objc_allocWithZone(ICTableVersionedDocument);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v62 = [v60 initWithColumnCount:v53 rowCount:v52 replicaID:isa];

  (v56[1])(v59, v55);
  v63 = [v57 addAttachmentWithUTI:ICAttachmentUTTypeTable];
  v141 = v62;
  v64 = [v62 serialize];
  v65 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = v66;

  v68 = Data._bridgeToObjectiveC()().super.isa;
  sub_10019671C(v65, v67);
  [v63 setMergeableData:v68];

  IntentParameter.wrappedValue.getter();
  if (!*(&v180 + 1))
  {
    v104 = v151;
    v103 = v142;
LABEL_61:
    v131 = objc_allocWithZone(ICAttachmentInsertionController);
    v132 = [v131 initWithNote:v143];
    v133 = v132;
    if (*(v169 + 40))
    {
      v134 = [v132 addAttachment:v63];
    }

    else
    {
      v134 = [v132 addAttachment:v63 atTextRange:{*(v169 + 24), *(v169 + 32)}];
    }

    *&v180 = 0;
    if ([v103 save:&v180])
    {
      v135 = v180;
      v136 = [v63 objectID];

      sub_1000073B4(v148, &unk_1006C7FD0);
      *v154 = v136;
      return;
    }

    v137 = v180;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_67;
  }

  v140 = v63;
  v170 = v54;
  v139 = v180;
  *&v177 = 0;
  *(&v177 + 1) = 0xE000000000000000;
  v69 = sub_10019208C(_swiftEmptyArrayStorage);
  if (v53 < 1)
  {
    goto LABEL_71;
  }

  v70 = v69;
  LODWORD(v157) = enum case for CSVType.string(_:);
  v158 = (v174 + 13);
  v171 = v174 + 4;
  v145 = (v174 + 5);
  v71 = 1;
  v72 = v175;
  v150 = v53;
  do
  {
    *&v180 = v71;
    v73 = dispatch thunk of CustomStringConvertible.description.getter();
    v75 = v74;
    if (v71 != 1)
    {
      v76._countAndFlagsBits = 44;
      v76._object = 0xE100000000000000;
      String.append(_:)(v76);
    }

    v77._countAndFlagsBits = v73;
    v77._object = v75;
    String.append(_:)(v77);
    v78 = v173;
    v149 = *v158;
    v149(v173, v157, v72);
    v79 = *v171;
    (*v171)(v176, v78, v72);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v180 = v70;
    v82 = sub_1002DF11C(v73, v75);
    v83 = v70[2];
    v84 = (v81 & 1) == 0;
    v85 = v83 + v84;
    if (__OFADD__(v83, v84))
    {
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v86 = v81;
    if (v70[3] >= v85)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v43 = v174;
        if (v81)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_1002E9CA4();
        v43 = v174;
        if (v86)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      sub_1002E53D0(v85, isUniquelyReferenced_nonNull_native);
      v87 = sub_1002DF11C(v73, v75);
      if ((v86 & 1) != (v88 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }

      v82 = v87;
      v43 = v174;
      if (v86)
      {
LABEL_24:

        v70 = v180;
        v72 = v175;
        (v43[5])(*(v180 + 56) + v43[9] * v82, v176, v175);
        goto LABEL_28;
      }
    }

    v70 = v180;
    *(v180 + 8 * (v82 >> 6) + 64) |= 1 << v82;
    v89 = (v70[6] + 16 * v82);
    *v89 = v73;
    v89[1] = v75;
    v72 = v175;
    v79(v70[7] + v43[9] * v82, v176, v175);
    v90 = v70[2];
    v91 = __OFADD__(v90, 1);
    v92 = v90 + 1;
    if (v91)
    {
      goto LABEL_69;
    }

    v70[2] = v92;
LABEL_28:
    if (v150 == v71)
    {
      v93._countAndFlagsBits = 10;
      v93._object = 0xE100000000000000;
      String.append(_:)(v93);
      v180 = v139;
      v178 = v177;
      *&v178 = String.init<A>(_:)();
      *(&v178 + 1) = v94;
      String.append<A>(contentsOf:)();

      v95 = [v140 attachmentModel];
      objc_opt_self();
      v96 = swift_dynamicCastObjCClass();
      if (v96)
      {
        v97 = v96;
        v173 = v95;
        v98 = v160;
        static String.Encoding.utf8.getter();
        v99 = String.data(using:allowLossyConversion:)();
        v101 = v100;

        (*(v161 + 8))(v98, v162);
        v102 = v170;
        v103 = v142;
        v104 = v151;
        if (v101 >> 60 == 15)
        {

LABEL_60:
          v63 = v140;
          goto LABEL_61;
        }

        v176 = sub_100417694(&off_10064D5C8);
        swift_arrayDestroy();
        sub_100417694(&off_10064D628);
        v108 = v99;
        swift_arrayDestroy();
        v149(v155, enum case for CSVType.double(_:), v72);
        v109 = v153;
        CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)();
        v110 = v156;
        (*(v156 + 16))(v146, v109, v159);
        sub_1001C4E38(v99, v101);
        v171 = v101;
        DataFrame.init(csvData:columns:rows:types:options:)();
        if (v102)
        {

          sub_1001C60E4(v99, v171);
          (*(v110 + 8))(v109, v159);
LABEL_67:
          sub_1000073B4(v148, &unk_1006C7FD0);
          return;
        }

        v170 = 0;
        v116 = v163;
        DataFrame.rows.getter();
        v117 = DataFrame.Rows.count.getter();
        v118 = *(v167 + 8);
        v167 += 8;
        v176 = v118;
        (v118)(v116, v164);
        if (v117 < 0)
        {
LABEL_72:
          __break(1u);
        }

        v119 = v172;
        v120 = v168;
        if (v117)
        {
          v121 = 0;
          v174 = (v152 + 8);
          v175 = v117;
          while (1)
          {
            v122 = v163;
            DataFrame.rows.getter();
            DataFrame.Rows.subscript.getter();
            (v176)(v122, v164);
            v123 = DataFrame.Row.count.getter();
            if (v123 < 0)
            {
              break;
            }

            v124 = v123;
            if (v123)
            {
              v125 = 0;
              do
              {
                DataFrame.Row.subscript.getter();
                if (v179)
                {
                  sub_10001FA64(&v178, &v180);
                  v126 = [v97 table];
                  sub_10000A2A0(&v180, &v178);
                  String.init<A>(describing:)();
                  v127 = objc_allocWithZone(NSAttributedString);
                  v128 = String._bridgeToObjectiveC()();

                  v129 = v127;
                  v99 = v108;
                  v130 = [v129 initWithString:v128];

                  [v126 setAttributedString:v130 columnIndex:v125 rowIndex:v121];
                  v119 = v172;
                  sub_100009F60(&v180);
                }

                else
                {
                  sub_1000073B4(&v178, &qword_1006BE7A0);
                }

                ++v125;
              }

              while (v124 != v125);
            }

            ++v121;
            (*v174)(v119, v147);
            v120 = v168;
            if (v121 == v175)
            {
              goto LABEL_58;
            }
          }

LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

LABEL_58:
        [v97 writeMergeableData];

        sub_1001C60E4(v99, v171);
        (*(v165 + 8))(v120, v166);
        (*(v156 + 8))(v153, v159);
      }

      else
      {
      }

      v103 = v142;
      v104 = v151;
      goto LABEL_60;
    }

    v91 = __OFADD__(v71++, 1);
  }

  while (!v91);
  __break(1u);
LABEL_32:

  sub_100197CCC();
  swift_allocError();
  v45 = 16;
LABEL_34:
  *v44 = v45;
  swift_willThrow();
}