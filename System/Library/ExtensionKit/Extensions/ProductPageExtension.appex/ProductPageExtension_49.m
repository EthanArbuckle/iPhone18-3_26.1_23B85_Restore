uint64_t sub_100587CD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 353))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100587D20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
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
    *(result + 328) = 0u;
    *(result + 352) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 353) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 353) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_100587DD0(void *a1, uint64_t a2, char a3)
{
  if (*(a2 + 336) == 1)
  {
    result = 160.0;
    if (*(a2 + 339))
    {
      return 293.0;
    }

    return result;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = sub_10076FF9C();
  v8 = v7;
  if (v6 == sub_10076FF9C() && v8 == v9)
  {
    goto LABEL_18;
  }

  v11 = sub_10077167C();

  if (v11)
  {
LABEL_10:

    return 52.0;
  }

  v12 = sub_10076FF9C();
  v14 = v13;
  if (v12 == sub_10076FF9C() && v14 == v15)
  {
    goto LABEL_18;
  }

  v17 = sub_10077167C();

  if (v17)
  {
    goto LABEL_10;
  }

  v18 = sub_10076FF9C();
  v20 = v19;
  if (v18 == sub_10076FF9C() && v20 == v21)
  {
LABEL_18:

    return 52.0;
  }

  v23 = sub_10077167C();

  if (v23)
  {
    goto LABEL_10;
  }

  v24 = sub_10076FF9C();
  v26 = v25;
  if (v24 == sub_10076FF9C() && v26 == v27)
  {

    return 54.0;
  }

  v28 = sub_10077167C();

  if (v28)
  {

    return 54.0;
  }

  v29 = sub_10076FF9C();
  v31 = v30;
  if (v29 == sub_10076FF9C() && v31 == v32)
  {

    return 62.0;
  }

  v33 = sub_10077167C();

  if (v33)
  {

    return 62.0;
  }

  v34 = sub_10076FF9C();
  v36 = v35;
  if (v34 == sub_10076FF9C() && v36 == v37)
  {

    return 67.0;
  }

  v38 = sub_10077167C();

  if (v38)
  {

    return 67.0;
  }

  v39 = sub_10076FF9C();
  v41 = v40;
  if (v39 == sub_10076FF9C() && v41 == v42)
  {

    return 76.0;
  }

  v43 = sub_10077167C();

  if (v43)
  {

    return 76.0;
  }

  v44 = sub_10076FF9C();
  v46 = v45;
  if (v44 == sub_10076FF9C() && v46 == v47)
  {

    return 153.0;
  }

  v48 = sub_10077167C();

  if (v48)
  {

    return 153.0;
  }

  v49 = sub_10076FF9C();
  v51 = v50;
  if (v49 == sub_10076FF9C() && v51 == v52)
  {

    return 170.0;
  }

  v53 = sub_10077167C();

  if (v53)
  {

    return 170.0;
  }

  v54 = sub_10076FF9C();
  v56 = v55;
  if (v54 == sub_10076FF9C() && v56 == v57)
  {

    return 193.0;
  }

  v58 = sub_10077167C();

  if (v58)
  {

    return 193.0;
  }

  v59 = sub_10076FF9C();
  v61 = v60;
  if (v59 == sub_10076FF9C() && v61 == v62)
  {
    goto LABEL_66;
  }

  v63 = sub_10077167C();

  if (v63)
  {
  }

  else
  {
    v64 = sub_10076FF9C();
    v66 = v65;
    if (v64 == sub_10076FF9C() && v66 == v67)
    {
LABEL_66:

      goto LABEL_72;
    }

    v68 = sub_10077167C();

    if ((v68 & 1) == 0)
    {
      return 52.0;
    }
  }

LABEL_72:
  result = 216.0;
  if (a3)
  {
    return 293.0;
  }

  return result;
}

uint64_t sub_100588540()
{
  sub_10000CD74((v0 + 4));

  sub_10000CD74((v0 + 11));
  sub_10000CD74((v0 + 16));
  sub_10000CD74((v0 + 21));
  sub_10000CD74((v0 + 26));
  sub_10000CD74((v0 + 31));
  sub_10000CD74((v0 + 39));
  if (v0[50])
  {
    sub_10000CD74((v0 + 47));
  }

  if (v0[55])
  {
    sub_10000CD74((v0 + 52));
  }

  if (v0[60])
  {
    sub_10000CD74((v0 + 57));
  }

  sub_10000CD74((v0 + 62));
  if (v0[70])
  {
    sub_10000CD74((v0 + 67));
  }

  if (v0[75])
  {
    sub_10000CD74((v0 + 72));
  }

  if (v0[80])
  {
    sub_10000CD74((v0 + 77));
  }

  if (v0[85])
  {
    sub_10000CD74((v0 + 82));
  }

  if (v0[90])
  {
    sub_10000CD74((v0 + 87));
  }

  if (v0[95])
  {
    sub_10000CD74((v0 + 92));
  }

  return _swift_deallocObject(v0, 777, 7);
}

uint64_t sub_10058865C()
{
  sub_10000CD74(v0 + 80);

  sub_10000CD74(v0 + 136);
  sub_10000CD74(v0 + 176);
  sub_10000CD74(v0 + 216);
  sub_10000CD74(v0 + 256);
  sub_10000CD74(v0 + 296);
  sub_10000CD74(v0 + 360);
  if (*(v0 + 448))
  {
    sub_10000CD74(v0 + 424);
  }

  if (*(v0 + 488))
  {
    sub_10000CD74(v0 + 464);
  }

  if (*(v0 + 528))
  {
    sub_10000CD74(v0 + 504);
  }

  sub_10000CD74(v0 + 544);
  if (*(v0 + 608))
  {
    sub_10000CD74(v0 + 584);
  }

  if (*(v0 + 648))
  {
    sub_10000CD74(v0 + 624);
  }

  if (*(v0 + 688))
  {
    sub_10000CD74(v0 + 664);
  }

  if (*(v0 + 728))
  {
    sub_10000CD74(v0 + 704);
  }

  if (*(v0 + 768))
  {
    sub_10000CD74(v0 + 744);
  }

  if (*(v0 + 808))
  {
    sub_10000CD74(v0 + 784);
  }

  return _swift_deallocObject(v0, 840, 7);
}

uint64_t sub_100588784()
{
  sub_10000CD74(v0 + 32);

  sub_10000CD74(v0 + 88);
  sub_10000CD74(v0 + 128);
  sub_10000CD74(v0 + 168);
  sub_10000CD74(v0 + 208);
  sub_10000CD74(v0 + 248);
  sub_10000CD74(v0 + 312);
  if (*(v0 + 400))
  {
    sub_10000CD74(v0 + 376);
  }

  if (*(v0 + 440))
  {
    sub_10000CD74(v0 + 416);
  }

  if (*(v0 + 480))
  {
    sub_10000CD74(v0 + 456);
  }

  sub_10000CD74(v0 + 496);
  if (*(v0 + 560))
  {
    sub_10000CD74(v0 + 536);
  }

  if (*(v0 + 600))
  {
    sub_10000CD74(v0 + 576);
  }

  if (*(v0 + 640))
  {
    sub_10000CD74(v0 + 616);
  }

  if (*(v0 + 680))
  {
    sub_10000CD74(v0 + 656);
  }

  if (*(v0 + 720))
  {
    sub_10000CD74(v0 + 696);
  }

  if (*(v0 + 760))
  {
    sub_10000CD74(v0 + 736);
  }

  return _swift_deallocObject(v0, 792, 7);
}

void sub_1005888C0()
{
  v1 = [*&v0[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_titleLabel] font];
  if (v1)
  {
    v2 = v1;
    [v1 descender];

    if (qword_1009408D0 != -1)
    {
      swift_once();
    }

    v3 = sub_10076220C();
    sub_10000A61C(v3, qword_10095D940);
    v4 = [v0 traitCollection];
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007841E0;
    *(v5 + 32) = v4;
    v6 = v4;
    v7 = sub_10076DEEC();
    sub_100219D24();
    sub_10076D3EC();
  }

  else
  {
    __break(1u);
  }
}

id sub_100588A20(uint64_t a1, uint64_t a2, NSString a3, uint64_t a4, NSString a5)
{
  v9 = sub_10076703C();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9, v11);
  v14 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_displayOptions;
  swift_beginAccess();
  (*(v10 + 24))(&v5[v14], v13, v9);
  swift_endAccess();
  sub_10058926C();
  (*(v10 + 8))(v13, v9);
  v15 = *&v5[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_badgeLabel];
  if (a3)
  {
    a3 = sub_10076FF6C();
  }

  [v15 setText:a3];

  v16 = *&v5[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_titleLabel];
  if (a5)
  {
    a5 = sub_10076FF6C();
  }

  [v16 setText:a5];

  return [v5 setNeedsLayout];
}

uint64_t sub_100588C1C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10076220C();
  sub_10000DB18(v3, a2);
  sub_10000A61C(v3, a2);
  return sub_1007621FC();
}

char *sub_100588C74(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - v11;
  v13 = sub_100766FCC();
  __chkstk_darwin(v13 - 8);
  v14 = sub_10076702C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100766F4C();
  v19 = __chkstk_darwin(v18);
  (*(v21 + 104))(&v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v19);
  (*(v15 + 104))(v17, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v14);
  sub_100766FBC();
  sub_100766F5C();
  v22 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_badgeLabel;
  sub_1007626BC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v22] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v24 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_titleLabel;
  *&v4[v24] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v51.receiver = v4;
  v51.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v51, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v29 = v25;
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v29 setOverrideUserInterfaceStyle:2];
  [v29 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v30 = [v29 layer];
  [v30 setAllowsGroupBlending:0];

  v31 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_badgeLabel;
  v32 = qword_100941130;
  v33 = *&v29[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_badgeLabel];
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = sub_10076D3DC();
  v35 = sub_10000A61C(v34, qword_1009A2188);
  v36 = *(v34 - 8);
  v50 = *(v36 + 16);
  v50(v12, v35, v34);
  v49 = *(v36 + 56);
  v49(v12, 0, 1, v34);
  sub_1007625DC();

  [*&v29[v31] setNumberOfLines:1];
  v37 = *&v29[v31];
  v38 = objc_opt_self();
  v39 = v37;
  v40 = [v38 secondaryLabelColor];
  [v39 setTextColor:v40];

  v41 = [*&v29[v31] layer];
  [v41 setCompositingFilter:kCAFilterPlusL];

  v42 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_titleLabel;
  v43 = qword_100941138;
  v44 = *&v29[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_titleLabel];
  if (v43 != -1)
  {
    swift_once();
  }

  v45 = sub_10000A61C(v34, qword_1009A21A0);
  v50(v12, v45, v34);
  v49(v12, 0, 1, v34);
  sub_1007625DC();

  [*&v29[v42] setNumberOfLines:3];
  v46 = *&v29[v42];
  v47 = [v38 labelColor];
  [v46 setTextColor:v47];

  [v29 addSubview:*&v29[v31]];
  [v29 addSubview:*&v29[v42]];
  sub_10058926C();

  return v29;
}

id sub_10058926C()
{
  v1 = v0;
  v54 = sub_10076702C();
  v56 = *(v54 - 8);
  __chkstk_darwin(v54);
  v47 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100766FCC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v39 - v7;
  v9 = sub_10076703C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v43 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v49 = &v39 - v13;
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  v42 = *&v1[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_badgeLabel];
  v17 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_displayOptions;
  swift_beginAccess();
  v18 = *(v10 + 16);
  v53 = v17;
  v50 = v10 + 16;
  v51 = v1;
  v44 = v18;
  v18(v16, &v1[v17], v9);
  sub_100766FDC();
  v55 = *(v10 + 8);
  v52 = v10 + 8;
  v55(v16, v9);
  v19 = sub_100766F9C();
  v20 = *(v4 + 8);
  v48 = v3;
  v46 = v4 + 8;
  v41 = v20;
  v20(v8, v3);
  if (!v19)
  {
    v19 = [objc_opt_self() secondaryLabelColor];
  }

  v21 = v42;
  [v42 setTextColor:v19];

  v22 = v53;
  v23 = v51;
  v24 = v49;
  v25 = v44;
  v44(v49, &v51[v53], v9);
  v26 = v47;
  sub_100766FEC();
  v55(v24, v9);
  v27 = [v23 traitCollection];
  v28 = sub_100766FFC();

  v29 = *(v56 + 8);
  v56 += 8;
  v40 = v29;
  v29(v26, v54);
  [v21 setTextAlignment:v28];
  v30 = *&v23[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_titleLabel];
  v31 = v43;
  v25(v43, &v23[v22], v9);
  v32 = v45;
  sub_100766FDC();
  v55(v31, v9);
  v33 = sub_100766FAC();
  v41(v32, v48);
  if (!v33)
  {
    v33 = [objc_opt_self() labelColor];
  }

  [v30 setTextColor:v33];

  v34 = v51;
  v35 = v49;
  v25(v49, &v51[v53], v9);
  sub_100766FEC();
  v55(v35, v9);
  v36 = [v34 traitCollection];
  v37 = sub_100766FFC();

  v40(v26, v54);
  [v30 setTextAlignment:v37];
  return [v34 setNeedsLayout];
}

uint64_t sub_1005897E8@<X0>(uint64_t *a1@<X8>)
{
  v27 = a1;
  v2 = sub_10076D65C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = sub_10076D58C();
  v10 = *(v9 - 8);
  v25 = v9;
  v26 = v10;
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + 16) = v1;
  v13 = v1;
  sub_10076D55C();
  *(swift_allocObject() + 16) = v13;
  v14 = v13;
  sub_10076D63C();
  v15 = *&v14[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_badgeLabel];
  v16 = sub_1007626BC();
  v30 = v16;
  v31 = &protocol witness table for UILabel;
  v29[0] = v15;
  v17 = v15;
  sub_10076D64C();
  v18 = *(v3 + 8);
  v18(v5, v2);
  sub_10000CD74(v29);
  v19 = *&v14[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_titleLabel];
  v28[3] = v16;
  v28[4] = &protocol witness table for UILabel;
  v28[0] = v19;
  v30 = v2;
  v31 = &protocol witness table for VerticalStack;
  sub_10000DB7C(v29);
  v20 = v19;
  sub_10076D64C();
  v18(v8, v2);
  sub_10000CD74(v28);
  v21 = v27;
  v22 = v25;
  v27[3] = v25;
  v21[4] = &protocol witness table for DisjointStack;
  sub_10000DB7C(v21);
  sub_10076D57C();
  (*(v26 + 8))(v12, v22);
  return sub_10000CD74(v29);
}

uint64_t sub_100589BFC(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = sub_10076702C();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076703C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076D54C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_10076D67C();
  v12[3] = v13;
  v12[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v12);
  sub_10076D66C();
  v14 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v15 = *(v10 + 104);
  v27 = v9;
  v15(v12, enum case for DisjointStack.EdgePosition.anchored(_:), v9);
  v29 = a1;
  sub_10076D4FC();
  v16 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_displayOptions;
  v17 = v26;
  swift_beginAccess();
  v18 = v17 + v16;
  v19 = v28;
  (*(v6 + 16))(v8, v18, v5);
  sub_100766FEC();
  v20 = v5;
  v21 = v30;
  (*(v6 + 8))(v8, v20);
  v22 = v31;
  result = (*(v21 + 88))(v19, v31);
  if (result == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:))
  {
    v12[3] = v13;
    v12[4] = &protocol witness table for ZeroDimension;
    sub_10000DB7C(v12);
    sub_10076D66C();
    v15(v12, v14, v27);
    return sub_10076D50C();
  }

  else
  {
    v24 = v27;
    if (result != enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.center(_:))
    {
      if (result == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.trailing(_:))
      {
        v12[3] = v13;
        v12[4] = &protocol witness table for ZeroDimension;
        sub_10000DB7C(v12);
        sub_10076D66C();
        v15(v12, v14, v24);
        return sub_10076D51C();
      }

      else
      {
        return (*(v21 + 8))(v19, v22);
      }
    }
  }

  return result;
}

uint64_t sub_100589F84(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076702C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076703C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_displayOptions;
  swift_beginAccess();
  (*(v8 + 16))(v10, a2 + v11, v7);
  sub_100766FEC();
  (*(v8 + 8))(v10, v7);
  sub_10076700C();
  (*(v4 + 8))(v6, v3);
  return sub_10076D5EC();
}

uint64_t type metadata accessor for CarouselItemModuleHeaderView()
{
  result = qword_10095D998;
  if (!qword_10095D998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10058A30C()
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

double sub_10058A3AC()
{
  sub_1005897E8(v3);
  sub_10000CF78(v3, v3[3]);
  sub_10076E0FC();
  v1 = v0;
  sub_10000CD74(v3);
  return v1;
}

uint64_t sub_10058A454()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10058A49C()
{
  if (qword_1009408C0 != -1)
  {
    swift_once();
  }

  v0 = sub_10076220C();
  v1 = sub_10000A61C(v0, qword_10095D910);
  v4[3] = v0;
  v4[4] = sub_100219D24();
  v2 = sub_10000DB7C(v4);
  (*(*(v0 - 8) + 16))(v2, v1, v0);
  return sub_10076D5BC();
}

uint64_t sub_10058A564()
{
  if (qword_1009408C8 != -1)
  {
    swift_once();
  }

  v0 = sub_10076220C();
  v1 = sub_10000A61C(v0, qword_10095D928);
  v9 = v0;
  v2 = sub_100219D24();
  v10 = v2;
  v3 = sub_10000DB7C(v8);
  v4 = *(*(v0 - 8) + 16);
  v4(v3, v1, v0);
  sub_10076D5BC();
  if (qword_1009408D0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_10095D940);
  v9 = v0;
  v10 = v2;
  v6 = sub_10000DB7C(v8);
  v4(v6, v5, v0);
  return sub_10076D5CC();
}

void sub_10058A6A4()
{
  v1 = sub_100766FCC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10076702C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100766F4C();
  v7 = __chkstk_darwin(v6);
  (*(v9 + 104))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v7);
  (*(v3 + 104))(v5, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v2);
  sub_100766FBC();
  sub_100766F5C();
  v10 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_badgeLabel;
  sub_1007626BC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v10) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v12 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_titleLabel;
  *(v0 + v12) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  sub_10077156C();
  __break(1u);
}

uint64_t type metadata accessor for CappedSizeRoundedTitledButton()
{
  result = qword_10095D9B8;
  if (!qword_10095D9B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_10058A9A0(void *a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_10077164C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = a1;
  v15.super_class = ObjectType;
  v11 = a1;
  objc_msgSendSuper2(&v15, "sizeThatFits:", a2, a3);
  v13 = v12;
  sub_10000CF78(&v11[qword_10095D9A8], *&v11[qword_10095D9A8 + 24]);
  sub_1000FF02C();
  sub_10076D40C();

  (*(v8 + 8))(v10, v7);
  return v13;
}

void sub_10058AB08(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "layoutSubviews");
  [v1 bounds];
  [v1 _setCornerRadius:CGRectGetHeight(v3) * 0.5];
}

char *sub_10058AB84(char *result)
{
  v1 = *&result[qword_10095D9B0];
  if (v1)
  {
    v2 = result;
    v3 = sub_10001CE50(v1);
    v1(v3);

    return sub_1000167E0(v1);
  }

  return result;
}

id sub_10058AC08(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v9, "measurementsWithFitting:in:", a5, a2, a3);
}

uint64_t sub_10058ACA0()
{
  sub_10000CD74(v0 + qword_10095D9A8);
  v1 = *(v0 + qword_10095D9B0);

  return sub_1000167E0(v1);
}

uint64_t sub_10058ACE4(uint64_t a1)
{
  sub_10000CD74(a1 + qword_10095D9A8);
  v2 = *(a1 + qword_10095D9B0);

  return sub_1000167E0(v2);
}

