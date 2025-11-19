char *sub_10039E618(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_100741E54();
  __chkstk_darwin(v10 - 8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10074AB44();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v17 - 8);
  v19 = &v61 - v18;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_metrics;
  if (qword_100921778 != -1)
  {
    swift_once();
  }

  v21 = sub_100742014();
  v22 = sub_10000D0FC(v21, qword_100982190);
  (*(*(v21 - 8) + 16))(&v5[v20], v22, v21);
  v23 = OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_bodyBackgroundColor;
  v61 = sub_100016C60(0, &qword_100923500);
  *&v5[v23] = sub_100753E74();
  if (qword_100920A98 != -1)
  {
    swift_once();
  }

  v24 = sub_100750534();
  v25 = sub_10000D0FC(v24, qword_100934F40);
  v26 = *(v24 - 8);
  v66 = *(v26 + 16);
  v66(v19, v25, v24);
  v65 = *(v26 + 56);
  v65(v19, 0, 1, v24);
  v27 = *(v14 + 104);
  v64 = enum case for DirectionalTextAlignment.none(_:);
  v63 = v27;
  v27(v16);
  v28 = sub_100745C84();
  v62 = v13;
  v29 = v28;
  v30 = objc_allocWithZone(v28);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_inAppPurchaseLabel] = sub_100745C74();
  if (qword_100920AA0 != -1)
  {
    swift_once();
  }

  v31 = sub_10000D0FC(v24, qword_100934F58);
  v66(v19, v31, v24);
  v65(v19, 0, 1, v24);
  v63(v16, v64, v62);
  v32 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_titleLabel] = sub_100745C74();
  if (qword_100920AA8 != -1)
  {
    swift_once();
  }

  v33 = sub_10000D0FC(v24, qword_100934F70);
  v66(v19, v33, v24);
  v65(v19, 0, 1, v24);
  v63(v16, v64, v62);
  v34 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_subtitleLabel] = sub_100745C74();
  v35 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_body] = v35;
  v36 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_offerButton] = sub_100154454(0);
  sub_100741DD4();
  v37 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_iconView] = sub_10027562C(v12, 1);
  if (qword_100920AB0 != -1)
  {
    swift_once();
  }

  v38 = sub_10000D0FC(v24, qword_100934F88);
  v66(v19, v38, v24);
  v65(v19, 0, 1, v24);
  v63(v16, v64, v62);
  v39 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_inAppDescription] = sub_100745C74();
  v40 = type metadata accessor for InAppPurchaseSearchResultContentView();
  v68.receiver = v5;
  v68.super_class = v40;
  v41 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v45 = v41;
  [v45 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v46 = OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_inAppPurchaseLabel;
  [v45 addSubview:*&v45[OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_inAppPurchaseLabel]];
  [v45 addSubview:*&v45[OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_titleLabel]];
  v47 = OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_subtitleLabel;
  [v45 addSubview:*&v45[OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_subtitleLabel]];
  [v45 addSubview:*&v45[OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_offerButton]];
  v48 = OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_body;
  [v45 addSubview:*&v45[OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_body]];
  [v45 addSubview:*&v45[OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_iconView]];
  v49 = OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_inAppDescription;
  [v45 addSubview:*&v45[OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_inAppDescription]];
  v50 = [*&v45[v48] layer];
  [v50 setCornerRadius:20.0];

  v51 = *&v45[v46];
  v52 = [v45 tintColor];
  [v51 setTextColor:v52];

  v53 = *&v45[v47];
  v54 = sub_100753DF4();
  [v53 setTextColor:v54];

  [*&v45[v48] setBackgroundColor:*&v45[OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_bodyBackgroundColor]];
  v55 = qword_100920AB8;
  v56 = *&v45[v49];
  if (v55 != -1)
  {
    swift_once();
  }

  v57 = sub_10000C518(&qword_10092AC90);
  sub_10000D0FC(v57, qword_100934FA0);
  v67 = v45;
  sub_100743464();

  sub_100753F54();
  v58 = *&v45[v49];
  v59 = sub_100753DF4();
  [v58 setTextColor:v59];

  return v45;
}

uint64_t sub_10039F048()
{
  v1 = v0;
  v2 = sub_100750354();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin(v2);
  v39 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100742014();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100742034();
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin(v8);
  v36 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InAppPurchaseSearchResultContentView();
  v63.receiver = v1;
  v63.super_class = v10;
  objc_msgSendSuper2(&v63, "layoutSubviews");
  (*(v5 + 16))(v7, &v1[OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_metrics], v4);
  v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_offerButton];
  v35[2] = v10;
  sub_1007477B4();
  v12 = &v11[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize];
  if (v11[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v13 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000C824(&v11[v13], v60);
    sub_10000C888(v60, v61);
    sub_10074AE54();
    v15 = v14;
    v17 = v16;
    sub_10000C620(v60);
    *v12 = v15;
    *(v12 + 1) = v17;
    v12[16] = 0;
  }

  sub_100742004();
  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_inAppPurchaseLabel];
  v19 = sub_100745C84();
  v35[1] = v7;
  v61 = v19;
  v62 = &protocol witness table for UILabel;
  v60[0] = v18;
  v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_titleLabel];
  v58 = v19;
  v59 = &protocol witness table for UILabel;
  v57 = v20;
  v21 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_subtitleLabel];
  v55 = v19;
  v56 = &protocol witness table for UILabel;
  v54 = v21;
  v52 = type metadata accessor for OfferButton();
  v53 = &protocol witness table for UIView;
  v51 = v11;
  v35[0] = v11;
  v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_iconView];
  v49 = type metadata accessor for InAppPurchaseView();
  v50 = &protocol witness table for UIView;
  v47 = &protocol witness table for UILabel;
  v48 = v22;
  v23 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_inAppDescription];
  v46 = v19;
  v45 = v23;
  v24 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_body];
  v43 = sub_100016C60(0, &qword_100922300);
  v44 = &protocol witness table for UIView;
  v42 = v24;
  v25 = v18;
  v26 = v20;
  v27 = v21;
  v28 = v35[0];
  v29 = v22;
  v30 = v23;
  v31 = v24;
  v32 = v36;
  sub_100742024();
  sub_1007477B4();
  v33 = v39;
  sub_100741FD4();
  (*(v40 + 8))(v33, v41);
  return (*(v37 + 8))(v32, v38);
}

id sub_10039F4A4(void *a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for InAppPurchaseSearchResultContentView();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_100920AB8 != -1)
    {
      swift_once();
    }

    v6 = sub_10000C518(&qword_10092AC90);
    sub_10000D0FC(v6, qword_100934FA0);
    v7 = v1;
    sub_100743464();

    return sub_100753F54();
  }

  return result;
}

uint64_t sub_10039F644(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v66 = sub_100741C54();
  v72 = *(v66 - 8);
  __chkstk_darwin(v66);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v58 - v8;
  v10 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v10 - 8);
  v12 = &v58 - v11;
  v71 = sub_10074C3E4();
  v67 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&unk_100925560);
  v70 = *(v14 - 8);
  __chkstk_darwin(v14);
  v69 = (&v58 - v15);
  v16 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v16 - 8);
  v18 = &v58 - v17;
  sub_100741ED4();
  sub_1003A0AA4(&qword_1009283B8, &type metadata accessor for InAppPurchaseSearchResult);
  result = sub_1007468B4();
  if (v73)
  {
    v64 = v9;
    v65 = v6;
    v20 = sub_100741EC4();

    sub_1007442C4();
    sub_100752764();
    sub_100752D34();
    v63 = v73;

    v21 = v20;
    sub_10074EF34();
    v23 = v22;
    v24 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_titleLabel];
    v61 = v14;
    v62 = a2;
    v60 = v12;
    if (v22)
    {
      v25 = sub_100753064();
    }

    else
    {
      v25 = 0;
    }

    [v24 setText:v25];

    [v24 setHidden:v23 == 0];
    [v3 setNeedsLayout];
    v26 = sub_100741D14();
    v27 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_inAppPurchaseLabel];
    v28 = "onLayoutEnvironment>16";
    if (v26)
    {
      v28 = "ultType.Heading.InAppPurchase";
      v29._countAndFlagsBits = 0xD00000000000003ALL;
    }

    else
    {
      v29._countAndFlagsBits = 0xD00000000000002DLL;
    }

    v29._object = (v28 | 0x8000000000000000);
    v77._countAndFlagsBits = 0;
    v77._object = 0xE000000000000000;
    sub_1007458B4(v29, v77);
    v30 = sub_100753064();

    [v27 setText:v30];

    sub_100741D44();
    v31 = sub_10074EF34();
    v33 = v32;

    if (v33)
    {
      v76._countAndFlagsBits = 0xD000000000000035;
      v76._object = 0x800000010076A180;
      v78._countAndFlagsBits = 0;
      v78._object = 0xE000000000000000;
      sub_1007458B4(v76, v78);
      sub_10000C518(&unk_100927770);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1007A5A00;
      *(v34 + 56) = &type metadata for String;
      *(v34 + 64) = sub_1000DD048();
      *(v34 + 32) = v31;
      *(v34 + 40) = v33;
      sub_1007530B4();

      v35 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_subtitleLabel];

      v36 = sub_100753064();

      [v35 setText:v36];

      [v35 setHidden:0];
    }

    else
    {
      v37 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_subtitleLabel];
      [v37 setText:0];
      [v37 setHidden:1];
    }

    v38 = v60;
    [v3 setNeedsLayout];
    sub_100741D24();
    v40 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_inAppDescription];
    if (v39)
    {
      v41 = sub_100753064();
      [v40 setText:v41];

      [v40 setHidden:0];
    }

    else
    {
      [*&v3[OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_inAppDescription] setText:0];
      [v40 setHidden:1];
    }

    [v3 setNeedsLayout];
    v42 = sub_10074EF04();
    v43 = sub_10074EDF4();
    v59 = v21;

    v44 = sub_10000C518(&unk_10092EEA0);
    (*(*(v44 - 8) + 56))(v18, 1, 1, v44);
    v45 = v67;
    v46 = v71;
    (*(v67 + 104))(v68, enum case for OfferButtonSubtitlePosition.below(_:), v71);
    (*(v45 + 56))(v38, 1, 1, v46);
    sub_1003A0AA4(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition);
    v47 = v69;
    sub_10074A9C4();
    sub_10015DE40(v42, v43, 0, v18, v47, v62, 0, 0);

    v70[1](v47, v61);
    sub_10005652C(v18);
    v48 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_iconView];
    v74.value.super.isa = 0;
    v74.is_nil = 0;
    sub_100743384(v74, v49);
    v75.value.super.isa = 0;
    v75.is_nil = 0;
    sub_100743384(v75, v50);
    sub_1007433C4();
    sub_1003A0AA4(&qword_100925570, &type metadata accessor for ArtworkView);
    v51 = v63;
    sub_100744274();
    sub_100744274();
    v71 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_bodyBackgroundColor];
    v52 = v64;
    sub_100741D34();
    v53 = OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_theme;
    swift_beginAccess();
    v54 = v72;
    v55 = v66;
    (*(v72 + 24))(&v48[v53], v52, v66);
    swift_endAccess();
    v69 = *(v54 + 16);
    v56 = v65;
    v69(v65, &v48[v53], v55);
    sub_100275D50(v56);
    v70 = v3;
    v57 = *(v54 + 8);
    v57(v56, v55);
    v57(v52, v55);
    [v48 setBackgroundColor:v71];
    sub_1006C2A3C(v59, v48, v51);
    v69(v52, &v48[v53], v55);
    sub_100275D50(v52);
    v57(v52, v55);
    [v48 setNeedsLayout];
    [v70 setNeedsLayout];
  }

  return result;
}

id sub_10039FFEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseSearchResultContentView()
{
  result = qword_100934FF0;
  if (!qword_100934FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003A0164()
{
  result = sub_100742014();
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

uint64_t sub_1003A0214(uint64_t a1, uint64_t a2)
{
  sub_10000C824(a1, v6);
  sub_10000C518(&unk_100923100);
  sub_100741ED4();
  result = swift_dynamicCast();
  if (result)
  {
    v5 = sub_100741EC4();

    sub_1006C2A3C(v5, *(v2 + OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_iconView), a2);
  }

  return result;
}

uint64_t sub_1003A02D0(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v5.value.super.isa = 0;
  v5.is_nil = 0;
  sub_100743384(v5, a3);
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  sub_100743384(v6, v3);
  sub_1007433C4();
  sub_1003A0AA4(&qword_100925570, &type metadata accessor for ArtworkView);
  sub_100744274();
  return sub_100744274();
}

uint64_t sub_1003A03BC()
{
  sub_100741ED4();
  sub_1003A0AA4(&qword_1009283B8, &type metadata accessor for InAppPurchaseSearchResult);
  result = sub_1007468B4();
  if (v3)
  {
    sub_100741EC4();
    v1 = sub_1006C301C();

    v2._rawValue = v1;
    sub_100744224(v2);
  }

  return result;
}

uint64_t sub_1003A04DC(uint64_t a1)
{
  *(a1 + 8) = sub_1003A0AA4(&qword_100935008, type metadata accessor for InAppPurchaseSearchResultContentView);
  result = sub_1003A0AA4(&qword_100935010, type metadata accessor for InAppPurchaseSearchResultContentView);
  *(a1 + 16) = result;
  return result;
}

double sub_1003A0560()
{
  v0 = sub_1007479B4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v24 - v5;
  v7 = sub_100742014();
  v27 = *(v7 - 8);
  v28 = v7;
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100747C14();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10074F704();
  v26 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741ED4();
  sub_1003A0AA4(&qword_1009283B8, &type metadata accessor for InAppPurchaseSearchResult);
  sub_1007468B4();
  if (!v29)
  {
    return 0.0;
  }

  v25 = v11;
  sub_100741EC4();

  sub_100746884();
  if (qword_100920C20 != -1)
  {
    swift_once();
  }

  sub_10074F6A4();

  sub_10074EF34();

  sub_10074EFB4();

  v14 = sub_10007DC04();
  sub_10074F674();
  sub_100753BA4();
  if (qword_100921778 != -1)
  {
    swift_once();
  }

  v15 = v28;
  v16 = sub_10000D0FC(v28, qword_100982190);
  v17 = v27;
  (*(v27 + 16))(v9, v16, v15);
  v18 = [v14 traitCollection];
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v19 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v19 = qword_10093FF58;
  }

  v21 = sub_10000D0FC(v0, v19);
  (*(v1 + 16))(v3, v21, v0);

  (*(v1 + 32))(v6, v3, v0);
  sub_100747964();
  sub_100747994();
  sub_100742004();
  sub_100741FE4();
  v20 = v22;

  swift_unknownObjectRelease();
  (*(v1 + 8))(v6, v0);
  (*(v17 + 8))(v9, v28);
  (*(v26 + 8))(v13, v25);
  return v20;
}

uint64_t sub_1003A0AA4(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1003A0B48(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension24InfiniteScrollFooterView_activityIndicator] = v10;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v15 = v11;
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_10000D198();
  v16 = sub_100753E04();
  [v15 setBackgroundColor:v16];

  [v15 addSubview:*&v15[OBJC_IVAR____TtC22SubscribePageExtension24InfiniteScrollFooterView_activityIndicator]];
  return v15;
}

void sub_1003A10F4(void *a1, uint64_t a2, void *a3, const char **a4)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  v6 = *a4;
  v7 = v9.receiver;
  v8 = a3;
  objc_msgSendSuper2(&v9, v6, v8);
  if (v8)
  {
  }

  else
  {
    [*&v7[OBJC_IVAR____TtC22SubscribePageExtension24InfiniteScrollFooterView_activityIndicator] stopAnimating];
  }
}

uint64_t sub_1003A11B8@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = sub_10000C518(&unk_10092E450);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v29 - v3;
  v5 = sub_10074F704();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747B84();
  sub_10074F674();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v2 + 8))(v4, v1);
  LODWORD(v1) = v31;
  sub_100747B84();
  sub_10074F5C4();
  v11 = v10;
  v9(v8, v5);
  v12 = sub_100747B94();
  v13 = type metadata accessor for SnapshotPageTraitEnvironment();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v15 = v11;
  *(v15 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v14[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v12;
  v30.receiver = v14;
  v30.super_class = v13;
  v16 = objc_msgSendSuper2(&v30, "init");
  v17 = v16;
  if (v1 == 1)
  {
    v18 = [v16 traitCollection];
    v19 = sub_1007537B4();

    if (v19)
    {
      [v17 pageContainerSize];
      v22 = sub_1001D7694(v20, v21);
      sub_10016D1E4(v22);
    }

    else
    {
      [v17 pageMarginInsets];
      v23 = [v17 pageContainerSize];
    }

    sub_10016D1E4(v23);
    v24 = qword_100920978;
  }

  else
  {
    v24 = qword_100920978;
  }

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = sub_1007504F4();
  sub_10000D0FC(v25, qword_10097FAF8);
  sub_1007504C4();
  v26 = v29;
  sub_10074A254();

  v27 = sub_10074A274();
  return (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
}

uint64_t sub_1003A156C@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_10000C518(&unk_10092E450);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - v3;
  v5 = sub_10074F704();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747B84();
  sub_10074F674();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v2 + 8))(v4, v1);
  sub_100747B84();
  sub_10074F5C4();
  v11 = v10;
  v9(v8, v5);
  v12 = sub_100747B94();
  v13 = type metadata accessor for SnapshotPageTraitEnvironment();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v15 = v11;
  *(v15 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v14[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v12;
  v26.receiver = v14;
  v26.super_class = v13;
  v16 = objc_msgSendSuper2(&v26, "init");
  v17 = [v16 traitCollection];
  LOBYTE(v1) = sub_1007537B4();

  if (v1)
  {
    [v16 pageContainerSize];
    v20 = sub_1001D7694(v18, v19);
    sub_10016D1E4(v20);
  }

  else
  {
    [v16 pageMarginInsets];
    v21 = [v16 pageContainerSize];
  }

  sub_10016D1E4(v21);
  v22 = v25;
  sub_10074A254();

  v23 = sub_10074A274();
  return (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
}

uint64_t sub_1003A18AC@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = sub_10000C518(&unk_10092E450);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - v3;
  v5 = sub_10074F704();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747B84();
  sub_10074F674();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v2 + 8))(v4, v1);
  sub_100747B84();
  sub_10074F5C4();
  v11 = v10;
  v9(v8, v5);
  v12 = sub_100747B94();
  v13 = type metadata accessor for SnapshotPageTraitEnvironment();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v15 = v11;
  *(v15 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v14[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v12;
  v21.receiver = v14;
  v21.super_class = v13;

  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v16 = sub_100747064();
  sub_10000D0FC(v16, qword_10097E3A8);
  sub_100746F34();
  v17 = v20;
  sub_10074A254();
  v18 = sub_10074A274();
  return (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
}

uint64_t sub_1003A1B9C@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_10000C518(&qword_100928550);
  v2 = *(v1 - 8);
  v34 = v1;
  v35 = v2;
  __chkstk_darwin(v1);
  v32 = &v29 - v3;
  v33 = sub_100747814();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_10092E450);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  v9 = sub_10074F704();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747B84();
  sub_10074F674();
  v13 = *(v10 + 8);
  v13(v12, v9);
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v6 + 8))(v8, v5);
  sub_100747B84();
  sub_10074F5C4();
  v15 = v14;
  v13(v12, v9);
  v16 = sub_100747B94();
  v17 = type metadata accessor for SnapshotPageTraitEnvironment();
  v18 = objc_allocWithZone(v17);
  v19 = &v18[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v19 = v15;
  *(v19 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v18[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v16;
  v38.receiver = v18;
  v38.super_class = v17;
  v20 = objc_msgSendSuper2(&v38, "init");
  v21 = [v20 traitCollection];
  v22 = v30;
  sub_10024BBC0(v30);

  v23 = v32;
  sub_1007477E4();
  (*(v31 + 8))(v22, v33);
  v37 = v20;
  v24 = v20;
  v25 = v34;
  sub_100743464();
  (*(v35 + 8))(v23, v25);

  v26 = v36;
  sub_10074A254();

  v27 = sub_10074A274();
  return (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
}

uint64_t sub_1003A1FE4@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_1007504F4();
  v32 = *(v1 - 8);
  v33 = v1;
  __chkstk_darwin(v1);
  v31 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000C518(&unk_10092E450);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - v5;
  v7 = sub_10074F704();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747B84();
  sub_10074F674();
  v11 = *(v8 + 8);
  v11(v10, v7);
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v4 + 8))(v6, v3);
  LODWORD(v4) = v36;
  sub_100747B84();
  sub_10074F5C4();
  v13 = v12;
  v11(v10, v7);
  v14 = sub_100747B94();
  v15 = type metadata accessor for SnapshotPageTraitEnvironment();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v17 = v13;
  *(v17 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v16[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v14;
  v35.receiver = v16;
  v35.super_class = v15;
  v18 = objc_msgSendSuper2(&v35, "init");
  v19 = v18;
  if (v4 == 1)
  {
    v20 = [v18 traitCollection];
    v21 = sub_1007537B4();

    if (v21)
    {
      [v19 pageContainerSize];
      v24 = sub_1001D7694(v22, v23);
      sub_10016D1E4(v24);
    }

    else
    {
      [v19 pageMarginInsets];
      [v19 pageContainerSize];
    }
  }

  if (qword_100920960 != -1)
  {
    swift_once();
  }

  v25 = sub_100747674();
  sub_10000D0FC(v25, qword_10097FA38);
  v26 = v31;
  sub_100747664();
  sub_1007504C4();
  (*(v32 + 8))(v26, v33);
  v27 = v34;
  sub_10074A254();

  v28 = sub_10074A274();
  return (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
}

uint64_t sub_1003A241C@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_10000C518(&unk_10092E450);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - v3;
  v5 = sub_10074F704();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747B84();
  sub_10074F674();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v2 + 8))(v4, v1);
  sub_100747B84();
  sub_10074F5C4();
  v11 = v10;
  v9(v8, v5);
  v12 = sub_100747B94();
  v13 = type metadata accessor for SnapshotPageTraitEnvironment();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v15 = v11;
  *(v15 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v14[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v12;
  v19.receiver = v14;
  v19.super_class = v13;

  v16 = sub_10074A274();
  return (*(*(v16 - 8) + 56))(v18, 1, 1, v16);
}

uint64_t sub_1003A2778(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), void (*a5)(uint64_t *__return_ptr, uint64_t *))
{
  v23 = a5;
  v24 = a4;
  v22[1] = a2;
  v7 = sub_100747C14();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&qword_100933380);
  __chkstk_darwin(v11 - 8);
  v13 = v22 - v12;
  v14 = sub_10074A274();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746884();
  v24(v10, a3);
  (*(v8 + 8))(v10, v7);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_10000C8CC(v13, &qword_100933380);
  }

  (*(v15 + 32))(v17, v13, v14);
  v19 = sub_1003A2D5C(a1);
  __chkstk_darwin(v19);
  v22[-2] = v17;
  v20 = sub_100349640(v23, &v22[-4], v19);

  if (v20 >> 62)
  {
    if (!sub_100754664())
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    v21._rawValue = v20;
    sub_100744224(v21);
  }

