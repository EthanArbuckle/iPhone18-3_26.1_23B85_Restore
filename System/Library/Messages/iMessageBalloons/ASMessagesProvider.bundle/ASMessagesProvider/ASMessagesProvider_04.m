id sub_80994()
{
  v1 = v0;
  v24 = sub_760AD0();
  v2 = *(v24 - 8);
  __chkstk_darwin(v24);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_75BE90();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v22[-v11];
  v13 = [v0 traitCollection];
  v14 = sub_769A00();

  if ((v14 & 1) == 0)
  {
    v15 = OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_style;
    swift_beginAccess();
    (*(v6 + 16))(v12, &v1[v15], v5);
    (*(v6 + 104))(v8, enum case for PrivacyTypeStyle.detailPage(_:), v5);
    sub_84814();
    sub_769430();
    sub_769430();
    if (v27 == v25 && v28 == v26)
    {
      v16 = *(v6 + 8);
      v16(v8, v5);
      v16(v12, v5);
    }

    else
    {
      v23 = sub_76A950();
      v17 = *(v6 + 8);
      v17(v8, v5);
      v17(v12, v5);

      if ((v23 & 1) == 0)
      {
        [*&v1[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_titleLabel] setTextAlignment:1];
        [*&v1[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_detailLabel] setTextAlignment:1];
        return [v1 setNeedsLayout];
      }
    }
  }

  v18 = enum case for DirectionalTextAlignment.leading(_:);
  v19 = *(v2 + 104);
  v20 = v24;
  v19(v4, enum case for DirectionalTextAlignment.leading(_:), v24);
  sub_75BA90();
  v19(v4, v18, v20);
  sub_75BA90();
  return [v1 setNeedsLayout];
}

id sub_80D5C(void *a1)
{
  v2 = v1;
  v4 = sub_7593D0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&qword_94BAC0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v20 - v10;
  if (a1)
  {
    [a1 removeFromSuperview];
  }

  v12 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_shadowView];
  if (v12)
  {
    v13 = qword_93C558;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = sub_765080();
    v16 = sub_BE38(v15, qword_99B568);
    v17 = *(v15 - 8);
    (*(v17 + 16))(v11, v16, v15);
    (*(v17 + 56))(v11, 0, 1, v15);
    sub_758E60();
    (*(v5 + 104))(v7, enum case for CornerStyle.continuous(_:), v4);
    sub_758E70();
    (*(v5 + 8))(v7, v4);
    v18 = [v2 contentView];
    [v18 insertSubview:v14 atIndex:0];
  }

  return [v2 setNeedsLayout];
}

id sub_80FDC(void *a1)
{
  v2 = v1;
  v4 = sub_7593D0();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    [a1 removeFromSuperview];
  }

  v9 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_roundedCornerView];
  if (v9)
  {
    v10 = qword_93C2C0;
    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    [v11 setBackgroundColor:qword_941D88];
    (*(v5 + 104))(v8, enum case for CornerStyle.continuous(_:), v4);
    sub_75CCD0();
    (*(v5 + 8))(v8, v4);
    v12 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_shadowView];
    if (v12)
    {
      v13 = v12;
      v14 = [v2 contentView];
      [v14 insertSubview:v11 aboveSubview:v13];
    }

    else
    {
      v14 = [v2 contentView];
      [v14 insertSubview:v11 atIndex:0];
    }
  }

  return [v2 setNeedsLayout];
}

id sub_811FC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *&v3[*a3];
  result = [v6 text];
  if (result)
  {
    v8 = result;
    v9 = sub_769240();
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

    v13 = sub_76A950();

    if (v13)
    {
      goto LABEL_16;
    }
  }

  else if (!a2)
  {
    return result;
  }

  v14 = sub_769210();
LABEL_12:

  [v6 setText:v14];

  return [v3 setNeedsLayout];
}

void sub_81358()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_categories];
  if (!(v1 >> 62))
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_12:
    [v0 setNeedsLayout];
    return;
  }

  v2 = sub_76A860();
  if (!v2)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_categoryViews;
    v7 = v1 & 0xC000000000000001;
    v8 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_contentContainerView];

    v4 = 0;
    do
    {
      if (v7)
      {
        v5 = sub_76A770();
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      swift_beginAccess();
      sub_BD88(&qword_941E18);
      sub_767450();
      swift_endAccess();
      *&v9[OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_category] = v5;
      swift_retain_n();

      sub_4DA5B8();

      [v8 addSubview:v9];
      swift_beginAccess();
      v6 = v9;
      sub_769440();
      if (*(&dword_10 + (*&v0[v3] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v0[v3] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      ++v4;
      sub_769500();
      swift_endAccess();
    }

    while (v2 != v4);

    goto LABEL_12;
  }

  __break(1u);
}

id sub_81588@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for PrivacyCategoryView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *a1 = result;
  return result;
}

id sub_815D4()
{
  v1 = v0;
  v2 = sub_7674E0();
  v50 = *(v2 - 8);
  v51 = v2;
  __chkstk_darwin(v2);
  v52 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v4 - 8);
  v57 = &v50 - v5;
  v6 = sub_BD88(&qword_94C3F0);
  __chkstk_darwin(v6 - 8);
  v53 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v55 = &v50 - v9;
  v10 = sub_75BE90();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v56 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v50 - v14;
  v16 = OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_style;
  swift_beginAccess();
  v17 = *(v11 + 16);
  v17(v15, &v1[v16], v10);
  v54 = v11;
  v18 = *(v11 + 88);
  v19 = v18(v15, v10);
  v20 = enum case for PrivacyTypeStyle.productPage(_:);
  if (v19 == enum case for PrivacyTypeStyle.productPage(_:))
  {
    sub_84390(v1);
    v21 = v1;
  }

  else if (v19 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v19 == enum case for PrivacyTypeStyle.detailPage(_:))
  {
    v21 = v1;
    sub_81DF0(v1);
  }

  else
  {
    sub_84390(v1);
    v23 = v15;
    v21 = v1;
    (*(v54 + 8))(v23, v10);
  }

  v24 = v56;
  v17(v56, &v21[v16], v10);
  v25 = v18(v24, v10);
  if (v25 == v20)
  {
    v26 = sub_767510();
    v27 = v55;
    (*(*(v26 - 8) + 56))(v55, 1, 1, v26);
    v28 = OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_separator;
    swift_beginAccess();
    sub_84734(v27, &v21[v28]);
    swift_endAccess();
    sub_81EB4();
    sub_10A2C(v27, &qword_94C3F0);
    if (qword_93D878 != -1)
    {
      swift_once();
    }

    v29 = sub_7666D0();
    v30 = v29;
    v31 = qword_99F160;
LABEL_23:
    v46 = sub_BE38(v29, v31);
    v47 = *(v30 - 8);
    v48 = v57;
    (*(v47 + 16))(v57, v46, v30);
    (*(v47 + 56))(v48, 0, 1, v30);
    sub_75BA40();
    goto LABEL_24;
  }

  if (v25 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v25 == enum case for PrivacyTypeStyle.detailPage(_:))
  {
    v39 = v21;
    v40 = OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_separator;
    swift_beginAccess();
    v41 = v53;
    sub_847A4(&v39[v40], v53);
    v42 = sub_767510();
    v43 = *(v42 - 8);
    v44 = (*(v43 + 48))(v41, 1, v42);
    sub_10A2C(v41, &qword_94C3F0);
    if (v44 == 1)
    {
      (*(v50 + 104))(v52, enum case for Separator.Position.top(_:), v51);
      v58[3] = sub_766970();
      v58[4] = &protocol witness table for ZeroDimension;
      sub_B1B4(v58);
      sub_766960();
      v45 = v55;
      sub_7674F0();
      (*(v43 + 56))(v45, 0, 1, v42);
      swift_beginAccess();
      sub_84734(v45, &v39[v40]);
      swift_endAccess();
      sub_81EB4();
      sub_10A2C(v45, &qword_94C3F0);
    }

    v21 = v39;
    if (qword_93D880 != -1)
    {
      swift_once();
    }

    v29 = sub_7666D0();
    v30 = v29;
    v31 = qword_99F178;
    goto LABEL_23;
  }

  v32 = sub_767510();
  v33 = v55;
  (*(*(v32 - 8) + 56))(v55, 1, 1, v32);
  v34 = OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_separator;
  swift_beginAccess();
  sub_84734(v33, &v21[v34]);
  swift_endAccess();
  sub_81EB4();
  sub_10A2C(v33, &qword_94C3F0);
  if (qword_93D878 != -1)
  {
    swift_once();
  }

  v35 = sub_7666D0();
  v36 = sub_BE38(v35, qword_99F160);
  v37 = *(v35 - 8);
  v38 = v57;
  (*(v37 + 16))(v57, v36, v35);
  (*(v37 + 56))(v38, 0, 1, v35);
  sub_75BA40();
  (*(v54 + 8))(v24, v10);
LABEL_24:
  sub_80994();
  return [v21 setNeedsLayout];
}

id sub_81DF0(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_shadowView);
  *(a1 + OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_shadowView) = 0;
  sub_80D5C(v2);

  v3 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_roundedCornerView);
  if (v3)
  {
    [v3 setHidden:1];
  }

  v4 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_contentContainerView);
  sub_BE70(0, &qword_93E540);
  v5 = sub_76A000();
  [v4 setBackgroundColor:v5];

  return [v4 _setContinuousCornerRadius:0.0];
}

id sub_81EB4()
{
  v1 = sub_BD88(&qword_94C3F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v28 - v2;
  v4 = sub_767510();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_separator;
  swift_beginAccess();
  sub_847A4(&v0[v11], v3);
  v12 = &unk_90D000;
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10A2C(v3, &qword_94C3F0);
    v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_separatorView];
    if (v13)
    {
      [v13 setHidden:1];
    }
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    v14 = OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_separatorView;
    v15 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_separatorView];
    if (v15)
    {
      (*(v5 + 16))(v7, v10, v4);
      v16 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
      swift_beginAccess();
      v17 = *(v5 + 24);
      v18 = v15;
      v17(&v15[v16], v7, v4);
      swift_endAccess();
      v19 = v18;
      v12 = &unk_90D000;
      [v19 setNeedsLayout];
      v20 = *(v5 + 8);
      v20(v7, v4);
      [v19 setHidden:0];

      v20(v10, v4);
    }

    else
    {
      (*(v5 + 16))(v7, v10, v4);
      v21 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v22 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
      swift_beginAccess();
      v29 = *(v5 + 40);
      v23 = v21;
      v29(&v21[v22], v7, v4);
      swift_endAccess();

      v24 = *&v0[v14];
      if (v24)
      {
        [v24 removeFromSuperview];
        v25 = *&v0[v14];
      }

      else
      {
        v25 = 0;
      }

      *&v0[v14] = v23;
      v26 = v23;

      [*&v0[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_contentContainerView] addSubview:v26];
      v12 = &unk_90D000;
      [v0 setNeedsLayout];

      (*(v5 + 8))(v10, v4);
    }
  }

  return [v0 v12[463]];
}

uint64_t sub_82294()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7664F0();
  v57 = *(v3 - 8);
  v58 = v3;
  __chkstk_darwin(v3);
  v56 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75BE90();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75CBD0();
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_75CBF0();
  v53 = *(v55 - 8);
  *&v12 = __chkstk_darwin(v55).n128_u64[0];
  v51 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86.receiver = v1;
  v86.super_class = ObjectType;
  objc_msgSendSuper2(&v86, "layoutSubviews", v12);
  v14 = [v1 contentView];
  v15 = sub_BE70(0, &qword_93E550);
  sub_75D650();

  v16 = OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_style;
  swift_beginAccess();
  v17 = *(v6 + 16);
  v49 = v6 + 16;
  v50 = v16;
  v48 = v17;
  v17(v8, &v1[v16], v5);

  v52 = v11;
  sub_827CC(v18, v8, v1, v11);

  v19 = *(v6 + 8);
  v54 = v5;
  v19(v8, v5);
  v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_shadowView];
  v47 = v20;
  if (v20)
  {
    v21 = sub_758E80();
    v22 = &protocol witness table for UIView;
    v23 = v20;
  }

  else
  {
    v23 = 0;
    v21 = 0;
    v22 = 0;
    v82 = 0;
    v83 = 0;
  }

  v81 = v23;
  v84 = v21;
  v85 = v22;
  v24 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_roundedCornerView];
  if (v24)
  {
    v25 = sub_75CD70();
    v26 = &protocol witness table for UIView;
    v27 = v24;
  }

  else
  {
    v27 = 0;
    v25 = 0;
    v26 = 0;
    v77 = 0;
    v78 = 0;
  }

  v76 = v27;
  v79 = v25;
  v80 = v26;
  v28 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_contentContainerView];
  v74 = v15;
  v75 = &protocol witness table for UIView;
  v73 = v28;
  v29 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_separatorView];
  if (v29)
  {
    v30 = type metadata accessor for SeparatorView();
    v31 = &protocol witness table for UIView;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v69 = 0;
    v70 = 0;
  }

  v68 = v29;
  v71 = v30;
  v72 = v31;
  v32 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_iconView];
  v66 = sub_759210();
  v67 = &protocol witness table for UIView;
  v65 = v32;
  v33 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_titleLabel];
  v63 = sub_75BB20();
  v64 = &protocol witness table for UILabel;
  v34 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_detailLabel];
  v61 = &protocol witness table for UILabel;
  v62 = v33;
  v60 = v63;
  v59 = v34;
  v35 = OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_categoryViews;
  swift_beginAccess();
  v36 = *&v1[v35];
  v37 = v24;
  v38 = v28;
  v39 = v29;
  v40 = v32;
  v41 = v33;
  v42 = v34;

  v43 = v47;
  sub_140C10(v36);

  v48(v8, &v1[v50], v54);
  v44 = v51;
  sub_75CBE0();
  v45 = v56;
  sub_75CB10();
  (*(v57 + 8))(v45, v58);
  return (*(v53 + 8))(v44, v55);
}

uint64_t sub_827CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void (*a4)(void, void, void)@<X8>)
{
  v56 = a3;
  v49 = a2;
  v48 = sub_75CB60();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75BE90();
  v50 = *(v7 - 8);
  v51 = v7;
  __chkstk_darwin(v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_76A920();
  v54 = *(v10 - 8);
  v55 = v10;
  __chkstk_darwin(v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_7664A0();
  v52 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = (&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_766CA0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C2C8 != -1)
  {
    swift_once();
  }

  v20 = sub_75CBD0();
  v21 = sub_BE38(v20, qword_99A3D8);
  v22 = *(*(v20 - 8) + 16);
  v53 = a4;
  v22(a4, v21, v20);
  if (!a1)
  {
    goto LABEL_14;
  }

  if (sub_765160())
  {
    if (qword_93C2B8 != -1)
    {
      swift_once();
    }

    v23 = qword_941D80;
    if (sub_765190())
    {
      v24 = sub_759910();
      if (!v24)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if ((sub_765180() & 1) == 0)
      {
        goto LABEL_13;
      }

      v24 = sub_56EBA8(a1, v23);
      if (!v24)
      {
        goto LABEL_13;
      }
    }

    [v24 size];
    v25 = v53;
    sub_75CBC0();
    sub_76A130();
    sub_75CB20();
    v26 = v25;

    v27 = v52;
    goto LABEL_17;
  }

LABEL_13:

LABEL_14:
  if (qword_93D870 != -1)
  {
    swift_once();
  }

  v28 = sub_7666D0();
  v29 = sub_BE38(v28, qword_99F148);
  (*(*(v28 - 8) + 16))(v15, v29, v28);
  v27 = v52;
  v52[13](v15, enum case for FontSource.useCase(_:), v13);
  v61 = v13;
  v62 = &protocol witness table for FontSource;
  v30 = sub_B1B4(v60);
  (v27)[2](v30, v15, v13);
  sub_766CB0();
  (v27[1])(v15, v13);
  sub_766470();
  sub_766700();
  v54[1](v12, v55);
  v26 = v53;
  sub_75CBC0();
  (*(v17 + 8))(v19, v16);
LABEL_17:
  v31 = v50;
  v32 = v51;
  (*(v50 + 16))(v9, v49, v51);
  v33 = (*(v31 + 88))(v9, v32);
  if (v33 == enum case for PrivacyTypeStyle.productPage(_:))
  {
    return sub_83E80(v26, v56);
  }

  if (v33 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v33 == enum case for PrivacyTypeStyle.detailPage(_:))
  {
    v61 = &type metadata for Double;
    v62 = &protocol witness table for Double;
    v60[0] = 0;
    sub_75CB70();
    if (qword_93DCE8 != -1)
    {
      swift_once();
    }

    sub_BE38(v16, qword_99FE00);
    sub_766470();
    sub_766700();
    v36 = v35;
    v54[1](v12, v55);
    v61 = &type metadata for CGFloat;
    v62 = &protocol witness table for CGFloat;
    v60[0] = v36;
    sub_75CBA0();
    (*(v47 + 104))(v46, enum case for PrivacyTypeLayout.Metrics.HorizontalAlignment.leading(_:), v48);
    sub_75CB90();
    if (qword_93C2B0 != -1)
    {
      swift_once();
    }

    v37 = qword_941D78;
    *v15 = qword_941D78;
    v56 = v27[13];
    (v56)(v15, enum case for FontSource.textStyle(_:), v13);
    v61 = v16;
    v62 = &protocol witness table for StaticDimension;
    sub_B1B4(v60);
    v58 = v13;
    v59 = &protocol witness table for FontSource;
    v38 = sub_B1B4(v57);
    v55 = v27[2];
    v55(v38, v15, v13);
    v39 = v37;
    sub_766CB0();
    v54 = v27[1];
    (v54)(v15, v13);
    sub_75CB30();
    if (qword_93D880 != -1)
    {
      swift_once();
    }

    v40 = sub_7666D0();
    v41 = sub_BE38(v40, qword_99F178);
    v53 = *(*(v40 - 8) + 16);
    v53(v15, v41, v40);
    v42 = enum case for FontSource.useCase(_:);
    (v56)(v15, enum case for FontSource.useCase(_:), v13);
    v61 = v16;
    v62 = &protocol witness table for StaticDimension;
    sub_B1B4(v60);
    v52 = v16;
    v58 = v13;
    v59 = &protocol witness table for FontSource;
    v43 = sub_B1B4(v57);
    v55(v43, v15, v13);
    sub_766CB0();
    (v54)(v15, v13);
    sub_75CB40();
    if (qword_93D888 != -1)
    {
      swift_once();
    }

    v44 = sub_BE38(v40, qword_99F190);
    v53(v15, v44, v40);
    (v56)(v15, v42, v13);
    v61 = v52;
    v62 = &protocol witness table for StaticDimension;
    sub_B1B4(v60);
    v58 = v13;
    v59 = &protocol witness table for FontSource;
    v45 = sub_B1B4(v57);
    v55(v45, v15, v13);
    sub_766CB0();
    (v54)(v15, v13);
    return sub_75CB50();
  }

  else
  {
    sub_83E80(v26, v56);
    return (*(v31 + 8))(v9, v32);
  }
}

id sub_83478(uint64_t a1, double a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_roundedCornerView);
  if (v4)
  {
    [v4 setAlpha:a2];
  }

  result = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_shadowView);
  if (result)
  {

    return [result setAlpha:a2];
  }

  return result;
}

uint64_t type metadata accessor for PrivacyTypeCollectionViewCell()
{
  result = qword_941DF0;
  if (!qword_941DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_83780()
{
  sub_839FC(319, &qword_940840, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_83928();
    if (v1 <= 0x3F)
    {
      sub_75BE90();
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

void sub_83928()
{
  if (!qword_941E00)
  {
    sub_133D8(&qword_941E08);
    sub_83998();
    v0 = sub_767490();
    if (!v1)
    {
      atomic_store(v0, &qword_941E00);
    }
  }
}

unint64_t sub_83998()
{
  result = qword_941E10;
  if (!qword_941E10)
  {
    sub_133D8(&qword_941E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_941E10);
  }

  return result;
}

void sub_839FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_83A50()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_83CC4;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_23F0CC;
  v5[3] = &unk_881CC8;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:0.5];
  _Block_release(v3);
}

void sub_83B38()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_83C8C;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_23F0CC;
  v5[3] = &unk_881C78;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:0.4];
  _Block_release(v3);
}

void *sub_83C24()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_contentContainerView);
  v2 = v1;
  return v1;
}

uint64_t sub_83C54()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_83CAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_83CE4(char *a1)
{
  v2 = sub_75BE90();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_style;
  swift_beginAccess();
  (*(v3 + 16))(v5, &a1[v6], v2);
  v7 = (*(v3 + 88))(v5, v2);
  if (v7 == enum case for PrivacyTypeStyle.productPage(_:))
  {
    return sub_84390(a1);
  }

  if (v7 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v7 == enum case for PrivacyTypeStyle.detailPage(_:))
  {
    return sub_81DF0(a1);
  }

  sub_84390(a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_83E80(uint64_t a1, void *a2)
{
  v4 = sub_7664A0();
  v31 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_75CB60();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = &type metadata for Double;
  v37 = &protocol witness table for Double;
  v35[0] = 0x4024000000000000;
  sub_75CB70();
  v36 = &type metadata for Double;
  v37 = &protocol witness table for Double;
  v35[0] = 0x402E000000000000;
  sub_75CBA0();
  v11 = [a2 traitCollection];
  LOBYTE(a2) = sub_769A00();

  v12 = &enum case for PrivacyTypeLayout.Metrics.HorizontalAlignment.leading(_:);
  if ((a2 & 1) == 0)
  {
    v12 = &enum case for PrivacyTypeLayout.Metrics.HorizontalAlignment.center(_:);
  }

  (*(v8 + 104))(v10, *v12, v7);
  sub_75CB90();
  if (qword_93C2B0 != -1)
  {
    swift_once();
  }

  v13 = qword_941D78;
  *v6 = qword_941D78;
  v14 = v31;
  v30 = *(v31 + 104);
  v30(v6, enum case for FontSource.textStyle(_:), v4);
  v29 = sub_766CA0();
  v36 = v29;
  v37 = &protocol witness table for StaticDimension;
  sub_B1B4(v35);
  v33 = v4;
  v34 = &protocol witness table for FontSource;
  v15 = sub_B1B4(v32);
  v28 = *(v14 + 16);
  v28(v15, v6, v4);
  v16 = v13;
  sub_766CB0();
  v17 = *(v14 + 8);
  v31 = v14 + 8;
  v27 = v17;
  v17(v6, v4);
  sub_75CB30();
  v26 = a1;
  if (qword_93D878 != -1)
  {
    swift_once();
  }

  v18 = sub_7666D0();
  v19 = sub_BE38(v18, qword_99F160);
  v20 = *(*(v18 - 8) + 16);
  v20(v6, v19, v18);
  v21 = enum case for FontSource.useCase(_:);
  v30(v6, enum case for FontSource.useCase(_:), v4);
  v36 = v29;
  v37 = &protocol witness table for StaticDimension;
  sub_B1B4(v35);
  v33 = v4;
  v34 = &protocol witness table for FontSource;
  v22 = sub_B1B4(v32);
  v28(v22, v6, v4);
  sub_766CB0();
  v27(v6, v4);
  sub_75CB40();
  if (qword_93D888 != -1)
  {
    swift_once();
  }

  v23 = sub_BE38(v18, qword_99F190);
  v20(v6, v23, v18);
  v30(v6, v21, v4);
  v36 = v29;
  v37 = &protocol witness table for StaticDimension;
  sub_B1B4(v35);
  v33 = v4;
  v34 = &protocol witness table for FontSource;
  v24 = sub_B1B4(v32);
  v28(v24, v6, v4);
  sub_766CB0();
  v27(v6, v4);
  return sub_75CB50();
}

id sub_84390(char *a1)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_shadowView;
  v3 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_shadowView];
  if (v3)
  {
    goto LABEL_2;
  }

  v7 = [a1 traitCollection];
  v8 = [v7 userInterfaceStyle];

  if (v8 != &dword_0 + 2)
  {
    sub_758E80();
    v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v4 = *&a1[v2];
    *&a1[v2] = v9;
    v10 = v9;
    sub_80D5C(v4);

    goto LABEL_7;
  }

  v3 = *&a1[v2];
  if (v3)
  {
LABEL_2:
    v4 = v3;
    v5 = [a1 traitCollection];
    v6 = [v5 userInterfaceStyle];

    [v4 setHidden:v6 == &dword_0 + 2];
LABEL_7:
  }

  v11 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_contentContainerView];
  if (qword_93C2C0 != -1)
  {
    swift_once();
  }

  [v11 setBackgroundColor:qword_941D88];
  [v11 _setContinuousCornerRadius:20.0];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_roundedCornerView;
  result = *&a1[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_roundedCornerView];
  if (result || (sub_75CD70(), v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init], v15 = *&a1[v12], *&a1[v12] = v14, v16 = v14, sub_80FDC(v15), v16, v15, (result = *&a1[v12]) != 0))
  {

    return [result setHidden:0];
  }

  return result;
}