uint64_t sub_10058AD50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10076B5BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100946720);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v9 + 8))(v11, v8);
  result = (*(v5 + 88))(v7, v4);
  if (result == enum case for Shelf.ContentType.appTrailerLockup(_:))
  {
    a2[3] = &type metadata for Double;
    a2[4] = &protocol witness table for Double;
    *a2 = 0x4040000000000000;
  }

  else
  {
    sub_100642F38(a1, a2);
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_10058AF54(void *a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  if ((sub_1007713EC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for StringPreferencesDebugSetting();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 56) == v1[7] && *(v2 + 64) == v1[8];
  if (!v3 && (sub_10077167C() & 1) == 0)
  {
    return 0;
  }

  v4 = sub_10076F52C();

  return v4 & 1;
}

uint64_t sub_10058B05C()
{
  sub_1007713FC();

  return sub_10077008C();
}

uint64_t sub_10058B0A8()
{

  v1 = OBJC_IVAR____TtC20ProductPageExtension29StringPreferencesDebugSetting_key;
  v2 = sub_10000A5D4(&qword_100943038);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_10058B134()
{
  sub_100016C74(v0 + 16);

  v1 = OBJC_IVAR____TtC20ProductPageExtension29StringPreferencesDebugSetting_key;
  v2 = sub_10000A5D4(&qword_100943038);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StringPreferencesDebugSetting()
{
  result = qword_10095DA30;
  if (!qword_10095DA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10058B268()
{
  sub_10058B304();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10058B304()
{
  if (!qword_10095DA40)
  {
    v0 = sub_10076F53C();
    if (!v1)
    {
      atomic_store(v0, &qword_10095DA40);
    }
  }
}

id sub_10058B354()
{
  v0[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderAvoidsOverscroll] = 0;
  v0[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_isSupplementaryViewAnimationEnabled] = 1;
  v1 = &v0[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderFrame];
  *v2 = 0u;
  v2[1] = 0u;
  v3 = &v0[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_pendingPrepareObserver];
  v4 = type metadata accessor for CollectionViewTableFlowLayout();
  *v3 = 0;
  v3[1] = 0;
  v11.receiver = v0;
  v11.super_class = v4;
  v5 = objc_msgSendSuper2(&v11, "init");
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v9 = v5;
  [v9 setSectionInset:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v9 setMinimumInteritemSpacing:0.0];
  [v9 setMinimumLineSpacing:0.0];
  [v9 setScrollDirection:0];

  return v9;
}

double sub_10058B530()
{
  v1 = [v0 collectionView];
  v2 = 0.0;
  if (v1)
  {
    v3 = v1;
    v4 = [v1 delegate];

    if (v4)
    {
      v5 = swift_dynamicCastObjCProtocolConditional();
      if (v5 && (v6 = v5, (v7 = [v0 collectionView]) != 0))
      {
        v8 = v7;
        [v6 collectionView:v7 heightForGlobalHeaderViewInTableFlowLayout:v0];
        v2 = v9;
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  return v2;
}

uint64_t sub_10058B628()
{
  v24.receiver = v0;
  v24.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  objc_msgSendSuper2(&v24, "prepareLayout");
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    Width = CGRectGetWidth(v25);
    v4 = sub_10058B530();

    v5 = &v0[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize];
    *v5 = Width;
    v5[1] = v4;
  }

  else
  {
    v6 = &v0[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize];
    *v6 = 0;
    *(v6 + 1) = 0;
  }

  v7 = 0.0;
  if (v0[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderAvoidsOverscroll] == 1)
  {
    v8 = [v0 collectionView];
    if (v8)
    {
      v9 = v8;
      [v8 contentInset];
      v7 = v10;
      v12 = v11;
      [v9 bounds];
      v26.origin.x = sub_100102A30(v13, v14, v15, v16, v7, v12);
      MinY = CGRectGetMinY(v26);

      if (MinY < v7)
      {
        v7 = MinY;
      }
    }
  }

  v18 = &v0[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderFrame];
  v19 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize];
  *v18 = 0.0;
  v18[1] = v7;
  *(v18 + 1) = v19;
  v20 = &v0[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_pendingPrepareObserver];
  v21 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_pendingPrepareObserver];
  if (v21)
  {

    v21(v0);
    sub_1000167E0(v21);
    v22 = *v20;
  }

  else
  {
    v22 = 0;
  }

  *v20 = 0;
  v20[1] = 0;
  return sub_1000167E0(v22);
}

id sub_10058B8A0()
{
  v1 = v0;
  isa = sub_10075E02C().super.isa;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  v3 = objc_msgSendSuper2(&v7, "layoutAttributesForItemAtIndexPath:", isa);

  if (v3)
  {
    if (*&v1[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize] >= COERCE_DOUBLE(1) && *&v1[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize + 8] >= COERCE_DOUBLE(1))
    {
      sub_1000DE4D0();
      v5 = sub_10077116C();
      [v5 frame];
      [v5 setFrame:?];

      return v5;
    }
  }

  return v3;
}

id sub_10058BA7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1 == 0xD000000000000035 && 0x80000001007EE2B0 == a2 || (sub_10077167C() & 1) != 0)
  {
    v4 = sub_10076FF6C();
    isa = sub_10075E02C().super.isa;
    v6 = [objc_opt_self() layoutAttributesForSupplementaryViewOfKind:v4 withIndexPath:isa];

    [v6 setFrame:{*&v3[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderFrame], *&v3[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderFrame + 8], *&v3[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderFrame + 16], *&v3[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderFrame + 24]}];
  }

  else
  {
    v8 = sub_10076FF6C();
    v9 = sub_10075E02C().super.isa;
    v12.receiver = v2;
    v12.super_class = type metadata accessor for CollectionViewTableFlowLayout();
    v6 = objc_msgSendSuper2(&v12, "layoutAttributesForSupplementaryViewOfKind:atIndexPath:", v8, v9);

    if (v6)
    {
      if (*&v3[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize] >= COERCE_DOUBLE(1) && *&v3[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize + 8] >= COERCE_DOUBLE(1))
      {
        sub_1000DE4D0();
        v11 = sub_10077116C();
        [v11 frame];
        [v11 setFrame:?];

        return v11;
      }
    }
  }

  return v6;
}

id sub_10058BC3C()
{
  v1 = v0;
  v2 = sub_10076FF6C();
  isa = sub_10075E02C().super.isa;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  v4 = objc_msgSendSuper2(&v8, "layoutAttributesForDecorationViewOfKind:atIndexPath:", v2, isa);

  if (v4)
  {
    if (*&v1[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize] >= COERCE_DOUBLE(1) && *&v1[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize + 8] >= COERCE_DOUBLE(1))
    {
      sub_1000DE4D0();
      v6 = sub_10077116C();
      [v6 frame];
      [v6 setFrame:?];

      return v6;
    }
  }

  return v4;
}

id sub_10058BD40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, char *))
{
  v7 = sub_10075E11C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076FF9C();
  v13 = v12;
  sub_10075E06C();
  v14 = a1;
  v15 = a5(v11, v13, v10);

  (*(v8 + 8))(v10, v7);

  return v15;
}

unint64_t sub_10058BE74(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_10075E11C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v4[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize];
  v14 = *&v4[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize + 8];
  v46.origin.x = a1;
  v46.origin.y = a2;
  v46.size.width = a3;
  v46.size.height = a4;
  v16 = CGRectGetMinY(v46) - v14;
  if (v16 < 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v16;
  }

  v18 = type metadata accessor for CollectionViewTableFlowLayout();
  v45.receiver = v4;
  v45.super_class = v18;
  v19 = objc_msgSendSuper2(&v45, "layoutAttributesForElementsInRect:", a1, v17, a3, a4);
  if (!v19)
  {
    return 0;
  }

  v20 = v19;
  sub_1000DE4D0();
  v21 = sub_1007701BC();

  if (v15 < COERCE_DOUBLE(1) || v14 < COERCE_DOUBLE(1))
  {
    return v21;
  }

  if (v21 >> 62)
  {
    v23 = sub_10077158C();
    if (v23)
    {
      goto LABEL_11;
    }

LABEL_29:

    v21 = _swiftEmptyArrayStorage;
    goto LABEL_30;
  }

  v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
    goto LABEL_29;
  }

LABEL_11:
  v40 = v13;
  v41 = v11;
  v42 = v10;
  v43 = v5;
  v44 = _swiftEmptyArrayStorage;

  sub_1007714EC();
  if ((v23 & 0x8000000000000000) == 0)
  {
    v24 = 0;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v26 = sub_10077149C();
      }

      else
      {
        v26 = *(v21 + 8 * v24 + 32);
      }

      v27 = v26;
      v28 = [v26 representedElementKind];
      if (v28)
      {
        v29 = v28;
        v30 = sub_10076FF9C();
        v32 = v31;

        if (v30 == 0xD000000000000035 && 0x80000001007EE2B0 == v32)
        {

          goto LABEL_14;
        }

        v34 = sub_10077167C();

        if (v34)
        {
          goto LABEL_14;
        }
      }

      v25 = sub_10077116C();
      [v25 frame];
      [v25 setFrame:?];

LABEL_14:
      ++v24;
      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
      if (v23 == v24)
      {
        swift_bridgeObjectRelease_n();
        v5 = v43;
        v21 = v44;
        v11 = v41;
        v10 = v42;
        v13 = v40;
LABEL_30:
        v44 = v21;
        v47.origin.x = a1;
        v47.origin.y = a2;
        v47.size.width = a3;
        v47.size.height = a4;
        if (CGRectIntersectsRect(v47, *&v5[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderFrame]))
        {
          v35 = sub_10076FF6C();
          sub_10075E0CC();
          isa = sub_10075E02C().super.isa;
          (*(v11 + 8))(v13, v10);
          v37 = [v5 layoutAttributesForSupplementaryViewOfKind:v35 atIndexPath:isa];

          if (v37)
          {
            v5 = v37;
            sub_10077019C();
            if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_33;
            }

            goto LABEL_36;
          }
        }

        return v21;
      }
    }
  }

  __break(1u);
LABEL_36:
  sub_10077021C();
LABEL_33:
  sub_10077025C();

  return v44;
}

id sub_10058C374(void *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  v8 = sub_10075E11C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  v12 = 0;
  if (*(a1 + OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_isSupplementaryViewAnimationEnabled) == 1)
  {
    v13 = a3;
    v14 = a1;
    isa = sub_10075E02C().super.isa;
    v16 = type metadata accessor for CollectionViewTableFlowLayout();
    v18.receiver = v14;
    v18.super_class = v16;
    v12 = objc_msgSendSuper2(&v18, *a5, v13, isa);
  }

  (*(v9 + 8))(v11, v8);

  return v12;
}

uint64_t sub_10058C4D4(double a1, double a2, double a3, double a4)
{
  v9 = *&v4[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize] < COERCE_DOUBLE(1) || *&v4[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize + 8] < COERCE_DOUBLE(1);
  if (!v9 && v4[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderAvoidsOverscroll] == 1)
  {
    if (CGRectGetMinY(*&a1) <= 0.0)
    {
      return 1;
    }

    MinY = CGRectGetMinY(*&v4[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderFrame]);
    v11 = [v4 collectionView];
    if (v11)
    {
      v12 = v11;
      [v11 contentInset];
      v14 = v13;

      if (MinY < v14)
      {
        return 1;
      }
    }

    else if (MinY < 0.0)
    {
      return 1;
    }
  }

  v16.receiver = v4;
  v16.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  return objc_msgSendSuper2(&v16, "shouldInvalidateLayoutForBoundsChange:", a1, a2, a3, a4);
}

void *sub_10058C66C(double a1, double a2, double a3, double a4)
{
  v21.receiver = v4;
  v21.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  v9 = objc_msgSendSuper2(&v21, "invalidationContextForBoundsChange:", a1, a2, a3, a4);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  v11 = [v4 collectionView];
  if (v11)
  {
    v12 = v11;
    [v11 bounds];
    v14 = v13;
    v16 = v15;

    if (v14 != a3)
    {
      return v10;
    }
  }

  else
  {
    v16 = 0.0;
    if (a3 != 0.0)
    {
      return v10;
    }
  }

  if (v16 == a4 && *&v4[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize] >= COERCE_DOUBLE(1) && *&v4[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize + 8] >= COERCE_DOUBLE(1))
  {
    v18 = sub_10076FF6C();
    sub_10000A5D4(&qword_100944C48);
    sub_10075E11C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10075E0CC();
    isa = sub_1007701AC().super.isa;

    [v10 invalidateSupplementaryElementsOfKind:v18 atIndexPaths:isa];
  }

  return v10;
}

void sub_10058C910(void *a1)
{
  v2 = v1;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  objc_msgSendSuper2(&v22, "invalidateLayoutWithContext:", a1);
  v4 = [a1 invalidatedSupplementaryIndexPaths];
  if (v4)
  {
    v5 = v4;
    sub_10000A5D4(&unk_10095DB50);
    v6 = sub_10076FE4C();

    if (*(v6 + 16))
    {
      sub_100561E0C(0xD000000000000035, 0x80000001007EE2B0);
      v8 = v7;

      if (v8)
      {
        v9 = 0.0;
        if (v2[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderAvoidsOverscroll] == 1)
        {
          v10 = [v2 collectionView];
          if (v10)
          {
            v11 = v10;
            [v10 contentInset];
            v9 = v12;
            v14 = v13;
            [v11 bounds];
            v23.origin.x = sub_100102A30(v15, v16, v17, v18, v9, v14);
            MinY = CGRectGetMinY(v23);

            if (MinY < v9)
            {
              v9 = MinY;
            }
          }
        }

        v20 = &v2[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderFrame];
        v21 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize];
        *v20 = 0.0;
        v20[1] = v9;
        *(v20 + 1) = v21;
      }
    }

    else
    {
    }
  }
}

id sub_10058CB38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10058CBA4()
{
  sub_10000A5D4(&unk_1009434B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100783DD0;
  sub_10077145C(55);
  v8._object = 0x80000001007EE330;
  v8._countAndFlagsBits = 0xD000000000000035;
  sub_1007700CC(v8);
  v2 = [v0 description];
  v3 = sub_10076FF9C();
  v5 = v4;

  v9._countAndFlagsBits = v3;
  v9._object = v5;
  sub_1007700CC(v9);

  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  sub_1007713BC();
}

uint64_t sub_10058CCC4()
{
  sub_10000A5D4(&unk_1009434B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100783DD0;
  sub_10077145C(55);
  v8._object = 0x80000001007EE2F0;
  v8._countAndFlagsBits = 0xD000000000000035;
  sub_1007700CC(v8);
  v2 = [v0 description];
  v3 = sub_10076FF9C();
  v5 = v4;

  v9._countAndFlagsBits = v3;
  v9._object = v5;
  sub_1007700CC(v9);

  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  sub_1007713BC();
}

double sub_10058CE2C()
{
  v1 = sub_10076C38C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10075FAEC();
  v5 = *(v18 - 8);
  __chkstk_darwin(v18);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076161C();
  sub_10058D108(&qword_10094D3F0, &type metadata accessor for ArcadeShowcase);
  sub_10076332C();
  if (!v19)
  {
    return 0.0;
  }

  v17[1] = v0;
  sub_100767E8C();
  sub_10076F64C();
  sub_10076FC1C();
  v8 = v19;
  sub_100767E6C();
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  (*(v2 + 8))(v4, v1);
  v9 = sub_100630CB4();
  if (sub_10075FABC())
  {
    v10 = sub_1007615EC();
  }

  else
  {
    v10 = sub_10076160C();
  }

  v13 = v10;
  v14 = v11;
  swift_getObjectType();
  sub_10026C9FC(v13, v14, v9);
  v12 = v15;
  swift_unknownObjectRelease();

  (*(v5 + 8))(v7, v18);
  return v12;
}

uint64_t sub_10058D108(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_10058D154@<D0>(uint64_t a1@<X8>)
{
  sub_10076B7BC();
  sub_10059129C(&unk_10095DD00, &type metadata accessor for Shelf);
  v2 = sub_10076F34C();
  if (*(v2 + 16))
  {
    sub_10000A570(v2 + 32, a1);
  }

  else
  {

    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10058D210()
{
  v15 = v0;
  sub_10059129C(&unk_10095DD00, &type metadata accessor for Shelf);
  v1 = sub_10076F34C();
  if (*(v1 + 16))
  {
    sub_10000A570(v1 + 32, v14);

    sub_10000CF78(v14, v14[3]);
    DynamicType = swift_getDynamicType();
    v3 = sub_10076F34C();
    v4 = *(v3 + 16);
    v5 = v4 != 0;
    v6 = v4 - v5;
    if (v4 >= v5)
    {
      v7 = v4 - v5;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7 + 1;
    result = v3 + 40 * v5 + 32;
    while (1)
    {
      v10 = v6 == 0;
      if (!v6)
      {
LABEL_9:

        sub_10000CD74(v14);
        return v10;
      }

      if (!--v8)
      {
        break;
      }

      v11 = result + 40;
      --v6;
      sub_10000A570(result, v13);
      sub_10000CF78(v13, v13[3]);
      v12 = swift_getDynamicType();
      sub_10000CD74(v13);
      result = v11;
      if (v12 != DynamicType)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    return 1;
  }

  return result;
}

uint64_t sub_10058D3B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10058D210();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10058D3E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_10076D1AC();
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_10095DCF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - v6;
  v8 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v8);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_100946720);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v17 = *(v11 + 8);
  v17(v16, v10);
  if (!v43)
  {
    sub_10000CFBC(v42, &unk_10094F720);
    goto LABEL_8;
  }

  sub_10000A5D4(&qword_1009575A0);
  sub_1007619CC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v33 = 1;
    v32 = v41;
    goto LABEL_9;
  }

  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v17(v13, v10);
  if (v42[0] != 1 || (, v18 = sub_10076B8FC(), , !v18))
  {

    goto LABEL_8;
  }

  v19 = sub_10076461C();
  v20 = sub_10076469C();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v7, a1, v20);
  (*(v21 + 56))(v7, 0, 1, v20);
  v22 = v40;
  v23 = v19;
  sub_10058EEB0(v7, v40);
  sub_10000CFBC(v7, &unk_10095DCF0);
  v24 = *(v8 + 24);
  v25 = sub_10076D3DC();
  v26 = v37;
  (*(*(v25 - 8) + 16))(v37, v22 + v24, v25);
  v28 = v38;
  v27 = v39;
  (*(v38 + 104))(v26, enum case for FontSource.useCase(_:), v39);
  v29.super.isa = v23;
  isa = sub_10076D19C(v29).super.isa;
  (*(v28 + 8))(v26, v27);
  v31 = [objc_opt_self() configurationWithFont:isa scale:1];

  sub_10076BE4C();
  sub_10076BDBC();
  v32 = v41;
  sub_100766E2C();

  sub_10059123C(v22, type metadata accessor for SearchActionContentView.Layout.Metrics);
  v33 = 0;
LABEL_9:
  v34 = sub_100766E4C();
  return (*(*(v34 - 8) + 56))(v32, v33, 1, v34);
}

uint64_t sub_10058D960(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_iconView;
  *&v4[v9] = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_linkLabel;
  sub_10076D4BC();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_metrics;
  if (qword_1009408D8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v13 = sub_10000A61C(v12, qword_1009A08F8);
  sub_100590CA4(v13, &v4[v11]);
  v34.receiver = v4;
  v34.super_class = type metadata accessor for SearchActionContentView(0);
  v14 = objc_msgSendSuper2(&v34, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = *&v18[OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_iconView];
  sub_10000A5D4(&unk_100942870);
  v20 = swift_allocObject();
  v33 = xmmword_1007841E0;
  *(v20 + 16) = xmmword_1007841E0;
  *(v20 + 32) = v19;
  v21 = *&v18[OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_linkLabel];
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1007841E0;
  *(v22 + 32) = v21;
  sub_10000A5D4(&qword_1009453C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784500;
  *(inited + 32) = v20;
  *(inited + 40) = v22;
  v24 = v19;
  v25 = v21;
  v26 = sub_1006CDE94(inited);
  swift_setDeallocating();
  sub_10000A5D4(&unk_1009453D0);
  result = swift_arrayDestroy();
  if (!(v26 >> 62))
  {
    v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_5;
    }

LABEL_12:

    sub_10058F13C();
    sub_10000A5D4(&unk_100945BF0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100783DD0;
    *(v32 + 32) = sub_10076E3FC();
    *(v32 + 40) = &protocol witness table for UITraitLegibilityWeight;
    sub_100770C6C();

    swift_unknownObjectRelease();

    return v18;
  }

  result = sub_10077158C();
  v28 = result;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v28 >= 1)
  {
    for (i = 0; i != v28; ++i)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v30 = sub_10077149C();
      }

      else
      {
        v30 = *(v26 + 8 * i + 32);
      }

      v31 = v30;
      [v18 addSubview:{v30, v33}];
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id sub_10058DD28(double *a1)
{
  v2 = v1;
  v45 = sub_10076DD3C();
  v4 = *(v45 - 8);
  __chkstk_darwin(v45);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v47 = &v40 - v7;
  __chkstk_darwin(v8);
  v48 = &v40 - v9;
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  v44 = sub_10076D1AC();
  v13 = *(v44 - 8);
  __chkstk_darwin(v44);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = (&v40 - v20);
  v22 = OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_metrics;
  swift_beginAccess();
  sub_100590CA4(&v2[v22], v21);
  v23 = *a1 == *v21 && a1[1] == v21[1];
  if (v23 && a1[2] == v21[2] && (sub_10076D3CC() & 1) != 0 && *(a1 + v16[7]) == *(v21 + v16[7]) && *(a1 + v16[8]) == *(v21 + v16[8]))
  {
    v24 = v16[9];
    v25 = *(a1 + v24);
    v26 = *(v21 + v24);
    result = sub_10059123C(v21, type metadata accessor for SearchActionContentView.Layout.Metrics);
    if (v25 == v26)
    {
      return result;
    }
  }

  else
  {
    sub_10059123C(v21, type metadata accessor for SearchActionContentView.Layout.Metrics);
  }

  v42 = *&v2[OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_iconView];
  v28 = [v2 traitCollection];
  sub_100590CA4(&v2[v22], v18);
  v43 = v12;
  v29 = v45;
  v41 = v22;
  v30 = v16[6];
  v31 = sub_10076D3DC();
  (*(*(v31 - 8) + 16))(v15, &v18[v30], v31);
  v32 = v44;
  (*(v13 + 104))(v15, enum case for FontSource.useCase(_:), v44);
  v33.super.isa = v28;
  isa = sub_10076D19C(v33).super.isa;
  (*(v13 + 8))(v15, v32);
  v35 = [objc_opt_self() configurationWithFont:isa scale:1];

  sub_10059123C(v18, type metadata accessor for SearchActionContentView.Layout.Metrics);
  sub_10075FC3C();
  [v2 setNeedsLayout];
  sub_100590CA4(&v2[v41], v18);
  v36 = v46;
  sub_10076DD2C();
  v37 = v47;
  sub_10076DCFC();
  v38 = *(v4 + 8);
  v38(v36, v29);
  v39 = v48;
  sub_10076DD1C();
  v38(v37, v29);
  sub_10076DD0C();
  v38(v39, v29);
  sub_10059123C(v18, type metadata accessor for SearchActionContentView.Layout.Metrics);
  sub_10076D49C();
  return [v2 setNeedsLayout];
}

uint64_t sub_10058E230()
{
  v1 = type metadata accessor for SearchActionContentView.Layout(0);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10076D1FC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchActionContentView(0);
  v21.receiver = v0;
  v21.super_class = v9;
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_linkLabel];
  v4[8] = sub_10076D4BC();
  v4[9] = &protocol witness table for UILabel;
  v4[5] = v10;
  v11 = *&v0[OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_iconView];
  v4[3] = sub_10075FD2C();
  v4[4] = &protocol witness table for UIView;
  *v4 = v11;
  v12 = OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_metrics;
  swift_beginAccess();
  sub_100590CA4(&v0[v12], v4 + *(v2 + 32));
  v13 = v10;
  v14 = v11;
  sub_10076422C();
  sub_10058E41C(v15, v16, v17, v18);
  sub_10059123C(v4, type metadata accessor for SearchActionContentView.Layout);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10058E41C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  MinX = CGRectGetMinX(*&a1);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MinY = CGRectGetMinY(v23);
  v12 = v4 + *(type metadata accessor for SearchActionContentView.Layout(0) + 24);
  v13 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v14 = *(v12 + *(v13 + 28));
  v15 = MinY + v14;
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  Width = CGRectGetWidth(v24);
  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  v17 = CGRectGetHeight(v25) - v14 - *(v12 + *(v13 + 32));
  sub_100016E2C(v5, &v19, &unk_10094DA00);
  if (v20)
  {
    sub_100012498(&v19, v21);
    sub_10000CF78(v21, v22);
    sub_10076D2BC();
    sub_10000CF78(v21, v22);
    v26.origin.x = MinX;
    v26.origin.y = v15;
    v26.size.width = Width;
    v26.size.height = v17;
    CGRectGetMinX(v26);
    v27.origin.y = v15;
    v27.origin.x = MinX;
    v27.size.width = Width;
    v27.size.height = v17;
    CGRectGetMidY(v27);
    sub_100770A4C();
    sub_10076D23C();
    sub_10000CD74(v21);
  }

  else
  {
    sub_10000CFBC(&v19, &unk_10094DA00);
  }

  sub_10000CF78((v5 + 40), *(v5 + 64));
  sub_10076D2AC();
  sub_10000CF78((v5 + 40), *(v5 + 64));
  v28.origin.y = v15;
  v28.origin.x = MinX;
  v28.size.width = Width;
  v28.size.height = v17;
  CGRectGetMidY(v28);
  sub_100770A4C();
  sub_10076D23C();
  return sub_10076D1BC();
}

double sub_10058E774(void *a1, double a2)
{
  v5 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v5);
  v21 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D1AC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2 + *(type metadata accessor for SearchActionContentView.Layout(0) + 24);
  v12 = a2 + 0.0;
  sub_100016E2C(v2, &v22, &unk_10094DA00);
  if (v23)
  {
    sub_100012498(&v22, v24);
    sub_10000CF78(v24, v25);
    sub_10076D2BC();
    sub_10000CD74(v24);
  }

  else
  {
    sub_10000CFBC(&v22, &unk_10094DA00);
  }

  sub_10000CF78((v2 + 40), *(v2 + 64));
  v13 = a1;
  sub_10076D2AC();
  v14 = v21;
  sub_100590CA4(v11, v21);
  v15 = *(v5 + 24);
  v16 = sub_10076D3DC();
  (*(*(v16 - 8) + 32))(v10, v14 + v15, v16);
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
  v17 = [v13 traitCollection];
  v25 = v7;
  v26 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(v24);
  (*(v8 + 16))(v18, v10, v7);
  sub_10076C8EC();

  (*(v8 + 8))(v10, v7);
  sub_10000CD74(v24);
  return v12;
}

void sub_10058EAE4(uint64_t a1, uint64_t a2)
{
  v5 = sub_10076BF6C();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10076D1AC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v23 = a2;

    v14 = [v2 traitCollection];
    v15 = &v2[OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_metrics];
    swift_beginAccess();
    sub_100590CA4(v15, v13);
    v16 = *(v10 + 24);
    v17 = sub_10076D3DC();
    (*(*(v17 - 8) + 16))(v9, &v13[v16], v17);
    (*(v7 + 104))(v9, enum case for FontSource.useCase(_:), v6);
    v18.super.isa = v14;
    v19 = v2;
    isa = sub_10076D19C(v18).super.isa;
    (*(v7 + 8))(v9, v6);
    v21 = [objc_opt_self() configurationWithFont:isa scale:1];

    sub_10059123C(v13, type metadata accessor for SearchActionContentView.Layout.Metrics);
    sub_10076BE4C();

    v22 = *&v19[OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_iconView];
    [v22 contentMode];
    sub_10076BFCC();
    sub_10076BF7C();
    sub_10075FCCC();
    [v22 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_1000325F0();
      sub_100770D5C();
    }

    sub_10075FB8C();
    sub_10075FD2C();
    sub_10059129C(&qword_100941820, &type metadata accessor for ArtworkView);
    sub_100760B8C();
  }

  else
  {
    v24.value.super.isa = 0;
    v24.is_nil = 0;
    sub_10075FCEC(v24, v11);
  }
}

uint64_t sub_10058EEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10076C38C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_10095DCF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  if ((sub_10077071C() & 1) == 0)
  {
    sub_100016E2C(a1, v10, &unk_10095DCF0);
    v11 = sub_10076469C();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_10000CFBC(v10, &unk_10095DCF0);
LABEL_8:
      if (qword_1009408D8 != -1)
      {
        swift_once();
      }

      v15 = qword_1009A08F8;
      goto LABEL_11;
    }

    sub_10076460C();
    (*(v12 + 8))(v10, v11);
    sub_10076C21C();
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    if (v14 != 1.0)
    {
      goto LABEL_8;
    }
  }

  if (qword_1009408E0 != -1)
  {
    swift_once();
  }

  v15 = qword_1009A0910;
LABEL_11:
  v16 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v17 = sub_10000A61C(v16, v15);
  return sub_100590CA4(v17, a2);
}