LABEL_6:

  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_1003A2A84(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t *))
{
  v21 = a4;
  v20 = a2;
  v5 = sub_100747C14();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&qword_100933380);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_10074A274();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746884();
  sub_1003A241C(v11);
  (*(v6 + 8))(v8, v5);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_10000C8CC(v11, &qword_100933380);
  }

  (*(v13 + 32))(v15, v11, v12);
  v17 = sub_1003A2D5C(a1);
  __chkstk_darwin(v17);
  *(&v20 - 2) = v15;
  v18 = sub_100349640(v21, (&v20 - 4), v17);

  if (v18 >> 62)
  {
    if (!sub_100754664())
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    v19._rawValue = v18;
    sub_100744224(v19);
  }

LABEL_6:

  return (*(v13 + 8))(v15, v12);
}

void *sub_1003A2D5C(uint64_t a1)
{
  v2 = sub_10074E984();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v21 - v7;
  v9 = sub_10000C518(&unk_10092E450);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - v11;
  swift_getKeyPath();
  v24 = a1;
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  v14 = *(v10 + 8);
  v13 = v10 + 8;
  v23 = v14;
  v14(v12, v9);
  v22 = *(v3 + 104);
  v22(v5, enum case for Shelf.ContentType.todayCard(_:), v2);
  v21[2] = sub_1003AEF90(&qword_1009350D0, &type metadata accessor for Shelf.ContentType);
  LOBYTE(a1) = sub_100753014();
  v15 = *(v3 + 8);
  v15(v5, v2);
  v15(v8, v2);
  if ((a1 & 1) == 0)
  {
    swift_getKeyPath();
    v21[1] = v13;
    sub_100746914();

    swift_getKeyPath();
    sub_1007525B4();

    v23(v12, v9);
    v22(v5, enum case for Shelf.ContentType.miniTodayCard(_:), v2);
    v16 = sub_100753014();
    v15(v5, v2);
    v15(v8, v2);
    if ((v16 & 1) == 0)
    {
      sub_10000C518(&qword_100940100);
      sub_1007468C4();
      if (v26)
      {
        sub_100012160(&v25, v27);
        sub_10000C888(v27, v27[3]);
        v17 = sub_1007489E4();
        if (v17)
        {
          v18 = v17;
          sub_10000C518(&unk_1009231A0);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_1007A5CF0;
          *(v19 + 32) = v18;
          sub_10000C620(v27);
          return v19;
        }

        sub_10000C620(v27);
      }

      else
      {
        sub_10000C8CC(&v25, &unk_1009350E0);
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

void sub_1003A3344(void *a1)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC22SubscribePageExtension26AppEventCollectionViewCell_appEventView) + OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_appEventCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1003AEF90(&qword_1009230E0, type metadata accessor for VideoView);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView];
    sub_100016C60(0, &qword_100922300);
    v8 = v7;
    v9 = sub_100753FC4();

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
    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

void (*sub_1003A34F0(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_appEventCardView;
  a1[1] = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension26AppEventCollectionViewCell_appEventView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100017898;
}

id sub_1003A3564()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension26AppEventCollectionViewCell_appEventView];
  sub_1000CC798();
  v2 = OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_appEventCardView;
  sub_10018EEAC();
  v3 = &v1[OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_initialLongPressLocation];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_longPressGestureRecognizer] setEnabled:1];
  return [v1 addSubview:*&v1[v2]];
}

uint64_t type metadata accessor for AppEventCollectionViewCell()
{
  result = qword_100935080;
  if (!qword_100935080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*sub_1003A3750(uint64_t **a1))()
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
  v2[4] = sub_1003A34F0(v2);
  return sub_1000181A8;
}

double sub_1003A3848()
{
  [*(*(*v0 + OBJC_IVAR____TtC22SubscribePageExtension26AppEventCollectionViewCell_appEventView) + OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_formattedDateView) frame];
  CGRectGetMaxY(v2);
  type metadata accessor for AppEventView();
  sub_1007477B4();
  CGRectGetHeight(v3);
  sub_1007477B4();
  CGRectGetWidth(v4);
  return 0.0;
}

CGFloat sub_1003A38D4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC22SubscribePageExtension26AppEventCollectionViewCell_appEventView);
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_formattedDateView] frame];
  CGRectGetMaxY(v3);
  type metadata accessor for AppEventView();
  sub_1007477B4();
  CGRectGetHeight(v4);
  [v1 bounds];
  return CGRectGetWidth(v5) * 0.5;
}

uint64_t sub_1003A3964@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension26AppEventCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_1003A39BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension26AppEventCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10006644C(a1, v1 + v3, &unk_100923200);
  return swift_endAccess();
}

uint64_t sub_1003A3A94(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v2 = sub_10000C518(&unk_1009400F0);
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v25 = &v25 - v3;
  v4 = sub_10074EAB4();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100749A94();
  v31 = *(v7 - 8);
  v32 = v7;
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000C518(&unk_100925370);
  v10 = *(v30 - 8);
  __chkstk_darwin(v30);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  v16 = sub_10000C518(&unk_100930810);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v25 - v18;
  sub_100746944();
  sub_1007525C4();
  (*(v17 + 8))(v19, v16);
  sub_1007468F4();
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();

  sub_10007DC04();
  sub_10000C824(v37, v36);
  sub_10000C518(&qword_1009242A0);
  sub_1007428B4();
  if (swift_dynamicCast())
  {
    v20 = v35;
    v21 = v30;
    (*(v10 + 16))(v12, v15, v30);
    sub_100752DF4();
    v22 = v25;
    sub_100752994();
    v23 = v27;
    sub_100195300(v20, v26);
    [v23 setNeedsLayout];
    swift_unknownObjectRelease();

    (*(v28 + 8))(v22, v29);
    (*(v33 + 8))(v6, v34);
    (*(v31 + 8))(v9, v32);
    (*(v10 + 8))(v15, v21);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v33 + 8))(v6, v34);
    (*(v31 + 8))(v9, v32);
    (*(v10 + 8))(v15, v30);
  }

  return sub_10000C620(v37);
}

uint64_t sub_1003A3F50(uint64_t a1, uint64_t a2)
{
  v29[1] = a2;
  v30 = sub_10000C518(&unk_1009400F0);
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v34 = v29 - v2;
  v3 = sub_10074EAB4();
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100749A94();
  v36 = *(v6 - 8);
  v37 = v6;
  __chkstk_darwin(v6);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10000C518(&unk_100925370);
  v9 = *(v40 - 8);
  __chkstk_darwin(v40);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v29 - v13;
  v15 = sub_10000C518(&unk_100930810);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v29 - v17;
  sub_100746944();
  sub_1007525C4();
  (*(v16 + 8))(v18, v15);
  sub_1007468F4();
  v33 = v8;
  sub_1007468A4();
  swift_getKeyPath();
  v35 = v5;
  sub_100746914();

  sub_10007DC04();
  swift_unknownObjectRelease();
  sub_10000C824(v42, v41);
  sub_10000C518(&qword_1009242A0);
  sub_100746DB4();
  if (swift_dynamicCast())
  {
    (*(v9 + 16))(v11, v14, v40);
    sub_100752DF4();
    sub_100752994();
    v19 = v32;
    v20 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_titleLabel];
    sub_100746D84();
    v21 = sub_100753064();

    [v20 setText:v21];

    sub_100746DA4();
    v22 = sub_100746D74();
    v23 = sub_100743EA4();
    v24 = sub_1001D3738(v23, sub_1000E12F0);

    v25 = sub_100743E94();
    sub_10004DF04(v25, v22, v24);

    v26 = *&v19[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_iconImageView];
    v27 = sub_100746D64();
    [v26 setTintColor:v27];

    *&v19[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_icon] = sub_100746D94();

    [v19 setNeedsLayout];

    (*(v31 + 8))(v34, v30);
  }

  (*(v38 + 8))(v35, v39);
  (*(v36 + 8))(v33, v37);
  (*(v9 + 8))(v14, v40);
  return sub_10000C620(v42);
}

uint64_t sub_1003A4500(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v2 = sub_10000C518(&unk_1009400F0);
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v35 = &v30 - v3;
  v4 = sub_10074EAB4();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100749A94();
  v42 = *(v39 - 8);
  __chkstk_darwin(v39);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100925370);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v34 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  v15 = sub_10000C518(&unk_100930810);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v30 - v17;
  sub_100746944();
  sub_1007525C4();
  (*(v16 + 8))(v18, v15);
  sub_1007468F4();
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();

  sub_10007DC04();
  swift_unknownObjectRelease();
  sub_10000C824(v45, v44);
  sub_10000C518(&qword_1009242A0);
  sub_100744424();
  if (swift_dynamicCast())
  {
    v31 = v8;
    v33 = v6;
    v19 = v39;
    v20 = v40;
    v21 = v41;
    v22 = v43;
    v30 = v10;
    v23 = *(v10 + 16);
    v32 = v9;
    v23(v34, v14, v9);
    sub_100752DF4();
    v24 = v35;
    sub_100752994();
    sub_10000C518(&qword_100924B88);
    sub_100752764();
    sub_100752D34();
    v43 = v22;
    sub_100742DE4();

    v25 = v44[0];
    v26 = v14;
    if ((~v44[0] & 0xF000000000000007) != 0)
    {
      v27 = v44[1];
    }

    else
    {

      v27 = 0;
      v25 = v22;
    }

    v28 = v31;
    sub_100190DB8(v25, v27);
    sub_100079128(v25, v27);

    (*(v37 + 8))(v24, v38);
    (*(v20 + 8))(v33, v21);
    (*(v42 + 8))(v28, v19);
    (*(v30 + 8))(v26, v32);
  }

  else
  {
    (*(v40 + 8))(v6, v41);
    (*(v42 + 8))(v8, v39);
    (*(v10 + 8))(v14, v9);
  }

  return sub_10000C620(v45);
}

uint64_t sub_1003A4A78(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v20 = sub_10074EAB4();
  v18 = *(v20 - 8);
  __chkstk_darwin(v20);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100749A94();
  v4 = *(v17 - 8);
  __chkstk_darwin(v17);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000C518(&unk_100925370);
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = &v15 - v8;
  v10 = sub_10000C518(&unk_100930810);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v15 - v12;
  sub_100746944();
  sub_1007525C4();
  (*(v11 + 8))(v13, v10);
  sub_1007468F4();
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();

  sub_10007DC04();
  sub_100343E08(v21, v9, v19);
  swift_unknownObjectRelease();
  (*(v18 + 8))(v3, v20);
  (*(v4 + 8))(v6, v17);
  (*(v7 + 8))(v9, v16);
  return sub_10000C620(v21);
}

uint64_t sub_1003A4E1C(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t, char *, uint64_t, char *, char *))
{
  v28 = a4;
  v30 = a3;
  v26 = a2;
  v29 = sub_10000C518(&unk_1009400F0);
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v25 = &v25 - v4;
  v5 = sub_10074EAB4();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100749A94();
  v32 = *(v8 - 8);
  v33 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10000C518(&unk_100925370);
  v11 = *(v31 - 8);
  __chkstk_darwin(v31);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v25 - v15;
  v17 = sub_10000C518(&unk_100930810);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v25 - v19;
  sub_100746944();
  sub_1007525C4();
  (*(v18 + 8))(v20, v17);
  sub_1007468F4();
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();

  sub_10007DC04();
  sub_10000C824(v38, v37);
  sub_10000C518(&qword_1009242A0);
  v30(0);
  if (swift_dynamicCast())
  {
    v21 = v36;
    v22 = v31;
    (*(v11 + 16))(v13, v16, v31);
    sub_100752DF4();
    v23 = v25;
    sub_100752994();
    v28(v21, v23, v26, v10, v7);
    swift_unknownObjectRelease();

    (*(v27 + 8))(v23, v29);
    (*(v34 + 8))(v7, v35);
    (*(v32 + 8))(v10, v33);
    (*(v11 + 8))(v16, v22);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v34 + 8))(v7, v35);
    (*(v32 + 8))(v10, v33);
    (*(v11 + 8))(v16, v31);
  }

  return sub_10000C620(v38);
}

uint64_t sub_1003A52F8(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  ObjectType = swift_getObjectType();
  v28 = sub_10000C518(&unk_1009400F0);
  v25 = *(v28 - 8);
  __chkstk_darwin(v28);
  v24 = &v24 - v2;
  v3 = sub_10074EAB4();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100749A94();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10000C518(&unk_100925370);
  v9 = *(v29 - 8);
  __chkstk_darwin(v29);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  v15 = sub_10000C518(&unk_100930810);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v24 - v17;
  sub_100746944();
  sub_1007525C4();
  (*(v16 + 8))(v18, v15);
  sub_1007468F4();
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();

  v19 = sub_10007DC04();
  sub_10000C824(v37, v35);
  sub_10000C518(&qword_1009242A0);
  sub_1007445B4();
  if (swift_dynamicCast())
  {
    v36 = v34;
    v20 = v29;
    (*(v9 + 16))(v11, v14, v29);
    sub_100752DF4();
    v21 = v24;
    sub_100752994();
    v22 = sub_1003AEF90(&qword_100933288, type metadata accessor for PrivacyFooterCollectionViewCell);
    (*(v22 + 56))(&v36, v21, v27, v8, v5, v19, ObjectType, v22);
    swift_unknownObjectRelease();
    (*(v25 + 8))(v21, v28);
    (*(v32 + 8))(v5, v33);
    (*(v30 + 8))(v8, v31);
    (*(v9 + 8))(v14, v20);
    sub_10000C620(v37);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v32 + 8))(v5, v33);
    (*(v30 + 8))(v8, v31);
    (*(v9 + 8))(v14, v29);
    return sub_10000C620(v37);
  }
}

size_t sub_1003A5834(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v94 = a2;
  v2 = sub_10000C518(&unk_100935110);
  v3 = *(v2 - 8);
  v92 = v2;
  v93 = v3;
  __chkstk_darwin(v2);
  v91 = &v71 - v4;
  v81 = sub_100751344();
  v76 = *(v81 - 8);
  __chkstk_darwin(v81);
  v82 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&qword_100933250);
  __chkstk_darwin(v6 - 8);
  v75 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v77 = &v71 - v9;
  v10 = sub_10000C518(&unk_100933290);
  __chkstk_darwin(v10 - 8);
  v80 = &v71 - v11;
  v79 = sub_10000C518(&unk_1009400F0);
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v83 = &v71 - v12;
  v13 = sub_10074EAB4();
  v86 = *(v13 - 8);
  v87 = v13;
  __chkstk_darwin(v13);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_100749A94();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_10000C518(&unk_100925370);
  v18 = *(v89 - 8);
  __chkstk_darwin(v89);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v71 - v22;
  v24 = sub_10000C518(&unk_100930810);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v71 - v26;
  sub_100746944();
  sub_1007525C4();
  (*(v25 + 8))(v27, v24);
  sub_1007468F4();
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();

  sub_10007DC04();
  swift_unknownObjectRelease();
  sub_10000C824(v99, v96);
  sub_10000C518(&qword_1009242A0);
  sub_1007445F4();
  if (!swift_dynamicCast())
  {
    (*(v86 + 8))(v15, v87);
    (*(v84 + 8))(v17, v85);
    (*(v18 + 8))(v23, v89);
    return sub_10000C620(v99);
  }

  v72 = v17;
  v73 = v15;
  v28 = v95;
  (*(v18 + 16))(v20, v23, v89);
  sub_100752DF4();
  v29 = v28;
  sub_100752994();
  v96[0] = sub_1007445E4();
  sub_100743EB4();
  v30 = sub_100752764();
  sub_1003AEF90(&qword_100933028, &type metadata accessor for LinkableText);
  v31 = v80;
  v90 = v30;
  sub_100752684();

  v32 = sub_10000C518(&unk_1009332A0);
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  v33 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_bodyText;
  v34 = v88;
  swift_beginAccess();
  sub_100349358(v31, v34 + v33, &unk_100933290);
  swift_endAccess();
  sub_1003DE7E0();
  sub_10000C8CC(v31, &unk_100933290);
  v35 = sub_1007445C4();
  *(v34 + OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_isDetailHeader) = v35 & 1;
  v36 = *(v34 + OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_bodyLabel);
  sub_100016C60(0, &qword_100923500);
  v71 = v23;
  if (v35)
  {
    v37 = sub_100753DD4();
  }

  else
  {
    v37 = sub_100753DF4();
  }

  v38 = *(v36 + qword_100924048);
  *(v36 + qword_100924048) = v37;
  v39 = v37;
  if ((sub_100753FC4() & 1) == 0)
  {
    sub_10004E2D4();
  }

  v80 = v29;
  v40 = sub_1007445D4();
  v41 = v40;
  if (v40 >> 62)
  {
    v42 = sub_100754664();
  }

  else
  {
    v42 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v74 = v18;
  if (!v42)
  {

    v45 = _swiftEmptyArrayStorage;
    v51 = v82;
    v50 = v88;
LABEL_21:
    sub_1003E000C();
    v52 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_supplementaryItems;
    *(v50 + OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_supplementaryItems) = v45;

    sub_1003DEA84();
    if (sub_1007445C4())
    {
      v53 = *(v76 + 104);
      LODWORD(v93) = enum case for Separator.Position.top(_:);
      v92 = v53;
      v53(v51);
      v91 = sub_1007507D4();
      v97 = v91;
      v98 = &protocol witness table for ZeroDimension;
      sub_10000D134(v96);
      sub_1007507C4();
      v54 = v77;
      sub_100751354();
      v55 = sub_100751374();
      v56 = 1;
      v94 = *(*(v55 - 8) + 56);
      v94(v54, 0, 1, v55);
      v57 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_topSeparator;
      swift_beginAccess();
      sub_100349358(v54, v50 + v57, &qword_100933250);
      swift_endAccess();
      v58 = v50;
      sub_1003DF240();
      sub_10000C8CC(v54, &qword_100933250);
      if (*(*(v50 + v52) + 16))
      {
        v92(v82, v93, v81);
        v97 = v91;
        v98 = &protocol witness table for ZeroDimension;
        sub_10000D134(v96);
        sub_1007507C4();
        v59 = v75;
        sub_100751354();
        v56 = 0;
        v60 = v79;
        v62 = v86;
        v61 = v87;
        v63 = v78;
      }

      else
      {
        v60 = v79;
        v62 = v86;
        v61 = v87;
        v63 = v78;
        v59 = v75;
      }

      v94(v59, v56, 1, v55);
      v69 = v59;
      v70 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_middleSeparator;
      swift_beginAccess();
      sub_100349358(v69, v58 + v70, &qword_100933250);
      swift_endAccess();
      sub_1003DF254();

      sub_10000C8CC(v69, &qword_100933250);
      (*(v63 + 8))(v83, v60);
      (*(v62 + 8))(v73, v61);
    }

    else
    {
      v64 = sub_100751374();
      v65 = *(*(v64 - 8) + 56);
      v66 = v77;
      v65(v77, 1, 1, v64);
      v67 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_topSeparator;
      swift_beginAccess();
      sub_100349358(v66, v50 + v67, &qword_100933250);
      swift_endAccess();
      sub_1003DF240();
      sub_10000C8CC(v66, &qword_100933250);
      v65(v66, 1, 1, v64);
      v68 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_middleSeparator;
      swift_beginAccess();
      sub_100349358(v66, v50 + v68, &qword_100933250);
      swift_endAccess();
      sub_1003DF254();

      sub_10000C8CC(v66, &qword_100933250);
      (*(v78 + 8))(v83, v79);
      (*(v86 + 8))(v73, v87);
    }

    (*(v84 + 8))(v72, v85);
    (*(v74 + 8))(v71, v89);
    return sub_10000C620(v99);
  }

  v96[0] = _swiftEmptyArrayStorage;
  result = sub_10001E2E8(0, v42 & ~(v42 >> 63), 0);
  if ((v42 & 0x8000000000000000) == 0)
  {
    v44 = 0;
    v45 = v96[0];
    do
    {
      if ((v41 & 0xC000000000000001) != 0)
      {
        v46 = sub_100754574();
      }

      else
      {
        v46 = *(v41 + 8 * v44 + 32);
      }

      v95 = v46;
      sub_10074CFE4();
      sub_1003AEF90(&unk_100935120, &type metadata accessor for PrivacyHeaderSupplementaryItem);
      v47 = v91;
      sub_100752684();

      v96[0] = v45;
      v49 = v45[2];
      v48 = v45[3];
      if (v49 >= v48 >> 1)
      {
        sub_10001E2E8(v48 > 1, v49 + 1, 1);
        v45 = v96[0];
      }

      ++v44;
      v45[2] = v49 + 1;
      (*(v93 + 32))(v45 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v49, v47, v92);
    }

    while (v42 != v44);

    v50 = v88;
    v51 = v82;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003A66B0(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  ObjectType = swift_getObjectType();
  v2 = sub_10000C518(&qword_100935130);
  __chkstk_darwin(v2 - 8);
  v61 = &v51 - v3;
  v60 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v60);
  v56 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v59 = (&v51 - v6);
  v66 = sub_10000C518(&qword_100929360);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v72 = &v51 - v7;
  v64 = sub_10000C518(&unk_1009400F0);
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v70 = &v51 - v8;
  v68 = sub_10074EAB4();
  v71 = *(v68 - 8);
  __chkstk_darwin(v68);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_100749A94();
  v11 = *(v69 - 8);
  __chkstk_darwin(v69);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&unk_100925370);
  v73 = *(v14 - 8);
  v74 = v14;
  __chkstk_darwin(v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v51 - v18;
  v20 = sub_10000C518(&unk_100930810);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v51 - v22;
  sub_100746944();
  sub_1007525C4();
  (*(v21 + 8))(v23, v20);
  sub_1007468F4();
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();

  v24 = sub_10007DC04();
  sub_10000C824(v79, v78);
  sub_10000C518(&qword_1009242A0);
  sub_1007447D4();
  if (swift_dynamicCast())
  {
    v53 = v13;
    v55 = v11;
    v25 = v68;
    v26 = v77;
    v27 = *(v73 + 16);
    v52 = v19;
    v27(v16, v19, v74);
    sub_100752DF4();
    sub_100752994();
    v28 = [v24 snapshotPageTraitEnvironment];
    v29 = v58;
    *&v58[OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_pageTraits] = v28;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    [v29 setNeedsLayout];
    swift_unknownObjectRelease();
    v57 = v26;
    sub_1007447C4();
    v30 = sub_1007453B4();

    v54 = v10;
    if (v30)
    {
      v31 = v65;
      if (qword_100921BB8 != -1)
      {
        swift_once();
      }

      v32 = sub_10000D0FC(v60, qword_100982C08);
      v33 = v59;
      sub_100121090(v32, v59);
      v34 = *v33;
      v35 = v30;

      *v33 = v30;
      sub_100121090(v33, v56);
      sub_10000C518(&unk_100923AE0);
      v36 = v72;
      sub_1007434A4();

      sub_10024144C(v33);
    }

    else
    {
      v31 = v65;
      if (qword_100921BB8 != -1)
      {
        swift_once();
      }

      v37 = sub_10000D0FC(v60, qword_100982C08);
      sub_100121090(v37, v59);
      sub_10000C518(&unk_100923AE0);
      v36 = v72;
      sub_1007434A4();
    }

    v38 = v66;
    v39 = v29;
    v40 = sub_1007447C4();
    v41 = v61;
    (*(v31 + 16))(v61, v36, v38);
    (*(v31 + 56))(v41, 0, 1, v38);
    sub_10013C000(v40, v41, v62);

    sub_10000C8CC(v41, &qword_100935130);
    v42 = sub_1007447B4();
    if (!v42)
    {
      v42 = [objc_opt_self() clearColor];
    }

    v43 = v42;
    v44 = v71;
    v45 = v69;
    v46 = ObjectType;
    v76.receiver = v39;
    v76.super_class = ObjectType;
    objc_msgSendSuper2(&v76, "setBackgroundColor:", v42);
    v47 = *&v39[OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_iconView];
    v75.receiver = v39;
    v75.super_class = v46;
    v48 = v47;
    v49 = objc_msgSendSuper2(&v75, "backgroundColor");
    sub_100743224();

    [v39 setNeedsLayout];
    swift_unknownObjectRelease();

    (*(v31 + 8))(v72, v38);
    (*(v63 + 8))(v70, v64);
    (*(v44 + 8))(v54, v25);
    (*(v55 + 8))(v53, v45);
    (*(v73 + 8))(v52, v74);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v71 + 8))(v10, v68);
    (*(v11 + 8))(v13, v69);
    (*(v73 + 8))(v19, v74);
  }

  return sub_10000C620(v79);
}