uint64_t sub_8458C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_categoryViews;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (!(v4 >> 62))
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(v1 + v2) = _swiftEmptyArrayStorage;
  }

  result = sub_76A860();
  v5 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v5 >= 1)
  {

    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_76A770();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      swift_beginAccess();
      sub_BD88(&qword_941E18);
      sub_767470();
      swift_endAccess();
      *&v8[OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_category] = 0;

      sub_4DA5B8();
      v10.value.super.isa = 0;
      v10.is_nil = 0;
      sub_7591D0(v10, v9);
      [v8 removeFromSuperview];
    }

    while (v5 != v6);

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_84734(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_94C3F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_847A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_94C3F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_84814()
{
  result = qword_941E20;
  if (!qword_941E20)
  {
    sub_75BE90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_941E20);
  }

  return result;
}

char *sub_8486C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  *&v59 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v5 - 8);
  v7 = &v53 - v6;
  v8 = sub_BD88(&qword_941E08);
  __chkstk_darwin(v8);
  v9 = OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_contentContainerView;
  *&v0[v9] = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_itemLayoutContext;
  v11 = sub_75C840();
  (*(*(v11 - 8) + 56))(&v0[v10], 1, 1, v11);
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_shadowView] = 0;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_roundedCornerView] = 0;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_artwork] = 0;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_categories] = _swiftEmptyArrayStorage;
  type metadata accessor for PrivacyCategoryView();
  sub_7667C0();
  sub_83998();
  sub_767480();
  v12 = OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_style;
  v13 = enum case for PrivacyTypeStyle.productPage(_:);
  v14 = sub_75BE90();
  (*(*(v14 - 8) + 104))(&v1[v12], v13, v14);
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_separatorView] = 0;
  v15 = OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_separator;
  v16 = sub_767510();
  (*(*(v16 - 8) + 56))(&v1[v15], 1, 1, v16);
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_iconView] = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_93D878 != -1)
  {
    swift_once();
  }

  v17 = sub_7666D0();
  v18 = sub_BE38(v17, qword_99F160);
  v19 = *(v17 - 8);
  v57 = *(v19 + 16);
  v57(v7, v18, v17);
  v56 = *(v19 + 56);
  v56(v7, 0, 1, v17);
  v20 = enum case for DirectionalTextAlignment.none(_:);
  v55 = *(v3 + 104);
  v55(v59, enum case for DirectionalTextAlignment.none(_:), v2);
  v21 = sub_75BB20();
  v54 = v2;
  v22 = v21;
  v23 = objc_allocWithZone(v21);
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_titleLabel] = sub_75BB10();
  if (qword_93D888 != -1)
  {
    swift_once();
  }

  v24 = sub_BE38(v17, qword_99F190);
  v57(v7, v24, v17);
  v56(v7, 0, 1, v17);
  v55(v59, v20, v54);
  v25 = objc_allocWithZone(v22);
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_detailLabel] = sub_75BB10();
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_categoryViews] = _swiftEmptyArrayStorage;
  v60.receiver = v1;
  v60.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v60, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v27 = [v26 contentView];
  [v27 setClipsToBounds:0];

  v28 = [v26 contentView];
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v29 = [v26 contentView];
  sub_BE70(0, &qword_93E540);
  v30 = sub_76A000();
  [v29 setBackgroundColor:v30];

  v31 = OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_contentContainerView;
  v32 = *&v26[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_contentContainerView];
  v33 = sub_76A000();
  [v32 setBackgroundColor:v33];

  v34 = [v26 contentView];
  [v34 addSubview:*&v26[v31]];

  v35 = OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_iconView;
  v36 = *&v26[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_iconView];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 clearColor];
  sub_759070();

  v40 = qword_93C2B8;
  v41 = *&v26[v35];
  if (v40 != -1)
  {
    swift_once();
  }

  v42 = qword_941D80;
  sub_759120();

  [*&v26[v31] addSubview:*&v26[v35]];
  v43 = OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_titleLabel;
  v44 = *&v26[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_titleLabel];
  sub_75BAD0();

  [*&v26[v31] addSubview:*&v26[v43]];
  v45 = OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_detailLabel;
  v46 = *&v26[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_detailLabel];
  sub_75BAD0();

  v47 = *&v26[v45];
  v48 = sub_769FF0();
  [v47 setTextColor:v48];

  [*&v26[v31] addSubview:*&v26[v45]];
  sub_80994();
  v49 = [objc_opt_self() defaultCenter];
  [v49 addObserver:v26 selector:"lowMemoryWarning:" name:UIApplicationDidReceiveMemoryWarningNotification object:0];

  sub_BD88(&qword_9477F0);
  v50 = swift_allocObject();
  v59 = xmmword_77B6D0;
  *(v50 + 16) = xmmword_77B6D0;
  *(v50 + 32) = sub_7677C0();
  *(v50 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_769F40();
  swift_unknownObjectRelease();

  v51 = swift_allocObject();
  *(v51 + 16) = v59;
  *(v51 + 32) = sub_767B80();
  *(v51 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_769F40();

  swift_unknownObjectRelease();

  return v26;
}

void sub_85188()
{
  v1 = sub_BD88(&qword_941E08);
  __chkstk_darwin(v1);
  v2 = OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_contentContainerView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_itemLayoutContext;
  v4 = sub_75C840();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_shadowView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_roundedCornerView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_artwork) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_categories) = _swiftEmptyArrayStorage;
  type metadata accessor for PrivacyCategoryView();
  sub_7667C0();
  sub_83998();
  sub_767480();
  v5 = OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_style;
  v6 = enum case for PrivacyTypeStyle.productPage(_:);
  v7 = sub_75BE90();
  (*(*(v7 - 8) + 104))(v0 + v5, v6, v7);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_separatorView) = 0;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_separator;
  v9 = sub_767510();
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  sub_76A840();
  __break(1u);
}

uint64_t type metadata accessor for ScrollablePillView()
{
  result = qword_941E40;
  if (!qword_941E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_85468()
{
  if (qword_93D1B8 != -1)
  {
    swift_once();
  }

  v1 = qword_99DD38;
  qword_99A428 = qword_99DD38;

  return v1;
}

uint64_t sub_854CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_769BA0();
  sub_867FC(a1, &v24);
  sub_134D8(a2, v20);
  if (qword_93C2D0 != -1)
  {
    swift_once();
  }

  v6 = qword_99A428;
  v22 = &type metadata for SearchLinkLayout;
  v23 = sub_8686C();
  v7 = swift_allocObject();
  v21 = v7;
  v8 = sub_86910();
  v9 = swift_allocObject();
  sub_134D8(v20, v9 + 16);
  sub_867FC(&v24, &v18);
  if (v19)
  {
    sub_10914(&v18, v17);
    v10 = swift_allocObject();
    sub_10914(v17, v10 + 16);
    v11 = v6;
    sub_BEB8(v20);
    sub_8699C(&v24);
    v12 = &type metadata for AutoAdjustingPlaceable;
    v13 = v8;
  }

  else
  {
    v14 = v6;
    sub_BEB8(v20);
    sub_8699C(&v24);
    v12 = 0;
    v13 = 0;
    v10 = 0;
  }

  v7[2] = v10;
  v7[3] = 0;
  v7[4] = 0;
  v7[5] = v12;
  v7[6] = v13;
  v7[7] = v9;
  v7[10] = &type metadata for AutoAdjustingPlaceable;
  v7[11] = v8;
  v7[12] = v6;
  v7[13] = 0x4014000000000000;
  v25 = sub_767340();
  v26 = &protocol witness table for Margins;
  sub_B1B4(&v24);
  sub_767330();
  a3[3] = &type metadata for AutoAdjustingPlaceable;
  a3[4] = v8;
  v15 = swift_allocObject();
  *a3 = v15;
  return sub_10914(&v24, v15 + 16);
}

char *sub_85704(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v54 = sub_767030();
  v9 = *(v54 - 8);
  __chkstk_darwin(v54);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v53 - v13;
  __chkstk_darwin(v15);
  v17 = v53 - v16;
  __chkstk_darwin(v18);
  v53[1] = v53 - v19;
  v20 = qword_941E30;
  *&v4[v20] = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v21 = qword_941E38;
  sub_7667B0();
  *&v4[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22 = type metadata accessor for ScrollablePillView();
  v56.receiver = v4;
  v56.super_class = v22;
  v23 = objc_msgSendSuper2(&v56, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = [v27 layer];
  [v28 setCornerCurve:kCACornerCurveContinuous];

  v29 = [v27 layer];
  [v27 bounds];
  [v29 setCornerRadius:CGRectGetHeight(v57) * 0.5];

  v30 = [v27 layer];
  [v30 setBorderWidth:1.0];

  [v27 setNeedsDisplay];
  v31 = [v27 layer];
  if (qword_93D1A0 != -1)
  {
    swift_once();
  }

  v32 = [qword_99DD20 CGColor];
  [v31 setBorderColor:v32];

  [v27 setNeedsDisplay];
  v33 = qword_941E30;
  v34 = qword_93D1A8;
  v35 = *&v27[qword_941E30];
  if (v34 != -1)
  {
    swift_once();
  }

  [v35 setTintColor:qword_99DD28];

  v36 = *&v27[v33];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 clearColor];
  sub_759070();

  v40 = *&v27[v33];
  sub_7590F0();

  v41 = qword_93C2D0;
  v42 = *&v27[v33];
  if (v41 != -1)
  {
    swift_once();
  }

  v43 = [objc_opt_self() configurationWithTextStyle:qword_99A428 scale:2];
  sub_759120();

  [v27 addSubview:*&v27[v33]];
  v44 = qword_941E38;
  v45 = qword_93D190;
  v46 = *&v27[qword_941E38];
  if (v45 != -1)
  {
    swift_once();
  }

  [v46 setTextColor:qword_99DD10];

  v47 = *&v27[v44];
  v48 = [v27 traitCollection];

  sub_767020();
  sub_766F90();
  v49 = *(v9 + 8);
  v50 = v11;
  v51 = v54;
  v49(v50, v54);
  sub_767010();
  v49(v14, v51);
  sub_767000();
  v49(v17, v51);
  sub_766790();

  [v27 addSubview:*&v27[v44]];
  sub_86ACC();
  sub_769A40();
  sub_769F40();

  swift_unknownObjectRelease();

  return v27;
}

void sub_85D40(uint64_t a1)
{
  v2 = qword_941E30;
  *(a1 + v2) = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = qword_941E38;
  sub_7667B0();
  *(a1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_76A840();
  __break(1u);
}

uint64_t sub_85E00@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + qword_941E30);
  v5 = sub_759180();
  if (v5)
  {

    v6 = sub_759210();
    v7 = sub_86B18(&unk_93E520, &type metadata accessor for ArtworkView);
    v5 = v4;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v32[1] = 0;
    v32[2] = 0;
  }

  v32[0] = v5;
  v32[3] = v6;
  v32[4] = v7;
  v8 = *(v2 + qword_941E38);
  v31[3] = sub_7667B0();
  v31[4] = &protocol witness table for UILabel;
  v31[0] = v8;
  v9 = v8;
  sub_769BA0();
  sub_867FC(v32, &v28);
  sub_134D8(v31, v24);
  if (qword_93C2D0 != -1)
  {
    swift_once();
  }

  v10 = qword_99A428;
  v26 = &type metadata for SearchLinkLayout;
  v27 = sub_8686C();
  v11 = swift_allocObject();
  v25 = v11;
  v12 = sub_86910();
  v13 = swift_allocObject();
  sub_134D8(v24, v13 + 16);
  sub_867FC(&v28, &v22);
  if (v23)
  {
    sub_10914(&v22, v21);
    v14 = swift_allocObject();
    sub_10914(v21, v14 + 16);
    v15 = v10;
    sub_BEB8(v24);
    sub_8699C(&v28);
    v16 = &type metadata for AutoAdjustingPlaceable;
    v17 = v12;
  }

  else
  {
    v18 = v10;
    sub_BEB8(v24);
    sub_8699C(&v28);
    v16 = 0;
    v17 = 0;
    v14 = 0;
  }

  v11[2] = v14;
  v11[3] = 0;
  v11[4] = 0;
  v11[5] = v16;
  v11[6] = v17;
  v11[7] = v13;
  v11[10] = &type metadata for AutoAdjustingPlaceable;
  v11[11] = v12;
  v11[12] = v10;
  v11[13] = 0x4014000000000000;
  v29 = sub_767340();
  v30 = &protocol witness table for Margins;
  sub_B1B4(&v28);
  sub_767330();
  a1[3] = &type metadata for AutoAdjustingPlaceable;
  a1[4] = v12;
  v19 = swift_allocObject();
  *a1 = v19;
  sub_10914(&v28, v19 + 16);
  sub_BEB8(v31);
  return sub_8699C(v32);
}

id sub_860E4()
{
  sub_766CF0();
  v1 = sub_766D00();
  v1();
  v2 = [v0 layer];
  [v0 bounds];
  [v2 setCornerRadius:CGRectGetHeight(v6) * 0.5];

  v3 = [v0 layer];
  [v3 setBorderWidth:1.0];

  return [v0 setNeedsDisplay];
}

void sub_861C4()
{
  v1 = *(v0 + qword_941E38);
}

id sub_86204()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScrollablePillView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_8623C(uint64_t a1)
{
  v2 = *(a1 + qword_941E38);
}

id sub_862C8()
{
  if (qword_93C2D0 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() configurationWithTextStyle:qword_99A428 scale:2];

  return v0;
}

uint64_t sub_86350()
{
  v0 = sub_767030();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  __chkstk_darwin(v7);
  v9 = &v12 - v8;
  sub_767020();
  if (qword_93C2D0 != -1)
  {
    swift_once();
  }

  sub_766F90();
  v10 = *(v1 + 8);
  v10(v3, v0);
  sub_767010();
  v10(v6, v0);
  sub_767000();
  return (v10)(v9, v0);
}

double sub_864EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_74DFC0(a1, a3, WitnessTable);
}

void sub_86550(void *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_74BAD0(a1, a2, a3, WitnessTable);
}

void sub_865BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_74DFFC(a1, a3, WitnessTable);
}

uint64_t sub_86620@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_74BE48(a1, WitnessTable, a2);
}

uint64_t sub_8669C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_74E12C(a1, a2, a4, WitnessTable);
}

uint64_t sub_86750(void *a1)
{
  a1[1] = sub_86B18(&qword_941E98, type metadata accessor for ScrollablePillView);
  a1[2] = sub_86B18(&qword_941EA0, type metadata accessor for ScrollablePillView);
  result = sub_86B18(&qword_941EA8, type metadata accessor for ScrollablePillView);
  a1[3] = result;
  return result;
}

uint64_t sub_867FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_941EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_8686C()
{
  result = qword_956270;
  if (!qword_956270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_956270);
  }

  return result;
}

uint64_t sub_868C0()
{
  if (*(v0 + 40))
  {
    sub_BEB8(v0 + 16);
  }

  sub_BEB8(v0 + 56);

  return _swift_deallocObject(v0, 112, 7);
}

unint64_t sub_86910()
{
  result = qword_941EC0;
  if (!qword_941EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_941EC0);
  }

  return result;
}

uint64_t sub_86964()
{
  sub_BEB8(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_8699C(uint64_t a1)
{
  v2 = sub_BD88(&unk_941EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_86A04(void *a1)
{
  v2 = [a1 layer];
  if (qword_93D1A0 != -1)
  {
    swift_once();
  }

  v3 = [qword_99DD20 CGColor];
  [v2 setBorderColor:v3];

  return [a1 setNeedsDisplay];
}

unint64_t sub_86ACC()
{
  result = qword_941EC8;
  if (!qword_941EC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_941EC8);
  }

  return result;
}

uint64_t sub_86B18(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_86B68()
{
  result = [objc_allocWithZone(UISegmentedControl) init];
  qword_941ED0 = result;
  return result;
}

double sub_86BA8(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = a1 + 40;
    do
    {
      v7 = qword_93C2D8;

      if (v7 != -1)
      {
        swift_once();
      }

      v8 = qword_941ED0;
      v9 = sub_769210();
      [v8 addSegmentWithTitle:v9];

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  if (qword_93C2D8 != -1)
  {
    swift_once();
  }

  v10 = qword_941ED0;
  [qword_941ED0 sizeThatFits:{a2, a3}];
  v12 = v11;
  [v10 removeAllSegments];
  return v12;
}

uint64_t _s5StateVwCP(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s5StateVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s5StateVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_86D88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

unint64_t sub_86DB4()
{
  result = qword_941ED8;
  if (!qword_941ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_941ED8);
  }

  return result;
}

unint64_t sub_86E0C()
{
  result = qword_941EE0;
  if (!qword_941EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_941EE0);
  }

  return result;
}

uint64_t sub_86E60(uint64_t a1)
{
  v2 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_759C60();
  if (v5 >> 62)
  {
    v6 = sub_76A860();
  }

  else
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  }

  if (v6 <= a1)
  {
    return result;
  }

  result = sub_759C60();
  if ((result & 0xC000000000000001) == 0)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)) > a1)
    {

      goto LABEL_8;
    }

    __break(1u);
    return result;
  }

  sub_76A770();
LABEL_8:

  v8 = sub_75BBA0();

  if (v8)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = sub_BD88(&unk_93F630);
      sub_768860();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v4, 1, v11) == 1)
      {

        return sub_268C8(v4);
      }

      else
      {
        sub_32A6C0(v8, 1, v10, v4);

        return (*(v12 + 8))(v4, v11);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_870A8(uint64_t result)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_carouselView) + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_carouselItemViews);
  if (v2 >> 62)
  {
    result = sub_76A860();
    v3 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (!v3)
    {
      return result;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = v2 & 0xC000000000000001;

    v5 = 0;
    v6 = &OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_backgroundView;
    v15 = v2 & 0xC000000000000001;
    do
    {
      if (v4)
      {
        v7 = sub_76A770();
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = *&v7[*v6];
      v10 = *(*(*&v9[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselItemBackgroundView_mediaViewContainer] + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
      if (v10)
      {
        type metadata accessor for VideoView();
        if (swift_dynamicCastClass())
        {
          sub_882B8(&qword_93F500, type metadata accessor for VideoView);
          sub_882B8(&qword_941F48, type metadata accessor for HeroCarouselItemBackgroundView);
          v16 = v10;
          v11 = v6;
          v12 = v2;
          v13 = v3;
          v14 = v9;
          sub_761100();
          v4 = v15;

          v8 = v14;
          v3 = v13;
          v2 = v12;
          v6 = v11;
        }
      }

      ++v5;
    }

    while (v3 != v5);
  }

  return result;
}

uint64_t sub_872F0(uint64_t result)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_carouselView) + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_carouselItemViews);
  if (v2 >> 62)
  {
    result = sub_76A860();
    v3 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (!v3)
    {
      return result;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = v2 & 0xC000000000000001;

    v5 = 0;
    v6 = &OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_backgroundView;
    v15 = v2 & 0xC000000000000001;
    do
    {
      if (v4)
      {
        v7 = sub_76A770();
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = *&v7[*v6];
      v10 = *(*(*&v9[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselItemBackgroundView_mediaViewContainer] + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
      if (v10)
      {
        type metadata accessor for VideoView();
        if (swift_dynamicCastClass())
        {
          sub_882B8(&qword_93F500, type metadata accessor for VideoView);
          sub_882B8(&qword_941F48, type metadata accessor for HeroCarouselItemBackgroundView);
          v16 = v10;
          v11 = v6;
          v12 = v2;
          v13 = v3;
          v14 = v9;
          sub_7610C0();
          v4 = v15;

          v8 = v14;
          v3 = v13;
          v2 = v12;
          v6 = v11;
        }
      }

      ++v5;
    }

    while (v3 != v5);
  }

  return result;
}

unint64_t sub_87648()
{
  result = qword_94AB20;
  if (!qword_94AB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94AB20);
  }

  return result;
}

uint64_t sub_8769C(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v8 = sub_760180();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&qword_941F38);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  sub_759C50();
  v15 = OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_playbackId;
  swift_beginAccess();
  sub_87BB0(&v46, &v3[v15]);
  swift_endAccess();
  v16 = sub_BD88(&qword_941F40);
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v44 = a2;
  v18(v14, a2, v16);
  v19 = *(v17 + 56);
  v42 = v16;
  v19(v14, 0, 1, v16);
  v20 = OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_state;
  swift_beginAccess();
  sub_87C0C(v14, &v4[v20]);
  swift_endAccess();
  sub_761120();
  sub_768900();
  sub_768ED0();
  v43 = v46;
  swift_unknownObjectWeakAssign();
  v21 = sub_759C60();
  v22 = v21;
  if (v21 >> 62)
  {
    v23 = sub_76A860();
    v45 = v11;
    if (v23)
    {
      goto LABEL_3;
    }

LABEL_11:

    v28 = _swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  v23 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
  v45 = v11;
  if (!v23)
  {
    goto LABEL_11;
  }

LABEL_3:
  v46 = _swiftEmptyArrayStorage;
  result = sub_76A7C0();
  if (v23 < 0)
  {
    __break(1u);
    return result;
  }

  v38 = v9;
  v39 = v8;
  v40 = v4;
  v41 = a1;
  type metadata accessor for HeroCarouselItemView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = 0;
  do
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v27 = sub_76A770();
    }

    else
    {
      v27 = *(v22 + 8 * v26 + 32);
    }

    ++v26;
    [objc_allocWithZone(ObjCClassFromMetadata) init];
    sub_5DB058(v27, a3);

    sub_76A7A0();
    sub_76A7D0();
    sub_76A7E0();
    sub_76A7B0();
  }

  while (v23 != v26);

  v28 = v46;
  v4 = v40;
  a1 = v41;
  v9 = v38;
  v8 = v39;
LABEL_12:
  [v4 setNeedsLayout];
  [v4 layoutIfNeeded];
  v29 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_carouselView];
  sub_87648();
  sub_768B00();
  if (v47)
  {
    v30 = 0;
  }

  else
  {
    v30 = v46;
  }

  sub_18ECA0(v28, v30);

  v31 = v45;
  sub_759C40();
  v32 = OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_autoScrollConfiguration;
  swift_beginAccess();
  (*(v9 + 40))(v29 + v32, v31, v8);
  swift_endAccess();
  LOBYTE(v31) = sub_759C20();
  v33 = sub_759C30();
  sub_18EF88(v31 & 1, v33 & 1);

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakDestroy();
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  *(v35 + 16) = a1;
  *(v35 + 24) = v34;
  v36 = &v4[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_didSelectHandler];
  v37 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_didSelectHandler];
  *v36 = sub_87CF4;
  v36[1] = v35;

  sub_F704(v37);
}

uint64_t sub_87C0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_941F38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_87C7C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_87CB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_87CFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_134D8(a1, v35);
  sub_BD88(&unk_93F520);
  sub_759C70();
  result = swift_dynamicCast();
  if (result)
  {
    v6 = sub_759C60();
    v7 = v6;
    v8 = *(*(v2 + OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_carouselView) + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_carouselItemViews);
    if (v6 >> 62)
    {
      goto LABEL_34;
    }

    v9 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
LABEL_4:

    if (v9)
    {
      v33 = v7 & 0xFFFFFFFFFFFFFF8;
      v34 = v7 & 0xC000000000000001;
      v10 = v8 & 0xFFFFFFFFFFFFFF8;
      v11 = 4;
      v31 = v8 & 0xC000000000000001;
      v32 = v8 >> 62;
      v29 = v8 & 0xFFFFFFFFFFFFFF8;
      v30 = v9;
      v26 = v8;
      v27 = v3;
      v25 = v7;
      do
      {
        v12 = v11 - 4;
        if (v34)
        {
          v13 = sub_76A770();
          v14 = v11 - 3;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v12 >= *(v33 + 16))
          {
            goto LABEL_32;
          }

          v13 = *(v7 + 8 * v11);

          v14 = v11 - 3;
          if (__OFADD__(v12, 1))
          {
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            v9 = sub_76A860();
            goto LABEL_4;
          }
        }

        if (v32)
        {
          if (v12 == sub_76A860())
          {
LABEL_28:

            goto LABEL_29;
          }
        }

        else if (v12 == *(v10 + 16))
        {
          goto LABEL_28;
        }

        if (v31)
        {
          v15 = sub_76A770();
        }

        else
        {
          if (v12 >= *(v10 + 16))
          {
            goto LABEL_33;
          }

          v15 = *(v8 + 8 * v11);
        }

        v16 = v15;
        type metadata accessor for HeroCarouselCollectionViewCell();
        sub_75D650();
        sub_1041F0(v13, a2);
        v17 = sub_75BC00();
        if (v17)
        {
          v18 = v17;
          v19 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_overlayView];
          if (v19)
          {
            v20 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_overlayView + 8];
            ObjectType = swift_getObjectType();
            v28 = *(v20 + 40);
            v22 = v19;
            v23 = ObjectType;
            v24 = v20;
            v8 = v26;
            v3 = v27;
            v28(v18, a2, v23, v24);
            v7 = v25;

            goto LABEL_8;
          }
        }

        else
        {
        }

