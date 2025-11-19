uint64_t sub_62F384(void *a1, char a2, uint64_t a3)
{
  v5 = [a1 traitCollection];
  if ((a2 & 1) == 0 || (sub_7699E0() & 1) != 0 || [*(a3 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerButton) isHidden])
  {
    v6 = sub_7699F0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 1;
  }
}

uint64_t sub_62F418()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_62F450()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_62F4C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_62F4E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_62F52C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_62F588(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_62F5F4()
{
  result = qword_95F520;
  if (!qword_95F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95F520);
  }

  return result;
}

unint64_t sub_62F64C()
{
  result = qword_95F528;
  if (!qword_95F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95F528);
  }

  return result;
}

uint64_t sub_62F6A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_7656A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v79 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v70 - v8;
  v10 = sub_7656C0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v80 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v78 = &v70 - v14;
  __chkstk_darwin(v15);
  v17 = &v70 - v16;
  sub_75A2D0();
  sub_630058();
  result = sub_75C750();
  if (!aBlock[0])
  {
    return result;
  }

  v75 = v9;
  v76 = v5;
  v77 = v4;

  v19 = sub_759450();
  v20 = [v19 length];

  v81 = v10;
  if (v20 < 1)
  {
    [*&v2[qword_964310] setText:0];
    v2[qword_9A0A18] = 0;
    v30 = *&v2[qword_964300];
    [v30 setHidden:1];
    goto LABEL_7;
  }

  v71 = v17;
  v73 = v11;
  v21 = sub_759450();
  swift_getKeyPath();
  v72 = a1;
  sub_75C7B0();

  v22 = aBlock[6];
  v23 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v21];
  v24 = [v21 length];
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = v22;
  *(v25 + 32) = v23;
  *(v25 + 40) = 1;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_119AC;
  *(v26 + 24) = v25;
  aBlock[4] = sub_2636C;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10C1C;
  aBlock[3] = &unk_89ADD8;
  v27 = _Block_copy(aBlock);
  v28 = v22;
  v29 = v23;

  [v21 enumerateAttributesInRange:0 options:v24 usingBlock:{0x100000, v27}];

  _Block_release(v27);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
    goto LABEL_24;
  }

  v25 = *&v2[qword_964310];
  [v25 setAttributedText:v29];
  if (qword_93E268 != -1)
  {
LABEL_24:
    swift_once();
  }

  [v25 setTextColor:qword_9A0A00];
  v2[qword_9A0A18] = 1;
  v30 = *&v2[qword_964300];
  [v30 setHidden:0];

  v10 = v81;
  v11 = v73;
  v17 = v71;
LABEL_7:
  v31 = *&v2[qword_964308];
  sub_759460();
  if (v32)
  {
    v33 = sub_769210();
  }

  else
  {
    v33 = 0;
  }

  [v31 setText:v33];

  v34 = sub_759430();
  v2[qword_9A0A10] = (v34 & 1) == 0;
  sub_26698(v34);
  if ((sub_759430() & 1) == 0 && v2[qword_9A0A18] != 1)
  {
    sub_759210();
    sub_759090();
  }

  sub_75CD10();
  v2[qword_9A0A28] = sub_759430() & 1;
  [v2 setNeedsLayout];
  v35 = sub_759430();
  v74 = v2;
  if (v35)
  {
    v36 = 0;
  }

  else
  {
    sub_BE70(0, &qword_93E540);
    v36 = sub_76A030();
  }

  [v30 setBackgroundColor:v36];

  swift_getKeyPath();
  sub_75C7B0();

  sub_765580();
  v73 = v37;
  v38 = *(v11 + 8);
  v38(v17, v10);
  swift_getKeyPath();
  v39 = v78;
  sub_75C7B0();

  sub_7655A0();
  v72 = v40;
  v38(v39, v10);
  v42 = v76;
  v41 = v77;
  v43 = v75;
  (*(v76 + 104))(v75, enum case for PageGrid.Direction.vertical(_:), v77);
  swift_getKeyPath();
  sub_75C7B0();

  sub_765590();
  v38(v17, v10);
  v44 = v38;
  (*(v42 + 16))(v79, v43, v41);
  sub_40DC7C(0.0);
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v49 = v80;
  sub_765670();
  (*(v42 + 8))(v43, v41);
  sub_765620();
  v50 = v74;
  v51 = &v74[qword_9A0A20];
  *v51 = v52;
  *(v51 + 1) = v53;
  *(v51 + 2) = v54;
  *(v51 + 3) = v55;
  [v50 setNeedsLayout];
  v56 = [v50 contentView];
  v57 = sub_759430();

  if ((v57 & 1) == 0)
  {
    sub_765620();
    top = v58;
    left = v59;
    bottom = v60;
    right = v61;
  }

  [v56 setLayoutMargins:{top, left, bottom, right}];

  if (sub_75A2C0())
  {
    v62 = [v50 contentView];
    sub_BE70(0, &qword_93E550);
    sub_75D650();
    v64 = v63;

    sub_765260();
    v66 = v65;
    sub_765260();
    v68 = v67;

    result = v44(v49, v81);
    v69 = &v50[qword_99D538];
    *v69 = v64;
    v69[1] = v64 * (v66 / v68);
  }

  else
  {
    v44(v49, v81);
  }

  return result;
}

unint64_t sub_630058()
{
  result = qword_953960;
  if (!qword_953960)
  {
    sub_75A2D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_953960);
  }

  return result;
}

uint64_t sub_6300B8()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_630110(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_630128@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_7664A0();
  v20 = *(v1 - 8);
  v21 = v1;
  __chkstk_darwin(v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_76A920();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&qword_940AD0);
  __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v9);
  if (qword_93DCE8 != -1)
  {
    swift_once();
  }

  v10 = sub_766CA0();
  sub_BE38(v10, qword_99FE00);
  sub_766470();
  sub_766700();
  v12 = v11;
  v13 = *(v5 + 8);
  v13(v7, v4);
  v26 = v12;
  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  sub_BE38(v10, qword_99FDE8);
  sub_766470();
  sub_766700();
  v15 = v14;
  v13(v7, v4);
  v23 = v15;
  sub_BD88(&qword_93FBE0);
  sub_7592D0();
  if (qword_93D770 != -1)
  {
    swift_once();
  }

  v16 = sub_7666D0();
  v17 = sub_BE38(v16, qword_99EE48);
  (*(*(v16 - 8) + 16))(v3, v17, v16);
  (*(v20 + 104))(v3, enum case for FontSource.useCase(_:), v21);
  sub_759330();
  v27 = &type metadata for CGFloat;
  v28 = &protocol witness table for CGFloat;
  v25 = &protocol witness table for CGFloat;
  v26 = 0x403E000000000000;
  v24 = &type metadata for CGFloat;
  v23 = 0x4064000000000000;
  return sub_760EF0();
}

char *sub_630508(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_768C60();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_itemLayoutContext;
  v15 = sub_75C840();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_impressionsCalculator] = 0;
  v16 = &v4[OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_impressionsUpdateBlock];
  sub_BE70(0, &qword_93E540);
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = sub_76A000();
  v18 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_bodyTextView] = sub_1A4998(v17, 0.0, 0.0, 0.0, 0.0);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_developerLinkView] = [objc_allocWithZone(type metadata accessor for DeveloperLinkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_tagRibbonView] = [objc_allocWithZone(type metadata accessor for TagFacetRibbonView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19 = type metadata accessor for ProductDescriptionCollectionViewCell();
  v43.receiver = v5;
  v43.super_class = v19;
  v20 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  v21 = [v20 contentView];
  v22 = sub_76A000();
  [v21 setBackgroundColor:v22];

  v23 = v20;
  v24 = [v23 contentView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v24 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  [v23 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_bodyTextView;
  v29 = *&v23[OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_bodyTextView];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v30 = v29;
  sub_768C10();
  sub_10A2C(&v39, &unk_93FBD0);
  sub_10A2C(&v41, &unk_93FBD0);
  sub_769E70();

  v31 = *(v11 + 8);
  v31(v13, v10);
  v32 = OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_developerLinkView;
  v33 = *&v23[OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_developerLinkView];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v34 = v33;
  sub_768C10();
  sub_10A2C(&v39, &unk_93FBD0);
  sub_10A2C(&v41, &unk_93FBD0);
  sub_769E70();

  v31(v13, v10);
  v35 = [v23 contentView];
  [v35 addSubview:*&v23[v28]];

  v36 = [v23 contentView];
  [v36 addSubview:*&v23[OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_tagRibbonView]];

  v37 = [v23 contentView];
  [v37 addSubview:*&v23[v32]];

  return v23;
}

uint64_t sub_630AA4()
{
  v1 = v0;
  v26 = sub_7664F0();
  v2 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_760F00();
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_760F20();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProductDescriptionCollectionViewCell();
  v38.receiver = v0;
  v38.super_class = v11;
  objc_msgSendSuper2(&v38, "layoutSubviews");
  v12 = [v0 contentView];
  sub_BE70(0, &qword_93E550);
  sub_75D650();

  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_tagRibbonView];
  type metadata accessor for RibbonBarItemCollectionViewCell();

  v14 = sub_769490();

  v15 = 0;
  if (v14)
  {
    v16 = v13;
    v15 = v13;
  }

  sub_630128(v7);
  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_bodyTextView];
  v36 = type metadata accessor for ExpandableTextView();
  v37 = &protocol witness table for UIView;
  v35 = v17;
  v18 = 0;
  if (v15)
  {
    v18 = type metadata accessor for TagFacetRibbonView();
    v19 = &protocol witness table for UIView;
  }

  else
  {
    v19 = 0;
    v31 = 0;
    v32 = 0;
  }

  v30 = v15;
  v33 = v18;
  v34 = v19;
  v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_developerLinkView];
  v28 = type metadata accessor for DeveloperLinkView();
  v29 = &protocol witness table for UIView;
  v27 = v20;
  v21 = v17;
  v22 = v15;
  v23 = v20;
  sub_760F10();
  sub_760EE0();

  (*(v2 + 8))(v4, v26);
  return (*(v8 + 8))(v10, v25);
}

double sub_630E30(void *a1, void *a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v10 - 8);
  v12 = &v42 - v11;
  if (a2)
  {
    v13 = a5 >= a4 ? a4 : a5;
    if (v13 != 0.0)
    {
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      v17 = a2;
      v18 = [a1 traitCollection];
      v19 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
      v20 = objc_allocWithZone(v19);
      v21 = &v20[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_layoutMargins];
      *v21 = UIEdgeInsetsZero.top;
      v21[1] = left;
      v21[2] = bottom;
      v21[3] = right;
      *&v20[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_numberOfLines] = a3;
      v22 = &v20[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_fittingSize];
      *v22 = a4;
      v22[1] = a5;
      *&v20[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_traitCollection] = v18;
      *&v20[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_attributedText] = v17;
      v43.receiver = v20;
      v43.super_class = v19;
      v23 = objc_msgSendSuper2(&v43, "init");
      if (qword_93C5F0 != -1)
      {
        swift_once();
      }

      v24 = qword_9482F8;
      v25 = [qword_9482F8 objectForKey:v23];
      if (v25)
      {
        v26 = v25;

        a4 = *&v26[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642910CacheValue_measurements];
      }

      else
      {
        v27 = qword_93C5E8;
        v26 = v17;
        if (v27 != -1)
        {
          swift_once();
        }

        v28 = sub_7666D0();
        v29 = sub_BE38(v28, qword_9482E0);
        v30 = *(v28 - 8);
        (*(v30 + 16))(v12, v29, v28);
        (*(v30 + 56))(v12, 0, 1, v28);
        sub_766B00();
        sub_766B20();
        sub_766B10();
        v32 = v31;
        v34 = v33;
        v36 = v35;

        sub_10A2C(v12, &unk_93E530);
        v37 = type metadata accessor for ExpandableTextView.CacheValue();
        v38 = objc_allocWithZone(v37);
        v39 = &v38[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642910CacheValue_measurements];
        *v39 = a4;
        v39[1] = UIEdgeInsetsZero.top + bottom + v32;
        *(v39 + 2) = v34;
        *(v39 + 3) = v36;
        v42.receiver = v38;
        v42.super_class = v37;
        v40 = objc_msgSendSuper2(&v42, "init");
        [v24 setObject:v40 forKey:v23];
      }
    }
  }

  return a4;
}

void sub_6311D8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_75EE60();
  __chkstk_darwin(v9 - 8);
  v10 = sub_75EE70();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a5 traitCollection];
  sub_75A530();
  if ((sub_769490() & 1) == 0)
  {

    return;
  }

  v30 = a3;
  v16 = sub_769A20();
  v31 = _swiftEmptyArrayStorage;
  if (!(a2 >> 62))
  {
    v17 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    v29 = v16;
    if (v17)
    {
      goto LABEL_4;
    }

LABEL_18:
    v20 = _swiftEmptyArrayStorage;
LABEL_19:
    sub_1411E4(v20);

    sub_75EE50();
    sub_75EE20();
    sub_7671D0();
    sub_BD88(&unk_93F5C0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_77D9F0;
    v23 = v29;
    *(v22 + 32) = v29;
    v24 = v23;
    v25 = sub_7671E0();
    sub_75EE30();

    (*(v11 + 8))(v14, v10);
    return;
  }

  v21 = v16;
  v17 = sub_76A860();
  v29 = v21;
  if (!v17)
  {
    goto LABEL_18;
  }

LABEL_4:
  if (v17 >= 1)
  {
    v26 = a4;
    v27 = v11;
    v28 = v10;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v18 = 0;
      do
      {
        sub_76A770();
        sub_7670D0();
        swift_allocObject();
        swift_unknownObjectRetain();
        sub_767090();

        sub_769440();
        if (*(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v31 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        ++v18;
        sub_769500();

        swift_unknownObjectRelease();
      }

      while (v17 != v18);
    }

    else
    {
      v19 = a2 + 32;
      sub_7670D0();
      do
      {
        swift_allocObject();
        swift_retain_n();
        sub_767090();

        sub_769440();
        if (*(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v31 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();

        v19 += 8;
        --v17;
      }

      while (v17);
    }

    v20 = v31;
    v11 = v27;
    v10 = v28;
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_631644()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  if (*(v0 + v1))
  {

    sub_75F4E0();
  }

  *(v0 + v1) = 0;

  v2 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_F704(v3);
  type metadata accessor for TagFacetRibbonView();
  sub_358BAC(&qword_95F570, type metadata accessor for TagFacetRibbonView);
  return sub_7633D0();
}

id sub_63174C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductDescriptionCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ProductDescriptionCollectionViewCell()
{
  result = qword_95F558;
  if (!qword_95F558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_631878()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_631984(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_631A3C()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_F714(*v1);
  return v2;
}

uint64_t sub_631A98(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6);
}

uint64_t sub_631B58()
{
  type metadata accessor for TagFacetRibbonView();
  sub_358BAC(&qword_95F570, type metadata accessor for TagFacetRibbonView);
  return sub_7633E0();
}

uint64_t sub_631BE8(double a1, double a2, uint64_t a3, void *a4)
{
  v6 = sub_760F00();
  __chkstk_darwin(v6 - 8);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_760F20();
  v42 = *(v8 - 8);
  v43 = v8;
  __chkstk_darwin(v8);
  v41 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75D940();
  v10 = sub_7658D0();

  v44 = a4;
  v11 = [a4 traitCollection];
  v12 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v10];
  v45 = [v10 length];
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = v11;
  *(v13 + 32) = v12;
  *(v13 + 40) = 1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_119AC;
  *(v14 + 24) = v13;
  v55 = sub_2636C;
  v56 = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10C1C;
  v54 = &unk_89AE60;
  v15 = _Block_copy(aBlock);
  v16 = v11;
  v17 = v12;

  [v10 enumerateAttributesInRange:0 options:v45 usingBlock:{0x100000, v15}];

  _Block_release(v15);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v19 = v17;
    v20 = sub_75D930();
    v21 = sub_75D920();
    v22 = sub_75D910();
    if (sub_75D900())
    {
      v45 = sub_764C60();
      v24 = v23;
    }

    else
    {
      v45 = 0;
      v24 = 0;
    }

    type metadata accessor for ProductDescriptionCollectionViewCell();
    v25 = swift_allocObject();
    *(v25 + 16) = v19;
    *(v25 + 24) = 4;
    v26 = sub_7670D0();
    swift_allocObject();
    v27 = v19;
    v28 = sub_767090();
    v54 = v26;
    v55 = &protocol witness table for LayoutViewPlaceholder;
    aBlock[0] = v28;
    v29 = swift_allocObject();
    v29[2] = v20;
    v29[3] = v21;
    v29[4] = v22;
    v29[5] = v44;
    swift_allocObject();

    swift_unknownObjectRetain();
    v30 = sub_767090();
    v52[3] = v26;
    v52[4] = &protocol witness table for LayoutViewPlaceholder;
    v52[0] = v30;
    v31 = type metadata accessor for DeveloperLinkView();
    v32 = swift_allocObject();
    v33 = v45;
    v32[2] = v31;
    v32[3] = v33;
    v32[4] = v24;
    swift_allocObject();
    v34 = sub_767090();
    v51[3] = v26;
    v51[4] = &protocol witness table for LayoutViewPlaceholder;
    v51[0] = v34;
    sub_75A530();
    LOBYTE(v31) = sub_769490();

    if (v31)
    {
      sub_134D8(v52, v49);
    }

    else
    {
      v50 = 0;
      memset(v49, 0, sizeof(v49));
    }

    sub_630128(v40);
    sub_134D8(aBlock, &v48);
    sub_134D8(v52, &v47);
    sub_134D8(v51, &v46);
    v35 = v41;
    sub_760F10();
    sub_358BAC(&qword_952420, &type metadata accessor for ProductDescriptionLayout);
    v36 = v43;
    sub_7665A0();
    v38 = v37;

    (*(v42 + 8))(v35, v36);
    sub_10A2C(v49, &unk_943B10);
    sub_BEB8(v51);
    sub_BEB8(v52);
    sub_BEB8(aBlock);
    return v38 > a2;
  }

  return result;
}

uint64_t sub_6321B0()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_632208(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_632220()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_632258()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_632298()
{

  return _swift_deallocObject(v0, 40, 7);
}

char *sub_6322DC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_style;
  v11 = sub_7652D0();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_image] = 0;
  v12 = [objc_allocWithZone(CALayer) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_imageLayer] = v12;
  v13 = [objc_allocWithZone(CAGradientLayer) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_gradientLayer] = v13;
  v33.receiver = v4;
  v33.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  [v14 setClipsToBounds:1];
  v15 = OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_imageLayer;
  [*&v14[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_imageLayer] setMasksToBounds:1];
  LODWORD(v16) = 1053609165;
  [*&v14[v15] setOpacity:v16];
  v17 = *&v14[v15];
  CATransform3DMakeRotation(&v32, -0.523598776, 0.0, 0.0, 1.0);
  [v17 setTransform:&v32];

  v18 = [v14 layer];
  [v18 addSublayer:*&v14[v15]];

  v19 = OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_gradientLayer;
  v20 = *&v14[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_gradientLayer];
  sub_BD88(&qword_941C10);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_77E280;
  sub_396E8();
  v22 = v20;
  isa = sub_76A120(0.0, 0.0, 0.0, 0.0).super.isa;
  v24 = [(objc_class *)isa CGColor];

  type metadata accessor for CGColor(0);
  v26 = v25;
  *(v21 + 56) = v25;
  *(v21 + 32) = v24;
  v27 = sub_76A120(0.47451, 0.47451, 0.47451, 0.5).super.isa;
  v28 = [(objc_class *)v27 CGColor];

  *(v21 + 88) = v26;
  *(v21 + 64) = v28;
  v29 = sub_769450().super.isa;

  [v22 setColors:v29];

  [*&v14[v19] setStartPoint:{0.5, 0.0}];
  [*&v14[v19] setEndPoint:{0.5, 1.0}];
  v30 = [v14 layer];

  [v30 addSublayer:*&v14[v19]];
  return v14;
}

id sub_632720()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_imageLayer];
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_image];
  if (v2 && (v3 = [v2 CGImage]) != 0)
  {
    v6 = v3;
    type metadata accessor for CGImage(0);
    v4 = sub_76A930();
  }

  else
  {
    v4 = 0;
  }

  [v1 setContents:v4];
  swift_unknownObjectRelease();
  return [v0 setNeedsLayout];
}

id sub_6327D8()
{
  ObjectType = swift_getObjectType();
  v2 = sub_7593D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = sub_BD88(&qword_94A330);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_7652D0();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33.receiver = v0;
  v33.super_class = ObjectType;
  objc_msgSendSuper2(&v33, "layoutSubviews", v14);
  [v0 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_gradientLayer] setFrame:?];
  if (!*&v0[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_image])
  {
    return [*&v0[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_imageLayer] setFrame:{0.0, 0.0, 0.0, 0.0}];
  }

  v25 = objc_opt_self();
  [v25 begin];
  v32 = v25;
  [v25 setDisableActions:1];
  v26 = OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_style;
  swift_beginAccess();
  sub_632E8C(&v0[v26], v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_632EFC(v11);
    v27 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_imageLayer];
    [v27 setContinuousCorners:0];
    [v27 setCornerRadius:0.0];
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v27 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_imageLayer];
    sub_765270();
    (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
    v29 = sub_7593C0();
    v30 = *(v3 + 8);
    v30(v5, v2);
    v30(v8, v2);
    [v27 setContinuousCorners:v29 & 1];
    sub_7652A0();
    [v27 setCornerRadius:?];
    (*(v13 + 8))(v16, v12);
  }

  [v27 setBounds:{0.0, 0.0, 230.0, 230.0}];
  v34.origin.x = v18;
  v34.origin.y = v20;
  v34.size.width = v22;
  v34.size.height = v24;
  v31 = CGRectGetMaxX(v34) + -115.0 + 79.0;
  v35.origin.x = v18;
  v35.origin.y = v20;
  v35.size.width = v22;
  v35.size.height = v24;
  [v27 setPosition:{v31, CGRectGetMinY(v35) + 115.0 + 13.0}];
  return [v32 commit];
}

uint64_t type metadata accessor for BrandedAppTodayCardNoArtBackgroundView()
{
  result = qword_95F5B0;
  if (!qword_95F5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_632D8C()
{
  sub_632E34();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_632E34()
{
  if (!qword_95F5C0)
  {
    sub_7652D0();
    v0 = sub_76A480();
    if (!v1)
    {
      atomic_store(v0, &qword_95F5C0);
    }
  }
}

uint64_t sub_632E8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_94A330);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_632EFC(uint64_t a1)
{
  v2 = sub_BD88(&qword_94A330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_632F64(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_appPromotionCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_6360F0(&qword_93F500, type metadata accessor for VideoView);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView];
    sub_BE70(0, &qword_93E550);
    v8 = v7;
    v9 = sub_76A1C0();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

id sub_6331F8()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_longPressGestureRecognizer] removeTarget:v0 action:0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for AppPromotionView()
{
  result = qword_95F610;
  if (!qword_95F610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_633398(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_appPromotionCardView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_6333FC;
}

void sub_6333FC(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_216B98();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [*&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkView]];
      [v2 setNeedsLayout];
    }

    v7 = v3;
  }

  else
  {
    v7 = *a1;
    sub_216B98();
    swift_unknownObjectWeakAssign();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      goto LABEL_8;
    }

    v3 = v6;
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView] insertSubview:v6 aboveSubview:*&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkView]];
    [v2 setNeedsLayout];
  }

LABEL_8:
}

void sub_633524()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  sub_75D650();
  if (!CGRectIsEmpty(v17))
  {
    v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_availabilityLabelView];
    sub_75D650();
    v3 = v2;
    v5 = v4;
    sub_26DAA8(v15);
    sub_270D88(v0, v15, v3, v5);
    sub_37538(v15);
    sub_75D650();
    CGRectGetMinX(v18);
    sub_75D650();
    CGRectGetMinY(v19);
    sub_75D650();
    sub_769D20();
    [v1 setFrame:?];
    v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_appPromotionCardView];
    v7 = [v6 superview];
    if (v7)
    {
      v8 = v7;
      sub_BE70(0, &qword_93E550);
      v9 = v0;
      v10 = sub_76A1C0();

      if (v10)
      {
        [v1 frame];
        MaxY = CGRectGetMaxY(v20);
        sub_75D650();
        v12 = CGRectGetHeight(v21) - MaxY;
        sub_75D650();
        [v6 setBounds:{0.0, 0.0, CGRectGetWidth(v22), v12}];
        [v1 frame];
        v13 = CGRectGetMaxY(v23);
        sub_75D650();
        v14 = CGRectGetHeight(v24) - v13;
        [v9 bounds];
        [v6 setCenter:{CGRectGetWidth(v25) * 0.5, v13 + v14 * 0.5}];
      }
    }
  }
}