uint64_t sub_1003A7070(uint64_t a1, uint64_t a2)
{
  v76 = a2;
  v2 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v2 - 8);
  v73 = v56 - v3;
  v71 = sub_10074C3E4();
  v67 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10000C518(&unk_100925560);
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = v56 - v5;
  v6 = sub_10000C518(&unk_1009259B0);
  __chkstk_darwin(v6 - 8);
  v65 = v56 - v7;
  v64 = sub_10074D734();
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v9 - 8);
  v66 = v56 - v10;
  v75 = sub_10000C518(&unk_1009400F0);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v77 = v56 - v11;
  v12 = sub_10074EAB4();
  v79 = *(v12 - 8);
  v80 = v12;
  __chkstk_darwin(v12);
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_100749A94();
  v15 = *(v78 - 8);
  __chkstk_darwin(v78);
  v17 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C518(&unk_100925370);
  v81 = *(v18 - 8);
  v82 = v18;
  __chkstk_darwin(v18);
  v20 = v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v56 - v22;
  v24 = sub_10000C518(&unk_100930810);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v56 - v26;
  sub_100746944();
  sub_1007525C4();
  v28 = v27;
  v29 = v14;
  (*(v25 + 8))(v28, v24);
  sub_1007468F4();
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();

  v30 = sub_10007DC04();
  sub_10000C824(v84, v83);
  sub_10000C518(&qword_1009242A0);
  sub_100744C54();
  if (swift_dynamicCast())
  {
    v59 = v17;
    v60 = v15;
    v31 = *(v81 + 16);
    v58 = v23;
    v31(v20, v23, v82);
    sub_100752DF4();
    sub_100752994();
    v32 = v61;
    v33 = [v61 contentView];
    v56[1] = v30;
    [v30 pageMarginInsets];
    [v33 setLayoutMargins:?];

    v34 = sub_100744BF4();
    v57 = v29;
    if (v34)
    {
      if (v34 >> 62)
      {
        v38 = v34;
        v39 = sub_100754664();
        v34 = v38;
        if (v39)
        {
          goto LABEL_5;
        }
      }

      else if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        v35 = v34;
        sub_1007442C4();
        sub_100752764();
        sub_100752D34();
        v36 = v83[0];
        v37 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_iconGridView];
        [v37 setHidden:0];
        *&v37[OBJC_IVAR____TtC22SubscribePageExtension12IconGridView_impressionableArtworks] = v35;

        *&v37[OBJC_IVAR____TtC22SubscribePageExtension12IconGridView_artworkLoader] = v36;

        sub_10071A850(v35, v36);

LABEL_10:
        v56[0] = *&v32[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_offerButton];
        v40 = sub_100744C34();
        v41 = sub_100744C14();
        v42 = sub_100744C04();
        v43 = v62;
        v44 = v64;
        (*(v62 + 104))(v63, enum case for OfferButtonPresenterViewAlignment.center(_:), v64);
        (*(v43 + 56))(v65, 1, 1, v44);
        sub_1003AEF90(&unk_100925550, &type metadata accessor for OfferButtonPresenterViewAlignment);
        v45 = v66;
        sub_10074A9C4();
        v46 = sub_10000C518(&unk_10092EEA0);
        (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
        v47 = v67;
        v48 = v71;
        (*(v67 + 104))(v68, enum case for OfferButtonSubtitlePosition.above(_:), v71);
        (*(v47 + 56))(v73, 1, 1, v48);
        sub_1003AEF90(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition);
        v49 = v69;
        sub_10074A9C4();
        sub_10015DE40(v40, v41, v42, v45, v49, v76, 0, 0);

        (*(v70 + 8))(v49, v72);
        sub_10000C8CC(v45, &unk_100925540);
        sub_10074B294();
        sub_100752764();
        sub_100752D34();
        v50 = v83[0];
        sub_100744C24();
        sub_100744C44();
        v51 = sub_10074B1F4();
        swift_allocObject();
        v52 = v50;
        v53 = sub_10074B1D4();
        sub_1003AEF90(&unk_1009332C8, type metadata accessor for ArcadeShowcaseCollectionViewCell);
        swift_unknownObjectRetain();
        sub_10074B1E4();
        v83[3] = v51;
        v83[0] = v53;
        v54 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_offerLabelPresenter;
        swift_beginAccess();

        sub_10006644C(v83, &v32[v54], &unk_100923520);
        swift_endAccess();
        [v32 setNeedsLayout];

        swift_unknownObjectRelease();

        (*(v74 + 8))(v77, v75);
        (*(v79 + 8))(v57, v80);
        (*(v60 + 8))(v59, v78);
        (*(v81 + 8))(v58, v82);
        return sub_10000C620(v84);
      }
    }

    [*&v32[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_iconGridView] setHidden:1];
    goto LABEL_10;
  }

  swift_unknownObjectRelease();
  (*(v79 + 8))(v29, v80);
  (*(v15 + 8))(v17, v78);
  (*(v81 + 8))(v23, v82);
  return sub_10000C620(v84);
}

uint64_t sub_1003A7D24(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v36 = sub_10074FE04();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v33 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v34 = &v33 - v4;
  v38 = sub_10000C518(&unk_1009400F0);
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v44 = &v33 - v5;
  v6 = sub_10074EAB4();
  v45 = *(v6 - 8);
  v46 = v6;
  __chkstk_darwin(v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100749A94();
  v42 = *(v9 - 8);
  v43 = v9;
  __chkstk_darwin(v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10000C518(&unk_100925370);
  v12 = *(v47 - 8);
  __chkstk_darwin(v47);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v33 - v16;
  v18 = sub_10000C518(&unk_100930810);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v33 - v20;
  sub_100746944();
  sub_1007525C4();
  (*(v19 + 8))(v21, v18);
  sub_1007468F4();
  v40 = v11;
  sub_1007468A4();
  swift_getKeyPath();
  v41 = v8;
  sub_100746914();

  sub_10007DC04();
  swift_unknownObjectRelease();
  sub_10000C824(v50, v49);
  sub_10000C518(&qword_1009242A0);
  sub_10074CC64();
  if (swift_dynamicCast())
  {
    v22 = v48;
    (*(v12 + 16))(v14, v17, v47);
    sub_100752DF4();
    sub_100752994();
    v23 = v33;
    sub_10074CC54();
    v24 = v34;
    sub_10019F81C(v34);
    v25 = *(v35 + 8);
    v26 = v23;
    v27 = v36;
    v25(v26, v36);
    sub_10074FE84();
    v25(v24, v27);
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    v30 = v39;
    v29[2] = v22;
    v29[3] = v30;
    v29[4] = v28;

    sub_10074FE34();

    v31 = swift_allocObject();
    *(v31 + 16) = v22;
    *(v31 + 24) = v30;

    sub_10074FE54();

    (*(v37 + 8))(v44, v38);
  }

  (*(v45 + 8))(v41, v46);
  (*(v42 + 8))(v40, v43);
  (*(v12 + 8))(v17, v47);
  return sub_10000C620(v50);
}

uint64_t sub_1003A838C(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v2 = sub_10000C518(&unk_1009400F0);
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin(v2);
  v41 = &v31 - v3;
  v4 = sub_10074EAB4();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100749A94();
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10000C518(&unk_100925370);
  v10 = *(v42 - 8);
  __chkstk_darwin(v42);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  v16 = sub_10000C518(&unk_100930810);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v31 - v18;
  sub_100746944();
  sub_1007525C4();
  (*(v17 + 8))(v19, v16);
  sub_1007468F4();
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();

  sub_10007DC04();
  sub_10000C824(v44, v43);
  sub_10000C518(&qword_1009242A0);
  sub_100742954();
  if (swift_dynamicCast())
  {
    v32 = v6;
    v20 = v15;
    v21 = v37;
    v22 = *(v10 + 16);
    v31 = v20;
    v22(v12);
    sub_100752DF4();
    sub_100752994();
    sub_1007454C4();
    v23 = swift_dynamicCastClass();
    v24 = v38;
    if (v23)
    {
      v25 = v23;
      v26 = v34;

      sub_100586A7C(v25, v33);
    }

    else
    {
      sub_10074F8A4();
      v27 = swift_dynamicCastClass();
      v26 = v34;
      v28 = v21;
      if (!v27)
      {
LABEL_8:
        [v26 setNeedsLayout];

        swift_unknownObjectRelease();
        (*(v35 + 8))(v41, v36);
        (*(v28 + 8))(v32, v24);
        (*(v39 + 8))(v9, v40);
        (*(v10 + 8))(v31, v42);
        return sub_10000C620(v44);
      }

      v29 = v27;

      sub_100586C90(v29, v33);
    }

    v28 = v21;
    goto LABEL_8;
  }

  swift_unknownObjectRelease();
  (*(v37 + 8))(v6, v38);
  (*(v39 + 8))(v9, v40);
  (*(v10 + 8))(v15, v42);
  return sub_10000C620(v44);
}

uint64_t sub_1003A88EC(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v27 = sub_10000C518(&unk_1009400F0);
  v26 = *(v27 - 8);
  __chkstk_darwin(v27);
  v24 = &v24 - v2;
  v3 = sub_10074EAB4();
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100749A94();
  v29 = *(v6 - 8);
  v30 = v6;
  __chkstk_darwin(v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10000C518(&unk_100925370);
  v9 = *(v28 - 8);
  __chkstk_darwin(v28);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  v15 = sub_10000C518(&unk_100930810);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v24 - v17;
  sub_100746944();
  sub_1007525C4();
  (*(v16 + 8))(v18, v15);
  sub_1007468F4();
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();

  v19 = sub_10007DC04();
  sub_10000C824(v35, v34);
  sub_10000C518(&qword_1009242A0);
  sub_100746A24();
  if (swift_dynamicCast())
  {
    v20 = v33;
    v21 = v28;
    (*(v9 + 16))(v11, v14, v28);
    sub_100752DF4();
    v22 = v24;
    sub_100752994();
    sub_1005943C0(v20, v22, v25, v8, v5, v19);
    swift_unknownObjectRelease();

    (*(v26 + 8))(v22, v27);
    (*(v31 + 8))(v5, v32);
    (*(v29 + 8))(v8, v30);
    (*(v9 + 8))(v14, v21);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v31 + 8))(v5, v32);
    (*(v29 + 8))(v8, v30);
    (*(v9 + 8))(v14, v28);
  }

  return sub_10000C620(v35);
}

uint64_t sub_1003A8DAC(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v2 = sub_10000C518(&unk_100933200);
  __chkstk_darwin(v2 - 8);
  v40 = &v37 - v3;
  v4 = sub_10000C518(&unk_1009400F0);
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v42 = &v37 - v5;
  v47 = sub_10074EAB4();
  v50 = *(v47 - 8);
  __chkstk_darwin(v47);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100749A94();
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10000C518(&unk_100925370);
  v11 = *(v46 - 8);
  __chkstk_darwin(v46);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  v17 = sub_10000C518(&unk_100930810);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v37 - v19;
  sub_100746944();
  sub_1007525C4();
  (*(v18 + 8))(v20, v17);
  sub_1007468F4();
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();

  sub_10007DC04();
  swift_unknownObjectRelease();
  sub_10000C824(v52, v51);
  sub_10000C518(&qword_1009242A0);
  sub_100749984();
  if (swift_dynamicCast())
  {
    v39 = v7;
    v38 = v11;
    v21 = *(v11 + 16);
    v22 = v46;
    v21(v13, v16, v46);
    sub_100752DF4();
    v23 = v42;
    sub_100752994();
    v24 = sub_100749964();
    if (v25)
    {
      v26 = v45;
      v37 = *&v45[OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCollectionViewCell_cardView];
      v27 = sub_100749974();
      v28 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
      v29 = v10;
      v30 = v40;
      (*(*(v28 - 8) + 56))(v40, 1, 1, v28);
      sub_100669490(v27, v30, 1, v41);

      v31 = v30;
      v10 = v29;
      sub_10000C8CC(v31, &unk_100933200);
      [v26 layoutIfNeeded];
    }

    else
    {
      sub_100669194(v24);
    }

    v32 = v47;
    v33 = v48;
    v34 = v49;
    v35 = v50;

    (*(v43 + 8))(v23, v44);
    (*(v35 + 8))(v39, v32);
    (*(v33 + 8))(v10, v34);
    (*(v38 + 8))(v16, v22);
  }

  else
  {
    (*(v50 + 8))(v7, v47);
    (*(v48 + 8))(v10, v49);
    (*(v11 + 8))(v16, v46);
  }

  return sub_10000C620(v52);
}

uint64_t sub_1003A93D0(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v2 = sub_10000C518(&unk_1009400F0);
  v58 = *(v2 - 8);
  v59 = v2;
  __chkstk_darwin(v2);
  v56 = v53 - v3;
  v61 = sub_10074EAB4();
  v64 = *(v61 - 8);
  __chkstk_darwin(v61);
  v5 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100749A94();
  v62 = *(v6 - 8);
  v63 = v6;
  __chkstk_darwin(v6);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_10000C518(&unk_100925370);
  v9 = *(v65 - 8);
  __chkstk_darwin(v65);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v53 - v13;
  v15 = sub_10000C518(&unk_100930810);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v53 - v17;
  sub_100746944();
  sub_1007525C4();
  v19 = v18;
  v20 = v8;
  (*(v16 + 8))(v19, v15);
  v21 = v5;
  sub_1007468F4();
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();

  v22 = sub_10007DC04();
  sub_10000C824(v68, v67);
  sub_10000C518(&qword_1009242A0);
  sub_100741D54();
  if (swift_dynamicCast())
  {
    v24 = v65;
    v23 = v66;
    (*(v9 + 16))(v11, v14, v65);
    sub_100752DF4();
    v25 = v56;
    sub_100752994();
    v26 = v22;
    sub_1006FF748(v23, v57, v20, v21, v22);
    v57 = v23;
    sub_100741D44();
    v27 = sub_10074EF34();
    v29 = v28;

    if (v29)
    {
      v53[1] = v26;
      v54 = v14;
      v55 = v20;
      v30 = v21;
      v69._countAndFlagsBits = 0x465F4E4F5F444441;
      v69._object = 0xEE005050415F524FLL;
      v70._object = 0x8000000100777750;
      v70._countAndFlagsBits = 0xD000000000000031;
      sub_1007458B4(v69, v70);
      sub_10000C518(&unk_100927770);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1007A5A00;
      *(v31 + 56) = &type metadata for String;
      *(v31 + 64) = sub_1000DD048();
      *(v31 + 32) = v27;
      *(v31 + 40) = v29;

      sub_1007530B4();

      v32 = objc_allocWithZone(NSMutableAttributedString);
      v33 = sub_100753064();
      v34 = [v32 initWithString:v33];

      v35 = objc_allocWithZone(NSString);
      v36 = sub_100753064();

      v37 = [v35 initWithString:v36];

      v38 = sub_100753064();

      v39 = [v37 rangeOfString:v38 options:4];
      v41 = v40;

      v42 = v60;
      v43 = [v60 tintColor];
      v67[0] = v43;
      sub_10000C518(&unk_100935100);
      v44 = sub_100754274();

      [v34 addAttribute:NSForegroundColorAttributeName value:v44 range:{v39, v41}];
      swift_unknownObjectRelease();
      v45 = *(*&v42[OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_subtitleLabel);
      if (v45)
      {
        v46 = v45;
        v47 = v34;
        [v46 setAttributedText:v47];
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      v48 = v61;
      v49 = v62;
      v51 = v63;
      v50 = v64;
      v21 = v30;
      v24 = v65;
      v20 = v55;
      v14 = v54;
    }

    else
    {
      swift_unknownObjectRelease();
      v48 = v61;
      v49 = v62;
      v51 = v63;
      v50 = v64;
    }

    (*(v58 + 8))(v25, v59);
    (*(v50 + 8))(v21, v48);
    (*(v49 + 8))(v20, v51);
    (*(v9 + 8))(v14, v24);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v64 + 8))(v5, v61);
    (*(v62 + 8))(v8, v63);
    (*(v9 + 8))(v14, v65);
  }

  return sub_10000C620(v68);
}

uint64_t sub_1003A9B94(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t, uint64_t, char *, char *, id))
{
  v29 = a4;
  v31 = a3;
  v27 = a2;
  v30 = sub_10000C518(&unk_1009400F0);
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v26 = &v26 - v4;
  v5 = sub_10074EAB4();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100749A94();
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin(v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10000C518(&unk_100925370);
  v11 = *(v32 - 8);
  __chkstk_darwin(v32);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v17 = sub_10000C518(&unk_100930810);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v26 - v19;
  sub_100746944();
  sub_1007525C4();
  (*(v18 + 8))(v20, v17);
  sub_1007468F4();
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();

  v21 = sub_10007DC04();
  sub_10000C824(v39, v38);
  sub_10000C518(&qword_1009242A0);
  v31(0);
  if (swift_dynamicCast())
  {
    v22 = v37;
    v23 = v32;
    (*(v11 + 16))(v13, v16, v32);
    sub_100752DF4();
    v24 = v26;
    sub_100752994();
    v29(v22, v27, v10, v7, v21);
    swift_unknownObjectRelease();

    (*(v28 + 8))(v24, v30);
    (*(v35 + 8))(v7, v36);
    (*(v33 + 8))(v10, v34);
    (*(v11 + 8))(v16, v23);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v35 + 8))(v7, v36);
    (*(v33 + 8))(v10, v34);
    (*(v11 + 8))(v16, v32);
  }

  return sub_10000C620(v39);
}

