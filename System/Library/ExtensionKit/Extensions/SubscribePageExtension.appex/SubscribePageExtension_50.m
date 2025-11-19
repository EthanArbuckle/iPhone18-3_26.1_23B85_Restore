id sub_1005A37A0()
{
  v1 = sub_100754724();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(NSMutableAttributedString) init];
  v6 = sub_10056003C(0xD000000000000014, 0x8000000100785A50, 0);
  if (qword_100921918 != -1)
  {
    swift_once();
  }

  v7 = sub_100750B04();
  sub_10000D0FC(v7, qword_10093F990);
  sub_1007502D4();
  sub_100750564();
  v9 = v8;
  v10 = *(v2 + 8);
  v30 = v1;
  v10(v4, v1);
  sub_100016C60(0, &qword_100923AB0);
  if (qword_100920ED8 != -1)
  {
    swift_once();
  }

  v11 = sub_100750534();
  sub_10000D0FC(v11, qword_1009809D8);
  v12 = [v0 traitCollection];
  v13 = sub_100753C14();

  v29 = v13;
  [v13 capHeight];
  v15 = floor((v14 - v9) * 0.5);
  v16 = [objc_allocWithZone(NSTextAttachment) init];
  v17 = [objc_opt_self() systemYellowColor];
  v18 = [v6 imageWithTintColor:v17];
  v28 = v6;
  v19 = v18;

  [v16 setImage:v19];
  [v16 setBounds:{0.0, v15, v9, v9}];
  sub_100016C60(0, &unk_100929CB0);
  v20 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment:v16];
  [v5 appendAttributedString:v20];
  if (qword_100921920 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v7, qword_10093F9A8);
  sub_1007502D4();
  sub_100750564();
  v22 = v21;
  v10(v4, v30);
  v23 = [objc_allocWithZone(NSTextAttachment) init];
  [v23 setBounds:{0.0, 0.0, v22, 0.0}];
  v24 = [objc_allocWithZone(UIImage) init];
  [v23 setImage:v24];

  v25 = [objc_opt_self() attributedStringWithAttachment:v23];
  [v5 appendAttributedString:v25];

  return v5;
}

id sub_1005A3C18(char a1, uint64_t a2)
{
  v5 = sub_10074AB44();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100928A40);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel;
  result = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel);
  if (a1)
  {
    if (result)
    {
      goto LABEL_6;
    }

    v15 = v2;
    if (qword_100920ED0 != -1)
    {
      swift_once();
    }

    v16 = sub_100750534();
    v17 = sub_10000D0FC(v16, qword_1009809C0);
    v18 = *(v16 - 8);
    (*(v18 + 16))(v12, v17, v16);
    (*(v18 + 56))(v12, 0, 1, v16);
    (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
    v19 = objc_allocWithZone(sub_100745C84());
    v20 = sub_100745C74();
    v2 = v15;
    sub_1005A33D8(v20);
    result = *(v15 + v13);
    if (result)
    {
LABEL_6:
      [result setTextColor:{a2, v10}];
      result = *(v2 + v13);
      if (result)
      {
        return [result setHidden:0];
      }
    }
  }

  else if (result)
  {
    [result setHidden:{1, v10}];
    result = *(v2 + v13);
    if (result)
    {

      return [result setText:0];
    }
  }

  return result;
}

void sub_1005A3ED8()
{
  v1 = v0;
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel;
  v10 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel);
  if (v10)
  {
    goto LABEL_5;
  }

  if (qword_100920F20 != -1)
  {
    swift_once();
  }

  v11 = sub_100750534();
  v12 = sub_10000D0FC(v11, qword_100980AB0);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v8, v12, v11);
  (*(v13 + 56))(v8, 0, 1, v11);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v14 = objc_allocWithZone(sub_100745C84());
  v15 = sub_100745C74();
  sub_1005A33E4(v15);
  v10 = *(v1 + v9);
  if (v10)
  {
LABEL_5:
    v16 = v10;
    sub_100745C34();

    v17 = *(v1 + v9);
    if (v17)
    {
      sub_100016C60(0, &qword_100923500);
      v18 = v17;
      v19 = sub_100753DE4();
      [v18 setTextColor:v19];

      v20 = *(v1 + v9);
      if (v20)
      {
        [v20 setHidden:0];
      }
    }
  }
}

uint64_t sub_1005A41A0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100750304();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100750B04();
  sub_100039C50(v7, a2);
  sub_10000D0FC(v7, a2);
  if (qword_100920ED8 != -1)
  {
    swift_once();
  }

  v8 = sub_100750534();
  v9 = sub_10000D0FC(v8, qword_1009809D8);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_10000D134(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_100750B14();
  return (*(v4 + 8))(v6, v3);
}

void sub_1005A437C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_stateMachine);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_stateMachine + 8);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v3 = sub_100742394();
    v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_isBetaApp);
    *(v0 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_isBetaApp) = v3 & 1;
    if ((v3 & 1) != v4)
    {
      sub_1005A3560();
    }

    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    v6[2] = v5;
    v6[3] = v1;
    v6[4] = v2;
    swift_unknownObjectRetain();

    sub_1007423A4();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_isBetaApp);
    *(v0 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_isBetaApp) = 0;
    if (v7 == 1)
    {

      sub_1005A3560();
    }
  }
}

void sub_1005A4510()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getObjectType();
    v2 = sub_100742394();
    v3 = v1[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_isBetaApp];
    v1[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_isBetaApp] = v2 & 1;
    if ((v2 & 1) != v3)
    {
      sub_1005A3560();
    }
  }
}

char *sub_1005A45A4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v74 = sub_100752AC4();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10074AB44();
  v11 = *(v78 - 8);
  __chkstk_darwin(v78);
  v13 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v14 - 8);
  v16 = v67 - v15;
  v17 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
  sub_1007433C4();
  *&v4[v17] = sub_1007431D4();
  v18 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_ordinalLabel;
  if (qword_100920F38 != -1)
  {
    swift_once();
  }

  v19 = sub_100750534();
  v20 = sub_10000D0FC(v19, qword_100980AF8);
  v21 = *(v19 - 8);
  v22 = v21 + 16;
  v79 = *(v21 + 16);
  v79(v16, v20, v19);
  v24 = *(v21 + 56);
  v23 = v21 + 56;
  v77 = v24;
  v24(v16, 0, 1, v19);
  v25 = *(v11 + 104);
  v75 = v11 + 104;
  v76 = enum case for DirectionalTextAlignment.none(_:);
  v25(v13);
  v26 = sub_100745C84();
  v27 = objc_allocWithZone(v26);
  *&v4[v18] = sub_100745C74();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel] = 0;
  v28 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel;
  if (qword_100920ED8 != -1)
  {
    swift_once();
  }

  v29 = sub_10000D0FC(v19, qword_1009809D8);
  v79(v16, v29, v19);
  v77(v16, 0, 1, v19);
  (v25)(v13, v76, v78);
  v30 = objc_allocWithZone(v26);
  *&v4[v28] = sub_100745C74();
  v70 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel;
  v31 = v13;
  v71 = v25;
  if (qword_100920EF8 != -1)
  {
    swift_once();
  }

  v69 = sub_10000D0FC(v19, qword_100980A38);
  v79(v16, v69, v19);
  v32 = v77;
  v77(v16, 0, 1, v19);
  v33 = v76;
  v67[1] = v23;
  v34 = v78;
  v67[0] = v22;
  v35 = v71;
  (v71)(v31, v76, v78);
  v36 = objc_allocWithZone(v26);
  v68 = v26;
  *&v4[v70] = sub_100745C74();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel] = 0;
  v37 = v34;
  v38 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel;
  v79(v16, v69, v19);
  v32(v16, 0, 1, v19);
  v35(v31, v33, v37);
  v39 = objc_allocWithZone(v68);
  *&v5[v38] = sub_100745C74();
  v40 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton;
  v41 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v40] = sub_100154454(0);
  v42 = &v5[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabelPresenter];
  *v42 = 0u;
  v42[1] = 0u;
  v43 = &v5[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_title];
  *v43 = 0;
  v43[1] = 0;
  v44 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleTextColor;
  sub_100016C60(0, &qword_100923500);
  *&v5[v44] = sub_100753DD4();
  v45 = &v5[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_stateMachine];
  *v45 = 0;
  v45[1] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_isBetaApp] = 0;
  v46 = type metadata accessor for BaseLockupView();
  v82.receiver = v5;
  v82.super_class = v46;
  v47 = objc_msgSendSuper2(&v82, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v51 = v47;
  [v51 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v51 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v52 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
  [v51 addSubview:*&v51[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView]];
  v53 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_ordinalLabel;
  v54 = *&v51[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_ordinalLabel];
  sub_100745C34();

  [v51 addSubview:*&v51[v53]];
  v55 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel;
  v56 = *&v51[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel];
  sub_100745C34();

  [v51 addSubview:*&v51[v55]];
  v57 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel;
  v58 = *&v51[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel];
  v59 = sub_100753DF4();
  [v58 setTextColor:v59];

  v60 = *&v51[v57];
  sub_100745C34();

  [v51 addSubview:*&v51[v57]];
  v61 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel;
  [*&v51[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel] _setTextColorFollowsTintColor:1];
  v62 = *&v51[v61];
  sub_100745C34();

  [*&v51[v61] setText:0];
  [*&v51[v61] setHidden:1];
  [v51 addSubview:*&v51[v61]];
  [v51 addSubview:*&v51[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton]];
  v63 = *&v51[v52];
  memset(v81, 0, sizeof(v81));
  memset(v80, 0, sizeof(v80));
  v64 = v63;
  v65 = v72;
  sub_100752A74();
  sub_1000277BC(v80);
  sub_1000277BC(v81);
  sub_100753C74();

  (*(v73 + 8))(v65, v74);
  return v51;
}

id sub_1005A4E94()
{
  if (*&v0[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_stateMachine])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v1 = v0;
    sub_1007423C4();

    swift_unknownObjectRelease();
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for BaseLockupView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1005A5048(id a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for BaseLockupView();
  objc_msgSendSuper2(&v11, "traitCollectionDidChange:", a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_11:
    if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_isBetaApp) == 1)
    {
      sub_1005A3560();
    }

    return;
  }

  v5 = sub_100753094();
  v7 = v6;
  if (v5 == sub_100753094() && v7 == v8)
  {

    return;
  }

  v10 = sub_100754754();

  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }
}

uint64_t sub_1005A5290()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005A52C8()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1005A5314()
{
  v49 = sub_10074AB44();
  v1 = *(v49 - 8);
  __chkstk_darwin(v49);
  v3 = v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v4 - 8);
  v6 = v40 - v5;
  v7 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
  sub_1007433C4();
  *(v0 + v7) = sub_1007431D4();
  v8 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_ordinalLabel;
  if (qword_100920F38 != -1)
  {
    swift_once();
  }

  v9 = sub_100750534();
  v10 = sub_10000D0FC(v9, qword_100980AF8);
  v11 = *(v9 - 8);
  v12 = v11 + 16;
  v50 = *(v11 + 16);
  v50(v6, v10, v9);
  v15 = *(v11 + 56);
  v13 = v11 + 56;
  v14 = v15;
  v15(v6, 0, 1, v9);
  v16 = *(v1 + 104);
  v45 = enum case for DirectionalTextAlignment.none(_:);
  v47 = v1 + 104;
  v44 = v16;
  (v16)(v3);
  v48 = sub_100745C84();
  v17 = objc_allocWithZone(v48);
  *(v0 + v8) = sub_100745C74();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel) = 0;
  v18 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel;
  if (qword_100920ED8 != -1)
  {
    swift_once();
  }

  v19 = sub_10000D0FC(v9, qword_1009809D8);
  v20 = v12;
  v50(v6, v19, v9);
  v46 = v13;
  v42 = v14;
  v14(v6, 0, 1, v9);
  v44(v3, v45, v49);
  v21 = objc_allocWithZone(v48);
  v22 = v3;
  v23 = sub_100745C74();
  v43 = v0;
  *(v0 + v18) = v23;
  v41 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel;
  if (qword_100920EF8 != -1)
  {
    swift_once();
  }

  v40[0] = sub_10000D0FC(v9, qword_100980A38);
  v40[1] = v20;
  v50(v6, v40[0], v9);
  v24 = v42;
  v42(v6, 0, 1, v9);
  v25 = v45;
  v26 = v49;
  v27 = v44;
  v44(v22, v45, v49);
  v28 = objc_allocWithZone(v48);
  v29 = sub_100745C74();
  v30 = v43;
  *(v43 + v41) = v29;
  *(v30 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel) = 0;
  v31 = v26;
  v32 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel;
  v50(v6, v40[0], v9);
  v24(v6, 0, 1, v9);
  v27(v22, v25, v31);
  v33 = objc_allocWithZone(v48);
  *(v30 + v32) = sub_100745C74();
  v34 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton;
  v35 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v30 + v34) = sub_100154454(0);
  v36 = (v30 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabelPresenter);
  *v36 = 0u;
  v36[1] = 0u;
  v37 = (v30 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_title);
  *v37 = 0;
  v37[1] = 0;
  v38 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleTextColor;
  sub_100016C60(0, &qword_100923500);
  *(v30 + v38) = sub_100753DD4();
  v39 = (v30 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_stateMachine);
  *v39 = 0;
  v39[1] = 0;
  *(v30 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_isBetaApp) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_1005A58A4(uint64_t a1, char a2)
{
  if (a2)
  {
    v11[3] = sub_1007498E4();
    v11[4] = sub_1005A5B30();
    sub_10000D134(v11);

    sub_1007498C4();
    sub_10000C824(v11, &v8);
    sub_10000C888(&v8, v9);
    if (sub_100744EB4())
    {
      sub_100012160(&v8, v7);
      v2 = _swiftEmptyArrayStorage;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = _swiftEmptyArrayStorage;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10001E188(0, _swiftEmptyArrayStorage[2] + 1, 1);
        v2 = v10;
      }

      v5 = v2[2];
      v4 = v2[3];
      if (v5 >= v4 >> 1)
      {
        sub_10001E188((v4 > 1), v5 + 1, 1);
        v2 = v10;
      }

      v2[2] = v5 + 1;
      sub_100012160(v7, &v2[5 * v5 + 4]);
    }

    else
    {
      sub_10000C620(&v8);
      v2 = _swiftEmptyArrayStorage;
    }

    sub_10000C620(v11);
    return v2;
  }

  else
  {
    result = sub_100754644();
    __break(1u);
  }

  return result;
}

Swift::Int OnboardingConfiguration.hashValue.getter(unsigned __int8 a1)
{
  sub_100754834();
  sub_100754844(a1);
  return sub_100754884();
}

unint64_t sub_1005A5ACC()
{
  result = qword_10093FA50;
  if (!qword_10093FA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FA50);
  }

  return result;
}

unint64_t sub_1005A5B30()
{
  result = qword_100922F68;
  if (!qword_100922F68)
  {
    sub_1007498E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100922F68);
  }

  return result;
}

uint64_t sub_1005A5BDC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100750304();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100750B04();
  sub_100039C50(v7, a2);
  sub_10000D0FC(v7, a2);
  if (qword_100921928 != -1)
  {
    swift_once();
  }

  v8 = sub_100750534();
  v9 = sub_10000D0FC(v8, qword_10093FA58);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_10000D134(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_100750B14();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1005A5DE4()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_10093FAB8);
  sub_10000D0FC(v4, qword_10093FAB8);
  if (qword_100921940 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_10093FAA0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1005A5FB8()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_10093FAD0);
  sub_10000D0FC(v4, qword_10093FAD0);
  *v3 = UIFontTextStyleSubheadline;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_10000D134(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleSubheadline;
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

id sub_1005A6150(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for AccountDetailCollectionViewCell();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_1005A61A8(void *a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  v8 = a1;
  sub_1005A6218(a3);
  v9.receiver = v8;
  v9.super_class = type metadata accessor for AccountDetailCollectionViewCell();
  objc_msgSendSuper2(&v9, *a4, a3);
  sub_1005A62E4(a5);
}

id sub_1005A6218(char a1)
{
  v2 = v1;
  v4 = [v2 contentView];
  if (a1)
  {
    v5 = [objc_opt_self() clearColor];
  }

  else
  {
    sub_100016C60(0, &qword_100923500);
    v5 = sub_100753E54();
  }

  v6 = v5;
  [v4 setBackgroundColor:v5];

  return [v2 setNeedsDisplay];
}

id sub_1005A62E4(SEL *a1)
{
  v2 = v1;
  v3 = [v1 *a1];
  v4 = [v2 contentView];
  if (v3)
  {
    v5 = [objc_opt_self() clearColor];
  }

  else
  {
    sub_100016C60(0, &qword_100923500);
    v5 = sub_100753E54();
  }

  v6 = v5;
  [v4 setBackgroundColor:v5];

  return [v2 setNeedsDisplay];
}

char *sub_1005A63BC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10074AB44();
  v98 = *(v10 - 8);
  __chkstk_darwin(v10);
  *&v97 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v12 - 8);
  v14 = &v89 - v13;
  v4[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_shouldShowFullTitle] = 1;
  v15 = &v4[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_imageMarginRight];
  *v15 = 0;
  v15[8] = 1;
  v4[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_shouldResizeImage] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_accessoryView] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_secondaryAccessoryView] = 0;
  v16 = OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_accessory;
  v17 = type metadata accessor for Accessory();
  v18 = *(*(v17 - 8) + 56);
  v18(&v5[v16], 1, 1, v17);
  v18(&v5[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_secondaryAccessory], 1, 1, v17);
  v19 = &v5[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_accessoryMargin];
  *v19 = 0;
  v19[8] = 1;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_topSeparatorView;
  v21 = type metadata accessor for SeparatorView();
  *&v5[v20] = [objc_allocWithZone(v21) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v22 = &v5[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_topSeparatorViewInsets];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v22[32] = 1;
  v5[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_showTopSeparatorView] = 0;
  v23 = OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_bottomSeparatorView;
  *&v5[v23] = [objc_allocWithZone(v21) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = &v5[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_bottomSeparatorViewInsets];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v24[32] = 1;
  v5[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_showBottomSeparatorView] = 0;
  v25 = &v5[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_accessoryAction];
  *v25 = 0;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_backgroundSelectionView;
  *&v5[v26] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_isSelectable] = 1;
  v5[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_disabled] = 0;
  v27 = &v5[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_selectionHandler];
  *v27 = 0;
  v27[1] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_tapGestureRecognizer] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_imageView] = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_100921928 != -1)
  {
    swift_once();
  }

  v28 = sub_100750534();
  v29 = sub_10000D0FC(v28, qword_10093FA58);
  v30 = *(v28 - 8);
  v31 = *(v30 + 16);
  v94 = v29;
  v96 = v31;
  v32 = v30 + 16;
  (v31)(v14);
  v34 = *(v30 + 56);
  v33 = v30 + 56;
  v93 = v34;
  v34(v14, 0, 1, v28);
  v35 = *(v98 + 13);
  v36 = enum case for DirectionalTextAlignment.none(_:);
  v98 = (v98 + 104);
  v92 = v35;
  (v35)(v97);
  v37 = sub_100745C84();
  v38 = objc_allocWithZone(v37);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_titleLabel] = sub_100745C74();
  if (qword_100921940 != -1)
  {
    swift_once();
  }

  v39 = sub_10000D0FC(v28, qword_10093FAA0);
  v91 = v32;
  v96(v14, v39, v28);
  v40 = v93;
  v93(v14, 0, 1, v28);
  v41 = v97;
  v42 = v10;
  v89 = v33;
  v90 = v10;
  v43 = v92;
  v92(v97, v36, v42);
  v44 = objc_allocWithZone(v37);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_subtitleLabel] = sub_100745C74();
  v96(v14, v94, v28);
  v40(v14, 0, 1, v28);
  v43(v41, v36, v90);
  v45 = objc_allocWithZone(v37);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_detailLabel] = sub_100745C74();
  v46 = type metadata accessor for AccountDetailCollectionViewCell();
  v100.receiver = v5;
  v100.super_class = v46;
  v98 = v46;
  v47 = objc_msgSendSuper2(&v100, "initWithFrame:", a1, a2, a3, a4);
  sub_1005A9124();
  [v47 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v48 = [v47 contentView];
  v49 = sub_100016C60(0, &qword_100923500);
  v50 = sub_100753E54();
  [v48 setBackgroundColor:v50];

  v51 = OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_imageView;
  v52 = *&v47[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_imageView];
  sub_100753DC4();
  sub_100746E64();

  v53 = *&v47[v51];
  v54 = [v47 traitCollection];
  sub_100751364();

  sub_100746E74();
  v55 = *&v47[v51];
  v56 = [v47 backgroundColor];

  sub_100743224();
  [*&v47[v51] setContentMode:1];
  v57 = [v47 contentView];
  [v57 addSubview:*&v47[v51]];

  v58 = OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_titleLabel;
  [*&v47[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_titleLabel] setLineBreakMode:4];
  v59 = [v47 contentView];
  [v59 addSubview:*&v47[v58]];

  v60 = OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_subtitleLabel;
  v61 = *&v47[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_subtitleLabel];
  *&v97 = v49;
  v62 = sub_100753DF4();
  [v61 setTextColor:v62];

  v63 = [v47 contentView];
  [v63 addSubview:*&v47[v60]];

  v64 = OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_detailLabel;
  v65 = *&v47[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_detailLabel];
  v66 = sub_100753DF4();
  [v65 setTextColor:v66];

  v67 = [v47 contentView];
  [v67 addSubview:*&v47[v64]];

  v68 = OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_topSeparatorView;
  v69 = *&v47[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_topSeparatorView];
  v70 = objc_opt_self();
  v71 = v69;
  v72 = [v70 separatorColor];
  v73 = *&v71[OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_lineColor];
  *&v71[OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_lineColor] = v72;
  v74 = v72;

  [*&v71[OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_lineView] setBackgroundColor:v74];
  [*&v47[v68] setHidden:1];
  v75 = [v47 contentView];
  [v75 addSubview:*&v47[v68]];

  v76 = OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_bottomSeparatorView;
  v77 = *&v47[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_bottomSeparatorView];
  v78 = [v70 separatorColor];
  v79 = *&v77[OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_lineColor];
  *&v77[OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_lineColor] = v78;
  v80 = v78;

  [*&v77[OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_lineView] setBackgroundColor:v80];
  [*&v47[v76] setHidden:1];
  v81 = [v47 contentView];
  [v81 addSubview:*&v47[v76]];

  v82 = OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_backgroundSelectionView;
  v83 = *&v47[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_backgroundSelectionView];
  v84 = sub_100753EA4();
  [v83 setBackgroundColor:v84];

  [*&v47[v82] setOpaque:0];
  [*&v47[v82] setUserInteractionEnabled:0];
  if (v47[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_isSelectable] == 1)
  {
    [v47 setSelectedBackgroundView:*&v47[v82]];
  }

  sub_10000C518(&unk_1009249D0);
  v85 = swift_allocObject();
  v97 = xmmword_1007A5A00;
  *(v85 + 16) = xmmword_1007A5A00;
  *(v85 + 32) = sub_1007519E4();
  *(v85 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v99[3] = v98;
  v99[0] = v47;
  v86 = v47;
  sub_100753D34();
  swift_unknownObjectRelease();

  sub_10000C620(v99);
  v87 = swift_allocObject();
  *(v87 + 16) = v97;
  *(v87 + 32) = sub_100751554();
  *(v87 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100753D44();
  swift_unknownObjectRelease();

  return v86;
}

void sub_1005A7034()
{
  v1 = v0;
  v179 = type metadata accessor for Accessory();
  v2 = *(v179 - 8);
  __chkstk_darwin(v179);
  v169 = (&v166 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v170 = sub_10000C518(&unk_100928A60);
  __chkstk_darwin(v170);
  *&v171 = &v166 - v4;
  v5 = sub_10000C518(&qword_10093FDB0);
  __chkstk_darwin(v5 - 8);
  *&v172 = &v166 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v166 - v8;
  __chkstk_darwin(v10);
  v12 = &v166 - v11;
  *&v13 = COERCE_DOUBLE(sub_100754724());
  v186 = *(v13 - 8);
  v187 = *&v13;
  __chkstk_darwin(v13);
  v15 = &v166 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AccountDetailCollectionViewCell();
  v188.receiver = v0;
  v188.super_class = v16;
  objc_msgSendSuper2(&v188, "layoutSubviews");
  sub_1007477B4();
  Width = CGRectGetWidth(v189);
  v18 = [v0 traitCollection];
  LODWORD(v19) = sub_100753804();

  v20 = OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_accessoryView;
  v21 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_accessoryView];
  if (v21)
  {
    LODWORD(v182) = [v21 isHidden] ^ 1;
  }

  else
  {
    LODWORD(v182) = 0;
  }

  v173 = *&v12;
  v22 = sub_100743334();
  v23 = v22;
  if (v22)
  {
  }

  v180 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_subtitleLabel];
  v24 = [*&v180 text];
  v25 = v24;
  if (v24)
  {
  }

  v181 = v25;
  v26 = v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_imageMarginRight + 8];
  v184 = v19;
  v185 = v23;
  if (v26)
  {
    v27 = 8.0;
    if (v23)
    {
      goto LABEL_10;
    }

LABEL_16:
    v30 = 0.0;
    goto LABEL_17;
  }

  v27 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_imageMarginRight];
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_10:
  v28 = COERCE_DOUBLE(sub_1005A9324());
  v30 = 0.0;
  if (v31)
  {
LABEL_17:
    v40 = 0.0;
    v32 = 0.0;
    v33 = 0.0;
    goto LABEL_18;
  }

  v32 = v28;
  v33 = v29;
  if (v19)
  {
    if (qword_100921930 != -1)
    {
      swift_once();
    }

    v34 = sub_100750B04();
    sub_10000D0FC(v34, qword_10093FA70);
    v19 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_titleLabel];
    sub_1007502D4();
    v35 = [v19 traitCollection];
    sub_100750AD4();
    v37 = v36;

    [v19 firstBaselineFromTop];
    v39 = v38;
    (*(*&v186 + 8))(v15, COERCE_DOUBLE(*&v187));
    v40 = v37 - v39;
    LOBYTE(v19) = v184;
  }

  else
  {
    sub_1007477B4();
    v40 = CGRectGetMidY(v191) + v33 * -0.5;
  }

  sub_1007477B4();
  MinX = CGRectGetMinX(v192);
  v30 = MinX;
  if ((v19 & 1) == 0)
  {
    v77 = v40;
    v78 = v32;
    v79 = v33;
    Width = Width - (v27 + CGRectGetWidth(*&MinX));
  }

