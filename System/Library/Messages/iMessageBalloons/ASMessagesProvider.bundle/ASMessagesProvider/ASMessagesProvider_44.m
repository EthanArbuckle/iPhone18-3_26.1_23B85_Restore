uint64_t sub_4ECC14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for DynamicTypeLinkedLabel()
{
  result = qword_9580B8;
  if (!qword_9580B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_4ECD10(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for DynamicTypeLinkedLabel();
  v1 = objc_msgSendSuper2(&v3, "textColor");

  return v1;
}

void sub_4ECD6C(void *a1, uint64_t a2, void *a3)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for DynamicTypeLinkedLabel();
  v4 = v10.receiver;
  v5 = a3;
  objc_msgSendSuper2(&v10, "setTextColor:", v5);
  v6 = [v4 textColor];
  if (v6)
  {
    v7 = v6;
    v8 = *&v4[qword_9580B0];
    *&v4[qword_9580B0] = v6;
    sub_BE70(0, &qword_93E540);
    v9 = v7;
    if ((sub_76A1C0() & 1) == 0)
    {
      sub_4ED788();
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_4ECE5C(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for DynamicTypeLinkedLabel();
  return objc_msgSendSuper2(&v2, "textAlignment");
}

void sub_4ECEA0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DynamicTypeLinkedLabel();
  v9.receiver = a1;
  v9.super_class = v5;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v9, "textAlignment");
  v8.receiver = v6;
  v8.super_class = v5;
  objc_msgSendSuper2(&v8, "setTextAlignment:", a3);
  if ([v6 textAlignment] != v7)
  {
    sub_4ED788();
  }
}

id sub_4ECF40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a3;
  v5 = sub_760AD0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  *(v3 + qword_958098) = _swiftEmptyArrayStorage;
  *(v3 + qword_9580A0) = 0;
  *(v3 + qword_9580A8) = 0;
  v12 = qword_9580B0;
  sub_BE70(0, &qword_93E540);
  *(v3 + v12) = sub_769FD0();
  v13 = sub_7666D0();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v11, a1, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
  v15 = sub_75BB10();
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v19 = v15;
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right, v22, v23}];
  [v19 setUserInteractionEnabled:1];
  v20 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v19 action:"labelTapped:"];
  [v19 addGestureRecognizer:v20];

  (*(v14 + 8))(a1, v13);
  return v19;
}

void sub_4ED230(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for DynamicTypeLinkedLabel();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "tintColorDidChange");
  sub_4ED788();
}

uint64_t sub_4ED28C(uint64_t a1)
{
  v2 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_75BAF0();
  v6 = [v5 preferredContentSizeCategory];

  sub_75BAE0();
  v7 = sub_7666D0();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v4, a1, v7);
  (*(v8 + 56))(v4, 0, 1, v7);
  sub_75BA40();
  return sub_4ED788();
}

void sub_4ED3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = qword_958098;
  swift_beginAccess();
  *&v4[v8] = _swiftEmptyArrayStorage;

  if (*(*&v4[v8] + 16))
  {
    v9 = &UIAccessibilityTraitLink;
  }

  else
  {
    v9 = &UIAccessibilityTraitStaticText;
  }

  [v4 setAccessibilityTraits:*v9];
  *&v4[qword_9580A0] = a1;

  *&v4[qword_9580A8] = a2;

  sub_758EB0();
  v10 = objc_allocWithZone(NSString);
  v11 = sub_769210();

  v12 = [v10 initWithString:v11];

  v13 = *(a3 + 16);
  if (v13)
  {
    v27 = UIAccessibilityTraitLink;
    v28 = v12;
    v14 = v13 - 1;
    v15 = (a3 + 56);
    v29 = v8;
    while (1)
    {
      v16 = *(v15 - 1);
      v17 = *v15;

      v18 = sub_769210();

      v19 = [v12 rangeOfString:v18 options:4];
      v21 = v20;

      if (v19 == sub_756C80())
      {

        if (!v14)
        {
          break;
        }
      }

      else
      {
        swift_beginAccess();
        v22 = *&v4[v8];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v4[v8] = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v22 = sub_7AF58(0, v22[2] + 1, 1, v22);
          *&v4[v8] = v22;
        }

        v25 = v22[2];
        v24 = v22[3];
        if (v25 >= v24 >> 1)
        {
          v22 = sub_7AF58((v24 > 1), v25 + 1, 1, v22);
        }

        v22[2] = v25 + 1;
        v26 = &v22[4 * v25];
        v26[4] = v19;
        v26[5] = v21;
        v26[6] = v16;
        v26[7] = v17;
        v8 = v29;
        *&v4[v29] = v22;
        swift_endAccess();
        [v4 setAccessibilityTraits:v27];

        v12 = v28;
        if (!v14)
        {
          break;
        }
      }

      --v14;
      v15 += 4;
    }
  }

  sub_4ED788();
}

id sub_4ED68C()
{
  [v0 setAttributedText:0];
  *&v0[qword_9580A0] = 0;

  v1 = qword_958098;
  swift_beginAccess();
  *&v0[v1] = _swiftEmptyArrayStorage;

  if (*(*&v0[v1] + 16))
  {
    v2 = &UIAccessibilityTraitLink;
  }

  else
  {
    v2 = &UIAccessibilityTraitStaticText;
  }

  return [v0 setAccessibilityTraits:*v2];
}

void sub_4ED740(void *a1)
{
  v1 = a1;
  sub_4ED788();
}

uint64_t sub_4ED788()
{
  v1 = v0;
  v2 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v2 - 8);
  v4 = &v39 - v3;
  v5 = sub_7666D0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75BA30();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10A2C(v4, &unk_93E530);
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_BE70(0, &qword_93F900);
  v10 = sub_75BAF0();
  v11 = sub_769E10();

  v12 = *&v0[qword_9580A0];
  v13 = *&v0[qword_9580B0];

  v14 = v13;
  v15 = [v0 textAlignment];
  v50 = [v1 lineBreakMode];
  v16 = qword_958098;
  swift_beginAccess();
  v17 = *&v1[v16];

  v18 = [v1 tintColor];
  v19 = v18;
  if (v12)
  {
    v42 = v15;
    v46 = v8;
    v47 = v6;
    v48 = v5;
    v49 = v1;

    v44 = v12;
    v45 = v11;
    v20 = sub_758EC0();
    v53 = v17;
    v21 = v20;
    v22 = objc_allocWithZone(NSMutableAttributedString);
    v41 = v21;
    v23 = [v22 initWithAttributedString:v21];
    v24 = v14;
    v25 = v23;
    v26 = [v23 length];
    v52 = NSForegroundColorAttributeName;
    v43 = v24;
    v27 = v53;
    v40 = v26;
    [v25 addAttribute:? value:? range:?];
    v28 = *(v27 + 16);
    if (v28)
    {
      v51 = NSUnderlineStyleAttributeName;
      v29 = v27 + 56;
      do
      {
        v30 = *(v29 - 24);
        v31 = *(v29 - 16);
        if (v19)
        {

          v32 = v19;
        }

        else
        {
          v33 = objc_opt_self();

          v32 = [v33 systemBlueColor];
        }

        v34 = v19;
        [v25 addAttribute:v52 value:v32 range:{v30, v31}];
        if (UIAccessibilityButtonShapesEnabled())
        {
          isa = sub_769670().super.super.isa;
          [v25 addAttribute:v51 value:isa range:{v30, v31}];
        }

        v29 += 32;
        --v28;
      }

      while (v28);
    }

    v36 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v36 setAlignment:v42];
    [v36 setLineBreakMode:v50];
    v37 = v36;
    [v25 addAttribute:NSParagraphStyleAttributeName value:v37 range:{0, v40}];

    v5 = v48;
    v1 = v49;
    v8 = v46;
    v6 = v47;
    v11 = v45;
  }

  else
  {

    v25 = 0;
  }

  v38 = sub_4EDC9C(v25, v11);
  [v1 setAttributedText:v38];

  return (*(v6 + 8))(v8, v5);
}

id sub_4EDC9C(void *a1, void *a2)
{
  v3 = a1;
  if (!a1 || !*(v2 + qword_9580A8))
  {
    goto LABEL_6;
  }

  v5 = objc_opt_self();

  v6 = v3;
  v7 = [v5 configurationWithFont:a2];
  v8 = sub_759910();

  if (!v8)
  {

LABEL_6:
    v22 = v3;
    return v3;
  }

  [v8 size];
  v10 = v9;
  v12 = v11;
  [a2 capHeight];
  v14 = floor((v13 - v12) * 0.5);
  v15 = [objc_opt_self() tintColor];
  v16 = [v8 imageWithTintColor:v15];

  v17 = [objc_opt_self() textAttachmentWithImage:v16];
  [v17 setBounds:{2.0, v14, v10, v12}];
  v3 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v6];
  v18 = objc_allocWithZone(NSAttributedString);
  v19 = sub_769210();
  v20 = [v18 initWithString:v19];

  [v3 appendAttributedString:v20];
  v21 = [objc_opt_self() attributedStringWithAttachment:v17];
  [v3 appendAttributedString:v21];

  return v3;
}

uint64_t sub_4EDEFC(void *a1)
{
  v3 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  result = sub_4EE190(a1);
  if ((v7 & 1) == 0)
  {
    v8 = result;
    v9 = qword_958098;
    swift_beginAccess();
    v10 = *(v1 + v9);
    v11 = *(v10 + 16);

    if (v11)
    {
      v12 = 0;
      for (i = (v10 + 56); ; i += 4)
      {
        if (v12 >= *(v10 + 16))
        {
          __break(1u);
          return result;
        }

        v15 = *(i - 1);
        v14 = *i;
        v17 = *(i - 3);
        v16 = *(i - 2);

        if (v8 >= v17 && v8 - v17 < v16)
        {
          break;
        }

        if (v11 == ++v12)
        {
        }
      }

      v19 = sub_BD88(&unk_93F630);
      sub_768860();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v5, 1, v19) == 1)
      {

        return sub_10A2C(v5, &unk_93F980);
      }

      else
      {
        sub_32A6C0(v15, 1, v14, v5);

        return (*(v20 + 8))(v5, v19);
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_4EE128(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_4EDEFC(v4);
}

id sub_4EE190(void *a1)
{
  v2 = v1;
  v4 = [v1 attributedText];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [a1 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];
    v9 = v8;
    v11 = v10;
    v12 = [objc_allocWithZone(NSTextStorage) initWithAttributedString:v5];
    v13 = [objc_allocWithZone(NSTextContainer) initWithSize:{v9, 1.79769313e308}];
    v14 = [objc_allocWithZone(NSLayoutManager) init];
    [v14 addTextContainer:v13];
    [v12 addLayoutManager:v14];
    [v13 setLineFragmentPadding:0.0];
    [v13 setLineBreakMode:{objc_msgSend(v2, "lineBreakMode")}];
    [v13 setMaximumNumberOfLines:{objc_msgSend(v2, "numberOfLines")}];
    [a1 locationInView:v7];
    v16 = v15;
    v18 = v17;
    [v14 usedRectForTextContainer:v13];
    v23 = [v14 characterIndexForPoint:v13 inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{v16 - ((v9 - v19) * 0.5 - v20), v18 - ((v11 - v21) * 0.5 - v22)}];

    v5 = v14;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

BOOL sub_4EE3C0()
{
  v1 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = qword_958098;
  swift_beginAccess();
  v5 = *(v0 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v5 + 56);
    v8 = sub_BD88(&unk_93F630);

    sub_768860();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v3, 1, v8) == 1)
    {

      sub_10A2C(v3, &unk_93F980);
    }

    else
    {

      sub_32A6C0(v10, 1, v7, v3);

      (*(v9 + 8))(v3, v8);
    }
  }

  return v6 != 0;
}

BOOL sub_4EE580(void *a1)
{
  v1 = a1;
  v2 = sub_4EE3C0();

  return v2;
}

void sub_4EE5E4()
{

  v1 = *(v0 + qword_9580B0);
}

id sub_4EE644()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicTypeLinkedLabel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_4EE67C(uint64_t a1)
{

  v2 = *(a1 + qword_9580B0);
}

