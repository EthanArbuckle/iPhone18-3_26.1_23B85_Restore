uint64_t sub_100690B34()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100690B8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100690BA4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100690BEC()
{
  if (qword_100941370 != -1)
  {
    swift_once();
  }

  v1 = qword_1009A2720;
  qword_1009A31D0 = qword_1009A2720;

  return v1;
}

char *sub_100690C50()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_isHighlighted] = 0;
  v1[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_showSeparator] = 0;
  v6 = OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_separatorView;
  *&v1[v6] = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_iconImage] = 0;
  sub_1007626BC();
  v7 = sub_10076D1AC();
  v33[3] = v7;
  v33[4] = &protocol witness table for FontSource;
  v8 = sub_10000DB7C(v33);
  if (qword_100941498 != -1)
  {
    v31 = v8;
    swift_once();
    v8 = v31;
  }

  v9 = qword_1009A31D0;
  *v8 = qword_1009A31D0;
  (*(*(v7 - 8) + 104))();
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.leading(_:), v2);
  v10 = v9;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_titleLabel] = sub_1007625EC();
  *&v1[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_iconView] = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = type metadata accessor for SearchHintView();
  v32.receiver = v1;
  v32.super_class = v11;
  v12 = objc_msgSendSuper2(&v32, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v17 = OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_titleLabel;
  v18 = qword_100941358;
  v19 = *&v16[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_titleLabel];
  if (v18 != -1)
  {
    swift_once();
  }

  [v19 setTextColor:qword_1009A2708];

  v20 = *&v16[v17];
  v21 = [v16 traitCollection];
  v22 = [v21 preferredContentSizeCategory];
  v23 = sub_10077084C();

  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = 2;
  }

  [v20 setNumberOfLines:v24];

  sub_10000A5D4(&unk_100945BF0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100783DD0;
  *(v25 + 32) = sub_10076E88C();
  *(v25 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100770C6C();
  swift_unknownObjectRelease();

  [v16 addSubview:*&v16[v17]];
  v26 = OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_iconView;
  v27 = qword_100941368;
  v28 = *&v16[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_iconView];
  if (v27 != -1)
  {
    swift_once();
  }

  [v28 setTintColor:qword_1009A2718];

  [v16 addSubview:*&v16[v26]];
  v29 = OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_separatorView;
  [*&v16[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_separatorView] setHidden:v16[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_showSeparator]];
  [v16 addSubview:*&v16[v29]];

  return v16;
}

void sub_1006911EC(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v4 = *&v3[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_iconImage];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 traitCollection];
    if (qword_100941370 != -1)
    {
      swift_once();
    }

    v7 = [objc_opt_self() configurationWithTextStyle:qword_1009A2720 scale:2];
    v8 = [v7 configurationWithTraitCollection:v6];

    v9 = [v5 imageWithConfiguration:v8];
  }

  else
  {
    v9 = 0;
  }

  v11.value.super.isa = v9;
  v11.is_nil = 0;
  sub_10075FCEC(v11, a3);
}

uint64_t sub_100691340()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_10076D1FC();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100762D1C();
  v29 = *(v4 - 8);
  v30 = v4;
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100762CFC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for SearchHintView();
  v42.receiver = v0;
  v42.super_class = v14;
  objc_msgSendSuper2(&v42, "layoutSubviews");
  v15 = *&v0[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_iconImage];
  v16 = v15;
  [v0 layoutMargins];
  sub_100691684(v15, v0, v13, v17, v18);

  (*(v8 + 16))(v10, v13, v7);
  v19 = *&v0[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_iconView];
  v40 = sub_10075FD2C();
  v41 = &protocol witness table for UIView;
  v39 = v19;
  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_titleLabel];
  v37 = sub_1007626BC();
  v38 = &protocol witness table for UILabel;
  v36 = v20;
  v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_separatorView];
  v34 = type metadata accessor for SeparatorView();
  v35 = &protocol witness table for UIView;
  v33 = v21;
  v22 = v19;
  v23 = v20;
  v24 = v21;
  sub_100762D0C();
  [v1 bounds];
  v25 = v28;
  sub_100762CCC();
  (*(v31 + 8))(v25, v32);
  (*(v29 + 8))(v6, v30);
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_100691684@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D1>, uint64_t a5@<D3>)
{
  v41 = a3;
  v9 = sub_10077164C();
  v40 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076D1AC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_10076D9AC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v20 = a1;
    v21 = [a2 traitCollection];
    if (qword_100941370 != -1)
    {
      swift_once();
    }

    v22 = [objc_opt_self() configurationWithTextStyle:qword_1009A2720 scale:2];
    v23 = [v22 configurationWithTraitCollection:v21];

    v24 = [v20 imageWithConfiguration:v23];
    [v24 size];
  }

  else
  {
    v39 = v9;
    v25 = v16;
    if (qword_100941498 != -1)
    {
      swift_once();
    }

    v26 = qword_1009A31D0;
    *v15 = qword_1009A31D0;
    (*(v13 + 104))(v15, enum case for FontSource.textStyle(_:), v12);
    v48 = v12;
    v49 = &protocol witness table for FontSource;
    v27 = sub_10000DB7C(v47);
    (*(v13 + 16))(v27, v15, v12);
    v28 = v26;
    sub_10076D9BC();
    (*(v13 + 8))(v15, v12);
    sub_10076D17C();
    v16 = v25;
    sub_10076D40C();
    (*(v40 + 8))(v11, v39);
    (*(v17 + 8))(v19, v25);
  }

  v48 = &type metadata for CGFloat;
  v49 = &protocol witness table for CGFloat;
  v47[0] = a4;
  v46[8] = &type metadata for CGFloat;
  v46[9] = &protocol witness table for CGFloat;
  v46[5] = a5;
  if (qword_100941498 != -1)
  {
    swift_once();
  }

  v29 = qword_1009A31D0;
  *v15 = qword_1009A31D0;
  v30 = enum case for FontSource.textStyle(_:);
  v31 = *(v13 + 104);
  v31(v15, enum case for FontSource.textStyle(_:), v12);
  v46[3] = v16;
  v46[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v46);
  v44 = v12;
  v45 = &protocol witness table for FontSource;
  v32 = sub_10000DB7C(v43);
  v40 = v16;
  v33 = *(v13 + 16);
  v33(v32, v15, v12);
  v34 = v29;
  sub_10076D9BC();
  v35 = *(v13 + 8);
  v35(v15, v12);
  *v15 = v34;
  v31(v15, v30, v12);
  v44 = v40;
  v45 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v43);
  v42[3] = v12;
  v42[4] = &protocol witness table for FontSource;
  v36 = sub_10000DB7C(v42);
  v33(v36, v15, v12);
  sub_10076D9BC();
  v35(v15, v12);
  return sub_100762CDC();
}

double sub_100691CB4(void *a1)
{
  v2 = v1;
  v27[1] = a1;
  v27[2] = swift_getObjectType();
  v28 = sub_100762D1C();
  v4 = *(v28 - 8);
  __chkstk_darwin(v28);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100762CFC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v27 - v12;
  v14 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_iconImage];
  v15 = v14;
  [v2 layoutMargins];
  sub_100691684(v14, a1, v13, v16, v17);

  (*(v8 + 16))(v10, v13, v7);
  v18 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_iconView];
  v36 = sub_10075FD2C();
  v37 = &protocol witness table for UIView;
  v35 = v18;
  v19 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_titleLabel];
  v33 = sub_1007626BC();
  v34 = &protocol witness table for UILabel;
  v32 = v19;
  v20 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_separatorView];
  v30 = type metadata accessor for SeparatorView();
  v31 = &protocol witness table for UIView;
  v29 = v20;
  v21 = v18;
  v22 = v19;
  v23 = v20;
  sub_100762D0C();
  sub_100762CBC();
  v25 = v24;
  (*(v4 + 8))(v6, v28);
  (*(v8 + 8))(v13, v7);
  return v25;
}

id sub_100692040()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchHintView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100692104(char *a1, id a2)
{
  v3 = [a2 preferredContentSizeCategory];
  v4 = sub_10077084C() & 1;

  v5 = [a1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LODWORD(v5) = sub_10077084C() & 1;
  if (v4 != v5)
  {
    v7 = *&a1[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_titleLabel];
    v8 = [a1 traitCollection];
    v9 = [v8 preferredContentSizeCategory];
    v10 = sub_10077084C();

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }

    [v7 setNumberOfLines:v11];

    [a1 setNeedsLayout];
  }
}

uint64_t sub_100692240(void *a1, void *a2)
{
  v91 = a1;
  v96 = sub_100762D1C();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v3;
  __chkstk_darwin(v4);
  v94 = &v70 - v5;
  v90 = sub_10076D7FC();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v78 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v80 = &v70 - v8;
  __chkstk_darwin(v9);
  v81 = &v70 - v10;
  __chkstk_darwin(v11);
  v83 = &v70 - v12;
  __chkstk_darwin(v13);
  v85 = &v70 - v14;
  v86 = sub_10076DA7C();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v82 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_10077164C();
  v77 = *(v97 - 8);
  __chkstk_darwin(v97);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10076D1AC();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_10076D9AC();
  v76 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_100762CFC();
  v87 = *(v89 - 8);
  __chkstk_darwin(v89);
  v79 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v27 = __chkstk_darwin(v26).n128_u64[0];
  v99 = &v70 - v28;
  v98 = a2;
  [a2 pageMarginInsets];
  v30 = v29;
  v32 = v31;
  if (qword_100941498 != -1)
  {
    swift_once();
  }

  v33 = qword_1009A31D0;
  *v21 = qword_1009A31D0;
  v72 = enum case for FontSource.textStyle(_:);
  v71 = v19[13];
  v71(v21);
  v70 = v19 + 13;
  v109 = v18;
  v110 = &protocol witness table for FontSource;
  v34 = sub_10000DB7C(&v108);
  v73 = v19[2];
  v74 = v19 + 2;
  v73(v34, v21, v18);
  v35 = v33;
  sub_10076D9BC();
  v75 = v19[1];
  v75(v21, v18);
  sub_10076D17C();
  sub_10076D40C();
  v77[1](v17, v97);
  (*(v76 + 8))(v24, v22);
  v109 = &type metadata for CGFloat;
  v110 = &protocol witness table for CGFloat;
  v108 = v30;
  v106 = &type metadata for CGFloat;
  v107 = &protocol witness table for CGFloat;
  v105 = v32;
  v36 = v35;
  *v21 = v35;
  v37 = v72;
  v38 = v71;
  (v71)(v21, v72, v18);
  v104[3] = v22;
  v104[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v104);
  v102 = v18;
  v103 = &protocol witness table for FontSource;
  v39 = sub_10000DB7C(&v101);
  v40 = v73;
  v73(v39, v21, v18);
  v41 = v36;
  v77 = v41;
  sub_10076D9BC();
  v42 = v75;
  v75(v21, v18);
  *v21 = v41;
  v38(v21, v37, v18);
  v102 = v22;
  v103 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v101);
  v100[3] = v18;
  v100[4] = &protocol witness table for FontSource;
  v43 = sub_10000DB7C(v100);
  v40(v43, v21, v18);
  sub_10076D9BC();
  v42(v21, v18);
  sub_100762CDC();
  sub_100762CEC();
  v44 = sub_10076DDDC();
  swift_allocObject();
  v97 = sub_10076DDBC();
  v45 = v78;
  sub_10076D7EC();
  v46 = objc_opt_self();
  v47 = v98;
  v48 = [v98 traitCollection];
  v49 = [v46 preferredFontForTextStyle:v77 compatibleWithTraitCollection:v48];

  v50 = v80;
  sub_10076D7DC();

  v51 = *(v88 + 8);
  v52 = v90;
  v51(v45, v90);
  v53 = v81;
  sub_10076D73C();
  v51(v50, v52);
  v54 = v83;
  sub_10076D79C();
  v51(v53, v52);
  v55 = [v47 traitCollection];
  v56 = [v55 preferredContentSizeCategory];
  sub_10077084C();

  sub_10076D7AC();
  v51(v54, v52);
  sub_10076DA5C();
  v57 = v91;
  v58 = v82;
  sub_10076DAAC();
  sub_10076DA4C();
  (*(v84 + 8))(v58, v86);
  swift_allocObject();
  v59 = sub_10076DDBC();
  v60 = v87;
  v61 = v89;
  (*(v87 + 16))(v79, v99, v89);
  v106 = v44;
  v107 = &protocol witness table for LayoutViewPlaceholder;
  v105 = v97;
  sub_10000A570(&v108, v104);
  v102 = v44;
  v103 = &protocol witness table for LayoutViewPlaceholder;
  v101 = v59;

  v62 = v94;
  sub_100762D0C();
  v63 = v95;
  v64 = v93;
  v65 = v96;
  (*(v95 + 16))(v93, v62, v96);
  v66 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v67 = swift_allocObject();
  (*(v63 + 32))(v67 + v66, v64, v65);
  swift_allocObject();
  v68 = sub_10076DD9C();

  (*(v63 + 8))(v62, v65);
  sub_10000CD74(&v108);
  (*(v60 + 8))(v99, v61);
  return v68;
}

uint64_t sub_100692E40()
{
  v1 = sub_100762D1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100692F44(uint64_t a1, uint64_t a2)
{
  v3 = sub_100764B4C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_100699CA8(&qword_1009635A0, &type metadata accessor for ComponentDecoration), v7 = sub_10076FEAC(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_100699CA8(&qword_1009635A8, &type metadata accessor for ComponentDecoration);
      v15 = sub_10076FF1C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_10069315C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10075F8BC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_100699CA8(&qword_100946840, &type metadata accessor for PageFacets.Facet.Option), v7 = sub_10076FEAC(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_100699CA8(&qword_100946848, &type metadata accessor for PageFacets.Facet.Option);
      v15 = sub_10076FF1C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_100693374(uint64_t a1, uint64_t a2)
{
  v3 = sub_10075E11C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_100699CA8(&qword_10094E860, &type metadata accessor for IndexPath), v7 = sub_10076FEAC(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_100699CA8(&qword_100947F00, &type metadata accessor for IndexPath);
      v15 = sub_10076FF1C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_10069358C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076B5BC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_100699CA8(&qword_10094B0F8, &type metadata accessor for Shelf.ContentType), v7 = sub_10076FEAC(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_100699CA8(&qword_100942C48, &type metadata accessor for Shelf.ContentType);
      v15 = sub_10076FF1C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1006937A4(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_10077139C();
  }

  else if (*(a2 + 16) && (sub_100016F40(0, &qword_10094F760), v5 = sub_100770EDC(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_100770EEC();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1006938BC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_10076FF9C(), sub_10077175C(), sub_10077008C(), v3 = sub_1007717AC(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = sub_10076FF9C();
      v9 = v8;
      if (v7 == sub_10076FF9C() && v9 == v10)
      {
        break;
      }

      v12 = sub_10077167C();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

double sub_100693A10()
{
  v1 = sub_10075ECCC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10075F0AC();
  __chkstk_darwin(v5 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10075F0CC();
  v42 = *(v8 - 8);
  v43 = v8;
  __chkstk_darwin(v8);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_type;
  swift_beginAccess();
  (*(v2 + 16))(v4, &v0[v10], v1);
  v11 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerDisplayProperties];

  v40 = v7;
  sub_1006961BC(v4, v11, v0, v7);

  (*(v2 + 8))(v4, v1);
  v12 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_iconView];
  v68 = sub_10075FD2C();
  v69 = &protocol witness table for UIView;
  v39 = v12;
  v67 = v12;
  v13 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_wordmarkView;
  swift_beginAccess();
  v14 = *&v0[v13];
  if (v14)
  {
    v15 = sub_100760B6C();
    v16 = &protocol witness table for UIView;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v63 = 0;
    v64 = 0;
  }

  v62 = v14;
  v65 = v15;
  v66 = v16;
  v38 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_titleLabel];
  v17 = v38;
  v18 = sub_1007626BC();
  v60 = v18;
  v61 = &protocol witness table for UILabel;
  v58 = &protocol witness table for UILabel;
  v59 = v17;
  v19 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_descriptionLabel];
  v57 = v18;
  v56 = v19;
  v20 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerButton];
  v54 = type metadata accessor for OfferButton();
  v55 = &protocol witness table for UIView;
  v21 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerLabel];
  v52 = &protocol witness table for UILabel;
  v53 = v20;
  v51 = v18;
  v49 = &protocol witness table for UILabel;
  v50 = v21;
  v22 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkTitleLabel];
  v48 = v18;
  v46 = &protocol witness table for UILabel;
  v47 = v22;
  v23 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkSubtitleLabel];
  v45 = v18;
  v44 = v23;
  v24 = v39;
  v25 = v14;
  v26 = v38;
  v27 = v19;
  v28 = v20;
  v29 = v21;
  v30 = v22;
  v31 = v23;
  v32 = v41;
  sub_10075F0BC();
  sub_100699CA8(&qword_1009635B0, &type metadata accessor for AppShowcaseLockupViewLayout);
  v33 = v43;
  sub_10076D2AC();
  v35 = v34;
  (*(v42 + 8))(v32, v33);
  return v35;
}

double sub_100693E0C(uint64_t a1, void *a2)
{
  v140 = a2;
  v3 = sub_10075F0AC();
  __chkstk_darwin(v3 - 8);
  v125 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10075F0CC();
  v127 = *(v5 - 8);
  v128 = v5;
  __chkstk_darwin(v5);
  v126 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076201C();
  v109 = *(v7 - 8);
  v110 = v7;
  __chkstk_darwin(v7);
  v108 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v107 = &v107 - v10;
  v11 = sub_10076443C();
  v138 = *(v11 - 8);
  v139 = v11;
  __chkstk_darwin(v11);
  v120 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v137 = &v107 - v14;
  v136 = sub_10076D3DC();
  v133 = *(v136 - 8);
  __chkstk_darwin(v136);
  v134 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_10076997C();
  v16 = *(v141 - 8);
  __chkstk_darwin(v141);
  v121 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v119 = &v107 - v19;
  __chkstk_darwin(v20);
  v130 = &v107 - v21;
  v22 = sub_10075ECCC();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v124 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v118 = &v107 - v26;
  __chkstk_darwin(v27);
  v117 = &v107 - v28;
  __chkstk_darwin(v29);
  v31 = &v107 - v30;
  __chkstk_darwin(v32);
  v34 = &v107 - v33;
  __chkstk_darwin(v35);
  v37 = &v107 - v36;
  __chkstk_darwin(v38);
  v40 = &v107 - v39;
  v143 = a1;
  sub_10075F23C();
  v115 = *(v23 + 32);
  v116 = v23 + 32;
  v115(v37, v40, v22);
  v144 = v23;
  v42 = v23 + 88;
  v41 = *(v23 + 88);
  v43 = v41(v37, v22);
  v135 = enum case for AppShowcaseType.large(_:);
  if (v43 == enum case for AppShowcaseType.large(_:) || v43 == enum case for AppShowcaseType.small(_:))
  {
    v44 = v16;
  }

  else
  {
    v44 = v16;
    if (v43 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      (*(v144 + 8))(v37, v22);
    }
  }

  v45 = sub_10076DDDC();
  swift_allocObject();
  v123 = sub_10076DDBC();
  v142 = v22;
  sub_10075F25C();
  v122 = sub_10076BB6C();
  v113 = v46;

  v47 = v142;
  sub_10075F23C();
  (*(v144 + 16))(v31, v34, v47);
  v48 = v41(v31, v47);
  v49 = v136;
  v114 = v41;
  v112 = v42;
  if (v48 == v135)
  {
    v50 = v134;
    if (qword_100940F78 != -1)
    {
      swift_once();
    }

    v51 = qword_1009A1C60;
LABEL_18:
    v56 = sub_10000A61C(v49, v51);
    v55 = v133;
    (*(v133 + 16))(v50, v56, v49);
    v129 = *(v144 + 8);
    v129(v34, v47);
    goto LABEL_19;
  }

  v50 = v134;
  if (v48 == enum case for AppShowcaseType.small(_:) || v48 == enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    if (qword_100940F80 != -1)
    {
      swift_once();
    }

    v51 = qword_1009A1C78;
    goto LABEL_18;
  }

  if (qword_100940F80 != -1)
  {
    swift_once();
  }

  v52 = sub_10000A61C(v49, qword_1009A1C78);
  v53 = v133;
  (*(v133 + 16))(v50, v52, v49);
  v54 = *(v144 + 8);
  v54(v34, v47);
  v129 = v54;
  v54(v31, v47);
  v50 = v134;
  v55 = v53;
LABEL_19:
  v57 = sub_100016F40(0, &qword_100942F00);
  v58 = v140;
  v59 = [v140 traitCollection];
  sub_100770B3C();

  (*(v55 + 8))(v50, v49);
  v60 = sub_10076C04C();
  v158[3] = v60;
  v134 = sub_100699CA8(&qword_100943230, &type metadata accessor for Feature);
  v158[4] = v134;
  v61 = sub_10000DB7C(v158);
  v62 = *(v60 - 8);
  v63 = *(v62 + 104);
  LODWORD(v133) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v131 = v62 + 104;
  v132 = v63;
  v63(v61);
  sub_10076C90C();
  sub_10000CD74(v158);
  v64 = v130;
  sub_10076996C();
  sub_10076994C();
  v65 = *(v44 + 8);
  v122 = v44 + 8;
  v130 = v65;
  (v65)(v64, v141);
  v111 = sub_10075F22C();
  v66 = v49;
  if (qword_100940F80 != -1)
  {
    swift_once();
    v66 = v49;
  }

  sub_10000A61C(v66, qword_1009A1C78);
  v67 = [v58 traitCollection];
  v113 = v57;
  sub_100770B3C();

  v68 = v117;
  sub_10075F23C();
  v69 = v118;
  v70 = v68;
  v71 = v142;
  v115(v118, v70, v142);
  v72 = v114(v69, v71);
  if (v72 == v135 || v72 == enum case for AppShowcaseType.small(_:))
  {
    v73 = v140;
  }

  else
  {
    v73 = v140;
    if (v72 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      v129(v69, v71);
    }
  }

  v157[3] = v60;
  v157[4] = v134;
  v74 = sub_10000DB7C(v157);
  v132(v74, v133, v60);
  sub_10076C90C();
  sub_10000CD74(v157);
  v75 = v119;
  sub_10076996C();
  sub_10076994C();
  (v130)(v75, v141);
  v76 = [v73 traitCollection];
  if (sub_10077071C())
  {
    v77 = v136;
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v78 = qword_100944C88;
  }

  else
  {
    v77 = v136;
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v78 = qword_100944CA0;
  }

  v79 = v139;
  v80 = sub_10000A61C(v139, v78);
  v81 = v138;
  v82 = v120;
  (*(v138 + 16))(v120, v80, v79);

  (*(v81 + 32))(v137, v82, v79);
  sub_1007643EC();
  sub_10076441C();
  swift_allocObject();
  v140 = sub_10076DDBC();
  if (qword_100940A68 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v77, qword_1009A0D48);
  v83 = [v73 traitCollection];
  sub_100770B3C();

  v155 = v60;
  v156 = v134;
  v84 = sub_10000DB7C(v154);
  v132(v84, v133, v60);
  sub_10076C90C();
  sub_10000CD74(v154);
  v85 = v121;
  sub_10076996C();
  sub_10076994C();
  (v130)(v85, v141);
  v86 = v143;
  sub_10075F25C();
  v87 = sub_10076BB3C();

  if (v87)
  {
    v141 = v45;
    v88 = v73;
    v89 = v107;
    sub_100766A8C();
    v90 = v108;
    v91 = v109;
    v92 = v110;
    (*(v109 + 104))(v108, enum case for OfferLabelStyle.preorder(_:), v110);
    v93 = sub_100761FFC();
    v94 = *(v91 + 8);
    v94(v90, v92);
    v94(v89, v92);
    if (v93)
    {
      sub_10000CF78(v154, v155);
      v86 = v143;
      sub_10076D25C();

      v73 = v88;
      v45 = v141;
      goto LABEL_40;
    }

    v73 = v88;
    v45 = v141;
  }

  sub_10000CF78(v154, v155);
  sub_10076D25C();
LABEL_40:
  v95 = sub_1006993F4(v86);
  v96 = v142;
  if (v95)
  {
    swift_allocObject();
    v97 = sub_10076DDBC();
  }

  else
  {
    v97 = 0;
  }

  v98 = v124;
  sub_10075F23C();
  sub_10075F25C();
  v99 = sub_10076BB3C();

  sub_1006961BC(v98, v99, v73, v125);

  v129(v98, v96);
  v153[14] = &protocol witness table for LayoutViewPlaceholder;
  v153[13] = v45;
  v153[10] = v123;
  if (v97)
  {
    v100 = &protocol witness table for LayoutViewPlaceholder;
    v101 = v45;
  }

  else
  {
    v101 = 0;
    v100 = 0;
    v153[7] = 0;
    v153[6] = 0;
  }

  v153[5] = v97;
  v153[8] = v101;
  v153[9] = v100;
  sub_10000A570(v158, v153);
  sub_10000A570(v157, &v152);
  v151[8] = v45;
  v151[9] = &protocol witness table for LayoutViewPlaceholder;
  v151[5] = v140;
  sub_10000A570(v154, v151);
  v150 = 0;
  v148 = 0u;
  v149 = 0u;
  v147 = 0;
  v145 = 0u;
  v146 = 0u;

  v102 = v126;
  sub_10075F0BC();
  sub_100699CA8(&qword_1009635B0, &type metadata accessor for AppShowcaseLockupViewLayout);
  v103 = v128;
  sub_10076D2AC();
  v105 = v104;

  (*(v127 + 8))(v102, v103);
  (*(v138 + 8))(v137, v139);
  sub_10000CD74(v157);
  sub_10000CD74(v158);
  sub_10000CD74(v154);
  return v105;
}

char *sub_100694F08(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10076771C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v14 - 8);
  v16 = v66 - v15;
  v17 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_iconView;
  sub_10075FD2C();
  *&v4[v17] = sub_10075FB3C();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_wordmarkView] = 0;
  v18 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_titleLabel;
  v73 = sub_1007626BC();
  *&v5[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v69 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_descriptionLabel;
  if (qword_100940F80 != -1)
  {
    swift_once();
  }

  v19 = sub_10076D3DC();
  v20 = sub_10000A61C(v19, qword_1009A1C78);
  v21 = *(v19 - 8);
  v70 = *(v21 + 16);
  v70(v16, v20, v19);
  v23 = *(v21 + 56);
  v22 = v21 + 56;
  v72 = v23;
  v23(v16, 0, 1, v19);
  v24 = enum case for DirectionalTextAlignment.none(_:);
  v26 = *(v11 + 104);
  v25 = v11 + 104;
  v71 = v26;
  v26(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v27 = objc_allocWithZone(v73);
  *&v5[v69] = sub_1007626AC();
  v69 = v10;
  v28 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerButton;
  v29 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v28] = sub_1001E89B8(0);
  v30 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerLabel;
  if (qword_100940A68 != -1)
  {
    swift_once();
  }

  v31 = sub_10000A61C(v19, qword_1009A0D48);
  v70(v16, v31, v19);
  v72(v16, 0, 1, v19);
  v71(v13, v24, v69);
  v32 = objc_allocWithZone(v73);
  *&v5[v30] = sub_1007626AC();
  v33 = &v5[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerLabelPresenter];
  *v33 = 0u;
  *(v33 + 1) = 0u;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerDisplayProperties] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkPresenter] = 0;
  v67 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkTitleLabel;
  v34 = v25;
  v35 = v24;
  if (qword_100940F90 != -1)
  {
    swift_once();
  }

  v36 = sub_10000A61C(v19, qword_1009A1CA8);
  v70(v16, v36, v19);
  v37 = v72;
  v72(v16, 0, 1, v19);
  v66[2] = v22;
  v38 = v69;
  v39 = v71;
  v71(v13, v35, v69);
  v40 = v73;
  v41 = objc_allocWithZone(v73);
  v66[1] = v34;
  *&v5[v67] = sub_1007626AC();
  v70 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkSubtitleLabel;
  v37(v16, 1, 1, v19);
  v39(v13, v35, v38);
  v42 = objc_allocWithZone(v40);
  *(v70 + v5) = sub_1007626AC();
  v43 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_type;
  v44 = enum case for AppShowcaseType.large(_:);
  v45 = sub_10075ECCC();
  (*(*(v45 - 8) + 104))(&v5[v43], v44, v45);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView____lazy_storage___lockupViews] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView____lazy_storage___crossLinkViews] = 0;
  v74.receiver = v5;
  v74.super_class = ObjectType;
  v46 = objc_msgSendSuper2(&v74, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v50 = v46;
  [v50 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v51 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_titleLabel;
  [*&v50[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_titleLabel] setNumberOfLines:1];
  v52 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_descriptionLabel;
  v53 = *&v50[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_descriptionLabel];
  sub_100016F40(0, &qword_100942F10);
  v54 = v53;
  v55 = sub_100770D1C();
  [v54 setTextColor:v55];

  [v50 addSubview:*&v50[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_iconView]];
  [v50 addSubview:*&v50[v51]];
  [v50 addSubview:*&v50[v52]];
  v56 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkTitleLabel;
  v57 = *&v50[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkTitleLabel];
  v58 = objc_opt_self();
  v59 = v57;
  v60 = [v58 secondaryLabelColor];
  [v59 setTextColor:v60];

  [*&v50[v56] setHidden:1];
  [*&v50[v56] setAlpha:0.0];
  [v50 addSubview:*&v50[v56]];
  v61 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkSubtitleLabel;
  v62 = *&v50[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkSubtitleLabel];
  v63 = [v58 labelColor];
  [v62 setTextColor:v63];

  [*&v50[v61] setHidden:1];
  [*&v50[v61] setAlpha:0.0];
  [v50 addSubview:*&v50[v61]];
  [v50 addSubview:*&v50[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerButton]];
  v64 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerLabel;
  [*&v50[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerLabel] _setTextColorFollowsTintColor:1];
  [*&v50[v64] setText:0];
  [*&v50[v64] setHidden:1];
  [v50 addSubview:*&v50[v64]];

  return v50;
}

void sub_100695790(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_wordmarkView;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  if (!v4)
  {
    v8 = a1;
    v6 = a1;
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = a1;
  [v4 removeFromSuperview];
  v6 = *&v1[v3];
  if (v6)
  {
LABEL_3:
    v7 = v6;
    [v1 addSubview:v7];
  }

LABEL_4:
}

id sub_10069583C()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v2 - 8);
  v63 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v61 = &v54 - v5;
  v6 = sub_10075ECCC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v65 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v62 = &v54 - v10;
  __chkstk_darwin(v11);
  v60 = &v54 - v12;
  __chkstk_darwin(v13);
  v58 = &v54 - v14;
  __chkstk_darwin(v15);
  v55 = &v54 - v16;
  __chkstk_darwin(v17);
  v57 = &v54 - v18;
  __chkstk_darwin(v19);
  v21 = &v54 - v20;
  __chkstk_darwin(v22);
  v24 = &v54 - v23;
  v25 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_type;
  swift_beginAccess();
  v26 = v7[2];
  v72 = v25;
  v73 = v7 + 2;
  v71 = v26;
  v26(v24, &v1[v25], v6);
  v27 = v7[13];
  v64 = enum case for AppShowcaseType.smallAlignedLeft(_:);
  v27(v21);
  sub_100699CA8(&qword_100957668, &type metadata accessor for AppShowcaseType);
  sub_10077018C();
  sub_10077018C();
  if (v76 != v74 || (v28 = 0, v77 != v75))
  {
    v28 = (sub_10077167C() & 1) == 0;
  }

  v29 = v7[1];
  v29(v21, v6);
  v70 = v29;
  v29(v24, v6);
  v30 = v7;

  [*&v1[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_titleLabel] setTextAlignment:v28];
  v56 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_descriptionLabel];
  [v56 setTextAlignment:v28];
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerLabel] setTextAlignment:v28];
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkTitleLabel] setTextAlignment:v28];
  v59 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkSubtitleLabel];
  [v59 setTextAlignment:v28];
  v31 = v57;
  v32 = v71;
  v71(v57, &v1[v72], v6);
  v33 = v55;
  v32(v55, v31, v6);
  v67 = v7[11];
  v68 = v7 + 11;
  v34 = v67(v33, v6);
  v66 = enum case for AppShowcaseType.large(_:);
  if (v34 == enum case for AppShowcaseType.large(_:))
  {
    if (qword_100940F78 != -1)
    {
      swift_once();
    }

    v35 = sub_10076D3DC();
    v36 = sub_10000A61C(v35, qword_1009A1C60);
    v37 = v61;
    (*(*(v35 - 8) + 16))(v61, v36, v35);
  }

  else if (v34 == enum case for AppShowcaseType.small(_:) || v34 == v64)
  {
    v37 = v61;
    if (qword_100940F80 != -1)
    {
      swift_once();
    }

    v35 = sub_10076D3DC();
    v39 = sub_10000A61C(v35, qword_1009A1C78);
    (*(*(v35 - 8) + 16))(v37, v39, v35);
  }

  else
  {
    v37 = v61;
    if (qword_100940F80 != -1)
    {
      swift_once();
    }

    v35 = sub_10076D3DC();
    v38 = sub_10000A61C(v35, qword_1009A1C78);
    (*(*(v35 - 8) + 16))(v37, v38, v35);
    v70(v31, v6);
    v31 = v33;
  }

  v70(v31, v6);
  sub_10076D3DC();
  v40 = *(v35 - 8);
  v61 = *(v40 + 56);
  (v61)(v37, 0, 1, v35);
  sub_1007625DC();
  v41 = v58;
  v71(v58, &v1[v72], v6);
  v42 = v60;
  (v30[4])(v60, v41, v6);
  v43 = v67(v42, v6);
  v69 = v1;
  if (v43 == v66)
  {
    v44 = 2;
    v46 = v62;
    v45 = v63;
  }

  else
  {
    v44 = 1;
    v46 = v62;
    v45 = v63;
    if (v43 != enum case for AppShowcaseType.small(_:) && v43 != v64)
    {
      (v70)(v42, v6, 1);
      v44 = 1;
    }
  }

  [v56 setNumberOfLines:v44];
  v47 = v71;
  v71(v46, &v69[v72], v6);
  v48 = v65;
  v47(v65, v46, v6);
  v49 = v67(v48, v6);
  if (v49 == v66)
  {
    if (qword_100940F98 != -1)
    {
      swift_once();
    }

    v50 = qword_1009A1CC0;
LABEL_33:
    v52 = sub_10000A61C(v35, v50);
    (*(v40 + 16))(v45, v52, v35);
    goto LABEL_34;
  }

  if (v49 == enum case for AppShowcaseType.small(_:) || v49 == v64)
  {
    if (qword_100940F80 != -1)
    {
      swift_once();
    }

    v50 = qword_1009A1C78;
    goto LABEL_33;
  }

  if (qword_100940F80 != -1)
  {
    swift_once();
  }

  v51 = sub_10000A61C(v35, qword_1009A1C78);
  (*(v40 + 16))(v45, v51, v35);
  v70(v46, v6);
  v46 = v65;
