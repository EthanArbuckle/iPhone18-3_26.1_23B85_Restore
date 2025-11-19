id sub_1004B74CC()
{
  sub_10015DA04(&unk_1006BD390);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100531E20;
  *(v0 + 32) = sub_1004B5A8C();
  *(v0 + 40) = sub_1004B5C64();
  v1 = objc_allocWithZone(UIStackView);
  sub_1000054A4(0, &qword_1006C95E0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithArrangedSubviews:isa];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setAxis:0];
  [v3 setAlignment:3];
  return v3;
}

id sub_1004B75D0(char *a1)
{
  v2 = type metadata accessor for UIListContentConfiguration();
  __chkstk_darwin(v2 - 8);
  sub_1000054A4(0, &qword_1006C5038);
  static UIListContentConfiguration.cell()();
  v3 = UIListContentView.init(configuration:)();
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v4) = 1148846080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v4];
  LODWORD(v5) = 1148846080;
  [v3 setContentCompressionResistancePriority:1 forAxis:v5];
  LODWORD(v6) = 1132068864;
  [v3 setContentHuggingPriority:0 forAxis:v6];
  v7 = [v3 widthAnchor];

  [a1 frame];
  v9 = [v7 constraintLessThanOrEqualToConstant:v8];

  v10 = *&a1[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_listContentViewWidthConstraint];
  *&a1[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_listContentViewWidthConstraint] = v9;

  return v3;
}

id sub_1004B7750()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FolderComposerFilterCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004B7914(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_1004B7924(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1004B7934()
{
  _typeName(_:qualified:)();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() storyboardWithName:v2 bundle:v1];

  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 instantiateViewControllerWithIdentifier:v4];

  v8[3] = sub_1000054A4(0, &unk_1006C8180);
  v8[0] = v5;
  v6 = sub_1001C9104(v8);

  sub_100009F60(v8);
  return v6;
}

void sub_1004B7A70(void *a1)
{
  v3 = [a1 presentedViewController];
  if (v3)
  {

    v4 = [a1 presentedViewController];
    if (v4)
    {
      v5 = v4;
      v6 = swift_allocObject();
      *(v6 + 16) = a1;
      *(v6 + 24) = v1;
      aBlock[4] = sub_1004B91F0;
      aBlock[5] = v6;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10028DCE8;
      aBlock[3] = &unk_100660E30;
      v7 = _Block_copy(aBlock);
      v8 = a1;

      [v5 dismissViewControllerAnimated:1 completion:v7];
      _Block_release(v7);
    }
  }

  else
  {
    v9 = sub_1004B7934();
    [a1 presentViewController:v9 animated:1 completion:0];
  }
}

void sub_1004B7BD4()
{
  v21 = [objc_opt_self() ICTintColor];
  v1 = (*((swift_isaMask & *v0) + 0xE8))();
  v2 = v1;
  v22 = *(v1 + 16);
  if (v22)
  {
    v3 = 0;
    left = UIEdgeInsetsZero.left;
    v5 = v1 + 56;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v20 = v1;
    while (v3 < *(v2 + 16))
    {
      v23 = v3;
      v8 = *(v5 - 24);
      swift_bridgeObjectRetain_n();
      v9 = v8;
      v10 = [v9 text];
      if (!v10)
      {
        goto LABEL_13;
      }

      v11 = v10;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10019E0AC();
      LOBYTE(v11) = StringProtocol.contains<A>(_:)();

      if (v11)
      {
        sub_1004B853C();
        v12 = [v9 text];
        if (!v12)
        {
          goto LABEL_14;
        }

        v13 = v12;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

        v14 = String._bridgeToObjectiveC()();

        [v9 setText:v14];

        [v9 setSelectable:1];
        [v9 _setInteractiveTextSelectionDisabled:1];
        [v9 setTextContainerInset:{UIEdgeInsetsZero.top, left, bottom, right}];
        v15 = [v9 textContainer];
        [v15 setLineFragmentPadding:0.0];

        v16 = [v9 attributedText];
        if (!v16)
        {
          goto LABEL_15;
        }

        v17 = v16;

        __chkstk_darwin(v18);
        v19 = NSAttributedString.withMutations(_:)();

        [v9 setAttributedText:v19];

        v2 = v20;
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v3 = v23 + 1;
      v5 += 32;
      if (v22 == v23 + 1)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_11:
  }
}

id sub_1004B7F94()
{
  result = [objc_opt_self() configurationWithFont:*(v0 + OBJC_IVAR___ICLearnMoreViewController_textViewFont)];
  v11 = result;
  v2 = *(v0 + OBJC_IVAR___ICLearnMoreViewController_textViews);
  if (v2)
  {
    if (v2 >> 62)
    {
LABEL_17:
      v3 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v3)
    {
LABEL_14:
    }

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
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      result = [v5 attributedText];
      if (!result)
      {
        break;
      }

      v8 = result;
      swift_allocObject();
      v9 = swift_unknownObjectWeakInit();
      __chkstk_darwin(v9);
      v10 = NSAttributedString.withMutations(_:)();

      [v6 setAttributedText:v10];

      ++v4;
      if (v7 == v3)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1004B817C()
{
  v1 = *(v0 + OBJC_IVAR___ICLearnMoreViewController_headerLabels);
  if (!v1)
  {
    goto LABEL_29;
  }

  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    v3 = &selRef_setContextInteraction_;
    if (!v2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = &selRef_setContextInteraction_;
    if (!v2)
    {
      goto LABEL_11;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v4 = *(v0 + OBJC_IVAR___ICLearnMoreViewController_headerFont);

  for (i = 0; i != v2; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v1 + 8 * i + 32);
    }

    v7 = v6;
    [v6 v3[160]];
  }

LABEL_11:
  v8 = *(v0 + OBJC_IVAR___ICLearnMoreViewController_textViews);
  if (!v8)
  {
LABEL_30:
    __break(1u);
    return;
  }

  if (v8 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return;
    }
  }

  if (v9 < 1)
  {
    goto LABEL_28;
  }

  v10 = *(v0 + OBJC_IVAR___ICLearnMoreViewController_textViewFont);

  v11 = 0;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v12 = *(v8 + 8 * v11 + 32);
    }

    v13 = v12;
    ++v11;
    [v12 v3[160]];
    v14 = [v13 textContainer];
    [v14 setLineFragmentPadding:0.0];
  }

  while (v9 != v11);
}

void sub_1004B837C()
{
  v10 = [objc_opt_self() ICTintColor];
  v1 = *(v0 + OBJC_IVAR___ICLearnMoreViewController_textViews);
  if (v1)
  {
    if (v1 >> 62)
    {
LABEL_17:
      v2 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v2)
    {
LABEL_14:

      return;
    }

    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = [v4 attributedText];
      if (!v7)
      {
        break;
      }

      v8 = v7;
      __chkstk_darwin(v7);
      v9 = NSAttributedString.withMutations(_:)();

      [v5 setAttributedText:v9];
      ++v3;
      if (v6 == v2)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1004B853C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

Class sub_1004B8728(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  if (*(a1 + *a3))
  {
    sub_1000054A4(0, a4);

    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_1004B87B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, void *a6)
{
  if (a3)
  {
    sub_1000054A4(0, a4);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = 0;
  }

  *(a1 + *a6) = v8;
}

id sub_1004B899C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [a1 string];
  if (result)
  {
    v7 = result;
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 rangeOfString:v8];
    v11 = v10;

    result = NSNotFound.getter();
    if (v9 != result)
    {
      v12 = String._bridgeToObjectiveC()();
      [a1 addAttribute:NSLinkAttributeName value:v12 range:{v9, v11}];

      return [a1 addAttribute:NSForegroundColorAttributeName value:a4 range:{v9, v11}];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1004B8AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v4 = (*((swift_isaMask & *Strong) + 0xE0))();
    v5 = v4;
    v6 = 0;
    v7 = v4 + 64;
    v8 = 1 << *(v4 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v4 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
LABEL_11:
      v13 = (*(v5 + 56) + ((v6 << 10) | (16 * __clz(__rbit64(v10)))));
      v14 = *v13;
      v15 = v13[1];

      v16 = String._bridgeToObjectiveC()();

      v17 = [objc_opt_self() systemImageNamed:v16 withConfiguration:a3];

      if (v17)
      {
        v18 = [objc_opt_self() ICTintColor];
        v19 = [v17 imageWithTintColor:v18];

        if (v19)
        {
          v20._countAndFlagsBits = v14;
          v20._object = v15;
          NSMutableAttributedString.replace(placeholder:with:)(v20, v19);
        }
      }

      v10 &= v10 - 1;
    }

    while (1)
    {
      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v12 >= v11)
      {

        return;
      }

      v10 = *(v7 + 8 * v12);
      ++v6;
      if (v10)
      {
        v6 = v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1004B8CE0(uint64_t a1, void *a2, void *a3)
{
  sub_10015DA04(&unk_1006C8190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100535E30;
  *(inited + 32) = NSFontAttributeName;
  v6 = sub_1000054A4(0, &unk_1006C95C0);
  *(inited + 40) = a2;
  *(inited + 64) = v6;
  *(inited + 72) = NSForegroundColorAttributeName;
  *(inited + 104) = sub_1000054A4(0, &qword_1006BDAC0);
  *(inited + 80) = a3;
  v7 = NSFontAttributeName;
  v8 = a2;
  v9 = NSForegroundColorAttributeName;
  v10 = a3;
  v11 = sub_1001901EC(inited);
  swift_setDeallocating();
  sub_10015DA04(&qword_1006C81A0);
  swift_arrayDestroy();
  NSMutableAttributedString.formatHashtags(with:)(v11);
}

id sub_1004B8E0C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___ICLearnMoreViewController_headerLabels] = 0;
  *&v3[OBJC_IVAR___ICLearnMoreViewController_textViews] = 0;
  v7 = OBJC_IVAR___ICLearnMoreViewController_headerFont;
  v8 = objc_opt_self();
  v9 = [v8 preferredFontForTextStyle:UIFontTextStyleTitle3];
  isa = UIFont.withBoldTrait()().super.isa;

  *&v4[v7] = isa;
  v11 = OBJC_IVAR___ICLearnMoreViewController_textViewFont;
  *&v4[v11] = [v8 preferredFontForTextStyle:UIFontTextStyleBody];
  if (a2)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v4;
  v15.super_class = type metadata accessor for LearnMoreViewController();
  v13 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", v12, a3);

  return v13;
}

id sub_1004B8FB8(void *a1)
{
  v2 = v1;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___ICLearnMoreViewController_headerLabels] = 0;
  *&v1[OBJC_IVAR___ICLearnMoreViewController_textViews] = 0;
  v4 = OBJC_IVAR___ICLearnMoreViewController_headerFont;
  v5 = objc_opt_self();
  v6 = [v5 preferredFontForTextStyle:UIFontTextStyleTitle3];
  isa = UIFont.withBoldTrait()().super.isa;

  *&v2[v4] = isa;
  v8 = OBJC_IVAR___ICLearnMoreViewController_textViewFont;
  *&v2[v8] = [v5 preferredFontForTextStyle:UIFontTextStyleBody];
  v11.receiver = v2;
  v11.super_class = type metadata accessor for LearnMoreViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);

  if (v9)
  {
  }

  return v9;
}

id sub_1004B9100()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LearnMoreViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004B91F0()
{
  v1 = *(v0 + 16);
  v2 = sub_1004B7934();
  [v1 presentViewController:v2 animated:1 completion:0];
}

__n128 sub_1004B9250(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1004B9264(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1004B92AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1004B9314()
{
  result = qword_1006CA590;
  if (!qword_1006CA590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA590);
  }

  return result;
}

double SetChecklistItemsCheckedIntent.init()@<D0>(uint64_t a1@<X8>)
{
  sub_1004BDA84(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t SetChecklistItemsCheckedIntent.note.setter(uint64_t a1)
{
  v2 = sub_10015DA04(&unk_1006BCAC0);
  __chkstk_darwin(v2 - 8);
  sub_100006038(a1, &v5 - v3, &unk_1006BCAC0);
  IntentParameter.wrappedValue.setter();
  return sub_1000073B4(a1, &unk_1006BCAC0);
}

uint64_t sub_1004B948C()
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
  sub_100025918(v6, static SetChecklistItemsCheckedIntent.title);
  sub_10002597C(v6, static SetChecklistItemsCheckedIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t static SetChecklistItemsCheckedIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t static SetChecklistItemsCheckedIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006CA5A0);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006CA5A8);
  __chkstk_darwin(v1);
  sub_10021B5CC();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006CA5B8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x2065687420;
  v3._object = 0xE500000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006CA5C0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._object = 0x8000000100576B80;
  v4._countAndFlagsBits = 0xD000000000000014;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  sub_10015DA04(&unk_1006CA5C8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t (*SetChecklistItemsCheckedIntent.changeOperation.modify(uint64_t *a1))()
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

uint64_t (*SetChecklistItemsCheckedIntent.entities.modify(uint64_t *a1))()
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

uint64_t (*SetChecklistItemsCheckedIntent.note.modify(uint64_t *a1))()
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

uint64_t (*SetChecklistItemsCheckedIntent.loggingConfiguration.modify(uint64_t *a1))()
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

uint64_t SetChecklistItemsCheckedIntent.perform()(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = type metadata accessor for ChecklistItemEntity();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v2[15] = *(v4 + 64);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = sub_10015DA04(&qword_1006C6490);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_1004B9F58, 0, 0);
}

uint64_t sub_1004B9F58()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = *(v3 + 56);
  *(v0 + 224) = v5;
  *(v0 + 232) = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v2);
  *(v0 + 240) = *(v4 + 8);
  IntentParameter.wrappedValue.getter();
  v9 = *(v0 + 40);
  *(v0 + 248) = v9;
  v10 = v9[2];
  *(v0 + 256) = v10;
  if (v10)
  {
    v12 = *(v0 + 112);
    v11 = *(v0 + 120);
    v13 = *(v0 + 96);
    *(v0 + 264) = 0;
    if (!v9[2])
    {
      __break(1u);
      return NSManagedObjectContext.perform<A>(_:)(v9, v6, v7, v8);
    }

    v14 = *(v0 + 160);
    v15 = *(v0 + 168);
    v16 = *(v12 + 80);
    v30 = (v16 + 16) & ~v16;
    v29 = v11 + v30;
    *(v0 + 392) = v16;
    sub_100247CF0(v9 + ((v16 + 32) & ~v16), v15, type metadata accessor for ChecklistItemEntity);
    *(v0 + 272) = v13[4];
    AppDependency.wrappedValue.getter();
    v17 = *(v0 + 56);
    *(v0 + 280) = [v17 modernManagedObjectContext];

    sub_100247CF0(v15, v14, type metadata accessor for ChecklistItemEntity);
    *(v0 + 288) = *v13;
    *(v0 + 296) = v13[2];
    *(v0 + 304) = v13[3];
    v18 = swift_allocObject();
    *(v0 + 312) = v18;
    sub_1001A1ACC(v14, v18 + v30);
    v19 = v18 + ((v29 + 7) & 0xFFFFFFFFFFFFFFF8);
    v20 = v13[4];
    v21 = *(v13 + 1);
    *v19 = *v13;
    *(v19 + 16) = v21;
    *(v19 + 32) = v20;

    v22 = swift_task_alloc();
    *(v0 + 320) = v22;
    v8 = sub_10015DA04(&qword_1006BE058);
    *v22 = v0;
    v22[1] = sub_1004BA2F4;
    v6 = sub_1004BE590;
    v9 = (v0 + 48);
    v7 = v18;
  }

  else
  {
    v23 = *(v0 + 96);

    AppDependency.wrappedValue.getter();
    v24 = *(v0 + 64);
    *(v0 + 360) = [v24 modernManagedObjectContext];

    v25 = swift_allocObject();
    *(v0 + 368) = v25;
    v26 = *(v23 + 32);
    v27 = *(v23 + 16);
    *(v25 + 16) = *v23;
    *(v25 + 32) = v27;
    *(v25 + 48) = v26;

    v9 = swift_task_alloc();
    *(v0 + 376) = v9;
    *v9 = v0;
    v9[1] = sub_1004BB104;
    v6 = sub_1004BE734;
    v8 = &type metadata for () + 8;
    v7 = v25;
  }

  return NSManagedObjectContext.perform<A>(_:)(v9, v6, v7, v8);
}

uint64_t sub_1004BA2F4()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 280);

    return _swift_task_switch(sub_1004BA438, 0, 0);
  }
}

uint64_t sub_1004BA438()
{
  v1 = *(v0 + 48);
  *(v0 + 328) = v1;
  if (!v1)
  {
    v19 = *(v0 + 168);
LABEL_7:
    v15 = sub_10040D4E8(v19, type metadata accessor for ChecklistItemEntity);
    goto LABEL_8;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    v20 = *(v0 + 168);

    v19 = v20;
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [v2 managedObjectContext];
  *(v0 + 336) = v4;
  if (v4)
  {
    v5 = *(v0 + 160);
    v6 = *(v0 + 96);
    v7 = (*(v0 + 392) + 24) & ~*(v0 + 392);
    v8 = *(v0 + 120) + v7;
    sub_100247CF0(*(v0 + 168), v5, type metadata accessor for ChecklistItemEntity);
    v9 = swift_allocObject();
    *(v0 + 344) = v9;
    *(v9 + 16) = v3;
    sub_1001A1ACC(v5, v9 + v7);
    v10 = v9 + ((v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = *(v6 + 32);
    v12 = *(v6 + 16);
    *v10 = *v6;
    *(v10 + 16) = v12;
    *(v10 + 32) = v11;

    v13 = v1;
    v14 = swift_task_alloc();
    *(v0 + 352) = v14;
    *v14 = v0;
    v14[1] = sub_1004BAAF8;
    v15 = *(v0 + 208);
    v16 = *(v0 + 176);
    v17 = sub_1004BE698;
    v18 = v9;
    goto LABEL_12;
  }

  v39 = *(v0 + 224);
  v40 = *(v0 + 208);
  v41 = *(v0 + 104);
  sub_10040D4E8(*(v0 + 168), type metadata accessor for ChecklistItemEntity);

  v39(v40, 1, 1, v41);
  v42 = *(v0 + 200);
  v44 = *(v0 + 104);
  v43 = *(v0 + 112);
  sub_1004BE628(*(v0 + 208), v42);
  v45 = *(v43 + 48);
  if (v45(v42, 1, v44) == 1)
  {
    v15 = sub_1000073B4(*(v0 + 200), &qword_1006C6490);
  }

  else
  {
    v46 = *(v0 + 216);
    v47 = *(v0 + 192);
    v48 = *(v0 + 104);
    sub_1001A1ACC(*(v0 + 200), *(v0 + 152));
    sub_100006038(v46, v47, &qword_1006C6490);
    if (v45(v47, 1, v48) == 1)
    {
      v49 = *(v0 + 224);
      v50 = *(v0 + 216);
      v51 = *(v0 + 192);
      v52 = *(v0 + 152);
      v53 = *(v0 + 104);
      sub_1000073B4(v50, &qword_1006C6490);
      sub_1000073B4(v51, &qword_1006C6490);
      sub_1001A1ACC(v52, v50);
      v15 = v49(v50, 0, 1, v53);
    }

    else
    {
      v54 = *(v0 + 192);
      sub_10040D4E8(*(v0 + 152), type metadata accessor for ChecklistItemEntity);
      v15 = sub_1000073B4(v54, &qword_1006C6490);
    }
  }

LABEL_8:
  v21 = *(v0 + 264) + 1;
  if (v21 == *(v0 + 256))
  {
    v22 = *(v0 + 96);

    AppDependency.wrappedValue.getter();
    v23 = *(v0 + 64);
    *(v0 + 360) = [v23 modernManagedObjectContext];

    v24 = swift_allocObject();
    *(v0 + 368) = v24;
    v25 = *(v22 + 32);
    v26 = *(v22 + 16);
    *(v24 + 16) = *v22;
    *(v24 + 32) = v26;
    *(v24 + 48) = v25;

    v15 = swift_task_alloc();
    *(v0 + 376) = v15;
    *v15 = v0;
    v15[1] = sub_1004BB104;
    v17 = sub_1004BE734;
    v16 = &type metadata for () + 8;
    v18 = v24;
  }

  else
  {
    *(v0 + 264) = v21;
    v27 = *(v0 + 248);
    if (v21 >= *(v27 + 16))
    {
      __break(1u);
      return NSManagedObjectContext.perform<A>(_:)(v15, v17, v18, v16);
    }

    v28 = *(v0 + 160);
    v29 = *(v0 + 168);
    v30 = *(v0 + 112);
    v31 = *(v0 + 96);
    v32 = *(v30 + 80);
    v56 = *(v0 + 120) + ((v32 + 16) & ~v32);
    *(v0 + 392) = *(v30 + 80);
    sub_100247CF0(v27 + ((v32 + 32) & ~v32) + *(v30 + 72) * v21, v29, type metadata accessor for ChecklistItemEntity);
    *(v0 + 272) = v31[4];
    AppDependency.wrappedValue.getter();
    v33 = *(v0 + 56);
    *(v0 + 280) = [v33 modernManagedObjectContext];

    sub_100247CF0(v29, v28, type metadata accessor for ChecklistItemEntity);
    *(v0 + 288) = *v31;
    *(v0 + 296) = v31[2];
    *(v0 + 304) = v31[3];
    v34 = swift_allocObject();
    *(v0 + 312) = v34;
    sub_1001A1ACC(v28, v34 + ((v32 + 16) & ~v32));
    v35 = v34 + ((v56 + 7) & 0xFFFFFFFFFFFFFFF8);
    v36 = v31[4];
    v37 = *(v31 + 1);
    *v35 = *v31;
    *(v35 + 16) = v37;
    *(v35 + 32) = v36;

    v38 = swift_task_alloc();
    *(v0 + 320) = v38;
    v16 = sub_10015DA04(&qword_1006BE058);
    *v38 = v0;
    v38[1] = sub_1004BA2F4;
    v17 = sub_1004BE590;
    v15 = (v0 + 48);
    v18 = v34;
  }

LABEL_12:

  return NSManagedObjectContext.perform<A>(_:)(v15, v17, v18, v16);
}

uint64_t sub_1004BAAF8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 336);

    return _swift_task_switch(sub_1004BAC38, 0, 0);
  }
}

uint64_t sub_1004BAC38()
{
  v1 = *(v0 + 168);

  sub_10040D4E8(v1, type metadata accessor for ChecklistItemEntity);
  v2 = *(v0 + 200);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  sub_1004BE628(*(v0 + 208), v2);
  v5 = *(v4 + 48);
  if (v5(v2, 1, v3) == 1)
  {
    v6 = *(v0 + 200);
  }

  else
  {
    v7 = *(v0 + 216);
    v8 = *(v0 + 192);
    v9 = *(v0 + 104);
    sub_1001A1ACC(*(v0 + 200), *(v0 + 152));
    sub_100006038(v7, v8, &qword_1006C6490);
    if (v5(v8, 1, v9) == 1)
    {
      v10 = *(v0 + 224);
      v11 = *(v0 + 216);
      v12 = *(v0 + 192);
      v13 = *(v0 + 152);
      v14 = *(v0 + 104);
      sub_1000073B4(v11, &qword_1006C6490);
      sub_1000073B4(v12, &qword_1006C6490);
      sub_1001A1ACC(v13, v11);
      v15 = v10(v11, 0, 1, v14);
      goto LABEL_7;
    }

    v19 = *(v0 + 192);
    sub_10040D4E8(*(v0 + 152), type metadata accessor for ChecklistItemEntity);
    v6 = v19;
  }

  v15 = sub_1000073B4(v6, &qword_1006C6490);
LABEL_7:
  v20 = *(v0 + 264) + 1;
  if (v20 == *(v0 + 256))
  {
    v21 = *(v0 + 96);

    AppDependency.wrappedValue.getter();
    v22 = *(v0 + 64);
    *(v0 + 360) = [v22 modernManagedObjectContext];

    v23 = swift_allocObject();
    *(v0 + 368) = v23;
    v24 = *(v21 + 32);
    v25 = *(v21 + 16);
    *(v23 + 16) = *v21;
    *(v23 + 32) = v25;
    *(v23 + 48) = v24;

    v15 = swift_task_alloc();
    *(v0 + 376) = v15;
    *v15 = v0;
    v15[1] = sub_1004BB104;
    v16 = sub_1004BE734;
    v18 = &type metadata for () + 8;
    v17 = v23;
  }

  else
  {
    *(v0 + 264) = v20;
    v26 = *(v0 + 248);
    if (v20 >= *(v26 + 16))
    {
      __break(1u);
      return NSManagedObjectContext.perform<A>(_:)(v15, v16, v17, v18);
    }

    v27 = *(v0 + 160);
    v28 = *(v0 + 168);
    v29 = *(v0 + 112);
    v30 = *(v0 + 96);
    v31 = *(v29 + 80);
    v39 = *(v0 + 120) + ((v31 + 16) & ~v31);
    *(v0 + 392) = *(v29 + 80);
    sub_100247CF0(v26 + ((v31 + 32) & ~v31) + *(v29 + 72) * v20, v28, type metadata accessor for ChecklistItemEntity);
    *(v0 + 272) = v30[4];
    AppDependency.wrappedValue.getter();
    v32 = *(v0 + 56);
    *(v0 + 280) = [v32 modernManagedObjectContext];

    sub_100247CF0(v28, v27, type metadata accessor for ChecklistItemEntity);
    *(v0 + 288) = *v30;
    *(v0 + 296) = v30[2];
    *(v0 + 304) = v30[3];
    v33 = swift_allocObject();
    *(v0 + 312) = v33;
    sub_1001A1ACC(v27, v33 + ((v31 + 16) & ~v31));
    v34 = v33 + ((v39 + 7) & 0xFFFFFFFFFFFFFFF8);
    v35 = v30[4];
    v36 = *(v30 + 1);
    *v34 = *v30;
    *(v34 + 16) = v36;
    *(v34 + 32) = v35;

    v37 = swift_task_alloc();
    *(v0 + 320) = v37;
    v18 = sub_10015DA04(&qword_1006BE058);
    *v37 = v0;
    v37[1] = sub_1004BA2F4;
    v16 = sub_1004BE590;
    v15 = (v0 + 48);
    v17 = v33;
  }

  return NSManagedObjectContext.perform<A>(_:)(v15, v16, v17, v18);
}

uint64_t sub_1004BB104()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  v3 = *(v2 + 360);

  if (v0)
  {
    v4 = sub_1004BB5F8;
  }

  else
  {
    v4 = sub_1004BB250;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004BB250()
{
  v1 = v0[23];
  v2 = v0[13];
  v3 = v0[14];
  sub_100006038(v0[27], v1, &qword_1006C6490);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[27];
    sub_1000073B4(v0[23], &qword_1006C6490);
    type metadata accessor for ICError(0);
    v0[10] = 227;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_1004BEDA4(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    sub_1000073B4(v4, &qword_1006C6490);
  }

  else
  {
    v6 = v0[20];
    v7 = v0[18];
    v8 = v0[16];
    v9 = v0[17];
    v16 = v0[27];
    sub_1001A1ACC(v0[23], v7);
    sub_100247CF0(v7, v6, type metadata accessor for ChecklistItemEntity);
    v10 = _s11MobileNotes23OpenChecklistItemIntentVACycfC_0();
    v12 = v11;
    v14 = v13;
    sub_100247CF0(v6, v9, type metadata accessor for ChecklistItemEntity);
    sub_100247CF0(v9, v8, type metadata accessor for ChecklistItemEntity);
    IntentParameter.wrappedValue.setter();
    sub_10040D4E8(v9, type metadata accessor for ChecklistItemEntity);
    sub_10040D4E8(v6, type metadata accessor for ChecklistItemEntity);
    v0[2] = v10;
    v0[3] = v12;
    v0[4] = v14;
    sub_1004BEDA4(&unk_1006C6120, type metadata accessor for ChecklistItemEntity);
    sub_10002104C();
    static IntentResult.result<A, B>(value:opensIntent:)();
    sub_10040D4E8(v7, type metadata accessor for ChecklistItemEntity);
    sub_1000073B4(v16, &qword_1006C6490);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1004BB5F8()
{
  sub_1000073B4(*(v0 + 216), &qword_1006C6490);

  v1 = *(v0 + 8);

  return v1();
}

void sub_1004BB700(void *a1@<X8>)
{
  AppDependency.wrappedValue.getter();
  v2 = ChecklistItemEntity.note(in:)(v3);

  *a1 = v2;
}

uint64_t sub_1004BB764@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v74 = *(v8 - 8);
  v75 = v8;
  __chkstk_darwin(v8);
  v73 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v72 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  v70 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v14 - 8);
  v71 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ChecklistItemID();
  __chkstk_darwin(v16 - 8);
  v76 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for ChecklistItemEntity();
  v18 = *(v78 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v78);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 textStorage];
  if (!v21)
  {
    return (*(v18 + 56))(a4, 1, 1, v78);
  }

  v22 = v21;
  v59 = a1;
  v77 = a4;
  v85 = 0;
  v69 = ICTTAttributeNameParagraphStyle;
  v23 = [v22 ic_range];
  v67 = v24;
  v68 = v23;
  v58 = a2;
  sub_100247CF0(a2, &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChecklistItemEntity);
  v25 = a3[1];
  v62 = *a3;
  v63 = v25;
  v26 = a3[3];
  v64 = a3[2];
  v65 = v26;
  v66 = a3[4];
  v61 = v18;
  v27 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v28 = (v19 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 47) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  sub_1001A1ACC(v20, v31 + v27);
  v32 = v31 + v28;
  v33 = *(a3 + 1);
  *v32 = *a3;
  *(v32 + 16) = v33;
  *(v32 + 32) = a3[4];
  *(v31 + v29) = &v85 + 1;
  *(v31 + v30) = v22;
  *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = &v85;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1004BECBC;
  *(v34 + 24) = v31;
  v60 = v31;
  v83 = sub_1001A1F54;
  v84 = v34;
  aBlock = _NSConcreteStackBlock;
  v80 = 1107296256;
  v81 = sub_1004AEAA8;
  v82 = &unk_100661168;
  v35 = _Block_copy(&aBlock);

  v36 = v22;

  v37 = v69;
  [v36 enumerateAttribute:v69 inRange:v68 options:v67 usingBlock:{0, v35}];

  _Block_release(v35);
  LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

  if (v35)
  {
    __break(1u);
  }

  else
  {
    v69 = v36;
    v39 = v59;
    if (v85 == 1)
    {
      [v59 updateModificationDateAndChangeCount];
    }

    sub_100247CF0(v58, v76, type metadata accessor for ChecklistItemID);
    v68 = [v39 objectID];
    EntityProperty.wrappedValue.getter();
    v64 = v80;
    v65 = aBlock;
    LODWORD(v67) = HIBYTE(v85);
    v40 = [v39 title];
    if (v40)
    {
      v41 = v40;
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v42;
    }

    else
    {
      v66 = 0;
      v63 = 0;
    }

    v43 = v78;
    v44 = *(v78 + 24);
    sub_10015DA04(&unk_1006C1870);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    LODWORD(v58) = enum case for LocalizedStringResource.BundleDescription.main(_:);
    v57 = *(v74 + 104);
    v45 = v73;
    v46 = v75;
    v57(v73);
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    v74 = EntityProperty<>.init(title:)();
    *(v77 + v44) = v74;
    v59 = v43[7];
    sub_10015DA04(&unk_1006BCD90);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v47 = v58;
    v48 = v46;
    v49 = v57;
    (v57)(v45, v58, v48);
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    v62 = EntityProperty<>.init(title:)();
    *(v59 + v77) = v62;
    v59 = v43[8];
    sub_10015DA04(&qword_1006C60E0);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v49(v45, v47, v75);
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    sub_1004BEDA4(&qword_1006BCAD0, type metadata accessor for NoteEntity);
    v50 = EntityProperty<>.init(title:)();
    v52 = v76;
    v51 = v77;
    *(v59 + v77) = v50;
    v53 = (v51 + v43[9]);
    *v53 = 0;
    v53[1] = 0;
    sub_100247CF0(v52, v51, type metadata accessor for ChecklistItemID);
    v54 = v68;
    v55 = [v68 URIRepresentation];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    aBlock = v65;
    v80 = v64;
    EntityProperty.wrappedValue.setter();
    LOBYTE(aBlock) = v67;
    EntityProperty.wrappedValue.setter();

    sub_10040D4E8(v52, type metadata accessor for ChecklistItemID);
    v56 = v63;
    *v53 = v66;
    v53[1] = v56;
    (*(v61 + 56))(v51, 0, 1, v43);
  }

  return result;
}

