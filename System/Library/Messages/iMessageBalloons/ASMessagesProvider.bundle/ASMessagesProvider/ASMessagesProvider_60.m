uint64_t sub_6C3D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for GenericPageShelfSupplementaryProvider();
  v7 = swift_allocObject();
  *(v7 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 32) = a5;
  swift_unknownObjectWeakAssign();
  *(v7 + 16) = a2;
  return v7;
}

uint64_t sub_6C3DE4(uint64_t a1, void (*a2)(char *))
{
  v21 = a2;
  v2 = sub_76A920();
  v18 = *(v2 - 8);
  v19 = v2;
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_75B660();
  v5 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_94F1F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v15 = *(v9 + 8);
  v15(v14, v8);
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v15(v11, v8);
  if (v22)
  {
    if (sub_759880())
    {
      if (qword_93DCE0 != -1)
      {
        swift_once();
      }

      v16 = sub_766CA0();
      sub_BE38(v16, qword_99FDE8);
      sub_75DA40();
      sub_766470();
      sub_766700();

      swift_unknownObjectRelease();
      (*(v18 + 8))(v4, v19);
    }

    else
    {
    }
  }

  v21(v7);
  return (*(v5 + 8))(v7, v20);
}

uint64_t sub_6C4140()
{
  v0 = sub_76A920();
  v16 = *(v0 - 8);
  v17 = v0;
  __chkstk_darwin(v0);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_75B660();
  v3 = *(v18 - 8);
  __chkstk_darwin(v18);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_94F1F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v13 = *(v7 + 8);
  v13(v12, v6);
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v13(v9, v6);
  if (v19)
  {
    if (sub_759880())
    {
      if (qword_93DCE0 != -1)
      {
        swift_once();
      }

      v14 = sub_766CA0();
      sub_BE38(v14, qword_99FDE8);
      sub_75DA40();
      sub_766470();
      sub_766700();

      swift_unknownObjectRelease();
      (*(v16 + 8))(v2, v17);
    }

    else
    {
    }
  }

  return (*(v3 + 8))(v5, v18);
}

double *sub_6C4488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v5 = sub_75B660();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_94F1F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v10 + 8))(v12, v9);
  v13 = (*(v6 + 88))(v8, v5);
  LODWORD(v10) = enum case for ShelfBackground.interactive(_:);
  (*(v6 + 8))(v8, v5);
  if (v13 != v10)
  {
    return _swiftEmptyArrayStorage;
  }

  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  sub_768900();
  sub_768ED0();
  v14 = sub_2F318C(a1, v18, a3);
  sub_BD88(&qword_941B08);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_77B6D0;
  v16 = sub_6C4904(&qword_962310, type metadata accessor for InteractiveSectionBackgroundScrollObserver);
  *(v15 + 32) = v14;
  *(v15 + 40) = v16;

  return v15;
}

uint64_t sub_6C4734@<X0>(uint64_t *a1@<X8>)
{
  result = sub_7649C0();
  *a1 = result;
  return result;
}

uint64_t sub_6C4760@<X0>(uint64_t *a1@<X8>)
{
  result = sub_7649D0();
  *a1 = result;
  return result;
}

uint64_t sub_6C478C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6C47DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_7649B0();
  *a1 = result;
  return result;
}

uint64_t sub_6C480C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_764990();
  *a1 = result;
  return result;
}

uint64_t sub_6C4838()
{
  sub_75DAB0();

  return sub_6C2E38();
}

uint64_t sub_6C48A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_6C4904(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_6C4950()
{
  sub_75DAB0();

  return sub_6C4140();
}

uint64_t sub_6C49B0(void *a1)
{
  sub_75DAB0();

  return sub_6C2354(a1);
}

uint64_t sub_6C4A4C()
{
  v1 = *(sub_75DAB0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return sub_6BE97C(v0 + v2, *(*(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)) + 16));
}

uint64_t sub_6C4AF8()
{
  v1 = sub_75DAB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_6C4C6C()
{
  v1 = sub_75DAB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_6C4D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v10 = *(sub_75DAB0() - 8);
  v11 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v12 = *(v5 + 16);
  v13 = *(v5 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a5(a1, a2, a3, a4, v12, v5 + v11, v13);
}

uint64_t sub_6C4E3C(char *a1, uint64_t a2)
{
  v41 = a1;
  v3 = sub_75DAB0();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v37 = v4;
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75B660();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&qword_94AFE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - v8;
  v10 = sub_BD88(&unk_94F1F0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v17 = *(v11 + 8);
  v17(v16, v10);
  v18 = v43;
  v33 = v42;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v17(v13, v10);
  if (qword_93DFD0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for ShelfFooterView.Style();
  v20 = sub_BE38(v19, qword_9A0648);
  v21 = v41;
  sub_652A74(v33, v18, v20, v9, a2);

  sub_10A2C(v9, &qword_94AFE0);
  sub_75DAA0();
  swift_getKeyPath();
  v22 = v34;
  sub_768750();

  v17(v16, v10);
  v23 = sub_51DB60();
  (*(v35 + 8))(v22, v36);
  [v21 setOverrideUserInterfaceStyle:v23];
  v24 = swift_allocObject();
  swift_weakInit();
  v26 = v38;
  v25 = v39;
  v27 = v40;
  (*(v39 + 16))(v38, a2, v40);
  v28 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v24;
  (*(v25 + 32))(v29 + v28, v26, v27);
  v30 = &v21[OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_footerAction];
  v31 = *&v21[OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_footerAction];
  *v30 = sub_6C52F8;
  v30[1] = v29;

  sub_F704(v31);
}

void sub_6C53AC(void *a1)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_backButtonAction;
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_backButtonAction);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_backButtonAction) = a1;
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_backButton);
    v5 = a1;
    [v4 removeAction:v3 forControlEvents:64];
    v6 = *(v1 + v2);
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = a1;
  v6 = a1;
  if (a1)
  {
LABEL_3:
    v7 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_backButton);
    v8 = v6;
    [v7 addAction:v8 forControlEvents:64];
  }

LABEL_4:
}

char *sub_6C5480(int a1)
{
  v2 = v1;
  LODWORD(v58) = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_75CA40();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v57 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v60 = &v53 - v8;
  __chkstk_darwin(v9);
  v59 = &v53 - v10;
  v11 = sub_760AD0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v15 - 8);
  v17 = &v53 - v16;
  v18 = OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_contentView;
  *&v2[v18] = [objc_allocWithZone(type metadata accessor for AppPromotionScrollableContentContainerView()) init];
  v19 = OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_backButton;
  v20 = objc_allocWithZone(type metadata accessor for CardHeaderButton());
  *&v2[v19] = sub_4F6BB8(1u);
  v21 = OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_learnMoreLabel;
  v22 = sub_7666D0();
  (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
  v23 = v11;
  v24 = v5;
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v23);
  v25 = objc_allocWithZone(sub_75BB20());
  *&v2[v21] = sub_75BB10();
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_backButtonAction] = 0;
  v26 = *(v5 + 104);
  v26(&v2[OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_mediaOverlayStyle], enum case for MediaOverlayStyle.matchSystem(_:), v4);
  v2[OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_displayMode] = v58 & 1;
  v65.receiver = v2;
  v65.super_class = ObjectType;
  v58 = ObjectType;
  v27 = objc_msgSendSuper2(&v65, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 setClipsToBounds:1];
  [v31 setUserInteractionEnabled:0];
  v32 = OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_contentView;
  v33 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_contentView];
  v34 = *&v33[OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_protectionMode];
  *&v33[OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_protectionMode] = 2;
  v35 = v33;
  if (v34 != &dword_0 + 2)
  {
    sub_217140();
  }

  sub_2175DC();
  sub_2180B4(v34);

  v56 = v32;
  [v31 addSubview:*&v31[v32]];
  v36 = OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_backButton;
  v37 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_backButton];
  v38 = OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_mediaOverlayStyle;
  swift_beginAccess();
  v54 = *(v24 + 16);
  v55 = v38;
  v54(v59, &v31[v38], v4);
  v26(v60, enum case for MediaOverlayStyle.light(_:), v4);
  sub_6C6434();
  v39 = v37;
  sub_769430();
  sub_769430();
  if (v63 == v61 && v64 == v62)
  {
    v40 = v4;
    v41 = 2;
  }

  else
  {
    v40 = v4;
    if (sub_76A950())
    {
      v41 = 2;
    }

    else
    {
      v41 = 1;
    }
  }

  v42 = *(v24 + 8);
  v42(v60, v40);
  v42(v59, v40);

  sub_4F6A4C(v41);

  [v31 addSubview:*&v31[v36]];
  v43 = OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_learnMoreLabel;
  [*&v31[v56] addSubview:*&v31[OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_learnMoreLabel]];
  v44 = v57;
  v54(v57, &v31[v55], v40);
  sub_75CA20();
  v42(v44, v40);
  sub_769240();
  v45 = sub_769210();

  v46 = [*&v31[v43] layer];
  [v46 setCompositingFilter:v45];

  sub_BD88(&qword_9477F0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_77E280;
  *(v47 + 32) = sub_767890();
  *(v47 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v47 + 48) = sub_767B80();
  *(v47 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_769F40();
  swift_unknownObjectRelease();

  v48 = *&v31[v43];
  v49 = objc_opt_self();
  v50 = v48;
  v51 = [v49 secondaryLabelColor];
  [v50 setTextColor:v51];

  sub_6C5B90();
  return v31;
}

id sub_6C5B90()
{
  v1 = v0;
  v2 = sub_75CA40();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_contentView);
  v7 = OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_mediaOverlayStyle;
  swift_beginAccess();
  v8 = *(v3 + 16);
  v8(v5, v1 + v7, v2);
  v9 = OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_mediaOverlayStyle;
  swift_beginAccess();
  (*(v3 + 24))(v6 + v9, v5, v2);
  swift_endAccess();
  sub_2172D4();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v11 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_backButton);
  v8(v5, v1 + v7, v2);
  v12 = sub_75CA30();
  v10(v5, v2);
  [v11 setOverrideUserInterfaceStyle:v12];
  v13 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_learnMoreLabel);
  v8(v5, v1 + v7, v2);
  v14 = sub_75CA20();
  v10(v5, v2);
  return [v13 setOverrideUserInterfaceStyle:v14];
}

id sub_6C5DD8()
{
  v1 = v0;
  v31.receiver = v0;
  v31.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v31, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_contentView];
  [v0 bounds];
  [v2 bounds];
  [v2 setBounds:?];
  [v0 bounds];
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  MidX = CGRectGetMidX(v32);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  [v2 setCenter:{MidX, CGRectGetMidY(v33)}];
  v8 = [v0 traitCollection];
  v9 = sub_7699D0();

  if (v9)
  {
    v10 = 16.0;
  }

  else
  {
    v10 = 20.0;
  }

  [v1 bounds];
  sub_769DA0();
  v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_learnMoreLabel];
  [v11 sizeThatFits:?];
  v13 = v12;
  v15 = v14;
  v34.origin.x = v10;
  v34.origin.y = 72.0;
  v34.size.width = v13;
  v34.size.height = v15;
  CGRectGetMaxY(v34);
  [v2 contentSize];
  [v2 setContentSize:?];
  [v11 bounds];
  [v11 setBounds:?];
  v35.origin.x = v10;
  v35.origin.y = 72.0;
  v35.size.width = v13;
  v35.size.height = v15;
  v16 = CGRectGetMidX(v35);
  v36.origin.x = v10;
  v36.origin.y = 72.0;
  v36.size.width = v13;
  v36.size.height = v15;
  [v11 setCenter:{v16, CGRectGetMidY(v36)}];
  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_backButton];
  [v1 bounds];
  [v17 sizeThatFits:{v18, v19}];
  v20 = [v1 traitCollection];
  [v1 bounds];
  sub_769CA0();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [v17 bounds];
  [v17 setBounds:?];
  v37.origin.x = v22;
  v37.origin.y = v24;
  v37.size.width = v26;
  v37.size.height = v28;
  v29 = CGRectGetMidX(v37);
  v38.origin.x = v22;
  v38.origin.y = v24;
  v38.size.width = v26;
  v38.size.height = v28;
  return [v17 setCenter:{v29, CGRectGetMidY(v38)}];
}

uint64_t sub_6C6138()
{
  sub_BD88(&unk_94E620);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_contentView);
  v3 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_contentBasedProtectionView);
  *(v1 + 16) = xmmword_77E280;
  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_fullProtectionView);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  v5 = v4;
  v6 = v3;
  return v1;
}

uint64_t type metadata accessor for AppPromotionLearnMoreView()
{
  result = qword_9623D0;
  if (!qword_9623D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6C62F0()
{
  result = sub_75CA40();
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

uint64_t sub_6C63BC()
{
  sub_BD88(&unk_94E620);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_77E280;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_backButton);
  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_learnMoreLabel);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = v2;
  v5 = v3;
  return v1;
}

unint64_t sub_6C6434()
{
  result = qword_9623E0;
  if (!qword_9623E0)
  {
    sub_75CA40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9623E0);
  }

  return result;
}

id sub_6C6490(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_learnMoreLabel];
  if (qword_93DF40 != -1)
  {
    swift_once();
  }

  v3 = qword_9A04F0;
  v4 = *algn_9A04F8;
  v5 = qword_9A0500;
  v6 = [a1 traitCollection];
  if (sub_769A00())
  {
  }

  else
  {
    v7 = sub_7699D0();

    if (v7)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }
  }

  [v2 setFont:v5];

  return [a1 setNeedsLayout];
}

void sub_6C657C()
{
  v1 = v0;
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_contentView;
  *(v1 + v9) = [objc_allocWithZone(type metadata accessor for AppPromotionScrollableContentContainerView()) init];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_backButton;
  v11 = objc_allocWithZone(type metadata accessor for CardHeaderButton());
  *(v1 + v10) = sub_4F6BB8(1u);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_learnMoreLabel;
  v13 = sub_7666D0();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v14 = objc_allocWithZone(sub_75BB20());
  *(v1 + v12) = sub_75BB10();
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_backButtonAction) = 0;
  v15 = OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_mediaOverlayStyle;
  v16 = enum case for MediaOverlayStyle.matchSystem(_:);
  v17 = sub_75CA40();
  (*(*(v17 - 8) + 104))(v1 + v15, v16, v17);
  sub_76A840();
  __break(1u);
}

uint64_t sub_6C6800(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

id sub_6C6860(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v20 = a2;
  v6 = sub_7656A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  v21 = sub_7656C0();
  v13 = *(v21 - 8);
  v14 = __chkstk_darwin(v21);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v12, enum case for PageGrid.Direction.vertical(_:), v6, v14);
  if (a3)
  {
    result = [v4 view];
    if (!result)
    {
      goto LABEL_7;
    }

    v18 = result;
    [result bounds];
  }

  result = [v4 view];
  if (result)
  {
    v19 = result;
    [result safeAreaInsets];

    (*(v7 + 16))(v9, v12, v6);
    sub_40DC7C(0.0);
    sub_765670();
    (*(v7 + 8))(v12, v6);
    return (*(v13 + 8))(v16, v21);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

char *sub_6C6B40(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_isPresenterLoaded] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_paletteContents;
  v6 = [objc_allocWithZone(UISegmentedControl) init];
  v7 = sub_BD88(&qword_9624F8);
  v8 = objc_allocWithZone(v7);
  *&v8[qword_962468] = v6;
  v32.receiver = v8;
  v32.super_class = v7;
  v9 = v6;
  v10 = objc_msgSendSuper2(&v32, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v10 setLayoutMargins:{8.0, 0.0, 8.0, 0.0}];
  [v10 setPreservesSuperviewLayoutMargins:0];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v14 = v9;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v10 addSubview:v14];

  *&v2[v5] = v10;
  v15 = &v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectedSegmentIndex];
  *v15 = 0;
  v15[8] = 1;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_segmentViewControllers] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_categoriesBarButton] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_overlayViewController] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectCategoryViewController] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_objectGraph] = a2;
  sub_75A110();
  sub_768900();

  sub_768ED0();
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_artworkLoader] = v31;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_presenter] = a1;
  v30.receiver = v2;
  v30.super_class = type metadata accessor for TopChartsDiffablePageViewController();

  v16 = objc_msgSendSuper2(&v30, "initWithNibName:bundle:", 0, 0);
  sub_763110();
  if (v17)
  {
    v18 = sub_769210();
  }

  else
  {
    v18 = 0;
  }

  [v16 setTitle:v18];

  v19 = v16;
  v20 = [v19 navigationItem];
  [v20 setLargeTitleDisplayMode:2];

  v21 = *(*&v19[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_paletteContents] + qword_962468);
  sub_BE70(0, &qword_955FA0);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = v21;

  v24 = sub_76A1F0();
  [v23 addAction:v24 forControlEvents:{4096, 0, 0, 0, sub_6CB008, v22, v30.receiver, v30.super_class}];

  v25 = [v19 navigationItem];
  v26 = [objc_allocWithZone(UINavigationBarAppearance) init];
  [v25 setStandardAppearance:v26];

  v27 = [v19 navigationItem];
  v28 = [objc_allocWithZone(UINavigationBarAppearance) init];
  [v27 setScrollEdgeAppearance:v28];

  return v19;
}

void sub_6C6F9C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_paletteContents;
    v3 = [*(*(Strong + OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_paletteContents) + qword_962468) selectedSegmentIndex];
    v4 = &v1[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectedSegmentIndex];
    v5 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectedSegmentIndex];
    v6 = v1[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectedSegmentIndex + 8];
    *v4 = v3;
    v4[8] = 0;
    [*(*&v1[v2] + qword_962468) setSelectedSegmentIndex:v3];
    if (v6)
    {
      sub_6C9A74();
    }

    else
    {
      sub_6CA11C(v3, v5);
    }
  }
}

id sub_6C709C()
{
  v1 = v0;
  v2 = sub_7656A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = sub_7656C0();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v8, enum case for PageGrid.Direction.vertical(_:), v2, v11);
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v15 = result;
  [result bounds];
  v17 = v16;
  v19 = v18;

  result = [v1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v20 = result;
  [result safeAreaInsets];

  (*(v3 + 16))(v5, v8, v2);
  if (qword_93DFB8 != -1)
  {
    swift_once();
  }

  sub_765670();
  (*(v3 + 8))(v8, v2);
  sub_765550();
  v22 = v21;
  (*(v10 + 8))(v13, v9);
  return (v22 > 1.0);
}

id sub_6C73E0()
{
  v1 = v0;
  v39 = sub_BD88(&qword_962540);
  v2 = *(v39 - 8);
  __chkstk_darwin(v39);
  v4 = &v31 - v3;
  v38 = sub_BD88(&qword_962548);
  v5 = *(v38 - 8);
  __chkstk_darwin(v38);
  v7 = &v31 - v6;
  v8 = sub_BD88(&qword_962550);
  v37 = *(v8 - 8);
  __chkstk_darwin(v8);
  v36 = &v31 - v9;
  v10 = type metadata accessor for TopChartsDiffablePageViewController();
  v42.receiver = v0;
  v42.super_class = v10;
  objc_msgSendSuper2(&v42, "viewDidLoad");
  sub_6C6860(0, 0, 1);
  result = [v0 view];
  if (result)
  {
    v12 = result;
    v32 = v8;
    v33 = v7;
    v34 = v5;
    sub_BE70(0, &qword_93E540);
    v13 = sub_76A000();
    [v12 setBackgroundColor:v13];

    v35 = v10;
    v41 = v10;
    v40[0] = v1;
    v14 = v1;
    v15 = sub_769210();
    v16 = v41;
    if (v41)
    {
      v17 = sub_B170(v40, v41);
      v18 = *(v16 - 8);
      v19 = __chkstk_darwin(v17);
      v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v21, v19);
      v22 = sub_76A930();
      (*(v18 + 8))(v21, v16);
      sub_BEB8(v40);
    }

    else
    {
      v22 = 0;
    }

    v23 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v15 style:0 target:v22 action:"showCategoriesFor:"];

    swift_unknownObjectRelease();
    v24 = *&v14[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_categoriesBarButton];
    *&v14[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_categoriesBarButton] = v23;

    v25 = *&v14[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_paletteContents];
    [v25 setAutoresizingMask:18];
    [v25 sizeToFit];
    v26 = [objc_allocWithZone(_UINavigationBarPalette) initWithContentView:v25];
    [v26 _setContentViewMarginType:0];
    v27 = [v14 navigationItem];
    v28 = v26;
    [v27 _setBottomPalette:v28];

    swift_unknownObjectWeakAssign();
    sub_6C9274();

    sub_761830();
    sub_BD88(&qword_962558);
    sub_6CC448(&qword_962560, &qword_962558);
    sub_768710();
    v29 = v36;
    sub_768720();

    sub_BEB8(v40);
    (*(v37 + 8))(v29, v32);
    sub_7630F0();
    sub_BD88(&qword_962568);
    sub_6CC448(&qword_962570, &qword_962568);
    sub_768710();
    v30 = v33;
    sub_768720();

    sub_BEB8(v40);
    (*(v34 + 8))(v30, v38);
    sub_763100();
    sub_BD88(&qword_962578);
    sub_6CC448(&qword_962580, &qword_962578);
    sub_768710();
    sub_768720();

    sub_BEB8(v40);
    return (*(v2 + 8))(v4, v39);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id (*sub_6C7A9C(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_6CC584;
}

uint64_t (*sub_6C7B00(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_6CC560;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_B311C;
}

uint64_t (*sub_6C7B90(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_6CC4D4;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_6CC530;
}

id sub_6C7E80()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for TopChartsDiffablePageViewController();
  objc_msgSendSuper2(&v14, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_overlayViewController];
  if (!v1)
  {
    return sub_6C93C0();
  }

  v2 = v1;
  result = [v2 view];
  if (result)
  {
    v4 = result;
    result = [v0 view];
    if (result)
    {
      v5 = result;
      [result bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      [v4 setFrame:{v7, v9, v11, v13}];
      return sub_6C93C0();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_6C815C(void *a1, double a2, double a3)
{
  v18.receiver = v3;
  v18.super_class = type metadata accessor for TopChartsDiffablePageViewController();
  objc_msgSendSuper2(&v18, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = a2;
    *(v8 + 32) = a3;
    v16 = sub_6CC434;
    v17 = v8;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_6C6800;
    v15 = &unk_89D308;
    v9 = _Block_copy(&v12);

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = sub_6CC440;
    v17 = v10;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_6C6800;
    v15 = &unk_89D330;
    v11 = _Block_copy(&v12);

    [a1 animateAlongsideTransition:v9 completion:v11];
    _Block_release(v11);
    _Block_release(v9);
  }
}

id sub_6C8330()
{
  v0 = sub_7656A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  v7 = sub_7656C0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    (*(v1 + 104))(v6, enum case for PageGrid.Direction.vertical(_:), v0);
    result = [v12 view];
    if (result)
    {
      v13 = result;
      [result safeAreaInsets];

      (*(v1 + 16))(v3, v6, v0);
      sub_40DC7C(0.0);
      sub_765670();

      (*(v1 + 8))(v6, v0);
      return (*(v8 + 8))(v10, v7);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_6C85EC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_6C9274();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    sub_6C93C0();
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    sub_6C9A74();
  }
}

id sub_6C8718(uint64_t a1)
{
  v2 = v1;
  v4 = sub_767140();
  __chkstk_darwin(v4 - 8);
  v5 = sub_763090();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v9, a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for TopChartsDiffablePagePresenter.UpdatePhase.completed(_:))
  {
    (*(v6 + 96))(v9, v5);
    v11 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_categoriesBarButton];
    if (v11)
    {
      [v11 setEnabled:1];
    }

    sub_6CB200();
    v12 = OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_overlayViewController;
    v13 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_overlayViewController];
    sub_761930();

    v14 = *&v2[v12];
    *&v2[v12] = 0;

    result = [v2 view];
    if (result)
    {
      v16 = result;
      [result bounds];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      v55 = v18;
      v56 = v20;
      v57 = v22;
      v58 = v24;
      v59 = 0;
      sub_761920();
      if (sub_7617F0())
      {
        sub_75CA90();
      }

      sub_7617E0();
    }

    __break(1u);
    goto LABEL_20;
  }

  if (v10 == enum case for TopChartsDiffablePagePresenter.UpdatePhase.error(_:))
  {
    (*(v6 + 96))(v9, v5);
    v25 = v9[1];
    sub_6CB2F8(*v9);
    sub_F704(v25);
  }

  if (v10 == enum case for TopChartsDiffablePagePresenter.UpdatePhase.started(_:))
  {
    sub_7617E0();
    sub_767130();
    v26 = objc_allocWithZone(sub_767160());
    v27 = sub_767150();
    v28 = OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_overlayViewController;
    v29 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_overlayViewController];
    sub_761930();

    v30 = *&v2[v28];
    *&v2[v28] = v27;
    v31 = v27;

    result = [v2 view];
    if (!result)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v32 = result;
    [result bounds];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;

    v55 = v34;
    v56 = v36;
    v57 = v38;
    v58 = v40;
    v59 = 0;
    sub_761920();

    result = *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_categoriesBarButton];
    if (result)
    {
      return [result setEnabled:0];
    }
  }

  else
  {
    v41 = OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_overlayViewController;
    v42 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_overlayViewController];
    sub_761930();

    v43 = *&v2[v41];
    *&v2[v41] = 0;

    result = [v2 view];
    if (!result)
    {
LABEL_21:
      __break(1u);
      return result;
    }

    v44 = result;
    [result bounds];
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;

    v55 = v46;
    v56 = v48;
    v57 = v50;
    v58 = v52;
    v59 = 0;
    sub_761920();
    v53 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_categoriesBarButton];
    if (v53)
    {
      [v53 setEnabled:1];
    }

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

void sub_6C8BC8(unint64_t a1)
{
  v1 = a1;
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  if (v3)
  {
    sub_76A7C0();
    if (v3 < 0)
    {
      __break(1u);
      goto LABEL_55;
    }

    v31 = (v1 & 0xFFFFFFFFFFFFFF8);
    if (v2)
    {
      v4 = sub_76A860();
    }

    else
    {
      v4 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    }

    v5 = 0;
    v6 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_objectGraph];
    v7 = v4 & ~(v4 >> 63);
    do
    {
      if (v7 == v5)
      {
        goto LABEL_46;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v8 = sub_76A770();
      }

      else
      {
        if (v5 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_50;
        }

        v8 = *(v1 + 8 * v5 + 32);
      }

      v9 = sub_6C709C();
      v10 = v5++ != 0;
      v11 = sub_6CC3B4(&qword_962500, &type metadata accessor for TopChartDiffableSegmentPresenter);
      v12 = sub_6A0B30(v6, v8, v11, _swiftEmptyArrayStorage, 0x7472616843706F74, 0xEF746E656D676553);
      v13 = objc_allocWithZone(type metadata accessor for TopChartDiffableSegmentViewController());
      v13[qword_9586B0] = v9;
      v13[qword_9586B8] = v10;
      v2 = sub_46E5A4(v8, v12);
      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
    }

    while (v3 != v5);
  }

  v31 = _swiftEmptyArrayStorage;
  v30 = OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_segmentViewControllers;
  v1 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_segmentViewControllers];
  if (v1 >> 62)
  {
    v14 = sub_76A860();
  }

  else
  {
    v14 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  }

  if (v14)
  {
    v15 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v16 = sub_76A770();
      }

      else
      {
        if (v15 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_48;
        }

        v16 = *(v1 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_47;
      }

      v19 = [v16 parentViewController];
      if (v19)
      {
        v2 = v19;
        sub_BE70(0, &qword_9434E0);
        v20 = v32;
        v21 = sub_76A1C0();

        if (v21)
        {
          [v17 willMoveToParentViewController:0];
          v22 = [v17 view];
          if (!v22)
          {
            __break(1u);
            return;
          }

          v2 = v22;
          [v22 removeFromSuperview];

          [v17 removeFromParentViewController];
        }
      }

      ++v15;
    }

    while (v18 != v14);
  }

  *&v32[v30] = _swiftEmptyArrayStorage;

  sub_6C93C0();
  sub_6C9A74();
  v30 = qword_962468;
  v31 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_paletteContents];
  [*(v31 + qword_962468) removeAllSegments];
  v23 = sub_7630C0();
  if (v23 >> 62)
  {
    v2 = sub_76A860();
  }

  else
  {
    v2 = *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8));
  }

  if (v2 > 1)
  {
    v24 = sub_7630C0();
    v1 = v24;
    if (!(v24 >> 62))
    {
      v25 = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
      if (v25)
      {
LABEL_35:
        v26 = 0;
        while (1)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            sub_76A770();
            v28 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              goto LABEL_45;
            }
          }

          else
          {
            if (v26 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_49;
            }

            v28 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              v3 = sub_76A860();
              goto LABEL_3;
            }
          }

          v2 = *(v31 + v30);
          sub_763600();
          if (v29)
          {
            v27 = sub_769210();
          }

          else
          {
            v27 = 0;
          }

          [v2 insertSegmentWithTitle:v27 atIndex:v26 animated:{0, v30}];

          ++v26;
          if (v28 == v25)
          {
            goto LABEL_56;
          }
        }
      }

      goto LABEL_56;
    }

