id sub_10056CE6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayTransitionPresentAnimation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10056CEC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10056CF04()
{
  v1 = *(v0 + 24);
  sub_1000730D8(1);

  return [v1 setAlpha:1.0];
}

uint64_t sub_10056CF50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10056CF6C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10056CFB4()
{

  return _swift_deallocObject(v0, 64, 7);
}

id sub_10056CFF4()
{
  v1 = *(v0 + 3);
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  sub_1000730D8(1);

  return [v1 setFrame:{v2, v3, v4, v5}];
}

uint64_t sub_10056D068()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10056D108(uint64_t a1)
{
  v3 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v3 - 8);
  v5 = v54 - v4;
  v6 = sub_10076D3DC();
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v65 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v54 - v10;
  if (qword_100940888 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v12 = sub_10000A5D4(&qword_10094C390);
    sub_10000A61C(v12, qword_10095D708);
    v70 = v1;
    v13 = v1;
    sub_10075FDCC();

    v14 = *&v13[OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_headingTextLabel];
    v15 = v7[2];
    v64 = v7 + 2;
    v62 = v15;
    (v15)(v5, v11, v6);
    v16 = v7[7];
    v63 = v7 + 7;
    v61 = v16;
    (v16)(v5, 0, 1, v6);
    v66 = v5;
    sub_1007625DC();
    if (qword_100940870 != -1)
    {
      swift_once();
    }

    v17 = sub_10000A5D4(&unk_100942EF0);
    v18 = sub_10000A61C(v17, qword_10095D6C0);
    v69 = v13;
    v19 = v13;
    v60 = v18;
    sub_10075FDCC();

    [v14 setTextAlignment:v70];
    sub_10076152C();
    v55 = v11;
    v56 = v7;
    if (v20)
    {
      v21 = sub_10076FF6C();
    }

    else
    {
      v21 = 0;
    }

    [v14 setText:v21];

    v22 = *&v19[OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_headingArtworkView];
    v23 = sub_10076150C();
    sub_10073A548(v23);

    if (qword_100940880 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v12, qword_10095D6F0);
    v70 = v19;
    v24 = v19;
    v25 = v65;
    sub_10075FDCC();

    v26 = *&v24[OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_textLabel];
    v27 = v66;
    (v62)(v66, v25, v6);
    (v61)(v27, 0, 1, v6);
    sub_1007625DC();
    v69 = v24;
    v28 = v24;
    sub_10075FDCC();

    [v26 setTextAlignment:v70];
    sub_10076151C();
    if (v29)
    {
      v30 = sub_10076FF6C();
    }

    else
    {
      v30 = 0;
    }

    [v26 setText:v30];

    sub_10076157C();
    sub_10076155C();
    v31 = sub_1007701EC();

    if ((v31 & 1) != 0 && (v32 = [v28 traitCollection], v33 = sub_10077071C(), v32, (v33 & 1) == 0))
    {
      v35 = 4;
      v34 = 1;
    }

    else
    {
      v34 = 0;
      v35 = 0;
    }

    [v26 setNumberOfLines:v34];
    [v26 setLineBreakMode:v35];
    v36 = OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_leadingPairLabels;
    swift_beginAccess();
    v58 = v36;
    v59 = a1;
    v1 = *(v28 + v36);
    v57 = v6;
    v54[1] = v17;
    if (v1 >> 62)
    {
      v37 = sub_10077158C();
    }

    else
    {
      v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = &off_100911000;
    if (v37)
    {
      v11 = 0;
      v5 = (v1 & 0xC000000000000001);
      v6 = (v1 & 0xFFFFFFFFFFFFFF8);
      do
      {
        if (v5)
        {
          v38 = sub_10077149C();
        }

        else
        {
          if (v11 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_50;
          }

          v38 = *(v1 + 8 * v11 + 32);
        }

        v39 = v38;
        a1 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_49;
        }

        [v38 removeFromSuperview];

        ++v11;
      }

      while (a1 != v37);
    }

    v5 = OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_trailingPairLabels;
    swift_beginAccess();
    v1 = *&v5[v28];
    if (v1 >> 62)
    {
      v40 = sub_10077158C();
    }

    else
    {
      v40 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v40)
    {
      v11 = 0;
      v6 = (v1 & 0xC000000000000001);
      a1 = v1 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v6)
        {
          v41 = sub_10077149C();
        }

        else
        {
          if (v11 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_52;
          }

          v41 = *(v1 + 8 * v11 + 32);
        }

        v42 = v41;
        v43 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          goto LABEL_51;
        }

        [v41 removeFromSuperview];

        ++v11;
      }

      while (v43 != v40);
    }

    v6 = _swiftEmptyArrayStorage;
    *(v28 + v58) = _swiftEmptyArrayStorage;

    *&v5[v28] = _swiftEmptyArrayStorage;

    v44 = sub_10076157C();
    v1 = v44;
    if (!(v44 >> 62))
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      a1 = v66;
      if (!v45)
      {
        break;
      }

      goto LABEL_40;
    }

    v45 = sub_10077158C();
    a1 = v66;
    if (!v45)
    {
      break;
    }

LABEL_40:
    v11 = 0;
    v7 = (v1 & 0xC000000000000001);
    v5 = (v1 & 0xFFFFFFFFFFFFFF8);
    while (v7)
    {
      v46 = sub_10077149C();
      v6 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        goto LABEL_48;
      }

LABEL_44:
      v68 = v46;
      sub_1005704C0(&v68, v28);

      ++v11;
      if (v6 == v45)
      {
        goto LABEL_58;
      }
    }

    if (v11 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_53;
    }

    v46 = *(v1 + 8 * v11 + 32);

    v6 = (v11 + 1);
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_44;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
  }

LABEL_58:

  v47 = *(v28 + OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_listTextLabel);
  v48 = v65;
  v49 = v57;
  (v62)(a1, v65, v57);
  (v61)(a1, 0, 1, v49);
  sub_1007625DC();
  v67 = v28;
  v50 = v28;
  sub_10075FDCC();

  [v47 setTextAlignment:v68];
  v51 = sub_10056F98C(v59, v50);
  [v47 setAttributedText:v51];

  [v50 setNeedsLayout];
  v52 = v56[1];
  (v52)(v48, v49);
  return (v52)(v55, v49);
}

uint64_t sub_10056D990()
{
  v0 = sub_1007671EC();
  sub_10000DB18(v0, qword_1009A0818);
  sub_10000A61C(v0, qword_1009A0818);
  return sub_1007671DC();
}

uint64_t sub_10056DA64(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000A5D4(&unk_100942EF0);
  sub_10000DB18(v3, a2);
  sub_10000A61C(v3, a2);
  sub_10000A5D4(&unk_100943120);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FDDC();
}

uint64_t sub_10056DB08()
{
  v0 = sub_10076D3DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000A5D4(&qword_10094C390);
  sub_10000DB18(v7, qword_10095D6F0);
  sub_10000A61C(v7, qword_10095D6F0);
  if (qword_100940C28 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v0, qword_1009A1270);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_100940C20 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A61C(v0, qword_1009A1258);
  v9(v3, v10, v0);
  sub_10000A5D4(&unk_100943120);
  return sub_10075FDEC();
}

uint64_t sub_10056DCE8()
{
  v0 = sub_10076D3DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000A5D4(&qword_10094C390);
  sub_10000DB18(v7, qword_10095D708);
  sub_10000A61C(v7, qword_10095D708);
  if (qword_100940C38 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v0, qword_1009A12A0);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_100940C30 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A61C(v0, qword_1009A1288);
  v9(v3, v10, v0);
  sub_10000A5D4(&unk_100943120);
  return sub_10075FDEC();
}

char *sub_10056DEC8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_leadingPairLabels] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_trailingPairLabels] = _swiftEmptyArrayStorage;
  type metadata accessor for AnnotationImagesView();
  *&v4[OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_headingArtworkView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1007626BC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_headingTextLabel] = v11;
  v12 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_textLabel] = v12;
  v13 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_listTextLabel] = v13;
  v32.receiver = v4;
  v32.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v18 addSubview:*&v18[OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_headingArtworkView]];
  v19 = OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_headingTextLabel;
  [*&v18[OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_headingTextLabel] setNumberOfLines:0];
  v20 = qword_100940870;
  v21 = *&v18[v19];
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = sub_10000A5D4(&unk_100942EF0);
  sub_10000A61C(v22, qword_10095D6C0);
  v23 = v18;
  sub_10075FDCC();

  [v21 setTextAlignment:{v31, v18}];
  [v23 addSubview:*&v18[v19]];
  v24 = OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_textLabel;
  [*&v23[OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_textLabel] setNumberOfLines:0];
  v25 = *&v23[v24];
  v26 = v23;
  v27 = v25;
  sub_10075FDCC();

  [v27 setTextAlignment:{v31, v23}];
  [v26 addSubview:*&v23[v24]];
  v28 = OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_listTextLabel;
  [*&v26[OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_listTextLabel] setNumberOfLines:0];
  v29 = *&v26[v28];
  sub_10075FDCC();

  [v29 setTextAlignment:{v31, v26}];
  [v26 addSubview:*&v26[v28]];

  return v26;
}

uint64_t sub_10056E288()
{
  v1 = sub_1007671EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100940868 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v1, qword_1009A0818);
  (*(v2 + 16))(v4, v5, v1);
  v6 = *(v0 + OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_headingTextLabel);
  v7 = sub_1007626BC();
  v29 = v7;
  v30 = &protocol witness table for UILabel;
  v28 = v6;
  v8 = *(v0 + OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_headingArtworkView);
  v26 = type metadata accessor for AnnotationImagesView();
  v27 = &protocol witness table for UIView;
  v24 = &protocol witness table for UILabel;
  v25 = v8;
  v9 = *(v0 + OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_textLabel);
  v10 = *(v0 + OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_listTextLabel);
  v23 = v7;
  v21 = &protocol witness table for UILabel;
  v22 = v9;
  v20 = v7;
  v19 = v10;
  swift_beginAccess();
  v11 = v6;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  sub_10016E9B8(v15);

  swift_beginAccess();

  sub_10016E9B8(v16);

  return sub_1007671FC();
}

void *sub_10056E7B0(void *a1, uint64_t a2, void (*a3)(uint64_t *, void, uint64_t))
{
  v115 = a3;
  v112 = a2;
  v98 = sub_1007671EC();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v111 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_10076720C();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v105 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076997C();
  v114 = *(v6 - 8);
  __chkstk_darwin(v6);
  v101 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v100 = &v94 - v9;
  __chkstk_darwin(v10);
  v99 = &v94 - v11;
  __chkstk_darwin(v12);
  v14 = &v94 - v13;
  v104 = sub_10076D3DC();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v113 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v94 - v17;
  if (qword_100940880 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A5D4(&qword_10094C390);
  sub_10000A61C(v19, qword_10095D6F0);
  v126 = a1;
  sub_10075FDCC();
  sub_100016F40(0, &qword_100942F00);
  ObjectType = swift_getObjectType();
  v21 = [a1 traitCollection];
  v102 = v18;
  v121 = sub_100770B3C();

  if (qword_100940888 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v19, qword_10095D708);
  v126 = a1;
  sub_10075FDCC();
  v22 = [a1 traitCollection];
  v95 = sub_100770B3C();

  v23 = v115;
  v24 = sub_10076150C();
  sub_10073BE2C(v24, a1);

  v96 = sub_10076DDDC();
  swift_allocObject();
  v25 = sub_10076DDAC();
  sub_10076150C();
  sub_10076C02C();
  sub_1007701EC();

  sub_10076DD8C();
  v108 = ObjectType;
  v120 = sub_10056F8FC(v23, a1);
  v26 = sub_10076157C();
  if (v26 >> 62)
  {
    v67 = v26;
    v27 = sub_10077158C();
    v26 = v67;
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v122 = v6;
  v110 = a1;
  v109 = v25;
  if (v27)
  {
    v28 = v26;
    v125[0] = _swiftEmptyArrayStorage;
    result = sub_1004BBD4C(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      __break(1u);
      goto LABEL_38;
    }

    v30 = 0;
    v31 = v125[0];
    v118 = (v28 & 0xC000000000000001);
    LODWORD(v117) = enum case for Feature.measurement_with_labelplaceholder(_:);
    v32 = (v114 + 8);
    v119 = v28;
    v33 = v27;
    do
    {
      if (v118)
      {
        sub_10077149C();
      }

      else
      {
      }

      sub_10076153C();
      v34 = sub_10076C04C();
      v127 = v34;
      v128 = sub_100570670(&qword_100943230, &type metadata accessor for Feature);
      v35 = sub_10000DB7C(&v126);
      (*(*(v34 - 8) + 104))(v35, v117, v34);
      v36 = v121;
      sub_10076C90C();
      sub_10000CD74(&v126);
      sub_10076996C();
      sub_10076994C();

      (*v32)(v14, v122);
      v125[0] = v31;
      v38 = *(v31 + 16);
      v37 = *(v31 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1004BBD4C((v37 > 1), v38 + 1, 1);
      }

      ++v30;
      v39 = v127;
      v40 = v128;
      v41 = sub_10008B8A4(&v126, v127);
      v42 = __chkstk_darwin(v41);
      v44 = &v94 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v45 + 16))(v44, v42);
      sub_1005700A8(v38, v44, v125, v39, v40);
      sub_10000CD74(&v126);
      v31 = v125[0];
    }

    while (v33 != v30);

    v46 = v114;
    v23 = v115;
  }

  else
  {

    v46 = v114;
  }

  v47 = sub_10076157C();
  if (v47 >> 62)
  {
    v68 = v47;
    v48 = sub_10077158C();
    v47 = v68;
    if (v48)
    {
LABEL_20:
      v49 = v47;
      v125[0] = _swiftEmptyArrayStorage;
      result = sub_1004BBD4C(0, v48 & ~(v48 >> 63), 0);
      if ((v48 & 0x8000000000000000) == 0)
      {
        v118 = v14;
        v50 = 0;
        v51 = v125[0];
        v117 = v49 & 0xC000000000000001;
        v116 = enum case for Feature.measurement_with_labelplaceholder(_:);
        v52 = (v46 + 8);
        v119 = v49;
        do
        {
          if (v117)
          {
            sub_10077149C();
          }

          else
          {
          }

          sub_10076154C();
          v53 = sub_10076C04C();
          v127 = v53;
          v128 = sub_100570670(&qword_100943230, &type metadata accessor for Feature);
          v54 = sub_10000DB7C(&v126);
          (*(*(v53 - 8) + 104))(v54, v116, v53);
          v55 = v121;
          sub_10076C90C();
          sub_10000CD74(&v126);
          v56 = v118;
          sub_10076996C();
          sub_10076994C();

          (*v52)(v56, v122);
          v125[0] = v51;
          v58 = *(v51 + 16);
          v57 = *(v51 + 24);
          if (v58 >= v57 >> 1)
          {
            sub_1004BBD4C((v57 > 1), v58 + 1, 1);
          }

          ++v50;
          v59 = v127;
          v60 = v128;
          v61 = sub_10008B8A4(&v126, v127);
          v62 = __chkstk_darwin(v61);
          v64 = &v94 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v65 + 16))(v64, v62);
          sub_1005700A8(v58, v64, v125, v59, v60);
          sub_10000CD74(&v126);
          v51 = v125[0];
        }

        while (v48 != v50);

        v66 = v111;
        v23 = v115;
        goto LABEL_32;
      }

LABEL_38:
      __break(1u);
      return result;
    }
  }

  else
  {
    v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v48)
    {
      goto LABEL_20;
    }
  }

  v66 = v111;
LABEL_32:
  v117 = sub_10056F98C(v23, v110);
  if (qword_100940868 != -1)
  {
    swift_once();
  }

  v69 = v98;
  v70 = sub_10000A61C(v98, qword_1009A0818);
  (*(v97 + 16))(v66, v70, v69);
  sub_10076152C();
  v71 = sub_10076C04C();
  v127 = v71;
  v119 = sub_100570670(&qword_100943230, &type metadata accessor for Feature);
  v128 = v119;
  v72 = sub_10000DB7C(&v126);
  v73 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v74 = *(*(v71 - 8) + 104);
  v74(v72, enum case for Feature.measurement_with_labelplaceholder(_:), v71);
  v75 = v95;
  sub_10076C90C();
  sub_10000CD74(&v126);
  v76 = v99;
  v118 = v75;
  sub_10076996C();
  sub_10076994C();
  v77 = *(v114 + 8);
  v78 = v76;
  v79 = v122;
  v77(v78, v122);
  v125[3] = v96;
  v125[4] = &protocol witness table for LayoutViewPlaceholder;
  v125[0] = v109;

  sub_10076151C();
  v114 = v80;
  v124[3] = v71;
  v124[4] = v119;
  v81 = sub_10000DB7C(v124);
  v116 = v73;
  v82 = v73;
  v83 = v77;
  v115 = v74;
  v74(v81, v82, v71);
  v84 = v121;
  sub_10076C90C();
  sub_10000CD74(v124);
  v85 = v100;
  sub_10076996C();
  sub_10076994C();
  v83(v85, v79);
  v86 = v117;
  if (!v117)
  {
    [objc_allocWithZone(NSAttributedString) init];
  }

  v123[3] = v71;
  v123[4] = v119;
  v87 = sub_10000DB7C(v123);
  v115(v87, v116, v71);
  v88 = v86;
  v89 = v84;
  sub_10076C90C();
  sub_10000CD74(v123);
  v90 = v101;
  sub_10076993C();
  sub_10076994C();
  v83(v90, v122);
  v91 = v105;
  sub_1007671FC();
  sub_1007671BC();

  (*(v106 + 8))(v91, v107);
  v92 = *(v103 + 8);
  v93 = v104;
  v92(v113, v104);
  return (v92)(v102, v93);
}