LABEL_18:
  sub_1007477B4();
  sub_100753B24();
  sub_100743324();
  v177 = v32;
  v175 = v40;
  v174 = v30;
  if (v19)
  {
    sub_100743314();
    MaxY = CGRectGetMaxY(v190);
    if (qword_100921930 != -1)
    {
      swift_once();
    }

    v42 = sub_100750B04();
    sub_10000D0FC(v42, qword_10093FA70);
    v43 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_titleLabel];
    sub_1007502D4();
    v44 = [v43 traitCollection];
    sub_100750AD4();
    v46 = v45;

    [v43 firstBaselineFromTop];
    v48 = v47;
    v49 = *(*&v186 + 8);
    v49(v15, *&v187);
    v50 = MaxY + v46 - v48;
  }

  else
  {
    if (qword_100921930 != -1)
    {
      swift_once();
    }

    v51 = sub_100750B04();
    sub_10000D0FC(v51, qword_10093FA70);
    v43 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_titleLabel];
    sub_1007502D4();
    v52 = [v43 traitCollection];
    sub_100750AD4();
    v54 = v53;

    [v43 firstBaselineFromTop];
    v56 = v55;
    v49 = *(*&v186 + 8);
    v49(v15, *&v187);
    v50 = v54 - v56;
  }

  v183 = v50;
  v57 = &selRef_initWithTitle_style_target_action_;
  v58 = v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_accessoryMargin + 8] == 1;
  v176 = v33;
  if (v58)
  {
    v59 = 16.0;
    if (LOBYTE(v182))
    {
      goto LABEL_30;
    }

    v182 = 16.0;
LABEL_35:
    LODWORD(v179) = 1;
    v75 = 0.0;
    v172 = 0.0;
    v171 = 0.0;
    v67 = 0.0;
    v74 = v180;
    goto LABEL_60;
  }

  v59 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_accessoryMargin];
  if (!LODWORD(v182))
  {
    v182 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_accessoryMargin];
    goto LABEL_35;
  }

LABEL_30:
  v168 = v43;
  v60 = *&v1[v20];
  v182 = v59;
  if (!v60)
  {
    LODWORD(v179) = 1;
    v75 = 0.0;
    v172 = 0.0;
    v171 = 0.0;
    v67 = 0.0;
    v43 = v168;
    v74 = v180;
    goto LABEL_60;
  }

  v166 = v49;
  v61 = v60;
  sub_1007477B4();
  v167 = v61;
  [v61 sizeThatFits:{v62, v63}];
  v65 = v64;
  v67 = v66;
  v68 = OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_accessory;
  swift_beginAccess();
  v69 = *&v173;
  v70 = v179;
  swift_storeEnumTagMultiPayload();
  (*(v2 + 56))(v69, 0, 1, v70);
  v71 = *(v170 + 48);
  v170 = v68;
  v72 = *&v171;
  sub_1005AA438(&v1[v68], *&v171);
  sub_1005AA438(v69, v72 + v71);
  v73 = *(v2 + 48);
  if (v73(v72, 1, v70) == 1)
  {
    sub_10000C8CC(v69, &qword_10093FDB0);
    if (v73(v72 + v71, 1, v70) == 1)
    {
      sub_10000C8CC(v72, &qword_10093FDB0);
      v43 = v168;
      v74 = v180;
LABEL_44:
      v83 = [v1 traitCollection];
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

      sub_100753B64();
      v65 = v84;
      v67 = v85;
      goto LABEL_45;
    }

LABEL_42:
    sub_10000C8CC(v72, &unk_100928A60);
    v80 = &selRef_viewSafeAreaInsetsDidChange;
    v43 = v168;
    v74 = v180;
    goto LABEL_46;
  }

  sub_1005AA438(v72, v9);
  if (v73(v72 + v71, 1, v70) == 1)
  {
    sub_10000C8CC(*&v173, &qword_10093FDB0);
    sub_10007A554(v9);
    goto LABEL_42;
  }

  v81 = v169;
  sub_100372EAC(v72 + v71, v169);
  v82 = sub_10050D4C8(v9, v81);
  sub_10007A554(v81);
  sub_10000C8CC(*&v173, &qword_10093FDB0);
  sub_10007A554(v9);
  sub_10000C8CC(v72, &qword_10093FDB0);
  v43 = v168;
  v74 = v180;
  if (v82)
  {
    goto LABEL_44;
  }

LABEL_45:
  v80 = &selRef_viewSafeAreaInsetsDidChange;
LABEL_46:
  sub_1007477B4();
  v75 = CGRectGetMaxX(v193) - v65;
  v86 = *&v172;
  sub_1005AA438(&v1[v170], *&v172);
  v87 = v73(v86, 1, v179);
  v180 = v65;
  if (v87 == 1)
  {
    sub_10000C8CC(v86, &qword_10093FDB0);
    v49 = v166;
LABEL_50:
    [v1 v80[472]];
    x = v195.origin.x;
    y = v195.origin.y;
    v92 = v195.size.width;
    v93 = v27;
    v94 = v75;
    v95 = Width;
    height = v195.size.height;
    CGRectGetMidX(v195);
    v196.origin.x = x;
    v196.origin.y = y;
    v59 = v182;
    v196.size.width = v92;
    v196.size.height = height;
    Width = v95;
    v75 = v94;
    v27 = v93;
    v89 = round(CGRectGetMidY(v196) + v67 * -0.5);
    goto LABEL_51;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10007A554(v86);
  v49 = v166;
  if (EnumCaseMultiPayload != 5)
  {
    goto LABEL_50;
  }

  sub_1007477B4();
  v89 = v183 + CGRectGetMinY(v194);
LABEL_51:
  sub_1007477B4();
  v97 = CGRectGetWidth(v197);
  if (v180 >= v97)
  {
    v98 = v97;
  }

  else
  {
    v98 = v180;
  }

  sub_1007477B4();
  sub_100753B24();
  v99 = v167;
  [v167 setFrame:?];
  v198.origin.x = v75;
  v198.origin.y = v89;
  v198.size.width = v98;
  v198.size.height = v67;
  Width = Width - (v59 + CGRectGetWidth(v198));
  v100 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_secondaryAccessoryView];
  if (v100)
  {
    v101 = v100;
    sub_1007477B4();
    [v101 sizeThatFits:{v102, v103}];
    v105 = v104;
    v107 = v106;
    v199.origin.x = v75;
    v199.origin.y = v89;
    v199.size.width = v98;
    v199.size.height = v67;
    v180 = CGRectGetMinX(v199);
    [v1 v80[472]];
    v108 = v200.origin.x;
    v109 = v27;
    v110 = Width;
    v111 = v200.origin.y;
    v112 = v200.size.width;
    v113 = v200.size.height;
    CGRectGetMidX(v200);
    v201.origin.x = v108;
    v201.origin.y = v111;
    v114 = v110;
    v27 = v109;
    v201.size.width = v112;
    v201.size.height = v113;
    v115 = round(CGRectGetMidY(v201) + v107 * -0.5);
    sub_1007477B4();
    v116 = CGRectGetWidth(v202);
    if (v105 >= v116)
    {
      v117 = v116;
    }

    else
    {
      v117 = v105;
    }

    v118 = v182;
    v75 = v180 - v105 - v182;
    sub_1007477B4();
    sub_100753B24();
    v57 = &selRef_initWithTitle_style_target_action_;
    [v101 setFrame:?];
    v203.origin.x = v75;
    v172 = v115;
    v203.origin.y = v115;
    v171 = v117;
    v203.size.width = v117;
    v203.size.height = v107;
    v119 = CGRectGetWidth(v203);

    LODWORD(v179) = 0;
    Width = v114 - (v118 + v119);
    v67 = v107;
  }

  else
  {
    v171 = v98;
    v172 = v89;

    LODWORD(v179) = 0;
    v57 = &selRef_initWithTitle_style_target_action_;
  }

LABEL_60:
  v173 = v75;
  v180 = v67;
  sub_1007477B4();
  [v43 v57[116]];
  v121 = v120;
  v123 = v122;
  v124 = v57;
  if (qword_100921948 != -1)
  {
    swift_once();
  }

  v125 = v185 == 0;
  v126 = sub_100750B04();
  sub_10000D0FC(v126, qword_10093FAB8);
  sub_1007502D4();
  v127 = [*&v74 traitCollection];
  sub_100750AD4();
  v129 = v128;

  [*&v74 firstBaselineFromTop];
  v131 = v130;
  v49(v15, *&v187);
  v132 = v129 - v131;
  sub_1007477B4();
  [*&v74 v124[116]];
  v135 = v134;
  v136 = v133;
  v186 = v132;
  v137 = v181;
  if (v181)
  {
    v138 = v123 + v132 + v133;
  }

  else
  {
    v138 = v123;
  }

  sub_1007477B4();
  v139 = (CGRectGetHeight(v206) - v138) * 0.5;
  v140 = v184;
  if (v184 & 1 | (v139 <= v183))
  {
    v141 = v183;
  }

  else
  {
    v141 = v139;
  }

  if (Width >= v121)
  {
    v142 = v121;
  }

  else
  {
    v142 = Width;
  }

  v187 = Width;
  v178 = v27;
  if ((v125 | v184))
  {
    sub_1007477B4();
    v143 = CGRectGetMinX(v207);
  }

  else
  {
    v208.origin.x = v174;
    v208.origin.y = v175;
    v208.size.width = v177;
    v208.size.height = v176;
    v143 = v27 + CGRectGetMaxX(v208);
  }

  sub_1007477B4();
  MinY = CGRectGetMinY(v209);
  v183 = v141;
  v145 = v141 + MinY;
  sub_1007477B4();
  sub_100753B24();
  [v43 setFrame:?];
  if (v137)
  {
    [*&v74 setHidden:0];
    if (v187 < v135)
    {
      v135 = v187;
    }

    v210.origin.x = v143;
    v210.origin.y = v145;
    v146 = v142;
    v210.size.width = v142;
    v210.size.height = v123;
    v147 = CGRectGetMinX(v210);
    [v43 lastBaselineMaxY];
    v149 = v186 + v148;
  }

  else
  {
    v146 = v142;
    [*&v74 setHidden:1];
    v147 = 0.0;
    v149 = 0.0;
    v135 = 0.0;
    v136 = 0.0;
  }

  sub_1007477B4();
  sub_100753B24();
  [*&v74 setFrame:?];
  if (v140)
  {
    v150 = v146;
  }

  else
  {
    v211.origin.x = v147;
    v211.origin.y = v149;
    v211.size.width = v135;
    v211.size.height = v136;
    v151 = CGRectGetWidth(v211);
    v212.origin.x = v143;
    v212.origin.y = v145;
    v150 = v146;
    v212.size.width = v146;
    v212.size.height = v123;
    v152 = CGRectGetWidth(v212);
    if (v151 > v152)
    {
      v152 = v151;
    }

    if (v185)
    {
      v152 = v178 + v152;
    }

    v187 = v187 - v152;
  }

  v153 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_detailLabel];
  v154 = [v153 text];
  if (v154)
  {
    v155 = v154;
    v156 = sub_100753094();
    v158 = v157;

    v159 = HIBYTE(v158) & 0xF;
    if ((v158 & 0x2000000000000000) == 0)
    {
      v159 = v156 & 0xFFFFFFFFFFFFLL;
    }

    if (v159)
    {
      if (v140)
      {
        v160 = v187;
      }

      else
      {
        v160 = v187 - v182;
      }

      sub_1007477B4();
      [v153 measurementsWithFitting:v1 in:{v160, CGRectGetHeight(v213)}];
      if (v140)
      {
        v214.origin.x = v143;
        v214.origin.y = v145;
        v214.size.width = v150;
        v214.size.height = v123;
        CGRectGetMinX(v214);
        [v43 lastBaselineMaxY];
      }

      else
      {
        if (v179)
        {
          sub_1007477B4();
          CGRectGetMaxX(v215);
        }

        else
        {
          v216.origin.x = v173;
          v216.origin.y = v172;
          v216.size.width = v171;
          v216.size.height = v180;
          CGRectGetMinX(v216);
        }

        sub_1007477B4();
        CGRectGetMinY(v217);
      }

      sub_1007477B4();
      sub_100753B24();
      [v153 setFrame:?];
    }
  }

  if (v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_showTopSeparatorView] == 1)
  {
    sub_1007477B4();
    CGRectGetMinX(v218);
    [v1 bounds];
    CGRectGetMinY(v219);
    sub_1007477B4();
    CGRectGetWidth(v220);
    v161 = [v1 traitCollection];
    sub_100751364();

    if ((v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_topSeparatorViewInsets + 32] & 1) == 0)
    {
      [v1 bounds];
    }

    v162 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_topSeparatorView];
    sub_1007477B4();
    sub_100753B24();
    [v162 setFrame:?];
  }

  if (v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_showBottomSeparatorView] == 1)
  {
    sub_1007477B4();
    CGRectGetMinX(v221);
    [v1 bounds];
    CGRectGetMaxY(v222);
    v163 = [v1 traitCollection];
    sub_100751364();

    sub_1007477B4();
    CGRectGetWidth(v223);
    v164 = [v1 traitCollection];
    sub_100751364();

    if ((v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_bottomSeparatorViewInsets + 32] & 1) == 0)
    {
      [v1 bounds];
    }

    v165 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_bottomSeparatorView];
    sub_1007477B4();
    sub_100753B24();
    [v165 setFrame:?];
  }
}

double sub_1005A83F4(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for Accessory();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v60 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v60 - v8);
  __chkstk_darwin(v10);
  v12 = &v60 - v11;
  v13 = sub_10000C518(&qword_10093FDB0);
  __chkstk_darwin(v13 - 8);
  v61 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v60 - v16;
  __chkstk_darwin(v18);
  v74 = &v60 - v19;
  __chkstk_darwin(v20);
  v76 = &v60 - v21;
  v71 = sub_100743334();
  v22 = v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_shouldResizeImage];
  if (v22 == 1)
  {
    sub_100743394();
  }

  v23 = [*&v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_titleLabel] text];
  if (v23)
  {
    v24 = v23;
    v63 = sub_100753094();
    v72 = v25;
  }

  else
  {
    v63 = 0;
    v72 = 0;
  }

  LODWORD(v65) = v2[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_shouldShowFullTitle];
  v26 = [*&v2[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_subtitleLabel] text];
  if (v26)
  {
    v27 = v26;
    v62 = sub_100753094();
    v75 = v28;
  }

  else
  {
    v62 = 0;
    v75 = 0;
  }

  v29 = [*&v2[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_detailLabel] text];
  if (v29)
  {
    v30 = v29;
    v64 = sub_100753094();
    v68 = v31;
  }

  else
  {
    v64 = 0;
    v68 = 0;
  }

  v32 = OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_accessory;
  swift_beginAccess();
  sub_1005AA438(&v2[v32], v76);
  v33 = OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_secondaryAccessory;
  swift_beginAccess();
  sub_1005AA438(&v2[v33], v74);
  v66 = v2[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_showTopSeparatorView];
  v67 = v2[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_showBottomSeparatorView];
  [v2 layoutMargins];
  v69 = v34;
  v35 = [v2 traitCollection];
  v36 = sub_100753804();

  v73 = v36;
  v70 = a1;
  if ((v22 & 1) == 0 && v71)
  {
    [v71 size];
  }

  v37 = [v2 traitCollection];
  sub_1005AA438(v76, v17);
  v38 = *(v5 + 48);
  if (v38(v17, 1, v4) == 1)
  {
    v39 = v17;
  }

  else
  {
    sub_100372EAC(v17, v12);
    sub_10050BF0C(v37);
    swift_storeEnumTagMultiPayload();
    v40 = sub_10050D4C8(v12, v9);
    sub_10007A554(v9);
    if (v40)
    {
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
    }

    v41 = v61;
    sub_1005AA438(v74, v61);
    if (v38(v41, 1, v4) != 1)
    {
      v42 = v41;
      v43 = v60;
      sub_100372EAC(v42, v60);
      sub_10050BF0C(v37);
      sub_10007A554(v43);
      sub_10007A554(v12);
      goto LABEL_23;
    }

    sub_10007A554(v12);
    v39 = v41;
  }

  sub_10000C8CC(v39, &qword_10093FDB0);
LABEL_23:
  if ((v65 & 1) == 0 && (sub_100753804() & 1) == 0)
  {
    sub_100754264();
  }

  v65 = v37;
  if (qword_100921928 != -1)
  {
    swift_once();
  }

  v44 = sub_100750534();
  v45 = sub_10000D0FC(v44, qword_10093FA58);
  v46 = sub_10074F3F4();
  v78 = v46;
  v47 = sub_1001FC0C4();
  v79 = v47;
  v48 = sub_10000D134(v77);
  v49 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v50 = *(*(v46 - 8) + 104);
  v50(v48, enum case for Feature.measurement_with_labelplaceholder(_:), v46);
  sub_10074FC74();
  sub_10000C620(v77);
  v63 = v45;
  sub_10074CCB4();
  if (qword_100921930 != -1)
  {
    swift_once();
  }

  v51 = sub_100750B04();
  sub_10000D0FC(v51, qword_10093FA70);
  sub_100750584();
  if (v75)
  {
    if (qword_100921940 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v44, qword_10093FAA0);
    v78 = v46;
    v79 = v47;
    v52 = sub_10000D134(v77);
    v50(v52, v49, v46);
    sub_10074FC74();
    sub_10000C620(v77);
    sub_10074CCB4();
    if (qword_100921948 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v51, qword_10093FAB8);
    sub_100750584();
    v53 = v68;
    if (qword_100921950 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v51, qword_10093FAD0);
    sub_100750554();
  }

  else
  {
    if (qword_100921938 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v51, qword_10093FA88);
    sub_100750554();
    v53 = v68;
  }

  if ((v73 & (v53 != 0)) != 1)
  {
    goto LABEL_50;
  }

  v54 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v54 = v64 & 0xFFFFFFFFFFFFLL;
  }

  if (v54)
  {
    v78 = v46;
    v79 = v47;
    v55 = sub_10000D134(v77);
    v50(v55, v49, v46);
    sub_10074FC74();
    sub_10000C620(v77);
    sub_10074CCB4();
    if (qword_100921948 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v51, qword_10093FAB8);
    sub_100750584();
    v56 = v65;
    if (qword_100921950 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v51, qword_10093FAD0);
    sub_100750554();
  }

  else
  {
LABEL_50:
    v56 = v65;
  }

  if (v66)
  {
    v57 = [v2 traitCollection];
    sub_100751364();
  }

  if (v67)
  {
    v58 = [v2 traitCollection];
    sub_100751364();
  }

  else
  {
  }

  sub_10000C8CC(v74, &qword_10093FDB0);
  sub_10000C8CC(v76, &qword_10093FDB0);
  return v70;
}

BOOL sub_1005A9124()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_100753804();

  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_titleLabel];
    v5 = [v4 numberOfLines] != 0;
    [v4 setNumberOfLines:0];
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_subtitleLabel] setNumberOfLines:0];
    v6 = 0;
LABEL_16:
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_detailLabel] setNumberOfLines:v6];
    return v5;
  }

  v7 = v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_shouldShowFullTitle];
  v8 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_subtitleLabel];
  v9 = [v8 text];
  if (v9)
  {
    v10 = v9;
    sub_100753094();
  }

  v11 = [v1 traitCollection];
  v12 = v11;
  if (v7)
  {

    v13 = 0;
  }

  else if (sub_100753804())
  {

    v13 = 3;
  }

  else
  {
    v14 = sub_100754264();

    if (v14)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_titleLabel];
  v16 = [v15 numberOfLines];
  v5 = v13 != v16;
  if (v13 != v16)
  {
    [v15 setNumberOfLines:v13];
  }

  if ([v8 numberOfLines] != 1)
  {
    [v8 setNumberOfLines:1];
    v6 = 1;
    v5 = 1;
    goto LABEL_16;
  }

  return v5;
}

void *sub_1005A9324()
{
  result = sub_100743334();
  v2 = result;
  if (result)
  {
    [result size];
    v4 = v3;

    if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_shouldResizeImage) == 1)
    {
      v5 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
      sub_100743394();
      [v5 scaledValueForValue:?];
      v7 = v6;

      v8 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
      sub_100743394();
      [v8 scaledValueForValue:v9];

      if (v7 <= 56.0)
      {
        v10 = v7;
      }

      else
      {
        v10 = 56.0;
      }

      return *&v10;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

void sub_1005A94FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v5 = type metadata accessor for Accessory();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v35 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10000C518(&qword_10093FDB0);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v37 = &v35 - v12;
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  v16 = sub_10000C518(&unk_100928A60);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v35 - v18;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_accessory;
  swift_beginAccess();
  v21 = *(v17 + 56);
  v38 = a1;
  sub_1005AA438(a1, v19);
  sub_1005AA438(&v3[v20], &v19[v21]);
  v22 = *(v6 + 48);
  if (v22(v19, 1, v5) == 1)
  {
    if (v22(&v19[v21], 1, v5) == 1)
    {
      sub_10000C8CC(v19, &qword_10093FDB0);
      return;
    }
  }

  else
  {
    sub_1005AA438(v19, v15);
    if (v22(&v19[v21], 1, v5) != 1)
    {
      v30 = &v19[v21];
      v31 = v35;
      sub_100372EAC(v30, v35);
      v32 = sub_10050D4C8(v15, v31);
      sub_10007A554(v31);
      sub_10007A554(v15);
      sub_10000C8CC(v19, &qword_10093FDB0);
      if (v32)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_10007A554(v15);
  }

  sub_10000C8CC(v19, &unk_100928A60);
LABEL_7:
  v24 = v37;
  v23 = v38;
  sub_1005AA438(v38, v37);
  swift_beginAccess();
  sub_10010AA88(v24, &v3[v20]);
  swift_endAccess();
  sub_1005AA438(v23, v10);
  if (v22(v10, 1, v5) == 1)
  {
    sub_10000C8CC(v10, &qword_10093FDB0);
    v25 = 0;
  }

  else
  {
    sub_10050A2DC(v36);
    v25 = v26;
    sub_10007A554(v10);
  }

  v27 = OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_accessoryView;
  v28 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_accessoryView];
  if (v28)
  {
    [v28 removeFromSuperview];
    v29 = *&v3[v27];
  }

  else
  {
    v29 = 0;
  }

  *&v3[v27] = v25;
  v33 = v25;

  if (v25)
  {
    [v3 addSubview:v33];
  }

  if (*&v3[v27])
  {
    objc_opt_self();
    v34 = swift_dynamicCastObjCClass();
    if (v34)
    {
      [v34 addTarget:v3 action:"didTapWithAccessoryView:" forControlEvents:64];
    }
  }

  [v3 setNeedsLayout];
}

void sub_1005A992C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = a2;
  v5 = type metadata accessor for Accessory();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v34 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10000C518(&qword_10093FDB0);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v36 = &v34 - v12;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  v16 = sub_10000C518(&unk_100928A60);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v34 - v18;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_secondaryAccessory;
  swift_beginAccess();
  v21 = *(v17 + 56);
  v37 = a1;
  sub_1005AA438(a1, v19);
  sub_1005AA438(&v3[v20], &v19[v21]);
  v22 = *(v6 + 48);
  if (v22(v19, 1, v5) == 1)
  {
    if (v22(&v19[v21], 1, v5) == 1)
    {
      sub_10000C8CC(v19, &qword_10093FDB0);
      return;
    }
  }

  else
  {
    sub_1005AA438(v19, v15);
    if (v22(&v19[v21], 1, v5) != 1)
    {
      v30 = &v19[v21];
      v31 = v34;
      sub_100372EAC(v30, v34);
      v32 = sub_10050D4C8(v15, v31);
      sub_10007A554(v31);
      sub_10007A554(v15);
      sub_10000C8CC(v19, &qword_10093FDB0);
      if (v32)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_10007A554(v15);
  }

  sub_10000C8CC(v19, &unk_100928A60);
LABEL_7:
  v24 = v36;
  v23 = v37;
  sub_1005AA438(v37, v36);
  swift_beginAccess();
  sub_10010AA88(v24, &v3[v20]);
  swift_endAccess();
  sub_1005AA438(v23, v10);
  if (v22(v10, 1, v5) == 1)
  {
    sub_10000C8CC(v10, &qword_10093FDB0);
    v25 = 0;
  }

  else
  {
    sub_10050A2DC(v35);
    v25 = v26;
    sub_10007A554(v10);
  }

  v27 = OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_secondaryAccessoryView;
  v28 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_secondaryAccessoryView];
  if (v28)
  {
    [v28 removeFromSuperview];
    v29 = *&v3[v27];
  }

  else
  {
    v29 = 0;
  }

  *&v3[v27] = v25;
  v33 = v25;

  if (v25)
  {
    [v3 addSubview:v33];
  }

  [v3 setNeedsLayout];
}

