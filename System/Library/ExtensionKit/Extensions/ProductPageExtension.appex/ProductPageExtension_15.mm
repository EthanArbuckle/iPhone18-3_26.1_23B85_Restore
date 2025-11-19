void sub_1001BB31C()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_itemLayoutContext;
  v10 = sub_10076341C();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_titleLabel;
  if (qword_100940FF8 != -1)
  {
    swift_once();
  }

  v12 = sub_10076D3DC();
  v13 = sub_10000A61C(v12, qword_1009A1DE0);
  v14 = *(v12 - 8);
  (*(v14 + 16))(v8, v13, v12);
  (*(v14 + 56))(v8, 0, 1, v12);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v15 = objc_allocWithZone(sub_1007626BC());
  *(v1 + v11) = sub_1007626AC();
  v16 = OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_shadowView;
  sub_10075F99C();
  *(v1 + v16) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_roundedCornerView;
  sub_10076394C();
  *(v1 + v17) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v18 = v1 + OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_artworkSize;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_hasArtwork) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_clickAction) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_objectGraph) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_gestureRecognizer) = 0;
  v19 = (v1 + OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_tapAction);
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_artworkView;
  sub_10075FD2C();
  *(v1 + v20) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_10077156C();
  __break(1u);
}

double sub_1001BB67C(uint64_t a1, void *a2)
{
  v3 = sub_10000A5D4(&unk_1009680C0);
  v55 = *(v3 - 8);
  v56 = v3;
  __chkstk_darwin(v3);
  v54 = v44 - v4;
  v5 = sub_10076738C();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v48 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = v44 - v8;
  v9 = sub_10076D7FC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v44 - v14;
  __chkstk_darwin(v16);
  v18 = v44 - v17;
  __chkstk_darwin(v19);
  v21 = v44 - v20;
  __chkstk_darwin(v22);
  v24 = v44 - v23;
  __chkstk_darwin(v25);
  v46 = v44 - v26;
  v53 = sub_10076DA7C();
  v51 = *(v53 - 8);
  *&v27 = __chkstk_darwin(v53).n128_u64[0];
  v45 = v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [a2 traitCollection];
  v44[2] = sub_10076106C();
  v44[1] = v30;
  sub_100016F40(0, &qword_100942F00);
  if (qword_100940FF8 != -1)
  {
    swift_once();
  }

  v31 = sub_10076D3DC();
  sub_10000A61C(v31, qword_1009A1DE0);
  v32 = sub_100770B3C();
  sub_10076D7EC();
  v47 = v32;
  sub_10076D7DC();
  v33 = *(v10 + 8);
  v33(v12, v9);
  sub_10076D73C();
  v33(v15, v9);
  sub_10076D79C();
  v33(v18, v9);
  sub_10076D78C();
  v33(v21, v9);
  sub_10076D7AC();
  v33(v24, v9);
  sub_10076DA5C();
  v34 = v45;
  sub_10076DA8C();
  if (sub_10077071C())
  {
    v35 = v48;
    sub_1001B997C(v29, v48);
  }

  else
  {
    v35 = v48;
    sub_1001B9CB4();
  }

  (*(v49 + 32))(v52, v35, v50);
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v36 = v53;
  v57[3] = v53;
  v57[4] = &protocol witness table for LabelPlaceholder;
  v37 = sub_10000DB7C(v57);
  v38 = v51;
  (*(v51 + 16))(v37, v34, v36);
  sub_1007673AC();
  swift_allocObject();
  *&v58 = sub_10076739C();
  sub_1001BBCF0(&unk_1009680D0, &type metadata accessor for RibbonBarItemCellLayout);
  v39 = v54;
  sub_10076D43C();
  swift_getOpaqueTypeConformance2();
  v40 = v56;
  sub_10076E0FC();
  v42 = v41;

  (*(v55 + 8))(v39, v40);
  (*(v38 + 8))(v34, v36);
  return v42;
}

uint64_t sub_1001BBCF0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1001BBD38()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1001BBE24(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10076D1AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D9AC();
  sub_10000DB18(v7, a2);
  sub_10000A61C(v7, a2);
  if (qword_100940F60 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_1009A1C18);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_10000DB7C(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_10076D9BC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1001BC000()
{
  sub_100016F40(0, &qword_100942F10);
  result = sub_100770D1C();
  qword_10099D780 = result;
  return result;
}

void *sub_1001BC044(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v55 = swift_isaMask & *v4;
  v10 = sub_10076771C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v56 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v13 - 8);
  v15 = &v51 - v14;
  v16 = qword_10094C5C0;
  sub_10076394C();
  *&v5[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = qword_10099D788;
  v18 = sub_10076341C();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v5[qword_10099D790] = 0;
  v5[qword_10099D798] = 0;
  v19 = &v5[qword_10099D7A0];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v19 = UIEdgeInsetsZero.top;
  v19[1] = left;
  v19[2] = bottom;
  v19[3] = right;
  v5[qword_10099D7A8] = 0;
  v23 = [objc_allocWithZone(UIView) init];
  *&v5[qword_10094C5C8] = v23;
  if (qword_100940F68 != -1)
  {
    swift_once();
  }

  v24 = sub_10076D3DC();
  v25 = sub_10000A61C(v24, qword_1009A1C30);
  v26 = *(v24 - 8);
  v54 = *(v26 + 16);
  v54(v15, v25, v24);
  v53 = *(v26 + 56);
  v53(v15, 0, 1, v24);
  v27 = enum case for DirectionalTextAlignment.none(_:);
  v52 = *(v11 + 104);
  v52(v56, enum case for DirectionalTextAlignment.none(_:), v10);
  v28 = sub_1007626BC();
  v51 = v10;
  v29 = v28;
  v30 = objc_allocWithZone(v28);
  *&v5[qword_10094C5D0] = sub_1007626AC();
  if (qword_100940F60 != -1)
  {
    swift_once();
  }

  v31 = sub_10000A61C(v24, qword_1009A1C18);
  v54(v15, v31, v24);
  v53(v15, 0, 1, v24);
  v52(v56, v27, v51);
  v32 = objc_allocWithZone(v29);
  *&v5[qword_10094C5D8] = sub_1007626AC();
  v33 = type metadata accessor for FramedMediaCollectionViewCell();
  v57.receiver = v5;
  v57.super_class = v33;
  v34 = objc_msgSendSuper2(&v57, "initWithFrame:", a1, a2, a3, a4);
  v35 = [v34 contentView];
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v36 = [v34 contentView];
  v37 = qword_10094C5C0;
  [v36 addSubview:*(v34 + qword_10094C5C0)];

  v38 = qword_10094C5C8;
  v39 = *(v34 + qword_10094C5C8);
  sub_100016F40(0, &qword_100942F10);
  v40 = v39;
  v41 = sub_100770D5C();
  [v40 setBackgroundColor:v41];

  [*(v34 + v38) setHidden:1];
  [*(v34 + v37) addSubview:*(v34 + v38)];
  v42 = qword_10094C5D0;
  v43 = *(v34 + qword_10094C5D0);
  v44 = sub_100770CFC();
  [v43 setTextColor:v44];

  [*(v34 + v38) addSubview:*(v34 + v42)];
  v45 = qword_10094C5D8;
  v46 = qword_10093F9A8;
  v47 = *(v34 + qword_10094C5D8);
  if (v46 != -1)
  {
    swift_once();
  }

  [v47 setTextColor:qword_10099D780];

  [*(v34 + v45) setTextAlignment:4];
  [*(v34 + v38) addSubview:*(v34 + v45)];
  v48 = *((swift_isaMask & *v34) + 0x130);
  v49 = *(v34 + v37);
  v48();

  return v34;
}

uint64_t sub_1001BC774()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for FramedMediaCollectionViewCell();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v2 = *(v0 + qword_10094C5C0);
  v3 = [v0 contentView];
  sub_100016F40(0, &qword_1009441F0);
  sub_10076422C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame:{v5, v7, v9, v11}];
  [v2 frame];
  v15[0] = 0;
  v15[1] = 0;
  v15[2] = v12;
  v15[3] = v13;
  sub_1001BC928(v15, *(v1 + qword_10099D7A8));
  return (*((swift_isaMask & *v1) + 0x128))(v15);
}

void sub_1001BC8E0(void *a1)
{
  v1 = a1;
  sub_1001BC774();
}

void sub_1001BC928(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v6 - 8);
  v8 = v94 - v7;
  v9 = sub_10077164C();
  v10 = *(v9 - 1);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2[qword_10099D798] != 1)
  {
    return;
  }

  v14 = [v2 traitCollection];
  v15 = sub_10077070C();

  v16 = 20.0;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 20.0;
  if (a2)
  {
    v17 = *&v3[qword_10099D7A0];
    v16 = *&v3[qword_10099D7A0 + 8];
    v18 = *&v3[qword_10099D7A0 + 16];
    v19 = *&v3[qword_10099D7A0 + 24];
  }

  if (v15)
  {
    v20 = v19;
  }

  else
  {
    v20 = v16;
  }

  v108 = v20;
  v22 = *a1;
  v21 = *(a1 + 8);
  v24 = *(a1 + 16);
  v23 = *(a1 + 24);
  v114.origin.x = *a1;
  v114.origin.y = v21;
  v114.size.width = v24;
  v114.size.height = v23;
  Width = CGRectGetWidth(v114);
  v106 = v23;
  v107 = Width - v16 - v19;
  v104 = v21;
  v105 = v22;
  v115.origin.x = v22;
  v115.origin.y = v21;
  v103 = v24;
  v115.size.width = v24;
  v115.size.height = v23;
  v26 = v17;
  v27 = CGRectGetHeight(v115) - v17 - v18;
  v28 = v15;
  v29 = *&v3[qword_10094C5D0];
  v30 = [v29 text];
  v101 = v28;
  if (v30)
  {

    v31 = v107;
    [v29 sizeThatFits:{v107, v27}];
    v17 = v32;
    v102 = v33;
    if (v28)
    {
      v116.origin.x = v19;
      v34 = v26;
      v116.origin.y = v26;
      v116.size.width = v31;
      v116.size.height = v27;
      MinX = CGRectGetMaxX(v116) - v17;
      v35 = v17;
      v36 = v17 + 30.0;
      v37 = 0.0;
    }

    else
    {
      v117.origin.x = v16;
      v34 = v26;
      v117.origin.y = v26;
      v117.size.width = v31;
      v117.size.height = v27;
      MinX = CGRectGetMinX(v117);
      v35 = v17;
      v37 = v17 + 30.0;
      v36 = v17 + 30.0;
    }

    v39 = v108 + v37;
    v38 = v31 - v36;
  }

  else
  {
    v102 = 0.0;
    MinX = 0.0;
    v35 = 0.0;
    v34 = v17;
    v38 = v107;
    v39 = v108;
  }

  if (qword_10093F998 != -1)
  {
    swift_once();
  }

  v40 = sub_10076D9AC();
  sub_10000A61C(v40, qword_10099D750);
  sub_10076D17C();
  v99 = v40;
  sub_10076D40C();
  v42 = v41;
  v44 = *(v10 + 8);
  v43 = v10 + 8;
  v97 = v44;
  v44(v13, v9);
  v107 = *&v3[qword_10094C5D8];
  v45 = [*&v107 attributedText];
  v100 = v35;
  if (v45)
  {
    v46 = v45;
    v94[0] = v29;
    v94[1] = v43;
    v95 = v9;
    v96 = a1;
    v47 = [v3 traitCollection];
    v9 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v46];
    v98 = COERCE_DOUBLE([v46 length]);
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    *(v48 + 24) = v47;
    *(v48 + 32) = v9;
    *(v48 + 40) = 1;
    a1 = swift_allocObject();
    *(a1 + 16) = sub_1000275EC;
    *(a1 + 24) = v48;
    v112 = sub_1000ACB04;
    v113 = a1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026610;
    v111 = &unk_10088B500;
    v49 = _Block_copy(aBlock);
    v29 = v113;
    v50 = v47;
    v108 = COERCE_DOUBLE(v9);

    [v46 enumerateAttributesInRange:0 options:*&v98 usingBlock:{0x100000, v49}];

    _Block_release(v49);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_34:
      swift_once();
      goto LABEL_28;
    }

    a1 = v96;
    v9 = v95;
    v29 = v94[0];
  }

  else
  {
    v108 = 0.0;
  }

  v98 = v42;
  if (qword_100940F60 != -1)
  {
    swift_once();
  }

  v52 = sub_10076D3DC();
  v53 = sub_10000A61C(v52, qword_1009A1C18);
  v54 = *(v52 - 8);
  (*(v54 + 16))(v8, v53, v52);
  (*(v54 + 56))(v8, 0, 1, v52);
  v55 = sub_10076C04C();
  v111 = v55;
  v112 = sub_10004C7BC();
  v56 = sub_10000DB7C(aBlock);
  (*(*(v55 - 8) + 104))(v56, enum case for Feature.measurement_with_labelplaceholder(_:), v55);
  sub_10076C90C();
  sub_10000CD74(aBlock);
  sub_10076990C();
  v17 = v57;
  v35 = v58;
  sub_10000CFBC(v8, &unk_100943250);
  v59 = v39;
  v60 = v34;
  v61 = v38;
  v62 = v27;
  if (v101)
  {
    MaxX = CGRectGetMaxX(*&v59);
    v64 = v34;
    v34 = MaxX - v17;
  }

  else
  {
    v65 = CGRectGetMinX(*&v59);
    v64 = v34;
    v34 = v65;
  }

  v8 = *&v107;
  isEscapingClosureAtFileLocation = v99;
  v66 = v39;
  v67 = v38;
  v68 = v27;
  MinY = CGRectGetMinY(*(&v64 - 1));
  if (qword_10093F990 != -1)
  {
    swift_once();
  }

  sub_10000A61C(isEscapingClosureAtFileLocation, qword_10099D738);
  sub_10076D42C();
  v27 = MinY + v70;
  v50 = &selRef_initWithTabBarSystemItem_tag_;
  [v8 setFrame:{v34, v27, v17, v35}];
  v71 = 0.0;
  v118.origin.y = 0.0;
  v118.origin.x = MinX;
  v39 = v100;
  v118.size.width = v100;
  v38 = v102;
  v118.size.height = v102;
  if (CGRectIsEmpty(v118))
  {
    goto LABEL_29;
  }

  if (qword_10093F9A0 != -1)
  {
    goto LABEL_34;
  }

LABEL_28:
  sub_10000A61C(isEscapingClosureAtFileLocation, qword_10099D768);
  sub_10076D17C();
  sub_10076D40C();
  v73 = v72;
  v97(v13, v9);
  v119.origin.x = v34;
  v119.origin.y = v27;
  v119.size.width = v17;
  v119.size.height = v35;
  v74 = CGRectGetMinY(v119);
  [v8 firstBaselineFromTop];
  v76 = v74 + v75;
  [v29 firstBaselineFromTop];
  v71 = v73 + v76 - v77;
LABEL_29:
  v78 = MinX;
  [v29 v50[217]];
  v120.origin.x = v78;
  v120.origin.y = v71;
  v120.size.width = v39;
  v120.size.height = v38;
  MaxY = CGRectGetMaxY(v120);
  [v29 lastBaselineFromBottom];
  v81 = MaxY - v80;
  v121.origin.x = v34;
  v121.origin.y = v27;
  v121.size.width = v17;
  v121.size.height = v35;
  v82 = CGRectGetMaxY(v121);
  [v8 lastBaselineFromBottom];
  v84 = v82 - v83;
  if (v81 > v84)
  {
    v84 = v81;
  }

  v85 = v98 + v84;
  v87 = v104;
  v86 = v105;
  v122.origin.x = v105;
  v122.origin.y = v104;
  v88 = v103;
  v122.size.width = v103;
  v89 = v106;
  v122.size.height = v106;
  v90 = CGRectGetMinX(v122);
  v123.origin.x = v86;
  v123.origin.y = v87;
  v123.size.width = v88;
  v123.size.height = v89;
  v91 = CGRectGetMaxY(v123) - v85;
  v124.origin.x = v86;
  v124.origin.y = v87;
  v124.size.width = v88;
  v124.size.height = v89;
  v125.size.width = CGRectGetWidth(v124);
  v125.origin.x = v90;
  v125.origin.y = v91;
  v125.size.height = v85;
  v126 = CGRectIntegral(v125);
  v92 = *&v3[qword_10094C5C8];
  [v92 v50[217]];
  [v92 frame];
  Height = CGRectGetHeight(v127);

  *(a1 + 24) = v89 - Height;
}