uint64_t sub_10056F8FC(uint64_t a1, void *a2)
{
  sub_10076157C();
  sub_10076155C();
  v3 = sub_1007701EC();

  if (v3)
  {
    v4 = [a2 traitCollection];
    v5 = sub_10077071C();

    v6 = v5 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

id sub_10056F98C(uint64_t a1, void *a2)
{
  v3 = sub_10075DE9C();
  v45 = *(v3 - 8);
  __chkstk_darwin(v3);
  v44 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10077164C();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D1AC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076D9AC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076156C();
  if (!v16)
  {
    return 0;
  }

  v40 = v15;
  v39 = v3;
  v41 = v16;
  v38[1] = a2;
  v17 = [a2 traitCollection];
  v18 = sub_10077070C();

  if (v18)
  {
    v50[0] = v40;
    v50[1] = v41;
    v48 = 161644770;
    v49 = 0xA400000000000000;
    v46 = 0x208F80E2A280E2;
    v47 = 0xA700000000000000;
    sub_10002564C();
    sub_10077121C();

    v19 = objc_allocWithZone(NSAttributedString);
    v20 = sub_10076FF6C();

    v21 = [v19 initWithString:v20];
  }

  else
  {
    if (qword_100940C28 != -1)
    {
      swift_once();
    }

    v22 = sub_10076D3DC();
    v23 = sub_10000A61C(v22, qword_1009A1270);
    (*(*(v22 - 8) + 16))(v10, v23, v22);
    (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
    v50[3] = v7;
    v50[4] = &protocol witness table for FontSource;
    v24 = sub_10000DB7C(v50);
    (*(v8 + 16))(v24, v10, v7);
    sub_10076D9BC();
    (*(v8 + 8))(v10, v7);
    sub_10076D17C();
    sub_10076D40C();
    v26 = v25;
    (*(v42 + 8))(v6, v43);
    (*(v12 + 8))(v14, v11);
    v27 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v27 setFirstLineHeadIndent:0.0];
    [v27 setHeadIndent:v26];
    [v27 setDefaultTabInterval:v26];
    sub_100016F40(0, &unk_10095D780);
    isa = sub_1007701AC().super.isa;
    [v27 setTabStops:isa];

    [v27 setParagraphSpacing:0.0];
    v29 = v44;
    sub_10075DE6C();
    sub_10075DE1C();
    v31 = v30;
    (*(v45 + 8))(v29, v39);
    [v27 setLineHeightMultiple:v31];
    sub_10000A5D4(&unk_10094E7E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100783DD0;
    *(inited + 32) = NSParagraphStyleAttributeName;
    *(inited + 64) = sub_100016F40(0, &unk_10095D790);
    *(inited + 40) = v27;
    v33 = NSParagraphStyleAttributeName;
    v34 = v27;
    sub_1000FC5F4(inited);
    swift_setDeallocating();
    sub_1001E4F90(inited + 32);
    v35 = objc_allocWithZone(NSAttributedString);
    v36 = sub_10076FF6C();

    type metadata accessor for Key(0);
    sub_100570670(&qword_100943320, type metadata accessor for Key);
    v20 = sub_10076FE3C().super.isa;

    v21 = [v35 initWithString:v36 attributes:v20];
  }

  return v21;
}

uint64_t sub_1005700A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_10000DB7C(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_10003F19C(&v12, v10 + 40 * a1 + 32);
}

id sub_100570140(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v6 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_10076D3DC();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a4 traitCollection];
  v15 = sub_10077071C();

  if (qword_100940880 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A5D4(&qword_10094C390);
  sub_10000A61C(v16, qword_10095D6F0);
  v26 = a4;
  sub_10075FDCC();
  if ((v15 | a3))
  {
    if (qword_100940870 != -1)
    {
      swift_once();
    }

    v17 = sub_10000A5D4(&unk_100942EF0);
    v18 = qword_10095D6C0;
  }

  else
  {
    if (qword_100940878 != -1)
    {
      swift_once();
    }

    v17 = sub_10000A5D4(&unk_100942EF0);
    v18 = qword_10095D6D8;
  }

  sub_10000A61C(v17, v18);
  v25 = a4;
  sub_10075FDCC();
  v19 = v26;
  sub_1007626BC();
  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  (*(v10 + 16))(v8, v13, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_1007625DC();
  v21 = v20;
  [v21 setNumberOfLines:(v15 & 1) == 0];
  if (v15)
  {
    v22 = 0;
  }

  else
  {
    v22 = 4;
  }

  [v21 setLineBreakMode:v22];

  [v21 setTextAlignment:v19];
  v23 = sub_10076FF6C();
  [v21 setText:v23];

  (*(v10 + 8))(v13, v9);
  return v21;
}

void sub_1005704C0(uint64_t a1, void *a2)
{
  v3 = sub_10076153C();
  v5 = sub_100570140(v3, v4, 1, a2);

  v6 = sub_10076154C();
  v8 = sub_100570140(v6, v7, 1, a2);

  v9 = OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_leadingPairLabels;
  swift_beginAccess();
  v10 = v5;
  sub_10077019C();
  if (*((*(a2 + v9) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v9) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  swift_endAccess();
  v11 = OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_trailingPairLabels;
  swift_beginAccess();
  v12 = v8;
  sub_10077019C();
  if (*((*(a2 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  swift_endAccess();
  [a2 addSubview:v10];
  [a2 addSubview:v12];
}

uint64_t sub_100570670(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005706B8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v48 = sub_100763BBC();
  v3 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&qword_100949710);
  __chkstk_darwin(v5 - 8);
  v7 = &v44 - v6;
  v8 = sub_10000A5D4(&qword_100949718);
  __chkstk_darwin(v8 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v14 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v44 - v19;
  __chkstk_darwin(v21);
  v23 = &v44 - v22;
  Main = JUScreenClassGetMain();
  if (a1)
  {
    if (Main == 1)
    {
      if (qword_10093FCC0 != -1)
      {
        swift_once();
      }

      v25 = qword_10099E0F0;
    }

    else
    {
      if (qword_10093FCB8 != -1)
      {
        swift_once();
      }

      v25 = qword_10099E0D8;
    }

    v27 = sub_10000A61C(v14, v25);
    sub_10011BA50(v27, v23);
    if (qword_10093FCC8 != -1)
    {
      swift_once();
    }

    v28 = sub_10000A61C(v14, qword_10099E108);
    sub_10011BA50(v28, v13);
    v29 = 0;
  }

  else
  {
    if (Main == 1)
    {
      if (qword_10093FCB0 != -1)
      {
        swift_once();
      }

      v26 = qword_10099E0C0;
    }

    else
    {
      if (qword_10093FCA8 != -1)
      {
        swift_once();
      }

      v26 = qword_10099E0A8;
    }

    v30 = sub_10000A61C(v14, v26);
    sub_10011BA50(v30, v23);
    v29 = 1;
  }

  (*(v15 + 56))(v13, v29, 1, v14);
  if (qword_10093FC28 != -1)
  {
    swift_once();
  }

  v31 = sub_10000A61C(v14, qword_10099DF28);
  v32 = v20;
  sub_10011BA50(v31, v20);
  sub_10011BA50(v23, v17);
  sub_1005726AC(v13, v10);
  v33 = sub_100763BAC();
  v34 = *(v33 - 8);
  v45 = v10;
  v46 = v7;
  v35 = v34;
  (*(v34 + 56))(v7, 1, 1, v33);
  v36 = v47;
  v37 = v48;
  (*(v3 + 104))(v47, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v48);
  sub_1000325F0();
  v44 = sub_100770CDC();
  sub_10000CFBC(v13, &qword_100949718);
  sub_10011BAB4(v23);
  v38 = type metadata accessor for TitleHeaderView.Style(0);
  v39 = v38[8];
  v40 = v32;
  v41 = v49;
  sub_10011BB10(v40, v49, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10011BB10(v17, v41 + v38[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10013B0E8(v45, v41 + v38[6]);
  *(v41 + v38[7]) = 0;
  *(v41 + v39) = 0;
  *(v41 + v38[9]) = 1;
  *(v41 + v38[14]) = 0x4030000000000000;
  *(v41 + v38[12]) = 0;
  *(v41 + v38[13]) = v44;
  v42 = v46;
  (*(v3 + 32))(v41 + v38[11], v36, v37);
  if ((*(v35 + 48))(v42, 1, v33) != 1)
  {
    return (*(v35 + 32))(v41 + v38[10], v42, v33);
  }

  sub_10000CFBC(v42, &qword_100949710);
  return (*(v35 + 104))(v41 + v38[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:), v33);
}

uint64_t sub_100570CF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = sub_100763BBC();
  v44 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&qword_100949710);
  __chkstk_darwin(v5 - 8);
  v7 = (v37 - v6);
  v8 = sub_10000A5D4(&qword_100949718);
  __chkstk_darwin(v8 - 8);
  v10 = (v37 - v9);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = v37 - v16;
  sub_10076148C();
  sub_10076F64C();
  sub_10076FC1C();
  v18 = sub_10076140C();

  if (qword_10093FC28 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A61C(v11, qword_10099DF28);
  v41 = v17;
  sub_10011BA50(v19, v17);
  v43 = v14;
  sub_100287C1C(a1, v14);
  sub_100288094(v10);
  v20 = *(v12 + 56);
  v45 = v10;
  v20(v10, 0, 1, v11);
  if (v18)
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  v39 = v21;
  if (sub_1007706EC())
  {
    v22 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstLineCenter(_:);
  }

  else
  {
    *v7 = 0;
    v7[1] = 0;
    v22 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.corner(_:);
  }

  v23 = *v22;
  v24 = sub_100763BAC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 104);
  v37[1] = v25 + 104;
  v38 = v26;
  v26(v7, v23, v24);
  (*(v25 + 56))(v7, 0, 1, v24);
  v27 = sub_1007706EC();
  v28 = &enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:);
  if ((v27 & 1) == 0)
  {
    v28 = &enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.centered(_:);
  }

  v29 = v44;
  v30 = v40;
  v31 = v42;
  (*(v44 + 104))(v40, *v28, v42);
  sub_1000325F0();
  v32 = sub_100770CDC();
  v33 = type metadata accessor for TitleHeaderView.Style(0);
  v46 = v7;
  v34 = v33[8];
  sub_10011BB10(v41, a2, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10011BB10(v43, a2 + v33[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10013B0E8(v45, a2 + v33[6]);
  *(a2 + v33[7]) = 0;
  *(a2 + v34) = 0;
  *(a2 + v33[9]) = v39;
  *(a2 + v33[14]) = 0x4030000000000000;
  *(a2 + v33[12]) = 0;
  *(a2 + v33[13]) = v32;
  v35 = v46;
  (*(v29 + 32))(a2 + v33[11], v30, v31);
  if ((*(v25 + 48))(v35, 1, v24) != 1)
  {
    return (*(v25 + 32))(a2 + v33[10], v35, v24);
  }

  sub_10000CFBC(v35, &qword_100949710);
  return v38(a2 + v33[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:), v24);
}

uint64_t sub_10057122C()
{
  v0 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v0);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100763BBC();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&qword_100949710);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_10000A5D4(&qword_100949718);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v34 = &v28 - v17;
  sub_10000DB18(v0, qword_1009A0830);
  v32 = sub_10000A61C(v0, qword_1009A0830);
  if (qword_10093FC28 != -1)
  {
    swift_once();
  }

  v18 = sub_10000A61C(v12, qword_10099DF28);
  sub_10011BA50(v18, v34);
  if (qword_10093FC38 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A61C(v12, qword_10099DF58);
  sub_10011BA50(v19, v15);
  (*(v13 + 56))(v11, 1, 1, v12);
  v20 = enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastLineCenter(_:);
  v21 = sub_100763BAC();
  v22 = *(v21 - 8);
  v30 = v15;
  v31 = v11;
  v23 = v22;
  v29 = *(v22 + 104);
  v29(v8, v20, v21);
  (*(v23 + 56))(v8, 0, 1, v21);
  (*(v3 + 104))(v5, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v35);
  sub_1000325F0();
  v24 = sub_100770CDC();
  v33 = v8;
  v25 = v0[8];
  sub_10011BB10(v34, v2, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10011BB10(v30, &v2[v0[5]], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10013B0E8(v31, &v2[v0[6]]);
  v2[v0[7]] = 0;
  v2[v25] = 0;
  v2[v0[9]] = 0;
  *&v2[v0[14]] = 0x4030000000000000;
  *&v2[v0[12]] = 0;
  *&v2[v0[13]] = v24;
  v26 = v33;
  (*(v3 + 32))(&v2[v0[11]], v5, v35);
  if ((*(v23 + 48))(v26, 1, v21) == 1)
  {
    sub_10000CFBC(v26, &qword_100949710);
    v29(&v2[v0[10]], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v21);
  }

  else
  {
    (*(v23 + 32))(&v2[v0[10]], v26, v21);
  }

  return sub_10011BB10(v2, v32, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_100571784()
{
  v0 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v0);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100763BBC();
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&qword_100949710);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_10000A5D4(&qword_100949718);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v31 = &v27 - v17;
  sub_10000DB18(v0, qword_1009A0860);
  v29 = sub_10000A61C(v0, qword_1009A0860);
  if (qword_10093FC28 != -1)
  {
    swift_once();
  }

  v18 = sub_10000A61C(v12, qword_10099DF28);
  sub_10011BA50(v18, v31);
  if (qword_10093FCD0 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A61C(v12, qword_10099E120);
  sub_10011BA50(v19, v15);
  (*(v13 + 56))(v11, 1, 1, v12);
  v20 = sub_100763BAC();
  v21 = *(v20 - 8);
  v28 = v11;
  v22 = v21;
  (*(v21 + 56))(v8, 1, 1, v20);
  (*(v3 + 104))(v5, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v32);
  sub_1000325F0();
  v23 = sub_100770CDC();
  v30 = v8;
  v24 = v0[8];
  sub_10011BB10(v31, v2, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10011BB10(v15, &v2[v0[5]], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10013B0E8(v28, &v2[v0[6]]);
  v2[v0[7]] = 1;
  v2[v24] = 0;
  v2[v0[9]] = 0;
  *&v2[v0[14]] = 0x4030000000000000;
  *&v2[v0[12]] = 0;
  *&v2[v0[13]] = v23;
  v25 = v30;
  (*(v3 + 32))(&v2[v0[11]], v5, v32);
  if ((*(v22 + 48))(v25, 1, v20) == 1)
  {
    sub_10000CFBC(v25, &qword_100949710);
    (*(v22 + 104))(&v2[v0[10]], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v20);
  }

  else
  {
    (*(v22 + 32))(&v2[v0[10]], v25, v20);
  }

  return sub_10011BB10(v2, v29, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_100571C84()
{
  v0 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v0);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100763BBC();
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&qword_100949710);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_10000A5D4(&qword_100949718);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v31 = &v27 - v17;
  sub_10000DB18(v0, qword_1009A0878);
  v29 = sub_10000A61C(v0, qword_1009A0878);
  if (qword_10093FC28 != -1)
  {
    swift_once();
  }

  v18 = sub_10000A61C(v12, qword_10099DF28);
  sub_10011BA50(v18, v31);
  if (qword_10093FCD8 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A61C(v12, qword_10099E138);
  sub_10011BA50(v19, v15);
  (*(v13 + 56))(v11, 1, 1, v12);
  v20 = sub_100763BAC();
  v21 = *(v20 - 8);
  v28 = v11;
  v22 = v21;
  (*(v21 + 56))(v8, 1, 1, v20);
  (*(v3 + 104))(v5, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.centered(_:), v32);
  sub_1000325F0();
  v23 = sub_100770CDC();
  v30 = v8;
  v24 = v0[8];
  sub_10011BB10(v31, v2, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10011BB10(v15, &v2[v0[5]], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10013B0E8(v28, &v2[v0[6]]);
  v2[v0[7]] = 0;
  v2[v24] = 0;
  v2[v0[9]] = 0;
  *&v2[v0[14]] = 0x4030000000000000;
  *&v2[v0[12]] = 0;
  *&v2[v0[13]] = v23;
  v25 = v30;
  (*(v3 + 32))(&v2[v0[11]], v5, v32);
  if ((*(v22 + 48))(v25, 1, v20) == 1)
  {
    sub_10000CFBC(v25, &qword_100949710);
    (*(v22 + 104))(&v2[v0[10]], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v20);
  }

  else
  {
    (*(v22 + 32))(&v2[v0[10]], v25, v20);
  }

  return sub_10011BB10(v2, v29, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_1005721AC(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v34[1] = a5;
  v38 = a4;
  v7 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100763BBC();
  v10 = *(v36 - 8);
  __chkstk_darwin(v36);
  v40 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&qword_100949710);
  __chkstk_darwin(v12 - 8);
  v14 = v34 - v13;
  v15 = sub_10000A5D4(&qword_100949718);
  __chkstk_darwin(v15 - 8);
  v17 = v34 - v16;
  v18 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v39 = v34 - v23;
  sub_10000DB18(v7, a2);
  v37 = sub_10000A61C(v7, a2);
  if (qword_10093FC28 != -1)
  {
    swift_once();
  }

  v24 = sub_10000A61C(v18, qword_10099DF28);
  sub_10011BA50(v24, v39);
  if (*a3 != -1)
  {
    swift_once();
  }

  v25 = sub_10000A61C(v18, v38);
  sub_10011BA50(v25, v21);
  v26 = *(v19 + 56);
  v35 = v17;
  v26(v17, 1, 1, v18);
  v27 = sub_100763BAC();
  v28 = *(v27 - 8);
  (*(v28 + 56))(v14, 1, 1, v27);
  v29 = v36;
  (*(v10 + 104))(v40, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v36);
  sub_1000325F0();
  v30 = sub_100770CDC();
  v38 = v14;
  v31 = v7[8];
  sub_10011BB10(v39, v9, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10011BB10(v21, &v9[v7[5]], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10013B0E8(v35, &v9[v7[6]]);
  v9[v7[7]] = 0;
  v9[v31] = 0;
  v9[v7[9]] = 0;
  *&v9[v7[14]] = 0x4030000000000000;
  *&v9[v7[12]] = 0;
  *&v9[v7[13]] = v30;
  v32 = v38;
  (*(v10 + 32))(&v9[v7[11]], v40, v29);
  if ((*(v28 + 48))(v32, 1, v27) == 1)
  {
    sub_10000CFBC(v32, &qword_100949710);
    (*(v28 + 104))(&v9[v7[10]], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v27);
  }

  else
  {
    (*(v28 + 32))(&v9[v7[10]], v32, v27);
  }

  return sub_10011BB10(v9, v37, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_1005726AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100949718);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_10057271C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_screenshots;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for LockupMediaView()) init];
  v4[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_shouldDisplayMedia] = 1;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_preferredImageSizes] = _swiftEmptyDictionarySingleton;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_impressionsCalculator] = 0;
  v11 = &v4[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_impressionsUpdateBlock];
  v12 = type metadata accessor for AppSearchResultContentView();
  *v11 = 0;
  v11[1] = 0;
  v19.receiver = v4;
  v19.super_class = v12;
  v13 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_lockupView]];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_screenshots]];

  return v17;
}

void (*sub_1005728E4(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_shouldDisplayMedia) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  *a1 = Strong;
  return sub_100572964;
}

void sub_100572964(uint64_t a1, char a2)
{
  v24 = *a1;
  v4 = *(*(a1 + 8) + OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_screenshots);
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_10057C980(&qword_100942810, 255, type metadata accessor for VideoView);
      v7 = v24;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_100016F40(0, &qword_1009441F0);
        v10 = v4;
        v11 = sub_100770EEC();

        if (v11)
        {
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = v12;
            [v12 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v24;
    }

    swift_unknownObjectWeakAssign();
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = v22;
      [v4 addSubview:v22];
    }

    sub_10057E5D8();
    [v4 setNeedsLayout];

    v21 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_10057C980(&qword_100942810, 255, type metadata accessor for VideoView);
    v14 = [v6 superview];
    if (v14)
    {
      v15 = v14;
      sub_100016F40(0, &qword_1009441F0);
      v16 = v4;
      v17 = sub_100770EEC();

      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

      v18 = swift_unknownObjectWeakLoadStrong();
      if (!v18)
      {
        goto LABEL_13;
      }

      v6 = v18;
      [v18 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    [v4 addSubview:v19];
  }

  sub_10057E5D8();
  [v4 setNeedsLayout];
  v21 = v24;
LABEL_21:
}

id sub_100572C34()
{
  v1 = v0;
  v2 = sub_10076749C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007679DC();
  v138 = *(v6 - 8);
  v139 = v6;
  __chkstk_darwin(v6);
  v128 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076997C();
  v132 = *(v8 - 8);
  v133 = v8;
  __chkstk_darwin(v8);
  v131 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076443C();
  v142 = *(v10 - 8);
  v143 = v10;
  __chkstk_darwin(v10);
  v130 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v141 = &v102 - v13;
  v146 = sub_10076747C();
  v140 = *(v146 - 8);
  __chkstk_darwin(v146);
  v136 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v147 = &v102 - v16;
  v17 = sub_10000A5D4(&unk_100957F90);
  __chkstk_darwin(v17 - 8);
  v127 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v144 = &v102 - v20;
  v21 = sub_10000A5D4(&unk_100942850);
  v145 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v102 - v22;
  v24 = type metadata accessor for AppSearchResultContentView();
  v185.receiver = v0;
  v185.super_class = v24;
  objc_msgSendSuper2(&v185, "layoutSubviews");
  v25 = *&v0[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_lockupView];
  sub_10076422C();
  sub_10052225C();
  sub_10076422C();
  sub_10076422C();
  sub_100770A4C();
  result = [v25 setFrame:?];
  if (v0[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_shouldDisplayMedia] == 1)
  {
    v122 = v5;
    v123 = v3;
    v124 = v2;
    sub_10076ABBC();
    v27 = [v0 traitCollection];
    v28 = sub_10076DEDC();
    v119 = sub_10000A5D4(&unk_100942870);
    v29 = swift_allocObject();
    v135 = xmmword_1007841E0;
    *(v29 + 16) = xmmword_1007841E0;
    *(v29 + 32) = v27;
    v30 = v27;
    v129 = v28;
    v31 = sub_10076DEEC();
    v117 = sub_10001CE64();
    sub_10076D3EC();

    v33 = v145 + 8;
    v32 = *(v145 + 8);
    v121 = v21;
    v118 = v32;
    v32(v23, v21);
    sub_10076422C();
    CGRectGetMinX(v186);
    [v25 frame];
    MaxY = CGRectGetMaxY(v187);
    v35 = *&v25[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_title + 8];
    v110 = *&v25[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_title];
    v36 = *&v25[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel];
    v109 = v35;

    v37 = [v36 text];
    if (v37)
    {
      v38 = v37;
      v39 = sub_10076FF9C();
      v111 = v40;
      v112 = v39;
    }

    else
    {
      v111 = 0;
      v112 = 0;
    }

    v41 = [*&v25[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_descriptionLabel] text];
    if (v41)
    {
      v42 = v41;
      v43 = sub_10076FF9C();
      v113 = v44;
      v114 = v43;
    }

    else
    {
      v113 = 0;
      v114 = 0;
    }

    v45 = *&v25[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataRibbonView];
    v46 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metadataRibbonItemModels;
    swift_beginAccess();
    v137 = *(v45 + v46);

    v47 = v144;
    _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
    (*(v138 + 56))(v47, 0, 1, v139);
    v48 = *(*&v25[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchTagsRibbonView] + OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_metadataRibbonItemModels);
    v103 = v25[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_shouldEvenlyDistribute];
    v134 = v48;

    sub_10076422C();
    v49 = [v1 traitCollection];
    if (qword_1009407E8 != -1)
    {
      swift_once();
    }

    v50 = v146;
    v51 = sub_10000A61C(v146, qword_1009A0690);
    v115 = *(v140 + 16);
    v116 = v140 + 16;
    v115(v147, v51, v50);
    v52 = sub_10077071C();
    v125 = v1;
    v145 = v33;
    v120 = v23;
    if (v52)
    {
      if (qword_10093F520 != -1)
      {
        swift_once();
      }

      v53 = qword_100944C88;
    }

    else
    {
      if (qword_10093F528 != -1)
      {
        swift_once();
      }

      v53 = qword_100944CA0;
    }

    v54 = v143;
    v55 = sub_10000A61C(v143, v53);
    v56 = v142;
    v57 = v130;
    (*(v142 + 16))(v130, v55, v54);
    (*(v56 + 32))(v141, v57, v54);
    v58 = [v49 preferredContentSizeCategory];
    sub_10077084C();

    sub_1007643EC();
    sub_10076441C();
    sub_10076746C();
    sub_10076745C();
    v108 = sub_10076DDDC();
    swift_allocObject();
    v130 = sub_10076DDBC();
    v59 = objc_opt_self();
    v106 = v59;
    v60 = [v59 preferredFontForTextStyle:UIFontTextStyleBody];
    v61 = sub_10076C04C();
    v184[3] = v61;
    v62 = sub_10057C980(&qword_100943230, 255, &type metadata accessor for Feature);
    v184[4] = v62;
    v105 = v62;
    v63 = sub_10000DB7C(v184);
    v64 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v65 = *(v61 - 8);
    v66 = *(v65 + 104);
    v107 = v65 + 104;
    v104 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v66(v63, enum case for Feature.measurement_with_labelplaceholder(_:), v61);
    sub_10076C90C();
    v126 = v49;
    sub_10000CD74(v184);
    v67 = v131;
    sub_10076996C();
    sub_10076994C();
    v68 = v133;
    v132 = *(*&v132 + 8);
    (*&v132)(v67, v133);
    v69 = [v59 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v183[3] = v61;
    v183[4] = v62;
    v70 = sub_10000DB7C(v183);
    v66(v70, v64, v61);
    sub_10076C90C();
    sub_10000CD74(v183);
    sub_10076996C();
    sub_10076994C();
    v71 = v132;
    (*&v132)(v67, v68);
    v72 = [v106 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v182[3] = v61;
    v182[4] = v105;
    v73 = sub_10000DB7C(v182);
    v66(v73, v104, v61);
    sub_10076C90C();
    sub_10000CD74(v182);
    sub_10076996C();
    sub_10076994C();
    (*&v71)(v67, v68);
    v74 = v137;
    LODWORD(v133) = sub_10001D420(0, v137) & (v74 != 0);
    if (v133 == 1)
    {
      v75 = v108;
      v132 = MaxY;
      v76 = objc_allocWithZone(v129);
      v77 = v126;
      v78 = sub_10076DECC();
      v79 = v127;
      sub_100016E2C(v144, v127, &unk_100957F90);
      v81 = v138;
      v80 = v139;
      v82 = *(v138 + 48);
      if (v82(v79, 1, v139) == 1)
      {
        v83 = v128;
        _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
        if (v82(v79, 1, v80) != 1)
        {
          sub_10000CFBC(v79, &unk_100957F90);
        }
      }

      else
      {
        v83 = v128;
        (*(v81 + 32))(v128, v79, v80);
      }

      v86 = v78;
      sub_10001A588(v137, v83, v86);

      (*(v81 + 8))(v83, v80);
      v84 = v75;
      swift_allocObject();
      v85 = sub_10076DDAC();
    }

    else
    {
      v84 = v108;
      swift_allocObject();
      v85 = sub_10076DDBC();
    }

    v139 = v85;

    v87 = v134;
    if ((sub_10001D420(v134, 0) & (v87 != 0)) == 1)
    {
      v88 = v126;
      sub_1004EF9EC(v87, v103);
      swift_allocObject();
      v89 = sub_10076DDAC();
    }

    else
    {
      swift_allocObject();
      v89 = sub_10076DDBC();
      v88 = v126;
    }

    v115(v136, v147, v146);
    v181 = &protocol witness table for LayoutViewPlaceholder;
    v180 = v84;
    v179 = v130;
    v178 = 0;
    *&v176[40] = 0u;
    v177 = 0u;
    sub_10000A570(v184, v176);
    sub_10000A570(v183, &v175);
    v174 = 0;
    v172 = 0u;
    v173 = 0u;
    v171 = 0;
    v169 = 0u;
    v170 = 0u;

    v90 = sub_10076DDCC();
    v168 = &protocol witness table for LayoutViewPlaceholder;
    v167 = v84;
    v166 = v90;
    v165 = 0;
    v163 = 0u;
    v164 = 0u;
    v162 = 0;
    v160 = 0u;
    v161 = 0u;
    v159 = 0;
    v157 = 0u;
    v158 = 0u;
    v156 = 0;
    v155 = 0u;
    *&v154[40] = 0u;
    sub_10000A570(v182, v154);
    v152 = v84;
    v153 = &protocol witness table for LayoutViewPlaceholder;
    v150 = &protocol witness table for LayoutViewPlaceholder;
    v151 = v139;
    v149 = v84;
    v148 = v89;
    v91 = v122;
    sub_10076748C();
    v92 = swift_allocObject();
    *(v92 + 16) = v135;
    *(v92 + 32) = v88;
    v93 = v88;
    v94 = sub_10076DEEC();
    sub_10057C980(&unk_100958A50, 255, &type metadata accessor for SmallSearchLockupLayout);
    v95 = v124;
    sub_10076D2AC();

    (*(v123 + 8))(v91, v95);
    sub_10000CD74(v182);
    sub_10000CD74(v183);
    sub_10000CD74(v184);
    (*(v142 + 8))(v141, v143);
    (*(v140 + 8))(v147, v146);
    v96 = v120;
    sub_10076ABBC();
    v97 = swift_allocObject();
    *(v97 + 16) = v135;
    *(v97 + 32) = v93;
    v98 = v93;
    v99 = sub_10076DEEC();
    v100 = v121;
    sub_10076D3EC();

    v118(v96, v100);
    sub_10000CFBC(v144, &unk_100957F90);
    v101 = *&v125[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_screenshots];
    [v125 bounds];
    sub_100770A4C();
    return [v101 setFrame:?];
  }

  return result;
}

id sub_100573DE8()
{
  v1 = v0;
  sub_100522870();
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_screenshots];
  result = sub_10057EDF4();
  v4 = v1[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_shouldDisplayMedia];
  v1[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_shouldDisplayMedia] = 1;
  if ((v4 & 1) == 0)
  {
    [v2 setHidden:0];

    return [v1 setNeedsLayout];
  }

  return result;
}

unint64_t sub_100573E8C(uint64_t a1, char *a2)
{
  v3 = v2;
  v247 = a2;
  swift_getObjectType();
  v5 = sub_10000A5D4(&qword_10094A428);
  __chkstk_darwin(v5 - 8);
  v208 = &v196 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v214 = &v196 - v8;
  v9 = sub_10000A5D4(&unk_10094C030);
  __chkstk_darwin(v9 - 8);
  v225 = &v196 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v226 = &v196 - v12;
  v13 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v13 - 8);
  v224 = &v196 - v14;
  v15 = sub_1007611EC();
  __chkstk_darwin(v15 - 8);
  v212 = &v196 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v211 = &v196 - v18;
  __chkstk_darwin(v19);
  v218 = &v196 - v20;
  __chkstk_darwin(v21);
  v217 = &v196 - v22;
  v223 = sub_10076121C();
  v222 = *(v223 - 8);
  __chkstk_darwin(v223);
  v210 = &v196 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v216 = &v196 - v25;
  v219 = sub_10076481C();
  v227 = *(v219 - 8);
  __chkstk_darwin(v219);
  v213 = &v196 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v234 = &v196 - v28;
  v207 = type metadata accessor for ScreenshotDisplayConfiguration();
  v206 = *(v207 - 8);
  __chkstk_darwin(v207);
  v232 = &v196 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000A5D4(&qword_10094E260);
  __chkstk_darwin(v30 - 8);
  v32 = &v196 - v31;
  v221 = sub_10076D39C();
  v220 = *(v221 - 8);
  __chkstk_darwin(v221);
  v233 = &v196 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_10076357C();
  v230 = *(v231 - 8);
  __chkstk_darwin(v231);
  v229 = &v196 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_10076350C();
  v241 = *(v239 - 8);
  __chkstk_darwin(v239);
  v205 = &v196 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v196 - v37;
  __chkstk_darwin(v39);
  v235 = &v196 - v40;
  __chkstk_darwin(v41);
  v215 = &v196 - v42;
  __chkstk_darwin(v43);
  v238 = &v196 - v44;
  v45 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v45 - 8);
  v209 = &v196 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v237 = &v196 - v48;
  __chkstk_darwin(v49);
  v245 = &v196 - v50;
  v51 = sub_10000A5D4(&unk_1009428D0);
  __chkstk_darwin(v51 - 8);
  v53 = &v196 - v52;
  v54 = sub_10076C38C();
  v246 = *(v54 - 8);
  __chkstk_darwin(v54);
  v250 = &v196 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = sub_1007673CC();
  v56 = *(v249 - 8);
  __chkstk_darwin(v249);
  v228 = &v196 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v60 = &v196 - v59;
  sub_10075ECBC();
  sub_10057C980(&qword_10095D830, 255, &type metadata accessor for AppSearchResult);
  result = sub_10076332C();
  if (!v252[0])
  {
    return result;
  }

  v240 = v56;
  v244 = v54;
  v62 = v252[0];
  v63 = sub_10075ECAC();
  v248 = v60;
  v243 = v63;
  sub_10076285C();
  v236 = v62;
  v64 = sub_10075EC9C();
  v65 = OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_shouldDisplayMedia;
  v66 = v2[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_shouldDisplayMedia];
  v2[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_shouldDisplayMedia] = v64 & 1;
  v67 = &off_100911000;
  if ((v64 & 1) != v66)
  {
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_screenshots] setHidden:(v64 & 1) == 0];
    [v2 setNeedsLayout];
  }

  static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)();
  sub_10076C2BC();
  v68 = *&v2[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_lockupView];
  *&v68[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_regularWidthColumnSpacing] = v69;
  [v68 setNeedsLayout];
  v70 = sub_10076341C();
  (*(*(v70 - 8) + 56))(v53, 1, 1, v70);
  v71 = v3;
  v72 = v243;
  sub_100386168(v243, v53, v247);
  sub_10000CFBC(v53, &unk_1009428D0);
  v242 = v71;
  v73 = v71[v65];
  v74 = v244;
  v75 = v240;
  v76 = v248;
  if (v73 != 1 || (sub_1007673BC() & 1) == 0)
  {
LABEL_150:
    [v242 setNeedsLayout];

    (*(v246 + 8))(v250, v74);
    return (*(v75 + 8))(v76, v249);
  }

  v77 = sub_10076280C();
  if (v77 >> 62)
  {
    v78 = v77;
    v79 = sub_10077158C();
    v77 = v78;
    if (v79)
    {
      goto LABEL_8;
    }

LABEL_13:

    v201 = 0;
    goto LABEL_14;
  }

  if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((v77 & 0xC000000000000001) != 0)
  {
    v201 = sub_10077149C();
  }

  else
  {
    if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_79;
    }

    v201 = *(v77 + 32);
  }

LABEL_14:
  v67 = *&v242[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_screenshots];
  v202 = sub_10076283C();
  v204 = sub_10076281C();
  v80 = sub_10076288C();
  if (v80 >> 62)
  {
    v81 = v80;
    v82 = sub_10077158C();
    v80 = v81;
    if (v82)
    {
      goto LABEL_16;
    }

LABEL_21:

    v203 = 0;
    goto LABEL_22;
  }

  if (!*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

LABEL_16:
  if ((v80 & 0xC000000000000001) != 0)
  {
    v203 = sub_10077149C();
  }

  else
  {
    if (!*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_81;
    }

    v203 = *(v80 + 32);
  }

LABEL_22:
  type metadata accessor for ContentSearchResultCollectionViewCell();
  v83 = ASKDeviceTypeGetCurrent();
  swift_getKeyPath();
  sub_10076338C();

  v84 = v252[0];
  sub_100299B1C(v245);

  a1 = sub_10076283C();
  v53 = sub_10076281C();
  v85 = sub_10076280C();
  if (v85 >> 62)
  {
    v86 = v85;
    v87 = sub_10077158C();
    v85 = v86;
    if (v87)
    {
LABEL_24:
      if ((v85 & 0xC000000000000001) == 0)
      {
        if (!*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_83;
        }

        v84 = *(v85 + 32);

        goto LABEL_27;
      }

LABEL_79:
      v84 = sub_10077149C();
LABEL_27:

      goto LABEL_30;
    }
  }

  else if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_24;
  }

  v84 = 0;
LABEL_30:
  v85 = sub_10076288C();
  if (v85 >> 62)
  {
    v89 = v85;
    v90 = sub_10077158C();
    v85 = v89;
    v72 = v84;
    if (v90)
    {
LABEL_32:
      if ((v85 & 0xC000000000000001) == 0)
      {
        if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v88 = *(v85 + 32);

LABEL_35:

          goto LABEL_38;
        }

LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

LABEL_81:
      v88 = sub_10077149C();
      goto LABEL_35;
    }
  }

  else
  {
    v72 = v84;
    if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_32;
    }
  }

  v88 = 0;
LABEL_38:
  if ((sub_1007673BC() & 1) == 0)
  {

    v53 = v241;
    v95 = v238;
    v84 = v239;
    (*(v241 + 104))(v238, enum case for LockupMediaLayout.DisplayType.none(_:), v239);
    v91 = v204;
LABEL_46:
    v38 = v201;
    goto LABEL_68;
  }

  v91 = v204;
  if (v53 | a1)
  {
    v96 = v215;
    sub_10076D3AC();

    v53 = v241;
    v84 = v239;
    (*(v241 + 104))(v96, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v239);
    v95 = v238;
    (*(v53 + 32))(v238, v96, v84);
    goto LABEL_46;
  }

  v92 = sub_10057F8EC(v72, v88, 0, 1);
  v53 = v92;
  v84 = (v92 >> 62);
  if (v92 >> 62)
  {
    goto LABEL_132;
  }

  for (i = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {
    v200 = i;
    v94 = v72 ? sub_1007601CC() : 0;
    v97 = sub_10057FC34(v94);

    v197 = v97;
    v98 = v72 ? sub_1007601CC() : 0;
    v99 = v249;
    (*(v75 + 16))(v32, v248, v249);
    (*(v75 + 56))(v32, 0, 1, v99);
    a1 = sub_10058015C(v98, v32);

    sub_10000CFBC(v32, &qword_10094E260);
    if (v84 ? sub_10077158C() : *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      if ((v53 & 0xC000000000000001) != 0)
      {
        sub_10077149C();
      }

      else
      {
        if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_154;
        }
      }

      v101 = sub_10076BDCC();

      if (v101)
      {

        v53 = v241;
        v102 = v215;
        v84 = v239;
        (*(v241 + 104))(v215, enum case for LockupMediaLayout.DisplayType.landscape(_:), v239);
LABEL_66:
        v95 = v238;
        v91 = v204;
        v38 = v201;
        goto LABEL_67;
      }
    }

    else
    {
    }

    v103 = a1;
    v104 = v241;
    v105 = v239;
    v199 = *(v241 + 104);
    v198 = v241 + 104;
    (v199)(v38, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v239);
    v106 = sub_1007634FC();
    v196 = *(v104 + 8);
    v196(v38, v105);
    if (((v200 >= v106) & v103) != 0 || ((v199)(v38, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v105), v107 = sub_1007634FC(), v196(v38, v105), ((v200 >= v107) & v197) != 0) || ((v199)(v38, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v105), v108 = sub_1007634FC(), v196(v38, v105), v200 >= v108))
    {

      v102 = v215;
      v199();
      v84 = v105;
      v53 = v241;
      goto LABEL_66;
    }

    (v199)(v38, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v105);
    sub_1007634FC();

    v196(v38, v105);
    v109 = v105;
    v102 = v215;
    v199();
    v53 = v241;
    v95 = v238;
    v91 = v204;
    v38 = v201;
    v84 = v109;
LABEL_67:
    (*(v53 + 32))(v95, v102, v84);
LABEL_68:
    v32 = v235;

    v252[3] = &type metadata for CGFloat;
    v252[4] = &protocol witness table for CGFloat;
    v252[0] = 0x4021000000000000;
    sub_10000A570(v252, v251);
    v72 = v53 + 16;
    v110 = v95;
    a1 = *(v53 + 16);
    (a1)(v32, v110, v84);
    if (v91 | v202)
    {
      goto LABEL_86;
    }

    v85 = sub_10057F8EC(v38, v203, 0, 1);
    if (v85 >> 62)
    {
      break;
    }

    if (!*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_85;
    }

LABEL_71:
    if ((v85 & 0xC000000000000001) != 0)
    {
      sub_10077149C();
      goto LABEL_74;
    }

    if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

LABEL_74:

      sub_10076BEFC();
      sub_10076D3AC();

      goto LABEL_87;
    }

    __break(1u);
LABEL_132:
    ;
  }

LABEL_84:
  v111 = v85;
  v112 = sub_10077158C();
  v85 = v111;
  if (v112)
  {
    goto LABEL_71;
  }

LABEL_85:

LABEL_86:
  sub_10076D3AC();
LABEL_87:
  sub_100016E2C(v245, v237, &unk_1009467E0);
  v113 = v229;
  sub_10076354C();
  sub_10000CD74(v252);
  v114 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_metrics;
  swift_beginAccess();
  v115 = v230;
  v116 = v67 + v114;
  v117 = v231;
  (*(v230 + 24))(v116, v113, v231);
  swift_endAccess();
  [v67 setNeedsLayout];
  (*(v115 + 8))(v113, v117);
  if (v38)
  {
    v118 = sub_1007601CC();
  }

  else
  {
    v118 = 0;
  }

  sub_1007601EC();
  v119 = v232;
  sub_10007AFB4(v118, v232);

  v120 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  sub_100125E2C(v119, v67 + v120);
  swift_endAccess();
  sub_10057D9D0();
  sub_100125E90(v119);
  if (v38)
  {
    v121 = sub_1007601CC();
  }

  else
  {
    v121 = 0;
  }

  v122 = v228;
  *(v67 + OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_platform) = v121;

  sub_10057DBD4();

  v123 = v249;
  (*(v75 + 16))(v122, v248, v249);
  v124 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v75 + 24))(v67 + v124, v122, v123);
  swift_endAccess();
  [v67 setNeedsLayout];
  (*(v75 + 8))(v122, v123);
  if (v204)
  {
    (*(v222 + 104))(v216, enum case for VideoFillMode.scaleAspectFill(_:), v223);

    sub_10076B84C();
    sub_10076BEFC();
    v125 = v237;
    sub_10076D3AC();

    (*(v220 + 56))(v125, 0, 1, v221);
    sub_10076B7EC();
    sub_10076B82C();
    sub_10076B7FC();
    sub_10076B7DC();
    sub_10076B83C();
    sub_1007647FC();
    sub_100762F0C();
    sub_10076F5CC();
    sub_10076B7CC();
    v126 = v67;
    v127 = v224;
    sub_10076B85C();
    v128 = sub_10075DB7C();
    (*(*(v128 - 8) + 56))(v127, 0, 1, v128);
    v129 = v226;
    sub_10076B81C();
    v130 = v225;
    sub_10076B80C();
    type metadata accessor for VideoView();
    sub_10057C980(&qword_100942810, 255, type metadata accessor for VideoView);
    v131 = sub_100762EEC();
    sub_10000CFBC(v130, &unk_10094C030);
    sub_10000CFBC(v129, &unk_10094C030);
    v132 = v127;
    v67 = v126;
    sub_10000CFBC(v132, &unk_1009435D0);
    sub_10000CFBC(v252, &qword_100943310);
    Strong = swift_unknownObjectWeakLoadStrong();
    v53 = v241;
    if (Strong)
    {
      v134 = Strong;
      v135 = [Strong superview];
      if (!v135)
      {
        goto LABEL_99;
      }

      v136 = v135;
      sub_100016F40(0, &qword_1009441F0);
      v137 = v126;
      v138 = sub_100770EEC();

      if (v138)
      {
        v139 = swift_unknownObjectWeakLoadStrong();
        if (v139)
        {
          v134 = v139;
          [v139 removeFromSuperview];
LABEL_99:
        }
      }
    }

    swift_unknownObjectWeakAssign();
    v140 = swift_unknownObjectWeakLoadStrong();
    if (v140)
    {
      v141 = v140;
      [v67 addSubview:v140];
    }

    sub_10057E5D8();
    [v67 setNeedsLayout];

    v142 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
    v143 = *(v67 + OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView);
    v75 = v240;
    v144 = v219;
    if (v143)
    {
      [v143 removeFromSuperview];
      v145 = *(v67 + v142);
    }

    else
    {
      v145 = 0;
    }

    v74 = v244;
    *(v67 + v142) = 0;

    [v67 setNeedsLayout];

    (*(v227 + 8))(v234, v144);
LABEL_148:
    v181 = v238;
LABEL_149:
    [v67 setNeedsLayout];

    (*(v53 + 8))(v181, v239);
    sub_10000CFBC(v245, &unk_1009467E0);
    v76 = v248;
    goto LABEL_150;
  }

  v53 = v241;
  if (!v203)
  {
    goto LABEL_135;
  }

  result = sub_10076C41C();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_107;
    }

LABEL_134:

LABEL_135:
    v184 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
    v185 = *(v67 + OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView);
    if (v185)
    {
      [v185 removeFromSuperview];
      v186 = *(v67 + v184);
    }

    else
    {
      v186 = 0;
    }

    v74 = v244;
    *(v67 + v184) = 0;

    [v67 setNeedsLayout];
    v187 = swift_unknownObjectWeakLoadStrong();
    if (v187)
    {
      v188 = v187;
      sub_10057C980(&qword_100942810, 255, type metadata accessor for VideoView);
      v189 = [v188 superview];
      if (v189)
      {
        v190 = v189;
        sub_100016F40(0, &qword_1009441F0);
        v191 = v67;
        v192 = sub_100770EEC();

        v74 = v244;
        if (v192)
        {
          v193 = swift_unknownObjectWeakLoadStrong();
          if (v193)
          {
            v188 = v193;
            [v193 removeFromSuperview];
            goto LABEL_144;
          }
        }
      }

      else
      {
        v74 = v244;
LABEL_144:
      }
    }

    swift_unknownObjectWeakAssign();
    v194 = swift_unknownObjectWeakLoadStrong();
    if (v194)
    {
      v195 = v194;
      [v67 addSubview:v194];
    }

    sub_10057E5D8();
    [v67 setNeedsLayout];
    goto LABEL_148;
  }

  v182 = result;
  v183 = sub_10077158C();
  result = v182;
  if (!v183)
  {
    goto LABEL_134;
  }

LABEL_107:
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_154:
    sub_10077149C();
LABEL_110:
    v146 = v67;
    v201 = v38;

    v147 = v205;
    v148 = v239;
    (a1)(v205, v238, v239);
    v149 = (*(v53 + 88))(v147, v148);
    v150 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    (*(v53 + 8))(v147, v148);
    if (v149 == v150)
    {
      v151 = 1;
      v152 = v214;
    }

    else
    {
      v153 = sub_10076C40C();
      v152 = v214;
      sub_10007AFB4(v153, v214);

      v151 = 0;
    }

    v154 = v226;
    v155 = v207;
    v156 = v223;
    v157 = v222;
    v158 = v206;
    v159 = v221;
    (*(v206 + 56))(v152, v151, 1, v207);
    (*(v157 + 104))(v210, enum case for VideoFillMode.scaleAspectFill(_:), v156);
    sub_10076B84C();
    sub_10076BEFC();
    v160 = v209;
    sub_10076D3AC();

    (*(v220 + 56))(v160, 0, 1, v159);
    sub_10076B7EC();
    sub_10076B82C();
    sub_10076B7FC();
    sub_10076B7DC();
    sub_10076B83C();
    v161 = v152;
    v162 = v208;
    sub_100016E2C(v161, v208, &qword_10094A428);
    if ((*(v158 + 48))(v162, 1, v155) == 1)
    {
      sub_10000CFBC(v162, &qword_10094A428);
    }

    else
    {
      sub_100125E90(v162);
    }

    v67 = v146;
    sub_1007647FC();
    sub_100762F0C();
    sub_10076F5CC();
    sub_10076B7CC();
    v163 = v224;
    sub_10076B85C();
    v164 = sub_10075DB7C();
    (*(*(v164 - 8) + 56))(v163, 0, 1, v164);
    sub_10076B81C();
    v165 = v225;
    sub_10076B80C();
    type metadata accessor for VideoView();
    sub_10057C980(&qword_100942810, 255, type metadata accessor for VideoView);
    v166 = sub_100762EEC();
    sub_10000CFBC(v165, &unk_10094C030);
    sub_10000CFBC(v154, &unk_10094C030);
    sub_10000CFBC(v163, &unk_1009435D0);
    sub_10000CFBC(v252, &qword_100943310);
    v167 = swift_unknownObjectWeakLoadStrong();
    if (v167)
    {
      v168 = v167;
      v169 = [v167 superview];
      if (v169)
      {
        v170 = v169;
        sub_100016F40(0, &qword_1009441F0);
        v171 = v67;
        v172 = sub_100770EEC();

        v75 = v240;
        if ((v172 & 1) == 0)
        {
          goto LABEL_124;
        }

        v173 = swift_unknownObjectWeakLoadStrong();
        if (!v173)
        {
          goto LABEL_124;
        }

        v168 = v173;
        [v173 removeFromSuperview];
      }
    }

LABEL_124:
    swift_unknownObjectWeakAssign();
    v174 = swift_unknownObjectWeakLoadStrong();
    if (v174)
    {
      v175 = v174;
      [v67 addSubview:v174];
    }

    sub_10057E5D8();
    [v67 setNeedsLayout];

    v176 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
    v177 = *(v67 + OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView);
    v53 = v241;
    v178 = v238;
    if (v177)
    {
      [v177 removeFromSuperview];
      v179 = *(v67 + v176);
    }

    else
    {
      v179 = 0;
    }

    v180 = v219;
    *(v67 + v176) = 0;

    [v67 setNeedsLayout];

    (*(v227 + 8))(v213, v180);
    sub_10000CFBC(v214, &qword_10094A428);
    v74 = v244;
    v181 = v178;
    goto LABEL_149;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_110;
  }

  __break(1u);
  return result;
}

uint64_t sub_100576294()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  if (*(v0 + v1))
  {

    sub_10076611C();
  }

  *(v0 + v1) = 0;

  v2 = (v0 + OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_1000167E0(v3);
  return sub_100522B20();
}

id sub_100576354()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10057643C()
{
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_shouldDisplayMedia) == 1)
  {
    return swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    return 0;
  }
}

void sub_100576490(void *a1)
{
  sub_10057C80C();
}

uint64_t (*sub_1005764C8(uint64_t **a1))()
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
  v2[4] = sub_1005728E4(v2);
  return sub_100019A4C;
}

uint64_t sub_100576580(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100576638()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1);
  return v2;
}