uint64_t sub_1003AA070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1003AEF90(&qword_1009350C8, type metadata accessor for AppEventCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1003AA14C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1003AEF90(&unk_1009350F0, type metadata accessor for AppEventCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1003AA1C0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1003AEF90(&unk_1009350F0, type metadata accessor for AppEventCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1003AA24C(uint64_t *a1))()
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
  sub_1003AEF90(&unk_1009350F0, type metadata accessor for AppEventCollectionViewCell);
  *(v3 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_1003AA308(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC22SubscribePageExtension26AppEventCollectionViewCell_appEventView) + OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_appEventCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView);
  sub_100016C60(0, &qword_100922300);
  v6 = v5;
  v7 = sub_100753FC4();

  return v7 & 1;
}

uint64_t sub_1003AA498(void *a1)
{
  a1[1] = sub_1003AEF90(&qword_1009350B0, type metadata accessor for AppEventCollectionViewCell);
  a1[2] = sub_1003AEF90(&qword_1009350B8, type metadata accessor for AppEventCollectionViewCell);
  a1[3] = sub_1003AEF90(&qword_1009350C0, type metadata accessor for AppEventCollectionViewCell);
  result = sub_1003AEF90(&qword_1009350C8, type metadata accessor for AppEventCollectionViewCell);
  a1[4] = result;
  return result;
}

char *sub_1003AA57C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100752AC4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension26AppEventCollectionViewCell_itemLayoutContext;
  v7 = sub_1007469A4();
  (*(*(v7 - 8) + 56))(&v0[v6], 1, 1, v7);
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension26AppEventCollectionViewCell_appEventView] = [objc_allocWithZone(type metadata accessor for AppEventView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19.receiver = v0;
  v19.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v9 = OBJC_IVAR____TtC22SubscribePageExtension26AppEventCollectionViewCell_appEventView;
  v10 = *&v8[OBJC_IVAR____TtC22SubscribePageExtension26AppEventCollectionViewCell_appEventView];
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  v11 = v8;
  v12 = v10;
  sub_100752A74();
  sub_10000C8CC(v17, &unk_100923520);
  sub_10000C8CC(v18, &unk_100923520);
  sub_100753C74();

  (*(v3 + 8))(v5, v2);
  v13 = [v11 contentView];
  [v13 setClipsToBounds:0];

  v14 = [v11 contentView];
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v15 = [v11 contentView];
  [v15 addSubview:*&v8[v9]];

  return v11;
}

uint64_t sub_1003AA830()
{
  v0 = sub_10000C518(&unk_1009400F0);
  v36 = *(v0 - 8);
  v37 = v0;
  __chkstk_darwin(v0);
  v34 = &v28 - v1;
  v2 = sub_10074EAB4();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100749A94();
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_100925370);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v33 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = sub_10000C518(&unk_100930810);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v28 - v16;
  sub_100746944();
  sub_1007525C4();
  (*(v15 + 8))(v17, v14);
  sub_1007468F4();
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();

  sub_10007DC04();
  swift_unknownObjectRelease();
  sub_10000C824(v43, v42);
  sub_10000C518(&qword_1009242A0);
  sub_100745794();
  if (swift_dynamicCast())
  {
    v30 = v7;
    v32 = v4;
    v19 = v38;
    v18 = v39;
    v29 = v9;
    v20 = *(v9 + 16);
    v28 = v13;
    v31 = v8;
    v20(v33, v13, v8);
    sub_100752DF4();
    v21 = v34;
    sub_100752994();
    v22 = v35;
    sub_100745784();
    sub_100745BD4();

    sub_100745774();
    if (v23)
    {
      v24 = sub_100743AD4();
    }

    else
    {
      v24 = 0;
    }

    v25 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension33ProductPageLinkCollectionViewCell_iconImage];
    *&v22[OBJC_IVAR____TtC22SubscribePageExtension33ProductPageLinkCollectionViewCell_iconImage] = v24;
    v26 = v24;

    sub_1004E30AC();
    [v22 setNeedsLayout];

    (*(v36 + 8))(v21, v37);
    (*(v19 + 8))(v32, v18);
    (*(v40 + 8))(v30, v41);
    (*(v29 + 8))(v28, v31);
  }

  else
  {
    (*(v38 + 8))(v4, v39);
    (*(v40 + 8))(v7, v41);
    (*(v9 + 8))(v13, v8);
  }

  return sub_10000C620(v43);
}

uint64_t sub_1003AAD98()
{
  v41 = sub_10000C518(&unk_1009400F0);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v45 = &v36 - v0;
  v1 = sub_10074EAB4();
  v43 = *(v1 - 8);
  v44 = v1;
  __chkstk_darwin(v1);
  v38 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v36 - v4;
  v6 = sub_100749A94();
  v7 = *(v6 - 8);
  v46 = v6;
  v47 = v7;
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10000C518(&unk_100925370);
  v10 = *(v42 - 8);
  __chkstk_darwin(v42);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  v16 = sub_10000C518(&unk_100930810);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v36 - v18;
  sub_100746944();
  sub_1007525C4();
  (*(v17 + 8))(v19, v16);
  sub_1007468F4();
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();

  sub_10007DC04();
  swift_unknownObjectRelease();
  sub_10000C824(v49, v48);
  sub_10000C518(&qword_1009242A0);
  sub_10074E8E4();
  if (swift_dynamicCast())
  {
    v37 = v9;
    v20 = v5;
    v22 = v43;
    v21 = v44;
    v23 = *(v10 + 16);
    v36 = v15;
    v24 = v15;
    v25 = v42;
    v23(v12, v24, v42);
    sub_100752DF4();
    sub_100752994();
    sub_10074E8C4();
    if (v26)
    {
      v27 = sub_100753064();
    }

    else
    {
      v27 = 0;
    }

    v28 = v40;
    [v40 setAccessibilityLabel:v27];

    v29 = v38;
    sub_10074EA74();
    sub_1003AEF90(&unk_100925360, &type metadata accessor for Shelf.PresentationHints);
    v30 = sub_100754324();
    v31 = *(v22 + 8);
    v31(v29, v21);
    if (v30)
    {
      v32 = sub_10074E8D4();
      v33 = &v28[OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_shortDescriptionLabelText];
      *v33 = v32;
      v33[1] = v34;

      sub_10032C34C();
    }

    (*(v39 + 8))(v45, v41);
    v31(v20, v21);
    (*(v47 + 8))(v37, v46);
    (*(v10 + 8))(v36, v25);
  }

  else
  {
    (*(v43 + 8))(v5, v44);
    (*(v47 + 8))(v9, v46);
    (*(v10 + 8))(v15, v42);
  }

  return sub_10000C620(v49);
}

uint64_t sub_1003AB348()
{
  v0 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v0 - 8);
  v65 = &v59 - v1;
  v67 = sub_1007504F4();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_10000C518(&unk_1009400F0);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v71 = &v59 - v3;
  v4 = sub_10074EAB4();
  v74 = *(v4 - 8);
  v75 = v4;
  __chkstk_darwin(v4);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100749A94();
  v8 = *(v7 - 8);
  v72 = v7;
  v73 = v8;
  __chkstk_darwin(v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10000C518(&unk_100925370);
  v11 = *(v76 - 8);
  __chkstk_darwin(v76);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v59 - v15;
  v17 = sub_10000C518(&unk_100930810);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v59 - v19;
  sub_100746944();
  sub_1007525C4();
  (*(v18 + 8))(v20, v17);
  sub_1007468F4();
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();

  v21 = sub_10007DC04();
  sub_10000C824(v78, v77);
  sub_10000C518(&qword_1009242A0);
  sub_10074E934();
  if (swift_dynamicCast())
  {
    v62 = v10;
    v63 = v6;
    v61 = v11;
    v22 = *(v11 + 16);
    v60 = v16;
    v23 = v76;
    v22(v13, v16, v76);
    sub_100752DF4();
    v24 = v71;
    sub_100752994();
    v25 = v70;
    v26 = *&v70[OBJC_IVAR____TtC22SubscribePageExtension23QuoteCollectionViewCell_quoteView];
    v27 = sub_10074E904();
    sub_10016E5F4(v27, v28);
    v29 = sub_10074E914();
    sub_10016ED68(v29, v30);
    v26[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_isFullWidthArtwork] = sub_10074E8F4() & 1;
    sub_10016F158();
    if (sub_10074E924())
    {
      sub_10074F2A4();
      sub_10074F2A4();
      v31 = v64;
      sub_100750504();
      v32 = v66;
      v33 = v65;
      v34 = v67;
      (*(v66 + 16))(v65, v31, v67);
      (*(v32 + 56))(v33, 0, 1, v34);
      v35 = OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkAspectRatio;
      swift_beginAccess();
      sub_10006644C(v33, &v26[v35], &unk_1009281D0);
      swift_endAccess();
      [*&v26[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkView] setHidden:0];
      [v26 setNeedsLayout];
      v36 = [v25 contentView];
      sub_100016C60(0, &qword_100922300);
      sub_1007477B4();
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;

      v79.origin.x = v38;
      v79.origin.y = v40;
      v79.size.width = v42;
      v79.size.height = v44;
      Width = CGRectGetWidth(v79);
      sub_1007504C4();
      v47 = v46;

      v48 = v31;
      v23 = v76;
      (*(v32 + 8))(v48, v34);
      v24 = v71;
      v49 = &v25[OBJC_IVAR____TtC22SubscribePageExtension23QuoteCollectionViewCell_preferredArtworkSize];
      *v49 = Width;
      *(v49 + 1) = v47;
    }

    else
    {
      v50 = v65;
      (*(v66 + 56))(v65, 1, 1, v67);
      v51 = OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkAspectRatio;
      swift_beginAccess();
      sub_10006644C(v50, &v26[v51], &unk_1009281D0);
      swift_endAccess();
      [*&v26[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkView] setHidden:1];
      [v26 setNeedsLayout];
      v52 = &v25[OBJC_IVAR____TtC22SubscribePageExtension23QuoteCollectionViewCell_preferredArtworkSize];
      *v52 = 0;
      *(v52 + 1) = 0;
    }

    v54 = v73;
    v53 = v74;
    v55 = v72;
    [v21 pageMarginInsets];
    v57 = v56;
    [v21 pageMarginInsets];
    [v26 setLayoutMargins:{0.0, v57, 0.0}];
    swift_unknownObjectRelease();

    (*(v68 + 8))(v24, v69);
    (*(v53 + 8))(v63, v75);
    (*(v54 + 8))(v62, v55);
    (*(v61 + 8))(v60, v23);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v74 + 8))(v6, v75);
    (*(v73 + 8))(v10, v72);
    (*(v11 + 8))(v16, v76);
  }

  return sub_10000C620(v78);
}

uint64_t sub_1003ABC30()
{
  v28 = sub_10000C518(&unk_1009400F0);
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v25 = &v25 - v0;
  v1 = sub_10074EAB4();
  v32 = *(v1 - 8);
  v33 = v1;
  __chkstk_darwin(v1);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100749A94();
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10000C518(&unk_100925370);
  v7 = *(v34 - 8);
  __chkstk_darwin(v34);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = sub_10000C518(&unk_100930810);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  sub_100746944();
  sub_1007525C4();
  (*(v14 + 8))(v16, v13);
  sub_1007468F4();
  sub_1007468A4();
  swift_getKeyPath();
  v29 = v3;
  sub_100746914();

  sub_10007DC04();
  swift_unknownObjectRelease();
  sub_10000C824(v36, v35);
  sub_10000C518(&qword_1009242A0);
  sub_10074F524();
  if (swift_dynamicCast())
  {
    (*(v7 + 16))(v9, v12, v34);
    sub_100752DF4();
    v17 = v25;
    sub_100752994();
    v18 = v27;
    v19 = *&v27[OBJC_IVAR____TtC22SubscribePageExtension26FootnoteCollectionViewCell_footnoteView];
    v20 = sub_10074F504();
    v21 = v19[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_hasChevron];
    v19[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_hasChevron] = (v20 & 2) != 0;
    sub_10013F464(v21);
    v19[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_textLightensOnHighlight] = (sub_10074F504() & 4) != 0;
    v22 = *&v19[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_textLabel];
    sub_10074F514();
    v23 = sub_100753064();

    [v22 setText:v23];

    [v19 setNeedsLayout];
    [v18 setNeedsLayout];

    (*(v26 + 8))(v17, v28);
  }

  (*(v32 + 8))(v29, v33);
  (*(v30 + 8))(v6, v31);
  (*(v7 + 8))(v12, v34);
  return sub_10000C620(v36);
}

uint64_t sub_1003AC130()
{
  v0 = sub_10000C518(&unk_1009400F0);
  v23 = *(v0 - 8);
  v24 = v0;
  __chkstk_darwin(v0);
  v22 = &v21 - v1;
  v2 = sub_10074EAB4();
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100749A94();
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000C518(&unk_100925370);
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  v14 = sub_10000C518(&unk_100930810);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v21 - v16;
  sub_100746944();
  sub_1007525C4();
  (*(v15 + 8))(v17, v14);
  sub_1007468F4();
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();

  sub_10007DC04();
  sub_10000C824(v31, v30);
  sub_10000C518(&qword_1009242A0);
  sub_10074EFD4();
  if (swift_dynamicCast())
  {
    v18 = v25;
    (*(v8 + 16))(v10, v13, v25);
    sub_100752DF4();
    v19 = v22;
    sub_100752994();
    sub_100377A2C();
    swift_unknownObjectRelease();

    (*(v23 + 8))(v19, v24);
    (*(v28 + 8))(v4, v29);
    (*(v26 + 8))(v7, v27);
    (*(v8 + 8))(v13, v18);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v28 + 8))(v4, v29);
    (*(v26 + 8))(v7, v27);
    (*(v8 + 8))(v13, v25);
  }

  return sub_10000C620(v31);
}

uint64_t sub_1003AC5E0()
{
  v1 = v0;
  v37 = sub_100745FF4();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v35 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000C518(&unk_1009400F0);
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v38 = &v34 - v4;
  v5 = sub_10074EAB4();
  v45 = *(v5 - 8);
  v46 = v5;
  __chkstk_darwin(v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100749A94();
  v43 = *(v8 - 8);
  v44 = v8;
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10000C518(&unk_100925370);
  v41 = *(v47 - 8);
  __chkstk_darwin(v47);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  v16 = sub_10000C518(&unk_100930810);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v34 - v18;
  sub_100746944();
  sub_1007525C4();
  v20 = v16;
  v21 = v7;
  (*(v17 + 8))(v19, v20);
  sub_1007468F4();
  v42 = v10;
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();

  sub_10007DC04();
  swift_unknownObjectRelease();
  sub_10000C824(v49, v48);
  sub_10000C518(&qword_1009242A0);
  sub_100743804();
  if (swift_dynamicCast())
  {
    v22 = v41;
    (*(v41 + 16))(v12, v15, v47);
    sub_100752DF4();
    v23 = v38;
    sub_100752994();
    v24 = v35;
    sub_1007437C4();
    v25 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_style;
    swift_beginAccess();
    v26 = v36;
    v27 = v37;
    (*(v36 + 24))(v1 + v25, v24, v37);
    swift_endAccess();
    sub_1002A1400();
    (*(v26 + 8))(v24, v27);
    v28 = sub_1007437D4();
    sub_1002A01F4(v28, v29);
    v30 = sub_1007437E4();
    sub_1002A0200(v30, v31);
    *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_artwork) = sub_1007437F4();

    v32 = sub_1007437A4();
    sub_1002A3850();
    *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_categories) = v32;

    sub_1002A1184();

    (*(v39 + 8))(v23, v40);
    (*(v45 + 8))(v21, v46);
    (*(v43 + 8))(v42, v44);
    (*(v22 + 8))(v15, v47);
  }

  else
  {
    (*(v45 + 8))(v7, v46);
    (*(v43 + 8))(v42, v44);
    (*(v41 + 8))(v15, v47);
  }

  return sub_10000C620(v49);
}

uint64_t sub_1003ACBFC()
{
  v0 = sub_10000C518(&unk_1009400F0);
  v30 = *(v0 - 8);
  v31 = v0;
  __chkstk_darwin(v0);
  v28 = &v27 - v1;
  v2 = sub_10074EAB4();
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100749A94();
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10000C518(&unk_100925370);
  v8 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = sub_10000C518(&unk_100930810);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - v16;
  sub_100746944();
  sub_1007525C4();
  (*(v15 + 8))(v17, v14);
  sub_1007468F4();
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();

  v18 = sub_10007DC04();
  sub_10000C824(v38, v37);
  sub_10000C518(&qword_1009242A0);
  sub_100744D14();
  if (swift_dynamicCast())
  {
    v19 = v32;
    (*(v8 + 16))(v10, v13, v32);
    sub_100752DF4();
    v20 = v28;
    sub_100752994();
    v21 = [v29 contentView];
    [v18 pageMarginInsets];
    [v21 setLayoutMargins:?];

    v22 = sub_100744D04();
    sub_10030B4D8(v22, v23);
    v24 = sub_100744CF4();
    sub_10030B4E4(v24, v25);
    swift_unknownObjectRelease();

    (*(v30 + 8))(v20, v31);
    (*(v35 + 8))(v4, v36);
    (*(v33 + 8))(v7, v34);
    (*(v8 + 8))(v13, v19);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v35 + 8))(v4, v36);
    (*(v33 + 8))(v7, v34);
    (*(v8 + 8))(v13, v32);
  }

  return sub_10000C620(v38);
}

uint64_t sub_1003AD0F4()
{
  v0 = sub_100744E04();
  __chkstk_darwin(v0 - 8);
  v26 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000C518(&unk_1009400F0);
  v27 = *(v2 - 8);
  v28 = v2;
  __chkstk_darwin(v2);
  v25 = &v25 - v3;
  v4 = sub_10074EAB4();
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100749A94();
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10000C518(&unk_100925370);
  v10 = *(v29 - 8);
  __chkstk_darwin(v29);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  v16 = sub_10000C518(&unk_100930810);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v25 - v18;
  sub_100746944();
  sub_1007525C4();
  (*(v17 + 8))(v19, v16);
  sub_1007468F4();
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();

  sub_10007DC04();
  swift_unknownObjectRelease();
  sub_10000C824(v35, v34);
  sub_10000C518(&qword_1009242A0);
  sub_100744E34();
  if (swift_dynamicCast())
  {
    v20 = v29;
    (*(v10 + 16))(v12, v15, v29);
    sub_100752DF4();
    v21 = v25;
    sub_100752994();
    v22 = v26;
    sub_100744E24();
    sub_100561A0C(v22);
    v23 = sub_100744E14();
    sub_100562538(v23);

    (*(v27 + 8))(v21, v28);
    (*(v32 + 8))(v6, v33);
    (*(v30 + 8))(v9, v31);
    (*(v10 + 8))(v15, v20);
  }

  else
  {
    (*(v32 + 8))(v6, v33);
    (*(v30 + 8))(v9, v31);
    (*(v10 + 8))(v15, v29);
  }

  return sub_10000C620(v35);
}

