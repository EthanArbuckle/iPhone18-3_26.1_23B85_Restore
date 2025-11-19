uint64_t sub_1003BC460(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003BC4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v85 = a3;
  v10 = sub_10000A5D4(&unk_10094C030);
  __chkstk_darwin(v10 - 8);
  v84 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v83 = &v74 - v13;
  v14 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v14 - 8);
  v82 = &v74 - v15;
  v16 = sub_1007611EC();
  __chkstk_darwin(v16 - 8);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v74 - v20;
  v22 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v22 - 8);
  v24 = &v74 - v23;
  v25 = sub_10076121C();
  v81 = *(v25 - 8);
  __chkstk_darwin(v25);
  v91 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10076481C();
  v86 = *(v27 - 8);
  v87 = v27;
  __chkstk_darwin(v27);
  v92 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10076D39C();
  v30 = *(v29 - 8);
  v89 = v29;
  v90 = v30;
  __chkstk_darwin(v29);
  v80 = &v74 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10075FF6C();
  v33 = [v32 length];

  v88 = a6;
  if (v33 < 1)
  {
    [*&v7[qword_10094C5D8] setText:0];
    v7[qword_10099D798] = 0;
    [*&v7[qword_10094C5C8] setHidden:1];
  }

  else
  {
    v75 = v25;
    v76 = v24;
    v77 = v21;
    v78 = v18;
    v79 = a1;
    v34 = sub_10075FF6C();
    v35 = [a6 traitCollection];
    v36 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v34];
    v37 = [v34 length];
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = v35;
    *(v38 + 32) = v36;
    *(v38 + 40) = 1;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_1000275EC;
    *(v39 + 24) = v38;
    aBlock[4] = sub_1000ACB04;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026610;
    aBlock[3] = &unk_100893690;
    v40 = _Block_copy(aBlock);
    v41 = v35;
    v42 = v36;

    [v34 enumerateAttributesInRange:0 options:v37 usingBlock:{0x100000, v40}];

    _Block_release(v40);
    LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

    if (v34)
    {
      __break(1u);
      return result;
    }

    [*&v7[qword_10094C5D8] setAttributedText:v42];
    v7[qword_10099D798] = 1;
    [*&v7[qword_10094C5C8] setHidden:0];

    v24 = v76;
    v25 = v75;
  }

  v44 = *&v7[qword_10094C5D0];
  sub_10075FF7C();
  if (v45)
  {
    v46 = sub_10076FF6C();
  }

  else
  {
    v46 = 0;
  }

  v47 = v88;
  [v44 setText:v46];

  bottom = UIEdgeInsetsZero.bottom;
  if (sub_10075FF4C())
  {
    left = UIEdgeInsetsZero.left;
    right = UIEdgeInsetsZero.right;
  }

  else
  {
    [v47 pageMarginInsets];
    left = v51;
    right = v52;
  }

  v53 = v89;
  v54 = [v7 contentView];
  [v54 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  if (sub_10075FF9C())
  {
    v55 = [v7 contentView];
    sub_1000ACA5C();
    sub_10076422C();

    sub_10076BEFC();
    v56 = v80;
    sub_10076D3AC();
    sub_10076D30C();
    v58 = v57;
    v60 = v59;

    (*(v90 + 8))(v56, v53);
    v61 = &v7[qword_1009A32A8];
    *v61 = v58;
    v61[1] = v60;
  }

  if (sub_10075FF8C())
  {
    (*(v81 + 104))(v91, enum case for VideoFillMode.scaleAspectFill(_:), v25);
    if (sub_10075FF9C())
    {
      sub_10076BEFC();
      sub_10076D3AC();

      v62 = 0;
    }

    else
    {
      v62 = 1;
    }

    (*(v90 + 56))(v24, v62, 1, v53);
    sub_10076B7EC();
    sub_10076B82C();
    sub_10076B7FC();
    sub_10076B7DC();
    sub_10076B83C();
    sub_1007647FC();
    sub_100762F0C();
    sub_10076F5CC();
    sub_10076B7CC();
    v63 = v82;
    sub_10076B85C();
    v64 = sub_10075DB7C();
    (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
    v65 = v83;
    sub_10076B81C();
    v66 = v84;
    sub_10076B80C();
    type metadata accessor for VideoView();
    sub_1003BE180(&qword_100942810, type metadata accessor for VideoView);
    v67 = sub_100762EEC();
    sub_10000CFBC(v66, &unk_10094C030);
    sub_10000CFBC(v65, &unk_10094C030);
    sub_10000CFBC(v63, &unk_1009435D0);
    sub_10000CFBC(aBlock, &qword_100943310);
    sub_1006D9F88();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v69 = Strong;
      v70 = *&v7[qword_100965200];
      if (v70)
      {
        v71 = *&v7[qword_100965200];
      }

      else
      {
        v71 = [v7 contentView];
        v70 = 0;
      }

      v72 = v70;
      [v71 addSubview:v69];
      [v7 setNeedsLayout];
    }

    else
    {
    }

    (*(v86 + 8))(v92, v87);
  }

  v73 = sub_10075FF5C();
  v7[qword_10099D790] = v73 & 1;
  return sub_100027A78(v73);
}

void sub_1003BCFE4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    type metadata accessor for VideoView();
    sub_1003BE180(&unk_100942840, type metadata accessor for VideoView);
    sub_100760BFC();
  }
}

uint64_t sub_1003BD144(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v5 - 8);
  v7 = v35 - v6;
  v8 = sub_10076D39C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_10075FF4C() & 1) == 0)
  {
    [a4 pageMarginInsets];
  }

  if (sub_10075FF9C())
  {
    sub_10076BEFC();
    sub_10076D3AC();
    sub_10076D36C();
    (*(v9 + 8))(v11, v8);
    sub_10075FF4C();
  }

  v12 = sub_10075FF6C();
  v13 = [v12 length];

  if (v13 >= 1)
  {
    sub_10075FF7C();
    if (v14)
    {
      if (qword_100940F68 != -1)
      {
        swift_once();
      }

      v15 = sub_10076D3DC();
      sub_10000A61C(v15, qword_1009A1C30);
      v16 = sub_10076C04C();
      v37 = v16;
      v38 = sub_1003BE180(&qword_100943230, &type metadata accessor for Feature);
      v17 = sub_10000DB7C(aBlock);
      (*(*(v16 - 8) + 104))(v17, enum case for Feature.measurement_with_labelplaceholder(_:), v16);
      sub_10076C90C();
      sub_10000CD74(aBlock);
      sub_10076991C();
    }

    v18 = sub_10075FF6C();
    v35[1] = a4;
    v19 = [a4 traitCollection];
    v20 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v18];
    v21 = [v18 length];
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = v19;
    *(v22 + 32) = v20;
    *(v22 + 40) = 1;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_100027A88;
    *(v23 + 24) = v22;
    v38 = sub_1003BE1CC;
    v39 = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026610;
    v37 = &unk_100893708;
    v24 = _Block_copy(aBlock);
    v25 = v19;
    v26 = v20;

    [v18 enumerateAttributesInRange:0 options:v21 usingBlock:{0x100000, v24}];

    _Block_release(v24);
    LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

    if (v25)
    {
      __break(1u);
    }

    else
    {
      v27 = qword_100940F60;
      v18 = v26;
      if (v27 == -1)
      {
LABEL_12:
        v28 = sub_10076D3DC();
        v29 = sub_10000A61C(v28, qword_1009A1C18);
        v30 = *(v28 - 8);
        (*(v30 + 16))(v7, v29, v28);
        (*(v30 + 56))(v7, 0, 1, v28);
        v31 = sub_10076C04C();
        v37 = v31;
        v38 = sub_1003BE180(&qword_100943230, &type metadata accessor for Feature);
        v32 = sub_10000DB7C(aBlock);
        (*(*(v31 - 8) + 104))(v32, enum case for Feature.measurement_with_labelplaceholder(_:), v31);
        sub_10076C90C();
        sub_10000CD74(aBlock);
        sub_10076990C();

        sub_10000CFBC(v7, &unk_100943250);
        if (qword_10093F990 != -1)
        {
          swift_once();
        }

        v33 = sub_10076D9AC();
        sub_10000A61C(v33, qword_10099D738);
        sub_10076D42C();
        if (qword_10093F998 != -1)
        {
          swift_once();
        }

        sub_10000A61C(v33, qword_10099D750);
        sub_10076D3FC();

        return sub_100770ABC();
      }
    }

    swift_once();
    goto LABEL_12;
  }

  return sub_100770ABC();
}

uint64_t sub_1003BD918(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003BD930(uint64_t a1)
{
  v2 = sub_10076D39C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10000A570(a1, v11);
  sub_10000A5D4(&unk_100942830);
  sub_10075FFAC();
  result = swift_dynamicCast();
  if (result)
  {
    if (sub_10075FF8C())
    {
      sub_10076B84C();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        sub_10076BEFC();
        sub_10076D3AC();
        sub_10076D31C();
        v9 = *(v3 + 8);
        v9(v5, v2);
        sub_10076BEFC();
        sub_10076D3AC();
        sub_10076D30C();
        v9(v5, v2);
        sub_10076BFCC();
        type metadata accessor for VideoView();
        sub_1003BE180(&unk_100942840, type metadata accessor for VideoView);
        sub_100760B8C();
      }
    }
  }

  return result;
}

uint64_t sub_1003BDBA4(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = a3;
  v16 = a2;
  v18 = sub_10076D39C();
  v3 = *(v18 - 8);
  __chkstk_darwin(v18);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076B75C();
  v7 = *(v6 + 16);
  v20 = v6 + 32;
  v17 = (v3 + 8);
  v21 = v6;

  v9 = 0;
  v10 = &qword_1009575A0;
  v11 = v18;
  while (1)
  {
    if (v9 == v7)
    {
      v29 = 0;
      v9 = v7;
      v27 = 0u;
      v28 = 0u;
      goto LABEL_8;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *(v21 + 16))
    {
      goto LABEL_18;
    }

    sub_10000A570(v20 + 40 * v9++, &v27);
LABEL_8:
    v25[0] = v27;
    v25[1] = v28;
    v26 = v29;
    if (!*(&v28 + 1))
    {
      return swift_bridgeObjectRelease_n();
    }

    sub_100012498(v25, v24);
    sub_10000A570(v24, v22);
    sub_10000A5D4(v10);
    sub_10075FFAC();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v23 = 0;
    }

    result = sub_10000CD74(v24);
    if (v23)
    {
      if (sub_10075FF8C())
      {
        v13 = v10;
        sub_10076B84C();

        v14 = sub_10075FF4C();

        if ((v14 & 1) == 0)
        {
          [v16 pageMarginInsets];
        }

        sub_10076BEFC();
        sub_10076D3AC();
        sub_10076D31C();
        v12 = *v17;
        (*v17)(v5, v11);
        sub_10076BEFC();
        sub_10076D3AC();
        sub_10076D30C();
        v12(v5, v11);
        sub_10076BFCC();
        sub_100760B9C();

        v10 = v13;
      }

      else
      {
      }
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1003BDF1C()
{
  v0 = sub_10076D39C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = ASKDeviceTypeGetCurrent();
  v5 = sub_10076FF9C();
  v7 = v6;
  if (v5 == sub_10076FF9C() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_10077167C();

    if ((v10 & 1) == 0)
    {
      if (qword_100940320 != -1)
      {
        swift_once();
      }

      v11 = qword_10099F608;
      goto LABEL_13;
    }
  }

  if (qword_100940328 != -1)
  {
    swift_once();
  }

  v11 = qword_10099F620;
LABEL_13:
  v12 = sub_10000A61C(v0, v11);
  (*(v1 + 16))(v3, v12, v0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v14 = v13;
  sub_10076D36C();
  v15 = [objc_opt_self() absoluteDimension:v14];
  v16 = sub_1007665BC();

  (*(v1 + 8))(v3, v0);
  return v16;
}

uint64_t sub_1003BE180(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1003BE1E0()
{
  result = qword_100950A08;
  if (!qword_100950A08)
  {
    type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950A08);
  }

  return result;
}

double sub_1003BE238()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  sub_10076460C();
  v4 = sub_10076461C();
  sub_100356960(v3, v4);
  v6 = v5;

  (*(v1 + 8))(v3, v0);
  return v6;
}

id sub_1003BE3E0()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28SearchHintCollectionViewCell_hintView];
  v2 = [v0 isHighlighted];
  v3 = OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_isHighlighted;
  v1[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_isHighlighted] = v2;
  sub_1000325F0();
  if (v2)
  {
    v4 = sub_100770DCC();
  }

  else
  {
    v4 = sub_100770D2C();
  }

  v5 = v4;
  [v1 setBackgroundColor:v4];

  v1[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_showSeparator] = v1[v3] ^ 1;
  v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_separatorView];

  return [v6 setHidden:?];
}

char *sub_1003BE4AC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension28SearchHintCollectionViewCell_hintView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SearchHintView()) init];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for SearchHintCollectionViewCell();
  v10 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC20ProductPageExtension28SearchHintCollectionViewCell_hintView;
  v12 = *&v10[OBJC_IVAR____TtC20ProductPageExtension28SearchHintCollectionViewCell_hintView];
  v13 = v10;
  [v12 setUserInteractionEnabled:0];
  v14 = [v13 contentView];
  [v14 addSubview:*&v10[v11]];

  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  return v13;
}

id sub_1003BE748()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for SearchHintCollectionViewCell();
  objc_msgSendSuper2(&v7, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28SearchHintCollectionViewCell_hintView];
  v1[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_showSeparator] = 0;
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_separatorView] setHidden:1];
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_titleLabel] setAttributedText:0];
  v2 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_iconImage];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_iconImage] = 0;

  sub_1006911EC(v3, v4, v5);
  return [v1 setNeedsLayout];
}

id sub_1003BE858()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchHintCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003BE8F8(void *a1)
{
  v1 = [a1 navigationItem];
  v2 = [v1 leftBarButtonItems];
  v18 = v1;
  if (v2)
  {
    v3 = v2;
    sub_1001E555C();
    v4 = sub_1007701BC();

    if (v4 >> 62)
    {
LABEL_17:
      v5 = sub_10077158C();
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_4:
        v6 = 0;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v7 = sub_10077149C();
          }

          else
          {
            if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

            v7 = *(v4 + 8 * v6 + 32);
          }

          v8 = v7;
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            __break(1u);
LABEL_16:
            __break(1u);
            goto LABEL_17;
          }

          if ([v7 isSystemItem])
          {
            v10 = [v8 systemItem];

            if (v10 == 24)
            {
LABEL_33:
              i = 1;
LABEL_35:
              v1 = v18;
              goto LABEL_36;
            }
          }

          else
          {
          }

          ++v6;
        }

        while (v9 != v5);
      }
    }

    v1 = v18;
  }

  i = [v1 rightBarButtonItems];
  if (i)
  {
    sub_1001E555C();
    v12 = sub_1007701BC();

    if (v12 >> 62)
    {
      goto LABEL_40;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
    {
      v13 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v14 = sub_10077149C();
        }

        else
        {
          if (v13 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v14 = *(v12 + 8 * v13 + 32);
        }

        v15 = v14;
        v1 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if ([v14 isSystemItem])
        {
          v16 = [v15 systemItem];

          if (v16 == 24)
          {
            goto LABEL_33;
          }
        }

        else
        {
        }

        ++v13;
        if (v1 == i)
        {
          i = 0;
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      ;
    }

LABEL_36:
  }

  return i;
}

void sub_1003BEB84(void *a1, void *a2)
{
  if ((sub_1003BE8F8(a1) & 1) == 0)
  {
    v4 = [a1 navigationItem];
    v5 = [v4 rightBarButtonItems];
    if (v5)
    {
      v6 = v5;
      sub_1001E555C();
      v7 = sub_1007701BC();
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    sub_1001E555C();
    v8 = a2;
    v10.value.super.super.isa = a2;
    v10.is_nil = 0;
    sub_10077054C(UIBarButtonSystemItemClose, v10, v11);
    sub_10077019C();
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
    isa = sub_1007701AC().super.isa;

    [v4 setRightBarButtonItems:isa];
  }
}

uint64_t sub_1003BEDF4()
{
  v1 = sub_10076D1FC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076299C();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for IconGridView();
  v10.receiver = v0;
  v10.super_class = v6;
  objc_msgSendSuper2(&v10, "layoutSubviews");
  sub_10076422C();
  sub_1003BF02C();
  sub_10076298C();
  swift_beginAccess();

  sub_10016E274(v7);

  sub_1007629BC();
  swift_allocObject();
  sub_1007629AC();
  sub_10076422C();
  sub_10076296C();

  return (*(v2 + 8))(v4, v1);
}

void sub_1003BF02C()
{
  v1 = v0;
  v2 = sub_10076299C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007629BC();
  sub_10076298C();
  v6 = sub_10076297C();
  (*(v3 + 8))(v5, v2);
  v7 = OBJC_IVAR____TtC20ProductPageExtension12IconGridView_artworkViews;
  swift_beginAccess();
  v8 = *&v0[v7];
  if (v8 >> 62)
  {
    if (sub_10077158C() == v6)
    {
      return;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) == v6)
  {
    return;
  }

  v9 = *&v0[v7];
  if (v9 >> 62)
  {
    v10 = sub_10077158C();
    if (!v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_12;
    }
  }

  if (v10 < 1)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v11 = 0;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = sub_10077149C();
    }

    else
    {
      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    ++v11;
    v23 = v12;
    swift_beginAccess();
    sub_10000A5D4(&unk_10094B8B0);
    sub_10076E17C();
    swift_endAccess();
  }

  while (v10 != v11);

LABEL_12:
  *&v0[v7] = _swiftEmptyArrayStorage;

  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  for (; v6; --v6)
  {
    swift_beginAccess();
    sub_10000A5D4(&unk_10094B8B0);
    sub_10076E15C();
    swift_endAccess();
    v14 = v23;
    swift_beginAccess();
    v15 = v14;
    sub_10077019C();
    if (*((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
    swift_endAccess();
    v16 = [v15 superview];
    if (!v16 || (v17 = v16, sub_1000ACA5C(), v18 = v1, v19 = sub_100770EEC(), v17, v18, (v19 & 1) == 0))
    {
      [v1 addSubview:v15];
    }
  }

  v20 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension12IconGridView_impressionableArtworks);
  if (v20)
  {
    v21 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension12IconGridView_artworkLoader);
    if (v21)
    {

      sub_1003BF4A0(v20, v21);
    }
  }
}

uint64_t sub_1003BF46C@<X0>(uint64_t *a1@<X8>)
{
  sub_10075FD2C();
  result = sub_10075FB3C();
  *a1 = result;
  return result;
}

uint64_t sub_1003BF4A0(unint64_t a1, uint64_t a2)
{
  v4 = sub_10076BF6C();
  __chkstk_darwin(v4 - 8);
  v5 = OBJC_IVAR____TtC20ProductPageExtension12IconGridView_artworkViews;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
    goto LABEL_41;
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    while (1)
    {
      v22 = a1 >> 62;
      result = a1 >> 62 ? sub_10077158C() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v5 = *(v2 + v5);
      v8 = v5 >> 62;
      if (!result)
      {
        break;
      }

      if (v8)
      {
        v9 = sub_10077158C();
      }

      else
      {
        v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v9)
      {
      }

      v10 = 0;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      v21 = a1 & 0xC000000000000001;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v12 = sub_10077149C();
        }

        else
        {
          if (v10 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v12 = *(v5 + 8 * v10 + 32);
        }

        v13 = v12;
        a1 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v22)
        {
          v14 = sub_10077158C();
        }

        else
        {
          v14 = *(v11 + 16);
        }

        if (!v14)
        {
          goto LABEL_38;
        }

        v15 = v10 % v14;
        if (v21)
        {
          sub_10077149C();
        }

        else
        {
          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          if (v15 >= *(v11 + 16))
          {
            goto LABEL_40;
          }
        }

        sub_1007660AC();

        sub_10076BFBC();
        sub_10076BF7C();
        sub_10075FCCC();
        sub_10075FD2C();
        sub_10000D7F8();
        v2 = a2;
        sub_100760B8C();

        ++v10;
        if (a1 == v9)
        {
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      result = sub_10077158C();
      if (!result)
      {
        return result;
      }
    }

    if (v8)
    {
      result = sub_10077158C();
      v16 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        return result;
      }
    }

    if (v16 >= 1)
    {

      v17 = 0;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v18 = sub_10077149C();
        }

        else
        {
          v18 = *(v5 + 8 * v17 + 32);
        }

        v20 = v18;
        ++v17;
        v24.value.super.isa = 0;
        v24.is_nil = 1;
        sub_10075FC5C(v24, v19);
      }

      while (v16 != v17);
    }

    __break(1u);
  }

  return result;
}