double sub_1005A9DEC()
{
  v1 = v0;
  v2 = sub_10000C518(&qword_10093FDB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for AccountDetailCollectionViewCell();
  v21.receiver = v0;
  v21.super_class = v5;
  objc_msgSendSuper2(&v21, "prepareForReuse");
  sub_100743344();
  [v0 setNeedsLayout];
  v6 = &v0[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_imageMarginRight];
  *v6 = 0;
  v6[8] = 1;
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_titleLabel];
  [v7 setText:0];
  [v0 setNeedsLayout];
  v8 = v0[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_shouldShowFullTitle];
  v0[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_shouldShowFullTitle] = 1;
  if ((v8 & 1) == 0)
  {
    [v0 setNeedsLayout];
  }

  v9 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_subtitleLabel];
  [v9 setText:0];
  if (sub_1005A9124())
  {
    [v0 setNeedsLayout];
  }

  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_detailLabel] setText:0];
  v10 = type metadata accessor for Accessory();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_accessory;
  swift_beginAccess();
  sub_10010AA88(v4, &v1[v11]);
  swift_endAccess();
  sub_1005AA4A8(0);
  v12 = &v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_accessoryMargin];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_accessoryAction];
  v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_accessoryAction];
  *v13 = 0;
  *(v13 + 1) = 0;
  sub_1000164A8(v14);
  sub_100016C60(0, &qword_100923500);
  v15 = sub_100753DD4();
  [v7 setTextColor:v15];

  v16 = sub_100753DF4();
  [v9 setTextColor:v16];

  v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_showTopSeparatorView] = 0;
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_topSeparatorView] setHidden:1];
  v17 = &v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_topSeparatorViewInsets];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v17[32] = 1;
  v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_showBottomSeparatorView] = 0;
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_bottomSeparatorView] setHidden:1];
  v18 = &v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_bottomSeparatorViewInsets];
  result = 0.0;
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[32] = 1;
  return result;
}

id sub_1005AA170()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountDetailCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AccountDetailCollectionViewCell()
{
  result = qword_10093FB78;
  if (!qword_10093FB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005AA338()
{
  sub_1002FDFDC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1005AA438(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10093FDB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1005AA4A8(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_accessoryView;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_accessoryView];
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
    [v1 addSubview:v6];
  }

  if (*&v1[v3])
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      [v7 addTarget:v1 action:"didTapWithAccessoryView:" forControlEvents:64];
    }
  }

  return [v1 setNeedsLayout];
}

void sub_1005AA58C()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_shouldShowFullTitle) = 1;
  v1 = v0 + OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_imageMarginRight;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_shouldResizeImage) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_accessoryView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_secondaryAccessoryView) = 0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_accessory;
  v3 = type metadata accessor for Accessory();
  v4 = *(*(v3 - 8) + 56);
  v4(v0 + v2, 1, 1, v3);
  v4(v0 + OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_secondaryAccessory, 1, 1, v3);
  v5 = v0 + OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_accessoryMargin;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_topSeparatorView;
  v7 = type metadata accessor for SeparatorView();
  *(v0 + v6) = [objc_allocWithZone(v7) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = v0 + OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_topSeparatorViewInsets;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_showTopSeparatorView) = 0;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_bottomSeparatorView;
  *(v0 + v9) = [objc_allocWithZone(v7) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = v0 + OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_bottomSeparatorViewInsets;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_showBottomSeparatorView) = 0;
  v11 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_accessoryAction);
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_backgroundSelectionView;
  *(v0 + v12) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_isSelectable) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_disabled) = 0;
  v13 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_selectionHandler);
  *v13 = 0;
  v13[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_tapGestureRecognizer) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_1005AA7E0(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = sub_10074F314();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074D354();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100741E94();
  if (result)
  {
    v26 = v5;
    v27 = result;
    if (sub_10074EF24())
    {
      v25[1] = a2;
      v13 = [v2 traitCollection];
      sub_10061CD24(v11);

      sub_10074D344();
      (*(v9 + 8))(v11, v8);
      sub_10074F324();
      sub_10074F2F4();
      (*(v26 + 8))(v7, v4);
      v14 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_iconView];
      [v14 contentMode];
      sub_10074F374();
      sub_10074F324();
      sub_100743364();
      [v14 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_10000D198();
        sub_100753E34();
      }

      sub_100743224();
      sub_1007442C4();
      sub_100752764();
      sub_100752D34();
      v29 = 0;
      memset(v28, 0, sizeof(v28));
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_1007441F4();

      sub_100416858(v28);
    }

    v15 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_titleLabel];
    sub_10074EF34();
    if (v16)
    {
      v17 = sub_100753064();
    }

    else
    {
      v17 = 0;
    }

    [v15 setText:v17];

    v18 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_subtitleLabel];
    sub_10074EE64();
    if (v19)
    {
      v20 = sub_100753064();
    }

    else
    {
      v20 = 0;
    }

    [v18 setText:v20];

    sub_10074EFC4();
    if (v21)
    {
      v22 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_ageRatingView];
      v23 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension18AgeRatingBadgeView_ageLabel];
      v24 = sub_100753064();
      [v23 setText:v24];

      [v22 setNeedsLayout];
      [v22 setNeedsDisplay];

      [v22 setHidden:0];
    }

    else
    {
      [*&v2[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_ageRatingView] setHidden:1];
    }

    [v2 setNeedsLayout];
  }

  return result;
}

void sub_1005AAC7C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_iconView);

    v5 = a1;
    sub_100743344();
  }
}

uint64_t sub_1005AAD04()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005AAD44()
{
  v0 = sub_100750304();
  v57 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100741E54();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v56 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v45 - v7;
  v9 = sub_10000C518(&qword_100928550);
  __chkstk_darwin(v9 - 8);
  v49 = v45 - v10;
  v11 = sub_100741FA4();
  sub_100039C50(v11, qword_100982728);
  v45[2] = sub_10000D0FC(v11, qword_100982728);
  if (qword_100921960 != -1)
  {
    swift_once();
  }

  v12 = sub_10000D0FC(v3, qword_100982740);
  v13 = *(v4 + 16);
  v13(v8, v12, v3);
  sub_100741E14();
  v15 = v14;
  v17 = v16;
  v18 = *(v4 + 8);
  v18(v8, v3);
  v75 = v15;
  v76 = v17;
  v19 = v56;
  v13(v56, v12, v3);
  sub_100741E14();
  v21 = v20;
  v23 = v22;
  v18(v19, v3);
  v74[0] = v21;
  v74[1] = v23;
  sub_10000C518(&unk_100923AE0);
  type metadata accessor for CGSize(0);
  sub_100743484();
  v77 = &type metadata for Double;
  v78 = &protocol witness table for Double;
  v75 = 0x402E000000000000;
  if (qword_100920EB8 != -1)
  {
    swift_once();
  }

  v24 = sub_100750534();
  v47 = sub_10000D0FC(v24, qword_100980978);
  v25 = *(v24 - 8);
  v54 = *(v25 + 16);
  v55 = v25 + 16;
  v54(v2, v47, v24);
  v48 = enum case for FontSource.useCase(_:);
  v26 = v57;
  v27 = v57 + 104;
  v53 = *(v57 + 104);
  v53(v2);
  v56 = sub_100750B04();
  v74[3] = v56;
  v74[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v74);
  v72 = v0;
  v73 = &protocol witness table for FontSource;
  v28 = sub_10000D134(v71);
  v29 = *(v26 + 16);
  v29(v28, v2, v0);
  v50 = v29;
  sub_100750B14();
  v52 = *(v26 + 8);
  v52(v2, v0);
  v54(v2, v47, v24);
  v30 = v48;
  (v53)(v2, v48, v0);
  v72 = v56;
  v73 = &protocol witness table for StaticDimension;
  sub_10000D134(v71);
  v69 = v0;
  v70 = &protocol witness table for FontSource;
  v31 = sub_10000D134(v68);
  v29(v31, v2, v0);
  v32 = v54;
  sub_100750B14();
  v52(v2, v0);
  v51 = v24;
  v32(v2, v47, v24);
  v45[1] = v27;
  (v53)(v2, v30, v0);
  v69 = v56;
  v70 = &protocol witness table for StaticDimension;
  sub_10000D134(v68);
  v66 = v0;
  v67 = &protocol witness table for FontSource;
  v33 = sub_10000D134(v65);
  v47 = v26 + 16;
  v50(v33, v2, v0);
  sub_100750B14();
  v57 = v26 + 8;
  v52(v2, v0);
  if (qword_100920EC0 != -1)
  {
    swift_once();
  }

  v34 = v51;
  v46 = sub_10000D0FC(v51, qword_100980990);
  v35 = v54;
  v54(v2, v46, v34);
  v36 = v48;
  v37 = v53;
  v53(v2);
  v66 = v56;
  v67 = &protocol witness table for StaticDimension;
  sub_10000D134(v65);
  v63 = v0;
  v64 = &protocol witness table for FontSource;
  v38 = sub_10000D134(v62);
  v50(v38, v2, v0);
  sub_100750B14();
  v52(v2, v0);
  v35(v2, v46, v51);
  v37(v2, v36, v0);
  v39 = v56;
  v63 = v56;
  v64 = &protocol witness table for StaticDimension;
  sub_10000D134(v62);
  v60 = v0;
  v61 = &protocol witness table for FontSource;
  v40 = sub_10000D134(v59);
  v41 = v50;
  v50(v40, v2, v0);
  sub_100750B14();
  v42 = v52;
  v52(v2, v0);
  v54(v2, v46, v51);
  (v53)(v2, v36, v0);
  v60 = v39;
  v61 = &protocol witness table for StaticDimension;
  sub_10000D134(v59);
  v58[3] = v0;
  v58[4] = &protocol witness table for FontSource;
  v43 = sub_10000D134(v58);
  v41(v43, v2, v0);
  sub_100750B14();
  v42(v2, v0);
  return sub_100741F84();
}

uint64_t sub_1005AB588()
{
  v0 = sub_100741E54();
  sub_100039C50(v0, qword_100982740);
  sub_10000D0FC(v0, qword_100982740);
  return sub_100741DD4();
}

uint64_t sub_1005AB5E8()
{
  v0 = sub_10000C518(&qword_10092AC90);
  sub_100039C50(v0, qword_10093FB90);
  sub_10000D0FC(v0, qword_10093FB90);
  sub_10000C518(&unk_100923AE0);
  type metadata accessor for NSTextAlignment(0);
  return sub_100743474();
}

id sub_1005AB684()
{
  v1 = v0;
  v2 = sub_100741C54();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v39 - v6;
  __chkstk_darwin(v7);
  v9 = &v39 - v8;
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_iconView];
  v14 = OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_theme;
  swift_beginAccess();
  v15 = *(v3 + 16);
  v15(v12, &v1[v14], v2);
  v16 = OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_theme;
  swift_beginAccess();
  (*(v3 + 24))(v13 + v16, v12, v2);
  swift_endAccess();
  v15(v9, (v13 + v16), v2);
  sub_100275D50(v9);
  v17 = *(v3 + 8);
  v17(v9, v2);
  v41 = v17;
  v17(v12, v2);
  v42 = v1;
  v18 = &v1[v14];
  v19 = v39;
  v20 = v40;
  v15(v39, v18, v2);
  (*(v3 + 104))(v20, enum case for InAppPurchaseTheme.spotlight(_:), v2);
  sub_1005AD424(&unk_10093FBF0, &type metadata accessor for InAppPurchaseTheme);
  sub_100753274();
  sub_100753274();
  if (v45 == v43 && v46 == v44)
  {
    v21 = v20;
    v22 = v41;
    v41(v21, v2);
    v22(v19, v2);

LABEL_5:
    v26 = v42;
    v27 = *&v42[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_titleLabel];
    v28 = [v42 tintColor];
    [v27 setTextColor:v28];

    v29 = *&v26[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_subtitleLabel];
    if (v29)
    {
      v30 = [v26 tintColor];
      [v29 setTextColor:v30];
    }

    v31 = *&v26[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_descriptionLabel];
    v32 = [v26 tintColor];
    [v31 setTextColor:v32];
    goto LABEL_11;
  }

  v23 = sub_100754754();
  v24 = v20;
  v25 = v41;
  v41(v24, v2);
  v25(v19, v2);

  if (v23)
  {
    goto LABEL_5;
  }

  v26 = v42;
  v33 = *&v42[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_titleLabel];
  sub_10000D198();
  v34 = sub_100753DD4();
  [v33 setTextColor:v34];

  v35 = *&v26[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_subtitleLabel];
  if (v35)
  {
    v36 = sub_100753DD4();
    [v35 setTextColor:v36];
  }

  v37 = *&v26[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_descriptionLabel];
  v32 = sub_100753DF4();
  [v37 setTextColor:v32];
LABEL_11:

  return [v26 setNeedsLayout];
}

char *sub_1005ABB2C(int a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_10074AB44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v8 - 8);
  v10 = &v51 - v9;
  v11 = sub_100741E54();
  __chkstk_darwin(v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_theme;
  v15 = enum case for InAppPurchaseTheme.infer(_:);
  v16 = sub_100741C54();
  (*(*(v16 - 8) + 104))(&v2[v14], v15, v16);
  v2[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_isHeightConstrained] = 0;
  if (qword_100921960 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v11, qword_100982740);
  sub_100741DC4();
  sub_100741DD4();
  v17 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  v53 = a1;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_iconView] = sub_10027562C(v13, a1 & 1);
  if (qword_100920EB8 != -1)
  {
    swift_once();
  }

  v18 = sub_100750534();
  v19 = sub_10000D0FC(v18, qword_100980978);
  v20 = *(v18 - 8);
  v21 = *(v20 + 16);
  v52 = v19;
  v58 = v21;
  (v21)(v10);
  v57 = *(v20 + 56);
  v57(v10, 0, 1, v18);
  v22 = *(v5 + 104);
  v56 = enum case for DirectionalTextAlignment.none(_:);
  v55 = v22;
  v22(v7);
  v23 = sub_100745C84();
  v24 = objc_allocWithZone(v23);
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_titleLabel] = sub_100745C74();
  if (qword_100920EC0 != -1)
  {
    swift_once();
  }

  v25 = sub_10000D0FC(v18, qword_100980990);
  v58(v10, v25, v18);
  v57(v10, 0, 1, v18);
  v55(v7, v56, v4);
  v26 = objc_allocWithZone(v23);
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_descriptionLabel] = sub_100745C74();
  v27 = objc_allocWithZone(type metadata accessor for OfferButton());
  v28 = sub_100154454(0);
  v29 = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_offerButton] = v28;
  if (v53)
  {
    v58(v10, v52, v18);
    v57(v10, 0, 1, v18);
    v55(v7, v56, v4);
    v30 = objc_allocWithZone(v23);
    v29 = sub_100745C74();
  }

  *&v2[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_subtitleLabel] = v29;
  v31 = type metadata accessor for InAppPurchaseLockupView();
  v60.receiver = v2;
  v60.super_class = v31;
  v32 = objc_msgSendSuper2(&v60, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v36 = v32;
  [v36 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  if (qword_100921968 != -1)
  {
    swift_once();
  }

  v37 = sub_10000C518(&qword_10092AC90);
  sub_10000D0FC(v37, qword_10093FB90);
  v59 = v36;
  v38 = v36;
  sub_100743464();

  v39 = OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_titleLabel;
  sub_100753F54();
  v40 = OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_subtitleLabel;
  if (*&v38[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_subtitleLabel])
  {
    sub_100753F54();
  }

  v41 = OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_descriptionLabel;
  sub_100753F54();
  v42 = *&v38[v41];
  sub_10000D198();
  v43 = v42;
  v44 = sub_100753DF4();
  [v43 setTextColor:v44];

  v45 = *&v38[v39];
  sub_100745C34();

  [v38 addSubview:*&v38[v39]];
  v46 = *&v38[v41];
  sub_100745C34();

  [v38 addSubview:*&v38[v41]];
  [v38 addSubview:*&v38[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_offerButton]];
  [v38 addSubview:*&v38[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_iconView]];
  v47 = *&v38[v40];
  if (v47)
  {
    v48 = v47;
    sub_100745C34();
    [v38 addSubview:v48];
  }

  sub_10000C518(&unk_1009249D0);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1007A5A00;
  *(v49 + 32) = sub_100751544();
  *(v49 + 40) = &protocol witness table for UITraitLayoutDirection;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v38;
}

void sub_1005AC3A4()
{
  v1 = v0;
  v2 = sub_100741C54();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v20 - v7;
  v9 = type metadata accessor for InAppPurchaseLockupView();
  v21.receiver = v0;
  v21.super_class = v9;
  objc_msgSendSuper2(&v21, "tintColorDidChange");
  v10 = OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_theme;
  swift_beginAccess();
  (*(v3 + 16))(v8, &v1[v10], v2);
  (*(v3 + 104))(v5, enum case for InAppPurchaseTheme.spotlight(_:), v2);
  sub_1005AD424(&unk_10093FBF0, &type metadata accessor for InAppPurchaseTheme);
  sub_100753274();
  sub_100753274();
  if (v20[3] == v20[1] && v20[4] == v20[2])
  {
    v11 = *(v3 + 8);
    v11(v5, v2);
    v11(v8, v2);
  }

  else
  {
    v12 = sub_100754754();
    v13 = *(v3 + 8);
    v13(v5, v2);
    v13(v8, v2);

    if ((v12 & 1) == 0)
    {
      return;
    }
  }

  v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_titleLabel];
  v15 = [v1 tintColor];
  [v14 setTextColor:v15];

  v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_subtitleLabel];
  if (v16)
  {
    v17 = [v1 tintColor];
    [v16 setTextColor:v17];
  }

  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_descriptionLabel];
  v19 = [v1 tintColor];
  [v18 setTextColor:v19];
}

uint64_t sub_1005AC70C()
{
  v1 = v0;
  v44 = sub_100750354();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100741FC4();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100741FA4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = type metadata accessor for InAppPurchaseLockupView();
  v62.receiver = v1;
  v62.super_class = v10;
  objc_msgSendSuper2(&v62, "layoutSubviews");
  if (qword_100921958 != -1)
  {
    swift_once();
  }

  v11 = sub_10000D0FC(v4, qword_100982728);
  v38 = v5;
  v12 = *(v5 + 16);
  v12(v9, v11, v4);
  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_offerButton];
  v36 = v10;
  sub_1007477B4();
  v14 = &v13[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize];
  if (v13[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v15 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000C824(&v13[v15], &v59);
    sub_10000C888(&v59, v60);
    sub_10074AE54();
    v17 = v16;
    v19 = v18;
    sub_10000C620(&v59);
    *v14 = v17;
    *(v14 + 1) = v19;
    v14[16] = 0;
  }

  sub_100741F64();
  sub_100741F74();
  v12(v37, v9, v4);
  v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_iconView];
  v60 = type metadata accessor for InAppPurchaseView();
  v61 = &protocol witness table for UIView;
  v59 = v20;
  v21 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_titleLabel];
  v22 = sub_100745C84();
  v57 = v22;
  v58 = &protocol witness table for UILabel;
  v56 = v21;
  v23 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_subtitleLabel];
  if (v23)
  {
    v24 = &protocol witness table for UILabel;
    v25 = v22;
  }

  else
  {
    v25 = 0;
    v24 = 0;
    v52 = 0;
    v53 = 0;
  }

  v51 = v23;
  v54 = v25;
  v55 = v24;
  v26 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_descriptionLabel];
  v50 = &protocol witness table for UILabel;
  v49 = v22;
  v48 = v26;
  v27 = type metadata accessor for OfferButton();
  v47 = &protocol witness table for UIView;
  v46 = v27;
  v45 = v13;
  v28 = v20;
  v29 = v21;
  v30 = v23;
  v31 = v26;
  v32 = v13;
  v33 = v39;
  sub_100741FB4();
  sub_1007477B4();
  v34 = v41;
  sub_100741F44();
  (*(v43 + 8))(v34, v44);
  (*(v40 + 8))(v33, v42);
  return (*(v38 + 8))(v9, v4);
}

id sub_1005ACDB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseLockupView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseLockupView()
{
  result = qword_10093FBD8;
  if (!qword_10093FBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005ACEF8()
{
  result = sub_100741C54();
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

double sub_1005ACFB4(void *a1)
{
  v2 = sub_1007479B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = sub_100741FA4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921958 != -1)
  {
    swift_once();
  }

  v13 = sub_10000D0FC(v9, qword_100982728);
  (*(v10 + 16))(v12, v13, v9);
  v14 = [a1 traitCollection];
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v15 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v15 = qword_10093FF58;
  }

  v16 = sub_10000D0FC(v2, v15);
  (*(v3 + 16))(v5, v16, v2);

  (*(v3 + 32))(v8, v5, v2);
  sub_100747964();
  sub_100747994();
  sub_100741F64();
  sub_100741FC4();
  sub_1005AD424(&qword_1009336D0, &type metadata accessor for InAppPurchaseLockupViewLayout);
  sub_100750D34();
  v18 = v17;
  (*(v3 + 8))(v8, v2);
  (*(v10 + 8))(v12, v9);
  return v18;
}

uint64_t sub_1005AD334(void *a1)
{
  if (qword_100921968 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C518(&qword_10092AC90);
  sub_10000D0FC(v2, qword_10093FB90);
  v3 = a1;
  sub_100743464();

  sub_100753F54();
  if (*&v3[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_subtitleLabel])
  {
    sub_100753F54();
  }

  return sub_100753F54();
}

uint64_t sub_1005AD424(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1005AD46C(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_1005B7C5C, v8);
}

uint64_t sub_1005AD540()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_10093FC00);
  sub_10000D0FC(v4, qword_10093FC00);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_10000D134(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleBody;
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1005AD6AC()
{
  v0 = sub_100752E24();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100752E44();
  sub_100039C50(v4, qword_10093FC18);
  sub_10000D0FC(v4, qword_10093FC18);
  if (qword_100921EC8 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_1009832D0);
  (*(v1 + 16))(v3, v5, v0);
  return sub_100752E34();
}

char *sub_1005AD800(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_diffableDataSource) = 0;
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_allowBatchUpdates) = 0;
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_flowPreviewing) = 0;
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_isPresentingForgotSignInDetails) = 0;
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_pendingRefresh) = 0;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_compoundScrollObserver;
  v6 = objc_allocWithZone(sub_100749AF4());
  *(v2 + v5) = sub_100749AE4();
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_authenticating) = 0;
  v7 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_activityIndicator) = v7;
  v8 = [objc_allocWithZone(UIRefreshControl) init];
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_refreshControl) = v8;
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_presenter) = a1;
  sub_1007495B4();

  sub_100752754();
  sub_10074B544();
  swift_allocObject();
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_impressionsCoordinator) = sub_10074B554();
  v9 = [objc_allocWithZone(UICollectionViewLayout) init];

  v10 = sub_10062DFAC(v9, a2);

  v34[3] = sub_100745AF4();
  v34[4] = &protocol witness table for BasePresenter;
  v34[0] = a1;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  v12 = v10;
  sub_1004778CC(v34, v10 + v11);
  swift_endAccess();
  v12[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_prefersLargeTitle] = 0;
  v13 = &selRef_initWithTitle_style_target_action_;
  v14 = [v12 navigationItem];
  [v14 setLargeTitleDisplayMode:2];

  sub_1005B7A8C(&qword_10093FD28, v15, type metadata accessor for AccountViewController);
  v16 = v12;
  sub_100745A74();
  v17 = [v16 navigationItem];
  sub_100745A84();
  if (v18)
  {
    v19 = sub_100753064();
    v13 = &selRef_initWithTitle_style_target_action_;
  }

  else
  {
    v19 = 0;
  }

  [v17 setTitle:v19];

  v20 = [v16 v13[14]];
  v21 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:*&v16[OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_activityIndicator]];
  [v20 setLeftBarButtonItem:v21];

  v22 = [v16 v13[14]];
  v23 = [v22 leftBarButtonItem];

  if (v23)
  {
    v24 = OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_authenticating;
    swift_beginAccess();
    [v23 setHidden:(v16[v24] & 1) == 0];
  }

  v25 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_refreshControl];
  v26 = v16;
  [v25 addTarget:v26 action:"refreshControlValueChanged" forControlEvents:4096];
  v27 = sub_1005B7A8C(&qword_10093FD30, 255, &type metadata accessor for AccountPresenter);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = a1;
  v29[4] = v27;

  v30 = sub_1005B66C8(a1, v26, sub_1002BCB78, v29, a2);

  v31 = *&v26[OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_flowPreviewing];
  *&v26[OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_flowPreviewing] = v30;

  v32 = *&v26[OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_compoundScrollObserver];

  sub_100749AD4();

  return v26;
}

void sub_1005ADD58()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v38 = sub_10000C518(&qword_10093FDE8);
  v2 = *(v38 - 8);
  __chkstk_darwin(v38);
  v4 = &ObjectType - v3;
  v5 = type metadata accessor for AccountViewController();
  v43.receiver = v0;
  v43.super_class = v5;
  objc_msgSendSuper2(&v43, "viewDidLoad");
  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = v6;
  v8 = objc_opt_self();
  v9 = [v8 systemBackgroundColor];
  [v7 setBackgroundColor:v9];

  v10 = [v1 collectionView];
  if (!v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  v12 = [v8 systemBackgroundColor];
  [v11 setBackgroundColor:v12];

  v13 = [v1 collectionView];
  if (!v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v13;
  [v13 setAlwaysBounceVertical:1];

  v15 = [v1 collectionView];
  if (!v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = v15;
  [v15 setRefreshControl:*&v1[OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_refreshControl]];

  v17 = [v1 collectionView];
  if (!v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = v17;
  [v17 setDelegate:v1];

  v19 = sub_1005AF034();
  v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_diffableDataSource];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_diffableDataSource] = v19;

  v21 = [v1 collectionView];
  if (!v21)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v22 = v21;
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v25 = ObjectType;
  *(v24 + 16) = v23;
  *(v24 + 24) = v25;
  v26 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v41 = sub_1005B7B0C;
  v42 = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002B6430;
  v40 = &unk_10087C6B0;
  v27 = _Block_copy(aBlock);

  v28 = [v26 initWithSectionProvider:v27];
  _Block_release(v27);

  [v22 setCollectionViewLayout:v28];

  sub_1007459F4();
  v29 = sub_100016C60(0, &qword_100926D00);
  v30 = sub_100753774();
  v40 = v29;
  v41 = &protocol witness table for OS_dispatch_queue;
  aBlock[0] = v30;
  sub_10000C518(&qword_10093FDF0);
  sub_1005B7B14();
  sub_100752584();

  (*(v2 + 8))(v4, v38);
  sub_10000C620(aBlock);
  sub_100744314();
  v31 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_flowPreviewing];
  if (!v31)
  {
    return;
  }

  v32 = objc_allocWithZone(UIContextMenuInteraction);
  v33 = v31;
  v34 = [v32 initWithDelegate:v33];
  v35 = [v1 collectionView];
  if (!v35)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v36 = v35;
  [v35 addInteraction:v34];
}