LABEL_55:
    v25 = sub_76A860();
    if (v25)
    {
      goto LABEL_35;
    }

LABEL_56:

    if ((v32[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectedSegmentIndex + 8] & 1) == 0)
    {
      [*(v31 + v30) setSelectedSegmentIndex:*&v32[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectedSegmentIndex]];
    }
  }

  sub_6C9274();
}

void sub_6C9138(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_categoriesBarButton;
  v4 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_categoriesBarButton];
  if (v4 && (!a2 ? (v5 = v4, v6 = 0) : (v5 = v4, v6 = sub_769210()), ([v5 setTitle:v6], v5, v6, (v7 = *&v2[v3]) != 0) && (v8 = objc_msgSend(v7, "title")) != 0))
  {

    v10 = [v2 navigationItem];
    v9 = *&v2[v3];
    [v10 setRightBarButtonItem:v9];
  }

  else
  {
    v10 = [v2 navigationItem];
    [v10 setRightBarButtonItem:0];
  }
}

void sub_6C9274()
{
  v1 = sub_6C709C();
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_paletteContents);
  if (v1 || [*&v2[qword_962468] numberOfSegments] <= 0 && (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_isPresenterLoaded) & 1) != 0)
  {
    [v2 setHidden:1];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      [Strong setPreferredHeight:0.0];
    }
  }

  else
  {
    [v2 sizeToFit];
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      [v2 frame];
      [v5 setPreferredHeight:CGRectGetHeight(v8)];
    }

    [v2 setHidden:0];
  }
}

id sub_6C93C0()
{
  v1 = v0;
  v2 = sub_7656A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v61 - v7;
  v9 = sub_7656C0();
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = __chkstk_darwin(v9);
  v68 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v8, enum case for PageGrid.Direction.vertical(_:), v2, v10);
  v12 = &selRef_setTextAlignment_;
  result = [v1 view];
  if (!result)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v14 = result;
  [result bounds];
  v16 = v15;
  v18 = v17;

  result = [v1 view];
  if (!result)
  {
LABEL_48:
    __break(1u);
    return result;
  }

  v19 = result;
  v66 = v16;
  v67 = v18;
  [result safeAreaInsets];

  (*(v3 + 16))(v5, v8, v2);
  if (qword_93DFB8 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {

    v20 = v68;
    sub_765670();
    (*(v3 + 8))(v8, v2);
    v2 = v20;
    sub_765650();
    v22 = v21;
    v61 = OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_segmentViewControllers;
    v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_segmentViewControllers];
    v23 = v1;
    if (!(v3 >> 62))
    {
      v66 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
LABEL_6:
      v67 = v3 & 0xFFFFFFFFFFFFFF8;
      v24 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
      goto LABEL_7;
    }

    v66 = sub_76A860();
    v3 = *&v1[v61];
    if (!(v3 >> 62))
    {
      goto LABEL_6;
    }

    v67 = v3 & 0xFFFFFFFFFFFFFF8;
    v24 = sub_76A860();
LABEL_7:

    if (!v24)
    {
      break;
    }

    v25 = 0;
    v64 = v3;
    v65 = v3 & 0xC000000000000001;
    while (1)
    {
      if (v65)
      {
        v26 = sub_76A770();
      }

      else
      {
        if (v25 >= *(v67 + 16))
        {
          goto LABEL_36;
        }

        v26 = *(v3 + 8 * v25 + 32);
      }

      v1 = v26;
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v28 = sub_6C709C();
      sub_4FE738(v28, v25 != 0);
      if (v66 == 1)
      {
        sub_765BE0();
      }

      sub_765630();
      v30 = v29;
      result = [v1 v12[28]];
      if (!result)
      {
        goto LABEL_44;
      }

      v31 = result;
      result = [v23 v12[28]];
      if (!result)
      {
        goto LABEL_45;
      }

      v8 = v23;
      v32 = v12;
      v33 = result;
      [result bounds];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;

      v69.origin.x = v35;
      v69.origin.y = v37;
      v69.size.width = v39;
      v69.size.height = v41;
      MinY = CGRectGetMinY(v69);
      v43 = v32;
      result = [v8 v32[28]];
      if (!result)
      {
        goto LABEL_46;
      }

      v44 = result;
      v23 = v8;
      [result bounds];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;

      v70.origin.x = v46;
      v70.origin.y = v48;
      v70.size.width = v50;
      v70.size.height = v52;
      [v31 setFrame:{v22, MinY, v30, CGRectGetHeight(v70)}];

      v2 = v8;
      if (sub_6C709C())
      {
        v2 = v68;
        sub_7655F0();
        v54 = v53;

        v22 = v22 + v30 + v54;
      }

      else
      {
      }

      ++v25;
      v12 = v43;
      v3 = v64;
      if (v27 == v24)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

LABEL_24:

  if (sub_6C709C())
  {
    goto LABEL_25;
  }

  v55 = &v23[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectedSegmentIndex];
  if (v23[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectedSegmentIndex + 8])
  {
    goto LABEL_25;
  }

  v56 = *v55;
  if (*v55 < 0)
  {
    goto LABEL_25;
  }

  v57 = *&v23[v61];
  if (v57 >> 62)
  {
    result = sub_76A860();
    if (v56 >= result)
    {
      goto LABEL_25;
    }

LABEL_31:
    v58 = *&v23[v61];
    if ((v58 & 0xC000000000000001) != 0)
    {

      v59 = sub_76A770();

      goto LABEL_34;
    }

    if (v56 < *(&dword_10 + (v58 & 0xFFFFFFFFFFFFFF8)))
    {
      v59 = *(v58 + 8 * v56 + 32);
LABEL_34:
      v60 = [v59 collectionView];

      [v23 setContentScrollView:v60 forEdge:15];
      return (*(v62 + 8))(v68, v63);
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  result = *(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8));
  if (v56 < result)
  {
    goto LABEL_31;
  }

LABEL_25:
  [v23 setContentScrollView:0 forEdge:{15, v61}];
  return (*(v62 + 8))(v68, v63);
}

void sub_6C9A74()
{
  v1 = v0;
  v2 = sub_7656A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v41 - v7;
  v55 = sub_7656C0();
  v9 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_segmentViewControllers];
  if (v11 >> 62)
  {
LABEL_32:
    v12 = sub_76A860();
  }

  else
  {
    v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
  }

  v13 = OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectedSegmentIndex;

  if (v12)
  {
    v14 = 0;
    v42 = &v1[v13];
    v52 = v11 & 0xFFFFFFFFFFFFFF8;
    v53 = v11 & 0xC000000000000001;
    v51 = enum case for PageGrid.Direction.vertical(_:);
    v49 = (v3 + 16);
    v50 = (v3 + 104);
    v47 = (v9 + 1);
    v48 = (v3 + 8);
    left = UIEdgeInsetsZero.left;
    top = UIEdgeInsetsZero.top;
    v9 = &selRef_setTextAlignment_;
    v43 = v11;
    v44 = v12;
    v56 = v1;
    while (1)
    {
      if (v53)
      {
        v15 = sub_76A770();
      }

      else
      {
        if (v14 >= *(v52 + 16))
        {
          goto LABEL_31;
        }

        v15 = *(v11 + 8 * v14 + 32);
      }

      v16 = v15;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v57 = v14 + 1;
      (*v50)(v8, v51, v2);
      v17 = [v1 v9[28]];
      if (!v17)
      {
        break;
      }

      v18 = v17;
      [v17 bounds];

      v19 = [v1 v9[28]];
      if (!v19)
      {
        goto LABEL_34;
      }

      v20 = v19;
      [v19 safeAreaInsets];

      (*v49)(v5, v8, v2);
      if (qword_93DFB8 != -1)
      {
        swift_once();
      }

      v21 = v54;
      sub_765670();
      (*v48)(v8, v2);
      v3 = v21;
      sub_765550();
      v23 = v22;
      (*v47)(v21, v55);
      if (v23 > 1.0 || (v42[8] & 1) == 0 && v14 == *v42)
      {
        v24 = v16;
        v25 = [v24 parentViewController];
        v9 = &selRef_setTextAlignment_;
        if (!v25 || (v26 = v25, sub_BE70(0, &qword_9434E0), v27 = v8, v28 = v5, v29 = v2, v30 = v56, v31 = sub_76A1C0(), v26, v30, v2 = v29, v5 = v28, v8 = v27, v9 = &selRef_setTextAlignment_, (v31 & 1) == 0))
        {
          v32 = v56;
          [v56 addChildViewController:v24];
          v33 = [v32 v9[28]];
          if (!v33)
          {
            goto LABEL_36;
          }

          v34 = v33;
          v35 = [v24 v9[28]];
          if (!v35)
          {
            goto LABEL_37;
          }

          v36 = v35;
          [v34 addSubview:v35];

          [v24 didMoveToParentViewController:v32];
        }

        v3 = [v24 v9[28]];

        v11 = v43;
        if (!v3)
        {
          goto LABEL_35;
        }

        [v3 setAlpha:1.0];

        v1 = v56;
      }

      else
      {
        v37 = [v16 parentViewController];
        v9 = &selRef_setTextAlignment_;
        v1 = v56;
        if (v37)
        {
          v38 = v37;
          sub_BE70(0, &qword_9434E0);
          v39 = v1;
          v3 = sub_76A1C0();

          v11 = v43;
          if (v3)
          {
            [v16 willMoveToParentViewController:0];
            v40 = [v16 view];
            if (!v40)
            {
              goto LABEL_38;
            }

            v3 = v40;
            [v40 removeFromSuperview];

            [v16 removeFromParentViewController];
          }
        }
      }

      ++v14;
      if (v57 == v44)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {
LABEL_29:
  }
}

void sub_6CA11C(unint64_t a1, unint64_t a2)
{
  if (a2 != a1)
  {
    v4 = OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_segmentViewControllers;
    v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_segmentViewControllers];
    if ((v5 & 0xC000000000000001) == 0)
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)) > a2)
      {
        v6 = *(v5 + 8 * a2 + 32);
        if ((v5 & 0xC000000000000001) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_21;
    }

    v6 = sub_76A770();

    v5 = *&v2[v4];
    if ((v5 & 0xC000000000000001) == 0)
    {
LABEL_6:
      if ((a1 & 0x8000000000000000) == 0)
      {
        if (*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)) > a1)
        {
          v7 = *(v5 + 8 * a1 + 32);
          goto LABEL_9;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_18:

    v25 = sub_76A770();

    v7 = v25;
LABEL_9:
    v8 = v7;
    v9 = [v8 parentViewController];
    if (!v9 || (v10 = v9, sub_BE70(0, &qword_9434E0), v11 = v2, v12 = sub_76A1C0(), v10, v11, (v12 & 1) == 0))
    {
      [v2 addChildViewController:v8];
      v13 = [v2 view];
      if (!v13)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v14 = v13;
      v15 = [v8 view];
      if (!v15)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v16 = v15;
      [v14 addSubview:v15];

      [v8 didMoveToParentViewController:v2];
    }

    v17 = [v8 view];

    if (v17)
    {
      [v17 setAlpha:0.0];

      v18 = objc_opt_self();
      v19 = swift_allocObject();
      *(v19 + 16) = v6;
      *(v19 + 24) = v8;
      v30 = sub_6CC318;
      v31 = v19;
      v26 = _NSConcreteStackBlock;
      v27 = 1107296256;
      v28 = sub_23F0CC;
      v29 = &unk_89D290;
      v20 = _Block_copy(&v26);
      v21 = v8;
      v22 = v6;

      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = sub_6CC338;
      v31 = v23;
      v26 = _NSConcreteStackBlock;
      v27 = 1107296256;
      v28 = sub_3D6D80;
      v29 = &unk_89D2B8;
      v24 = _Block_copy(&v26);

      [v18 animateWithDuration:v20 animations:v24 completion:0.3];
      _Block_release(v24);
      _Block_release(v20);

      return;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }
}

void sub_6CA4CC(void *a1, void *a2)
{
  v3 = [a1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 setAlpha:0.0];

  v5 = [a2 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 setAlpha:1.0];
}

void sub_6CA570()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_6C9A74();
  }
}

id sub_6CA654()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TopChartsDiffablePageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_6CA800(double a1)
{
  v2 = v1;
  v4 = sub_7656A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = sub_7656C0();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v10, enum case for PageGrid.Direction.vertical(_:), v4, v13);
  (*(v5 + 16))(v7, v10, v4);
  sub_40DC7C(0.0);
  sub_765670();
  (*(v5 + 8))(v10, v4);
  sub_765620();
  (*(v12 + 8))(v15, v11);
  sub_769DA0();
  [*&v2[qword_962468] sizeThatFits:?];
  [v2 layoutMargins];
  sub_769DC0();
  return a1;
}

double sub_6CAACC(void *a1, double a2)
{
  v3 = a1;
  v4 = sub_6CA800(a2);

  return v4;
}

void sub_6CAB20()
{
  v1 = v0;
  v2 = sub_7656A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  v9 = sub_7656C0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PaletteContentView();
  v22.receiver = v1;
  v22.super_class = v13;
  objc_msgSendSuper2(&v22, "layoutSubviews");
  [v1 bounds];
  (*(v3 + 104))(v8, enum case for PageGrid.Direction.vertical(_:), v2);
  (*(v3 + 16))(v5, v8, v2);
  sub_40DC7C(0.0);
  sub_765670();
  (*(v3 + 8))(v8, v2);
  sub_765620();
  v15 = v14;
  (*(v10 + 8))(v12, v9);
  [v1 bounds];
  sub_769DA0();
  v17 = v16;
  [*&v1[qword_962468] sizeThatFits:?];
  v19 = v18;
  v20 = *&v1[qword_962468];
  [v1 layoutMargins];
  [v20 setFrame:{v15, v21, v17, v19}];
}

void sub_6CAE74(void *a1)
{
  v1 = a1;
  sub_6CAB20();
}

id sub_6CAEE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaletteContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_6CAF7C()
{
  result = qword_9624F0;
  if (!qword_9624F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9624F0);
  }

  return result;
}

uint64_t sub_6CAFD0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_6CB010()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_isPresenterLoaded) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_paletteContents;
  v2 = [objc_allocWithZone(UISegmentedControl) init];
  v3 = sub_BD88(&qword_9624F8);
  v4 = objc_allocWithZone(v3);
  *&v4[qword_962468] = v2;
  v12.receiver = v4;
  v12.super_class = v3;
  v5 = v2;
  v6 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v6 setLayoutMargins:{8.0, 0.0, 8.0, 0.0}];
  [v6 setPreservesSuperviewLayoutMargins:0];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v10 = v5;
  [v10 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v6 addSubview:v10];

  *(v0 + v1) = v6;
  v11 = v0 + OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectedSegmentIndex;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_segmentViewControllers) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_categoriesBarButton) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_overlayViewController) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectCategoryViewController) = 0;
  sub_76A840();
  __break(1u);
}

void sub_6CB200()
{
  v1 = v0;
  sub_763110();
  if (v2)
  {
    v3 = sub_769210();
  }

  else
  {
    v3 = 0;
  }

  [v0 setTitle:v3];

  v4 = sub_7630E0();
  v5 = &v1[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectedSegmentIndex];
  v6 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectedSegmentIndex];
  v7 = v1[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectedSegmentIndex + 8];
  *v5 = v4;
  v5[8] = 0;
  [*(*&v1[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_paletteContents] + qword_962468) setSelectedSegmentIndex:v4];
  if (v7)
  {

    sub_6C9A74();
  }

  else
  {

    sub_6CA11C(v4, v6);
  }
}

id sub_6CB2F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_768CD0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_768670();
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_768940();
  v46 = *(v11 - 8);
  v47 = v11;
  __chkstk_darwin(v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v14 - 8);
  v16 = &v42 - v15;
  v17 = sub_7630C0();
  if (v17 >> 62)
  {
    v45 = v5;
    v25 = sub_76A860();
    v5 = v45;

    if (v25)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));

    if (v18)
    {
LABEL_3:
      if (qword_93DEF8 != -1)
      {
        swift_once();
      }

      v19 = sub_768FF0();
      sub_BE38(v19, qword_9A0418);
      sub_BD88(&qword_93FD00);
      sub_7685F0();
      *(swift_allocObject() + 16) = xmmword_77DC20;
      v53 = type metadata accessor for TopChartsDiffablePageViewController();
      v52[0] = v2;
      v20 = v2;
      sub_7685C0();
      sub_10A2C(v52, &unk_93FBD0);
      sub_768540();
      swift_getErrorValue();
      v21 = v50;
      v22 = v51;
      v53 = v51;
      v23 = sub_B1B4(v52);
      (*(*(v22 - 8) + 16))(v23, v21, v22);
      sub_7685E0();
      sub_10A2C(v52, &unk_93FBD0);
      sub_768EA0();
    }
  }

  v45 = v5;
  v43 = v4;
  sub_767230();
  sub_6CC3B4(&qword_962508, &type metadata accessor for TopChartsDiffablePagePresenter);
  swift_errorRetain();

  v44 = a1;
  v26 = sub_7671F0();
  v27 = OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_overlayViewController;
  v28 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_overlayViewController];
  sub_761930();

  v29 = *&v2[v27];
  *&v2[v27] = v26;
  v30 = v26;

  result = [v2 view];
  if (result)
  {
    v31 = result;
    [result bounds];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    v52[0] = v33;
    v52[1] = v35;
    v52[2] = v37;
    v53 = v39;
    v54 = 0;
    sub_761920();

    sub_763130();
    v40 = sub_7570A0();
    v41 = *(v40 - 8);
    if ((*(v41 + 48))(v16, 1, v40) == 1)
    {
      sub_10A2C(v16, &unk_93FD30);
    }

    else
    {
      sub_757020();
      (*(v41 + 8))(v16, v40);
    }

    sub_75BE60();
    swift_allocObject();
    swift_errorRetain();
    sub_75BE50();
    sub_761800();
    sub_759D10();
    sub_768CB0();
    sub_768930();

    (*(v45 + 8))(v7, v43);
    (*(v48 + 8))(v10, v49);
    return (*(v46 + 8))(v13, v47);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_6CB9C8(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_BD88(&qword_962510);
  __chkstk_darwin(v7 - 8);
  v53 = v45 - v8;
  v9 = sub_BD88(&qword_962518);
  __chkstk_darwin(v9 - 8);
  v11 = v45 - v10;
  v48 = sub_BD88(&qword_962520);
  __chkstk_darwin(v48);
  v13 = v45 - v12;
  v14 = sub_757640();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v52 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = v45 - v19;
  v21 = &a3[OBJC_IVAR____TtC18ASMessagesProvider28SelectCategoryViewController_selectionHandler];
  *v21 = 0;
  *(v21 + 1) = 0;
  v57.receiver = a3;
  v57.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v57, "initWithNibName:bundle:", 0, 0, v18);
  v23 = _swiftEmptyArrayStorage;
  v56 = _swiftEmptyArrayStorage;
  v47 = v22;
  v51 = v20;
  sub_757630();
  v24 = *(a1 + 40);
  v54 = a1;
  sub_B170((a1 + 16), v24);
  sub_762AE0();
  v25 = v53;
  sub_6CC344(v11, v53);
  v49 = *(v15 + 16);
  v50 = v15 + 16;
  v49(v13, v25, v14);
  v26 = *(sub_BD88(&qword_962528) + 36);
  sub_6CC3B4(&qword_962530, &type metadata accessor for IndexPath);
  sub_7696F0();
  v28 = *(v15 + 8);
  v27 = v15 + 8;
  v46 = v28;
  v28(v25, v14);
  sub_7696C0();
  if (*&v13[v26] == v55[0])
  {
    v36 = 0;
    goto LABEL_10;
  }

  v45[1] = v27;
  v53 = sub_6CC3B4(&qword_962538, &type metadata accessor for IndexPath);
  v29 = 0;
  while (1)
  {
    sub_769180();
    v33 = sub_769710();
    v35 = *v34;
    v33(v55, 0);
    v36 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v29)
    {
      v37 = v35;
      v38 = v51;
      sub_757600(v37);
      v39 = v52;
      v49(v52, v38, v14);
      v40 = objc_allocWithZone(type metadata accessor for CategoryListViewController());
      v41 = v54;

      sub_71CDE4(v41, a2, v39, v40);

      sub_769440();
      if (*(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v56 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
LABEL_8:
        sub_7694C0();
      }
    }

    else
    {
      v30 = v54;

      v31 = v52;
      sub_757630();
      v32 = objc_allocWithZone(type metadata accessor for CategoryListViewController());
      sub_71CDE4(v30, a2, v31, v32);

      sub_769440();
      if (*(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v56 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        goto LABEL_8;
      }
    }

    sub_769500();
    v23 = v56;
    sub_7696C0();
    ++v29;
    if (*&v13[v26] == v55[0])
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_10:
  *&v13[*(v48 + 36)] = v36;
  sub_10A2C(v13, &qword_962520);

  v42 = v47;
  sub_141B3C(v23);

  sub_BE70(0, &qword_9434E0);
  isa = sub_769450().super.isa;

  [v42 setViewControllers:isa];

  v46(v51, v14);
  return v42;
}

void sub_6CBFD0()
{
  v1 = v0;
  v2 = sub_757640();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_presenter);
  sub_757630();
  v22 = sub_763140();
  v23 = &protocol witness table for TopChartsDiffablePagePresenter;
  *&v21 = v6;
  v7 = *(v3 + 8);

  v7(v5, v2);
  type metadata accessor for TopChartsCategoriesDataSource();
  v8 = swift_allocObject();
  sub_10914(&v21, v8 + 16);
  sub_75A110();
  swift_allocObject();

  v9 = sub_75A0F0();
  v10 = objc_allocWithZone(type metadata accessor for SelectCategoryViewController());
  v11 = sub_6CB9C8(v8, v9, v10);

  v12 = v11;
  v24._object = 0x80000000007F1540;
  v24._countAndFlagsBits = 0xD000000000000015;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_75B750(v24, v25);
  v13 = sub_769210();

  [v12 setTitle:v13];

  v14 = &v12[OBJC_IVAR____TtC18ASMessagesProvider28SelectCategoryViewController_selectionHandler];
  v15 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider28SelectCategoryViewController_selectionHandler];
  *v14 = sub_6CC340;
  v14[1] = v6;
  swift_retain_n();
  sub_F704(v15);
  sub_71BA40();

  v16 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_categoriesBarButton);
  v17 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_objectGraph);
  v18 = v16;
  sub_71CF94(v16, v17);

  v19 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectCategoryViewController);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectCategoryViewController) = v12;
}

