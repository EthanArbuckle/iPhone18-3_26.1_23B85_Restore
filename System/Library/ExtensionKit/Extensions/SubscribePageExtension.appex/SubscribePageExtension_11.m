uint64_t sub_10013D4F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10013D538(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10013D580(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v27 = a1;
  v25 = a2;
  v26 = a3;
  v3 = sub_10000C518(&unk_10092E450);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10074F704();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747B84();
  sub_10074F674();
  v12 = v11;
  v14 = v13;
  v15 = *(v8 + 8);
  v15(v10, v7);
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v4 + 8))(v6, v3);
  v16 = v29;
  sub_100747B84();
  sub_10074F5C4();
  v18 = v17;
  v15(v10, v7);
  v19 = sub_100747B94();
  v20 = type metadata accessor for SnapshotPageTraitEnvironment();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v22 = v18;
  *(v22 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v21[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v19;
  v28.receiver = v21;
  v28.super_class = v20;
  v23 = objc_msgSendSuper2(&v28, "init");
  (*(*(v25 + 8) + 16))(v16, v23, v27, v12, v14);
}

uint64_t sub_10013D820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v24 = a6;
  v22 = a2;
  v7 = sub_100747C14();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&qword_100933380);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_10074A274();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  sub_100746884();
  sub_10074DBE4();
  (*(v8 + 8))(v10, v7);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_10000C8CC(v13, &qword_100933380);
  }

  (*(v15 + 32))(v17, v13, v14);
  v19 = sub_10013DB24(v23);
  __chkstk_darwin(v19);
  *(&v22 - 2) = v17;
  v20 = sub_100349640(sub_10013DF7C, (&v22 - 4), v19);

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

void *sub_10013DB24(uint64_t a1)
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
  v21[2] = sub_10013DFA4();
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

uint64_t sub_10013DF14@<X0>(uint64_t *a1@<X8>)
{
  sub_10074A264();
  sub_10074A244();
  result = sub_10074F374();
  *a1 = result;
  return result;
}

unint64_t sub_10013DFA4()
{
  result = qword_1009350D0;
  if (!qword_1009350D0)
  {
    sub_10074E984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009350D0);
  }

  return result;
}

unint64_t sub_10013E004()
{
  result = qword_100929678;
  if (!qword_100929678)
  {
    type metadata accessor for MediumLockupCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100929678);
  }

  return result;
}

double sub_10013E05C()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747BA4();
  sub_100747B84();
  sub_10074F674();
  (*(v1 + 8))(v3, v0);
  swift_getObjectType();
  v4 = swift_unknownObjectRetain();
  sub_10024E818(v4);
  v6 = v5;
  swift_unknownObjectRelease_n();
  return v6;
}

uint64_t sub_10013E1AC()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100744D64();
  sub_100039C50(v4, qword_10097DC48);
  v19 = sub_10000D0FC(v4, qword_10097DC48);
  if (qword_100920FE0 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v17 = sub_10000D0FC(v5, qword_100980CD8);
  v6 = *(v5 - 8);
  v16 = *(v6 + 16);
  v18 = v6 + 16;
  v16(v3, v17, v5);
  v7 = enum case for FontSource.useCase(_:);
  v15 = v1[13];
  v15(v3, enum case for FontSource.useCase(_:), v0);
  v8 = sub_100750B04();
  v26[3] = v8;
  v26[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v26);
  v24 = v0;
  v25 = &protocol witness table for FontSource;
  v9 = sub_10000D134(v23);
  v10 = v1[2];
  v10(v9, v3, v0);
  sub_100750B14();
  v11 = v1[1];
  v11(v3, v0);
  v16(v3, v17, v5);
  v15(v3, v7, v0);
  v24 = v8;
  v25 = &protocol witness table for StaticDimension;
  sub_10000D134(v23);
  v21 = v0;
  v22 = &protocol witness table for FontSource;
  v12 = sub_10000D134(v20);
  v10(v12, v3, v0);
  sub_100750B14();
  v11(v3, v0);
  v21 = &type metadata for Double;
  v22 = &protocol witness table for Double;
  v20[0] = 0x4018000000000000;
  return sub_100744D54();
}

uint64_t sub_10013E49C()
{
  sub_100016C60(0, &qword_100923500);
  result = sub_100753DF4();
  qword_100929680 = result;
  return result;
}

uint64_t sub_10013E4E0()
{
  sub_100016C60(0, &qword_100923500);
  result = sub_100753DE4();
  qword_100929688 = result;
  return result;
}

uint64_t sub_10013E524()
{
  v0 = sub_100743B04();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.chevronForward(_:), v0, v2);
  v5 = objc_opt_self();
  v6 = UIFontTextStyleFootnote;
  v7 = [v5 configurationWithTextStyle:v6 scale:1];

  v8 = sub_100743AE4();
  result = (*(v1 + 8))(v4, v0);
  qword_10097DC60 = v8;
  return result;
}

char *sub_10013E674(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v43 = sub_100751344();
  v10 = *(v43 - 8);
  __chkstk_darwin(v43);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100751374();
  v44 = *(v13 - 8);
  v45 = v13;
  __chkstk_darwin(v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10074AB44();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v20 - 8);
  v22 = &v42 - v21;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_chevronView] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_hasChevron] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_textLightensOnHighlight] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_isHighlighted] = 0;
  if (qword_100920FE0 != -1)
  {
    swift_once();
  }

  v23 = sub_100750534();
  v24 = sub_10000D0FC(v23, qword_100980CD8);
  v25 = *(v23 - 8);
  (*(v25 + 16))(v22, v24, v23);
  (*(v25 + 56))(v22, 0, 1, v23);
  (*(v17 + 104))(v19, enum case for DirectionalTextAlignment.none(_:), v16);
  v26 = objc_allocWithZone(sub_100745C84());
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_textLabel] = sub_100745C74();
  (*(v10 + 104))(v12, enum case for Separator.Position.top(_:), v43);
  v48[3] = sub_1007507D4();
  v48[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v48);
  sub_1007507C4();
  sub_100751354();
  v27 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v28 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
  swift_beginAccess();
  v29 = *(v44 + 40);
  v30 = v27;
  v29(&v27[v28], v15, v45);
  swift_endAccess();

  *&v5[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_separatorView] = v30;
  v47.receiver = v5;
  v47.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v35 = v31;
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v36 = OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_textLabel;
  v37 = qword_100920308;
  v38 = *&v35[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_textLabel];
  if (v37 != -1)
  {
    swift_once();
  }

  [v38 setTextColor:qword_100929680];

  v39 = *&v35[v36];
  sub_100745C34();

  [v35 addSubview:*&v35[v36]];
  [v35 addSubview:*&v35[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_separatorView]];
  sub_10000C518(&unk_1009249D0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1007A5A00;
  *(v40 + 32) = sub_100751554();
  *(v40 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v35;
}

double sub_10013ECFC()
{
  v1 = sub_100744D64();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100744D84();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920300 != -1)
  {
    swift_once();
  }

  v9 = sub_10000D0FC(v1, qword_10097DC48);
  (*(v2 + 16))(v4, v9, v1);
  v10 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_textLabel);
  v19[8] = sub_100745C84();
  v19[9] = &protocol witness table for UILabel;
  v19[5] = v10;
  v11 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_chevronView);
  if (v11)
  {
    v12 = sub_100016C60(0, &qword_100922300);
    v13 = &protocol witness table for UIView;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v19[1] = 0;
    v19[2] = 0;
  }

  v19[0] = v11;
  v19[3] = v12;
  v19[4] = v13;
  v14 = v10;
  v15 = v11;
  sub_100744D74();
  sub_10013F684();
  sub_100750404();
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  return v17;
}

uint64_t sub_10013EFB8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v39 = sub_100751374();
  v3 = *(v39 - 8);
  __chkstk_darwin(v39);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100750354();
  v6 = *(v35 - 8);
  __chkstk_darwin(v35);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100744D64();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_100744D84();
  v36 = *(v38 - 8);
  *&v13 = __chkstk_darwin(v38).n128_u64[0];
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48.receiver = v1;
  v48.super_class = ObjectType;
  v37 = ObjectType;
  objc_msgSendSuper2(&v48, "layoutSubviews", v13);
  if (qword_100920300 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v9, qword_10097DC48);
  (*(v10 + 16))(v12, v16, v9);
  v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_textLabel];
  v46 = sub_100745C84();
  v47 = &protocol witness table for UILabel;
  v45 = v17;
  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_chevronView];
  if (v18)
  {
    v19 = sub_100016C60(0, &qword_100922300);
    v20 = &protocol witness table for UIView;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v41 = 0;
    v42 = 0;
  }

  v40 = v18;
  v43 = v19;
  v44 = v20;
  v21 = v17;
  v22 = v18;
  sub_100744D74();
  sub_1007477B4();
  sub_100744D44();
  (*(v6 + 8))(v8, v35);
  v23 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_separatorView];
  [v1 bounds];
  v24 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
  swift_beginAccess();
  v25 = v39;
  (*(v3 + 16))(v5, &v23[v24], v39);
  sub_100751324();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  (*(v3 + 8))(v5, v25);
  [v23 setFrame:{v27, v29, v31, v33}];
  return (*(v36 + 8))(v15, v38);
}

void sub_10013F464(char a1)
{
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_hasChevron] != (a1 & 1))
  {
    if (v1[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_hasChevron])
    {
      v2 = v1;
      if (qword_100920318 != -1)
      {
        swift_once();
      }

      v3 = [objc_allocWithZone(UIImageView) initWithImage:qword_10097DC60];
      sub_100016C60(0, &qword_100923500);
      v4 = sub_100753E24();
      [v3 setTintColor:v4];

      v5 = OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_chevronView;
      v6 = v2;
      v7 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_chevronView];
      if (v7)
      {
        [v7 removeFromSuperview];
        v8 = *&v2[v5];
      }

      else
      {
        v8 = 0;
      }

      *&v6[v5] = v3;
      v11 = v3;

      [v6 addSubview:v11];
      [v6 setNeedsLayout];
      v10 = v11;
    }

    else
    {
      v9 = OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_chevronView;
      v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_chevronView];
      if (v10)
      {
        [v10 removeFromSuperview];
        v10 = *&v1[v9];
      }

      *&v1[v9] = 0;
    }
  }
}

unint64_t sub_10013F684()
{
  result = qword_1009296E8;
  if (!qword_1009296E8)
  {
    sub_100744D84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009296E8);
  }

  return result;
}

void sub_10013F6DC(uint64_t a1, void *a2)
{
  v5 = sub_1007479B4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  if (a1 >= 1)
  {
    __chkstk_darwin(v10);
    *(&v20 - 2) = v2;
    *(&v20 - 1) = a2;
    v21 = sub_100753824();
    if (qword_100920850 != -1)
    {
      swift_once();
    }

    if (qword_100920858 != -1)
    {
      swift_once();
    }

    if (sub_100753804())
    {
      v13 = &xmmword_10097F540;
    }

    else
    {
      v13 = &xmmword_10097F3D0;
    }

    sub_100055CF8(v13, v22);
    if (sub_100753804())
    {
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v14 = qword_10093FF40;
    }

    else
    {
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v14 = qword_10093FF58;
    }

    v15 = sub_10000D0FC(v5, v14);
    (*(v6 + 16))(v8, v15, v5);
    (*(v6 + 32))(v12, v8, v5);
    if ((v25 & 1) == 0 && v23 == 0.0 && v24 == 0.0)
    {
      sub_100747964();
      v17 = v16;
      sub_100747964();
      v23 = v17;
      v24 = v18;
      v25 = 0;
    }

    v19 = _s22SubscribePageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v22, a2, 0.0);
    (*(v6 + 8))(v12, v5, v19);
    sub_100055D54(v22);
  }
}

uint64_t sub_10013FA28(void *a1)
{
  v2 = sub_1007479B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v6);
  v8 = &v19[-v7 - 8];
  if (qword_100920850 != -1)
  {
    swift_once();
  }

  if (qword_100920858 != -1)
  {
    swift_once();
  }

  if (sub_100753804())
  {
    v9 = &xmmword_10097F540;
  }

  else
  {
    v9 = &xmmword_10097F3D0;
  }

  sub_100055CF8(v9, v19);
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v10 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v10 = qword_10093FF58;
  }

  v11 = sub_10000D0FC(v2, v10);
  (*(v3 + 16))(v5, v11, v2);
  (*(v3 + 32))(v8, v5, v2);
  if ((v22 & 1) == 0 && v20 == 0.0 && v21 == 0.0)
  {
    sub_100747964();
    v13 = v12;
    sub_100747964();
    v20 = v13;
    v21 = v14;
    v22 = 0;
  }

  v15 = _s22SubscribePageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v19, a1, 0.0);
  (*(v3 + 8))(v8, v2, v15);
  sub_100055D54(v19);
  sub_100143ED8(a1);
  v16 = [a1 preferredContentSizeCategory];
  sub_100753934();

  sub_1007535D4();
  return sub_10074A954();
}

id sub_10013FD74(double a1, double a2, double a3, double a4)
{
  swift_weakInit();
  swift_weakInit();
  v4[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isExpanded] = 0;
  swift_weakInit();
  v9 = &v4[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_impressionsUpdateBlock];
  *v9 = 0;
  v9[1] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_lockups] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_limit] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isListLayoutInvalid] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_lastContentWidth] = 0;
  v10 = OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_listCells;
  *&v4[v10] = sub_100414F38(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_prefetchedLockupImages] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_currentTouch] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isDragging] = 0;
  v11 = &v4[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_indexForHighlightedLockup];
  *v11 = 0;
  v11[8] = 1;
  v12 = type metadata accessor for TodayListCardLockupContainer();
  v21.receiver = v4;
  v21.super_class = v12;
  v13 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_100140C74();
  sub_10000C518(&unk_1009249D0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1007A5A00;
  *(v18 + 32) = sub_1007519E4();
  *(v18 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v20[3] = v12;
  v20[0] = v17;
  sub_100753D34();
  swift_unknownObjectRelease();

  sub_10000C620(v20);
  return v17;
}

void sub_1001400A8(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for TodayListCardLockupContainer();
  v21.receiver = v4;
  v21.super_class = v9;
  objc_msgSendSuper2(&v21, "frame");
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v20.receiver = v4;
  v20.super_class = v9;
  objc_msgSendSuper2(&v20, "setFrame:", a1, a2, a3, a4);
  [v4 frame];
  Height = CGRectGetHeight(v22);
  v23.origin.x = v11;
  v23.origin.y = v13;
  v23.size.width = v15;
  v23.size.height = v17;
  if (Height != CGRectGetHeight(v23))
  {
    v19 = v4[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isListLayoutInvalid];
    v4[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isListLayoutInvalid] = 1;
    sub_10014019C(v19);
  }
}

uint64_t sub_10014019C(uint64_t result)
{
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isListLayoutInvalid] == 1 && (result & 1) == 0)
  {
    v2 = OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_listCells;
    swift_beginAccess();
    v3 = *&v1[v2];
    v4 = 1 << *(v3 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v3 + 64);
    v7 = (v4 + 63) >> 6;

    for (i = 0; v6; result = [*(*(*(v3 + 56) + ((v9 << 9) | (8 * v10))) + OBJC_IVAR____TtC22SubscribePageExtension38TodayCardSmallLockupCollectionViewCell_lockupView) setNeedsLayout])
    {
      v9 = i;
LABEL_11:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
    }

    while (1)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        return [v1 setNeedsLayout];
      }

      v6 = *(v3 + 64 + 8 * v9);
      ++i;
      if (v6)
      {
        i = v9;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1001402D8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_10074A964();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TodayListCardLockupContainer();
  v19.receiver = v0;
  v19.super_class = v6;
  objc_msgSendSuper2(&v19, "layoutSubviews");
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_lockups];
  if (v7 >> 62)
  {
    v8 = sub_100754664();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v0[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isExpanded];
  sub_1007477B4();
  v10 = [v0 traitCollection];
  if (v9 == 1)
  {
  }

  else
  {
    v11 = v10;
    sub_10013FA28(v10);
    v12 = sub_10074A934();
    v14 = v13;

    (*(v3 + 8))(v5, v2);
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = v12;
    }

    if (v8 >= v15)
    {
      v8 = v15;
    }
  }

  v16 = OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_lastContentWidth;
  v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_lastContentWidth];
  sub_1007477B4();
  if (v17 != CGRectGetWidth(v20) || *&v1[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_limit] != v8)
  {
    v18 = v1[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isListLayoutInvalid];
    v1[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isListLayoutInvalid] = 1;
    sub_10014019C(v18);
  }

  if (v1[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isListLayoutInvalid] == 1)
  {
    if (swift_weakLoadStrong())
    {

      *&v1[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_limit] = v8;
      sub_100141080(v8);
      sub_100140588();
      sub_1007477B4();
      *&v1[v16] = CGRectGetWidth(v21);
    }
  }
}

void sub_100140588()
{
  v2 = v0;
  swift_getObjectType();
  v3 = sub_10074A964();
  __chkstk_darwin(v3 - 8);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074A984();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  __chkstk_darwin(v9);
  v11 = &v43 - v10;
  if (!swift_weakLoadStrong())
  {
    return;
  }

  if (v2[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isListLayoutInvalid] != 1)
  {
    return;
  }

  v12 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_limit];
  if ((v12 & 0x8000000000000000) == 0)
  {
    v51 = v7;
    v52 = v5;
    v47 = v8;
    v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v46 = OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isListLayoutInvalid;
    v50 = v11;
    v8 = _swiftEmptyArrayStorage;
    *&aBlock = _swiftEmptyArrayStorage;
    v1 = v2;
    v13 = 0;
    v5 = _swiftEmptyArrayStorage;
    while (v12 != v13)
    {
      if (v13 >= v12)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_24;
      }

      if (sub_100141210(v13++))
      {
        sub_100753284();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();
        v5 = aBlock;
        v13 = v14;
      }
    }

    v16 = [v1 traitCollection];
    sub_10013FA28(v16);

    swift_getKeyPath();
    v44 = v2;
    v45 = v5 >> 62;
    v49 = v6;
    if (v5 >> 62)
    {
      goto LABEL_26;
    }

    v17 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_14;
    }

LABEL_27:

    goto LABEL_28;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  v17 = sub_100754664();
  if (!v17)
  {
    goto LABEL_27;
  }

LABEL_14:
  v59 = v8;
  sub_10001E594(0, v17 & ~(v17 >> 63), 0);
  if (v17 < 0)
  {
LABEL_48:
    __break(1u);
    return;
  }

  v18 = 0;
  v19 = v59;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v20 = sub_100754574();
    }

    else
    {
      v20 = *(v5 + 8 * v18 + 32);
    }

    v58 = v20;
    v21 = v20;
    swift_getAtKeyPath();

    v59 = v19;
    v23 = v19[2];
    v22 = v19[3];
    if (v23 >= v22 >> 1)
    {
      sub_10001E594((v22 > 1), v23 + 1, 1);
      v19 = v59;
    }

    ++v18;
    v19[2] = v23 + 1;
    sub_100012160(&aBlock, &v19[5 * v23 + 4]);
  }

  while (v17 != v18);

  v6 = v49;
LABEL_28:
  v24 = v50;
  sub_10074A974();
  v25 = objc_opt_self();
  v26 = v51;
  v27 = v48;
  (*(v51 + 16))(v48, v24, v6);
  v28 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v29 = (v47 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v26 + 32))(v30 + v28, v27, v6);
  *(v30 + v29) = v1;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1001447CC;
  *(v31 + 24) = v30;
  v56 = sub_100045E0C;
  v57 = v31;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v54 = sub_10011B528;
  v55 = &unk_1008690B0;
  v32 = _Block_copy(&aBlock);
  v33 = v1;

  [v25 performWithoutAnimation:v32];
  _Block_release(v32);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (!v45)
  {
    v34 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v34)
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }

  v34 = sub_100754664();
  if (v34)
  {
LABEL_33:
    v35 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v36 = sub_100754574();
      }

      else
      {
        if (v35 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v36 = *(v5 + 8 * v35 + 32);
      }

      v37 = v36;
      v38 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      sub_100142B24(v36, v35);

      ++v35;
      if (v38 == v34)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_41:

  v39 = &v33[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_impressionsUpdateBlock];
  swift_beginAccess();
  v40 = *v39;
  if (*v39)
  {

    v40(v41);
    sub_1000164A8(v40);
  }

  v42 = v44[v46];
  v44[v46] = 0;
  sub_10014019C(v42);
  (*(v51 + 8))(v50, v49);
}

void sub_100140BD4(int a1, id a2)
{
  [a2 bounds];
  v3 = [a2 traitCollection];
  sub_10074A944();
}

uint64_t sub_100140C74()
{
  v1 = [v0 traitCollection];
  v2 = [(NSString *)v1 preferredContentSizeCategory];
  v3 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v4 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  result = sub_100753964();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (sub_100753954())
  {
    v6 = sub_100753964();

    if (v6)
    {
      v7 = v3;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v8 = [(NSString *)v1 preferredContentSizeCategory];
  v9 = UIContentSizeCategoryAccessibilityMedium;
  v10 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = sub_100753964();
  if ((result & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (sub_100753954())
  {
    v11 = sub_100753964();

    if (v11)
    {
      v7 = UIContentSizeCategoryAccessibilityLarge;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {

    v7 = 0;
    v1 = v9;
  }

LABEL_12:

  [v0 setMaximumContentSizeCategory:v7];
  v12 = v0[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isListLayoutInvalid];
  v0[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isListLayoutInvalid] = 1;
  sub_10014019C(v12);

  return [v0 setNeedsLayout];
}

uint64_t sub_100140EB0()
{
  if (!swift_weakLoadStrong())
  {
    goto LABEL_15;
  }

  if (!swift_weakLoadStrong())
  {
LABEL_14:

LABEL_15:
    *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_lockups) = _swiftEmptyArrayStorage;

    *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_prefetchedLockupImages) = 0;

    swift_weakAssign();
    v13 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isListLayoutInvalid);
    *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isListLayoutInvalid) = 1;
    return sub_10014019C(v13);
  }

  v1 = OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_listCells;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = sub_10000C620(v14))
  {
    v9 = i;
LABEL_11:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(v2 + 56) + ((v9 << 9) | (8 * v10)));
    v14[3] = type metadata accessor for TodayCardSmallLockupCollectionViewCell();
    v14[0] = v11;
    v12 = v11;
    sub_10074A994();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      goto LABEL_14;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100141080(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_listCells;
  result = swift_beginAccess();
  v6 = *(*(v1 + v4) + 16);
  if (v6 > a1)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      if (swift_weakLoadStrong())
      {
        do
        {
          swift_beginAccess();
          v7 = sub_100412104(a1);
          if (v8)
          {
            v9 = v7;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v11 = *(v2 + v4);
            v16 = v11;
            *(v2 + v4) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_100675CEC();
              v11 = v16;
            }

            v12 = v9;
            v13 = *(*(v11 + 56) + 8 * v9);
            sub_1003DE2F8(v12, v11);
            *(v2 + v4) = v11;
            swift_endAccess();
            v15[3] = type metadata accessor for TodayCardSmallLockupCollectionViewCell();
            v15[0] = v13;
            v14 = v13;
            sub_10074A994();
            sub_10000C620(v15);
            [v14 removeFromSuperview];
          }

          else
          {
            swift_endAccess();
          }

          ++a1;
        }

        while (v6 != a1);
      }
    }
  }

  return result;
}