char *sub_4EE6F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for Accessory();
  __chkstk_darwin(v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC18ASMessagesProvider27ArcadeHeaderButtonContainer_stackView;
  *&v3[v10] = [objc_allocWithZone(sub_BD88(&qword_963AA0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeHeaderButtonContainer_objectGraph] = a2;
  v11 = *(sub_BD88(&qword_942CC8) + 48);
  *v9 = 1;
  v12 = sub_758880();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v40 = a1;
  v14(&v9[v11], a1, v12);
  (*(v13 + 56))(&v9[v11], 0, 1, v12);
  swift_storeEnumTagMultiPayload();

  sub_4E0248(v15);
  v17 = v16;
  sub_30984(v9);
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeHeaderButtonContainer_accountButton] = v17;
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 whiteColor];
  [v19 setTintColor:v20];

  v21 = objc_allocWithZone(type metadata accessor for ArcadeSeeAllGamesButton());

  *&v3[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeHeaderButtonContainer_seeAllGamesButton] = sub_3E6980(v22);
  v42.receiver = v3;
  v42.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v42, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v24 = sub_7653A0();
  v41[3] = v24;
  v41[4] = sub_21E944();
  v25 = sub_B1B4(v41);
  (*(*(v24 - 8) + 104))(v25, enum case for Feature.iOS.arcade_see_all_games_uplift_navigation_bar_Future(_:), v24);
  v26 = v23;
  LOBYTE(v23) = sub_765C30();
  sub_BEB8(v41);
  if (v23)
  {
    [*&v26[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeHeaderButtonContainer_stackView] addSubview:*&v26[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeHeaderButtonContainer_seeAllGamesButton]];
  }

  v27 = OBJC_IVAR____TtC18ASMessagesProvider27ArcadeHeaderButtonContainer_stackView;
  v28 = OBJC_IVAR____TtC18ASMessagesProvider27ArcadeHeaderButtonContainer_accountButton;
  [*&v26[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeHeaderButtonContainer_stackView] addSubview:*&v26[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeHeaderButtonContainer_accountButton]];
  v29 = *&v26[v27];
  *&v29[qword_9583D8] = 0;
  [v29 setNeedsLayout];
  v30 = *&v26[v27];
  *&v30[qword_9583E0] = 3;
  [v30 setNeedsLayout];
  v31 = *&v26[v27];
  *&v31[qword_9583E8] = 0x4034000000000000;
  [v31 setNeedsLayout];
  v32 = *&v26[v27];
  v33 = v26;
  [v33 addSubview:v32];
  [v33 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  sub_BD88(&qword_9477F0);
  v34 = swift_allocObject();
  v39 = xmmword_77B6D0;
  *(v34 + 16) = xmmword_77B6D0;
  *(v34 + 32) = sub_767B80();
  *(v34 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_769F20();
  swift_unknownObjectRelease();

  v35 = swift_allocObject();
  *(v35 + 16) = v39;
  *(v35 + 32) = sub_767890();
  *(v35 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_769F20();
  swift_unknownObjectRelease();

  v36 = *&v26[v28];
  v37 = [v33 traitCollection];
  LOBYTE(v35) = sub_7699B0();

  [v36 setHidden:v35 & 1];

  (*(v13 + 8))(v40, v12);

  return v33;
}

uint64_t sub_4EEE4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D6>, double a8@<D7>)
{
  v36 = a5;
  v37 = a4;
  v42 = a3;
  v43 = a6;
  v44 = a7;
  v45 = a8;
  v40 = a1;
  v9 = sub_764930();
  v46 = *(v9 - 8);
  __chkstk_darwin(v9);
  v39 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7656A0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v35 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  v17 = sub_BD88(&qword_9438F8);
  __chkstk_darwin(v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v34 - v21;
  sub_1ED18(a2, &v34 - v21, &qword_963790);
  sub_1ED18(v42, &v22[*(v17 + 48)], &qword_963790);
  swift_getKeyPath();
  sub_BD88(&unk_94F1F0);
  sub_768750();

  v23 = *(v12 + 104);
  v24 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v48)
  {
    v24 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v25 = *v24;
  v41 = v16;
  v42 = v11;
  v26 = v11;
  v27 = v39;
  v23(v16, v25, v26);
  swift_getKeyPath();
  sub_768750();

  v28 = *(v46 + 88);
  v38 = v9;
  v29 = v28(v27, v9);
  if (v29 == enum case for Shelf.ContentType.accessibilityFeatures(_:) || v29 == enum case for Shelf.ContentType.accessibilityParagraph(_:))
  {
    v33 = v41;
    v32 = v42;
    (*(v12 + 16))(v35, v41, v42);
    sub_4EF7CC();
    sub_765670();
    (*(v12 + 8))(v33, v32);
    return sub_10A2C(v22, &qword_9438F8);
  }

  else
  {
    v47 = v36;
    sub_1ED18(v22, v19, &qword_9438F8);
    v30 = *(v17 + 48);
    sub_B7A24();
    sub_75B530();
    (*(v12 + 8))(v41, v42);
    sub_10A2C(v22, &qword_9438F8);
    sub_10A2C(&v19[v30], &qword_963790);
    sub_10A2C(v19, &qword_963790);
    return (*(v46 + 8))(v27, v38);
  }
}

uint64_t sub_4EF34C()
{
  sub_4EF770();

  return sub_75B530();
}

uint64_t sub_4EF430()
{
  sub_4EF770();

  return sub_75B520();
}

uint64_t sub_4EF514(uint64_t a1, uint64_t a2)
{
  v4 = sub_4F0104();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

uint64_t sub_4EF570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D6>, double a7@<D7>)
{
  v20[4] = a4;
  *&v20[2] = a6;
  *&v20[3] = a7;
  v20[0] = a5;
  v20[1] = a1;
  v10 = sub_BD88(&qword_9438F8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v20 - v15;
  v17 = *v7;
  sub_1ED18(a2, v20 - v15, &qword_963790);
  sub_1ED18(a3, &v16[*(v11 + 56)], &qword_963790);
  v20[5] = v17;
  sub_1ED18(v16, v13, &qword_9438F8);
  v18 = *(v11 + 56);
  sub_B7A24();

  sub_75B520();
  sub_10A2C(v16, &qword_9438F8);

  sub_10A2C(&v13[v18], &qword_963790);
  return sub_10A2C(v13, &qword_963790);
}

unint64_t sub_4EF770()
{
  result = qword_958150;
  if (!qword_958150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_958150);
  }

  return result;
}

uint64_t sub_4EF7CC()
{
  v0 = sub_BD88(&qword_940A60);
  __chkstk_darwin(v0 - 8);
  v34 = &v31 - v1;
  v39 = sub_765610();
  v2 = *(v39 - 8);
  __chkstk_darwin(v39);
  v4 = (&v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_BD88(&qword_940A68);
  __chkstk_darwin(v5 - 8);
  v43 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  sub_BD88(&qword_940A70);
  v16 = *(sub_765540() - 8);
  v40 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v32 = v18;
  *(v18 + 16) = xmmword_780120;
  v19 = v18 + v17;
  v45 = 0x3FF0000000000000;
  sub_62634();
  sub_7655D0();
  v44 = 0x4030000000000000;
  v45 = 0x4020000000000000;
  sub_7655B0();
  v45 = 0x4034000000000000;
  sub_7655D0();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v35 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v42 = *(v2 + 104);
  v38 = v2 + 104;
  v42(v4);
  LOBYTE(v45) = 0;
  sub_7655D0();
  v45 = 0;
  sub_7655D0();
  v37 = v19;
  v41 = v15;
  sub_765500();
  v45 = 0x3FF0000000000000;
  sub_7655D0();
  v44 = 0x4034000000000000;
  v45 = 0x4024000000000000;
  sub_7655B0();
  v45 = 0x4034000000000000;
  sub_7655D0();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  (v42)(v4, v35, v39);
  LOBYTE(v45) = 0;
  sub_7655D0();
  v45 = 0;
  sub_7655D0();
  v26 = v40;
  v36 = v12;
  sub_765500();
  v31 = 2 * v26;
  v45 = 0x3FF0000000000000;
  sub_7655D0();
  v45 = 0x4034000000000000;
  sub_7655D0();
  v45 = 0x4034000000000000;
  sub_7655D0();
  *v4 = vdupq_n_s64(0x4041000000000000uLL);
  (v42)(v4, v35, v39);
  LOBYTE(v45) = 0;
  sub_7655D0();
  v45 = 0;
  sub_7655D0();
  v33 = v9;
  sub_765500();
  v27 = v40;
  v45 = 0x3FF0000000000000;
  sub_7655D0();
  v45 = 0x4034000000000000;
  sub_7655D0();
  v45 = 0x4034000000000000;
  sub_7655D0();
  v35 = enum case for PageGrid.HorizontalMargins.readableContentGuide(_:);
  v28 = v42;
  v42(v4);
  LOBYTE(v45) = 0;
  sub_7655D0();
  v45 = 0;
  sub_7655D0();
  sub_765500();
  v31 = 4 * v27;
  v45 = 0x3FF0000000000000;
  sub_7655D0();
  v45 = 0x4038000000000000;
  sub_7655D0();
  v45 = 0x4034000000000000;
  sub_7655D0();
  v29 = v39;
  v28(v4, v35, v39);
  LOBYTE(v45) = 0;
  sub_7655D0();
  v45 = 0;
  sub_7655D0();
  sub_765500();
  v45 = 0x3FF0000000000000;
  sub_7655D0();
  v45 = 0x4038000000000000;
  sub_7655D0();
  v45 = 0x4034000000000000;
  sub_7655D0();
  (v42)(v4, v35, v29);
  LOBYTE(v45) = 0;
  sub_7655D0();
  v45 = 0;
  sub_7655D0();
  sub_765500();
  return v32;
}

unint64_t sub_4F0104()
{
  result = qword_958158;
  if (!qword_958158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_958158);
  }

  return result;
}

__n128 sub_4F0158(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_4F01A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_4F01EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_4F0274(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_4F0294(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

uint64_t sub_4F02E0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = CGRectGetWidth(*&a1) * *(v4 + 56);
  v11 = v10 * *(v4 + 16);
  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  v12 = *(v4 + 64) + v10 + (CGRectGetWidth(v16) - v10) * 0.5 - v11;
  v13 = *(v4 + 32);
  v17.origin.x = v12;
  v17.origin.y = v13;
  v17.size.width = v11;
  v17.size.height = v11;
  CGRectGetMidX(v17);
  v18.origin.x = v12;
  v18.origin.y = v13;
  v18.size.width = v11;
  v18.size.height = v11;
  CGRectGetMidY(v18);
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  CGRectGetWidth(v19);
  sub_B170((v4 + 72), *(v4 + 96));
  sub_7673E0();
  sub_B170(v5 + 24, v5[27]);
  sub_7673E0();
  sub_B170(v5 + 14, v5[17]);
  sub_7673E0();
  sub_B170(v5 + 19, v5[22]);
  return sub_7673E0();
}

__n128 sub_4F04E4@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

double sub_4F0500@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v20 = a2;
  v7 = sub_75C840();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SeparatorSupplementaryView();
  if (sub_769BE0())
  {

    v11 = sub_769BD0();
    v19[1] = v12;
    v19[2] = v11;
    v13 = swift_allocObject();
    v19[0] = a3;
    v14 = v13;
    swift_weakInit();
    (*(v8 + 16))(v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v7);
    v15 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v20 = a1;
    v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    (*(v8 + 32))(v17 + v15, v10, v7);
    *(v17 + v16) = v19[0];
    *(a4 + 24) = sub_BD88(&qword_94C620);
    *(a4 + 32) = sub_27FE44();
    sub_B1B4(a4);

    sub_763760();
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

double *sub_4F073C(uint64_t a1)
{
  v1 = sub_61AD24(a1);
  sub_10A4A4(v1);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_4F0784()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4F07BC()
{
  v1 = sub_75C840();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_4F08A4()
{
  v0 = sub_763020();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&qword_940A68);
  sub_161DC(v4, qword_958230);
  sub_BE38(v4, qword_958230);
  sub_763010();
  sub_763000();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v8[1] = v6;
  sub_62634();
  return sub_7655D0();
}

uint64_t sub_4F09EC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_BD88(&qword_940A68);
  sub_161DC(v3, a2);
  sub_BE38(v3, a2);
  sub_62634();
  return sub_7655D0();
}

uint64_t sub_4F0A70()
{
  v0 = sub_BD88(&qword_940A60);
  __chkstk_darwin(v0 - 8);
  v56 = &v44 - v1;
  v64 = sub_765610();
  v59 = *(v64 - 8);
  __chkstk_darwin(v64);
  v3 = (&v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_BD88(&qword_940A68);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v50 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v55 = &v44 - v8;
  __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  v54.i64[0] = sub_765540();
  v13 = *(v54.i64[0] - 8);
  __chkstk_darwin(v54.i64[0]);
  v48 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v47 = &v44 - v16;
  sub_BD88(&qword_940A70);
  v17 = *(v13 + 72);
  v49 = v13;
  v18 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_784250;
  v51 = v19;
  v57 = v19 + v18;
  if (qword_93D268 != -1)
  {
    swift_once();
  }

  v58 = v17;
  v20 = sub_BE38(v4, qword_958218);
  v23 = *(v5 + 16);
  v22 = v5 + 16;
  v21 = v23;
  v46 = v20;
  (v23)(v12);
  v65 = 0x4030000000000000;
  v66 = 0x4020000000000000;
  v63 = sub_62634();
  sub_7655B0();
  if (qword_93D278 != -1)
  {
    swift_once();
  }

  v24 = sub_BE38(v4, qword_958248);
  v25 = v4;
  v53 = v4;
  v62 = v24;
  v26 = v55;
  v21(v55, v24, v25);
  __asm { FMOV            V0.2D, #16.0 }

  *v3 = _Q0;
  v61 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v45 = v21;
  v32 = v59 + 104;
  v60 = *(v59 + 104);
  v60(v3);
  LOBYTE(v66) = 0;
  v52 = v22;
  sub_7655D0();
  v66 = 0;
  sub_7655D0();
  v33 = v47;
  v34 = v26;
  sub_765500();
  sub_765530();
  v44 = v12;
  v49 = *(v49 + 8);
  (v49)(v33, v54.i64[0]);
  v35 = v53;
  v36 = v45;
  v45(v12, v46, v53);
  v65 = 0x4034000000000000;
  v66 = 0x4024000000000000;
  sub_7655B0();
  v36(v34, v62, v35);
  __asm { FMOV            V0.2D, #20.0 }

  *v3 = _Q0;
  v59 = v32;
  (v60)(v3, v61, v64);
  LOBYTE(v66) = 0;
  sub_7655D0();
  v66 = 0;
  sub_7655D0();
  v38 = v48;
  v39 = v44;
  v40 = v55;
  sub_765500();
  sub_765530();
  (v49)(v38, v54.i64[0]);
  v41 = v36;
  v42 = v53;
  if (qword_93D270 != -1)
  {
    swift_once();
  }

  v56 = sub_BE38(v42, qword_958230);
  v41(v39, v56, v42);
  v66 = 0x4034000000000000;
  sub_7655D0();
  v41(v40, v62, v42);
  v54 = vdupq_n_s64(0x4041000000000000uLL);
  *v3 = v54;
  (v60)(v3, v61, v64);
  sub_765520();
  v41(v39, v56, v42);
  v66 = 0x4034000000000000;
  sub_7655D0();
  v41(v40, v62, v42);
  *v3 = v54;
  (v60)(v3, v61, v64);
  sub_7697A0();
  sub_765520();
  v41(v39, v56, v42);
  v66 = 0x4038000000000000;
  sub_7655D0();
  v41(v40, v62, v42);
  *v3 = vdupq_n_s64(0x404A000000000000uLL);
  (v60)(v3, v61, v64);
  sub_765520();
  return v51;
}

uint64_t sub_4F1408(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_4F14B4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_76A770();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_76A860();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_4F15F8(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_4F16A0()
{
  v0 = sub_768FD0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_768FF0();
  sub_161DC(v4, qword_958260);
  sub_BE38(v4, qword_958260);
  if (qword_93DEE8 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_9A03E8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_768FE0();
}

id sub_4F17F4()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(ADTrackingTransparency) init];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

BOOL sub_4F1860()
{
  v0 = sub_7573C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((sub_75A860() & 1) == 0 || (sub_75A8F0() & 1) == 0)
  {
    return 0;
  }

  v4 = sub_75A8C0();
  sub_7573B0();
  v5 = sub_757300();
  v7 = v6;
  v8 = *(v1 + 8);
  v9 = v8(v3, v0);
  if (!v7)
  {
    goto LABEL_8;
  }

  v19 = v5;
  v20 = v7;
  __chkstk_darwin(v9);
  *&v18[-16] = &v19;
  v10 = sub_4F1408(sub_4F26EC, &v18[-32], v4);

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = sub_75A900();
  sub_7573B0();
  v12 = sub_757300();
  v14 = v13;
  v15 = v8(v3, v0);
  if (!v14)
  {
LABEL_8:

    return 0;
  }

  v19 = v12;
  v20 = v14;
  __chkstk_darwin(v15);
  *&v18[-16] = &v19;
  v16 = sub_4F1408(sub_4F26EC, &v18[-32], v11);

  return (v16 & 1) != 0;
}

uint64_t sub_4F1A9C()
{
  v1 = sub_7573C0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_762470())
  {
    if (qword_93D280 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  if ([objc_opt_self() ams_shieldSignInOrCreateFlows])
  {
    if (qword_93D280 == -1)
    {
LABEL_6:
      v5 = sub_768FF0();
      sub_BE38(v5, qword_958260);
      sub_BD88(&qword_93FD00);
      sub_7685F0();
      *(swift_allocObject() + 16) = xmmword_77B6D0;
      sub_768540();
      sub_768E80();
LABEL_7:

      return 0;
    }

LABEL_18:
    swift_once();
    goto LABEL_6;
  }

  v7 = sub_4F17F4();
  v8 = [v7 shouldPresentPersonalizedAdsOnboarding];

  if (!v8)
  {
    if (qword_93D280 != -1)
    {
      swift_once();
    }

    v16 = sub_768FF0();
    sub_BE38(v16, qword_958260);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77E280;
    sub_768540();
    v17 = [*(v0 + 24) shouldPresentPersonalizedAdsOnboarding];
    v19[3] = &type metadata for Bool;
    LOBYTE(v19[0]) = v17;
    sub_7685C0();
    sub_BDD0(v19);
    sub_768E80();
    goto LABEL_7;
  }

  v9 = sub_75A860();
  v10 = sub_75A8C0();
  sub_7573B0();
  v11 = sub_757300();
  v13 = v12;
  v14 = (*(v2 + 8))(v4, v1);
  if (!v13)
  {

    if (v9)
    {
      return 1;
    }

LABEL_16:
    if (qword_93D280 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  v19[0] = v11;
  v19[1] = v13;
  __chkstk_darwin(v14);
  *&v18[-16] = v19;
  v15 = sub_4F1408(sub_4F2600, &v18[-32], v10);

  if (((v9 | v15) & 1) == 0)
  {
    goto LABEL_16;
  }

  return 1;
}

uint64_t sub_4F20C4()
{
  v1 = sub_4F17F4();
  v2 = [v1 latestVersionForPersonalizedAdsConsent];

  [*(v0 + 24) setAcknowledgedVersionForPersonalizedAds:v2];
  if (qword_93D280 != -1)
  {
    swift_once();
  }

  v3 = sub_768FF0();
  sub_BE38(v3, qword_958260);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  v4 = [*(v0 + 24) acknowledgedVersionForPersonalizedAds];
  v6[3] = &type metadata for Int;
  v6[0] = v4;
  sub_7685C0();
  sub_BDD0(v6);
  sub_768E80();
}

uint64_t sub_4F2278()
{

  sub_1EB60(v0 + 32);

  return swift_deallocClassInstance();
}

unint64_t sub_4F22F8()
{
  result = qword_958328;
  if (!qword_958328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_958328);
  }

  return result;
}

Swift::Int sub_4F23A8()
{
  sub_76AA30();
  sub_769160();
  return sub_76AA80();
}

uint64_t sub_4F240C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4F261C(&qword_93F358);

  return OnboardingStep.hash(into:)(a1, a2, v4);
}

Swift::Int sub_4F2474()
{
  sub_76AA30();
  sub_769160();
  return sub_76AA80();
}

uint64_t sub_4F24D4(uint64_t a1, uint64_t a2)
{
  v5 = sub_4F261C(&qword_93F358);

  return static OnboardingStep.== infix(_:_:)(a1, a2, v2, v5);
}

uint64_t sub_4F25A8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_76A950() & 1;
  }
}

uint64_t sub_4F261C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AdPrivacyOnboardingStep();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_4F265C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_76A950() & 1;
  }
}

void sub_4F2708()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*(&dword_10 + (*v0 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_76A860())
  {
    if (sub_76A860())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      sub_76A770();
      if (!v2)
      {
LABEL_6:
        v3 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_76A860();
LABEL_13:
      if (v3)
      {
        sub_4A6744(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_4F27E0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_primaryIcon) = a1;

  v10 = OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_remainingIcons;
  swift_beginAccess();
  *(v5 + v10) = a2;

  *(v5 + OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_artworkLoader) = a3;

  return sub_4F2E74(a4, a5);
}

id sub_4F28A4(char a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_primaryIcon] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_remainingIcons] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_artworkLoader] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_impressionsCalculator] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_iconViews] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_amsImpressionItems] = _swiftEmptyArrayStorage;
  v1[OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_isCompactSheet] = a1;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v8 = v4;
  [v8 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v8 setClipsToBounds:1];

  return v8;
}

uint64_t sub_4F29EC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7664F0();
  v36 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_75C310();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_75C2D0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v30[-v15];
  v37.receiver = v1;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, "layoutSubviews", v14);
  [v1 bounds];
  width = v38.size.width;
  height = v38.size.height;
  result = CGRectIsEmpty(v38);
  if ((result & 1) == 0)
  {
    v20 = OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_iconViews;
    swift_beginAccess();
    v21 = *&v1[v20];
    if (!(v21 >> 62))
    {
      result = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
      if (!result)
      {
        return result;
      }

LABEL_4:
      v33 = v3;
      v22 = objc_opt_self();
      v31 = [v22 areAnimationsEnabled];
      v32 = v22;
      [v22 setAnimationsEnabled:0];
      v23 = [v1 traitCollection];
      v24 = sub_7699D0();

      if (v24)
      {
        v25 = [v1 window];
        if (v25)
        {
          v26 = v25;
          [v25 frame];
          CGRectGetWidth(v39);
        }
      }

      sub_75C2C0();
      v27 = sub_75C2F0();
      v28 = *&v1[v20];
      if (v28 >> 62)
      {
        if (sub_76A860() == v27)
        {
          goto LABEL_10;
        }
      }

      else if (*(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)) == v27)
      {
LABEL_10:
        (*(v10 + 16))(v12, v16, v9);

        sub_140EDC(v29);

        sub_75C2E0();
        sub_75C2B0();
        (*(v36 + 8))(v5, v33);
        (*(v34 + 8))(v8, v35);
        (*(v10 + 8))(v16, v9);
        return [v32 setAnimationsEnabled:v31];
      }

      sub_4F2E74(width, height);
      goto LABEL_10;
    }

    result = sub_76A860();
    if (result)
    {
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t sub_4F2E74(double a1, double a2)
{
  v4 = v2;
  v7 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v7 - 8);
  v75 = &v65 - v8;
  v9 = sub_75C2D0();
  v10 = *(v9 - 1);
  __chkstk_darwin(v9);
  __chkstk_darwin(v11);
  v14 = &v65 - v13;
  result = *&v2[OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_artworkLoader];
  if (!result)
  {
    return result;
  }

  v70 = v12;
  v73 = result;

  v16 = &selRef_setTextAlignment_;
  v17 = [v2 traitCollection];
  v18 = sub_7699D0();

  v19 = &selRef_absoluteDimension_;
  if (v18)
  {
    v20 = [v4 window];
    if (v20)
    {
      v21 = v20;
      [v20 frame];
      CGRectGetWidth(v82);
    }
  }

  sub_75C2C0();
  sub_75C2A0();
  v22 = *(v10 + 8);
  v68 = v10 + 8;
  v67 = v22;
  v22(v14, v9);
  v80 = _swiftEmptyArrayStorage;
  v81 = _swiftEmptyArrayStorage;
  v79 = _swiftEmptyArrayStorage;
  v23 = OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_iconViews;
  swift_beginAccess();
  v24 = *&v23[v4];
  if (v24 >> 62)
  {
    if (sub_76A860())
    {
      goto LABEL_7;
    }
  }

  else if (*(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_7:
    sub_4F2708();
    goto LABEL_10;
  }

  sub_759210();
  v25 = sub_759020();
LABEL_10:
  v26 = v25;
  swift_endAccess();
  v27 = v26;
  sub_769440();
  if (*(&dword_10 + (v79 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v79 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
LABEL_93:
    sub_7694C0();
  }

  v71 = v27;
  sub_769500();
  v77 = v79;
  v78 = v23;
  if (!*(v4 + OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_primaryIcon))
  {
    v29 = _swiftEmptyArrayStorage;
    v74 = _swiftEmptyArrayStorage;
    goto LABEL_20;
  }

  swift_retain_n();
  sub_769440();
  if (*(&dword_10 + (v81 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v81 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  v74 = v81;
  v28 = v75;
  sub_75F460();
  v3 = sub_4F4414(v28);
  sub_1F7B64(v28);
  if (!v3)
  {
    v29 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  v23 = [objc_allocWithZone(AMSUIDynamicImpressionItem) initWithFrame:v3 impressionMetrics:{0.0, 0.0, a1, a2}];
  sub_769440();
  if (*(&dword_10 + (v80 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v80 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    goto LABEL_110;
  }

  while (1)
  {
    sub_769500();

    v29 = v80;
LABEL_19:
    sub_75F470();
    sub_765320();

    sub_759210();
    sub_14FA38();
    sub_75A050();

    v23 = v78;
LABEL_20:
    [v4 bounds];
    v30 = [v4 *(v16 + 184)];
    v31 = sub_7699D0();

    if (v31)
    {
      v32 = [v4 v19[75]];
      if (v32)
      {
        v33 = v32;
        [v32 frame];
        CGRectGetWidth(v83);
      }
    }

    v16 = v70;
    sub_75C2C0();
    v34 = sub_75C300();
    v35 = *(v34 + 16);
    v19 = v73;
    v69 = v34;
    if (v35 >= 2)
    {
      break;
    }

LABEL_76:
    sub_4F3DF8(v74);

    *(v4 + OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_amsImpressionItems) = v29;

    v51 = v77;
    if (v77 >> 62)
    {
      v58 = sub_76A860();
      v51 = v77;
      v52 = v58;
      if (!v58)
      {
        goto LABEL_95;
      }
    }

    else
    {
      v52 = *(&dword_10 + (v77 & 0xFFFFFFFFFFFFFF8));
      if (!v52)
      {
        goto LABEL_95;
      }
    }

    if (v52 < 1)
    {
      __break(1u);
      goto LABEL_109;
    }

    v53 = 0;
    v3 = v51 & 0xC000000000000001;
    do
    {
      if (v3)
      {
        v56 = sub_76A770();
      }

      else
      {
        v56 = *(v51 + 8 * v53 + 32);
      }

      v55 = v56;
      v57 = [v56 superview];
      if (v57)
      {
        v54 = v57;

        v55 = v54;
      }

      else
      {
        [v4 addSubview:v55];
      }

      ++v53;

      v51 = v77;
    }

    while (v52 != v53);
LABEL_95:
    v23 = v78;
    v59 = *&v78[v4];
    if (v59 >> 62)
    {
      v64 = sub_76A860();
      v51 = v77;
      v60 = v64;
      v19 = v73;
      if (!v64)
      {
        goto LABEL_104;
      }
    }

    else
    {
      v60 = *(&dword_10 + (v59 & 0xFFFFFFFFFFFFFF8));
      v19 = v73;
      if (!v60)
      {
        goto LABEL_104;
      }
    }

    if (v60 >= 1)
    {

      for (i = 0; i != v60; ++i)
      {
        if ((v59 & 0xC000000000000001) != 0)
        {
          v62 = sub_76A770();
        }

        else
        {
          v62 = *(v59 + 8 * i + 32);
        }

        v63 = v62;
        [v62 removeFromSuperview];
      }

      v51 = v77;
      v23 = v78;
LABEL_104:
      *&v23[v4] = v51;

      [v4 setNeedsLayout];

      return v67(v16, v9);
    }

LABEL_109:
    __break(1u);
LABEL_110:
    sub_7694C0();
  }

  v72 = v29;
  v66 = v9;
  v36 = OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_remainingIcons;
  v27 = v34;

  swift_beginAccess();
  v16 = 0;
  v76 = v35 - 1;
  v9 = v27 + 7;
  while (1)
  {
    v37 = *(v9 - 1);
    v38 = *v9;
    swift_beginAccess();
    v3 = *&v23[v4];
    v23 = (v3 >> 62);
    if (v3 >> 62)
    {
      break;
    }

    if (*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_29;
    }

LABEL_52:
    sub_759210();
    v27 = sub_759020();
    v23 = v78;
LABEL_53:
    swift_endAccess();
    v3 = v27;
    sub_769440();
    if (*(&dword_10 + (v79 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v79 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v27 = *(&dword_10 + (v79 & 0xFFFFFFFFFFFFFF8));
      sub_7694C0();
    }

    sub_769500();
    v77 = v79;
    v43 = *(v4 + v36);
    if (v43 >> 62)
    {
      if (!sub_76A860())
      {
LABEL_25:

        goto LABEL_26;
      }
    }

    else if (!*(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_25;
    }

    v44 = *(v4 + v36);
    if (v44 >> 62)
    {
      v45 = sub_76A860();
      if (!v45)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v45 = *(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8));
      if (!v45)
      {
        goto LABEL_88;
      }
    }

    v46 = v16 % v45;
    swift_beginAccess();
    v47 = *(v4 + v36);
    if ((v47 & 0xC000000000000001) != 0)
    {
      v27 = sub_76A770();
    }

    else
    {
      if (v46 >= *(&dword_10 + (v47 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_90;
      }

      v27 = *(v47 + 8 * v46 + 32);
    }

    swift_endAccess();

    sub_769440();
    if (*(&dword_10 + (v81 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v81 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();
    v74 = v81;
    v48 = v75;
    sub_75F460();
    v49 = sub_4F4414(v48);
    sub_1F7B64(v48);
    if (v49)
    {
      v50 = [objc_allocWithZone(AMSUIDynamicImpressionItem) initWithFrame:v49 impressionMetrics:{0.0, 0.0, v37, v38}];
      sub_769440();
      if (*(&dword_10 + (v80 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v80 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();

      v72 = v80;
      v19 = v73;
    }

    sub_75F470();
    sub_765320();

    sub_759210();
    sub_14FA38();
    sub_75A050();

    v23 = v78;
LABEL_26:
    ++v16;
    v9 += 2;
    if (v76 == v16)
    {

      v9 = v66;
      v16 = v70;
      v29 = v72;
      goto LABEL_76;
    }
  }

  if (!sub_76A860())
  {
    goto LABEL_52;
  }

  result = sub_76A860();
  if (result)
  {
    result = sub_76A860();
    if (!result)
    {
      goto LABEL_112;
    }

LABEL_29:
    if ((v3 & 0xC000000000000001) != 0)
    {
      v39 = sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      v39 = *(v3 + 32);
    }

    v27 = v39;
    if (v23)
    {
      if (!sub_76A860())
      {
        goto LABEL_91;
      }

      if (sub_76A860() < 1)
      {
        goto LABEL_92;
      }

      v40 = sub_76A860();
    }

    else
    {
      v40 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
      if (!v40)
      {
        goto LABEL_91;
      }
    }

    v41 = v40 - 1;
    if (__OFSUB__(v40, 1))
    {
      goto LABEL_89;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *&v78[v4] = v3;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v23)
      {
        if (v41 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v23 = v78;
LABEL_47:
          sub_4A6644(0, 1, 0);
          *&v23[v4] = v3;
          goto LABEL_53;
        }

LABEL_44:
        v23 = v78;
LABEL_46:
        v3 = sub_76A780();
        *&v23[v4] = v3;
        goto LABEL_47;
      }
    }

    else if (!v23)
    {
      goto LABEL_44;
    }

    sub_76A860();
    v23 = v78;
    goto LABEL_46;
  }

  __break(1u);
LABEL_112:
  __break(1u);
  return result;
}

double sub_4F3B14()
{
  v1 = v0;
  v2 = sub_75C2D0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_75C310();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 bounds];
  v8 = [v0 traitCollection];
  v9 = sub_7699D0();

  if (v9)
  {
    v10 = [v1 window];
    if (v10)
    {
      v11 = v10;
      [v10 frame];
      CGRectGetWidth(v17);
    }
  }

  sub_75C2C0();
  swift_beginAccess();

  sub_140EDC(v12);

  sub_75C2E0();
  sub_75C290();
  v14 = v13;
  (*(v4 + 8))(v7, v3);
  return v14;
}

void sub_4F3DF8(unint64_t a1)
{
  v3 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_768AB0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_impressionsCalculator))
  {
    if (a1 >> 62)
    {
      v10 = sub_76A860();
      if (!v10)
      {
        return;
      }
    }

    else
    {
      v10 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
      if (!v10)
      {
        return;
      }
    }

    if (v10 < 1)
    {
      __break(1u);
    }

    else
    {
      v17 = a1 & 0xC000000000000001;
      v11 = (v7 + 48);
      v15 = (v7 + 32);
      v12 = (v7 + 8);

      for (i = 0; i != v10; ++i)
      {
        if (v17)
        {
          sub_76A770();
        }

        else
        {
        }

        sub_75F460();
        if ((*v11)(v5, 1, v6) == 1)
        {

          sub_1F7B64(v5);
        }

        else
        {
          (*v15)(v9, v5, v6);
          sub_75F4B0();

          (*v12)(v9, v6);
        }
      }
    }
  }
}

unint64_t sub_4F41C8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_BD88(&unk_9453C0);
    v2 = sub_76A8B0();
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
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        sub_132B4(*(a1 + 56) + 32 * v12, v27);
        *&v26 = v14;
        *(&v26 + 1) = v15;
        v24 = v26;
        v25[0] = v27[0];
        v25[1] = v27[1];
        v16 = v26;
        sub_13310(v25, &v22);

        sub_BD88(&unk_9583A0);
        swift_dynamicCast();
        v17 = v23;
        result = sub_3DF2F8(v16, *(&v16 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v16;
          v9 = result;

          *(v2[7] + 8 * v9) = v17;
          result = swift_unknownObjectRelease();
          v8 = v10;
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
          *(v2[6] + 16 * result) = v16;
          *(v2[7] + 8 * result) = v17;
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
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

id sub_4F4414(uint64_t a1)
{
  v2 = sub_768A80();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v34 - v7;
  __chkstk_darwin(v9);
  v11 = v34 - v10;
  v12 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v12 - 8);
  v14 = v34 - v13;
  v15 = sub_768AB0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4F4830(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1F7B64(v14);
    return 0;
  }

  else
  {
    v20 = *(v16 + 32);
    v35 = v15;
    v20(v18, v14, v15);
    sub_768A90();
    v34[1] = sub_768A60();
    v22 = v21;
    v23 = *(v3 + 8);
    v23(v11, v2);
    sub_768A90();
    v34[2] = sub_768A70();
    v23(v8, v2);
    sub_768A90();
    v24 = sub_768A50();
    v23(v5, v2);
    if (v22)
    {
      v25 = sub_769210();
    }

    else
    {
      v25 = 0;
    }

    v26 = objc_allocWithZone(AMSUIDynamicImpressionMetricsIdentifier);
    v27 = sub_769210();

    v28 = [v26 initWithParent:v25 element:v27 index:v24];

    v29 = sub_768AA0();
    sub_4F41C8(v29);

    sub_10E9FC(_swiftEmptyArrayStorage);
    v30 = objc_allocWithZone(AMSUIDynamicImpressionMetrics);
    sub_BD88(&unk_9583A0);
    isa = sub_7690E0().super.isa;

    v32 = sub_7690E0().super.isa;

    v33 = [v30 initWithIdentifier:v28 fields:isa custom:v32];

    (*(v16 + 8))(v18, v35);
    return v33;
  }
}

uint64_t sub_4F4830(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93FF30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_4F48A0()
{
  result = qword_9583B0;
  if (!qword_9583B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_9583B0);
  }

  return result;
}

void sub_4F48EC()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_primaryIcon) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_remainingIcons) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_artworkLoader) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_impressionsCalculator) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_iconViews) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_amsImpressionItems) = _swiftEmptyArrayStorage;
  sub_76A840();
  __break(1u);
}

unint64_t sub_4F49AC()
{
  result = qword_9583B8;
  if (!qword_9583B8)
  {
    sub_75CA60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9583B8);
  }

  return result;
}

uint64_t sub_4F4A04(uint64_t a1, uint64_t a2)
{
  v3 = sub_7687C0();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    sub_768F50();
  }

  else
  {
    (*(v4 + 104))(v7, enum case for ActionOutcome.performed(_:), v3, v5);
    sub_768F60();
    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_4F4B3C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_7690F0();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

id sub_4F4BF0()
{
  v0 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v0 - 8);
  v2 = aBlock - v1;
  v3 = sub_75F370();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7570A0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&qword_94DDC0);
  v11 = sub_768F90();
  sub_75CA50();
  sub_75F360();
  (*(v4 + 8))(v6, v3);
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    sub_3F5C44(v2);
    sub_4F4F60();
    swift_allocError();
    sub_768F50();

    return v11;
  }

  (*(v8 + 32))(v10, v2, v7);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v14 = result;
    sub_757040(v13);
    v16 = v15;
    v17 = [objc_allocWithZone(_LSOpenConfiguration) init];
    aBlock[4] = sub_4F4FB4;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_4F4B3C;
    aBlock[3] = &unk_894D88;
    v18 = _Block_copy(aBlock);

    [v14 openURL:v16 configuration:v17 completionHandler:v18];
    _Block_release(v18);

    (*(v8 + 8))(v10, v7);
    return v11;
  }

  __break(1u);
  return result;
}

unint64_t sub_4F4F60()
{
  result = qword_9583C0;
  if (!qword_9583C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9583C0);
  }

  return result;
}

uint64_t sub_4F4FBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_4F4FE8()
{
  result = qword_9583C8;
  if (!qword_9583C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9583C8);
  }

  return result;
}

id sub_4F509C(double a1, double a2, double a3, double a4)
{
  v9 = &v4[qword_9583D0];
  *v9 = 0;
  v9[8] = 1;
  *&v4[qword_9583D8] = 0;
  *&v4[qword_9583E0] = 0;
  *&v4[qword_9583E8] = 0;
  v4[qword_9583F0] = 1;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for StackView();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

void sub_4F5220()
{
  if ((v0[qword_9583D0 + 8] & 1) != 0 || *&v0[qword_9583D0] != 3)
  {
    return;
  }

  v1 = sub_4F53F8();
  v2 = v1;
  if (v1 >> 62)
  {
    v3 = sub_76A860();
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_12:
    v5 = 0.0;
    goto LABEL_13;
  }

  v3 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  if (!v3)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v3 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v4 = 0;
  v5 = 0.0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = sub_76A770();
    }

    else
    {
      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    ++v4;
    [v6 frame];
    Width = CGRectGetWidth(v13);

    v5 = v5 + Width;
  }

  while (v3 != v4);
LABEL_13:

  [v0 frame];
  if (v5 >= CGRectGetWidth(v14))
  {
    return;
  }

  v9 = sub_4F53F8();
  if (!(v9 >> 62))
  {
    v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    goto LABEL_16;
  }

LABEL_23:
  v10 = sub_76A860();
LABEL_16:

  if (v10 >= 2)
  {
    v11 = sub_4F53F8();
    if (v11 >> 62)
    {
      v12 = sub_76A860();
    }

    else
    {
      v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
    }

    if (__OFSUB__(v12, 1))
    {
      __break(1u);
    }

    else
    {
      [v0 frame];
      CGRectGetWidth(v15);
    }
  }
}

double *sub_4F53F8()
{
  v1 = [v0 subviews];
  sub_2630C();
  v2 = sub_769460();

  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_76A770();
      }

      else
      {
        if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 isHidden])
      {
      }

      else
      {
        sub_76A7A0();
        sub_76A7D0();
        sub_76A7E0();
        sub_76A7B0();
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  return _swiftEmptyArrayStorage;
}

unint64_t sub_4F5574()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StackView();
  objc_msgSendSuper2(&v2, "layoutSubviews");
  sub_4F5624();
  sub_4F57C4();
  return sub_4F5AB8();
}

void sub_4F55DC(void *a1)
{
  v1 = a1;
  sub_4F5574();
}

unint64_t sub_4F5624()
{
  v17 = *&v0[qword_9583D8];
  result = sub_4F53F8();
  v2 = result;
  if (result >> 62)
  {
    result = sub_76A860();
    v3 = result;
    if (!result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    if (!v3)
    {
      goto LABEL_16;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_76A770();
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    [v0 frame];
    [v6 sizeThatFits:{v7, v8}];
    v10 = v9;
    v12 = v11;
    if (v0[qword_9583F0] == 1)
    {
      [v0 frame];
      if (v17)
      {
        if (v13 < v10)
        {
          [v0 frame];
          v10 = v15;
        }
      }

      else if (v14 < v12)
      {
        [v0 frame];
        v12 = v16;
      }
    }

    [v6 setFrame:{0.0, 0.0, v10, v12}];
  }

LABEL_16:
}

uint64_t sub_4F57C4()
{
  v1 = v0;
  v37 = *&v0[qword_9583D8];
  sub_4F5220();
  v3 = v2;
  v4 = sub_4F53F8();
  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v7 = 0;
    v36 = v5 & 0xC000000000000001;
    while (1)
    {
      if (v36)
      {
        v10 = sub_76A770();
      }

      else
      {
        if (v7 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_26;
        }

        v10 = *(v5 + 8 * v7 + 32);
      }

      v11 = v10;
      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v13 = [v1 traitCollection];
      v14 = sub_7699F0();

      v8 = 0.0;
      if (v14)
      {
        [v1 bounds];
        MaxX = CGRectGetMaxX(v39);
        [v11 frame];
        v8 = MaxX - CGRectGetWidth(v40);
      }

      if (v7)
      {
        v16 = [v1 subviews];
        sub_2630C();
        v17 = sub_769460();

        if ((v17 & 0xC000000000000001) != 0)
        {
          v18 = sub_76A770();
        }

        else
        {
          if (v7 > *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_27;
          }

          v18 = *(v17 + 8 * v7 + 24);
        }

        v19 = v18;

        [v19 frame];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;

        if (v37)
        {
          v41.origin.x = v21;
          v41.origin.y = v23;
          v41.size.width = v25;
          v41.size.height = v27;
          v8 = v3 + CGRectGetMaxY(v41);
          v9 = 0.0;
          goto LABEL_6;
        }

        v28 = [v1 traitCollection];
        v29 = sub_7699F0();

        v30 = v21;
        v31 = v23;
        v32 = v25;
        v33 = v27;
        if (v29)
        {
          MinX = CGRectGetMinX(*&v30);
          [v11 frame];
          v8 = MinX - (v3 + CGRectGetWidth(v42));
        }

        else
        {
          v8 = v3 + CGRectGetMaxX(*&v30);
        }
      }

      else
      {
        v9 = 0.0;
        if (v37)
        {
          goto LABEL_6;
        }
      }

      v9 = v8;
      v8 = 0.0;
LABEL_6:
      [v11 frame];
      [v11 setFrame:{v9, v8}];

      ++v7;
      if (v12 == i)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_29:
}

unint64_t sub_4F5AB8()
{
  v1 = v0;
  v2 = *&v0[qword_9583D8];
  result = sub_4F53F8();
  v4 = result;
  if (result >> 62)
  {
    result = sub_76A860();
    v5 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_41:
  }

  v5 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
  if (!v5)
  {
    goto LABEL_41;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = &selRef_setSpeed_;
    v31 = xmmword_77B6D0;
    while (1)
    {
      v10 = (v4 & 0xC000000000000001) != 0 ? sub_76A770() : *(v4 + 8 * v6 + 32);
      v11 = v10;
      v12 = *&v1[qword_9583E0];
      if (v12 > 2)
      {
        break;
      }

      if (!v12)
      {
        [v1 bounds];
        if (v2)
        {
          CGRectGetWidth(*&v15);
        }

        else
        {
          CGRectGetHeight(*&v15);
        }

        [v11 v7[395]];
        [v11 setFrame:{v19, v31}];
        goto LABEL_7;
      }

      if (v12 != 1)
      {
        if (v12 == 2)
        {
          sub_BD88(&qword_941C10);
          v13 = swift_allocObject();
          *(v13 + 16) = v31;
          *(v13 + 56) = &type metadata for String;
          *(v13 + 32) = 0xD00000000000002CLL;
          *(v13 + 40) = 0x80000000007E5830;
          sub_76AA10();
        }

        goto LABEL_7;
      }

      if (!v2)
      {
        [v10 v7[395]];
        [v11 setFrame:{v29, v31}];
        goto LABEL_7;
      }

      v25 = [v1 traitCollection];
      v26 = sub_7699F0();

      v9 = 0.0;
      if (v26)
      {
        goto LABEL_5;
      }

LABEL_6:
      v7 = &selRef_setSpeed_;
      [v11 frame];
      [v11 setFrame:{v9, v32, v34}];
LABEL_7:
      ++v6;

      if (v5 == v6)
      {
        goto LABEL_41;
      }
    }

    if (v12 == 3)
    {
      [v1 bounds];
      if (v2)
      {
        v24 = CGRectGetWidth(*&v20) * 0.5;
        [v11 center];
        [v11 setCenter:v24];
      }

      else
      {
        CGRectGetHeight(*&v20);
        [v11 center];
        [v11 setCenter:?];
      }

      goto LABEL_7;
    }

    if (v12 != 4)
    {
      if (v12 != 5 || v2 != 0)
      {
        goto LABEL_7;
      }

      [v1 bounds];
      CGRectGetHeight(v39);
      [v11 v7[395]];
      CGRectGetHeight(v40);
      [v11 lastBaselineFromBottom];
      goto LABEL_39;
    }

    if (!v2)
    {
      [v1 bounds];
      CGRectGetHeight(v41);
      [v11 v7[395]];
      CGRectGetHeight(v42);
LABEL_39:
      [v11 v7[395]];
      [v11 setFrame:{v30, v33, v35}];
      goto LABEL_7;
    }

    v27 = [v1 traitCollection];
    v28 = sub_7699F0();

    v9 = 0.0;
    if (v28)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v1 bounds];
    Width = CGRectGetWidth(v37);
    [v11 frame];
    v9 = Width - CGRectGetWidth(v38);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_4F5ED4(double a1, double a2, double a3)
{
  v7 = [v3 subviews];
  sub_2630C();
  v8 = sub_769460();

  if (v8 >> 62)
  {
    goto LABEL_64;
  }

  for (i = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
  {

    if (!i)
    {
      break;
    }

    v11 = *&v3[qword_9583D8];
    v12 = sub_4F53F8();
    v13 = v12;
    if (v12 >> 62)
    {
      v14 = sub_76A860();
    }

    else
    {
      v14 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
    }

    v15 = 0.0;
    if (!v14)
    {
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v16 = v13[4];
    }

    v17 = v16;
    [v16 sizeThatFits:{a1, a2}];
    v20 = v19;
    v21 = v18;
    if (v3[qword_9583F0] == 1)
    {
      if (v18 <= a2)
      {
        v22 = v18;
      }

      else
      {
        v22 = a2;
      }

      if (v20 <= a1)
      {
        v23 = v20;
      }

      else
      {
        v23 = a1;
      }

      if (v11)
      {
        v20 = v23;
      }

      else
      {
        v21 = v22;
      }
    }

    if (*&v3[qword_9583E0] == 5)
    {
      [v17 lastBaselineFromBottom];
      v24 = a1;
      v25 = a2;
      v26 = a3;
      v28 = v27;

      v29 = v21 - v28;
      a3 = v26;
      a2 = v25;
      a1 = v24;
    }

    else
    {

      if (v20 < 0.0)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = v20;
      }

      v29 = v21;
    }

    if (v29 < 0.0)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = v29;
    }

    if (v11)
    {
      v31 = v21;
    }

    else
    {
      v31 = v20;
    }

    v32 = v31 + 0.0;
    if (v14 == 1)
    {
    }

    for (j = 5; ; ++j)
    {
      v36 = j - 4;
      if ((v13 & 0xC000000000000001) != 0)
      {
        v37 = sub_76A770();
      }

      else
      {
        if (v36 >= *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_62;
        }

        v37 = v13[j];
      }

      v38 = v37;
      v39 = __OFADD__(v36, 1);
      v40 = j - 3;
      if (v39)
      {
        break;
      }

      [v37 sizeThatFits:{a1, a2}];
      v43 = v41;
      v44 = v42;
      if (v3[qword_9583F0] == 1)
      {
        if (v11)
        {
          if (v41 > a1)
          {
            v43 = a1;
          }
        }

        else if (v42 > a2)
        {
          v44 = a2;
        }
      }

      if (*&v3[qword_9583E0] == 5)
      {
        [v38 lastBaselineFromBottom];
        v51 = v32;
        v45 = v15;
        v46 = a1;
        v47 = a2;
        v48 = a3;
        v50 = v49;

        v34 = v44 - v50;
        a3 = v48;
        a2 = v47;
        a1 = v46;
        v15 = v45;
        v32 = v51;
      }

      else
      {

        if (v15 <= v43)
        {
          v15 = v43;
        }

        v34 = v44;
      }

      if (v30 <= v34)
      {
        v30 = v34;
      }

      if (v11)
      {
        v35 = v44;
      }

      else
      {
        v35 = v43;
      }

      if (v35 <= 0.0)
      {
        v32 = v32 + v35;
      }

      else
      {
        v32 = v32 + v35 + a3;
      }

      if (v40 == v14)
      {
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    ;
  }

  return result;
}

double sub_4F6284(void *a1, double a2, double a3)
{
  v5 = a1;
  sub_4F6274(a2, a3);
  v7 = v6;

  return v7;
}

Class sub_4F62D8(void *a1)
{
  v1 = a1;
  sub_4F633C();

  sub_2630C();
  v2.super.isa = sub_769450().super.isa;

  return v2.super.isa;
}

id sub_4F6340()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StackView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_4F63B4()
{
  v1 = v0 + qword_9583D0;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + qword_9583D8) = 0;
  *(v0 + qword_9583E0) = 0;
  *(v0 + qword_9583E8) = 0;
  *(v0 + qword_9583F0) = 1;
  sub_76A840();
  __break(1u);
}

uint64_t type metadata accessor for CardHeaderButton()
{
  result = qword_9584C0;
  if (!qword_9584C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4F6510(char a1)
{
  v2 = sub_759950();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = (v3 + 32);
  v11 = *(v3 + 104);
  if (a1)
  {
    if (a1 != 1)
    {
      v11(v5, enum case for SystemImage.appstore(_:), v2, v7);
      (*v10)(v9, v5, v2);
      v13 = [objc_opt_self() configurationWithPointSize:6 weight:2 scale:12.0];
      goto LABEL_7;
    }

    v12 = &enum case for SystemImage.chevronBackward(_:);
  }

  else
  {
    v12 = &enum case for SystemImage.xmark(_:);
  }

  v11(v5, *v12, v2, v7);
  (*v10)(v9, v5, v2);
  v13 = [objc_opt_self() configurationWithPointSize:7 weight:2 scale:15.0];
LABEL_7:
  v14 = v13;
  v15 = sub_759930();

  (*(v3 + 8))(v9, v2);
  return v15;
}

uint64_t sub_4F66FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x746867696CLL;
  if (v2 != 1)
  {
    v4 = 1802658148;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6974616D6F747561;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000063;
  }

  v7 = 0xE500000000000000;
  v8 = 0x746867696CLL;
  if (*a2 != 1)
  {
    v8 = 1802658148;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6974616D6F747561;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000063;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_76A950();
  }

  return v11 & 1;
}

Swift::Int sub_4F67E8()
{
  sub_76AA30();
  sub_769330();

  return sub_76AA80();
}

uint64_t sub_4F6884()
{
  sub_769330();
}

Swift::Int sub_4F690C()
{
  sub_76AA30();
  sub_769330();

  return sub_76AA80();
}

uint64_t sub_4F69A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_4F7B2C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_4F69D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000063;
  v4 = 0xE500000000000000;
  v5 = 0x746867696CLL;
  if (v2 != 1)
  {
    v5 = 1802658148;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6974616D6F747561;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

id sub_4F6A4C(unsigned __int8 a1)
{
  v2 = 0xE900000000000063;
  v3 = 0x6974616D6F747561;
  v4 = qword_958488;
  v5 = v1[qword_958488];
  v1[qword_958488] = a1;
  v6 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v7 = 0x746867696CLL;
    }

    else
    {
      v7 = 1802658148;
    }

    if (v6 == 1)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = 0x6974616D6F747561;
    v8 = 0xE900000000000063;
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  if (v5 != 1)
  {
    v2 = 0xE400000000000000;
    if (v7 != 1802658148)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v2 = 0xE500000000000000;
  v3 = 0x746867696CLL;
LABEL_13:
  if (v7 != v3)
  {
LABEL_20:
    v10 = sub_76A950();

    if ((v10 & 1) == 0)
    {
      sub_4F7678(v1[v4]);

      return [v1 setNeedsDisplay];
    }

    return result;
  }

LABEL_16:
  if (v8 != v2)
  {
    goto LABEL_20;
  }
}

char *sub_4F6BB8(unsigned __int8 a1)
{
  v3 = a1;
  v4 = sub_768C60();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[qword_958488] = 0;
  v7 = qword_958490;
  *&v1[v7] = [objc_opt_self() secondaryLabelColor];
  v8 = [objc_allocWithZone(UIVisualEffectView) init];
  *&v1[qword_958498] = v8;
  v9 = [objc_allocWithZone(UIVisualEffectView) init];
  *&v1[qword_9584A0] = v9;
  v10 = [objc_allocWithZone(UIImageView) init];
  v11 = 0;
  *&v1[qword_9584A8] = v10;
  if (v3 == 2)
  {
    v11 = [objc_allocWithZone(UILabel) init];
  }

  *&v1[qword_9584B0] = v11;
  v1[qword_9584B8] = a1;
  v12 = type metadata accessor for CardHeaderButton();
  v47.receiver = v1;
  v47.super_class = v12;
  v13 = objc_msgSendSuper2(&v47, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v14 = qword_958498;
  v15 = *&v13[qword_958498];
  v16 = v13;
  [v15 setClipsToBounds:1];
  v17 = [*&v13[v14] layer];
  [v17 setCornerRadius:15.0];

  [*&v13[v14] setUserInteractionEnabled:0];
  v18 = *&v13[v14];
  v19 = [v16 imageView];
  [v16 insertSubview:v18 below:v19];

  v20 = [*&v13[v14] contentView];
  v21 = qword_9584A0;
  [v20 addSubview:*&v16[qword_9584A0]];

  v22 = qword_9584A8;
  v23 = *&v16[qword_9584A8];
  v24 = sub_4F6510(a1);
  [v23 setImage:v24];

  v25 = *&v16[v22];
  v26 = objc_opt_self();
  v27 = v25;
  if (v3 >= 2)
  {
    v28 = 12.0;
    v29 = v26;
    v30 = 6;
  }

  else
  {
    v28 = 15.0;
    v29 = v26;
    v30 = 7;
  }

  v31 = [v29 configurationWithPointSize:v30 weight:2 scale:{v28, v45, v46}];
  [v27 setPreferredSymbolConfiguration:v31];

  v32 = [*&v16[v21] contentView];
  [v32 addSubview:*&v16[v22]];

  v33 = *&v16[qword_9584B0];
  if (v33)
  {
    v34 = v33;
    if (a1 >= 2u)
    {
      v48._object = 0x80000000007E5900;
      v48._countAndFlagsBits = 0xD00000000000001DLL;
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      sub_75B750(v48, v49);
      v35 = sub_769210();
    }

    else
    {
      v35 = 0;
    }

    [v33 setText:v35];

    v36 = [objc_opt_self() systemFontOfSize:12.0 weight:UIFontWeightSemibold];
    [v33 setFont:v36];

    [v33 setNumberOfLines:2];
    v37 = [*&v16[v21] contentView];
    [v37 addSubview:v33];
  }

  else
  {
    [*&v16[v22] setContentMode:4];
  }

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v16 setContentEdgeInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v16 setTitleEdgeInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v16 setImageEdgeInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
  if (a1)
  {
    if (a1 == 1)
    {
      v41 = 0xEC0000004E4F5454;
      v42._countAndFlagsBits = 0x55425F45534F4C43;
    }

    else
    {
      v42._countAndFlagsBits = 0xD00000000000001DLL;
      v41 = 0x80000000007E5900;
    }
  }

  else
  {
    v41 = 0xEB000000004E4F54;
    v42._countAndFlagsBits = 0x5455425F4B434142;
  }

  v42._object = v41;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  sub_75B750(v42, v50);

  v43 = sub_769210();

  [v16 setAccessibilityLabel:v43];

  sub_768C00();
  sub_769E70();
  (*(v45 + 8))(v6, v46);
  sub_4F71E8();
  sub_4F7678(v16[qword_958488]);

  return v16;
}

void sub_4F71E8()
{
  v1 = v0;
  v2 = *&v0[qword_958498];
  [v1 intrinsicContentSize];
  [v2 setFrame:{0.0, 0.0, v3, v4}];
  v5 = *&v1[qword_9584A0];
  [v1 intrinsicContentSize];
  [v5 setFrame:{0.0, 0.0, v6, v7}];
  v8 = *&v1[qword_9584B0];
  if (v8)
  {
    v9 = v8;
    [v1 intrinsicContentSize];
    v10 = v1[qword_9584B8];
    v11 = sub_4F6510(v10);
    [v11 size];
    v13 = v12;

    [v9 measurementsWithFitting:v1 in:{280.0, 1.79769313e308}];
    v25 = v9;
    [v25 sizeThatFits:{280.0, 1.79769313e308}];
    v15 = v14;
    v17 = v16;
    [v1 intrinsicContentSize];
    v19 = v18 * 0.5 - v17 * 0.5 + 0.5;
    sub_769D20();
    [v25 setFrame:?];

    v20 = sub_4F6510(v10);
    sub_76A130();

    v27.origin.x = v13 + 12.0 + 4.0;
    v27.origin.y = v19;
    v27.size.width = v15;
    v27.size.height = v17;
    CGRectGetMinY(v27);
    v21 = *&v1[qword_9584A8];
    sub_769D20();
    [v21 setFrame:?];
  }

  else
  {
    v22 = *&v1[qword_9584A8];
    [v1 intrinsicContentSize];

    [v22 setFrame:{0.0, 0.0, v23, v24}];
  }
}

double sub_4F74DC(void *a1)
{
  v1 = a1;
  sub_4F7520();
  v3 = v2;

  return v3;
}

void sub_4F7520()
{
  if (*(v0 + qword_9584B8) >= 2u)
  {
    v1 = sub_4F6510(2);
    [v1 size];

    v2 = *(v0 + qword_9584B0);
    if (v2)
    {
      [v2 sizeThatFits:{280.0, 1.79769313e308}];
    }
  }
}

id sub_4F75EC(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      return 0;
    }
  }

  else
  {
    v3 = [v1 traitCollection];
    v4 = [v3 userInterfaceStyle];

    if (v4 == &dword_0 + 2)
    {
      return 0;
    }
  }

  return [objc_opt_self() whiteColor];
}

void sub_4F7678(char a1)
{
  v3 = sub_4F7A50(a1);
  v4 = *&v1[qword_958498];
  v12 = v3;
  [v4 setEffect:?];
  v5 = sub_4F75EC(a1);
  [v1 setTintColor:v5];

  if (a1)
  {
    if (a1 == 1)
    {
LABEL_3:
      v6 = 4;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = [v1 traitCollection];
    v8 = [v7 userInterfaceStyle];

    if (v8 == &dword_0 + 2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v9 = [objc_opt_self() effectForBlurEffect:v12 style:v6];
  v10 = *&v1[qword_9584A0];
  v11 = v9;
  [v10 setEffect:v11];
}

void sub_4F77B4(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for CardHeaderButton();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "_dynamicUserInterfaceTraitDidChange");
  sub_4F7678(v1[qword_958488]);
}

void sub_4F784C()
{
  v1 = *(v0 + qword_9584B0);
}

id sub_4F78BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardHeaderButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_4F78F4(uint64_t a1)
{
  v2 = *(a1 + qword_9584B0);
}

unint64_t sub_4F79A4()
{
  result = qword_958510;
  if (!qword_958510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_958510);
  }

  return result;
}

unint64_t sub_4F79FC()
{
  result = qword_958518;
  if (!qword_958518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_958518);
  }

  return result;
}

uint64_t sub_4F7A50(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
LABEL_3:
      if (qword_93D288 != -1)
      {
        swift_once();
      }

      v2 = &qword_958478;
      return *v2;
    }
  }

  else
  {
    v3 = [v1 traitCollection];
    v4 = [v3 userInterfaceStyle];

    if (v4 == &dword_0 + 2)
    {
      goto LABEL_3;
    }
  }

  if (qword_93D290 != -1)
  {
    swift_once();
  }

  v2 = &qword_958480;
  return *v2;
}

uint64_t sub_4F7B2C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_87F0C8;
  v6._object = a2;
  v4 = sub_76A8E0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_4F7B80(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_BD88(&unk_9457D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v56 - v7;
  v9 = sub_BD88(&unk_94AC40);
  __chkstk_darwin(v9 - 8);
  v11 = &v56 - v10;
  v12 = sub_BD88(&unk_9457E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v56 - v13;
  v15 = sub_BD88(&unk_94A780);
  __chkstk_darwin(v15 - 8);
  v63 = &v56 - v16;
  v17 = sub_BD88(&unk_948730);
  __chkstk_darwin(v17 - 8);
  v19 = &v56 - v18;
  v20 = sub_7652D0();
  __chkstk_darwin(v20 - 8);
  v64 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_757CF0();
  v23 = sub_757CE0();
  if (v23)
  {
    v60 = v14;

    v24 = sub_764EE0();
    v61 = a1;
    if (v24)
    {
      v57 = v8;
      v58 = v11;
      v62 = v23;
      if (qword_93C668 != -1)
      {
        swift_once();
      }

      v25 = sub_75CF00();
      sub_BE38(v25, qword_99B898);
      sub_75CDD0();
      v59 = v2;
      v26 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_lockupView];
      v27 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
      [*(v26 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView) contentMode];
      sub_765330();
      v28 = *(v26 + v27);
      sub_7652E0();
      sub_7591B0();
      [v28 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_396E8();
        sub_76A030();
      }

      sub_759070();

      sub_75A110();
      sub_768900();
      sub_768ED0();
      v29 = *(v26 + v27);
      sub_759210();
      sub_14FA38();
      v30 = v29;
      sub_75A050();

      v11 = v58;
      v3 = v59;
      v23 = v62;
      v8 = v57;
    }

    v31 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_lockupView];
    v32 = sub_BD88(&unk_948740);
    (*(*(v32 - 8) + 56))(v19, 1, 1, v32);
    v33 = sub_758C70();
    v34 = a2;
    v35 = v63;
    (*(*(v33 - 8) + 56))(v63, 1, 1, v33);
    v36 = sub_75BD30();
    v37 = v60;
    (*(*(v36 - 8) + 56))(v60, 1, 1, v36);
    v38 = sub_BD88(&unk_9457F0);
    (*(*(v38 - 8) + 56))(v11, 1, 1, v38);
    v39 = sub_765870();
    (*(*(v39 - 8) + 56))(v8, 1, 1, v39);
    sub_4A18A4(v23, v31, v19, v34, 0, 0, v35, v37, v8, v11);
    sub_10A2C(v8, &unk_9457D0);
    v31[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    [v31 setNeedsLayout];

    sub_10A2C(v11, &unk_94AC40);
    sub_10A2C(v37, &unk_9457E0);
    v40 = v35;
    a2 = v34;
    sub_10A2C(v40, &unk_94A780);
    sub_10A2C(v19, &unk_948730);
  }

  if (v22)
  {

    if (sub_764EE0())
    {
      v62 = v23;
      v63 = a2;
      v41 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_inAppPurchaseView];
      v42 = OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView;
      [*(v41 + OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView) contentMode];
      sub_765330();
      v43 = *(v41 + v42);
      sub_7652E0();
      sub_7591B0();
      [v43 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_396E8();
        sub_76A030();
      }

      sub_759070();

      sub_75A110();
      sub_768900();
      sub_768ED0();
      v44 = *(v41 + v42);
      sub_759210();
      sub_14FA38();
      v45 = v44;
      sub_75A050();
    }

    else
    {
    }

    v47 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_titleLabel];

    sub_764EF0();
    v49 = v48;

    if (v49)
    {
      v46 = sub_769210();
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
    v47 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_titleLabel];
  }

  [v47 setText:v46];

  v50 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_descriptionLabel];
  sub_757CD0();
  if (v51)
  {
    v52 = sub_769210();
  }

  else
  {
    v52 = 0;
  }

  [v50 setText:v52];

  v53 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_messageLabel];
  v65._object = 0x80000000007E5950;
  v65._countAndFlagsBits = 0xD000000000000030;
  v66._countAndFlagsBits = 0;
  v66._object = 0xE000000000000000;
  sub_75B750(v65, v66);
  v54 = sub_769210();

  [v53 setText:v54];

  [v3 setNeedsLayout];
}

uint64_t sub_4F849C()
{
  v0 = sub_BD88(&qword_940A60);
  __chkstk_darwin(v0 - 8);
  v2 = &v32 - v1;
  v40 = sub_765610();
  v47 = *(v40 - 8);
  __chkstk_darwin(v40);
  v4 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_BD88(&qword_940A68);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  sub_BD88(&qword_940A70);
  v15 = *(sub_765540() - 8);
  v45 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v37 = v17;
  *(v17 + 16) = xmmword_780120;
  v43 = v17 + v16;
  v49 = 0x4000000000000000;
  sub_62634();
  sub_7655D0();
  v48 = 0x4030000000000000;
  v49 = 0x4020000000000000;
  sub_7655B0();
  v49 = 0x4034000000000000;
  sub_7655D0();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v46 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v23 = *(v47 + 104);
  v47 += 104;
  v44 = v23;
  v24 = v40;
  v23(v4);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v49) = 0;
  v39 = v2;
  sub_7655D0();
  v49 = 0;
  v41 = v7;
  sub_7655D0();
  v38 = v14;
  v42 = v11;
  sub_765500();
  v49 = 0x4000000000000000;
  sub_7655D0();
  v48 = 0x4034000000000000;
  v49 = 0x4024000000000000;
  sub_7655B0();
  v49 = 0x4034000000000000;
  sub_7655D0();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  v44(v4, v46, v24);
  LOBYTE(v49) = 0;
  sub_7655D0();
  v49 = 0;
  sub_7655D0();
  v27 = v45;
  top = UIEdgeInsetsZero.top;
  v36 = left;
  sub_765500();
  v49 = 0x4008000000000000;
  sub_7655D0();
  v49 = 0x4034000000000000;
  sub_7655D0();
  v49 = 0x4034000000000000;
  sub_7655D0();
  v34 = vdupq_n_s64(0x4041000000000000uLL);
  *v4 = v34;
  v28 = v40;
  v29 = v44;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  sub_7655D0();
  v49 = 0;
  sub_7655D0();
  sub_765500();
  v33 = 2 * v27 + v45;
  v49 = 0x4008000000000000;
  sub_7655D0();
  v49 = 0x4034000000000000;
  sub_7655D0();
  v49 = 0x4034000000000000;
  sub_7655D0();
  *v4 = v34;
  v29(v4, v46, v28);
  sub_7697A0();
  LOBYTE(v49) = 0;
  sub_7655D0();
  v49 = 0;
  sub_7655D0();
  sub_765500();
  v33 = 4 * v45;
  v49 = 0x4010000000000000;
  sub_7655D0();
  v49 = 0x4038000000000000;
  sub_7655D0();
  v49 = 0x4034000000000000;
  sub_7655D0();
  v34 = vdupq_n_s64(0x404A000000000000uLL);
  *v4 = v34;
  v30 = v40;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  sub_7655D0();
  v49 = 0;
  sub_7655D0();
  sub_765500();
  v49 = 0x4014000000000000;
  sub_7655D0();
  v49 = 0x4038000000000000;
  sub_7655D0();
  v49 = 0x4034000000000000;
  sub_7655D0();
  *v4 = v34;
  v44(v4, v46, v30);
  LOBYTE(v49) = 0;
  sub_7655D0();
  v49 = 0;
  sub_7655D0();
  result = sub_765500();
  qword_958520 = v37;
  return result;
}

uint64_t sub_4F8E6C()
{
  v0 = sub_BD88(&qword_940A60);
  __chkstk_darwin(v0 - 8);
  v2 = &v32 - v1;
  v40 = sub_765610();
  v47 = *(v40 - 8);
  __chkstk_darwin(v40);
  v4 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_BD88(&qword_940A68);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  sub_BD88(&qword_940A70);
  v15 = *(sub_765540() - 8);
  v45 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v37 = v17;
  *(v17 + 16) = xmmword_780120;
  v43 = v17 + v16;
  v49 = 0x3FF0000000000000;
  sub_62634();
  sub_7655D0();
  v48 = 0x4030000000000000;
  v49 = 0x4020000000000000;
  sub_7655B0();
  v49 = 0x4034000000000000;
  sub_7655D0();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v46 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v23 = *(v47 + 104);
  v47 += 104;
  v44 = v23;
  v24 = v40;
  v23(v4);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v49) = 0;
  v39 = v2;
  sub_7655D0();
  v49 = 0;
  v41 = v7;
  sub_7655D0();
  v38 = v14;
  v42 = v11;
  sub_765500();
  v49 = 0x3FF8000000000000;
  sub_7655D0();
  v48 = 0x4034000000000000;
  v49 = 0x4024000000000000;
  sub_7655B0();
  v49 = 0x4034000000000000;
  sub_7655D0();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  v44(v4, v46, v24);
  LOBYTE(v49) = 0;
  sub_7655D0();
  v49 = 0;
  sub_7655D0();
  v27 = v45;
  top = UIEdgeInsetsZero.top;
  v36 = left;
  sub_765500();
  v49 = 0x4000000000000000;
  sub_7655D0();
  v49 = 0x4034000000000000;
  sub_7655D0();
  v49 = 0x4034000000000000;
  sub_7655D0();
  v34 = vdupq_n_s64(0x4041000000000000uLL);
  *v4 = v34;
  v28 = v40;
  v29 = v44;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  sub_7655D0();
  v49 = 0;
  sub_7655D0();
  sub_765500();
  v33 = 2 * v27 + v45;
  v49 = 0x4000000000000000;
  sub_7655D0();
  v49 = 0x4034000000000000;
  sub_7655D0();
  v49 = 0x4034000000000000;
  sub_7655D0();
  *v4 = v34;
  v29(v4, v46, v28);
  sub_7697A0();
  LOBYTE(v49) = 0;
  sub_7655D0();
  v49 = 0;
  sub_7655D0();
  sub_765500();
  v33 = 4 * v45;
  v49 = 0x4008000000000000;
  sub_7655D0();
  v49 = 0x4038000000000000;
  sub_7655D0();
  v49 = 0x4034000000000000;
  sub_7655D0();
  v34 = vdupq_n_s64(0x404A000000000000uLL);
  *v4 = v34;
  v30 = v40;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  sub_7655D0();
  v49 = 0;
  sub_7655D0();
  sub_765500();
  v49 = 0x4010000000000000;
  sub_7655D0();
  v49 = 0x4038000000000000;
  sub_7655D0();
  v49 = 0x4034000000000000;
  sub_7655D0();
  *v4 = v34;
  v44(v4, v46, v30);
  LOBYTE(v49) = 0;
  sub_7655D0();
  v49 = 0;
  sub_7655D0();
  result = sub_765500();
  qword_958528 = v37;
  return result;
}

id sub_4F983C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider18AvatarShowcaseView_artworkLoader] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider18AvatarShowcaseView_maxPlayersToShow] = a1;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider18AvatarShowcaseView_layoutConfiguration;
  v7 = sub_7636D0();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v3[v6], a2, v7);
  sub_763690();
  v10 = v9 * a1;
  sub_7636A0();
  v12 = v10 + v11;
  sub_7636B0();
  v14 = v13;
  v20.receiver = v3;
  v20.super_class = type metadata accessor for AvatarShowcaseView();
  v15 = objc_msgSendSuper2(&v20, "initWithFrame:", 0.0, 0.0, v12, v14);
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 clearColor];
  [v17 setBackgroundColor:v18];

  (*(v8 + 8))(a2, v7);
  return v17;
}