LABEL_8:
        v10 = v29;
        ++v11;
      }

      while (v14 != v30);
    }

LABEL_29:
  }

  return result;
}

uint64_t sub_88008(uint64_t a1, char a2)
{
  v3 = *(*(v2 + OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_carouselView) + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_carouselItemViews);
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
        v6 = sub_76A770();
      }

      else
      {
        if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_20;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_backgroundView];
      v10 = *(v9 + OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselItemBackgroundView_artworkView);
      sub_759210();
      sub_882B8(&qword_945810, &type metadata accessor for ArtworkView);
      v11 = v10;
      sub_75A0C0();

      v12 = *(*(*(v9 + OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselItemBackgroundView_mediaViewContainer) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
      if (v12)
      {
        type metadata accessor for VideoView();
        if (swift_dynamicCastClass())
        {
          sub_882B8(&unk_93F530, type metadata accessor for VideoView);
          v13 = v12;
          sub_75A0C0();
        }
      }

      v14 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_overlayView];
      if (v14)
      {
        v15 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_overlayView + 8];
        ObjectType = swift_getObjectType();
        v17 = *(v15 + 48);
        v18 = v14;
        v17(a1, a2 & 1, ObjectType, v15);
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_16:
}

uint64_t sub_882B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_88300(uint64_t a1, char a2)
{
  v3 = sub_76A920();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_93DCE8 != -1)
    {
      swift_once();
    }

    v7 = qword_99FE00;
  }

  else
  {
    if (qword_93DCF0 != -1)
    {
      swift_once();
    }

    v7 = qword_99FE18;
  }

  v8 = sub_766CA0();
  sub_BE38(v8, v7);
  sub_766470();
  sub_766700();
  v10 = v9;
  (*(v4 + 8))(v6, v3);
  return v10;
}

id sub_884C0(uint64_t a1, SEL *a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  result = [v7 *a2];
  *a4 = v7;
  return result;
}

uint64_t sub_8851C()
{
  *(v0 + 16) = [objc_opt_self() standardUserDefaults];
  v1 = OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_navigationActionRegistration;
  v2 = sub_BD88(&unk_941F90);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_actionRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_stringUserDefaultRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_BOOLUserDefaultRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_stringPreferenceRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_BOOLPreferenceRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_promptActionRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_infoSettingRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_menuRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_menuItemRegistration, 1, 1, v2);
  sub_892AC();
  return v0;
}

uint64_t sub_88710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a1;
  v74 = a3;
  v4 = sub_BD88(&qword_942160);
  __chkstk_darwin(v4 - 8);
  v73 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v71 - v7;
  __chkstk_darwin(v9);
  v11 = &v71 - v10;
  __chkstk_darwin(v12);
  v14 = &v71 - v13;
  __chkstk_darwin(v15);
  v17 = (&v71 - v16);
  __chkstk_darwin(v18);
  v20 = &v71 - v19;
  __chkstk_darwin(v21);
  v23 = &v71 - v22;
  __chkstk_darwin(v24);
  v26 = &v71 - v25;
  __chkstk_darwin(v27);
  v29 = &v71 - v28;
  __chkstk_darwin(v30);
  v32 = &v71 - v31;
  type metadata accessor for NavigationActionDebugSetting();
  if (swift_dynamicCastClass())
  {
    v33 = a2;
    v34 = OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_navigationActionRegistration;
    v35 = v76;
    swift_beginAccess();
    sub_8CB60(v35 + v34, v32);
    v36 = sub_BD88(&unk_941F90);
    v37 = *(v36 - 8);
    result = (*(v37 + 48))(v32, 1, v36);
    if (result != 1)
    {
      v77 = v33;
      sub_BE70(0, &qword_942168);
      type metadata accessor for DebugSetting();

      v39 = sub_769890();

      (*(v37 + 8))(v32, v36);
      return v39;
    }

    __break(1u);
    goto LABEL_37;
  }

  v72 = v29;
  v40 = v76;
  v41 = v73;
  type metadata accessor for ActionDebugSetting();
  if (swift_dynamicCastClass())
  {
    v42 = a2;
    v43 = OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_actionRegistration;
    swift_beginAccess();
    v44 = v72;
    sub_8CB60(v40 + v43, v72);
    v45 = sub_BD88(&unk_941F90);
    v46 = *(v45 - 8);
    result = (*(v46 + 48))(v44, 1, v45);
    if (result == 1)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v77 = v42;
    sub_BE70(0, &qword_942168);
    type metadata accessor for DebugSetting();

    v39 = sub_769890();

    (*(v46 + 8))(v44, v45);
    return v39;
  }

  type metadata accessor for StringUserDefaultsDebugSetting();
  if (swift_dynamicCastClass())
  {
    v47 = a2;
    v48 = OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_stringPreferenceRegistration;
    swift_beginAccess();
    sub_8CB60(v40 + v48, v26);
    v49 = sub_BD88(&unk_941F90);
    v50 = *(v49 - 8);
    result = (*(v50 + 48))(v26, 1, v49);
    if (result == 1)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v77 = v47;
    sub_BE70(0, &qword_942168);
    type metadata accessor for DebugSetting();

    v39 = sub_769890();

    v51 = *(v50 + 8);
    v52 = v26;
    goto LABEL_14;
  }

  type metadata accessor for BoolUserDefaultsDebugSetting();
  if (swift_dynamicCastClass())
  {
    v53 = a2;
    v54 = OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_BOOLUserDefaultRegistration;
    swift_beginAccess();
    v55 = v23;
    sub_8CB60(v40 + v54, v23);
    v49 = sub_BD88(&unk_941F90);
    v56 = *(v49 - 8);
    result = (*(v56 + 48))(v55, 1, v49);
    if (result == 1)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v77 = v53;
    sub_BE70(0, &qword_942168);
    type metadata accessor for DebugSetting();

    v39 = sub_769890();

    v51 = *(v56 + 8);
    v52 = v55;
LABEL_14:
    v51(v52, v49);
    return v39;
  }

  type metadata accessor for StringPreferencesDebugSetting();
  if (swift_dynamicCastClass())
  {
    v41 = a2;
    v57 = OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_stringPreferenceRegistration;
    swift_beginAccess();
    v58 = v20;
    sub_8CB60(v40 + v57, v20);
    a2 = sub_BD88(&unk_941F90);
    v17 = *(a2 - 8);
    if (v17[6](v20, 1, a2) != 1)
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  type metadata accessor for BoolPreferencesDebugSetting();
  if (swift_dynamicCastClass())
  {
    v41 = a2;
    v59 = OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_BOOLPreferenceRegistration;
    swift_beginAccess();
    v58 = v17;
    sub_8CB60(v40 + v59, v17);
    a2 = sub_BD88(&unk_941F90);
    v17 = *(a2 - 8);
    result = (v17[6])(v58, 1, a2);
    if (result == 1)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    goto LABEL_21;
  }

  type metadata accessor for PromptActionDebugSetting();
  if (swift_dynamicCastClass())
  {
    v60 = a2;
    v61 = OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_promptActionRegistration;
    swift_beginAccess();
    sub_8CB60(v40 + v61, v14);
    v62 = sub_BD88(&unk_941F90);
    v63 = *(v62 - 8);
    result = (*(v63 + 48))(v14, 1, v62);
    if (result == 1)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v77 = v60;
    sub_BE70(0, &qword_942168);
    type metadata accessor for DebugSetting();

    v39 = sub_769890();

    (*(v63 + 8))(v14, v62);
    return v39;
  }

  type metadata accessor for InfoDebugSetting();
  if (swift_dynamicCastClass())
  {
    v64 = a2;
    v65 = OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_infoSettingRegistration;
    swift_beginAccess();
    sub_8CB60(v40 + v65, v11);
    v66 = sub_BD88(&unk_941F90);
    v67 = *(v66 - 8);
    result = (*(v67 + 48))(v11, 1, v66);
    if (result == 1)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v77 = v64;
    sub_BE70(0, &qword_942168);
    type metadata accessor for DebugSetting();

    v39 = sub_769890();

    (*(v67 + 8))(v11, v66);
    return v39;
  }

  type metadata accessor for MenuDebugSetting();
  if (swift_dynamicCastClass())
  {
    v41 = a2;
    v68 = OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_menuRegistration;
    swift_beginAccess();
    v58 = v8;
    sub_8CB60(v40 + v68, v8);
    a2 = sub_BD88(&unk_941F90);
    v17 = *(a2 - 8);
    if (v17[6](v8, 1, a2) == 1)
    {
      __break(1u);
      goto LABEL_32;
    }

LABEL_21:
    v77 = v41;
LABEL_22:
    sub_BE70(0, &qword_942168);
    type metadata accessor for DebugSetting();

    v39 = sub_769890();

    (v17[1])(v58, a2);
    return v39;
  }

LABEL_32:
  type metadata accessor for MenuItemDebugSetting();
  v69 = a2;
  if (!swift_dynamicCastClass())
  {
    return 0;
  }

  v70 = OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_menuItemRegistration;
  swift_beginAccess();
  v58 = v41;
  sub_8CB60(v40 + v70, v41);
  a2 = sub_BD88(&unk_941F90);
  v17 = *(a2 - 8);
  result = (v17[6])(v41, 1, a2);
  if (result != 1)
  {
    v77 = v69;
    goto LABEL_22;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_892AC()
{
  v1 = sub_BD88(&qword_942160);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  sub_BE70(0, &qword_942168);
  type metadata accessor for DebugSetting();
  sub_769870();
  v4 = sub_BD88(&unk_941F90);
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_navigationActionRegistration;
  swift_beginAccess();
  sub_8C9B4(v3, v0 + v6);
  swift_endAccess();
  sub_769870();
  v5(v3, 0, 1, v4);
  v7 = OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_actionRegistration;
  swift_beginAccess();
  sub_8C9B4(v3, v0 + v7);
  swift_endAccess();
  v8 = *(v0 + 16);
  *(swift_allocObject() + 16) = v8;
  v9 = v8;
  sub_769870();
  v5(v3, 0, 1, v4);
  v10 = OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_stringUserDefaultRegistration;
  swift_beginAccess();
  sub_8C9B4(v3, v0 + v10);
  swift_endAccess();
  *(swift_allocObject() + 16) = v9;
  sub_769870();
  v5(v3, 0, 1, v4);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_BOOLUserDefaultRegistration;
  swift_beginAccess();
  sub_8C9B4(v3, v0 + v11);
  swift_endAccess();
  sub_769870();
  v5(v3, 0, 1, v4);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_stringPreferenceRegistration;
  swift_beginAccess();
  sub_8C9B4(v3, v0 + v12);
  swift_endAccess();
  sub_769870();
  v5(v3, 0, 1, v4);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_BOOLPreferenceRegistration;
  swift_beginAccess();
  sub_8C9B4(v3, v0 + v13);
  swift_endAccess();
  sub_769870();
  v5(v3, 0, 1, v4);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_promptActionRegistration;
  swift_beginAccess();
  sub_8C9B4(v3, v0 + v14);
  swift_endAccess();
  sub_769870();
  v5(v3, 0, 1, v4);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_infoSettingRegistration;
  swift_beginAccess();
  sub_8C9B4(v3, v0 + v15);
  swift_endAccess();
  sub_769870();
  v5(v3, 0, 1, v4);
  v16 = OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_menuRegistration;
  swift_beginAccess();
  sub_8C9B4(v3, v0 + v16);
  swift_endAccess();
  sub_769870();
  v5(v3, 0, 1, v4);
  v17 = OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_menuItemRegistration;
  swift_beginAccess();
  sub_8C9B4(v3, v0 + v17);
  return swift_endAccess();
}

uint64_t sub_89864(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_BD88(&qword_942170);
  __chkstk_darwin(v5 - 8);
  v30 = v26 - v6;
  v7 = sub_7675F0();
  v31 = *(v7 - 8);
  __chkstk_darwin(v7);
  v29 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_767530();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_767880();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  type metadata accessor for NavigationActionDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v19 = result;
    v27 = v7;
    v28 = a1;
    v26[1] = v17;

    sub_767870();

    sub_767860();
    v20 = *(v19 + 72);
    if (v20)
    {

      v20(v21);
      sub_F704(v20);
    }

    sub_7677F0();
    v32[3] = v13;
    v32[4] = &protocol witness table for UIListContentConfiguration;
    v26[0] = v13;
    v22 = sub_B1B4(v32);
    (*(v14 + 16))(v22, v16, v13);
    sub_769AE0();
    sub_BD88(&qword_942178);
    sub_767620();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    v23 = v12;
    (*(v10 + 104))(v12, enum case for UICellAccessory.DisplayedState.always(_:), v9);
    v24 = sub_767540();
    (*(*(v24 - 8) + 56))(v30, 1, 1, v24);
    v25 = v29;
    sub_7675E0();
    sub_767580();
    (*(v31 + 8))(v25, v27);
    (*(v10 + 8))(v23, v9);
    sub_769C10();

    return (*(v14 + 8))(v16, v26[0]);
  }

  return result;
}

uint64_t sub_89CD0()
{
  v0 = sub_767880();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v5 = result;

    sub_767870();

    sub_767860();
    if (!*(v5 + 80))
    {
      v6 = *(v5 + 88);
      if (v6)
      {
        v6();
      }
    }

    sub_7677F0();
    v9[3] = v0;
    v9[4] = &protocol witness table for UIListContentConfiguration;
    v7 = sub_B1B4(v9);
    (*(v1 + 16))(v7, v3, v0);
    sub_769AE0();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_89E8C(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v26 = a4;
  v29 = a1;
  v5 = sub_BD88(&qword_942170);
  __chkstk_darwin(v5 - 8);
  v27 = &v24 - v6;
  v7 = sub_7675F0();
  v28 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_767530();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_767880();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a3;
  type metadata accessor for StringUserDefaultsDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v24 = v18;
    v25 = v7;

    sub_767870();

    sub_767860();

    v20 = sub_769210();

    v21 = [v26 valueForKey:v20];

    if (v21)
    {
      sub_76A510();
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
    }

    v30 = v33;
    v31 = v34;
    if (*(&v34 + 1))
    {
      swift_dynamicCast();
    }

    else
    {
      sub_10A2C(&v30, &unk_93FBD0);
    }

    sub_7677F0();
    *(&v31 + 1) = v14;
    v32 = &protocol witness table for UIListContentConfiguration;
    v22 = sub_B1B4(&v30);
    (*(v15 + 16))(v22, v17, v14);
    sub_769AE0();
    sub_BD88(&qword_942178);
    v26 = v17;
    sub_767620();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    (*(v11 + 104))(v13, enum case for UICellAccessory.DisplayedState.always(_:), v10);
    v23 = sub_767540();
    (*(*(v23 - 8) + 56))(v27, 1, 1, v23);
    sub_7675E0();
    sub_767580();
    (*(v28 + 8))(v9, v25);
    (*(v11 + 8))(v13, v10);
    sub_769C10();

    return (*(v15 + 8))(v26, v14);
  }

  return result;
}

uint64_t sub_8A384(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v7 = sub_BD88(&qword_942170);
  __chkstk_darwin(v7 - 8);
  v9 = v37 - v8;
  v10 = sub_767600();
  v43 = *(v10 - 8);
  v44 = v10;
  __chkstk_darwin(v10);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_7675A0();
  v46 = *(v13 - 8);
  __chkstk_darwin(v13);
  v45 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_767880();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a3;
  type metadata accessor for BoolUserDefaultsDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v21 = result;
    v40 = v13;
    v41 = v9;
    v37[1] = v19;

    sub_767850();

    sub_767860();
    *(&v51 + 1) = v15;
    v52 = &protocol witness table for UIListContentConfiguration;
    v22 = sub_B1B4(&v50);
    v38 = v16;
    (*(v16 + 16))(v22, v18, v15);
    v42 = a1;
    sub_769AE0();
    v23 = [objc_allocWithZone(UISwitch) initWithFrame:{0.0, 0.0, 0.0, 0.0}];

    v24 = sub_769210();

    v25 = [a4 objectForKey:v24];

    if (v25)
    {
      sub_76A510();
      swift_unknownObjectRelease();
    }

    else
    {
      v48 = 0u;
      v49 = 0u;
    }

    v50 = v48;
    v51 = v49;
    v39 = v15;
    if (*(&v49 + 1))
    {
      sub_BE70(0, &qword_945820);
      if (swift_dynamicCast())
      {
        v26 = v47;
        [v23 setOn:{objc_msgSend(v47, "BOOLValue")}];

LABEL_10:
        sub_BE70(0, &qword_955FA0);
        v27 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v28 = swift_allocObject();
        v28[2] = v27;
        v28[3] = a4;
        v28[4] = v21;

        v29 = a4;
        v30 = sub_76A1F0();
        [v23 addAction:v30 forControlEvents:0x2000];
        sub_BD88(&qword_942178);
        sub_767620();
        *(swift_allocObject() + 16) = xmmword_77B6D0;
        v31 = &v12[*(sub_BD88(&qword_942188) + 48)];
        v32 = enum case for UICellAccessory.DisplayedState.always(_:);
        v33 = sub_767530();
        (*(*(v33 - 8) + 104))(v12, v32, v33);
        *v31 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v31[1] = 0;
        (*(v43 + 104))(v12, enum case for UICellAccessory.Placement.trailing(_:), v44);
        v34 = sub_767540();
        (*(*(v34 - 8) + 56))(v41, 1, 1, v34);
        v35 = v23;
        v36 = v45;
        sub_767590();
        sub_767520();
        (*(v46 + 8))(v36, v40);
        sub_769C10();

        return (*(v38 + 8))(v18, v39);
      }
    }

    else
    {
      sub_10A2C(&v50, &unk_93FBD0);
    }

    [v23 setOn:0];
    goto LABEL_10;
  }

  return result;
}

void sub_8AA20(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong isOn];
    v7 = sub_769210();
    [a3 setBool:v6 forKey:v7];
  }
}

uint64_t sub_8AAB8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_BD88(&qword_942170);
  __chkstk_darwin(v5 - 8);
  v24 = v22 - v6;
  v7 = sub_7675F0();
  v25 = *(v7 - 8);
  v26 = v7;
  __chkstk_darwin(v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_767530();
  v10 = *(v23 - 8);
  __chkstk_darwin(v23);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_767880();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  type metadata accessor for StringPreferencesDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {

    sub_767870();
    v22[1] = a1;
    v22[2] = v17;

    sub_767860();
    swift_getObjectType();
    sub_7686D0();
    sub_7677F0();
    v27[3] = v13;
    v27[4] = &protocol witness table for UIListContentConfiguration;
    v19 = sub_B1B4(v27);
    (*(v14 + 16))(v19, v16, v13);
    sub_769AE0();
    sub_BD88(&qword_942178);
    sub_767620();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    v20 = v23;
    (*(v10 + 104))(v12, enum case for UICellAccessory.DisplayedState.always(_:), v23);
    v21 = sub_767540();
    (*(*(v21 - 8) + 56))(v24, 1, 1, v21);
    sub_7675E0();
    sub_767580();
    (*(v25 + 8))(v9, v26);
    (*(v10 + 8))(v12, v20);
    sub_769C10();

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_8AF10(uint64_t a1)
{
  v35 = a1;
  v1 = sub_BD88(&qword_942170);
  __chkstk_darwin(v1 - 8);
  v3 = &v27 - v2;
  v4 = sub_767600();
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7675A0();
  v34 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_767880();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BoolPreferencesDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v15 = result;
    v31 = v3;

    sub_767850();

    sub_767860();

    sub_7677F0();
    v36[3] = v10;
    v36[4] = &protocol witness table for UIListContentConfiguration;
    v16 = sub_B1B4(v36);
    v28 = v11;
    v29 = v10;
    (*(v11 + 16))(v16, v13, v10);
    sub_769AE0();
    v17 = [objc_allocWithZone(UISwitch) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    swift_getObjectType();
    sub_7686D0();
    v18 = v36[0];
    v30 = v7;
    if (LOBYTE(v36[0]) == 2)
    {
      v18 = *(v15 + 88);
    }

    [v17 setOn:v18 & 1];
    sub_BE70(0, &qword_955FA0);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = v15;

    v21 = sub_76A1F0();
    [v17 addAction:v21 forControlEvents:0x2000];
    sub_BD88(&qword_942178);
    sub_767620();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    v22 = &v6[*(sub_BD88(&qword_942188) + 48)];
    v23 = enum case for UICellAccessory.DisplayedState.always(_:);
    v24 = sub_767530();
    (*(*(v24 - 8) + 104))(v6, v23, v24);
    *v22 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v22[1] = 0;
    (*(v32 + 104))(v6, enum case for UICellAccessory.Placement.trailing(_:), v33);
    v25 = sub_767540();
    (*(*(v25 - 8) + 56))(v31, 1, 1, v25);
    v26 = v17;
    sub_767590();
    sub_767520();
    (*(v34 + 8))(v9, v30);
    sub_769C10();

    return (*(v28 + 8))(v13, v29);
  }

  return result;
}

void sub_8B4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&unk_945000);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-v6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_getObjectType();
    (*(v5 + 16))(v7, a3 + OBJC_IVAR____TtC18ASMessagesProvider27BoolPreferencesDebugSetting_key, v4);
    v10[7] = [v9 isOn];
    sub_7686E0();
  }
}

uint64_t sub_8B664(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_BD88(&qword_942170);
  __chkstk_darwin(v5 - 8);
  v31 = v27 - v6;
  v7 = sub_7675F0();
  v32 = *(v7 - 8);
  __chkstk_darwin(v7);
  v30 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_767530();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_767880();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  type metadata accessor for PromptActionDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v19 = result;
    v28 = v7;
    v29 = a1;
    v27[1] = v17;

    sub_767870();

    sub_767860();
    v20 = *(v19 + 72);
    if (v20)
    {

      v20(v21);
      sub_F704(v20);
    }

    sub_7677F0();
    sub_BE70(0, &qword_93E540);
    sub_76A0F0();
    v22 = sub_767840();
    sub_767810();
    v22(v33, 0);
    v33[3] = v13;
    v33[4] = &protocol witness table for UIListContentConfiguration;
    v27[0] = v13;
    v23 = sub_B1B4(v33);
    (*(v14 + 16))(v23, v16, v13);
    sub_769AE0();
    sub_BD88(&qword_942178);
    sub_767620();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    v24 = v12;
    (*(v10 + 104))(v12, enum case for UICellAccessory.DisplayedState.always(_:), v9);
    v25 = sub_767540();
    (*(*(v25 - 8) + 56))(v31, 1, 1, v25);
    v26 = v30;
    sub_7675E0();
    sub_767580();
    (*(v32 + 8))(v26, v28);
    (*(v10 + 8))(v24, v9);
    sub_769C10();

    return (*(v14 + 8))(v16, v27[0]);
  }

  return result;
}