void sub_6338CC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v4 - 8);
  v6 = v60 - v5;
  v7 = sub_BD88(&qword_94EC40);
  __chkstk_darwin(v7 - 8);
  v9 = v60 - v8;
  v10 = sub_BD88(&unk_950960);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v60 - v12;
  sub_BE70(0, &qword_94AB00);
  v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_longPressGestureRecognizer];
  if ((sub_76A1C0() & 1) == 0)
  {
    return;
  }

  v61 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_appPromotionCardView];
  v15 = [v61 superview];
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v17 = sub_BE70(0, &qword_93E550);
  v18 = v2;
  v60[1] = v17;
  LOBYTE(v17) = sub_76A1C0();

  if ((v17 & 1) == 0)
  {
    return;
  }

  v19 = [a1 state];
  if (v19 > 3)
  {
    if ((v19 - 4) >= 2)
    {
      return;
    }

    v23 = [v61 superview];
    if (!v23)
    {
      return;
    }

    v24 = v23;
    v25 = v18;
    v26 = sub_76A1C0();

    if ((v26 & 1) == 0)
    {
      return;
    }

    v27 = objc_opt_self();
    v28 = swift_allocObject();
    *(v28 + 16) = v25;
    *(v28 + 24) = 0x3FF0000000000000;
    v67 = sub_636464;
    v68 = v28;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v65 = sub_23F0CC;
    v66 = &unk_89B008;
    v29 = _Block_copy(&aBlock);
    v30 = v25;

    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = v30;
    v67 = sub_63647C;
    v68 = v31;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v32 = &unk_89B058;
LABEL_30:
    v65 = sub_3D6D80;
    v66 = v32;
    v58 = _Block_copy(&aBlock);
    v59 = v30;

    [v27 _animateUsingDefaultDampedSpringWithDelay:135 initialSpringVelocity:v29 options:v58 animations:0.0 completion:1.0];
    _Block_release(v58);
    _Block_release(v29);
    return;
  }

  if (v19 == &dword_0 + 1)
  {
    v33 = v61;
    [a1 locationInView:v61];
    v34 = v18 + OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_initialLongPressLocation;
    *v34 = v35;
    *(v34 + 1) = v36;
    v34[16] = 0;
    v37 = [v33 superview];
    if (!v37)
    {
      return;
    }

    v38 = v37;
    v39 = v18;
    v40 = sub_76A1C0();

    if ((v40 & 1) == 0)
    {
      return;
    }

    v27 = objc_opt_self();
    v41 = swift_allocObject();
    *(v41 + 16) = v39;
    *(v41 + 24) = 0x3FEEB851EB851EB8;
    v67 = sub_636464;
    v68 = v41;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v65 = sub_23F0CC;
    v66 = &unk_89B0A8;
    v29 = _Block_copy(&aBlock);
    v30 = v39;

    v42 = swift_allocObject();
    *(v42 + 16) = 1;
    *(v42 + 24) = v30;
    v67 = sub_63647C;
    v68 = v42;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v32 = &unk_89B0F8;
    goto LABEL_30;
  }

  if (v19 == &dword_0 + 2)
  {
    [a1 locationInView:v61];
    v45 = (v18 + OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_initialLongPressLocation);
    if (*(v18 + OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_initialLongPressLocation + 16))
    {
      *v45 = v43;
      v45[1] = v44;
      *(v45 + 16) = 0;
    }

    else
    {
      v46 = sqrt((v44 - v45[1]) * (v44 - v45[1]) + (v43 - *v45) * (v43 - *v45));
      [v14 allowableMovement];
      if (v47 < v46)
      {

        [a1 setEnabled:0];
      }
    }

    return;
  }

  if (v19 != &dword_0 + 3)
  {
    return;
  }

  v20 = OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_clickAction;
  swift_beginAccess();
  sub_1ED18(v18 + v20, v9, &qword_94EC40);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v21 = &qword_94EC40;
    v22 = v9;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_75B470();
    v66 = ObjectType;
    aBlock = v18;
    v48 = v18;
    sub_764C00();

    sub_75B460();
    v49 = sub_BD88(&unk_93F630);
    sub_768860();

    v50 = *(v49 - 8);
    if ((*(v50 + 48))(v6, 1, v49) != 1)
    {
      sub_75B470();
      v51 = sub_75B460();
      sub_32A6C0(aBlock, 1, v51, v6);

      (*(v11 + 8))(v13, v10);

      (*(v50 + 8))(v6, v49);
      goto LABEL_27;
    }

    (*(v11 + 8))(v13, v10);
    v21 = &unk_93F980;
    v22 = v6;
  }

  sub_10A2C(v22, v21);
LABEL_27:
  v52 = [v61 superview];
  if (v52)
  {
    v53 = v52;
    v54 = v18;
    v55 = sub_76A1C0();

    if (v55)
    {
      v27 = objc_opt_self();
      v56 = swift_allocObject();
      *(v56 + 16) = v54;
      *(v56 + 24) = 0x3FF0000000000000;
      v67 = sub_636170;
      v68 = v56;
      aBlock = _NSConcreteStackBlock;
      v64 = 1107296256;
      v65 = sub_23F0CC;
      v66 = &unk_89AF68;
      v29 = _Block_copy(&aBlock);
      v30 = v54;

      v57 = swift_allocObject();
      *(v57 + 16) = 0;
      *(v57 + 24) = v30;
      v67 = sub_636194;
      v68 = v57;
      aBlock = _NSConcreteStackBlock;
      v64 = 1107296256;
      v32 = &unk_89AFB8;
      goto LABEL_30;
    }
  }
}

id sub_6342C4(uint64_t a1, CGFloat a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_appPromotionCardView);
  CGAffineTransformMakeScale(&v4, a2, a2);
  return [v2 setTransform:&v4];
}

uint64_t sub_634324(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_BD88(&qword_94EC40);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  sub_BE70(0, &qword_94AB00);
  if ((sub_76A1C0() & 1) == 0)
  {
    return 1;
  }

  v8 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_appPromotionCardView];
  v9 = OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupContainerView;
  [a2 locationInView:*(v8 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupContainerView)];
  v11 = v10;
  v13 = v12;
  [*(v8 + v9) bounds];
  v25.x = v11;
  v25.y = v13;
  if (CGRectContainsPoint(v27, v25))
  {
    return 0;
  }

  [a2 locationInView:v2];
  v16 = v15;
  v18 = v17;
  v19 = [v2 hitTest:0 withEvent:?];
  [v3 bounds];
  v26.x = v16;
  v26.y = v18;
  if (CGRectContainsPoint(v28, v26))
  {
    if (v19)
    {
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();

      if (v20)
      {
        return 0;
      }
    }

    v21 = OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_clickAction;
    swift_beginAccess();
    sub_1ED18(&v3[v21], v7, &qword_94EC40);
    v22 = sub_BD88(&unk_950960);
    v23 = (*(*(v22 - 8) + 48))(v7, 1, v22) != 1;
    sub_10A2C(v7, &qword_94EC40);
    return v23;
  }

  else
  {

    return 0;
  }
}

void sub_634604()
{
  sub_2F1CA0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t (*sub_6346D4(uint64_t **a1))()
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
  v2[4] = sub_633398(v2);
  return sub_21028;
}

double sub_634758()
{
  [*(*v0 + OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_availabilityLabelView) frame];
  CGRectGetMaxY(v2);
  sub_75D650();
  CGRectGetHeight(v3);
  sub_75D650();
  CGRectGetWidth(v4);
  return 0.0;
}

CGFloat sub_6347D0()
{
  v1 = *v0;
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_availabilityLabelView] frame];
  CGRectGetMaxY(v3);
  sub_75D650();
  CGRectGetHeight(v4);
  [v1 bounds];
  return CGRectGetWidth(v5) * 0.5;
}

uint64_t sub_63487C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_6360F0(&unk_95F630, type metadata accessor for AppPromotionView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_6348F0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_6360F0(&unk_95F630, type metadata accessor for AppPromotionView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_63497C(uint64_t *a1))()
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
  sub_6360F0(&unk_95F630, type metadata accessor for AppPromotionView);
  *(v3 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_634A38(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_appPromotionCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView);
  sub_BE70(0, &qword_93E550);
  v6 = v5;
  v7 = sub_76A1C0();

  return v7 & 1;
}

double sub_634BBC(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v24 = sub_7671B0();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_766C30();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_766C50();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for StackMeasurable.Axis.vertical(_:), v6, v12);
  sub_BD88(&qword_941B30);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_77E280;
  sub_134D8(a1, v31);
  v16 = sub_767170();
  *(v15 + 56) = v16;
  *(v15 + 64) = &protocol witness table for VerticalSpaceMeasurable;
  sub_B1B4((v15 + 32));
  sub_767180();
  sub_134D8(a1 + 40, v31);
  *(v15 + 96) = v16;
  *(v15 + 104) = &protocol witness table for VerticalSpaceMeasurable;
  sub_B1B4((v15 + 72));
  sub_767180();
  sub_766C40();
  v31[3] = v10;
  v31[4] = &protocol witness table for StackMeasurable;
  v17 = sub_B1B4(v31);
  (*(v11 + 16))(v17, v14, v10);
  v18 = *(a1 + 136);
  v29 = &type metadata for CGFloat;
  v30 = &protocol witness table for CGFloat;
  v28 = v18;
  v19 = *(a1 + 152);
  v26 = &type metadata for CGFloat;
  v27 = &protocol witness table for CGFloat;
  v25 = v19;
  sub_7671A0();
  sub_767190();
  v21 = v20;
  (*(v3 + 8))(v5, v24);
  (*(v11 + 8))(v14, v10);
  return v21;
}

double sub_634F2C(void *a1, void *a2)
{
  v107 = sub_76A920();
  v105 = *(v107 - 8);
  __chkstk_darwin(v107);
  v104 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_766C30();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v110 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_766C50();
  v114 = *(v115 - 1);
  __chkstk_darwin(v115);
  v113 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_767170();
  v106 = *(v109 - 8);
  __chkstk_darwin(v109);
  v102 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v103 = &v94 - v9;
  v101 = sub_75D850();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v98 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v99 = &v94 - v12;
  __chkstk_darwin(v13);
  v97 = &v94 - v14;
  __chkstk_darwin(v15);
  v17 = &v94 - v16;
  v18 = sub_75CF00();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v94 - v23;
  v25 = type metadata accessor for AppPromotionCardLayout(0);
  sub_1ED18(a2 + v25[18], &v119, &unk_943B10);
  v108 = v120;
  sub_10A2C(&v119, &unk_943B10);
  v116 = a1;
  v26 = [a1 traitCollection];
  v27 = [v26 preferredContentSizeCategory];
  LOBYTE(a1) = sub_769B50();

  if (a1)
  {
    v28 = v25[13];
    v29 = v25[14];
    v30 = v25[16];
    v94 = v25[15];
    v102 = v30;
    LODWORD(v98) = *(a2 + v25[19]);
    if (qword_93C6C0 != -1)
    {
      swift_once();
    }

    v95 = (a2 + v28);
    v31 = (a2 + v29);
    v32 = sub_BE38(v18, qword_99B988);
    v99 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
    sub_766660();
    v34 = v33;
    v35 = [v116 traitCollection];
    (*(v19 + 16))(v24, v32, v18);
    v36 = sub_75CE70();
    v38 = v104;
    v96 = v31;
    if ((v39 & 1) == 0 && ((v36 | v37) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_769A00())
      {
        if (qword_93C440 != -1)
        {
          swift_once();
        }

        v40 = qword_946920;
      }

      else
      {
        if (qword_93C448 != -1)
        {
          swift_once();
        }

        v40 = qword_946938;
      }

      v50 = v101;
      v51 = sub_BE38(v101, v40);
      v52 = v100;
      v53 = v97;
      (*(v100 + 16))(v97, v51, v50);
      (*(v52 + 32))(v17, v53, v50);
      sub_75D800();
      sub_75D830();
      sub_75CE80();
      (*(v52 + 8))(v17, v50);
    }

    sub_75CDB0();
    v55 = v54;

    (*(v19 + 8))(v24, v18);
    *&v117 = _swiftEmptyArrayStorage;
    sub_BD88(&qword_941B30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_77B6D0;
    v120 = &type metadata for CGFloat;
    v121 = &protocol witness table for CGFloat;
    *&v119 = v34;
    v57 = v109;
    *(inited + 56) = v109;
    *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_B1B4((inited + 32));
    sub_767180();
    sub_109F98(inited);
    v58 = v116;
    v59 = v107;
    if (v108)
    {
      v120 = &type metadata for CGFloat;
      v121 = &protocol witness table for CGFloat;
      *&v119 = ceil(v55 + 16.0 + 16.0);
      v60 = v103;
      sub_767180();
      v61 = v117;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_7AADC(0, v61[2] + 1, 1, v61);
      }

      v63 = v61[2];
      v62 = v61[3];
      if (v63 >= v62 >> 1)
      {
        v61 = sub_7AADC((v62 > 1), v63 + 1, 1, v61);
      }

      v120 = v57;
      v121 = &protocol witness table for VerticalSpaceMeasurable;
      v64 = sub_B1B4(&v119);
      v65 = v106;
      (*(v106 + 16))(v64, v60, v57);
      v61[2] = v63 + 1;
      sub_10914(&v119, &v61[5 * v63 + 4]);
      (*(v65 + 8))(v60, v57);
      *&v117 = v61;
    }

    (*(v111 + 104))(v110, enum case for StackMeasurable.Axis.vertical(_:), v112);
    v66 = v113;
    sub_766C40();
    sub_766C20();
    v68 = v67;
    (*(v114 + 8))(v66, v115);
    sub_B170(a2, a2[3]);
    sub_33964();
    sub_766700();
    v115 = *(v105 + 8);
    v115(v38, v59);
    sub_769DA0();
    sub_B170(v95, v95[3]);
    sub_7665A0();
    v70 = v69;
    v71 = v99;
    sub_B170((a2 + *(v99 + 6)), *(a2 + *(v99 + 6) + 24));
    sub_766720();
    *&v119 = v70;
    sub_7666F0();
    sub_B170(v96, v96[3]);
    sub_7665A0();
    v73 = v72;
    sub_B170((a2 + *(v71 + 7)), *(a2 + *(v71 + 7) + 24));
    sub_766720();
    *&v119 = v73;
    sub_7666F0();
    if (v98)
    {
      sub_B170((a2 + v94), *(a2 + v94 + 24));
      v74 = v71;
      v75 = [v58 traitCollection];
      sub_7673F0();

      sub_B170((a2 + *(v74 + 8)), *(a2 + *(v74 + 8) + 24));
      v76 = [v58 traitCollection];
      sub_766710();

      sub_B170((a2 + *(v74 + 9)), *(a2 + *(v74 + 9) + 24));
      sub_33964();
      sub_766700();
      v115(v38, v107);
    }

    sub_1ED18(&v102[a2], &v117, &unk_943B10);
    if (v118)
    {
      sub_10914(&v117, &v119);
      sub_B170(&v119, v120);
      if ((sub_766540() & 1) == 0)
      {
        sub_B170(&v119, v120);
        sub_7665A0();
      }

      sub_BEB8(&v119);
    }

    else
    {
      sub_10A2C(&v117, &unk_943B10);
    }
  }

  else
  {
    if (qword_93C6B8 != -1)
    {
      swift_once();
    }

    v41 = sub_BE38(v18, qword_99B970);
    type metadata accessor for AppPromotionCardLayout.Metrics(0);
    sub_766660();
    v43 = v42;
    v44 = [v116 traitCollection];
    (*(v19 + 16))(v21, v41, v18);
    v45 = sub_75CE70();
    v47 = v109;
    if ((v48 & 1) == 0 && ((v45 | v46) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_769A00())
      {
        if (qword_93C440 != -1)
        {
          swift_once();
        }

        v49 = qword_946920;
      }

      else
      {
        if (qword_93C448 != -1)
        {
          swift_once();
        }

        v49 = qword_946938;
      }

      v77 = v101;
      v78 = sub_BE38(v101, v49);
      v79 = v100;
      v80 = v98;
      (*(v100 + 16))(v98, v78, v77);
      v81 = v99;
      (*(v79 + 32))(v99, v80, v77);
      sub_75D800();
      sub_75D830();
      sub_75CE80();
      (*(v79 + 8))(v81, v77);
    }

    sub_75CDB0();
    v83 = v82;

    (*(v19 + 8))(v21, v18);
    *&v117 = _swiftEmptyArrayStorage;
    sub_BD88(&qword_941B30);
    v84 = swift_initStackObject();
    *(v84 + 16) = xmmword_77B6D0;
    v120 = &type metadata for CGFloat;
    v121 = &protocol witness table for CGFloat;
    *&v119 = v43;
    *(v84 + 56) = v47;
    *(v84 + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_B1B4((v84 + 32));
    sub_767180();
    sub_109F98(v84);
    if (v108)
    {
      v120 = &type metadata for CGFloat;
      v121 = &protocol witness table for CGFloat;
      *&v119 = ceil(v83 + 4.0 + 4.0);
      v85 = v102;
      sub_767180();
      v86 = v117;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = sub_7AADC(0, v86[2] + 1, 1, v86);
      }

      v88 = v86[2];
      v87 = v86[3];
      if (v88 >= v87 >> 1)
      {
        v86 = sub_7AADC((v87 > 1), v88 + 1, 1, v86);
      }

      v120 = v47;
      v121 = &protocol witness table for VerticalSpaceMeasurable;
      v89 = sub_B1B4(&v119);
      v90 = v106;
      (*(v106 + 16))(v89, v85, v47);
      v86[2] = v88 + 1;
      sub_10914(&v119, &v86[5 * v88 + 4]);
      (*(v90 + 8))(v85, v47);
      *&v117 = v86;
    }

    (*(v111 + 104))(v110, enum case for StackMeasurable.Axis.vertical(_:), v112);
    v91 = v113;
    sub_766C40();
    sub_766C20();
    v68 = v92;
    (*(v114 + 8))(v91, v115);
  }

  return v68;
}

uint64_t sub_6360F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_636138()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_63617C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_636198()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_6361D0()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    return [*(*(v0 + 24) + OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_longPressGestureRecognizer) setEnabled:1];
  }

  return result;
}

char *sub_6361FC()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_clickAction;
  v3 = sub_BD88(&unk_950960);
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = &v0[OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_initialLongPressLocation];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_availabilityLabelView] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_appPromotionCardView] = [objc_allocWithZone(type metadata accessor for AppPromotionCardView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_longPressGestureRecognizer] = v5;
  v14.receiver = v0;
  v14.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v14, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v10 = v6;
  [v10 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v10 setClipsToBounds:0];
  [v10 addSubview:*&v10[OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_availabilityLabelView]];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_appPromotionCardView;
  [v10 addSubview:*&v10[OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_appPromotionCardView]];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_longPressGestureRecognizer;
  [*&v10[OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_longPressGestureRecognizer] addTarget:v10 action:"stateChangedFor:"];
  [*&v10[v12] setMinimumPressDuration:0.1];
  [*&v10[v12] setDelegate:v10];
  [*&v10[v11] addGestureRecognizer:*&v10[v12]];

  return v10;
}

id sub_636480()
{
  v1 = sub_75B270();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v17[-v6];
  v8 = sub_75B220();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 104))(v12, enum case for BreakoutDetails.TextAlignment.center(_:), v8, v10);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailTextAlignment;
  swift_beginAccess();
  (*(v9 + 40))(v0 + v13, v12, v8);
  swift_endAccess();
  (*(v2 + 104))(v7, enum case for BreakoutDetails.Badge.none(_:), v1);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badge;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v14, v1);
  swift_beginAccess();
  (*(v2 + 24))(v0 + v14, v7, v1);
  swift_endAccess();
  sub_63979C();
  v15 = *(v2 + 8);
  v15(v4, v1);
  v15(v7, v1);
  [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_titleLabel) setText:0];
  [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_descriptionLabel) setText:0];
  return [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButton) setTitle:0 forState:0];
}

uint64_t sub_636764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v31 = a3;
  v5 = sub_BD88(&qword_94CB98);
  __chkstk_darwin(v5 - 8);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  v10 = sub_BD88(&qword_944EA0);
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_BD88(&unk_95CF90);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v29 - v18;
  sub_1ED18(a1, v12, &qword_944EA0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10A2C(v12, &qword_944EA0);
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    (*(v14 + 16))(v16, v19, v13);
    v20 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_config;
    swift_beginAccess();
    (*(v14 + 24))(v3 + v20, v16, v13);
    swift_endAccess();
    sub_6385E0();
    v21 = *(v14 + 8);
    v21(v16, v13);
    v21(v19, v13);
  }

  v22 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailTextAlignment;
  swift_beginAccess();
  v23 = sub_75B220();
  (*(*(v23 - 8) + 24))(v3 + v22, v30, v23);
  swift_endAccess();
  v24 = sub_75B240();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v9, v31, v24);
  (*(v25 + 56))(v9, 0, 1, v24);
  v26 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  v27 = v32;
  sub_1ED18(v3 + v26, v32, &qword_94CB98);
  swift_beginAccess();
  sub_63D2B4(v9, v3 + v26);
  swift_endAccess();
  sub_63B538(v27);
  sub_10A2C(v27, &qword_94CB98);
  sub_10A2C(v9, &qword_94CB98);
  sub_6385E0();
  return sub_63A390();
}

uint64_t sub_636B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v3 - 8);
  v72 = &v58 - v4;
  v5 = sub_7666D0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v67 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v66 = &v58 - v9;
  __chkstk_darwin(v10);
  v65 = &v58 - v11;
  v12 = sub_75F0F0();
  v75 = *(v12 - 8);
  v76 = v12;
  __chkstk_darwin(v12);
  v73 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v74 = &v58 - v15;
  v16 = sub_7664A0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for BreakoutDetailsView.Config(0);
  v80 = v5;
  v81 = v20;
  v21 = *(a1 + *(v20 + 92));
  v68 = v6;
  v22 = v20;
  v23 = *(v20 + 40);
  if (v21)
  {
    v24 = *(v6 + 16);
    v79 = v6 + 16;
    v70 = v24;
    v24(v19, a1 + v23, v5);
    LODWORD(v69) = enum case for FontSource.useCase(_:);
    v64 = v17[13];
    v62 = v16;
    v64(v19);
    v63 = sub_761250();
    v96 = v63;
    v71 = sub_63D8C0(&qword_95F820, &type metadata accessor for CappedSizeStaticDimension);
    v97 = v71;
    sub_B1B4(v95);
    v78 = v17 + 13;
    v61 = v21;
    sub_761240();
    v25 = v70;
    v70(v19, a1 + v22[13], v80);
    v26 = v22;
    v27 = v69;
    v28 = v64;
    (v64)(v19, v69, v16);
    v29 = v63;
    v93 = v63;
    v94 = v71;
    sub_B1B4(v92);
    v30 = v61;
    sub_761240();
    v25(v19, a1 + v26[9], v80);
    v31 = v62;
    v28(v19, v27, v62);
    v32 = v71;
    v90 = v29;
    v91 = v71;
    sub_B1B4(v89);
    v33 = v30;
    v34 = v80;
    sub_761240();
    v70(v19, a1 + v26[14], v34);
    v28(v19, v69, v31);
    v87 = v29;
    v88 = v32;
    sub_B1B4(v86);
    sub_761240();
  }

  else
  {
    v79 = a1;
    v35 = *(v6 + 16);
    v70 = (v6 + 16);
    v63 = v35;
    v35(v19, a1 + v23, v5);
    LODWORD(v71) = enum case for FontSource.useCase(_:);
    v36 = v17[13];
    v61 = v17 + 13;
    v37 = v16;
    v36(v19);
    v60 = sub_766CA0();
    v96 = v60;
    v97 = &protocol witness table for StaticDimension;
    sub_B1B4(v95);
    v93 = v16;
    v94 = &protocol witness table for FontSource;
    v38 = sub_B1B4(v92);
    v39 = v17[2];
    v69 = v17 + 2;
    v39(v38, v19, v37);
    v58 = v39;
    sub_766CB0();
    v40 = v17[1];
    v78 = v17 + 1;
    v64 = v40;
    (v40)(v19, v37);
    v41 = v63;
    v63(v19, v79 + v22[13], v80);
    v59 = v36;
    (v36)(v19, v71, v37);
    v42 = v60;
    v93 = v60;
    v94 = &protocol witness table for StaticDimension;
    sub_B1B4(v92);
    v90 = v37;
    v91 = &protocol witness table for FontSource;
    v43 = sub_B1B4(v89);
    v39(v43, v19, v37);
    sub_766CB0();
    (v64)(v19, v37);
    v41(v19, v79 + v22[9], v80);
    (v36)(v19, v71, v37);
    v90 = v42;
    v91 = &protocol witness table for StaticDimension;
    sub_B1B4(v89);
    v87 = v37;
    v88 = &protocol witness table for FontSource;
    v44 = sub_B1B4(v86);
    v45 = v58;
    v58(v44, v19, v37);
    sub_766CB0();
    v46 = v64;
    (v64)(v19, v37);
    v63(v19, v79 + v22[14], v80);
    a1 = v79;
    (v59)(v19, v71, v37);
    v87 = v60;
    v88 = &protocol witness table for StaticDimension;
    sub_B1B4(v86);
    v85[3] = v37;
    v85[4] = &protocol witness table for FontSource;
    v47 = sub_B1B4(v85);
    v45(v47, v19, v37);
    sub_766CB0();
    v46(v19, v37);
    v34 = v80;
  }

  v48 = v72;
  if ((*(a1 + v81[11] + 8) & 1) == 0)
  {
    sub_1ED18(a1 + v81[12], v72, &unk_93E530);
    v49 = v68;
    if ((*(v68 + 48))(v48, 1, v34) != 1)
    {
      v52 = v65;
      (*(v49 + 32))(v65, v48, v34);
      v53 = *(v49 + 16);
      v53(v66, a1 + v81[10], v34);
      v53(v67, v52, v34);
      v51 = v74;
      sub_75F0E0();
      (*(v49 + 8))(v52, v34);
      v50 = &enum case for BreakoutDetailsLayout.Metrics.TitleTextBehavior.lineCountCompression(_:);
      goto LABEL_9;
    }

    sub_10A2C(v48, &unk_93E530);
  }

  v50 = &enum case for BreakoutDetailsLayout.Metrics.TitleTextBehavior.standard(_:);
  v51 = v74;
LABEL_9:
  v55 = v75;
  v54 = v76;
  (*(v75 + 104))(v51, *v50, v76);
  sub_134D8(v95, v85);
  (*(v55 + 16))(v73, v51, v54);
  sub_134D8(v92, &v84);
  sub_134D8(v89, &v83);
  v56 = *(a1 + v81[15]);
  v82[8] = &type metadata for CGFloat;
  v82[9] = &protocol witness table for CGFloat;
  v82[5] = v56;
  sub_134D8(v86, v82);
  sub_75F0D0();
  (*(v55 + 8))(v51, v54);
  sub_BEB8(v86);
  sub_BEB8(v89);
  sub_BEB8(v92);
  return sub_BEB8(v95);
}