uint64_t sub_6CC2D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_6CC320(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_6CC344(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_962510);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6CC3B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_6CC3FC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_6CC448(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_133D8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_6CC49C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6CC4F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

UIColor sub_6CC5CC()
{
  sub_396E8();
  v0 = [objc_allocWithZone(UIColor) initWithRed:0.929411765 green:0.964705882 blue:1.0 alpha:1.0];
  v1.super.isa = [objc_allocWithZone(UIColor) initWithRed:0.11372549 green:0.137254902 blue:0.176470588 alpha:1.0];
  v2.super.isa = v0;
  result.super.isa = sub_76A0C0(v2, v1).super.isa;
  qword_9A0850 = result.super.isa;
  return result;
}

UIColor sub_6CC670()
{
  sub_396E8();
  v0 = objc_opt_self();
  v1 = [v0 systemBlueColor];
  v2 = [v1 colorWithAlphaComponent:0.07];

  v3 = [v0 whiteColor];
  v4 = [v3 colorWithAlphaComponent:0.05];

  v5.super.isa = v2;
  v6.super.isa = v4;
  result.super.isa = sub_76A0C0(v5, v6).super.isa;
  qword_9A0858 = result.super.isa;
  return result;
}

uint64_t sub_6CC744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_75ACC0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7677A0();
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
    sub_767790();
    if (qword_93E100 != -1)
    {
      swift_once();
    }

    v17 = qword_9A0850;
    sub_767760();
    sub_767760();
    if (qword_93E108 != -1)
    {
      swift_once();
    }

    v18 = qword_9A0858;
    sub_767720();
    sub_767730();
    sub_767740();
    goto LABEL_15;
  }

  sub_765550();
  if (v16 > 1.0)
  {
    goto LABEL_5;
  }

LABEL_12:
  sub_767790();
  if (qword_93E100 != -1)
  {
    swift_once();
  }

  v20 = qword_9A0850;
  sub_767760();
  (*(v7 + 8))(v9, v6);
LABEL_15:
  sub_6CCC04(a1, a2);
  sub_767770();
  (*(v11 + 32))(a3, v14, v10);
  return (*(v11 + 56))(a3, 0, 1, v10);
}

uint64_t sub_6CCAD8()
{
  sub_767790();
  if (qword_93E100 != -1)
  {
    swift_once();
  }

  v0 = qword_9A0850;
  sub_767760();
  sub_767760();
  if (qword_93E108 != -1)
  {
    swift_once();
  }

  v1 = qword_9A0858;
  sub_767720();
  sub_767730();
  sub_767740();
  return sub_767770();
}

double sub_6CCC04(uint64_t a1, uint64_t a2)
{
  v3 = sub_75ACC0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_765550();
  if (v7 <= 1.0)
  {
    (*(v4 + 16))(v6, a2, v3);
    if ((*(v4 + 88))(v6, v3) == enum case for ItemBackground.insetAd(_:))
    {
      return -10.0;
    }

    else
    {
      sub_765570();
      v9 = v10 * -0.5;
      sub_765620();
      sub_765570();
      sub_765620();
      (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    sub_765570();
    v9 = v8 * -0.5;
    sub_7655F0();
    sub_765570();
    sub_7655F0();
  }

  return v9;
}

double sub_6CCDF8()
{
  sub_75F8F0();
  sub_6CCF3C(&qword_962590, &type metadata accessor for ArcadeDownloadPackCard);
  sub_75C750();
  if (!v6)
  {
    return 0.0;
  }

  v0 = sub_75F8D0();
  if (v1)
  {
    v2 = sub_75F8E0();
    if (v2 >> 62)
    {
      v3 = sub_76A860();
    }

    else
    {
      v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    }
  }

  else
  {
    v3 = v0;
  }

  swift_getKeyPath();
  sub_75C7B0();

  v4 = sub_755CB8(v3, v6);

  return v4;
}

uint64_t sub_6CCF3C(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_6CCF98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 9);
  v3 = *(a2 + 8);
  v4 = *(a2 + 9);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (v2 != 2)
  {
    return v4 != 2 && ((v4 ^ v2) & 1) == 0;
  }

  return v4 == 2;
}

uint64_t sub_6CCFFC()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_962598);
  sub_BE38(v4, qword_962598);
  if (qword_93DAB8 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99F820);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

void sub_6CD1D4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_7666D0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v55 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_760AD0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v17 - 8);
  v19 = &v54 - v18;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackDescription;
  if (qword_93DAB0 != -1)
  {
    swift_once();
  }

  v21 = sub_BE38(v10, qword_99F808);
  v22 = *(v11 + 16);
  v22(v19, v21, v10);
  (*(v11 + 56))(v19, 0, 1, v10);
  (*(v14 + 104))(v16, enum case for DirectionalTextAlignment.none(_:), v13);
  v23 = objc_allocWithZone(sub_75BB20());
  *&v5[v20] = sub_75BB10();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackButtons] = _swiftEmptyArrayStorage;
  v24 = &v5[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedIndex];
  *v24 = 0;
  v24[8] = 1;
  v25 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground;
  *&v5[v25] = [objc_allocWithZone(CALayer) init];
  v26 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_submitButton;
  sub_75C560();
  if (qword_93DAB8 != -1)
  {
    swift_once();
  }

  v27 = sub_BE38(v10, qword_99F820);
  v22(v55, v27, v10);
  *&v5[v26] = sub_75C550();
  v28 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_buttonContainer;
  *&v5[v28] = [objc_allocWithZone(type metadata accessor for SubmitButtonContainer()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_hasDivider] = 1;
  v29 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_dividerView;
  *&v5[v29] = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_isSubmitted] = 0;
  v30 = &v5[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption];
  *v30 = 0;
  v30[1] = 0;
  v31 = &v5[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton];
  v32 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
  *v31 = 0;
  v31[1] = 0;
  v56.receiver = v5;
  v56.super_class = v32;
  v33 = objc_msgSendSuper2(&v56, "initWithFrame:", a1, a2, a3, a4);
  v34 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackDescription;
  v35 = *&v33[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackDescription];
  v36 = v33;
  [v35 setTextAlignment:1];
  v37 = v36;
  v38 = [v37 contentView];
  [v38 addSubview:*&v33[v34]];

  v39 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground;
  v40 = *&v37[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground];
  v41 = [v37 tintColor];

  if (v41)
  {
    v42 = [v41 CGColor];

    [v40 setBackgroundColor:v42];
    [*&v37[v39] setCornerRadius:20.0];
    v43 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_submitButton;
    v44 = *&v37[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_submitButton];
    v57._countAndFlagsBits = 0x465F54494D425553;
    v57._object = 0xEF4B434142444545;
    v58._countAndFlagsBits = 0;
    v58._object = 0xE000000000000000;
    sub_75B750(v57, v58);
    v45 = sub_769210();

    [v44 setTitle:v45 forState:0];

    [*&v37[v43] addTarget:v37 action:"didTapSubmitButton:" forControlEvents:64];
    [*&v37[v43] setEnabled:0];
    v46 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_buttonContainer;
    [*&v37[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_buttonContainer] setLayoutMargins:{5.0, 10.0, 5.0, 10.0}];
    v47 = *&v37[v46];
    v48 = *&v37[v43];
    v49 = *&v47[OBJC_IVAR____TtC18ASMessagesProviderP33_9A283CDB21D4766BFE4A1C51D15B048821SubmitButtonContainer_submitButton];
    *&v47[OBJC_IVAR____TtC18ASMessagesProviderP33_9A283CDB21D4766BFE4A1C51D15B048821SubmitButtonContainer_submitButton] = v48;
    v50 = v48;
    v51 = v47;

    [v51 addSubview:v50];
    [v51 setNeedsLayout];

    v52 = [v37 contentView];
    [v52 addSubview:*&v37[v46]];

    v53 = [v37 contentView];
    [v53 addSubview:*&v37[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_dividerView]];
  }

  else
  {
    __break(1u);
  }
}

id sub_6CD8AC(id result)
{
  v2 = result;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackButtons;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
  if (v4 >> 62)
  {
    result = sub_76A860();
    v5 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_76A770();
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    [v7 removeFromSuperview];
  }

LABEL_10:
  *&v1[v3] = v2;

  v9 = *&v1[v3];
  if (v9 >> 62)
  {
    result = sub_76A860();
    v10 = result;
    if (result)
    {
LABEL_12:
      if (v10 >= 1)
      {

        v11 = 0;
        do
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = sub_76A770();
          }

          else
          {
            v12 = *(v9 + 8 * v11 + 32);
          }

          v13 = v12;
          ++v11;
          v14 = [v1 contentView];
          [v14 addSubview:v13];

          [v13 addTarget:v1 action:"feedbackButtonSelectedWithFeedbackOptioButton:" forControlEvents:64];
        }

        while (v10 != v11);

        goto LABEL_19;
      }

LABEL_27:
      __break(1u);
      return result;
    }
  }

  else
  {
    v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (v10)
    {
      goto LABEL_12;
    }
  }

LABEL_19:

  return [v1 setNeedsLayout];
}

uint64_t sub_6CDA9C()
{
  v76 = sub_7664F0();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v70 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_76A920();
  v2 = *(v73 - 8);
  __chkstk_darwin(v73);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_767050();
  v101 = *(v99 - 8);
  __chkstk_darwin(v99);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v82 = &v70 - v8;
  v79 = sub_767070();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_766F00();
  v103 = *(v97 - 8);
  __chkstk_darwin(v97);
  v96 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_766F20();
  v11 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_766F30();
  v85 = *(v93 - 8);
  __chkstk_darwin(v93);
  v92 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_766F50();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_766F70();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
  v119.receiver = v0;
  v119.super_class = v20;
  v81 = v20;
  objc_msgSendSuper2(&v119, "layoutSubviews");
  (*(v15 + 104))(v17, enum case for VerticalStackLayout.Alignment.center(_:), v14);
  v117 = sub_766970();
  v118 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v116);
  sub_766960();
  v100 = v19;
  sub_766F60();
  v21 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackButtons);
  if (v21 >> 62)
  {
    goto LABEL_32;
  }

  v98 = v21 & 0xFFFFFFFFFFFFFF8;
  for (i = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
  {
    v72 = v2;
    v23 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedIndex;

    v24 = &protocol witness table for UIView;
    v71 = v6;
    v80 = v0;
    if (!i)
    {
      break;
    }

    v25 = 0;
    v70 = 0;
    v102 = (v0 + v23);
    v91 = v21 & 0xC000000000000001;
    v89 = enum case for VerticalStackLayout.Child.Alignment.center(_:);
    v88 = (v11 + 104);
    v87 = (v103 + 8);
    v86 = (v11 + 8);
    ++v85;
    v90 = v21;
    while (1)
    {
      if (v91)
      {
        v26 = sub_76A770();
      }

      else
      {
        if (v25 >= *(v98 + 16))
        {
          goto LABEL_31;
        }

        v26 = *(v21 + 8 * v25 + 32);
      }

      v0 = v26;
      v2 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v11 = i;
      v27 = v4;
      [v26 setLayoutMargins:{5.0, 10.0, 5.0, 10.0}];
      v28 = v24;
      v117 = type metadata accessor for FeedbackButton();
      v118 = v24;
      v116 = v0;
      v29 = qword_93E110;
      v103 = v0;
      if (v29 != -1)
      {
        swift_once();
      }

      v30 = sub_766CA0();
      v31 = sub_BE38(v30, qword_962598);
      v114 = v30;
      v115 = &protocol witness table for StaticDimension;
      v32 = sub_B1B4(&v113);
      (*(*(v30 - 8) + 16))(v32, v31, v30);
      v33 = v94;
      v34 = v95;
      (*v88)(v94, v89, v95);
      v110 = _swiftEmptyArrayStorage;
      sub_6D1B30(&qword_9626D8, &type metadata accessor for VerticalStackLayout.ExclusionCondition);
      sub_BD88(&qword_9626E0);
      sub_6D1B78();
      v35 = v96;
      v36 = v97;
      sub_76A5A0();
      v37 = v92;
      sub_766F10();
      (*v87)(v35, v36);
      (*v86)(v33, v34);
      sub_BEB8(&v113);
      sub_BEB8(&v116);
      sub_766F40();
      (*v85)(v37, v93);
      if ((*(v102 + 8) & 1) != 0 || v25 != *v102)
      {

        ++v25;
        i = v11;
        v4 = v27;
        v6 = v99;
        v0 = v101;
        v24 = v28;
        v21 = v90;
        if (v2 == v11)
        {
          v103 = v70;
          goto LABEL_19;
        }
      }

      else
      {

        ++v25;
        v70 = v103;
        i = v11;
        v4 = v27;
        v6 = v99;
        v0 = v101;
        v24 = v28;
        v21 = v90;
        if (v2 == v11)
        {
          goto LABEL_19;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v98 = v21 & 0xFFFFFFFFFFFFFF8;
  }

  v103 = 0;
  v6 = v99;
  v0 = v101;
LABEL_19:

  v38 = v84;
  v117 = v84;
  v118 = &protocol witness table for VerticalStackLayout;
  v39 = sub_B1B4(&v116);
  (*(v83 + 16))(v39, v100, v38);
  v40 = v80;
  v41 = *&v80[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackDescription];
  v114 = sub_75BB20();
  v115 = v24;
  v113 = v41;
  v42 = v24;
  v43 = enum case for FlankedVerticalLayout.Alignment.center(_:);
  v44 = v0[13];
  v101 = v0 + 13;
  v44(v82, enum case for FlankedVerticalLayout.Alignment.center(_:), v6);
  v45 = qword_93DCE0;
  v46 = v41;
  if (v45 != -1)
  {
    swift_once();
  }

  v47 = sub_766CA0();
  sub_BE38(v47, qword_99FDE8);
  sub_766470();
  sub_766700();
  v49 = v48;
  v50 = v73;
  v102 = *(v72 + 8);
  v102(v4, v73);
  v111 = &type metadata for CGFloat;
  v112 = &protocol witness table for CGFloat;
  v110 = v49;
  v51 = *&v40[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_buttonContainer];
  v52 = type metadata accessor for SubmitButtonContainer();
  v109 = v42;
  v108 = v52;
  v107 = v51;
  v44(v71, v43, v6);
  v53 = qword_93DCF0;
  v54 = v51;
  if (v53 != -1)
  {
    swift_once();
  }

  sub_BE38(v47, qword_99FE18);
  sub_766470();
  sub_766700();
  v56 = v55;
  v102(v4, v50);
  v105 = &type metadata for CGFloat;
  v106 = &protocol witness table for CGFloat;
  v104 = v56;
  v57 = v77;
  sub_767060();
  v58 = [v40 traitCollection];
  sub_767500();
  v60 = v59;

  sub_75D650();
  v61 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_hasDivider;
  if (v40[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_hasDivider] == 1)
  {
    sub_766470();
    sub_766700();
    v102(v4, v50);
  }

  v62 = v74;
  sub_767040();
  (*(v75 + 8))(v62, v76);
  v63 = v103;
  if (v103)
  {
    v64 = *&v40[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground];
    v65 = v103;
    [v64 setAnchorPoint:{0.0, 0.0}];
    [v65 frame];
    sub_769D50();
    [v64 setFrame:?];
  }

  if (v40[v61] == 1)
  {
    v66 = *&v40[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_dividerView];
    sub_75D650();
    MinX = CGRectGetMinX(v120);
    sub_75D650();
    v68 = CGRectGetMaxY(v121) - v60;
    sub_75D650();
    [v66 setFrame:{MinX, v68, CGRectGetWidth(v122), v60}];
  }

  (*(v78 + 8))(v57, v79);
  return (*(v83 + 8))(v100, v84);
}

id sub_6CE9CC()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
  objc_msgSendSuper2(&v13, "prepareForReuse");
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground] removeFromSuperlayer];
  v1 = &v0[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedIndex];
  *v1 = 0;
  v1[8] = 1;
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_submitButton] setEnabled:0];
  v12 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = sub_76A770();
      }

      else
      {
        if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_17;
        }

        v8 = *(v2 + 8 * v4 + 32);
      }

      v9 = v8;
      v10 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ((v1[8] & 1) != 0 || v4 != *v1)
      {
        v5 = [v8 tintColor];
        v6 = v9;
        v7 = v5;
      }

      else
      {
        v5 = [objc_opt_self() whiteColor];
        v6 = v5;
        v7 = v9;
      }

      [v9 setTitleColor:v5 forState:0];

      ++v4;
      if (v10 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_15:

  return [v12 setNeedsLayout];
}

id sub_6CEBF8()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackButtons);
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_41:
    v3 = sub_76A860();
  }

  else
  {
    v3 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      v2 = 0;
      goto LABEL_15;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = sub_76A770();
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_39;
      }

      v5 = *(v1 + v4 + 4);
    }

    v6 = v5;
    sub_BE70(0, &qword_94AB00);
    v7 = sub_76A1C0();

    if (v7)
    {
      break;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_40;
    }
  }

  v2 = v4;
LABEL_15:

  v9 = *&v23[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground];
  [v9 removeFromSuperlayer];
  v10 = &v23[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedIndex];
  *v10 = v2;
  v10[8] = v3 == v4;
  if (v3 != v4)
  {
    v1 = [v23 contentView];
    v11 = [v1 layer];

    [v11 insertSublayer:v9 atIndex:0];
  }

  [*&v23[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_submitButton] setEnabled:v3 != v4];
  v12 = *&v23[v22];
  if (v12 >> 62)
  {
    v13 = sub_76A860();
  }

  else
  {
    v13 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
  }

  if (v13)
  {
    v14 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = sub_76A770();
      }

      else
      {
        if (v14 >= *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_38;
        }

        v17 = *(v12 + 8 * v14 + 32);
      }

      v18 = v17;
      v2 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if ((v10[8] & 1) != 0 || v14 != *v10)
      {
        v15 = [v17 tintColor];
        v16 = v18;
        v1 = v15;
      }

      else
      {
        v15 = [objc_opt_self() whiteColor];
        v16 = v15;
        v1 = v18;
      }

      [v18 setTitleColor:v15 forState:0];

      ++v14;
      if (v2 == v13)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_31:

  result = [v23 setNeedsLayout];
  if ((v10[8] & 1) == 0)
  {
    v20 = *&v23[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption];
    if (v20)
    {
      v21 = *v10;

      v20(v21);

      return sub_F704(v20);
    }
  }

  return result;
}

uint64_t sub_6CF04C()
{
  sub_BD88(&qword_9626C8);
  sub_6D1A3C();
  return sub_768AF0();
}

uint64_t sub_6CF0C4()
{
  sub_BD88(&qword_9626C8);
  sub_6D1A3C();
  return sub_768AF0();
}

id sub_6CF13C()
{
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackDescription] setText:0];
  sub_6CD8AC(_swiftEmptyArrayStorage);
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground] removeFromSuperlayer];
  v1 = &v0[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedIndex];
  *v1 = 0;
  v1[8] = 1;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_submitButton];
  [v2 setEnabled:0];
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
  v20 = v2;
  v21 = v0;
  if (v3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = sub_76A770();
      }

      else
      {
        if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_20;
        }

        v9 = *(v3 + 8 * v5 + 32);
      }

      v10 = v9;
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ((v1[8] & 1) != 0 || v5 != *v1)
      {
        v6 = [v9 tintColor];
        v7 = v10;
        v8 = v6;
      }

      else
      {
        v6 = [objc_opt_self() whiteColor];
        v7 = v6;
        v8 = v10;
      }

      [v10 setTitleColor:v6 forState:{0, v20}];

      ++v5;
      if (v11 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_15:

  [v21 setNeedsLayout];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_isSubmitted;
  *(v21 + OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_isSubmitted) = 0;
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = v21;
  aBlock[4] = sub_6D282C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_89D530;
  v15 = _Block_copy(aBlock);
  v16 = v21;

  [v13 animateWithDuration:4 delay:v15 options:0 animations:0.2 completion:0.0];
  _Block_release(v15);
  [v16 setUserInteractionEnabled:(*(v21 + v12) & 1) == 0];
  if (*(v21 + v12) == 1)
  {
    v17._countAndFlagsBits = 0x455454494D425553;
    v17._object = 0xE900000000000044;
  }

  else
  {
    v17._countAndFlagsBits = 0x465F54494D425553;
    v17._object = 0xEF4B434142444545;
  }

  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  sub_75B750(v17, v23);
  v18 = sub_769210();

  [v20 setTitle:v18 forState:0];

  [v20 setEnabled:(*(v21 + v12) & 1) == 0];
  [v20 setNeedsLayout];
  v16[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_hasDivider] = 1;
  [*&v16[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_dividerView] setHidden:0];
  return [v16 setNeedsLayout];
}

