uint64_t sub_100571A54()
{
  v0 = sub_1001F1160(&qword_100AEA2F8);
  __chkstk_darwin(v0 - 8);
  sub_1007961E4();
  return sub_1007961A4();
}

uint64_t sub_100571B28(uint64_t a1)
{
  v3 = *v1;
  v2[11] = a1;
  v2[12] = v3;
  sub_1007A26F4();
  v2[13] = sub_1007A26E4();
  v5 = sub_1007A2694();
  v2[14] = v5;
  v2[15] = v4;

  return _swift_task_switch(sub_100571BC4, v5, v4);
}

uint64_t sub_100571BC4()
{
  sub_100795A94();
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_100571C60;

  return sub_1004EEC44();
}

uint64_t sub_100571C60()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_100571E1C;
  }

  else
  {

    swift_unknownObjectRelease();
    *(v2 + 80) = *(v2 + 40);
    sub_100571F5C(v2 + 80);
    *(v2 + 72) = *(v2 + 48);
    v6 = v2 + 72;
    sub_100571F5C(v6);
    v3 = *(v6 + 40);
    v4 = *(v6 + 48);
    v5 = sub_100571DAC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100571DAC()
{

  sub_100795D24();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100571E1C()
{
  swift_unknownObjectRelease();

  *(v0 + 64) = *(v0 + 40);
  sub_100571F5C(v0 + 64);
  *(v0 + 56) = *(v0 + 48);
  sub_100571F5C(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100571EBC(uint64_t a1)
{
  v2 = sub_100571F08();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100571F08()
{
  result = qword_100AEA2F0;
  if (!qword_100AEA2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA2F0);
  }

  return result;
}

uint64_t sub_100571F5C(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AE6A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100571FF4(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1007A2254();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = &a1[*a4];
  *v8 = v6;
  v8[1] = v7;
  v9 = a1;

  [v9 setNeedsLayout];
  [v9 layoutIfNeeded];
}

id sub_1005721DC()
{
  v1 = *&v0[OBJC_IVAR___BKLibraryBookshelfInfoBadge_badgeText + 8];
  if (v1)
  {

    v2 = [v0 font];
    if (v2)
    {
      v3 = v2;
      v16 = sub_10000A7C4(0, &unk_100AEB3C0);
      *&v15 = v3;
      sub_1000076D4(&v15, v14);
      v4 = v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1002F61A8(v14, NSFontAttributeName, isUniquelyReferenced_nonNull_native);
    }

    v6 = [v0 textColor];
    if (v6)
    {
      v7 = v6;
      v16 = sub_10000A7C4(0, &qword_100AEEF60);
      *&v15 = v7;
      sub_1000076D4(&v15, v14);
      v8 = v7;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      sub_1002F61A8(v14, NSForegroundColorAttributeName, v9);
    }

    v10 = objc_allocWithZone(NSAttributedString);
    v11 = sub_1007A2214();

    type metadata accessor for Key(0);
    sub_100282B6C();
    isa = sub_1007A2024().super.isa;

    v1 = [v10 initWithString:v11 attributes:isa];
  }

  return v1;
}

void sub_100572430()
{
  if (*&v0[OBJC_IVAR___BKLibraryBookshelfInfoBadge_badgeText + 8])
  {
    v1 = objc_allocWithZone(UILabel);

    v2 = [v1 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v3 = sub_1007A2214();
    [v2 setText:v3];

    v4 = [v0 font];
    [v2 setFont:v4];

    [v2 sizeThatFits:{0.0, 0.0}];
    v6 = v5;

    [v0 frame];
    if (v6 > v7)
    {
      if (*&v0[OBJC_IVAR___BKLibraryBookshelfInfoBadge_fallbackBadgeText + 8])
      {
        v8 = objc_allocWithZone(UILabel);

        v9 = [v8 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
        v10 = sub_1007A2214();
        [v9 setText:v10];

        v11 = [v0 font];
        [v9 setFont:v11];

        [v9 sizeThatFits:{0.0, 0.0}];
      }
    }

    v12 = sub_1007A2214();

    [v0 setText:v12];

    v13.receiver = v0;
    v13.super_class = type metadata accessor for LibraryBookshelfInfoBadge();
    objc_msgSendSuper2(&v13, "layoutSubviews");
  }
}

id sub_1005726C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibraryBookshelfInfoBadge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100572770(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = a1;
    if ([v3 length] >= 1)
    {
      v4 = [v3 attributesAtIndex:0 effectiveRange:0];
      type metadata accessor for Key(0);
      sub_100282B6C();
      v5 = sub_1007A2044();

      if (*(v5 + 16))
      {
        v6 = sub_1002F9CF4(NSFontAttributeName);
        if (v7)
        {
          sub_100007484(*(v5 + 56) + 32 * v6, v18);
          sub_10000A7C4(0, &unk_100AEB3C0);
          if (swift_dynamicCast())
          {
            [v2 setFont:v17];
          }
        }
      }

      if (*(v5 + 16) && (v8 = sub_1002F9CF4(NSForegroundColorAttributeName), (v9 & 1) != 0))
      {
        sub_100007484(*(v5 + 56) + 32 * v8, v18);

        sub_10000A7C4(0, &qword_100AEEF60);
        if (swift_dynamicCast())
        {
          v10 = v17;
          [v2 setTextColor:v10];
        }
      }

      else
      {
      }
    }

    v13 = [v3 string];
    v11 = sub_1007A2254();
    v12 = v14;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v15 = &v2[OBJC_IVAR___BKLibraryBookshelfInfoBadge_badgeText];
  *v15 = v11;
  v15[1] = v12;

  [v2 setNeedsLayout];
  return [v2 layoutIfNeeded];
}

uint64_t sub_1005729AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005729F4(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_100572A6C@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v2 = sub_10079CF24();
  v59 = *(v2 - 8);
  v60 = v2;
  __chkstk_darwin(v2);
  v58 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10079C824();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v43 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10079CCC4();
  v6 = *(v5 - 8);
  v53 = v5;
  v54 = v6;
  __chkstk_darwin(v5);
  v52 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10079CDF4();
  v9 = *(v8 - 8);
  v50 = v8;
  v51 = v9;
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1001F1160(&qword_100AEA338);
  v12 = *(v46 - 8);
  __chkstk_darwin(v46);
  v14 = &v42 - v13;
  v48 = sub_1001F1160(&qword_100AEA340);
  __chkstk_darwin(v48);
  v16 = &v42 - v15;
  v55 = sub_1001F1160(&qword_100AEA348);
  __chkstk_darwin(v55);
  v18 = &v42 - v17;
  v56 = sub_1001F1160(&qword_100AEA350);
  __chkstk_darwin(v56);
  v57 = &v42 - v19;
  v47 = v1;
  v20 = *(v1 + 40);
  v62 = v1;

  sub_1001F1160(&qword_100AEA358);
  sub_100005920(&qword_100AEA360, &qword_100AEA358);
  v49 = v20;
  sub_10079E054();
  sub_10079CDE4();
  sub_100005920(&qword_100AEA368, &qword_100AEA338);
  sub_100573DA0(&qword_100AD5388, &type metadata accessor for BorderlessButtonStyle);
  v21 = v46;
  v22 = v50;
  sub_10079D6A4();
  v23 = v11;
  v24 = v18;
  (*(v51 + 8))(v23, v22);
  (*(v12 + 8))(v14, v21);
  v16[*(sub_1001F1160(&qword_100AEA370) + 36)] = 0;
  v25 = &v16[*(v48 + 36)];
  sub_1001F1160(&qword_100AE10D0);
  sub_10079C444();
  *v25 = 0;
  v26 = v52;
  sub_10079C454();
  sub_1005738B8();
  sub_100573DA0(&qword_100AD8DC8, &type metadata accessor for AutomaticHoverEffect);
  v27 = v53;
  sub_10079D6F4();
  (*(v54 + 8))(v26, v27);
  sub_100007840(v16, &qword_100AEA340);
  v66 = *(v47 + 24);
  v28 = *(v47 + 16);
  v65 = v28;
  v29 = v66;

  if ((v29 & 1) == 0)
  {
    sub_1007A29C4();
    v30 = sub_10079D244();
    sub_10079AB44();

    v31 = v43;
    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v65, &qword_100AEA388);
    (*(v44 + 8))(v31, v45);
    v28 = v63;
  }

  KeyPath = swift_getKeyPath();
  v63 = v28;
  v33 = sub_10079BE64();
  v34 = (v24 + *(v55 + 36));
  *v34 = KeyPath;
  v34[1] = v33;
  v63 = sub_1003C9964();
  v64 = v35;
  sub_100573AE8();
  sub_100206ECC();
  v36 = v57;
  sub_10079D8E4();

  sub_100007840(v24, &qword_100AEA348);
  v37 = v58;
  sub_10079CF14();
  v38 = v61;
  sub_10079C214();
  (*(v59 + 8))(v37, v60);
  sub_100007840(v36, &qword_100AEA350);
  v39 = swift_getKeyPath();
  result = sub_1001F1160(&qword_100AEA3A8);
  v41 = v38 + *(result + 36);
  *v41 = v39;
  *(v41 + 8) = 0;
  return result;
}

uint64_t sub_100573270@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_10079E474();
  a2[1] = v4;
  v5 = sub_1001F1160(&qword_100AEA3B0);
  return sub_1005732C0(a1, a2 + *(v5 + 44));
}

uint64_t sub_1005732C0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v3 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = sub_1001F1160(&qword_100AEA3B8);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v30 = sub_1001F1160(&qword_100AEA3C0);
  __chkstk_darwin(v30);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  if (qword_100AD1510 != -1)
  {
    swift_once();
  }

  sub_10079E474();
  sub_10079BE54();
  *&v32[6] = v33;
  *&v32[22] = v34;
  *&v32[38] = v35;
  v31 = sub_10079DF24();
  sub_10079E414();
  sub_1001F1160(&qword_100ADBD70);
  sub_10031A988();
  sub_10079DC54();

  sub_10079D3F4();
  v17 = sub_10079D3A4();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  v18 = sub_10079D424();
  sub_100007840(v5, &unk_100AD1FC0);
  KeyPath = swift_getKeyPath();
  v20 = &v8[*(v6 + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  v21 = *v29;
  if (*v29)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v22 = v21;
    sub_10079B9A4();

    v23 = v31;
    v24 = swift_getKeyPath();
    sub_10020B3C8(v8, v13, &qword_100AEA3B8);
    v25 = &v13[*(v30 + 36)];
    *v25 = v24;
    v25[1] = v23;
    sub_10020B3C8(v13, v16, &qword_100AEA3C0);
    sub_100041488(v16, v10);
    *a2 = 256;
    v26 = *&v32[16];
    *(a2 + 2) = *v32;
    *(a2 + 18) = v26;
    *(a2 + 34) = *&v32[32];
    *(a2 + 48) = *&v32[46];
    v27 = sub_1001F1160(&qword_100AEA3C8);
    sub_100041488(v10, a2 + *(v27 + 48));
    sub_100007840(v16, &qword_100AEA3C0);
    return sub_100007840(v10, &qword_100AEA3C0);
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_100573DA0(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_1005737A0@<X0>(uint64_t *a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = (a3 + *(sub_1001F1160(&qword_100ADBD70) + 36));
  v7 = *(sub_1001F1160(&qword_100AEE3C0) + 28);
  v8 = *a2;
  v9 = sub_10079DF84();
  (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  *v6 = swift_getKeyPath();
  *a3 = v5;
}

unint64_t sub_1005738B8()
{
  result = qword_100AEA378;
  if (!qword_100AEA378)
  {
    sub_1001F1234(&qword_100AEA340);
    sub_100573970();
    sub_100005920(&qword_100AE10F0, &qword_100AE10D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA378);
  }

  return result;
}

unint64_t sub_100573970()
{
  result = qword_100AEA380;
  if (!qword_100AEA380)
  {
    sub_1001F1234(&qword_100AEA370);
    sub_1001F1234(&qword_100AEA338);
    sub_10079CDF4();
    sub_100005920(&qword_100AEA368, &qword_100AEA338);
    sub_100573DA0(&qword_100AD5388, &type metadata accessor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AD5558, &qword_100AD5560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA380);
  }

  return result;
}

unint64_t sub_100573AE8()
{
  result = qword_100AEA390;
  if (!qword_100AEA390)
  {
    sub_1001F1234(&qword_100AEA348);
    sub_1001F1234(&qword_100AEA340);
    sub_10079CCC4();
    sub_1005738B8();
    sub_100573DA0(&qword_100AD8DC8, &type metadata accessor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AEA398, &qword_100AEA3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA390);
  }

  return result;
}

unint64_t sub_100573C2C()
{
  result = qword_100AEA3D0;
  if (!qword_100AEA3D0)
  {
    sub_1001F1234(&qword_100AEA3A8);
    sub_100573CE4();
    sub_100005920(&qword_100AD53F8, &qword_100ADB9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA3D0);
  }

  return result;
}

unint64_t sub_100573CE4()
{
  result = qword_100AEA3D8;
  if (!qword_100AEA3D8)
  {
    sub_1001F1234(&qword_100AEA350);
    sub_100573AE8();
    sub_100573DA0(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA3D8);
  }

  return result;
}

uint64_t sub_100573DA0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100573DE8()
{
  v0 = sub_1007A2214();
  v1 = [objc_opt_self() imageNamed:v0];

  if (v1)
  {
    v2 = [objc_allocWithZone(UIImageView) initWithImage:v1];

    v3 = v2;
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = [v3 widthAnchor];
    v5 = [v4 constraintEqualToConstant:13.0];

    [v5 setActive:1];
    v6 = [v3 heightAnchor];
    v7 = [v3 widthAnchor];

    v8 = [v6 constraintEqualToAnchor:v7];
    [v8 setActive:1];
  }

  else
  {
    __break(1u);
  }
}

void sub_100573F70()
{
  v0 = sub_1007A2214();
  v1 = [objc_opt_self() imageNamed:v0];

  if (v1)
  {
    v2 = [objc_allocWithZone(UIImageView) initWithImage:v1];

    v3 = [objc_opt_self() bc_booksWhite];
    [v2 setTintColor:v3];

    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_100574058(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC5Books25AudiobookTOCToolbarButton_hasSupplementalContent] = 0;
  v9 = OBJC_IVAR____TtC5Books25AudiobookTOCToolbarButton_supplementalBackgroundView;
  sub_100573DE8();
  *&v4[v9] = v10;
  v11 = OBJC_IVAR____TtC5Books25AudiobookTOCToolbarButton_supplementalIconView;
  sub_100573F70();
  *&v4[v11] = v12;
  v42.receiver = v4;
  v42.super_class = type metadata accessor for AudiobookTOCToolbarButton();
  v13 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC5Books25AudiobookTOCToolbarButton_supplementalBackgroundView;
  v15 = *&v13[OBJC_IVAR____TtC5Books25AudiobookTOCToolbarButton_supplementalBackgroundView];
  v16 = v13;
  [v16 addSubview:v15];
  v17 = OBJC_IVAR____TtC5Books25AudiobookTOCToolbarButton_supplementalIconView;
  [v16 addSubview:*&v16[OBJC_IVAR____TtC5Books25AudiobookTOCToolbarButton_supplementalIconView]];
  sub_1001F1160(&unk_100AD8160);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10081F2E0;
  v19 = [*&v13[v14] topAnchor];
  v20 = [v16 imageView];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 topAnchor];

    v23 = [v19 constraintEqualToAnchor:v22 constant:-2.0];
    *(v18 + 32) = v23;
    v24 = [*&v13[v14] trailingAnchor];
    v25 = [v16 imageView];

    if (v25)
    {
      v41 = objc_opt_self();
      v26 = [v25 trailingAnchor];

      v27 = [v24 constraintEqualToAnchor:v26 constant:4.0];
      *(v18 + 40) = v27;
      v28 = [*&v16[v17] centerXAnchor];
      v29 = [*&v13[v14] centerXAnchor];
      v30 = [v28 constraintEqualToAnchor:v29];

      *(v18 + 48) = v30;
      v31 = [*&v16[v17] centerYAnchor];
      v32 = [*&v13[v14] centerYAnchor];
      v33 = [v31 constraintEqualToAnchor:v32];

      *(v18 + 56) = v33;
      v34 = [*&v16[v17] widthAnchor];
      v35 = [*&v13[v14] widthAnchor];
      v36 = [v34 constraintEqualToAnchor:v35];

      *(v18 + 64) = v36;
      v37 = [*&v16[v17] heightAnchor];
      v38 = [*&v13[v14] heightAnchor];
      v39 = [v37 constraintEqualToAnchor:v38];

      *(v18 + 72) = v39;
      sub_10002267C();
      isa = sub_1007A25D4().super.isa;

      [v41 activateConstraints:isa];

      sub_100574568();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100574568()
{
  v1 = OBJC_IVAR____TtC5Books25AudiobookTOCToolbarButton_hasSupplementalContent;
  v2 = sub_1007A2214();

  v3 = [objc_opt_self() imageNamed:v2];

  if (v3)
  {
    v4 = [v3 imageFlippedForRightToLeftLayoutDirection];

    v5.receiver = v0;
    v5.super_class = type metadata accessor for AudiobookTOCToolbarButton();
    objc_msgSendSuper2(&v5, "setImage:forState:", v4, 0);

    [*&v0[OBJC_IVAR____TtC5Books25AudiobookTOCToolbarButton_supplementalBackgroundView] setHidden:(v0[v1] & 1) == 0];
    [*&v0[OBJC_IVAR____TtC5Books25AudiobookTOCToolbarButton_supplementalIconView] setHidden:(v0[v1] & 1) == 0];
  }

  else
  {
    __break(1u);
  }
}

void sub_1005746A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books25AudiobookTOCToolbarButton_supplementalIconView);
}

id sub_1005746E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiobookTOCToolbarButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_10057479C(double *a1, void *(*a2)(double *__return_ptr))
{
  v3 = *a1;
  result = a2(&v6);
  v5 = v6;
  if (v3 > v6)
  {
    v5 = v3;
  }

  *a1 = v5;
  return result;
}

__n128 sub_1005747F0(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 56);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10057481C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 114))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100574864(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 114) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 114) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1005748F0()
{
  v1 = sub_10079C824();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 72);
  v5 = *(v0 + 64);
  v10 = v5;
  v6 = v11;

  if ((v6 & 1) == 0)
  {
    sub_1007A29C4();
    v7 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v10, &qword_100AEA388);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_100574A4C@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v73 = sub_1001F1160(&qword_100AE1108);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v62 - v2;
  v3 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v62 - v4;
  v6 = sub_10079D4D4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F1160(&qword_100AD1CD8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = (&v62 - v12);
  v63 = sub_1001F1160(&qword_100AEA4F0);
  __chkstk_darwin(v63);
  v15 = &v62 - v14;
  v64 = sub_1001F1160(&qword_100AEA4E0);
  __chkstk_darwin(v64);
  v65 = &v62 - v16;
  v66 = sub_1001F1160(&qword_100AEA4C0);
  __chkstk_darwin(v66);
  v18 = &v62 - v17;
  v70 = sub_1001F1160(&qword_100AEA540);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v76 = &v62 - v19;
  v68 = sub_1001F1160(&qword_100AEA4B8);
  __chkstk_darwin(v68);
  v67 = &v62 - v20;
  v79 = *(v1 + 96);
  LOBYTE(v80) = *(v1 + 112);
  sub_1001F1160(&qword_100AEA448);
  sub_10079E1C4();
  v74 = v1;
  v21 = sub_100575440(v77);
  (*(v7 + 104))(v9, enum case for Font.TextStyle.callout(_:), v6);
  v22 = sub_10079D3A4();
  (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
  sub_10079D434();
  sub_100007840(v5, &unk_100AD1FC0);
  (*(v7 + 8))(v9, v6);
  sub_10079D3F4();
  v23 = sub_10079D464();

  KeyPath = swift_getKeyPath();
  v25 = (v13 + *(v11 + 44));
  v26 = *(sub_1001F1160(&qword_100AEE3C0) + 28);
  v27 = enum case for Image.Scale.large(_:);
  v28 = sub_10079DF84();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = swift_getKeyPath();
  *v13 = v21;
  v13[1] = KeyPath;
  v13[2] = v23;
  sub_1001F1160(&qword_100AE17F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080EFF0;
  LOBYTE(v26) = sub_10079D2A4();
  *(inited + 32) = v26;
  v30 = sub_10079D2B4();
  *(inited + 33) = v30;
  v31 = sub_10079D2D4();
  sub_10079D2D4();
  if (sub_10079D2D4() != v26)
  {
    v31 = sub_10079D2D4();
  }

  sub_10079D2D4();
  if (sub_10079D2D4() != v30)
  {
    v31 = sub_10079D2D4();
  }

  v32 = v74;
  sub_10079BBA4();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_10020B3C8(v13, v15, &qword_100AD1CD8);
  v41 = &v15[*(v63 + 36)];
  *v41 = v31;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  sub_10079E474();
  sub_10079C414();
  v42 = v65;
  sub_10020B3C8(v15, v65, &qword_100AEA4F0);
  v43 = (v42 + *(v64 + 36));
  v44 = v84;
  v45 = v85;
  v43[4] = v83;
  v43[5] = v44;
  v43[6] = v45;
  v46 = v80;
  *v43 = v79;
  v43[1] = v46;
  v47 = v82;
  v43[2] = v81;
  v43[3] = v47;
  v48 = sub_1005748F0();
  v49 = sub_10079D294();
  sub_10020B3C8(v42, v18, &qword_100AEA4E0);
  v50 = &v18[*(v66 + 36)];
  *v50 = v48;
  v50[8] = v49;
  sub_10079E414();
  v51 = v71;
  v52 = sub_10079C9F4();
  __chkstk_darwin(v52);
  sub_1001F1160(&qword_100AEA4C8);
  sub_100577394();
  v77 = &type metadata for Solarium;
  v78 = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  sub_100577564();
  v53 = v73;
  sub_10079DC64();
  (*(v72 + 8))(v51, v53);
  sub_100007840(v18, &qword_100AEA4C0);
  if (*v32)
  {
    v54 = *v32;
    v55 = ChromeStyle.accentColor.getter();

    v56 = swift_getKeyPath();
    v77 = v55;
    v57 = sub_10079BE64();
    v58 = v67;
    (*(v69 + 32))(v67, v76, v70);
    v59 = (v58 + *(v68 + 36));
    *v59 = v56;
    v59[1] = v57;
    v60 = v75;
    sub_1000415F0(v58, v75);
    result = sub_1001F1160(&qword_100AEA458);
    *(v60 + *(result + 36)) = 0;
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_100577A04(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_100575440(unsigned __int8 a1)
{
  v3 = sub_10079AA44();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (qword_100AD1C40 != -1)
      {
        swift_once();
      }

      v7 = qword_100B23C08;
    }

    else if (*(v1 + 113))
    {
      if (qword_100AD1C38 != -1)
      {
        swift_once();
      }

      v7 = qword_100B23BF0;
    }

    else
    {
      if (qword_100AD1C50 != -1)
      {
        swift_once();
      }

      v7 = qword_100B23C38;
    }
  }

  else if (a1)
  {
    if (qword_100AD1C48 != -1)
    {
      swift_once();
    }

    v7 = qword_100B23C20;
  }

  else
  {
    if (qword_100AD1C30 != -1)
    {
      swift_once();
    }

    v7 = qword_100B23BD8;
  }

  v8 = sub_100008B98(v3, v7);
  (*(v4 + 16))(v6, v8, v3);
  return sub_10079DFB4();
}

uint64_t sub_100575660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10079C824();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a2 + 56);
  v10 = *(a2 + 48);
  v20 = v10;
  v11 = v21;

  v12 = v10;
  if ((v11 & 1) == 0)
  {
    sub_1007A29C4();
    v13 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v20, &qword_100AD8538);
    (*(v7 + 8))(v9, v6);
    v12 = v19;
  }

  sub_100577AA4(a1, a3);
  v14 = a3 + *(sub_1001F1160(&qword_100AEA508) + 36);
  *v14 = v12;
  *(v14 + 8) = 256;

  if ((v11 & 1) == 0)
  {
    sub_1007A29C4();
    v15 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v20, &qword_100AD8538);
    (*(v7 + 8))(v9, v6);
    v10 = v19;
  }

  result = sub_1001F1160(&qword_100AEA4C8);
  v17 = a3 + *(result + 36);
  *v17 = v10;
  *(v17 + 8) = 0;
  return result;
}

uint64_t sub_1005758CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v58 = sub_10079C124();
  v59 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_10079E584();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v50 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10079CCC4();
  v49 = *(v48 - 8);
  __chkstk_darwin(v48);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&qword_100AEA420);
  v42 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v41 - v8;
  v45 = sub_1001F1160(&qword_100AEA428);
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v11 = &v41 - v10;
  v43 = sub_1001F1160(&qword_100AEA430);
  __chkstk_darwin(v43);
  v13 = &v41 - v12;
  v52 = sub_1001F1160(&qword_100AEA438);
  v53 = *(v52 - 8);
  __chkstk_darwin(v52);
  v41 = &v41 - v14;
  v54 = sub_1001F1160(&qword_100AEA440);
  __chkstk_darwin(v54);
  v46 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v51 = &v41 - v17;
  v69 = *(v1 + 96);
  v70 = *(v1 + 112);
  v64 = *(v1 + 96);
  LOBYTE(v65) = *(v1 + 112);
  v44 = sub_1001F1160(&qword_100AEA448);
  sub_10079E1F4();
  v64 = v67;
  LOBYTE(v65) = v68;
  v63 = v1;
  v62 = v1;
  sub_1001F1160(&qword_100AEA450);
  sub_1001F1160(&qword_100AEA458);
  sub_100576E74();
  sub_100576EC8();
  sub_10057718C();
  sub_10079E104();
  sub_10079C454();
  v18 = sub_100005920(&qword_100AEA510, &qword_100AEA420);
  v19 = sub_100577A04(&qword_100AD8DC8, &type metadata accessor for AutomaticHoverEffect);
  v20 = v48;
  sub_10079D6F4();
  (*(v49 + 8))(v6, v20);
  (*(v42 + 8))(v9, v7);
  v21 = v50;
  sub_10079E574();
  *&v64 = v7;
  *(&v64 + 1) = v20;
  v65 = v18;
  v66 = v19;
  swift_getOpaqueTypeConformance2();
  v22 = v45;
  sub_10079DCB4();
  (*(v55 + 8))(v21, v56);
  (*(v47 + 8))(v11, v22);
  KeyPath = swift_getKeyPath();
  v24 = v43;
  v25 = &v13[*(v43 + 36)];
  *v25 = KeyPath;
  v25[8] = 2;
  v26 = v57;
  sub_10079C114();
  v27 = sub_100577728();
  v28 = v41;
  v29 = v24;
  v30 = v58;
  sub_10079D704();
  (*(v59 + 8))(v26, v30);
  sub_100007840(v13, &qword_100AEA430);
  v67 = *(v2 + 80);
  *&v64 = v29;
  *(&v64 + 1) = v30;
  v65 = v27;
  v66 = &protocol witness table for MenuPickerStyle;
  swift_getOpaqueTypeConformance2();
  sub_100206ECC();
  v31 = v46;
  v32 = v52;
  sub_10079D8E4();
  (*(v53 + 8))(v28, v32);
  v64 = v69;
  LOBYTE(v65) = v70;
  sub_10079E1C4();
  *&v64 = sub_1007A0A04();
  *(&v64 + 1) = v33;
  v34 = v51;
  sub_10079C1E4();

  sub_100007840(v31, &qword_100AEA440);
  v61 = v2;
  sub_1001F1160(&qword_100AE2D20);
  sub_1005778E4();
  sub_100005920(&qword_100AE2D30, &qword_100AE2D20);
  v35 = v60;
  sub_10079DAC4();
  sub_100007840(v34, &qword_100AEA440);
  v36 = swift_getKeyPath();
  v37 = v35 + *(sub_1001F1160(&qword_100AEA528) + 36);
  *v37 = v36;
  *(v37 + 8) = 0;
  v38 = swift_getKeyPath();
  v39 = (v35 + *(sub_1001F1160(&qword_100AEA530) + 36));
  sub_1001F1160(&qword_100AEA538);
  result = sub_10079E574();
  *v39 = v38;
  return result;
}

__n128 sub_1005762C8@<Q0>(__n128 *a1@<X8>)
{
  v2 = sub_10079CB24();
  sub_100576344(&v7);
  v3 = v7;
  v4 = v9;
  v5 = v10;
  result = v8;
  a1->n128_u64[0] = v2;
  a1->n128_u64[1] = 0;
  a1[1].n128_u8[0] = 1;
  a1[1].n128_u64[1] = v3;
  a1[2] = result;
  a1[3].n128_u8[0] = v4;
  a1[3].n128_u64[1] = v5;
  return result;
}

uint64_t sub_100576344@<X0>(uint64_t a1@<X8>)
{
  sub_1001F1160(&qword_100AEA448);
  sub_10079E1C4();
  v2 = sub_100575440(v10);
  sub_100206ECC();

  v3 = sub_10079D5D4();
  v5 = v4;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v7 = v6 & 1;
  *(a1 + 24) = v6 & 1;
  *(a1 + 32) = v8;

  sub_1001F1894(v3, v5, v7);

  sub_10020B430(v3, v5, v7);
}

uint64_t sub_10057644C(uint64_t a1)
{
  v2 = sub_10079E584();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_10079C7E4();
}

uint64_t sub_100576514(uint64_t a1)
{
  v8 = &off_100A0D550;
  v2 = swift_allocObject();
  v3 = *(a1 + 80);
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = v3;
  *(v2 + 112) = *(a1 + 96);
  *(v2 + 128) = *(a1 + 112);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  v5 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v5;
  sub_100577B1C(a1, v7);
  sub_1001F1160(&qword_100AEA548);
  sub_1001F1160(&qword_100AEA478);
  sub_100005920(&qword_100AEA550, &qword_100AEA548);
  sub_100576F4C();
  sub_100577B54();
  return sub_10079E274();
}

uint64_t sub_100576658@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v36 = a3;
  v5 = sub_10079D074();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10079CEC4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(&qword_100AEA498);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - v13;
  v33 = sub_1001F1160(&qword_100AEA490);
  v15 = *(v33 - 8);
  __chkstk_darwin(v33);
  v17 = &v31 - v16;
  v34 = *a1;
  v41 = v34;
  v39 = a2;
  v40 = v34;
  sub_1001F1160(&qword_100AEA560);
  sub_100577BBC();
  sub_10079DFC4();
  sub_10079CEB4();
  v18 = sub_100005920(&qword_100AEA4A0, &qword_100AEA498);
  v19 = sub_100577A04(&qword_100AD9C20, &type metadata accessor for TitleAndIconLabelStyle);
  sub_10079D674();
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  v20 = v35;
  sub_10079D054();
  *&v42 = v11;
  *(&v42 + 1) = v7;
  v43 = v18;
  v44 = v19;
  v21 = v36;
  v22 = 1;
  swift_getOpaqueTypeConformance2();
  v23 = v33;
  sub_10079D9A4();
  (*(v37 + 8))(v20, v38);
  (*(v15 + 8))(v17, v23);
  v42 = *(v32 + 96);
  LOBYTE(v43) = *(v32 + 112);
  sub_1001F1160(&qword_100AEA448);
  sub_10079E1C4();
  v24 = sub_1007A0A14();
  v26 = v25;
  if (v24 != sub_1007A0A14() || v26 != v27)
  {
    v22 = sub_1007A3AB4();
  }

  *(v21 + *(sub_1001F1160(&qword_100AEA488) + 36)) = v22 & 1;
  KeyPath = swift_getKeyPath();
  result = sub_1001F1160(&qword_100AEA478);
  v30 = v21 + *(result + 36);
  *v30 = KeyPath;
  *(v30 + 8) = 0;
  return result;
}

uint64_t sub_100576B48@<X0>(uint64_t a1@<X8>)
{
  sub_1007A09F4();
  sub_100206ECC();
  result = sub_10079D5D4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100576BA0@<X0>(void **a1@<X0>, unsigned __int8 a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = sub_10079BC44();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v23 - v11;
  v13 = sub_100575440(a2);
  v14 = *a1;
  if (*a1)
  {
    v15 = v13;
    swift_getKeyPath();
    swift_getKeyPath();
    v16 = v14;
    sub_10079B9A4();

    (*(v7 + 104))(v9, enum case for ColorScheme.light(_:), v6);
    v17 = sub_10079BC34();
    v18 = *(v7 + 8);
    v18(v9, v6);
    v18(v12, v6);
    if (v17)
    {
      v19 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    else
    {
      v19 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    v20 = v19;

    KeyPath = swift_getKeyPath();
    v23[1] = v20;
    result = sub_10079BE64();
    *a3 = v15;
    a3[1] = KeyPath;
    a3[2] = result;
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_100577A04(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

unint64_t sub_100576E74()
{
  result = qword_100AEA460;
  if (!qword_100AEA460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA460);
  }

  return result;
}

unint64_t sub_100576EC8()
{
  result = qword_100AEA468;
  if (!qword_100AEA468)
  {
    sub_1001F1234(&qword_100AEA450);
    sub_100576F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA468);
  }

  return result;
}

unint64_t sub_100576F4C()
{
  result = qword_100AEA470;
  if (!qword_100AEA470)
  {
    sub_1001F1234(&qword_100AEA478);
    sub_100577004();
    sub_100005920(&qword_100AD53F8, &qword_100ADB9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA470);
  }

  return result;
}

unint64_t sub_100577004()
{
  result = qword_100AEA480;
  if (!qword_100AEA480)
  {
    sub_1001F1234(&qword_100AEA488);
    sub_1001F1234(&qword_100AEA490);
    sub_1001F1234(&qword_100AEA498);
    sub_10079CEC4();
    sub_100005920(&qword_100AEA4A0, &qword_100AEA498);
    sub_100577A04(&qword_100AD9C20, &type metadata accessor for TitleAndIconLabelStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100460338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA480);
  }

  return result;
}

unint64_t sub_10057718C()
{
  result = qword_100AEA4A8;
  if (!qword_100AEA4A8)
  {
    sub_1001F1234(&qword_100AEA458);
    sub_100577218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA4A8);
  }

  return result;
}

unint64_t sub_100577218()
{
  result = qword_100AEA4B0;
  if (!qword_100AEA4B0)
  {
    sub_1001F1234(&qword_100AEA4B8);
    sub_1001F1234(&qword_100AEA4C0);
    sub_1001F1234(&qword_100AE1108);
    sub_1001F1234(&qword_100AEA4C8);
    sub_100577394();
    swift_getOpaqueTypeConformance2();
    sub_100577564();
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AEA398, &qword_100AEA3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA4B0);
  }

  return result;
}

unint64_t sub_100577394()
{
  result = qword_100AEA4D0;
  if (!qword_100AEA4D0)
  {
    sub_1001F1234(&qword_100AEA4C0);
    sub_10057744C();
    sub_100005920(&qword_100AF64C0, &unk_100AE40B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA4D0);
  }

  return result;
}

unint64_t sub_10057744C()
{
  result = qword_100AEA4D8;
  if (!qword_100AEA4D8)
  {
    sub_1001F1234(&qword_100AEA4E0);
    sub_1005774D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA4D8);
  }

  return result;
}

unint64_t sub_1005774D8()
{
  result = qword_100AEA4E8;
  if (!qword_100AEA4E8)
  {
    sub_1001F1234(&qword_100AEA4F0);
    sub_1001F1584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA4E8);
  }

  return result;
}

unint64_t sub_100577564()
{
  result = qword_100AEA4F8;
  if (!qword_100AEA4F8)
  {
    sub_1001F1234(&qword_100AEA4C8);
    sub_10057761C();
    sub_100005920(&qword_100AE2D10, &qword_100AE2D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA4F8);
  }

  return result;
}

unint64_t sub_10057761C()
{
  result = qword_100AEA500;
  if (!qword_100AEA500)
  {
    sub_1001F1234(&qword_100AEA508);
    sub_100577394();
    sub_100005920(&qword_100ADC320, &qword_100ADC300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA500);
  }

  return result;
}

uint64_t sub_1005776D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10079C6B4();
  *a1 = result;
  return result;
}

unint64_t sub_100577728()
{
  result = qword_100AEA518;
  if (!qword_100AEA518)
  {
    sub_1001F1234(&qword_100AEA430);
    sub_1001F1234(&qword_100AEA428);
    sub_1001F1234(&qword_100AEA420);
    sub_10079CCC4();
    sub_100005920(&qword_100AEA510, &qword_100AEA420);
    sub_100577A04(&qword_100AD8DC8, &type metadata accessor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AD9C80, &qword_100AD9C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA518);
  }

  return result;
}

unint64_t sub_1005778E4()
{
  result = qword_100AEA520;
  if (!qword_100AEA520)
  {
    sub_1001F1234(&qword_100AEA440);
    sub_1001F1234(&qword_100AEA430);
    sub_10079C124();
    sub_100577728();
    swift_getOpaqueTypeConformance2();
    sub_100577A04(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA520);
  }

  return result;
}

uint64_t sub_100577A04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100577A4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10079C764();
  *a1 = result;
  return result;
}