id sub_1001BD350()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FramedMediaCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001BD444()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1001BD49C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1001BD4B4()
{
  v1 = qword_10094C5C0;
  sub_10076394C();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = qword_10099D788;
  v3 = sub_10076341C();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + qword_10099D790) = 0;
  *(v0 + qword_10099D798) = 0;
  v4 = (v0 + qword_10099D7A0);
  v5 = *&UIEdgeInsetsZero.bottom;
  *v4 = *&UIEdgeInsetsZero.top;
  v4[1] = v5;
  *(v0 + qword_10099D7A8) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1001BD5D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, uint64_t a7@<D1>, double a8@<D6>, double a9@<D7>, char *a10, char *a11)
{
  v128 = a4;
  v139 = a2;
  v140 = a3;
  v141 = a1;
  v133 = a5;
  v124 = sub_10000A5D4(&qword_100942908);
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v122 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v121 = &v111 - v17;
  v120 = sub_10076D39C();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_10076B6EC();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v114 = &v111 - v21;
  v126 = sub_10076EA6C();
  v127 = *(v126 - 8);
  __chkstk_darwin(v126);
  v125 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v23 - 8);
  v131 = &v111 - v24;
  v135 = sub_10076B5BC();
  v25 = *(v135 - 8);
  __chkstk_darwin(v135);
  v136 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v111 - v28;
  __chkstk_darwin(v30);
  v32 = &v111 - v31;
  v33 = sub_10076C36C();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v113 = &v111 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v111 = &v111 - v37;
  __chkstk_darwin(v38);
  v112 = &v111 - v39;
  __chkstk_darwin(v40);
  v132 = &v111 - v41;
  __chkstk_darwin(v42);
  v44 = &v111 - v43;
  v45 = sub_10000A5D4(&qword_100942C40);
  v46 = v45 - 8;
  __chkstk_darwin(v45);
  v48 = &v111 - v47;
  sub_100016E2C(v139, &v111 - v47, &qword_1009499A0);
  v49 = *(v46 + 56);
  v134 = v48;
  v50 = &v48[v49];
  v51 = v34;
  sub_100016E2C(v140, v50, &qword_1009499A0);
  swift_getKeyPath();
  sub_10000A5D4(&unk_100946720);
  sub_10076F49C();

  v52 = *(v34 + 104);
  v53 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v144)
  {
    v53 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v54 = *v53;
  v137 = v33;
  v138 = v44;
  v55 = v44;
  v56 = v135;
  v52(v55, v54, v33);
  swift_getKeyPath();
  sub_10076F49C();

  (*(v25 + 104))(v29, enum case for Shelf.ContentType.placeholder(_:), v56);
  sub_1001C01E4(&qword_10094C660, &type metadata accessor for Shelf.ContentType);
  v139 = v32;
  sub_10077018C();
  sub_10077018C();
  if (v144 == v142 && v145 == v143)
  {
    v57 = 1;
  }

  else
  {
    v57 = sub_10077167C();
  }

  v140 = *(v25 + 8);
  v140(v29, v56);

  v58 = v139;
  if (v57)
  {
    swift_getKeyPath();
    v59 = v131;
    sub_10076F49C();

    if ((*(v25 + 48))(v59, 1, v56) == 1)
    {
      sub_10000CFBC(v59, &unk_1009568A0);
    }

    else
    {
      v140(v58, v56);
      (*(v25 + 32))(v58, v59, v56);
    }
  }

  v60 = a11;
  v61 = v136;
  (*(v25 + 16))(v136, v58, v56);
  v62 = (*(v25 + 88))(v61, v56);
  if (v62 == enum case for Shelf.ContentType.smallLockup(_:) || v62 == enum case for Shelf.ContentType.purchasesLockup(_:) || v62 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.largeLockup(_:))
  {
LABEL_15:
    v63 = v125;
    sub_10076202C();
    v64 = sub_10076EA4C();
    (*(v127 + 8))(v63, v126);
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_10051E830(v64 & 1);
LABEL_41:
    sub_10076C33C();
    v140(v58, v56);
    v69 = *(v51 + 8);
    v70 = v65;
    v77 = v66;
    goto LABEL_42;
  }

  if (v62 == enum case for Shelf.ContentType.productTopLockup(_:))
  {
LABEL_17:
    v129 = a8;
    v130 = a9;
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    if (qword_100941288 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_85;
  }

  if (v62 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v62 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v62 == enum case for Shelf.ContentType.mediumAdLockupWithAlignedRegionBackground(_:) || v62 == enum case for Shelf.ContentType.mediumAdLockupWithScreenshotsBackground(_:) || v62 == enum case for Shelf.ContentType.condensedAdLockupWithIconBackground(_:) || v62 == enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.ribbonBar(_:) || v62 == enum case for Shelf.ContentType.ribbonFlow(_:))
  {
    v71 = v121;
    sub_10076C28C();
    v72 = v122;
    sub_10076C28C();
    v68 = v137;
    v73 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_1004C8060(v71, v72);
    sub_10076C33C();
    v74 = *(*&v123 + 8);
    v75 = v72;
    v76 = v124;
    v74(v75, v124);
    v74(v71, v76);
    v140(v58, v56);
    v69 = *(v51 + 8);
    v70 = v73;
    goto LABEL_32;
  }

  if (v62 == enum case for Shelf.ContentType.paragraph(_:) || v62 == enum case for Shelf.ContentType.annotation(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.footnote(_:))
  {
LABEL_30:
    v68 = v137;
    v67 = v138;
    (*(v34 + 16))(v132, v138, v137);
    sub_1005AC334(0.0);
    sub_10076C33C();
    v140(v58, v56);
    v69 = *(v34 + 8);
    v70 = v67;
LABEL_32:
    v77 = v68;
LABEL_42:
    v69(v70, v77);
    return sub_10000CFBC(v134, &qword_100942C40);
  }

  if (v62 == enum case for Shelf.ContentType.editorialCard(_:))
  {
    if (sub_10076205C())
    {
      v78 = v118;
      sub_10076D3AC();
      v79 = sub_10076D2EC();
      (*(v119 + 8))(v78, v120);
      if (v79)
      {
        v81 = v137;
        v80 = v138;
        v82 = v132;
        if (qword_100941290 == -1)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v81 = v137;
        v80 = v138;
        v82 = v132;
        if (qword_100941298 == -1)
        {
LABEL_50:

          (*(v51 + 16))(v82, v80, v81);
          sub_10076C33C();
          v140(v58, v56);
          (*(v51 + 8))(v80, v81);
          return sub_10000CFBC(v134, &qword_100942C40);
        }
      }
    }

    else
    {
      v81 = v137;
      v80 = v138;
      v82 = v132;
      if (qword_10093FCE8 == -1)
      {
        goto LABEL_50;
      }
    }

    swift_once();
    goto LABEL_50;
  }

  if (v62 == enum case for Shelf.ContentType.videoCard(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.brick(_:))
  {
LABEL_47:
    v131 = v60;
    v130 = a9;
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    if (qword_100940580 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_85;
  }

  if (v62 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
LABEL_52:
    swift_getKeyPath();
    v84 = v114;
    sub_10076F49C();

    v85 = v115;
    sub_10076B68C();
    sub_1001C01E4(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
    v86 = v117;
    v87 = sub_10077124C();
    v88 = *(v116 + 8);
    v88(v85, v86);
    v88(v84, v86);
    v89 = v125;
    sub_10076202C();
    LOBYTE(v88) = sub_10076EA4C();
    (*(v127 + 8))(v89, v126);
    v91 = v137;
    v90 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_1006EE15C(v88 & 1, v87 & 1);
    sub_10076C33C();
    v140(v58, v56);
    (*(v51 + 8))(v90, v91);
    return sub_10000CFBC(v134, &qword_100942C40);
  }

  if (v62 == enum case for Shelf.ContentType.productCapability(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.reviews(_:))
  {
    goto LABEL_30;
  }

  if (v62 == enum case for Shelf.ContentType.reviewsContainer(_:))
  {
    goto LABEL_17;
  }

  v131 = a11;
  v121 = a10;
  v122 = (v25 + 8);
  v123 = a6;
  v124 = a7;
  v129 = a8;
  v130 = a9;
  v92 = v56;
  v93 = v137;
  v94 = v34;
  if (v62 == enum case for Shelf.ContentType.reviewSummary(_:) || v62 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    v95 = 0.0;
    if (sub_10076205C())
    {
      v96 = v125;
      sub_10076202C();
      v97 = sub_10076EA4C();
      (*(v127 + 8))(v96, v126);
      if (v97)
      {
        v95 = 0.0;
      }

      else
      {
        v95 = 190.0;
      }
    }

    v98 = v138;
    (*(v34 + 16))(v113, v138, v93);
    sub_1005AC334(v95);
    goto LABEL_68;
  }

  if (v62 == enum case for Shelf.ContentType.todayCard(_:))
  {
    (*(v34 + 16))(v132, v138, v137);
    if (qword_100940280 == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_109;
  }

  if (v62 == enum case for Shelf.ContentType.miniTodayCard(_:))
  {
    (*(v34 + 16))(v112, v138, v137);
    if (sub_10076206C())
    {
      if (qword_10093FE70 == -1)
      {
        goto LABEL_83;
      }
    }

    else if (qword_10093FE68 == -1)
    {
LABEL_83:

      sub_10076C33C();
      v140(v139, v56);
      (*(v34 + 8))(v138, v93);
      return sub_10000CFBC(v134, &qword_100942C40);
    }

LABEL_109:
    swift_once();
    goto LABEL_83;
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.editorialLink(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.framedArtwork(_:) || v62 == enum case for Shelf.ContentType.screenshots(_:) || v62 == enum case for Shelf.ContentType.productMedia(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v62 == enum case for Shelf.ContentType.productPageLink(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.productRatings(_:))
  {
    v99 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_1005AC334(0.0);
    sub_10076C33C();
    v140(v139, v56);
    (*(v51 + 8))(v99, v93);
    return sub_10000CFBC(v134, &qword_100942C40);
  }

  if (v62 == enum case for Shelf.ContentType.productReview(_:))
  {
    v100 = v125;
    sub_10076202C();
    v98 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_10052C890(v100, 0);
LABEL_91:
    sub_10076C33C();
    (*(v127 + 8))(v100, v126);
    goto LABEL_69;
  }

  if (v62 == enum case for Shelf.ContentType.productReviewAction(_:))
  {
    v100 = v125;
    sub_10076202C();
    v98 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_1006DC140(v100);
    goto LABEL_91;
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  v60 = v131;
  if (v62 == enum case for Shelf.ContentType.framedVideo(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v62 == enum case for Shelf.ContentType.roundedButton(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.titledButtonStack(_:))
  {
    goto LABEL_30;
  }

  if (v62 == enum case for Shelf.ContentType.smallStoryCard(_:))
  {
    goto LABEL_47;
  }

  if (v62 == enum case for Shelf.ContentType.largeStoryCard(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v62 == enum case for Shelf.ContentType.upsellBreakout(_:) || v62 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.editorialStoryCard(_:) || v62 == enum case for Shelf.ContentType.mixedMediaLockup(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.arcadeFooter(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:))
  {
    goto LABEL_15;
  }

  if (v62 == enum case for Shelf.ContentType.posterLockup(_:))
  {
    swift_getKeyPath();
    sub_10076F49C();

    v101 = *(v144 + 16);

    v102 = v34;
    v103 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_100465B90(v101);
LABEL_108:
    sub_10076C33C();
    v140(v139, v92);
    (*(v102 + 8))(v103, v93);
    return sub_10000CFBC(v134, &qword_100942C40);
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
    goto LABEL_15;
  }

  if (v62 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.privacyType(_:))
  {
LABEL_113:
    v102 = v34;
    v103 = v138;
    (*(v34 + 16))(v132, v138, v137);
    v104 = v125;
    sub_10076202C();
    sub_10050ADC8(v104);
    (*(v127 + 8))(v104, v126);
    goto LABEL_108;
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.appPromotion(_:))
  {
LABEL_39:
    v129 = a8;
    v130 = a9;
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    if (qword_10093FCE8 == -1)
    {
LABEL_40:

      goto LABEL_41;
    }

LABEL_85:
    swift_once();
    goto LABEL_40;
  }

  if (v62 == enum case for Shelf.ContentType.searchResult(_:))
  {
    v105 = sub_10076204C();
    (*(v34 + 16))(v111, v138, v93);
    if (v105)
    {
      if (qword_100940548 == -1)
      {
        goto LABEL_83;
      }
    }

    else if (qword_100940540 == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_109;
  }

  if (v62 == enum case for Shelf.ContentType.searchResultsContextCard(_:))
  {
    v98 = v138;
    (*(v34 + 16))(v132, v138, v137);
    sub_1004F22B0();
LABEL_68:
    sub_10076C33C();
LABEL_69:
    v140(v139, v92);
    (*(v34 + 8))(v98, v93);
    return sub_10000CFBC(v134, &qword_100942C40);
  }

  if (v62 == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
  {
    v106 = v125;
    sub_10076202C();
    v107 = sub_10076EA4C();
    (*(v127 + 8))(v106, v126);
    if (v107)
    {
      if (sub_10076204C())
      {
        v108 = 1;
      }

      else
      {
        v108 = 2;
      }
    }

    else
    {
      v108 = 2;
    }

    v102 = v34;
    v103 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_10003F1A0(v108);
    goto LABEL_108;
  }

  v51 = v34;
  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.heroCarousel(_:) || v62 == enum case for Shelf.ContentType.uber(_:) || v62 == enum case for Shelf.ContentType.mediaPageHeader(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.tagBrick(_:))
  {
    goto LABEL_52;
  }

  if (v62 == enum case for Shelf.ContentType.accessibilityFeatures(_:))
  {
    goto LABEL_113;
  }

  v109 = v138;
  (*(v94 + 16))(v132, v138, v137);
  sub_1005AC334(0.0);
  sub_10076C33C();
  v110 = v140;
  v140(v139, v56);
  (*(v94 + 8))(v109, v93);
  sub_10000CFBC(v134, &qword_100942C40);
  return v110(v136, v56);
}

uint64_t sub_1001BFA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D4>, double a8@<D5>)
{
  v31 = a5;
  v34 = a4;
  v35 = a2;
  v37 = a3;
  v38 = a6;
  v32 = a7;
  v33 = a8;
  v36 = sub_10076B5BC();
  v39 = *(v36 - 8);
  __chkstk_darwin(v36);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076C36C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v30 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  v17 = sub_10000A5D4(&qword_100942C40);
  __chkstk_darwin(v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v29 - v21;
  sub_100016E2C(v35, &v29 - v21, &qword_1009499A0);
  v29 = v17;
  sub_100016E2C(v37, &v22[*(v17 + 48)], &qword_1009499A0);
  swift_getKeyPath();
  sub_10000A5D4(&unk_100946720);
  sub_10076F49C();

  v37 = v12;
  v23 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v41)
  {
    v23 = &enum case for PageGrid.Direction.vertical(_:);
  }

  (*(v12 + 104))(v16, *v23, v11);
  swift_getKeyPath();
  v24 = v36;
  v35 = a1;
  sub_10076F49C();

  v25 = (*(v39 + 88))(v10, v24);
  if (v25 == enum case for Shelf.ContentType.reviews(_:) || v25 == enum case for Shelf.ContentType.reviewsContainer(_:) || v25 == enum case for Shelf.ContentType.todayCard(_:) || v25 == enum case for Shelf.ContentType.framedArtwork(_:) || v25 == enum case for Shelf.ContentType.productMedia(_:) || v25 == enum case for Shelf.ContentType.framedVideo(_:) || v25 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v25 == enum case for Shelf.ContentType.upsellBreakout(_:) || v25 == enum case for Shelf.ContentType.smallBreakout(_:) || v25 == enum case for Shelf.ContentType.arcadeFooter(_:))
  {
    v28 = v37;
    (*(v37 + 16))(v30, v16, v11);
    sub_1005AC334(0.0);
    sub_10076C33C();
    (*(v28 + 8))(v16, v11);
    return sub_10000CFBC(v22, &qword_100942C40);
  }

  else
  {
    v40 = v31;
    sub_100016E2C(v22, v19, &qword_100942C40);
    v26 = *(v29 + 48);
    sub_100061E6C();
    sub_1007620BC();
    (*(v37 + 8))(v16, v11);
    sub_10000CFBC(v22, &qword_100942C40);
    sub_10000CFBC(&v19[v26], &qword_1009499A0);
    sub_10000CFBC(v19, &qword_1009499A0);
    return (*(v39 + 8))(v10, v24);
  }
}

uint64_t sub_1001BFFF0()
{
  sub_100061E6C();

  return sub_1007620BC();
}

uint64_t sub_1001C00D4()
{
  sub_100061E6C();

  return sub_1007620AC();
}

uint64_t sub_1001C01E4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1001C0234()
{
  swift_getObjectType();
  *&v0[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = 0;
  v0[OBJC_IVAR____TtC20ProductPageExtension12GradientView_kind] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for GradientView();
  v1 = objc_msgSendSuper2(&v4, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1001C05B8();
  sub_10000A5D4(&unk_100945BF0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100783DD0;
  *(v2 + 32) = sub_10076E4CC();
  *(v2 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v1;
}

void sub_1001C0414(uint64_t a1)
{
  v3 = [v1 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  if (a1)
  {
    v5 = v4;
    v6 = *(a1 + 16);
    if (v6)
    {
      v10 = _swiftEmptyArrayStorage;
      sub_1007714EC();
      v7 = 32;
      do
      {
        [objc_allocWithZone(NSNumber) initWithDouble:*(a1 + v7)];
        sub_1007714CC();
        sub_1007714FC();
        sub_10077150C();
        sub_1007714DC();
        v7 += 8;
        --v6;
      }

      while (v6);
    }

    sub_100016F40(0, &qword_1009492D0);
    isa = sub_1007701AC().super.isa;

    [v5 setLocations:{isa, isa, v10}];
  }

  else
  {
    [v4 setLocations:{0, 0, v10}];
  }
}

char *sub_1001C05B8()
{
  v1 = v0;
  v2 = [v0 layer];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  isa = *&v0[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors];
  if (!isa)
  {
    goto LABEL_15;
  }

  v15 = v3;
  if (isa >> 62)
  {
    v5 = sub_10077158C();
  }

  else
  {
    v5 = *((isa & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v5)
  {
LABEL_14:
    isa = sub_1007701AC().super.isa;

    v3 = v15;
LABEL_15:
    [v3 setColors:{isa, v15, v16}];

    return [v1 setNeedsDisplay];
  }

  v18 = _swiftEmptyArrayStorage;

  result = sub_1004BB874(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v18;
    do
    {
      if ((isa & 0xC000000000000001) != 0)
      {
        v9 = sub_10077149C();
      }

      else
      {
        v9 = *(isa + v7 + 4);
      }

      v10 = v9;
      v11 = [v9 CGColor];
      type metadata accessor for CGColor(0);
      v17 = v12;

      *&v16 = v11;
      v18 = v8;
      v14 = v8[2];
      v13 = v8[3];
      if (v14 >= v13 >> 1)
      {
        sub_1004BB874((v13 > 1), v14 + 1, 1);
        v8 = v18;
      }

      ++v7;
      v8[2] = v14 + 1;
      sub_10000CD64(&v16, &v8[4 * v14 + 4]);
    }

    while (v5 != v7);

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1001C07E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GradientView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001C0864()
{
  result = qword_10094C6A0;
  if (!qword_10094C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094C6A0);
  }

  return result;
}

void AppPromotionDetailPageContentLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

uint64_t AppPromotionFormattedDateLayout.Metrics.textBottomSpace.setter(__int128 *a1)
{
  sub_10000CD74(v1 + 40);

  return sub_100012498(a1, v1 + 40);
}

uint64_t AppPromotionFormattedDateLayout.Metrics.liveIndicatorTrailingMargin.setter(__int128 *a1)
{
  sub_10000CD74(v1 + 80);

  return sub_100012498(a1, v1 + 80);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.kindLabelBottomSpace.setter(__int128 *a1)
{
  sub_10000CD74(v1 + 160);

  return sub_100012498(a1, v1 + 160);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.titleLabelTopSpace.setter(__int128 *a1)
{
  sub_10000CD74(v1 + 200);

  return sub_100012498(a1, v1 + 200);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.subtitleTopSpace.setter(__int128 *a1)
{
  sub_10000CD74(v1 + 240);

  return sub_100012498(a1, v1 + 240);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.detailLabelTopSpace.setter(__int128 *a1)
{
  sub_10000CD74(v1 + 280);

  return sub_100012498(a1, v1 + 280);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.learnMoreButtonTopSpace.setter(__int128 *a1)
{
  sub_10000CD74(v1 + 320);

  return sub_100012498(a1, v1 + 320);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.learnMoreButtonBottomSpace.setter(__int128 *a1)
{
  sub_10000CD74(v1 + 360);

  return sub_100012498(a1, v1 + 360);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.inlineLearnMoreLabelTopSpace.setter(__int128 *a1)
{
  sub_10000CD74(v1 + 400);

  return sub_100012498(a1, v1 + 400);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.inlineLearnMoreLabelBottomSpace.setter(__int128 *a1)
{
  sub_10000CD74(v1 + 440);

  return sub_100012498(a1, v1 + 440);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.separatorViewBottomSpace.setter(__int128 *a1)
{
  sub_10000CD74(v1 + 480);

  return sub_100012498(a1, v1 + 480);
}

uint64_t sub_1001C0F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_10094B230);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 AppPromotionDetailPageContentLayout.init(metrics:primaryContentContainer:secondaryContentContainer:availabilityLabelView:kindLabel:titleLabel:subtitleView:learnMoreButton:detailLabel:inlineLearnMoreLabel:separatorView:lockupView:showInlineLearnMore:includeSubtitle:)@<Q0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char a15)
{
  *(a9 + 848) = 0u;
  *(a9 + 864) = 0u;
  *(a9 + 816) = 0u;
  *(a9 + 832) = 0u;
  *(a9 + 800) = 0u;
  memcpy(a9, __src, 0x208uLL);
  sub_100012498(a2, a9 + 520);
  sub_100012498(a3, a9 + 560);
  sub_100012498(a4, a9 + 600);
  sub_100012498(a5, a9 + 640);
  sub_100012498(a6, a9 + 680);
  sub_100012498(a7, a9 + 720);
  sub_1001C0F9C(a8, a9 + 840);
  sub_100012498(a10, a9 + 760);
  sub_1001C0F9C(a11, a9 + 800);
  v22 = *(a12 + 16);
  *(a9 + 880) = *a12;
  *(a9 + 896) = v22;
  *(a9 + 912) = *(a12 + 32);
  result = *a13;
  v24 = *(a13 + 16);
  *(a9 + 920) = *a13;
  *(a9 + 936) = v24;
  *(a9 + 952) = *(a13 + 32);
  *(a9 + 960) = a14;
  *(a9 + 961) = a15;
  return result;
}

CGFloat AppPromotionDetailPageContentLayout.measure(toFit:with:)(void *a1, CGFloat a2, CGFloat a3)
{
  v4 = v3;
  v7 = a1;
  if (sub_1007706EC())
  {
    v8 = sub_10077071C();

    if (v8)
    {
      sub_1001C3264(v7, *(v4 + 960), v11);
      sub_10000CF78(v11, v12);
      sub_10076E0FC();
      sub_10000CD74(v11);
      return a2;
    }
  }

  else
  {
  }

  if (sub_1007706EC())
  {
    sub_1001C1348(v7, v11, 0.0, 0.0, a2, a3);
  }

  else
  {
    sub_1001C1D50(v7, v11, 0.0, 0.0, a2, a3);
  }

  sub_10000CF78(v11, v12);
  sub_10076E0FC();
  a2 = v9;
  sub_10000CD74(v11);
  return a2;
}

uint64_t sub_1001C1348@<X0>(void *a1@<X0>, uint64_t *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v90 = a2;
  v91 = sub_10076D58C();
  v87 = *(v91 - 8);
  __chkstk_darwin(v91);
  v85 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v86 = &v76 - v15;
  __chkstk_darwin(v16);
  v89 = &v76 - v17;
  v94 = sub_10076E04C();
  v88 = *(v94 - 8);
  __chkstk_darwin(v94);
  v93 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10076D65C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v76 - v24;
  __chkstk_darwin(v26);
  v28 = &v76 - v27;
  __chkstk_darwin(v29);
  v80 = &v76 - v30;
  __chkstk_darwin(v31);
  v81 = &v76 - v32;
  __chkstk_darwin(v33);
  v83 = &v76 - v34;
  __chkstk_darwin(v35);
  v84 = &v76 - v36;
  __chkstk_darwin(v37);
  v95 = &v76 - v38;
  sub_10076D63C();
  sub_1001C4C14(v7, v101);
  v39 = swift_allocObject();
  memcpy((v39 + 16), v101, 0x3C2uLL);
  *(v39 + 984) = a1;
  v40 = a1;
  sub_10076D64C();
  v41 = v19;

  v43 = v20 + 8;
  v42 = *(v20 + 8);
  v42(v22, v41);
  sub_10000A570(v7 + 680, v101);
  sub_10011E080(v101, &v96);
  v82 = v20;
  if (v97)
  {
    sub_100012498(&v96, &v98);
    sub_10076D64C();
    sub_10000CD74(&v98);
    sub_10017FE2C(v101);
    v42(v25, v41);
  }

  else
  {
    sub_10017FE2C(v101);
    sub_10017FE2C(&v96);
    (*(v20 + 32))(v28, v25, v41);
  }

  sub_1001C4C14(v7, v101);
  v44 = swift_allocObject();
  memcpy((v44 + 16), v101, 0x3C2uLL);
  *(v44 + 984) = v40;
  v45 = v40;
  v46 = v80;
  sub_10076D64C();

  v42(v28, v41);
  sub_1001C4C14(v7, v101);
  v47 = swift_allocObject();
  memcpy((v47 + 16), v101, 0x3C2uLL);
  *(v47 + 984) = v45;
  v48 = v45;
  v49 = v81;
  sub_10076D64C();

  v42(v46, v41);
  sub_1001C4C14(v7, v101);
  v50 = swift_allocObject();
  memcpy((v50 + 16), v101, 0x3C2uLL);
  *(v50 + 984) = v48;
  sub_10011E080(v7 + 840, &v96);
  v51 = v42;
  v79 = v48;
  if (v97)
  {
    sub_100012498(&v96, &v98);
    v52 = v48;
    v53 = v83;
    sub_10076D64C();

    sub_10000CD74(&v98);
    v42(v49, v41);
    v54 = v82;
  }

  else
  {
    v55 = v48;

    sub_10017FE2C(&v96);
    v54 = v82;
    v53 = v83;
    (*(v82 + 32))(v83, v49, v41);
  }

  sub_10011E080(v7 + 880, &v98);
  v56 = v84;
  if (v99)
  {
    sub_100012498(&v98, v101);
    sub_10076D64C();
    sub_10000CD74(v101);
    v51(v53, v41);
  }

  else
  {
    sub_10017FE2C(&v98);
    (*(v54 + 32))(v56, v53, v41);
  }

  v57 = v95;
  sub_10011E080(v7 + 920, &v98);
  v77 = v51;
  v78 = v43;
  v92 = v41;
  if (v99)
  {
    sub_100012498(&v98, v101);
    sub_10076D64C();
    sub_10000CD74(v101);
    v51(v56, v41);
  }

  else
  {
    sub_10017FE2C(&v98);
    (*(v54 + 32))(v57, v56, v41);
  }

  v58 = v54;
  sub_10000CF78((v7 + 80), *(v7 + 104));
  sub_10076D41C();
  sub_10000A570(v7 + 600, v101);
  v59 = v93;
  sub_10076E03C();
  v60 = v85;
  sub_10076D55C();
  v61 = v94;
  v101[3] = v94;
  v101[4] = &protocol witness table for Margins;
  v62 = sub_10000DB7C(v101);
  v63 = v88;
  (*(v88 + 16))(v62, v59, v61);
  v64 = v86;
  sub_10076D57C();
  v65 = v87;
  v66 = *(v87 + 8);
  v67 = v91;
  v66(v60, v91);
  sub_10000CD74(v101);
  v68 = v92;
  v101[3] = v92;
  v101[4] = &protocol witness table for VerticalStack;
  v69 = sub_10000DB7C(v101);
  (*(v58 + 16))(v69, v95, v68);
  v70 = v89;
  sub_10076D57C();
  v66(v64, v67);
  sub_10000CD74(v101);
  v99 = v67;
  v100 = &protocol witness table for DisjointStack;
  v71 = sub_10000DB7C(&v98);
  (*(v65 + 16))(v71, v70, v67);
  v72 = v94;
  v101[3] = v94;
  v101[4] = &protocol witness table for Margins;
  sub_10000DB7C(v101);
  sub_10076E03C();
  v102.origin.x = a3;
  v102.origin.y = a4;
  v102.size.width = a5;
  v102.size.height = a6;
  CGRectGetWidth(v102);
  v73 = sub_10076DFFC();
  v74 = v90;
  v90[3] = v73;
  v74[4] = &protocol witness table for Resize;
  sub_10000DB7C(v74);
  sub_10076DFDC();
  v66(v70, v67);
  (*(v63 + 8))(v93, v72);
  return v77(v95, v92);
}

uint64_t sub_1001C1D50@<X0>(void *a1@<X0>, uint64_t *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v134 = a2;
  v13 = sub_10076DFEC();
  v113 = *(v13 - 8);
  v114 = v13;
  __chkstk_darwin(v13);
  v116 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v115 = &v110 - v16;
  __chkstk_darwin(v17);
  v112 = &v110 - v18;
  __chkstk_darwin(v19);
  v111 = (&v110 - v20);
  v21 = sub_10076E01C();
  v130 = *(v21 - 8);
  v131 = v21;
  __chkstk_darwin(v21);
  v129 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_10076E04C();
  v128 = *(v132 - 8);
  __chkstk_darwin(v132);
  v127 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10076DF4C();
  v122 = *(v24 - 8);
  v123 = v24;
  __chkstk_darwin(v24);
  v124 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_10076DF5C();
  v133 = *(v135 - 8);
  __chkstk_darwin(v135);
  v138 = &v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10076D65C();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v120 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v121 = &v110 - v31;
  __chkstk_darwin(v32);
  v139 = &v110 - v33;
  __chkstk_darwin(v34);
  v141 = &v110 - v35;
  __chkstk_darwin(v36);
  v38 = &v110 - v37;
  __chkstk_darwin(v39);
  v136 = (&v110 - v40);
  __chkstk_darwin(v41);
  v117 = &v110 - v42;
  __chkstk_darwin(v43);
  v137 = &v110 - v44;
  __chkstk_darwin(v45);
  v118 = &v110 - v46;
  __chkstk_darwin(v47);
  v119 = &v110 - v48;
  __chkstk_darwin(v49);
  v140 = &v110 - v50;
  sub_10076D63C();
  sub_1001C4C14(v6, v147);
  v51 = swift_allocObject();
  memcpy((v51 + 16), v147, 0x3C2uLL);
  *(v51 + 984) = a1;
  v52 = a1;
  sub_10076D64C();

  v53 = v28;
  v56 = v28[1];
  v54 = (v28 + 1);
  v55 = v56;
  (v56)(v38, v27);
  sub_1001C4C14(v6, v147);
  v57 = swift_allocObject();
  memcpy((v57 + 16), v147, 0x3C2uLL);
  *(v57 + 984) = v52;
  v58 = v52;
  v59 = v117;
  v60 = v58;
  v61 = v136;
  sub_10076D64C();
  v62 = v27;

  (v56)(v61, v27);
  sub_10000A570((v7 + 85), v147);
  sub_10011E080(v147, &v142);
  v136 = v53;
  if (v143)
  {
    sub_100012498(&v142, &v144);
    sub_10076D64C();
    sub_10000CD74(&v144);
    sub_10017FE2C(v147);
    (v55)(v59, v27);
  }

  else
  {
    sub_10017FE2C(v147);
    sub_10017FE2C(&v142);
    v53[4](v137, v59, v27);
  }

  sub_1001C4C14(v7, v147);
  v63 = swift_allocObject();
  memcpy((v63 + 16), v147, 0x3C2uLL);
  *(v63 + 984) = v60;
  v64 = v60;
  v65 = v118;
  v66 = v137;
  sub_10076D64C();

  (v55)(v66, v27);
  sub_1001C4C14(v7, v147);
  v67 = swift_allocObject();
  memcpy((v67 + 16), v147, 0x3C2uLL);
  *(v67 + 984) = v64;
  v68 = v64;
  v69 = v119;
  sub_10076D64C();

  (v55)(v65, v62);
  sub_1001C4C14(v7, v147);
  v70 = swift_allocObject();
  memcpy((v70 + 16), v147, 0x3C2uLL);
  *(v70 + 984) = v68;
  sub_10011E080((v7 + 105), &v142);
  v137 = v68;
  if (v143)
  {
    sub_100012498(&v142, &v144);
    v71 = v68;
    v72 = v140;
    sub_10076D64C();
    v73 = v72;

    sub_10000CD74(&v144);
    (v55)(v69, v62);
    v74 = v141;
    v75 = v136;
  }

  else
  {
    v76 = v68;

    sub_10017FE2C(&v142);
    v75 = v136;
    v73 = v140;
    v136[4](v140, v69, v62);
    v74 = v141;
  }

  v77 = v75[2];
  v77(v74, v73, v62);
  sub_1001C4C14(v7, v147);
  v78 = swift_allocObject();
  memcpy((v78 + 16), v147, 0x3C2uLL);
  sub_10011E080((v7 + 110), &v142);
  if (v143)
  {
    sub_100012498(&v142, &v144);
    sub_10076D5FC();

    sub_10000CD74(&v144);
  }

  else
  {

    sub_10017FE2C(&v142);
  }

  sub_10011E080((v7 + 115), &v144);
  v79 = v121;
  v80 = v77;
  if (v145)
  {
    sub_100012498(&v144, v147);
    sub_10076D5FC();
    sub_10000CD74(v147);
  }

  else
  {
    sub_10017FE2C(&v144);
  }

  v81 = v120;
  sub_10076D63C();
  sub_10011E080((v7 + 110), &v144);
  if (v145)
  {
    sub_100012498(&v144, v147);
    sub_10076D64C();
    sub_10000CD74(v147);
    (v55)(v81, v62);
  }

  else
  {
    sub_10017FE2C(&v144);
    v136[4](v79, v81, v62);
  }

  v82 = v139;
  sub_10011E080((v7 + 115), &v144);
  v125 = v55;
  v126 = v54;
  if (v145)
  {
    sub_100012498(&v144, v147);
    sub_10076D64C();
    v82 = v139;
    sub_10000CD74(v147);
    (v55)(v79, v62);
  }

  else
  {
    sub_10017FE2C(&v144);
    v136[4](v82, v79, v62);
  }

  v147[3] = v62;
  v147[4] = &protocol witness table for VerticalStack;
  v83 = sub_10000DB7C(v147);
  v77(v83, v82, v62);
  (*(v122 + 104))(v124, enum case for Pin.Edge.bottomEdge(_:), v123);
  v145 = v62;
  v146 = &protocol witness table for VerticalStack;
  v84 = sub_10000DB7C(&v144);
  v77(v84, v140, v62);
  sub_10076DF6C();
  v148.origin.x = a3;
  v148.origin.y = a4;
  v148.size.width = a5;
  v148.size.height = a6;
  CGRectGetWidth(v148);
  v147[3] = v62;
  v147[4] = &protocol witness table for VerticalStack;
  v85 = sub_10000DB7C(v147);
  v86 = v141;
  v80(v85, v141, v62);
  v87 = v127;
  sub_10076E03C();
  sub_10076DDEC();
  sub_1001C5088(&qword_10094C6B8, &type metadata accessor for Margins);
  v88 = v129;
  v137 = v80;
  v89 = v132;
  sub_10076D91C();
  sub_1001C5088(&qword_10094C6C0, &type metadata accessor for Margins.Placements);
  v90 = v131;
  sub_10076DAFC();
  v92 = v91;
  (*(v130 + 8))(v88, v90);
  (*(v128 + 8))(v87, v89);
  v93 = floor(v92);
  v94 = *v7;
  if (*v7 >= v93)
  {
    v99 = v135;
    v145 = v135;
    v146 = &protocol witness table for Pin;
    v100 = sub_10000DB7C(&v144);
    v101 = v133;
    (*(v133 + 16))(v100, v138, v99);
    v147[3] = v89;
    v147[4] = &protocol witness table for Margins;
    sub_10000DB7C(v147);
    sub_10076E03C();
    v137 = v62;
    v102 = v111;
    *(v111 + 3) = &type metadata for CGFloat;
    *(v102 + 4) = &protocol witness table for CGFloat;
    *v102 = v94;
    v103 = v114;
    v104 = *(v113 + 104);
    v104(v102, enum case for Resize.Rule.replaced(_:), v114);
    v105 = enum case for Resize.Rule.unchanged(_:);
    v104(v112, enum case for Resize.Rule.unchanged(_:), v103);
    v104(v115, v105, v103);
    v104(v116, v105, v103);
    v106 = sub_10076DFFC();
    v107 = v134;
    v134[3] = v106;
    v107[4] = &protocol witness table for Resize;
    sub_10000DB7C(v107);
    sub_10076E00C();
    (*(v101 + 8))(v138, v135);
    v108 = v137;
    v109 = v125;
    (v125)(v139, v137);
    (v109)(v141, v108);
    return (v109)(v140, v108);
  }

  else
  {
    v147[3] = v62;
    v147[4] = &protocol witness table for VerticalStack;
    v95 = sub_10000DB7C(v147);
    (v137)(v95, v86, v62);
    v96 = v134;
    v134[3] = v89;
    v96[4] = &protocol witness table for Margins;
    sub_10000DB7C(v96);
    sub_10076E03C();
    (*(v133 + 8))(v138, v135);
    v97 = v125;
    (v125)(v139, v62);
    (v97)(v86, v62);
    return (v97)(v140, v62);
  }
}

uint64_t AppPromotionDetailPageContentLayout.place(at:with:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v11 = a1;
  if (sub_1007706EC())
  {
    v12 = sub_10077071C();

    if (v12)
    {

      return sub_1001C2EF8(v11, a2, a3, a4, a5);
    }
  }

  else
  {
  }

  v14 = sub_1007706EC();
  sub_10000CF78((v6 + 520), *(v6 + 544));
  sub_10076E0EC();
  if (v14)
  {
    sub_1001C1348(v11, v15, a2, a3, a4, a5);
  }

  else
  {
    sub_1001C1D50(v11, v15, a2, a3, a4, a5);
    v17.origin.x = a2;
    v17.origin.y = a3;
    v17.size.width = a4;
    v17.size.height = a5;
    CGRectGetMinX(v17);
    v18.origin.x = a2;
    v18.origin.y = a3;
    v18.size.width = a4;
    v18.size.height = a5;
    CGRectGetMinY(v18);
    v19.origin.x = a2;
    v19.origin.y = a3;
    v19.size.width = a4;
    v19.size.height = a5;
    CGRectGetWidth(v19);
  }

  sub_10000CF78(v15, v15[3]);
  sub_10076E0EC();
  return sub_10000CD74(v15);
}

uint64_t sub_1001C2EF8(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  MinX = CGRectGetMinX(*&a2);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  MinY = CGRectGetMinY(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  Width = CGRectGetWidth(v21);
  v14 = *v5;
  sub_10000CF78((v5 + 520), *(v5 + 544));
  sub_10076E0EC();
  sub_1001C3ABC(a1, v19);
  sub_10000CF78(v19, v19[3]);
  sub_10076E0EC();
  v22.origin.x = MinX;
  v22.origin.y = MinY;
  v22.size.width = Width;
  v22.size.height = v14;
  CGRectGetMaxY(v22);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  CGRectGetWidth(v23);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetHeight(v24);
  v25.origin.x = MinX;
  v25.origin.y = MinY;
  v25.size.width = Width;
  v25.size.height = v14;
  CGRectGetMaxY(v25);
  v15 = *(v5 + 960);
  if ((v15 & 1) == 0)
  {
    sub_1001C3264(a1, 1, v17);
    sub_10000CF78(v17, v18);
    sub_10076E0EC();
    sub_10000CD74(v17);
  }

  sub_1001C3264(a1, v15, v17);
  sub_10000CF78((v5 + 560), *(v5 + 584));
  sub_10076E0EC();
  sub_10000CF78(v17, v18);
  sub_10076E0EC();
  sub_10000CD74(v17);
  return sub_10000CD74(v19);
}

uint64_t sub_1001C3198(uint64_t a1, uint64_t a2)
{
  sub_10000CF78((a2 + 240), *(a2 + 264));
  sub_10076D41C();
  sub_10076D5BC();
  return sub_10076D5AC();
}

uint64_t sub_1001C3264@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v58 = a2;
  v62 = a3;
  v6 = sub_10076D65C();
  v65 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v57[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v57[-v10];
  __chkstk_darwin(v12);
  v14 = &v57[-v13];
  __chkstk_darwin(v15);
  v63 = &v57[-v16];
  __chkstk_darwin(v17);
  v64 = &v57[-v18];
  __chkstk_darwin(v19);
  v59 = &v57[-v20];
  __chkstk_darwin(v21);
  v60 = &v57[-v22];
  *&v24 = __chkstk_darwin(v23).n128_u64[0];
  v26 = &v57[-v25];
  v27 = [a1 preferredContentSizeCategory];
  if (qword_10093F9B0 != -1)
  {
    swift_once();
  }

  v28 = sub_10077087C();

  sub_10076D63C();
  if (v28)
  {
    sub_10000A570(v4 + 680, v69);
  }

  else
  {
    memset(v69, 0, 40);
  }

  v61 = v26;
  sub_10011E080(v69, &v70);
  if (v71)
  {
    sub_100012498(&v70, &v72);
    sub_10076D64C();
    sub_10000CD74(&v72);
    sub_10017FE2C(v69);
    v29 = v65;
    (*(v65 + 8))(v8, v6);
  }

  else
  {
    sub_10017FE2C(v69);
    sub_10017FE2C(&v70);
    v29 = v65;
    (*(v65 + 32))(v11, v8, v6);
  }

  sub_1001C4C14(v4, v69);
  v30 = swift_allocObject();
  memcpy((v30 + 16), v69, 0x3C2uLL);
  *(v30 + 978) = v28 & 1;
  *(v30 + 984) = a1;
  v31 = a1;
  sub_10076D64C();

  v32 = *(v29 + 8);
  v32(v11, v6);
  sub_1001C4C14(v4, v69);
  v33 = swift_allocObject();
  memcpy((v33 + 16), v69, 0x3C2uLL);
  *(v33 + 984) = v31;
  v34 = v31;
  sub_10076D64C();

  v66 = v32;
  v32(v14, v6);
  v35 = v58;
  if (v58)
  {
    v74 = 0;
    v72 = 0u;
    v73 = 0u;
  }

  else
  {
    sub_10011E080(v4 + 840, &v72);
  }

  v37 = v59;
  v36 = v60;
  sub_1001C4C14(v4, v69);
  v38 = swift_allocObject();
  memcpy((v38 + 16), v69, 0x3C2uLL);
  *(v38 + 984) = v34;
  sub_10011E080(&v72, &v67);
  if (v68)
  {
    sub_100012498(&v67, &v70);
    v39 = v34;
    v40 = v63;
    sub_10076D64C();

    sub_10000CD74(&v70);
    sub_10017FE2C(&v72);
    v66(v40, v6);
    v41 = v65;
    if (v35)
    {
LABEL_14:
      sub_10011E080(v4 + 800, &v72);
      goto LABEL_17;
    }
  }

  else
  {
    v42 = v34;

    sub_10017FE2C(&v72);
    sub_10017FE2C(&v67);
    v41 = v65;
    (*(v65 + 32))(v64, v63, v6);
    if (v35)
    {
      goto LABEL_14;
    }
  }

  v74 = 0;
  v72 = 0u;
  v73 = 0u;
LABEL_17:
  sub_1001C4C14(v4, v69);
  v43 = swift_allocObject();
  memcpy((v43 + 16), v69, 0x3C2uLL);
  *(v43 + 984) = v34;
  sub_10011E080(&v72, &v67);
  if (v68)
  {
    sub_100012498(&v67, &v70);
    v44 = v34;
    v45 = v64;
    sub_10076D64C();

    sub_10000CD74(&v70);
    sub_10017FE2C(&v72);
    v66(v45, v6);
  }

  else
  {
    v46 = v34;

    sub_10017FE2C(&v72);
    sub_10017FE2C(&v67);
    (*(v41 + 32))(v37, v64, v6);
  }

  sub_1001C4C14(v4, v69);
  v47 = swift_allocObject();
  memcpy((v47 + 16), v69, 0x3C2uLL);
  *(v47 + 984) = v34;
  sub_10011E080(v4 + 880, &v70);
  if (v71)
  {
    sub_100012498(&v70, &v72);
    v48 = v34;
    sub_10076D64C();

    sub_10000CD74(&v72);
    v49 = v37;
    v50 = v66;
    v66(v49, v6);
  }

  else
  {
    v51 = v34;

    sub_10017FE2C(&v70);
    (*(v41 + 32))(v36, v37, v6);
    v50 = v66;
  }

  sub_10011E080(v4 + 920, &v72);
  v52 = v61;
  if (*(&v73 + 1))
  {
    sub_100012498(&v72, v69);
    sub_10076D64C();
    sub_10000CD74(v69);
    v50(v36, v6);
  }

  else
  {
    sub_10017FE2C(&v72);
    (*(v41 + 32))(v52, v36, v6);
  }

  v69[3] = v6;
  v69[4] = &protocol witness table for VerticalStack;
  v53 = sub_10000DB7C(v69);
  (*(v41 + 16))(v53, v52, v6);
  v54 = sub_10076E04C();
  v55 = v62;
  v62[3] = v54;
  v55[4] = &protocol witness table for Margins;
  sub_10000DB7C(v55);
  sub_10076E03C();
  return (v50)(v52, v6);
}

uint64_t sub_1001C3ABC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v73 = a2;
  v70 = sub_10076DFEC();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = (&v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v66 = (&v54 - v7);
  __chkstk_darwin(v8);
  v65 = (&v54 - v9);
  __chkstk_darwin(v10);
  v63 = (&v54 - v11);
  v12 = sub_10076D58C();
  v61 = *(v12 - 8);
  v62 = v12;
  __chkstk_darwin(v12);
  v60 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076DFFC();
  v71 = *(v14 - 8);
  v72 = v14;
  __chkstk_darwin(v14);
  v69 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076D65C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v54 - v21;
  __chkstk_darwin(v23);
  v55 = &v54 - v24;
  *&v26 = __chkstk_darwin(v25).n128_u64[0];
  v59 = &v54 - v27;
  v28 = [a1 preferredContentSizeCategory];
  if (qword_10093F9B0 != -1)
  {
    swift_once();
  }

  v29 = sub_10077087C();

  sub_10076D63C();
  sub_1001C4C14(v3, v79);
  v30 = swift_allocObject();
  memcpy((v30 + 16), v79, 0x3C2uLL);
  *(v30 + 984) = a1;
  v31 = a1;
  sub_10076D64C();

  v58 = v17;
  v34 = *(v17 + 8);
  v32 = v17 + 8;
  v33 = v34;
  v34(v19, v16);
  sub_1001C4C14(v3, v79);
  v35 = swift_allocObject();
  *(v35 + 16) = (v29 & 1) == 0;
  memcpy((v35 + 24), v79, 0x3C2uLL);
  *(v35 + 992) = v31;
  v36 = v31;
  v37 = v55;
  sub_10076D64C();

  v34(v22, v16);
  v64 = v3;
  v38 = v37;
  if (v29)
  {
    memset(v79, 0, 40);
  }

  else
  {
    sub_10000A570(v3 + 680, v79);
  }

  sub_10011E080(v79, &v74);
  v39 = v58;
  v40 = v59;
  v56 = v33;
  v57 = v32;
  if (v75)
  {
    sub_100012498(&v74, v76);
    sub_10076D64C();
    sub_10000CD74(v76);
    sub_10017FE2C(v79);
    v33(v38, v16);
  }

  else
  {
    sub_10017FE2C(v79);
    sub_10017FE2C(&v74);
    (*(v39 + 32))(v40, v38, v16);
  }

  v41 = v60;
  sub_10076D55C();
  v77 = v16;
  v78 = &protocol witness table for VerticalStack;
  v42 = sub_10000DB7C(v76);
  (*(v39 + 16))(v42, v40, v16);
  v43 = v62;
  v79[3] = v62;
  v79[4] = &protocol witness table for DisjointStack;
  sub_10000DB7C(v79);
  sub_10076D57C();
  (*(v61 + 8))(v41, v43);
  sub_10000CD74(v76);
  v44 = v63;
  *v63 = sub_1001C443C;
  v44[1] = 0;
  v62 = v16;
  v45 = *(v68 + 104);
  v46 = v70;
  v45(v44, enum case for Resize.Rule.recalculated(_:), v70);
  v47 = enum case for Resize.Rule.unchanged(_:);
  v45(v65, enum case for Resize.Rule.unchanged(_:), v46);
  v45(v66, v47, v46);
  v45(v67, v47, v46);
  v48 = v69;
  sub_10076E00C();
  v49 = v72;
  v77 = v72;
  v78 = &protocol witness table for Resize;
  v50 = sub_10000DB7C(v76);
  v51 = v71;
  (*(v71 + 16))(v50, v48, v49);
  v79[3] = sub_10076E04C();
  v79[4] = &protocol witness table for Margins;
  sub_10000DB7C(v79);
  sub_10076E03C();
  v52 = v73;
  v73[3] = v49;
  v52[4] = &protocol witness table for Resize;
  sub_10000DB7C(v52);
  sub_10076DFDC();
  (*(v51 + 8))(v48, v49);
  return v56(v40, v62);
}

uint64_t sub_1001C4280(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    sub_10000CF78((a3 + 160), *(a3 + 184));
    sub_10076D41C();
  }

  return sub_10076D5CC();
}

uint64_t sub_1001C4308(uint64_t a1, void (*a2)(void *))
{
  v3 = sub_10076D54C();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7[3] = &type metadata for Double;
  v7[4] = &protocol witness table for Double;
  *v7 = 0;
  v8 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v9 = *(v4 + 104);
  (v9)(v7, enum case for DisjointStack.EdgePosition.anchored(_:), v3, v5);
  a2(v7);
  v7[3] = &type metadata for Double;
  v7[4] = &protocol witness table for Double;
  *v7 = 0;
  v9(v7, v8, v3);
  return sub_10076D50C();
}

uint64_t sub_1001C4444(uint64_t a1, uint64_t a2, char a3)
{
  sub_10076D5AC();
  if (a3)
  {
    sub_10000CF78((a2 + 240), *(a2 + 264));
    sub_10076D41C();
  }

  return sub_10076D5BC();
}

uint64_t sub_1001C44F0(uint64_t a1, void *a2)
{
  sub_10000CF78(a2 + 50, a2[53]);
  sub_10076D41C();
  sub_10076D5BC();
  sub_10000CF78(a2 + 55, a2[58]);
  sub_10076D41C();
  return sub_10076D5CC();
}

uint64_t sub_1001C45C0(uint64_t a1, uint64_t a2)
{
  sub_10000CF78((a2 + 480), *(a2 + 504));
  sub_10076D41C();
  return sub_10076D5CC();
}

uint64_t sub_1001C4640(uint64_t a1, uint64_t a2)
{
  sub_10000CF78((a2 + 40), *(a2 + 64));
  sub_10076D41C();
  return sub_10076D5CC();
}

uint64_t sub_1001C46C0(uint64_t a1, uint64_t a2)
{
  sub_10000CF78((a2 + 160), *(a2 + 184));
  sub_10076D41C();
  return sub_10076D5CC();
}

uint64_t sub_1001C4740(uint64_t a1, uint64_t a2)
{
  sub_10076D5AC();
  sub_10000CF78((a2 + 240), *(a2 + 264));
  sub_10076D41C();
  return sub_10076D5BC();
}

uint64_t sub_1001C47E0(uint64_t a1, uint64_t a2)
{
  sub_10000CF78((a2 + 280), *(a2 + 304));
  sub_10076D41C();
  return sub_10076D5BC();
}

uint64_t sub_1001C4860(uint64_t a1, void *a2)
{
  sub_10000CF78(a2 + 40, a2[43]);
  sub_10076D41C();
  sub_10076D5BC();
  sub_10000CF78(a2 + 45, a2[48]);
  sub_10076D41C();
  return sub_10076D5CC();
}

uint64_t sub_1001C4938(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001C4958(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 962))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001C49A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 952) = 0;
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
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 960) = 0;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 962) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 962) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001C4AF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 520))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001C4B40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 504) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 520) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 520) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001C4C70()
{
  sub_10000CD74(v0 + 64);
  sub_10000CD74(v0 + 104);
  sub_10000CD74(v0 + 144);
  sub_10000CD74(v0 + 184);
  sub_10000CD74(v0 + 224);
  sub_10000CD74(v0 + 264);
  sub_10000CD74(v0 + 304);
  sub_10000CD74(v0 + 344);
  sub_10000CD74(v0 + 384);
  sub_10000CD74(v0 + 424);
  sub_10000CD74(v0 + 464);
  sub_10000CD74(v0 + 504);
  sub_10000CD74(v0 + 544);
  sub_10000CD74(v0 + 584);
  sub_10000CD74(v0 + 624);
  sub_10000CD74(v0 + 664);
  sub_10000CD74(v0 + 704);
  sub_10000CD74(v0 + 744);
  sub_10000CD74(v0 + 784);
  if (*(v0 + 848))
  {
    sub_10000CD74(v0 + 824);
  }

  if (*(v0 + 888))
  {
    sub_10000CD74(v0 + 864);
  }

  if (*(v0 + 928))
  {
    sub_10000CD74(v0 + 904);
  }

  if (*(v0 + 968))
  {
    sub_10000CD74(v0 + 944);
  }

  return _swift_deallocObject(v0, 1000, 7);
}

uint64_t sub_1001C4E30()
{
  sub_10000CD74(v0 + 56);
  sub_10000CD74(v0 + 96);
  sub_10000CD74(v0 + 136);
  sub_10000CD74(v0 + 176);
  sub_10000CD74(v0 + 216);
  sub_10000CD74(v0 + 256);
  sub_10000CD74(v0 + 296);
  sub_10000CD74(v0 + 336);
  sub_10000CD74(v0 + 376);
  sub_10000CD74(v0 + 416);
  sub_10000CD74(v0 + 456);
  sub_10000CD74(v0 + 496);
  sub_10000CD74(v0 + 536);
  sub_10000CD74(v0 + 576);
  sub_10000CD74(v0 + 616);
  sub_10000CD74(v0 + 656);
  sub_10000CD74(v0 + 696);
  sub_10000CD74(v0 + 736);
  sub_10000CD74(v0 + 776);
  if (*(v0 + 840))
  {
    sub_10000CD74(v0 + 816);
  }

  if (*(v0 + 880))
  {
    sub_10000CD74(v0 + 856);
  }

  if (*(v0 + 920))
  {
    sub_10000CD74(v0 + 896);
  }

  if (*(v0 + 960))
  {
    sub_10000CD74(v0 + 936);
  }

  return _swift_deallocObject(v0, 992, 7);
}

uint64_t sub_1001C4F40()
{
  sub_10000CD74((v0 + 7));
  sub_10000CD74((v0 + 12));
  sub_10000CD74((v0 + 17));
  sub_10000CD74((v0 + 22));
  sub_10000CD74((v0 + 27));
  sub_10000CD74((v0 + 32));
  sub_10000CD74((v0 + 37));
  sub_10000CD74((v0 + 42));
  sub_10000CD74((v0 + 47));
  sub_10000CD74((v0 + 52));
  sub_10000CD74((v0 + 57));
  sub_10000CD74((v0 + 62));
  sub_10000CD74((v0 + 67));
  sub_10000CD74((v0 + 72));
  sub_10000CD74((v0 + 77));
  sub_10000CD74((v0 + 82));
  sub_10000CD74((v0 + 87));
  sub_10000CD74((v0 + 92));
  sub_10000CD74((v0 + 97));
  if (v0[105])
  {
    sub_10000CD74((v0 + 102));
  }

  if (v0[110])
  {
    sub_10000CD74((v0 + 107));
  }

  if (v0[115])
  {
    sub_10000CD74((v0 + 112));
  }

  if (v0[120])
  {
    sub_10000CD74((v0 + 117));
  }

  return _swift_deallocObject(v0, 978, 7);
}

uint64_t sub_1001C5088(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1001C5170()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for TitleHeaderView(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = sub_10076FF6C();
    v5 = sub_10076FF6C();
    [v2 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v4 withReuseIdentifier:v5];
  }
}

void sub_1001C5254(void *a1)
{
  v1 = a1;
  sub_1001C5170();
}

double sub_1001C529C(void *a1)
{
  v1 = a1;
  sub_1005A5D54();

  return 0.0;
}

id sub_1001C52F0()
{
  v1 = v0;
  v2 = sub_100763BCC();
  v174 = *(v2 - 8);
  v175 = v2;
  __chkstk_darwin(v2);
  v173 = &v148 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100763BBC();
  v170 = *(v4 - 8);
  v171 = v4;
  __chkstk_darwin(v4);
  v172 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100763BAC();
  v167 = *(v6 - 8);
  v168 = v6;
  __chkstk_darwin(v6);
  v169 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100763BFC();
  v176 = *(v8 - 8);
  __chkstk_darwin(v8);
  v164 = (&v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_10076997C();
  v166 = *(v10 - 8);
  __chkstk_darwin(v10);
  v165 = &v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100763BEC();
  v191 = *(v12 - 8);
  v192 = v12;
  __chkstk_darwin(v12);
  v153 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v190 = &v148 - v15;
  __chkstk_darwin(v16);
  v189 = &v148 - v17;
  __chkstk_darwin(v18);
  v20 = &v148 - v19;
  v21 = sub_10075D78C();
  v154 = *(v21 - 8);
  v155 = v21;
  __chkstk_darwin(v21);
  v151 = &v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v182);
  v183 = &v148 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000A5D4(&unk_10094BB20);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v150 = &v148 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v186 = (&v148 - v28);
  __chkstk_darwin(v29);
  v185 = &v148 - v30;
  __chkstk_darwin(v31);
  v152 = &v148 - v32;
  __chkstk_darwin(v33);
  v188 = (&v148 - v34);
  __chkstk_darwin(v35);
  v187 = (&v148 - v36);
  __chkstk_darwin(v37);
  v180 = &v148 - v38;
  *&v40 = __chkstk_darwin(v39).n128_u64[0];
  v42 = &v148 - v41;
  result = [v0 collectionView];
  if (result)
  {
    v44 = result;
    v160 = v10;
    v161 = v25;
    v158 = v24;
    v159 = v8;
    v179 = v20;
    [result frame];

    v184 = sub_10076770C();
    v46 = v45;
    v47 = v1;
    if (qword_1009408A8 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for TitleHeaderView.Style(0);
    v49 = sub_10000A61C(v48, qword_1009A0878);
    sub_1005A5D54();
    v50 = [v47 traitCollection];
    v51 = v191 + 56;
    v52 = *(v191 + 56);
    v177 = v42;
    v53 = v42;
    v54 = v192;
    v52(v53, 1, 1, v192);
    v156 = v52;
    v157 = v51;
    v52(v180, 1, 1, v54);
    v222 = 0;
    memset(v221, 0, sizeof(v221));
    v220 = 0;
    memset(v219, 0, sizeof(v219));
    v178 = v48;
    v55 = *(v48 + 20);
    v181 = v49;
    v149 = v55;
    sub_100199C28(v49 + v55, v183, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_100016F40(0, &qword_100942F00);
    v162 = v50;
    v56 = sub_100770B3C();
    v57 = v46;
    v163 = v47;
    if (!v46)
    {
      v62 = v192;
      goto LABEL_11;
    }

    v58 = v184;
    *&v216 = v184;
    *(&v216 + 1) = v46;

    v59 = v151;
    sub_10075D76C();
    sub_10002564C();
    sub_1007711EC();
    v61 = v60;
    (v154)[1](v59, v155);

    if (v61)
    {
      v62 = v192;
      goto LABEL_11;
    }

    [v56 lineHeight];
    v64 = ceil(v63 * 1.3);
    v65 = &v200;
    v62 = v192;
    if ((*&v64 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v64 > -9.22337204e18)
    {
      if (v64 < 9.22337204e18)
      {
LABEL_11:
        v218 = 0;
        v216 = 0u;
        v217 = 0u;
        v66 = sub_10076C04C();
        v214 = v66;
        v215 = sub_1001CA130(&qword_100943230, &type metadata accessor for Feature);
        v67 = sub_10000DB7C(v213);
        (*(*(v66 - 8) + 104))(v67, enum case for Feature.measurement_with_labelplaceholder(_:), v66);

        v68 = v56;
        sub_10076C90C();
        sub_10000CD74(v213);
        v69 = v165;
        v154 = v68;
        v155 = v57;
        sub_10076996C();
        sub_10076994C();
        (*(v166 + 8))(v69, v160);
        sub_100016E2C(&v216, v212, &unk_10094DA00);
        v70 = v214;
        v71 = v215;
        v72 = sub_10000CF78(v213, v214);
        v211[3] = v70;
        v211[4] = *(v71 + 8);
        v73 = sub_10000DB7C(v211);
        (*(*(v70 - 8) + 16))(v73, v72, v70);
        v75 = v182;
        v74 = v183;
        v76 = *(v183 + v182[8]);
        v209 = &type metadata for Float;
        v210 = &protocol witness table for Float;
        v208 = v76;
        v77 = v182[9];
        v78 = sub_10076D9AC();
        v207[3] = v78;
        v207[4] = &protocol witness table for StaticDimension;
        v79 = sub_10000DB7C(v207);
        v80 = *(*(v78 - 8) + 16);
        v80(v79, v74 + v77, v78);
        v81 = v75[10];
        v206[3] = v78;
        v206[4] = &protocol witness table for StaticDimension;
        v82 = sub_10000DB7C(v206);
        v80(v82, v74 + v81, v78);
        sub_100016E2C(v221, &v200, &qword_10094BB30);
        v83 = *(&v201 + 1);
        if (*(&v201 + 1))
        {
          v84 = v202;
          v85 = sub_10000CF78(&v200, *(&v201 + 1));
          *(&v204 + 1) = v83;
          v205 = *(v84 + 8);
          v86 = sub_10000DB7C(&v203);
          (*(*(v83 - 8) + 16))(v86, v85, v83);
          sub_10000CD74(&v200);
        }

        else
        {
          sub_10000CFBC(&v200, &qword_10094BB30);
          v203 = 0u;
          v204 = 0u;
          v205 = 0;
        }

        v87 = v179;
        v88 = v186;
        sub_100016E2C(v219, v197, &qword_10094BB30);
        v89 = v198;
        if (v198)
        {
          v90 = v199;
          v91 = sub_10000CF78(v197, v198);
          *(&v201 + 1) = v89;
          v202 = *(v90 + 8);
          v92 = sub_10000DB7C(&v200);
          (*(*(v89 - 8) + 16))(v92, v91, v89);
          sub_10000CD74(v197);
        }

        else
        {
          sub_10000CFBC(v197, &qword_10094BB30);
          v200 = 0u;
          v201 = 0u;
          v202 = 0;
        }

        v93 = v182;
        v94 = v183;
        sub_10000A570(v183 + v182[12], v197);
        sub_10000A570(v94 + v93[13], &v196);
        v194 = &type metadata for Double;
        v195 = &protocol witness table for Double;
        v193 = 0x4020000000000000;
        sub_100763BDC();
        sub_10000CD74(v213);
        sub_10000CFBC(&v216, &unk_10094DA00);
        v95 = *(v181 + v178[9]);
        sub_10000A5D4(&qword_10094BB38);
        v96 = *(v161 + 72);
        v97 = (*(v161 + 80) + 32) & ~*(v161 + 80);
        if (v95)
        {
          if (v95 == 1)
          {
            v166 = swift_allocObject();
            v98 = (v166 + v97);
            sub_100016E2C(v177, v166 + v97, &unk_10094BB20);
            v99 = v191 + 16;
            (*(v191 + 16))(&v98[v96], v87, v62);
            v156(&v98[v96], 0, 1, v62);
            sub_100016E2C(v180, &v98[2 * v96], &unk_10094BB20);
            v100 = (v99 + 32);
            v189 = (v99 + 16);
            v101 = _swiftEmptyArrayStorage;
            v102 = 3;
            v184 = v96;
            v185 = v98;
            v103 = v98;
            v104 = &unk_10094BB20;
            v187 = v100;
            do
            {
              v105 = v188;
              sub_100016E2C(v103, v188, v104);
              sub_1001CA0C0(v105, v88);
              v106 = v192;
              if ((*v100)(v88, 1, v192) == 1)
              {
                sub_10000CFBC(v88, v104);
              }

              else
              {
                v107 = v104;
                v108 = *v189;
                (*v189)(v190, v88, v106);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v101 = sub_10049E330(0, *(v101 + 2) + 1, 1, v101);
                }

                v110 = *(v101 + 2);
                v109 = *(v101 + 3);
                if (v110 >= v109 >> 1)
                {
                  v101 = sub_10049E330(v109 > 1, v110 + 1, 1, v101);
                }

                v100 = v187;
                *(v101 + 2) = v110 + 1;
                v108(&v101[((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v110], v190, v192);
                v88 = v186;
                v104 = v107;
                v96 = v184;
              }

              v103 += v96;
              --v102;
            }

            while (v102);
            swift_setDeallocating();
            swift_arrayDestroy();
            v65 = v159;
            v52 = v164;
            v62 = v192;
          }

          else
          {
            v123 = swift_allocObject();
            v124 = v123 + v97;
            sub_100016E2C(v177, v123 + v97, &unk_10094BB20);
            v125 = v191;
            (*(v191 + 16))(v123 + v97 + v96, v87, v62);
            v156((v123 + v97 + v96), 0, 1, v62);
            v126 = v152;
            sub_100016E2C(v123 + v97, v152, &unk_10094BB20);
            v127 = v150;
            sub_1001CA0C0(v126, v150);
            v128 = *(v125 + 48);
            v129 = (v125 + 32);
            if (v128(v127, 1, v62) == 1)
            {
              sub_10000CFBC(v127, &unk_10094BB20);
              v130 = _swiftEmptyArrayStorage;
            }

            else
            {
              v166 = v123;
              v131 = *v129;
              (*v129)(v153, v127, v62);
              v130 = _swiftEmptyArrayStorage;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v130 = sub_10049E330(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
              }

              v133 = *(v130 + 2);
              v132 = *(v130 + 3);
              if (v133 >= v132 >> 1)
              {
                v130 = sub_10049E330(v132 > 1, v133 + 1, 1, v130);
              }

              *(v130 + 2) = v133 + 1;
              v134 = &v130[((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v133];
              v62 = v192;
              v131(v134, v153, v192);
              v127 = v150;
            }

            v135 = v124 + v96;
            v136 = v152;
            sub_100016E2C(v135, v152, &unk_10094BB20);
            sub_1001CA0C0(v136, v127);
            if (v128(v127, 1, v62) == 1)
            {
              sub_10000CFBC(v127, &unk_10094BB20);
              v65 = v159;
            }

            else
            {
              v137 = *v129;
              (*v129)(v153, v127, v62);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v65 = v159;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v130 = sub_10049E330(0, *(v130 + 2) + 1, 1, v130);
              }

              v140 = *(v130 + 2);
              v139 = *(v130 + 3);
              if (v140 >= v139 >> 1)
              {
                v130 = sub_10049E330(v139 > 1, v140 + 1, 1, v130);
              }

              *(v130 + 2) = v140 + 1;
              v137(&v130[((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v140], v153, v62);
            }

            swift_setDeallocating();
            swift_arrayDestroy();
            v52 = v164;
          }
        }

        else
        {
          v166 = swift_allocObject();
          v111 = v166 + v97;
          sub_100016E2C(v177, v166 + v97, &unk_10094BB20);
          sub_100016E2C(v180, v111 + v96, &unk_10094BB20);
          v112 = v191 + 16;
          (*(v191 + 16))(v111 + 2 * v96, v87, v62);
          v113 = v62;
          v156((v111 + 2 * v96), 0, 1, v62);
          v186 = (v112 + 32);
          v188 = (v112 + 16);
          v190 = _swiftEmptyArrayStorage;
          v114 = 3;
          v165 = v111;
          v115 = v185;
          do
          {
            v116 = v96;
            v117 = v187;
            sub_100016E2C(v111, v187, &unk_10094BB20);
            sub_1001CA0C0(v117, v115);
            if ((*v186)(v115, 1, v113) == 1)
            {
              sub_10000CFBC(v115, &unk_10094BB20);
            }

            else
            {
              v118 = *v188;
              (*v188)(v189, v115, v113);
              v119 = v190;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v119 = sub_10049E330(0, *(v119 + 2) + 1, 1, v119);
              }

              v121 = *(v119 + 2);
              v120 = *(v119 + 3);
              if (v121 >= v120 >> 1)
              {
                v119 = sub_10049E330(v120 > 1, v121 + 1, 1, v119);
              }

              *(v119 + 2) = v121 + 1;
              v122 = (*(v191 + 80) + 32) & ~*(v191 + 80);
              v190 = v119;
              v113 = v192;
              v118(&v119[v122 + *(v191 + 72) * v121], v189);
              v115 = v185;
            }

            v96 = v116;
            v111 += v116;
            --v114;
          }

          while (v114);
          swift_setDeallocating();
          swift_arrayDestroy();
          v65 = v159;
          v52 = v164;
          v62 = v113;
        }

        swift_deallocClassInstance();
        v218 = 0;
        v216 = 0u;
        v217 = 0u;
        sub_100016E2C(&v216, v213, &unk_10094DA00);
        v141 = v178;
        v142 = v181;
        v143 = *(v181 + v178[14]);
        v212[3] = &type metadata for CGFloat;
        v212[4] = &protocol witness table for CGFloat;
        v212[0] = v143;
        (*(v167 + 16))(v169, v181 + v178[10], v168);
        (*(v170 + 16))(v172, v142 + v141[11], v171);
        (*(v174 + 104))(v173, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v175);
        sub_100763B7C();
        sub_100770ACC();
        sub_1001CA130(&unk_10094BB40, &type metadata accessor for TitleHeaderLayout);
        sub_10076D2AC();
        v213[0] = v144;
        v213[1] = v145;
        sub_100770ADC();
        if (JUScreenClassGetMain() != 1)
        {

          (*(v176 + 8))(v52, v65);
          (*(v191 + 8))(v179, v62);
          sub_10011BAB4(v183);
          sub_10000CFBC(v219, &qword_10094BB30);
          sub_10000CFBC(v221, &qword_10094BB30);
          sub_10000CFBC(v180, &unk_10094BB20);
          sub_10000CFBC(v177, &unk_10094BB20);
          goto LABEL_62;
        }

        v57 = v176;
        v58 = v177;
        v59 = v179;
        if (qword_10093FC38 != -1)
        {
          swift_once();
        }

        v146 = sub_10000A61C(v182, qword_10099DF58);
        v61 = v149;
        if (sub_10019942C(v181 + v149, v146))
        {

          (*(v57 + 8))(v52, v65);
          (*(v191 + 8))(v59, v62);
          sub_10011BAB4(v183);
          sub_10000CFBC(v219, &qword_10094BB30);
          sub_10000CFBC(v221, &qword_10094BB30);
          sub_10000CFBC(v180, &unk_10094BB20);
          sub_10000CFBC(v58, &unk_10094BB20);
LABEL_62:
          sub_10000CFBC(&v216, &unk_10094DA00);
        }

        if (qword_10093FC40 == -1)
        {
LABEL_61:
          v147 = sub_10000A61C(v182, qword_10099DF70);
          sub_10019942C(v181 + v61, v147);

          (*(v57 + 8))(v52, v65);
          (*(v191 + 8))(v59, v62);
          sub_10011BAB4(v183);
          sub_10000CFBC(v219, &qword_10094BB30);
          sub_10000CFBC(v221, &qword_10094BB30);
          sub_10000CFBC(v180, &unk_10094BB20);
          sub_10000CFBC(v58, &unk_10094BB20);
          goto LABEL_62;
        }

LABEL_66:
        swift_once();
        goto LABEL_61;
      }

LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    __break(1u);
    goto LABEL_65;
  }

  __break(1u);
  return result;
}

id sub_1001C6C08(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  if (a2 == 0xD000000000000039 && 0x80000001007D7F90 == a3 || (sub_10077167C() & 1) != 0)
  {
    v9 = sub_10076FF6C();
    v10 = sub_10076FF6C();
    v11.super.isa = sub_10075E02C().super.isa;
    v12 = [a1 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v10 forIndexPath:v11.super.isa];
  }

  else
  {
    v10 = sub_10076FF6C();
    v11.super.isa = sub_10075E02C().super.isa;
    v14.receiver = v4;
    v14.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v14, "collectionView:viewForSupplementaryElementOfKind:atIndexPath:", a1, v10, v11.super.isa);
  }

  return v12;
}

id sub_1001C6D5C(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_10075E11C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076FF9C();
  v11 = v10;
  sub_10075E06C();
  v12 = a3;
  v13 = a1;
  v14 = sub_1001C6C08(v12, v9, v11);

  (*(v6 + 8))(v8, v5);

  return v14;
}

void sub_1001C6E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 != 0xD000000000000039 || 0x80000001007D7F90 != a4) && (sub_10077167C() & 1) == 0)
  {
    v25 = sub_10076FF6C();
    isa = sub_10075E02C().super.isa;
    v26.receiver = v5;
    v26.super_class = ObjectType;
    objc_msgSendSuper2(&v26, "collectionView:willDisplaySupplementaryView:forElementKind:atIndexPath:", a1, a2, v25, isa);

    goto LABEL_14;
  }

  type metadata accessor for TitleHeaderView(0);
  v14 = swift_dynamicCastClassUnconditional();
  v15 = (sub_1005A5D54)();
  if (v15 > 40.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 40.0;
  }

  [v14 setLayoutMargins:{0.0, v16, 0.0, v16}];
  v17 = (v14 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabelNumberOfLines);
  *v17 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v17[1] = 0;

  v18 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel;
  [*(v14 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel) setNumberOfLines:0];
  [*(v14 + v18) setAllowsDefaultTighteningForTruncation:1];
  v19 = sub_1005A5D54([*(v14 + v18) setTextAlignment:1]);
  if (v19 <= 40.0)
  {
    v19 = 40.0;
  }

  v20 = (v14 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_separatorInset);
  *v20 = 0.0;
  v20[1] = v19;
  v20[2] = 0.0;
  v20[3] = v19;
  [v14 setNeedsLayout];
  if (qword_1009408A8 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A61C(v11, qword_1009A0878);
  sub_100199C28(v21, v13, type metadata accessor for TitleHeaderView.Style);
  (*((swift_isaMask & *v14) + 0x1C8))(v13);
  sub_10076770C();
  if (v22)
  {
    v23 = *(v14 + v18);
    isa = sub_10076FF6C();

    [v23 setText:isa];
LABEL_14:
  }
}

uint64_t sub_1001C71DC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_10075E11C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076FF9C();
  v13 = v12;
  sub_10075E06C();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  sub_1001C6E9C(v14, v15, v11, v13);

  return (*(v8 + 8))(v10, v7);
}

uint64_t type metadata accessor for PrivacyDefinitionsViewController()
{
  result = qword_10094C6F0;
  if (!qword_10094C6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1001C73A8()
{
  v1 = sub_1007621EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __chkstk_darwin(v5);
  v8 = (&v34 - v7);
  v9 = _swiftEmptyArrayStorage;
  v35 = _swiftEmptyArrayStorage;
  v10 = *(v0 + qword_10094E0D0);
  v11 = (*((swift_isaMask & *v0) + 0x4D8))(v6);
  v12 = sub_1001C9924(v11);
  if (v12)
  {
    v13 = v12;
    sub_10077019C();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v9 = v35;
  }

  v14 = sub_1001C973C(v0, v10);
  if (v14)
  {
    v15 = v14;
    sub_10077019C();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v9 = v35;
  }

  sub_10076573C();
  sub_1001CA130(&qword_10094CCF0, &type metadata accessor for GenericPagePresenter);
  if (sub_100761A9C() < 1)
  {
    goto LABEL_14;
  }

  sub_100761A6C();
  if ((*(v2 + 88))(v8, v1) != enum case for ShelfBackground.color(_:))
  {
    (*(v2 + 8))(v8, v1);
    goto LABEL_14;
  }

  (*(v2 + 96))(v8, v1);

  v16 = *(sub_10000A5D4(&unk_100950670) + 48);
  v17 = sub_1007659CC();
  (*(*(v17 - 8) + 8))(v8 + v16, v17);
  v18 = objc_opt_self();
  v19 = [v18 fractionalWidthDimension:1.0];
  v20 = [v18 absoluteDimension:2000.0];
  v21 = [objc_opt_self() sizeWithWidthDimension:v19 heightDimension:v20];

  v22 = sub_10076FF6C();
  v23 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v21 elementKind:v22 alignment:1 absoluteOffset:{0.0, -2000.0}];

  [v23 setExtendsBoundary:0];
  v8 = v23;
  sub_10077019C();
  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    sub_10077025C();

    v9 = v35;
LABEL_14:
    if (sub_100761A9C() < 1)
    {
      break;
    }

    if (!__OFSUB__(sub_100761A9C(), 1))
    {
      sub_100761A6C();
      if ((*(v2 + 88))(v4, v1) == enum case for ShelfBackground.color(_:))
      {
        (*(v2 + 96))(v4, v1);

        v24 = *(sub_10000A5D4(&unk_100950670) + 48);
        v25 = sub_1007659CC();
        (*(*(v25 - 8) + 8))(v4 + v24, v25);
        v26 = objc_opt_self();
        v27 = [v26 fractionalWidthDimension:1.0];
        v28 = [v26 absoluteDimension:2000.0];
        v29 = [objc_opt_self() sizeWithWidthDimension:v27 heightDimension:v28];

        v30 = sub_10076FF6C();
        v31 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v29 elementKind:v30 alignment:5 absoluteOffset:{0.0, 2000.0}];

        [v31 setExtendsBoundary:0];
        v32 = v31;
        sub_10077019C();
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();

        return v35;
      }

      else
      {
        (*(v2 + 8))(v4, v1);
      }

      return v9;
    }

    __break(1u);
LABEL_23:
    sub_10077021C();
  }

  return v9;
}

void sub_1001C7AC0()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v9 = [v1 collectionViewLayout];

    if (v9)
    {
      type metadata accessor for BaseCollectionCompositionalLayout();
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = v3;
        v5 = v9;
        v6 = [v4 configuration];
        sub_100016F40(0, &unk_10094E1E0);
        v7 = sub_10077116C();

        sub_1001C73A8();
        sub_100016F40(0, &qword_100948C70);
        isa = sub_1007701AC().super.isa;

        [v7 setBoundarySupplementaryItems:isa];

        [v4 setConfiguration:v7];
      }
    }
  }
}

void sub_1001C7C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v59 = sub_10075E11C();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10075DFDC();
  v55 = *(v9 - 8);
  v56 = v9;
  __chkstk_darwin(v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_10094E1D0);
  *&v13 = __chkstk_darwin(v12 - 8).n128_u64[0];
  v54 = &v46 - v14;
  v15 = [v3 collectionView];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 collectionViewLayout];

    [v17 invalidateLayout];
  }

  v53 = *&v4[qword_10094E0D0];
  v18 = [v4 collectionView];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 collectionViewLayout];

    if (v20)
    {
      type metadata accessor for BaseCollectionCompositionalLayout();
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        goto LABEL_8;
      }
    }

    v18 = 0;
  }

LABEL_8:
  v52 = v18;
  v21 = *(a1 + 16);
  v22 = _swiftEmptyArrayStorage;
  if (v21)
  {
    v47 = v11;
    v48 = a2;
    v49 = a3;
    v50 = v4;
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1004BBC28(0, v21, 0);
    v22 = aBlock[0];
    v23 = v57 + 16;
    v57 = *(v57 + 16);
    v24 = *(v23 + 64);
    v51 = a1;
    v25 = a1 + ((v24 + 32) & ~v24);
    v26 = *(v23 + 56);
    v27 = (v23 - 8);
    do
    {
      v28 = v58;
      v29 = v59;
      (v57)(v58, v25, v59);
      v30 = sub_10075E0AC();
      (*v27)(v28, v29);
      aBlock[0] = v22;
      v32 = v22[2];
      v31 = v22[3];
      if (v32 >= v31 >> 1)
      {
        sub_1004BBC28((v31 > 1), v32 + 1, 1);
        v22 = aBlock[0];
      }

      v22[2] = v32 + 1;
      v22[v32 + 4] = v30;
      v25 += v26;
      --v21;
    }

    while (v21);
    v4 = v50;
    a1 = v51;
    a2 = v48;
    a3 = v49;
    v11 = v47;
  }

  sub_1001CA130(&qword_10094E190, &type metadata accessor for IndexSet);
  v33 = v56;
  sub_1007712BC();
  v34 = v22[2];
  v35 = v11;
  if (v34)
  {
    v36 = v22 + 4;
    do
    {
      v37 = *v36++;
      aBlock[6] = v37;
      sub_10077126C();
      --v34;
    }

    while (v34);
  }

  v39 = v54;
  v38 = v55;
  (*(v55 + 32))(v54, v35, v33);
  (*(v38 + 56))(v39, 0, 1, v33);
  sub_1001C9A44(v39);

  sub_10000CFBC(v39, &unk_10094E1D0);
  v40 = [v4 collectionView];
  if (v40)
  {
    v41 = v40;
    v42 = swift_allocObject();
    v42[2] = a2;
    v42[3] = a3;
    v42[4] = v4;
    v42[5] = a1;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_1001C9EC8;
    *(v43 + 24) = v42;
    aBlock[4] = sub_100071910;
    aBlock[5] = v43;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001C5148;
    aBlock[3] = &unk_10088BA38;
    v44 = _Block_copy(aBlock);
    v45 = v4;

    [v41 performBatchUpdates:v44 completion:0];
    _Block_release(v44);
  }
}

uint64_t sub_1001C81A0()
{
  if (qword_1009412E0 != -1)
  {
    swift_once();
  }

  v1 = sub_10076FD4C();
  sub_10000A61C(v1, qword_1009A25E8);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783C60;
  v7 = sub_10000A5D4(&qword_10094CCF8);
  v6[0] = v0;
  v2 = v0;
  sub_10076F30C();
  sub_10000CFBC(v6, &unk_1009434C0);
  sub_10076F27C();
  swift_getErrorValue();
  v7 = v5;
  v3 = sub_10000DB7C(v6);
  (*(*(v5 - 8) + 16))(v3);
  sub_10076F32C();
  sub_10000CFBC(v6, &unk_1009434C0);
  sub_10076FBEC();
}

void sub_1001C83D0()
{
  v1 = *&v0[qword_10094E0D0];

  *(v1 + 80) = 1;

  sub_1001C7AC0();
}

void sub_1001C8430()
{
  v1 = [v0 collectionView];
  sub_1001C8630(v1);

  sub_1001C7AC0();
}

void sub_1001C8578(void (*a1)(void), uint64_t a2, void *a3)
{
  a1();
  v4 = [a3 collectionView];
  if (v4)
  {
    v5 = v4;
    sub_10075E11C();
    isa = sub_1007701AC().super.isa;
    [v5 deleteItemsAtIndexPaths:isa];
  }
}

void sub_1001C8630(void *a1)
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
    sub_10076573C();
    sub_1001CA130(&qword_10094CCF0, &type metadata accessor for GenericPagePresenter);
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
        sub_1001CA130(&qword_10094E190, &type metadata accessor for IndexSet);
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
        *(v21 + 16) = sub_1001CA05C;
        *(v21 + 24) = v20;
        aBlock[4] = sub_1001CA180;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1001C5148;
        aBlock[3] = &unk_10088BAB0;
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

uint64_t sub_1001C8A2C()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = sub_10076F7FC();
  v40 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  v11 = *(v0 + 16);
  v12 = sub_10076573C();
  v44 = sub_1001CA130(&qword_10094CCF0, &type metadata accessor for GenericPagePresenter);
  result = sub_100761A9C();
  if (result < 0)
  {
    goto LABEL_21;
  }

  if (result)
  {
    v14 = 0;
    v42 = result;
    v43 = (v40 + 48);
    v41 = (v40 + 32);
    v38 = v4;
    v39 = (v40 + 16);
    v33 = v40 + 40;
    v34 = (v40 + 8);
    v36 = v11;
    v37 = v10;
    v35 = v12;
    do
    {
      sub_100761B4C();
      sub_10076B6FC();
      if ((*v43)(v4, 1, v5) == 1)
      {

        sub_10000CFBC(v4, &qword_1009492E0);
      }

      else
      {
        v15 = *v41;
        (*v41)(v10, v4, v5);
        swift_beginAccess();
        v16 = v7;
        v17 = v5;
        (*v39)(v7, v10, v5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = *(v1 + 56);
        v19 = v45;
        v20 = v1;
        *(v1 + 56) = 0x8000000000000000;
        v22 = sub_10060FF40(v14);
        v23 = v19[2];
        v24 = (v21 & 1) == 0;
        v25 = v23 + v24;
        if (__OFADD__(v23, v24))
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

        v26 = v21;
        if (v19[3] >= v25)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10024CB84();
          }
        }

        else
        {
          sub_100248370(v25, isUniquelyReferenced_nonNull_native);
          v27 = sub_10060FF40(v14);
          if ((v26 & 1) != (v28 & 1))
          {
            goto LABEL_22;
          }

          v22 = v27;
        }

        v7 = v16;
        v29 = v45;
        if (v26)
        {
          v5 = v17;
          (*(v40 + 40))(v45[7] + *(v40 + 72) * v22, v16, v17);
        }

        else
        {
          v45[(v22 >> 6) + 8] |= 1 << v22;
          *(v29[6] + 8 * v22) = v14;
          v5 = v17;
          v15((v29[7] + *(v40 + 72) * v22), v16, v17);
          v30 = v29[2];
          v31 = __OFADD__(v30, 1);
          v32 = v30 + 1;
          if (v31)
          {
            goto LABEL_20;
          }

          v29[2] = v32;
        }

        v1 = v20;
        *(v20 + 56) = v29;

        swift_endAccess();

        v10 = v37;
        (*v34)(v37, v5);
        v4 = v38;
      }

      ++v14;
      result = v42;
    }

    while (v42 != v14);
  }

  return result;
}

uint64_t sub_1001C8E60(uint64_t a1, uint64_t a2)
{
  v45 = sub_10000A5D4(&qword_1009572A0);
  v41 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v33[-v3];
  v4 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v4 - 8);
  v43 = &v33[-v5];
  v48 = sub_10076F7FC();
  v6 = *(v48 - 8);
  __chkstk_darwin(v48);
  v39 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v38 = &v33[-v9];
  v10 = sub_10075DF7C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v47 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10000A5D4(&qword_10094CCD8);
  __chkstk_darwin(v13);
  v15 = &v33[-v14];
  sub_10075DF8C();
  swift_beginAccess();
  sub_10075DFDC();
  sub_1001CA130(&qword_10094CCE0, &type metadata accessor for IndexSet);
  v46 = (v11 + 8);
  v36 = v6 + 16;
  v35 = v6 + 32;
  v34 = (v6 + 8);
  v42 = (v6 + 56);
  v40 = v6;
  ++v41;
  v37 = v10;
  while (1)
  {
    v18 = v47;
    sub_10077040C();
    sub_1001CA130(&qword_10094CCE8, &type metadata accessor for IndexSet.Index);
    v19 = sub_10076FF1C();
    (*v46)(v18, v10);
    if (v19)
    {
      break;
    }

    v20 = sub_10077042C();
    v22 = *v21;
    v20(v49, 0);
    sub_10077041C();
    v23 = *(a2 + 56);
    if (*(v23 + 16))
    {
      v24 = sub_10060FF40(v22);
      if (v25)
      {
        v26 = v39;
        v27 = v40;
        v28 = *(v23 + 56) + *(v40 + 72) * v24;
        v29 = v48;
        (*(v40 + 16))(v39, v28, v48);
        v30 = *(v27 + 32);
        v31 = v38;
        v30(v38, v26, v29);
        if (*(a2 + 112))
        {

          sub_10076610C();
        }

        (*v34)(v31, v48);
        v10 = v37;
      }
    }

    v16 = v43;
    (*v42)(v43, 1, 1, v48);
    swift_beginAccess();
    sub_100098444(v16, v22);
    swift_endAccess();
    v50 = v22;
    sub_10077140C();
    v17 = v44;
    sub_10076FDEC();
    sub_10076F9BC();
    (*v41)(v17, v45);
  }

  return sub_10000CFBC(v15, &qword_10094CCD8);
}

uint64_t sub_1001C93F8(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v21 = sub_10000A5D4(&qword_1009572A0);
  v2 = *(v21 - 8);
  __chkstk_darwin(v21);
  v20 = &v19 - v3;
  v23 = sub_10075DF7C();
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_10094CCD8);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  sub_10075DF8C();
  sub_10075DFDC();
  sub_1001CA130(&qword_10094CCE0, &type metadata accessor for IndexSet);
  v10 = (v4 + 8);
  for (i = (v2 + 8); ; (*i)(v17, v21))
  {
    sub_10077040C();
    sub_1001CA130(&qword_10094CCE8, &type metadata accessor for IndexSet.Index);
    v12 = v23;
    v13 = sub_10076FF1C();
    (*v10)(v6, v12);
    if (v13)
    {
      break;
    }

    v14 = sub_10077042C();
    v16 = *v15;
    v14(v24, 0);
    sub_10077041C();
    v25 = v16;
    sub_10077140C();
    v17 = v20;
    sub_10076FDEC();
    sub_10076F9BC();
  }

  return sub_10000CFBC(v9, &qword_10094CCD8);
}

id sub_1001C973C(void *a1, uint64_t a2)
{
  if (*(a2 + 80) != 1)
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

id sub_1001C9924(double a1)
{
  if (a1 <= 0.0)
  {
    return 0;
  }

  v2 = objc_opt_self();
  v3 = [v2 fractionalWidthDimension:1.0];
  v4 = [v2 absoluteDimension:a1];
  v5 = [objc_opt_self() sizeWithWidthDimension:v3 heightDimension:v4];

  v6 = sub_10076FF6C();
  v7 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v5 elementKind:v6 alignment:1];

  return v7;
}

uint64_t sub_1001C9A44(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&unk_10094E1D0);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  v10 = sub_10075DFDC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v23 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v21 - v14;
  v24 = a1;
  sub_100016E2C(a1, v9, &unk_10094E1D0);
  v16 = *(v11 + 48);
  if (v16(v9, 1, v10) == 1)
  {
    sub_10000CFBC(v9, &unk_10094E1D0);
    if (v2[14])
    {

      sub_10076611C();
    }

    swift_beginAccess();
    v2[7] = &_swiftEmptyDictionarySingleton;
  }

  else
  {
    v17 = (*(v11 + 32))(v15, v9, v10);
    v21[1] = v21;
    v26 = v2[3];
    __chkstk_darwin(v17);
    v22 = v16;
    v21[-2] = v15;
    v21[-1] = v2;

    sub_10000A5D4(&unk_1009520B0);
    v21[0] = 0;
    sub_1001C9F18();
    v16 = v22;
    sub_10076F35C();

    (*(v11 + 8))(v15, v10);
  }

  sub_1001C8A2C();
  sub_100016E2C(v24, v6, &unk_10094E1D0);
  if (v16(v6, 1, v10) == 1)
  {
    return sub_10000CFBC(v6, &unk_10094E1D0);
  }

  v19 = v23;
  v20 = (*(v11 + 32))(v23, v6, v10);
  v25 = v2[3];
  __chkstk_darwin(v20);
  v21[-2] = v19;
  v21[-1] = v2;

  sub_10000A5D4(&unk_1009520B0);
  sub_1001C9F18();
  sub_10076F35C();

  return (*(v11 + 8))(v19, v10);
}

uint64_t sub_1001C9E88()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001C9EE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1001C9F18()
{
  result = qword_1009564C0;
  if (!qword_1009564C0)
  {
    sub_10000CE78(&unk_1009520B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009564C0);
  }

  return result;
}

uint64_t sub_1001C9F98()
{
  v1 = sub_10075DFDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1001CA05C()
{
  v1 = *(sub_10075DFDC() - 8);
  v2 = ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v3 = *(v0 + 16);

  sub_1006B6DE0(v3, v2);
}

uint64_t sub_1001CA0C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_10094BB20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001CA130(unint64_t *a1, void (*a2)(uint64_t))
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

int64x2_t sub_1001CA1A4()
{
  if (qword_10093F9B8 != -1)
  {
    swift_once();
  }

  v0 = qword_10094CD00;
  qword_10099D7D8 = 0;
  swift_weakInit();
  qword_10099D7E8 = 0;
  unk_10099D7F0 = 0;
  result = vdupq_n_s64(0x404A000000000000uLL);
  byte_10099D7F8 = 1;
  xmmword_10099D7B0 = result;
  *&qword_10099D7C0 = xmmword_100793420;
  qword_10099D7D0 = v0;
  return result;
}

uint64_t sub_1001CA23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_weakInit();
  swift_weakDestroy();
  return sub_1001CB6D8(a1, a2);
}

id sub_1001CA294(char a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_iconViews] = _swiftEmptyArrayStorage;
  v12 = OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_layoutMetrics;
  if (qword_10093F9C0 != -1)
  {
    swift_once();
  }

  v13 = &v5[v12];
  v14 = qword_10099D7C0;
  v15 = xmmword_10099D7B0;
  *(v13 + 5) = &type metadata for CGFloat;
  *(v13 + 6) = &protocol witness table for CGFloat;
  *(v13 + 2) = v14;
  v16 = byte_10099D7F8;
  v17 = *algn_10099D7C8;
  v18 = *&qword_10099D7E8;
  *v13 = v15;
  *(v13 + 56) = v17;
  *(v13 + 72) = v18;
  v13[88] = v16;
  sub_1001CCBC8(&xmmword_10099D7B0, &v5[OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_config]);
  v5[OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_enablePrerenderedIcons] = a1 & 1;
  v39.receiver = v5;
  v39.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v39, "initWithFrame:", a2, a3, a4, a5);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v23 = v19;
  [v23 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v23 setClipsToBounds:1];
  v24 = OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_config;
  swift_beginAccess();
  v25 = sub_1001CCBC8(v23 + v24, v37);
  __chkstk_darwin(v25);
  sub_100016CD4();
  sub_10076C13C();
  sub_100016D84(v37);
  swift_beginAccess();
  sub_1001CCC10(v35, v23 + v24);
  swift_endAccess();
  sub_1001CCBC8(v23 + v24, v37);
  v26 = v37[0];
  v27 = v37[1];
  v35[5] = &type metadata for CGFloat;
  v35[6] = &protocol witness table for CGFloat;
  v28 = v37[3];
  v29 = v37[4];
  v35[2] = v37[2];
  v30 = v37[7];
  v31 = v37[8];
  v32 = v38;
  sub_100016D84(v37);
  v35[0] = v26;
  v35[1] = v27;
  v35[7] = v28;
  v35[8] = v29;
  v35[9] = v30;
  v35[10] = v31;
  v36 = v32;
  v33 = OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_layoutMetrics;
  swift_beginAccess();
  sub_10015E8E4(v35, v23 + v33);
  swift_endAccess();

  return v23;
}

id sub_1001CA5CC(id result)
{
  v2 = result;
  v3 = OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_iconViews;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_iconViews];
  if (v4 >> 62)
  {
    result = sub_10077158C();
    v5 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      v7 = sub_10077149C();
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
    result = sub_10077158C();
    v10 = result;
    if (result)
    {
LABEL_12:
      if (v10 >= 1)
      {

        for (j = 0; j != v10; ++j)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = sub_10077149C();
          }

          else
          {
            v12 = *(v9 + 8 * j + 32);
          }

          v13 = v12;
          [v1 addSubview:v12];
        }

        goto LABEL_19;
      }

LABEL_27:
      __break(1u);
      return result;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_12;
    }
  }

LABEL_19:

  return [v1 setNeedsLayout];
}

uint64_t sub_1001CA77C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_config;
  swift_beginAccess();
  sub_1001CCBC8(v0 + v1, v13);
  v2 = v13[0];
  v3 = v13[1];
  v11[5] = &type metadata for CGFloat;
  v11[6] = &protocol witness table for CGFloat;
  v4 = v13[3];
  v11[2] = v13[2];
  v5 = v13[4];
  v6 = v13[7];
  v7 = v13[8];
  v8 = v14;
  sub_100016D84(v13);
  v11[0] = v2;
  v11[1] = v3;
  v11[7] = v4;
  v11[8] = v5;
  v11[9] = v6;
  v11[10] = v7;
  v12 = v8;
  v9 = OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_layoutMetrics;
  swift_beginAccess();
  sub_1001CCC48(v11, v0 + v9);
  swift_endAccess();
  [v0 setNeedsLayout];
  return sub_1001CCA74(v11);
}

id sub_1001CA998()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_iconViews;
  sub_10075FD2C();

  v2 = sub_1007701EC();

  if (v2)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v4 = *(v0 + v1);
      if (v4 >> 62)
      {
        result = sub_10077158C();
        v5 = result;
        if (result)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v5)
        {
LABEL_5:
          if (v5 < 1)
          {
            __break(1u);
            return result;
          }

          v6 = 0;
          do
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v7 = sub_10077149C();
            }

            else
            {
              v7 = *(v4 + 8 * v6 + 32);
            }

            v8 = v7;
            ++v6;
            sub_10000D7F8();
            sub_100760BFC();
          }

          while (v5 != v6);

          return sub_1001CA5CC(_swiftEmptyArrayStorage);
        }
      }
    }

    return sub_1001CA5CC(_swiftEmptyArrayStorage);
  }

  return result;
}