uint64_t sub_637660(uint64_t a1, uint64_t *a2)
{
  v3 = sub_BD88(&qword_95F7F8);
  sub_161DC(v3, a2);
  sub_BE38(v3, a2);
  sub_BD88(&qword_93FBE0);
  type metadata accessor for ContentHorizontalAlignment(0);
  return sub_7592C0();
}

char *sub_637704(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v122 = sub_75D5E0();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_768C60();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v6 - 8);
  v8 = &v102 - v7;
  v9 = sub_760AD0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v124 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v131 = &v102 - v13;
  v14 = sub_7666D0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badge;
  v19 = enum case for BreakoutDetails.Badge.none(_:);
  v20 = sub_75B270();
  (*(*(v20 - 8) + 104))(&v2[v18], v19, v20);
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark] = 0;
  v21 = &v2[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButtonHandler];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailTextAlignment;
  v23 = enum case for BreakoutDetails.TextAlignment.leading(_:);
  v24 = sub_75B220();
  (*(*(v24 - 8) + 104))(&v2[v22], v23, v24);
  v25 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailBackgroundStyle;
  v26 = sub_75B240();
  (*(*(v26 - 8) + 56))(&v2[v25], 1, 1, v26);
  v27 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_config;
  v28 = sub_BD88(&unk_95CF90);
  v118 = *(v28 - 8);
  v29 = *(v118 + 16);
  v125 = v2;
  v123 = a1;
  v119 = v28;
  v29(&v2[v27], a1);
  if (qword_93DAE8 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v14, qword_99F8B0);
  v31 = *(v15 + 16);
  v32 = v17;
  v130 = v17;
  v31(v17, v30, v14);
  v128 = v31;
  v33 = v14;
  v34 = enum case for DirectionalTextAlignment.none(_:);
  v35 = v10;
  v126 = v15;
  v127 = v10;
  v36 = *(v10 + 104);
  (v36)(v131, enum case for DirectionalTextAlignment.none(_:), v9);
  v108 = type metadata accessor for CappedSizeDynamicTypeLabel();
  v110 = objc_allocWithZone(v108);
  *&v110[qword_94B338] = 0;
  v31(v8, v32, v33);
  v37 = *(v15 + 56);
  v37(v8, 0, 1, v33);
  v38 = v124;
  v113 = v34;
  v39 = v34;
  v40 = v33;
  v112 = v35 + 104;
  v111 = v36;
  (v36)(v124, v39, v9);
  v41 = v38;
  v42 = sub_75BB10();
  v43 = v130;
  v129 = v15 + 16;
  v128(v8, v130, v40);
  v110 = (v15 + 56);
  v109 = v37;
  v37(v8, 0, 1, v40);
  v44 = v42;
  v103 = v8;
  sub_75BA40();
  v45 = v43;
  sub_75BA20();
  [v44 setNumberOfLines:2];
  v46 = v127;
  v47 = *(v127 + 16);
  v48 = v131;
  v107 = v127 + 16;
  v106 = v47;
  v47(v41, v131, v9);
  sub_75BA90();

  v49 = *(v46 + 8);
  v127 = v46 + 8;
  v105 = v49;
  v49(v48, v9);
  v50 = *(v126 + 8);
  v126 += 8;
  v104 = v50;
  v50(v45, v40);
  *&v125[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_titleLabel] = v44;
  if (qword_93DB08 != -1)
  {
    swift_once();
  }

  v51 = sub_BE38(v40, qword_99F910);
  v52 = v128;
  v128(v45, v51, v40);
  v53 = v113;
  v54 = v111;
  (v111)(v131, v113, v9);
  v55 = objc_allocWithZone(v108);
  *&v55[qword_94B338] = 0;
  v56 = v103;
  v52(v103, v130, v40);
  v57 = v109;
  v109(v56, 0, 1, v40);
  v58 = v9;
  v59 = v124;
  v60 = v53;
  v61 = v58;
  v54(v124, v60);
  v62 = sub_75BB10();
  v52(v56, v130, v40);
  v63 = v130;
  v57(v56, 0, 1, v40);
  v64 = v62;
  sub_75BA40();
  sub_75BA20();
  [v64 setNumberOfLines:2];
  v65 = v131;
  v106(v59, v131, v61);
  sub_75BA90();

  v105(v65, v61);
  v104(v63, v40);
  v66 = v125;
  *&v125[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_descriptionLabel] = v64;
  v67 = [objc_opt_self() effectWithStyle:17];
  v68 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v67];

  *&v66[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_backgroundMaterialView] = v68;
  type metadata accessor for CappedSizeDynamicTypeButton();
  if (qword_93DB10 != -1)
  {
    swift_once();
  }

  v69 = sub_BE38(v40, qword_99F928);
  v128(v63, v69, v40);
  *&v66[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButton] = sub_75C550();
  v136.receiver = v66;
  v136.super_class = ObjectType;
  v70 = objc_msgSendSuper2(&v136, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v70 setUserInteractionEnabled:0];
  [v70 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v70 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_6385E0();
  v74 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_titleLabel;
  v75 = *&v70[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_titleLabel];
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v76 = v75;
  v77 = v115;
  sub_768C10();
  sub_10A2C(&v132, &unk_93FBD0);
  sub_10A2C(&v134, &unk_93FBD0);
  sub_769E70();

  v78 = *(v116 + 8);
  v79 = v117;
  v78(v77, v117);
  v80 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_descriptionLabel;
  v81 = *&v70[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_descriptionLabel];
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v82 = v81;
  sub_768C10();
  sub_10A2C(&v132, &unk_93FBD0);
  sub_10A2C(&v134, &unk_93FBD0);
  sub_769E70();

  v78(v77, v79);
  v83 = *&v70[v74];
  sub_75BAD0();

  v84 = *&v70[v80];
  sub_75BAD0();

  [*&v70[v74] setLineBreakMode:0];
  [*&v70[v80] setLineBreakMode:0];
  v85 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButton;
  [*&v70[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButton] _setWantsAccessibilityUnderline:0];
  v86 = *&v70[v85];
  v87 = objc_opt_self();
  v88 = v86;
  v89 = [v87 whiteColor];
  [v88 setTitleColor:v89 forState:0];

  v90 = *&v70[v85];
  v91 = [v87 whiteColor];
  [v90 setTitleColor:v91 forState:1];

  v92 = *&v70[v85];
  v93 = [v87 whiteColor];
  [v92 setTintColor:v93];

  v94 = *&v70[v85];
  (*(v121 + 104))(v120, enum case for ImageAlignedButton.ImageAlignment.trailing(_:), v122);
  v95 = v94;
  sub_75D5F0();

  v96 = *&v70[v85];
  sub_75D620();

  v97 = [*&v70[v85] titleLabel];
  [v97 setLineBreakMode:0];

  [*&v70[v85] addTarget:v70 action:"didTapActionButton" forControlEvents:64];
  v98 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_backgroundMaterialView;
  v99 = *&v70[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_backgroundMaterialView];
  v100 = sub_769210();
  [v99 _setGroupName:v100];

  [*&v70[v98] _setContinuousCornerRadius:20.0];
  [*&v70[v98] setClipsToBounds:1];
  [*&v70[v98] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [*&v70[v98] setEdgesInsettingLayoutMarginsFromSafeArea:0];

  (*(v118 + 8))(v123, v119);
  return v70;
}

uint64_t sub_6385E0()
{
  v1 = v0;
  v2 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v2 - 8);
  v103 = &v98 - v3;
  v4 = sub_75B240();
  v104 = *(v4 - 8);
  __chkstk_darwin(v4);
  v101 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v99 = &v98 - v7;
  __chkstk_darwin(v8);
  v100 = &v98 - v9;
  __chkstk_darwin(v10);
  v105 = &v98 - v11;
  __chkstk_darwin(v12);
  v14 = &v98 - v13;
  v15 = sub_BD88(&unk_95CF90);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v98 - v17;
  v19 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v19);
  v21 = (&v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_config;
  swift_beginAccess();
  (*(v16 + 16))(v18, v1 + v22, v15);
  v107 = v1;
  sub_7592B0();
  (*(v16 + 8))(v18, v15);
  v23 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark);
  v24 = &selRef_setTextAlignment_;
  if (v23)
  {
    v25 = *v21;
    if (*v21)
    {
      v26 = v23;
      v27 = v25;
    }

    else
    {
      v28 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailBackgroundStyle;
      swift_beginAccess();
      v29 = v104;
      if ((*(v104 + 48))(v1 + v28, 1, v4))
      {
        v26 = v23;
        v27 = 0;
      }

      else
      {
        (*(v29 + 16))(v14, v1 + v28, v4);
        v26 = v23;
        v27 = sub_655F9C();
        (*(v29 + 8))(v14, v4);
      }
    }

    v30 = v25;
    [v26 setTintColor:v27];
  }

  v31 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel;
  v32 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel);
  if (v32)
  {
    v33 = *v21;
    if (*v21)
    {
      v34 = v32;
      v35 = v33;
    }

    else
    {
      v36 = v14;
      v37 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailBackgroundStyle;
      swift_beginAccess();
      v38 = v104;
      if ((*(v104 + 48))(v1 + v37, 1, v4))
      {
        v34 = v32;
        v35 = 0;
        v14 = v36;
      }

      else
      {
        (*(v38 + 16))(v36, v1 + v37, v4);
        v34 = v32;
        v35 = sub_655F9C();
        v39 = v38;
        v14 = v36;
        (*(v39 + 8))(v36, v4);
      }

      v24 = &selRef_setTextAlignment_;
    }

    v40 = v33;
    [v34 setTextColor:v35];
  }

  v106 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_titleLabel);
  v41 = v21[1];
  isa = v41;
  v102 = v31;
  if (!v41)
  {
    v43 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailBackgroundStyle;
    swift_beginAccess();
    if (!(*(v104 + 48))(v1 + v43, 1, v4))
    {
      v98 = v14;
      v44 = v104;
      v45 = *(v104 + 16);
      v46 = v1 + v43;
      v47 = v105;
      v45(v105, v46, v4);
      v48 = v100;
      v45(v100, v47, v4);
      v49 = (*(v44 + 88))(v48, v4);
      v50 = (v44 + 8);
      if (v49 == enum case for BreakoutDetails.BackgroundStyle.material(_:) || (v51 = v49, v49 == enum case for BreakoutDetails.BackgroundStyle.dark(_:)))
      {
        isa = [objc_opt_self() whiteColor];
        (*v50)(v105, v4);
      }

      else
      {
        v52 = enum case for BreakoutDetails.BackgroundStyle.light(_:);
        sub_396E8();
        isa = sub_76A120(0.18824, 0.18824, 0.2, 1.0).super.isa;
        v53 = *v50;
        (*v50)(v105, v4);
        if (v51 != v52)
        {
          v53(v100, v4);
        }
      }

      v31 = v102;
      v14 = v98;
      v24 = &selRef_setTextAlignment_;
    }
  }

  v54 = v41;
  [v106 setTextColor:isa];

  v105 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_descriptionLabel);
  v55 = v21[2];
  v56 = v55;
  if (!v55)
  {
    v57 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailBackgroundStyle;
    swift_beginAccess();
    if (!(*(v104 + 48))(v1 + v57, 1, v4))
    {
      v58 = v14;
      v59 = v104;
      (*(v104 + 16))(v58, v1 + v57, v4);
      v56 = sub_655B6C();
      v60 = v58;
      v24 = &selRef_setTextAlignment_;
      (*(v59 + 8))(v60, v4);
    }
  }

  v61 = v55;
  [v105 setTextColor:v56];

  v62 = v21[3];
  v63 = v62;
  if (!v62)
  {
    v64 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailBackgroundStyle;
    swift_beginAccess();
    if (!(*(v104 + 48))(v1 + v64, 1, v4))
    {
      v65 = v104;
      v66 = *(v104 + 16);
      v67 = v1 + v64;
      v68 = v99;
      v66(v99, v67, v4);
      v69 = v101;
      v66(v101, v68, v4);
      v70 = (*(v65 + 88))(v69, v4);
      v71 = (v65 + 8);
      if (v70 == enum case for BreakoutDetails.BackgroundStyle.material(_:) || (v72 = v70, v70 == enum case for BreakoutDetails.BackgroundStyle.dark(_:)))
      {
        v63 = [objc_opt_self() whiteColor];
        (*v71)(v68, v4);
      }

      else
      {
        LODWORD(v104) = enum case for BreakoutDetails.BackgroundStyle.light(_:);
        sub_396E8();
        v73 = v68;
        v63 = sub_76A120(0.18824, 0.18824, 0.2, 1.0).super.isa;
        v74 = *v71;
        (*v71)(v73, v4);
        if (v72 != v104)
        {
          v74(v101, v4);
        }
      }

      v31 = v102;
      v24 = &selRef_setTextAlignment_;
    }
  }

  v75 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButton);
  v76 = v62;
  [v75 setTitleColor:v63 forState:0];
  [v75 setTitleColor:v63 forState:1];
  v77 = v24[3];
  v101 = v63;
  [v75 v77];
  v104 = v1;
  v78 = *(v1 + v31);
  v79 = v19;
  if (v78)
  {
    v80 = *(v19 + 36);
    v81 = sub_7666D0();
    v82 = *(v81 - 8);
    v83 = v103;
    (*(v82 + 16))(v103, v21 + v80, v81);
    (*(v82 + 56))(v83, 0, 1, v81);
    v19 = v79;
    v84 = v78;
    sub_75BA40();
  }

  v85 = *(v19 + 40);
  v86 = sub_7666D0();
  v87 = *(v86 - 8);
  v88 = *(v87 + 16);
  v89 = v103;
  v88(v103, v21 + v85, v86);
  v90 = *(v87 + 56);
  v90(v89, 0, 1, v86);
  sub_75BA40();
  v88(v89, v21 + v79[13], v86);
  v90(v89, 0, 1, v86);
  sub_75BA40();
  v88(v89, v21 + v79[14], v86);
  v90(v89, 0, 1, v86);
  sub_75C540();
  v91 = *(v104 + v102);
  if (v91)
  {
    v92 = *(v21 + v79[23]);
    v93 = v92;
    v94 = v91;
    sub_24C3DC(v92);
  }

  v95 = *(v21 + v79[23]);
  v96 = v95;
  sub_24C3DC(v95);
  sub_24C3DC(v95);
  sub_13D584(v95);

  return sub_FCDC4(v21);
}

double sub_639218()
{
  v1 = v0;
  v2 = sub_75B240();
  v32 = *(v2 - 8);
  __chkstk_darwin(v2);
  v30 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&qword_95F7F0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v30 - v6;
  v8 = sub_BD88(&qword_94CB98);
  __chkstk_darwin(v8 - 8);
  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v13 = sub_BD88(&unk_95CF90);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v30 - v15;
  v33 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v33);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_config;
  swift_beginAccess();
  v20 = v1 + v19;
  v21 = v18;
  v22 = v32;
  (*(v14 + 16))(v16, v20, v13);
  v34 = v1;
  sub_7592B0();
  (*(v14 + 8))(v16, v13);
  v23 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  (*(v22 + 104))(v12, enum case for BreakoutDetails.BackgroundStyle.material(_:), v2);
  (*(v22 + 56))(v12, 0, 1, v2);
  v24 = *(v5 + 56);
  sub_1ED18(v1 + v23, v7, &qword_94CB98);
  sub_1ED18(v12, &v7[v24], &qword_94CB98);
  v25 = *(v22 + 48);
  if (v25(v7, 1, v2) != 1)
  {
    v26 = v31;
    sub_1ED18(v7, v31, &qword_94CB98);
    if (v25(&v7[v24], 1, v2) != 1)
    {
      v28 = v30;
      (*(v22 + 32))(v30, &v7[v24], v2);
      sub_63D8C0(&unk_95F800, &type metadata accessor for BreakoutDetails.BackgroundStyle);
      sub_7691C0();
      v29 = *(v22 + 8);
      v29(v28, v2);
      sub_10A2C(v12, &qword_94CB98);
      v29(v26, v2);
      sub_10A2C(v7, &qword_94CB98);
      goto LABEL_7;
    }

    sub_10A2C(v12, &qword_94CB98);
    (*(v22 + 8))(v26, v2);
    goto LABEL_6;
  }

  sub_10A2C(v12, &qword_94CB98);
  if (v25(&v7[v24], 1, v2) != 1)
  {
LABEL_6:
    sub_10A2C(v7, &qword_95F7F0);
    goto LABEL_7;
  }

  sub_10A2C(v7, &qword_94CB98);
LABEL_7:
  sub_FCDC4(v21);
  return 0.0;
}

id sub_63979C()
{
  v90 = sub_75A010();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v91 = &v84 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_BD88(&unk_95CF90);
  v87 = *(v88 - 1);
  __chkstk_darwin(v88);
  v85 = &v84 - v2;
  v3 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v3 - 8);
  v84 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&qword_95F810);
  __chkstk_darwin(v5 - 8);
  v86 = &v84 - v6;
  v7 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v7 - 8);
  v92 = &v84 - v8;
  v95 = sub_760AD0();
  v99 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v98 = &v84 - v11;
  v94 = sub_7666D0();
  v97 = *(v94 - 8);
  __chkstk_darwin(v94);
  v96 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_75B270();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = &v84 - v18;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badge;
  swift_beginAccess();
  v21 = *(v14 + 16);
  v22 = v0;
  v21(v19, &v0[v20], v13);
  sub_63D8C0(&qword_95F818, &type metadata accessor for BreakoutDetails.Badge);
  v23 = sub_7691C0();
  v24 = v19;
  v25 = *(v14 + 8);
  result = v25(v24, v13);
  if ((v23 & 1) == 0)
  {
    v21(v16, &v22[v20], v13);
    v27 = (*(v14 + 88))(v16, v13);
    v28 = v22;
    if (v27 == enum case for BreakoutDetails.Badge.text(_:))
    {
      v91 = v22;
      (*(v14 + 96))(v16, v13);
      v29 = v16[1];
      v89 = *v16;
      v90 = v29;
      if (qword_93DAE0 != -1)
      {
        swift_once();
      }

      v30 = v94;
      v31 = sub_BE38(v94, qword_99F898);
      v32 = v96;
      v33 = v97;
      v34 = *(v97 + 16);
      v34(v96, v31, v30);
      v35 = v34;
      v88 = v34;
      v36 = enum case for DirectionalTextAlignment.none(_:);
      v87 = *(v99 + 104);
      v37 = v95;
      (v87)(v98, enum case for DirectionalTextAlignment.none(_:), v95);
      v38 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel());
      *&v38[qword_94B338] = 0;
      v39 = v92;
      v35(v92, v32, v30);
      v40 = *(v33 + 56);
      v40(v39, 0, 1, v30);
      v41 = v93;
      (v87)(v93, v36, v37);
      v42 = sub_75BB10();
      v43 = v96;
      v88(v39, v96, v30);
      v40(v39, 0, 1, v30);
      v44 = v42;
      sub_75BA40();
      sub_75BA20();
      [v44 setNumberOfLines:1];
      v46 = v98;
      v45 = v99;
      (*(v99 + 16))(v41, v98, v37);
      sub_75BA90();
      (*(v45 + 8))(v46, v37);
      (*(v97 + 8))(v43, v30);
      sub_75BAD0();
      v47 = sub_769210();

      [v44 setText:v47];

      v48 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel;
      v28 = v91;
      v49 = *&v91[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel];
      v50 = v44;
      if (v49)
      {
        [v49 removeFromSuperview];
        v51 = *&v28[v48];
      }

      else
      {
        v51 = 0;
      }

      *&v28[v48] = v44;
      v73 = v44;

      sub_63B2F0(&OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel);
      v74 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark;
      v75 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark];
      if (v75)
      {
        [v75 removeFromSuperview];
        v76 = *&v28[v74];
      }

      else
      {
        v76 = 0;
      }

      *&v28[v74] = 0;

      sub_63B2F0(&OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark);
    }

    else if (v27 == enum case for BreakoutDetails.Badge.wordmark(_:))
    {
      v52 = enum case for Wordmark.arcade(_:);
      v53 = sub_765770();
      v54 = *(v53 - 8);
      v55 = v86;
      (*(v54 + 104))(v86, v52, v53);
      (*(v54 + 56))(v55, 0, 1, v53);
      v56 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_config;
      swift_beginAccess();
      v57 = v87;
      v58 = &v28[v56];
      v59 = v85;
      v60 = v88;
      (*(v87 + 16))(v85, v58, v88);
      v100 = v28;
      v61 = v84;
      sub_7592B0();
      (*(v57 + 8))(v59, v60);
      v62 = *(v61 + 32);
      sub_FCDC4(v61);
      (*(v89 + 104))(v91, enum case for WordmarkView.Alignment.center(_:), v90);
      v101 = &type metadata for CGFloat;
      v102 = &protocol witness table for CGFloat;
      v100 = v62;
      v63 = objc_allocWithZone(sub_75A030());
      v64 = sub_75A000();
      v65 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel;
      v66 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel];
      if (v66)
      {
        [v66 removeFromSuperview];
        v67 = *&v28[v65];
      }

      else
      {
        v67 = 0;
      }

      *&v28[v65] = 0;

      sub_63B2F0(&OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel);
      v80 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark;
      v81 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark];
      v82 = v64;
      if (v81)
      {
        [v81 removeFromSuperview];
        v81 = *&v28[v80];
      }

      *&v28[v80] = v64;
      v83 = v64;

      sub_63B2F0(&OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark);
    }

    else
    {
      v68 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel;
      v69 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel];
      if (v27 == enum case for BreakoutDetails.Badge.none(_:))
      {
        if (v69)
        {
          [*&v22[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel] removeFromSuperview];
          v69 = *&v22[v68];
        }

        *&v22[v68] = 0;

        sub_63B2F0(&OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel);
        v70 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark;
        v71 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark];
        if (v71)
        {
          [v71 removeFromSuperview];
          v72 = *&v28[v70];
        }

        else
        {
          v72 = 0;
        }

        *&v28[v70] = 0;

        sub_63B2F0(&OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark);
      }

      else
      {
        if (v69)
        {
          [*&v22[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel] removeFromSuperview];
          v69 = *&v22[v68];
        }

        *&v22[v68] = 0;

        sub_63B2F0(&OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel);
        v77 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark;
        v78 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark];
        if (v78)
        {
          [v78 removeFromSuperview];
          v79 = *&v22[v77];
        }

        else
        {
          v79 = 0;
        }

        *&v22[v77] = 0;

        sub_63B2F0(&OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark);
        v25(v16, v13);
      }
    }

    sub_6385E0();
    sub_63A390();
    return [v28 setNeedsLayout];
  }

  return result;
}

uint64_t sub_63A390()
{
  v1 = v0;
  v2 = sub_75B240();
  v103 = *(v2 - 8);
  __chkstk_darwin(v2);
  v96 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_BD88(&qword_95F7F0);
  __chkstk_darwin(v102);
  v5 = &v95 - v4;
  v6 = sub_BD88(&qword_94CB98);
  __chkstk_darwin(v6 - 8);
  v97 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v95 - v9;
  v99 = sub_75A010();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v100 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_75B220();
  v111 = *(v109 - 8);
  __chkstk_darwin(v109);
  v105 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v95 - v14;
  __chkstk_darwin(v16);
  v110 = &v95 - v17;
  v18 = sub_BD88(&unk_95CF90);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v95 - v20;
  v107 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v107);
  v23 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_config;
  swift_beginAccess();
  (*(v19 + 16))(v21, &v1[v24], v18);
  v114 = v1;
  sub_7592B0();
  (*(v19 + 8))(v21, v18);
  v25 = [v1 traitCollection];
  LOBYTE(v18) = sub_769A00();

  v106 = v23;
  if ((v18 & 1) != 0 && v23[*(v107 + 96)] == 1)
  {
    v26 = v109;
    (*(v111 + 104))(v110, enum case for BreakoutDetails.TextAlignment.leading(_:), v109);
  }

  else
  {
    v27 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailTextAlignment;
    swift_beginAccess();
    v26 = v109;
    (*(v111 + 16))(v110, &v1[v27], v109);
  }

  v28 = sub_75B210();
  v29 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel;
  v30 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel];
  if (v30)
  {
    [v30 setTextAlignment:v28];
  }

  v104 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_titleLabel];
  [v104 setTextAlignment:v28];
  v108 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_descriptionLabel];
  [v108 setTextAlignment:v28];
  v101 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark;
  v31 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark];
  if (v31)
  {
    v32 = v111;
    (*(v111 + 16))(v15, v110, v26);
    v33 = (*(v32 + 88))(v15, v26);
    if (v33 == enum case for BreakoutDetails.TextAlignment.leading(_:))
    {
      (*(v98 + 104))(v100, enum case for WordmarkView.Alignment.leading(_:), v99);
    }

    else if (v33 == enum case for BreakoutDetails.TextAlignment.trailing(_:))
    {
      (*(v98 + 104))(v100, enum case for WordmarkView.Alignment.trailing(_:), v99);
    }

    else
    {
      v34 = *(v98 + 104);
      if (v33 != enum case for BreakoutDetails.TextAlignment.center(_:))
      {
        v34(v100, enum case for WordmarkView.Alignment.leading(_:), v99);
        v94 = *(v111 + 8);
        v35 = v31;
        v94(v15, v26);
        goto LABEL_15;
      }

      v34(v100, enum case for WordmarkView.Alignment.center(_:), v99);
    }

    v35 = v31;
LABEL_15:
    sub_75A020();
  }

  v36 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  v37 = v103;
  (*(v103 + 104))(v10, enum case for BreakoutDetails.BackgroundStyle.material(_:), v2);
  (*(v37 + 56))(v10, 0, 1, v2);
  v38 = *(v102 + 48);
  sub_1ED18(&v1[v36], v5, &qword_94CB98);
  sub_1ED18(v10, &v5[v38], &qword_94CB98);
  v39 = *(v37 + 48);
  v40 = &selRef_absoluteDimension_;
  if (v39(v5, 1, v2) == 1)
  {
    sub_10A2C(v10, &qword_94CB98);
    v41 = &selRef_setTextAlignment_;
    if (v39(&v5[v38], 1, v2) == 1)
    {
      sub_10A2C(v5, &qword_94CB98);
      v42 = v105;
      v43 = v107;
LABEL_28:
      v55 = *&v1[v101];
      if (v55)
      {
        v56 = [v55 v40[1]];
        [v56 setCompositingFilter:kCAFilterPlusL];
      }

      v57 = *&v1[v29];
      if (v57)
      {
        v58 = [v57 v40[1]];
        v59 = kCAFilterPlusL;
        [v58 setCompositingFilter:kCAFilterPlusL];
      }

      else
      {
        v59 = kCAFilterPlusL;
      }

      v60 = [v108 v40[1]];
      [v60 setCompositingFilter:v59];

      v61 = [*&v1[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_backgroundMaterialView] contentView];
      v49 = [v61 v40[1]];

      [v49 setAllowsGroupBlending:0];
      goto LABEL_34;
    }

    goto LABEL_21;
  }

  v44 = v97;
  sub_1ED18(v5, v97, &qword_94CB98);
  if (v39(&v5[v38], 1, v2) == 1)
  {
    sub_10A2C(v10, &qword_94CB98);
    (*(v37 + 8))(v44, v2);
    v41 = &selRef_setTextAlignment_;
    v40 = &selRef_absoluteDimension_;
LABEL_21:
    sub_10A2C(v5, &qword_95F7F0);
    v42 = v105;
    v43 = v107;
    goto LABEL_22;
  }

  v50 = v96;
  (*(v37 + 32))(v96, &v5[v38], v2);
  sub_63D8C0(&unk_95F800, &type metadata accessor for BreakoutDetails.BackgroundStyle);
  LODWORD(v102) = sub_7691C0();
  v51 = v29;
  v52 = v44;
  v53 = *(v37 + 8);
  v53(v50, v2);
  sub_10A2C(v10, &qword_94CB98);
  v54 = v52;
  v29 = v51;
  v53(v54, v2);
  sub_10A2C(v5, &qword_94CB98);
  v42 = v105;
  v41 = &selRef_setTextAlignment_;
  v43 = v107;
  v40 = &selRef_absoluteDimension_;
  if (v102)
  {
    goto LABEL_28;
  }