uint64_t sub_100577AA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AEA4C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100577B54()
{
  result = qword_100AEA558;
  if (!qword_100AEA558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA558);
  }

  return result;
}

unint64_t sub_100577BBC()
{
  result = qword_100AEA568;
  if (!qword_100AEA568)
  {
    sub_1001F1234(&qword_100AEA560);
    sub_100005920(&qword_100AEA398, &qword_100AEA3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA568);
  }

  return result;
}

unint64_t sub_100577C74()
{
  result = qword_100AEA570;
  if (!qword_100AEA570)
  {
    sub_1001F1234(&qword_100AEA530);
    sub_100577D2C();
    sub_100005920(&qword_100AEA580, &qword_100AEA538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA570);
  }

  return result;
}

unint64_t sub_100577D2C()
{
  result = qword_100AEA578;
  if (!qword_100AEA578)
  {
    sub_1001F1234(&qword_100AEA528);
    sub_1001F1234(&qword_100AEA440);
    sub_1001F1234(&qword_100AE2D20);
    sub_1005778E4();
    sub_100005920(&qword_100AE2D30, &qword_100AE2D20);
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AD53F8, &qword_100ADB9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA578);
  }

  return result;
}

uint64_t sub_100577EBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AD9690, type metadata accessor for PageTurnViewModel);
  sub_100797A14();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_100577F8C()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AEA588);
  sub_100008B98(v0, qword_100AEA588);
  sub_10000A7C4(0, &qword_100AD20A0);
  return sub_1007A33F4();
}

uint64_t sub_100578010()
{
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1005780B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_100578168()
{
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A04();
}

uint64_t sub_100578238()
{
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_100578300()
{
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  return swift_weakLoadStrong();
}

uint64_t sub_1005783C0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  v3 = OBJC_IVAR____TtC5Books19BookReaderViewModel__overlay;
  swift_beginAccess();
  return sub_10046210C(v5 + v3, a1);
}

void sub_100578588(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5Books19BookReaderViewModel__coverImage;
  v5 = *(v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__coverImage);
  sub_10000A7C4(0, &qword_100ADDB48);
  v6 = v5;
  v7 = sub_1007A3184();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A04();
  }
}

id sub_100578710(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  v4 = *(v2 + *a2);

  return v4;
}

uint64_t sub_1005787FC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  return *(v2 + *a2);
}

uint64_t sub_10057889C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_100578978(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A04();
  }

  return result;
}

uint64_t sub_100578A7C()
{
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  return *(v0 + OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeRenderMode);
}

uint64_t sub_100578B24(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeRenderMode) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A04();
  }

  return result;
}

uint64_t sub_100578C44(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC5Books19BookReaderViewModel__edgeInsets);
  result = sub_10079BB94();
  if (result)
  {
    *v9 = a1;
    v9[1] = a2;
    v9[2] = a3;
    v9[3] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A04();
  }

  return result;
}

double sub_100578E24(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  return *(v2 + *a2);
}

__n128 sub_100578EE0@<Q0>(uint64_t *a1@<X0>, void *a2@<X4>, _OWORD *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  v6 = v5 + *a2;
  result = *v6;
  v8 = *(v6 + 16);
  *a3 = *v6;
  a3[1] = v8;
  return result;
}

void sub_100578FC4(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC5Books19BookReaderViewModel__menuOuterMargin);
  v6.f64[0] = a1;
  v6.f64[1] = a2;
  v7.f64[0] = a3;
  v7.f64[1] = a4;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v4 + OBJC_IVAR____TtC5Books19BookReaderViewModel__menuOuterMargin), v6), vceqq_f64(*(v4 + OBJC_IVAR____TtC5Books19BookReaderViewModel__menuOuterMargin + 16), v7)))))
  {
    *v5 = a1;
    v5[1] = a2;
    v5[2] = a3;
    v5[3] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A04();
  }
}

uint64_t sub_10057912C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  *a2 = *(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__horizontalFadeColor);
}

uint64_t sub_10057920C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Books19BookReaderViewModel__horizontalFadeColor;

  v4 = sub_10079DD54();

  if (v4)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A04();
  }
}

id sub_100579390@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

void sub_1005794A8(void *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = *(v2 + *a2);
  sub_10000A7C4(0, &qword_100AEEF60);
  v7 = v6;
  v8 = sub_1007A3184();

  if (v8)
  {
    v9 = *(v3 + v5);
    *(v3 + v5) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A04();
  }
}

uint64_t sub_100579640(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10079BC44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC5Books19BookReaderViewModel__themeColorScheme;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_10057F6DC(&qword_100AEB098, &type metadata accessor for ColorScheme);
  v14[0] = a1;
  LOBYTE(a1) = sub_1007A2124();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A04();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_100579A04()
{
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();
}

uint64_t sub_100579AA8(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__historyViewModel) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A04();
  }
}

double sub_100579BF8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  return *(v2 + *a2);
}

double sub_100579CAC@<D0>(uint64_t *a1@<X0>, void *a2@<X4>, double *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  result = *(v5 + *a2);
  *a3 = result;
  return result;
}

void *sub_100579DB0(void *result, double a2)
{
  if (*(v2 + *result) == a2)
  {
    *(v2 + *result) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A04();
  }

  return result;
}

uint64_t sub_100579F34@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  v3 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
  swift_beginAccess();
  return sub_10057F354(v5 + v3, a1, type metadata accessor for BookReaderChromeState);
}

uint64_t sub_10057A010(unsigned __int8 *a1)
{
  v3 = type metadata accessor for BookReaderChromeState();
  __chkstk_darwin(v3 - 8);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
  swift_beginAccess();
  sub_10057F354(v1 + v6, v5, type metadata accessor for BookReaderChromeState);
  v7 = sub_100641198(v5, a1);
  sub_10057F52C(v5, type metadata accessor for BookReaderChromeState);
  if (v7)
  {
    sub_10057F354(a1, v5, type metadata accessor for BookReaderChromeState);
    swift_beginAccess();
    sub_10057F5C4(v5, v1 + v6);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[1] = v1;
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A04();
  }

  return sub_10057F52C(a1, type metadata accessor for BookReaderChromeState);
}