uint64_t sub_10058F13C()
{
  v1 = v0;
  v2 = sub_10076DD3C();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v35 = &v33 - v5;
  __chkstk_darwin(v6);
  v36 = &v33 - v7;
  __chkstk_darwin(v8);
  v37 = &v33 - v9;
  v10 = sub_10076D1AC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v15 = v14 - 8;
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_iconView] setAccessibilityIgnoresInvertColors:{0, v16}];
  sub_10075FC0C();
  v19 = [v0 traitCollection];
  v20 = OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_metrics;
  swift_beginAccess();
  sub_100590CA4(&v0[v20], v18);
  v21 = *(v15 + 32);
  v22 = sub_10076D3DC();
  (*(*(v22 - 8) + 16))(v13, &v18[v21], v22);
  (*(v11 + 104))(v13, enum case for FontSource.useCase(_:), v10);
  v23.super.isa = v19;
  isa = sub_10076D19C(v23).super.isa;
  (*(v11 + 8))(v13, v10);
  v25 = [objc_opt_self() configurationWithFont:isa scale:1];

  sub_10059123C(v18, type metadata accessor for SearchActionContentView.Layout.Metrics);
  sub_10075FC3C();
  [v1 setNeedsLayout];
  sub_100590CA4(v1 + v20, v18);
  v26 = v34;
  sub_10076DD2C();
  v27 = v35;
  sub_10076DCFC();
  v28 = *(v38 + 8);
  v29 = v26;
  v30 = v39;
  v28(v29, v39);
  v31 = v36;
  sub_10076DD1C();
  v28(v27, v30);
  sub_10076DD0C();
  v28(v31, v30);
  sub_10059123C(v18, type metadata accessor for SearchActionContentView.Layout.Metrics);
  return sub_10076D49C();
}

id sub_10058F560()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchActionContentView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10058F624()
{
  result = type metadata accessor for SearchActionContentView.Layout.Metrics(319);
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

uint64_t sub_10058F6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10058F7B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10058F87C()
{
  sub_100102D10();
  if (v0 <= 0x3F)
  {
    sub_10058F918();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SearchActionContentView.Layout.Metrics(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10058F918()
{
  result = qword_100953E00;
  if (!qword_100953E00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100953E00);
  }

  return result;
}

uint64_t sub_10058F990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_10076D3DC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_10058FA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_10076D3DC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_10058FA98()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_10076D3DC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_10058FB80(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  sub_10000DB18(v7, a2);
  v8 = sub_10000A61C(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D3DC();
  v10 = sub_10000A61C(v9, a4);
  (*(*(v9 - 8) + 16))(v8 + v7[6], v10, v9);
  __asm { FMOV            V0.2D, #21.0 }

  *v8 = result;
  v8[1].n128_u64[0] = 0x4024000000000000;
  *(v8->n128_u64 + v7[7]) = 0x401C000000000000;
  *(v8->n128_u64 + v7[8]) = 0x4018000000000000;
  *(v8->n128_u64 + v7[9]) = 0x404A800000000000;
  return result;
}

BOOL sub_10058FC9C(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] == a2[2])
  {
    v6 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
    if ((sub_10076D3CC() & 1) != 0 && *(a1 + v6[7]) == *(a2 + v6[7]) && *(a1 + v6[8]) == *(a2 + v6[8]))
    {
      return *(a1 + v6[9]) == *(a2 + v6[9]);
    }
  }

  return 0;
}

double sub_10058FD5C(uint64_t a1)
{
  v2 = sub_10076C38C();
  v82 = *(v2 - 8);
  __chkstk_darwin(v2);
  v81 = v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for SearchActionContentView.Layout(0);
  __chkstk_darwin(v80);
  v5 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076DD3C();
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v70 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v71 = v63 - v9;
  __chkstk_darwin(v10);
  v73 = v63 - v11;
  __chkstk_darwin(v12);
  v74 = v63 - v13;
  v14 = sub_10076DA7C();
  v75 = *(v14 - 8);
  v76 = v14;
  __chkstk_darwin(v14);
  v72 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_10076D1AC();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v17 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_10095DCF0);
  __chkstk_darwin(v18 - 8);
  v20 = v63 - v19;
  v21 = sub_10000A5D4(&unk_1009428D0);
  __chkstk_darwin(v21 - 8);
  v23 = v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v63 - v25;
  v27 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v27);
  v77 = v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007619CC();
  sub_10059129C(&unk_10094CD60, &type metadata accessor for SearchAdAction);
  sub_10076332C();
  if (!v84[0])
  {
    return 0.0;
  }

  v29 = sub_10076B8EC();
  if (v30)
  {
    v63[0] = v30;
    v63[1] = v29;
    v64 = v2;
    v65 = v5;
    v31 = sub_10076341C();
    v32 = *(v31 - 8);
    (*(v32 + 16))(v26, a1, v31);
    (*(v32 + 56))(v26, 0, 1, v31);
    swift_getKeyPath();
    v66 = a1;
    sub_10076338C();

    v33 = v84[0];
    sub_100016E2C(v26, v23, &unk_1009428D0);
    if ((*(v32 + 48))(v23, 1, v31) == 1)
    {
      sub_10000CFBC(v23, &unk_1009428D0);
      v34 = 1;
    }

    else
    {
      sub_1007632FC();
      (*(v32 + 8))(v23, v31);
      v34 = 0;
    }

    v36 = sub_10076469C();
    (*(*(v36 - 8) + 56))(v20, v34, 1, v36);
    v37 = v77;
    sub_10058EEB0(v20, v77);

    sub_10000CFBC(v20, &unk_10095DCF0);
    sub_10000CFBC(v26, &unk_1009428D0);
    swift_getKeyPath();
    sub_10076338C();

    v38 = v84[0];
    v39 = *(v27 + 24);
    v40 = sub_10076D3DC();
    (*(*(v40 - 8) + 16))(v17, v37 + v39, v40);
    v41 = v67;
    v42 = v68;
    (*(v67 + 104))(v17, enum case for FontSource.useCase(_:), v68);
    v43.super.isa = v38;
    isa = sub_10076D19C(v43).super.isa;
    (*(v41 + 8))(v17, v42);
    v45 = [objc_opt_self() configurationWithFont:isa scale:1];

    v46 = sub_10076B8FC();

    v69 = v45;
    if (v46)
    {
      v47 = v45;
      sub_10076BE4C();
    }

    v48 = sub_10076DDDC();
    swift_allocObject();
    v49 = sub_10076DDBC();
    v50 = v70;
    sub_10076DD2C();
    v51 = v71;
    sub_10076DCFC();
    v52 = *(v78 + 8);
    v53 = v37;
    v54 = v79;
    v52(v50, v79);
    v55 = v73;
    sub_10076DD1C();
    v52(v51, v54);
    sub_10076DD0C();
    v52(v55, v54);
    sub_10076DA5C();
    v56 = v72;
    sub_10076DA9C();
    sub_10076DA4C();
    (*(v75 + 8))(v56, v76);
    v57 = v65;
    sub_10000A570(v84, (v65 + 5));
    v57[3] = v48;
    v57[4] = &protocol witness table for LayoutViewPlaceholder;
    *v57 = v49;
    sub_100590CA4(v53, v57 + *(v80 + 24));
    swift_getKeyPath();

    v58 = v81;
    sub_10076338C();

    sub_10076C2FC();
    v60 = v59;
    (*(v82 + 8))(v58, v64);
    swift_getKeyPath();
    sub_10076338C();

    sub_10058E774(v83, v60);
    v35 = v61;

    swift_unknownObjectRelease();
    sub_10059123C(v57, type metadata accessor for SearchActionContentView.Layout);
    sub_10000CD74(v84);
    sub_10059123C(v53, type metadata accessor for SearchActionContentView.Layout.Metrics);
  }

  else
  {

    return 0.0;
  }

  return v35;
}

uint64_t sub_1005907A4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10000A5D4(&unk_10095DCF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v33 - v6;
  v8 = sub_10000A5D4(&unk_1009428D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v14 - 8);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = &v33 - v18;
  sub_1007619CC();
  sub_10059129C(&unk_10094CD60, &type metadata accessor for SearchAdAction);
  result = sub_10076332C();
  if (v37)
  {
    v34 = a1;
    v35 = ObjectType;
    v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_linkLabel];

    sub_10076B8EC();
    if (v22)
    {
      v23 = sub_10076FF6C();
    }

    else
    {
      v23 = 0;
    }

    [v21 setText:v23];

    v24 = sub_10076B8BC();

    v36 = v16;
    if ((v24 & 2) != 0)
    {
      [v21 _setTextColorFollowsTintColor:1];
    }

    else
    {
      [v21 _setTextColorFollowsTintColor:0];
      sub_1000325F0();
      v25 = sub_100770CFC();
      [v21 setTextColor:v25];
    }

    v26 = sub_10076341C();
    v27 = *(v26 - 8);
    (*(v27 + 16))(v13, v34, v26);
    (*(v27 + 56))(v13, 0, 1, v26);
    v28 = [v2 traitCollection];
    sub_100016E2C(v13, v10, &unk_1009428D0);
    if ((*(v27 + 48))(v10, 1, v26) == 1)
    {
      sub_10000CFBC(v10, &unk_1009428D0);
      v29 = 1;
    }

    else
    {
      sub_1007632FC();
      (*(v27 + 8))(v10, v26);
      v29 = 0;
    }

    v30 = sub_10076469C();
    (*(*(v30 - 8) + 56))(v7, v29, 1, v30);
    sub_10058EEB0(v7, v19);

    sub_10000CFBC(v7, &unk_10095DCF0);
    sub_10000CFBC(v13, &unk_1009428D0);
    v31 = OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_metrics;
    swift_beginAccess();
    v32 = v36;
    sub_100590CA4(v2 + v31, v36);
    swift_beginAccess();
    sub_100590D08(v19, v2 + v31);
    swift_endAccess();
    sub_10058DD28(v32);
    sub_10059123C(v32, type metadata accessor for SearchActionContentView.Layout.Metrics);
    sub_10059123C(v19, type metadata accessor for SearchActionContentView.Layout.Metrics);
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_100590CA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100590D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100590D6C(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000A5D4(&unk_10095DCF0);
  __chkstk_darwin(v5 - 8);
  v7 = v27 - v6;
  v8 = sub_10000A5D4(&unk_1009428D0);
  __chkstk_darwin(v8 - 8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v27 - v12;
  v14 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v14 - 8);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007619CC();
  sub_10059129C(&unk_10094CD60, &type metadata accessor for SearchAdAction);
  result = sub_10076332C();
  if (v28)
  {

    v18 = sub_10076B8FC();

    if (v18)
    {
      v27[0] = v18;
      v27[1] = v2;
      v27[2] = a2;
      v19 = sub_10076341C();
      v20 = *(v19 - 8);
      (*(v20 + 16))(v13, a1, v19);
      (*(v20 + 56))(v13, 0, 1, v19);
      swift_getKeyPath();
      sub_10076338C();

      v21 = v28;
      sub_100016E2C(v13, v10, &unk_1009428D0);
      if ((*(v20 + 48))(v10, 1, v19) == 1)
      {
        sub_10000CFBC(v10, &unk_1009428D0);
        v22 = 1;
      }

      else
      {
        sub_1007632FC();
        (*(v20 + 8))(v10, v19);
        v22 = 0;
      }

      v23 = sub_10076469C();
      (*(*(v23 - 8) + 56))(v7, v22, 1, v23);
      sub_10058EEB0(v7, v16);

      sub_10000CFBC(v7, &unk_10095DCF0);
      sub_10000CFBC(v13, &unk_1009428D0);
      v24 = sub_10076BFBC();
      sub_10000A5D4(&unk_100942870);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1007841E0;
      *(v25 + 32) = v24;

      v26._rawValue = v25;
      sub_100760BAC(v26);

      return sub_10059123C(v16, type metadata accessor for SearchActionContentView.Layout.Metrics);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100591204@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10058D210();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10059123C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10059129C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1005912E4()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_iconView;
  *(v0 + v1) = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_linkLabel;
  sub_10076D4BC();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_metrics;
  if (qword_1009408D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v5 = sub_10000A61C(v4, qword_1009A08F8);
  sub_100590CA4(v5, v0 + v3);
  sub_10077156C();
  __break(1u);
}

uint64_t type metadata accessor for SearchFocusLayoutSectionProvider()
{
  result = qword_10095DD18;
  if (!qword_10095DD18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10059148C()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    v2 = sub_10077158C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[1];
  if (v3 != v2)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = sub_10077149C();
    }

    else
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_14:
        __break(1u);
        return;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    if (!__OFADD__(v3, 1))
    {
      v0[1] = v3 + 1;
      v6 = v0[2];
      v8 = v4;
      v6(&v7, &v8);

      return;
    }

    goto LABEL_13;
  }
}

uint64_t sub_1005915C8(uint64_t a1, void *a2)
{
  v72 = a2;
  v3 = sub_10000A5D4(&qword_100949DF0);
  __chkstk_darwin(v3 - 8);
  v74 = &v59 - v4;
  v5 = sub_10000A5D4(&qword_100954450);
  __chkstk_darwin(v5 - 8);
  v75 = &v59 - v6;
  v76 = sub_10000A5D4(&qword_100954458);
  v73 = *(v76 - 8);
  __chkstk_darwin(v76);
  v71 = &v59 - v7;
  v8 = sub_10075D9EC();
  __chkstk_darwin(v8 - 8);
  v9 = sub_100760A5C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_100954460);
  __chkstk_darwin(v13 - 8);
  v15 = &v59 - v14;
  v16 = sub_10000A5D4(&qword_100942698);
  __chkstk_darwin(v16 - 8);
  v18 = &v59 - v17;
  v19 = sub_10075D99C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v69 = &v59 - v24;
  __chkstk_darwin(v25);
  v70 = &v59 - v26;
  v27 = sub_1007609FC();
  if (!v28)
  {
    return 0;
  }

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {

    return 0;
  }

  v67 = v27;
  v68 = v28;
  sub_100760A1C();
  if ((*(v10 + 48))(v15, 1, v9) != 1)
  {
    if (qword_100941350 != -1)
    {
      swift_once();
    }

    v59 = qword_1009A2700;
    if (qword_100941358 != -1)
    {
      swift_once();
    }

    v63 = qword_1009A2708;
    (*(v10 + 16))(v12, v15, v9);
    v31 = (*(v10 + 88))(v12, v9);
    v66 = a1;
    v65 = v20;
    v64 = v10;
    v61 = v9;
    if (v31 == enum case for SearchEntity.developers(_:))
    {
      v62 = "Search.ResultsTitle.InStories";
      v32 = 0xD000000000000020;
    }

    else
    {
      if (v31 != enum case for SearchEntity.stories(_:))
      {
        if (v31 == enum case for SearchEntity.arcade(_:))
        {
          v62 = "Search.ResultsTitle.InWatch";
          v33 = 0xD00000000000001CLL;
        }

        else
        {
          if (v31 != enum case for SearchEntity.watch(_:))
          {
            result = sub_10077156C();
            __break(1u);
            return result;
          }

          v62 = "must be handled.";
          v33 = 0xD00000000000001BLL;
        }

        v60 = v33;
        goto LABEL_23;
      }

      v62 = "Search.ResultsTitle.InArcade";
      v32 = 0xD00000000000001DLL;
    }

    v60 = v32;
LABEL_23:
    sub_10000A5D4(&unk_100954470);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100783DD0;
    *(inited + 32) = 0x745F686372616573;
    *(inited + 40) = 0xEB000000006D7265;
    v35 = v68;
    *(inited + 48) = v67;
    *(inited + 56) = v35;

    v36 = sub_1000FD520(inited);
    swift_setDeallocating();
    sub_10000CFBC(inited + 32, &qword_100961DD0);
    v79._object = (v62 | 0x8000000000000000);
    v79._countAndFlagsBits = v60;
    v37._rawValue = v36;
    sub_1007622DC(v79, v37);

    sub_10075D9DC();
    sub_10075D9AC();
    v38 = v72;
    v78[0] = v72;
    sub_100016BD0();
    v39 = v38;
    sub_10075D9BC();
    v40 = v63;
    v78[0] = v63;
    sub_10037C8FC();
    v41 = v40;
    sub_10075D9BC();
    v78[0] = v67;
    v78[1] = v35;
    v42 = sub_10075DE9C();
    v43 = v74;
    (*(*(v42 - 8) + 56))(v74, 1, 1, v42);
    sub_100594EFC(&unk_100954490, &type metadata accessor for AttributedString);
    sub_10002564C();
    v44 = v75;
    sub_10075DA9C();
    sub_10000CFBC(v43, &qword_100949DF0);
    if ((*(v73 + 48))(v44, 1, v76) == 1)
    {
      v45 = &qword_100954450;
    }

    else
    {
      v46 = v44;
      v44 = v71;
      sub_10037C950(v46, v71);
      v47 = v59;
      v48 = v59;
      sub_10037C9C0();
      v49 = sub_10075D9CC();
      v77 = v47;
      sub_10075DA2C();
      v49(v78, 0);
      v45 = &qword_100954458;
    }

    sub_10000CFBC(v44, v45);
    v50 = v64;
    v51 = v61;
    v52 = v65;
    v53 = *(v65 + 32);
    v53(v18, v22, v19);
    (*(v52 + 56))(v18, 0, 1, v19);
    (*(v50 + 8))(v15, v51);
    if ((*(v52 + 48))(v18, 1, v19) != 1)
    {

      v57 = v70;
      v53(v70, v18, v19);
      sub_100016F40(0, &qword_1009544A0);
      (*(v52 + 16))(v69, v57, v19);
      v58 = sub_10077076C();
      (*(v52 + 8))(v57, v19);
      return v58;
    }

    goto LABEL_27;
  }

  sub_10000CFBC(v15, &unk_100954460);
  (*(v20 + 56))(v18, 1, 1, v19);
LABEL_27:
  sub_10000CFBC(v18, &qword_100942698);
  v54 = sub_10076B8EC();
  if (!v55)
  {
    return v67;
  }

  v56 = v54;

  return v56;
}

uint64_t sub_100592098(uint64_t a1)
{
  v2 = v1;
  sub_10000A570(a1, v9);
  type metadata accessor for SearchLandingLayoutSectionProvider();
  swift_allocObject();
  sub_10000A570(v9, v8);
  sub_10000A570(v8, v7);

  v4 = sub_1007697CC();
  sub_10000CD74(v8);
  sub_10000CD74(v9);
  *(v2 + qword_10095DD10) = v4;
  sub_10000A570(a1, v9);
  sub_10000A570(v9, v8);
  v5 = sub_1007697CC();
  sub_10000CD74(a1);
  sub_10000CD74(v9);
  return v5;
}

id sub_100592198(char **a1, uint64_t (*a2)(void), void (*a3)(char *, uint64_t), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v237 = a8;
  v232 = a7;
  v228 = a6;
  v229 = a5;
  v230 = a4;
  v251 = a3;
  v252 = a2;
  v253 = a10;
  v236 = a9;
  v11 = sub_10076F2EC();
  __chkstk_darwin(v11 - 8);
  v239 = (&v224 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_10076341C();
  v245 = *(v13 - 8);
  v246 = v13;
  __chkstk_darwin(v13);
  v240 = (&v224 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = &v224 - v16;
  v226 = sub_10076C38C();
  v227 = *(v226 - 8);
  __chkstk_darwin(v226);
  v225 = &v224 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000A5D4(&unk_10095DCF0);
  __chkstk_darwin(v19 - 8);
  v231 = &v224 - v20;
  v21 = sub_10076B5BC();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v235 = &v224 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v249 = &v224 - v25;
  __chkstk_darwin(v26);
  v28 = &v224 - v27;
  v29 = sub_10000A5D4(&unk_100946720);
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  *&v234 = &v224 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v224 - v33;
  __chkstk_darwin(v35);
  v238 = &v224 - v36;
  __chkstk_darwin(v37);
  v39 = &v224 - v38;
  v233 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v40 = *(v30 + 8);
  v243 = v29;
  v242 = v30 + 8;
  v241 = v40;
  v40(v39, v29);
  v247 = v28;
  v248 = v22;
  v43 = *(v22 + 88);
  v42 = (v22 + 88);
  v41 = v43;
  v244 = v21;
  v44 = (v43)(v28, v21);
  if (v44 == enum case for Shelf.ContentType.singleColumnList(_:) || v44 == enum case for Shelf.ContentType.twoColumnList(_:))
  {
    v64 = v252();
    v65 = *(v64 + 16);
    v66 = _swiftEmptyArrayStorage;
    if (v65)
    {
      v254 = _swiftEmptyArrayStorage;
      sub_1004BBAA4(0, v65, 0);
      v249 = *(v245 + 16);
      v67 = (*(v245 + 80) + 32) & ~*(v245 + 80);
      v224 = v64;
      v68 = v64 + v67;
      v235 = "outSectionProvider";
      v69 = *(v245 + 72);
      v247 = v245 + 8;
      v248 = v69;
      v234 = xmmword_100783DD0;
      v66 = v254;
      v70 = v246;
      v71 = v240;
      v245 += 16;
      do
      {
        (v249)(v71, v68, v70);
        sub_1007697DC();
        sub_10000CF78(&aBlock, v258);
        if (sub_10076A3CC() && swift_conformsToProtocol2())
        {
          sub_10000CD74(&aBlock);
          sub_10076571C();
          v73 = v72;
        }

        else
        {
          sub_10000CD74(&aBlock);
          if (qword_1009412D8 != -1)
          {
            swift_once();
          }

          v252 = sub_10076FD4C();
          v251 = sub_10000A61C(v252, qword_1009A25D0);
          sub_10000A5D4(&unk_100942A60);
          sub_10076F33C();
          *(swift_allocObject() + 16) = v234;
          sub_10076F2DC();
          v261._object = (v235 | 0x8000000000000000);
          v261._countAndFlagsBits = 0xD000000000000047;
          sub_10076F2CC(v261);
          swift_getKeyPath();
          v74 = v238;
          sub_10076338C();

          swift_getKeyPath();
          v258 = v244;
          sub_10000DB7C(&aBlock);
          v75 = v243;
          sub_10076F49C();

          v76 = v75;
          v71 = v240;
          v241(v74, v76);
          sub_10076F29C();
          sub_10000CFBC(&aBlock, &unk_1009434C0);
          v262._countAndFlagsBits = 0;
          v262._object = 0xE000000000000000;
          sub_10076F2CC(v262);
          sub_10076F2FC();
          sub_10076FBEC();

          v73 = 0;
          v70 = v246;
        }

        (*v247)(v71, v70);
        v254 = v66;
        v78 = v66[2];
        v77 = v66[3];
        if (v78 >= v77 >> 1)
        {
          sub_1004BBAA4((v77 > 1), v78 + 1, 1);
          v66 = v254;
        }

        v66[2] = v78 + 1;
        v66[v78 + 4] = v73;
        v68 += v248;
        --v65;
      }

      while (v65);
      v49 = v233;
      v79 = v231;
    }

    else
    {
      v49 = v233;
      v79 = v231;
    }

    v89 = COERCE_DOUBLE(sub_10023428C(v66));
    v90 = v229;
    if ((v91 & 1) != 0 || v89 <= 0.0)
    {

      goto LABEL_31;
    }

    v92 = sub_1007665AC();

    v93 = [objc_opt_self() sectionWithGroup:v92];
    swift_getObjectType();
    sub_100768A7C();
    sub_100016F40(0, &qword_100948C70);
    isa = sub_1007701AC().super.isa;

    [v93 setBoundarySupplementaryItems:isa];

    sub_100768A6C();
    sub_100016F40(0, &qword_100949DE8);
    v95 = sub_1007701AC().super.isa;

    [v93 setDecorationItems:v95];

    v96 = v225;
    sub_10076460C();
    sub_10076C31C();
    v98 = v97;
    v100 = v99;
    (*(v227 + 8))(v96, v226);
    sub_10000CF78(v90, v90[3]);
    sub_100768A3C();
    v102 = v101;
    sub_10000CF78(v90, v90[3]);
    sub_100768A5C();
    [v93 setContentInsets:{v102, v98, v103, v100}];
    sub_1007697FC();
    v104 = sub_1007701DC();
    v106 = v105;

    if (v104)
    {
      v259 = v104;
      v260 = v106;
      aBlock = _NSConcreteStackBlock;
      v256 = 1107296256;
      v257 = sub_100751F08;
      v258 = &unk_10089A770;
      v104 = _Block_copy(&aBlock);
    }

    [v93 setVisibleItemsInvalidationHandler:{v104, v224}];
    _Block_release(v104);

    return v93;
  }

  if (v44 != enum case for Shelf.ContentType.scrollablePill(_:))
  {
    v240 = &v224;
    v250 = *(v250 + qword_10095DD10);
    __chkstk_darwin(v44);
    v47 = v233;
    sub_10076468C();
    swift_getKeyPath();
    v80 = v249;
    v81 = v243;
    sub_10076F49C();

    v241(v34, v81);
    v239 = v41;
    v82 = (v41)(v80, v244);
    v83 = v230;
    if (v82 == enum case for Shelf.ContentType.action(_:))
    {
      v84 = ASKDeviceTypeGetCurrent();
      v85 = sub_10076FF9C();
      v87 = v86;
      if (v85 == sub_10076FF9C() && v87 == v88)
      {
        goto LABEL_23;
      }

      v145 = sub_10077167C();

      if (v145)
      {
        goto LABEL_46;
      }

      v84 = ASKDeviceTypeGetCurrent();
      v182 = sub_10076FF9C();
      v184 = v183;
      if (v182 == sub_10076FF9C() && v184 == v185)
      {
LABEL_23:

LABEL_46:
        v146 = (v252)(v82);
        v147 = *(v146 + 16);
        v42 = _swiftEmptyArrayStorage;
        v243 = v147;
        if (v147)
        {
          aBlock = _swiftEmptyArrayStorage;
          sub_1004BBAA4(0, v147, 0);
          v148 = type metadata accessor for SearchActionContentView(0);
          v42 = aBlock;
          v149 = v245 + 16;
          v251 = *(v245 + 16);
          v252 = v148;
          v150 = *(v245 + 80);
          v245 = v146;
          v151 = v146 + ((v150 + 32) & ~v150);
          v152 = *(v149 + 56);
          v153 = (v149 - 8);
          v154 = v147;
          do
          {
            v155 = v246;
            (v251)(v17, v151, v246);
            v156 = sub_10058FD5C(v17);
            (*v153)(v17, v155);
            aBlock = v42;
            v158 = v42[2];
            v157 = v42[3];
            if (v158 >= v157 >> 1)
            {
              sub_1004BBAA4((v157 > 1), v158 + 1, 1);
              v42 = aBlock;
            }

            v42[2] = (v158 + 1);
            *&v42[v158 + 4] = v156;
            v151 += v152;
            --v154;
          }

          while (v154);
          v47 = v233;
          v159 = v231;
        }

        else
        {
LABEL_64:
          v159 = v231;
        }

        v166 = COERCE_DOUBLE(sub_10023428C(v42));
        if ((v167 & 1) == 0 && v166 > 0.0)
        {
          v168 = *&v166;
          v169 = v225;
          sub_10076460C();
          sub_10076C21C();
          v171 = v170;
          v172 = v227 + 8;
          v173 = *(v227 + 8);
          v173(v169, v226);
          v227 = v172;
          v251 = v173;
          if (v171 < 2.0)
          {
            goto LABEL_89;
          }

          v174 = v243;
          if (!v243)
          {
            goto LABEL_89;
          }

          v175 = sub_10077023C();
          *(v175 + 16) = v174;
          v176 = (v175 + 32);
          if (v174 >= 4)
          {
            v177 = v174 & 0x7FFFFFFFFFFFFFFCLL;
            v176 += v174 & 0x7FFFFFFFFFFFFFFCLL;
            v200 = vdupq_n_s64(v168);
            v201 = (v175 + 48);
            v202 = v174 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v201[-1] = v200;
              *v201 = v200;
              v201 += 2;
              v202 -= 4;
            }

            while (v202);
            if (v174 == v177)
            {
              goto LABEL_89;
            }
          }

          else
          {
            v177 = 0;
          }

          v203 = v174 - v177;
          do
          {
            *v176++ = v168;
            --v203;
          }

          while (v203);
LABEL_89:
          v204 = sub_1007665AC();

          v205 = objc_opt_self();
          v252 = v204;
          v93 = [v205 sectionWithGroup:v204];
          swift_getObjectType();
          v206 = v229;
          sub_100768A7C();
          sub_100016F40(0, &qword_100948C70);
          v207 = sub_1007701AC().super.isa;

          [v93 setBoundarySupplementaryItems:v207];

          sub_100768A6C();
          sub_100016F40(0, &qword_100949DE8);
          v208 = sub_1007701AC().super.isa;

          [v93 setDecorationItems:v208];

          v209 = v225;
          sub_10076460C();
          sub_10076C31C();
          v211 = v210;
          v213 = v212;
          v251(v209, v226);
          sub_10000CF78(v206, v206[3]);
          sub_100768A3C();
          v215 = v214;
          sub_10000CF78(v206, v206[3]);
          sub_100768A5C();
          [v93 setContentInsets:{v215, v211, v216, v213}];
          sub_1007697FC();
          v217 = sub_1007701DC();
          v219 = v218;

          if (v217)
          {
            v259 = v217;
            v260 = v219;
            aBlock = _NSConcreteStackBlock;
            v256 = 1107296256;
            v257 = sub_100751F08;
            v258 = &unk_10089A748;
            v217 = _Block_copy(&aBlock);
          }

          v181 = v247;
          v180 = v248;
          [v93 setVisibleItemsInvalidationHandler:v217];
          _Block_release(v217);

          goto LABEL_92;
        }

        sub_100016F40(0, &unk_1009632E0);
        v178 = sub_10076469C();
        v179 = *(v178 - 8);
        (*(v179 + 16))(v159, v47, v178);
        (*(v179 + 56))(v159, 0, 1, v178);
        v93 = sub_10077096C();
        sub_10000CFBC(v159, &unk_10095DCF0);
        v181 = v247;
        v180 = v248;
        goto LABEL_92;
      }

      v186 = sub_10077167C();

      if (v186)
      {
        goto LABEL_46;
      }
    }

    v246 = &v224;
    __chkstk_darwin(v82);
    __chkstk_darwin(v187);
    sub_10076980C();
    v188 = sub_10076981C();
    v189 = v83;
    v190 = v229;
    v191 = v237;
    v93 = v188(v47, sub_1000F79F4, &v224 - 4, v189, v229, v228, v232, v237, v236, v253);
    v192 = v234;
    sub_10076468C();
    swift_getKeyPath();
    v193 = v235;
    v194 = v243;
    sub_10076F49C();

    v241(v192, v194);
    v195 = v239(v193, v244);
    if (v195 == enum case for Shelf.ContentType.ribbonBar(_:))
    {
      v196 = v252();
      v197 = sub_10075203C(v47, v196, v230, v190, v228, v232, v191, v236, v253);

      v93 = v197;
      v180 = v248;
    }

    else
    {
      v180 = v248;
      if (v195 != enum case for Shelf.ContentType.ribbonFlow(_:))
      {
        v181 = v247;
        if (v195 == enum case for Shelf.ContentType.smallContactCard(_:))
        {
          [v93 setOrthogonalScrollingBehavior:2];
        }

        else
        {
          (*(v248 + 8))(v235, v244);
        }

        goto LABEL_92;
      }

      v198 = v252();
      v199 = sub_100753380(v47, v198, v230, v190, v228, v232, v237, v236, v253);

      v93 = v199;
    }

    v181 = v247;
LABEL_92:
    v220 = *(v180 + 8);
    v221 = v244;
    v220(v249, v244);
    v220(v181, v221);
    return v93;
  }

  v45 = v252();
  v46 = *(v45 + 16);
  v47 = &off_100911000;
  v48 = &off_100911000;
  v49 = v233;
  if (v46)
  {
    aBlock = _swiftEmptyArrayStorage;
    sub_1007714EC();
    v42 = objc_opt_self();
    v252 = objc_opt_self();
    v251 = objc_opt_self();
    ObjectType = swift_getObjectType();
    v51 = v245 + 16;
    v248 = *(v245 + 16);
    v249 = ObjectType;
    v52 = *(v245 + 80);
    v245 = v45;
    v53 = v45 + ((v52 + 32) & ~v52);
    v247 = *(v51 + 56);
    v54 = v246;
    do
    {
      (v248)(v17, v53, v54);
      v55 = sub_1005942EC(v17, 0, 0, 1);
      v57 = v56;
      v58 = [v42 absoluteDimension:v55];
      v59 = [v42 absoluteDimension:v57];
      v60 = [v252 sizeWithWidthDimension:v58 heightDimension:v59];

      sub_10076815C();
      sub_100016F40(0, &unk_10095DD70);
      v61 = sub_1007701AC().super.isa;

      v62 = [v251 itemWithLayoutSize:v60 supplementaryItems:v61];

      (*(v51 - 8))(v17, v54);
      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
      v53 += v247;
      --v46;
    }

    while (v46);

    v63 = aBlock;
    v49 = v233;
    v48 = &off_100911000;
    v47 = &off_100911000;
  }

  else
  {

    v63 = _swiftEmptyArrayStorage;
  }

  KeyPath = swift_getKeyPath();
  aBlock = v63;
  v256 = 0;
  v257 = sub_100594E60;
  v258 = KeyPath;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  sub_10059148C();
  v252 = (v63 >> 62);
  if (v111)
  {

    swift_bridgeObjectRelease_n();
    v112 = 0.0;
    goto LABEL_39;
  }

  v251 = KeyPath;
  if (v63 >> 62)
  {
    v223 = v110;
    v113 = sub_10077158C();
    v110 = v223;
  }

  else
  {
    v113 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v112 = v110;
  v79 = v256;
  if (v256 == v113)
  {
LABEL_38:

    swift_bridgeObjectRelease_n();
    v49 = v233;
    v48 = &off_100911000;
    v47 = &off_100911000;
LABEL_39:
    v79 = v231;
    if (v252)
    {
      goto LABEL_96;
    }

    if (!*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    goto LABEL_41;
  }

  v49 = v63 & 0xC000000000000001;
  v47 = (v63 & 0xFFFFFFFFFFFFFF8);
  v48 = &selRef__setPocketInsets_;
  while (1)
  {
    if (v49)
    {
      v160 = sub_10077149C();
      v161 = v79 + 1;
      if (__OFADD__(v79, 1))
      {
        goto LABEL_63;
      }

      goto LABEL_57;
    }

    if ((v79 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v79 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_95;
    }

    v160 = v63[v79 + 4];
    v161 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

LABEL_57:
    v162 = v160;
    v42 = [v162 layoutSize];
    v163 = [v42 heightDimension];
    [v163 dimension];
    v165 = v164;

    if (v112 < v165)
    {
      v112 = v165;
    }

    ++v79;
    if (v161 == v113)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  if (!sub_10077158C())
  {
LABEL_31:

    sub_100016F40(0, &unk_1009632E0);
    v107 = sub_10076469C();
    v108 = *(v107 - 8);
    (*(v108 + 16))(v79, v49, v107);
    (*(v108 + 56))(v79, 0, 1, v107);
    v93 = sub_10077096C();
    sub_10000CFBC(v79, &unk_10095DCF0);
    return v93;
  }

LABEL_41:
  if (v112 < 2.22507386e-308)
  {
    goto LABEL_31;
  }

  v114 = objc_opt_self();
  v115 = v225;
  sub_10076460C();
  sub_10076C24C();
  v117 = v116;
  v118 = v227 + 8;
  v119 = *(v227 + 8);
  v119(v115, v226);
  v120 = v119;
  v249 = v119;
  v227 = v118;
  v121 = [v114 estimatedDimension:v117];
  v122 = [v114 v47[246]];
  v123 = [objc_opt_self() v48[247]];

  v124 = objc_opt_self();
  sub_100016F40(0, &qword_100952C70);
  v125 = sub_1007701AC().super.isa;

  v252 = v123;
  v126 = [v124 horizontalGroupWithLayoutSize:v123 subitems:v125];

  v127 = objc_opt_self();
  sub_10076460C();
  sub_10076C2BC();
  v129 = v128;
  v120(v115, v226);
  v130 = [v127 fixedSpacing:v129];
  [v126 setInterItemSpacing:v130];

  v131 = objc_opt_self();
  v251 = v126;
  v93 = [v131 sectionWithGroup:v126];
  swift_getObjectType();
  v132 = v229;
  sub_100768A7C();
  sub_100016F40(0, &qword_100948C70);
  v133 = sub_1007701AC().super.isa;

  [v93 setBoundarySupplementaryItems:v133];

  sub_100768A6C();
  sub_100016F40(0, &qword_100949DE8);
  v134 = sub_1007701AC().super.isa;

  [v93 setDecorationItems:v134];

  sub_10076460C();
  sub_10076C31C();
  v136 = v135;
  v138 = v137;
  (v249)(v115, v226);
  sub_10000CF78(v132, v132[3]);
  sub_100768A3C();
  v140 = v139;
  sub_10000CF78(v132, v132[3]);
  sub_100768A5C();
  [v93 setContentInsets:{v140, v136, v141, v138}];
  [v93 setOrthogonalScrollingBehavior:1];
  sub_1007697FC();
  v142 = sub_1007701DC();
  v144 = v143;

  if (v142)
  {
    v259 = v142;
    v260 = v144;
    aBlock = _NSConcreteStackBlock;
    v256 = 1107296256;
    v257 = sub_100751F08;
    v258 = &unk_10089A798;
    v142 = _Block_copy(&aBlock);
  }

  [v93 setVisibleItemsInvalidationHandler:v142];
  _Block_release(v142);

  return v93;
}

void sub_10059420C(id *a1)
{
  v1 = *a1;
  swift_getAtKeyPath();
}

uint64_t sub_100594274()
{
  sub_10076982C();

  return swift_deallocClassInstance();
}

uint64_t sub_1005942D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1005942EC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v80 = a4;
  v75 = a2;
  v76 = a3;
  v5 = sub_10076C38C();
  v78 = *(v5 - 8);
  __chkstk_darwin(v5);
  v77 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076DA7C();
  v89 = *(v7 - 8);
  __chkstk_darwin(v7);
  v79 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v88 = &v66 - v10;
  v11 = sub_10076D7FC();
  v83 = *(v11 - 8);
  v84 = v11;
  __chkstk_darwin(v11);
  v87 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_10076DD3C();
  v13 = *(v90 - 8);
  __chkstk_darwin(v90);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v66 - v17;
  __chkstk_darwin(v19);
  v21 = &v66 - v20;
  __chkstk_darwin(v22);
  v24 = &v66 - v23;
  sub_100760A4C();
  sub_100594EFC(&unk_100954440, &type metadata accessor for SearchAction);
  sub_10076332C();
  v86 = v102[0];
  if (!v102[0])
  {
    return 0.0;
  }

  v85 = v24;
  v70 = v5;
  v74 = v7;
  swift_getKeyPath();
  sub_10076338C();

  sub_10076DD2C();
  if (qword_10093F868 != -1)
  {
    swift_once();
  }

  v73 = qword_10099D3D8;
  sub_10076DC9C();
  v71 = v13;
  v26 = v13 + 8;
  v25 = *(v13 + 8);
  v27 = v15;
  v28 = v90;
  v25(v27, v90);
  sub_10076DD1C();
  v25(v18, v28);
  v29 = v21;
  v30 = v85;
  sub_10076DD0C();
  v72 = v29;
  v25(v29, v28);
  swift_getKeyPath();
  v82 = a1;
  sub_10076338C();

  v31 = v99;
  v32 = v87;
  sub_10076D7EC();
  sub_10076DCAC();
  sub_10000CF78(v102, v103);
  sub_10076D85C();
  sub_10076D7CC();
  sub_10000CD74(v102);
  sub_10076DCEC();
  sub_10076D77C();
  sub_10076DCCC();
  sub_10076D75C();
  sub_10076DCDC();
  sub_10076D76C();
  sub_10076DCBC();
  sub_10076D74C();

  v33 = sub_10076D7BC();
  v34 = sub_1005915C8(v86, v33);
  v81 = v35;
  v37 = v36;
  LODWORD(v31) = ~v36;

  if (!v31)
  {

    (*(v83 + 8))(v32, v84);
    v25(v30, v90);
    return 0.0;
  }

  v69 = v26;
  (*(v71 + 16))(v72, v30, v90);
  v68 = v37;
  v67 = v25;
  if (v37)
  {
    sub_10037CA28(v34, v81, 1);
    sub_10076DA5C();
    v38 = v79;
    v39 = v34;
    sub_10076DABC();
  }

  else
  {
    sub_10037CA28(v34, v81, 0);
    sub_10076DA5C();
    v38 = v79;
    v39 = v34;
    sub_10076DA9C();
  }

  v41 = v74;
  (*(v89 + 32))(v88, v38, v74);

  v42 = sub_10076B8FC();

  v43 = v73;
  if (v42 && (v44 = [objc_opt_self() configurationWithTextStyle:v73 scale:2], swift_getKeyPath(), sub_10076338C(), , v45 = v102[0], v46 = objc_msgSend(v44, "configurationWithTraitCollection:", v102[0]), v45, v44, v47 = sub_10076044C(), , v46, v47))
  {
    [v47 size];
    v49 = v48;
    v51 = v50;

    *(&v100 + 1) = &type metadata for FixedSizedPlaceholder;
    v101 = sub_100016DD8();
    *&v99 = v49;
    *(&v99 + 1) = v51;
  }

  else
  {
    v101 = 0;
    v99 = 0u;
    v100 = 0u;
  }

  v98[3] = v41;
  v98[4] = &protocol witness table for LabelPlaceholder;
  v52 = sub_10000DB7C(v98);
  (*(v89 + 16))(v52, v88, v41);
  swift_getKeyPath();
  sub_10076338C();

  sub_1007708CC();
  sub_10011E080(&v99, &v95);
  sub_10000A570(v98, v94);
  v94[8] = &type metadata for SearchLinkLayout;
  v94[9] = sub_10017FCFC();
  v53 = swift_allocObject();
  v94[5] = v53;
  v54 = sub_10017FDA0();
  v55 = swift_allocObject();
  sub_10000A570(v94, v55 + 16);
  sub_10011E080(&v95, &v92);
  if (v93)
  {
    sub_100012498(&v92, v91);
    v56 = swift_allocObject();
    sub_100012498(v91, v56 + 16);
    v57 = v43;
    sub_10000CD74(v94);
    sub_10000CFBC(&v95, &unk_10094B230);
    v58 = &type metadata for AutoAdjustingPlaceable;
    v59 = v54;
  }

  else
  {
    v60 = v43;
    sub_10000CD74(v94);
    sub_10000CFBC(&v95, &unk_10094B230);
    v56 = 0;
    v58 = 0;
    v59 = 0;
  }

  v53[2] = v56;
  v53[3] = 0;
  v53[4] = 0;
  v53[5] = v58;
  v53[6] = v59;
  v53[7] = v55;
  v53[10] = &type metadata for AutoAdjustingPlaceable;
  v53[11] = v54;
  v53[12] = v43;
  v53[13] = 0x4014000000000000;
  v96 = sub_10076E04C();
  v97 = &protocol witness table for Margins;
  sub_10000DB7C(&v95);
  sub_10076E03C();
  swift_unknownObjectRelease();
  sub_100012498(&v95, v102);
  sub_10000CD74(v98);
  sub_10000CFBC(&v99, &unk_10094B230);
  if (v80)
  {
    swift_getKeyPath();
    v61 = v77;
    sub_10076338C();

    sub_10076C2FC();
    (*(v78 + 8))(v61, v70);
  }

  swift_getKeyPath();
  sub_10076338C();

  v62 = v99;
  sub_10000CF78(v102, v103);
  sub_10076E0FC();
  v64 = v63;

  sub_10037C8D4(v39, v81, v68);

  v40 = ceil(v64);
  sub_100527790(v102);
  (*(v89 + 8))(v88, v41);
  (*(v83 + 8))(v87, v84);
  v67(v85, v90);
  return v40;
}

id sub_100594D9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 layoutSize];
  *a2 = result;
  return result;
}

id sub_100594DE4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 heightDimension];
  *a2 = result;
  return result;
}

id sub_100594E2C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dimension];
  *a2 = v4;
  return result;
}

uint64_t sub_100594E70()
{
  if (*(v0 + 40))
  {
    sub_10000CD74(v0 + 16);
  }

  sub_10000CD74(v0 + 56);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_100594EC0()
{
  sub_10000CD74(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100594EFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100594F54(uint64_t result)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_media);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_media) = result;
  if (result)
  {
    v6 = result;
    if (v3)
    {
      v5 = v3;
      sub_10076092C();
      sub_10059A958(&unk_10095DE98, &type metadata accessor for ProductMedia);
      swift_retain_n();
      v4 = sub_10076FF1C();

      if (v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:
    [*(v2 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_collectionView) reloadData];
LABEL_9:
  }

  if (v3)
  {
    goto LABEL_8;
  }

  return result;
}

void sub_100595060(uint64_t a1)
{
  if (a1)
  {
    sub_100767D5C();
    sub_10076F64C();

    sub_10076FC1C();
    sub_10076911C();
    swift_allocObject();
    v2 = v6;
    sub_10076912C();
    sub_10076667C();
  }

  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_objectGraph])
  {
    sub_100767D5C();
    sub_10076F64C();

    sub_10076FC1C();
    v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_compoundScrollObserver];
    sub_10076911C();
    swift_allocObject();
    v4 = v6;
    sub_10076912C();
    sub_10076668C();

    v5 = [v1 window];
    if (v5)
    {

      [v3 scrollViewDidScroll:*&v1[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_collectionView]];
    }
  }
}