void sub_1001CAB08(CGFloat a1, CGFloat a2)
{
  if (a1 > 0.0 && a2 > 0.0)
  {
    v4 = v2;
    v6 = v2 + OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_config;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v7 = *(v6 + 40);
      if (v7)
      {
        sub_10076C02C();

        if ((sub_1007701EC() & 1) == 0)
        {

          return;
        }

        v8 = OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_layoutMetrics;
        swift_beginAccess();
        sub_10015E8A4(v4 + v8, v22);
        v9 = *(sub_1001CB764(v22, 0.0, 0.0, a1, a2) + 2);

        sub_1001CCA74(v22);
        v10 = _swiftEmptyArrayStorage;
        v22[0] = _swiftEmptyArrayStorage;
        if (v9)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            if (v7 >> 62)
            {
              goto LABEL_35;
            }

            for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
            {
              v20 = OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_enablePrerenderedIcons;
              sub_10075FD2C();
              v12 = 0;
              while (1)
              {
                v13 = (*(v4 + v20) == 1 ? sub_10075FB1C() : sub_10075FB3C());
                v14 = v13;
                sub_10077019C();
                if (*((v22[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_10077021C();
                }

                sub_10077025C();
                if (i == -1 && v12 == 0x8000000000000000)
                {
                  break;
                }

                v10 = v22[0];
                sub_10077149C();
                sub_10076BFBC();
                sub_10000D7F8();
                sub_100760B8C();

                swift_unknownObjectRelease();

                if (v9 == ++v12)
                {
                  goto LABEL_30;
                }
              }

LABEL_34:
              __break(1u);
LABEL_35:
              ;
            }

            __break(1u);
            goto LABEL_37;
          }

          v21 = v7 & 0xFFFFFFFFFFFFFF8;
          v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v15)
          {
LABEL_37:
            __break(1u);
            return;
          }

          v19 = OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_enablePrerenderedIcons;
          sub_10075FD2C();
          v16 = 0;
          do
          {
            if (*(v4 + v19) == 1)
            {
              v17 = sub_10075FB1C();
            }

            else
            {
              v17 = sub_10075FB3C();
            }

            v18 = v17;
            sub_10077019C();
            if (*((v22[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_10077021C();
            }

            sub_10077025C();
            if (v16 % v15 >= *(v21 + 16))
            {
              __break(1u);
              goto LABEL_34;
            }

            ++v16;
            v10 = v22[0];

            sub_10076BFBC();
            sub_10000D7F8();
            sub_100760B8C();
          }

          while (v9 != v16);
        }

LABEL_30:

        sub_1001CA5CC(v10);
      }
    }
  }
}

uint64_t sub_1001CAEF8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50.receiver = v1;
  v50.super_class = ObjectType;
  objc_msgSendSuper2(&v50, "layoutSubviews", v5);
  [v1 bounds];
  x = v57.origin.x;
  y = v57.origin.y;
  width = v57.size.width;
  height = v57.size.height;
  result = CGRectIsEmpty(v57);
  if ((result & 1) == 0)
  {
    v13 = OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_iconViews;
    v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_iconViews];
    if (!(v14 >> 62))
    {
      result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }

LABEL_4:
      v15 = *&v1[v13];
      *&v43 = v7;
      if (v15 >> 62)
      {
        v16 = sub_10077158C();
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v40 = v13;
      v17 = _swiftEmptyArrayStorage;
      if (v16)
      {
        v39 = v4;
        *&v41 = v3;
        *&v42 = v1;
        v45[0] = _swiftEmptyArrayStorage;

        result = sub_1004BB7D4(0, v16 & ~(v16 >> 63), 0);
        if (v16 < 0)
        {
          __break(1u);
          goto LABEL_36;
        }

        v18 = 0;
        v17 = v45[0];
        v51 = 0x3FF0000000000000;
        v52 = 0;
        v53 = 0;
        v54 = 0x3FF0000000000000;
        v55 = 0;
        v56 = 0;
        do
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v19 = sub_10077149C();
          }

          else
          {
            v19 = *(v15 + 8 * v18 + 32);
          }

          v20 = v19;
          [v20 transform];
          if (sub_10077062C())
          {
            *&v44.d = sub_1000ACA5C();
            *&v44.tx = &protocol witness table for UIView;
            *&v44.a = v20;
            v21 = v20;
          }

          else
          {
            sub_100770BAC();
          }

          sub_100012498(&v44, v46);

          v45[0] = v17;
          v23 = v17[2];
          v22 = v17[3];
          if (v23 >= v22 >> 1)
          {
            sub_1004BB7D4((v22 > 1), v23 + 1, 1);
          }

          ++v18;
          v24 = v47;
          v25 = v48;
          v26 = sub_10008B8A4(v46, v47);
          v27 = __chkstk_darwin(v26);
          v29 = &v39 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v30 + 16))(v29, v27);
          sub_10016FC14(v23, v29, v45, v24, v25);
          sub_10000CD74(v46);
          v17 = v45[0];
        }

        while (v16 != v18);

        v1 = v42;
        v3 = v41;
        v4 = v39;
      }

      v31 = OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_layoutMetrics;
      swift_beginAccess();
      sub_10015E8A4(&v1[v31], v46);
      v49 = v17;
      v32 = v43;
      IconArtworkGridLayout.placeChildren(relativeTo:in:)(x, y, width, height);
      (*(v4 + 8))(v32, v3);
      v33 = &v1[OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_config];
      swift_beginAccess();
      result = CGAffineTransformMakeRotation(&v44, v33[4]);
      v42 = *&v44.c;
      v43 = *&v44.a;
      v41 = *&v44.tx;
      v34 = *&v1[v40];
      if (v34 >> 62)
      {
        result = sub_10077158C();
        v35 = result;
        if (result)
        {
LABEL_21:
          if (v35 >= 1)
          {

            v36 = 0;
            do
            {
              if ((v34 & 0xC000000000000001) != 0)
              {
                v37 = sub_10077149C();
              }

              else
              {
                v37 = *(v34 + 8 * v36 + 32);
              }

              v38 = v37;
              ++v36;
              *&v44.a = v43;
              *&v44.c = v42;
              *&v44.tx = v41;
              [v37 setTransform:&v44];
            }

            while (v35 != v36);

            return sub_1001CB710(v46);
          }

LABEL_36:
          __break(1u);
          return result;
        }
      }

      else
      {
        v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v35)
        {
          goto LABEL_21;
        }
      }

      return sub_1001CB710(v46);
    }

    result = sub_10077158C();
    if (result)
    {
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t sub_1001CB4E8(uint64_t a1, uint64_t a2, double a3, double a4)
{

  *(a1 + 40) = a2;
  result = swift_weakAssign();
  *(a1 + 56) = a3;
  *(a1 + 64) = a4;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_1001CB604(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 73))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_1001CB660(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

char *sub_1001CB764(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = sub_10077164C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v176 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = *(a1 + 64);
  CGAffineTransformMakeRotation(&v206, v182);
  v207.origin.x = a4 * -0.5;
  v207.origin.y = a5 * -0.5;
  v207.size.width = a4;
  v207.size.height = a5;
  v208 = CGRectApplyAffineTransform(v207, &v206);
  x = v208.origin.x;
  y = v208.origin.y;
  width = v208.size.width;
  v204 = v208.size.width;
  height = v208.size.height;
  v200 = v208.size.height;
  MinX = CGRectGetMinX(v208);
  v195 = a2;
  v209.origin.x = a2;
  v196 = a3;
  v209.origin.y = a3;
  v209.size.width = a4;
  v209.size.height = a5;
  v197 = a5;
  v203 = MinX + CGRectGetMidX(v209);
  v210.origin.x = x;
  v210.origin.y = y;
  v210.size.width = width;
  v210.size.height = height;
  MinY = CGRectGetMinY(v210);
  v211.origin.x = a2;
  v211.origin.y = a3;
  v211.size.width = a4;
  v19 = a4;
  v211.size.height = a5;
  v202 = MinY + CGRectGetMidY(v211);
  v21 = *a1;
  v20 = *(a1 + 8);
  CGAffineTransformMakeRotation(&v206, v182);
  v212.origin.x = v21 * -0.5;
  v212.origin.y = v20 * -0.5;
  v212.size.width = v21;
  v212.size.height = v20;
  v194 = v20;
  v213 = CGRectApplyAffineTransform(v212, &v206);
  v22 = v213.origin.x;
  v23 = v213.origin.y;
  v24 = v213.size.width;
  v25 = v213.size.height;
  v26 = CGRectGetMinX(v213);
  v214.origin.x = 0.0;
  v214.origin.y = 0.0;
  v214.size.width = v21;
  v214.size.height = v20;
  v199 = v26 + CGRectGetMidX(v214);
  v215.origin.x = v22;
  v215.origin.y = v23;
  v215.size.width = v24;
  v215.size.height = v25;
  v27 = CGRectGetMinY(v215);
  v216.origin.x = 0.0;
  v216.origin.y = 0.0;
  v216.size.width = v21;
  v216.size.height = v20;
  v201 = v27 + CGRectGetMidY(v216);
  sub_10000CF78((a1 + 16), *(a1 + 40));
  sub_1000FF02C();
  sub_10076D40C();
  v29 = v28;
  v189 = v28;
  (*(v11 + 8))(v13, v10);
  v30 = *(a1 + 56);
  v192 = v21;
  v31 = v21 + v29;
  v32 = floor(v31 * v30);
  v33 = v195;
  v217.origin.x = v195;
  v34 = v196;
  v217.origin.y = v196;
  v217.size.width = v19;
  v35 = v197;
  v217.size.height = v197;
  MidX = CGRectGetMidX(v217);
  v218.origin.x = v33;
  v218.origin.y = v34;
  v193 = v19;
  v218.size.width = v19;
  v218.size.height = v35;
  MidY = CGRectGetMidY(v218);
  v36 = v182;
  v37 = __sincos_stret(v182);
  v188 = v37.__cosval * v31;
  v187 = v37.__sinval * v31;
  v38 = __sincos_stret(v36 + 3.14159265);
  v191 = v38.__cosval * v31;
  v190 = v38.__sinval * v31;
  v179 = v37.__cosval * v32;
  v178 = v37.__sinval * v32;
  v39 = __sincos_stret(v36 + 1.57079633);
  sinval = v39.__sinval;
  cosval = v39.__cosval;
  v40 = v194 + v189;
  v41 = v199;
  v219.origin.x = v199;
  v42 = v201;
  v219.origin.y = v201;
  v219.size.width = v24;
  v219.size.height = v25;
  v43 = MidX + CGRectGetMidX(v219);
  v220.origin.x = v41;
  v220.origin.y = v42;
  v220.size.width = v24;
  v220.size.height = v25;
  v44 = v43 + CGRectGetWidth(v220) * -0.5;
  v221.origin.x = v41;
  v221.origin.y = v42;
  v221.size.width = v24;
  v221.size.height = v25;
  v45 = MidY + CGRectGetMidY(v221);
  v222.origin.x = v41;
  v222.origin.y = v42;
  v222.size.width = v24;
  v222.size.height = v25;
  v223.origin.y = v45 + CGRectGetHeight(v222) * -0.5;
  v299.origin.x = v203;
  v299.size.width = v204;
  v223.origin.x = v44;
  v299.origin.y = v202;
  v223.size.width = v24;
  v223.size.height = v25;
  v299.size.height = v200;
  v46 = CGRectIntersectsRect(v223, v299);
  v177 = v40;
  MinX = v24;
  v198 = v25;
  if (v46)
  {
    v184 = cosval * v40 + v179;
    v183 = sinval * v40 + v178;
    v47 = _swiftEmptyArrayStorage;
    v48 = 0.5;
    v49 = MidX;
    v50 = MidY;
    v51 = v200;
    v52 = v201;
    v53 = v199;
    do
    {
      cosval = v49;
      v229.origin.x = v53;
      v229.origin.y = v52;
      v229.size.width = v24;
      v229.size.height = v25;
      v56 = v49 + CGRectGetMidX(v229);
      v230.origin.x = v53;
      v230.origin.y = v52;
      v230.size.width = v24;
      v230.size.height = v25;
      v57 = v56 - CGRectGetWidth(v230) * v48;
      v231.origin.x = v53;
      v231.origin.y = v52;
      v231.size.width = v24;
      v231.size.height = v25;
      v189 = v50 + CGRectGetMidY(v231);
      v232.origin.x = v53;
      v232.origin.y = v52;
      v232.size.width = v24;
      v232.size.height = v25;
      v58 = v189 - CGRectGetHeight(v232) * v48;
      v233.origin.x = v57;
      v233.origin.y = v58;
      v233.size.width = v24;
      v233.size.height = v25;
      v301.origin.y = v202;
      v301.origin.x = v203;
      v301.size.width = v204;
      v301.size.height = v51;
      v59 = CGRectIntersectsRect(v233, v301);
      sinval = v50;
      if (v59)
      {
        v189 = cosval;
        v60 = v50;
        do
        {
          v239.origin.x = v57;
          v239.origin.y = v58;
          v239.size.width = v24;
          v239.size.height = v25;
          v303.origin.x = v195;
          v303.origin.y = v196;
          v303.size.width = v193;
          v303.size.height = v197;
          if (CGRectIntersectsRect(v239, v303))
          {
            v240.origin.x = 0.0;
            v240.origin.y = 0.0;
            v70 = v192;
            v240.size.width = v192;
            v71 = v194;
            v240.size.height = v194;
            v72 = CGRectGetMidX(v240);
            v241.origin.x = 0.0;
            v241.origin.y = 0.0;
            v241.size.width = v70;
            v241.size.height = v71;
            v73 = CGRectGetWidth(v241);
            v242.origin.x = 0.0;
            v242.origin.y = 0.0;
            v242.size.width = v70;
            v242.size.height = v71;
            v74 = CGRectGetMidY(v242);
            v243.origin.x = 0.0;
            v243.origin.y = 0.0;
            v243.size.width = v70;
            v243.size.height = v71;
            v75 = CGRectGetHeight(v243);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_10049CF8C(0, *(v47 + 2) + 1, 1, v47);
            }

            v77 = *(v47 + 2);
            v76 = *(v47 + 3);
            v62 = v189;
            if (v77 >= v76 >> 1)
            {
              v47 = sub_10049CF8C((v76 > 1), v77 + 1, 1, v47);
            }

            v61 = 0.5;
            *(v47 + 2) = v77 + 1;
            v78 = &v47[32 * v77];
            v78[4] = v62 + v72 - v73 * 0.5;
            v78[5] = v60 + v74 - v75 * 0.5;
            v79 = v194;
            v78[6] = v192;
            v78[7] = v79;
          }

          else
          {
            v61 = 0.5;
            v62 = v189;
          }

          v63 = v188 + v62;
          v60 = v187 + v60;
          v25 = v198;
          v64 = v199;
          v234.origin.x = v199;
          v65 = v201;
          v234.origin.y = v201;
          v24 = MinX;
          v234.size.width = MinX;
          v234.size.height = v198;
          v66 = CGRectGetMidX(v234);
          v189 = v63;
          v67 = v63 + v66;
          v235.origin.x = v64;
          v235.origin.y = v65;
          v235.size.width = v24;
          v235.size.height = v25;
          v57 = v67 - CGRectGetWidth(v235) * v61;
          v236.origin.x = v64;
          v236.origin.y = v65;
          v236.size.width = v24;
          v236.size.height = v25;
          v68 = v60 + CGRectGetMidY(v236);
          v237.origin.x = v64;
          v237.origin.y = v65;
          v237.size.width = v24;
          v237.size.height = v25;
          v58 = v68 - CGRectGetHeight(v237) * v61;
          v238.origin.x = v57;
          v238.origin.y = v58;
          v238.size.width = v24;
          v238.size.height = v25;
          v302.origin.y = v202;
          v302.origin.x = v203;
          v302.size.width = v204;
          v302.size.height = v200;
          v69 = CGRectIntersectsRect(v238, v302);
          v50 = sinval;
        }

        while (v69);
      }

      v80 = v191 + cosval;
      v81 = v190 + v50;
      v244.size.height = v198;
      v82 = v199;
      v244.origin.x = v199;
      v83 = v201;
      v244.origin.y = v201;
      v244.size.width = v24;
      v84 = v80 + CGRectGetMidX(v244);
      v245.origin.x = v82;
      v245.origin.y = v83;
      v245.size.width = v24;
      v245.size.height = v198;
      v85 = v84 - CGRectGetWidth(v245) * 0.5;
      v246.origin.x = v82;
      v246.origin.y = v83;
      v246.size.width = v24;
      v246.size.height = v198;
      v86 = v81 + CGRectGetMidY(v246);
      v247.origin.x = v82;
      v247.origin.y = v83;
      v25 = v198;
      v247.size.width = v24;
      v247.size.height = v198;
      v87 = v86 - CGRectGetHeight(v247) * 0.5;
      v248.origin.x = v85;
      v248.origin.y = v87;
      v248.size.width = v24;
      v248.size.height = v25;
      v304.origin.y = v202;
      v304.origin.x = v203;
      v304.size.width = v204;
      v304.size.height = v200;
      if (CGRectIntersectsRect(v248, v304))
      {
        do
        {
          v254.origin.x = v85;
          v254.origin.y = v87;
          v254.size.width = v24;
          v254.size.height = v25;
          v306.origin.x = v195;
          v306.origin.y = v196;
          v306.size.width = v193;
          v306.size.height = v197;
          if (CGRectIntersectsRect(v254, v306))
          {
            v255.origin.x = 0.0;
            v255.origin.y = 0.0;
            v94 = v192;
            v255.size.width = v192;
            v95 = v194;
            v255.size.height = v194;
            v96 = CGRectGetMidX(v255);
            v256.origin.x = 0.0;
            v256.origin.y = 0.0;
            v256.size.width = v94;
            v256.size.height = v95;
            v97 = CGRectGetWidth(v256);
            v257.origin.x = 0.0;
            v257.origin.y = 0.0;
            v257.size.width = v94;
            v257.size.height = v95;
            v189 = CGRectGetMidY(v257);
            v258.origin.x = 0.0;
            v258.origin.y = 0.0;
            v258.size.width = v94;
            v258.size.height = v95;
            v98 = CGRectGetHeight(v258);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_10049CF8C(0, *(v47 + 2) + 1, 1, v47);
            }

            v100 = *(v47 + 2);
            v99 = *(v47 + 3);
            if (v100 >= v99 >> 1)
            {
              v47 = sub_10049CF8C((v99 > 1), v100 + 1, 1, v47);
            }

            v88 = 0.5;
            v101 = v81 + v189 - v98 * 0.5;
            *(v47 + 2) = v100 + 1;
            v102 = &v47[32 * v100];
            v102[4] = v80 + v96 - v97 * 0.5;
            v102[5] = v101;
            v103 = v194;
            v102[6] = v192;
            v102[7] = v103;
          }

          else
          {
            v88 = 0.5;
          }

          v80 = v191 + v80;
          v81 = v190 + v81;
          v89 = v199;
          v249.origin.x = v199;
          v90 = v201;
          v249.origin.y = v201;
          v249.size.width = v24;
          v91 = v198;
          v249.size.height = v198;
          v92 = v80 + CGRectGetMidX(v249);
          v250.origin.x = v89;
          v250.origin.y = v90;
          v250.size.width = MinX;
          v250.size.height = v91;
          v85 = v92 - CGRectGetWidth(v250) * v88;
          v251.origin.x = v89;
          v251.origin.y = v90;
          v251.size.width = MinX;
          v251.size.height = v91;
          v93 = v81 + CGRectGetMidY(v251);
          v252.origin.x = v89;
          v252.origin.y = v90;
          v25 = v91;
          v24 = MinX;
          v252.size.width = MinX;
          v252.size.height = v25;
          v87 = v93 - CGRectGetHeight(v252) * v88;
          v253.origin.x = v85;
          v253.origin.y = v87;
          v253.size.width = v24;
          v253.size.height = v25;
          v305.origin.y = v202;
          v305.origin.x = v203;
          v305.size.width = v204;
          v305.size.height = v200;
        }

        while (CGRectIntersectsRect(v253, v305));
      }

      v49 = v184 + cosval;
      v50 = v183 + sinval;
      v53 = v199;
      v224.origin.x = v199;
      v52 = v201;
      v224.origin.y = v201;
      v224.size.width = v24;
      v224.size.height = v25;
      v54 = v49 + CGRectGetMidX(v224);
      v225.origin.x = v53;
      v225.origin.y = v52;
      v225.size.width = v24;
      v225.size.height = v25;
      v48 = 0.5;
      v189 = v54 - CGRectGetWidth(v225) * 0.5;
      v226.origin.x = v53;
      v226.origin.y = v52;
      v226.size.width = v24;
      v226.size.height = v25;
      v55 = v50 + CGRectGetMidY(v226);
      v227.origin.x = v53;
      v227.origin.y = v52;
      v227.size.width = v24;
      v227.size.height = v25;
      v228.origin.y = v55 - CGRectGetHeight(v227) * 0.5;
      v228.origin.x = v189;
      v228.size.width = v24;
      v228.size.height = v25;
      v300.origin.y = v202;
      v300.origin.x = v203;
      v300.size.width = v204;
      v51 = v200;
      v300.size.height = v200;
    }

    while (CGRectIntersectsRect(v228, v300));
  }

  else
  {
    v47 = _swiftEmptyArrayStorage;
    v52 = v201;
    v53 = v199;
  }

  v104 = __sincos_stret(v182 + -1.57079633);
  v184 = v104.__cosval * v177 - v179;
  v105 = MidX + v184;
  v183 = v104.__sinval * v177 - v178;
  v106 = MidY + v183;
  v259.origin.x = v53;
  v259.origin.y = v52;
  v259.size.width = v24;
  v259.size.height = v25;
  v107 = CGRectGetMidX(v259);
  sinval = v105;
  v108 = v105 + v107;
  v260.origin.x = v53;
  v260.origin.y = v52;
  v260.size.width = v24;
  v260.size.height = v25;
  v109 = v53;
  v110 = v108 - CGRectGetWidth(v260) * 0.5;
  v261.origin.x = v109;
  v261.origin.y = v52;
  v261.size.width = v24;
  v261.size.height = v25;
  v111 = CGRectGetMidY(v261);
  cosval = v106;
  v112 = v106 + v111;
  v262.origin.x = v109;
  v262.origin.y = v52;
  v262.size.width = v24;
  v262.size.height = v25;
  v263.origin.y = v112 - CGRectGetHeight(v262) * 0.5;
  v307.size.height = v200;
  v263.origin.x = v110;
  v263.size.width = v24;
  v263.size.height = v25;
  v307.origin.y = v202;
  v307.origin.x = v203;
  v307.size.width = v204;
  if (CGRectIntersectsRect(v263, v307))
  {
    v113 = sinval;
    v114 = cosval;
    v115 = v199;
    do
    {
      v269.origin.x = v115;
      v269.origin.y = v52;
      v269.size.width = v24;
      v269.size.height = v25;
      v119 = v113 + CGRectGetMidX(v269);
      v270.origin.x = v115;
      v270.origin.y = v52;
      v270.size.width = v24;
      v270.size.height = v25;
      v120 = v119 - CGRectGetWidth(v270) * 0.5;
      v271.origin.x = v115;
      v271.origin.y = v52;
      v271.size.width = v24;
      v271.size.height = v25;
      v121 = v114 + CGRectGetMidY(v271);
      v272.origin.x = v115;
      v272.origin.y = v52;
      v272.size.width = v24;
      v272.size.height = v25;
      v122 = v121 - CGRectGetHeight(v272) * 0.5;
      v273.origin.x = v120;
      v273.origin.y = v122;
      v273.size.width = v24;
      v273.size.height = v25;
      v309.origin.y = v202;
      v309.origin.x = v203;
      v309.size.width = v204;
      v309.size.height = v200;
      v123 = CGRectIntersectsRect(v273, v309);
      sinval = v113;
      cosval = v114;
      if (v123)
      {
        v189 = v113;
        do
        {
          v279.origin.x = v120;
          v279.origin.y = v122;
          v279.size.width = v24;
          v279.size.height = v25;
          v311.origin.x = v195;
          v311.origin.y = v196;
          v311.size.width = v193;
          v311.size.height = v197;
          if (CGRectIntersectsRect(v279, v311))
          {
            v280.origin.x = 0.0;
            v280.origin.y = 0.0;
            v132 = v192;
            v280.size.width = v192;
            v133 = v194;
            v280.size.height = v194;
            v134 = CGRectGetMidX(v280);
            v281.origin.x = 0.0;
            v281.origin.y = 0.0;
            v281.size.width = v132;
            v281.size.height = v133;
            v135 = CGRectGetWidth(v281);
            v282.origin.x = 0.0;
            v282.origin.y = 0.0;
            v282.size.width = v132;
            v282.size.height = v133;
            v136 = CGRectGetMidY(v282);
            v283.origin.x = 0.0;
            v283.origin.y = 0.0;
            v283.size.width = v132;
            v283.size.height = v133;
            v137 = CGRectGetHeight(v283);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_10049CF8C(0, *(v47 + 2) + 1, 1, v47);
            }

            v139 = *(v47 + 2);
            v138 = *(v47 + 3);
            v140 = 0.5;
            v125 = v189;
            if (v139 >= v138 >> 1)
            {
              v145 = sub_10049CF8C((v138 > 1), v139 + 1, 1, v47);
              v140 = 0.5;
              v47 = v145;
            }

            v141 = v125 + v134 - v135 * v140;
            v142 = v114 + v136;
            v124 = 0.5;
            *(v47 + 2) = v139 + 1;
            v143 = &v47[32 * v139];
            v143[4] = v141;
            v143[5] = v142 - v137 * 0.5;
            v144 = v194;
            v143[6] = v192;
            v143[7] = v144;
          }

          else
          {
            v124 = 0.5;
            v125 = v189;
          }

          v126 = v188 + v125;
          v114 = v187 + v114;
          v25 = v198;
          v127 = v199;
          v274.origin.x = v199;
          v128 = v201;
          v274.origin.y = v201;
          v24 = MinX;
          v274.size.width = MinX;
          v274.size.height = v198;
          v129 = CGRectGetMidX(v274);
          v189 = v126;
          v130 = v126 + v129;
          v275.origin.x = v127;
          v275.origin.y = v128;
          v275.size.width = v24;
          v275.size.height = v25;
          v120 = v130 - CGRectGetWidth(v275) * v124;
          v276.origin.x = v127;
          v276.origin.y = v128;
          v276.size.width = v24;
          v276.size.height = v25;
          v131 = v114 + CGRectGetMidY(v276);
          v277.origin.x = v127;
          v277.origin.y = v128;
          v277.size.width = v24;
          v277.size.height = v25;
          v122 = v131 - CGRectGetHeight(v277) * v124;
          v278.origin.x = v120;
          v278.origin.y = v122;
          v278.size.width = v24;
          v278.size.height = v25;
          v310.origin.y = v202;
          v310.origin.x = v203;
          v310.size.width = v204;
          v310.size.height = v200;
        }

        while (CGRectIntersectsRect(v278, v310));
      }

      v146 = v191 + sinval;
      v147 = v190 + cosval;
      v148 = v199;
      v284.origin.x = v199;
      v284.origin.y = v201;
      v284.size.width = v24;
      v284.size.height = v25;
      v149 = CGRectGetMidX(v284);
      v189 = v146;
      v150 = v146 + v149;
      v285.origin.x = v148;
      v285.origin.y = v201;
      v285.size.width = v24;
      v285.size.height = v25;
      v151 = v150 - CGRectGetWidth(v285) * 0.5;
      v286.origin.x = v148;
      v286.origin.y = v201;
      v286.size.width = v24;
      v286.size.height = v25;
      v152 = v147 + CGRectGetMidY(v286);
      v287.origin.x = v148;
      v52 = v201;
      v287.origin.y = v201;
      v287.size.width = v24;
      v287.size.height = v25;
      v153 = v152 - CGRectGetHeight(v287) * 0.5;
      v288.origin.x = v151;
      v288.origin.y = v153;
      v288.size.width = v24;
      v288.size.height = v25;
      v312.origin.y = v202;
      v312.origin.x = v203;
      v312.size.width = v204;
      v312.size.height = v200;
      if (CGRectIntersectsRect(v288, v312))
      {
        do
        {
          v294.origin.x = v151;
          v294.origin.y = v153;
          v294.size.width = v24;
          v294.size.height = v25;
          v314.origin.x = v195;
          v314.origin.y = v196;
          v314.size.width = v193;
          v314.size.height = v197;
          if (CGRectIntersectsRect(v294, v314))
          {
            v295.origin.x = 0.0;
            v295.origin.y = 0.0;
            v161 = v192;
            v295.size.width = v192;
            v162 = v194;
            v295.size.height = v194;
            v163 = CGRectGetMidX(v295);
            v296.origin.x = 0.0;
            v296.origin.y = 0.0;
            v296.size.width = v161;
            v296.size.height = v162;
            v164 = CGRectGetWidth(v296);
            v297.origin.x = 0.0;
            v297.origin.y = 0.0;
            v297.size.width = v161;
            v297.size.height = v162;
            v165 = CGRectGetMidY(v297);
            v298.origin.x = 0.0;
            v298.origin.y = 0.0;
            v298.size.width = v161;
            v298.size.height = v162;
            v166 = CGRectGetHeight(v298);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_10049CF8C(0, *(v47 + 2) + 1, 1, v47);
            }

            v168 = *(v47 + 2);
            v167 = *(v47 + 3);
            v169 = 0.5;
            v155 = v189;
            if (v168 >= v167 >> 1)
            {
              v174 = sub_10049CF8C((v167 > 1), v168 + 1, 1, v47);
              v169 = 0.5;
              v47 = v174;
            }

            v170 = v155 + v163 - v164 * v169;
            v171 = v147 + v165;
            v154 = 0.5;
            *(v47 + 2) = v168 + 1;
            v172 = &v47[32 * v168];
            v172[4] = v170;
            v172[5] = v171 - v166 * 0.5;
            v173 = v194;
            v172[6] = v192;
            v172[7] = v173;
          }

          else
          {
            v154 = 0.5;
            v155 = v189;
          }

          v156 = v191 + v155;
          v147 = v190 + v147;
          v25 = v198;
          v157 = v199;
          v289.origin.x = v199;
          v52 = v201;
          v289.origin.y = v201;
          v24 = MinX;
          v289.size.width = MinX;
          v289.size.height = v198;
          v158 = CGRectGetMidX(v289);
          v189 = v156;
          v159 = v156 + v158;
          v290.origin.x = v157;
          v290.origin.y = v52;
          v290.size.width = v24;
          v290.size.height = v25;
          v151 = v159 - CGRectGetWidth(v290) * v154;
          v291.origin.x = v157;
          v291.origin.y = v52;
          v291.size.width = v24;
          v291.size.height = v25;
          v160 = v147 + CGRectGetMidY(v291);
          v292.origin.x = v157;
          v292.origin.y = v52;
          v292.size.width = v24;
          v292.size.height = v25;
          v153 = v160 - CGRectGetHeight(v292) * v154;
          v293.origin.x = v151;
          v293.origin.y = v153;
          v293.size.width = v24;
          v293.size.height = v25;
          v313.origin.y = v202;
          v313.origin.x = v203;
          v313.size.width = v204;
          v313.size.height = v200;
        }

        while (CGRectIntersectsRect(v293, v313));
      }

      v113 = v184 + sinval;
      v114 = v183 + cosval;
      v115 = v199;
      v264.origin.x = v199;
      v264.origin.y = v52;
      v264.size.width = v24;
      v264.size.height = v25;
      v116 = v113 + CGRectGetMidX(v264);
      v265.origin.x = v115;
      v265.origin.y = v52;
      v265.size.width = v24;
      v265.size.height = v25;
      v117 = v116 - CGRectGetWidth(v265) * 0.5;
      v266.origin.x = v115;
      v266.origin.y = v52;
      v266.size.width = v24;
      v266.size.height = v25;
      v118 = v114 + CGRectGetMidY(v266);
      v267.origin.x = v115;
      v267.origin.y = v52;
      v267.size.width = v24;
      v267.size.height = v25;
      v268.origin.y = v118 - CGRectGetHeight(v267) * 0.5;
      v268.origin.x = v117;
      v268.size.width = v24;
      v268.size.height = v25;
      v308.origin.y = v202;
      v308.origin.x = v203;
      v308.size.width = v204;
      v308.size.height = v200;
    }

    while (CGRectIntersectsRect(v268, v308));
  }

  return v47;
}