void *sub_1005AE4D8(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v46 = a1;
  v2 = sub_100751984();
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin(v2);
  v43 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100751994();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&qword_10093FD98);
  __chkstk_darwin(v6 - 8);
  v8 = &v39 - v7;
  v9 = sub_10000C518(&qword_10093FDA0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v39 - v11;
  v13 = sub_100751974();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1007519D4();
  v17 = *(v47 - 8);
  v18 = __chkstk_darwin(v47);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v16, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v13, v18);
  sub_1007519A4();
  v21 = sub_100751964();
  sub_100751794();
  v21(v51, 0);
  v22 = sub_100751964();
  sub_1007517A4();
  v22(v51, 0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v24 = Strong, v25 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_diffableDataSource), v26 = v25, v24, !v25))
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    goto LABEL_10;
  }

  sub_10074CD54();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
LABEL_10:
    sub_10000C8CC(v8, &qword_10093FD98);
    goto LABEL_11;
  }

  (*(v10 + 32))(v12, v8, v9);
  swift_getKeyPath();
  sub_1007525B4();

  v27 = v50;
  if (!v50)
  {
    goto LABEL_12;
  }

  v28 = v49;

  v29 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v29 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    v30 = &enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:);
  }

  else
  {
LABEL_12:
    v30 = &enum case for UICollectionLayoutListConfiguration.HeaderMode.none(_:);
  }

  (*(v41 + 104))(v40, *v30, v42);
  sub_1007519C4();
  swift_getKeyPath();
  sub_1007525B4();

  v35 = v50;
  if (!v50)
  {
    goto LABEL_18;
  }

  v36 = v49;

  v37 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v37 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (v37)
  {
    v38 = &enum case for UICollectionLayoutListConfiguration.FooterMode.supplementary(_:);
  }

  else
  {
LABEL_18:
    v38 = &enum case for UICollectionLayoutListConfiguration.FooterMode.none(_:);
  }

  (*(v44 + 104))(v43, *v38, v45);
  sub_1007519B4();

  sub_100751954();
  (*(v10 + 8))(v12, v9);
LABEL_11:
  sub_100016C60(0, &unk_10093FE00);
  v31 = sub_100753A54();
  [v31 contentInsets];
  v33 = v32;
  [v31 contentInsets];
  [v31 setContentInsets:{v33, 16.0}];
  (*(v17 + 8))(v20, v47);
  return v31;
}

id sub_1005AEB38()
{
  v0 = sub_10000C518(&qword_100927510);
  __chkstk_darwin(v0 - 8);
  v2 = &aBlock[-1] - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_diffableDataSource);
    v5 = Strong;
    v6 = v4;

    if (v4)
    {
      sub_10074CD34();

      v7 = sub_10000C518(&unk_100930810);
      v8 = *(v7 - 8);
      if ((*(v8 + 48))(v2, 1, v7) == 1)
      {
        sub_10000C8CC(v2, &qword_100927510);
      }

      else
      {
        sub_1007525C4();
        (*(v8 + 8))(v2, v7);
        sub_10000C518(&qword_1009242A0);
        sub_100745A44();
        if (swift_dynamicCast())
        {
          v9 = aBlock[9];
          swift_beginAccess();
          v10 = swift_unknownObjectWeakLoadStrong();
          if (v10)
          {
            v11 = v10;

            LOBYTE(v11) = sub_1007459B4();

            if (v11)
            {
              v25._object = 0x80000001007860C0;
              v25._countAndFlagsBits = 0xD000000000000015;
              v26._countAndFlagsBits = 0;
              v26._object = 0xE000000000000000;
              sub_1007458B4(v25, v26);
              v12 = swift_allocObject();
              swift_beginAccess();
              v13 = swift_unknownObjectWeakLoadStrong();
              swift_unknownObjectWeakInit();

              v14 = swift_allocObject();
              *(v14 + 16) = v12;
              *(v14 + 24) = v9;

              v15 = sub_100753064();

              aBlock[4] = sub_1005B7C1C;
              aBlock[5] = v14;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_1005AD46C;
              aBlock[3] = &unk_10087C728;
              v16 = _Block_copy(aBlock);
              v17 = [objc_opt_self() contextualActionWithStyle:1 title:v15 handler:v16];

              _Block_release(v16);

              sub_10000C518(&unk_1009231A0);
              v18 = swift_allocObject();
              *(v18 + 16) = xmmword_1007A5CF0;
              *(v18 + 32) = v17;
              sub_100016C60(0, &unk_10093FE10);
              v19 = v17;
              isa = sub_100753294().super.isa;

              v21 = [objc_opt_self() configurationWithActions:isa];

              [v21 setPerformsFirstActionWithFullSwipe:0];

              return v21;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1005AEF90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    sub_100745AE4();
  }

  return a3(0);
}

id sub_1005AF034()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_10000C518(&qword_10093FD70);
  v84 = *(v2 - 8);
  v85 = v2;
  __chkstk_darwin(v2);
  v69 = v3;
  v70 = v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v87 = v64 - v5;
  v6 = sub_10000C518(&qword_10093FD78);
  v82 = *(v6 - 8);
  v83 = v6;
  __chkstk_darwin(v6);
  v67 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v7;
  __chkstk_darwin(v8);
  v86 = v64 - v9;
  v81 = sub_10000C518(&unk_10093FD80);
  v73 = *(v81 - 8);
  __chkstk_darwin(v81);
  v76 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v10;
  __chkstk_darwin(v11);
  v13 = v64 - v12;
  v80 = sub_10000C518(&qword_100936328);
  v72 = *(v80 - 8);
  __chkstk_darwin(v80);
  v75 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v68 = v64 - v16;
  __chkstk_darwin(v17);
  v19 = v64 - v18;
  v65 = v20;
  __chkstk_darwin(v21);
  v23 = v64 - v22;
  sub_100753094();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100016C60(0, &qword_100925390);
  v77 = v23;
  sub_100753684();
  sub_100753094();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v78 = v19;
  sub_100753684();
  sub_100753094();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for AccountActionSectionFooterView();
  v79 = v13;
  sub_100753684();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v26 = ObjectType;
  *(v25 + 16) = v24;
  *(v25 + 24) = v26;
  type metadata accessor for AccountDetailCollectionViewCell();
  sub_10000C518(&qword_1009242A0);
  v27 = v86;
  sub_100753674();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = v26;
  type metadata accessor for UpdatesLockupCollectionViewCell();
  v30 = v87;
  sub_100753674();
  result = [v1 collectionView];
  ObjectType = result;
  if (result)
  {
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = v82;
    v34 = *(v82 + 16);
    v35 = v67;
    v64[1] = v1;
    v36 = v83;
    v34(v67, v27);
    v37 = v84;
    v38 = v85;
    v39 = v70;
    (*(v84 + 16))(v70, v30, v85);
    v40 = v33;
    v41 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v42 = (v66 + *(v37 + 80) + v41) & ~*(v37 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = v32;
    (*(v40 + 32))(v43 + v41, v35, v36);
    (*(v37 + 32))(v43 + v42, v39, v38);
    v44 = objc_allocWithZone(sub_10000C518(&qword_10093FD90));
    ObjectType = sub_10074CD84();
    v70 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = v72;
    v46 = *(v72 + 16);
    v47 = v68;
    v48 = v80;
    v46(v68, v77, v80);
    v49 = v73;
    (*(v73 + 16))(v76, v79, v81);
    v46(v75, v78, v48);
    v50 = *(v45 + 80);
    v51 = (v50 + 16) & ~v50;
    v52 = (v65 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = (*(v49 + 80) + v52 + 8) & ~*(v49 + 80);
    v54 = (v71 + v50 + v53) & ~v50;
    v55 = swift_allocObject();
    v56 = *(v45 + 32);
    v57 = v47;
    v58 = v80;
    v56(v55 + v51, v57, v80);
    *(v55 + v52) = v70;
    v59 = v55 + v53;
    v60 = v81;
    (*(v49 + 32))(v59, v76, v81);
    v61 = v58;
    v56(v55 + v54, v75, v58);
    v62 = ObjectType;

    sub_100751894();

    (*(v84 + 8))(v87, v85);
    (*(v82 + 8))(v86, v83);
    (*(v49 + 8))(v79, v60);
    v63 = *(v45 + 8);
    v63(v78, v61);
    v63(v77, v61);

    return v62;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005AF95C(void *a1)
{
  v2 = sub_10000C518(&qword_10093FD98);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = sub_1007516E4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    sub_100751644();
    v14 = *&v13[OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_diffableDataSource];
    v22 = a1;
    if (v14)
    {
      v15 = v14;
      sub_100741784();
      sub_10074CD54();
    }

    else
    {
      v16 = sub_10000C518(&qword_10093FDA0);
      (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    }

    sub_100016B4C(v7, v4, &qword_10093FD98);
    v17 = sub_10000C518(&qword_10093FDA0);
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v4, 1, v17) == 1)
    {
      sub_10000C8CC(v4, &qword_10093FD98);
    }

    else
    {
      swift_getKeyPath();
      sub_1007525B4();

      (*(v18 + 8))(v4, v17);
    }

    sub_1007516C4();
    v23[3] = v8;
    v23[4] = &protocol witness table for UIListContentConfiguration;
    v19 = sub_10000D134(v23);
    (*(v9 + 16))(v19, v11, v8);
    v20 = v22;
    sub_1007538E4();
    [v13 pageMarginInsets];
    [v20 setLayoutMargins:?];

    sub_10000C8CC(v7, &qword_10093FD98);
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_1005AFCCC(void *a1)
{
  v2 = sub_100751664();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin(v2);
  v40 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_10093FDC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v39 - v8;
  v10 = sub_10000C518(&qword_10093FD98);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  __chkstk_darwin(v16);
  v18 = &v39 - v17;
  v19 = sub_1007516E4();
  v46 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    v44 = v19;
    sub_100751634();
    v24 = *&v23[OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_diffableDataSource];
    v45 = a1;
    v43 = v23;
    if (v24)
    {
      v25 = v24;
      sub_100741784();
      sub_10074CD54();
    }

    else
    {
      v26 = sub_10000C518(&qword_10093FDA0);
      (*(*(v26 - 8) + 56))(v18, 1, 1, v26);
    }

    sub_100016B4C(v18, v15, &qword_10093FD98);
    v27 = sub_10000C518(&qword_10093FDA0);
    v28 = *(v27 - 8);
    v29 = *(v28 + 48);
    if (v29(v15, 1, v27) == 1)
    {
      sub_10000C8CC(v15, &qword_10093FD98);
      v30 = sub_100745A94();
      (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
      sub_10000C8CC(v9, &unk_10093FDC0);
    }

    else
    {
      v39 = v29;
      sub_1007525C4();
      (*(v28 + 8))(v15, v27);
      sub_100745AC4();

      v31 = sub_100745A94();
      v32 = *(v31 - 8);
      (*(v32 + 56))(v9, 0, 1, v31);
      sub_1005B6E70(v9, v6);
      if ((*(v32 + 88))(v6, v31) == enum case for AccountPresenter.Section.Identifier.userInfo(_:))
      {
        (*(v41 + 104))(v40, enum case for UIListContentConfiguration.TextProperties.TextAlignment.center(_:), v42);
        v33 = sub_100751694();
        sub_100751684();
        v33(v47, 0);
      }

      else
      {
        (*(v32 + 8))(v6, v31);
      }

      v29 = v39;
    }

    sub_100016B4C(v18, v12, &qword_10093FD98);
    if (v29(v12, 1, v27) == 1)
    {
      sub_10000C8CC(v12, &qword_10093FD98);
    }

    else
    {
      swift_getKeyPath();
      sub_1007525B4();

      (*(v28 + 8))(v12, v27);
    }

    v34 = v45;
    sub_1007516C4();
    v35 = v44;
    v47[3] = v44;
    v47[4] = &protocol witness table for UIListContentConfiguration;
    v36 = sub_10000D134(v47);
    v37 = v46;
    (*(v46 + 16))(v36, v21, v35);
    sub_1007538E4();
    v38 = v43;
    [v43 pageMarginInsets];
    [v34 setLayoutMargins:?];

    sub_10000C8CC(v18, &qword_10093FD98);
    return (*(v37 + 8))(v21, v35);
  }

  return result;
}

uint64_t sub_1005B0360(char *a1)
{
  v2 = sub_10000C518(&qword_10093FD98);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = *(result + OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_diffableDataSource);
    if (v13)
    {
      v14 = v13;
      sub_100741784();
      sub_10074CD54();
    }

    else
    {
      v15 = sub_10000C518(&qword_10093FDA0);
      (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    }

    sub_100016B4C(v10, v7, &qword_10093FD98);
    v16 = sub_10000C518(&qword_10093FDA0);
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    if (v18(v7, 1, v16) == 1)
    {
      sub_10000C8CC(v7, &qword_10093FD98);
      v19 = 0uLL;
    }

    else
    {
      swift_getKeyPath();
      v27 = v4;
      sub_1007525B4();
      v4 = v27;

      v26 = v28;
      (*(v17 + 8))(v7, v16);
      v19 = v26;
    }

    *&a1[OBJC_IVAR____TtC22SubscribePageExtension30AccountActionSectionFooterView_text] = v19;

    sub_1000CE3B4();
    sub_100016B4C(v10, v4, &qword_10093FD98);
    if (v18(v4, 1, v16) == 1)
    {
      sub_10000C8CC(v4, &qword_10093FD98);
      v20 = 0;
      v21 = 0;
    }

    else
    {
      swift_getKeyPath();
      sub_1007525B4();

      v22 = v28;
      if (v28)
      {
        v23 = *(&v28 + 1);
        v21 = swift_allocObject();
        *(v21 + 16) = v22;
        *(v21 + 24) = v23;
        v20 = sub_100066280;
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      (*(v17 + 8))(v4, v16);
    }

    v24 = &a1[OBJC_IVAR____TtC22SubscribePageExtension30AccountActionSectionFooterView_buttonAction];
    v25 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension30AccountActionSectionFooterView_buttonAction];
    *v24 = v20;
    v24[1] = v21;
    sub_1000164A8(v25);
    [v12 pageMarginInsets];
    [a1 setLayoutMargins:?];
    a1[OBJC_IVAR____TtC22SubscribePageExtension30AccountActionSectionFooterView_isCentered] = 1;
    sub_1000CE3B4();

    return sub_10000C8CC(v10, &qword_10093FD98);
  }

  return result;
}

uint64_t sub_1005B077C@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_100745AD4();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_10011C13C;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1005B07EC()
{
  v0 = sub_10000C518(&qword_100927510);
  __chkstk_darwin(v0 - 8);
  v2 = v13 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v4 = Strong;
  v5 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_diffableDataSource);
  v6 = v5;

  if (!v5)
  {
    goto LABEL_10;
  }

  sub_10074CD44();

  v7 = sub_10000C518(&unk_100930810);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    sub_10000C8CC(v2, &qword_100927510);
    goto LABEL_10;
  }

  sub_1007525C4();
  (*(v8 + 8))(v2, v7);
  sub_100012160(v15, v16);
  sub_10000C824(v16, v15);
  sub_10000C518(&qword_1009242A0);
  sub_100745994();
  if (!swift_dynamicCast())
  {
    sub_100745A44();
    if (swift_dynamicCast())
    {

      sub_10000C824(v16, v14);
      type metadata accessor for UpdatesLockupCollectionViewCell();
      v10 = sub_100753694();
      sub_10000C8CC(v14, &unk_1009297F0);
      goto LABEL_8;
    }

    while (1)
    {
LABEL_10:
      sub_100754644();
      __break(1u);
    }
  }

  sub_10000C824(v16, v14);
  type metadata accessor for AccountDetailCollectionViewCell();
  v9 = sub_100753694();
  sub_10000C8CC(v14, &unk_1009297F0);
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  v10 = v9;
  sub_100754534(19);

  v13[1] = 0xD000000000000011;
  v13[2] = 0x8000000100786010;
  sub_10000C888(v16, v16[3]);
  sub_100752694();
  v17._countAndFlagsBits = sub_1007544A4();
  sub_1007531B4(v17);

  sub_100016994(v14);
  v11 = sub_100753064();

  [v10 setAccessibilityIdentifier:v11];

LABEL_8:
  sub_10000C620(v15);
  sub_10000C620(v16);
  return v10;
}

uint64_t sub_1005B0BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30[2] = a7;
  v32 = a1;
  v11 = sub_10000C518(&qword_10093FD98);
  __chkstk_darwin(v11 - 8);
  v13 = v30 - v12;
  v14 = sub_10000C518(&qword_10093FDA0);
  v31 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v30 - v15;
  if (sub_100753094() == a2 && v17 == a3)
  {

    goto LABEL_13;
  }

  v30[1] = a8;
  v19 = sub_100754754();

  if (v19)
  {
LABEL_13:
    sub_100016C60(0, &qword_100925390);
    return sub_1007536A4();
  }

  if (sub_100753094() == a2 && v20 == a3)
  {
  }

  else
  {
    v22 = sub_100754754();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v25 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_diffableDataSource), v26 = Strong, v27 = v25, v26, !v25))
  {
    (*(v31 + 56))(v13, 1, 1, v14);
    goto LABEL_21;
  }

  sub_100741784();
  sub_10074CD54();

  v28 = v31;
  if ((*(v31 + 48))(v13, 1, v14) == 1)
  {
LABEL_21:
    sub_10000C8CC(v13, &qword_10093FD98);
    goto LABEL_13;
  }

  (*(v28 + 32))(v16, v13, v14);
  swift_getKeyPath();
  sub_1007525B4();

  if (!v33)
  {
    (*(v28 + 8))(v16, v14);
    goto LABEL_13;
  }

  sub_1000164A8(v33);
  type metadata accessor for AccountActionSectionFooterView();
  v29 = sub_1007536A4();
  (*(v28 + 8))(v16, v14);
  return v29;
}

uint64_t sub_1005B0F8C(char *a1, uint64_t a2, uint64_t a3)
{
  v174 = sub_100745974();
  v171 = *(v174 - 8);
  __chkstk_darwin(v174);
  v155 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v154 = &v147 - v7;
  v8 = sub_10000C518(&qword_10093FDA8);
  __chkstk_darwin(v8 - 8);
  v10 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v162 = &v147 - v12;
  __chkstk_darwin(v13);
  v165 = &v147 - v14;
  __chkstk_darwin(v15);
  v161 = &v147 - v16;
  __chkstk_darwin(v17);
  v170 = &v147 - v18;
  __chkstk_darwin(v19);
  v164 = &v147 - v20;
  v21 = sub_10000C518(&qword_10093FDB0);
  __chkstk_darwin(v21 - 8);
  v173 = (&v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v25 = (&v147 - v24);
  __chkstk_darwin(v26);
  v172 = (&v147 - v27);
  __chkstk_darwin(v28);
  v169 = &v147 - v29;
  v30 = sub_1007458C4();
  v167 = *(v30 - 8);
  v168 = v30;
  __chkstk_darwin(v30);
  v166 = &v147 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_100743B04();
  v153 = *(v156 - 8);
  __chkstk_darwin(v156);
  v152 = &v147 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_10074F314();
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v158 = &v147 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10000C518(&qword_10093FDB8);
  __chkstk_darwin(v34 - 8);
  v36 = &v147 - v35;
  v37 = sub_1007458F4();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v147 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v163 = &v147 - v42;
  sub_10000C824(a3, v177);
  sub_10000C518(&qword_1009242A0);
  sub_100745994();
  result = swift_dynamicCast();
  if (result)
  {
    v151 = v25;
    v44 = v176;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
    }

    v150 = v37;
    v157 = Strong;
    [Strong pageMarginInsets];
    [a1 setLayoutMargins:?];
    v46 = sub_1007458E4();
    v47 = &a1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_accessoryMargin];
    *v47 = v46;
    v47[8] = v48 & 1;
    v49 = sub_100745954();
    v50 = a1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_disabled];
    a1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_disabled] = v49 & 1;
    v148 = v10;
    v175 = v44;
    if ((v49 & 1) != v50)
    {
      v51 = v49;
      [*&a1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_titleLabel] setEnabled:(v49 & 1) == 0];
      [*&a1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_subtitleLabel] setEnabled:(v51 & 1) == 0];
      [a1 setUserInteractionEnabled:(v51 & 1) == 0];
      [a1 setNeedsDisplay];
    }

    sub_100745934();
    v52 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_titleLabel];
    if (v53)
    {
      v54 = sub_100753064();
    }

    else
    {
      v54 = 0;
    }

    v149 = v52;
    [v52 setText:v54];

    [a1 setNeedsLayout];
    sub_100745964();
    v55 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_subtitleLabel];
    if (v56)
    {
      v57 = sub_100753064();
    }

    else
    {
      v57 = 0;
    }

    v58 = v38;
    v59 = v150;
    [v55 setText:v57];

    if (sub_1005A9124())
    {
      [a1 setNeedsLayout];
    }

    sub_100745944();
    v60 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_detailLabel];
    if (v61)
    {
      v62 = sub_100753064();
    }

    else
    {
      v62 = 0;
    }

    [v60 setText:v62];

    v63 = sub_100745914();
    v64 = a1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_shouldShowFullTitle];
    a1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_shouldShowFullTitle] = v63 & 1;
    if ((v63 & 1) != v64)
    {
      [a1 setNeedsLayout];
    }

    sub_100745924();
    v65 = (*(v38 + 48))(v36, 1, v59);
    v66 = v171;
    v67 = v169;
    if (v65 == 1)
    {
      sub_10000C8CC(v36, &qword_10093FDB8);
    }

    else
    {
      v68 = v163;
      (*(v38 + 32))();
      (*(v38 + 16))(v40, v68, v59);
      v69 = (*(v38 + 88))(v40, v59);
      if (v69 == enum case for AccountPresenter.AccountDetailItem.ImageConfiguration.image(_:))
      {
        (*(v38 + 96))(v40, v59);
        v70 = *v40;
        v71 = *(v40 + 3);
        v72 = v70;
        sub_100743344();
        [a1 setNeedsLayout];
        sub_1007433A4();
        sub_100743284();
        a1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_shouldResizeImage] = 1;
        v73 = &a1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_imageMarginRight];
        *v73 = v71;
        v73[8] = 0;
        (*(v159 + 104))(v158, enum case for Artwork.Style.unadorned(_:), v160);
        sub_100743364();
        sub_100746E74();
        v74 = [objc_opt_self() clearColor];
        sub_100746E64();

        (*(v38 + 8))(v68, v59);
      }

      else if (v69 == enum case for AccountPresenter.AccountDetailItem.ImageConfiguration.profileImage(_:))
      {
        (*(v38 + 96))(v40, v59);
        v75 = *v40;
        v178.width = 56.0;
        v178.height = 56.0;
        UIGraphicsBeginImageContextWithOptions(v178, 0, 0.0);
        [v75 drawInRect:{0.0, 0.0, 56.0, 56.0}];
        v76 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        v77 = v38;
        v78 = v76;
        sub_100743344();
        [a1 setNeedsLayout];

        sub_100743284();
        a1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_shouldResizeImage] = 0;
        v79 = &a1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_imageMarginRight];
        *v79 = 0x4030000000000000;
        v79[8] = 0;
        (*(v159 + 104))(v158, enum case for Artwork.Style.round(_:), v160);
        sub_100743364();
        v80 = [a1 traitCollection];
        sub_100751364();

        sub_100746E74();
        v81 = [objc_opt_self() separatorColor];
        sub_100746E64();

        (*(v77 + 8))(v163, v59);
      }

      else
      {
        if (v69 != enum case for AccountPresenter.AccountDetailItem.ImageConfiguration.systemImage(_:))
        {
LABEL_73:
          result = sub_100754744();
          __break(1u);
          return result;
        }

        (*(v38 + 96))(v40, v59);
        v82 = v153;
        v83 = v152;
        (*(v153 + 32))();
        sub_100743284();
        a1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_shouldResizeImage] = 0;
        v84 = &a1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_imageMarginRight];
        *v84 = 0x4026000000000000;
        v84[8] = 0;
        sub_100746E74();
        v85 = [objc_opt_self() clearColor];
        sub_100746E64();
        v86 = [objc_opt_self() configurationWithPointSize:48.0];
        v87 = v83;
        v88 = sub_100743AE4();

        v89 = v88;
        sub_100743344();
        [a1 setNeedsLayout];

        (*(v82 + 8))(v87, v156);
        (*(v58 + 8))(v163, v59);
      }
    }

    v90 = v166;
    sub_1007458D4();
    v91 = (*(v167 + 88))(v90, v168);
    v92 = v174;
    v93 = v170;
    if (v91 == enum case for AccountPresenter.AccountDetailItem.TitleStyle.action(_:))
    {
      v94 = [v157 collectionView];
      if (v94)
      {
        v95 = v94;
        v96 = [v94 tintColor];

        goto LABEL_35;
      }

      __break(1u);
      goto LABEL_72;
    }

    if (v91 == enum case for AccountPresenter.AccountDetailItem.TitleStyle.primary(_:))
    {
      sub_100016C60(0, &qword_100923500);
      v97 = sub_100753DD4();
    }

    else
    {
      if (v91 != enum case for AccountPresenter.AccountDetailItem.TitleStyle.secondary(_:))
      {
LABEL_72:
        sub_100754644();
        __break(1u);
        goto LABEL_73;
      }

      sub_100016C60(0, &qword_100923500);
      v97 = sub_100753DF4();
    }

    v96 = v97;