uint64_t sub_100595228()
{
  if (qword_1009411F8 != -1)
  {
    swift_once();
  }

  v0 = sub_10076D9AC();
  v1 = sub_10000A61C(v0, qword_1009A2368);
  qword_10095DDB8 = v0;
  unk_10095DDC0 = &protocol witness table for StaticDimension;
  v2 = sub_10000DB7C(qword_10095DDA0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_100595320(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_flowLayout;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout()) init];
  v12 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_compoundScrollObserver;
  v13 = objc_allocWithZone(sub_1007666AC());
  *&v4[v12] = sub_10076669C();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_screenshotFetcher] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_media] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_objectGraph] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_fallbackHorizontalViewMargin] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_pageTraits] = 0;
  v14 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_itemLayoutContext;
  v15 = sub_10076341C();
  (*(*(v15 - 8) + 56))(&v5[v14], 1, 1, v15);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_topAccessoryView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_bottomAccessoryView] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_displaysTopAccessoryDivider] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_displaysBottomAccessoryDivider] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_topAccessoryDividerView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_bottomAccessoryDividerView] = 0;
  v16 = &v5[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_screenshotSelectionHandler];
  *v16 = 0;
  v16[1] = 0;
  v17 = [objc_allocWithZone(UICollectionView) initWithFrame:*&v5[v11] collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_collectionView] = v17;
  v36.receiver = v5;
  v36.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  v19 = [v18 contentView];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v20 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_collectionView;
  [*&v18[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_collectionView] setDecelerationRate:UIScrollViewDecelerationRateFast];
  v21 = *&v18[v20];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 clearColor];
  [v23 setBackgroundColor:v24];

  [*&v18[v20] setAllowsSelection:1];
  [*&v18[v20] setAlwaysBounceHorizontal:1];
  [*&v18[v20] setShowsHorizontalScrollIndicator:0];
  [*&v18[v20] setDataSource:v18];
  v25 = *&v18[v20];
  [v25 setDelegate:v18];

  v26 = *&v18[v20];
  type metadata accessor for VideoCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = v26;
  sub_1007708FC();
  v29 = sub_10076FF6C();

  [v28 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v29];

  v30 = *&v18[v20];
  type metadata accessor for ScreenshotCollectionViewCell();
  v31 = swift_getObjCClassFromMetadata();
  v32 = v30;
  sub_1007708FC();
  v33 = sub_10076FF6C();

  [v32 registerClass:v31 forCellWithReuseIdentifier:v33];

  v34 = [v18 contentView];
  [v34 addSubview:*&v18[v20]];

  return v18;
}