id sub_1003BF814()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconGridView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for IconGridView()
{
  result = qword_100955B30;
  if (!qword_100955B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003BF948()
{
  sub_10018E66C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1003BFA1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10076B79C();
  *a1 = result & 1;
  return result;
}

void sub_1003BFA4C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v158 = a2;
  v146 = sub_10076C38C();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v144 = &v131[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v149 = sub_10076D1AC();
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v147 = &v131[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10000A5D4(&unk_100946720);
  v163 = *(v5 - 8);
  __chkstk_darwin(v5);
  v143 = &v131[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v157 = &v131[-v8];
  v156 = sub_1007621EC();
  v162 = *(v156 - 8);
  __chkstk_darwin(v156);
  v140 = &v131[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v155 = sub_10000A5D4(&qword_10094E088);
  __chkstk_darwin(v155);
  v165 = &v131[-v10];
  v11 = sub_10000A5D4(&qword_10094E090);
  __chkstk_darwin(v11 - 8);
  v150 = &v131[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v161 = &v131[-v14];
  __chkstk_darwin(v15);
  v159 = &v131[-v16];
  v151 = sub_10076B5BC();
  v160 = *(v151 - 8);
  __chkstk_darwin(v151);
  v141 = &v131[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v142 = &v131[-v19];
  __chkstk_darwin(v20);
  v136 = &v131[-v21];
  v22 = sub_10000A5D4(&qword_100942C28);
  __chkstk_darwin(v22);
  v24 = &v131[-v23];
  v25 = sub_10000A5D4(&qword_1009499A0);
  __chkstk_darwin(v25 - 8);
  v154 = &v131[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v153 = &v131[-v28];
  __chkstk_darwin(v29);
  v31 = &v131[-v30];
  __chkstk_darwin(v32);
  v138 = &v131[-v33];
  __chkstk_darwin(v34);
  v137 = &v131[-v35];
  __chkstk_darwin(v36);
  v139 = &v131[-v37];
  __chkstk_darwin(v38);
  v40 = &v131[-v39];
  __chkstk_darwin(v41);
  v43 = &v131[-v42];
  __chkstk_darwin(v44);
  v46 = &v131[-v45];
  v47 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v47 - 8);
  v152 = &v131[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v49);
  v51 = &v131[-v50];
  __chkstk_darwin(v52);
  v54 = &v131[-v53];
  v55 = sub_1007645FC();
  v164 = a1;
  if (v55)
  {
    LODWORD(v152) = 0;
    v56 = v5;
    v57 = v163;
    v58 = v159;
LABEL_12:
    v69 = v161;
    goto LABEL_13;
  }

  sub_10076463C();
  sub_10000CFBC(v40, &qword_1009499A0);
  sub_10002AB4C(v43, v46);
  v59 = v163;
  v60 = *(v163 + 48);
  v134 = v163 + 48;
  v133 = v60;
  v61 = v60(v46, 1, v5);
  v135 = v5;
  if (v61 == 1)
  {
    sub_10000CFBC(v46, &qword_1009499A0);
    v62 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_10076F49C();

    (*(v59 + 8))(v46, v5);
    v62 = 0;
  }

  v63 = v160;
  v64 = *(v160 + 56);
  v65 = v151;
  v64(v54, v62, 1, v151);
  (*(v63 + 104))(v51, enum case for Shelf.ContentType.unifiedMessage(_:), v65);
  v64(v51, 0, 1, v65);
  v66 = *(v22 + 48);
  sub_100016E2C(v54, v24, &unk_1009568A0);
  sub_100016E2C(v51, &v24[v66], &unk_1009568A0);
  v67 = *(v63 + 48);
  if (v67(v24, 1, v65) == 1)
  {
    sub_10000CFBC(v51, &unk_1009568A0);
    sub_10000CFBC(v54, &unk_1009568A0);
    v68 = v67(&v24[v66], 1, v65);
    v58 = v159;
    if (v68 == 1)
    {
      sub_10000CFBC(v24, &unk_1009568A0);
      v56 = v135;
      v69 = v161;
      goto LABEL_40;
    }

LABEL_11:
    sub_10000CFBC(v24, &qword_100942C28);
    LODWORD(v152) = 1;
    v56 = v135;
    v57 = v163;
    goto LABEL_12;
  }

  v70 = v152;
  sub_100016E2C(v24, v152, &unk_1009568A0);
  if (v67(&v24[v66], 1, v65) == 1)
  {
    sub_10000CFBC(v51, &unk_1009568A0);
    sub_10000CFBC(v54, &unk_1009568A0);
    (*(v160 + 8))(v70, v65);
    v58 = v159;
    goto LABEL_11;
  }

  v122 = v160;
  v123 = v136;
  (*(v160 + 32))(v136, &v24[v66], v65);
  sub_1003C1EA8(&qword_100942C48, &type metadata accessor for Shelf.ContentType);
  v132 = sub_10076FF1C();
  v124 = *(v122 + 8);
  v124(v123, v65);
  sub_10000CFBC(v51, &unk_1009568A0);
  sub_10000CFBC(v54, &unk_1009568A0);
  v124(v152, v65);
  sub_10000CFBC(v24, &unk_1009568A0);
  v56 = v135;
  v58 = v159;
  v69 = v161;
  if ((v132 & 1) == 0)
  {
    LODWORD(v152) = 1;
    v57 = v163;
    goto LABEL_13;
  }

LABEL_40:
  v125 = v137;
  v126 = v138;
  sub_10076463C();
  sub_10000CFBC(v126, &qword_1009499A0);
  v127 = v139;
  sub_10002AB4C(v125, v139);
  v128 = v133(v127, 1, v56);
  v57 = v163;
  if (v128 == 1)
  {
    sub_10000CFBC(v127, &qword_1009499A0);
    v129 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_10076F49C();

    v130 = LOBYTE(v166[0]);
    (*(v57 + 8))(v127, v56);
    v129 = v130 ^ 1;
  }

  LODWORD(v152) = v129;
LABEL_13:
  v71 = v153;
  v72 = v154;
  sub_10076463C();
  sub_10000CFBC(v72, &qword_1009499A0);
  sub_10002AB4C(v71, v31);
  if ((*(v57 + 48))(v31, 1, v56) == 1)
  {
    sub_10000CFBC(v31, &qword_1009499A0);
    v73 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_10076F49C();

    (*(v57 + 8))(v31, v56);
    v73 = 0;
  }

  v74 = v162;
  v75 = *(v162 + 56);
  v76 = v156;
  v75(v58, v73, 1, v156);
  (*(v74 + 104))(v69, enum case for ShelfBackground.none(_:), v76);
  v75(v69, 0, 1, v76);
  v77 = *(v155 + 48);
  v78 = v165;
  sub_100016E2C(v58, v165, &qword_10094E090);
  v79 = v78;
  sub_100016E2C(v69, &v78[v77], &qword_10094E090);
  v80 = v74;
  v81 = v69;
  v82 = *(v80 + 48);
  if (v82(v79, 1, v76) == 1)
  {
    sub_10000CFBC(v81, &qword_10094E090);
    v83 = v165;
    sub_10000CFBC(v58, &qword_10094E090);
    if (v82(&v83[v77], 1, v76) == 1)
    {
      sub_10000CFBC(v83, &qword_10094E090);
      v84 = 1;
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v85 = v150;
  sub_100016E2C(v79, v150, &qword_10094E090);
  if (v82((v79 + v77), 1, v76) == 1)
  {
    sub_10000CFBC(v161, &qword_10094E090);
    v83 = v165;
    sub_10000CFBC(v58, &qword_10094E090);
    (*(v162 + 8))(v85, v76);
LABEL_21:
    sub_10000CFBC(v83, &qword_10094E088);
    v84 = 0;
    goto LABEL_23;
  }

  v86 = v85;
  v87 = v162;
  v88 = v79 + v77;
  v89 = v140;
  (*(v162 + 32))(v140, v88, v76);
  sub_1003C1EA8(&qword_100949730, &type metadata accessor for ShelfBackground);
  v90 = v79;
  v84 = sub_10076FF1C();
  v91 = *(v87 + 8);
  v91(v89, v76);
  sub_10000CFBC(v161, &qword_10094E090);
  sub_10000CFBC(v159, &qword_10094E090);
  v91(v86, v76);
  sub_10000CFBC(v90, &qword_10094E090);
LABEL_23:
  v92 = v157;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v93 = *(v57 + 8);
  v93(v92, v56);
  v94 = v166[0];
  if (v166[0])
  {
  }

  v95 = sub_10076461C();
  v96 = sub_1007706FC();

  if (!(v152 & 1 | (v94 != 0)))
  {
    if (v96)
    {
      v102 = v147;
      *v147 = UIFontTextStyleBody;
      v103 = v148;
      v104 = v149;
      (*(v148 + 104))(v102, enum case for FontSource.textStyle(_:), v149);
      v105 = sub_10076D9AC();
      v106 = v158;
      v158[3] = v105;
      v106[4] = &protocol witness table for StaticDimension;
      sub_10000DB7C(v106);
      v166[3] = v104;
      v166[4] = &protocol witness table for FontSource;
      v107 = sub_10000DB7C(v166);
      (*(v103 + 16))(v107, v102, v104);
      v108 = UIFontTextStyleBody;
      sub_10076D9BC();
      (*(v103 + 8))(v102, v104);
      return;
    }

    goto LABEL_38;
  }

  if (!(v84 & 1 | (v94 != 0)))
  {
    v109 = v144;
    sub_10076460C();
    sub_10076C23C();
    v111 = v110;
    (*(v145 + 8))(v109, v146);
    v112 = v158;
    v158[3] = &type metadata for CGFloat;
    v112[4] = &protocol witness table for CGFloat;
    *v112 = v111;
    return;
  }

  v97 = v143;
  sub_10076468C();
  swift_getKeyPath();
  v98 = v142;
  sub_10076F49C();

  v93(v97, v56);
  v99 = v141;
  v100 = v151;
  (*(v160 + 104))(v141, enum case for Shelf.ContentType.unifiedMessage(_:), v151);
  sub_1003C1EA8(&qword_10094C660, &type metadata accessor for Shelf.ContentType);
  sub_10077018C();
  sub_10077018C();
  if (v166[0] == v166[5] && v166[1] == v166[6])
  {
    v101 = *(v160 + 8);
    v101(v99, v100);
    v101(v98, v100);
  }

  else
  {
    v113 = sub_10077167C();
    v114 = *(v160 + 8);
    v114(v99, v100);
    v114(v98, v100);

    if ((v113 & 1) == 0)
    {
LABEL_38:
      v121 = v158;
      v158[3] = &type metadata for Double;
      v121[4] = &protocol witness table for Double;
      *v121 = 0;
      return;
    }
  }

  v115 = sub_10076461C();
  v116 = sub_1007706EC();

  if ((v116 & 1) == 0)
  {
    goto LABEL_38;
  }

  if (qword_100941210 != -1)
  {
    swift_once();
  }

  v117 = sub_10076D9AC();
  v118 = sub_10000A61C(v117, qword_1009A23B0);
  v119 = v158;
  v158[3] = v117;
  v119[4] = &protocol witness table for StaticDimension;
  v120 = sub_10000DB7C(v119);
  (*(*(v117 - 8) + 16))(v120, v118, v117);
}

uint64_t sub_1003C0E50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v145 = a2;
  v116 = sub_10076C38C();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_10077164C();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_10076D1AC();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = (&v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v146 = sub_1007621EC();
  v141 = *(v146 - 8);
  __chkstk_darwin(v146);
  v123 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v124 = &v114 - v8;
  __chkstk_darwin(v9);
  v138 = &v114 - v10;
  __chkstk_darwin(v11);
  v131 = &v114 - v12;
  v13 = sub_10000A5D4(&qword_1009499A0);
  __chkstk_darwin(v13 - 8);
  v137 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v136 = &v114 - v16;
  __chkstk_darwin(v17);
  v140 = &v114 - v18;
  __chkstk_darwin(v19);
  v130 = &v114 - v20;
  __chkstk_darwin(v21);
  v128 = (&v114 - v22);
  __chkstk_darwin(v23);
  v25 = &v114 - v24;
  v26 = sub_10076B5BC();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v142 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v143 = &v114 - v30;
  __chkstk_darwin(v31);
  v33 = &v114 - v32;
  __chkstk_darwin(v34);
  v36 = &v114 - v35;
  v37 = sub_10000A5D4(&unk_100946720);
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v139 = &v114 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v129 = &v114 - v41;
  __chkstk_darwin(v42);
  v44 = &v114 - v43;
  v150 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v45 = *(v38 + 8);
  v147 = v37;
  v148 = v45;
  v46 = v37;
  v47 = v38 + 8;
  v45(v44, v46);
  v48 = *(v27 + 104);
  v135 = v27 + 104;
  v134 = v48;
  v48(v33, enum case for Shelf.ContentType.todayCard(_:), v26);
  v49 = sub_1003C1EA8(&qword_10094C660, &type metadata accessor for Shelf.ContentType);
  sub_10077018C();
  v149 = v26;
  v133 = v49;
  sub_10077018C();
  if (v151 == v155 && v152 == v156)
  {
    v122 = 1;
  }

  else
  {
    v122 = sub_10077167C();
  }

  v50 = *(v27 + 8);
  v51 = v33;
  v52 = v149;
  v50(v51, v149);
  v132 = v50;
  v50(v36, v52);

  v53 = v128;
  v54 = v130;
  sub_10076463C();
  sub_10000CFBC(v53, &qword_1009499A0);
  sub_10002AB4C(v54, v25);
  v55 = *(v38 + 48);
  v56 = v147;
  v130 = (v38 + 48);
  v128 = v55;
  v57 = v55(v25, 1, v147);
  v144 = v27 + 8;
  if (v57 == 1)
  {
    sub_10000CFBC(v25, &qword_1009499A0);
    v117 = 0;
    v58 = v146;
    v59 = v141;
    v60 = v131;
    v61 = v148;
  }

  else
  {
    swift_getKeyPath();
    sub_10076F49C();

    v62 = v151;
    v61 = v148;
    v148(v25, v56);
    v58 = v146;
    v59 = v141;
    v60 = v131;
    if (v62)
    {

      v117 = 1;
    }

    else
    {
      v117 = 0;
    }
  }

  v63 = v129;
  sub_10076468C();
  swift_getKeyPath();
  v64 = v147;
  sub_10076F49C();

  v61(v63, v64);
  v65 = *(v59 + 104);
  v66 = v138;
  LODWORD(v141) = enum case for ShelfBackground.none(_:);
  v131 = v65;
  (v65)(v138);
  v129 = sub_1003C1EA8(&qword_100949730, &type metadata accessor for ShelfBackground);
  v121 = sub_10076FF1C();
  v67 = *(v59 + 8);
  v67(v66, v58);
  v67(v60, v58);
  v146 = v47;
  v68 = v136;
  v69 = v137;
  sub_10076463C();
  v70 = v68;
  v71 = v64;
  sub_10000CFBC(v70, &qword_1009499A0);
  v72 = v140;
  sub_10002AB4C(v69, v140);
  if (v128(v72, 1, v64) == 1)
  {
    sub_10000CFBC(v72, &qword_1009499A0);
    v73 = 1;
  }

  else
  {
    swift_getKeyPath();
    v74 = v123;
    sub_10076F49C();

    v148(v72, v64);
    v75 = v124;
    (*(v59 + 32))(v124, v74, v58);
    (v131)(v60, v141, v58);
    v73 = sub_10076FF1C();
    v67(v60, v58);
    v67(v75, v58);
  }

  v76 = v143;
  v77 = sub_10076461C();
  v78 = sub_1007706FC();

  v79 = v139;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v148(v79, v71);
  v80 = v142;
  v134(v142, enum case for Shelf.ContentType.unifiedMessage(_:), v149);
  sub_10077018C();
  sub_10077018C();
  if (v151 == v155 && v152 == v156)
  {
    v81 = v80;
    v82 = v149;
    v83 = v132;
    v132(v81, v149);
    v83(v76, v82);

LABEL_17:
    v87 = v125;
    *v125 = UIFontTextStyleBody;
    v88 = v126;
    v89 = v127;
    (*(v126 + 104))(v87, enum case for FontSource.textStyle(_:), v127);
    v90 = sub_10076D9AC();
    v91 = v145;
    v145[3] = v90;
    v91[4] = &protocol witness table for StaticDimension;
    sub_10000DB7C(v91);
    v153 = v89;
    v154 = &protocol witness table for FontSource;
    v92 = sub_10000DB7C(&v151);
    (*(v88 + 16))(v92, v87, v89);
    v93 = UIFontTextStyleBody;
    sub_10076D9BC();
    return (*(v88 + 8))(v87, v89);
  }

  v84 = sub_10077167C();
  v85 = v149;
  v86 = v132;
  v132(v80, v149);
  v86(v76, v85);

  if (v84)
  {
    goto LABEL_17;
  }

  if ((v122 & 1) == 0)
  {
LABEL_23:
    v99 = sub_10076D9AC();
    v100 = v145;
    v145[3] = v99;
    v100[4] = &protocol witness table for StaticDimension;
    v101 = sub_10000DB7C(v100);
    if (v78)
    {
      if (qword_1009411F8 != -1)
      {
        swift_once();
      }

      v102 = qword_1009A2368;
    }

    else
    {
      if (qword_1009411F0 != -1)
      {
        swift_once();
      }

      v102 = qword_1009A2350;
    }

    v103 = sub_10000A61C(v99, v102);
    return (*(*(v99 - 8) + 16))(v101, v103, v99);
  }

  if (v121 & v73)
  {
    if (v117)
    {
      if (v78)
      {
        v95 = v114;
        sub_10076460C();
        sub_10076C23C();
        v97 = v96;
        result = (*(v115 + 8))(v95, v116);
        v98 = v145;
        v145[3] = &type metadata for CGFloat;
        v98[4] = &protocol witness table for CGFloat;
        *v98 = v97;
      }

      else
      {
        if (qword_100941200 != -1)
        {
          swift_once();
        }

        v110 = sub_10076D9AC();
        v111 = sub_10000A61C(v110, qword_1009A2380);
        v112 = v145;
        v145[3] = v110;
        v112[4] = &protocol witness table for StaticDimension;
        v113 = sub_10000DB7C(v112);
        return (*(*(v110 - 8) + 16))(v113, v111, v110);
      }

      return result;
    }

    goto LABEL_23;
  }

  if (qword_1009411F8 != -1)
  {
    swift_once();
  }

  v104 = sub_10076D9AC();
  sub_10000A61C(v104, qword_1009A2368);
  v105 = sub_10076461C();
  v106 = v118;
  sub_10076D17C();
  sub_10076D97C();
  v108 = v107;

  result = (*(v119 + 8))(v106, v120);
  v109 = v145;
  v145[3] = &type metadata for CGFloat;
  v109[4] = &protocol witness table for CGFloat;
  *v109 = v108 + v108;
  return result;
}

uint64_t sub_1003C1E78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10076B79C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1003C1EA8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1003C1EF0()
{
  sub_10000A5D4(&unk_10094E7E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783C60;
  *(inited + 32) = NSFontAttributeName;
  v2 = *(v0 + 4);
  v3 = sub_100016F40(0, &qword_100942F00);
  *(inited + 40) = v2;
  *(inited + 64) = v3;
  *(inited + 72) = NSParagraphStyleAttributeName;
  v4 = *(v0 + 5);
  v5 = sub_100016F40(0, &qword_10094D748);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = NSBaselineOffsetAttributeName;
  v6 = v0[6];
  v7 = objc_allocWithZone(NSNumber);
  v8 = NSFontAttributeName;
  v9 = v2;
  v10 = NSParagraphStyleAttributeName;
  v11 = v4;
  v12 = NSBaselineOffsetAttributeName;
  v13 = [v7 initWithDouble:v6];
  *(inited + 144) = sub_100016F40(0, &qword_1009492D0);
  *(inited + 120) = v13;
  v14 = sub_1000FC5F4(inited);
  swift_setDeallocating();
  sub_10000A5D4(&unk_100948B10);
  swift_arrayDestroy();
  return v14;
}

void sub_1003C2078()
{
  v1 = sub_10076771C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100943250);
  *&v6 = __chkstk_darwin(v5 - 8).n128_u64[0];
  v8 = &v41 - v7;
  v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitle + 8];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitle];
  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel;
    if (*&v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel])
    {
    }

    else
    {
      v16 = v0;
      v17 = qword_100940EF8;

      if (v17 != -1)
      {
        swift_once();
      }

      v18 = sub_10076D3DC();
      v19 = sub_10000A61C(v18, qword_1009A1AE0);
      v20 = *(v18 - 8);
      (*(v20 + 16))(v8, v19, v18);
      (*(v20 + 56))(v8, 0, 1, v18);
      (*(v2 + 104))(v4, enum case for DirectionalTextAlignment.none(_:), v1);
      v21 = objc_allocWithZone(sub_1007626BC());
      v22 = sub_1007626AC();
      v0 = v16;
      v23 = *&v16[v12];
      if (v23)
      {
        [v23 removeFromSuperview];
        v24 = *&v16[v12];
      }

      else
      {
        v24 = 0;
      }

      *&v16[v12] = v22;
      v25 = v22;

      v26 = [v16 contentView];
      [v26 addSubview:v25];

      [v16 setNeedsLayout];
    }

    v27 = &v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics];
    v28 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 32];
    if (v28)
    {
      v43 = v10;
      v29 = *v27;
      v30 = v27[1];
      v31 = v27[2];
      v32 = v27[3];
      v33 = v27[5];
      v34 = v27[6];
      v44 = *v27;
      v45 = v30;
      v46 = v31;
      v47 = v32;
      v48 = v28;
      v49 = v33;
      v50 = v34;
      v35 = *&v0[v12];
      if (v35)
      {
        sub_1003C39B8(v29, v30, v31, v32, v28, v33);
        v42 = v35;
        sub_1003C1EF0();
        v41 = objc_allocWithZone(NSAttributedString);
        v36 = sub_10076FF6C();

        type metadata accessor for Key(0);
        sub_1003C39F8(&qword_100943320, type metadata accessor for Key);
        isa = sub_10076FE3C().super.isa;

        v38 = [v41 initWithString:v36 attributes:isa];

        v39 = v42;
        [v42 setAttributedText:v38];
        sub_1003C353C(v29, v30, v31, v32, v28, v33);
      }

      else
      {
      }
    }

    else
    {

      v40 = *&v0[v12];
      if (v40)
      {
        [v40 setAttributedText:0];
      }
    }
  }

  else
  {
LABEL_7:
    v13 = OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel;
    v14 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel];
    if (v14)
    {
      [v14 removeFromSuperview];
      v15 = *&v0[v13];
    }

    else
    {
      v15 = 0;
    }

    *&v0[v13] = 0;

    [v0 setNeedsLayout];
  }
}

void sub_1003C2560()
{
  v22.receiver = v0;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_mainContentView];
    v3 = v1;
    [v2 frame];
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
    v8 = CGRectGetWidth(v23) + -40.0;
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    v9 = CGRectGetHeight(v24);
    v10 = v3;
    [v10 sizeThatFits:{v8, v9}];
    v12 = v11;
    v14 = v13;
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    MinX = CGRectGetMinX(v25);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    MidY = CGRectGetMidY(v26);
    if (v8 >= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v8;
    }

    if (v9 >= v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = v9;
    }

    [v10 setFrame:{MinX + 20.0, MidY + v14 * -0.5, v16, v17}];
  }

  v18 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView];
  if (v18)
  {
    v19 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_mainContentView];
    v20 = v18;
    [v19 bounds];
    [v20 setFrame:?];
  }
}

uint64_t sub_1003C2814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10076C7EC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10075DE9C();
  __chkstk_darwin(v12 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076637C();
  __chkstk_darwin(v15 - 8);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007D4E4(a1, a2, a3);
  sub_10076C7FC();
  sub_10075E54C();
  if (swift_dynamicCastClass())
  {
    v37 = v11;
    v38 = v9;
    v39 = v8;
    v18 = [v4 traitCollection];
    v19 = sub_1007706CC();

    sub_10076C75C();
    sub_10075DE6C();
    sub_1003C37C8(v19 & 1, v17, v14, v41);
    v20 = v42;
    v21 = &v4[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics];
    v22 = *&v4[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics];
    v23 = *&v4[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 8];
    v24 = *&v4[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 16];
    v25 = *&v4[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 24];
    v27 = *&v4[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 32];
    v26 = *&v4[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 40];
    v28 = v41[1];
    *v21 = v41[0];
    *(v21 + 1) = v28;
    *(v21 + 2) = v41[2];
    *(v21 + 6) = v20;
    sub_1003C3950(v41, v40);
    sub_1003C353C(v22, v23, v24, v25, v27, v26);
    [v4 setNeedsLayout];
    sub_1003C3988(v41);
    v29 = sub_10076C81C();
    v30 = &v4[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitle];
    *v30 = v29;
    v30[1] = v31;

    sub_1003C2078();
    v32 = *&v4[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel];
    if (v32)
    {
      v33 = v32;
      v34 = v37;
      sub_10076C80C();
      v35 = sub_10076C79C();
      (*(v38 + 8))(v34, v39);
      [v33 setTextColor:v35];
    }

    [v4 setNeedsLayout];
  }

  else
  {
  }
}

uint64_t sub_1003C2B4C(uint64_t a1, uint64_t a2)
{
  sub_10007E0D4(a1, a2);
  sub_10076C84C();
  sub_1003C39F8(&qword_100947150, &type metadata accessor for TodayCard);
  result = sub_10076332C();
  if (v8)
  {
    sub_10076C7FC();
    sub_10075E54C();
    if (swift_dynamicCastClass())
    {
      swift_getKeyPath();
      sub_10076338C();

      v3 = sub_1007684FC();

      if (v3)
      {
      }

      else
      {

        sub_10075E2AC();

        v4 = sub_10076BFCC();

        sub_10000A5D4(&unk_100942870);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_1007841E0;
        *(v5 + 32) = v4;

        v6._rawValue = v5;
        sub_100760BAC(v6);
      }
    }
  }

  return result;
}

id sub_1003C2D44(uint64_t a1, uint64_t a2)
{
  sub_10007D9E0(a1, a2);
  v3 = OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView;
  v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v2[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v2[v3] = 0;

  return [v2 setNeedsLayout];
}

uint64_t sub_1003C2DB0()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_100949638);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v21[-v4 - 8];
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension42TodayBrickCollectionViewCellWithBackground_imageBackgroundView];
  [v6 setImage:{0, v3}];
  [v6 setBackgroundColor:0];
  sub_10076C7FC();
  sub_10075E54C();
  if (swift_dynamicCastClass())
  {
    v7 = OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView;
    v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView];
    if (v8)
    {
      v9 = *&v8[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_image];
      *&v8[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_image] = 0;
      v10 = v8;

      sub_1001174F8();
      v11 = v10;
    }

    else
    {
      type metadata accessor for BrandedAppTodayCardNoArtBackgroundView();
      v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v14 = *&v1[v7];
      v15 = v13;
      if (v14)
      {
        [v14 removeFromSuperview];
        v16 = *&v1[v7];
      }

      else
      {
        v16 = 0;
      }

      *&v1[v7] = v13;
      v11 = v13;

      [*&v1[OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_mainContentView] insertSubview:v11 atIndex:0];
      [v1 setNeedsLayout];

      v10 = 0;
    }

    v17 = v10;

    sub_10075E2AC();
    sub_10076BF7C();

    v18 = sub_10076BF6C();
    (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
    v19 = OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_style;
    swift_beginAccess();
    sub_1003C357C(v5, &v11[v19]);
    swift_endAccess();
    [v11 setNeedsLayout];
    sub_10000CFBC(v5, &qword_100949638);
    sub_10075E2AC();

    sub_10076BFCC();

    v20 = v11;
    type metadata accessor for BrandedAppTodayCardNoArtBackgroundView();
    sub_1003C39F8(&qword_100955B80, type metadata accessor for BrandedAppTodayCardNoArtBackgroundView);
    sub_10077140C();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_100760B7C();

    sub_10000CFBC(v21, &qword_100943310);
  }

  else
  {
  }
}

void sub_1003C31A8(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView);
    if (v4)
    {
      v5 = v4;

      v6 = *&v5[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_image];
      *&v5[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_image] = a1;
      v7 = a1;

      v3 = v5;
      sub_1001174F8();
    }
  }
}

void sub_1003C32F8()
{
  sub_1003C353C(*(v0 + OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics), *(v0 + OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 8), *(v0 + OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 16), *(v0 + OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 24), *(v0 + OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 32), *(v0 + OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 40));

  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView);
}

uint64_t type metadata accessor for BrandedAppTodayBrickCollectionViewCell()
{
  result = qword_100955B70;
  if (!qword_100955B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003C3498(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1003C34E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1003C353C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a5)
  {
  }
}

uint64_t sub_1003C357C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100949638);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003C35EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1003C3630()
{
  v0 = sub_10076637C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = 1.5;
  if ((sub_10075DE3C() & 1) == 0 && (sub_10075DDEC() & 1) == 0 && (sub_10075DE2C() & 1) == 0)
  {
    sub_10076635C();
    sub_1003C39F8(&qword_10094D768, &type metadata accessor for StringCharacteristics);
    v5 = sub_10077124C();
    v6 = *(v1 + 8);
    v6(v3, v0);
    if ((v5 & 1) == 0)
    {
      sub_10076634C();
      v7 = sub_10077124C();
      v6(v3, v0);
      if (v7)
      {
        return 1.5;
      }

      else
      {
        return 1.0;
      }
    }
  }

  return v4;
}

double sub_1003C37C8@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = objc_opt_self();
  if (a1)
  {
    v9 = 48.0;
  }

  else
  {
    v9 = 30.0;
  }

  v10 = 38.0;
  if (a1)
  {
    v10 = 60.0;
    v11 = -12.0;
  }

  else
  {
    v11 = -8.0;
  }

  v12 = [v8 systemFontOfSize:v10 weight:UIFontWeightBold];
  v13 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  v14 = v9 * sub_1003C3630();
  [v13 setMinimumLineHeight:v14];
  [v13 setMaximumLineHeight:v14];
  v15 = sub_10075DE9C();
  (*(*(v15 - 8) + 8))(a3, v15);
  v16 = sub_10076637C();
  (*(*(v16 - 8) + 8))(a2, v16);
  result = 60.0;
  *a4 = xmmword_1007A0790;
  *(a4 + 16) = xmmword_1007A07A0;
  *(a4 + 32) = v12;
  *(a4 + 40) = v13;
  *(a4 + 48) = v11;
  return result;
}