uint64_t sub_100141210(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v4 - 8);
  v6 = &v47 - v5;
  v7 = sub_10000C518(&unk_100925520);
  __chkstk_darwin(v7 - 8);
  v9 = &v47 - v8;
  v10 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v47 - v11;
  v13 = sub_10000C518(&unk_100925530);
  __chkstk_darwin(v13 - 8);
  v15 = &v47 - v14;
  v16 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v16 - 8);
  v18 = &v47 - v17;
  v19 = sub_100749A94();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_lockups;
  v24 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_lockups];
  if (!(v24 >> 62))
  {
    result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result > a1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v52 = v20;
  v46 = v22;
  result = sub_100754664();
  v22 = v46;
  v20 = v52;
  if (result <= a1)
  {
    return 0;
  }

LABEL_3:
  v51 = v12;
  v26 = *&v2[v23];
  v53 = v22;
  if ((v26 & 0xC000000000000001) != 0)
  {

    v52 = sub_100754574();

LABEL_7:
    v50 = v9;
    v27 = OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_listCells;
    swift_beginAccess();
    v28 = *&v2[v27];
    if (*(v28 + 16) && (v29 = sub_100412104(a1), (v30 & 1) != 0))
    {
      v31 = *(*(v28 + 56) + 8 * v29);
    }

    else
    {
      v32 = sub_10014439C();
      [v32 setAutoresizingMask:2];
      [v2 addSubview:v32];
      swift_beginAccess();
      v31 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = *&v2[v27];
      *&v2[v27] = 0x8000000000000000;
      sub_100673A9C(v31, a1, isUniquelyReferenced_nonNull_native);
      *&v2[v27] = v54;
      swift_endAccess();
    }

    v34 = [v31 contentView];
    [v34 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v49 = Strong;
      sub_10000C518(&unk_10093CAD0);
      v36 = v6;
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1007A6580;
      sub_100749A44();
      sub_100749A54();
      v55 = v37;
      sub_10014462C(&unk_100929800, &type metadata accessor for ComponentLayoutOptions);
      sub_10000C518(&unk_10093CAE0);
      sub_100144674();
      sub_1007543A4();

      v38 = *&v31[OBJC_IVAR____TtC22SubscribePageExtension38TodayCardSmallLockupCollectionViewCell_lockupView];
      v39 = sub_10000C518(&unk_10092EEA0);
      (*(*(v39 - 8) + 56))(v18, 1, 1, v39);
      v40 = sub_100742E24();
      (*(*(v40 - 8) + 56))(v15, 1, 1, v40);
      v41 = sub_100745E94();
      v42 = v51;
      (*(*(v41 - 8) + 56))(v51, 1, 1, v41);
      v43 = sub_10074F8B4();
      v44 = v50;
      (*(*(v43 - 8) + 56))(v50, 1, 1, v43);
      v45 = sub_10000C518(&unk_100925560);
      (*(*(v45 - 8) + 56))(v36, 1, 1, v45);
      v48 = v19;
      sub_100656038(v52, v38, v18, v49, 0, 0, v15, v42, v44, v36);
      v38[OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 0;
      sub_1002F3D3C();
      [v38 setNeedsLayout];
      sub_1002F3D3C();
      sub_10000C8CC(v36, &unk_100925990);
      sub_10000C8CC(v44, &unk_100925520);
      sub_10000C8CC(v42, &unk_1009259A0);
      sub_10000C8CC(v15, &unk_100925530);
      sub_10000C8CC(v18, &unk_100925540);
      [v31 setNeedsLayout];

      (*(v20 + 8))(v53, v48);
    }

    else
    {
    }

    return v31;
  }

  if (a1 < 0)
  {
    __break(1u);
  }

  else if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v52 = *(v26 + 8 * a1 + 32);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_1001419AC()
{
  if ((*(v0 + OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isExpanded) & 1) == 0 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0 && (Strong, (v2 = [v0 window]) != 0))
  {
    v3 = v2;
    [v0 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = v3;
    [v12 convertRect:v0 fromCoordinateSpace:{v5, v7, v9, v11}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v12 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v33.origin.x = v22;
    v33.origin.y = v24;
    v33.size.width = v26;
    v33.size.height = v28;
    v35.origin.x = v14;
    v35.origin.y = v16;
    v35.size.width = v18;
    v35.size.height = v20;
    v34 = CGRectIntersection(v33, v35);
    x = v34.origin.x;
    y = v34.origin.y;
    width = v34.size.width;
    height = v34.size.height;
    if (!CGRectIsEmpty(v34))
    {
      [v12 convertRect:v0 toCoordinateSpace:{x, y, width, height}];
    }
  }

  else
  {
    [v0 bounds];
  }
}

void sub_100141B6C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong _removeScrollViewScrollObserver:v1];
  }

  swift_unknownObjectWeakAssign();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    [v4 _addScrollViewScrollObserver:v1];
  }
}

void sub_100141C0C()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for TodayListCardLockupContainer();
  objc_msgSendSuper2(&v12, "didMoveToSuperview");
  v1 = [v0 superview];
  if (v1)
  {
    v2 = v1;
    while (1)
    {
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        break;
      }

      v4 = [v2 superview];

      v2 = v4;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    v7 = v3;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      sub_100016C60(0, &qword_100929830);
      v10 = v2;
      v11 = sub_100753FC4();

      if (v11)
      {

        return;
      }
    }

    v6 = v7;
  }

  else
  {
LABEL_5:
    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5)
    {
      return;
    }

    v6 = 0;
  }

  sub_100141B6C(v6);
}

unint64_t sub_100141DF4(unint64_t result, char a2)
{
  v4 = result;
  v5 = v2 + OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_indexForHighlightedLockup;
  if ((*(v2 + OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_indexForHighlightedLockup + 8) & 1) == 0)
  {
    v6 = *v5;
    v7 = OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_listCells;
    result = swift_beginAccess();
    v8 = *(v2 + v7);
    if (*(v8 + 16))
    {
      result = sub_100412104(v6);
      if (v9)
      {
        result = [*(*(v8 + 56) + 8 * result) setHighlighted:0];
      }
    }
  }

  *v5 = v4;
  *(v5 + 8) = a2 & 1;
  if ((a2 & 1) == 0)
  {
    v10 = OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_listCells;
    result = swift_beginAccess();
    v11 = *(v2 + v10);
    if (*(v11 + 16))
    {
      result = sub_100412104(v4);
      if (v12)
      {
        return [*(*(v11 + 56) + 8 * result) setHighlighted:1];
      }
    }
  }

  return result;
}

void sub_100141F00(uint64_t a1, double a2, double a3)
{
  v7 = OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_listCells;
  swift_beginAccess();
  v8 = *(v3 + v7);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  while (v11)
  {
    v14 = v13;
LABEL_10:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = *(*(v8 + 56) + ((v14 << 9) | (8 * v15)));
    [v16 convertPoint:v3 fromCoordinateSpace:{a2, a3}];
    v17 = [v16 pointInside:a1 withEvent:?];

    if (v17)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {
      goto LABEL_11;
    }

    v11 = *(v8 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_100142068(unint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_lockups);
  if ((v7 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {

      goto LABEL_5;
    }

    __break(1u);
    return;
  }

  sub_100754574();

LABEL_5:
  v8 = sub_10074EDC4();
  if (v8)
  {
    v9 = v8;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = sub_10000C518(&unk_100923210);
      sub_1007526C4();
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(v6, 1, v12) == 1)
      {

        sub_10000C8CC(v6, &unk_100923960);
      }

      else
      {
        sub_1003C0E00(v9, 1, v11, v6);

        (*(v13 + 8))(v6, v12);
      }

      return;
    }
  }
}

void sub_1001422B0(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isExpanded) == 1)
  {
    v5 = OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_currentTouch;
    v6 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_currentTouch);
    if (!v6 || [v6 phase] == 3 || (v7 = *(v2 + v5)) != 0 && objc_msgSend(v7, "phase") == 4)
    {
      v8 = sub_100669078(a1);
      if (v8)
      {
        v9 = v8;
        [v8 locationInView:v2];
        sub_100141F00(a2, v10, v11);
        sub_100141DF4(v13, v12 & 1);
        v14 = *(v2 + v5);
        *(v2 + v5) = v9;

        sub_100016C60(0, &unk_100929820);
        sub_1000665E0();
        v15.super.isa = sub_100753474().super.isa;
        v17.super_class = type metadata accessor for TodayListCardLockupContainer();
        objc_msgSendSuper2(&v17, "touchesBegan:withEvent:", v15.super.isa, a2, v16.receiver, v16.super_class, v2, v17.super_class, v18.receiver, v18.super_class, v19.receiver, v19.super_class);
      }

      else
      {
        sub_100016C60(0, &unk_100929820);
        sub_1000665E0();
        v15.super.isa = sub_100753474().super.isa;
        v18.super_class = type metadata accessor for TodayListCardLockupContainer();
        objc_msgSendSuper2(&v18, "touchesBegan:withEvent:", v15.super.isa, a2, v16.receiver, v16.super_class, v17.receiver, v17.super_class, v2, v18.super_class, v19.receiver, v19.super_class);
      }
    }

    else
    {
      sub_100016C60(0, &unk_100929820);
      sub_1000665E0();
      v15.super.isa = sub_100753474().super.isa;
      v16.super_class = type metadata accessor for TodayListCardLockupContainer();
      objc_msgSendSuper2(&v16, "touchesBegan:withEvent:", v15.super.isa, a2, v2, v16.super_class, v17.receiver, v17.super_class, v18.receiver, v18.super_class, v19.receiver, v19.super_class);
    }
  }

  else
  {
    sub_100016C60(0, &unk_100929820);
    sub_1000665E0();
    v15.super.isa = sub_100753474().super.isa;
    v19.super_class = type metadata accessor for TodayListCardLockupContainer();
    objc_msgSendSuper2(&v19, "touchesBegan:withEvent:", v15.super.isa, a2, v16.receiver, v16.super_class, v17.receiver, v17.super_class, v18.receiver, v18.super_class, v2, v19.super_class);
  }
}

void sub_1001424C8(uint64_t a1, uint64_t a2)
{
  if (v2[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isExpanded] != 1)
  {
    sub_100016C60(0, &unk_100929820);
    sub_1000665E0();
    v15.super.isa = sub_100753474().super.isa;
    v18.receiver = v2;
    v18.super_class = type metadata accessor for TodayListCardLockupContainer();
    objc_msgSendSuper2(&v18, "touchesEnded:withEvent:", v15.super.isa, a2);
    goto LABEL_15;
  }

  v5 = OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_currentTouch;
  v6 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_currentTouch];
  if (!v6)
  {
LABEL_14:
    sub_100016C60(0, &unk_100929820);
    sub_1000665E0();
    v15.super.isa = sub_100753474().super.isa;
    v17.receiver = v2;
    v17.super_class = type metadata accessor for TodayListCardLockupContainer();
    objc_msgSendSuper2(&v17, "touchesEnded:withEvent:", v15.super.isa, a2);
    goto LABEL_15;
  }

  v7 = v6;
  if ((sub_1002A4ED0(v7, a1) & 1) == 0)
  {

    goto LABEL_14;
  }

  v8 = *&v2[v5];
  *&v2[v5] = 0;

  v9 = &v2[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_indexForHighlightedLockup];
  if ((v2[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_indexForHighlightedLockup + 8] & 1) == 0)
  {
    v10 = *v9;
    if (v2[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isDragging])
    {
LABEL_8:
      v11 = OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_listCells;
      swift_beginAccess();
      v12 = *&v2[v11];
      if (*(v12 + 16))
      {
        v13 = sub_100412104(v10);
        if (v14)
        {
          [*(*(v12 + 56) + 8 * v13) setHighlighted:0];
        }
      }

      goto LABEL_11;
    }

    sub_100142068(*v9);
    if ((v9[8] & 1) == 0)
    {
      v10 = *v9;
      goto LABEL_8;
    }
  }

LABEL_11:
  *v9 = 0;
  v9[8] = 1;

  sub_100016C60(0, &unk_100929820);
  sub_1000665E0();
  v15.super.isa = sub_100753474().super.isa;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for TodayListCardLockupContainer();
  objc_msgSendSuper2(&v16, "touchesEnded:withEvent:", v15.super.isa, a2);
LABEL_15:
}

uint64_t sub_100142700(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_100016C60(0, &unk_100929820);
  sub_1000665E0();
  v8 = sub_100753484();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);
}

void sub_1001427B0(uint64_t a1, uint64_t a2)
{
  if (v2[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isExpanded] == 1)
  {
    v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_currentTouch];
    *&v2[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_currentTouch] = 0;

    v5 = &v2[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_indexForHighlightedLockup];
    if ((v2[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_indexForHighlightedLockup + 8] & 1) == 0)
    {
      v6 = *v5;
      v7 = OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_listCells;
      swift_beginAccess();
      v8 = *&v2[v7];
      if (*(v8 + 16))
      {
        v9 = sub_100412104(v6);
        if (v10)
        {
          [*(*(v8 + 56) + 8 * v9) setHighlighted:0];
        }
      }
    }

    *v5 = 0;
    v5[8] = 1;
    sub_100016C60(0, &unk_100929820);
    sub_1000665E0();
    v11.super.isa = sub_100753474().super.isa;
    v12.receiver = v2;
    v12.super_class = type metadata accessor for TodayListCardLockupContainer();
    objc_msgSendSuper2(&v12, "touchesCancelled:withEvent:", v11.super.isa, a2);
  }

  else
  {
    sub_100016C60(0, &unk_100929820);
    sub_1000665E0();
    v11.super.isa = sub_100753474().super.isa;
    v13.receiver = v2;
    v13.super_class = type metadata accessor for TodayListCardLockupContainer();
    objc_msgSendSuper2(&v13, "touchesCancelled:withEvent:", v11.super.isa, a2);
  }
}

void sub_10014294C(uint64_t a1, int a2, id a3)
{
  v5 = [a3 preferredContentSizeCategory];
  v6 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v7 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  if ((sub_100753964() & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (sub_100753954())
  {
    v8 = sub_100753964();

    if (v8)
    {
LABEL_10:
      v12 = v6;
      sub_10007271C(a1, *(a1 + 24));
      sub_1007514D4();
      return;
    }
  }

  else
  {
  }

  v9 = [a3 preferredContentSizeCategory];
  v13 = UIContentSizeCategoryAccessibilityMedium;
  v10 = UIContentSizeCategoryAccessibilityExtraLarge;
  if ((sub_100753964() & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return;
  }

  if (sub_100753954())
  {
    v11 = sub_100753964();

    if ((v11 & 1) == 0)
    {
      return;
    }

    v6 = UIContentSizeCategoryAccessibilityLarge;
    goto LABEL_10;
  }
}

uint64_t sub_100142B24(char *a1, unint64_t a2)
{
  v5 = sub_10074F314();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10074F284();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_lockups);
    v25 = result;
    if ((v11 & 0xC000000000000001) == 0)
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
      {
        v12 = *(v11 + 8 * a2 + 32);

LABEL_7:
        v13 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_prefetchedLockupImages);
        if (v13)
        {
          if (*(v13 + 16))
          {
            v14 = sub_100412104(a2);
            if (v15)
            {
              v16 = *(*(v13 + 56) + 8 * v14);
              if (sub_10074EF64())
              {
                sub_10074F294();
                v17 = sub_10074F254();
                v18 = v9;
                v19 = v17;
                (*(v7 + 8))(v18, v6);
                v20 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension38TodayCardSmallLockupCollectionViewCell_lockupView];
                swift_beginAccess();
                sub_10074F374();
                v21 = *(v20 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
                sub_10074F324();
                sub_100743364();
                [v21 setContentMode:{sub_10074F184(), v25}];
                sub_100747FB4();
                sub_1007433A4();
                if (!sub_10074F1E4())
                {
                  sub_100016C60(0, &qword_100923500);
                  sub_100753E34();
                }

                sub_100743224();
                [v21 setContentMode:v19];
                v22 = v16;
                v29.value.super.isa = v16;
                v29.is_nil = 0;
                sub_100743384(v29, v23);
              }
            }
          }
        }

        v27[3] = sub_10074EFD4();
        v27[4] = sub_10014462C(&qword_1009340B0, &type metadata accessor for Lockup);
        v27[0] = v12;
        v26[3] = type metadata accessor for TodayCardSmallLockupCollectionViewCell();
        v26[0] = a1;

        v24 = a1;
        sub_1007430A4();

        sub_10000C620(v26);
        return sub_10000C8CC(v27, &unk_1009297F0);
      }

      __break(1u);
      return result;
    }

    v12 = sub_100754574();

    goto LABEL_7;
  }
}

id sub_100142F54(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_lockups] = a1;

  swift_weakAssign();
  swift_weakAssign();
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_limit] = 0;
  v2 = v1[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isListLayoutInvalid];
  v1[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isListLayoutInvalid] = 1;
  sub_10014019C(v2);

  return [v1 setNeedsLayout];
}

id sub_100143004(char *a1)
{
  v2 = v1;
  v4 = [a1 maximumContentSizeCategory];
  [v2 setMaximumContentSizeCategory:v4];

  *&v2[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_lockups] = *&a1[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_lockups];

  swift_weakLoadStrong();
  swift_weakAssign();

  swift_weakLoadStrong();
  swift_weakAssign();

  *&v2[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_limit] = 0;
  v5 = v2[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isListLayoutInvalid];
  v2[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isListLayoutInvalid] = 1;
  sub_10014019C(v5);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_listCells;
  swift_beginAccess();
  v7 = *&a1[v6];
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v38 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    v13 = v12;
    if (!v10)
    {
      break;
    }

LABEL_8:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = (v12 << 9) | (8 * v14);
    v16 = *(*(v7 + 48) + v15);
    v17 = *(*(v7 + 56) + v15);
    v18 = *(*&v17[OBJC_IVAR____TtC22SubscribePageExtension38TodayCardSmallLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
    v19 = v17;
    v20 = v18;
    v21 = sub_100743334();

    if (v21)
    {
      v37 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v38;
      v23 = sub_100412104(v16);
      v25 = v38[2];
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        result = sub_1007547B4();
        __break(1u);
        return result;
      }

      if (v38[3] >= v28)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v40 = v23;
          v35 = v24;
          sub_100675734();
          v24 = v35;
          v23 = v40;
        }
      }

      else
      {
        v39 = v24;
        sub_1006710C0(v28, isUniquelyReferenced_nonNull_native);
        v23 = sub_100412104(v16);
        v30 = v29 & 1;
        v24 = v39;
        if ((v39 & 1) != v30)
        {
          goto LABEL_26;
        }
      }

      v38 = v41;
      if (v24)
      {
        v31 = v41[7];
        v32 = *(v31 + 8 * v23);
        *(v31 + 8 * v23) = v37;
      }

      else
      {
        v41[(v23 >> 6) + 8] |= 1 << v23;
        *(v41[6] + 8 * v23) = v16;
        *(v41[7] + 8 * v23) = v37;

        v33 = v41[2];
        v27 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v27)
        {
          goto LABEL_25;
        }

        v41[2] = v34;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v12 >= v11)
    {
      break;
    }

    v10 = *(v7 + 64 + 8 * v12);
    ++v13;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  if (v38[2])
  {
    *&v2[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_prefetchedLockupImages] = v38;
  }

  return [v2 setNeedsLayout];
}

void sub_10014338C()
{
  v1 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v1 - 8);
  v41 = &v32 - v2;
  v3 = sub_100752914();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v8 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_limit];
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_34;
      }

      v40 = v3;
      v0 = _swiftEmptyArrayStorage;
      v42 = _swiftEmptyArrayStorage;
      v7 = v7;
      v9 = 0;
      while (1)
      {
        if (v8 == v9)
        {

          if (v0 >> 62)
          {
            goto LABEL_35;
          }

          v12 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v12)
          {
            goto LABEL_14;
          }

          goto LABEL_36;
        }

        if (v9 >= v8)
        {
          break;
        }

        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_30;
        }

        if (sub_100141210(v9++))
        {
          sub_100753284();
          if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_100753304();
          }

          sub_100753344();
          v0 = v42;
          v9 = v10;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        v12 = sub_100754664();
        if (!v12)
        {
          break;
        }