void sub_4F9A20(uint64_t a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider18AvatarShowcaseView_artworkLoader] = a1;

  if (!a1)
  {
    return;
  }

  v4 = [v2 subviews];
  sub_BE70(0, &qword_93E550);
  v5 = sub_769460();

  if (v5 >> 62)
  {
    v6 = sub_76A860();
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (v6)
    {
LABEL_4:
      if (v6 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v6; ++i)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = sub_76A770();
        }

        else
        {
          v8 = *(v5 + 8 * i + 32);
        }

        v9 = v8;
        sub_759210();
        if (swift_dynamicCastClass())
        {
          sub_14FA38();
          sub_75A0C0();
        }
      }
    }
  }
}

void sub_4F9BAC(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_BD88(&qword_94BAC0);
  __chkstk_darwin(v6 - 8);
  v59 = &v51 - v7;
  v58 = sub_7593D0();
  v8 = *(v58 - 8);
  __chkstk_darwin(v58);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4FA200();

  v57 = a2;
  sub_4F9A20(v11);
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  v12 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  if (*&v3[OBJC_IVAR____TtC18ASMessagesProvider18AvatarShowcaseView_maxPlayersToShow] >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider18AvatarShowcaseView_maxPlayersToShow];
  }

  sub_763690();
  v15 = v14 * v13;
  sub_7636A0();
  v17 = v15 + v16;
  [v3 frame];
  v19 = v18;
  v21 = v20;
  [v3 frame];
  [v3 setFrame:{v19, v21, v17}];
  if (v13 < 0)
  {
    __break(1u);
LABEL_47:
    __break(1u);
    return;
  }

  v60 = a1;
  if (v13)
  {
    v52 = v60 & 0xC000000000000001;
    if ((v60 & 0xC000000000000001) != 0 || v13 <= *(&dword_10 + (v60 & 0xFFFFFFFFFFFFFF8)))
    {
      v56 = sub_BE70(0, &qword_93E540);
      v22 = 0;
      v55 = (v8 + 104);
      v54 = enum case for CornerStyle.arc(_:);
      v53 = (v8 + 8);
      v51 = v13;
      while (1)
      {
        sub_7636B0();
        v25 = v24;
        sub_7636A0();
        v27 = (v25 - v26) * v22;
        sub_7636B0();
        v29 = v28;
        sub_7636B0();
        v31 = v30;
        v8 = sub_759210();
        v32 = [objc_allocWithZone(v8) initWithFrame:{v27, 0.0, v29, v31}];
        sub_76A030();
        sub_759070();
        sub_7636B0();
        v33 = v58;
        (*v55)(v10, v54, v58);
        sub_759200();
        (*v53)(v10, v33);
        if (qword_93C548 != -1)
        {
          swift_once();
        }

        v34 = sub_765080();
        v35 = sub_BE38(v34, qword_99B538);
        v36 = *(v34 - 8);
        v37 = v59;
        (*(v36 + 16))(v59, v35, v34);
        v38 = *(v36 + 56);
        a1 = v36 + 56;
        v38(v37, 0, 1, v34);
        sub_7591C0();
        v39 = [v3 traitCollection];
        LOBYTE(v37) = sub_7699F0();

        v40 = [v3 subviews];
        sub_BE70(0, &qword_93E550);
        v41 = sub_769460();

        v42 = v41 >> 62;
        if (v37)
        {
          if (v42)
          {
            v43 = sub_76A860();
            if (!v43)
            {
              goto LABEL_11;
            }
          }

          else
          {
            v43 = *(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8));
            if (!v43)
            {
              goto LABEL_11;
            }
          }

          v44 = __OFSUB__(v43, 1);
          v45 = v43 - 1;
          if (v44)
          {
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            v12 = sub_76A860();
            goto LABEL_3;
          }

          if ((v41 & 0xC000000000000001) == 0)
          {
            if ((v45 & 0x8000000000000000) != 0)
            {
              goto LABEL_43;
            }

            if (v45 >= *(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_44;
            }

            v46 = *(v41 + 8 * v45 + 32);
LABEL_29:
            v47 = v46;
            goto LABEL_30;
          }
        }

        else
        {
          if (v42)
          {
            if (!sub_76A860())
            {
LABEL_11:

              [v3 addSubview:v32];
              v23 = 0;
              if (!v52)
              {
                goto LABEL_34;
              }

              goto LABEL_12;
            }
          }

          else if (!*(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_11;
          }

          if ((v41 & 0xC000000000000001) == 0)
          {
            if (!*(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_42;
            }

            v46 = *(v41 + 32);
            goto LABEL_29;
          }
        }

        v47 = sub_76A770();
LABEL_30:
        v48 = v47;

        v23 = v48;
        v49 = [v3 traitCollection];
        v50 = sub_7699F0();

        if (v50)
        {
          [v3 insertSubview:v32 aboveSubview:{v23, v51}];
        }

        else
        {
          [v3 insertSubview:v32 belowSubview:{v23, v51}];
        }

        if (!v52)
        {
LABEL_34:

          goto LABEL_13;
        }

LABEL_12:
        sub_76A770();
LABEL_13:
        ++v22;
        sub_7636B0();
        sub_7636B0();
        sub_765320();
        sub_14FA38();
        sub_75A050();

        if (v51 == v22)
        {
          return;
        }
      }
    }

    goto LABEL_47;
  }
}

void sub_4FA200()
{
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider18AvatarShowcaseView_artworkLoader] = 0;

  v1 = [v0 subviews];
  sub_BE70(0, &qword_93E550);
  v2 = sub_769460();

  if (v2 >> 62)
  {
    v3 = sub_76A860();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_76A770();
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    [v5 removeFromSuperview];
  }

LABEL_10:
}