LABEL_34:
  v70(v46, v6);
  (v61)(v45, 0, 1, v35);
  sub_1007625DC();
  return [v69 setNeedsLayout];
}

uint64_t sub_1006961BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v122 = a3;
  v117 = a2;
  v114 = a4;
  v125 = sub_10076D9AC();
  __chkstk_darwin(v125);
  v113 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v112 = &v100 - v7;
  __chkstk_darwin(v8);
  v111 = &v100 - v9;
  __chkstk_darwin(v10);
  v110 = &v100 - v11;
  __chkstk_darwin(v12);
  v109 = &v100 - v13;
  v14 = sub_10076D1AC();
  v126 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = (&v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v17 - 8);
  v104 = &v100 - v18;
  v101 = sub_100768FEC();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v20 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_10000A5D4(&unk_100946750);
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v22 = &v100 - v21;
  v124 = sub_10076443C();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v24 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v100 - v26;
  v28 = sub_10075ECCC();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v120 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v116 = &v100 - v32;
  v34 = __chkstk_darwin(v33);
  v36 = &v100 - v35;
  v37 = *(v29 + 16);
  v118 = a1;
  v115 = v29 + 16;
  v108 = v37;
  (v37)(&v100 - v35, a1, v28, v34);
  v119 = v29;
  v38 = *(v29 + 88);
  v107 = (v29 + 88);
  v106 = v38;
  v39 = v38(v36, v28);
  v105 = enum case for AppShowcaseType.large(_:);
  if (v39 != enum case for AppShowcaseType.large(_:) && v39 != enum case for AppShowcaseType.small(_:) && v39 != enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    (*(v119 + 8))(v36, v28);
  }

  v40 = [v122 traitCollection];
  v41 = sub_10077071C();
  v121 = v27;
  if (v41)
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v42 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v42 = qword_100944CA0;
  }

  v43 = v124;
  v44 = sub_10000A61C(v124, v42);
  v45 = v123;
  (*(v123 + 16))(v24, v44, v43);

  v46 = *(v45 + 32);
  v47 = v121;
  v46(v121, v24, v43);
  if (v117)
  {
    v48 = v100;
    v49 = v20;
    v50 = v101;
    (*(v100 + 104))(v49, enum case for OfferButtonSubtitlePosition.below(_:), v101);
    (*(v48 + 56))(v104, 1, 1, v50);
    sub_100699CA8(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition);

    sub_10076759C();
    sub_10076440C();

    (*(v102 + 8))(v22, v103);
  }

  else
  {
    sub_1007643EC();
    sub_10076441C();
  }

  v51 = v116;
  v52 = v118;
  v53 = v108;
  v108(v116, v118, v28);
  v54 = v120;
  v53(v120, v52, v28);
  v55 = v106(v54, v28);
  if (v55 == v105)
  {
    (*(v119 + 8))(v51, v28);
    *v16 = UIFontTextStyleFootnote;
    v56 = v126;
    v57 = *(v126 + 104);
    LODWORD(v106) = enum case for FontSource.textStyle(_:);
    v122 = v57;
    v116 = (v126 + 104);
    (v57)(v16);
    v140[3] = v125;
    v140[4] = &protocol witness table for StaticDimension;
    sub_10000DB7C(v140);
    v138 = v14;
    v139 = &protocol witness table for FontSource;
    v58 = sub_10000DB7C(&v137);
    v59 = *(v56 + 16);
    v117 = v56 + 16;
    v59(v58, v16, v14);
    v60 = UIFontTextStyleFootnote;
    sub_10076D9BC();
    v61 = *(v56 + 8);
    v126 = v56 + 8;
    v108 = v61;
    (v61)(v16, v14);
    if (qword_100940F78 != -1)
    {
      swift_once();
    }

    v62 = sub_10076D3DC();
    v120 = sub_10000A61C(v62, qword_1009A1C60);
    v63 = *(v62 - 8);
    v64 = *(v63 + 16);
    v65 = v63 + 16;
    v64(v16, v120, v62);
    v66 = enum case for FontSource.useCase(_:);
    (v122)(v16, enum case for FontSource.useCase(_:), v14);
    v138 = v14;
    v139 = &protocol witness table for FontSource;
    v67 = sub_10000DB7C(&v137);
    v59(v67, v16, v14);
    sub_10076D9BC();
    v68 = v108;
    (v108)(v16, v14);
    v69 = v120;
    v118 = v62;
    v120 = v64;
    v115 = v65;
    v64(v16, v69, v62);
    LODWORD(v119) = v66;
    (v122)(v16, v66, v14);
    v138 = v125;
    v139 = &protocol witness table for StaticDimension;
    sub_10000DB7C(&v137);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v70 = sub_10000DB7C(&v134);
    v107 = v59;
    v59(v70, v16, v14);
    sub_10076D9BC();
    v68(v16, v14);
    if (qword_100940F80 != -1)
    {
      swift_once();
    }

    v71 = v118;
    v72 = sub_10000A61C(v118, qword_1009A1C78);
    v73 = v120;
    (v120)(v16, v72, v71);
    v74 = v119;
    (v122)(v16, v119, v14);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v75 = sub_10000DB7C(&v134);
    v76 = v107;
    v107(v75, v16, v14);
    sub_10076D9BC();
    v77 = v108;
    (v108)(v16, v14);
    v73(v16, v72, v71);
    v78 = v122;
    (v122)(v16, v74, v14);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v79 = sub_10000DB7C(&v134);
    v76(v79, v16, v14);
    sub_10076D9BC();
    v77(v16, v14);
    if (qword_100940F88 != -1)
    {
      swift_once();
    }

    v80 = v118;
    v81 = sub_10000A61C(v118, qword_1009A1C90);
    (v120)(v16, v81, v80);
    v78(v16, v119, v14);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v82 = sub_10000DB7C(&v134);
    v76(v82, v16, v14);
    sub_10076D9BC();
    v77(v16, v14);
    *v16 = UIFontTextStyleBody;
    v78(v16, v106, v14);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v83 = sub_10000DB7C(&v134);
    v76(v83, v16, v14);
    v84 = UIFontTextStyleBody;
    sub_10076D9BC();
    v77(v16, v14);
    if (qword_100940F90 != -1)
    {
      swift_once();
    }

    v85 = v118;
    v106 = sub_10000A61C(v118, qword_1009A1CA8);
    v86 = v120;
    (v120)(v16, v106, v85);
    v78(v16, v119, v14);
    v87 = v125;
    v135 = v125;
    v136 = &protocol witness table for StaticDimension;
    sub_10000DB7C(&v134);
    v132 = v14;
    v133 = &protocol witness table for FontSource;
    v88 = sub_10000DB7C(&v131);
    v89 = v107;
    v107(v88, v16, v14);
    sub_10076D9BC();
    v90 = v108;
    (v108)(v16, v14);
    v86(v16, v106, v85);
    v91 = v119;
    v78(v16, v119, v14);
    v132 = v87;
    v133 = &protocol witness table for StaticDimension;
    sub_10000DB7C(&v131);
    v129 = v14;
    v130 = &protocol witness table for FontSource;
    v92 = sub_10000DB7C(&v128);
    v89(v92, v16, v14);
    sub_10076D9BC();
    v90(v16, v14);
    if (qword_100940F98 != -1)
    {
      swift_once();
    }

    v93 = v118;
    v94 = sub_10000A61C(v118, qword_1009A1CC0);
    (v120)(v16, v94, v93);
    (v122)(v16, v91, v14);
    v129 = v125;
    v130 = &protocol witness table for StaticDimension;
    sub_10000DB7C(&v128);
    v127[3] = v14;
    v127[4] = &protocol witness table for FontSource;
    v95 = sub_10000DB7C(v127);
    v89(v95, v16, v14);
    sub_10076D9BC();
    v90(v16, v14);
    sub_10075F09C();
    return (*(v123 + 8))(v121, v124);
  }

  else
  {
    v97 = v55;
    v98 = enum case for AppShowcaseType.small(_:);
    sub_10069748C(v114);
    v99 = *(v119 + 8);
    v99(v51, v28);
    result = (*(v123 + 8))(v47, v124);
    if (v97 != v98 && v97 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      return (v99)(v120, v28);
    }
  }

  return result;
}

uint64_t sub_10069748C@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = sub_10076D1AC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = sub_10076D9AC();
  __chkstk_darwin(v50);
  v59 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v58 = v47 - v7;
  __chkstk_darwin(v8);
  v57 = v47 - v9;
  __chkstk_darwin(v10);
  v56 = v47 - v11;
  __chkstk_darwin(v12);
  v55 = v47 - v13;
  v14 = sub_10075ECCC();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v18, enum case for AppShowcaseType.smallAlignedLeft(_:), v14, v16);
  sub_100699CA8(&qword_100957668, &type metadata accessor for AppShowcaseType);
  sub_10077018C();
  sub_10077018C();
  if (v78[0] == v75[0] && v78[1] == v75[1])
  {
    v49 = 1;
  }

  else
  {
    v49 = sub_10077167C();
  }

  (*(v15 + 8))(v18, v14);

  v54 = sub_10076D67C();
  v78[3] = v54;
  v78[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v78);
  sub_10076D66C();
  if (qword_100940F80 != -1)
  {
    swift_once();
  }

  v19 = sub_10076D3DC();
  v20 = sub_10000A61C(v19, qword_1009A1C78);
  v21 = *(v19 - 8);
  v22 = *(v21 + 16);
  v61 = v21 + 16;
  v62 = v19;
  v22(v4, v20, v19);
  v60 = enum case for FontSource.useCase(_:);
  v52 = v2[13];
  v52(v4);
  v76 = v1;
  v77 = &protocol witness table for FontSource;
  v23 = sub_10000DB7C(v75);
  v24 = v2 + 2;
  v65 = v2[2];
  v65(v23, v4, v1);
  sub_10076D9BC();
  v64 = v2[1];
  v64(v4, v1);
  v76 = v54;
  v77 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v75);
  sub_10076D66C();
  v22(v4, v20, v19);
  v25 = v60;
  v26 = v52;
  (v52)(v4, v60, v1);
  v73 = v1;
  v74 = &protocol witness table for FontSource;
  v27 = sub_10000DB7C(v72);
  v65(v27, v4, v1);
  sub_10076D9BC();
  v64(v4, v1);
  v48 = v20;
  v63 = v22;
  v22(v4, v20, v62);
  v26(v4, v25, v1);
  v73 = v1;
  v74 = &protocol witness table for FontSource;
  v28 = sub_10000DB7C(v72);
  v65(v28, v4, v1);
  sub_10076D9BC();
  v53 = v2 + 1;
  v64(v4, v1);
  if (qword_100940F88 != -1)
  {
    swift_once();
  }

  v29 = v62;
  v30 = sub_10000A61C(v62, qword_1009A1C90);
  v63(v4, v30, v29);
  v26(v4, v25, v1);
  v73 = v1;
  v74 = &protocol witness table for FontSource;
  v31 = sub_10000DB7C(v72);
  v32 = v65;
  v65(v31, v4, v1);
  sub_10076D9BC();
  v33 = v64;
  v64(v4, v1);
  *v4 = UIFontTextStyleBody;
  v26(v4, enum case for FontSource.textStyle(_:), v1);
  v73 = v1;
  v74 = &protocol witness table for FontSource;
  v34 = sub_10000DB7C(v72);
  v32(v34, v4, v1);
  v35 = UIFontTextStyleBody;
  sub_10076D9BC();
  v33(v4, v1);
  v47[1] = v24;
  v36 = v60;
  if (qword_100940F90 != -1)
  {
    swift_once();
  }

  v37 = v62;
  v38 = sub_10000A61C(v62, qword_1009A1CA8);
  v63(v4, v38, v37);
  v39 = v36;
  v40 = v52;
  (v52)(v4, v39, v1);
  v41 = v50;
  v73 = v50;
  v74 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v72);
  v70 = v1;
  v71 = &protocol witness table for FontSource;
  v42 = sub_10000DB7C(v69);
  v43 = v65;
  v65(v42, v4, v1);
  sub_10076D9BC();
  v44 = v64;
  v64(v4, v1);
  v63(v4, v48, v37);
  (v40)(v4, v60, v1);
  v70 = v41;
  v71 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v69);
  v67 = v1;
  v68 = &protocol witness table for FontSource;
  v45 = sub_10000DB7C(v66);
  v43(v45, v4, v1);
  sub_10076D9BC();
  v44(v4, v1);
  v67 = v54;
  v68 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v66);
  sub_10076D66C();
  return sub_10075F09C();
}

uint64_t sub_100697EBC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10076D1FC();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v46 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10075ECCC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10075F0AC();
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10075F0CC();
  v44 = *(v11 - 8);
  v45 = v11;
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v43 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76.receiver = v0;
  v76.super_class = ObjectType;
  v47 = ObjectType;
  objc_msgSendSuper2(&v76, "layoutSubviews", v12);
  v14 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_type;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v0[v14], v4);
  v15 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerDisplayProperties];

  v42 = v10;
  sub_1006961BC(v7, v15, v0, v10);

  (*(v5 + 8))(v7, v4);
  v16 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_iconView];
  v74 = sub_10075FD2C();
  v75 = &protocol witness table for UIView;
  v41 = v16;
  v73 = v16;
  v17 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_wordmarkView;
  swift_beginAccess();
  v18 = *&v0[v17];
  if (v18)
  {
    v19 = sub_100760B6C();
    v20 = &protocol witness table for UIView;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v69 = 0;
    v70 = 0;
  }

  v68 = v18;
  v71 = v19;
  v72 = v20;
  v40 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_titleLabel];
  v21 = v40;
  v22 = sub_1007626BC();
  v66 = v22;
  v67 = &protocol witness table for UILabel;
  v64 = &protocol witness table for UILabel;
  v65 = v21;
  v23 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_descriptionLabel];
  v63 = v22;
  v62 = v23;
  v24 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerButton];
  v60 = type metadata accessor for OfferButton();
  v61 = &protocol witness table for UIView;
  v25 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerLabel];
  v58 = &protocol witness table for UILabel;
  v59 = v24;
  v57 = v22;
  v55 = &protocol witness table for UILabel;
  v56 = v25;
  v26 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkTitleLabel];
  v54 = v22;
  v52 = &protocol witness table for UILabel;
  v53 = v26;
  v27 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkSubtitleLabel];
  v51 = v22;
  v50 = v27;
  v28 = v41;
  v29 = v18;
  v30 = v40;
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  v35 = v27;
  v36 = v43;
  sub_10075F0BC();
  sub_10076422C();
  v37 = v46;
  sub_10075F08C();
  (*(v48 + 8))(v37, v49);
  return (*(v44 + 8))(v36, v45);
}

id sub_1006983AC(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v42 = sub_100760B4C();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076D1AC();
  v39 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = sub_10076D9AC();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&qword_1009622B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  v16 = sub_10076C43C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100699384(a1, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000CFBC(v15, &qword_1009622B0);
    v20 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_wordmarkView;
    swift_beginAccess();
    result = *&v2[v20];
    if (result)
    {
      return [result setHidden:1];
    }
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    v22 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_wordmarkView;
    swift_beginAccess();
    v23 = *&v2[v22];
    if (v23 || ((*(v17 + 56))(v12, 1, 1, v16), v38 = UIFontTextStyleFootnote, *v7 = UIFontTextStyleFootnote, v24 = v39, (*(v39 + 104))(v7, enum case for FontSource.textStyle(_:), v5), v47 = v5, v48 = &protocol witness table for FontSource, v25 = sub_10000DB7C(v46), (*(v24 + 16))(v25, v7, v5), v26 = v38, sub_10076D9BC(), (*(v24 + 8))(v7, v5), (*(v40 + 104))(v44, enum case for WordmarkView.Alignment.center(_:), v42), v27 = v43, v47 = v43, v48 = &protocol witness table for StaticDimension, v28 = sub_10000DB7C(v46), v29 = v41, (*(v41 + 16))(v28, v9, v27), v30 = objc_allocWithZone(sub_100760B6C()), v31 = v2, v32 = sub_100760B3C(), (*(v29 + 8))(v9, v27), v33 = v32, v2 = v31, sub_100695790(v33), (v23 = *&v31[v22]) != 0))
    {
      [v23 setTintColor:v45];
      v34 = *&v2[v22];
      if (v34)
      {
        [v34 setHidden:0];
      }
    }

    swift_beginAccess();
    v35 = *&v2[v22];
    if (v35)
    {
      swift_endAccess();
      v36 = v35;
      v37 = [v2 traitCollection];
      sub_100760B2C();

      return (*(v17 + 8))(v19, v16);
    }

    else
    {
      (*(v17 + 8))(v19, v16);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1006989A0(uint64_t *a1, void *a2, void *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    sub_10000A5D4(&unk_100942870);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100785D70;
    v9 = *(v3 + *a2);
    v10 = *(v3 + *a3);
    *(v6 + 32) = v9;
    *(v6 + 40) = v10;
    *(v3 + v4) = v6;
    v11 = v9;
    v12 = v10;
  }

  return v6;
}

void sub_100698A4C(char a1, char a2)
{
  if (a1)
  {
    if (([*(v2 + OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkTitleLabel) isHidden] & 1) == 0)
    {
      return;
    }

    v4 = sub_1006989A0(&OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView____lazy_storage___lockupViews, &OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_titleLabel, &OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_descriptionLabel);
    v5 = &OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView____lazy_storage___crossLinkViews;
    v6 = &OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkTitleLabel;
    v7 = &OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkSubtitleLabel;
  }

  else
  {
    if (([*(v2 + OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_titleLabel) isHidden] & 1) == 0)
    {
      return;
    }

    v4 = sub_1006989A0(&OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView____lazy_storage___crossLinkViews, &OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkTitleLabel, &OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkSubtitleLabel);
    v5 = &OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView____lazy_storage___lockupViews;
    v6 = &OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_titleLabel;
    v7 = &OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_descriptionLabel;
  }

  v8 = sub_1006989A0(v5, v6, v7);
  v9 = v8;
  if ((a2 & 1) == 0)
  {
    if (v4 >> 62)
    {
      v15 = sub_10077158C();
    }

    else
    {
      v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v15)
    {
      v16 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v17 = sub_10077149C();
        }

        else
        {
          if (v16 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          v17 = *(v4 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_39;
        }

        [v17 setAlpha:0.0];
        [v18 setHidden:1];

        ++v16;
      }

      while (v19 != v15);
    }

    if (v9 >> 62)
    {
      v20 = sub_10077158C();
      if (v20)
      {
LABEL_30:
        v4 = 0;
        do
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v21 = sub_10077149C();
          }

          else
          {
            if (v4 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v21 = *(v9 + 8 * v4 + 32);
          }

          v22 = v21;
          v23 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_42;
          }

          [v21 setAlpha:1.0];
          [v22 setHidden:0];

          ++v4;
        }

        while (v23 != v20);
      }
    }

    else
    {
      v20 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_30;
      }
    }

    return;
  }

  if (v8 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = sub_10077149C();
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      [v12 setHidden:0];

      ++v11;
      if (v14 == i)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

LABEL_45:
  v24 = objc_opt_self();
  v25 = swift_allocObject();
  *(v25 + 16) = v4;
  *(v25 + 24) = v9;
  v33 = sub_10029F3B8;
  v34 = v25;
  v29 = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_10009AEDC;
  v32 = &unk_10089F578;
  v26 = _Block_copy(&v29);

  v27 = swift_allocObject();
  *(v27 + 16) = v4;
  v33 = sub_10029F410;
  v34 = v27;
  v29 = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_1000513F0;
  v32 = &unk_10089F5C8;
  v28 = _Block_copy(&v29);

  [v24 animateWithDuration:4 delay:v26 options:v28 animations:0.33 completion:0.0];
  _Block_release(v28);
  _Block_release(v26);
}