LABEL_14:
        v36 = v0;
        v37 = OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_lockups;
        v38 = v0 & 0xFFFFFFFFFFFFFF8;
        v39 = v0 & 0xC000000000000001;
        v13 = (v4 + 48);
        v32 = (v4 + 8);
        v33 = (v4 + 32);
        v14 = 4;
        while (1)
        {
          v15 = v14 - 4;
          if (v39)
          {
            v16 = sub_100754574();
          }

          else
          {
            if (v15 >= *(v38 + 16))
            {
              goto LABEL_32;
            }

            v16 = *(v0 + 8 * v14);
          }

          v4 = v16;
          v17 = v14 - 3;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          v18 = *&v7[v37];
          if ((v18 & 0xC000000000000001) != 0)
          {

            sub_100754574();
          }

          else
          {
            if (v15 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_33;
            }
          }

          v19 = v41;
          sub_10074EE94();
          v20 = v40;
          if ((*v13)(v19, 1, v40) == 1)
          {

            sub_10000C8CC(v19, &unk_100925380);
          }

          else
          {
            v21 = v19;
            v22 = v35;
            (*v33)(v35, v21, v20);
            [v4 frame];
            v24 = v23;
            v26 = v25;
            v28 = v27;
            v30 = v29;
            v31 = [v7 superview];
            [v7 convertRect:v31 toView:{v24, v26, v28, v30}];

            sub_100749544();

            (*v32)(v22, v20);
          }

          ++v14;
          v0 = v36;
          if (v17 == v12)
          {
            goto LABEL_36;
          }
        }
      }

LABEL_36:
    }

    else
    {
    }
  }
}

id sub_100143818()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayListCardLockupContainer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100143978()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_1001439D8(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100091CAC;
}

uint64_t sub_100143A70()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1);
  return v2;
}

uint64_t sub_100143ACC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6);
}

void (*sub_100143B8C())()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return sub_100143CE4;
}

uint64_t sub_100143C34()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100143C6C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100143CA4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100143CEC(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v3 = sub_100754664();
    if (!v3)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_23;
    }
  }

  v4 = 0;
  do
  {
    v5 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        sub_100754574();
        v4 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v5 >= *(v2 + 16))
        {
          goto LABEL_21;
        }

        v4 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      if (sub_10074EF24())
      {
        break;
      }

      ++v5;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    if (qword_100920858 != -1)
    {
      swift_once();
    }

    sub_10074F374();

    sub_100753284();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();
  }

  while (v4 != v3);
LABEL_23:
  v6._rawValue = _swiftEmptyArrayStorage;
  sub_100744224(v6);
}

double sub_100143ED8(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  v2 = sub_100753094();
  v4 = v3;
  if (v2 == sub_100753094() && v4 == v5)
  {
    goto LABEL_15;
  }

  v7 = sub_100754754();

  if (v7)
  {
LABEL_6:

    return 20.0;
  }

  v8 = sub_100753094();
  v10 = v9;
  if (v8 == sub_100753094() && v10 == v11)
  {
LABEL_15:

    return 20.0;
  }

  v13 = sub_100754754();

  if (v13)
  {
    goto LABEL_6;
  }

  v14 = sub_100753094();
  v16 = v15;
  if (v14 == sub_100753094() && v16 == v17)
  {
LABEL_14:

    return 0.0;
  }

  v19 = sub_100754754();

  if (v19)
  {
    goto LABEL_18;
  }

  v20 = sub_100753094();
  v22 = v21;
  if (v20 == sub_100753094() && v22 == v23)
  {
    goto LABEL_14;
  }

  v24 = sub_100754754();

  if (v24)
  {
    goto LABEL_18;
  }

  v25 = sub_100753094();
  v27 = v26;
  if (v25 == sub_100753094() && v27 == v28)
  {

    return 8.0;
  }

  v29 = sub_100754754();

  if (v29)
  {

    return 8.0;
  }

  v30 = sub_100753094();
  v32 = v31;
  if (v30 == sub_100753094() && v32 == v33)
  {
    goto LABEL_14;
  }

  v34 = sub_100754754();

  if (v34)
  {
LABEL_18:

    return 0.0;
  }

  v35 = sub_100753094();
  v37 = v36;
  if (v35 == sub_100753094() && v37 == v38)
  {
    goto LABEL_14;
  }

  v39 = sub_100754754();

  result = 8.0;
  if (v39)
  {
    return 0.0;
  }

  return result;
}

void sub_10014424C()
{
  swift_weakInit();
  swift_weakInit();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isExpanded) = 0;
  swift_weakInit();
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_impressionsUpdateBlock);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_lockups) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_limit) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isListLayoutInvalid) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_lastContentWidth) = 0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_listCells;
  *(v0 + v2) = sub_100414F38(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_prefetchedLockupImages) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_currentTouch) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isDragging) = 0;
  v3 = v0 + OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_indexForHighlightedLockup;
  *v3 = 0;
  *(v3 + 8) = 1;
  sub_100754644();
  __break(1u);
}

char *sub_10014439C()
{
  v0 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v0 - 8);
  v2 = &v20 - v1;
  v3 = [objc_allocWithZone(type metadata accessor for TodayCardSmallLockupCollectionViewCell()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v7 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension38TodayCardSmallLockupCollectionViewCell_lockupView];
  [v7 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v8 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel];
  v9 = qword_100920EE0;
  v10 = v7;
  v11 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v12 = sub_100750534();
  v13 = sub_10000D0FC(v12, qword_1009809F0);
  v14 = *(v12 - 8);
  v15 = *(v14 + 16);
  v15(v2, v13, v12);
  v16 = *(v14 + 56);
  v16(v2, 0, 1, v12);
  sub_100745BA4();

  v17 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel];
  if (qword_100920F08 != -1)
  {
    swift_once();
  }

  v18 = sub_10000D0FC(v12, qword_100980A68);
  v15(v2, v18, v12);
  v16(v2, 0, 1, v12);
  sub_100745BA4();

  return v3;
}

uint64_t sub_10014462C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100144674()
{
  result = qword_100929810;
  if (!qword_100929810)
  {
    sub_10000C724(&unk_10093CAE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100929810);
  }

  return result;
}

uint64_t sub_100144730()
{
  v1 = sub_10074A984();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_1001447CC()
{
  v1 = *(sub_10074A984() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100140BD4(v0 + v2, v3);
}

uint64_t sub_100144868(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100144880()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_listCells;
  swift_beginAccess();
  if (*(*(v0 + v1) + 16) < *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_limit))
  {
    sub_1001419AC();
    if (CGRectGetHeight(v2) > COERCE_DOUBLE(1))
    {
      sub_100140588();
    }
  }
}

void sub_100144928(void *a1, uint64_t a2, uint64_t a3, const char **a4, SEL *a5)
{
  v11.receiver = a1;
  v11.super_class = swift_getObjectType();
  v8 = *a4;
  v9 = v11.receiver;
  objc_msgSendSuper2(&v11, v8, a3);
  v10 = [objc_opt_self() sharedCoordinator];
  [v10 *a5];
}

id sub_1001449BC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  sub_1000497C4(a1, &v16 - v6);
  v8 = sub_100741264();
  v9 = *(v8 - 8);
  v11 = 0;
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_100741204(v10);
    v11 = v12;
    (*(v9 + 8))(v7, v8);
  }

  v16.receiver = v2;
  v16.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v16, "initWithCompositionURL:", v11);

  v14 = v13;
  sub_100144D70(a1);
  if (v14)
  {
  }

  return v14;
}

uint64_t sub_100144D70(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100923970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100144DD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_100144E2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v34[0] = a2;
  v5 = sub_1007504F4();
  __chkstk_darwin(v5 - 8);
  v34[1] = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100749154();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = (v34 - v13);
  [a1 pageMarginInsets];
  v16 = v15;
  v18 = v17;
  v19 = [a1 traitCollection];
  v20 = sub_1007537D4();

  if (v20)
  {
    *v14 = 1.0;
    (*(v8 + 104))(v14, enum case for BreakoutDetailsLayout.DetailDimension.fraction(_:), v7);
    if (JUScreenClassGetMain() == 1)
    {
      v41 = &type metadata for Double;
      v42 = &protocol witness table for Double;
      v40[0] = 0x407E000000000000;
      v21 = 0x4070400000000000;
    }

    else
    {
      HasRoundedCorners = JUScreenClassHasRoundedCorners();
      v23 = 560.0;
      if (HasRoundedCorners)
      {
        v23 = 610.0;
      }

      v38 = &type metadata for Double;
      v39 = &protocol witness table for Double;
      *&v37 = v23;
      sub_100012160(&v37, v40);
      v21 = 0x4075400000000000;
    }
  }

  else
  {
    *(v14 + 3) = &type metadata for CGFloat;
    *(v14 + 4) = &protocol witness table for CGFloat;
    *v14 = a3 - (v16 + v18 + 80.0);
    (*(v8 + 104))(v14, enum case for BreakoutDetailsLayout.DetailDimension.static(_:), v7);
    v21 = 0;
    v41 = &type metadata for Double;
    v42 = &protocol witness table for Double;
    v40[0] = 0x4083100000000000;
  }

  if (qword_100920320 != -1)
  {
    swift_once();
  }

  v24 = sub_10000C518(&unk_1009298F0);
  sub_10000D0FC(v24, qword_100929860);
  *&v37 = a1;
  swift_unknownObjectRetain();
  sub_100743464();
  swift_unknownObjectRelease();
  (*(v8 + 16))(v10, v14, v7);
  if (qword_100920330 != -1)
  {
    swift_once();
  }

  v25 = sub_100750B04();
  v26 = sub_10000D0FC(v25, qword_10097DC80);
  v38 = v25;
  v39 = &protocol witness table for StaticDimension;
  v27 = sub_10000D134(&v37);
  (*(*(v25 - 8) + 16))(v27, v26, v25);
  v36[14] = &protocol witness table for Double;
  v36[13] = &type metadata for Double;
  v36[10] = 0x4071C00000000000;
  v36[9] = &protocol witness table for CGFloat;
  v36[8] = &type metadata for CGFloat;
  v36[5] = 0x4034000000000000;
  if (qword_100920328 != -1)
  {
    swift_once();
  }

  v28 = sub_10074B2B4();
  v29 = sub_10000D0FC(v28, qword_10097DC68);
  v36[3] = v28;
  v36[4] = sub_1001481E0(&unk_10093F5D0, &type metadata accessor for CappedSizeStaticDimension);
  v30 = sub_10000D134(v36);
  (*(*(v28 - 8) + 16))(v30, v29, v28);
  sub_10000C824(v40, &v35);
  if (v20)
  {
    v31 = &protocol witness table for CGFloat;
    v32 = &type metadata for CGFloat;
  }

  else
  {
    v32 = 0;
    v31 = 0;
    v21 = 0;
    v34[3] = 0;
    v34[4] = 0;
  }

  v34[5] = v32;
  v34[6] = v31;
  v34[2] = v21;
  sub_100748F44();
  sub_10000C620(v40);
  return (*(v8 + 8))(v14, v7);
}

uint64_t sub_10014538C()
{
  v0 = sub_1007504F4();
  __chkstk_darwin(v0);
  __chkstk_darwin(v1);
  v2 = sub_10000C518(&unk_1009298F0);
  sub_100039C50(v2, qword_100929860);
  sub_10000D0FC(v2, qword_100929860);
  sub_100750504();
  sub_100750504();
  sub_10000C518(&unk_100923AE0);
  return sub_100743484();
}

uint64_t sub_1001454AC()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074B2B4();
  sub_100039C50(v4, qword_10097DC68);
  sub_10000D0FC(v4, qword_10097DC68);
  if (qword_1009214E8 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_100981BF0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v7 = UIContentSizeCategoryExtraExtraExtraLarge;
  return sub_10074B2A4();
}

uint64_t sub_100145648()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_10097DC80);
  sub_10000D0FC(v4, qword_10097DC80);
  if (qword_1009212E8 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_1009815F0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100145820()
{
  v0 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v10 - v4;
  v6 = sub_10000C518(&qword_100929360);
  sub_100039C50(v6, qword_10097DC98);
  sub_10000D0FC(v6, qword_10097DC98);
  if (qword_100921BB0 != -1)
  {
    swift_once();
  }

  v7 = sub_10000D0FC(v0, qword_100982BF0);
  sub_100121090(v7, v5);
  if (qword_100921BA8 != -1)
  {
    swift_once();
  }

  v8 = sub_10000D0FC(v0, qword_100982BD8);
  sub_100121090(v8, v2);
  sub_10000C518(&unk_100923AE0);
  return sub_100743484();
}

char *sub_1001459B0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v103 = sub_100752AC4();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v11 - 8);
  v97 = &v90 - v12;
  v105 = sub_10074AB44();
  v13 = *(v105 - 8);
  __chkstk_darwin(v105);
  v98 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v107 = &v90 - v16;
  v99 = sub_100750534();
  v106 = *(v99 - 8);
  __chkstk_darwin(v99);
  v104 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_10000C518(&qword_100929360);
  v18 = *(v96 - 1);
  __chkstk_darwin(v96);
  v20 = &v90 - v19;
  v21 = OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_tapGestureRecognizer;
  *(v4 + v21) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v22 = OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_backgroundEffectView;
  type metadata accessor for BreakoutBackgroundEffectView();
  *(v4 + v22) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = type metadata accessor for MediaView();
  v24 = objc_allocWithZone(v23);
  *&v24[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionView] = 0;
  *&v24[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionAmount] = 0;
  v24[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_isRubberbanding] = 0;
  *&v24[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v24[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionOffset] = 0;
  v25 = type metadata accessor for UberContentContainer();
  v26 = objc_allocWithZone(v25);
  *&v26[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = 0;
  *&v26[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY] = 0;
  v27 = &v26[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_prominentPlayButtonCenterYOverride];
  *v27 = 0;
  v27[8] = 1;
  v28 = &v26[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_systemBackgroundExtensionOutsets];
  *v28 = 0u;
  *(v28 + 1) = 0u;
  v28[32] = 1;
  *&v26[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_backgroundExtensionView] = 0;
  v114.receiver = v26;
  v114.super_class = v25;
  v29 = objc_msgSendSuper2(&v114, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v30 = v29;
  if (*&v29[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_backgroundExtensionView])
  {
    [v29 addSubview:?];
  }

  v31 = OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer;
  *&v24[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer] = v30;
  v113.receiver = v24;
  v113.super_class = v23;
  v32 = objc_msgSendSuper2(&v113, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v32 setClipsToBounds:1];
  [v32 addSubview:*&v32[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer]];

  *(v5 + v31) = v32;
  v33 = OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_artworkView;
  sub_1007433C4();
  *(v5 + v33) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v34 = OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_detailsView;
  if (qword_100920338 != -1)
  {
    swift_once();
  }

  v35 = v96;
  v36 = sub_10000D0FC(v96, qword_10097DC98);
  (*(v18 + 16))(v20, v36, v35);
  v37 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *(v5 + v34) = sub_10058E048(v20);
  v95 = OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_buttonDetailsView;
  v96 = v5;
  if (qword_1009214E8 != -1)
  {
    swift_once();
  }

  v38 = v99;
  v39 = sub_10000D0FC(v99, qword_100981BF0);
  v40 = v106;
  v41 = *(v106 + 16);
  v42 = v104;
  v41(v104, v39, v38);
  v93 = v41;
  v91 = UIContentSizeCategoryExtraExtraExtraLarge;
  v43 = enum case for DirectionalTextAlignment.none(_:);
  v94 = v13;
  v44 = *(v13 + 104);
  v45 = v105;
  v44(v107, enum case for DirectionalTextAlignment.none(_:), v105);
  v92 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel());
  *&v92[qword_100941490] = UIContentSizeCategoryExtraExtraExtraLarge;
  v46 = v97;
  v41(v97, v42, v38);
  v47 = v45;
  v48 = *(v40 + 56);
  v48(v46, 0, 1, v38);
  v49 = v98;
  v44(v98, v43, v47);
  v50 = v91;
  v51 = sub_100745C74();
  v52 = v104;
  v93(v46, v104, v38);
  v48(v46, 0, 1, v38);
  v53 = v51;
  sub_100745BA4();
  sub_100745B84();
  [v53 setNumberOfLines:0];
  v54 = v94;
  v55 = v107;
  v56 = v105;
  (*(v94 + 16))(v49, v107, v105);
  sub_100745BF4();

  (*(v54 + 8))(v55, v56);
  (*(v106 + 8))(v52, v38);
  v57 = v96;
  *(v96 + v95) = v53;
  v58 = OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_buttonDetailsTextAlignment;
  v59 = enum case for BreakoutDetails.TextAlignment.leading(_:);
  v60 = sub_100745374();
  (*(*(v60 - 8) + 104))(&v57[v58], v59, v60);
  v61 = OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_offerButton;
  v62 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v57[v61] = sub_100154454(0);
  *&v57[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_pageTraits] = 0;
  v57[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_isBackgroundEffectViewHidden] = 1;
  v112.receiver = v57;
  v112.super_class = ObjectType;
  v63 = objc_msgSendSuper2(&v112, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v67 = v63;
  [v67 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_100016C60(0, &qword_100923500);
  v68 = sub_100753E34();
  [v67 setBackgroundColor:v68];

  v69 = OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_buttonDetailsView;
  v70 = *&v67[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_buttonDetailsView];
  sub_100745C34();

  v71 = [*&v67[v69] layer];
  [v71 setCompositingFilter:kCAFilterPlusL];

  v72 = *&v67[v69];
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v73 = v72;
  v74 = v101;
  sub_100752A74();
  sub_1000277BC(&v108);
  sub_1000277BC(&v110);
  sub_100753C74();

  v75 = *(v102 + 8);
  v76 = v103;
  v75(v74, v103);
  v77 = OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_detailsView;
  v78 = *&v67[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_detailsView];
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v79 = v78;
  sub_100752A74();
  sub_1000277BC(&v108);
  sub_1000277BC(&v110);
  sub_100753C74();

  v75(v74, v76);
  v80 = OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_artworkView;
  v81 = *&v67[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_artworkView];
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v82 = v81;
  sub_100752A74();
  sub_1000277BC(&v108);
  sub_1000277BC(&v110);
  sub_100753C74();

  v75(v74, v76);
  [v67 addSubview:*&v67[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer]];
  [v67 addSubview:*&v67[v77]];
  [v67 addSubview:*&v67[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_offerButton]];
  [v67 addSubview:*&v67[v69]];
  v83 = *&v67[v80];
  sub_100743284();

  v84 = OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_tapGestureRecognizer;
  v85 = *&v67[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_tapGestureRecognizer];
  v86 = v67;
  [v85 addTarget:v86 action:"didTapVideo"];
  v87 = *&v67[v84];
  [v87 setDelegate:v86];

  [v86 addGestureRecognizer:*&v67[v84]];
  v88 = [v86 layer];

  [v88 setAllowsGroupBlending:0];
  return v86;
}

void sub_100146644(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer);
  v4 = OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer;
  v5 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
  if (a1)
  {
    sub_1001481E0(&qword_1009230E0, type metadata accessor for VideoView);
    v6 = a1;
    v7 = [v6 superview];
    if (v7)
    {
      v8 = v7;
      sub_100016C60(0, &qword_100922300);
      v9 = v5;
      v10 = sub_100753FC4();

      if (v10)
      {
        [v6 removeFromSuperview];
      }
    }

    else
    {
    }
  }

  v11 = *&v5[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = a1;
  v12 = a1;
  sub_10057A514(v11);

  if (*(*(v3 + v4) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents))
  {
    type metadata accessor for VideoView();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      *(v13 + qword_10093CB38 + 8) = &off_1008690D8;

      swift_unknownObjectWeakAssign();
    }
  }
}

void (*sub_100146800(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer);
  a1[1] = v1;
  a1[2] = v3;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer;
  a1[3] = OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer;
  v5 = *(*(v3 + v4) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
  if (v5)
  {
    type metadata accessor for VideoView();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_1001468A0;
}

void sub_1001468A0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(a1 + 16) + *(a1 + 24));
  if (a2)
  {
    if (v3)
    {
      sub_1001481E0(&qword_1009230E0, type metadata accessor for VideoView);
      v5 = v3;
      v6 = [v5 superview];
      if (v6)
      {
        v7 = v6;
        sub_100016C60(0, &qword_100922300);
        v8 = v4;
        v9 = sub_100753FC4();

        if (v9)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
    v17 = *&v4[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = v3;
    v18 = v3;
    sub_10057A514(v17);

    if (*(*(v16 + v15) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents))
    {
      type metadata accessor for VideoView();
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        *(v19 + qword_10093CB38 + 8) = &off_1008690D8;
        swift_unknownObjectWeakAssign();
      }
    }

    v20 = *a1;
  }

  else
  {
    if (v3)
    {
      sub_1001481E0(&qword_1009230E0, type metadata accessor for VideoView);
      v10 = v3;
      v11 = [v10 superview];
      if (v11)
      {
        v12 = v11;
        sub_100016C60(0, &qword_100922300);
        v13 = v4;
        v14 = sub_100753FC4();

        if (v14)
        {
          [v10 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v22 = *(a1 + 16);
    v21 = *(a1 + 24);
    v23 = *&v4[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = v3;
    v24 = v3;
    sub_10057A514(v23);

    if (*(*(v22 + v21) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents))
    {
      type metadata accessor for VideoView();
      v25 = swift_dynamicCastClass();
      if (v25)
      {
        *(v25 + qword_10093CB38 + 8) = &off_1008690D8;

        swift_unknownObjectWeakAssign();
      }
    }
  }
}

double sub_100146BCC(double a1)
{
  v3 = sub_100748F54();
  __chkstk_darwin(v3 - 8);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100748F74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v1 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_pageTraits))
  {
    return 0.0;
  }

  v10 = swift_unknownObjectRetain();
  sub_100144E2C(v10, v5, a1);
  v11 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer);
  v22[19] = type metadata accessor for MediaView();
  v22[20] = &protocol witness table for UIView;
  v22[16] = v11;
  v12 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_detailsView);
  v22[14] = type metadata accessor for BreakoutDetailsView(0);
  v22[15] = &protocol witness table for UIView;
  v22[11] = v12;
  v13 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_offerButton);
  v22[9] = type metadata accessor for OfferButton();
  v22[10] = &protocol witness table for UIView;
  v22[6] = v13;
  v14 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_buttonDetailsView);
  v22[4] = type metadata accessor for CappedSizeDynamicTypeLabel();
  v22[5] = &protocol witness table for UILabel;
  v22[1] = v14;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  sub_100748F64();
  sub_100748F24();
  v20 = v19;
  swift_unknownObjectRelease();
  (*(v7 + 8))(v9, v6);
  return v20;
}

id sub_100146E54()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100750354();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100748F54();
  __chkstk_darwin(v7 - 8);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100748F74();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60.receiver = v1;
  v60.super_class = ObjectType;
  result = objc_msgSendSuper2(&v60, "layoutSubviews", v12);
  v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_pageTraits];
  if (v16)
  {
    v46 = v11;
    v47 = v10;
    swift_unknownObjectRetain();
    [v1 bounds];
    sub_100144E2C(v16, v9, v17);
    v44[0] = v3;
    v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer];
    v19 = type metadata accessor for MediaView();
    v44[1] = ObjectType;
    v58 = v19;
    v59 = &protocol witness table for UIView;
    v57 = v18;
    v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_detailsView];
    v55 = type metadata accessor for BreakoutDetailsView(0);
    v56 = &protocol witness table for UIView;
    v54 = v20;
    v21 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_offerButton];
    v52 = type metadata accessor for OfferButton();
    v53 = &protocol witness table for UIView;
    v51 = v21;
    v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_buttonDetailsView];
    v49 = type metadata accessor for CappedSizeDynamicTypeLabel();
    v50 = &protocol witness table for UILabel;
    v48 = v22;
    v45 = v18;
    v23 = v20;
    v24 = v21;
    v25 = v22;
    sub_100748F64();
    [v1 bounds];
    sub_100748F34();
    (*(v4 + 8))(v6, v44[0]);
    v26 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_backgroundEffectView];
    [v1 bounds];
    MaxY = CGRectGetMaxY(v61);
    [v23 frame];
    MinY = CGRectGetMinY(v62);
    v29 = &v26[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_bottomGradientHeight];
    *v29 = MaxY - MinY;
    *(v29 + 8) = 0;
    [v1 bounds];
    [v26 setFrame:?];
    sub_1007477B4();
    if (v31 >= v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = v31;
    }

    if (v32 <= 31.0)
    {
      v33 = 0.0;
    }

    else
    {
      v33 = v32 * 0.5;
    }

    [v23 frame];
    v34 = CGRectGetMinY(v63) + -34.0;
    v35 = 30.0;
    if (v32 <= 60.0)
    {
      v35 = v33;
    }

    v36 = v34 - v35;
    sub_1007477B4();
    MidY = CGRectGetMidY(v64);
    v38 = *&v45[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer];
    v39 = &v38[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_prominentPlayButtonCenterYOverride];
    if (v36 >= MidY)
    {
      v43 = v39[8];
      *v39 = 0;
      v39[8] = 1;
      v41 = v47;
      v42 = v46;
      if (v43)
      {
LABEL_16:
        swift_unknownObjectRelease();
        return (*(v42 + 8))(v14, v41);
      }
    }

    else
    {
      MidY = *v39;
      v40 = v39[8];
      *v39 = v36;
      v39[8] = 0;
      v41 = v47;
      v42 = v46;
      if ((v40 & 1) == 0 && v36 == MidY)
      {
        goto LABEL_16;
      }
    }

    [v38 setNeedsLayout];
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100147318()
{
  v1 = *(*(*&v0[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer] + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
  if (v1)
  {
    type metadata accessor for VideoView();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v1;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  *(v6 + 24) = 0;
  v16 = sub_100148CE4;
  v17 = v6;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_1000CF7B0;
  v15 = &unk_1008691E0;
  v7 = _Block_copy(&v12);

  v8 = v0;

  v9 = swift_allocObject();
  *(v9 + 16) = sub_100148CBC;
  *(v9 + 24) = v4;
  v16 = sub_100125A74;
  v17 = v9;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100144DD8;
  v15 = &unk_100869230;
  v10 = _Block_copy(&v12);

  [v5 animateWithDuration:4 delay:v7 options:v10 animations:0.3 completion:0.0];
  _Block_release(v10);
  _Block_release(v7);
}

void sub_100147550()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + qword_10093CB78);
    if (v2)
    {
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1000F0A90;
      aBlock[5] = v3;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1005171C8;
      aBlock[3] = &unk_100869280;
      v4 = _Block_copy(aBlock);
      v5 = v2;

      [v5 enterFullScreenAnimated:1 completionHandler:v4];

      _Block_release(v4);
      v1 = v5;
    }
  }
}