LABEL_35:
    [v149 setTextColor:v96];

    v98 = v164;
    sub_100745984();
    v99 = (v66 + 48);
    v100 = *(v66 + 48);
    if (v100(v98, 1, v92) == 1)
    {
      sub_10000C8CC(v98, &qword_10093FDA8);
      v101 = type metadata accessor for Accessory();
      (*(*(v101 - 8) + 56))(v67, 1, 1, v101);
    }

    else
    {
      sub_1005B259C(v67);
      (*(v66 + 8))(v98, v92);
    }

    v102 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph;
    v103 = v157;
    v104 = *&v157[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph];

    v168 = v103;
    sub_1005A94FC(v67, v104);

    sub_10000C8CC(v67, &qword_10093FDB0);
    v105 = OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_accessoryView;
    v106 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_accessoryView];
    if (!v106)
    {
      goto LABEL_52;
    }

    v107 = v106;
    sub_100745984();
    if (v100(v93, 1, v92) == 1)
    {
      sub_10000C8CC(v93, &qword_10093FDA8);
      v108 = type metadata accessor for Accessory();
      (*(*(v108 - 8) + 56))(v172, 1, 1, v108);
    }

    else
    {
      v109 = v93;
      v110 = v172;
      sub_1005B259C(v172);
      (*(v66 + 8))(v109, v92);
      v111 = type metadata accessor for Accessory();
      if ((*(*(v111 - 8) + 48))(v110, 1, v111) != 1)
      {
        v112 = 0;
LABEL_44:
        sub_10000C8CC(v172, &qword_10093FDB0);
        [v107 setHidden:v112];

        v113 = *&a1[v105];
        if (v113)
        {
          v114 = v113;
          v115 = v161;
          sub_100745984();
          if (v100(v115, 1, v92) == 1)
          {
            sub_10000C8CC(v115, &qword_10093FDA8);
            v116 = 0;
          }

          else
          {
            v117 = v154;
            (*(v66 + 16))(v154, v115, v92);
            if ((*(v66 + 88))(v117, v92) == enum case for AccountPresenter.AccountDetailItem.Accessory.artwork(_:))
            {
              (*(v66 + 96))(v117, v92);
              v116 = *(v117 + 3);

              v118 = v66;
              v119 = v92;
              (*(v118 + 8))(v161, v92);
            }

            else
            {
              v120 = *(v66 + 8);
              v119 = v92;
              v120(v117, v92);
              v116 = 0;
              v120(v161, v92);
            }

            v92 = v119;
            v66 = v171;
          }

          [v114 setTintColor:v116];
        }

LABEL_52:
        v121 = v165;
        sub_100745904();
        if (v100(v121, 1, v92) == 1)
        {
          sub_10000C8CC(v121, &qword_10093FDA8);
          v122 = type metadata accessor for Accessory();
          v123 = v151;
          (*(*(v122 - 8) + 56))(v151, 1, 1, v122);
        }

        else
        {
          v124 = v151;
          sub_1005B259C(v151);
          v123 = v124;
          (*(v66 + 8))(v121, v92);
        }

        v125 = v168;
        v126 = *&v157[v102];

        sub_1005A992C(v123, v126);

        sub_10000C8CC(v123, &qword_10093FDB0);
        v127 = OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_secondaryAccessoryView;
        v128 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_secondaryAccessoryView];
        if (!v128)
        {
LABEL_68:
        }

        v129 = v100;
        v130 = v66;
        v131 = v128;
        v132 = v162;
        sub_100745904();
        v172 = v99;
        if (v129(v132, 1, v92) == 1)
        {
          sub_10000C8CC(v132, &qword_10093FDA8);
          v133 = type metadata accessor for Accessory();
          (*(*(v133 - 8) + 56))(v173, 1, 1, v133);
          v134 = v130;
        }

        else
        {
          v135 = v132;
          v136 = v173;
          sub_1005B259C(v173);
          v134 = v130;
          (*(v130 + 8))(v135, v92);
          v137 = type metadata accessor for Accessory();
          v138 = v136;
          v125 = v168;
          if ((*(*(v137 - 8) + 48))(v138, 1, v137) != 1)
          {
            v139 = 0;
LABEL_61:
            sub_10000C8CC(v173, &qword_10093FDB0);
            [v131 setHidden:v139];

            v140 = *&a1[v127];
            v141 = v174;
            if (v140)
            {
              v142 = v140;
              v143 = v148;
              sub_100745904();
              if (v129(v143, 1, v141) == 1)
              {
                sub_10000C8CC(v143, &qword_10093FDA8);
                v144 = 0;
              }

              else
              {
                v145 = v155;
                (*(v134 + 16))(v155, v143, v141);
                if ((*(v134 + 88))(v145, v141) == enum case for AccountPresenter.AccountDetailItem.Accessory.artwork(_:))
                {
                  (*(v134 + 96))(v145, v141);
                  v144 = *(v145 + 3);

                  (*(v134 + 8))(v143, v141);
                }

                else
                {
                  v146 = *(v134 + 8);
                  v146(v145, v141);
                  v144 = 0;
                  v146(v143, v141);
                }
              }

              [v142 setTintColor:v144];
            }

            goto LABEL_68;
          }
        }

        v139 = 1;
        goto LABEL_61;
      }
    }

    v112 = 1;
    goto LABEL_44;
  }

  return result;
}

uint64_t sub_1005B259C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100745974();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for AccountPresenter.AccountDetailItem.Accessory.badge(_:) || v9 == enum case for AccountPresenter.AccountDetailItem.Accessory.label(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = v8[1];
    *a1 = *v8;
    a1[1] = v10;
    v11 = type metadata accessor for Accessory();
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }

  if (v9 == enum case for AccountPresenter.AccountDetailItem.Accessory.artwork(_:))
  {
    (*(v5 + 96))(v8, v4);
    v12 = *v8;
    v13 = v8[3];
    v19 = *(v8 + 1);

    *a1 = v12;
    *(a1 + 1) = v19;
    v11 = type metadata accessor for Accessory();
    goto LABEL_6;
  }

  v15 = enum case for AccountPresenter.AccountDetailItem.Accessory.chevron(_:);
  v16 = v9;
  v17 = type metadata accessor for Accessory();
  v18 = v17;
  if (v16 == v15)
  {
    swift_storeEnumTagMultiPayload();
    return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
  }

  else
  {
    (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
    return (*(v5 + 8))(v8, v4);
  }
}

void sub_1005B288C(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100754724();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C824(a3, v42);
  sub_10000C518(&qword_1009242A0);
  sub_100745A44();
  if (swift_dynamicCast())
  {
    v9 = v41;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v40 = a1;
      if (qword_100921970 != -1)
      {
        swift_once();
      }

      v12 = sub_100750B04();
      sub_10000D0FC(v12, qword_10093FC00);
      v13 = v11;
      sub_1007502D4();
      sub_100750564();
      v15 = v14;

      v16 = *(v6 + 8);
      v16(v8, v5);
      [v13 pageMarginInsets];
      v18 = v17;
      v19 = v13;
      sub_1007502D4();
      sub_100750564();
      v21 = v20;

      v16(v8, v5);
      [v19 pageMarginInsets];
      v23 = v22;
      v24 = sub_100745A34();
      v25 = *&v19[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph];
      v26 = v19;

      v27 = [v26 traitCollection];
      v28 = [v27 horizontalSizeClass];

      if (v28 == 1)
      {
        v29 = sub_100745A14();
      }

      else
      {
        v29 = 1;
      }

      v30 = v40;
      v31 = [v26 snapshotPageTraitEnvironment];

      sub_1006DE574(v24, v25, v29 & 1, 0, v31, v15, v18, v21, v23);

      swift_unknownObjectRelease();
      v32 = *&v30[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_expandableTextView];
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = swift_allocObject();
      *(v34 + 16) = v9;
      *(v34 + 24) = v33;
      v35 = (v32 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreTapHandler);
      v36 = *(v32 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreTapHandler);
      *v35 = sub_1005B6E04;
      v35[1] = v34;
      swift_retain_n();

      sub_1000164A8(v36);
      v37 = *(v32 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreButton);

      [v37 setUserInteractionEnabled:1];

      sub_100016C60(0, &qword_100923500);
      v38 = sub_100753E54();
      [v30 setBackgroundColor:v38];
    }

    else
    {
    }
  }
}

uint64_t sub_1005B2CDC()
{
  v0 = sub_100745A24();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong traitCollection];
    v4 = [v3 horizontalSizeClass];

    v5 = v4 == 1;
  }

  else
  {
    v5 = 1;
  }

  v0(v5);
}

void sub_1005B2D98(void *a1)
{
  v3 = sub_10000C518(&qword_100927510);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_diffableDataSource);
  if (v6)
  {
    v7 = v6;
    sub_10074CD34();

    v8 = sub_10000C518(&unk_100930810);
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {
      sub_10000C8CC(v5, &qword_100927510);
    }

    else
    {
      sub_1007525C4();
      (*(v9 + 8))(v5, v8);
      sub_10000C518(&qword_1009242A0);
      sub_100745A64();
      if (swift_dynamicCast())
      {
        sub_1007459C4();
        isa = sub_100741704().super.isa;
        [a1 deselectItemAtIndexPath:isa animated:1];
      }
    }
  }
}

uint64_t sub_1005B30B0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, char *))
{
  v10 = sub_1007417F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  a6(v15, v13);

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1005B31CC(void *a1, uint64_t a2)
{
  v61 = a1;
  v4 = sub_1007528E4();
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&qword_100927510);
  __chkstk_darwin(v6 - 8);
  v8 = &v49 - v7;
  v9 = sub_100752914();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v56 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v55 = &v49 - v13;
  __chkstk_darwin(v14);
  v16 = &v49 - v15;
  v17 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v17 - 8);
  v54 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v58 = &v49 - v20;
  __chkstk_darwin(v21);
  v23 = &v49 - v22;
  __chkstk_darwin(v24);
  v25 = v2;
  v26 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_presenter);
  v60 = a2;
  v28 = &v49 - v27;
  sub_100745A54();
  sub_100016B4C(v28, v23, &unk_100925380);
  v29 = *(v10 + 48);
  v30 = v29(v23, 1, v9);
  v57 = v10;
  v59 = v9;
  v53 = v26;
  if (v30 == 1)
  {
    sub_10000C8CC(v23, &unk_100925380);
    v31 = v61;
  }

  else
  {
    (*(v10 + 32))(v16, v23, v9);
    sub_100744304();
    v31 = v61;
    [v61 frame];
    sub_100749594();

    (*(v10 + 8))(v16, v9);
  }

  v32 = *(v25 + OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_diffableDataSource);
  if (!v32)
  {
    return sub_10000C8CC(v28, &unk_100925380);
  }

  v33 = v29;
  v34 = v32;
  sub_10074CD34();

  v35 = sub_10000C518(&unk_100930810);
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v8, 1, v35) == 1)
  {
    sub_10000C8CC(v8, &qword_100927510);
    return sub_10000C8CC(v28, &unk_100925380);
  }

  v38 = v28;
  sub_1007525C4();
  (*(v36 + 8))(v8, v35);
  sub_100012160(&v62, v63);
  sub_10000C888(v63, v63[3]);
  v39 = v58;
  sub_100752F24();
  v40 = v59;
  v41 = v33;
  if (v33(v39, 1, v59) == 1)
  {
    sub_10000C8CC(v38, &unk_100925380);
    v42 = v39;
  }

  else
  {
    v43 = v57;
    v44 = v55;
    (*(v57 + 32))(v55, v39, v40);
    sub_100744304();
    v45 = v54;
    sub_100016B4C(v38, v54, &unk_100925380);
    if (v41(v45, 1, v40) == 1)
    {
      sub_10000C8CC(v45, &unk_100925380);
    }

    else
    {
      v46 = v50;
      sub_1007528F4();
      (*(v43 + 8))(v45, v40);
      sub_1007528D4();
      (*(v51 + 8))(v46, v52);
    }

    v47 = v56;
    sub_1007528A4();

    [v31 frame];
    sub_100749544();

    v48 = *(v43 + 8);
    v48(v47, v40);
    v48(v44, v40);
    v42 = v38;
  }

  sub_10000C8CC(v42, &unk_100925380);
  return sub_10000C620(v63);
}

void (*sub_1005B3850(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1005B7B78;
}

void sub_1005B38B4()
{
  v1 = v0;
  v2 = sub_10000C518(&qword_10093FD58);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - v4;
  if ((sub_100745A04() & 1) == 0)
  {
    [*&v0[OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_refreshControl] endRefreshing];
  }

  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_diffableDataSource];
  if (v6)
  {
    v7 = v6;
    sub_10000C518(&unk_10093FD60);
    sub_1007451A4();
    sub_1007451C4();
    sub_10074CD94();

    (*(v3 + 8))(v5, v2);
  }

  v8 = [v0 collectionView];
  if (!v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  v10 = [v8 window];

  if (!v10)
  {
    return;
  }

  v11 = [v1 collectionView];
  if (!v11)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v12 = v11;
  sub_100749AB4();
}

void sub_1005B3EF0()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_authenticating;
  swift_beginAccess();
  if (v0[v1] == 1)
  {
    [*&v0[OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_activityIndicator] startAnimating];
    v2 = [v0 navigationItem];
    v3 = [v2 leftBarButtonItem];

    if (v3)
    {
      [v3 setHidden:0];
    }
  }

  else
  {
    v4 = [v0 navigationItem];
    v5 = [v4 leftBarButtonItem];

    if (v5)
    {
      [v5 setHidden:1];
    }

    [*&v0[OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_activityIndicator] stopAnimating];
  }
}

void sub_1005B4020(void *a1)
{
  if ((v1[OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_isPresentingForgotSignInDetails] & 1) == 0)
  {
    v1[OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_isPresentingForgotSignInDetails] = 1;
    [a1 setPresentingViewController:v1];
    v3 = [objc_allocWithZone(AKAppleIDAuthenticationController) init];
    if (v3)
    {
      v4 = v3;
      v5 = swift_allocObject();
      *(v5 + 16) = v1;
      v9[4] = sub_1005B685C;
      v9[5] = v5;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 1107296256;
      v9[2] = sub_1005B415C;
      v9[3] = &unk_10087C368;
      v6 = _Block_copy(v9);
      v7 = v4;
      v8 = v1;

      [v7 authenticateWithContext:a1 completion:v6];

      _Block_release(v6);
    }
  }
}

uint64_t sub_1005B415C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_10000C518(&qword_10093FD50);
    v4 = sub_100752F44();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_1005B420C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [objc_allocWithZone(AAUISignInController) init];
  [v3 setServiceType:AIDAServiceTypeStore];
  [v3 setDelegate:v0];
  if (qword_100921978 != -1)
  {
    swift_once();
  }

  v4 = sub_100752E44();
  sub_10000D0FC(v4, qword_10093FC18);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_100752434();
  sub_1007523A4();
  sub_100752CE4();

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = ObjectType;
  v9[4] = sub_1005B6838;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1005171C8;
  v9[3] = &unk_10087C318;
  v7 = _Block_copy(v9);
  v8 = v3;

  [v8 prepareInViewController:v1 completion:v7];
  _Block_release(v7);
}

void sub_1005B44A4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a3;
  v7 = sub_100752E44();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100745B04();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100752614();
  __chkstk_darwin(v15 - 8);
  if (a1)
  {
    if (qword_100921978 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v7, qword_10093FC18);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752CE4();

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      [Strong presentViewController:a4 animated:1 completion:0];
    }

    return;
  }

  if (!a2)
  {
    goto LABEL_21;
  }

  v40 = v12;
  v41 = sub_100741124();
  v18 = [v41 domain];
  v19 = sub_100753094();
  v21 = v20;

  if (v19 == sub_100753094() && v21 == v22)
  {
  }

  else
  {
    v24 = sub_100754754();

    if ((v24 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if ([v41 code] != -7005)
  {
LABEL_20:

LABEL_21:
    if (qword_100921978 != -1)
    {
      swift_once();
    }

    v31 = sub_10000D0FC(v7, qword_10093FC18);
    (*(v8 + 16))(v10, v31, v7);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A6580;
    sub_1007523A4();
    if (a2)
    {
      swift_getErrorValue();
      v32 = v43;
      v33 = v44;
      *(&v46 + 1) = v44;
      v34 = sub_10000D134(&v45);
      (*(*(v33 - 8) + 16))(v34, v32, v33);
    }

    else
    {
      v45 = 0u;
      v46 = 0u;
    }

    sub_100752424();
    sub_10000C8CC(&v45, &unk_100923520);
    sub_100752D04();

    (*(v8 + 8))(v10, v7);
    swift_beginAccess();
    v35 = swift_unknownObjectWeakLoadStrong();
    if (v35)
    {
      v36 = v35;

      sub_1007459E4();
    }

    return;
  }

  if (qword_100921978 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v7, qword_10093FC18);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  *(&v46 + 1) = sub_100016C60(0, &unk_100928750);
  *&v45 = v41;
  v25 = v41;
  sub_100752424();
  sub_10000C8CC(&v45, &unk_100923520);
  sub_100752D04();

  v47._object = 0x8000000100785F10;
  v47._countAndFlagsBits = 0xD000000000000017;
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  sub_1007458B4(v47, v49);
  v48._countAndFlagsBits = 0xD00000000000002ALL;
  v48._object = 0x8000000100785F30;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  sub_1007458B4(v48, v50);
  sub_1007525F4();
  (*(v40 + 104))(v14, enum case for AlertActionStyle.normal(_:), v11);
  sub_100743144();
  swift_allocObject();
  v26 = sub_100743114();
  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27)
  {
    v28 = v27;
    swift_beginAccess();
    v29 = swift_unknownObjectWeakLoadStrong();
    v30 = v29;
    if (v29)
    {
      v29 = type metadata accessor for AccountViewController();
    }

    else
    {
      *(&v45 + 1) = 0;
      *&v46 = 0;
    }

    *&v45 = v30;
    *(&v46 + 1) = v29;
    sub_1005B52B4(v26, &v45);

    sub_10000C8CC(&v45, &unk_100923520);
  }

  swift_beginAccess();
  v37 = swift_unknownObjectWeakLoadStrong();
  if (v37)
  {
    v38 = v37;

    sub_1007459E4();
  }
}

void sub_1005B4DA4()
{
  v1 = v0;
  v2 = sub_100750FA4();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10000C518(&qword_1009262D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v38 - v5;
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_diffableDataSource];
  if (v7)
  {
    v8 = v7;
    sub_1007518F4();
    v9 = sub_100751744();
    (*(v4 + 8))(v6, v3);
    if (v9 >= 1)
    {
      v10 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
      v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
      sub_10074B974();

      v12 = *&v1[v10];
      *&v1[v10] = 0;

      v13 = [v1 view];
      if (v13)
      {
        v14 = v13;
        [v13 bounds];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;

        v39 = v16;
        v40 = v18;
        v41 = v20;
        v42 = v22;
        v43 = 0;
LABEL_8:
        sub_10074B964();

        return;
      }

      goto LABEL_10;
    }
  }

  sub_100750F94();
  v23 = objc_allocWithZone(sub_100750FC4());
  v24 = sub_100750FB4();
  v25 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v26 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  sub_10074B974();

  v27 = *&v1[v25];
  *&v1[v25] = v24;
  v8 = v24;

  v28 = [v1 view];
  if (v28)
  {
    v29 = v28;
    [v28 bounds];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v39 = v31;
    v40 = v33;
    v41 = v35;
    v42 = v37;
    v43 = 0;
    goto LABEL_8;
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

id sub_1005B5068()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  sub_10074B974();

  v3 = *&v0[v1];
  *&v0[v1] = 0;

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result bounds];

    return sub_10074B964();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1005B5134()
{
  v1 = v0;
  sub_100751094();
  sub_1005B7A8C(&unk_10093FD40, 255, &type metadata accessor for AccountPresenter);
  swift_errorRetain();

  v2 = sub_100751054();
  v3 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  sub_10074B974();

  v5 = *&v1[v3];
  *&v1[v3] = v2;
  v8 = v2;

  v6 = [v1 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];

    sub_10074B964();
  }

  else
  {
    __break(1u);
  }
}

void sub_1005B52B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1007417F4();
  v69 = *(v4 - 8);
  v70 = v4;
  __chkstk_darwin(v4);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v65 - v8;
  v9 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v9 - 8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = &v65 - v13;
  __chkstk_darwin(v14);
  v16 = &v65 - v15;
  v17 = sub_100752294();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100016B4C(a2, v103, &unk_100923520);
  if (v104)
  {
    sub_100016C60(0, &qword_100922300);
    if (swift_dynamicCast())
    {
      v21 = v72;
      [v21 bounds];
      LOBYTE(v97) = 1;
      *&v79 = v21;
      *(&v79 + 1) = v22;
      *&v80 = v23;
      *(&v80 + 1) = v24;
      *&v81 = v25;
      BYTE8(v81) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v82 = _Q0;
      v83 = _Q0;
      v84 = 15;
      sub_100016C60(0, &qword_100926D00);
      *v20 = sub_100753774();
      (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
      v31 = sub_1007522C4();
      (*(v18 + 8))(v20, v17);
      if (v31)
      {
        v87 = xmmword_100931330;
        v88 = xmmword_100931340;
        v89 = xmmword_100931350;
        v85 = xmmword_100931310;
        v86 = xmmword_100931320;
        v93 = v81;
        v94 = v82;
        v95 = v83;
        v91 = v79;
        v92 = v80;
        v97 = xmmword_100931310;
        v98 = xmmword_100931320;
        v100 = xmmword_100931340;
        v101 = xmmword_100931350;
        v90 = qword_100931360;
        v96 = v84;
        v102 = qword_100931360;
        v99 = xmmword_100931330;
        sub_100016B4C(&v85, &v73, &unk_1009308C0);
        xmmword_100931330 = v93;
        xmmword_100931340 = v94;
        xmmword_100931350 = v95;
        qword_100931360 = v96;
        xmmword_100931310 = v91;
        xmmword_100931320 = v92;
        sub_10000C8CC(&v97, &unk_1009308C0);
        v32 = *&v71[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph];
        v33 = sub_10000C518(&unk_100923210);
        sub_1001664D8(&v79, &v73);
        sub_1007526C4();
        v34 = *(v33 - 8);
        if ((*(v34 + 48))(v16, 1, v33) == 1)
        {
          sub_10000C8CC(v16, &unk_100923960);
        }

        else
        {
          sub_1003C0E00(a1, 1, v32, v16);

          (*(v34 + 8))(v16, v33);
        }

        v75 = xmmword_100931330;
        v76 = xmmword_100931340;
        v77 = xmmword_100931350;
        v78 = qword_100931360;
        v73 = xmmword_100931310;
        v74 = xmmword_100931320;
        xmmword_100931310 = v85;
        xmmword_100931320 = v86;
        xmmword_100931330 = v87;
        xmmword_100931340 = v88;
        xmmword_100931350 = v89;
        qword_100931360 = v90;
        sub_10000C8CC(&v73, &unk_1009308C0);
        sub_100166534(&v79);

        return;
      }

      __break(1u);
      goto LABEL_27;
    }

    v66 = a1;
  }

  else
  {
    v66 = a1;
    sub_10000C8CC(v103, &unk_100923520);
  }

  v35 = [v71 collectionView];
  if (!v35)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v36 = v35;
  v37 = [v35 indexPathsForSelectedItems];

  if (!v37)
  {
LABEL_20:
    v61 = *&v71[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph];
    v62 = sub_10000C518(&unk_100923210);
    sub_1007526C4();
    v63 = *(v62 - 8);
    if ((*(v63 + 48))(v11, 1, v62) == 1)
    {
      sub_10000C8CC(v11, &unk_100923960);
    }

    else
    {
      sub_1003C0E00(v66, 1, v61, v11);

      (*(v63 + 8))(v11, v62);
    }

    return;
  }

  v38 = v70;
  v39 = sub_1007532A4();

  if (!*(v39 + 16))
  {

    goto LABEL_20;
  }

  v40 = v69;
  (*(v69 + 16))(v6, v39 + ((*(v40 + 80) + 32) & ~*(v40 + 80)), v38);

  v41 = *(v40 + 32);
  v42 = v68;
  v41(v68, v6, v38);
  v43 = [v71 collectionView];
  if (!v43)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v44 = v43;
  v45 = v42;
  isa = sub_100741704().super.isa;
  v47 = [v44 cellForItemAtIndexPath:isa];

  if (!v47)
  {
    (*(v69 + 8))(v45, v70);
    goto LABEL_20;
  }

  v48 = v47;
  [v48 bounds];
  LOBYTE(v97) = 1;
  *&v79 = v47;
  *(&v79 + 1) = v49;
  *&v80 = v50;
  *(&v80 + 1) = v51;
  *&v81 = v52;
  BYTE8(v81) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v82 = _Q0;
  v83 = _Q0;
  v84 = 15;
  sub_100016C60(0, &qword_100926D00);
  *v20 = sub_100753774();
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v54 = sub_1007522C4();
  (*(v18 + 8))(v20, v17);
  if ((v54 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v87 = xmmword_100931330;
  v88 = xmmword_100931340;
  v89 = xmmword_100931350;
  v85 = xmmword_100931310;
  v86 = xmmword_100931320;
  v93 = v81;
  v94 = v82;
  v95 = v83;
  v91 = v79;
  v92 = v80;
  v97 = xmmword_100931310;
  v98 = xmmword_100931320;
  v100 = xmmword_100931340;
  v101 = xmmword_100931350;
  v90 = qword_100931360;
  v96 = v84;
  v102 = qword_100931360;
  v99 = xmmword_100931330;
  sub_100016B4C(&v85, &v73, &unk_1009308C0);
  xmmword_100931330 = v93;
  xmmword_100931340 = v94;
  xmmword_100931350 = v95;
  qword_100931360 = v96;
  xmmword_100931310 = v91;
  xmmword_100931320 = v92;
  sub_10000C8CC(&v97, &unk_1009308C0);
  v55 = *&v71[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph];
  v56 = sub_10000C518(&unk_100923210);
  sub_1001664D8(&v79, &v73);
  v57 = v67;
  sub_1007526C4();
  v58 = *(v56 - 8);
  v59 = (*(v58 + 48))(v57, 1, v56);
  v60 = v68;
  if (v59 == 1)
  {
    sub_10000C8CC(v57, &unk_100923960);
  }

  else
  {
    sub_1003C0E00(v66, 1, v55, v57);

    (*(v58 + 8))(v57, v56);
  }

  v64 = v70;
  v75 = xmmword_100931330;
  v76 = xmmword_100931340;
  v77 = xmmword_100931350;
  v78 = qword_100931360;
  v73 = xmmword_100931310;
  v74 = xmmword_100931320;
  xmmword_100931310 = v85;
  xmmword_100931320 = v86;
  xmmword_100931330 = v87;
  xmmword_100931340 = v88;
  xmmword_100931350 = v89;
  qword_100931360 = v90;
  sub_10000C8CC(&v73, &unk_1009308C0);
  sub_100166534(&v79);

  (*(v69 + 8))(v60, v64);
}

uint64_t sub_1005B5EF8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1006FEA40();

  return sub_1007459D4();
}

uint64_t sub_1005B6318()
{
}

id sub_1005B63A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005B649C()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_authenticating;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1005B64E0(char a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_authenticating;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1005B3EF0();
}

void (*sub_1005B6534(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1005B6598;
}

void sub_1005B6598(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1005B3EF0();
  }
}

uint64_t sub_1005B6674()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1005B66C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1005B7A8C(&qword_10093FD30, 255, &type metadata accessor for AccountPresenter);
  v9 = sub_10000C518(&qword_10093FD38);
  v10 = objc_allocWithZone(v9);
  v11 = &v10[qword_100925588];
  *&v10[qword_100925588 + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v10[qword_100925580];
  *v12 = a3;
  *(v12 + 1) = a4;
  *(v11 + 1) = v8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *&v10[qword_100925598] = a5;
  v14.receiver = v10;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t sub_1005B67F8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1005B6844(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1005B6898()
{
  v1 = sub_10000C518(&qword_10093FD78);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10000C518(&qword_10093FD70);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

id sub_1005B6A00()
{
  sub_10000C518(&qword_10093FD78);
  sub_10000C518(&qword_10093FD70);

  return sub_1005B07EC();
}

uint64_t sub_1005B6B08()
{
  v1 = sub_10000C518(&qword_100936328);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v13 = *(v2 + 64);
  v5 = sub_10000C518(&unk_10093FD80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (((v13 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;
  v12 = v3 | v7;
  v9 = (*(v6 + 64) + v3 + v8) & ~v3;
  v10 = *(v2 + 8);
  v10(v0 + v4, v1);

  (*(v6 + 8))(v0 + v8, v5);
  v10(v0 + v9, v1);

  return _swift_deallocObject(v0, v9 + v13, v12 | 7);
}

uint64_t sub_1005B6CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_10000C518(&qword_100936328) - 8);
  v10 = *(v9 + 80);
  v11 = (v10 + 16) & ~v10;
  v12 = (*(v9 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(sub_10000C518(&unk_10093FD80) - 8);
  v14 = (v12 + *(v13 + 80) + 8) & ~*(v13 + 80);
  v15 = *(v4 + v12);
  v16 = v4 + ((*(v13 + 64) + v10 + v14) & ~v10);

  return sub_1005B0BF8(a1, a2, a3, a4, v4 + v11, v15, v4 + v14, v16);
}

uint64_t sub_1005B6E0C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1005B6E44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100745AA4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1005B6E70(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_10093FDC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005B6EE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100745AB4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1005B6F0C(void *a1, uint64_t a2)
{
  v5 = sub_10000C518(&qword_100927510);
  __chkstk_darwin(v5 - 8);
  v7 = v15 - v6;
  sub_1005B31CC(a1, a2);
  type metadata accessor for UpdatesLockupCollectionViewCell();
  result = swift_dynamicCastClass();
  if (result)
  {
    v9 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_diffableDataSource);
    if (v9)
    {
      v10 = v9;
      sub_10074CD34();

      v11 = sub_10000C518(&unk_100930810);
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v7, 1, v11) == 1)
      {
        return sub_10000C8CC(v7, &qword_100927510);
      }

      else
      {
        sub_1007525C4();
        (*(v12 + 8))(v7, v11);
        sub_10000C518(&qword_1009242A0);
        sub_100745A44();
        result = swift_dynamicCast();
        if (result)
        {
          sub_1007442C4();
          sub_100752764();
          sub_100752D34();
          v13 = v15[1];
          sub_100745A34();
          v14 = sub_10074EF64();

          sub_10042F0F0(v14, v13);
        }
      }
    }
  }

  return result;
}

void sub_1005B7158(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C518(&qword_10093FDE0);
  __chkstk_darwin(v4 - 8);
  v43 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v39 - v7;
  v9 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v9 - 8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v39 - v13;
  v15 = sub_100752914();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v39 - v20;
  v22 = sub_10000C518(&qword_100927510);
  __chkstk_darwin(v22 - 8);
  v24 = v39 - v23;
  v25 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension21AccountViewController_diffableDataSource);
  if (v25)
  {
    v41 = v21;
    v42 = v16;
    v40 = v8;
    v26 = v25;
    v39[1] = a1;
    sub_10074CD34();

    v27 = sub_10000C518(&unk_100930810);
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v24, 1, v27) == 1)
    {
      sub_10000C8CC(v24, &qword_100927510);
    }

    else
    {
      sub_1007525C4();
      (*(v28 + 8))(v24, v27);
      sub_100012160(&v44, v45);
      sub_10000C888(v45, v45[3]);
      sub_100752F24();
      v29 = v42;
      v30 = *(v42 + 48);
      if (v30(v14, 1, v15) == 1)
      {
        sub_10000C8CC(v14, &unk_100925380);
      }

      else
      {
        (*(v29 + 32))(v41, v14, v15);
        sub_100745A54();
        if (v30(v11, 1, v15) == 1)
        {
          sub_10000C8CC(v11, &unk_100925380);
          v31 = 1;
          v32 = v40;
        }

        else
        {
          v33 = v29;
          v32 = v40;
          sub_1007528F4();
          (*(v33 + 8))(v11, v15);
          v31 = 0;
        }

        v34 = v43;
        v35 = sub_1007528E4();
        v36 = *(v35 - 8);
        (*(v36 + 56))(v32, v31, 1, v35);
        sub_100744304();
        sub_100016B4C(v32, v34, &qword_10093FDE0);
        if ((*(v36 + 48))(v34, 1, v35) == 1)
        {
          sub_10000C8CC(v34, &qword_10093FDE0);
        }

        else
        {
          sub_1007528D4();
          (*(v36 + 8))(v34, v35);
        }

        v37 = v41;
        sub_1007528A4();

        sub_100749564();

        v38 = *(v42 + 8);
        v38(v18, v15);
        sub_10000C8CC(v32, &qword_10093FDE0);
        v38(v37, v15);
      }

      sub_10000C620(v45);
    }
  }
}

void sub_1005B770C(uint64_t a1, uint64_t a2)
{
  sub_1005B7158(a2);
  type metadata accessor for UpdatesLockupCollectionViewCell();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    sub_1007442C4();
    sub_100752764();
    sub_100752D34();
    v4 = OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_lockupView;
    v5 = *(*(v3 + OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
    sub_100743204();

    v6 = *(*(v3 + v4) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
    sub_1007433C4();
    sub_1005B7A8C(&qword_100925570, 255, &type metadata accessor for ArtworkView);
    v7 = v6;
    sub_100744274();
  }
}

uint64_t sub_1005B7858(uint64_t a1)
{
  v2 = v1;
  if (qword_100921978 != -1)
  {
    swift_once();
  }

  v4 = sub_100752E44();
  sub_10000D0FC(v4, qword_10093FC18);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A5620;
  sub_100752434();
  sub_1007523A4();
  v6[3] = sub_10000C518(&unk_10093FDD0);
  v6[0] = a1;

  sub_100752424();
  sub_10000C8CC(v6, &unk_100923520);
  sub_100752CE4();

  [v2 dismissViewControllerAnimated:1 completion:{0, v6[0]}];
  return sub_1007459E4();
}

uint64_t sub_1005B7A3C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005B7A8C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1005B7AD4()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1005B7B14()
{
  result = qword_10093FDF8;
  if (!qword_10093FDF8)
  {
    sub_10000C724(&qword_10093FDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FDF8);
  }

  return result;
}

uint64_t sub_1005B7BC0(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 24));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_1005B7C24()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1005B7CE4(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v2 = sub_10000C518(&unk_1009400F0);
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v27 = &v27 - v3;
  v4 = sub_10074EAB4();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100749A94();
  v32 = *(v7 - 8);
  v33 = v7;
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10000C518(&unk_100925370);
  v10 = *(v31 - 8);
  __chkstk_darwin(v31);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  v16 = sub_10000C518(&unk_100930810);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v27 - v18;
  sub_100746944();
  sub_1007525C4();
  (*(v17 + 8))(v19, v16);
  sub_1007468F4();
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();

  v20 = sub_10007DC04();
  sub_10000C824(v39, v38);
  sub_10000C518(&qword_1009242A0);
  sub_10074EFD4();
  if (swift_dynamicCast())
  {
    v21 = v37;
    v22 = v31;
    (*(v10 + 16))(v12, v15, v31);
    sub_100752DF4();
    v23 = v27;
    sub_100752994();
    v24 = v36;
    sub_100366B6C(v21, v23, v28, v9, v6, v20);
    swift_unknownObjectRelease();

    (*(v29 + 8))(v23, v30);
    (*(v34 + 8))(v6, v35);
    (*(v32 + 8))(v9, v33);
    (*(v10 + 8))(v15, v22);
    sub_10000C620(v39);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v34 + 8))(v6, v35);
    (*(v32 + 8))(v9, v33);
    (*(v10 + 8))(v15, v31);
    sub_10000C620(v39);
    v24 = v36;
  }

  v25 = [v24 contentView];
  [v25 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return [v24 setNeedsLayout];
}

uint64_t sub_1005B8200@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_1005B825C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

id sub_1005B832C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension18AvatarShowcaseView_artworkLoader] = 0;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension18AvatarShowcaseView_maxPlayersToShow] = a1;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension18AvatarShowcaseView_layoutConfiguration;
  v7 = sub_10074D6B4();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v3[v6], a2, v7);
  sub_10074D674();
  v10 = v9 * a1;
  sub_10074D684();
  v12 = v10 + v11;
  sub_10074D694();
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

void sub_1005B8510(uint64_t a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension18AvatarShowcaseView_artworkLoader] = a1;

  if (!a1)
  {
    return;
  }

  v4 = [v2 subviews];
  sub_100016C60(0, &qword_100922300);
  v5 = sub_1007532A4();

  if (v5 >> 62)
  {
    v6 = sub_100754664();
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
          v8 = sub_100754574();
        }

        else
        {
          v8 = *(v5 + 8 * i + 32);
        }

        v9 = v8;
        sub_1007433C4();
        if (swift_dynamicCastClass())
        {
          sub_10004D658();
          sub_100744274();
        }
      }
    }
  }
}