uint64_t sub_8BB28()
{
  v0 = sub_767880();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InfoDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {

    sub_767870();

    sub_767860();

    sub_7677F0();
    v7[3] = v0;
    v7[4] = &protocol witness table for UIListContentConfiguration;
    v5 = sub_B1B4(v7);
    (*(v1 + 16))(v5, v3, v0);
    sub_769AE0();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_8BCA8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_767530();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v39 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&qword_942170);
  __chkstk_darwin(v8 - 8);
  v10 = v34 - v9;
  v11 = sub_BD88(&qword_942180);
  __chkstk_darwin(v11 - 8);
  v13 = v34 - v12;
  v40 = sub_7675D0();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v37 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_767880();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a3;
  type metadata accessor for MenuDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v21 = result;
    v36 = v5;
    v34[1] = v19;

    sub_767870();

    v22 = sub_767860();
    v23 = (*(v21 + 80))(v41, v22);
    __chkstk_darwin(v23);
    v34[-2] = v41;
    v25 = sub_4E9724(sub_8CA6C, &v34[-4], v24);
    v35 = v6;
    if (v25)
    {
    }

    sub_10A2C(v41, &unk_9443A0);
    sub_7677F0();
    sub_BE70(0, &qword_93E540);
    sub_76A0F0();
    v26 = sub_767840();
    sub_767810();
    v26(v41, 0);
    v41[3] = v15;
    v41[4] = &protocol witness table for UIListContentConfiguration;
    v27 = sub_B1B4(v41);
    (*(v16 + 16))(v27, v18, v15);
    v34[0] = a1;
    sub_769AE0();
    sub_BD88(&qword_942178);
    sub_767620();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    v28 = sub_7675B0();
    (*(*(v28 - 8) + 56))(v13, 1, 1, v28);
    v29 = sub_767540();
    (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
    sub_769FE0();
    v30 = v37;
    sub_7675C0();
    v32 = v35;
    v31 = v36;
    v33 = v39;
    (*(v35 + 104))(v39, enum case for UICellAccessory.DisplayedState.always(_:), v36);
    sub_767570();
    (*(v32 + 8))(v33, v31);
    (*(v38 + 8))(v30, v40);
    sub_769C10();

    return (*(v16 + 8))(v18, v15);
  }

  return result;
}

uint64_t sub_8C284()
{
  v0 = sub_BD88(&qword_942170);
  __chkstk_darwin(v0 - 8);
  v20 = v17 - v1;
  v2 = sub_767560();
  v21 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_767530();
  v19 = *(v22 - 8);
  __chkstk_darwin(v22);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_767880();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MenuItemDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v12 = result;
    v18 = v2;

    sub_767850();

    sub_767860();
    v23[3] = v7;
    v23[4] = &protocol witness table for UIListContentConfiguration;
    v13 = sub_B1B4(v23);
    (*(v8 + 16))(v13, v10, v7);
    sub_769AE0();
    if (*(v12 + 72) == 1)
    {
      sub_BD88(&qword_942178);
      v14 = *(sub_767620() - 8);
      v17[1] = (*(v14 + 80) + 32) & ~*(v14 + 80);
      *(swift_allocObject() + 16) = xmmword_77B6D0;
      v15 = v19;
      (*(v19 + 104))(v6, enum case for UICellAccessory.DisplayedState.always(_:), v22);
      v16 = sub_767540();
      (*(*(v16 - 8) + 56))(v20, 1, 1, v16);
      sub_767550();
      sub_767610();
      (*(v21 + 8))(v4, v18);
      (*(v15 + 8))(v6, v22);
    }

    sub_769C10();

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_8C6C4()
{
  sub_10A2C(v0 + OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_navigationActionRegistration, &qword_942160);
  sub_10A2C(v0 + OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_actionRegistration, &qword_942160);
  sub_10A2C(v0 + OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_stringUserDefaultRegistration, &qword_942160);
  sub_10A2C(v0 + OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_BOOLUserDefaultRegistration, &qword_942160);
  sub_10A2C(v0 + OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_stringPreferenceRegistration, &qword_942160);
  sub_10A2C(v0 + OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_BOOLPreferenceRegistration, &qword_942160);
  sub_10A2C(v0 + OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_promptActionRegistration, &qword_942160);
  sub_10A2C(v0 + OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_infoSettingRegistration, &qword_942160);
  sub_10A2C(v0 + OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_menuRegistration, &qword_942160);
  sub_10A2C(v0 + OBJC_IVAR____TtC18ASMessagesProvider29DebugSettingCellRegistrations_menuItemRegistration, &qword_942160);
  return v0;
}

uint64_t sub_8C7F4()
{
  sub_8C6C4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugSettingCellRegistrations()
{
  result = qword_941F78;
  if (!qword_941F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_8C8A0()
{
  sub_8C950();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_8C950()
{
  if (!qword_941F88)
  {
    sub_133D8(&unk_941F90);
    v0 = sub_76A480();
    if (!v1)
    {
      atomic_store(v0, &qword_941F88);
    }
  }
}

uint64_t sub_8C9B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_942160);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_8CA24()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_8CA8C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_8CAC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_8CB0C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_8CB60(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_942160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8CBD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v21 = a2;
  v2 = sub_7664A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[23] = &type metadata for Double;
  v28[24] = &protocol witness table for Double;
  v28[19] = &protocol witness table for Double;
  v28[20] = 0x4049000000000000;
  v28[18] = &type metadata for Double;
  v28[14] = &protocol witness table for Double;
  v28[15] = 0x4024000000000000;
  v28[13] = &type metadata for Double;
  v28[10] = 0x4030000000000000;
  v28[8] = &type metadata for Double;
  v28[9] = &protocol witness table for Double;
  v28[5] = 0x402C000000000000;
  if (qword_93D530 != -1)
  {
    swift_once();
  }

  v6 = sub_7666D0();
  v18 = sub_BE38(v6, qword_99E7A0);
  v7 = *(v6 - 8);
  v17 = *(v7 + 16);
  v19 = v7 + 16;
  v17(v5, v18, v6);
  v16 = enum case for FontSource.useCase(_:);
  v15 = v3[13];
  v15(v5);
  v8 = sub_766CA0();
  v28[3] = v8;
  v28[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v28);
  v26 = v2;
  v27 = &protocol witness table for FontSource;
  v9 = sub_B1B4(v25);
  v10 = v3[2];
  v10(v9, v5, v2);
  sub_766CB0();
  v11 = v3[1];
  v11(v5, v2);
  v17(v5, v18, v6);
  (v15)(v5, v16, v2);
  v26 = v8;
  v27 = &protocol witness table for StaticDimension;
  sub_B1B4(v25);
  v23 = v2;
  v24 = &protocol witness table for FontSource;
  v12 = sub_B1B4(v22);
  v10(v12, v5, v2);
  sub_766CB0();
  v11(v5, v2);
  if (v20)
  {
    sub_7699B0();
  }

  v24 = &protocol witness table for Double;
  v23 = &type metadata for Double;
  v22[0] = 0x4020000000000000;
  return sub_75D2A0();
}

char *sub_8CF24(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_75D2C0();
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_7666D0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v18 = &v5[OBJC_IVAR____TtC18ASMessagesProvider19ArcadePageTitleView__contentOffset];
  *v18 = 0;
  v18[8] = 1;
  v19 = &v5[OBJC_IVAR____TtC18ASMessagesProvider19ArcadePageTitleView_cachedIntrinsicContentSize];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = &v5[OBJC_IVAR____TtC18ASMessagesProvider19ArcadePageTitleView_cachedIntrinsicContentSizeWithTabBar];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = 1;
  if (qword_93D528 != -1)
  {
    swift_once();
  }

  v21 = sub_BE38(v14, qword_99E788);
  (*(v15 + 16))(v17, v21, v14);
  v22 = [objc_opt_self() currentTraitCollection];
  sub_8CBD4(v22, v13);

  v23 = objc_allocWithZone(type metadata accessor for ArcadeLockupView());
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider19ArcadePageTitleView_lockupView] = sub_5B8B0(v17, v13, 1, 0.0, 0.0, 0.0, 0.0);
  v27.receiver = v5;
  v27.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  sub_769BA0();
  [v24 setLayoutMargins:?];
  [v24 setHideStandardTitle:1];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC18ASMessagesProvider19ArcadePageTitleView_lockupView]];
  sub_BD88(&qword_9477F0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_77E280;
  *(v25 + 32) = sub_767890();
  *(v25 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v25 + 48) = sub_767700();
  *(v25 + 56) = &protocol witness table for UITraitVerticalSizeClass;
  sub_769F40();

  swift_unknownObjectRelease();

  return v24;
}

void sub_8D358()
{
  v1 = v0;
  v2 = sub_BD88(&unk_9435D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_769ED0();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 floatingTabBarHeight];
  if (v10 == 0.0)
  {
    v11 = [v0 traitCollection];
    v12 = sub_7699E0();

    if (v12)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v14 = Strong;
        v15 = &v1[OBJC_IVAR____TtC18ASMessagesProvider19ArcadePageTitleView__contentOffset];
        if (v1[OBJC_IVAR____TtC18ASMessagesProvider19ArcadePageTitleView__contentOffset + 8])
        {
          v16 = [Strong view];
          if (v16)
          {
            v17 = v16;
            [v16 safeAreaInsets];
            v19 = v18;

            v20 = [v14 navigationController];
            if (v20)
            {
              v21 = v20;
              sub_A3030();
              v23 = v22;
            }

            else
            {

              v23 = 0.0;
            }

            *v15 = v19 - v23;
            *(v15 + 8) = 0;
          }

          else
          {
            __break(1u);
          }
        }

        else
        {
        }
      }
    }

    else
    {
      v24 = &v1[OBJC_IVAR____TtC18ASMessagesProvider19ArcadePageTitleView__contentOffset];
      if (v1[OBJC_IVAR____TtC18ASMessagesProvider19ArcadePageTitleView__contentOffset + 8])
      {
        v25 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
        v26 = sub_769EB0();
        v27 = *(v26 - 8);
        (*(v27 + 104))(v4, v25, v26);
        (*(v27 + 56))(v4, 0, 1, v26);
        sub_769EC0();
        sub_8DD2C(v4);
        sub_769E90();
        v29 = v28;
        (*(v6 + 8))(v9, v5);
        *v24 = v29;
        v24[8] = 0;
      }
    }
  }

  else
  {

    [v0 floatingTabBarHeight];
  }
}

void sub_8D6AC()
{
  sub_8D358();
  v1 = &OBJC_IVAR____TtC18ASMessagesProvider19ArcadePageTitleView_cachedIntrinsicContentSize;
  if (v2 != 0.0)
  {
    v1 = &OBJC_IVAR____TtC18ASMessagesProvider19ArcadePageTitleView_cachedIntrinsicContentSizeWithTabBar;
  }

  v3 = &v0[*v1];
  if ((v3[2] & 1) != 0 || (v4 = *v3, [v0 bounds], v4 != CGRectGetWidth(v12)))
  {
    [v0 bounds];
    CGRectGetWidth(v13);
    v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider19ArcadePageTitleView_lockupView];
    [v0 layoutMargins];
    sub_769DA0();
    [v5 sizeThatFits:?];
    v7 = v6;
    sub_8D358();
    v9 = v7 + v8;
    [v0 bounds];
    Width = CGRectGetWidth(v14);
    v11 = &v0[OBJC_IVAR____TtC18ASMessagesProvider19ArcadePageTitleView_cachedIntrinsicContentSize];
    *v11 = Width;
    v11[1] = v9;
    *(v11 + 16) = 0;
  }
}

id sub_8D9D8(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_75D2C0();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23.receiver = v2;
  v23.super_class = ObjectType;
  v21 = ObjectType;
  objc_msgSendSuper2(&v23, "traitCollectionDidChange:", a1, v7);
  if (a1)
  {
    v10 = [a1 layoutDirection];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v2 traitCollection];
  v12 = [v11 layoutDirection];

  if (!a1 || v10 != v12)
  {
    v13 = [v2 traitCollection];
    [v13 layoutDirection];

    sub_769BB0();
    [v2 setLayoutMargins:?];
  }

  v14 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider19ArcadePageTitleView_lockupView];
  v15 = [v2 traitCollection];
  v16 = v21;
  sub_8CBD4(v15, v9);

  v17 = OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_metrics;
  swift_beginAccess();
  (*(v6 + 24))(&v14[v17], v9, v5);
  swift_endAccess();
  [v14 setNeedsLayout];
  (*(v6 + 8))(v9, v5);
  v18 = &v2[OBJC_IVAR____TtC18ASMessagesProvider19ArcadePageTitleView_cachedIntrinsicContentSize];
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = &v2[OBJC_IVAR____TtC18ASMessagesProvider19ArcadePageTitleView_cachedIntrinsicContentSizeWithTabBar];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  v22.receiver = v2;
  v22.super_class = v16;
  return objc_msgSendSuper2(&v22, "invalidateIntrinsicContentSize");
}

uint64_t sub_8DD2C(uint64_t a1)
{
  v2 = sub_BD88(&unk_9435D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8DD94(uint64_t result)
{
  v1 = result + OBJC_IVAR____TtC18ASMessagesProvider19ArcadePageTitleView__contentOffset;
  *v1 = 0;
  *(v1 + 8) = 1;
  return result;
}

char *sub_8DDB0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC18ASMessagesProvider31MixedMediaLockupPlaceholderView_artworkPlaceholder;
  sub_759210();
  v11 = sub_759030();
  sub_75CD10();

  *&v5[v10] = v11;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider31MixedMediaLockupPlaceholderView_smallLockupPlaceholder;
  type metadata accessor for LockupPlaceholderView();
  *&v5[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR____TtC18ASMessagesProvider31MixedMediaLockupPlaceholderView_supplementaryTextPlaceholder;
  sub_7595E0();
  v14 = sub_7595D0();
  v16 = sub_48A70C(v14, v15, UIFontTextStyleSubheadline);

  *&v5[v13] = v16;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider31MixedMediaLockupPlaceholderView_contentType;
  v18 = enum case for Shelf.ContentType.appTrailerLockup(_:);
  v19 = sub_764930();
  (*(*(v19 - 8) + 104))(&v5[v17], v18, v19);
  v5[OBJC_IVAR____TtC18ASMessagesProvider31MixedMediaLockupPlaceholderView_wantsSupplementaryTextPlaceholder] = 0;
  v24.receiver = v5;
  v24.super_class = type metadata accessor for MixedMediaLockupPlaceholderView();
  v20 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  v21 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider31MixedMediaLockupPlaceholderView_artworkPlaceholder];
  v22 = v20;
  [v22 addSubview:v21];
  [v22 addSubview:*&v22[OBJC_IVAR____TtC18ASMessagesProvider31MixedMediaLockupPlaceholderView_smallLockupPlaceholder]];
  [v22 addSubview:*&v22[OBJC_IVAR____TtC18ASMessagesProvider31MixedMediaLockupPlaceholderView_supplementaryTextPlaceholder]];

  return v22;
}

uint64_t sub_8DFCC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v75 = a1;
  v72 = sub_75FDA0();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v76 = v67 - v5;
  __chkstk_darwin(v6);
  v74 = v67 - v7;
  __chkstk_darwin(v8);
  v68 = v67 - v9;
  __chkstk_darwin(v10);
  v70 = v67 - v11;
  v12 = sub_BD88(&qword_94DF10);
  __chkstk_darwin(v12 - 8);
  v14 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v73 = v67 - v16;
  __chkstk_darwin(v17);
  v19 = v67 - v18;
  __chkstk_darwin(v20);
  v22 = v67 - v21;
  v23 = sub_764930();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v67[0] = v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v67 - v27;
  v29 = OBJC_IVAR____TtC18ASMessagesProvider31MixedMediaLockupPlaceholderView_contentType;
  swift_beginAccess();
  v30 = *(v24 + 16);
  v30(v28, &v2[v29], v23);
  v31 = (*(v24 + 88))(v28, v23);
  if (v31 == enum case for Shelf.ContentType.appTrailerLockup(_:))
  {
    v32 = v71;
    v33 = v72;
    (*(v71 + 56))(v22, 1, 1, v72);
    sub_8F554(v22, v19);
    v34 = *(v32 + 48);
    v35 = v34(v19, 1, v33);
    v67[1] = v22;
    if (v35 == 1)
    {
      v36 = v70;
      (*(v32 + 104))(v70, enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:), v33);
      v37 = v34(v19, 1, v33);
      v38 = v74;
      if (v37 != 1)
      {
        sub_8F5C4(v19);
      }
    }

    else
    {
      v36 = v70;
      (*(v32 + 32))(v70, v19, v33);
      v38 = v74;
    }

    v48 = *(v32 + 16);
    v49 = v68;
    v48(v68, v36, v33);
    v50 = (*(v32 + 88))(v49, v33);
    if (v50 == enum case for MixedMediaLockupLayout.LockupPosition.top(_:))
    {
      if (qword_93C8C0 != -1)
      {
        swift_once();
      }

      sub_134D8(qword_99C688, v81);
    }

    else if (v50 == enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
    {
      if (qword_93C8B8 != -1)
      {
        swift_once();
      }

      sub_134D8(qword_99C660, v81);
    }

    else
    {
      if (qword_93C8C0 != -1)
      {
        swift_once();
      }

      sub_134D8(qword_99C688, v81);
      (*(v32 + 8))(v49, v33);
    }

    v48(v38, v36, v33);
    sub_134D8(v81, v80);
    sub_BE70(0, &qword_93F900);
    if (qword_93DA80 != -1)
    {
      swift_once();
    }

    v54 = sub_7666D0();
    sub_BE38(v54, qword_99F778);
    v55 = [v2 traitCollection];
    sub_769E10();

    if (qword_93DCE0 != -1)
    {
      swift_once();
    }

    v56 = sub_766CA0();
    v57 = sub_BE38(v56, qword_99FDE8);
    v78 = v56;
    v79 = &protocol witness table for StaticDimension;
    v58 = sub_B1B4(v77);
    (*(*(v56 - 8) + 16))(v58, v57, v56);
    sub_75FDC0();
    sub_BEB8(v81);
    (*(v32 + 8))(v36, v33);
    v59 = &v82;
    return sub_8F5C4(*(v59 - 32));
  }

  v39 = v2;
  v40 = v72;
  if (v31 == enum case for Shelf.ContentType.screenshotsLockup(_:))
  {
    v41 = v39;
    v42 = v71;
    v43 = v73;
    (*(v71 + 56))(v73, 1, 1, v72);
    sub_8F554(v43, v14);
    v44 = *(v42 + 48);
    if (v44(v14, 1, v40) == 1)
    {
      v45 = enum case for MixedMediaLockupLayout.LockupPosition.top(_:);
      (*(v42 + 104))(v76, enum case for MixedMediaLockupLayout.LockupPosition.top(_:), v40);
      if (v44(v14, 1, v40) != 1)
      {
        sub_8F5C4(v14);
      }

      v46 = v74;
      v47 = v76;
    }

    else
    {
      v47 = v76;
      (*(v42 + 32))(v76, v14, v40);
      v45 = enum case for MixedMediaLockupLayout.LockupPosition.top(_:);
      v46 = v74;
    }

    v51 = *(v42 + 16);
    v52 = v69;
    v51(v69, v47, v40);
    v53 = (*(v42 + 88))(v52, v40);
    if (v53 == v45)
    {
      if (qword_93C8C0 != -1)
      {
        swift_once();
      }

      sub_134D8(qword_99C688, v81);
    }

    else if (v53 == enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
    {
      if (qword_93C8B8 != -1)
      {
        swift_once();
      }

      sub_134D8(qword_99C660, v81);
    }

    else
    {
      if (qword_93C8C0 != -1)
      {
        swift_once();
      }

      sub_134D8(qword_99C688, v81);
      (*(v42 + 8))(v52, v40);
    }

    v51(v46, v76, v40);
    sub_134D8(v81, v80);
    sub_BE70(0, &qword_93F900);
    if (qword_93DA80 != -1)
    {
      swift_once();
    }

    v60 = sub_7666D0();
    sub_BE38(v60, qword_99F778);
    v61 = [v41 traitCollection];
    sub_769E10();

    if (qword_93DCE0 != -1)
    {
      swift_once();
    }

    v62 = sub_766CA0();
    v63 = sub_BE38(v62, qword_99FDE8);
    v78 = v62;
    v79 = &protocol witness table for StaticDimension;
    v64 = sub_B1B4(v77);
    (*(*(v62 - 8) + 16))(v64, v63, v62);
    sub_75FDC0();
    sub_BEB8(v81);
    (*(v42 + 8))(v76, v40);
    v59 = &v83;
    return sub_8F5C4(*(v59 - 32));
  }

  v81[0] = 0;
  v81[1] = 0xE000000000000000;
  sub_76A730(44);
  v66 = v67[0];
  v30(v67[0], &v39[v29], v23);
  sub_76A7F0();
  (*(v24 + 8))(v66, v23);
  v84._object = 0x80000000007CCC40;
  v84._countAndFlagsBits = 0xD00000000000002ALL;
  sub_769370(v84);
  result = sub_76A840();
  __break(1u);
  return result;
}

void sub_8EC1C()
{
  v1 = sub_764930();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v12 - v6;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider31MixedMediaLockupPlaceholderView_contentType;
  swift_beginAccess();
  v9 = *(v2 + 16);
  v9(v7, v0 + v8, v1);
  v10 = (*(v2 + 88))(v7, v1);
  if (v10 == enum case for Shelf.ContentType.appTrailerLockup(_:))
  {
    type metadata accessor for AppTrailerLockupCollectionViewCell();
LABEL_5:
    v11 = ASKDeviceTypeGetCurrent();
    sub_2BA684();

    return;
  }

  if (v10 == enum case for Shelf.ContentType.screenshotsLockup(_:))
  {
    type metadata accessor for ScreenshotsLockupCollectionViewCell();
    goto LABEL_5;
  }

  v12[1] = 0;
  v12[2] = 0xE000000000000000;
  sub_76A730(44);
  v9(v4, v0 + v8, v1);
  sub_76A7F0();
  (*(v2 + 8))(v4, v1);
  v13._object = 0x80000000007CCC40;
  v13._countAndFlagsBits = 0xD00000000000002ALL;
  sub_769370(v13);
  sub_76A840();
  __break(1u);
}

uint64_t sub_8EE80()
{
  v1 = v0;
  v2 = sub_7664F0();
  v42 = *(v2 - 8);
  v43 = v2;
  __chkstk_darwin(v2);
  v40 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_75FE00();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_766690();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75FDE0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  v14 = type metadata accessor for MixedMediaLockupPlaceholderView();
  v53.receiver = v0;
  v53.super_class = v14;
  objc_msgSendSuper2(&v53, "layoutSubviews");
  sub_8DFCC(v13);
  sub_8EC1C();
  sub_75D650();
  v34 = v6;
  sub_766610();
  v16 = v15;
  v18 = v17;
  v19 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31MixedMediaLockupPlaceholderView_artworkPlaceholder];
  v20 = sub_759150();
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;
  v20(v52, 0);
  v22 = OBJC_IVAR____TtC18ASMessagesProvider31MixedMediaLockupPlaceholderView_wantsSupplementaryTextPlaceholder;
  v23 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31MixedMediaLockupPlaceholderView_supplementaryTextPlaceholder];
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider31MixedMediaLockupPlaceholderView_wantsSupplementaryTextPlaceholder] == 1)
  {
    [v1 addSubview:*&v1[OBJC_IVAR____TtC18ASMessagesProvider31MixedMediaLockupPlaceholderView_supplementaryTextPlaceholder]];
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider31MixedMediaLockupPlaceholderView_supplementaryTextPlaceholder] removeFromSuperview];
  }

  v24 = *(v8 + 16);
  v35 = v7;
  v24(v10, v13, v7);
  v25 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31MixedMediaLockupPlaceholderView_smallLockupPlaceholder];
  v52[3] = type metadata accessor for LockupPlaceholderView();
  v52[4] = &protocol witness table for UIView;
  v52[0] = v25;
  v50 = sub_759210();
  v51 = &protocol witness table for UIView;
  v49 = v19;
  if (v1[v22] == 1)
  {
    v26 = sub_BE70(0, &qword_950A70);
    v27 = v23;
    v28 = &protocol witness table for UILabel;
  }

  else
  {
    v26 = 0;
    v28 = 0;
    v23 = 0;
    v45 = 0;
    v46 = 0;
  }

  v47 = v26;
  v48 = v28;
  v44 = v23;
  v29 = v25;
  v30 = v19;
  v31 = v37;
  sub_75FDF0();
  sub_75D650();
  v32 = v40;
  sub_75FDB0();
  (*(v42 + 8))(v32, v43);
  (*(v39 + 8))(v31, v41);
  (*(v36 + 8))(v34, v38);
  return (*(v8 + 8))(v13, v35);
}