id sub_1001476C8(uint64_t a1, double a2)
{
  [*(a1 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_backgroundEffectView) setAlpha:?];
  [*(a1 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_detailsView) setAlpha:a2];
  [*(a1 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_offerButton) setAlpha:a2];
  v4 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_buttonDetailsView);

  return [v4 setAlpha:a2];
}

void sub_100147760()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = 0x3FF0000000000000;
  v11 = sub_1001481BC;
  v12 = v2;
  v7 = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_1000CF7B0;
  v10 = &unk_100869118;
  v3 = _Block_copy(&v7);
  v4 = v0;

  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v11 = sub_100125A30;
  v12 = v5;
  v7 = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_100144DD8;
  v10 = &unk_100869168;
  v6 = _Block_copy(&v7);

  [v1 animateWithDuration:4 delay:v3 options:v6 animations:0.3 completion:0.0];
  _Block_release(v6);
  _Block_release(v3);
}

uint64_t type metadata accessor for UpsellBreakoutView()
{
  result = qword_1009298D0;
  if (!qword_1009298D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100147C10()
{
  result = sub_100745374();
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

uint64_t sub_100147CCC()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for VideoView();
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

uint64_t (*sub_100147D40(uint64_t **a1))()
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
  v2[4] = sub_100146800(v2);
  return sub_1000181A8;
}

void sub_100147DB0()
{
  if (*(*(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents))
  {
    type metadata accessor for VideoView();
    v1 = swift_dynamicCastClass();
    if (v1)
    {
      v2 = *(v1 + qword_10093CB78);
      if (v2)
      {

        [v2 setShowsPlaybackControls:1];
      }
    }
  }
}

uint64_t sub_100147E4C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1001481E0(&qword_100929900, type metadata accessor for UpsellBreakoutView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_100147EC0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1001481E0(&qword_100929900, type metadata accessor for UpsellBreakoutView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_100147F4C(uint64_t *a1))()
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
  sub_1001481E0(&qword_100929900, type metadata accessor for UpsellBreakoutView);
  *(v3 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_100148008(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
  sub_100016C60(0, &qword_100922300);
  v6 = v5;
  v7 = sub_100753FC4();

  return v7 & 1;
}

uint64_t sub_100148184()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001481C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001481E0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100148228()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v2 - 8);
  v59 = &v52 - v3;
  v58 = sub_10074AB44();
  v4 = *(v58 - 8);
  __chkstk_darwin(v58);
  v60 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v65 = &v52 - v7;
  v61 = sub_100750534();
  v64 = *(v61 - 8);
  __chkstk_darwin(v61);
  v63 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_10000C518(&qword_100929360);
  v57 = *(v62 - 8);
  __chkstk_darwin(v62);
  v10 = &v52 - v9;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_tapGestureRecognizer;
  *(v1 + v11) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_backgroundEffectView;
  type metadata accessor for BreakoutBackgroundEffectView();
  *(v1 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = type metadata accessor for MediaView();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionView] = 0;
  *&v14[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionAmount] = 0;
  v14[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_isRubberbanding] = 0;
  *&v14[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v14[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionOffset] = 0;
  v15 = type metadata accessor for UberContentContainer();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = 0;
  *&v16[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY] = 0;
  v17 = &v16[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_prominentPlayButtonCenterYOverride];
  *v17 = 0;
  v17[8] = 1;
  v18 = &v16[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_systemBackgroundExtensionOutsets];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[32] = 1;
  *&v16[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_backgroundExtensionView] = 0;
  v67.receiver = v16;
  v67.super_class = v15;
  v19 = objc_msgSendSuper2(&v67, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = v19;
  if (*&v19[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_backgroundExtensionView])
  {
    [v19 addSubview:?];
  }

  v21 = OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer;
  *&v14[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer] = v20;
  v66.receiver = v14;
  v66.super_class = v13;
  v22 = objc_msgSendSuper2(&v66, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v22 setClipsToBounds:1];
  [v22 addSubview:*&v22[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer]];

  *(v1 + v21) = v22;
  v23 = OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_artworkView;
  sub_1007433C4();
  *(v1 + v23) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24 = OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_detailsView;
  if (qword_100920338 != -1)
  {
    swift_once();
  }

  v25 = v62;
  v26 = sub_10000D0FC(v62, qword_10097DC98);
  (*(v57 + 16))(v10, v26, v25);
  v27 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  v28 = sub_10058E048(v10);
  v62 = v1;
  *(v1 + v24) = v28;
  v57 = OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_buttonDetailsView;
  if (qword_1009214E8 != -1)
  {
    swift_once();
  }

  v29 = v61;
  v30 = sub_10000D0FC(v61, qword_100981BF0);
  v31 = v63;
  v32 = v64;
  v33 = *(v64 + 16);
  v33(v63, v30, v29);
  v55 = v33;
  v52 = UIContentSizeCategoryExtraExtraExtraLarge;
  v34 = enum case for DirectionalTextAlignment.none(_:);
  v56 = v4;
  v35 = *(v4 + 104);
  v36 = v58;
  v35(v65, enum case for DirectionalTextAlignment.none(_:), v58);
  v54 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel());
  *&v54[qword_100941490] = UIContentSizeCategoryExtraExtraExtraLarge;
  v37 = v59;
  v33(v59, v31, v29);
  v38 = v36;
  v53 = *(v32 + 56);
  v53(v37, 0, 1, v29);
  v39 = v60;
  v35(v60, v34, v38);
  v40 = v52;
  v41 = sub_100745C74();
  v42 = v63;
  v55(v37, v63, v29);
  v53(v37, 0, 1, v29);
  v43 = v41;
  sub_100745BA4();
  sub_100745B84();
  [v43 setNumberOfLines:0];
  v44 = v56;
  v45 = v65;
  (*(v56 + 16))(v39, v65, v38);
  sub_100745BF4();

  (*(v44 + 8))(v45, v38);
  (*(v64 + 8))(v42, v29);
  v46 = v62;
  *(v62 + v57) = v43;
  v47 = OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_buttonDetailsTextAlignment;
  v48 = enum case for BreakoutDetails.TextAlignment.leading(_:);
  v49 = sub_100745374();
  (*(*(v49 - 8) + 104))(v46 + v47, v48, v49);
  v50 = OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_offerButton;
  v51 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v46 + v50) = sub_100154454(0);
  *(v46 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_pageTraits) = 0;
  *(v46 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_isBackgroundEffectViewHidden) = 1;
  sub_100754644();
  __break(1u);
}

uint64_t sub_1001489E8(void *a1)
{
  [a1 locationInView:v1];
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer];
  if (!*(*&v4[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer] + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents))
  {
    return 0;
  }

  v5 = v2;
  v6 = v3;
  type metadata accessor for VideoView();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    return 0;
  }

  v8 = &selRef_viewSafeAreaInsetsDidChange;
  [v7 frame];
  v26.x = v5;
  v26.y = v6;
  if (!CGRectContainsPoint(v28, v26))
  {
    return 0;
  }

  v9 = [v1 subviews];
  sub_100016C60(0, &qword_100922300);
  v10 = sub_1007532A4();

  if (v10 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = sub_100754574();
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (([v13 isHidden] & 1) == 0 && (objc_msgSend(v14, "isUserInteractionEnabled") & 1) != 0 && (objc_msgSend(v14, v8[501]), v27.x = v5, v27.y = v6, CGRectContainsPoint(v29, v27)))
      {
        v16 = v4;
        v17 = v4;
        v18 = sub_100753FC4();

        v4 = v16;
        v8 = &selRef_viewSafeAreaInsetsDidChange;
        if ((v18 & 1) == 0)
        {

          return 0;
        }
      }

      else
      {
      }

      ++v12;
      if (v15 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:

  v19 = *(*&v4[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer] + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
  if (!v19)
  {
    return 0;
  }

  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    return 0;
  }

  v21 = *(v20 + qword_10093CB70);
  if (!v21)
  {
    return 0;
  }

  v22 = v19;
  v23 = v21;
  v24 = sub_100743C24();

  return v24 & 1;
}

uint64_t sub_100148C84()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100148D0C()
{
  result = qword_100929920;
  if (!qword_100929920)
  {
    sub_1007447A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100929920);
  }

  return result;
}

uint64_t sub_100148D64()
{
  v0 = sub_100752E24();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100752E44();
  sub_100039C50(v4, qword_100929908);
  sub_10000D0FC(v4, qword_100929908);
  if (qword_100921EC8 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_1009832D0);
  (*(v1 + 16))(v3, v5, v0);
  return sub_100752E34();
}

uint64_t sub_100148EB8(id *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  [*a1 setActive:0];
  sub_10000C518(&qword_100929930);
  v6 = [a2 ams_saveAccount:v5 verifyCredentials:0];
  sub_100752DD4();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1001496A0;
  *(v7 + 24) = a3;
  v8 = sub_100016C60(0, &qword_100926D00);
  swift_retain_n();
  v10[3] = v8;
  v10[4] = &protocol witness table for OS_dispatch_queue;
  v10[0] = sub_100753774();
  sub_100752D64();

  return sub_10000C620(v10);
}

uint64_t sub_10014900C()
{
  v0 = sub_100752624();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ActionOutcome.performed(_:), v0, v2);
  sub_100752DB4();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1001490F8()
{
  if (qword_100920340 != -1)
  {
    swift_once();
  }

  v0 = sub_100752E44();
  sub_10000D0FC(v0, qword_100929908);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  swift_getErrorValue();
  v4[3] = v3;
  v1 = sub_10000D134(v4);
  (*(*(v3 - 8) + 16))(v1);
  sub_100752424();
  sub_1000277BC(v4);
  sub_100752D04();

  return sub_100752DA4();
}

uint64_t sub_1001492D0()
{
  if (qword_100920340 != -1)
  {
    swift_once();
  }

  v0 = sub_100752E44();
  sub_10000D0FC(v0, qword_100929908);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  swift_getErrorValue();
  v4[3] = v3;
  v1 = sub_10000D134(v4);
  (*(*(v3 - 8) + 16))(v1);
  sub_100752424();
  sub_1000277BC(v4);
  sub_100752D04();

  return sub_100752DA4();
}

uint64_t sub_1001494B0()
{
  sub_10000C518(&qword_100930CA0);
  v0 = sub_100752DE4();
  sub_100016C60(0, &qword_100939F50);
  sub_100752764();
  sub_100752D34();
  v1 = v7[0];
  sub_10000C518(&qword_100929928);
  v2 = [v7[0] ams_activeiTunesAccountForMediaType:AMSAccountMediaTypeProduction];
  sub_100752DC4();
  v3 = swift_allocObject();
  *(v3 + 16) = v7[0];
  *(v3 + 24) = v0;
  v4 = sub_100016C60(0, &qword_100926D00);
  swift_retain_n();
  v5 = v1;
  v7[3] = v4;
  v7[4] = &protocol witness table for OS_dispatch_queue;
  v7[0] = sub_100753774();
  sub_100752D64();

  sub_10000C620(v7);
  return v0;
}

uint64_t sub_100149650()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001496A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001496E8(void *a1)
{
  if (*v1 != *a1)
  {
    goto LABEL_16;
  }

  if ((sub_1007544C4() & 1) == 0)
  {
    goto LABEL_16;
  }

  type metadata accessor for BoolPreferencesDebugSetting();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    goto LABEL_16;
  }

  v3 = v2;
  v4 = *(v2 + 56) == *(v1 + 56) && *(v2 + 64) == *(v1 + 64);
  if (!v4 && (sub_100754754() & 1) == 0)
  {
    goto LABEL_16;
  }

  v5 = *(v3 + 80);
  v6 = *(v1 + 80);
  if (v5)
  {
    if (v6 && (*(v3 + 72) == *(v1 + 72) && v5 == v6 || (sub_100754754() & 1) != 0))
    {
      goto LABEL_14;
    }

LABEL_16:
    v7 = 0;
    return v7 & 1;
  }

  if (v6)
  {
    goto LABEL_16;
  }

LABEL_14:
  v7 = *(v3 + 88) ^ *(v1 + 88) ^ 1;
  return v7 & 1;
}

void sub_100149800()
{
  sub_1007544D4();
  sub_100753174();
  if (*(v0 + 80))
  {
    sub_100754854(1u);
    sub_100753174();
  }

  else
  {
    sub_100754854(0);
  }

  sub_100754854(*(v0 + 88));
}

uint64_t sub_10014988C()
{

  v1 = OBJC_IVAR____TtC22SubscribePageExtension27BoolPreferencesDebugSetting_key;
  v2 = sub_10000C518(&unk_100947360);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_100149920()
{
  sub_100016994(v0 + 16);

  v1 = OBJC_IVAR____TtC22SubscribePageExtension27BoolPreferencesDebugSetting_key;
  v2 = sub_10000C518(&unk_100947360);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BoolPreferencesDebugSetting()
{
  result = qword_100929960;
  if (!qword_100929960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100149A5C()
{
  sub_100149B0C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100149B0C()
{
  if (!qword_100929970)
  {
    v0 = sub_100752654();
    if (!v1)
    {
      atomic_store(v0, &qword_100929970);
    }
  }
}

uint64_t sub_100149B5C()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074A5B4();
  sub_100039C50(v4, qword_10097DCE0);
  v30 = sub_10000D0FC(v4, qword_10097DCE0);
  if (qword_100921290 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_1009814E8);
  v7 = *(v5 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v8(v3, v6, v5);
  v10 = enum case for FontSource.useCase(_:);
  v11 = v1 + 13;
  v29 = v1[13];
  v29(v3, enum case for FontSource.useCase(_:), v0);
  v28 = sub_100750B04();
  v40[3] = v28;
  v40[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v40);
  v38 = v0;
  v39 = &protocol witness table for FontSource;
  v12 = sub_10000D134(v37);
  v27 = v1[2];
  v27(v12, v3, v0);
  sub_100750B14();
  v13 = v1[1];
  v25 = v1 + 1;
  v26 = v13;
  v13(v3, v0);
  if (qword_100921298 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v5, qword_100981500);
  v22[0] = v8;
  v22[1] = v9;
  v8(v3, v14, v5);
  v15 = v29;
  v29(v3, v10, v0);
  v24 = v11;
  v16 = v28;
  v38 = v28;
  v39 = &protocol witness table for StaticDimension;
  sub_10000D134(v37);
  v23 = v10;
  v35 = v0;
  v36 = &protocol witness table for FontSource;
  v17 = sub_10000D134(v34);
  v18 = v27;
  v27(v17, v3, v0);
  sub_100750B14();
  v19 = v26;
  v26(v3, v0);
  (v22[0])(v3, v14, v5);
  v15(v3, v23, v0);
  v35 = v16;
  v36 = &protocol witness table for StaticDimension;
  sub_10000D134(v34);
  *(&v32 + 1) = v0;
  v33 = &protocol witness table for FontSource;
  v20 = sub_10000D134(&v31);
  v18(v20, v3, v0);
  sub_100750B14();
  v19(v3, v0);
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  return sub_10074A5A4();
}

id sub_10014A088(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *&v3[*a3];
  result = [v6 text];
  if (result)
  {
    v8 = result;
    v9 = sub_100753094();
    v11 = v10;

    if (!a2)
    {
      v14 = 0;
      goto LABEL_12;
    }

    if (v9 == a1 && v11 == a2)
    {

LABEL_16:
    }

    v13 = sub_100754754();

    if (v13)
    {
      goto LABEL_16;
    }
  }

  else if (!a2)
  {
    return result;
  }

  v14 = sub_100753064();
LABEL_12:

  [v6 setText:v14];

  return [v3 setNeedsLayout];
}

uint64_t sub_10014A1E4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v23 = sub_100750354();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074A5B4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074A5D4();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.receiver = v1;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, "layoutSubviews", v12);
  v15 = [v1 contentView];
  sub_100009D34();
  sub_1007477B4();

  if (qword_100920348 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v6, qword_10097DCE0);
  (*(v7 + 16))(v9, v16, v6);
  v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35PrivacyDefinitionCollectionViewCell_titleLabel];
  v28 = sub_100745C84();
  v29 = &protocol witness table for UILabel;
  v26 = &protocol witness table for UILabel;
  v27 = v17;
  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35PrivacyDefinitionCollectionViewCell_definitionLabel];
  v25 = v28;
  v24 = v18;
  v19 = v17;
  v20 = v18;
  sub_10074A5C4();
  sub_10074A594();
  (*(v3 + 8))(v5, v23);
  return (*(v11 + 8))(v14, v10);
}

uint64_t type metadata accessor for PrivacyDefinitionCollectionViewCell()
{
  result = qword_100929A70;
  if (!qword_100929A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10014A698()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_10014A738()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10074AB44();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v7 = OBJC_IVAR____TtC22SubscribePageExtension35PrivacyDefinitionCollectionViewCell_itemLayoutContext;
  v8 = sub_1007469A4();
  v9 = *(*(v8 - 8) + 56);
  v32 = v0;
  v9(&v0[v7], 1, 1, v8);
  if (qword_100921290 != -1)
  {
    swift_once();
  }

  v10 = sub_100750534();
  v11 = sub_10000D0FC(v10, qword_1009814E8);
  v12 = *(v10 - 8);
  v29 = *(v12 + 16);
  v29(v6, v11, v10);
  v28 = *(v12 + 56);
  v28(v6, 0, 1, v10);
  v13 = enum case for DirectionalTextAlignment.none(_:);
  v14 = *(v2 + 104);
  v14(v31, enum case for DirectionalTextAlignment.none(_:), v1);
  v15 = sub_100745C84();
  v27 = v1;
  v16 = v15;
  v17 = objc_allocWithZone(v15);
  *&v32[OBJC_IVAR____TtC22SubscribePageExtension35PrivacyDefinitionCollectionViewCell_titleLabel] = sub_100745C74();
  if (qword_100921298 != -1)
  {
    swift_once();
  }

  v18 = sub_10000D0FC(v10, qword_100981500);
  v29(v6, v18, v10);
  v28(v6, 0, 1, v10);
  v14(v31, v13, v27);
  v19 = objc_allocWithZone(v16);
  v20 = sub_100745C74();
  v21 = v32;
  *&v32[OBJC_IVAR____TtC22SubscribePageExtension35PrivacyDefinitionCollectionViewCell_definitionLabel] = v20;
  v33.receiver = v21;
  v33.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v33, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v23 = [v22 contentView];
  [v23 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v24 = [v22 contentView];
  [v24 addSubview:*&v22[OBJC_IVAR____TtC22SubscribePageExtension35PrivacyDefinitionCollectionViewCell_titleLabel]];

  v25 = [v22 contentView];
  [v25 addSubview:*&v22[OBJC_IVAR____TtC22SubscribePageExtension35PrivacyDefinitionCollectionViewCell_definitionLabel]];

  return v22;
}

uint64_t sub_10014AB84(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v106 = a2;
  v7 = sub_1007527A4();
  v117 = *(v7 - 8);
  v118 = v7;
  __chkstk_darwin(v7);
  v116 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v9 - 8);
  v115 = &v101 - v10;
  v11 = sub_10000C518(&unk_100925520);
  __chkstk_darwin(v11 - 8);
  v111 = &v101 - v12;
  v13 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v13 - 8);
  v110 = &v101 - v14;
  v109 = sub_10074C3E4();
  v107 = *(v109 - 8);
  __chkstk_darwin(v109);
  v108 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v16 - 8);
  v114 = &v101 - v17;
  v18 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v18 - 8);
  v105 = &v101 - v19;
  v20 = sub_10000C518(&unk_100925530);
  __chkstk_darwin(v20 - 8);
  v104 = &v101 - v21;
  v22 = sub_10000C518(&unk_1009259B0);
  __chkstk_darwin(v22 - 8);
  v103 = &v101 - v23;
  v24 = sub_10074D734();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v102 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v27 - 8);
  v121 = &v101 - v28;
  v29 = sub_100742814();
  v30 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_formattedDateView];
  sub_1000C94C4(v29);
  [v3 setNeedsLayout];
  v31 = sub_100742864();
  sub_1004EA260(v31, v32);
  v33 = sub_100742874();
  sub_1004EA26C(v33, v34);
  v35 = sub_100742884();
  sub_1004EA278(v35, v36);
  v37 = sub_1007427F4();
  sub_1004EA284(v37, v38);
  type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
  v119 = a3;
  sub_100752754();
  v39 = v123;
  v40 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
  v41 = *(v30 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  v42 = v41;
  sub_1000CAC84(v39);
  v43 = *(v30 + v40);
  *(v30 + v40) = v39;
  v44 = v39;

  sub_1000CADE8(v41);
  sub_100742894();
  v45 = sub_10074EF64();

  sub_1004EA734(v45);
  v112 = v4;
  v113 = a1;
  v46 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupView];
  v120 = sub_100742894();
  v47 = *(v25 + 104);
  v47(v102, enum case for OfferButtonPresenterViewAlignment.right(_:), v24);
  v48 = v103;
  v47(v103, enum case for OfferButtonPresenterViewAlignment.left(_:), v24);
  (*(v25 + 56))(v48, 0, 1, v24);
  sub_10014BFC8(&unk_100925550, &type metadata accessor for OfferButtonPresenterViewAlignment);
  v49 = v121;
  sub_10074A9C4();
  v50 = sub_10000C518(&unk_10092EEA0);
  (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
  if (v106)
  {
    v51 = enum case for OfferStyle.infer(_:);
    v52 = sub_100742E24();
    v53 = *(v52 - 8);
    v54 = v104;
    (*(v53 + 104))(v104, v51, v52);
    (*(v53 + 56))(v54, 0, 1, v52);
    v55 = enum case for OfferEnvironment.light(_:);
    v56 = sub_100745E94();
    v57 = *(v56 - 8);
    v58 = v105;
    (*(v57 + 104))(v105, v55, v56);
    (*(v57 + 56))(v58, 0, 1, v56);
  }

  else
  {
    v59 = sub_100742E24();
    v54 = v104;
    (*(*(v59 - 8) + 56))(v104, 1, 1, v59);
    v60 = sub_100745E94();
    v58 = v105;
    (*(*(v60 - 8) + 56))(v105, 1, 1, v60);
  }

  v61 = v107;
  v62 = v109;
  (*(v107 + 104))(v108, enum case for OfferButtonSubtitlePosition.below(_:), v109);
  (*(v61 + 56))(v110, 1, 1, v62);
  sub_10014BFC8(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition);
  v63 = v114;
  sub_10074A9C4();
  v64 = sub_10000C518(&unk_100925560);
  (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
  v65 = sub_10074F8B4();
  v66 = v111;
  (*(*(v65 - 8) + 56))(v111, 1, 1, v65);
  v67 = v119;
  sub_100656038(v120, v46, v121, v119, 0, 0, v54, v58, v66, v63);
  sub_10000C8CC(v66, &unk_100925520);
  v46[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 1;
  sub_1001CE71C();
  [v46 setNeedsLayout];
  v68 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel;
  v69 = *&v46[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel];
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

  v72 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel;
  v73 = *&v46[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel];
  if (v73)
  {
    if (([v73 isHidden] & 1) == 0)
    {
      v74 = *&v46[v72];
      if (v74)
      {
        if ([v74 hasContent])
        {
          v75 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel;
          [*&v46[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel] setHidden:1];
          [*&v46[v75] setText:0];
        }
      }
    }
  }

  v76 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel;
  if ([*&v46[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel] isHidden] & 1) == 0 && (objc_msgSend(*&v46[v76], "hasContent"))
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

    v79 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel;
    [*&v46[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel] setHidden:1];
    [*&v46[v79] setText:0];
  }

  sub_10000C8CC(v63, &unk_100925990);
  sub_10000C8CC(v58, &unk_1009259A0);
  sub_10000C8CC(v54, &unk_100925530);
  sub_10000C8CC(v121, &unk_100925540);
  v80 = *&v46[v72];
  if (v80)
  {
    v81 = qword_100920F68;
    v82 = v80;
    if (v81 != -1)
    {
      swift_once();
    }

    v83 = sub_100750534();
    v84 = sub_10000D0FC(v83, qword_100980B88);
    v85 = *(v83 - 8);
    (*(v85 + 16))(v70, v84, v83);
    (*(v85 + 56))(v70, 0, 1, v83);
    sub_100745BA4();
  }

  v86 = *&v46[v68];
  if (v86)
  {
    v87 = qword_100920F80;
    v88 = v86;
    if (v87 != -1)
    {
      swift_once();
    }

    v89 = sub_100750534();
    v90 = sub_10000D0FC(v89, qword_100980BD0);
    v91 = *(v89 - 8);
    (*(v91 + 16))(v70, v90, v89);
    (*(v91 + 56))(v70, 0, 1, v89);
    sub_100745BA4();
  }

  sub_10074B0C4();
  sub_100752764();
  sub_100752D34();
  v92 = v123;

  v93 = sub_100742834();
  type metadata accessor for NotifyMeButtonPresenter();
  v94 = swift_allocObject();
  v95 = v94 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view;
  *(v94 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v94 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer) = 0;
  *(v94 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  swift_beginAccess();
  *(v95 + 8) = &off_100878FC0;
  swift_unknownObjectWeakAssign();
  *(v94 + 16) = v92;
  *(v94 + 24) = v93;

  v96 = v116;
  v97 = v118;
  sub_100752D34();
  (*(v117 + 32))(v94 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_metricsPipeline, v96, v97);
  *(v94 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_objectGraph) = v67;
  sub_100744AC4();

  sub_100752D34();
  *(v94 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_bag) = v122;
  sub_1001D0C08();
  sub_1001D1314();
  v98 = [objc_opt_self() defaultCenter];

  v99 = sub_10074B034();
  [v98 addObserver:v94 selector:"userNotificationsDidChangeNotification:" name:v99 object:0];

  sub_1004EA870(v94);
}

uint64_t sub_10014BABC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10000C518(&unk_100923210);
  sub_1007526C4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000C8CC(v6, &unk_100923960);
  }

  sub_1003C0E00(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

void sub_10014BC00(uint64_t a1, uint64_t a2)
{
  v5 = sub_10074F314();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10074F284();
  v22 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100747064();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && a2)
  {
    v13 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupView);
    v14 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
    swift_beginAccess();
    (*(v10 + 16))(v12, v13 + v14, v9);
    v21[1] = a2;

    sub_100746F34();
    (*(v10 + 8))(v12, v9);
    sub_10074F294();
    sub_10074F254();
    v22 = *(v22 + 8);
    (v22)(v8, v6);
    sub_10074F374();
    v15 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
    v16 = *(v13 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
    sub_10074F324();
    sub_100743364();
    [v16 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_10000D198();
      sub_100753E34();
    }

    sub_100743224();

    v17 = *(v13 + v15);
    sub_10074F294();
    v18 = sub_10074F254();
    (v22)(v8, v6);
    [v17 setContentMode:v18];

    v19 = *(v13 + v15);
    sub_1007433C4();
    sub_10014BFC8(&qword_100925570, &type metadata accessor for ArtworkView);
    v20 = v19;
    sub_100744204();
  }
}

uint64_t sub_10014BFC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10014C010()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100748494();
  sub_100039C50(v4, qword_10097DD00);
  sub_10000D0FC(v4, qword_10097DD00);
  if (qword_100921248 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_100981410);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v16[3] = sub_100750B04();
  v16[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v16);
  v14 = v0;
  v15 = &protocol witness table for FontSource;
  v7 = sub_10000D134(v13);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  (*(v1 + 8))(v3, v0);
  v14 = &type metadata for Double;
  v15 = &protocol witness table for Double;
  v13[0] = 0;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9[4] = &type metadata for Double;
  v9[5] = &protocol witness table for Double;
  v9[1] = 0;
  return sub_100748484();
}