uint64_t sub_1003AD5F8()
{
  v26 = sub_10000C518(&unk_1009400F0);
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v23 = &v22 - v0;
  v1 = sub_10074EAB4();
  v30 = *(v1 - 8);
  v31 = v1;
  __chkstk_darwin(v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100749A94();
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000C518(&unk_100925370);
  v7 = *(v27 - 8);
  __chkstk_darwin(v27);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v13 = sub_10000C518(&unk_100930810);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22 - v15;
  sub_100746944();
  sub_1007525C4();
  (*(v14 + 8))(v16, v13);
  sub_1007468F4();
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();

  sub_10007DC04();
  swift_unknownObjectRelease();
  sub_10000C824(v34, v33);
  sub_10000C518(&qword_1009242A0);
  sub_100745764();
  if (swift_dynamicCast())
  {
    v17 = v32;
    v18 = v27;
    (*(v7 + 16))(v9, v12, v27);
    sub_100752DF4();
    v19 = v23;
    sub_100752994();
    v20 = v25;
    *&v25[OBJC_IVAR____TtC22SubscribePageExtension33PrivacyCategoryCollectionViewCell_privacyCategory] = v17;

    *(*&v20[OBJC_IVAR____TtC22SubscribePageExtension33PrivacyCategoryCollectionViewCell_privacyCategoryView] + OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_category) = v17;

    sub_1002E8FB4();
    [v20 setNeedsLayout];

    (*(v24 + 8))(v19, v26);
    (*(v30 + 8))(v3, v31);
    (*(v28 + 8))(v6, v29);
    (*(v7 + 8))(v12, v18);
  }

  else
  {
    (*(v30 + 8))(v3, v31);
    (*(v28 + 8))(v6, v29);
    (*(v7 + 8))(v12, v27);
  }

  return sub_10000C620(v34);
}

uint64_t sub_1003ADAF4()
{
  v27 = sub_10000C518(&unk_1009400F0);
  v26 = *(v27 - 8);
  __chkstk_darwin(v27);
  v25 = &v24 - v0;
  v1 = sub_10074EAB4();
  v31 = *(v1 - 8);
  v32 = v1;
  __chkstk_darwin(v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100749A94();
  v29 = *(v4 - 8);
  v30 = v4;
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10000C518(&unk_100925370);
  v7 = *(v28 - 8);
  __chkstk_darwin(v28);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v13 = sub_10000C518(&unk_100930810);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - v15;
  sub_100746944();
  sub_1007525C4();
  (*(v14 + 8))(v16, v13);
  sub_1007468F4();
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();

  sub_10007DC04();
  swift_unknownObjectRelease();
  sub_10000C824(v34, v33);
  sub_10000C518(&qword_1009242A0);
  sub_100746C64();
  if (swift_dynamicCast())
  {
    v17 = v28;
    (*(v7 + 16))(v9, v12, v28);
    sub_100752DF4();
    v18 = v25;
    sub_100752994();
    v19 = sub_100746C54();
    sub_10014A070(v19, v20);
    v21 = sub_100746C44();
    sub_10014A07C(v21, v22);

    (*(v26 + 8))(v18, v27);
    (*(v31 + 8))(v3, v32);
    (*(v29 + 8))(v6, v30);
    (*(v7 + 8))(v12, v17);
  }

  else
  {
    (*(v31 + 8))(v3, v32);
    (*(v29 + 8))(v6, v30);
    (*(v7 + 8))(v12, v28);
  }

  return sub_10000C620(v34);
}

uint64_t sub_1003ADFA4()
{
  v73 = sub_10000C518(&qword_1009332E8);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v74 = &v63 - v0;
  v70 = sub_100748914();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v71 = &v63 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10074FCD4();
  v79 = *(v2 - 8);
  v80 = v2;
  __chkstk_darwin(v2);
  v68 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v78 = &v63 - v5;
  v77 = sub_10000C518(&unk_1009400F0);
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v82 = &v63 - v6;
  v7 = sub_10074EAB4();
  v84 = *(v7 - 8);
  v85 = v7;
  __chkstk_darwin(v7);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_100749A94();
  v83 = *(v81 - 8);
  __chkstk_darwin(v81);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_10000C518(&unk_100925370);
  v12 = *(v86 - 8);
  __chkstk_darwin(v86);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v63 - v16;
  v18 = sub_10000C518(&unk_100930810);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v63 - v20;
  sub_100746944();
  sub_1007525C4();
  v22 = v18;
  v23 = v17;
  (*(v19 + 8))(v21, v22);
  sub_1007468F4();
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();

  v24 = sub_10007DC04();
  sub_10000C824(v88, v87);
  sub_10000C518(&qword_1009242A0);
  sub_100747324();
  if (swift_dynamicCast())
  {
    v65 = v11;
    v66 = v9;
    v67 = v12;
    v25 = *(v12 + 16);
    v64 = v23;
    v25(v14, v23, v86);
    sub_100752DF4();
    sub_100752994();
    v26 = v75;
    v27 = *(v75 + OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_numberCompletedLabel);
    v28 = sub_100747314();
    v89._object = 0x8000000100773260;
    v89._countAndFlagsBits = 0xD000000000000032;
    v90._countAndFlagsBits = 0;
    v90._object = 0xE000000000000000;
    sub_10074B194(v89, v28, v90);
    v29 = sub_100753064();

    [v27 setText:v29];

    v30 = *(v26 + OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_outOfTotalLabel);
    v31 = [v24 traitCollection];
    sub_1006546E0();

    v32 = sub_100753064();

    [v30 setText:v32];

    v33 = *(v26 + OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_completedLabel);
    sub_1007472F4();
    v34 = sub_100753064();

    [v33 setText:v34];

    v35 = sub_1007472E4();
    if (*(v35 + 16))
    {
      v36 = v78;
      v37 = *(v79 + 16);
      v38 = v80;
      v37(v78, v35 + ((*(v79 + 80) + 32) & ~*(v79 + 80)), v80);

      v37(v68, v36, v38);
      sub_100747304();
      v39 = [v24 traitCollection];
      LOBYTE(v37) = sub_1007537D4();

      v40 = &enum case for AchievementGroupView.Size.phone(_:);
      if ((v37 & 1) == 0)
      {
        v40 = &enum case for AchievementGroupView.Size.pad(_:);
      }

      (*(v69 + 104))(v71, *v40, v70);
      v41 = objc_allocWithZone(sub_100748924());
      v42 = sub_100748904();
      v43 = OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_achievementGroupView;
      v44 = *(v26 + OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_achievementGroupView);
      v45 = v84;
      if (v44)
      {
        [v44 removeFromSuperview];
        v46 = *(v26 + v43);
      }

      else
      {
        v46 = 0;
      }

      v51 = v82;
      v52 = v67;
      *(v26 + v43) = v42;
      v53 = v42;

      [*(v26 + OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_containerView) addSubview:v53];
      if (sub_100747304() < 2)
      {
        v54 = v85;
        v55 = v81;
        if (qword_100921828 != -1)
        {
          swift_once();
        }

        v56 = qword_100982368;
      }

      else
      {
        v54 = v85;
        v55 = v81;
        if (qword_100921830 != -1)
        {
          swift_once();
        }

        v56 = qword_100982380;
      }

      v57 = v73;
      v58 = sub_10000D0FC(v73, v56);
      (*(v72 + 16))(v74, v58, v57);
      swift_beginAccess();
      sub_10074AA14();
      swift_endAccess();
      swift_unknownObjectRelease();

      (*(v79 + 8))(v78, v80);
      (*(v76 + 8))(v51, v77);
      (*(v45 + 8))(v66, v54);
      (*(v83 + 8))(v65, v55);
    }

    else
    {

      v47 = OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_achievementGroupView;
      v48 = *(v26 + OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_achievementGroupView);
      v49 = v84;
      if (v48)
      {
        [v48 removeFromSuperview];
        v50 = *(v26 + v47);
      }

      else
      {
        v50 = 0;
      }

      v59 = v81;
      v60 = v82;
      v61 = v83;
      v52 = v67;
      *(v26 + v47) = 0;
      swift_unknownObjectRelease();

      (*(v76 + 8))(v60, v77);
      (*(v49 + 8))(v66, v85);
      (*(v61 + 8))(v65, v59);
    }

    (*(v52 + 8))(v64, v86);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v84 + 8))(v9, v85);
    (*(v83 + 8))(v11, v81);
    (*(v12 + 8))(v23, v86);
  }

  return sub_10000C620(v88);
}

uint64_t sub_1003AEAC8()
{
  v0 = sub_10000C518(&unk_1009400F0);
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v24 = v23 - v1;
  v2 = sub_10074EAB4();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100749A94();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000C518(&unk_100925370);
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v23 - v12;
  v14 = sub_10000C518(&unk_100930810);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v23 - v16;
  sub_100746944();
  sub_1007525C4();
  (*(v15 + 8))(v17, v14);
  sub_1007468F4();
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();

  sub_10007DC04();
  swift_unknownObjectRelease();
  sub_10000C824(v33, v32);
  sub_10000C518(&qword_1009242A0);
  sub_100747A54();
  if (swift_dynamicCast())
  {
    v18 = v27;
    (*(v8 + 16))(v10, v13, v27);
    sub_100752DF4();
    v19 = v24;
    sub_100752994();
    v20 = *(v23[1] + OBJC_IVAR____TtC22SubscribePageExtension36PreorderDisclaimerCollectionViewCell_disclaimerLabel);
    sub_100747A44();
    v21 = sub_100753064();

    [v20 setText:v21];

    (*(v25 + 8))(v19, v26);
    (*(v30 + 8))(v4, v31);
    (*(v28 + 8))(v7, v29);
    (*(v8 + 8))(v13, v18);
  }

  else
  {
    (*(v30 + 8))(v4, v31);
    (*(v28 + 8))(v7, v29);
    (*(v8 + 8))(v13, v27);
  }

  return sub_10000C620(v33);
}

uint64_t sub_1003AEF90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003AEFD8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003AF010()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1003AF058()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1003AF0A0(void *a1)
{
  sub_1003AF8D8();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&v1[qword_100935138];
    if (v4)
    {
      v5 = *&v1[qword_100935138];
    }

    else
    {
      v5 = [v1 contentView];
      v4 = 0;
    }

    v6 = v4;
    [v5 addSubview:v3];
    [v1 setNeedsLayout];
  }
}

uint64_t sub_1003AF174(void *a1)
{
  v3 = *&v1[qword_100935138];
  if (v3)
  {
    v4 = *&v1[qword_100935138];
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = v3;
    goto LABEL_7;
  }

  v4 = [v1 contentView];
  if (!a1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = v3;
  v6 = [a1 superview];
  if (!v6)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = v6;
  sub_100009D34();
  v8 = sub_100753FC4();

  v4 = v7;
LABEL_8:

  return v8 & 1;
}

void sub_1003AF230(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_1003AF0A0(0);
}

void sub_1003AF28C(double *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setFrame:{*a1, a1[1], a1[2], a1[3]}];
  }
}

void sub_1003AF304(void *a1)
{
  v3 = *(v1 + qword_100935138);
  *(v1 + qword_100935138) = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = a1;
  if (Strong)
  {
    [v4 addSubview:Strong];
  }
}

id sub_1003AF394(char *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v11 = &a1[qword_10097FEF0];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&a1[qword_100935138] = 0;
  v13.receiver = a1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "initWithFrame:", a2, a3, a4, a5);
}

void sub_1003AF438()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + qword_100935138);
}

void sub_1003AF478(uint64_t a1)
{
  swift_unknownObjectWeakDestroy();
  v2 = *(a1 + qword_100935138);
}

uint64_t type metadata accessor for FramedVideoCollectionViewCell()
{
  result = qword_100935168;
  if (!qword_100935168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_1003AF584(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1003AF5D8;
}

void sub_1003AF5D8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1003AF0A0(v2);
  }

  else
  {
    sub_1003AF0A0(*a1);
  }
}

uint64_t sub_1003AF640()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1003AFA40(&qword_100935308, type metadata accessor for FramedVideoCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1003AF6B4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1003AFA40(&qword_100935308, type metadata accessor for FramedVideoCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

void (*sub_1003AF740(uint64_t *a1))(void *a1)
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
  sub_1003AFA40(&qword_100935308, type metadata accessor for FramedVideoCollectionViewCell);
  *(v3 + 32) = sub_100747DB4();
  return sub_100018728;
}

void sub_1003AF8D8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = *&v0[qword_100935138];
  if (v2)
  {
    v9 = *&v0[qword_100935138];
    if (Strong)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = v2;
    goto LABEL_11;
  }

  v9 = [v0 contentView];
  if (!Strong)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_1003AFA40(&qword_1009230E0, type metadata accessor for VideoView);
  v3 = v2;
  v4 = [Strong superview];
  if (v4)
  {
    v5 = v4;
    sub_100009D34();
    v6 = sub_100753FC4();

    if ((v6 & 1) == 0)
    {
      return;
    }

    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      return;
    }

    v9 = v7;
    [v7 removeFromSuperview];
  }

  else
  {
  }

LABEL_11:
}

uint64_t sub_1003AFA40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003AFA88()
{
  v0 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100039C50(v0, qword_10097FEF8);
  v1 = sub_10000D0FC(v0, qword_10097FEF8);
  return sub_1003AFAF0(0, v1);
}

uint64_t sub_1003AFAF0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100750304();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v29 = a1;
  }

  else
  {
    sub_10000D198();
    v29 = sub_100753EF4();
  }

  v8 = qword_100920E20;
  v9 = a1;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_100750534();
  v11 = sub_10000D0FC(v10, qword_1009807B0);
  v28 = v11;
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v13 = v12[6];
  v14 = *(v10 - 8);
  v15 = *(v14 + 16);
  v27 = v15;
  v24[1] = v14 + 16;
  v15(a2 + v13, v11, v10);
  v15(v7, v11, v10);
  v26 = enum case for FontSource.useCase(_:);
  v25 = v5[13];
  v25(v7);
  v31 = v4;
  v32 = &protocol witness table for FontSource;
  v16 = sub_10000D134(v30);
  v17 = v5[2];
  v17(v16, v7, v4);
  sub_100750B14();
  v18 = v5[1];
  v18(v7, v4);
  v27(v7, v28, v10);
  (v25)(v7, v26, v4);
  v31 = v4;
  v32 = &protocol witness table for FontSource;
  v19 = sub_10000D134(v30);
  v17(v19, v7, v4);
  sub_100750B14();
  v18(v7, v4);
  v20 = (a2 + v12[12]);
  v21 = sub_1007507D4();
  v20[3] = v21;
  v20[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v20);
  sub_1007507C4();
  v22 = (a2 + v12[13]);
  v22[3] = v21;
  v22[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v22);
  result = sub_1007507C4();
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v29;
  *(a2 + v12[7]) = 0;
  *(a2 + v12[8]) = 1077936128;
  *(a2 + v12[11]) = 1098907648;
  return result;
}

uint64_t sub_1003AFE24()
{
  v0 = sub_100750304();
  v37 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100750B04();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v39 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v42 = &v29 - v6;
  v7 = sub_100750534();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100039C50(v11, qword_10097FF10);
  v38 = v11;
  v12 = sub_10000D0FC(v11, qword_10097FF10);
  sub_10000D198();
  v36 = sub_100753DD4();
  v13 = sub_100753094();
  v34 = v14;
  v35 = v13;
  if (qword_100920E20 != -1)
  {
    swift_once();
  }

  v15 = sub_10000D0FC(v7, qword_1009807B0);
  v43 = v7;
  v16 = *(v8 + 16);
  v33 = v10;
  v16(v10, v15, v7);
  v16(v2, v15, v7);
  v31 = enum case for FontSource.useCase(_:);
  v17 = v37;
  v30 = *(v37 + 104);
  v30(v2);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v18 = sub_10000D134(&v47);
  v32 = v8;
  v29 = *(v17 + 16);
  v29(v18, v2, v0);
  sub_100750B14();
  v19 = *(v17 + 8);
  v19(v2, v0);
  v16(v2, v15, v43);
  (v30)(v2, v31, v0);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v20 = sub_10000D134(&v47);
  v29(v20, v2, v0);
  v21 = v39;
  sub_100750B14();
  v19(v2, v0);
  v22 = sub_1007507D4();
  v48 = v22;
  v49 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v47);
  sub_1007507C4();
  v45 = v22;
  v46 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v44);
  sub_1007507C4();
  v23 = v35;
  *v12 = v36;
  *(v12 + 1) = v23;
  v24 = v33;
  *(v12 + 2) = v34;
  v25 = v38;
  (*(v32 + 32))(&v12[v38[6]], v24, v43);
  *&v12[v25[7]] = 0;
  *&v12[v25[8]] = 1077936128;
  v26 = v41;
  v27 = *(v40 + 32);
  v27(&v12[v25[9]], v42, v41);
  v27(&v12[v25[10]], v21, v26);
  *&v12[v25[11]] = 1098907648;
  sub_100012160(&v47, &v12[v25[12]]);
  return sub_100012160(&v44, &v12[v25[13]]);
}

uint64_t sub_1003B030C()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = sub_100750534();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100039C50(v12, qword_10097FF28);
  v32 = v12;
  v13 = sub_10000D0FC(v12, qword_10097FF28);
  sub_10000D198();
  v31 = sub_100753DD4();
  if (qword_100920E28 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v8, qword_1009807C8);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_10000D134(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  sub_100750B14();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_10000D134(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  sub_100750B14();
  v17(v3, v0);
  v20 = sub_1007507D4();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v41);
  sub_1007507C4();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v38);
  sub_1007507C4();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 0;
  sub_100012160(&v41, &v13[v21[12]]);
  return sub_100012160(&v38, &v13[v21[13]]);
}

uint64_t sub_1003B07B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100750304();
  v40 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v7);
  v9 = (v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_100750534();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920E48 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v10, qword_100980828);
  v42 = v11;
  v16 = *(v11 + 16);
  v15 = v11 + 16;
  v17 = v16;
  v16(v13, v14, v10);
  v43 = v9;
  sub_1003B0C30(v9);
  v18 = sub_1007537D4();
  sub_10000D198();
  if (v18)
  {
    v19 = sub_100753DD4();
  }

  else
  {
    v19 = sub_100753DF4();
  }

  v41 = v19;
  v17(a2 + v7[6], v13, v10);
  v38 = v17;
  sub_1003B6884(a1);
  v17(v6, v13, v10);
  v37 = enum case for FontSource.useCase(_:);
  v20 = v40;
  v36 = *(v40 + 104);
  v36(v6);
  v46 = v4;
  v47 = &protocol witness table for FontSource;
  v21 = sub_10000D134(v45);
  v44 = v10;
  v35[1] = v15;
  v22 = *(v20 + 16);
  v22(v21, v6, v4);
  sub_100750B14();
  v39 = v13;
  v23 = *(v20 + 8);
  v23(v6, v4);
  v38(v6, v13, v44);
  (v36)(v6, v37, v4);
  v46 = v4;
  v47 = &protocol witness table for FontSource;
  v24 = sub_10000D134(v45);
  v22(v24, v6, v4);
  sub_100750B14();
  v23(v6, v4);
  v25 = v7[9];
  v26 = (a2 + v7[12]);
  v27 = sub_100750B04();
  v26[3] = v27;
  v26[4] = &protocol witness table for StaticDimension;
  v28 = sub_10000D134(v26);
  v29 = *(*(v27 - 8) + 16);
  v30 = v43;
  v29(v28, v43 + v25, v27);
  v31 = v7[10];
  v32 = (a2 + v7[13]);
  v32[3] = v27;
  v32[4] = &protocol witness table for StaticDimension;
  v33 = sub_10000D134(v32);
  v29(v33, (v30 + v31), v27);
  sub_1003B6E50(v30);
  result = (*(v42 + 8))(v39, v44);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v41;
  *(a2 + v7[7]) = 0;
  *(a2 + v7[8]) = 1098907648;
  *(a2 + v7[11]) = 0;
  return result;
}

uint64_t sub_1003B0C30@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100750304();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D198();
  v25 = sub_100753DF4();
  if (qword_100920E40 != -1)
  {
    swift_once();
  }

  v6 = sub_100750534();
  v7 = sub_10000D0FC(v6, qword_100980810);
  v24 = v7;
  v8 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v9 = v8[6];
  v10 = *(v6 - 8);
  v11 = *(v10 + 16);
  v23 = v11;
  v20[1] = v10 + 16;
  v11(a1 + v9, v7, v6);
  v11(v5, v7, v6);
  v22 = enum case for FontSource.useCase(_:);
  v21 = v3[13];
  v21(v5);
  v27 = v2;
  v28 = &protocol witness table for FontSource;
  v12 = sub_10000D134(v26);
  v13 = v3[2];
  v13(v12, v5, v2);
  sub_100750B14();
  v14 = v3[1];
  v14(v5, v2);
  v23(v5, v24, v6);
  (v21)(v5, v22, v2);
  v27 = v2;
  v28 = &protocol witness table for FontSource;
  v15 = sub_10000D134(v26);
  v13(v15, v5, v2);
  sub_100750B14();
  v14(v5, v2);
  v16 = (a1 + v8[12]);
  v17 = sub_1007507D4();
  v16[3] = v17;
  v16[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v16);
  sub_1007507C4();
  v18 = (a1 + v8[13]);
  v18[3] = v17;
  v18[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v18);
  result = sub_1007507C4();
  a1[1] = 0;
  a1[2] = 0;
  *a1 = v25;
  *(a1 + v8[7]) = 0;
  *(a1 + v8[8]) = 1098907648;
  *(a1 + v8[11]) = 0;
  return result;
}

uint64_t sub_1003B0F40()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = sub_100750534();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100039C50(v12, qword_10097FF40);
  v32 = v12;
  v13 = sub_10000D0FC(v12, qword_10097FF40);
  sub_10000D198();
  v31 = sub_100753DF4();
  if (qword_100920E30 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v8, qword_1009807E0);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_10000D134(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  sub_100750B14();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_10000D134(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  sub_100750B14();
  v17(v3, v0);
  v20 = sub_1007507D4();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v41);
  sub_1007507C4();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v38);
  sub_1007507C4();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 0;
  sub_100012160(&v41, &v13[v21[12]]);
  return sub_100012160(&v38, &v13[v21[13]]);
}

uint64_t sub_1003B13F0()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v23 - v7;
  v8 = sub_100750534();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100039C50(v11, qword_10097FF58);
  v12 = sub_10000D0FC(v11, qword_10097FF58);
  sub_10000D198();
  v23 = sub_100753DF4();
  if (qword_100920E38 != -1)
  {
    swift_once();
  }

  v13 = sub_10000D0FC(v8, qword_1009807F8);
  v14 = *(v9 + 16);
  v14(v27, v13, v8);
  v14(v3, v13, v8);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v15 = sub_10000D134(&v32);
  (*(v1 + 16))(v15, v3, v0);
  sub_100750B14();
  (*(v1 + 8))(v3, v0);
  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v16 = v26;
  v17 = sub_10000D0FC(v26, qword_100982098);
  v19 = v24;
  v18 = v25;
  (*(v25 + 16))(v24, v17, v16);
  v20 = sub_1007507D4();
  v33 = v20;
  v34 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v32);
  sub_1007507C4();
  v30 = v20;
  v31 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v29);
  sub_1007507C4();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = v23;
  (*(v9 + 32))(&v12[v11[6]], v27, v8);
  *&v12[v11[7]] = 0;
  *&v12[v11[8]] = 1090519040;
  v21 = *(v18 + 32);
  v21(&v12[v11[9]], v28, v16);
  v21(&v12[v11[10]], v19, v16);
  *&v12[v11[11]] = 0;
  sub_100012160(&v32, &v12[v11[12]]);
  return sub_100012160(&v29, &v12[v11[13]]);
}

uint64_t sub_1003B1848()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v23 - v7;
  v8 = sub_100750534();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100039C50(v11, qword_10097FF70);
  v12 = sub_10000D0FC(v11, qword_10097FF70);
  sub_10000D198();
  v23 = sub_100753DD4();
  if (qword_100920E50 != -1)
  {
    swift_once();
  }

  v13 = sub_10000D0FC(v8, qword_100980840);
  v14 = *(v9 + 16);
  v14(v27, v13, v8);
  v14(v3, v13, v8);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v15 = sub_10000D134(&v32);
  (*(v1 + 16))(v15, v3, v0);
  sub_100750B14();
  (*(v1 + 8))(v3, v0);
  if (qword_100921748 != -1)
  {
    swift_once();
  }

  v16 = v26;
  v17 = sub_10000D0FC(v26, qword_100982158);
  v19 = v24;
  v18 = v25;
  (*(v25 + 16))(v24, v17, v16);
  v20 = sub_1007507D4();
  v33 = v20;
  v34 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v32);
  sub_1007507C4();
  v30 = v20;
  v31 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v29);
  sub_1007507C4();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = v23;
  (*(v9 + 32))(&v12[v11[6]], v27, v8);
  *&v12[v11[7]] = 0;
  *&v12[v11[8]] = 1090519040;
  v21 = *(v18 + 32);
  v21(&v12[v11[9]], v28, v16);
  v21(&v12[v11[10]], v19, v16);
  *&v12[v11[11]] = 1102053376;
  sub_100012160(&v32, &v12[v11[12]]);
  return sub_100012160(&v29, &v12[v11[13]]);
}

uint64_t sub_1003B1CA4()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v23 - v7;
  v8 = sub_100750534();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100039C50(v11, qword_10097FF88);
  v12 = sub_10000D0FC(v11, qword_10097FF88);
  sub_10000D198();
  v23 = sub_100753DD4();
  if (qword_100920E50 != -1)
  {
    swift_once();
  }

  v13 = sub_10000D0FC(v8, qword_100980840);
  v14 = *(v9 + 16);
  v14(v27, v13, v8);
  v14(v3, v13, v8);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v15 = sub_10000D134(&v32);
  (*(v1 + 16))(v15, v3, v0);
  sub_100750B14();
  (*(v1 + 8))(v3, v0);
  if (qword_100921748 != -1)
  {
    swift_once();
  }

  v16 = v26;
  v17 = sub_10000D0FC(v26, qword_100982158);
  v19 = v24;
  v18 = v25;
  (*(v25 + 16))(v24, v17, v16);
  v20 = sub_1007507D4();
  v33 = v20;
  v34 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v32);
  sub_1007507C4();
  v30 = v20;
  v31 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v29);
  sub_1007507C4();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = v23;
  (*(v9 + 32))(&v12[v11[6]], v27, v8);
  *&v12[v11[7]] = 0;
  *&v12[v11[8]] = 1090519040;
  v21 = *(v18 + 32);
  v21(&v12[v11[9]], v28, v16);
  v21(&v12[v11[10]], v19, v16);
  *&v12[v11[11]] = 1102053376;
  sub_100012160(&v32, &v12[v11[12]]);
  return sub_100012160(&v29, &v12[v11[13]]);
}