id sub_8F380()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MixedMediaLockupPlaceholderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MixedMediaLockupPlaceholderView()
{
  result = qword_942220;
  if (!qword_942220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8F4A8()
{
  result = sub_764930();
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

uint64_t sub_8F554(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_94DF10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8F5C4(uint64_t a1)
{
  v2 = sub_BD88(&qword_94DF10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_8F62C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider31MixedMediaLockupPlaceholderView_artworkPlaceholder;
  sub_759210();
  v3 = sub_759030();
  sub_75CD10();

  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider31MixedMediaLockupPlaceholderView_smallLockupPlaceholder;
  type metadata accessor for LockupPlaceholderView();
  *(v1 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider31MixedMediaLockupPlaceholderView_supplementaryTextPlaceholder;
  sub_7595E0();
  v6 = sub_7595D0();
  v8 = sub_48A70C(v6, v7, UIFontTextStyleSubheadline);

  *(v1 + v5) = v8;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider31MixedMediaLockupPlaceholderView_contentType;
  v10 = enum case for Shelf.ContentType.appTrailerLockup(_:);
  v11 = sub_764930();
  (*(*(v11 - 8) + 104))(v1 + v9, v10, v11);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31MixedMediaLockupPlaceholderView_wantsSupplementaryTextPlaceholder) = 0;
  sub_76A840();
  __break(1u);
}

void sub_8F840()
{
  v1 = v0;
  v40.receiver = v0;
  v40.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v40, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30LocalizationTestViewController_objectGraph];
  v3 = qword_93C2F0;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_942230;

  sub_92690(v2, v41 + 8);
  *&v41[0] = v2;
  *(&v42 + 1) = v4;
  v39[7] = v41[2];
  v39[8] = v41[3];
  v39[9] = v42;
  v39[5] = v41[0];
  v39[6] = v41[1];
  v5 = objc_allocWithZone(sub_BD88(&qword_942268));
  sub_92A14(v41, v39);
  v6 = sub_767EF0();
  [v1 addChildViewController:v6];
  v7 = [v6 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [v1 view];
  if (!v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v9;
  v11 = [v6 view];

  if (!v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v10 addSubview:v11];

  sub_BD88(&unk_93F5C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_77FA60;
  v13 = [v6 view];

  if (!v13)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = [v13 topAnchor];

  v15 = [v1 view];
  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v15;
  v17 = [v15 topAnchor];

  v18 = [v14 constraintEqualToAnchor:v17];
  *(v12 + 32) = v18;
  v19 = [v6 view];

  if (!v19)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v20 = [v19 leadingAnchor];

  v21 = [v1 view];
  if (!v21)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v22 = v21;
  v23 = [v21 leadingAnchor];

  v24 = [v20 constraintEqualToAnchor:v23];
  *(v12 + 40) = v24;
  v25 = [v6 view];

  if (!v25)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v26 = [v25 bottomAnchor];

  v27 = [v1 view];
  if (!v27)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v27;
  v29 = [v27 bottomAnchor];

  v30 = [v26 constraintEqualToAnchor:v29];
  *(v12 + 48) = v30;
  v31 = [v6 view];

  if (!v31)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v32 = [v31 trailingAnchor];

  v33 = [v1 view];
  if (v33)
  {
    v34 = v33;
    v35 = objc_opt_self();
    v36 = [v34 trailingAnchor];

    v37 = [v32 constraintEqualToAnchor:v36];
    *(v12 + 56) = v37;
    sub_BE70(0, &qword_942270);
    isa = sub_769450().super.isa;

    [v35 activateConstraints:isa];

    [v6 didMoveToParentViewController:v1];
    sub_92A4C(v41);
    return;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_8FE10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v65 = a2;
  v64 = sub_BD88(&qword_9422C0);
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v55 - v3;
  v76 = sub_BD88(&qword_9422C8);
  v66 = *(v76 - 8);
  __chkstk_darwin(v76);
  v82 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v75 = &v55 - v6;
  v61 = sub_767CB0();
  v7 = *(v61 - 1);
  __chkstk_darwin(v61);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_BD88(&qword_9422D0);
  v59 = *(v58 - 8);
  __chkstk_darwin(v58);
  v11 = &v55 - v10;
  v74 = sub_BD88(&qword_9422D8);
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v70 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v77 = &v55 - v14;
  v15 = *(a1 + 24);
  v87 = *(a1 + 8);
  v88 = v15;
  *v89 = *(a1 + 40);
  *&v89[9] = *(a1 + 49);
  sub_908A8();
  sub_768050();
  v72 = sub_7680A0();
  v71 = v16;
  v60 = v17;
  v81 = v18;

  if (v88)
  {
    *&v84 = 0;
    *(&v84 + 1) = 0xE000000000000000;
    sub_76A730(48);

    *&v84 = 0x100000000000002ELL;
    *(&v84 + 1) = 0x80000000007CD280;
    sub_769370(v87);
  }

  sub_768050();
  v79 = sub_7680A0();
  v78 = v19;
  v57 = v20;
  v80 = v21;

  sub_768050();
  v68 = sub_7680A0();
  v67 = v22;
  v56 = v23;
  v69 = v24;

  *&v84 = 0xD000000000000017;
  *(&v84 + 1) = 0x80000000007CD220;
  v85 = 0;
  v86 = _swiftEmptyArrayStorage;
  __chkstk_darwin(v25);
  *(&v55 - 2) = a1;
  sub_BD88(&qword_9422E0);
  sub_93138();
  sub_768260();
  v26 = enum case for Prominence.increased(_:);
  v27 = *(v7 + 104);
  v28 = v9;
  v29 = v9;
  v30 = v61;
  v27(v29, enum case for Prominence.increased(_:), v61);
  sub_932D0(&qword_9422F8, &qword_9422D0, &unk_7819D0, sub_93138);
  v31 = v58;
  sub_768190();
  v55 = *(v7 + 8);
  v55(v28, v30);
  v32 = (*(v59 + 8))(v11, v31);
  v84 = xmmword_7817C0;
  v85 = 0;
  v86 = _swiftEmptyArrayStorage;
  __chkstk_darwin(v32);
  *(&v55 - 2) = a1;
  sub_BD88(&qword_942300);
  sub_93218();
  v33 = v62;
  sub_768260();
  v27(v28, v26, v30);
  sub_932D0(&qword_942320, &qword_9422C0, &unk_7819C0, sub_93218);
  v34 = v75;
  v35 = v64;
  sub_768190();
  v55(v28, v30);
  (*(v63 + 8))(v33, v35);
  v36 = v60 & 1;
  LOBYTE(v84) = v60 & 1;
  v83 = v57 & 1;
  LOBYTE(v28) = v57 & 1;
  LODWORD(v63) = v57 & 1;
  v62 = *(v73 + 16);
  v37 = v70;
  v38 = v74;
  (v62)(v70, v77, v74);
  v39 = v66;
  v61 = *(v66 + 16);
  (v61)(v82, v34, v76);
  v40 = v65;
  v41 = v72;
  v42 = v71;
  *v65 = v72;
  v40[1] = v42;
  *(v40 + 16) = v36;
  v43 = v79;
  v40[3] = v81;
  v40[4] = v43;
  v40[5] = v78;
  *(v40 + 48) = v28;
  v44 = v68;
  v40[7] = v80;
  v40[8] = v44;
  v40[9] = v67;
  LODWORD(v64) = v56 & 1;
  *(v40 + 80) = v56 & 1;
  v40[11] = v69;
  v45 = sub_BD88(&qword_942328);
  (v62)(v40 + *(v45 + 80), v37, v38);
  v46 = v40 + *(v45 + 96);
  v47 = v76;
  (v61)(v46, v82, v76);
  sub_93360(v41, v42, v36);

  sub_93360(v79, v78, v63);

  v48 = v68;
  v49 = v67;
  LOBYTE(v45) = v64;
  sub_93360(v68, v67, v64);
  v50 = *(v39 + 8);

  v51 = v47;
  v50(v75, v47);
  v52 = *(v73 + 8);
  v53 = v74;
  v52(v77, v74);
  v50(v82, v51);
  v52(v70, v53);
  sub_93370(v48, v49, v45);

  sub_93370(v79, v78, v83);

  sub_93370(v72, v71, v84);
}

uint64_t sub_908A8()
{
  if (*(v0 + 18))
  {
    sub_76A730(20);

    v2 = 0x1000000000000012;
  }

  else
  {
    sub_76A730(41);

    v2 = 0x1000000000000027;
  }

  sub_769370(*(v0 + 24));
  return v2;
}

uint64_t sub_90964()
{

  sub_BD88(&qword_942360);
  sub_16194(&qword_942368, &qword_942360);
  sub_931BC();
  sub_933D4();
  return sub_768250();
}

uint64_t sub_90A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_BD88(&qword_942330);
  __chkstk_darwin(v4);
  v6 = v20 - v5;
  v7 = sub_766390();
  __chkstk_darwin(v7 - 8);
  v8 = sub_BD88(&qword_942318);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - v10;
  if (*(a1 + 64))
  {
    v20[6] = 0xD000000000000016;
    v20[7] = 0x80000000007819F0;
    v21 = 1;
    v20[3] = sub_767CE0();
    sub_766380();
    v20[2] = sub_BD88(&qword_9422E0);
    v20[4] = v4;
    v20[5] = a2;
    v20[1] = sub_BD88(&qword_942338);
    sub_BD88(&qword_942340);
    sub_93380();
    sub_93138();
    sub_16194(&qword_942350, &qword_942338);
    sub_16194(&qword_942358, &qword_942340);
    sub_766350();
    (*(v9 + 16))(v6, v11, v8);
    swift_storeEnumTagMultiPayload();
    sub_16194(&qword_942310, &qword_942318);
    sub_767F00();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {

    sub_768050();
    v13 = sub_7680A0();
    v15 = v14;
    v17 = v16;
    v19 = v18;

    *v6 = v13;
    *(v6 + 1) = v15;
    v6[16] = v17 & 1;
    *(v6 + 3) = v19;
    swift_storeEnumTagMultiPayload();
    sub_16194(&qword_942310, &qword_942318);
    return sub_767F00();
  }
}

uint64_t sub_90E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_errorRetain();

  return ContentUnavailableView.init<>(error:retry:)(a1, a2, a3);
}

uint64_t sub_90EE8()
{

  sub_BD88(&qword_942360);
  sub_16194(&qword_942368, &qword_942360);
  sub_931BC();
  sub_933D4();
  return sub_768250();
}

uint64_t sub_90FC0@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[3];
  v9 = a1[2];
  v10 = v2;
  v11 = a1[4];
  v3 = v11;
  v4 = a1[1];
  v8[0] = *a1;
  v5 = v8[0];
  v8[1] = v4;
  a2[2] = v9;
  a2[3] = v2;
  a2[4] = v3;
  *a2 = v5;
  a2[1] = v4;
  return sub_93428(v8, &v7);
}

uint64_t sub_91030()
{
  v1 = sub_BD88(&qword_942298);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-v3];
  v5 = v0[3];
  v13[2] = v0[2];
  v13[3] = v5;
  v13[4] = v0[4];
  v6 = v0[1];
  v13[0] = *v0;
  v13[1] = v6;
  v9 = v13;
  sub_BD88(&qword_9422A0);
  sub_16194(&qword_9422A8, &qword_9422A0);
  sub_768070();
  v11 = sub_75D640();
  v12 = sub_930E8(&qword_9422B0, &type metadata accessor for JSIntentDispatcher);
  sub_768900();
  sub_768ED0();
  sub_16194(&qword_9422B8, &qword_942298);
  sub_7680F0();
  (*(v2 + 8))(v4, v1);
  return sub_BEB8(v10);
}

uint64_t sub_91260@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[6] != a1[4] || a1[7] != a1[5])
  {
    sub_76A950();
  }

  sub_768020();
  v5 = sub_7680A0();
  v7 = v6;
  v25 = v8;
  v10 = v9;

  v11 = sub_767EB0();
  v26[0] = 0;
  sub_91528(a1, &v39);
  v32 = *&v40[48];
  v33 = *&v40[64];
  v34 = *&v40[80];
  v35 = *&v40[96];
  v28 = v39;
  v29 = *v40;
  v30 = *&v40[16];
  v31 = *&v40[32];
  v36[0] = v39;
  v36[1] = *v40;
  v36[2] = *&v40[16];
  v36[3] = *&v40[32];
  v36[4] = *&v40[48];
  v36[5] = *&v40[64];
  v36[6] = *&v40[80];
  v36[7] = *&v40[96];
  sub_1ED18(&v28, &v37, &qword_942390);
  sub_10A2C(v36, &qword_942390);
  *&v27[71] = v32;
  *&v27[87] = v33;
  *&v27[103] = v34;
  *&v27[119] = v35;
  *&v27[7] = v28;
  *&v27[23] = v29;
  *&v27[39] = v30;
  *&v27[55] = v31;
  *&v37 = v11;
  *(&v37 + 1) = 0x4020000000000000;
  v38[0] = 0;
  *&v38[65] = *&v27[64];
  v13 = *&v27[48];
  v12 = *&v27[64];
  *&v38[49] = *&v27[48];
  *&v38[33] = *&v27[32];
  v15 = *&v27[16];
  v14 = *&v27[32];
  *&v38[17] = *&v27[16];
  *&v38[128] = *(&v35 + 1);
  *&v38[113] = *&v27[112];
  v17 = *&v27[96];
  v16 = *&v27[112];
  *&v38[97] = *&v27[96];
  v18 = *&v27[80];
  *&v38[81] = *&v27[80];
  v19 = *v27;
  *&v38[1] = *v27;
  v20 = *&v38[96];
  *(a2 + 128) = *&v38[80];
  *(a2 + 144) = v20;
  *(a2 + 160) = *&v38[112];
  v21 = *&v38[32];
  *(a2 + 64) = *&v38[16];
  *(a2 + 80) = v21;
  v22 = *&v38[64];
  *(a2 + 96) = *&v38[48];
  *(a2 + 112) = v22;
  v23 = *v38;
  *(a2 + 32) = v37;
  *(a2 + 48) = v23;
  *&v40[81] = v18;
  *&v40[97] = v17;
  *v41 = v16;
  *&v40[17] = v15;
  *&v40[33] = v14;
  *&v40[49] = v13;
  *&v40[65] = v12;
  v26[152] = v25 & 1;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v25 & 1;
  *(a2 + 24) = v10;
  *(a2 + 176) = *&v38[128];
  *&v39 = v11;
  *(&v39 + 1) = 0x4020000000000000;
  v40[0] = 0;
  *&v41[15] = *&v27[127];
  *&v40[1] = v19;
  sub_93360(v5, v7, v25 & 1);

  sub_1ED18(&v37, v26, &qword_942398);
  sub_10A2C(&v39, &qword_942398);
  sub_93370(v5, v7, v25 & 1);
}

uint64_t sub_91528@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v35 = a1[8];
  v38 = a1[9];

  sub_768020();
  v37 = sub_7680A0();
  v41 = v6;
  v42 = v7;
  v40 = v8;

  v9 = v4 == v2 && v5 == v3;
  if (!v9 && (sub_76A950() & 1) == 0)
  {
    v57._countAndFlagsBits = v2;
    v57._object = v3;
    sub_769370(v57);
    sub_768050();
    v20 = sub_7680A0();
    v22 = v21;
    v34 = v23;
    v25 = v24;

    v58._countAndFlagsBits = v4;
    v58._object = v5;
    sub_769370(v58);
    sub_768050();
    v26 = sub_7680A0();
    v28 = v27;
    v30 = v29;
    v32 = v31;

    LOBYTE(v52[0]) = v34 & 1;
    sub_93360(v20, v22, v34 & 1);

    sub_93360(v26, v28, v30 & 1);

    sub_93370(v26, v28, v30 & 1);

    sub_93370(v20, v22, v34 & 1);

    sub_93360(v20, v22, v34 & 1);

    sub_93360(v26, v28, v30 & 1);
    *&v53 = v20;
    *(&v53 + 1) = v22;
    LOBYTE(v54) = v34 & 1;
    *(&v54 + 1) = v25;
    *&v55 = v26;
    *(&v55 + 1) = v28;
    LOBYTE(v56) = v30 & 1;
    *(&v56 + 1) = v32;

    v10._object = v38;
    if (v38)
    {
      goto LABEL_7;
    }

LABEL_9:
    v19 = 0;
    v39 = 0;
    v18 = 0;
    v17 = 0;
    goto LABEL_10;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v10._object = v38;
  if (!v38)
  {
    goto LABEL_9;
  }

LABEL_7:
  *&v52[0] = 0x203A65746F4ELL;
  *(&v52[0] + 1) = 0xE600000000000000;
  v10._countAndFlagsBits = v35;
  sub_769370(v10);
  sub_768040();
  v11 = sub_7680A0();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v15 & 1;
  v19 = v11;
  v39 = v13;
  sub_93360(v11, v13, v15 & 1);

LABEL_10:
  v47 = v53;
  v48 = v54;
  v49 = v55;
  v51[0] = v53;
  v51[1] = v54;
  v50 = v56;
  v51[2] = v55;
  v51[3] = v56;
  v45 = v55;
  v46 = v56;
  v43 = v53;
  v44 = v54;
  sub_93360(v37, v41, v40 & 1);

  sub_93360(v37, v41, v40 & 1);

  sub_1ED18(v51, v52, &qword_9423A0);
  sub_937E4(v19, v39, v18, v17);
  sub_10A2C(&v53, &qword_9423A0);
  sub_93828(v19, v39, v18, v17);
  sub_93370(v37, v41, v40 & 1);

  *a2 = v37;
  *(a2 + 8) = v41;
  *(a2 + 16) = v40 & 1;
  *(a2 + 24) = v42;
  *(a2 + 32) = v43;
  *(a2 + 48) = v44;
  *(a2 + 64) = v45;
  *(a2 + 80) = v46;
  *(a2 + 96) = v19;
  *(a2 + 104) = v39;
  *(a2 + 112) = v18;
  *(a2 + 120) = v17;
  sub_93828(v19, v39, v18, v17);
  v52[0] = v47;
  v52[1] = v48;
  v52[2] = v49;
  v52[3] = v50;
  sub_10A2C(v52, &qword_9423A0);
  sub_93370(v37, v41, v40 & 1);
}

double sub_919D4@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v28[1] = v1[1];
  v4 = v1[3];
  v28[2] = v1[2];
  v28[3] = v4;
  v28[4] = v1[4];
  v28[0] = v3;
  v5 = sub_767E20();
  v27 = 0;
  sub_91260(v28, &v14);
  v37 = v22;
  v38 = v23;
  v39 = v24;
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v32 = v17;
  v41[8] = v22;
  v41[9] = v23;
  v41[10] = v24;
  v41[4] = v18;
  v41[5] = v19;
  v41[6] = v20;
  v41[7] = v21;
  v41[0] = v14;
  v41[1] = v15;
  v40 = v25;
  v42 = v25;
  v41[2] = v16;
  v41[3] = v17;
  sub_1ED18(&v29, v13, &qword_942388);
  sub_10A2C(v41, &qword_942388);
  *(&v26[8] + 7) = v37;
  *(&v26[9] + 7) = v38;
  *(&v26[10] + 7) = v39;
  *(&v26[11] + 7) = v40;
  *(&v26[4] + 7) = v33;
  *(&v26[5] + 7) = v34;
  *(&v26[6] + 7) = v35;
  *(&v26[7] + 7) = v36;
  *(v26 + 7) = v29;
  *(&v26[1] + 7) = v30;
  *(&v26[2] + 7) = v31;
  *(&v26[3] + 7) = v32;
  v6 = v26[9];
  *(a1 + 145) = v26[8];
  *(a1 + 161) = v6;
  *(a1 + 177) = v26[10];
  *(a1 + 192) = *(&v26[10] + 15);
  v7 = v26[5];
  *(a1 + 81) = v26[4];
  *(a1 + 97) = v7;
  v8 = v26[7];
  *(a1 + 113) = v26[6];
  *(a1 + 129) = v8;
  v9 = v26[1];
  *(a1 + 17) = v26[0];
  *(a1 + 33) = v9;
  result = *&v26[2];
  v11 = v26[3];
  *(a1 + 49) = v26[2];
  v12 = v27;
  *a1 = v5;
  *(a1 + 8) = 0x4038000000000000;
  *(a1 + 16) = v12;
  *(a1 + 65) = v11;
  return result;
}

uint64_t sub_91BE4()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 ams_activeiTunesAccount];
  v2 = v1;
  if (!v1)
  {
    v3 = [v0 ams_fetchLocaliTunesAccount];
    v11 = 0;
    v4 = [v3 resultWithError:&v11];

    if (!v4)
    {
      v9 = v11;
      sub_756F70();

      swift_willThrow();

      v2 = 0;
      goto LABEL_7;
    }

    v5 = v11;
    v2 = v4;
    v1 = 0;
  }

  v6 = v1;
  v7 = [v2 ams_storefront];

  if (!v7)
  {
LABEL_7:

    return 0;
  }

  v8 = sub_769240();

  return v8;
}

__n128 sub_91D6C@<Q0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_92C2C(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[3];
    *(a3 + 32) = v7[2];
    *(a3 + 48) = v6;
    *(a3 + 64) = v7[4];
    result = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = result;
  }

  return result;
}