id sub_4FA350()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AvatarShowcaseView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AvatarShowcaseView()
{
  result = qword_958560;
  if (!qword_958560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4FA458()
{
  result = sub_7636D0();
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

id sub_4FA54C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_4FC25C();
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_supplementaryItems] = _swiftEmptyArrayStorage;

  sub_4FAD50();
  result = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_middleSeparatorView];
  if (result)
  {
    return [result setHidden:1];
  }

  return result;
}

uint64_t sub_4FA5C8()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75E460();
  sub_161DC(v4, qword_99E0C0);
  v24 = sub_BE38(v4, qword_99E0C0);
  if (qword_93D860 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99F118);
  v26 = *(*(v5 - 8) + 16);
  v31 = v5;
  v26(v3, v6, v5);
  v7 = enum case for FontSource.useCase(_:);
  v25 = v1[13];
  v23 = v1 + 13;
  v25(v3, enum case for FontSource.useCase(_:), v0);
  v32 = sub_766CA0();
  v54[3] = v32;
  v54[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v54);
  v52 = v0;
  v53 = &protocol witness table for FontSource;
  v8 = sub_B1B4(v51);
  v9 = v1[2];
  v27 = v1 + 2;
  v28 = v9;
  v9(v8, v3, v0);
  sub_766CB0();
  v10 = v1[1];
  v29 = v1 + 1;
  v30 = v10;
  v10(v3, v0);
  v22 = v6;
  v11 = v5;
  v12 = v26;
  v26(v3, v6, v11);
  HIDWORD(v21) = v7;
  v13 = v25;
  v25(v3, v7, v0);
  v52 = v32;
  v53 = &protocol witness table for StaticDimension;
  sub_B1B4(v51);
  v49 = v0;
  v50 = &protocol witness table for FontSource;
  v14 = sub_B1B4(v48);
  v28(v14, v3, v0);
  sub_766CB0();
  v30(v3, v0);
  v12(v3, v6, v31);
  v13(v3, v7, v0);
  v15 = v32;
  v49 = v32;
  v50 = &protocol witness table for StaticDimension;
  sub_B1B4(v48);
  v46 = v0;
  v47 = &protocol witness table for FontSource;
  v16 = sub_B1B4(v45);
  v17 = v28;
  v28(v16, v3, v0);
  sub_766CB0();
  v18 = v30;
  v30(v3, v0);
  v26(v3, v22, v31);
  v25(v3, HIDWORD(v21), v0);
  v46 = v15;
  v47 = &protocol witness table for StaticDimension;
  sub_B1B4(v45);
  v43 = v0;
  v44 = &protocol witness table for FontSource;
  v19 = sub_B1B4(v42);
  v17(v19, v3, v0);
  sub_766CB0();
  v18(v3, v0);
  v43 = &type metadata for Double;
  v44 = &protocol witness table for Double;
  v41 = &protocol witness table for Double;
  v42[0] = 0;
  v40 = &type metadata for Double;
  v38 = &protocol witness table for Double;
  v39 = 0;
  v37 = &type metadata for Double;
  v36 = 0;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  return sub_75E450();
}