uint64_t type metadata accessor for FeedbackButton()
{
  result = qword_962648;
  if (!qword_962648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6CF650()
{
  sub_2F1CA0();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_6CF9A0()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SubmitButtonContainer();
  objc_msgSendSuper2(&v6, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_9A283CDB21D4766BFE4A1C51D15B048821SubmitButtonContainer_submitButton];
  if (v1)
  {
    v2 = v1;
    sub_75D650();
    [v2 measurementsWithFitting:v0 in:{v3, v4}];
    v5 = v2;
    sub_75D650();
    [v5 setFrame:?];
  }
}

id sub_6CFACC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_6CFB38()
{
  v0 = sub_764AD0();
  if (*(v0 + 16))
  {
    sub_134D8(v0 + 32, v3);

    sub_BD88(&unk_944DA0);
    sub_762FD0();
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
  }

  return 0;
}

double sub_6CFBD0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v81 = a4;
  v75 = a3;
  v102 = a2;
  v101 = a1;
  v83 = sub_76A920();
  v6 = *(v83 - 8);
  __chkstk_darwin(v83);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_766F00();
  v73 = *(v92 - 8);
  __chkstk_darwin(v92);
  v91 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_766F20();
  v72 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_766F30();
  v71 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_766F50();
  v12 = *(v85 - 1);
  __chkstk_darwin(v85);
  v86 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_766F70();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v103 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_762D10();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_BE70(0, &qword_93F900);
  if (qword_93DAB0 != -1)
  {
    swift_once();
  }

  v80 = v8;
  v82 = v6;
  v20 = sub_7666D0();
  sub_BE38(v20, qword_99F808);
  v21 = [a5 traitCollection];
  v22 = sub_769E10();

  v23 = sub_7653B0();
  v111 = v23;
  v97 = sub_6D1B30(&qword_93F9B0, &type metadata accessor for Feature);
  v112 = v97;
  v24 = sub_B1B4(&v110);
  v25 = *(v23 - 8);
  v26 = *(v25 + 104);
  v96 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v98 = v23;
  v95 = v26;
  v94 = v25 + 104;
  v26(v24);
  v27 = v19;
  v28 = v22;
  sub_765C30();
  sub_BEB8(&v110);

  v77 = v28;
  sub_762D00();
  sub_762CE0();
  v29 = *(v16 + 8);
  v99 = v18;
  v102 = v15;
  v101 = v16 + 8;
  v93 = v29;
  v29(v18, v15);
  if (qword_93DAB8 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v20, qword_99F820);
  v84 = a5;
  v31 = [a5 traitCollection];
  v74 = v30;
  v76 = v27;
  v100 = sub_769E10();

  (*(v12 + 104))(v86, enum case for VerticalStackLayout.Alignment.center(_:), v85);
  v108 = sub_766970();
  v109 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v107);
  sub_766960();
  sub_766F60();
  v32 = *(v75 + 16);
  if (v32)
  {
    LODWORD(v86) = enum case for VerticalStackLayout.Child.Alignment.left(_:);
    v85 = (v72 + 104);
    v33 = (v73 + 8);
    v34 = (v72 + 8);
    v35 = (v71 + 8);
    v36 = v75 + 40;
    v37 = v89;
    do
    {
      v38 = v98;
      v108 = v98;
      v109 = v97;
      v39 = sub_B1B4(&v107);
      v95(v39, v96, v38);

      v40 = v100;
      sub_765C30();
      sub_BEB8(&v107);
      v41 = v99;
      sub_762D00();
      sub_762CE0();
      v93(v41, v102);
      v42 = v108;
      v43 = v109;
      v44 = sub_B170(&v107, v108);
      v106[3] = v42;
      v106[4] = v43[1];
      v45 = sub_B1B4(v106);
      (*(*(v42 - 8) + 16))(v45, v44, v42);
      if (qword_93E110 != -1)
      {
        swift_once();
      }

      v46 = sub_766CA0();
      v47 = sub_BE38(v46, qword_962598);
      v105[3] = v46;
      v105[4] = &protocol witness table for StaticDimension;
      v48 = sub_B1B4(v105);
      (*(*(v46 - 8) + 16))(v48, v47, v46);
      v49 = v90;
      (*v85)(v37, v86, v90);
      v104 = _swiftEmptyArrayStorage;
      sub_6D1B30(&qword_9626D8, &type metadata accessor for VerticalStackLayout.ExclusionCondition);
      sub_BD88(&qword_9626E0);
      sub_6D1B78();
      v50 = v91;
      v51 = v92;
      sub_76A5A0();
      v52 = v87;
      sub_766F10();
      (*v33)(v50, v51);
      (*v34)(v37, v49);
      sub_BEB8(v105);
      sub_BEB8(v106);
      sub_BEB8(&v107);
      sub_766F40();
      (*v35)(v52, v88);
      v36 += 16;
      --v32;
    }

    while (v32);
  }

  v53 = v84;
  [v84 pageMarginInsets];
  v92 = v54;
  sub_769DA0();
  sub_B170(&v110, v111);
  sub_7665B0();
  v55 = v79;
  sub_7665A0();
  v56 = [v53 traitCollection];
  v57 = sub_769E10();

  v113._countAndFlagsBits = 0x465F54494D425553;
  v113._object = 0xEF4B434142444545;
  v114._countAndFlagsBits = 0;
  v114._object = 0xE000000000000000;
  sub_75B750(v113, v114);
  v58 = v98;
  v108 = v98;
  v109 = v97;
  v59 = sub_B1B4(&v107);
  v95(v59, v96, v58);
  v60 = v57;
  sub_765C30();
  sub_BEB8(&v107);
  v61 = v99;
  sub_762D00();
  sub_762CE0();
  v93(v61, v102);
  sub_B170(&v107, v108);
  sub_7665B0();
  sub_769DC0();
  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  v62 = sub_766CA0();
  sub_BE38(v62, qword_99FDE8);
  v63 = v80;
  sub_766470();
  sub_766700();
  v64 = *(v82 + 8);
  v65 = v83;
  v64(v63, v83);
  if (qword_93DCF0 != -1)
  {
    swift_once();
  }

  sub_BE38(v62, qword_99FE18);
  sub_766470();
  sub_766700();
  v64(v63, v65);
  if (v81)
  {
    sub_766470();
    sub_766700();
    v64(v63, v65);
    v66 = [v53 traitCollection];
    sub_767500();
  }

  sub_769DC0();
  v68 = v67;

  (*(v78 + 8))(v103, v55);
  sub_BEB8(&v107);
  sub_BEB8(&v110);
  return v68;
}

uint64_t sub_6D0AFC(uint64_t a1, void *a2)
{
  result = sub_6CFB38();
  if (!result)
  {
    return result;
  }

  v4 = sub_762FB0();
  v6 = v5;
  v7 = sub_762FC0();
  v8 = v7;
  if (v7 >> 62)
  {
    v9 = sub_76A860();
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_15:

LABEL_16:
    v17 = sub_762FA0();
    sub_6CFBD0(v4, v6, _swiftEmptyArrayStorage, v17 & 1, a2);
  }

  v9 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  if (!v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_143CDC(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v18 = v4;
    v10 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        sub_76A770();
      }

      else
      {
      }

      v11 = sub_763C80();
      v13 = v12;

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (*&v15 >= *&v14 >> 1)
      {
        sub_143CDC((*&v14 > 1uLL), *&v15 + 1, 1);
      }

      ++v10;
      *&_swiftEmptyArrayStorage[2] = *&v15 + 1;
      v16 = &_swiftEmptyArrayStorage[2 * *&v15];
      *(v16 + 4) = v11;
      *(v16 + 5) = v13;
    }

    while (v9 != v10);

    v4 = v18;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_6D0CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v79 = a3;
  v80 = a4;
  v86 = a2;
  v7 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v7 - 8);
  v88 = v75 - v8;
  v9 = sub_BD88(&qword_94EC40);
  __chkstk_darwin(v9 - 8);
  v11 = v75 - v10;
  v12 = sub_BD88(&unk_944D90);
  __chkstk_darwin(v12 - 8);
  v78 = v75 - v13;
  v84 = sub_BD88(&qword_9626C8);
  v14 = *(v84 - 8);
  v15 = v14[8];
  __chkstk_darwin(v84);
  __chkstk_darwin(v16);
  v85 = v75 - v17;
  result = sub_6CFB38();
  if (result)
  {
    v75[1] = v15;
    v76 = v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v83 = v5;
    v19 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackDescription];
    v20 = result;
    v21 = v19;
    sub_762FB0();
    v22 = sub_769210();

    [v21 setText:v22];

    v82 = v20;
    v23 = sub_762FC0();
    v24 = v23;
    if (v23 >> 62)
    {
      goto LABEL_41;
    }

    for (i = *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
    {
      v81 = v14;
      v77 = a5;
      if (i)
      {
        aBlock = _swiftEmptyArrayStorage;
        result = sub_76A7C0();
        if (i < 0)
        {
          __break(1u);
          return result;
        }

        v26 = 0;
        v87 = v24 & 0xC000000000000001;
        do
        {
          if (v87)
          {
            v27 = sub_76A770();
          }

          else
          {
            v27 = *(v24 + 8 * v26 + 32);
          }

          v28 = sub_763C90();
          v29 = type metadata accessor for FeedbackButton();
          v30 = objc_allocWithZone(v29);
          if (v28)
          {
            v90 = v28;
            sub_764C80();
            v89 = v27;
            sub_768900();
            sub_6D1B30(&qword_951430, &type metadata accessor for Action);
            sub_768820();
            v31 = 0;
          }

          else
          {
            v31 = 1;
          }

          v32 = sub_BD88(&unk_950960);
          (*(*(v32 - 8) + 56))(v11, v31, 1, v32);
          sub_6D183C(v11, v30 + qword_962630);
          v97.receiver = v30;
          v97.super_class = v29;
          v33 = objc_msgSendSuper2(&v97, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);

          v34 = qword_93DAB8;
          v35 = v33;
          if (v34 != -1)
          {
            swift_once();
          }

          ++v26;
          v36 = sub_7666D0();
          v37 = sub_BE38(v36, qword_99F820);
          v38 = *(v36 - 8);
          v39 = v88;
          (*(v38 + 16))(v88, v37, v36);
          (*(v38 + 56))(v39, 0, 1, v36);
          sub_75C540();

          sub_763C80();
          v40 = sub_769210();

          [v35 setTitle:v40 forState:0];

          sub_76A7A0();
          sub_76A7D0();
          sub_76A7E0();
          sub_76A7B0();
        }

        while (i != v26);

        v41 = aBlock;
        v14 = v81;
      }

      else
      {

        v41 = _swiftEmptyArrayStorage;
      }

      v42 = v83;
      sub_6CD8AC(v41);
      swift_getObjectType();
      sub_761BB0();
      v43 = v85;
      sub_768B30();
      v89 = v14[2];
      v44 = v76;
      v45 = v43;
      v46 = v84;
      (v89)(v76, v45, v84);
      v11 = ((*(v14 + 80) + 16) & ~*(v14 + 80));
      v47 = swift_allocObject();
      v48 = v14[4];
      v14 += 4;
      a5 = v48;
      (v48)(&v11[v47], v44, v46);
      v49 = &v42[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption];
      v50 = *&v42[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption];
      *v49 = sub_6D18B0;
      v49[1] = v47;
      sub_F704(v50);
      (v89)(v44, v85, v46);
      v51 = swift_allocObject();
      (v48)(&v11[v51], v44, v46);
      v52 = &v42[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton];
      v53 = *&v42[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton];
      *v52 = sub_6D19C0;
      v52[1] = v51;
      sub_F704(v53);
      v54 = sub_762FA0();
      v42[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_hasDivider] = v54 & 1;
      [*&v42[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_dividerView] setHidden:(v54 & 1) == 0];
      [v42 setNeedsLayout];
      [v77 pageMarginInsets];
      [v42 setLayoutMargins:?];
      v88 = sub_6D1A3C();
      sub_768B00();
      v55 = aBlock;
      v56 = v92;
      v57 = *&v42[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground];
      [v57 removeFromSuperlayer];
      v58 = &v42[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedIndex];
      *v58 = v55;
      v58[8] = v56;
      if ((v56 & 1) == 0)
      {
        v59 = [v42 contentView];
        v60 = [v59 layer];

        [v60 insertSublayer:v57 atIndex:0];
      }

      v89 = *&v42[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_submitButton];
      [v89 setEnabled:v56 ^ 1u];
      v61 = *&v42[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
      v24 = v61 >> 62 ? sub_76A860() : *(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8));

      if (!v24)
      {
        break;
      }

      v62 = 0;
      while (1)
      {
        if ((v61 & 0xC000000000000001) != 0)
        {
          v64 = sub_76A770();
        }

        else
        {
          if (v62 >= *(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_40;
          }

          v64 = *(v61 + 8 * v62 + 32);
        }

        v65 = v64;
        v11 = (v62 + 1);
        if (__OFADD__(v62, 1))
        {
          break;
        }

        if ((v58[8] & 1) != 0 || v62 != *v58)
        {
          v63 = [v64 tintColor];
          a5 = v65;
          v14 = v63;
        }

        else
        {
          v63 = [objc_opt_self() whiteColor];
          a5 = v63;
          v14 = v65;
        }

        [v65 setTitleColor:v63 forState:0];

        ++v62;
        if (v11 == v24)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      ;
    }

LABEL_34:

    v66 = v83;
    [v83 setNeedsLayout];
    sub_768B00();
    v67 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_isSubmitted;
    v66[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_isSubmitted] = BYTE1(v92) & 1;
    v68 = objc_opt_self();
    v69 = swift_allocObject();
    *(v69 + 16) = v66;
    v95 = sub_6D1AC8;
    v96 = v69;
    aBlock = _NSConcreteStackBlock;
    v92 = 1107296256;
    v93 = sub_23F0CC;
    v94 = &unk_89D4E0;
    v70 = _Block_copy(&aBlock);
    v71 = v66;

    [v68 animateWithDuration:4 delay:v70 options:0 animations:0.2 completion:0.0];
    _Block_release(v70);
    [v71 setUserInteractionEnabled:(v66[v67] & 1) == 0];
    if (v66[v67])
    {
      v72._countAndFlagsBits = 0x455454494D425553;
      v72._object = 0xE900000000000044;
    }

    else
    {
      v72._countAndFlagsBits = 0x465F54494D425553;
      v72._object = 0xEF4B434142444545;
    }

    v98._countAndFlagsBits = 0;
    v98._object = 0xE000000000000000;
    sub_75B750(v72, v98);
    v73 = sub_769210();

    v74 = v89;
    [v89 setTitle:v73 forState:0];

    [v74 setEnabled:(v66[v67] & 1) == 0];
    [v74 setNeedsLayout];
    [v71 setNeedsLayout];

    return v81[1](v85, v84);
  }

  return result;
}

uint64_t sub_6D183C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_94EC40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6D18B0()
{
  sub_BD88(&qword_9626C8);

  return sub_6CF04C();
}

uint64_t sub_6D192C()
{
  v1 = sub_BD88(&qword_9626C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_6D19C0()
{
  sub_BD88(&qword_9626C8);

  return sub_6CF0C4();
}

unint64_t sub_6D1A3C()
{
  result = qword_9626D0;
  if (!qword_9626D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9626D0);
  }

  return result;
}

uint64_t sub_6D1A90()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_6D1AC8()
{
  v1 = *(v0 + 16);
  v2 = 0.6;
  if (!v1[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_isSubmitted])
  {
    v2 = 1.0;
  }

  return [v1 setAlpha:v2];
}

uint64_t sub_6D1AFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_6D1B20(uint64_t result)
{
  *result = *(v1 + 16);
  *(result + 8) = 0;
  return result;
}

uint64_t sub_6D1B30(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_6D1B78()
{
  result = qword_9626E8;
  if (!qword_9626E8)
  {
    sub_133D8(&qword_9626E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9626E8);
  }

  return result;
}

void sub_6D1BDC()
{
  v1 = v0;
  v2 = sub_7666D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_760AD0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackDescription;
  if (qword_93DAB0 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v2, qword_99F808);
  v14 = *(v3 + 16);
  v14(v11, v13, v2);
  (*(v3 + 56))(v11, 0, 1, v2);
  (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
  v15 = objc_allocWithZone(sub_75BB20());
  *(v1 + v12) = sub_75BB10();
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackButtons) = _swiftEmptyArrayStorage;
  v16 = v1 + OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedIndex;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground;
  *(v1 + v17) = [objc_allocWithZone(CALayer) init];
  v18 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_submitButton;
  sub_75C560();
  if (qword_93DAB8 != -1)
  {
    swift_once();
  }

  v19 = sub_BE38(v2, qword_99F820);
  v14(v25, v19, v2);
  *(v1 + v18) = sub_75C550();
  v20 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_buttonContainer;
  *(v1 + v20) = [objc_allocWithZone(type metadata accessor for SubmitButtonContainer()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_hasDivider) = 1;
  v21 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_dividerView;
  *(v1 + v21) = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_isSubmitted) = 0;
  v22 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton);
  *v23 = 0;
  v23[1] = 0;
  sub_76A840();
  __break(1u);
}

void sub_6D1FE0()
{
  v1 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v1 - 8);
  v3 = aBlock - v2;
  v4 = sub_BD88(&qword_94EC40);
  __chkstk_darwin(v4 - 8);
  v6 = aBlock - v5;
  v7 = sub_BD88(&unk_950960);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - v9;
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedIndex + 8])
  {
    return;
  }

  v11 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedIndex];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackButtons;
  v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
  if (v13 >> 62)
  {
    if (v11 >= sub_76A860())
    {
      return;
    }
  }

  else if (v11 >= *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
  {
    return;
  }

  v14 = *&v0[v12];
  if ((v14 & 0xC000000000000001) != 0)
  {

    v15 = sub_76A770();

    goto LABEL_8;
  }

  if (v11 < 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v11 >= *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_23:
    __break(1u);
    return;
  }

  v15 = *(v14 + 8 * v11 + 32);
LABEL_8:
  sub_358A74(v15 + qword_962630, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10A2C(v6, &qword_94EC40);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_75B460();
    v16 = sub_BD88(&unk_93F630);
    sub_768860();

    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v3, 1, v16) == 1)
    {
      (*(v8 + 8))(v10, v7);
      sub_10A2C(v3, &unk_93F980);
    }

    else
    {
      sub_75B470();
      v18 = sub_75B460();
      sub_32A6C0(aBlock[0], 1, v18, v3);

      (*(v8 + 8))(v10, v7);

      (*(v17 + 8))(v3, v16);
    }
  }

  v19 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_isSubmitted;
  v0[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_isSubmitted] = 1;
  v20 = objc_opt_self();
  v21 = swift_allocObject();
  *(v21 + 16) = v0;
  aBlock[4] = sub_6D282C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_89D580;
  v22 = _Block_copy(aBlock);
  v23 = v0;

  [v20 animateWithDuration:4 delay:v22 options:0 animations:0.2 completion:0.0];
  _Block_release(v22);
  [v23 setUserInteractionEnabled:(v0[v19] & 1) == 0];
  if (v0[v19] == 1)
  {
    v24._countAndFlagsBits = 0x455454494D425553;
    v24._object = 0xE900000000000044;
  }

  else
  {
    v24._countAndFlagsBits = 0x465F54494D425553;
    v24._object = 0xEF4B434142444545;
  }

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_75B750(v24, v29);
  v25 = *&v23[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_submitButton];
  v26 = sub_769210();

  [v25 setTitle:v26 forState:0];

  [v25 setEnabled:(v0[v19] & 1) == 0];
  [v25 setNeedsLayout];
  v27 = *&v23[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton];
  if (v27)
  {

    v27(1);
    sub_F704(v27);
  }
}

double sub_6D25A0()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_9A283CDB21D4766BFE4A1C51D15B048821SubmitButtonContainer_submitButton];
  if (!v1)
  {
    return JUMeasurementsZero[0];
  }

  v2 = v1;
  [v0 layoutMargins];
  sub_769DA0();
  [v2 measurementsWithFitting:v0 in:?];
  [v0 layoutMargins];
  sub_769DC0();
  v4 = v3;
  [v0 layoutMargins];
  [v0 layoutMargins];

  return v4;
}

uint64_t initializeBufferWithCopyOfBuffer for PersonalizationFeedbackCollectionViewCell.State(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PersonalizationFeedbackCollectionViewCell.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 10))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 9);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonalizationFeedbackCollectionViewCell.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_6D2770()
{
  result = qword_9626F0;
  if (!qword_9626F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9626F0);
  }

  return result;
}

unint64_t sub_6D27C8()
{
  result = qword_9626F8;
  if (!qword_9626F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9626F8);
  }

  return result;
}

uint64_t sub_6D283C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC18ASMessagesProvider24OnboardingViewController_navController;
  *&v4[v9] = [objc_allocWithZone(UINavigationController) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider24OnboardingViewController_presenter] = a1;
  v10 = &v4[OBJC_IVAR____TtC18ASMessagesProvider24OnboardingViewController_completionCallback];
  *v10 = a2;
  *(v10 + 1) = a3;
  v16.receiver = v4;
  v16.super_class = ObjectType;

  v11 = objc_msgSendSuper2(&v16, "initWithNibName:bundle:", 0, 0);
  if (*(a1 + 16) > 1u)
  {
    if (*(a1 + 16) != 2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_6;
    }
  }

  v12 = 2;
LABEL_6:
  v13 = v11;
  [v13 setModalPresentationStyle:v12];
  if (*(a1 + 16) <= 1u)
  {
    if (*(a1 + 16))
    {
      v14 = 0;
LABEL_11:
      [*&v13[OBJC_IVAR____TtC18ASMessagesProvider24OnboardingViewController_navController] setModalPresentationStyle:v14];
      [v13 setModalInPresentation:1];

      return v13;
    }

LABEL_10:
    v14 = 2;
    goto LABEL_11;
  }

  if (*(a1 + 16) == 2)
  {
    goto LABEL_10;
  }

LABEL_12:
  result = sub_76A840();
  __break(1u);
  return result;
}