uint64_t sub_100576694(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6);
}

uint64_t sub_100576754()
{
  type metadata accessor for SearchTagsRibbonView();
  sub_10057C980(&qword_10095C6D0, 255, type metadata accessor for SearchTagsRibbonView);
  return sub_10076A03C();
}

uint64_t sub_100576800(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100576854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_1005768C0(uint64_t *a1))()
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

uint64_t sub_10057695C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_screenshots);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100016F40(0, &qword_1009441F0);
  v5 = v2;
  v6 = sub_100770EEC();

  return v6 & 1;
}

uint64_t sub_100576B18(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_10057C980(&qword_10095D818, a2, type metadata accessor for AppSearchResultContentView);
  result = sub_10057C980(&unk_10095D820, v3, type metadata accessor for AppSearchResultContentView);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100576B9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&unk_100942850);
  v145 = *(v6 - 8);
  v146 = v6;
  __chkstk_darwin(v6);
  v144 = &v112 - v7;
  v8 = sub_10076749C();
  v142 = *(v8 - 8);
  v143 = v8;
  __chkstk_darwin(v8);
  v141 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_1007679DC();
  *&v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v134 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076997C();
  v138 = *(v11 - 8);
  v139 = v11;
  __chkstk_darwin(v11);
  v137 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076443C();
  v152 = *(v13 - 8);
  v153 = v13;
  __chkstk_darwin(v13);
  v15 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v151 = &v112 - v17;
  v155 = sub_10076747C();
  v150 = *(v155 - 8);
  __chkstk_darwin(v155);
  v140 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v156 = &v112 - v20;
  v21 = sub_10000A5D4(&unk_100957F90);
  __chkstk_darwin(v21 - 8);
  v133 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v154 = &v112 - v24;
  v25 = sub_1007673CC();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = (&v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_10076BF6C();
  __chkstk_darwin(v29 - 8);
  sub_10000A570(a1, v193);
  sub_10000A5D4(&unk_100942830);
  sub_10075ECBC();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v135 = v192[0];
  v136 = v28;
  sub_10075ECAC();

  if (sub_10076BB5C())
  {
    v130 = a2;
    v131 = v26;
    v129 = v25;
    v132 = v2;
    v31 = *&v2[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_lockupView];
    v32 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
    v33 = qword_10093FBE0;
    v34 = *(v31 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    if (v33 != -1)
    {
      swift_once();
    }

    v35 = sub_100763ADC();
    sub_10000A61C(v35, qword_10099DDA0);
    sub_1007639AC();
    [v34 contentMode];
    sub_10076BFCC();
    sub_10076BF7C();
    sub_10075FCCC();
    [v34 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100016F40(0, &qword_100942F10);
      sub_100770D5C();
    }

    sub_10075FB8C();
    v36 = *(v31 + v32);
    sub_10075FD2C();
    sub_10057C980(&qword_100941820, 255, &type metadata accessor for ArtworkView);
    v37 = v36;
    a2 = v130;
    sub_100760B8C();

    v26 = v131;
    v3 = v132;
    v25 = v129;
  }

  v38 = *(*&v3[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_lockupView] + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataRibbonView);
  sub_1005215E8(a1, a2);

  v39 = v136;
  sub_10076285C();
  if ((sub_10075EC9C() & 1) == 0 || (sub_1007673BC() & 1) == 0)
  {

    goto LABEL_50;
  }

  v129 = v25;
  sub_10076BB6C();
  v117 = v40;
  v41 = sub_10076BBEC();
  v118 = v42;
  v119 = v41;
  v43 = sub_10076BB0C();

  if (v43 && (v44 = sub_10076518C(), , v44))
  {
    v45 = sub_10076C3EC();
    v120 = v46;
    v121 = v45;
  }

  else
  {
    v120 = 0;
    v121 = 0;
  }

  v128 = sub_10076282C();
  v47 = v154;
  _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
  (*(v147 + 56))(v47, 0, 1, v148);
  v127 = sub_10076284C();
  v112 = sub_10076286C();
  v48 = [v3 traitCollection];
  if (qword_1009407E8 != -1)
  {
    swift_once();
  }

  v49 = v155;
  v50 = sub_10000A61C(v155, qword_1009A0690);
  v123 = *(v150 + 16);
  v124 = v150 + 16;
  v123(v156, v50, v49);
  v51 = sub_10077071C();
  v130 = a2;
  v131 = v26;
  v132 = v3;
  if ((v51 & 1) == 0)
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v52 = qword_100944CA0;
    goto LABEL_23;
  }

  if (qword_10093F520 != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v52 = qword_100944C88;
LABEL_23:
    v53 = v153;
    v54 = sub_10000A61C(v153, v52);
    v55 = v152;
    (*(v152 + 16))(v15, v54, v53);
    (*(v55 + 32))(v151, v15, v53);
    v56 = [v48 preferredContentSizeCategory];
    sub_10077084C();

    sub_1007643EC();
    sub_10076441C();
    sub_10076746C();
    sub_10076745C();
    v122 = sub_10076DDDC();
    swift_allocObject();
    v125 = sub_10076DDBC();
    v57 = objc_opt_self();
    v126 = v48;
    v58 = v57;
    v115 = v57;
    v59 = [v57 preferredFontForTextStyle:UIFontTextStyleBody];
    v60 = sub_10076C04C();
    v193[3] = v60;
    v61 = sub_10057C980(&qword_100943230, 255, &type metadata accessor for Feature);
    v193[4] = v61;
    v114 = v61;
    v62 = sub_10000DB7C(v193);
    v63 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v64 = *(v60 - 8);
    v65 = *(v64 + 104);
    v116 = v64 + 104;
    v113 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v65(v62, enum case for Feature.measurement_with_labelplaceholder(_:), v60);
    sub_10076C90C();
    sub_10000CD74(v193);
    v66 = v137;
    sub_10076996C();
    sub_10076994C();
    v67 = v139;
    v138 = *(v138 + 8);
    (v138)(v66, v139);
    v68 = [v58 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v192[3] = v60;
    v192[4] = v61;
    v69 = sub_10000DB7C(v192);
    v65(v69, v63, v60);
    sub_10076C90C();
    sub_10000CD74(v192);
    sub_10076996C();
    sub_10076994C();
    v70 = v138;
    (v138)(v66, v67);
    v71 = [v115 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v191[3] = v60;
    v191[4] = v114;
    v72 = sub_10000DB7C(v191);
    v65(v72, v113, v60);
    sub_10076C90C();
    sub_10000CD74(v191);
    sub_10076996C();
    sub_10076994C();
    v70(v66, v67);
    v73 = v128;
    LODWORD(v139) = sub_10001D420(0, v128) & (v73 != 0);
    if (v139 == 1)
    {
      v74 = objc_allocWithZone(sub_10076DEDC());
      v75 = v126;
      v76 = sub_10076DECC();
      v77 = v133;
      sub_100016E2C(v154, v133, &unk_100957F90);
      v78 = v147;
      v79 = *(v147 + 48);
      v80 = v148;
      if (v79(v77, 1, v148) == 1)
      {
        v81 = v134;
        _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
        if (v79(v77, 1, v80) != 1)
        {
          sub_10000CFBC(v77, &unk_100957F90);
        }
      }

      else
      {
        v81 = v134;
        (*(v78 + 32))(v134, v77, v80);
      }

      v84 = v76;
      sub_10001A588(v128, v81, v84);

      (*(v78 + 8))(v81, v80);
      v82 = v122;
      swift_allocObject();
      v83 = sub_10076DDAC();
    }

    else
    {
      v82 = v122;
      swift_allocObject();
      v83 = sub_10076DDBC();
    }

    v85 = v83;

    v86 = v127;
    if ((sub_10001D420(v127, 0) & (v86 != 0)) == 1)
    {
      sub_1004EF9EC(v86, v112 & 1);
      swift_allocObject();
      v87 = sub_10076DDAC();
    }

    else
    {
      swift_allocObject();
      v87 = sub_10076DDBC();
    }

    v88 = v87;
    v123(v140, v156, v155);
    v190 = &protocol witness table for LayoutViewPlaceholder;
    v189 = v82;
    v188 = v125;
    v187 = 0;
    *&v185[40] = 0u;
    v186 = 0u;
    sub_10000A570(v193, v185);
    sub_10000A570(v192, &v184);
    v183 = 0;
    v181 = 0u;
    v182 = 0u;
    v180 = 0;
    v178 = 0u;
    v179 = 0u;

    v148 = v88;
    v89 = sub_10076DDCC();
    v177 = &protocol witness table for LayoutViewPlaceholder;
    v176 = v82;
    v175 = v89;
    v174 = 0;
    v172 = 0u;
    v173 = 0u;
    v171 = 0;
    v169 = 0u;
    v170 = 0u;
    v168 = 0;
    v166 = 0u;
    v167 = 0u;
    v165 = 0;
    v164 = 0u;
    *&v163[40] = 0u;
    sub_10000A570(v191, v163);
    v161 = v82;
    v162 = &protocol witness table for LayoutViewPlaceholder;
    v159 = &protocol witness table for LayoutViewPlaceholder;
    v160 = v85;
    v158 = v82;
    v157 = v88;
    v90 = v141;
    sub_10076748C();
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870);
    v91 = swift_allocObject();
    v147 = xmmword_1007841E0;
    *(v91 + 16) = xmmword_1007841E0;
    v92 = v126;
    *(v91 + 32) = v126;
    v48 = v92;
    v93 = sub_10076DEEC();
    sub_10057C980(&unk_100958A50, 255, &type metadata accessor for SmallSearchLockupLayout);
    v94 = v143;
    sub_10076D2AC();

    (*(v142 + 8))(v90, v94);
    sub_10000CD74(v191);
    sub_10000CD74(v192);
    sub_10000CD74(v193);
    (*(v152 + 8))(v151, v153);
    (*(v150 + 8))(v156, v155);
    v95 = v144;
    sub_10076ABBC();
    v96 = swift_allocObject();
    *(v96 + 16) = v147;
    *(v96 + 32) = v48;
    v97 = v48;
    v98 = sub_10076DEEC();
    sub_10001CE64();
    v99 = v146;
    sub_10076D3EC();

    (*(v145 + 8))(v95, v99);
    sub_10000CFBC(v154, &unk_100957F90);
    v100 = v132;
    v15 = sub_10076283C();
    v101 = sub_10076281C();
    v102 = sub_10076280C();
    if (v102 >> 62)
    {
      v104 = v102;
      v105 = sub_10077158C();
      v102 = v104;
      v26 = v131;
      if (!v105)
      {
LABEL_40:

        v103 = 0;
        goto LABEL_41;
      }
    }

    else
    {
      v26 = v131;
      if (!*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }
    }

    if ((v102 & 0xC000000000000001) != 0)
    {
      v48 = v102;
      v103 = sub_10077149C();
    }

    else
    {
      if (!*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_55;
      }

      v48 = v102;
      v103 = *(v102 + 32);
    }

LABEL_41:
    v106 = sub_10076288C();
    if (!(v106 >> 62))
    {
      if (!*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_43;
    }

    v108 = v106;
    v109 = sub_10077158C();
    v106 = v108;
    if (!v109)
    {
      break;
    }

LABEL_43:
    if ((v106 & 0xC000000000000001) != 0)
    {
      v107 = sub_10077149C();
      goto LABEL_46;
    }

    if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v107 = *(v106 + 32);

LABEL_46:

      goto LABEL_49;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    swift_once();
  }

  v107 = 0;
LABEL_49:
  v110 = [v100 traitCollection];
  v111 = v136;
  sub_100140784(v15, v101, v103, v107, v110, v130, v136);

  v39 = v111;

  v25 = v129;
LABEL_50:

  return (*(v26 + 8))(v39, v25);
}

uint64_t sub_100577FCC(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_10094E260);
  __chkstk_darwin(v2 - 8);
  v164 = &v161 - v3;
  v4 = sub_10076350C();
  v191 = *(v4 - 8);
  v192 = v4;
  __chkstk_darwin(v4);
  v6 = &v161 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v165 = &v161 - v8;
  __chkstk_darwin(v9);
  v185 = &v161 - v10;
  v11 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v161 - v12;
  v14 = sub_10000A5D4(&unk_100942850);
  v189 = *(v14 - 8);
  v190 = v14;
  __chkstk_darwin(v14);
  v188 = &v161 - v15;
  v16 = sub_10076749C();
  v199 = *(v16 - 8);
  v200 = v16;
  __chkstk_darwin(v16);
  v198 = &v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_1007679DC();
  *&v205 = *(v206 - 8);
  __chkstk_darwin(v206);
  v187 = &v161 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10076997C();
  v195 = *(v19 - 8);
  v196 = v19;
  __chkstk_darwin(v19);
  v194 = &v161 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10076443C();
  v213 = *(v21 - 8);
  v214 = v21;
  __chkstk_darwin(v21);
  v23 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v212 = &v161 - v25;
  v216 = sub_10076747C();
  v211 = *(v216 - 8);
  __chkstk_darwin(v216);
  v197 = &v161 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v217 = &v161 - v28;
  v29 = sub_10000A5D4(&unk_100957F90);
  __chkstk_darwin(v29 - 8);
  v186 = &v161 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v215 = &v161 - v32;
  v33 = sub_10076469C();
  __chkstk_darwin(v33 - 8);
  v34 = sub_10076C38C();
  v193 = *(v34 - 8);
  __chkstk_darwin(v34);
  v210 = &v161 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1007673CC();
  v201 = *(v36 - 8);
  v202 = v36;
  __chkstk_darwin(v36);
  v38 = &v161 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075ECBC();
  sub_10057C980(&qword_10095D830, 255, &type metadata accessor for AppSearchResult);
  result = sub_10076332C();
  v40 = v254[0];
  if (!v254[0])
  {
    return result;
  }

  v162 = v6;
  v41 = sub_10075ECAC();
  v207 = v38;
  v208 = v41;
  sub_10076285C();
  sub_1007632FC();
  if (qword_100940540 != -1)
  {
    swift_once();
  }

  sub_10076C32C();
  sub_10076C2FC();
  v168 = v40;
  v42 = sub_10075EC9C();
  v169 = v34;
  if (v42)
  {
    v184 = sub_1007673BC();
  }

  else
  {
    v184 = 0;
  }

  v43 = v205;

  v174 = sub_10076BB6C();
  v175 = v44;
  v45 = sub_10076BBEC();
  v176 = v46;
  v177 = v45;
  v47 = sub_10076BB0C();

  if (v47 && (v48 = sub_10076518C(), , v48))
  {
    v49 = sub_10076C3EC();
    v178 = v50;
    v179 = v49;
  }

  else
  {
    v178 = 0;
    v179 = 0;
  }

  v51 = v206;
  v209 = sub_10076282C();
  v52 = v215;
  _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
  (*(v43 + 56))(v52, 0, 1, v51);
  v204 = sub_10076284C();
  v163 = sub_10076286C();
  swift_getKeyPath();
  sub_10076338C();

  v53 = v254[5];
  if (qword_1009407E8 != -1)
  {
    swift_once();
  }

  v54 = v216;
  v55 = sub_10000A61C(v216, qword_1009A0690);
  v181 = *(v211 + 16);
  v182 = v211 + 16;
  v181(v217, v55, v54);
  v56 = sub_10077071C();
  v166 = v13;
  v167 = a1;
  if (v56)
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

  v58 = v214;
  v59 = sub_10000A61C(v214, v57);
  v60 = v213;
  (*(v213 + 16))(v23, v59, v58);
  (*(v60 + 32))(v212, v23, v58);
  v61 = [v53 preferredContentSizeCategory];
  sub_10077084C();

  sub_1007643EC();
  sub_10076441C();
  sub_10076746C();
  sub_10076745C();
  v180 = sub_10076DDDC();
  swift_allocObject();
  v183 = sub_10076DDBC();
  v62 = objc_opt_self();
  v172 = v62;
  v63 = [v62 preferredFontForTextStyle:UIFontTextStyleBody];
  v64 = sub_10076C04C();
  v254[3] = v64;
  v65 = sub_10057C980(&qword_100943230, 255, &type metadata accessor for Feature);
  v254[4] = v65;
  v171 = v65;
  v66 = sub_10000DB7C(v254);
  v67 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v68 = *(v64 - 8);
  v69 = *(v68 + 104);
  v173 = v68 + 104;
  v170 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v69(v66, enum case for Feature.measurement_with_labelplaceholder(_:), v64);
  sub_10076C90C();
  sub_10000CD74(v254);
  v70 = v194;
  sub_10076996C();
  sub_10076994C();
  v203 = v53;
  v71 = v196;
  v195 = *(v195 + 8);
  (v195)(v70, v196);
  v72 = [v62 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v253[3] = v64;
  v253[4] = v65;
  v73 = sub_10000DB7C(v253);
  v69(v73, v67, v64);
  sub_10076C90C();
  sub_10000CD74(v253);
  sub_10076996C();
  sub_10076994C();
  v74 = v195;
  (v195)(v70, v71);
  v75 = [v172 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v252[3] = v64;
  v252[4] = v171;
  v76 = sub_10000DB7C(v252);
  v69(v76, v170, v64);
  sub_10076C90C();
  sub_10000CD74(v252);
  sub_10076996C();
  sub_10076994C();
  v74(v70, v71);
  v77 = v209;
  if ((sub_10001D420(0, v209) & (v77 != 0)) == 1)
  {
    v78 = objc_allocWithZone(sub_10076DEDC());
    v79 = v203;
    v80 = sub_10076DECC();
    v81 = v186;
    sub_100016E2C(v215, v186, &unk_100957F90);
    v82 = v205;
    v83 = *(v205 + 48);
    v84 = v206;
    if (v83(v81, 1, v206) == 1)
    {
      v85 = v187;
      _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
      if (v83(v81, 1, v84) != 1)
      {
        sub_10000CFBC(v81, &unk_100957F90);
      }
    }

    else
    {
      v85 = v187;
      (*(v82 + 32))(v187, v81, v84);
    }

    v88 = v80;
    sub_10001A588(v209, v85, v88);

    (*(v82 + 8))(v85, v84);
    v86 = v180;
    swift_allocObject();
    v87 = sub_10076DDAC();
  }

  else
  {
    v86 = v180;
    swift_allocObject();
    v87 = sub_10076DDBC();
  }

  v89 = v87;

  v90 = v204;
  if ((sub_10001D420(v204, 0) & (v90 != 0)) == 1)
  {
    sub_1004EF9EC(v90, v163 & 1);
    swift_allocObject();
    v91 = sub_10076DDAC();
  }

  else
  {
    swift_allocObject();
    v91 = sub_10076DDBC();
  }

  v92 = v91;
  v181(v197, v217, v216);
  v251 = &protocol witness table for LayoutViewPlaceholder;
  v250 = v86;
  v93 = v86;
  v94 = v183;
  v249 = v183;
  v248 = 0;
  *&v246[40] = 0u;
  v247 = 0u;
  sub_10000A570(v254, v246);
  sub_10000A570(v253, &v245);
  v244 = 0;
  v242 = 0u;
  v243 = 0u;
  v241 = 0;
  v239 = 0u;
  v240 = 0u;

  v95 = sub_10076DDCC();
  v238 = &protocol witness table for LayoutViewPlaceholder;
  v237 = v93;
  v236 = v95;
  v235 = 0;
  v233 = 0u;
  v234 = 0u;
  v232 = 0;
  v230 = 0u;
  v231 = 0u;
  v229 = 0;
  v227 = 0u;
  v228 = 0u;
  v226 = 0;
  v225 = 0u;
  *&v224[40] = 0u;
  sub_10000A570(v252, v224);
  v223 = &protocol witness table for LayoutViewPlaceholder;
  v222 = v93;
  v220 = &protocol witness table for LayoutViewPlaceholder;
  v221 = v89;
  v219 = v93;
  v218 = v92;
  v96 = v198;
  sub_10076748C();
  v97 = sub_10076DEDC();
  v98 = sub_10000A5D4(&unk_100942870);
  v99 = swift_allocObject();
  v205 = xmmword_1007841E0;
  *(v99 + 16) = xmmword_1007841E0;
  v100 = v203;
  *(v99 + 32) = v203;
  v101 = v100;
  v206 = v97;
  v102 = sub_10076DEEC();
  sub_10057C980(&unk_100958A50, 255, &type metadata accessor for SmallSearchLockupLayout);
  v103 = v200;
  sub_10076D2AC();

  (*(v199 + 8))(v96, v103);
  sub_10000CD74(v252);
  sub_10000CD74(v253);
  sub_10000CD74(v254);
  (*(v213 + 8))(v212, v214);
  (*(v211 + 8))(v217, v216);
  sub_10000CFBC(v215, &unk_100957F90);
  if ((v184 & 1) == 0)
  {

    (*(v193 + 8))(v210, v169);
    return (*(v201 + 8))(v207, v202);
  }

  v104 = v188;
  sub_10076ABBC();
  swift_getKeyPath();
  v105 = v167;
  sub_10076338C();

  v106 = v254[0];
  v107 = swift_allocObject();
  *(v107 + 16) = v205;
  *(v107 + 32) = v106;
  v108 = v106;
  v109 = sub_10076DEEC();
  sub_10001CE64();
  v110 = v190;
  sub_10076D3EC();

  (*(v189 + 8))(v104, v110);
  v217 = sub_10076283C();
  v111 = sub_10076281C();
  v112 = sub_10076280C();
  if (v112 >> 62)
  {
    v113 = v112;
    v114 = sub_10077158C();
    v112 = v113;
    if (v114)
    {
      goto LABEL_34;
    }

LABEL_40:

    v98 = 0;
    goto LABEL_41;
  }

  if (!*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_40;
  }

LABEL_34:
  if ((v112 & 0xC000000000000001) != 0)
  {
    v98 = sub_10077149C();
  }

  else
  {
    if (!*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_76;
    }

    v98 = *(v112 + 32);
  }

LABEL_41:
  v115 = sub_10076288C();
  if (v115 >> 62)
  {
    v116 = v115;
    v117 = sub_10077158C();
    v115 = v116;
    if (v117)
    {
      goto LABEL_43;
    }

LABEL_48:

    v216 = 0;
    goto LABEL_49;
  }

  if (!*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_48;
  }

LABEL_43:
  if ((v115 & 0xC000000000000001) != 0)
  {
    v216 = sub_10077149C();
  }

  else
  {
    if (!*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_78;
    }

    v216 = *(v115 + 32);
  }

LABEL_49:
  type metadata accessor for ContentSearchResultCollectionViewCell();
  v118 = ASKDeviceTypeGetCurrent();
  swift_getKeyPath();
  sub_10076338C();

  v94 = v254[0];
  sub_100299B1C(v166);

  v105 = sub_10076283C();
  v108 = sub_10076281C();
  v119 = sub_10076280C();
  if (v119 >> 62)
  {
    v120 = v119;
    v121 = sub_10077158C();
    v119 = v120;
    v109 = v207;
    if (v121)
    {
LABEL_51:
      if ((v119 & 0xC000000000000001) == 0)
      {
        if (!*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_80;
        }

        v94 = *(v119 + 32);

        goto LABEL_54;
      }

LABEL_76:
      v94 = sub_10077149C();
LABEL_54:

      goto LABEL_57;
    }
  }

  else
  {
    v109 = v207;
    if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_51;
    }
  }

  v94 = 0;
LABEL_57:
  v122 = sub_10076288C();
  if (v122 >> 62)
  {
    v125 = v122;
    v126 = sub_10077158C();
    v122 = v125;
    v215 = v98;
    if (v126)
    {
LABEL_59:
      if ((v122 & 0xC000000000000001) == 0)
      {
        if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v124 = *(v122 + 32);

LABEL_62:

          goto LABEL_65;
        }

LABEL_80:
        __break(1u);
LABEL_81:
        v213 = sub_10077158C();
        if (v94)
        {
          goto LABEL_69;
        }

        goto LABEL_82;
      }

LABEL_78:
      v124 = sub_10077149C();
      goto LABEL_62;
    }
  }

  else
  {
    v123 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v215 = v98;
    if (v123)
    {
      goto LABEL_59;
    }
  }

  v124 = 0;
LABEL_65:
  v127 = sub_1007673BC();
  v214 = v111;
  if ((v127 & 1) == 0)
  {

    v130 = v191;
    v131 = v185;
    (*(v191 + 104))(v185, enum case for LockupMediaLayout.DisplayType.none(_:), v192);
LABEL_72:
    v134 = v166;
    v135 = v193;
LABEL_104:
    type metadata accessor for LockupMediaView();
    v159 = sub_100630CB4();
    swift_getObjectType();
    v160 = v207;
    sub_100141F14(v217, v214, v215, v216, v134, v131, v159, v207);

    swift_unknownObjectRelease();

    (*(v130 + 8))(v131, v192);
    sub_10000CFBC(v134, &unk_1009467E0);
    (*(v135 + 8))(v210, v169);
    return (*(v201 + 8))(v160, v202);
  }

  if (v108 | v105)
  {
    v132 = v165;
    sub_10076D3AC();

    v130 = v191;
    v133 = v192;
    (*(v191 + 104))(v132, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v192);
    v131 = v185;
    (*(v130 + 32))(v185, v132, v133);
    goto LABEL_72;
  }

  v128 = sub_10057F8EC(v94, v124, 0, 1);
  v108 = v128;
  v109 = (v128 >> 62);
  if (v128 >> 62)
  {
    goto LABEL_81;
  }

  v213 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v94)
  {
LABEL_69:
    v129 = sub_1007601CC();
    goto LABEL_83;
  }

LABEL_82:
  v129 = 0;
LABEL_83:
  v136 = sub_10057FC34(v129);

  LODWORD(v211) = v136;
  if (v94)
  {
    v137 = sub_1007601CC();
  }

  else
  {
    v137 = 0;
  }

  v139 = v201;
  v138 = v202;
  v140 = v164;
  (*(v201 + 16))(v164, v207, v202);
  (*(v139 + 56))(v140, 0, 1, v138);
  v141 = sub_10058015C(v137, v140);

  sub_10000CFBC(v140, &qword_10094E260);
  if (v109)
  {
    result = sub_10077158C();
    v142 = v162;
    if (result)
    {
      goto LABEL_88;
    }

LABEL_94:

    goto LABEL_95;
  }

  result = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v142 = v162;
  if (!result)
  {
    goto LABEL_94;
  }

LABEL_88:
  if ((v108 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
LABEL_91:

    v143 = sub_10076BDCC();

    if (v143)
    {

      v130 = v191;
      v144 = v192;
      v145 = v165;
      (*(v191 + 104))(v165, enum case for LockupMediaLayout.DisplayType.landscape(_:), v192);
LABEL_103:
      v131 = v185;
      v158 = v166;
      v135 = v193;
      (*(v130 + 32))(v185, v145, v144);
      v134 = v158;
      goto LABEL_104;
    }

LABEL_95:
    v146 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v147 = v141;
    v148 = v191;
    v149 = v142;
    v150 = v142;
    v144 = v192;
    v212 = *(v191 + 104);
    (v212)(v149, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v192);
    v151 = sub_1007634FC();
    v209 = *(v148 + 8);
    v209(v150, v144);
    if (((v213 >= v151) & v147) != 0 || (v146 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), (v212)(v150, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v144), v152 = sub_1007634FC(), v153 = v209, v209(v150, v144), ((v213 >= v152) & v211) != 0) || (v146 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), (v212)(v150, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v144), v154 = sub_1007634FC(), v153(v150, v144), v213 >= v154))
    {
    }

    else
    {
      v146 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      (v212)(v150, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v144);
      v155 = sub_1007634FC();

      v153(v150, v144);
      if (v213 != v155)
      {
        v156 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v145 = v165;
        v157 = v165;
LABEL_102:
        (v212)(v157, v156, v144);
        v130 = v191;
        goto LABEL_103;
      }
    }

    v145 = v165;
    v157 = v165;
    v156 = v146;
    goto LABEL_102;
  }

  if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_91;
  }

  __break(1u);
  return result;
}