LABEL_22:
  v45 = *&v1[v101];
  if (v45)
  {
    v46 = [v45 v40[1]];
    [v46 setCompositingFilter:0];
  }

  v47 = *&v1[v29];
  if (v47)
  {
    v48 = [v47 v40[1]];
    [v48 setCompositingFilter:0];
  }

  v49 = [v108 v40[1]];
  [v49 setCompositingFilter:0];
LABEL_34:

  v62 = v106;
  v63 = &v106[*(v43 + 84)];
  v64 = v109;
  if (v63[8])
  {
    v65 = [v1 v41[23]];
    v66 = sub_7699D0();

    if (v66)
    {
      v67 = 3;
    }

    else
    {
      v67 = 2;
    }

    [v104 setNumberOfLines:v67];
  }

  else
  {
    [v104 setNumberOfLines:*v63];
  }

  v68 = v62 + *(v43 + 88);
  if (*(v68 + 8))
  {
    v69 = [v1 v41[23]];
    v70 = sub_7699D0();

    if (v70)
    {
      v71 = 3;
    }

    else
    {
      v71 = 2;
    }

    [v108 setNumberOfLines:v71];
  }

  else
  {
    [v108 setNumberOfLines:*v68];
  }

  v72 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailTextAlignment;
  swift_beginAccess();
  v73 = v111;
  (*(v111 + 16))(v42, &v1[v72], v64);
  v74 = (*(v73 + 88))(v42, v64);
  if (v74 == enum case for BreakoutDetails.TextAlignment.leading(_:))
  {
    if (qword_93DF90 != -1)
    {
      swift_once();
    }

    v75 = sub_BD88(&qword_95F7F8);
    v76 = qword_95F640;
LABEL_54:
    sub_BE38(v75, v76);
    v112 = v1;
    v77 = v1;
    sub_7592B0();

    v78 = v113;
    goto LABEL_55;
  }

  if (v74 == enum case for BreakoutDetails.TextAlignment.trailing(_:))
  {
    if (qword_93DF98 != -1)
    {
      swift_once();
    }

    v75 = sub_BD88(&qword_95F7F8);
    v76 = qword_95F658;
    goto LABEL_54;
  }

  if (v74 == enum case for BreakoutDetails.TextAlignment.center(_:))
  {
    v78 = 0;
  }

  else
  {
    if (qword_93DF90 != -1)
    {
      swift_once();
    }

    v91 = sub_BD88(&qword_95F7F8);
    sub_BE38(v91, qword_95F640);
    v112 = v1;
    v92 = v1;
    sub_7592B0();

    v93 = v113;
    (*(v111 + 8))(v42, v64);
    v78 = v93;
  }

LABEL_55:
  v79 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButton];
  [v79 setContentHorizontalAlignment:v78];
  v80 = [v79 titleLabel];
  if (!v80)
  {
    goto LABEL_63;
  }

  v81 = v80;
  v82 = sub_76A140();
  v84 = v83;

  v85 = HIBYTE(v84) & 0xF;
  if ((v84 & 0x2000000000000000) == 0)
  {
    v85 = v82 & 0xFFFFFFFFFFFFLL;
  }

  if (v85)
  {
    v86 = [v1 v41[23]];
    v87 = sub_7699F0();

    if (v87)
    {
      v88 = 0.0;
    }

    else
    {
      v88 = 2.0;
    }

    [v79 setImageEdgeInsets:{0.0, v88}];
    v89 = sub_56E958(0x74756F6B61657242, 0xEF6E6F7276656843, 0);
    [v79 setImage:v89 forState:0];
  }

  else
  {
LABEL_63:
    [v79 setImageEdgeInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    [v79 setImage:0 forState:0];
  }

  sub_63C32C();
  (*(v111 + 8))(v110, v64);
  return sub_FCDC4(v62);
}

id sub_63B2F0(void *a1)
{
  v3 = sub_BD88(&qword_94CB98);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v21 - v8;
  v10 = *&v1[*a1];
  if (v10)
  {
    v11 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailBackgroundStyle;
    swift_beginAccess();
    sub_1ED18(&v1[v11], v9, &qword_94CB98);
    v12 = sub_75B240();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v9, 1, v12) == 1)
    {
      v14 = v10;
    }

    else
    {
      sub_1ED18(v9, v5, &qword_94CB98);
      if ((*(v13 + 88))(v5, v12) == enum case for BreakoutDetails.BackgroundStyle.material(_:))
      {
        v15 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_backgroundMaterialView];
        v16 = v10;
        v17 = [v15 contentView];
        [v17 addSubview:v16];

LABEL_8:
        sub_10A2C(v9, &qword_94CB98);
        return [v1 setNeedsLayout];
      }

      v18 = *(v13 + 8);
      v19 = v10;
      v18(v5, v12);
    }

    [v1 addSubview:v10];
    goto LABEL_8;
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_63B538(uint64_t a1)
{
  v2 = v1;
  v4 = sub_75B240();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&qword_94CB98);
  __chkstk_darwin(v7 - 8);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v43 = &v39 - v10;
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = sub_BD88(&qword_95F7F0);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v39 - v16;
  v18 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  v19 = *(v15 + 56);
  v42 = v18;
  sub_1ED18(&v2[v18], v17, &qword_94CB98);
  sub_1ED18(a1, &v17[v19], &qword_94CB98);
  v20 = v5;
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v19], 1, v4) == 1)
    {
      return sub_10A2C(v17, &qword_94CB98);
    }

    goto LABEL_6;
  }

  sub_1ED18(v17, v13, &qword_94CB98);
  if (v21(&v17[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v13, v4);
LABEL_6:
    sub_10A2C(v17, &qword_95F7F0);
    goto LABEL_7;
  }

  v30 = v40;
  (*(v5 + 32))(v40, &v17[v19], v4);
  sub_63D8C0(&unk_95F800, &type metadata accessor for BreakoutDetails.BackgroundStyle);
  LODWORD(v39) = sub_7691C0();
  v31 = *(v5 + 8);
  v31(v30, v4);
  v31(v13, v4);
  result = sub_10A2C(v17, &qword_94CB98);
  if ((v39 & 1) == 0)
  {
LABEL_7:
    v39 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_backgroundMaterialView];
    [v39 removeFromSuperview];
    v22 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark;
    v23 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark];
    if (v23)
    {
      [v23 removeFromSuperview];
    }

    v24 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel;
    v25 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel];
    if (v25)
    {
      [v25 removeFromSuperview];
    }

    v26 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_titleLabel];
    [v26 removeFromSuperview];
    v27 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_descriptionLabel];
    [v27 removeFromSuperview];
    v40 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButton];
    [v40 removeFromSuperview];
    v17 = v43;
    sub_1ED18(&v2[v42], v43, &qword_94CB98);
    if (v21(v17, 1, v4) != 1)
    {
      v28 = v41;
      sub_1ED18(v17, v41, &qword_94CB98);
      if ((*(v20 + 88))(v28, v4) == enum case for BreakoutDetails.BackgroundStyle.material(_:))
      {
        v29 = v39;
        [v2 addSubview:v39];
        if (*&v2[v22])
        {
          [v2 addSubview:?];
        }

        else
        {
          v33 = *&v2[v24];
          if (v33)
          {
            v34 = v33;
            v35 = [v29 contentView];
            [v35 addSubview:v34];
          }
        }

        v36 = [v29 contentView];
        [v36 addSubview:v26];

        v37 = [v29 contentView];
        [v37 addSubview:v27];

        v38 = [v29 contentView];
        [v38 addSubview:v40];

        return sub_10A2C(v17, &qword_94CB98);
      }

      (*(v20 + 8))(v28, v4);
    }

    if (*&v2[v22] || *&v2[v24])
    {
      [v2 addSubview:?];
    }

    [v2 addSubview:v26];
    [v2 addSubview:v27];
    [v2 addSubview:v40];
    return sub_10A2C(v17, &qword_94CB98);
  }

  return result;
}

uint64_t sub_63BC4C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v52 = sub_7664F0();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&qword_94CB98);
  __chkstk_darwin(v4 - 8);
  v6 = v49 - v5;
  v7 = sub_BD88(&unk_95CF90);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v49 - v9;
  v11 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v11 - 8);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_75F100();
  __chkstk_darwin(v14 - 8);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[0] = sub_75F120();
  v17 = *(v49[0] - 8);
  *&v18 = __chkstk_darwin(v49[0]).n128_u64[0];
  v20 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74.receiver = v1;
  v74.super_class = ObjectType;
  v49[1] = ObjectType;
  objc_msgSendSuper2(&v74, "layoutSubviews", v18);
  v21 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_config;
  swift_beginAccess();
  (*(v8 + 16))(v10, &v1[v21], v7);
  v71 = v1;
  v22 = v1;
  sub_7592B0();
  (*(v8 + 8))(v10, v7);

  sub_639218();
  sub_636B98(v13, v16);
  sub_FCDC4(v13);
  v23 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_titleLabel];
  v24 = type metadata accessor for CappedSizeDynamicTypeLabel();
  v72 = v24;
  v73 = &protocol witness table for UILabel;
  v70 = &protocol witness table for UILabel;
  v71 = v23;
  v25 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_descriptionLabel];
  v69 = v24;
  v68 = v25;
  v26 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel];
  if (v26)
  {
    v27 = &protocol witness table for UILabel;
    v28 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel];
  }

  else
  {
    v28 = 0;
    v24 = 0;
    v27 = 0;
    v65 = 0;
    v64 = 0;
  }

  v63 = v28;
  v66 = v24;
  v67 = v27;
  v29 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark];
  if (v29)
  {
    v30 = sub_75A030();
    v31 = &protocol witness table for UIView;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v60 = 0;
    v59 = 0;
  }

  v58 = v29;
  v61 = v30;
  v62 = v31;
  v32 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButton];
  v33 = v26;
  v34 = v29;
  v35 = v23;
  v36 = v25;
  v37 = [v32 titleForState:0];
  if (v37)
  {

    v38 = type metadata accessor for CappedSizeDynamicTypeButton();
    v37 = v32;
    v39 = &protocol witness table for UIView;
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v55 = 0;
    v54 = 0;
  }

  v53 = v37;
  v56 = v38;
  v57 = v39;
  sub_75F110();
  v40 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  sub_1ED18(&v22[v40], v6, &qword_94CB98);
  v41 = sub_75B240();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v6, 1, v41) == 1)
  {
    sub_10A2C(v6, &qword_94CB98);
LABEL_14:
    sub_75D650();
    v47 = v50;
    goto LABEL_15;
  }

  v43 = (*(v42 + 88))(v6, v41);
  v44 = enum case for BreakoutDetails.BackgroundStyle.material(_:);
  (*(v42 + 8))(v6, v41);
  if (v43 != v44)
  {
    goto LABEL_14;
  }

  v45 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_backgroundMaterialView];
  sub_75D650();
  [v45 setFrame:?];
  v46 = [v45 contentView];
  [v46 bounds];

  v47 = v50;
LABEL_15:
  sub_75F0B0();
  (*(v51 + 8))(v47, v52);
  sub_63C32C();
  return (*(v17 + 8))(v20, v49[0]);
}

void sub_63C32C()
{
  v1 = v0;
  v2 = sub_756CB0();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_titleLabel);
  v8 = [v7 font];
  if (!v8)
  {
    goto LABEL_41;
  }

  v9 = v8;
  v10 = [v7 text];
  if (v10)
  {
    v11 = v10;
    v12 = sub_769240();
    v14 = v13;

    v47 = v12;
    v48 = v14;

    sub_756C90();
    sub_12EC40();
    sub_76A4C0();
    LOBYTE(v11) = v15;
    (*(v3 + 8))(v6, v2);

    if (v11)
    {

      v16 = 0;
    }

    else
    {
      [v9 lineHeight];
      v18 = v17;

      v19 = ceil(v18 * 1.3);
      if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (v19 <= -9.22337204e18)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (v19 >= 9.22337204e18)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v16 = v19;
    }
  }

  else
  {

    v16 = 0;
  }

  sub_205E70(v16);
  v20 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_descriptionLabel);
  v21 = [v20 font];
  if (!v21)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v22 = v21;
  v23 = [v20 text];
  if (!v23)
  {

    v29 = 0;
    goto LABEL_19;
  }

  v24 = v23;
  v25 = sub_769240();
  v27 = v26;

  v47 = v25;
  v48 = v27;

  sub_756C90();
  sub_12EC40();
  sub_76A4C0();
  LOBYTE(v24) = v28;
  (*(v3 + 8))(v6, v2);

  if (v24)
  {

    v29 = 0;
    goto LABEL_19;
  }

  [v22 lineHeight];
  v31 = v30;

  v32 = ceil(v31 * 1.3);
  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_33;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v32 >= 9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v29 = v32;
LABEL_19:
  sub_205E70(v29);
  v33 = [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButton) titleLabel];
  if (!v33)
  {
    return;
  }

  v34 = v33;
  v35 = [v33 font];
  if (!v35)
  {
LABEL_43:
    __break(1u);
    return;
  }

  v36 = v35;
  v37 = [v34 text];
  if (!v37)
  {

    goto LABEL_25;
  }

  v38 = v37;
  v39 = sub_769240();
  v41 = v40;

  v47 = v39;
  v48 = v41;

  sub_756C90();
  sub_12EC40();
  sub_76A4C0();
  LOBYTE(v38) = v42;
  (*(v3 + 8))(v6, v2);

  if ((v38 & 1) == 0)
  {
    [v36 lineHeight];
    v45 = v44;

    v46 = ceil(v45 * 1.3);
    if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v46 > -9.22337204e18)
      {
        if (v46 < 9.22337204e18)
        {
          v43 = v46;
          goto LABEL_30;
        }

        goto LABEL_40;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_25:
  v43 = 0;
LABEL_30:
  sub_205E70(v43);
}

void sub_63CBF8()
{
  sub_75B270();
  if (v0 <= 0x3F)
  {
    sub_63CD7C();
    if (v1 <= 0x3F)
    {
      sub_75B220();
      if (v2 <= 0x3F)
      {
        sub_63D260(319, &unk_95F6E0, &type metadata accessor for BreakoutDetails.BackgroundStyle);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_63CD7C()
{
  if (!qword_95F6D0)
  {
    sub_133D8(&qword_93FBE0);
    type metadata accessor for BreakoutDetailsView.Config(255);
    v0 = sub_7593A0();
    if (!v1)
    {
      atomic_store(v0, &qword_95F6D0);
    }
  }
}

uint64_t sub_63CE24(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = sub_7666D0();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 36);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_BD88(&unk_93E530);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 48);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_63CF74(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_7666D0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_BD88(&unk_93E530);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_63D0A4()
{
  sub_63D260(319, qword_947E90, sub_396E8);
  if (v0 <= 0x3F)
  {
    sub_7666D0();
    if (v1 <= 0x3F)
    {
      sub_63D210();
      if (v2 <= 0x3F)
      {
        sub_63D260(319, &qword_95F760, &type metadata accessor for FontUseCase);
        if (v3 <= 0x3F)
        {
          sub_63D260(319, &unk_95F768, type metadata accessor for UIContentSizeCategory);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_63D210()
{
  if (!qword_95F758)
  {
    v0 = sub_76A480();
    if (!v1)
    {
      atomic_store(v0, &qword_95F758);
    }
  }
}

void sub_63D260(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_76A480();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_63D2B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_94CB98);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_63D324(uint64_t a1, char *a2)
{
  v46 = a1;
  v3 = sub_BD88(&qword_94CB98);
  __chkstk_darwin(v3 - 8);
  v5 = &v44 - v4;
  v6 = sub_BD88(&unk_95CF90);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - v8;
  v10 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_75F100();
  __chkstk_darwin(v13 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_75F120();
  v16 = *(v45 - 8);
  __chkstk_darwin(v45);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_config;
  swift_beginAccess();
  (*(v7 + 16))(v9, &a2[v19], v6);
  v65 = a2;
  v20 = a2;
  sub_7592B0();
  (*(v7 + 8))(v9, v6);

  sub_639218();
  sub_636B98(v12, v15);
  sub_FCDC4(v12);
  v21 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_titleLabel];
  v22 = type metadata accessor for CappedSizeDynamicTypeLabel();
  v66 = v22;
  v67 = &protocol witness table for UILabel;
  v64 = &protocol witness table for UILabel;
  v65 = v21;
  v23 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_descriptionLabel];
  v63 = v22;
  v62 = v23;
  v24 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel];
  if (v24)
  {
    v25 = &protocol witness table for UILabel;
    v26 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel];
  }

  else
  {
    v26 = 0;
    v22 = 0;
    v25 = 0;
    v58 = 0;
    v59 = 0;
  }

  v57 = v26;
  v60 = v22;
  v61 = v25;
  v27 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark];
  if (v27)
  {
    v28 = sub_75A030();
    v29 = &protocol witness table for UIView;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v54 = 0;
    v53 = 0;
  }

  v52 = v27;
  v55 = v28;
  v56 = v29;
  v30 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButton];
  v31 = v24;
  v32 = v27;
  v33 = v21;
  v34 = v23;
  v35 = [v30 titleForState:0];
  if (v35)
  {

    v36 = type metadata accessor for CappedSizeDynamicTypeButton();
    v35 = v30;
    v37 = &protocol witness table for UIView;
  }

  else
  {
    v36 = 0;
    v37 = 0;
    v49 = 0;
    v48 = 0;
  }

  v47 = v35;
  v50 = v36;
  v51 = v37;
  sub_75F110();
  sub_75F0A0();
  v39 = v38;
  (*(v16 + 8))(v18, v45);
  v40 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  sub_1ED18(&v20[v40], v5, &qword_94CB98);
  v41 = sub_75B240();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v5, 1, v41) == 1)
  {
    sub_10A2C(v5, &qword_94CB98);
  }

  else
  {
    (*(v42 + 88))(v5, v41);
    (*(v42 + 8))(v5, v41);
  }

  return v39;
}

uint64_t sub_63D8C0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_63D908()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badge;
  v2 = enum case for BreakoutDetails.Badge.none(_:);
  v3 = sub_75B270();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark) = 0;
  v4 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButtonHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailTextAlignment;
  v6 = enum case for BreakoutDetails.TextAlignment.leading(_:);
  v7 = sub_75B220();
  (*(*(v7 - 8) + 104))(v0 + v5, v6, v7);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailBackgroundStyle;
  v9 = sub_75B240();
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  sub_76A840();
  __break(1u);
}