void sub_1005B869C(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000C518(&qword_100932560);
  __chkstk_darwin(v6 - 8);
  v59 = &v51 - v7;
  v58 = sub_100743584();
  v8 = *(v58 - 8);
  __chkstk_darwin(v58);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B8CF0();

  v57 = a2;
  sub_1005B8510(v11);
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (*&v3[OBJC_IVAR____TtC22SubscribePageExtension18AvatarShowcaseView_maxPlayersToShow] >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension18AvatarShowcaseView_maxPlayersToShow];
  }

  sub_10074D674();
  v15 = v14 * v13;
  sub_10074D684();
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
    if ((v60 & 0xC000000000000001) != 0 || v13 <= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v56 = sub_100016C60(0, &qword_100923500);
      v22 = 0;
      v55 = (v8 + 104);
      v54 = enum case for CornerStyle.arc(_:);
      v53 = (v8 + 8);
      v51 = v13;
      while (1)
      {
        sub_10074D694();
        v25 = v24;
        sub_10074D684();
        v27 = (v25 - v26) * v22;
        sub_10074D694();
        v29 = v28;
        sub_10074D694();
        v31 = v30;
        v8 = sub_1007433C4();
        v32 = [objc_allocWithZone(v8) initWithFrame:{v27, 0.0, v29, v31}];
        sub_100753E34();
        sub_100743224();
        sub_10074D694();
        v33 = v58;
        (*v55)(v10, v54, v58);
        sub_1007433B4();
        (*v53)(v10, v33);
        if (qword_100920498 != -1)
        {
          swift_once();
        }

        v34 = sub_10074F0C4();
        v35 = sub_10000D0FC(v34, qword_10097E188);
        v36 = *(v34 - 8);
        v37 = v59;
        (*(v36 + 16))(v59, v35, v34);
        v38 = *(v36 + 56);
        a1 = v36 + 56;
        v38(v37, 0, 1, v34);
        sub_100743374();
        v39 = [v3 traitCollection];
        LOBYTE(v37) = sub_1007537F4();

        v40 = [v3 subviews];
        sub_100016C60(0, &qword_100922300);
        v41 = sub_1007532A4();

        v42 = v41 >> 62;
        if (v37)
        {
          if (v42)
          {
            v43 = sub_100754664();
            if (!v43)
            {
              goto LABEL_11;
            }
          }

          else
          {
            v43 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
            v12 = sub_100754664();
            goto LABEL_3;
          }

          if ((v41 & 0xC000000000000001) == 0)
          {
            if ((v45 & 0x8000000000000000) != 0)
            {
              goto LABEL_43;
            }

            if (v45 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
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
            if (!sub_100754664())
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

          else if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_11;
          }

          if ((v41 & 0xC000000000000001) == 0)
          {
            if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_42;
            }

            v46 = *(v41 + 32);
            goto LABEL_29;
          }
        }

        v47 = sub_100754574();
LABEL_30:
        v48 = v47;

        v23 = v48;
        v49 = [v3 traitCollection];
        v50 = sub_1007537F4();

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
        sub_100754574();
LABEL_13:
        ++v22;
        sub_10074D694();
        sub_10074D694();
        sub_10074F364();
        sub_10004D658();
        sub_100744204();

        if (v51 == v22)
        {
          return;
        }
      }
    }

    goto LABEL_47;
  }
}

void sub_1005B8CF0()
{
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension18AvatarShowcaseView_artworkLoader] = 0;

  v1 = [v0 subviews];
  sub_100016C60(0, &qword_100922300);
  v2 = sub_1007532A4();

  if (v2 >> 62)
  {
    v3 = sub_100754664();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      v5 = sub_100754574();
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

id sub_1005B8E40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AvatarShowcaseView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AvatarShowcaseView()
{
  result = qword_10093FE50;
  if (!qword_10093FE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005B8F48()
{
  result = sub_10074D6B4();
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

double sub_1005B9088()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074CD14();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747A54();
  sub_1005B94A8(&qword_10092F5A8, &type metadata accessor for PreorderDisclaimer);
  sub_1007468B4();
  if (!v20[0])
  {
    return 0.0;
  }

  v18 = v0;
  v19 = v5;
  v8 = sub_100747A44();
  v17[1] = v9;
  v17[2] = v8;
  sub_100038D38();
  if (qword_100921168 != -1)
  {
    swift_once();
  }

  v10 = sub_100750534();
  sub_10000D0FC(v10, qword_100981170);
  swift_getKeyPath();
  sub_100746914();

  v11 = v20[0];
  sub_100753C14();

  v12 = sub_10074F3F4();
  v20[3] = v12;
  v20[4] = sub_1005B94A8(&qword_10092AC70, &type metadata accessor for Feature);
  v13 = sub_10000D134(v20);
  (*(*(v12 - 8) + 104))(v13, enum case for Feature.measurement_with_labelplaceholder(_:), v12);
  sub_10074FC74();
  sub_10000C620(v20);
  sub_10074CD04();
  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  (*(v1 + 8))(v3, v18);
  swift_getKeyPath();
  sub_100746914();

  sub_1005B94A8(&unk_10092CB50, &type metadata accessor for LabelPlaceholderCompatibility);
  sub_100750404();
  v15 = v14;
  swift_unknownObjectRelease();

  (*(v19 + 8))(v7, v4);
  return v15;
}

uint64_t sub_1005B94A8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1005B974C(uint64_t a1)
{
  v2 = sub_100752B34();
  v19 = *(v2 - 8);
  v20 = v2;
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007527A4();
  v18 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100742534();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007524D4();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v17 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC22SubscribePageExtension18RootViewController_objectGraph))
  {
    (*(v9 + 104))(v11, enum case for AppEnterMetricsEvent.EnterKind.launch(_:), v8, v14);

    sub_100742544();
    (*(v9 + 8))(v11, v8);
    sub_100752764();
    sub_100752D34();
    sub_100752B14();
    sub_100752794();

    (*(v19 + 8))(v4, v20);
    (*(v18 + 8))(v7, v5);
    (*(v13 + 8))(v16, v12);
  }
}

void sub_1005B9A68(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v24 = a2;
  v3 = sub_1007521E4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100752224();
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007521F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension18RootViewController_objectGraph);
  if (v14)
  {
    sub_1000A7FA0();
    (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v10);

    v15 = sub_1007537A4();
    v22 = v7;
    v16 = v15;
    (*(v11 + 8))(v13, v10);
    v17 = swift_allocObject();
    v19 = v23;
    v18 = v24;
    v17[2] = v14;
    v17[3] = v19;
    v17[4] = v18;
    aBlock[4] = sub_1005BAB78;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    aBlock[3] = &unk_10087C868;
    v20 = _Block_copy(aBlock);

    sub_10001B5AC(v19);
    sub_100752204();
    v26 = _swiftEmptyArrayStorage;
    sub_10002DCDC();
    sub_10000C518(&unk_10092F750);
    sub_1000A8054();
    sub_1007543A4();
    sub_100753784();
    _Block_release(v20);

    (*(v4 + 8))(v6, v3);
    (*(v25 + 8))(v9, v22);
  }
}

uint64_t sub_1005B9DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v46 = a3;
  v37 = a1;
  v48 = sub_1007521E4();
  v51 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100752224();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin(v4);
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_100752244();
  v6 = *(v38 - 8);
  __chkstk_darwin(v38);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v37 - v10;
  v12 = sub_100752B34();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1007527A4();
  v44 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1007524D4();
  v41 = *(v19 - 8);
  v42 = v19;
  __chkstk_darwin(v19);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = dispatch_semaphore_create(0);
  sub_100742524();
  sub_100752764();
  v39 = v18;
  v40 = v16;
  sub_100752D34();
  sub_100752B14();
  sub_100752794();
  (*(v13 + 8))(v15, v12);
  *(swift_allocObject() + 16) = v22;
  v23 = sub_1000A7FA0();
  v24 = v22;
  v25 = sub_100753774();
  v53 = v23;
  v54 = &protocol witness table for OS_dispatch_queue;
  aBlock[0] = v25;
  sub_100752D94();

  sub_10000C620(aBlock);
  sub_100752234();
  sub_1007522B4();
  v26 = *(v6 + 8);
  v27 = v38;
  v26(v8, v38);
  sub_100753904();
  v26(v11, v27);
  v28 = sub_100753774();
  v29 = swift_allocObject();
  v31 = v45;
  v30 = v46;
  *(v29 + 16) = v45;
  *(v29 + 24) = v30;
  v54 = sub_100125A34;
  v55 = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  v53 = &unk_10087C8E0;
  v32 = _Block_copy(aBlock);
  sub_10001B5AC(v31);

  v33 = v43;
  sub_100752204();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002DCDC();
  sub_10000C518(&unk_10092F750);
  sub_1000A8054();
  v35 = v47;
  v34 = v48;
  sub_1007543A4();
  sub_100753784();
  _Block_release(v32);

  (*(v51 + 8))(v35, v34);
  (*(v49 + 8))(v33, v50);
  (*(v44 + 8))(v39, v40);
  return (*(v41 + 8))(v21, v42);
}

void sub_1005BA3F0()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18RootViewController_childViewController);
  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = sub_1005BAAD0;
    *(v3 + 24) = v1;
    v8[4] = sub_10011C13C;
    v8[5] = v3;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_1000CF7B0;
    v8[3] = &unk_10087C818;
    v4 = _Block_copy(v8);
    swift_retain_n();
    v5 = v2;

    [v5 dismissViewControllerAnimated:1 completion:v4];

    _Block_release(v4);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      swift_retain_n();
      sub_1005B9A68(sub_1005BAAD8, v1);
    }

    else
    {
    }
  }
}

uint64_t sub_1005BA59C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;

    sub_1005B9A68(sub_1005BABF4, a1);
  }

  return result;
}

void sub_1005BA618()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *&Strong[OBJC_IVAR____TtC22SubscribePageExtension18RootViewController_dismissalCompletionHandler];
    if (v2)
    {
      sub_10001B5AC(*&Strong[OBJC_IVAR____TtC22SubscribePageExtension18RootViewController_dismissalCompletionHandler]);

      v2();
      sub_1000164A8(v2);
    }

    else
    {
    }
  }
}

id sub_1005BA77C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension18RootViewController_childViewController] = 0;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension18RootViewController_objectGraph] = 0;
  v8 = OBJC_IVAR____TtC22SubscribePageExtension18RootViewController_bootstrapPendingClosuresHandler;
  sub_10074D174();
  swift_allocObject();
  *&v3[v8] = sub_10074D164();
  v9 = &v3[OBJC_IVAR____TtC22SubscribePageExtension18RootViewController_dismissalCompletionHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  if (a2)
  {
    v10 = sub_100753064();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v4;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", v10, a3);

  return v11;
}

id sub_1005BA8D4(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension18RootViewController_childViewController] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension18RootViewController_objectGraph] = 0;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension18RootViewController_bootstrapPendingClosuresHandler;
  sub_10074D174();
  swift_allocObject();
  *&v1[v4] = sub_10074D164();
  v5 = &v1[OBJC_IVAR____TtC22SubscribePageExtension18RootViewController_dismissalCompletionHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

uint64_t sub_1005BAA58()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005BAA98()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005BAAE0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1005BAB18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1005BAB30()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1005BABA8()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1005BAC00(double a1)
{
  if (qword_100921A40 != -1)
  {
    swift_once();
  }

  swift_getObjectType();
  type metadata accessor for VideoCardView();

  return sub_1005FA0C8(a1);
}

uint64_t sub_1005BAD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v92 = a3;
  v4 = sub_10000C518(&unk_100925520);
  __chkstk_darwin(v4 - 8);
  v82 = &v75 - v5;
  v6 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v6 - 8);
  v84 = &v75 - v7;
  v8 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v8 - 8);
  v83 = &v75 - v9;
  v10 = sub_10000C518(&unk_100925530);
  __chkstk_darwin(v10 - 8);
  v81 = &v75 - v11;
  v12 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v12 - 8);
  v80 = &v75 - v13;
  v14 = sub_100746BA4();
  __chkstk_darwin(v14 - 8);
  v79 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100743584();
  v77 = *(v16 - 8);
  v78 = v16;
  __chkstk_darwin(v16);
  v76 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C518(&unk_1009281C0);
  __chkstk_darwin(v18 - 8);
  v86 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v85 = &v75 - v21;
  v22 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v22 - 8);
  v24 = &v75 - v23;
  v25 = sub_100744864();
  __chkstk_darwin(v25 - 8);
  __chkstk_darwin(v26);
  v27 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v27 - 8);
  v29 = &v75 - v28;
  v30 = sub_100744894();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100747D94();
  v89 = *(v34 - 8);
  v90 = v34;
  __chkstk_darwin(v34);
  v36 = &v75 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = a1;
  sub_10074FBD4();
  (*(v31 + 104))(v33, enum case for VideoFillMode.scaleAspectFill(_:), v30);
  sub_10074EC14();
  sub_10074F2A4();
  sub_100750504();

  v37 = sub_1007504F4();
  (*(*(v37 - 8) + 56))(v29, 0, 1, v37);
  sub_10074EBB4();
  sub_10074EBF4();
  sub_10074EBC4();
  sub_10074EBA4();
  sub_10074EC04();
  sub_100747D74();
  sub_1007464C4();
  sub_1007526E4();
  v38 = v93[0];
  sub_10074EB94();
  sub_10074EC24();
  v39 = sub_100741264();
  (*(*(v39 - 8) + 56))(v24, 0, 1, v39);
  v40 = v85;
  sub_10074EBE4();
  v41 = v86;
  sub_10074EBD4();
  type metadata accessor for VideoView();
  sub_1005BC328(&qword_1009230E0, type metadata accessor for VideoView);
  v88 = v36;
  v42 = sub_1007464A4();
  sub_10000C8CC(v41, &unk_1009281C0);
  sub_10000C8CC(v40, &unk_1009281C0);
  sub_10000C8CC(v24, &unk_100923970);
  sub_10000C8CC(v93, &unk_1009276E0);
  v43 = *(v87 + OBJC_IVAR____TtC22SubscribePageExtension27VideoCardCollectionViewCell_videoCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v45 = Strong;
    v46 = [Strong superview];
    if (!v46)
    {
LABEL_6:

      goto LABEL_7;
    }

    v47 = v46;
    sub_100016C60(0, &qword_100922300);
    v48 = v43;
    v49 = sub_100753FC4();

    if (v49)
    {
      v50 = swift_unknownObjectWeakLoadStrong();
      if (v50)
      {
        v45 = v50;
        [v50 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v51 = swift_unknownObjectWeakLoadStrong();
  if (v51)
  {
    v52 = v51;
    v54 = v77;
    v53 = v78;
    v55 = v76;
    (*(v77 + 104))(v76, enum case for CornerStyle.continuous(_:), v78);
    sub_100746E34();
    (*(v54 + 8))(v55, v53);
    [v43 addSubview:v52];
    [v43 sendSubviewToBack:v52];
    [v43 setNeedsLayout];
  }

  v56 = swift_unknownObjectWeakLoadStrong();
  if (v56)
  {
    v56[qword_10093CB58] = 1;
  }

  v57 = *&v43[OBJC_IVAR____TtC22SubscribePageExtension13VideoCardView_overlayView];
  v58 = sub_10074FBE4();
  if (v58)
  {
    v59 = v58;
    [v57 setHidden:0];
    v87 = v38;
    v60 = v79;
    sub_10074FBC4();
    sub_1005F8298(v60);
    v61 = *&v43[OBJC_IVAR____TtC22SubscribePageExtension13VideoCardView_lockupView];
    v62 = sub_10000C518(&unk_10092EEA0);
    v63 = v80;
    (*(*(v62 - 8) + 56))(v80, 1, 1, v62);
    v64 = sub_100742E24();
    v65 = v81;
    (*(*(v64 - 8) + 56))(v81, 1, 1, v64);
    v66 = sub_100745E94();
    v67 = v83;
    (*(*(v66 - 8) + 56))(v83, 1, 1, v66);
    v68 = sub_10000C518(&unk_100925560);
    v69 = v84;
    (*(*(v68 - 8) + 56))(v84, 1, 1, v68);
    v70 = sub_10074F8B4();
    v71 = v82;
    (*(*(v70 - 8) + 56))(v82, 1, 1, v70);
    v72 = v61;
    sub_100656038(v59, v72, v63, v92, 0, 0, v65, v67, v71, v69);
    sub_10000C8CC(v71, &unk_100925520);
    v72[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    [v72 setNeedsLayout];

    sub_10000C8CC(v69, &unk_100925990);
    sub_10000C8CC(v67, &unk_1009259A0);
    sub_10000C8CC(v65, &unk_100925530);
    sub_10000C8CC(v63, &unk_100925540);
  }

  else
  {
    v73 = v57;
    [v73 setHidden:1];
  }

  return (*(v89 + 8))(v88, v90);
}

uint64_t sub_1005BB938(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = a2;
  swift_getObjectType();
  v5 = sub_10074F314();
  __chkstk_darwin(v5 - 8);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074F284();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100747064();
  v36 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1007504F4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C824(a1, v42);
  sub_10000C518(&unk_100923100);
  sub_10074FBF4();
  result = swift_dynamicCast();
  if (result)
  {
    v35[1] = v7;
    v37 = v41;
    sub_10074FBD4();
    v19 = sub_10074EC14();

    sub_1007477B4();
    CGRectGetWidth(v43);
    sub_10074F2A4();
    sub_100750504();
    sub_1007504C4();
    (*(v15 + 8))(v17, v14);
    v35[2] = v19;
    v20 = sub_10074F374();
    v21 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension27VideoCardCollectionViewCell_videoCardView);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      type metadata accessor for VideoView();
      sub_1005BC328(&unk_100923110, type metadata accessor for VideoView);
      sub_100744204();
    }

    else
    {
      sub_100744214();
    }

    v24 = v39;
    v25 = *(v21 + OBJC_IVAR____TtC22SubscribePageExtension13VideoCardView_lockupView);
    if (sub_10074FBE4())
    {
      if (sub_10074EF64())
      {
        v35[0] = v20;
        v26 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
        swift_beginAccess();
        v27 = v36;
        (*(v36 + 16))(v13, &v25[v26], v11);
        sub_100746F34();
        (*(v27 + 8))(v13, v11);
        sub_10074F294();
        sub_10074F254();
        v36 = *(v38 + 1);
        (v36)(v10, v24);
        sub_10074F374();
        v28 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
        v29 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView];
        v38 = v25;
        v30 = v29;
        sub_10074F324();
        sub_100743364();
        [v30 setContentMode:sub_10074F184()];
        sub_100747FB4();
        sub_1007433A4();
        if (!sub_10074F1E4())
        {
          sub_100016C60(0, &qword_100923500);
          sub_100753E34();
        }

        sub_100743224();

        v31 = *&v25[v28];
        sub_10074F294();
        v32 = sub_10074F254();
        (v36)(v10, v39);
        [v31 setContentMode:v32];

        v33 = *&v25[v28];
        v34 = v38;

        sub_1007433C4();
        sub_1005BC328(&qword_100925570, &type metadata accessor for ArtworkView);
        sub_100744204();
      }
    }
  }

  return result;
}

id sub_1005BBF74()
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  if (qword_100921A40 != -1)
  {
    swift_once();
  }

  sub_1005BC328(&qword_10093FF08, type metadata accessor for VideoCardCollectionViewCell);
  sub_100750D54();
  v1 = v0;
  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 absoluteDimension:v1];
  v6 = [v4 absoluteDimension:v3];
  v7 = [objc_opt_self() sizeWithWidthDimension:v5 heightDimension:v6];

  v8 = [objc_opt_self() itemWithLayoutSize:v7];
  v9 = objc_opt_self();
  sub_10000C518(&unk_1009231A0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007A5CF0;
  *(v10 + 32) = v8;
  sub_100016C60(0, &qword_100923478);
  v11 = v8;
  isa = sub_100753294().super.isa;

  v13 = [v9 verticalGroupWithLayoutSize:v7 subitems:isa];

  return v13;
}