uint64_t sub_100579B94(uint64_t a1, uint64_t a2)
{
  v268 = a2;
  v3 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v3 - 8);
  v261 = &v208[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10000A5D4(&qword_10094E260);
  __chkstk_darwin(v5 - 8);
  v232 = &v208[-v6];
  v7 = sub_10076D39C();
  v250 = *(v7 - 8);
  __chkstk_darwin(v7);
  v240 = &v208[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v249 = &v208[-v10];
  v11 = sub_10076357C();
  v236 = *(v11 - 8);
  __chkstk_darwin(v11);
  v260 = &v208[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v13 - 8);
  v239 = &v208[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v264 = &v208[-v16];
  v17 = sub_10076350C();
  v251 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v208[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v230 = &v208[-v21];
  __chkstk_darwin(v22);
  v254 = &v208[-v23];
  __chkstk_darwin(v24);
  v233 = &v208[-v25];
  __chkstk_darwin(v26);
  v263 = &v208[-v27];
  v28 = sub_10000A5D4(&unk_100942850);
  v247 = *(v28 - 8);
  v248 = v28;
  __chkstk_darwin(v28);
  v246 = &v208[-v29];
  v30 = sub_10076749C();
  v244 = *(v30 - 8);
  v245 = v30;
  __chkstk_darwin(v30);
  v243 = &v208[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_1007679DC();
  v252 = *(v32 - 1);
  v253 = v32;
  __chkstk_darwin(v32);
  v235 = &v208[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v265 = sub_10076997C();
  v241 = *(v265 - 8);
  __chkstk_darwin(v265);
  v35 = &v208[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = sub_10076443C();
  v258 = *(v36 - 1);
  v259 = v36;
  __chkstk_darwin(v36);
  v38 = &v208[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v39);
  v257 = &v208[-v40];
  v266 = sub_10076747C();
  v256 = *(v266 - 8);
  __chkstk_darwin(v266);
  v242 = &v208[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v42);
  v267 = &v208[-v43];
  v44 = sub_10000A5D4(&unk_100957F90);
  __chkstk_darwin(v44 - 8);
  v234 = &v208[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v46);
  v262 = &v208[-v47];
  v48 = sub_10076469C();
  __chkstk_darwin(v48 - 8);
  v49 = sub_10076C38C();
  v237 = *(v49 - 8);
  v238 = v49;
  __chkstk_darwin(v49);
  v255 = &v208[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = sub_1007673CC();
  v270 = *(v51 - 8);
  v271 = v51;
  __chkstk_darwin(v51);
  v273 = &v208[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10075ECBC();
  sub_10057C980(&qword_10095D830, 255, &type metadata accessor for AppSearchResult);
  v272 = a1;
  result = sub_10076332C();
  if (!v311[0])
  {
    return result;
  }

  v231 = v19;
  v228 = v11;
  v269 = v311[0];
  sub_10075ECAC();
  v315 = _swiftEmptyArrayStorage;

  if (sub_10076BB5C())
  {
    if (qword_10093FBE0 != -1)
    {
      swift_once();
    }

    v54 = sub_100763ADC();
    sub_10000A61C(v54, qword_10099DDA0);
    sub_1007639AC();
    sub_10076BFCC();
    sub_10077019C();
    if (*((v315 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v315 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
  }

  v229 = v7;
  v55 = sub_10076282C();
  swift_getKeyPath();
  sub_10076338C();

  v56 = v311[0];
  v57 = sub_100521984(v55, v311[0]);

  sub_1000F92B4(v57);
  v58 = v273;
  sub_10076285C();
  v59 = sub_10076280C();
  if (v59 >> 62)
  {
    v131 = sub_10077158C();
    v58 = v273;

    if (v131)
    {
      goto LABEL_10;
    }

LABEL_52:

    goto LABEL_53;
  }

  v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v60)
  {
    goto LABEL_52;
  }

LABEL_10:
  if ((sub_10075EC9C() & 1) == 0 || (sub_1007673BC() & 1) == 0)
  {
    goto LABEL_52;
  }

  v61 = v272;
  sub_1007632FC();
  if (qword_100940540 != -1)
  {
    swift_once();
  }

  sub_10076C32C();
  sub_10076C22C();
  sub_100577FCC(v61);
  v62 = sub_10076BB6C();
  v213 = v63;
  v214 = v62;
  v64 = sub_10076BBEC();
  v215 = v65;
  v216 = v64;
  v66 = sub_10076BB0C();

  if (v66)
  {
    v67 = sub_10076518C();

    v69 = v252;
    v68 = v253;
    if (v67)
    {
      v70 = sub_10076C3EC();
      v217 = v71;
      v218 = v70;
    }

    else
    {
      v217 = 0;
      v218 = 0;
    }
  }

  else
  {
    v217 = 0;
    v218 = 0;
    v69 = v252;
    v68 = v253;
  }

  v226 = sub_10076282C();
  v72 = v262;
  _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
  (v69[7])(v72, 0, 1, v68);
  v225 = sub_10076284C();
  v73 = sub_10076286C();
  swift_getKeyPath();
  sub_10076338C();

  v74 = v314;
  if (qword_1009407E8 != -1)
  {
    swift_once();
  }

  v75 = v266;
  v76 = sub_10000A61C(v266, qword_1009A0690);
  v77 = v256 + 16;
  v78 = *(v256 + 16);
  v78(v267, v76, v75);
  v79 = sub_10077071C();
  v227 = v17;
  v220 = v78;
  v221 = v77;
  v209 = v73;
  if ((v79 & 1) == 0)
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v80 = qword_100944CA0;
    goto LABEL_27;
  }

  if (qword_10093F520 != -1)
  {
    goto LABEL_126;
  }

  while (1)
  {
    v80 = qword_100944C88;
LABEL_27:
    v81 = v259;
    v82 = sub_10000A61C(v259, v80);
    v83 = v258;
    (*(v258 + 16))(v38, v82, v81);
    (*(v83 + 32))(v257, v38, v81);
    v84 = [v74 preferredContentSizeCategory];
    sub_10077084C();

    sub_1007643EC();
    sub_10076441C();
    sub_10076746C();
    sub_10076745C();
    v219 = sub_10076DDDC();
    swift_allocObject();
    v222 = sub_10076DDBC();
    v223 = objc_opt_self();
    v85 = [v223 preferredFontForTextStyle:UIFontTextStyleBody];
    v86 = sub_10076C04C();
    v312 = v86;
    v87 = sub_10057C980(&qword_100943230, 255, &type metadata accessor for Feature);
    v313 = v87;
    v211 = v87;
    v88 = sub_10000DB7C(v311);
    v89 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v90 = *(v86 - 8);
    v91 = *(v90 + 104);
    v212 = v90 + 104;
    v91(v88, enum case for Feature.measurement_with_labelplaceholder(_:), v86);
    v210 = v91;
    sub_10076C90C();
    v224 = v74;
    sub_10000CD74(v311);
    sub_10076996C();
    sub_10076994C();
    v92 = *(v241 + 8);
    v92(v35, v265);
    v93 = [v223 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v310[3] = v86;
    v310[4] = v87;
    v94 = sub_10000DB7C(v310);
    v91(v94, v89, v86);
    sub_10076C90C();
    sub_10000CD74(v310);
    sub_10076996C();
    sub_10076994C();
    v92(v35, v265);
    v95 = [v223 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v309[3] = v86;
    v309[4] = v211;
    v96 = sub_10000DB7C(v309);
    v210(v96, v89, v86);
    sub_10076C90C();
    sub_10000CD74(v309);
    sub_10076996C();
    sub_10076994C();
    v92(v35, v265);
    v97 = v226;
    LODWORD(v265) = sub_10001D420(0, v226) & (v97 != 0);
    if (v265 == 1)
    {
      v98 = objc_allocWithZone(sub_10076DEDC());
      v99 = v224;
      v100 = sub_10076DECC();
      v101 = v234;
      sub_100016E2C(v262, v234, &unk_100957F90);
      v103 = v252;
      v102 = v253;
      v104 = v252[6];
      if (v104(v101, 1, v253) == 1)
      {
        v105 = v235;
        _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
        if (v104(v101, 1, v102) != 1)
        {
          sub_10000CFBC(v101, &unk_100957F90);
        }
      }

      else
      {
        v105 = v235;
        (v103[4])(v235, v101, v102);
      }

      v108 = v100;
      sub_10001A588(v226, v105, v108);

      (v103[1])(v105, v102);
      v106 = v219;
      swift_allocObject();
      v107 = sub_10076DDAC();
    }

    else
    {
      v106 = v219;
      swift_allocObject();
      v107 = sub_10076DDBC();
    }

    v109 = v107;

    v110 = v225;
    if ((sub_10001D420(v225, 0) & (v110 != 0)) == 1)
    {
      sub_1004EF9EC(v110, v209 & 1);
      swift_allocObject();
      v111 = sub_10076DDAC();
    }

    else
    {
      swift_allocObject();
      v111 = sub_10076DDBC();
    }

    v112 = v111;
    v220(v242, v267, v266);
    v308 = &protocol witness table for LayoutViewPlaceholder;
    v307 = v106;
    v306 = v222;
    v305 = 0;
    *&v303[40] = 0u;
    v304 = 0u;
    sub_10000A570(v311, v303);
    sub_10000A570(v310, &v302);
    v301 = 0;
    v299 = 0u;
    v300 = 0u;
    v298 = 0;
    v296 = 0u;
    v297 = 0u;

    v253 = v112;
    v113 = sub_10076DDCC();
    v295 = &protocol witness table for LayoutViewPlaceholder;
    v294 = v106;
    v293 = v113;
    v292 = 0;
    v290 = 0u;
    v291 = 0u;
    v289 = 0;
    v287 = 0u;
    v288 = 0u;
    v286 = 0;
    v284 = 0u;
    v285 = 0u;
    v283 = 0;
    v282 = 0u;
    *&v281[40] = 0u;
    sub_10000A570(v309, v281);
    v280 = &protocol witness table for LayoutViewPlaceholder;
    v279 = v106;
    v278 = v109;
    v277 = &protocol witness table for LayoutViewPlaceholder;
    v276 = v106;
    v275 = v112;
    v114 = v243;
    sub_10076748C();
    sub_10076DEDC();
    v115 = sub_10000A5D4(&unk_100942870);
    v116 = swift_allocObject();
    v265 = xmmword_1007841E0;
    *(v116 + 16) = xmmword_1007841E0;
    v117 = v224;
    *(v116 + 32) = v224;
    v118 = v117;
    v119 = sub_10076DEEC();
    sub_10057C980(&unk_100958A50, 255, &type metadata accessor for SmallSearchLockupLayout);
    v120 = v245;
    sub_10076D2AC();

    (*(v244 + 8))(v114, v120);
    sub_10000CD74(v309);
    sub_10000CD74(v310);
    sub_10000CD74(v311);
    (*(v258 + 8))(v257, v259);
    (*(v256 + 8))(v267, v266);
    v74 = v246;
    sub_10076ABBC();
    v121 = swift_allocObject();
    *(v121 + 16) = v265;
    *(v121 + 32) = v118;
    v122 = v118;
    v38 = sub_10076DEEC();
    sub_10001CE64();
    v123 = v248;
    sub_10076D3EC();

    (*(v247 + 8))(v74, v123);
    sub_10000CFBC(v262, &unk_100957F90);
    v124 = sub_10076283C();
    v35 = sub_10076281C();
    v125 = sub_10076280C();
    if (v125 >> 62)
    {
      v38 = v125;
      v126 = sub_10077158C();
      v125 = v38;
    }

    else
    {
      v126 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v127 = v263;
    v128 = v231;
    if (v126)
    {
      if ((v125 & 0xC000000000000001) != 0)
      {
        v38 = v125;
        v123 = sub_10077149C();
      }

      else
      {
        if (!*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_121;
        }

        v38 = v125;
        v123 = *(v125 + 32);
      }
    }

    else
    {

      v123 = 0;
    }

    v129 = sub_10076288C();
    if (v129 >> 62)
    {
      v38 = v129;
      v133 = sub_10077158C();
      v129 = v38;
      v262 = v35;
      if (!v133)
      {
LABEL_57:

        v267 = 0;
        goto LABEL_58;
      }
    }

    else
    {
      v130 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v262 = v35;
      if (!v130)
      {
        goto LABEL_57;
      }
    }

    if ((v129 & 0xC000000000000001) != 0)
    {
      v38 = v129;
      v267 = sub_10077149C();
    }

    else
    {
      if (!*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_123:
        v137 = sub_10077149C();
LABEL_71:

        goto LABEL_74;
      }

      v38 = v129;
      v267 = *(v129 + 32);
    }

LABEL_58:
    v115 = sub_10076283C();
    v74 = sub_10076281C();
    v125 = sub_10076280C();
    if (v125 >> 62)
    {
      v38 = v125;
      v134 = sub_10077158C();
      v125 = v38;
      if (!v134)
      {
        goto LABEL_65;
      }

LABEL_60:
      if ((v125 & 0xC000000000000001) == 0)
      {
        if (!*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_125;
        }

        v35 = v125;
        v38 = *(v125 + 32);

        goto LABEL_63;
      }

LABEL_121:
      v35 = v125;
      v38 = sub_10077149C();
LABEL_63:

      goto LABEL_66;
    }

    if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_60;
    }

LABEL_65:

    v38 = 0;
LABEL_66:
    v135 = sub_10076288C();
    if (v135 >> 62)
    {
      break;
    }

    v136 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v266 = v123;
    if (!v136)
    {
      goto LABEL_73;
    }

LABEL_68:
    if ((v135 & 0xC000000000000001) != 0)
    {
      goto LABEL_123;
    }

    if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v137 = *(v135 + 32);

      goto LABEL_71;
    }

LABEL_125:
    __break(1u);
LABEL_126:
    swift_once();
  }

  v138 = v135;
  v139 = sub_10077158C();
  v135 = v138;
  v266 = v123;
  if (v139)
  {
    goto LABEL_68;
  }

LABEL_73:

  v137 = 0;
LABEL_74:
  if ((sub_1007673BC() & 1) == 0)
  {

    v137 = v251;
    v38 = v227;
    (*(v251 + 104))(v127, enum case for LockupMediaLayout.DisplayType.none(_:), v227);
LABEL_82:
    v143 = v229;
    v141 = v250;
    goto LABEL_110;
  }

  if (v74 | v115)
  {
    v145 = v233;
    sub_10076D3AC();

    v137 = v251;
    v38 = v227;
    (*(v251 + 104))(v145, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v227);
    (*(v137 + 32))(v127, v145, v38);
    goto LABEL_82;
  }

  v140 = sub_10057F8EC(v38, v137, 0, 1);
  v127 = v140;
  v141 = v140 >> 62;
  if (v140 >> 62)
  {
    goto LABEL_175;
  }

  v142 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v143 = v229;
    *&v265 = v142;
    if (v38)
    {
      v144 = sub_1007601CC();
    }

    else
    {
      v144 = 0;
    }

    LODWORD(v258) = sub_10057FC34(v144);

    v248 = v124;
    if (v38)
    {
      v146 = sub_1007601CC();
    }

    else
    {
      v146 = 0;
    }

    v147 = v270;
    v148 = v271;
    v149 = v232;
    (*(v270 + 16))(v232, v273, v271);
    (*(v147 + 56))(v149, 0, 1, v148);
    v128 = sub_10058015C(v146, v149);

    sub_10000CFBC(v149, &qword_10094E260);
    if (v141)
    {
      v151 = sub_10077158C();
    }

    else
    {
      v151 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v141 = v250;
    v124 = v248;
    if (!v151)
    {

      goto LABEL_97;
    }

    if ((v127 & 0xC000000000000001) != 0)
    {
      sub_10077149C();
    }

    else
    {
      if (!*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_178;
      }
    }

    v152 = sub_10076BDCC();

    if ((v152 & 1) == 0)
    {
LABEL_97:
      v154 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
      v155 = v251;
      v156 = v227;
      v157 = v230;
      v259 = *(v251 + 104);
      v259(v230, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v227);
      v158 = v128;
      v159 = sub_1007634FC();
      v257 = *(v155 + 8);
      (v257)(v157, v156);
      if (((v265 >= v159) & v158) != 0)
      {

        v153 = v233;
        v160 = v233;
        v161 = v154;
      }

      else
      {
        v162 = enum case for LockupMediaLayout.DisplayType.threeUp(_:);
        v259(v157, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v156);
        v163 = sub_1007634FC();
        v164 = v257;
        (v257)(v157, v156);
        if (((v265 >= v163) & v258) == 0)
        {
          v165 = v157;
          v166 = enum case for LockupMediaLayout.DisplayType.twoUp(_:);
          v259(v157, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v156);
          v167 = sub_1007634FC();
          v164(v165, v156);
          v168 = v265 < v167;
          v169 = v165;
          v127 = v263;
          if (v168)
          {
            LODWORD(v258) = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
            (v259)(v169);
            v170 = sub_1007634FC();

            v164(v169, v156);
            if (v265 == v170)
            {
              v153 = v233;
              v171 = v233;
              v172 = v258;
            }

            else
            {
              v172 = enum case for LockupMediaLayout.DisplayType.none(_:);
              v153 = v233;
              v171 = v233;
            }
          }

          else
          {

            v153 = v233;
            v171 = v233;
            v172 = v166;
          }

          v259(v171, v172, v156);
          v38 = v156;
          v137 = v251;
          goto LABEL_108;
        }

        v153 = v233;
        v160 = v233;
        v161 = v162;
      }

      v259(v160, v161, v156);
      v38 = v156;
      v137 = v251;
      v127 = v263;
LABEL_108:
      v143 = v229;
      v141 = v250;
      v124 = v248;
      goto LABEL_109;
    }

    v137 = v251;
    v153 = v233;
    v38 = v227;
    (*(v251 + 104))(v233, enum case for LockupMediaLayout.DisplayType.landscape(_:), v227);
    v127 = v263;
LABEL_109:
    (*(v137 + 32))(v127, v153, v38);
    v128 = v231;
LABEL_110:
    v173 = sub_100630CB4();
    (*(v141 + 56))(v264, 1, 1, v143);
    v252 = v173;
    v253 = [v173 traitCollection];
    v312 = &type metadata for CGFloat;
    v313 = &protocol witness table for CGFloat;
    v311[0] = 0x4021000000000000;
    sub_10000A570(v311, v310);
    v174 = *(v137 + 16);
    v272 = v137 + 16;
    *&v265 = v174;
    v174(v254, v127, v38);
    if (v262 | v124)
    {
      goto LABEL_129;
    }

    v175 = sub_10057F8EC(v266, v267, 0, 1);
    if (!(v175 >> 62))
    {
      if (!*((v175 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_128;
      }

LABEL_113:
      if ((v175 & 0xC000000000000001) != 0)
      {
        sub_10077149C();
      }

      else
      {
        if (!*((v175 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_175:
          v142 = sub_10077158C();
          continue;
        }
      }

      sub_10076BEFC();
      sub_10076D3AC();

      goto LABEL_130;
    }

    break;
  }

  v176 = v175;
  v177 = sub_10077158C();
  v175 = v176;
  if (v177)
  {
    goto LABEL_113;
  }

LABEL_128:

LABEL_129:
  sub_10076D3AC();
LABEL_130:
  sub_100016E2C(v264, v239, &unk_1009467E0);
  sub_10076354C();
  sub_10000CD74(v311);
  v178 = v240;
  sub_10076355C();
  sub_10076D36C();
  v179 = *(v141 + 8);
  v141 += 8;
  v179(v178, v143);
  if (v262)
  {
    v128 = v137;

    sub_10076B84C();
    v180 = sub_10076BFCC();
    v181 = sub_10049D5BC(0, 1, 1, _swiftEmptyArrayStorage);
    v141 = *(v181 + 2);
    v182 = *(v181 + 3);
    v183 = v141 + 1;
    if (v141 >= v182 >> 1)
    {
      goto LABEL_172;
    }

    goto LABEL_132;
  }

  if (v124)
  {

    v185 = sub_10076BFCC();
    v181 = sub_10049D5BC(0, 1, 1, _swiftEmptyArrayStorage);
    v187 = *(v181 + 2);
    v186 = *(v181 + 3);
    if (v187 >= v186 >> 1)
    {
      v181 = sub_10049D5BC((v186 > 1), v187 + 1, 1, v181);
    }

    (*(v236 + 8))(v260, v228);
    sub_10000CFBC(v264, &unk_1009467E0);
    *(v181 + 2) = v187 + 1;
    v188 = &v181[16 * v187];
    *(v188 + 4) = v185;
    v188[40] = 0;
    goto LABEL_180;
  }

  v189 = sub_1007634FC();
  v190 = sub_10057F8EC(v266, v267, v189, 0);
  sub_10076359C();
  v150 = v190;
  if (!(v190 >> 62))
  {
    result = *((v190 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_139;
    }

LABEL_179:

    (*(v236 + 8))(v260, v228);
    sub_10000CFBC(v264, &unk_1009467E0);
    v181 = _swiftEmptyArrayStorage;
    goto LABEL_180;
  }

LABEL_178:
  v204 = v150;
  result = sub_10077158C();
  v150 = v204;
  if (!result)
  {
    goto LABEL_179;
  }

LABEL_139:
  v248 = v124;
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v191 = 0;
  v259 = (v150 & 0xC000000000000001);
  v192 = (v137 + 88);
  LODWORD(v258) = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
  LODWORD(v250) = enum case for LockupMediaLayout.DisplayType.landscape(_:);
  v254 = (v137 + 8);
  v181 = _swiftEmptyArrayStorage;
  v256 = result;
  v257 = v150;
  while (2)
  {
    if (v259)
    {
      v183 = sub_10077149C();
    }

    else
    {
      v183 = *(v150 + 8 * v191 + 32);
    }

    v193 = v227;
    (v265)(v128, v127, v227);
    v194 = (*v192)(v128, v193);
    if (v194 == v258)
    {
      (*v254)(v128, v193);
      goto LABEL_147;
    }

    if (v194 != v250)
    {
      v195 = sub_10076BDCC();
      (*v254)(v128, v227);
      if (v267)
      {
        goto LABEL_151;
      }

LABEL_148:
      if (!v266)
      {
        goto LABEL_162;
      }

      goto LABEL_149;
    }

LABEL_147:
    v195 = 0;
    if (!v267)
    {
      goto LABEL_148;
    }

LABEL_151:
    v180 = v267;
    v197 = sub_10076C41C();
    if (!(v197 >> 62))
    {
      if (*((v197 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_153;
      }

LABEL_161:

      if (!v266)
      {
LABEL_162:
        v196 = 0;
LABEL_163:
        sub_1007601EC();
        v201 = v261;
        sub_10007AFB4(v196, v261);

        sub_100770ACC();
        v199 = sub_10076BFCC();
        sub_100125E90(v201);
LABEL_164:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v181 = sub_10049D5BC(0, *(v181 + 2) + 1, 1, v181);
        }

        v141 = *(v181 + 2);
        v202 = *(v181 + 3);
        if (v141 >= v202 >> 1)
        {
          v181 = sub_10049D5BC((v202 > 1), v141 + 1, 1, v181);
        }

        ++v191;

        *(v181 + 2) = v141 + 1;
        v203 = &v181[16 * v141];
        *(v203 + 4) = v199;
        v203[40] = v195 & 1;
        v150 = v257;
        v128 = v231;
        if (v256 == v191)
        {

          (*(v236 + 8))(v260, v228);
          sub_10000CFBC(v264, &unk_1009467E0);
          v137 = v251;
          goto LABEL_180;
        }

        continue;
      }

      goto LABEL_149;
    }

    break;
  }

  v180 = v197;
  v200 = sub_10077158C();
  v197 = v180;
  if (!v200)
  {
    goto LABEL_161;
  }

LABEL_153:
  if ((v197 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
    goto LABEL_156;
  }

  v182 = *((v197 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v182)
  {

LABEL_156:

    sub_10076C02C();
    sub_10076B84C();
    v198 = sub_10076BE5C();

    if (v198)
    {
      v199 = sub_10076BFCC();

      v127 = v263;
      goto LABEL_164;
    }

    v127 = v263;
    if (!v266)
    {
      goto LABEL_162;
    }

LABEL_149:
    v196 = sub_1007601CC();
    goto LABEL_163;
  }

  __break(1u);
LABEL_172:
  v181 = sub_10049D5BC((v182 > 1), v183, 1, v181);
LABEL_132:

  (*(v236 + 8))(v260, v228);
  sub_10000CFBC(v264, &unk_1009467E0);
  *(v181 + 2) = v183;
  v184 = &v181[16 * v141];
  *(v184 + 4) = v180;
  v184[40] = 0;
  v137 = v128;
LABEL_180:
  v205 = *(v181 + 2);
  if (v205)
  {
    v311[0] = _swiftEmptyArrayStorage;
    sub_1007714EC();
    v206 = 32;
    do
    {

      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
      v206 += 16;
      --v205;
    }

    while (v205);
    swift_unknownObjectRelease();

    (*(v137 + 8))(v263, v227);
    v207 = v311[0];
  }

  else
  {
    swift_unknownObjectRelease();

    (*(v137 + 8))(v127, v227);
    v207 = _swiftEmptyArrayStorage;
  }

  sub_1000F92B4(v207);
  (*(v237 + 8))(v255, v238);
  v58 = v273;
LABEL_53:
  v132._rawValue = v315;
  sub_100760BAC(v132);

  return (*(v270 + 8))(v58, v271);
}

void sub_10057C2E4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_screenshots);
  v3 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_imageViews;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 >> 62)
  {
    v5 = sub_10077158C();
    if (!v5)
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
    return;
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
    type metadata accessor for BorderedScreenshotView();
    sub_10057C980(&qword_10094A410, 255, type metadata accessor for BorderedScreenshotView);
    v9 = v8;
    sub_10077140C();
    sub_100760BEC();
    sub_100016C74(v29);
    v10 = *&v9[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView];
    v30.value.super.isa = 0;
    v30.is_nil = 0;
    sub_10075FCEC(v30, v11);
  }

  while (v5 != v6);

LABEL_10:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [*(Strong + qword_1009602D0) setImage:0];
    type metadata accessor for VideoView();
    sub_10057C980(&qword_100957FA0, 255, type metadata accessor for VideoView);
    v14 = v13;
    sub_10077140C();
    sub_100760BEC();

    sub_100016C74(v29);
  }

  v15 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_lockupView);
  v16 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
  v17 = *(v15 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  v31.value.super.isa = 0;
  v31.is_nil = 0;
  sub_10075FCEC(v31, v18);

  v19 = *(v15 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataRibbonView);
  v20 = *&v19[OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metadataRibbonItemViews];
  v21 = *(v20 + 16);
  if (v21)
  {
    type metadata accessor for MetadataRibbonIconWithLabelView(0);
    v28 = v19;

    v22 = 32;
    do
    {
      v23 = *(v20 + v22);
      if (swift_dynamicCastClass())
      {
        v24 = v23;
        v32.value.super.isa = 0;
        v32.is_nil = 0;
        sub_10075FCEC(v32, v25);
        sub_10075FD2C();
        sub_10057C980(&qword_100941820, 255, &type metadata accessor for ArtworkView);
        sub_100760BFC();
      }

      v22 += 16;
      --v21;
    }

    while (v21);
  }

  v26 = *(v15 + v16);
  sub_10075FD2C();
  sub_10057C980(&qword_100941820, 255, &type metadata accessor for ArtworkView);
  v27 = v26;
  sub_100760BFC();
}

void sub_10057C714()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_lockupView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_screenshots;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for LockupMediaView()) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_shouldDisplayMedia) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_preferredImageSizes) = _swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_impressionsCalculator) = 0;
  v3 = (v0 + OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_impressionsUpdateBlock);
  *v3 = 0;
  v3[1] = 0;
  sub_10077156C();
  __break(1u);
}

id sub_10057C80C()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_screenshots);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10057C980(&qword_100942810, 255, type metadata accessor for VideoView);
    v4 = [v3 superview];
    if (!v4)
    {
LABEL_6:

      goto LABEL_7;
    }

    v5 = v4;
    sub_100016F40(0, &qword_1009441F0);
    v6 = v1;
    v7 = sub_100770EEC();

    if (v7)
    {
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v3 = v8;
        [v8 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    [v1 addSubview:v9];
  }

  sub_10057E5D8();

  return [v1 setNeedsLayout];
}

uint64_t sub_10057C980(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10057C9CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = v3;
  v23 = a3;
  v7 = sub_10076350C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10000A5D4(&qword_10094E260);
  __chkstk_darwin(v11 - 8);
  v13 = &v21[-v12];
  v22 = sub_10057FC34(a1);
  v14 = sub_1007673CC();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a2, v14);
  (*(v15 + 56))(v13, 0, 1, v14);
  v16 = sub_10058015C(a1, v13);
  sub_10000CFBC(v13, &qword_10094E260);
  v17 = *(v8 + 16);
  v17(v10, v4, v7);
  v18 = (*(v8 + 88))(v10, v7);
  if (v18 != enum case for LockupMediaLayout.DisplayType.oneUp(_:))
  {
    if (v18 == enum case for LockupMediaLayout.DisplayType.twoUp(_:) || v18 == enum case for LockupMediaLayout.DisplayType.threeUp(_:))
    {
      if (v16)
      {
        goto LABEL_11;
      }

      if (v22)
      {
        goto LABEL_9;
      }
    }

    else if (((v18 == enum case for LockupMediaLayout.DisplayType.fourUp(_:)) & v16) != 0)
    {
      goto LABEL_11;
    }

    v17(v23, v4, v7);
    return (*(v8 + 8))(v10, v7);
  }

  if (v16)
  {
LABEL_11:
    (*(v8 + 8))(v10, v7);
    v19 = &enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    return (*(v8 + 104))(v23, *v19, v7);
  }

  if (v22)
  {
LABEL_9:
    (*(v8 + 8))(v10, v7);
    v19 = &enum case for LockupMediaLayout.DisplayType.threeUp(_:);
    return (*(v8 + 104))(v23, *v19, v7);
  }

  (*(v8 + 104))(v23, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v7);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10057CD00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = sub_10076D39C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_10076350C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v20 - v10;
  v12 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v12 - 8);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = v20 - v17;
  v22[3] = &type metadata for CGFloat;
  v22[4] = &protocol witness table for CGFloat;
  v22[0] = 0x4021000000000000;
  (*(v4 + 16))(v20 - v17, a1, v3, v16);
  (*(v4 + 56))(v18, 0, 1, v3);
  (*(v6 + 104))(v11, enum case for LockupMediaLayout.DisplayType.none(_:), v5);
  sub_10000A570(v22, v21);
  (*(v6 + 16))(v8, v11, v5);
  if (_swiftEmptyArrayStorage >> 62 && sub_10077158C())
  {
    sub_10077149C();
    sub_10076BEFC();
    sub_10076D3AC();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10076D3AC();
  }

  sub_100016E2C(v18, v14, &unk_1009467E0);
  sub_10076354C();
  (*(v6 + 8))(v11, v5);
  sub_10000CFBC(v18, &unk_1009467E0);
  return sub_10000CD74(v22);
}

uint64_t sub_10057D044()
{
  v0 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v0 - 8);
  v2 = v11 - v1;
  v3 = sub_10076D39C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_10076350C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076357C();
  sub_10000DB18(v9, qword_10095D838);
  sub_10000A61C(v9, qword_10095D838);
  v11[4] = &type metadata for CGFloat;
  v11[5] = &protocol witness table for CGFloat;
  v11[1] = 0x4021000000000000;
  (*(v6 + 104))(v8, enum case for LockupMediaLayout.DisplayType.none(_:), v5);
  sub_10076D3AC();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_10076354C();
}

id sub_10057D278()
{
  v1 = sub_10000A5D4(&qword_10095CE50);
  __chkstk_darwin(v1);
  *&v0[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_imageViews] = _swiftEmptyArrayStorage;
  type metadata accessor for BorderedScreenshotView();
  sub_10076D4CC();
  sub_10057F544();
  sub_10076E18C();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView] = 0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_metrics;
  if (qword_1009408B8 != -1)
  {
    swift_once();
  }

  v3 = sub_10076357C();
  v4 = sub_10000A61C(v3, qword_10095D838);
  (*(*(v3 - 8) + 16))(&v0[v2], v4, v3);
  v5 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayConfiguration;
  if (qword_10093F5B0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ScreenshotDisplayConfiguration();
  v7 = sub_10000A61C(v6, qword_10099CB78);
  sub_100125EEC(v7, &v0[v5]);
  *&v0[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_platform] = 0;
  v8 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayStyle;
  v9 = enum case for ScreenshotsDisplayStyle.standard(_:);
  v10 = sub_1007673CC();
  (*(*(v10 - 8) + 104))(&v0[v8], v9, v10);
  v13.receiver = v0;
  v13.super_class = type metadata accessor for LockupMediaView();
  v11 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v11 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  return v11;
}

void (*sub_10057D530(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_10057D584;
}

void sub_10057D584(id *a1, char a2)
{
  v4 = a1[1];
  v26 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_100580AE0(&qword_100942810, type metadata accessor for VideoView);
      v7 = v26;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_1000ACA5C();
        v10 = v4;
        v11 = sub_100770EEC();

        if (v11)
        {
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = v12;
            [v12 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v26;
    }

    swift_unknownObjectWeakAssign();
    v23 = swift_unknownObjectWeakLoadStrong();
    v24 = a1[1];
    if (v23)
    {
      v25 = v23;
      [a1[1] addSubview:v23];
    }

    sub_10057E5D8();
    [v24 setNeedsLayout];

    v22 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_100580AE0(&qword_100942810, type metadata accessor for VideoView);
    v14 = [v6 superview];
    if (v14)
    {
      v15 = v14;
      sub_1000ACA5C();
      v16 = v4;
      v17 = sub_100770EEC();

      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

      v18 = swift_unknownObjectWeakLoadStrong();
      if (!v18)
      {
        goto LABEL_13;
      }

      v6 = v18;
      [v18 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v19 = swift_unknownObjectWeakLoadStrong();
  v20 = a1[1];
  if (v19)
  {
    v21 = v19;
    [a1[1] addSubview:v19];
  }

  sub_10057E5D8();
  [v20 setNeedsLayout];
  v22 = v26;
LABEL_21:
}

void *sub_10057D820()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10077019C();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
  }

  v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView);
  if (v4)
  {
    v5 = v4;
    sub_10077019C();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
  }

  v6 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_imageViews;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v7 >> 62)
  {
    sub_1000ACA5C();

    v8 = sub_10077157C();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_10077168C();
    sub_1000ACA5C();
    v8 = v7;
  }

  sub_1000F9270(v8);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_10057D9D0()
{
  v1 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_imageViews;
  result = swift_beginAccess();
  v19 = v0;
  v6 = *(v0 + v4);
  if (v6 >> 62)
  {
    result = sub_10077158C();
    v7 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {
    v8 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayConfiguration;

    swift_beginAccess();
    v9 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = sub_10077149C();
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);
      }

      v11 = v10;
      ++v9;
      sub_100125EEC(v19 + v8, v3);
      v12 = &v11[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_displayConfiguration];
      swift_beginAccess();
      sub_100125E2C(v3, v12);
      swift_endAccess();
      v13 = OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView;
      v14 = *&v11[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView];
      sub_1007638EC();

      v15 = *&v11[v13];
      v16 = *(v12 + 48);
      v17 = v15;
      v18 = v16;
      sub_1007638DC();

      [v11 setNeedsLayout];
      sub_100125E90(v3);
    }

    while (v7 != v9);
  }

  return result;
}

uint64_t sub_10057DBD4()
{
  v1 = v0;
  v2 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_imageViews;
  result = swift_beginAccess();
  v7 = *(v1 + v5);
  if (v7 >> 62)
  {
    result = sub_10077158C();
    v8 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return result;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
  }

  else
  {
    v9 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayConfiguration;
    v21 = v7 & 0xC000000000000001;
    v22 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_platform;

    swift_beginAccess();
    v10 = 0;
    do
    {
      if (v21)
      {
        v11 = sub_10077149C();
      }

      else
      {
        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      ++v10;
      *&v11[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_platform] = *(v1 + v22);
      swift_retain_n();

      sub_100124EE0();

      sub_100125EEC(v1 + v9, v4);
      v13 = &v12[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_displayConfiguration];
      swift_beginAccess();
      sub_100125E2C(v4, v13);
      swift_endAccess();
      v14 = OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView;
      v15 = *&v12[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView];
      sub_1007638EC();

      v16 = *&v12[v14];
      v17 = *(v13 + 48);
      v18 = v16;
      v19 = v17;
      sub_1007638DC();

      [v12 setNeedsLayout];
      sub_100125E90(v4);
    }

    while (v8 != v10);
  }

  return result;
}

uint64_t sub_10057DE20()
{
  v16 = sub_10076D1FC();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076357C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007635AC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LockupMediaView();
  v17.receiver = v0;
  v17.super_class = v12;
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v13 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_metrics;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v0[v13], v4);
  v14 = sub_10057D820();
  sub_10016EA00(v14);

  sub_10076358C();
  [v0 bounds];
  sub_10076351C();
  (*(v1 + 8))(v3, v16);
  return (*(v9 + 8))(v11, v8);
}

double sub_10057E0E0()
{
  v1 = v0;
  v2 = sub_1007635AC();
  v3 = *(v2 - 8);
  v47 = v2;
  v48 = v3;
  __chkstk_darwin(v2);
  v46 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1007673CC();
  v5 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076350C();
  v44 = *(v7 - 8);
  v45 = v7;
  __chkstk_darwin(v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v39 = &v36 - v11;
  v12 = sub_10076357C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  v38 = &v36 - v17;
  v19 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_metrics;
  swift_beginAccess();
  v20 = *(v13 + 16);
  v20(v18, v1 + v19, v12);
  v37 = v12;
  v20(v15, v1 + v19, v12);
  sub_10076352C();
  v21 = *(v13 + 8);
  v41 = v13 + 8;
  v42 = v21;
  v21(v15, v12);
  v22 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayStyle;
  v36 = v1;
  swift_beginAccess();
  v23 = v1 + v22;
  v24 = v40;
  v25 = v43;
  (*(v5 + 16))(v40, v23, v43);

  sub_10057C9CC(v26, v24, v39);

  (*(v5 + 8))(v24, v25);
  (*(v44 + 8))(v9, v45);
  v27 = v38;
  sub_10076353C();
  v28 = v37;
  v20(v15, v27, v37);
  v29 = sub_10057D820();
  sub_10016EA00(v29);

  v30 = v46;
  sub_10076358C();
  sub_100580AE0(&qword_10095D8C8, &type metadata accessor for LockupMediaLayout);
  v31 = v30;
  v32 = v47;
  sub_10076D2AC();
  v34 = v33;
  (*(v48 + 8))(v31, v32);
  v42(v27, v28);
  return v34;
}

uint64_t sub_10057E5D8()
{
  v1 = v0;
  v2 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076350C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076357C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView])
  {

    return sub_10057EC70();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v15 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_metrics;
    swift_beginAccess();
    (*(v10 + 16))(v12, &v1[v15], v9);
    sub_10076352C();
    (*(v10 + 8))(v12, v9);
    v16 = sub_1007634FC();
    result = (*(v6 + 8))(v8, v5);
    if (__OFSUB__(v16, 1))
    {
      goto LABEL_32;
    }

    v17 = (v16 - 1) & ~((v16 - 1) >> 63);
  }

  else
  {
    v18 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_metrics;
    swift_beginAccess();
    (*(v10 + 16))(v12, &v1[v18], v9);
    sub_10076352C();
    (*(v10 + 8))(v12, v9);
    v17 = sub_1007634FC();
    (*(v6 + 8))(v8, v5);
  }

  v19 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_imageViews;
  v36 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_platform;
  v20 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  swift_beginAccess();
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v21 = *&v1[v19];
        if (v21 >> 62)
        {
          result = sub_10077158C();
          if (result == v17)
          {
            return result;
          }
        }

        else
        {
          result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (result == v17)
          {
            return result;
          }
        }

        v22 = *&v1[v19];
        if (!(v22 >> 62))
        {
          break;
        }

        if (sub_10077158C() >= v17)
        {
          goto LABEL_21;
        }

LABEL_15:
        swift_beginAccess();
        sub_10000A5D4(&qword_10095CE68);
        sub_10076E15C();
        swift_endAccess();
        v23 = v37;
        *&v37[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_platform] = *&v1[v36];
        swift_retain_n();

        sub_100124EE0();

        sub_100125EEC(&v1[v20], v4);
        v24 = &v23[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_displayConfiguration];
        swift_beginAccess();
        sub_100125E2C(v4, v24);
        swift_endAccess();
        v25 = OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView;
        v26 = *&v23[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView];
        sub_1007638EC();

        v27 = *&v23[v25];
        v28 = *(v24 + 48);
        v29 = v27;
        v30 = v28;
        sub_1007638DC();

        [v23 setNeedsLayout];
        sub_100125E90(v4);
        swift_beginAccess();
        v31 = v23;
        sub_10077019C();
        if (*((*&v1[v19] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v19] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
        swift_endAccess();
        [v1 addSubview:v31];
      }

      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) < v17)
      {
        goto LABEL_15;
      }

LABEL_21:
      swift_beginAccess();
      v32 = *&v1[v19];
      if (!(v32 >> 62))
      {
        break;
      }

      if (sub_10077158C())
      {
        goto LABEL_23;
      }

LABEL_10:
      swift_endAccess();
    }

    if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_23:
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *&v1[v19] = v32;
    if (v32 >> 62 || (result & 1) == 0)
    {
      result = sub_1004BE250(v32);
      v32 = result;
    }

    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v33)
    {
      break;
    }

    v34 = v33 - 1;
    v35 = *((v32 & 0xFFFFFFFFFFFFFF8) + 8 * v34 + 0x20);
    *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) = v34;
    *&v1[v19] = v32;
    swift_endAccess();
    v37 = v35;
    swift_beginAccess();
    sub_10000A5D4(&qword_10095CE68);
    sub_10076E17C();
    swift_endAccess();
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