uint64_t sub_63DA7C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_6648BC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_45D130();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_75B1D0();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 16 * v5);
  sub_458E58(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_63DB64(uint64_t a1)
{
  v47 = sub_7580D0();
  v3 = *(v47 - 8);
  __chkstk_darwin(v47);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_764CF0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10EB0C(_swiftEmptyArrayStorage);
  v11 = *(a1 + 16);
  if (!v11)
  {
    return v10;
  }

  v12 = *(v1 + 48);
  v45 = *(v1 + 56);
  v46 = v12;
  ObjectType = swift_getObjectType();
  v15 = *(v7 + 16);
  v14 = v7 + 16;
  v43 = v15;
  v44 = ObjectType;
  v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
  v37 = *(v14 + 56);
  v38 = v14;
  v39 = (v14 - 8);
  v40 = (v3 + 8);
  v41 = v9;
  v42 = v6;
  while (1)
  {
    v48 = v11;
    v43(v9, v16, v6);
    sub_758330();
    swift_getObjectType();
    sub_758220();
    swift_unknownObjectRelease();
    v17 = sub_764CA0();
    v19 = v18;
    v20 = v5;
    v21 = sub_758080();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v10;
    v24 = sub_3DF2F8(v17, v19);
    v25 = v10[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    if (v10[3] >= v27)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v5 = v20;
        if (v23)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_45BFA0();
        v5 = v20;
        if (v28)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_4561D0(v27, isUniquelyReferenced_nonNull_native);
      v29 = sub_3DF2F8(v17, v19);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_19;
      }

      v24 = v29;
      v5 = v20;
      if (v28)
      {
LABEL_3:

        v10 = v49;
        *(v49[7] + v24) = v21 & 1;
        (*v40)(v5, v47);
        v9 = v41;
        v6 = v42;
        (*v39)(v41, v42);
        goto LABEL_4;
      }
    }

    v10 = v49;
    v49[(v24 >> 6) + 8] |= 1 << v24;
    v31 = (v10[6] + 16 * v24);
    *v31 = v17;
    v31[1] = v19;
    *(v10[7] + v24) = v21 & 1;
    (*v40)(v5, v47);
    v9 = v41;
    v6 = v42;
    (*v39)(v41, v42);
    v32 = v10[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_18;
    }

    v10[2] = v34;
LABEL_4:
    v16 += v37;
    v11 = v48 - 1;
    if (v48 == 1)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_76A9B0();
  __break(1u);
  return result;
}

uint64_t sub_63DF14(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v127 = a6;
  v126 = a5;
  v125 = a4;
  v138 = a3;
  v131 = a2;
  v155 = a1;
  v150 = *v6;
  v121 = sub_768380();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v118 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_7683C0();
  v117 = *(v119 - 8);
  __chkstk_darwin(v119);
  v116 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_7683E0();
  v130 = *(v129 - 8);
  __chkstk_darwin(v129);
  v115 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v128 = &v114 - v11;
  v12 = sub_BD88(&qword_95F8F0);
  __chkstk_darwin(v12 - 8);
  v135 = &v114 - v13;
  v147 = sub_766130();
  v141 = *(v147 - 8);
  __chkstk_darwin(v147);
  v139 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_75B1D0();
  v152 = *(v148 - 8);
  __chkstk_darwin(v148);
  v133 = v15;
  v140 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD88(&qword_95B950);
  __chkstk_darwin(v16 - 8);
  v123 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v136 = &v114 - v19;
  v20 = sub_BD88(&qword_95B958);
  __chkstk_darwin(v20 - 8);
  v122 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v132 = &v114 - v23;
  v24 = sub_768FF0();
  v154 = *(v24 - 8);
  __chkstk_darwin(v24);
  v124 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v151 = &v114 - v27;
  v28 = sub_BD88(&qword_95F8F8);
  __chkstk_darwin(v28 - 8);
  v149 = (&v114 - v29);
  v30 = sub_7623E0();
  v156 = *(v30 - 8);
  v157 = v30;
  __chkstk_darwin(v30);
  v137 = &v114 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v145 = &v114 - v33;
  __chkstk_darwin(v34);
  v134 = &v114 - v35;
  if (qword_93DF10 != -1)
  {
    swift_once();
  }

  v153 = sub_BE38(v24, qword_9A0460);
  v36 = sub_BD88(&qword_93FD00);
  v37 = *(sub_7685F0() - 8);
  v38 = *(v37 + 72);
  v39 = *(v37 + 80);
  v144 = 4 * v38;
  v142 = v36;
  *(swift_allocObject() + 16) = xmmword_782440;
  sub_7685D0();
  sub_768540();
  v158 = v6;
  sub_768540();
  v143 = 3 * v38;
  v40 = v155;
  v41 = sub_75B1C0();
  *(&v161 + 1) = &type metadata for String;
  *&aBlock = v41;
  *(&aBlock + 1) = v42;
  v43 = v153;
  sub_7685C0();
  sub_10A2C(&aBlock, &unk_93FBD0);
  sub_768E80();

  v44 = v149;
  sub_5877E4(v40, v149);
  v46 = v156;
  v45 = v157;
  v47 = (*(v156 + 6))(v44, 1, v157);
  v146 = v24;
  if (v47 == 1)
  {
    v132 = v39;
    v134 = ((v39 + 32) & ~v39);
    v136 = (2 * v38);
    v114 = v38;
    sub_10A2C(v44, &qword_95F8F8);
    v48 = sub_BD88(&qword_95F900);
    v49 = sub_768F90();
    v50 = swift_allocObject();
    swift_weakInit();
    v51 = v152;
    v52 = v140;
    v53 = v40;
    v54 = v148;
    v149 = *(v152 + 16);
    v150 = v152 + 16;
    (v149)(v140, v53, v148);
    v55 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v133 += v55;
    v56 = swift_allocObject();
    *(v56 + 16) = v50;
    *(v56 + 24) = v49;
    v57 = *(v51 + 32);
    v152 = v51 + 32;
    v57(v56 + v55, v52, v54);
    v151 = v49;

    v58 = v135;
    sub_7141FC(v135);
    v59 = v141;
    v60 = v147;
    if ((*(v141 + 48))(v58, 1, v147) == 1)
    {
      v152 = v48;
      sub_10A2C(v58, &qword_95F8F0);
      v61 = sub_75AD30();
      (*(*(v61 - 8) + 56))(v122, 1, 1, v61);
      v62 = enum case for OnDeviceAdFetchFailReason.noAdAvailable(_:);
      v63 = sub_761560();
      v64 = *(v63 - 8);
      v65 = v123;
      (*(v64 + 104))(v123, v62, v63);
      (*(v64 + 56))(v65, 0, 1, v63);
      sub_7623C0();
      v66 = v124;
      v67 = v146;
      (*(v154 + 16))(v124, v153, v146);
      *(swift_allocObject() + 16) = xmmword_780120;
      sub_7685D0();
      sub_768540();
      sub_768540();
      v68 = v148;
      *(&v161 + 1) = v148;
      v69 = sub_B1B4(&aBlock);
      (v149)(v69, v155, v68);
      sub_7685C0();
      sub_10A2C(&aBlock, &unk_93FBD0);
      sub_768540();
      if (v138)
      {
        v70 = 0;
        v71 = 0;
        *(&aBlock + 1) = 0;
        *&v161 = 0;
      }

      else
      {
        v71 = &type metadata for Double;
        v70 = v131;
      }

      *&aBlock = v70;
      *(&v161 + 1) = v71;
      sub_7685C0();
      sub_10A2C(&aBlock, &unk_93FBD0);
      sub_768EA0();

      (*(v154 + 8))(v66, v67);
      v110 = v156;
      v109 = v157;
      v111 = v137;
      (*(v156 + 2))(v145, v137, v157);
      v112 = sub_768F30();

      (*(v110 + 1))(v111, v109);
      return v112;
    }

    else
    {
      v157 = v57;
      (*(v59 + 32))(v139, v58, v60);
      v79 = v158;
      v80 = sub_766140();
      v81 = v59;
      if ((v138 & 1) == 0)
      {
        v154 = v79[2];
        v82 = v115;
        sub_7683D0();
        sub_768450();
        v83 = *(v130 + 8);
        v130 += 8;
        v156 = v83;
        v83(v82, v129);
        v84 = swift_allocObject();
        v153 = v84;
        swift_weakInit();
        v85 = v140;
        v86 = v148;
        (v149)(v140, v155, v148);
        v87 = (v133 + 7) & 0xFFFFFFFFFFFFFFF8;
        v88 = swift_allocObject();
        *(v88 + 16) = v151;
        *(v88 + 24) = v84;
        v157(v88 + v55, v85, v86);
        *(v88 + v87) = v80;
        *(v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8)) = v131;
        v162 = sub_6425BC;
        v163 = v88;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v161 = sub_23F0CC;
        *(&v161 + 1) = &unk_89B1E8;
        v89 = _Block_copy(&aBlock);

        v90 = v116;
        sub_7683A0();
        v159 = _swiftEmptyArrayStorage;
        sub_642568(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
        sub_BD88(&qword_940350);
        sub_4C874();
        v91 = v118;
        v92 = v121;
        sub_76A5A0();
        v93 = v128;
        sub_769930();
        _Block_release(v89);
        (*(v120 + 8))(v91, v92);
        (*(v117 + 8))(v90, v119);
        v156(v93, v129);
        v81 = v141;
      }

      v94 = v151;

      sub_BD88(&qword_95F8E8);
      sub_764050();

      v95 = aBlock;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = v95;
      v97 = sub_45A5D4(v80, v94, v155, isUniquelyReferenced_nonNull_native);
      v98 = aBlock;
      __chkstk_darwin(v97);
      *(&v114 - 2) = v98;

      sub_764070();

      (*(v81 + 8))(v139, v147);
    }
  }

  else
  {
    v72 = v45;
    v73 = v134;
    (*(v46 + 4))(v134, v44, v72);
    v74 = v24;
    v75 = v73;
    (*(v154 + 16))(v151, v43, v74);
    *(swift_allocObject() + 16) = xmmword_77DCF0;
    sub_7685D0();
    sub_768540();
    sub_768540();
    sub_768540();
    v76 = v132;
    sub_7623D0();
    v77 = sub_75AD30();
    v78 = *(v77 - 8);
    if ((*(v78 + 48))(v76, 1, v77) == 1)
    {
      sub_10A2C(v76, &qword_95B958);
      aBlock = 0u;
      v161 = 0u;
    }

    else
    {
      v99 = sub_75AD20();
      *(&v161 + 1) = &type metadata for String;
      *&aBlock = v99;
      *(&aBlock + 1) = v100;
      (*(v78 + 8))(v76, v77);
    }

    sub_7685C0();
    sub_10A2C(&aBlock, &unk_93FBD0);
    sub_768540();
    v101 = v136;
    sub_7623B0();
    v102 = sub_761560();
    v103 = *(v102 - 8);
    if ((*(v103 + 48))(v101, 1, v102) == 1)
    {
      sub_10A2C(v101, &qword_95B950);
      aBlock = 0u;
      v161 = 0u;
    }

    else
    {
      *(&v161 + 1) = v102;
      v104 = sub_B1B4(&aBlock);
      (*(v103 + 32))(v104, v101, v102);
    }

    sub_7685C0();
    sub_10A2C(&aBlock, &unk_93FBD0);
    v105 = v146;
    v106 = v151;
    sub_768E80();

    (*(v154 + 8))(v106, v105);
    sub_BD88(&qword_95F900);
    v108 = v156;
    v107 = v157;
    (*(v156 + 2))(v145, v75, v157);
    v94 = sub_768F30();
    (*(v108 + 1))(v75, v107);
  }

  return v94;
}

uint64_t sub_63F480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v27 = a4;
  v28 = a1;
  v6 = sub_768380();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v30 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7683C0();
  v29 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_75B1D0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = *(result + 16);

    (*(v13 + 16))(&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v12);
    v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v24 = v7;
    v26 = v9;
    v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    *(v19 + 16) = v27;
    *(v19 + 24) = a3;
    (*(v13 + 32))(v19 + v17, v15, v12);
    *(v19 + v18) = v28;
    aBlock[4] = sub_64241C;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_89B238;
    v20 = _Block_copy(aBlock);

    sub_7683A0();
    v31 = _swiftEmptyArrayStorage;
    sub_642568(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
    sub_BD88(&qword_940350);
    sub_4C874();
    v21 = v30;
    sub_76A5A0();
    v22 = v25;
    sub_769980();
    _Block_release(v20);

    (*(v24 + 8))(v21, v6);
    (*(v29 + 8))(v11, v26);
  }

  return result;
}

uint64_t sub_63F864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v124 = a4;
  v131 = a3;
  v5 = sub_7662D0();
  v134 = *(v5 - 8);
  __chkstk_darwin(v5);
  v112 = v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_BD88(&qword_95F908);
  __chkstk_darwin(v119);
  v123 = v102 - v7;
  v8 = sub_761560();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v120 = v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&qword_95B950);
  __chkstk_darwin(v11 - 8);
  v13 = v102 - v12;
  v14 = sub_BD88(&qword_95B958);
  __chkstk_darwin(v14 - 8);
  v127 = v102 - v15;
  v16 = sub_7623E0();
  v129 = *(v16 - 8);
  __chkstk_darwin(v16);
  v128 = v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_75B1D0();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v116 = v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_764CF0();
  __chkstk_darwin(v19 - 8);
  v115 = v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_75AD30();
  v125 = *(v21 - 8);
  v126 = v21;
  __chkstk_darwin(v21);
  v118 = v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_BD88(&qword_95F910);
  __chkstk_darwin(v23 - 8);
  v117 = v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v130 = v102 - v26;
  __chkstk_darwin(v27);
  v122 = v102 - v28;
  __chkstk_darwin(v29);
  v121 = v102 - v30;
  __chkstk_darwin(v31);
  v33 = v102 - v32;
  v34 = sub_768FF0();
  v133 = *(v34 - 8);
  __chkstk_darwin(v34);
  v132 = v102 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_768EF0();
  if ((result & 1) == 0)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v37 = result;
      v103 = v5;
      v106 = v13;
      v107 = v9;
      v108 = v8;
      v109 = a1;

      sub_BD88(&qword_95F8E8);
      sub_764050();

      v38 = sub_63DA7C(v131);
      v39 = sub_642018(v38);
      __chkstk_darwin(v39);

      sub_764070();

      v110 = sub_766070();
      if (qword_93DF10 != -1)
      {
        swift_once();
      }

      v40 = sub_BE38(v34, qword_9A0460);
      (*(v133 + 16))(v132, v40, v34);
      sub_BD88(&qword_93FD00);
      sub_7685F0();
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_7AAF10;
      v102[1] = v41;

      sub_7685D0();
      v104 = v37;

      sub_768540();
      sub_768540();
      v42 = sub_766000();
      *(&v136 + 1) = &type metadata for String;
      *&v135 = v42;
      *(&v135 + 1) = v43;
      sub_7685C0();
      sub_10A2C(&v135, &unk_93FBD0);
      sub_768540();
      v44 = sub_766030();
      if (v45)
      {
        v46 = &type metadata for String;
      }

      else
      {
        v44 = 0;
        v46 = 0;
        *&v136 = 0;
      }

      *&v135 = v44;
      *(&v135 + 1) = v45;
      *(&v136 + 1) = v46;
      sub_7685C0();
      sub_10A2C(&v135, &unk_93FBD0);
      sub_768540();
      v47 = sub_7660A0();
      v105 = v16;
      if (v48)
      {
        v49 = &type metadata for String;
      }

      else
      {
        v47 = 0;
        v49 = 0;
        *&v136 = 0;
      }

      *&v135 = v47;
      *(&v135 + 1) = v48;
      *(&v136 + 1) = v49;
      sub_7685C0();
      sub_10A2C(&v135, &unk_93FBD0);
      sub_768540();
      v50 = sub_766080();
      *(&v136 + 1) = &type metadata for String;
      *&v135 = v50;
      *(&v135 + 1) = v51;
      sub_7685C0();
      sub_10A2C(&v135, &unk_93FBD0);
      sub_768540();
      v52 = sub_766050();
      *(&v136 + 1) = &type metadata for String;
      *&v135 = v52;
      *(&v135 + 1) = v53;
      sub_7685C0();
      sub_10A2C(&v135, &unk_93FBD0);
      sub_768540();
      sub_766040();
      v54 = v134;
      v55 = *(v134 + 48);
      v56 = v103;
      if (v55(v33, 1, v103) == 1)
      {
        sub_10A2C(v33, &qword_95F910);
        v135 = 0u;
        v136 = 0u;
      }

      else
      {
        *(&v136 + 1) = v56;
        v57 = sub_B1B4(&v135);
        (*(v54 + 32))(v57, v33, v56);
      }

      sub_7685C0();
      sub_10A2C(&v135, &unk_93FBD0);
      sub_768540();
      v58 = v110;
      if (v110)
      {
        v59 = sub_BD88(&qword_95B960);
      }

      else
      {
        v59 = 0;
        *(&v135 + 1) = 0;
        *&v136 = 0;
      }

      *&v135 = v58;
      *(&v136 + 1) = v59;

      sub_7685C0();
      sub_10A2C(&v135, &unk_93FBD0);
      sub_768540();
      v60 = sub_766020();
      v111 = v55;
      if (v61)
      {
        v62 = &type metadata for String;
      }

      else
      {
        v60 = 0;
        v62 = 0;
        *&v136 = 0;
      }

      *&v135 = v60;
      *(&v135 + 1) = v61;
      *(&v136 + 1) = v62;
      sub_7685C0();
      sub_10A2C(&v135, &unk_93FBD0);
      sub_768540();
      v63 = sub_7660B0();
      *(&v136 + 1) = &type metadata for String;
      *&v135 = v63;
      *(&v135 + 1) = v64;
      sub_7685C0();
      sub_10A2C(&v135, &unk_93FBD0);
      v65 = v132;
      sub_768E80();

      (*(v133 + 8))(v65, v34);
      v66 = v121;
      sub_766040();
      if (v111(v66, 1, v56) != 1)
      {

        sub_10A2C(v66, &qword_95F910);
        v68 = v122;
        v69 = v123;
        v70 = v134;
LABEL_24:
        sub_766040();
        v71 = v130;
        (*(v70 + 104))(v130, enum case for AppStoreAdUnfilledReason.policyAdDrop(_:), v56);
        (*(v70 + 56))(v71, 0, 1, v56);
        v72 = *(v119 + 48);
        sub_6424F8(v68, v69);
        sub_6424F8(v71, v69 + v72);
        v73 = v111;
        if (v111(v69, 1, v56) == 1)
        {
          sub_10A2C(v71, &qword_95F910);
          sub_10A2C(v68, &qword_95F910);
          v74 = v73(v69 + v72, 1, v56);
          v76 = v125;
          v75 = v126;
          if (v74 == 1)
          {
            sub_10A2C(v69, &qword_95F910);
LABEL_40:
            v78 = &enum case for OnDeviceAdFetchFailReason.policyAdDrop(_:);
            goto LABEL_41;
          }
        }

        else
        {
          v77 = v117;
          sub_6424F8(v69, v117);
          if (v73(v69 + v72, 1, v56) != 1)
          {
            v93 = v69 + v72;
            v94 = v112;
            (*(v70 + 32))(v112, v93, v56);
            sub_642568(&qword_95F918, &type metadata accessor for AppStoreAdUnfilledReason);
            v95 = sub_7691C0();
            v96 = *(v70 + 8);
            v96(v94, v56);
            sub_10A2C(v130, &qword_95F910);
            sub_10A2C(v68, &qword_95F910);
            v96(v77, v56);
            sub_10A2C(v69, &qword_95F910);
            v76 = v125;
            v75 = v126;
            if (v95)
            {
              goto LABEL_40;
            }

LABEL_30:
            v78 = &enum case for OnDeviceAdFetchFailReason.noAdAvailable(_:);
LABEL_41:
            v97 = v107;
            v98 = v120;
            v99 = v108;
            (*(v107 + 104))(v120, *v78, v108);
            sub_766050();
            sub_7660A0();
            (*(v76 + 56))(v127, 1, 1, v75);
            v100 = v106;
            (*(v97 + 16))(v106, v98, v99);
            (*(v97 + 56))(v100, 0, 1, v99);
            v101 = v128;
            sub_7623C0();
            sub_768F60();

            (*(v129 + 8))(v101, v105);
            return (*(v97 + 8))(v98, v99);
          }

          sub_10A2C(v130, &qword_95F910);
          sub_10A2C(v68, &qword_95F910);
          (*(v70 + 8))(v77, v56);
          v76 = v125;
          v75 = v126;
        }

        sub_10A2C(v69, &qword_95F908);
        goto LABEL_30;
      }

      sub_10A2C(v66, &qword_95F910);
      sub_766080();
      v67 = sub_7692D0();

      v68 = v122;
      v69 = v123;
      v70 = v134;
      if (v67)
      {

        goto LABEL_24;
      }

      v79 = sub_766000();
      v133 = v80;
      v134 = v79;
      v81 = sub_766030();
      if (v82)
      {
        v83 = v81;
      }

      else
      {
        v83 = 0;
      }

      v132 = v83;
      if (v82)
      {
        v84 = v82;
      }

      else
      {
        v84 = 0xE000000000000000;
      }

      v130 = v84;
      sub_766080();
      sub_764CC0();
      (*(v113 + 16))(v116, v131, v114);
      sub_7660B0();
      sub_766020();
      sub_766010();
      sub_766090();
      sub_766060();
      v85 = v118;
      sub_75AD10();
      sub_766050();
      sub_7660A0();
      v86 = v125;
      v87 = v127;
      v88 = v85;
      v89 = v126;
      (*(v125 + 16))(v127, v88, v126);
      (*(v86 + 56))(v87, 0, 1, v89);
      (*(v107 + 56))(v106, 1, 1, v108);
      v90 = v128;
      sub_7623C0();
      sub_768F60();
      (*(v129 + 8))(v90, v105);
      v91 = sub_7660A0();
      if (v92)
      {
        __chkstk_darwin(v91);
        sub_764070();

        (*(v86 + 8))(v118, v89);
      }

      else
      {

        return (*(v86 + 8))(v118, v89);
      }
    }
  }

  return result;
}

uint64_t sub_640C40(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_768380();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v49 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_7683C0();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75B1D0();
  v52 = *(v10 - 8);
  v53 = v10;
  v11 = *(v52 + 64);
  __chkstk_darwin(v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_7683E0();
  v13 = *(v51 - 8);
  __chkstk_darwin(v51);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v40 - v17;

  sub_BD88(&qword_95F8E8);
  sub_764050();

  v19 = aBlock;
  if (aBlock[2] && (v20 = sub_6648BC(a1), (v21 & 1) != 0))
  {
    v45 = v7;
    v22 = (v19[7] + 16 * v20);
    v23 = v22[1];
    v46 = *v22;

    swift_retain_n();

    v24 = sub_768EF0();

    if ((v24 & 1) == 0)
    {
      v42 = *(v3 + 16);
      sub_7683D0();
      sub_768450();
      v43 = *(v13 + 8);
      v44 = v13 + 8;
      v43(v15, v51);
      v29 = swift_allocObject();
      swift_weakInit();
      v41 = v6;
      v30 = v52;
      v31 = a1;
      v32 = v53;
      (*(v52 + 16))(&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v53);
      v33 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v34 = (v11 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
      v35 = swift_allocObject();
      *(v35 + 16) = v23;
      *(v35 + 24) = v29;
      (*(v30 + 32))(v35 + v33, v12, v32);
      *(v35 + v34) = v46;
      *(v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
      v59 = sub_641FFC;
      v60 = v35;
      aBlock = _NSConcreteStackBlock;
      v56 = 1107296256;
      v57 = sub_23F0CC;
      v58 = &unk_89B170;
      v36 = _Block_copy(&aBlock);

      v37 = v47;
      sub_7683A0();
      v54 = _swiftEmptyArrayStorage;
      sub_642568(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
      sub_BD88(&qword_940350);
      sub_4C874();
      v38 = v49;
      v39 = v41;
      sub_76A5A0();
      sub_769930();
      _Block_release(v36);

      (*(v45 + 8))(v38, v39);
      (*(v48 + 8))(v37, v50);
      v43(v18, v51);
    }
  }

  else
  {
  }

  if (qword_93DF10 != -1)
  {
    swift_once();
  }

  v25 = sub_768FF0();
  sub_BE38(v25, qword_9A0460);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_782440;
  sub_7685D0();
  v58 = &type metadata for String;
  aBlock = 0xD000000000000031;
  v56 = 0x80000000007EEEE0;
  sub_7685E0();
  sub_10A2C(&aBlock, &unk_93FBD0);
  sub_768540();
  v26 = v53;
  v58 = v53;
  v27 = sub_B1B4(&aBlock);
  (*(v52 + 16))(v27, a1, v26);
  sub_7685E0();
  sub_10A2C(&aBlock, &unk_93FBD0);
  sub_768E80();
}

uint64_t sub_6413C8(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_7662E0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_768FF0();
  v54 = *(v13 - 8);
  __chkstk_darwin(v13);
  v53 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&qword_95B950);
  __chkstk_darwin(v15 - 8);
  v17 = v44 - v16;
  v18 = sub_BD88(&qword_95B958);
  __chkstk_darwin(v18 - 8);
  v20 = v44 - v19;
  v21 = sub_7623E0();
  v50 = *(v21 - 8);
  v51 = v21;
  __chkstk_darwin(v21);
  v52 = v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_768EF0();
  if ((result & 1) == 0)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v45 = v13;
      v46 = v12;
      v47 = v10;
      v48 = v9;
      v49 = a1;

      sub_BD88(&qword_95F8E8);
      sub_764050();

      v24 = sub_63DA7C(a4);
      v25 = sub_642018(v24);
      v26 = v55;
      __chkstk_darwin(v25);
      *&v44[-2] = v26;

      sub_764070();

      sub_7662A0();
      sub_7662C0();
      v27 = sub_75AD30();
      (*(*(v27 - 8) + 56))(v20, 1, 1, v27);
      v28 = enum case for OnDeviceAdFetchFailReason.timeout(_:);
      v29 = sub_761560();
      v30 = *(v29 - 8);
      v44[1] = a5;
      v31 = v30;
      (*(v30 + 104))(v17, v28, v29);
      (*(v31 + 56))(v17, 0, 1, v29);
      sub_7623C0();
      if (qword_93DF10 != -1)
      {
        swift_once();
      }

      v32 = v45;
      v33 = sub_BE38(v45, qword_9A0460);
      (*(v54 + 16))(v53, v33, v32);
      sub_BD88(&qword_93FD00);
      sub_7685F0();
      *(swift_allocObject() + 16) = xmmword_783150;

      sub_7685D0();

      sub_768540();
      sub_768540();
      v58 = &type metadata for Double;
      v55 = a2;
      sub_7685C0();
      sub_10A2C(&v55, &unk_93FBD0);
      sub_768540();
      *&v34 = COERCE_DOUBLE(sub_7662C0());
      if (v35)
      {
        v36 = &type metadata for String;
      }

      else
      {
        *&v34 = 0.0;
        v36 = 0;
        v57 = 0;
      }

      v55 = *&v34;
      v56 = v35;
      v58 = v36;
      sub_7685C0();
      sub_10A2C(&v55, &unk_93FBD0);
      sub_768540();
      *&v37 = COERCE_DOUBLE(sub_7662A0());
      v58 = &type metadata for String;
      v55 = *&v37;
      v56 = v38;
      sub_7685C0();
      sub_10A2C(&v55, &unk_93FBD0);
      v39 = v53;
      sub_768E80();

      (*(v54 + 8))(v39, v32);
      v41 = v46;
      v40 = v47;
      v42 = v48;
      (*(v47 + 104))(v46, enum case for AppStoreTaskCancelReason.slaMiss(_:), v48);
      sub_7662B0();
      (*(v40 + 8))(v41, v42);
      v43 = v52;
      sub_768F60();

      return (*(v50 + 8))(v43, v51);
    }
  }

  return result;
}

uint64_t sub_641B50()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_641C40(uint64_t a1)
{
  v2 = sub_7572E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75B1D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_765F40();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6, v12);
  v15 = (*(v7 + 88))(v9, v6);
  if (v15 == enum case for AdPlacementType.searchLanding(_:))
  {
    v16 = &enum case for AppPlacementLocation.searchLanding(_:);
  }

  else if (v15 == enum case for AdPlacementType.searchResults(_:))
  {
    v16 = &enum case for AppPlacementLocation.searchResults(_:);
  }

  else if (v15 == enum case for AdPlacementType.today(_:))
  {
    v16 = &enum case for AppPlacementLocation.todayPage(_:);
  }

  else if (v15 == enum case for AdPlacementType.productPageYMAL(_:))
  {
    v16 = &enum case for AppPlacementLocation.productPage(_:);
  }

  else
  {
    if (v15 != enum case for AdPlacementType.productPageYMALDuringDownload(_:))
    {
      sub_7572D0();
      v19 = sub_7572B0();
      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v9, v6);
      return v19;
    }

    v16 = &enum case for AppPlacementLocation.downloadPage(_:);
  }

  v17 = *v16;
  v18 = sub_765F30();
  (*(*(v18 - 8) + 104))(v14, v17, v18);
  (*(v11 + 104))(v14, enum case for AdType.app(_:), v10);
  sub_765FF0();
  sub_765FE0();
  v19 = sub_765FD0();

  (*(v11 + 8))(v14, v10);
  return v19;
}