uint64_t type metadata accessor for AppShowcaseLockupView()
{
  result = qword_100963590;
  if (!qword_100963590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10069907C()
{
  result = sub_10075ECCC();
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

uint64_t sub_10069918C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkPresenter;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_100699248()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkTitleLabel];
  v2 = sub_10076FF6C();
  [v1 setText:v2];

  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkSubtitleLabel];
  v4 = sub_10076FF6C();
  [v3 setText:v4];

  return [v0 setNeedsLayout];
}

uint64_t sub_1006992F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100699334(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10069934C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100699384(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009622B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006993F4(uint64_t a1)
{
  v20 = sub_100764B4C();
  v2 = *(v20 - 8);
  __chkstk_darwin(v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10075ECCC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  v19 = a1;
  sub_10075F23C();
  (*(v6 + 104))(v8, enum case for AppShowcaseType.large(_:), v5);
  sub_100699CA8(&qword_100957668, &type metadata accessor for AppShowcaseType);
  sub_10077018C();
  sub_10077018C();
  if (v23 == v21 && v24 == v22)
  {
    v12 = *(v6 + 8);
    v12(v8, v5);
    v12(v11, v5);

LABEL_5:
    sub_10075F25C();
    v16 = sub_10076BA0C();

    v17 = v20;
    (*(v2 + 104))(v4, enum case for ComponentDecoration.arcade(_:), v20);
    v15 = sub_100692F44(v4, v16);

    (*(v2 + 8))(v4, v17);
    return v15 & 1;
  }

  v13 = sub_10077167C();
  v14 = *(v6 + 8);
  v14(v8, v5);
  v14(v11, v5);

  v15 = 0;
  if (v13)
  {
    goto LABEL_5;
  }

  return v15 & 1;
}

void sub_10069970C()
{
  v1 = v0;
  v43 = sub_10076771C();
  v2 = *(v43 - 8);
  __chkstk_darwin(v43);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - v6;
  v8 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_iconView;
  sub_10075FD2C();
  *(v0 + v8) = sub_10075FB3C();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_wordmarkView) = 0;
  v9 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_titleLabel;
  v42 = sub_1007626BC();
  *(v1 + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_descriptionLabel;
  if (qword_100940F80 != -1)
  {
    swift_once();
  }

  v11 = sub_10076D3DC();
  v12 = sub_10000A61C(v11, qword_1009A1C78);
  v13 = *(v11 - 8);
  v39 = *(v13 + 16);
  v39(v7, v12, v11);
  v14 = *(v13 + 56);
  v14(v7, 0, 1, v11);
  v15 = v2;
  v16 = enum case for DirectionalTextAlignment.none(_:);
  v40 = *(v15 + 104);
  v41 = v15 + 104;
  v40(v4, enum case for DirectionalTextAlignment.none(_:), v43);
  v17 = objc_allocWithZone(v42);
  *(v1 + v10) = sub_1007626AC();
  v18 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerButton;
  v19 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v1 + v18) = sub_1001E89B8(0);
  v20 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerLabel;
  if (qword_100940A68 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A61C(v11, qword_1009A0D48);
  v39(v7, v21, v11);
  v14(v7, 0, 1, v11);
  v40(v4, v16, v43);
  v22 = objc_allocWithZone(v42);
  *(v1 + v20) = sub_1007626AC();
  v23 = (v1 + OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerLabelPresenter);
  *v23 = 0u;
  v23[1] = 0u;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerDisplayProperties) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkPresenter) = 0;
  v37 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkTitleLabel;
  v38 = v1;
  if (qword_100940F90 != -1)
  {
    swift_once();
  }

  v24 = sub_10000A61C(v11, qword_1009A1CA8);
  v39(v7, v24, v11);
  v14(v7, 0, 1, v11);
  v25 = v43;
  LODWORD(v39) = v16;
  v26 = v40;
  v40(v4, v16, v43);
  v36 = v14;
  v27 = v42;
  v28 = objc_allocWithZone(v42);
  v29 = sub_1007626AC();
  v30 = v7;
  v31 = v38;
  *(v38 + v37) = v29;
  v37 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkSubtitleLabel;
  v36(v30, 1, 1, v11);
  v26(v4, v39, v25);
  v32 = objc_allocWithZone(v27);
  *(v31 + v37) = sub_1007626AC();
  v33 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_type;
  v34 = enum case for AppShowcaseType.large(_:);
  v35 = sub_10075ECCC();
  (*(*(v35 - 8) + 104))(v31 + v33, v34, v35);
  *(v31 + OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView____lazy_storage___lockupViews) = 0;
  *(v31 + OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView____lazy_storage___crossLinkViews) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_100699CA8(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_100699CF8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_10077158C();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_1004A01D4(v3, 0);
  sub_1000FABD4(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_100699D8C(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView);
  sub_10076C66C();

  v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_gradientView);
  v7 = v6[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating];
  v6[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating] = a1;
  if (v7 != v4)
  {
    v8 = v6;
    sub_1007214A0();
  }
}

char *sub_100699E44(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v41 = sub_10076F9AC();
  v9 = *(v41 - 8);
  __chkstk_darwin(v41);
  v11 = &ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100762CAC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &ObjectType - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverContainerView;
  *&v4[v16] = [objc_allocWithZone(UIView) init];
  v4[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_isDisappearing] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for RiverCardDataSource();
  v17 = swift_allocObject();
  *(v17 + 32) = _swiftEmptyArrayStorage;
  *(v17 + 16) = xmmword_1007AAF70;
  *(v17 + 40) = vdupq_n_s64(0x4058C00000000000uLL);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverDataSource] = v17;
  sub_100762C1C();
  sub_100762C8C();
  v18 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverStyling;
  (*(v13 + 32))(&v4[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverStyling], v15, v12);
  v19 = *(v13 + 16);
  v19(v15, &v4[v18], v12);
  v20 = objc_allocWithZone(sub_10000A5D4(&qword_10095D2C8));

  *&v4[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView] = sub_10076C62C();
  v19(v15, &v4[v18], v12);
  v21 = objc_allocWithZone(type metadata accessor for RiverTodayCardBackgroundView());
  *&v4[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_gradientView] = sub_100720100(v15);
  v47[0] = sub_1000082CC;
  v47[1] = 0;
  v47[2] = sub_1007333C0;
  v47[3] = 0;
  v47[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v47[5] = 0;
  v47[6] = sub_1002091B8;
  v47[7] = 0;
  v47[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v47[9] = 0;
  v47[10] = sub_100342B64;
  v47[11] = 0;
  v48 = 0x4000000000000000uLL;
  v49 = 0;
  v50 = 0x4018000000000000;
  v51 = 0;
  v52 = 1;
  v22 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView());
  *&v4[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_labelsView] = sub_1001ED0D8(v47, &v48);
  v46.receiver = v4;
  v46.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v46, "initWithFrame:", a1, a2, a3, a4);
  v24 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_gradientView;
  v25 = *&v23[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_gradientView];
  v26 = v23;
  [v25 _setContinuousCornerRadius:20.0];
  v27 = *&v23[v24];
  [v27 bounds];
  [v27 setBounds:?];

  [*&v23[v24] setClipsToBounds:1];
  v28 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView;
  [*&v26[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView] setClipsToBounds:0];
  v29 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverContainerView;
  [*&v26[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverContainerView] setClipsToBounds:1];
  v30 = [v26 contentView];
  [v30 addSubview:*&v23[v24]];

  [*&v26[v29] addSubview:*&v26[v28]];
  v31 = [v26 contentView];
  [v31 addSubview:*&v26[v29]];

  v32 = [v26 contentView];
  [v32 addSubview:*&v26[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_labelsView]];

  v33 = *&v26[v28];
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v34 = v33;
  sub_10076F95C();
  sub_1000258C0(&v42);
  sub_1000258C0(&v44);
  sub_100770B9C();

  v35 = *(v9 + 8);
  v36 = v41;
  v35(v11, v41);
  v37 = *&v23[v24];
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v38 = v37;
  sub_10076F95C();
  sub_1000258C0(&v42);
  sub_1000258C0(&v44);
  sub_100770B9C();

  v35(v11, v36);
  return v26;
}

void sub_10069A4A0()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isMotionEnabled;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView);
  sub_10076C66C();

  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_gradientView);
  v4 = *(v0 + v1);
  v5 = v3[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating];
  v3[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating] = v4;
  if (v4 != v5)
  {
    v6 = v3;
    sub_1007214A0();
  }
}

void sub_10069A57C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isTransitioning;
  *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_labelsView) + qword_10094D6F0) = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isTransitioning);
  sub_1001EE26C();
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView);
  sub_10076C69C();

  if ((*(v0 + v1) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_isDisappearing) = 0;
  }
}

void sub_10069A624()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  if (v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v2 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (v0[*v2] != 4)
  {
    v3 = [v0 traitCollection];
    v4 = v3;
    if (v0[v1])
    {
      v5 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v5 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    sub_100312548(v3, v0[*v5], &v28);
    v6 = v31;

    v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_labelsView];
    v8 = v0[v1];
    v9 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    if (!v8)
    {
      v9 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v10 = v0[v9];
    v11 = v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory];
    v12 = v0[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_isDisappearing];
    v23 = v28;
    v24 = v29;
    v25 = v30;
    *&v26 = v6;
    *v27 = 0uLL;
    *(&v26 + 1) = v7;
    v27[16] = 1;
    v27[17] = v10;
    v27[18] = v11;
    v27[19] = v8;
    v27[20] = v12;
    v32 = v28;
    v33 = v29;
    *&v36[13] = *&v27[13];
    v35 = v26;
    *v36 = 0uLL;
    v34 = v30;
    v13 = v7;
    [v0 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [v0 traitCollection];
    sub_10033FA50(v22, v15, v17, v19, v21);

    sub_100138C80(&v23);
  }
}

id sub_10069A7D0()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_1007706FC();

  if (v3)
  {
    v4 = 40.0;
  }

  else
  {
    v4 = 30.0;
  }

  v5 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_labelsView;
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_labelsView] frame];
  v7 = v6 - v4 + -24.0;
  v8 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  if ((v1[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0)
  {
    v9 = [v1 traitCollection];
    v10 = sub_10077071C();

    v11 = (v10 & 1) != 0 ? 0.5 : 0.52;
    [v1 bounds];
    v12 = v11 * CGRectGetHeight(v50);
    sub_100762C2C();
    v14 = v13;
    v15 = round((v12 - v13) * 0.5);
    v16 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView;
    v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView];
    sub_10076C6BC();
    v19 = v18;
    v21 = v20;

    if (v19 != v15 || v21 != v15)
    {
      v23 = v14 + v15 + v15;
      v24 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverDataSource];
      swift_beginAccess();
      if (v15 < *(v24 + 48) && v23 <= v7)
      {
        v26 = *&v1[v16];
        sub_10076C67C();
      }
    }
  }

  v27 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView;
  v28 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView];
  [v1 bounds];
  [v28 sizeThatFits:{v29, v30}];
  v32 = v31;
  v34 = v33;

  [*&v1[v5] frame];
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverContainerView] setFrame:{0.0, 0.0, v32, v35}];
  if (v1[v8])
  {
    [*&v1[v5] frame];
    MinY = CGRectGetMinY(v51);
    v37 = [v1 traitCollection];
    v38 = sub_1007706EC();

    if (v38)
    {
      v39 = 50.0;
    }

    else
    {
      v39 = 64.0;
    }

    v40 = floor((MinY - v39 - v34) * 0.5);
    v41 = [v1 traitCollection];
    v42 = sub_1007706EC();

    if (v42)
    {
      v43 = 50.0;
    }

    else
    {
      v43 = 64.0;
    }

    v44 = v40 + v43;
  }

  else
  {
    v45 = [v1 traitCollection];
    v46 = sub_1007706EC();

    if (v46 & 1) != 0 || (v47 = [v1 traitCollection], v48 = sub_10077071C(), v47, (v48))
    {
      [*&v1[v5] frame];
      v44 = floor((CGRectGetMinY(v52) - v34) * 0.5);
    }

    else if (v7 < v34)
    {
      v44 = v4 + v7 - v34;
    }

    else
    {
      v44 = v4;
    }
  }

  return [*&v1[v27] setFrame:{0.0, v44, v32, v34}];
}

void sub_10069ABDC()
{
  sub_1003DFB08();
  v1 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  v2 = 20.0;
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v2 = 0.0;
  }

  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_gradientView) _setContinuousCornerRadius:v2];
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_labelsView);
  v3[qword_10094D6E8] = *(v0 + v1);
  v4 = v3;
  sub_1001EDE3C();
}

void sub_10069AC80()
{
  [v0 setNeedsLayout];
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_labelsView];
  if (v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v2 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v1[qword_10094D6A8] = v0[*v2];
  v3 = v1;
  sub_1001EDB98();
}

void sub_10069AD28(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  if (a3)
  {
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      v20 = a1;
      sub_10069AF38(v12);
      v13 = v20;
    }
  }

  else
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    v15 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_10003BD64(v10, v4 + v15);
    swift_endAccess();
    *(v4 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory) = (*(a2 + 160))(ObjectType, a2);
    sub_10069CD74();
    v16 = (*(a2 + 136))(ObjectType, a2);
    sub_1003DC6B0(v16);
    if (swift_dynamicCastClass())
    {
      v17 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView);
      v18 = a1;
      v19 = v17;
      sub_10076C66C();

      swift_unknownObjectWeakAssign();
    }
  }
}

id sub_10069AF38(char *a1)
{
  v3 = [v1 contentView];
  v4 = [a1 contentView];
  v5 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_gradientView;
  v6 = *&a1[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_gradientView];
  [v6 setHidden:0];
  [v6 removeFromSuperview];
  v7 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_gradientView;
  v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_gradientView];
  [v8 setHidden:1];
  [v8 removeFromSuperview];
  v9 = *&v1[v7];
  *&v1[v7] = v6;
  v10 = v6;

  [v3 addSubview:v10];
  v11 = *&a1[v5];
  *&a1[v5] = v8;
  v12 = v8;

  [v4 addSubview:v12];
  v50 = [v1 contentView];
  v51 = [a1 contentView];
  v13 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverContainerView;
  v14 = *&a1[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverContainerView];
  [v14 setHidden:0];
  [v14 removeFromSuperview];
  v15 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverContainerView;
  v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverContainerView];
  [v16 setHidden:1];
  [v16 removeFromSuperview];
  v17 = *&v1[v15];
  *&v1[v15] = v14;
  v18 = v1;
  v19 = v14;

  [v50 addSubview:v19];
  v20 = *&a1[v13];
  *&a1[v13] = v16;
  v21 = a1;
  v22 = v16;

  [v51 addSubview:v22];
  v23 = *&v1[v15];
  v24 = *&a1[v13];
  v25 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView;
  v26 = *&v21[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView];
  v27 = v23;
  v28 = v24;
  [v26 setHidden:0];
  [v26 removeFromSuperview];
  v29 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView;
  v30 = *&v18[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView];
  [v30 setHidden:1];
  [v30 removeFromSuperview];
  v31 = *&v18[v29];
  *&v18[v29] = v26;
  v32 = v18;
  v33 = v26;

  [v27 addSubview:v33];
  v34 = *&v21[v25];
  *&v21[v25] = v30;
  v35 = v21;
  v36 = v30;

  [v28 addSubview:v36];
  v37 = [v32 contentView];
  v38 = [v35 contentView];
  v39 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_labelsView;
  v40 = *&v35[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_labelsView];
  [v40 setHidden:0];
  [v40 removeFromSuperview];
  v41 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_labelsView;
  v42 = *&v32[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_labelsView];
  [v42 setHidden:1];
  [v42 removeFromSuperview];
  v43 = *&v32[v41];
  *&v32[v41] = v40;
  v44 = v32;
  v45 = v40;

  [v37 addSubview:v45];
  v46 = *&v35[v39];
  *&v35[v39] = v42;
  v47 = v35;
  v48 = v42;

  [v38 addSubview:v48];
  [v47 setNeedsLayout];

  return [v44 setNeedsLayout];
}