id sub_100595798()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v92 = COERCE_DOUBLE(type metadata accessor for DividerView.Style(0));
  __chkstk_darwin(v92);
  v4 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10077164C();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104.receiver = v1;
  v104.super_class = ObjectType;
  objc_msgSendSuper2(&v104, "layoutSubviews", v7);
  v10 = [v1 contentView];
  sub_100016F40(0, &qword_1009441F0);
  sub_10076422C();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v100 = v17;

  v91 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_bottomAccessoryView;
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_bottomAccessoryView];
  v101 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  if (v18)
  {
    v22 = v18;
    [v22 frame];
    v19 = v23;
    v20 = v24;
    if (qword_100940900 != -1)
    {
      swift_once();
    }

    sub_10000CF78(qword_1009A0938, qword_1009A0950);
    sub_1000FF02C();
    sub_10076D40C();
    v21 = v25;

    (*(v6 + 8))(v9, v5);
  }

  v94 = v20;
  v90 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_topAccessoryView;
  v26 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_topAccessoryView];
  v103 = 0.0;
  v27 = 0.0;
  if (v26)
  {
    v28 = v26;
    [v28 frame];
    v101 = v29;
    v103 = v30;
    if (qword_1009408F8 != -1)
    {
      swift_once();
    }

    sub_10000CF78(qword_10095DDF0, qword_10095DE08);
    sub_1000FF02C();
    sub_10076D40C();
    v27 = v31;

    (*(v6 + 8))(v9, v5);
  }

  v86 = v19;
  v95 = v27;
  v89 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_topAccessoryDividerView;
  v32 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_topAccessoryDividerView];
  v33 = 0.0;
  v99 = 0.0;
  v34 = 0.0;
  MinY = 0.0;
  v36 = 0.0;
  if (v32)
  {
    v37 = OBJC_IVAR____TtC20ProductPageExtension11DividerView_style;
    swift_beginAccess();
    sub_100206DD0(v32 + v37, v4);
    v38 = qword_100940940;
    v39 = v32;
    if (v38 != -1)
    {
      swift_once();
    }

    v40 = floor(*&qword_1009A0A00);
    sub_10076D17C();
    sub_10076D9AC();
    sub_10076D40C();
    v42 = v41;
    (*(v6 + 8))(v9, v5);
    v36 = v40 + v42;
    sub_10059945C(v4, type metadata accessor for DividerView.Style);
    v105.origin.x = v12;
    v105.origin.y = v14;
    v105.size.width = v16;
    v43 = v100;
    v105.size.height = v100;
    v34 = CGRectGetMaxX(v105) - v16;
    v106.origin.x = v12;
    v106.origin.y = v14;
    v106.size.width = v16;
    v106.size.height = v43;
    MinY = CGRectGetMinY(v106);

    v33 = v16;
  }

  v93 = v33;
  v102 = MinY;
  v44 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_bottomAccessoryDividerView;
  v45 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_bottomAccessoryDividerView];
  v97 = 0.0;
  v96 = 0.0;
  v98 = 0.0;
  if (v45)
  {
    v46 = OBJC_IVAR____TtC20ProductPageExtension11DividerView_style;
    swift_beginAccess();
    sub_100206DD0(v45 + v46, v4);
    v47 = qword_100940940;
    v48 = v45;
    if (v47 != -1)
    {
      swift_once();
    }

    v49 = floor(*&qword_1009A0A00);
    sub_10076D17C();
    sub_10076D9AC();
    sub_10076D40C();
    v51 = v50;
    (*(v6 + 8))(v9, v5);
    v52 = v49 + v51;
    sub_10059945C(v4, type metadata accessor for DividerView.Style);
    v107.origin.x = v12;
    v107.origin.y = v14;
    v107.size.width = v16;
    v53 = v100;
    v107.size.height = v100;
    v99 = CGRectGetMaxX(v107) - v16;
    v108.origin.x = v12;
    v108.origin.y = v14;
    v108.size.width = v16;
    v108.size.height = v53;
    MaxY = CGRectGetMaxY(v108);

    v98 = v52;
    v97 = MaxY - ceil(v52);
    v96 = v16;
  }

  *&v92 = v16;
  v55 = v14;
  v56 = v90;
  if (*&v1[v90])
  {
    v57 = v12;
    if (qword_1009408E8 != -1)
    {
      swift_once();
    }

    sub_10000CF78(qword_10095DDA0, qword_10095DDB8);
    sub_1000FF02C();
    sub_10076D40C();
    v59 = v58;
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    v57 = v12;
    v59 = 0.0;
  }

  if (qword_1009408F0 != -1)
  {
    swift_once();
  }

  sub_10000CF78(qword_10095DDC8, qword_10095DDE0);
  sub_1000FF02C();
  sub_10076D40C();
  v61 = v60;
  (*(v6 + 8))(v9, v5);
  v87 = v59;
  v85 = v21;
  v62 = v94 + v103 + v21 + v95 + v59 + v61;
  v63 = v34;
  v109.origin.x = v34;
  v109.origin.y = v102;
  v64 = v93;
  v109.size.width = v93;
  v65 = v36;
  v109.size.height = v36;
  v66 = CGRectGetHeight(v109) + v62;
  v110.origin.x = v99;
  v110.origin.y = v97;
  v110.size.width = v96;
  v110.size.height = v98;
  v88 = CGRectGetHeight(v110) + v66;
  v111.origin.x = v57;
  v111.origin.y = v55;
  v67 = *&v92;
  *&v111.size.width = v92;
  v68 = v100;
  v111.size.height = v100;
  MinX = CGRectGetMinX(v111);
  v83 = v63;
  v112.origin.x = v63;
  v112.origin.y = v102;
  v112.size.width = v64;
  v84 = v65;
  v112.size.height = v65;
  v70 = v87 + CGRectGetMaxY(v112);
  v113.origin.x = v57;
  v113.origin.y = v55;
  v113.size.width = v67;
  v113.size.height = v68;
  v71 = CGRectGetMinX(v113);
  v87 = MinX;
  v114.origin.x = MinX;
  v82 = v70;
  v114.origin.y = v70;
  v114.size.width = v101;
  v114.size.height = v103;
  v72 = v95 + CGRectGetMaxY(v114);
  v115.origin.x = v57;
  v115.origin.y = v55;
  v115.size.width = v67;
  v115.size.height = v68;
  Width = CGRectGetWidth(v115);
  v116.origin.x = v57;
  v116.origin.y = v55;
  v116.size.width = v67;
  v116.size.height = v68;
  v74 = CGRectGetHeight(v116) - v88;
  v117.origin.x = v57;
  v117.origin.y = v55;
  v117.size.width = v67;
  v117.size.height = v68;
  v75 = CGRectGetMinX(v117);
  v118.origin.x = v71;
  v118.origin.y = v72;
  v118.size.width = Width;
  v118.size.height = v74;
  v76 = CGRectGetMaxY(v118);
  v77 = *&v1[v89];
  if (v77)
  {
    [v77 setFrame:{v83, v102, v93, v84}];
  }

  v78 = *&v1[v56];
  if (v78)
  {
    [v78 setFrame:{v87, v82, v101, v103}];
  }

  [*&v1[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_collectionView] setFrame:{v71, v72, Width, v74}];
  v79 = *&v1[v91];
  if (v79)
  {
    [v79 setFrame:{v75, v85 + v76, v86, v94}];
  }

  result = *&v1[v44];
  if (result)
  {
    return [result setFrame:{v99, v97, v96, v98}];
  }

  return result;
}

void sub_1005961F4(void *a1, uint64_t *a2)
{
  if (*(v2 + *a1) == 1)
  {
    v4 = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = *a2;
    v6 = *(v2 + *a2);
    if (v6)
    {
      [v6 removeFromSuperview];
      v7 = *(v2 + v5);
    }

    else
    {
      v7 = 0;
    }

    *(v2 + v5) = v4;
    v11 = v4;

    sub_100596304(a2);
  }

  else
  {
    v8 = *a2;
    v9 = *(v2 + *a2);
    if (v9)
    {
      [v9 removeFromSuperview];
      v10 = *(v2 + v8);
    }

    else
    {
      v10 = 0;
    }

    *(v2 + v8) = 0;

    sub_100596304(a2);
  }
}

id sub_100596304(void *a1)
{
  v3 = type metadata accessor for DividerView.Style(0);
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[*a1];
  if (!v7)
  {
    return [v1 setNeedsLayout];
  }

  v8 = qword_100940950;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A61C(v3, qword_1009A0A20);
  sub_100206DD0(v10, v6);
  v11 = &v9[OBJC_IVAR____TtC20ProductPageExtension11DividerView_style];
  swift_beginAccess();
  sub_100206E34(v6, v11);
  swift_endAccess();
  v12 = &v9[OBJC_IVAR____TtC20ProductPageExtension11DividerView_separatorInset];
  v13 = *(v11 + 1);
  *v12 = *v11;
  *(v12 + 1) = v13;
  [v9 setNeedsLayout];
  [v9 setNeedsLayout];
  sub_10059945C(v6, type metadata accessor for DividerView.Style);
  result = *&v1[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_pageTraits];
  if (result)
  {
    [result pageMarginInsets];
    *v12 = v15;
    *(v12 + 1) = v16;
    *(v12 + 2) = v17;
    *(v12 + 3) = v18;
    [v9 setNeedsLayout];
    v19 = [v1 contentView];
    [v19 addSubview:v9];

    return [v1 setNeedsLayout];
  }

  __break(1u);
  return result;
}

unint64_t sub_10059652C(void *a1)
{
  if (!*(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_media))
  {
LABEL_9:
    type metadata accessor for VideoCollectionViewCell();
    sub_1007708FC();
    v10 = sub_10076FF6C();

    isa = sub_10075E02C().super.isa;
    v12 = [a1 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:isa];

    return v12;
  }

  v3 = sub_10076090C();
  result = sub_10075E09C();
  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
    goto LABEL_6;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_6:

    v5 = sub_100762A4C();

    if (v5)
    {

      type metadata accessor for ScreenshotCollectionViewCell();
      sub_1007708FC();
      v6 = sub_10076FF6C();

      v7 = sub_10075E02C().super.isa;
      v8 = [a1 dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:v7];

      v9 = swift_dynamicCastClassUnconditional();
      *(*(v9 + OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_platform) = sub_10076091C();

      sub_100124EE0();

      return v9;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005969A0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, char *))
{
  v10 = sub_10075E11C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  a6(v15, v13);

  return (*(v11 + 8))(v13, v10);
}

void sub_100596ABC(void *a1)
{
  if (!*(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_media))
  {
    return;
  }

  v3 = sub_10076090C();

  v4 = sub_10075E09C();
  if ((v3 & 0xC000000000000001) == 0)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_6;
    }

    __break(1u);
    return;
  }

  sub_10077149C();
LABEL_6:

  v5 = sub_100762A4C();
  if (v5)
  {
    v6 = v5;
    v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_screenshotSelectionHandler);
    if (v7)
    {

      v8 = sub_10075E09C();
      v7(v6, v8);
      sub_1000B9010(v7);
    }

    isa = sub_10075E02C().super.isa;
    [a1 deselectItemAtIndexPath:isa animated:1];
  }

  else
  {
  }
}

uint64_t type metadata accessor for ProductMediaCollectionViewCell()
{
  result = qword_10095DE80;
  if (!qword_10095DE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100596FAC()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_100597094(uint64_t a1, int a2, int a3, void *a4, double a5, double a6, double a7, double a8, double a9)
{
  v159 = a9;
  v149 = a8;
  v145 = a3;
  v144 = a2;
  v143 = sub_10077164C();
  v146 = *(v143 - 8);
  __chkstk_darwin(v143);
  v15 = &v141 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = COERCE_DOUBLE(sub_10075F21C());
  v141 = *(*&v142 - 8);
  __chkstk_darwin(*&v142);
  v150 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10076D39C();
  v154 = *(v17 - 8);
  __chkstk_darwin(v17);
  ObjectType = &v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v151 = &v141 - v20;
  __chkstk_darwin(v21);
  v23 = &v141 - v22;
  __chkstk_darwin(v24);
  v26 = &v141 - v25;
  v27 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v27 - 8);
  v156 = &v141 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v161 = &v141 - v30;
  __chkstk_darwin(v31);
  v162 = &v141 - v32;
  v33 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v33 - 8);
  v147 = &v141 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_10076091C();
  v153 = a1;
  v35 = sub_10076090C();
  v36 = v35;
  if (v35 >> 62)
  {
LABEL_106:
    v37 = sub_10077158C();
  }

  else
  {
    v37 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *&v164 = v26;
  v148 = v15;
  v163 = v23;
  v157 = a4;
  if (v37)
  {
    v26 = 0;
    v158 = (v36 & 0xC000000000000001);
    a4 = (v36 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v158)
      {
        sub_10077149C();
        v39 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
LABEL_16:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v26 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_106;
        }

        v39 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_16;
        }
      }

      if (sub_100762A4C())
      {
        v38 = sub_10076BD4C();

        if (v38)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (!sub_100762A5C())
        {

          v155 = 1;
          a4 = v157;
          v15 = v148;
          goto LABEL_21;
        }

        sub_10076B84C();
        v40 = sub_10076BD4C();

        v15 = v148;
        if (v40)
        {
LABEL_18:
          v155 = 1;
          a4 = v157;
LABEL_21:
          v23 = v163;
          goto LABEL_22;
        }
      }

      ++v26;
      v23 = v163;
      if (v39 == v37)
      {
        v155 = 0;
        a4 = v157;
        goto LABEL_22;
      }
    }
  }

  v155 = 0;
LABEL_22:

  sub_1007601EC();

  sub_10007AFB4(v41, v147);

  v42 = sub_10076090C();
  if (v42 >> 62)
  {
    v37 = v42;
    v43 = sub_10077158C();
  }

  else
  {
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = v154;

  if (v43 >= 1)
  {
    v45 = sub_10076090C();
    v46 = v45;
    if (v45 >> 62)
    {
      v43 = v45;
      v110 = sub_10077158C();
      v46 = v43;
      v47 = v110;
      if (v110)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v47)
      {
LABEL_27:
        if (v47 >= 1)
        {
          v141 = a5;
          v142 = a6;
          v48 = v46;
          ObjectType = swift_getObjectType();
          v49 = 0;
          v151 = (v48 & 0xC000000000000001);
          v50 = (v44 + 56);
          v51 = 0.0;
          v158 = (v44 + 32);
          v52 = (v44 + 48);
          v150 = (v44 + 16);
          v53 = (v44 + 8);
          v154 = v48;
          v153 = v47;
          do
          {
            if (v151)
            {
              sub_10077149C();
            }

            else
            {
            }

            if (sub_100762A4C())
            {
              sub_10076BEFC();
              v57 = v161;
              sub_10076D3AC();

              v58 = *v50;
              (*v50)(v57, 0, 1, v17);
              v59 = v162;
              (*v158)();
              v58(v59, 0, 1, v17);
            }

            else
            {
              v60 = *v50;
              v61 = 1;
              (*v50)(v161, 1, 1, v17);
              if (sub_100762A5C())
              {
                sub_10076B84C();

                sub_10076BEFC();
                v59 = v162;
                sub_10076D3AC();

                v61 = 0;
              }

              else
              {
                v59 = v162;
              }

              v60(v59, v61, 1, v17);
              v62 = (*v52)(v161, 1, v17);
              v23 = v163;
              if (v62 != 1)
              {
                sub_10000CFBC(v161, &unk_1009467E0);
              }
            }

            v63 = sub_100760E4C();
            v64 = v59;
            v65 = v156;
            sub_1003911F0(v64, v156);
            v66 = *v52;
            if ((*v52)(v65, 1, v17) == 1)
            {
              sub_10076D3AC();
              if (v66(v65, 1, v17) != 1)
              {
                sub_10000CFBC(v65, &unk_1009467E0);
              }
            }

            else
            {
              (*v158)(v164, v65, v17);
            }

            v67 = v157;
            if ((v155 & v63) != 0)
            {
              v68 = v164;
              if (sub_10076D2EC())
              {
                (*v150)(v23, v68, v17);
              }

              else
              {
                sub_10076D32C();
              }

              v69 = 1;
            }

            else
            {
              (*v150)(v23, v164, v17);
              v69 = sub_10076D2EC();
            }

            v70 = [v67 traitCollection];
            v71 = sub_1007706CC();

            if (v71)
            {
              if (v149 >= a7)
              {
                JUScreenClassGetPortraitWidth();
                v72 = 4.0;
                v73 = 2.0;
                v23 = v163;
                if (v85 < a7)
                {
                  JUScreenClassGetPortraitWidth();
                  if (v86 < a7)
                  {
                    v72 = 5.0;
                  }

                  else
                  {
                    v72 = 4.0;
                  }
                }
              }

              else
              {
                JUScreenClassGetLandscapeWidth();
                v72 = 5.0;
                v73 = 2.0;
                v23 = v163;
                if (v74 < a7)
                {
                  JUScreenClassGetLandscapeWidth();
                  if (v75 < a7)
                  {
                    v72 = 6.0;
                  }

                  else
                  {
                    v72 = 5.0;
                  }
                }
              }
            }

            else
            {
              if (v69)
              {
                v73 = 2.0;
              }

              else
              {
                v73 = 1.0;
              }

              if (v69)
              {
                v72 = 3.0;
              }

              else
              {
                v72 = 1.0;
              }

              v23 = v163;
            }

            [v67 pageMarginInsets];
            v77 = v76;
            [v67 pageMarginInsets];
            v79 = v77 + v78;
            PageTraitEnvironment.pageColumnMargin.getter();
            v81 = (v73 + -1.0) * v80 + v73 / v72 * (v159 - (v79 + (v72 + -1.0) * v80));
            v82 = [v67 traitCollection];
            v83 = sub_1007706CC();

            if ((v83 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), sub_10076D35C(), v81 < v84))
            {
              sub_10076D36C();
            }

            ++v49;
            sub_10076D36C();
            v55 = v54;

            v56 = *v53;
            (*v53)(v23, v17);
            v56(v164, v17);
            sub_10000CFBC(v162, &unk_1009467E0);
            if (v55 > v51)
            {
              v51 = v55;
            }
          }

          while (v153 != v49);

          v15 = v148;
          a6 = v142;
          a5 = v141;
          goto LABEL_110;
        }

        __break(1u);
        goto LABEL_141;
      }
    }

    v51 = 0.0;
    goto LABEL_110;
  }

  v87 = v150;
  sub_100760E3C();
  v88 = v141;
  v89 = v142;
  v90 = (*(*&v141 + 88))(v87, COERCE_DOUBLE(*&v142));
  v43 = ObjectType;
  v37 = v151;
  if (v90 == enum case for AppPlatform.phone(_:) || v90 == enum case for AppPlatform.pad(_:) || v90 == enum case for AppPlatform.messages(_:))
  {
    goto LABEL_77;
  }

  if (v90 == enum case for AppPlatform.watch(_:))
  {
    if (qword_10093F5A8 == -1)
    {
LABEL_86:
      v92 = sub_10000A61C(v17, qword_10099CB60);
      (*(v44 + 16))(v37, v92, v17);
      goto LABEL_78;
    }

LABEL_141:
    swift_once();
    goto LABEL_86;
  }

  if (v90 == enum case for AppPlatform.tv(_:) || v90 == enum case for AppPlatform.mac(_:))
  {
LABEL_77:
    sub_10076D3AC();
    goto LABEL_78;
  }

  sub_10076D3AC();
  (*(*&v88 + 8))(v150, COERCE_DOUBLE(*&v89));
LABEL_78:
  if (sub_100760E4C() & 1) != 0 && (sub_10076D2EC())
  {
    if (sub_10076D2EC())
    {
      (*(v44 + 16))(v43, v37, v17);
    }

    else
    {
      sub_10076D32C();
    }

    v91 = 1;
  }

  else
  {
    (*(v44 + 16))(v43, v37, v17);
    v91 = sub_10076D2EC();
  }

  swift_getObjectType();
  v93 = [a4 traitCollection];
  v94 = sub_1007706CC();

  if (v94)
  {
    v95 = sub_10069EFC8(a7, v149);
    v97 = v96;
  }

  else
  {
    if (v91)
    {
      v95 = 2.0;
    }

    else
    {
      v95 = 1.0;
    }

    if (v91)
    {
      v97 = 3.0;
    }

    else
    {
      v97 = 1.0;
    }
  }

  [a4 pageMarginInsets];
  v99 = v98;
  [a4 pageMarginInsets];
  v101 = v99 + v100;
  PageTraitEnvironment.pageColumnMargin.getter();
  v103 = (v95 + -1.0) * v102 + v95 / v97 * (v159 - (v101 + (v97 + -1.0) * v102));
  v104 = [a4 traitCollection];
  v105 = sub_1007706CC();

  v106 = ObjectType;
  if ((v105 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), sub_10076D35C(), v103 < v107))
  {
    sub_10076D36C();
  }

  sub_10076D36C();
  v51 = v108;
  v109 = *(v44 + 8);
  v109(v106, v17);
  v109(v151, v17);
LABEL_110:
  sub_10000A5D4(&unk_100952260);
  inited = swift_initStackObject();
  v164 = xmmword_100783DD0;
  *(inited + 16) = xmmword_100783DD0;
  *(inited + 32) = v51;
  v165 = inited;
  v112 = v143;
  if (a5 >= COERCE_DOUBLE(1))
  {
    v113 = swift_initStackObject();
    *(v113 + 16) = xmmword_100783C60;
    if (qword_1009408E8 != -1)
    {
      swift_once();
    }

    sub_10000CF78(qword_10095DDA0, qword_10095DDB8);
    sub_1000FF02C();
    sub_10076D40C();
    v115 = v114;
    v116 = *(v146 + 8);
    v116(v15, v112);
    *(v113 + 32) = v115;
    *(v113 + 40) = a5;
    if (qword_1009408F8 != -1)
    {
      swift_once();
    }

    sub_10000CF78(qword_10095DDF0, qword_10095DE08);
    sub_1000FF02C();
    sub_10076D40C();
    v118 = v117;
    v116(v15, v112);
    *(v113 + 48) = v118;
    sub_1000F92E4(v113);
  }

  if (a6 >= COERCE_DOUBLE(1))
  {
    v119 = swift_initStackObject();
    *(v119 + 16) = xmmword_100784500;
    *(v119 + 32) = a6;
    if (qword_100940900 != -1)
    {
      swift_once();
    }

    sub_10000CF78(qword_1009A0938, qword_1009A0950);
    sub_1000FF02C();
    sub_10076D40C();
    v121 = v120;
    (*(v146 + 8))(v15, v112);
    *(v119 + 40) = v121;
    sub_1000F92E4(v119);
  }

  v122 = swift_initStackObject();
  *(v122 + 16) = v164;
  if (qword_1009408F0 != -1)
  {
    swift_once();
  }

  sub_10000CF78(qword_10095DDC8, qword_10095DDE0);
  swift_getObjectType();
  v123 = v148;
  sub_1000FF02C();
  sub_10076D40C();
  v125 = v124;
  (*(v146 + 8))(v123, v112);
  *(v122 + 32) = v125;
  sub_1000F92E4(v122);
  v126 = swift_initStackObject();
  *(v126 + 16) = xmmword_100784500;
  v127 = 0.0;
  v128 = 0.0;
  if (v144)
  {
    type metadata accessor for DividerView(0);
    if (qword_100940950 != -1)
    {
      swift_once();
    }

    v129 = type metadata accessor for DividerView.Style(0);
    sub_10000A61C(v129, qword_1009A0A20);
    v128 = sub_1005AA920();
  }

  *(v126 + 32) = v128;
  if (v145)
  {
    type metadata accessor for DividerView(0);
    if (qword_100940950 != -1)
    {
      swift_once();
    }

    v130 = type metadata accessor for DividerView.Style(0);
    sub_10000A61C(v130, qword_1009A0A20);
    v127 = sub_1005AA920();
  }

  *(v126 + 40) = v127;
  sub_1000F92E4(v126);
  v131 = *(v165 + 16);
  if (!v131)
  {
    v132 = v147;
    goto LABEL_139;
  }

  v132 = v147;
  if (v131 <= 3)
  {
    v133 = 0;
    v134 = 0.0;
LABEL_137:
    v137 = v131 - v133;
    v138 = (v165 + 8 * v133 + 32);
    do
    {
      v139 = *v138++;
      v134 = v134 + v139;
      --v137;
    }

    while (v137);
    goto LABEL_139;
  }

  v133 = v131 & 0x7FFFFFFFFFFFFFFCLL;
  v135 = (v165 + 48);
  v134 = 0.0;
  v136 = v131 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v134 = v134 + *(v135 - 2) + *(v135 - 1) + *v135 + v135[1];
    v135 += 4;
    v136 -= 4;
  }

  while (v136);
  if (v131 != v133)
  {
    goto LABEL_137;
  }