void sub_1004BC08C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, void *a8, _BYTE *a9)
{
  v62 = a3;
  v63 = a8;
  v59 = a6;
  v60 = a7;
  v61 = a2;
  v12 = type metadata accessor for UUID();
  v64 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10015DA04(&qword_1006BE0A8);
  __chkstk_darwin(v15);
  v17 = &v56 - v16;
  v18 = sub_10015DA04(&unk_1006BE0B0);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v56 - v23;
  __chkstk_darwin(v22);
  v26 = &v56 - v25;
  sub_100006038(a1, v66, &qword_1006BE7A0);
  if (!v67)
  {
    sub_1000073B4(v66, &qword_1006BE7A0);
    return;
  }

  sub_1001A1F5C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v27 = v65;
  if ([v65 style] != 103)
  {

    return;
  }

  v56 = a4;
  v28 = type metadata accessor for ChecklistItemID();
  v29 = v64;
  (*(v64 + 16))(v26, a5 + *(v28 + 20), v12);
  v30 = 1;
  v57 = *(v29 + 56);
  v57(v26, 0, 1, v12);
  v58 = v27;
  v31 = [v27 uuid];
  if (v31)
  {
    v32 = v31;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = 0;
  }

  v57(v24, v30, 1, v12);
  v33 = *(v15 + 48);
  sub_100006038(v26, v17, &unk_1006BE0B0);
  sub_100006038(v24, &v17[v33], &unk_1006BE0B0);
  v34 = *(v64 + 48);
  if (v34(v17, 1, v12) == 1)
  {
    sub_1000073B4(v24, &unk_1006BE0B0);
    sub_1000073B4(v26, &unk_1006BE0B0);
    if (v34(&v17[v33], 1, v12) == 1)
    {
      sub_1000073B4(v17, &unk_1006BE0B0);
      v35 = v58;
      goto LABEL_15;
    }

LABEL_13:
    sub_1000073B4(v17, &qword_1006BE0A8);

    return;
  }

  sub_100006038(v17, v21, &unk_1006BE0B0);
  if (v34(&v17[v33], 1, v12) == 1)
  {
    sub_1000073B4(v24, &unk_1006BE0B0);
    sub_1000073B4(v26, &unk_1006BE0B0);
    (*(v64 + 8))(v21, v12);
    goto LABEL_13;
  }

  v36 = v64;
  (*(v64 + 32))(v14, &v17[v33], v12);
  sub_1004BEDA4(&qword_1006C1820, &type metadata accessor for UUID);
  LODWORD(v57) = dispatch thunk of static Equatable.== infix(_:_:)();
  v37 = *(v36 + 8);
  v37(v14, v12);
  sub_1000073B4(v24, &unk_1006BE0B0);
  sub_1000073B4(v26, &unk_1006BE0B0);
  v37(v21, v12);
  sub_1000073B4(v17, &unk_1006BE0B0);
  v35 = v58;
  if ((v57 & 1) == 0)
  {
LABEL_21:

    return;
  }

LABEL_15:
  v38 = [v35 mutableCopy];
  if (!v38)
  {
    *v56 = 1;
    goto LABEL_21;
  }

  v39 = v38;
  IntentParameter.wrappedValue.getter();
  v40 = v66[0];
  v41 = [v35 todo];
  v42 = v41;
  v43 = v56;
  if (!v40)
  {
    if (!v41)
    {
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  if (v40 != 1)
  {
    if (!v41)
    {
      goto LABEL_27;
    }

    v45 = [v58 todo];
    if (v45)
    {
      v46 = v45;
      v47 = [v45 done];

      v44 = v47 ^ 1;
      goto LABEL_29;
    }

LABEL_28:
    v44 = 1;
    goto LABEL_29;
  }

  if (v41)
  {
    v44 = 0;
LABEL_29:
    v48 = [v42 todoWithDone:v44];

    goto LABEL_30;
  }

LABEL_27:
  v48 = 0;
LABEL_30:
  [v39 setTodo:v48];

  v49 = [v39 todo];
  if (v49)
  {
    v50 = v49;
    v51 = [v49 done];
  }

  else
  {
    v51 = 0;
  }

  *v60 = v51;
  sub_10015DA04(&unk_1006C8190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100531E30;
  v53 = ICTTAttributeNameParagraphStyle;
  *(inited + 32) = ICTTAttributeNameParagraphStyle;
  v54 = v53;
  [v39 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1001901EC(inited);
  swift_setDeallocating();
  sub_1000073B4(inited + 32, &qword_1006C81A0);
  type metadata accessor for Key(0);
  sub_1004BEDA4(&qword_1006C95D0, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v63 setAttributes:isa range:{v61, v62}];

  *a9 = 1;
  *v43 = 1;
}

void sub_1004BC874()
{
  AppDependency.wrappedValue.getter();
  v0 = [v6 modernManagedObjectContext];

  v1 = [v0 hasChanges];
  if (v1)
  {
    AppDependency.wrappedValue.getter();
    v2 = [v6 modernManagedObjectContext];

    v6 = 0;
    v3 = [v2 save:&v6];

    if (v3)
    {
      v4 = v6;
    }

    else
    {
      v5 = v6;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_1004BC9A0()
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
  sub_100025918(v10, static SetChecklistItemsCheckedIntent.CheckedChangeOperationType.typeDisplayRepresentation);
  sub_10002597C(v10, static SetChecklistItemsCheckedIntent.CheckedChangeOperationType.typeDisplayRepresentation);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v9 + 56))(v2, 1, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_1004BCCEC()
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
  sub_10015DA04(&qword_1006CA678);
  v14 = sub_10015DA04(&qword_1006CA680);
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
  v34 = sub_100192460(v44);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static SetChecklistItemsCheckedIntent.CheckedChangeOperationType.caseDisplayRepresentations = v34;
  return result;
}

uint64_t *SetChecklistItemsCheckedIntent.CheckedChangeOperationType.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_1006BCA00 != -1)
  {
    swift_once();
  }

  return &static SetChecklistItemsCheckedIntent.CheckedChangeOperationType.caseDisplayRepresentations;
}

uint64_t static SetChecklistItemsCheckedIntent.CheckedChangeOperationType.caseDisplayRepresentations.getter()
{
  if (qword_1006BCA00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static SetChecklistItemsCheckedIntent.CheckedChangeOperationType.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_1006BCA00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static SetChecklistItemsCheckedIntent.CheckedChangeOperationType.caseDisplayRepresentations = a1;
}

uint64_t (*static SetChecklistItemsCheckedIntent.CheckedChangeOperationType.caseDisplayRepresentations.modify())()
{
  if (qword_1006BCA00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t SetChecklistItemsCheckedIntent.CheckedChangeOperationType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6B63656863;
  }

  if (a1 == 1)
  {
    return 0x6B636568636E75;
  }

  return 0x656C67676F74;
}

uint64_t sub_1004BD57C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6B636568636E75;
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
    v5 = 0x6B63656863;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6B636568636E75;
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
    v9 = 0x6B63656863;
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

unint64_t sub_1004BD674@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MobileNotes30SetChecklistItemsCheckedIntentV0F19ChangeOperationTypeO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1004BD6A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6B636568636E75;
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
    v7 = 0x6B63656863;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::Int sub_1004BD6FC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1004BD798()
{
  String.hash(into:)();
}

Swift::Int sub_1004BD820()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1004BD8F0(uint64_t a1)
{
  v2 = sub_100179D1C();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1004BD93C(uint64_t a1)
{
  v2 = sub_1004BE9AC();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1004BD9D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_1001E26AC;

  return SetChecklistItemsCheckedIntent.perform()(a1);
}

uint64_t sub_1004BDA84@<X0>(uint64_t *a1@<X8>)
{
  v60 = a1;
  v1 = sub_10015DA04(&unk_1006BCAC0);
  __chkstk_darwin(v1 - 8);
  v59 = &v51 - v2;
  v3 = type metadata accessor for InputConnectionBehavior();
  v4 = *(v3 - 8);
  v74 = v3;
  v75 = v4;
  __chkstk_darwin(v3);
  v68 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10015DA04(&unk_1006BE0D0);
  v7 = __chkstk_darwin(v6 - 8);
  v73 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v72 = &v51 - v9;
  v10 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v10 - 8);
  v66 = &v51 - v11;
  v12 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Locale();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v17 - 8);
  v18 = type metadata accessor for LocalizedStringResource();
  v69 = v18;
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10015DA04(&qword_1006BCED0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v22 = *(v13 + 104);
  v23 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v53 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v62 = v12;
  v22(v15);
  v61 = v22;
  v63 = v13 + 104;
  v52 = v15;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v22)(v15, v23, v12);
  v24 = v66;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v25 = *(v19 + 56);
  v67 = v19 + 56;
  v70 = v25;
  v25(v24, 0, 1, v18);
  LOBYTE(v78) = 2;
  v26 = type metadata accessor for IntentDialog();
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v65 = v28;
  v29 = v27 + 56;
  v28(v72, 1, 1, v26);
  v28(v73, 1, 1, v26);
  v64 = enum case for InputConnectionBehavior.default(_:);
  v30 = *(v75 + 104);
  v75 += 104;
  v71 = v30;
  v30(v68);
  sub_100179D1C();
  v51 = v21;
  v58 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  v57 = sub_10015DA04(&unk_1006BCA50);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v31 = v52;
  v32 = v53;
  v33 = v62;
  v34 = v61;
  (v61)(v52, v53, v62);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v35 = v32;
  v34(v31, v32, v33);
  v36 = v66;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v70(v36, 0, 1, v69);
  v78 = 0;
  v55 = v26;
  v37 = v65;
  v56 = v29;
  v65(v72, 1, 1, v26);
  v37(v73, 1, 1, v26);
  v38 = v68;
  v71(v68, v64, v74);
  sub_1004BEDA4(&qword_1006BE070, type metadata accessor for ChecklistItemEntity);
  v57 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v54 = sub_10015DA04(&qword_1006BCB98);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v39 = v35;
  v40 = v35;
  v41 = v62;
  v42 = v61;
  (v61)(v31, v40, v62);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v42(v31, v39, v41);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v70(v36, 0, 1, v69);
  v43 = type metadata accessor for NoteEntity(0);
  (*(*(v43 - 8) + 56))(v59, 1, 1, v43);
  v44 = v55;
  v45 = v65;
  v65(v72, 1, 1, v55);
  v45(v73, 1, 1, v44);
  v71(v38, v64, v74);
  sub_1004BEDA4(&qword_1006BCAD0, type metadata accessor for NoteEntity);
  v46 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_10015DA04(&unk_1006BCA40);
  v76 = 0xD000000000000024;
  v77 = 0x800000010055CF90;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v47 = AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&qword_1006C34B0);
  v76 = 0xD000000000000021;
  v77 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  v49 = v60;
  v50 = v57;
  *v60 = v58;
  v49[1] = v50;
  v49[2] = v46;
  v49[3] = v47;
  v49[4] = result;
  return result;
}

uint64_t sub_1004BE628(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&qword_1006C6490);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004BE698@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ChecklistItemEntity() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  return sub_1004BB764(*(v1 + 16), v1 + v4, (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

unint64_t _s11MobileNotes30SetChecklistItemsCheckedIntentV0F19ChangeOperationTypeO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10064D860, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1004BE7A0()
{
  result = qword_1006CA5D8;
  if (!qword_1006CA5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA5D8);
  }

  return result;
}

unint64_t sub_1004BE7F8()
{
  result = qword_1006CA5E0;
  if (!qword_1006CA5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA5E0);
  }

  return result;
}

unint64_t sub_1004BE850()
{
  result = qword_1006CA5E8;
  if (!qword_1006CA5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA5E8);
  }

  return result;
}

unint64_t sub_1004BE8A8()
{
  result = qword_1006CA5F0;
  if (!qword_1006CA5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA5F0);
  }

  return result;
}

unint64_t sub_1004BE900()
{
  result = qword_1006CA5F8;
  if (!qword_1006CA5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA5F8);
  }

  return result;
}

unint64_t sub_1004BE954()
{
  result = qword_1006CA600;
  if (!qword_1006CA600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA600);
  }

  return result;
}

unint64_t sub_1004BE9AC()
{
  result = qword_1006CA610;
  if (!qword_1006CA610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA610);
  }

  return result;
}

unint64_t sub_1004BEA54()
{
  result = qword_1006CA620;
  if (!qword_1006CA620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA620);
  }

  return result;
}

unint64_t sub_1004BEAAC()
{
  result = qword_1006CA628;
  if (!qword_1006CA628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA628);
  }

  return result;
}

unint64_t sub_1004BEB04()
{
  result = qword_1006CA630;
  if (!qword_1006CA630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA630);
  }

  return result;
}

unint64_t sub_1004BEBA0()
{
  result = qword_1006CA648;
  if (!qword_1006CA648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA648);
  }

  return result;
}

unint64_t sub_1004BEBF8()
{
  result = qword_1006CA650;
  if (!qword_1006CA650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA650);
  }

  return result;
}