void sub_1003C39B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a5)
  {
    v6 = a5;

    v7 = a6;
  }
}

uint64_t sub_1003C39F8(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_1003C3A40@<Q0>(uint64_t *a1@<X8>)
{
  v10 = *(v1 + 32);
  v11 = *(v1 + 48);
  v12 = *(v1 + 64);
  v13 = *(v1 + 80);
  v8 = *v1;
  v9 = *(v1 + 16);
  if (*(v1 + 240) == 1)
  {
    a1[3] = &type metadata for BannerCollectionViewCellLayout.VerticalBannerLayout;
    a1[4] = sub_10011E144();
  }

  else
  {
    a1[3] = &type metadata for BannerCollectionViewCellLayout.HorizontalBannerLayout;
    a1[4] = sub_10011E028();
  }

  v3 = swift_allocObject();
  sub_10000A570(v1 + 96, v3 + 112);
  sub_10011E080(v1 + 136, v3 + 152);
  v4 = *(v1 + 176);
  v5 = *(v1 + 184);
  v6 = *(v1 + 192);
  sub_10011E080(v1 + 200, v3 + 216);
  *(v3 + 48) = v10;
  *(v3 + 64) = v11;
  *(v3 + 80) = v12;
  *(v3 + 96) = v13;
  result = v8;
  *(v3 + 16) = v8;
  *(v3 + 32) = v9;
  *(v3 + 192) = v4;
  *(v3 + 200) = v5;
  *(v3 + 208) = v6;
  *a1 = v3;
  return result;
}

__n128 sub_1003C3B54(uint64_t a1, __int128 *a2)
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
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

__n128 sub_1003C3BA8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_1003C3BF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 241))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003C3C3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *(result + 240) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 241) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 241) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003C3CD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003C3D1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1003C3DA8(double a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 5);
  v29 = *(v1 + 3);
  v30 = v5;
  v31 = v1[7];
  v7 = v1[8];
  v6 = v1[9];
  v8 = v1[10];
  v9 = v1[11];
  sub_10000A570((v1 + 12), v26);
  sub_10011E080((v1 + 17), v27);
  v10 = v1[22];
  v11 = v1[23];
  v12 = *(v1 + 192);
  v17[0] = v2;
  v17[1] = v3;
  v17[2] = v4;
  v18 = v29;
  v19 = v30;
  v20 = v31;
  v21 = v7;
  v22 = v6;
  v23 = v8;
  v24 = v9;
  v25 = 0;
  v27[5] = v10;
  v27[6] = v11;
  v28 = v12;
  if ((v12 & 1) == 0)
  {
    sub_10011E080(v27, &v15);
    sub_10017FE2C(&v15);
  }

  sub_10000CF78(v26, v26[3]);
  sub_10076E0FC();
  sub_1003C4D50(v17);
  sub_10011E080((v1 + 25), &v15);
  if (v16)
  {
    sub_100012498(&v15, v17);
    sub_10000CF78(v17, v18);
    sub_10076E0FC();
    sub_10000CD74(v17);
  }

  else
  {
    sub_10017FE2C(&v15);
  }

  return a1;
}

uint64_t sub_1003C3FAC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  sub_1007708DC();
  v14 = sub_100102A30(a2, a3, a4, a5, v12, v13);
  v16 = v15;
  v52 = v18;
  v53 = v17;
  v19 = *(v5 + 1);
  v78 = *v5;
  v79 = v19;
  v20 = *(v5 + 3);
  v80 = *(v5 + 2);
  v81 = v20;
  v21 = v5[8];
  v22 = *(v5 + 9);
  v77 = *(v5 + 5);
  sub_10000A570((v5 + 12), v64);
  sub_10011E080((v5 + 17), v66);
  v23 = v5[22];
  v24 = v6[23];
  v25 = *(v6 + 192);
  v59[0] = v78;
  v59[1] = v79;
  v59[2] = v80;
  v59[3] = v81;
  v60 = v21;
  v61 = v22;
  v62 = v77;
  v63 = 0;
  *&v66[5] = v23;
  *&v66[6] = v24;
  v26 = 0.0;
  v27 = 0.0;
  v67 = v25;
  if ((v25 & 1) == 0)
  {
    sub_10011E080(v66, v68);
    if (v69 != 0.0)
    {
      v27 = v24;
      v26 = v23;
    }

    sub_10017FE2C(v68);
  }

  if (v26 <= 0.0)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = v21 + v26;
  }

  sub_10000CF78(v64, v65);
  sub_10076E0FC();
  v33 = v30;
  if (v27 > v30)
  {
    v30 = v27;
  }

  *v68 = v26;
  *&v68[1] = v27;
  v34 = v28 + v29;
  *&v68[2] = v28;
  v69 = v29;
  v70 = v33;
  v71 = v31;
  v72 = v32;
  v73 = v28 + v29;
  v74 = v30;
  v75 = v30;
  v35 = v30;
  v76 = 0;
  sub_10011E080((v6 + 25), v57);
  v36 = v58;
  sub_10017FE2C(v57);
  if (v25)
  {
    v37 = 1;
  }

  else
  {
    sub_10011E080((v6 + 17), v57);
    v37 = v58 == 0;
    sub_10017FE2C(v57);
  }

  sub_10000CF78(v64, v65);
  sub_10076E0FC();
  v39 = v38 >= v33 || v37;
  if (v36 || (v39 & 1) == 0)
  {
    v44 = v34;
    v40 = v14;
    v83.origin.x = v14;
    v41 = v16;
    v83.origin.y = v16;
    v42 = v52;
    v43 = v53;
    v83.size.width = v53;
    v83.size.height = v52;
    MinX = CGRectGetMinX(v83);
    if (v36)
    {
      v84.origin.x = v14;
      v84.origin.y = v41;
      v84.size.width = v53;
      v84.size.height = v52;
      MinY = CGRectGetMinY(v84);
      goto LABEL_22;
    }
  }

  else
  {
    v40 = v14;
    v82.origin.x = v14;
    v41 = v16;
    v82.origin.y = v16;
    v42 = v52;
    v43 = v53;
    v82.size.width = v53;
    v82.size.height = v52;
    v44 = v34;
    MinX = CGRectGetMidX(v82) + v34 * -0.5;
  }

  v85.origin.x = v40;
  v85.origin.y = v41;
  v85.size.width = v43;
  v85.size.height = v42;
  MinY = CGRectGetMidY(v85) + v35 * -0.5;
LABEL_22:
  v54 = MinY;
  sub_1007709CC();
  sub_1003C43E8(v47, v48, v49, v50, a1, v68);
  sub_10011E080((v6 + 25), &v55);
  if (v56)
  {
    sub_100012498(&v55, v57);
    sub_10000CF78(v57, v58);
    sub_10076E0FC();
    v86.origin.x = v40;
    v86.origin.y = v41;
    v86.size.width = v43;
    v86.size.height = v42;
    CGRectGetMinX(v86);
    v87.origin.x = MinX;
    v87.origin.y = v54;
    v87.size.width = v44;
    v87.size.height = v35;
    CGRectGetMaxY(v87);
    v88.origin.x = v40;
    v88.origin.y = v41;
    v88.size.width = v43;
    v88.size.height = v42;
    CGRectGetWidth(v88);
    sub_10000CF78(v57, v58);
    sub_1007709CC();
    sub_10076E0EC();
    sub_1003C4D50(v59);
    return sub_10000CD74(v57);
  }

  else
  {
    sub_1003C4D50(v59);
    return sub_10017FE2C(&v55);
  }
}

uint64_t sub_1003C43E8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6)
{
  v11 = *(v6 + 96) | (*(a6 + 32) < *(a6 + 8) + *(a6 + 8));
  sub_10011E080(v6 + 144, &v21);
  if (v22)
  {
    sub_100012498(&v21, v23);
    v24.origin.x = a1;
    v24.origin.y = a2;
    v24.size.width = a3;
    v24.size.height = a4;
    CGRectGetMinX(v24);
    v12 = a1;
    v13 = a2;
    v14 = a3;
    v15 = a4;
    if (v11)
    {
      CGRectGetMidY(*&v12);
    }

    else
    {
      CGRectGetMinY(*&v12);
    }

    sub_10000CF78(v23, v23[3]);
    sub_1007709CC();
    sub_10076E0EC();
    sub_10000CD74(v23);
  }

  else
  {
    sub_10017FE2C(&v21);
  }

  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  CGRectGetMinX(v25);
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  if (v11)
  {
    CGRectGetMidY(*&v16);
  }

  else
  {
    CGRectGetMinY(*&v16);
  }

  sub_10000CF78((v6 + 104), *(v6 + 128));
  sub_1007709CC();
  return sub_10076E0EC();
}

double sub_1003C45E8(double a1)
{
  sub_10011E080(v1 + 200, &v26);
  if (v27)
  {
    sub_100012498(&v26, &v12);
    sub_10000CF78(&v12, *(&v13 + 1));
    sub_10076E0FC();
    sub_10000CD74(&v12);
  }

  else
  {
    sub_10017FE2C(&v26);
  }

  v2 = v1[1];
  v24 = *v1;
  v25 = v2;
  v3 = *(v1 + 8);
  v23 = *(v1 + 72);
  v4 = *(v1 + 11);
  v10 = v1[3];
  v11 = v1[2];
  sub_10000A570((v1 + 6), v20);
  sub_10011E080(v1 + 136, v21);
  v5 = *(v1 + 22);
  v6 = *(v1 + 23);
  v7 = *(v1 + 192);
  v12 = v24;
  v13 = v25;
  v14 = v11;
  v15 = v10;
  v16 = v3;
  v17 = v23;
  v18 = v4;
  v19 = 1;
  v21[5] = v5;
  v21[6] = v6;
  v22 = v7;
  if ((v7 & 1) == 0)
  {
    sub_10011E080(v21, &v26);
    sub_10017FE2C(&v26);
  }

  sub_10000CF78(v20, v20[3]);
  sub_10076E0FC();
  sub_1003C4D50(&v12);
  return a1;
}

uint64_t sub_1003C480C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1007708DC();
  v72.origin.x = sub_100102A30(a2, a3, a4, a5, v11, v12);
  x = v72.origin.x;
  y = v72.origin.y;
  width = v72.size.width;
  height = v72.size.height;
  CGRectGetWidth(v72);
  sub_10011E080(v5 + 200, &v62);
  v42 = y;
  if (v64 == 0.0)
  {
    sub_10017FE2C(&v62);
    v17 = y;
  }

  else
  {
    sub_100012498(&v62, &v43);
    sub_10000CF78(&v43, *(&v44 + 1));
    sub_10076E0FC();
    v73.origin.x = x;
    v73.origin.y = y;
    v73.size.width = width;
    v73.size.height = height;
    CGRectGetMaxX(v73);
    v74.origin.x = x;
    v74.origin.y = y;
    v74.size.width = width;
    v74.size.height = height;
    CGRectGetMidY(v74);
    sub_10000CF78(&v43, *(&v44 + 1));
    sub_1007709CC();
    sub_10076E0EC();
    v17 = y;
    sub_10000CD74(&v43);
  }

  sub_10011E080(v5 + 200, v60);
  v18 = v61;
  sub_10017FE2C(v60);
  v19 = v5[1];
  v56 = *v5;
  v57 = v19;
  v20 = v5[3];
  v58 = v5[2];
  v59 = v20;
  v21 = *(v5 + 8);
  v54 = *(v5 + 72);
  v55 = *(v5 + 11);
  sub_10000A570((v5 + 6), v51);
  sub_10011E080(v5 + 136, v52);
  v22 = *(v5 + 22);
  v23 = *(v5 + 23);
  v24 = *(v5 + 192);
  v43 = v56;
  v44 = v57;
  v45 = v58;
  v46 = v59;
  v47 = v21;
  v48 = v54;
  v49 = v55;
  v50 = 1;
  *&v52[5] = v22;
  *&v52[6] = v23;
  v53 = v24;
  v75.origin.x = x;
  v75.origin.y = v17;
  v75.size.width = width;
  v75.size.height = height;
  CGRectGetHeight(v75);
  v25 = 0.0;
  v26 = 0.0;
  if ((v24 & 1) == 0)
  {
    sub_10011E080(v52, &v62);
    if (v64 != 0.0)
    {
      v26 = v23;
      v25 = v22;
    }

    sub_10017FE2C(&v62);
  }

  if (v25 <= 0.0)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = v21 + v25;
  }

  sub_10000CF78(v51, v51[3]);
  sub_10076E0FC();
  if (v26 > v29)
  {
    v32 = v26;
  }

  else
  {
    v32 = v29;
  }

  *&v62 = v25;
  *(&v62 + 1) = v26;
  v63 = v27;
  v64 = v28;
  v65 = v29;
  v66 = v30;
  v67 = v31;
  v68 = v27 + v28;
  v69 = v32;
  v70 = v32;
  v71 = 0;
  v33 = x;
  v34 = v42;
  v35 = width;
  v36 = height;
  if (v18)
  {
    CGRectGetMinX(*&v33);
  }

  else
  {
    CGRectGetMidX(*&v33);
  }

  v76.origin.x = x;
  v76.origin.y = v42;
  v76.size.width = width;
  v76.size.height = height;
  CGRectGetMidY(v76);
  sub_1007709CC();
  sub_1003C43E8(v37, v38, v39, v40, a1, &v62);
  return sub_1003C4D50(&v43);
}

double sub_1003C4BFC()
{
  sub_1003C3A40(v3);
  sub_10000CF78(v3, v3[3]);
  sub_10076E0FC();
  v1 = v0;
  sub_10000CD74(v3);
  return v1;
}

uint64_t sub_1003C4CA0()
{
  sub_1003C3A40(v1);
  sub_10000CF78(v1, v1[3]);
  sub_10076E0EC();
  return sub_10000CD74(v1);
}

__n128 sub_1003C4D34@<Q0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 48);
  a1[2] = *(v1 + 32);
  a1[3] = v2;
  v3 = *(v1 + 80);
  a1[4] = *(v1 + 64);
  a1[5] = v3;
  result = *v1;
  v5 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v5;
  return result;
}

__n128 sub_1003C4D80(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_1003C4DC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 201))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 128);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003C4E0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 201) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 201) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003C4E90(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003C4EB0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 96) = v3;
  return result;
}

unint64_t sub_1003C4F18()
{
  result = qword_100955B88;
  if (!qword_100955B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100955B88);
  }

  return result;
}

void sub_1003C4F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_10075EE9C();
    v9 = sub_10075F27C();

    if (v9)
    {
      v10 = sub_10000A5D4(&unk_1009428E0);
      sub_10076F5AC();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v6, 1, v10) == 1)
      {

        sub_1000527AC(v6);
      }

      else
      {
        sub_100263BF0(v9, 1, a3, v6);

        (*(v11 + 8))(v6, v10);
      }
    }

    else
    {
    }
  }
}

double sub_1003C5128(uint64_t a1, void *a2, uint64_t a3, double a4, uint64_t a5, int *a6)
{
  v105 = a3;
  v106 = a6;
  v9 = sub_10077164C();
  v101 = *(v9 - 8);
  v102 = v9;
  __chkstk_darwin(v9);
  v100 = &v75[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10076749C();
  v98 = *(v11 - 8);
  v99 = v11;
  __chkstk_darwin(v11);
  v96 = &v75[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v111 = sub_10076997C();
  v94 = *(v111 - 8);
  __chkstk_darwin(v111);
  v93 = &v75[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_10076443C();
  v108 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v75[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v75[-v18];
  v20 = sub_10076747C();
  v109 = *(v20 - 8);
  __chkstk_darwin(v20);
  v95 = &v75[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v24 = &v75[-v23];
  sub_100770ACC();
  v26 = v25;
  v103 = a1;
  v27 = sub_10075EEAC();
  v28 = sub_10076BB6C();
  v83 = v29;
  v84 = v28;
  v30 = sub_10076BBEC();
  v85 = v31;
  v86 = v30;
  if (sub_10076BB0C())
  {
    v32 = sub_10076518C();

    if (v32)
    {
      v33 = sub_10076C3EC();
      v91 = v34;
      v92 = v33;
    }

    else
    {
      v91 = 0;
      v92 = 0;
    }
  }

  else
  {
    v91 = 0;
    v92 = 0;
  }

  sub_10076286C();
  v35 = [a2 traitCollection];
  if (qword_1009407E8 != -1)
  {
    swift_once();
  }

  v36 = sub_10000A61C(v20, qword_1009A0690);
  v88 = *(v109 + 16);
  v89 = v109 + 16;
  v88(v24, v36, v20);
  v37 = sub_10077071C();
  v104 = a2;
  v97 = v27;
  v110 = v20;
  if (v37)
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v38 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v38 = qword_100944CA0;
  }

  v39 = v14;
  v40 = sub_10000A61C(v14, v38);
  v41 = v108;
  (*(v108 + 16))(v16, v40, v14);
  (*(v41 + 32))(v19, v16, v14);
  v82 = v35;
  v42 = [v35 preferredContentSizeCategory];
  sub_10077084C();

  sub_1007643EC();
  sub_10076441C();
  sub_10076746C();
  sub_10076745C();
  v43 = sub_10076DDDC();
  swift_allocObject();
  v81 = sub_10076DDBC();
  v44 = objc_opt_self();
  v78 = v44;
  v45 = [v44 preferredFontForTextStyle:UIFontTextStyleBody];
  v46 = sub_10076C04C();
  v80 = v24;
  v47 = v46;
  v148[3] = v46;
  v107 = sub_1003C5D4C(&qword_100943230, &type metadata accessor for Feature);
  v148[4] = v107;
  v48 = sub_10000DB7C(v148);
  v49 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v50 = *(v47 - 8);
  v79 = *(v50 + 104);
  v90 = v39;
  v51 = v50 + 104;
  v76 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v79(v48, enum case for Feature.measurement_with_labelplaceholder(_:), v47);
  v77 = v51;
  sub_10076C90C();
  v87 = v19;
  sub_10000CD74(v148);
  v52 = v93;
  sub_10076996C();
  sub_10076994C();
  v53 = *(v94 + 8);
  v53(v52, v111);
  v54 = [v44 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v147[3] = v47;
  v147[4] = v107;
  v55 = sub_10000DB7C(v147);
  v56 = v49;
  v57 = v79;
  v79(v55, v56, v47);
  sub_10076C90C();
  sub_10000CD74(v147);
  sub_10076996C();
  sub_10076994C();
  v53(v52, v111);
  v58 = [v78 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v146[3] = v47;
  v146[4] = v107;
  v59 = sub_10000DB7C(v146);
  v57(v59, v76, v47);
  sub_10076C90C();
  sub_10000CD74(v146);
  sub_10076996C();
  sub_10076994C();
  v53(v52, v111);
  sub_10001D420(0, 0);
  swift_allocObject();
  v60 = sub_10076DDBC();

  sub_10001D420(0, 0);
  swift_allocObject();
  v61 = sub_10076DDBC();
  v62 = v80;
  v88(v95, v80, v110);
  v145 = &protocol witness table for LayoutViewPlaceholder;
  v144 = v43;
  v143 = v81;
  v142 = 0;
  *&v140[40] = 0u;
  v141 = 0u;
  sub_10000A570(v148, v140);
  sub_10000A570(v147, &v139);
  v138 = 0;
  v136 = 0u;
  v137 = 0u;
  v135 = 0;
  v133 = 0u;
  v134 = 0u;

  v63 = sub_10076DDCC();
  v132 = &protocol witness table for LayoutViewPlaceholder;
  v131 = v43;
  v130 = v63;
  v129 = 0;
  v127 = 0u;
  v128 = 0u;
  v126 = 0;
  v124 = 0u;
  v125 = 0u;
  v123 = 0;
  v121 = 0u;
  v122 = 0u;
  v120 = 0;
  v119 = 0u;
  *&v118[40] = 0u;
  sub_10000A570(v146, v118);
  v116 = v43;
  v117 = &protocol witness table for LayoutViewPlaceholder;
  v114 = &protocol witness table for LayoutViewPlaceholder;
  v115 = v60;
  v113 = v43;
  v112 = v61;
  v64 = v96;
  sub_10076748C();
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1007841E0;
  v66 = v82;
  *(v65 + 32) = v82;
  v67 = v66;
  v68 = sub_10076DEEC();
  sub_1003C5D4C(&unk_100958A50, &type metadata accessor for SmallSearchLockupLayout);
  v69 = v99;
  sub_10076D2AC();

  (*(v98 + 8))(v64, v69);
  sub_10000CD74(v146);
  sub_10000CD74(v147);
  sub_10000CD74(v148);
  (*(v108 + 8))(v87, v90);
  (*(v109 + 8))(v62, v110);
  if (qword_10093FB18 != -1)
  {
    swift_once();
  }

  sub_10000CF78(qword_10099DB98, qword_10099DBB0);
  v70 = v100;
  sub_1000FF02C();
  v71 = v104;
  sub_10076D40C();
  (*(v101 + 8))(v70, v102);
  v72 = type metadata accessor for AppEventView();
  v73 = sub_10075EE9C();
  sub_10069CFD8(v26, v73, v71, v105, v72, v106);

  return a4;
}

uint64_t sub_1003C5D4C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1003C5D94()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "prepareForReuse");
  v2 = &v0[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction];
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction];
  *v2 = 0;
  *(v2 + 1) = 0;
  sub_1000167E0(v3);
  sub_1003C8578(_swiftEmptyArrayStorage);
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  sub_10075FCEC(v14, v4);
  v5 = *(*&v0[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupView] + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView);
  v15.value.super.isa = 0;
  v15.is_nil = 0;
  sub_10075FCEC(v15, v6);

  v7 = &v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_initialLongPressLocation];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer];
  if (v8)
  {
    [v8 setEnabled:1];
  }

  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardContainerView];
  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardView];
  [v9 addSubview:v10];
  v12[0] = 0x3FF0000000000000;
  v12[1] = 0;
  v12[2] = 0;
  v12[3] = 0x3FF0000000000000;
  v12[4] = 0;
  v12[5] = 0;
  [v10 setTransform:v12];
  [v10 setAlpha:1.0];
  return [v10 setHidden:0];
}

uint64_t sub_1003C5EF4()
{
  v0 = sub_10076D39C();
  __chkstk_darwin(v0 - 8);
  v23[2] = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1007640EC();
  sub_10000DB18(v6, qword_10099F660);
  v23[1] = sub_10000A61C(v6, qword_10099F660);
  if (qword_100940B30 != -1)
  {
    swift_once();
  }

  v7 = sub_10076D3DC();
  v8 = sub_10000A61C(v7, qword_1009A0F88);
  v9 = *(v7 - 8);
  v26 = *(v9 + 16);
  v25 = v9 + 16;
  v26(v5, v8, v7);
  v10 = v3[13];
  v24 = enum case for FontSource.useCase(_:);
  v27 = v10;
  v10(v5);
  v11 = sub_10076D9AC();
  v40[3] = v11;
  v40[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v40);
  v38 = v2;
  v39 = &protocol witness table for FontSource;
  v12 = sub_10000DB7C(v37);
  v13 = v3[2];
  v13(v12, v5, v2);
  sub_10076D9BC();
  v14 = v3[1];
  v14(v5, v2);
  if (qword_100940B38 != -1)
  {
    swift_once();
  }

  v15 = sub_10000A61C(v7, qword_1009A0FA0);
  v26(v5, v15, v7);
  v27(v5, v24, v2);
  v38 = v11;
  v39 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v37);
  v35 = v2;
  v36 = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(v34);
  v13(v16, v5, v2);
  sub_10076D9BC();
  v14(v5, v2);
  if (qword_100940B40 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v7, qword_1009A0FB8);
  v26(v5, v17, v7);
  v18 = v27;
  v27(v5, v24, v2);
  v35 = v11;
  v36 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v34);
  v32 = v2;
  v33 = &protocol witness table for FontSource;
  v19 = sub_10000DB7C(v31);
  v13(v19, v5, v2);
  sub_10076D9BC();
  v14(v5, v2);
  *v5 = UIFontTextStyleBody;
  v18(v5, enum case for FontSource.textStyle(_:), v2);
  v32 = v11;
  v33 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v31);
  v29 = v2;
  v30 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(v28);
  v13(v20, v5, v2);
  v21 = UIFontTextStyleBody;
  sub_10076D9BC();
  v14(v5, v2);
  sub_10076D3AC();
  v30 = &protocol witness table for Double;
  v29 = &type metadata for Double;
  v28[0] = 0;
  v41 = 0u;
  v42 = 0u;
  v43 = 1;
  return sub_1007640BC();
}

uint64_t sub_1003C6490()
{
  v0 = sub_10076E1EC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076E21C();
  sub_10000DB18(v4, qword_10099F678);
  sub_10000A61C(v4, qword_10099F678);
  (*(v1 + 104))(v3, enum case for Separator.Position.top(_:), v0);
  v7[3] = sub_10076D67C();
  v7[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v7);
  sub_10076D66C();
  return sub_10076E1FC();
}