LABEL_139:
  sub_10059945C(v132, type metadata accessor for ScreenshotDisplayConfiguration);

  return v159;
}

unint64_t sub_100598540(uint64_t a1, void *a2, double a3)
{
  v6 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v6 - 8);
  v65 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_10076D39C();
  v8 = *(v68 - 8);
  __chkstk_darwin(v68);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v59 - v12;
  v66 = a1;
  result = sub_10076090C();
  v15 = result;
  if (result >> 62)
  {
    result = sub_10077158C();
    v16 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_46:

    return _swiftEmptyArrayStorage;
  }

  v16 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_46;
  }

LABEL_3:
  if (v16 >= 1)
  {
    v17 = 0;
    v67 = v15 & 0xC000000000000001;
    v59 = (v8 + 16);
    v60 = (v8 + 8);
    v18 = _swiftEmptyArrayStorage;
    v63 = v13;
    v64 = v10;
    v61 = v16;
    v62 = v15;
    while (1)
    {
      if (v67)
      {
        v19 = sub_10077149C();
        v20 = sub_100762A4C();
        if (v20)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v19 = *(v15 + 8 * v17 + 32);

        v20 = sub_100762A4C();
        if (v20)
        {
LABEL_9:
          v21 = v20;
          v69 = v19;
LABEL_13:
          sub_10076BEFC();
          sub_10076D3AC();
          v22 = sub_1007608AC();
          sub_1007601EC();
          v23 = sub_10076091C();
          v24 = v65;
          sub_10007AFB4(v23, v65);

          v25 = *(v24 + 64);
          v26 = *(v24 + 80);
          sub_10059945C(v24, type metadata accessor for ScreenshotDisplayConfiguration);
          swift_getObjectType();
          [a2 pageContainerSize];
          v28 = v27;
          v30 = v29;
          if (v22)
          {
            v31 = sub_10076D2EC();
            v32 = v64;
            if (v31)
            {
              (*v59)(v64, v13, v68);
            }

            else
            {
              sub_10076D32C();
            }

            v33 = 1;
          }

          else
          {
            v32 = v64;
            (*v59)(v64, v13, v68);
            v33 = sub_10076D2EC();
          }

          v34 = [a2 traitCollection];
          v35 = sub_1007706CC();

          if (v35)
          {
            if (v30 >= v28)
            {
              JUScreenClassGetPortraitWidth();
              v36 = 4.0;
              v37 = 2.0;
              v13 = v63;
              if (v28 > v57)
              {
                JUScreenClassGetPortraitWidth();
                if (v28 > v58)
                {
                  v36 = 5.0;
                }

                else
                {
                  v36 = 4.0;
                }
              }
            }

            else
            {
              JUScreenClassGetLandscapeWidth();
              v36 = 5.0;
              v37 = 2.0;
              v13 = v63;
              if (v28 > v38)
              {
                JUScreenClassGetLandscapeWidth();
                if (v28 > v39)
                {
                  v36 = 6.0;
                }

                else
                {
                  v36 = 5.0;
                }
              }
            }
          }

          else
          {
            if (v33)
            {
              v37 = 2.0;
            }

            else
            {
              v37 = 1.0;
            }

            if (v33)
            {
              v36 = 3.0;
            }

            else
            {
              v36 = 1.0;
            }

            v13 = v63;
          }

          [a2 pageMarginInsets];
          v41 = v40;
          [a2 pageMarginInsets];
          v43 = v41 + v42;
          PageTraitEnvironment.pageColumnMargin.getter();
          v45 = (v37 + -1.0) * v44 + v37 / v36 * (a3 - (v43 + (v36 + -1.0) * v44));
          v46 = [a2 traitCollection];
          v47 = sub_1007706CC();

          if ((v47 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), sub_10076D35C(), v45 < v48))
          {
            sub_10076D36C();
            v48 = v45;
          }

          v49 = v48 - (v25 + v26);
          sub_10076D36C();
          v51 = v50;
          v52 = *v60;
          v53 = v68;
          (*v60)(v32, v68);
          v52(v13, v53);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_10049D474(0, v18[2] + 1, 1, v18);
          }

          v16 = v61;
          v15 = v62;
          v55 = v18[2];
          v54 = v18[3];
          if (v55 >= v54 >> 1)
          {
            v18 = sub_10049D474((v54 > 1), v55 + 1, 1, v18);
          }

          v18[2] = v55 + 1;
          v56 = &v18[3 * v55];
          *(v56 + 4) = v21;
          v56[5] = v49;
          *(v56 + 6) = v51;
          goto LABEL_6;
        }
      }

      if (sub_100762A5C())
      {
        v69 = v19;
        v21 = sub_10076B84C();

        goto LABEL_13;
      }

LABEL_6:
      if (v16 == ++v17)
      {

        return v18;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_100598AEC(uint64_t a1)
{
  v2 = v1;
  sub_10000A570(a1, v25);
  sub_10000A5D4(&unk_100942830);
  sub_10076092C();
  if (swift_dynamicCast())
  {
    v3 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_screenshotFetcher;
    if (!*&v1[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_screenshotFetcher])
    {
      type metadata accessor for ScreenshotFetcher();
      v4 = swift_allocObject();
      *(v4 + 16) = sub_1000FCDDC(_swiftEmptyArrayStorage);
      *(v4 + 32) = 0;
      swift_unknownObjectWeakInit();
      *(v4 + 32) = &off_10089A810;
      swift_unknownObjectWeakAssign();
      *&v1[v3] = v4;
      swift_retain_n();

      v5 = *&v1[v3];
      if (v5)
      {
        *(v5 + 32) = &off_10089A810;
        swift_unknownObjectWeakAssign();
      }
    }

    swift_retain_n();
    v6 = [v1 traitCollection];
    sub_1007706CC();

    v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_media];
    if (v7)
    {
      v8 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_pageTraits];
      if (!v8)
      {
LABEL_26:
        __break(1u);
        return;
      }

      swift_unknownObjectRetain();
      [v2 bounds];
      v10 = sub_100598540(v7, v8, v9);

      swift_unknownObjectRelease();
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
    }

    v24 = sub_1007608AC() & 1;
    v11 = sub_10060889C(v10, v24);
    v12 = v11;
    v23 = v10[2];
    if (v23)
    {
      v13 = 0;
      v14 = v10 + 6;
      v21 = v11 & 0xC000000000000001;
      v22 = v11 >> 62;
      while (v13 < v10[2])
      {
        v15 = *(v14 - 2);
        v16 = *(v14 - 1);
        v17 = *v14;
        if (v22)
        {
          v18 = sub_10077158C();
        }

        else
        {
          v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v13 == v18)
        {
          goto LABEL_22;
        }

        if (v21)
        {

          sub_10077149C();
        }

        else
        {
          if (v13 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }
        }

        v26 = 0;
        memset(v25, 0, sizeof(v25));
        v19 = swift_allocObject();
        swift_weakInit();
        v20 = swift_allocObject();
        *(v20 + 16) = v24;
        *(v20 + 24) = v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v16;
        *(v20 + 48) = v17;
        *(v20 + 56) = v13;

        sub_100760B7C();

        sub_10000CFBC(v25, &qword_100943310);

        v14 += 3;
        if (v23 == ++v13)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_22:
  }
}

void sub_100598EB0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_flowLayout;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout()) init];
  v3 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_compoundScrollObserver;
  v4 = objc_allocWithZone(sub_1007666AC());
  *(v1 + v3) = sub_10076669C();
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_screenshotFetcher) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_media) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_objectGraph) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_fallbackHorizontalViewMargin) = 0x4020000000000000;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_pageTraits) = 0;
  v5 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_itemLayoutContext;
  v6 = sub_10076341C();
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_topAccessoryView) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_bottomAccessoryView) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_displaysTopAccessoryDivider) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_displaysBottomAccessoryDivider) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_topAccessoryDividerView) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_bottomAccessoryDividerView) = 0;
  v7 = (v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_screenshotSelectionHandler);
  *v7 = 0;
  v7[1] = 0;
  sub_10077156C();
  __break(1u);
}

void sub_100599044(objc_class *a1, uint64_t a2)
{
  v5 = sub_10075E11C();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v2 window];
  if (v10)
  {

    if (*&v2[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_media])
    {
      v11 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_collectionView];

      if ([v11 numberOfSections] >= 1 && objc_msgSend(v11, "numberOfItemsInSection:", 0) > a2)
      {
        v12 = sub_10076090C();
        v13 = v12 >> 62 ? sub_10077158C() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v13 > a2)
        {
          v14 = sub_10076090C();
          if ((v14 & 0xC000000000000001) == 0)
          {
            if (a2 < 0)
            {
              __break(1u);
            }

            else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
            {

              goto LABEL_12;
            }

            __break(1u);
            return;
          }

          sub_10077149C();
LABEL_12:

          sub_10000A5D4(&qword_100952110);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_100784500;
          *(v15 + 32) = 0;
          *(v15 + 40) = a2;
          sub_10075E01C();
          isa = sub_10075E02C().super.isa;
          (*(v6 + 8))(v9, v5);
          v17 = [v11 cellForItemAtIndexPath:isa];

          if (v17)
          {
            type metadata accessor for ScreenshotCollectionViewCell();
            v18 = swift_dynamicCastClass();
            if (v18)
            {
              v19 = v18;
              v20 = v17;
              if (sub_100762A4C())
              {

                v21 = *(*(v19 + OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
                v27.value.super.isa = a1;
                v27.is_nil = 1;
                sub_10075FC5C(v27, v22);

                goto LABEL_26;
              }
            }

            type metadata accessor for VideoCollectionViewCell();
            if (swift_dynamicCastClass())
            {
              v17 = v17;
              if (sub_100762A5C())
              {

                Strong = swift_unknownObjectWeakLoadStrong();
                if (Strong)
                {
                  v24 = Strong;
                  [*(Strong + qword_1009602D0) setImage:a1];
                }
              }
            }
          }

LABEL_26:

          return;
        }
      }
    }
  }
}

uint64_t sub_1005993E4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10059941C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10059945C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005994BC()
{
  if (!*(v0 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_pageTraits) || !*(v0 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_media))
  {
    return 0;
  }

  v1 = sub_10076090C();

  if (v1 >> 62)
  {
    v2 = sub_10077158C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2;
}

void sub_100599558(void *a1)
{
  v3 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v3 - 8);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v55 - v10;
  v12 = sub_10076D39C();
  v58 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v55 - v16;
  if (!*(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_media))
  {
    return;
  }

  [a1 frame];
  if (v18 <= 0.0 || v19 <= 0.0)
  {

    return;
  }

  v56 = v1;
  v20 = v18;
  v21 = sub_10076090C();
  v22 = sub_10075E09C();
  if ((v21 & 0xC000000000000001) == 0)
  {
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v22 < *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(v21 + 8 * v22 + 32);

      goto LABEL_8;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    return;
  }

  v23 = sub_10077149C();
LABEL_8:

  v24 = sub_100762A4C();
  v57 = v23;
  if (v24)
  {
    sub_10076BEFC();
    sub_10076D3AC();

    v25 = v58;
    v26 = *(v58 + 56);
    v26(v8, 0, 1, v12);
    (*(v25 + 32))(v11, v8, v12);
    v26(v11, 0, 1, v12);
    v27 = (*(v25 + 48))(v11, 1, v12);
  }

  else
  {
    v55 = *(v58 + 56);
    v55(v8, 1, 1, v12);
    if (sub_100762A5C())
    {
      sub_10076B84C();

      sub_10076BEFC();
      sub_10076D3AC();

      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v55(v11, v28, 1, v12);
    v25 = v58;
    v29 = *(v58 + 48);
    if (v29(v8, 1, v12) != 1)
    {
      sub_10000CFBC(v8, &unk_1009467E0);
    }

    v27 = v29(v11, 1, v12);
  }

  if (v27 == 1)
  {

    sub_10000CFBC(v11, &unk_1009467E0);
    return;
  }

  (*(v25 + 32))(v17, v11, v12);
  sub_1007601EC();
  v30 = sub_10076091C();
  sub_10007AFB4(v30, v5);

  v31 = sub_1007608AC();
  v32 = *(v56 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_pageTraits);
  if (!v32)
  {
    goto LABEL_42;
  }

  v33 = v31;
  [swift_unknownObjectRetain() pageContainerSize];
  v35 = v34;
  v37 = v36;
  if (v33)
  {
    if (sub_10076D2EC())
    {
      (*(v25 + 16))(v14, v17, v12);
    }

    else
    {
      sub_10076D32C();
    }

    v38 = 1;
  }

  else
  {
    (*(v25 + 16))(v14, v17, v12);
    v38 = sub_10076D2EC();
  }

  swift_getObjectType();
  v39 = [v32 traitCollection];
  v40 = sub_1007706CC();

  if (v40)
  {
    v41 = sub_10069EFC8(v35, v37);
    v43 = v42;
  }

  else
  {
    if (v38)
    {
      v41 = 2.0;
    }

    else
    {
      v41 = 1.0;
    }

    if (v38)
    {
      v43 = 3.0;
    }

    else
    {
      v43 = 1.0;
    }
  }

  v44 = v58;
  [v32 pageMarginInsets];
  v46 = v45;
  [v32 pageMarginInsets];
  v48 = v46 + v47;
  PageTraitEnvironment.pageColumnMargin.getter();
  v50 = (v41 + -1.0) * v49 + v41 / v43 * (v20 - (v48 + (v43 + -1.0) * v49));
  v51 = [v32 traitCollection];
  v52 = sub_1007706CC();

  if ((v52 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), sub_10076D35C(), v50 < v53))
  {
    sub_10076D36C();
  }

  sub_10076D36C();
  swift_unknownObjectRelease();

  v54 = *(v44 + 8);
  v54(v14, v12);
  sub_10059945C(v5, type metadata accessor for ScreenshotDisplayConfiguration);
  v54(v17, v12);
}

void sub_100599C20(void *a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&unk_10094C030);
  __chkstk_darwin(v4 - 8);
  v6 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v78 = v68 - v8;
  v9 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v9 - 8);
  v77 = v68 - v10;
  v11 = sub_1007611EC();
  __chkstk_darwin(v11 - 8);
  __chkstk_darwin(v12);
  v13 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v13 - 8);
  v15 = v68 - v14;
  v16 = sub_10076121C();
  v76 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10076481C();
  __chkstk_darwin(v19);
  v23 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_media);
  if (!v23)
  {
    return;
  }

  v72 = v6;
  v73 = v22;
  v74 = v20;
  v75 = v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);

  v79 = v23;
  v24 = sub_10076090C();
  v25 = sub_10075E09C();
  if ((v24 & 0xC000000000000001) == 0)
  {
    if ((v25 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v25 < *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v26 = *(v24 + 8 * v25 + 32);

      goto LABEL_6;
    }

    __break(1u);
    return;
  }

  v26 = sub_10077149C();
LABEL_6:

  type metadata accessor for ScreenshotCollectionViewCell();
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v28 = v27;
    v29 = a1;
    v30 = sub_100762A4C();
    if (v30)
    {
      v31 = v30;
      v32 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_screenshotFetcher);
      if (v32)
      {
        swift_beginAccess();
        v33 = *(v32 + 16);

        v34 = sub_100625CFC(v31, v33);

        if (v34)
        {
          v35 = *(*(v28 + OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
          v36 = v34;
          v37 = v35;
          v38 = sub_10075FC9C();

          if (v38)
          {
            sub_100016F40(0, &qword_10094F610);
            v40 = v36;
            v41 = sub_100770EEC();

            v42 = v41 ^ 1;
          }

          else
          {
            v42 = 1;
          }

          v82.is_nil = v42 & 1;
          v82.value.super.isa = v34;
          sub_10075FCEC(v82, v39);
        }

        else
        {
        }

        return;
      }

      goto LABEL_25;
    }

    goto LABEL_24;
  }

  type metadata accessor for VideoCollectionViewCell();
  v43 = swift_dynamicCastClass();
  if (!v43)
  {
LABEL_24:

LABEL_25:

    return;
  }

  v71 = v43;
  v44 = a1;
  v45 = sub_100762A5C();
  if (!v45)
  {

    goto LABEL_24;
  }

  v46 = v45;
  v70 = v26;
  if (!*(v2 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_objectGraph))
  {

    goto LABEL_25;
  }

  v68[1] = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_objectGraph);
  v69 = v44;
  v47 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_screenshotFetcher);
  if (v47)
  {

    v48 = sub_10076B84C();
    swift_beginAccess();
    v49 = *(v47 + 16);

    v50 = sub_100625CFC(v48, v49);

    if (v50)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v52 = Strong;
        [*(Strong + qword_1009602D0) setImage:v50];
      }
    }
  }

  else
  {
  }

  (*(v76 + 104))(v18, enum case for VideoFillMode.scaleAspectFit(_:), v16);
  sub_10076B84C();
  sub_10076BEFC();
  sub_10076D3AC();

  v53 = sub_10076D39C();
  (*(*(v53 - 8) + 56))(v15, 0, 1, v53);
  sub_10076B7EC();
  sub_10076B82C();
  LODWORD(v76) = sub_10076B7FC();
  sub_10076B7DC();
  sub_10076B83C();
  sub_10076091C();
  sub_100760E8C();
  v54 = v46;

  sub_1007647FC();
  sub_100762F0C();
  sub_10076F5CC();
  sub_10076B7CC();
  v55 = v77;
  sub_10076B85C();
  v56 = sub_10075DB7C();
  (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
  v57 = v78;
  sub_10076B81C();
  v58 = v72;
  v76 = v54;
  sub_10076B80C();
  type metadata accessor for VideoView();
  sub_10059A958(&qword_100942810, type metadata accessor for VideoView);
  v59 = sub_100762EEC();
  sub_10000CFBC(v58, &unk_10094C030);
  sub_10000CFBC(v57, &unk_10094C030);
  sub_10000CFBC(v55, &unk_1009435D0);
  sub_10000CFBC(&v80, &qword_100943310);
  v60 = v59;
  v61 = v71;
  sub_1005C7C50();
  swift_unknownObjectWeakAssign();
  v62 = swift_unknownObjectWeakLoadStrong();
  if (v62)
  {
    v63 = v62;
    v64 = [v61 contentView];
    [v64 addSubview:v63];

    [v61 setNeedsLayout];
  }

  sub_100767D5C();
  sub_10076F64C();
  sub_10076FC1C();
  v65 = v80;
  v66 = swift_unknownObjectWeakLoadStrong();
  sub_10059A958(&qword_10095DEA8, type metadata accessor for VideoCollectionViewCell);
  v67 = v69;
  sub_100767D3C();

  (*(v73 + 8))(v75, v74);
}

void sub_10059A648(void *a1)
{
  type metadata accessor for ScreenshotCollectionViewCell();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(*(v3 + OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
    v5 = a1;
    v9 = v4;
    sub_10075FCAC();
  }

  else
  {
    type metadata accessor for VideoCollectionViewCell();
    if (swift_dynamicCastClass() && *(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_objectGraph))
    {
      sub_100767D5C();
      sub_10076F64C();
      v6 = a1;

      sub_10076FC1C();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_10059A958(&qword_100942810, type metadata accessor for VideoView);
      }

      sub_10059A958(&qword_10095DEA8, type metadata accessor for VideoCollectionViewCell);
      v8 = v6;
      sub_100767CFC();
    }
  }
}

void sub_10059A854(void *a1, SEL *a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_pageTraits))
    {
      swift_getObjectType();
      v7 = a1;
      swift_unknownObjectRetain();
      PageTraitEnvironment.pageColumnMargin.getter();
      v9 = v8;
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = a1;
      v9 = 8.0;
    }

    [v6 *a2];
  }

  if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_pageTraits))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    PageTraitEnvironment.pageColumnMargin.getter();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10059A958(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10059A9A0(void *a1)
{
  if (a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension36AdvertSearchResultCollectionViewCell_advertsContentView);
    v4 = *&v3[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupMediaView];
    v5 = v3;
    v6 = [a1 superview];
    if (v6)
    {
      v7 = v6;
      sub_1000ACA5C();
      v8 = v4;
      v9 = sub_100770EEC();

      v5 = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_10059AA58(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension36AdvertSearchResultCollectionViewCell_advertsContentView);
  v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupMediaView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10059B578(&qword_100942810, 255, type metadata accessor for VideoView);
    v6 = v2;
    v7 = [v5 superview];
    if (v7)
    {
      v8 = v7;
      sub_1000ACA5C();
      v9 = v3;
      v10 = sub_100770EEC();

      if (v10)
      {
        v11 = swift_unknownObjectWeakLoadStrong();
        if (v11)
        {
          v12 = v11;
          [v11 removeFromSuperview];
        }
      }
    }

    else
    {
    }
  }

  else
  {
    v13 = v2;
  }

  swift_unknownObjectWeakAssign();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    [v3 addSubview:v14];
  }

  sub_10057E5D8();
  [v3 setNeedsLayout];
}