uint64_t sub_10069B3D8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v129 = a4;
  v7 = sub_100766EBC();
  v128 = *(v7 - 8);
  __chkstk_darwin(v7);
  v136 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_10076C7EC();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v10 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_10076637C();
  v11 = *(v125 - 8);
  __chkstk_darwin(v125);
  v134 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v13 - 8);
  v15 = &v112 - v14;
  v16 = sub_10076C38C();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v15, a3, v16);
  (*(v17 + 56))(v15, 0, 1, v16);
  v18 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_10003BD64(v15, &v4[v18]);
  swift_endAccess();
  v135 = a2;
  sub_1003DC6B0(a2);
  v137 = v4;
  v19 = [v4 backgroundView];
  if (v19)
  {
    v20 = v19;
    v21 = sub_10076C70C();
    if (!v21)
    {
      sub_1000325F0();
      v21 = sub_100770D8C();
    }

    v22 = v21;
    [v20 setBackgroundColor:v21];
  }

  v23 = sub_10076C7FC();
  sub_1007652BC();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
  }

  v120 = v24;
  v121 = v11;
  v25 = *&v137[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_labelsView];
  v26 = sub_10076C82C();
  v133 = v27;
  v124 = sub_10076C81C();
  v130 = v28;
  v116 = sub_10076C6EC();
  v132 = v29;
  sub_10076C75C();
  v30 = sub_10076C73C();
  v123 = v31;
  v131 = v10;
  sub_10076C80C();
  sub_10076C77C();
  v32 = v135;
  v118 = v23;
  v122 = v7;
  v117 = v30;
  if (v135 == 4)
  {
    v119 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v33 = sub_100342B64;
  }

  else
  {
    v33 = sub_100342B64;
    v119 = sub_1002091B8;
  }

  v25[qword_10094D6D8] = 0;
  v34 = *&v25[qword_10094D6C0];
  *(v34 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v35 = *&v25[qword_10094D6B8];
  sub_1001E44C4(v26, v133);
  v36 = sub_100766EAC();
  v37 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  v38 = *&v35[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  if (v32 == 4 && (v36 & 1) == 0)
  {
    if (([v38 isHidden] & 1) != 0 || (v35[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v35[v37] setHidden:1];
      goto LABEL_24;
    }

    [*&v35[v37] setHidden:1];
    v35[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    goto LABEL_22;
  }

  v39 = [v38 text];
  if (v39)
  {
    v40 = v39;
    sub_10076FF9C();
  }

  v41 = sub_10077002C();
  v42 = v41 & 1;

  if (v42 != [*&v35[v37] isHidden] && (v35[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] & 1) != 0)
  {
    if ((v41 & 1) == 0)
    {
      [*&v35[v37] setAlpha:0.0];
      v114 = objc_opt_self();
      [v114 inheritedAnimationDuration];
      v44 = v43;
      v45 = swift_allocObject();
      *(v45 + 16) = v35;
      v142 = sub_100138CF0;
      v143 = v45;
      v115 = sub_100342B64;
      aBlock = _NSConcreteStackBlock;
      v139 = 1107296256;
      v140 = sub_10009AEDC;
      v141 = &unk_10089F6D8;
      v113 = _Block_copy(&aBlock);
      v46 = v35;
      v112 = v46;

      v47 = swift_allocObject();
      *(v47 + 16) = v46;
      v142 = sub_100138CFC;
      v143 = v47;
      v33 = v115;
      aBlock = _NSConcreteStackBlock;
      v139 = 1107296256;
      v140 = sub_1000513F0;
      v141 = &unk_10089F728;
      v48 = _Block_copy(&aBlock);
      v49 = v112;

      v50 = v113;
      [v114 animateWithDuration:0 delay:v113 options:v48 animations:v44 completion:0.0];
      _Block_release(v48);
      _Block_release(v50);
    }

    [*&v35[v37] setHidden:v41 & 1];
    v35[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
LABEL_22:
    [v35 setNeedsLayout];
    goto LABEL_24;
  }

  [*&v35[v37] setHidden:v42];
LABEL_24:
  v51 = &v25[qword_10094D6E0];
  *v51 = sub_1000082CC;
  v51[1] = 0;
  v51[2] = sub_1007333C0;
  v51[3] = 0;
  v51[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v51[5] = 0;
  v51[6] = v119;
  v51[7] = 0;
  v51[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v51[9] = 0;
  v51[10] = v33;
  v51[11] = 0;

  sub_1001EDE3C();
  v52 = v131;
  if (v130)
  {
    if (v135 == 4)
    {
      sub_1001EFAF8();
    }

    else
    {
      sub_1001EFB1C();
    }

    v53 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
    v54 = *(v34 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
    v55 = objc_allocWithZone(NSAttributedString);
    v56 = v54;
    v57 = sub_10076FF6C();
    type metadata accessor for Key(0);
    sub_10069CE5C(&qword_100943320, type metadata accessor for Key);
    isa = sub_10076FE3C().super.isa;

    v59 = [v55 initWithString:v57 attributes:isa];

    [v56 setAttributedText:v59];
    [*(v34 + v53) setAdjustsFontSizeToFitWidth:0];
    [*(v34 + v53) setMinimumScaleFactor:0.0];
    [*(v34 + v53) setAttributedText:0];
    if (v132 && v25[qword_10094D6B0] == 4)
    {
      v52 = v131;
      if (v135 == 4)
      {
        v60 = v124;
        v61 = v130;
        v62 = v116;
        v63 = v132;
      }

      else
      {
        v60 = v116;
        v61 = v132;
        v62 = v124;
        v63 = v130;
      }

      sub_1001E45BC(v60, v61, v62, v63);
    }

    else
    {
      sub_1001E44C4(v124, v130);
      v52 = v131;
    }
  }

  v64 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  v65 = *(v34 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v66 = [v65 text];
  if (v66 || (v66 = [*(v34 + v64) attributedText]) != 0)
  {

    v67 = 0;
  }

  else
  {
    v67 = 1;
  }

  v68 = v135;
  [v65 setHidden:v67];

  [v25 setNeedsLayout];
  v69 = *&v25[qword_10094D6C8];
  [v69 setImage:0];
  [v69 setHidden:1];
  v70 = v68 == 4;
  v71 = v123;
  if (v70 || (sub_100766E8C() & 1) != 0 || !v71)
  {
    v74 = *&v25[qword_10094D6D0];
    v75 = &v74[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
    v76 = *&v74[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
    if (!v71)
    {
      v77 = v76;
      v78 = 0;
      v73 = 1;
      goto LABEL_48;
    }

    v73 = 1;
  }

  else
  {
    v72 = HIBYTE(v71) & 0xF;
    if ((v71 & 0x2000000000000000) == 0)
    {
      v72 = v117 & 0xFFFFFFFFFFFFLL;
    }

    v73 = v72 == 0;
    v74 = *&v25[qword_10094D6D0];
    v75 = &v74[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
    v76 = *&v74[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  }

  v77 = v76;
  v78 = sub_10076FF6C();
LABEL_48:
  [v77 setText:v78];

  if (v73 == [*v75 isHidden] || (v74[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v75 setHidden:v73];
  }

  else
  {
    if (!v73)
    {
      [*v75 setAlpha:0.0];
      v79 = objc_opt_self();
      [v79 inheritedAnimationDuration];
      v81 = v80;
      v82 = swift_allocObject();
      *(v82 + 16) = v74;
      v142 = sub_100138AA8;
      v143 = v82;
      aBlock = _NSConcreteStackBlock;
      v139 = 1107296256;
      v140 = sub_10009AEDC;
      v141 = &unk_10089F638;
      v83 = _Block_copy(&aBlock);
      v84 = v74;

      v85 = swift_allocObject();
      *(v85 + 16) = v84;
      v142 = sub_100138AC8;
      v143 = v85;
      aBlock = _NSConcreteStackBlock;
      v139 = 1107296256;
      v140 = sub_1000513F0;
      v141 = &unk_10089F688;
      v86 = _Block_copy(&aBlock);
      v87 = v84;
      v52 = v131;

      [v79 animateWithDuration:0 delay:v83 options:v86 animations:v81 completion:0.0];
      _Block_release(v86);
      _Block_release(v83);
    }

    [*v75 setHidden:v73];
    v74[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v74 setNeedsLayout];
  }

  sub_1001EE35C(v52, 1);
  [v25 setNeedsLayout];

  (*(v128 + 8))(v136, v122);
  (*(v126 + 8))(v52, v127);
  (*(v121 + 8))(v134, v125);
  v88 = sub_1007652AC();
  v89 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView;
  v90 = v137;
  v91 = *&v137[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView];
  v92 = sub_10076C63C();

  swift_beginAccess();
  *(v92 + 32) = v88;

  v93 = *&v90[v89];
  v94 = sub_10076C63C();

  sub_100760C4C();
  sub_10076F64C();
  sub_10076FC1C();
  *(v94 + 16) = v144;

  v144 = _swiftEmptyArrayStorage;
  v95 = v88 & 0xFFFFFFFFFFFFFF8;
  if (v88 >> 62)
  {
LABEL_89:
    v96 = sub_10077158C();
  }

  else
  {
    v96 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v97 = 0;
  v98 = _swiftEmptyArrayStorage;
  while (v96 != v97)
  {
    if ((v88 & 0xC000000000000001) != 0)
    {
      sub_10077149C();
      v99 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
        goto LABEL_85;
      }
    }

    else
    {
      if (v97 >= *(v95 + 16))
      {
        goto LABEL_86;
      }

      v99 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }
    }

    v100 = sub_10076BB9C();

    ++v97;
    if (v100)
    {
      sub_10077019C();
      if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();
      v98 = v144;
      v97 = v99;
    }
  }

  v101 = sub_100699CF8(v98);
  v88 = v101;
  v102 = *&v137[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_gradientView];
  v144 = _swiftEmptyArrayStorage;
  v95 = v101 & 0xFFFFFFFFFFFFFF8;
  if (v101 >> 62)
  {
    v103 = sub_10077158C();
  }

  else
  {
    v103 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v104 = v102;
  v105 = 0;
  v106 = _swiftEmptyArrayStorage;
  while (v103 != v105)
  {
    if ((v88 & 0xC000000000000001) != 0)
    {
      sub_10077149C();
      v107 = v105 + 1;
      if (__OFADD__(v105, 1))
      {
        goto LABEL_87;
      }
    }

    else
    {
      if (v105 >= *(v95 + 16))
      {
        goto LABEL_88;
      }

      v107 = v105 + 1;
      if (__OFADD__(v105, 1))
      {
        goto LABEL_87;
      }
    }

    v108 = sub_10076BE1C();

    ++v105;
    if (v108)
    {
      sub_10077019C();
      if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();
      v106 = v144;
      v105 = v107;
    }
  }

  v109 = OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();
  v110 = *&v104[v109];
  *&v104[v109] = v106;
  sub_100720B00(v110);

  [v137 setNeedsLayout];
}

uint64_t sub_10069C5E8()
{
  sub_10076C84C();
  sub_10069CE5C(&qword_100947150, &type metadata accessor for TodayCard);
  result = sub_10076332C();
  if (v9)
  {
    sub_10076C7FC();

    sub_1007652BC();
    if (!swift_dynamicCastClass())
    {
    }

    sub_1007652AC();
    sub_10076BC0C();
    v1 = sub_1007701EC();

    if ((v1 & 1) == 0)
    {
    }

    v2 = sub_1007652AC();
    v3 = v2;
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_24:
      v5 = sub_10077158C();
      if (v5)
      {
LABEL_6:
        v6 = 0;
        do
        {
          v7 = v6;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              sub_10077149C();
              v6 = v7 + 1;
              if (__OFADD__(v7, 1))
              {
                goto LABEL_22;
              }
            }

            else
            {
              if (v7 >= *(v4 + 16))
              {
                goto LABEL_23;
              }

              v6 = v7 + 1;
              if (__OFADD__(v7, 1))
              {
LABEL_22:
                __break(1u);
LABEL_23:
                __break(1u);
                goto LABEL_24;
              }
            }

            if (sub_10076BB5C())
            {
              break;
            }

            ++v7;
            if (v6 == v5)
            {
              goto LABEL_25;
            }
          }

          sub_10076BFCC();

          sub_10077019C();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_10077021C();
          }

          sub_10077025C();
        }

        while (v6 != v5);
      }
    }

    else
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_6;
      }
    }

LABEL_25:

    v8._rawValue = _swiftEmptyArrayStorage;
    sub_100760BAC(v8);
  }

  return result;
}

uint64_t sub_10069C87C()
{
  v1 = v0;
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "prepareForReuse");
  v2 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView;
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView];
  v4 = sub_10076C63C();

  swift_beginAccess();
  *(v4 + 32) = _swiftEmptyArrayStorage;

  v5 = *&v1[v2];
  sub_10076C6CC();

  v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_gradientView];
  v7 = OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();
  v8 = *&v6[v7];
  *&v6[v7] = _swiftEmptyArrayStorage;
  v9 = v6;
  sub_100720B00(v8);
}

uint64_t sub_10069CA70()
{

  v1 = OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverStyling;
  v2 = sub_100762CAC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_unknownObjectWeakDestroy();
}

uint64_t type metadata accessor for RiverTodayCardCollectionViewCell()
{
  result = qword_100963618;
  if (!qword_100963618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10069CC58()
{
  result = sub_100762CAC();
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

uint64_t sub_10069CD24()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10069CD5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10069CD74()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  if (v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4)
  {
    v2 = [v0 contentView];
    [v2 setClipsToBounds:1];
  }

  result = [v0 setNeedsLayout];
  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_labelsView];
  v5 = v0[v1];
  *(v4 + qword_10094D6B0) = v5;
  if (v5 != 7)
  {
    *(*(v4 + qword_10094D6B8) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v4 + qword_10094D6C0) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v4 + qword_10094D6D0) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = v5;
  }

  return result;
}

uint64_t sub_10069CE5C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_10069CEC8(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = *a1;
  ObjectType = swift_getObjectType();

  return sub_10069CFD8(a2, v11, a7, a5, v7, ObjectType);
}

double sub_10069CFD8(double a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int *a6)
{
  v9 = sub_10075F1BC();
  v11 = v10;
  v12 = sub_10075F1AC();
  v14 = v13;
  v15 = sub_10075F1EC();
  v17 = v16;
  v18 = sub_10052BE68();
  if (qword_100940640 != -1)
  {
    swift_once();
  }

  sub_1002ECDCC(&unk_10099FD58, a3);
  v19 = type metadata accessor for AppEventCardView();
  sub_10052FF80(v9, v11, v12, a1, v14, v15, v17, v18 & 1, a3, v19, a6);

  return a1;
}

void *sub_10069D120(uint64_t a1, void *a2)
{
  if (qword_100940640 != -1)
  {
    swift_once();
  }

  sub_1002ECDCC(&unk_10099FD58, a2);
  type metadata accessor for AppEventCardView();

  return sub_1005321BC(a1, a2);
}

double sub_10069D1E0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8, double a9, uint64_t a10, int *a11)
{
  if (qword_100940640 != -1)
  {
    swift_once();
  }

  sub_1002ECDCC(&unk_10099FD58, a8);
  v20 = type metadata accessor for AppEventCardView();
  sub_10052FF80(a1, a2, a3, a9, a4, a5, a6, a7 & 1, a8, v20, a11);
  return a9;
}

void sub_10069D2F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&qword_100952650);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_10075F15C();
  v10 = *&v2[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_formattedDateView];
  sub_1004B1900(v9);
  [v2 setNeedsLayout];
  v11 = sub_10075F27C();
  if (v11)
  {
    v22 = v11;
    sub_10076B90C();
    sub_10076F64C();
    sub_10069D584(&qword_100956710, &type metadata accessor for Action);
    sub_10076F56C();

    v12 = sub_10000A5D4(&qword_100955BD0);
    (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  }

  else
  {
    v13 = sub_10000A5D4(&qword_100955BD0);
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  }

  v14 = OBJC_IVAR____TtC20ProductPageExtension12AppEventView_clickAction;
  swift_beginAccess();
  sub_1002F0390(v8, &v3[v14]);
  swift_endAccess();
  sub_100530B80(a1, a2);
  type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
  sub_10076F63C();
  v15 = v22;
  v16 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
  v17 = *(v10 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  v18 = v17;
  sub_1004B57F0(v15);
  v19 = *(v10 + v16);
  *(v10 + v16) = v15;
  v20 = v15;

  sub_1004B5954(v17);
}

uint64_t sub_10069D584(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10069D5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = __chkstk_darwin(a1);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v10);
  sub_10053269C(v12, a2, *(a3 + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView), a4, a5);
  return (*(v9 + 8))(v12, a4);
}

id ProductPage.init(lookupItem:askToBuy:enablePrerenderedIconArtwork:)(void *a1, uint64_t a2, int a3)
{
  LODWORD(v152) = a3;
  v6 = sub_100762A7C();
  v150 = *(v6 - 8);
  __chkstk_darwin(v6);
  v142 = v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_10076B21C();
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v9 = v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076F3DC();
  __chkstk_darwin(v10 - 8);
  v147 = v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&qword_100963670);
  __chkstk_darwin(v12 - 8);
  v146 = v114 - v13;
  v14 = sub_10076201C();
  __chkstk_darwin(v14 - 8);
  v145 = v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076C54C();
  __chkstk_darwin(v16 - 8);
  v144 = v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1007628DC();
  __chkstk_darwin(v18 - 8);
  v143 = v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_10075F78C();
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v21 = v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10000A5D4(&qword_100942A80);
  __chkstk_darwin(v22 - 8);
  v141 = v114 - v23;
  v137 = sub_10076C55C();
  v136 = *(v137 - 1);
  __chkstk_darwin(v137);
  v138 = v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v25 - 8);
  v122 = v114 - v26;
  v27 = sub_10000A5D4(&qword_100959C90);
  __chkstk_darwin(v27 - 8);
  v121 = v114 - v28;
  v29 = sub_10076BD9C();
  __chkstk_darwin(v29 - 8);
  v126 = v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_10076BEDC();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v117 = v114 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v118 = v114 - v33;
  v127 = sub_10076BF6C();
  v125 = *(v127 - 8);
  __chkstk_darwin(v127);
  v116 = v114 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v124 = v114 - v36;
  v162 = sub_10076F25C();
  v37 = *(v162 - 8);
  __chkstk_darwin(v162);
  v115 = v114 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v123 = v114 - v40;
  __chkstk_darwin(v41);
  v128 = v114 - v42;
  __chkstk_darwin(v43);
  v45 = v114 - v44;
  __chkstk_darwin(v46);
  v160 = v114 - v47;
  v48 = sub_10000A5D4(&qword_100963678);
  __chkstk_darwin(v48 - 8);
  v50 = v114 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v159 = v114 - v52;
  v53 = sub_10076B96C();
  v157 = *(v53 - 8);
  v158 = v53;
  __chkstk_darwin(v53);
  v156 = v114 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v135 = v114 - v56;
  *&v58 = __chkstk_darwin(v57).n128_u64[0];
  v60 = v114 - v59;
  result = [a1 iTunesStoreIdentifier];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v134 = a2;
  v161 = v60;
  sub_10076B95C();
  v62 = [a1 bundleIdentifier];
  v133 = v3;
  v132 = v6;
  if (v62)
  {
    v63 = v62;
    v64 = sub_10076FF9C();
    v154 = v65;
    v155 = v64;
  }

  else
  {
    v154 = 0;
    v155 = 0;
  }

  v66 = v162;
  v131 = v9;
  v153 = a1;
  if (v152)
  {
    v67 = [a1 itemDictionary];
    v68 = sub_10076FE4C();

    *&v163 = 0x777472416E6F6369;
    *(&v163 + 1) = 0xEB000000006B726FLL;
    sub_10077140C();
    if (*(v68 + 16) && (v69 = sub_10060FEFC(v165), (v70 & 1) != 0))
    {
      sub_10000CD08(*(v68 + 56) + 32 * v69, &v163);
      sub_100016C74(v165);
    }

    else
    {

      sub_100016C74(v165);
      v163 = 0u;
      v164 = 0u;
    }

    v66 = v162;
    v72 = v159;
    sub_10076F24C();
    v71 = 0;
  }

  else
  {
    v71 = 1;
    v72 = v159;
  }

  (*(v37 + 56))(v72, v71, 1, v66);
  sub_100016E2C(v72, v50, &qword_100963678);
  v73 = *(v37 + 48);
  if (v73(v50, 1, v66) == 1)
  {
    v74 = [v153 itemDictionary];
    v75 = sub_10076FE4C();

    *&v163 = 0x6B726F77747261;
    *(&v163 + 1) = 0xE700000000000000;
    sub_10077140C();
    if (*(v75 + 16) && (v76 = sub_10060FEFC(v165), (v77 & 1) != 0))
    {
      sub_10000CD08(*(v75 + 56) + 32 * v76, &v163);
      sub_100016C74(v165);
    }

    else
    {

      sub_100016C74(v165);
      v163 = 0u;
      v164 = 0u;
    }

    v66 = v162;
    sub_10076F24C();
    if (v73(v50, 1, v66) != 1)
    {
      sub_10000CFBC(v50, &qword_100963678);
    }
  }

  else
  {
    (*(v37 + 32))(v160, v50, v66);
  }

  v130 = v21;
  sub_10076F26C();
  v78 = sub_10076F23C();
  v80 = v79;
  v81 = *(v37 + 8);
  v81(v45, v66);
  v151 = v37 + 8;
  v129 = v81;
  if (v80)
  {
    v114[1] = v78;
    v82 = v128;
    sub_10076F26C();
    sub_10076F22C();
    v84 = v83;
    v81(v82, v66);
    if ((v84 & 1) == 0)
    {
      v128 = v73;
      v85 = v123;
      sub_10076F26C();
      sub_10076F22C();
      v87 = v86;
      v81(v85, v66);
      if ((v87 & 1) == 0)
      {
        v101 = v159;
        v102 = v128;
        v103 = (v128)(v159, 1, v66);
        v104 = &enum case for Artwork.Style.roundedRect(_:);
        if (v103 != 1)
        {
          v104 = &enum case for Artwork.Style.roundedRectPrerendered(_:);
        }

        (*(v125 + 104))(v124, *v104, v127);
        v88 = v161;
        if ((v152 & 1) != 0 && v102(v101, 1, v66) == 1)
        {
          v105 = v118;
          sub_10076BEBC();
        }

        else
        {
          v105 = v118;
          sub_10076BE8C();
        }

        sub_10076BD7C();
        v106 = v115;
        sub_10076F26C();
        v152 = sub_10076F20C();
        v81(v106, v66);
        v107 = v125;
        v108 = v124;
        (*(v125 + 16))(v116, v124, v127);
        v109 = v119;
        v110 = v120;
        (*(v119 + 16))(v117, v105, v120);
        v111 = sub_10076BD2C();
        (*(*(v111 - 8) + 56))(v121, 1, 1, v111);
        v112 = sub_10076F7FC();
        (*(*(v112 - 8) + 56))(v122, 1, 1, v112);
        sub_10076C02C();
        swift_allocObject();
        v113 = sub_10076BE7C();
        (*(v109 + 8))(v105, v110);
        (*(v107 + 8))(v108, v127);
        v152 = v113;

        goto LABEL_25;
      }
    }
  }

  v152 = 0;
  v88 = v161;
LABEL_25:
  (*(v136 + 104))(v138, enum case for OfferType.app(_:), v137);
  v89 = v157;
  v137 = *(v157 + 16);
  v90 = v158;
  v137(v135, v88, v158);
  (*(v89 + 56))(v141, 1, 1, v90);
  memset(v165, 0, sizeof(v165));

  v136 = sub_10069ED94(_swiftEmptyArrayStorage);
  v128 = sub_10069ED94(_swiftEmptyArrayStorage);
  v127 = sub_10069ED94(_swiftEmptyArrayStorage);
  (*(v139 + 104))(v130, enum case for OfferStyle.infer(_:), v140);
  sub_1007628CC();
  sub_10076C53C();
  sub_10076200C();
  sub_100766B0C();
  swift_allocObject();
  sub_100766ADC();
  v137(v156, v161, v90);
  v91 = v153;
  v92 = [v153 displayName];
  v93 = v142;
  if (v92)
  {
    v94 = v92;
    sub_10076FF9C();
  }

  [v91 userRating];
  v96 = v95;
  v97 = objc_allocWithZone(NSNumber);
  LODWORD(v98) = v96;
  [v97 initWithFloat:v98];
  v99 = v134;
  sub_100016E2C(v134, v146, &qword_100963670);

  sub_10076F3CC();
  (*(v148 + 104))(v131, enum case for Uber.Style.above(_:), v149);
  (*(v150 + 104))(v93, enum case for ProductPageTheme.infer(_:), v132);
  v100 = sub_10076017C();

  sub_10000CFBC(v99, &qword_100963670);
  v129(v160, v162);
  (*(v157 + 8))(v161, v158);
  sub_10000CFBC(v159, &qword_100963678);
  return v100;
}

unint64_t sub_10069EB64(uint64_t a1)
{
  sub_10076186C();
  sub_10069EF84(&qword_100960FE0);
  v2 = sub_10076FEAC();

  return sub_10069EBE8(a1, v2);
}

unint64_t sub_10069EBE8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_10076186C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_10069EF84(&qword_100960FE8);
      v16 = sub_10076FF1C();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_10069ED94(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100948C00);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000A5D4(&qword_100948C08);
    v7 = sub_1007715DC();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016E2C(v9, v5, &qword_100948C00);
      result = sub_10069EB64(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_10076186C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 16 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10069EF84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10076186C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_10069EFC8(double a1, double a2)
{
  if (a2 >= a1)
  {
    JUScreenClassGetPortraitWidth();
    if (v4 < a1)
    {
      JUScreenClassGetPortraitWidth();
    }
  }

  else
  {
    JUScreenClassGetLandscapeWidth();
    if (v3 < a1)
    {
      JUScreenClassGetLandscapeWidth();
    }
  }

  return 2.0;
}

id sub_10069F048(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_contentViewController] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_overlayViewController] = 0;
  v3[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_startedAsFlowPreview] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_presenter] = a1;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_objectGraph] = a2;
  v10.receiver = v3;
  v10.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", 0, 0);
  sub_1006A129C(&unk_1009636E0);
  v8 = v7;
  sub_10076576C();

  return v8;
}

void sub_10069F1D4()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, "viewDidLoad");
  sub_100760C9C();
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  v4 = [objc_opt_self() systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_contentViewController];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  v7 = [v1 view];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v6 view];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  [v8 insertSubview:v9 atIndex:0];

LABEL_6:
  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_overlayViewController];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = [v1 view];
  if (!v13)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v24 = v16;
  v25 = v18;
  v26 = v20;
  v27 = v22;
  v28 = 0;
  sub_10076856C();
}

void sub_10069F3F0()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "viewWillLayoutSubviews");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = *&v0[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_contentViewController];
  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = [v11 view];
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  [v12 setFrame:{v4, v6, v8, v10}];

LABEL_5:
  v14 = *&v0[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_overlayViewController];
  if (!v14)
  {
    return;
  }

  v15 = [v14 view];
  if (!v15)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v16 = v15;
  [v15 setFrame:{v4, v6, v8, v10}];
}

void sub_10069F5D4(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_contentViewController;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_contentViewController];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [v4 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = v5;
  [v5 removeFromSuperview];

  v7 = *&v1[v3];
  if (v7)
  {
    [v7 removeFromParentViewController];
    v8 = *&v1[v3];
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

  *&v1[v3] = a1;
  v13 = a1;

  if (!a1)
  {
    return;
  }

  [v1 addChildViewController:v13];
  if ([v1 isViewLoaded])
  {
    v9 = [v1 view];
    if (v9)
    {
      v10 = v9;
      v11 = [v13 view];
      if (v11)
      {
        v12 = v11;
        [v10 insertSubview:v11 atIndex:0];

        goto LABEL_11;
      }

LABEL_17:
      __break(1u);
      return;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_11:
}

uint64_t sub_10069F72C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100766EDC();
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v25 - v7;
  v9 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_10094A890);
  __chkstk_darwin(v12 - 8);
  v14 = v25 - v13;
  v15 = type metadata accessor for FlowDestination();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003F0D4(a2, v28);

  sub_10012062C(v19, v28, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000CFBC(v14, &unk_10094A890);
    return 0;
  }

  sub_10005DAD8(v14, v18);
  sub_10075F5BC();
  sub_10075F5AC();
  v20 = [v25[1] traitCollection];
  sub_1001489F0(v8);

  sub_10005DB58(v11, type metadata accessor for FlowPresentationHints);
  sub_10005DB58(v18, type metadata accessor for FlowDestination);
  v22 = v26;
  v21 = v27;
  (*(v26 + 32))(v5, v8, v27);
  v23 = (*(v22 + 88))(v5, v21);
  result = 1;
  if (v23 != enum case for FlowPresentationContext.presentModal(_:) && v23 != enum case for FlowPresentationContext.presentModalFormSheet(_:) && v23 != enum case for FlowPresentationContext.presentModalPageSheet(_:) && v23 != enum case for FlowPresentationContext.presentModalFullScreen(_:))
  {
    (*(v22 + 8))(v5, v21);
    return 0;
  }

  return result;
}

unint64_t sub_10069FAC4(uint64_t a1, uint64_t a2)
{
  v79 = a2;
  ObjectType = swift_getObjectType();
  v4 = sub_10076F4FC();
  __chkstk_darwin(v4 - 8);
  v77 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100760EFC();
  v75 = *(v6 - 8);
  __chkstk_darwin(v6);
  v76 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v8 - 8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v78 = &v71 - v12;
  __chkstk_darwin(v13);
  v15 = &v71 - v14;
  __chkstk_darwin(v16);
  v73 = &v71 - v17;
  v18 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v18 - 8);
  v20 = &v71 - v19;
  v21 = sub_10000A5D4(&unk_10094A890);
  __chkstk_darwin(v21 - 8);
  v23 = &v71 - v22;
  v24 = type metadata accessor for FlowDestination();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = (&v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = v2;
  if (v2[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_startedAsFlowPreview] == 1)
  {
    v72 = sub_10075F63C();
    v28 = swift_dynamicCastClass();
    if (v28)
    {
      v29 = v28;
      sub_10003F0D4(v79, &v81);
      swift_retain_n();
      sub_10012062C(v29, &v81, v23);
      if ((*(v25 + 48))(v23, 1, v24) == 1)
      {
        sub_10000CFBC(v23, &unk_10094A890);
        if (qword_1009412E8 != -1)
        {
          swift_once();
        }

        v30 = sub_10076FD4C();
        sub_10000A61C(v30, qword_1009A2600);
        sub_10000A5D4(&unk_100942A60);
        sub_10076F33C();
        *(swift_allocObject() + 16) = xmmword_100783C60;
        *(&v82 + 1) = ObjectType;
        *&v81 = v80;
        v31 = v80;
        sub_10076F30C();
        sub_10000CFBC(&v81, &unk_1009434C0);
        sub_10076F27C();
        *(&v82 + 1) = v72;
        *&v81 = v29;

        sub_10076F32C();
        sub_10000CFBC(&v81, &unk_1009434C0);
        sub_10076FBEC();
      }

      else
      {
        sub_10005DAD8(v23, v27);
        v51 = v80;
        v52 = [v80 traitCollection];
        v53 = sub_10075F57C();
        v55 = v54;
        sub_10075F59C();
        v83 = 0;
        v81 = 0u;
        v82 = 0u;
        v56 = sub_10048B0C0(v27, v52, v53, v55, v20, &v81, *&v51[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_objectGraph], 1);

        sub_10000CFBC(&v81, &unk_10094A8A0);
        sub_10000CFBC(v20, &unk_100958150);
        sub_10069F5D4(v56);

        return sub_10005DB58(v27, type metadata accessor for FlowDestination);
      }
    }
  }

  sub_10075F63C();
  v33 = swift_dynamicCastClass();
  if (v33)
  {
    v34 = v33;

    goto LABEL_9;
  }

  sub_10076167C();
  if (!swift_dynamicCastClass())
  {
LABEL_39:
    v68 = *&v80[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_objectGraph];
    v69 = sub_10000A5D4(&unk_1009428E0);
    sub_10076F5AC();
    v70 = *(v69 - 8);
    if ((*(v70 + 48))(v10, 1, v69) != 1)
    {
      sub_100263BF0(a1, 1, v68, v10);

      return (*(v70 + 8))(v10, v69);
    }

    v43 = v10;
    return sub_10000CFBC(v43, &unk_100943200);
  }

  result = sub_10076166C();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

LABEL_38:

    goto LABEL_39;
  }

  v66 = result;
  v67 = sub_10077158C();
  result = v66;
  if (!v67)
  {
    goto LABEL_38;
  }

LABEL_17:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_10077149C();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v44 = swift_dynamicCastClass();
  if (!v44)
  {

    goto LABEL_39;
  }

  v34 = v44;
LABEL_9:

  v35 = v80;
  if ((sub_10069F72C(v34, v79) & 1) == 0)
  {
    (*(v75 + 104))(v76, enum case for NavigationTab.infer(_:), v6);
    sub_10000A5D4(&unk_100942870);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1007841E0;
    *(v45 + 32) = a1;

    sub_10076F4DC();
    sub_10076225C();
    swift_allocObject();
    v46 = sub_10076221C();
    v47 = *&v35[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_objectGraph];
    v48 = sub_10000A5D4(&unk_1009428E0);
    v49 = v78;
    sub_10076F5AC();
    v50 = *(v48 - 8);
    if ((*(v50 + 48))(v49, 1, v48) != 1)
    {
      sub_1002640CC(v46, 1, v47, v49);

      return (*(v50 + 8))(v49, v48);
    }

    v43 = v49;
    return sub_10000CFBC(v43, &unk_100943200);
  }

  v36 = [v35 tabBarController];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 transientViewController];
    if (v38)
    {

      [v37 setTransientViewController:0 animated:0];
      v39 = *&v35[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_objectGraph];
      v40 = sub_10000A5D4(&unk_1009428E0);
      v41 = v73;
      sub_10076F5AC();
      v42 = *(v40 - 8);
      if ((*(v42 + 48))(v41, 1, v40) != 1)
      {
        sub_100263BF0(a1, 1, v39, v41);

        return (*(v42 + 8))(v41, v40);
      }

      v43 = v41;
      return sub_10000CFBC(v43, &unk_100943200);
    }
  }

  v57 = *&v35[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_objectGraph];
  v58 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v59 = *(v58 - 8);
  if ((*(v59 + 48))(v15, 1, v58) == 1)
  {
    sub_10000CFBC(v15, &unk_100943200);
  }

  else
  {
    sub_100263BF0(a1, 1, v57, v15);

    (*(v59 + 8))(v15, v58);
  }

  v60 = [v35 navigationController];
  v61 = [v60 topViewController];

  if (v61)
  {
    sub_10003F040();
    v62 = v35;
    v63 = sub_100770EEC();

    if (v63)
    {
      v64 = [v62 navigationController];
      if (v64)
      {
        v65 = v64;
      }
    }
  }
}

void sub_1006A0728()
{
  v1 = v0;
  v2 = sub_10076DE4C();
  __chkstk_darwin(v2 - 8);
  sub_10076DE3C();
  v3 = objc_allocWithZone(sub_10076DE6C());
  v4 = sub_10076DE5C();
  v5 = OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_overlayViewController;
  v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_overlayViewController];
  sub_10076857C();

  v7 = *&v1[v5];
  *&v1[v5] = v4;
  v8 = v4;

  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];

    sub_10076856C();
  }

  else
  {
    __break(1u);
  }
}

void sub_1006A0880()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_overlayViewController];
  if (v2)
  {
    sub_10076DE6C();
    if (swift_dynamicCastClass())
    {
      v3 = v2;
      sub_10076857C();

      v4 = *&v0[v1];
      *&v0[v1] = 0;

      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];

        sub_10076856C();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1006A0964()
{
  v0 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v0 - 8);
  v46 = &v36 - v1;
  v2 = sub_100760EFC();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v45 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10075F65C();
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100765F6C();
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin(v6);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_100766EDC();
  v8 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076F4FC();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v11 - 8);
  v13 = &v36 - v12;
  v14 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v14 - 8);
  v16 = &v36 - v15;
  v17 = sub_10076C15C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10076DF1C();
  __chkstk_darwin(v21 - 8);
  sub_10076DF0C();
  v36 = sub_10076DF3C();
  v22 = objc_allocWithZone(v36);
  swift_errorRetain();
  v23 = sub_10076DF2C();
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  (*(v18 + 104))(v20, enum case for FlowPage.viewController(_:), v17);
  v24 = sub_10075DB7C();
  (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
  v25 = sub_10076096C();
  (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
  v50 = 0u;
  v51 = 0u;
  sub_10076F4DC();
  (*(v8 + 104))(v37, enum case for FlowPresentationContext.push(_:), v38);
  (*(v40 + 104))(v39, enum case for FlowAnimationBehavior.never(_:), v41);
  (*(v43 + 104))(v42, enum case for FlowOrigin.inapp(_:), v44);
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v26 = sub_10075F5EC();
  *(&v53 + 1) = v36;
  *&v52 = v23;
  v27 = v23;
  v28 = v46;
  v29 = v27;
  sub_10075F58C();
  sub_10000CFBC(&v52, &unk_1009434C0);
  (*(v47 + 104))(v45, enum case for NavigationTab.infer(_:), v48);
  sub_10000A5D4(&unk_100942870);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1007841E0;
  *(v30 + 32) = v26;

  sub_10076F4DC();
  sub_10076225C();
  swift_allocObject();
  v31 = sub_10076221C();
  v32 = *(v49 + OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_objectGraph);
  v33 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v28, 1, v33) == 1)
  {

    return sub_10000CFBC(v28, &unk_100943200);
  }

  else
  {
    sub_1002640CC(v31, 1, v32, v28);

    return (*(v34 + 8))(v28, v33);
  }
}