void sub_1004BECBC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v9 = *(type metadata accessor for ChecklistItemEntity() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1004BC08C(a1, a2, a3, a4, v4 + v10, v4 + v11, *(v4 + ((v11 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v11 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((((v11 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1004BEDA4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1004BEDF4()
{
  v1 = OBJC_IVAR____TtC11MobileNotes29SmartFolderComposerSwitchCell____lazy_storage___switchView;
  v2 = *(v0 + OBJC_IVAR____TtC11MobileNotes29SmartFolderComposerSwitchCell____lazy_storage___switchView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobileNotes29SmartFolderComposerSwitchCell____lazy_storage___switchView);
  }

  else
  {
    v4 = [objc_allocWithZone(UISwitch) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 addTarget:v0 action:"onDidChangeWithSender:" forControlEvents:4096];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1004BEE9C()
{
  v1 = v0;
  v2 = type metadata accessor for UIListContentConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  UICollectionViewListCell.defaultContentConfiguration()();

  UIListContentConfiguration.text.setter();
  v23[3] = v2;
  v23[4] = &protocol witness table for UIListContentConfiguration;
  v6 = sub_100180240(v23);
  (*(v3 + 16))(v6, v5, v2);
  UICollectionViewCell.contentConfiguration.setter();
  v7 = sub_1004BEDF4();
  isa = [v7 superview];

  if (!isa)
  {
    v9 = [v1 contentView];
    v10 = OBJC_IVAR____TtC11MobileNotes29SmartFolderComposerSwitchCell____lazy_storage___switchView;
    [v9 addSubview:*&v1[OBJC_IVAR____TtC11MobileNotes29SmartFolderComposerSwitchCell____lazy_storage___switchView]];

    v22 = objc_opt_self();
    sub_10015DA04(&unk_1006BD390);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100531E20;
    v12 = [*&v1[v10] trailingAnchor];
    v13 = [v1 contentView];
    v14 = [v13 trailingAnchor];

    UIListContentConfiguration.imageToTextPadding.getter();
    v16 = [v12 constraintEqualToAnchor:v14 constant:-v15];

    *(v11 + 32) = v16;
    v17 = [*&v1[v10] centerYAnchor];
    v18 = [v1 contentView];
    v19 = [v18 centerYAnchor];

    v20 = [v17 constraintEqualToAnchor:v19];
    *(v11 + 40) = v20;
    sub_1002B5EA0();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v22 activateConstraints:isa];
  }

  return (*(v3 + 8))(v5, v2);
}

id sub_1004BF410(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC11MobileNotes29SmartFolderComposerSwitchCell_onDidChange];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC11MobileNotes29SmartFolderComposerSwitchCell_text];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes29SmartFolderComposerSwitchCell____lazy_storage___switchView] = 0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

uint64_t sub_1004BF564()
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
  sub_100025918(v6, static ScanDocumentIntent.title);
  sub_10002597C(v6, static ScanDocumentIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t ScanDocumentIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BCA08 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static ScanDocumentIntent.title);
}

uint64_t static ScanDocumentIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BCA08 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static ScanDocumentIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static ScanDocumentIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t static ScanDocumentIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006CA6C8);
  __chkstk_darwin(v0 - 8);
  sub_10002170C();
  ParameterSummaryString.init(stringLiteral:)();
  return IntentParameterSummary.init(_:table:)();
}

void (*ScanDocumentIntent.loggingConfiguration.modify(uint64_t *a1))(void *a1)
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

uint64_t sub_1004BFCA8()
{
  v0 = sub_10015DA04(&qword_1006CA6C8);
  __chkstk_darwin(v0 - 8);
  ParameterSummaryString.init(stringLiteral:)();
  return IntentParameterSummary.init(_:table:)();
}

Swift::Int sub_1004BFDB8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

id sub_1004BFEFC(uint64_t a1, uint64_t (**a2)(void, void, void, void), void (*a3)(char *, uint64_t))
{
  v163 = a3;
  v168 = a2;
  v170 = type metadata accessor for UUID();
  v166 = *(v170 - 8);
  __chkstk_darwin(v170);
  v165 = v144 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10015DA04(&qword_1006CA718);
  v6 = __chkstk_darwin(v5 - 8);
  v164 = v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v169 = v144 - v8;
  v9 = sub_10015DA04(&unk_1006C1710);
  v10 = __chkstk_darwin(v9 - 8);
  v156 = v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v161 = v144 - v13;
  v14 = __chkstk_darwin(v12);
  v155 = v144 - v15;
  v16 = __chkstk_darwin(v14);
  v159 = v144 - v17;
  v18 = __chkstk_darwin(v16);
  v154 = v144 - v19;
  v20 = __chkstk_darwin(v18);
  v160 = v144 - v21;
  v22 = __chkstk_darwin(v20);
  v153 = v144 - v23;
  v24 = __chkstk_darwin(v22);
  v158 = v144 - v25;
  v26 = __chkstk_darwin(v24);
  v162 = (v144 - v27);
  v28 = __chkstk_darwin(v26);
  v152 = v144 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = v144 - v31;
  __chkstk_darwin(v30);
  v151 = v144 - v33;
  v150 = type metadata accessor for Date();
  v167 = *(v150 - 8);
  v34 = __chkstk_darwin(v150);
  v36 = v144 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v34);
  v39 = v144 - v38;
  v40 = __chkstk_darwin(v37);
  v42 = v144 - v41;
  v43 = __chkstk_darwin(v40);
  v45 = v144 - v44;
  __chkstk_darwin(v43);
  v47 = v144 - v46;
  ObjectType = swift_getObjectType();
  v49 = v3;
  v50 = v171;
  result = (v168)[4](*(v49 + 8), *(v49 + 16), v163, ObjectType);
  if (!v50)
  {
    v145 = v39;
    v146 = v42;
    v147 = v32;
    v149 = v36;
    v168 = result;
    v144[1] = 0;
    v171 = type metadata accessor for ICNoteArchiveModel();
    v52 = v151;
    sub_100006038(v3 + *(v171 + 40), v151, &unk_1006C1710);
    v53 = v167;
    v54 = *(v167 + 48);
    v55 = v150;
    v56 = v54(v52, 1, v150);
    v148 = v49;
    v157 = v54;
    if (v56 == 1)
    {
      Date.init()();
      v57 = v54(v52, 1, v55);
      v58 = v168;
      if (v57 != 1)
      {
        sub_1000073B4(v52, &unk_1006C1710);
      }
    }

    else
    {
      (*(v53 + 32))(v45, v52, v55);
      v58 = v168;
    }

    static Date.+ infix(_:_:)();
    v59 = v167;
    v60 = *(v167 + 8);
    v60(v45, v55);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v163 = v60;
    v60(v47, v55);
    v62 = v58;
    [v58 setCreationDate:isa];

    v63 = v148;
    v64 = v147;
    sub_100006038(v148 + *(v171 + 44), v147, &unk_1006C1710);
    v65 = v157;
    if (v157(v64, 1, v55) == 1)
    {
      v66 = v145;
      Date.init()();
      if (v65(v64, 1, v55) != 1)
      {
        sub_1000073B4(v64, &unk_1006C1710);
      }
    }

    else
    {
      v66 = v145;
      (*(v59 + 32))(v145, v64, v55);
    }

    v67 = v146;
    static Date.+ infix(_:_:)();
    v68 = v163;
    v163(v66, v55);
    v69 = Date._bridgeToObjectiveC()().super.isa;
    v68(v67, v55);
    v70 = v62;
    [v62 setModificationDate:v69];

    if (*(v63 + *(v171 + 48) + 8))
    {
      v71 = String._bridgeToObjectiveC()();
    }

    else
    {
      v71 = 0;
    }

    [v62 setTitle:v71];

    v72 = v171;
    [v62 setIsPinned:*(v63 + *(v171 + 52)) & 1];
    [v62 setIsSystemPaper:*(v63 + v72[14]) & 1];
    [v62 setPaperStyleType:word_1005C3D2C[*(v63 + v72[15])]];
    v73 = *(v63 + v72[16]);
    if (v73)
    {
      v74 = 2;
    }

    else
    {
      v74 = 1;
    }

    if (v73 == 2)
    {
      v75 = 0;
    }

    else
    {
      v75 = v74;
    }

    [v62 setPreferredBackgroundType:v75];
    v76 = *(v63 + v72[17]);
    v77 = v152;
    if (v76 > 1)
    {
      if (v76 == 2)
      {
        v78 = 2;
      }

      else
      {
        v78 = [v62 attachmentViewType];
      }
    }

    else
    {
      v78 = v76 != 0;
    }

    [v62 setAttachmentViewType:v78];
    if (*(v63 + *(v171 + 72) + 8))
    {
      v79 = String._bridgeToObjectiveC()();
    }

    else
    {
      v79 = 0;
    }

    [v62 setHostApplicationIdentifier:v79];

    v80 = v162;
    sub_100006038(v63 + *(v171 + 76), v162, &unk_1006C1710);
    v81 = 1;
    if (v65(v80, 1, v55) != 1)
    {
      v82 = v149;
      (*(v167 + 32))(v149, v80, v55);
      static Date.+ infix(_:_:)();
      v163(v82, v55);
      v81 = 0;
    }

    v162 = *(v167 + 56);
    (v162)(v77, v81, 1, v55);
    if (v65(v77, 1, v55) == 1)
    {
      v83 = 0;
    }

    else
    {
      v83 = Date._bridgeToObjectiveC()().super.isa;
      v163(v77, v55);
    }

    [v70 setLastOpenedDate:v83];

    v84 = v153;
    sub_100006038(v63 + *(v171 + 80), v153, &unk_1006C1710);
    v85 = 1;
    if (v65(v84, 1, v55) != 1)
    {
      v86 = v149;
      (*(v167 + 32))(v149, v84, v55);
      static Date.+ infix(_:_:)();
      v163(v86, v55);
      v85 = 0;
    }

    v87 = v158;
    (v162)(v158, v85, 1, v55);
    if (v65(v87, 1, v55) == 1)
    {
      v88 = 0;
    }

    else
    {
      v88 = Date._bridgeToObjectiveC()().super.isa;
      v163(v87, v55);
    }

    [v70 setLastActivitySummaryViewedDate:v88];

    v89 = v154;
    sub_100006038(v63 + *(v171 + 84), v154, &unk_1006C1710);
    if (v65(v89, 1, v55) != 1)
    {
      v90 = v149;
      (*(v167 + 32))(v149, v89, v55);
      static Date.+ infix(_:_:)();
      v163(v90, v55);
    }

    v91 = v160;
    (v162)();
    if (v65(v91, 1, v55) == 1)
    {
      v92 = 0;
    }

    else
    {
      v93 = v91;
      v92 = Date._bridgeToObjectiveC()().super.isa;
      v163(v93, v55);
    }

    [v70 setLastActivityRecentUpdatesViewedDate:v92];

    v94 = v155;
    sub_100006038(v63 + *(v171 + 88), v155, &unk_1006C1710);
    v95 = 1;
    if (v157(v94, 1, v55) != 1)
    {
      v96 = v149;
      (*(v167 + 32))(v149, v94, v55);
      static Date.+ infix(_:_:)();
      v163(v96, v55);
      v95 = 0;
    }

    v97 = v159;
    (v162)(v159, v95, 1, v55);
    v98 = v157;
    if (v157(v97, 1, v55) == 1)
    {
      v99 = 0;
    }

    else
    {
      v99 = Date._bridgeToObjectiveC()().super.isa;
      v163(v97, v55);
    }

    [v70 setRecentUpdatesGenerationDate:v99];

    v100 = v156;
    sub_100006038(v63 + *(v171 + 92), v156, &unk_1006C1710);
    v101 = 1;
    if (v98(v100, 1, v55) != 1)
    {
      v102 = v149;
      (*(v167 + 32))(v149, v100, v55);
      static Date.+ infix(_:_:)();
      v163(v102, v55);
      v101 = 0;
    }

    v103 = v161;
    (v162)(v161, v101, 1, v55);
    if (v98(v103, 1, v55) == 1)
    {
      v104 = 0;
    }

    else
    {
      v104 = Date._bridgeToObjectiveC()().super.isa;
      v163(v103, v55);
    }

    v105 = v170;
    v106 = v164;
    v107 = v166;
    [v70 setLastAttributionsViewedDate:v104];

    v108 = *(v63 + *(v171 + 104));
    if (v108)
    {
      v109 = objc_allocWithZone(ICOutlineState);
      sub_1004C7494(&qword_1006C07C8, &type metadata accessor for UUID);
      v110 = Set._bridgeToObjectiveC()().super.isa;
      v111 = [v109 initWithCollapsedUUIDs:v110];

      v108 = [v111 data];
      if (v108)
      {
        v112 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v114 = v113;

        v108 = Data._bridgeToObjectiveC()().super.isa;
        sub_10019671C(v112, v114);
      }
    }

    [v70 setOutlineStateData:v108];

    v115 = *(v171 + 112);
    if (*(v63 + v115))
    {
      v116 = *(v63 + v115);
    }

    else
    {
      v116 = sub_100190FA0(_swiftEmptyArrayStorage);
    }

    v163 = v116;
    v118 = (v116 + 64);
    v117 = *(v116 + 64);
    v161 = v118;
    v119 = 1 << *(v118 - 32);
    v120 = -1;
    if (v119 < 64)
    {
      v120 = ~(-1 << v119);
    }

    v121 = v120 & v117;
    v160 = ((v119 + 63) >> 6);
    v162 = (v107 + 16);
    v171 = v107 + 32;
    v167 = v107 + 8;

    v122 = 0;
    v123 = v165;
    if (v121)
    {
      while (1)
      {
        v124 = v122;
LABEL_69:
        v127 = __clz(__rbit64(v121));
        v121 &= v121 - 1;
        v128 = v127 | (v124 << 6);
        v129 = v163;
        v131 = v165;
        v130 = v166;
        (*(v166 + 16))(v165, *(v163 + 6) + *(v166 + 72) * v128, v105);
        v132 = (*(v129 + 7) + 16 * v128);
        v134 = *v132;
        v133 = v132[1];
        v135 = sub_10015DA04(&qword_1006CA720);
        v136 = v105;
        v137 = &v164[*(v135 + 48)];
        v138 = *(v130 + 32);
        v123 = v131;
        v106 = v164;
        v138(v164, v123, v136);
        *v137 = v134;
        *(v137 + 1) = v133;
        (*(*(v135 - 8) + 56))(v106, 0, 1, v135);

        v126 = v124;
LABEL_70:
        v139 = v169;
        sub_1001F7498(v106, v169, &qword_1006CA718);
        v140 = sub_10015DA04(&qword_1006CA720);
        if ((*(*(v140 - 8) + 48))(v139, 1, v140) == 1)
        {
          break;
        }

        v105 = v170;
        (*v171)(v123, v139, v170);
        v141 = String._bridgeToObjectiveC()();

        v142 = UUID._bridgeToObjectiveC()().super.isa;
        [v168 addUserID:v141 forReplicaID:v142];

        result = (*v167)(v123, v105);
        v122 = v126;
        if (!v121)
        {
          goto LABEL_62;
        }
      }

      return v168;
    }

    else
    {
LABEL_62:
      if (v160 <= v122 + 1)
      {
        v125 = (v122 + 1);
      }

      else
      {
        v125 = v160;
      }

      v126 = v125 - 1;
      while (1)
      {
        v124 = v122 + 1;
        if (__OFADD__(v122, 1))
        {
          break;
        }

        if (v124 >= v160)
        {
          v143 = sub_10015DA04(&qword_1006CA720);
          (*(*(v143 - 8) + 56))(v106, 1, 1, v143);
          v121 = 0;
          goto LABEL_70;
        }

        v121 = *&v161[8 * v124];
        ++v122;
        if (v121)
        {
          goto LABEL_69;
        }
      }

      __break(1u);
    }
  }

  return result;
}

id sub_1004C117C(id a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for ICNoteArchiveModel();
  v9 = (v3 + *(v8 + 100));
  v10 = v9[1];
  if (!v10)
  {
    v12 = (v3 + *(v8 + 96));
    v13 = v12[5];
    v49 = v12[4];
    v50 = v13;
    v14 = *(v12 + 12);
    v51 = v14;
    v15 = v12[1];
    aBlock = *v12;
    v46 = v15;
    v16 = v12[3];
    v47 = v12[2];
    v48 = v16;
    if (!v50)
    {
      return 0;
    }

    v17 = v12[3];
    v54 = v12[2];
    v55 = v17;
    v18 = v12[5];
    v56 = v12[4];
    v19 = v12[1];
    v52 = *v12;
    v53 = v19;
    v57 = v50;
    v58 = v14;
    v43[4] = v56;
    v43[5] = v18;
    v44 = *(v12 + 12);
    v43[0] = v52;
    v43[1] = v19;
    v43[2] = v54;
    v43[3] = v17;
    sub_1001967C4(v43, v42);
    sub_10019552C(a1);
    v20 = [a1 noteData];
    if (v20)
    {
      v21 = v20;
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v21 setData:isa];
    }

    a1 = [a1 noteData];
    sub_1000073B4(&aBlock, &qword_1006CA710);
    return a1;
  }

  v11 = sub_1002EEF18(a2, a1, &off_100659250, a3, *v9, v10, v9[2]);
  if (v4)
  {
    return a1;
  }

  v59.super.isa = v11;
  result = [a1 textStorage];
  if (result)
  {
    v24 = result;
    [result beginSkippingTimestampUpdates];
    v25 = [v24 mergeableString];
    v26 = v24;
    v27 = [v26 ic_range];
    v29 = v28;
    v30 = [objc_allocWithZone(NSAttributedString) init];
    [v25 replaceCharactersInRange:v27 withAttributedString:{v29, v30}];

    v31 = [v26 mergeableString];
    ICTTMergeableAttributedString.insertAuthorAttributedString(_:at:)(v59, 0);

    v32 = [v26 mergeableString];
    v41 = [v26 ic_range];
    v34 = v33;

    v35 = swift_allocObject();
    *(v35 + 16) = a1;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1004C6B40;
    *(v36 + 24) = v35;
    *&v47 = sub_1004C6B48;
    *(&v47 + 1) = v36;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v46 = sub_1004C5608;
    *(&v46 + 1) = &unk_100661270;
    v37 = _Block_copy(&aBlock);
    v38 = a1;

    [v32 enumerateEditsInRange:v41 usingBlock:{v34, v37}];

    _Block_release(v37);
    LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

    if ((v37 & 1) == 0)
    {
      [v26 endSkippingTimestampUpdates];
      v39 = [v38 noteData];
      if (v39)
      {
        v40 = v39;
        [v39 setNeedsToBeSaved:1];
      }

      a1 = [v38 noteData];

      return a1;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004C15C4(uint64_t a1)
{
  v3 = v1;
  v5 = sub_10015DA04(&qword_1006C28B0);
  __chkstk_darwin(v5 - 8);
  v37 = v30 - v6;
  v7 = sub_10015DA04(&qword_1006C28B8);
  __chkstk_darwin(v7 - 8);
  v9 = v30 - v8;
  v10 = type metadata accessor for PersistedActivityEvent();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v34 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = _s8ActivityVMa();
  v13 = *(v33 - 8);
  __chkstk_darwin(v33);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + *(type metadata accessor for ICNoteArchiveModel() + 108));
  if (!v16)
  {
    return 0;
  }

  v30[1] = a1;
  v30[2] = v2;
  v44 = _swiftEmptyArrayStorage;
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v16 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v19 = *(v13 + 72);
    v35 = (v11 + 48);
    v36 = v19;
    v31 = (v11 + 8);
    v32 = (v11 + 32);
    v38 = v15;
    while (1)
    {
      sub_1004C7598(v18, v15, _s8ActivityVMa);
      IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
      v24 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
      v39[0] = IsAlexandriaDemoModeEnabled;
      v39[1] = v24;
      v41 = 0;
      v42 = 0;
      v40 = 0;
      v43 = 2;
      sub_1002AC34C(v39, v9);
      if ((*v35)(v9, 1, v10) == 1)
      {
        break;
      }

      v25 = v34;
      (*v32)(v34, v9, v10);
      sub_1000054A4(0, &qword_1006C1B60);
      v26 = v37;
      sub_1002ACB48(v39, v37);
      v27 = static ICCloudSyncingObject.cloudSyncingObjectActivityEvent(for:fallback:)();
      v28 = v26;
      v15 = v38;
      sub_1000073B4(v28, &qword_1006C28B0);
      (*v31)(v25, v10);
      sub_1004C7600(v15, _s8ActivityVMa);
      if (v27)
      {
        goto LABEL_5;
      }

LABEL_8:
      v18 += v36;
      if (!--v17)
      {
        goto LABEL_12;
      }
    }

    sub_1000073B4(v9, &qword_1006C28B8);
    sub_1000054A4(0, &qword_1006C1B60);
    v20 = v9;
    v21 = v37;
    sub_1002ACB48(v39, v37);
    v15 = v38;
    static ICCloudSyncingObject.cloudSyncingObjectActivityEvent(forData:fallback:)();
    v22 = v21;
    v9 = v20;
    sub_1000073B4(v22, &qword_1006C28B0);
    sub_1004C7600(v15, _s8ActivityVMa);
LABEL_5:
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    goto LABEL_8;
  }

LABEL_12:
  ICCloudSyncingObject.cloudSyncingObjectActivityEvents.setter();
  return ICCloudSyncingObject.cloudSyncingObjectActivityEvents.getter();
}

void sub_1004C1A70(id a1@<X0>, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v265 = a2;
  v5 = sub_10015DA04(&unk_1006BE0B0);
  __chkstk_darwin(v5 - 8);
  v268 = &v250 - v6;
  v7 = sub_10015DA04(&qword_1006CA708);
  __chkstk_darwin(v7 - 8);
  v273 = &v250 - v8;
  v282 = sub_10015DA04(&qword_1006BDDA8);
  v261 = *(v282 - 8);
  __chkstk_darwin(v282);
  v267 = &v250 - v9;
  v279 = type metadata accessor for UUID();
  v254 = *(v279 - 8);
  v10 = __chkstk_darwin(v279);
  v266 = &v250 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v280 = &v250 - v13;
  __chkstk_darwin(v12);
  v253 = &v250 - v14;
  v15 = _s8ActivityVMa();
  v281 = *(v15 - 8);
  __chkstk_darwin(v15 - 8);
  v256 = &v250 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10015DA04(&unk_1006C1710);
  v18 = __chkstk_darwin(v17 - 8);
  v275 = (&v250 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __chkstk_darwin(v18);
  v274 = (&v250 - v21);
  v22 = __chkstk_darwin(v20);
  v271 = &v250 - v23;
  v24 = __chkstk_darwin(v22);
  v263 = (&v250 - v25);
  v26 = __chkstk_darwin(v24);
  v277 = (&v250 - v27);
  v28 = __chkstk_darwin(v26);
  v30 = &v250 - v29;
  __chkstk_darwin(v28);
  v32 = &v250 - v31;
  *a3 = 3;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 514;
  v33 = type metadata accessor for ICNoteArchiveModel();
  v34 = v33[10];
  v35 = type metadata accessor for Date();
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v38 = v36 + 56;
  v37(a3 + v34, 1, 1, v35);
  v278 = v33[11];
  v37(a3 + v278, 1, 1, v35);
  v39 = (a3 + v33[12]);
  *v39 = 0;
  v39[1] = 0;
  v257 = v39;
  v259 = v33[19];
  v37(a3 + v259, 1, 1, v35);
  v260 = v33[20];
  v37(a3 + v260, 1, 1, v35);
  v262 = v33[21];
  v37(a3 + v262, 1, 1, v35);
  v264 = v33[22];
  v37(v264 + a3, 1, 1, v35);
  v270 = v33[23];
  v37(&v270[a3], 1, 1, v35);
  v40 = a3 + v33[24];
  *(v40 + 96) = 0;
  *(v40 + 64) = 0u;
  *(v40 + 80) = 0u;
  *(v40 + 32) = 0u;
  *(v40 + 48) = 0u;
  *v40 = 0u;
  *(v40 + 16) = 0u;
  v250 = v40;
  v41 = (a3 + v33[25]);
  *v41 = 0;
  v41[1] = 0;
  v255 = v41;
  v41[2] = 0;
  v258 = v33[26];
  *(v258 + a3) = 0;
  v252 = v33[27];
  *(a3 + v252) = 0;
  v42 = v33[28];
  v269 = a3;
  v251 = v42;
  *(a3 + v42) = 0;
  v43 = [a1 identifier];
  v272 = a1;
  if (v43)
  {
    v44 = v43;
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    a1 = v272;
  }

  else
  {
    v45 = 0;
    v47 = 0xE000000000000000;
  }

  v48 = v269;
  *(v269 + 1) = v45;
  *(v48 + 2) = v47;
  v49 = [a1 creationDate];
  if (v49)
  {
    v50 = v49;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v51 = 0;
  }

  else
  {
    v51 = 1;
  }

  v52 = 1;
  v37(v32, v51, 1, v35);
  sub_10023A078(v32, &v269[v34]);
  v53 = [a1 modificationDate];
  if (v53)
  {
    v54 = v53;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v52 = 0;
  }

  v37(v30, v52, 1, v35);
  v55 = v33[13];
  v56 = v33[14];
  v58 = v33[15];
  v57 = v33[16];
  v276 = v33[17];
  v59 = v269;
  sub_10023A078(v30, &v269[v278]);
  v60 = v272;
  v59[v55] = [v272 isPinned];
  v59[v56] = [v60 isSystemPaper];
  v61 = v60;
  v62 = [v60 paperStyleType];
  if (v62 < 0)
  {
    goto LABEL_150;
  }

  v58[v59] = sub_1004C6494(v62);
  v59[v57] = sub_1004C6598([v60 preferredBackgroundType]);
  v63 = sub_1004C635C([v60 attachmentViewType]);
  v59[v276] = v63;
  v64 = [v60 hostApplicationIdentifier];
  if (v64)
  {
    v65 = v64;
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v67;
  }

  else
  {
    v66 = 0;
    v68 = 0;
  }

  v55 = v273;
  v69 = v277;
  v58 = v269;
  v70 = &v269[v33[18]];
  *v70 = v66;
  v70[1] = v68;
  if (*(v265 + 58) & 1) != 0 || (*(v265 + 59))
  {
    v71 = [v61 lastOpenedDate];
    if (v71)
    {
      v72 = v71;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v73 = 0;
    }

    else
    {
      v73 = 1;
    }

    v74 = v275;
    v75 = v274;
    v37(v69, v73, 1, v35);
    sub_10023A078(v69, &v58[v259]);
    v76 = [v61 lastActivitySummaryViewedDate];
    if (v76)
    {
      v77 = v263;
      v78 = v76;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v79 = v77;
    }

    else
    {
      v79 = v263;
    }

    v80 = v79;
    (v37)();
    sub_10023A078(v80, &v58[v260]);
    v81 = [v61 lastActivityRecentUpdatesViewedDate];
    if (v81)
    {
      v82 = v271;
      v83 = v81;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v84 = v82;
    }

    else
    {
      v84 = v271;
    }

    v85 = 1;
    v86 = v84;
    (v37)();
    sub_10023A078(v86, &v58[v262]);
    v87 = [v61 recentUpdatesGenerationDate];
    if (v87)
    {
      v88 = v87;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v85 = 0;
    }

    v89 = 1;
    v37(v75, v85, 1, v35);
    sub_10023A078(v75, v264 + v58);
    v90 = [v61 lastAttributionsViewedDate];
    if (v90)
    {
      v91 = v90;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v89 = 0;
    }

    v92 = v270;
    v37(v74, v89, 1, v35);
    sub_10023A078(v74, &v92[v58]);
  }

  v37 = v265;
  if (*(v265 + 60))
  {
    v93 = v61;
    if ([v93 isPasswordProtectedAndLocked])
    {

      sub_100279F6C(v37);
      if (qword_1006BCA10 != -1)
      {
        swift_once();
      }

      v94 = type metadata accessor for Logger();
      sub_10002597C(v94, qword_1006CA6F0);
      v95 = v93;
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *&v285[0] = v99;
        *v98 = 136315138;
        v100 = [v95 identifier];
        if (v100)
        {
          v101 = v100;
          v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v104 = v103;
        }

        else
        {
          v102 = 9732322;
          v104 = 0xA300000000000000;
        }

        v148 = sub_100009D88(v102, v104, v285);

        *(v98 + 4) = v148;
        v149 = "Pages Handoff: Note is locked — skipping {identifier: %s}";
LABEL_147:
        _os_log_impl(&_mh_execute_header, v96, v97, v149, v98, 0xCu);
        sub_100009F60(v99);

        return;
      }

      goto LABEL_48;
    }

    v112 = [v93 textStorage];
    if (v112)
    {
      v113 = v112;
      v114 = [v112 mergeableString];
      sub_10027A180(v37, v285);
      v115 = v114;
      v116 = v93;
LABEL_53:
      v137 = sub_1002FCE90(v115, v116, v37);
      v139 = v138;
      v141 = v140;

      v260 = 0;
      v142 = v255;
      *v255 = v137;
      v142[1] = v139;
      v142[2] = v141;
      goto LABEL_73;
    }

    v143 = v58;

    if (qword_1006BCA10 != -1)
    {
      swift_once();
    }

    v144 = type metadata accessor for Logger();
    sub_10002597C(v144, qword_1006CA6F0);
    v145 = v93;
    v146 = Logger.logObject.getter();
    v147 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v146, v147))
    {
      goto LABEL_68;
    }

    goto LABEL_72;
  }

  if (*v265)
  {
    v105 = v61;
    if ([v105 isPasswordProtectedAndLocked])
    {

      sub_100279F6C(v37);
      if (qword_1006BCA10 == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_154;
    }

    v124 = [v105 textStorage];
    if (v124)
    {
      v125 = v124;
      v126 = [v124 mergeableString];
      sub_10027A180(v37, v285);
      v127 = sub_1002FDD84(v126, v105, v37);
      v128 = v58;
      v130 = v129;
      v132 = v131;
      sub_100279F6C(v37);

      v260 = 0;
      v133 = v255;
      *v255 = v127;
      v133[1] = v130;
      v58 = v128;
      v133[2] = v132;
LABEL_73:
      v160 = v258;
      goto LABEL_74;
    }

    v143 = v58;

    if (qword_1006BCA10 != -1)
    {
      swift_once();
    }

    v150 = type metadata accessor for Logger();
    sub_10002597C(v150, qword_1006CA6F0);
    v145 = v105;
    v146 = Logger.logObject.getter();
    v147 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v146, v147))
    {
LABEL_68:
      v152 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      *&v285[0] = v153;
      *v152 = 136315138;
      v154 = [v145 identifier];
      if (v154)
      {
        v155 = v154;
        v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v158 = v157;

        v55 = v273;
      }

      else
      {
        v156 = 9732322;
        v158 = 0xA300000000000000;
      }

      v159 = sub_100009D88(v156, v158, v285);

      *(v152 + 4) = v159;
      _os_log_impl(&_mh_execute_header, v146, v147, "Note doesn't have a text storage — skipping {identifier: %s}", v152, 0xCu);
      sub_100009F60(v153);
    }

LABEL_72:

    v260 = 0;
    v58 = v143;
    goto LABEL_73;
  }

  if (![v61 isPasswordProtected])
  {
    v134 = [v61 textStorage];
    if (v134)
    {
      v113 = v134;
      v135 = [v134 mergeableString];
      v136 = v61;
      sub_10027A180(v37, v285);
      v115 = v135;
      v116 = v136;
      goto LABEL_53;
    }

    v143 = v58;
    if (qword_1006BCA10 != -1)
    {
      swift_once();
    }

    v151 = type metadata accessor for Logger();
    sub_10002597C(v151, qword_1006CA6F0);
    v145 = v61;
    v146 = Logger.logObject.getter();
    v147 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v146, v147))
    {
      goto LABEL_68;
    }

    goto LABEL_72;
  }

  v117 = [v61 noteData];
  if (v117)
  {
    v118 = v117;
    v119 = [v117 data];

    v120 = v250;
    if (v119)
    {
      v121 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v123 = v122;
    }

    else
    {
      v121 = 0;
      v123 = 0xC000000000000000;
    }
  }

  else
  {
    v121 = 0;
    v123 = 0xC000000000000000;
    v120 = v250;
  }

  v235 = v61;
  sub_100195B6C(v235, v121, v123, v283);

  v236 = *(v120 + 80);
  v285[4] = *(v120 + 64);
  v285[5] = v236;
  v286 = *(v120 + 96);
  v237 = *(v120 + 16);
  v285[0] = *v120;
  v285[1] = v237;
  v238 = *(v120 + 48);
  v285[2] = *(v120 + 32);
  v285[3] = v238;
  sub_1000073B4(v285, &qword_1006CA710);
  v239 = v283[5];
  *(v120 + 64) = v283[4];
  *(v120 + 80) = v239;
  *(v120 + 96) = v284;
  v240 = v283[1];
  *v120 = v283[0];
  *(v120 + 16) = v240;
  v241 = v283[3];
  *(v120 + 32) = v283[2];
  *(v120 + 48) = v241;
  v242 = [v235 title];
  if (v242)
  {
    v243 = v242;
    v244 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v246 = v245;

    v247 = v246;
  }

  else
  {
    v244 = 0;
    v247 = 0;
  }

  v160 = v258;
  v248 = v257;
  *v257 = v244;
  v248[1] = v247;
  v260 = v247;
LABEL_74:
  v161 = [v61 outlineState];
  v162 = [v161 collapsedUUIDs];

  sub_1004C7494(&qword_1006C07C8, &type metadata accessor for UUID);
  v163 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  *&v160[v58] = v163;
  if (*(v37 + 56))
  {
    v164 = v61;
    v38 = ICCloudSyncingObject.cloudSyncingObjectActivityEvents.getter();

    if (v38 >> 62)
    {
      goto LABEL_151;
    }

    v165 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_77:
    v166 = v256;
    if (v165)
    {
      *&v285[0] = _swiftEmptyArrayStorage;
      v105 = v285;
      sub_100189764(0, v165 & ~(v165 >> 63), 0);
      if ((v165 & 0x8000000000000000) == 0)
      {
        v167 = 0;
        v168 = *&v285[0];
        do
        {
          if ((v38 & 0xC000000000000001) != 0)
          {
            v169 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v169 = *(v38 + 8 * v167 + 32);
          }

          sub_1002AB1A4(v169, v166);
          *&v285[0] = v168;
          v171 = *(v168 + 16);
          v170 = *(v168 + 24);
          if (v171 >= v170 >> 1)
          {
            sub_100189764(v170 > 1, v171 + 1, 1);
            v168 = *&v285[0];
          }

          ++v167;
          *(v168 + 16) = v171 + 1;
          sub_1003F5058(v166, v168 + ((*(v281 + 80) + 32) & ~*(v281 + 80)) + *(v281 + 72) * v171);
        }

        while (v165 != v167);

        v58 = v269;
        *&v269[v252] = v168;
        v37 = v265;
        if (*(v265 + 57))
        {
          goto LABEL_90;
        }

LABEL_94:
        sub_100279F6C(v37);
        if ((*(v37 + 59) & 1) == 0)
        {
LABEL_139:

          return;
        }

        goto LABEL_95;
      }

      __break(1u);
LABEL_154:
      swift_once();
LABEL_39:
      v106 = type metadata accessor for Logger();
      sub_10002597C(v106, qword_1006CA6F0);
      v95 = v105;
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *&v285[0] = v99;
        *v98 = 136315138;
        v107 = [v95 identifier];
        if (v107)
        {
          v108 = v107;
          v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v111 = v110;
        }

        else
        {
          v109 = 9732322;
          v111 = 0xA300000000000000;
        }

        v249 = sub_100009D88(v109, v111, v285);

        *(v98 + 4) = v249;
        v149 = "Markdown export: Note is locked — skipping {identifier: %s}";
        goto LABEL_147;
      }

LABEL_48:

      return;
    }

    *&v58[v252] = _swiftEmptyArrayStorage;
    if ((*(v37 + 57) & 1) == 0)
    {
      goto LABEL_94;
    }
  }

  else if ((*(v37 + 57) & 1) == 0)
  {
    goto LABEL_94;
  }