id sub_6D2A98()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "viewDidLoad");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = result;
  v3 = [objc_opt_self() systemBlueColor];
  [v2 setTintColor:v3];

  v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider24OnboardingViewController_navController];
  [v4 setNavigationBarHidden:1 animated:0];
  [v0 addChildViewController:v4];
  result = [v4 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  [result bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v5 setFrame:{v8, v10, v12, v14}];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = result;
  result = [v4 view];
  if (result)
  {
    v16 = result;
    [v15 addSubview:result];

    [v4 didMoveToParentViewController:v0];
    return sub_6D2C8C();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_6D2C8C()
{
  v1 = v0;
  v2 = sub_7685A0();
  __chkstk_darwin(v2 - 8);
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider24OnboardingViewController_presenter];
  swift_beginAccess();
  v4 = *(v3 + 32);
  if (*(v4 + 16))
  {
    sub_134D8(v4 + 32, v17);
    v5 = sub_6D347C(v17);
    if (v5)
    {
      v6 = v5;
      if (qword_93DF18 != -1)
      {
        swift_once();
      }

      v7 = sub_768FF0();
      sub_BE38(v7, qword_9A0478);
      sub_BD88(&qword_93FD00);
      sub_7685F0();
      *(swift_allocObject() + 16) = xmmword_77B6D0;
      sub_768590();
      v19._countAndFlagsBits = 0x69746E6573657250;
      v19._object = 0xEB0000000020676ELL;
      sub_768580(v19);
      v16 = sub_BE70(0, &qword_9434E0);
      v15[0] = v6;
      v8 = v6;
      sub_768560();
      sub_10A2C(v15, &unk_93FBD0);
      v20._countAndFlagsBits = 0x65747320726F6620;
      v20._object = 0xEA00000000002070;
      sub_768580(v20);
      v9 = v18;
      v10 = sub_B170(v17, v18);
      v16 = v9;
      v11 = sub_B1B4(v15);
      (*(*(v9 - 8) + 16))(v11, v10, v9);
      sub_768560();
      sub_10A2C(v15, &unk_93FBD0);
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      sub_768580(v21);
      sub_7685B0();
      sub_768E80();

      [v8 preferredContentSize];
      [v1 setPreferredContentSize:?];
      [*&v1[OBJC_IVAR____TtC18ASMessagesProvider24OnboardingViewController_navController] showViewController:v8 sender:v1];
    }

    else
    {
      v14 = sub_1626C(v17, 0xD00000000000002ALL, 0x80000000007F1950);
      sub_6D2C8C(v14);
    }

    return sub_BEB8(v17);
  }

  else
  {
    if (qword_93DF18 != -1)
    {
      swift_once();
    }

    v12 = sub_768FF0();
    sub_BE38(v12, qword_9A0478);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768E80();

    (*&v0[OBJC_IVAR____TtC18ASMessagesProvider24OnboardingViewController_completionCallback])(v0);
    if (qword_93E118 != -1)
    {
      swift_once();
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_73989C();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_6D31D0(char a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "viewWillAppear:", a1 & 1);
  v4 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider24OnboardingViewController_presenter];
  swift_beginAccess();
  v5 = *(v4 + 32);
  if (*(v5 + 16))
  {
    sub_134D8(v5 + 32, v8);
    return sub_10A2C(v8, &unk_962740);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_10A2C(v8, &unk_962740);
    if (qword_93DF18 != -1)
    {
      swift_once();
    }

    v7 = sub_768FF0();
    sub_BE38(v7, qword_9A0478);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768EA0();

    (*&v2[OBJC_IVAR____TtC18ASMessagesProvider24OnboardingViewController_completionCallback])(v2);
    if (qword_93E118 != -1)
    {
      swift_once();
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_73989C();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_6D347C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_75F850();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  sub_134D8(a1, v41);
  sub_BD88(&qword_93F348);
  if (swift_dynamicCast())
  {
    v17 = *(v5 + 16);
    v17(v13, v16, v4);
    if (*(*&v2[OBJC_IVAR____TtC18ASMessagesProvider24OnboardingViewController_presenter] + 16) == 2)
    {
      v18 = sub_6D3A4C();
      v19 = *(v5 + 8);
      v19(v13, v4);
      v19(v16, v4);
      goto LABEL_8;
    }

    v37 = v7;
    v38 = v2;
    v20 = *(v5 + 8);
    v20(v13, v4);
    (*(v5 + 32))(v10, v16, v4);
    v21 = v37;
    v17(v37, v10, v4);
    v22 = sub_75A730();
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    objc_allocWithZone(type metadata accessor for OnboardingWelcomeViewController());

    v18 = sub_20B138(v21, v22 & 1, sub_6D488C, v23);

    v20(v10, v4);
    v2 = v38;
LABEL_7:

    goto LABEL_8;
  }

  type metadata accessor for AdPrivacyOnboardingStep();
  if (swift_dynamicCast())
  {
    v18 = sub_6D3DFC();
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    sub_174E4(aBlock);
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = objc_allocWithZone(type metadata accessor for OnboardingLocationPrivacyViewController());
    v18 = sub_28A02C(sub_6D4854, v30, sub_6D4884, v31);
  }

  else
  {
    type metadata accessor for JourneyDrivenOnboardingStep();
    if (!swift_dynamicCast())
    {
      goto LABEL_20;
    }

    v33 = v39;
    v18 = *&v39[OBJC_IVAR____TtC18ASMessagesProvider27JourneyDrivenOnboardingStep_engagementViewController];
    if (!v18)
    {

      sub_BEB8(v41);
      return v18;
    }

    v34 = [v18 startEngagement];
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_6D4834;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_151A34;
    aBlock[3] = &unk_89D650;
    v36 = _Block_copy(aBlock);

    [v34 addFinishBlock:v36];
    _Block_release(v36);
  }

LABEL_8:
  sub_BEB8(v41);
  v24 = [v18 view];
  if (v24)
  {
    v25 = v24;
    v26 = [v2 view];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 tintColor];

      [v25 setTintColor:v28];
      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  result = sub_76A840();
  __break(1u);
  return result;
}

id sub_6D3A4C()
{
  v1 = v0;
  v2 = sub_7573C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  sub_75F800();
  isa = sub_769450().super.isa;

  v8 = [v6 linkWithBundleIdentifiers:isa];

  if (v8)
  {
    v9 = v8;
    [v9 setModalPresentationStyle:{objc_msgSend(v1, "modalPresentationStyle")}];

    v10 = v9;
    sub_757390();
    sub_7572F0();
    (*(v3 + 8))(v5, v2);
    v11 = sub_769210();

    [v10 setDisplayLanguage:v11];
  }

  v12 = sub_56E958(0xD000000000000017, 0x80000000007F1A40, 0);
  v24._countAndFlagsBits = 0xD00000000000001FLL;
  v24._object = 0x80000000007F1A60;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_75B750(v24, v27);
  v25._countAndFlagsBits = 0xD000000000000025;
  v25._object = 0x80000000007F1A80;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_75B750(v25, v28);
  v22[1] = v1;
  v26._object = 0x80000000007F1AB0;
  v26._countAndFlagsBits = 0xD000000000000013;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_75B750(v26, v29);
  v13 = objc_allocWithZone(AMSUIOnboardingViewController);
  v14 = v8;
  v15 = sub_769210();

  v16 = sub_769210();

  v17 = sub_769210();

  v18 = [v13 initWithHeaderImage:v12 titleText:v15 descriptionText:v16 primaryButtonText:v17 privacyLinkController:v14];

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_6D48DC;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_123860;
  aBlock[3] = &unk_89D678;
  v20 = _Block_copy(aBlock);

  [v18 setPrimaryButtonCallback:v20];

  _Block_release(v20);
  return v18;
}

id sub_6D3DFC()
{
  v0 = sub_7573C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_4F1860();
  sub_7573B0();
  v5 = sub_7572F0();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  v8 = sub_75A8D0();
  v15[0] = v5;
  v15[1] = v7;
  v14 = v15;
  v9 = sub_4F1408(sub_2C59DC, v13, v8);

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = objc_allocWithZone(type metadata accessor for OnboardingAdPrivacyViewController());
  return sub_31E040(v4, (v9 & 1) == 0, sub_6D48BC, v10);
}

void sub_6D3FAC(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_7;
    }

    v3 = Strong;

    sub_16770();
  }

  else
  {
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = v4;

    sub_16778();
  }

LABEL_7:
  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_6D2C8C();
  }
}

void sub_6D4094(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    a3();
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_6D2C8C();
  }
}

void sub_6D4140()
{
  v0 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v0 - 8);
  v2 = &v16[-v1];
  v3 = sub_7570A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;

    sub_1685C();
  }

  sub_757090();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_10A2C(v2, &unk_93FD30);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v9 = [objc_opt_self() defaultWorkspace];
    if (!v9)
    {
      __break(1u);
      return;
    }

    v11 = v9;
    sub_757040(v10);
    v13 = v12;
    [v11 openSensitiveURL:v12 withOptions:0];

    (*(v4 + 8))(v6, v3);
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    sub_6D2C8C();
  }
}

uint64_t sub_6D43AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_768380();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7683C0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BE70(0, &qword_940340);
  v12 = sub_769970();
  aBlock[4] = sub_6D48C4;
  aBlock[5] = a3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_89D6A0;
  v13 = _Block_copy(aBlock);

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_4C81C();
  sub_BD88(&qword_940350);
  sub_4C874();
  sub_76A5A0();
  sub_769980();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void sub_6D462C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider24OnboardingViewController_presenter);
    v2 = Strong;

    swift_beginAccess();
    v3 = *(v1 + 32);
    if (*(v3 + 16))
    {
      sub_134D8(v3 + 32, v7);
      sub_BD88(&qword_93F348);
      type metadata accessor for JourneyDrivenOnboardingStep();
      if (swift_dynamicCast())
      {
        sub_17220(v6, v1);
      }
    }
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    sub_6D2C8C();
  }
}

uint64_t sub_6D47FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6D483C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_6D48E0()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_haveFlashedScrollIndicators;
  if ((*(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_haveFlashedScrollIndicators) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_overlayContentContainerView);
    [v2 contentSize];
    v4 = v3;
    [v2 bounds];
    if (CGRectGetHeight(v7) < v4 || (v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_cardScrollView), [v2 contentSize], v6 = v5, objc_msgSend(v2, "bounds"), CGRectGetHeight(v8) < v6))
    {
      [v2 flashScrollIndicators];
      *(v0 + v1) = 1;
    }
  }
}

void sub_6D49AC(void *a1)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_videoBackgroundColor;
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_videoBackgroundColor);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_videoBackgroundColor) = a1;
  v7 = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(v1 + v2);
    [v5 setBackgroundColor:v6];
  }
}

id sub_6D4A6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_760AD0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_93E530);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = &v38 - v12;
  v14 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_requirementsLabel;
  result = *&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_requirementsLabel];
  if (!result || (result = [result text]) == 0)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_11;
  }

  v39 = v7;
  v16 = v3;
  v17 = a1;
  v18 = result;
  v19 = sub_769240();
  v21 = v20;

  if (!a2)
  {

    v3 = v16;
    v7 = v39;
    if (*&v3[v14])
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (v19 != v17 || v21 != a2)
  {
    v23 = sub_76A950();

    v3 = v16;
    v7 = v39;
    if (v23)
    {
      goto LABEL_19;
    }

LABEL_11:
    if (*&v3[v14])
    {
LABEL_12:

      return [v3 setNeedsLayout];
    }

LABEL_14:
    v24 = sub_7666D0();
    (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
    (*(v7 + 104))(v9, enum case for DirectionalTextAlignment.none(_:), v6);
    v25 = objc_allocWithZone(sub_75BB20());
    v26 = sub_75BB10();
    v27 = [v3 traitCollection];
    v28 = sub_7699E0();

    if (v28)
    {
      if (qword_93E1A0 != -1)
      {
        swift_once();
      }

      v29 = &qword_9627A8;
    }

    else
    {
      if (qword_93E1C0 != -1)
      {
        swift_once();
      }

      v29 = &qword_9627C8;
    }

    [v26 setFont:*v29];
    if (a2)
    {
      v30 = sub_769210();
    }

    else
    {
      v30 = 0;
    }

    [v26 setText:v30];

    v31 = *&v3[v14];
    *&v3[v14] = v26;
    v32 = v26;

    v33 = [v3 traitCollection];
    if (sub_769A00())
    {
      v34 = sub_7699D0();

      if (v34)
      {
        [*&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_contentContainerView] addSubview:v32];
        sub_BE70(0, &qword_93E540);
        v35 = v32;
        v36 = sub_769FF0();
LABEL_33:
        v37 = v36;
        [v35 setTextColor:v36];

        return [v3 setNeedsLayout];
      }
    }

    else
    {
    }

    [*&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_overlayContentContainerView] addSubview:v32];
    sub_BE70(0, &qword_93E540);
    v35 = v32;
    v36 = sub_769FD0();
    goto LABEL_33;
  }

LABEL_19:
}

uint64_t sub_6D4F1C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupArtwork);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupArtwork) = result;
  if (result)
  {
    if (v2)
    {
      sub_765390();
      sub_6DDA3C(&qword_947FE0, &type metadata accessor for Artwork);
      swift_retain_n();
      v3 = sub_7691C0();

      if (v3)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:
    v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_artworkLoader);

    sub_64EAF0(v5, v4);

LABEL_9:
  }

  if (v2)
  {
    goto LABEL_8;
  }

  return result;
}

void sub_6D5058(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_notifyMeButtonPresenter);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_notifyMeButtonPresenter) = a1;
  if (v2)
  {
    v3 = OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer);
    if (v4)
    {
      [v4 invalidate];
      v5 = *(v2 + v3);
    }

    else
    {
      v5 = 0;
    }

    *(v2 + v3) = 0;
  }
}

uint64_t sub_6D50EC()
{
  v0 = sub_75CF00();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_161DC(v4, qword_9A0878);
  sub_BE38(v0, qword_9A0878);
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_99B898);
  (*(v1 + 16))(v3, v5, v0);
  sub_765470();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_6D5250(uint64_t a1)
{
  v2 = sub_7664A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75CDE0();
  v36 = a1;
  sub_75CE20();
  if (qword_93D5A0 != -1)
  {
    swift_once();
  }

  v6 = sub_7666D0();
  v7 = sub_BE38(v6, qword_99E8F0);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v35 = v8 + 16;
  v9(v5, v7, v6);
  v10 = v3[13];
  v33 = enum case for FontSource.useCase(_:);
  v10(v5);
  v11 = sub_766CA0();
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v12 = sub_B1B4(v38);
  v13 = v3[2];
  v37 = v3 + 2;
  v34 = v13;
  v13(v12, v5, v2);
  sub_766CB0();
  v14 = v3[1];
  v14(v5, v2);
  sub_75CEE0();
  if (qword_93D598 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v6, qword_99E8D8);
  (v9)(v5);
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(v41);
  v31 = v9;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v15 = sub_B1B4(v38);
  v34(v15, v5, v2);
  sub_766CB0();
  v14(v5, v2);
  sub_75CE60();
  v32 = v14;
  if (qword_93D588 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v6, qword_99E8A8);
  v31(v5, v16, v6);
  v17 = v33;
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v18 = sub_B1B4(v38);
  v34(v18, v5, v2);
  sub_766CB0();
  v32(v5, v2);
  sub_75CE00();
  v19 = v11;
  if (qword_93D590 != -1)
  {
    swift_once();
  }

  v20 = sub_BE38(v6, qword_99E8C0);
  v21 = v31;
  v31(v5, v20, v6);
  (v10)(v5, v17, v2);
  v42 = v19;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(v41);
  v29 = v19;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v22 = sub_B1B4(v38);
  v28 = v10;
  v23 = v34;
  v34(v22, v5, v2);
  sub_766CB0();
  v24 = v32;
  v32(v5, v2);
  sub_75CEF0();
  sub_75CE40();
  v21(v5, v30, v6);
  (v28)(v5, v33, v2);
  v42 = v29;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v25 = sub_B1B4(v38);
  v23(v25, v5, v2);
  sub_766CB0();
  v24(v5, v2);
  return sub_75CE50();
}

uint64_t sub_6D5838()
{
  v0 = sub_75CF00();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_161DC(v4, qword_9A0890);
  sub_BE38(v0, qword_9A0890);
  if (qword_93E128 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_9A0878);
  (*(v1 + 16))(v3, v5, v0);
  sub_765470();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_6D599C()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_766690();
  v77 = *(v4 - 8);
  v78 = v4;
  __chkstk_darwin(v4);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  sub_161DC(v7, qword_9A08A8);
  v74 = v7;
  v75 = sub_BE38(v7, qword_9A08A8);
  v76 = v6;
  sub_7666A0();
  v167 = &type metadata for Double;
  v168 = &protocol witness table for Double;
  v165 = &protocol witness table for Double;
  *&v166 = 0x4030000000000000;
  v164 = &type metadata for Double;
  *&v163 = 0x4030000000000000;
  if (qword_93E168 != -1)
  {
    swift_once();
  }

  v8 = qword_962770;
  *v3 = qword_962770;
  v80 = enum case for FontSource.textStyle(_:);
  v82 = v1[13];
  v82(v3);
  v81 = sub_766CA0();
  v161 = v81;
  v162 = &protocol witness table for StaticDimension;
  sub_B1B4(&v160);
  v158 = v0;
  v159 = &protocol witness table for FontSource;
  v9 = sub_B1B4(&v157);
  v10 = v1[2];
  v10(v9, v3, v0);
  v11 = v8;
  sub_766CB0();
  v12 = v1[1];
  v12(v3, v0);
  v158 = &type metadata for Double;
  v159 = &protocol witness table for Double;
  *&v157 = 0x4030000000000000;
  v156 = &protocol witness table for Double;
  v155 = &type metadata for Double;
  *&v154 = 0x4030000000000000;
  v13 = sub_766970();
  v152 = v13;
  v153 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v151);
  sub_766960();
  v73 = v13;
  v149 = v13;
  v150 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v148);
  sub_766960();
  v14 = qword_962770;
  *v3 = qword_962770;
  v86 = v1 + 13;
  (v82)(v3, v80, v0);
  v146 = v81;
  v147 = &protocol witness table for StaticDimension;
  sub_B1B4(&v145);
  v143 = v0;
  v144 = &protocol witness table for FontSource;
  v15 = sub_B1B4(&v142);
  v83 = v10;
  v84 = v1 + 2;
  v10(v15, v3, v0);
  v16 = v14;
  sub_766CB0();
  v85 = v1 + 1;
  v79 = v12;
  v12(v3, v0);
  if (qword_93E170 != -1)
  {
    swift_once();
  }

  v17 = qword_962778;
  *v3 = qword_962778;
  v18 = v80;
  v19 = v82;
  (v82)(v3, v80, v0);
  v143 = v81;
  v144 = &protocol witness table for StaticDimension;
  sub_B1B4(&v142);
  v140 = v0;
  v141 = &protocol witness table for FontSource;
  v20 = sub_B1B4(&v139);
  v21 = v83;
  v83(v20, v3, v0);
  v22 = v17;
  sub_766CB0();
  v23 = v79;
  v79(v3, v0);
  v141 = &protocol witness table for Double;
  v140 = &type metadata for Double;
  *&v139 = 0x4034000000000000;
  v24 = qword_962770;
  *v3 = qword_962770;
  v19(v3, v18, v0);
  v25 = v81;
  v137 = v81;
  v138 = &protocol witness table for StaticDimension;
  sub_B1B4(&v136);
  v134 = v0;
  v135 = &protocol witness table for FontSource;
  v26 = sub_B1B4(&v133);
  v21(v26, v3, v0);
  v27 = v24;
  sub_766CB0();
  v23(v3, v0);
  v28 = v73;
  v134 = v73;
  v135 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v133);
  sub_766960();
  v131 = v28;
  v132 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v130);
  sub_766960();
  v128 = v28;
  v129 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v127);
  sub_766960();
  if (qword_93E178 != -1)
  {
    swift_once();
  }

  v29 = qword_962780;
  *v3 = qword_962780;
  v30 = v80;
  v31 = v82;
  (v82)(v3, v80, v0);
  v125 = v25;
  v126 = &protocol witness table for StaticDimension;
  sub_B1B4(&v124);
  v122 = v0;
  v123 = &protocol witness table for FontSource;
  v32 = sub_B1B4(&v121);
  v83(v32, v3, v0);
  v33 = v29;
  sub_766CB0();
  v79(v3, v0);
  v34 = qword_962780;
  *v3 = qword_962780;
  v31(v3, v30, v0);
  v35 = v81;
  v122 = v81;
  v123 = &protocol witness table for StaticDimension;
  sub_B1B4(&v121);
  v119 = v0;
  v120 = &protocol witness table for FontSource;
  v36 = sub_B1B4(&v118);
  v83(v36, v3, v0);
  v37 = v34;
  sub_766CB0();
  v38 = v79;
  v79(v3, v0);
  v39 = qword_962780;
  *v3 = qword_962780;
  v31(v3, v30, v0);
  v119 = v35;
  v120 = &protocol witness table for StaticDimension;
  sub_B1B4(&v118);
  v116 = v0;
  v117 = &protocol witness table for FontSource;
  v40 = sub_B1B4(&v115);
  v83(v40, v3, v0);
  v41 = v39;
  sub_766CB0();
  v38(v3, v0);
  if (qword_93E180 != -1)
  {
    swift_once();
  }

  v42 = qword_962788;
  *v3 = qword_962788;
  (v82)(v3, v30, v0);
  v116 = v35;
  v117 = &protocol witness table for StaticDimension;
  sub_B1B4(&v115);
  v113 = v0;
  v114 = &protocol witness table for FontSource;
  v43 = sub_B1B4(&v112);
  v83(v43, v3, v0);
  v44 = v42;
  sub_766CB0();
  v45 = v79;
  v79(v3, v0);
  v46 = qword_962788;
  *v3 = qword_962788;
  (v82)(v3, v30, v0);
  v113 = v35;
  v114 = &protocol witness table for StaticDimension;
  sub_B1B4(&v112);
  v110 = v0;
  v111 = &protocol witness table for FontSource;
  v47 = sub_B1B4(&v109);
  v48 = v83;
  v83(v47, v3, v0);
  v49 = v46;
  sub_766CB0();
  v45(v3, v0);
  v111 = &protocol witness table for Double;
  v110 = &type metadata for Double;
  *&v109 = 0x4032000000000000;
  v50 = v80;
  v51 = qword_962788;
  *v3 = qword_962788;
  (v82)(v3, v50, v0);
  v107 = v81;
  v108 = &protocol witness table for StaticDimension;
  sub_B1B4(&v106);
  v104 = v0;
  v105 = &protocol witness table for FontSource;
  v52 = sub_B1B4(&v103);
  v48(v52, v3, v0);
  v53 = v48;
  v54 = v51;
  sub_766CB0();
  v55 = v79;
  v79(v3, v0);
  v105 = &protocol witness table for Double;
  v104 = &type metadata for Double;
  v102 = &protocol witness table for Double;
  *&v103 = 0x4032000000000000;
  v101 = &type metadata for Double;
  *&v100 = 0x4024000000000000;
  v56 = qword_962788;
  *v3 = qword_962788;
  v57 = v82;
  (v82)(v3, v50, v0);
  v98 = v81;
  v99 = &protocol witness table for StaticDimension;
  sub_B1B4(&v97);
  v95 = v0;
  v96 = &protocol witness table for FontSource;
  v58 = sub_B1B4(&v94);
  v53(v58, v3, v0);
  v59 = v56;
  sub_766CB0();
  v55(v3, v0);
  v60 = qword_962788;
  *v3 = qword_962788;
  v57(v3, v50, v0);
  v61 = v81;
  v95 = v81;
  v96 = &protocol witness table for StaticDimension;
  sub_B1B4(&v94);
  v92 = v0;
  v93 = &protocol witness table for FontSource;
  v62 = sub_B1B4(&v91);
  v53(v62, v3, v0);
  v63 = v60;
  sub_766CB0();
  v55(v3, v0);
  v93 = &protocol witness table for Double;
  v92 = &type metadata for Double;
  *&v91 = 0x4024000000000000;
  if (qword_93E158 != -1)
  {
    swift_once();
  }

  v64 = qword_962760;
  *v3 = qword_962760;
  v57(v3, v80, v0);
  v89 = v61;
  v90 = &protocol witness table for StaticDimension;
  sub_B1B4(&v88);
  v87[3] = v0;
  v87[4] = &protocol witness table for FontSource;
  v65 = sub_B1B4(v87);
  v83(v65, v3, v0);
  v66 = v64;
  sub_766CB0();
  v55(v3, v0);
  v67 = v75;
  (*(v77 + 32))(v75, v76, v78);
  v68 = v74;
  sub_10914(&v166, v67 + v74[5]);
  sub_10914(&v163, v67 + v68[6]);
  sub_10914(&v160, v67 + v68[7]);
  sub_10914(&v157, v67 + v68[8]);
  sub_10914(&v154, v67 + v68[9]);
  v69 = (v67 + v68[10]);
  *v69 = 0;
  v69[1] = 0;
  sub_10914(&v151, v67 + v68[11]);
  sub_10914(&v148, v67 + v68[12]);
  sub_10914(&v145, v67 + v68[13]);
  sub_10914(&v142, v67 + v68[14]);
  sub_10914(&v139, v67 + v68[15]);
  sub_10914(&v136, v67 + v68[16]);
  v70 = (v67 + v68[17]);
  *v70 = 0;
  v70[1] = 0;
  sub_10914(&v133, v67 + v68[18]);
  sub_10914(&v130, v67 + v68[19]);
  sub_10914(&v127, v67 + v68[20]);
  sub_10914(&v124, v67 + v68[21]);
  sub_10914(&v121, v67 + v68[22]);
  sub_10914(&v118, v67 + v68[23]);
  sub_10914(&v115, v67 + v68[24]);
  sub_10914(&v112, v67 + v68[25]);
  sub_10914(&v109, v67 + v68[26]);
  sub_10914(&v106, v67 + v68[27]);
  sub_10914(&v103, v67 + v68[28]);
  sub_10914(&v100, v67 + v68[29]);
  sub_10914(&v97, v67 + v68[30]);
  sub_10914(&v94, v67 + v68[31]);
  sub_10914(&v91, v67 + v68[32]);
  return sub_10914(&v88, v67 + v68[33]);
}