uint64_t sub_641FC4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_642000(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_642018(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_64205C()
{
  v1 = sub_75B1D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_642128(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_75B1D0() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_63F480(a1, a2, v6, v7, v8);
}

uint64_t sub_6421B0()
{
  v1 = sub_75B1D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_6422A0()
{
  v1 = *(sub_75B1D0() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  return sub_6413C8(v6, v5, v7, v0 + v2, v4);
}

uint64_t sub_64233C()
{
  v1 = sub_75B1D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_64241C()
{
  v1 = *(sub_75B1D0() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_63F864(v3, v4, v0 + v2, v5);
}

uint64_t sub_6424AC(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
}

uint64_t sub_6424F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_95F910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_642568(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_6425CC(char *a1, char a2, uint64_t a3, unsigned int a4)
{
  v5 = v4;
  v10 = sub_BD88(&qword_944448);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = &v27 - v12;
  if ((a2 & 1) == 0)
  {
    v28 = a4;
    [a1 frame];
    [v5 setFrame:?];
    v14 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingImageView];
    v15 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingImageView];
    [v15 frame];
    [v14 setFrame:?];
    [v14 setHidden:{objc_msgSend(v15, "isHidden")}];
    v16 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    sub_35FDF4(&v15[v16], v13);
    v17 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    sub_35FD44(v13, v14 + v17);
    swift_endAccess();
    v18 = [*&v15[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_imageView] image];
    if (v18)
    {
      v19 = &v15[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_artworkSize];
      if ((v15[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_artworkSize + 16] & 1) != 0 || (v20 = *&v15[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_artworkLayoutWithMetrics]) == 0)
      {
      }

      else
      {
        v21 = *v19;
        v27 = v19[1];
        v22 = v18;

        v23 = v22;
        sub_DDCF4(v22, v21, v27, 0, v20, a3, v28);
      }
    }

    v24 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingVideoView];
    v25 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingVideoView];
    [v25 frame];
    [v24 setFrame:?];
    [v24 setHidden:{objc_msgSend(v25, "isHidden")}];
  }

  return [v5 setHidden:{objc_msgSend(a1, "isHidden", v11)}];
}

char *sub_64285C(char *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_sourceView] = a1;
  v5 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView];
  v6 = type metadata accessor for RevealingImageMirrorView();
  v21.receiver = objc_allocWithZone(v6);
  v21.super_class = v6;
  v7 = a1;
  v8 = v5;
  v9 = objc_msgSendSuper2(&v21, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = [v9 layer];
  if (qword_93E270 != -1)
  {
    swift_once();
  }

  v20[4] = *&byte_9A0A30[64];
  v20[5] = *&byte_9A0A30[80];
  v20[6] = *&byte_9A0A30[96];
  v20[7] = *&byte_9A0A30[112];
  v20[0] = *byte_9A0A30;
  v20[1] = *&byte_9A0A30[16];
  v20[2] = *&byte_9A0A30[32];
  v20[3] = *&byte_9A0A30[48];
  [v10 setTransform:v20];

  v11 = &v8[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_mirrorDelegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v11 + 1) = &off_89F220;
  swift_unknownObjectWeakAssign();
  sub_DCDE0(Strong);

  *&v2[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingImageView] = v9;
  v13 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView];
  v14 = objc_allocWithZone(type metadata accessor for RevealingVideoMirrorView());
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingVideoView] = sub_647B50(v13);
  v19.receiver = v2;
  v19.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v16 = *&v15[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingImageView];
  v17 = v15;
  [v17 addSubview:v16];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingVideoView]];
  [v17 setClipsToBounds:1];

  return v17;
}

id sub_642B0C()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingImageView];
  [v0 bounds];
  MidX = CGRectGetMidX(v14);
  v3 = OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_sourceView;
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_sourceView] frame];
  v4 = MidX - CGRectGetWidth(v15) * 0.5;
  [v0 bounds];
  MinX = CGRectGetMinX(v16);
  [*&v0[v3] frame];
  Width = CGRectGetWidth(v17);
  [*&v0[v3] frame];
  [v1 setFrame:{v4, MinX, Width, CGRectGetHeight(v18)}];
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingVideoView];
  [v0 bounds];
  v8 = CGRectGetMidX(v19);
  [*&v0[v3] frame];
  v9 = v8 - CGRectGetWidth(v20) * 0.5;
  [v0 bounds];
  v10 = CGRectGetMinX(v21);
  [*&v0[v3] frame];
  v11 = CGRectGetWidth(v22);
  [*&v0[v3] frame];
  return [v7 setFrame:{v9, v10, v11, CGRectGetHeight(v23)}];
}

uint64_t sub_642D94()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v27[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_766CA0();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v32 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v38 = &v27[-v7];
  __chkstk_darwin(v8);
  v36 = &v27[-v9];
  v10 = type metadata accessor for BadgeParagraphView.Metrics(0);
  sub_161DC(v10, qword_9A05D0);
  v31 = v10;
  v30 = sub_BE38(v10, qword_9A05D0);
  if (qword_93D640 != -1)
  {
    swift_once();
  }

  v11 = sub_7666D0();
  v29 = sub_BE38(v11, qword_99EAB8);
  v12 = *(v11 - 8);
  v35 = *(v12 + 16);
  v37 = v12 + 16;
  v35(v3, v29, v11);
  v13 = enum case for FontSource.useCase(_:);
  v14 = v1[13];
  v14(v3, enum case for FontSource.useCase(_:), v0);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v15 = sub_B1B4(v39);
  v16 = v1[2];
  v16(v15, v3, v0);
  sub_766CB0();
  v17 = v1[1];
  v17(v3, v0);
  v35(v3, v29, v11);
  v28 = v13;
  v14(v3, v13, v0);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v18 = sub_B1B4(v39);
  v29 = v16;
  v16(v18, v3, v0);
  sub_766CB0();
  v17(v3, v0);
  if (qword_93D658 != -1)
  {
    swift_once();
  }

  v19 = sub_BE38(v11, qword_99EB00);
  v35(v3, v19, v11);
  v14(v3, v28, v0);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v20 = sub_B1B4(v39);
  v29(v20, v3, v0);
  v21 = v32;
  sub_766CB0();
  v17(v3, v0);
  v22 = v34;
  v23 = *(v33 + 32);
  v24 = v30;
  v23(v30, v36, v34);
  v25 = v31;
  v23(v24 + *(v31 + 20), v38, v22);
  return (v23)(v24 + *(v25 + 24), v21, v22);
}

char *sub_643210(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_760AD0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v14 - 8);
  v16 = v43 - v15;
  if (qword_93DFA0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for BadgeParagraphView.Metrics(0);
  v18 = sub_BE38(v17, qword_9A05D0);
  sub_644260(v18, &v5[OBJC_IVAR____TtC18ASMessagesProvider18BadgeParagraphView_metrics]);
  if (qword_93D640 != -1)
  {
    swift_once();
  }

  v19 = sub_7666D0();
  v20 = sub_BE38(v19, qword_99EAB8);
  v21 = *(v19 - 8);
  (*(v21 + 16))(v16, v20, v19);
  (*(v21 + 56))(v16, 0, 1, v19);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v22 = objc_allocWithZone(sub_75BB20());
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider18BadgeParagraphView_paragraphLabel] = sub_75BB10();
  v23 = type metadata accessor for BadgeParagraphView(0);
  v44.receiver = v5;
  v44.super_class = v23;
  v24 = objc_msgSendSuper2(&v44, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v28 = v24;
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v29 = OBJC_IVAR____TtC18ASMessagesProvider18BadgeParagraphView_paragraphLabel;
  v30 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider18BadgeParagraphView_paragraphLabel];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 systemGrayColor];
  [v32 setTextColor:v33];

  v34 = [v28 traitCollection];
  v35.super.isa = v34;
  isa = sub_7666B0(v35).super.isa;
  v37 = [(objc_class *)isa fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

  if (!v37)
  {
    goto LABEL_8;
  }

  v38 = [objc_opt_self() fontWithDescriptor:v37 size:0.0];

  if (v38)
  {
    [*&v28[v29] setFont:v38];
    v34 = v38;
LABEL_8:
  }

  [v28 addSubview:*&v28[v29]];
  v39 = [v28 traitCollection];
  sub_7699F0();

  sub_76A150();
  sub_BD88(&qword_9477F0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_77B6D0;
  *(v40 + 32) = sub_767B80();
  *(v40 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v43[3] = v23;
  v43[0] = v28;
  v41 = v28;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(v43);
  return v41;
}

id sub_643808()
{
  v1 = v0;
  v2 = sub_76A920();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BadgeParagraphView(0);
  v15.receiver = v0;
  v15.super_class = v6;
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v7 = [v0 traitCollection];
  v8 = sub_7699B0();

  if (v8)
  {
    type metadata accessor for BadgeParagraphView.Metrics(0);
  }

  sub_766470();
  sub_766CA0();
  sub_766700();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider18BadgeParagraphView_paragraphLabel];
  sub_75D650();
  [v10 measurementsWithFitting:v1 in:{v11, v12}];
  (*(v3 + 104))(v5, enum case for FloatingPointRoundingRule.down(_:), v2);
  sub_769F80();
  v9(v5, v2);
  v13 = [v1 traitCollection];
  [v13 layoutDirection];

  sub_75D650();
  sub_769D30();
  return [v10 setFrame:?];
}

uint64_t sub_643AC0(uint64_t a1)
{
  v2 = v1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for BadgeParagraphView(0);
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_7699F0();

  if (!a1 || (result = sub_7699F0(), (result & 1) != (v5 & 1)))
  {
    v7 = [v2 traitCollection];
    sub_7699F0();

    return sub_76A150();
  }

  return result;
}

void sub_643C10()
{
  v1 = v0;
  if (qword_93D640 != -1)
  {
    swift_once();
  }

  v2 = sub_7666D0();
  sub_BE38(v2, qword_99EAB8);
  v3.super.isa = [v0 traitCollection];
  isa = v3.super.isa;
  v4 = sub_7666B0(v3).super.isa;
  v5 = [(objc_class *)v4 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

  if (v5)
  {
    v6 = [objc_opt_self() fontWithDescriptor:v5 size:0.0];

    if (!v6)
    {
      return;
    }

    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider18BadgeParagraphView_paragraphLabel] setFont:v6];
    v7 = v6;
  }

  else
  {
    v7 = isa;
  }
}

id sub_643DB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BadgeParagraphView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_643E64()
{
  result = type metadata accessor for BadgeParagraphView.Metrics(319);
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

uint64_t sub_643F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_766CA0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_643FB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_766CA0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_644028()
{
  result = sub_766CA0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_64409C(double a1, double a2)
{
  v4 = sub_76A920();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BadgeParagraphView.Metrics(0);
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DFA0 != -1)
  {
    swift_once();
  }

  v11 = sub_BE38(v8, qword_9A05D0);
  sub_644260(v11, v10);
  sub_7699B0();
  sub_766470();
  sub_766C70();
  (*(v5 + 8))(v7, v4);
  if (a2 >= a1)
  {
    v12 = a1;
  }

  else
  {
    v12 = a2;
  }

  v13 = ceil(v12);
  sub_6442C4(v10);
  return v13;
}

uint64_t sub_644260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BadgeParagraphView.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6442C4(uint64_t a1)
{
  v2 = type metadata accessor for BadgeParagraphView.Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_644320()
{
  ObjectType = swift_getObjectType();
  v11.receiver = v0;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, "prepareForReuse");
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_detailsView];
  sub_636480();
  v10.receiver = v0;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, "setBackgroundColor:", 0);
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_iconView];
  v9.receiver = v0;
  v9.super_class = ObjectType;
  v4 = v3;
  v5 = objc_msgSendSuper2(&v9, "backgroundColor");
  sub_759070();

  v6 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButtonHandler);
  v7 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButtonHandler);
  *v6 = 0;
  v6[1] = 0;
  return sub_F704(v7);
}

uint64_t sub_6443F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27[1] = a2;
  v3 = sub_75F0C0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_76A920();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SmallBreakoutCollectionViewCell();
  swift_getObjectType();
  v11 = sub_6456A8();
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v12 = [a1 traitCollection];
  v13 = sub_7699D0();

  if (v13)
  {
    [a1 pageMarginInsets];
    if (JUScreenClassGetMain() == 1)
    {
      v14 = 160.0;
    }

    else
    {
      sub_769B90();
      sub_769DA0();
      v19 = v18 + -10.0;
      v32[0] = 156.0;
      sub_766470();
      sub_766700();
      v21 = v20;
      (*(v8 + 8))(v10, v7);
      v14 = v19 - v21;
    }

    v33 = &type metadata for CGFloat;
    v34 = &protocol witness table for CGFloat;
    v32[0] = v14;
    sub_10A2C(&v29, &unk_93F9C0);
    *&v29 = 0x4014000000000000;
    *(&v30 + 1) = &type metadata for CGFloat;
    v31 = &protocol witness table for CGFloat;
  }

  else
  {
    [a1 pageContainerSize];
    v16 = v15;
    [a1 pageContainerSize];
    if (v17 >= v16)
    {
      PageTraitEnvironment.pageColumnWidth.getter();
    }

    else
    {
      [a1 pageMarginInsets];
      [a1 pageMarginInsets];
    }

    sub_75E650();
    v23 = v11 + v22 + v22;
    sub_769B90();
    sub_769DA0();
    v33 = &type metadata for CGFloat;
    v34 = &protocol witness table for CGFloat;
    v32[0] = v24 + -10.0 - v23;
    sub_10A2C(&v29, &unk_93F9C0);
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
  }

  sub_33B80(&v29, v28);
  v27[12] = &protocol witness table for CGFloat;
  v27[11] = &type metadata for CGFloat;
  v27[8] = 0x4024000000000000;
  sub_134D8(v32, v6);
  (*(v4 + 104))(v6, enum case for BreakoutDetailsLayout.DetailDimension.static(_:), v3);
  if (qword_93DFB0 != -1)
  {
    swift_once();
  }

  v25 = sub_BD88(&unk_94BAB0);
  sub_BE38(v25, qword_9A05F0);
  v27[2] = a1;
  swift_unknownObjectRetain();
  sub_7592B0();
  swift_unknownObjectRelease();
  sub_75E660();
  sub_10A2C(&v29, &unk_93F9C0);
  return sub_BEB8(v32);
}

uint64_t sub_6448E4()
{
  v0 = sub_BD88(&qword_944E50);
  sub_161DC(v0, qword_95FA40);
  sub_BE38(v0, qword_95FA40);
  sub_BD88(&qword_93FBE0);
  type metadata accessor for CGSize(0);
  return sub_7592D0();
}

uint64_t sub_644994()
{
  v0 = sub_BD88(&unk_94BAB0);
  sub_161DC(v0, qword_9A05F0);
  sub_BE38(v0, qword_9A05F0);
  sub_BD88(&qword_93FBE0);
  sub_BD88(&qword_95FAA0);
  return sub_7592D0();
}

char *sub_644A64(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_BD88(&qword_94BAC0);
  __chkstk_darwin(v11 - 8);
  v13 = &v38 - v12;
  v14 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_BD88(&unk_95CF90);
  __chkstk_darwin(v17 - 8);
  v19 = &v38 - v18;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_itemLayoutContext;
  v21 = sub_75C840();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_backgroundArtwork] = 0;
  v22 = OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_detailsView;
  if (qword_93CA70 != -1)
  {
    swift_once();
  }

  v23 = sub_BE38(v14, qword_99CA78);
  sub_FCD60(v23, v16);
  sub_BD88(&qword_93FBE0);
  sub_7592F0();
  v24 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *&v5[v22] = sub_637704(v19);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_pageTraits] = 0;
  sub_759210();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_iconView] = sub_759020();
  v39.receiver = v5;
  v39.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  v26 = [v25 contentView];
  [v26 setClipsToBounds:1];

  v27 = [v25 contentView];
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v28 = OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_iconView;
  v29 = qword_93C538;
  v30 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_iconView];
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = sub_765080();
  v32 = sub_BE38(v31, qword_99B508);
  v33 = *(v31 - 8);
  (*(v33 + 16))(v13, v32, v31);
  (*(v33 + 56))(v13, 0, 1, v31);
  sub_7591C0();

  v34 = *&v25[v28];
  CGAffineTransformMakeRotation(&v38, -0.523598776);
  [v34 setTransform:&v38];
  v35 = [v25 contentView];
  [v35 addSubview:*&v25[v28]];

  v36 = [v25 contentView];
  [v36 addSubview:*&v25[OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_detailsView]];

  return v25;
}

id sub_645024()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7664F0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75E670();
  __chkstk_darwin(v7 - 8);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75E690();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v1;
  v21.super_class = ObjectType;
  result = objc_msgSendSuper2(&v21, "layoutSubviews", v12);
  v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_pageTraits];
  if (v16)
  {
    swift_unknownObjectRetain();
    sub_75D650();
    sub_6443F4(v16, v9);
    v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_iconView];
    sub_769E80();

    v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_detailsView];
    v20[3] = type metadata accessor for BreakoutDetailsView(0);
    v20[4] = &protocol witness table for UIView;
    v20[0] = v18;
    v19 = v18;
    sub_75E680();
    [v1 bounds];
    sub_75E640();
    swift_unknownObjectRelease();
    (*(v4 + 8))(v6, v3);
    return (*(v11 + 8))(v14, v10);
  }

  return result;
}

uint64_t type metadata accessor for SmallBreakoutCollectionViewCell()
{
  result = qword_95FA80;
  if (!qword_95FA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_64542C()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_6454E8()
{
  if (!*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_pageTraits))
  {
    return 0.0;
  }

  swift_getObjectType();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v1 = sub_6456A8();
  swift_unknownObjectRelease();
  return v1;
}

void sub_645578()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_iconView;
  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_iconView);
  sub_759050();

  v4 = *(v1 + v2);
  sub_759210();
  sub_645764(&qword_945810, &type metadata accessor for ArtworkView);
  v5 = v4;
  sub_75A0C0();
}

uint64_t sub_645650(uint64_t a1)
{
  result = sub_645764(&qword_95FA98, type metadata accessor for SmallBreakoutCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

double sub_6456A8()
{
  if (JUScreenClassGetMain() == 1)
  {
    return 194.0;
  }

  if (qword_93DFA8 != -1)
  {
    swift_once();
  }

  v1 = sub_BD88(&qword_944E50);
  sub_BE38(v1, qword_95FA40);
  sub_7592B0();
  return v2;
}

uint64_t sub_645764(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_6457AC()
{
  v1 = v0;
  v2 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_95CF90);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_itemLayoutContext;
  v9 = sub_75C840();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_backgroundArtwork) = 0;
  v10 = OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_detailsView;
  if (qword_93CA70 != -1)
  {
    swift_once();
  }

  v11 = sub_BE38(v2, qword_99CA78);
  sub_FCD60(v11, v4);
  sub_BD88(&qword_93FBE0);
  sub_7592F0();
  v12 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *(v1 + v10) = sub_637704(v7);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_pageTraits) = 0;
  sub_76A840();
  __break(1u);
}

unint64_t sub_6459A8()
{
  result = qword_9411E8;
  if (!qword_9411E8)
  {
    type metadata accessor for SmallLockupCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9411E8);
  }

  return result;
}

double sub_645A00()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SmallLockupView();
  v4 = sub_75DA40();
  sub_75DA20();
  sub_765630();
  (*(v1 + 8))(v3, v0);
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v5 = sub_75CF00();
  v6 = sub_BE38(v5, qword_99B898);
  swift_getObjectType();
  sub_1FE304(v6, v4);
  v8 = v7;
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_645B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_objectGraph);
  *(v6 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_objectGraph) = a3;

  sub_56FA00(v8);

  v9 = [a6 snapshotPageTraitEnvironment];
  *(v6 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_pageTraits) = v9;
  swift_unknownObjectRelease();
  v10 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_flowLayout);
  [a6 pageMarginInsets];
  [v10 setSectionInset:?];

  return sub_56F8F4(v11);
}

uint64_t sub_645D2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SmallGameCenterPlayerLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v106 = a1;
  v102 = a2;
  v101 = sub_7664F0();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_7670F0();
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v96 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v92 = &v66 - v15;
  v98 = sub_767120();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v94 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_75E800();
  v109 = *(v105 - 8);
  v17 = v109;
  __chkstk_darwin(v105);
  v88 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_75E820();
  v108 = *(v104 - 8);
  __chkstk_darwin(v104);
  v85 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_75E840();
  v107 = *(v75 - 8);
  v20 = v107;
  __chkstk_darwin(v75);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v22;
  v90 = sub_75E870();
  v91 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170(v6 + 21, v6[24]);
  v123.origin.x = a3;
  v123.origin.y = a4;
  v123.size.width = a5;
  v123.size.height = a6;
  CGRectGetMinX(v123);
  v124.origin.x = a3;
  v124.origin.y = a4;
  v124.size.width = a5;
  v124.size.height = a6;
  CGRectGetMinY(v124);
  sub_769D20();
  sub_766530();
  sub_BD88(&qword_9417D8);
  v24 = *(sub_75E850() - 8);
  v86 = *(v24 + 72);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  v87 = v26;
  *(v26 + 16) = xmmword_77E280;
  v69 = v26 + v25;
  v103 = v7;
  v27 = v7[34];
  v28 = v7[35];
  v29 = sub_B170(v7 + 31, v27);
  v121 = v27;
  v122 = *(v28 + 8);
  v30 = sub_B1B4(&v120);
  (*(*(v27 - 8) + 16))(v30, v29, v27);
  v82 = enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:);
  v31 = *(v20 + 104);
  v83 = v20 + 104;
  v84 = v31;
  v31(v22);
  v81 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:);
  v32 = v108;
  v33 = *(v108 + 104);
  v79 = v108 + 104;
  v80 = v33;
  v34 = v85;
  v33(v85);
  v118 = &type metadata for Double;
  v119 = &protocol witness table for Double;
  v117 = 0;
  v78 = sub_BD88(&qword_9417E0);
  v77 = *(v17 + 72);
  v35 = v109;
  v36 = swift_allocObject();
  v76 = xmmword_77B6D0;
  *(v36 + 16) = xmmword_77B6D0;
  sub_75E7D0();
  v114 = v36;
  v73 = sub_2472C4(&qword_9417E8, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition);
  v72 = sub_BD88(&qword_9417F0);
  v74 = sub_7DCC8();
  v37 = v88;
  v38 = v105;
  sub_76A5A0();
  v39 = v103;
  v40 = v67;
  sub_75E830();
  v41 = *(v35 + 8);
  v109 = v35 + 8;
  v71 = v41;
  v41(v37, v38);
  v42 = *(v32 + 8);
  v108 = v32 + 8;
  v70 = v42;
  v43 = v34;
  v44 = v104;
  v42(v34, v104);
  v45 = *(v107 + 8);
  v107 += 8;
  v68 = v45;
  v46 = v75;
  v45(v40, v75);
  sub_34630(&v117);
  sub_BEB8(&v120);
  v47 = v39;
  v48 = v39[29];
  v49 = v47[30];
  v50 = sub_B170(v47 + 26, v48);
  v121 = v48;
  v122 = *(v49 + 8);
  v51 = sub_B1B4(&v120);
  (*(*(v48 - 8) + 16))(v51, v50, v48);
  v84(v40, v82, v46);
  v80(v43, v81, v44);
  v119 = &protocol witness table for Double;
  v118 = &type metadata for Double;
  v117 = 0;
  v52 = swift_allocObject();
  *(v52 + 16) = v76;
  sub_75E7D0();
  v114 = v52;
  v53 = v105;
  sub_76A5A0();
  v54 = v103;
  sub_75E830();
  v71(v37, v53);
  v70(v43, v44);
  v68(v40, v46);
  sub_34630(&v117);
  sub_BEB8(&v120);
  v55 = v89;
  sub_75E810();
  v56 = v90;
  v121 = v90;
  v122 = sub_2472C4(&qword_9464F0, &type metadata accessor for _VerticalFlowLayout);
  v57 = sub_B1B4(&v120);
  v58 = v91;
  (*(v91 + 16))(v57, v55, v56);
  sub_134D8((v54 + 21), &v117);
  v59 = v54[5];
  v115 = &type metadata for CGFloat;
  v116 = &protocol witness table for CGFloat;
  v114 = v59;
  v60 = enum case for FlankedHorizontalLayout.ViewAlignment.center(_:);
  v61 = *(v93 + 104);
  v62 = v95;
  v61(v92, enum case for FlankedHorizontalLayout.ViewAlignment.center(_:), v95);
  v113 = 0;
  v112 = 0u;
  v111 = 0u;
  v110[3] = sub_766970();
  v110[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v110);
  sub_766960();
  v61(v96, v60, v62);
  v63 = v94;
  sub_767110();
  v64 = v99;
  sub_767100();
  (*(v100 + 8))(v64, v101);
  sub_7664B0();
  (*(v97 + 8))(v63, v98);
  return (*(v58 + 8))(v55, v56);
}

void SmallGameCenterPlayerLayout.Metrics.avatarInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

uint64_t SmallGameCenterPlayerLayout.Metrics.aliasTopSpace.setter(__int128 *a1)
{
  sub_BEB8(v1 + 48);

  return sub_34698(a1, v1 + 48);
}

uint64_t SmallGameCenterPlayerLayout.Metrics.displayNameTopSpace.setter(__int128 *a1)
{
  sub_BEB8(v1 + 88);

  return sub_34698(a1, v1 + 88);
}

uint64_t SmallGameCenterPlayerLayout.Metrics.displayNameBottomSpace.setter(__int128 *a1)
{
  sub_BEB8(v1 + 128);

  return sub_34698(a1, v1 + 128);
}

double SmallGameCenterPlayerLayout.measurements(fitting:in:)(uint64_t a1, double a2)
{
  swift_getObjectType();

  return sub_646C6C(a1, v2, a2);
}