void sub_1001CCAC8()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_iconViews) = _swiftEmptyArrayStorage;
  v1 = OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_layoutMetrics;
  if (qword_10093F9C0 != -1)
  {
    swift_once();
  }

  v2 = v0 + v1;
  v3 = qword_10099D7C0;
  v4 = xmmword_10099D7B0;
  *(v2 + 40) = &type metadata for CGFloat;
  *(v2 + 48) = &protocol witness table for CGFloat;
  *(v2 + 16) = v3;
  v5 = byte_10099D7F8;
  v6 = *algn_10099D7C8;
  v7 = *&qword_10099D7E8;
  *v2 = v4;
  *(v2 + 56) = v6;
  *(v2 + 72) = v7;
  *(v2 + 88) = v5;
  sub_1001CCBC8(&xmmword_10099D7B0, v0 + OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_config);
  sub_10077156C();
  __break(1u);
}

__n128 sub_1001CCC00(uint64_t a1)
{
  result = v1[2];
  *(a1 + 56) = result;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_1001CCCA4@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = sub_10077164C();
  v18 = *(v1 - 8);
  v19 = v1;
  __chkstk_darwin(v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_10094CD50);
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  v7 = sub_100763F9C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076B90C();
  sub_1001CD160(&qword_100956710, &type metadata accessor for Action);
  sub_10076332C();
  if (v21[0])
  {
    sub_1007619CC();
    sub_1001CD160(&unk_10094CD60, &type metadata accessor for SearchAdAction);
    sub_10076332C();
    v11 = v21[0];
    if (v21[0])
    {
    }

    if (sub_10076B8FC() && (, !v11))
    {
      (*(v8 + 104))(v10, enum case for ComponentSeparator.Position.bottom(_:), v7);
      if (qword_10093FCF0 != -1)
      {
        swift_once();
      }

      v14 = sub_10076063C();
      sub_10000A61C(v14, qword_10099E180);
      sub_1007605FC();
      swift_getKeyPath();
      sub_10076338C();

      v21[5] = v21[0];
      sub_10075FDCC();
      swift_unknownObjectRelease();
      (*(v17 + 8))(v6, v4);
      sub_10076060C();
      sub_10000CF78(v21, v21[3]);
      swift_getKeyPath();
      sub_10076338C();

      sub_1000FF02C();
      sub_10076D40C();
      swift_unknownObjectRelease();
      (*(v18 + 8))(v3, v19);
      sub_10000CD74(v21);
      v12 = v20;
    }

    else
    {
      (*(v8 + 104))(v10, enum case for ComponentSeparator.Position.bottom(_:), v7);
      v12 = v20;
    }

    sub_100763FAC();

    v13 = 0;
  }

  else
  {
    v13 = 1;
    v12 = v20;
  }

  v15 = sub_100763FDC();
  return (*(*(v15 - 8) + 56))(v12, v13, 1, v15);
}