uint64_t sub_10057A220(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t))
{
  v7 = *a3;
  swift_beginAccess();
  a4(a2, a1 + v7);
  return swift_endAccess();
}

uint64_t sub_10057A3FC@<X0>(uint64_t *a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v10 = v3;
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  v7 = *a1;
  swift_beginAccess();
  v8 = a2(0);
  return (*(*(v8 - 8) + 16))(a3, v10 + v7, v8);
}

uint64_t sub_10057A4FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  v4 = OBJC_IVAR____TtC5Books19BookReaderViewModel__layoutDirection;
  swift_beginAccess();
  v5 = sub_10079C104();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_10057A5F4(uint64_t a1)
{
  v2 = sub_10079C104();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_10057A6C0(v5);
}

uint64_t sub_10057A6C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10079C104();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC5Books19BookReaderViewModel__layoutDirection;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_10057F6DC(&qword_100AEB090, &type metadata accessor for LayoutDirection);
  v14[0] = a1;
  LOBYTE(a1) = sub_1007A2124();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A04();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_10057A960(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v7 = *a3;
  swift_beginAccess();
  v8 = a4(0);
  (*(*(v8 - 8) + 24))(a1 + v7, a2, v8);
  return swift_endAccess();
}

uint64_t sub_10057AA80()
{
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  return *(v0 + OBJC_IVAR____TtC5Books19BookReaderViewModel__bookmarkNotesContentType);
}

uint64_t sub_10057AB28(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__bookmarkNotesContentType) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__bookmarkNotesContentType) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A04();
  }

  return result;
}

uint64_t sub_10057AC7C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  result = sub_10079B904();
  *a1 = v3;
  return result;
}

uint64_t sub_10057ADE4()
{
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  sub_10079B904();
  return v1;
}

void sub_10057AEB8(char a1)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  sub_10079B904();
  if (v1 != v3)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100797A04();

    if ((a1 & 1) == 0)
    {
      byte_100B23530 = 1;
      if (qword_100AD1860 != -1)
      {
        swift_once();
      }

      v5 = qword_100AEA5A0;
      v6 = sub_1007A2214();
      [v5 setBool:1 forKey:v6];
    }
  }
}

uint64_t sub_10057B0D4()
{
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  swift_beginAccess();
}

uint64_t sub_10057B194@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  v4 = OBJC_IVAR____TtC5Books19BookReaderViewModel__cancellables;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_10057B25C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Books19BookReaderViewModel__cancellables;
  swift_beginAccess();

  v5 = sub_1004A1070(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A04();
  }
}

uint64_t sub_10057B3AC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC5Books19BookReaderViewModel__cancellables;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_10057B444()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AEB020);
  v3 = *(v2 - 8);
  v52 = v2;
  v53 = v3;
  __chkstk_darwin(v2);
  v51 = v32 - v4;
  v5 = sub_1001F1160(&unk_100AEA120);
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  __chkstk_darwin(v5);
  v42 = v32 - v7;
  v8 = sub_1001F1160(&qword_100AEB028);
  v9 = *(v8 - 8);
  v49 = v8;
  v50 = v9;
  __chkstk_darwin(v8);
  v43 = v32 - v10;
  v41 = sub_1001F1160(&qword_100AEB030);
  v11 = *(v41 - 1);
  __chkstk_darwin(v41);
  v13 = v32 - v12;
  v55 = sub_1001F1160(&qword_100AEB038);
  __chkstk_darwin(v55);
  v32[1] = v32 - v14;
  v35 = sub_1001F1160(&unk_100AE1530);
  __chkstk_darwin(v35);
  v32[0] = v32 - v15;
  v33 = sub_1001F1160(&qword_100AE5DE0);
  __chkstk_darwin(v33);
  v36 = sub_1001F1160(&qword_100AEB040);
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v17 = v32 - v16;
  swift_beginAccess();
  sub_1001F1160(&qword_100AE3D00);
  sub_10079B974();
  swift_endAccess();
  v18 = v0[11];
  v45 = v0[10];
  v46 = v18;
  ObjectType = swift_getObjectType();
  v56 = sub_10079F504();
  swift_beginAccess();
  sub_1001F1160(&qword_100AD50E0);
  sub_10079B974();
  swift_endAccess();
  v57 = *(v0[17] + 88);
  sub_1001F1160(&qword_100ADFED8);
  v38 = &protocol conformance descriptor for CurrentValueSubject<A, B>;
  sub_100005920(&qword_100AEB048, &qword_100ADFED8);
  v57 = sub_10079BA14();
  sub_1001F1160(&qword_100AEB050);
  v54 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_100005920(&qword_100AEB058, &qword_100AEB050);
  sub_10079BA74();

  sub_100005920(&qword_100AEB060, &qword_100AEB030);
  v19 = v41;
  sub_10079BAF4();
  (*(v11 + 8))(v13, v19);
  v39 = sub_1001F1160(&unk_100AEA1A0);
  v34 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_100005920(&qword_100AE5DF0, &qword_100AE5DE0);
  v40 = sub_100005920(&qword_100AF2900, &unk_100AEA1A0);
  sub_100005920(&qword_100AD82D0, &unk_100AE1530);
  v41 = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
  sub_100005920(&qword_100AEB068, &qword_100AEB038);
  sub_10079B7C4();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10057F23C;
  *(v21 + 24) = v20;
  sub_100005920(&qword_100AEB070, &qword_100AEB040);
  v22 = v36;
  sub_10079BB04();

  (*(v37 + 8))(v17, v22);
  swift_getKeyPath();
  v57 = v1;
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  v57 = v1;
  swift_getKeyPath();
  sub_100797A34();

  v55 = OBJC_IVAR____TtC5Books19BookReaderViewModel__cancellables;
  swift_beginAccess();
  v37 = sub_1001F1160(&unk_100AF27C0);
  v36 = sub_100005920(&qword_100AEBCC0, &unk_100AF27C0);
  sub_10079B864();
  swift_endAccess();

  v57 = v1;
  swift_getKeyPath();
  sub_100797A24();

  v57 = *(v1[14] + 288);
  sub_1001F1160(&unk_100AD1E40);
  sub_100005920(&qword_100AF2870, &unk_100AD1E40);
  v56 = sub_10079BA14();
  swift_beginAccess();
  sub_1001F1160(&unk_100AF2880);
  v23 = v42;
  sub_10079B974();
  swift_endAccess();
  sub_1001F1160(&unk_100AF27D0);
  sub_100005920(&qword_100AEA160, &unk_100AF27D0);
  sub_100005920(&unk_100AEA130, &unk_100AEA120);
  v24 = v43;
  v25 = v47;
  sub_10079BA44();
  (*(v48 + 8))(v23, v25);

  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_10057F27C;
  *(v27 + 24) = v26;
  sub_100005920(&qword_100AEB078, &qword_100AEB028);
  v28 = v49;
  sub_10079BB04();

  (*(v50 + 8))(v24, v28);
  swift_getKeyPath();
  v57 = v1;
  sub_100797A14();

  v57 = v1;
  swift_getKeyPath();
  sub_100797A34();

  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  v57 = v1;
  swift_getKeyPath();
  sub_100797A24();

  v57 = sub_10079F504();
  sub_10057F6DC(&qword_100ADC558, type metadata accessor for BookLayoutMode);
  v29 = v51;
  sub_10079BAF4();

  swift_allocObject();
  swift_weakInit();
  sub_100005920(&qword_100AEB080, &qword_100AEB020);
  v30 = v52;
  sub_10079BB04();

  (*(v53 + 8))(v29, v30);
  swift_getKeyPath();
  v57 = v1;
  sub_100797A14();

  v57 = v1;
  swift_getKeyPath();
  sub_100797A34();

  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  v57 = v1;
  swift_getKeyPath();
  sub_100797A24();

  swift_getObjectType();
  v57 = sub_1007A13F4();
  swift_allocObject();
  swift_weakInit();
  sub_1001F1160(&qword_100AE8798);
  sub_100005920(&qword_100AEB890, &qword_100AE8798);
  sub_10079BB04();

  swift_getKeyPath();
  v57 = v1;
  sub_100797A14();

  v57 = v1;
  swift_getKeyPath();
  sub_100797A34();

  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  v57 = v1;
  swift_getKeyPath();
  sub_100797A24();
}

uint64_t sub_10057C404@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = type metadata accessor for PageTurnViewModel.State.Active(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v10 = sub_1001F1160(&qword_100ADFED0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v25 - v12;
  v14 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v25 - v18;
  swift_storeEnumTagMultiPayload();
  v20 = *(v11 + 56);
  sub_10057F354(a1, v13, type metadata accessor for PageTurnViewModel.State);
  sub_10057F354(v19, &v13[v20], type metadata accessor for PageTurnViewModel.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_10057F52C(v19, type metadata accessor for PageTurnViewModel.State);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_10057F52C(&v13[v20], type metadata accessor for PageTurnViewModel.State);
      v24 = v13;
LABEL_9:
      result = sub_10057F52C(v24, type metadata accessor for PageTurnViewModel.State);
      v22 = 1;
      goto LABEL_12;
    }

LABEL_11:
    result = sub_100007840(v13, &qword_100ADFED0);
    v22 = 0;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_10057F52C(v19, type metadata accessor for PageTurnViewModel.State);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v24 = v13;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  sub_10057F354(v13, v16, type metadata accessor for PageTurnViewModel.State);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10057F52C(v19, type metadata accessor for PageTurnViewModel.State);
    sub_10057F52C(v16, type metadata accessor for PageTurnViewModel.State.Active);
    goto LABEL_11;
  }

  sub_10057F3BC(v16, v9);
  sub_10057F3BC(&v13[v20], v6);
  v22 = sub_1003AE8EC(v9, v6);
  sub_10057F52C(v6, type metadata accessor for PageTurnViewModel.State.Active);
  sub_10057F52C(v9, type metadata accessor for PageTurnViewModel.State.Active);
  sub_10057F52C(v19, type metadata accessor for PageTurnViewModel.State);
  result = sub_10057F52C(v13, type metadata accessor for PageTurnViewModel.State);
LABEL_12:
  *a2 = v22;
  return result;
}

uint64_t sub_10057C78C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  swift_getKeyPath();
  sub_10057F6DC(&qword_100AD9690, type metadata accessor for PageTurnViewModel);
  sub_100797A14();

  v9 = sub_10079FE94();
  v11 = v10;
  v12 = 1;
  if (v9 != sub_10079FE94() || v11 != v13)
  {
    v12 = sub_1007A3AB4();
  }

  sub_10057D8C4(v12 & 1, a3 & 1);
  swift_getKeyPath();
  sub_100797A14();

  v15 = sub_10079FE94();
  v17 = v16;
  if (v15 == sub_10079FE94() && v17 == v18)
  {
  }

  else
  {
    v19 = sub_1007A3AB4();

    if ((v19 & 1) == 0)
    {
      if (a2 == 2 || (a3 & 1) != 0 || (a4 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_16:

      goto LABEL_17;
    }
  }

  if (a2 != 2)
  {
    goto LABEL_16;
  }

LABEL_12:
  a1 = sub_10079DDC4();
LABEL_17:

  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  v20 = sub_10079DD54();

  if (v20)
  {
  }

  else
  {
    sub_10057920C(a1);
  }
}

uint64_t sub_10057CA7C(char a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100ADB1C0);
  __chkstk_darwin(v4 - 8);
  v6 = v16 - v5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v8 = Strong;
  if (a1)
  {
    v9 = type metadata accessor for OverlayViewModel.Overlay(0);
    v10 = (*(*(v9 - 8) + 48))(a2, 1, v9) == 1;
    v11 = (v8 + OBJC_IVAR____TtC5Books19BookReaderViewModel__closedAndNoOverlayVisible);
    if (((v10 ^ *(v8 + OBJC_IVAR____TtC5Books19BookReaderViewModel__closedAndNoOverlayVisible)) & 1) == 0)
    {
LABEL_4:
      *v11 = v10;

      goto LABEL_7;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
    v11 = (Strong + OBJC_IVAR____TtC5Books19BookReaderViewModel__closedAndNoOverlayVisible);
    if ((*(Strong + OBJC_IVAR____TtC5Books19BookReaderViewModel__closedAndNoOverlayVisible) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v16[-2] = v8;
  LOBYTE(v16[-1]) = v10;
  v16[1] = v8;
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A04();

LABEL_7:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_10046210C(a2, v6);
    v15 = swift_getKeyPath();
    __chkstk_darwin(v15);
    v16[-2] = v14;
    v16[-1] = v6;
    v16[0] = v14;
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A04();

    return sub_100007840(v6, &qword_100ADB1C0);
  }

  return result;
}

uint64_t sub_10057CD9C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_1007A2BB4() & 1;
    swift_getKeyPath();
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A14();

    if (v2 != *(v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isScrollMode))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100797A04();
    }

    sub_10057E32C();
  }

  return result;
}

uint64_t sub_10057CF28()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_10057D79C();
    v2 = sub_1007A0A14();
    v4 = v3;
    if (v2 == sub_1007A0A14() && v4 == v5)
    {

      v8 = (v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isScrollMode);
      v7 = 1;
      if ((*(v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isScrollMode) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v7 = sub_1007A3AB4();

      v8 = (v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isScrollMode);
      if ((v7 & 1) != *(v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isScrollMode))
      {
LABEL_7:
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
        sub_100797A04();

LABEL_10:
        sub_10057E32C();
      }
    }

    *v8 = v7 & 1;
    goto LABEL_10;
  }

  return result;
}

void sub_10057D110(uint64_t a1, char a2)
{
  if (a2)
  {
    if (qword_100AD1858 != -1)
    {
      swift_once();
    }

    v2 = sub_10079ACE4();
    sub_100008B98(v2, qword_100AEA588);
    oslog = sub_10079ACC4();
    v3 = sub_1007A29B4();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "failed to get cover image with error", v4, 2u);
    }
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100578588([objc_allocWithZone(UIImage) initWithCGImage:a1]);
    }
  }
}

uint64_t sub_10057D260()
{
  v1 = v0;
  v2 = *(v0 + 56);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 24))(ObjectType, v2);
  if (*(v0 + OBJC_IVAR____TtC5Books19BookReaderViewModel__infoBarTopMargin) == v4)
  {
    *(v0 + OBJC_IVAR____TtC5Books19BookReaderViewModel__infoBarTopMargin) = v4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A04();
  }

  v6 = (*(v2 + 32))(ObjectType, v2);
  if (*(v0 + OBJC_IVAR____TtC5Books19BookReaderViewModel__infoBarBottomMargin) == v6)
  {
    *(v0 + OBJC_IVAR____TtC5Books19BookReaderViewModel__infoBarBottomMargin) = v6;
  }

  else
  {
    v7 = swift_getKeyPath();
    __chkstk_darwin(v7);
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A04();
  }

  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_10079F814();
    swift_unknownObjectRelease();
    swift_getObjectType();
    sub_10079F6B4();
    if (*(v0 + OBJC_IVAR____TtC5Books19BookReaderViewModel__gutterWidth) == v9)
    {
      *(v0 + OBJC_IVAR____TtC5Books19BookReaderViewModel__gutterWidth) = v9;
    }

    else
    {
      v10 = swift_getKeyPath();
      __chkstk_darwin(v10);
      sub_100797A04();
    }

    v11 = sub_1007A0CE4();
    v13 = v12;
    if (v11 != sub_1007A0CE4() || v13 != v14)
    {
      sub_1007A3AB4();
    }

    (*(v2 + 96))(ObjectType, v2);
    sub_10079BBB4();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = (v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__edgeInsets);
    if (sub_10079BB94())
    {
      *v23 = v16;
      v23[1] = v18;
      v23[2] = v20;
      v23[3] = v22;
    }

    else
    {
      v24 = swift_getKeyPath();
      __chkstk_darwin(v24);
      sub_100797A04();
    }

    swift_getObjectType();
    sub_1007A1384();
    sub_10057D79C();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10057D79C()
{
  v1 = *(v0 + 56);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 96))(ObjectType, v1);
  sub_1003AC4B4(v3, v4, v5, v6);
  v7 = sub_1007A0A14();
  v9 = v8;
  if (v7 == sub_1007A0A14() && v9 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1007A3AB4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  sub_10057D8C4(v11 & 1, v12);
}

void sub_10057D8C4(int a1, int a2)
{
  v3 = v2;
  v50 = a1;
  v5 = sub_10079C104();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v53 = v2;
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v51 = sub_10079F814();
    v47 = v9;
    swift_unknownObjectRelease();
    v10 = [objc_opt_self() sharedApplication];
    v44 = [v10 userInterfaceLayoutDirection];

    v48 = *(v3 + 224);
    v49 = a2;
    v45 = v6;
    v46 = v5;
    if (v48 == 1)
    {
      LOBYTE(v11) = 0;
      v12 = (v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isShowingRealTitle);
      if ((*(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isShowingRealTitle) & 1) == 0)
      {
LABEL_4:
        *v12 = v11;
        goto LABEL_12;
      }
    }

    else
    {
      swift_getKeyPath();
      v53 = v3;
      sub_100797A14();

      v17 = v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
      swift_beginAccess();
      v11 = *(v17 + *(type metadata accessor for BookReaderChromeState() + 32));
      v12 = (v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isShowingRealTitle);
      if (v11 == *(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isShowingRealTitle))
      {
        goto LABEL_4;
      }
    }

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v44 - 2) = v3;
    *(&v44 - 8) = v11;
    v52 = v3;
    sub_100797A04();

LABEL_12:
    swift_getKeyPath();
    v52 = v3;
    sub_100797A14();

    v19 = OBJC_IVAR____TtC5Books19BookReaderViewModel__bookCharacterFlowMatchesAppCharacterFlow;
    if (*(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__bookCharacterFlowMatchesAppCharacterFlow) == 1)
    {
      LOBYTE(v20) = 0;
      v21 = (v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__fadeLeadingTitleEdge);
      if ((*(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__fadeLeadingTitleEdge) & 1) == 0)
      {
LABEL_14:
        *v21 = v20;
        goto LABEL_17;
      }
    }

    else
    {
      swift_getKeyPath();
      v52 = v3;
      sub_100797A14();

      v20 = *v12;
      v21 = (v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__fadeLeadingTitleEdge);
      if (v20 == *(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__fadeLeadingTitleEdge))
      {
        goto LABEL_14;
      }
    }

    v22 = swift_getKeyPath();
    __chkstk_darwin(v22);
    *(&v44 - 2) = v3;
    *(&v44 - 8) = v20;
    v52 = v3;
    sub_100797A04();

LABEL_17:
    swift_getKeyPath();
    v52 = v3;
    sub_100797A14();

    if (*v12 == 1)
    {
      v23 = v46;
      v24 = v44;
      if (*(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel_characterFlowIsRTL))
      {
LABEL_19:
        v25 = &enum case for LayoutDirection.rightToLeft(_:);
        goto LABEL_22;
      }
    }

    else
    {
      v24 = v44;
      v23 = v46;
      if (v44 == 1)
      {
        goto LABEL_19;
      }
    }

    v25 = &enum case for LayoutDirection.leftToRight(_:);