uint64_t sub_91DBC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_91DC8()
{
  v0 = sub_7572E0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&qword_942288);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_7817D0;
  v72 = 0x80000000007CCD30;
  v75._countAndFlagsBits = 0xD000000000000016;
  v75._object = 0x80000000007CCD60;
  v84._countAndFlagsBits = 0;
  v84._object = 0xE000000000000000;
  v5 = sub_75B750(v75, v84);
  v7 = v6;
  sub_7572D0();
  v8 = sub_7572B0();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v3, v0);
  v74 = v1 + 8;
  *(v4 + 32) = v8;
  *(v4 + 40) = v10;
  v12 = v72;
  *(v4 + 48) = 0xD000000000000025;
  *(v4 + 56) = v12;
  *(v4 + 64) = 1852141647;
  *(v4 + 72) = 0xE400000000000000;
  *(v4 + 80) = v5;
  *(v4 + 88) = v7;
  v72 = 0x80000000007CCD80;
  *(v4 + 96) = 0u;
  v76._countAndFlagsBits = 0x525F5245544F4F46;
  v76._object = 0xED00004D45454445;
  v85._countAndFlagsBits = 0;
  v85._object = 0xE000000000000000;
  v13 = sub_75B750(v76, v85);
  v15 = v14;
  sub_7572D0();
  v16 = sub_7572B0();
  v18 = v17;
  v11(v3, v0);
  *(v4 + 112) = v16;
  *(v4 + 120) = v18;
  v19 = v72;
  *(v4 + 128) = 0xD000000000000025;
  *(v4 + 136) = v19;
  *(v4 + 144) = 0x6D6565646552;
  *(v4 + 152) = 0xE600000000000000;
  *(v4 + 160) = v13;
  *(v4 + 168) = v15;
  v72 = 0x80000000007CCDB0;
  *(v4 + 176) = 0u;
  v77._object = 0x80000000007CCE00;
  v77._countAndFlagsBits = 0xD000000000000013;
  v86._countAndFlagsBits = 0;
  v86._object = 0xE000000000000000;
  v70 = sub_761130(v77, 2, v86);
  v21 = v20;
  sub_7572D0();
  v22 = sub_7572B0();
  v24 = v23;
  v73 = v0;
  v11(v3, v0);
  *(v4 + 192) = v22;
  *(v4 + 200) = v24;
  v25 = v72;
  *(v4 + 208) = 0xD000000000000041;
  *(v4 + 216) = v25;
  *(v4 + 224) = 0x676E697461522032;
  *(v4 + 232) = 0xE900000000000073;
  *(v4 + 240) = v70;
  *(v4 + 248) = v21;
  v72 = 0x80000000007CCE20;
  *(v4 + 256) = 0u;
  v78._object = 0x80000000007CCE00;
  v78._countAndFlagsBits = 0xD000000000000013;
  v87._countAndFlagsBits = 0;
  v87._object = 0xE000000000000000;
  v26 = sub_761130(v78, 1, v87);
  v28 = v27;
  sub_7572D0();
  v29 = sub_7572B0();
  v31 = v30;
  v11(v3, v0);
  *(v4 + 272) = v29;
  *(v4 + 280) = v31;
  v32 = v72;
  *(v4 + 288) = 0xD000000000000041;
  *(v4 + 296) = v32;
  *(v4 + 304) = 0x676E697461522031;
  *(v4 + 312) = 0xE800000000000000;
  *(v4 + 320) = v26;
  *(v4 + 328) = v28;
  v72 = 0x80000000007CCEB0;
  v79._countAndFlagsBits = 0xD000000000000028;
  *(v4 + 336) = 0u;
  v79._object = 0x80000000007CCED0;
  v88._countAndFlagsBits = 0;
  v88._object = 0xE000000000000000;
  v33 = sub_761130(v79, 3, v88);
  v35 = v34;
  sub_7572D0();
  v36 = sub_7572B0();
  v38 = v37;
  v39 = v73;
  v71 = v11;
  v11(v3, v73);
  *(v4 + 352) = v36;
  *(v4 + 360) = v38;
  *(v4 + 368) = 0xD000000000000036;
  *(v4 + 376) = 0x80000000007CCE70;
  v40 = v72;
  *(v4 + 384) = 0xD000000000000017;
  *(v4 + 392) = v40;
  *(v4 + 400) = v33;
  *(v4 + 408) = v35;
  v72 = 0x80000000007CCF00;
  v70 = 0x80000000007CCF50;
  *(v4 + 416) = 0u;
  v80._object = 0x80000000007CCF70;
  v80._countAndFlagsBits = 0xD00000000000002FLL;
  v89._countAndFlagsBits = 0;
  v89._object = 0xE000000000000000;
  v41 = sub_761130(v80, 1, v89);
  v43 = v42;
  sub_7572D0();
  v44 = sub_7572B0();
  v46 = v45;
  v11(v3, v39);
  *(v4 + 432) = v44;
  *(v4 + 440) = v46;
  v47 = v72;
  *(v4 + 448) = 0xD000000000000045;
  *(v4 + 456) = v47;
  v48 = v70;
  *(v4 + 464) = 0xD000000000000014;
  *(v4 + 472) = v48;
  *(v4 + 480) = v41;
  *(v4 + 488) = v43;
  v72 = 0x80000000007CCFF0;
  *(v4 + 496) = 0u;
  v81._object = 0x80000000007CCF70;
  v81._countAndFlagsBits = 0xD00000000000002FLL;
  v90._countAndFlagsBits = 0;
  v90._object = 0xE000000000000000;
  v70 = sub_761130(v81, 2, v90);
  v50 = v49;
  sub_7572D0();
  v51 = sub_7572B0();
  v53 = v52;
  v54 = v71;
  v71(v3, v39);
  *(v4 + 512) = v51;
  *(v4 + 520) = v53;
  *(v4 + 528) = 0xD000000000000045;
  *(v4 + 536) = 0x80000000007CCFA0;
  *(v4 + 544) = 0xD000000000000015;
  *(v4 + 552) = 0x80000000007CCFF0;
  *(v4 + 560) = v70;
  *(v4 + 568) = v50;
  v70 = 0x80000000007CD010;
  v82._countAndFlagsBits = 0xD00000000000002CLL;
  *(v4 + 576) = 0u;
  v82._object = 0x80000000007CD070;
  v91._countAndFlagsBits = 0;
  v91._object = 0xE000000000000000;
  v55 = sub_761130(v82, 2, v91);
  v57 = v56;
  sub_7572D0();
  v58 = sub_7572B0();
  v60 = v59;
  v61 = v73;
  v54(v3, v73);
  *(v4 + 592) = v58;
  *(v4 + 600) = v60;
  *(v4 + 608) = 0xD000000000000050;
  *(v4 + 616) = v70;
  *(v4 + 624) = 0xD000000000000015;
  *(v4 + 632) = v72;
  *(v4 + 640) = v55;
  *(v4 + 648) = v57;
  v83._countAndFlagsBits = 0xD000000000000011;
  *(v4 + 656) = 0u;
  v83._object = 0x80000000007CD0D0;
  v62 = sub_762F40(v83);
  v64 = v63;
  sub_7572D0();
  v65 = sub_7572B0();
  v67 = v66;
  result = (v54)(v3, v61);
  *(v4 + 672) = v65;
  *(v4 + 680) = v67;
  *(v4 + 688) = 0xD000000000000023;
  *(v4 + 696) = 0x80000000007CD0A0;
  *(v4 + 704) = 0xB9B4E88D85E5;
  *(v4 + 712) = 0xA600000000000000;
  *(v4 + 720) = v62;
  *(v4 + 728) = v64;
  *(v4 + 736) = 0xD00000000000002FLL;
  *(v4 + 744) = 0x80000000007CD0F0;
  qword_942230 = v4;
  return result;
}

void sub_924C4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = [v4 valueWithNewObjectInContext:a1];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 valueWithObject:sub_76A990() inContext:a1];
    swift_unknownObjectRelease();
    if (v7)
    {
      sub_769F90();
      a2[3] = sub_BE70(0, &qword_9423B8);
      a2[4] = &protocol witness table for JSValue;

      *a2 = v6;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_925F4()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_92664@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_9386C(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_92690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_BD88(&unk_945000);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v8 = sub_91BE4();
  v31 = v9;
  v32 = v8;
  v36 = 0;
  v37 = 0xE000000000000000;

  sub_76A730(64);
  v38._object = 0x80000000007CCCF0;
  v38._countAndFlagsBits = 0x1000000000000032;
  sub_769370(v38);
  v39._object = 0x80000000007CB490;
  v39._countAndFlagsBits = 0xD000000000000013;
  sub_769370(v39);
  v40._countAndFlagsBits = 0x206562206F742022;
  v40._object = 0xEC00000065757274;
  sub_769370(v40);
  v29 = v37;
  v30 = v36;
  sub_768800();
  sub_7689F0();
  sub_7689E0();
  sub_7686D0();

  (*(v5 + 8))(v7, v4);
  v10 = v36;
  sub_75A920();
  sub_768900();
  v33 = a1;
  sub_768ED0();
  v28 = v36;
  v11 = sub_75A750();
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  if (v13 == 0x2D736E61482D687ALL && v14 == 0xEA00000000004E43)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_76A950();
  }

  v26 = v15 & 1;
  v27 = v10 & 1;
  v16 = [objc_opt_self() mainBundle];
  v17._rawValue = &off_87EA20;
  v18 = sub_76A180(v17);
  v20 = v19;

  v36 = v18;
  v37 = v20;
  v34 = 26746;
  v35 = 0xE200000000000000;
  sub_92A7C();
  sub_92AD0();
  LOBYTE(v16) = sub_769170();

  LOBYTE(v20) = v16 & 1;
  v22 = v31;
  v21 = v32;
  v36 = v32;
  v37 = v31;
  v34 = 0x312D313434333431;
  v35 = 0xE800000000000000;
  LOBYTE(v16) = sub_769170();

  *a2 = v13;
  *(a2 + 8) = v14;
  *(a2 + 16) = v26;
  *(a2 + 17) = v20;
  *(a2 + 18) = v16 & 1;
  *(a2 + 24) = v21;
  *(a2 + 32) = v22;
  v24 = v29;
  *(a2 + 40) = v30;
  *(a2 + 48) = v24;
  *(a2 + 56) = v27;
  return result;
}

unint64_t sub_92A7C()
{
  result = qword_942278;
  if (!qword_942278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_942278);
  }

  return result;
}

unint64_t sub_92AD0()
{
  result = qword_942280;
  if (!qword_942280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_942280);
  }

  return result;
}

__n128 sub_92B24(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_92B58(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_92BA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_92C2C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v57 = a3;
  v59 = a2;
  v4 = sub_7572E0();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v54 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_768520();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v48 - v10;
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  __chkstk_darwin(v15);
  v17 = &v48 - v16;
  v18 = 0xE400000000000000;
  sub_768530();
  v53 = sub_768510();
  v20 = v19;
  v21 = *(v7 + 8);
  v21(v17, v6);
  if (v20)
  {
    v58 = v20;
    v22 = 0x6465746365707865;
    v18 = 0xE800000000000000;
    sub_768530();
    v51 = sub_768510();
    v24 = v23;
    v21(v14, v6);
    v25 = a1;
    if (v24)
    {
      v50 = v24;
      v22 = 0x6C6175746361;
      sub_768530();
      v26 = sub_768510();
      v28 = v27;
      v21(v11, v6);
      if (v28)
      {
        v48 = v26;
        v49 = v28;
        v29 = v52;
        sub_768530();
        v30 = v21;
        v31 = sub_768510();
        v33 = v32;
        v30(v29, v6);
        v34 = v54;
        sub_7572D0();
        v35 = sub_7572B0();
        v37 = v36;
        v38 = sub_768650();
        (*(*(v38 - 8) + 8))(v59, v38);
        v30(v25, v6);
        result = (*(v55 + 8))(v34, v56);
        v40 = v57;
        *v57 = v35;
        v40[1] = v37;
        v41 = v58;
        v40[2] = v53;
        v40[3] = v41;
        v42 = v50;
        v40[4] = v51;
        v40[5] = v42;
        v43 = v49;
        v40[6] = v48;
        v40[7] = v43;
        v40[8] = v31;
        v40[9] = v33;
        return result;
      }

      v44 = v21;

      v18 = 0xE600000000000000;
    }

    else
    {
      v44 = v21;
    }
  }

  else
  {
    v44 = v21;
    v25 = a1;
    v22 = 1701667182;
  }

  v45 = sub_769010();
  sub_930E8(&qword_942290, &type metadata accessor for JSONError);
  swift_allocError();
  *v46 = v22;
  v46[1] = v18;
  v46[2] = &type metadata for LocalizationTestCase;
  (*(*(v45 - 8) + 104))(v46, enum case for JSONError.missingProperty(_:), v45);
  swift_willThrow();
  v47 = sub_768650();
  (*(*(v47 - 8) + 8))(v59, v47);
  return v44(v25, v6);
}

uint64_t sub_930E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_93138()
{
  result = qword_9422E8;
  if (!qword_9422E8)
  {
    sub_133D8(&qword_9422E0);
    sub_931BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9422E8);
  }

  return result;
}

unint64_t sub_931BC()
{
  result = qword_9422F0;
  if (!qword_9422F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9422F0);
  }

  return result;
}

unint64_t sub_93218()
{
  result = qword_942308;
  if (!qword_942308)
  {
    sub_133D8(&qword_942300);
    sub_16194(&qword_942310, &qword_942318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_942308);
  }

  return result;
}

uint64_t sub_932D0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_133D8(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_93360(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_93370(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_93380()
{
  result = qword_942348;
  if (!qword_942348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_942348);
  }

  return result;
}

unint64_t sub_933D4()
{
  result = qword_942370;
  if (!qword_942370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_942370);
  }

  return result;
}

__n128 sub_93460(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_93474(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_934BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_9350C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_93554(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_935B8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_935D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_9361C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_9367C()
{
  sub_133D8(&qword_942298);
  sub_16194(&qword_9422B8, &qword_942298);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_93718()
{
  result = qword_942378;
  if (!qword_942378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_942378);
  }

  return result;
}

unint64_t sub_93774()
{
  result = qword_942380;
  if (!qword_942380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_942380);
  }

  return result;
}

uint64_t sub_937E4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_93360(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_93828(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_93370(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_9386C(char *a1, uint64_t a2)
{
  v32 = a2;
  v31 = sub_768650();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&qword_9423A8);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_768520();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_769000();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  v33 = a1;
  sub_768530();
  sub_768500();
  v18 = *(v8 + 8);
  v30 = v7;
  v18(v10, v7);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    sub_10A2C(v6, &qword_9423A8);
    v19 = sub_769010();
    sub_930E8(&qword_942290, &type metadata accessor for JSONError);
    swift_allocError();
    *v20 = 0x6573614374736574;
    v20[1] = 0xE900000000000073;
    v20[2] = &type metadata for LocalizationTestResponse;
    (*(*(v19 - 8) + 104))(v20, enum case for JSONError.missingProperty(_:), v19);
    swift_willThrow();
    (*(v29 + 8))(v32, v31);
    v18(v33, v30);
  }

  else
  {
    (*(v12 + 32))(v17, v6, v11);
    v21 = *(v12 + 16);
    v27 = v18;
    v21(v14, v17, v11);
    v22 = v29;
    v24 = v31;
    v23 = v32;
    (*(v29 + 16))(v28, v32, v31);
    sub_93D04();
    v19 = sub_769520();
    (*(v22 + 8))(v23, v24);
    v27(v33, v30);
    (*(v12 + 8))(v17, v11);
  }

  return v19;
}

unint64_t sub_93D04()
{
  result = qword_9423B0;
  if (!qword_9423B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9423B0);
  }

  return result;
}

unint64_t sub_93DD8()
{
  result = qword_9423D0;
  if (!qword_9423D0)
  {
    sub_760F60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9423D0);
  }

  return result;
}

uint64_t sub_93E30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_75FF70();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v10 = sub_32CF48(Strong);

  v24 = v10;
  sub_3C80C();
  v11 = v10;
  sub_BD88(&qword_940AE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    sub_6C9A8(&v21);
LABEL_6:
    sub_BD88(&qword_94DDC0);
    sub_94148();
    swift_allocError();
    v14 = sub_768F20();

    return v14;
  }

  sub_10914(&v21, v25);
  v12 = v26;
  v13 = v27;
  sub_B170(v25, v26);
  if (!(*(v13 + 8))(v12, v13))
  {
    sub_BEB8(v25);
    goto LABEL_6;
  }

  sub_BD88(&qword_94DDC0);
  v14 = sub_768F90();
  v15 = sub_75F3B0();
  sub_768900();
  sub_768ED0();
  v20 = a2;
  *(&v22 + 1) = v15;
  v23 = &protocol witness table for GuidedSearchPresenter;

  sub_75FF60();
  v16 = sub_75FF50();
  sub_75B430();
  v17 = sub_75B410();
  v19 = &v19;
  __chkstk_darwin(v17);
  *(&v19 - 4) = v3;
  *(&v19 - 3) = v16;
  *(&v19 - 2) = v20;
  *(&v19 - 1) = v14;
  sub_75B3E0();

  (*(v6 + 8))(v8, v5);
  sub_BEB8(v25);
  return v14;
}

unint64_t sub_94148()
{
  result = qword_9423D8;
  if (!qword_9423D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9423D8);
  }

  return result;
}

unint64_t sub_941B0()
{
  result = qword_9423E0;
  if (!qword_9423E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9423E0);
  }

  return result;
}

id sub_94204(char a1)
{
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_isCollapsing) = a1;
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_detailPageView);
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_isCollapsing) = a1;
  *(*(v2 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaContainerView) + OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_isCollapsing) = a1;
  [*(v2 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_closeButton) setAlpha:0.0];
  v3 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_contentView);

  return [v3 setAlpha:0.0];
}

void sub_942B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_isCollapsing] = 0;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_learnMoreActionMetrics;
  v10 = sub_7687B0();
  v11 = *(*(v10 - 8) + 56);
  v11(&v4[v9], 1, 1, v10);
  v11(&v4[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_backButtonActionMetrics], 1, 1, v10);
  v11(&v4[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_closeButtonActionMetrics], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_objectGraph] = a2;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_presenter] = a1;
  sub_75A110();
  sub_768900();

  sub_768ED0();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_artworkLoader] = v25;

  sub_75A120();

  sub_75A0D0();

  v12 = &v4[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_lifecycleObserver];
  *(v12 + 3) = sub_758620();
  *(v12 + 4) = &protocol witness table for BasePresenter;
  *v12 = a1;
  v13 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageView());

  *&v4[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_detailPageView] = sub_4241F8(a2);
  v14 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageTransitioningDelegate());
  v15 = a3;
  v16 = sub_2F8AE8(a3);

  *&v4[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_containerTransitioningDelegate] = v16;
  v24.receiver = v4;
  v24.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v24, "initWithNibName:bundle:", 0, 0);
  sub_761120();
  v18 = v17;
  sub_768ED0();
  v19 = v25;
  v20 = v18;
  sub_7610F0();

  sub_98150(&qword_942488, type metadata accessor for AppPromotionDetailPageViewController);
  sub_758610();
  v21 = [v20 view];

  if (!v21)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v22 = [v20 view];
  if (!v22)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [v22 setClipsToBounds:0];

  v23 = [v20 view];
  if (v23)
  {
    [v23 addSubview:*&v20[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_detailPageView]];

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_9477C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7587B0();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "viewDidLoad", v5);
  sub_B170(&v1[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v3);
  sub_7587C0();
  (*(v4 + 8))(v7, v3);
  *(*&v1[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_detailPageView] + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_delegate + 8) = &off_8823E0;
  swift_unknownObjectWeakAssign();
  return sub_75A160();
}

void sub_94948(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_7587B0();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewWillAppear:", a1 & 1, v7);
  sub_B170(&v2[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v5);
  sub_7587C0();
  (*(v6 + 8))(v9, v5);
  sub_761120();
  sub_768900();

  sub_768ED0();

  v10 = v12[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_98150(&qword_93F500, type metadata accessor for VideoView);
  }

  sub_98150(&qword_954EC0, type metadata accessor for AppPromotionDetailPageView);
  sub_761100();
}

void sub_94C08(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_7572A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7587B0();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = v2;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, "viewDidAppear:", a1 & 1, v11);
  sub_B170(&v2[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v9);
  sub_7587C0();
  (*(v10 + 8))(v13, v9);
  if (sub_75A130())
  {
    sub_757290();
    sub_757270();
    (*(v6 + 8))(v8, v5);
    sub_75CAA0();
  }

  sub_75A0A0();
  sub_75B430();
  sub_75B410();
  sub_75A170();
  sub_75B3F0();

  sub_761120();
  sub_768900();

  sub_768ED0();

  v14 = v15[1];
  sub_7610A0();
  sub_426DA8();
}

uint64_t sub_94F48(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_7572A0();
  v19 = *(v5 - 8);
  v20 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_768D60();
  __chkstk_darwin(v8 - 8);
  v9 = sub_BD88(&qword_940CB0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = sub_7587B0();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v2;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "viewWillDisappear:", a1 & 1, v14);
  sub_B170(&v2[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  sub_768D50();
  (*(v13 + 104))(v16, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v12);
  sub_7587C0();
  (*(v13 + 8))(v16, v12);
  if (sub_75A130())
  {
    sub_768D50();
    sub_757290();
    sub_757270();
    (*(v19 + 8))(v7, v20);
    sub_75CAC0();
    v17 = sub_75CAD0();
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    sub_75CAB0();
  }

  sub_75A0A0();
  sub_75B430();
  sub_75B410();
  sub_75B3F0();

  sub_75B410();
  sub_75B390();
}

void sub_95318(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_7587B0();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewDidDisappear:", a1 & 1, v7);
  sub_B170(&v2[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v5);
  sub_7587C0();
  (*(v6 + 8))(v9, v5);
  sub_4115EC();
  sub_761120();
  sub_768900();

  sub_768ED0();

  v10 = v12[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_98150(&qword_93F500, type metadata accessor for VideoView);
  }

  sub_98150(&qword_954EC0, type metadata accessor for AppPromotionDetailPageView);
  sub_7610C0();
}

uint64_t sub_9568C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7587B0();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "as_viewDidBecomeFullyVisible", v5);
  sub_B170(&v1[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v3);
  sub_7587C0();
  (*(v4 + 8))(v7, v3);
  sub_75A0A0();
  sub_75B430();
  sub_75B410();
  sub_75A170();
  sub_75B3F0();

  sub_75B410();
  sub_75B390();
}

uint64_t sub_9588C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7587B0();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "as_viewWillBecomePartiallyVisible", v5);
  sub_B170(&v1[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  sub_768D50();
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v3);
  sub_7587C0();
  (*(v4 + 8))(v7, v3);
  sub_75A0A0();
  sub_75B430();
  sub_75B410();
  sub_75B3F0();

  sub_75B410();
  sub_75B390();
}

void sub_95AA8(SEL *a1, unsigned int *a2, void (*a3)(uint64_t))
{
  v7 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_7587B0();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v7;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, *a1, v11);
  sub_B170(&v7[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_lifecycleObserver], *&v7[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, *a2, v9);
  sub_7587C0();
  (*(v10 + 8))(v13, v9);
  sub_761120();
  sub_768900();

  sub_768ED0();

  v15 = v16[1];
  a3(v14);
}

id sub_95CC0()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_detailPageView];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = sub_4FF230([v1 setFrame:{v5, v7, v9, v11}]);
    v13 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_defaultPageMargin;
    *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_defaultPageMargin] = v12;
    v14 = [v1 traitCollection];
    LOBYTE(v3) = sub_7699F0();

    if (v3)
    {
      v15 = -*&v1[v13];
    }

    else
    {
      v15 = 0.0;
    }

    return [*&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageScrollView] setScrollIndicatorInsets:{0.0, v15}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_95E44(void *a1)
{
  v2 = v1;
  v17.receiver = v1;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v4 = sub_769A00() & 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v1 traitCollection];
  v6 = sub_769A00();

  if (v4 == 2 || ((v6 ^ v4) & 1) != 0)
  {
    goto LABEL_12;
  }

  v7 = [v2 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_12:
    sub_758600();
    goto LABEL_13;
  }

  v9 = [a1 preferredContentSizeCategory];
  v10 = sub_769240();
  v12 = v11;
  if (v10 == sub_769240() && v12 == v13)
  {

    goto LABEL_13;
  }

  v14 = sub_76A950();

  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  v15 = [v2 view];
  if (v15)
  {
    v16 = v15;
    [v15 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void sub_960E8()
{
  v1 = sub_7587B0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170((v0 + OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_lifecycleObserver), *(v0 + OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_lifecycleObserver + 24));
  (*(v2 + 104))(v4, enum case for StoreViewControllerLifecycleEvent.appEnteredWhileAppeared(_:), v1);
  sub_7587C0();
  (*(v2 + 8))(v4, v1);
  sub_761120();
  sub_768900();

  sub_768ED0();

  v5 = v6[1];
  sub_761080();
}

id sub_963DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_BD88(&unk_951310);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  sub_761320();
  if (swift_dynamicCastClass())
  {

    sub_7612C0();
    v7 = OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_learnMoreActionMetrics;
    swift_beginAccess();
    sub_975B0(v6, &v1[v7]);
    swift_endAccess();
    sub_7612D0();
    v8 = OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_backButtonActionMetrics;
    swift_beginAccess();
    sub_975B0(v6, &v1[v8]);
    swift_endAccess();
    sub_7612F0();
  }

  else
  {
    sub_75E230();
    if (!swift_dynamicCastClass())
    {
      goto LABEL_6;
    }

    sub_75E1D0();
    v9 = OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_learnMoreActionMetrics;
    swift_beginAccess();
    sub_975B0(v6, &v1[v9]);
    swift_endAccess();
    sub_75E1E0();
    v10 = OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_backButtonActionMetrics;
    swift_beginAccess();
    sub_975B0(v6, &v1[v10]);
    swift_endAccess();
    sub_75E200();
  }

  v11 = OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_closeButtonActionMetrics;
  swift_beginAccess();
  sub_975B0(v6, &v2[v11]);
  swift_endAccess();
LABEL_6:
  v12 = [v2 traitCollection];
  if (v12)
  {
    v13 = v12;
    if (sub_7699D0())
    {
      sub_769A00();
    }
  }

  result = [v2 view];
  if (result)
  {
    v15 = result;
    [result bounds];

    v16 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_artworkLoader];
    v17 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_objectGraph];

    sub_4124D4(a1, v16, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_966A0(uint64_t a1)
{
  v3 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_objectGraph;
  v7 = sub_BD88(&unk_93F630);

  sub_768860();

  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10A2C(v5, &unk_93F980);
  }

  v10 = *(v1 + v6);

  sub_32A6C0(a1, 1, v10, v5);

  return (*(v8 + 8))(v5, v7);
}

uint64_t sub_96828(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  sub_75B430();
  sub_75B410();
  sub_75B3C0();

  sub_75B410();

  sub_75B3D0();

  v6 = sub_7585F0();
  if (v6)
  {
    v7 = v6;
    v8 = OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_objectGraph;
    v9 = sub_BD88(&unk_93F630);

    sub_768860();

    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v5, 1, v9) == 1)
    {
      sub_10A2C(v5, &unk_93F980);
    }

    else
    {
      v12 = *(a2 + v8);

      sub_32A6C0(v7, 1, v12, v5);

      (*(v10 + 8))(v5, v9);
    }

    sub_75B410();
    sub_75B3D0();
  }

  else
  {
  }
}