id sub_10057EC30@<X0>(void *a1@<X8>)
{
  type metadata accessor for BorderedScreenshotView();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

uint64_t sub_10057EC70()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_imageViews;
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
    v10 = v2;

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
      swift_beginAccess();
      sub_10000A5D4(&qword_10095CE68);
      sub_10076E17C();
      swift_endAccess();
      v9 = *&v8[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView];
      sub_10075FCAC();
    }

    while (v5 != v6);

    v2 = v10;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_10057EDF4()
{
  v1 = v0;
  v2 = sub_1007673CC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10057EC70();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + qword_1009602F8);
    if (v8)
    {
      aBlock[4] = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1005F04D8;
      aBlock[3] = &unk_10089A2C8;
      v9 = _Block_copy(aBlock);
      v10 = v8;
      [v10 exitFullScreenAnimated:0 completionHandler:v9];
      _Block_release(v9);
    }

    v11 = *&v7[qword_1009602F0];
    if (v11)
    {
      v12 = v11;
      sub_10076050C();

      v7 = v12;
    }
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    sub_100580AE0(&qword_100942810, type metadata accessor for VideoView);
    v15 = [v14 superview];
    if (!v15)
    {
LABEL_12:

      goto LABEL_13;
    }

    v16 = v15;
    sub_1000ACA5C();
    v17 = v1;
    v18 = sub_100770EEC();

    if (v18)
    {
      v19 = swift_unknownObjectWeakLoadStrong();
      if (v19)
      {
        v14 = v19;
        [v19 removeFromSuperview];
        goto LABEL_12;
      }
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    [v1 addSubview:v20];
  }

  sub_10057E5D8();
  [v1 setNeedsLayout];
  v22 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
  v23 = *&v1[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView];
  if (v23)
  {
    [v23 removeFromSuperview];
    v24 = *&v1[v22];
  }

  else
  {
    v24 = 0;
  }

  *&v1[v22] = 0;

  [v1 setNeedsLayout];
  (*(v3 + 104))(v5, enum case for ScreenshotsDisplayStyle.standard(_:), v2);
  v25 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v3 + 24))(&v1[v25], v5, v2);
  swift_endAccess();
  [v1 setNeedsLayout];
  return (*(v3 + 8))(v5, v2);
}