uint64_t sub_1006A129C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LoadingPageViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1006A12DC()
{
  v0 = sub_100769F0C();
  sub_10000DB18(v0, qword_1009A31E8);
  sub_10000A61C(v0, qword_1009A31E8);
  return sub_100769EFC();
}

uint64_t sub_1006A1328()
{
  v0 = sub_100769E4C();
  sub_10000DB18(v0, qword_1009A3200);
  v1 = sub_10000A61C(v0, qword_1009A3200);
  v2 = enum case for CondensedSearchResultCardLayout.Configuration.appEvent(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

char *sub_1006A13B0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10075FEEC();
  v76 = *(v10 - 8);
  v77 = v10;
  __chkstk_darwin(v10);
  v75 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_10095B400);
  __chkstk_darwin(v12 - 8);
  v74 = &v68 - v13;
  v14 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v14 - 8);
  v73 = &v68 - v15;
  v16 = OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventFormattedDateView;
  *&v4[v16] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v17 = OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_titleLabel;
  sub_1007626BC();
  *&v4[v17] = sub_10076269C();
  v18 = OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_viewButton;
  *&v5[v18] = [objc_opt_self() buttonWithType:0];
  v19 = OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_artworkView;
  if (qword_1009414A0 != -1)
  {
    swift_once();
  }

  v20 = sub_100769F0C();
  sub_10000A61C(v20, qword_1009A31E8);
  sub_100769E6C();
  *&v5[v19] = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, v21, v22}];
  v23 = OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventTapGestureRecognizer;
  *&v5[v23] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v24 = &v5[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventViewTappedAction];
  v25 = type metadata accessor for CondensedAppEventCardView();
  *v24 = 0;
  *(v24 + 1) = 0;
  v79.receiver = v5;
  v79.super_class = v25;
  v26 = objc_msgSendSuper2(&v79, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v30 = v26;
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v70 = OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventFormattedDateView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventFormattedDateView]];
  v31 = OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_titleLabel;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_titleLabel]];
  v72 = OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_artworkView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_artworkView]];
  v71 = OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_viewButton;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_viewButton]];
  v32 = qword_1009414A8;
  v33 = *&v30[v31];
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = sub_100769E4C();
  sub_10000A61C(v34, qword_1009A3200);
  v35 = v73;
  sub_100769E3C();
  v36 = sub_10076D3DC();
  v37 = *(v36 - 8);
  v38 = *(v37 + 56);
  v68 = v36;
  v69 = v38;
  v38(v35, 0, 1, v36);
  sub_1007625DC();

  v39 = v30;
  v40.super.isa = [v39 traitCollection];
  isa = v40.super.isa;
  [*&v30[v31] setNumberOfLines:sub_100769E0C(v40)];

  v42 = v70;
  v43 = *&v30[v70];
  v44 = v43[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style];
  v43[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style] = 7;
  v45 = v43;
  sub_1004B413C(v44);

  *(*&v30[v42] + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_delegate + 8) = &off_10089F810;
  swift_unknownObjectWeakAssign();

  v46 = *&v30[v31];
  *v35 = UIFontTextStyleSubheadline;
  *(v35 + 2) = 0;
  v47 = v68;
  (*(v37 + 104))(v35, enum case for FontUseCase.preferredFont(_:), v68);
  v69(v35, 0, 1, v47);
  v48 = v46;
  v49 = UIFontTextStyleSubheadline;
  sub_1007625DC();

  v50 = v71;
  v51 = *&v30[v71];
  v52 = v51;
  v53 = [v39 traitCollection];
  v54 = v74;
  v55 = ObjectType;
  sub_1006AA284(v51, v74);

  v56 = sub_10077111C();
  (*(*(v56 - 8) + 56))(v54, 0, 1, v56);
  sub_10077114C();

  v57 = sub_1006AA520();
  sub_100010298(v57, v58);

  [*&v30[v50] addTarget:v39 action:"handleTapWithGestureRecognizer:" forControlEvents:64];
  v59 = *&v30[v72];
  v61 = v75;
  v60 = v76;
  v62 = v77;
  (*(v76 + 104))(v75, enum case for CornerStyle.continuous(_:), v77);
  v63 = v59;
  sub_10075FD1C();

  (*(v60 + 8))(v61, v62);
  v64 = OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventTapGestureRecognizer;
  v65 = *&v39[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventTapGestureRecognizer];
  [v65 addTarget:v39 action:"handleTapWithGestureRecognizer:"];

  [v39 addGestureRecognizer:*&v39[v64]];
  sub_10000A5D4(&unk_100945BF0);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_100783DD0;
  *(v66 + 32) = sub_10076E88C();
  *(v66 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(swift_allocObject() + 16) = v55;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v39;
}

id sub_1006A1B8C(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1006AA520();
  sub_1006AA544(v5, v6, a3, &off_10089F820);

  v7 = [a1 traitCollection];
  v8 = *&a1[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_titleLabel];
  if (qword_1009414A8 != -1)
  {
    swift_once();
  }

  v9 = sub_100769E4C();
  sub_10000A61C(v9, qword_1009A3200);
  v10.super.isa = v7;
  [v8 setNumberOfLines:sub_100769E0C(v10)];

  return [a1 setNeedsLayout];
}

id sub_1006A1CE0()
{
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventTapGestureRecognizer] removeTarget:v0 action:0];
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_viewButton] removeTarget:v0 action:"handleTapWithGestureRecognizer:" forControlEvents:0xFFFFFFFFLL];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CondensedAppEventCardView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006A1E7C()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_100942638);
  v123 = *(v2 - 8);
  v124 = v2;
  __chkstk_darwin(v2);
  v122 = &v90 - v3;
  v4 = sub_100769F0C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100769F2C();
  v120 = *(v8 - 8);
  *&v121 = v8;
  __chkstk_darwin(v8);
  v119 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076D1FC();
  v107 = *(v10 - 8);
  v108 = v10;
  __chkstk_darwin(v10);
  v106 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_10076DB6C();
  v128 = *(v126 - 8);
  __chkstk_darwin(v126);
  v103 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_10076DB5C();
  v129 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_10076DB0C();
  v127 = *(v125 - 8);
  __chkstk_darwin(v125);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_10076DBAC();
  v16 = *(v105 - 8);
  __chkstk_darwin(v105);
  v104 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CondensedAppEventCardView();
  v149.receiver = v0;
  v149.super_class = v18;
  objc_msgSendSuper2(&v149, "layoutSubviews");
  sub_10076422C();
  v20 = v19;
  v22 = v21;
  v23 = *&v0[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventFormattedDateView];
  sub_1004B67D8(v146);
  v24 = sub_1004B8E04(v0, v146, v20, v22);
  v26 = v25;
  sub_10005AE58(v146);
  [v23 setFrame:{0.0, 0.0, v24, v26}];
  v27 = [v0 traitCollection];
  v28 = sub_10077071C();

  if (v28)
  {
    v95 = v16;
    if (qword_1009414A0 != -1)
    {
      swift_once();
    }

    v29 = sub_10000A61C(v4, qword_1009A31E8);
    v30 = type metadata accessor for AppPromotionFormattedDateView();
    v148 = &protocol witness table for UIView;
    v147 = v30;
    v146[0] = v23;
    v31 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_titleLabel];
    v32 = sub_1007626BC();
    v145 = &protocol witness table for UILabel;
    v144 = v32;
    v143[0] = v31;
    v33 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_viewButton];
    v34 = sub_100409B3C();
    v142 = &protocol witness table for UIView;
    v141 = v34;
    v140 = v33;
    v35 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_artworkView];
    v138 = sub_10075FD2C();
    v139 = &protocol witness table for UIView;
    v137 = v35;
    sub_10000A5D4(&qword_1009426C0);
    v36 = *(sub_10076DB9C() - 8);
    v99 = *(v36 + 72);
    v37 = *(v36 + 80);
    v94 = v1;
    v38 = (v37 + 32) & ~v37;
    v39 = swift_allocObject();
    v93 = v39;
    *(v39 + 16) = xmmword_100788B20;
    v124 = v39 + v38;
    v40 = v23;
    v41 = v31;
    v42 = v33;
    v43 = v35;
    sub_100769E9C();
    v97 = v29;
    sub_100769EBC();
    v92 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
    v44 = v127;
    v98 = *(v127 + 104);
    v100 = v127 + 104;
    v45 = v15;
    v98(v15);
    v46 = sub_10000A5D4(&unk_100963750);
    v47 = *(v129 + 72);
    v109 = *(v129 + 80);
    v96 = (v109 + 32) & ~v109;
    v122 = v47;
    v123 = 3 * v47;
    v110 = 2 * v47;
    v111 = v46;
    v48 = swift_allocObject();
    v121 = xmmword_100783C60;
    *(v48 + 16) = xmmword_100783C60;
    sub_10076DB4C();
    sub_10076DB2C();
    sub_10076DB3C();
    v131[0] = v48;
    v119 = sub_1006A57D8(&qword_1009426B0, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
    v118 = sub_10000A5D4(&unk_100963760);
    v120 = sub_100016EDC();
    v50 = v101;
    v49 = v102;
    sub_1007712CC();
    v117 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v51 = v128;
    v52 = *(v128 + 104);
    v115 = v128 + 104;
    v116 = v52;
    v53 = v103;
    v54 = v126;
    v52(v103);
    sub_10076DB8C();
    v55 = *(v51 + 8);
    v128 = v51 + 8;
    v114 = v55;
    v55(v53, v54);
    v56 = *(v129 + 8);
    v129 += 8;
    v113 = v56;
    v56(v50, v49);
    v57 = *(v44 + 8);
    v127 = v44 + 8;
    v112 = v57;
    v58 = v125;
    v57(v45, v125);
    sub_1000F00E0(v132);
    sub_10000CD74(v134);
    sub_100769E8C();
    v133 = 0;
    memset(v132, 0, sizeof(v132));
    v91 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
    v59 = v98;
    v98(v45);
    v60 = swift_allocObject();
    *(v60 + 16) = v121;
    sub_10076DB4C();
    sub_10076DB2C();
    sub_10076DB3C();
    v131[0] = v60;
    sub_1007712CC();
    v61 = v126;
    v116(v53, v117, v126);
    v62 = v99;
    sub_10076DB8C();
    v114(v53, v61);
    v113(v50, v49);
    v112(v45, v58);
    sub_1000F00E0(v132);
    sub_10000CD74(v134);
    v90 = 2 * v62;
    v63 = v144;
    v64 = v145;
    v65 = sub_10000CF78(v143, v144);
    v135 = v63;
    v136 = v64[1];
    v66 = sub_10000DB7C(v134);
    (*(*(v63 - 8) + 16))(v66, v65, v63);
    sub_100769E7C();
    sub_100769ECC();
    (v59)(v45, v91, v58);
    v67 = swift_allocObject();
    *(v67 + 16) = v121;
    sub_10076DB4C();
    sub_10076DB2C();
    sub_10076DB3C();
    v130 = v67;
    sub_1007712CC();
    v68 = v126;
    v116(v53, v117, v126);
    v69 = v90;
    sub_10076DB8C();
    v114(v53, v68);
    v113(v50, v49);
    v70 = v125;
    v112(v45, v125);
    sub_1000F00E0(v131);
    sub_10000CD74(v132);
    sub_10000CD74(v134);
    v99 += v69;
    v135 = &type metadata for Double;
    v136 = &protocol witness table for Double;
    v134[0] = 0x4030000000000000;
    sub_100769EAC();
    (v98)(v45, v92, v70);
    v71 = swift_allocObject();
    *(v71 + 16) = v121;
    sub_10076DB4C();
    sub_10076DB2C();
    sub_10076DB3C();
    v131[0] = v71;
    sub_1007712CC();
    v72 = v126;
    v116(v53, v117, v126);
    sub_10076DB8C();
    v114(v53, v72);
    v113(v50, v49);
    v112(v45, v70);
    sub_1000F00E0(v132);
    sub_10000CD74(v134);
    v73 = v104;
    sub_10076DB7C();
    sub_10000CD74(&v137);
    sub_10000CD74(&v140);
    sub_10000CD74(v143);
    sub_10000CD74(v146);
    v75 = v105;
    v74 = v106;
    sub_10076DFCC();
    (*(v107 + 8))(v74, v108);
    return (*(v95 + 8))(v73, v75);
  }

  else
  {
    if (qword_1009414A0 != -1)
    {
      swift_once();
    }

    v77 = sub_10000A61C(v4, qword_1009A31E8);
    (*(v5 + 16))(v7, v77, v4);
    v78 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_artworkView];
    v147 = sub_10075FD2C();
    v148 = sub_1006A57D8(&qword_10094B250, &type metadata accessor for ArtworkView);
    v146[0] = v78;
    v134[0] = v23;
    type metadata accessor for AppPromotionFormattedDateView();
    v79 = v78;
    sub_10076D2DC();
    v80 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_titleLabel];
    v81 = sub_1007626BC();
    v142 = &protocol witness table for UILabel;
    v141 = v81;
    v140 = v80;
    v82 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_viewButton];
    v138 = sub_100409B3C();
    v139 = &protocol witness table for UIButton;
    v137 = v82;
    v83 = v80;
    v84 = v82;
    v85 = v119;
    sub_100769F1C();
    v86 = [v1 traitCollection];
    sub_1006A57D8(&qword_100942640, &type metadata accessor for CondensedSearchResultCardLayout);
    v87 = v122;
    v88 = v121;
    sub_10076D43C();
    swift_getOpaqueTypeConformance2();
    v89 = v124;
    sub_10076E0EC();

    (*(v123 + 8))(v87, v89);
    return (*(v120 + 8))(v85, v88);
  }
}

double sub_1006A2F3C()
{
  v1 = v0;
  v113 = sub_10000A5D4(&qword_100942638);
  v108 = *(v113 - 8);
  __chkstk_darwin(v113);
  v3 = &v79 - v2;
  v107 = sub_100769F2C();
  v4 = *(v107 - 8);
  __chkstk_darwin(v107);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_10076DB6C();
  v116 = *(v114 - 8);
  __chkstk_darwin(v114);
  v90 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_10076DB5C();
  v117 = *(v89 - 8);
  __chkstk_darwin(v89);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_10076DB0C();
  v115 = *(v111 - 8);
  __chkstk_darwin(v111);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100769F0C();
  v109 = *(v12 - 8);
  v110 = v12;
  __chkstk_darwin(v12);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076DBAC();
  v92 = *(v15 - 8);
  v93 = v15;
  __chkstk_darwin(v15);
  v91 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10077071C())
  {
    sub_100769EFC();
    v17 = *&v0[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventFormattedDateView];
    v135 = type metadata accessor for AppPromotionFormattedDateView();
    v136 = &protocol witness table for UIView;
    v134 = v17;
    v18 = *&v0[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_titleLabel];
    v132 = sub_1007626BC();
    v133 = &protocol witness table for UILabel;
    v131[0] = v18;
    v19 = *&v0[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_viewButton];
    v129 = sub_100409B3C();
    v130 = &protocol witness table for UIView;
    v128 = v19;
    v20 = *&v0[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_artworkView];
    v126 = sub_10075FD2C();
    v127 = &protocol witness table for UIView;
    v125 = v20;
    sub_10000A5D4(&qword_1009426C0);
    v21 = *(sub_10076DB9C() - 8);
    v87 = *(v21 + 72);
    v22 = *(v21 + 80);
    v85 = v0;
    v23 = (v22 + 32) & ~v22;
    v24 = swift_allocObject();
    v84 = v24;
    *(v24 + 16) = xmmword_100788B20;
    v113 = v24 + v23;
    v25 = v17;
    v26 = v18;
    v27 = v19;
    v28 = v20;
    v112 = v14;
    sub_100769E9C();
    sub_100769EBC();
    v83 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
    v29 = v115;
    v30 = *(v115 + 104);
    v86 = v115 + 104;
    v94 = v30;
    v30(v11);
    v88 = sub_10000A5D4(&unk_100963750);
    v31 = *(v117 + 72);
    v32 = *(v117 + 80);
    v33 = (v32 + 32) & ~v32;
    v107 = 3 * v31;
    v108 = v32;
    v105 = v31;
    v106 = 2 * v31;
    v34 = swift_allocObject();
    v104 = xmmword_100783C60;
    *(v34 + 16) = xmmword_100783C60;
    sub_10076DB4C();
    sub_10076DB2C();
    sub_10076DB3C();
    v119[0] = v34;
    v103 = sub_1006A57D8(&qword_1009426B0, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
    v102 = sub_10000A5D4(&unk_100963760);
    v96 = sub_100016EDC();
    v35 = v89;
    sub_1007712CC();
    v101 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v36 = v116;
    v37 = *(v116 + 104);
    v99 = v116 + 104;
    v100 = v37;
    v38 = v90;
    v39 = v114;
    v37(v90);
    sub_10076DB8C();
    v95 = *(v36 + 8);
    v116 = v36 + 8;
    v95(v38, v39);
    v40 = *(v117 + 8);
    v117 += 8;
    v98 = v40;
    v40(v9, v35);
    v41 = *(v29 + 8);
    v115 = v29 + 8;
    v97 = v41;
    v42 = v111;
    v41(v11, v111);
    sub_1000F00E0(v120);
    sub_10000CD74(v122);
    sub_100769E8C();
    v121 = 0;
    memset(v120, 0, sizeof(v120));
    v82 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
    v94(v11);
    v81 = v33;
    v43 = swift_allocObject();
    *(v43 + 16) = v104;
    sub_10076DB4C();
    sub_10076DB2C();
    sub_10076DB3C();
    v119[0] = v43;
    sub_1007712CC();
    v44 = v114;
    v100(v38, v101, v114);
    v45 = v87;
    sub_10076DB8C();
    v95(v38, v44);
    v98(v9, v35);
    v97(v11, v42);
    sub_1000F00E0(v120);
    sub_10000CD74(v122);
    v80 = 2 * v45;
    v46 = v132;
    v47 = v133;
    v48 = sub_10000CF78(v131, v132);
    v123 = v46;
    v124 = v47[1];
    v49 = sub_10000DB7C(v122);
    (*(*(v46 - 8) + 16))(v49, v48, v46);
    sub_100769E7C();
    sub_100769ECC();
    v50 = v42;
    (v94)(v11, v82, v42);
    v51 = swift_allocObject();
    *(v51 + 16) = v104;
    sub_10076DB4C();
    sub_10076DB2C();
    sub_10076DB3C();
    v118 = v51;
    sub_1007712CC();
    v52 = v114;
    v100(v38, v101, v114);
    v53 = v80;
    sub_10076DB8C();
    v95(v38, v52);
    v98(v9, v35);
    v97(v11, v50);
    sub_1000F00E0(v119);
    sub_10000CD74(v120);
    sub_10000CD74(v122);
    v87 += v53;
    v123 = &type metadata for Double;
    v124 = &protocol witness table for Double;
    v122[0] = 0x4030000000000000;
    sub_100769EAC();
    (v94)(v11, v83, v50);
    v54 = swift_allocObject();
    *(v54 + 16) = v104;
    sub_10076DB4C();
    sub_10076DB2C();
    sub_10076DB3C();
    v119[0] = v54;
    sub_1007712CC();
    v55 = v114;
    v100(v38, v101, v114);
    sub_10076DB8C();
    v95(v38, v55);
    v98(v9, v35);
    v97(v11, v50);
    sub_1000F00E0(v120);
    sub_10000CD74(v122);
    v56 = v91;
    sub_10076DB7C();
    (*(v109 + 8))(v112, v110);
    sub_10000CD74(&v125);
    sub_10000CD74(&v128);
    sub_10000CD74(v131);
    sub_10000CD74(&v134);
    v57 = [v85 traitCollection];
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1007841E0;
    *(v58 + 32) = v57;
    v59 = v57;
    v60 = sub_10076DEEC();
    v61 = v93;
    sub_10076D2AC();
    v63 = v62;

    (*(v92 + 8))(v56, v61);
  }

  else
  {
    v65 = v109;
    v64 = v110;
    if (qword_1009414A0 != -1)
    {
      swift_once();
    }

    v66 = sub_10000A61C(v64, qword_1009A31E8);
    (*(v65 + 16))(v14, v66, v64);
    v67 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_artworkView];
    v135 = sub_10075FD2C();
    v136 = sub_1006A57D8(&qword_10094B250, &type metadata accessor for ArtworkView);
    v134 = v67;
    v68 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventFormattedDateView];
    v132 = type metadata accessor for AppPromotionFormattedDateView();
    v133 = sub_1006A57D8(&qword_100963778, type metadata accessor for AppPromotionFormattedDateView);
    v131[0] = v68;
    v69 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_titleLabel];
    v129 = sub_1007626BC();
    v130 = &protocol witness table for UILabel;
    v128 = v69;
    v70 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_viewButton];
    v126 = sub_100409B3C();
    v127 = &protocol witness table for UIButton;
    v125 = v70;
    v71 = v67;
    v72 = v68;
    v73 = v69;
    v74 = v70;
    sub_100769F1C();
    sub_1006A57D8(&qword_100942640, &type metadata accessor for CondensedSearchResultCardLayout);
    v75 = v107;
    sub_10076D43C();
    swift_getOpaqueTypeConformance2();
    v76 = v113;
    sub_10076E0FC();
    v63 = v77;
    (*(v108 + 8))(v3, v76);
    (*(v4 + 8))(v6, v75);
  }

  return v63;
}

double sub_1006A3EF0()
{
  v104 = sub_10076DB6C();
  v108 = *(v104 - 8);
  __chkstk_darwin(v104);
  v78 = &v64 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_10076DB5C();
  v109 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = &v64 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10076DB0C();
  v3 = *(v2 - 8);
  v106 = v2;
  v107 = v3;
  __chkstk_darwin(v2);
  v73 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076DBAC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v79 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_10076D1AC();
  v8 = *(v102 - 8);
  __chkstk_darwin(v102);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076997C();
  v103 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076469C();
  __chkstk_darwin(v14 - 8);
  v15 = sub_10076C38C();
  v74 = *(v15 - 8);
  v75 = v15;
  __chkstk_darwin(v15);
  v87 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075EEBC();
  sub_1006A57D8(&qword_100942860, &type metadata accessor for AppEventSearchResult);
  sub_10076332C();
  if (!v120[0])
  {
    return 0.0;
  }

  v101 = v11;
  v86 = v120[0];
  sub_1007632FC();
  if (qword_100940540 != -1)
  {
    swift_once();
  }

  sub_10076C32C();
  sub_10076C2FC();
  swift_getKeyPath();
  sub_10076338C();

  v17 = v120[0];
  if (qword_1009414A0 != -1)
  {
    swift_once();
  }

  v18 = sub_100769F0C();
  v105 = sub_10000A61C(v18, qword_1009A31E8);
  sub_100769E6C();
  v19 = sub_10076DDDC();
  swift_allocObject();
  v85 = sub_10076DDBC();
  if (qword_100940678 != -1)
  {
    swift_once();
  }

  v71 = v6;
  v72 = v5;
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1002ECDCC(&unk_1009A01F0, v17);
  swift_unknownObjectRelease();
  swift_allocObject();
  v84 = sub_10076DDAC();
  sub_10075EE9C();
  sub_10075F1BC();
  v100 = v20;

  if (qword_1009414A8 != -1)
  {
    swift_once();
  }

  v21 = sub_100769E4C();
  sub_10000A61C(v21, qword_1009A3200);
  sub_100769E3C();
  v22 = v102;
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v102);
  v23.super.isa = [v17 traitCollection];
  isa = v23.super.isa;
  sub_10076D19C(v23);

  (*(v8 + 8))(v10, v22);
  v25 = sub_10076C04C();
  v121 = v25;
  v122 = sub_1006A57D8(&qword_100943230, &type metadata accessor for Feature);
  v26 = sub_10000DB7C(v120);
  (*(*(v25 - 8) + 104))(v26, enum case for Feature.measurement_with_labelplaceholder(_:), v25);
  sub_10076C90C();
  sub_10000CD74(v120);
  sub_10076996C();
  sub_10076994C();
  (*(v103 + 8))(v13, v101);
  sub_100769E5C();
  swift_allocObject();
  v27 = sub_10076DDBC();
  v119[3] = v19;
  v119[4] = &protocol witness table for LayoutViewPlaceholder;
  v118[4] = &protocol witness table for LayoutViewPlaceholder;
  v119[0] = v84;
  v118[3] = v19;
  v118[0] = v27;
  v70 = v27;
  v117[4] = &protocol witness table for LayoutViewPlaceholder;
  v117[3] = v19;
  v117[0] = v85;
  sub_10000A5D4(&qword_1009426C0);
  v28 = *(sub_10076DB9C() - 8);
  v83 = *(v28 + 72);
  v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v30 = swift_allocObject();
  v69 = v30;
  *(v30 + 16) = xmmword_100788B20;
  v88 = v30 + v29;

  sub_100769E9C();
  sub_100769EBC();
  v67 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v31 = v107;
  v32 = *(v107 + 104);
  v89 = v107 + 104;
  v90 = v32;
  v68 = v17;
  v33 = v73;
  v32(v73);
  v91 = sub_10000A5D4(&unk_100963750);
  v34 = *(v109 + 72);
  v35 = *(v109 + 80);
  v81 = (v35 + 32) & ~v35;
  v102 = 3 * v34;
  v103 = v35;
  v100 = v34;
  v101 = 2 * v34;
  v36 = swift_allocObject();
  v99 = xmmword_100783C60;
  *(v36 + 16) = xmmword_100783C60;
  sub_10076DB4C();
  sub_10076DB2C();
  sub_10076DB3C();
  v111[0] = v36;
  v97 = sub_1006A57D8(&qword_1009426B0, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
  v96 = sub_10000A5D4(&unk_100963760);
  v98 = sub_100016EDC();
  v37 = v76;
  v38 = v77;
  sub_1007712CC();
  v95 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v39 = v108;
  v40 = *(v108 + 104);
  v93 = v108 + 104;
  v94 = v40;
  v41 = v78;
  v42 = v104;
  v40(v78);
  sub_10076DB8C();
  v80 = *(v39 + 8);
  v108 = v39 + 8;
  v80(v41, v42);
  v82 = *(v109 + 8);
  v109 += 8;
  v82(v37, v38);
  v43 = *(v31 + 8);
  v107 = v31 + 8;
  v92 = v43;
  v43(v33, v106);
  sub_1000F00E0(v112);
  sub_10000CD74(v114);
  sub_100769E8C();
  v113 = 0;
  memset(v112, 0, sizeof(v112));
  v66 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  v90(v33);
  v44 = swift_allocObject();
  *(v44 + 16) = v99;
  sub_10076DB4C();
  sub_10076DB2C();
  sub_10076DB3C();
  v111[0] = v44;
  sub_1007712CC();
  v94(v41, v95, v42);
  v45 = v83;
  sub_10076DB8C();
  v46 = v80;
  v80(v41, v42);
  v82(v37, v38);
  v47 = v106;
  v92(v33, v106);
  sub_1000F00E0(v112);
  sub_10000CD74(v114);
  v65 = 2 * v45;
  v48 = v121;
  v49 = v122;
  v50 = sub_10000CF78(v120, v121);
  v115 = v48;
  v116 = *(v49 + 8);
  v51 = sub_10000DB7C(v114);
  (*(*(v48 - 8) + 16))(v51, v50, v48);
  sub_100769E7C();
  sub_100769ECC();
  (v90)(v33, v66, v47);
  v52 = swift_allocObject();
  *(v52 + 16) = v99;
  sub_10076DB4C();
  sub_10076DB2C();
  sub_10076DB3C();
  v110 = v52;
  sub_1007712CC();
  v53 = v104;
  v94(v41, v95, v104);
  v54 = v65;
  sub_10076DB8C();
  v46(v41, v53);
  v55 = v82;
  v82(v37, v38);
  v56 = v106;
  v92(v33, v106);
  sub_1000F00E0(v111);
  sub_10000CD74(v112);
  sub_10000CD74(v114);
  v83 += v54;
  v115 = &type metadata for Double;
  v116 = &protocol witness table for Double;
  v114[0] = 0x4030000000000000;
  sub_100769EAC();
  (v90)(v33, v67, v56);
  v57 = swift_allocObject();
  *(v57 + 16) = v99;
  sub_10076DB4C();
  sub_10076DB2C();
  sub_10076DB3C();
  v111[0] = v57;
  sub_1007712CC();
  v58 = v104;
  v94(v41, v95, v104);
  sub_10076DB8C();
  v80(v41, v58);
  v55(v37, v38);
  v92(v33, v56);
  sub_1000F00E0(v112);
  sub_10000CD74(v114);
  v59 = v79;
  sub_10076DB7C();
  sub_10000CD74(v117);
  sub_10000CD74(v118);
  sub_10000CD74(v119);
  v60 = v72;
  sub_10076D2AC();
  v62 = v61;
  swift_unknownObjectRelease();

  (*(v74 + 8))(v87, v75);
  sub_10000CD74(v120);
  (*(v71 + 8))(v59, v60);
  return v62;
}