LABEL_90:
  v259 = 0;
  v172 = v254;
  v173 = v254;
  v174 = [v61 replicaIDToUserIDDictData];
  if (v174)
  {
    v175 = v174;
    v176 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v178 = v177;

    v179 = v253;
    UUID.init()();
    if (v178 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1001C60E4(v176, v178);
    }
  }

  else
  {
    v179 = v253;
    UUID.init()();
    isa = 0;
  }

  v200 = objc_allocWithZone(ICMergeableDictionary);
  v201 = UUID._bridgeToObjectiveC()().super.isa;
  v202 = [v200 initWithData:isa replicaID:v201];

  v203 = *(v173 + 8);
  v58 = (v173 + 8);
  v204 = v279;
  v271 = v58;
  v270 = v203;
  (v203)(v179, v279);
  v258 = v202;
  v205 = [v202 allKeys];
  sub_1000054A4(0, &qword_1006C21F0);
  v206 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v206 >> 62)
  {
    v207 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v207 = *((v206 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = v268;
  if (v207)
  {
    v208 = 0;
    v281 = v206 & 0xC000000000000001;
    v278 = v206 & 0xFFFFFFFFFFFFFF8;
    v275 = (v172 + 48);
    v264 = (v172 + 32);
    v277 = (v261 + 56);
    v37 = _swiftEmptyArrayStorage;
    v263 = (v261 + 48);
    v262 = v206;
    v276 = v207;
    while (1)
    {
      if (v281)
      {
        v209 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v208 >= *(v278 + 16))
        {
          goto LABEL_149;
        }

        v209 = *(v206 + 8 * v208 + 32);
      }

      v58 = v209;
      v210 = v208 + 1;
      if (__OFADD__(v208, 1))
      {
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        v165 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_77;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      UUID.init(uuidString:)();

      if ((*v275)(v38, 1, v204) == 1)
      {

        sub_1000073B4(v38, &unk_1006BE0B0);
        (*v277)(v55, 1, 1, v282);
        goto LABEL_113;
      }

      v274 = v37;
      v211 = *v264;
      (*v264)(v280, v38, v204);
      v212 = v204;
      v213 = UUID._bridgeToObjectiveC()().super.isa;
      v214 = [v61 userIDForReplicaID:v213];

      v215 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v217 = v216;

      v218 = [objc_opt_self() CR_unknown];
      v219 = v266;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v220 = UUID.uuidString.getter();
      v222 = v221;
      (v270)(v219, v212);
      if (v215 == v220 && v217 == v222)
      {
        break;
      }

      v223 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v223)
      {
        goto LABEL_124;
      }

      v225 = &v273[*(v282 + 48)];
      v226 = v279;
      v211();
      v224 = 0;
      *v225 = v215;
      v225[1] = v217;
      v204 = v226;
LABEL_126:
      v206 = v262;
      v55 = v273;
      v227 = v282;
      (*v277)(v273, v224, 1, v282);
      v228 = (*v263)(v55, 1, v227);
      v61 = v272;
      v38 = v268;
      v37 = v274;
      if (v228 != 1)
      {
        sub_1001F7498(v55, v267, &qword_1006BDDA8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_1001CBA88(0, *(v37 + 2) + 1, 1, v37);
        }

        v230 = *(v37 + 2);
        v229 = *(v37 + 3);
        if (v230 >= v229 >> 1)
        {
          v37 = sub_1001CBA88(v229 > 1, v230 + 1, 1, v37);
        }

        *(v37 + 2) = v230 + 1;
        sub_1001F7498(v267, v37 + ((*(v261 + 80) + 32) & ~*(v261 + 80)) + *(v261 + 72) * v230, &qword_1006BDDA8);
        v204 = v279;
        goto LABEL_114;
      }

LABEL_113:
      sub_1000073B4(v55, &qword_1006CA708);
LABEL_114:
      ++v208;
      if (v210 == v276)
      {
        goto LABEL_134;
      }
    }

LABEL_124:
    v204 = v279;
    (v270)(v280, v279);

    v224 = 1;
    goto LABEL_126;
  }

  v37 = _swiftEmptyArrayStorage;
LABEL_134:

  v231 = v37;
  if (*(v37 + 2))
  {
    sub_10015DA04(&qword_1006BDDB0);
    v232 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v232 = &_swiftEmptyDictionarySingleton;
  }

  v58 = v269;
  v233 = v265;
  v234 = v259;
  *&v285[0] = v232;
  sub_1004C6698(v231, 1, v285);
  if (v234)
  {

    __break(1u);
    return;
  }

  sub_100279F6C(v233);
  *&v58[v251] = *&v285[0];
  if ((*(v233 + 59) & 1) == 0)
  {
    goto LABEL_139;
  }

LABEL_95:
  v181 = [v61 folder];
  if (v181 && (v182 = v181, v183 = [v181 identifier], v182, v183))
  {
    v184 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v186 = v185;
  }

  else
  {
    v184 = 0;
    v186 = 0;
  }

  *(v58 + 3) = v184;
  *(v58 + 4) = v186;
  v187 = [v61 folder];
  if (v187)
  {
    v188 = v187;
    v189 = [v187 title];

    v190 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v192 = v191;
  }

  else
  {
    v190 = 0;
    v192 = 0;
  }

  *(v58 + 5) = v190;
  *(v58 + 6) = v192;
  v193 = [v61 title];
  if (v193)
  {
    v194 = v193;
    v195 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v197 = v196;
  }

  else
  {

    v195 = 0;
    v197 = 0;
  }

  v198 = v257;
  *v257 = v195;
  v198[1] = v197;
  v58[56] = [v61 markedForDeletion];
  v199 = [v61 isPasswordProtected];

  v58[57] = v199;
}

uint64_t sub_1004C381C()
{
  v0 = type metadata accessor for Logger();
  sub_100025918(v0, qword_1006CA6F0);
  sub_10002597C(v0, qword_1006CA6F0);
  return static Logger.archiving.getter();
}

unint64_t sub_1004C3868(char a1)
{
  result = 0x6E65644965707974;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6954746E65726170;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x4164657461657263;
      break;
    case 7:
      result = 0x6465696669646F6DLL;
      break;
    case 8:
      result = 0x656C746974;
      break;
    case 9:
      result = 0x64656E6E69507369;
      break;
    case 10:
      result = 0x4E6B636975517369;
      break;
    case 11:
      result = 0x7974537265706170;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000019;
      break;
    case 15:
      result = 0x7441646577656976;
      break;
    case 16:
    case 22:
      result = 0xD000000000000017;
      break;
    case 17:
      result = 0xD000000000000015;
      break;
    case 18:
      result = 0xD000000000000018;
      break;
    case 19:
      result = 0xD000000000000014;
      break;
    case 20:
      result = 0x6574707972636E65;
      break;
    case 21:
      result = 0x746E65746E6F63;
      break;
    case 23:
      result = 0x6974697669746361;
      break;
    case 24:
      result = 0xD000000000000023;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1004C3B5C(void *a1)
{
  v3 = v1;
  v5 = sub_10015DA04(&qword_1006CA8E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_10017CC60(a1, a1[3]);
  sub_1004C70FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v34[0]) = *v3;
  LOBYTE(v27) = 0;
  sub_10027A9FC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v34[0]) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v34[0]) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v34[0]) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v34[0]) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v34[0]) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v41 = type metadata accessor for ICNoteArchiveModel();
    LOBYTE(v34[0]) = 6;
    type metadata accessor for Date();
    sub_1004C7494(&qword_1006C1230, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v34[0]) = 7;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v34[0]) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v34[0]) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v34[0]) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v34[0]) = v3[v41[15]];
    LOBYTE(v27) = 11;
    sub_1004C7150();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v34[0]) = v3[v41[16]];
    LOBYTE(v27) = 12;
    sub_1004C71A4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v34[0]) = v3[v41[17]];
    LOBYTE(v27) = 13;
    sub_10027AC3C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v34[0]) = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v34[0]) = 15;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v34[0]) = 16;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v34[0]) = 17;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v34[0]) = 18;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v40 = 19;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v9 = &v3[v41[24]];
    v10 = *(v9 + 3);
    v11 = *(v9 + 5);
    v37 = *(v9 + 4);
    v38 = v11;
    v12 = *(v9 + 1);
    v34[0] = *v9;
    v34[1] = v12;
    v13 = *(v9 + 3);
    v15 = *v9;
    v14 = *(v9 + 1);
    v35 = *(v9 + 2);
    v36 = v13;
    v16 = *(v9 + 5);
    v31 = v37;
    v32 = v16;
    v27 = v15;
    v28 = v14;
    v39 = *(v9 + 12);
    v33 = *(v9 + 12);
    v29 = v35;
    v30 = v10;
    v26 = 20;
    sub_100006038(v34, v24, &qword_1006CA710);
    sub_1004C71F8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v24[4] = v31;
    v24[5] = v32;
    v25 = v33;
    v24[0] = v27;
    v24[1] = v28;
    v24[2] = v29;
    v24[3] = v30;
    sub_1000073B4(v24, &qword_1006CA710);
    v17 = &v3[v41[25]];
    v18 = *(v17 + 2);
    v22 = *v17;
    v23 = v18;
    v21 = 21;
    sub_10027ABE8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v22 = *&v3[v41[26]];
    v21 = 22;
    sub_10015DA04(&qword_1006CA7B8);
    sub_1004C735C(&qword_1006CA910, &qword_1006C3BC8);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v22 = *&v3[v41[27]];
    v21 = 23;
    sub_10015DA04(&unk_1006C7360);
    sub_1004C73F8(&qword_1006C7528, &qword_1006C7530);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v22 = *&v3[v41[28]];
    v21 = 24;
    sub_10015DA04(&unk_1006CA7C8);
    sub_1004C724C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1004C43C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = sub_10015DA04(&unk_1006C1710);
  v4 = __chkstk_darwin(v3 - 8);
  v98 = v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v90 = v86 - v7;
  v8 = __chkstk_darwin(v6);
  v89 = v86 - v9;
  v10 = __chkstk_darwin(v8);
  v88 = v86 - v11;
  v12 = __chkstk_darwin(v10);
  v92 = v86 - v13;
  v14 = __chkstk_darwin(v12);
  v93 = v86 - v15;
  __chkstk_darwin(v14);
  v94 = v86 - v16;
  v17 = sub_10015DA04(&qword_1006CA920);
  v95 = *(v17 - 8);
  v96 = v17;
  __chkstk_darwin(v17);
  v19 = v86 - v18;
  v20 = type metadata accessor for ICNoteArchiveModel();
  v21 = __chkstk_darwin(v20);
  v23 = v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v21 + 40);
  v25 = type metadata accessor for Date();
  v26 = *(*(v25 - 8) + 56);
  v108 = v24;
  v26(&v23[v24], 1, 1, v25);
  v106 = v20[11];
  v26(&v23[v106], 1, 1, v25);
  v104 = v20[19];
  v26(&v23[v104], 1, 1, v25);
  v103 = v20[20];
  v26(&v23[v103], 1, 1, v25);
  v102 = v20[21];
  v26(&v23[v102], 1, 1, v25);
  v101 = v20[22];
  v26(&v23[v101], 1, 1, v25);
  v100 = v20[23];
  v26(&v23[v100], 1, 1, v25);
  v27 = v20[24];
  v130 = v23;
  v28 = &v23[v27];
  *(v28 + 12) = 0;
  *(v28 + 4) = 0u;
  *(v28 + 5) = 0u;
  *(v28 + 2) = 0u;
  *(v28 + 3) = 0u;
  *v28 = 0u;
  *(v28 + 1) = 0u;
  v99 = v28;
  v29 = a1[3];
  v105 = a1;
  sub_10017CC60(a1, v29);
  sub_1004C70FC();
  v97 = v19;
  v30 = v107;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v30)
  {
    v107 = v30;
    sub_100009F60(v105);
    swift_bridgeObjectRelease_n();
    v98 = 0;
    v34 = 0;
    v35 = 0;
    v105 = 0;
LABEL_4:
    v36 = v130;
    sub_1000073B4(&v130[v108], &unk_1006C1710);
    sub_1000073B4(&v36[v106], &unk_1006C1710);

    sub_1000073B4(&v36[v104], &unk_1006C1710);
    sub_1000073B4(&v36[v103], &unk_1006C1710);
    sub_1000073B4(&v36[v102], &unk_1006C1710);
    sub_1000073B4(&v36[v101], &unk_1006C1710);
    sub_1000073B4(&v36[v100], &unk_1006C1710);
    v37 = *(v99 + 5);
    v127 = *(v99 + 4);
    v128 = v37;
    v129 = *(v99 + 12);
    v38 = *(v99 + 1);
    v123 = *v99;
    v124 = v38;
    v39 = *(v99 + 3);
    v125 = *(v99 + 2);
    v126 = v39;
    sub_1000073B4(&v123, &qword_1006CA710);
    sub_1002FDA10(v35, v34);
  }

  v31 = v94;
  v87 = v20;
  v32 = v98;
  LOBYTE(v120[0]) = 0;
  sub_10027ACE4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v33 = v130;
  *v130 = v123;
  LOBYTE(v123) = 1;
  *(v33 + 1) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v33 + 2) = v41;
  LOBYTE(v123) = 2;
  *(v33 + 3) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v33 + 4) = v42;
  v86[1] = v42;
  LOBYTE(v123) = 3;
  *(v33 + 5) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v33 + 6) = v43;
  v86[0] = v43;
  LOBYTE(v123) = 4;
  v33[56] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v123) = 5;
  v33[57] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v123) = 6;
  sub_1004C7494(&qword_1006C1220, &type metadata accessor for Date);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10023A078(v31, &v33[v108]);
  LOBYTE(v123) = 7;
  v44 = v93;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10023A078(v44, &v33[v106]);
  LOBYTE(v123) = 8;
  v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v107 = 0;
  v47 = &v130[v87[12]];
  *v47 = v45;
  v47[1] = v46;
  v93 = v46;
  LOBYTE(v123) = 9;
  v48 = v107;
  v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v107 = v48;
  if (v48 || (v130[v87[13]] = v49, LOBYTE(v123) = 10, v50 = v107, v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v107 = v50) != 0) || (v130[v87[14]] = v51, LOBYTE(v120[0]) = 11, sub_1004C6E30(), v52 = v107, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v107 = v52) != 0) || (v130[v87[15]] = v123, LOBYTE(v120[0]) = 12, sub_1004C6F10(), v53 = v107, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v107 = v53) != 0) || (v130[v87[16]] = v123, LOBYTE(v120[0]) = 13, sub_10027AFC4(), v54 = v107, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v107 = v54) != 0) || (v130[v87[17]] = v123, LOBYTE(v123) = 14, v55 = v107, v56 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), v94 = v57, (v107 = v55) != 0))
  {
    (*(v95 + 8))(v97, v96);
    v58 = 0;
    v35 = 0;
    v34 = 0;
    v98 = 0;
    v94 = 0;
LABEL_12:
    v59 = v105;
    v105 = v58;
    sub_100009F60(v59);

    goto LABEL_4;
  }

  v60 = &v130[v87[18]];
  v61 = v94;
  *v60 = v56;
  v60[1] = v61;
  LOBYTE(v123) = 15;
  v62 = v107;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v107 = v62;
  if (v62 || (sub_10023A078(v92, &v130[v104]), LOBYTE(v123) = 16, v63 = v107, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v107 = v63) != 0) || (sub_10023A078(v88, &v130[v103]), LOBYTE(v123) = 17, v64 = v107, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v107 = v64) != 0) || (sub_10023A078(v89, &v130[v102]), LOBYTE(v123) = 18, v65 = v107, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v107 = v65) != 0) || (sub_10023A078(v90, &v130[v101]), LOBYTE(v123) = 19, v66 = v107, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v107 = v66) != 0) || (sub_10023A078(v32, &v130[v100]), v122 = 20, sub_1004C7308(), v67 = v107, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v107 = v67) != 0) || (v117 = v127, v118 = v128, v119 = v129, v113 = v123, v114 = v124, v115 = v125, v116 = v126, v68 = v99, v69 = *(v99 + 1), v120[0] = *v99, v120[1] = v69, v70 = *(v99 + 2), v71 = *(v99 + 3), v72 = *(v99 + 4), v73 = *(v99 + 5), v121 = *(v99 + 12), v120[4] = v72, v120[5] = v73, v120[2] = v70, v120[3] = v71, sub_1000073B4(v120, &qword_1006CA710), v74 = v118, *(v68 + 4) = v117, *(v68 + 5) = v74, *(v68 + 12) = v119, v75 = v114, *v68 = v113, *(v68 + 1) = v75, v76 = v116, *(v68 + 2) = v115, *(v68 + 3) = v76, v109 = 21, sub_10027AF04(), v77 = v107, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v107 = v77) != 0))
  {
    (*(v95 + 8))(v97, v96);
    v58 = 0;
    v35 = 0;
    v34 = 0;
    v98 = 0;
    goto LABEL_12;
  }

  v78 = &v130[v87[25]];
  v79 = v111;
  v80 = v112;
  v35 = v110;
  *v78 = v110;
  v78[1] = v79;
  v34 = v79;
  v98 = v80;
  v78[2] = v80;
  sub_10015DA04(&qword_1006CA7B8);
  v109 = 22;
  sub_1004C735C(&qword_1006CA930, &qword_1006C3BB8);
  v81 = v107;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v107 = v81;
  if (v81)
  {
    (*(v95 + 8))(v97, v96);
    v58 = 0;
    goto LABEL_12;
  }

  v58 = v110;
  *&v130[v87[26]] = v110;
  sub_10015DA04(&unk_1006C7360);
  v109 = 23;
  sub_1004C73F8(&qword_1006C7540, &qword_1006C7548);
  v82 = v107;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v107 = v82;
  if (v82 || (*&v130[v87[27]] = v110, sub_10015DA04(&unk_1006CA7C8), v109 = 24, sub_1004C74DC(), v83 = v107, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v107 = v83) != 0))
  {
    (*(v95 + 8))(v97, v96);
    goto LABEL_12;
  }

  v84 = v87[28];
  (*(v95 + 8))(v97, v96);
  v85 = v130;
  *&v130[v84] = v110;
  sub_1004C7598(v85, v91, type metadata accessor for ICNoteArchiveModel);
  sub_100009F60(v105);
  return sub_1004C7600(v85, type metadata accessor for ICNoteArchiveModel);
}

uint64_t sub_1004C52E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1004C7660(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1004C530C(uint64_t a1)
{
  v2 = sub_1004C70FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004C5348(uint64_t a1)
{
  v2 = sub_1004C70FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1004C53B4(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = [a1 timestamp];
  if (v12)
  {
    v13 = v12;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = type metadata accessor for Date();
    (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
    sub_1000073B4(v11, &unk_1006C1710);
    isa = Int64._bridgeToObjectiveC()().super.super.isa;
    v16 = [a1 replicaID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v6 + 8))(v8, v5);
    [a3 setNotesVersion:isa forReplicaID:v17];
  }

  else
  {
    v18 = type metadata accessor for Date();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
    sub_1000073B4(v11, &unk_1006C1710);
  }
}

void sub_1004C5608(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_1004C567C()
{
  String.hash(into:)();
}

unint64_t sub_1004C57B4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004C7E0C(*a1);
  *a2 = result;
  return result;
}

void sub_1004C57E4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1162760014;
  v5 = 0xEC00000053454E49;
  v6 = 0x4C5F4D554944454DLL;
  if (v2 != 5)
  {
    v6 = 0x494C5F454752414CLL;
    v5 = 0xEB0000000053454ELL;
  }

  v7 = 0x52475F454752414CLL;
  v8 = 0xEA00000000004449;
  if (v2 != 3)
  {
    v7 = 0x494C5F4C4C414D53;
    v8 = 0xEB0000000053454ELL;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x52475F4C4C414D53;
  v10 = 0xEA00000000004449;
  if (v2 != 1)
  {
    v9 = 0x475F4D554944454DLL;
    v10 = 0xEB00000000444952;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1004C59FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x544847494CLL;
  }

  else
  {
    v3 = 0x544C5541464544;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x544847494CLL;
  }

  else
  {
    v5 = 0x544C5541464544;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1004C5AA0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1004C5B20()
{
  String.hash(into:)();
}

Swift::Int sub_1004C5B8C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1004C5C08@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10064D9B8, *a1);

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

void sub_1004C5C68(uint64_t *a1@<X8>)
{
  v2 = 0x544C5541464544;
  if (*v1)
  {
    v2 = 0x544847494CLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1004C5DBC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x49414E424D554854;
  v4 = 0xE90000000000004CLL;
  if (v2 != 1)
  {
    v3 = 0x4D554944454DLL;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x57454956455250;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x49414E424D554854;
  v8 = 0xE90000000000004CLL;
  if (*a2 != 1)
  {
    v7 = 0x4D554944454DLL;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x57454956455250;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
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

Swift::Int sub_1004C5EC0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1004C5F64()
{
  String.hash(into:)();
}

Swift::Int sub_1004C5FF4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1004C6094@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004C7E58(*a1);
  *a2 = result;
  return result;
}

void sub_1004C60C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE90000000000004CLL;
  v5 = 0x49414E424D554854;
  if (v2 != 1)
  {
    v5 = 0x4D554944454DLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x57454956455250;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1004C6210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  a5();
  a6();

  return ArgumentDecodable<>.init(fromArgument:)();
}

uint64_t sub_1004C62D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  a5();
  a6();

  return static ArgumentDecodable<>.typeSummary(forName:)();
}

uint64_t sub_1004C635C(uint64_t result)
{
  if (result >= 3u)
  {
    if (qword_1006BCA10 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10002597C(v1, qword_1006CA6F0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unknown attachment view type — returning default", v4, 2u);
    }

    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ICNoteArchiveModel()
{
  result = qword_1006CA780;
  if (!qword_1006CA780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1004C6494(unint64_t a1)
{
  if (a1 < 8)
  {
    return 0x605040302010007uLL >> (8 * a1);
  }

  if (qword_1006BCA10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10002597C(v2, qword_1006CA6F0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unknown paper style — returning nil", v5, 2u);
  }

  return 7;
}

uint64_t sub_1004C6598(unsigned __int16 a1)
{
  if (a1 < 3u)
  {
    return 0x10002u >> (8 * a1);
  }

  if (qword_1006BCA10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10002597C(v2, qword_1006CA6F0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unknown preferred background color — returning nil", v5, 2u);
  }

  return 2;
}

uint64_t sub_1004C6698(uint64_t a1, char a2, void *a3)
{
  v62 = a3;
  v5 = type metadata accessor for UUID();
  v55 = *(v5 - 8);
  __chkstk_darwin(v5);
  v61 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10015DA04(&qword_1006BDDA8);
  result = __chkstk_darwin(v7);
  v60 = &v51 - v10;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return result;
  }

  v12 = v60;
  v13 = (v60 + *(result + 48));
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v57 = *(v9 + 72);
  v52 = v14;
  sub_100006038(a1 + v14, v60, &qword_1006BDDA8);
  v15 = *(v55 + 32);
  v16 = v61;
  v58 = (v55 + 32);
  v59 = v5;
  v15(v61, v12, v5);
  v56 = v13;
  v17 = *v13;
  v18 = v13[1];
  v19 = *v62;
  v21 = sub_1002DF048(v16);
  v22 = v19[2];
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    goto LABEL_24;
  }

  LOBYTE(v16) = v20;
  v25 = v19[3];
  v53 = v17;
  if (v25 >= v24)
  {
    v17 = v58;
    if ((a2 & 1) == 0)
    {
      goto LABEL_26;
    }

    v28 = v18;
    while (1)
    {
LABEL_8:
      v18 = v17 - 3;
      v29 = *v62;
      if (v16)
      {
        v16 = v59;
        (*v18)(v61, v59);
        v30 = (v29[7] + 16 * v21);
        *v30 = v53;
        v30[1] = v28;

        v31 = v11 - 1;
        if (v11 == 1)
        {
          return result;
        }
      }

      else
      {
        v29[(v21 >> 6) + 8] |= 1 << v21;
        v16 = v59;
        result = (v15)(v29[6] + *(v55 + 72) * v21, v61, v59);
        v32 = (v29[7] + 16 * v21);
        *v32 = v53;
        v32[1] = v28;
        v33 = v29[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_25;
        }

        v29[2] = v35;
        v31 = v11 - 1;
        if (v11 == 1)
        {
          return result;
        }
      }

      v11 = a1 + v57 + v52;
      v54 = (v17 - 3);
      while (1)
      {
        v37 = v60;
        sub_100006038(v11, v60, &qword_1006BDDA8);
        v18 = *v17;
        v38 = v61;
        (*v17)(v61, v37, v16);
        a1 = *v56;
        v15 = v56[1];
        v39 = *v62;
        v21 = sub_1002DF048(v38);
        v41 = v39[2];
        v42 = (v40 & 1) == 0;
        v43 = v41 + v42;
        if (__OFADD__(v41, v42))
        {
          break;
        }

        v44 = v40;
        if (v39[3] < v43)
        {
          sub_1002E478C(v43, 1);
          v45 = sub_1002DF048(v61);
          if ((v44 & 1) != (v46 & 1))
          {
            goto LABEL_27;
          }

          v21 = v45;
        }

        v47 = *v62;
        if (v44)
        {
          v16 = v59;
          (*v54)(v61, v59);
          v36 = (v47[7] + 16 * v21);
          *v36 = a1;
          v36[1] = v15;

          v17 = v58;
        }

        else
        {
          v47[(v21 >> 6) + 8] |= 1 << v21;
          v17 = v58;
          v16 = v59;
          result = (v18)(v47[6] + *(v55 + 72) * v21, v61, v59);
          v48 = (v47[7] + 16 * v21);
          *v48 = a1;
          v48[1] = v15;
          v49 = v47[2];
          v34 = __OFADD__(v49, 1);
          v50 = v49 + 1;
          if (v34)
          {
            goto LABEL_25;
          }

          v47[2] = v50;
        }

        v11 += v57;
        if (!--v31)
        {
          return result;
        }
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v28 = v18;
      sub_1002E951C();
    }
  }

  sub_1002E478C(v24, a2 & 1);
  v26 = sub_1002DF048(v61);
  if ((v16 & 1) == (v27 & 1))
  {
    v21 = v26;
    v28 = v18;
    v17 = v58;
    goto LABEL_8;
  }

LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1004C6B98()
{
  sub_10027A640(319, &qword_1006C0620);
  if (v0 <= 0x3F)
  {
    sub_10027A640(319, &unk_1006BF638);
    if (v1 <= 0x3F)
    {
      sub_10001E5B8();
      if (v2 <= 0x3F)
      {
        sub_10027A640(319, &qword_1006CA790);
        if (v3 <= 0x3F)
        {
          sub_10027A640(319, &qword_1006CA798);
          if (v4 <= 0x3F)
          {
            sub_10027A640(319, &qword_1006C1CC8);
            if (v5 <= 0x3F)
            {
              sub_10027A640(319, &qword_1006CA7A0);
              if (v6 <= 0x3F)
              {
                sub_10027A640(319, &qword_1006CA7A8);
                if (v7 <= 0x3F)
                {
                  sub_100005B5C(319, &qword_1006CA7B0, &qword_1006CA7B8);
                  if (v8 <= 0x3F)
                  {
                    sub_100005B5C(319, &qword_1006C7358, &unk_1006C7360);
                    if (v9 <= 0x3F)
                    {
                      sub_100005B5C(319, &qword_1006CA7C0, &unk_1006CA7C8);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1004C6E30()
{
  result = qword_1006CA858;
  if (!qword_1006CA858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA858);
  }

  return result;
}

unint64_t sub_1004C6EB8()
{
  result = qword_1006CA870;
  if (!qword_1006CA870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA870);
  }

  return result;
}

unint64_t sub_1004C6F10()
{
  result = qword_1006CA878;
  if (!qword_1006CA878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA878);
  }

  return result;
}

unint64_t sub_1004C6F98()
{
  result = qword_1006CA890;
  if (!qword_1006CA890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA890);
  }

  return result;
}

unint64_t sub_1004C7024()
{
  result = qword_1006CA8A8;
  if (!qword_1006CA8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA8A8);
  }

  return result;
}

uint64_t sub_1004C7078(uint64_t a1)
{
  *(a1 + 8) = sub_1004C7494(&qword_1006C2880, type metadata accessor for ICNoteArchiveModel);
  result = sub_1004C7494(&qword_1006C50F0, type metadata accessor for ICNoteArchiveModel);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1004C70FC()
{
  result = qword_1006CA8F0;
  if (!qword_1006CA8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA8F0);
  }

  return result;
}

unint64_t sub_1004C7150()
{
  result = qword_1006CA8F8;
  if (!qword_1006CA8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA8F8);
  }

  return result;
}

unint64_t sub_1004C71A4()
{
  result = qword_1006CA900;
  if (!qword_1006CA900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA900);
  }

  return result;
}

unint64_t sub_1004C71F8()
{
  result = qword_1006CA908;
  if (!qword_1006CA908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA908);
  }

  return result;
}

unint64_t sub_1004C724C()
{
  result = qword_1006CA918;
  if (!qword_1006CA918)
  {
    sub_10017992C(&unk_1006CA7C8);
    sub_1004C7494(&qword_1006C3BC8, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA918);
  }

  return result;
}

unint64_t sub_1004C7308()
{
  result = qword_1006CA928;
  if (!qword_1006CA928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA928);
  }

  return result;
}

uint64_t sub_1004C735C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10017992C(&qword_1006CA7B8);
    sub_1004C7494(a2, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004C73F8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10017992C(&unk_1006C7360);
    sub_1004C7494(a2, _s8ActivityVMa);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004C7494(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1004C74DC()
{
  result = qword_1006CA938;
  if (!qword_1006CA938)
  {
    sub_10017992C(&unk_1006CA7C8);
    sub_1004C7494(&qword_1006C3BB8, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA938);
  }

  return result;
}

uint64_t sub_1004C7598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004C7600(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004C7660(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000010 && 0x8000000100569E40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6954746E65726170 && a2 == 0xEB00000000656C74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100569E60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100569E80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6465696669646F6DLL && a2 == 0xEA00000000007441 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x64656E6E69507369 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4E6B636975517369 && a2 == 0xEB0000000065746FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7974537265706170 && a2 == 0xEA0000000000656CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100576CE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000100576D00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000100576D20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x7441646577656976 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000100576D40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000100576D60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000100576D80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100576DA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6574707972636E65 && a2 == 0xED00006174614464 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000100576DC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x6974697669746361 && a2 == 0xEA00000000007365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000100576DE0 == a2)
  {

    return 24;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 24;
    }

    else
    {
      return 25;
    }
  }
}

unint64_t sub_1004C7E0C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10064D8F0, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1004C7E58(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10064DA08, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1004C7EA4()
{
  result = qword_1006CA940;
  if (!qword_1006CA940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA940);
  }

  return result;
}

unint64_t sub_1004C7EF8()
{
  result = qword_1006CA948;
  if (!qword_1006CA948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA948);
  }

  return result;
}

unint64_t sub_1004C7F4C()
{
  result = qword_1006CA950;
  if (!qword_1006CA950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA950);
  }

  return result;
}

unint64_t sub_1004C7FA0()
{
  result = qword_1006CA958;
  if (!qword_1006CA958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA958);
  }

  return result;
}

unint64_t sub_1004C7FF4()
{
  result = qword_1006CA960;
  if (!qword_1006CA960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA960);
  }

  return result;
}

unint64_t sub_1004C8048()
{
  result = qword_1006CA968;
  if (!qword_1006CA968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA968);
  }

  return result;
}

unint64_t sub_1004C80B0()
{
  result = qword_1006CA970;
  if (!qword_1006CA970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA970);
  }

  return result;
}

unint64_t sub_1004C8108()
{
  result = qword_1006CA978;
  if (!qword_1006CA978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA978);
  }

  return result;
}

unint64_t sub_1004C8160()
{
  result = qword_1006CA980;
  if (!qword_1006CA980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA980);
  }

  return result;
}

void sub_1004C81E8(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v2 = *(Strong + OBJC_IVAR____TtC11MobileNotes32FolderComposerBaseViewController_initialFilterSelection), v3 = Strong, v4 = v2, v3, !v2))
    {
      v4 = [objc_allocWithZone(ICFilterSelection) init];
    }

    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      (*((swift_isaMask & *v5) + 0x70))(v4);
    }

    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = *&v7[OBJC_IVAR____TtC11MobileNotes32FolderComposerBaseViewController_initialFilterSelection];
      *&v7[OBJC_IVAR____TtC11MobileNotes32FolderComposerBaseViewController_initialFilterSelection] = 0;
    }

    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v11 = [v9 navigationController];

      if (v11)
      {
        [v11 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }
}

id sub_1004C852C(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC11MobileNotes32FolderComposerBaseViewController_initialFilterSelection] = 0;
  *&v3[OBJC_IVAR____TtC11MobileNotes32FolderComposerBaseViewController____lazy_storage___cancelBarButtonItem] = 0;
  *&v3[OBJC_IVAR____TtC11MobileNotes32FolderComposerBaseViewController____lazy_storage___doneBarButtonItem] = 0;
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for FolderComposerBaseViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id sub_1004C8630(void *a1)
{
  *&v1[OBJC_IVAR____TtC11MobileNotes32FolderComposerBaseViewController_initialFilterSelection] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes32FolderComposerBaseViewController____lazy_storage___cancelBarButtonItem] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes32FolderComposerBaseViewController____lazy_storage___doneBarButtonItem] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FolderComposerBaseViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1004C86E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FolderComposerBaseViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004C889C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *((swift_isaMask & *a2) + 0x98);

  if (v6(v7))
  {
    v27 = a1;
    v8 = [objc_opt_self() alertControllerWithTitle:0 message:0 preferredStyle:0];
    v9 = objc_opt_self();
    v10 = [v9 mainBundle];
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 localizedStringForKey:v11 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1004C8D10;
    *(v13 + 24) = a3;

    v14 = String._bridgeToObjectiveC()();

    v32 = sub_1004C8D18;
    v33 = v13;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_1002DEFE0;
    v31 = &unk_100661528;
    v15 = _Block_copy(&aBlock);

    v16 = objc_opt_self();
    v17 = [v16 actionWithTitle:v14 style:1 handler:v15];
    _Block_release(v15);

    [v8 addAction:v17];
    v18 = [v9 mainBundle];
    v19 = String._bridgeToObjectiveC()();
    v20 = [v18 localizedStringForKey:v19 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1004C8D10;
    *(v21 + 24) = a3;

    v22 = String._bridgeToObjectiveC()();

    v32 = sub_100495B0C;
    v33 = v21;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_1002DEFE0;
    v31 = &unk_100661578;
    v23 = _Block_copy(&aBlock);

    v24 = [v16 actionWithTitle:v22 style:2 handler:v23];
    _Block_release(v23);

    [v8 addAction:v24];
    v25 = [v8 popoverPresentationController];
    if (v25)
    {
      v26 = v25;
      [v25 setBarButtonItem:v27];
    }

    [a2 presentViewController:v8 animated:1 completion:0];
  }

  else
  {
    sub_1004C81E8(1);
  }
}

uint64_t sub_1004C8D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for UnsafeResumption() + 44);
  v6 = type metadata accessor for Result();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_1004C8E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for Result();
  __chkstk_darwin(v8);
  v10 = &v12 - v9;
  (*(*(a3 - 8) + 32))(&v12 - v9, a2, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1004C8D70(a1, v10, a4);
}

uint64_t sub_1004C8F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a2;
  v7 = *(a3 - 8);
  v8 = __chkstk_darwin(a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Result();
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  (*(v18 + 16))(&v21 - v16, a1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v14, v17, a4);
    return sub_1004C9214(v14, v22, a3, a4);
  }

  else
  {
    v20 = *(v7 + 32);
    v20(v10, v17, a3);
    v20(*(*(v22 + 64) + 40), v10, a3);
    return swift_continuation_throwingResume();
  }
}

uint64_t variable initialization expression of AsyncChannel.state()
{
  sub_1004D58BC();
  type metadata accessor for AsyncChannel.State();
  v0 = sub_1004D7B88();

  return v0;
}

uint64_t sub_1004C9214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v6, a1, a4);

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_1004C92C8()
{
  result = type metadata accessor for UnsafeContinuation();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Result();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004C9374(unsigned __int16 *a1, int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = *(v3 + 64);
  if (v4 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v7 = *(v3 + 80) | *(*(*(a3 + 16) - 8) + 80);
  v8 = v4 + ((v7 + 8) & ~v7) + 1;
  v9 = 8 * v8;
  if (v8 > 3)
  {
    goto LABEL_10;
  }

  v11 = (a2 - 0x7FFFFFFF + ~(-1 << v9)) >> v9;
  if (v11 > 0xFFFE)
  {
    v10 = *(a1 + v8);
    if (!v10)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  if (v11 <= 0xFE)
  {
    if (!v11)
    {
      goto LABEL_5;
    }

LABEL_10:
    v10 = *(a1 + v8);
    if (!*(a1 + v8))
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
LABEL_5:
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

LABEL_19:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v12) ^ 0x80000000;
}

unsigned int *sub_1004C9510(unsigned int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(a4 + 24) - 8);
  v5 = *(v4 + 64);
  if (v5 <= *(*(*(a4 + 16) - 8) + 64))
  {
    v5 = *(*(*(a4 + 16) - 8) + 64);
  }

  v6 = *(v4 + 80) | *(*(*(a4 + 16) - 8) + 80);
  v7 = v5 + ((v6 + 8) & ~v6) + 1;
  if ((a3 & 0x80000000) == 0)
  {
    v8 = 0;
    if (a2 < 0)
    {
      goto LABEL_17;
    }

LABEL_26:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_33:
        *result = (a2 - 1);
        return result;
      }

      *(result + v7) = 0;
    }

    else if (v8)
    {
      *(result + v7) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (v7 <= 3)
  {
    v9 = (a3 - 0x7FFFFFFF + ~(-1 << (8 * v7))) >> (8 * v7);
    if (v9 > 0xFFFE)
    {
      v8 = 4;
      if (a2 < 0)
      {
        goto LABEL_17;
      }

      goto LABEL_26;
    }

    if (v9 < 0xFF)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    if (v9)
    {
      v8 = v10;
    }

    else
    {
      v8 = 0;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v8 = 1;
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }
  }

LABEL_17:
  v11 = a2 & 0x7FFFFFFF;
  if (v7 >= 4)
  {
    v12 = result;
    bzero(result, v7);
    result = v12;
    *v12 = v11;
    v13 = 1;
    if (v8 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v13 = (v11 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_38:
    if (v8 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v14 = a2;
  v15 = a2 & ~(-1 << (8 * v7));
  v16 = result;
  bzero(result, v7);
  result = v16;
  if (v7 == 3)
  {
    *v16 = v15;
    *(v16 + 2) = BYTE2(v15);
    goto LABEL_38;
  }

  if (v7 == 2)
  {
    *v16 = v15;
    if (v8 > 1)
    {
LABEL_42:
      if (v8 == 2)
      {
        *(result + v7) = v13;
      }

      else
      {
        *(result + v7) = v13;
      }

      return result;
    }
  }

  else
  {
    *v16 = v14;
    if (v8 > 1)
    {
      goto LABEL_42;
    }
  }

LABEL_39:
  if (v8)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_1004C9754()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Task();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004C97E0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1004C98F8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1004C9AC8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v22 = a1;
  v23 = a3;
  v6 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v21 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  (*(*(a2 - 8) + 8))(v3, a2);
  sub_10017992C(&unk_1006C9B40);
  v11 = type metadata accessor for Result();
  WitnessTable = swift_getWitnessTable();
  sub_1004D7BEC(v11, WitnessTable);
  if (v4)
  {
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    v20 = v3;
    v15 = v21;
    v14 = v22;
    v16 = *(AssociatedTypeWitness - 8);
    if ((*(v16 + 48))(v10, 1, AssociatedTypeWitness) == 1)
    {
      (*(v15 + 8))(v10, v8);
      v17 = 1;
      v18 = v23;
    }

    else
    {
      v18 = v23;
      (*(v16 + 32))(v23, v10, AssociatedTypeWitness);
      (*(*(v6 - 8) + 16))(v20, v14, v6);
      v17 = 0;
    }

    swift_storeEnumTagMultiPayload();
    return (*(v16 + 56))(v18, v17, 1, AssociatedTypeWitness);
  }
}

uint64_t sub_1004C9DA8(uint64_t a1)
{
  v3 = *(a1 - 8);
  __chkstk_darwin(a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 32))(v5, v1, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    Task.cancel()();
  }

  else
  {
    (*(v3 + 8))(v5, a1);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1004C9EC8(uint64_t a1)
{
  v2 = *(a1 - 8);
  __chkstk_darwin(a1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 0x6C616E696D726574;
    }

    v6 = 0x676E69646E6570;
  }

  else
  {
    v6 = 1701602409;
  }

  (*(v2 + 8))(v4, a1);
  return v6;
}

uint64_t static Task.select<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  return _swift_task_switch(sub_1004CA028, 0, 0);
}

uint64_t sub_1004CA028()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);
  v13 = *(v0 + 40);
  v6 = type metadata accessor for Task();
  v7 = static Array._allocateUninitialized(_:)();
  *(v0 + 16) = 0;
  *(v0 + 24) = v7;
  type metadata accessor for TaskSelectState();
  v8 = sub_1004D7B88();
  *(v0 + 88) = v8;

  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  v9[2] = v5;
  v9[3] = v3;
  v9[4] = v4;
  v9[5] = v1;
  v9[6] = v2;
  v9[7] = v8;
  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  v10[2] = v5;
  v10[3] = v3;
  v10[4] = v4;
  v10[5] = v1;
  v10[6] = v2;
  v10[7] = v13;
  v10[8] = v8;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *v11 = v0;
  v11[1] = sub_1004CA1D8;

  return sub_1004CB184(v0 + 32, sub_1004CB580, v9, &unk_10054EF00, v10, v6);
}

uint64_t sub_1004CA1D8()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_1004CA31C, 0, 0);
  }
}

uint64_t sub_1004CA31C()
{

  v1 = *(v0 + 32);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1004CA380()
{
  if (!*(v0 + 8))
  {
  }

  v2 = *(v0 + 8);
  type metadata accessor for Task();
  type metadata accessor for Array();

  Array.append(_:)();
  result = 0;
  *(v0 + 8) = v2;
  return result;
}

uint64_t sub_1004CA410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  v13[6] = a6;
  type metadata accessor for TaskSelectState();
  type metadata accessor for Task();
  type metadata accessor for Array();
  sub_1004D7A10(sub_1004CB8D8, v13, a1);
  if (Array.endIndex.getter())
  {
    v7 = 4;
    do
    {
      v8 = v7 - 4;
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {

        v10 = __OFADD__(v8, 1);
        v11 = v7 - 3;
        if (v10)
        {
          goto LABEL_9;
        }
      }

      else
      {
        _ArrayBuffer._getElementSlowPath(_:)();
        v10 = __OFADD__(v8, 1);
        v11 = v7 - 3;
        if (v10)
        {
LABEL_9:
          __break(1u);
        }
      }

      Task.cancel()();

      ++v7;
    }

    while (v11 != Array.endIndex.getter());
  }
}

uint64_t sub_1004CA584@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    type metadata accessor for Task();
    v5 = static Array._allocateUninitialized(_:)();
  }

  *a2 = v5;
  *(a1 + 8) = 0;
}