uint64_t sub_1003C65C8()
{
  v0 = sub_100763ADC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DB18(v4, qword_10099F690);
  sub_10000A61C(v0, qword_10099F690);
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_10099DDA0);
  (*(v1 + 16))(v3, v5, v0);
  sub_10076C13C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1003C672C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007639BC();
  sub_1007639FC();
  if (qword_100940AF8 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v5 = sub_10000A61C(v4, qword_1009A0EF8);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v9 = enum case for FontSource.useCase(_:);
  v10 = v1 + 13;
  v47 = v1[13];
  v47(v3, enum case for FontSource.useCase(_:), v0);
  v43 = sub_10076D9AC();
  v54 = v43;
  v55 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v53);
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v50);
  v12 = v1[2];
  v49 = v1 + 2;
  v42 = v12;
  v12(v11, v3, v0);
  sub_10076D9BC();
  v14 = v1[1];
  v13 = v1 + 1;
  v44 = v14;
  v14(v3, v0);
  sub_1007639DC();
  if (qword_100940B00 != -1)
  {
    swift_once();
  }

  v40 = sub_10000A61C(v4, qword_1009A0F10);
  v7(v3, v40, v4);
  HIDWORD(v39) = v9;
  v15 = v47;
  v47(v3, v9, v0);
  v54 = v43;
  v55 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v53);
  v45 = v10;
  v46 = v8;
  v48 = v7;
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(v50);
  v42(v16, v3, v0);
  sub_10076D9BC();
  v41 = v13;
  v44(v3, v0);
  sub_100763AAC();
  v17 = v40;
  v18 = v4;
  v48(v3, v40, v4);
  v19 = HIDWORD(v39);
  v15(v3, HIDWORD(v39), v0);
  v20 = v43;
  v54 = v43;
  v55 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v53);
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(v50);
  v22 = v42;
  v42(v21, v3, v0);
  sub_10076D9BC();
  v23 = v44;
  v44(v3, v0);
  sub_100763A7C();
  v48(v3, v17, v18);
  v24 = v19;
  v25 = v19;
  v26 = v47;
  v47(v3, v24, v0);
  v54 = v20;
  v55 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v53);
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v27 = sub_10000DB7C(v50);
  v22(v27, v3, v0);
  sub_10076D9BC();
  v23(v3, v0);
  sub_100763A6C();
  v28 = v40;
  v40 = v18;
  v48(v3, v28, v18);
  v26(v3, v25, v0);
  v29 = v43;
  v54 = v43;
  v55 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v53);
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v30 = sub_10000DB7C(v50);
  v31 = v42;
  v42(v30, v3, v0);
  sub_10076D9BC();
  v23(v3, v0);
  sub_100763ACC();
  if (qword_100940B08 != -1)
  {
    swift_once();
  }

  v32 = v40;
  v33 = sub_10000A61C(v40, qword_1009A0F28);
  v48(v3, v33, v32);
  v47(v3, v25, v0);
  v54 = v29;
  v55 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v53);
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v34 = sub_10000DB7C(v50);
  v31(v34, v3, v0);
  sub_10076D9BC();
  v35 = v44;
  v44(v3, v0);
  sub_100763A2C();
  if (qword_100940B10 != -1)
  {
    swift_once();
  }

  v36 = sub_10000A61C(v32, qword_1009A0F40);
  v48(v3, v36, v32);
  v47(v3, v25, v0);
  v54 = v29;
  v55 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v53);
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v37 = sub_10000DB7C(v50);
  v31(v37, v3, v0);
  sub_10076D9BC();
  v35(v3, v0);
  sub_100763A3C();
  return sub_100763A1C();
}

void sub_1003C6E9C(void *a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_avatarShowcase;
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_avatarShowcase];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_avatarShowcase] = a1;
  if (v3)
  {
    v4 = a1;
    [v3 removeFromSuperview];
    v5 = *&v1[v2];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    v7 = [v1 contentView];
    [v7 addSubview:v6];
  }

LABEL_4:
}

char *sub_1003C6F64(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v121 = sub_100763ADC();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v117 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v119 = &v113 - v12;
  v116 = sub_10075FEEC();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076771C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v131 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v17 - 8);
  v19 = &v113 - v18;
  v20 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_itemLayoutContext;
  v21 = sub_10076341C();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_avatarShowcase] = 0;
  v22 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_tapGestureRecognizer;
  *&v5[v22] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v23 = &v5[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction];
  *v23 = 0;
  *(v23 + 1) = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer] = 0;
  v24 = &v5[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_initialLongPressLocation];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 1;
  v25 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_clickAction;
  v26 = sub_10000A5D4(&qword_100955BD0);
  (*(*(v26 - 8) + 56))(&v5[v25], 1, 1, v26);
  v27 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardContainerView] = v27;
  v28 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardView] = v28;
  sub_10075FD2C();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_artworkView] = sub_10075FB2C();
  if (qword_100940B30 != -1)
  {
    swift_once();
  }

  v29 = sub_10076D3DC();
  v30 = sub_10000A61C(v29, qword_1009A0F88);
  v31 = *(v29 - 8);
  v32 = v31 + 16;
  v33 = *(v31 + 16);
  v33(v19, v30, v29);
  v36 = *(v31 + 56);
  v34 = v31 + 56;
  v35 = v36;
  v36(v19, 0, 1, v29);
  v37 = *(v15 + 104);
  v129 = enum case for DirectionalTextAlignment.none(_:);
  v127 = v15 + 104;
  v128 = v37;
  v37(v131);
  v38 = sub_1007626BC();
  v126 = v14;
  v39 = v38;
  v40 = objc_allocWithZone(v38);
  v132 = v19;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_captionLabel] = sub_1007626AC();
  if (qword_100940B38 != -1)
  {
    swift_once();
  }

  v41 = sub_10000A61C(v29, qword_1009A0FA0);
  v42 = v132;
  v33(v132, v41, v29);
  v35(v42, 0, 1, v29);
  v128(v131, v129, v126);
  v43 = objc_allocWithZone(v39);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_titleLabel] = sub_1007626AC();
  if (qword_100940B40 != -1)
  {
    swift_once();
  }

  v44 = sub_10000A61C(v29, qword_1009A0FB8);
  v45 = v132;
  v123 = v33;
  v124 = v32;
  v33(v132, v44, v29);
  v118 = v29;
  v125 = v34;
  v122 = v35;
  v35(v45, 0, 1, v29);
  v128(v131, v129, v126);
  v46 = objc_allocWithZone(v39);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_subtitleLabel] = sub_1007626AC();
  v47 = objc_allocWithZone(type metadata accessor for MediaOverlayGradientBlurView());
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_gradientBlurView] = sub_10046D7FC(1);
  type metadata accessor for CrossLinkLockupView();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v133.receiver = v5;
  v133.super_class = ObjectType;
  v48 = objc_msgSendSuper2(&v133, "initWithFrame:", a1, a2, a3, a4);
  v49 = [v48 contentView];
  [v49 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v50 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_captionLabel;
  [*(v48 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_captionLabel) _setTextColorFollowsTintColor:1];
  v51 = *(v48 + v50);
  sub_10076266C();

  v52 = [v48 contentView];
  [v52 addSubview:*(v48 + v50)];

  v53 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_titleLabel;
  v54 = *(v48 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_titleLabel);
  sub_10076266C();

  v55 = [v48 contentView];
  [v55 addSubview:*(v48 + v53)];

  v56 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_subtitleLabel;
  v57 = *(v48 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_subtitleLabel);
  sub_100016F40(0, &qword_100942F10);
  v58 = v57;
  v59 = sub_100770D1C();
  [v58 setTextColor:v59];

  v60 = *(v48 + v56);
  sub_10076266C();

  v61 = [v48 contentView];
  [v61 addSubview:*(v48 + v56)];

  v62 = [v48 contentView];
  v63 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardContainerView;
  [v62 addSubview:*(v48 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardContainerView)];

  v64 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardView;
  [*(v48 + v63) addSubview:*(v48 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardView)];
  [*(v48 + v64) setAccessibilityIgnoresInvertColors:1];
  v131 = v64;
  v65 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_artworkView;
  [*(v48 + v64) addSubview:*(v48 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_artworkView)];
  v66 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_gradientBlurView;
  v67 = *(v48 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_gradientBlurView);
  v68 = v115;
  v69 = v114;
  v70 = v116;
  (*(v115 + 104))(v114, enum case for CornerStyle.arc(_:), v116);
  v71 = v67;
  sub_10046CC14(v69, 12, 20.0);

  (*(v68 + 8))(v69, v70);
  v72 = *(v48 + v65);
  v73 = sub_1007638CC();

  if (v73)
  {
    [*(v48 + v65) insertSubview:*(v48 + v66) belowSubview:v73];
  }

  else
  {
    [*(v48 + v65) addSubview:*(v48 + v66)];
  }

  sub_1003C7FB8();
  v74 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupView;
  v75 = qword_100940340;
  v76 = *(v48 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupView);
  if (v75 != -1)
  {
    swift_once();
  }

  v77 = v121;
  v78 = sub_10000A61C(v121, qword_10099F690);
  v79 = v120;
  v80 = *(v120 + 16);
  v81 = v119;
  v80(v119, v78, v77);
  v82 = *&v76[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView];
  v83 = v117;
  v80(v117, v81, v77);
  v84 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v79 + 24))(&v82[v84], v83, v77);
  swift_endAccess();
  [v82 setNeedsLayout];
  v85 = *(v79 + 8);
  v85(v83, v77);
  [v76 setNeedsLayout];

  v85(v81, v77);
  [*(v48 + v74) setLayoutMargins:{0.0, 14.0, 3.0, 14.0}];
  [*(v48 + v74) setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v86 = qword_100940B00;
  v87 = *(*(*(v48 + v74) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel);
  v88 = v74;
  if (v86 != -1)
  {
    swift_once();
  }

  v89 = v118;
  v90 = sub_10000A61C(v118, qword_1009A0F10);
  v91 = v132;
  v92 = v123;
  v123(v132, v90, v89);
  v93 = v122;
  v122(v91, 0, 1, v89);
  sub_1007625DC();

  v94 = qword_100940B08;
  v95 = *(*(*(v48 + v88) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  if (v94 != -1)
  {
    swift_once();
  }

  v96 = sub_10000A61C(v89, qword_1009A0F28);
  v92(v91, v96, v89);
  v93(v91, 0, 1, v89);
  sub_1007625DC();

  v97 = qword_100940B10;
  v98 = *(*(*(v48 + v88) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel);
  if (v97 != -1)
  {
    swift_once();
  }

  v99 = sub_10000A61C(v89, qword_1009A0F40);
  v92(v91, v99, v89);
  v93(v91, 0, 1, v89);
  sub_1007625DC();

  v100 = qword_100940AC0;
  v101 = *(*(v48 + v88) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkTitleLabel);
  if (v100 != -1)
  {
    swift_once();
  }

  v102 = sub_10000A61C(v89, qword_1009A0E50);
  v92(v91, v102, v89);
  v93(v91, 0, 1, v89);
  sub_1007625DC();

  v103 = qword_100940AC8;
  v104 = *(*(v48 + v88) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkSubtitleLabel);
  if (v103 != -1)
  {
    swift_once();
  }

  v105 = sub_10000A61C(v89, qword_1009A0E68);
  v92(v91, v105, v89);
  v93(v91, 0, 1, v89);
  sub_1007625DC();

  swift_unknownObjectWeakAssign();
  v106 = *&v131[v48];
  v107 = *(v48 + v88);
  v108 = v48;
  [v106 addSubview:v107];
  v109 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_tapGestureRecognizer;
  [*&v108[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_tapGestureRecognizer] setDelegate:v108];
  v110 = *&v108[v109];
  [v110 addTarget:v108 action:"handleTapWithGestureRecognizer:"];

  [*(v48 + v88) addGestureRecognizer:*&v108[v109]];
  [*(v48 + v88) setUserInteractionEnabled:1];
  sub_10000A5D4(&unk_100945BF0);
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_100783DD0;
  *(v111 + 32) = sub_10076E3FC();
  *(v111 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v108;
}

void sub_1003C7FB8()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = sub_10077088C();
  if (v1)
  {
    v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_gradientBlurView];
    v4 = (v3 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientStartY);
    *(v3 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientStartY) = 0x3FE0000000000000;
    v5 = 0.5;
  }

  else
  {
    v6 = [v0 traitCollection];
    v7 = [v6 preferredContentSizeCategory];

    LOBYTE(v6) = sub_10077086C();
    v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_gradientBlurView];
    v4 = (v3 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientStartY);
    if (v6)
    {
      *v4 = 0.45;
      v5 = 0.45;
    }

    else
    {
      *v4 = 0.4;
      v5 = 0.4;
    }
  }

  v8 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientView;
  v9 = [*(v3 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientView) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() startPoint];
  v11 = v10;

  v12 = *v4;
  v13 = [*(v3 + v8) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v11, v12}];

  v14 = [*(v3 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v11, v12}];

  v15 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientStartY;
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientStartY) = v5;
  v16 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientMaskView;
  v17 = [*(v3 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientMaskView) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() startPoint];
  v19 = v18;

  v20 = *(v3 + v15);
  v21 = [*(v3 + v16) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v19, v20}];
}

id sub_1003C833C()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_tapGestureRecognizer] removeTarget:v0 action:0];
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer];
  if (v2)
  {
    [v2 removeTarget:v0 action:0];
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for EditorialCardCollectionViewCell()
{
  result = qword_100955BC0;
  if (!qword_100955BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1003C8578(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    v15 = a1;
    v16 = sub_10077158C();
    a1 = v15;
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v3 = a1;
    v4 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView;
    v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView];
    if (!v5)
    {
      v8 = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v9 = *&v2[v4];
      if (v9)
      {
        [v9 removeFromSuperview];
        v10 = *&v2[v4];
      }

      else
      {
        v10 = 0;
      }

      *&v2[v4] = v8;
      v11 = v8;

      if (v11)
      {
        v12 = v11[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style];
        v11[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style] = 2;
        sub_1004B413C(v12);
        v13 = [v2 contentView];
        [v13 addSubview:v11];
      }

      [v2 setNeedsLayout];

      v14 = *&v2[v4];
      if (!v14)
      {
        goto LABEL_13;
      }

      *(v14 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_delegate + 8) = &off_100893CF8;
      swift_unknownObjectWeakAssign();
      v5 = *&v2[v4];
      if (!v5)
      {
        goto LABEL_13;
      }
    }

    [v5 setHidden:0];
    v6 = *&v2[v4];
    if (v6)
    {
      v7 = v6;
      sub_1004B1900(v3);
    }

    else
    {
LABEL_13:
    }

    [*&v2[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_captionLabel] setHidden:1];
    sub_1003C8800([objc_allocWithZone(UILongPressGestureRecognizer) init]);
    goto LABEL_22;
  }

  v17 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView];
  if (v17)
  {
    [v17 setHidden:1];
  }

  [*&v2[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_captionLabel] setHidden:0];
  v18 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer;
  if (*&v2[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer])
  {
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardContainerView] removeGestureRecognizer:?];
    v19 = *&v2[v18];
  }

  else
  {
    v19 = 0;
  }

  *&v2[v18] = 0;

LABEL_22:

  return [v2 setNeedsLayout];
}

void sub_1003C8800(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer;
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer])
  {
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardContainerView] removeGestureRecognizer:?];
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
    [v6 addTarget:v1 action:"stateChangedFor:"];
    [v6 setMinimumPressDuration:0.1];
    [v6 setDelegate:v1];

    v7 = [v1 contentView];
    [v7 addGestureRecognizer:v6];
  }
}

uint64_t sub_1003C8924()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v77 = sub_10076443C();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v75 = &v73 - v5;
  v81 = sub_100763ADC();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v86 = &v73 - v9;
  v78 = sub_10076D1FC();
  v10 = *(v78 - 8);
  __chkstk_darwin(v78);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1007640EC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_10076410C();
  v82 = *(v83 - 8);
  *&v17 = __chkstk_darwin(v83).n128_u64[0];
  v87 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100.receiver = v1;
  v100.super_class = ObjectType;
  v84 = ObjectType;
  objc_msgSendSuper2(&v100, "layoutSubviews", v17);
  v19 = [v1 contentView];
  v20 = sub_100016F40(0, &qword_1009441F0);
  sub_10076422C();

  v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView];
  v79 = v7;
  if (v21)
  {
    v22 = v21;
    if (![v22 isHidden])
    {
      goto LABEL_5;
    }
  }

  v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_captionLabel];
LABEL_5:
  v23 = qword_100940330;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = sub_10000A61C(v13, qword_10099F660);
  (*(v14 + 16))(v16, v25, v13);
  v26 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardContainerView];
  v98 = v20;
  v99 = &protocol witness table for UIView;
  v96 = &protocol witness table for UIView;
  v97 = v26;
  v95 = v20;
  v85 = v24;
  v94 = v24;
  v27 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_titleLabel];
  v92 = sub_1007626BC();
  v93 = &protocol witness table for UILabel;
  v91 = v27;
  v28 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_subtitleLabel];
  v90 = &protocol witness table for UILabel;
  v89 = v92;
  v88 = v28;
  v29 = v26;
  v30 = v27;
  v31 = v28;
  sub_1007640FC();
  sub_1007640AC();
  (*(v10 + 8))(v12, v78);
  v32 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardView];
  v33 = [v32 superview];
  if (v33)
  {
    v34 = v33;
    v35 = sub_100770EEC();

    v36 = v80;
    v37 = v79;
    if (v35)
    {
      [v29 bounds];
      [v32 setBounds:{0.0, 0.0}];
      [v29 bounds];
      v39 = v38 * 0.5;
      [v29 bounds];
      [v32 setCenter:{v39, v40 * 0.5}];
    }
  }

  else
  {

    v36 = v80;
    v37 = v79;
  }

  [v29 bounds];
  v42 = v41;
  v44 = v43;
  sub_10075FC8C();
  v45 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupView];
  v46 = v86;
  sub_100353408(v86);
  [v45 layoutMargins];
  v48 = v47;
  v50 = v49;
  v51 = [v45 traitCollection];
  v52 = v81;
  (*(v36 + 16))(v37, v46, v81);
  v53 = sub_100763A4C();
  v55 = v85;
  if ((v56 & 1) == 0 && ((v53 | v54) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_10077071C())
    {
      if (qword_10093F520 != -1)
      {
        swift_once();
      }

      v57 = qword_100944C88;
    }

    else
    {
      if (qword_10093F528 != -1)
      {
        swift_once();
      }

      v57 = qword_100944CA0;
    }

    v58 = v77;
    v59 = sub_10000A61C(v77, v57);
    v60 = v76;
    v61 = v74;
    (*(v76 + 16))(v74, v59, v58);
    v62 = v75;
    (*(v60 + 32))(v75, v61, v58);
    sub_1007643EC();
    sub_10076441C();
    sub_100763A5C();
    (*(v60 + 8))(v62, v58);
    v46 = v86;
    v55 = v85;
  }

  sub_10076398C();
  v64 = v63;
  v66 = v65;

  v67 = *(v36 + 8);
  v67(v37, v52);
  v68 = v50 + v48 + v66;
  v67(v46, v52);
  v101.origin.x = 0.0;
  v101.origin.y = 0.0;
  v101.size.width = v42;
  v101.size.height = v44;
  MinX = CGRectGetMinX(v101);
  v102.origin.x = 0.0;
  v102.origin.y = 0.0;
  v102.size.width = v42;
  v102.size.height = v44;
  [v45 setFrame:{MinX, CGRectGetMaxY(v102) - v68, v64, v68}];
  [v45 setNeedsLayout];
  v70 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_gradientBlurView];
  v103.origin.x = 0.0;
  v103.origin.y = 0.0;
  v103.size.width = v42;
  v103.size.height = v44;
  Width = CGRectGetWidth(v103);
  v104.origin.x = 0.0;
  v104.origin.y = 0.0;
  v104.size.width = v42;
  v104.size.height = v44;
  [v70 setFrame:{0.0, 0.0, Width, CGRectGetHeight(v104)}];
  sub_1003CB0E0(&qword_100955BD8, type metadata accessor for EditorialCardCollectionViewCell);
  sub_1007676CC();

  return (*(v82 + 8))(v87, v83);
}

void sub_1003C92F0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v5 - 8);
  v7 = &v54 - v6;
  v8 = sub_10000A5D4(&qword_100952650);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - v9;
  v11 = sub_10000A5D4(&qword_100955BD0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v15 = &v54 - v14;
  v16 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer);
  if (!v16)
  {
    return;
  }

  v56 = v13;
  sub_100016F40(0, &qword_10094D040);
  v57 = v16;
  if ((sub_100770EEC() & 1) == 0)
  {
    goto LABEL_16;
  }

  v54 = ObjectType;
  v55 = v12;
  v17 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardContainerView);
  v18 = [v17 superview];
  v19 = [v1 contentView];
  v20 = v19;
  if (v18)
  {
    if (!v19)
    {

      goto LABEL_16;
    }

    sub_100016F40(0, &qword_1009441F0);
    v21 = sub_100770EEC();

    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v19)
  {

    goto LABEL_16;
  }

  v22 = [a1 state];
  if (v22 > 3)
  {
    if ((v22 - 4) >= 2)
    {
      goto LABEL_16;
    }

    v56 = [v17 superview];
    v26 = [v2 contentView];
    if (v56)
    {
      if (!v26)
      {
LABEL_33:

        v25 = v56;
        goto LABEL_17;
      }

      v55 = v26;
      sub_100016F40(0, &qword_1009441F0);
      v27 = sub_100770EEC();

      if ((v27 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (v26)
    {
      goto LABEL_39;
    }

    v37 = objc_opt_self();
    v38 = swift_allocObject();
    *(v38 + 16) = v2;
    *(v38 + 24) = 0x3FF0000000000000;
    v62 = sub_1003CB050;
    v63 = v38;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_10009AEDC;
    v61 = &unk_100893D40;
    v39 = _Block_copy(&aBlock);
    v40 = v2;

    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    *(v41 + 24) = v40;
    v62 = sub_1003CB074;
    v63 = v41;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v42 = &unk_100893D90;
LABEL_41:
    v60 = sub_1000513F0;
    v61 = v42;
    v50 = _Block_copy(&aBlock);
    v51 = v40;

    [v37 _animateUsingDefaultDampedSpringWithDelay:135 initialSpringVelocity:v39 options:v50 animations:0.0 completion:1.0];
    _Block_release(v50);
    _Block_release(v39);

    return;
  }

  if (v22 != 1)
  {
    if (v22 == 2)
    {
      [a1 locationInView:v17];
      v34 = v32;
      v35 = v33;
      v36 = (v2 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_initialLongPressLocation);
      if (v36[2])
      {

        *v36 = v34;
        v36[1] = v35;
        *(v36 + 16) = 0;
        return;
      }

      v43 = sqrt((v33 - v36[1]) * (v33 - v36[1]) + (v32 - *v36) * (v32 - *v36));
      [v57 allowableMovement];
      if (v44 < v43)
      {
        [a1 setEnabled:0];
      }
    }

    else if (v22 == 3)
    {
      v23 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_clickAction;
      swift_beginAccess();
      sub_1003A683C(v2 + v23, v10);
      v24 = v55;
      if ((*(v55 + 6))(v10, 1, v56) == 1)
      {

        sub_10000CFBC(v10, &qword_100952650);
      }

      else
      {
        v24[4](v15, v10, v56);
        sub_100761FEC();
        v61 = v54;
        aBlock = v2;
        v45 = v2;
        sub_10076B88C();

        sub_100761FDC();
        v46 = sub_10000A5D4(&unk_1009428E0);
        sub_10076F5AC();

        v47 = *(v46 - 8);
        if ((*(v47 + 48))(v7, 1, v46) == 1)
        {
          (v24[1])(v15, v56);

          sub_10000CFBC(v7, &unk_100943200);
        }

        else
        {
          v52 = v56;
          sub_100761FEC();
          v53 = sub_100761FDC();
          sub_100263BF0(aBlock, 1, v53, v7);

          (v24[1])(v15, v52);

          (*(v47 + 8))(v7, v46);
        }
      }

      return;
    }

    goto LABEL_16;
  }

  [a1 locationInView:v17];
  v28 = v2 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_initialLongPressLocation;
  *v28 = v29;
  *(v28 + 1) = v30;
  v28[16] = 0;
  v56 = [v17 superview];
  v26 = [v2 contentView];
  if (!v56)
  {
    if (!v26)
    {
LABEL_40:
      v37 = objc_opt_self();
      v48 = swift_allocObject();
      *(v48 + 16) = v2;
      *(v48 + 24) = 0x3FEEB851EB851EB8;
      v62 = sub_1003CB2AC;
      v63 = v48;
      aBlock = _NSConcreteStackBlock;
      v59 = 1107296256;
      v60 = sub_10009AEDC;
      v61 = &unk_100893DE0;
      v39 = _Block_copy(&aBlock);
      v40 = v2;

      v49 = swift_allocObject();
      *(v49 + 16) = 1;
      *(v49 + 24) = v40;
      v62 = sub_1003CB2BC;
      v63 = v49;
      aBlock = _NSConcreteStackBlock;
      v59 = 1107296256;
      v42 = &unk_100893E30;
      goto LABEL_41;
    }

LABEL_39:
    v55 = v26;

    v25 = v55;
    goto LABEL_17;
  }

  if (!v26)
  {
    goto LABEL_33;
  }

  v55 = v26;
  sub_100016F40(0, &qword_1009441F0);
  v31 = sub_100770EEC();

  if (v31)
  {
    goto LABEL_40;
  }

LABEL_16:
  v25 = v57;
LABEL_17:
}

id sub_1003C9CA4(uint64_t a1, CGFloat a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardView);
  CGAffineTransformMakeScale(&v4, a2, a2);
  return [v2 setTransform:&v4];
}

void sub_1003C9D4C(void *a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "traitCollectionDidChange:", a1);
  sub_1003C7FB8();
  if (a1)
  {
    v3 = [a1 userInterfaceStyle];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (!a1 || v3 != v5)
  {
    sub_1003C9E04();
  }
}

void sub_1003C9E04()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupView);
  v2 = [v1 traitCollection];
  [v2 userInterfaceStyle];

  sub_10076FF9C();
  v3 = sub_10076FF6C();

  v4 = [*&v1[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkTitleLabel] layer];
  [v4 setCompositingFilter:v3];

  v5 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView;
  v6 = [*(*&v1[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel) layer];
  [v6 setCompositingFilter:v3];

  v7 = [*(*(*&v1[v5] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton) + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_subtitleLabel) layer];
  [v7 setCompositingFilter:v3];

  v8 = [*(*&v1[v5] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel) layer];
  [v8 setCompositingFilter:v3];
}