double sub_1006A4F4C()
{
  v46 = sub_100769F0C();
  __chkstk_darwin(v46);
  v51 = &v44 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_100769F2C();
  v56 = *(v1 - 8);
  v57 = v1;
  __chkstk_darwin(v1);
  v54 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_10076DA7C();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D3DC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10076DD3C();
  v8 = *(v50 - 8);
  __chkstk_darwin(v50);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  __chkstk_darwin(v14);
  v47 = &v44 - v15;
  v16 = sub_10076469C();
  __chkstk_darwin(v16 - 8);
  v17 = sub_10076C38C();
  v48 = *(v17 - 8);
  v49 = v17;
  __chkstk_darwin(v17);
  v60 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075EEBC();
  sub_1006A57D8(&qword_100942860, &type metadata accessor for AppEventSearchResult);
  sub_10076332C();
  v59 = v70[0];
  if (!v70[0])
  {
    return 0.0;
  }

  v45 = v5;
  sub_1007632FC();
  if (qword_100940540 != -1)
  {
    swift_once();
  }

  sub_10076C32C();
  sub_10076C2FC();
  swift_getKeyPath();
  sub_10076338C();

  v19 = v70[0];
  swift_getObjectType();
  v44 = [v19 traitCollection];
  v58 = sub_10075EE9C();
  if (qword_1009414A0 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v46, qword_1009A31E8);
  sub_100769E6C();
  v21 = v20;
  v23 = v22;
  if (qword_100940678 != -1)
  {
    swift_once();
  }

  swift_unknownObjectRetain();
  v24 = sub_1002ECDCC(&unk_1009A01F0, v19);
  v26 = v25;
  swift_unknownObjectRelease();
  sub_10076DD2C();
  v27 = v45;
  v46 = v19;
  if (qword_1009414A8 != -1)
  {
    swift_once();
  }

  v28 = sub_100769E4C();
  sub_10000A61C(v28, qword_1009A3200);
  sub_100769E3C();
  sub_10076DCFC();
  v27[1](v7, v4);
  v29 = *(v8 + 8);
  v30 = v50;
  (v29)(v10, v50);
  v45 = v29;
  v31 = v44;
  v32.super.isa = v44;
  sub_100769E0C(v32);
  v33 = v47;
  sub_10076DD1C();
  (v29)(v13, v30);
  sub_10075F1BC();
  (*(v8 + 16))(v13, v33, v30);
  sub_10076DA5C();
  v34 = v52;
  sub_10076DA9C();
  v70[3] = &type metadata for FixedSizedPlaceholder;
  v35 = sub_100016DD8();
  v70[4] = v35;
  *v70 = v24;
  v70[1] = v26;
  v36 = v55;
  v69[3] = v55;
  v69[4] = &protocol witness table for LabelPlaceholder;
  v37 = sub_10000DB7C(v69);
  v38 = v53;
  (*(v53 + 16))(v37, v34, v36);
  v67 = &type metadata for FixedSizedPlaceholder;
  v68 = v35;
  v66 = xmmword_1007B30F0;
  v65[3] = &type metadata for FixedSizedPlaceholder;
  v65[4] = v35;
  v65[0] = v21;
  v65[1] = v23;
  sub_100769EFC();
  sub_10000A570(v65, &v64);
  sub_10000A570(v70, &v63);
  sub_10000A570(v69, &v62);
  sub_10000A570(&v66, &v61);
  v39 = v54;
  sub_100769F1C();
  sub_10000CD74(v65);
  sub_10000CD74(&v66);
  sub_10000CD74(v69);
  sub_10000CD74(v70);
  sub_1006A57D8(&qword_100963770, &type metadata accessor for CondensedSearchResultCardLayout);
  v40 = v57;
  sub_10076E0FC();
  v42 = v41;
  swift_unknownObjectRelease();

  (*(v56 + 8))(v39, v40);
  (*(v38 + 8))(v34, v36);
  (v45)(v33, v30);
  (*(v48 + 8))(v60, v49);
  return v42;
}

uint64_t sub_1006A57D8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1006A5820()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventFormattedDateView;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_titleLabel;
  sub_1007626BC();
  *(v1 + v3) = sub_10076269C();
  v4 = OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_viewButton;
  *(v1 + v4) = [objc_opt_self() buttonWithType:0];
  v5 = OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_artworkView;
  if (qword_1009414A0 != -1)
  {
    swift_once();
  }

  v6 = sub_100769F0C();
  sub_10000A61C(v6, qword_1009A31E8);
  sub_100769E6C();
  *(v1 + v5) = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, v7, v8}];
  v9 = OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventTapGestureRecognizer;
  *(v1 + v9) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v10 = (v1 + OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventViewTappedAction);
  *v10 = 0;
  v10[1] = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1006A59E8()
{
  sub_100016F40(0, &qword_100942F10);
  result = sub_100770D1C();
  byte_1009A3218 = 1;
  qword_1009A3220 = result;
  return result;
}

uint64_t sub_1006A5A38(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = &v4[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_id];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  v12 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_itemType;
  v13 = sub_1007668DC();
  (*(*(v13 - 8) + 56))(&v5[v12], 1, 1, v13);
  v14 = &v5[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_labelMaxWidth];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v5[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_truncationLegibilityThreshold];
  *v15 = 0;
  v15[8] = 1;
  v5[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_allowsTruncation] = 2;
  sub_1007626BC();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_editorsChoiceLabel] = sub_10076269C();
  v16 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_leadingLaurelImageView] = v16;
  v17 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_trailingLaurelImageView] = v17;
  v46.receiver = v5;
  v46.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v46, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v22 = v18;
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v23 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_leadingLaurelImageView;
  v24 = *&v22[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_leadingLaurelImageView];
  sub_10000A5D4(&unk_100942870);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1007841E0;
  *(v25 + 32) = v24;
  v44 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_trailingLaurelImageView;
  v26 = *&v22[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_trailingLaurelImageView];
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1007841E0;
  *(v27 + 32) = v26;
  v28 = *&v22[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_editorsChoiceLabel];
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1007841E0;
  *(v29 + 32) = v28;
  sub_10000A5D4(&qword_1009453C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783C60;
  *(inited + 32) = v25;
  *(inited + 40) = v27;
  *(inited + 48) = v29;
  v31 = v24;
  v32 = v26;
  v33 = v28;
  v34 = sub_1006CDE94(inited);
  swift_setDeallocating();
  sub_10000A5D4(&unk_1009453D0);
  result = swift_arrayDestroy();
  if (v34 >> 62)
  {
    result = sub_10077158C();
    v36 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v36 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v36)
    {
      goto LABEL_10;
    }
  }

  if (v36 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v36; ++i)
  {
    if ((v34 & 0xC000000000000001) != 0)
    {
      v38 = sub_10077149C();
    }

    else
    {
      v38 = *(v34 + 8 * i + 32);
    }

    v39 = v38;
    [v22 addSubview:{v38, v44}];
  }

LABEL_10:

  [*&v22[v23] setSemanticContentAttribute:3];
  v40 = *&v22[v23];
  if (qword_1009414C8 != -1)
  {
    v43 = *&v22[v23];
    swift_once();
    v40 = v43;
  }

  v41 = qword_100963798;
  [v40 setTintColor:{qword_100963798, v44}];
  [*&v22[v45] setSemanticContentAttribute:3];
  [*&v22[v45] setTintColor:v41];
  sub_1006A5EF4();
  sub_10000A5D4(&unk_100945BF0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_100783DD0;
  *(v42 + 32) = sub_10076E88C();
  *(v42 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v22;
}

id sub_1006A5EF4()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_editorsChoiceLabel);
  v8._object = 0x80000001007CEC10;
  v8._countAndFlagsBits = 0xD00000000000001ALL;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1007622EC(v8, v9);
  v2 = sub_10076FF6C();

  [v1 setText:v2];

  if (qword_1009414C8 != -1)
  {
    swift_once();
  }

  [v1 setTextColor:qword_100963798];
  [v1 setNumberOfLines:1];
  sub_10076D84C();
  if (qword_10093F6A8 != -1)
  {
    swift_once();
  }

  v3 = sub_10076715C();
  v4 = sub_10000A61C(v3, qword_10099CE68);
  v7[3] = v3;
  v7[4] = sub_10018CD1C();
  v5 = sub_10000DB7C(v7);
  (*(*(v3 - 8) + 16))(v5, v4, v3);
  sub_1007625FC();
  return [v1 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
}

void sub_1006A6090()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_10077073C();
  if (qword_10093F6A8 != -1)
  {
    swift_once();
  }

  v4 = sub_10076715C();
  sub_10000A61C(v4, qword_10099CE68);
  v5.super.isa = v3;
  v6.super.isa = sub_10076713C(v5).super.isa;
  v7 = [v2 preferredContentSizeCategory];
  v8 = sub_10077084C();

  if (v8)
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  v10 = [objc_opt_self() configurationWithFont:v6.super.isa scale:v9];

  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_leadingLaurelImageView];
  v12 = v10;
  [v11 setPreferredSymbolConfiguration:v12];
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_trailingLaurelImageView] setPreferredSymbolConfiguration:v12];
}

void sub_1006A63A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_10076FF6C();
  v6 = [objc_opt_self() _systemImageNamed:v5];

  *a4 = v6;
}

uint64_t sub_1006A640C(uint64_t a1)
{
  sub_10008B8A4(a1, *(a1 + 24));
  v1 = UIContentSizeCategoryLarge;
  return sub_10076E37C();
}

id sub_1006A6460()
{
  if (qword_1009414B0 != -1)
  {
    swift_once();
  }

  v1 = qword_1009A3220;
  byte_100963790 = byte_1009A3218;
  qword_100963798 = qword_1009A3220;

  return v1;
}

uint64_t sub_1006A64D4()
{
  ObjectType = swift_getObjectType();
  v18 = sub_10076D1FC();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076A9BC();
  __chkstk_darwin(v5 - 8);
  v17 = sub_10076A9CC();
  v6 = *(v17 - 8);
  *&v7 = __chkstk_darwin(v17).n128_u64[0];
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.receiver = v0;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "layoutSubviews", v7);
  v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_leadingLaurelImageView];
  v26 = sub_100016F40(0, &qword_10094A280);
  v27 = &protocol witness table for UIView;
  v24 = &protocol witness table for UIView;
  v25 = v10;
  v11 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_trailingLaurelImageView];
  v23 = v26;
  v22 = v11;
  v12 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_editorsChoiceLabel];
  v20 = sub_1007626BC();
  v21 = &protocol witness table for UILabel;
  v19 = v12;
  v13 = v10;
  v14 = v11;
  v15 = v12;
  sub_10076A9AC();
  sub_10076A97C();
  sub_10076422C();
  sub_10076A99C();
  (*(v2 + 8))(v4, v18);
  return (*(v6 + 8))(v9, v17);
}

double sub_1006A6794()
{
  v1 = sub_10076A9BC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10076A9CC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_leadingLaurelImageView);
  v16 = sub_100016F40(0, &qword_10094A280);
  v17 = &protocol witness table for UIView;
  v15[10] = &protocol witness table for UIView;
  v15[11] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_trailingLaurelImageView);
  v15[9] = v16;
  v15[6] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_editorsChoiceLabel);
  v15[4] = sub_1007626BC();
  v15[5] = &protocol witness table for UILabel;
  v15[1] = v8;
  v9 = v6;
  v10 = v7;
  v11 = v8;
  sub_10076A9AC();
  sub_10076A97C();
  sub_10076A98C();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  return v13;
}

uint64_t type metadata accessor for MetadataRibbonEditorsChoiceView()
{
  result = qword_1009637E8;
  if (!qword_1009637E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006A6AF8()
{
  sub_100038324();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1006A6BC0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_itemType;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &qword_100943318);
}

uint64_t sub_1006A6C28(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_itemType;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &qword_100943318);
  return swift_endAccess();
}

uint64_t sub_1006A6D04(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_labelMaxWidth;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1006A6DD0(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_truncationLegibilityThreshold;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1006A6E90()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1006A6ED4(char a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_allowsTruncation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1006A6F84@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_id;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &qword_100943310);
}

uint64_t sub_1006A6FEC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_id;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &qword_100943310);
  return swift_endAccess();
}

id sub_1006A70E0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_editorsChoiceLabel);
  LOBYTE(v3._countAndFlagsBits) = sub_1007642DC();
  v3._object = 0x80000001007CEC10;
  if (v3._countAndFlagsBits)
  {
    v3._countAndFlagsBits = 0xD00000000000001ALL;
    sub_100769B9C(v3);
  }

  else
  {
    v3._countAndFlagsBits = 0xD00000000000001ALL;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    sub_1007622EC(v3, v15);
  }

  v4 = sub_10076FF6C();

  [v2 setText:v4];

  v5 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_trailingLaurelImageView);
  if (qword_1009414C0 != -1)
  {
    swift_once();
  }

  v6 = qword_100963788;
  v7 = [v5 layer];
  [v7 removeAllAnimations];

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  [v5 setImage:v8];
  v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_leadingLaurelImageView);
  if (qword_1009414B8 != -1)
  {
    swift_once();
  }

  v10 = qword_100963780;
  v11 = [v9 layer];
  [v11 removeAllAnimations];

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  return [v9 setImage:v12];
}

double sub_1006A72A8(uint64_t a1, void *a2)
{
  v77 = a2;
  v64 = a1;
  v2 = sub_10076A9BC();
  __chkstk_darwin(v2 - 8);
  v73 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10076A9CC();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_10076DA2C();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10076D90C();
  v80 = *(v72 - 8);
  __chkstk_darwin(v72);
  v68 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v65 = &v62 - v8;
  __chkstk_darwin(v9);
  v79 = &v62 - v10;
  v63 = sub_10076DA7C();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076DD3C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v62 - v18;
  __chkstk_darwin(v20);
  v22 = &v62 - v21;
  sub_10076DD2C();
  sub_10076D84C();
  if (qword_10093F6A8 != -1)
  {
    swift_once();
  }

  v23 = sub_10076715C();
  v24 = sub_10000A61C(v23, qword_10099CE68);
  v88[3] = v23;
  v88[4] = sub_10018CD1C();
  v25 = sub_10000DB7C(v88);
  (*(*(v23 - 8) + 16))(v25, v24, v23);
  sub_10076DC8C();
  v26 = *(v14 + 8);
  v26(v16, v13);
  sub_10000CD74(v88);
  sub_10076DD1C();
  v78 = v13;
  v67 = v14 + 8;
  v66 = v26;
  v26(v19, v13);
  LOBYTE(v27._countAndFlagsBits) = sub_1007642DC();
  v27._object = 0x80000001007CEC10;
  if (v27._countAndFlagsBits)
  {
    v27._countAndFlagsBits = 0xD00000000000001ALL;
    sub_100769B9C(v27);
  }

  else
  {
    v27._countAndFlagsBits = 0xD00000000000001ALL;
    v89._countAndFlagsBits = 0;
    v89._object = 0xE000000000000000;
    sub_1007622EC(v27, v89);
  }

  v28 = v68;
  v29 = *(v14 + 16);
  v68 = v22;
  v29(v19, v22, v78);
  sub_10076DA5C();
  sub_10076DA9C();
  sub_10076DA4C();
  (*(v62 + 8))(v12, v63);
  v30 = v65;
  sub_10076D8FC();
  v31 = v77;
  v32 = [v77 traitCollection];
  v33.super.isa = sub_10077073C();
  isa = v33.super.isa;
  v35.super.isa = sub_10076713C(v33).super.isa;
  v36 = [v32 preferredContentSizeCategory];
  v37 = sub_10077084C();

  if (v37)
  {
    v38 = 3;
  }

  else
  {
    v38 = 1;
  }

  v39 = [objc_opt_self() configurationWithFont:v35.super.isa scale:v38];

  v40 = v79;
  sub_10076D8EC();

  v41 = v80;
  v42 = v72;
  v65 = *(v80 + 8);
  v64 = v80 + 8;
  (v65)(v30, v72);
  if (qword_1009414B8 != -1)
  {
    swift_once();
  }

  v43 = qword_100963780;
  v44 = *(v41 + 16);
  v80 = v41 + 16;
  v44(v28, v40, v42);
  v45 = v43;
  v46 = v69;
  sub_10076DA3C();
  v47 = [v31 traitCollection];
  sub_10076DA1C();
  v63 = v48;
  v62 = v49;

  v50 = *(v70 + 8);
  v51 = v71;
  v50(v46, v71);
  if (qword_1009414C0 != -1)
  {
    swift_once();
  }

  v52 = qword_100963788;
  v44(v28, v40, v42);
  v53 = v52;
  sub_10076DA3C();
  v54 = [v31 traitCollection];
  sub_10076DA1C();

  v50(v46, v51);
  v55 = sub_10076DDDC();
  swift_allocObject();
  v56 = sub_10076DDAC();
  swift_allocObject();
  v57 = sub_10076DDAC();
  v86 = v55;
  v87 = &protocol witness table for LayoutViewPlaceholder;
  v84 = &protocol witness table for LayoutViewPlaceholder;
  v85 = v56;
  v83 = v55;
  v82 = v57;
  sub_10000A570(v88, v81);

  sub_10076A9AC();
  v58 = v74;
  sub_10076A97C();
  sub_10076A98C();
  v60 = v59;

  (*(v75 + 8))(v58, v76);
  (v65)(v79, v42);
  sub_10000CD74(v88);
  v66(v68, v78);
  return v60;
}

id sub_1006A7CC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_10000A5D4(&qword_100952650);
  __chkstk_darwin(v6 - 8);
  v8 = &ObjectType - v7;
  v9 = sub_10000A5D4(&unk_10095B400);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &ObjectType - v11;
  if (a1)
  {
    v13 = *&v2[OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsView_writeReviewButton];
    v14 = qword_1009415A8;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = qword_1009A3420;
    v16 = sub_10076B8EC();
    sub_100740550(v15, v16, v17);

    v18 = sub_10077111C();
    (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
    sub_10077114C();
    [v13 setHidden:{0, ObjectType}];
    v31 = a1;
    sub_10076B90C();
    sub_10076F64C();
    sub_1006A8164();
    sub_10076F56C();

    v19 = sub_10000A5D4(&qword_100955BD0);
    (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
    v20 = OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsView_writeReviewAction;
    swift_beginAccess();
    sub_1002F0390(v8, &v3[v20]);
    swift_endAccess();
  }

  else
  {
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsView_writeReviewButton] setHidden:{1, v10, ObjectType}];
  }

  if (a2)
  {
    v21 = *&v3[OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsView_supportButton];
    v22 = qword_1009415B0;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = qword_1009A3428;
    v24 = sub_10076B8EC();
    sub_100740550(v23, v24, v25);

    v26 = sub_10077111C();
    (*(*(v26 - 8) + 56))(v12, 0, 1, v26);
    sub_10077114C();
    [v21 setHidden:0];
    v31 = a2;
    sub_10076B90C();
    sub_10076F64C();
    sub_1006A8164();
    sub_10076F56C();

    v27 = sub_10000A5D4(&qword_100955BD0);
    (*(*(v27 - 8) + 56))(v8, 0, 1, v27);
    v28 = OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsView_supportAction;
    swift_beginAccess();
    sub_1002F0390(v8, &v3[v28]);
    swift_endAccess();
  }

  else
  {
    [*&v3[OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsView_supportButton] setHidden:1];
  }

  return [v3 setNeedsLayout];
}

unint64_t sub_1006A8164()
{
  result = qword_100956710;
  if (!qword_100956710)
  {
    sub_10076B90C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100956710);
  }

  return result;
}

uint64_t sub_1006A81BC()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_1009459C0);
  __chkstk_darwin(v2 - 8);
  v4 = v8 - v3;
  sub_10076083C();
  sub_1006A8468();
  result = sub_10076332C();
  if (v8[1])
  {
    sub_10076F64C();
    sub_10076F56C();
    v6 = sub_10000A5D4(&qword_1009459B8);
    (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
    v7 = OBJC_IVAR____TtC20ProductPageExtension30LinkableTextCollectionViewCell_bodyText;
    swift_beginAccess();
    sub_10018718C(v4, v1 + v7);
    swift_endAccess();
    sub_100083C50();

    return sub_1001871FC(v4);
  }

  return result;
}

uint64_t sub_1006A8340@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension30LinkableTextCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_1006A839C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension30LinkableTextCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

unint64_t sub_1006A8468()
{
  result = qword_1009467D0;
  if (!qword_1009467D0)
  {
    sub_10076083C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009467D0);
  }

  return result;
}

uint64_t sub_1006A84C0@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v32 = a3;
  v33 = a2;
  v4 = sub_10076CB8C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&qword_100956760);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - v10;
  v12 = sub_10000A5D4(&qword_100956758);
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v29 - v15;
  a1(v14);
  v17 = sub_1006A91A8(&qword_100956768, &type metadata accessor for ActivityFeedPlatterView);
  sub_10076EE0C();
  (*(v5 + 8))(v7, v4);
  v18 = sub_10076F64C();
  v34 = v4;
  v35 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10076EDDC();
  (*(v9 + 8))(v11, v8);
  v34 = v8;
  v35 = v18;
  v36 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v20 = v32;
  v21 = v30;
  sub_10076EDEC();
  (*(v31 + 8))(v16, v21);
  sub_100760C4C();
  sub_10076FC1C();
  v22 = v34;
  sub_1006A91A8(&qword_10094CE20, &type metadata accessor for ArtworkLoader);
  v23 = sub_10076E92C();
  v24 = (v20 + *(sub_10000A5D4(&qword_100956750) + 36));
  *v24 = v23;
  v24[1] = v22;
  KeyPath = swift_getKeyPath();
  v26 = *(v33 + OBJC_IVAR____TtC20ProductPageExtension22SwiftUIViewHostingCell_flowPreview);
  v27 = (v20 + *(sub_10000A5D4(&qword_100956738) + 36));
  *v27 = KeyPath;
  v27[1] = v26;
}

uint64_t sub_1006A889C@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v31 = a4;
  v32 = a3;
  v27[1] = a2;
  v5 = sub_10000A5D4(&qword_100954FC0);
  __chkstk_darwin(v5);
  v7 = v27 - v6;
  v8 = sub_10000A5D4(&qword_100954FB8);
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v27 - v9;
  v11 = sub_10000A5D4(&qword_100954FB0);
  v29 = *(v11 - 8);
  v30 = v11;
  v12 = __chkstk_darwin(v11);
  v14 = v27 - v13;
  a1(v12);
  v15 = sub_100071820(&qword_100954FC8, &qword_100954FC0);
  sub_10076EE0C();
  sub_10000CFBC(v7, &qword_100954FC0);
  v16 = sub_10076F64C();
  v33 = v5;
  v34 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10076EDDC();
  (*(v28 + 8))(v10, v8);
  v33 = v8;
  v34 = v16;
  v35 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v18 = v30;
  v19 = v31;
  sub_10076EDEC();
  (*(v29 + 8))(v14, v18);
  sub_100760C4C();
  sub_10076FC1C();
  v20 = v33;
  sub_1006A91A8(&qword_10094CE20, &type metadata accessor for ArtworkLoader);
  v21 = sub_10076E92C();
  v22 = (v19 + *(sub_10000A5D4(&qword_100954FA8) + 36));
  *v22 = v21;
  v22[1] = v20;
  KeyPath = swift_getKeyPath();
  v24 = *(v32 + OBJC_IVAR____TtC20ProductPageExtension22SwiftUIViewHostingCell_flowPreview);
  v25 = (v19 + *(sub_10000A5D4(&qword_100954F90) + 36));
  *v25 = KeyPath;
  v25[1] = v24;
}

uint64_t sub_1006A8C4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076EA9C();
  *a1 = result;
  return result;
}

double sub_1006A8CA4(int a1, int a2, int a3, int a4, int a5, id a6, double a7)
{
  v8 = [a6 snapshotPageTraitEnvironment];
  swift_getObjectType();
  v9 = swift_unknownObjectRetain();
  v10 = sub_100582810(v9, a7);
  swift_unknownObjectRelease_n();
  return v10;
}

uint64_t sub_1006A8DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&qword_100956728);
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  v7 = sub_10000A5D4(&qword_100956730);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  __chkstk_darwin(v16);
  v18 = &v25 - v17;
  __chkstk_darwin(v19);
  v21 = &v25 - v20;
  v26 = sub_10076CBBC();
  v25 = *(v26 - 8);
  __chkstk_darwin(v26);
  v23 = &v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076886C();
  sub_10076882C();
  sub_10076885C();
  sub_10076884C();
  sub_10076883C();
  sub_10076881C();
  v34 = v23;
  v35 = v28;
  v36 = a3;
  v37 = v21;
  v38 = v18;
  v39 = v15;
  v40 = v12;
  v41 = v9;
  v29 = sub_100409178;
  v30 = &v33;
  v31 = a3;
  v32 = v28;
  sub_10000A5D4(&qword_100956738);
  sub_100409198();
  sub_10076EC9C();
  sub_10076ECFC();
  v42[3] = v4;
  v42[4] = sub_100071820(&unk_100956790, &qword_100956728);
  sub_10000DB7C(v42);
  sub_10076EC8C();
  (*(v27 + 8))(v6, v4);
  sub_1007707FC();
  sub_10000CFBC(v9, &qword_100956730);
  sub_10000CFBC(v12, &qword_100956730);
  sub_10000CFBC(v15, &qword_100956730);
  sub_10000CFBC(v18, &qword_100956730);
  sub_10000CFBC(v21, &qword_100956730);
  return (*(v25 + 8))(v23, v26);
}