uint64_t sub_1004CA5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return _swift_task_switch(sub_1004CA628, 0, 0);
}

uint64_t sub_1004CA628()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = *(v0 + 64);
  v8 = *(v0 + 48);
  v4 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v8;
  *(v2 + 40) = v3;
  *(v2 + 56) = v4;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  type metadata accessor for Task();
  *v5 = v0;
  v5[1] = sub_1004CA748;
  v6 = *(v0 + 16);

  return sub_1004D44E8(v6, 0, 0, sub_1004CB754, v2);
}

uint64_t sub_1004CA748()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1004CA85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v56 = a3;
  v54 = a2;
  v51 = a1;
  v13 = sub_10015DA04(&qword_1006C2170);
  v14 = __chkstk_darwin(v13 - 8);
  v50 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v55 = &v42 - v17;
  v18 = *(a6 - 8);
  __chkstk_darwin(v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v23 = &v42 - v22;
  (*(v18 + 16))(v20, v54, a6);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v52 = v23;
  v53 = AssociatedTypeWitness;
  v49 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v25 = v61;
  if (v61)
  {
    v26 = 0;
    v47 = type metadata accessor for TaskPriority();
    v27 = *(v47 - 8);
    v28 = *(v27 + 56);
    v45 = v27 + 56;
    v46 = v28;
    v43 = (v27 + 8);
    v44 = (v27 + 48);
    v48 = a8;
    do
    {
      v54 = v26;
      v29 = v55;
      v30 = v47;
      v46(v55, 1, 1, v47);
      v31 = swift_allocObject();
      v31[2] = 0;
      v31[3] = 0;
      v31[4] = a4;
      v31[5] = a5;
      v31[6] = a6;
      v31[7] = a7;
      v31[8] = a8;
      v31[9] = v25;
      v33 = v50;
      v32 = v51;
      v31[10] = v56;
      v31[11] = v32;
      sub_100478DC4(v29, v33);
      LODWORD(v29) = (*v44)(v33, 1, v30);
      swift_retain_n();

      if (v29 == 1)
      {
        sub_100008B8C(v33);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v43)(v33, v30);
      }

      v34 = a6;
      v35 = v31[2];
      swift_unknownObjectRetain();

      if (v35)
      {
        swift_getObjectType();
        v36 = dispatch thunk of Actor.unownedExecutor.getter();
        v38 = v37;
        swift_unknownObjectRelease();
      }

      else
      {

        v36 = 0;
        v38 = 0;
      }

      sub_100008B8C(v55);
      v39 = swift_allocObject();
      *(v39 + 16) = &unk_10054EF78;
      *(v39 + 24) = v31;
      if (v38 | v36)
      {
        v57 = 0;
        v58 = 0;
        v59 = v36;
        v60 = v38;
      }

      swift_task_create();

      __chkstk_darwin(v40);
      *(&v42 - 6) = a4;
      *(&v42 - 5) = a5;
      a6 = v34;
      *(&v42 - 4) = v34;
      *(&v42 - 3) = a7;
      a8 = v48;
      *(&v42 - 2) = v48;
      *(&v42 - 1) = v25;
      type metadata accessor for TaskSelectState();
      type metadata accessor for Task();
      type metadata accessor for Optional();
      v26 = v54;
      sub_1004D7A10(sub_1004CB864, (&v42 - 8), v56);
      if (v61)
      {
        Task.cancel()();
      }

      dispatch thunk of IteratorProtocol.next()();
      v25 = v61;
    }

    while (v61);
  }

  return (*(v42 + 8))(v52, v53);
}

uint64_t sub_1004CADB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = v18;
  v8[10] = v19;
  v8[7] = a8;
  v8[8] = v17;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  v12 = type metadata accessor for Result();
  v8[11] = v12;
  v8[12] = *(v12 - 8);
  v13 = swift_task_alloc();
  v8[13] = v13;
  v14 = swift_task_alloc();
  v8[14] = v14;
  *v14 = v8;
  v14[1] = sub_1004CAEFC;

  return (Task.result.getter)(v13, a4, a7, a8);
}

uint64_t sub_1004CAEFC()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1004CB054, 0, 0);
}

uint64_t sub_1004CB054()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = *(v0 + 56);
  v5 = *(v0 + 72);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v5;
  type metadata accessor for TaskSelectState();
  sub_1004D7A10(sub_1004CB8C0, v3, v2);

  if (*(v0 + 120) == 1)
  {
    *(v0 + 16) = *(v0 + 24);
    v6 = *(v0 + 40);
    v7 = type metadata accessor for Task();

    sub_1004D4470(v0 + 16, v6, v7);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1004CB184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_10000A600;

  return (sub_1004CB47C)(a1, a4, a5, a2, a3, 0, 0, a6);
}

uint64_t static Task.select(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  type metadata accessor for Task();
  v9 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  *v8 = v4;
  v8[1] = sub_1004CB380;

  return static Task.select<A>(_:)(v4 + 16, a2, a3, v9, a4, WitnessTable);
}

uint64_t sub_1004CB380(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1004CB47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_10000A1FC;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1004CB590(uint64_t a1)
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
  v11[1] = sub_10000A600;

  return sub_1004CA5FC(a1, v9, v10, v4, v5, v6, v7, v8);
}

uint64_t sub_1004CB66C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1004CB6A8(uint64_t a1, unsigned int a2)
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

uint64_t sub_1004CB704(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1004CB768(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[9];
  v10 = v1[10];
  v9 = v1[11];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000A600;

  return sub_1004CADB0(a1, v6, v7, v8, v10, v9, v4, v5);
}

uint64_t sub_1004CB864@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TaskSelectState();
  result = sub_1004CA380();
  *a1 = result;
  return result;
}

_BYTE *sub_1004CB8C0@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  *a2 = (*result & 1) == 0;
  *result = 1;
  return result;
}

uint64_t sub_1004CB8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_10015DA04(&qword_1006C2170);
  __chkstk_darwin(v11 - 8);
  v13 = &v26[-1] - v12;
  v27[0] = a4;
  v27[1] = a5;
  sub_100478DC4(a3, &v26[-1] - v12);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_100008B8C(v13);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
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
      v21 = String.utf8CString.getter();
      sub_1004D3AF8(v21 + 32, v27, a6, v26);

      v22 = v26[0];
      sub_100008B8C(a3);

      return v22;
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

  sub_100008B8C(a3);
  v23 = swift_allocObject();
  v23[2] = a6;
  v23[3] = a4;
  v23[4] = a5;
  if (v20 | v18)
  {
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v18;
    v26[4] = v20;
  }

  return swift_task_create();
}

uint64_t merge<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a4 - 8);
  v10 = __chkstk_darwin(a1);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  (*(v9 + 16))(v12, a2, a4);
  return sub_1004CBCF0(v14, v12, a3, a4, a5);
}

uint64_t sub_1004CBCF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for AsyncMerge2Sequence();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t sub_1004CBDB8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, _BYTE *a5@<X8>)
{
  *a5 = a2;
  a5[1] = a4;
  v6 = &a5[*(type metadata accessor for Merge2StateMachine() + 56)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v6, a1, AssociatedTypeWitness);
  type metadata accessor for Merge2StateMachine.Partial();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PartialIteration();
  swift_storeEnumTagMultiPayload();
  v8 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PartialIteration();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(v8 - 8) + 32))(&v6[*(TupleTypeMetadata2 + 48)], a3, v8);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1004CBFA8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(v5 + 216) = a4;
  *(v5 + 224) = v4;
  *(v5 + 200) = a2;
  *(v5 + 208) = a3;
  *(v5 + 192) = a1;
  v7 = a4[5];
  *(v5 + 232) = v7;
  v8 = a4[3];
  *(v5 + 240) = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v5 + 248) = AssociatedTypeWitness;
  v10 = type metadata accessor for Optional();
  *(v5 + 256) = v10;
  *(v5 + 264) = *(v10 - 8);
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = *(AssociatedTypeWitness - 8);
  *(v5 + 288) = swift_task_alloc();
  v11 = swift_getAssociatedTypeWitness();
  *(v5 + 296) = v11;
  *(v5 + 304) = *(v11 - 8);
  *(v5 + 312) = swift_task_alloc();
  sub_10017992C(&unk_1006C9B40);
  v12 = type metadata accessor for Result();
  *(v5 + 320) = v12;
  *(v5 + 328) = *(v12 - 8);
  *(v5 + 336) = swift_task_alloc();
  v13 = a4[4];
  *(v5 + 344) = v13;
  v14 = a4[2];
  *(v5 + 352) = v14;
  v15 = swift_getAssociatedTypeWitness();
  *(v5 + 360) = v15;
  v16 = type metadata accessor for Optional();
  *(v5 + 368) = v16;
  *(v5 + 376) = *(v16 - 8);
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = *(v15 - 8);
  *(v5 + 400) = swift_task_alloc();
  v17 = swift_getAssociatedTypeWitness();
  *(v5 + 408) = v17;
  *(v5 + 416) = *(v17 - 8);
  *(v5 + 424) = swift_task_alloc();
  v18 = type metadata accessor for Result();
  *(v5 + 432) = v18;
  *(v5 + 440) = *(v18 - 8);
  *(v5 + 448) = swift_task_alloc();
  *&v19 = v14;
  *(&v19 + 1) = v8;
  *&v20 = v13;
  *(&v20 + 1) = v7;
  *(v5 + 32) = v20;
  *(v5 + 16) = v19;
  *(v5 + 456) = type metadata accessor for Merge2StateMachine.Partial();
  *(v5 + 464) = swift_task_alloc();

  return _swift_task_switch(sub_1004CC434, 0, 0);
}

uint64_t sub_1004CC434()
{
  v1 = v0[44];
  v2 = v0[30];
  v14 = v0[29];
  v15 = v0[43];
  v3 = v0[25];
  v4 = v0[26];
  type metadata accessor for Task();
  type metadata accessor for Optional();
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  v5 = static Array._adoptStorage(_:count:)();
  *v6 = v3;
  v6[1] = v4;
  v0[22] = sub_1004D4444(v5);
  v7 = swift_task_alloc();
  v7[2] = v1;
  v7[3] = v2;
  v7[4] = v15;
  v7[5] = v14;
  type metadata accessor for Array();

  swift_getWitnessTable();
  v8 = Sequence.compactMap<A>(_:)();
  v0[59] = v8;
  v0[60] = 0;

  v0[23] = v8;
  v9 = swift_task_alloc();
  v0[61] = v9;
  v10 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  *v9 = v0;
  v9[1] = sub_1004CC640;
  v12 = v0[57];

  return static Task.select<A>(_:)((v0 + 23), v12, &type metadata for Never, v10, &protocol witness table for Never, WitnessTable);
}

uint64_t sub_1004CC640(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v3[62] = a1;

  v5 = swift_task_alloc();
  v3[63] = v5;
  *v5 = v4;
  v5[1] = sub_1004CC7CC;
  v6 = v3[58];
  v7 = v3[57];

  return Task<>.value.getter(v6, a1, v7);
}

uint64_t sub_1004CC7CC()
{

  return _swift_task_switch(sub_1004CC8E4, 0, 0);
}

uint64_t sub_1004CC8E4()
{
  v1 = *(v0 + 464);
  v84 = *(v0 + 216);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v89 = *(v0 + 480);
  if (EnumCaseMultiPayload == 1)
  {
    v3 = *(v0 + 328);
    v4 = *(v0 + 336);
    v6 = *(v0 + 312);
    v5 = *(v0 + 320);
    v8 = *(v0 + 296);
    v7 = *(v0 + 304);
    v78 = *(v0 + 272);
    v9 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v3 + 32))(v4, v1, v5);
    v10 = v6;
    (*(v7 + 32))(v6, v1 + v9, v8);
    *(v0 + 564) = *(v84 + 56);
    swift_getAssociatedConformanceWitness();
    v11 = type metadata accessor for PartialIteration();
    *(v0 + 536) = v11;
    swift_getAssociatedConformanceWitness();
    v12 = type metadata accessor for PartialIteration();
    swift_getTupleTypeMetadata2();
    sub_1004C9AC8(v10, v12, v78);
    if (v89)
    {
      v13 = (v0 + 336);
      v14 = (v0 + 328);
      v15 = (v0 + 320);
      v16 = (v0 + 312);
      v17 = *(v0 + 536);
      v18 = v0 + 304;
      v19 = (v0 + 296);
LABEL_6:
      sub_1004C9DA8(v17);
      swift_willThrow();
      v29 = *v13;
      v30 = *v15;
      v31 = *v14;
      (*(*v18 + 8))(*v16, *v19);
      (*(v31 + 8))(v29, v30);

      v32 = *(v0 + 8);
LABEL_18:

      return v32();
    }

    v33 = *(v0 + 272);
    v34 = *(v0 + 280);
    v35 = *(v0 + 248);
    if ((*(v34 + 48))(v33, 1, v35) == 1)
    {
      v36 = *(v0 + 224);
      (*(*(v0 + 264) + 8))(v33, *(v0 + 256));
      if (*(v36 + 1) == 1)
      {
        v80 = *(v0 + 352);
        v85 = *(v0 + 344);
        v38 = *(v0 + 328);
        v37 = *(v0 + 336);
        v40 = *(v0 + 312);
        v39 = *(v0 + 320);
        v41 = *(v0 + 296);
        v42 = *(v0 + 304);
        v43 = *(v0 + 240);
        v76 = *(v0 + 232);
        v90 = *(v0 + 192);
        sub_1004C9DA8(v11);
        (*(v42 + 8))(v40, v41);
        (*(v38 + 8))(v37, v39);
        *(v0 + 48) = v80;
        *(v0 + 56) = v43;
        *(v0 + 64) = v85;
        *(v0 + 72) = v76;
LABEL_13:
        v54 = type metadata accessor for Merge2StateMachine.Either();
        (*(*(v54 - 8) + 56))(v90, 1, 1, v54);
LABEL_17:

        v32 = *(v0 + 8);
        goto LABEL_18;
      }

      v70 = swift_task_alloc();
      *(v0 + 544) = v70;
      *v70 = v0;
      v71 = sub_1004CD44C;
      goto LABEL_23;
    }

    v87 = *(v0 + 352);
    v91 = *(v0 + 344);
    v56 = *(v0 + 328);
    v55 = *(v0 + 336);
    v57 = *(v0 + 320);
    v58 = *(v0 + 288);
    v59 = *(v0 + 240);
    v82 = *(v0 + 232);
    v60 = *(v0 + 192);
    (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
    (*(v56 + 8))(v55, v57);
    v61 = *(v34 + 32);
    v61(v58, v33, v35);
    v61(v60, v58, v35);
    *(v0 + 80) = v87;
    *(v0 + 88) = v59;
    *(v0 + 96) = v91;
    *(v0 + 104) = v82;
    v62 = type metadata accessor for Merge2StateMachine.Either();
LABEL_16:
    swift_storeEnumTagMultiPayload();
    (*(*(v62 - 8) + 56))(v60, 0, 1, v62);
    goto LABEL_17;
  }

  v21 = *(v0 + 440);
  v20 = *(v0 + 448);
  v22 = *(v0 + 424);
  v23 = *(v0 + 432);
  v24 = *(v0 + 408);
  v25 = *(v0 + 416);
  v79 = *(v0 + 384);
  v26 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v21 + 32))(v20, v1, v23);
  (*(v25 + 32))(v22, v1 + v26, v24);
  *(v0 + 560) = *(v84 + 56);
  swift_getAssociatedConformanceWitness();
  v27 = type metadata accessor for PartialIteration();
  *(v0 + 512) = v27;
  sub_1004C9AC8(v22, v27, v79);
  if (v89)
  {
    v15 = (v0 + 432);
    v16 = (v0 + 424);
    v18 = v0 + 416;
    v19 = (v0 + 408);
    swift_getAssociatedConformanceWitness();
    v14 = (v0 + 440);
    v28 = type metadata accessor for PartialIteration();
    swift_getTupleTypeMetadata2();
    v17 = v28;
    v13 = (v0 + 448);
    goto LABEL_6;
  }

  v44 = *(v0 + 384);
  v45 = *(v0 + 392);
  v46 = *(v0 + 360);
  if ((*(v45 + 48))(v44, 1, v46) != 1)
  {
    v64 = *(v0 + 440);
    v63 = *(v0 + 448);
    v65 = *(v0 + 432);
    v66 = *(v0 + 400);
    v88 = *(v0 + 352);
    v92 = *(v0 + 344);
    v67 = *(v0 + 240);
    v83 = *(v0 + 232);
    v60 = *(v0 + 192);
    (*(*(v0 + 416) + 8))(*(v0 + 424), *(v0 + 408));
    (*(v64 + 8))(v63, v65);
    v68 = *(v45 + 32);
    v68(v66, v44, v46);
    v68(v60, v66, v46);
    *(v0 + 144) = v88;
    *(v0 + 152) = v67;
    *(v0 + 160) = v92;
    *(v0 + 168) = v83;
    v62 = type metadata accessor for Merge2StateMachine.Either();
    goto LABEL_16;
  }

  v47 = *(v0 + 224);
  (*(*(v0 + 376) + 8))(v44, *(v0 + 368));
  if (*v47 == 1)
  {
    v48 = *(v0 + 440);
    v81 = *(v0 + 432);
    v86 = *(v0 + 448);
    v49 = *(v0 + 416);
    v50 = *(v0 + 408);
    v74 = *(v0 + 424);
    v75 = *(v0 + 352);
    v77 = *(v0 + 344);
    v52 = *(v0 + 232);
    v51 = *(v0 + 240);
    v90 = *(v0 + 192);
    swift_getAssociatedConformanceWitness();
    v53 = type metadata accessor for PartialIteration();
    swift_getTupleTypeMetadata2();
    sub_1004C9DA8(v53);
    (*(v49 + 8))(v74, v50);
    (*(v48 + 8))(v86, v81);
    *(v0 + 112) = v75;
    *(v0 + 120) = v51;
    *(v0 + 128) = v77;
    *(v0 + 136) = v52;
    goto LABEL_13;
  }

  v70 = swift_task_alloc();
  *(v0 + 520) = v70;
  *v70 = v0;
  v71 = sub_1004CD228;
LABEL_23:
  v70[1] = v71;
  v72 = *(v0 + 216);
  v73 = *(v0 + 192);

  return sub_1004CD948(v73, v72);
}