uint64_t sub_1001CD160(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SearchAdTransparencyButton()
{
  result = qword_10094CD80;
  if (!qword_10094CD80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1001CD25C()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.525490196 green:0.752941176 blue:0.992156863 alpha:1.0];
  qword_10099D800 = result;
  return result;
}

char *sub_1001CD2B0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10076F9AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v6 - 8);
  v8 = v27 - v7;
  v9 = qword_10094CD70;
  *&v0[v9] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = &v0[qword_10094CD78];
  *v10 = 0;
  *(v10 + 1) = 0;
  v29.receiver = v0;
  v29.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v12 = qword_100940EA8;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = sub_10076D3DC();
  v15 = sub_10000A61C(v14, qword_1009A19F0);
  v16 = *(v14 - 8);
  (*(v16 + 16))(v8, v15, v14);
  (*(v16 + 56))(v8, 0, 1, v14);
  sub_10076311C();
  v17 = qword_10094CD70;
  [*&v13[qword_10094CD70] setClipsToBounds:1];
  v18 = qword_10093F9C8;
  v19 = *&v13[v17];
  if (v18 != -1)
  {
    swift_once();
  }

  [v19 setBackgroundColor:qword_10099D800];

  [*&v13[v17] _setContinuousCornerRadius:4.0];
  [v13 addSubview:*&v13[v17]];
  v20 = objc_opt_self();
  v21 = v13;
  v22 = [v20 whiteColor];
  [v21 setTitleColor:v22 forState:0];

  v23 = [v20 whiteColor];
  sub_10076313C();
  sub_100770B7C();
  v24 = [v23 colorWithAlphaComponent:?];

  [v21 setTitleColor:v24 forState:4];
  v25 = v21;
  sub_1007641DC();

  memset(v28, 0, sizeof(v28));
  memset(v27, 0, sizeof(v27));
  sub_10076F95C();
  sub_1000258C0(v27);
  sub_1000258C0(v28);
  sub_100770B9C();
  (*(v3 + 8))(v5, v2);
  [v25 addTarget:v25 action:"didTapButton" forControlEvents:64];

  [v25 _setWantsAccessibilityUnderline:0];
  return v25;
}