uint64_t sub_1003B2100()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = sub_100750534();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100039C50(v12, qword_10097FFA0);
  v32 = v12;
  v13 = sub_10000D0FC(v12, qword_10097FFA0);
  sub_10000D198();
  v31 = sub_100753DD4();
  if (qword_100920E50 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v8, qword_100980840);
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v27 = enum case for FontSource.useCase(_:);
  v36 = v8;
  v28 = v1[13];
  v28(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_10000D134(&v41);
  v29 = v9;
  v17 = v1[2];
  v17(v16, v3, v0);
  sub_100750B14();
  v26 = v1[1];
  v26(v3, v0);
  v15(v3, v14, v36);
  (v28)(v3, v27, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_10000D134(&v41);
  v17(v18, v3, v0);
  v19 = v33;
  sub_100750B14();
  v26(v3, v0);
  v20 = sub_1007507D4();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v41);
  sub_1007507C4();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v38);
  sub_1007507C4();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 1102053376;
  sub_100012160(&v41, &v13[v21[12]]);
  return sub_100012160(&v38, &v13[v21[13]]);
}

uint64_t sub_1003B25D0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100750304();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100750B04();
  v40 = *(v7 - 8);
  v41 = v7;
  __chkstk_darwin(v7);
  v39 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = sub_100750534();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v42 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100039C50(v15, a2);
  v16 = sub_10000D0FC(v15, a2);
  sub_10000D198();
  v38 = sub_100753DD4();
  if (qword_100920E50 != -1)
  {
    swift_once();
  }

  v17 = sub_10000D0FC(v12, qword_100980840);
  v37 = v13;
  v18 = *(v13 + 16);
  v18(v42, v17, v12);
  v18(v6, v17, v12);
  v19 = v4[13];
  v34 = enum case for FontSource.useCase(_:);
  v33 = v19;
  v19(v6);
  v47 = v3;
  v48 = &protocol witness table for FontSource;
  v20 = sub_10000D134(&v46);
  v36 = v12;
  v32 = v4[2];
  v32(v20, v6, v3);
  v35 = v11;
  sub_100750B14();
  v31 = v4[1];
  v31(v6, v3);
  if (qword_100920E30 != -1)
  {
    swift_once();
  }

  v21 = v36;
  v22 = sub_10000D0FC(v36, qword_1009807E0);
  v18(v6, v22, v21);
  v33(v6, v34, v3);
  v47 = v3;
  v48 = &protocol witness table for FontSource;
  v23 = sub_10000D134(&v46);
  v32(v23, v6, v3);
  v24 = v39;
  sub_100750B14();
  v31(v6, v3);
  v25 = sub_1007507D4();
  v47 = v25;
  v48 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v46);
  sub_1007507C4();
  v44 = v25;
  v45 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v43);
  sub_1007507C4();
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  v26 = v37;
  *v16 = v38;
  (*(v26 + 32))(&v16[v15[6]], v42, v21);
  *&v16[v15[7]] = 0;
  *&v16[v15[8]] = 1090519040;
  v27 = v41;
  v28 = *(v40 + 32);
  v28(&v16[v15[9]], v35, v41);
  v28(&v16[v15[10]], v24, v27);
  *&v16[v15[11]] = 1102053376;
  sub_100012160(&v46, &v16[v15[12]]);
  return sub_100012160(&v43, &v16[v15[13]]);
}

uint64_t sub_1003B2AD4()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v23 - v7;
  v8 = sub_100750534();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100039C50(v11, qword_10097FFE8);
  v12 = sub_10000D0FC(v11, qword_10097FFE8);
  sub_10000D198();
  v23 = sub_100753DD4();
  if (qword_100920E50 != -1)
  {
    swift_once();
  }

  v13 = sub_10000D0FC(v8, qword_100980840);
  v14 = *(v9 + 16);
  v14(v27, v13, v8);
  v14(v3, v13, v8);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v15 = sub_10000D134(&v32);
  (*(v1 + 16))(v15, v3, v0);
  sub_100750B14();
  (*(v1 + 8))(v3, v0);
  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v16 = v26;
  v17 = sub_10000D0FC(v26, qword_100982098);
  v19 = v24;
  v18 = v25;
  (*(v25 + 16))(v24, v17, v16);
  v20 = sub_1007507D4();
  v33 = v20;
  v34 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v32);
  sub_1007507C4();
  v30 = v20;
  v31 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v29);
  sub_1007507C4();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = v23;
  (*(v9 + 32))(&v12[v11[6]], v27, v8);
  *&v12[v11[7]] = 0;
  *&v12[v11[8]] = 1090519040;
  v21 = *(v18 + 32);
  v21(&v12[v11[9]], v28, v16);
  v21(&v12[v11[10]], v19, v16);
  *&v12[v11[11]] = 1102053376;
  sub_100012160(&v32, &v12[v11[12]]);
  return sub_100012160(&v29, &v12[v11[13]]);
}

uint64_t sub_1003B2F34()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v23 - v7;
  v8 = sub_100750534();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100039C50(v11, qword_100980000);
  v12 = sub_10000D0FC(v11, qword_100980000);
  sub_10000D198();
  v23 = sub_100753DD4();
  if (qword_100920E50 != -1)
  {
    swift_once();
  }

  v13 = sub_10000D0FC(v8, qword_100980840);
  v14 = *(v9 + 16);
  v14(v27, v13, v8);
  v14(v3, v13, v8);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v15 = sub_10000D134(&v32);
  (*(v1 + 16))(v15, v3, v0);
  sub_100750B14();
  (*(v1 + 8))(v3, v0);
  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v16 = v26;
  v17 = sub_10000D0FC(v26, qword_100982098);
  v19 = v24;
  v18 = v25;
  (*(v25 + 16))(v24, v17, v16);
  v20 = sub_1007507D4();
  v33 = v20;
  v34 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v32);
  sub_1007507C4();
  v30 = v20;
  v31 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v29);
  sub_1007507C4();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = v23;
  (*(v9 + 32))(&v12[v11[6]], v27, v8);
  *&v12[v11[7]] = 0;
  *&v12[v11[8]] = 1090519040;
  v21 = *(v18 + 32);
  v21(&v12[v11[9]], v28, v16);
  v21(&v12[v11[10]], v19, v16);
  *&v12[v11[11]] = 1102053376;
  sub_100012160(&v32, &v12[v11[12]]);
  return sub_100012160(&v29, &v12[v11[13]]);
}

uint64_t sub_1003B3390()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = sub_100750534();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100039C50(v12, qword_100980018);
  v32 = v12;
  v13 = sub_10000D0FC(v12, qword_100980018);
  sub_10000D198();
  v31 = sub_100753DD4();
  if (qword_100920E50 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v8, qword_100980840);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_10000D134(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  sub_100750B14();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_10000D134(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  sub_100750B14();
  v17(v3, v0);
  v20 = sub_1007507D4();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v41);
  sub_1007507C4();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v38);
  sub_1007507C4();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 1102053376;
  sub_100012160(&v41, &v13[v21[12]]);
  return sub_100012160(&v38, &v13[v21[13]]);
}

uint64_t sub_1003B3840()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v23 - v7;
  v8 = sub_100750534();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100039C50(v11, qword_100980030);
  v12 = sub_10000D0FC(v11, qword_100980030);
  sub_10000D198();
  v23 = sub_100753DD4();
  if (qword_100920E50 != -1)
  {
    swift_once();
  }

  v13 = sub_10000D0FC(v8, qword_100980840);
  v14 = *(v9 + 16);
  v14(v27, v13, v8);
  v14(v3, v13, v8);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v15 = sub_10000D134(&v32);
  (*(v1 + 16))(v15, v3, v0);
  sub_100750B14();
  (*(v1 + 8))(v3, v0);
  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v16 = v26;
  v17 = sub_10000D0FC(v26, qword_100982098);
  v19 = v24;
  v18 = v25;
  (*(v25 + 16))(v24, v17, v16);
  v20 = sub_1007507D4();
  v33 = v20;
  v34 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v32);
  sub_1007507C4();
  v30 = v20;
  v31 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v29);
  sub_1007507C4();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = v23;
  (*(v9 + 32))(&v12[v11[6]], v27, v8);
  *&v12[v11[7]] = 0;
  *&v12[v11[8]] = 1090519040;
  v21 = *(v18 + 32);
  v21(&v12[v11[9]], v28, v16);
  v21(&v12[v11[10]], v19, v16);
  *&v12[v11[11]] = 1102053376;
  sub_100012160(&v32, &v12[v11[12]]);
  return sub_100012160(&v29, &v12[v11[13]]);
}

uint64_t sub_1003B3C9C()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = sub_100750534();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100039C50(v12, qword_100980048);
  v32 = v12;
  v13 = sub_10000D0FC(v12, qword_100980048);
  sub_10000D198();
  v31 = sub_100753DD4();
  if (qword_100920E50 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v8, qword_100980840);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_10000D134(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  sub_100750B14();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_10000D134(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  sub_100750B14();
  v17(v3, v0);
  v20 = sub_1007507D4();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v41);
  sub_1007507C4();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v38);
  sub_1007507C4();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 1102053376;
  sub_100012160(&v41, &v13[v21[12]]);
  return sub_100012160(&v38, &v13[v21[13]]);
}

uint64_t sub_1003B4148()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = sub_100750534();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100039C50(v12, qword_100980060);
  v32 = v12;
  v13 = sub_10000D0FC(v12, qword_100980060);
  sub_10000D198();
  v31 = sub_100753DD4();
  if (qword_100920E58 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v8, qword_100980858);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_10000D134(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  sub_100750B14();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_10000D134(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  sub_100750B14();
  v17(v3, v0);
  v20 = sub_1007507D4();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v41);
  sub_1007507C4();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v38);
  sub_1007507C4();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 0;
  sub_100012160(&v41, &v13[v21[12]]);
  return sub_100012160(&v38, &v13[v21[13]]);
}

uint64_t sub_1003B4604()
{
  v0 = sub_100750304();
  v42 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100750B04();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v44 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v47 = &v33 - v6;
  v7 = sub_100750534();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100039C50(v11, qword_100980090);
  v43 = v11;
  v37 = sub_10000D0FC(v11, qword_100980090);
  if (qword_1009202C8 != -1)
  {
    swift_once();
  }

  v12 = qword_10097DBA0;
  v13 = sub_100753094();
  v40 = v14;
  v41 = v13;
  v15 = qword_100920E68;
  v39 = v12;
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v7, qword_100980888);
  v36 = v8;
  v17 = *(v8 + 16);
  v38 = v10;
  v17(v10, v16, v7);
  v18 = v2;
  v17(v2, v16, v7);
  v35 = enum case for FontSource.useCase(_:);
  v19 = v42;
  v34 = *(v42 + 104);
  v34(v18);
  v52 = v0;
  v53 = &protocol witness table for FontSource;
  v20 = sub_10000D134(&v51);
  v33 = *(v19 + 16);
  v33(v20, v18, v0);
  sub_100750B14();
  v21 = *(v19 + 8);
  v21(v18, v0);
  v17(v18, v16, v7);
  (v34)(v18, v35, v0);
  v52 = v0;
  v53 = &protocol witness table for FontSource;
  v22 = sub_10000D134(&v51);
  v33(v22, v18, v0);
  v23 = v44;
  sub_100750B14();
  v21(v18, v0);
  v24 = sub_1007507D4();
  v52 = v24;
  v53 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v51);
  sub_1007507C4();
  v49 = v24;
  v50 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v48);
  sub_1007507C4();
  v25 = v38;
  v26 = v37;
  v27 = v40;
  v28 = v41;
  *v37 = v39;
  *(v26 + 1) = v28;
  *(v26 + 2) = v27;
  v29 = v43;
  (*(v36 + 32))(&v26[v43[6]], v25, v7);
  *&v26[v29[7]] = 0;
  *&v26[v29[8]] = 1090519040;
  v30 = v46;
  v31 = *(v45 + 32);
  v31(&v26[v29[9]], v47, v46);
  v31(&v26[v29[10]], v23, v30);
  *&v26[v29[11]] = 0;
  sub_100012160(&v51, &v26[v29[12]]);
  return sub_100012160(&v48, &v26[v29[13]]);
}

uint64_t sub_1003B4B2C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100750304();
  v46 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100750B04();
  v49 = *(v6 - 8);
  v50 = v6;
  __chkstk_darwin(v6);
  v48 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v51 = &v37 - v9;
  v10 = sub_100750534();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100039C50(v14, a2);
  v47 = v14;
  v15 = sub_10000D0FC(v14, a2);
  if (qword_1009202C8 != -1)
  {
    swift_once();
  }

  v16 = qword_10097DBA0;
  v17 = sub_100753094();
  v44 = v18;
  v45 = v17;
  v19 = qword_100920E60;
  v43 = v16;
  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_10000D0FC(v10, qword_100980870);
  v41 = v11;
  v21 = *(v11 + 16);
  v42 = v13;
  v21(v13, v20, v10);
  v22 = v5;
  v21(v5, v20, v10);
  v40 = enum case for FontSource.useCase(_:);
  v23 = v46;
  v38 = v10;
  v39 = *(v46 + 104);
  v39(v22);
  v56 = v3;
  v57 = &protocol witness table for FontSource;
  v24 = sub_10000D134(&v55);
  v37 = *(v23 + 16);
  v37(v24, v22, v3);
  sub_100750B14();
  v25 = *(v23 + 8);
  v25(v22, v3);
  v26 = v20;
  v27 = v38;
  v21(v22, v26, v38);
  (v39)(v22, v40, v3);
  v56 = v3;
  v57 = &protocol witness table for FontSource;
  v28 = sub_10000D134(&v55);
  v37(v28, v22, v3);
  v29 = v48;
  sub_100750B14();
  v25(v22, v3);
  v30 = sub_1007507D4();
  v56 = v30;
  v57 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v55);
  sub_1007507C4();
  v53 = v30;
  v54 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v52);
  sub_1007507C4();
  v31 = v44;
  v32 = v45;
  *v15 = v43;
  *(v15 + 1) = v32;
  *(v15 + 2) = v31;
  v33 = v47;
  (*(v41 + 32))(&v15[v47[6]], v42, v27);
  *&v15[v33[7]] = 0;
  *&v15[v33[8]] = 1090519040;
  v34 = v50;
  v35 = *(v49 + 32);
  v35(&v15[v33[9]], v51, v50);
  v35(&v15[v33[10]], v29, v34);
  *&v15[v33[11]] = 0;
  sub_100012160(&v55, &v15[v33[12]]);
  return sub_100012160(&v52, &v15[v33[13]]);
}

uint64_t sub_1003B5060()
{
  v0 = sub_100750304();
  v44 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100750B04();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v46 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v49 = &v35 - v6;
  v7 = sub_100750534();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100039C50(v11, qword_1009800C0);
  v45 = v11;
  v12 = sub_10000D0FC(v11, qword_1009800C0);
  if (qword_1009202C8 != -1)
  {
    swift_once();
  }

  v13 = qword_10097DBA0;
  v14 = sub_100753094();
  v42 = v15;
  v43 = v14;
  v16 = qword_100920E68;
  v41 = v13;
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_10000D0FC(v7, qword_100980888);
  v39 = v8;
  v40 = v10;
  v18 = *(v8 + 16);
  v18(v10, v17, v7);
  v19 = v2;
  v18(v2, v17, v7);
  v38 = enum case for FontSource.useCase(_:);
  v20 = v44;
  v36 = v7;
  v37 = *(v44 + 104);
  v37(v19);
  v54 = v0;
  v55 = &protocol witness table for FontSource;
  v21 = sub_10000D134(&v53);
  v35 = *(v20 + 16);
  v35(v21, v19, v0);
  sub_100750B14();
  v22 = *(v20 + 8);
  v22(v19, v0);
  v23 = v17;
  v24 = v36;
  v18(v19, v23, v36);
  (v37)(v19, v38, v0);
  v54 = v0;
  v55 = &protocol witness table for FontSource;
  v25 = sub_10000D134(&v53);
  v35(v25, v19, v0);
  v26 = v46;
  sub_100750B14();
  v22(v19, v0);
  v27 = sub_1007507D4();
  v54 = v27;
  v55 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v53);
  sub_1007507C4();
  v51 = v27;
  v52 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v50);
  sub_1007507C4();
  v28 = v40;
  v29 = v42;
  v30 = v43;
  *v12 = v41;
  *(v12 + 1) = v30;
  *(v12 + 2) = v29;
  v31 = v45;
  (*(v39 + 32))(&v12[v45[6]], v28, v24);
  *&v12[v31[7]] = 0;
  *&v12[v31[8]] = 1090519040;
  v32 = v48;
  v33 = *(v47 + 32);
  v33(&v12[v31[9]], v49, v48);
  v33(&v12[v31[10]], v26, v32);
  *&v12[v31[11]] = 0;
  sub_100012160(&v53, &v12[v31[12]]);
  return sub_100012160(&v50, &v12[v31[13]]);
}

uint64_t sub_1003B5574()
{
  v0 = sub_100750304();
  v42 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100750B04();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v44 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v47 = &v33 - v6;
  v7 = sub_100750534();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100039C50(v11, qword_1009800D8);
  v43 = v11;
  v37 = sub_10000D0FC(v11, qword_1009800D8);
  if (qword_1009202D0 != -1)
  {
    swift_once();
  }

  v12 = qword_10097DBA8;
  v13 = sub_100753094();
  v40 = v14;
  v41 = v13;
  v15 = qword_100920E70;
  v39 = v12;
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v7, qword_1009808A0);
  v17 = *(v8 + 16);
  v38 = v10;
  v17(v10, v16, v7);
  v18 = v2;
  v17(v2, v16, v7);
  v35 = enum case for FontSource.useCase(_:);
  v19 = v42;
  v34 = *(v42 + 104);
  v34(v18);
  v52 = v0;
  v53 = &protocol witness table for FontSource;
  v20 = sub_10000D134(&v51);
  v36 = v8;
  v33 = *(v19 + 16);
  v33(v20, v18, v0);
  sub_100750B14();
  v21 = *(v19 + 8);
  v21(v18, v0);
  v17(v18, v16, v7);
  (v34)(v18, v35, v0);
  v52 = v0;
  v53 = &protocol witness table for FontSource;
  v22 = sub_10000D134(&v51);
  v33(v22, v18, v0);
  v23 = v44;
  sub_100750B14();
  v21(v18, v0);
  v24 = sub_1007507D4();
  v52 = v24;
  v53 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v51);
  sub_1007507C4();
  v49 = v24;
  v50 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v48);
  sub_1007507C4();
  v25 = v38;
  v26 = v37;
  v27 = v40;
  v28 = v41;
  *v37 = v39;
  *(v26 + 1) = v28;
  *(v26 + 2) = v27;
  v29 = v43;
  (*(v36 + 32))(&v26[v43[6]], v25, v7);
  *&v26[v29[7]] = 0;
  *&v26[v29[8]] = 1090519040;
  v30 = v46;
  v31 = *(v45 + 32);
  v31(&v26[v29[9]], v47, v46);
  v31(&v26[v29[10]], v23, v30);
  *&v26[v29[11]] = 0;
  sub_100012160(&v51, &v26[v29[12]]);
  return sub_100012160(&v48, &v26[v29[13]]);
}

uint64_t sub_1003B5A88()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = sub_100750534();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100039C50(v12, qword_1009800F0);
  v32 = v12;
  v13 = sub_10000D0FC(v12, qword_1009800F0);
  sub_10000D198();
  v31 = sub_100753DD4();
  if (qword_100920E78 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v8, qword_1009808B8);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_10000D134(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  sub_100750B14();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_10000D134(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  sub_100750B14();
  v17(v3, v0);
  v20 = sub_1007507D4();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v41);
  sub_1007507C4();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v38);
  sub_1007507C4();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 0;
  sub_100012160(&v41, &v13[v21[12]]);
  return sub_100012160(&v38, &v13[v21[13]]);
}

uint64_t sub_1003B5F30()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = sub_100750534();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100039C50(v12, qword_100980108);
  v32 = v12;
  v13 = sub_10000D0FC(v12, qword_100980108);
  sub_10000D198();
  v31 = sub_100753DD4();
  if (qword_100920E80 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v8, qword_1009808D0);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_10000D134(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  sub_100750B14();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_10000D134(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  sub_100750B14();
  v17(v3, v0);
  v20 = sub_1007507D4();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v41);
  sub_1007507C4();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v38);
  sub_1007507C4();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 0;
  sub_100012160(&v41, &v13[v21[12]]);
  return sub_100012160(&v38, &v13[v21[13]]);
}

uint64_t sub_1003B63DC()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = sub_100750534();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100039C50(v12, qword_100980120);
  v32 = v12;
  v13 = sub_10000D0FC(v12, qword_100980120);
  sub_10000D198();
  v31 = sub_100753DD4();
  if (qword_100920E88 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v8, qword_1009808E8);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_10000D134(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  sub_100750B14();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_10000D134(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  sub_100750B14();
  v17(v3, v0);
  v20 = sub_1007507D4();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v41);
  sub_1007507C4();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v38);
  sub_1007507C4();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 0;
  sub_100012160(&v41, &v13[v21[12]]);
  return sub_100012160(&v38, &v13[v21[13]]);
}