uint64_t sub_1004CD228()
{
  *(*v1 + 528) = v0;

  if (v0)
  {
    v2 = sub_1004CD670;
  }

  else
  {
    v2 = sub_1004CD33C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004CD33C()
{
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[54];
  (*(v0[52] + 8))(v0[53], v0[51]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004CD44C()
{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = sub_1004CD80C;
  }

  else
  {
    v2 = sub_1004CD560;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004CD560()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  (*(v0[38] + 8))(v0[39], v0[37]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004CD670()
{
  swift_getAssociatedConformanceWitness();
  v1 = type metadata accessor for PartialIteration();
  swift_getTupleTypeMetadata2();
  sub_1004C9DA8(v1);
  swift_willThrow();
  v2 = v0[55];
  v3 = v0[56];
  v4 = v0[54];
  (*(v0[52] + 8))(v0[53], v0[51]);
  (*(v2 + 8))(v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1004CD80C()
{
  sub_1004C9DA8(v0[67]);
  swift_willThrow();
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[40];
  (*(v0[38] + 8))(v0[39], v0[37]);
  (*(v1 + 8))(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004CD948(uint64_t a1, void *a2)
{
  *(v3 + 248) = a2;
  *(v3 + 256) = v2;
  *(v3 + 240) = a1;
  v5 = a2[5];
  *(v3 + 264) = v5;
  v6 = a2[3];
  *(v3 + 272) = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v3 + 280) = AssociatedTypeWitness;
  v8 = type metadata accessor for Optional();
  *(v3 + 288) = v8;
  *(v3 + 296) = *(v8 - 8);
  *(v3 + 304) = swift_task_alloc();
  *(v3 + 312) = *(AssociatedTypeWitness - 8);
  *(v3 + 320) = swift_task_alloc();
  v9 = a2[4];
  *(v3 + 328) = v9;
  v10 = a2[2];
  *(v3 + 336) = v10;
  v11 = swift_getAssociatedTypeWitness();
  *(v3 + 344) = v11;
  v12 = type metadata accessor for Optional();
  *(v3 + 352) = v12;
  *(v3 + 360) = *(v12 - 8);
  *(v3 + 368) = swift_task_alloc();
  *(v3 + 376) = *(v11 - 8);
  *(v3 + 384) = swift_task_alloc();
  v13 = swift_getAssociatedTypeWitness();
  *(v3 + 392) = v13;
  *(v3 + 400) = *(v13 - 8);
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = swift_task_alloc();
  v14 = swift_getAssociatedTypeWitness();
  *(v3 + 432) = v14;
  *(v3 + 440) = *(v14 - 8);
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  *(v3 + 464) = swift_task_alloc();
  *&v15 = v10;
  *(&v15 + 1) = v6;
  *&v16 = v9;
  *(&v16 + 1) = v5;
  *(v3 + 32) = v16;
  *(v3 + 16) = v15;
  type metadata accessor for Merge2StateMachine.Partial();
  *(v3 + 472) = swift_getAssociatedConformanceWitness();
  *(v3 + 480) = type metadata accessor for PartialIteration();
  *(v3 + 488) = swift_getAssociatedConformanceWitness();
  *(v3 + 496) = type metadata accessor for PartialIteration();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *(v3 + 504) = TupleTypeMetadata2;
  *(v3 + 512) = *(TupleTypeMetadata2 - 8);
  *(v3 + 520) = swift_task_alloc();
  *(v3 + 528) = swift_task_alloc();

  return _swift_task_switch(sub_1004CDDD8, 0, 0);
}

uint64_t sub_1004CDDD8()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = static Task<>.isCancelled.getter();
  v4 = *(v1 + 56);
  *(v0 + 776) = v4;
  v5 = (v2 + v4);
  if (v3)
  {
    v6 = *(v0 + 496);
    v7 = *(v0 + 328);
    v8 = *(v0 + 336);
    v10 = *(v0 + 264);
    v9 = *(v0 + 272);
    v11 = *(v0 + 240);
    sub_1004C9DA8(*(v0 + 480));
    sub_1004C9DA8(v6);
    *(v0 + 208) = v8;
    v12 = 232;
    v13 = 224;
    v14 = 216;
LABEL_3:
    *(v0 + v14) = v9;
    *(v0 + v13) = v7;
    *(v0 + v12) = v10;
    v15 = type metadata accessor for Merge2StateMachine.Either();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);

    v16 = *(v0 + 8);

    return v16();
  }

  v18 = *(v0 + 528);
  v19 = *(v0 + 520);
  v20 = *(v0 + 504);
  v21 = *(v0 + 496);
  v22 = *(v0 + 480);
  (*(*(v0 + 512) + 16))(v18, v5, v20);
  v23 = *(v20 + 48);
  v24 = *(v22 - 8);
  *(v0 + 536) = v24;
  (*(v24 + 32))(v19, v18, v22);
  v25 = *(v21 - 8);
  *(v0 + 544) = v25;
  (*(v25 + 32))(v19 + v23, v18 + v23, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v27 = *(v0 + 520);
      v28 = *(v0 + 496);
      v29 = *v27;
      *(v0 + 648) = *v27;
      v30 = swift_getEnumCaseMultiPayload();
      if (v30)
      {
        if (v30 != 1)
        {

          v62 = swift_task_alloc();
          *(v0 + 704) = v62;
          *v62 = v0;
          v62[1] = sub_1004CF5B4;
          v45 = *(v0 + 248);
          v46 = *(v0 + 240);
          v47 = v29;
          v51 = 0;
          goto LABEL_22;
        }

        v31 = *(v19 + v23);
        *(v0 + 680) = v31;

        v32 = swift_task_alloc();
        *(v0 + 688) = v32;
        *v32 = v0;
        v33 = sub_1004CF374;
      }

      else
      {
        v52 = *(v0 + 416);
        v88 = *(v0 + 328);
        v91 = *(v0 + 480);
        v79 = *(v0 + 272);
        v82 = *(v0 + 264);
        v85 = *(v0 + 336);
        (*(*(v0 + 400) + 32))(v52, v19 + v23, *(v0 + 392));
        v31 = sub_1004D3E08(v52, v85, v79, v88, v82);
        *(v0 + 656) = v31;
        (*(v24 + 8))(v5, v91);
        *v5 = v29;
        swift_storeEnumTagMultiPayload();
        v53 = *(v20 + 48);
        v54 = *(v25 + 8);

        v54(v5 + v53, v28);
        *(v5 + v53) = v31;
        swift_storeEnumTagMultiPayload();

        v32 = swift_task_alloc();
        *(v0 + 664) = v32;
        *v32 = v0;
        v33 = sub_1004CF108;
      }

      v32[1] = v33;
      v45 = *(v0 + 248);
      v46 = *(v0 + 240);
      v47 = v29;
      goto LABEL_19;
    }

    v48 = swift_getEnumCaseMultiPayload();
    if (v48)
    {
      if (v48 != 1)
      {
        v7 = *(v0 + 328);
        v10 = *(v0 + 264);
        v9 = *(v0 + 272);
        v11 = *(v0 + 240);
        *(v0 + 48) = *(v0 + 336);
        v12 = 72;
        v13 = 64;
        v14 = 56;
        goto LABEL_3;
      }

      v49 = *(v19 + v23);
      *(v0 + 752) = v49;

      v50 = swift_task_alloc();
      *(v0 + 760) = v50;
      *v50 = v0;
      v50[1] = sub_1004CFC98;
      v45 = *(v0 + 248);
      v46 = *(v0 + 240);
      v47 = 0;
      v51 = v49;
      goto LABEL_22;
    }

    v72 = *(v0 + 400);
    v71 = *(v0 + 408);
    v73 = *(v0 + 392);
    v74 = *(v72 + 32);
    *(v0 + 720) = v74;
    *(v0 + 728) = (v72 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v74(v71, v19 + v23, v73);
    v75 = swift_task_alloc();
    *(v0 + 736) = v75;
    *v75 = v0;
    v75[1] = sub_1004CF7DC;
    v68 = *(v0 + 488);
    v69 = *(v0 + 392);
    v70 = *(v0 + 304);
  }

  else
  {
    v34 = *(v0 + 496);
    v35 = swift_getEnumCaseMultiPayload();
    v36 = *(v0 + 520);
    if (!v35)
    {
      v89 = v34;
      v92 = *(v0 + 480);
      v55 = *(v0 + 464);
      v56 = *(v0 + 400);
      v76 = *(v0 + 392);
      v78 = *(v0 + 424);
      v83 = *(v0 + 336);
      v86 = *(v0 + 328);
      v57 = *(v0 + 272);
      v80 = *(v0 + 264);
      (*(*(v0 + 440) + 32))(v55, v36, *(v0 + 432));
      (*(v56 + 32))(v78, v19 + v23, v76);
      v77 = sub_1004D3BE4(v55, v83, v57, v86, v80);
      *(v0 + 552) = v77;
      v58 = sub_1004D3E08(v78, v83, v57, v86, v80);
      *(v0 + 560) = v58;
      (*(v24 + 8))(v5, v92);
      *v5 = v77;
      swift_storeEnumTagMultiPayload();
      v59 = *(v20 + 48);
      v60 = *(v25 + 8);

      v60(v5 + v59, v89);
      *(v5 + v59) = v58;
      swift_storeEnumTagMultiPayload();

      v61 = swift_task_alloc();
      *(v0 + 568) = v61;
      *v61 = v0;
      v61[1] = sub_1004CE758;
      v45 = *(v0 + 248);
      v46 = *(v0 + 240);
      v47 = v77;
      v51 = v58;
      goto LABEL_22;
    }

    if (v35 == 1)
    {
      v37 = *(v0 + 456);
      v38 = *(v0 + 432);
      v39 = *(v0 + 440);
      v87 = *(v0 + 328);
      v90 = *(v0 + 480);
      v40 = *(v0 + 272);
      v81 = *(v0 + 264);
      v84 = *(v0 + 336);
      v31 = *(v19 + v23);
      *(v0 + 584) = v31;
      (*(v39 + 32))(v37, v36, v38);
      v41 = sub_1004D3BE4(v37, v84, v40, v87, v81);
      *(v0 + 592) = v41;
      (*(v24 + 8))(v5, v90);
      *v5 = v41;
      swift_storeEnumTagMultiPayload();
      v42 = *(v20 + 48);
      v43 = *(v25 + 8);

      v43(v5 + v42, v34);
      *(v5 + v42) = v31;
      swift_storeEnumTagMultiPayload();

      v44 = swift_task_alloc();
      *(v0 + 600) = v44;
      *v44 = v0;
      v44[1] = sub_1004CE9E4;
      v45 = *(v0 + 248);
      v46 = *(v0 + 240);
      v47 = v41;
LABEL_19:
      v51 = v31;
LABEL_22:

      return sub_1004CBFA8(v46, v47, v51, v45);
    }

    v64 = *(v0 + 440);
    v63 = *(v0 + 448);
    v65 = *(v0 + 432);
    v66 = *(v64 + 32);
    *(v0 + 616) = v66;
    *(v0 + 624) = (v64 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v66(v63, v36, v65);
    v67 = swift_task_alloc();
    *(v0 + 632) = v67;
    *v67 = v0;
    v67[1] = sub_1004CEC50;
    v68 = *(v0 + 472);
    v69 = *(v0 + 432);
    v70 = *(v0 + 368);
  }

  return dispatch thunk of AsyncIteratorProtocol.next()(v70, v69, v68);
}

uint64_t sub_1004CE758()
{
  *(*v1 + 576) = v0;

  if (v0)
  {
    v2 = sub_1004CFEC0;
  }

  else
  {
    v2 = sub_1004CE88C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004CE88C()
{
  v1 = v0[58];
  v2 = v0[54];
  v3 = v0[55];
  v4 = v0[53];
  v5 = v0[49];
  v6 = v0[50];

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1004CE9E4()
{
  *(*v1 + 608) = v0;

  if (v0)
  {
    v2 = sub_1004D0020;
  }

  else
  {
    v2 = sub_1004CEB18;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004CEB18()
{
  v1 = v0[57];
  v2 = v0[54];
  v3 = v0[55];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004CEC50()
{
  *(*v1 + 640) = v0;

  if (v0)
  {
    v2 = sub_1004D0160;
  }

  else
  {
    v2 = sub_1004CED64;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004CED64()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);
  v3 = *(v0 + 344);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 544);
    v5 = *(v0 + 536);
    v6 = *(v0 + 496);
    v7 = *(v0 + 504);
    v8 = *(v0 + 480);
    v10 = *(v0 + 352);
    v9 = *(v0 + 360);
    v31 = *(v0 + 336);
    v33 = *(v0 + 328);
    v27 = *(v0 + 272);
    v29 = *(v0 + 264);
    v35 = *(v0 + 240);
    v11 = *(v0 + 256) + *(v0 + 776);
    (*(*(v0 + 440) + 8))(*(v0 + 448), *(v0 + 432));
    (*(v9 + 8))(v1, v10);
    (*(v5 + 8))(v11, v8);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 8))(v11 + *(v7 + 48), v6);
    swift_storeEnumTagMultiPayload();
    *(v0 + 144) = v31;
    *(v0 + 152) = v27;
    *(v0 + 160) = v33;
    *(v0 + 168) = v29;
    v12 = type metadata accessor for Merge2StateMachine.Either();
    (*(*(v12 - 8) + 56))(v35, 1, 1, v12);
  }

  else
  {
    v24 = *(v0 + 616);
    v13 = *(v0 + 544);
    v14 = *(v0 + 536);
    v15 = *(v0 + 496);
    v16 = *(v0 + 480);
    v22 = *(v0 + 432);
    v23 = *(v0 + 448);
    v25 = *(v0 + 384);
    v26 = *(v0 + 504);
    v34 = *(v0 + 336);
    v36 = *(v0 + 328);
    v30 = *(v0 + 272);
    v32 = *(v0 + 264);
    v28 = *(v0 + 240);
    v17 = *(v0 + 256) + *(v0 + 776);
    v18 = *(v2 + 32);
    v18();
    (*(v14 + 8))(v17, v16);
    v24(v17, v23, v22);
    swift_storeEnumTagMultiPayload();
    (*(v13 + 8))(v17 + *(v26 + 48), v15);
    swift_storeEnumTagMultiPayload();
    (v18)(v28, v25, v3);
    *(v0 + 176) = v34;
    *(v0 + 184) = v30;
    *(v0 + 192) = v36;
    *(v0 + 200) = v32;
    v19 = type metadata accessor for Merge2StateMachine.Either();
    swift_storeEnumTagMultiPayload();
    (*(*(v19 - 8) + 56))(v28, 0, 1, v19);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1004CF108()
{
  *(*v1 + 672) = v0;

  if (v0)
  {
    v2 = sub_1004D0304;
  }

  else
  {
    v2 = sub_1004CF23C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004CF23C()
{
  v1 = v0[52];
  v2 = v0[49];
  v3 = v0[50];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004CF374()
{
  *(*v1 + 696) = v0;

  if (v0)
  {
    v2 = sub_1004D0444;
  }

  else
  {

    v2 = sub_1004CF49C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004CF49C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004CF5B4()
{
  *(*v1 + 712) = v0;

  if (v0)
  {
    v2 = sub_1004D056C;
  }

  else
  {

    v2 = sub_1004CF6D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004CF6D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004CF7DC()
{
  *(*v1 + 744) = v0;

  if (v0)
  {
    v2 = sub_1004D0684;
  }

  else
  {
    v2 = sub_1004CF8F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004CF8F0()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = *(v0 + 280);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 544);
    v5 = *(v0 + 536);
    v6 = *(v0 + 496);
    v7 = *(v0 + 504);
    v8 = *(v0 + 480);
    v32 = *(v0 + 336);
    v34 = *(v0 + 328);
    v10 = *(v0 + 288);
    v9 = *(v0 + 296);
    v29 = *(v0 + 272);
    v30 = *(v0 + 264);
    v36 = *(v0 + 240);
    v11 = *(v0 + 256) + *(v0 + 776);
    (*(*(v0 + 400) + 8))(*(v0 + 408), *(v0 + 392));
    (*(v9 + 8))(v1, v10);
    (*(v5 + 8))(v11, v8);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 8))(v11 + *(v7 + 48), v6);
    swift_storeEnumTagMultiPayload();
    *(v0 + 80) = v32;
    *(v0 + 88) = v29;
    *(v0 + 96) = v34;
    *(v0 + 104) = v30;
    v12 = type metadata accessor for Merge2StateMachine.Either();
    (*(*(v12 - 8) + 56))(v36, 1, 1, v12);
  }

  else
  {
    v28 = *(v0 + 720);
    v13 = *(v0 + 544);
    v14 = *(v0 + 536);
    v23 = *(v0 + 504);
    v24 = *(v0 + 496);
    v15 = *(v0 + 480);
    v25 = *(v0 + 392);
    v26 = *(v0 + 408);
    v35 = *(v0 + 336);
    v37 = *(v0 + 328);
    v16 = *(v0 + 320);
    v31 = *(v0 + 272);
    v33 = *(v0 + 264);
    v27 = *(v0 + 240);
    v17 = *(v0 + 256) + *(v0 + 776);
    v18 = *(v2 + 32);
    v18(v16, v1, v3);
    (*(v14 + 8))(v17, v15);
    swift_storeEnumTagMultiPayload();
    v19 = *(v23 + 48);
    (*(v13 + 8))(v17 + v19, v24);
    v28(v17 + v19, v26, v25);
    swift_storeEnumTagMultiPayload();
    v18(v27, v16, v3);
    *(v0 + 112) = v35;
    *(v0 + 120) = v31;
    *(v0 + 128) = v37;
    *(v0 + 136) = v33;
    v20 = type metadata accessor for Merge2StateMachine.Either();
    swift_storeEnumTagMultiPayload();
    (*(*(v20 - 8) + 56))(v27, 0, 1, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1004CFC98()
{
  *(*v1 + 768) = v0;

  if (v0)
  {
    v2 = sub_1004D0828;
  }

  else
  {

    v2 = sub_1004CFDB4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004CFDB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004CFEC0()
{
  v1 = v0[58];
  v2 = v0[54];
  v3 = v0[55];
  v4 = v0[53];
  v5 = v0[49];
  v6 = v0[50];

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1004D0020()
{
  v1 = v0[57];
  v2 = v0[54];
  v3 = v0[55];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004D0160()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 496);
  v3 = *(v0 + 504);
  v5 = *(v0 + 440);
  v4 = *(v0 + 448);
  v6 = *(v0 + 432);
  v7 = *(v0 + 256) + *(v0 + 776);
  (*(*(v0 + 536) + 8))(v7, *(v0 + 480));
  swift_storeEnumTagMultiPayload();
  (*(v1 + 8))(v7 + *(v3 + 48), v2);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  (*(v5 + 8))(v4, v6);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1004D0304()
{
  v1 = v0[52];
  v2 = v0[49];
  v3 = v0[50];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004D0444()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004D056C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004D0684()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 496);
  v3 = *(v0 + 504);
  v5 = *(v0 + 400);
  v4 = *(v0 + 408);
  v6 = *(v0 + 392);
  v7 = *(v0 + 256) + *(v0 + 776);
  (*(*(v0 + 536) + 8))(v7, *(v0 + 480));
  swift_storeEnumTagMultiPayload();
  (*(v1 + 8))(v7 + *(v3 + 48), v2);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  (*(v5 + 8))(v4, v6);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1004D0828()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004D0940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a1;
  v8[11] = a4;
  swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v8[16] = v9;
  v8[17] = *(v9 - 8);
  v8[18] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[19] = AssociatedTypeWitness;
  v8[20] = *(AssociatedTypeWitness - 8);
  v8[21] = swift_task_alloc();

  return _swift_task_switch(sub_1004D0AB0, 0, 0);
}

uint64_t sub_1004D0AB0()
{
  (*(v0[20] + 16))(v0[21], v0[11], v0[19]);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_1004D0BA0;
  v3 = v0[18];
  v4 = v0[19];

  return dispatch thunk of AsyncIteratorProtocol.next()(v3, v4, AssociatedConformanceWitness);
}

uint64_t sub_1004D0BA0()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1004D0E14;
  }

  else
  {
    v2 = sub_1004D0CB4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004D0CB4()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  v7 = *(v0 + 80);
  sub_10017992C(&unk_1006C9B40);
  type metadata accessor for Result();
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  v11 = *(v0 + 112);
  v12 = *(v0 + 96);
  (*(v6 + 32))(v7, v4, v5);
  swift_storeEnumTagMultiPayload();
  (*(v2 + 32))(v7 + v8, v1, v3);
  *(v0 + 48) = v12;
  *(v0 + 64) = v11;
  type metadata accessor for Merge2StateMachine.Partial();
  swift_storeEnumTagMultiPayload();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1004D0E14()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);
  v5 = *(v0 + 80);
  sub_10017992C(&unk_1006C9B40);
  type metadata accessor for Result();
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  v9 = *(v0 + 112);
  v10 = *(v0 + 96);
  *v5 = v1;
  swift_storeEnumTagMultiPayload();
  (*(v3 + 32))(&v5[v6], v2, v4);
  *(v0 + 16) = v10;
  *(v0 + 32) = v9;
  type metadata accessor for Merge2StateMachine.Partial();
  swift_storeEnumTagMultiPayload();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1004D0F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a1;
  v8[11] = a4;
  swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v8[16] = v9;
  v8[17] = *(v9 - 8);
  v8[18] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[19] = AssociatedTypeWitness;
  v8[20] = *(AssociatedTypeWitness - 8);
  v8[21] = swift_task_alloc();

  return _swift_task_switch(sub_1004D10C8, 0, 0);
}

uint64_t sub_1004D10C8()
{
  (*(v0[20] + 16))(v0[21], v0[11], v0[19]);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_1004D11BC;
  v3 = v0[18];
  v4 = v0[19];

  return dispatch thunk of AsyncIteratorProtocol.next()(v3, v4, AssociatedConformanceWitness);
}

uint64_t sub_1004D11BC()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1004D1430;
  }

  else
  {
    v2 = sub_1004D12D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004D12D0()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  v7 = *(v0 + 80);
  sub_10017992C(&unk_1006C9B40);
  type metadata accessor for Result();
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  v11 = *(v0 + 112);
  v12 = *(v0 + 96);
  (*(v6 + 32))(v7, v4, v5);
  swift_storeEnumTagMultiPayload();
  (*(v2 + 32))(v7 + v8, v1, v3);
  *(v0 + 48) = v12;
  *(v0 + 64) = v11;
  type metadata accessor for Merge2StateMachine.Partial();
  swift_storeEnumTagMultiPayload();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1004D1430()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);
  v5 = *(v0 + 80);
  sub_10017992C(&unk_1006C9B40);
  type metadata accessor for Result();
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  v9 = *(v0 + 112);
  v10 = *(v0 + 96);
  *v5 = v1;
  swift_storeEnumTagMultiPayload();
  (*(v3 + 32))(&v5[v6], v2, v4);
  *(v0 + 16) = v10;
  *(v0 + 32) = v9;
  type metadata accessor for Merge2StateMachine.Partial();
  swift_storeEnumTagMultiPayload();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1004D1574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __chkstk_darwin(a1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 32))(a2, v4, AssociatedTypeWitness);
}

uint64_t AsyncMerge2Sequence.Iterator.next()(uint64_t a1, uint64_t a2, double a3, int64x2_t a4)
{
  *(v4 + 80) = a1;
  v5 = *(a2 + 16);
  *(v4 + 88) = v5;
  v6 = *(a2 + 24);
  *(v4 + 96) = v6.i64[1];
  a4.i64[0] = v5;
  v12 = *(a2 + 32);
  v13 = vzip1q_s64(a4, v6);
  *(v4 + 32) = v12;
  *(v4 + 16) = v13;
  *(v4 + 104) = type metadata accessor for Merge2StateMachine.Either();
  v7 = type metadata accessor for Optional();
  *(v4 + 112) = v7;
  *(v4 + 120) = *(v7 - 8);
  v8 = swift_task_alloc();
  *(v4 + 128) = v8;
  v9 = swift_task_alloc();
  *(v4 + 136) = v9;
  *(v4 + 64) = v12;
  *(v4 + 48) = v13;
  v10 = type metadata accessor for Merge2StateMachine();
  *v9 = v4;
  v9[1] = sub_1004D17DC;

  return sub_1004CD948(v8, v10);
}

uint64_t sub_1004D17DC()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1004D1A74;
  }

  else
  {
    v2 = sub_1004D18F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004D18F0()
{
  v2 = v0 + 13;
  v1 = v0[13];
  v3 = v0[16];
  v4 = *(v1 - 8);
  if ((*(v4 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[15];
    v2 = v0 + 14;
    v5 = 1;
  }

  else
  {
    sub_1004D1574(v1, v0[10]);
    v5 = 0;
    v3 = v0[16];
  }

  v6 = v0[10];
  (*(v4 + 8))(v3, *v2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v6, v5, 1, AssociatedTypeWitness);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004D1A74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004D1B08(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A600;

  return AsyncMerge2Sequence.Iterator.next()(a1, a2, v6, v7);
}

uint64_t sub_1004D1BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[3] = AssociatedTypeWitness;
  v6[4] = *(AssociatedTypeWitness - 8);
  v13 = swift_task_alloc();
  v6[5] = v13;
  v14 = swift_task_alloc();
  v6[6] = v14;
  *v14 = v6;
  v14[1] = sub_1004D1D04;

  return __sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(a1, a2, a3, a5, a6, v13);
}

uint64_t sub_1004D1D04()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    (*(v2[4] + 32))(v2[2], v2[5], v2[3]);
  }

  v4 = v3[1];

  return v4();
}

uint64_t AsyncMerge2Sequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v23 = a2;
  v5 = *(a1 + 24);
  v22 = *(v5 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *(v6 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = __chkstk_darwin(AssociatedTypeWitness - 8);
  v12 = v21 - v11;
  v13 = *(a1 + 16);
  v14 = *(v13 - 8);
  __chkstk_darwin(v10);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_getAssociatedTypeWitness();
  __chkstk_darwin(v17 - 8);
  v19 = v21 - v18;
  (*(v14 + 16))(v16, v3, v13);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  (*(v22 + 16))(v8, v3 + *(a1 + 52), v5);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  return sub_1004CBDB8(v19, 0, v12, 0, v23);
}

uint64_t sub_1004D20B0()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1004D2170@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  AsyncMerge2Sequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1004D21D0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004D225C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_1004D2438(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t sub_1004D270C()
{
  result = type metadata accessor for Merge2StateMachine();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1004D27A4()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Merge2StateMachine.Partial();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PartialIteration();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PartialIteration();
  result = swift_getTupleTypeMetadata2();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1004D2924(unsigned __int8 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v4 + 64) <= 8uLL)
  {
    v5 = 8;
  }

  else
  {
    v5 = *(v4 + 64);
  }

  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 64);
  if (v7 <= 8)
  {
    v7 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_28;
  }

  v8 = *(v6 + 80);
  v9 = v8 & 0xF8 | 7;
  v10 = (v8 | *(v4 + 80)) & 0xF8 | 7u;
  v11 = v7 + ~(((-2 - v5 - v9) | v9) + ((-3 - v10) | v10));
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((a2 + ~(-1 << v12) - 254) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *&a1[v11];
      if (!v13)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v15 > 0xFF)
    {
      v13 = *&a1[v11];
      if (!*&a1[v11])
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v15 < 2)
    {
LABEL_28:
      v17 = *a1;
      v18 = v17 >= 2;
      v19 = (v17 + 2147483646) & 0x7FFFFFFF;
      if (v18)
      {
        return (v19 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  v13 = a1[v11];
  if (!a1[v11])
  {
    goto LABEL_28;
  }

LABEL_17:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return (v11 | v16) + 255;
}

void sub_1004D2B70(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 64);
  if (v9 <= 8)
  {
    v9 = 8;
  }

  v10 = *(v8 + 80);
  v11 = v10 & 0xF8 | 7;
  v12 = (v10 | *(v6 + 80)) & 0xF8 | 7u;
  v13 = v9 + ~(((-2 - v7 - v11) | v11) + ((-3 - v12) | v12));
  if (a3 < 0xFF)
  {
    v14 = 0;
  }

  else if (v13 <= 3)
  {
    v17 = ((a3 + ~(-1 << (8 * v13)) - 254) >> (8 * v13)) + 1;
    if (HIWORD(v17))
    {
      v14 = 4;
    }

    else
    {
      if (v17 < 0x100)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      if (v17 >= 2)
      {
        v14 = v18;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 1;
  }

  if (a2 > 0xFE)
  {
    v15 = a2 - 255;
    if (v13 >= 4)
    {
      bzero(a1, v13);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v16 = (v15 >> (8 * v13)) + 1;
    if (v13)
    {
      v19 = v15 & ~(-1 << (8 * v13));
      bzero(a1, v13);
      if (v13 != 3)
      {
        if (v13 == 2)
        {
          *a1 = v19;
          if (v14 > 1)
          {
LABEL_42:
            if (v14 == 2)
            {
              *&a1[v13] = v16;
            }

            else
            {
              *&a1[v13] = v16;
            }

            return;
          }
        }

        else
        {
          *a1 = v15;
          if (v14 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v14)
        {
          a1[v13] = v16;
        }

        return;
      }

      *a1 = v19;
      a1[2] = BYTE2(v19);
    }

    if (v14 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v14 <= 1)
  {
    if (v14)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      *a1 = a2 + 1;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v14 == 2)
  {
    *&a1[v13] = 0;
    goto LABEL_27;
  }

  *&a1[v13] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

uint64_t sub_1004D2E4C()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  sub_10017992C(&unk_1006C9B40);
  type metadata accessor for Result();
  swift_getAssociatedTypeWitness();
  result = swift_getTupleTypeMetadata2();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    type metadata accessor for Optional();
    type metadata accessor for Result();
    swift_getAssociatedTypeWitness();
    result = swift_getTupleTypeMetadata2();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004D2FE4(unsigned __int16 *a1, unsigned int a2)
{
  v2 = *(swift_getAssociatedTypeWitness() - 8);
  v3 = *(v2 + 84);
  v4 = *(v2 + 64);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = v11;
  if (v3)
  {
    v13 = v4;
  }

  else
  {
    v13 = v4 + 1;
  }

  v14 = 8;
  if (v13 <= 8)
  {
    v13 = 8;
  }

  v15 = *(v11 + 64);
  v16 = ((v13 + v6 + 1) & ~v6) + v7;
  if (v9)
  {
    v17 = v10;
  }

  else
  {
    v17 = v10 + 1;
  }

  if (v17 > 8)
  {
    v14 = v17;
  }

  v18 = ((v14 + *(v12 + 80) + 1) & ~*(v12 + 80)) + v15;
  if (v18 > v16)
  {
    v16 = v18;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_35;
  }

  v19 = v16 + 1;
  v20 = 8 * (v16 + 1);
  if ((v16 + 1) <= 3)
  {
    v23 = ((a2 + ~(-1 << v20) - 254) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_35;
      }

      goto LABEL_24;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_35;
      }

      goto LABEL_24;
    }

    if (v23 < 2)
    {
LABEL_35:
      v25 = *(a1 + v16);
      if (v25 >= 2)
      {
        return (v25 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_35;
  }

LABEL_24:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 > 3)
    {
      LODWORD(v19) = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        LODWORD(v19) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v19) = *a1;
      }
    }

    else if (v19 == 1)
    {
      LODWORD(v19) = *a1;
    }

    else
    {
      LODWORD(v19) = *a1;
    }
  }

  return (v19 | v24) + 255;
}

void sub_1004D3304(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = *(v3 + 84);
  v5 = *(v3 + 64);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = v12;
  if (v4)
  {
    v14 = v5;
  }

  else
  {
    v14 = v5 + 1;
  }

  v15 = 8;
  if (v14 <= 8)
  {
    v14 = 8;
  }

  v16 = *(v12 + 64);
  v17 = ((v14 + v7 + 1) & ~v7) + v8;
  if (v10)
  {
    v18 = v11;
  }

  else
  {
    v18 = v11 + 1;
  }

  if (v18 > 8)
  {
    v15 = v18;
  }

  v19 = ((v15 + *(v13 + 80) + 1) & ~*(v13 + 80)) + v16;
  if (v19 <= v17)
  {
    v19 = v17;
  }

  v20 = v19 + 1;
  if (a3 < 0xFF)
  {
    v23 = 0;
    v21 = a1;
    v22 = a2;
  }

  else
  {
    v21 = a1;
    v22 = a2;
    if (v20 <= 3)
    {
      v26 = ((a3 + ~(-1 << (8 * v20)) - 254) >> (8 * v20)) + 1;
      if (HIWORD(v26))
      {
        v23 = 4;
      }

      else
      {
        if (v26 < 0x100)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        if (v26 >= 2)
        {
          v23 = v27;
        }

        else
        {
          v23 = 0;
        }
      }
    }

    else
    {
      v23 = 1;
    }
  }

  if (v22 > 0xFE)
  {
    v24 = v22 - 255;
    if (v20 >= 4)
    {
      bzero(v21, v19 + 1);
      *v21 = v24;
      v25 = 1;
      if (v23 > 1)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v25 = (v24 >> (8 * v20)) + 1;
    if (v19 != -1)
    {
      v28 = v24 & ~(-1 << (8 * v20));
      bzero(v21, v20);
      if (v20 != 3)
      {
        if (v20 == 2)
        {
          *v21 = v28;
          if (v23 > 1)
          {
LABEL_49:
            if (v23 == 2)
            {
              *&v21[v20] = v25;
            }

            else
            {
              *&v21[v20] = v25;
            }

            return;
          }
        }

        else
        {
          *v21 = v24;
          if (v23 > 1)
          {
            goto LABEL_49;
          }
        }

LABEL_46:
        if (v23)
        {
          v21[v20] = v25;
        }

        return;
      }

      *v21 = v28;
      v21[2] = BYTE2(v28);
    }

    if (v23 > 1)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  if (v23 <= 1)
  {
    if (v23)
    {
      v21[v20] = 0;
      if (!v22)
      {
        return;
      }

LABEL_35:
      v21[v19] = -v22;
      return;
    }

LABEL_34:
    if (!v22)
    {
      return;
    }

    goto LABEL_35;
  }

  if (v23 == 2)
  {
    *&v21[v20] = 0;
    goto LABEL_34;
  }

  *&v21[v20] = 0;
  if (v22)
  {
    goto LABEL_35;
  }
}

uint64_t sub_1004D36A4()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004D3748(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v5 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 254) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v11 < 2)
    {
LABEL_26:
      v13 = *(a1 + v6);
      if (v13 >= 2)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_26;
  }

LABEL_15:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return (v7 | v12) + 255;
}

void sub_1004D38E0(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 <= v6)
  {
    v7 = v6;
  }

  v8 = v7 + 1;
  if (a3 < 0xFF)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 254) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFE)
  {
    v10 = a2 - 255;
    if (v8 >= 4)
    {
      bzero(a1, v7 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v7 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_39:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v7] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_24;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1004D3AF8@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (result)
  {
    v7 = *a2;
    v6 = a2[1];
    v8 = swift_allocObject();
    v8[2] = a3;
    v8[3] = v7;
    v8[4] = v6;

    result = swift_task_create();
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004D3BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v12 = &v22 - v11;
  v13 = sub_10015DA04(&qword_1006C2170);
  __chkstk_darwin(v13 - 8);
  v15 = &v22 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, a1, AssociatedTypeWitness);
  v17 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a2;
  *(v18 + 5) = a3;
  v19 = v23;
  *(v18 + 6) = a4;
  *(v18 + 7) = v19;
  (*(v10 + 32))(&v18[v17], v12, AssociatedTypeWitness);
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = v19;
  v20 = type metadata accessor for Merge2StateMachine.Partial();
  return sub_1004CB8FC(0, 0, v15, &unk_10054F0F8, v18, v20);
}

uint64_t sub_1004D3E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v12 = &v22 - v11;
  v13 = sub_10015DA04(&qword_1006C2170);
  __chkstk_darwin(v13 - 8);
  v15 = &v22 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, a1, AssociatedTypeWitness);
  v17 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a2;
  *(v18 + 5) = a3;
  v19 = v23;
  *(v18 + 6) = v23;
  *(v18 + 7) = a5;
  (*(v10 + 32))(&v18[v17], v12, AssociatedTypeWitness);
  v24 = a2;
  v25 = a3;
  v26 = v19;
  v27 = a5;
  v20 = type metadata accessor for Merge2StateMachine.Partial();
  return sub_1004CB8FC(0, 0, v15, &unk_10054F120, v18, v20);
}

uint64_t sub_1004D4028(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10000A600;

  return sub_1004D0940(a1, v10, v11, v1 + v9, v5, v4, v6, v7);
}

uint64_t sub_1004D4158(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A1FC;

  return sub_1000061F4(a1, v4);
}

uint64_t sub_1004D4220(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A600;

  return sub_1000061F4(a1, v4);
}

uint64_t sub_1004D42E8(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10000A1FC;

  return sub_1004D0F58(a1, v10, v11, v1 + v9, v5, v4, v6, v7);
}

uint64_t sub_1004D4470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 - 8) + 32))(*(*(a2 + 64) + 40), a1);

  return swift_continuation_resume();
}

uint64_t sub_1004D44E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return _swift_task_switch(sub_1004D457C, v6, v8);
}

uint64_t sub_1004D457C()
{
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1004D4624;
  v3 = swift_continuation_init();
  v1(v3);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004D4624()
{
  v1 = *(*v0 + 8);

  return v1();
}

uint64_t AsyncChannel.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = *(a2 + 16);
  v4 = type metadata accessor for Optional();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_1004D47D0, 0, 0);
}

uint64_t sub_1004D47D0()
{
  v1 = v0[3];
  if (*(v1 + 8) == 1)
  {
    v2 = v0[4];
    v3 = *v1;
    v0[9] = *v1;
    v4 = sub_1004D4C50();
    v5 = swift_task_alloc();
    v0[10] = v5;
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = swift_task_alloc();
    v0[11] = v6;
    v6[2] = v2;
    v6[3] = v1;
    v6[4] = v4;

    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    v7[1] = sub_1004D49A0;
    v8 = v0[8];
    v9 = v0[5];

    return sub_1004CB184(v8, sub_1004D4CD8, v5, &unk_10054F138, v6, v9);
  }

  else
  {
    (*(*(v0[4] - 8) + 56))(v0[2], 1, 1);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1004D49A0()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_1004D4AF0, 0, 0);
  }
}

uint64_t sub_1004D4AF0()
{
  v1 = v0[7];
  v2 = v0[4];
  (*(v0[6] + 32))(v1, v0[8], v0[5]);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = v0[2];
    (*(v0[6] + 8))(v0[7], v0[5]);
    *(v5 + 8) = 0;
    (*(v3 + 56))(v6, 1, 1, v4);
  }

  else
  {
    v7 = v0[4];
    v8 = v0[2];
    (*(v3 + 32))(v8, v0[7], v7);
    (*(v3 + 56))(v8, 0, 1, v7);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004D4C50()
{
  v1 = v0[2];
  v3[2] = *(*v0 + 80);
  type metadata accessor for AsyncChannel.State();
  sub_1004D7A10(sub_1004D77D0, v3, v1);
  return v3[5];
}

void sub_1004D4D00(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-v6];
  v8 = v1[2];
  v11 = v3;
  v12 = a1;
  type metadata accessor for AsyncChannel.State();
  type metadata accessor for UnsafeContinuation();
  type metadata accessor for Optional();
  sub_1004D7A10(sub_1004D7764, v10, v8);
  v9 = v13;
  if (v13)
  {
    (*(*(v3 - 8) + 56))(v7, 1, 1, v3);
    (*(v5 + 32))(*(*(v9 + 64) + 40), v7, v4);
    swift_continuation_resume();
  }
}

uint64_t sub_1004D4EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1004D4ED0, 0, 0);
}

uint64_t sub_1004D4ED0()
{
  *(v0 + 40) = **(v0 + 24);

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1004D4F80;
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  return sub_1004D5148(v3, v2);
}

uint64_t sub_1004D4F80()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1004D5094(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000A1FC;

  return sub_1004D4EAC(a1, v4, v5);
}

uint64_t sub_1004D5148(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return _swift_task_switch(sub_1004D5194, 0, 0);
}

uint64_t sub_1004D5194()
{
  v1 = v0[4];
  v2 = v0[3];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = type metadata accessor for Optional();
  *v4 = v0;
  v4[1] = sub_1004D5294;
  v6 = v0[2];

  return (sub_1004D44E8)(v6, 0, 0, sub_1004D7738, v3, v5);
}

uint64_t sub_1004D5294()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1004D53A4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000ABC0;

  return AsyncChannel.Iterator.next()(a1, a2);
}

uint64_t sub_1004D544C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1004D5518;

  return __sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(a1, a2, a3, a5, a6, v12);
}

uint64_t sub_1004D5518()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

Swift::Int sub_1004D5648(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_1004D56A8()
{
  Hasher.init(_seed:)();
  sub_1004D5614(&v2, *v0);
  return Hasher._finalize()();
}

uint64_t sub_1004D5700(uint64_t a1)
{
  result = *(v1 + 8);
  if (*(v1 + 8))
  {
    if (result == 1)
    {
      v4 = v1;
      v16 = *v1;
      type metadata accessor for AsyncChannel.Awaiting();

      swift_getWitnessTable();
      type metadata accessor for Set();
      Set.remove(_:)();
      if (v15 == 1)
      {
        v5 = 0;
      }

      else
      {
        v5 = v15;
      }

      v6 = v16;
      v7 = Set.isEmpty.getter();

      if (v7)
      {

        v6 = 0;
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      *v4 = v6;
      *(v4 + 8) = v8;
      return v5;
    }

    else
    {
      v9 = a1;
      v10 = type metadata accessor for AsyncChannel.Awaiting();
      type metadata accessor for _ContiguousArrayStorage();
      swift_initStackObject();
      v11 = static Array._adoptStorage(_:count:)();
      *v12 = v9;
      *(v12 + 8) = 0;
      *(v12 + 16) = 1;
      type metadata accessor for Array();
      if (Array._getCount()())
      {
        WitnessTable = swift_getWitnessTable();
        v14 = sub_1004D72AC(v11, v10, WitnessTable);
      }

      else
      {
        v14 = &_swiftEmptySetSingleton;
      }

      result = 0;
      *v1 = v14;
      *(v1 + 8) = 1;
    }
  }

  return result;
}

uint64_t AsyncChannel.__allocating_init(element:)()
{
  v0 = swift_allocObject();
  AsyncChannel.init(element:)();
  return v0;
}

uint64_t AsyncChannel.init(element:)()
{
  type metadata accessor for AsyncChannel.State();
  v1 = sub_1004D7B88();

  *(v0 + 16) = v1;
  return v0;
}

void sub_1004D597C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(*a2 + 80);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13[-v9];
  v25 = 0;
  v11 = a2[2];
  v14 = v6;
  v15 = &v25;
  v16 = a3;
  v17 = a1;
  v18 = &v25 + 1;
  type metadata accessor for AsyncChannel.State();
  type metadata accessor for UnsafeContinuation();
  type metadata accessor for Optional();
  v12 = type metadata accessor for UnsafeResumption();
  type metadata accessor for Optional();
  sub_1004D7A10(sub_1004D7740, v13, v11);
  if (v22)
  {
    v19 = v22;
    v20 = v23;
    v21 = v24 & 1;
    sub_1004C8F24(v12);
  }

  if ((v25 & 0x100) != 0 || v25 == 1)
  {
    (*(*(v6 - 8) + 56))(v10, 1, 1, v6);
    (*(v8 + 32))(*(*(a1 + 64) + 40), v10, v7);
    swift_continuation_resume();
  }
}

uint64_t sub_1004D5BB4@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X8>)
{
  if (*(result + 24) == 1)
  {
    *a2 = 1;
LABEL_15:
    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
    return result;
  }

  v7 = result;
  if (*(result + 8))
  {
    if (*(result + 8) == 1)
    {
      v31 = *result;
      type metadata accessor for AsyncChannel.Awaiting();

      swift_getWitnessTable();
      type metadata accessor for Set();
      Set.update(with:)();
      if (v29 != 1)
      {
        Set.remove(_:)();
        *a5 = 1;
      }

      v8 = v31;
      v9 = Set.isEmpty.getter();

      if (v9)
      {

        v8 = 0;
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      *v7 = v8;
      *(v7 + 8) = v10;
      goto LABEL_15;
    }

    v19 = type metadata accessor for AsyncChannel.Awaiting();
    type metadata accessor for _ContiguousArrayStorage();
    swift_initStackObject();
    v20 = static Array._adoptStorage(_:count:)();
    *v21 = a3;
    *(v21 + 8) = a4;
    *(v21 + 16) = 0;
    type metadata accessor for Array();
    if (Array._getCount()())
    {
      WitnessTable = swift_getWitnessTable();
      v23 = sub_1004D72AC(v20, v19, WitnessTable);
    }

    else
    {
      v23 = &_swiftEmptySetSingleton;
    }

    *v7 = v23;
    *(v7 + 8) = 1;
    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
  }

  else
  {
    v27 = *result;
    type metadata accessor for Optional();
    type metadata accessor for UnsafeContinuation();
    v12 = type metadata accessor for Optional();
    type metadata accessor for UnsafeContinuation();
    type metadata accessor for Array();

    swift_getWitnessTable();
    RangeReplaceableCollection.removeFirst()();
    v13 = v28;
    v14 = v27;
    v15 = Array.count.getter();

    if (v15)
    {
      v16 = 0;
    }

    else
    {

      v14 = 0;
      v16 = 2;
    }

    *v7 = v14;
    *(v7 + 8) = v16;
    v31 = a4;
    result = sub_1004C8E20(v13, &v31, v12, &v28);
    v24 = v29;
    v25 = v30;
    *a6 = v28;
    *(a6 + 8) = v24;
    *(a6 + 16) = v25;
  }

  return result;
}

uint64_t _s15AsyncAlgorithms0A7ChannelC6finishyyF_0()
{
  v1 = *(*v0 + 80);
  v2 = type metadata accessor for Optional();
  v25 = *(v2 - 8);
  __chkstk_darwin(v2);
  v26 = &v24 - v3;
  v4 = v0[2];
  v29 = v1;
  type metadata accessor for AsyncChannel.State();
  v27 = v2;
  type metadata accessor for UnsafeContinuation();
  v5 = type metadata accessor for Optional();
  type metadata accessor for UnsafeContinuation();
  type metadata accessor for Array();
  type metadata accessor for AsyncChannel.Awaiting();
  swift_getWitnessTable();
  type metadata accessor for Set();
  swift_getTupleTypeMetadata2();
  sub_1004D7A10(sub_1004D7278, v28, v4);
  v7 = v30[0];
  v6 = v30[1];
  if (Array.endIndex.getter())
  {
    v8 = 4;
    do
    {
      v9 = v8 - 4;
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v11 = *(v7 + 8 * v8);
        v12 = v8 - 3;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v11 = _ArrayBuffer._getElementSlowPath(_:)();
        swift_unknownObjectRelease();
        v12 = v8 - 3;
        if (__OFADD__(v9, 1))
        {
LABEL_9:
          __break(1u);
          break;
        }
      }

      v30[0] = 0;
      (*(*(v5 - 8) + 32))(*(*(v11 + 64) + 40), v30, v5);
      swift_continuation_resume();
      ++v8;
    }

    while (v12 != Array.endIndex.getter());
  }

  v14 = 0;
  v15 = 1 << *(v6 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v6 + 56);
  v18 = (v15 + 63) >> 6;
  v19 = (v25 + 32);
  while (v17)
  {
LABEL_18:
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v22 = *(*(v6 + 48) + 24 * (v21 | (v14 << 6)) + 8);
    if (v22)
    {
      v23 = v26;
      (*(*(v1 - 8) + 56))(v26, 1, 1, v1);
      (*v19)(*(*(v22 + 64) + 40), v23, v27);
      result = swift_continuation_resume();
    }
  }

  while (1)
  {
    v20 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v20 >= v18)
    {
    }

    v17 = *(v6 + 56 + 8 * v20);
    ++v14;
    if (v17)
    {
      v14 = v20;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004D62D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 24) != 1)
  {
    *(a1 + 24) = 1;
    v3 = *a1;
    if (!*(a1 + 8))
    {
      *a1 = 0;
      *(a1 + 8) = 2;
      *a2 = v3;
      goto LABEL_6;
    }

    if (*(a1 + 8) == 1)
    {
      *a1 = 0;
      *(a1 + 8) = 2;
      type metadata accessor for Optional();
      type metadata accessor for UnsafeContinuation();
      type metadata accessor for Optional();
      type metadata accessor for UnsafeContinuation();
      result = static Array._allocateUninitialized(_:)();
      *a2 = result;
      a2[1] = v3;
      return result;
    }
  }

  type metadata accessor for Optional();
  type metadata accessor for UnsafeContinuation();
  type metadata accessor for Optional();
  type metadata accessor for UnsafeContinuation();
  *a2 = static Array._allocateUninitialized(_:)();
LABEL_6:
  v5 = type metadata accessor for AsyncChannel.Awaiting();
  v6 = static Array._allocateUninitialized(_:)();
  if (Array._getCount()())
  {
    WitnessTable = swift_getWitnessTable();
    v8 = sub_1004D72AC(v6, v5, WitnessTable);
  }

  else
  {
    v8 = &_swiftEmptySetSingleton;
  }

  a2[1] = v8;
  return result;
}

uint64_t sub_1004D648C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1004D64AC, 0, 0);
}

uint64_t sub_1004D64AC()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_1004D659C;
  v3 = v0[1].i64[1];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v2, &unk_10054F300, v1, j___s15AsyncAlgorithms0A7ChannelC6finishyyF, v3, 0, 0, &type metadata for () + 8);
}

uint64_t sub_1004D659C()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_10034A7A0, 0, 0);
  }
}