uint64_t sub_1006A91A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006A91F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076EA9C();
  *a1 = result;
  return result;
}

id sub_1006A9248(uint64_t a1, NSString a2)
{
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerLabel];
  result = [v5 text];
  if (!result)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v7 = result;
  v8 = sub_10076FF9C();
  v10 = v9;

  if (!a2)
  {

    goto LABEL_12;
  }

  if (v8 != a1 || v10 != a2)
  {
    v12 = sub_10077167C();

    if (v12)
    {
      return result;
    }

LABEL_10:
    a2 = sub_10076FF6C();
LABEL_12:
    [v5 setText:a2];

    v13 = [v5 text];
    if (v13)
    {
      v14 = v13;
      sub_10076FF9C();
    }

    v15 = sub_10077002C();

    [v5 setHidden:v15 & 1];

    return [v2 setNeedsLayout];
  }
}

uint64_t sub_1006A93FC(void *a1)
{
  v2 = v1;
  sub_10076D63C();
  if (*(v2 + 1) == 1)
  {
    v8 = sub_10076DFFC();
    v9 = &protocol witness table for Resize;
    v4 = sub_10000DB7C(v7);
    sub_1006A95F0(a1, v4);
  }

  else
  {
    sub_10000A570(v2 + 104, v6);
    v8 = sub_10076E04C();
    v9 = &protocol witness table for Margins;
    sub_10000DB7C(v7);
    sub_10076E03C();
  }

  sub_10076D5FC();
  sub_10000CD74(v7);
  sub_1007704BC();
  sub_10000CF78((v2 + 144), *(v2 + 168));
  sub_10076D2DC();
  v6[3] = sub_10076E04C();
  v6[4] = &protocol witness table for Margins;
  sub_10000DB7C(v6);
  sub_10076E03C();
  sub_10076DF9C();
  v8 = sub_10076DFAC();
  v9 = &protocol witness table for Center;
  sub_10000DB7C(v7);
  sub_10076DFBC();
  sub_10076D5FC();
  return sub_10000CD74(v7);
}

uint64_t sub_1006A95F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v44 = a2;
  v41 = sub_10076DFEC();
  v5 = *(v41 - 8);
  __chkstk_darwin(v41);
  v45 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v43 = (&v33 - v8);
  __chkstk_darwin(v9);
  v42 = (&v33 - v10);
  __chkstk_darwin(v11);
  v13 = (&v33 - v12);
  v14 = sub_10076E04C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10076D58C();
  v40 = *(v35 - 8);
  __chkstk_darwin(v35);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076D55C();
  sub_10076D56C();
  sub_100770A3C();
  CGRectGetWidth(v50);
  v20 = [a1 preferredContentSizeCategory];
  sub_10077087C();

  v36 = v3;
  sub_10000A570(v3 + 104, v47);
  v38 = v17;
  sub_10076E03C();
  v46[3] = v14;
  v46[4] = &protocol witness table for Margins;
  v37 = v14;
  v21 = sub_10000DB7C(v46);
  v39 = v15;
  (*(v15 + 16))(v21, v17, v14);
  *v13 = sub_10007C300;
  v13[1] = 0;
  v22 = *(v5 + 104);
  v23 = v41;
  v22(v13, enum case for Resize.Rule.recalculated(_:), v41);
  v24 = enum case for Resize.Rule.unchanged(_:);
  v25 = v42;
  v22(v42, enum case for Resize.Rule.unchanged(_:), v23);
  v26 = v43;
  v22(v43, v24, v23);
  v22(v45, v24, v23);
  v48 = sub_10076DFFC();
  v49 = &protocol witness table for Resize;
  sub_10000DB7C(v47);
  sub_10076E00C();
  v27 = v19;
  v34 = v19;
  sub_10076D56C();
  sub_10000CD74(v47);
  v28 = v35;
  v48 = v35;
  v49 = &protocol witness table for DisjointStack;
  v29 = sub_10000DB7C(v47);
  v30 = v40;
  (*(v40 + 16))(v29, v27, v28);
  v22(v13, v24, v23);
  v31 = *(v36 + 48);
  v25[3] = &type metadata for CGFloat;
  v25[4] = &protocol witness table for CGFloat;
  *v25 = v31;
  v22(v25, enum case for Resize.Rule.replaced(_:), v23);
  v22(v26, v24, v23);
  v22(v45, v24, v23);
  sub_10076E00C();
  (*(v39 + 8))(v38, v37);
  return (*(v30 + 8))(v34, v28);
}

uint64_t sub_1006A9BC8()
{
  v0 = sub_10076D54C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10076D67C();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v3);
  sub_10076D66C();
  v5 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v6 = *(v1 + 104);
  v6(v3, enum case for DisjointStack.EdgePosition.anchored(_:), v0);
  sub_10076D53C();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v3);
  sub_10076D66C();
  v6(v3, v5, v0);
  sub_10076D50C();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v3);
  sub_10076D66C();
  v6(v3, v5, v0);
  sub_10076D4FC();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v3);
  sub_10076D66C();
  v6(v3, v5, v0);
  return sub_10076D51C();
}

uint64_t sub_1006A9D70()
{
  v0 = sub_10076D54C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4[3] = &type metadata for Double;
  v4[4] = &protocol witness table for Double;
  *v4 = 0;
  v5 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v6 = *(v1 + 104);
  (v6)(v4, enum case for DisjointStack.EdgePosition.anchored(_:), v0, v2);
  sub_10076D4FC();
  v4[3] = &type metadata for Double;
  v4[4] = &protocol witness table for Double;
  *v4 = 0;
  v6(v4, v5, v0);
  return sub_10076D50C();
}

uint64_t sub_1006A9E94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_1006A9EDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1006A9F58(void *a1)
{
  v2 = sub_10076D65C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006A93FC(a1);
  sub_10076E0FC();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_1006AA090(void *a1)
{
  v2 = sub_10076D65C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006A93FC(a1);
  sub_10076E0EC();
  return (*(v3 + 8))(v5, v2);
}

__n128 sub_1006AA1B8@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1006AA1CC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[64])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1006AA220(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1006AA284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100770F9C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_10095B400);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  if (!a1)
  {
    v13 = sub_10077111C();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
    goto LABEL_5;
  }

  sub_10077113C();
  v11 = sub_10077111C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_5:
    sub_10014D314(v10);
    sub_10077108C();
    goto LABEL_6;
  }

  (*(v12 + 32))(a2, v10, v11);
LABEL_6:
  (*(v5 + 104))(v7, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v4);
  sub_100770FAC();
  v14 = objc_opt_self();
  v15 = [v14 systemBlueColor];
  sub_10077104C();
  sub_1000325F0();
  v16 = [v14 whiteColor];
  v17.super.isa = [v14 tertiarySystemGroupedBackgroundColor];
  v18.super.isa = v16;
  sub_100770DEC(v18, v17);
  sub_10077103C();
  return sub_100770FEC();
}

uint64_t sub_1006AA520()
{
  v1._object = 0x80000001007F52A0;
  v1._countAndFlagsBits = 0xD000000000000016;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  return sub_1007622EC(v1, v2);
}

uint64_t sub_1006AA544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50[1] = a1;
  v7 = sub_10000A5D4(&qword_100942698);
  __chkstk_darwin(v7 - 8);
  v50[0] = v50 - v8;
  v56 = sub_10076D1AC();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076D3DC();
  v60 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v51 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v59 = v50 - v14;
  v15 = sub_10075D9EC();
  __chkstk_darwin(v15 - 8);
  v16 = sub_10075D99C();
  v57 = *(v16 - 8);
  v58 = v16;
  __chkstk_darwin(v16);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000A5D4(&unk_10095B400);
  v20 = __chkstk_darwin(v19 - 8);
  v53 = v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v50 - v22;
  v24 = *(a4 + 16);
  v61 = a3;
  v62 = a4;
  v25 = a4;
  v26 = v4;
  v52 = v24;
  v27 = v24(a3, v25);
  sub_10077113C();

  sub_10075D9DC();
  sub_10075D9AC();
  v63 = v26;
  v28 = [v26 traitCollection];
  v29 = sub_1007700AC();
  v55 = v18;
  if (v28 && (sub_10077071C() & 1) != 0)
  {
    if (v29 < 9)
    {
LABEL_4:
      v30 = v60;
      if (qword_100940E30 != -1)
      {
        swift_once();
      }

      v31 = qword_1009A1888;
      goto LABEL_11;
    }
  }

  else if (v29 <= 6)
  {
    goto LABEL_4;
  }

  v30 = v60;
  if (qword_100940E38 != -1)
  {
    swift_once();
  }

  v31 = qword_1009A18A0;
LABEL_11:
  v32 = sub_10000A61C(v11, v31);
  v33 = *(v30 + 16);
  v34 = v51;
  v33(v51, v32, v11);

  v35 = v59;
  (*(v30 + 32))(v59, v34, v11);
  v33(v10, v35, v11);
  v36 = v54;
  v37 = v56;
  (*(v54 + 104))(v10, enum case for FontSource.useCase(_:), v56);
  v38.super.isa = [v63 traitCollection];
  isa = v38.super.isa;
  v40 = sub_10076D19C(v38).super.isa;

  (*(v36 + 8))(v10, v37);
  v64 = v40;
  sub_100016BD0();
  v41 = v40;
  v42 = v55;
  sub_10075D9BC();
  v43 = sub_10077111C();
  v44 = (*(*(v43 - 8) + 48))(v23, 1, v43);
  v46 = v57;
  v45 = v58;
  if (!v44)
  {
    v47 = v50[0];
    (*(v57 + 16))(v50[0], v42, v58);
    (*(v46 + 56))(v47, 0, 1, v45);
    sub_10077101C();
  }

  v48 = v52(v61, v62);
  sub_10014D2A4(v23, v53);
  sub_10077114C();

  (*(v30 + 8))(v35, v11);
  (*(v46 + 8))(v42, v45);
  return sub_10014D314(v23);
}

void sub_1006AAC1C(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v12 = sub_10076B5BC();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a5 bounds];
  [a5 safeAreaInsets];
  sub_100770ACC();
  if ((a2 & 1) == 0)
  {
    v17 = sub_10041329C();
    if (v17)
    {
      v19 = v17;
      v20 = v18;
      swift_getObjectType();
      [a4 pageMarginInsets];
      (*(v20 + 32))(0, a4, v19, v20, v21);
      v22 = [a4 traitCollection];
      LOBYTE(v19) = (*(*v6 + 696))(a1, v22);

      if (v19)
      {
        v23 = sub_1006B6510(a1, a3, a4);
        (*(v13 + 16))(v16, a1, v12);
        v24 = (*(v13 + 88))(v16, v12);
        if (v24 != enum case for Shelf.ContentType.annotation(_:) && v24 != enum case for Shelf.ContentType.productCapability(_:) && v24 != enum case for Shelf.ContentType.productPageLink(_:) && v24 != enum case for Shelf.ContentType.privacyType(_:))
        {
          (*(v13 + 8))(v16, v12);
          PageTraitEnvironment.pageColumnMargin.getter();
          if (!__OFSUB__(v23, 1))
          {
            return;
          }

LABEL_13:
          __break(1u);
          return;
        }

        if (__OFSUB__(v23, 1))
        {
          __break(1u);
          goto LABEL_13;
        }
      }
    }
  }
}

double sub_1006AAF18(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v35 = a4;
  LODWORD(v33) = a3;
  v31 = *v4;
  v5 = v31;
  v32 = a2;
  v6 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_10076B5BC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  v16 = *(v5 + 80);
  v17 = sub_100761B4C();
  sub_10076B5CC();
  v34 = v16;
  if (v33)
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    v18 = 0;
    v19 = v35;
  }

  else
  {
    v33 = v17;
    sub_100761A7C();
    (*(v10 + 56))(v8, 0, 1, v9);
    sub_100761B5C();
    if (v20)
    {

      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    v19 = v35;
  }

  (*(v10 + 16))(v12, v15, v9);
  v21 = (*(v10 + 88))(v12, v9);
  if (v21 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    v22 = &off_1008A1710;
  }

  else
  {
    if (v21 != enum case for Shelf.ContentType.informationRibbon(_:))
    {
      (*(v10 + 8))(v12, v9);
      goto LABEL_14;
    }

    type metadata accessor for InformationRibbonCollectionViewCell();
    v22 = &off_100891580;
  }

  v23 = (v22[1])();
  if ((v24 & 1) == 0)
  {
LABEL_17:
    v28 = *&v23;

    v27 = v28;
    goto LABEL_18;
  }

LABEL_14:
  if (sub_10041329C())
  {
    v23 = (*(v25 + 40))(v8, v18, v19);
    if ((v26 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v27 = sub_1006BACCC(v19);

LABEL_18:
  sub_10000CFBC(v8, &unk_1009568A0);
  (*(v10 + 8))(v15, v9);
  return v27;
}

uint64_t sub_1006AB314@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v205 = a2;
  v206 = a3;
  v198 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v198);
  v182 = &v167 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v189 = &v167 - v6;
  v204 = sub_100763BBC();
  v197 = *(v204 - 8);
  __chkstk_darwin(v204);
  v194 = &v167 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v203 = &v167 - v9;
  v10 = sub_10000A5D4(&qword_100949710);
  __chkstk_darwin(v10 - 8);
  v193 = &v167 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v192 = &v167 - v13;
  __chkstk_darwin(v14);
  v202 = &v167 - v15;
  __chkstk_darwin(v16);
  v201 = &v167 - v17;
  v18 = sub_10000A5D4(&qword_100949718);
  __chkstk_darwin(v18 - 8);
  v181 = &v167 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v180 = &v167 - v21;
  __chkstk_darwin(v22);
  v188 = &v167 - v23;
  __chkstk_darwin(v24);
  v187 = &v167 - v25;
  v26 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v195 = *(v26 - 8);
  v196 = v26;
  __chkstk_darwin(v26);
  v179 = &v167 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v178 = &v167 - v29;
  __chkstk_darwin(v30);
  v177 = &v167 - v31;
  __chkstk_darwin(v32);
  v191 = (&v167 - v33);
  __chkstk_darwin(v34);
  v186 = &v167 - v35;
  __chkstk_darwin(v36);
  v185 = &v167 - v37;
  __chkstk_darwin(v38);
  v184 = &v167 - v39;
  __chkstk_darwin(v40);
  v200 = (&v167 - v41);
  v42 = sub_10000A5D4(&unk_10094BB80);
  __chkstk_darwin(v42 - 8);
  v169 = &v167 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v172 = &v167 - v45;
  __chkstk_darwin(v46);
  v171 = &v167 - v47;
  __chkstk_darwin(v48);
  v174 = &v167 - v49;
  __chkstk_darwin(v50);
  v190 = &v167 - v51;
  __chkstk_darwin(v52);
  v168 = &v167 - v53;
  __chkstk_darwin(v54);
  v170 = &v167 - v55;
  __chkstk_darwin(v56);
  v173 = &v167 - v57;
  __chkstk_darwin(v58);
  v176 = &v167 - v59;
  __chkstk_darwin(v60);
  v175 = &v167 - v61;
  __chkstk_darwin(v62);
  v199 = &v167 - v63;
  v64 = sub_1007621EC();
  v65 = *(v64 - 8);
  __chkstk_darwin(v64);
  v67 = &v167 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v68);
  v70 = &v167 - v69;
  v71 = sub_100761A5C();
  v72 = 0;
  if (v71)
  {
    v72 = sub_100761B4C();
  }

  v207 = v72;
  sub_100761B6C();
  v74 = v73;
  if (v73)
  {
  }

  v183 = v74;
  sub_100761B7C();
  v76 = v75;
  if (v75)
  {
  }

  sub_100761A6C();
  (*(v65 + 104))(v67, enum case for ShelfBackground.interactive(_:), v64);
  v77 = sub_1007621DC();
  v78 = *(v65 + 8);
  v78(v67, v64);
  v78(v70, v64);
  v79 = v205;
  v80 = sub_1006B2104(a1, v205);
  v81 = sub_1006B1EE0(a1, v79);
  if (v77)
  {
    sub_1005706B8(v76 != 0, v206);
  }

  v83 = v76;
  v167 = v76;
  if (v80)
  {
    if (v207)
    {

      v84 = sub_10076B77C();

      v85 = v184;
      v86 = v199;
      if (v84)
      {
        sub_10076035C();

        v87 = 0;
      }

      else
      {
        v87 = 1;
      }
    }

    else
    {
      v87 = 1;
      v85 = v184;
      v86 = v199;
    }

    v91 = sub_10076034C();
    v92 = *(v91 - 8);
    (*(v92 + 56))(v86, v87, 1, v91);
    v93 = sub_100763BAC();
    v194 = *(v93 - 1);
    (*(v194 + 7))(v201, 1, 1, v93);
    v205 = v93;
    if (v83)
    {
      v94 = (v92 + 48);
      v95 = v86;
      if (v80 == 1)
      {
        v96 = v175;
        sub_100016E2C(v95, v175, &unk_10094BB80);
        if ((*v94)(v96, 1, v91) == 1)
        {
          sub_10000CFBC(v96, &unk_10094BB80);
          v97 = 0;
        }

        else
        {
          v97 = sub_1007602EC();
          (*(v92 + 8))(v96, v91);
        }

        v107 = v196;
        v108 = v187;
        sub_100286F40(v97, v200);

        if (qword_10093FC98 != -1)
        {
          swift_once();
        }

        v109 = qword_10099E078;
      }

      else
      {
        v101 = v176;
        sub_100016E2C(v95, v176, &unk_10094BB80);
        if ((*v94)(v101, 1, v91) == 1)
        {
          sub_10000CFBC(v101, &unk_10094BB80);
          v102 = 0;
        }

        else
        {
          v102 = sub_1007602EC();
          (*(v92 + 8))(v101, v91);
        }

        v107 = v196;
        v108 = v187;
        sub_100286F40(v102, v200);

        if (qword_10093FC88 != -1)
        {
          swift_once();
        }

        v109 = qword_10099E048;
      }

      v110 = sub_10000A61C(v107, v109);
      sub_10011BA50(v110, v85);
      if (qword_10093FC48 != -1)
      {
        swift_once();
      }

      v111 = 0;
      v112 = qword_10099DF88;
      v113 = v108;
    }

    else
    {
      if (v80 == 1)
      {
        v98 = v86;
        v99 = v173;
        sub_100016E2C(v98, v173, &unk_10094BB80);
        if ((*(v92 + 48))(v99, 1, v91) == 1)
        {
          sub_10000CFBC(v99, &unk_10094BB80);
          v100 = 0;
        }

        else
        {
          v100 = sub_1007602EC();
          (*(v92 + 8))(v99, v91);
        }

        v107 = v196;
        v108 = v187;
        sub_100286F40(v100, v200);

        if (qword_10093FC90 != -1)
        {
          swift_once();
        }

        v111 = 1;
        v112 = qword_10099E060;
      }

      else
      {
        v103 = (v92 + 48);
        if (v183)
        {
          v104 = v86;
          v105 = v170;
          sub_100016E2C(v104, v170, &unk_10094BB80);
          if ((*v103)(v105, 1, v91) == 1)
          {
            sub_10000CFBC(v105, &unk_10094BB80);
            v106 = 0;
          }

          else
          {
            v106 = sub_1007602EC();
            (*(v92 + 8))(v105, v91);
          }

          v107 = v196;
          v108 = v187;
          sub_100286F48(v106, v200);

          if (qword_10093FC80 != -1)
          {
            swift_once();
          }

          v111 = 1;
          v112 = qword_10099E030;
        }

        else
        {
          v130 = v86;
          v131 = v168;
          sub_100016E2C(v130, v168, &unk_10094BB80);
          if ((*v103)(v131, 1, v91) == 1)
          {
            sub_10000CFBC(v131, &unk_10094BB80);
            v132 = 0;
          }

          else
          {
            v132 = sub_1007602EC();
            (*(v92 + 8))(v131, v91);
          }

          v107 = v196;
          v108 = v187;
          sub_100286F40(v132, v200);

          if (qword_10093FC78 != -1)
          {
            swift_once();
          }

          v111 = 1;
          v112 = qword_10099E018;
        }
      }

      v113 = v85;
    }

    LODWORD(v196) = v83 != 0;
    v152 = sub_10000A61C(v107, v112);
    sub_10011BA50(v152, v113);
    (*(v195 + 56))(v108, v111, 1, v107);
    v153 = v200;
    v154 = v185;
    sub_10011BA50(v200, v185);
    v155 = v186;
    sub_10011BA50(v85, v186);
    v156 = v188;
    sub_100016E2C(v108, v188, &qword_100949718);
    v157 = v201;
    sub_100016E2C(v201, v202, &qword_100949710);
    v158 = v197;
    v159 = v204;
    (*(v197 + 104))(v203, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v204);
    sub_100016F40(0, &qword_100942F10);
    v195 = sub_100770CDC();

    sub_10000CFBC(v157, &qword_100949710);
    sub_10000CFBC(v108, &qword_100949718);
    sub_10013B184(v85, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10013B184(v153, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10000CFBC(v199, &unk_10094BB80);
    v160 = v198;
    v161 = *(v198 + 32);
    v162 = v189;
    sub_10011BB10(v154, v189, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10011BB10(v155, v162 + v160[5], type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_100023AD0(v156, v162 + v160[6], &qword_100949718);
    *(v162 + v160[7]) = 0;
    *(v162 + v161) = 0;
    *(v162 + v160[9]) = v196;
    *(v162 + v160[14]) = 0x4030000000000000;
    *(v162 + v160[12]) = 0;
    *(v162 + v160[13]) = v195;
    v163 = v202;
    (*(v158 + 32))(v162 + v160[11], v203, v159);
    v164 = v194;
    v165 = v205;
    if ((*(v194 + 6))(v163, 1, v205) == 1)
    {
      sub_10000CFBC(v163, &qword_100949710);
      if (v167)
      {
        v166 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
      }

      else
      {
        v166 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
      }

      (*(v164 + 13))(v162 + v160[10], *v166, v165);
    }

    else
    {
      (*(v164 + 4))(v162 + v160[10], v163, v165);
    }

    v151 = v162;
    return sub_10011BB10(v151, v206, type metadata accessor for TitleHeaderView.Style);
  }

  LODWORD(v205) = v81;
  if (v207)
  {

    v88 = sub_10076B77C();

    v89 = v190;
    if (v88)
    {
      sub_10076035C();

      v90 = 0;
    }

    else
    {
      v90 = 1;
    }
  }

  else
  {
    v90 = 1;
    v89 = v190;
  }

  v114 = sub_10076034C();
  v115 = *(v114 - 8);
  (*(v115 + 56))(v89, v90, 1, v114);
  v116 = sub_100763BAC();
  v202 = *(v116 - 8);
  (*(v202 + 56))(v192, 1, 1, v116);
  v117 = (v115 + 48);
  v203 = v116;
  if (v183)
  {
    if (v83)
    {
      v118 = v174;
      sub_100016E2C(v89, v174, &unk_10094BB80);
      if ((*v117)(v118, 1, v114) == 1)
      {
        sub_10000CFBC(v118, &unk_10094BB80);
        v119 = 0;
      }

      else
      {
        v119 = sub_1007602EC();
        (*(v115 + 8))(v118, v114);
      }

      v124 = v196;
      v125 = v180;
      v126 = v177;
      sub_100286F40(v119, v191);

      if (qword_10093FC70 != -1)
      {
        swift_once();
      }

      v127 = qword_10099E000;
LABEL_68:
      v133 = sub_10000A61C(v124, v127);
      sub_10011BA50(v133, v126);
      if (qword_10093FC48 != -1)
      {
        swift_once();
      }

      v134 = 0;
      v135 = qword_10099DF88;
      v136 = v125;
      goto LABEL_84;
    }

    v122 = v171;
    sub_100016E2C(v89, v171, &unk_10094BB80);
    if ((*v117)(v122, 1, v114) == 1)
    {
      sub_10000CFBC(v122, &unk_10094BB80);
      v123 = 0;
    }

    else
    {
      v123 = sub_1007602EC();
      (*(v115 + 8))(v122, v114);
    }

    v124 = v196;
    v125 = v180;
    v126 = v177;
    sub_100286F40(v123, v191);

    if (qword_10093FC58 != -1)
    {
      swift_once();
    }

    v134 = 1;
    v135 = qword_10099DFB8;
  }

  else
  {
    if (v83)
    {
      v120 = v172;
      sub_100016E2C(v89, v172, &unk_10094BB80);
      if ((*v117)(v120, 1, v114) == 1)
      {
        sub_10000CFBC(v120, &unk_10094BB80);
        v121 = 0;
      }

      else
      {
        v121 = sub_1007602EC();
        (*(v115 + 8))(v120, v114);
      }

      v124 = v196;
      v125 = v180;
      v126 = v177;
      sub_100286F40(v121, v191);

      if (qword_10093FC68 != -1)
      {
        swift_once();
      }

      v127 = qword_10099DFE8;
      goto LABEL_68;
    }

    v128 = v169;
    sub_100016E2C(v89, v169, &unk_10094BB80);
    if ((*v117)(v128, 1, v114) == 1)
    {
      sub_10000CFBC(v128, &unk_10094BB80);
      v129 = 0;
    }

    else
    {
      v129 = sub_1007602EC();
      (*(v115 + 8))(v128, v114);
    }

    v124 = v196;
    v125 = v180;
    v126 = v177;
    sub_100286F40(v129, v191);

    if (qword_10093FC50 != -1)
    {
      swift_once();
    }

    v134 = 1;
    v135 = qword_10099DFA0;
  }

  v136 = v126;
LABEL_84:
  LODWORD(v201) = v83 != 0;
  v137 = sub_10000A61C(v124, v135);
  sub_10011BA50(v137, v136);
  (*(v195 + 56))(v125, v134, 1, v124);
  v138 = v191;
  v139 = v178;
  sub_10011BA50(v191, v178);
  v140 = v179;
  sub_10011BA50(v126, v179);
  v141 = v181;
  sub_100016E2C(v125, v181, &qword_100949718);
  v142 = v192;
  sub_100016E2C(v192, v193, &qword_100949710);
  v143 = v197;
  (*(v197 + 104))(v194, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v204);
  sub_100016F40(0, &qword_100942F10);
  v200 = sub_100770CDC();

  sub_10000CFBC(v142, &qword_100949710);
  sub_10000CFBC(v125, &qword_100949718);
  sub_10013B184(v126, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10013B184(v138, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10000CFBC(v190, &unk_10094BB80);
  v144 = v198;
  v145 = *(v198 + 32);
  v146 = v182;
  sub_10011BB10(v139, v182, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10011BB10(v140, v146 + v144[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100023AD0(v141, v146 + v144[6], &qword_100949718);
  *(v146 + v144[7]) = v205 & 1;
  *(v146 + v145) = 0;
  *(v146 + v144[9]) = v201;
  *(v146 + v144[14]) = 0x4030000000000000;
  *(v146 + v144[12]) = 0;
  *(v146 + v144[13]) = v200;
  (*(v143 + 32))(v146 + v144[11], v194, v204);
  v147 = v193;
  v149 = v202;
  v148 = v203;
  if ((*(v202 + 48))(v193, 1, v203) == 1)
  {
    sub_10000CFBC(v147, &qword_100949710);
    if (v167)
    {
      v150 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
    }

    else
    {
      v150 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
    }

    (*(v149 + 104))(v146 + v144[10], *v150, v148);
  }

  else
  {
    (*(v149 + 32))(v146 + v144[10], v147, v148);
  }

  v151 = v146;
  return sub_10011BB10(v151, v206, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_1006ACC6C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();

  return v0;
}

void sub_1006ACCC4(void *a1)
{
  v3 = sub_10075DFDC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  *(v1 + 80) = 0;
  if (a1)
  {
    v28 = a1;
    v13 = [v28 numberOfSections];
    v14 = sub_100761A9C();
    if (v13 < v14)
    {
      v15 = v14;
      if (__OFSUB__(v14, v13))
      {
        __break(1u);
        goto LABEL_13;
      }

      if (v14 - v13 >= 1)
      {
        v27 = v4;
        sub_1006BCDF0(&qword_10094E190, &type metadata accessor for IndexSet);
        sub_1007712BC();
        do
        {
          aBlock[6] = v13;
          sub_10077126C();
          ++v13;
        }

        while (v15 != v13);
        v16 = v27;
        v17 = *(v27 + 32);
        v17(v12, v9, v3);
        v18 = objc_opt_self();
        (*(v16 + 16))(v6, v12, v3);
        v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
        v20 = swift_allocObject();
        *(v20 + 16) = v28;
        v17((v20 + v19), v6, v3);
        v21 = swift_allocObject();
        *(v21 + 16) = sub_1006BB82C;
        *(v21 + 24) = v20;
        aBlock[4] = sub_1000349FC;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1001C5148;
        aBlock[3] = &unk_10089FBE8;
        v22 = _Block_copy(aBlock);
        v23 = v28;

        [v18 performWithoutAnimation:v22];
        _Block_release(v22);

        (*(v16 + 8))(v12, v3);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return;
        }

LABEL_13:
        __break(1u);
        return;
      }
    }

    v25 = v28;
  }
}

uint64_t sub_1006AD0A8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v48 = a4;
  v49 = a2;
  v50 = a3;
  v5 = sub_10076B5BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v47 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v44 - v9;
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v14 = 0;
  if (sub_100761A4C())
  {
    return v14;
  }

  sub_100761A7C();
  v44 = a1;
  v15 = sub_100761A3C();
  v16 = *(v6 + 16);
  v16(v10, v13, v5);
  v45 = v5;
  v46 = v6;
  v17 = *(v6 + 88);
  v18 = v17(v10, v5);
  v19 = v18 == enum case for Shelf.ContentType.smallLockup(_:) || v18 == enum case for Shelf.ContentType.mediumLockup(_:);
  v20 = v49;
  if (v19)
  {
    goto LABEL_7;
  }

  if (v18 == enum case for Shelf.ContentType.largeLockup(_:))
  {
    goto LABEL_10;
  }

  v28 = v18 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v18 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:);
  if (v28 || v18 == enum case for Shelf.ContentType.action(_:))
  {
LABEL_7:
    if ((v15 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_10;
  }

  if (v18 != enum case for Shelf.ContentType.ribbonBar(_:))
  {
    if (v18 == enum case for Shelf.ContentType.editorialCard(_:) || v18 == enum case for Shelf.ContentType.videoCard(_:))
    {
      goto LABEL_7;
    }

    if (v18 != enum case for Shelf.ContentType.brick(_:) && v18 != enum case for Shelf.ContentType.categoryBrick(_:))
    {
      if (v18 == enum case for Shelf.ContentType.reviews(_:) || v18 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v18 == enum case for Shelf.ContentType.framedVideo(_:) || v18 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v18 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v18 == enum case for Shelf.ContentType.smallBreakout(_:))
      {
        goto LABEL_7;
      }

      if (v18 != enum case for Shelf.ContentType.editorialStoryCard(_:))
      {
        if (v18 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v18 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v18 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v18 == enum case for Shelf.ContentType.posterLockup(_:) || v18 == enum case for Shelf.ContentType.smallContactCard(_:))
        {
          goto LABEL_7;
        }

        if (v18 != enum case for Shelf.ContentType.informationRibbon(_:))
        {
          if (v18 != enum case for Shelf.ContentType.appPromotion(_:))
          {
            (*(v46 + 8))(v10, v45);
            goto LABEL_41;
          }

          goto LABEL_7;
        }
      }
    }
  }

LABEL_10:
  v21 = sub_10041329C();
  if (v21)
  {
    v23 = v44;
    v24 = v50;
    v25 = sub_1006B6E3C(v44, v20, v21, v22, v50, v48);
    v27 = v45;
    v26 = v46;
    goto LABEL_46;
  }

LABEL_41:
  v31 = v47;
  v27 = v45;
  v16(v47, v13, v45);
  v32 = v17(v31, v27);
  if (v32 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    v33 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    v34 = &off_1008A1710;
    v26 = v46;
LABEL_45:
    v23 = v44;
    [v20 bounds];
    v35 = v34;
    v24 = v50;
    v25 = sub_1006B7158(v23, v36, v37, v13, v33, v35, v50, v48);
    goto LABEL_46;
  }

  v26 = v46;
  if (v32 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v33 = type metadata accessor for InformationRibbonCollectionViewCell();
    v34 = &off_100891580;
    goto LABEL_45;
  }

  v41 = *(v46 + 8);
  v41(v31, v27);
  v42 = sub_10041329C();
  v23 = v44;
  if (v42)
  {
    sub_1006B74B0(v44, v13, v42, v43, v50, v20, v48);
    if (!v25)
    {
      v41(v13, v27);
      return 0;
    }

    v24 = v50;
LABEL_46:
    v14 = v25;
    [v14 setContentInsets:{sub_1006AF090(v23, v24)}];
    sub_1006AD9BC(v23, v24, v20);
    sub_100016F40(0, &qword_100948C70);
    isa = sub_1007701AC().super.isa;

    [v14 setBoundarySupplementaryItems:isa];

    sub_1006B8314();
    sub_100016F40(0, &qword_100949DE8);
    v39 = sub_1007701AC().super.isa;

    [v14 setDecorationItems:v39];

    (*(v26 + 8))(v13, v27);
    return v14;
  }

  v52 = 0;
  v53 = 0xE000000000000000;
  sub_10077145C(62);
  v54._object = 0x80000001007F5400;
  v54._countAndFlagsBits = 0xD00000000000002ELL;
  sub_1007700CC(v54);
  sub_10077151C();
  v55._countAndFlagsBits = 0x7463657320746120;
  v55._object = 0xEC000000206E6F69;
  sub_1007700CC(v55);
  v51 = v23;
  v56._countAndFlagsBits = sub_10077163C();
  sub_1007700CC(v56);

  result = sub_10077156C();
  __break(1u);
  return result;
}

id sub_1006AD7D8(void *a1)
{
  if (*(v1 + 80) != 1)
  {
    return 0;
  }

  v2 = [a1 traitCollection];
  if (qword_100941200 != -1)
  {
    swift_once();
  }

  v3 = sub_10076D9AC();
  sub_10000A61C(v3, qword_1009A2380);
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007841E0;
  *(v4 + 32) = v2;
  v5 = v2;
  v6 = sub_10076DEEC();
  sub_10076D3EC();
  v8 = v7;

  v9 = objc_opt_self();
  v10 = [v9 fractionalWidthDimension:1.0];
  v11 = [v9 absoluteDimension:v8];
  v12 = [objc_opt_self() sizeWithWidthDimension:v10 heightDimension:v11];

  v13 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v12 elementKind:UICollectionElementKindSectionFooter alignment:5];
  return v13;
}

void *sub_1006AD9BC(uint64_t a1, void *a2, void *a3)
{
  sub_100761B5C();
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  [a3 bounds];
  v8 = v7;
  sub_1006AFDAC(a1, a2, a3);
  v10 = v9;
  v11 = objc_opt_self();
  v12 = [v11 absoluteDimension:v8];
  v13 = [v11 absoluteDimension:v10];
  v14 = [objc_opt_self() sizeWithWidthDimension:v12 heightDimension:v13];

  v15 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v14 elementKind:UICollectionElementKindSectionHeader alignment:1];
  sub_10000A5D4(&unk_100942870);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1007841E0;
  *(v16 + 32) = v15;

  return v16;
}

uint64_t (*sub_1006ADB6C(uint64_t a1, void *a2, void *a3, uint64_t a4))()
{
  v5 = v4;
  v43 = a2;
  v9 = *v4;
  v10 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v42 - v11;
  v13 = sub_10000A5D4(&qword_1009632C0);
  __chkstk_darwin(v13 - 8);
  v15 = &v42 - v14;
  v16 = sub_1006AF090(a1, a3);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_100767D5C();
  sub_10076F64C();
  sub_10076FC1C();
  v44 = v47;
  sub_100764FAC();
  sub_10076F63C();
  v45 = v47;
  v23 = type metadata accessor for InteractiveSectionBackgroundScrollCoordinator();
  swift_getObjectType();
  PageTraitEnvironment.pageColumnMargin.getter();
  v25 = v24;
  v26 = v4[2];
  v27 = *(v9 + 80);
  v28 = *(v9 + 96);
  swift_unknownObjectRetain();
  v29 = v43;

  v30 = sub_1005A16EC(a1, v16, v18, v20, v22, v25, v29, v26, a4, v23, v27, v28);

  swift_unknownObjectRelease();
  swift_beginAccess();
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = v5[8];
  v5[8] = 0x8000000000000000;
  sub_10024AA2C(v30, a1, isUniquelyReferenced_nonNull_native);
  v5[8] = v46;
  swift_endAccess();
  sub_100761B4C();
  sub_10076B6FC();

  v32 = sub_10076F7FC();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v12, 1, v32) == 1)
  {
    sub_10000CFBC(v12, &qword_1009492E0);
    v34 = 1;
  }

  else
  {
    sub_10076F7DC();
    (*(v33 + 8))(v12, v32);
    v34 = 0;
  }

  v35 = sub_10076F7CC();
  (*(*(v35 - 8) + 56))(v15, v34, 1, v35);
  v36 = v44;
  v37 = v44;
  v38 = v45;
  v39 = sub_1006AE750(v15, v36, v45, v30);

  sub_10000CFBC(v15, &qword_1009632C0);
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = &protocol witness table for CompoundScrollObserver;
  return sub_1006BB6E4;
}

uint64_t sub_1006ADF90()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_10076F7FC();
  v41 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  v12 = v1[2];
  v13 = *(v2 + 80);
  v45 = *(v2 + 96);
  result = sub_100761A9C();
  if (result < 0)
  {
    goto LABEL_21;
  }

  if (result)
  {
    v15 = 0;
    v43 = result;
    v44 = (v41 + 48);
    v42 = (v41 + 32);
    v39 = v5;
    v40 = (v41 + 16);
    v34 = v41 + 40;
    v35 = (v41 + 8);
    v37 = v12;
    v38 = v11;
    v36 = v13;
    do
    {
      sub_100761B4C();
      sub_10076B6FC();
      if ((*v44)(v5, 1, v6) == 1)
      {

        sub_10000CFBC(v5, &qword_1009492E0);
      }

      else
      {
        v16 = *v42;
        (*v42)(v11, v5, v6);
        swift_beginAccess();
        v17 = v8;
        v18 = v6;
        (*v40)(v8, v11, v6);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v1[7];
        v20 = v46;
        v21 = v1;
        v1[7] = 0x8000000000000000;
        v23 = sub_10060FF40(v15);
        v24 = v20[2];
        v25 = (v22 & 1) == 0;
        v26 = v24 + v25;
        if (__OFADD__(v24, v25))
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          result = sub_1007716DC();
          __break(1u);
          return result;
        }

        v27 = v22;
        if (v20[3] >= v26)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10024CB84();
          }
        }

        else
        {
          sub_100248370(v26, isUniquelyReferenced_nonNull_native);
          v28 = sub_10060FF40(v15);
          if ((v27 & 1) != (v29 & 1))
          {
            goto LABEL_22;
          }

          v23 = v28;
        }

        v8 = v17;
        v30 = v46;
        if (v27)
        {
          v6 = v18;
          (*(v41 + 40))(v46[7] + *(v41 + 72) * v23, v17, v18);
        }

        else
        {
          v46[(v23 >> 6) + 8] |= 1 << v23;
          *(v30[6] + 8 * v23) = v15;
          v6 = v18;
          v16((v30[7] + *(v41 + 72) * v23), v17, v18);
          v31 = v30[2];
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_20;
          }

          v30[2] = v33;
        }

        v1 = v21;
        v21[7] = v30;

        swift_endAccess();

        v11 = v38;
        (*v35)(v38, v6);
        v5 = v39;
      }

      ++v15;
      result = v43;
    }

    while (v43 != v15);
  }

  return result;
}