void (*sub_10059ABF4(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension36AdvertSearchResultCollectionViewCell_advertsContentView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_10059AC68;
}

void sub_10059AC68(uint64_t a1, char a2)
{
  v4 = *a1;
  v30 = *(*(a1 + 8) + *(a1 + 16));
  v5 = *&v30[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupMediaView];
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_10059B578(&qword_100942810, 255, type metadata accessor for VideoView);
      v8 = v4;
      v9 = v30;
      v10 = [v7 superview];
      if (v10)
      {
        v11 = v10;
        sub_1000ACA5C();
        v12 = v5;
        v13 = sub_100770EEC();

        if (v13)
        {
          v14 = swift_unknownObjectWeakLoadStrong();
          if (v14)
          {
            v15 = v14;
            [v14 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v8 = v4;
      v23 = v30;
    }

    swift_unknownObjectWeakAssign();
    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      v26 = v25;
      [v5 addSubview:v25];
    }

    sub_10057E5D8();
    [v5 setNeedsLayout];

    v27 = *a1;
  }

  else
  {
    if (Strong)
    {
      sub_10059B578(&qword_100942810, 255, type metadata accessor for VideoView);
      v16 = v30;
      v17 = [v7 superview];
      if (v17)
      {
        v18 = v17;
        sub_1000ACA5C();
        v19 = v5;
        v20 = sub_100770EEC();

        if (v20)
        {
          v21 = swift_unknownObjectWeakLoadStrong();
          if (v21)
          {
            v22 = v21;
            [v21 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v24 = v30;
    }

    swift_unknownObjectWeakAssign();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = v28;
      [v5 addSubview:v28];
    }

    sub_10057E5D8();
    [v5 setNeedsLayout];

    v27 = v30;
  }
}

char *sub_10059AF58(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC20ProductPageExtension36AdvertSearchResultCollectionViewCell_advertsContentView] = [objc_allocWithZone(type metadata accessor for AdvertsSearchResultContentView()) initWithFrame:{a1, a2, a3, a4}];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for AdvertSearchResultCollectionViewCell();
  v9 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v13 = v9;
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v14 = [v13 contentView];
  [v14 addSubview:*&v13[OBJC_IVAR____TtC20ProductPageExtension36AdvertSearchResultCollectionViewCell_advertsContentView]];

  return v13;
}

id sub_10059B230()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdvertSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t (*sub_10059B2CC(uint64_t **a1))()
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
  v2[4] = sub_10059ABF4(v2);
  return sub_100019A4C;
}

uint64_t sub_10059B33C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_10059B390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10059B3FC(uint64_t *a1))()
{
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
  swift_getWitnessTable();
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_10059B578(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10059B5C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[0] = a1;
  v21[2] = a4;
  v6 = sub_10076C36C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v21 - v11;
  v13 = sub_10000A5D4(&qword_100942C40);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = v21 - v15;
  sub_100016E2C(a2, v21 - v15, &qword_1009499A0);
  sub_100016E2C(a3, &v16[*(v14 + 56)], &qword_1009499A0);
  swift_getKeyPath();
  sub_10000A5D4(&unk_100946720);
  sub_10076F49C();
  v17 = v21[1];

  v18 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v22)
  {
    v18 = &enum case for PageGrid.Direction.vertical(_:);
  }

  (*(v7 + 104))(v12, *v18, v6);
  if (*(v17 + 16))
  {
    v19 = *(v17 + 17);
    (*(v7 + 16))(v9, v12, v6);
    sub_10031E5D4(v19);
  }

  else
  {
    (*(v7 + 16))(v9, v12, v6);
    sub_1005AC334(0.0);
  }

  sub_10076C33C();
  (*(v7 + 8))(v12, v6);
  return sub_10000CFBC(v16, &qword_100942C40);
}

uint64_t sub_10059B914()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10059B970()
{
  swift_getWitnessTable();

  return sub_1007620BC();
}

uint64_t sub_10059BA6C()
{
  swift_getWitnessTable();

  return sub_1007620AC();
}

uint64_t sub_10059BBA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>, double a7@<D6>, double a8@<D7>)
{
  v21[5] = a4;
  v21[6] = a5;
  *&v21[3] = a7;
  *&v21[4] = a8;
  v21[1] = a6;
  v21[2] = a1;
  v11 = sub_10000A5D4(&qword_100942C40);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v21 - v16;
  v18 = *v8;
  sub_100016E2C(a2, v21 - v16, &qword_1009499A0);
  sub_100016E2C(a3, &v17[*(v12 + 56)], &qword_1009499A0);
  v21[7] = v18;
  sub_100016E2C(v17, v14, &qword_100942C40);
  v19 = *(v12 + 56);
  type metadata accessor for TopChartsSegmentPageGridProvider();
  sub_1007620BC();
  sub_10000CFBC(v17, &qword_100942C40);
  sub_10000CFBC(&v14[v19], &qword_1009499A0);
  return sub_10000CFBC(v14, &qword_1009499A0);
}

uint64_t sub_10059BD8C(void *a1)
{
  if (*v1 == *a1)
  {
    v2 = v1;
    if (sub_1007713EC())
    {
      type metadata accessor for ActionDebugSetting();
      result = swift_dynamicCastClass();
      if (!result)
      {
        return result;
      }

      v4 = result;
      v5 = *(result + 56) == v2[7] && *(result + 64) == v2[8];
      if (v5 || (sub_10077167C() & 1) != 0)
      {
        v6 = v4[10];
        v7 = v2[10];
        if (v6)
        {
          if (!v7 || (v4[9] != v2[9] || v6 != v7) && (sub_10077167C() & 1) == 0)
          {
            return 0;
          }

LABEL_16:
          v8 = v4[11];
          if (v8)
          {

            v10 = v8(v9);
            v12 = v11;
            v13 = v2[11];
            if (v13)
            {
              v14 = v10;
              v15 = v13();
              v17 = v16;
              if (v12)
              {
                if (v16)
                {
                  if (v14 != v15 || v12 != v16)
                  {
                    v21 = sub_10077167C();

                    return v21 & 1;
                  }

                  goto LABEL_32;
                }

                goto LABEL_28;
              }

LABEL_25:

              if (!v17)
              {
                return 1;
              }

              goto LABEL_29;
            }

            if (v11)
            {
LABEL_28:

LABEL_29:

              return 0;
            }
          }

          else
          {
            v18 = v2[11];

            if (v18)
            {
              v18(v19);
              v17 = v20;
              goto LABEL_25;
            }
          }

LABEL_32:

          return 1;
        }

        if (!v7)
        {
          goto LABEL_16;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_10059BF9C()
{
  sub_1007713FC();
  sub_10077008C();
  if (*(v0 + 80))
  {
    sub_10077177C(1u);
    v1 = sub_10077008C();
    v2 = *(v0 + 88);
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_10077177C(0);
    v2 = *(v0 + 88);
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  v2(v1);
  if (v3)
  {
    sub_10077177C(1u);
    sub_10077008C();
    goto LABEL_8;
  }

LABEL_7:
  sub_10077177C(0);
LABEL_8:
}

uint64_t sub_10059C088()
{

  sub_1000167E0(*(v0 + 88));
}

uint64_t sub_10059C0C8()
{
  sub_100016C74(v0 + 16);

  sub_1000167E0(*(v0 + 88));

  return swift_deallocClassInstance();
}

id sub_10059C164()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = [v0 collectionView];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 delegate];

      if (v5)
      {
        v33 = &OBJC_PROTOCOL____TtP20ProductPageExtension49UICollectionViewDelegateShelfDisplayingFlowLayout_;
        v6 = swift_dynamicCastObjCProtocolConditional();
        if (!v6)
        {
          goto LABEL_14;
        }

        v7 = [v6 collectionView:v2 layout:v0 shouldProvideBackgroundAtSection:sub_10075E0AC()];
        swift_unknownObjectRelease();
        if (v7)
        {
          v8 = [v0 collectionView];
          if (v8)
          {
            v9 = v8;
            v10 = [v8 delegate];

            if (v10)
            {
              v32 = &OBJC_PROTOCOL____TtP20ProductPageExtension49UICollectionViewDelegateShelfDisplayingFlowLayout_;
              v11 = swift_dynamicCastObjCProtocolConditional();
              if (v11)
              {
                [v11 collectionView:v2 layout:v0 insetForBackgroundAtSection:sub_10075E0AC()];
                v13 = v12;
                v15 = v14;
                swift_unknownObjectRelease();
                isa = sub_10075E02C().super.isa;
                v31.receiver = v0;
                v31.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
                v17 = objc_msgSendSuper2(&v31, "layoutAttributesForItemAtIndexPath:", isa);

                if (v17)
                {
                  [v17 frame];
                  v19 = v18;
                  v21 = v20;
                  v23 = v22;
                  v25 = v24;
                  v26 = sub_10076FF6C();
                  v27 = sub_10075E02C().super.isa;
                  v28 = [objc_opt_self() layoutAttributesForDecorationViewOfKind:v26 withIndexPath:v27];

                  v34.origin.x = v19;
                  v34.origin.y = v21;
                  v34.size.width = v23;
                  v34.size.height = v25;
                  v29 = CGRectGetMinY(v34) - v13;
                  [v2 bounds];
                  Width = CGRectGetWidth(v35);
                  v36.origin.x = v19;
                  v36.origin.y = v21;
                  v36.size.width = v23;
                  v36.size.height = v25;
                  [v28 setFrame:{0.0, v29, Width, v15 + v13 + CGRectGetHeight(v36)}];
                  [v28 setZIndex:-1];

                  return v28;
                }

                goto LABEL_11;
              }

LABEL_14:

              swift_unknownObjectRelease();
              return 0;
            }
          }
        }
      }
    }

LABEL_11:

    return 0;
  }

  return result;
}

uint64_t sub_10059C458(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20ProductPageExtension25ShelfDisplayingFlowLayout_multiColumnOrigins;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (*(v5 + 16))
  {

    v6 = sub_100610A5C(a1);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 16 * v6);

      v9 = sub_10075E0AC();
      v10 = OBJC_IVAR____TtC20ProductPageExtension25ShelfDisplayingFlowLayout_multiColumnMinYBySection;
      swift_beginAccess();
      if (*(*(v2 + v10) + 16))
      {
        sub_10060FF40(v9);
        if (v11)
        {
          return v8;
        }
      }
    }

    else
    {
    }
  }

  return 0;
}

void sub_10059C558()
{
  v1 = v0;
  v2 = sub_10075E11C();
  v91 = *(v2 - 8);
  __chkstk_darwin(v2);
  v104 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v87 - v5;
  v7 = sub_1000FE70C(_swiftEmptyArrayStorage);
  v8 = OBJC_IVAR____TtC20ProductPageExtension25ShelfDisplayingFlowLayout_multiColumnMinYBySection;
  swift_beginAccess();
  v90 = v8;
  *&v0[v8] = v7;

  v9 = sub_1000FE7EC(_swiftEmptyArrayStorage);
  v10 = OBJC_IVAR____TtC20ProductPageExtension25ShelfDisplayingFlowLayout_multiColumnOrigins;
  swift_beginAccess();
  v102 = v10;
  *&v1[v10] = v9;

  v11 = [v1 collectionView];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = [v1 collectionView];
  if (!v13 || (v14 = v13, v15 = [v13 delegate], v14, !v15))
  {
LABEL_55:

    return;
  }

  v107 = &OBJC_PROTOCOL____TtP20ProductPageExtension49UICollectionViewDelegateShelfDisplayingFlowLayout_;
  v16 = swift_dynamicCastObjCProtocolConditional();
  if (!v16)
  {

    swift_unknownObjectRelease();
    return;
  }

  v17 = v16;
  v18 = [v12 numberOfSections];
  if ((v18 & 0x8000000000000000) != 0)
  {
    goto LABEL_63;
  }

  v19 = v18;
  if (!v18)
  {
LABEL_54:
    swift_unknownObjectRelease();
    goto LABEL_55;
  }

  v20 = 0;
  left = UIEdgeInsetsZero.left;
  v101 = (v91 + 8);
  v97 = (v91 + 16);
  v21 = &selRef_configurationWithWeight_;
  v99 = xmmword_100784500;
  v22 = &selRef_configurationWithWeight_;
  v94 = v12;
  v92 = v17;
  v93 = v15;
  v88 = v18;
  while (1)
  {
    if ([v17 v21[284]])
    {
      v103 = [v17 collectionView:v12 layout:v1 multiColumnCountAtSection:v20];
      if (v103 >= 2)
      {
        break;
      }
    }

LABEL_10:
    if (++v20 == v19)
    {
      goto LABEL_54;
    }
  }

  v23 = [v17 respondsToSelector:"collectionView:layout:insetForSectionAtIndex:"];
  v24 = left;
  if (v23)
  {
    [v17 collectionView:v12 layout:v1 insetForSectionAtIndex:v20];
    v24 = v25;
  }

  [v17 collectionView:v12 layout:v1 multiColumnMarginAt:v20];
  v27 = v26;
  v28 = [v12 numberOfItemsInSection:v20];
  if ((v28 & 0x8000000000000000) != 0)
  {
    goto LABEL_60;
  }

  if (!v28)
  {
    v31 = 1.79769313e308;
LABEL_45:
    v73 = v90;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v106 = *&v1[v73];
    v75 = v106;
    *&v1[v73] = 0x8000000000000000;
    v76 = sub_10060FF40(v20);
    v78 = v75[2];
    v79 = (v77 & 1) == 0;
    v70 = __OFADD__(v78, v79);
    v80 = v78 + v79;
    if (v70)
    {
      goto LABEL_61;
    }

    v81 = v77;
    if (v75[3] >= v80)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v86 = v76;
        sub_10024D884();
        v76 = v86;
      }
    }

    else
    {
      sub_1002495E8(v80, isUniquelyReferenced_nonNull_native);
      v76 = sub_10060FF40(v20);
      if ((v81 & 1) != (v82 & 1))
      {
        goto LABEL_65;
      }
    }

    v19 = v88;
    v21 = &selRef_configurationWithWeight_;
    v83 = v106;
    if (v81)
    {
      *(v106[7] + 8 * v76) = v31;
    }

    else
    {
      v106[(v76 >> 6) + 8] |= 1 << v76;
      *(v83[6] + 8 * v76) = v20;
      *(v83[7] + 8 * v76) = v31;
      v84 = v83[2];
      v70 = __OFADD__(v84, 1);
      v85 = v84 + 1;
      if (v70)
      {
        goto LABEL_62;
      }

      v83[2] = v85;
    }

    *&v1[v90] = v83;
    swift_endAccess();
    v22 = &selRef_configurationWithWeight_;
    goto LABEL_10;
  }

  v29 = 0;
  v95 = v103 - 1;
  v30 = 0.0;
  v31 = 1.79769313e308;
  v32 = 0.0;
  v96 = v20;
  v33 = v101;
  v100 = v28;
  while (1)
  {
    sub_10000A5D4(&qword_100952110);
    v34 = swift_allocObject();
    *(v34 + 16) = v99;
    *(v34 + 32) = v20;
    *(v34 + 40) = v29;
    sub_10075E01C();
    if (([v17 respondsToSelector:v22[288]] & 1) == 0)
    {
      (*v33)(v6, v2);
      goto LABEL_19;
    }

    swift_unknownObjectRetain();
    isa = sub_10075E02C().super.isa;
    [v17 v22[288]];
    v37 = v36;
    v39 = v38;
    swift_unknownObjectRelease();

    v40 = sub_10075E09C();
    v41 = sub_10075E09C();
    if (!(v40 / v103))
    {
      v42 = sub_10075E02C().super.isa;
      v43 = type metadata accessor for ShelfDisplayingFlowLayout();
      v105.receiver = v1;
      v105.super_class = v43;
      v44 = objc_msgSendSuper2(&v105, "layoutAttributesForItemAtIndexPath:", v42);

      if (v44)
      {
        [v44 frame];
        MinY = CGRectGetMinY(v108);

        if (v31 >= MinY)
        {
          v31 = MinY;
        }
      }
    }

    v46 = *v97;
    v47 = v104;
    v48 = v2;
    (*v97)(v104, v6, v2);
    v49 = v102;
    swift_beginAccess();
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v106 = *&v1[v49];
    v51 = v106;
    *&v1[v49] = 0x8000000000000000;
    v53 = sub_100610A5C(v47);
    v54 = v51[2];
    v55 = (v52 & 1) == 0;
    v56 = v54 + v55;
    if (__OFADD__(v54, v55))
    {
      break;
    }

    v57 = v52;
    if (v51[3] >= v56)
    {
      v33 = v101;
      if (v50)
      {
        goto LABEL_31;
      }

      sub_10024D9D0();
    }

    else
    {
      sub_10024984C(v56, v50);
      v58 = sub_100610A5C(v104);
      if ((v57 & 1) != (v59 & 1))
      {
        goto LABEL_64;
      }

      v53 = v58;
    }

    v33 = v101;
LABEL_31:
    v98 = v41 % v103;
    v60 = v24 + (v27 + v37) * (v41 % v103);
    v61 = v106;
    if (v57)
    {
      v62 = (v106[7] + 16 * v53);
      *v62 = v60;
      v62[1] = v32;
      v63 = *v33;
      v2 = v48;
      (*v33)(v104, v48);
    }

    else
    {
      v64 = v1;
      v65 = v6;
      v106[(v53 >> 6) + 8] |= 1 << v53;
      v66 = v91;
      v67 = v104;
      v46(v61[6] + *(v91 + 72) * v53, v104, v48);
      v68 = (v61[7] + 16 * v53);
      v2 = v48;
      *v68 = v60;
      v68[1] = v32;
      v63 = *(v66 + 8);
      v63(v67, v48);
      v69 = v61[2];
      v70 = __OFADD__(v69, 1);
      v71 = v69 + 1;
      if (v70)
      {
        goto LABEL_59;
      }

      v61[2] = v71;
      v6 = v65;
      v1 = v64;
      v33 = v101;
    }

    *&v1[v102] = v61;

    swift_endAccess();
    v63(v6, v2);
    v72 = v32 + v39;
    if (v30 > v32 + v39)
    {
      v72 = v30;
    }

    if (v98 == v95)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = v72;
    }

    if (v98 == v95)
    {
      v32 = v72;
    }

    v12 = v94;
    v17 = v92;
    v20 = v96;
    v22 = &selRef_configurationWithWeight_;
LABEL_19:
    if (v100 == ++v29)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  sub_1007716DC();
  __break(1u);
LABEL_65:
  sub_1007716DC();
  __break(1u);
}

id sub_10059CE44()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension25ShelfDisplayingFlowLayout_multiColumnMinYBySection;
  *&v0[v1] = sub_1000FE70C(_swiftEmptyArrayStorage);
  v2 = OBJC_IVAR____TtC20ProductPageExtension25ShelfDisplayingFlowLayout_multiColumnOrigins;
  *&v0[v2] = sub_1000FE7EC(_swiftEmptyArrayStorage);
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
  v3 = objc_msgSendSuper2(&v8, "init");
  sub_100016F40(0, &qword_100950650);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = v3;
  v6 = sub_10076FF6C();
  [v5 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v6];

  return v5;
}

void sub_10059D03C(double a1, double a2, double a3, double a4)
{
  v52 = sub_10075E11C();
  v9 = *(v52 - 8);
  __chkstk_darwin(v52);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v51 = &v44 - v13;
  v14 = type metadata accessor for ShelfDisplayingFlowLayout();
  v46 = v4;
  v55.receiver = v4;
  v55.super_class = v14;
  v15 = objc_msgSendSuper2(&v55, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (!v15)
  {
    return;
  }

  v16 = v15;
  sub_100016F40(0, &qword_100947EF0);
  v17 = sub_1007701BC();

  v54 = _swiftEmptyArrayStorage;
  if (v17 >> 62)
  {
    v18 = sub_10077158C();
    v19 = v46;
    if (v18)
    {
      goto LABEL_4;
    }

LABEL_25:
    v45 = _swiftEmptyArrayStorage;
LABEL_26:
    v53 = v17;
    sub_1000F99DC(v45);
    return;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v19 = v46;
  if (!v18)
  {
    goto LABEL_25;
  }

LABEL_4:
  if (v18 >= 1)
  {
    v20 = OBJC_IVAR____TtC20ProductPageExtension25ShelfDisplayingFlowLayout_multiColumnMinYBySection;
    v21 = v17 & 0xC000000000000001;
    v49 = OBJC_IVAR____TtC20ProductPageExtension25ShelfDisplayingFlowLayout_multiColumnOrigins;
    v50 = v11;
    swift_beginAccess();
    v44 = v20;
    swift_beginAccess();
    v22 = 0;
    v48 = "multiColumnOrigins";
    v23 = (v9 + 8);
    v45 = _swiftEmptyArrayStorage;
    v47 = v17 & 0xC000000000000001;
    while (1)
    {
      v24 = v21 ? sub_10077149C() : *(v17 + 8 * v22 + 32);
      v25 = v24;
      if (![v24 representedElementCategory])
      {
        break;
      }

LABEL_7:
      if (v18 == ++v22)
      {
        goto LABEL_26;
      }
    }

    v26 = [v25 indexPath];
    v27 = v51;
    sub_10075E06C();

    v28 = sub_10059C164();
    v29 = *v23;
    (*v23)(v27, v52);
    if (v28)
    {
      v30 = v28;
      sub_10077019C();
      if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();

      v45 = v54;
      v19 = v46;
    }

    v31 = [v25 indexPath];
    v32 = v50;
    sub_10075E06C();

    v33 = *&v19[v49];
    if (*(v33 + 16))
    {

      v34 = sub_100610A5C(v32);
      if (v35)
      {
        v36 = *(v33 + 56) + 16 * v34;
        v37 = *v36;
        v38 = *(v36 + 8);

        v39 = sub_10075E0AC();
        v40 = *&v19[v44];
        if (*(v40 + 16))
        {
          v41 = sub_10060FF40(v39);
          if (v42)
          {
            v43 = *(*(v40 + 56) + 8 * v41);

            v29(v32, v52);

            [v25 frame];
            [v25 setFrame:{v37, v38 + v43}];

LABEL_23:
            v21 = v47;
            goto LABEL_7;
          }
        }
      }

      else
      {
      }
    }

    v29(v32, v52);
    goto LABEL_23;
  }

  __break(1u);
}

id sub_10059D558()
{
  v1 = sub_10075E11C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = sub_10075E02C().super.isa;
  v6 = type metadata accessor for ShelfDisplayingFlowLayout();
  v15.receiver = v0;
  v15.super_class = v6;
  v7 = objc_msgSendSuper2(&v15, "layoutAttributesForItemAtIndexPath:", isa);

  if (v7)
  {
    v8 = [v7 indexPath];
    sub_10075E06C();

    v9 = sub_10059C458(v4);
    v11 = v10;
    v13 = v12;
    (*(v2 + 8))(v4, v1);
    if ((v13 & 1) == 0)
    {
      [v7 frame];
      [v7 setFrame:{*&v9, v11}];
    }
  }

  return v7;
}

void *sub_10059DAB0(double a1, double a2, double a3, double a4)
{
  v18.receiver = v4;
  v18.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
  v9 = objc_msgSendSuper2(&v18, "invalidationContextForBoundsChange:", a1, a2, a3, a4);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  v11 = [v4 collectionView];
  if (v11)
  {
    v12 = v11;
    [v11 bounds];
    v14 = v13;
    v16 = v15;

    if (v14 != a3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v16 = 0.0;
    if (a3 != 0.0)
    {
LABEL_6:
      [v10 setInvalidateFlowLayoutAttributes:1];
      [v10 setInvalidateFlowLayoutDelegateMetrics:1];
      return v10;
    }
  }

  if (v16 != a4)
  {
    goto LABEL_6;
  }

  return v10;
}

id sub_10059DC4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10059DDA0()
{
  v0 = sub_10076D39C();
  __chkstk_darwin(v0 - 8);
  v26[3] = v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v26[2] = v26 - v3;
  v4 = sub_10076D1AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10075E93C();
  sub_10000DB18(v8, qword_1009A09A0);
  v26[1] = sub_10000A61C(v8, qword_1009A09A0);
  v68[8] = &type metadata for Double;
  v68[9] = &protocol witness table for Double;
  v68[5] = 0x4024000000000000;
  if (qword_100940908 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D3DC();
  v10 = sub_10000A61C(v9, qword_10095E110);
  v11 = *(v9 - 8);
  v12 = *(v11 + 16);
  v30 = v11 + 16;
  v31 = v12;
  v12(v7, v10, v9);
  v13 = v5[13];
  v29 = enum case for FontSource.useCase(_:);
  v28 = v13;
  v13(v7);
  v14 = sub_10076D9AC();
  v68[3] = v14;
  v68[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v68);
  v66 = v4;
  v67 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(v65);
  v27 = v5[2];
  v27(v15, v7, v4);
  sub_10076D9BC();
  v16 = v5[1];
  v16(v7, v4);
  if (qword_100940910 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v9, qword_10095E128);
  v31(v7, v17, v9);
  v28(v7, v29, v4);
  v66 = v14;
  v67 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v65);
  v63 = v4;
  v64 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(v62);
  v27(v18, v7, v4);
  sub_10076D9BC();
  v16(v7, v4);
  if (qword_100940918 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A61C(v9, qword_10095E140);
  v31(v7, v19, v9);
  v28(v7, v29, v4);
  v63 = v14;
  v64 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v62);
  v60 = v4;
  v61 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(v59);
  v27(v20, v7, v4);
  sub_10076D9BC();
  v16(v7, v4);
  if (qword_100940920 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A61C(v9, qword_10095E158);
  v31(v7, v21, v9);
  v28(v7, v29, v4);
  v60 = v14;
  v61 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v59);
  v57 = v4;
  v58 = &protocol witness table for FontSource;
  v22 = sub_10000DB7C(v56);
  v27(v22, v7, v4);
  sub_10076D9BC();
  v16(v7, v4);
  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A61C(v14, qword_1009A2350);
  v57 = v14;
  v58 = &protocol witness table for StaticDimension;
  v24 = sub_10000DB7C(v56);
  (*(*(v14 - 8) + 16))(v24, v23, v14);
  v55 = &protocol witness table for Double;
  v54 = &type metadata for Double;
  v52 = &protocol witness table for Double;
  v53 = 0x4034000000000000;
  v51 = &type metadata for Double;
  v50 = 0x4057400000000000;
  sub_10076D3AC();
  sub_10076D3AC();
  v48 = &type metadata for Double;
  v49 = &protocol witness table for Double;
  v46 = &protocol witness table for Double;
  v47 = 0x3FAC9107B0E4883ELL;
  v45 = &type metadata for Double;
  v43 = &protocol witness table for Double;
  v44 = 0x3FAC9107B0E4883ELL;
  v42 = &type metadata for Double;
  v40 = &protocol witness table for Double;
  v41 = 0x3FAC0E070381C0E0;
  v39 = &type metadata for Double;
  v37 = &protocol witness table for Double;
  v38 = 0x3FA6CB65B2D96CB6;
  v36 = &type metadata for Double;
  v34 = &protocol witness table for Double;
  v35 = 0x4034000000000000;
  v33 = &type metadata for Double;
  v32 = 0x4034000000000000;
  return sub_10075E91C();
}

uint64_t sub_10059E498()
{
  v0 = sub_10000A5D4(&unk_100942EF0);
  sub_10000DB18(v0, qword_10095E170);
  sub_10000A61C(v0, qword_10095E170);
  sub_10000A5D4(&unk_100943120);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FDDC();
}

char *sub_10059E534(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10075E77C();
  __chkstk_darwin(v10 - 8);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076771C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v17 - 8);
  v19 = &v68 - v18;
  v20 = OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_metrics;
  if (qword_100940928 != -1)
  {
    swift_once();
  }

  v21 = sub_10075E93C();
  v22 = sub_10000A61C(v21, qword_1009A09A0);
  (*(*(v21 - 8) + 16))(&v5[v20], v22, v21);
  v23 = OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_bodyBackgroundColor;
  v68 = sub_100016F40(0, &qword_100942F10);
  *&v5[v23] = sub_100770D9C();
  if (qword_100940908 != -1)
  {
    swift_once();
  }

  v24 = sub_10076D3DC();
  v25 = sub_10000A61C(v24, qword_10095E110);
  v26 = *(v24 - 8);
  v73 = *(v26 + 16);
  v73(v19, v25, v24);
  v72 = *(v26 + 56);
  v72(v19, 0, 1, v24);
  v27 = *(v14 + 104);
  v71 = enum case for DirectionalTextAlignment.none(_:);
  v70 = v27;
  v27(v16);
  v28 = sub_1007626BC();
  v69 = v13;
  v29 = v28;
  v30 = objc_allocWithZone(v28);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel] = sub_1007626AC();
  if (qword_100940910 != -1)
  {
    swift_once();
  }

  v31 = sub_10000A61C(v24, qword_10095E128);
  v73(v19, v31, v24);
  v72(v19, 0, 1, v24);
  v70(v16, v71, v69);
  v32 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_titleLabel] = sub_1007626AC();
  if (qword_100940918 != -1)
  {
    swift_once();
  }

  v33 = sub_10000A61C(v24, qword_10095E140);
  v73(v19, v33, v24);
  v72(v19, 0, 1, v24);
  v70(v16, v71, v69);
  v34 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel] = sub_1007626AC();
  v35 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_body] = v35;
  v36 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_offerButton] = sub_1001E89B8(0);
  sub_10075E6FC();
  v37 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  *&v5[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_iconView] = sub_1005B7DD4(v12, 1);
  if (qword_100940920 != -1)
  {
    swift_once();
  }

  v38 = sub_10000A61C(v24, qword_10095E158);
  v73(v19, v38, v24);
  v72(v19, 0, 1, v24);
  v70(v16, v71, v69);
  v39 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppDescription] = sub_1007626AC();
  v40 = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell();
  v75.receiver = v5;
  v75.super_class = v40;
  v41 = objc_msgSendSuper2(&v75, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v45 = v41;
  [v45 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v46 = [v45 contentView];
  v47 = OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel;
  [v46 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel]];

  v48 = [v45 contentView];
  [v48 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_titleLabel]];

  v49 = [v45 contentView];
  v50 = OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel;
  [v49 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel]];

  v51 = [v45 contentView];
  [v51 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_offerButton]];

  v52 = [v45 contentView];
  v53 = OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_body;
  [v52 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_body]];

  v54 = [v45 contentView];
  [v54 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_iconView]];

  v55 = [v45 contentView];
  v56 = OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppDescription;
  [v55 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppDescription]];

  v57 = [*&v45[v53] layer];
  [v57 setCornerRadius:20.0];

  v58 = *&v45[v47];
  v59 = [v45 tintColor];
  [v58 setTextColor:v59];

  v60 = *&v45[v50];
  v61 = sub_100770D1C();
  [v60 setTextColor:v61];

  [*&v45[v53] setBackgroundColor:*&v45[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_bodyBackgroundColor]];
  v62 = qword_100940930;
  v63 = *&v45[v56];
  if (v62 != -1)
  {
    swift_once();
  }

  v64 = sub_10000A5D4(&unk_100942EF0);
  sub_10000A61C(v64, qword_10095E170);
  v74 = v45;
  sub_10075FDCC();

  sub_100770E7C();
  v65 = *&v45[v56];
  v66 = sub_100770D1C();
  [v65 setTextColor:v66];

  return v45;
}