id sub_10057F19C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockupMediaView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LockupMediaView()
{
  result = qword_10095D888;
  if (!qword_10095D888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10057F370()
{
  sub_10057F4D4();
  if (v0 <= 0x3F)
  {
    sub_10076357C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ScreenshotDisplayConfiguration();
      if (v2 <= 0x3F)
      {
        sub_1007673CC();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_10057F4D4()
{
  if (!qword_10095CE48)
  {
    sub_10000CE78(&qword_10095CE50);
    sub_10057F544();
    v0 = sub_10076E19C();
    if (!v1)
    {
      atomic_store(v0, &qword_10095CE48);
    }
  }
}

unint64_t sub_10057F544()
{
  result = qword_10095CE58;
  if (!qword_10095CE58)
  {
    sub_10000CE78(&qword_10095CE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095CE58);
  }

  return result;
}

void sub_10057F5B8(void *a1)
{
  sub_1005809A4();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [v1 addSubview:Strong];
  }

  sub_10057E5D8();
  [v1 setNeedsLayout];
}

uint64_t (*sub_10057F648(uint64_t **a1))()
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
  v2[4] = sub_10057D530(v2);
  return sub_100019A4C;
}

uint64_t sub_10057F6B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_10057F70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10057F778(uint64_t *a1))()
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

void *sub_10057F8EC(unint64_t a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  if (!a2)
  {
    goto LABEL_10;
  }

  v8 = sub_10076C41C();
  if (v8 >> 62)
  {
    v23 = v8;
    v24 = sub_10077158C();
    v8 = v23;
    if (v24)
    {
      goto LABEL_4;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((v8 & 0xC000000000000001) != 0)
    {
      sub_10077149C();
    }

    else
    {
      if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    sub_10076B84C();

    sub_10077019C();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v4 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_10077021C();
    }

    sub_10077025C();

LABEL_10:
    if (!a1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (a1)
  {
LABEL_11:
    v9 = sub_1007601DC();
    sub_1000F93D0(v9);
  }

LABEL_12:
  v10 = _swiftEmptyArrayStorage;
  if (a4)
  {
    return v10;
  }

  a1 = _swiftEmptyArrayStorage >> 62;
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (sub_10077158C() <= a3)
    {
      return v10;
    }
  }

  else if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) <= a3)
  {
    return v10;
  }

  if (a3 < 0)
  {
    goto LABEL_49;
  }

  if (a1)
  {
    if (_swiftEmptyArrayStorage < 0)
    {
      a4 = _swiftEmptyArrayStorage;
    }

    else
    {
      a4 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
    }

    if (sub_10077158C() < 0)
    {
      goto LABEL_51;
    }

    v11 = sub_10077158C();
  }

  else
  {
    v11 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11 < a3)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if ((_swiftEmptyArrayStorage & 0xC000000000000001) == 0 || !a3)
  {

    if (!a1)
    {
      goto LABEL_29;
    }

LABEL_32:

    a4 = sub_10077159C();
    a1 = v15;
    a3 = v16;
    if (v16)
    {
      goto LABEL_34;
    }

LABEL_33:
    sub_1002347C8(a4, v14, a1, a3);
    v18 = v17;

LABEL_40:
    swift_unknownObjectRelease();
    return v18;
  }

  sub_10076C02C();

  v12 = 0;
  do
  {
    v13 = v12 + 1;
    sub_10077147C(v12);
    v12 = v13;
  }

  while (a3 != v13);
  if (a1)
  {
    goto LABEL_32;
  }

LABEL_29:
  a4 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
  v14 = (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 32;
  a3 = (2 * a3) | 1;
  if ((a3 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_34:
  v4 = v14;
  sub_10077169C();
  swift_unknownObjectRetain_n();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = _swiftEmptyArrayStorage;
  }

  v20 = v19[2];

  if (__OFSUB__(a3 >> 1, a1))
  {
    goto LABEL_52;
  }

  if (v20 != (a3 >> 1) - a1)
  {
LABEL_53:
    swift_unknownObjectRelease();
    v14 = v4;
    goto LABEL_33;
  }

  v21 = swift_dynamicCastClass();

  swift_unknownObjectRelease();
  v10 = v21;
  if (!v21)
  {
    v18 = _swiftEmptyArrayStorage;
    goto LABEL_40;
  }

  return v10;
}

uint64_t sub_10057FC34(uint64_t a1)
{
  v2 = sub_10075F21C();
  v36 = *(v2 - 8);
  __chkstk_darwin(v2);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&qword_10095D8B0);
  __chkstk_darwin(v4);
  v6 = &v33 - v5;
  v7 = sub_10000A5D4(&qword_10095D8B8);
  __chkstk_darwin(v7 - 8);
  v35 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  v15 = ASKDeviceTypeGetCurrent();
  v16 = sub_10076FF9C();
  v18 = v17;
  if (v16 == sub_10076FF9C() && v18 == v19)
  {

LABEL_9:
    v22 = 0;
    return v22 & 1;
  }

  v21 = sub_10077167C();

  v22 = 0;
  if ((v21 & 1) == 0)
  {
    if (a1)
    {
      sub_100760E3C();
      v23 = v36;
      v24 = *(v36 + 56);
      v24(v14, 0, 1, v2);
    }

    else
    {
      v23 = v36;
      v24 = *(v36 + 56);
      v24(v14, 1, 1, v2);
    }

    (*(v23 + 104))(v11, enum case for AppPlatform.watch(_:), v2);
    v24(v11, 0, 1, v2);
    v26 = *(v4 + 48);
    sub_100016E2C(v14, v6, &qword_10095D8B8);
    sub_100016E2C(v11, &v6[v26], &qword_10095D8B8);
    v27 = *(v23 + 48);
    if (v27(v6, 1, v2) == 1)
    {
      sub_10000CFBC(v11, &qword_10095D8B8);
      sub_10000CFBC(v14, &qword_10095D8B8);
      if (v27(&v6[v26], 1, v2) == 1)
      {
        sub_10000CFBC(v6, &qword_10095D8B8);
        goto LABEL_9;
      }
    }

    else
    {
      v28 = v35;
      sub_100016E2C(v6, v35, &qword_10095D8B8);
      if (v27(&v6[v26], 1, v2) != 1)
      {
        v29 = v34;
        (*(v23 + 32))(v34, &v6[v26], v2);
        sub_100580AE0(&qword_10095D8C0, &type metadata accessor for AppPlatform);
        v30 = v28;
        v31 = sub_10076FF1C();
        v32 = *(v23 + 8);
        v32(v29, v2);
        sub_10000CFBC(v11, &qword_10095D8B8);
        sub_10000CFBC(v14, &qword_10095D8B8);
        v32(v30, v2);
        sub_10000CFBC(v6, &qword_10095D8B8);
        v22 = v31 ^ 1;
        return v22 & 1;
      }

      sub_10000CFBC(v11, &qword_10095D8B8);
      sub_10000CFBC(v14, &qword_10095D8B8);
      (*(v23 + 8))(v28, v2);
    }

    sub_10000CFBC(v6, &qword_10095D8B0);
    v22 = 1;
  }

  return v22 & 1;
}

uint64_t sub_10058015C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1007673CC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&qword_10095D8A8);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = sub_10000A5D4(&qword_10094E260);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  if ((sub_10057FC34(a1) & 1) == 0)
  {
    v19 = 0;
    return v19 & 1;
  }

  (*(v5 + 104))(v16, enum case for ScreenshotsDisplayStyle.fourScreenshots(_:), v4);
  (*(v5 + 56))(v16, 0, 1, v4);
  v17 = *(v8 + 48);
  sub_100016E2C(a2, v10, &qword_10094E260);
  sub_100016E2C(v16, &v10[v17], &qword_10094E260);
  v18 = *(v5 + 48);
  if (v18(v10, 1, v4) != 1)
  {
    sub_100016E2C(v10, v13, &qword_10094E260);
    if (v18(&v10[v17], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v10[v17], v4);
      sub_100580AE0(&qword_10094FC90, &type metadata accessor for ScreenshotsDisplayStyle);
      v19 = sub_10076FF1C();
      v20 = *(v5 + 8);
      v20(v7, v4);
      sub_10000CFBC(v16, &qword_10094E260);
      v20(v13, v4);
      sub_10000CFBC(v10, &qword_10094E260);
      return v19 & 1;
    }

    sub_10000CFBC(v16, &qword_10094E260);
    (*(v5 + 8))(v13, v4);
    goto LABEL_8;
  }

  sub_10000CFBC(v16, &qword_10094E260);
  if (v18(&v10[v17], 1, v4) != 1)
  {
LABEL_8:
    sub_10000CFBC(v10, &qword_10095D8A8);
    v19 = 0;
    return v19 & 1;
  }

  sub_10000CFBC(v10, &qword_10094E260);
  v19 = 1;
  return v19 & 1;
}

void sub_100580554(objc_class *a1, uint64_t a2)
{
  v4 = sub_10057D820();
  if (v4 >> 62)
  {
    v16 = v4;
    v17 = sub_10077158C();
    v4 = v16;
    if (v17 > a2)
    {
LABEL_3:
      v5 = (v4 + 8 * a2);
      v6 = v4 & 0xC000000000000001;
      if ((v4 & 0xC000000000000001) == 0)
      {
        if (a2 < 0)
        {
          __break(1u);
        }

        else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
        {
          v7 = v5[4];
          goto LABEL_7;
        }

        __break(1u);
        return;
      }

      v7 = sub_10077149C();
LABEL_7:
      v18 = v7;
      type metadata accessor for VideoView();
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = v8;

        v10 = qword_1009602D0;
        v11 = [*(v9 + qword_1009602D0) layer];
        [v11 removeAllAnimations];

        [*(v9 + v10) setImage:a1];
      }

      else
      {

        if (v6)
        {
          v12 = sub_10077149C();
        }

        else
        {
          v12 = v5[4];
        }

        v18 = v12;

        type metadata accessor for BorderedScreenshotView();
        v13 = swift_dynamicCastClass();
        if (!v13)
        {
          goto LABEL_15;
        }

        v10 = OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView;
        v9 = v13;
        v14 = *(v13 + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
        v20.value.super.isa = a1;
        v20.is_nil = 0;
        sub_10075FCEC(v20, v15);
      }

      [*(v9 + v10) setNeedsDisplay];
LABEL_15:

      return;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    goto LABEL_3;
  }
}

void sub_100580754()
{
  v1 = sub_10000A5D4(&qword_10095CE50);
  __chkstk_darwin(v1);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_imageViews) = _swiftEmptyArrayStorage;
  type metadata accessor for BorderedScreenshotView();
  sub_10076D4CC();
  sub_10057F544();
  sub_10076E18C();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView) = 0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_metrics;
  if (qword_1009408B8 != -1)
  {
    swift_once();
  }

  v3 = sub_10076357C();
  v4 = sub_10000A61C(v3, qword_10095D838);
  (*(*(v3 - 8) + 16))(v0 + v2, v4, v3);
  v5 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayConfiguration;
  if (qword_10093F5B0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ScreenshotDisplayConfiguration();
  v7 = sub_10000A61C(v6, qword_10099CB78);
  sub_100125EEC(v7, v0 + v5);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_platform) = 0;
  v8 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayStyle;
  v9 = enum case for ScreenshotsDisplayStyle.standard(_:);
  v10 = sub_1007673CC();
  (*(*(v10 - 8) + 104))(v0 + v8, v9, v10);
  sub_10077156C();
  __break(1u);
}

void sub_1005809A4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_100580AE0(&qword_100942810, type metadata accessor for VideoView);
    v2 = [v7 superview];
    if (v2)
    {
      v3 = v2;
      sub_1000ACA5C();
      v4 = v0;
      v5 = sub_100770EEC();

      if ((v5 & 1) == 0)
      {
        return;
      }

      v6 = swift_unknownObjectWeakLoadStrong();
      if (!v6)
      {
        return;
      }

      v7 = v6;
      [v6 removeFromSuperview];
    }
  }
}

uint64_t sub_100580AC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100580AE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100580B28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v57 = a7;
  v58 = a8;
  v55 = a6;
  v52 = a5;
  v50 = a2;
  v48[1] = a1;
  v10 = sub_10000A5D4(&qword_100956730);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v56 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v51 = v48 - v14;
  __chkstk_darwin(v15);
  v49 = v48 - v16;
  __chkstk_darwin(v17);
  v19 = v48 - v18;
  __chkstk_darwin(v20);
  v22 = v48 - v21;
  v23 = sub_10076CBFC();
  __chkstk_darwin(v23 - 8);
  v54 = v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10076CBBC();
  v26 = __chkstk_darwin(v25);
  v53 = v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v26);
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1003AB714(a4, v22);
  sub_1003AB714(a3, v19);
  v30 = *(v11 + 80);
  v31 = (v30 + 16) & ~v30;
  v32 = (v12 + v30 + v31) & ~v30;
  v33 = (v12 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  sub_100582390(v22, v35 + v31);
  sub_100582390(v19, v35 + v32);
  *(v35 + v33) = v29;
  v36 = v50;
  *(v35 + v34) = v50;
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = v49;
  sub_1003AB714(v52, v49);
  v39 = (v30 + 32) & ~v30;
  v40 = swift_allocObject();
  *(v40 + 16) = v37;
  *(v40 + 24) = v36;
  sub_100582390(v38, v40 + v39);
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v51;
  sub_1003AB714(v55, v51);
  v43 = swift_allocObject();
  *(v43 + 16) = v41;
  *(v43 + 24) = v36;
  sub_100582390(v42, v43 + v39);
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = v56;
  sub_1003AB714(v57, v56);
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  *(v46 + 24) = v36;
  sub_100582390(v45, v46 + v39);
  swift_retain_n();
  sub_10076CBEC();
  return sub_10076CB7C();
}

uint64_t sub_100581024(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_10000A5D4(&qword_100956728);
  v35 = *(v3 - 8);
  __chkstk_darwin(v3);
  v34 = v29 - v4;
  v5 = sub_10000A5D4(&qword_100956730);
  __chkstk_darwin(v5 - 8);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v29 - v9;
  __chkstk_darwin(v11);
  v13 = v29 - v12;
  __chkstk_darwin(v14);
  v16 = v29 - v15;
  __chkstk_darwin(v17);
  v19 = v29 - v18;
  v20 = sub_10076CBBC();
  v32 = *(v20 - 8);
  v33 = v20;
  __chkstk_darwin(v20);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076887C();
  sub_1005832B4(&qword_10095D908, &type metadata accessor for GameCenterActivityFeedCard);
  result = sub_10076332C();
  if (v36[0])
  {
    sub_10076886C();
    sub_10076882C();
    v30 = v16;
    sub_10076885C();
    sub_10076884C();
    sub_10076883C();
    v24 = sub_10076881C();
    v29[2] = v29;
    __chkstk_darwin(v24);
    v29[1] = v29;
    v29[-8] = v22;
    v29[-7] = v2;
    v29[-6] = v31;
    v29[-5] = v19;
    v29[-4] = v16;
    v29[-3] = v13;
    v29[-2] = v10;
    v29[-1] = v7;
    __chkstk_darwin(v25);
    v29[-4] = sub_100409178;
    v29[-3] = v26;
    v29[-2] = v27;
    v29[-1] = v2;
    sub_10000A5D4(&qword_100956738);
    v31 = v2;
    sub_100409198();
    v28 = v34;
    sub_10076EC9C();
    sub_10076ECFC();
    v36[3] = v3;
    v36[4] = sub_100071820(&unk_100956790, &qword_100956728);
    sub_10000DB7C(v36);
    sub_10076EC8C();
    (*(v35 + 8))(v28, v3);
    sub_1007707FC();

    sub_10000CFBC(v7, &qword_100956730);
    sub_10000CFBC(v10, &qword_100956730);
    sub_10000CFBC(v13, &qword_100956730);
    sub_10000CFBC(v30, &qword_100956730);
    sub_10000CFBC(v19, &qword_100956730);
    return (*(v32 + 8))(v22, v33);
  }

  return result;
}

uint64_t sub_1005814C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a2;
  v28 = a7;
  v11 = sub_10076F4FC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&qword_100956730);
  __chkstk_darwin(v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v26 - v19;
  if (a3)
  {
    v21 = a4;
  }

  else
  {
    v21 = a5;
  }

  sub_1003AB714(v21, &v26 - v19);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    sub_1003AB714(v20, v17);
    v24 = *(v12 + 48);
    if (v24(v17, 1, v11) == 1)
    {
      sub_10076F4DC();
      if (v24(v17, 1, v11) != 1)
      {
        sub_10000CFBC(v17, &qword_100956730);
      }
    }

    else
    {
      (*(v12 + 32))(v14, v17, v11);
    }

    sub_100582884(a1, v27, v28, v14);

    (*(v12 + 8))(v14, v11);
  }

  return sub_10000CFBC(v20, &qword_100956730);
}