id sub_10014C36C()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100933290);
  __chkstk_darwin(v2 - 8);
  v4 = &v14[-v3];
  v5 = sub_10000C518(&unk_1009332A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyFooterCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_10014CB74(&v1[v9], v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000C8CC(v4, &unk_100933290);
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension31PrivacyFooterCollectionViewCell_bodyLabel] setAttributedText:0];
    return [v1 setNeedsLayout];
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_1007455C4();
    sub_1007455B4();
    v11 = sub_100743EA4();
    v12 = sub_1001D3738(v11, sub_1000E12F0);

    v13 = sub_100743E94();
    sub_10004DF04(v13, 0, v12);

    [v1 setNeedsLayout];
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_10014C600()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v20[0] = sub_100750354();
  v3 = *(v20[0] - 8);
  __chkstk_darwin(v20[0]);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100748494();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007484B4();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v1;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "layoutSubviews", v12);
  v15 = [v1 contentView];
  sub_100016C60(0, &qword_100922300);
  sub_1007477B4();

  if (qword_100920350 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v6, qword_10097DD00);
  (*(v7 + 16))(v9, v16, v6);
  v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31PrivacyFooterCollectionViewCell_bodyLabel];
  v20[4] = type metadata accessor for DynamicTypeLinkedLabel();
  v20[5] = &protocol witness table for UIView;
  v20[1] = v17;
  v18 = v17;
  sub_1007484A4();
  sub_100748474();
  (*(v3 + 8))(v5, v20[0]);
  return (*(v11 + 8))(v14, v10);
}

uint64_t type metadata accessor for PrivacyFooterCollectionViewCell()
{
  result = qword_100929AB0;
  if (!qword_100929AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10014CA34()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    sub_10014CB10();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10014CB10()
{
  if (!qword_100929AC0)
  {
    sub_10000C724(&unk_1009332A0);
    v0 = sub_100754284();
    if (!v1)
    {
      atomic_store(v0, &qword_100929AC0);
    }
  }
}

uint64_t sub_10014CB74(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100933290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_10014CBE4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v35 = sub_10074AB44();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100752AC4();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100750534();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyFooterCollectionViewCell_itemLayoutContext;
  v14 = sub_1007469A4();
  (*(*(v14 - 8) + 56))(&v1[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyFooterCollectionViewCell_bodyText;
  v16 = sub_10000C518(&unk_1009332A0);
  (*(*(v16 - 8) + 56))(&v1[v15], 1, 1, v16);
  if (qword_100921248 != -1)
  {
    swift_once();
  }

  v17 = sub_10000D0FC(v9, qword_100981410);
  (*(v10 + 16))(v12, v17, v9);
  v18 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension31PrivacyFooterCollectionViewCell_bodyLabel] = sub_10004DA8C(v12, 0, 0);
  v38.receiver = v1;
  v38.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v38, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = [v19 contentView];
  [v20 setClipsToBounds:0];

  v21 = [v19 contentView];
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v22 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyFooterCollectionViewCell_bodyLabel;
  v23 = *&v19[OBJC_IVAR____TtC22SubscribePageExtension31PrivacyFooterCollectionViewCell_bodyLabel];
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  v24 = v23;
  sub_100752A74();
  sub_10000C8CC(v36, &unk_100923520);
  sub_10000C8CC(v37, &unk_100923520);
  sub_100753C74();

  (*(v6 + 8))(v8, v34);
  v25 = *&v19[v22];
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.leading(_:), v35);
  v26 = v25;
  sub_100745BF4();

  v27 = *&v19[v22];
  sub_100016C60(0, &qword_100923500);
  v28 = v27;
  v29 = sub_100753DF4();
  v30 = *&v28[qword_100924048];
  *&v28[qword_100924048] = v29;
  v31 = v29;
  if ((sub_100753FC4() & 1) == 0)
  {
    sub_10004E2D4();
  }

  v32 = [v19 contentView];
  [v32 addSubview:*&v19[v22]];

  return v19;
}

id sub_10014D0DC(void *a1)
{
  v2 = [objc_allocWithZone(CAGradientLayer) init];
  sub_10000C518(&unk_1009259C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007A6580;
  v4 = [a1 colorWithAlphaComponent:0.0];
  v5 = [v4 CGColor];

  type metadata accessor for CGColor(0);
  v7 = v6;
  *(v3 + 56) = v6;
  *(v3 + 32) = v5;
  v8 = [a1 CGColor];
  *(v3 + 88) = v7;
  *(v3 + 64) = v8;
  isa = sub_100753294().super.isa;

  [v2 setColors:isa];

  sub_10000C518(&unk_1009231A0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007A7210;
  sub_10014D2B8();
  *(v10 + 32) = sub_100753FA4(0);
  *(v10 + 40) = sub_100753F94(0.8);
  v11 = sub_100753294().super.isa;

  [v2 setLocations:v11];

  [v2 setStartPoint:{0.0, 0.5}];
  [v2 setEndPoint:{1.0, 0.5}];
  return v2;
}

unint64_t sub_10014D2B8()
{
  result = qword_10092BE20;
  if (!qword_10092BE20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10092BE20);
  }

  return result;
}

id sub_10014D304(void *a1, char a2)
{
  v4 = [objc_allocWithZone(CAGradientLayer) init];
  sub_10000C518(&unk_1009259C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007A6580;
  v6 = 0.0;
  v7 = [a1 colorWithAlphaComponent:0.0];
  v8 = [v7 CGColor];

  type metadata accessor for CGColor(0);
  v10 = v9;
  *(v5 + 56) = v9;
  *(v5 + 32) = v8;
  v11 = [a1 CGColor];
  *(v5 + 88) = v10;
  *(v5 + 64) = v11;
  isa = sub_100753294().super.isa;

  [v4 setColors:isa];

  sub_10000C518(&unk_1009231A0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1007A7210;
  sub_10014D2B8();
  *(v13 + 32) = sub_100753FA4(0);
  *(v13 + 40) = sub_100753F94(0.8);
  v14 = sub_100753294().super.isa;

  [v4 setLocations:v14];

  if (a2)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  if ((a2 & 1) == 0)
  {
    v6 = 1.0;
  }

  [v4 setStartPoint:{v15, 0.5}];
  [v4 setEndPoint:{v6, 0.5}];
  return v4;
}

void *sub_10014D504()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_avatarShowcase);
  v2 = v1;
  return v1;
}

void (*sub_10014D53C(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_avatarShowcase);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_10014D594;
}

void sub_10014D594(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_10024BAF8(v2);
  }

  else
  {
    sub_10024BAF8(*a1);
  }
}

uint64_t sub_10014D64C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10014D820(&qword_100929AD0, type metadata accessor for MediumLockupCollectionViewCell);

  return AvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)(a1, a2, ObjectType, v5);
}

uint64_t sub_10014D708(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = sub_10014D820(&qword_100929AD0, type metadata accessor for MediumLockupCollectionViewCell);

  return a3(ObjectType, v4);
}

uint64_t sub_10014D820(unint64_t *a1, void (*a2)(uint64_t))
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

UIColor sub_10014D868()
{
  sub_10000D198();
  v0 = [objc_allocWithZone(UIColor) initWithRed:0.929411765 green:0.964705882 blue:1.0 alpha:1.0];
  v1.super.isa = [objc_allocWithZone(UIColor) initWithRed:0.11372549 green:0.137254902 blue:0.176470588 alpha:1.0];
  v2.super.isa = v0;
  result.super.isa = sub_100753EC4(v2, v1).super.isa;
  qword_10097DD28 = result.super.isa;
  return result;
}

UIColor sub_10014D90C()
{
  sub_10000D198();
  v0 = objc_opt_self();
  v1 = [v0 systemBlueColor];
  v2 = [v1 colorWithAlphaComponent:0.07];

  v3 = [v0 whiteColor];
  v4 = [v3 colorWithAlphaComponent:0.05];

  v5.super.isa = v2;
  v6.super.isa = v4;
  result.super.isa = sub_100753EC4(v5, v6).super.isa;
  qword_10097DD30 = result.super.isa;
  return result;
}

uint64_t sub_10014D9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100744E64();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100751604();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a2, v6, v12);
  v15 = (*(v7 + 88))(v9, v6);
  if (v15 != enum case for ItemBackground.ad(_:))
  {
    if (v15 != enum case for ItemBackground.insetAd(_:))
    {
      if (v15 == enum case for ItemBackground.clearAdWithSeparator(_:))
      {
        (*(v11 + 56))(a3, 1, 1, v10);
        return (*(v7 + 8))(v9, v6);
      }

      goto LABEL_12;
    }

LABEL_5:
    (*(v7 + 8))(v9, v6);
    sub_1007515F4();
    if (qword_100920358 != -1)
    {
      swift_once();
    }

    v17 = qword_10097DD28;
    sub_1007515C4();
    sub_1007515C4();
    if (qword_100920360 != -1)
    {
      swift_once();
    }

    v18 = qword_10097DD30;
    sub_100751584();
    sub_100751594();
    sub_1007515A4();
    goto LABEL_15;
  }

  sub_10074F594();
  if (v16 > 1.0)
  {
    goto LABEL_5;
  }

LABEL_12:
  sub_1007515F4();
  if (qword_100920358 != -1)
  {
    swift_once();
  }

  v20 = qword_10097DD28;
  sub_1007515C4();
  (*(v7 + 8))(v9, v6);
LABEL_15:
  sub_10014DEA0(a1, a2);
  sub_1007515D4();
  (*(v11 + 32))(a3, v14, v10);
  return (*(v11 + 56))(a3, 0, 1, v10);
}

uint64_t sub_10014DD74()
{
  sub_1007515F4();
  if (qword_100920358 != -1)
  {
    swift_once();
  }

  v0 = qword_10097DD28;
  sub_1007515C4();
  sub_1007515C4();
  if (qword_100920360 != -1)
  {
    swift_once();
  }

  v1 = qword_10097DD30;
  sub_100751584();
  sub_100751594();
  sub_1007515A4();
  return sub_1007515D4();
}