BOOL sub_1003CA064(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&qword_100952650);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v37 - v8;
  v10 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer];
  if (v10)
  {
    sub_100016F40(0, &unk_10094F000);
    v11 = a1;
    v12 = v10;
    v13 = sub_100770EEC();

    if (v13)
    {
      v14 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupView];
      [a2 locationInView:v14];
      v16 = v15;
      v18 = v17;
      [v14 bounds];
      v38.x = v16;
      v38.y = v18;
      if (CGRectContainsPoint(v41, v38))
      {
        return 0;
      }

      [a2 locationInView:v3];
      v20 = v19;
      v22 = v21;
      v23 = [v3 hitTest:0 withEvent:?];
      [v3 bounds];
      v39.x = v20;
      v39.y = v22;
      if (CGRectContainsPoint(v42, v39))
      {
        if (!v23 || (objc_opt_self(), v24 = swift_dynamicCastObjCClass(), v23, !v24))
        {
          v25 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_clickAction;
          swift_beginAccess();
          sub_1003A683C(&v3[v25], v9);
          v26 = sub_10000A5D4(&qword_100955BD0);
          v27 = (*(*(v26 - 8) + 48))(v9, 1, v26) != 1;
          sub_10000CFBC(v9, &qword_100952650);
          return v27;
        }

        return 0;
      }

LABEL_12:

      return 0;
    }
  }

  [a2 locationInView:{v3, v7}];
  v30 = v29;
  v32 = v31;
  v23 = [v3 hitTest:0 withEvent:?];
  [v3 bounds];
  v40.x = v30;
  v40.y = v32;
  if (!CGRectContainsPoint(v43, v40))
  {
    goto LABEL_12;
  }

  if (v23)
  {
    sub_100016F40(0, &qword_1009441F0);
    v33 = v23;
    v34 = v3;
    v35 = sub_100770EEC();

    if (v35)
    {

      return 0;
    }

    objc_opt_self();
    v36 = swift_dynamicCastObjCClass();

    if (v36)
    {
      return 0;
    }
  }

  return *&v3[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction] != 0;
}

void sub_1003CA4F4()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    sub_1001D92E0();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1003CA600()
{
  sub_10075FB6C();
  sub_10075FD2C();
  sub_1003CB0E0(&qword_100941820, &type metadata accessor for ArtworkView);
  sub_100760BFC();
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupView);
  v2 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView;
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView);
  sub_10075FB6C();

  v4 = *(v1 + v2);
  sub_100760BFC();
}

void sub_1003CA71C()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView);
  if (v1)
  {
    v2 = v1;
    sub_1004B1A0C();
  }
}

double sub_1003CA7E4()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardContainerView;
  [*(v1 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardContainerView) bounds];
  v4 = v3 * 0.5;
  [*(v1 + v2) bounds];
  return v4;
}

uint64_t sub_1003CA848(uint64_t a1, uint64_t a2)
{
  v4 = sub_100763ADC();
  v57 = *(v4 - 8);
  v58 = v4;
  __chkstk_darwin(v4);
  v56 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076BF6C();
  __chkstk_darwin(v6 - 8);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076D39C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076BEDC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v52 - v18;
  sub_10000A570(a1, v61);
  sub_10000A5D4(&unk_100942830);
  sub_100760D5C();
  result = swift_dynamicCast();
  if (result)
  {
    v52[1] = v8;
    v53 = v14;
    v21 = v60;
    v22 = sub_100760D2C();
    v54 = v21;
    v55 = a2;
    if (v22)
    {
      sub_10076BEEC();
      sub_10076BE8C();
      sub_1003CB0E0(&qword_1009441E0, &type metadata accessor for Artwork.Crop);
      v23 = sub_10076FF1C();
      v24 = *(v53 + 8);
      v24(v16, v13);
      if (v23)
      {
        v52[0] = 5;
      }

      else
      {
        v52[0] = sub_10076BE9C();
      }

      v24(v19, v13);
      v25 = v59;
      v26 = [v59 contentView];
      sub_100016F40(0, &qword_1009441F0);
      sub_10076422C();
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;

      if (qword_100940330 != -1)
      {
        swift_once();
      }

      v35 = sub_1007640EC();
      sub_10000A61C(v35, qword_10099F660);
      sub_1007640DC();
      v62.origin.x = v28;
      v62.origin.y = v30;
      v62.size.width = v32;
      v62.size.height = v34;
      CGRectGetWidth(v62);
      v63.origin.x = v28;
      v63.origin.y = v30;
      v63.size.width = v32;
      v63.size.height = v34;
      CGRectGetWidth(v63);
      sub_10076D36C();
      (*(v10 + 8))(v12, v9);
      v36 = v52[0];
      sub_10076BFCC();
      v37 = *&v25[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_artworkView];
      sub_10076BF7C();
      sub_10075FCCC();
      [v37 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10);
        sub_100770D5C();
      }

      sub_10075FB8C();
      [v37 setContentMode:v36];
      sub_10075FD2C();
      sub_1003CB0E0(&qword_100941820, &type metadata accessor for ArtworkView);
      sub_100760B8C();
    }

    if (sub_100760D1C())
    {
      v38 = sub_10076BB9C();

      if (v38)
      {
        v39 = *&v59[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupView];
        v40 = *(v39 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView);
        v41 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
        swift_beginAccess();
        v42 = v57;
        v43 = v40 + v41;
        v44 = v56;
        v45 = v58;
        (*(v57 + 16))(v56, v43, v58);
        sub_1007639AC();
        (*(v42 + 8))(v44, v45);
        sub_10076BEEC();
        sub_10076BE9C();
        v59 = *(v53 + 8);
        (v59)(v16, v13);
        sub_10076BFCC();
        v46 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView;
        v47 = *(v39 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView);
        sub_10076BF7C();
        sub_10075FCCC();
        [v47 setContentMode:sub_10076BDBC()];
        sub_100764ADC();
        sub_10075FD0C();
        if (!sub_10076BE1C())
        {
          sub_100016F40(0, &qword_100942F10);
          sub_100770D5C();
        }

        sub_10075FB8C();

        v48 = *(v39 + v46);
        sub_10076BEEC();
        v49 = sub_10076BE9C();
        (v59)(v16, v13);
        [v48 setContentMode:v49];

        v50 = *(v39 + v46);
        sub_10075FD2C();
        sub_1003CB0E0(&qword_100941820, &type metadata accessor for ArtworkView);
        v51 = v50;
        sub_100760B8C();
      }
    }
  }

  return result;
}

uint64_t sub_1003CB018()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003CB05C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003CB078()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1003CB0B0()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    v1 = *(*(v0 + 24) + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer);
    if (v1)
    {
      [v1 setEnabled:1];
    }
  }
}

uint64_t sub_1003CB0E0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1003CB128()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_itemLayoutContext;
  v2 = sub_10076341C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_avatarShowcase) = 0;
  v3 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_tapGestureRecognizer;
  *(v0 + v3) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v4 = (v0 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer) = 0;
  v5 = v0 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_initialLongPressLocation;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  v6 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_clickAction;
  v7 = sub_10000A5D4(&qword_100955BD0);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1003CB30C()
{
  v0 = sub_10077164C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076C38C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E6BC();
  sub_1003CB5CC(&qword_100942D10, &type metadata accessor for InAppPurchaseShowcase);
  result = sub_10076332C();
  v9 = v13;
  if (v13)
  {
    v10 = sub_100630CB4();
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C2FC();
    (*(v5 + 8))(v7, v4);
    type metadata accessor for InAppPurchaseShowcaseLockupView();
    sub_100449358(v9, v10);
    if (qword_10093F450 != -1)
    {
      swift_once();
    }

    v11 = sub_10076D9AC();
    sub_10000A61C(v11, qword_1009424A0);
    sub_10076D17C();
    sub_10076D40C();
    swift_unknownObjectRelease();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_1003CB5CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003CB618(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100942900);
  __chkstk_darwin(v2 - 8);
  v4 = &v45 - v3;
  v58 = sub_10076C2DC();
  v62 = *(v58 - 8);
  __chkstk_darwin(v58);
  v6 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10000A5D4(&qword_100942908);
  __chkstk_darwin(v7 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v45 - v11;
  __chkstk_darwin(v13);
  v15 = &v45 - v14;
  __chkstk_darwin(v16);
  v61 = &v45 - v17;
  sub_10000A5D4(&qword_100942910);
  v18 = *(sub_10076C20C() - 8);
  v59 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v51 = v20;
  *(v20 + 16) = xmmword_1007844F0;
  v21 = v20 + v19;
  v22 = a1;
  v63 = a1;
  sub_10001E290();
  sub_10076C29C();
  v63 = 15.0;
  sub_10076C29C();
  v63 = 0.0;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #16.0 }

  *v6 = _Q0;
  v56 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v28 = *(v62 + 104);
  v62 += 104;
  v57 = v28;
  v29 = v58;
  (v28)(v6);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  LOBYTE(v63) = 0;
  sub_10076C29C();
  v63 = 0.0;
  sub_10076C29C();
  v60 = v15;
  v54 = v12;
  sub_10076C1CC();
  v63 = a1;
  sub_10076C29C();
  v63 = 15.0;
  sub_10076C29C();
  v63 = 0.0;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #20.0 }

  *v6 = _Q0;
  v33 = v56;
  v57(v6, v56, v29);
  LOBYTE(v63) = 0;
  v52 = v4;
  sub_10076C29C();
  v63 = 0.0;
  v55 = v9;
  sub_10076C29C();
  v34 = v59;
  v53 = v21;
  top = UIEdgeInsetsZero.top;
  v49 = left;
  v50 = bottom;
  sub_10076C1CC();
  v46 = 2 * v34;
  v63 = v22;
  sub_10076C29C();
  v63 = 20.0;
  sub_10076C29C();
  v63 = 0.0;
  sub_10076C29C();
  v47 = vdupq_n_s64(0x4041000000000000uLL);
  v35 = v6;
  *v6 = v47;
  v36 = v33;
  v37 = v33;
  v38 = v57;
  v39 = v58;
  v57(v6, v37, v58);
  LOBYTE(v63) = 0;
  sub_10076C29C();
  v63 = 0.0;
  sub_10076C29C();
  v40 = v46;
  v41 = v35;
  sub_10076C1CC();
  v42 = v59;
  v46 = v40 + v59;
  v63 = v22;
  sub_10076C29C();
  v63 = 20.0;
  sub_10076C29C();
  v63 = 0.0;
  sub_10076C29C();
  *v41 = v47;
  v38(v41, v36, v39);
  sub_1007704BC();
  LOBYTE(v63) = 0;
  sub_10076C29C();
  v63 = 0.0;
  sub_10076C29C();
  sub_10076C1CC();
  v46 = 4 * v42;
  v63 = v22;
  sub_10076C29C();
  v63 = 24.0;
  sub_10076C29C();
  v63 = 0.0;
  sub_10076C29C();
  v47 = vdupq_n_s64(0x404A000000000000uLL);
  *v41 = v47;
  v43 = v58;
  v38(v41, v56, v58);
  LOBYTE(v63) = 0;
  sub_10076C29C();
  v63 = 0.0;
  sub_10076C29C();
  sub_10076C1CC();
  v63 = v22;
  sub_10076C29C();
  v63 = 24.0;
  sub_10076C29C();
  v63 = 0.0;
  sub_10076C29C();
  *v41 = v47;
  v57(v41, v56, v43);
  LOBYTE(v63) = 0;
  sub_10076C29C();
  v63 = 0.0;
  sub_10076C29C();
  sub_10076C1CC();
  return v51;
}

uint64_t sub_1003CBFEC@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v76 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v76);
  v2 = &v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100763BBC();
  v71 = *(v3 - 8);
  v72 = v3;
  __chkstk_darwin(v3);
  v70 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&qword_100949710);
  __chkstk_darwin(v5 - 8);
  v77 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v75 = &v58 - v8;
  v9 = sub_10000A5D4(&qword_100949718);
  __chkstk_darwin(v9 - 8);
  v68 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v64 = &v58 - v12;
  v13 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v61 = *(v13 - 8);
  v62 = v13;
  __chkstk_darwin(v13);
  v65 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v63 = &v58 - v16;
  __chkstk_darwin(v17);
  v74 = (&v58 - v18);
  v19 = sub_10000A5D4(&unk_10094BB80);
  __chkstk_darwin(v19 - 8);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v73 = &v58 - v23;
  v24 = sub_10076B5BC();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10000A5D4(&unk_100946720);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v58 - v30;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v29 + 8))(v31, v28);
  v66 = v27;
  v67 = v25;
  v32 = *(v25 + 88);
  v69 = v24;
  v33 = v32(v27, v24);
  if (v33 == enum case for Shelf.ContentType.paragraph(_:) || v33 == enum case for Shelf.ContentType.titledParagraph(_:))
  {
    if (qword_100940898 != -1)
    {
      swift_once();
    }

    v39 = sub_10000A61C(v76, qword_1009A0848);
    return sub_100199C28(v39, v78, type metadata accessor for TitleHeaderView.Style);
  }

  else
  {
    v34 = sub_10076034C();
    v35 = *(v34 - 8);
    v36 = v73;
    (*(v35 + 56))(v73, 1, 1, v34);
    v37 = sub_100763BAC();
    v58 = *(v37 - 8);
    v59 = v37;
    (*(v58 + 56))(v75, 1, 1);
    sub_100016E2C(v36, v21, &unk_10094BB80);
    if ((*(v35 + 48))(v21, 1, v34) == 1)
    {
      sub_10000CFBC(v21, &unk_10094BB80);
      v38 = 0;
    }

    else
    {
      v38 = sub_1007602EC();
      (*(v35 + 8))(v21, v34);
    }

    v41 = v74;
    v60 = v2;
    sub_100286F40(v38, v74);

    if (qword_10093FC50 != -1)
    {
      swift_once();
    }

    v42 = v62;
    v43 = sub_10000A61C(v62, qword_10099DFA0);
    v44 = v64;
    (*(v61 + 56))(v64, 1, 1, v42);
    v45 = v63;
    sub_100199C28(v41, v63, type metadata accessor for TitleHeaderView.TextConfiguration);
    v46 = v65;
    sub_100199C28(v43, v65, type metadata accessor for TitleHeaderView.TextConfiguration);
    v47 = v68;
    sub_100016E2C(v44, v68, &qword_100949718);
    v48 = v75;
    sub_100016E2C(v75, v77, &qword_100949710);
    v49 = v70;
    v50 = v71;
    v51 = v72;
    (*(v71 + 104))(v70, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v72);
    sub_1000325F0();
    v62 = sub_100770CDC();
    sub_10000CFBC(v48, &qword_100949710);
    sub_10000CFBC(v44, &qword_100949718);
    sub_10011BAB4(v74);
    sub_10000CFBC(v73, &unk_10094BB80);
    v52 = v76;
    v53 = v76[8];
    v54 = v60;
    sub_10011BB10(v45, v60, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10011BB10(v46, v54 + v52[5], type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10013B0E8(v47, v54 + v52[6]);
    *(v54 + v52[7]) = 0;
    *(v54 + v53) = 0;
    *(v54 + v52[9]) = 0;
    *(v54 + v52[14]) = 0x4030000000000000;
    *(v54 + v52[12]) = 0;
    *(v54 + v52[13]) = v62;
    v55 = v77;
    (*(v50 + 32))(v54 + v52[11], v49, v51);
    v57 = v58;
    v56 = v59;
    if ((*(v58 + 48))(v55, 1, v59) == 1)
    {
      sub_10000CFBC(v55, &qword_100949710);
      (*(v57 + 104))(v54 + v52[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v56);
    }

    else
    {
      (*(v57 + 32))(v54 + v52[10], v55, v56);
    }

    sub_10011BB10(v54, v78, type metadata accessor for TitleHeaderView.Style);
    return (*(v67 + 8))(v66, v69);
  }
}

char *sub_1003CC978(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_100766FCC();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10076702C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100766F4C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_headerView;
  type metadata accessor for CarouselItemModuleHeaderView();
  *&v4[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_platterView;
  type metadata accessor for CarouselItemModulePlatterView();
  *&v4[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_tapGestureRecognizer;
  *&v4[v20] = [objc_allocWithZone(UITapGestureRecognizer) init];
  (*(v15 + 104))(v17, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v14);
  (*(v11 + 104))(v13, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v10);
  sub_100766FBC();
  sub_100766F5C();
  v21 = &v4[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_selectionHandler];
  *v21 = 0;
  *(v21 + 1) = 0;
  v33.receiver = v4;
  v33.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v26 = v22;
  [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v26 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v27 = [v26 layer];
  [v27 setAllowsGroupOpacity:0];

  v28 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_tapGestureRecognizer;
  [*&v26[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_tapGestureRecognizer] setEnabled:0];
  [*&v26[v28] addTarget:v26 action:"handleSelection:"];
  v29 = *&v26[v28];
  [v29 setDelegate:v26];

  [v26 addGestureRecognizer:*&v26[v28]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_headerView]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_platterView]];

  return v26;
}

uint64_t sub_1003CCDB0@<X0>(uint64_t *a1@<X8>)
{
  v22 = a1;
  v2 = sub_10076D65C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v9 = sub_10076D58C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076D55C();
  *(swift_allocObject() + 16) = v1;
  v13 = v1;
  sub_10076D63C();
  v14 = *&v13[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_headerView];
  v25 = type metadata accessor for CarouselItemModuleHeaderView();
  v26 = sub_1003CDBF8(&qword_100955DD0, type metadata accessor for CarouselItemModuleHeaderView);
  v24[0] = v14;
  v15 = v14;
  sub_10076D64C();
  v16 = *(v3 + 8);
  v16(v5, v2);
  sub_10000CD74(v24);
  v17 = *&v13[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_platterView];
  v23[3] = type metadata accessor for CarouselItemModulePlatterView();
  v23[4] = sub_1003CDBF8(&qword_100955DD8, type metadata accessor for CarouselItemModulePlatterView);
  v23[0] = v17;
  v25 = v2;
  v26 = &protocol witness table for VerticalStack;
  sub_10000DB7C(v24);
  v18 = v17;
  sub_10076D64C();
  v16(v8, v2);
  sub_10000CD74(v23);
  v19 = v22;
  v22[3] = v9;
  v19[4] = &protocol witness table for DisjointStack;
  sub_10000DB7C(v19);
  sub_10076D57C();
  (*(v10 + 8))(v12, v9);
  return sub_10000CD74(v24);
}

uint64_t sub_1003CD1E8()
{
  v0 = sub_10076D54C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3[3] = sub_10076D67C();
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v3);
  sub_10076D66C();
  (*(v1 + 104))(v3, enum case for DisjointStack.EdgePosition.anchored(_:), v0);
  return sub_10076D4FC();
}

uint64_t sub_1003CD2DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076702C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076703C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_displayOptions;
  swift_beginAccess();
  (*(v8 + 16))(v10, a2 + v11, v7);
  sub_100766FEC();
  (*(v8 + 8))(v10, v7);
  sub_10076700C();
  (*(v4 + 8))(v6, v3);
  return sub_10076D5EC();
}

uint64_t type metadata accessor for CarouselItemCollectionModuleOverlay()
{
  result = qword_100955DB8;
  if (!qword_100955DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003CD6B8()
{
  result = sub_10076703C();
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

uint64_t sub_1003CD764(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_selectionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_selectionHandler);
  *v4 = a1;
  v4[1] = a2;
  sub_10001CE50(a1);
  sub_10001CE50(a1);
  sub_1000167E0(v5);
  v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_tapGestureRecognizer);
  if (a1)
  {
    sub_1000167E0(a1);
  }

  [v6 setEnabled:a1 != 0];

  return sub_1000167E0(a1);
}

uint64_t sub_1003CD818(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076705C();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_1005A28C4(v4, a2);
}

id sub_1003CD898()
{
  v1 = v0;
  v2 = sub_10076703C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076704C();
  v6 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_displayOptions;
  swift_beginAccess();
  (*(v3 + 40))(&v1[v6], v5, v2);
  swift_endAccess();
  sub_10023FB60();
  sub_10076704C();
  v7 = sub_1007670AC();
  v9 = v8;
  v10 = sub_10076706C();
  sub_100588A20(v5, v7, v9, v10, v11);

  (*(v3 + 8))(v5, v2);
  return [v1 setNeedsLayout];
}

uint64_t sub_1003CDA40()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_platterView) + OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_lockupCollectionView);
  v2 = OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_artworkViews;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_10077149C();
      }

      else
      {
        if (j >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_10075FD2C();
      sub_1003CDBF8(&qword_100941820, &type metadata accessor for ArtworkView);
      sub_100760BFC();

      if (v8 == i)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

uint64_t sub_1003CDBB8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003CDBF8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1003CDC40()
{
  v1 = sub_100766FCC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10076702C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100766F4C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_headerView;
  type metadata accessor for CarouselItemModuleHeaderView();
  *(v0 + v10) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_platterView;
  type metadata accessor for CarouselItemModulePlatterView();
  *(v0 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_tapGestureRecognizer;
  *(v0 + v12) = [objc_allocWithZone(UITapGestureRecognizer) init];
  (*(v7 + 104))(v9, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v6);
  (*(v3 + 104))(v5, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v2);
  sub_100766FBC();
  sub_100766F5C();
  v13 = (v0 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_selectionHandler);
  *v13 = 0;
  v13[1] = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1003CDED4()
{
  v0 = sub_10076D39C();
  sub_10000DB18(v0, qword_10099F728);
  sub_10000A61C(v0, qword_10099F728);
  return sub_10076D3AC();
}

uint64_t sub_1003CDF28()
{
  v0 = sub_10000A5D4(&qword_100955E28);
  __chkstk_darwin(v0 - 8);
  v20 = v19 - v1;
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076D39C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10075FD8C();
  sub_10000DB18(v10, qword_10099F740);
  v19[2] = sub_10000A61C(v10, qword_10099F740);
  if (qword_100940348 != -1)
  {
    swift_once();
  }

  v11 = sub_10000A61C(v6, qword_10099F728);
  (*(v7 + 16))(v9, v11, v6);
  v19[1] = v9;
  if (qword_100940FF0 != -1)
  {
    swift_once();
  }

  v12 = sub_10076D3DC();
  v19[0] = sub_10000A61C(v12, qword_1009A1DC8);
  v13 = *(*(v12 - 8) + 16);
  v13(v5, v19[0], v12);
  v14 = enum case for FontSource.useCase(_:);
  v15 = *(v3 + 104);
  v15(v5, enum case for FontSource.useCase(_:), v2);
  v22[3] = sub_10076D9AC();
  v22[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v22);
  v21[3] = v2;
  v21[4] = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(v21);
  (*(v3 + 16))(v16, v5, v2);
  sub_10076D9BC();
  (*(v3 + 8))(v5, v2);
  v17 = v20;
  v13(v20, v19[0], v12);
  v15(v17, v14, v2);
  (*(v3 + 56))(v17, 0, 1, v2);
  return sub_10075FD7C();
}

uint64_t sub_1003CE2CC()
{
  v0 = sub_10000A5D4(&qword_100955E28);
  __chkstk_darwin(v0 - 8);
  v2 = v11 - v1;
  v3 = sub_10076D39C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10075FD8C();
  sub_10000DB18(v7, qword_10099F758);
  sub_10000A61C(v7, qword_10099F758);
  if (qword_100940348 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v3, qword_10099F728);
  (*(v4 + 16))(v6, v8, v3);
  v9 = sub_10076D1AC();
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_10075FD7C();
}

char *sub_1003CE4B4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_itemLayoutContext;
  v12 = sub_10076341C();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_shortDescriptionLabel] = 0;
  v13 = &v5[OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_shortDescriptionLabelText];
  sub_10075FD2C();
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_artworkView] = sub_10075FB4C();
  v19.receiver = v5;
  v19.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v16 = [v14 contentView];
  [v16 addSubview:*&v14[OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_artworkView]];

  sub_10000A5D4(&unk_100945BF0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100783DD0;
  *(v17 + 32) = sub_10076E3FC();
  *(v17 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v14;
}

id sub_1003CE7AC()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v30 - v8;
  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_shortDescriptionLabelText + 8];
  if (v10)
  {
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_shortDescriptionLabelText] & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v12 = OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_shortDescriptionLabel;
      v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_shortDescriptionLabel];
      v14 = &off_100911000;
      if (v13)
      {
      }

      else
      {
        v17 = qword_100940FF0;

        if (v17 != -1)
        {
          swift_once();
        }

        v18 = sub_10076D3DC();
        v19 = sub_10000A61C(v18, qword_1009A1DC8);
        v20 = *(v18 - 8);
        (*(v20 + 16))(v9, v19, v18);
        (*(v20 + 56))(v9, 0, 1, v18);
        (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
        v21 = objc_allocWithZone(sub_1007626BC());
        v22 = sub_1007626AC();
        v23 = *&v1[v12];
        if (v23)
        {
          [v23 removeFromSuperview];
          v24 = *&v1[v12];
        }

        else
        {
          v24 = 0;
        }

        v14 = &off_100911000;
        *&v1[v12] = v22;
        v25 = v22;

        v26 = [v1 contentView];
        [v26 addSubview:v25];

        [v1 setNeedsLayout];
        v13 = *&v1[v12];
        if (!v13)
        {
          goto LABEL_20;
        }
      }

      [v13 setHidden:0];
      v27 = *&v1[v12];
      if (v27)
      {
        v28 = v27;
        v29 = sub_10076FF6C();

        [v28 setText:v29];

        return [v1 v14[194]];
      }

LABEL_20:

      return [v1 v14[194]];
    }
  }

  v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_shortDescriptionLabel];
  if (v15)
  {
    [v15 setHidden:{1, v7}];
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_1003CEB60()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10075FD8C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v33 = sub_10075FDAC();
  v13 = *(v33 - 8);
  *&v14 = __chkstk_darwin(v33).n128_u64[0];
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42.receiver = v1;
  v42.super_class = ObjectType;
  objc_msgSendSuper2(&v42, "layoutSubviews", v14);
  v17 = OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_shortDescriptionLabel;
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_shortDescriptionLabel];
  if (!v18)
  {
    goto LABEL_4;
  }

  v19 = v18;
  if ([v19 isHidden])
  {

LABEL_4:
    if (qword_100940358 != -1)
    {
      swift_once();
    }

    v20 = sub_10000A61C(v6, qword_10099F758);
    (*(v7 + 16))(v9, v20, v6);
    v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_artworkView];
    v40 = sub_10075FD2C();
    v41 = &protocol witness table for UIView;
    v39 = v21;
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    v22 = v21;
    sub_10075FD9C();
    goto LABEL_13;
  }

  if (qword_100940350 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A61C(v6, qword_10099F740);
  (*(v7 + 16))(v12, v23, v6);
  v24 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_artworkView];
  v40 = sub_10075FD2C();
  v41 = &protocol witness table for UIView;
  v39 = v24;
  v25 = *&v1[v17];
  if (v25)
  {
    v26 = sub_1007626BC();
    v27 = &protocol witness table for UILabel;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    *(&v36 + 1) = 0;
    *&v37 = 0;
  }

  *&v36 = v25;
  *(&v37 + 1) = v26;
  v38 = v27;
  v28 = v24;
  v29 = v25;
  sub_10075FD9C();