LABEL_22:
    v26 = v24 == 1;
    (*(v45 + 104))(v8, *v25, v23);
    sub_10057A6C0(v8);
    v27 = ((v26 ^ *(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel_characterFlowIsRTL)) ^ 1) & 1;
    if (v27 == *(v3 + v19))
    {
      *(v3 + v19) = v27;
    }

    else
    {
      v28 = swift_getKeyPath();
      __chkstk_darwin(v28);
      *(&v44 - 2) = v3;
      *(&v44 - 8) = v27;
      v52 = v3;
      sub_100797A04();
    }

    v29 = v49;
    swift_getObjectType();
    v30 = sub_10079F684();
    swift_getKeyPath();
    v52 = v3;
    sub_100797A14();

    if (*(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isScrollMode) == 1)
    {
      v31 = 0;
      v32 = *(v3 + 136);
      if ((v32[17] & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v31 = v29 & (v50 ^ 1);
      v32 = *(v3 + 136);
      if ((v31 & 1) == v32[17])
      {
LABEL_27:
        v32[17] = v31 & 1;
        if ((v29 & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_38;
      }
    }

    v47 = v30;
    v37 = swift_getKeyPath();
    __chkstk_darwin(v37);
    *(&v44 - 2) = v32;
    *(&v44 - 8) = v31 & 1;
    v52 = v32;
    sub_10057F6DC(&qword_100AD9690, type metadata accessor for PageTurnViewModel);
    sub_100797A04();

    v30 = v47;
    if ((v49 & 1) == 0)
    {
LABEL_28:
      if (v48)
      {
        v33 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeRenderMode;
        v34 = *(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeRenderMode);
        if ((v50 & (v30 == 2)) != 0)
        {
          if (v34 == 30)
          {
            swift_unknownObjectRelease();
            v35 = 30;
LABEL_46:
            *(v3 + v33) = v35;
            return;
          }

          v40 = swift_getKeyPath();
          __chkstk_darwin(v40);
          *(&v44 - 2) = v3;
          *(&v44 - 1) = 30;
          v52 = v3;
        }

        else
        {
          if (v34 == 31)
          {
            swift_unknownObjectRelease();
            v35 = 31;
            goto LABEL_46;
          }

          v42 = swift_getKeyPath();
          __chkstk_darwin(v42);
          *(&v44 - 2) = v3;
          *(&v44 - 1) = 31;
          v52 = v3;
        }
      }

      else
      {
        v33 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeRenderMode;
        v36 = *(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeRenderMode);
        if (v31 & 1 | v50 & (v30 == 2))
        {
          if (v36 == 28)
          {
            swift_unknownObjectRelease();
            v35 = 28;
            goto LABEL_46;
          }

          v41 = swift_getKeyPath();
          __chkstk_darwin(v41);
          *(&v44 - 2) = v3;
          *(&v44 - 1) = 28;
          v52 = v3;
        }

        else
        {
          if (v36 == 29)
          {
            swift_unknownObjectRelease();
            v35 = 29;
            goto LABEL_46;
          }

          v43 = swift_getKeyPath();
          __chkstk_darwin(v43);
          *(&v44 - 2) = v3;
          *(&v44 - 1) = 29;
          v52 = v3;
        }
      }

LABEL_40:
      sub_100797A04();

      swift_unknownObjectRelease();
      return;
    }

LABEL_38:
    v38 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeRenderMode;
    if (!*(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeRenderMode))
    {
      swift_unknownObjectRelease();
      *(v3 + v38) = 0;
      return;
    }

    v39 = swift_getKeyPath();
    __chkstk_darwin(v39);
    *(&v44 - 2) = v3;
    *(&v44 - 1) = 0;
    v52 = v3;
    goto LABEL_40;
  }

  if (qword_100AD1858 != -1)
  {
    swift_once();
  }

  v13 = sub_10079ACE4();
  sub_100008B98(v13, qword_100AEA588);
  v14 = sub_10079ACC4();
  v15 = sub_1007A29B4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Must have a contentLayoutProvider", v16, 2u);
  }
}

uint64_t sub_10057E32C()
{
  v1 = v0;
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  if (*(v0 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isScrollMode) != 1 || (swift_getKeyPath(), sub_100797A14(), , v3 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState, result = swift_beginAccess(), v4 = 1.0, (*(v1 + v3) & 1) == 0))
  {
    v4 = 0.0;
  }

  if (*(v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__statusBarBackgroundOpacity) == v4)
  {
    *(v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__statusBarBackgroundOpacity) = v4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100797A04();
  }

  return result;
}

void sub_10057E4EC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for BookReaderChromeState();
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10057F354(a1, v6, type metadata accessor for BookReaderChromeState);
  sub_10057A010(v6);
  sub_10057E32C();
  v7 = *(v2 + 136);
  swift_getKeyPath();
  v15 = v7;
  sub_10057F6DC(&qword_100AD9690, type metadata accessor for PageTurnViewModel);
  sub_100797A14();

  v8 = sub_10079FE94();
  v10 = v9;
  v11 = 1;
  if (v8 != sub_10079FE94() || v10 != v12)
  {
    v11 = sub_1007A3AB4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  sub_10057D8C4(v11 & 1, v14[7]);
}

uint64_t sub_10057E6BC()
{
  sub_10002B130(v0 + 16);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_10002B130(v0 + 144);
  swift_weakDestroy();

  sub_1000074E0(v0 + 184);
  v1 = OBJC_IVAR____TtC5Books19BookReaderViewModel_preorderedPublisher;
  v2 = sub_1001F1160(&unk_100AE1530);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100007840(v0 + OBJC_IVAR____TtC5Books19BookReaderViewModel__overlay, &qword_100ADB1C0);

  v3 = OBJC_IVAR____TtC5Books19BookReaderViewModel__themeColorScheme;
  v4 = sub_10079BC44();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_10057F52C(v0 + OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState, type metadata accessor for BookReaderChromeState);
  v5 = OBJC_IVAR____TtC5Books19BookReaderViewModel__layoutDirection;
  v6 = sub_10079C104();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  sub_100039DA8(v0 + OBJC_IVAR____TtC5Books19BookReaderViewModel__paginatingService);
  sub_100039DA8(v0 + OBJC_IVAR____TtC5Books19BookReaderViewModel__pageNumberProvider);

  v7 = OBJC_IVAR____TtC5Books19BookReaderViewModel___observationRegistrar;
  v8 = sub_100797A54();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t sub_10057EA34()
{
  sub_10057E6BC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BookReaderViewModel()
{
  result = qword_100AEA6D0;
  if (!qword_100AEA6D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10057EAE0()
{
  sub_10057EDA0();
  if (v0 <= 0x3F)
  {
    sub_10057EDF0();
    if (v1 <= 0x3F)
    {
      sub_10079BC44();
      if (v2 <= 0x3F)
      {
        type metadata accessor for BookReaderChromeState();
        if (v3 <= 0x3F)
        {
          sub_10079C104();
          if (v4 <= 0x3F)
          {
            sub_100797A54();
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_10057EDA0()
{
  if (!qword_100AEA6E0)
  {
    v0 = sub_10079B9C4();
    if (!v1)
    {
      atomic_store(v0, &qword_100AEA6E0);
    }
  }
}

void sub_10057EDF0()
{
  if (!qword_100AEA6E8)
  {
    type metadata accessor for OverlayViewModel.Overlay(255);
    v0 = sub_1007A3454();
    if (!v1)
    {
      atomic_store(v0, &qword_100AEA6E8);
    }
  }
}

uint64_t sub_10057EE48()
{
  v1 = v0;
  sub_1007A3744(154);
  v13._countAndFlagsBits = 0xD000000000000031;
  v13._object = 0x80000001008DDAF0;
  sub_1007A23D4(v13);
  v12 = *(v0 + 56);
  sub_1001F1160(&qword_100AEB010);
  sub_1007A3894();
  v14._countAndFlagsBits = 0xD00000000000001FLL;
  v14._object = 0x80000001008DDB30;
  sub_1007A23D4(v14);
  v11 = *(v0 + 64);
  sub_1001F1160(&qword_100AEB018);
  sub_1007A3894();
  v15._countAndFlagsBits = 0xD000000000000016;
  v15._object = 0x80000001008DDB50;
  sub_1007A23D4(v15);
  v2 = [*(v0 + 96) description];
  v3 = sub_1007A2254();
  v5 = v4;

  v16._countAndFlagsBits = v3;
  v16._object = v5;
  sub_1007A23D4(v16);

  v17._object = 0x80000001008DDB70;
  v17._countAndFlagsBits = 0xD000000000000013;
  sub_1007A23D4(v17);
  v6 = [*(v1 + 104) description];
  v7 = sub_1007A2254();
  v9 = v8;

  v18._countAndFlagsBits = v7;
  v18._object = v9;
  sub_1007A23D4(v18);

  v19._countAndFlagsBits = 0xD000000000000017;
  v19._object = 0x80000001008DDB90;
  sub_1007A23D4(v19);
  type metadata accessor for REActionMenuState(0);
  sub_1007A3894();
  return 0;
}

uint64_t sub_10057F0A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100ADB1C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_10057F118()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC5Books19BookReaderViewModel__statusBarBackgroundOpacity) = result;
  return result;
}

double sub_10057F1D4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC5Books19BookReaderViewModel__infoBarTopMargin) = result;
  return result;
}

double sub_10057F1EC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC5Books19BookReaderViewModel__infoBarBottomMargin) = result;
  return result;
}

double sub_10057F204()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC5Books19BookReaderViewModel__gutterWidth) = result;
  return result;
}

__n128 sub_10057F21C()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC5Books19BookReaderViewModel__edgeInsets;
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

uint64_t sub_10057F284(unsigned __int8 *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = sub_1001F1160(&qword_100AEB088);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_10057F354(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10057F3BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageTurnViewModel.State.Active(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10057F52C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10057F5C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BookReaderChromeState();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10057F628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BookReaderChromeState();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10057F6DC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10057F75C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__textColor);
  *(v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__textColor) = v2;
  v4 = v2;
}

uint64_t sub_10057F7BC(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

__n128 sub_10057F830()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC5Books19BookReaderViewModel__menuOuterMargin;
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

void sub_10057F850()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__backgroundColor);
  *(v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__backgroundColor) = v2;
  v4 = v2;
}

void sub_10057F890()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__coverImage);
  *(v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__coverImage) = v2;
  v4 = v2;
}

id ServiceCenter.__allocating_init(appConfiguration:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithAppConfiguration:a1];

  return v3;
}

id ServiceCenter.init(appConfiguration:)(void *a1)
{
  v2 = objc_allocWithZone(swift_getObjectType());
  v3 = sub_100013574(a1, v2);
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_10057FB10(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v7 = OBJC_IVAR___BKServiceCenter_services;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16) && (v9 = sub_10000E53C(a1, a2), (v10 & 1) != 0))
  {
    sub_10057FF80(*(v8 + 56) + 56 * v9, &v13);
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_1001F1160(&qword_100AEB0E0);
    a3(0);
    if (swift_dynamicCast())
    {
      return v12;
    }
  }

  else
  {
    swift_endAccess();
  }

  return 0;
}