uint64_t sub_1004D66D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[5] = *(*a2 + 80);
  v4 = type metadata accessor for Optional();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_1004D6788, 0, 0);
}

uint64_t sub_1004D6788()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  type metadata accessor for UnsafeContinuation();
  v2 = type metadata accessor for Optional();
  *v1 = v0;
  v1[1] = sub_1004D6884;
  v3 = *(v0 + 24);

  return (sub_1004D44E8)(v0 + 16, 0, 0, sub_1004D7714, v3, v2);
}

uint64_t sub_1004D6884()
{

  return _swift_task_switch(sub_1004D6980, 0, 0);
}

uint64_t sub_1004D6980()
{
  v1 = v0[2];
  if (v1)
  {
    v3 = v0[7];
    v2 = v0[8];
    v5 = v0[5];
    v4 = v0[6];
    v6 = *(v5 - 8);
    (*(v6 + 16))(v2, v0[4], v5);
    (*(v6 + 56))(v2, 0, 1, v5);
    (*(v3 + 32))(*(*(v1 + 64) + 40), v2, v4);
    swift_continuation_resume();
  }

  v7 = v0[1];

  return v7();
}

void sub_1004D6ADC(uint64_t a1, void *a2)
{
  v2 = a2[2];
  v4[2] = *(*a2 + 80);
  v4[3] = a1;
  type metadata accessor for AsyncChannel.State();
  type metadata accessor for Optional();
  type metadata accessor for UnsafeContinuation();
  type metadata accessor for Optional();
  v3 = type metadata accessor for UnsafeResumption();
  type metadata accessor for Optional();
  sub_1004D7A10(sub_1004D771C, v4, v2);
  if (v6)
  {
    v4[5] = v6;
    v4[6] = v7;
    v5 = v8 & 1;
    sub_1004C8F24(v3);
  }
}

uint64_t sub_1004D6BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 24) != 1)
  {
    if (*(a1 + 8))
    {
      if (*(a1 + 8) == 1)
      {
        v21 = *a1;
        type metadata accessor for AsyncChannel.Awaiting();

        swift_getWitnessTable();
        type metadata accessor for Set();
        Set.removeFirst()();
        v16 = v19;
        v8 = v21;
        v9 = Set.count.getter();

        if (v9)
        {
          v10 = 1;
        }

        else
        {

          v8 = 0;
          v10 = 2;
        }

        *a1 = v8;
        *(a1 + 8) = v10;
        v17 = v16;
        type metadata accessor for Optional();
        type metadata accessor for UnsafeContinuation();
        v5 = type metadata accessor for Optional();
        v6 = &v17;
        goto LABEL_12;
      }

      type metadata accessor for Optional();
      type metadata accessor for UnsafeContinuation();
      type metadata accessor for Optional();
      type metadata accessor for UnsafeContinuation();
      type metadata accessor for _ContiguousArrayStorage();
      swift_allocObject();
      v12 = static Array._adoptStorage(_:count:)();
      *v13 = a2;
      result = type metadata accessor for Array();
      *a1 = v12;
    }

    else
    {
      v18 = *a1;
      v21 = a2;
      type metadata accessor for Optional();
      type metadata accessor for UnsafeContinuation();
      type metadata accessor for Optional();
      type metadata accessor for UnsafeContinuation();
      type metadata accessor for Array();
      result = Array.append(_:)();
      *a1 = v18;
    }

    *(a1 + 8) = 0;
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    return result;
  }

  v21 = 0;
  type metadata accessor for Optional();
  type metadata accessor for UnsafeContinuation();
  v5 = type metadata accessor for Optional();
  v6 = &v21;
LABEL_12:
  result = sub_1004C8E20(a2, v6, v5, &v18);
  v14 = v19;
  v15 = v20;
  *a3 = v18;
  *(a3 + 8) = v14;
  *(a3 + 16) = v15;
  return result;
}

uint64_t AsyncChannel.send(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000A600;

  return sub_1004D648C(a1);
}

uint64_t sub_1004D6FC0@<X0>(uint64_t a1@<X8>)
{
  v2 = AsyncChannel.makeAsyncIterator()();

  *a1 = v2;
  *(a1 + 8) = 1;
  return result;
}

uint64_t sub_1004D70A8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1004D70E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1004D712C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004D7184()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1004D71C0(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1004D71DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1004D7230(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1004D72AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v50 = &v38 - v11;
  v39 = v12;
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  if (Array.count.getter())
  {
    type metadata accessor for _SetStorage();
    v15 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v15 = &_swiftEmptySetSingleton;
  }

  v43 = Array._getCount()();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = _ArrayBuffer._getElementSlowPath(_:)();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v22 = v15;
    v23 = -1 << v15[32];
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *&v49[8 * (v24 >> 6)];
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v9, (v22[6] + v28 * v24), a2);
        v30 = a3;
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = *v47;
        (*v47)(v9, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *&v49[8 * (v24 >> 6)];
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *&v49[8 * v25] = v27 | v26;
    v34 = v22[6] + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = v22[2];
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    v22[2] = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1004D7668(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000A600;

  return sub_1004D66D8(a1, v5, v4);
}

uint64_t sub_1004D7764@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  type metadata accessor for AsyncChannel.Emission();
  result = sub_1004D5700(v3);
  *a1 = result;
  return result;
}

uint64_t sub_1004D77D0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = v2;
  *(result + 16) = v2 + 1;
  return result;
}