uint64_t sub_6D67F0()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_766690();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  sub_161DC(v7, qword_9A08C0);
  v52 = v7;
  v53 = sub_BE38(v7, qword_9A08C0);
  v54 = v6;
  sub_7666A0();
  v143 = &type metadata for Double;
  v144 = &protocol witness table for Double;
  v141 = &protocol witness table for Double;
  *&v142 = 0x4034000000000000;
  v140 = &type metadata for Double;
  *&v139 = 0x4034000000000000;
  v8 = sub_766970();
  v137 = v8;
  v138 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v136);
  sub_766960();
  v134 = &type metadata for Double;
  v135 = &protocol witness table for Double;
  *&v133 = 0x4034000000000000;
  v132 = &protocol witness table for Double;
  v131 = &type metadata for Double;
  *&v130 = 0x4034000000000000;
  v58 = v8;
  v128 = v8;
  v129 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v127);
  sub_766960();
  if (qword_93E148 != -1)
  {
    swift_once();
  }

  v9 = qword_962750;
  *v3 = qword_962750;
  v63 = enum case for FontSource.textStyle(_:);
  v10 = v1[13];
  v10(v3);
  v62 = sub_766CA0();
  v125 = v62;
  v126 = &protocol witness table for StaticDimension;
  sub_B1B4(&v124);
  v122 = v0;
  v123 = &protocol witness table for FontSource;
  v11 = sub_B1B4(&v121);
  v12 = v1[2];
  v12(v11, v3, v0);
  v13 = v9;
  sub_766CB0();
  v14 = v1[1];
  v14(v3, v0);
  v15 = qword_962750;
  *v3 = qword_962750;
  v61 = v10;
  v59 = v1 + 13;
  (v10)(v3, v63, v0);
  v122 = v62;
  v123 = &protocol witness table for StaticDimension;
  sub_B1B4(&v121);
  v119 = v0;
  v120 = &protocol witness table for FontSource;
  v16 = sub_B1B4(&v118);
  v60 = v1 + 2;
  v12(v16, v3, v0);
  v17 = v12;
  v18 = v15;
  sub_766CB0();
  v14(v3, v0);
  v120 = &protocol witness table for Double;
  v119 = &type metadata for Double;
  *&v118 = 0x4000000000000000;
  v117 = &protocol witness table for Double;
  v116 = &type metadata for Double;
  *&v115 = 0x4034000000000000;
  v19 = v58;
  v113 = v58;
  v114 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v112);
  sub_766960();
  if (qword_93E150 != -1)
  {
    swift_once();
  }

  v20 = qword_962758;
  *v3 = qword_962758;
  v61(v3, v63, v0);
  v110 = v62;
  v111 = &protocol witness table for StaticDimension;
  sub_B1B4(&v109);
  v107 = v0;
  v108 = &protocol witness table for FontSource;
  v21 = sub_B1B4(&v106);
  v12(v21, v3, v0);
  v22 = v20;
  sub_766CB0();
  v14(v3, v0);
  v107 = v19;
  v108 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v106);
  sub_766960();
  v104 = v19;
  v105 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v103);
  sub_766960();
  if (qword_93E158 != -1)
  {
    swift_once();
  }

  v23 = qword_962760;
  *v3 = qword_962760;
  v61(v3, v63, v0);
  v101 = v62;
  v102 = &protocol witness table for StaticDimension;
  sub_B1B4(&v100);
  v98 = v0;
  v99 = &protocol witness table for FontSource;
  v24 = sub_B1B4(&v97);
  v12(v24, v3, v0);
  v25 = v23;
  sub_766CB0();
  v14(v3, v0);
  v98 = v19;
  v99 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v97);
  sub_766960();
  v95 = v19;
  v96 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v94);
  sub_766960();
  v93 = &protocol witness table for Double;
  v92 = &type metadata for Double;
  v90 = &protocol witness table for ZeroDimension;
  *&v91 = 0x4022000000000000;
  v89 = v19;
  sub_B1B4(&v88);
  sub_766960();
  v26 = v1 + 1;
  v51 = v14;
  if (qword_93E160 != -1)
  {
    swift_once();
  }

  v27 = qword_962768;
  *v3 = qword_962768;
  v28 = v63;
  v29 = v61;
  v61(v3, v63, v0);
  v30 = v29;
  v86 = v62;
  v87 = &protocol witness table for StaticDimension;
  sub_B1B4(&v85);
  v83 = v0;
  v84 = &protocol witness table for FontSource;
  v31 = sub_B1B4(&v82);
  v17(v31, v3, v0);
  v32 = v27;
  sub_766CB0();
  v33 = v51;
  v51(v3, v0);
  v57 = v26;
  v83 = v58;
  v84 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v82);
  sub_766960();
  v34 = qword_962768;
  *v3 = qword_962768;
  v30(v3, v28, v0);
  v35 = v62;
  v80 = v62;
  v81 = &protocol witness table for StaticDimension;
  sub_B1B4(&v79);
  v77 = v0;
  v78 = &protocol witness table for FontSource;
  v36 = sub_B1B4(&v76);
  v17(v36, v3, v0);
  v37 = v34;
  sub_766CB0();
  v33(v3, v0);
  v38 = qword_962768;
  *v3 = qword_962768;
  v61(v3, v63, v0);
  v77 = v35;
  v78 = &protocol witness table for StaticDimension;
  sub_B1B4(&v76);
  v74 = v0;
  v75 = &protocol witness table for FontSource;
  v39 = sub_B1B4(&v73);
  v17(v39, v3, v0);
  v40 = v38;
  sub_766CB0();
  v33(v3, v0);
  v41 = v58;
  v74 = v58;
  v75 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v73);
  sub_766960();
  v71 = v41;
  v72 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v70);
  sub_766960();
  v42 = qword_962768;
  *v3 = qword_962768;
  v61(v3, v63, v0);
  v68 = v62;
  v69 = &protocol witness table for StaticDimension;
  sub_B1B4(&v67);
  v65 = v0;
  v66 = &protocol witness table for FontSource;
  v43 = sub_B1B4(&v64);
  v17(v43, v3, v0);
  v44 = v42;
  sub_766CB0();
  v33(v3, v0);
  v65 = v41;
  v66 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v64);
  sub_766960();
  v45 = v53;
  (*(v55 + 32))(v53, v54, v56);
  v46 = v52;
  sub_10914(&v142, v45 + v52[5]);
  sub_10914(&v139, v45 + v46[6]);
  sub_10914(&v136, v45 + v46[7]);
  sub_10914(&v133, v45 + v46[8]);
  sub_10914(&v130, v45 + v46[9]);
  v47 = (v45 + v46[10]);
  *v47 = 0;
  v47[1] = 0;
  sub_10914(&v127, v45 + v46[11]);
  sub_10914(&v124, v45 + v46[12]);
  sub_10914(&v121, v45 + v46[13]);
  sub_10914(&v118, v45 + v46[14]);
  sub_10914(&v115, v45 + v46[15]);
  sub_10914(&v112, v45 + v46[16]);
  v48 = (v45 + v46[17]);
  *v48 = 0;
  v48[1] = 0;
  sub_10914(&v109, v45 + v46[18]);
  sub_10914(&v106, v45 + v46[19]);
  sub_10914(&v103, v45 + v46[20]);
  sub_10914(&v100, v45 + v46[21]);
  sub_10914(&v97, v45 + v46[22]);
  sub_10914(&v94, v45 + v46[23]);
  sub_10914(&v91, v45 + v46[24]);
  sub_10914(&v88, v45 + v46[25]);
  sub_10914(&v85, v45 + v46[26]);
  sub_10914(&v82, v45 + v46[27]);
  sub_10914(&v79, v45 + v46[28]);
  sub_10914(&v76, v45 + v46[29]);
  sub_10914(&v73, v45 + v46[30]);
  sub_10914(&v70, v45 + v46[31]);
  sub_10914(&v67, v45 + v46[32]);
  return sub_10914(&v64, v45 + v46[33]);
}

void sub_6D7440()
{
  v0 = objc_opt_self();
  if (qword_93E150 != -1)
  {
    swift_once();
  }

  v1 = qword_962758;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightMedium];

  qword_962798 = v2;
}

void sub_6D751C()
{
  v0 = objc_opt_self();
  if (qword_93E160 != -1)
  {
    swift_once();
  }

  v1 = qword_962768;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightMedium];

  qword_9627A8 = v2;
}

void sub_6D7624(uint64_t a1, void *a2, id *a3, void *a4)
{
  v7 = objc_opt_self();
  if (*a2 != -1)
  {
    swift_once();
  }

  v8 = *a3;
  v9 = [v7 _preferredFontForTextStyle:v8 weight:UIFontWeightSemibold];

  *a4 = v9;
}

void sub_6D7704(uint64_t a1, void *a2, id *a3, void *a4)
{
  v7 = objc_opt_self();
  if (*a2 != -1)
  {
    swift_once();
  }

  v8 = *a3;
  v9 = [v7 preferredFontForTextStyle:v8];

  *a4 = v9;
}

void sub_6D77A0()
{
  v0 = objc_opt_self();
  if (qword_93E180 != -1)
  {
    swift_once();
  }

  v1 = qword_962788;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightMedium];

  qword_9627C8 = v2;
}

UIColor sub_6D7850()
{
  sub_BE70(0, &qword_93E540);
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2.super.isa = [v0 secondarySystemBackgroundColor];
  v3.super.isa = v1;
  result.super.isa = sub_76A0C0(v3, v2).super.isa;
  qword_9627D0 = result.super.isa;
  return result;
}

id sub_6D78E4()
{
  result = [objc_opt_self() blackColor];
  qword_9627D8 = result;
  return result;
}

uint64_t sub_6D7920()
{
  v0 = sub_759950();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_76A3F0();
  sub_161DC(v4, qword_9627E0);
  sub_BE38(v4, qword_9627E0);
  sub_76A3A0();
  sub_76A2C0();
  v5 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleTitle3 scale:2];
  sub_76A220();
  (*(v1 + 104))(v3, enum case for SystemImage.squareAndArrowUp(_:), v0);
  sub_759930();
  (*(v1 + 8))(v3, v0);
  return sub_76A390();
}

id sub_6D7AA0()
{
  v1 = v0;
  v2 = sub_7593D0();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = sub_7699D0();

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_overlayContentContainerView];
    [v10 contentSize];
    v12 = v11;
    [v10 bounds];
    v9 = v12 <= CGRectGetHeight(v51);
  }

  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_cardScrollView] setAlwaysBounceVertical:v9];
  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_cardContentView];
  v14 = [v1 traitCollection];
  v15 = sub_7699E0();

  if (v15)
  {
    if (qword_93E1D0 != -1)
    {
      swift_once();
    }

    v16 = &qword_9627D8;
  }

  else
  {
    if (qword_93E1C8 != -1)
    {
      swift_once();
    }

    v16 = &qword_9627D0;
  }

  [v13 setBackgroundColor:*v16];
  v17 = [v1 traitCollection];
  sub_7699E0();

  v18 = enum case for CornerStyle.continuous(_:);
  v19 = *(v3 + 104);
  v19(v6, enum case for CornerStyle.continuous(_:), v2);
  sub_75CCD0();
  v20 = *(v3 + 8);
  v20(v6, v2);
  v19(v6, v18, v2);
  sub_758E70();
  v20(v6, v2);
  v19(v6, v18, v2);
  sub_75CCD0();
  v20(v6, v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    [Strong _setCornerRadius:26.0];
  }

  v23 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_kindLabel];
  v24 = [v1 traitCollection];
  v25 = sub_7699E0();

  if (v25)
  {
    if (qword_93E188 != -1)
    {
      swift_once();
    }

    v26 = &qword_962790;
  }

  else
  {
    if (qword_93E1A8 != -1)
    {
      swift_once();
    }

    v26 = &qword_9627B0;
  }

  [v23 setFont:*v26];
  v27 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_titleLabel];
  v28 = [v1 traitCollection];
  v29 = sub_7699E0();

  if (v29)
  {
    if (qword_93E190 != -1)
    {
      swift_once();
    }

    v30 = &qword_962798;
  }

  else
  {
    if (qword_93E1B0 != -1)
    {
      swift_once();
    }

    v30 = &qword_9627B8;
  }

  [v27 setFont:*v30];
  v31 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_detailLabel];
  v32 = [v1 traitCollection];
  v33 = sub_7699E0();

  if (v33)
  {
    if (qword_93E198 != -1)
    {
      swift_once();
    }

    v34 = &qword_9627A0;
  }

  else
  {
    if (qword_93E1B8 != -1)
    {
      swift_once();
    }

    v34 = &qword_9627C0;
  }

  [v31 setFont:*v34];
  v35 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_requirementsLabel];
  if (v35)
  {
    v36 = v35;
    v37 = [v1 traitCollection];
    v38 = sub_7699E0();

    if (v38)
    {
      if (qword_93E1A0 != -1)
      {
        swift_once();
      }

      v39 = &qword_9627A8;
    }

    else
    {
      if (qword_93E1C0 != -1)
      {
        swift_once();
      }

      v39 = &qword_9627C8;
    }

    [v36 setFont:*v39];
  }

  v40 = [v1 traitCollection];
  v41 = sub_7699E0();

  v42 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_gradientBlurView;
  v43 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_gradientBlurView];
  if (v41)
  {
    if (v43)
    {
      [v43 setHidden:1];
    }

    sub_6D9854();
    sub_6DBB90();
  }

  else
  {
    if (v43 || (v47 = objc_allocWithZone(type metadata accessor for MediaOverlayGradientBlurView()), v48 = sub_4AA654(0), sub_6DE0B0(v48), v48, (v49 = *&v1[v42]) != 0) && ([v49 setUserInteractionEnabled:0], (v43 = *&v1[v42]) != 0))
    {
      [v43 setHidden:0];
    }

    v44 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaReplicationView];
    if (v44)
    {
      [v44 setHidden:1];
    }

    v45 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_contentBackgroundBlurView];
    if (v45)
    {
      [v45 setHidden:1];
    }
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_6D81C0()
{
  v1 = v0;
  v2 = sub_75CF00();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = sub_769A00();
  v46 = v2;
  if ((v8 & 1) == 0)
  {

    goto LABEL_8;
  }

  v9 = sub_7699D0();

  if ((v9 & 1) == 0)
  {
LABEL_8:
    v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_overlayContentContainerView];
    v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_detailLabel];
    [v16 addSubview:{v17, v46}];
    v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_notifyMeButton];
    [v16 addSubview:v18];
    [v16 addSubview:*&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_separatorView]];
    v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupView];
    [v16 addSubview:v13];
    v19 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_requirementsLabel;
    if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_requirementsLabel])
    {
      [v16 addSubview:?];
    }

    v20 = *(v18 + OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_style);
    *(v18 + OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_style) = 1;
    if (v20 == 1)
    {
      v21 = v6;
    }

    else
    {
      v21 = v6;
      v22 = sub_76A950();

      if ((v22 & 1) == 0)
      {
        sub_6990AC();
      }
    }

    sub_BE70(0, &qword_93E540);
    v23 = sub_769FD0();
    v24 = [v23 colorWithAlphaComponent:0.7];

    [v17 setTextColor:v24];
    v25 = *&v1[v19];
    if (!v25)
    {
      v29 = v21;
      v28 = &selRef_setTextAlignment_;
      v30 = &selRef_setSpeed_;
      goto LABEL_23;
    }

    v26 = v25;
    v27 = sub_769FD0();
    [v26 setTextColor:v27];
    v28 = &selRef_setTextAlignment_;
    goto LABEL_22;
  }

  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_contentContainerView];
  v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_detailLabel];
  [v10 addSubview:v11];
  v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_notifyMeButton];
  [v10 addSubview:v12];
  [v10 addSubview:*&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_separatorView]];
  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupView];
  [v10 addSubview:v13];
  v14 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_requirementsLabel;
  if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_requirementsLabel])
  {
    [v10 addSubview:?];
  }

  v15 = *(v12 + OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_style);
  *(v12 + OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_style) = 2;
  if (v15 > 1)
  {
    v21 = v6;
  }

  else
  {
    v21 = v6;
    v31 = sub_76A950();

    if ((v31 & 1) == 0)
    {
      sub_6990AC();
    }
  }

  sub_BE70(0, &qword_93E540);
  v32 = sub_769FD0();
  [v11 setTextColor:v32];

  v33 = *&v1[v14];
  v28 = &selRef_setTextAlignment_;
  if (v33)
  {
    v26 = v33;
    v27 = sub_769FF0();
    [v26 setTextColor:v27];
LABEL_22:
    v30 = &selRef_setSpeed_;

    v29 = v21;
    goto LABEL_23;
  }

  v29 = v21;
  v30 = &selRef_setSpeed_;
LABEL_23:
  v34 = [v1 v28[23]];
  v35 = sub_7699D0();
  v36 = v46;
  if (v35)
  {
    v37 = [v34 preferredContentSizeCategory];
    v38 = sub_769B50();

    if (v38)
    {
      v39 = &OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_contentContainerView;
      goto LABEL_28;
    }
  }

  else
  {
  }

  v39 = &OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_overlayContentContainerView;
LABEL_28:
  [*&v1[*v39] v30[349]];
  v40 = [v1 v28[23]];
  v41 = sub_769A00();

  if (v41)
  {
    if (qword_93E130 != -1)
    {
      swift_once();
    }

    v42 = qword_9A0890;
  }

  else
  {
    if (qword_93E128 != -1)
    {
      swift_once();
    }

    v42 = qword_9A0878;
  }

  v43 = sub_BE38(v36, v42);
  (*(v3 + 16))(v29, v43, v36);
  v44 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v3 + 24))(&v13[v44], v29, v36);
  swift_endAccess();
  [v13 setNeedsLayout];
  return (*(v3 + 8))(v29, v36);
}

void sub_6D8828()
{
  v1 = [*&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_overlayContentContainerView] traitCollection];
  [v1 userInterfaceStyle];

  sub_769240();
  v15 = sub_769210();

  v2 = [*&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_separatorView] layer];
  [v2 setCompositingFilter:v15];

  v3 = [*&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_kindLabel] layer];
  [v3 setCompositingFilter:v15];

  v4 = [*&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_detailLabel] layer];
  [v4 setCompositingFilter:v15];

  v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupView];
  v6 = [*(v5 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel) layer];
  [v6 setCompositingFilter:v15];

  v7 = [*(*(v5 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton) + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_subtitleLabel) layer];
  [v7 setCompositingFilter:v15];

  v8 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_shareButton];
  if (v8)
  {
    v9 = [v8 imageView];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 layer];

      [v11 setCompositingFilter:v15];
    }
  }

  if (v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_includeBorderInDarkMode] == 1)
  {
    v12 = [v0 traitCollection];
    v13 = [v12 userInterfaceStyle];

    v14 = v13 != &dword_0 + 2;
  }

  else
  {
    v14 = 1;
  }

  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_borderView] setHidden:v14];
  sub_6990AC();
}

void sub_6D8B24(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_dismissTapGestureRecognizer;
  if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_dismissTapGestureRecognizer])
  {
    [v1 removeGestureRecognizer:?];
    v4 = *&v1[v3];
  }

  else
  {
    v4 = 0;
  }

  *&v1[v3] = a1;
  v5 = a1;

  if (a1)
  {
    v6 = v5;
    [v6 addTarget:v1 action:"dismissTapGestureRecognized:"];
    [v6 setDelegate:v1];

    [v1 addGestureRecognizer:v6];
  }
}

void sub_6D8C10()
{
  if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_dismissTapGestureActionBlock])
  {
    v1 = [objc_allocWithZone(UITapGestureRecognizer) init];

    sub_6D8B24(v1);
  }

  else
  {
    v2 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_dismissTapGestureRecognizer;
    if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_dismissTapGestureRecognizer])
    {
      [v0 removeGestureRecognizer:?];
      v3 = *&v0[v2];
    }

    else
    {
      v3 = 0;
    }

    *&v0[v2] = 0;
  }
}

void sub_6D8CB0(void *a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v8 = *a2;
  if (*(v4 + *a2))
  {
    [*(v4 + *a3) removeGestureRecognizer:?];
    v9 = *(v4 + v8);
  }

  else
  {
    v9 = 0;
  }

  *(v4 + v8) = a1;
  v10 = a1;

  if (a1)
  {
    v11 = *a4;
    v12 = v10;
    [v12 addTarget:v4 action:v11];
    [v12 setDelegate:v4];

    [*(v4 + *a3) addGestureRecognizer:v12];
  }
}

void sub_6D8DB0()
{
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupTapGestureActionBlock))
  {
    sub_6D8CB0([objc_allocWithZone(UITapGestureRecognizer) init], &OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupTapGestureRecognizer, &OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupView, &selRef_lockupTapGestureRecognized_);
  }

  else
  {
    v1 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupTapGestureRecognizer;
    if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupTapGestureRecognizer))
    {
      [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupView) removeGestureRecognizer:?];
      v2 = *(v0 + v1);
    }

    else
    {
      v2 = 0;
    }

    *(v0 + v1) = 0;
  }
}

void sub_6D8E64(uint64_t a1, uint64_t a2, char a3)
{
  v7 = a3 & 1;
  v8 = sub_765240();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_artworkViewSize];
  v17 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_artworkViewSize];
  v18 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_artworkViewSize + 8];
  v19 = v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_artworkViewSize + 16];
  *v16 = *&a1;
  v16[1] = *&a2;
  *(v16 + 16) = v7;
  if ((a3 & 1) == 0)
  {
    if ((v19 & 1) != 0 || (v17 == *&a1 ? (v20 = v18 == *&a2) : (v20 = 0), !v20))
    {
      if ((*&a1 != 0.0 || *&a2 != 0.0) && (v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_isCollapsing] & 1) == 0 && *&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mainArtwork] && *&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_artworkLoader] != 0)
      {
        v22 = v13;
        v23 = v3;
        v24 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaContainerView];
        swift_retain_n();
        swift_retain_n();
        v25 = sub_7651A0();
        if (!v25)
        {
          sub_BE70(0, &qword_93E540);
          v25 = sub_76A030();
        }

        v26 = v25;
        [v24 setBackgroundColor:v25];

        v27 = [v23 traitCollection];
        v28 = sub_7699E0();

        if (v28)
        {
          if (qword_93E140 != -1)
          {
            swift_once();
          }

          v29 = v22;
          v30 = qword_9A08C0;
        }

        else
        {
          if (qword_93E138 != -1)
          {
            swift_once();
          }

          v29 = v22;
          v30 = qword_9A08A8;
        }

        v31 = sub_BE38(v29, v30);
        sub_2BE534(v31, v15);
        [v23 bounds];
        sub_766660();
        [v23 bounds];
        sub_765250();
        v32 = sub_765210();
        (*(v9 + 8))(v11, v8);
        sub_765330();
        [*&v23[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_artworkView] setContentMode:v32];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v34 = Strong;
          type metadata accessor for VideoView();
          sub_6DDA3C(&unk_93F530, type metadata accessor for VideoView);
          sub_75A050();
        }

        else
        {
          sub_BE70(0, &qword_949D90);
          sub_1EE5B8();
          sub_75A050();
        }

        sub_6DE1FC(v15, type metadata accessor for AppEventDetailPageLayout.Metrics);
      }
    }
  }
}

id sub_6D92BC()
{
  [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_formattedDateView) setAlpha:0.0];
  [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_closeButton) setAlpha:0.0];
  [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_kindLabel) setAlpha:0.0];
  [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_titleLabel) setAlpha:0.0];
  [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_detailLabel) setAlpha:0.0];
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_requirementsLabel);
  if (v1)
  {
    [v1 setAlpha:0.0];
  }

  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_shareButton);
  if (v2)
  {
    [v2 setAlpha:0.0];
  }

  [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_notifyMeButton) setAlpha:0.0];
  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_separatorView);

  return [v3 setAlpha:0.0];
}

void sub_6D93C8()
{
  v1 = v0;
  v2 = sub_75CA40();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaOverlayStyle;
  swift_beginAccess();
  v7 = *(v3 + 16);
  v7(v5, v0 + v6, v2);
  sub_6DDA3C(&qword_953438, &type metadata accessor for MediaOverlayStyle);
  v8 = sub_7691C0();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if ((v8 & 1) == 0)
  {
    v10 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_overlayContentContainerView);
    v7(v5, v1 + v6, v2);
    v11 = sub_75CA20();
    v9(v5, v2);
    [v10 setOverrideUserInterfaceStyle:v11];
    v12 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaContainerView);
    v7(v5, v1 + v6, v2);
    v13 = sub_75CA20();
    v9(v5, v2);
    [v12 setOverrideUserInterfaceStyle:v13];
    v14 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_formattedDateView);
    v7(v5, v1 + v6, v2);
    v15 = sub_75CA30();
    v9(v5, v2);
    [v14 setOverrideUserInterfaceStyle:v15];
    v16 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_contentBackgroundBlurView);
    if (v16)
    {
      v7(v5, v1 + v6, v2);
      v17 = v16;
      v18 = sub_75CA20();
      v9(v5, v2);
      [v17 setOverrideUserInterfaceStyle:v18];
    }

    sub_6D8828();
  }
}