void sub_1005BC1AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27VideoCardCollectionViewCell_videoCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    type metadata accessor for VideoView();
    sub_1005BC328(&unk_100923110, type metadata accessor for VideoView);
    sub_100744274();
  }

  v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension13VideoCardView_lockupView);
  v5 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
  v6 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView];
  v7 = v4;
  v8 = v6;
  sub_100743204();

  v9 = *&v4[v5];
  sub_1007433C4();
  sub_1005BC328(&qword_100925570, &type metadata accessor for ArtworkView);
  v10 = v9;
  sub_100744274();
}

uint64_t sub_1005BC328(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1005BC380(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 setAlpha:0.0];
  }

  else
  {
    __break(1u);
  }
}

void sub_1005BC4A4(void *a1)
{
  v2 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 view];
    if (v4)
    {
      v5 = v4;
      [v4 setAlpha:1.0];

      v6 = objc_opt_self();
      v7 = swift_allocObject();
      *(v7 + 16) = v3;
      v16 = sub_1005BC6D8;
      v17 = v7;
      v12 = _NSConcreteStackBlock;
      v13 = 1107296256;
      v14 = sub_1000CF7B0;
      v15 = &unk_10087C998;
      v8 = _Block_copy(&v12);
      v9 = v3;

      v10 = swift_allocObject();
      *(v10 + 16) = a1;
      v16 = sub_10049FB6C;
      v17 = v10;
      v12 = _NSConcreteStackBlock;
      v13 = 1107296256;
      v14 = sub_100144DD8;
      v15 = &unk_10087C9E8;
      v11 = _Block_copy(&v12);
      swift_unknownObjectRetain();

      [v6 animateWithDuration:v8 animations:v11 completion:0.3];
      _Block_release(v11);
      _Block_release(v8);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1005BC6A0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005BC6E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1005BC6F8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005BC738()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009212C8 != -1)
  {
    swift_once();
  }

  v4 = sub_100750534();
  v5 = sub_10000D0FC(v4, qword_100981590);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  return sub_100747954();
}

void sub_1005BC8B8()
{
  v0 = [objc_opt_self() systemFontOfSize:10.0 weight:UIFontWeightBold];
  v1 = [objc_opt_self() configurationWithFont:v0];

  qword_10093FF38 = v1;
}

uint64_t sub_1005BC93C()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  v2 = (__chkstk_darwin)();
  v20[0] = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v21 = v20 - v5;
  __chkstk_darwin(v4);
  v7 = v20 - v6;
  v8 = sub_1007479B4();
  sub_100039C50(v8, qword_10093FF40);
  v20[2] = sub_10000D0FC(v8, qword_10093FF40);
  if (qword_1009212C0 != -1)
  {
    swift_once();
  }

  v9 = sub_100750534();
  v10 = sub_10000D0FC(v9, qword_100981578);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v20[1] = v7;
  if (qword_1009212D8 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v9, qword_1009815C0);
  v15 = v21;
  v11(v21, v14, v9);
  v13(v15, v12, v0);
  v16 = v20[0];
  v11(v20[0], v14, v9);
  v13(v16, v12, v0);
  v23[3] = sub_100750B04();
  v23[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v23);
  v22[3] = v0;
  v22[4] = &protocol witness table for FontSource;
  v17 = sub_10000D134(v22);
  (*(v1 + 16))(v17, v16, v0);
  sub_100750B14();
  (*(v1 + 8))(v16, v0);
  v18 = [objc_opt_self() systemFontOfSize:15.0 weight:UIFontWeightBold];
  [objc_opt_self() configurationWithFont:v18];

  return sub_100747944();
}

uint64_t sub_1005BCD4C()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v20[0] = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v21 = v20 - v5;
  __chkstk_darwin(v4);
  v7 = v20 - v6;
  v8 = sub_1007479B4();
  sub_100039C50(v8, qword_10093FF58);
  v20[2] = sub_10000D0FC(v8, qword_10093FF58);
  if (qword_1009212C0 != -1)
  {
    swift_once();
  }

  v9 = sub_100750534();
  v10 = sub_10000D0FC(v9, qword_100981578);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v20[1] = v7;
  if (qword_1009212D8 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v9, qword_1009815C0);
  v15 = v21;
  v11(v21, v14, v9);
  v13(v15, v12, v0);
  v16 = v20[0];
  v11(v20[0], v14, v9);
  v13(v16, v12, v0);
  v23[3] = sub_100750B04();
  v23[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v23);
  v22[3] = v0;
  v22[4] = &protocol witness table for FontSource;
  v17 = sub_10000D134(v22);
  (*(v1 + 16))(v17, v16, v0);
  sub_100750B14();
  (*(v1 + 8))(v16, v0);
  sub_100321184();
  v18 = UIFontTextStyleFootnote;
  sub_100753A64();

  return sub_100747944();
}

uint64_t sub_1005BD130()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v21[0] = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v22 = v21 - v4;
  __chkstk_darwin(v5);
  v7 = v21 - v6;
  v8 = sub_1007479B4();
  sub_100039C50(v8, qword_10093FF70);
  v21[2] = sub_10000D0FC(v8, qword_10093FF70);
  if (qword_100921300 != -1)
  {
    swift_once();
  }

  v9 = sub_100750534();
  v10 = sub_10000D0FC(v9, qword_100981638);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v21[1] = v7;
  if (qword_1009212D8 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v9, qword_1009815C0);
  v15 = v22;
  v11(v22, v14, v9);
  v13(v15, v12, v0);
  v16 = v21[0];
  v11(v21[0], v14, v9);
  v13(v16, v12, v0);
  v24[3] = sub_100750B04();
  v24[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v24);
  v23[3] = v0;
  v23[4] = &protocol witness table for FontSource;
  v17 = sub_10000D134(v23);
  (*(v1 + 16))(v17, v16, v0);
  sub_100750B14();
  (*(v1 + 8))(v16, v0);
  sub_100321184();
  v18 = UIFontTextStyleFootnote;
  sub_100753A64();

  v19 = v18;
  sub_100753A64();

  return sub_100747944();
}

uint64_t sub_1005BD540()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v24[0] = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v25 = v24 - v4;
  __chkstk_darwin(v5);
  v7 = v24 - v6;
  v8 = sub_1007479B4();
  sub_100039C50(v8, qword_10093FF88);
  v24[2] = sub_10000D0FC(v8, qword_10093FF88);
  if (qword_1009212C0 != -1)
  {
    swift_once();
  }

  v9 = sub_100750534();
  v10 = sub_10000D0FC(v9, qword_100981578);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v24[1] = v7;
  if (qword_1009212D8 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v9, qword_1009815C0);
  v15 = v25;
  v11(v25, v14, v9);
  v13(v15, v12, v0);
  v16 = v24[0];
  v11(v24[0], v14, v9);
  v13(v16, v12, v0);
  v27[3] = sub_100750B04();
  v27[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v27);
  v26[3] = v0;
  v26[4] = &protocol witness table for FontSource;
  v17 = sub_10000D134(v26);
  (*(v1 + 16))(v17, v16, v0);
  sub_100750B14();
  (*(v1 + 8))(v16, v0);
  v18 = objc_opt_self();
  v19 = [v18 systemFontOfSize:36.0 weight:UIFontWeightSemibold];
  v20 = objc_opt_self();
  v21 = [v20 configurationWithFont:v19];

  v22 = [v18 systemFontOfSize:15.0 weight:UIFontWeightBold];
  [v20 configurationWithFont:v22];

  return sub_100747944();
}

uint64_t sub_1005BD9D8(unsigned int *a1, double *a2, double a3)
{
  v6 = sub_100743B04();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *a1, v6, v8);
  v11 = [objc_opt_self() systemFontOfSize:a3 weight:*a2];
  v12 = [objc_opt_self() configurationWithFont:v11];

  v13 = sub_100743AE4();
  (*(v7 + 8))(v10, v6);
  return v13;
}

uint64_t sub_1005BDB3C()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v20[0] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v21 = v20 - v4;
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  v8 = sub_1007479B4();
  sub_100039C50(v8, qword_100982798);
  v20[2] = sub_10000D0FC(v8, qword_100982798);
  if (qword_1009212E8 != -1)
  {
    swift_once();
  }

  v9 = sub_100750534();
  v10 = sub_10000D0FC(v9, qword_1009815F0);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v20[1] = v7;
  if (qword_1009212D8 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v9, qword_1009815C0);
  v15 = v21;
  v11(v21, v14, v9);
  v13(v15, v12, v0);
  v16 = v20[0];
  v11(v20[0], v14, v9);
  v13(v16, v12, v0);
  v23[3] = sub_100750B04();
  v23[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v23);
  v22[3] = v0;
  v22[4] = &protocol witness table for FontSource;
  v17 = sub_10000D134(v22);
  (*(v1 + 16))(v17, v16, v0);
  sub_100750B14();
  (*(v1 + 8))(v16, v0);
  sub_100321184();
  v18 = UIFontTextStyleFootnote;
  sub_100753A64();

  return sub_100747944();
}

uint64_t sub_1005BDF20()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v20[0] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v21 = v20 - v4;
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  v8 = sub_1007479B4();
  sub_100039C50(v8, qword_1009827B0);
  v20[2] = sub_10000D0FC(v8, qword_1009827B0);
  if (qword_1009212F8 != -1)
  {
    swift_once();
  }

  v9 = sub_100750534();
  v10 = sub_10000D0FC(v9, qword_100981620);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v20[1] = v7;
  if (qword_1009212D8 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v9, qword_1009815C0);
  v15 = v21;
  v11(v21, v14, v9);
  v13(v15, v12, v0);
  v16 = v20[0];
  v11(v20[0], v14, v9);
  v13(v16, v12, v0);
  v23[3] = sub_100750B04();
  v23[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v23);
  v22[3] = v0;
  v22[4] = &protocol witness table for FontSource;
  v17 = sub_10000D134(v22);
  (*(v1 + 16))(v17, v16, v0);
  sub_100750B14();
  (*(v1 + 8))(v16, v0);
  sub_100321184();
  v18 = UIFontTextStyleFootnote;
  sub_100753A64();

  return sub_100747944();
}

uint64_t sub_1005BE2FC()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v20[0] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v21 = v20 - v4;
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  v8 = sub_1007479B4();
  sub_100039C50(v8, qword_1009827C8);
  v20[2] = sub_10000D0FC(v8, qword_1009827C8);
  if (qword_1009212F0 != -1)
  {
    swift_once();
  }

  v9 = sub_100750534();
  v10 = sub_10000D0FC(v9, qword_100981608);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v20[1] = v7;
  if (qword_1009212D8 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v9, qword_1009815C0);
  v15 = v21;
  v11(v21, v14, v9);
  v13(v15, v12, v0);
  v16 = v20[0];
  v11(v20[0], v14, v9);
  v13(v16, v12, v0);
  v23[3] = sub_100750B04();
  v23[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v23);
  v22[3] = v0;
  v22[4] = &protocol witness table for FontSource;
  v17 = sub_10000D134(v22);
  (*(v1 + 16))(v17, v16, v0);
  sub_100750B14();
  (*(v1 + 8))(v16, v0);
  sub_100321184();
  v18 = UIFontTextStyleFootnote;
  sub_100753A64();

  return sub_100747944();
}

uint64_t sub_1005BE6E0()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v22[0] = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v23 = v22 - v4;
  __chkstk_darwin(v5);
  v7 = v22 - v6;
  v8 = sub_1007479B4();
  sub_100039C50(v8, qword_10093FFA0);
  v22[2] = sub_10000D0FC(v8, qword_10093FFA0);
  if (qword_1009212D0 != -1)
  {
    swift_once();
  }

  v9 = sub_100750534();
  v10 = sub_10000D0FC(v9, qword_1009815A8);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v22[1] = v7;
  if (qword_1009212D8 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v9, qword_1009815C0);
  v15 = v23;
  v11(v23, v14, v9);
  v13(v15, v12, v0);
  v16 = v22[0];
  v11(v22[0], v14, v9);
  v13(v16, v12, v0);
  v27[3] = sub_100750B04();
  v27[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v27);
  v25 = v0;
  v26 = &protocol witness table for FontSource;
  v17 = sub_10000D134(v24);
  (*(v1 + 16))(v17, v16, v0);
  sub_100750B14();
  (*(v1 + 8))(v16, v0);
  sub_100321184();
  v18 = UIFontTextStyleFootnote;
  sub_100753A64();

  v19 = sub_10074F3F4();
  v25 = v19;
  v26 = sub_1001FC0C4();
  v20 = sub_10000D134(v24);
  (*(*(v19 - 8) + 104))(v20, enum case for Feature.glass_offer_button_2025A(_:), v19);
  sub_10074FC74();
  sub_10000C620(v24);
  return sub_100747944();
}

id sub_1005BEB38()
{
  v0 = sub_10056003C(0xD000000000000013, 0x80000001007862A0, 0);
  v1 = [v0 imageWithRenderingMode:2];

  return v1;
}

uint64_t sub_1005BEB9C()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v21[0] = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v22 = v21 - v4;
  __chkstk_darwin(v5);
  v7 = v21 - v6;
  v8 = sub_1007479B4();
  sub_100039C50(v8, qword_10093FFB8);
  v21[2] = sub_10000D0FC(v8, qword_10093FFB8);
  if (qword_100921300 != -1)
  {
    swift_once();
  }

  v9 = sub_100750534();
  v10 = sub_10000D0FC(v9, qword_100981638);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v21[1] = v7;
  if (qword_1009212D8 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v9, qword_1009815C0);
  v15 = v22;
  v11(v22, v14, v9);
  v13(v15, v12, v0);
  v16 = v21[0];
  v11(v21[0], v14, v9);
  v13(v16, v12, v0);
  v24[3] = sub_100750B04();
  v24[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v24);
  v23[3] = v0;
  v23[4] = &protocol witness table for FontSource;
  v17 = sub_10000D134(v23);
  (*(v1 + 16))(v17, v16, v0);
  sub_100750B14();
  (*(v1 + 8))(v16, v0);
  sub_100321184();
  v18 = UIFontTextStyleFootnote;
  sub_100753A64();

  v19 = v18;
  sub_100753A64();

  return sub_100747944();
}

uint64_t sub_1005BEFA4()
{
  v0 = sub_100743B04();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.icloudAndArrowDown(_:), v0, v2);
  sub_100321184();
  v5 = sub_100753A64();
  v6 = sub_100743AE4();

  (*(v1 + 8))(v4, v0);
  return v6;
}

uint64_t sub_1005BF0D4()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v21[0] = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v22 = v21 - v4;
  __chkstk_darwin(v5);
  v7 = v21 - v6;
  v8 = sub_1007479B4();
  sub_100039C50(v8, qword_1009827E0);
  v21[2] = sub_10000D0FC(v8, qword_1009827E0);
  if (qword_1009212F0 != -1)
  {
    swift_once();
  }

  v9 = sub_100750534();
  v10 = sub_10000D0FC(v9, qword_100981608);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v21[1] = v7;
  if (qword_1009212D8 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v9, qword_1009815C0);
  v15 = v22;
  v11(v22, v14, v9);
  v13(v15, v12, v0);
  v16 = v21[0];
  v11(v21[0], v14, v9);
  v13(v16, v12, v0);
  v24[3] = sub_100750B04();
  v24[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v24);
  v23[3] = v0;
  v23[4] = &protocol witness table for FontSource;
  v17 = sub_10000D134(v23);
  (*(v1 + 16))(v17, v16, v0);
  sub_100750B14();
  (*(v1 + 8))(v16, v0);
  sub_100321184();
  v18 = UIFontTextStyleHeadline;
  sub_100753A64();

  v19 = UIFontTextStyleFootnote;
  sub_100753A64();

  return sub_100747944();
}

id sub_1005BF4EC()
{
  v0 = sub_100743B04();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.icloudAndArrowDown(_:), v0, v2);
  sub_100321184();
  v5 = sub_100753A64();
  v6 = sub_100743AE4();

  (*(v1 + 8))(v4, v0);
  v7 = [v6 imageWithRenderingMode:2];

  return v7;
}