id sub_10057FC5C(void *a1, uint64_t a2, void (*a3)(void), uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  a3(0);
  v9 = a1;
  sub_1001F1160(a4);
  v10 = sub_1007A22E4();
  v12 = sub_10057FB10(v10, v11, a6);

  if (v12)
  {

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10057FD3C(void (*a1)(void), uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  a1(0);
  sub_1001F1160(a2);
  v6 = sub_1007A22E4();
  v8 = sub_10057FB10(v6, v7, a4);

  if (v8)
  {
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t ServiceCenter.priceTrackingService.getter()
{
  type metadata accessor for PriceTrackingService();
  sub_1001F1160(&qword_100AEB0B0);
  v0 = sub_1007A22E4();
  v2 = sub_10057FB10(v0, v1, type metadata accessor for PriceTrackingService);

  return v2;
}

uint64_t sub_10057FF80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100ADAE70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10057FFF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100ADAE70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_100580060(unint64_t a1, uint64_t *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1007A38D4())
  {
    result = &_swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    result = sub_1007A37F4();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = sub_1007A3784();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v8 = *(a1 + 8 * j + 32);
      }

      v9 = v8;
      v10 = *a2;
      if (*(*a2 + 16))
      {
        v11 = sub_10000E53C(*&v8[OBJC_IVAR___BKRootBarItem_identifier], *&v8[OBJC_IVAR___BKRootBarItem_identifier + 8]);
        if (v12)
        {
          v13 = *(*(v10 + 56) + 8 * v11);
          sub_10000A7C4(0, &qword_100ADAF70);
          v14 = v13;
          if (sub_1007A3184())
          {
            v15 = v9;
          }

          else
          {
            v15 = v14;
          }
        }
      }

      sub_1007A37D4();
      sub_1007A3804();
      sub_1007A3814();
      sub_1007A37E4();
      if (v7 == i)
      {
        return &_swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return result;
}

uint64_t sub_100580218(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_1005802C4(uint64_t (*a1)(unint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = *v6++;
      v12 = v8;
      sub_1002B6C38(v8);
      v9 = a1(&v12);
      sub_1002B6C54(v8);
      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10058036C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

BOOL sub_10058041C(uint64_t (*a1)(char *), uint64_t a2)
{
  v26 = a1;
  v27 = a2;
  v3 = sub_1007A0F74();
  v24 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F1160(&unk_100AEB380);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_1001F1160(&unk_100AF4270);
  AssociatedConformanceWitness = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  v13 = sub_1001F1160(&unk_100AEB390);
  v25 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v24 - v15;
  (*(v10 + 16))(v12, v30, v9, v14);
  swift_getOpaqueTypeConformance2();
  v29 = v16;
  sub_1007A24C4();
  v30 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = (v24 + 48);
  v18 = (v24 + 32);
  v19 = (v24 + 8);
  do
  {
    sub_1007A3474();
    v20 = (*v17)(v8, 1, v3);
    if (v20 == 1)
    {
      break;
    }

    (*v18)(v5, v8, v3);
    v21 = v26(v5);
    if (v2)
    {
      (*v19)(v5, v3);
      break;
    }

    v22 = v21;
    (*v19)(v5, v3);
  }

  while ((v22 & 1) == 0);
  (*(v25 + 8))(v29, v30);
  return v20 != 1;
}

uint64_t sub_1005807A0(uint64_t (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = *v6++;
      v13 = v8;
      v9 = v8;
      v10 = a1(&v13);

      if (v3)
      {
        break;
      }

      v11 = v7-- == 0;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t sub_100580844(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
          v8 = sub_1007A3784();
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
      v13 = sub_1007A38D4();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_10058096C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F1160(&qword_100AD3C30);
    v2 = sub_1007A3924();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100007484(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100019288(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100019288(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100019288(v31, v32);
    result = sub_1007A3694(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100019288(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_100580C48(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F1160(&unk_100ADAD00);
    v2 = sub_1007A3924();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = sub_1001F1160(&qword_100AD4F30);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = v5 + 63;
  if (v3 == &type metadata for String)
  {
    v29 = v8 >> 6;

    v30 = 0;
LABEL_31:
    if (!v7)
    {
      goto LABEL_33;
    }

    do
    {
      v32 = v30;
LABEL_36:
      v33 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      sub_1000077D8(*(a1 + 56) + 40 * (v33 | (v32 << 6)), v47, &unk_100AF1C40);
      v42 = v47[0];
      v43 = v47[1];
      v44 = v48;

      swift_dynamicCast();
      v34 = v52;
      v52 = v42;
      v53 = v43;
      *&v54 = v44;
      result = sub_1002EC958(v34, *(&v34 + 1));
      if (v35)
      {
        *(v2[6] + 16 * result) = v34;
        v31 = result;

        result = sub_1002391EC(&v52, v2[7] + 40 * v31, &unk_100AF1C40);
        v30 = v32;
        goto LABEL_31;
      }

      if (v2[2] >= v2[3])
      {
        goto LABEL_46;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v34;
      v36 = v2[7] + 40 * result;
      v37 = v52;
      v38 = v53;
      *(v36 + 32) = v54;
      *v36 = v37;
      *(v36 + 16) = v38;
      v39 = v2[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_47;
      }

      v2[2] = v41;
      v30 = v32;
    }

    while (v7);
LABEL_33:
    while (1)
    {
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v32 >= v29)
      {

LABEL_42:

        return v2;
      }

      v7 = *(v4 + 8 * v32);
      ++v30;
      if (v7)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 8;

    v12 = 0;
    while (v7)
    {
LABEL_16:
      v18 = __clz(__rbit64(v7)) | (v12 << 6);
      v19 = (*(a1 + 48) + 16 * v18);
      v21 = *v19;
      v20 = v19[1];
      sub_1000077D8(*(a1 + 56) + 40 * v18, &v53, &unk_100AF1C40);
      *&v52 = v21;
      *(&v52 + 1) = v20;
      v49 = v53;
      v50 = v54;
      v51 = v55;

      swift_dynamicCast();
      sub_1007A3C04();
      if (v46)
      {
        sub_1007A3C24(1u);
        _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        sub_1007A3C24(0);
      }

      result = sub_1007A3C44();
      v22 = -1 << *(v2 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~v10[v23 >> 6]) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = v10[v24];
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_44;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~v10[v23 >> 6])) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (v2[6] + 16 * v13);
      *v14 = v45;
      v14[1] = v46;
      v15 = v2[7] + 40 * v13;
      v16 = v50;
      *v15 = v49;
      *(v15 + 16) = v16;
      *(v15 + 32) = v51;
      ++v2[2];
    }

    while (1)
    {
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v17 >= v9)
      {

        goto LABEL_42;
      }

      v7 = *(v4 + 8 * v17);
      ++v12;
      if (v7)
      {
        v12 = v17;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_100581100(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F1160(&qword_100AD3C30);
    v2 = sub_1007A3924();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100019288(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100019288(v29, v30);
    result = sub_1007A3694(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = v7[v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_100019288(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1005813B8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F1160(&qword_100AD3C30);
    v2 = sub_1007A3924();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100019288(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100019288(v29, v30);
    result = sub_1007A3694(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = v7[v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_100019288(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_100581680(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F1160(&qword_100AD35C8);
    v2 = sub_1007A3924();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_100007484(*(a1 + 56) + 32 * v13, v29);
        *&v28 = v15;
        *(&v28 + 1) = v16;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v17 = v28;
        sub_100019288(v27, &v22);

        sub_1001F1160(&qword_100ADD660);
        swift_dynamicCast();
        sub_100019288(&v23, v25);
        sub_100019288(v25, v26);
        sub_100019288(v26, &v24);
        result = sub_10000E53C(v17, *(&v17 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v17;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_1000074E0(v10);
          result = sub_100019288(&v24, v10);
          v8 = v11;
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
          *(v2[6] + 16 * result) = v17;
          result = sub_100019288(&v24, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
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

uint64_t sub_100581920(uint64_t a1, unint64_t *a2)
{
  if (*(a1 + 16))
  {
    sub_1001F1160(&unk_100AD36E0);
    v2 = sub_1007A3924();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (v9 << 9) | (8 * __clz(__rbit64(v5)));
    v13 = *(*(a1 + 48) + v12);
    v28 = *(*(a1 + 56) + v12);
    v14 = v28;
    sub_10000A7C4(0, a2);
    v15 = v13;
    v16 = v14;
    swift_dynamicCast();
    sub_100019288((v29 + 8), v27);
    sub_100019288(v27, v29);
    sub_1007A2254();
    sub_1007A3C04();
    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
    v17 = sub_1007A3C44();

    v18 = -1 << *(v2 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~v7[v19 >> 6]) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = v7[v20];
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~v7[v19 >> 6])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v5 &= v5 - 1;
    *(v2[6] + 8 * v10) = v15;
    result = sub_100019288(v29, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v9;
    if (v5)
    {
      v9 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100581BD0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F1160(&qword_100AD3C30);
    v2 = sub_1007A3924();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100019288(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100019288(v29, v30);
    result = sub_1007A3694(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = v7[v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_100019288(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_100581E84(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F1160(&unk_100AEB3B0);
    v2 = sub_1007A3924();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = *(*(a1 + 56) + 8 * v13);

        v18 = v17;
        result = sub_10000E53C(v16, v15);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          *(v2[7] + 8 * v10) = v18;
          result = swift_unknownObjectRelease();
          v8 = v11;
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
          v20 = (v2[6] + 16 * result);
          *v20 = v16;
          v20[1] = v15;
          *(v2[7] + 8 * result) = v18;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
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

unint64_t sub_100582064(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F1160(&unk_100AD3C10);
    v2 = sub_1007A3924();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_100019288(&v22, v24);
        sub_100019288(v24, v25);
        sub_100019288(v25, &v23);
        result = sub_10000E53C(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_1000074E0(v11);
          result = sub_100019288(&v23, v11);
          v8 = v12;
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
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_100019288(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
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

void sub_1005822BC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F1160(&qword_100ADAD40);
    v2 = sub_1007A3924();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_10000E53C(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
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

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

unint64_t sub_10058249C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F1160(&qword_100AD35B8);
    v1 = sub_1007A3924();
  }

  else
  {
    v1 = _swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      while (1)
      {
        v10 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        v11 = v10 | (v9 << 6);
        v12 = (*(a1 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        sub_100007484(*(a1 + 56) + 32 * v11, v32);
        *&v31 = v13;
        *(&v31 + 1) = v14;
        v29 = v31;
        v30[0] = v32[0];
        v30[1] = v32[1];
        v15 = v31;
        sub_100019288(v30, &v23);

        sub_1001F1160(&unk_100AD5B40);
        swift_dynamicCast();
        v27 = v25;
        v28 = v26;
        v24 = v25;
        v25 = v26;
        result = sub_10000E53C(v15, *(&v15 + 1));
        if (v16)
        {
          *(v1[6] + 16 * result) = v15;
          v8 = result;

          result = sub_1002391EC(&v24, v1[7] + 32 * v8, &unk_100AD5B40);
          v7 = v9;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v1[2] >= v1[3])
          {
            goto LABEL_20;
          }

          *(v1 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v1[6] + 16 * result) = v15;
          v17 = (v1[7] + 32 * result);
          v18 = v25;
          *v17 = v24;
          v17[1] = v18;
          v19 = v1[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v1[2] = v21;
          v7 = v9;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v9 = v7;
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

uint64_t sub_100582728(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F1160(&qword_100AD3C30);
    v2 = sub_1007A3924();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    v16;
    swift_dynamicCast();
    sub_10000A7C4(0, &qword_100AD6750);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100019288(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100019288(v31, v32);
    result = sub_1007A3694(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100019288(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1005829F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F1160(&qword_100AD3C30);
    v2 = sub_1007A3924();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100007484(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];

    swift_dynamicCast();
    sub_100019288(v33, v32);
    sub_1001F1160(&qword_100ADD660);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100019288(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100019288(v31, v32);
    result = sub_1007A3694(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100019288(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id TabBarController.__allocating_init(viewControllerProvider:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_1000204C4();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_100582D38()
{
  v1 = _UISolariumEnabled();
  v2 = [v0 viewController];
  v3 = v2;
  if (v1)
  {
    if (v2)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  else
  {
    if (v2)
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (!v5)
      {
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = [v5 contentNavigationController];

    return v6;
  }
}

void sub_100582E04()
{
  v1 = _UISolariumEnabled();
  v2 = [v0 viewController];
  if (v1)
  {
    v3 = &selRef_bc_analyticsVisibilityUpdateSubtree;
  }

  else
  {
    if (v2)
    {
      v4 = v2;
      objc_opt_self();
      v2 = swift_dynamicCastObjCClass();
      if (!v2)
      {

        v2 = 0;
      }
    }

    v3 = &selRef_didUpdateContentViewController;
  }

  v5 = v2;
  [v2 *v3];
}

void *MiniPlayerHostingTabBarController.bc_preferredTabBarScrollEdgeAppearance.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController__bc_preferredTabBarScrollEdgeAppearance);
  v2 = v1;
  return v1;
}

void MiniPlayerHostingTabBarController.bc_preferredTabBarScrollEdgeAppearance.setter(void *a1)
{
  sub_10058C820(a1);
}

void *MiniPlayerHostingTabBarController.miniPlayerViewController.getter()
{
  v1 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_10058309C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
  sub_100583104(v5);
}

void sub_100583104(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (v5)
  {
    if (v5 == a1)
    {
      return;
    }

    if (!a1)
    {
      [v1 shouldAutomaticallyForwardAppearanceMethods];
      goto LABEL_11;
    }
  }

  else if (!a1)
  {
    return;
  }

  [a1 willMoveToParentViewController:0];
  v6 = [a1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_35;
  }

  v7 = v6;
  [v6 removeFromSuperview];

  v8 = [a1 view];
  if (!v8)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = v8;
  [v8 setInsetsLayoutMarginsFromSafeArea:1];

  if (([v2 shouldAutomaticallyForwardAppearanceMethods] & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    v40 = a1;
    sub_1004A6BE8(v2[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState], 0x80u, ObjectType, &off_100A1ED78);
  }

  [a1 removeFromParentViewController];
LABEL_11:
  v11 = _UISolariumEnabled();
  v12 = *&v2[v4];
  if (v11)
  {
    if (v12)
    {
      v13 = swift_getObjectType();
      v14 = v12;
      v15 = [v14 view];
      if (v15)
      {
        v16 = v15;
        [v2 addChildViewController:v14];
        v17 = [objc_allocWithZone(UITabAccessory) initWithContentView:v16];
        [v2 setBottomAccessory:v17];

        if (([v2 shouldAutomaticallyForwardAppearanceMethods] & 1) == 0)
        {
          v40 = v14;
          sub_1004A6BE8(128, v2[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState], v13, &off_100A1ED78);
        }

        [v14 didMoveToParentViewController:{v2, v40}];

        return;
      }
    }

    [v2 setBottomAccessory:0];
    return;
  }

  if (v12)
  {
    v18 = swift_getObjectType();
    v19 = v12;
    [v2 addChildViewController:v19];
    v20 = [v19 view];
    if (v20)
    {
      v21 = v20;
      [v20 setInsetsLayoutMarginsFromSafeArea:0];

      v22 = sub_100021C08();
      v24 = v23;
      v25 = [v19 view];
      if (v25)
      {
        v26 = v25;
        v27 = swift_getObjectType();
        (*(v24 + 64))(v26, v27, v24);

        if (([v2 shouldAutomaticallyForwardAppearanceMethods] & 1) == 0)
        {
          v40 = v19;
          sub_1004A6BE8(128, v2[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState], v18, &off_100A1ED78);
        }

        [v19 didMoveToParentViewController:{v2, v40}];

        goto LABEL_23;
      }

LABEL_37:
      __break(1u);
      return;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_23:
  v28 = sub_100021C08();
  [v28 setHidden:*&v2[v4] == 0];

  v29 = [v2 tabBar];
  if (*&v2[v4])
  {
    v30 = [v2 tabBar];
    v31 = [v30 standardAppearance];
  }

  else
  {
    v31 = [v2 bc_preferredTabBarScrollEdgeAppearance];
  }

  [v29 setScrollEdgeAppearance:v31];

  v32 = [v2 selectedViewController];
  if (v32)
  {
    v33 = v32;
    v34 = &v2[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController____lazy_storage___hostContainerView];
    if (([*&v2[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController____lazy_storage___hostContainerView] isHidden] & 1) == 0)
    {
      v35 = *v34;
      v36 = *(v34 + 1);
      v37 = swift_getObjectType();
      v38 = *(v36 + 8);
      v39 = v35;
      v38(v37, v36);
    }

    [v33 additionalSafeAreaInsets];
    [v33 setAdditionalSafeAreaInsets:?];
  }

  _s5Books33MiniPlayerHostingTabBarControllerC11viewDidMove2to23shouldAppearOrDisappearySo8UIWindowCSg_SbtF_0();
}

Swift::Void __swiftcall MiniPlayerHostingTabBarController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  objc_msgSendSuper2(&v7, "viewWillAppear:", v2);
  v3 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState;
  v4 = v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState];
  v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState] = v2;
  if (v4 > 0x3F || ((v4 ^ v2)) && ([v1 shouldAutomaticallyForwardAppearanceMethods] & 1) == 0)
  {
    v5 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController;
    swift_beginAccess();
    if (*&v1[v5])
    {
      ObjectType = swift_getObjectType();
      sub_1004A6BE8(v4, v1[v3], ObjectType, &off_100A1ED78);
    }
  }
}

Swift::Void __swiftcall MiniPlayerHostingTabBarController.viewDidAppear(_:)(Swift::Bool a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  objc_msgSendSuper2(&v7, "viewDidAppear:", a1);
  v3 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState;
  v4 = v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState];
  v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState] = -127;
  if (v4 != 129 && ([v1 shouldAutomaticallyForwardAppearanceMethods] & 1) == 0)
  {
    v5 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController;
    swift_beginAccess();
    if (*&v1[v5])
    {
      ObjectType = swift_getObjectType();
      sub_1004A6BE8(v4, v1[v3], ObjectType, &off_100A1ED78);
    }
  }
}

Swift::Void __swiftcall MiniPlayerHostingTabBarController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  objc_msgSendSuper2(&v7, "viewWillDisappear:", v2);
  v3 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState;
  v4 = v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState];
  v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState] = v2 | 0x40;
  if ((v4 & 0xC0) != 0x40 || ((v4 ^ v2)) && ([v1 shouldAutomaticallyForwardAppearanceMethods] & 1) == 0)
  {
    v5 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController;
    swift_beginAccess();
    if (*&v1[v5])
    {
      ObjectType = swift_getObjectType();
      sub_1004A6BE8(v4, v1[v3], ObjectType, &off_100A1ED78);
    }
  }
}

Swift::Void __swiftcall MiniPlayerHostingTabBarController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  objc_msgSendSuper2(&v7, "viewDidDisappear:", a1);
  v3 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState;
  v4 = v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState];
  v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState] = 0x80;
  if (v4 != 128 && ([v1 shouldAutomaticallyForwardAppearanceMethods] & 1) == 0)
  {
    v5 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController;
    swift_beginAccess();
    if (*&v1[v5])
    {
      ObjectType = swift_getObjectType();
      sub_1004A6BE8(v4, v1[v3], ObjectType, &off_100A1ED78);
    }
  }
}

Swift::Void __swiftcall MiniPlayerHostingTabBarController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  objc_msgSendSuper2(&v19, "viewDidLayoutSubviews");
  v2 = sub_100021C08();
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = [v1 tabBar];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v20.origin.x = v8;
  v20.origin.y = v10;
  v20.size.width = v12;
  v20.size.height = v14;
  Height = CGRectGetHeight(v20);
  v16 = (*(v4 + 32))(v18, ObjectType, v4);
  *(v17 + 16) = Height;
  v16(v18, 0);

  _s5Books33MiniPlayerHostingTabBarControllerC11viewDidMove2to23shouldAppearOrDisappearySo8UIWindowCSg_SbtF_0();
}

void MiniPlayerHostingTabBarController.viewControllers.setter(uint64_t a1)
{
  if (a1)
  {
    sub_10000A7C4(0, &qword_100AD7CB0);
    v2.super.isa = sub_1007A25D4().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3.receiver = v1;
  v3.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  objc_msgSendSuper2(&v3, "setViewControllers:", v2.super.isa);
}

Swift::Void __swiftcall MiniPlayerHostingTabBarController._rebuildTabBarItems(animated:)(Swift::Bool animated)
{
  v3 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_isRebuildingTabBarItems;
  v4 = v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_isRebuildingTabBarItems];
  v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_isRebuildingTabBarItems] = 1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  objc_msgSendSuper2(&v5, "_rebuildTabBarItemsAnimated:", animated);
  v1[v3] = v4;
}

Swift::Void __swiftcall MiniPlayerHostingTabBarController._updateLayout(for:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v3 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_isRebuildingTabBarItems;
  v4 = v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_isRebuildingTabBarItems];
  v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_isRebuildingTabBarItems] = 1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  objc_msgSendSuper2(&v5, "_updateLayoutForTraitCollection:", isa);
  v1[v3] = v4;
}

void MiniPlayerHostingTabBarController.mutableChildViewControllers.setter(void *a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  objc_msgSendSuper2(&v3, "setMutableChildViewControllers:", a1);
}

id MiniPlayerHostingTabBarController.init(tabs:)()
{
  *&v0[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController__bc_preferredTabBarScrollEdgeAppearance] = 0;
  v0[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState] = 0x80;
  *&v0[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController] = 0;
  *&v0[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_bottomAnchorConstraint] = 0;
  v1 = &v0[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController____lazy_storage___hostContainerView];
  *v1 = 0;
  v1[1] = 0;
  v0[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_isRebuildingTabBarItems] = 0;
  sub_10000A7C4(0, &qword_100AEB148);
  isa = sub_1007A25D4().super.isa;

  v5.receiver = v0;
  v5.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  v3 = objc_msgSendSuper2(&v5, "initWithTabs:", isa);

  return v3;
}

id MiniPlayerHostingTabBarController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController__bc_preferredTabBarScrollEdgeAppearance] = 0;
  v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState] = 0x80;
  *&v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController] = 0;
  *&v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_bottomAnchorConstraint] = 0;
  v3 = &v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController____lazy_storage___hostContainerView];
  *v3 = 0;
  v3[1] = 0;
  v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_isRebuildingTabBarItems] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t MiniPlayerHostingTabBarController.dockMiniPlayer(_:)(void *a1)
{
  v3 = sub_1007A1C54();
  v16 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1007A1CA4();
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A7C4(0, &qword_100AD1E10);
  v9 = sub_1007A2D74();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_10058C97C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A23AD0;
  v11 = _Block_copy(aBlock);
  v12 = v1;
  v13 = a1;

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100022A14(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v11);

  (*(v16 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v15);
}

void sub_1005842CC(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;
  sub_100583104(v5);
}

Swift::Void __swiftcall MiniPlayerHostingTabBarController.undockMiniPlayer()()
{
  v1 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;
  sub_100583104(v2);
}

uint64_t TabBarController.rootBarEventPublisher.getter()
{
  sub_1001F1160(&unk_100AD2090);
  sub_100005920(&qword_100AEB170, &unk_100AD2090);
  return sub_10079BA14();
}

uint64_t sub_1005844F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

uint64_t TabBarController._rootBarCoordinator.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TabBarController._rootBarCoordinator.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___BKTabBarController__rootBarCoordinator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1002E75AC;
}

id TabBarController.init(viewControllerProvider:)()
{
  v0 = sub_1000204C4();
  swift_unknownObjectRelease();
  return v0;
}

void sub_100584740()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100586338();
  }
}

Swift::Void __swiftcall TabBarController.setStandardItems(_:animated:)(Swift::OpaquePointer _, Swift::Bool animated)
{
  v3 = v2;
  LOBYTE(v4) = animated;
  sub_10000A7C4(0, &qword_100AD1E10);
  v6 = sub_1007A2D74();
  v7 = &_dispatch_main_q;
  if (v6 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  v68 = &_swiftEmptyDictionarySingleton;
  v8 = OBJC_IVAR___BKTabBarController_items;
  v9 = *&v2[OBJC_IVAR___BKTabBarController_items];
  if (v9 >> 62)
  {
    goto LABEL_29;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v4; v10; i = v4)
  {
    rawValue = _._rawValue;
    v59 = v8;
    v60 = v3;
    v66 = v9 & 0xC000000000000001;
    v62 = v9 & 0xFFFFFFFFFFFFFF8;

    v11 = 0;
    v4 = &_swiftEmptyDictionarySingleton;
    buf = v9;
    while (1)
    {
      if (v66)
      {
        v14 = sub_1007A3784();
      }

      else
      {
        if (v11 >= *(v62 + 16))
        {
          goto LABEL_28;
        }

        v14 = *(v9 + 8 * v11 + 32);
      }

      v8 = v14;
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v3 = v10;
      v17 = *&v14[OBJC_IVAR___BKRootBarItem_identifier];
      v16 = *&v14[OBJC_IVAR___BKRootBarItem_identifier + 8];

      v8 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v4;
      v9 = v4;
      _._rawValue = sub_10000E53C(v17, v16);
      v20 = v4;
      v21 = *(v4 + 16);
      v22 = (v19 & 1) == 0;
      v23 = v21 + v22;
      if (__OFADD__(v21, v22))
      {
        goto LABEL_26;
      }

      v24 = v19;
      if (*(v20 + 24) >= v23)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v19)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v9 = &v67;
          sub_1002F0EC8();
          if (v24)
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
        sub_1003D4190(v23, isUniquelyReferenced_nonNull_native);
        v9 = v67;
        v25 = sub_10000E53C(v17, v16);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_49;
        }

        _._rawValue = v25;
        if (v24)
        {
LABEL_6:

          v4 = v67;
          v12 = v67[7];
          v13 = *(v12 + 8 * _._rawValue);
          *(v12 + 8 * _._rawValue) = v8;

          goto LABEL_7;
        }
      }

      v4 = v67;
      v67[(_._rawValue >> 6) + 8] |= 1 << SLOBYTE(_._rawValue);
      v27 = (*(v4 + 48) + 16 * _._rawValue);
      *v27 = v17;
      v27[1] = v16;
      *(*(v4 + 56) + 8 * _._rawValue) = v8;

      v28 = *(v4 + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_27;
      }

      *(v4 + 16) = v30;
LABEL_7:
      ++v11;
      v10 = v3;
      v9 = buf;
      if (v15 == v3)
      {
        v68 = v4;

        LOBYTE(v4) = i;
        v8 = v59;
        v3 = v60;
        _._rawValue = rawValue;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v10 = sub_1007A38D4();
  }

LABEL_30:
  *&v8[v3] = sub_100580060(_._rawValue, &v68);

  if (qword_100AD1870 != -1)
  {
    swift_once();
  }

  v31 = sub_10079ACE4();
  sub_100008B98(v31, qword_100AEB0F0);
  v32 = v3;
  v33 = sub_10079ACC4();
  v34 = sub_1007A29D4();

  if (!os_log_type_enabled(v33, v34))
  {
    goto LABEL_46;
  }

  v35 = swift_slowAlloc();
  v36 = swift_slowAlloc();
  v67 = v36;
  *v35 = 67109378;
  *(v35 + 4) = v4 & 1;
  *(v35 + 8) = 2082;
  v37 = *&v8[v3];
  v63 = v36;
  bufa = v35;
  if (v37 >> 62)
  {
    v55 = *&v8[v3];
    v56 = sub_1007A38D4();
    v37 = v55;
    v38 = v56;
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v38)
  {
LABEL_45:
    sub_1001F1160(&unk_100AD61F0);
    sub_100005920(&qword_100AEB190, &unk_100AD61F0);
    v51 = sub_1007A20B4();
    v53 = v52;

    v54 = sub_1000070F4(v51, v53, &v67);

    *(bufa + 10) = v54;
    _os_log_impl(&_mh_execute_header, v33, v34, "Asked to set RootBarItems (animated=%{BOOL}d to: %{public}s", bufa, 0x12u);
    sub_1000074E0(v63);

LABEL_46:

    sub_1005869D0(v4 & 1);

    return;
  }

  v39 = v37;

  sub_1003BD0CC(0, v38 & ~(v38 >> 63), 0);
  if ((v38 & 0x8000000000000000) == 0)
  {
    v58 = v34;
    v40 = 0;
    v41 = v39;
    do
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v42 = sub_1007A3784();
      }

      else
      {
        v42 = *(v41 + 8 * v40 + 32);
      }

      v43 = v42;
      v44 = [v42 description];
      v45 = sub_1007A2254();
      v47 = v46;

      v49 = *(&_swiftEmptyArrayStorage + 2);
      v48 = *(&_swiftEmptyArrayStorage + 3);
      if (v49 >= v48 >> 1)
      {
        sub_1003BD0CC((v48 > 1), v49 + 1, 1);
      }

      ++v40;
      *(&_swiftEmptyArrayStorage + 2) = v49 + 1;
      v50 = &_swiftEmptyArrayStorage + 2 * v49;
      v50[4] = v45;
      v50[5] = v47;
      v41 = v39;
    }

    while (v38 != v40);

    LOBYTE(v4) = i;
    v34 = v58;
    goto LABEL_45;
  }

  __break(1u);
LABEL_49:
  sub_1007A3B24();
  __break(1u);
}

Swift::Void __swiftcall TabBarController.select(identifier:isUserAction:)(Swift::String identifier, Swift::Bool isUserAction)
{
  v3 = v2;
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  sub_10000A7C4(0, &qword_100AD1E10);
  v7 = sub_1007A2D74();
  v8 = &_dispatch_main_q;
  if (v7 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  v9 = sub_100586590(countAndFlagsBits, object);
  if ((v10 & 1) == 0)
  {
    v11 = v9;
    if ((*(v3 + OBJC_IVAR___BKTabBarController_isTransferingFromSidebar) & 1) == 0 && isUserAction)
    {
      v12 = [v3 bk_rootBarCoordinator];
      if (v12)
      {
        v13 = [v12 rootViewController];
        swift_unknownObjectRelease();
        [v13 bc_dismissIfSafeAnimated:0];
      }
    }

    [v3 bc_setSelectedIndex:v11];

    sub_100020ED0();
  }
}

Swift::Bool __swiftcall TabBarController.hasStandardItem(withIdentifier:)(Swift::String withIdentifier)
{
  object = withIdentifier._object;
  countAndFlagsBits = withIdentifier._countAndFlagsBits;
  sub_10000A7C4(0, &qword_100AD1E10);
  v3 = sub_1007A2D74();
  v4 = &_dispatch_main_q;
  if (v3 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  sub_100586590(countAndFlagsBits, object);
  return (v5 & 1) == 0;
}

UINavigationController_optional __swiftcall TabBarController.navigationController(forIdentifier:)(Swift::String forIdentifier)
{
  object = forIdentifier._object;
  countAndFlagsBits = forIdentifier._countAndFlagsBits;
  sub_10000A7C4(0, &qword_100AD1E10);
  v3 = sub_1007A2D74();
  v4 = &_dispatch_main_q;
  if (v3 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  sub_100586590(countAndFlagsBits, object);
  if (v5)
  {
    v6 = 0;
  }

  else
  {

    v6 = sub_100586864();
  }

  result.value.super.super.super.isa = v6;
  result.is_nil = v5;
  return result;
}

UIViewController_optional __swiftcall TabBarController.topViewController(forIdentifier:)(Swift::String forIdentifier)
{
  object = forIdentifier._object;
  countAndFlagsBits = forIdentifier._countAndFlagsBits;
  sub_10000A7C4(0, &qword_100AD1E10);
  v3 = sub_1007A2D74();
  v4 = &_dispatch_main_q;
  if (v3 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  v5 = sub_1007A2D74();
  v6 = &_dispatch_main_q;
  if (v5 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  sub_100586590(countAndFlagsBits, object);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_100586864();
  }

  v9 = [v8 topViewController];

  v11 = v9;
  result.value.super.super.isa = v11;
  result.is_nil = v10;
  return result;
}

Swift::Void __swiftcall TabBarController._setSelectedViewController(_:performUpdates:)(UIViewController_optional _, Swift::Bool performUpdates)
{
  is_nil = _.is_nil;
  isa = _.value.super.super.isa;
  v44 = sub_10079AD54();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10079AD84();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10079AD44();
  v36 = *(v9 - 8);
  __chkstk_darwin(v9);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10079AD64();
  v35 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10079ADB4();
  v39 = *(v41 - 8);
  v14 = __chkstk_darwin(v41);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v2 selectedViewController];
  if (v17)
  {
    v18 = v17;
    v45 = [v17 bc_deepestVisibleChildViewControllerIncludePresented:1];
  }

  else
  {
    v45 = 0;
  }

  v19 = type metadata accessor for TabBarController();
  v51.receiver = v2;
  v51.super_class = v19;
  objc_msgSendSuper2(&v51, "_setSelectedViewController:performUpdates:", isa, is_nil);
  v20 = OBJC_IVAR___BKTabBarController_isPopulatingItems;
  if (*(v2 + OBJC_IVAR___BKTabBarController_isPopulatingItems) == 1)
  {
    v21 = [v2 bk_rootBarCoordinator];
    if (!v21)
    {
      goto LABEL_16;
    }

    v22 = [v21 hostingViewController];

    swift_unknownObjectRelease();
    if (v22 != v2)
    {
      goto LABEL_16;
    }
  }

  if (isa)
  {
    v23 = [(objc_class *)isa tab];
    if (v23)
    {
      v24 = v23;
      sub_100587884(v23);
    }
  }

  if ((*(v2 + v20) & 1) != 0 || (*(v2 + OBJC_IVAR___BKTabBarController_isTransferingFromSidebar) & 1) != 0 || (v25 = TabBarController.selectedItem.getter()) == 0)
  {
LABEL_16:
  }

  else
  {
    v26 = v25;
    (*(v35 + 104))(v13, enum case for FigaroClickEvent.ActionContext.tabBarController(_:), v11);
    (*(v36 + 104))(v40, enum case for FigaroActionType.focus(_:), v9);
    v36 = *&v26[OBJC_IVAR___BKRootBarItem_url];
    sub_1001F1160(&qword_100ADAF48);
    sub_10079ADA4();
    *(swift_allocObject() + 16) = xmmword_10080B690;

    [v2 selectedIndex];
    (*(v37 + 104))(v8, enum case for FigaroClickEvent.Location.Type.tabItem(_:), v38);
    sub_10079AD94();
    (*(v42 + 104))(v43, enum case for FigaroClickEvent.TargetType.tabItem(_:), v44);

    sub_100019158(_swiftEmptyArrayStorage);
    sub_10079AD74();
    sub_100022A14(&qword_100ADAF50, &type metadata accessor for FigaroClickEvent);
    v27 = v41;
    sub_10079AE74();
    (*(v39 + 8))(v16, v27);
    v50 = _swiftEmptyDictionarySingleton;
    v28 = v45;
    if (v45 && (v29 = [v45 ba_effectiveAnalyticsTracker]) != 0)
    {
      v30 = v29;
      v49 = sub_100798454();
      *&v48 = v30;
      sub_100019288(&v48, v47);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = _swiftEmptyDictionarySingleton;
      sub_1002F4B78(v47, 0x72656B63617274, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
      v50 = v46;
    }

    else
    {
      sub_1002EEBD0(0x72656B63617274, 0xE700000000000000, &v48);
      sub_100007840(&v48, &unk_100AD5B40);
    }

    v32 = objc_opt_self();
    type metadata accessor for FigaroKey(0);
    sub_100022A14(&qword_100AD36A0, type metadata accessor for FigaroKey);
    v33 = sub_1007A2024().super.isa;

    sub_10058096C(v50);

    v34 = sub_1007A2024().super.isa;

    [v32 recordNativeEvent:v33 additionalInfo:v34];
  }
}

Swift::Void __swiftcall TabBarController.viewWillAppear(_:)(Swift::Bool a1)
{
  v7 = 0;
  v8 = 0;
  v6 = a1;
  v9 = 0;
  sub_10079B8C4();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TabBarController();
  objc_msgSendSuper2(&v5, "viewWillAppear:", a1);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    [v3 setAccessibilityElementsHidden:0];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall TabBarController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v7 = 0;
  v8 = 0;
  v6 = a1;
  v9 = 2;
  sub_10079B8C4();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TabBarController();
  objc_msgSendSuper2(&v5, "viewWillDisappear:", a1);
  if (_AXSAutomationEnabled())
  {
    v3 = [v1 view];
    if (v3)
    {
      v4 = v3;
      [v3 setAccessibilityElementsHidden:1];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_100585BE8(char a1, char a2, SEL *a3)
{
  v9 = 0;
  v10 = 0;
  v8 = a1 & 1;
  v11 = a2;
  sub_10079B8C4();
  v7.receiver = v3;
  v7.super_class = type metadata accessor for TabBarController();
  return objc_msgSendSuper2(&v7, *a3, a1 & 1);
}

void TabBarController.viewWillTransition(to:with:)(uint64_t (*a1)(uint64_t a1), double a2, double a3)
{
  v4 = v3;
  v11 = *&a2;
  v12 = *&a3;
  v13 = a1;
  LOBYTE(v14) = 4;
  swift_unknownObjectRetain();
  sub_10079B8C4();
  swift_unknownObjectRelease();
  v17.receiver = v3;
  v17.super_class = type metadata accessor for TabBarController();
  objc_msgSendSuper2(&v17, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3, v11, v12, v13, v14);
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  v15 = sub_10058C98C;
  v16 = v8;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100569BDC;
  v14 = &unk_100A23B20;
  v9 = _Block_copy(&v11);
  v10 = v4;

  [a1 animateAlongsideTransition:0 completion:v9];
  _Block_release(v9);
}

Swift::Void __swiftcall TabBarController.didReceiveMemoryWarning()()
{
  v35.receiver = v0;
  v35.super_class = type metadata accessor for TabBarController();
  objc_msgSendSuper2(&v35, "didReceiveMemoryWarning");
  v1 = [v0 selectedTab];
  v2 = [v0 tabs];
  sub_10000A7C4(0, &qword_100AEB148);
  v3 = sub_1007A25E4();

  if (v3 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
  {
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v33 = v3 + 32;
    v34 = v3 & 0xFFFFFFFFFFFFFF8;
    v7 = &selRef_textContainer;
    v30 = v1;
    v31 = v3 & 0xC000000000000001;
    v28 = i;
    v29 = v3;
    while (1)
    {
      if (v6)
      {
        v8 = sub_1007A3784();
      }

      else
      {
        if (v5 >= *(v34 + 16))
        {
          goto LABEL_39;
        }

        v8 = *(v33 + 8 * v5);
      }

      v9 = v8;
      if (__OFADD__(v5++, 1))
      {
        break;
      }

      if (v1 && v8 == v1)
      {
        goto LABEL_4;
      }

      v11 = _UISolariumEnabled();
      v12 = [v9 v7[366]];
      v13 = v12;
      if (!v11)
      {
        if (v12)
        {
          objc_opt_self();
          v16 = swift_dynamicCastObjCClass();
          if (!v16)
          {
          }
        }

        else
        {
          v16 = 0;
        }

        v17 = [v16 contentNavigationController];

        if (v17)
        {
          v15 = v17;
LABEL_23:
          v18 = [v15 viewControllers];
          sub_10000A7C4(0, &qword_100AD7CB0);
          v19 = sub_1007A25E4();

          if (v19 >> 62)
          {
            v20 = sub_1007A38D4();
            if (!v20)
            {
              goto LABEL_36;
            }

LABEL_25:
            if (v20 < 1)
            {
              goto LABEL_40;
            }

            v32 = v15;
            for (j = 0; j != v20; ++j)
            {
              if ((v19 & 0xC000000000000001) != 0)
              {
                v22 = sub_1007A3784();
              }

              else
              {
                v22 = *(v19 + 8 * j + 32);
              }

              v23 = v22;
              objc_opt_self();
              v24 = swift_dynamicCastObjCClass();
              if (v24)
              {
                v25 = v24;
                v26 = v23;
                v27 = sub_1007A2214();
                [v25 suspendAndTeardownForReason:v27];
              }
            }

            v3 = v29;
            v1 = v30;
            i = v28;
          }

          else
          {
            v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v20)
            {
              goto LABEL_25;
            }

LABEL_36:
          }

          v6 = v31;
          v7 = &selRef_textContainer;
          goto LABEL_5;
        }

LABEL_4:

        goto LABEL_5;
      }

      if (!v12)
      {
        goto LABEL_4;
      }

      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v15 = v14;
        goto LABEL_23;
      }

LABEL_5:
      if (v5 == i)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

LABEL_42:
}

Swift::Bool __swiftcall TabBarController.bc_analyticsVisibility(ofChild:)(UIViewController ofChild)
{
  v3 = [v1 selectedViewController];
  if (v3)
  {
    v4 = v3;

    LOBYTE(v3) = v4 == ofChild.super.super.isa;
  }

  return v3;
}

void sub_100586338()
{
  v1 = v0;
  v2 = sub_1007A1D04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000A7C4(0, &qword_100AD1E10);
  *v5 = sub_1007A2D74();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = sub_1007A1D34();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  sub_10079AEC4();
  v7 = sub_10079AEB4();
  v8 = sub_10079AE84();

  if (v8)
  {
    return;
  }

  if (qword_100AD1870 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v9 = sub_10079ACE4();
  sub_100008B98(v9, qword_100AEB0F0);
  v10 = sub_10079ACC4();
  v11 = sub_1007A29D4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Deleting items due to JSABridge reload", v12, 2u);
  }

  *&v1[OBJC_IVAR___BKTabBarController_items] = &_swiftEmptyArrayStorage;

  sub_10000A7C4(0, &qword_100AEB148);
  isa = sub_1007A25D4().super.isa;
  [v1 setTabs:isa];
}

unint64_t sub_100586590(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_10000A7C4(0, &qword_100AD1E10);
  v6 = sub_1007A2D74();
  v7 = &_dispatch_main_q;
  if (v6 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  v8 = *(v3 + OBJC_IVAR___BKTabBarController_items);
  if (v8 >> 62)
  {
LABEL_30:
    v9 = sub_1007A38D4();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = 0;
  while (1)
  {
    if (v9 == v10)
    {

      v16 = 0;
      v17 = -1;
      goto LABEL_23;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = sub_1007A3784();
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    if (*&v11[OBJC_IVAR___BKRootBarItem_identifier] == a1 && *&v11[OBJC_IVAR___BKRootBarItem_identifier + 8] == a2)
    {

      goto LABEL_22;
    }

    v14 = sub_1007A3AB4();

    if (v14)
    {
      break;
    }

    if (__OFADD__(v10++, 1))
    {
      goto LABEL_29;
    }
  }

LABEL_22:
  v17 = v10;
  v16 = v10;
LABEL_23:
  if (qword_100AD1870 != -1)
  {
    swift_once();
  }

  v18 = sub_10079ACE4();
  sub_100008B98(v18, qword_100AEB0F0);

  v19 = sub_10079ACC4();
  v20 = sub_1007A29A4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v21 = 136446466;
    *(v21 + 4) = sub_1000070F4(a1, a2, &v24);
    *(v21 + 12) = 2048;
    *(v21 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v19, v20, "Index of RootBarItem with identifier %{public}s: %ld", v21, 0x16u);
    sub_1000074E0(v22);
  }

  return v16;
}

uint64_t sub_100586864()
{
  v1 = v0;
  sub_10000A7C4(0, &qword_100AD1E10);
  v2 = sub_1007A2D74();
  v3 = &_dispatch_main_q;
  if (v2 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  v4 = [v1 tabs];
  sub_10000A7C4(0, &qword_100AEB148);
  sub_1007A25E4();

  sub_1001F1160(&qword_100AEB1B0);
  sub_100005920(&qword_100AEB1B8, &qword_100AEB1B0);
  sub_1007A28B4();

  if (!v7)
  {
    return 0;
  }

  v5 = sub_100582D38();

  return v5;
}

uint64_t sub_1005869D0(int a1)
{
  v2 = v1;
  LODWORD(v3) = a1;
  ObjectType = swift_getObjectType();
  sub_10000A7C4(0, &qword_100AD1E10);
  v4 = sub_1007A2D74();
  v5 = &_dispatch_main_q;
  if (v4 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  AriadneTrace_AppLaunchMilestone_PopulateTabsStart();
  v66 = OBJC_IVAR___BKTabBarController_isPopulatingItems;
  v1[OBJC_IVAR___BKTabBarController_isPopulatingItems] = 1;
  v6 = [v1 tabs];
  sub_10000A7C4(0, &qword_100AEB148);
  v7 = sub_1007A25E4();

  v8 = [v1 bk_rootBarCoordinator];
  if (v8)
  {
    v9 = [v8 hostingViewController];

    swift_unknownObjectRelease();
    v74 = v9 == v2;
  }

  else
  {
    v74 = 0;
  }

  v84 = &_swiftEmptyArrayStorage;
  v10 = *&v2[OBJC_IVAR___BKTabBarController_items];
  if (v10 >> 62)
  {
    goto LABEL_80;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  v12 = v7 >> 62;
  v73 = v2;
  v65 = v3;
  if (!v11)
  {
    v3 = &_swiftEmptyArrayStorage;
    goto LABEL_71;
  }

  v71 = v11;
  v64 = v7 >> 62;
  v13 = v7 & 0xFFFFFFFFFFFFFF8;
  if (v12)
  {
    v53 = v10;
    v81 = sub_1007A38D4();
    v10 = v53;
  }

  else
  {
    v81 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v72 = v10 & 0xC000000000000001;
  v67 = v10 + 32;
  v68 = v10 & 0xFFFFFFFFFFFFFF8;
  v79 = v7 & 0xC000000000000001;

  v70 = 0;
  v75 = 0;
  v76 = v7;
  v77 = v7 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if (v72)
    {
      v14 = v75;
      v10 = sub_1007A3784();
    }

    else
    {
      v14 = v75;
      if (v75 >= *(v68 + 16))
      {
        goto LABEL_79;
      }

      v10 = *(v67 + 8 * v75);
    }

    v15 = v10;
    v16 = __OFADD__(v14, 1);
    v17 = v14 + 1;
    if (v16)
    {
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v75 = v17;
    if (!v81)
    {
LABEL_45:
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = swift_allocObject();
      *(v34 + 16) = v33;
      *(v34 + 24) = v74;
      *(v34 + 32) = ObjectType;
      aBlock[4] = sub_10058D05C;
      aBlock[5] = v34;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10038D350;
      aBlock[3] = &unk_100A23D68;
      v35 = _Block_copy(aBlock);

      v36 = [v15 createTabWithViewControllerProvider:v35];
      _Block_release(v35);
      v37 = 0;
      v70 = 1;
      goto LABEL_49;
    }

    v3 = 0;
    v80 = (v10 + OBJC_IVAR___BKRootBarItem_identifier);
    v82 = (v10 + OBJC_IVAR___BKRootBarItem_url);
    v78 = v10;
    while (1)
    {
      if (v79)
      {
        v10 = sub_1007A3784();
      }

      else
      {
        if (v3 >= *(v13 + 16))
        {
          goto LABEL_76;
        }

        v10 = *(v7 + 8 * v3 + 32);
      }

      v2 = v10;
      v22 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v23 = [v10 rootBarItem];
      v24 = *(&v23->isa + OBJC_IVAR___BKRootBarItem_identifier) == *v80 && *(&v23[1].isa + OBJC_IVAR___BKRootBarItem_identifier) == v80[1];
      if (v24 || (sub_1007A3AB4() & 1) != 0)
      {
        break;
      }

LABEL_21:

      ++v3;
      if (v22 == v81)
      {
        goto LABEL_45;
      }
    }

    v25 = *(&v23[1].isa + OBJC_IVAR___BKRootBarItem_url);
    v26 = v82[1];
    if (!v25)
    {
      if (!v26)
      {
        goto LABEL_46;
      }

LABEL_40:
      if (qword_100AD1870 != -1)
      {
        swift_once();
      }

      v28 = sub_10079ACE4();
      sub_100008B98(v28, qword_100AEB0F0);
      v29 = v23;
      v30 = v15;
      v23 = sub_10079ACC4();
      v31 = v15;
      v32 = sub_1007A29D4();

      if (os_log_type_enabled(v23, v32))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138543618;
        *(v18 + 4) = v29;
        *(v18 + 12) = 2114;
        *(v18 + 14) = v30;
        *v19 = v29;
        v19[1] = v31;
        v20 = v29;
        v21 = v30;
        _os_log_impl(&_mh_execute_header, v23, v32, "Replacing VC for BKRootBarItem due to URL change: %{public}@ => %{public}@", v18, 0x16u);
        sub_1001F1160(&unk_100AD9480);
        swift_arrayDestroy();
        v7 = v76;

        v13 = v77;
      }

      else
      {
        v20 = v23;
        v23 = v29;
      }

      v2 = v20;
      v15 = v78;
      goto LABEL_21;
    }

    if (!v26)
    {
      goto LABEL_40;
    }

    v27 = *(&v23->isa + OBJC_IVAR___BKRootBarItem_url) == *v82 && v25 == v26;
    if (!v27 && (sub_1007A3AB4() & 1) == 0)
    {
      goto LABEL_40;
    }

LABEL_46:

    v36 = v2;
    v2 = [v36 rootBarItem];
    type metadata accessor for RootBarItem();
    v38 = sub_1007A3184();

    if ((v38 & 1) == 0)
    {
      [v36 setRootBarItem:v15];
    }

    v37 = v36;
LABEL_49:
    v39 = v36;
    sub_1007A25C4();
    if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v2 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1007A2614();
    }

    sub_1007A2644();
    v3 = v84;
    if (!v74)
    {
      goto LABEL_57;
    }

    if (!(v84 >> 62))
    {
      v10 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v40 = (v10 - 1);
      if (!__OFSUB__(v10, 1))
      {
        goto LABEL_54;
      }

LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      v52 = v10;
      v11 = sub_1007A38D4();
      v10 = v52;
      goto LABEL_8;
    }

    v10 = sub_1007A38D4();
    v40 = (v10 - 1);
    if (__OFSUB__(v10, 1))
    {
      goto LABEL_78;
    }

LABEL_54:
    if (v40 == [v73 selectedIndex])
    {
      v41 = [v39 viewController];
      if (v41)
      {

        sub_100587884(v39);
        goto LABEL_57;
      }

      v43 = v39;
      v44 = [v43 rootBarItem];
      if (qword_100AD1870 != -1)
      {
        swift_once();
      }

      v45 = sub_10079ACE4();
      sub_100008B98(v45, qword_100AEB0F0);
      v39 = v44;
      v42 = sub_10079ACC4();
      v2 = sub_1007A29C4();

      if (os_log_type_enabled(v42, v2))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138412546;
        *(v46 + 4) = v43;
        *(v46 + 12) = 2112;
        *(v46 + 14) = v39;
        *v47 = v43;
        v47[1] = v39;
        v48 = v43;
        v39 = v39;
        _os_log_impl(&_mh_execute_header, v42, v2, "Tab did not provide a view controller: %@, RootBarItem: %@", v46, 0x16u);
        sub_1001F1160(&unk_100AD9480);
        swift_arrayDestroy();

        v13 = v77;
      }

      else
      {

        v42 = v15;
        v15 = v37;
      }
    }

    else
    {
LABEL_57:
      v42 = v37;
    }
  }

  while (v75 != v71);

  v12 = v64;
  if (v70)
  {
    goto LABEL_84;
  }

LABEL_71:
  if (v3 >> 62)
  {
    v54 = v12;
    v55 = sub_1007A38D4();
    v12 = v54;
    v49 = v55;
    v50 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v12)
    {
      goto LABEL_83;
    }

LABEL_73:
    if (v49 == *(v50 + 16))
    {
      goto LABEL_74;
    }

LABEL_84:
    if (v12)
    {
      v58 = sub_1007A38D4();
    }

    else
    {
      v58 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v59 = v58 != 0;
    isa = sub_1007A25D4().super.isa;
    v61 = v59 & v65;
    v51 = v73;
    [v73 setTabs:isa animated:v61];
  }

  else
  {
    v49 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v50 = v7 & 0xFFFFFFFFFFFFFF8;
    if (!v12)
    {
      goto LABEL_73;
    }

LABEL_83:
    v56 = v12;
    v57 = sub_1007A38D4();
    v12 = v56;
    if (v49 != v57)
    {
      goto LABEL_84;
    }

LABEL_74:

    v51 = v73;
  }

  v51[v66] = 0;
  v62 = [objc_opt_self() defaultCenter];
  if (qword_100AD1868 != -1)
  {
    swift_once();
  }

  [v62 postNotificationName:static NSNotificationName.rootBarReady object:v51];

  AriadneTrace_AppLaunchMilestone_PopulateTabsEnd();
  if (v74)
  {
    sub_100020ED0();
  }
}

id sub_100587458(void *a1, uint64_t a2, char a3)
{
  v4 = [a1 rootBarItem];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (_UISolariumEnabled())
    {
      v7 = sub_100587598(v4);
    }

    else
    {
      if (a3)
      {
        v9 = sub_100587598(v4);
      }

      else
      {
        v9 = 0;
      }

      v7 = [objc_allocWithZone(BSUIRootBarWrapperViewController) initWithContentNavigationController:v9];

      v4 = v9;
    }
  }

  else
  {
    v8 = isPhone();
    v7 = sub_10058C718(v4, v8);
  }

  return v7;
}

uint64_t *NSNotificationName.rootBarReady.unsafeMutableAddressor()
{
  if (qword_100AD1868 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.rootBarReady;
}

id sub_100587598(void *a1)
{
  v2 = v1;
  v4 = sub_1007A1F44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A7C4(0, &qword_100AD1E10);
  v8 = sub_1007A2D74();
  v9 = &_dispatch_main_q;
  if (v8 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = [Strong navigationControllerForItem:a1];
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = [objc_allocWithZone(BSUINavigationController) init];
  }

  v12 = sub_10058C718(a1, [v2 im_isCompactWidth]);
  sub_1001F1160(&unk_100AD8160);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100811390;
  *(v13 + 32) = v12;
  sub_10000A7C4(0, &qword_100AD7CB0);
  v14 = v11;
  v15 = v12;
  isa = sub_1007A25D4().super.isa;

  [v14 setViewControllers:isa];

  result = [v14 view];
  if (result)
  {
    v18 = result;
    v19 = [a1 automationID];
    sub_1007A2254();

    memset(v20, 0, sizeof(v20));
    sub_1007A1F24();

    sub_100007840(v20, &unk_100AD5B40);
    sub_1007A30E4();

    (*(v5 + 8))(v7, v4);
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100587884(void *a1)
{
  v2 = v1;
  v4 = sub_100582D38();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = [a1 rootBarItem];
  v7 = OBJC_IVAR___BKTabBarController_isCreatingContentForNavigationController;
  v8 = *&v2[OBJC_IVAR___BKTabBarController_isCreatingContentForNavigationController];
  v35 = v5;
  v9 = [v8 containsObject:v35];
  v10 = [v35 viewControllers];
  sub_10000A7C4(0, &qword_100AD7CB0);
  v11 = sub_1007A25E4();

  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_12:

    v10 = 0;
    if ((v9 & 1) == 0)
    {
      goto LABEL_18;
    }

    LODWORD(v7) = 0;
    v10 = 0;
LABEL_14:

    if (qword_100AD1870 == -1)
    {
LABEL_15:
      v13 = sub_10079ACE4();
      sub_100008B98(v13, qword_100AEB0F0);
      v14 = v6;
      v15 = sub_10079ACC4();
      v16 = sub_1007A29D4();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v36 = v19;
        *v17 = 136315906;
        *(v17 + 4) = sub_1000070F4(0xD000000000000021, 0x80000001008DE0A0, &v36);
        *(v17 + 12) = 2114;
        *(v17 + 14) = v14;
        *v18 = v14;
        *(v17 + 22) = 1024;
        *(v17 + 24) = v9;
        *(v17 + 28) = 1024;
        *(v17 + 30) = v7;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v15, v16, "%s: Skipping creating content VC for %{public}@. isCreatingVC: %{BOOL}d, hasValidVC: %{BOOL}d", v17, 0x22u);
        sub_100007840(v18, &unk_100AD9480);

        sub_1000074E0(v19);

        return;
      }

      goto LABEL_24;
    }

LABEL_29:
    swift_once();
    goto LABEL_15;
  }

  if (!sub_1007A38D4())
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = sub_1007A3784();
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_29;
    }

    v12 = *(v11 + 32);
  }

  v10 = v12;

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    LODWORD(v7) = 1;
    goto LABEL_14;
  }

  if (v9)
  {
    LODWORD(v7) = 0;
    goto LABEL_14;
  }

LABEL_18:
  if (qword_100AD1870 != -1)
  {
    swift_once();
  }

  v21 = sub_10079ACE4();
  sub_100008B98(v21, qword_100AEB0F0);
  v22 = v10;
  v23 = v6;
  v24 = sub_10079ACC4();
  v25 = sub_1007A29D4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v34 = v7;
    v28 = swift_slowAlloc();
    v36 = v28;
    *v26 = 136315650;
    *(v26 + 4) = sub_1000070F4(0xD000000000000021, 0x80000001008DE0A0, &v36);
    *(v26 + 12) = 2114;
    *(v26 + 14) = v22;
    *(v26 + 22) = 2114;
    *(v26 + 24) = v23;
    *v27 = v10;
    v27[1] = v23;
    v29 = v22;
    v30 = v23;
    _os_log_impl(&_mh_execute_header, v24, v25, "%s: Creating content VC to replace %{public}@ for %{public}@", v26, 0x20u);
    sub_1001F1160(&unk_100AD9480);
    swift_arrayDestroy();

    sub_1000074E0(v28);
    v7 = v34;
  }

  v31 = *&v2[v7];
  [v31 addObject:v35];

  v35 = v35;
  v32 = a1;
  v33 = v2;
  sub_10058C4A4(v23, v33, v32, v33, v35);

LABEL_24:
}

void sub_100587E00(void *a1, void *a2, char *a3, void *a4)
{
  sub_10000A7C4(0, &qword_100AD1E10);
  v8 = sub_1007A2D74();
  v9 = &_dispatch_main_q;
  if (v8 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  v10 = [a2 rootBarItem];
  if (!a1)
  {
    if (qword_100AD1870 != -1)
    {
      swift_once();
    }

    v21 = sub_10079ACE4();
    sub_100008B98(v21, qword_100AEB0F0);
    v74 = v10;
    v22 = sub_10079ACC4();
    v23 = sub_1007A29D4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v76[0] = v26;
      *v24 = 136315394;
      *(v24 + 4) = sub_1000070F4(0xD000000000000021, 0x80000001008DE0A0, v76);
      *(v24 + 12) = 2114;
      *(v24 + 14) = v74;
      *v25 = v74;
      v27 = v74;
      _os_log_impl(&_mh_execute_header, v22, v23, "%s: Did not get a contentViewController for %{public}@, bailing out with spinner", v24, 0x16u);
      sub_100007840(v25, &unk_100AD9480);

      sub_1000074E0(v26);
    }

    [*&a3[OBJC_IVAR___BKTabBarController_isCreatingContentForNavigationController] removeObject:a4];
    goto LABEL_16;
  }

  v74 = a1;
  v11 = sub_100582D38();
  if (!v11 || (v12 = v11, v11, v12 != a4))
  {
    if (qword_100AD1870 != -1)
    {
      swift_once();
    }

    v13 = sub_10079ACE4();
    sub_100008B98(v13, qword_100AEB0F0);
    v14 = v10;
    v15 = sub_10079ACC4();
    v16 = sub_1007A29D4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v76[0] = v19;
      *v17 = 136315394;
      *(v17 + 4) = sub_1000070F4(0xD000000000000021, 0x80000001008DE0A0, v76);
      *(v17 + 12) = 2114;
      *(v17 + 14) = v14;
      *v18 = v14;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v15, v16, "%s: Skipping updating content VC for %{public}@ because the active UI is no longer tab bar", v17, 0x16u);
      sub_100007840(v18, &unk_100AD9480);

      sub_1000074E0(v19);
    }

    [*&a3[OBJC_IVAR___BKTabBarController_isCreatingContentForNavigationController] removeObject:a4];
LABEL_16:

    return;
  }

  v28 = [v74 navigationItem];
  v73 = a3;
  v29 = [v10 resolvedNavigationItemTitleWithIsCompact:{objc_msgSend(a3, "im_isCompactWidth")}];
  [v28 setTitle:v29];

  [v10 configureDynamicTitleFor:v74];
  [v28 setLargeTitleDisplayMode:{objc_msgSend(v10, "defaultLargeTitleDisplayMode")}];
  if (qword_100AD1870 != -1)
  {
    swift_once();
  }

  v30 = sub_10079ACE4();
  sub_100008B98(v30, qword_100AEB0F0);
  v31 = v28;
  v32 = v10;
  v33 = sub_10079ACC4();
  v34 = sub_1007A29D4();

  v72 = v31;
  if (os_log_type_enabled(v33, v34))
  {
    v70 = v34;
    v35 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v35 = 136315650;
    *(v35 + 4) = sub_1000070F4(0xD000000000000021, 0x80000001008DE0A0, aBlock);
    *(v35 + 12) = 2080;
    v36 = v31;
    v37 = [v36 description];
    v38 = sub_1007A2254();
    v40 = v39;

    v41 = sub_1000070F4(v38, v40, aBlock);

    *(v35 + 14) = v41;
    *(v35 + 22) = 2082;
    RootBarItem.title.getter(v76);
    v42 = v76[0];
    v43 = v76[1];

    sub_100007840(v76, &qword_100ADFAD0);
    v44 = sub_1000070F4(v42, v43, aBlock);

    *(v35 + 24) = v44;
    _os_log_impl(&_mh_execute_header, v33, v70, "%s: Updating navigationItem: %s content VC for %{public}s", v35, 0x20u);
    swift_arrayDestroy();
  }

  v45 = [a4 transitionCoordinator];
  v46 = v74;
  v47 = v32;
  v48 = sub_10079ACC4();
  v49 = sub_1007A29D4();

  v50 = os_log_type_enabled(v48, v49);
  if (v45)
  {
    v71 = v45;
    if (v50)
    {
      v51 = swift_slowAlloc();
      v52 = v48;
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      aBlock[0] = v54;
      *v51 = 136315650;
      *(v51 + 4) = sub_1000070F4(0xD000000000000021, 0x80000001008DE0A0, aBlock);
      *(v51 + 12) = 2112;
      *(v51 + 14) = v46;
      *(v51 + 22) = 2114;
      *(v51 + 24) = v47;
      *v53 = a1;
      v53[1] = v47;
      v55 = v46;
      v56 = v47;
      _os_log_impl(&_mh_execute_header, v52, v49, "%s: Updating nav stack alongside transition with content VC %@ for %{public}@", v51, 0x20u);
      sub_1001F1160(&unk_100AD9480);
      swift_arrayDestroy();

      sub_1000074E0(v54);
    }

    else
    {
    }

    v63 = swift_allocObject();
    v63[2] = v73;
    v63[3] = a4;
    v63[4] = v46;
    v63[5] = v47;
    v63[6] = a2;
    aBlock[4] = sub_10058D04C;
    aBlock[5] = v63;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100569BDC;
    aBlock[3] = &unk_100A23CF0;
    v64 = _Block_copy(aBlock);
    v65 = v46;
    v66 = v47;
    v67 = v73;
    v68 = a4;
    v69 = a2;

    [v71 animateAlongsideTransition:0 completion:v64];

    _Block_release(v64);
    swift_unknownObjectRelease();
  }

  else
  {
    if (v50)
    {
      v57 = swift_slowAlloc();
      v58 = v48;
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      aBlock[0] = v60;
      *v57 = 136315650;
      *(v57 + 4) = sub_1000070F4(0xD000000000000021, 0x80000001008DE0A0, aBlock);
      *(v57 + 12) = 2112;
      *(v57 + 14) = v46;
      *(v57 + 22) = 2114;
      *(v57 + 24) = v47;
      *v59 = a1;
      v59[1] = v47;
      v61 = v46;
      v62 = v47;
      _os_log_impl(&_mh_execute_header, v58, v49, "%s: Updating nav stack with content VC %@ for %{public}@", v57, 0x20u);
      sub_1001F1160(&unk_100AD9480);
      swift_arrayDestroy();

      sub_1000074E0(v60);
    }

    else
    {
    }

    sub_100588888(v73, a4, v46, v47);
  }
}

void sub_100588888(uint64_t a1, void *a2, void *a3, void *a4)
{
  sub_10000A7C4(0, &qword_100AD1E10);
  v8 = sub_1007A2D74();
  v9 = &_dispatch_main_q;
  if (v8 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  [*(a1 + OBJC_IVAR___BKTabBarController_isCreatingContentForNavigationController) removeObject:a2];
  v10 = [a2 viewControllers];
  sub_10000A7C4(0, &qword_100AD7CB0);
  v11 = sub_1007A25E4();

  v37 = v11;
  if (v11 >> 62)
  {
    p_inst_props = &OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling.inst_props;
    if (sub_1007A38D4())
    {
LABEL_5:
      v13 = a3;
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v11 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
      {
        v11 = sub_1002F9CE0(v11);
      }

      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x20);
        *((v11 & 0xFFFFFFFFFFFFFF8) + 0x20) = v13;

        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_25;
    }
  }

  else
  {
    p_inst_props = (&OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling + 56);
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  if (p_inst_props[270] != -1)
  {
LABEL_25:
    swift_once();
  }

  v16 = sub_10079ACE4();
  sub_100008B98(v16, qword_100AEB0F0);
  v17 = a4;
  v18 = sub_10079ACC4();
  v19 = sub_1007A29C4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v22 = v36;
    *v20 = 136315394;
    *(v20 + 4) = sub_1000070F4(0xD000000000000017, 0x80000001008CA490, &v36);
    *(v20 + 12) = 2114;
    *(v20 + 14) = v17;
    *v21 = v17;
    v23 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s: Nav stack is empty for %{public}@", v20, 0x16u);
    sub_100007840(v21, &unk_100AD9480);

    sub_1000074E0(v22);
  }

  v24 = a3;
  sub_1007A25C4();
  p_inst_props = &OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling.inst_props;
  if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1007A2614();
  }

  sub_1007A2644();
LABEL_17:
  isa = sub_1007A25D4().super.isa;
  [a2 setViewControllers:isa];

  sub_100582E04();
  if (p_inst_props[270] != -1)
  {
    swift_once();
  }

  v26 = sub_10079ACE4();
  sub_100008B98(v26, qword_100AEB0F0);
  v27 = a3;
  v28 = a4;
  oslog = sub_10079ACC4();
  v29 = sub_1007A29D4();

  if (os_log_type_enabled(oslog, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36 = v32;
    *v30 = 136315650;
    *(v30 + 4) = sub_1000070F4(0xD000000000000017, 0x80000001008CA490, &v36);
    *(v30 + 12) = 2112;
    *(v30 + 14) = v27;
    *(v30 + 22) = 2114;
    *(v30 + 24) = v28;
    *v31 = v27;
    v31[1] = v28;
    v33 = v27;
    v34 = v28;
    _os_log_impl(&_mh_execute_header, oslog, v29, "%s: Created content VC %@ for %{public}@", v30, 0x20u);
    sub_1001F1160(&unk_100AD9480);
    swift_arrayDestroy();

    sub_1000074E0(v32);
  }
}

uint64_t sub_100588DB0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10000A7C4(0, &qword_100AD1E10);
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;
  v7 = a1;

  sub_1007A2CD4();
}

id TabBarController.childForStatusBarStyle.getter()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
    v2 = v1;
    if ([v1 modalPresentationStyle] == 5 && (objc_msgSend(v2, "isBeingDismissed") & 1) == 0)
    {
      v8 = [v2 childViewControllerForStatusBarStyle];
      goto LABEL_9;
    }
  }

  v3 = objc_opt_self();
  v4 = [v3 delegate];
  v5 = [v4 appLaunchCoordinator];

  LODWORD(v4) = [v5 appLaunchCoordinatorIsConditionSatisfied:0];
  swift_unknownObjectRelease();
  if (!v4)
  {
    v11.receiver = v0;
    v11.super_class = type metadata accessor for TabBarController();
    return objc_msgSendSuper2(&v11, "childViewControllerForStatusBarStyle");
  }

  v6 = [v3 delegate];
  v7 = [v6 sceneManager];

  v2 = [v7 mainFlowController];
  v8 = [v2 viewControllerForStatusBarStyle];
LABEL_9:
  v10 = v8;

  return v10;
}

id TabBarController.preferredStatusBarStyle.getter()
{
  v1 = v0;
  v2 = [v0 selectedTab];
  if (v2 && (v3 = v2, v4 = sub_100582D38(), v3, v4) || (result = [v1 selectedViewController], (v4 = result) != 0))
  {
    v6 = [v4 preferredStatusBarStyle];

    return v6;
  }

  return result;
}

BOOL TabBarController.prefersStatusBarHidden.getter()
{
  v1 = [v0 bc_windowForViewController];
  v2 = [v1 windowScene];

  if (v2)
  {
    v3 = [v2 interfaceOrientation];

    if (isPad())
    {
      return 0;
    }
  }

  else
  {
    v3 = 0;
    if (isPad())
    {
      return 0;
    }
  }

  return sub_100025674(v3);
}

BOOL sub_1005891A8()
{
  v0 = sub_1007A1C54();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007A1CA4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A7C4(0, &unk_100ADAF38);
  v8 = sub_1007A2C64();
  if (v8)
  {
    sub_10000A7C4(0, &qword_100AD1E10);
    v16 = sub_1007A2D74();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10058D000;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A23BD8;
    v15 = _Block_copy(aBlock);

    sub_1007A1C74();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100022A14(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001F1160(&unk_100AD7CA0);
    v14 = v4;
    sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
    sub_1007A3594();
    v11 = v15;
    v10 = v16;
    sub_1007A2D94();
    _Block_release(v11);

    (*(v1 + 8))(v3, v0);
    (*(v5 + 8))(v7, v14);
  }

  return v8 != 0;
}

void sub_1005894D4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    aBlock[4] = BKAppDelegate.enableMetricsInspectorOnDebugMode();
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A23C00;
    v2 = _Block_copy(aBlock);
    [v1 popAllCardsAnimated:1 completion:v2];
    _Block_release(v2);
  }
}

id sub_1005895AC()
{
  v1 = objc_allocWithZone(v0);
  sub_10000A7C4(0, &qword_100AEB148);
  isa = sub_1007A25D4().super.isa;

  v3 = [v1 initWithTabs:isa];

  return v3;
}

uint64_t sub_1005896F4()
{
  sub_10002B130(v0 + OBJC_IVAR___BKTabBarController_viewControllerProvider);

  v1 = OBJC_IVAR___BKTabBarController__cachedSelectedItem;
  v2 = sub_1001F1160(&unk_100AEB3A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10002B130(v0 + OBJC_IVAR___BKTabBarController__rootBarCoordinator);
}

id sub_1005897E4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1005898F4()
{
  sub_1001F1160(&unk_100AD2090);
  sub_100005920(&qword_100AEB170, &unk_100AD2090);
  return sub_10079BA14();
}

UIInterfaceOrientationMask __swiftcall TabBarController.tabBarControllerSupportedInterfaceOrientations(_:)(UITabBarController a1)
{
  v1 = [(objc_class *)a1.super.super.super.isa selectedViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 supportedInterfaceOrientations];

    return v3;
  }

  else if (isPad())
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

Swift::OpaquePointer_optional __swiftcall TabBarController.flowControllers()()
{
  sub_1001F1160(&qword_100AD7FB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10080B690;
  *(v1 + 56) = type metadata accessor for TabBarController();
  *(v1 + 32) = v0;
  v2 = v0;
  v4 = v1;
  result.value._rawValue = v4;
  result.is_nil = v3;
  return result;
}

uint64_t TabBarController.bc_stringForReturnToRootBarItem.getter()
{
  result = TabBarController.selectedItem.getter();
  if (result)
  {
    v2 = *(result + OBJC_IVAR___BKRootBarItem_identifier);
    v1 = *(result + OBJC_IVAR___BKRootBarItem_identifier + 8);
    v3 = result;

    _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(v2, v1);
    if (v4)
    {

      v5 = 14;
    }

    else
    {
      v5 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v2, v1);
      if (v5 == 16)
      {
        v5 = 15;
      }
    }

    return sub_10047FA38(v5);
  }

  return result;
}

uint64_t TabBarController.transferableNavigationControllers()()
{
  v1 = *(v0 + OBJC_IVAR___BKTabBarController_items);
  if (v1 >> 62)
  {
LABEL_44:
    v43 = v1 & 0xFFFFFFFFFFFFFF8;
    v2 = sub_1007A38D4();
  }

  else
  {
    v43 = v1 & 0xFFFFFFFFFFFFFF8;
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    v4 = _swiftEmptyDictionarySingleton;
    goto LABEL_41;
  }

  v3 = 0;
  v4 = _swiftEmptyDictionarySingleton;
  while (2)
  {
    while (2)
    {
      v40 = v4;
      v5 = v3;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v9 = sub_1007A3784();
        }

        else
        {
          if (v5 >= *(v43 + 16))
          {
            goto LABEL_43;
          }

          v9 = *(v1 + 8 * v5 + 32);
        }

        v10 = v9;
        v3 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        sub_10000A7C4(0, &qword_100AD1E10);
        v11 = sub_1007A2D74();
        v12 = &_dispatch_main_q;
        if (v11 == &_dispatch_main_q)
        {
          +[NSThread isMainThread];
        }

        v13 = [v42 tabs];
        sub_10000A7C4(0, &qword_100AEB148);
        sub_1007A25E4();

        sub_1001F1160(&qword_100AEB1B0);
        sub_100005920(&qword_100AEB1B8, &qword_100AEB1B0);
        sub_1007A28B4();

        if (!v44)
        {
          goto LABEL_8;
        }

        v14 = _UISolariumEnabled();
        v15 = [v44 viewController];
        v16 = v15;
        if (!v14)
        {
          if (v15)
          {
            objc_opt_self();
            v6 = swift_dynamicCastObjCClass();
            if (v6)
            {
LABEL_7:
              v7 = v6;
              v8 = [v7 contentNavigationController];

              if (v8)
              {
                goto LABEL_26;
              }

              goto LABEL_8;
            }
          }

          v6 = 0;
          goto LABEL_7;
        }

        if (v16)
        {
          break;
        }

LABEL_8:

LABEL_9:
        ++v5;
        if (v3 == v2)
        {
          v4 = v40;
          goto LABEL_41;
        }
      }

      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (!v17)
      {

        goto LABEL_9;
      }

      v8 = v17;
LABEL_26:
      v19 = *&v10[OBJC_IVAR___BKRootBarItem_identifier];
      v18 = *&v10[OBJC_IVAR___BKRootBarItem_identifier + 8];

      v39 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = v40;
      v38 = v19;
      v21 = v19;
      v22 = v18;
      v24 = sub_10000E53C(v21, v18);
      v25 = v40[2];
      v26 = (v23 & 1) == 0;
      v27 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v40[3] >= v27)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v23 & 1) == 0)
          {
            break;
          }
        }

        else
        {
          v32 = v23;
          sub_1002F0E8C();
          if ((v32 & 1) == 0)
          {
            break;
          }
        }

        goto LABEL_33;
      }

      v41 = v23;
      sub_1003D4154(v27, isUniquelyReferenced_nonNull_native);
      v28 = sub_10000E53C(v38, v22);
      if ((v41 & 1) != (v29 & 1))
      {
LABEL_47:
        result = sub_1007A3B24();
        __break(1u);
        return result;
      }

      v24 = v28;
      if (v41)
      {
LABEL_33:

        v4 = v45;
        v30 = v45[7];
        v31 = *(v30 + 8 * v24);
        *(v30 + 8 * v24) = v39;

        if (v3 != v2)
        {
          continue;
        }

        goto LABEL_41;
      }

      break;
    }

    v4 = v45;
    v45[(v24 >> 6) + 8] |= 1 << v24;
    v33 = (v45[6] + 16 * v24);
    *v33 = v38;
    v33[1] = v22;
    *(v45[7] + 8 * v24) = v39;

    v34 = v45[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v45[2] = v36;
    if (v3 != v2)
    {
      continue;
    }

    break;
  }

LABEL_41:

  return v4;
}

Swift::Void __swiftcall TabBarController.prepareNavigationControllerForTransferRootBarItem(with:)(Swift::String with)
{
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  sub_10000A7C4(0, &qword_100AD1E10);
  v3 = sub_1007A2D74();
  v4 = &_dispatch_main_q;
  if (v3 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  sub_100586590(countAndFlagsBits, object);
  if ((v5 & 1) == 0)
  {
    v6 = sub_10058BF6C();
    if (v6)
    {
      v23 = v6;
      v7 = TabBarController.selectedItem.getter();
      if (v7)
      {
        v9 = *(v7 + OBJC_IVAR___BKRootBarItem_identifier);
        v8 = *(v7 + OBJC_IVAR___BKRootBarItem_identifier + 8);
        v10 = v7;

        if (v9 == countAndFlagsBits && v8 == object)
        {
        }

        else
        {
          v12 = sub_1007A3AB4();

          if ((v12 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        v13 = [v23 contentNavigationController];
        if (v13)
        {
          v14 = v13;
          v15 = [v13 topViewController];

          if (v15)
          {
            objc_opt_self();
            v16 = swift_dynamicCastObjCClass();
            if (v16)
            {
              v17 = v16;
              if ([v16 isEditing])
              {
                if (qword_100AD1878 != -1)
                {
                  swift_once();
                }

                v18 = sub_10079ACE4();
                sub_100008B98(v18, qword_100AEB108);

                v19 = sub_10079ACC4();
                v20 = sub_1007A29D4();

                if (os_log_type_enabled(v19, v20))
                {
                  v21 = swift_slowAlloc();
                  v22 = swift_slowAlloc();
                  v25 = v22;
                  *v21 = 136446210;
                  *(v21 + 4) = sub_1000070F4(countAndFlagsBits, object, &v25);
                  _os_log_impl(&_mh_execute_header, v19, v20, "Resetting tab bar appearance for edit mode in %{public}s tab", v21, 0xCu);
                  sub_1000074E0(v22);
                }

                [v17 updateTabBarControllerForEditing:0];
              }
            }
          }
        }
      }

LABEL_24:
      [v23 setContentNavigationController:{0, v23}];
    }
  }
}

void TabBarController.transfer(from:)(void *a1, uint64_t a2)
{
  v5 = sub_10079ACE4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v166 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100AD1878 != -1)
  {
    swift_once();
  }

  v9 = sub_100008B98(v5, qword_100AEB108);
  v172 = v6;
  v10 = *(v6 + 16);
  v170 = v5;
  v10(v8, v9, v5);
  swift_unknownObjectRetain();
  v11 = sub_10079ACC4();
  v12 = sub_1007A29D4();
  swift_unknownObjectRelease();
  v13 = os_log_type_enabled(v11, v12);
  v183 = v8;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v189[0] = v2;
    *v14 = 136315138;
    v184[0] = a1;
    v184[1] = a2;
    swift_unknownObjectRetain();
    sub_1001F1160(&unk_100AEB1C0);
    sub_1001F1160(&unk_100ADAC70);
    if (swift_dynamicCast())
    {
      sub_10000E3E8(&v185, *(&v186 + 1));
      v15 = sub_1007A3A74();
      v17 = v16;
      sub_1000074E0(&v185);
      v18 = v15;
    }

    else
    {
      v187 = 0;
      v185 = 0u;
      v186 = 0u;
      sub_100007840(&v185, &qword_100AEB1D0);
      v17 = 0xE90000000000003ELL;
      v18 = 0x6E776F6E6B6E753CLL;
    }

    v19 = sub_1000070F4(v18, v17, v189);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "Starting to transfer navigation from forwarder %s", v14, 0xCu);
    sub_1000074E0(v2);

    v8 = v183;
  }

  else
  {
  }

  v174 = 0x7972617262696CLL;
  ObjectType = swift_getObjectType();
  v21 = (*(a2 + 16))(ObjectType, a2);
  *&v185 = v21;
  v22 = *(a2 + 8);
  v173 = a1;
  v169 = ObjectType;
  v177 = a2;
  v23 = v22(ObjectType, a2);
  v24 = &off_100AEB000;
  v25 = &_dispatch_main_q;
  v26 = &OBJC_INSTANCE_METHODS__TtP5Books25BKSharedWithYouProviderJS_;
  if (v23)
  {
    sub_10000A7C4(0, &qword_100AD1E10);
    v27 = v23;
    v23 = v23;
    v28 = sub_1007A2D74();
    v29 = &_dispatch_main_q;
    if (v28 == &_dispatch_main_q)
    {
      +[NSThread isMainThread];
    }

    v30 = sub_100586590(0x7972617262696CLL, 0xE700000000000000);
    if (v31)
    {
      goto LABEL_26;
    }

    v32 = v30;
    v33 = sub_1007A2D74();
    v34 = &_dispatch_main_q;
    if (v33 == &_dispatch_main_q)
    {
      +[NSThread isMainThread];
    }

    v184[0] = *(v182 + OBJC_IVAR___BKTabBarController_items);
    v188 = v32;
    sub_1001F1160(&qword_100AEB180);
    sub_100005920(&qword_100AEB188, &qword_100AEB180);
    sub_1007A28B4();
    v2 = v189[0];
    if (!v189[0])
    {
LABEL_26:
    }

    else
    {
      if ([v23 isLibraryCollection])
      {
        v35 = *(v23 + OBJC_IVAR___BKRootBarItem_identifier);
        v36 = *(v23 + OBJC_IVAR___BKRootBarItem_identifier + 8);
        v37 = (v2 + OBJC_IVAR___BKRootBarItem_identifier);
        if (v35 != *(v2 + OBJC_IVAR___BKRootBarItem_identifier) || v36 != *(v2 + OBJC_IVAR___BKRootBarItem_identifier + 8))
        {
          v181 = (v23 + OBJC_IVAR___BKRootBarItem_identifier);
          if ((sub_1007A3AB4() & 1) == 0)
          {
            if (*(v21 + 16))
            {

              v38 = sub_10000E53C(v35, v36);
              v40 = v39;

              if (v40)
              {
                v41 = *(*(v21 + 56) + 8 * v38);
                v42 = *v37;
                v43 = v37[1];
                v44 = v41;
                v45 = sub_1007A2D74();
                v46 = &_dispatch_main_q;
                if (v45 == &_dispatch_main_q)
                {
                  +[NSThread isMainThread];
                }

                v47 = v182;
                sub_100586590(v42, v43);
                v8 = v183;
                if (v48)
                {
                }

                else
                {
                  v180 = sub_10058BF6C();
                  if (v180)
                  {
                    v49 = v47;
                    v147 = *v37;
                    v146 = v37[1];

                    v148 = sub_1002EEB28(v147, v146);

                    v149 = *v181;
                    v150 = v181[1];
                    v151 = v177;
                    v152 = *(v177 + 24);

                    v152(v149, v150, v169, v151);

                    v25 = v44;
                    v53 = [v25 viewControllers];
                    sub_10000A7C4(0, &qword_100AD7CB0);
                    v153 = sub_1007A25E4();

                    v184[0] = v153;
                    v52 = sub_10058C718(v2, [v49 im_isCompactWidth]);
                    if (v153 >> 62)
                    {
                      goto LABEL_160;
                    }

LABEL_143:
                    sub_1002F8BF4(0, 0, v52);
                    v154 = sub_10058BE94();
                    v49 = v180;
                    if (!v154)
                    {
                      goto LABEL_147;
                    }

                    v53 = [v154 libraryCollectionListViewControllerWithAssetIDs:0 knownAssetTypes:0 knownStoreAssetIDs:0 containsSeriesContainer:0];
                    if (v184[0] >> 62)
                    {
                      goto LABEL_162;
                    }

                    if (*((v184[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
                    {
                      goto LABEL_146;
                    }

LABEL_163:
                    __break(1u);
LABEL_164:
                    sub_1007A38A4();
                    __break(1u);
                    return;
                  }
                }

                goto LABEL_140;
              }

LABEL_139:

              v8 = v183;
LABEL_140:
              v25 = &_dispatch_main_q;
              goto LABEL_29;
            }
          }
        }
      }
    }

    v8 = v183;
LABEL_29:
    v23 = v27;
    v26 = &OBJC_INSTANCE_METHODS__TtP5Books25BKSharedWithYouProviderJS_;
    v24 = &off_100AEB000;
  }

  while (2)
  {
    v171 = v23;
    v49 = (v185 + 64);
    v50 = 1 << *(v185 + 32);
    v51 = -1;
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    v52 = v51 & *(v185 + 64);
    v175 = v24[47];
    v27 = ((v50 + 63) >> 6);
    v168 = v177 + 24;
    v176 = v185;

    v53 = 0;
    *&v54 = v26[124];
    v178 = v54;
    v55 = v182;
    v179 = v27;
    while (1)
    {
      if (v52)
      {
        goto LABEL_40;
      }

      do
      {
        v57 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (v57 >= v27)
        {

          v52 = v55;
          v23 = *&v175[v55];
          if (v23 >> 62)
          {
            v27 = sub_1007A38D4();
          }

          else
          {
            v27 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (!v27)
          {
LABEL_101:

            v2 = v171;
            v23 = v171;
            if (v171)
            {
              goto LABEL_108;
            }

            v23 = TabBarController.selectedItem.getter();
            if (v23)
            {
              goto LABEL_108;
            }

            v78 = *&v175[v52];
            if (v78 >> 62)
            {
              goto LABEL_155;
            }

            if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_105;
            }

LABEL_156:
            (*(v172 + 8))(v8, v170);
            goto LABEL_157;
          }

          v53 = 0;
          v180 = (v23 & 0xFFFFFFFFFFFFFF8);
          v181 = (v23 & 0xC000000000000001);
          v177 = v23;
          v179 = v27;
          while (2)
          {
            if (v181)
            {
              v93 = sub_1007A3784();
            }

            else
            {
              if (v53 >= *(v180 + 2))
              {
                goto LABEL_138;
              }

              v93 = *(v23 + 8 * v53 + 32);
            }

            v94 = v93;
            v49 = (v53 + 1);
            if (__OFADD__(v53, 1))
            {
              goto LABEL_137;
            }

            sub_10000A7C4(0, &qword_100AD1E10);
            v95 = sub_1007A2D74();
            v96 = &_dispatch_main_q;
            if (v95 == &_dispatch_main_q)
            {
              +[NSThread isMainThread];
            }

            v2 = &_dispatch_main_q;

            if (_UISolariumEnabled())
            {
              goto LABEL_164;
            }

            v97 = v52;
            v98 = [v52 tabs];
            sub_10000A7C4(0, &qword_100AEB148);
            v99 = sub_1007A25E4();

            v184[0] = v99;
            v188 = v53;
            sub_1001F1160(&qword_100AEB1B0);
            sub_100005920(&qword_100AEB1B8, &qword_100AEB1B0);
            sub_1007A28B4();

            v100 = v189[0];
            if (v189[0])
            {
              v101 = [v189[0] viewController];

              if (v101)
              {
                objc_opt_self();
                v102 = swift_dynamicCastObjCClass();
                if (v102)
                {
                  v103 = v102;
                  v104 = [v102 contentNavigationController];
                  if (v104)
                  {
                    v105 = v104;

                    v27 = v179;
                    v8 = v183;
                    goto LABEL_95;
                  }

                  v173 = v103;
                  v109 = v94;
                  v110 = sub_10079ACC4();
                  v111 = sub_1007A29D4();

                  if (os_log_type_enabled(v110, v111))
                  {
                    v112 = swift_slowAlloc();
                    v113 = swift_slowAlloc();
                    v184[0] = v113;
                    *v112 = v178;
                    v169 = v110;
                    v115 = *&v109[OBJC_IVAR___BKRootBarItem_identifier];
                    v114 = *&v109[OBJC_IVAR___BKRootBarItem_identifier + 8];

                    v2 = sub_1000070F4(v115, v114, v184);

                    *(v112 + 4) = v2;
                    v25 = &_dispatch_main_q;
                    v116 = v169;
                    _os_log_impl(&_mh_execute_header, v169, v111, "Creating nav controller for '%{public}s' tab that the navigation forwarder didn't provide", v112, 0xCu);
                    sub_1000074E0(v113);

                    v52 = v182;
                  }

                  else
                  {

                    v52 = v97;
                  }

                  v117 = sub_100587598(v109);
                  [v173 setContentNavigationController:v117];

                  v23 = v177;
                  v27 = v179;
                  v8 = v183;
LABEL_79:
                  ++v53;
                  if (v49 == v27)
                  {
                    goto LABEL_101;
                  }

                  continue;
                }
              }
            }

            break;
          }

          v106 = v94;
          v8 = v183;
          v107 = sub_10079ACC4();
          v108 = sub_1007A29C4();

          if (os_log_type_enabled(v107, v108))
          {
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            v184[0] = v90;
            *v89 = v178;
            v91 = *&v106[OBJC_IVAR___BKRootBarItem_identifier];
            v2 = *&v106[OBJC_IVAR___BKRootBarItem_identifier + 8];

            v92 = sub_1000070F4(v91, v2, v184);
            v25 = &_dispatch_main_q;

            *(v89 + 4) = v92;
            v8 = v183;
            _os_log_impl(&_mh_execute_header, v107, v108, "RootBarItem '%{public}s' does not have a tab VC", v89, 0xCu);
            sub_1000074E0(v90);
            v52 = v182;

            v23 = v177;

            v27 = v179;
          }

          else
          {

            v27 = v179;
LABEL_95:
            v52 = v97;
          }

          goto LABEL_79;
        }

        v52 = *&v49[8 * v57];
        ++v53;
      }

      while (!v52);
      v53 = v57;
LABEL_40:
      v58 = __clz(__rbit64(v52)) | (v53 << 6);
      v59 = *(v176 + 48) + 16 * v58;
      v60 = *v59;
      v23 = *(v59 + 8);
      v61 = *(*(v176 + 56) + 8 * v58);
      sub_10000A7C4(0, &qword_100AD1E10);

      v181 = v61;
      v62 = sub_1007A2D74();
      v2 = &_dispatch_main_q;
      v63 = &_dispatch_main_q;
      if (v62 == &_dispatch_main_q)
      {
        +[NSThread isMainThread];
      }

      v180 = v60;
      v64 = sub_100586590(v60, v23);
      if (v65)
      {
        v56 = v181;

        v55 = v182;
        v8 = v183;
        v25 = &_dispatch_main_q;
        goto LABEL_34;
      }

      v66 = v64;
      v67 = sub_1007A2D74();
      v68 = &_dispatch_main_q;
      if (v67 == &_dispatch_main_q)
      {
        +[NSThread isMainThread];
      }

      v184[0] = *&v175[v182];
      v188 = v66;
      sub_1001F1160(&qword_100AEB180);
      sub_100005920(&qword_100AEB188, &qword_100AEB180);
      sub_1007A28B4();
      v27 = v189[0];
      if (!v189[0])
      {
        v56 = v181;

        v55 = v182;
        v8 = v183;
        v25 = &_dispatch_main_q;
        v27 = v179;
        goto LABEL_34;
      }

      v69 = sub_1007A2D74();
      v70 = &_dispatch_main_q;
      if (v69 == &_dispatch_main_q)
      {
        +[NSThread isMainThread];
      }

      v2 = v180;
      v71 = v182;
      sub_100586590(v180, v23);
      v8 = v183;
      if ((v72 & 1) != 0 || (v73 = sub_10058BF6C()) == 0)
      {
        v55 = v71;

        v56 = v27;
        v25 = &_dispatch_main_q;
        v27 = v179;
        goto LABEL_34;
      }

      v167 = v73;

      v25 = sub_10079ACC4();
      v74 = sub_1007A29D4();

      if (os_log_type_enabled(v25, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v184[0] = v76;
        *v75 = v178;
        *(v75 + 4) = sub_1000070F4(v2, v23, v184);
        _os_log_impl(&_mh_execute_header, v25, v74, "Transferring the '%{public}s' item from navigation forwarder", v75, 0xCu);
        sub_1000074E0(v76);
      }

      (*(v177 + 24))(v2, v23, v169);

      v23 = v181;
      v77 = [v23 viewControllers];
      v78 = sub_10000A7C4(0, &qword_100AD7CB0);
      v2 = sub_1007A25E4();

      v8 = v183;
      if (v2 >> 62)
      {
        v85 = sub_1007A38D4();
        v79 = v182;
        if (!v85)
        {
          goto LABEL_61;
        }

LABEL_54:
        v166 = v27;
        if ((v2 & 0xC000000000000001) != 0)
        {
          v80 = sub_1007A3784();
        }

        else
        {
          if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_154;
          }

          v80 = *(v2 + 32);
        }

        v81 = v80;

        v82 = [v81 navigationItem];

        v83 = [v79 im_isCompactWidth];
        v27 = v166;
        v84 = [v166 resolvedNavigationItemTitleWithIsCompact:v83];
        [v82 setTitle:v84];

        goto LABEL_62;
      }

      v79 = v182;
      if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_54;
      }

LABEL_61:

LABEL_62:
      v2 = [v23 viewControllers];

      v78 = sub_1007A25E4();
      v86 = v78 >> 62 ? sub_1007A38D4() : *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v55 = v182;
      v25 = &_dispatch_main_q;
      if (v86)
      {
        break;
      }

LABEL_70:
      v56 = v167;
      [v167 setContentNavigationController:v23];

      v27 = v179;
LABEL_34:
      v52 &= v52 - 1;
    }

    if ((v78 & 0xC000000000000001) != 0)
    {
      v87 = sub_1007A3784();
LABEL_68:
      v2 = v87;

      v88 = [v2 navigationItem];

      [v88 setLargeTitleDisplayMode:{objc_msgSend(v27, "defaultLargeTitleDisplayMode")}];
      goto LABEL_70;
    }

    if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v87 = *(v78 + 32);
      goto LABEL_68;
    }

LABEL_154:
    __break(1u);
LABEL_155:
    if (!sub_1007A38D4())
    {
      goto LABEL_156;
    }

LABEL_105:
    if ((v78 & 0xC000000000000001) == 0)
    {
      if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v23 = *(v78 + 32);
        goto LABEL_108;
      }

      __break(1u);
LABEL_160:
      if ((sub_1007A38D4() & 0x8000000000000000) == 0)
      {
        goto LABEL_143;
      }

      __break(1u);
LABEL_162:
      if (sub_1007A38D4() < 1)
      {
        goto LABEL_163;
      }

LABEL_146:
      sub_1002F8BF4(1, 1, v53);
      swift_unknownObjectRelease();

LABEL_147:
      isa = sub_1007A25D4().super.isa;

      [v25 setViewControllers:isa];

      [v49 setContentNavigationController:v25];
      v156 = v23;
      v8 = v183;
      v157 = sub_10079ACC4();
      v158 = sub_1007A29D4();

      if (os_log_type_enabled(v157, v158))
      {
        v159 = swift_slowAlloc();
        v179 = v52;
        v160 = v159;
        v161 = swift_slowAlloc();
        v189[0] = v161;
        *v160 = 136446210;
        v162 = v156;
        v163 = *v181;
        v164 = v181[1];

        v165 = sub_1000070F4(v163, v164, v189);
        v8 = v183;

        *(v160 + 4) = v165;
        _os_log_impl(&_mh_execute_header, v157, v158, "Converted the nav stack of '%{public}s' item from navigation forwarder to library tab", v160, 0xCu);
        sub_1000074E0(v161);
      }

      else
      {
      }

      v23 = v27;
      v24 = &off_100AEB000;
      v25 = &_dispatch_main_q;
      v26 = &OBJC_INSTANCE_METHODS__TtP5Books25BKSharedWithYouProviderJS_;
      continue;
    }

    break;
  }

  v23 = sub_1007A3784();

LABEL_108:
  v118 = *(v23 + OBJC_IVAR___BKRootBarItem_identifier);
  v119 = *(v23 + OBJC_IVAR___BKRootBarItem_identifier + 8);
  v120 = v2;

  if (_s5Books20RootBarItemsProviderC19isLibraryCollection3forSbSS_tFZ_0(v118, v119))
  {

    v119 = 0xE700000000000000;
  }

  else
  {
    v174 = v118;
  }

  v121 = OBJC_IVAR___BKTabBarController_isTransferingFromSidebar;
  *(v182 + OBJC_IVAR___BKTabBarController_isTransferingFromSidebar) = 1;

  v122 = sub_10079ACC4();
  v123 = sub_1007A29D4();

  if (os_log_type_enabled(v122, v123))
  {
    v124 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v184[0] = v125;
    *v124 = v178;
    *(v124 + 4) = sub_1000070F4(v174, v119, v184);
    _os_log_impl(&_mh_execute_header, v122, v123, "Transferring selected item '%{public}s'", v124, 0xCu);
    sub_1000074E0(v125);
  }

  sub_10000A7C4(0, &qword_100AD1E10);
  v126 = sub_1007A2D74();
  v127 = &_dispatch_main_q;
  if (v126 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  v128 = v182;
  v129 = sub_100586590(v174, v119);
  if ((v130 & 1) == 0)
  {
    [v128 bc_setSelectedIndex:v129];
    sub_100020ED0();
  }

  *(v128 + v121) = 0;
  v131 = sub_1007A2D74();
  v132 = &_dispatch_main_q;
  if (v131 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  sub_100586590(v174, v119);
  if (v133)
  {
    (*(v172 + 8))(v183, v170);

    return;
  }

  v134 = sub_10058BF6C();
  if (v134)
  {
    v135 = v134;
    v136 = [v134 contentNavigationController];
    if (!v136)
    {

      goto LABEL_135;
    }

    v137 = v136;
    v138 = [v136 topViewController];

    if (v138)
    {
      objc_opt_self();
      v139 = swift_dynamicCastObjCClass();
      v140 = v172;
      if (!v139)
      {

        (*(v140 + 8))(v183, v170);
        goto LABEL_157;
      }

      v182 = v139;
      if ([v139 isEditing])
      {

        v141 = sub_10079ACC4();
        v142 = sub_1007A29D4();

        if (os_log_type_enabled(v141, v142))
        {
          v143 = swift_slowAlloc();
          v144 = swift_slowAlloc();
          v184[0] = v144;
          *v143 = v178;
          v145 = sub_1000070F4(v174, v119, v184);

          *(v143 + 4) = v145;
          _os_log_impl(&_mh_execute_header, v141, v142, "Updating tab bar appearance for edit mode in '%{public}s' tab", v143, 0xCu);
          sub_1000074E0(v144);
        }

        else
        {
        }

        [v182 updateTabBarControllerForEditing:1];
LABEL_135:
        (*(v172 + 8))(v183, v170);
LABEL_157:
      }

      else
      {
        (*(v140 + 8))(v183, v170);
      }
    }

    else
    {
      (*(v172 + 8))(v183, v170);
    }
  }

  else
  {
    (*(v172 + 8))(v183, v170);
  }
}