void *sub_100581714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29[1] = a1;
  v30 = a8;
  v10 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v10 - 8);
  v12 = v29 - v11;
  v13 = sub_10000A5D4(&qword_100956730);
  __chkstk_darwin(v13 - 8);
  v15 = v29 - v14;
  v16 = sub_10076F4FC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v29 - v21;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29[0] = a5;

    sub_1003AB714(a9, v15);
    v24 = *(v17 + 48);
    if (v24(v15, 1, v16) == 1)
    {
      sub_10076F4DC();
      if (v24(v15, 1, v16) != 1)
      {
        sub_10000CFBC(v15, &qword_100956730);
      }
    }

    else
    {
      (*(v17 + 32))(v22, v15, v16);
    }

    (*(v17 + 16))(v19, v22, v16);
    sub_10076939C();
    swift_allocObject();

    v25 = sub_10076936C();
    v26 = sub_10000A5D4(&unk_1009428E0);
    v27 = v30;
    sub_10076F5AC();
    v28 = *(v26 - 8);
    if ((*(v28 + 48))(v12, 1, v26) == 1)
    {
      (*(v17 + 8))(v22, v16);

      return sub_10000CFBC(v12, &unk_100943200);
    }

    else
    {
      sub_1002642D4(v25, 1, v27, v12);

      (*(v17 + 8))(v22, v16);
      return (*(v28 + 8))(v12, v26);
    }
  }

  return result;
}

void *sub_100581AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28[1] = a4;
  v29 = a7;
  v9 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v9 - 8);
  v11 = v28 - v10;
  v12 = sub_10000A5D4(&qword_100956730);
  __chkstk_darwin(v12 - 8);
  v14 = v28 - v13;
  v15 = sub_10076F4FC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v28 - v20;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    sub_1003AB714(a8, v14);
    v23 = *(v16 + 48);
    if (v23(v14, 1, v15) == 1)
    {
      sub_10076F4DC();
      if (v23(v14, 1, v15) != 1)
      {
        sub_10000CFBC(v14, &qword_100956730);
      }
    }

    else
    {
      (*(v16 + 32))(v21, v14, v15);
    }

    (*(v16 + 16))(v18, v21, v15);
    sub_10076932C();
    swift_allocObject();

    v24 = sub_10076930C();
    v25 = sub_10000A5D4(&unk_1009428E0);
    v26 = v29;
    sub_10076F5AC();
    v27 = *(v25 - 8);
    if ((*(v27 + 48))(v11, 1, v25) == 1)
    {
      (*(v16 + 8))(v21, v15);

      return sub_10000CFBC(v11, &unk_100943200);
    }

    else
    {
      sub_100264308(v24, 1, v26, v11);

      (*(v16 + 8))(v21, v15);
      return (*(v27 + 8))(v11, v25);
    }
  }

  return result;
}