char *sub_1001CD728(char *result)
{
  v1 = *&result[qword_10094CD78];
  if (v1)
  {
    v2 = result;
    v3 = sub_10001CE50(v1);
    v1(v3);

    return sub_1000167E0(v1);
  }

  return result;
}

double sub_1001CD7AC(void *a1)
{
  v1 = a1;
  v2 = [v1 traitCollection];
  v3 = [v1 titleForState:0];
  if (v3)
  {
    v4 = v3;
    v5 = sub_10076FF9C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = sub_1001CDAF4(v2, v5, v7);

  return v8;
}

id sub_1001CD870()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  v1 = [v0 traitCollection];
  v2 = [v0 titleForState:0];
  if (v2)
  {
    v3 = v2;
    v4 = sub_10076FF9C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  sub_1001CDAF4(v1, v4, v6);

  v7 = *&v0[qword_10094CD70];
  [v7 frame];
  [v7 setFrame:?];
  [v0 bounds];
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  return [v7 setCenter:{MidX, CGRectGetMidY(v16)}];
}

void sub_1001CD9E0(void *a1)
{
  v1 = a1;
  sub_1001CD870();
}

uint64_t sub_1001CDA58()
{
  v1 = *(v0 + qword_10094CD78);

  return sub_1000167E0(v1);
}

uint64_t sub_1001CDA9C(uint64_t a1)
{
  v2 = *(a1 + qword_10094CD78);

  return sub_1000167E0(v2);
}

double sub_1001CDAF4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10076997C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    v21._object = 0x80000001007D8160;
    v21._countAndFlagsBits = 0xD00000000000001FLL;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    sub_1007622EC(v21, v22);
  }

  sub_10005312C();
  v9 = qword_100940EA8;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = sub_10076D3DC();
  sub_10000A61C(v10, qword_1009A19F0);
  sub_100770B3C();
  v11 = sub_10076C04C();
  v20[3] = v11;
  v20[4] = sub_1001CDE08(&qword_100943230, &type metadata accessor for Feature);
  v12 = sub_10000DB7C(v20);
  (*(*(v11 - 8) + 104))(v12, enum case for Feature.measurement_with_labelplaceholder(_:), v11);
  sub_10076C90C();
  sub_10000CD74(v20);
  sub_10076996C();
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1007841E0;
  *(v13 + 32) = a1;
  v14 = a1;
  v15 = sub_10076DEEC();
  sub_1001CDE08(&unk_1009511B0, &type metadata accessor for LabelPlaceholderCompatibility);
  sub_10076D2AC();
  v17 = v16;

  (*(v6 + 8))(v8, v5);
  return v17 + 12.0;
}

uint64_t sub_1001CDE08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001CDE50()
{
  v0 = sub_10076B5BC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100946720);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  v10 = 0;
  v11 = 0xE000000000000000;
  v12._countAndFlagsBits = sub_1007708FC();
  sub_1007700CC(v12);

  v13._countAndFlagsBits = 95;
  v13._object = 0xE100000000000000;
  sub_1007700CC(v13);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076F4AC();
  (*(v5 + 8))(v7, v4);
  sub_10076B5CC();

  sub_10077151C();
  (*(v1 + 8))(v3, v0);
  return v10;
}

uint64_t sub_1001CE058(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v8 = a2;
  ObjectType = swift_getObjectType();
  v3 = *((swift_isaMask & *v2) + 0x88);
  v4 = sub_10000A5D4(&qword_10094CE28);
  v5 = sub_100071820(&qword_10094CE30, &qword_10094CE28);
  return v3(v8, sub_1001D02C4, v7, v4, v5);
}

uint64_t sub_1001CE14C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a3;
  v45 = a2;
  v49 = a4;
  v44 = sub_10076469C();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10076EA6C();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10000A5D4(&unk_100946710);
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v35 - v8;
  v42 = sub_10076C38C();
  v51 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v50 = &v35 - v12;
  v13 = sub_10000A5D4(&qword_100942C40);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  v17 = sub_10000A5D4(&unk_100946720);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v35 - v19;
  swift_getKeyPath();
  sub_10076338C();

  sub_10076F4AC();
  (*(v18 + 8))(v20, v17);
  v37 = v55;
  swift_getKeyPath();
  sub_10076338C();

  v36 = *(v14 + 56);
  swift_getKeyPath();
  sub_10076338C();

  v54 = 0;
  memset(v53, 0, sizeof(v53));
  sub_1007633BC();
  v21 = v38;
  sub_10076F4AC();
  (*(v39 + 8))(v9, v21);
  v39 = sub_1007633CC();
  v35 = a1;
  sub_1007632FC();
  v22 = sub_10076461C();
  v23 = [v22 preferredContentSizeCategory];

  v24 = v41;
  sub_10076EA5C();
  v25 = *(v43 + 8);
  v26 = v44;
  v25(v6, v44);
  swift_getKeyPath();
  v27 = v40;
  sub_10076338C();

  sub_10076C2FC();
  v28 = *(v51 + 8);
  v51 += 8;
  v29 = v27;
  v30 = v42;
  v28(v29, v42);
  sub_1007632FC();
  sub_1001CE7D0();
  v25(v6, v26);
  v31 = v36;
  v32 = v24;
  v33 = v50;
  sub_10076258C();

  (*(v46 + 8))(v32, v48);
  sub_10000CD74(v52);
  sub_10000CFBC(v53, &qword_10094CE38);
  v28(v33, v30);
  sub_10000CFBC(&v16[v31], &qword_1009499A0);
  sub_10000CFBC(v16, &qword_1009499A0);
  sub_10000A5D4(&qword_10094CE28);
  return sub_1007633AC();
}

double sub_1001CE7D0()
{
  v0 = sub_10076B5BC();
  v26 = *(v0 - 8);
  v27 = v0;
  __chkstk_darwin(v0);
  v25 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000A5D4(&unk_100946720);
  v23 = *(v2 - 8);
  v24 = v2;
  __chkstk_darwin(v2);
  v4 = &v23 - v3;
  v5 = sub_10076C38C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076658C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CFC34(v12);
  sub_10076460C();
  v13 = sub_10076657C();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  if (v15)
  {
    sub_10076468C();
    v16 = v24;
    sub_10076F4AC();
    (*(v23 + 8))(v4, v16);
    v17 = v25;
    sub_10076B5CC();

    v18 = COERCE_DOUBLE(sub_10076656C());
    v20 = v19;
    (*(v26 + 8))(v17, v27);
    (*(v10 + 8))(v12, v9);
    if (v20)
    {
      return 0.0;
    }

    else
    {
      return v18;
    }
  }

  else
  {
    v21 = *&v13;
    (*(v10 + 8))(v12, v9);
  }

  return v21;
}

uint64_t sub_1001CEB1C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v9[0] = a1;
  v9[1] = &type metadata for EmptyView;
  v9[2] = a2;
  v9[3] = &protocol witness table for EmptyView;
  v4 = sub_10076ECAC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_10076EC9C();
  sub_10076ECFC();
  a3[3] = v4;
  a3[4] = swift_getWitnessTable();
  sub_10000DB7C(a3);
  sub_10076EC8C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1001CEC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a4;
  v15 = a5;
  v16 = a2;
  v17 = a3;
  v18 = a1;
  v12 = *((swift_isaMask & *v5) + 0x80);
  swift_getOpaqueTypeMetadata2();
  sub_10076F64C();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23[2] = OpaqueTypeConformance2;
  v8 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000CE78(&qword_10094CE10);
  sub_10076EA7C();
  sub_10000CE78(&qword_10094CE18);
  v9 = sub_10076EA7C();
  v23[0] = OpaqueTypeMetadata2;
  v23[1] = v8;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = sub_100071820(&unk_100956770, &qword_10094CE10);
  WitnessTable = swift_getWitnessTable();
  v20 = sub_100071820(&qword_100956780, &qword_10094CE18);
  v10 = swift_getWitnessTable();
  v12(v23, sub_1001D0264, v13, v9, v10);
  return sub_1007707FC();
}

uint64_t sub_1001CEF04@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v62 = a3;
  v63 = a5;
  v57 = a2;
  v59 = a1;
  v61 = *(a4 - 8);
  __chkstk_darwin(a1);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v8;
  v69 = v9;
  v10 = v9;
  v51 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v56 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v13 = &v43 - v12;
  v14 = sub_10076F64C();
  v68 = a4;
  v69 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v68 = OpaqueTypeMetadata2;
  v69 = v14;
  v16 = v14;
  v45 = v14;
  v70 = OpaqueTypeConformance2;
  v17 = OpaqueTypeConformance2;
  v46 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeMetadata2();
  v52 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v43 - v19;
  v68 = OpaqueTypeMetadata2;
  v69 = v16;
  v70 = v17;
  v47 = swift_getOpaqueTypeConformance2();
  v68 = v18;
  v69 = v47;
  v50 = &opaque type descriptor for <<opaque return type of View.intentDispatcher(from:)>>;
  v48 = swift_getOpaqueTypeMetadata2();
  v54 = *(v48 - 8);
  __chkstk_darwin(v48);
  v22 = &v43 - v21;
  sub_10000CE78(&qword_10094CE10);
  v53 = sub_10076EA7C();
  v60 = *(v53 - 8);
  __chkstk_darwin(v53);
  v44 = &v43 - v23;
  sub_10000CE78(&qword_10094CE18);
  v24 = sub_10076EA7C();
  v58 = *(v24 - 8);
  __chkstk_darwin(v24);
  v49 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v26);
  v55 = &v43 - v28;
  v59(v27);
  sub_10076EE0C();
  (*(v61 + 8))(v7, a4);
  swift_checkMetadataState();
  sub_10076EDDC();
  (*(v56 + 8))(v13, OpaqueTypeMetadata2);
  v29 = v47;
  sub_10076EDEC();
  (*(v52 + 8))(v20, v18);
  sub_100760C4C();
  sub_10076FC1C();
  v68 = v18;
  v69 = v29;
  v30 = swift_getOpaqueTypeConformance2();
  sub_1001D0274(&qword_10094CE20, &type metadata accessor for ArtworkLoader);
  v31 = v44;
  v32 = v48;
  sub_10076EEBC();

  (*(v54 + 8))(v22, v32);
  swift_getKeyPath();
  v68 = *(v62 + OBJC_IVAR____TtC20ProductPageExtension22SwiftUIViewHostingCell_flowPreview);
  v33 = sub_100071820(&unk_100956770, &qword_10094CE10);
  v66 = v30;
  v67 = v33;

  v34 = v53;
  WitnessTable = swift_getWitnessTable();
  v36 = v49;
  sub_10076EE4C();

  (*(v60 + 8))(v31, v34);
  v37 = sub_100071820(&qword_100956780, &qword_10094CE18);
  v64 = WitnessTable;
  v65 = v37;
  swift_getWitnessTable();
  v38 = v58;
  v39 = *(v58 + 16);
  v40 = v55;
  v39(v55, v36, v24);
  v41 = *(v38 + 8);
  v41(v36, v24);
  v39(v63, v40, v24);
  return (v41)(v40, v24);
}

id sub_1001CF860()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwiftUIViewHostingCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SwiftUIViewHostingCell()
{
  result = qword_10094CDF8;
  if (!qword_10094CDF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001CF948()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1001CFA50(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v5 = sub_10076678C();
  v6 = __chkstk_darwin(v5);
  (*(v8 + 104))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *a4, v6);
  return sub_10076679C();
}

uint64_t sub_1001CFB2C(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = sub_10076678C();
  v5 = __chkstk_darwin(v4);
  (*(v7 + 104))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *a3, v5);
  return sub_10076679C();
}

id sub_1001CFBFC()
{
  v1 = [v0 contentView];

  return v1;
}