double sub_10014DEA0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100744E64();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074F594();
  if (v7 <= 1.0)
  {
    (*(v4 + 16))(v6, a2, v3);
    if ((*(v4 + 88))(v6, v3) == enum case for ItemBackground.insetAd(_:))
    {
      return -10.0;
    }

    else
    {
      sub_10074F5B4();
      v9 = v10 * -0.5;
      sub_10074F664();
      sub_10074F5B4();
      sub_10074F664();
      (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    sub_10074F5B4();
    v9 = v8 * -0.5;
    sub_10074F634();
    sub_10074F5B4();
    sub_10074F634();
  }

  return v9;
}

double sub_10014E048@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a3;
  v7 = sub_100747C14();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  if (sub_100753094() == a1 && v10 == a2)
  {

    goto LABEL_10;
  }

  v12 = sub_100754754();

  if (v12)
  {
LABEL_10:
    *(a4 + 24) = sub_10000C518(&qword_100929BD0);
    *(a4 + 32) = sub_100150440(&qword_100929BD8, &qword_100929BD0);
    v21[1] = sub_10000D134(a4);
    v21[0] = sub_100753094();
    type metadata accessor for TitleHeaderView(0);
    sub_1007539D4();
    v14 = swift_allocObject();
    swift_weakInit();
    (*(v8 + 16))(v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v7);
    v15 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    (*(v8 + 32))(v16 + v15, v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    sub_10074D744();
    return result;
  }

  sub_100748754();
  if (sub_100748734() == a1 && v13 == a2)
  {
    goto LABEL_8;
  }

  v18 = sub_100754754();

  if (v18)
  {
    goto LABEL_12;
  }

  if (sub_100748744() == a1 && v19 == a2)
  {
LABEL_8:
  }

  else
  {
    v20 = sub_100754754();

    if ((v20 & 1) == 0)
    {
      *(a4 + 32) = 0;
      result = 0.0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }
  }

LABEL_12:
  *(a4 + 24) = sub_10000C518(&qword_100929BC0);
  *(a4 + 32) = sub_100150440(&qword_100929BC8, &qword_100929BC0);
  sub_10000D134(a4);
  sub_100748724();
  return result;
}

uint64_t sub_10014E370(uint64_t a1)
{
  v3 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074F704();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_10092E450);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v62 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v61 = &v56 - v14;
  __chkstk_darwin(v15);
  v17 = &v56 - v16;
  v19 = __chkstk_darwin(v18);
  v21 = &v56 - v20;
  if (((*(v1 + 24))(v19) & 1) == 0)
  {
    return 0;
  }

  v59 = v5;
  v60 = a1;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v22 = *(v11 + 8);
  v22(v21, v10);
  v23 = v65;
  if (!v65)
  {
    return 0;
  }

  v24 = HIBYTE(v65) & 0xF;
  if ((v65 & 0x2000000000000000) == 0)
  {
    v24 = v64 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

    return 0;
  }

  v58 = v64;
  sub_100747BC4();
  sub_10074FC24();
  sub_10074F674();
  v26 = v25;
  v28 = v27;
  (*(v7 + 8))(v9, v6);
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v22(v17, v10);
  v29 = v64;
  if (v64)
  {
    sub_10074ECB4();
    v31 = v30;
    v32 = sub_100747B94();
    if (qword_1009202A0 != -1)
    {
      swift_once();
    }

    v33 = qword_100928AB8;
    if (v31)
    {
      v34 = sub_100753064();
    }

    else
    {
      v34 = 0;
    }

    [v33 setTitle:v34 forState:0];

    [v33 setImage:0 forState:0];
    v38 = [v33 titleLabel];
    v39 = v38;
    if (v38)
    {
      v56 = v29;
      v57 = v31;
      v40 = v38;
      v41 = [v40 font];
      if (v41)
      {
        v42 = v41;
        v43 = [v41 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v32];
      }

      else
      {
        v43 = 0;
      }

      [v40 setFont:v43];
    }

    [v33 sizeThatFits:{v26, v28}];
    v45 = v44;
    v37 = v46;

    v36 = v45 + 0.0;
    [v33 setTitle:0 forState:0];
    [v33 setImage:0 forState:0];
  }

  else
  {
    v36 = 0.0;
    v37 = 0.0;
  }

  v47 = v61;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v22(v47, v10);
  v60 = v64;
  v57 = type metadata accessor for TitleHeaderView(0);
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v22(v47, v10);
  v49 = v64;
  v48 = v65;
  v50 = v62;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v22(v50, v10);
  v51 = v63;
  v52 = sub_10014FF78();
  v53 = v59;
  sub_10014EA5C(v59);
  v54 = sub_100747BA4();
  swift_getObjectType();
  LOBYTE(v55) = 1;
  sub_1001072B0(v49, v48, v51, v58, v23, v60, 0, 0, v26, v28, v36, v37, 0, 0, v52, v53, v55, v54);
  swift_unknownObjectRelease();

  sub_1001503E0(v53, type metadata accessor for TitleHeaderView.Style);
  return *&v26;
}

uint64_t sub_10014EA5C@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v95 = sub_100747144();
  v89 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v76 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000C518(&qword_100928A88);
  __chkstk_darwin(v2 - 8);
  v94 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v92 = &v76 - v5;
  v6 = sub_10000C518(&unk_100940600);
  __chkstk_darwin(v6 - 8);
  v91 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v84 = &v76 - v9;
  v79 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v83 = *(v79 - 8);
  __chkstk_darwin(v79);
  v87 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v86 = &v76 - v12;
  __chkstk_darwin(v13);
  v85 = &v76 - v14;
  __chkstk_darwin(v15);
  v90 = (&v76 - v16);
  v17 = sub_10000C518(&unk_100928A90);
  __chkstk_darwin(v17 - 8);
  v78 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v77 = &v76 - v20;
  __chkstk_darwin(v21);
  v23 = &v76 - v22;
  __chkstk_darwin(v24);
  v26 = &v76 - v25;
  __chkstk_darwin(v27);
  v96 = &v76 - v28;
  v29 = sub_10000C518(&unk_10092E450);
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v76 - v34;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v36 = *(v30 + 8);
  v36(v35, v29);
  v37 = v98;
  if (v98)
  {
  }

  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v36(v32, v29);
  v38 = v98;
  if (v98)
  {
    v39 = v97;

    v40 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v40 = v39 & 0xFFFFFFFFFFFFLL;
    }

    v41 = v40 != 0;
  }

  else
  {
    v41 = 0;
  }

  v42 = sub_1007439C4();
  v43 = *(v42 - 8);
  (*(v43 + 56))(v96, 1, 1, v42);
  v44 = sub_100747134();
  v80 = *(v44 - 8);
  v81 = v44;
  (*(v80 + 56))(v92, 1, 1);
  v45 = (v43 + 48);
  v82 = v41;
  if (!v37)
  {
    if (v41)
    {
      v47 = v77;
      sub_100016B4C(v96, v77, &unk_100928A90);
      if ((*v45)(v47, 1, v42) == 1)
      {
        sub_10000C8CC(v47, &unk_100928A90);
        v48 = 0;
      }

      else
      {
        v48 = sub_100743964();
        (*(v43 + 8))(v47, v42);
      }

      v52 = v84;
      v53 = v79;
      sub_1003AFADC(v48, v90);

      v54 = v85;
      if (qword_100920B00 != -1)
      {
        swift_once();
      }

      v55 = qword_10097FFB8;
      goto LABEL_31;
    }

    v50 = v78;
    sub_100016B4C(v96, v78, &unk_100928A90);
    if ((*v45)(v50, 1, v42) == 1)
    {
      sub_10000C8CC(v50, &unk_100928A90);
      v51 = 0;
    }

    else
    {
      v51 = sub_100743964();
      (*(v43 + 8))(v50, v42);
    }

    v52 = v84;
    v53 = v79;
    sub_1003AFADC(v51, v90);

    v54 = v85;
    if (qword_100920AE8 != -1)
    {
      swift_once();
    }

    v56 = 1;
    v57 = qword_10097FF70;
LABEL_38:
    v59 = v54;
    goto LABEL_39;
  }

  if (!v41)
  {
    sub_100016B4C(v96, v23, &unk_100928A90);
    if ((*v45)(v23, 1, v42) == 1)
    {
      sub_10000C8CC(v23, &unk_100928A90);
      v49 = 0;
    }

    else
    {
      v49 = sub_100743964();
      (*(v43 + 8))(v23, v42);
    }

    v52 = v84;
    v53 = v79;
    sub_1003AFADC(v49, v90);

    v54 = v85;
    if (qword_100920AF0 != -1)
    {
      swift_once();
    }

    v56 = 1;
    v57 = qword_10097FF88;
    goto LABEL_38;
  }

  sub_100016B4C(v96, v26, &unk_100928A90);
  if ((*v45)(v26, 1, v42) == 1)
  {
    sub_10000C8CC(v26, &unk_100928A90);
    v46 = 0;
  }

  else
  {
    v46 = sub_100743964();
    (*(v43 + 8))(v26, v42);
  }

  v52 = v84;
  v53 = v79;
  sub_1003AFADC(v46, v90);

  v54 = v85;
  if (qword_100920B08 != -1)
  {
    swift_once();
  }

  v55 = qword_10097FFD0;
LABEL_31:
  v58 = sub_10000D0FC(v53, v55);
  sub_10015027C(v58, v54);
  if (qword_100920AE0 != -1)
  {
    swift_once();
  }

  v56 = 0;
  v57 = qword_10097FF58;
  v59 = v52;
LABEL_39:
  v60 = sub_10000D0FC(v53, v57);
  sub_10015027C(v60, v59);
  (*(v83 + 56))(v52, v56, 1, v53);
  v61 = v90;
  v62 = v86;
  sub_10015027C(v90, v86);
  v63 = v87;
  sub_10015027C(v54, v87);
  sub_100016B4C(v52, v91, &unk_100940600);
  v64 = v92;
  sub_100016B4C(v92, v94, &qword_100928A88);
  v65 = v89;
  (*(v89 + 104))(v93, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v95);
  sub_10000D198();
  v66 = sub_100753DB4();
  sub_10000C8CC(v64, &qword_100928A88);
  sub_10000C8CC(v52, &unk_100940600);
  sub_1001503E0(v54, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1001503E0(v61, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10000C8CC(v96, &unk_100928A90);
  v67 = type metadata accessor for TitleHeaderView.Style(0);
  v68 = v67[8];
  v69 = v88;
  sub_1001502E0(v62, v88);
  sub_1001502E0(v63, v69 + v67[5]);
  sub_100150344(v91, v69 + v67[6]);
  *(v69 + v67[7]) = 0;
  *(v69 + v68) = 0;
  v70 = v82;
  *(v69 + v67[9]) = v82;
  *(v69 + v67[14]) = 0x4030000000000000;
  *(v69 + v67[12]) = 0;
  *(v69 + v67[13]) = v66;
  v71 = v94;
  (*(v65 + 32))(v69 + v67[11], v93, v95);
  v73 = v80;
  v72 = v81;
  if ((*(v80 + 48))(v71, 1, v81) != 1)
  {
    return (*(v73 + 32))(v69 + v67[10], v71, v72);
  }

  sub_10000C8CC(v71, &qword_100928A88);
  if (v70)
  {
    v74 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
  }

  else
  {
    v74 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
  }

  return (*(v73 + 104))(v69 + v67[10], *v74, v72);
}

uint64_t sub_10014F650(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10014F6C4(a1, a6);
  }

  return result;
}

uint64_t sub_10014F6C4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v6 - 8);
  v56 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_100747C14();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v8;
  __chkstk_darwin(v9);
  v50 = &v47 - v10;
  v11 = sub_10074F284();
  v47 = *(v11 - 8);
  v48 = v11;
  __chkstk_darwin(v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&unk_10092E450);
  v58 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  v57 = a2;
  sub_100747C04();
  sub_1007442C4();
  v54 = v3;
  sub_100752764();
  sub_100752D34();
  v59 = v61;
  swift_getKeyPath();
  sub_1007525B4();

  v17 = v61;
  v18 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtwork;
  v19 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtwork);

  sub_100100BC8(v17);
  *(a1 + v18) = v17;

  sub_100100BDC(v19);

  swift_getKeyPath();
  v60 = v14;
  sub_1007525B4();

  v20 = v61;
  v21 = v62;
  v22 = (a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowText);
  v24 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowText);
  v23 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowText + 8);

  sub_1001005A8(v20, v21);
  *v22 = v20;
  v22[1] = v21;

  sub_10010063C(v24, v23);

  if (*(a1 + v18))
  {
    v25 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtworkView);
    if (v25)
    {

      v26 = v25;
      sub_10074F2A4();
      sub_10074F294();
      sub_10074F254();
      (*(v47 + 8))(v13, v48);
      sub_10074F374();
      sub_1007433C4();
      sub_10004D658();
      sub_100744204();
    }
  }

  swift_getKeyPath();
  sub_1007525B4();

  v27 = v61;
  v28 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtwork;
  v29 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtwork);

  sub_100100D68(v27);
  *(a1 + v28) = v27;

  sub_100100E7C(v29);

  v30 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel);
  swift_getKeyPath();
  sub_1007525B4();

  if (v62)
  {
    v31 = sub_100753064();
  }

  else
  {
    v31 = 0;
  }

  v49 = v30;
  [v30 setText:v31];

  if (*(a1 + v28))
  {
    v32 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtworkView);
    if (v32)
    {

      v33 = v32;
      sub_10074F2A4();
      sub_10074F294();
      sub_10074F254();
      (*(v47 + 8))(v13, v48);
      sub_10074F374();
      sub_1007433C4();
      sub_10004D658();
      sub_100744204();
    }
  }

  v34 = v53;
  v35 = *(v53 + 16);
  v36 = v50;
  v37 = v55;
  v35(v50, v57, v55);
  v38 = v51;
  v35(v51, v36, v37);
  v39 = (*(v34 + 80) + 24) & ~*(v34 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v54;
  (*(v34 + 32))(v40 + v39, v36, v37);
  v41 = (a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabelNumberOfLines);
  *v41 = sub_100150218;
  v41[1] = v40;

  [v49 setNumberOfLines:sub_10014FF78()];

  (*(v34 + 8))(v38, v37);
  v42 = v56;
  sub_10014EA5C(v56);
  (*((swift_isaMask & *a1) + 0x1C8))(v42);
  v43 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_detailLabel);
  if (v43)
  {
    swift_getKeyPath();
    v44 = v43;
    sub_1007525B4();

    if (v62)
    {
      v45 = sub_100753064();
    }

    else
    {
      v45 = 0;
    }

    [v44 setText:v45];
  }

  [a1 setNeedsLayout];

  return (*(v58 + 8))(v16, v60);
}

uint64_t sub_10014FF0C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10014FF78()
{
  v0 = sub_10000C518(&unk_10092E450);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - v2;
  v4 = sub_100747B94();
  v5 = sub_100753804();

  if (v5)
  {
    return 0;
  }

  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v1 + 8))(v3, v0);
  if (!v7[1])
  {
    return 2;
  }

  return 1;
}

void *sub_1001500B8(uint64_t a1)
{
  v1 = COERCE_DOUBLE(sub_10014E370(a1));
  if (v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = v1;
  v5 = v2;
  v6 = v2 >= v1 ? v1 : v2;
  if (v6 <= 0.0)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = objc_opt_self();
  v8 = [v7 absoluteDimension:v4];
  v9 = [v7 absoluteDimension:v5];
  v10 = [objc_opt_self() sizeWithWidthDimension:v8 heightDimension:v9];

  v11 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v10 elementKind:UICollectionElementKindSectionHeader alignment:1];
  sub_10000C518(&unk_1009231A0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1007A5CF0;
  *(v12 + 32) = v11;

  return v12;
}

uint64_t sub_100150218()
{
  sub_100747C14();

  return sub_10014FF78();
}

uint64_t sub_10015027C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001502E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100150344(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100940600);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001503B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074E9D4();
  *a1 = result;
  return result;
}

uint64_t sub_1001503E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100150440(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000C724(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100150494()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001504CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_100747C14() - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_10014F650(a1, a2, a3, a4, v10, v11);
}

uint64_t type metadata accessor for DynamicTypeLinkedTextView()
{
  result = qword_100929BF0;
  if (!qword_100929BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100150610(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_100754664();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = sub_100754574();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_100150734@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v14 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    v12 = a3;
    v5 = (a2 + 72);
    while (1)
    {
      v6 = *(v5 - 5);
      v7 = *(v5 - 4);
      v8 = *(v5 - 3);
      v9 = *(v5 - 2);
      v10 = *(v5 - 1);
      v11 = *v5;
      v13[0] = v6;
      v13[1] = v7;
      v13[2] = v8;
      v13[3] = v9;
      v13[4] = v10;
      v13[5] = v11;

      result = v14(v13);
      if (v3)
      {
        break;
      }

      if (result)
      {
        goto LABEL_7;
      }

      v5 += 6;

      if (!--v4)
      {
        v6 = 0;
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
LABEL_7:
        a3 = v12;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
LABEL_9:
    *a3 = v6;
    a3[1] = v7;
    a3[2] = v8;
    a3[3] = v9;
    a3[4] = v10;
    a3[5] = v11;
  }

  return result;
}

void *sub_100150880(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_100754574();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_100150994(char *a1)
{
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  sub_100748104();
  v9 = sub_100748114();
  v9();
  (*(v3 + 16))(v5, a1, v2);
  v10 = sub_100748114();
  v11 = v10(v5);
  (v9)(v11);
  sub_1001531B4(&qword_100929CC8, &type metadata accessor for DirectionalTextAlignment);
  v12 = sub_100753014();
  v13 = *(v3 + 8);
  v13(v5, v2);
  if ((v12 & 1) == 0)
  {
    sub_100150D10();
  }

  v13(a1, v2);
  return (v13)(v8, v2);
}

id sub_100150B9C(void *a1)
{
  v3.receiver = a1;
  v3.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v3, "textColor");

  return v1;
}

void sub_100150BF4(void *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v15.receiver = a1;
  v15.super_class = ObjectType;
  v6 = a1;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v15, "textColor");
  v14.receiver = v6;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "setTextColor:", v7);
  v13.receiver = v6;
  v13.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v13, "textColor");
  if (v9)
  {
    v10 = v9;
    if (v8)
    {
      sub_100016C60(0, &qword_100923500);
      v11 = v8;
      v12 = sub_100753FC4();

      if (v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  else if (!v8)
  {
    goto LABEL_10;
  }

  sub_100150D10();
  v11 = v8;
LABEL_9:

LABEL_10:
}

id sub_100150D10()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v2 - 8);
  v4 = &v63 - v3;
  v5 = sub_100750534();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100748084();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10000C8CC(v4, &unk_100928A40);
  }

  (*(v6 + 32))(v8, v4, v5);
  v10 = *&v0[qword_100929BE8];
  if (!v10)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v67 = v6;
  v68 = v5;
  v11 = sub_100016C60(0, &qword_100923AB0);

  v12 = sub_1007480F4();
  v66 = v8;
  v13 = sub_100753C14();

  v14 = *&v0[qword_100929BE0];
  v87.receiver = v0;
  v87.super_class = ObjectType;
  v73 = v14;

  v15 = objc_msgSendSuper2(&v87, "textAlignment");
  v16 = sub_1007480A4();
  v69 = v0;
  v86.receiver = v0;
  v86.super_class = ObjectType;
  v72 = ObjectType;
  result = objc_msgSendSuper2(&v86, "textColor");
  if (result)
  {
    v17 = result;
    v18 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v18 setAlignment:v15];
    [v18 setLineBreakMode:v16];
    sub_10000C518(&unk_100929CA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007A6580;
    *(inited + 32) = NSParagraphStyleAttributeName;
    v20 = sub_100016C60(0, &qword_10093F2D0);
    *(inited + 40) = v18;
    *(inited + 64) = v20;
    *(inited + 72) = NSFontAttributeName;
    *(inited + 104) = v11;
    *(inited + 80) = v13;
    v21 = NSParagraphStyleAttributeName;
    v22 = v18;
    v23 = NSFontAttributeName;
    v24 = v13;
    v25 = sub_100413A18(inited);
    swift_setDeallocating();
    sub_10000C518(&unk_100923510);
    swift_arrayDestroy();
    v80 = sub_100016C60(0, &qword_100923500);
    *&aBlock = v17;
    sub_10000C610(&aBlock, v84);
    v64 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = v25;
    sub_1006734F4(v84, NSForegroundColorAttributeName, isUniquelyReferenced_nonNull_native);
    v85 = v83;

    sub_100016C60(0, &unk_100929CB0);
    v71 = v24;
    v65 = v10;
    v27 = sub_100743074();
    v28 = v85;

    v29.super.isa = v27;
    v30._rawValue = v28;
    isa = sub_100753884(v29, v30).super.isa;
    v32 = v22;
    v33 = isa;
    v34 = [(objc_class *)v33 fullRange];
    [(objc_class *)v33 addAttribute:v21 value:v32 range:v34, v35];
    v63 = v32;

    v70 = swift_allocObject();
    *(v70 + 16) = 0;
    *&v84[0] = 0;
    v36 = *(v73 + 16);
    v75 = NSLinkAttributeName;
    if (v36)
    {
      v74 = NSUnderlineStyleAttributeName;
      v37 = v73 + 72;
      do
      {
        v38 = *(v37 - 24);
        v76 = *(v37 - 8);

        v77 = v38;

        v39 = sub_1001522A0(v84, v33);
        v40 = sub_100753064();
        v41 = [v39 rangeOfString:v40 options:4];
        v43 = v42;

        if (v41 != sub_100740E44())
        {
          v44 = sub_100753064();
          [(objc_class *)v33 addAttribute:v75 value:v44 range:v41, v43];

          if (UIAccessibilityButtonShapesEnabled())
          {
            v45 = sub_1007534B4().super.super.isa;
            [(objc_class *)v33 addAttribute:v74 value:v45 range:v41, v43];
          }
        }

        v37 += 48;

        --v36;
      }

      while (v36);
    }

    v46 = [(objc_class *)v33 fullRange];
    v48 = v47;
    v49 = v33;
    v50 = swift_allocObject();
    v51 = v73;
    v50[2] = v72;
    v50[3] = v51;
    v52 = v71;
    v50[4] = v70;
    v50[5] = v52;
    v50[6] = &v85;
    v50[7] = v49;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_100152C50;
    *(v53 + 24) = v50;
    v81 = sub_100152C90;
    v82 = v53;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v79 = sub_1001529B4;
    v80 = &unk_100869490;
    v54 = _Block_copy(&aBlock);
    v55 = v52;

    [(objc_class *)v49 enumerateAttribute:v75 inRange:v46 options:v48 usingBlock:0, v54];
    _Block_release(v54);
    LOBYTE(v54) = swift_isEscapingClosureAtFileLocation();

    if ((v54 & 1) == 0)
    {
      v56 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v49];

      v57 = *&v84[0];

      v58 = v69;
      [v69 setAttributedText:v56];

      sub_100743064();
      sub_100753184();
      v60 = v59;
      v62 = v61;

      [v58 setTextContainerInset:{v60, 0.0, v62, 0.0}];

      return (*(v67 + 8))(v66, v68);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100151624(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "textAlignment");
}

void sub_100151664(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v10.receiver = a1;
  v10.super_class = ObjectType;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v10, "textAlignment");
  v9.receiver = v6;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "setTextAlignment:", a3);
  v8.receiver = v6;
  v8.super_class = ObjectType;
  if (objc_msgSendSuper2(&v8, "textAlignment") != v7)
  {
    sub_100150D10();
  }
}

uint64_t sub_100151704()
{
  sub_100748104();
  v0 = sub_100748114();

  return v0();
}