uint64_t sub_1005BF640()
{
  v0 = sub_100743B04();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.pauseFill(_:), v0, v2);
  if (qword_100921980 != -1)
  {
    swift_once();
  }

  v5 = sub_100743AE4();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_1005BF77C()
{
  sub_1005BFA50(v0 + OBJC_IVAR____TtC22SubscribePageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver()
{
  result = qword_100940000;
  if (!qword_100940000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005BF834()
{
  sub_10003DEB8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1005BF8CC(void *a1)
{
  v2 = v1;
  v4 = sub_10000C518(&unk_100923C00);
  __chkstk_darwin(v4 - 8);
  v6 = &v12[-v5];
  v13 = a1;
  sub_10003E054();
  v7 = a1;
  sub_10000C518(&unk_1009400B0);
  if (swift_dynamicCast())
  {
    sub_10000C620(v12);
    sub_100746994();
    v8 = sub_1007417F4();
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  }

  else
  {
    v9 = sub_1007417F4();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC22SubscribePageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  swift_beginAccess();
  sub_10003E1A0(v6, v2 + v10);
  return swift_endAccess();
}

uint64_t sub_1005BFA50(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100923C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005BFB04(uint64_t a1, void *a2, char *a3)
{
  v62 = a3;
  v69 = sub_100749664();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v5;
  __chkstk_darwin(v6);
  v67 = v50 - v7;
  v8 = sub_10074CD14();
  v60 = *(v8 - 8);
  __chkstk_darwin(v8);
  v59 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100748CE4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100750534();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_100749644();
  v63 = *(v71 - 8);
  __chkstk_darwin(v71);
  v56 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v50 - v20;
  v70 = a2;
  sub_1002E9AEC(a1, a2, v50 - v20);
  v62 = v21;
  sub_100749624();
  v57 = sub_100750F34();
  swift_allocObject();
  v58 = sub_100750F14();
  sub_100745724();
  v22 = (*(v11 + 88))(v13, v10);
  v72 = v14;
  v64 = v15;
  v61 = v8;
  if (v22 == enum case for PrivacyCategoryStyle.productPage(_:))
  {
    if (qword_100921278 != -1)
    {
      swift_once();
    }

    v23 = qword_1009814A0;
LABEL_9:
    v24 = sub_10000D0FC(v14, v23);
    (*(v15 + 16))(v17, v24, v14);
    goto LABEL_13;
  }

  if (v22 == enum case for PrivacyCategoryStyle.detailPage(_:))
  {
    if (qword_100921280 != -1)
    {
      swift_once();
    }

    v23 = qword_1009814B8;
    goto LABEL_9;
  }

  if (qword_100921278 != -1)
  {
    swift_once();
  }

  v25 = sub_10000D0FC(v14, qword_1009814A0);
  (*(v15 + 16))(v17, v25, v14);
  (*(v11 + 8))(v13, v10);
LABEL_13:
  v26 = v70;
  v50[1] = a1;
  sub_100038D38();
  v27 = [v26 traitCollection];
  v28 = sub_100753C14();

  sub_100745734();
  v29 = sub_10074F3F4();
  v79[3] = v29;
  v30 = sub_1005C1470(&qword_10092AC70, &type metadata accessor for Feature);
  v55 = v17;
  v53 = v30;
  v79[4] = v30;
  v31 = sub_10000D134(v79);
  v32 = *(*(v29 - 8) + 104);
  v52 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v51 = v32;
  v32(v31);
  v33 = v28;
  sub_10074FC74();
  sub_10000C620(v79);
  v34 = v59;
  v54 = v33;
  sub_10074CD04();
  sub_10074CCE4();
  v35 = *(v60 + 8);
  v36 = v61;
  v35(v34, v61);
  if (qword_100921288 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v72, qword_1009814D0);
  v37 = [v70 traitCollection];
  v38 = sub_100753C14();

  v78[0] = sub_100745754();
  sub_10000C518(&unk_100928A70);
  sub_10010ABC4();
  sub_100752FF4();

  v78[3] = v29;
  v78[4] = v53;
  v39 = sub_10000D134(v78);
  v51(v39, v52, v29);
  v70 = v38;
  sub_10074FC74();
  sub_10000C620(v78);
  sub_10074CD04();
  sub_10074CCE4();
  v35(v34, v36);
  v40 = v63;
  v41 = v62;
  (*(v63 + 16))(v56, v62, v71);
  v76 = v57;
  v77 = &protocol witness table for LayoutViewPlaceholder;
  v75 = v58;
  sub_10000C824(v79, v74);
  sub_10000C824(v78, v73);

  v42 = v67;
  sub_100749654();
  v43 = v68;
  v44 = v66;
  v45 = v69;
  (*(v68 + 16))(v66, v42, v69);
  v46 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v47 = swift_allocObject();
  (*(v43 + 32))(v47 + v46, v44, v45);
  swift_allocObject();
  v48 = sub_100750EF4();

  (*(v43 + 8))(v42, v45);
  sub_10000C620(v78);
  sub_10000C620(v79);
  (*(v64 + 8))(v55, v72);
  (*(v40 + 8))(v41, v71);
  return v48;
}

double sub_1005C0530(uint64_t a1)
{
  v2 = sub_100746D54();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v100 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_100747C14();
  v98 = *(v120 - 8);
  __chkstk_darwin(v120);
  v119 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074CD14();
  v112 = *(v6 - 8);
  v113 = v6;
  __chkstk_darwin(v6);
  v111 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_100750534();
  v107 = *(v109 - 8);
  __chkstk_darwin(v109);
  v106 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100745FF4();
  v101 = *(v9 - 1);
  v102 = v9;
  __chkstk_darwin(v9);
  v114 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v90 - v12;
  v14 = sub_100746D34();
  v104 = *(v14 - 8);
  v105 = v14;
  __chkstk_darwin(v14);
  v99 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v108 = (&v90 - v17);
  v18 = sub_10074F704();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100743804();
  sub_1005C1470(&qword_100926D68, &type metadata accessor for PrivacyType);
  v22 = a1;
  sub_1007468B4();
  v23 = v131[0];
  if (!v131[0])
  {
    return 0.0;
  }

  v94 = v3;
  v95 = v2;
  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  v24 = *(v19 + 8);
  v116 = v21;
  v117 = v19 + 8;
  v118 = v18;
  v115 = v24;
  v24(v21, v18);
  v25 = sub_1007437F4();
  sub_1007437C4();
  v123 = v22;
  v26 = sub_10007DC04();
  sub_10029F770(v25, v13, v26, v108);
  swift_unknownObjectRelease();

  v27 = v101;
  v28 = v102;
  v29 = *(v101 + 8);
  v122 = v13;
  v29(v13, v102);
  v30 = sub_100750F34();
  swift_allocObject();
  v31 = sub_100750F14();
  swift_allocObject();
  v92 = sub_100750F14();
  swift_allocObject();
  v91 = sub_100750F14();
  sub_100746D14();
  v121 = v30;
  swift_allocObject();
  v103 = sub_100750F14();
  v32 = v114;
  v110 = v23;
  sub_1007437C4();
  v33 = (*(v27 + 88))(v32, v28);
  v93 = v31;
  if (v33 != enum case for PrivacyTypeStyle.productPage(_:))
  {
    v38 = v28;
    v39 = v106;
    if (v33 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v33 == enum case for PrivacyTypeStyle.detailPage(_:))
    {
      if (qword_100921260 != -1)
      {
        swift_once();
      }

      v43 = v109;
      v44 = sub_10000D0FC(v109, qword_100981458);
      (*(v107 + 16))(v39, v44, v43);
      v42 = 4;
    }

    else
    {
      if (qword_100921258 != -1)
      {
        swift_once();
      }

      v40 = v109;
      v41 = sub_10000D0FC(v109, qword_100981440);
      (*(v107 + 16))(v39, v41, v40);
      v29(v114, v38);
      v42 = 1;
    }

    v114 = v42;
    goto LABEL_15;
  }

  v34 = v106;
  if (qword_100921258 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v35 = v109;
    v36 = sub_10000D0FC(v109, qword_100981440);
    (*(v107 + 16))(v34, v36, v35);
    v114 = 1;
LABEL_15:
    sub_100038D38();
    swift_getKeyPath();
    sub_100746914();

    v45 = v131[0];
    v46 = sub_100753C14();

    sub_1007437D4();
    v47 = sub_10074F3F4();
    v131[3] = v47;
    v102 = sub_1005C1470(&qword_10092AC70, &type metadata accessor for Feature);
    v131[4] = v102;
    v48 = sub_10000D134(v131);
    v49 = *(v47 - 8);
    v50 = *(v49 + 104);
    LODWORD(v101) = enum case for Feature.measurement_with_labelplaceholder(_:);
    v96 = v49 + 104;
    v97 = v50;
    v50(v48);
    v51 = v46;
    sub_10074FC74();
    sub_10000C620(v131);
    v52 = v111;
    v90 = v51;
    sub_10074CD04();
    sub_10074CCE4();
    v53 = v113;
    v112 = *(v112 + 8);
    (v112)(v52, v113);
    if (qword_100921268 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v109, qword_100981470);
    swift_getKeyPath();
    sub_100746914();

    v54 = v130[0];
    v55 = sub_100753C14();

    sub_1007437E4();
    v130[3] = v47;
    v130[4] = v102;
    v56 = sub_10000D134(v130);
    v97(v56, v101, v47);
    v34 = v55;
    sub_10074FC74();
    sub_10000C620(v130);
    sub_10074CD04();
    sub_10074CCE4();
    (v112)(v52, v53);
    v57 = sub_1007437A4();
    v58 = v57;
    if (v57 >> 62)
    {
      v88 = v57;
      v89 = sub_100754664();
      v58 = v88;
      v59 = v89;
    }

    else
    {
      v59 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v102 = v34;
    if (!v59)
    {
      break;
    }

    v60 = v58;
    v114 = type metadata accessor for PrivacyCategoryView();
    if (v59 >= 1)
    {
      v61 = 0;
      v62 = v60;
      v111 = (v60 & 0xC000000000000001);
      v63 = _swiftEmptyArrayStorage;
      v64 = (v98 + 8);
      v112 = v59;
      v113 = v60;
      v65 = v120;
      do
      {
        if (v111)
        {
          v66 = sub_100754574();
        }

        else
        {
          v66 = *(v62 + 8 * v61 + 32);
        }

        v67 = v116;
        v68 = v119;
        sub_100746884();
        sub_100747B84();
        v69 = v67;
        v70 = *v64;
        (*v64)(v68, v65);
        sub_10074F5C4();
        v72 = v71;
        v115(v69, v118);
        sub_100746884();
        v73 = sub_100747B94();
        v70(v68, v65);
        v74 = type metadata accessor for SnapshotPageTraitEnvironment();
        v75 = objc_allocWithZone(v74);
        v76 = &v75[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
        *v76 = v72;
        *(v76 + 1) = 0x7FEFFFFFFFFFFFFFLL;
        *&v75[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v73;
        v129.receiver = v75;
        v129.super_class = v74;
        v77 = objc_msgSendSuper2(&v129, "init");
        v78 = sub_1005BFB04(v66, v77, v114);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_100254E80(0, v63[2] + 1, 1, v63);
        }

        v80 = v63[2];
        v79 = v63[3];
        if (v80 >= v79 >> 1)
        {
          v63 = sub_100254E80((v79 > 1), v80 + 1, 1, v63);
        }

        ++v61;

        v127 = v121;
        v128 = &protocol witness table for LayoutViewPlaceholder;
        *&v126 = v78;
        v63[2] = v80 + 1;
        sub_100012160(&v126, &v63[5 * v80 + 4]);
        v62 = v113;
      }

      while (v112 != v61);
      break;
    }

    __break(1u);
LABEL_34:
    swift_once();
  }

  swift_getKeyPath();
  sub_100746914();

  v81 = v126;
  sub_100751364();

  v82 = v121;
  swift_allocObject();
  v83 = sub_100750F14();
  (*(v104 + 16))(v99, v108, v105);
  v127 = v82;
  v128 = &protocol witness table for LayoutViewPlaceholder;
  *&v126 = v93;
  v125[23] = v82;
  v125[24] = &protocol witness table for LayoutViewPlaceholder;
  v125[19] = &protocol witness table for LayoutViewPlaceholder;
  v125[20] = v92;
  v125[18] = v82;
  v125[14] = &protocol witness table for LayoutViewPlaceholder;
  v125[15] = v91;
  v125[13] = v82;
  v125[9] = &protocol witness table for LayoutViewPlaceholder;
  v125[10] = v83;
  v122 = v83;
  v125[8] = v82;
  v125[5] = v103;
  sub_10000C824(v131, v125);
  sub_10000C824(v130, &v124);

  sub_1007437C4();
  v84 = v100;
  sub_100746D44();
  swift_getKeyPath();
  sub_100746914();

  sub_1005C1470(&unk_1009400D0, &type metadata accessor for PrivacyTypeLayout);
  v85 = v95;
  sub_100750404();
  v37 = v86;

  swift_unknownObjectRelease();

  (*(v94 + 8))(v84, v85);
  sub_10000C620(v130);
  sub_10000C620(v131);
  (*(v107 + 8))(v106, v109);
  (*(v104 + 8))(v108, v105);
  return v37;
}

uint64_t sub_1005C1470(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005C14B8()
{
  v1 = sub_100749664();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1005C1540()
{
  sub_100749664();

  return sub_1002EA358();
}

uint64_t sub_1005C15C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v55 = a2;
  v51 = sub_100750304();
  v48 = *(v51 - 8);
  __chkstk_darwin(v51);
  v54 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v56 = &v42 - v4;
  v5 = sub_10074F704();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&qword_100940108);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_10000C518(&qword_100928550);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v42 - v16;
  __chkstk_darwin(v18);
  v20 = &v42 - v19;
  v65 = vdupq_n_s64(0x4040000000000000uLL);
  __asm { FMOV            V0.2D, #28.0 }

  v62 = _Q0;
  sub_10000C518(&unk_100923AE0);
  type metadata accessor for CGSize(0);
  sub_100743494();
  v65 = xmmword_1007CC460;
  v62 = xmmword_1007CC470;
  sub_100743494();
  v26 = *(v12 + 16);
  v49 = v14;
  v46 = v20;
  v26(v14, v20, v11);
  v47 = v17;
  v26(v10, v17, v11);
  v50 = v12;
  v27 = *(v12 + 56);
  v52 = v10;
  v53 = v11;
  v27(v10, 0, 1, v11);
  sub_100747B84();
  sub_10074F664();
  v29 = v28;
  (*(v43 + 8))(v7, v44);
  v66 = &type metadata for CGFloat;
  v67 = &protocol witness table for CGFloat;
  v65.i64[0] = v29;
  v63 = &type metadata for Double;
  v64 = &protocol witness table for Double;
  v61[14] = &protocol witness table for Double;
  *&v62 = 0x4048000000000000;
  v61[13] = &type metadata for Double;
  v61[10] = 0x4028000000000000;
  if (qword_100920E98 != -1)
  {
    swift_once();
  }

  v30 = sub_100750534();
  v45 = sub_10000D0FC(v30, qword_100980918);
  v31 = *(*(v30 - 8) + 16);
  v32 = v56;
  v31(v56, v45, v30);
  v33 = enum case for FontSource.useCase(_:);
  v34 = v48;
  v35 = *(v48 + 104);
  v36 = v51;
  v35(v32, enum case for FontSource.useCase(_:), v51);
  v61[9] = &protocol witness table for Double;
  v61[8] = &type metadata for Double;
  v61[5] = 0;
  v37 = v54;
  v31(v54, v45, v30);
  v35(v37, v33, v36);
  v61[3] = sub_100750B04();
  v61[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v61);
  v59 = v36;
  v60 = &protocol witness table for FontSource;
  v38 = sub_10000D134(v58);
  (*(v34 + 16))(v38, v37, v36);
  sub_100750B14();
  (*(v34 + 8))(v37, v36);
  v60 = &protocol witness table for Double;
  v59 = &type metadata for Double;
  v58[0] = 0x4020000000000000;
  v57[3] = sub_1007507D4();
  v57[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v57);
  sub_1007507C4();
  sub_100743C64();
  v39 = *(v50 + 8);
  v40 = v53;
  v39(v47, v53);
  return (v39)(v46, v40);
}

uint64_t sub_1005C1BDC(uint64_t a1, uint64_t a2)
{
  v113 = a2;
  v127 = sub_100750304();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_1009400E0);
  __chkstk_darwin(v4 - 8);
  v132 = &v108 - v5;
  v137 = sub_100751604();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v135 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_10074F704();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v145 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&qword_10093FDB0);
  __chkstk_darwin(v8 - 8);
  v112 = &v108 - v9;
  v115 = sub_10000C518(&unk_1009400F0);
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v138 = &v108 - v10;
  v128 = sub_10074EAB4();
  v130 = *(v128 - 8);
  __chkstk_darwin(v128);
  v142 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_100749A94();
  v146 = *(v143 - 8);
  __chkstk_darwin(v143);
  v111 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v144 = &v108 - v14;
  v141 = sub_10000C518(&unk_100925370);
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v131 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v139 = &v108 - v17;
  v18 = sub_10000C518(&unk_100930810);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v108 - v20;
  v22 = sub_100747C14();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100743CB4();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746884();
  sub_1005C15C8(v25, v29);
  v30 = *(v23 + 8);
  v121 = v25;
  v31 = v25;
  v32 = v144;
  v124 = v22;
  v123 = v23 + 8;
  v118 = v30;
  v30(v31, v22);
  v33 = v26;
  v34 = a1;
  v35 = OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_layoutMetrics;
  v36 = v129;
  swift_beginAccess();
  v37 = *(v27 + 40);
  v120 = v35;
  v119 = v29;
  v116 = v33;
  v38 = v33;
  v39 = v142;
  v122 = v27 + 40;
  v117 = v37;
  v37(&v36[v35], v29, v38);
  swift_endAccess();
  sub_100746944();
  sub_1007525C4();
  (*(v19 + 8))(v21, v18);
  v40 = v139;
  sub_1007468F4();
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();

  v147 = v34;
  v41 = sub_10007DC04();
  sub_10000C824(v151, &v149);
  sub_10000C518(&qword_1009242A0);
  sub_10074ECD4();
  v42 = &selRef_initWithTitle_style_target_action_;
  v43 = &selRef_viewSafeAreaInsetsDidChange;
  if (!swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    (*(v130 + 8))(v39, v128);
    (*(v146 + 8))(v32, v143);
    (*(v140 + 8))(v40, v141);
    sub_10000C620(v151);
    v54 = v135;
    v45 = v36;
    v55 = &stru_1008F2000;
    goto LABEL_24;
  }

  v44 = v148;
  (*(v140 + 16))(v131, v40, v141);
  sub_100752DF4();
  sub_100752994();
  v45 = v36;
  v46 = *&v36[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_textLabel];
  sub_10074ECB4();
  sub_100745BD4();

  v47 = *&v45[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_separatorView];
  v48 = v111;
  sub_100749A44();
  sub_1005C2FB8(&unk_100929800, &type metadata accessor for ComponentLayoutOptions);
  v49 = v143;
  v50 = sub_100754324();
  v51 = *(v146 + 8);
  v146 += 8;
  v110 = v51;
  v51(v48, v49);
  [v47 setHidden:v50 & 1];
  v131 = v44;
  v52 = sub_10074EC84();
  v109 = v46;
  if ((v52 & 2) != 0)
  {
    [v46 _setTextColorFollowsTintColor:1];
  }

  else
  {
    [v46 _setTextColorFollowsTintColor:0];
    sub_10000D198();
    v53 = sub_100753DD4();
    [v46 setTextColor:v53];
  }

  v56 = v130;
  v55 = &stru_1008F2000;
  swift_getObjectType();
  v57 = sub_100321BB0(v41);
  v58 = type metadata accessor for Accessory();
  if (v57)
  {
    v59 = v112;
    swift_storeEnumTagMultiPayload();
    v60 = 0;
  }

  else
  {
    v60 = 1;
    v59 = v112;
  }

  (*(*(v58 - 8) + 56))(v59, v60, 1, v58);
  sub_100644C38(v59, v113);
  sub_10000C8CC(v59, &qword_10093FDB0);
  v61 = [v41 traitCollection];
  v62 = [v61 horizontalSizeClass];

  if (v62 == 1 || (sub_100749A54(), v63 = v143, v64 = sub_100754324(), v110(v48, v63), (v64 & 1) != 0))
  {
    v65 = [v45 contentView];
    [v41 pageMarginInsets];
  }

  else
  {
    v65 = [v45 contentView];
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v70 = v138;
  [v65 setLayoutMargins:{top, left, bottom, right}];

  v71 = sub_10074ECC4();
  if (v71)
  {

    v72 = *&v45[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView];
    if (v72 && ([v72 isHidden] & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    v74 = v71 == 0;
    v75 = sub_1006459BC();
    v76 = v74;
    v70 = v138;
    [v75 setHidden:v76];

    goto LABEL_20;
  }

  v73 = *&v45[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView];
  if (v73 && ![v73 isHidden])
  {
    goto LABEL_19;
  }

LABEL_20:
  sub_100749A54();
  v77 = v143;
  v78 = v144;
  v79 = sub_100754324();
  v80 = v48;
  v81 = v110;
  v110(v80, v77);
  v45[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_isVertical] = (v79 & 1) == 0;
  if (v79)
  {
    v82 = 1;
  }

  else
  {
    v82 = 3;
  }

  [v109 setNumberOfLines:v82];
  [v45 setNeedsLayout];
  [v45 setNeedsLayout];
  swift_unknownObjectRelease();

  (*(v114 + 8))(v70, v115);
  (*(v56 + 8))(v142, v128);
  v81(v78, v77);
  (*(v140 + 8))(v139, v141);
  sub_10000C620(v151);
  v42 = &selRef_initWithTitle_style_target_action_;
  v43 = &selRef_viewSafeAreaInsetsDidChange;
  v54 = v135;
LABEL_24:
  v83 = [v45 v43[482]];
  [v83 v55[39].name];

  swift_getKeyPath();
  sub_100746914();

  sub_1007515B4();
  sub_10074F594();
  v85 = v84;
  sub_10074F5B4();
  v86 = v137;
  v87 = v136;
  if (v85 == 1.0)
  {
    sub_10074F664();
    sub_10074F5B4();
    sub_10074F664();
  }

  else
  {
    sub_10074F634();
    sub_10074F5B4();
    sub_10074F634();
  }

  sub_1007515D4();
  v88 = v132;
  (*(v87 + 16))(v132, v54, v86);
  (*(v87 + 56))(v88, 0, 1, v86);
  sub_1007538F4();
  v89 = ASKDeviceTypeGetCurrent();
  v90 = sub_100753094();
  v92 = v91;
  if (v90 == sub_100753094() && v92 == v93)
  {
  }

  else
  {
    v94 = sub_100754754();

    if ((v94 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  sub_100744FD4();
  sub_1005C2FB8(&unk_100928560, &type metadata accessor for SearchAdAction);
  v45[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_isDisplayingSearchTrendingAction] = sub_1007468D4() & 1;
  v95 = v121;
  sub_100746884();
  v96 = v45;
  v97 = v119;
  sub_1005C15C8(v95, v119);
  v118(v95, v124);
  v98 = v120;
  swift_beginAccess();
  v99 = v97;
  v45 = v96;
  v117(&v96[v98], v99, v116);
  swift_endAccess();
  sub_100645084();
  v100 = *&v96[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_textLabel];
  swift_beginAccess();
  v101 = v125;
  sub_100743CA4();
  swift_endAccess();
  v102.super.isa = [v96 v42[129]];
  isa = v102.super.isa;
  v104 = sub_1007502F4(v102).super.isa;

  (*(v126 + 8))(v101, v127);
  [v100 setFont:v104];

  [v45 setNeedsLayout];
LABEL_32:
  sub_10000C518(&qword_100940100);
  sub_1007468C4();
  if (v150)
  {
    sub_100012160(&v149, v151);
    sub_10000C888(v151, v151[3]);
    v105 = sub_1007489E4();
    if (v105)
    {
    }

    v45[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_hasArtworkToDisplay] = v105 != 0;
    sub_10000C620(v151);
  }

  else
  {
    sub_10000C8CC(&v149, &unk_1009350E0);
  }

  v106 = v145;
  [v45 setNeedsLayout];
  (*(v87 + 8))(v54, v86);
  return (*(v133 + 8))(v106, v134);
}

uint64_t sub_1005C2E40@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_1005C2E9C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

id sub_1005C2F64()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v2, "prepareForReuse");
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_hasArtworkToDisplay) = 0;
  return result;
}

uint64_t sub_1005C2FB8(unint64_t *a1, void (*a2)(uint64_t))
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

double ShelfHeaderLayout.measure(toFit:with:)(void *a1)
{
  v2 = [a1 preferredContentSizeCategory];
  v3 = sub_100753934();

  v9 = sub_1007511A4();
  v10 = &protocol witness table for Margins;
  sub_10000D134(&v8);
  if (v3)
  {
    v4 = sub_1005C66B8;
  }

  else
  {
    v4 = sub_1005C4B9C;
  }

  sub_1005C4830(a1, sub_1002315CC, v4);
  sub_100012160(&v8, v11);
  sub_10000C888(v11, v11[3]);
  sub_100751254();
  v6 = v5;
  sub_10000C620(v11);
  return v6;
}

uint64_t ShelfHeaderLayout.place(at:with:)(void *a1)
{
  v2 = [a1 preferredContentSizeCategory];
  v3 = sub_100753934();

  v7 = sub_1007511A4();
  v8 = &protocol witness table for Margins;
  sub_10000D134(&v6);
  if (v3)
  {
    v4 = sub_1005C66B8;
  }

  else
  {
    v4 = sub_1005C4B9C;
  }

  sub_1005C4830(a1, sub_1002315CC, v4);
  sub_100012160(&v6, v9);
  sub_10000C888(v9, v9[3]);
  sub_100751244();
  return sub_10000C620(v9);
}

double ShelfHeaderLayout.init(metrics:separatorView:eyebrowButton:eyebrowImage:titleLabel:titleImage:subtitleLabel:accessoryView:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v57 = a7;
  v58 = a6;
  v59 = a5;
  v60 = a4;
  v61 = a3;
  v56 = a1;
  sub_1005C7B0C(a1, a9, type metadata accessor for ShelfHeaderLayout.Metrics);
  v55 = a2;
  sub_100016B4C(a2, v62, &unk_100928A00);
  v12 = v63;
  if (v63)
  {
    v13 = v64;
    sub_10000C888(v62, v63);
    v14 = sub_100754284();
    v15 = *(v14 - 8);
    __chkstk_darwin(v14);
    v17 = &v55 - v16;
    sub_100750374();
    v18 = *(v12 - 8);
    if ((*(v18 + 48))(v17, 1, v12) == 1)
    {
      (*(v15 + 8))(v17, v14);
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
    }

    else
    {
      *(&v66 + 1) = v12;
      v67 = v13;
      v19 = sub_10000D134(&v65);
      (*(v18 + 32))(v19, v17, v12);
    }

    sub_10000C620(v62);
  }

  else
  {
    sub_10000C8CC(v62, &unk_100928A00);
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
  }

  v20 = type metadata accessor for ShelfHeaderLayout(0);
  v21 = a9 + v20[5];
  v22 = v66;
  *v21 = v65;
  *(v21 + 16) = v22;
  *(v21 + 32) = v67;
  sub_100016B4C(v61, a9 + v20[6], &unk_100924A60);
  sub_100016B4C(v60, v62, &unk_100928A00);
  v23 = v63;
  if (v63)
  {
    v24 = v64;
    sub_10000C888(v62, v63);
    v25 = sub_100754284();
    v26 = *(v25 - 8);
    __chkstk_darwin(v25);
    v28 = &v55 - v27;
    sub_100750374();
    v29 = *(v23 - 8);
    if ((*(v29 + 48))(v28, 1, v23) == 1)
    {
      (*(v26 + 8))(v28, v25);
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
    }

    else
    {
      *(&v66 + 1) = v23;
      v67 = v24;
      v30 = sub_10000D134(&v65);
      (*(v29 + 32))(v30, v28, v23);
    }

    sub_10000C620(v62);
  }

  else
  {
    sub_10000C8CC(v62, &unk_100928A00);
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
  }

  v31 = a9 + v20[7];
  v32 = v66;
  *v31 = v65;
  *(v31 + 16) = v32;
  *(v31 + 32) = v67;
  sub_10000C824(v59, a9 + v20[8]);
  sub_100016B4C(v58, v62, &unk_100928A00);
  v33 = v63;
  if (v63)
  {
    v34 = v64;
    sub_10000C888(v62, v63);
    v35 = sub_100754284();
    v36 = *(v35 - 8);
    __chkstk_darwin(v35);
    v38 = &v55 - v37;
    sub_100750374();
    v39 = *(v33 - 8);
    if ((*(v39 + 48))(v38, 1, v33) == 1)
    {
      (*(v36 + 8))(v38, v35);
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
    }

    else
    {
      *(&v66 + 1) = v33;
      v67 = v34;
      v41 = sub_10000D134(&v65);
      (*(v39 + 32))(v41, v38, v33);
    }

    v40 = v57;
    sub_10000C620(v62);
  }

  else
  {
    sub_10000C8CC(v62, &unk_100928A00);
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
    v40 = v57;
  }

  v42 = a9 + v20[9];
  v43 = v66;
  *v42 = v65;
  *(v42 + 16) = v43;
  *(v42 + 32) = v67;
  sub_100016B4C(v40, a9 + v20[10], &unk_100924A60);
  sub_100016B4C(a8, v62, &unk_100928A00);
  v44 = v63;
  if (v63)
  {
    v45 = v64;
    sub_10000C888(v62, v63);
    v46 = sub_100754284();
    v47 = *(v46 - 8);
    __chkstk_darwin(v46);
    v49 = &v55 - v48;
    sub_100750374();
    v50 = *(v44 - 8);
    if ((*(v50 + 48))(v49, 1, v44) == 1)
    {
      sub_10000C8CC(a8, &unk_100928A00);
      sub_10000C8CC(v57, &unk_100924A60);
      sub_10000C8CC(v58, &unk_100928A00);
      sub_10000C620(v59);
      sub_10000C8CC(v60, &unk_100928A00);
      sub_10000C8CC(v61, &unk_100924A60);
      sub_10000C8CC(v55, &unk_100928A00);
      sub_1005C4AD0(v56);
      (*(v47 + 8))(v49, v46);
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
    }

    else
    {
      *(&v66 + 1) = v44;
      v67 = v45;
      v51 = sub_10000D134(&v65);
      (*(v50 + 32))(v51, v49, v44);
      sub_10000C8CC(a8, &unk_100928A00);
      sub_10000C8CC(v57, &unk_100924A60);
      sub_10000C8CC(v58, &unk_100928A00);
      sub_10000C620(v59);
      sub_10000C8CC(v60, &unk_100928A00);
      sub_10000C8CC(v61, &unk_100924A60);
      sub_10000C8CC(v55, &unk_100928A00);
      sub_1005C4AD0(v56);
    }

    sub_10000C620(v62);
  }

  else
  {
    sub_10000C8CC(a8, &unk_100928A00);
    sub_10000C8CC(v40, &unk_100924A60);
    sub_10000C8CC(v58, &unk_100928A00);
    sub_10000C620(v59);
    sub_10000C8CC(v60, &unk_100928A00);
    sub_10000C8CC(v61, &unk_100924A60);
    sub_10000C8CC(v55, &unk_100928A00);
    sub_1005C4AD0(v56);
    sub_10000C8CC(v62, &unk_100928A00);
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
  }

  v52 = a9 + v20[11];
  result = *&v65;
  v54 = v66;
  *v52 = v65;
  *(v52 + 16) = v54;
  *(v52 + 32) = v67;
  return result;
}