void sub_1006AE3AC(uint64_t a1)
{
  if (a1)
  {
    __chkstk_darwin(a1);
    v2 = v1;

    sub_10000A5D4(&unk_1009520B0);
    sub_1001C9F18();
    sub_10076F35C();
  }
}

uint64_t sub_1006AE488()
{
  v1 = sub_10076F7CC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_10076F7FC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076B6FC();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000CFBC(v7, &qword_1009492E0);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    if (*(v0 + 112))
    {

      sub_1007660EC();

      if (*(v0 + 112))
      {

        sub_10076F7DC();
        v12 = sub_1007660DC();

        (*(v2 + 8))(v4, v1);
        (*(v9 + 8))(v11, v8);
        return v12;
      }
    }

    (*(v9 + 8))(v11, v8);
  }

  return 0;
}

uint64_t sub_1006AE750(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v7 = sub_10000A5D4(&qword_1009632C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_10076F7CC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v24 - v15;
  v17 = objc_allocWithZone(sub_1007666AC());
  v18 = sub_10076669C();
  if (!*(v4 + 112))
  {
LABEL_4:
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_100016E2C(a1, v9, &qword_1009632C0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000CFBC(v9, &qword_1009632C0);
    goto LABEL_4;
  }

  (*(v11 + 32))(v16, v9, v10);
  (*(v11 + 16))(v13, v16, v10);
  sub_10076888C();
  swift_allocObject();
  swift_retain_n();
  sub_10076889C();
  sub_10076668C();

  (*(v11 + 8))(v16, v10);
  if (a2)
  {
LABEL_5:
    sub_10076911C();
    swift_allocObject();
    v19 = a2;
    sub_10076912C();
    sub_10076668C();
  }

LABEL_6:
  v21 = v24;
  v20 = v25;
  if (v24)
  {
    sub_100766B3C();
    swift_allocObject();
    v22 = v21;
    sub_100766B4C();
    sub_10076668C();
  }

  if (v20)
  {
    sub_1006BCDF0(&qword_1009638C0, type metadata accessor for InteractiveSectionBackgroundScrollCoordinator);

    sub_10076668C();
  }

  return v18;
}

double sub_1006AEB1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v46 = a4;
  v43 = a3;
  v42[1] = a2;
  v49 = a1;
  v48 = sub_1007621EC();
  v45 = *(v48 - 8);
  __chkstk_darwin(v48);
  v42[0] = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v42 - v6;
  v8 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v8 - 8);
  v10 = v42 - v9;
  v11 = sub_10076B5BC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v42 - v16;
  v49 = sub_100761B4C();
  v50 = v17;
  sub_10076B5CC();
  v47 = v7;
  v44 = v10;
  if (v43)
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    v18 = v45;
    v19 = v48;
    (*(v45 + 104))(v7, enum case for ShelfBackground.none(_:), v48);
  }

  else
  {
    sub_100761A7C();
    (*(v12 + 56))(v10, 0, 1, v11);
    sub_100761A6C();
    v19 = v48;
    v18 = v45;
  }

  v20 = v50;
  (*(v12 + 16))(v14, v50, v11);
  v21 = (*(v12 + 88))(v14, v11);
  v22 = v44;
  v23 = v46;
  if (v21 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    v24 = &off_1008A1710;
  }

  else
  {
    if (v21 != enum case for Shelf.ContentType.informationRibbon(_:))
    {
      (*(v12 + 8))(v14, v11);
      v26 = v47;
      goto LABEL_11;
    }

    type metadata accessor for InformationRibbonCollectionViewCell();
    v24 = &off_100891580;
  }

  v25 = (v24[2])();
  v26 = v47;
  v20 = v50;
  if ((v27 & 1) == 0)
  {
    v28 = *&v25;

    v29 = v28;
    (*(v18 + 8))(v26, v19);
    sub_10000CFBC(v22, &unk_1009568A0);
    (*(v12 + 8))(v20, v11);
    return v29;
  }

LABEL_11:
  v45 = v11;
  v30 = sub_10041329C();
  if (v30)
  {
    v32 = v30;
    v33 = v31;
    v34 = v42[0];
    sub_10076B57C();
    *&v35 = COERCE_DOUBLE((*(v33 + 48))(v22, v26, v34, v23, v32, v33));
    v37 = v36;

    v38 = *(v18 + 8);
    v39 = v34;
    v40 = v48;
    v38(v39, v48);
    v38(v26, v40);
    sub_10000CFBC(v22, &unk_1009568A0);
    (*(v12 + 8))(v50, v45);
    v29 = 0.0;
    if ((v37 & 1) == 0)
    {
      return *&v35;
    }
  }

  else
  {

    (*(v18 + 8))(v26, v19);
    sub_10000CFBC(v22, &unk_1009568A0);
    (*(v12 + 8))(v20, v45);
    return 0.0;
  }

  return v29;
}

double sub_1006AF090(uint64_t a1, void *a2)
{
  v5 = sub_10076B5BC();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v32 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v33 = &v32 - v8;
  v9 = sub_10077164C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100761A9C() > a1)
  {
    if (qword_100941228 != -1)
    {
      swift_once();
    }

    v13 = sub_100764C6C();
    sub_10000A61C(v13, qword_1009A23F8);
    sub_10076D17C();
    sub_100764C5C();
    (*(v10 + 8))(v12, v9);
    sub_100761B5C();
    if (v14)
    {

      top = 0.0;
    }

    else
    {
      if (a1 >= 1)
      {
        v16 = a1 - 1;
      }

      else
      {
        v16 = 0;
      }

      top = sub_1006AEB1C(a1, v16, a1 < 1, a2);
    }

    v18 = v34;
    v17 = v35;
    v19 = v33;
    v20 = sub_100761A9C();
    if (a1 + 1 < v20)
    {
      v21 = a1 + 1;
    }

    else
    {
      v21 = 0;
    }

    (*(*v2 + 536))(a1, v21, a1 + 1 >= v20, a2);
    sub_100761A7C();
    if (sub_1006B9998())
    {
      goto LABEL_46;
    }

    v22 = sub_10041329C();
    if (!v22)
    {
      top = UIEdgeInsetsZero.top;
LABEL_46:
      (*(v18 + 8))(v19, v17);
      return top;
    }

    v24 = v22;
    v35 = v23;
    [a2 pageMarginInsets];
    v26 = v25;
    v27 = sub_100761A3C();
    v28 = v32;
    (*(v18 + 16))(v32, v19, v17);
    v29 = (*(v18 + 88))(v28, v17);
    if (v29 != enum case for Shelf.ContentType.smallLockup(_:) && v29 != enum case for Shelf.ContentType.mediumLockup(_:))
    {
      if (v29 == enum case for Shelf.ContentType.largeLockup(_:))
      {
LABEL_19:
        v30 = 1;
LABEL_45:
        (*(v35 + 32))(v30 & 1, a2, v24, v26, v26);
        goto LABEL_46;
      }

      if (v29 != enum case for Shelf.ContentType.inAppPurchaseLockup(_:) && v29 != enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) && v29 != enum case for Shelf.ContentType.action(_:))
      {
        if (v29 == enum case for Shelf.ContentType.ribbonBar(_:))
        {
          goto LABEL_19;
        }

        if (v29 != enum case for Shelf.ContentType.editorialCard(_:) && v29 != enum case for Shelf.ContentType.videoCard(_:))
        {
          v30 = 1;
          if (v29 == enum case for Shelf.ContentType.brick(_:) || v29 == enum case for Shelf.ContentType.categoryBrick(_:))
          {
            goto LABEL_45;
          }

          if (v29 != enum case for Shelf.ContentType.reviews(_:) && v29 != enum case for Shelf.ContentType.appTrailerLockup(_:) && v29 != enum case for Shelf.ContentType.framedVideo(_:) && v29 != enum case for Shelf.ContentType.screenshotsLockup(_:) && v29 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v29 != enum case for Shelf.ContentType.smallBreakout(_:))
          {
            if (v29 == enum case for Shelf.ContentType.editorialStoryCard(_:))
            {
              goto LABEL_19;
            }

            if (v29 != enum case for Shelf.ContentType.mixedMediaLockup(_:) && v29 != enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) && v29 != enum case for Shelf.ContentType.largeGameCenterPlayer(_:) && v29 != enum case for Shelf.ContentType.posterLockup(_:) && v29 != enum case for Shelf.ContentType.smallContactCard(_:))
            {
              if (v29 != enum case for Shelf.ContentType.informationRibbon(_:))
              {
                v30 = v27;
                if (v29 != enum case for Shelf.ContentType.appPromotion(_:))
                {
                  (*(v18 + 8))(v28, v17);
                  v30 = 0;
                }

                goto LABEL_45;
              }

              goto LABEL_19;
            }
          }
        }
      }
    }

    v30 = v27;
    goto LABEL_45;
  }

  return UIEdgeInsetsZero.top;
}

double sub_1006AF6D0(uint64_t a1, void *a2)
{
  v5 = sub_10076B5BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v21 - v10;
  v12 = 0.0;
  if (sub_100761A9C() > a1)
  {
    sub_100761A7C();
    if (!sub_1006B9998())
    {
      v21[1] = swift_getObjectType();
      v13 = [a2 traitCollection];
      v14 = (*(*v2 + 696))(v11, v13);

      if (v14)
      {
        v15 = [a2 traitCollection];
        v16 = sub_1006B9B4C(a1, v15);

        if (v16)
        {
          (*(v6 + 16))(v8, v11, v5);
          v17 = (*(v6 + 88))(v8, v5);
          v18 = *(v6 + 8);
          if (v17 == enum case for Shelf.ContentType.annotation(_:) || v17 == enum case for Shelf.ContentType.productCapability(_:) || v17 == enum case for Shelf.ContentType.productPageLink(_:) || v17 == enum case for Shelf.ContentType.privacyType(_:))
          {
            v18(v11, v5);
            return 30.0;
          }

          v18(v8, v5);
        }

        PageTraitEnvironment.pageColumnMargin.getter();
        v12 = v19;
      }
    }

    (*(v6 + 8))(v11, v5);
  }

  return v12;
}

uint64_t sub_1006AF9C8(uint64_t a1)
{
  v2 = sub_1007621EC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  if (sub_100761A9C() <= a1)
  {
    v11 = 0;
  }

  else
  {
    sub_100761A6C();
    (*(v3 + 104))(v5, enum case for ShelfBackground.none(_:), v2);
    sub_1006BCDF0(&qword_100949730, &type metadata accessor for ShelfBackground);
    v9 = sub_10076FF1C();
    v10 = *(v3 + 8);
    v10(v5, v2);
    v10(v8, v2);
    v11 = v9 ^ 1;
  }

  return v11 & 1;
}

double sub_1006AFBB4(uint64_t a1, void *a2)
{
  v4 = sub_1007621EC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_100761A9C() > a1)
  {
    sub_100761A6C();
    if ((*(v5 + 88))(v7, v4) == enum case for ShelfBackground.color(_:))
    {
      (*(v5 + 96))(v7, v4);

      v8 = *(sub_10000A5D4(&unk_100950670) + 48);
      v9 = sub_1007659CC();
      (*(*(v9 - 8) + 8))(v7 + v8, v9);
      return sub_1006AF090(a1, a2);
    }

    (*(v5 + 8))(v7, v4);
  }

  return UIEdgeInsetsZero.top;
}

double sub_1006AFDAC(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0.0;
  if (sub_100761A9C() <= a1)
  {
    return 0.0;
  }

  [a3 bounds];
  v13 = v12;
  v15 = v14;
  v16 = sub_100761B5C();
  if (v17)
  {
    v48 = v16;
    v49 = v17;
    v18 = sub_100761AAC();
    v50 = v10;
    if (v18)
    {
      v44 = sub_10076B8EC();
      v20 = v19;
      ObjectType = [a2 traitCollection];
      if (qword_10093F988 != -1)
      {
        swift_once();
      }

      v21 = qword_10094C0F0;
      v45 = a2;
      v46 = v20;
      if (v20)
      {
        v20 = sub_10076FF6C();
      }

      [v21 setTitle:v20 forState:0];

      [v21 setImage:0 forState:0];
      v22 = [v21 titleLabel];
      v23 = v22;
      if (v22)
      {
        v44 = v22;
        v24 = v22;
        v25 = [v24 font];
        if (v25)
        {
          v26 = v25;
          v27 = [v25 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:ObjectType];
        }

        else
        {
          v27 = 0;
        }

        [v24 setFont:v27];

        v23 = v44;
      }

      [v21 sizeThatFits:{v13, v15}];
      v30 = v29;
      v11 = v31;

      v28 = v30 + 0.0;
      [v21 setTitle:0 forState:0];
      [v21 setImage:0 forState:0];

      a2 = v45;
    }

    else
    {
      v28 = 0.0;
    }

    ObjectType = swift_getObjectType();
    [a2 pageMarginInsets];
    if (a1 >= 1)
    {
      v32 = a1 - 1;
    }

    else
    {
      v32 = 0;
    }

    sub_1006AEB1C(a1, v32, a1 < 1, a2);
    v33 = sub_100761ABC();
    v46 = type metadata accessor for TitleHeaderView(0);
    v34 = sub_100761B6C();
    v36 = v35;
    v37 = sub_100761AFC();
    v38 = sub_1006B9D7C(v33 != 0, a2);
    v39 = v50;
    (*(*v4 + 632))(a1, a2);
    LOBYTE(v42) = 1;
    sub_1001963E0(v34, v36, v37, v48, v49, v33, 0, 0, v13, v15, v28, v11, 0, 0, v38, v39, v42, a2);
    v13 = v40;

    sub_10013B184(v39, type metadata accessor for TitleHeaderView.Style);
  }

  return v13;
}