void (*sub_10015175C(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_10074AB44();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[4] = v8;
  sub_100748104();
  v9 = sub_100748114();
  v9();
  return sub_100151888;
}

void sub_100151888(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_100150994(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_100150994(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

void sub_10015193C(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "tintColorDidChange");
  sub_100150D10();
}

id sub_100151994(uint64_t a1, uint64_t a2)
{
  *&v2[qword_100929BE8] = a1;

  v4 = qword_100929BE0;
  *&v2[qword_100929BE0] = a2;

  if (*(*&v2[v4] + 16))
  {
    v5 = &UIAccessibilityTraitLink;
  }

  else
  {
    v5 = &UIAccessibilityTraitStaticText;
  }

  [v2 setAccessibilityTraits:*v5];

  return sub_100150D10();
}

id sub_100151A48()
{
  [v0 setAttributedText:0];
  *&v0[qword_100929BE8] = 0;

  v1 = qword_100929BE0;
  *&v0[qword_100929BE0] = _swiftEmptyArrayStorage;

  if (*(*&v0[v1] + 16))
  {
    v2 = &UIAccessibilityTraitLink;
  }

  else
  {
    v2 = &UIAccessibilityTraitStaticText;
  }

  [v0 setAccessibilityTraits:*v2];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;

  return [v0 setTextContainerInset:{UIEdgeInsetsZero.top, left, bottom, right}];
}

void sub_100151B0C(void *a1)
{
  v1 = a1;
  sub_100150D10();
}

uint64_t sub_100151B54(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + qword_100929BE0);
    v8 = Strong;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  __chkstk_darwin(Strong);
  *(&v16 - 2) = a2;
  sub_100150734(sub_100153200, v7, &v17);

  v10 = v18;
  if (v18)
  {
    v11 = v17;
    v13 = v19;
    v12 = v20;
    v14 = sub_10000C518(&unk_100923210);
    sub_1007526C4();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v5, 1, v14) == 1)
    {
      v22 = v11;
      v23 = v10;
      sub_1000C0714(&v22);

      v24 = v21;
      sub_1000C0714(&v24);
      return sub_10000C8CC(v5, &unk_100923960);
    }

    else
    {
      sub_1003C0E00(v13, 1, v12, v5);
      v22 = v11;
      v23 = v10;
      sub_1000C0714(&v22);

      v24 = v21;
      sub_1000C0714(&v24);

      return (*(v15 + 8))(v5, v14);
    }
  }

  return result;
}

id sub_100151DC0(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  v12 = sub_100152CF0(v9, v10);

  return v12;
}

BOOL sub_100151E54()
{
  v1 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + qword_100929BE0);
  v5 = v4[2];
  if (v5)
  {
    v6 = v4[6];
    v7 = v4[7];
    v8 = sub_10000C518(&unk_100923210);

    sub_1007526C4();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v3, 1, v8) == 1)
    {

      sub_10000C8CC(v3, &unk_100923960);
    }

    else
    {
      sub_1003C0E00(v6, 1, v7, v3);

      (*(v9 + 8))(v3, v8);
    }
  }

  return v5 != 0;
}

BOOL sub_100152024(void *a1)
{
  v1 = a1;
  v2 = sub_100151E54();

  return v2;
}

uint64_t sub_100152058()
{
  sub_10074ECA4();
  v0 = sub_1007544A4();
  v2 = v1;
  sub_100016994(v7);
  v3 = sub_100741234();
  if (v4)
  {
    if (v0 == v3 && v4 == v2)
    {

      v5 = 1;
    }

    else
    {
      v5 = sub_100754754();
    }
  }

  else
  {

    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_100152138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v14 = 0x2F3A6E6F69746361;
  v15 = 0xE90000000000002FLL;

  sub_10074ECA4();
  v16._countAndFlagsBits = sub_1007544A4();
  sub_1007531B4(v16);

  result = sub_100016994(v13);
  v11 = v14;
  v12 = v15;
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  a5[4] = v11;
  a5[5] = v12;
  return result;
}

id sub_1001521FC(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v5 = [objc_opt_self() configurationWithFont:a2 scale:1];
    swift_beginAccess();
    v6 = *v3;
    *v3 = v5;
    v4 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v4;
}

id sub_1001522A0(void **a1, id a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *a1;
  }

  else
  {
    v5 = [a2 string];
    if (!v5)
    {
      sub_100753094();
      v5 = sub_100753064();
    }

    v6 = [objc_allocWithZone(NSString) initWithString:v5];

    swift_beginAccess();
    v7 = *a1;
    *a1 = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_100152374(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, id a10)
{
  v16 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v16 - 8);
  v18 = v47 - v17;
  v19 = sub_100741264();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100032C04(a1, &v55);
  if (!v58)
  {
    sub_10000C8CC(&v55, &unk_100923520);
    return;
  }

  v50 = a3;
  if (swift_dynamicCast())
  {
    sub_100741254();

    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      sub_10000C8CC(v18, &unk_100923970);
      return;
    }

    v23 = (*(v20 + 32))(v22, v18, v19);
    __chkstk_darwin(v23);
    v47[-2] = v22;
    sub_100150734(sub_100152CD0, a6, &v55);
    if (!v56)
    {
      goto LABEL_19;
    }

    v48 = a2;
    v49 = v56;
    v24 = v55;
    v25 = v57;
    v26 = v58;
    v27 = sub_10074ECC4();
    if (v27)
    {
      v28 = v27;
      v47[0] = v24;
      v47[1] = v25;
      v47[2] = v26;

      v29 = sub_1001521FC(a7, a8);
      if (sub_10074F1D4())
      {
        v30 = sub_100743AC4();
        v31 = v48;
      }

      else
      {
        v32 = sub_10074F1C4();
        v31 = v48;
        if ((v32 & 1) == 0)
        {
          *&v52[0] = v47[0];
          *(&v52[0] + 1) = v49;
          sub_1000C0714(v52);

          v53 = v59;
          sub_1000C0714(&v53);

          goto LABEL_19;
        }

        v30 = sub_10056028C(v28, v29);
      }

      if (v30)
      {
        v33 = v30;
        v34 = *a9;
        v60[0] = v59;
        v54 = &type metadata for String;
        v53 = v59;
        sub_10000C610(&v53, v52);

        sub_1000C0664(v60, &v51);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = v34;
        sub_1006734F4(v52, NSLinkAttributeName, isUniquelyReferenced_nonNull_native);
        v36 = objc_allocWithZone(NSMutableAttributedString);
        v37 = sub_100753064();
        v38 = [v36 initWithString:v37];

        v39 = [objc_opt_self() textAttachmentWithImage:v33];
        v40 = [objc_opt_self() attributedStringWithAttachment:v39];

        [v38 appendAttributedString:v40];
        type metadata accessor for Key(0);
        sub_1001531B4(&qword_1009276F0, type metadata accessor for Key);
        isa = sub_100752F34().super.isa;

        v42 = [v38 fullRange];
        [v38 addAttributes:isa range:{v42, v43}];

        v44 = __OFADD__(v31, v50);
        v45 = v31 + v50;
        v46 = v47[0];
        if (v44)
        {
          __break(1u);
          return;
        }

        [a10 insertAttributedString:v38 atIndex:v45];

        *&v53 = v46;
        *(&v53 + 1) = v49;
        sub_1000C0714(&v53);

        sub_1000C0714(v60);

        goto LABEL_19;
      }

      *&v52[0] = v47[0];
      *(&v52[0] + 1) = v49;
      sub_1000C0714(v52);
    }

    else
    {
      *&v52[0] = v24;
      *(&v52[0] + 1) = v49;
      sub_1000C0714(v52);
    }

    v53 = v59;
    sub_1000C0714(&v53);
LABEL_19:
    (*(v20 + 8))(v22, v19);
  }
}

uint64_t sub_1001529B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_10000C610(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_10000C8CC(v13, &unk_100923520);
}

uint64_t sub_100152A90()
{
}

uint64_t sub_100152AD0()
{
}

uint64_t sub_100152B24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100152B6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100152BC8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100152C00()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100152CB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100152CF0(uint64_t a1, void *a2)
{
  v22 = a2;
  ObjectType = swift_getObjectType();
  v2 = sub_100753524();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100741264();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  sub_100753534();
  if ((*(v3 + 88))(v5, v2) == enum case for UITextItem.Content.link(_:))
  {
    (*(v3 + 96))(v5, v2);
    v21 = *(v7 + 32);
    v13 = v6;
    v21(v12, v5, v6);
    v22 = sub_100016C60(0, &qword_100929CC0);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v7 + 16))(v9, v12, v13);
    v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    v21((v17 + v15), v9, v13);
    *(v17 + v16) = v14;
    *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;

    v18 = sub_100753FF4();
    (*(v7 + 8))(v12, v13);

    return v18;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return v22;
  }
}

uint64_t sub_100153030()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100153068()
{
  v1 = sub_100741264();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10015310C(uint64_t a1)
{
  v3 = *(sub_100741264() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100151B54(a1, v4);
}

uint64_t sub_1001531B4(unint64_t *a1, void (*a2)(uint64_t))
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

id DebugSettingsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DebugSettingsProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugSettingsProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100153318()
{
  result = [v0 animationKeys];
  if (result)
  {
    v2 = result;
    v3 = sub_1007532A4();

    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v3 + 40;
      do
      {

        v6 = sub_100753064();
        v7 = [v0 animationForKey:v6];

        if (v7)
        {
          if (([v7 isRemovedOnCompletion] & 1) == 0)
          {
            v8 = sub_100753064();

            [v0 removeAnimationForKey:v8];

            goto LABEL_6;
          }
        }

LABEL_6:
        v5 += 16;
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

void sub_1001535C4()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SubviewToAncestorResizingView();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v2 bounds];
      [v0 convertRect:v2 fromCoordinateSpace:?];
      [v4 setFrame:?];

      v2 = v4;
    }
  }
}

id sub_1001536C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SubviewToAncestorResizingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10015376C(void *a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_glassEffect);
  if (v3)
  {
    v10 = v3;
    v4 = [v10 tintColor];
    if (v4)
    {
      v5 = v4;
      if (v2)
      {
        sub_10000D198();
        v6 = v2;
        v7 = sub_100753FC4();

        if (v7)
        {

LABEL_13:
          a1 = v10;
          goto LABEL_14;
        }
      }

      else
      {
      }
    }

    else if (!v2)
    {
      goto LABEL_13;
    }

    [v10 setTintColor:v2];
    v8 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_glassEffectView);
    if (v8)
    {
      v9 = v8;
      [v9 setEffect:v10];

      a1 = v2;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_14:
}

void (*sub_10015389C(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_glassEffect);
  if (v3)
  {
    v3 = [v3 tintColor];
  }

  *a1 = v3;
  return sub_100153904;
}

void sub_100153904(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_10015376C(v2);
  }

  else
  {
    sub_10015376C(*a1);
  }
}

void sub_10015396C(char a1)
{
  v2 = v1[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_isInstalling];
  v1[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_isInstalling] = a1;
  if (v2 != (a1 & 1))
  {
    if (a1)
    {
      v3 = objc_opt_self();
      v4 = swift_allocObject();
      *(v4 + 16) = v1;
      v8[4] = sub_100156B28;
      v8[5] = v4;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_1000CF7B0;
      v8[3] = &unk_100869530;
      v5 = _Block_copy(v8);
      v6 = v1;

      [v3 transitionWithView:v6 duration:5242880 options:v5 animations:0 completion:0.3];
      _Block_release(v5);
    }

    else
    {
      v7 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_imageView];

      [v7 setHidden:0];
    }
  }
}

uint64_t sub_100153BE0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v19.receiver = v4;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "frame");
  v12 = v11 != a4 || v10 != a3;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton__configuration;
  swift_beginAccess();
  sub_10000C824(v4 + v13, v17);
  sub_10000C888(v17, v18);
  if (sub_10074AE24())
  {
    sub_10000C620(v17);
    goto LABEL_6;
  }

  if (!v12)
  {
    return sub_10000C620(v17);
  }

  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = 0.0;
  v21.size.height = 0.0;
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  v15 = CGRectEqualToRect(v20, v21);
  result = sub_10000C620(v17);
  if (!v15)
  {
LABEL_6:
    sub_10000C824(v5 + v13, v17);
    sub_10000C888(v17, v18);
    sub_100156B68(&qword_100929E60, v14, type metadata accessor for OfferButton);
    sub_10074AEA4();
    sub_10000C620(v17);
    sub_10000C824(v5 + v13, v17);
    sub_10000C888(v17, v18);
    sub_10074AE64();
    return sub_10000C620(v17);
  }

  return result;
}

id sub_100153DC0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_effectShape];
  [v2 setHidden:0];
  [v2 setFillColor:0];
  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_outlineShape];
  [v3 setHidden:0];
  [v3 setFillColor:0];
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_imageView];
  [v4 setHidden:0];
  v5 = [v1 tintColor];
  [v4 setTintColor:v5];

  v6 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_label];
  [v6 setHidden:0];
  [v6 setTextAlignment:1];
  [v6 setNumberOfLines:1];
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_subtitleLabel] setHidden:1];
  [v4 bounds];
  [v4 setBounds:?];
  v7 = sub_10074F3F4();
  v66[3] = v7;
  v66[4] = sub_100156B68(&qword_10092AC70, 255, &type metadata accessor for Feature);
  v8 = sub_10000D134(v66);
  (*(*(v7 - 8) + 104))(v8, enum case for Feature.glass_offer_button_2025A(_:), v7);
  LOBYTE(v7) = sub_10074FC74();
  sub_10000C620(v66);
  if (v7)
  {
    v9 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_glassEffectView;
    v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_glassEffectView];
    if (v10)
    {
      v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_glassEffectView];
    }

    else
    {
      v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_buttonContainerView];
      v10 = 0;
    }

    v27 = v10;
    [v11 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v73.origin.x = v29;
    v73.origin.y = v31;
    v73.size.width = v33;
    v73.size.height = v35;
    MidX = CGRectGetMidX(v73);
    v74.origin.x = v29;
    v74.origin.y = v31;
    v74.size.width = v33;
    v74.size.height = v35;
    [v4 setCenter:{MidX, CGRectGetMidY(v74)}];
    v37 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_shapeLayerView];
    [v37 bounds];
    x = v75.origin.x;
    y = v75.origin.y;
    width = v75.size.width;
    height = v75.size.height;
    v42 = CGRectGetMidX(v75);
    v76.origin.x = x;
    v76.origin.y = y;
    v76.size.width = width;
    v76.size.height = height;
    [v2 setPosition:{v42, CGRectGetMidY(v76)}];
    [v37 bounds];
    v43 = v77.origin.x;
    v44 = v77.origin.y;
    v45 = v77.size.width;
    v46 = v77.size.height;
    v47 = CGRectGetMidX(v77);
    v78.origin.x = v43;
    v78.origin.y = v44;
    v78.size.width = v45;
    v78.size.height = v46;
    [v3 setPosition:{v47, CGRectGetMidY(v78)}];
    v48 = *&v1[v9];
    if (v48)
    {
      v49 = *&v1[v9];
    }

    else
    {
      v49 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_buttonContainerView];
      v48 = 0;
    }

    v50 = v48;
    [v49 bounds];
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;

    v79.origin.x = v52;
    v79.origin.y = v54;
    v79.size.width = v56;
    v79.size.height = v58;
    v59 = CGRectGetMidX(v79);
    v80.origin.x = v52;
    v80.origin.y = v54;
    v80.size.width = v56;
    v80.size.height = v58;
    [v6 setCenter:{v59, CGRectGetMidY(v80)}];
    v60 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_buttonContainerView];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v62 = Strong;
      v63 = swift_unknownObjectWeakLoadStrong();
      if (v63)
      {
        v64 = v63;
        [v62 bounds];
        [v60 convertRect:v62 fromCoordinateSpace:?];
        [v64 setFrame:?];
      }

      else
      {
      }
    }
  }

  else
  {
    [v3 position];
    [v4 setCenter:?];
    [v1 bounds];
    v12 = v67.origin.x;
    v13 = v67.origin.y;
    v14 = v67.size.width;
    v15 = v67.size.height;
    v16 = CGRectGetMidX(v67);
    v68.origin.x = v12;
    v68.origin.y = v13;
    v68.size.width = v14;
    v68.size.height = v15;
    [v2 setPosition:{v16, CGRectGetMidY(v68)}];
    [v1 bounds];
    v17 = v69.origin.x;
    v18 = v69.origin.y;
    v19 = v69.size.width;
    v20 = v69.size.height;
    v21 = CGRectGetMidX(v69);
    v70.origin.x = v17;
    v70.origin.y = v18;
    v70.size.width = v19;
    v70.size.height = v20;
    [v3 setPosition:{v21, CGRectGetMidY(v70)}];
    [v1 bounds];
    v22 = v71.origin.x;
    v23 = v71.origin.y;
    v24 = v71.size.width;
    v25 = v71.size.height;
    v26 = CGRectGetMidX(v71);
    v72.origin.x = v22;
    v72.origin.y = v23;
    v72.size.width = v24;
    v72.size.height = v25;
    [v6 setCenter:{v26, CGRectGetMidY(v72)}];
  }

  [v2 setStrokeStart:0.0];
  [v2 setStrokeEnd:0.0];
  [v3 setStrokeStart:0.0];
  [v3 setStrokeEnd:1.0];
  return sub_100153318();
}

id sub_100154390(char *a1, char a2, void *a3)
{
  [a1 setNeedsLayout];
  if (a2)
  {

    return [a1 layoutIfNeeded];
  }

  else
  {
    v8.receiver = a1;
    v8.super_class = type metadata accessor for OfferButton();
    objc_msgSendSuper2(&v8, "invalidateIntrinsicContentSize");
    v7 = &a1[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize];
    *v7 = 0;
    *(v7 + 1) = 0;
    v7[16] = 1;
    [a3 setNeedsLayout];
    return [a3 layoutIfNeeded];
  }
}

char *sub_100154454(int a1)
{
  v2 = v1;
  v101 = a1;
  ObjectType = swift_getObjectType();
  v96 = sub_100752AC4();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1007479B4();
  v106 = *(v107 - 8);
  v4 = __chkstk_darwin(v107);
  v104 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v102 = &v93 - v7;
  v103 = v8;
  __chkstk_darwin(v6);
  v105 = &v93 - v9;
  v10 = sub_100751534();
  __chkstk_darwin(v10 - 8);
  v93 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_10074AB44();
  v12 = *(v110 - 8);
  __chkstk_darwin(v110);
  v109 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v14 - 8);
  v16 = &v93 - v15;
  v17 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_effectShape;
  *&v1[v17] = [objc_allocWithZone(CAShapeLayer) init];
  v18 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_outlineShape;
  *&v1[v18] = [objc_allocWithZone(CAShapeLayer) init];
  v19 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_shapeLayerView;
  *&v1[v19] = [objc_allocWithZone(UIView) init];
  v20 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_imageView;
  *&v1[v20] = [objc_allocWithZone(UIImageView) init];
  v100 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_label;
  if (qword_1009212C0 != -1)
  {
    swift_once();
  }

  v21 = sub_100750534();
  v22 = sub_10000D0FC(v21, qword_100981578);
  v23 = *(v21 - 8);
  v99 = *(v23 + 16);
  v99(v16, v22, v21);
  v98 = *(v23 + 56);
  v98(v16, 0, 1, v21);
  v24 = enum case for DirectionalTextAlignment.none(_:);
  v97 = *(v12 + 104);
  v97(v109, enum case for DirectionalTextAlignment.none(_:), v110);
  v25 = sub_100745C84();
  v26 = objc_allocWithZone(v25);
  *&v1[v100] = sub_100745C74();
  v27 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_subtitleLabel;
  if (qword_1009212D8 != -1)
  {
    swift_once();
  }

  v28 = sub_10000D0FC(v21, qword_1009815C0);
  v99(v16, v28, v21);
  v98(v16, 0, 1, v21);
  sub_1007479C4();
  v97(v109, v24, v110);
  v29 = objc_allocWithZone(v25);
  *&v1[v27] = sub_100745C74();
  v30 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_buttonContainerView;
  type metadata accessor for SubviewToAncestorResizingView();
  *&v1[v30] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v31 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_glassEffect;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_glassEffect] = 0;
  v32 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_glassEffectView;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_glassEffectView] = 0;
  v33 = &v1[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_presenter];
  *v33 = 0u;
  *(v33 + 1) = 0u;
  *(v33 + 4) = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_displayProperties] = 0;
  v1[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_isInstalling] = 0;
  swift_weakInit();
  swift_unknownObjectWeakInit();
  v34 = &v1[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_isEnabledObserver];
  *v34 = 0u;
  *(v34 + 1) = 0u;
  v1[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_isConfigurationLayoutEnabled] = 1;
  v1[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_includeTopPadding] = 2;
  v35 = &v1[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton__configuration];
  v35[3] = sub_1007475D4();
  v35[4] = &protocol witness table for EmptyConfiguration;
  sub_10000D134(v35);
  sub_1007475C4();
  v36 = &v1[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize];
  *v36 = 0;
  *(v36 + 1) = 0;
  v36[16] = 1;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_traitChangeRegistration] = 0;
  if (v101)
  {
    v37 = sub_10074F3F4();
    *(&v113 + 1) = v37;
    v114 = sub_100156B68(&qword_10092AC70, 255, &type metadata accessor for Feature);
    v38 = sub_10000D134(&aBlock);
    v39 = enum case for Feature.glass_offer_button_2025A(_:);
    (*(*(v37 - 8) + 104))(v38, enum case for Feature.glass_offer_button_2025A(_:), v37);
    LOBYTE(v37) = sub_10074FC74();
    sub_10000C620(&aBlock);
    if (v37)
    {
      v40 = [objc_allocWithZone(UIGlassEffect) init];
      v41 = *&v2[v31];
      *&v2[v31] = v40;

      v42 = [objc_allocWithZone(UIVisualEffectView) init];
      goto LABEL_10;
    }
  }

  else
  {
    v39 = enum case for Feature.glass_offer_button_2025A(_:);
  }

  v43 = *&v2[v31];
  *&v2[v31] = 0;

  v42 = 0;