uint64_t sub_96A80()
{
  v0 = sub_7684B0();
  v17 = *(v0 - 8);
  v18 = v0;
  __chkstk_darwin(v0);
  v2 = v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_768CD0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v16 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v13 - v7;
  sub_BD88(&qword_942490);

  sub_7688F0();

  v14 = v22;
  v15 = v21;
  sub_75B430();
  sub_75B410();
  sub_75B3C0();

  sub_75B410();
  v13[3] = sub_75B420();

  sub_75B410();
  sub_75B400();

  v9 = sub_762E40();

  sub_7688F0();

  if (v19[0])
  {
    v10 = &protocol witness table for SearchGhostHintMetricsTracker;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v19[1] = 0;
    v19[2] = 0;
  }

  v19[3] = v9;
  v19[4] = v10;
  sub_75B410();
  sub_75B3B0();

  sub_BD88(&qword_942498);

  sub_7688F0();

  sub_768CC0();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_10A2C(v20, &qword_9424A0);
  sub_10A2C(v19, &qword_9424A8);
  (*(v4 + 16))(v16, v8, v3);

  sub_768490();
  v11 = sub_7688C0();

  (*(v17 + 8))(v2, v18);
  (*(v4 + 8))(v8, v3);
  return v11;
}

uint64_t type metadata accessor for AppPromotionDetailPageViewController()
{
  result = qword_942460;
  if (!qword_942460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_9714C()
{
  sub_97218();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_97218()
{
  if (!qword_942470)
  {
    sub_7687B0();
    v0 = sub_76A480();
    if (!v1)
    {
      atomic_store(v0, &qword_942470);
    }
  }
}

CGFloat sub_972E4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_detailPageView);
  [v1 bounds];
  v2 = CGRectGetWidth(v4) * 0.5;
  [v1 bounds];
  CGRectGetHeight(v5);
  return v2;
}

void *sub_9734C()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_detailPageView) + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_closeButton);
  v2 = v1;
  return v1;
}

uint64_t sub_97390()
{
  sub_75B430();
  sub_75B410();
  sub_75A170();
  sub_75B3F0();
}

id sub_97404()
{
  v1 = sub_7587B0();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v1, v3);
  sub_758620();
  sub_98150(&qword_942480, &type metadata accessor for AppPromotionDetailPagePresenter);
  sub_75EBD0();
  (*(v2 + 8))(v5, v1);
  return [v0 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_975B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_951310);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_97620()
{
  v1 = v0;
  v2 = sub_7587B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75B430();
  sub_75B410();
  v6 = sub_75B3C0();

  (*(v3 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v2);
  sub_758620();
  sub_98150(&qword_942480, &type metadata accessor for AppPromotionDetailPagePresenter);
  sub_75EBD0();
  (*(v3 + 8))(v5, v2);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v0;
  aBlock[4] = sub_98130;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_8824A0;
  v8 = _Block_copy(aBlock);
  v9 = v1;

  [v9 dismissViewControllerAnimated:1 completion:v8];
  _Block_release(v8);
}

id sub_97848()
{
  v1 = v0;
  v2 = sub_7587B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_BD88(&unk_951310);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_7687B0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  v18 = OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_closeButtonActionMetrics;
  swift_beginAccess();
  sub_97CFC(v1 + v18, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10A2C(v10, &unk_951310);
  }

  else
  {
    v26 = v3;
    (*(v12 + 32))(v17, v10, v11);
    v19 = sub_BD88(&unk_93F630);

    sub_768860();

    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v7, 1, v19) == 1)
    {
      (*(v12 + 8))(v17, v11);
      sub_10A2C(v7, &unk_93F980);
    }

    else
    {
      sub_759240();
      (*(v12 + 16))(v14, v17, v11);
      v21 = sub_759220();
      v22 = sub_96A80();
      sub_32AC48(v21, 1, v22, v7);
      v25 = v2;

      v2 = v25;

      (*(v12 + 8))(v17, v11);
      (*(v20 + 8))(v7, v19);
    }

    v3 = v26;
  }

  v23 = v27;
  (*(v3 + 104))(v27, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v2);
  sub_758620();
  sub_98150(&qword_942480, &type metadata accessor for AppPromotionDetailPagePresenter);
  sub_75EBD0();
  (*(v3 + 8))(v23, v2);
  return [v1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_97CFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_951310);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_97D84(uint64_t *a1)
{
  v3 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - v4;
  v6 = sub_BD88(&unk_951310);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_7687B0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v24 - v14;
  v16 = *a1;
  swift_beginAccess();
  sub_97CFC(v1 + v16, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v17 = &unk_951310;
    v18 = v8;
    return sub_10A2C(v18, v17);
  }

  (*(v10 + 32))(v15, v8, v9);
  v19 = sub_BD88(&unk_93F630);

  sub_768860();

  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v5, 1, v19) == 1)
  {
    (*(v10 + 8))(v15, v9);
    v17 = &unk_93F980;
    v18 = v5;
    return sub_10A2C(v18, v17);
  }

  sub_759240();
  (*(v10 + 16))(v12, v15, v9);
  v22 = sub_759220();
  v23 = sub_96A80();
  sub_32AC48(v22, 1, v23, v5);

  (*(v10 + 8))(v15, v9);
  return (*(v20 + 8))(v5, v19);
}

uint64_t sub_980F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_98138(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_98150(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_981B0()
{
  result = qword_9424B0;
  if (!qword_9424B0)
  {
    sub_75D5D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9424B0);
  }

  return result;
}

uint64_t sub_98210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HttpTemplateController();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider22HttpTemplateController_textFields] = _swiftEmptyArrayStorage;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider22HttpTemplateController_okAction] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider22HttpTemplateController_hasRequiredParameters] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider22HttpTemplateController_templateAction] = a1;
  v6 = &v5[OBJC_IVAR____TtC18ASMessagesProvider22HttpTemplateController_actionSender];
  *v6 = 0u;
  v6[1] = 0u;
  v11.receiver = v5;
  v11.super_class = v4;

  v7 = objc_msgSendSuper2(&v11, "init");
  v8 = sub_65DD94(a2);
  v9 = sub_72D7A8(v8, 1, a2);

  return v9;
}

uint64_t sub_982F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v82 = a2;
  v76 = sub_7656A0();
  v5 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v69 - v8;
  v10 = sub_7656C0();
  v77 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v69 - v14;
  v16 = sub_BD88(&qword_946810);
  __chkstk_darwin(v16 - 8);
  v81 = sub_BD88(&qword_9424B8);
  v17 = *(v81 - 8);
  __chkstk_darwin(v81);
  v80 = &v69 - v18;
  sub_764610();
  sub_995A8(&qword_95EFB0, &type metadata accessor for Uber);
  v83 = a1;
  result = sub_75C750();
  v20 = v85[0];
  if (v85[0])
  {
    v73 = v17;
    v74 = v15;
    v78 = v10;
    v21 = OBJC_IVAR____TtC18ASMessagesProvider22UberCollectionViewCell_uberView;
    swift_beginAccess();
    v22 = *(v3 + v21);
    v79 = v20;
    if (!v22 || (v23 = *(v22 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_uber), , v85[0] = v20, !v23) || (v85[5] = v23, sub_995A8(&qword_9424D0, &type metadata accessor for Uber), , v24 = sub_7691C0(), , , (v24 & 1) == 0))
    {
      v25 = *(v3 + v21);
      v26 = sub_75A110();
      v27 = sub_768900();
      v28 = v25;
      v72 = v26;
      v71 = v27;
      sub_768ED0();
      if (v25)
      {
        v84 = v28;
        type metadata accessor for UberHeaderView();
        sub_995A8(&qword_9424C8, type metadata accessor for UberHeaderView);
        v29 = v28;
        sub_76A6E0();
        sub_75A0B0();

        sub_1EB60(v85);
      }

      else
      {
      }

      sub_75C800();
      sub_769060();
      swift_getKeyPath();
      sub_9954C();
      v30 = v79;

      sub_769040();

      v31 = v85[0];
      v32 = objc_allocWithZone(type metadata accessor for UberHeaderView());
      v33 = v82;

      v34 = sub_6235D8(v30, (v31 & 1) == 0, v33);
      v35 = *(v3 + v21);
      *(v3 + v21) = v34;
      v36 = v34;
      sub_1EB7A0(v35);

      v70 = v21;
      v69 = v3;
      v37 = *(v3 + v21);
      if (v37)
      {
        v38 = v37;
        v39 = sub_7645C0();
        sub_623034(v39, v40);
      }

      v41 = v5;
      v42 = *(v5 + 104);
      v43 = v76;
      v42(v9, enum case for PageGrid.Direction.vertical(_:), v76);
      swift_getKeyPath();
      sub_75C7B0();

      sub_765630();
      v44 = *(v77 + 8);
      v45 = v78;
      v44(v12, v78);
      swift_getKeyPath();
      sub_75C7B0();

      sub_765590();
      v46 = v45;
      v47 = v44;
      v44(v12, v46);
      (*(v41 + 16))(v75, v9, v43);
      sub_40DC7C(0.0);
      v48 = v74;
      sub_765670();
      (*(v41 + 8))(v9, v43);
      v49 = v70;
      v50 = v69;
      v51 = *(v69 + v70);
      if (v51)
      {
        v52 = v51;
        sub_765620();
        v54 = v53;
        v56 = v55;
        v58 = v57;
        v60 = v59;
        v61 = OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_titleView;
        [*&v52[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_titleView] layoutMargins];
        if (v54 == v65 && v56 == v62 && v58 == v63 && v60 == v64 || ([*&v52[v61] setLayoutMargins:{v54, v56, v58, v60, v69, v70}], objc_msgSend(v52, "invalidateIntrinsicContentSize"), (v66 = *&v52[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_sizeChangeObserver]) == 0))
        {
        }

        else
        {

          v66(v67);

          sub_F704(v66);
        }
      }

      sub_768ED0();
      sub_98C0C(v79, v83, v85[0]);

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

uint64_t sub_98C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a3;
  v5 = sub_766690();
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7656C0();
  v46 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_764590();
  v49 = *(v10 - 8);
  v50 = v10;
  __chkstk_darwin(v10);
  v42 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v47 = &v41 - v13;
  v14 = sub_BD88(&qword_946810);
  __chkstk_darwin(v14 - 8);
  v53 = sub_BD88(&qword_9424B8);
  v48 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v41 - v15;
  v16 = sub_7645F0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_764600();
  v20 = (*(v17 + 88))(v19, v16);
  if (v20 != enum case for Uber.AssetType.artwork(_:))
  {
    if (v20 == enum case for Uber.AssetType.video(_:))
    {
      result = sub_7645D0();
      if (!result)
      {
        return result;
      }

      sub_764BC0();
    }

    else
    {
      if (v20 != enum case for Uber.AssetType.icon(_:))
      {
        return (*(v17 + 8))(v19, v16);
      }

      result = sub_764570();
      if (!result)
      {
        return result;
      }
    }

    goto LABEL_12;
  }

  swift_getKeyPath();
  sub_75C7B0();

  v21 = v59;
  v22 = sub_7699D0();

  if (v22)
  {
    result = sub_764580();
    if (!result)
    {
      return result;
    }

LABEL_12:

    v24 = OBJC_IVAR____TtC18ASMessagesProvider22UberCollectionViewCell_uberView;
    swift_beginAccess();
    v25 = *(v4 + v24);
    if (!v25)
    {
    }

    v41 = v25;
    sub_75C800();
    sub_769060();
    v26 = v47;
    sub_7645B0();
    swift_getKeyPath();
    sub_9954C();
    sub_769040();

    v27 = v56;
    swift_getKeyPath();
    sub_75C7B0();

    sub_765630();
    v29 = v28;
    v30 = *(v46 + 8);
    v30(v9, v7);
    swift_getKeyPath();
    sub_75C7B0();

    sub_765630();
    v32 = v31;
    v30(v9, v7);
    swift_getKeyPath();
    sub_75C7B0();

    v33 = v58;
    sub_6260C4(v58, v26, (v27 & 1) == 0, v32, v29, 0);
    v34 = sub_7699D0();
    v36 = v49;
    v35 = v50;
    if (v34)
    {
      v37 = v42;
      (*(v49 + 104))(v42, enum case for Uber.Style.inline(_:), v50);
      sub_995A8(&qword_9424D8, &type metadata accessor for Uber.Style);
      sub_769430();
      sub_769430();
      if (v56 == v54 && v57 == v55)
      {
        (*(v36 + 8))(v37, v35);

LABEL_21:
        sub_765330();

        (*(v36 + 8))(v26, v35);
        type metadata accessor for UberHeaderView();
        sub_995A8(&unk_95F510, type metadata accessor for UberHeaderView);
        v40 = v41;
        sub_75A050();

        return (*(v48 + 8))(v52, v53);
      }

      v38 = sub_76A950();
      (*(v36 + 8))(v37, v35);

      if (v38)
      {
        goto LABEL_21;
      }
    }

    sub_765260();
    v39 = v43;
    sub_7666A0();
    sub_766650();
    (*(v44 + 8))(v39, v45);
    goto LABEL_21;
  }

  result = sub_7645E0();
  if (result)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_99424@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider22UberCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_99480(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider22UberCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

unint64_t sub_9954C()
{
  result = qword_9424C0;
  if (!qword_9424C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9424C0);
  }

  return result;
}

uint64_t sub_995A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s5StateVwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_996A4()
{
  result = qword_9424E0;
  if (!qword_9424E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9424E0);
  }

  return result;
}

unint64_t sub_996FC()
{
  result = qword_9424E8;
  if (!qword_9424E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9424E8);
  }

  return result;
}

uint64_t sub_99750(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_59C2C(*a1 + 16, v14);
  sub_99F74(v14, v9);
  sub_99F74(a2, &v11);
  if (!v10)
  {
    sub_10A2C(v14, &unk_9443A0);
    if (!*(&v12 + 1))
    {
      result = sub_10A2C(v9, &unk_9443A0);
      v4 = 1;
      goto LABEL_8;
    }

LABEL_7:
    result = sub_10A2C(v9, &qword_9425D0);
    v4 = 0;
    goto LABEL_8;
  }

  sub_99F74(v9, v8);
  if (!*(&v12 + 1))
  {
    sub_10A2C(v14, &unk_9443A0);
    sub_1EB60(v8);
    goto LABEL_7;
  }

  v6[0] = v11;
  v6[1] = v12;
  v7 = v13;
  v4 = sub_76A6C0();
  sub_1EB60(v6);
  sub_10A2C(v14, &unk_9443A0);
  sub_1EB60(v8);
  result = sub_10A2C(v9, &unk_9443A0);
LABEL_8:
  *(v3 + 72) = v4 & 1;
  return result;
}

uint64_t sub_998C4(void *a1, uint64_t a2)
{
  sub_59C2C(*a1 + 16, v13);
  sub_99F74(v13, v8);
  sub_99F74(a2, &v10);
  if (!v9)
  {
    sub_10A2C(v13, &unk_9443A0);
    if (!*(&v11 + 1))
    {
      sub_10A2C(v8, &unk_9443A0);
      v3 = 1;
      return v3 & 1;
    }

LABEL_7:
    sub_10A2C(v8, &qword_9425D0);
    v3 = 0;
    return v3 & 1;
  }

  sub_99F74(v8, v7);
  if (!*(&v11 + 1))
  {
    sub_10A2C(v13, &unk_9443A0);
    sub_1EB60(v7);
    goto LABEL_7;
  }

  v5[0] = v10;
  v5[1] = v11;
  v6 = v12;
  v3 = sub_76A6C0();
  sub_1EB60(v5);
  sub_10A2C(v13, &unk_9443A0);
  sub_1EB60(v7);
  sub_10A2C(v8, &unk_9443A0);
  return v3 & 1;
}

uint64_t sub_99A2C(void *a1)
{
  if (*v1 != *a1)
  {
    goto LABEL_18;
  }

  v2 = v1;
  if ((sub_76A6C0() & 1) == 0)
  {
    goto LABEL_18;
  }

  type metadata accessor for MenuDebugSetting();
  v3 = swift_dynamicCastClass();
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 56) == v2[7] && *(v3 + 64) == v2[8];
    if (v5 || (sub_76A950() & 1) != 0)
    {
      v6 = v2[9];

      LOBYTE(v6) = sub_116BD8(v7, v6);

      if (v6)
      {
        v9 = (*(v4 + 80))(v20, v8);
        (v2[10])(v19, v9);
        sub_99F74(v20, v14);
        sub_99F74(v19, &v16);
        if (v15)
        {
          sub_99F74(v14, v13);
          if (*(&v17 + 1))
          {
            v11[0] = v16;
            v11[1] = v17;
            v12 = v18;
            LOBYTE(v4) = sub_76A6C0();

            sub_1EB60(v11);
            sub_10A2C(v19, &unk_9443A0);
            sub_10A2C(v20, &unk_9443A0);
            sub_1EB60(v13);
            sub_10A2C(v14, &unk_9443A0);
            return v4 & 1;
          }

          sub_10A2C(v19, &unk_9443A0);
          sub_10A2C(v20, &unk_9443A0);
          sub_1EB60(v13);
        }

        else
        {

          sub_10A2C(v19, &unk_9443A0);
          sub_10A2C(v20, &unk_9443A0);
          if (!*(&v17 + 1))
          {
            sub_10A2C(v14, &unk_9443A0);
            LOBYTE(v4) = 1;
            return v4 & 1;
          }
        }

        sub_10A2C(v14, &qword_9425D0);
      }

      else
      {
      }
    }

LABEL_18:
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

void sub_99CD8()
{
  sub_76A6D0();
  sub_769330();
  v1 = *(v0 + 72);
  if (v1 >> 62)
  {
    v7 = sub_76A860();
    sub_76AA40(v7);
    v2 = sub_76A860();
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_76AA40(*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)));
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = sub_76A770();
      sub_76A6D0();
      sub_769330();
      sub_76AA50(*(v4 + 72));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (v1 + 32);
    do
    {
      v6 = *v5++;

      sub_76A6D0();
      sub_769330();
      sub_76AA50(*(v6 + 72));

      --v2;
    }

    while (v2);
  }

LABEL_10:
  (*(v0 + 80))(v13);
  sub_99F74(v13, &v10);
  if (*(&v11 + 1))
  {
    v8[0] = v10;
    v8[1] = v11;
    v9 = v12;
    sub_76AA50(1u);
    sub_76A6D0();
    sub_1EB60(v8);
  }

  else
  {
    sub_76AA50(0);
  }

  sub_10A2C(v13, &unk_9443A0);
}

uint64_t sub_99EA8()
{
}