LABEL_13:
  v30 = [v1 contentView];
  sub_1000ACA5C();
  sub_10076422C();

  sub_10075FD6C();
  (*(v34 + 8))(v5, v35);
  return (*(v13 + 8))(v16, v33);
}

uint64_t type metadata accessor for BrickCollectionViewCell()
{
  result = qword_100955E10;
  if (!qword_100955E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003CF108()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_1003CF1C8()
{
  v1 = v0;
  if (qword_100940348 != -1)
  {
    swift_once();
  }

  v2 = sub_10076D39C();
  sub_10000A61C(v2, qword_10099F728);
  v3 = [v0 contentView];
  sub_1000ACA5C();
  sub_10076422C();

  sub_10076D36C();
  v4 = [v1 contentView];
  sub_10076422C();
  v6 = v5;

  return v6;
}

uint64_t sub_1003CF2C0()
{
  sub_10075FB6C();
  sub_10075FD2C();
  sub_1003CF3B0(&qword_100941820, &type metadata accessor for ArtworkView);
  return sub_100760BFC();
}

uint64_t sub_1003CF358(uint64_t a1)
{
  result = sub_1003CF3B0(&qword_100955E20, type metadata accessor for BrickCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1003CF3B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003CF450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10076F08C();
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076F0CC();
  v9 = *(v16 - 8);
  __chkstk_darwin(v16);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100085204();
  v12 = sub_10077068C();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  aBlock[4] = sub_1003CFA80;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_100893F78;
  v14 = _Block_copy(aBlock);

  swift_errorRetain();

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1003CFA8C(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0);
  sub_1000852B8();
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v14);

  (*(v17 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v16);
}

uint64_t sub_1003CF728(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076F50C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100764D5C();
  v7(a2);

  if (a2)
  {
    swift_errorRetain();
    sub_10076FCAC();
  }

  else
  {
    (*(v4 + 104))(v6, enum case for ActionOutcome.performed(_:), v3);
    sub_10076FCBC();
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1003CF894(uint64_t a1)
{
  sub_10000A5D4(&qword_100942C70);
  v2 = sub_10076FCEC();
  v3 = objc_opt_self();
  sub_100764D6C();
  v4 = sub_10076FF6C();

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  v8[4] = sub_1003CFA18;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000DA39C;
  v8[3] = &unk_100893F28;
  v6 = _Block_copy(v8);

  [v3 localApproveRequestWithItemIdentifier:v4 completion:v6];
  _Block_release(v6);

  return v2;
}

uint64_t sub_1003CF9D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003CFA20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003CFA38()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1003CFA8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003CFB30(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10076D1AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D9AC();
  sub_10000DB18(v7, a2);
  sub_10000A61C(v7, a2);
  if (qword_100940360 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_100955E38);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_10000DB7C(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_10076D9BC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1003CFD38()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_100955E98);
  sub_10000A61C(v4, qword_100955E98);
  if (qword_100940378 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_100955E80);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1003CFF0C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_100955EB0);
  sub_10000A61C(v4, qword_100955EB0);
  *v3 = UIFontTextStyleSubheadline;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_10000DB7C(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleSubheadline;
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

id sub_1003D00A4(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for AccountDetailCollectionViewCell();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_1003D00FC(void *a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  v8 = a1;
  sub_1003D016C(a3);
  v9.receiver = v8;
  v9.super_class = type metadata accessor for AccountDetailCollectionViewCell();
  objc_msgSendSuper2(&v9, *a4, a3);
  sub_1003D0238(a5);
}

id sub_1003D016C(char a1)
{
  v2 = v1;
  v4 = [v2 contentView];
  if (a1)
  {
    v5 = [objc_opt_self() clearColor];
  }

  else
  {
    sub_100016F40(0, &qword_100942F10);
    v5 = sub_100770D7C();
  }

  v6 = v5;
  [v4 setBackgroundColor:v5];

  return [v2 setNeedsDisplay];
}

id sub_1003D0238(SEL *a1)
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
    sub_100016F40(0, &qword_100942F10);
    v5 = sub_100770D7C();
  }

  v6 = v5;
  [v4 setBackgroundColor:v5];

  return [v2 setNeedsDisplay];
}

char *sub_1003D0310(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10076771C();
  v98 = *(v10 - 8);
  __chkstk_darwin(v10);
  *&v97 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v12 - 8);
  v14 = &v89 - v13;
  v4[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_shouldShowFullTitle] = 1;
  v15 = &v4[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_imageMarginRight];
  *v15 = 0;
  v15[8] = 1;
  v4[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_shouldResizeImage] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryView] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_secondaryAccessoryView] = 0;
  v16 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessory;
  v17 = type metadata accessor for Accessory();
  v18 = *(*(v17 - 8) + 56);
  v18(&v5[v16], 1, 1, v17);
  v18(&v5[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_secondaryAccessory], 1, 1, v17);
  v19 = &v5[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryMargin];
  *v19 = 0;
  v19[8] = 1;
  v20 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_topSeparatorView;
  v21 = type metadata accessor for SeparatorView();
  *&v5[v20] = [objc_allocWithZone(v21) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v22 = &v5[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_topSeparatorViewInsets];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v22[32] = 1;
  v5[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_showTopSeparatorView] = 0;
  v23 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_bottomSeparatorView;
  *&v5[v23] = [objc_allocWithZone(v21) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = &v5[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_bottomSeparatorViewInsets];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v24[32] = 1;
  v5[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_showBottomSeparatorView] = 0;
  v25 = &v5[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryAction];
  *v25 = 0;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_backgroundSelectionView;
  *&v5[v26] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_isSelectable] = 1;
  v5[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_disabled] = 0;
  v27 = &v5[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_selectionHandler];
  *v27 = 0;
  v27[1] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_tapGestureRecognizer] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_imageView] = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_100940360 != -1)
  {
    swift_once();
  }

  v28 = sub_10076D3DC();
  v29 = sub_10000A61C(v28, qword_100955E38);
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
  v37 = sub_1007626BC();
  v38 = objc_allocWithZone(v37);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_titleLabel] = sub_1007626AC();
  if (qword_100940378 != -1)
  {
    swift_once();
  }

  v39 = sub_10000A61C(v28, qword_100955E80);
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
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_subtitleLabel] = sub_1007626AC();
  v96(v14, v94, v28);
  v40(v14, 0, 1, v28);
  v43(v41, v36, v90);
  v45 = objc_allocWithZone(v37);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_detailLabel] = sub_1007626AC();
  v46 = type metadata accessor for AccountDetailCollectionViewCell();
  v100.receiver = v5;
  v100.super_class = v46;
  v98 = v46;
  v47 = objc_msgSendSuper2(&v100, "initWithFrame:", a1, a2, a3, a4);
  sub_1003D3078();
  [v47 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v48 = [v47 contentView];
  v49 = sub_100016F40(0, &qword_100942F10);
  v50 = sub_100770D7C();
  [v48 setBackgroundColor:v50];

  v51 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_imageView;
  v52 = *&v47[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_imageView];
  sub_100770CEC();
  sub_1007638DC();

  v53 = *&v47[v51];
  v54 = [v47 traitCollection];
  sub_10076E20C();

  sub_1007638EC();
  v55 = *&v47[v51];
  v56 = [v47 backgroundColor];

  sub_10075FB8C();
  [*&v47[v51] setContentMode:1];
  v57 = [v47 contentView];
  [v57 addSubview:*&v47[v51]];

  v58 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_titleLabel;
  [*&v47[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_titleLabel] setLineBreakMode:4];
  v59 = [v47 contentView];
  [v59 addSubview:*&v47[v58]];

  v60 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_subtitleLabel;
  v61 = *&v47[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_subtitleLabel];
  *&v97 = v49;
  v62 = sub_100770D1C();
  [v61 setTextColor:v62];

  v63 = [v47 contentView];
  [v63 addSubview:*&v47[v60]];

  v64 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_detailLabel;
  v65 = *&v47[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_detailLabel];
  v66 = sub_100770D1C();
  [v65 setTextColor:v66];

  v67 = [v47 contentView];
  [v67 addSubview:*&v47[v64]];

  v68 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_topSeparatorView;
  v69 = *&v47[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_topSeparatorView];
  v70 = objc_opt_self();
  v71 = v69;
  v72 = [v70 separatorColor];
  v73 = *&v71[OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineColor];
  *&v71[OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineColor] = v72;
  v74 = v72;

  [*&v71[OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineView] setBackgroundColor:v74];
  [*&v47[v68] setHidden:1];
  v75 = [v47 contentView];
  [v75 addSubview:*&v47[v68]];

  v76 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_bottomSeparatorView;
  v77 = *&v47[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_bottomSeparatorView];
  v78 = [v70 separatorColor];
  v79 = *&v77[OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineColor];
  *&v77[OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineColor] = v78;
  v80 = v78;

  [*&v77[OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineView] setBackgroundColor:v80];
  [*&v47[v76] setHidden:1];
  v81 = [v47 contentView];
  [v81 addSubview:*&v47[v76]];

  v82 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_backgroundSelectionView;
  v83 = *&v47[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_backgroundSelectionView];
  v84 = sub_100770DCC();
  [v83 setBackgroundColor:v84];

  [*&v47[v82] setOpaque:0];
  [*&v47[v82] setUserInteractionEnabled:0];
  if (v47[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_isSelectable] == 1)
  {
    [v47 setSelectedBackgroundView:*&v47[v82]];
  }

  sub_10000A5D4(&unk_100945BF0);
  v85 = swift_allocObject();
  v97 = xmmword_100783DD0;
  *(v85 + 16) = xmmword_100783DD0;
  *(v85 + 32) = sub_10076E88C();
  *(v85 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v99[3] = v98;
  v99[0] = v47;
  v86 = v47;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(v99);
  v87 = swift_allocObject();
  *(v87 + 16) = v97;
  *(v87 + 32) = sub_10076E3FC();
  *(v87 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100770C6C();
  swift_unknownObjectRelease();

  return v86;
}

void sub_1003D0F88()
{
  v1 = v0;
  v179 = type metadata accessor for Accessory();
  v2 = *(v179 - 8);
  __chkstk_darwin(v179);
  v169 = (&v166 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v170 = sub_10000A5D4(&qword_10094BB58);
  __chkstk_darwin(v170);
  *&v171 = &v166 - v4;
  v5 = sub_10000A5D4(&qword_10094BB50);
  __chkstk_darwin(v5 - 8);
  *&v172 = &v166 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v166 - v8;
  __chkstk_darwin(v10);
  v12 = &v166 - v11;
  *&v13 = COERCE_DOUBLE(sub_10077164C());
  v186 = *(v13 - 8);
  v187 = *&v13;
  __chkstk_darwin(v13);
  v15 = &v166 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AccountDetailCollectionViewCell();
  v188.receiver = v0;
  v188.super_class = v16;
  objc_msgSendSuper2(&v188, "layoutSubviews");
  sub_10076422C();
  Width = CGRectGetWidth(v189);
  v18 = [v0 traitCollection];
  LODWORD(v19) = sub_10077071C();

  v20 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryView;
  v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryView];
  if (v21)
  {
    LODWORD(v182) = [v21 isHidden] ^ 1;
  }

  else
  {
    LODWORD(v182) = 0;
  }

  v173 = *&v12;
  v22 = sub_10075FC9C();
  v23 = v22;
  if (v22)
  {
  }

  v180 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_subtitleLabel];
  v24 = [*&v180 text];
  v25 = v24;
  if (v24)
  {
  }

  v181 = v25;
  v26 = v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_imageMarginRight + 8];
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

  v27 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_imageMarginRight];
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_10:
  v28 = COERCE_DOUBLE(sub_1003D3278());
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
    if (qword_100940368 != -1)
    {
      swift_once();
    }

    v34 = sub_10076D9AC();
    sub_10000A61C(v34, qword_100955E50);
    v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_titleLabel];
    sub_10076D17C();
    v35 = [v19 traitCollection];
    sub_10076D97C();
    v37 = v36;

    [v19 firstBaselineFromTop];
    v39 = v38;
    (*(*&v186 + 8))(v15, COERCE_DOUBLE(*&v187));
    v40 = v37 - v39;
    LOBYTE(v19) = v184;
  }

  else
  {
    sub_10076422C();
    v40 = CGRectGetMidY(v191) + v33 * -0.5;
  }

  sub_10076422C();
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
  sub_10076422C();
  sub_100770A4C();
  sub_10075FC8C();
  v177 = v32;
  v175 = v40;
  v174 = v30;
  if (v19)
  {
    sub_10075FC7C();
    MaxY = CGRectGetMaxY(v190);
    if (qword_100940368 != -1)
    {
      swift_once();
    }

    v42 = sub_10076D9AC();
    sub_10000A61C(v42, qword_100955E50);
    v43 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_titleLabel];
    sub_10076D17C();
    v44 = [v43 traitCollection];
    sub_10076D97C();
    v46 = v45;

    [v43 firstBaselineFromTop];
    v48 = v47;
    v49 = *(*&v186 + 8);
    v49(v15, *&v187);
    v50 = MaxY + v46 - v48;
  }

  else
  {
    if (qword_100940368 != -1)
    {
      swift_once();
    }

    v51 = sub_10076D9AC();
    sub_10000A61C(v51, qword_100955E50);
    v43 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_titleLabel];
    sub_10076D17C();
    v52 = [v43 traitCollection];
    sub_10076D97C();
    v54 = v53;

    [v43 firstBaselineFromTop];
    v56 = v55;
    v49 = *(*&v186 + 8);
    v49(v15, *&v187);
    v50 = v54 - v56;
  }

  v183 = v50;
  v57 = &selRef_initWithTabBarSystemItem_tag_;
  v58 = v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryMargin + 8] == 1;
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

  v59 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryMargin];
  if (!LODWORD(v182))
  {
    v182 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryMargin];
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
  sub_10076422C();
  v167 = v61;
  [v61 sizeThatFits:{v62, v63}];
  v65 = v64;
  v67 = v66;
  v68 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessory;
  swift_beginAccess();
  v69 = *&v173;
  v70 = v179;
  swift_storeEnumTagMultiPayload();
  (*(v2 + 56))(v69, 0, 1, v70);
  v71 = *(v170 + 48);
  v170 = v68;
  v72 = *&v171;
  sub_1003D438C(&v1[v68], *&v171);
  sub_1003D438C(v69, v72 + v71);
  v73 = *(v2 + 48);
  if (v73(v72, 1, v70) == 1)
  {
    sub_10000CFBC(v69, &qword_10094BB50);
    if (v73(v72 + v71, 1, v70) == 1)
    {
      sub_10000CFBC(v72, &qword_10094BB50);
      v43 = v168;
      v74 = v180;
LABEL_44:
      v83 = [v1 traitCollection];
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

      sub_100770A8C();
      v65 = v84;
      v67 = v85;
      goto LABEL_45;
    }

LABEL_42:
    sub_10000CFBC(v72, &qword_10094BB58);
    v80 = &selRef_initWithTabBarSystemItem_tag_;
    v43 = v168;
    v74 = v180;
    goto LABEL_46;
  }

  sub_1003D438C(v72, v9);
  if (v73(v72 + v71, 1, v70) == 1)
  {
    sub_10000CFBC(*&v173, &qword_10094BB50);
    sub_100036758(v9);
    goto LABEL_42;
  }

  v81 = v169;
  sub_1000366F4(v72 + v71, v169);
  v82 = sub_10052A9D0(v9, v81);
  sub_100036758(v81);
  sub_10000CFBC(*&v173, &qword_10094BB50);
  sub_100036758(v9);
  sub_10000CFBC(v72, &qword_10094BB50);
  v43 = v168;
  v74 = v180;
  if (v82)
  {
    goto LABEL_44;
  }

LABEL_45:
  v80 = &selRef_initWithTabBarSystemItem_tag_;
LABEL_46:
  sub_10076422C();
  v75 = CGRectGetMaxX(v193) - v65;
  v86 = *&v172;
  sub_1003D438C(&v1[v170], *&v172);
  v87 = v73(v86, 1, v179);
  v180 = v65;
  if (v87 == 1)
  {
    sub_10000CFBC(v86, &qword_10094BB50);
    v49 = v166;
LABEL_50:
    [v1 v80[105]];
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
  sub_100036758(v86);
  v49 = v166;
  if (EnumCaseMultiPayload != 5)
  {
    goto LABEL_50;
  }

  sub_10076422C();
  v89 = v183 + CGRectGetMinY(v194);
LABEL_51:
  sub_10076422C();
  v97 = CGRectGetWidth(v197);
  if (v180 >= v97)
  {
    v98 = v97;
  }

  else
  {
    v98 = v180;
  }

  sub_10076422C();
  sub_100770A4C();
  v99 = v167;
  [v167 setFrame:?];
  v198.origin.x = v75;
  v198.origin.y = v89;
  v198.size.width = v98;
  v198.size.height = v67;
  Width = Width - (v59 + CGRectGetWidth(v198));
  v100 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_secondaryAccessoryView];
  if (v100)
  {
    v101 = v100;
    sub_10076422C();
    [v101 sizeThatFits:{v102, v103}];
    v105 = v104;
    v107 = v106;
    v199.origin.x = v75;
    v199.origin.y = v89;
    v199.size.width = v98;
    v199.size.height = v67;
    v180 = CGRectGetMinX(v199);
    [v1 v80[105]];
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
    sub_10076422C();
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
    sub_10076422C();
    sub_100770A4C();
    v57 = &selRef_initWithTabBarSystemItem_tag_;
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
    v57 = &selRef_initWithTabBarSystemItem_tag_;
  }

LABEL_60:
  v173 = v75;
  v180 = v67;
  sub_10076422C();
  [v43 v57[261]];
  v121 = v120;
  v123 = v122;
  v124 = v57;
  if (qword_100940380 != -1)
  {
    swift_once();
  }

  v125 = v185 == 0;
  v126 = sub_10076D9AC();
  sub_10000A61C(v126, qword_100955E98);
  sub_10076D17C();
  v127 = [*&v74 traitCollection];
  sub_10076D97C();
  v129 = v128;

  [*&v74 firstBaselineFromTop];
  v131 = v130;
  v49(v15, *&v187);
  v132 = v129 - v131;
  sub_10076422C();
  [*&v74 v124[261]];
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

  sub_10076422C();
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
    sub_10076422C();
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

  sub_10076422C();
  MinY = CGRectGetMinY(v209);
  v183 = v141;
  v145 = v141 + MinY;
  sub_10076422C();
  sub_100770A4C();
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

  sub_10076422C();
  sub_100770A4C();
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

  v153 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_detailLabel];
  v154 = [v153 text];
  if (v154)
  {
    v155 = v154;
    v156 = sub_10076FF9C();
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

      sub_10076422C();
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
          sub_10076422C();
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

        sub_10076422C();
        CGRectGetMinY(v217);
      }

      sub_10076422C();
      sub_100770A4C();
      [v153 setFrame:?];
    }
  }

  if (v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_showTopSeparatorView] == 1)
  {
    sub_10076422C();
    CGRectGetMinX(v218);
    [v1 bounds];
    CGRectGetMinY(v219);
    sub_10076422C();
    CGRectGetWidth(v220);
    v161 = [v1 traitCollection];
    sub_10076E20C();

    if ((v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_topSeparatorViewInsets + 32] & 1) == 0)
    {
      [v1 bounds];
    }

    v162 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_topSeparatorView];
    sub_10076422C();
    sub_100770A4C();
    [v162 setFrame:?];
  }

  if (v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_showBottomSeparatorView] == 1)
  {
    sub_10076422C();
    CGRectGetMinX(v221);
    [v1 bounds];
    CGRectGetMaxY(v222);
    v163 = [v1 traitCollection];
    sub_10076E20C();

    sub_10076422C();
    CGRectGetWidth(v223);
    v164 = [v1 traitCollection];
    sub_10076E20C();

    if ((v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_bottomSeparatorViewInsets + 32] & 1) == 0)
    {
      [v1 bounds];
    }

    v165 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_bottomSeparatorView];
    sub_10076422C();
    sub_100770A4C();
    [v165 setFrame:?];
  }
}

double sub_1003D2348(double a1)
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
  v13 = sub_10000A5D4(&qword_10094BB50);
  __chkstk_darwin(v13 - 8);
  v61 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v60 - v16;
  __chkstk_darwin(v18);
  v74 = &v60 - v19;
  __chkstk_darwin(v20);
  v76 = &v60 - v21;
  v71 = sub_10075FC9C();
  v22 = v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_shouldResizeImage];
  if (v22 == 1)
  {
    sub_10075FCFC();
  }

  v23 = [*&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_titleLabel] text];
  if (v23)
  {
    v24 = v23;
    v63 = sub_10076FF9C();
    v72 = v25;
  }

  else
  {
    v63 = 0;
    v72 = 0;
  }

  LODWORD(v65) = v2[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_shouldShowFullTitle];
  v26 = [*&v2[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_subtitleLabel] text];
  if (v26)
  {
    v27 = v26;
    v62 = sub_10076FF9C();
    v75 = v28;
  }

  else
  {
    v62 = 0;
    v75 = 0;
  }

  v29 = [*&v2[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_detailLabel] text];
  if (v29)
  {
    v30 = v29;
    v64 = sub_10076FF9C();
    v68 = v31;
  }

  else
  {
    v64 = 0;
    v68 = 0;
  }

  v32 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessory;
  swift_beginAccess();
  sub_1003D438C(&v2[v32], v76);
  v33 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_secondaryAccessory;
  swift_beginAccess();
  sub_1003D438C(&v2[v33], v74);
  v66 = v2[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_showTopSeparatorView];
  v67 = v2[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_showBottomSeparatorView];
  [v2 layoutMargins];
  v69 = v34;
  v35 = [v2 traitCollection];
  v36 = sub_10077071C();

  v73 = v36;
  v70 = a1;
  if ((v22 & 1) == 0 && v71)
  {
    [v71 size];
  }

  v37 = [v2 traitCollection];
  sub_1003D438C(v76, v17);
  v38 = *(v5 + 48);
  if (v38(v17, 1, v4) == 1)
  {
    v39 = v17;
  }

  else
  {
    sub_1000366F4(v17, v12);
    sub_100528FA8(v37);
    swift_storeEnumTagMultiPayload();
    v40 = sub_10052A9D0(v12, v9);
    sub_100036758(v9);
    if (v40)
    {
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
    }

    v41 = v61;
    sub_1003D438C(v74, v61);
    if (v38(v41, 1, v4) != 1)
    {
      v42 = v41;
      v43 = v60;
      sub_1000366F4(v42, v60);
      sub_100528FA8(v37);
      sub_100036758(v43);
      sub_100036758(v12);
      goto LABEL_23;
    }

    sub_100036758(v12);
    v39 = v41;
  }

  sub_10000CFBC(v39, &qword_10094BB50);