id sub_4FAAAC()
{
  v1 = v0;
  v2 = sub_BD88(&unk_944E70);
  __chkstk_darwin(v2 - 8);
  v4 = &v14[-v3];
  v5 = sub_BD88(&unk_944E80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_1ED18(&v1[v9], v4, &unk_944E70);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10A2C(v4, &unk_944E70);
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_bodyLabel] setAttributedText:0];
    return [v1 setNeedsLayout];
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_75B470();
    sub_75B460();
    v11 = sub_759CF0();
    v12 = sub_22A974(v11, sub_30AE4);

    v13 = sub_759CE0();
    sub_4ED3B8(v13, 0, v12);

    [v1 setNeedsLayout];
    return (*(v6 + 8))(v8, v5);
  }
}

void sub_4FAD50()
{
  v1 = v0;
  v64 = sub_760AD0();
  v2 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_BD88(&unk_944E60);
  v4 = *(v62 - 8);
  *&v5 = __chkstk_darwin(v62).n128_u64[0];
  v61 = &v49 - v6;
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_supplementaryItems];
  v54 = *(v7 + 16);
  if (v54)
  {
    v8 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_supplementaryItemLabels;
    v59 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v60 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_supplementaryItemReusePool;
    v58 = v4 + 16;
    v57 = enum case for DirectionalTextAlignment.leading(_:);
    v56 = (v2 + 104);
    v55 = v4 + 8;

    v9 = 0;
    v52 = v0;
    v51 = v4;
    v50 = v7;
    v53 = v8;
    while (v9 < *(v7 + 16))
    {
      v10 = *(v4 + 72);
      v67 = v9;
      v12 = v61;
      v11 = v62;
      (*(v4 + 16))(v61, v59 + v10 * v9, v62);
      swift_beginAccess();
      sub_BD88(&qword_9585D8);
      sub_767450();
      swift_endAccess();
      v13 = v76;
      (*v56)(v63, v57, v64);
      v14 = v13;
      sub_75BA90();

      v15 = [v1 contentView];
      v66 = v14;
      [v15 addSubview:v14];

      sub_75B470();
      v16 = sub_762FE0();

      v17 = sub_75B460();
      (*(v4 + 8))(v12, v11);
      v65 = v16;
      v18 = sub_759CF0();
      v19 = *(v18 + 16);
      if (v19)
      {
        v76 = _swiftEmptyArrayStorage;
        sub_1439F8(0, v19, 0);
        v75 = v76;
        v20 = v18 + 64;
        v21 = sub_76A5B0();
        v22 = 0;
        v68 = v18 + 72;
        v69 = v19;
        v70 = v18 + 64;
        while ((v21 & 0x8000000000000000) == 0 && v21 < 1 << *(v18 + 32))
        {
          v25 = v21 >> 6;
          if ((*(v20 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
          {
            goto LABEL_30;
          }

          v26 = *(v18 + 36);
          v71 = v22;
          v72 = v26;
          v27 = (*(v18 + 48) + 16 * v21);
          v28 = *v27;
          v29 = v27[1];
          v30 = *(*(v18 + 56) + 8 * v21);
          v31 = v75;
          v76 = v75;
          v33 = v75[2];
          v32 = v75[3];
          v73 = v28;
          v74 = v33 + 1;

          if (v33 >= v32 >> 1)
          {
            sub_1439F8((v32 > 1), v74, 1);
            v31 = v76;
          }

          v34 = v73;
          v31[2] = v74;
          v75 = v31;
          v35 = &v31[4 * v33];
          v35[4] = v34;
          v35[5] = v29;
          v35[6] = v30;
          v35[7] = v17;
          v23 = 1 << *(v18 + 32);
          if (v21 >= v23)
          {
            goto LABEL_31;
          }

          v20 = v70;
          v36 = *(v70 + 8 * v25);
          if ((v36 & (1 << v21)) == 0)
          {
            goto LABEL_32;
          }

          if (v72 != *(v18 + 36))
          {
            goto LABEL_33;
          }

          v37 = v36 & (-2 << (v21 & 0x3F));
          if (v37)
          {
            v23 = __clz(__rbit64(v37)) | v21 & 0x7FFFFFFFFFFFFFC0;
            v24 = v69;
          }

          else
          {
            v38 = v25 << 6;
            v39 = v25 + 1;
            v24 = v69;
            v40 = (v68 + 8 * v25);
            while (v39 < (v23 + 63) >> 6)
            {
              v42 = *v40++;
              v41 = v42;
              v38 += 64;
              ++v39;
              if (v42)
              {
                sub_1F38B4(v21, v72, 0);
                v23 = __clz(__rbit64(v41)) + v38;
                goto LABEL_7;
              }
            }

            sub_1F38B4(v21, v72, 0);
          }

LABEL_7:
          v22 = v71 + 1;
          v21 = v23;
          if (v71 + 1 == v24)
          {

            v1 = v52;
            v4 = v51;
            v7 = v50;
            v43 = v75;
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        break;
      }

      v43 = _swiftEmptyArrayStorage;
LABEL_24:
      v44 = sub_759CE0();
      v45 = v66;
      sub_4ED3B8(v44, 0, v43);

      v46 = v53;
      swift_beginAccess();
      v47 = v45;
      sub_769440();
      if (*(&dword_10 + (*(v1 + v46) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v1 + v46) & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      v48 = v67 + 1;
      sub_769500();
      swift_endAccess();

      v9 = v48;
      if (v48 == v54)
      {

        goto LABEL_28;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_28:
    [v1 setNeedsLayout];
  }
}

id sub_4FB3E4@<X0>(void *a1@<X8>)
{
  v2 = sub_7666D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93D860 != -1)
  {
    swift_once();
  }

  v6 = sub_BE38(v2, qword_99F118);
  (*(v3 + 16))(v5, v6, v2);
  v7 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  result = sub_4ECF40(v5, 0, 0);
  *a1 = result;
  return result;
}

id sub_4FB534(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_BD88(&qword_94C3F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v8 = sub_767510();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  v15 = *a1;
  swift_beginAccess();
  sub_1ED18(&v2[v15], v7, &qword_94C3F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10A2C(v7, &qword_94C3F0);
    result = *&v2[*a2];
    if (result)
    {
      return [result setHidden:1];
    }
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    v17 = *a2;
    v18 = *&v2[*a2];
    if (v18)
    {
      (*(v9 + 16))(v11, v14, v8);
      v19 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
      swift_beginAccess();
      v20 = *(v9 + 24);
      v21 = v18;
      v20(&v18[v19], v11, v8);
      swift_endAccess();
      v22 = v21;
      [v22 setNeedsLayout];
      v23 = *(v9 + 8);
      v23(v11, v8);
      [v22 setHidden:0];

      return (v23)(v14, v8);
    }

    else
    {
      (*(v9 + 16))(v11, v14, v8);
      v24 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v25 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
      swift_beginAccess();
      v32 = *(v9 + 40);
      v26 = v24;
      v32(&v24[v25], v11, v8);
      swift_endAccess();

      v27 = *&v2[v17];
      if (v27)
      {
        [v27 removeFromSuperview];
        v28 = *&v2[v17];
      }

      else
      {
        v28 = 0;
      }

      *&v2[v17] = v26;
      v29 = v26;

      v30 = [v2 contentView];
      [v30 addSubview:v29];

      [v2 setNeedsLayout];
      return (*(v9 + 8))(v14, v8);
    }
  }

  return result;
}

uint64_t sub_4FB924()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v31 = sub_7664F0();
  v3 = *(v31 - 8);
  __chkstk_darwin(v31);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75E460();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_75E480();
  v10 = *(v30 - 8);
  *&v11 = __chkstk_darwin(v30).n128_u64[0];
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45.receiver = v1;
  v45.super_class = ObjectType;
  objc_msgSendSuper2(&v45, "layoutSubviews", v11);
  v14 = [v1 contentView];
  sub_2630C();
  sub_75D650();

  if (qword_93D2A8 != -1)
  {
    swift_once();
  }

  v15 = sub_BE38(v6, qword_99E0C0);
  (*(v7 + 16))(v9, v15, v6);
  v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_bodyLabel];
  v43 = type metadata accessor for DynamicTypeLinkedLabel();
  v44 = &protocol witness table for UIView;
  v42 = v16;
  swift_beginAccess();
  v17 = v16;

  sub_141510(v18);

  v19 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_topSeparatorView];
  if (v19)
  {
    v20 = type metadata accessor for SeparatorView();
    v21 = &protocol witness table for UIView;
    v22 = v19;
  }

  else
  {
    v22 = 0;
    v20 = 0;
    v21 = 0;
    v38 = 0;
    v39 = 0;
  }

  v37 = v22;
  v40 = v20;
  v41 = v21;
  v23 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_middleSeparatorView];
  if (v23)
  {
    v24 = type metadata accessor for SeparatorView();
    v25 = &protocol witness table for UIView;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v34 = 0;
    v33 = 0;
  }

  v32 = v23;
  v35 = v24;
  v36 = v25;
  v26 = v19;
  v27 = v23;
  sub_75E470();
  sub_75E440();
  (*(v3 + 8))(v5, v31);
  return (*(v10 + 8))(v13, v30);
}

uint64_t type metadata accessor for PrivacyHeaderCollectionViewCell()
{
  result = qword_9585B0;
  if (!qword_9585B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_4FBFDC()
{
  sub_839FC(319, &qword_940840, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_3B5430();
    if (v1 <= 0x3F)
    {
      sub_4FC188();
      if (v2 <= 0x3F)
      {
        sub_839FC(319, &qword_94C3E0, &type metadata accessor for Separator);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_4FC188()
{
  if (!qword_9585C0)
  {
    sub_133D8(&qword_9585C8);
    sub_4FC1F8();
    v0 = sub_767490();
    if (!v1)
    {
      atomic_store(v0, &qword_9585C0);
    }
  }
}

unint64_t sub_4FC1F8()
{
  result = qword_9585D0;
  if (!qword_9585D0)
  {
    sub_133D8(&qword_9585C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9585D0);
  }

  return result;
}

uint64_t sub_4FC25C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_supplementaryItemLabels;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (!(v4 >> 62))
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:
    *(v1 + v2) = _swiftEmptyArrayStorage;
  }

  result = sub_76A860();
  v5 = result;
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v13 = v2;
    v6 = UIAccessibilityTraitLink;
    v7 = UIAccessibilityTraitStaticText;

    v8 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = sub_76A770();
      }

      else
      {
        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      ++v8;
      swift_beginAccess();
      sub_BD88(&qword_9585D8);
      sub_767470();
      swift_endAccess();
      [v10 setAttributedText:0];
      *&v10[qword_9580A0] = 0;

      v11 = qword_958098;
      swift_beginAccess();
      *&v10[v11] = _swiftEmptyArrayStorage;

      if (*(*&v10[v11] + 16))
      {
        v12 = v6;
      }

      else
      {
        v12 = v7;
      }

      [v10 setAccessibilityTraits:v12];
      [v10 removeFromSuperview];
    }

    while (v5 != v8);

    v2 = v13;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

char *sub_4FC458()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_768C60();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v4 = &ObjectType - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_760AD0();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v33 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7666D0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&qword_9585C8);
  __chkstk_darwin(v11);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_itemLayoutContext;
  v13 = sub_75C840();
  (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_bodyText;
  v15 = sub_BD88(&unk_944E80);
  (*(*(v15 - 8) + 56))(&v1[v14], 1, 1, v15);
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_supplementaryItemLabels] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_supplementaryItems] = _swiftEmptyArrayStorage;
  v16 = type metadata accessor for DynamicTypeLinkedLabel();
  sub_7667C0();
  sub_4FC1F8();
  sub_767480();
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_topSeparatorView] = 0;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_topSeparator;
  v18 = sub_767510();
  v19 = *(*(v18 - 8) + 56);
  v19(&v1[v17], 1, 1, v18);
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_middleSeparatorView] = 0;
  v19(&v1[OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_middleSeparator], 1, 1, v18);
  v1[OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_isDetailHeader] = 0;
  if (qword_93D860 != -1)
  {
    swift_once();
  }

  v20 = sub_BE38(v7, qword_99F118);
  (*(v8 + 16))(v10, v20, v7);
  v21 = objc_allocWithZone(v16);
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_bodyLabel] = sub_4ECF40(v10, 0, 0);
  v40.receiver = v1;
  v40.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v40, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v23 = [v22 contentView];
  [v23 setClipsToBounds:0];

  v24 = [v22 contentView];
  [v24 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v25 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_bodyLabel;
  v26 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_bodyLabel];
  (*(v34 + 104))(v33, enum case for DirectionalTextAlignment.leading(_:), v35);
  v27 = v26;
  sub_75BA90();

  v28 = *&v22[v25];
  memset(v39, 0, sizeof(v39));
  memset(v38, 0, sizeof(v38));
  v29 = v28;
  sub_768C10();
  sub_10A2C(v38, &unk_93FBD0);
  sub_10A2C(v39, &unk_93FBD0);
  sub_769E70();

  (*(v36 + 8))(v4, v37);
  v30 = [v22 contentView];

  [v30 addSubview:*&v22[v25]];
  return v22;
}

void sub_4FCA24()
{
  v1 = sub_BD88(&qword_9585C8);
  __chkstk_darwin(v1);
  v2 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_itemLayoutContext;
  v3 = sub_75C840();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_bodyText;
  v5 = sub_BD88(&unk_944E80);
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_supplementaryItemLabels) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_supplementaryItems) = _swiftEmptyArrayStorage;
  type metadata accessor for DynamicTypeLinkedLabel();
  sub_7667C0();
  sub_4FC1F8();
  sub_767480();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_topSeparatorView) = 0;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_topSeparator;
  v7 = sub_767510();
  v8 = *(*(v7 - 8) + 56);
  v8(v0 + v6, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_middleSeparatorView) = 0;
  v8(v0 + OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_middleSeparator, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_isDetailHeader) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_4FCFD4()
{
  v0 = sub_768FD0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DEE8 != -1)
  {
    swift_once();
  }

  v4 = sub_BE38(v0, qword_9A03E8);
  (*(v1 + 16))(v3, v4, v0);
  qword_958620 = sub_768FF0();
  unk_958628 = &protocol witness table for OSLogger;
  sub_B1B4(qword_958608);
  return sub_768FE0();
}

uint64_t sub_4FD118()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_BD88(&qword_945AC8);
  v3 = sub_768F90();
  v4 = [objc_opt_self() authorizationStatusForEntityType:0];
  if ((v4 - 1) < 2)
  {
    goto LABEL_6;
  }

  if ((v4 - 3) < 2)
  {
    LOBYTE(v9[0]) = 1;
LABEL_7:
    sub_768F60();
    return v3;
  }

  if (v4)
  {
LABEL_6:
    LOBYTE(v9[0]) = 0;
    goto LABEL_7;
  }

  v5 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider17EventStoreManager_eventStore);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = ObjectType;
  v9[4] = sub_4FD558;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_509F0;
  v9[3] = &unk_895050;
  v7 = _Block_copy(v9);

  [v5 requestWriteOnlyAccessToEventsWithCompletion:v7];
  _Block_release(v7);
  return v3;
}

uint64_t sub_4FD284(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return sub_768F60();
  }

  swift_errorRetain();
  if (qword_93D2B0 != -1)
  {
    swift_once();
  }

  sub_B170(qword_958608, qword_958620);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  swift_getErrorValue();
  v5[3] = v4;
  v2 = sub_B1B4(v5);
  (*(*(v4 - 8) + 16))(v2);
  sub_7685E0();
  sub_BDD0(v5);
  sub_768E80();

  sub_768F50();
}

uint64_t sub_4FD520()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4FD560(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_4FD578()
{
  v1 = v0;
  v2 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_758720();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_platform])
  {

    sub_75A300();
    if ((*(v6 + 88))(v9, v5) == enum case for AppPlatform.watch(_:))
    {
      v10 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v11 = OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_chromeBorderView;
      v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_chromeBorderView];
      if (v12)
      {
        [v12 removeFromSuperview];
        v13 = *&v1[v11];
      }

      else
      {
        v13 = 0;
      }

      *&v1[v11] = v10;
      v20 = v10;

      sub_4FD82C();
    }

    else
    {
      v17 = OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_chromeBorderView;
      v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_chromeBorderView];
      if (v18)
      {
        [v18 removeFromSuperview];
        v19 = *&v1[v17];
      }

      else
      {
        v19 = 0;
      }

      *&v1[v17] = 0;

      sub_4FD82C();
      (*(v6 + 8))(v9, v5);
    }

    sub_7596B0();

    sub_6C14C(v21, v4);

    sub_4FDA80(v4);
    [v1 setNeedsLayout];
  }

  else
  {
    v14 = OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_chromeBorderView;
    v15 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_chromeBorderView];
    if (v15)
    {
      [v15 removeFromSuperview];
      v16 = *&v1[v14];
    }

    else
    {
      v16 = 0;
    }

    *&v1[v14] = 0;

    sub_4FD82C();
  }
}

void sub_4FD82C()
{
  v1 = v0;
  v2 = sub_758720();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_chromeBorderView];
  if (v6)
  {
    if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_platform])
    {
      swift_retain_n();
      v7 = v6;
      sub_75A300();
      if ((*(v3 + 88))(v5, v2) == enum case for AppPlatform.watch(_:))
      {
        if (qword_93C260 != -1)
        {
          swift_once();
        }

        v8 = qword_940CB8;
      }

      else
      {
        if (qword_93C268 != -1)
        {
          swift_once();
        }

        v8 = qword_940CC0;

        (*(v3 + 8))(v5, v2);
      }
    }

    else
    {
      v9 = qword_93C268;
      v10 = v6;
      if (v9 != -1)
      {
        swift_once();
      }

      v8 = qword_940CC0;
    }

    [v6 setBackgroundColor:v8];

    [v1 insertSubview:v6 belowSubview:*&v1[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView]];
  }
}

uint64_t sub_4FDA80(uint64_t a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_displayConfiguration];
  swift_beginAccess();
  sub_163BAC(a1, v4);
  swift_endAccess();
  v5 = OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView;
  v6 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView];
  sub_75CD10();

  v7 = *(v4 + 48);
  v8 = *&v2[v5];
  v9 = v7;
  sub_75CD00();

  [v2 setNeedsLayout];
  return sub_161D14(a1);
}