void sub_6D96AC()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_artworkView];
    v6 = Strong;
    [v3 setHidden:1];
    v6[qword_99A208] = 1;
    *&v6[qword_940578 + 8] = &off_89D738;
    swift_unknownObjectWeakAssign();
    v4 = [v0 traitCollection];
    sub_7699E0();

    [v6 _setCornerRadius:26.0];
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaContainerView] insertSubview:v6 aboveSubview:v3];
    sub_6D8CB0([objc_allocWithZone(UITapGestureRecognizer) init], &OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_videoTapGestureRecognizer, &OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaContainerView, &selRef_videoTapGestureRecognized_);
    v5 = [v1 traitCollection];
    LOBYTE(v3) = sub_7699E0();

    if (v3)
    {
      sub_6D9854();
    }

    [v1 setNeedsLayout];
  }
}

id sub_6D9854()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaReplicationView;
    if (!*&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaReplicationView] || (type metadata accessor for VideoMirrorView(), !swift_dynamicCastClass()))
    {
      v10 = *&CATransform3DIdentity.m33;
      v52 = *&CATransform3DIdentity.m31;
      v53 = v10;
      v11 = *&CATransform3DIdentity.m43;
      v54 = *&CATransform3DIdentity.m41;
      v55 = v11;
      v12 = *&CATransform3DIdentity.m13;
      v48 = *&CATransform3DIdentity.m11;
      v49 = v12;
      v13 = *&CATransform3DIdentity.m23;
      v50 = *&CATransform3DIdentity.m21;
      v51 = v13;
      objc_allocWithZone(type metadata accessor for VideoMirrorView());
      v14 = v3;
      v15 = sub_69A56C(v3, &v48, 1.0, 0.0);
      v16 = *&v1[v4];
      if (v16)
      {
        [v16 removeFromSuperview];
        v17 = *&v1[v4];
      }

      else
      {
        v17 = 0;
      }

      *&v1[v4] = v15;
      v44 = v15;

      [*&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_contentContainerView] insertSubview:v44 atIndex:0];
      [v1 setNeedsLayout];

      goto LABEL_22;
    }
  }

  v5 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_artworkView];
  v6 = [v5 isHidden];
  v7 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaReplicationView;
  v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaReplicationView];
  if (v6)
  {
    if (!v8)
    {
      v9 = 0;
LABEL_17:
      *&v1[v7] = 0;

      [v1 setNeedsLayout];
      goto LABEL_23;
    }

LABEL_16:
    [v8 removeFromSuperview];
    v9 = *&v1[v7];
    goto LABEL_17;
  }

  if (v8)
  {
    type metadata accessor for VideoMirrorView();
    if (!swift_dynamicCastClass())
    {
      goto LABEL_16;
    }
  }

  v18 = type metadata accessor for MirrorView();
  v19 = objc_allocWithZone(v18);
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_artworkLayer;
  v21 = objc_allocWithZone(CALayer);
  v22 = v5;
  *&v19[v20] = [v21 init];
  v23 = v22;
  *&v19[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_imageKVOContext] = 0;
  v19[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_imageObserversAdded] = 0;
  swift_unknownObjectWeakAssign();
  *&v19[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_contentsScaleFactor] = 0x3FF0000000000000;
  *&v19[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_contentsVerticalOffset] = 0;
  v47.receiver = v19;
  v47.super_class = v18;
  v24 = objc_msgSendSuper2(&v47, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v24 setClipsToBounds:1];
  [v24 setUserInteractionEnabled:0];
  v25 = OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_artworkLayer;
  [*&v24[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_artworkLayer] setContentsGravity:kCAGravityResizeAspectFill];
  LODWORD(v26) = 1.0;
  [*&v24[v25] setOpacity:v26];
  [*&v24[v25] setAnchorPoint:{0.5, 0.5}];
  v27 = qword_93C498;
  v28 = *&v24[v25];
  if (v27 != -1)
  {
    swift_once();
  }

  sub_BD88(&qword_9452F0);
  isa = sub_7690E0().super.isa;
  [v28 setActions:isa];

  v30 = *&v24[v25];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 mainScreen];
  [v33 scale];
  v35 = v34;

  [v32 setContentsScale:v35];
  [*&v24[v25] setMasksToBounds:1];
  v36 = *&v24[v25];
  v37 = *&CATransform3DIdentity.m33;
  v52 = *&CATransform3DIdentity.m31;
  v53 = v37;
  v38 = *&CATransform3DIdentity.m43;
  v54 = *&CATransform3DIdentity.m41;
  v55 = v38;
  v39 = *&CATransform3DIdentity.m13;
  v48 = *&CATransform3DIdentity.m11;
  v49 = v39;
  v40 = *&CATransform3DIdentity.m23;
  v50 = *&CATransform3DIdentity.m21;
  v51 = v40;
  [v36 setTransform:&v48];
  sub_15F084();
  v41 = [v24 layer];

  [v41 addSublayer:*&v24[v25]];
  v42 = *&v1[v7];
  if (v42)
  {
    [v42 removeFromSuperview];
    v43 = *&v1[v7];
  }

  else
  {
    v43 = 0;
  }

  *&v1[v7] = v24;
  v44 = v24;

  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_contentContainerView] insertSubview:v44 atIndex:0];
  [v1 setNeedsLayout];
LABEL_22:

LABEL_23:
  v45 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaReplicationView];
  if (v45)
  {
    [v45 setHidden:0];
  }

  return [v1 setNeedsLayout];
}

void (*sub_6D9D98(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_6D9DEC;
}

void sub_6D9DEC(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    sub_6DDACC();
    swift_unknownObjectWeakAssign();
    sub_6D96AC();
  }

  else
  {
    v2 = *a1;
    sub_6DDACC();
    swift_unknownObjectWeakAssign();
    sub_6D96AC();
  }
}

uint64_t sub_6D9E70()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_76A920();
  v232 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v190 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7664F0();
  v234 = *(v6 - 1);
  v235 = v6;
  __chkstk_darwin(v6);
  v233 = &v190 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppEventDetailPageLayout(0);
  __chkstk_darwin(v8);
  v10 = (&v190 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  __chkstk_darwin(v11);
  v237 = &v190 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v190 - v14;
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v190 - v18;
  v271.receiver = v1;
  v271.super_class = ObjectType;
  objc_msgSendSuper2(&v271, "layoutSubviews", v17);
  [v1 bounds];
  result = CGRectIsEmpty(v272);
  if ((result & 1) == 0)
  {
    v193 = v5;
    v194 = v3;
    sub_75D650();
    v236 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_videoView;
    Strong = swift_unknownObjectWeakLoadStrong();
    v21 = [v1 traitCollection];
    v22 = sub_7699E0();

    if (v22)
    {
      if (qword_93E140 != -1)
      {
        swift_once();
      }

      v23 = qword_9A08C0;
    }

    else
    {
      if (qword_93E138 != -1)
      {
        swift_once();
      }

      v23 = qword_9A08A8;
    }

    v24 = sub_BE38(v11, v23);
    sub_2BE534(v24, v15);
    *&v15[*(v11 + 40)] = vdupq_n_s64(0x4046000000000000uLL);
    if (qword_93E1D8 != -1)
    {
      swift_once();
    }

    v229 = ObjectType;
    v25 = sub_76A3F0();
    sub_BE38(v25, qword_9627E0);
    swift_beginAccess();
    v26 = sub_76A380();
    v231 = v19;
    if (v26)
    {
      v27 = v26;
      v28 = v11;
      swift_endAccess();
      swift_beginAccess();
      v29 = sub_76A210();
      if (v29)
      {
        v30 = v29;
        swift_endAccess();
        v31 = [v27 imageWithConfiguration:v30];
        [v31 size];
        v32 = &v15[v28[17]];
        *v32 = v33;
        *(v32 + 1) = v34;
        [v31 contentInsets];
        v269 = &type metadata for CGFloat;
        v270 = &protocol witness table for CGFloat;
        *&v268 = v35;
        v36 = v28[20];
        sub_BEB8(&v15[v36]);
        sub_10914(&v268, &v15[v36]);
        v37 = [v1 traitCollection];
        LODWORD(v228) = sub_7699F0();

        [v31 contentInsets];
        v39 = v38;
        v41 = v40;
        v269 = &type metadata for CGFloat;
        v270 = &protocol witness table for CGFloat;

        if (v228)
        {
          *&v268 = v41;
        }

        else
        {
          *&v268 = v39;
        }

        v42 = v28[19];
        sub_BEB8(&v15[v42]);
        sub_10914(&v268, &v15[v42]);
        v19 = v231;
      }

      else
      {
        swift_endAccess();
      }

      v11 = v28;
    }

    else
    {
      swift_endAccess();
    }

    v43 = [v1 traitCollection];
    v44 = sub_7699D0();

    if (v44)
    {
      if (Strong)
      {
        v269 = &type metadata for Double;
        v270 = &protocol witness table for Double;

        *&v268 = 0x404E000000000000;
        v45 = *(v11 + 44);
        sub_BEB8(&v15[v45]);
        sub_10914(&v268, &v15[v45]);
      }
    }

    else
    {
    }

    v192 = v11;
    sub_2BEEE4(v15, v19);
    sub_2BE534(v19, v237);
    v46 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_shadowView];
    v269 = sub_758E80();
    v270 = &protocol witness table for UIView;
    v227 = v46;
    *&v268 = v46;
    v47 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_cardContentView];
    v266 = sub_75CD70();
    v267 = &protocol witness table for UIView;
    *&v265 = v47;
    v48 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_borderView];
    v264 = &protocol witness table for UIView;
    v263 = v266;
    v225 = v48;
    v226 = v47;
    *&v262 = v48;
    v49 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_contentContainerView];
    v50 = sub_BE70(0, &qword_93E550);
    v261 = &protocol witness table for UIView;
    v260 = v50;
    *&v259 = v49;
    v51 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaContainerView];
    v258 = &protocol witness table for UIView;
    v257 = v50;
    v223 = v51;
    v224 = v49;
    *&v256 = v51;
    v52 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_artworkView];
    v53 = sub_BE70(0, &qword_949D90);
    v255 = &protocol witness table for UIView;
    v254 = v53;
    v222 = v52;
    *&v253 = v52;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v209 = type metadata accessor for VideoView();
      v217 = &protocol witness table for UIView;
    }

    else
    {
      Strong = 0;
      v209 = 0;
      v217 = 0;
    }

    v228 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_gradientBlurView;
    v221 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_gradientBlurView];
    if (v221)
    {
      v54 = type metadata accessor for MediaOverlayGradientBlurView();
      v215 = &protocol witness table for UIView;
    }

    else
    {
      v54 = 0;
      v215 = 0;
    }

    v220 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaReplicationView];
    if (v220)
    {
      v212 = type metadata accessor for MirrorView();
      v211 = &protocol witness table for UIView;
    }

    else
    {
      v211 = 0;
      v212 = 0;
    }

    v55 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_overlayContentContainerView];
    v56 = type metadata accessor for OverlayContentContainerView();
    v252 = &protocol witness table for UIView;
    v251 = v56;
    *&v250 = v55;
    v57 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_contentBackgroundBlurView];
    v218 = v55;
    v219 = v57;
    if (v57)
    {
      v205 = sub_BE70(0, &unk_944FA0);
      v204 = &protocol witness table for UIView;
    }

    else
    {
      v204 = 0;
      v205 = 0;
    }

    v216 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_formattedDateView];
    v58 = v216;
    v59 = type metadata accessor for AppPromotionFormattedDateView();
    v249 = &protocol witness table for UIView;
    v248 = v59;
    *&v247 = v58;
    v203 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_closeButton];
    v60 = sub_BE70(0, &qword_960F00);
    v197 = v60;
    v214 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_kindLabel];
    v61 = v214;
    v62 = sub_75BB20();
    v63 = &protocol witness table for UILabel;
    v245 = v62;
    v246 = &protocol witness table for UILabel;
    v243 = &protocol witness table for UILabel;
    *&v244 = v61;
    v213 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_titleLabel];
    v191 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_shareButton;
    v64 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_shareButton];
    v198 = v64;
    v242 = v62;
    v240 = &protocol witness table for UILabel;
    *&v241 = v213;
    if (v64)
    {
      v65 = v60;
    }

    else
    {
      v65 = 0;
    }

    if (v64)
    {
      v66 = &protocol witness table for UIView;
    }

    else
    {
      v66 = 0;
    }

    v199 = v66;
    v200 = v65;
    v210 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_detailLabel];
    v239 = v62;
    *&v238 = v210;
    v67 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_requirementsLabel];
    if (v67)
    {
      v68 = v62;
    }

    else
    {
      v68 = 0;
    }

    if (!v67)
    {
      v63 = 0;
    }

    v201 = v63;
    v202 = v68;
    v69 = v10 + v8[23];
    v208 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_notifyMeButton];
    v70 = v208;
    *(v69 + 3) = type metadata accessor for NotifyMeButton();
    *(v69 + 4) = &protocol witness table for UIView;
    v71 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_separatorView];
    *v69 = v70;
    v72 = v10 + v8[24];
    *(v72 + 3) = v50;
    *(v72 + 4) = &protocol witness table for UIView;
    *v72 = v71;
    v206 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupView];
    v73 = v206;
    v207 = v71;
    v74 = v10 + v8[25];
    *(v74 + 3) = type metadata accessor for SmallLockupView();
    *(v74 + 4) = &protocol witness table for UIView;
    *v74 = v73;
    v195 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_isCollapsing;
    v196 = v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_isCollapsing];
    sub_2BEEE4(v237, v10);
    sub_10914(&v268, v10 + v8[5]);
    sub_10914(&v265, v10 + v8[6]);
    sub_10914(&v262, v10 + v8[7]);
    sub_10914(&v259, v10 + v8[8]);
    sub_10914(&v256, v10 + v8[9]);
    sub_10914(&v253, v10 + v8[10]);
    v75 = v10 + v8[11];
    *v75 = Strong;
    *(v75 + 1) = 0;
    v76 = v209;
    *(v75 + 2) = 0;
    *(v75 + 3) = v76;
    *(v75 + 4) = v217;
    v77 = v10 + v8[12];
    v78 = v220;
    v79 = v221;
    *v77 = v221;
    *(v77 + 1) = 0;
    *(v77 + 2) = 0;
    *(v77 + 3) = v54;
    *(v77 + 4) = v215;
    v80 = v10 + v8[13];
    *v80 = v78;
    *(v80 + 1) = 0;
    v81 = v211;
    v82 = v212;
    *(v80 + 2) = 0;
    *(v80 + 3) = v82;
    *(v80 + 4) = v81;
    sub_10914(&v250, v10 + v8[14]);
    v83 = v10 + v8[15];
    v84 = v219;
    *v83 = v219;
    *(v83 + 1) = 0;
    v85 = v204;
    v86 = v205;
    *(v83 + 2) = 0;
    *(v83 + 3) = v86;
    *(v83 + 4) = v85;
    sub_10914(&v247, v10 + v8[16]);
    v87 = v10 + v8[17];
    v88 = v203;
    *v87 = v203;
    *(v87 + 3) = v197;
    *(v87 + 4) = &protocol witness table for UIView;
    sub_10914(&v244, v10 + v8[18]);
    sub_10914(&v241, v10 + v8[19]);
    v89 = v10 + v8[20];
    v90 = v198;
    *v89 = v198;
    *(v89 + 1) = 0;
    v91 = v199;
    v92 = v200;
    *(v89 + 2) = 0;
    *(v89 + 3) = v92;
    *(v89 + 4) = v91;
    sub_10914(&v238, v10 + v8[21]);
    v93 = v10 + v8[22];
    *v93 = v67;
    *(v93 + 1) = 0;
    v94 = v201;
    v95 = v202;
    *(v93 + 2) = 0;
    *(v93 + 3) = v95;
    *(v93 + 4) = v94;
    *(v10 + v8[26]) = v196;
    v96 = v67;
    v97 = v227;
    v98 = v226;
    v99 = v225;
    v100 = v224;
    v225 = v223;
    v237 = v222;
    Strong = v218;
    v224 = v216;
    v226 = v88;
    v101 = v214;
    v102 = v213;
    v103 = v210;
    v104 = v208;
    v105 = v207;
    v227 = v206;
    v106 = v79;
    v107 = v78;
    v108 = v84;
    v109 = v90;
    sub_75D650();
    v110 = v233;
    AppEventDetailPageLayout.placeChildren(relativeTo:in:)(v1, v111, v112, v113, v114);
    v234[1](v110, v235);
    v115 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_cardScrollView];
    [v100 bounds];
    [v115 setContentSize:{v116, v117}];
    [v1 bounds];
    [v115 setBounds:{0.0, 0.0}];
    [v1 bounds];
    v118 = CGRectGetWidth(v273) * 0.5;
    [v1 bounds];
    Height = CGRectGetHeight(v274);
    v235 = v115;
    [v115 setCenter:{v118, Height * 0.5}];
    v120 = *&v1[v228];
    if (v120 && (v1[v195] & 1) == 0)
    {
      v121 = v101;
      v122 = v120;
      [v122 frame];
      v123 = CGRectGetHeight(v275);
      v124 = [v1 traitCollection];
      v125 = sub_769A00();

      if (v125)
      {
        if (*&v1[v191])
        {
          v121 = *&v1[v191];
        }

        else
        {
          v121 = v224;
        }
      }

      v126 = v121;
      v234 = v126;
      [v225 frame];
      v127 = CGRectGetHeight(v276);
      [v126 frame];
      v129 = v128;
      v131 = v130;
      v133 = v132;
      v135 = v134;

      v277.origin.x = v129;
      v277.origin.y = v131;
      v277.size.width = v133;
      v277.size.height = v135;
      v136 = v123 - (v127 - CGRectGetMinY(v277));
      v137 = (v136 + -100.0) / v123;
      v138 = (v136 + 30.0) / v123;
      v139 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientStartY;
      *&v122[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientStartY] = v137;
      v140 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientView;
      v141 = [*&v122[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v143 = v142;

      v144 = *&v122[v139];
      v145 = [*&v122[v140] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v143, v144}];

      v146 = [*&v122[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_secondaryColorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v143, v144}];

      v147 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientStartY;
      *&v122[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientStartY] = v137;
      v148 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientMaskView;
      v149 = [*&v122[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientMaskView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v151 = v150;

      v152 = *&v122[v147];
      v153 = [*&v122[v148] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v151, v152}];

      sub_4A9908(v138);
      v154 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientEndY;
      *&v122[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientEndY] = v138;
      v155 = [*&v122[v148] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() endPoint];
      v157 = v156;

      v158 = *&v122[v154];
      v159 = [*&v122[v148] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v157, v158}];
    }

    v160 = [v1 traitCollection];
    v161 = sub_7699E0();

    if (v161)
    {
      v234 = v10;
      [v227 frame];
      MaxY = CGRectGetMaxY(v278);
      v163 = v231;
      sub_B170(&v231[*(v192 + 128)], *&v231[*(v192 + 128) + 24]);
      v164 = v193;
      sub_33964();
      sub_766700();
      v166 = v165;
      (*(v232 + 8))(v164, v194);
      v167 = Strong;
      [Strong bounds];
      [v167 setContentSize:{CGRectGetWidth(v279), MaxY + v166 * 0.8}];
      v168 = [v1 traitCollection];
      v169 = sub_7699D0();

      if (v169)
      {
        v170 = 1;
      }

      else
      {
        [v167 contentSize];
        v176 = v175;
        [v167 bounds];
        v170 = v176 <= CGRectGetHeight(v280);
      }

      v174 = v237;
      [v235 setAlwaysBounceVertical:v170];
      v10 = v234;
    }

    else
    {
      v171 = Strong;
      [Strong bounds];
      [v171 setContentSize:{v172, v173}];
      v163 = v231;
      v174 = v237;
    }

    [v174 bounds];
    sub_6D8E64(v177, v178, 0);
    v179 = swift_unknownObjectWeakLoadStrong();
    if (v179)
    {
      v180 = v179;
      v181 = [v1 traitCollection];
      v182 = sub_7699D0();

      if ((v182 & 1) == 0)
      {
        sub_6DE1FC(v10, type metadata accessor for AppEventDetailPageLayout);

        return sub_6DE1FC(v163, type metadata accessor for AppEventDetailPageLayout.Metrics);
      }

      [v226 frame];
      v184 = v183;
      [v180 frame];
      v186.f64[0] = v185 + -53.0;
      v187 = &v180[qword_99A1B0];
      v188 = *&v180[qword_99A1B0];
      v189 = *&v180[qword_99A1B0 + 16];
      *v187 = xmmword_79D2B0;
      *(v187 + 2) = *&v186.f64[0];
      *(v187 + 3) = v184 + 25.0;
      v186.f64[1] = v184 + 25.0;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(xmmword_79D2B0, v188), vceqq_f64(v186, v189)))) & 1) == 0)
      {
        sub_54EB4();
      }
    }

    sub_6DE1FC(v10, type metadata accessor for AppEventDetailPageLayout);
    return sub_6DE1FC(v163, type metadata accessor for AppEventDetailPageLayout.Metrics);
  }

  return result;
}

void sub_6DB154(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_notifyMeButtonPresenter);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v8 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer);

    if (v8)
    {
      [v8 invalidate];
      v8 = *(v6 + v7);
    }

    *(v6 + v7) = 0;
  }

  sub_268E5C();
  v9 = *(v4 + *a2);
  if (v9)
  {

    v9(a1);

    sub_F704(v9);
  }
}

uint64_t sub_6DB254(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_76A510();
  swift_unknownObjectRelease();
  sub_6DB154(v8, a4);

  return sub_BEB8(v8);
}

uint64_t sub_6DB2CC(void *a1)
{
  v2 = v1;
  v4 = sub_768430();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = (v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  [a1 bounds];
  LOBYTE(v42[0]) = 1;
  *&v24 = a1;
  *(&v24 + 1) = v9;
  *&v25 = v10;
  *(&v25 + 1) = v11;
  *&v26 = v12;
  BYTE8(v26) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v27 = _Q0;
  v28 = _Q0;
  v29 = 15;
  sub_BE70(0, &qword_940340);
  v18 = a1;
  *v8 = sub_769970();
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  LOBYTE(a1) = sub_768460();
  result = (*(v5 + 8))(v8, v4);
  if (a1)
  {
    v32 = xmmword_94DD18;
    v33 = xmmword_94DD28;
    v34 = xmmword_94DD38;
    v30 = xmmword_94DCF8;
    v31 = xmmword_94DD08;
    v38 = v26;
    v39 = v27;
    v40 = v28;
    v36 = v24;
    v37 = v25;
    v42[0] = xmmword_94DCF8;
    v42[1] = xmmword_94DD08;
    v42[3] = xmmword_94DD28;
    v42[4] = xmmword_94DD38;
    v35 = qword_94DD48;
    v41 = v29;
    v43 = qword_94DD48;
    v42[2] = xmmword_94DD18;
    sub_1781E4(&v30, v22);
    xmmword_94DD18 = v38;
    xmmword_94DD28 = v39;
    xmmword_94DD38 = v40;
    qword_94DD48 = v41;
    xmmword_94DCF8 = v36;
    xmmword_94DD08 = v37;
    sub_6DE194(v42);
    v20 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_shareButtonActionBlock);
    sub_45C2C(&v24, v22);
    if (v20)
    {
      v21 = sub_F714(v20);
      v20(v21);
      sub_F704(v20);
    }

    v22[2] = xmmword_94DD18;
    v22[3] = xmmword_94DD28;
    v22[4] = xmmword_94DD38;
    v23 = qword_94DD48;
    v22[0] = xmmword_94DCF8;
    v22[1] = xmmword_94DD08;
    xmmword_94DCF8 = v30;
    xmmword_94DD08 = v31;
    xmmword_94DD18 = v32;
    xmmword_94DD28 = v33;
    xmmword_94DD38 = v34;
    qword_94DD48 = v35;
    sub_6DE194(v22);
    return sub_45C88(&v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_6DB5FC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *&Strong[qword_9405B8];
    if (v2)
    {
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6[4] = sub_1EEC04;
      v6[5] = v3;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 1107296256;
      v6[2] = sub_509F0;
      v6[3] = &unk_89D8B8;
      v4 = _Block_copy(v6);
      v5 = v2;

      [v5 enterFullScreenAnimated:1 completionHandler:v4];

      _Block_release(v4);
    }

    else
    {
    }
  }

  sub_6DB734(0, 0);
}

void sub_6DB734(char a1, char a2)
{
  v3 = v2;
  v6 = [v2 traitCollection];
  v7 = sub_7699E0();

  if ((v7 & 1) == 0)
  {
    if (a1)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.0;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_videoBackgroundColor];
      [v10 setBackgroundColor:v11];

      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = v8;
      v14 = sub_6DE004;
      if (a2)
      {
LABEL_7:
        v15 = v14;
        v16 = objc_opt_self();
        v23[4] = v15;
        v23[5] = v13;
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 1107296256;
        v23[2] = sub_23F0CC;
        v23[3] = &unk_89D7A0;
        v17 = _Block_copy(v23);

        [v16 animateWithDuration:4 delay:v17 options:0 animations:0.3 completion:0.0];

        _Block_release(v17);
        return;
      }
    }

    else
    {
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v18;
      *(v13 + 24) = v8;
      v14 = sub_6DF250;
      if (a2)
      {
        goto LABEL_7;
      }
    }

    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = *(v19 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_overlayContentContainerView);
      v21 = v19;

      [v20 setAlpha:v8];
      v22 = *&v21[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_closeButton];
      [v22 setAlpha:v8];
    }
  }
}