double sub_646C6C(uint64_t a1, void *a2, double a3)
{
  v73 = a1;
  v75 = sub_76A920();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_75E800();
  v79 = *(v77 - 8);
  v6 = v79;
  __chkstk_darwin(v77);
  v66 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_75E820();
  v80 = *(v76 - 8);
  __chkstk_darwin(v76);
  v59 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_75E840();
  v78 = *(v55 - 8);
  v9 = v78;
  __chkstk_darwin(v55);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v11;
  v70 = sub_75E870();
  v71 = *(v70 - 8);
  __chkstk_darwin(v70);
  v69 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&qword_9417D8);
  v13 = *(sub_75E850() - 8);
  v67 = *(v13 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  v68 = v15;
  *(v15 + 16) = xmmword_77E280;
  v48 = v15 + v14;
  v16 = a2[34];
  v17 = a2[35];
  v18 = sub_B170(a2 + 31, v16);
  v86 = v16;
  v87 = *(v17 + 8);
  v19 = sub_B1B4(v85);
  (*(*(v16 - 8) + 16))(v19, v18, v16);
  v63 = enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:);
  v20 = *(v9 + 104);
  v64 = v9 + 104;
  v65 = v20;
  v20(v11);
  v62 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:);
  v21 = *(v80 + 104);
  v60 = v80 + 104;
  v61 = v21;
  v22 = v59;
  v23 = v76;
  v21(v59);
  v83 = &type metadata for Double;
  v84 = &protocol witness table for Double;
  v82 = 0;
  v58 = sub_BD88(&qword_9417E0);
  v57 = *(v6 + 72);
  v24 = v79;
  v51 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v25 = swift_allocObject();
  v56 = xmmword_77B6D0;
  *(v25 + 16) = xmmword_77B6D0;
  sub_75E7D0();
  v81 = v25;
  v53 = sub_2472C4(&qword_9417E8, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition);
  v52 = sub_BD88(&qword_9417F0);
  v54 = sub_7DCC8();
  v26 = v66;
  v27 = v77;
  sub_76A5A0();
  v28 = v47;
  v29 = v22;
  sub_75E830();
  v30 = *(v24 + 8);
  v79 = v24 + 8;
  v50 = v30;
  v31 = v26;
  v30(v26, v27);
  v32 = *(v80 + 8);
  v80 += 8;
  v49 = v32;
  v32(v29, v23);
  v46 = *(v78 + 8);
  v78 += 8;
  v33 = v28;
  v34 = v55;
  v46(v28, v55);
  sub_34630(&v82);
  sub_BEB8(v85);
  v36 = a2[29];
  v35 = a2[30];
  v37 = sub_B170(a2 + 26, v36);
  v86 = v36;
  v87 = *(v35 + 8);
  v38 = sub_B1B4(v85);
  (*(*(v36 - 8) + 16))(v38, v37, v36);
  v65(v33, v63, v34);
  v39 = v76;
  v61(v29, v62, v76);
  v84 = &protocol witness table for Double;
  v83 = &type metadata for Double;
  v82 = 0;
  v40 = swift_allocObject();
  *(v40 + 16) = v56;
  sub_75E7D0();
  v81 = v40;
  v41 = v77;
  sub_76A5A0();
  sub_75E830();
  v50(v31, v41);
  v49(v29, v39);
  v46(v33, v34);
  sub_34630(&v82);
  sub_BEB8(v85);
  v42 = v69;
  sub_75E810();
  sub_2472C4(&qword_94B228, &type metadata accessor for _VerticalFlowLayout);
  v43 = v70;
  sub_7665A0();
  sub_B170(a2 + 16, a2[19]);
  v44 = v72;
  sub_33964();
  sub_766700();
  (*(v74 + 8))(v44, v75);
  (*(v71 + 8))(v42, v43);
  return a3;
}

uint64_t sub_647630(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_647678(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_647714(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_64775C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Void __swiftcall UIImageView.show(image:isAnimationPermitted:)(UIImage_optional image, Swift::Bool isAnimationPermitted)
{
  v3 = v2;
  isa = image.value.super.isa;
  if (!image.is_nil)
  {
    goto LABEL_4;
  }

  v5 = [v3 image];
  if (v5)
  {

LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  v6 = 1;
LABEL_5:
  v7 = [v3 layer];
  [v7 removeAllAnimations];

  if (isa)
  {
    if (v6)
    {
      v8 = isa;
      [v3 setAlpha:0.0];
      [v3 setImage:v8];
      sub_BE70(0, &qword_94B6A0);
      v9 = sub_769B70();
      v10 = swift_allocObject();
      *(v10 + 16) = v3;
      v15[4] = sub_255220;
      v15[5] = v10;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 1107296256;
      v15[2] = sub_23F0CC;
      v15[3] = &unk_89B430;
      v11 = _Block_copy(v15);
      v12 = v3;

      [v9 addAnimations:v11];
      _Block_release(v11);
      [v9 startAnimation];

      return;
    }

    v13 = v3;
    v14 = isa;
  }

  else
  {
    v13 = v3;
    v14 = 0;
  }

  [v13 setImage:v14];
}

uint64_t sub_6479D4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_647A0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_647A28()
{
  v1 = [v0 image];

  return v1;
}

void sub_647A60(void *a1)
{
  [v1 setImage:a1];
}

void (*sub_647AA8(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 image];
  return sub_647B04;
}

void sub_647B04(id *a1)
{
  v1 = *a1;
  [a1[1] setImage:?];
}

char *sub_647B50(char *a1)
{
  v2 = v1;
  v1[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_isExpanded] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_videoMirrorView;
  if (qword_93C4A0 != -1)
  {
    swift_once();
  }

  v14[4] = *&byte_99B328[64];
  v14[5] = *&byte_99B328[80];
  v14[6] = *&byte_99B328[96];
  v14[7] = *&byte_99B328[112];
  v14[0] = *byte_99B328;
  v14[1] = *&byte_99B328[16];
  v14[2] = *&byte_99B328[32];
  v14[3] = *&byte_99B328[48];
  v5 = objc_allocWithZone(type metadata accessor for VideoMirrorView());
  *&v1[v4] = sub_69A56C(0, v14, 1.0, 0.0);
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_artworkLayoutWithMetrics] = 0;
  v6 = &v1[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_artworkSize];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_pageGrid;
  v8 = sub_7656C0();
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  v2[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_sizeCategory] = 7;
  v2[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_isMirroring] = 0;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for RevealingVideoMirrorView();
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v9 setClipsToBounds:1];
  v10 = &a1[OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_mirrorDelegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v10 + 1) = &off_89B458;
  swift_unknownObjectWeakAssign();
  sub_247DF0(Strong);

  [v9 addSubview:*&v9[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_videoMirrorView]];
  return v9;
}

uint64_t sub_647DD8(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_artworkSize;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  return result;
}

uint64_t sub_647DF4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_pageGrid;
  swift_beginAccess();
  sub_A8F3C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_647EC0(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v16 - 8);
  v18 = &v27 - v17;
  swift_unknownObjectWeakAssign();
  *&v8[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_artworkLayoutWithMetrics] = a5;

  sub_5FC64(a6, v18);
  v19 = OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_pageGrid;
  swift_beginAccess();
  sub_A8F3C(v18, &v8[v19]);
  swift_endAccess();
  v8[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_sizeCategory] = a7;
  if ((v8[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_isMirroring] & 1) != 0 || !a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_69AB3C(a1);
    swift_unknownObjectWeakAssign();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      if (Strong)
      {
        type metadata accessor for VideoView();
        v23 = Strong;
        v24 = sub_76A1C0();

        if (v24)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    else if (!Strong)
    {
      goto LABEL_12;
    }

    sub_69B168();
    v23 = Strong;
LABEL_11:
  }

LABEL_12:
  v25 = &v8[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_artworkSize];
  *v25 = a2;
  *(v25 + 1) = a3;
  v25[16] = a4 & 1;
  return [v8 setNeedsLayout];
}

void sub_6480C4()
{
  v1 = sub_763B00();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v43 - v6;
  v8 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v8 - 8);
  v10 = &v43 - v9;
  v11 = sub_7656C0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_artworkLayoutWithMetrics])
  {
    v15 = &v0[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_artworkSize];
    if ((v0[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_artworkSize + 16] & 1) == 0)
    {
      v43 = v2;
      v17 = *v15;
      v16 = v15[1];
      v18 = OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_pageGrid;
      swift_beginAccess();
      sub_5FC64(&v0[v18], v10);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        sub_5FCD4(v10);
        return;
      }

      (*(v12 + 32))(v14, v10, v11);
      v19 = v0[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_sizeCategory];
      if (v19 != 7)
      {

        [v0 bounds];
        v45.origin.x = 0.0;
        v45.origin.y = 0.0;
        v45.size.width = 0.0;
        v45.size.height = 0.0;
        if (CGRectEqualToRect(v44, v45))
        {
          (*(v12 + 8))(v14, v11);

          return;
        }

        v20 = v0;
        sub_2A6324(v19);
        v21 = v43;
        v22 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
        v23 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
        if (v19 != 6)
        {
          v23 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
        }

        if (v19 != 4)
        {
          v22 = v23;
        }

        (*(v43 + 104))(v4, *v22, v1);
        (*(v21 + 32))(v7, v4, v1);
        v24 = sub_769470();

        (*(v21 + 8))(v7, v1);
        v25 = v20[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_isExpanded];
        v26 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_videoMirrorView];
        [v20 bounds];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v35 = [v20 traitCollection];
        v36 = sub_317C38(v35, v28, v30, v32, v34, v17, v16, v24, v25);
        v38 = v37;
        v40 = v39;
        v42 = v41;

        [v26 setFrame:{v36, v38, v40, v42}];
      }

      (*(v12 + 8))(v14, v11);
    }
  }
}

id sub_64853C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RevealingVideoMirrorView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RevealingVideoMirrorView()
{
  result = qword_95FB48;
  if (!qword_95FB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_648634()
{
  sub_2491AC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_648708()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_isExpanded) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_videoMirrorView;
  if (qword_93C4A0 != -1)
  {
    swift_once();
  }

  v7[4] = *&byte_99B328[64];
  v7[5] = *&byte_99B328[80];
  v7[6] = *&byte_99B328[96];
  v7[7] = *&byte_99B328[112];
  v7[0] = *byte_99B328;
  v7[1] = *&byte_99B328[16];
  v7[2] = *&byte_99B328[32];
  v7[3] = *&byte_99B328[48];
  v3 = objc_allocWithZone(type metadata accessor for VideoMirrorView());
  *(v0 + v2) = sub_69A56C(0, v7, 1.0, 0.0);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_artworkLayoutWithMetrics) = 0;
  v4 = v0 + OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_artworkSize;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  v5 = OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_pageGrid;
  v6 = sub_7656C0();
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_sizeCategory) = 7;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_isMirroring) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_64889C()
{
  v0 = sub_BD88(&qword_940A60);
  __chkstk_darwin(v0 - 8);
  v1 = sub_765610();
  __chkstk_darwin(v1 - 8);
  v2 = sub_BD88(&qword_940A68);
  __chkstk_darwin(v2 - 8);
  __chkstk_darwin(v3);
  __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  sub_BD88(&qword_940A70);
  sub_765540();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_77E280;
  sub_62634();
  sub_7655D0();
  sub_7655C0();
  sub_7655D0();
  sub_765600();
  sub_7655D0();
  sub_7655D0();
  sub_765500();
  sub_7655D0();
  sub_7655C0();
  sub_7655B0();
  sub_765600();
  sub_7697A0();
  sub_7655D0();
  sub_7655D0();
  result = sub_765500();
  qword_9A0640 = v6;
  return result;
}

uint64_t sub_648C9C()
{
  v0 = sub_BD88(&qword_955818);
  sub_161DC(v0, qword_95FB60);
  sub_BE38(v0, qword_95FB60);
  sub_BD88(&qword_93FBE0);
  type metadata accessor for UIRectEdge(0);
  return sub_7592C0();
}

void sub_648D40(void *a1, void *a2, char a3)
{
  v61 = a1;
  v62 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_768C60();
  v59 = *(v6 - 8);
  *&v60 = v6;
  __chkstk_darwin(v6);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&qword_94BAC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v58 - v10;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissTapGestureRecognizer] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissSwipeGestureRecognizer] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_transitioningViewProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_disableDismissGestures] = 0;
  v12 = &v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_interactiveDismissal];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissCompleted] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_scrollDismissInitialTranslationY] = 0;
  v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_isScrollDismissActive] = 0;
  v13 = [objc_opt_self() effectWithBlurRadius:50.0];
  v14 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v13];

  *&v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayBlurView] = v14;
  v15 = [objc_allocWithZone(UIView) init];
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayTintView] = v15;
  sub_758E80();
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_shadowView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for TransitioningPresentedContainerView();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_presentedContainerView;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_presentedContainerView] = v16;
  v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_shouldUseReducedMotionTransition] = a3;
  v18 = sub_7653A0();
  *(&v66 + 1) = v18;
  v67 = sub_21E944();
  v19 = sub_B1B4(&v65);
  (*(*(v18 - 8) + 104))(v19, enum case for Feature.iOS.today_tab_largest_ax_support(_:), v18);
  LOBYTE(v18) = sub_765C30();
  sub_BEB8(&v65);
  if ((v18 & 1) == 0)
  {
    [*&v3[v17] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  }

  v64.receiver = v3;
  v64.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v64, "initWithPresentedViewController:presentingViewController:", v61, v62);
  v21 = objc_allocWithZone(UITapGestureRecognizer);
  v22 = v20;
  v23 = [v21 initWithTarget:v22 action:"dismissTapDidChange:"];
  v24 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissTapGestureRecognizer];
  *&v22[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissTapGestureRecognizer] = v23;
  v25 = v23;

  if (!v25)
  {
    __break(1u);
    goto LABEL_12;
  }

  v26 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayBlurView];
  [v26 addGestureRecognizer:v25];

  v27 = OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayTintView;
  [*&v22[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayTintView] setUserInteractionEnabled:0];
  v28 = *&v22[v27];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 blackColor];
  [v30 setBackgroundColor:v31];

  [*&v22[v27] setAlpha:0.0];
  v32 = [objc_allocWithZone(UIScreenEdgePanGestureRecognizer) initWithTarget:v22 action:"edgePanDidChange:"];
  v33 = OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissSwipeGestureRecognizer;
  v34 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
  *&v22[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissSwipeGestureRecognizer] = v32;
  v35 = v32;

  if (!v35)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  if (qword_93DFC0 != -1)
  {
    swift_once();
  }

  v36 = sub_BD88(&qword_955818);
  sub_BE38(v36, qword_95FB60);
  v63 = v22;
  v37 = v22;
  sub_7592B0();

  [v35 setEdges:v65];
  if (!*&v22[v33])
  {
    goto LABEL_13;
  }

  v38 = OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_presentedContainerView;
  [*&v37[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_presentedContainerView] addGestureRecognizer:?];
  v39 = OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_shadowView;
  v40 = qword_93C528;
  v41 = *&v37[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_shadowView];
  if (v40 != -1)
  {
    swift_once();
  }

  v42 = sub_765080();
  v43 = sub_BE38(v42, qword_99B4D8);
  v44 = *(v42 - 8);
  (*(v44 + 16))(v11, v43, v42);
  (*(v44 + 56))(v11, 0, 1, v42);
  sub_758E60();

  v45 = [*&v37[v39] layer];
  [v45 setMaskedCorners:3];

  [*&v37[v39] _setContinuousCornerRadius:20.0];
  [*&v37[v39] setAutoresizingMask:18];
  v46 = *&v37[v39];
  sub_758E40();

  [*&v37[v38] setClipsToBounds:0];
  v47 = *&v37[v38];
  v48 = *&v37[v39];
  [v47 bounds];
  [v48 setFrame:?];

  [*&v37[v38] addSubview:*&v37[v39]];
  v49 = *&v37[v38];
  v65 = 0u;
  v66 = 0u;
  v50 = v49;
  sub_768C20();
  sub_10A2C(&v65, &unk_93FBD0);
  sub_769E70();

  (*(v59 + 8))(v8, v60);
  sub_BD88(&qword_9477F0);
  v51 = swift_allocObject();
  v60 = xmmword_77B6D0;
  *(v51 + 16) = xmmword_77B6D0;
  *(v51 + 32) = sub_7676E0();
  *(v51 + 40) = &protocol witness table for UITraitLayoutDirection;
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  *(v53 + 16) = v52;
  *(v53 + 24) = ObjectType;
  v54 = v37;
  sub_769C30();
  swift_unknownObjectRelease();

  v55 = swift_allocObject();
  *(v55 + 16) = v60;
  *(v55 + 32) = sub_767890();
  *(v55 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  *(v57 + 24) = ObjectType;
  sub_769C30();

  swift_unknownObjectRelease();
}

void sub_649604(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong traitCollection];
    v6 = [v5 layoutDirection];

    if (v6 == [a2 layoutDirection])
    {
    }

    else
    {
      v7 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
      if (v7)
      {
        v8 = qword_93DFC0;
        v9 = v7;
        if (v8 != -1)
        {
          swift_once();
        }

        v10 = sub_BD88(&qword_955818);
        sub_BE38(v10, qword_95FB60);
        v11 = v4;
        sub_7592B0();

        [v9 setEdges:v12];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_649760()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_64C528();
  }
}

void sub_6497B4(char a1)
{
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_disableDismissGestures] == (a1 & 1))
  {
    return;
  }

  v2 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissTapGestureRecognizer];
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_disableDismissGestures])
  {
    if (v2)
    {
      [v2 setEnabled:0];
      v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
      if (v3)
      {
        [v3 setEnabled:0];
        v4 = &v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_interactiveDismissal];
        swift_beginAccess();
        if (*(v4 + 24))
        {
          sub_134D8(v4, &v11);
          v5 = *(&v12 + 1);
          v6 = v13;
          sub_B170(&v11, *(&v12 + 1));
          (*(v6 + 32))(v5, v6);
          sub_BEB8(&v11);
        }

        v13 = 0;
        v11 = 0u;
        v12 = 0u;
        swift_beginAccess();
        sub_48D354(&v11, v4);
        swift_endAccess();
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v2)
  {
    goto LABEL_15;
  }

  [v2 setEnabled:1];
  v7 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
  if (!v7)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v10 = v7;
  v8 = [v1 traitCollection];
  v9 = [v8 horizontalSizeClass];

  [v10 setEnabled:v9 != &dword_0 + 2];
}

void sub_6499F4()
{
  v1 = sub_7656A0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v35 - v6;
  v8 = sub_7656C0();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v0 containerView];
  if (!v13)
  {
    return;
  }

  v14 = v13;
  v37 = v9;
  v15 = [v0 traitCollection];
  v16 = [v15 horizontalSizeClass];

  if (v16 != &dword_0 + 2)
  {
    [v14 bounds];

    return;
  }

  v36 = v8;
  (*(v2 + 104))(v7, enum case for PageGrid.Direction.vertical(_:), v1);
  v17 = [v0 presentingViewController];
  v18 = [v17 view];

  if (!v18)
  {
    __break(1u);
    goto LABEL_17;
  }

  [v18 bounds];
  v20 = v19;
  v22 = v21;

  v23 = [v0 presentingViewController];
  v24 = [v23 view];

  if (!v24)
  {
LABEL_17:
    __break(1u);
    return;
  }

  [v24 safeAreaInsets];

  (*(v2 + 16))(v4, v7, v1);
  v25 = v36;
  if (qword_93C248 != -1)
  {
    swift_once();
  }

  sub_765670();
  (*(v2 + 8))(v7, v1);
  v26 = [v0 presentingViewController];
  v27 = [v26 traitCollection];

  sub_765580();
  v29 = v28;
  LOBYTE(v26) = sub_7699E0();

  if (v26)
  {
    if (v29 + -160.0 <= 672.0)
    {
      v29 = v29 + -160.0;
    }

    else
    {
      v29 = 672.0;
    }

    if (v29 < 533.0)
    {
      v29 = 533.0;
    }
  }

  [v14 bounds];
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  v34 = CGRectGetMidX(v38) + v29 * -0.5;
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  CGRectGetMinY(v39);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  CGRectGetHeight(v40);

  sub_64C728(v34);
  (*(v37 + 8))(v12, v25);
}

double *sub_649F08()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v1 = Strong;
      v2 = sub_AACD0();
      swift_unknownObjectRelease();

      return v2;
    }

    swift_unknownObjectRelease();
  }

  return _swiftEmptyArrayStorage;
}

void sub_649F8C(void *a1, void *a2)
{
  v3 = v2;
  v18.receiver = v3;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  v6 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
  if (v6)
  {
    v7 = v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_disableDismissGestures];
    v8 = v6;
    v9 = (v7 & 1) == 0 && [a1 horizontalSizeClass] != &dword_0 + 2;
    [v8 setEnabled:v9];

    v10 = [v3 containerView];
    if (v10)
    {
      v11 = v10;
      v12 = swift_allocObject();
      v12[2] = v3;
      v12[3] = a1;
      v12[4] = v11;
      v17[4] = sub_64C7F0;
      v17[5] = v12;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 1107296256;
      v17[2] = sub_6C6800;
      v17[3] = &unk_89B670;
      v13 = _Block_copy(v17);
      v14 = v3;
      v15 = a1;
      v16 = v11;

      [a2 animateAlongsideTransition:v13 completion:0];
      _Block_release(v13);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_64A130(int a1, char *a2, void *a3, void *a4)
{
  v7 = [a2 presentedViewController];
  v18 = [v7 view];

  if ([a3 horizontalSizeClass] == &dword_0 + 2)
  {
    if (v18)
    {
      v8 = *&a2[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_shadowView];
      v9 = v18;
      [v8 _continuousCornerRadius];
      [v9 _setContinuousCornerRadius:?];
    }
  }

  else if (v18)
  {
    [v18 _setContinuousCornerRadius:0.0];
  }

  [a4 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [*&a2[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayBlurView] setFrame:?];
  [*&a2[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayTintView] setFrame:{v11, v13, v15, v17}];
}

void sub_64A31C(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  *(*&v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_presentedContainerView] + OBJC_IVAR____TtC18ASMessagesProvider35TransitioningPresentedContainerView_hidesInsertedSubviews) = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v10[4] = sub_64C784;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_6C6800;
  v10[3] = &unk_89B620;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:0 completion:v8];
  _Block_release(v8);
}

void sub_64A4D0()
{
  v1 = [v0 containerView];
  if (v1)
  {
    v10 = v1;
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    [*&v0[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayBlurView] setFrame:?];
    [*&v0[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayTintView] setFrame:{v3, v5, v7, v9}];
    sub_6499F4();
    [*&v0[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_presentedContainerView] setFrame:?];
  }
}

void sub_64A618()
{
  v1 = v0;
  v2 = [v0 containerView];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayBlurView];
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayBlurView] setFrame:?];
    v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayTintView];
    [v13 setFrame:{v5, v7, v9, v11}];
    [v3 addSubview:v13];
    [v3 addSubview:v12];
    v14 = [v1 presentedViewController];
    v15 = [v14 view];

    if (v15)
    {
      v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_presentedContainerView];
      [v16 bounds];
      [v15 setFrame:?];
      [v15 setAutoresizingMask:18];
      [v16 addSubview:v15];
    }

    v17 = v13;
    v18 = v12;
    v19 = [v1 presentedViewController];
    v20 = [v19 view];

    if (v20)
    {
      v21 = &v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_transitioningViewProvider];
      Strong = swift_unknownObjectWeakLoadStrong();
      v23 = *(v21 + 1);
      v24 = [v1 traitCollection];
      v25 = v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_shouldUseReducedMotionTransition];
      type metadata accessor for TodayTransitionCompanionAnimations();
      v26 = swift_allocObject();
      *(v26 + 88) = 0;
      swift_unknownObjectWeakInit();
      *(v26 + 104) = 0;
      *(v26 + 112) = 0;
      *(v26 + 32) = v17;
      *(v26 + 40) = v18;
      *(v26 + 56) = v20;
      if (Strong)
      {
        v27 = swift_unknownObjectWeakLoadStrong();
        if (v27)
        {
          v28 = v27;
          swift_unknownObjectRetain();
          v29 = sub_AACD0();
          swift_unknownObjectRelease();
        }

        else
        {
          v29 = _swiftEmptyArrayStorage;
        }

        *(v26 + 64) = v29;
        v31 = swift_unknownObjectWeakLoadStrong();
        if (v31)
        {
          v32 = v31;
          v33 = [v31 collectionView];
        }

        else
        {
          v33 = 0;
        }

        *(v26 + 48) = v33;
        swift_unknownObjectRetain();
        v34 = sub_28C7FC();
        swift_unknownObjectRelease();
        *(v26 + 16) = v34;
        swift_unknownObjectRetain();
        v30 = sub_28C880();
        swift_unknownObjectRelease();
      }

      else
      {
        v30 = 0;
        *(v26 + 64) = _swiftEmptyArrayStorage;
        *(v26 + 48) = 0;
        *(v26 + 16) = 0;
      }

      *(v26 + 24) = v30;
      *(v26 + 88) = v23;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
      *(v26 + 96) = v24;
      *(v26 + 72) = v25;
      v35 = objc_opt_self();
      v36 = swift_allocObject();
      *(v36 + 16) = sub_64C6DC;
      *(v36 + 24) = v26;
      v46 = sub_47164;
      v47 = v36;
      v42 = _NSConcreteStackBlock;
      v43 = 1107296256;
      v44 = sub_1EB578;
      v45 = &unk_89B580;
      v37 = _Block_copy(&v42);

      [v35 performWithoutAnimation:v37];
      _Block_release(v37);
      LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

      if ((v35 & 1) == 0)
      {
        v38 = [v1 presentedViewController];
        v39 = [v38 transitionCoordinator];

        if (v39)
        {
          v46 = sub_64C6F4;
          v47 = v26;
          v42 = _NSConcreteStackBlock;
          v43 = 1107296256;
          v44 = sub_6C6800;
          v45 = &unk_89B5A8;
          v40 = _Block_copy(&v42);

          v46 = sub_64C6F8;
          v47 = v26;
          v42 = _NSConcreteStackBlock;
          v43 = 1107296256;
          v44 = sub_6C6800;
          v45 = &unk_89B5D0;
          v41 = _Block_copy(&v42);

          [v39 animateAlongsideTransition:v40 completion:v41];

          _Block_release(v41);
          _Block_release(v40);
          swift_unknownObjectRelease();
        }

        else
        {
        }

        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_64AC28(char a1)
{
  if (a1)
  {
    v2 = [v1 presentedViewController];
    v3 = [v2 isViewLoaded];

    if (!v3)
    {
      return;
    }

    v4 = [v1 presentedViewController];
    v7 = [v4 contentScrollView];

    sub_64C608(&selRef_removeTarget_action_, &selRef__removeScrollViewScrollObserver_);
    swift_unknownObjectWeakAssign();
    sub_64C608(&selRef_addTarget_action_, &selRef__addScrollViewScrollObserver_);
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayBlurView] removeFromSuperview];
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayTintView] removeFromSuperview];
    v5 = [v1 presentedViewController];
    v7 = [v5 view];

    if (!v7)
    {
      return;
    }

    [v7 setClipsToBounds:0];
    v6 = [v7 layer];
    [v6 setMaskedCorners:15];

    [v7 _setContinuousCornerRadius:0.0];
  }
}