uint64_t sub_10059F01C()
{
  v1 = v0;
  v2 = sub_10076D1FC();
  v43 = *(v2 - 8);
  v44 = v2;
  __chkstk_darwin(v2);
  v42 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10075E93C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10075E95C();
  v40 = *(v8 - 8);
  v41 = v8;
  __chkstk_darwin(v8);
  v39 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell();
  v66.receiver = v0;
  v66.super_class = v10;
  objc_msgSendSuper2(&v66, "layoutSubviews");
  v11 = [v0 contentView];
  v38 = sub_100016F40(0, &qword_1009441F0);
  sub_10076422C();

  (*(v5 + 16))(v7, &v1[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_metrics], v4);
  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_offerButton];
  sub_10076422C();
  v13 = &v12[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize];
  if (v12[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v14 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000A570(&v12[v14], v63);
    sub_10000CF78(v63, v64);
    sub_100767A2C();
    v16 = v15;
    v18 = v17;
    sub_10000CD74(v63);
    *v13 = v16;
    *(v13 + 1) = v18;
    v13[16] = 0;
  }

  sub_10075E92C();
  v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel];
  v20 = sub_1007626BC();
  v64 = v20;
  v65 = &protocol witness table for UILabel;
  v63[0] = v19;
  v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_titleLabel];
  v61 = v20;
  v62 = &protocol witness table for UILabel;
  v60 = v21;
  v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel];
  v58 = v20;
  v59 = &protocol witness table for UILabel;
  v57 = v22;
  v23 = type metadata accessor for OfferButton();
  v37[1] = v7;
  v55 = v23;
  v56 = &protocol witness table for UIView;
  v54 = v12;
  v37[0] = v12;
  v24 = *&v1[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_iconView];
  v52 = type metadata accessor for InAppPurchaseView();
  v53 = &protocol witness table for UIView;
  v50 = &protocol witness table for UILabel;
  v51 = v24;
  v25 = *&v1[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppDescription];
  v49 = v20;
  v47 = &protocol witness table for UIView;
  v48 = v25;
  v26 = *&v1[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_body];
  v46 = v38;
  v45 = v26;
  v27 = v19;
  v28 = v21;
  v29 = v22;
  v30 = v37[0];
  v31 = v24;
  v32 = v25;
  v33 = v26;
  v34 = v39;
  sub_10075E94C();
  v35 = v42;
  sub_10075E8FC();
  (*(v43 + 8))(v35, v44);
  return (*(v40 + 8))(v34, v41);
}

id sub_10059F4C0(void *a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_100940930 != -1)
    {
      swift_once();
    }

    v6 = sub_10000A5D4(&unk_100942EF0);
    sub_10000A61C(v6, qword_10095E170);
    v7 = v1;
    sub_10075FDCC();

    return sub_100770E7C();
  }

  return result;
}

id sub_10059F660()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseSearchResultCollectionViewCell()
{
  result = qword_10095E1C0;
  if (!qword_10095E1C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10059F7D8(uint64_t a1)
{
  v29 = a1;
  v2 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v26 = &v25 - v6;
  v7 = sub_10000A5D4(&unk_100957590);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = sub_10000A5D4(&unk_1009575B8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  v17 = OBJC_IVAR____TtC20ProductPageExtension45InteractiveSectionBackgroundScrollCoordinator_currentState;
  swift_beginAccess();
  v18 = *(v14 + 56);
  v28 = v1;
  sub_100016E2C(v1 + v17, v16, &unk_100957590);
  sub_100016E2C(v29, &v16[v18], &unk_100957590);
  v19 = *(v3 + 48);
  if (v19(v16, 1, v2) == 1)
  {
    if (v19(&v16[v18], 1, v2) == 1)
    {
      return sub_10000CFBC(v16, &unk_100957590);
    }

    goto LABEL_6;
  }

  sub_100016E2C(v16, v12, &unk_100957590);
  if (v19(&v16[v18], 1, v2) == 1)
  {
    sub_10021C73C(v12);
LABEL_6:
    v21 = &unk_1009575B8;
    goto LABEL_13;
  }

  v22 = v26;
  sub_100440F74(&v16[v18], v26);
  if (sub_1007621DC() & 1) != 0 && *&v12[*(v2 + 20)] == *(v22 + *(v2 + 20)) && (sub_10075E05C())
  {
    v23 = sub_1007621DC();
    sub_10021C73C(v22);
    sub_10021C73C(v12);
    result = sub_10000CFBC(v16, &unk_100957590);
    if (v23)
    {
      return result;
    }

    goto LABEL_14;
  }

  sub_10021C73C(v22);
  sub_10021C73C(v12);
  v21 = &unk_100957590;
LABEL_13:
  sub_10000CFBC(v16, v21);
LABEL_14:
  sub_100016E2C(v28 + v17, v9, &unk_100957590);
  if (v19(v9, 1, v2) == 1)
  {
    return sub_10000CFBC(v9, &unk_100957590);
  }

  v24 = v27;
  sub_100440F74(v9, v27);
  sub_10059FBB8();
  return sub_10021C73C(v24);
}

uint64_t sub_10059FBB8()
{
  v0 = sub_10075E11C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E08C();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v5 = Strong, type metadata accessor for InteractiveSectionBackgroundView(), sub_1007708EC(), v6 = sub_10076FF6C(), , isa = sub_10075E02C().super.isa, v8 = [v5 _visibleDecorationViewOfKind:v6 atIndexPath:isa], v5, v6, isa, !v8) || (*&v16[0] = v8, sub_100440FD8(), sub_10000A5D4(&unk_1009575E0), (swift_dynamicCast() & 1) == 0))
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
  }

  sub_10059FE50(v18);
  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9 || (v10 = v9, v11 = UICollectionElementKindSectionHeader, v12 = sub_10075E02C().super.isa, v13 = [v10 _visibleSupplementaryViewOfKind:v11 atIndexPath:v12], v10, v11, v12, !v13) || (v15[1] = v13, sub_100440FD8(), sub_10000A5D4(&unk_1009575E0), (swift_dynamicCast() & 1) == 0))
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
  }

  sub_10059FE50(v16);
  (*(v1 + 8))(v3, v0);
  sub_10000CFBC(v16, &unk_1009575D0);
  return sub_10000CFBC(v18, &unk_1009575D0);
}

uint64_t sub_10059FE50(uint64_t a1)
{
  v49 = sub_10000A5D4(&unk_1009575B8);
  __chkstk_darwin(v49);
  v50 = &v43 - v3;
  v4 = sub_10000A5D4(&unk_100957590);
  __chkstk_darwin(v4 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  __chkstk_darwin(v10);
  v12 = &v43 - v11;
  __chkstk_darwin(v13);
  v15 = (&v43 - v14);
  v16 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v43 - v21;
  sub_100016E2C(a1, &v51, &unk_1009575D0);
  if (!v52)
  {
    return sub_10000CFBC(&v51, &unk_1009575D0);
  }

  v47 = v12;
  v48 = v22;
  sub_10003F19C(&v51, v54);
  v23 = OBJC_IVAR____TtC20ProductPageExtension45InteractiveSectionBackgroundScrollCoordinator_currentState;
  swift_beginAccess();
  sub_100016E2C(v1 + v23, v15, &unk_100957590);
  v24 = *(v17 + 48);
  if (v24(v15, 1, v16) == 1)
  {
    v25 = &unk_100957590;
    v26 = v15;
LABEL_21:
    sub_10000CFBC(v26, v25);
    return sub_10000CD74(v54);
  }

  v43 = v19;
  v44 = v6;
  v45 = a1;
  v46 = v1;
  v28 = v48;
  sub_100440F74(v15, v48);
  v29 = v55;
  v30 = v56;
  sub_10000CF78(v54, v55);
  v31 = v47;
  (*(v30 + 8))(v29, v30);
  sub_10021C620(v28, v9);
  (*(v17 + 56))(v9, 0, 1, v16);
  v32 = v50;
  v33 = *(v49 + 48);
  sub_100016E2C(v31, v50, &unk_100957590);
  sub_100016E2C(v9, v32 + v33, &unk_100957590);
  if (v24(v32, 1, v16) == 1)
  {
    sub_10000CFBC(v9, &unk_100957590);
    sub_10000CFBC(v31, &unk_100957590);
    if (v24((v32 + v33), 1, v16) == 1)
    {
      sub_10000CFBC(v32, &unk_100957590);
LABEL_8:
      sub_10021C73C(v48);
      return sub_10000CD74(v54);
    }

    goto LABEL_11;
  }

  v34 = v44;
  sub_100016E2C(v32, v44, &unk_100957590);
  if (v24((v32 + v33), 1, v16) == 1)
  {
    sub_10000CFBC(v9, &unk_100957590);
    sub_10000CFBC(v47, &unk_100957590);
    sub_10021C73C(v34);
LABEL_11:
    sub_10000CFBC(v32, &unk_1009575B8);
    v35 = v46;
    goto LABEL_18;
  }

  v36 = v43;
  sub_100440F74(v32 + v33, v43);
  v37 = sub_1007621DC();
  v35 = v46;
  if (v37 & 1) != 0 && *(v34 + *(v16 + 20)) == *(v36 + *(v16 + 20)) && (sub_10075E05C())
  {
    v38 = sub_1007621DC();
    sub_10021C73C(v36);
    sub_10000CFBC(v9, &unk_100957590);
    sub_10000CFBC(v47, &unk_100957590);
    sub_10021C73C(v34);
    sub_10000CFBC(v32, &unk_100957590);
    if (v38)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_10021C73C(v36);
    sub_10000CFBC(v9, &unk_100957590);
    sub_10000CFBC(v47, &unk_100957590);
    sub_10021C73C(v34);
    sub_10000CFBC(v32, &unk_100957590);
  }

LABEL_18:
  sub_100016E2C(v45, &v51, &unk_1009575D0);
  v39 = v52;
  if (!v52)
  {
    sub_10021C73C(v48);
    v25 = &unk_1009575D0;
    v26 = &v51;
    goto LABEL_21;
  }

  v40 = v53;
  sub_10000CF78(&v51, v52);
  v41 = *(v35 + 80);
  v42 = v48;
  (*(v40 + 16))(v48, v41, v39, v40);
  sub_10021C73C(v42);
  sub_10000CD74(&v51);
  return sub_10000CD74(v54);
}

uint64_t sub_1005A0464()
{
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectRelease();
  sub_10000CFBC(v0 + OBJC_IVAR____TtC20ProductPageExtension45InteractiveSectionBackgroundScrollCoordinator_currentState, &unk_100957590);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InteractiveSectionBackgroundScrollCoordinator()
{
  result = qword_10095E1F8;
  if (!qword_10095E1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005A0544()
{
  sub_10021B8CC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1005A0618(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10043FD38(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1005A0694(v6);
  return sub_1007714DC();
}

void sub_1005A0694(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_10077162C(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000A5D4(&qword_100948BB0);
        v6 = sub_10077023C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1005A09CC(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1005A07A4(0, v2, 1, a1);
  }
}

void sub_1005A07A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = sub_10075E11C();
  __chkstk_darwin(v33);
  v32 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v28 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v34 = *a4;
    v14 = v34 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v30 = v14;
    v31 = a3;
    v16 = *(v34 + 8 * a3);
    v29 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v19 = [v16 indexPath];
      sub_10075E06C();

      v20 = [v18 indexPath];
      v21 = v32;
      sub_10075E06C();

      LOBYTE(v20) = sub_10075E04C();
      v22 = *v13;
      v23 = v21;
      v24 = v33;
      (*v13)(v23, v33);
      v22(v12, v24);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if ((v20 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v14 = v30 + 8;
        v15 = v29 - 1;
        if (v31 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v25;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1005A09CC(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v111 = a1;
  v120 = sub_10075E11C();
  __chkstk_darwin(v120);
  v119 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v118 = &v105 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v111;
    if (!*v111)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v100 = a4;
    }

    else
    {
LABEL_121:
      v100 = sub_10043FB64(a4);
    }

    v121 = v100;
    v101 = *(v100 + 2);
    if (v101 >= 2)
    {
      while (*v16)
      {
        a4 = *&v100[16 * v101];
        v102 = v100;
        v103 = *&v100[16 * v101 + 24];
        sub_1005A1254((*v16 + 8 * a4), (*v16 + 8 * *&v100[16 * v101 + 16]), (*v16 + 8 * v103), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v103 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_10043FB64(v102);
        }

        if (v101 - 2 >= *(v102 + 2))
        {
          goto LABEL_115;
        }

        v104 = &v102[16 * v101];
        *v104 = a4;
        v104[1] = v103;
        v121 = v102;
        sub_10043FAD8(v101 - 1);
        v100 = v121;
        v101 = *(v121 + 2);
        if (v101 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v117 = (v11 + 8);
  v15 = _swiftEmptyArrayStorage;
  v110 = a4;
  v106 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v115 = v13;
      v108 = v15;
      v109 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v114 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v21 = [v18 indexPath];
      v22 = v118;
      sub_10075E06C();

      v23 = [v20 indexPath];
      v24 = v119;
      sub_10075E06C();

      LODWORD(v116) = sub_10075E04C();
      v25 = *v117;
      v26 = v120;
      (*v117)(v24, v120);
      v25(v22, v26);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v107 = v16;
      v27 = (v16 + 2);
      while (1)
      {
        v14 = v115;
        if (v115 == v27)
        {
          break;
        }

        v28 = *(v5 - 8);
        v29 = *v5;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v30 = [v29 indexPath];
        v31 = v118;
        sub_10075E06C();

        v32 = [v28 indexPath];
        v33 = v119;
        sub_10075E06C();

        LODWORD(v32) = sub_10075E04C() & 1;
        v34 = v33;
        v35 = v120;
        v25(v34, v120);
        v25(v31, v35);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        ++v27;
        v5 += 8;
        if ((v116 & 1) != v32)
        {
          v14 = (v27 - 1);
          break;
        }
      }

      v15 = v108;
      v6 = v109;
      a4 = v110;
      v16 = v107;
      v36 = v114;
      if (v116)
      {
        if (v14 < v107)
        {
          goto LABEL_118;
        }

        a3 = v106;
        if (v107 < v14)
        {
          v37 = 8 * v14 - 8;
          v38 = v14;
          v39 = v107;
          do
          {
            if (v39 != --v38)
            {
              v41 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v40 = *(v41 + v36);
              *(v41 + v36) = *(v41 + v37);
              *(v41 + v37) = v40;
            }

            v39 = (v39 + 1);
            v37 -= 8;
            v36 += 8;
          }

          while (v39 < v38);
        }
      }

      else
      {
        a3 = v106;
      }
    }

    v42 = a3[1];
    if (v14 < v42)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v43 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v43 >= v42)
        {
          v43 = a3[1];
        }

        if (v43 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v43)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v56 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v56;
    }

    else
    {
      v15 = sub_10049D820(0, *(v56 + 2) + 1, 1, v56);
    }

    a4 = *(v15 + 2);
    v57 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v57 >> 1)
    {
      v15 = sub_10049D820((v57 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v58 = &v15[16 * a4];
    *(v58 + 4) = v16;
    *(v58 + 5) = v14;
    v59 = *v111;
    if (!*v111)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v60 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v61 = *(v15 + 4);
          v62 = *(v15 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_56:
          if (v64)
          {
            goto LABEL_105;
          }

          v77 = &v15[16 * v5];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_108;
          }

          v83 = &v15[16 * v60 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_112;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v60 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v87 = &v15[16 * v5];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_70:
        if (v82)
        {
          goto LABEL_107;
        }

        v90 = &v15[16 * v60];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_110;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v60 - 1;
        if (v60 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v98 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v60 + 40];
        sub_1005A1254((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v60 + 32]), (*a3 + 8 * v16), v59);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_10043FB64(v98);
        }

        if (a4 >= *(v98 + 2))
        {
          goto LABEL_102;
        }

        v99 = &v98[16 * a4];
        *(v99 + 4) = v5;
        *(v99 + 5) = v16;
        v121 = v98;
        a4 = &v121;
        sub_10043FAD8(v60);
        v15 = v121;
        v5 = *(v121 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v15[16 * v5 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_103;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_104;
      }

      v72 = &v15[16 * v5];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_106;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_109;
      }

      if (v76 >= v68)
      {
        v94 = &v15[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_113;
        }

        if (v63 < v97)
        {
          v60 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v110;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v108 = v15;
  v109 = v6;
  v116 = *a3;
  v44 = v116 + 8 * v14 - 8;
  v107 = v16;
  a4 = v16 - v14;
  v112 = v43;
LABEL_29:
  v114 = v44;
  v115 = v14;
  v5 = *(v116 + 8 * v14);
  v113 = a4;
  v45 = v44;
  while (1)
  {
    v46 = *v45;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v47 = [v5 indexPath];
    v48 = v118;
    sub_10075E06C();

    v49 = [v46 indexPath];
    v50 = v119;
    sub_10075E06C();

    LOBYTE(v49) = sub_10075E04C();
    v51 = *v117;
    v52 = v50;
    v53 = v120;
    (*v117)(v52, v120);
    v51(v48, v53);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v49 & 1) == 0)
    {
LABEL_28:
      v14 = v115 + 1;
      v44 = v114 + 8;
      a4 = v113 - 1;
      if ((v115 + 1) != v112)
      {
        goto LABEL_29;
      }

      v14 = v112;
      v15 = v108;
      v6 = v109;
      a3 = v106;
      v16 = v107;
      goto LABEL_36;
    }

    if (!v116)
    {
      break;
    }

    v54 = *v45;
    v5 = *(v45 + 8);
    *v45 = v5;
    *(v45 + 8) = v54;
    v45 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_1005A1254(void **a1, void **a2, void **a3, void **a4)
{
  v51 = sub_10075E11C();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v49 = &v45 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v52 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v54 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v52)
    {
      v46 = a4;
      v47 = (v8 + 8);
LABEL_27:
      v45 = a1;
      v29 = a1 - 1;
      v30 = a3 - 1;
      v31 = v54;
      v48 = a1 - 1;
      do
      {
        v53 = v30;
        v32 = v30 + 1;
        v33 = *--v31;
        v34 = *v29;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v35 = [v33 indexPath];
        v36 = v49;
        sub_10075E06C();

        v37 = [v34 indexPath];
        v38 = v50;
        sub_10075E06C();

        LOBYTE(v37) = sub_10075E04C();
        v39 = *v47;
        v40 = v38;
        v41 = v51;
        (*v47)(v40, v51);
        v39(v36, v41);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v37)
        {
          a4 = v46;
          a3 = v53;
          v43 = v48;
          if (v32 != v45)
          {
            *v53 = *v48;
          }

          if (v54 <= a4 || (a1 = v43, v43 <= v52))
          {
            a1 = v43;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v46;
        v42 = v53;
        if (v32 != v54)
        {
          *v53 = *v31;
        }

        v30 = v42 - 1;
        v54 = v31;
        v29 = v48;
      }

      while (v31 > a4);
      v54 = v31;
      a1 = v45;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v54 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v52 = a1;
        v17 = *a2;
        v18 = *a4;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v19 = [v17 indexPath];
        v20 = v49;
        sub_10075E06C();

        v21 = [v18 indexPath];
        v22 = v50;
        sub_10075E06C();

        LOBYTE(v21) = sub_10075E04C();
        v23 = *v16;
        v24 = v22;
        v25 = v51;
        (*v16)(v24, v51);
        v23(v20, v25);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if ((v21 & 1) == 0)
        {
          break;
        }

        v26 = a2;
        v27 = v52;
        v28 = v52 == a2++;
        if (!v28)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v27 + 1;
        if (a4 >= v54 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v26 = a4;
      v27 = v52;
      v28 = v52 == a4++;
      if (v28)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v27 = *v26;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v54 - a4 + (v54 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v54 - a4));
  }

  return 1;
}