double sub_1003B6884(void *a1)
{
  [a1 displayScale];
  v3 = v2;
  v4 = 1.0 / v2;
  if (v2 < 3.0)
  {
    v5 = 46.0;
  }

  else
  {
    v5 = 46.0 - v4;
  }

  v6 = [a1 preferredContentSizeCategory];
  v7 = sub_100753094();
  v9 = v8;
  if (v7 == sub_100753094() && v9 == v10)
  {

LABEL_11:
    v13 = 4.0;
    if (v3 > 2.0)
    {
      v13 = 5.0;
    }

    return v13 + v5;
  }

  v12 = sub_100754754();

  if (v12)
  {

    goto LABEL_11;
  }

  v15 = sub_100753094();
  v17 = v16;
  if (v15 == sub_100753094() && v17 == v18)
  {

    return v5 + 3.0;
  }

  v20 = sub_100754754();

  if (v20)
  {

    return v5 + 3.0;
  }

  v21 = sub_100753094();
  v23 = v22;
  if (v21 == sub_100753094() && v23 == v24)
  {

    goto LABEL_28;
  }

  v25 = sub_100754754();

  if (v25)
  {

LABEL_28:
    v13 = 2.0;
    if (v3 <= 2.0)
    {
      v13 = 1.0;
    }

    return v13 + v5;
  }

  v26 = sub_100753094();
  v28 = v27;
  if (v26 == sub_100753094() && v28 == v29)
  {
    goto LABEL_33;
  }

  v30 = sub_100754754();

  if (v30)
  {
    goto LABEL_36;
  }

  v31 = sub_100753094();
  v33 = v32;
  if (v31 == sub_100753094() && v33 == v34)
  {
  }

  else
  {
    v35 = sub_100754754();

    if ((v35 & 1) == 0)
    {
      v37 = sub_100753094();
      v39 = v38;
      if (v37 == sub_100753094() && v39 == v40)
      {
      }

      else
      {
        v41 = sub_100754754();

        if ((v41 & 1) == 0)
        {
          v42 = sub_100753094();
          v44 = v43;
          if (v42 == sub_100753094() && v44 == v45)
          {
          }

          else
          {
            v46 = sub_100754754();

            if ((v46 & 1) == 0)
            {
              v47 = sub_100753094();
              v49 = v48;
              if (v47 == sub_100753094() && v49 == v50)
              {
                goto LABEL_33;
              }

              v51 = sub_100754754();

              if (v51)
              {
                goto LABEL_36;
              }

              v52 = sub_100753094();
              v54 = v53;
              if (v52 == sub_100753094() && v54 == v55)
              {
                goto LABEL_33;
              }

              v56 = sub_100754754();

              if (v56)
              {
                goto LABEL_36;
              }

              v57 = sub_100753094();
              v59 = v58;
              if (v57 == sub_100753094() && v59 == v60)
              {
LABEL_33:

LABEL_34:

                return v5;
              }

              v61 = sub_100754754();

              if ((v61 & 1) == 0)
              {
                sub_100753094();
                sub_100753094();

                goto LABEL_34;
              }

LABEL_36:

              return v5;
            }
          }

          return v5 + -5.0;
        }
      }

      v13 = v4 + -5.0;
      return v13 + v5;
    }
  }

  v36 = 2.0;
  if (v3 <= 2.0)
  {
    v36 = 3.0;
  }

  return v5 - v36;
}

uint64_t sub_1003B6E50(uint64_t a1)
{
  v2 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003B6EAC(uint64_t a1)
{
  v2 = sub_100741494();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&unk_1009231A0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007A7210;
  type metadata accessor for PromptActionDebugSetting();
  swift_allocObject();

  v7 = sub_10058C9D0(0x6D69542074696157, 0xEF29636573282065, sub_1003B76B0, a1, sub_1003B711C, 0);

  *(v6 + 32) = v7;
  swift_allocObject();

  v8 = sub_10058C9D0(0xD00000000000001ELL, 0x800000010077A1C0, sub_1003B8154, a1, sub_1003B71C8, 0);

  *(v6 + 40) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007A5CF0;
  type metadata accessor for DebugSection();
  v10 = swift_allocObject();
  sub_100741484();
  v11 = sub_100741464();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  v10[2] = v11;
  v10[3] = v13;
  v10[4] = 0;
  v10[5] = 0xE000000000000000;
  v10[6] = v6;
  *(v9 + 32) = v10;
  return v9;
}

uint64_t sub_1003B7134(uint64_t a1, void (*a2)(uint64_t))
{
  sub_100744AC4();
  sub_100752764();
  v3 = sub_100752D34();
  a2(v3);

  return sub_100754714();
}

unsigned __int8 *sub_1003B71E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  v7 = sub_10000C518(&qword_10092DF08);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v40[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v40[-v12];
  sub_100752854();
  result = a4();
  if (!a3 || ((v15 = HIBYTE(a3) & 0xF, v16 = a2 & 0xFFFFFFFFFFFFLL, (a3 & 0x2000000000000000) != 0) ? (v17 = HIBYTE(a3) & 0xF) : (v17 = a2 & 0xFFFFFFFFFFFFLL), !v17))
  {
    sub_100752824();
    v43 = v7;
    v44 = sub_1003B8184();
    v23 = sub_10000D134(&v41);
    (*(v8 + 16))(v23, v13, v7);
    sub_100752834();

    (*(v8 + 8))(v13, v7);
    return sub_10000C620(&v41);
  }

  if ((a3 & 0x1000000000000000) != 0)
  {

    v19 = sub_1003B76E0(a2, a3, 10);
    v39 = v38;

    if (v39)
    {
      return (*(v8 + 8))(v13, v7);
    }

    goto LABEL_65;
  }

  if ((a3 & 0x2000000000000000) == 0)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_100754594();
    }

    v18 = *result;
    if (v18 == 43)
    {
      if (v16 >= 1)
      {
        v15 = v16 - 1;
        if (v16 != 1)
        {
          v19 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_63;
              }

              v29 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                goto LABEL_63;
              }

              v19 = v29 + v28;
              if (__OFADD__(v29, v28))
              {
                goto LABEL_63;
              }

              ++v27;
              if (!--v15)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      }

      goto LABEL_72;
    }

    if (v18 != 45)
    {
      if (v16)
      {
        v19 = 0;
        if (result)
        {
          while (1)
          {
            v33 = *result - 48;
            if (v33 > 9)
            {
              goto LABEL_63;
            }

            v34 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_63;
            }

            v19 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              goto LABEL_63;
            }

            ++result;
            if (!--v16)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_55;
      }

LABEL_63:
      v19 = 0;
      LOBYTE(v15) = 1;
LABEL_64:
      v40[0] = v15;
      if (v15)
      {
        return (*(v8 + 8))(v13, v7);
      }

LABEL_65:
      sub_100752824();
      (*(v8 + 16))(v10, v13, v7);
      v41 = v19;
      LOBYTE(v42) = 0;
      sub_100752544();

      return (*(v8 + 8))(v13, v7);
    }

    if (v16 >= 1)
    {
      v15 = v16 - 1;
      if (v16 != 1)
      {
        v19 = 0;
        if (result)
        {
          v20 = result + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              goto LABEL_63;
            }

            v22 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_63;
            }

            v19 = v22 - v21;
            if (__OFSUB__(v22, v21))
            {
              goto LABEL_63;
            }

            ++v20;
            if (!--v15)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v15) = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v41 = a2;
  v42 = a3 & 0xFFFFFFFFFFFFFFLL;
  if (a2 != 43)
  {
    if (a2 != 45)
    {
      if (v15)
      {
        v19 = 0;
        v35 = &v41;
        while (1)
        {
          v36 = *v35 - 48;
          if (v36 > 9)
          {
            break;
          }

          v37 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v37 + v36;
          if (__OFADD__(v37, v36))
          {
            break;
          }

          v35 = (v35 + 1);
          if (!--v15)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v15)
    {
      if (--v15)
      {
        v19 = 0;
        v24 = &v41 + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v26 - v25;
          if (__OFSUB__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v15)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_71;
  }

  if (v15)
  {
    if (--v15)
    {
      v19 = 0;
      v30 = &v41 + 1;
      while (1)
      {
        v31 = *v30 - 48;
        if (v31 > 9)
        {
          break;
        }

        v32 = 10 * v19;
        if ((v19 * 10) >> 64 != (10 * v19) >> 63)
        {
          break;
        }

        v19 = v32 + v31;
        if (__OFADD__(v32, v31))
        {
          break;
        }

        ++v30;
        if (!--v15)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_73:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1003B76E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_100753234();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1003B7C6C();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_100754594();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1003B7C6C()
{
  v0 = sub_100753244();
  v4 = sub_1003B7CEC(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1003B7CEC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_100754294();
    if (!v9 || (v10 = v9, v11 = sub_1003B7E44(v9, 0), v12 = sub_1003B7EB8(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_100753164();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_100753164();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_100754594();
LABEL_4:

  return sub_100753164();
}

void *sub_1003B7E44(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10000C518(&qword_100935340);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_1003B7EB8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1003B80D8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1007531E4();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_100754594();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1003B80D8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1007531C4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1003B80D8(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1007531F4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_1007531D4();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_1003B8184()
{
  result = qword_100935338;
  if (!qword_100935338)
  {
    sub_10000C724(&qword_10092DF08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100935338);
  }

  return result;
}

unint64_t sub_1003B81FC()
{
  result = qword_100935348;
  if (!qword_100935348)
  {
    sub_10074C6F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100935348);
  }

  return result;
}

uint64_t sub_1003B8254(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C518(&qword_100940840);
  __chkstk_darwin(v3 - 8);
  v5 = &v34[-1] - v4;
  v6 = sub_10074C6D4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v34[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000C518(&qword_100930CA0);
  v10 = sub_100752DE4();
  sub_100744AC4();
  sub_100752764();
  sub_100752D34();
  v11 = v34[0];
  sub_10074C6E4();
  v12 = (*(v7 + 88))(v9, v6);
  if (v12 == enum case for GameCenterInvitePlayerAction.InvitationType.messages(_:))
  {
    (*(v7 + 96))(v9, v6);
    v13 = *v9;
    v14 = v9[1];
    v15 = sub_100752DE4();
    sub_100742D64();
    v16 = sub_100016C60(0, &qword_100926D00);
    v17 = sub_100753774();
    v35 = v16;
    v36 = &protocol witness table for OS_dispatch_queue;
    v34[0] = v17;
    v18 = swift_allocObject();
    v18[2] = v15;
    v18[3] = v13;
    v18[4] = v14;
    v18[5] = a2;

    sub_100742D14();

    sub_10000C620(v34);
    sub_100752D54();

    return v10;
  }

  if (v12 == enum case for GameCenterInvitePlayerAction.InvitationType.player(_:))
  {
    (*(v7 + 96))(v9, v6);
    v19 = *v9;
    v20 = v9[1];
    v21 = sub_1007533D4();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v19;
    v22[5] = v20;
    v22[6] = v11;
    v22[7] = v10;

    v23 = &unk_1007BD450;
LABEL_7:
    sub_1000A0C18(0, 0, v5, v23, v22);

    return v10;
  }

  if (v12 == enum case for GameCenterInvitePlayerAction.InvitationType.contact(_:))
  {
    (*(v7 + 96))(v9, v6);
    v33 = *v9;
    v24 = v9[2];
    v25 = v9[3];
    v26 = sub_1007533D4();
    (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    *(v22 + 2) = v33;
    v22[6] = v24;
    v22[7] = v25;
    v22[8] = v11;
    v22[9] = v10;

    v23 = &unk_1007BD440;
    goto LABEL_7;
  }

  if (qword_100921EE0 != -1)
  {
    swift_once();
  }

  v27 = sub_100752E44();
  *&v33 = sub_10000D0FC(v27, qword_100983318);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A5A00;
  sub_1007523A4();
  sub_100752D04();

  v28 = sub_100752DE4();
  sub_100742D64();
  v29 = sub_100016C60(0, &qword_100926D00);
  v30 = sub_100753774();
  v35 = v29;
  v36 = &protocol witness table for OS_dispatch_queue;
  v34[0] = v30;
  v31 = swift_allocObject();
  v31[2] = v28;
  v31[3] = 0;
  v31[4] = 0;
  v31[5] = a2;

  sub_100742D14();

  sub_10000C620(v34);
  sub_100752D54();

  (*(v7 + 8))(v9, v6);
  return v10;
}

uint64_t sub_1003B8864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v8 = sub_100752624();
  v7[14] = v8;
  v7[15] = *(v8 - 8);
  v7[16] = swift_task_alloc();
  v9 = sub_100742D34();
  v7[17] = v9;
  v7[18] = *(v9 - 8);
  v7[19] = swift_task_alloc();

  return _swift_task_switch(sub_1003B8984, 0, 0);
}

uint64_t sub_1003B8984()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v5 = v0[10];
  v4 = v0[11];
  sub_100742D64();
  *v1 = v5;
  v1[1] = v4;
  (*(v2 + 104))(v1, enum case for GameCenter.PushFriendInvitationType.player(_:), v3);

  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_1003B8A80;
  v7 = v0[19];
  v8 = v0[12];

  return static GameCenter.sendFriendInvitationViaPush(_:bag:)(v7, v8);
}

uint64_t sub_1003B8A80()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  *(*v1 + 168) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1003B8CB4;
  }

  else
  {
    v5 = sub_1003B8BF0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003B8BF0()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v2 + 104))(v1, enum case for ActionOutcome.performed(_:), v3);
  sub_100752DB4();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003B8CB4()
{
  if (qword_100921EE0 != -1)
  {
    swift_once();
  }

  v1 = sub_100752E44();
  sub_10000D0FC(v1, qword_100983318);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  swift_getErrorValue();
  v2 = v0[6];
  v3 = v0[7];
  v0[5] = v3;
  v4 = sub_10000D134(v0 + 2);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  sub_100752444();
  sub_1000277BC((v0 + 2));
  sub_100752D04();

  sub_100752DA4();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003B8EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a8;
  v8[15] = v13;
  v8[12] = a6;
  v8[13] = a7;
  v8[10] = a4;
  v8[11] = a5;
  v9 = sub_100752624();
  v8[16] = v9;
  v8[17] = *(v9 - 8);
  v8[18] = swift_task_alloc();
  v10 = sub_100742D34();
  v8[19] = v10;
  v8[20] = *(v10 - 8);
  v8[21] = swift_task_alloc();

  return _swift_task_switch(sub_1003B9008, 0, 0);
}

uint64_t sub_1003B9008()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  sub_100742D64();
  *v1 = v7;
  v1[1] = v6;
  v1[2] = v5;
  v1[3] = v4;
  (*(v2 + 104))(v1, enum case for GameCenter.PushFriendInvitationType.contact(_:), v3);

  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = sub_1003B911C;
  v9 = v0[21];
  v10 = v0[14];

  return static GameCenter.sendFriendInvitationViaPush(_:bag:)(v9, v10);
}

uint64_t sub_1003B911C()
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  *(*v1 + 184) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1003B9350;
  }

  else
  {
    v5 = sub_1003B928C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003B928C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v2 + 104))(v1, enum case for ActionOutcome.performed(_:), v3);
  sub_100752DB4();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003B9350()
{
  if (qword_100921EE0 != -1)
  {
    swift_once();
  }

  v1 = sub_100752E44();
  sub_10000D0FC(v1, qword_100983318);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  swift_getErrorValue();
  v2 = v0[6];
  v3 = v0[7];
  v0[5] = v3;
  v4 = sub_10000D134(v0 + 2);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  sub_100752444();
  sub_1000277BC((v0 + 2));
  sub_100752D04();

  sub_100752DA4();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003B9578(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    sub_100742D64();
    v8 = a1;
    sub_100742D44();
    v9 = swift_allocObject();
    *(v9 + 16) = a5;
    *(v9 + 24) = a2;
    v10 = sub_100016C60(0, &qword_100926D00);
    swift_retain_n();

    v13[3] = v10;
    v13[4] = &protocol witness table for OS_dispatch_queue;
    v13[0] = sub_100753774();
    sub_100752D64();

    return sub_10000C620(v13);
  }

  else
  {
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v12 = sub_100752E44();
    sub_10000D0FC(v12, qword_100983318);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752D04();

    sub_1003BA134();
    swift_allocError();
    sub_100752DA4();
  }
}

uint64_t sub_1003B9828(void **a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v31 = sub_100742CF4();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1007493D4();
  v6 = *(v29 - 8);
  __chkstk_darwin(v29);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10074A304();
  v9 = *(v28 - 8);
  __chkstk_darwin(v28);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100752614();
  __chkstk_darwin(v12 - 8);
  v13 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v13 - 8);
  v15 = &v28 - v14;
  v16 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v16 - 8);
  v18 = &v28 - v17;
  v19 = sub_10074F4D4();
  __chkstk_darwin(v19);
  v21 = *a1;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  (*(v22 + 104))(&v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.viewController(_:));
  v23 = sub_100741264();
  (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
  v24 = sub_100743FE4();
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  v35 = sub_100016C60(0, &qword_10092B0C0);
  v34 = v21;
  v25 = v21;
  sub_1007525F4();
  (*(v9 + 104))(v11, enum case for FlowPresentationContext.infer(_:), v28);
  (*(v6 + 104))(v8, enum case for FlowAnimationBehavior.infer(_:), v29);
  (*(v4 + 104))(v30, enum case for FlowOrigin.inapp(_:), v31);
  sub_100752B44();
  sub_100742CD4();
  swift_allocObject();
  v26 = sub_100742C84();
  sub_10052AD94(v26, 1, v32);
  sub_100752D54();
}

uint64_t sub_1003B9D14()
{
  if (qword_100921EE0 != -1)
  {
    swift_once();
  }

  v0 = sub_100752E44();
  sub_10000D0FC(v0, qword_100983318);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A5A00;
  sub_1007523A4();
  sub_100752D04();

  return sub_100752DA4();
}

uint64_t sub_1003B9E84()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1003B9EDC(uint64_t a1)
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
  v11[1] = sub_1000A27FC;

  return sub_1003B8EDC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1003B9FC8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1003BA018(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000A4868;

  return sub_1003B8864(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1003BA0EC()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1003BA134()
{
  result = qword_100935350;
  if (!qword_100935350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100935350);
  }

  return result;
}

uint64_t sub_1003BA188()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1003BA1EC()
{
  result = qword_100935358;
  if (!qword_100935358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100935358);
  }

  return result;
}

unint64_t sub_1003BA25C()
{
  result = qword_100935360;
  if (!qword_100935360)
  {
    sub_100748594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100935360);
  }

  return result;
}

uint64_t sub_1003BA2BC(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v28 = a1;
  v30 = sub_100742CF4();
  v2 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1007493D4();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074A304();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100752614();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v15 - 8);
  v17 = &v26 - v16;
  v18 = sub_10074F4D4();
  __chkstk_darwin(v18);
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  (*(v20 + 104))(&v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.reportAConcern(_:));
  v21 = sub_100741264();
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  v22 = sub_100743FE4();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v33 = sub_100748594();
  v32 = v28;

  sub_1007525F4();
  (*(v8 + 104))(v10, enum case for FlowPresentationContext.presentModalFormSheet(_:), v7);
  (*(v4 + 104))(v6, enum case for FlowAnimationBehavior.infer(_:), v27);
  (*(v2 + 104))(v29, enum case for FlowOrigin.inapp(_:), v30);
  sub_100752B44();
  sub_100742CD4();
  swift_allocObject();
  v23 = sub_100742C84();
  v24 = sub_10052AD94(v23, 1, v31);

  return v24;
}

uint64_t sub_1003BA78C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v82 = a2;
  v76 = sub_10074F6E4();
  v5 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v69 - v8;
  v10 = sub_10074F704();
  v77 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v69 - v14;
  v16 = sub_10000C518(&qword_100925340);
  __chkstk_darwin(v16 - 8);
  v81 = sub_10000C518(&unk_100943B20);
  v17 = *(v81 - 8);
  __chkstk_darwin(v81);
  v80 = &v69 - v18;
  sub_10074E664();
  sub_1003BB9E8(&qword_100935368, &type metadata accessor for Uber);
  v83 = a1;
  result = sub_1007468B4();
  v20 = v85[0];
  if (v85[0])
  {
    v73 = v17;
    v74 = v15;
    v78 = v10;
    v21 = OBJC_IVAR____TtC22SubscribePageExtension22UberCollectionViewCell_uberView;
    swift_beginAccess();
    v22 = *(v3 + v21);
    v79 = v20;
    if (!v22 || (v23 = *(v22 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_uber), , v85[0] = v20, !v23) || (v85[5] = v23, sub_1003BB9E8(&qword_10092EEC0, &type metadata accessor for Uber), , v24 = sub_100753014(), , , (v24 & 1) == 0))
    {
      v25 = *(v3 + v21);
      v26 = sub_1007442C4();
      v27 = sub_100752764();
      v28 = v25;
      v72 = v26;
      v71 = v27;
      sub_100752D34();
      if (v25)
      {
        v84 = v28;
        type metadata accessor for UberHeaderView();
        sub_1003BB9E8(&qword_100935370, type metadata accessor for UberHeaderView);
        v29 = v28;
        sub_1007544E4();
        sub_100744264();

        sub_100016994(v85);
      }

      else
      {
      }

      sub_100746964();
      sub_100752EB4();
      swift_getKeyPath();
      sub_1000F1EA0();
      v30 = v79;

      sub_100752E94();

      v31 = v85[0];
      v32 = objc_allocWithZone(type metadata accessor for UberHeaderView());
      v33 = v82;

      v34 = sub_100640EE8(v30, (v31 & 1) == 0, v33);
      v35 = *(v3 + v21);
      *(v3 + v21) = v34;
      v36 = v34;
      sub_10028D374(v35);

      v70 = v21;
      v69 = v3;
      v37 = *(v3 + v21);
      if (v37)
      {
        v38 = v37;
        v39 = sub_10074E614();
        sub_100640708(v39, v40);
      }

      v41 = v5;
      v42 = *(v5 + 104);
      v43 = v76;
      v42(v9, enum case for PageGrid.Direction.vertical(_:), v76);
      swift_getKeyPath();
      sub_100746914();

      sub_10074F674();
      v44 = *(v77 + 8);
      v45 = v78;
      v44(v12, v78);
      swift_getKeyPath();
      sub_100746914();

      sub_10074F5D4();
      v46 = v45;
      v47 = v44;
      v44(v12, v46);
      (*(v41 + 16))(v75, v9, v43);
      sub_1004E97E0(0.0);
      v48 = v74;
      sub_10074F6B4();
      (*(v41 + 8))(v9, v43);
      v49 = v70;
      v50 = v69;
      v51 = *(v69 + v70);
      if (v51)
      {
        v52 = v51;
        sub_10074F664();
        v54 = v53;
        v56 = v55;
        v58 = v57;
        v60 = v59;
        v61 = OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_titleView;
        [*&v52[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_titleView] layoutMargins];
        if (v54 == v65 && v56 == v62 && v58 == v63 && v60 == v64 || ([*&v52[v61] setLayoutMargins:{v54, v56, v58, v60, v69, v70}], objc_msgSend(v52, "invalidateIntrinsicContentSize"), (v66 = *&v52[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_sizeChangeObserver]) == 0))
        {
        }

        else
        {

          v66(v67);

          sub_1000164A8(v66);
        }
      }

      sub_100752D34();
      sub_1003BB0A0(v79, v83, v85[0]);

      swift_beginAccess();
      v68 = *(v50 + v49);
      if (v68)
      {
        swift_endAccess();
        [v68 setNeedsLayout];

        v47(v48, v78);
        return (*(v73 + 8))(v80, v81);
      }

      v47(v48, v78);
      (*(v73 + 8))(v80, v81);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1003BB0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a3;
  v5 = sub_1007504F4();
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074F704();
  v46 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074E5E4();
  v49 = *(v10 - 8);
  v50 = v10;
  __chkstk_darwin(v10);
  v42 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v47 = &v41 - v13;
  v14 = sub_10000C518(&qword_100925340);
  __chkstk_darwin(v14 - 8);
  v53 = sub_10000C518(&unk_100943B20);
  v48 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v41 - v15;
  v16 = sub_10074E644();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074E654();
  v20 = (*(v17 + 88))(v19, v16);
  if (v20 != enum case for Uber.AssetType.artwork(_:))
  {
    if (v20 == enum case for Uber.AssetType.video(_:))
    {
      result = sub_10074E624();
      if (!result)
      {
        return result;
      }

      sub_10074EC14();
    }

    else
    {
      if (v20 != enum case for Uber.AssetType.icon(_:))
      {
        return (*(v17 + 8))(v19, v16);
      }

      result = sub_10074E5C4();
      if (!result)
      {
        return result;
      }
    }

    goto LABEL_12;
  }

  swift_getKeyPath();
  sub_100746914();

  v21 = v59;
  v22 = sub_1007537D4();

  if (v22)
  {
    result = sub_10074E5D4();
    if (!result)
    {
      return result;
    }

LABEL_12:

    v24 = OBJC_IVAR____TtC22SubscribePageExtension22UberCollectionViewCell_uberView;
    swift_beginAccess();
    v25 = *(v4 + v24);
    if (!v25)
    {
    }

    v41 = v25;
    sub_100746964();
    sub_100752EB4();
    v26 = v47;
    sub_10074E604();
    swift_getKeyPath();
    sub_1000F1EA0();
    sub_100752E94();

    v27 = v56;
    swift_getKeyPath();
    sub_100746914();

    sub_10074F674();
    v29 = v28;
    v30 = *(v46 + 8);
    v30(v9, v7);
    swift_getKeyPath();
    sub_100746914();

    sub_10074F674();
    v32 = v31;
    v30(v9, v7);
    swift_getKeyPath();
    sub_100746914();

    v33 = v58;
    sub_1006439D4(v58, v26, (v27 & 1) == 0, v32, v29, 0);
    v34 = sub_1007537D4();
    v36 = v49;
    v35 = v50;
    if (v34)
    {
      v37 = v42;
      (*(v49 + 104))(v42, enum case for Uber.Style.inline(_:), v50);
      sub_1003BB9E8(&qword_10092EED0, &type metadata accessor for Uber.Style);
      sub_100753274();
      sub_100753274();
      if (v56 == v54 && v57 == v55)
      {
        (*(v36 + 8))(v37, v35);

LABEL_21:
        sub_10074F374();

        (*(v36 + 8))(v26, v35);
        type metadata accessor for UberHeaderView();
        sub_1003BB9E8(&qword_10092EEC8, type metadata accessor for UberHeaderView);
        v40 = v41;
        sub_100744204();

        return (*(v48 + 8))(v52, v53);
      }

      v38 = sub_100754754();
      (*(v36 + 8))(v37, v35);

      if (v38)
      {
        goto LABEL_21;
      }
    }

    sub_10074F2A4();
    v39 = v43;
    sub_100750504();
    sub_1007504B4();
    (*(v44 + 8))(v39, v45);
    goto LABEL_21;
  }

  result = sub_10074E634();
  if (result)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1003BB8B8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension22UberCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_1003BB914(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension22UberCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1003BB9E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1003BBA44()
{
  result = qword_100935378;
  if (!qword_100935378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100935378);
  }

  return result;
}

unint64_t sub_1003BBA9C()
{
  result = qword_100935380;
  if (!qword_100935380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100935380);
  }

  return result;
}

__n128 sub_1003BBAF0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1003BBB1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003BBB64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1003BBBD0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1003BBBF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003BBC3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003BBCAC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1003BBCD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a1;
  v54 = sub_100748884();
  v56 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1007488A4();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1007488C4();
  v7 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1007488D4();
  v9 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_100754724();
  v11 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a2;
  result = sub_100748894();
  v60 = v2;
  v14 = *(v2 + 120);
  v46 = *(v14 + 16);
  if (v46)
  {
    v15 = 0;
    v16 = v14 + 32;
    v57 = (v11 + 8);
    v44 = enum case for _VerticalFlowLayout.Child.Placement.top(_:);
    v43 = (v7 + 104);
    v42 = (v5 + 104);
    v41 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.center(_:);
    v40 = v56 + 8;
    v39 = (v5 + 8);
    v38 = (v7 + 8);
    v37 = (v9 + 8);
    v36 = xmmword_1007A5A00;
    v45 = v14;
    v17 = v49;
    while (v15 < *(v14 + 16))
    {
      *v65 = v15;
      result = sub_1003BC948(v16, &v65[8]);
      if (*&v66[8])
      {
        v26 = *v65;
        *v65 = *&v65[8];
        *&v65[16] = *v66;
        *v66 = *&v66[8];
        *&v66[16] = *&v66[24];
        *&v66[32] = *&v66[40];
        *&v66[48] = v67;
        v27 = 24;
        if (!v26)
        {
          v27 = 64;
        }

        v28 = 40;
        if (v26)
        {
          v28 = 0;
        }

        sub_10000C888((v60 + v28), *(v60 + v27));
        v29 = v58;
        sub_100536120();
        sub_100750564();
        v31 = v30;
        v32 = *v57;
        (*v57)(v29, v59);
        v33 = 0;
        if (v26 == *(v14 + 16) - 1)
        {
          sub_10000C888((v60 + 80), *(v60 + 104));
          v34 = v58;
          sub_100536120();
          sub_100750564();
          v33 = v35;
          v32(v34, v59);
        }

        ++v15;
        v18 = v50;
        (*v43)(v17, v44, v50);
        v19 = v51;
        v20 = v52;
        (*v42)(v51, v41, v52);
        v64[3] = &type metadata for CGFloat;
        v64[4] = &protocol witness table for CGFloat;
        v64[0] = v31;
        v63[3] = &type metadata for CGFloat;
        v63[4] = &protocol witness table for CGFloat;
        v63[0] = v33;
        sub_10000C518(&unk_100931370);
        v21 = v56;
        v22 = swift_allocObject();
        *(v22 + 16) = v36;
        sub_100748854();
        v62 = v22;
        sub_1003BC9B0();
        sub_10000C518(&unk_100931380);
        sub_1001C4F00();
        v23 = v53;
        v24 = v54;
        sub_1007543A4();
        v25 = v47;
        sub_1007488B4();
        (*(v21 + 8))(v23, v24);
        (*v39)(v19, v20);
        (*v38)(v17, v18);
        sub_1000F4268(v63);
        sub_10000C620(v64);
        sub_1007488E4();
        (*v37)(v25, v48);
        result = sub_1003BC980(v65);
        v16 += 80;
        v14 = v45;
        if (v46 != v15)
        {
          continue;
        }
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1003BC46C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = sub_100754724();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1007488F4();
  v31 = *(v32 - 8);
  __chkstk_darwin(v32);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003BBCD4(a1, v16);
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v30 = v16;
  sub_100748844();
  v17 = *(v5 + 120);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = v17 + 32;
    do
    {
      sub_1003BC948(v19, v39);
      sub_100120E28(&v41, &v36);
      if (v37)
      {
        sub_100012160(&v36, v38);
        sub_10000C888(v39, v40);
        sub_100750384();
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        sub_10000C888(v38, v38[3]);
        sub_100536120();
        sub_100750564();
        (*(v12 + 8))(v14, v11);
        v42.origin.x = v21;
        v42.origin.y = v23;
        v42.size.width = v25;
        v42.size.height = v27;
        CGRectGetWidth(v42);
        v43.origin.x = v21;
        v43.origin.y = v23;
        v43.size.width = v25;
        v43.size.height = v27;
        CGRectGetHeight(v43);
        v44.origin.x = v33;
        v44.origin.y = v34;
        v44.size.width = v35;
        v44.size.height = a5;
        CGRectGetMidX(v44);
        v45.origin.x = v21;
        v45.origin.y = v23;
        v45.size.width = v25;
        v45.size.height = v27;
        CGRectGetMinY(v45);
        sub_10000C888(v39, v40);
        sub_100750394();
        sub_1003BC980(v39);
        sub_10000C620(v38);
      }

      else
      {
        sub_1003BC980(v39);
        sub_1000F4268(&v36);
      }

      v19 += 80;
      --v18;
    }

    while (v18);
  }

  return (*(v31 + 8))(v30, v32);
}

void sub_1003BC810(uint64_t a1)
{
  v3 = sub_1007488F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(v1 + 120) + 16))
  {
    sub_1003BBCD4(a1, &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_100748834();
    (*(v4 + 8))(v6, v3);
  }
}

unint64_t sub_1003BC9B0()
{
  result = qword_10092C0C0;
  if (!qword_10092C0C0)
  {
    sub_100748884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092C0C0);
  }

  return result;
}

void sub_1003BCA08(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_overlayViewController] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_fallbackDismissButton] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_delayedDismissalReappearanceItem] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_objectGraph] = a3;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_presenter] = a1;
  sub_1007442C4();
  sub_100752764();

  sub_100752D34();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_artworkLoader] = v28;
  if (a2)
  {
    v9 = ASKDeviceTypeGetCurrent();
    v10 = sub_100753094();
    v12 = v11;
    if (v10 == sub_100753094() && v12 == v13)
    {

      v16 = 1;
    }

    else
    {
      v15 = sub_100754754();

      if (v15)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = objc_allocWithZone(type metadata accessor for ArcadeSubscribePageView());
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_pageView] = sub_100533EB4(v16);
  sub_1007495B4();
  sub_100752754();
  v18 = v28;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_impressionsCalculator] = v28;
  if (v18)
  {

    sub_1007495A4();
  }

  v19 = &v4[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver];
  *(v19 + 3) = sub_10074AAD4();
  *(v19 + 4) = &protocol witness table for BasePresenter;
  *v19 = a1;
  v27.receiver = v4;
  v27.super_class = ObjectType;

  v20 = objc_msgSendSuper2(&v27, "initWithNibName:bundle:", 0, 0);
  sub_1003C1724(&qword_100935430, v21, type metadata accessor for ArcadeSubscribeViewController);
  v22 = v20;
  sub_10074AAB4();
  v23 = [v22 view];
  if (v23)
  {
    v24 = v23;
    sub_100016C60(0, &qword_100923500);
    v25 = sub_100753E04();
    [v24 setBackgroundColor:v25];

    v26 = [v22 view];
    if (v26)
    {
      [v26 addSubview:*&v22[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_pageView]];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1003BCF78()
{
  v1 = [v0 isViewLoaded];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_overlayViewController;
  if (v1)
  {
    v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_overlayViewController];
    if (v3)
    {
      v4 = v3;
      [v0 addChildViewController:v4];
      result = [v4 view];
      if (result)
      {
        v6 = result;
        result = [v0 view];
        if (result)
        {
          v7 = result;
          [result bounds];
          v9 = v8;
          v11 = v10;
          v13 = v12;
          v15 = v14;

          [v6 setFrame:{v9, v11, v13, v15}];
          v16 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_fallbackDismissButton];
          if (!v16)
          {
            result = [v0 view];
            if (result)
            {
              v18 = result;
              result = [v4 view];
              if (result)
              {
                v19 = result;
                [v18 addSubview:result];
                goto LABEL_12;
              }

LABEL_21:
              __break(1u);
              return result;
            }

LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

          v17 = v16;
          result = [v0 view];
          if (result)
          {
            v18 = result;
            result = [v4 view];
            if (result)
            {
              v19 = result;
              [v18 insertSubview:result belowSubview:v17];

LABEL_12:
              [v4 didMoveToParentViewController:v0];

              v2 = OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_overlayViewController;
              goto LABEL_13;
            }

            goto LABEL_19;
          }

LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_18;
    }
  }

LABEL_13:
  v20 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_pageView];
  v21 = *&v0[v2] != 0;

  return [v20 setHidden:v21];
}

void sub_1003BD1A4()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_fallbackDismissButton];
  if (v1)
  {
    v2 = v1;
    v15._object = 0x800000010077A500;
    v15._countAndFlagsBits = 0xD00000000000001CLL;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    sub_1007458B4(v15, v16);
    v3 = sub_100753064();

    [v2 setTitle:v3 forState:0];

    [v2 addTarget:v0 action:"dismissPressed:" forControlEvents:64];
    v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_overlayViewController];
    if (v4)
    {
      v5 = v4;
      v6 = [v0 view];
      if (!v6)
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v7 = v6;
      v8 = [v5 view];
      if (!v8)
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v9 = v8;
      [v7 insertSubview:v2 aboveSubview:v8];

      v10 = v2;
      v2 = v9;
    }

    else
    {
      v11 = [v0 view];
      if (!v11)
      {
LABEL_16:
        __break(1u);
        return;
      }

      v10 = v11;
      [v11 addSubview:v2];
    }
  }

  v12 = [v0 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = v12;
  [v12 setNeedsLayout];
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100742964();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "viewDidLoad", v5);
  sub_10000C888(&v1[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v3);
  sub_100742974();
  (*(v4 + 8))(v7, v3);
  sub_10074AAC4();
  [v1 setModalInPresentation:1];
  v8 = [v1 navigationItem];
  [v8 setLargeTitleDisplayMode:2];

  [v1 setTitle:0];
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100742964();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v2;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "viewWillAppear:", a1, v7);
  sub_10000C888(&v2[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v5);
  sub_100742974();
  (*(v6 + 8))(v9, v5);
  v10 = [v2 navigationItem];
  v11 = [v10 leftBarButtonItems];

  if (v11)
  {
    sub_100016C60(0, &qword_100925250);
    v12 = sub_1007532A4();

    if (v12 >> 62)
    {
      v13 = sub_100754664();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v13 != 0;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v2 navigationItem];
  v16 = [v15 rightBarButtonItems];

  if (v16)
  {
    sub_100016C60(0, &qword_100925250);
    v17 = sub_1007532A4();

    v18 = v17 >> 62 ? sub_100754664() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v18)
    {
      v14 = 1;
    }
  }

  v19 = [v2 navigationController];
  if (v19)
  {
    v20 = v19;
    [v19 setNavigationBarHidden:!v14 animated:0];
  }
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100741454();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100742964();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v14 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = v2;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "viewDidAppear:", a1, v11);
  sub_10000C888(&v2[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v9);
  sub_100742974();
  (*(v10 + 8))(v13, v9);
  if (sub_1007442E4())
  {
    sub_100741444();
    sub_100741424();
    (*(v6 + 8))(v8, v5);
    sub_100746C04();
  }

  if (sub_1007442D4())
  {
    sub_100752C04();
  }

  sub_100744254();
  sub_100745584();
  sub_100745564();
  sub_100744324();
  sub_100745544();
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100741454();
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100752BC4();
  v22 = *(v8 - 8);
  v23 = v8;
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&qword_100930220);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v14 = sub_100742964();
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v2;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, "viewWillDisappear:", a1, v16);
  sub_10000C888(&v2[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  sub_100752BB4();
  (*(v15 + 104))(v18, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v14);
  sub_100742974();
  (*(v15 + 8))(v18, v14);
  if (sub_1007442E4())
  {
    sub_100752BB4();
    sub_100741444();
    sub_100741424();
    (*(v20 + 8))(v7, v21);
    sub_100746C24();
    v19 = sub_100746C34();
    (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
    sub_100746C14();
  }

  if (sub_1007442D4())
  {
    sub_100752BB4();
    sub_100752C14();

    (*(v22 + 8))(v10, v23);
  }

  if (*&v2[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_impressionsCalculator])
  {
    sub_1007495A4();
  }

  sub_100744254();
  sub_100745584();
  sub_100745564();
  sub_100745544();

  sub_100745564();
  sub_1007454E4();
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_100742964();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "viewDidDisappear:", a1, v6);
  sub_10000C888(&v1[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v5 + 104))(v8, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v4);
  sub_100742974();
  (*(v5 + 8))(v8, v4);
}

Swift::Void __swiftcall ArcadeSubscribeViewController.as_viewDidBecomeFullyVisible()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100742964();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "as_viewDidBecomeFullyVisible", v5);
  sub_10000C888(&v1[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v3);
  sub_100742974();
  (*(v4 + 8))(v7, v3);
  sub_100744254();
  sub_100745584();
  sub_100745564();
  sub_100744324();
  sub_100745544();

  sub_100745564();
  sub_1007454E4();
}