uint64_t sub_100581E84(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_10000A5D4(&qword_100956730);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  v13 = sub_10076F4FC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    sub_1003AB714(a6, v12);
    v19 = *(v14 + 48);
    if (v19(v12, 1, v13) == 1)
    {
      sub_10076F4DC();
      if (v19(v12, 1, v13) != 1)
      {
        sub_10000CFBC(v12, &qword_100956730);
      }
    }

    else
    {
      (*(v14 + 32))(v16, v12, v13);
    }

    sub_100582AB4(a1, a2, a5, v16);

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t type metadata accessor for GameCenterActivityFeedCollectionViewCell()
{
  result = qword_10095D8F8;
  if (!qword_10095D8F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005821C8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100582200()
{
  v1 = *(sub_10000A5D4(&qword_100956730) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = (v4 + v2 + v3) & ~v2;
  v6 = sub_10076F4FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  if (!v8(v0 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v5, v6);
  }

  return _swift_deallocObject(v0, ((((v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100582390(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100956730);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100582400(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(sub_10000A5D4(&qword_100956730) - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = (v10 + v8 + v9) & ~v8;
  v12 = (v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v3 + v12);
  v14 = *(v3 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1005814C0(a1, a2, a3, v3 + v9, v3 + v11, v13, v14);
}

void *sub_1005825A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(sub_10000A5D4(&qword_100956730) - 8);
  v12 = *(v5 + 16);
  v13 = *(v5 + 24);
  v14 = v5 + ((*(v11 + 80) + 32) & ~*(v11 + 80));

  return sub_100581AD0(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_100582650()
{
  v1 = *(sub_10000A5D4(&qword_100956730) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_10076F4FC();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100582778(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(sub_10000A5D4(&qword_100956730) - 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_100581E84(a1, a2, a3, v8, v9, v10);
}

double sub_100582810(void *a1, double a2)
{
  v3 = [a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  sub_10076CB6C();
  return a2;
}

uint64_t sub_100582884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_10076F4FC();
  v10 = __chkstk_darwin(v9);
  (*(v12 + 16))(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v10);
  sub_10076989C();
  swift_allocObject();

  v13 = sub_10076987C();
  v14 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {

    return sub_10000CFBC(v8, &unk_100943200);
  }

  else
  {
    sub_1002642A0(v13, 1, a3, v8);

    return (*(v15 + 8))(v8, v14);
  }
}

uint64_t sub_100582AB4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v49 = a4;
  v52 = a3;
  v54._countAndFlagsBits = a1;
  v54._object = a2;
  v4 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v4 - 8);
  v53 = &v39 - v5;
  v50 = sub_10075F65C();
  v47 = *(v50 - 8);
  __chkstk_darwin(v50);
  v51 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100765F6C();
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin(v7);
  v48 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100766EDC();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v42 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10076F4FC();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v12 - 8);
  v14 = &v39 - v13;
  v15 = sub_10076C15C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v19 - 8);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v39 - v23;
  v25 = sub_10075DB7C();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v55 = &v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v58 = 0;
  *(&v58 + 1) = 0xE000000000000000;
  sub_10077145C(29);

  *&v58 = 0xD00000000000001BLL;
  *(&v58 + 1) = 0x80000001007CE990;
  sub_1007700CC(v54);
  sub_10075DB6C();

  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    v28 = &unk_1009435D0;
    v29 = v24;
    return sub_10000CFBC(v29, v28);
  }

  v30 = v55;
  (*(v26 + 32))(v55, v24, v25);
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v31 = *(v16 + 104);
  v39 = v18;
  v31(v18, enum case for FlowPage.product(_:), v15);
  (*(v26 + 16))(v21, v30, v25);
  (*(v26 + 56))(v21, 0, 1, v25);
  v32 = sub_10076096C();
  (*(*(v32 - 8) + 56))(v14, 1, 1, v32);
  v56 = 0u;
  v57 = 0u;
  (*(v40 + 16))(v11, v49, v41);
  (*(v43 + 104))(v42, enum case for FlowPresentationContext.infer(_:), v44);
  (*(v45 + 104))(v48, enum case for FlowAnimationBehavior.infer(_:), v46);
  (*(v47 + 104))(v51, enum case for FlowOrigin.inapp(_:), v50);
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v33 = sub_10075F5EC();
  v34 = sub_10000A5D4(&unk_1009428E0);
  v35 = v52;
  v36 = v53;
  sub_10076F5AC();
  v37 = *(v34 - 8);
  if ((*(v37 + 48))(v36, 1, v34) == 1)
  {
    (*(v26 + 8))(v55, v25);

    v28 = &unk_100943200;
    v29 = v36;
    return sub_10000CFBC(v29, v28);
  }

  sub_100263C24(v33, 1, v35, v36);

  (*(v26 + 8))(v55, v25);
  return (*(v37 + 8))(v36, v34);
}

uint64_t sub_1005832B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TodayCardLockupLayout.init(metrics:artworkView:ordinalText:headingText:titleText:subtitleText:tertiaryTitleText:crossLinkTitleText:crossLinkSubtitleText:offerText:offerButton:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v78 = a7;
  v79 = a5;
  v83 = a6;
  v80 = a4;
  v81 = a3;
  v74 = a1;
  v75 = a9;
  sub_10015E5E0(a1, v90);
  v82 = a8;
  v14 = *(a8 + 24);
  BYTE8(v90[47]) = v14 != 0;
  v15 = a2[3];
  v16 = a2[4];
  v76 = a2;
  sub_10000CF78(a2, v15);
  v17 = sub_1007711AC();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v73 - v19;
  sub_10076D21C();
  v21 = *(v15 - 8);
  if ((*(v21 + 48))(v20, 1, v15) == 1)
  {
    (*(v18 + 8))(v20, v17);
    v89 = 0;
    v87 = 0u;
    v88 = 0u;
  }

  else
  {
    *(&v88 + 1) = v15;
    v89 = v16;
    v22 = sub_10000DB7C(&v87);
    (*(v21 + 32))(v22, v20, v15);
  }

  *(&v90[22] + 8) = v87;
  *(&v90[23] + 8) = v88;
  *(&v90[24] + 1) = v89;
  sub_100016E2C(v81, v84, &qword_10094BB30);
  v23 = v85;
  if (v85)
  {
    v24 = v86;
    sub_10000CF78(v84, v85);
    v25 = sub_1007711AC();
    v26 = *(v25 - 8);
    __chkstk_darwin(v25);
    v28 = &v73 - v27;
    sub_10076D6BC();
    v29 = *(v23 - 8);
    if ((*(v29 + 48))(v28, 1, v23) == 1)
    {
      (*(v26 + 8))(v28, v25);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v23;
      v89 = v24;
      v30 = sub_10000DB7C(&v87);
      (*(v29 + 32))(v30, v28, v23);
    }

    sub_10000CD74(v84);
  }

  else
  {
    sub_10000CFBC(v84, &qword_10094BB30);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  v90[25] = v87;
  v90[26] = v88;
  *&v90[27] = v89;
  sub_100016E2C(v80, v84, &qword_10094BB30);
  v31 = v85;
  if (v85)
  {
    v32 = v86;
    sub_10000CF78(v84, v85);
    v33 = sub_1007711AC();
    v34 = *(v33 - 8);
    __chkstk_darwin(v33);
    v36 = &v73 - v35;
    sub_10076D6BC();
    v37 = *(v31 - 8);
    if ((*(v37 + 48))(v36, 1, v31) == 1)
    {
      (*(v34 + 8))(v36, v33);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v31;
      v89 = v32;
      v38 = sub_10000DB7C(&v87);
      (*(v37 + 32))(v38, v36, v31);
    }

    sub_10000CD74(v84);
  }

  else
  {
    sub_10000CFBC(v84, &qword_10094BB30);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  v77 = a10;
  *(&v90[27] + 8) = v87;
  *(&v90[28] + 8) = v88;
  *(&v90[29] + 1) = v89;
  sub_10000A570(v79, &v90[30]);
  v39 = v83[3];
  v40 = v83[4];
  sub_10000CF78(v83, v39);
  v41 = sub_1007711AC();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = &v73 - v43;
  if (v14)
  {
    sub_10076D6AC();
  }

  else
  {
    sub_10076D6BC();
  }

  v45 = *(v39 - 8);
  if ((*(v45 + 48))(v44, 1, v39) == 1)
  {
    (*(v42 + 8))(v44, v41);
    v89 = 0;
    v87 = 0u;
    v88 = 0u;
  }

  else
  {
    *(&v88 + 1) = v39;
    v89 = v40;
    v46 = sub_10000DB7C(&v87);
    (*(v45 + 32))(v46, v44, v39);
  }

  *(&v90[32] + 8) = v87;
  *(&v90[33] + 8) = v88;
  *(&v90[34] + 1) = v89;
  sub_100016E2C(v78, v84, &qword_10094BB30);
  v47 = v85;
  if (v85)
  {
    v48 = v86;
    sub_10000CF78(v84, v85);
    v49 = sub_1007711AC();
    v50 = *(v49 - 8);
    __chkstk_darwin(v49);
    v52 = &v73 - v51;
    sub_10076D6BC();
    v53 = *(v47 - 8);
    if ((*(v53 + 48))(v52, 1, v47) == 1)
    {
      (*(v50 + 8))(v52, v49);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v47;
      v89 = v48;
      v54 = sub_10000DB7C(&v87);
      (*(v53 + 32))(v54, v52, v47);
    }

    sub_10000CD74(v84);
  }

  else
  {
    sub_10000CFBC(v84, &qword_10094BB30);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  v90[35] = v87;
  v90[36] = v88;
  *&v90[37] = v89;
  sub_100016E2C(v82, &v90[37] + 8, &qword_10094BB30);
  sub_100016E2C(v77, v84, &qword_10094BB30);
  v55 = v85;
  if (v85)
  {
    v56 = v86;
    sub_10000CF78(v84, v85);
    v57 = sub_1007711AC();
    v58 = *(v57 - 8);
    __chkstk_darwin(v57);
    v60 = &v73 - v59;
    sub_10076D6AC();
    v61 = *(v55 - 8);
    if ((*(v61 + 48))(v60, 1, v55) == 1)
    {
      (*(v58 + 8))(v60, v57);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v55;
      v89 = v56;
      v62 = sub_10000DB7C(&v87);
      (*(v61 + 32))(v62, v60, v55);
    }

    sub_10000CD74(v84);
  }

  else
  {
    sub_10000CFBC(v84, &qword_10094BB30);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  v90[40] = v87;
  v90[41] = v88;
  *&v90[42] = v89;
  sub_100016E2C(a11, v84, &qword_10094BB30);
  v63 = v85;
  if (v85)
  {
    v64 = v86;
    sub_10000CF78(v84, v85);
    v65 = sub_1007711AC();
    v66 = *(v65 - 8);
    __chkstk_darwin(v65);
    v68 = &v73 - v67;
    sub_10076D6BC();
    v69 = *(v63 - 8);
    if ((*(v69 + 48))(v68, 1, v63) == 1)
    {
      sub_10000CFBC(a11, &qword_10094BB30);
      sub_10000CFBC(v77, &qword_10094BB30);
      sub_10000CFBC(v78, &qword_10094BB30);
      sub_10000CD74(v79);
      sub_10000CFBC(v80, &qword_10094BB30);
      sub_10000CFBC(v81, &qword_10094BB30);
      sub_10015E58C(v74);
      sub_10000CFBC(v82, &qword_10094BB30);
      (*(v66 + 8))(v68, v65);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v63;
      v89 = v64;
      v70 = sub_10000DB7C(&v87);
      (*(v69 + 32))(v70, v68, v63);
      sub_10000CFBC(a11, &qword_10094BB30);
      sub_10000CFBC(v77, &qword_10094BB30);
      sub_10000CFBC(v78, &qword_10094BB30);
      sub_10000CD74(v79);
      sub_10000CFBC(v80, &qword_10094BB30);
      sub_10000CFBC(v81, &qword_10094BB30);
      sub_10015E58C(v74);
      sub_10000CFBC(v82, &qword_10094BB30);
    }

    sub_10000CD74(v84);
  }

  else
  {
    sub_10000CFBC(a11, &qword_10094BB30);
    sub_10000CFBC(v77, &qword_10094BB30);
    sub_10000CFBC(v78, &qword_10094BB30);
    sub_10000CD74(v79);
    sub_10000CFBC(v80, &qword_10094BB30);
    sub_10000CFBC(v81, &qword_10094BB30);
    sub_10015E58C(v74);
    sub_10000CFBC(v82, &qword_10094BB30);
    sub_10000CFBC(v84, &qword_10094BB30);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  *(&v90[42] + 8) = v87;
  *(&v90[43] + 8) = v88;
  *(&v90[44] + 1) = v89;
  v71 = *(a12 + 16);
  v90[45] = *a12;
  v90[46] = v71;
  *&v90[47] = *(a12 + 32);
  memcpy(v75, v90, 0x2F9uLL);
  sub_10000CD74(v83);
  return sub_10000CD74(v76);
}

uint64_t TodayCardLockupLayout.Metrics.init(artworkSize:artworkMargin:ordinalSpaceProvider:headingSpace:titleSpace:subtitleSpace:tertiaryTitleSpace:offerTextSpace:offerButtonSize:offerButtonMargin:preferVerticallyStackedIcon:preferStackedLargeAXLayouts:singleLineTitleAndSubtitle:allowAccessibilityLayout:backgroundAssetHeight:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13, char a14, __int128 *a15, char a16, char a17, char a18, char a19, uint64_t a20, char a21)
{
  *a9 = a10;
  *(a9 + 8) = a11;
  sub_100012498(a1, a9 + 16);
  *(a9 + 56) = a2;
  *(a9 + 64) = a3;
  sub_100012498(a4, a9 + 72);
  sub_100012498(a5, a9 + 112);
  sub_100012498(a8, a9 + 232);
  sub_100012498(a6, a9 + 152);
  sub_100012498(a7, a9 + 192);
  *(a9 + 272) = a12;
  *(a9 + 280) = a13;
  *(a9 + 288) = a14 & 1;
  result = sub_100012498(a15, a9 + 296);
  *(a9 + 336) = a16;
  *(a9 + 337) = a17;
  *(a9 + 338) = a18;
  *(a9 + 339) = a19;
  *(a9 + 344) = a20;
  *(a9 + 352) = a21 & 1;
  return result;
}

uint64_t TodayCardLockupLayout.Metrics.ordinalSpaceProvider.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t TodayCardLockupLayout.Metrics.ordinalSpaceProvider.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t TodayCardLockupLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  sub_10000CD74(v1 + 112);

  return sub_100012498(a1, v1 + 112);
}

uint64_t TodayCardLockupLayout.Metrics.subtitleSpace.setter(__int128 *a1)
{
  sub_10000CD74(v1 + 152);

  return sub_100012498(a1, v1 + 152);
}

uint64_t TodayCardLockupLayout.Metrics.tertiaryTitleSpace.setter(__int128 *a1)
{
  sub_10000CD74(v1 + 192);

  return sub_100012498(a1, v1 + 192);
}

uint64_t TodayCardLockupLayout.Metrics.offerTextSpace.setter(__int128 *a1)
{
  sub_10000CD74(v1 + 232);

  return sub_100012498(a1, v1 + 232);
}

uint64_t TodayCardLockupLayout.Metrics.offerButtonSize.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 272) = result;
  *(v3 + 280) = a2;
  *(v3 + 288) = a3 & 1;
  return result;
}

uint64_t TodayCardLockupLayout.Metrics.offerButtonMargin.setter(__int128 *a1)
{
  sub_10000CD74(v1 + 296);

  return sub_100012498(a1, v1 + 296);
}

uint64_t TodayCardLockupLayout.Metrics.backgroundAssetHeight.setter(uint64_t result, char a2)
{
  *(v2 + 344) = result;
  *(v2 + 352) = a2 & 1;
  return result;
}

double TodayCardLockupLayout.measure(toFit:with:)(void *a1, double a2)
{
  if ((sub_10077071C() & 1) != 0 && *(v2 + 339) == 1)
  {
    sub_100584A38(0, a1, v8);
  }

  else
  {
    sub_100585674(0, a1, v8, a2);
  }

  sub_100012498(v8, v9);
  sub_10000CF78(v9, v9[3]);
  sub_10076E0FC();
  v6 = v5;
  sub_10000CD74(v9);
  return v6;
}

uint64_t TodayCardLockupLayout.place(at:with:)(void *a1, double a2, double a3, double a4)
{
  if (*(v4 + 760) == 1)
  {
    if ((sub_10077071C() & 1) != 0 && *(v4 + 339) == 1)
    {
      sub_100584A38(1u, a1, v8);
    }

    else
    {
      sub_100585674(1, a1, v8, a4);
    }

    sub_100012498(v8, v9);
    sub_10000CF78(v9, v10);
    sub_10076E0EC();
    sub_10000CD74(v9);
  }

  if ((sub_10077071C() & 1) != 0 && *(v4 + 339) == 1)
  {
    sub_100584A38(0, a1, v8);
  }

  else
  {
    sub_100585674(0, a1, v8, a4);
  }

  sub_100012498(v8, v9);
  sub_10000CF78(v9, v10);
  sub_10076E0EC();
  return sub_10000CD74(v9);
}

uint64_t sub_100584A38@<X0>(unsigned int a1@<W0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v78 = a1;
  v81 = a3;
  v6 = sub_10076D8DC();
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin(v6);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076DFEC();
  v10 = *(v9 - 8);
  v84 = v9;
  v85 = v10;
  __chkstk_darwin(v9);
  v89 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v86 = &v75 - v13;
  __chkstk_darwin(v14);
  v87 = &v75 - v15;
  __chkstk_darwin(v16);
  v18 = (&v75 - v17);
  v19 = sub_10076D65C();
  v79 = *(v19 - 8);
  v80 = v19;
  __chkstk_darwin(v19);
  v88 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076D63C();
  sub_10000CF78((v3 + 112), *(v3 + 136));
  sub_10076D41C();
  v22 = v21 + v21;
  sub_10000CF78((v4 + 152), *(v4 + 176));
  sub_10076D41C();
  v24 = v22 + v23;
  sub_100016E2C(v3 + 360, v90, &unk_10094DA00);
  v82 = a2;
  if (*(&v90[1] + 1))
  {
    sub_100012498(v90, v94);
    if (*(v3 + 336) & 1) != 0 || (v39 = [a2 preferredContentSizeCategory], v40 = sub_10077087C(), v39, (v40) && *(v4 + 337) == 1)
    {
      sub_10000CF78(v94, v95);
      sub_10076D2DC();
      v25 = *v4;
      v18[3] = &type metadata for CGFloat;
      v18[4] = &protocol witness table for CGFloat;
      *v18 = v25;
      v26 = enum case for Resize.Rule.replaced(_:);
      v83 = enum case for Resize.Rule.replaced(_:);
      v27 = v84;
      v28 = *(v85 + 104);
      (v28)(v18, enum case for Resize.Rule.replaced(_:), v84);
      v29 = *(v4 + 8);
      v30 = v87;
      *(v87 + 3) = &type metadata for CGFloat;
      v30[4] = &protocol witness table for CGFloat;
      *v30 = v29;
      (v28)(v30, v26, v27);
      v31 = v18;
      v32 = enum case for Resize.Rule.unchanged(_:);
      (v28)(v86, enum case for Resize.Rule.unchanged(_:), v27);
      (v28)(v89, v32, v27);
      v77 = sub_10076DFFC();
      v92 = v77;
      v93 = &protocol witness table for Resize;
      sub_10000DB7C(v91);
      sub_10076E00C();
      sub_100588468(v4, v90);
      v33 = swift_allocObject();
      memcpy((v33 + 16), v90, 0x2F9uLL);
      v34 = v82;
      *(v33 + 784) = v82;
      v35 = v34;
      sub_10076D5FC();
      v36 = v86;

      sub_10000CD74(v91);
      sub_1005861C0(v78 & 1, v35, v90);
      sub_10076DF8C();
      v92 = sub_10076DFAC();
      v93 = &protocol witness table for Center;
      sub_10000DB7C(v91);
      sub_10076DFBC();
      v31[3] = &type metadata for CGFloat;
      v31[4] = &protocol witness table for CGFloat;
      *v31 = v24;
      (v28)(v31, v83, v27);
      (v28)(v87, v32, v27);
      (v28)(v36, v32, v27);
      v78 = v32;
      v37 = v32;
      v18 = v31;
      (v28)(v89, v37, v27);
      *(&v90[1] + 1) = v77;
      *&v90[2] = &protocol witness table for Resize;
      sub_10000DB7C(v90);
      sub_10076E00C();
      sub_10076D5FC();
      sub_10000CD74(v90);
      v38 = v94;
      goto LABEL_12;
    }

    sub_10000CD74(v94);
  }

  else
  {
    sub_10000CFBC(v90, &unk_10094DA00);
  }

  sub_10076D8AC();
  sub_100016E2C(v4 + 360, v90, &unk_10094DA00);
  if (*(&v90[1] + 1))
  {
    sub_100012498(v90, v94);
    v41 = v18;
    v42 = v84;
    v75 = v8;
    sub_10000CF78(v94, v95);
    sub_10076D2DC();
    v43 = *v4;
    v41[3] = &type metadata for CGFloat;
    v41[4] = &protocol witness table for CGFloat;
    *v41 = v43;
    v44 = enum case for Resize.Rule.replaced(_:);
    v45 = v87;
    v46 = *(v85 + 104);
    v83 = enum case for Resize.Rule.replaced(_:);
    v46(v41, enum case for Resize.Rule.replaced(_:), v42);
    v47 = *(v4 + 8);
    v45[3] = &type metadata for CGFloat;
    v45[4] = &protocol witness table for CGFloat;
    v48 = v89;
    v49 = v86;
    *v45 = v47;
    v46(v45, v44, v42);
    v50 = enum case for Resize.Rule.unchanged(_:);
    v46(v49, enum case for Resize.Rule.unchanged(_:), v42);
    v51 = v42;
    v18 = v41;
    v46(v48, v50, v51);
    a2 = v82;
    v92 = sub_10076DFFC();
    v93 = &protocol witness table for Resize;
    sub_10000DB7C(v91);
    v8 = v75;
    v52 = v50;
    v53 = v83;
    sub_10076E00C();
    sub_100588468(v4, v90);
    v54 = swift_allocObject();
    memcpy((v54 + 16), v90, 0x2F9uLL);
    *(v54 + 784) = a2;
    v55 = a2;
    sub_10076D89C();

    sub_10000CD74(v91);
    sub_10000CD74(v94);
  }

  else
  {
    sub_10000CFBC(v90, &unk_10094DA00);
    v53 = enum case for Resize.Rule.replaced(_:);
    v52 = enum case for Resize.Rule.unchanged(_:);
  }

  sub_10000CF78((v4 + 16), *(v4 + 40));
  sub_10076D41C();
  sub_1005861C0(v78 & 1, a2, v90);
  sub_10076DF9C();
  v95 = sub_10076DFAC();
  v96 = &protocol witness table for Center;
  sub_10000DB7C(v94);
  sub_10076DFBC();
  v18[3] = &type metadata for CGFloat;
  v18[4] = &protocol witness table for CGFloat;
  *v18 = v24;
  v28 = *(v85 + 104);
  v83 = v53;
  v56 = v53;
  v57 = v84;
  (v28)(v18, v56, v84);
  (v28)(v87, v52, v57);
  (v28)(v86, v52, v57);
  v78 = v52;
  v28(v89);
  *(&v90[1] + 1) = sub_10076DFFC();
  *&v90[2] = &protocol witness table for Resize;
  sub_10000DB7C(v90);
  sub_10076E00C();
  sub_10076D89C();
  sub_10000CD74(v90);
  v58 = v77;
  *(&v90[1] + 1) = v77;
  *&v90[2] = &protocol witness table for HorizontalStack;
  v59 = sub_10000DB7C(v90);
  v60 = v8;
  v61 = v76;
  (*(v76 + 16))(v59, v60, v58);
  sub_10076D5FC();
  (*(v61 + 8))(v60, v58);
  v38 = v90;
LABEL_12:
  sub_10000CD74(v38);
  sub_100016E2C(v4 + 720, v90, &unk_10094DA00);
  if (*(&v90[1] + 1))
  {
    sub_100012498(v90, v94);
    if ((*(v4 + 288) & 1) == 0)
    {
      v63 = *(v4 + 272);
      v62 = *(v4 + 280);
      v64 = v87;
      sub_10000CF78(v94, v95);
      sub_10076D2DC();
      v18[3] = &type metadata for CGFloat;
      v18[4] = &protocol witness table for CGFloat;
      *v18 = v63;
      v65 = v84;
      v66 = v83;
      (v28)(v18, v83, v84);
      v64[3] = &type metadata for CGFloat;
      v64[4] = &protocol witness table for CGFloat;
      *v64 = v62;
      (v28)(v64, v66, v65);
      v67 = v78;
      (v28)(v86, v78, v65);
      (v28)(v89, v67, v65);
      v92 = sub_10076DFFC();
      v93 = &protocol witness table for Resize;
      sub_10000DB7C(v91);
      sub_10076E00C();
      sub_100588468(v4, v90);
      v68 = swift_allocObject();
      memcpy((v68 + 16), v90, 0x2F9uLL);
      v69 = v82;
      *(v68 + 784) = v82;
      v70 = v69;
      sub_10076D5FC();

      sub_10000CD74(v91);
    }

    sub_10000CD74(v94);
  }

  else
  {
    sub_10000CFBC(v90, &unk_10094DA00);
  }

  v72 = v80;
  v71 = v81;
  v81[3] = v80;
  v71[4] = &protocol witness table for VerticalStack;
  v73 = sub_10000DB7C(v71);
  return (*(v79 + 32))(v73, v88, v72);
}

uint64_t sub_100585674@<X0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v5 = v4;
  v85 = a2;
  LODWORD(v6) = a1;
  v78 = a3;
  v82 = sub_10076DFEC();
  v8 = *(v82 - 8);
  __chkstk_darwin(v82);
  v84 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v83 = &v75 - v11;
  __chkstk_darwin(v12);
  v14 = &v75 - v13;
  __chkstk_darwin(v15);
  v17 = &v75 - v16;
  v18 = sub_10076D8DC();
  v79 = *(v18 - 8);
  v80 = v18;
  __chkstk_darwin(v18);
  v86 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076D8AC();
  sub_100016E2C(v4 + 360, v88, &unk_10094DA00);
  if (*(&v88[1] + 1))
  {
    sub_100012498(v88, v95);
    if ((*(v4 + 336) & 1) == 0)
    {
      sub_10000CF78(v95, v96);
      sub_10076D2DC();
      v20 = *v4;
      *(v17 + 3) = &type metadata for CGFloat;
      *(v17 + 4) = &protocol witness table for CGFloat;
      *v17 = v20;
      v21 = enum case for Resize.Rule.replaced(_:);
      v22 = *(v8 + 104);
      v77 = v6;
      v6 = v82;
      v22(v17, enum case for Resize.Rule.replaced(_:), v82);
      v23 = *(v5 + 8);
      *(v14 + 3) = &type metadata for CGFloat;
      *(v14 + 4) = &protocol witness table for CGFloat;
      *v14 = v23;
      v22(v14, v21, v6);
      v24 = enum case for Resize.Rule.unchanged(_:);
      v81 = v8;
      v22(v83, enum case for Resize.Rule.unchanged(_:), v6);
      v25 = v6;
      LOBYTE(v6) = v77;
      v22(v84, v24, v25);
      v93 = sub_10076DFFC();
      v94 = &protocol witness table for Resize;
      sub_10000DB7C(v92);
      v8 = v81;
      sub_10076E00C();
      sub_100588468(v5, v88);
      v26 = swift_allocObject();
      memcpy((v26 + 16), v88, 0x2F9uLL);
      v27 = v85;
      *(v26 + 784) = v85;
      v28 = v27;
      sub_10076D89C();

      sub_10000CD74(v92);
      sub_10000CF78((v5 + 16), *(v5 + 40));
      sub_10076D41C();
      a4 = a4 - v20 - v29;
    }

    sub_10000CD74(v95);
  }

  else
  {
    sub_10000CFBC(v88, &unk_10094DA00);
  }

  sub_100016E2C(v5 + 720, v88, &unk_10094DA00);
  v30 = *(&v88[1] + 1);
  sub_10000CFBC(v88, &unk_10094DA00);
  if (v30 && (*(v5 + 288) & 1) == 0)
  {
    v31 = a4 - *(v5 + 272);
    sub_10000CF78((v5 + 296), *(v5 + 320));
    sub_10076D41C();
    a4 = v31 - v32;
  }

  sub_1005861C0(v6 & 1, v85, v95);
  sub_10000CF78(v95, v96);
  sub_10076E0FC();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_10000A570(v95, v92);
  *(v17 + 3) = &type metadata for CGFloat;
  *(v17 + 4) = &protocol witness table for CGFloat;
  *v17 = a4;
  v41 = enum case for Resize.Rule.replaced(_:);
  v42 = *(v8 + 104);
  v43 = v82;
  v42(v17, enum case for Resize.Rule.replaced(_:), v82);
  *(v14 + 3) = &type metadata for CGFloat;
  *(v14 + 4) = &protocol witness table for CGFloat;
  *v14 = v36;
  v77 = v41;
  v42(v14, v41, v43);
  v44 = enum case for Resize.Rule.unchanged(_:);
  v42(v83, enum case for Resize.Rule.unchanged(_:), v43);
  v76 = v44;
  v81 = v8 + 104;
  v42(v84, v44, v43);
  v45 = sub_10076DFFC();
  *(&v88[1] + 1) = v45;
  *&v88[2] = &protocol witness table for Resize;
  sub_10000DB7C(v88);
  sub_10076E00C();
  sub_10076D89C();
  sub_10000CD74(v88);
  sub_100016E2C(v5 + 720, v88, &unk_10094DA00);
  if (!*(&v88[1] + 1))
  {
    sub_10000CFBC(v88, &unk_10094DA00);
    goto LABEL_13;
  }

  sub_100012498(v88, v92);
  if ((*(v5 + 288) & 1) == 0)
  {
    v50 = *(v5 + 272);
    v49 = *(v5 + 280);
    sub_10000CF78(v92, v93);
    sub_10076D2DC();
    *(v17 + 3) = &type metadata for CGFloat;
    *(v17 + 4) = &protocol witness table for CGFloat;
    *v17 = v50;
    v51 = v77;
    v75 = v45;
    v52 = v82;
    v42(v17, v77, v82);
    *(v14 + 3) = &type metadata for CGFloat;
    *(v14 + 4) = &protocol witness table for CGFloat;
    *v14 = v49;
    v42(v14, v51, v52);
    v53 = v76;
    v42(v83, v76, v52);
    v54 = v52;
    v55 = v75;
    v42(v84, v53, v54);
    *(&v88[1] + 1) = v55;
    *&v88[2] = &protocol witness table for Resize;
    sub_10000DB7C(v88);
    sub_10076E00C();
    sub_10076DF9C();
    v90 = sub_10076DFAC();
    v91 = &protocol witness table for Center;
    sub_10000DB7C(v89);
    sub_10076DFBC();
    sub_100588468(v5, v88);
    v56 = swift_allocObject();
    memcpy((v56 + 16), v88, 0x2F9uLL);
    v57 = v85;
    *(v56 + 784) = v85;
    v58 = v57;
    sub_10076D89C();

    sub_10000CD74(v89);
    sub_100016E2C(v5 + 360, v88, &unk_10094DA00);
    if (*(&v88[1] + 1))
    {
      sub_100012498(v88, v89);
      v59 = v78;
      if (*(v5 + 336) == 1)
      {
        v59[3] = sub_10076D65C();
        v59[4] = &protocol witness table for VerticalStack;
        v85 = sub_10000DB7C(v59);
        sub_10076D63C();
        sub_10000CF78(v89, v90);
        sub_10076D2DC();
        v60 = *v5;
        *(v17 + 3) = &type metadata for CGFloat;
        *(v17 + 4) = &protocol witness table for CGFloat;
        *v17 = v60;
        v61 = v77;
        v62 = v82;
        v78 = v58;
        v42(v17, v77, v82);
        v63 = *(v5 + 8);
        *(v14 + 3) = &type metadata for CGFloat;
        *(v14 + 4) = &protocol witness table for CGFloat;
        *v14 = v63;
        v42(v14, v61, v62);
        v64 = v76;
        v42(v83, v76, v62);
        v42(v84, v64, v62);
        v87[3] = v75;
        v87[4] = &protocol witness table for Resize;
        sub_10000DB7C(v87);
        sub_10076E00C();
        sub_100588468(v5, v88);
        v65 = swift_allocObject();
        v65[2] = v50;
        v65[3] = v49;
        v65[4] = v34;
        v65[5] = v36;
        v65[6] = v38;
        v65[7] = v40;
        memcpy(v65 + 8, v88, 0x2F9uLL);
        v66 = v78;
        v65[104] = v78;
        v67 = v66;
        sub_10076D5FC();

        sub_10000CD74(v87);
        v68 = v80;
        *(&v88[1] + 1) = v80;
        *&v88[2] = &protocol witness table for HorizontalStack;
        v69 = sub_10000DB7C(v88);
        v70 = v79;
        v71 = v86;
        (*(v79 + 16))(v69, v86, v68);
        sub_10076D5FC();
        (*(v70 + 8))(v71, v68);
        sub_10000CD74(v88);
        sub_10000CD74(v89);
LABEL_20:
        sub_10000CD74(v92);
        return sub_10000CD74(v95);
      }

      sub_10000CD74(v89);
    }

    else
    {
      sub_10000CFBC(v88, &unk_10094DA00);
      v59 = v78;
    }

    v72 = v80;
    v59[3] = v80;
    v59[4] = &protocol witness table for HorizontalStack;
    v73 = sub_10000DB7C(v59);
    (*(v79 + 32))(v73, v86, v72);
    goto LABEL_20;
  }

  sub_10000CD74(v92);
LABEL_13:
  v46 = v80;
  v47 = v78;
  v78[3] = v80;
  v47[4] = &protocol witness table for HorizontalStack;
  v48 = sub_10000DB7C(v47);
  (*(v79 + 32))(v48, v86, v46);
  return sub_10000CD74(v95);
}

uint64_t sub_1005861C0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_10076DFEC();
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v39 = &v35 - v10;
  __chkstk_darwin(v11);
  v38 = &v35 - v12;
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  v16 = sub_10076D65C();
  v41 = *(v16 - 8);
  v42 = v16;
  __chkstk_darwin(v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100588468(v3, v48);
  v19 = swift_allocObject();
  memcpy((v19 + 16), v48, 0x2F9uLL);
  sub_10076D63C();
  sub_100016E2C(v3 + 440, v48, &qword_10094BB30);
  if (*(&v48[1] + 1))
  {
    sub_100012498(v48, &v46);
    sub_10000CF78(&v46, v47);
    sub_10076D6DC();
    sub_10000CF78(&v46, v47);
    sub_10076D6CC();
    sub_10000CF78(&v46, v47);
    sub_10076D2DC();
    sub_100588468(v3, v48);
    v20 = swift_allocObject();
    memcpy((v20 + 16), v48, 0x2F9uLL);
    sub_10076D5FC();

    sub_10000CD74(v43);
    sub_10000CD74(&v46);
  }

  else
  {
    sub_10000CFBC(v48, &qword_10094BB30);
  }

  sub_100586D58(a1 & 1, a2, v48);
  sub_10076D5FC();
  sub_10000CD74(v48);
  sub_100016E2C(v3 + 560, v48, &qword_10094BB30);
  if (*(&v48[1] + 1))
  {
    sub_100012498(v48, &v46);
    sub_10000CF78(&v46, v47);
    sub_10076D6DC();
    sub_10000CF78(&v46, v47);
    sub_10076D6CC();
    sub_10000CF78(&v46, v47);
    sub_10076D2DC();
    sub_100588468(v3, v48);
    v21 = swift_allocObject();
    memcpy((v21 + 16), v48, 0x2F9uLL);
    sub_10076D5FC();

    sub_10000CD74(v43);
    sub_10000CD74(&v46);
  }

  else
  {
    sub_10000CFBC(v48, &qword_10094BB30);
  }

  sub_100016E2C(v3 + 680, v48, &qword_10094BB30);
  if (*(&v48[1] + 1))
  {
    sub_100012498(v48, &v46);
    sub_10000CF78(&v46, v47);
    sub_10076D2DC();
    sub_100588468(v3, v48);
    v22 = swift_allocObject();
    memcpy((v22 + 16), v48, 0x2F9uLL);
    sub_10076D5FC();

    sub_10000CD74(v43);
    sub_10000CD74(&v46);
  }

  else
  {
    sub_10000CFBC(v48, &qword_10094BB30);
  }

  sub_100016E2C(v3 + 400, &v46, &qword_10094BB30);
  if (v47)
  {
    sub_100012498(&v46, v48);
    v23 = *(v3 + 56);
    sub_10000CF78(v48, *(&v48[1] + 1));
    v24 = sub_10076D69C();
    v23(&v46, v24);
    a3[3] = sub_10076D8DC();
    a3[4] = &protocol witness table for HorizontalStack;
    sub_10000DB7C(a3);
    sub_10076D8AC();
    sub_10000CF78(v48, *(&v48[1] + 1));
    sub_10076D2DC();
    sub_10000A570(&v46, v15);
    v25 = *(v36 + 13);
    v36 = v18;
    v26 = v37;
    v25(v15, enum case for Resize.Rule.replaced(_:), v37);
    v27 = enum case for Resize.Rule.unchanged(_:);
    v25(v38, enum case for Resize.Rule.unchanged(_:), v26);
    v25(v39, v27, v26);
    v25(v40, v27, v26);
    v44 = sub_10076DFFC();
    v45 = &protocol witness table for Resize;
    sub_10000DB7C(v43);
    sub_10076E00C();
    sub_10076D89C();
    sub_10000CD74(v43);
    v28 = v42;
    v44 = v42;
    v45 = &protocol witness table for VerticalStack;
    v29 = sub_10000DB7C(v43);
    v30 = v41;
    v31 = v36;
    (*(v41 + 16))(v29, v36, v28);
    sub_10076D89C();
    sub_10000CD74(&v46);
    (*(v30 + 8))(v31, v28);
    sub_10000CD74(v43);
    return sub_10000CD74(v48);
  }

  else
  {
    sub_10000CFBC(&v46, &qword_10094BB30);
    v33 = v42;
    a3[3] = v42;
    a3[4] = &protocol witness table for VerticalStack;
    v34 = sub_10000DB7C(a3);
    return (*(v41 + 32))(v34, v18, v33);
  }
}

uint64_t sub_1005869E4(uint64_t a1, uint64_t a2)
{
  sub_10000CF78((a2 + 296), *(a2 + 320));
  sub_10076D41C();
  return sub_10076D86C();
}

uint64_t sub_100586A64(uint64_t a1, uint64_t a2)
{
  sub_10000CF78((a2 + 16), *(a2 + 40));
  sub_10076D41C();
  return sub_10076D5CC();
}

uint64_t sub_100586B0C(uint64_t a1, uint64_t a2)
{
  sub_10000CF78((a2 + 16), *(a2 + 40));
  sub_10076D41C();
  result = sub_10076D5CC();
  if (*(a2 + 336) == 1)
  {
    return sub_10076D5EC();
  }

  return result;
}

uint64_t sub_100586BB0(uint64_t a1, uint64_t a2)
{
  sub_10000CF78((a2 + 16), *(a2 + 40));
  sub_10076D41C();
  return sub_10076D87C();
}

uint64_t sub_100586C30(uint64_t a1, uint64_t a2)
{
  sub_10000CF78((a2 + 296), *(a2 + 320));
  sub_10076D41C();
  result = sub_10076D5BC();
  if (*(a2 + 336) == 1)
  {
    sub_10000CF78((a2 + 296), *(a2 + 320));
    sub_10076D41C();
    return sub_10076D5CC();
  }

  return result;
}

uint64_t sub_100586D10(uint64_t a1, uint64_t a2)
{
  sub_10076D60C();
  sub_10076D5DC();
  sub_10000A570(a2 + 72, v4);
  return sub_10076D5BC();
}

uint64_t sub_100586D58@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v27[1] = a2;
  v29 = a3;
  v30 = sub_10076D65C();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076D63C();
  sub_100016E2C(v3 + 440, v31, &qword_10094BB30);
  v8 = *(&v31[1] + 1);
  sub_10000CFBC(v31, &qword_10094BB30);
  sub_100016E2C(v3 + 680, v31, &qword_10094BB30);
  v9 = *(&v31[1] + 1);
  sub_10000CFBC(v31, &qword_10094BB30);
  sub_100016E2C(v3 + 560, v31, &qword_10094BB30);
  v10 = *(&v31[1] + 1);
  sub_10000CFBC(v31, &qword_10094BB30);
  sub_10000CF78((v4 + 480), *(v4 + 504));
  if (sub_10076D68C())
  {
    goto LABEL_4;
  }

  sub_100016E2C(v3 + 520, v31, &qword_10094BB30);
  if (*(&v31[1] + 1))
  {
    sub_10000CF78(v31, *(&v31[1] + 1));
    v11 = sub_10076D68C();
    sub_10000CD74(v31);
    if (v11)
    {
LABEL_4:
      v12 = 1;
      if (v8)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      v14 = v10 | v9;
      v15 = v7;
      if (!v14)
      {
        v12 = v13;
      }

      goto LABEL_18;
    }
  }

  else
  {
    sub_10000CFBC(v31, &qword_10094BB30);
  }

  if (v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v16 = 2;
  if (!v8)
  {
    v16 = 3;
  }

  if (!(v10 | v9))
  {
    v12 = v16;
  }

  v15 = v7;
LABEL_18:
  sub_10058742C(v12, a1 & 1);
  v18 = v17;
  v20 = v19;
  if (a1)
  {
    sub_100016E2C(v4 + 600, v37, &qword_10094BB30);
  }

  else
  {
    sub_10000A570(v4 + 480, v37);
  }

  sub_100016E2C(v37, &v35, &qword_10094BB30);
  if (v36)
  {
    sub_100012498(&v35, v31);
    if ((v18 & 1) == 0)
    {
      sub_10000CF78(v31, *(&v31[1] + 1));
      sub_10076D2DC();
      sub_10076D5FC();
      sub_10000CD74(&v35);
      sub_10000CF78(v31, *(&v31[1] + 1));
      sub_10076D6DC();
      sub_10000CF78(v31, *(&v31[1] + 1));
      sub_10076D6CC();
      goto LABEL_28;
    }

    sub_10000CD74(v31);
  }

  else
  {
    sub_10000CFBC(&v35, &qword_10094BB30);
  }

  sub_100016E2C(v37, v31, &qword_10094BB30);
  if (*(&v31[1] + 1))
  {
    sub_10000CF78(v31, *(&v31[1] + 1));
    sub_10076D6DC();
LABEL_28:
    sub_10000CD74(v31);
    goto LABEL_30;
  }

  sub_10000CFBC(v31, &qword_10094BB30);
LABEL_30:
  v21 = 520;
  if (a1)
  {
    v21 = 640;
  }

  sub_100016E2C(v4 + v21, &v35, &qword_10094BB30);
  sub_100016E2C(&v35, v31, &qword_10094BB30);
  if (*(&v31[1] + 1))
  {
    sub_100012498(v31, v33);
    if ((v20 & 1) == 0)
    {
      sub_10000CF78(v33, v34);
      sub_10076D2DC();
      sub_100588468(v4, v31);
      v22 = swift_allocObject();
      memcpy((v22 + 16), v31, 0x2F9uLL);
      sub_10076D5FC();

      sub_10000CD74(&v32);
      sub_10000CF78(v33, v34);
      sub_10076D6DC();
      sub_10000CF78(v33, v34);
      sub_10076D6CC();
      sub_10000CD74(v33);
      goto LABEL_40;
    }

    sub_10000CD74(v33);
  }

  else
  {
    sub_10000CFBC(v31, &qword_10094BB30);
  }

  sub_100016E2C(&v35, v31, &qword_10094BB30);
  if (*(&v31[1] + 1))
  {
    sub_10000CF78(v31, *(&v31[1] + 1));
    sub_10076D6DC();
    sub_10000CD74(v31);
  }

  else
  {
    sub_10000CFBC(v31, &qword_10094BB30);
  }

LABEL_40:
  v23 = v29;
  v24 = v30;
  v29[3] = v30;
  v23[4] = &protocol witness table for VerticalStack;
  v25 = sub_10000DB7C(v23);
  (*(v28 + 32))(v25, v15, v24);
  sub_10000CFBC(&v35, &qword_10094BB30);
  return sub_10000CFBC(v37, &qword_10094BB30);
}

uint64_t sub_10058739C(uint64_t a1, uint64_t a2)
{
  sub_10076D60C();
  sub_10076D5DC();
  sub_10000A570(a2 + 192, v4);
  return sub_10076D5BC();
}

uint64_t sub_1005873E4(uint64_t a1, uint64_t a2)
{
  sub_10076D60C();
  sub_10076D5DC();
  sub_10000A570(a2 + 232, v4);
  return sub_10076D5BC();
}

uint64_t sub_10058742C(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_100016E2C(v2 + 600, v24, &qword_10094BB30);
    v4 = 640;
  }

  else
  {
    sub_10000A570(v2 + 480, v24);
    v4 = 520;
  }

  sub_100016E2C(v2 + v4, v23, &qword_10094BB30);
  if (*(v2 + 338) == 1)
  {
    sub_100016E2C(v23, v21, &qword_10094BB30);
    if (v22)
    {
      sub_10000CF78(v21, v22);
      sub_10076D20C();
      sub_10000CFBC(v23, &qword_10094BB30);
      sub_10000CFBC(v24, &qword_10094BB30);
      sub_10000CD74(v21);
    }

    else
    {
      sub_10000CFBC(v23, &qword_10094BB30);
      sub_10000CFBC(v24, &qword_10094BB30);
      sub_10000CFBC(v21, &qword_10094BB30);
    }

    v5 = 0;
    result = 1;
    goto LABEL_33;
  }

  sub_100016E2C(v24, &v19, &qword_10094BB30);
  if (v20)
  {
    sub_100012498(&v19, v21);
    sub_10000CF78(v21, v22);
    sub_10076D6DC();
    sub_10000CF78(v21, v22);
    sub_10076D2CC();
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    sub_10000CF78(v21, v22);
    v25.var0 = v8;
    v25.var1 = v10;
    v25.var2 = v12;
    v25.var3 = v14;
    v15 = sub_10076D71C(v25) > 1;
    sub_10000CD74(v21);
  }

  else
  {
    sub_10000CFBC(&v19, &qword_10094BB30);
    v15 = 0;
  }

  sub_100016E2C(v23, v21, &qword_10094BB30);
  if (v22)
  {
    sub_10000CF78(v21, v22);
    v16 = sub_10076D20C();
    sub_10000CFBC(v23, &qword_10094BB30);
    sub_10000CFBC(v24, &qword_10094BB30);
    result = sub_10000CD74(v21);
    if (v15)
    {
      v17 = a1;
      if (v16)
      {
        v17 = a1 - 1;
        if (__OFSUB__(a1, 1))
        {
          goto LABEL_35;
        }
      }

      if (v17 <= 1)
      {
        result = 1;
      }

      else
      {
        result = v17;
      }
    }

    else
    {
      result = 1;
    }

    if (!__OFSUB__(a1, result))
    {
      if (v16)
      {
        v5 = a1 - result < 1;
LABEL_33:
        v24[0] = 0;
        v23[0] = v5;
        return result;
      }

LABEL_32:
      v5 = 1;
      goto LABEL_33;
    }
  }

  else
  {
    sub_10000CFBC(v23, &qword_10094BB30);
    sub_10000CFBC(v24, &qword_10094BB30);
    sub_10000CFBC(v21, &qword_10094BB30);
    if (a1 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = a1;
    }

    if (v15)
    {
      result = v18;
    }

    else
    {
      result = 1;
    }

    if (!__OFSUB__(a1, result))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1005877E4(uint64_t a1, uint64_t a2)
{
  sub_10076D60C();
  sub_10076D5DC();
  sub_10000A570(a2 + 152, v4);
  return sub_10076D5BC();
}

double _s20ProductPageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(uint64_t a1, id a2, double a3)
{
  v5 = [a2 preferredContentSizeCategory];
  v6 = sub_10077087C();

  if ((v6 & 1) != 0 && *(a1 + 337) == 1)
  {
    sub_10000CF78((a1 + 112), *(a1 + 136));
    sub_10076D41C();
    sub_10000CF78((a1 + 152), *(a1 + 176));
    sub_10076D41C();
    sub_10000CF78((a1 + 16), *(a1 + 40));
    sub_10076D41C();
    sub_10000CF78((a1 + 296), *(a1 + 320));
    sub_10076D41C();
    return a3;
  }

  if ((sub_10077071C() & 1) != 0 && *(a1 + 339) == 1)
  {
    sub_10000CF78((a1 + 112), *(a1 + 136));
    sub_10076D41C();
    sub_10000CF78((a1 + 152), *(a1 + 176));
    sub_10076D41C();
    if (*(a1 + 336) == 1)
    {
      sub_10000CF78((a1 + 16), *(a1 + 40));
      sub_10076D41C();
    }

    v7 = *(a1 + 320);
    v8 = (a1 + 296);
    goto LABEL_12;
  }

  sub_10000CF78((a1 + 112), *(a1 + 136));
  sub_10076D41C();
  sub_10000CF78((a1 + 152), *(a1 + 176));
  sub_10076D41C();
  sub_10000CF78((a1 + 192), *(a1 + 216));
  sub_10076D41C();
  if (*(a1 + 336) == 1 || (*(a1 + 352) & 1) == 0)
  {
    v7 = *(a1 + 40);
    v8 = (a1 + 16);
LABEL_12:
    sub_10000CF78(v8, v7);
    sub_10076D41C();
  }

  return a3;
}

uint64_t sub_100587B50(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100587B70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 761))
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

uint64_t sub_100587BB8(uint64_t result, int a2, int a3)
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
    *(result + 760) = 0;
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
      *(result + 761) = 1;
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

    *(result + 761) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}