LABEL_10:
  v44 = *&v2[v32];
  *&v2[v32] = v42;

  v116.receiver = v2;
  v116.super_class = ObjectType;
  v45 = objc_msgSendSuper2(&v116, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v45 setScalesLargeContentImage:1];
  v46 = [objc_opt_self() mainScreen];
  [v46 scale];
  v48 = v47;

  v49 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_outlineShape;
  [*&v45[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_outlineShape] setContentsScale:v48];
  [*&v45[v49] setFillColor:0];
  v50 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_effectShape;
  [*&v45[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_effectShape] setContentsScale:v48];
  [*&v45[v50] setFillColor:0];
  v51 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_label;
  v52 = *&v45[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_label];
  sub_100745C34();

  v53 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_imageView;
  [*&v45[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_imageView] setContentMode:4];
  v54 = sub_10074F3F4();
  *(&v113 + 1) = v54;
  v114 = sub_100156B68(&qword_10092AC70, 255, &type metadata accessor for Feature);
  v55 = sub_10000D134(&aBlock);
  (*(*(v54 - 8) + 104))(v55, v39, v54);
  v56 = sub_10074FC74();
  sub_10000C620(&aBlock);
  if (v56)
  {
    v57 = *&v45[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_glassEffectView];
    if (v57 && (v58 = *&v45[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_glassEffect]) != 0)
    {
      v59 = v57;
      v60 = v58;
      sub_100751524();
      sub_100753D04();
      [v59 setUserInteractionEnabled:0];
      [v59 setEffect:v60];
      v61 = [v59 contentView];
      [v61 addSubview:*&v45[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_buttonContainerView]];

      [v45 addSubview:v59];
    }

    else
    {
      [v45 addSubview:*&v45[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_buttonContainerView]];
    }

    v65 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_buttonContainerView;
    swift_unknownObjectWeakAssign();
    v66 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_shapeLayerView;
    swift_unknownObjectWeakAssign();
    v67 = [*&v45[v66] layer];
    [v67 addSublayer:*&v45[v49]];

    v68 = [*&v45[v66] layer];
    [v68 addSublayer:*&v45[v50]];

    [*&v45[v65] addSubview:*&v45[v66]];
    [*&v45[v65] addSubview:*&v45[v51]];
    [*&v45[v65] addSubview:*&v45[v53]];
  }

  else
  {
    v62 = v45;
    v63 = [v62 layer];
    [v63 addSublayer:*&v45[v49]];

    v64 = [v62 layer];
    [v64 addSublayer:*&v45[v50]];

    [v62 addSubview:*&v45[v51]];
    [v62 addSubview:*&v45[v53]];
  }

  v69 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_subtitleLabel;
  v70 = *&v45[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_subtitleLabel];
  sub_100745C34();

  [v45 addSubview:*&v45[v69]];
  [*&v45[v69] setShowsLargeContentViewer:1];
  v71 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v45 addInteraction:v71];

  isEscapingClosureAtFileLocation = [v45 traitCollection];
  v73 = sub_100753804();
  v74 = v107;
  v75 = v106;
  v76 = v105;
  if ((v73 & 1) == 0)
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v77 = qword_10093FF58;
    goto LABEL_23;
  }

  if (qword_100921988 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v77 = qword_10093FF40;
LABEL_23:
    v78 = sub_10000D0FC(v74, v77);
    v79 = *(v75 + 16);
    v80 = v102;
    v79(v102, v78, v74);

    v81 = *(v75 + 32);
    v81(v76, v80, v74);
    v82 = objc_opt_self();
    v83 = v104;
    v79(v104, v76, v74);
    v84 = (*(v75 + 80) + 24) & ~*(v75 + 80);
    v85 = swift_allocObject();
    *(v85 + 16) = v45;
    v81((v85 + v84), v83, v74);
    v86 = swift_allocObject();
    *(v86 + 16) = sub_1001572D4;
    *(v86 + 24) = v85;
    v114 = sub_100045E0C;
    v115 = v86;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v113 = sub_10011B528;
    *(&v113 + 1) = &unk_1008695A8;
    v87 = _Block_copy(&aBlock);
    v45 = v45;

    [v82 performWithoutAnimation:v87];
    _Block_release(v87);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  v88 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton__configuration;
  swift_beginAccess();
  sub_10000C824(&v45[v88], &aBlock);
  sub_10000C888(&aBlock, *(&v113 + 1));
  sub_100156B68(&qword_100929E60, v89, type metadata accessor for OfferButton);
  sub_10074AE64();
  sub_10000C620(&aBlock);
  aBlock = 0u;
  v113 = 0u;
  memset(v111, 0, sizeof(v111));
  v90 = v94;
  sub_100752A24();
  sub_10000C8CC(v111, &unk_100923520);
  sub_10000C8CC(&aBlock, &unk_100923520);
  sub_100753C74();
  (*(v95 + 8))(v90, v96);
  sub_10000C518(&unk_1009249D0);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_1007A5A00;
  *(v91 + 32) = sub_1007519E4();
  *(v91 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100753D44();

  swift_unknownObjectRelease();

  (*(v75 + 8))(v76, v74);

  return v45;
}

id sub_1001554A4(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_label);
  sub_100747964();
  [v2 frame];
  [v2 setFrame:?];
  v3 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_effectShape);
  sub_100747964();
  [v3 frame];
  [v3 setFrame:?];
  v4 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_outlineShape);
  sub_100747964();
  [v4 frame];

  return [v4 setFrame:?];
}

id ArcadeSubscribeViewController.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100155828()
{
  swift_getObjectType();
  v1 = [v0 superview];
  if (v1)
  {

    v2 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_traitChangeRegistration;
    if (*&v0[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_traitChangeRegistration])
    {
      return;
    }

    sub_10000C518(&unk_1009249D0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1007A97A0;
    *(v3 + 32) = sub_1007519E4();
    *(v3 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    *(v3 + 48) = sub_100751544();
    *(v3 + 56) = &protocol witness table for UITraitLayoutDirection;
    *(v3 + 64) = sub_100751514();
    *(v3 + 72) = &protocol witness table for UITraitDisplayScale;
    *(v3 + 80) = sub_100751554();
    *(v3 + 88) = &protocol witness table for UITraitLegibilityWeight;
    v4 = sub_100753D44();

    *&v0[v2] = v4;
  }

  else
  {
    if (!*&v0[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_traitChangeRegistration])
    {
      return;
    }

    swift_unknownObjectRetain();
    sub_100753D54();
  }

  swift_unknownObjectRelease();
}

void sub_1001559DC()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  v2 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton__configuration;
  swift_beginAccess();
  sub_10000C824(&v0[v2], v11);
  sub_10000C888(v11, v12);
  [v0 bounds];
  [objc_opt_self() areAnimationsEnabled];
  sub_100156B68(&qword_100929E60, v3, type metadata accessor for OfferButton);
  sub_10074AE74();
  sub_10000C620(v11);
  v4 = sub_10074F3F4();
  v12 = v4;
  v13 = sub_100156B68(&qword_10092AC70, 255, &type metadata accessor for Feature);
  v5 = sub_10000D134(v11);
  (*(*(v4 - 8) + 104))(v5, enum case for Feature.glass_offer_button_2025A(_:), v4);
  LOBYTE(v4) = sub_10074FC74();
  sub_10000C620(v11);
  if (v4)
  {
    v6 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_buttonContainerView];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        [v8 bounds];
        [v6 convertRect:v8 fromCoordinateSpace:?];
        [v10 setFrame:?];

        v8 = v10;
      }
    }
  }
}

id sub_100155FDC(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v5, *a3);
}

uint64_t sub_1001560A4(char a1)
{
  swift_getObjectType();
  LODWORD(v3) = 1057971241;
  if (a1)
  {
    *&v3 = 1.0;
    v4 = 1.0;
  }

  else
  {
    v4 = 0.25;
  }

  if (a1)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.56;
  }

  [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_outlineShape) setOpacity:v3];
  [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_imageView) setAlpha:v4];
  [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_label) setAlpha:v5];
  v6 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton__configuration;
  swift_beginAccess();
  sub_10000C824(v1 + v6, v9);
  sub_10000C888(v9, v9[3]);
  sub_100156B68(&qword_100929E60, v7, type metadata accessor for OfferButton);
  sub_10074AE94();
  return sub_10000C620(v9);
}

id sub_100156200()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "invalidateIntrinsicContentSize");
  v1 = &v0[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize];
  *v1 = 0;
  *(v1 + 1) = 0;
  v1[16] = 1;
  v2 = objc_opt_self();
  v3 = [v2 areAnimationsEnabled];
  [v2 setAnimationsEnabled:0];
  v4 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_isConfigurationLayoutEnabled;
  v0[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_isConfigurationLayoutEnabled] = 0;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton__configuration;
  swift_beginAccess();
  sub_10000C824(&v0[v5], v8);
  sub_10000C888(v8, v9);
  sub_100156B68(&qword_100929E60, v6, type metadata accessor for OfferButton);
  sub_10074AEA4();
  sub_10000C620(v8);
  sub_10000C824(&v0[v5], v8);
  sub_10000C888(v8, v9);
  sub_10074AE64();
  sub_10000C620(v8);
  [v2 setAnimationsEnabled:v3];
  v0[v4] = 1;
  [v0 setNeedsLayout];
  return [v0 setNeedsDisplay];
}

id sub_100156494@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_label);
  *a1 = v2;
  return v2;
}

id sub_1001564A8@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_subtitleLabel);
  *a1 = v2;
  return v2;
}

id sub_1001564BC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_imageView);
  *a1 = v2;
  return v2;
}

id sub_1001564D0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "isHighlighted");
}

id sub_100156508()
{
  v1 = [v0 tintColor];

  return v1;
}

id sub_100156540()
{
  result = [objc_opt_self() areAnimationsEnabled];
  if (result)
  {
    return *(v0 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_isConfigurationLayoutEnabled);
  }

  return result;
}

id (*sub_1001565B0(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 overrideUserInterfaceStyle];
  return sub_100156604;
}

id sub_100156618()
{
  result = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_glassEffect);
  if (result)
  {
    return [result tintColor];
  }

  return result;
}

uint64_t (*sub_100156654(void *a1))()
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
  v2[4] = sub_10015389C(v2);
  return sub_1000181A8;
}

void *sub_1001566DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_glassEffectView);
  v2 = v1;
  if (!v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_buttonContainerView);
    v3 = v2;
  }

  v4 = v1;
  return v2;
}

id sub_10015672C()
{
  v1 = [v0 largeContentImage];

  return v1;
}

void sub_100156764(void *a1)
{
  [v1 setLargeContentImage:a1];
}

void (*sub_1001567AC(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 largeContentImage];
  return sub_100156808;
}

void sub_100156808(id *a1)
{
  v1 = *a1;
  [a1[1] setLargeContentImage:?];
}

uint64_t sub_100156850()
{
  v1 = [v0 largeContentTitle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100753094();

  return v3;
}

void sub_1001568B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_100753064();
  }

  else
  {
    v3 = 0;
  }

  [v2 setLargeContentTitle:v3];
}

uint64_t (*sub_100156924(uint64_t **a1))()
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
  v2[4] = sub_100156994(v2);
  return sub_10001BB78;
}

void (*sub_100156994(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 largeContentTitle];
  if (v3)
  {
    v4 = v3;
    v5 = sub_100753094();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_100156A1C;
}

void sub_100156A1C(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    if (v3)
    {

      v4 = sub_100753064();
    }

    else
    {
      v4 = 0;
    }

    [*(a1 + 16) setLargeContentTitle:v4];
  }

  else if (v3)
  {
    v4 = sub_100753064();

    [*(a1 + 16) setLargeContentTitle:v4];
  }

  else
  {
    v4 = 0;
    [*(a1 + 16) setLargeContentTitle:0];
  }
}

uint64_t sub_100156AF0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100156B50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100156B68(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100156BB0(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_presenter;
  result = swift_beginAccess();
  if (*(v1 + 24))
  {
    sub_10000C824(v1, v3);
    sub_10000C888(v3, v3[3]);
    sub_100748CD4();
    return sub_10000C620(v3);
  }

  return result;
}

void sub_100156C60()
{
  v1 = v0;
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_effectShape;
  *(v1 + v8) = [objc_allocWithZone(CAShapeLayer) init];
  v9 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_outlineShape;
  *(v1 + v9) = [objc_allocWithZone(CAShapeLayer) init];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_shapeLayerView;
  *(v1 + v10) = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_imageView;
  *(v1 + v11) = [objc_allocWithZone(UIImageView) init];
  v29 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_label;
  if (qword_1009212C0 != -1)
  {
    swift_once();
  }

  v12 = sub_100750534();
  v13 = sub_10000D0FC(v12, qword_100981578);
  v14 = *(v12 - 8);
  v28 = *(v14 + 16);
  v28(v7, v13, v12);
  v27 = *(v14 + 56);
  v27(v7, 0, 1, v12);
  v15 = enum case for DirectionalTextAlignment.none(_:);
  v16 = *(v3 + 104);
  v30 = v3 + 104;
  v31 = v2;
  v16(v32, enum case for DirectionalTextAlignment.none(_:), v2);
  v17 = sub_100745C84();
  v18 = objc_allocWithZone(v17);
  *(v1 + v29) = sub_100745C74();
  v19 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_subtitleLabel;
  if (qword_1009212D8 != -1)
  {
    swift_once();
  }

  v20 = sub_10000D0FC(v12, qword_1009815C0);
  v28(v7, v20, v12);
  v27(v7, 0, 1, v12);
  sub_1007479C4();
  v16(v32, v15, v31);
  v21 = objc_allocWithZone(v17);
  *(v1 + v19) = sub_100745C74();
  v22 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_buttonContainerView;
  type metadata accessor for SubviewToAncestorResizingView();
  *(v1 + v22) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_glassEffect) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_glassEffectView) = 0;
  v23 = v1 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_presenter;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_displayProperties) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_isInstalling) = 0;
  swift_weakInit();
  swift_unknownObjectWeakInit();
  v24 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_isEnabledObserver);
  *v24 = 0u;
  v24[1] = 0u;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_isConfigurationLayoutEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_includeTopPadding) = 2;
  v25 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton__configuration);
  v25[3] = sub_1007475D4();
  v25[4] = &protocol witness table for EmptyConfiguration;
  sub_10000D134(v25);
  sub_1007475C4();
  v26 = v1 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize;
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = 1;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_traitChangeRegistration) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_100157150()
{
  v1 = v0 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize;
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize + 16))
  {
    v2 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000C824(v0 + v2, v8);
    sub_10000C888(v8, v8[3]);
    sub_10074AE54();
    v4 = v3;
    v6 = v5;
    result = sub_10000C620(v8);
    *v1 = v4;
    *(v1 + 8) = v6;
    *(v1 + 16) = 0;
  }

  return result;
}

uint64_t sub_100157210()
{
  v1 = sub_1007479B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

id sub_1001572D4()
{
  sub_1007479B4();
  v1 = *(v0 + 16);

  return sub_1001554A4(v1);
}

uint64_t sub_10015737C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100750304();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100750B04();
  sub_100039C50(v7, a2);
  sub_10000D0FC(v7, a2);
  *v6 = UIFontTextStyleBody;
  (*(v4 + 104))(v6, enum case for FontSource.textStyle(_:), v3);
  v12[3] = v3;
  v12[4] = &protocol witness table for FontSource;
  v8 = sub_10000D134(v12);
  (*(v4 + 16))(v8, v6, v3);
  v9 = UIFontTextStyleBody;
  sub_100750B14();
  return (*(v4 + 8))(v6, v3);
}

void sub_1001574F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a1)
  {
    v7 = a1;
    sub_100602190(v7, a6);
  }
}

void *sub_100157548(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_10001E208(0, v1, 0);
    v4 = a1 + 32;
    v2 = _swiftEmptyArrayStorage;
    do
    {
      sub_10000C824(v4, v16);
      sub_10000C518(&unk_10092D520);
      sub_10000C518(&qword_100926520);
      swift_dynamicCast();
      v20 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10001E208((v5 > 1), v6 + 1, 1);
      }

      v7 = v18;
      v8 = v19;
      v9 = sub_10007271C(v17, v18);
      v10 = __chkstk_darwin(v9);
      v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      (*(v13 + 16))(v12, v10);
      sub_10027C48C(v6, v12, &v20, v7, v8);
      sub_10000C620(v17);
      v2 = v20;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_100157720(uint64_t a1)
{
  v2 = sub_100750FD4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_10001E248(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = v7[2];
      v12 = v7[3];
      if (v13 >= v12 >> 1)
      {
        sub_10001E248((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = &protocol witness table for VerticalSpaceMeasurable;
      v14 = sub_10000D134(&v18);
      v9(v14, v5, v2);
      v7 = v21;
      v21[2] = v13 + 1;
      sub_100012160(&v18, &v7[5 * v13 + 4]);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

char *sub_1001578EC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100754664();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_10001E288(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_100754574();
        type metadata accessor for CGColor(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_10001E288((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_10000C610(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CGColor(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_10001E288((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_10000C610(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_100157AB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_10001E288(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {

      sub_10000C518(&unk_100939AF0);
      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10001E288((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_10000C610(&v8, &v2[4 * v6 + 4]);
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_100157BE0(unint64_t a1, unint64_t *a2)
{
  if (a1 >> 62)
  {
    v4 = sub_100754664();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v15 = _swiftEmptyArrayStorage;
  result = sub_10001E288(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        sub_100754574();
        sub_100016C60(0, a2);
        swift_dynamicCast();
        v15 = v5;
        v9 = v5[2];
        v8 = v5[3];
        if (v9 >= v8 >> 1)
        {
          sub_10001E288((v8 > 1), v9 + 1, 1);
          v5 = v15;
        }

        v5[2] = v9 + 1;
        sub_10000C610(v14, &v5[4 * v9 + 4]);
      }
    }

    else
    {
      v10 = (a1 + 32);
      sub_100016C60(0, a2);
      do
      {
        v11 = *v10;
        swift_dynamicCast();
        v15 = v5;
        v13 = v5[2];
        v12 = v5[3];
        if (v13 >= v12 >> 1)
        {
          sub_10001E288((v12 > 1), v13 + 1, 1);
          v5 = v15;
        }

        v5[2] = v13 + 1;
        sub_10000C610(v14, &v5[4 * v13 + 4]);
        ++v10;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100157E84(unint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), uint64_t (*a3)(void), uint64_t a4, void (*a5)(void *, void *))
{
  if (a1 >> 62)
  {
    v10 = sub_100754664();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v26 = _swiftEmptyArrayStorage;
  result = (a2)(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v22 = a2;
    v11 = v26;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = 0;
      do
      {
        v14 = sub_100754574();
        v26 = v11;
        v16 = v11[2];
        v15 = v11[3];
        if (v16 >= v15 >> 1)
        {
          v22(v15 > 1, v16 + 1, 1);
          v11 = v26;
        }

        ++v13;
        v24 = a3(0);
        v25 = a4;
        v23[0] = v14;
        v11[2] = v16 + 1;
        a5(v23, &v11[5 * v16 + 4]);
      }

      while (v10 != v13);
    }

    else
    {
      v17 = (a1 + 32);
      do
      {
        v18 = *v17;
        v26 = v11;
        v19 = v11[2];
        v20 = v11[3];
        v21 = v18;
        if (v19 >= v20 >> 1)
        {
          v22(v20 > 1, v19 + 1, 1);
          v11 = v26;
        }

        v24 = a3(0);
        v25 = a4;
        v23[0] = v21;
        v11[2] = v19 + 1;
        a5(v23, &v11[5 * v19 + 4]);
        ++v17;
        --v10;
      }

      while (v10);
    }

    return v11;
  }

  __break(1u);
  return result;
}

void *sub_10015813C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100754664();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v16 = _swiftEmptyArrayStorage;
  result = sub_10001E208(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = sub_100754574();
        v16 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_10001E208((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = sub_100750F34();
        v15 = &protocol witness table for LayoutViewPlaceholder;
        *&v13 = v6;
        v3[2] = v8 + 1;
        sub_100012160(&v13, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = v3[2];
        v12 = v3[3];

        if (v11 >= v12 >> 1)
        {
          sub_10001E208((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = sub_100750F34();
        v15 = &protocol witness table for LayoutViewPlaceholder;
        *&v13 = v10;
        v3[2] = v11 + 1;
        sub_100012160(&v13, &v3[5 * v11 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001583D0(unint64_t a1, unint64_t *a2)
{
  if (a1 >> 62)
  {
    sub_100016C60(0, a2);

    v5 = sub_100754654();

    return v5;
  }

  else
  {

    sub_100754764();
    sub_100016C60(0, a2);
    return a1;
  }
}

void *sub_100158474(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001E73C(0, v1, 0);
    v3 = a1 + 40;
    do
    {

      sub_10000C518(&qword_10092FE70);
      swift_dynamicCast();
      v4 = v8;
      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_10001E73C((v5 > 1), v6 + 1, 1);
        v4 = v8;
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      *&_swiftEmptyArrayStorage[2 * v6 + 4] = v4;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10015858C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001E75C(0, v1, 0);
    v3 = a1 + 32;
    do
    {
      v3 += 8;
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_10001E75C((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      v6 = &_swiftEmptyArrayStorage[5 * v5];
      v6[8] = v10;
      *(v6 + 2) = v8;
      *(v6 + 3) = v9;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10015870C(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  if (a1 >> 62)
  {
    v8 = sub_100754664();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = _swiftEmptyArrayStorage;
  if (!v8)
  {
    return v9;
  }

  v22 = _swiftEmptyArrayStorage;
  result = sub_10001E5F4(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v22;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      do
      {
        v12 = sub_100754574();
        v22 = v9;
        v14 = v9[2];
        v13 = v9[3];
        if (v14 >= v13 >> 1)
        {
          sub_10001E5F4((v13 > 1), v14 + 1, 1);
          v9 = v22;
        }

        ++v11;
        v20 = a2(0);
        v21 = sub_10015DC8C(a3, a4);
        *&v19 = v12;
        v9[2] = v14 + 1;
        sub_100012160(&v19, &v9[5 * v14 + 4]);
      }

      while (v8 != v11);
    }

    else
    {
      v15 = (a1 + 32);
      do
      {
        v16 = *v15;
        v22 = v9;
        v18 = v9[2];
        v17 = v9[3];

        if (v18 >= v17 >> 1)
        {
          sub_10001E5F4((v17 > 1), v18 + 1, 1);
          v9 = v22;
        }

        v20 = a2(0);
        v21 = sub_10015DC8C(a3, a4);
        *&v19 = v16;
        v9[2] = v18 + 1;
        sub_100012160(&v19, &v9[5 * v18 + 4]);
        ++v15;
        --v8;
      }

      while (v8);
    }

    return v9;
  }

  __break(1u);
  return result;
}