char *sub_4FDB50(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_platform] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_chromeBorderView] = 0;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_displayConfiguration;
  if (qword_93C258 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for ScreenshotDisplayConfiguration();
  v11 = sub_BE38(v10, qword_99A2F0);
  sub_163C10(v11, &v4[v9]);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView] = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18.receiver = v4;
  v18.super_class = type metadata accessor for BorderedScreenshotView();
  v12 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v16 addSubview:*&v16[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView]];

  return v16;
}

void sub_4FDDAC()
{
  v1 = v0;
  v2 = sub_7593D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v39 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v37 - v6;
  v8 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v8 - 8);
  v38 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  v16 = type metadata accessor for BorderedScreenshotView();
  v40.receiver = v0;
  v40.super_class = v16;
  objc_msgSendSuper2(&v40, "layoutSubviews");
  v17 = &v0[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_displayConfiguration];
  swift_beginAccess();
  sub_75D650();
  CGRectGetWidth(v41);
  sub_75D650();
  CGRectGetHeight(v42);
  sub_75D650();
  CGRectGetMidX(v43);
  sub_75D650();
  CGRectGetMidY(v44);
  v18 = OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView;
  v19 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView];
  sub_759170();

  sub_163C10(v17, v15);
  sub_161D14(v15);
  v20 = *&v1[v18];
  sub_163C10(v17, v12);
  LODWORD(v18) = v12[16];
  v21 = v20;
  sub_161D14(v12);
  v22 = &enum case for CornerStyle.arc(_:);
  if (!v18)
  {
    v22 = &enum case for CornerStyle.continuous(_:);
  }

  v23 = v39;
  (*(v3 + 104))(v39, *v22, v2);
  (*(v3 + 32))(v7, v23, v2);
  sub_759200();

  (*(v3 + 8))(v7, v2);
  v24 = OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_chromeBorderView;
  v25 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_chromeBorderView];
  if (v25)
  {
    v26 = v25;
    sub_75D650();
    [v26 setFrame:?];
  }

  v27 = *&v1[v24];
  if (*(v17 + 16))
  {
    if (v27)
    {
      [*&v1[v24] _setContinuousCornerRadius:10.0];
    }
  }

  else if (v27)
  {
    v28 = v38;
    sub_163C10(v17, v38);
    v29 = v27;
    sub_75D650();
    if (*(v28 + 16))
    {
      v32 = *v28;
      sub_161D14(v28);
    }

    else
    {
      v33 = v30;
      v34 = v31;
      v35 = *(v28 + 8);
      sub_161D14(v28);
      if (v34 >= v33)
      {
        v36 = v33;
      }

      else
      {
        v36 = v34;
      }

      v32 = v36 * v35;
    }

    [v29 _setContinuousCornerRadius:v32];
  }
}

id sub_4FE320()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BorderedScreenshotView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BorderedScreenshotView()
{
  result = qword_9586A0;
  if (!qword_9586A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4FE418()
{
  result = type metadata accessor for ScreenshotDisplayConfiguration();
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

uint64_t sub_4FE4C4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + qword_9586B0);
  v4 = *(v1 + qword_9586B8);
  v5 = type metadata accessor for TopChartsSegmentPageGridProvider();
  v6 = swift_allocObject();
  sub_75A3C0();
  swift_allocObject();
  *(v6 + 24) = sub_75A3B0();
  *(v6 + 16) = v3;
  *(v6 + 17) = v4;
  a1[3] = v5;
  result = sub_4FEA30(&qword_958C70, type metadata accessor for TopChartsSegmentPageGridProvider);
  a1[4] = result;
  *a1 = v6;
  return result;
}

unint64_t sub_4FE590@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  a1[3] = &type metadata for TopChartSegmentPageShelfLayoutSpacingProvider;
  result = sub_4FE9DC();
  a1[4] = result;
  *a1 = sub_4FE9BC;
  a1[1] = v2;
  return result;
}

void *sub_4FE604()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TopChartSegmentShelfSupplementaryProvider();
  v3 = swift_allocObject();
  v3[2] = v1;
  v3[3] = sub_4FEA78;
  v3[4] = v2;
  sub_4FEA30(&qword_958C60, type metadata accessor for TopChartSegmentShelfSupplementaryProvider);

  return v3;
}

uint64_t sub_4FE6D4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong[qword_9586B0];

  return v1;
}

uint64_t sub_4FE738(char a1, char a2)
{
  swift_getObjectType();
  v5 = qword_9586B0;
  *(v2 + qword_9586B0) = a1 & 1;
  *(v2 + qword_9586B8) = a2 & 1;
  sub_4FEA30(&qword_958C50, type metadata accessor for TopChartDiffableSegmentViewController);
  sub_7639F0();
  sub_BD88(&unk_959660);
  type metadata accessor for TopChartsSegmentPageGridProvider();
  result = swift_dynamicCast();
  if (result)
  {
    *(v7 + 16) = *(v2 + v5);
    *(v7 + 17) = a2 & 1;
    sub_4FEA30(&qword_958C58, type metadata accessor for TopChartsSegmentPageGridProvider);
    sub_75B540();
  }

  return result;
}

uint64_t type metadata accessor for TopChartDiffableSegmentViewController()
{
  result = qword_9586E8;
  if (!qword_9586E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_4FE930()
{
  result = qword_958C48;
  if (!qword_958C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_958C48);
  }

  return result;
}

uint64_t sub_4FE984()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_4FE9DC()
{
  result = qword_958C68;
  if (!qword_958C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_958C68);
  }

  return result;
}

uint64_t sub_4FEA30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4FEA7C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
  type metadata accessor for AccessibilityDetailsShelfSupplementaryProvider();
  v2 = swift_allocObject();
  v3 = sub_4FED2C(&qword_959298, &type metadata accessor for GenericDiffablePagePresenter);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_4FED2C(&unk_9592A0, type metadata accessor for AccessibilityDetailsShelfSupplementaryProvider);

  return v2;
}

unint64_t sub_4FEB7C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for AccessibilityDetailsShelfLayoutSpacingProvider;
  result = sub_4FECD8();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_4FEBB0@<X0>(uint64_t *a1@<X8>)
{
  sub_75A3C0();
  swift_allocObject();
  v2 = sub_75A3B0();
  swift_allocObject();
  v3 = sub_75A3B0();
  a1[3] = &type metadata for AccessibilityDetailsPageGridProvider;
  result = sub_4FEC84();
  a1[4] = result;
  *a1 = v2;
  a1[1] = v3;
  return result;
}

uint64_t type metadata accessor for AccessibilityDetailsViewController()
{
  result = qword_958CA0;
  if (!qword_958CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_4FEC84()
{
  result = qword_959288;
  if (!qword_959288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_959288);
  }

  return result;
}

unint64_t sub_4FECD8()
{
  result = qword_959290;
  if (!qword_959290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_959290);
  }

  return result;
}

uint64_t sub_4FED2C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_4FED78()
{
  [v0 pageContainerSize];
  v2 = v1;
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = sub_7699B0();

  if ((v6 & 1) == 0)
  {
    if (v4 < v2)
    {
LABEL_7:
      JUScreenClassGetLandscapeWidth();
      return;
    }

    goto LABEL_10;
  }

  if (v4 >= v2)
  {
    if (v2 == 744.0)
    {
      return;
    }

    JUScreenClassGetPortraitWidth();
    if (v2 <= v8)
    {
      return;
    }

LABEL_10:
    JUScreenClassGetPortraitWidth();
    return;
  }

  if (v2 != 1133.0)
  {
    JUScreenClassGetLandscapeWidth();
    if (v2 > v7)
    {
      goto LABEL_7;
    }
  }
}

id sub_4FEF58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SnapshotPageTraitEnvironment();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void UIViewController.pageContainerSize.getter()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
  }

  else
  {
    __break(1u);
  }
}

id UIViewController.snapshotPageTraitEnvironment.getter()
{
  [v0 pageContainerSize];
  v2 = v1;
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = type metadata accessor for SnapshotPageTraitEnvironment();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v8 = v2;
  *(v8 + 1) = v4;
  *&v7[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v5;
  v10.receiver = v7;
  v10.super_class = v6;
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t type metadata accessor for RoundedTitledButton()
{
  result = qword_9592F0;
  if (!qword_9592F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4FF288()
{
  result = sub_766CA0();
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

char *sub_4FF328(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = [swift_getObjCClassFromMetadata() buttonWithType:1];
  v8 = qword_9592E8;
  swift_beginAccess();
  v9 = sub_766CA0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 24);
  v12 = v7;
  v11(&v7[v8], a2, v9);
  swift_endAccess();
  v13 = sub_7666D0();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v6, a1, v13);
  (*(v14 + 56))(v6, 0, 1, v13);
  v15 = v12;
  sub_75C540();

  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  sub_396E8();
  v16 = sub_76A080();
  [v15 _setBackgroundColor:v16];

  [v15 addTarget:v15 action:"didTapButton:" forControlEvents:64];
  v17 = sub_76A040();
  [v15 setTintColor:v17];

  (*(v10 + 8))(a2, v9);
  (*(v14 + 8))(a1, v13);
  return v15;
}

UIFontTextStyle sub_4FF5C4()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99E120);
  v1 = sub_BE38(v0, qword_99E120);
  *v1 = UIFontTextStyleSubheadline;
  *(v1 + 8) = 0;
  (*(*(v0 - 8) + 104))();

  return UIFontTextStyleSubheadline;
}

uint64_t sub_4FF674()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_99E138);
  sub_BE38(v4, qword_99E138);
  if (qword_93D2B8 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99E120);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

double sub_4FF850(void *a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_76A920();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_766CA0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = a1;
  v21.super_class = ObjectType;
  v15 = a1;
  objc_msgSendSuper2(&v21, "sizeThatFits:", a2, a3);
  v17 = v16;
  v18 = qword_9592E8;
  swift_beginAccess();
  (*(v12 + 16))(v14, &v15[v18], v11);
  sub_766470();
  sub_766700();

  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  return v17;
}

void sub_4FFA60(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "layoutSubviews");
  [v1 bounds];
  [v1 _setCornerRadius:CGRectGetHeight(v3) * 0.5];
}

char *sub_4FFADC(char *result)
{
  v1 = *&result[qword_99E150];
  if (v1)
  {
    v2 = result;
    v3 = sub_F714(v1);
    v1(v3);

    return sub_F704(v1);
  }

  return result;
}

id sub_4FFB60(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v9, "measurementsWithFitting:in:", a5, a2, a3);
}

id sub_4FFBC8(char *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v11 = qword_9592E8;
  if (qword_93D2C0 != -1)
  {
    swift_once();
  }

  v12 = sub_766CA0();
  v13 = sub_BE38(v12, qword_99E138);
  (*(*(v12 - 8) + 16))(&a1[v11], v13, v12);
  v14 = &a1[qword_99E150];
  *v14 = 0;
  *(v14 + 1) = 0;
  v16.receiver = a1;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, "initWithFrame:", a2, a3, a4, a5);
}

uint64_t sub_4FFCD8()
{
  v1 = qword_9592E8;
  v2 = sub_766CA0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_99E150);

  return sub_F704(v3);
}

uint64_t sub_4FFD54(uint64_t a1)
{
  v2 = qword_9592E8;
  v3 = sub_766CA0();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = *(a1 + qword_99E150);

  return sub_F704(v4);
}

double sub_4FFE24(void *a1)
{
  v2 = sub_759950();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 traitCollection];
  if (qword_93D3E8 != -1)
  {
    swift_once();
  }

  v29.is_nil = qword_99E3F8;
  v29.value._rawValue = 0;
  isa = sub_7699C0(v29, v7).super.isa;
  v27 = isa;

  v28 = UIFontTextStyleHeadline;
  v10 = objc_opt_self();
  v11 = [v10 configurationWithTextStyle:UIFontTextStyleHeadline scale:2];
  v12 = *(v3 + 104);
  v12(v6, enum case for SystemImage.star(_:), v2);
  v13 = [v11 configurationWithTraitCollection:isa];
  v14 = sub_759930();

  v15 = *(v3 + 8);
  v15(v6, v2);
  [v14 contentInsets];
  v17 = v16;
  [v14 contentInsets];
  v19 = v17 + v18;
  [v14 size];
  v21 = v20 - v19;
  [v14 contentInsets];
  [v14 contentInsets];
  [v14 size];

  v22 = [v10 configurationWithTextStyle:v28 scale:2];
  v12(v6, enum case for SystemImage.starFill(_:), v2);
  v23 = v27;
  v24 = [v22 configurationWithTraitCollection:v27];
  v25 = sub_759930();

  v15(v6, v2);
  sub_76A130();
  [v25 contentInsets];

  return v21 * 5.0 + 24.0;
}

id sub_500168(void *a1)
{
  if (qword_93D3E0 != -1)
  {
    swift_once();
  }

  v2 = qword_99E3F0;
  if (sub_769B40())
  {
    v3 = v2;
  }

  else
  {
    v3 = a1;
  }

  return v3;
}

double sub_5001E4(void *a1, double a2)
{
  v3 = [a1 traitCollection];
  v4 = sub_661EC8(v3, a2);

  return v4;
}

double sub_50025C(uint64_t a1, void *a2, int a3)
{
  v92 = a3;
  v98 = a2;
  v4 = sub_767370();
  v94 = *(v4 - 8);
  v95 = v4;
  __chkstk_darwin(v4);
  v93 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_766AF0();
  v89 = *(v6 - 8);
  v90 = v6;
  __chkstk_darwin(v6);
  v88 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v79 = v75 - v9;
  v10 = sub_7664A0();
  v86 = *(v10 - 8);
  v87 = v10;
  __chkstk_darwin(v10);
  v85 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7666D0();
  v83 = *(v12 - 8);
  v84 = v12;
  __chkstk_darwin(v12);
  v81 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_767030();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v15 = v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v75 - v17;
  v19 = sub_766D70();
  v91 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v75 - v23;
  __chkstk_darwin(v25);
  v27 = v75 - v26;
  v28 = sub_765420();
  if (v29)
  {
    v30 = v28;
    v31 = v29;
    type metadata accessor for ProductNoRatingsView();
    v32 = v98;
    swift_getObjectType();
    v33 = sub_11BBA8(v30, v31, v32);
  }

  else
  {
    v75[0] = v15;
    v75[1] = v18;
    v97 = v27;
    v78 = v21;
    sub_765410();
    v35 = v34;
    v36 = objc_allocWithZone(NSNumber);
    LODWORD(v37) = v35;
    v106.value.super.super.isa = [v36 initWithFloat:v37];
    isa = v106.value.super.super.isa;
    v106.is_nil = 1;
    sub_761940(v106, v39);
    v41 = v40;

    v77 = v19;
    v96 = v24;
    v75[2] = a1;
    if (!v41)
    {
      sub_765410();
      sub_769620();
    }

    sub_BD88(&qword_940F40);
    inited = swift_initStackObject();
    *(inited + 32) = NSKernAttributeName;
    *(inited + 16) = xmmword_77B6D0;
    *(inited + 64) = &type metadata for CGFloat;
    *(inited + 40) = 0xC010000000000000;
    v43 = NSKernAttributeName;
    sub_10D028(inited);
    swift_setDeallocating();
    sub_252F70(inited + 32);
    v44 = objc_allocWithZone(NSAttributedString);
    v45 = sub_769210();

    type metadata accessor for Key(0);
    sub_501134(&qword_93EC10, type metadata accessor for Key);
    v46 = sub_7690E0().super.isa;

    v47 = [v44 initWithString:v45 attributes:v46];

    v76 = v47;
    v48 = v75[0];
    sub_767020();
    if (qword_93D3D8 != -1)
    {
      swift_once();
    }

    v49 = sub_BD88(&qword_94E610);
    sub_BE38(v49, qword_99E3D8);
    v101[0] = [v98 snapshotPageTraitEnvironment];
    v50 = v81;
    sub_7592B0();
    swift_unknownObjectRelease();
    sub_766FF0();
    v52 = v83;
    v51 = v84;
    (*(v83 + 8))(v50, v84);
    (*(v80 + 8))(v48, v82);
    sub_766D50();
    sub_766DB0();
    v81 = sub_7670D0();
    swift_allocObject();
    v82 = sub_767090();
    v53 = v88;
    if (qword_93D710 != -1)
    {
      swift_once();
    }

    v54 = sub_BE38(v51, qword_99ED28);
    v55 = v85;
    (*(v52 + 16))(v85, v54, v51);
    v57 = v86;
    v56 = v87;
    (*(v86 + 104))(v55, enum case for FontSource.useCase(_:), v87);
    v58 = sub_766480();
    (*(v57 + 8))(v55, v56);
    v107._object = 0x80000000007E5EE0;
    v107._countAndFlagsBits = 0xD000000000000012;
    v109._countAndFlagsBits = 0;
    v109._object = 0xE000000000000000;
    sub_761130(v107, 5, v109);
    sub_766AE0();
    sub_766AD0();
    v59 = v90;
    v60 = v89[1];
    v60(v53, v90);
    sub_766D50();
    sub_766D80();
    v61 = sub_7653F0();
    v108._countAndFlagsBits = 0xD000000000000013;
    v108._object = 0x80000000007CCE00;
    v110._countAndFlagsBits = 0;
    v110._object = 0xE000000000000000;
    sub_761130(v108, v61, v110);
    sub_766AE0();
    v89 = v58;
    sub_766AD0();
    v60(v53, v59);
    sub_766D50();
    sub_766D80();
    swift_allocObject();
    v90 = sub_767090();
    v62 = v91;
    if (qword_93D3D0 != -1)
    {
      swift_once();
    }

    sub_500D7C(&xmmword_99E2F8, v101);
    v63 = v77;
    v102[3] = v77;
    v102[4] = &protocol witness table for LabelPlaceholder;
    v64 = sub_B1B4(v102);
    v65 = *(v62 + 16);
    v65(v64, v97, v63);
    v100 = v82;
    sub_7665D0();
    v103[3] = v63;
    v103[4] = &protocol witness table for LabelPlaceholder;
    v66 = sub_B1B4(v103);
    v65(v66, v96, v63);
    v104[3] = v63;
    v104[4] = &protocol witness table for LabelPlaceholder;
    v67 = sub_B1B4(v104);
    v68 = v78;
    v65(v67, v78, v63);
    v99 = v90;
    sub_7665D0();
    v105 = v92 & 1;
    v69 = [v98 traitCollection];
    v70 = v93;
    sub_6133D8();
    v71 = v95;
    sub_7673F0();
    v33 = v72;

    (*(v94 + 8))(v70, v71);
    sub_500DD8(v101);
    v73 = *(v62 + 8);
    v73(v68, v63);
    v73(v96, v63);
    v73(v97, v63);
  }

  return v33;
}

double sub_500E2C()
{
  v0 = sub_764A60();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  v7 = sub_7656C0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_765430();
  sub_501134(&qword_94A7B8, &type metadata accessor for Ratings);
  sub_75C750();
  if (!v18)
  {
    return 0.0;
  }

  v17 = v18;
  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  (*(v8 + 8))(v10, v7);
  v11 = sub_527DE4();
  swift_getKeyPath();
  sub_75C7B0();

  sub_764A00();
  sub_501134(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints);
  v12 = sub_76A520();
  v13 = *(v1 + 8);
  v13(v3, v0);
  v13(v6, v0);
  sub_50025C(v17, v11, v12 & 1);
  v15 = v14;
  swift_unknownObjectRelease();

  return v15;
}

uint64_t sub_501134(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_50117C()
{
  v1 = [v0 layer];
  [v1 setMaskedCorners:sub_7697E0()];

  v2 = [*&v0[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView] layer];
  [v2 setMaskedCorners:sub_7697E0()];

  v3 = [*&v0[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView] layer];
  [v3 setMaskedCorners:sub_7697E0()];
}

void sub_501278(uint64_t a1, double a2)
{
  v5 = sub_7593D0();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for CornerStyle.continuous(_:))
  {
    [v2 _setContinuousCornerRadius:a2];
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView] _setContinuousCornerRadius:a2];
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView] _setContinuousCornerRadius:a2];
  }

  else
  {
    v11 = v10;
    v12 = enum case for CornerStyle.arc(_:);
    [v2 _setCornerRadius:a2];
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView] _setCornerRadius:a2];
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView] _setCornerRadius:a2];
    if (v11 != v12)
    {
      (*(v6 + 8))(v9, v5);
    }
  }

  sub_50117C();
}

id sub_501450(char *a1, char a2, uint64_t a3, unsigned int a4)
{
  v5 = v4;
  v10 = sub_BD88(&qword_944448);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = &v35 - v12;
  if ((a2 & 1) == 0)
  {
    v36 = a4;
    [a1 frame];
    [v5 setFrame:?];
    v14 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView];
    v21 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView];
    [v21 frame];
    [v14 setFrame:?];
    [v14 setHidden:{objc_msgSend(v21, "isHidden")}];
    v22 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    sub_1ED18(&v21[v22], v13, &qword_944448);
    v23 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    sub_B33C8(v13, v14 + v23, &qword_944448);
    swift_endAccess();
    v24 = [*&v21[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_imageView] image];
    if (v24)
    {
      v25 = &v21[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_artworkSize];
      if ((v21[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_artworkSize + 16] & 1) != 0 || (v26 = *&v21[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_artworkLayoutWithMetrics]) == 0)
      {
      }

      else
      {
        v28 = *v25;
        v27 = v25[1];
        v29 = v24;

        v30 = v29;
        sub_DDCF4(v29, v28, v27, 0, v26, a3, v36);
      }
    }

    v15 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView];
    v20 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView];
    [v20 frame];
    [v15 setFrame:?];
    [v15 setHidden:{objc_msgSend(v20, "isHidden")}];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      swift_unknownObjectWeakAssign();
    }

    goto LABEL_11;
  }

  v14 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView];
  v15 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView];
  v16 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView];
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    v19 = v16;

    v20 = v19;
    sub_248B88(v19, a3);

LABEL_11:
  }

  v32 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_isExpanded;
  v33 = a1[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_isExpanded];
  v5[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_isExpanded] = v33;
  *(v14 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_isExpanded) = v33;
  [v14 setNeedsLayout];
  *(v15 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_isExpanded) = v5[v32];
  sub_247BF0();
  result = [v5 setHidden:{objc_msgSend(a1, "isHidden")}];
  v5[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia] = a1[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia];
  return result;
}