LABEL_23:
  if ((v65 & 1) == 0 && (sub_10077071C() & 1) == 0)
  {
    sub_10077118C();
  }

  v65 = v37;
  if (qword_100940360 != -1)
  {
    swift_once();
  }

  v44 = sub_10076D3DC();
  v45 = sub_10000A61C(v44, qword_100955E38);
  v46 = sub_10076C04C();
  v78 = v46;
  v47 = sub_10004C7BC();
  v79 = v47;
  v48 = sub_10000DB7C(v77);
  v49 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v50 = *(*(v46 - 8) + 104);
  v50(v48, enum case for Feature.measurement_with_labelplaceholder(_:), v46);
  sub_10076C90C();
  sub_10000CD74(v77);
  v63 = v45;
  sub_10076991C();
  if (qword_100940368 != -1)
  {
    swift_once();
  }

  v51 = sub_10076D9AC();
  sub_10000A61C(v51, qword_100955E50);
  sub_10076D42C();
  if (v75)
  {
    if (qword_100940378 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v44, qword_100955E80);
    v78 = v46;
    v79 = v47;
    v52 = sub_10000DB7C(v77);
    v50(v52, v49, v46);
    sub_10076C90C();
    sub_10000CD74(v77);
    sub_10076991C();
    if (qword_100940380 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v51, qword_100955E98);
    sub_10076D42C();
    v53 = v68;
    if (qword_100940388 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v51, qword_100955EB0);
    sub_10076D3FC();
  }

  else
  {
    if (qword_100940370 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v51, qword_100955E68);
    sub_10076D3FC();
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
    v55 = sub_10000DB7C(v77);
    v50(v55, v49, v46);
    sub_10076C90C();
    sub_10000CD74(v77);
    sub_10076991C();
    if (qword_100940380 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v51, qword_100955E98);
    sub_10076D42C();
    v56 = v65;
    if (qword_100940388 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v51, qword_100955EB0);
    sub_10076D3FC();
  }

  else
  {
LABEL_50:
    v56 = v65;
  }

  if (v66)
  {
    v57 = [v2 traitCollection];
    sub_10076E20C();
  }

  if (v67)
  {
    v58 = [v2 traitCollection];
    sub_10076E20C();
  }

  else
  {
  }

  sub_10000CFBC(v74, &qword_10094BB50);
  sub_10000CFBC(v76, &qword_10094BB50);
  return v70;
}

BOOL sub_1003D3078()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_10077071C();

  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_titleLabel];
    v5 = [v4 numberOfLines] != 0;
    [v4 setNumberOfLines:0];
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_subtitleLabel] setNumberOfLines:0];
    v6 = 0;
LABEL_16:
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_detailLabel] setNumberOfLines:v6];
    return v5;
  }

  v7 = v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_shouldShowFullTitle];
  v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_subtitleLabel];
  v9 = [v8 text];
  if (v9)
  {
    v10 = v9;
    sub_10076FF9C();
  }

  v11 = [v1 traitCollection];
  v12 = v11;
  if (v7)
  {

    v13 = 0;
  }

  else if (sub_10077071C())
  {

    v13 = 3;
  }

  else
  {
    v14 = sub_10077118C();

    if (v14)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_titleLabel];
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

void *sub_1003D3278()
{
  result = sub_10075FC9C();
  v2 = result;
  if (result)
  {
    [result size];
    v4 = v3;

    if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_shouldResizeImage) == 1)
    {
      v5 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
      sub_10075FCFC();
      [v5 scaledValueForValue:?];
      v7 = v6;

      v8 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
      sub_10075FCFC();
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

void sub_1003D3450(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v5 = type metadata accessor for Accessory();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v35 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10000A5D4(&qword_10094BB50);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v37 = &v35 - v12;
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  v16 = sub_10000A5D4(&qword_10094BB58);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v35 - v18;
  v20 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessory;
  swift_beginAccess();
  v21 = *(v17 + 56);
  v38 = a1;
  sub_1003D438C(a1, v19);
  sub_1003D438C(&v3[v20], &v19[v21]);
  v22 = *(v6 + 48);
  if (v22(v19, 1, v5) == 1)
  {
    if (v22(&v19[v21], 1, v5) == 1)
    {
      sub_10000CFBC(v19, &qword_10094BB50);
      return;
    }
  }

  else
  {
    sub_1003D438C(v19, v15);
    if (v22(&v19[v21], 1, v5) != 1)
    {
      v30 = &v19[v21];
      v31 = v35;
      sub_1000366F4(v30, v35);
      v32 = sub_10052A9D0(v15, v31);
      sub_100036758(v31);
      sub_100036758(v15);
      sub_10000CFBC(v19, &qword_10094BB50);
      if (v32)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_100036758(v15);
  }

  sub_10000CFBC(v19, &qword_10094BB58);
LABEL_7:
  v24 = v37;
  v23 = v38;
  sub_1003D438C(v38, v37);
  swift_beginAccess();
  sub_100199B50(v24, &v3[v20]);
  swift_endAccess();
  sub_1003D438C(v23, v10);
  if (v22(v10, 1, v5) == 1)
  {
    sub_10000CFBC(v10, &qword_10094BB50);
    v25 = 0;
  }

  else
  {
    sub_100527CDC(v36);
    v25 = v26;
    sub_100036758(v10);
  }

  v27 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryView;
  v28 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryView];
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

void sub_1003D3880(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = a2;
  v5 = type metadata accessor for Accessory();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v34 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10000A5D4(&qword_10094BB50);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v36 = &v34 - v12;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  v16 = sub_10000A5D4(&qword_10094BB58);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v34 - v18;
  v20 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_secondaryAccessory;
  swift_beginAccess();
  v21 = *(v17 + 56);
  v37 = a1;
  sub_1003D438C(a1, v19);
  sub_1003D438C(&v3[v20], &v19[v21]);
  v22 = *(v6 + 48);
  if (v22(v19, 1, v5) == 1)
  {
    if (v22(&v19[v21], 1, v5) == 1)
    {
      sub_10000CFBC(v19, &qword_10094BB50);
      return;
    }
  }

  else
  {
    sub_1003D438C(v19, v15);
    if (v22(&v19[v21], 1, v5) != 1)
    {
      v30 = &v19[v21];
      v31 = v34;
      sub_1000366F4(v30, v34);
      v32 = sub_10052A9D0(v15, v31);
      sub_100036758(v31);
      sub_100036758(v15);
      sub_10000CFBC(v19, &qword_10094BB50);
      if (v32)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_100036758(v15);
  }

  sub_10000CFBC(v19, &qword_10094BB58);
LABEL_7:
  v24 = v36;
  v23 = v37;
  sub_1003D438C(v37, v36);
  swift_beginAccess();
  sub_100199B50(v24, &v3[v20]);
  swift_endAccess();
  sub_1003D438C(v23, v10);
  if (v22(v10, 1, v5) == 1)
  {
    sub_10000CFBC(v10, &qword_10094BB50);
    v25 = 0;
  }

  else
  {
    sub_100527CDC(v35);
    v25 = v26;
    sub_100036758(v10);
  }

  v27 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_secondaryAccessoryView;
  v28 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_secondaryAccessoryView];
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

double sub_1003D3D40()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_10094BB50);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for AccountDetailCollectionViewCell();
  v21.receiver = v0;
  v21.super_class = v5;
  objc_msgSendSuper2(&v21, "prepareForReuse");
  sub_10075FCAC();
  [v0 setNeedsLayout];
  v6 = &v0[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_imageMarginRight];
  *v6 = 0;
  v6[8] = 1;
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_titleLabel];
  [v7 setText:0];
  [v0 setNeedsLayout];
  v8 = v0[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_shouldShowFullTitle];
  v0[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_shouldShowFullTitle] = 1;
  if ((v8 & 1) == 0)
  {
    [v0 setNeedsLayout];
  }

  v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_subtitleLabel];
  [v9 setText:0];
  if (sub_1003D3078())
  {
    [v0 setNeedsLayout];
  }

  [*&v0[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_detailLabel] setText:0];
  v10 = type metadata accessor for Accessory();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessory;
  swift_beginAccess();
  sub_100199B50(v4, &v1[v11]);
  swift_endAccess();
  sub_1003D43FC(0);
  v12 = &v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryMargin];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryAction];
  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryAction];
  *v13 = 0;
  *(v13 + 1) = 0;
  sub_1000167E0(v14);
  sub_100016F40(0, &qword_100942F10);
  v15 = sub_100770CFC();
  [v7 setTextColor:v15];

  v16 = sub_100770D1C();
  [v9 setTextColor:v16];

  v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_showTopSeparatorView] = 0;
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_topSeparatorView] setHidden:1];
  v17 = &v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_topSeparatorViewInsets];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v17[32] = 1;
  v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_showBottomSeparatorView] = 0;
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_bottomSeparatorView] setHidden:1];
  v18 = &v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_bottomSeparatorViewInsets];
  result = 0.0;
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[32] = 1;
  return result;
}

id sub_1003D40C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountDetailCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AccountDetailCollectionViewCell()
{
  result = qword_100955F58;
  if (!qword_100955F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003D428C()
{
  sub_1003AF014();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1003D438C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10094BB50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1003D43FC(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryView;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryView];
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

void sub_1003D44E0()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_shouldShowFullTitle) = 1;
  v1 = v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_imageMarginRight;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_shouldResizeImage) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_secondaryAccessoryView) = 0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessory;
  v3 = type metadata accessor for Accessory();
  v4 = *(*(v3 - 8) + 56);
  v4(v0 + v2, 1, 1, v3);
  v4(v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_secondaryAccessory, 1, 1, v3);
  v5 = v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryMargin;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_topSeparatorView;
  v7 = type metadata accessor for SeparatorView();
  *(v0 + v6) = [objc_allocWithZone(v7) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_topSeparatorViewInsets;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_showTopSeparatorView) = 0;
  v9 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_bottomSeparatorView;
  *(v0 + v9) = [objc_allocWithZone(v7) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_bottomSeparatorViewInsets;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_showBottomSeparatorView) = 0;
  v11 = (v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryAction);
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_backgroundSelectionView;
  *(v0 + v12) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_isSelectable) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_disabled) = 0;
  v13 = (v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_selectionHandler);
  *v13 = 0;
  v13[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_tapGestureRecognizer) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1003D4734()
{
  sub_10000CC8C(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1003D4794(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = sub_10075E11C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076340C();
  v11 = sub_10075E0AC();
  (*(v8 + 8))(v10, v7);
  if (!v11)
  {
    swift_getObjectType();
    v12 = swift_conformsToProtocol2();
    if (v12)
    {
      if (a1)
      {
        v13 = v12;
        ObjectType = swift_getObjectType();
        v15 = *(v13 + 8);
        v16 = a1;
        v17 = v15(ObjectType, v13);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v19 = Strong;
          v20 = [Strong view];

          if (!v20)
          {
            __break(1u);
            goto LABEL_19;
          }

          v21 = [v20 safeAreaLayoutGuide];

          [v21 layoutFrame];
          v23 = v22;
          v25 = v24;
          v27 = v26;
          v29 = v28;

          v50.origin.x = v23;
          v50.origin.y = v25;
          v50.size.width = v27;
          v50.size.height = v29;
          MinY = CGRectGetMinY(v50);
        }

        else
        {
          MinY = 0.0;
        }

        v31 = v17 - MinY;
        v32 = swift_unknownObjectWeakLoadStrong();
        if (v32)
        {
          v33 = v32;
          v34 = *(v4 + 24);
          v35 = swift_getObjectType();
          v36 = (*(v34 + 8))(v35, v34);

          if (v36)
          {
            sub_1002D911C(a3, v31);
          }
        }

        v37 = swift_unknownObjectWeakLoadStrong();
        if (!v37)
        {
          v38 = v16;
          goto LABEL_16;
        }

        v38 = v37;
        v39 = [v37 collectionView];
        if (v39)
        {
          v40 = v39;
          [v39 _pocketInsets];
          v42 = v41;
          v44 = v43;
          v46 = v45;

          v47 = [v38 collectionView];
          if (v47)
          {
            v48 = v47;
            [v47 _setPocketInsets:{v31, v42, v44, v46}];

LABEL_16:
            return;
          }

LABEL_20:
          __break(1u);
          return;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }
  }
}

uint64_t sub_1003D4A9C@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, void *a2@<X8>)
{
  v141 = a2;
  v124 = sub_10000A5D4(&qword_10094E088);
  __chkstk_darwin(v124);
  v125 = &v119 - v3;
  v4 = sub_10000A5D4(&qword_10094E090);
  __chkstk_darwin(v4 - 8);
  v120 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v128 = &v119 - v7;
  __chkstk_darwin(v8);
  v131 = &v119 - v9;
  v10 = sub_1007621EC();
  v11 = *(v10 - 8);
  v137 = v10;
  v138 = v11;
  __chkstk_darwin(v10);
  v133 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v135 = &v119 - v14;
  v140 = sub_10000A5D4(&qword_100942F28);
  __chkstk_darwin(v140);
  v144 = &v119 - v15;
  v16 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v16 - 8);
  v130 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v121 = &v119 - v19;
  __chkstk_darwin(v20);
  v129 = &v119 - v21;
  __chkstk_darwin(v22);
  v126 = &v119 - v23;
  __chkstk_darwin(v24);
  v145 = &v119 - v25;
  v26 = sub_10000A5D4(&qword_1009499A0);
  __chkstk_darwin(v26 - 8);
  v123 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v139 = (&v119 - v29);
  __chkstk_darwin(v30);
  v32 = &v119 - v31;
  __chkstk_darwin(v33);
  v35 = &v119 - v34;
  v36 = sub_10000A5D4(&unk_100946720);
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v119 - v38;
  v40 = sub_10076B5BC();
  v41 = *(v40 - 8);
  v146 = v40;
  v147 = v41;
  __chkstk_darwin(v40);
  v127 = &v119 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = &v119 - v44;
  sub_10076468C();
  swift_getKeyPath();
  v143 = v45;
  sub_10076F49C();

  v46 = *(v37 + 8);
  v132 = v39;
  v47 = v39;
  v48 = v139;
  v46(v47, v36);
  v49 = a1;
  v50 = v36;
  v134 = v49;
  sub_10076463C();
  sub_10000CFBC(v32, &qword_1009499A0);
  v142 = v35;
  sub_100016E2C(v35, v48, &qword_1009499A0);
  v51 = *(v37 + 48);
  v122 = v37 + 48;
  v52 = v51(v48, 1, v50);
  v136 = v37 + 8;
  if (v52 == 1)
  {
    sub_10000CFBC(v48, &qword_1009499A0);
    v53 = 1;
    v54 = v145;
  }

  else
  {
    swift_getKeyPath();
    v54 = v145;
    sub_10076F49C();

    v46(v48, v50);
    v53 = 0;
  }

  v55 = v146;
  v56 = v147;
  (*(v147 + 56))(v54, v53, 1, v146);
  v57 = *(v140 + 48);
  v58 = v144;
  (*(v56 + 16))(v144, v143, v55);
  v59 = v57;
  sub_100016E2C(v54, &v58[v57], &unk_1009568A0);
  v60 = *(v56 + 88);
  v61 = v60(v58, v55);
  if (v61 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    LODWORD(v140) = enum case for Shelf.ContentType.editorsChoice(_:);
    v139 = v51;
    v62 = v132;
    sub_10076468C();
    swift_getKeyPath();
    v63 = v135;
    sub_10076F49C();

    v134 = v46;
    v46(v62, v50);
    v64 = v138;
    v65 = v133;
    v66 = v60;
    v67 = v137;
    (*(v138 + 104))(v133, enum case for ShelfBackground.editorsChoice(_:), v137);
    v68 = sub_1007621DC();
    v69 = *(v64 + 8);
    v69(v65, v67);
    v70 = v67;
    v60 = v66;
    v69(v63, v70);
    v71 = v144;
    if (v68)
    {
      v72 = v141;
      v141[3] = &type metadata for CGFloat;
      v72[4] = &protocol witness table for CGFloat;
      *v72 = 0x403C000000000000;
LABEL_7:
      sub_10000CFBC(v145, &unk_1009568A0);
      sub_10000CFBC(v142, &qword_1009499A0);
      v73 = v146;
      v74 = *(v147 + 8);
      v74(v143, v146);
LABEL_8:
      sub_10000CFBC(v71 + v59, &unk_1009568A0);
      return (v74)(v71, v73);
    }

LABEL_17:
    v83 = v146;
    v82 = v147;
    if ((*(v147 + 48))(v71 + v59, 1, v146) != 1)
    {
      v84 = v130;
      sub_100016E2C(v71 + v59, v130, &unk_1009568A0);
      v85 = v60(v84, v83);
      if (v85 == v140)
      {
        v86 = v123;
        sub_100016E2C(v142, v123, &qword_1009499A0);
        if (v139(v86, 1, v50) == 1)
        {
          sub_10000CFBC(v86, &qword_1009499A0);
          v87 = 1;
          v88 = v137;
          v89 = v131;
        }

        else
        {
          swift_getKeyPath();
          v89 = v131;
          sub_10076F49C();

          v134(v86, v50);
          v87 = 0;
          v88 = v137;
        }

        v97 = v128;
        v98 = v138;
        v99 = *(v138 + 56);
        v99(v89, v87, 1, v88);
        (*(v98 + 104))(v97, enum case for ShelfBackground.editorsChoice(_:), v88);
        v99(v97, 0, 1, v88);
        v100 = *(v124 + 48);
        v101 = v89;
        v102 = v125;
        sub_100016E2C(v101, v125, &qword_10094E090);
        sub_100016E2C(v97, v102 + v100, &qword_10094E090);
        v103 = *(v98 + 48);
        if (v103(v102, 1, v88) == 1)
        {
          sub_10000CFBC(v97, &qword_10094E090);
          sub_10000CFBC(v131, &qword_10094E090);
          if (v103(v102 + v100, 1, v88) == 1)
          {
            sub_10000CFBC(v102, &qword_10094E090);
LABEL_44:
            if (qword_100941220 != -1)
            {
              swift_once();
            }

            v115 = sub_10076D9AC();
            v116 = sub_10000A61C(v115, qword_1009A23E0);
            v117 = v141;
            v141[3] = v115;
            v117[4] = &protocol witness table for StaticDimension;
            v118 = sub_10000DB7C(v117);
            (*(*(v115 - 8) + 16))(v118, v116, v115);
            goto LABEL_7;
          }
        }

        else
        {
          v104 = v131;
          v105 = v120;
          sub_100016E2C(v102, v120, &qword_10094E090);
          if (v103(v102 + v100, 1, v88) != 1)
          {
            v111 = v138;
            v112 = v102 + v100;
            v113 = v135;
            (*(v138 + 32))(v135, v112, v88);
            sub_1003D8834(&qword_100949730, &type metadata accessor for ShelfBackground);
            LODWORD(v144) = sub_10076FF1C();
            v114 = *(v111 + 8);
            v114(v113, v88);
            sub_10000CFBC(v128, &qword_10094E090);
            sub_10000CFBC(v104, &qword_10094E090);
            v114(v105, v88);
            sub_10000CFBC(v102, &qword_10094E090);
            v83 = v146;
            v82 = v147;
            if (v144)
            {
              goto LABEL_44;
            }

            goto LABEL_38;
          }

          sub_10000CFBC(v128, &qword_10094E090);
          sub_10000CFBC(v104, &qword_10094E090);
          (*(v138 + 8))(v105, v88);
        }

        sub_10000CFBC(v102, &qword_10094E088);
        v83 = v146;
        v82 = v147;
      }

      else
      {
        v82 = v147;
        (*(v147 + 8))(v84, v83);
      }
    }

LABEL_38:
    v106 = v141;
    v141[3] = &type metadata for Double;
    v106[4] = &protocol witness table for Double;
    *v106 = 0;
    sub_10000CFBC(v145, &unk_1009568A0);
    sub_10000CFBC(v142, &qword_1009499A0);
    (*(v82 + 8))(v143, v83);
    return sub_10000CFBC(v71, &qword_100942F28);
  }

  if (v61 == enum case for Shelf.ContentType.productMediaItem(_:))
  {
    v73 = v146;
    v76 = v147;
    v77 = *(v147 + 48);
    v71 = v144;
    if (v77(&v144[v59], 1, v146) != 1)
    {
      v78 = v126;
      sub_100016E2C(v71 + v59, v126, &unk_1009568A0);
      if (v60(v78, v73) == enum case for Shelf.ContentType.smallLockup(_:))
      {
        v79 = v141;
        v141[3] = &type metadata for Double;
        v79[4] = &protocol witness table for Double;
        *v79 = 0;
        sub_10000CFBC(v145, &unk_1009568A0);
        sub_10000CFBC(v142, &qword_1009499A0);
        v74 = *(v76 + 8);
        v74(v143, v73);
        goto LABEL_8;
      }

      (*(v76 + 8))(v78, v73);
    }

    v90 = v145;
    v91 = v129;
    sub_100016E2C(v145, v129, &unk_1009568A0);
    if (v77(v91, 1, v73) == 1)
    {
      sub_10000CFBC(v91, &unk_1009568A0);
      v81 = v73;
    }

    else
    {
      v92 = v127;
      (*(v76 + 32))(v127, v91, v73);
      v81 = v73;
      if (qword_100941478 != -1)
      {
        swift_once();
      }

      if (sub_10069358C(v92, qword_1009A31A8))
      {
        if (qword_100941208 != -1)
        {
          swift_once();
        }

        v93 = sub_10076D9AC();
        v94 = sub_10000A61C(v93, qword_1009A2398);
        v95 = v141;
        v141[3] = v93;
        v95[4] = &protocol witness table for StaticDimension;
        v96 = sub_10000DB7C(v95);
        (*(*(v93 - 8) + 16))(v96, v94, v93);
        v74 = *(v76 + 8);
        v73 = v146;
        v74(v127, v146);
        sub_10000CFBC(v90, &unk_1009568A0);
        sub_10000CFBC(v142, &qword_1009499A0);
        v74(v143, v73);
        goto LABEL_8;
      }

      (*(v76 + 8))(v92, v73);
    }
  }

  else
  {
    LODWORD(v140) = enum case for Shelf.ContentType.editorsChoice(_:);
    v139 = v51;
    v134 = v46;
    v71 = v144;
    if (v61 != enum case for Shelf.ContentType.productPageLink(_:) || (*(v147 + 48))(&v144[v57], 1, v146) == 1)
    {
      goto LABEL_17;
    }

    v80 = v121;
    sub_100016E2C(v71 + v57, v121, &unk_1009568A0);
    v81 = v146;
    if (v60(v80, v146) != enum case for Shelf.ContentType.annotation(_:))
    {
      (*(v147 + 8))(v80, v81);
      goto LABEL_17;
    }
  }

  sub_10000CFBC(v71 + v59, &unk_1009568A0);
  v107 = *(v147 + 8);
  v107(v71, v81);
  if (qword_100941210 != -1)
  {
    swift_once();
  }

  v108 = sub_10076D9AC();
  sub_10000A61C(v108, qword_1009A23B0);
  sub_10076D98C();
  v109 = v141;
  v141[3] = &type metadata for CGFloat;
  v109[4] = &protocol witness table for CGFloat;
  *v109 = v110;
  sub_10000CFBC(v145, &unk_1009568A0);
  sub_10000CFBC(v142, &qword_1009499A0);
  return (v107)(v143, v81);
}

uint64_t sub_1003D5CA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v163 = a2;
  v3 = sub_1007621EC();
  v155 = *(v3 - 8);
  v156 = v3;
  __chkstk_darwin(v3);
  v154 = &v141 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v158 = &v141 - v6;
  v7 = sub_10076C38C();
  v149 = *(v7 - 8);
  v150 = v7;
  __chkstk_darwin(v7);
  v148 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_10000A5D4(&qword_100942F28);
  __chkstk_darwin(v162);
  v166 = &v141 - v9;
  v10 = sub_10076B5BC();
  v11 = *(v10 - 8);
  v164 = v10;
  v165 = v11;
  __chkstk_darwin(v10);
  v161 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_100946720);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v153 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v141 - v17;
  v19 = sub_10000A5D4(&qword_1009499A0);
  __chkstk_darwin(v19 - 8);
  v21 = &v141 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v141 - v23;
  __chkstk_darwin(v25);
  v27 = &v141 - v26;
  v28 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v28 - 8);
  v142 = &v141 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v141 = &v141 - v31;
  __chkstk_darwin(v32);
  v144 = &v141 - v33;
  __chkstk_darwin(v34);
  v147 = &v141 - v35;
  __chkstk_darwin(v36);
  v151 = &v141 - v37;
  __chkstk_darwin(v38);
  v160 = &v141 - v39;
  __chkstk_darwin(v40);
  v159 = &v141 - v41;
  __chkstk_darwin(v42);
  v157 = &v141 - v43;
  __chkstk_darwin(v44);
  v152 = &v141 - v45;
  __chkstk_darwin(v46);
  v146 = &v141 - v47;
  __chkstk_darwin(v48);
  v145 = &v141 - v49;
  __chkstk_darwin(v50);
  v143 = &v141 - v51;
  __chkstk_darwin(v52);
  v54 = &v141 - v53;
  v167 = a1;
  sub_10076463C();
  sub_10000CFBC(v24, &qword_1009499A0);
  sub_10002AB4C(v21, v27);
  if ((*(v14 + 48))(v27, 1, v13) == 1)
  {
    sub_10000CFBC(v27, &qword_1009499A0);
    v55 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_10076F49C();

    (*(v14 + 8))(v27, v13);
    v55 = 0;
  }

  v56 = v165;
  v57 = v54;
  v58 = v54;
  v59 = v164;
  (*(v165 + 56))(v57, v55, 1, v164);
  sub_10076468C();
  swift_getKeyPath();
  v60 = v161;
  sub_10076F49C();

  v61 = *(v14 + 8);
  v61(v18, v13);
  v62 = v166;
  v63 = v60;
  v64 = *(v162 + 48);
  (*(v56 + 32))(v166, v63, v59);
  v162 = v58;
  sub_100016E2C(v58, &v62[v64], &unk_1009568A0);
  v65 = *(v56 + 88);
  v66 = v65(v62, v59);
  if (v66 == enum case for Shelf.ContentType.productTopLockup(_:))
  {
    goto LABEL_5;
  }

  if (v66 == enum case for Shelf.ContentType.annotation(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) != 1)
    {
      v70 = v159;
      sub_100016E2C(&v62[v64], v159, &unk_1009568A0);
      v71 = v65(v70, v59);
      v160 = v70;
      if (v71 == enum case for Shelf.ContentType.productPageLink(_:))
      {
        if (qword_100941210 != -1)
        {
          swift_once();
        }

        v72 = sub_10076D9AC();
        sub_10000A61C(v72, qword_1009A23B0);
        sub_10076D98C();
        v73 = v163;
        v163[3] = &type metadata for CGFloat;
        v73[4] = &protocol witness table for CGFloat;
        *v73 = v74;
        goto LABEL_22;
      }

      goto LABEL_84;
    }