void sub_64AE40()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayBlurView];
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayTintView];
  v4 = v2;
  v5 = [v1 presentedViewController];
  v6 = [v5 view];

  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = &v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_transitioningViewProvider];
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 1);
  v10 = [v1 traitCollection];
  v11 = v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_shouldUseReducedMotionTransition];
  type metadata accessor for TodayTransitionCompanionAnimations();
  v12 = swift_allocObject();
  *(v12 + 88) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + 104) = 0;
  *(v12 + 112) = 0;
  *(v12 + 32) = v3;
  *(v12 + 40) = v4;
  *(v12 + 56) = v6;
  if (Strong)
  {
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      swift_unknownObjectRetain();
      v15 = sub_AACD0();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }

    *(v12 + 64) = v15;
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = [v17 collectionView];
    }

    else
    {
      v19 = 0;
    }

    *(v12 + 48) = v19;
    swift_unknownObjectRetain();
    v20 = sub_28C7FC();
    swift_unknownObjectRelease();
    *(v12 + 16) = v20;
    swift_unknownObjectRetain();
    v16 = sub_28C880();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0;
    *(v12 + 64) = _swiftEmptyArrayStorage;
    *(v12 + 48) = 0;
    *(v12 + 16) = 0;
  }

  *(v12 + 24) = v16;
  *(v12 + 88) = v9;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v12 + 96) = v10;
  *(v12 + 72) = v11;
  v21 = objc_opt_self();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_64C490;
  *(v22 + 24) = v12;
  v34 = sub_2EC28;
  v35 = v22;
  v30 = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1EB578;
  v33 = &unk_89B4B8;
  v23 = _Block_copy(&v30);

  [v21 performWithoutAnimation:v23];
  _Block_release(v23);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v24 = [v1 presentedViewController];
  v25 = [v24 transitionCoordinator];

  if (v25)
  {
    v26 = swift_allocObject();
    *(v26 + 16) = v12;
    *(v26 + 24) = v1;
    v34 = sub_64C4F0;
    v35 = v26;
    v30 = _NSConcreteStackBlock;
    v31 = 1107296256;
    v32 = sub_6C6800;
    v33 = &unk_89B508;
    v27 = _Block_copy(&v30);

    v28 = v1;

    v34 = sub_64C4F8;
    v35 = v12;
    v30 = _NSConcreteStackBlock;
    v31 = 1107296256;
    v32 = sub_6C6800;
    v33 = &unk_89B530;
    v29 = _Block_copy(&v30);

    [v25 animateAlongsideTransition:v27 completion:v29];

    _Block_release(v29);
    _Block_release(v27);
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_64B300(uint64_t a1, uint64_t a2, void *a3)
{
  sub_336118();
  v4 = [a3 presentedViewController];
  [v4 setNeedsStatusBarAppearanceUpdate];
}

uint64_t sub_64B36C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v6 = 0;
    while ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_76A770();
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_13;
      }

LABEL_9:
      v9 = *(v7 + 48);
      if (v9)
      {

        v9(v10);

        sub_F704(v9);
      }

      else
      {
      }

      ++v6;
      if (v8 == i)
      {
        goto LABEL_16;
      }
    }

    if (v6 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_14;
    }

    v7 = *(v4 + 8 * v6 + 32);

    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
}

void sub_64B5F8(void *a1)
{
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_presentedContainerView] frame];
  v3 = CGRectGetWidth(v30) * 0.28;
  [a1 translationInView:0];
  v5 = fabs(v4);
  if (v5 >= v3)
  {
    v5 = v3;
  }

  v6 = v5 / v3;
  v7 = [a1 state];
  if (v7 > 2)
  {
    if ((v7 - 4) >= 2)
    {
      if (v7 != &dword_0 + 3)
      {
        return;
      }

      if (v6 == 1.0)
      {
LABEL_16:
        v11 = [v1 presentedViewController];
        [v11 dismissViewControllerAnimated:1 completion:0];

        v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissCompleted] = 1;
        return;
      }
    }

    goto LABEL_10;
  }

  if (!v7)
  {
LABEL_10:
    if (v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissCompleted])
    {
      return;
    }

    v8 = &v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_interactiveDismissal];
    swift_beginAccess();
    if (*(v8 + 24))
    {
      sub_134D8(v8, &v27);
      v9 = *(&v28 + 1);
      v10 = v29;
      sub_B170(&v27, *(&v28 + 1));
      (v10[4])(v9, v10);
      sub_BEB8(&v27);
    }

    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    swift_beginAccess();
    sub_48D354(&v27, v8);
    goto LABEL_21;
  }

  if (v7 == &dword_0 + 1)
  {
    sub_BD88(&unk_93F5C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_77B6C0;
    v13 = [v1 presentedViewController];
    v14 = [v13 view];

    if (!v14)
    {
      __break(1u);
      return;
    }

    v15 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_shadowView];
    *(v12 + 32) = v14;
    *(v12 + 40) = v15;
    v16 = v15;
    v17 = v1;
    v18 = sub_649F08();
    if (v18 >> 62)
    {
      sub_2630C();
      v19 = sub_76A850();
    }

    else
    {

      sub_76A960();
      sub_2630C();
      v19 = v18;
    }

    v20 = v17;
    v21 = [v17 traitCollection];
    *(&v28 + 1) = &type metadata for ScaleDownInteractiveDismissal;
    v29 = &off_894678;
    v22 = swift_allocObject();
    *&v27 = v22;
    *(v22 + 16) = v12;
    *(v22 + 24) = v19;
    *(v22 + 32) = v21;
    *(v22 + 40) = 1;
    *(v22 + 48) = 0x3FEA3D70A3D70A3DLL;
    v23 = OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_interactiveDismissal;
    swift_beginAccess();
    sub_48D354(&v27, v20 + v23);
LABEL_21:
    swift_endAccess();
    return;
  }

  if (v7 == &dword_0 + 2)
  {
    if (v6 == 1.0)
    {
      goto LABEL_16;
    }

    v24 = &v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_interactiveDismissal];
    swift_beginAccess();
    if (*(v24 + 24))
    {
      sub_134D8(v24, &v27);
      v25 = *(&v28 + 1);
      v26 = v29;
      sub_B170(&v27, *(&v28 + 1));
      (v26[2])(v25, v26, v6);
      sub_BEB8(&v27);
    }
  }
}

void sub_64BA58(void *a1)
{
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_disableDismissGestures])
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v52 = Strong;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_isScrollDismissActive;
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_isScrollDismissActive] != 1)
  {
    if ([a1 state] != &dword_0 + 1 && objc_msgSend(a1, "state") != &dword_0 + 2)
    {
      goto LABEL_36;
    }

    [v52 contentOffset];
    v14 = v13;
    [v52 adjustedContentInset];
    if (v14 + v15 > 0.0)
    {
      goto LABEL_36;
    }

    [a1 velocityInView:v52];
    if (v16 <= 0.0)
    {
      goto LABEL_36;
    }

    [v52 adjustedContentInset];
    [v52 contentOffset];
    [v52 setContentOffset:?];
    v17 = [v1 traitCollection];
    v18 = [v17 horizontalSizeClass];

    if (v18 == &dword_0 + 1)
    {
      sub_BD88(&unk_93F5C0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_77B6C0;
      v20 = [v1 presentedViewController];
      v21 = [v20 view];

      if (v21)
      {
        v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_shadowView];
        *(v19 + 32) = v21;
        *(v19 + 40) = v22;
        v23 = v22;
        v24 = sub_649F08();
        if (v24 >> 62)
        {
          sub_2630C();
          v25 = sub_76A850();
        }

        else
        {

          sub_76A960();
          sub_2630C();
          v25 = v24;
        }

        v26 = [v1 traitCollection];
        *(&v54 + 1) = &type metadata for ScaleDownInteractiveDismissal;
        v55 = &off_894678;
        v27 = swift_allocObject();
        *&v53 = v27;
        *(v27 + 16) = v19;
        *(v27 + 24) = v25;
        *(v27 + 32) = v26;
        *(v27 + 40) = 1;
        *(v27 + 48) = 0x3FEA3D70A3D70A3DLL;
        v28 = OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_interactiveDismissal;
        swift_beginAccess();
        v29 = &v1[v28];
LABEL_43:
        sub_48D354(&v53, v29);
        swift_endAccess();
        v45 = swift_unknownObjectWeakLoadStrong();
        if (v45)
        {
          v46 = v45;
          [v45 setShowsVerticalScrollIndicator:0];
        }

        [a1 translationInView:0];
        v48 = v47;

        *&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_scrollDismissInitialTranslationY] = v48;
        v1[v4] = 1;
        return;
      }

      __break(1u);
    }

    else
    {
      sub_BD88(&unk_93F5C0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_77B6C0;
      v37 = [v1 presentedViewController];
      v38 = [v37 view];

      if (v38)
      {
        v39 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_shadowView];
        *(v36 + 32) = v38;
        *(v36 + 40) = v39;
        v40 = v39;
        v41 = v1;
        v42 = sub_649F08();
        if (v42 >> 62)
        {
          sub_2630C();
          v43 = sub_76A850();
        }

        else
        {

          sub_76A960();
          sub_2630C();
          v43 = v42;
        }

        *(&v54 + 1) = &type metadata for PullDownInteractiveDismissal;
        v55 = &off_8946A0;
        *&v53 = v36;
        *(&v53 + 1) = v43;
        *&v54 = 0x3FB1EB851EB851ECLL;
        v44 = OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_interactiveDismissal;
        v1 = v41;
        swift_beginAccess();
        v29 = &v41[v44];
        goto LABEL_43;
      }
    }

    __break(1u);
    return;
  }

  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_presentedContainerView] frame];
  v5 = CGRectGetHeight(v57) * 0.18;
  [a1 translationInView:0];
  v7 = v6 - *&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_scrollDismissInitialTranslationY];
  if (v7 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6 - *&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_scrollDismissInitialTranslationY];
  }

  v9 = 0.0;
  if (v5 <= 0.0)
  {
    v9 = v5;
  }

  if (v7 < 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = v10 / v5;
  v12 = [a1 state];
  if (v12 > 2)
  {
    if ((v12 - 4) >= 2)
    {
      if (v12 != &dword_0 + 3)
      {
        goto LABEL_36;
      }

      if (v11 == 1.0)
      {
LABEL_35:
        v35 = [v1 presentedViewController];
        [v35 dismissViewControllerAnimated:1 completion:0];

        v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissCompleted] = 1;
        return;
      }
    }
  }

  else if (v12)
  {
    if (v12 == &dword_0 + 2)
    {
      if (v11 == 1.0)
      {
        goto LABEL_35;
      }

      v49 = &v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_interactiveDismissal];
      swift_beginAccess();
      if (*(v49 + 24))
      {
        sub_134D8(v49, &v53);
        v50 = *(&v54 + 1);
        v51 = v55;
        sub_B170(&v53, *(&v54 + 1));
        (v51[2])(v50, v51, v11);

        sub_BEB8(&v53);
        return;
      }

LABEL_38:

      return;
    }

LABEL_36:

    goto LABEL_38;
  }

  if (v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissCompleted])
  {
    goto LABEL_36;
  }

  v30 = &v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_interactiveDismissal];
  swift_beginAccess();
  if (*(v30 + 24))
  {
    sub_134D8(v30, &v53);
    v31 = *(&v54 + 1);
    v32 = v55;
    sub_B170(&v53, *(&v54 + 1));
    (v32[4])(v31, v32);
    sub_BEB8(&v53);
  }

  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  swift_beginAccess();
  sub_48D354(&v53, v30);
  swift_endAccess();
  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    v34 = v33;
    [v33 setShowsVerticalScrollIndicator:1];
  }

  v1[v4] = 0;
}

void sub_64C2B8(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_disableDismissGestures);
    v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_disableDismissGestures] = v1;
    sub_6497B4(v4);
  }
}

uint64_t sub_64C448()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_64C498(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_64C4B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_64C528()
{
  v1 = [v0 traitCollection];
  if ([v1 userInterfaceIdiom] == &dword_0 + 1)
  {
    v2 = 32.0;
  }

  else
  {
    [v1 displayCornerRadius];
    v2 = v3;
  }

  v4 = [v0 presentedViewController];
  v5 = [v4 view];

  [v5 _setContinuousCornerRadius:v2];
}

void sub_64C608(SEL *a1, SEL *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong panGestureRecognizer];

    [v7 *a1];
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    [v8 *a2];
  }
}

uint64_t sub_64C74C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_64C7A8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_64C7FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_64C834()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_64C8BC()
{
  sub_BD88(&unk_95D700);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_780120;
  *(inited + 32) = UIActivityTypeAirDrop;
  *(inited + 40) = UIActivityTypeCopyToPasteboard;
  *(inited + 48) = UIActivityTypeMessage;
  *(inited + 56) = UIActivityTypePostToFacebook;
  *(inited + 64) = UIActivityTypePostToTwitter;
  *(inited + 72) = UIActivityTypePostToWeibo;
  v1 = UIActivityTypeAirDrop;
  v2 = UIActivityTypeCopyToPasteboard;
  v3 = UIActivityTypeMessage;
  v4 = UIActivityTypePostToFacebook;
  v5 = UIActivityTypePostToTwitter;
  v6 = UIActivityTypePostToWeibo;
  v7 = sub_1A210C(inited);
  swift_setDeallocating();
  type metadata accessor for ActivityType(0);
  result = swift_arrayDestroy();
  qword_95FC10 = v7;
  return result;
}

double sub_64C9CC@<D0>(void *a1@<X1>, _OWORD *a2@<X8>)
{
  if (a1 && (v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider27ArtworkActivityItemProvider_excludedActivityTypes), v5 = a1, LOBYTE(v4) = sub_6672F8(v5, v4), v5, (v4 & 1) != 0) || (, sub_BD88(&qword_95FC70), sub_764050(), , !v7))
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    v9 = sub_BE70(0, &qword_947630);
    *&v8 = v7;
    sub_13310(&v8, a2);
  }

  return result;
}

id sub_64CABC@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_64CC98(void *a1@<X8>)
{
  v3 = sub_7683E0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v22 - v9;
  v11 = [v1 activityType];
  if (!v11)
  {
    goto LABEL_4;
  }

  v12 = v11;
  if (sub_6672F8(v11, *&v1[OBJC_IVAR____TtC18ASMessagesProvider27ArtworkActivityItemProvider_excludedActivityTypes]))
  {

LABEL_4:
    v13 = [objc_allocWithZone(UIImage) init];
    a1[3] = sub_BE70(0, &qword_947630);
    *a1 = v13;
    return;
  }

  v14 = dispatch_semaphore_create(0);
  v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27ArtworkActivityItemProvider_artworkLoader];
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v23 = a1;
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v17 = v14;

  sub_75A040();

  sub_160090(v24);

  sub_7683D0();
  sub_768450();
  v18 = *(v4 + 8);
  v18(v6, v3);
  sub_769B00();
  v18(v10, v3);
  v19 = v23;

  sub_BD88(&qword_95FC70);
  sub_764050();

  v20 = *&v24[0];
  v19[3] = sub_BE70(0, &qword_947630);
  if (v20)
  {

    *v19 = v20;
  }

  else
  {
    v21 = [objc_allocWithZone(UIImage) init];

    *v19 = v21;
  }
}

Swift::Int sub_64CFC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v6 = sub_7652D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  v13 = sub_766690();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_769B10();
  }

  v18 = Strong;
  if (!a1)
  {

    return sub_769B10();
  }

  v39 = OBJC_IVAR____TtC18ASMessagesProvider27ArtworkActivityItemProvider_artworkConfig;
  v38 = a1;

  sub_75DEF0();
  v20 = v19;
  v22 = v21;

  v40 = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, v20, v22}];
  [v40 setOpaque:0];
  sub_7666A0();
  v23 = sub_766680();
  (*(v14 + 8))(v16, v13);
  if (v23)
  {
    if (v18[OBJC_IVAR____TtC18ASMessagesProvider27ArtworkActivityItemProvider_enablePrerenderedIconArtwork])
    {
      v24 = &enum case for Artwork.Style.roundedRectPrerendered(_:);
    }

    else
    {
      v24 = &enum case for Artwork.Style.roundedRect(_:);
    }

    (*(v7 + 104))(v12, *v24, v6);
  }

  else
  {
    (*(v7 + 104))(v9, enum case for Artwork.Style.unadorned(_:), v6);
  }

  v26 = v40;
  sub_7591B0();
  v27 = v38;
  sub_759190();
  sub_BE70(0, &qword_95FC78);
  v28 = [swift_getObjCClassFromMetadata() defaultFormat];
  sub_75DF00();
  [v28 setScale:?];
  [v28 setOpaque:0];
  [v27 size];
  v31 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v28 format:{v29, v30}];
  v32 = swift_allocObject();
  *(v32 + 16) = v26;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_64D6D4;
  *(v33 + 24) = v32;
  aBlock[4] = sub_64D734;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_523AE0;
  aBlock[3] = &unk_89B7B0;
  v34 = _Block_copy(aBlock);
  v35 = v26;

  v36 = [v31 imageWithActions:v34];
  _Block_release(v34);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if (v34)
  {
    __break(1u);
  }

  else
  {
    __chkstk_darwin(result);
    *(&v37 - 2) = v36;

    sub_764070();

    sub_769B10();
  }

  return result;
}

id sub_64D548()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkActivityItemProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_64D61C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_64D654()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_64D69C()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_64D6D4()
{
  v1 = *(v0 + 16);
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
}

uint64_t sub_64D73C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_64D754(id *a1)
{
  v4 = *(v1 + 16);

  *a1 = v4;

  return v4;
}

uint64_t sub_64D7B8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (qword_93C7E8 != -1)
  {
    swift_once();
  }

  swift_getObjectType();
  v8 = sub_7422BC(&xmmword_99BD40, a6, a1);
  v9 = [objc_opt_self() absoluteDimension:v8];
  v10 = sub_75F970();

  return v10;
}

uint64_t sub_64D91C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_64D964()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider39LargeGameCenterPlayerCollectionViewCell_artworkView);
  v11.value.super.isa = 0;
  v11.is_nil = 0;
  sub_7591D0(v11, v3);

  v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider39LargeGameCenterPlayerCollectionViewCell_displayName);
  sub_75BB50();
  if (v5)
  {
    v6 = sub_769210();
  }

  else
  {
    v6 = 0;
  }

  [v4 setText:v6];

  v7 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider39LargeGameCenterPlayerCollectionViewCell_alias);
  sub_75BB60();
  if (v8)
  {
    v9 = sub_769210();
  }

  else
  {
    v9 = 0;
  }

  [v7 setText:v9];
}

uint64_t sub_64DA74(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v106 = a2;
  v7 = sub_768940();
  v117 = *(v7 - 8);
  v118 = v7;
  __chkstk_darwin(v7);
  v116 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v9 - 8);
  v115 = &v101 - v10;
  v11 = sub_BD88(&unk_9457D0);
  __chkstk_darwin(v11 - 8);
  v111 = &v101 - v12;
  v13 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v13 - 8);
  v110 = &v101 - v14;
  v109 = sub_7623A0();
  v107 = *(v109 - 8);
  __chkstk_darwin(v109);
  v108 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD88(&unk_94AC40);
  __chkstk_darwin(v16 - 8);
  v114 = &v101 - v17;
  v18 = sub_BD88(&unk_9457E0);
  __chkstk_darwin(v18 - 8);
  v105 = &v101 - v19;
  v20 = sub_BD88(&unk_94A780);
  __chkstk_darwin(v20 - 8);
  v104 = &v101 - v21;
  v22 = sub_BD88(&unk_944E00);
  __chkstk_darwin(v22 - 8);
  v103 = &v101 - v23;
  v24 = sub_763750();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v102 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_BD88(&unk_948730);
  __chkstk_darwin(v27 - 8);
  v121 = &v101 - v28;
  v29 = sub_758660();
  v30 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_formattedDateView];
  sub_268FDC(v29);
  [v3 setNeedsLayout];
  v31 = sub_7586B0();
  sub_6D4A48(v31, v32);
  v33 = sub_7586C0();
  sub_6D4A54(v33, v34);
  v35 = sub_7586D0();
  sub_6D4A60(v35, v36);
  v37 = sub_758640();
  sub_6D4A6C(v37, v38);
  type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
  v119 = a3;
  sub_7688F0();
  v39 = v123;
  v40 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
  v41 = *(v30 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  v42 = v41;
  sub_26CAC0(v39);
  v43 = *(v30 + v40);
  *(v30 + v40) = v39;
  v44 = v39;

  sub_26CC24(v41);
  sub_7586E0();
  v45 = sub_764F20();

  sub_6D4F1C(v45);
  v112 = v4;
  v113 = a1;
  v46 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupView];
  v120 = sub_7586E0();
  v47 = *(v25 + 104);
  v47(v102, enum case for OfferButtonPresenterViewAlignment.right(_:), v24);
  v48 = v103;
  v47(v103, enum case for OfferButtonPresenterViewAlignment.left(_:), v24);
  (*(v25 + 56))(v48, 0, 1, v24);
  sub_64EEB8(&unk_944E10, &type metadata accessor for OfferButtonPresenterViewAlignment);
  v49 = v121;
  sub_760940();
  v50 = sub_BD88(&unk_948740);
  (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
  if (v106)
  {
    v51 = enum case for OfferStyle.infer(_:);
    v52 = sub_758C70();
    v53 = *(v52 - 8);
    v54 = v104;
    (*(v53 + 104))(v104, v51, v52);
    (*(v53 + 56))(v54, 0, 1, v52);
    v55 = enum case for OfferEnvironment.light(_:);
    v56 = sub_75BD30();
    v57 = *(v56 - 8);
    v58 = v105;
    (*(v57 + 104))(v105, v55, v56);
    (*(v57 + 56))(v58, 0, 1, v56);
  }

  else
  {
    v59 = sub_758C70();
    v54 = v104;
    (*(*(v59 - 8) + 56))(v104, 1, 1, v59);
    v60 = sub_75BD30();
    v58 = v105;
    (*(*(v60 - 8) + 56))(v105, 1, 1, v60);
  }

  v61 = v107;
  v62 = v109;
  (*(v107 + 104))(v108, enum case for OfferButtonSubtitlePosition.below(_:), v109);
  (*(v61 + 56))(v110, 1, 1, v62);
  sub_64EEB8(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition);
  v63 = v114;
  sub_760940();
  v64 = sub_BD88(&unk_9457F0);
  (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
  v65 = sub_765870();
  v66 = v111;
  (*(*(v65 - 8) + 56))(v111, 1, 1, v65);
  v67 = v119;
  sub_4A18A4(v120, v46, v121, v119, 0, 0, v54, v58, v66, v63);
  sub_10A2C(v66, &unk_9457D0);
  v46[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 1;
  sub_1FD89C();
  [v46 setNeedsLayout];
  v68 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel;
  v69 = *&v46[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel];
  v70 = v115;
  if (v69)
  {
    [v69 setHidden:1];
    v71 = *&v46[v68];
    if (v71)
    {
      [v71 setText:0];
    }
  }

  v72 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel;
  v73 = *&v46[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel];
  if (v73)
  {
    if (([v73 isHidden] & 1) == 0)
    {
      v74 = *&v46[v72];
      if (v74)
      {
        if ([v74 hasContent])
        {
          v75 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel;
          [*&v46[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel] setHidden:1];
          [*&v46[v75] setText:0];
        }
      }
    }
  }

  v76 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel;
  if ([*&v46[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel] isHidden] & 1) == 0 && (objc_msgSend(*&v46[v76], "hasContent"))
  {
    v77 = *&v46[v72];
    if (v77)
    {
      [v77 setHidden:1];
      v78 = *&v46[v72];
      if (v78)
      {
        [v78 setText:0];
      }
    }

    v79 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel;
    [*&v46[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel] setHidden:1];
    [*&v46[v79] setText:0];
  }

  sub_10A2C(v63, &unk_94AC40);
  sub_10A2C(v58, &unk_9457E0);
  sub_10A2C(v54, &unk_94A780);
  sub_10A2C(v121, &unk_948730);
  v80 = *&v46[v72];
  if (v80)
  {
    v81 = qword_93D588;
    v82 = v80;
    if (v81 != -1)
    {
      swift_once();
    }

    v83 = sub_7666D0();
    v84 = sub_BE38(v83, qword_99E8A8);
    v85 = *(v83 - 8);
    (*(v85 + 16))(v70, v84, v83);
    (*(v85 + 56))(v70, 0, 1, v83);
    sub_75BA40();
  }

  v86 = *&v46[v68];
  if (v86)
  {
    v87 = qword_93D5A0;
    v88 = v86;
    if (v87 != -1)
    {
      swift_once();
    }

    v89 = sub_7666D0();
    v90 = sub_BE38(v89, qword_99E8F0);
    v91 = *(v89 - 8);
    (*(v91 + 16))(v70, v90, v89);
    (*(v91 + 56))(v70, 0, 1, v89);
    sub_75BA40();
  }

  sub_761060();
  sub_768900();
  sub_768ED0();
  v92 = v123;

  v93 = sub_758680();
  type metadata accessor for NotifyMeButtonPresenter();
  v94 = swift_allocObject();
  v95 = v94 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_view;
  *(v94 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v94 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer) = 0;
  *(v94 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  swift_beginAccess();
  *(v95 + 8) = &off_89D708;
  swift_unknownObjectWeakAssign();
  *(v94 + 16) = v92;
  *(v94 + 24) = v93;

  v96 = v116;
  v97 = v118;
  sub_768ED0();
  (*(v117 + 32))(v94 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_metricsPipeline, v96, v97);
  *(v94 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_objectGraph) = v67;
  sub_75A920();

  sub_768ED0();
  *(v94 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_bag) = v122;
  sub_E929C();
  sub_E9C30();
  v98 = [objc_opt_self() defaultCenter];

  v99 = sub_760FD0();
  [v98 addObserver:v94 selector:"userNotificationsDidChangeNotification:" name:v99 object:0];

  sub_6D5058(v94);
}