void sub_5017E8(uint64_t a1, int a2)
{
  v17[1] = a2;
  v3 = sub_BD88(&qword_944440);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - v4;
  v6 = sub_7572E0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v17 - v11;
  v18 = v2;
  v13 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_currentArtworkHandlerKey;
  swift_beginAccess();
  sub_1ED18(v13 + v14, v5, &qword_944440);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10A2C(v5, &qword_944440);
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    (*(v7 + 16))(v9, v12, v6);
    sub_502A30(&qword_947B78, &type metadata accessor for UUID);
    sub_76A6E0();
    sub_75A0B0();
    sub_1EB60(v19);
    (*(v7 + 8))(v12, v6);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    type metadata accessor for TodayCardVideoView();
    sub_502A30(&qword_947B68, type metadata accessor for TodayCardVideoView);
    sub_75A0C0();
  }
}

id sub_501AE8()
{
  v1 = v0;
  v2 = sub_BD88(&qword_944440);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_BD88(&qword_944448);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView);
  v9 = sub_765120();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_currentArtworkTemplate;
  swift_beginAccess();
  sub_B33C8(v7, &v8[v10], &qword_944448);
  swift_endAccess();
  v11 = sub_7572E0();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_currentArtworkHandlerKey;
  swift_beginAccess();
  sub_B33C8(v4, &v8[v12], &qword_944440);
  swift_endAccess();
  [*&v8[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_imageView] setImage:0];
  v13 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    *(Strong + qword_99A2B8) = 7;
    sub_69D6C();
  }

  v16 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_2487B4(v16);

  v17 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_isExpanded;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_isExpanded) = 0;
  v8[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_isExpanded] = 0;
  [v8 setNeedsLayout];
  *(v13 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_isExpanded) = *(v1 + v17);
  result = sub_247BF0();
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia) = 0;
  return result;
}

char *sub_501DB0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_isExpanded] = 0;
  v10 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_pageGrid;
  v11 = sub_7656C0();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v4[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_sizeCategory] = 7;
  v4[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_originalSizeCategory] = 7;
  v4[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_isTransitioning] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia] = 0;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView;
  type metadata accessor for RevealingImageView();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView;
  type metadata accessor for RevealingVideoView();
  *&v4[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  v15 = *&v14[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView];
  v16 = v14;
  [v16 addSubview:v15];
  [v16 addSubview:*&v16[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView]];

  return v16;
}

void sub_501F90()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_sizeCategory;
  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_sizeCategory);
  *(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView) + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_sizeCategory) = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*&stru_108.segname[(swift_isaMask & *Strong) + 16])(v3);
  }

  v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView);
  v7 = *(v1 + v2);
  *(v6 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_sizeCategory) = v7;
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    (*&stru_108.segname[swift_isaMask & *v8])(v7);
  }
}

void sub_5020F8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_502A30(&qword_947B40, type metadata accessor for TodayCardVideoView);
    v4 = [v9 superview];
    if (v4)
    {
      v5 = v4;
      sub_2630C();
      v6 = v2;
      v7 = sub_76A1C0();

      if ((v7 & 1) == 0)
      {
        return;
      }

      v8 = swift_unknownObjectWeakLoadStrong();
      if (!v8)
      {
        return;
      }

      *(v8 + qword_99A2B8) = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_originalSizeCategory);
      v9 = v8;
      sub_69D6C();
    }
  }
}