LABEL_85:
    if (qword_100941220 != -1)
    {
      swift_once();
    }

    v137 = sub_10076D9AC();
    v138 = sub_10000A61C(v137, qword_1009A23E0);
    v139 = v163;
    v163[3] = v137;
    v139[4] = &protocol witness table for StaticDimension;
    v140 = sub_10000DB7C(v139);
    (*(*(v137 - 8) + 16))(v140, v138, v137);
    sub_10000CFBC(v162, &unk_1009568A0);
    v69 = &qword_100942F28;
    v68 = v62;
    return sub_10000CFBC(v68, v69);
  }

  if (v66 == enum case for Shelf.ContentType.titledParagraph(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v75 = v157;
    sub_100016E2C(&v62[v64], v157, &unk_1009568A0);
    v76 = v65(v75, v59);
    v160 = v75;
    if (v76 == enum case for Shelf.ContentType.productMediaItem(_:))
    {
      goto LABEL_16;
    }

LABEL_84:
    (*(v56 + 8))(v160, v59);
    goto LABEL_85;
  }

  if (v66 == enum case for Shelf.ContentType.reviewSummary(_:))
  {
    goto LABEL_21;
  }

  v86 = enum case for Shelf.ContentType.editorsChoice(_:);
  if (v66 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    v87 = v153;
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v61(v87, v13);
    v89 = v154;
    v88 = v155;
    v90 = v156;
    (*(v155 + 104))(v154, enum case for ShelfBackground.editorsChoice(_:), v156);
    v91 = v158;
    v92 = sub_1007621DC();
    v93 = *(v88 + 8);
    v93(v89, v90);
    v93(v91, v90);
    if ((v92 & 1) == 0)
    {
      goto LABEL_85;
    }

    v94 = v163;
    v163[3] = &type metadata for CGFloat;
    v94[4] = &protocol witness table for CGFloat;
    *v94 = 0x403E000000000000;
    goto LABEL_22;
  }

  if (v66 == enum case for Shelf.ContentType.productMediaItem(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) != 1)
    {
      v95 = v152;
      sub_100016E2C(&v62[v64], v152, &unk_1009568A0);
      v96 = v65(v95, v59);
      if (v96 == enum case for Shelf.ContentType.ribbonFlow(_:) || v96 == enum case for Shelf.ContentType.productRatings(_:))
      {
        sub_10000CFBC(&v62[v64], &unk_1009568A0);
        (*(v56 + 8))(v62, v59);
        if (qword_100941220 != -1)
        {
          swift_once();
        }

        v77 = sub_10076D9AC();
        v78 = v77;
        v79 = qword_1009A23E0;
        goto LABEL_19;
      }

      (*(v56 + 8))(v95, v59);
    }

LABEL_16:
    sub_10000CFBC(&v62[v64], &unk_1009568A0);
    (*(v56 + 8))(v62, v59);
    if (qword_100941208 != -1)
    {
      swift_once();
    }

    v77 = sub_10076D9AC();
    v78 = v77;
    v79 = qword_1009A2398;
LABEL_19:
    v80 = sub_10000A61C(v77, v79);
    v81 = v163;
    v163[3] = v78;
    v81[4] = &protocol witness table for StaticDimension;
    v82 = sub_10000DB7C(v81);
    (*(*(v78 - 8) + 16))(v82, v80, v78);
    v69 = &unk_1009568A0;
    v68 = v162;
    return sub_10000CFBC(v68, v69);
  }

  if (v66 == enum case for Shelf.ContentType.productRatings(_:))
  {
LABEL_21:
    v83 = sub_10076220C();
    v84 = v163;
    v163[3] = v83;
    v84[4] = sub_1003D8834(&qword_10094DFA0, &type metadata accessor for SpacerDimension);
    sub_10000DB7C(v84);
    sub_1007621FC();
    goto LABEL_22;
  }

  v97 = enum case for Shelf.ContentType.productReview(_:);
  if (v66 == enum case for Shelf.ContentType.productReview(_:))
  {
    v98 = v66;
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v99 = v151;
    sub_100016E2C(&v62[v64], v151, &unk_1009568A0);
    v100 = v65(v99, v59);
    if (v100 == v98)
    {
      v101 = v148;
      sub_10076460C();
      sub_10076C2BC();
      v103 = v102;
      (*(v149 + 8))(v101, v150);
      v104 = v163;
      v163[3] = &type metadata for CGFloat;
      v104[4] = &protocol witness table for CGFloat;
      *v104 = v103;
      goto LABEL_22;
    }

    if (v100 == enum case for Shelf.ContentType.productReviewAction(_:))
    {
      goto LABEL_21;
    }

    v160 = v99;
    if (v100 != enum case for Shelf.ContentType.linkableText(_:))
    {
      goto LABEL_84;
    }

    v115 = v163;
    v163[3] = &type metadata for Double;
    v115[4] = &protocol witness table for Double;
    *v115 = 0;
LABEL_22:
    sub_10000CFBC(v162, &unk_1009568A0);
    sub_10000CFBC(&v62[v64], &unk_1009568A0);
    return (*(v56 + 8))(v62, v59);
  }

  v105 = enum case for Shelf.ContentType.productReviewAction(_:);
  if (v66 == enum case for Shelf.ContentType.productReviewAction(_:))
  {
    v105 = v66;
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v106 = v160;
    sub_100016E2C(&v62[v64], v160, &unk_1009568A0);
    v107 = v65(v106, v59);
    if (v107 == v97)
    {
      if (qword_100941210 != -1)
      {
        swift_once();
      }

      v108 = sub_10076D9AC();
      v109 = v108;
      v110 = qword_1009A23B0;
LABEL_53:
      v112 = sub_10000A61C(v108, v110);
      v113 = v163;
      v163[3] = v109;
      v113[4] = &protocol witness table for StaticDimension;
      v114 = sub_10000DB7C(v113);
      (*(*(v109 - 8) + 16))(v114, v112, v109);
      goto LABEL_22;
    }

    goto LABEL_49;
  }

  if (v66 == enum case for Shelf.ContentType.linkableText(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v111 = v147;
    sub_100016E2C(&v62[v64], v147, &unk_1009568A0);
    v107 = v65(v111, v59);
    v160 = v111;
LABEL_49:
    if (v107 != v105)
    {
      goto LABEL_84;
    }

LABEL_50:
    if (qword_100941218 != -1)
    {
      swift_once();
    }

    v108 = sub_10076D9AC();
    v109 = v108;
    v110 = qword_1009A23C8;
    goto LABEL_53;
  }

  if (v66 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    goto LABEL_5;
  }

  if (v66 == enum case for Shelf.ContentType.privacyHeader(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v116 = v146;
    sub_100016E2C(&v62[v64], v146, &unk_1009568A0);
    v117 = v65(v116, v59);
    v160 = v116;
    if (v117 != enum case for Shelf.ContentType.privacyType(_:))
    {
      goto LABEL_84;
    }

    goto LABEL_50;
  }

  if (v66 == enum case for Shelf.ContentType.privacyType(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v118 = v145;
    sub_100016E2C(&v62[v64], v145, &unk_1009568A0);
    v119 = v65(v118, v59);
    v160 = v118;
    if (v119 != enum case for Shelf.ContentType.privacyFooter(_:))
    {
      goto LABEL_84;
    }

    goto LABEL_5;
  }

  if (v66 == enum case for Shelf.ContentType.appPromotion(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v120 = v144;
    sub_100016E2C(&v62[v64], v144, &unk_1009568A0);
    v121 = v65(v120, v59);
    v160 = v120;
    if (v121 != v86)
    {
      goto LABEL_84;
    }

    goto LABEL_21;
  }

  v122 = v64;
  if (v66 != enum case for Shelf.ContentType.productBadge(_:))
  {
    v129 = v66;
    v130 = enum case for Shelf.ContentType.accessibilityFeatures(_:);
    if (v66 == enum case for Shelf.ContentType.accessibilityFeatures(_:))
    {
      v56 = v165;
      v62 = v166;
      v59 = v164;
      if ((*(v165 + 48))(&v166[v64], 1, v164) == 1)
      {
        goto LABEL_85;
      }

      v131 = v142;
      sub_100016E2C(&v62[v64], v142, &unk_1009568A0);
      v132 = v65(v131, v59);
      v160 = v131;
      if (v132 != enum case for Shelf.ContentType.accessibilityParagraph(_:))
      {
        goto LABEL_84;
      }
    }

    else
    {
      v56 = v165;
      v62 = v166;
      v59 = v164;
      if (v66 != enum case for Shelf.ContentType.accessibilityParagraph(_:) || (*(v165 + 48))(&v166[v64], 1, v164) == 1)
      {
        goto LABEL_85;
      }

      v135 = v141;
      sub_100016E2C(&v62[v64], v141, &unk_1009568A0);
      v136 = v65(v135, v59);
      if (v136 != v130)
      {
        v160 = v141;
        if (v136 != v129)
        {
          goto LABEL_84;
        }
      }
    }

    sub_10000CFBC(&v62[v64], &unk_1009568A0);
    (*(v56 + 8))(v62, v59);
    v133 = sub_10076220C();
    v134 = v163;
    v163[3] = v133;
    v134[4] = sub_1003D8834(&qword_10094DFA0, &type metadata accessor for SpacerDimension);
    sub_10000DB7C(v134);
    sub_1007621FC();
    goto LABEL_6;
  }

  v56 = v165;
  v62 = v166;
  v59 = v164;
  if ((*(v165 + 48))(&v166[v64], 1, v164) == 1)
  {
LABEL_5:
    sub_10000CFBC(&v62[v64], &unk_1009568A0);
    (*(v56 + 8))(v62, v59);
    v67 = v163;
    v163[3] = &type metadata for Double;
    v67[4] = &protocol witness table for Double;
    *v67 = 0;
LABEL_6:
    v68 = v162;
    v69 = &unk_1009568A0;
    return sub_10000CFBC(v68, v69);
  }

  v123 = v143;
  sub_100016E2C(&v62[v122], v143, &unk_1009568A0);
  if (v65(v123, v59) != enum case for Shelf.ContentType.smallLockup(_:))
  {
    v59 = v164;
    v56 = v165;
    (*(v165 + 8))(v143, v164);
    v62 = v166;
    v64 = v122;
    goto LABEL_5;
  }

  if (qword_100941210 != -1)
  {
    swift_once();
  }

  v124 = sub_10076D9AC();
  v125 = sub_10000A61C(v124, qword_1009A23B0);
  v126 = v163;
  v163[3] = v124;
  v126[4] = &protocol witness table for StaticDimension;
  v127 = sub_10000DB7C(v126);
  (*(*(v124 - 8) + 16))(v127, v125, v124);
  sub_10000CFBC(v162, &unk_1009568A0);
  v128 = v166;
  sub_10000CFBC(&v166[v122], &unk_1009568A0);
  return (*(v165 + 8))(v128, v164);
}

uint64_t sub_1003D7354@<X0>(uint64_t *a1@<X8>)
{
  v147 = a1;
  v1 = sub_1007621EC();
  v141 = *(v1 - 8);
  v142 = v1;
  __chkstk_darwin(v1);
  v140 = &v130 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v139 = &v130 - v4;
  v146 = sub_10000A5D4(&qword_100942F28);
  __chkstk_darwin(v146);
  v150 = &v130 - v5;
  v6 = sub_10076B5BC();
  v7 = *(v6 - 8);
  v148 = v6;
  v149 = v7;
  __chkstk_darwin(v6);
  v9 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_100946720);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v144 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v130 - v14;
  v16 = sub_10000A5D4(&qword_1009499A0);
  __chkstk_darwin(v16 - 8);
  v18 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v130 - v20;
  __chkstk_darwin(v22);
  v24 = &v130 - v23;
  v25 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v25 - 8);
  v131 = &v130 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v130 = &v130 - v28;
  __chkstk_darwin(v29);
  v138 = &v130 - v30;
  __chkstk_darwin(v31);
  v135 = &v130 - v32;
  __chkstk_darwin(v33);
  v145 = &v130 - v34;
  __chkstk_darwin(v35);
  v136 = &v130 - v36;
  __chkstk_darwin(v37);
  v143 = &v130 - v38;
  __chkstk_darwin(v39);
  v137 = &v130 - v40;
  __chkstk_darwin(v41);
  v134 = &v130 - v42;
  __chkstk_darwin(v43);
  v133 = &v130 - v44;
  __chkstk_darwin(v45);
  v132 = &v130 - v46;
  __chkstk_darwin(v47);
  v49 = &v130 - v48;
  sub_10076463C();
  sub_10000CFBC(v21, &qword_1009499A0);
  sub_10002AB4C(v18, v24);
  if ((*(v11 + 48))(v24, 1, v10) == 1)
  {
    sub_10000CFBC(v24, &qword_1009499A0);
    v50 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_10076F49C();

    (*(v11 + 8))(v24, v10);
    v50 = 0;
  }

  v51 = v148;
  v52 = v149;
  (*(v149 + 56))(v49, v50, 1, v148);
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v53 = v49;
  v54 = *(v11 + 8);
  v55 = v15;
  v56 = v51;
  v54(v55, v10);
  v57 = *(v52 + 32);
  v58 = v150;
  v59 = v9;
  v60 = v52;
  v61 = *(v146 + 48);
  v57(v150, v59, v56);
  v146 = v53;
  sub_100016E2C(v53, &v58[v61], &unk_1009568A0);
  v62 = *(v60 + 88);
  v63 = v62(v58, v56);
  if (v63 == enum case for Shelf.ContentType.productTopLockup(_:))
  {
LABEL_5:
    sub_10000CFBC(&v58[v61], &unk_1009568A0);
    (*(v60 + 8))(v58, v56);
    if (qword_100941208 != -1)
    {
      swift_once();
    }

    v64 = sub_10076D9AC();
    v65 = v64;
    v66 = qword_1009A2398;
LABEL_12:
    v67 = sub_10000A61C(v64, v66);
    v68 = v147;
    v147[3] = v65;
    v68[4] = &protocol witness table for StaticDimension;
    v69 = sub_10000DB7C(v68);
    (*(*(v65 - 8) + 16))(v69, v67, v65);
    v70 = &unk_1009568A0;
    v71 = v146;
    return sub_10000CFBC(v71, v70);
  }

  if (v63 == enum case for Shelf.ContentType.annotation(_:))
  {
LABEL_9:
    sub_10000CFBC(&v58[v61], &unk_1009568A0);
    (*(v60 + 8))(v58, v56);
    if (qword_100941210 != -1)
    {
      swift_once();
    }

    v64 = sub_10076D9AC();
    v65 = v64;
    v66 = qword_1009A23B0;
    goto LABEL_12;
  }

  if (v63 == enum case for Shelf.ContentType.titledParagraph(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) != 1)
    {
      v73 = v143;
      sub_100016E2C(&v58[v61], v143, &unk_1009568A0);
      v74 = v62(v73, v56);
      v145 = v73;
      if (v74 == enum case for Shelf.ContentType.productMediaItem(_:))
      {
        goto LABEL_5;
      }

      goto LABEL_52;
    }

LABEL_53:
    if (qword_100941220 != -1)
    {
      swift_once();
    }

    v106 = sub_10076D9AC();
    v107 = sub_10000A61C(v106, qword_1009A23E0);
    v108 = v147;
    v147[3] = v106;
    v108[4] = &protocol witness table for StaticDimension;
    v109 = sub_10000DB7C(v108);
    (*(*(v106 - 8) + 16))(v109, v107, v106);
    sub_10000CFBC(v146, &unk_1009568A0);
    v70 = &qword_100942F28;
    v71 = v58;
    return sub_10000CFBC(v71, v70);
  }

  if (v63 == enum case for Shelf.ContentType.reviewSummary(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_53;
    }

    v75 = v138;
    sub_100016E2C(&v58[v61], v138, &unk_1009568A0);
    v76 = v62(v75, v56);
    v145 = v75;
    if (v76 == enum case for Shelf.ContentType.productReview(_:))
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

  if (v63 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    sub_10076468C();
    swift_getKeyPath();
    v78 = v61;
    v79 = v139;
    v80 = v144;
    sub_10076F49C();

    v54(v80, v10);
    v82 = v140;
    v81 = v141;
    v83 = v142;
    (*(v141 + 104))(v140, enum case for ShelfBackground.editorsChoice(_:), v142);
    v84 = sub_1007621DC();
    v85 = *(v81 + 8);
    v85(v82, v83);
    v85(v79, v83);
    if ((v84 & 1) == 0)
    {
      goto LABEL_53;
    }

    v86 = v146;
    v87 = v147;
    v147[3] = &type metadata for CGFloat;
    v87[4] = &protocol witness table for CGFloat;
    *v87 = 0x403E000000000000;
    sub_10000CFBC(v86, &unk_1009568A0);
    v88 = &v58[v78];
    goto LABEL_35;
  }

  if (v63 == enum case for Shelf.ContentType.productMediaItem(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_5;
    }

    v89 = v137;
    sub_100016E2C(&v58[v61], v137, &unk_1009568A0);
    if (v62(v89, v56) != enum case for Shelf.ContentType.productRatings(_:))
    {
      (*(v60 + 8))(v89, v56);
      goto LABEL_5;
    }

    if (qword_100941220 != -1)
    {
      swift_once();
    }

    v90 = sub_10076D9AC();
    v91 = v90;
    v92 = qword_1009A23E0;
    goto LABEL_31;
  }

  if (v63 == enum case for Shelf.ContentType.productRatings(_:))
  {
LABEL_33:
    v96 = sub_10076220C();
    v97 = v147;
    v147[3] = v96;
    v97[4] = sub_1003D8834(&qword_10094DFA0, &type metadata accessor for SpacerDimension);
    sub_10000DB7C(v97);
    sub_1007621FC();
    goto LABEL_34;
  }

  v98 = enum case for Shelf.ContentType.productReview(_:);
  if (v63 == enum case for Shelf.ContentType.productReview(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_53;
    }

    v99 = v145;
    sub_100016E2C(&v58[v61], v145, &unk_1009568A0);
    v100 = v62(v99, v56);
    if (v100 != enum case for Shelf.ContentType.productReviewAction(_:))
    {
      if (v100 == enum case for Shelf.ContentType.linkableText(_:))
      {
LABEL_21:
        v77 = v147;
        v147[3] = &type metadata for Double;
        v77[4] = &protocol witness table for Double;
        *v77 = 0;
LABEL_34:
        sub_10000CFBC(v146, &unk_1009568A0);
        v88 = &v58[v61];
LABEL_35:
        sub_10000CFBC(v88, &unk_1009568A0);
        return (*(v60 + 8))(v58, v56);
      }

LABEL_52:
      (*(v60 + 8))(v145, v56);
      goto LABEL_53;
    }

    goto LABEL_33;
  }

  v101 = enum case for Shelf.ContentType.productReviewAction(_:);
  if (v63 == enum case for Shelf.ContentType.productReviewAction(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) != 1)
    {
      v102 = v136;
      sub_100016E2C(&v58[v61], v136, &unk_1009568A0);
      v103 = v62(v102, v56);
      v145 = v102;
      if (v103 == v98)
      {
        goto LABEL_9;
      }

      goto LABEL_52;
    }

    goto LABEL_53;
  }

  if (v63 == enum case for Shelf.ContentType.linkableText(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_53;
    }

    v104 = v135;
    sub_100016E2C(&v58[v61], v135, &unk_1009568A0);
    v105 = v62(v104, v56);
    v145 = v104;
    if (v105 != v101)
    {
      goto LABEL_52;
    }

    goto LABEL_48;
  }

  if (v63 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    goto LABEL_57;
  }

  if (v63 == enum case for Shelf.ContentType.privacyHeader(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_53;
    }

    v111 = v134;
    sub_100016E2C(&v58[v61], v134, &unk_1009568A0);
    v112 = v62(v111, v56);
    v145 = v111;
    if (v112 != enum case for Shelf.ContentType.privacyType(_:))
    {
      goto LABEL_52;
    }

LABEL_48:
    if (qword_100941218 != -1)
    {
      swift_once();
    }

    v90 = sub_10076D9AC();
    v91 = v90;
    v92 = qword_1009A23C8;
LABEL_31:
    v93 = sub_10000A61C(v90, v92);
    v94 = v147;
    v147[3] = v91;
    v94[4] = &protocol witness table for StaticDimension;
    v95 = sub_10000DB7C(v94);
    (*(*(v91 - 8) + 16))(v95, v93, v91);
    goto LABEL_34;
  }

  if (v63 == enum case for Shelf.ContentType.privacyType(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_53;
    }

    v113 = v133;
    sub_100016E2C(&v58[v61], v133, &unk_1009568A0);
    v114 = v62(v113, v56);
    v145 = v113;
    if (v114 != enum case for Shelf.ContentType.privacyFooter(_:))
    {
      goto LABEL_52;
    }

    goto LABEL_57;
  }

  if (v63 != enum case for Shelf.ContentType.productBadge(_:))
  {
    v122 = enum case for Shelf.ContentType.accessibilityFeatures(_:);
    if (v63 == enum case for Shelf.ContentType.accessibilityFeatures(_:))
    {
      if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
      {
        goto LABEL_53;
      }

      v123 = v131;
      sub_100016E2C(&v58[v61], v131, &unk_1009568A0);
      v124 = v62(v123, v56);
      v145 = v123;
      if (v124 != enum case for Shelf.ContentType.accessibilityParagraph(_:))
      {
        goto LABEL_52;
      }
    }

    else
    {
      v127 = v63;
      if (v63 != enum case for Shelf.ContentType.accessibilityParagraph(_:) || (*(v60 + 48))(&v58[v61], 1, v56) == 1)
      {
        goto LABEL_53;
      }

      v128 = v130;
      sub_100016E2C(&v58[v61], v130, &unk_1009568A0);
      v129 = v62(v128, v56);
      if (v129 != v122)
      {
        v145 = v130;
        if (v129 != v127)
        {
          goto LABEL_52;
        }
      }
    }

    sub_10000CFBC(&v58[v61], &unk_1009568A0);
    (*(v60 + 8))(v58, v56);
    v125 = sub_10076220C();
    v126 = v147;
    v147[3] = v125;
    v126[4] = sub_1003D8834(&qword_10094DFA0, &type metadata accessor for SpacerDimension);
    sub_10000DB7C(v126);
    sub_1007621FC();
LABEL_58:
    v71 = v146;
    v70 = &unk_1009568A0;
    return sub_10000CFBC(v71, v70);
  }

  if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
  {
LABEL_57:
    sub_10000CFBC(&v58[v61], &unk_1009568A0);
    (*(v60 + 8))(v58, v56);
    v110 = v147;
    v147[3] = &type metadata for Double;
    v110[4] = &protocol witness table for Double;
    *v110 = 0;
    goto LABEL_58;
  }

  v115 = &v58[v61];
  v116 = v132;
  sub_100016E2C(v115, v132, &unk_1009568A0);
  if (v62(v116, v56) != enum case for Shelf.ContentType.smallLockup(_:))
  {
    v56 = v148;
    v60 = v149;
    (*(v149 + 8))(v132, v148);
    v58 = v150;
    goto LABEL_57;
  }

  if (qword_100941210 != -1)
  {
    swift_once();
  }

  v117 = sub_10076D9AC();
  v118 = sub_10000A61C(v117, qword_1009A23B0);
  v119 = v147;
  v147[3] = v117;
  v119[4] = &protocol witness table for StaticDimension;
  v120 = sub_10000DB7C(v119);
  (*(*(v117 - 8) + 16))(v120, v118, v117);
  sub_10000CFBC(v146, &unk_1009568A0);
  v121 = v150;
  sub_10000CFBC(&v150[v61], &unk_1009568A0);
  return (*(v149 + 8))(v121, v148);
}