uint64_t sub_1001CFC34@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = sub_10076EA6C();
  v36 = *(v1 - 8);
  v37 = v1;
  __chkstk_darwin(v1);
  v32 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000A5D4(&qword_1009499A0);
  __chkstk_darwin(v3 - 8);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v8 = sub_10076B5BC();
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin(v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100946720);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  v18 = sub_10076C38C();
  v30 = *(v18 - 8);
  v31 = v18;
  __chkstk_darwin(v18);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  sub_10076468C();
  sub_10076F4AC();
  v21 = *(v12 + 8);
  v21(v17, v11);
  sub_10076468C();
  sub_10076F4AC();
  v21(v14, v11);
  sub_10076B5CC();

  v22 = v29;
  sub_10076463C();
  sub_10076C24C();
  sub_10076C26C();
  v23 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  [v23 scaledValueForValue:1.0];

  v24 = sub_10076461C();
  v25 = [v24 preferredContentSizeCategory];

  v26 = v32;
  sub_10076EA5C();
  sub_10076655C();

  (*(v36 + 8))(v26, v37);
  sub_10000CFBC(v22, &qword_1009499A0);
  sub_10000CFBC(v7, &qword_1009499A0);
  (*(v33 + 8))(v10, v34);
  return (*(v30 + 8))(v20, v31);
}

uint64_t sub_1001D00E0()
{
  v0 = sub_10076658C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  sub_1001CFC34(&v10 - v5);
  (*(v1 + 32))(v3, v6, v0);
  v7 = (*(v1 + 88))(v3, v0);
  if (v7 == enum case for ComponentHeightFactory.ComponentHeight.constant(_:))
  {
    return 0;
  }

  if (v7 == enum case for ComponentHeightFactory.ComponentHeight.aspectRatio(_:) || v7 != enum case for ComponentHeightFactory.ComponentHeight.auto(_:))
  {
    (*(v1 + 8))(v3, v0);
    return 0;
  }

  return 1;
}

uint64_t sub_1001D0274(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001D02F0(uint64_t a1, uint64_t a2)
{
  v32[1] = a2;
  v3 = sub_100766EDC();
  v33 = *(v3 - 8);
  __chkstk_darwin(v3);
  v32[0] = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v34 = v32 - v6;
  __chkstk_darwin(v7);
  v35 = v32 - v8;
  v9 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v9);
  v36 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_10094A890);
  __chkstk_darwin(v11 - 8);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v32 - v15;
  v17 = type metadata accessor for FlowDestination();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v32 - v22;

  sub_10076B87C();
  sub_10012062C(a1, &v39, v16);
  v24 = *(v18 + 48);
  if (v24(v16, 1, v17) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v24(v16, 1, v17) != 1)
    {
      sub_10000CFBC(v16, &unk_10094A890);
    }
  }

  else
  {
    sub_10005DAD8(v16, v23);
  }

  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v25 = 0;
  }

  else
  {
    sub_10075F5BC();
    sub_10075F5AC();

    sub_10076B87C();
    sub_10012062C(a1, &v39, v13);
    if (v24(v13, 1, v17) == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v24(v13, 1, v17) != 1)
      {
        sub_10000CFBC(v13, &unk_10094A890);
      }
    }

    else
    {
      sub_10005DAD8(v13, v20);
    }

    sub_1001489F0(v35);
    sub_1001D1EF8(v20, type metadata accessor for FlowDestination);
    v26 = v33;
    v27 = *(v33 + 104);
    v27(v34, enum case for FlowPresentationContext.push(_:), v3);
    sub_1001D1FE0(&qword_10094A530);
    sub_10077018C();
    sub_10077018C();
    if (v39 == v37 && v40 == v38)
    {
      v28 = 1;
    }

    else
    {
      v28 = sub_10077167C();
    }

    v29 = *(v26 + 8);
    v29(v34, v3);

    if (v28)
    {
      v29(v35, v3);
      sub_1001D1EF8(v36, type metadata accessor for FlowPresentationHints);
      v25 = 1;
    }

    else
    {
      v30 = v32[0];
      v27(v32[0], enum case for FlowPresentationContext.replace(_:), v3);
      sub_10077018C();
      sub_10077018C();
      if (v39 == v37 && v40 == v38)
      {
        v25 = 1;
      }

      else
      {
        v25 = sub_10077167C();
      }

      v29(v30, v3);
      v29(v35, v3);
      sub_1001D1EF8(v36, type metadata accessor for FlowPresentationHints);
    }
  }

  sub_1001D1EF8(v23, type metadata accessor for FlowDestination);
  return v25 & 1;
}

uint64_t sub_1001D08F4(uint64_t a1, void *a2)
{
  v4 = sub_100765F6C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100766EDC();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 viewControllers];
  sub_100016F40(0, &qword_1009453B0);
  v14 = sub_1007701BC();

  if (v14 >> 62)
  {
    v15 = sub_10077158C();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v15)
  {
    (*(v9 + 104))(v12, enum case for FlowPresentationContext.replace(_:), v8);
    sub_1001D1FE0(&qword_10094CE48);
    v16 = sub_10076FF1C();
    (*(v9 + 8))(v12, v8);
    v17 = v16 ^ 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = type metadata accessor for FlowPresentationHints();
  (*(v5 + 16))(v7, a1 + *(v18 + 20), v4);
  v19 = (*(v5 + 88))(v7, v4);
  if (v19 != enum case for FlowAnimationBehavior.infer(_:))
  {
    if (v19 == enum case for FlowAnimationBehavior.never(_:))
    {
      v17 = 0;
    }

    else if (v19 == enum case for FlowAnimationBehavior.always(_:))
    {
      v17 = 1;
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }
  }

  return v17 & 1;
}

uint64_t sub_1001D0BDC(uint64_t a1, void *a2, void *a3)
{
  v108 = a3;
  v103 = sub_10076F50C();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v6 - 8);
  v107 = &v100 - v7;
  v111 = sub_100766EDC();
  v112 = *(v111 - 8);
  __chkstk_darwin(v111);
  v100 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v109 = &v100 - v10;
  __chkstk_darwin(v11);
  v113 = &v100 - v12;
  v13 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v13);
  v114 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_10094A890);
  __chkstk_darwin(v15 - 8);
  v105 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v100 - v18;
  v20 = type metadata accessor for FlowDestination();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (&v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v26 = &v100 - v25;

  sub_10076B87C();
  sub_10012062C(a1, &v116, v19);
  v27 = *(v21 + 48);
  v28 = v27(v19, 1, v20);
  v106 = v23;
  v104 = v27;
  if (v28 == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v27(v19, 1, v20) != 1)
    {
      sub_10000CFBC(v19, &unk_10094A890);
    }
  }

  else
  {
    sub_10005DAD8(v19, v26);
  }

  sub_10075F5BC();
  sub_10075F5AC();
  v29 = [a2 traitCollection];
  v30 = v113;
  v110 = v26;
  sub_1001489F0(v113);

  v31 = sub_100376418(a2);
  if (!v31)
  {
    sub_10000A5D4(&qword_100942C70);
    sub_1001D1EA4();
    swift_allocError();
    v41 = sub_10076FC7C();
    (*(v112 + 8))(v30, v111);
LABEL_69:
    v98 = v110;
    sub_1001D1EF8(v114, type metadata accessor for FlowPresentationHints);
    sub_1001D1EF8(v98, type metadata accessor for FlowDestination);
    return v41;
  }

  v32 = v31;
  v33 = [v32 traitCollection];
  v122 = v32;
  sub_100016F40(0, &qword_100944C68);
  v34 = v32;
  sub_10000A5D4(&qword_100944C70);
  v35 = swift_dynamicCast();
  v36 = v106;
  if ((v35 & 1) == 0)
  {
    *&v118 = 0;
    v116 = 0u;
    v117 = 0u;
  }

  sub_10076B87C();
  v37 = v105;
  sub_10012062C(a1, v115, v105);
  v38 = v104;
  if (v104(v37, 1, v20) == 1)
  {
    swift_storeEnumTagMultiPayload();
    v39 = v38(v37, 1, v20);
    v40 = v112;
    if (v39 != 1)
    {
      sub_10000CFBC(v37, &unk_10094A890);
    }
  }

  else
  {
    sub_10005DAD8(v37, v36);
    v40 = v112;
  }

  v42 = sub_10075F57C();
  v44 = v43;
  v45 = v107;
  sub_10075F59C();
  v46 = sub_10048B0C0(v36, v33, v42, v44, v45, &v116, v108, 1);

  sub_10000CFBC(v45, &unk_100958150);
  sub_1001D1EF8(v36, type metadata accessor for FlowDestination);
  sub_10000CFBC(&v116, &unk_10094A8A0);
  if (!v46)
  {

    sub_10000A5D4(&qword_100942C70);
    (*(v102 + 104))(v101, enum case for ActionOutcome.unsupported(_:), v103);
    v41 = sub_10076FC8C();

    (*(v40 + 8))(v113, v111);
    goto LABEL_69;
  }

  v47 = [v34 presentingViewController];

  v48 = v111;
  v108 = v34;
  if (!v47)
  {
    goto LABEL_33;
  }

  v49 = [v34 viewControllers];
  sub_100016F40(0, &qword_1009453B0);
  v50 = sub_1007701BC();

  if (!(v50 >> 62))
  {
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

LABEL_32:

LABEL_33:
    v63 = sub_1001D08F4(v114, v34);
    v64 = *(v40 + 104);
    v64(v109, enum case for FlowPresentationContext.push(_:), v48);
    sub_1001D1FE0(&qword_10094A530);
    sub_10077018C();
    sub_10077018C();
    LODWORD(v112) = v63;
    if (v116 == v115[0])
    {
      v65 = 1;
    }

    else
    {
      v65 = sub_10077167C();
    }

    v33 = *(v40 + 8);
    (v33)(v109, v48);

    if (v65)
    {
      [v46 setModalPresentationCapturesStatusBarAppearance:1];
      v116 = xmmword_10094FFD8;
      v117 = xmmword_10094FFE8;
      v118 = xmmword_10094FFF8;
      v119 = xmmword_100950008;
      v120 = xmmword_100950018;
      v66 = qword_100950028;
      v121 = qword_100950028;
      v67 = BYTE8(xmmword_10094FFF8);
      v68 = v113;
      v69 = v108;
      if (BYTE8(xmmword_10094FFF8) != 255)
      {
        v70 = v116;
        v72 = v117;
        v71 = *&v118;
        v73 = v119;
        v74 = v120;
        v75 = v116;
        v76 = [v46 popoverPresentationController];
        if (v76)
        {
          v77 = v76;
          if (v67)
          {
            sub_10014F864(&v116, v115);
            v78 = v77;
            [v78 setSourceView:v70];
            v79 = v78;
            v69 = v108;
            [v79 setSourceRect:{*(&v70 + 1), v72, v71}];
            sub_10000CFBC(&v116, &unk_1009505F0);
          }

          else
          {
            [v76 setBarButtonItem:v70];
          }

          [v77 setPopoverLayoutMargins:{v73, v74}];
          [v77 setPermittedArrowDirections:v66];
        }

        else
        {
          if (qword_1009412E8 != -1)
          {
            swift_once();
          }

          v97 = sub_10076FD4C();
          sub_10000A61C(v97, qword_1009A2600);
          sub_10000A5D4(&unk_100942A60);
          sub_10076F33C();
          *(swift_allocObject() + 16) = xmmword_100783DD0;
          sub_10076F27C();
          sub_10076FBFC();
        }

        sub_10000CFBC(&v116, &unk_1009505F0);
      }

      [v69 pushViewController:v46 animated:v112 & 1];
      goto LABEL_68;
    }

    v80 = v100;
    v64(v100, enum case for FlowPresentationContext.replace(_:), v48);
    v68 = v113;
    sub_10077018C();
    sub_10077018C();
    if (v116 == v115[0])
    {
      (v33)(v80, v48);

      v69 = v108;
    }

    else
    {
      v81 = sub_10077167C();
      (v33)(v80, v48);

      v69 = v108;
      if ((v81 & 1) == 0)
      {
LABEL_68:
        sub_10000A5D4(&qword_100942C70);
        (*(v102 + 104))(v101, enum case for ActionOutcome.performed(_:), v103);
        v41 = sub_10076FC8C();

        (v33)(v68, v48);
        goto LABEL_69;
      }
    }

    objc_opt_self();
    v82 = swift_dynamicCastObjCClass();
    if (!v82)
    {
      v90 = [v69 viewControllers];
      sub_100016F40(0, &qword_1009453B0);
      v49 = sub_1007701BC();

      v44 = (v49 >> 62);
      if (!(v49 >> 62))
      {
        if (!*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

LABEL_55:
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v44 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
        {
          v49 = sub_1004BE250(v49);
        }

        v92 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v92)
        {
          v93 = v92 - 1;
          v44 = *((v49 & 0xFFFFFFFFFFFFFF8) + 8 * v93 + 0x20);
          *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) = v93;
          *&v116 = v49;
          v94 = [v44 tabBarItem];
          [v46 setTabBarItem:v94];

          v95 = v46;
          sub_10077019C();
          if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_60:
            sub_10077025C();
            isa = sub_1007701AC().super.isa;

            v69 = v108;
            [v108 setViewControllers:isa animated:v112 & 1];

            goto LABEL_68;
          }

LABEL_78:
          sub_10077021C();
          goto LABEL_60;
        }

LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

LABEL_75:
      if (!sub_10077158C())
      {
        goto LABEL_76;
      }

      goto LABEL_55;
    }

    v50 = v82;
    v49 = v46;
    v83 = [v69 viewControllers];
    v44 = sub_100016F40(0, &qword_1009453B0);
    v34 = sub_1007701BC();

    v45 = v34 >> 62;
    if (!(v34 >> 62))
    {
      v84 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_47:
      v68 = v113;
      if (v84)
      {
        v85 = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v45 || (v85 & 1) == 0)
        {
          v34 = sub_1004BE250(v34);
        }

        v86 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v86)
        {
          v87 = v86 - 1;
          v88 = *((v34 & 0xFFFFFFFFFFFFFF8) + 8 * v87 + 0x20);
          *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) = v87;

          v89 = sub_1007701AC().super.isa;

          v69 = v108;
          [v108 setViewControllers:v89];

          [v69 presentViewController:v50 animated:0 completion:0];
          goto LABEL_68;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_75;
    }

LABEL_72:
    v84 = sub_10077158C();
    goto LABEL_47;
  }

  if (!sub_10077158C())
  {
    goto LABEL_32;
  }

LABEL_17:
  if ((v50 & 0xC000000000000001) != 0)
  {
    v51 = sub_10077149C();
  }

  else
  {
    if (!*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_72;
    }

    v51 = *(v50 + 32);
  }

  v52 = v51;

  if ((sub_1003BE8F8(v52) & 1) == 0)
  {
    goto LABEL_23;
  }

  v53 = swift_allocObject();
  v54 = v108;
  *(v53 + 16) = v108;
  v55 = v54;
  if (sub_1003BE8F8(v46))
  {

LABEL_23:

LABEL_30:
    v34 = v108;
    goto LABEL_33;
  }

  v56 = [v46 navigationItem];
  v57 = [v56 rightBarButtonItems];
  if (v57)
  {
    v58 = v57;
    sub_100016F40(0, &qword_100958FF0);
    v59 = sub_1007701BC();
  }

  else
  {
    v59 = _swiftEmptyArrayStorage;
  }

  *&v116 = v59;
  sub_100016F40(0, &qword_100958FF0);
  sub_100016F40(0, &qword_1009641D0);
  v60 = swift_allocObject();
  *(v60 + 16) = sub_1001D1F90;
  *(v60 + 24) = v53;

  v123.value.super.super.isa = sub_100770F1C();
  v123.is_nil = 0;
  v61.super.super.isa = sub_10077054C(UIBarButtonSystemItemClose, v123, v124).super.super.isa;
  if (!(v59 >> 62) || (result = sub_10077158C(), (result & 0x8000000000000000) == 0))
  {
    sub_10061BDB0(0, 0, v61.super.super.isa);
    v62 = sub_1007701AC().super.isa;

    [v56 setRightBarButtonItems:v62];

    v40 = v112;
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

unint64_t sub_1001D1EA4()
{
  result = qword_10094CE40;
  if (!qword_10094CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094CE40);
  }

  return result;
}

uint64_t sub_1001D1EF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001D1F58()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001D1FA8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001D1FE0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100766EDC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001D2038()
{
  result = qword_10094CE50;
  if (!qword_10094CE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094CE50);
  }

  return result;
}

uint64_t sub_1001D208C()
{
  v1 = sub_10075DDBC();
  v59 = v1;
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_10000A5D4(&unk_100942870);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007841E0;
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v62 = type metadata accessor for NavigationActionDebugSetting();
  v7 = swift_allocObject();
  v7[7] = 0xD000000000000012;
  v7[8] = 0x80000001007D8220;
  v7[10] = 0;
  v7[11] = 0;
  v7[9] = 0;
  v7[12] = sub_1001D3AF4;
  v7[13] = v6;
  v8 = v0;

  sub_10075DDAC();
  v9 = sub_10075DD8C();
  v11 = v10;
  v12 = *(v2 + 8);
  v12(v4, v1);
  v65 = v9;
  v66 = v11;
  sub_10077140C();

  *(v5 + 32) = v7;
  v67 = v5;
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  type metadata accessor for ActionDebugSetting();
  v14 = swift_allocObject();
  strcpy((v14 + 56), "Reset Welcome");
  *(v14 + 70) = -4864;
  *(v14 + 72) = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 104) = sub_1001D3AFC;
  *(v14 + 112) = v13;
  v15 = v8;

  sub_10075DDAC();
  v16 = sub_10075DD8C();
  v18 = v17;
  v19 = v59;
  (v12)(v4);
  v65 = v16;
  v66 = v18;
  sub_10077140C();

  sub_10077019C();
  if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  v21 = swift_allocObject();
  *(v21 + 56) = 0xD000000000000018;
  *(v21 + 64) = 0x80000001007D8240;
  *(v21 + 72) = 0u;
  *(v21 + 88) = 0u;
  *(v21 + 104) = sub_1001D3B04;
  *(v21 + 112) = v20;
  v22 = v15;

  sub_10075DDAC();
  v23 = sub_10075DD8C();
  v25 = v24;
  v12(v4, v19);
  v65 = v23;
  v66 = v25;
  sub_10077140C();

  sub_10077019C();
  v26 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v27 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18);
  v64 = v12;
  if (v26 >= v27 >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  v28 = swift_allocObject();
  *(v28 + 16) = v22;
  v29 = swift_allocObject();
  *(v29 + 56) = 0xD000000000000017;
  *(v29 + 64) = 0x80000001007D8260;
  *(v29 + 72) = 0u;
  *(v29 + 88) = 0u;
  *(v29 + 104) = sub_1001D3B0C;
  *(v29 + 112) = v28;
  v30 = v22;

  sub_10075DDAC();
  v31 = sub_10075DD8C();
  v33 = v32;
  v64(v4, v19);
  v65 = v31;
  v66 = v33;
  sub_10077140C();

  sub_10077019C();
  if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  v61 = v67;
  v34 = swift_allocObject();
  v60 = xmmword_100785D70;
  *(v34 + 16) = xmmword_100785D70;
  type metadata accessor for BoolUserDefaultsDebugSetting();
  v35 = swift_allocObject();
  *(v35 + 56) = 0xD00000000000001ELL;
  *(v35 + 64) = 0x80000001007D8280;
  *(v35 + 72) = 0;
  *(v35 + 80) = 0xD00000000000001FLL;
  *(v35 + 88) = 0x80000001007D82A0;
  *(v35 + 96) = 0;
  sub_10075DDAC();
  v36 = sub_10075DD8C();
  v38 = v37;
  v39 = v19;
  v40 = v19;
  v41 = v64;
  v64(v4, v39);
  v65 = v36;
  v66 = v38;
  sub_10077140C();
  *(v34 + 32) = v35;
  v42 = swift_allocObject();
  *(v42 + 16) = v30;
  v43 = swift_allocObject();
  strcpy((v43 + 56), "Edit Triggers");
  *(v43 + 70) = -4864;
  *(v43 + 80) = 0;
  *(v43 + 88) = 0;
  *(v43 + 72) = 0;
  *(v43 + 96) = sub_1001D3B14;
  *(v43 + 104) = v42;
  v44 = v30;

  sub_10075DDAC();
  v45 = sub_10075DD8C();
  v47 = v46;
  v41(v4, v40);
  v65 = v45;
  v66 = v47;
  sub_10077140C();

  *(v34 + 40) = v43;
  v48 = swift_allocObject();
  *(v48 + 16) = v60;
  type metadata accessor for DebugSection();
  v49 = swift_allocObject();
  sub_10075DDAC();
  v50 = sub_10075DD8C();
  v52 = v51;
  v41(v4, v40);
  v49[2] = v50;
  v49[3] = v52;
  v49[4] = 0x737465656853;
  v49[5] = 0xE600000000000000;
  v49[6] = v61;
  *(v48 + 32) = v49;
  v53 = swift_allocObject();
  sub_10075DDAC();
  v54 = sub_10075DD8C();
  v56 = v55;
  v41(v4, v40);
  v53[2] = v54;
  v53[3] = v56;
  v53[4] = 0x7364726143;
  v53[5] = 0xE500000000000000;
  v53[6] = v34;
  *(v48 + 40) = v53;
  return v48;
}

uint64_t sub_1001D2870(uint64_t a1)
{
  v2 = sub_10075F65C();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v38 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100765F6C();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100766EDC();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076F4FC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v8 - 8);
  v10 = v29 - v9;
  v11 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v11 - 8);
  v13 = v29 - v12;
  v14 = sub_10076C15C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v18 - 8);
  v20 = v29 - v19;
  v21 = sub_10000A5D4(&unk_1009428E0);
  v39 = a1;
  sub_10076F5AC();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_1000527AC(v20);
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v24 = *(v15 + 104);
  v29[1] = v17;
  v24(v17, enum case for FlowPage.onboarding(_:), v14);
  v25 = sub_10075DB7C();
  v26 = *(*(v25 - 8) + 56);
  v29[0] = v13;
  v26(v13, 1, 1, v25);
  v27 = sub_10076096C();
  (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
  v41 = &type metadata for OnboardingConfiguration;
  v40 = 0;
  sub_10076F4DC();
  (*(v30 + 104))(v31, enum case for FlowPresentationContext.infer(_:), v32);
  (*(v34 + 104))(v33, enum case for FlowAnimationBehavior.infer(_:), v35);
  (*(v36 + 104))(v38, enum case for FlowOrigin.inapp(_:), v37);
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v28 = sub_10075F5EC();
  sub_100263C24(v28, 1, v39, v20);

  return (*(v22 + 8))(v20, v21);
}

void sub_1001D2E4C()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_10076FF6C();
  v10 = [v0 initWithSuiteName:v1];

  v2 = v10;
  if (!v10)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v11 = v2;
  sub_10076648C();
  v3 = sub_10076FF6C();
  v4 = sub_10076FF6C();
  v5 = [objc_opt_self() alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  v6 = sub_10076FF6C();
  v7 = [objc_opt_self() actionWithTitle:v6 style:1 handler:0];

  [v5 addAction:v7];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [Strong presentViewController:v5 animated:1 completion:0];
  }
}

uint64_t sub_1001D3030()
{
  sub_10076148C();
  sub_10076F64C();
  sub_10076FC1C();
  type metadata accessor for AdPrivacyOnboardingStep();
  inited = swift_initStackObject();
  *(inited + 24) = 0;

  sub_10077140C();
  v1 = sub_10050D700();
  [v1 setAcknowledgedVersionForPersonalizedAds:0];

  swift_setDeallocating();
  sub_100016C74(inited + 32);
  v2 = sub_10076FF6C();
  v3 = sub_10076FF6C();
  v4 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];

  v5 = sub_10076FF6C();
  v6 = [objc_opt_self() actionWithTitle:v5 style:1 handler:0];

  [v4 addAction:v6];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [Strong presentViewController:v4 animated:1 completion:0];
  }
}

void sub_1001D3250()
{
  v0 = sub_10000A5D4(&unk_10094CE80);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  sub_10076F73C();
  sub_10076F72C();
  if (qword_10093FBD8 != -1)
  {
    swift_once();
  }

  v4 = sub_10000A61C(v0, qword_10094EB28);
  (*(v1 + 16))(v3, v4, v0);
  v12 = 0;
  v13 = 0;
  sub_10076F42C();

  v5 = sub_10076FF6C();
  v6 = sub_10076FF6C();
  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v8 = sub_10076FF6C();
  v9 = [objc_opt_self() actionWithTitle:v8 style:1 handler:0];

  [v7 addAction:v9];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    [Strong presentViewController:v7 animated:1 completion:0];
  }
}

uint64_t sub_1001D34C4(uint64_t a1)
{
  v2 = sub_10075F65C();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v38 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100765F6C();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100766EDC();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076F4FC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v8 - 8);
  v10 = v29 - v9;
  v11 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v11 - 8);
  v13 = v29 - v12;
  v14 = sub_10076C15C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v18 - 8);
  v20 = v29 - v19;
  v21 = sub_10000A5D4(&unk_1009428E0);
  v39 = a1;
  sub_10076F5AC();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_1000527AC(v20);
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v24 = *(v15 + 104);
  v29[1] = v17;
  v24(v17, enum case for FlowPage.debugTodayCardTriggers(_:), v14);
  v25 = sub_10075DB7C();
  v26 = *(*(v25 - 8) + 56);
  v29[0] = v13;
  v26(v13, 1, 1, v25);
  v27 = sub_10076096C();
  (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
  v40 = 0u;
  v41 = 0u;
  sub_10076F4DC();
  (*(v30 + 104))(v31, enum case for FlowPresentationContext.infer(_:), v32);
  (*(v34 + 104))(v33, enum case for FlowAnimationBehavior.infer(_:), v35);
  (*(v36 + 104))(v38, enum case for FlowOrigin.inapp(_:), v37);
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v28 = sub_10075F5EC();
  sub_100263C24(v28, 1, v39, v20);

  return (*(v22 + 8))(v20, v21);
}

uint64_t sub_1001D3ABC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001D3B2C()
{
  v0 = sub_1007674DC();
  sub_10000DB18(v0, qword_10099D828);
  sub_10000A61C(v0, qword_10099D828);
  if (qword_10093F9F0 != -1)
  {
    swift_once();
  }

  v1 = sub_10076D9AC();
  v2 = sub_10000A61C(v1, qword_10094CEA8);
  v5[3] = v1;
  v5[4] = &protocol witness table for StaticDimension;
  v3 = sub_10000DB7C(v5);
  (*(*(v1 - 8) + 16))(v3, v2, v1);
  return sub_1007674BC();
}

UIFontTextStyle sub_1001D3C7C()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_10094CE90);
  v1 = sub_10000A61C(v0, qword_10094CE90);
  *v1 = UIFontTextStyleSubheadline;
  *(v1 + 8) = 0;
  (*(*(v0 - 8) + 104))();

  return UIFontTextStyleSubheadline;
}

uint64_t sub_1001D3D44(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10076D1AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D9AC();
  sub_10000DB18(v7, a2);
  sub_10000A61C(v7, a2);
  if (qword_10093F9E8 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_10094CE90);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_10000DB7C(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_10076D9BC();
  return (*(v4 + 8))(v6, v3);
}

id sub_1001D3F20(double a1, double a2, double a3, double a4)
{
  v9 = sub_10000A5D4(&qword_10094CF28);
  __chkstk_darwin(v9);
  v10 = OBJC_IVAR____TtC20ProductPageExtension35TitledButtonStackCollectionViewCell_itemLayoutContext;
  v11 = sub_10076341C();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC20ProductPageExtension35TitledButtonStackCollectionViewCell_lineBreaks;
  v13 = sub_10000A5D4(&qword_10094CF18);
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension35TitledButtonStackCollectionViewCell_buttons] = _swiftEmptyArrayStorage;
  type metadata accessor for RoundedTitledButton();
  sub_10076D4CC();
  sub_1001D52C4();
  sub_10076E18C();
  v17.receiver = v4;
  v17.super_class = type metadata accessor for TitledButtonStackCollectionViewCell();
  v14 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return v14;
}