uint64_t sub_99EE0()
{
  sub_1EB60(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_99F74(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_9443A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_99FF4@<X0>(uint64_t *a1@<X8>)
{
  v19[0] = sub_764930();
  v2 = *(v19[0] - 8);
  __chkstk_darwin(v19[0]);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_94F1F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v19 - v10;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v12 = *(v6 + 8);
  v12(v11, v5);
  if (v19[1] && (v13 = sub_759880(), result = , (v13 & 1) != 0))
  {
    a1[3] = &type metadata for CGFloat;
    a1[4] = &protocol witness table for CGFloat;
    *a1 = 0x4040000000000000;
  }

  else
  {
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    v12(v8, v5);
    v15 = v19[0];
    if (*(v2 + 88))(v4, v19[0]) == enum case for Shelf.ContentType.ribbonBar(_:) && (sub_75DA10())
    {
      if (qword_93DD00 != -1)
      {
        swift_once();
      }

      v16 = sub_766CA0();
      v17 = sub_BE38(v16, qword_99FE48);
      a1[3] = v16;
      a1[4] = &protocol witness table for StaticDimension;
      v18 = sub_B1B4(a1);
      (*(*(v16 - 8) + 16))(v18, v17, v16);
    }

    else
    {
      a1[3] = &type metadata for Double;
      a1[4] = &protocol witness table for Double;
      *a1 = 0;
    }

    return (*(v2 + 8))(v4, v15);
  }

  return result;
}

uint64_t sub_9A330@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v132 = a2;
  v121 = sub_7664A0();
  v119 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = (&v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = sub_BD88(&qword_93F918);
  __chkstk_darwin(v126);
  v130 = &v116 - v4;
  v5 = sub_BD88(&qword_951BE0);
  __chkstk_darwin(v5 - 8);
  v127 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v131 = &v116 - v8;
  v9 = sub_764930();
  v128 = *(v9 - 8);
  v129 = v9;
  __chkstk_darwin(v9);
  v134 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&qword_963790);
  __chkstk_darwin(v11 - 8);
  v124 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v123 = &v116 - v14;
  __chkstk_darwin(v15);
  v125 = &v116 - v16;
  __chkstk_darwin(v17);
  v19 = &v116 - v18;
  __chkstk_darwin(v20);
  v22 = &v116 - v21;
  __chkstk_darwin(v23);
  v25 = &v116 - v24;
  v118 = sub_76A920();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = &v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_BD88(&unk_94F1F0);
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v122 = &v116 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v116 - v31;
  __chkstk_darwin(v33);
  v35 = &v116 - v34;
  v135 = a1;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v36 = *(v28 + 8);
  v36(v35, v27);
  v133 = v36;
  if (v136)
  {
    v37 = sub_759880();

    if (v37)
    {
      sub_75DAA0();
      swift_getKeyPath();
      sub_768750();

      v133(v32, v27);
      v38 = v137;
      if (v137)
      {
      }

      v39 = v118;
      v40 = v117;
      v41 = v116;
      if (qword_93DCE0 != -1)
      {
        swift_once();
      }

      v42 = sub_766CA0();
      sub_BE38(v42, qword_99FDE8);
      sub_75DA40();
      sub_766470();
      sub_766700();
      v44 = v43;
      swift_unknownObjectRelease();
      v45 = *(v40 + 8);
      v45(v41, v39);
      if (qword_93DCE8 != -1)
      {
        swift_once();
      }

      sub_BE38(v42, qword_99FE00);
      sub_75DA40();
      sub_766470();
      sub_766700();
      v47 = v46;
      swift_unknownObjectRelease();
      result = (v45)(v41, v39);
      v49 = v44 + v47;
      if (v38)
      {
        v49 = v44;
      }

      v50 = v132;
      v132[3] = &type metadata for CGFloat;
      v50[4] = &protocol witness table for CGFloat;
      *v50 = v49;
      return result;
    }
  }

  sub_75DA50();
  sub_10A2C(v22, &qword_963790);
  sub_2C88C(v19, v25);
  v51 = *(v28 + 48);
  if (v51(v25, 1, v27) == 1)
  {
    sub_10A2C(v25, &qword_963790);
    v52 = v130;
LABEL_19:
    v59 = v122;
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    v60 = v59;
    v61 = v133;
    v133(v60, v27);
    v63 = v123;
    v62 = v124;
    sub_75DA50();
    sub_10A2C(v63, &qword_963790);
    v64 = v125;
    sub_2C88C(v62, v125);
    if (v51(v64, 1, v27) == 1)
    {
      sub_10A2C(v64, &qword_963790);
      v65 = 1;
      v66 = v131;
    }

    else
    {
      swift_getKeyPath();
      v66 = v131;
      sub_768750();

      v61(v64, v27);
      v65 = 0;
    }

    v68 = v127;
    v67 = v128;
    v69 = v52;
    v70 = v129;
    (*(v128 + 56))(v66, v65, 1, v129);
    v71 = *(v126 + 48);
    (*(v67 + 16))(v69, v134, v70);
    sub_2C8FC(v66, v69 + v71);
    if ((*(v67 + 48))(v69 + v71, 1, v70) == 1)
    {
      v72 = enum case for Shelf.ContentType.ribbonBar(_:);
      v73 = (*(v67 + 88))(v69, v70);
    }

    else
    {
      sub_2C8FC(v69 + v71, v68);
      v74 = *(v67 + 88);
      v75 = v74(v68, v70);
      v72 = enum case for Shelf.ContentType.ribbonBar(_:);
      if (v75 == enum case for Shelf.ContentType.ribbonBar(_:))
      {
        v76 = v120;
        *v120 = UIFontTextStyleBody;
        v77 = v119;
        v78 = v121;
        (*(v119 + 104))(v76, enum case for FontSource.textStyle(_:), v121);
        v79 = sub_766CA0();
        v80 = v132;
        v132[3] = v79;
        v80[4] = &protocol witness table for StaticDimension;
        sub_B1B4(v80);
        v138 = v78;
        v139 = &protocol witness table for FontSource;
        v81 = sub_B1B4(&v136);
        (*(v77 + 16))(v81, v76, v78);
        v82 = UIFontTextStyleBody;
        sub_766CB0();
        (*(v77 + 8))(v76, v78);
        sub_10A2C(v66, &qword_951BE0);
        v83 = *(v67 + 8);
        v83(v134, v70);
        sub_10A2C(v69 + v71, &qword_951BE0);
        return (v83)(v69, v70);
      }

      (*(v67 + 8))(v68, v70);
      v73 = v74(v69, v70);
    }

    if (v73 == v72)
    {
      if ((sub_75DA10() & 1) == 0)
      {
        v93 = sub_75DA30();
        [v93 userInterfaceIdiom];

        v94 = v120;
        *v120 = UIFontTextStyleBody;
        v95 = v119 + 104;
        v96 = v121;
        (*(v119 + 104))(v94, enum case for FontSource.textStyle(_:), v121);
        v97 = sub_766CA0();
        v98 = v132;
        v132[3] = v97;
        v98[4] = &protocol witness table for StaticDimension;
        v135 = sub_B1B4(v98);
        v99 = (v95 - 88);
        v100 = v67;
        v101 = (v95 - 96);
        v102 = (v100 + 8);
        v138 = v96;
        v139 = &protocol witness table for FontSource;
        v103 = sub_B1B4(&v136);
        (*v99)(v103, v94, v96);
        v104 = UIFontTextStyleBody;
        sub_766CB0();
        (*v101)(v94, v96);
        sub_10A2C(v131, &qword_951BE0);
        (*v102)(v134, v70);
LABEL_44:
        v110 = v69 + v71;
        v111 = &qword_951BE0;
        return sub_10A2C(v110, v111);
      }

      v84 = v120;
      *v120 = UIFontTextStyleBody;
      v85 = v119;
      v86 = v121;
      (*(v119 + 104))(v84, enum case for FontSource.textStyle(_:), v121);
      v87 = sub_766CA0();
      v88 = v132;
      v132[3] = v87;
      v88[4] = &protocol witness table for StaticDimension;
      sub_B1B4(v88);
      v138 = v86;
      v139 = &protocol witness table for FontSource;
      v89 = sub_B1B4(&v136);
      (*(v85 + 16))(v89, v84, v86);
      v90 = UIFontTextStyleBody;
      sub_766CB0();
      (*(v85 + 8))(v84, v86);
    }

    else
    {
      if (v73 == enum case for Shelf.ContentType.reviewSummary(_:))
      {
        v91 = v132;
        v132[3] = &type metadata for Double;
        v91[4] = &protocol witness table for Double;
        v92 = 0x4038000000000000;
      }

      else
      {
        if (v73 == enum case for Shelf.ContentType.productRatings(_:))
        {
          v105 = sub_75DA30();
          v106 = sub_7699D0();

          v107 = 52.0;
          if (v106)
          {
            v107 = 36.0;
          }

          v108 = v132;
          v132[3] = &type metadata for Double;
          v108[4] = &protocol witness table for Double;
          *v108 = v107;
          goto LABEL_43;
        }

        if (v73 != enum case for Shelf.ContentType.productReviewAction(_:))
        {
          if (v73 != enum case for Shelf.ContentType.arcadeFooter(_:) && v73 != enum case for Shelf.ContentType.uber(_:))
          {
            if (qword_93DD10 != -1)
            {
              swift_once();
            }

            v112 = sub_766CA0();
            v113 = sub_BE38(v112, qword_99FE78);
            v114 = v132;
            v132[3] = v112;
            v114[4] = &protocol witness table for StaticDimension;
            v115 = sub_B1B4(v114);
            (*(*(v112 - 8) + 16))(v115, v113, v112);
            sub_10A2C(v66, &qword_951BE0);
            (*(v67 + 8))(v134, v70);
            v111 = &qword_93F918;
            v110 = v69;
            return sub_10A2C(v110, v111);
          }

          v109 = v132;
          v132[3] = &type metadata for Double;
          v109[4] = &protocol witness table for Double;
          *v109 = 0;
          goto LABEL_43;
        }

        v91 = v132;
        v132[3] = &type metadata for Double;
        v91[4] = &protocol witness table for Double;
        v92 = 0x4042000000000000;
      }

      *v91 = v92;
    }

LABEL_43:
    sub_10A2C(v66, &qword_951BE0);
    (*(v67 + 8))(v134, v70);
    goto LABEL_44;
  }

  swift_getKeyPath();
  sub_768750();

  v53 = v136;
  v133(v25, v27);
  v52 = v130;
  if (!v53)
  {
    goto LABEL_19;
  }

  v54 = sub_759880();

  if ((v54 & 1) == 0)
  {
    goto LABEL_19;
  }

  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  v55 = sub_766CA0();
  v56 = sub_BE38(v55, qword_99FDE8);
  v57 = v132;
  v132[3] = v55;
  v57[4] = &protocol witness table for StaticDimension;
  v58 = sub_B1B4(v57);
  return (*(*(v55 - 8) + 16))(v58, v56, v55);
}

uint64_t sub_9B330@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v53 = a2;
  v3 = sub_7656C0();
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v45 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_BD88(&qword_93F918) - 8;
  __chkstk_darwin(v52);
  v51 = &v45 - v5;
  v6 = sub_BD88(&qword_951BE0);
  __chkstk_darwin(v6 - 8);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v45 - v9;
  v11 = sub_BD88(&unk_94F1F0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v45 - v13;
  v15 = sub_764930();
  v50 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v18 = *(v12 + 8);
  v18(v14, v11);
  v49 = a1;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v19 = v14;
  v20 = v17;
  v21 = v51;
  v18(v19, v11);
  v22 = v10;
  v23 = v15;
  v24 = v50;
  v25 = *(v52 + 56);
  (*(v50 + 16))(v21, v20, v23);
  sub_2C8FC(v22, &v21[v25]);
  v26 = *(v24 + 88);
  v27 = v26(v21, v23);
  v28 = enum case for Shelf.ContentType.categoryBrick(_:);
  if (v27 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
    sub_10A2C(&v21[v25], &qword_951BE0);
    goto LABEL_3;
  }

  if ((*(v24 + 48))(&v21[v25], 1, v23) == 1)
  {
LABEL_14:
    if (v26(v21, v23) == enum case for Shelf.ContentType.action(_:))
    {
      v38 = v45;
      sub_75DA20();
      sub_765570();
      v40 = v39;
      (*(v46 + 8))(v38, v47);
      v41 = v53;
      *(v53 + 3) = &type metadata for CGFloat;
      *(v41 + 4) = &protocol witness table for CGFloat;
      *v41 = v40 * 0.5;
      sub_10A2C(v22, &qword_951BE0);
      (*(v24 + 8))(v20, v23);
      v42 = &v21[v25];
      v43 = &qword_951BE0;
    }

    else
    {
      v44 = v53;
      *(v53 + 3) = &type metadata for Double;
      *(v44 + 4) = &protocol witness table for Double;
      *v44 = 0.0;
      sub_10A2C(v22, &qword_951BE0);
      (*(v24 + 8))(v20, v23);
      v43 = &qword_93F918;
      v42 = v21;
    }

    return sub_10A2C(v42, v43);
  }

  v35 = v48;
  sub_2C8FC(&v21[v25], v48);
  if (v26(v35, v23) != v28)
  {
    (*(v24 + 8))(v35, v23);
    goto LABEL_14;
  }

  sub_10A2C(&v21[v25], &qword_951BE0);
  (*(v24 + 8))(v21, v23);
LABEL_3:
  v29 = sub_7653B0();
  v54[3] = v29;
  v54[4] = sub_9BA34();
  v30 = sub_B1B4(v54);
  (*(*(v29 - 8) + 104))(v30, enum case for Feature.shelf_header(_:), v29);
  LOBYTE(v29) = sub_765C30();
  sub_BEB8(v54);
  if ((v29 & 1) != 0 && (sub_75DA10() & 1) == 0)
  {
    v36 = v53;
    *(v53 + 3) = &type metadata for Double;
    *(v36 + 4) = &protocol witness table for Double;
    *v36 = 0.0;
  }

  else
  {
    if (qword_93DD20 != -1)
    {
      swift_once();
    }

    v31 = sub_766CA0();
    v32 = sub_BE38(v31, qword_99FEA8);
    v33 = v53;
    *(v53 + 3) = v31;
    v33[4] = &protocol witness table for StaticDimension;
    v34 = sub_B1B4(v33);
    (*(*(v31 - 8) + 16))(v34, v32, v31);
  }

  sub_10A2C(v22, &qword_951BE0);
  return (*(v24 + 8))(v20, v23);
}

unint64_t sub_9BA34()
{
  result = qword_93F9B0;
  if (!qword_93F9B0)
  {
    sub_7653B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F9B0);
  }

  return result;
}

uint64_t sub_9BAD8(uint64_t a1)
{
  v2 = sub_7656C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v59 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7649E0();
  v57 = *(v5 - 8);
  v58 = v5;
  __chkstk_darwin(v5);
  v55 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&unk_94F1F0);
  v53 = *(v7 - 8);
  v54 = v7;
  __chkstk_darwin(v7);
  v9 = &v46 - v8;
  v10 = sub_75ECD0();
  v50 = *(v10 - 8);
  v51 = v10;
  __chkstk_darwin(v10);
  v49 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_948720);
  __chkstk_darwin(v12 - 8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = sub_766690();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v56 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v60 = &v46 - v22;
  sub_75BEC0();
  sub_9C258(&qword_940008, &type metadata accessor for ProductMediaItem);
  result = sub_75C750();
  if (v61)
  {
    v52 = a1;
    if (sub_75BEA0())
    {
      sub_765260();
      sub_7666A0();

      v24 = *(v19 + 56);
      v24(v14, 0, 1, v18);
      (*(v19 + 32))(v17, v14, v18);
      v24(v17, 0, 1, v18);
      v25 = (*(v19 + 48))(v17, 1, v18);
    }

    else
    {
      v47 = v3;
      v48 = v2;
      v26 = *(v19 + 56);
      v27 = 1;
      v26(v14, 1, 1, v18);
      if (sub_75BEB0())
      {
        sub_764BC0();

        sub_765260();
        sub_7666A0();

        v27 = 0;
      }

      v26(v17, v27, 1, v18);
      v28 = *(v19 + 48);
      if (v28(v14, 1, v18) != 1)
      {
        sub_9C2A0(v14);
      }

      v3 = v47;
      v2 = v48;
      v25 = v28(v17, 1, v18);
    }

    if (v25 == 1)
    {

      return sub_9C2A0(v17);
    }

    (*(v19 + 32))(v60, v17, v18);
    swift_getKeyPath();
    sub_75C7B0();

    swift_getKeyPath();
    v29 = v54;
    v30 = v55;
    sub_768750();

    (*(v53 + 8))(v9, v29);
    v32 = v57;
    v31 = v58;
    v33 = v3;
    if ((*(v57 + 88))(v30, v58) == enum case for Shelf.ContentsMetadata.productMedia(_:))
    {
      (*(v32 + 96))(v30, v31);
      v35 = v49;
      v34 = v50;
      v36 = v30;
      v37 = v51;
      (*(v50 + 32))(v49, v36, v51);
      v38 = sub_75EC60();
      v39 = v56;
      if (v38)
      {
        v40 = v60;
        v41 = sub_7665E0();
        v42 = v34;
        v43 = v41;
        (*(v42 + 8))(v35, v37);
        if ((v43 & 1) == 0 && (sub_7665E0() & 1) == 0)
        {
          sub_766620();
LABEL_21:
          swift_getKeyPath();
          v44 = v59;
          sub_75C7B0();

          sub_765560();
          (*(v33 + 8))(v44, v2);
          sub_766660();

          v45 = *(v19 + 8);
          v45(v39, v18);
          return (v45)(v40, v18);
        }

LABEL_20:
        (*(v19 + 16))(v39, v40, v18);
        goto LABEL_21;
      }

      (*(v34 + 8))(v35, v37);
    }

    else
    {
      (*(v32 + 8))(v30, v31);
      v39 = v56;
    }

    v40 = v60;
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_9C258(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_9C2A0(uint64_t a1)
{
  v2 = sub_BD88(&unk_948720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_9C314(uint64_t a1, uint64_t a2)
{
  sub_BD88(&unk_93F5C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_77D9F0;
  sub_BD88(&qword_94DC40);
  v5 = *(type metadata accessor for Accessory() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_77B6D0;
  v8 = (v7 + v6);
  v9 = *(sub_BD88(&qword_942CC8) + 48);
  *v8 = 1;
  sub_1ED18(a2, &v8[v9], &qword_945020);
  swift_storeEnumTagMultiPayload();
  v10 = swift_allocObject();
  *(v10 + 16) = 514;
  type metadata accessor for NavigationAccessory();
  v11 = swift_allocObject();
  v12 = sub_10D37C(_swiftEmptyArrayStorage);
  v11[4] = v7;
  v11[5] = v12;
  v11[2] = sub_A29A8;
  v11[3] = v10;
  sub_4E28F8(a1);

  *(v4 + 32) = v11;
  return v4;
}

void sub_9C4D0()
{
  v1 = sub_768380();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7683C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0 + qword_942628;
  if ((*(v0 + qword_942628 + 16) & 1) == 0)
  {
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 1;
    v15 = v7;
    sub_BE70(0, &qword_940340);
    v14 = sub_769970();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_A2A0C;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_882648;
    v12 = _Block_copy(aBlock);

    sub_7683A0();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_A287C(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
    sub_BD88(&qword_940350);
    sub_16194(&qword_9406F0, &qword_940350);
    sub_76A5A0();
    v13 = v14;
    sub_769980();
    _Block_release(v12);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v9, v15);
  }
}

void *sub_9C7E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController);
  v2 = v1;
  return v1;
}

void sub_9C818(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
  v5 = a1;
  sub_761930();

  v6 = *&v1[v3];
  *&v1[v3] = a1;
  v12 = v5;

  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  [v7 bounds];

  sub_761920();
  v9 = *&v1[v3];
  if (v9)
  {
    v10 = [v9 view];
    if (v10)
    {
      v11 = v10;
      [v10 setInsetsLayoutMarginsFromSafeArea:0];

      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

LABEL_5:
}

void sub_9C954(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = a1;
  if ([v4 isViewLoaded])
  {
  }

  else
  {
    v5.receiver = v4;
    v5.super_class = ObjectType;
    objc_msgSendSuper2(&v5, "loadView");
    v3 = [v4 navigationItem];
    [v3 setTitle:0];
  }
}

void sub_9CA10(void *a1, uint64_t a2, uint64_t a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  objc_msgSendSuper2(&v7, "viewWillAppear:", a3);
  sub_A0BA0(0, 0, a3);
  v5 = [v4 view];
  if (v5)
  {
    v6 = v5;
    [v5 bounds];

    sub_A287C(&qword_942C68, type metadata accessor for ArcadeDiffablePageViewController);
    sub_763A70();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_9CB10(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_768380();
  v22 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_7683C0();
  v8 = *(v21 - 8);
  *&v9 = __chkstk_darwin(v21).n128_u64[0];
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v2;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, "viewDidAppear:", a1 & 1, v9);
  v12 = &v2[qword_9425E8];
  v13 = *&v2[qword_9425E8];
  if (v13)
  {

    v13(v14);
    sub_F704(v13);
    v15 = *v12;
  }

  else
  {
    v15 = 0;
  }

  *v12 = 0;
  v12[1] = 0;
  sub_F704(v15);
  if (sub_761FF0())
  {
    sub_9CE98();
  }

  sub_BE70(0, &qword_940340);
  v16 = sub_769970();
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  aBlock[4] = sub_A29B4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_882940;
  v18 = _Block_copy(aBlock);
  v19 = v2;

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_A287C(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350);
  sub_16194(&qword_9406F0, &qword_940350);
  sub_76A5A0();
  sub_769980();
  _Block_release(v18);

  (*(v22 + 8))(v7, v5);
  return (*(v8 + 8))(v11, v21);
}

void sub_9CE98()
{
  v1 = v0;
  v2 = sub_758890();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 viewIfLoaded];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 window];

    if (v9)
    {
      v10 = [v9 isHidden];

      if ((v10 & 1) == 0)
      {
        v11 = *(*&v1[qword_9425D8] + 16);
        v12 = objc_allocWithZone(IAMCountableEvent);
        v13 = sub_769210();
        v14 = [v12 initWithName:v13];

        [v11 receiveEvent:v14];
        sub_4C9134();
        sub_758900();
        sub_768900();
        sub_768ED0();
        (*(v3 + 104))(v6, enum case for AppStoreEngagementEvent.arcadeTabDidComeOnScreen(_:), v2);
        swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_7588A0();

        (*(v3 + 8))(v6, v2);
      }
    }
  }
}

void sub_9D10C()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v18 = v1;
    v2 = [v0 traitCollection];
    v3 = sub_7699B0();

    v4 = [v18 navigationBar];
    v5 = v4;
    if (v3)
    {
      [v4 setUserInteractionEnabled:1];
      v6 = v18;
      v18 = v5;
    }

    else
    {
      [v4 _backgroundOpacity];
      v8 = v7;

      if (v8 >= 1.0)
      {
        v6 = [v18 navigationBar];
        [v6 setUserInteractionEnabled:1];
      }

      else
      {
        v9 = [v18 navigationItem];
        v10 = [v9 leftBarButtonItems];

        if (v10 && ((sub_BE70(0, &qword_947490), v11 = sub_769460(), v10, v11 >> 62) ? (v12 = sub_76A860()) : (v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8))), , v12))
        {
          v13 = 1;
        }

        else
        {
          v14 = [v18 navigationItem];
          v15 = [v14 rightBarButtonItems];

          if (v15)
          {
            sub_BE70(0, &qword_947490);
            v16 = sub_769460();

            if (v16 >> 62)
            {
              v17 = sub_76A860();
            }

            else
            {
              v17 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
            }

            v13 = v17 != 0;
          }

          else
          {
            v13 = 0;
          }
        }

        v6 = [v18 navigationBar];
        [v6 setUserInteractionEnabled:v13];
      }
    }
  }
}

void sub_9D3B4(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_9CB10(a3);
}

void sub_9D408(char a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewWillDisappear:", a1 & 1);
  v3 = [v1 presentedViewController];
  if (v3)
  {
  }

  else if ([v1 isViewLoaded])
  {
    sub_A0BA0(1, 1, a1 & 1);
    v4 = sub_7653A0();
    v6[3] = v4;
    v6[4] = sub_A287C(&qword_947D00, &type metadata accessor for Feature.iOS);
    v5 = sub_B1B4(v6);
    (*(*(v4 - 8) + 104))(v5, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v4);
    LOBYTE(v4) = sub_765C30();
    sub_BEB8(v6);
    if (v4)
    {
      sub_9D10C();
    }
  }
}

void sub_9D53C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_9D408(a3);
}

void sub_9D590(void *a1)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewWillLayoutSubviews");
  v2 = *&v1[qword_99A4B0];
  if (v2)
  {
    v3 = v2;
    sub_8D6AC();
    [v3 setHeight:{v4, v5.receiver, v5.super_class}];

    v1 = v3;
  }
}

id sub_9D618()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_BD88(&unk_9435D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_769ED0();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "viewDidLayoutSubviews", v8);
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = result;
  v13 = enum case for UIView.LayoutRegion.AdaptivityAxis.horizontal(_:);
  v14 = sub_769EB0();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v5, v13, v14);
  (*(v15 + 56))(v5, 0, 1, v14);
  sub_769EC0();
  sub_10A2C(v5, &unk_9435D0);
  sub_769F10();
  v17 = v16;

  result = (*(v7 + 8))(v10, v6);
  v18 = &v1[qword_942610];
  v19 = *&v1[qword_942610];
  v20 = v1[qword_942610 + 8];
  *v18 = v17;
  *(v18 + 8) = 0;
  if ((v20 & 1) != 0 || v17 != v19)
  {
    result = [v1 view];
    if (result)
    {
      v21 = result;
      [result bounds];

      sub_A287C(&qword_942C68, type metadata accessor for ArcadeDiffablePageViewController);
      return sub_763A70();
    }

LABEL_8:
    __break(1u);
  }

  return result;
}

void sub_9D908(void *a1)
{
  v1 = a1;
  sub_9D618();
}

void sub_9D950(uint64_t a1, double a2, double a3)
{
  v8.receiver = v3;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    v7 = &v3[qword_942620];
    if ((v3[qword_942620 + 16] & 1) != 0 || *v7 != a2 || v7[1] != a3)
    {
      *v7 = a2;
      v7[1] = a3;
      *(v7 + 16) = 0;
      sub_9C4D0();
    }
  }
}

void sub_9D9FC(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_9D950(a5, a2, a3);
  swift_unknownObjectRelease();
}

uint64_t sub_9DA7C()
{
  ObjectType = swift_getObjectType();
  v0 = sub_BD88(&qword_942C90);
  v16 = *(v0 - 8);
  v17 = v0;
  __chkstk_darwin(v0);
  v15 = &ObjectType - v1;
  v2 = sub_BD88(&qword_942C98);
  v13 = *(v2 - 8);
  v14 = v2;
  __chkstk_darwin(v2);
  v12 = &ObjectType - v3;
  v4 = sub_BD88(&qword_942CA0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &ObjectType - v6;
  sub_1BAC84();
  sub_75F1B0();
  sub_BD88(&unk_959600);
  sub_16194(&qword_942CA8, &unk_959600);
  sub_768710();
  sub_768720();

  sub_BEB8(v18);
  (*(v5 + 8))(v7, v4);
  sub_762020();
  sub_BD88(&qword_942CB0);
  sub_16194(&qword_942CB8, &qword_942CB0);
  sub_768710();
  v8 = v12;
  sub_768720();

  sub_BEB8(v18);
  (*(v13 + 8))(v8, v14);
  sub_762030();
  sub_BD88(&qword_942CC0);
  sub_16194(&unk_955610, &qword_942CC0);
  sub_768710();
  v9 = v15;
  sub_768720();

  sub_BEB8(v18);
  return (*(v16 + 8))(v9, v17);
}

uint64_t sub_9DEB4()
{
  v0 = sub_BD88(&qword_963790);
  __chkstk_darwin(v0 - 8);
  v43 = &v37 - v1;
  v2 = sub_764930();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin(v2);
  v39 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v38 = &v37 - v5;
  __chkstk_darwin(v6);
  v40 = &v37 - v7;
  v8 = sub_BD88(&qword_93FF08);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - v10;
  v12 = sub_BD88(&unk_9595E0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v37 - v14;
  sub_BD88(&unk_959560);
  sub_75B030();
  sub_764410();
  v16 = *(v13 + 8);
  v16(v15, v12);
  v17 = sub_7678E0();
  (*(v9 + 8))(v11, v8);
  if (v17 < 1)
  {
    goto LABEL_4;
  }

  sub_75B030();
  v18 = v43;
  sub_764430();
  v16(v15, v12);
  v19 = sub_BD88(&unk_94F1F0);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_10A2C(v18, &qword_963790);
LABEL_4:
    v21 = v44;
    *(v44 + qword_942608) = &_swiftEmptySetSingleton;

    *(v21 + qword_942600) = 0;
    return result;
  }

  swift_getKeyPath();
  v23 = v38;
  sub_768750();

  (*(v20 + 8))(v18, v19);
  v25 = v40;
  v24 = v41;
  v26 = v42;
  (*(v41 + 32))(v40, v23, v42);
  v27 = v39;
  (*(v24 + 16))(v39, v25, v26);
  v28 = (*(v24 + 88))(v27, v26);
  if (v28 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v28 == enum case for Shelf.ContentType.upsellBreakout(_:) || v28 == enum case for Shelf.ContentType.heroCarousel(_:) || v28 == enum case for Shelf.ContentType.uber(_:))
  {
    sub_BD88(&unk_941A18);
    v31 = sub_757640();
    v32 = *(v31 - 8);
    v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_77B6D0;
    sub_7575B0();
    v35 = sub_1A275C(v34);
    swift_setDeallocating();
    (*(v32 + 8))(v34 + v33, v31);
    swift_deallocClassInstance();
    (*(v24 + 8))(v25, v26);
    v36 = v44;
    *(v44 + qword_942608) = v35;

    *(v36 + qword_942600) = 1;
  }

  else
  {
    v29 = *(v24 + 8);
    v29(v25, v26);
    v30 = v44;
    *(v44 + qword_942608) = &_swiftEmptySetSingleton;

    *(v30 + qword_942600) = 0;
    return (v29)(v27, v26);
  }

  return result;
}

uint64_t (*sub_9E4F0(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_A2970;
}

uint64_t sub_9E554()
{
  if (qword_93DEF0 != -1)
  {
    swift_once();
  }

  v0 = sub_768FF0();
  sub_BE38(v0, qword_9A0400);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768540();
  sub_768EA0();
}