void (*sub_5022EC(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_248AF0;
}

uint64_t type metadata accessor for StoryCardMediaView()
{
  result = qword_959378;
  if (!qword_959378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_502410()
{
  sub_2491AC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_5024EC(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_2487B4(Strong);
}

uint64_t (*sub_50256C(uint64_t **a1))()
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
  v2[4] = sub_5022EC(v2);
  return sub_21028;
}

uint64_t sub_5025DC()
{
  ObjectType = swift_getObjectType();
  v1 = sub_502A30(&qword_959398, type metadata accessor for StoryCardMediaView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_502650(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_502A30(&qword_959398, type metadata accessor for StoryCardMediaView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_5026DC(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_502A30(&qword_959398, type metadata accessor for StoryCardMediaView);
  *(v3 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_502798(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_2630C();
  v5 = v2;
  v6 = sub_76A1C0();

  return v6 & 1;
}

void sub_5028F8()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_isExpanded) = 0;
  v1 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_pageGrid;
  v2 = sub_7656C0();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_originalSizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_isTransitioning) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia) = 0;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView;
  type metadata accessor for RevealingImageView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView;
  type metadata accessor for RevealingVideoView();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_76A840();
  __break(1u);
}

uint64_t sub_502A30(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_502A78()
{
  v0 = sub_759950();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&unk_954ED0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = [objc_opt_self() buttonWithType:7];
  sub_76A370();
  v11 = sub_76A3F0();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v9, 0, 1, v11);
  sub_76A420();
  sub_76A410();
  if ((*(v12 + 48))(v6, 1, v11))
  {
    sub_362208(v6, v9);
    sub_76A420();
    sub_502E14(v6);
  }

  else
  {
    v13 = [objc_opt_self() configurationWithWeight:5];
    sub_76A220();
    sub_76A420();
  }

  v14 = v10;
  [v14 setMinimumContentSizeCategory:UIContentSizeCategoryLarge];
  [v14 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraLarge];
  v15 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v14 addInteraction:v15];

  [v14 setShowsLargeContentViewer:1];
  [v14 setScalesLargeContentImage:1];
  (*(v1 + 104))(v3, enum case for SystemImage.xmark(_:), v0);
  v16 = sub_759930();
  (*(v1 + 8))(v3, v0);
  [v14 setLargeContentImage:v16];

  v20._object = 0x80000000007E5FB0;
  v20._countAndFlagsBits = 0xD00000000000001DLL;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  sub_75B750(v20, v21);
  v17 = sub_769210();

  [v14 setLargeContentTitle:v17];

  return v14;
}

uint64_t sub_502E14(uint64_t a1)
{
  v2 = sub_BD88(&unk_954ED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_502E7C()
{
  result = sub_764540();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_502FB4(unsigned int *a1, uint64_t (*a2)(uint64_t))
{
  v5 = v2;
  v6 = sub_7587B0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_1ED18(v5 + v10, v15, &qword_93FED0);
  if (v16)
  {
    sub_134D8(v15, v14);
    sub_10A2C(v15, &qword_93FED0);
    sub_B170(v14, v14[3]);
    (*(v7 + 104))(v9, *a1, v6);
    sub_7587C0();
    (*(v7 + 8))(v9, v6);
    v11 = sub_BEB8(v14);
  }

  else
  {
    v11 = sub_10A2C(v15, &qword_93FED0);
  }

  return a2(v11);
}

uint64_t sub_503178()
{
  v1 = v0;
  sub_BD88(&qword_93F1E8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_7A25A0;
  swift_getWitnessTable();
  sub_764560();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_764550();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_50E528(&qword_9595A0, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  swift_getWitnessTable();
  v5 = *&v1[qword_99E1D8];

  v6 = v1;
  v7 = v5;
  sub_761840();
  sub_764400();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_7643F0();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  sub_763A80();
  sub_761840();
  sub_763D10();
  swift_allocObject();
  *(v2 + 80) = sub_763D00();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_764380();
  swift_allocObject();
  *(v2 + 96) = sub_764370();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_764680();
  swift_allocObject();
  *(v2 + 112) = sub_764670();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_763A80();
  sub_764090();
  swift_allocObject();
  *(v2 + 128) = sub_764080();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_9593B8];
  v10 = sub_50E528(&qword_9595A8, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_9593B0];
  v12 = sub_50E528(&unk_9595B0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  swift_getWitnessTable();
  sub_7642A0();
  swift_allocObject();

  *(v2 + 176) = sub_764290();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_9593A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_763C20();
  swift_allocObject();

  *(v2 + 208) = sub_763C10();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  swift_getWitnessTable();
  sub_7644C0();
  swift_allocObject();
  *(v2 + 224) = sub_7644B0();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_7637E0();
  swift_allocObject();
  return sub_7637D0();
}

uint64_t sub_5036CC(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  v34 = swift_isaMask & *v2;
  v6 = sub_767140();
  __chkstk_darwin(v6 - 8);
  v7 = *(&stru_1F8.reserved2 + (v5 & v4));
  v8 = *&stru_248.sectname[v5 & v4];
  v9 = *&stru_248.segname[(v5 & v4) - 8];
  v10 = *&stru_248.segname[v5 & v4];
  v11 = *&stru_248.segname[(v5 & v4) + 8];
  v32 = *(&stru_1F8.reloff + (v5 & v4));
  v33 = v7;
  v35 = v32;
  v36 = v7;
  v37 = v8;
  v38 = v9;
  v39 = v10;
  v40 = v11;
  v12 = sub_75F170();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v31 - v15;
  (*(v13 + 16))(&v31 - v15, a1, v12, v14);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v13 + 8))(v16, v12);
    *(v2 + qword_99E1B0) = 1;
    (*&stru_158.segname[swift_isaMask & *v2])(0);
    if (sub_7617F0())
    {
      sub_75CA90();
    }

    v18 = qword_9593C0;
    swift_beginAccess();
    v19 = *(v2 + v18);
    if (v19)
    {
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      *(v21 + 2) = v32;
      v22 = v33;
      *(v21 + 3) = *(v34 + 568);
      *(v21 + 4) = v22;
      *(v21 + 5) = v8;
      *(v21 + 6) = v9;
      *(v21 + 7) = v10;
      *(v21 + 8) = v11;
      *(v21 + 9) = v20;
      v23 = &v19[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v24 = *&v19[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      *v23 = sub_50E1B8;
      v23[1] = v21;
      v25 = v19;

      sub_F704(v24);
    }

    sub_7617E0();
  }

  else if (v17 == enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
  {
    (*(v13 + 96))(v16, v12);
    v27 = *(v16 + 1);
    sub_767230();
    swift_getWitnessTable();
    swift_errorRetain();

    sub_F714(v27);
    v28 = sub_7671F0();
    (*&stru_158.segname[swift_isaMask & *v2])(v28);
    sub_F704(v27);
  }

  else if (v17 == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    sub_7617E0();
    sub_767130();
    v29 = objc_allocWithZone(sub_767160());
    v30 = sub_767150();
    (*&stru_158.segname[swift_isaMask & *v2])(v30);
    swift_getWitnessTable();
    return sub_75EBC0();
  }

  else
  {
    (*&stru_158.segname[swift_isaMask & *v2])(0);
    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_503CCC@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_99E1A0;
  swift_beginAccess();
  v4 = sub_764540();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_503D54(uint64_t a1)
{
  v3 = qword_99E1A0;
  swift_beginAccess();
  v4 = sub_764540();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_503EE0()
{
  v1 = swift_isaMask & *v0;
  v2 = *&stru_248.segname[v1 + 8];
  v3 = *(&stru_1F8.reserved2 + v1);
  v6 = *(&stru_1F8.reloff + v1);
  v7 = v3;
  v8 = *(v1 + 592);
  v9 = v2;
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  sub_7639F0();
  sub_BD88(&unk_959660);
  sub_BD88(&qword_94AD48);
  if (swift_dynamicCast())
  {
    sub_B170(&v6, *(&v7 + 1));
    sub_75B500();
    sub_BEB8(&v6);
  }

  else
  {
    *&v8 = 0;
    v6 = 0u;
    v7 = 0u;
    sub_10A2C(&v6, &unk_959670);
  }

  type metadata accessor for TodayCardGridTracker();
  result = sub_768860();
  v5 = v10;
  if (v10)
  {
    swift_beginAccess();
    *(v5 + 16) = _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_5040A8(uint64_t a1)
{
  v2 = sub_BD88(&unk_9595E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-1] - v4;
  v6 = sub_BD88(&qword_9495B8);
  __chkstk_darwin(v6 - 8);
  v8 = &v16[-1] - v7;
  sub_1ED18(a1, &v16[-1] - v7, &qword_9495B8);
  v9 = sub_BD88(&unk_959560);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10A2C(v8, &qword_9495B8);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v16[1] = 0;
    v16[2] = 0;
  }

  else
  {
    sub_75B030();
    (*(v10 + 8))(v8, v9);
    v11 = sub_764440();
    (*(v3 + 8))(v5, v2);
    v12 = sub_BD88(&unk_959650);
    v13 = sub_16194(&qword_94AD30, &unk_959650);
  }

  v16[0] = v11;
  v17 = v12;
  v18 = v13;
  result = sub_75E9E0();
  if (v17)
  {
    return sub_BEB8(v16);
  }

  return result;
}

uint64_t sub_504334()
{
  if ((*(v0 + qword_99E1B0) & 1) == 0)
  {
    return sub_761860();
  }

  return result;
}

uint64_t sub_504370()
{
  v1 = swift_isaMask & *v0;
  v2 = *&stru_248.segname[v1 + 8];
  v3 = *(&stru_1F8.reserved2 + v1);
  v7[0] = *(&stru_1F8.reloff + v1);
  v7[1] = v3;
  v7[2] = *(v1 + 592);
  v8 = v2;
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  sub_763A80();
  type metadata accessor for GenericPageItemSupplementaryProvider();
  v4 = swift_allocObject();
  sub_134D8(v7, v4 + 16);
  type metadata accessor for GenericPageSeparatorItemSupplementaryProvider();
  v5 = swift_allocObject();
  sub_10914(v7, v5 + 16);
  *(v4 + 56) = v5;
  sub_50E528(&qword_944A90, type metadata accessor for GenericPageItemSupplementaryProvider);
  return v4;
}

double *sub_5044B8()
{
  v1 = v0;
  v119 = swift_isaMask & *v0;
  v2 = sub_75B660();
  v114 = *(v2 - 8);
  v115 = v2;
  __chkstk_darwin(v2);
  v106 = (&v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v109 = (&v101 - v5);
  v113 = sub_BD88(&unk_94F1F0);
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v105 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v108 = &v101 - v8;
  v9 = sub_BD88(&unk_957F70);
  __chkstk_darwin(v9 - 8);
  v110 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v101 - v12;
  v14 = sub_75DAB0();
  v117 = *(v14 - 8);
  v118 = v14;
  __chkstk_darwin(v14);
  v16 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v101 - v18;
  v120 = sub_BD88(&qword_93FF08);
  v20 = *(v120 - 8);
  __chkstk_darwin(v120);
  v116 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v101 - v23;
  v25 = sub_7623F0();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = _swiftEmptyArrayStorage;
  sub_75F1D0();
  v29 = (*(v26 + 88))(v28, v25);
  v107 = v16;
  v111 = v19;
  if (v29 == enum case for PaginatedPagePresenterState.preparingNextPage(_:))
  {
    (*(v26 + 96))(v28, v25);
    sub_BEB8(v28);
    v30 = [v0 traitCollection];
    if (qword_93DCF0 != -1)
    {
      swift_once();
    }

    v31 = sub_766CA0();
    sub_BE38(v31, qword_99FE18);
    sub_7671D0();
    sub_BD88(&unk_93F5C0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_77D9F0;
    *(v32 + 32) = v30;
    v33 = v30;
    v34 = sub_7671E0();
    sub_7666E0();
    v36 = v35;

    v37 = objc_opt_self();
    v38 = [v37 fractionalWidthDimension:1.0];
    v39 = [v37 absoluteDimension:v36];
    v40 = [objc_opt_self() sizeWithWidthDimension:v38 heightDimension:v39];

    type metadata accessor for InfiniteScrollFooterView();
    v41 = v40;
    sub_769BC0();
    v42 = sub_769210();

    v43 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v41 elementKind:v42 alignment:5];

    v44 = v43;
    sub_769440();
    if (*(&dword_10 + (v125 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v125 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();

    v45 = v125;
  }

  else
  {
    (*(v26 + 8))(v28, v25);
    v45 = _swiftEmptyArrayStorage;
  }

  v46 = qword_9593C8;
  swift_beginAccess();
  v47 = *(v1 + v46);
  if (!v47)
  {
    return v45;
  }

  v48 = v47;
  sub_767A90();

  v49 = v120;
  v50 = sub_7678E0();
  v53 = *(v20 + 8);
  v51 = v20 + 8;
  v52 = v53;
  v53(v24, v49);
  if (v50 < 1)
  {
    v57 = v117;
    v56 = v118;
    v58 = *(v1 + v46);
    if (!v58)
    {
      return v45;
    }

    goto LABEL_21;
  }

  v54 = *(v119 + 608);
  v55 = *(v119 + 576);
  v121 = *(v119 + 560);
  v122 = v55;
  v123 = *(v119 + 592);
  v124 = v54;
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  sub_763A20();
  v57 = v117;
  v56 = v118;
  if ((*(v117 + 48))(v13, 1, v118) == 1)
  {
    sub_10A2C(v13, &unk_957F70);
    v58 = *(v1 + v46);
    if (!v58)
    {
      return v45;
    }

    goto LABEL_21;
  }

  v102 = v45;
  v104 = v52;
  v103 = v51;
  v59 = v56;
  v60 = v111;
  (*(v57 + 32))(v111, v13, v59);
  v61 = v108;
  sub_75DAA0();
  swift_getKeyPath();
  v62 = v57;
  v63 = v109;
  v64 = v113;
  sub_768750();

  v65 = v64;
  v66 = v63;
  (*(v112 + 8))(v61, v65);
  v68 = v114;
  v67 = v115;
  if ((*(v114 + 88))(v63, v115) != enum case for ShelfBackground.color(_:))
  {
    v57 = v62;
    (*(v62 + 8))(v60, v59);
    (*(v68 + 8))(v66, v67);
    v56 = v59;
    v52 = v104;
    v45 = v102;
    v58 = *(v1 + v46);
    if (!v58)
    {
      return v45;
    }

    goto LABEL_21;
  }

  (*(v68 + 96))(v63, v67);

  v69 = *(sub_BD88(&unk_959640) + 48);
  v70 = sub_75EDA0();
  (*(*(v70 - 8) + 8))(v63 + v69, v70);
  v71 = objc_opt_self();
  v72 = [v71 fractionalWidthDimension:1.0];
  v73 = [v71 absoluteDimension:2000.0];
  v74 = [objc_opt_self() sizeWithWidthDimension:v72 heightDimension:v73];

  v75 = sub_769210();
  v76 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v74 elementKind:v75 alignment:1 absoluteOffset:{0.0, -2000.0}];

  [v76 setExtendsBoundary:0];
  v77 = v76;
  sub_769440();
  if (*(&dword_10 + (v125 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v125 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();

  v57 = v62;
  v56 = v59;
  (*(v62 + 8))(v111, v59);
  v45 = v125;
  v52 = v104;
  v58 = *(v1 + v46);
  if (v58)
  {
LABEL_21:
    v78 = v58;
    v79 = v116;
    sub_767A90();

    v80 = v120;
    v81 = sub_7678E0();
    v52(v79, v80);
    if (v81 >= 1)
    {
      v82 = *(v119 + 608);
      v83 = *(v119 + 576);
      v121 = *(v119 + 560);
      v122 = v83;
      v123 = *(v119 + 592);
      v124 = v82;
      type metadata accessor for BaseDiffableShelfViewController();
      swift_getWitnessTable();
      v84 = v110;
      sub_763A20();
      if ((*(v57 + 48))(v84, 1, v56) == 1)
      {
        sub_10A2C(v84, &unk_957F70);
      }

      else
      {
        v85 = v107;
        (*(v57 + 32))(v107, v84, v56);
        v86 = v105;
        sub_75DAA0();
        swift_getKeyPath();
        v87 = v106;
        v88 = v113;
        sub_768750();

        (*(v112 + 8))(v86, v88);
        v90 = v114;
        v89 = v115;
        if ((*(v114 + 88))(v87, v115) == enum case for ShelfBackground.color(_:))
        {
          (*(v90 + 96))(v87, v89);

          v91 = *(sub_BD88(&unk_959640) + 48);
          v92 = sub_75EDA0();
          (*(*(v92 - 8) + 8))(v87 + v91, v92);
          v93 = objc_opt_self();
          v94 = [v93 fractionalWidthDimension:1.0];
          v95 = [v93 absoluteDimension:2000.0];
          v96 = [objc_opt_self() sizeWithWidthDimension:v94 heightDimension:v95];

          v97 = sub_769210();
          v98 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v96 elementKind:v97 alignment:5 absoluteOffset:{0.0, 2000.0}];

          [v98 setExtendsBoundary:0];
          v99 = v98;
          sub_769440();
          if (*(&dword_10 + (v125 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v125 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_7694C0();
          }

          sub_769500();

          (*(v57 + 8))(v85, v56);
          return v125;
        }

        else
        {
          (*(v57 + 8))(v85, v56);
          (*(v90 + 8))(v87, v89);
        }
      }
    }
  }

  return v45;
}

double sub_5053E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = swift_isaMask & *v3;
  type metadata accessor for InfiniteScrollFooterView();
  if (sub_769BC0() == a1 && v8 == a2)
  {

    goto LABEL_11;
  }

  v10 = sub_76A950();

  if (v10)
  {
LABEL_11:

    sub_769BD0();
    *(a3 + 24) = sub_BD88(&qword_951B98);
    *(a3 + 32) = sub_16194(&unk_959630, &qword_951B98);
    sub_B1B4(a3);
    goto LABEL_12;
  }

  if (a1 == 0x676B636142706F74 && a2 == 0xED0000646E756F72 || (sub_76A950() & 1) != 0 || a1 == 0xD000000000000010 && 0x80000000007D87A0 == a2 || (sub_76A950() & 1) != 0)
  {
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = *(v7 + 560);
    *(v12 + 24) = *(v7 + 568);
    *(v12 + 40) = *(v7 + 584);
    *(v12 + 48) = *(v7 + 592);
    *(v12 + 64) = *(v7 + 608);
    *(v12 + 72) = v11;
    *(a3 + 24) = sub_BD88(&unk_959620);
    *(a3 + 32) = sub_16194(&qword_951B90, &unk_959620);
    sub_B1B4(a3);
    sub_BE70(0, &qword_947680);
    swift_bridgeObjectRetain_n();
LABEL_12:
    sub_763760();
    return result;
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_5057F4()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = swift_isaMask & v2;
  v5 = sub_BD88(&qword_949570);
  __chkstk_darwin(v5 - 8);
  v47 = v33 - v6;
  v7 = sub_BD88(&unk_9595F0);
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin(v7);
  v44 = v33 - v8;
  v38 = *&stru_248.segname[(v3 & v2) - 8];
  v37 = *&stru_248.segname[v3 & v2];
  v36 = *&stru_248.segname[(v3 & v2) + 8];
  *&v50[24] = v38;
  v51 = v37;
  v52 = v36;
  v9 = *(&stru_1F8.reloff + (v3 & v2));
  v34 = *(v4 + 576);
  v35 = (v4 + 568);
  *v50 = v9;
  *&v50[8] = v34;
  v40 = sub_75F170();
  v10 = sub_768A20();
  v42 = *(v10 - 8);
  v43 = v10;
  __chkstk_darwin(v10);
  v41 = v33 - v11;
  v12 = sub_BD88(&qword_949580);
  v13 = *(v12 - 8);
  v48 = v12;
  v49 = v13;
  __chkstk_darwin(v12);
  v39 = v33 - v14;
  v15 = sub_BD88(&qword_942CA0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v33 - v17;
  v33[1] = *(v1 + qword_99E1A8);
  sub_75F1B0();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_50E1EC;
  *(v19 + 24) = 0;
  sub_BD88(&unk_959600);
  *&v20 = v9;
  *(&v20 + 1) = *v35;
  *v50 = v20;
  *&v50[16] = v34;
  v51 = v38;
  v52 = v37;
  v53 = v36;
  type metadata accessor for BaseDiffableShelfViewController();
  v38 = &protocol conformance descriptor for SyncEvent<A>;
  sub_16194(&qword_942CA8, &unk_959600);
  sub_768710();
  sub_768720();

  sub_BEB8(v50);
  (*(v16 + 8))(v18, v15);
  sub_75F1C0();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_50E250;
  *(v21 + 24) = 0;
  v22 = sub_BD88(&qword_949590);
  v23 = sub_16194(&qword_959570, &qword_949590);
  sub_768710();
  v24 = v39;
  v36 = v22;
  v37 = v23;
  sub_768720();

  sub_BEB8(v50);
  (*(v49 + 8))(v24, v48);
  sub_761830();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_50E2B4;
  *(v25 + 24) = 0;
  sub_7690C0();
  swift_getWitnessTable();
  sub_768710();
  v26 = v41;
  sub_768720();

  sub_BEB8(v50);
  (*(v42 + 8))(v26, v43);
  sub_75F220();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_50E340;
  *(v27 + 24) = 0;
  sub_BD88(&unk_959610);
  sub_16194(&qword_9495A8, &unk_959610);
  sub_768710();
  v28 = v44;
  sub_768720();

  sub_BEB8(v50);
  (*(v45 + 8))(v28, v46);
  if (*(v1 + qword_9593D0))
  {
    v29 = swift_allocObject();
    *(v29 + 16) = sub_50E3A4;
    *(v29 + 24) = 0;

    sub_768710();
    v30 = v47;
    sub_768720();

    sub_BEB8(v50);
    v31 = 0;
  }

  else
  {
    v31 = 1;
    v30 = v47;
  }

  (*(v49 + 56))(v30, v31, 1, v48);
  return sub_10A2C(v30, &qword_949570);
}

void sub_506064(uint64_t a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v1;
  v28 = sub_BD88(&unk_9595E0);
  v5 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v27 - v6;
  v8 = sub_BD88(&qword_9495B8);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_BD88(&unk_959560);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  sub_5040A8(v10);
  sub_10A2C(v10, &qword_9495B8);
  v13 = sub_75B040();
  v14 = qword_9593C8;
  if (v13)
  {
    swift_beginAccess();
    v15 = *&v2[v14];
    if (!v15)
    {
      goto LABEL_7;
    }

    v16 = v15;
    sub_75B030();
    sub_762D20();
  }

  else
  {
    swift_beginAccess();
    v17 = *&v2[v14];
    if (!v17)
    {
      goto LABEL_7;
    }

    v16 = v17;
    sub_75B030();
    sub_75B050();
    sub_762D90();
  }

  (*(v5 + 8))(v7, v28);
LABEL_7:
  v18 = *(v4 + 608);
  v19 = *(v4 + 576);
  v29 = *(v4 + 560);
  v30 = v19;
  v31 = *(v4 + 592);
  v32 = v18;
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  sub_764690();
  v20 = [v2 collectionView];
  if (!v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v20;
  v22 = [v20 window];

  if (v22)
  {

    v23 = [v2 collectionView];
    if (!v23)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v24 = v23;
    sub_75FA20();
  }

  v25 = [v2 view];
  if (!v25)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v26 = v25;
  [v25 bounds];

  sub_763A70();
  if (sub_75B020())
  {
    sub_75A0E0();
  }
}

uint64_t sub_5064A0(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  sub_1ED18(a2, v5, &unk_93FBD0);

  sub_506C24(v2, v5);
  return sub_10A2C(&v4, &unk_959590);
}

id sub_506520()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result bounds];

    type metadata accessor for BaseDiffableShelfViewController();
    swift_getWitnessTable();
    return sub_763A70();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_506620(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28[1] = a1;
  v28[0] = swift_isaMask & *v2;
  v5 = sub_BD88(&unk_93F620);
  __chkstk_darwin(v5 - 8);
  v7 = v28 - v6;
  v8 = sub_75C840();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v33 = v28 - v13;
  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = *(sub_757640() - 8);
    v16 = (v9 + 48);
    v31 = v9;
    v17 = (v9 + 32);
    v18 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v34 = *(v15 + 72);
    v19 = _swiftEmptyArrayStorage;
    v29 = v16;
    v30 = v11;
    v32 = v3;
    do
    {
      sub_50B88C();
      if ((*v16)(v7, 1, v8) == 1)
      {
        sub_10A2C(v7, &unk_93F620);
      }

      else
      {
        v20 = *v17;
        v21 = v33;
        (*v17)(v33, v7, v8);
        v20(v11, v21, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_7ACE0(0, *(v19 + 2) + 1, 1, v19);
        }

        v23 = *(v19 + 2);
        v22 = *(v19 + 3);
        if (v23 >= v22 >> 1)
        {
          v19 = sub_7ACE0(v22 > 1, v23 + 1, 1, v19);
        }

        *(v19 + 2) = v23 + 1;
        v24 = v19 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v23;
        v11 = v30;
        v20(v24, v30, v8);
        v16 = v29;
      }

      v18 += v34;
      --v14;
    }

    while (v14);
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
  }

  if (!*(v19 + 2))
  {
  }

  v25 = *(v28[0] + 608);
  v26 = *(v28[0] + 576);
  v35 = *(v28[0] + 560);
  v36 = v26;
  v37 = *(v28[0] + 592);
  v38 = v25;
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  sub_763A50();
  swift_getObjectType();
  sub_761A70();

  return swift_unknownObjectRelease();
}

uint64_t sub_506A00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_BD88(&unk_94EE60);
  __chkstk_darwin(v5 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v17[-v9];
  v11 = *(v2 + qword_9593B0);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  swift_beginAccess();
  sub_1ED18(v11 + v12, v10, &unk_94EE60);
  v13 = sub_757640();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v7, 1, 1, v13);
  swift_beginAccess();
  sub_127C68(v7, v11 + v12);
  swift_endAccess();
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {
    sub_10A2C(v10, &unk_94EE60);
    return sub_1ED18(a1, a2, &unk_94EE60);
  }

  else
  {
    (*(v14 + 32))(a2, v10, v13);
    return (v15)(a2, 0, 1, v13);
  }
}

uint64_t sub_506C24(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v4 - 8);
  v6 = &v57 - v5;
  v7 = sub_757640();
  v60 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v59 = &v57 - v11;
  v12 = sub_768430();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1ED18(a2, v93, &unk_93FBD0);
  if (v93[3])
  {
    sub_BE70(0, &qword_93E550);
    if (swift_dynamicCast())
    {
      v16 = v62[1];
      [v16 bounds];
      LOBYTE(v87) = 1;
      *&v69 = v16;
      *(&v69 + 1) = v17;
      *&v70 = v18;
      *(&v70 + 1) = v19;
      *&v71 = v20;
      BYTE8(v71) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v72 = _Q0;
      v73 = _Q0;
      v74 = 15;
      sub_BE70(0, &qword_940340);
      *v15 = sub_769970();
      (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
      v26 = sub_768460();
      v27 = *(v13 + 8);
      v13 += 8;
      v27(v15, v12);
      if (v26)
      {
        v77 = xmmword_94DD18;
        v78 = xmmword_94DD28;
        v79 = xmmword_94DD38;
        v75 = xmmword_94DCF8;
        v76 = xmmword_94DD08;
        v83 = v71;
        v84 = v72;
        v85 = v73;
        v81 = v69;
        v82 = v70;
        v87 = xmmword_94DCF8;
        v88 = xmmword_94DD08;
        v90 = xmmword_94DD28;
        v91 = xmmword_94DD38;
        v80 = qword_94DD48;
        v86 = v74;
        v92 = qword_94DD48;
        v89 = xmmword_94DD18;
        sub_1ED18(&v75, &v63, &unk_93FEF0);
        xmmword_94DD18 = v83;
        xmmword_94DD28 = v84;
        xmmword_94DD38 = v85;
        qword_94DD48 = v86;
        xmmword_94DCF8 = v81;
        xmmword_94DD08 = v82;
        sub_10A2C(&v87, &unk_93FEF0);
        sub_45C2C(&v69, &v63);
        sub_50CE64(v61, a1, v62);
        v65 = xmmword_94DD18;
        v66 = xmmword_94DD28;
        v67 = xmmword_94DD38;
        v68 = qword_94DD48;
        v63 = xmmword_94DCF8;
        v64 = xmmword_94DD08;
        xmmword_94DCF8 = v75;
        xmmword_94DD08 = v76;
        xmmword_94DD18 = v77;
        xmmword_94DD28 = v78;
        xmmword_94DD38 = v79;
        qword_94DD48 = v80;
        sub_10A2C(&v63, &unk_93FEF0);
        sub_45C88(&v69);
      }

      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {
    sub_10A2C(v93, &unk_93FBD0);
  }

  v58 = a1;
  v29 = [v61 collectionView];
  if (!v29)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = v29;
  v31 = [v29 indexPathsForSelectedItems];

  if (v31)
  {
    v32 = sub_769460();

    if (*(v32 + 16))
    {
      v33 = v60;
      (*(v60 + 16))(v9, v32 + ((*(v33 + 80) + 32) & ~*(v33 + 80)), v7);

      v34 = *(v33 + 32);
      v35 = v59;
      v57 = v7;
      v34(v59, v9, v7);
      v36 = [v61 collectionView];
      if (!v36)
      {
LABEL_22:
        __break(1u);

        v53 = *&stru_20.segname[v13 + 8];
        v65 = *(&stru_20.cmd + v13);
        v66 = v53;
        v67 = *(&stru_20.vmsize + v13);
        v68 = *(&stru_20.filesize + v13);
        v54 = *(v13 + 16);
        v63 = *v13;
        v64 = v54;
        v55 = v78;
        *(&stru_20.cmd + v13) = v77;
        *&stru_20.segname[v13 + 8] = v55;
        *(&stru_20.vmsize + v13) = v79;
        *(&stru_20.filesize + v13) = v80;
        v56 = v76;
        *v13 = v75;
        *(v13 + 16) = v56;
        result = sub_10A2C(&v63, &unk_93FEF0);
        __break(1u);
        return result;
      }

      v37 = v36;
      v38 = v35;
      isa = sub_757550().super.isa;
      v40 = [v37 cellForItemAtIndexPath:isa];

      if (v40)
      {
        v41 = v40;
        [v41 bounds];
        LOBYTE(v87) = 1;
        *&v69 = v40;
        *(&v69 + 1) = v42;
        *&v70 = v43;
        *(&v70 + 1) = v44;
        *&v71 = v45;
        BYTE8(v71) = 1;
        __asm { FMOV            V0.2D, #10.0 }

        v72 = _Q0;
        v73 = _Q0;
        v74 = 15;
        sub_BE70(0, &qword_940340);
        *v15 = sub_769970();
        (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
        v47 = sub_768460();
        v48 = *(v13 + 8);
        v13 += 8;
        v48(v15, v12);
        v49 = v57;
        if (v47)
        {
          v77 = xmmword_94DD18;
          v78 = xmmword_94DD28;
          v79 = xmmword_94DD38;
          v75 = xmmword_94DCF8;
          v76 = xmmword_94DD08;
          v83 = v71;
          v84 = v72;
          v85 = v73;
          v81 = v69;
          v82 = v70;
          v87 = xmmword_94DCF8;
          v88 = xmmword_94DD08;
          v90 = xmmword_94DD28;
          v91 = xmmword_94DD38;
          v80 = qword_94DD48;
          v86 = v74;
          v92 = qword_94DD48;
          v89 = xmmword_94DD18;
          sub_1ED18(&v75, &v63, &unk_93FEF0);
          xmmword_94DD18 = v83;
          xmmword_94DD28 = v84;
          xmmword_94DD38 = v85;
          qword_94DD48 = v86;
          xmmword_94DCF8 = v81;
          xmmword_94DD08 = v82;
          sub_10A2C(&v87, &unk_93FEF0);
          sub_45C2C(&v69, &v63);
          sub_50CE64(v61, v58, v93);
          v65 = xmmword_94DD18;
          v66 = xmmword_94DD28;
          v67 = xmmword_94DD38;
          v68 = qword_94DD48;
          v63 = xmmword_94DCF8;
          v64 = xmmword_94DD08;
          xmmword_94DCF8 = v75;
          xmmword_94DD08 = v76;
          xmmword_94DD18 = v77;
          xmmword_94DD28 = v78;
          xmmword_94DD38 = v79;
          qword_94DD48 = v80;
          sub_10A2C(&v63, &unk_93FEF0);
          sub_45C88(&v69);

          (*(v60 + 8))(v59, v49);
        }

        goto LABEL_20;
      }

      (*(v60 + 8))(v38, v57);
    }

    else
    {
    }
  }

  v50 = *&v61[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph];
  v51 = sub_BD88(&unk_93F630);
  sub_768860();
  v52 = *(v51 - 8);
  if ((*(v52 + 48))(v6, 1, v51) == 1)
  {
    return sub_10A2C(v6, &unk_93F980);
  }

  sub_32A6C0(v58, 1, v50, v6);

  return (*(v52 + 8))(v6, v51);
}

id sub_50751C()
{
  v1 = [v0 navigationItem];

  return v1;
}

uint64_t sub_507554@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BaseShelfComponentTypeMappingProvider();
  v3 = swift_allocObject();
  type metadata accessor for AppPromotionsShelfComponentTypeMappingProvider();
  *(v3 + 16) = swift_allocObject();
  type metadata accessor for SmallStoryCardShelfComponentTypeMappingProvider();
  *(v3 + 24) = swift_allocObject();
  a1[3] = v2;
  result = sub_50E528(&qword_9495C0, type metadata accessor for BaseShelfComponentTypeMappingProvider);
  a1[4] = result;
  *a1 = v3;
  return result;
}

unint64_t sub_507608@<X0>(uint64_t *a1@<X8>)
{
  sub_75A3C0();
  swift_allocObject();
  v2 = sub_75A3B0();
  a1[3] = &type metadata for GenericPageGridProvider;
  result = sub_B7AD4();
  a1[4] = result;
  *a1 = v2;
  return result;
}

unint64_t sub_507660@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for GenericPageShelfLayoutSpacingProvider;
  result = sub_4BBC40();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_507694()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = type metadata accessor for GenericPageShelfSupplementaryProvider();
  v4 = *(v0 + qword_99E1A8);
  v5 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
  v6 = *(&stru_1F8.flags + (v2 & v1));
  WitnessTable = swift_getWitnessTable();
  v8 = sub_6C3D78(v4, v5, v3, v6, WitnessTable);
  sub_50E528(&unk_9595C0, type metadata accessor for GenericPageShelfSupplementaryProvider);

  return v8;
}

uint64_t sub_50778C@<X0>(uint64_t *a1@<X8>)
{
  v3 = swift_isaMask & *v1;
  v4 = *&stru_248.segname[v3 + 8];
  v5 = *(&stru_1F8.reserved2 + v3);
  v22[0] = *(&stru_1F8.reloff + v3);
  v22[1] = v5;
  v22[2] = *(v3 + 592);
  v23 = v4;
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  v6 = sub_763A60();
  v24[3] = swift_getObjectType();
  v24[0] = v6;
  v7 = sub_763A50();
  v25[3] = swift_getObjectType();
  v25[0] = v7;
  sub_132B4(v24, v22);
  sub_13310(v22, v20);
  sub_BD88(&qword_93F1C8);
  if (swift_dynamicCast() && v21)
  {
    v18 = v21;
    v8 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_7ACBC(0, *&_swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    if (v10 >= v9 >> 1)
    {
      v8 = sub_7ACBC((v9 > 1), v10 + 1, 1, v8);
    }

    *(v8 + 2) = v10 + 1;
    *&v8[2 * v10 + 4] = v18;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  sub_132B4(v25, v22);
  sub_13310(v22, v20);
  sub_BD88(&qword_93F1C8);
  if (swift_dynamicCast() && v21)
  {
    v19 = v21;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_7ACBC(0, *(v8 + 2) + 1, 1, v8);
    }

    v12 = *(v8 + 2);
    v11 = *(v8 + 3);
    v13 = v19;
    if (v12 >= v11 >> 1)
    {
      v17 = sub_7ACBC((v11 > 1), v12 + 1, 1, v8);
      v13 = v19;
      v8 = v17;
    }

    *(v8 + 2) = v12 + 1;
    *&v8[2 * v12 + 4] = v13;
  }

  swift_arrayDestroy();
  sub_763A80();
  v14 = type metadata accessor for GenericPageLayoutSectionProvider();
  swift_allocObject();
  sub_134D8(v22, v20);

  v15 = sub_762B60();
  result = sub_BEB8(v22);
  a1[3] = v14;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v15;
  return result;
}

id sub_507AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

id sub_507B60()
{
  v0 = sub_50DD0C();

  return v0;
}

void sub_507B8C(uint64_t a1)
{
  v3 = qword_9593C0;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_507C44(uint64_t a1)
{
  v3 = qword_9593C8;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_507D20()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = (swift_isaMask & *v0);
  v5 = sub_BD88(&qword_949580);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - v7;
  v9 = *&stru_248.segname[(v3 & v2) + 8];
  v10 = v4[36];
  v47[0] = v4[35];
  v47[1] = v10;
  v47[2] = v4[37];
  v48 = v9;
  v11 = type metadata accessor for BaseDiffableShelfViewController();
  v49.receiver = v1;
  v49.super_class = v11;
  objc_msgSendSuper2(&v49, "viewDidLoad");
  [v1 setInstallsStandardGestureForInteractiveMovement:0];
  sub_483080(0, 0, 1);
  v12 = [v1 view];
  if (!v12)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v12;
  sub_BE70(0, &qword_93E540);
  v14 = sub_76A000();
  [v13 setBackgroundColor:v14];

  v15 = [v1 collectionView];
  if (v15)
  {
    v16 = v15;
    v17 = [objc_opt_self() systemBackgroundColor];
    [v16 setBackgroundColor:v17];
  }

  v18 = [v1 collectionView];
  if (v18)
  {
    v19 = v18;
    [v18 setAlwaysBounceVertical:1];
  }

  swift_getWitnessTable();
  sub_763A40();
  (*(&stru_478.size + (swift_isaMask & *v1)))();
  sub_75F180();
  v20 = [v1 collectionView];
  if (!v20)
  {
    goto LABEL_16;
  }

  v21 = v20;
  [v20 setPrefetchDataSource:v1];

  v22 = qword_9593C8;
  swift_beginAccess();
  v23 = *(v1 + v22);
  if (v23)
  {
    v46 = v5;
    v24 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
    type metadata accessor for DiffableFlowPreviewPresenter();
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_BD88(&qword_949590);
    swift_allocObject();
    v26 = v23;
    v45 = v24;
    swift_retain_n();
    *(v25 + 32) = sub_7690B0();
    v44 = v26;
    swift_unknownObjectWeakAssign();
    *(v25 + 24) = v24;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_50DF28;
    *(v27 + 24) = 0;
    sub_16194(&qword_959570, &qword_949590);
    sub_768710();
    sub_768720();

    sub_BEB8(v47);
    (*(v6 + 8))(v8, v46);
    v28 = sub_50E528(&qword_959578, type metadata accessor for DiffableFlowPreviewPresenter);
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    v30[2] = v29;
    v30[3] = v25;
    v30[4] = v28;

    v31 = v1;
    v32 = sub_50E008(v25, v31, sub_45AF0, v30, v45);

    v33 = *(v31 + qword_9593D8);
    *(v31 + qword_9593D8) = v32;
    v34 = v32;

    *(v31 + qword_9593D0) = v25;

    v35 = [objc_allocWithZone(UIContextMenuInteraction) initWithDelegate:v34];
    v36 = [v31 collectionView];
    if (v36)
    {
      v37 = v36;
      [v36 addInteraction:v35];

      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
    return;
  }

LABEL_10:
  if (*(v1 + qword_9593E0))
  {
    v38 = [v1 collectionView];
    sub_7614E0();
  }

  v39 = *(v1 + qword_9593E8);
  if (v39)
  {
    v40 = *(&stru_3D8.size + (swift_isaMask & *v1));

    v42 = v40(v41);
    v43 = *(v39 + 16);
    *(v39 + 16) = v42;
  }
}

void sub_50840C(void *a1)
{
  v1 = a1;
  sub_507D20();
}

uint64_t sub_508454(char a1)
{
  v2 = v1;
  v5 = *(&stru_1F8.reloff + (swift_isaMask & *v2));
  v6 = *(&stru_1F8.reserved2 + (swift_isaMask & *v2));
  v7 = *&stru_248.segname[(swift_isaMask & *v2) - 8];
  v8 = *&stru_248.segname[(swift_isaMask & *v2) + 8];
  v9.receiver = v2;
  v9.super_class = type metadata accessor for BaseDiffableShelfViewController();
  objc_msgSendSuper2(&v9, "viewWillAppear:", a1 & 1, v5, v6, v7, v8);
  if ((*(v2 + qword_99E1B0) & 1) == 0)
  {
    sub_761860();
  }

  sub_75F1A0();
  return sub_75A0A0();
}

void sub_50854C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_508454(a3);
}

void sub_5085A0(char a1)
{
  v2 = v1;
  v6 = *(&stru_1F8.reloff + (swift_isaMask & *v2));
  v7.receiver = v2;
  v7.super_class = type metadata accessor for BaseDiffableShelfViewController();
  objc_msgSendSuper2(&v7, "viewDidAppear:", a1 & 1);
  sub_75F190();
  sub_761120();
  sub_768900();
  sub_768ED0();
  v4 = v6;
  sub_7610A0();
  sub_75E3E0();
  sub_7688F0();
  if (v6)
  {
    v5 = v6;
    sub_75E3C0();

    v4 = v5;
  }
}

void sub_5086EC(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_5085A0(a3);
}