void sub_6DBB90()
{
  v1 = sub_75CA40();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_contentBackgroundBlurView;
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_contentBackgroundBlurView];
  if (v7)
  {
    goto LABEL_8;
  }

  v8 = [objc_opt_self() effectWithStyle:7];
  v9 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v8];
  v10 = *&v0[v6];
  if (v10)
  {
    [v10 removeFromSuperview];
    v11 = *&v0[v6];
  }

  else
  {
    v11 = 0;
  }

  *&v0[v6] = v9;
  v12 = v9;

  if (v12)
  {
    [*&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_contentContainerView] insertSubview:v12 belowSubview:*&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_overlayContentContainerView]];
  }

  [v0 setNeedsLayout];

  v7 = *&v0[v6];
  if (v7)
  {
LABEL_8:
    [v7 setHidden:{0, v3}];
    v13 = *&v0[v6];
    if (v13)
    {
      v14 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaOverlayStyle;
      swift_beginAccess();
      (*(v2 + 16))(v5, &v0[v14], v1);
      v15 = v13;
      v16 = sub_75CA20();
      (*(v2 + 8))(v5, v1);
      [v15 setOverrideUserInterfaceStyle:v16];
    }
  }
}

void sub_6DBDB8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + qword_9405B8);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      [v3 setShowsPlaybackControls:1];
    }
  }
}

void sub_6DBE4C(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [*(Strong + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_overlayContentContainerView) setAlpha:a1];
    [*&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_closeButton] setAlpha:a1];
  }
}

void *(*sub_6DBEE0(void *a1))(void *result, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_notifyMeButtonPresenter;
  a1[2] = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_notifyMeButtonPresenter;
  *a1 = *(v1 + v2);
  a1[1] = v1;

  return sub_6DBF38;
}

void *sub_6DBF38(void *result, char a2)
{
  if (a2)
  {

    sub_6D5058(v2);
  }

  else
  {
    v4 = result[1];
    v3 = result[2];
    v5 = *(v4 + v3);
    *(v4 + v3) = *result;
    if (!v5)
    {
      return result;
    }

    v6 = OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v7 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer);
    if (v7)
    {
      [v7 invalidate];
      v8 = *(v5 + v6);
    }

    else
    {
      v8 = 0;
    }

    *(v5 + v6) = 0;
  }
}

void sub_6DBFE0(char a1, char a2)
{
  if (a2)
  {
    if ((a1 & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_notifyMeButton];
      if ([v4 isHidden])
      {
        [v4 setAlpha:0.0];
        [v4 setHidden:0];
      }
    }

    v5 = objc_opt_self();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v8 = a1 & 1;
    *(v7 + 24) = a1 & 1;
    v19 = sub_6DE098;
    v20 = v7;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_23F0CC;
    v18 = &unk_89D818;
    v9 = _Block_copy(&v15);

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v8;
    v19 = sub_6DE0A4;
    v20 = v11;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_3D6D80;
    v18 = &unk_89D868;
    v12 = _Block_copy(&v15);

    [v5 animateWithDuration:v9 animations:v12 completion:0.3];
    _Block_release(v12);
    _Block_release(v9);
  }

  else
  {
    v13 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_notifyMeButton];
    if (a1)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = 1.0;
    }

    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_notifyMeButton] setHidden:a1 & 1];
    [v13 setAlpha:v14];

    [v2 setNeedsLayout];
  }
}

void sub_6DC284(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_notifyMeButton);

    v6 = 1.0;
    if (a2)
    {
      v6 = 0.0;
    }

    [v5 setAlpha:v6];
  }
}

void sub_6DC318(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_notifyMeButton);

    [v6 setHidden:a3 & 1];
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    [v7 setNeedsLayout];
  }
}

BOOL sub_6DC3D4(void *a1, void *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupTapGestureRecognizer);
  if (v4)
  {
    sub_BE70(0, &unk_94A280);
    v6 = a1;
    v7 = v4;
    v8 = sub_76A1C0();

    if (v8)
    {
      v9 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_videoTapGestureRecognizer);
      if (v9)
      {
        v10 = a2;
        v11 = v9;
        v12 = sub_76A1C0();

        if (v12)
        {
          return 0;
        }
      }
    }
  }

  objc_opt_self();
  return swift_dynamicCastObjCClass() == 0;
}

BOOL sub_6DC52C(void *a1, id a2)
{
  v3 = v2;
  [a2 locationInView:v2];
  v7 = v6;
  v9 = v8;
  v10 = [v2 hitTest:0 withEvent:?];
  v11 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_dismissTapGestureRecognizer];
  if (v11)
  {
    sub_BE70(0, &unk_94A280);
    v12 = a1;
    v13 = v11;
    v14 = sub_76A1C0();

    if (v14)
    {
      [v3 bounds];
      v62.x = v7;
      v62.y = v9;
      if (CGRectContainsPoint(v65, v62))
      {
        if (v10)
        {
          sub_BE70(0, &qword_93E550);
          v15 = v10;
          v3 = v3;
          v16 = sub_76A1C0();

          if (v16)
          {
            v17 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_dismissTapGestureActionBlock;
            return *&v3[v17] != 0;
          }
        }

        return 0;
      }

      goto LABEL_27;
    }
  }

  v18 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_videoTapGestureRecognizer];
  if (!v18 || (sub_BE70(0, &unk_94A280), v19 = a1, v20 = v18, v21 = sub_76A1C0(), v20, v19, (v21 & 1) == 0))
  {
    v41 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupTapGestureRecognizer];
    if (!v41 || (sub_BE70(0, &unk_94A280), v42 = a1, v43 = v41, v44 = sub_76A1C0(), v43, v42, (v44 & 1) == 0))
    {

      return 1;
    }

    v45 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupView];
    [a2 locationInView:v45];
    v47 = v46;
    v49 = v48;
    [v45 bounds];
    v64.x = v47;
    v64.y = v49;
    if (CGRectContainsPoint(v67, v64))
    {
      if (!v10 || (objc_opt_self(), v50 = swift_dynamicCastObjCClass(), v10, !v50))
      {
        v17 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupTapGestureActionBlock;
        return *&v3[v17] != 0;
      }

      return 0;
    }

    goto LABEL_27;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_27;
  }

  v23 = Strong;
  [Strong frame];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v66.origin.x = v25;
  v66.origin.y = v27;
  v66.size.width = v29;
  v66.size.height = v31;
  v63.x = v7;
  v63.y = v9;
  if (!CGRectContainsPoint(v66, v63))
  {
    goto LABEL_27;
  }

  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
    goto LABEL_27;
  }

  v33 = v32;
  v34 = *&v32[qword_9405B0];
  if (!v34)
  {

    goto LABEL_27;
  }

  v35 = v34;
  v36 = sub_759A70();

  if ((v36 & 1) == 0)
  {
    goto LABEL_27;
  }

  v37 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_shareButton];
  if (!v10)
  {
    if (!v37)
    {
      v60 = 0;
      return 0;
    }

    return 1;
  }

  if (v37)
  {
    sub_BE70(0, &qword_93E550);
    v38 = v10;
    v39 = v37;
    v40 = sub_76A1C0();

    if (v40)
    {

      return 0;
    }

    v52 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_closeButton];
  }

  else
  {
    v52 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_closeButton];
    v53 = 0;
  }

  sub_BE70(0, &qword_93E550);
  v10 = v10;
  v54 = v52;
  v55 = sub_76A1C0();

  if (v55)
  {
LABEL_27:

    return 0;
  }

  v56 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupView];
  v57 = v10;
  v58 = v56;
  v59 = sub_76A1C0();

  if (v59)
  {

    return 0;
  }

  objc_opt_self();
  v61 = swift_dynamicCastObjCClass() == 0;

  return v61;
}

id sub_6DCA28(void *a1)
{
  v2 = v1;
  v26.receiver = v1;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v4 = sub_7699E0() & 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v1 traitCollection];
  v6 = sub_7699E0();

  if (v4 == 2 || ((v6 ^ v4) & 1) != 0)
  {
    sub_6D7AA0();
    if (a1)
    {
      goto LABEL_7;
    }

LABEL_9:
    v7 = 2;
    goto LABEL_10;
  }

  if (!a1)
  {
    goto LABEL_9;
  }

LABEL_7:
  v7 = sub_769A00() & 1;
LABEL_10:
  v8 = [v2 traitCollection];
  v9 = sub_769A00();

  if (v7 == 2 || ((v9 ^ v7) & 1) != 0)
  {
    goto LABEL_18;
  }

  v10 = [v2 traitCollection];
  v11 = [v10 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_18;
  }

  v12 = [a1 preferredContentSizeCategory];
  v13 = sub_769240();
  v15 = v14;
  if (v13 != sub_769240() || v15 != v16)
  {
    v17 = sub_76A950();

    if (v17)
    {
      goto LABEL_19;
    }

LABEL_18:
    sub_6D81C0();
    goto LABEL_19;
  }

LABEL_19:
  v18 = [v2 traitCollection];
  v19 = [v18 userInterfaceStyle];

  if (!a1 || v19 != [a1 userInterfaceStyle])
  {
    sub_6D8828();
  }

  v20 = [v2 traitCollection];
  v21 = [v20 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v21 != result))
  {
    v23 = [v2 traitCollection];
    v24 = sub_7699F0();

    if (v24)
    {
      v25 = -*&v2[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_defaultPageMargin];
    }

    else
    {
      v25 = 0.0;
    }

    return [*&v2[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_cardScrollView] setScrollIndicatorInsets:{0.0, v25}];
  }

  return result;
}

uint64_t type metadata accessor for AppEventDetailPageView()
{
  result = qword_962938;
  if (!qword_962938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6DD12C()
{
  result = sub_75CA40();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_6DD260(void *a1)
{
  sub_6DDACC();
  swift_unknownObjectWeakAssign();
  sub_6D96AC();
}

uint64_t (*sub_6DD2B0(uint64_t **a1))()
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
  v2[4] = sub_6D9D98(v2);
  return sub_21028;
}

uint64_t (*sub_6DD344(void *a1))()
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
  v2[4] = sub_6DBEE0(v2);
  return sub_246E0;
}

id sub_6DD3B4(char a1, char a2)
{
  *(*&v2[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_notifyMeButton] + OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_isActive) = a1;
  sub_698E80();
  sub_698F84(a2);

  return [v2 setNeedsLayout];
}

uint64_t sub_6DD438()
{
  ObjectType = swift_getObjectType();
  v1 = sub_6DDA3C(&qword_962980, type metadata accessor for AppEventDetailPageView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_6DD4AC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_6DDA3C(&qword_962980, type metadata accessor for AppEventDetailPageView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_6DD538(uint64_t *a1))()
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
  sub_6DDA3C(&qword_962980, type metadata accessor for AppEventDetailPageView);
  *(v3 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_6DD5F4(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 superview];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaContainerView);
  sub_BE70(0, &qword_93E550);
  v5 = v4;
  v6 = sub_76A1C0();

  return v6 & 1;
}

uint64_t sub_6DD68C(uint64_t a1, double a2, double a3)
{
  v6 = [v3 subviews];
  sub_BE70(0, &qword_93E550);
  v7 = sub_769460();

  if (v7 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = sub_76A770();
      }

      else
      {
        if (v9 >= *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (([v10 isHidden] & 1) != 0 || !objc_msgSend(v11, "isUserInteractionEnabled"))
      {
      }

      else
      {
        [v17 convertPoint:v11 toCoordinateSpace:{a2, a3}];
        v13 = [v11 pointInside:a1 withEvent:?];

        if (v13)
        {
          v14 = 1;
          goto LABEL_19;
        }
      }

      ++v9;
      if (v12 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:
  v14 = 0;
LABEL_19:

  return v14;
}

uint64_t sub_6DDA3C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_6DDACC()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_6DDA3C(&qword_93F500, type metadata accessor for VideoView);
    v2 = [Strong superview];
    if (v2)
    {
      v3 = v2;
      v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaContainerView];
      sub_BE70(0, &qword_93E550);
      v5 = v4;
      v6 = sub_76A1C0();

      if (v6)
      {
        v7 = swift_unknownObjectWeakLoadStrong();
        if (v7)
        {
          v8 = v7;
          [v7 removeFromSuperview];
        }

        [*&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_artworkView] setHidden:0];
        v9 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_videoTapGestureRecognizer;
        if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_videoTapGestureRecognizer])
        {
          [v5 removeGestureRecognizer:?];
          v10 = *&v1[v9];
        }

        else
        {
          v10 = 0;
        }

        *&v1[v9] = 0;

        v11 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaReplicationView;
        v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaReplicationView];
        if (v12)
        {
          [v12 removeFromSuperview];
          v13 = *&v1[v11];
        }

        else
        {
          v13 = 0;
        }

        *&v1[v11] = 0;

        [v1 setNeedsLayout];
      }
    }

    else
    {
    }
  }
}

id sub_6DDCC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_76A3F0();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_shareButtonActionBlock];
  v12 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_shareButtonActionBlock];
  if (!v12)
  {
    v13 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_shareButton;
    v14 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_shareButton];
    if (v14)
    {
      [v14 removeFromSuperview];
      v15 = *&v3[v13];
    }

    else
    {
      v15 = 0;
    }

    *&v3[v13] = 0;

    [v3 setNeedsLayout];
    v12 = *v11;
  }

  *v11 = a1;
  v11[1] = a2;
  sub_F714(a1);
  result = sub_F704(v12);
  if (*v11)
  {
    v17 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_shareButton;
    if (!*&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_shareButton])
    {
      sub_BE70(0, &qword_960F00);
      if (qword_93E1D8 != -1)
      {
        swift_once();
      }

      v18 = sub_BE38(v6, qword_9627E0);
      swift_beginAccess();
      (*(v7 + 16))(v10, v18, v6);
      v19 = sub_76A400();
      v20 = *&v3[v17];
      if (v20)
      {
        [v20 removeFromSuperview];
        v21 = *&v3[v17];
      }

      else
      {
        v21 = 0;
      }

      *&v3[v17] = v19;
      v22 = v19;

      sub_BE70(0, &qword_93E540);
      v23 = sub_769FD0();
      v24 = [v23 colorWithAlphaComponent:0.7];

      [v22 setTintColor:v24];
      [v22 setHitTestInsets:{-10.0, -10.0, -10.0, -10.0}];
      [*&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_overlayContentContainerView] addSubview:v22];
      sub_6D8828();

      [v3 setNeedsLayout];
      result = *&v3[v17];
      if (result)
      {
        return [result addTarget:v3 action:"didTapShareButton:" forControlEvents:64];
      }
    }
  }

  return result;
}

uint64_t sub_6DDFCC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6DE010(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_6DE028()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_6DE060()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_6DE0B0(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_gradientBlurView;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_gradientBlurView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaContainerView];
    if (Strong)
    {
      [v8 insertSubview:v6 aboveSubview:Strong];
    }

    else
    {
      [v8 insertSubview:v6 aboveSubview:*&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_artworkView]];
    }
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_6DE194(uint64_t a1)
{
  v2 = sub_BD88(&unk_93FEF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6DE1FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_6DE25C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_BD88(&qword_94BAC0);
  __chkstk_darwin(v2 - 8);
  v102 = &v95[-v3];
  v4 = sub_760AD0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v95[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v8 - 8);
  v10 = &v95[-v9];
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_gradientBlurView] = 0;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_contentBackgroundBlurView] = 0;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaReplicationView] = 0;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_requirementsLabel] = 0;
  v11 = &v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_closeButtonActionBlock];
  *v11 = 0;
  v11[1] = 0;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_dismissTapGestureRecognizer] = 0;
  v12 = &v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_dismissTapGestureActionBlock];
  *v12 = 0;
  v12[1] = 0;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_videoTapGestureRecognizer] = 0;
  v13 = &v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_shareButtonActionBlock];
  *v13 = 0;
  v13[1] = 0;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_shareButton] = 0;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupTapGestureRecognizer] = 0;
  v14 = &v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupTapGestureActionBlock];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_artworkViewSize];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mainArtwork] = 0;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupArtwork] = 0;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_artworkLoader] = 0;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_videoBackgroundColor] = 0;
  v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_haveFlashedScrollIndicators] = 0;
  v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_isCollapsing] = 0;
  v16 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaOverlayStyle;
  v17 = enum case for MediaOverlayStyle.matchSystem(_:);
  v18 = sub_75CA40();
  (*(*(v18 - 8) + 104))(&v1[v16], v17, v18);
  v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_includeBorderInDarkMode] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_defaultPageMargin] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_notifyMeButtonPresenter] = 0;
  v19 = [objc_allocWithZone(UIScrollView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_cardScrollView] = v19;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_shadowView] = [objc_allocWithZone(sub_758E80()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_75CD70();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_cardContentView] = v20;
  v21 = [objc_allocWithZone(UIView) init];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_contentContainerView] = v21;
  v22 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaContainerView] = v22;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_overlayContentContainerView] = [objc_allocWithZone(type metadata accessor for OverlayContentContainerView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_artworkView] = v23;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_formattedDateView] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = sub_7666D0();
  v103 = *(v24 - 8);
  v25 = v103 + 56;
  v26 = *(v103 + 56);
  v26(v10, 1, 1, v24);
  v27 = *(v5 + 104);
  v100 = (v5 + 104);
  v106 = v27;
  v28 = enum case for DirectionalTextAlignment.none(_:);
  v96 = enum case for DirectionalTextAlignment.none(_:);
  v97 = v4;
  (v27)(v7);
  v29 = sub_75BB20();
  v30 = objc_allocWithZone(v29);
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_kindLabel] = sub_75BB10();
  v26(v10, 1, 1, v24);
  v106(v7, v28, v4);
  v31 = objc_allocWithZone(v29);
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_titleLabel] = sub_75BB10();
  v101 = v24;
  v104 = v26;
  v105 = v25;
  v26(v10, 1, 1, v24);
  v106(v7, v96, v97);
  v32 = objc_allocWithZone(v29);
  v100 = v10;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_detailLabel] = sub_75BB10();
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_notifyMeButton] = [objc_allocWithZone(type metadata accessor for NotifyMeButton()) init];
  v33 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_separatorView] = v33;
  type metadata accessor for SmallLockupView();
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v34 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_borderView] = v34;
  v35 = sub_502A78();
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_closeButton] = v35;
  v107.receiver = v1;
  v107.super_class = ObjectType;
  v36 = v35;
  v37 = objc_msgSendSuper2(&v107, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v41 = v37;
  [v41 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v41 setClipsToBounds:0];
  v42 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_cardScrollView;
  [*(v41 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_cardScrollView) setClipsToBounds:0];
  [*(v41 + v42) setContentInsetAdjustmentBehavior:2];
  [v41 addSubview:*(v41 + v42)];
  v43 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_shadowView;
  v44 = qword_93C580;
  v45 = *(v41 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_shadowView);
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = sub_765080();
  v47 = sub_BE38(v46, qword_99B5E0);
  v48 = *(v46 - 8);
  v49 = v102;
  (*(v48 + 16))(v102, v47, v46);
  (*(v48 + 56))(v49, 0, 1, v46);
  sub_758E60();

  v50 = *(v41 + v43);
  sub_758E40();

  [*(v41 + v42) addSubview:*(v41 + v43)];
  v102 = v42;
  v51 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_cardContentView;
  [*(v41 + v42) addSubview:*(v41 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_cardContentView)];
  v52 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_contentContainerView;
  [*(v41 + v51) addSubview:*(v41 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_contentContainerView)];
  v53 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaContainerView;
  [*(v41 + v52) addSubview:*(v41 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaContainerView)];
  v54 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_artworkView;
  [*(v41 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_artworkView) setContentMode:2];
  [*(v41 + v54) setClipsToBounds:1];
  [*(v41 + v54) setAccessibilityIgnoresInvertColors:1];
  [*(v41 + v53) addSubview:*(v41 + v54)];
  v55 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_overlayContentContainerView;
  [*(v41 + v52) addSubview:*(v41 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_overlayContentContainerView)];
  v56 = *(v41 + v51);
  v106 = v36;
  [v56 addSubview:v36];
  v57 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_formattedDateView;
  v58 = *(v41 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_formattedDateView);
  LOBYTE(v51) = v58[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style];
  v58[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style] = 1;
  v59 = v58;
  sub_26B40C(v51);

  *(*(v41 + v57) + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_delegate + 8) = &off_89D6F8;
  swift_unknownObjectWeakAssign();
  [*(v41 + v55) addSubview:*(v41 + v57)];
  v60 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_kindLabel;
  v61 = *(v41 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_kindLabel);
  v62 = sub_BE70(0, &qword_93E540);
  v63 = v61;
  v64 = sub_769FD0();
  v65 = [v64 colorWithAlphaComponent:0.7];

  [v63 setTextColor:v65];
  [*(v41 + v55) addSubview:*(v41 + v60)];
  v66 = *(v41 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_titleLabel);
  v67 = sub_769FD0();
  [v66 setTextColor:v67];

  v68 = *(v41 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_notifyMeButton);
  [v68 addTarget:v41 action:"notifyMeButtonTapped:" forControlEvents:64];

  v69 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_separatorView;
  v70 = *(v41 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_separatorView);
  ObjectType = v62;
  v71 = sub_769FD0();
  v72 = [v71 colorWithAlphaComponent:0.5];

  [v70 setBackgroundColor:v72];
  [*(v41 + v52) addSubview:*(v41 + v69)];
  v73 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupView;
  v74 = qword_93D590;
  v75 = *(*(v41 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel);
  if (v74 != -1)
  {
    swift_once();
  }

  v76 = v101;
  v77 = sub_BE38(v101, qword_99E8C0);
  v78 = *(v103 + 16);
  v79 = v100;
  v78(v100, v77, v76);
  v80 = v104;
  v104(v79, 0, 1, v76);
  sub_75BA40();

  v81 = qword_93D598;
  v82 = *(*(v41 + v73) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
  if (v81 != -1)
  {
    swift_once();
  }

  v83 = sub_BE38(v76, qword_99E8D8);
  v78(v79, v83, v76);
  v80(v79, 0, 1, v76);
  sub_75BA40();

  v84 = *(*(v41 + v73) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
  v85 = sub_769FD0();
  v86 = [v85 colorWithAlphaComponent:0.7];

  [v84 setTextColor:v86];
  v87 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_borderView;
  v88 = *(v41 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_borderView);
  v89 = objc_opt_self();
  v90 = v88;
  v91 = [v89 whiteColor];
  v92 = [v91 colorWithAlphaComponent:0.2];

  sub_75CD00();
  v93 = *(v41 + v87);
  sub_75CD10();

  [*(v41 + v87) setUserInteractionEnabled:0];
  [*(v41 + v87) setHidden:1];
  [*&v102[v41] addSubview:*(v41 + v87)];
  sub_6D7AA0();
  sub_6D81C0();
  sub_6D8828();

  return v41;
}