Swift::Void __swiftcall ArcadeSubscribeViewController.as_viewWillBecomePartiallyVisible()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100742964();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "as_viewWillBecomePartiallyVisible", v5);
  sub_10000C888(&v1[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  sub_100752BB4();
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v3);
  sub_100742974();
  (*(v4 + 8))(v7, v3);
  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_impressionsCalculator])
  {
    sub_1007495A4();
  }

  sub_100744254();
  sub_100745584();
  sub_100745564();
  sub_100745544();

  sub_100745564();
  sub_1007454E4();
}

uint64_t sub_1003BE6A4(SEL *a1, unsigned int *a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_100742964();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.receiver = v2;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, *a1, v8);
  sub_10000C888(&v2[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v7 + 104))(v10, *a2, v6);
  sub_100742974();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1003BE7F4(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_100742964();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = a1;
  v15.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v15, v12);
  sub_10000C888(&v13[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v13[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v9 + 104))(v11, *a4, v8);
  sub_100742974();

  return (*(v9 + 8))(v11, v8);
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewWillLayoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66.receiver = v1;
  v66.super_class = ObjectType;
  objc_msgSendSuper2(&v66, "viewWillLayoutSubviews", v5);
  v8 = [v1 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_22;
  }

  v9 = v8;
  [v8 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_overlayViewController];
  if (v18)
  {
    v19 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_fallbackDismissButton];
    v20 = &selRef_initWithTitle_style_target_action_;
    if (v19)
    {
      v21 = v18;
      v61 = v19;
      v22 = [v1 view];
      if (!v22)
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v23 = v22;
      [v22 safeAreaInsets];

      v59 = v17;
      v60 = v15;
      sub_100753B14();
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v32 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_pageView];
      v58 = v32[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_style];
      v33 = [v32 traitCollection];
      v34 = sub_1007537D4();

      if (v34)
      {
        v35 = [v32 window];
        if (v35)
        {
          v36 = v35;
          [v35 frame];
          Width = CGRectGetWidth(v67);
          [v32 bounds];
          v38 = CGRectGetWidth(v68);

          v39 = v38 < Width;
        }

        else
        {
          v39 = 0;
        }
      }

      else
      {
        v39 = 1;
      }

      v46 = [v1 view];
      if (!v46)
      {
        goto LABEL_24;
      }

      v47 = v46;
      [v46 bounds];
      v49 = v48;

      v50 = [v1 traitCollection];
      v51 = sub_100753804();

      v56 = v13;
      v57 = v11;
      if (v51)
      {
        sub_100532AA4(v39, v58, v62);
        sub_10000C824(&v64, v65);
        sub_1003C0D08(v62);
      }

      else
      {
        sub_1005339BC(v39, v58, v62, v49);
        sub_10000C824(&v63, v65);
        sub_1003C0CB4(v62);
      }

      sub_100012160(v65, v62);
      sub_10000C888(v62, v62[3]);
      sub_100536120();
      sub_100750564();
      (*(v4 + 8))(v7, v3);
      sub_10000C620(v62);
      v52 = v61;
      [v61 measurementsWithFitting:v1 in:{v29, v31}];
      v69.origin.x = v25;
      v69.origin.y = v27;
      v69.size.width = v29;
      v69.size.height = v31;
      CGRectGetMidX(v69);
      v70.origin.x = v25;
      v70.origin.y = v27;
      v70.size.width = v29;
      v70.size.height = v31;
      CGRectGetMaxY(v70);
      v53 = v52;
      sub_100753B24();
      v20 = &selRef_initWithTitle_style_target_action_;
      [v53 setFrame:?];

      v13 = v56;
      v11 = v57;
      v17 = v59;
      v15 = v60;
    }

    else
    {
      v45 = v18;
    }

    v54 = [v18 view];
    if (v54)
    {
      v55 = v54;
      [v54 v20[72]];

      return;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v40 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_pageView];
  v41 = [v1 view];
  if (v41)
  {
    v42 = v41;
    [v41 bounds];

    v43 = [v1 view];
    if (v43)
    {
      v44 = v43;
      [v43 safeAreaInsets];

      sub_100753B14();
      [v40 setFrame:?];
      return;
    }

    goto LABEL_26;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}