uint64_t sub_1004D77E4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1004D7820(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_1004D787C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1004D78D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1004D790C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1004D7954(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1004D7998(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void sub_1004D7A10(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + class metadata base offset for ManagedBuffer + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t sub_1004D7AC8()
{
  ManagedBuffer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1004D7B34()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1004D7C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 24);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  (*(v11 + 16))(v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_1004D7DA4(a1, v9, a2);
  if (v2)
  {
    swift_allocError();
    return (*(v6 + 32))(v13, v9, v5);
  }

  return result;
}

uint64_t sub_1004D7DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a3, v3);
  }

  (*(*(*(a1 + 24) - 8) + 32))(a2, v3, *(a1 + 24));
  return swift_willThrowTypedImpl();
}

void sub_1004D7EB8()
{
  sub_100004FD8();
  sub_10000500C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004D7EF4()
{
  sub_100005000();
  sub_10000500C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004D7F64(void *a1)
{
  [a1 isSystemPaper];
  sub_100005380();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004D7FE8(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Showing note (%@) -- no sync was needed", buf, 0xCu);
}

void sub_1004D8074()
{
  sub_100064388();
  sub_1000643B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004D80EC(uint64_t a1)
{
  v1 = [sub_1000643A0(a1) ic_loggingIdentifier];
  sub_100005000();
  sub_100005380();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004D81F0(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Showing inline attachment (%@) -- no sync was needed", buf, 0xCu);
}

void sub_1004D8248(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Attempting sync because we're missing the inline attachment (%@) or note (%@)", buf, 0x16u);
}

void sub_1004D82B8()
{
  sub_100064388();
  sub_1000643B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1004D833C(uint64_t a1, uint64_t a2)
{
  v3 = [sub_1000643A0(a1) ic_loggingIdentifier];
  v9 = [*(*(*a2 + 8) + 40) ic_loggingIdentifier];
  sub_100005380();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1004D8400(uint64_t a1)
{
  v1 = [sub_1000643A0(a1) ic_loggingIdentifier];
  sub_100005000();
  sub_100005380();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004D848C()
{
  sub_100064388();
  sub_10000500C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004D85E0(void *a1)
{
  v1 = [a1 description];
  sub_100005000();
  sub_100005390();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004D866C(char a1, char a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1 & 1;
  v4 = 1024;
  v5 = a2 & 1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "willShowWelcomeScreen: %d forceWelcomeScreen=%d", v3, 0xEu);
}

void sub_1004D888C()
{
  sub_100005000();
  sub_10000500C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004D88FC(void *a1)
{
  v1 = [a1 currentVirtualSmartFolderType];
  sub_100005000();
  sub_100005390();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004D89CC(void *a1)
{
  v1 = [a1 ic_loggingIdentifier];
  sub_100005000();
  sub_100005380();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004D8A58(void *a1)
{
  v1 = objc_begin_catch(a1);
  v2 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 138412290;
    v4 = v1;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed to undo due to exception: %@", &v3, 0xCu);
  }

  objc_end_catch();
}

void sub_1004D8B24()
{
  sub_100005000();
  sub_1000643B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004D8C48(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100005000();
  sub_100005390();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1004D8CEC()
{
  sub_100004FD8();
  sub_10000500C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004D8D28()
{
  sub_100004FD8();
  sub_10000500C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004D8D64()
{
  sub_100004FD8();
  sub_10000500C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004D8E4C()
{
  v0 = +[UIApplication sharedApplication];
  [v0 backgroundTimeRemaining];
  sub_1000053A0(&_mh_execute_header, v1, v2, "Canceling all operations because our background sync assertion is expiring in %f seconds", v3, v4, v5, v6, 0);
}

void sub_1004D8EE0()
{
  v0 = +[UIApplication sharedApplication];
  [v0 backgroundTimeRemaining];
  sub_1000053A0(&_mh_execute_header, v1, v2, "Background sync assertion is expiring in %f seconds but allowing operations to remain in sync bubble", v3, v4, v5, v6, 0);
}

void sub_1004D8F74(char a1, uint64_t a2, os_log_t log)
{
  v3 = @"YES";
  if ((a1 & 1) == 0)
  {
    v3 = @"NO";
  }

  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Background sync task scheduled {success: %@, error: %@}", &v4, 0x16u);
}

void sub_1004D907C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error recreating default folder for CloudKit account after the user purged the zone for account ID %@", &v3, 0xCu);
}

void sub_1004D90F8(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error saving after notes zone deleted by user for account ID %@: %@", &v4, 0x16u);
}

void sub_1004D9184(void *a1)
{
  v2 = [a1 className];
  v3 = [a1 recordID];
  v4 = [v3 recordName];
  sub_1000053C0();
  sub_100005380();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1004D9240(void *a1)
{
  v1 = [a1 zoneName];
  sub_100005000();
  sub_100005380();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1004D92E4(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 shortLoggingDescription];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "Re-uploading record (%@) after zone reset", a1, 0xCu);
}

void sub_1004D935C(void *a1)
{
  v1 = [a1 recordName];
  sub_100005000();
  sub_100005380();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1004D95F0(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Updated account bag for %@", &v3, 0xCu);
}

void sub_1004D96D4(void *a1, id *a2)
{
  v3 = [a1 shortLoggingDescription];
  v4 = [*a2 shortLoggingDescription];
  sub_1000053C0();
  sub_100005380();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1004D9780(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  sub_100005000();
  sub_100005380();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004D9874(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Invalid account type for account: %@", &v2, 0xCu);
}

void sub_1004D9930(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "An error has occurred in deleteSharesForObjects: %@", &v3, 0xCu);
}

void sub_1004D99AC(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "An error has occurred in deleteSharesIfNecessaryForContentsOfFolder: %@", &v3, 0xCu);
}

void sub_1004D9A28(void *a1, NSObject *a2)
{
  v3 = [a1 note];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Trying to show unsupported note in note results thumbnail view {note: %@}", &v4, 0xCu);
}

void sub_1004D9B48(void *a1)
{
  v6 = [a1 localizedDescription];
  sub_100005390();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004D9C1C(void *a1)
{
  v6 = [a1 localizedDescription];
  sub_100005390();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1004D9CC4(uint64_t a1, uint64_t a2)
{
  v4 = [sub_1000053D8(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_100017DBC(&_mh_execute_header, v5, v6, "Error copying file to temporary directory: %@");
}

void sub_1004D9D20(uint64_t a1, uint64_t a2)
{
  v4 = [sub_1000053D8(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_100017DBC(&_mh_execute_header, v5, v6, "Error removing file from temporary directory: %@");
}

void sub_1004D9E68(uint64_t a1, const char *a2, NSObject *a3)
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%@ %@ ranking strategy not found", &v8, 0x16u);
}

void sub_1004D9F30(void *a1)
{
  v1 = [a1 taskIdentifier];
  sub_1000053A0(&_mh_execute_header, v2, v3, "Last run Notes version for task before Spring 2022 — setting minimum {taskIdentifier: %@}", v4, v5, v6, v7, 2u);
}

void sub_1004D9FB8(void *a1, NSObject *a2)
{
  v3 = [a1 taskIdentifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Current Notes version is greater than last run Notes version — skipping {taskIdentifier: %@}", &v4, 0xCu);
}

void sub_1004DA050(void *a1)
{
  v1 = [a1 taskIdentifier];
  sub_1000053A0(&_mh_execute_header, v2, v3, "Current Notes version is equal last run Notes version — skipping {taskIdentifier: %@}", v4, v5, v6, v7, 2u);
}

void sub_1004DA11C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error batch deleting orphaned HTML attachments: %@", &v2, 0xCu);
}

void sub_1004DA1D8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error batch deleting orphaned HTML notes: %@", &v2, 0xCu);
}

void sub_1004DA394(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error importing note from file at %@: %@", &v3, 0x16u);
}

void sub_1004DA41C(uint64_t a1, id *a2, NSObject *a3)
{
  v4 = *(a1 + 40);
  v5 = [*a2 searchIndexingIdentifier];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%@: An object hidden from search is retrieved from indexing: %@", &v6, 0x16u);
}

void sub_1004DA4D0(void *a1, NSObject *a2)
{
  v3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a1 count]);
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Found %@ owned, password protected note(s) in a shared folder.", &v4, 0xCu);
}

void sub_1004DA57C(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 ic_loggingDescription];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "Moving owned, password protected note from shared folder into default folder: %@", a1, 0xCu);
}

void sub_1004DA638(void *a1, NSObject *a2)
{
  v3 = 134217984;
  v4 = [a1 count];
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Found %lu shared root folders to check", &v3, 0xCu);
}

void sub_1004DA6C4(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 shortLoggingDescription];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "fixing minimum supported version for shared root folder %@", a1, 0xCu);
}

void sub_1004DA73C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Haven't run %@ yet, running now", &v2, 0xCu);
}

void sub_1004DA7B4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error excluding %@ from backup %@", &v3, 0x16u);
}

void sub_1004DA83C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Already ran %@", &v2, 0xCu);
}

void sub_1004DA8B4(NSObject *a1)
{
  v2 = +[ICDebugUtilities stateOfTheWorld];
  sub_100005000();
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "State of the world:\n%@", v3, 0xCu);
}

void sub_1004DA950()
{
  sub_100004FD8();
  sub_100005018();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004DA98C()
{
  sub_100004FD8();
  sub_100005018();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004DA9C8()
{
  sub_100004FD8();
  sub_100005018();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004DAA04()
{
  sub_100004FD8();
  sub_100005018();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004DAA40()
{
  sub_100005000();
  sub_100005018();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004DAAB0()
{
  sub_100005000();
  sub_100005018();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004DABA0()
{
  sub_100004FD8();
  sub_100005018();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004DABDC()
{
  sub_100004FD8();
  sub_100005018();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004DAC18()
{
  sub_100004FD8();
  sub_100005018();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004DAC54()
{
  sub_100005000();
  sub_100005018();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004DAD3C()
{
  sub_100005000();
  sub_100005018();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004DADAC()
{
  sub_100005000();
  sub_10000500C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004DAE1C()
{
  sub_100004FD8();
  sub_100005018();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004DAE58()
{
  sub_100004FD8();
  sub_100005018();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004DAE94()
{
  sub_100004FD8();
  sub_100005018();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004DAED0(char a1, uint64_t a2, os_log_t log)
{
  v3 = 134218240;
  v4 = a2;
  v5 = 1024;
  v6 = a1 & 1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Password change count is %lu for isReset = %d", &v3, 0x12u);
}

void sub_1004DAFD4()
{
  sub_100004FD8();
  sub_100005018();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004DB010(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Setting note editor note to nil in resetMigrationStateForInternalSettingsAndShowMigrationScreenIfNecessary", buf, 2u);
}

void sub_1004DB050()
{
  sub_100005000();
  sub_100005018();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004DB0C0()
{
  sub_100005000();
  sub_100005018();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004DB130()
{
  sub_100004FD8();
  sub_10000500C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004DB16C()
{
  sub_100005000();
  sub_100005018();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004DB1DC()
{
  sub_100005000();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Trying to show inline attachment (%@) in note (%@) after user tapped notification", v2, 0x16u);
}

void sub_1004DB260()
{
  sub_100004FD8();
  sub_100005018();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004DB2B0(uint64_t a1, uint64_t a2)
{
  v4 = [sub_1000053D8(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_10009A9B0(&_mh_execute_header, v5, v6, "Deleting PNG preview image for: %@");
}

void sub_1004DB394(id *a1)
{
  v1 = [*a1 legacyAccountObjectID];
  sub_100005000();
  sub_100005390();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1004DB43C(void *a1, NSObject *a2)
{
  v3 = [a1 legacyAccountObjectID];
  sub_100005000();
  sub_100005024(&_mh_execute_header, a2, v4, "Starting migration for legacy account: %@", v5);
}

void sub_1004DB5AC(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Imported note (%@) to folder (%@)", buf, 0x16u);
}

void sub_1004DB614(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "No file URL or identifier for attachment", buf, 2u);
}

void sub_1004DB7F4(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_100005024(&_mh_execute_header, a3, a3, "We have imported this note, and the legacy version is newer than the one we imported, but the user has not edited this note since import (%@)", a2);
}

void sub_1004DB844()
{
  sub_100017DDC(__stack_chk_guard);
  sub_10009EE4C();
  sub_1000053EC(&_mh_execute_header, v0, v1, "We have already imported a newer version of this note (%@)", v2, v3, v4, v5, v6);
}

void sub_1004DB8AC(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_100005024(&_mh_execute_header, a3, a3, "We have already imported this note, and the legacy modification date is the same as we the one we imported (%@)", a2);
}

void sub_1004DB8FC(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_100005024(&_mh_execute_header, a3, a3, "We have already imported this note, and the legacy content hash is the same as the one we imported (%@)", a2);
}

void sub_1004DBAC8()
{
  sub_100017DDC(__stack_chk_guard);
  sub_10009EE4C();
  sub_1000053EC(&_mh_execute_header, v0, v1, "Found legacy tombstone for folder (%@), using default folder", v2, v3, v4, v5, v6);
}

void sub_1004DBB30()
{
  sub_100017DDC(__stack_chk_guard);
  sub_10009EE4C();
  sub_1000053EC(&_mh_execute_header, v0, v1, "Importing legacy folder (%@)", v2, v3, v4, v5, v6);
}

void sub_1004DBB98()
{
  sub_100017DDC(__stack_chk_guard);
  sub_10009EE4C();
  sub_1000053EC(&_mh_execute_header, v0, v1, "Folder (%@) has parent folder", v2, v3, v4, v5, v6);
}

void sub_1004DBC00()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_100005000();
  sub_100005390();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1004DBCAC()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_100005000();
  sub_100005390();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004DBD54()
{
  sub_100004FD8();
  sub_100005018();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004DBE04()
{
  sub_100004FD8();
  sub_100005018();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004DBE40()
{
  sub_100004FD8();
  sub_100005018();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004DBEF0()
{
  sub_100004FD8();
  sub_100005018();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004DBF2C()
{
  sub_100004FD8();
  sub_100005018();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004DBF68()
{
  sub_100004FD8();
  sub_100005018();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004DC018(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error vaccuming HTML database at %@", &v3, 0xCu);
}

void sub_1004DC164(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error removing app data: %@", &v2, 0xCu);
}

void sub_1004DC1DC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error writing state dump: %@", &v2, 0xCu);
}

void sub_1004DC254(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error dumping state of the world: %@", &v2, 0xCu);
}

void sub_1004DC2E0(void *a1, NSObject *a2)
{
  v4 = [a1 identifier];
  v5 = [a1 modifiedAfterDateString];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Marking records as needing fetching… {identifier: %@, modifiedAfterDate: %@}", &v6, 0x16u);
}

void sub_1004DC3A8(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Marked records as needing fetching {identifier: %@, #objects: %@}", buf, 0x16u);
}

void sub_1004DC49C()
{
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = sub_100017DEC();
  v3 = NSStringFromSelector(v2);
  sub_1000053C0();
  sub_1000A7444(&_mh_execute_header, v4, v5, "%@ %@ previous note was deleted", v6, v7, v8, v9, v10);
}

void sub_1004DC540(void *a1)
{
  [a1 noteEditorViewController];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100017DEC() noteEditorViewController];
  v3 = [v2 note];
  v4 = [v3 shortLoggingDescription];
  sub_1000053C0();
  sub_1000A7444(&_mh_execute_header, v5, v6, "Begin session with noteEditor %@ note %@", v7, v8, v9, v10, v11);
}

void sub_1004DC608(void *a1)
{
  [a1 noteEditorViewController];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100017DEC() noteEditorViewController];
  v3 = [v2 note];
  v4 = [v3 shortLoggingDescription];
  sub_1000053C0();
  sub_1000A7444(&_mh_execute_header, v5, v6, "Save session with noteEditor %@ note %@", v7, v8, v9, v10, v11);
}

void sub_1004DC6D0(void *a1)
{
  [a1 noteEditorViewController];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100017DEC() noteEditorViewController];
  v3 = [v2 note];
  v4 = [v3 shortLoggingDescription];
  sub_1000053C0();
  sub_1000A7444(&_mh_execute_header, v5, v6, "End session with noteEditor %@ note %@", v7, v8, v9, v10, v11);
}

void sub_1004DC994(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [*(a1 + 32) objectID];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Couldn't delete shares for folder {folderID: %@, error: %@}", &v6, 0x16u);
}

void sub_1004DCA48(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = 138412802;
  v9 = v7;
  v10 = 2048;
  v11 = a1;
  v12 = 2112;
  v13 = a2;
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "<%@:%p> wants to show alert %@, but no presenter is set.", &v8, 0x20u);
}

void sub_1004DCB34(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error updating paper document scan attachment sections: %@", &v2, 0xCu);
}

void sub_1004DCBAC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error cancelling current audio recording session after closing auxiliary window {error: %@}", &v2, 0xCu);
}

void sub_1004DCC8C(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[ICWindowSceneDelegate scene:didFailToContinueUserActivityWithType:error:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: Did fail to continue user activity with error: %@", &v2, 0x16u);
}

void sub_1004DCD18(os_log_t log)
{
  v1 = 136315138;
  v2 = "[ICWindowSceneDelegate performPPTForegroundLaunchTasksIfNecessary]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s", &v1, 0xCu);
}

void sub_1004DCE44(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 targetContentIdentifier];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "userActivity.targetContentIdentifier is not a valid URL: %@", a1, 0xCu);
}

void sub_1004DCF00(void *a1, NSObject *a2)
{
  v3 = 134217984;
  v4 = [a1 count];
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Found %ld deleted notes that aren't in the trash", &v3, 0xCu);
}

void sub_1004DCFC4(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 ic_loggingIdentifier];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Skipping account because we were unable to save the MOC: %@", a1, 0xCu);
}

void sub_1004DD074(void *a1, void *a2, NSObject *a3)
{
  v6 = [a1 ic_loggingIdentifier];
  v7 = [a1 serverSideUpdateTaskLastCompletedBuild];
  v8 = [a2 currentBuild];
  v9 = [a2 platformName];
  v10 = [a1 serverSideUpdateTaskContinuationToken];
  v11 = [v10 ic_sha256];
  v12 = 138413314;
  v13 = v6;
  v14 = 2112;
  v15 = v7;
  v16 = 2112;
  v17 = v8;
  v18 = 2112;
  v19 = v9;
  v20 = 2112;
  v21 = v11;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Running tasks for account %@ (previous=%@, current=%@, platform=%@, token=%@)", &v12, 0x34u);
}

void sub_1004DD1B0(uint64_t a1, uint64_t *a2, NSObject *a3)
{
  v5 = [*(a1 + 40) ic_loggingIdentifier];
  v6 = *a2;
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error running task for account (%@): %@", &v7, 0x16u);
}

void sub_1004DD268(uint64_t a1, NSObject *a2)
{
  v4 = [*(a1 + 40) ic_loggingIdentifier];
  v5 = [*(a1 + 56) ic_sha256];
  v6 = *(a1 + 64);
  v7 = 138412802;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  v11 = 2112;
  v12 = v6;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Task for account (%@) returned with token (%@) records: %@", &v7, 0x20u);
}

void sub_1004DD33C(id *a1, NSObject *a2)
{
  v3 = [*a1 ic_loggingIdentifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Aborting tasks for account (%@) because the MOC failed to save", &v4, 0xCu);
}

void sub_1004DD3D8(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = [a1 ic_loggingIdentifier];
  v7 = [a1 serverSideUpdateTaskFailureCount];
  v8 = *(a2 + 40);
  v9 = [a1 serverSideUpdateTaskLastAttemptedBuild];
  v10 = [a1 serverSideUpdateTaskLastCompletedBuild];
  v11 = 138413314;
  v12 = v6;
  v13 = 1024;
  v14 = v7;
  v15 = 1024;
  v16 = v8;
  v17 = 2112;
  v18 = v9;
  v19 = 2112;
  v20 = v10;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Evaluating account (%@) (attempt=%hu/%hu) (lastAttempt=%@) (lastComplete=%@)", &v11, 0x2Cu);
}

void sub_1004DD520(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error updating inline drawing attachment sections: %@", &v2, 0xCu);
}

void sub_1004DD598(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "failed to execute JavaScript: %@\nJavaScript error: %@", &v4, 0x16u);
}

void sub_1004DD624()
{
  sub_100004FD8();
  sub_10000500C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004DD660(void *a1, id *a2)
{
  v3 = [a1 ic_loggingDescription];
  v9 = [*a2 shortLoggingDescription];
  sub_100005380();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1004DD71C(id *a1)
{
  v1 = [*a1 shortLoggingDescription];
  sub_100005000();
  sub_100005380();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004DD7AC()
{
  sub_100005000();
  sub_10000500C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004DD81C()
{
  sub_100004FD8();
  sub_10000500C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004DD858()
{
  sub_100005000();
  sub_10000500C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004DD8C8(uint64_t a1)
{
  v1 = [*(a1 + 32) shortLoggingDescription];
  sub_100005000();
  sub_100005380();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004DD958(char a1, NSObject *a2)
{
  v2 = @"Off";
  if (a1)
  {
    v2 = @"On";
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Cloud sharing controller did turn hide alerts: %@", &v3, 0xCu);
}

void sub_1004DD9E8()
{
  sub_100004FD8();
  sub_10000500C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004DDA24()
{
  sub_100004FD8();
  sub_10000500C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004DDB08(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Couldn't build a text attachment.", buf, 2u);
}

void sub_1004DDB48(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 localizedDescription];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error %@ at URL (getting type identifier) during import notes process: %@", &v6, 0x16u);
}

void sub_1004DDC2C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Already finished with migration", buf, 2u);
}

void sub_1004DDE54(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 legacyAccountContext];
  v6 = [a2 objectID];
  v7 = [v5 allVisibleNotesForAccountWithObjectID:v6];
  v8 = [v7 count];
  v9 = [a2 folders];
  v10 = 134218240;
  v11 = v8;
  v12 = 2048;
  v13 = [v9 count];
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Importing the local account to the new format. It has %ld note(s) in %ld folder(s).", &v10, 0x16u);
}

void sub_1004DE12C(uint64_t a1)
{
  v1 = [sub_100027D14(a1) objectIdentifier];
  sub_100005000();
  sub_100005380();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004DE1B8(uint64_t a1)
{
  v1 = [sub_100027D14(a1) objectIdentifier];
  sub_100005000();
  sub_100005380();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004DE278(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Importing the iCloud account again while refreshing", buf, 2u);
}

void sub_1004DE43C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Copying notes from a legacy account (%@) to iCloud account", buf, 0xCu);
}

void sub_1004DE494(uint64_t a1)
{
  v1 = [*(*(*a1 + 8) + 40) objectIdentifier];
  sub_100005000();
  sub_100005380();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004DE594(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  sub_100005000();
  sub_100005380();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1004DE638(void *a1)
{
  v1 = [a1 identifier];
  sub_100005000();
  sub_100005380();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004DE6C4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [sub_100027D14(a1) identifier];
  sub_100005000();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error disabling note syncing for account (%@): %@", v6, 0x16u);
}

void sub_1004DE770(uint64_t a1)
{
  v1 = [sub_100027D14(a1) identifier];
  sub_100005000();
  sub_100005380();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004DEBD4()
{
  sub_10009EE4C();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Error performing full sync while resetting migration for account ID %@: %@", v2, 0x16u);
}

void sub_1004DEDAC(uint64_t a1, id *a2, NSObject *a3)
{
  v4 = *(a1 + 40);
  v5 = [*a2 loggingDescription];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Checking note for duplicates in account ID %@: %@", &v6, 0x16u);
}

void sub_1004DF108(char a1, NSObject *a2)
{
  v2 = @"NO";
  if (a1)
  {
    v2 = @"YES";
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "ICCleanupTemporaryAssetDirectoryLaunchTask :: starting execution, hasExecutedPreviously = %@", &v3, 0xCu);
}

void sub_1004DF198(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "ICCleanupTemporaryAssetDirectoryLaunchTask :: Error reading temporary asset directory %@, error %@", &v3, 0x16u);
}

void sub_1004DF220(void *a1, NSObject *a2)
{
  v3 = 134217984;
  v4 = [a1 count];
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "ICCleanupTemporaryAssetDirectoryLaunchTask :: %lu files found in temporary asset directory", &v3, 0xCu);
}

void sub_1004DF378(void *a1, NSObject *a2)
{
  v3 = [a1 userInfo];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "No valid device check indicator found from timer.userInfo %@", &v4, 0xCu);
}

void sub_1004DF570(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 identifier];
  v6 = [a2 identifier];
  sub_100005424();
  v9 = v7;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Undoably setting folder %@ to note %@.", v8, 0x16u);
}

void sub_1004DF628(void *a1)
{
  v2 = [a1 account];
  v3 = [v2 trashFolder];
  v4 = [v3 identifier];
  v5 = [a1 account];
  v6 = [v5 identifier];
  v7 = [a1 shortLoggingDescription];
  sub_100005424();
  sub_1000EFE3C(&_mh_execute_header, v8, v9, "Moving shared note as a participant to recently deleted folder %@ in account %@ for note %@", v10, v11, v12, v13, v14);
}

void sub_1004DF72C(void *a1)
{
  v2 = [a1 shortLoggingDescription];
  v3 = [a1 account];
  v4 = [v3 trashFolder];
  v5 = [v4 identifier];
  v6 = [a1 account];
  v13 = [v6 identifier];
  sub_1000EFE3C(&_mh_execute_header, v7, v8, "Undoably moving note %@ to the recently deleted folder %@ in account %@", v9, v10, v11, v12, 2u);
}

void sub_1004DF8C4(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Flick scroll test iterations remaining: %lu", &v2, 0xCu);
}

void sub_1004DF980(uint64_t a1)
{
  v2 = +[NSDate date];
  [v2 timeIntervalSinceDate:*(a1 + 32)];
  sub_1000053A0(&_mh_execute_header, v3, v4, "Reindexing for search PPT completed in %f", v5, v6, v7, v8, 0);
}

void sub_1004DFA38(void *a1, NSObject *a2)
{
  v3 = [a1 typeUTI];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Trying to show an attachment in the images and movies scroll view, but it's not an image or movie. typeUTI=%@", &v4, 0xCu);
}

void sub_1004DFAD0(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = 138412546;
  v7 = objc_opt_class();
  v8 = 2112;
  v9 = a2;
  v5 = v7;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error fetching from the fetched results controller on %@: %@", &v6, 0x16u);
}

void sub_1004DFB78(void *a1, NSObject *a2)
{
  v3 = [a1 shortLoggingDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Attempting to move notes into a folder that doesn't allow moving contents in or out: %@", &v4, 0xCu);
}

void sub_1004DFC10(void *a1, void *a2, NSObject *a3)
{
  v6 = [a1 account];
  v7 = [v6 identifier];
  v8 = [a2 shortLoggingDescription];
  v9 = 138412802;
  v10 = a1;
  v11 = 2112;
  v12 = v7;
  v13 = 2112;
  v14 = v8;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Moving note from unowned, shared folder to folder %@ in account %@ for note %@", &v9, 0x20u);
}

void sub_1004DFCF8(void *a1)
{
  v1 = [a1 ic_loggingDescription];
  sub_100005438(&_mh_execute_header, v2, v3, "Cannot associate invitation with object because share URL is missing {share: %@, accountID: %@}", v4, v5, v6, v7, 2u);
}

void sub_1004DFD98(id *a1, void *a2, NSObject *a3)
{
  v5 = [*a1 ic_loggingDescription];
  v6 = [a2 objectID];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Updated invitation and associated it with object {share: %@, objectID: %@}", &v7, 0x16u);
}

void sub_1004DFE60(id *a1)
{
  v1 = [*a1 ic_loggingDescription];
  sub_100005438(&_mh_execute_header, v2, v3, "Cannot associate invitation with object because root object or root object account is missing {share: %@, accountID: %@}", v4, v5, v6, v7, 2u);
}

void sub_1004DFF4C(void *a1, NSObject *a2)
{
  v3 = [a1 shortLoggingDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "No file for %@, marking as needing to be fetched", &v4, 0xCu);
}

void sub_1004DFFE4(uint64_t a1, NSObject *a2)
{
  v3 = 138412290;
  v4 = objc_opt_class();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@ reported failure and may be retried on the next launch", &v3, 0xCu);
}

void sub_1004E0070(uint64_t a1, NSObject *a2)
{
  v3 = 138412290;
  v4 = objc_opt_class();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@ reported success", &v3, 0xCu);
}

void sub_1004E0184(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not open application because %@", &v3, 0xCu);
}

void sub_1004E02CC(void *a1, NSObject *a2)
{
  v3 = [a1 shortLoggingDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Paper bundle missing or empty for %@, marking as needing to be fetched", &v4, 0xCu);
}

void sub_1004E03BC(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Setting progress tracker making progress %d", v2, 8u);
}

void sub_1004E0434(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Setting progress indicator should animate %d", v2, 8u);
}

void sub_1004E04C0(void *a1)
{
  [a1 count];
  sub_100005380();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004E0544(void *a1)
{
  [a1 count];
  sub_100005380();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004E05C8(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Root attachment (%@) found in note (%@) body", buf, 0x16u);
}

void sub_1004E0638(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 40) ic_loggingIdentifier];
  v9 = [a2 shortLoggingDescription];
  sub_100005380();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1004E0778(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 objectID];
  v6 = 134218242;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Setting note collection on note browser %p: %@", &v6, 0x16u);
}

void sub_1004E0964(uint64_t a1, uint64_t a2, NSObject *a3)
{
  LODWORD(v3) = 134218240;
  *(&v3 + 4) = a1;
  WORD6(v3) = 2048;
  HIWORD(v3) = a2;
  sub_100124714(&_mh_execute_header, a2, a3, "ICNoteBrowseViewController %p: Created NEW summary view %p", v3, *(&v3 + 1));
}

void sub_1004E0A9C(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 ic_loggingDescription];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "Found note %@ without an account and folder, will move to default account and folder.", a1, 0xCu);
}

void sub_1004E0D54(id *a1)
{
  v1 = [*a1 identifier];
  sub_1000053A0(&_mh_execute_header, v2, v3, "Clearing OCR generated userTitle for attachment %@", v4, v5, v6, v7, 2u);
}

void sub_1004E0F1C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Extracting media file: Error loading file representation for content type %@ - error: %@", &v4, 0x16u);
}

void sub_1004E0FA8(uint64_t a1, NSObject *a2)
{
  v4 = [UTTypeFileURL identifier];
  v5 = *(a1 + 40);
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Extracting URL: Error loading item for type identifier %@ - error: %@", &v6, 0x16u);
}

void sub_1004E1068(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error loading item: %@", &v3, 0xCu);
}

void sub_1004E10E4(id *a1, NSObject *a2)
{
  v3 = [*a1 registeredTypeIdentifiers];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error: could not find extension in %@", &v4, 0xCu);
}

void sub_1004E11C4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Cannot save temporary file to disk: %@", &v2, 0xCu);
}

void sub_1004E123C(void *a1, NSObject *a2)
{
  v4 = [a1 userInfo];
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error: Failed while saving note: %@, %@", &v5, 0x16u);
}

void sub_1004E1414(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error loading image from PHPicker: %@", &v2, 0xCu);
}

void sub_1004E15D8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Starting import operation: %@", &v2, 0xCu);
}

void sub_1004E1650(uint64_t a1, NSObject *a2)
{
  v2 = *(*a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error saving legacy note context after import: %@", &v3, 0xCu);
}

void sub_1004E16D0(uint64_t *a1, uint64_t a2, NSObject *a3)
{
  v4 = *a1;
  v5 = [*(*(*a2 + 8) + 40) identifier];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%@ importing legacy note %@", &v6, 0x16u);
}

void sub_1004E178C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error saving while importing notes: %@", &v2, 0xCu);
}

void sub_1004E1848(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100005000();
  sub_100005438(&_mh_execute_header, v2, v3, "Error: %@ while getting contents of URL: %@", v4, v5, v6, v7, v8);
}

void sub_1004E19D0(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100005000();
  sub_100005438(&_mh_execute_header, v2, v3, "Error %@ at URL (getting type identifier) during import notes process: %@", v4, v5, v6, v7, v8);
}

void sub_1004E1A6C(uint64_t a1, void *a2)
{
  v2 = [a2 sortedSections];
  [v2 count];
  sub_100005470();
  sub_100005438(&_mh_execute_header, v3, v4, "Section index out of bounds: %@, %ld", v5, v6, v7, v8, v9);
}

void sub_1004E1B38(void *a1, NSObject *a2)
{
  v3 = [a1 activityType];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unhandled user activity type: %@", &v4, 0xCu);
}

void sub_1004E1C38(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "ICFolderOutlineCollectionViewCell is incompatible with identifier {identifier: %@}", &v2, 0xCu);
}

void sub_1004E1CB0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Cannot import archive into account {error: %@, account: %@}", &v3, 0x16u);
}

void sub_1004E1D38(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Imported archive into account {account: %@}", &v2, 0xCu);
}

void sub_1004E1DF4(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  sub_100005000();
  sub_100017DF8();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

void sub_1004E1EB8(void *a1)
{
  v1 = [a1 identifier];
  sub_100005000();
  sub_100017DF8();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

void sub_1004E2064(void *a1)
{
  v1 = [a1 objectID];
  sub_100005000();
  sub_100017DF8();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
}

void sub_1004E20F4(void *a1)
{
  v1 = [a1 objectID];
  sub_100005000();
  sub_100017DF8();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
}

void sub_1004E21C8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error fetching client state from CoreSpotlight: %@", &v2, 0xCu);
}

void sub_1004E2284(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@ error deleting all searchable items from index: %@", &v4, 0x16u);
}

void sub_1004E2310(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@ deleted all searchable items from index. updating the indexing version to expected version", &v3, 0xCu);
}

uint64_t EntityProperty<>.init(title:)()
{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

uint64_t IntentParameter<>.init(title:description:default:requestValueDialog:inputConnectionBehavior:)()
{
  return IntentParameter<>.init(title:description:default:requestValueDialog:inputConnectionBehavior:)();
}

{
  return IntentParameter<>.init(title:description:default:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)()
{
  return _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
}

{
  return _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
}

uint64_t ContainsComparator.init<>(mappingTransform:)()
{
  return ContainsComparator.init<>(mappingTransform:)();
}

{
  return ContainsComparator.init<>(mappingTransform:)();
}

{
  return ContainsComparator.init<>(mappingTransform:)();
}

uint64_t SortDescriptor.init<A>(_:comparator:order:)()
{
  return SortDescriptor.init<A>(_:comparator:order:)();
}

{
  return SortDescriptor.init<A>(_:comparator:order:)();
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall Date.formatted()()
{
  v0 = Date.formatted()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t static ICQuery.makeQueryForNotesMatching(_:)()
{
  return static ICQuery.makeQueryForNotesMatching(_:)();
}

{
  return static ICQuery.makeQueryForNotesMatching(_:)();
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = String.init(repeating:count:)(repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t String.init<A>(_:)()
{
  return String.init<A>(_:)();
}

{
  return String.init<A>(_:)();
}

uint64_t ICCreateNoteAction.perform(withTitle:contents:pinned:container:)()
{
  return ICCreateNoteAction.perform(withTitle:contents:pinned:container:)();
}

{
  return ICCreateNoteAction.perform(withTitle:contents:pinned:container:)();
}

__C::_NSRange_optional __swiftcall _NSRange.init(union:)(Swift::OpaquePointer a1)
{
  v1 = _NSRange.init(union:)(a1._rawValue);
  result.value.length = v2;
  result.value.location = v1;
  result.is_nil = v3;
  return result;
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  v4 = _CGPointApplyAffineTransform(point, t);
  y = v4.y;
  x = v4.x;
  result.y = y;
  result.x = x;
  return result;
}

CGPoint CGPointFromString(NSString *string)
{
  v3 = _CGPointFromString(string);
  y = v3.y;
  x = v3.x;
  result.y = y;
  result.x = x;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v4 = _NSIntersectionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}

double sub_1004E9DAC(double result)
{
  if (!atomic_load(&dword_1006CB21C))
  {
    return sub_1004EA244(result);
  }

  return result;
}

double sub_1004E9DD0(double result)
{
  if (!atomic_load(&dword_1006CB21C))
  {
    return sub_1004EA244(result);
  }

  return result;
}

double sub_1004E9DF4(double result)
{
  if (!atomic_load(&dword_1006CB21C))
  {
    return sub_1004EA244(result);
  }

  return result;
}

double sub_1004E9E18(double result)
{
  if (!atomic_load(&dword_1006CB21C))
  {
    return sub_1004EA244(result);
  }

  return result;
}

double sub_1004E9E3C(double result)
{
  if (!atomic_load(&dword_1006CB21C))
  {
    return sub_1004EA244(result);
  }

  return result;
}

double sub_1004E9E60(double result)
{
  if (!atomic_load(&dword_1006CB21C))
  {
    return sub_1004EA244(result);
  }

  return result;
}

double sub_1004E9E84(double result)
{
  if (!atomic_load(&dword_1006CB21C))
  {
    return sub_1004EA244(result);
  }

  return result;
}

double sub_1004E9EA8(double result)
{
  if (!atomic_load(&dword_1006CB21C))
  {
    return sub_1004EA244(result);
  }

  return result;
}

double sub_1004E9ECC(double result)
{
  if (!atomic_load(&dword_1006CB21C))
  {
    return sub_1004EA244(result);
  }

  return result;
}

double sub_1004E9EF0(double result)
{
  if (!atomic_load(&dword_1006CB214))
  {
    return sub_1004EA0FC(result);
  }

  return result;
}

void sub_1004E9F14(double a1)
{
  if (!atomic_load(&dword_1006CB214))
  {
    sub_1004EA0FC(a1);
  }
}

void sub_1004E9F38(double a1)
{
  if (!atomic_load(&dword_1006CB214))
  {
    sub_1004EA0FC(a1);
  }
}

double sub_1004E9F5C(double result)
{
  if (!atomic_load(&dword_1006CB21C))
  {
    return sub_1004EA244(result);
  }

  return result;
}

double sub_1004E9F80(double result)
{
  if (!atomic_load(&dword_1006CB210))
  {
    return sub_1004EA058(result);
  }

  return result;
}

double sub_1004E9FA4(double result)
{
  if (!atomic_load(&dword_1006CB210))
  {
    return sub_1004EA058(result);
  }

  return result;
}

double sub_1004E9FC8(double result)
{
  if (!atomic_load(&dword_1006CB210))
  {
    return sub_1004EA058(result);
  }

  return result;
}

double sub_1004E9FEC(double result)
{
  if (!atomic_load(&dword_1006CB218))
  {
    return sub_1004EA1A0(result);
  }

  return result;
}

double sub_1004EA010(double result)
{
  if (!atomic_load(&dword_1006CB218))
  {
    return sub_1004EA1A0(result);
  }

  return result;
}

double sub_1004EA034(double result)
{
  if (!atomic_load(&dword_1006CB218))
  {
    return sub_1004EA1A0(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1004EA058(double a1)
{
  dlopen("/System/Library/Frameworks/LinkPresentation.framework/LinkPresentation", 0);
  atomic_store(1u, &dword_1006CB210);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1004EA0FC(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/DataAccessExpress.framework/DataAccessExpress", 0);
  atomic_store(1u, &dword_1006CB214);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1004EA1A0(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/Recap.framework/Recap", 0);
  atomic_store(1u, &dword_1006CB218);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1004EA244(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/iCloudQuotaUI.framework/iCloudQuotaUI", 0);
  atomic_store(1u, &dword_1006CB21C);
  return a1;
}