uint64_t sub_1001D42E4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension35TitledButtonStackCollectionViewCell_buttons;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(v1 + v2) = _swiftEmptyArrayStorage;
  }

  result = sub_10077158C();
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
        v7 = sub_10077149C();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = &v7[qword_1009A0758];
      v10 = *&v7[qword_1009A0758];
      *v9 = 0;
      *(v9 + 1) = 0;
      sub_1000167E0(v10);
      [v8 setTitle:0 forState:0];
      swift_beginAccess();
      sub_10000A5D4(&qword_10094CF58);
      sub_10076E17C();
      swift_endAccess();
    }

    while (v5 != v6);

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_1001D447C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_10076F9AC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = ObjectType;
  swift_beginAccess();
  sub_10000A5D4(&qword_10094CF58);
  sub_10076E15C();
  swift_endAccess();
  v11 = *&v22[0];
  [v11 _setWantsAccessibilityUnderline:0];
  v12 = [v11 titleLabel];

  if (v12)
  {
    [v12 setNumberOfLines:2];
  }

  sub_100760ABC();
  v13 = sub_10076FF6C();

  [v11 setTitle:v13 forState:0];

  sub_100760AAC();
  sub_1007713CC();
  sub_100016C74(v23);
  memset(v23, 0, 32);
  memset(v22, 0, sizeof(v22));
  sub_10076F95C();

  sub_10000CFBC(v22, &unk_1009434C0);
  sub_10000CFBC(v23, &unk_1009434C0);
  sub_100770B9C();
  (*(v8 + 8))(v10, v7);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = &v11[qword_1009A0758];
  v16 = *&v11[qword_1009A0758];
  *v15 = sub_1001D5938;
  v15[1] = v14;

  sub_1000167E0(v16);
  v17 = OBJC_IVAR____TtC20ProductPageExtension35TitledButtonStackCollectionViewCell_buttons;
  swift_beginAccess();
  v18 = v11;
  sub_10077019C();
  if (*((*(v3 + v17) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v17) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  swift_endAccess();
  v19 = [v3 contentView];
  [v19 addSubview:v18];
}

char *sub_1001D47F4@<X0>(char **a1@<X8>)
{
  v2 = sub_10076D9AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076D3DC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RoundedTitledButton();
  if (qword_100940F50 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A61C(v6, qword_1009A1BE8);
  (*(v7 + 16))(v9, v10, v6);
  if (qword_10093F9F0 != -1)
  {
    swift_once();
  }

  v11 = sub_10000A61C(v2, qword_10094CEA8);
  (*(v3 + 16))(v5, v11, v2);
  result = sub_1005267B4(v9, v5);
  *a1 = result;
  return result;
}

uint64_t sub_1001D49F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  result = sub_100760ACC();
  if (result)
  {
    v7 = result;
    v8 = sub_10000A5D4(&unk_1009428E0);
    sub_10076F5AC();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {

      return sub_10000CFBC(v5, &unk_100943200);
    }

    else
    {
      sub_100263BF0(v7, 1, a2, v5);

      return (*(v9 + 8))(v5, v8);
    }
  }

  return result;
}

uint64_t sub_1001D4B64()
{
  v1 = v0;
  v23 = sub_10076D1FC();
  v2 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_10094CF38);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_1007674DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007674FC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TitledButtonStackCollectionViewCell();
  v24.receiver = v1;
  v24.super_class = v16;
  objc_msgSendSuper2(&v24, "layoutSubviews");
  if (qword_10093F9D0 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v8, qword_10099D828);
  (*(v9 + 16))(v11, v17, v8);
  swift_beginAccess();

  sub_10016E2BC(v18);

  v19 = OBJC_IVAR____TtC20ProductPageExtension35TitledButtonStackCollectionViewCell_lineBreaks;
  swift_beginAccess();
  sub_1001D5940(v1 + v19, v7);
  sub_1007674EC();
  v20 = [v1 contentView];
  sub_1000ACA5C();
  sub_10076422C();

  sub_1007674AC();
  (*(v2 + 8))(v4, v23);
  return (*(v13 + 8))(v15, v12);
}

id sub_1001D4F8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitledButtonStackCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TitledButtonStackCollectionViewCell()
{
  result = qword_10094CEF8;
  if (!qword_10094CEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001D50E0()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    sub_1001D51F0();
    if (v1 <= 0x3F)
    {
      sub_1001D5254();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1001D51F0()
{
  if (!qword_10094CF10)
  {
    sub_10000CE78(&qword_10094CF18);
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, &qword_10094CF10);
    }
  }
}

void sub_1001D5254()
{
  if (!qword_10094CF20)
  {
    sub_10000CE78(&qword_10094CF28);
    sub_1001D52C4();
    v0 = sub_10076E19C();
    if (!v1)
    {
      atomic_store(v0, &qword_10094CF20);
    }
  }
}

unint64_t sub_1001D52C4()
{
  result = qword_10094CF30;
  if (!qword_10094CF30)
  {
    sub_10000CE78(&qword_10094CF28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094CF30);
  }

  return result;
}

uint64_t sub_1001D5328(uint64_t a1, uint64_t a2)
{
  result = sub_10076DDDC();
  v7[3] = result;
  v7[4] = &protocol witness table for LayoutViewPlaceholder;
  v7[0] = a1;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      sub_10000A5D4(&qword_10094CF50);
      v5 = sub_10077023C();
      v5[2] = a2;
      v6 = (v5 + 4);
      do
      {
        sub_10000A570(v7, v6);
        v6 += 40;
        --a2;
      }

      while (a2);
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
    }

    sub_10000CD74(v7);
    return v5;
  }

  return result;
}

double sub_1001D53DC(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v30 = a1;
  v33 = sub_10075DFDC();
  __chkstk_darwin(v33);
  v32 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v31 = &v28 - v4;
  v5 = sub_10000A5D4(&unk_10094CF38);
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - v6;
  v8 = sub_10077164C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007674DC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1007674FC();
  v16 = *(v29 - 8);
  __chkstk_darwin(v29);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093F9D0 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A61C(v12, qword_10099D828);
  (*(v13 + 16))(v15, v19, v12);
  sub_1007674CC();
  sub_10000CF78(v35, v35[3]);
  sub_1000FF02C();
  sub_10076D40C();
  (*(v9 + 8))(v11, v8);
  sub_10000CD74(v35);
  sub_10076DDDC();
  swift_allocObject();
  v20 = sub_10076DDBC();
  v21 = sub_100763C2C();
  if (v21 >> 62)
  {
    v22 = sub_10077158C();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1001D5328(v20, v22);
  sub_100763C1C();
  sub_100763C0C();
  sub_10000A5D4(&unk_100943120);
  sub_10075FDEC();
  v23 = sub_10000A5D4(&qword_10094CF18);
  (*(*(v23 - 8) + 56))(v7, 0, 1, v23);
  sub_1007674EC();
  sub_1001D5898();
  v24 = v29;
  sub_10076D2AC();
  v26 = v25;
  (*(v16 + 8))(v18, v24);
  return v26;
}

unint64_t sub_1001D5898()
{
  result = qword_10094CF48;
  if (!qword_10094CF48)
  {
    sub_1007674FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094CF48);
  }

  return result;
}

uint64_t sub_1001D58F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001D5940(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_10094CF38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001D59C4()
{
  result = qword_10094CF60;
  if (!qword_10094CF60)
  {
    sub_10075F94C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094CF60);
  }

  return result;
}

uint64_t sub_1001D5A24(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v85 = a1;
  v58 = sub_10076F4FC();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_10075F93C();
  v82 = *(v80 - 8);
  __chkstk_darwin(v80);
  v67 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v69 = v55 - v5;
  v6 = sub_10076608C();
  v81 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_10075EBAC();
  v63 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v55 - v11;
  v84 = sub_10076B96C();
  v13 = *(v84 - 1);
  __chkstk_darwin(v84);
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10076810C();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v17 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_100942C70);
  v59 = sub_10076FCEC();
  sub_1000FD520(_swiftEmptyArrayStorage);
  sub_1000FD520(_swiftEmptyArrayStorage);
  sub_100562288(_swiftEmptyArrayStorage);
  sub_1000FD520(_swiftEmptyArrayStorage);
  v76 = v17;
  sub_1007680FC();
  sub_10000A5D4(&unk_10094A8C0);
  sub_10076F64C();
  sub_10076FC1C();
  swift_getObjectType();
  sub_10075F8FC();
  v18 = sub_10075EE2C();
  swift_unknownObjectRelease();
  (*(v13 + 8))(v15, v84);
  swift_getObjectType();
  v74 = v12;
  v55[1] = v18;
  sub_10075ED1C();
  v19 = sub_10076417C();
  v20 = *(v19 + 16);
  if (v20)
  {
    v84 = *(v81 + 16);
    v21 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v55[0] = v19;
    v22 = v19 + v21;
    v83 = *(v81 + 72);
    v68 = enum case for RateAction.Parameter.rating(_:);
    v77 = v82 + 1;
    v78 = (v82 + 13);
    v82 = (v81 + 8);
    v72 = (v63 + 16);
    v71 = (v63 + 88);
    v70 = enum case for LegacyAppState.openable(_:);
    v66 = (v63 + 8);
    v65 = (v63 + 96);
    v64 = enum case for RateAction.Parameter.version(_:);
    v79 = v6;
    v81 += 16;
    v84(v8, v19 + v21, v6);
    while (1)
    {
      v23 = sub_10075F90C();
      if ((v24 & 1) == 0)
      {
        v38 = v23;
        v39 = sub_10076604C();
        v41 = v40;
        v42 = v69;
        v43 = v80;
        (*v78)(v69, v68, v80);
        v44 = sub_10075F92C();
        v46 = v45;
        (*v77)(v42, v43);
        if (v39 == v44 && v41 == v46)
        {

          v6 = v79;
LABEL_15:
          v86 = v38;
          sub_10077163C();
          sub_1007680EC();

          (*v82)(v8, v6);
          goto LABEL_4;
        }

        v47 = sub_10077167C();

        v6 = v79;
        if (v47)
        {
          goto LABEL_15;
        }
      }

      v25 = v73;
      v26 = v75;
      (*v72)(v73, v74, v75);
      v27 = (*v71)(v25, v26);
      if (v27 != v70)
      {
        (*v82)(v8, v6);
        (*v66)(v25, v26);
        goto LABEL_4;
      }

      (*v65)(v25, v26);
      v28 = *&v25[*(sub_10000A5D4(&unk_100942CF0) + 48)];
      v29 = sub_100764E5C();
      (*(*(v29 - 8) + 8))(v25, v29);
      v30 = sub_10076604C();
      v32 = v31;
      v33 = v67;
      v34 = v80;
      (*v78)(v67, v64, v80);
      v35 = sub_10075F92C();
      v37 = v36;
      (*v77)(v33, v34);
      if (v30 == v35 && v32 == v37)
      {
        break;
      }

      v48 = sub_10077167C();

      v6 = v79;
      if (v48)
      {
        goto LABEL_17;
      }

      (*v82)(v8, v79);

LABEL_4:
      v22 += v83;
      if (!--v20)
      {
        goto LABEL_19;
      }

      v84(v8, v22, v6);
    }

    v6 = v79;
LABEL_17:
    v49 = [v28 stringValue];
    sub_10076FF9C();

    sub_1007680EC();

    (*v82)(v8, v6);
    goto LABEL_4;
  }

LABEL_19:

  v50 = v56;
  sub_10076F4DC();
  sub_10076415C();
  v51 = v63;
  v52 = v59;
  (*(v57 + 8))(v50, v58);

  sub_100564040(v53, 1, v62);

  sub_10076FC4C();

  swift_unknownObjectRelease();

  (*(v51 + 8))(v74, v75);
  (*(v60 + 8))(v76, v61);
  return v52;
}

uint64_t sub_1001D662C()
{
  v0 = sub_10000A5D4(&qword_100942900);
  __chkstk_darwin(v0 - 8);
  v40 = &v34 - v1;
  v42 = sub_10076C2DC();
  v49 = *(v42 - 8);
  __chkstk_darwin(v42);
  v3 = (&v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10000A5D4(&qword_100942908);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  sub_10000A5D4(&qword_100942910);
  v16 = *(sub_10076C20C() - 8);
  v48 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v39 = v18;
  *(v18 + 16) = xmmword_1007844F0;
  v46 = v18 + v17;
  v50 = 0x3FF0000000000000;
  v51 = 0x3FF8000000000000;
  sub_10001E290();
  sub_10076C27C();
  v50 = 0x4030000000000000;
  v51 = 0x4020000000000000;
  sub_10076C27C();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #16.0 }

  *v3 = _Q0;
  v45 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v24 = *(v49 + 104);
  v49 += 104;
  v47 = v24;
  v25 = v42;
  v24(v3);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v51) = 0;
  sub_10076C29C();
  v51 = 0;
  v44 = v6;
  sub_10076C29C();
  v41 = v15;
  v43 = v12;
  sub_10076C1CC();
  v50 = 0x3FF0000000000000;
  v51 = 0x3FF8000000000000;
  sub_10076C27C();
  v50 = 0x4034000000000000;
  v51 = 0x4024000000000000;
  sub_10076C27C();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #20.0 }

  *v3 = _Q0;
  v47(v3, v45, v25);
  LOBYTE(v51) = 0;
  sub_10076C29C();
  v51 = 0;
  sub_10076C29C();
  v28 = v48;
  top = UIEdgeInsetsZero.top;
  v38 = left;
  sub_10076C1CC();
  v51 = 0x4008000000000000;
  sub_10076C29C();
  v51 = 0x4034000000000000;
  sub_10076C29C();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10076C27C();
  v36 = vdupq_n_s64(0x4041000000000000uLL);
  *v3 = v36;
  v29 = v42;
  v30 = v47;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  sub_10076C29C();
  v51 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v35 = 2 * v28 + v48;
  v51 = 0x4010000000000000;
  sub_10076C29C();
  v51 = 0x4034000000000000;
  sub_10076C29C();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10076C27C();
  *v3 = v36;
  v30(v3, v45, v29);
  sub_1007704BC();
  LOBYTE(v51) = 0;
  sub_10076C29C();
  v51 = 0;
  sub_10076C29C();
  v34 = v9;
  sub_10076C1CC();
  v35 = 4 * v48;
  v51 = 0x4014000000000000;
  sub_10076C29C();
  v51 = 0x4038000000000000;
  sub_10076C29C();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10076C27C();
  v36 = vdupq_n_s64(0x404A000000000000uLL);
  *v3 = v36;
  v31 = v45;
  v32 = v42;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  sub_10076C29C();
  v51 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v51 = 0x4018000000000000;
  sub_10076C29C();
  v51 = 0x4038000000000000;
  sub_10076C29C();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10076C27C();
  *v3 = v36;
  v47(v3, v31, v32);
  LOBYTE(v51) = 0;
  sub_10076C29C();
  v51 = 0;
  sub_10076C29C();
  result = sub_10076C1CC();
  qword_10094CF68 = v39;
  return result;
}

char *sub_1001D7048(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for Accessory();
  __chkstk_darwin(v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC20ProductPageExtension27ArcadeHeaderButtonContainer_stackView;
  *&v3[v10] = [objc_allocWithZone(sub_10000A5D4(&qword_1009453C0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v3[OBJC_IVAR____TtC20ProductPageExtension27ArcadeHeaderButtonContainer_objectGraph] = a2;
  v11 = *(sub_10000A5D4(&qword_1009453E8) + 48);
  *v9 = 1;
  v12 = sub_10075F37C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v40 = a1;
  v14(&v9[v11], a1, v12);
  (*(v13 + 56))(&v9[v11], 0, 1, v12);
  swift_storeEnumTagMultiPayload();

  sub_100527CDC(v15);
  v17 = v16;
  sub_100036758(v9);
  *&v3[OBJC_IVAR____TtC20ProductPageExtension27ArcadeHeaderButtonContainer_accountButton] = v17;
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 whiteColor];
  [v19 setTintColor:v20];

  v21 = objc_allocWithZone(type metadata accessor for ArcadeSeeAllGamesButton());

  *&v3[OBJC_IVAR____TtC20ProductPageExtension27ArcadeHeaderButtonContainer_seeAllGamesButton] = sub_100347468(v22);
  v42.receiver = v3;
  v42.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v42, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v24 = sub_10076C03C();
  v41[3] = v24;
  v41[4] = sub_1001D7794();
  v25 = sub_10000DB7C(v41);
  (*(*(v24 - 8) + 104))(v25, enum case for Feature.iOS.arcade_see_all_games_uplift_navigation_bar_Future(_:), v24);
  v26 = v23;
  LOBYTE(v23) = sub_10076C90C();
  sub_10000CD74(v41);
  if (v23)
  {
    [*&v26[OBJC_IVAR____TtC20ProductPageExtension27ArcadeHeaderButtonContainer_stackView] addSubview:*&v26[OBJC_IVAR____TtC20ProductPageExtension27ArcadeHeaderButtonContainer_seeAllGamesButton]];
  }

  v27 = OBJC_IVAR____TtC20ProductPageExtension27ArcadeHeaderButtonContainer_stackView;
  v28 = OBJC_IVAR____TtC20ProductPageExtension27ArcadeHeaderButtonContainer_accountButton;
  [*&v26[OBJC_IVAR____TtC20ProductPageExtension27ArcadeHeaderButtonContainer_stackView] addSubview:*&v26[OBJC_IVAR____TtC20ProductPageExtension27ArcadeHeaderButtonContainer_accountButton]];
  v29 = *&v26[v27];
  *&v29[qword_10095D510] = 0;
  [v29 setNeedsLayout];
  v30 = *&v26[v27];
  *&v30[qword_10095D518] = 3;
  [v30 setNeedsLayout];
  v31 = *&v26[v27];
  *&v31[qword_10095D520] = 0x4034000000000000;
  [v31 setNeedsLayout];
  v32 = *&v26[v27];
  v33 = v26;
  [v33 addSubview:v32];
  [v33 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  sub_10000A5D4(&unk_100945BF0);
  v34 = swift_allocObject();
  v39 = xmmword_100783DD0;
  *(v34 + 16) = xmmword_100783DD0;
  *(v34 + 32) = sub_10076E88C();
  *(v34 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100770C4C();
  swift_unknownObjectRelease();

  v35 = swift_allocObject();
  *(v35 + 16) = v39;
  *(v35 + 32) = sub_10076E59C();
  *(v35 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_100770C4C();
  swift_unknownObjectRelease();

  v36 = *&v26[v28];
  v37 = [v33 traitCollection];
  LOBYTE(v35) = sub_1007706CC();

  [v36 setHidden:v35 & 1];

  (*(v13 + 8))(v40, v12);

  return v33;
}

unint64_t sub_1001D7794()
{
  result = qword_100947230;
  if (!qword_100947230)
  {
    sub_10076C03C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947230);
  }

  return result;
}

__n128 sub_1001D77EC(uint64_t a1, __int128 *a2)
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
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_1001D7838(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001D7880(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
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
      *(result + 232) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001D7908(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001D7928(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

uint64_t sub_1001D7974(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = CGRectGetWidth(*&a1) * *(v4 + 56);
  v11 = v10 * *(v4 + 16);
  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  v12 = *(v4 + 64) + v10 + (CGRectGetWidth(v16) - v10) * 0.5 - v11;
  v13 = *(v4 + 32);
  v17.origin.x = v12;
  v17.origin.y = v13;
  v17.size.width = v11;
  v17.size.height = v11;
  CGRectGetMidX(v17);
  v18.origin.x = v12;
  v18.origin.y = v13;
  v18.size.width = v11;
  v18.size.height = v11;
  CGRectGetMidY(v18);
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  CGRectGetWidth(v19);
  sub_10000CF78((v4 + 72), *(v4 + 96));
  sub_10076E0EC();
  sub_10000CF78(v5 + 24, v5[27]);
  sub_10076E0EC();
  sub_10000CF78(v5 + 14, v5[17]);
  sub_10076E0EC();
  sub_10000CF78(v5 + 19, v5[22]);
  return sub_10076E0EC();
}

__n128 sub_1001D7B78@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

void sub_1001D7B94(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_appPromotionCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1001DAA10(&qword_100942810, type metadata accessor for VideoView);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView];
    sub_100016F40(0, &qword_1009441F0);
    v8 = v7;
    v9 = sub_100770EEC();

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
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

id sub_1001D7E28()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_longPressGestureRecognizer] removeTarget:v0 action:0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for AppPromotionView()
{
  result = qword_10094D000;
  if (!qword_10094D000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_1001D7FC8(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_appPromotionCardView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1001D802C;
}

void sub_1001D802C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_1000BD424();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [*&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkView]];
      [v2 setNeedsLayout];
    }

    v7 = v3;
  }

  else
  {
    v7 = *a1;
    sub_1000BD424();
    swift_unknownObjectWeakAssign();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      goto LABEL_8;
    }

    v3 = v6;
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView] insertSubview:v6 aboveSubview:*&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkView]];
    [v2 setNeedsLayout];
  }

LABEL_8:
}

void sub_1001D8154()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  sub_10076422C();
  if (!CGRectIsEmpty(v17))
  {
    v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_availabilityLabelView];
    sub_10076422C();
    v3 = v2;
    v5 = v4;
    sub_1004B67D8(v15);
    sub_1004B8E04(v0, v15, v3, v5);
    sub_10005AE58(v15);
    sub_10076422C();
    CGRectGetMinX(v18);
    sub_10076422C();
    CGRectGetMinY(v19);
    sub_10076422C();
    sub_100770A4C();
    [v1 setFrame:?];
    v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_appPromotionCardView];
    v7 = [v6 superview];
    if (v7)
    {
      v8 = v7;
      sub_100016F40(0, &qword_1009441F0);
      v9 = v0;
      v10 = sub_100770EEC();

      if (v10)
      {
        [v1 frame];
        MaxY = CGRectGetMaxY(v20);
        sub_10076422C();
        v12 = CGRectGetHeight(v21) - MaxY;
        sub_10076422C();
        [v6 setBounds:{0.0, 0.0, CGRectGetWidth(v22), v12}];
        [v1 frame];
        v13 = CGRectGetMaxY(v23);
        sub_10076422C();
        v14 = CGRectGetHeight(v24) - v13;
        [v9 bounds];
        [v6 setCenter:{CGRectGetWidth(v25) * 0.5, v13 + v14 * 0.5}];
      }
    }
  }
}

void sub_1001D84FC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v4 - 8);
  v6 = v60 - v5;
  v7 = sub_10000A5D4(&qword_100952650);
  __chkstk_darwin(v7 - 8);
  v9 = v60 - v8;
  v10 = sub_10000A5D4(&qword_100955BD0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v60 - v12;
  sub_100016F40(0, &qword_10094D040);
  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_longPressGestureRecognizer];
  if ((sub_100770EEC() & 1) == 0)
  {
    return;
  }

  v61 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_appPromotionCardView];
  v15 = [v61 superview];
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v17 = sub_100016F40(0, &qword_1009441F0);
  v18 = v2;
  v60[1] = v17;
  LOBYTE(v17) = sub_100770EEC();

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
    v26 = sub_100770EEC();

    if ((v26 & 1) == 0)
    {
      return;
    }

    v27 = objc_opt_self();
    v28 = swift_allocObject();
    *(v28 + 16) = v25;
    *(v28 + 24) = 0x3FF0000000000000;
    v67 = sub_1001DAD84;
    v68 = v28;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v65 = sub_10009AEDC;
    v66 = &unk_10088C000;
    v29 = _Block_copy(&aBlock);
    v30 = v25;

    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = v30;
    v67 = sub_1001DAD9C;
    v68 = v31;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v32 = &unk_10088C050;
LABEL_30:
    v65 = sub_1000513F0;
    v66 = v32;
    v58 = _Block_copy(&aBlock);
    v59 = v30;

    [v27 _animateUsingDefaultDampedSpringWithDelay:135 initialSpringVelocity:v29 options:v58 animations:0.0 completion:1.0];
    _Block_release(v58);
    _Block_release(v29);
    return;
  }

  if (v19 == 1)
  {
    v33 = v61;
    [a1 locationInView:v61];
    v34 = v18 + OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_initialLongPressLocation;
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
    v40 = sub_100770EEC();

    if ((v40 & 1) == 0)
    {
      return;
    }

    v27 = objc_opt_self();
    v41 = swift_allocObject();
    *(v41 + 16) = v39;
    *(v41 + 24) = 0x3FEEB851EB851EB8;
    v67 = sub_1001DAD84;
    v68 = v41;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v65 = sub_10009AEDC;
    v66 = &unk_10088C0A0;
    v29 = _Block_copy(&aBlock);
    v30 = v39;

    v42 = swift_allocObject();
    *(v42 + 16) = 1;
    *(v42 + 24) = v30;
    v67 = sub_1001DAD9C;
    v68 = v42;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v32 = &unk_10088C0F0;
    goto LABEL_30;
  }

  if (v19 == 2)
  {
    [a1 locationInView:v61];
    v45 = (v18 + OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_initialLongPressLocation);
    if (*(v18 + OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_initialLongPressLocation + 16))
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

  if (v19 != 3)
  {
    return;
  }

  v20 = OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_clickAction;
  swift_beginAccess();
  sub_100016E2C(v18 + v20, v9, &qword_100952650);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v21 = &qword_100952650;
    v22 = v9;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_100761FEC();
    v66 = ObjectType;
    aBlock = v18;
    v48 = v18;
    sub_10076B88C();

    sub_100761FDC();
    v49 = sub_10000A5D4(&unk_1009428E0);
    sub_10076F5AC();

    v50 = *(v49 - 8);
    if ((*(v50 + 48))(v6, 1, v49) != 1)
    {
      sub_100761FEC();
      v51 = sub_100761FDC();
      sub_100263BF0(aBlock, 1, v51, v6);

      (*(v11 + 8))(v13, v10);

      (*(v50 + 8))(v6, v49);
      goto LABEL_27;
    }

    (*(v11 + 8))(v13, v10);
    v21 = &unk_100943200;
    v22 = v6;
  }

  sub_10000CFBC(v22, v21);
LABEL_27:
  v52 = [v61 superview];
  if (v52)
  {
    v53 = v52;
    v54 = v18;
    v55 = sub_100770EEC();

    if (v55)
    {
      v27 = objc_opt_self();
      v56 = swift_allocObject();
      *(v56 + 16) = v54;
      *(v56 + 24) = 0x3FF0000000000000;
      v67 = sub_1001DAA90;
      v68 = v56;
      aBlock = _NSConcreteStackBlock;
      v64 = 1107296256;
      v65 = sub_10009AEDC;
      v66 = &unk_10088BF60;
      v29 = _Block_copy(&aBlock);
      v30 = v54;

      v57 = swift_allocObject();
      *(v57 + 16) = 0;
      *(v57 + 24) = v30;
      v67 = sub_1001DAAB4;
      v68 = v57;
      aBlock = _NSConcreteStackBlock;
      v64 = 1107296256;
      v32 = &unk_10088BFB0;
      goto LABEL_30;
    }
  }
}