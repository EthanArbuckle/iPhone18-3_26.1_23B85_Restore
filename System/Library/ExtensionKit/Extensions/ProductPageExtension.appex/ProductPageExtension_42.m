uint64_t sub_1004C5D1C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31ReviewSummaryCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_1004C5D78(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31ReviewSummaryCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1004C5E68(uint64_t a1)
{
  result = sub_1004C6328(&qword_100959E20, type metadata accessor for ReviewSummaryCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1004C5EC0()
{
  v0 = sub_10076B6EC();
  v22 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v21 - v4;
  v21 = sub_10076469C();
  v6 = *(v21 - 8);
  __chkstk_darwin(v21);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_1009520A0);
  __chkstk_darwin(v9 - 8);
  v10 = sub_10000A5D4(&qword_100959E28);
  v23 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  sub_10076101C();
  sub_1004C6328(&qword_100959E30, &type metadata accessor for ReviewSummary);
  result = sub_10076332C();
  v14 = v26;
  if (v26)
  {
    sub_1007633DC();
    sub_10076FDBC();
    sub_1007632FC();
    sub_10076465C();
    (*(v6 + 8))(v8, v21);
    sub_10076B68C();
    sub_1004C6328(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
    v15 = sub_10077124C();
    v16 = *(v22 + 8);
    v16(v2, v0);
    v16(v5, v0);
    v17 = v24;
    swift_getKeyPath();
    sub_1004C62D4();
    sub_10076FD9C();

    if (v15)
    {
      v18 = 0;
      v19 = 1;
    }

    else
    {
      v18 = v25;
      v20 = [v17 traitCollection];
      v19 = sub_1007706EC();
    }

    sub_1007554A4(v14, v18, v19 & 1, v15 & 1);

    return (*(v23 + 8))(v12, v10);
  }

  return result;
}

unint64_t sub_1004C62D4()
{
  result = qword_100959E38;
  if (!qword_100959E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100959E38);
  }

  return result;
}

uint64_t sub_1004C6328(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1004C6384()
{
  result = qword_100959E48;
  if (!qword_100959E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100959E48);
  }

  return result;
}

unint64_t sub_1004C63DC()
{
  result = qword_100959E50;
  if (!qword_100959E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100959E50);
  }

  return result;
}

char *sub_1004C6430(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension30SearchActionCollectionViewCell_itemLayoutContext;
  v10 = sub_10076341C();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC20ProductPageExtension30SearchActionCollectionViewCell_actionContentView;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for SearchActionContentView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v20.receiver = v4;
  v20.super_class = type metadata accessor for SearchActionCollectionViewCell();
  v12 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v17 = [v16 contentView];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v18 = [v16 contentView];
  [v18 addSubview:*&v16[OBJC_IVAR____TtC20ProductPageExtension30SearchActionCollectionViewCell_actionContentView]];

  return v16;
}

id sub_1004C681C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchActionCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SearchActionCollectionViewCell()
{
  result = qword_100959E80;
  if (!qword_100959E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004C6954(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v4.value.super.isa = 0;
  v4.is_nil = 0;
  sub_10075FCEC(v4, a3);
  sub_10075FD2C();
  sub_1004C6A44(&qword_100941820, &type metadata accessor for ArtworkView);
  return sub_100760BFC();
}

uint64_t sub_1004C6A44(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1004C6AC8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC20ProductPageExtension33VideoTodayBrickCollectionViewCell_videoAspectRatio;
  if (qword_1009406D0 != -1)
  {
    swift_once();
  }

  v11 = sub_10076D39C();
  v12 = sub_10000A61C(v11, qword_1009A02F0);
  (*(*(v11 - 8) + 16))(&v4[v10], v12, v11);
  swift_unknownObjectWeakInit();
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    [Strong _setContinuousCornerRadius:20.0];
  }

  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    v18 = [v13 contentView];
    [v18 addSubview:v17];
  }

  return v13;
}

uint64_t sub_1004C6C74(void *a1)
{
  if (a1)
  {
    v2 = [a1 superview];
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 contentView];
  v4 = v3;
  if (v2)
  {
    if (v3)
    {
      sub_1000ACA5C();
      v5 = sub_100770EEC();
    }

    else
    {
      v5 = 0;
    }

    v4 = v2;
  }

  else
  {
    if (!v3)
    {
      v5 = 1;
      return v5 & 1;
    }

    v5 = 0;
  }

  return v5 & 1;
}

void sub_1004C6D28(void *a1)
{
  sub_1004C7F48();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 contentView];
    [v4 addSubview:v3];

    [v1 setNeedsLayout];
  }
}

void (*sub_1004C6DD8(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension33VideoTodayBrickCollectionViewCell_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1004C6E2C;
}

void sub_1004C6E2C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_1004C7F48();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [v2 contentView];
      [v6 addSubview:v5];

      [v2 setNeedsLayout];
    }

    v9 = v3;
  }

  else
  {
    v9 = *a1;
    sub_1004C7F48();
    swift_unknownObjectWeakAssign();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      goto LABEL_8;
    }

    v3 = v7;
    v8 = [v2 contentView];
    [v8 addSubview:v3];

    [v2 setNeedsLayout];
  }

LABEL_8:
}

uint64_t sub_1004C6FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v4 = sub_10000A5D4(&unk_10094C030);
  __chkstk_darwin(v4 - 8);
  v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v44 - v7;
  v8 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v8 - 8);
  v48 = &v44 - v9;
  v10 = sub_1007611EC();
  __chkstk_darwin(v10 - 8);
  v47 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v46 = &v44 - v13;
  v14 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v14 - 8);
  v16 = &v44 - v15;
  v17 = sub_10076121C();
  v45 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10076481C();
  v52 = *(v20 - 8);
  v53 = v20;
  __chkstk_darwin(v20);
  v51 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10076D39C();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v3;
  sub_1004CCA80();
  v27 = sub_10076C7FC();
  sub_1007652CC();
  v28 = swift_dynamicCastClass();
  if (!v28)
  {
  }

  v55[0] = v28;
  v29 = [v26 traitCollection];
  v30 = sub_1007684EC();

  if (!v30)
  {
  }

  v31 = sub_10076B84C();
  sub_10076BEFC();
  sub_10076D3AC();
  v32 = OBJC_IVAR____TtC20ProductPageExtension33VideoTodayBrickCollectionViewCell_videoAspectRatio;
  swift_beginAccess();
  (*(v23 + 40))(&v26[v32], v25, v22);
  swift_endAccess();
  (*(v45 + 104))(v19, enum case for VideoFillMode.scaleAspectFill(_:), v17);
  v45 = v31;
  sub_10076BEFC();
  sub_10076D3AC();
  (*(v23 + 56))(v16, 0, 1, v22);
  sub_10076B7EC();
  sub_10076B82C();
  sub_10076B7FC();
  sub_10076B7DC();
  sub_10076B83C();
  v33 = v51;
  sub_1007647FC();
  sub_100762F0C();
  sub_10076F5CC();
  v34 = v55[0];
  sub_10076B7CC();
  v35 = v48;
  sub_10076B85C();
  v36 = sub_10075DB7C();
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  v37 = v49;
  sub_10076B81C();
  v38 = v50;
  sub_10076B80C();
  type metadata accessor for VideoView();
  sub_1004C8018(&qword_100942810, type metadata accessor for VideoView);
  v47 = v34;
  v39 = sub_100762EEC();
  sub_10000CFBC(v38, &unk_10094C030);
  sub_10000CFBC(v37, &unk_10094C030);
  sub_10000CFBC(v35, &unk_1009435D0);
  sub_10000CFBC(v55, &qword_100943310);
  sub_1004C7F48();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = Strong;
    v42 = [v26 contentView];
    [v42 addSubview:v41];

    [v26 setNeedsLayout];
  }

  sub_100760C4C();
  sub_10076F5CC();
  sub_1004C7754();

  return (*(v52 + 8))(v33, v53);
}

void sub_1004C7754()
{
  v1 = v0;
  v2 = sub_10076D39C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076B84C();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC20ProductPageExtension33VideoTodayBrickCollectionViewCell_videoAspectRatio;
    swift_beginAccess();
    (*(v3 + 16))(v5, &v1[v8], v2);
    LOBYTE(v8) = sub_10076D2EC();
    v9 = *(v3 + 8);
    v9(v5, v2);
    if (v8)
    {
      if (qword_1009406C8 != -1)
      {
        swift_once();
      }

      v10 = qword_1009A02D8;
    }

    else
    {
      if (qword_1009406C0 != -1)
      {
        swift_once();
      }

      v10 = qword_1009A02C0;
    }

    sub_10000A61C(v2, v10);
    [v1 bounds];
    sub_10076D31C();
    sub_10076BEFC();
    sub_10076D3AC();
    sub_10076D30C();
    v9(v5, v2);
    sub_10076BFCC();
    type metadata accessor for VideoView();
    sub_1004C8018(&unk_100942840, type metadata accessor for VideoView);
    sub_100760B8C();
  }

  else
  {
  }
}

uint64_t sub_1004C7A4C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension33VideoTodayBrickCollectionViewCell_videoAspectRatio;
  v2 = sub_10076D39C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_unknownObjectWeakDestroy();
}

uint64_t type metadata accessor for VideoTodayBrickCollectionViewCell()
{
  result = qword_100959EC0;
  if (!qword_100959EC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004C7B94()
{
  result = sub_10076D39C();
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

uint64_t (*sub_1004C7C40(uint64_t **a1))()
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
  v2[4] = sub_1004C6DD8(v2);
  return sub_10001D41C;
}

uint64_t sub_1004C7CB0()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1004C8018(&unk_100959EE0, type metadata accessor for VideoTodayBrickCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1004C7D24(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1004C8018(&unk_100959EE0, type metadata accessor for VideoTodayBrickCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1004C7DB0(uint64_t *a1))()
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
  sub_1004C8018(&unk_100959EE0, type metadata accessor for VideoTodayBrickCollectionViewCell);
  *(v3 + 32) = sub_10076483C();
  return sub_100019A4C;
}

void sub_1004C7F48()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    sub_1004C8018(&qword_100942810, type metadata accessor for VideoView);
    Strong = v1;
  }

  v2 = sub_1004C6C74(Strong);

  if (v2)
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];
    }
  }
}

uint64_t sub_1004C8018(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004C8060(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  v78 = a1;
  v3 = sub_10000A5D4(&qword_100942900);
  __chkstk_darwin(v3 - 8);
  v82 = &v67 - v4;
  v5 = sub_10076C2DC();
  v75 = v5;
  v86 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = (&v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = sub_10000A5D4(&qword_100942908);
  v8 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v67 - v11;
  v73 = &v67 - v11;
  __chkstk_darwin(v13);
  v15 = &v67 - v14;
  v87 = &v67 - v14;
  __chkstk_darwin(v16);
  v83 = &v67 - v17;
  sub_10000A5D4(&qword_100942910);
  v18 = *(sub_10076C20C() - 8);
  v80 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v72 = v20;
  *(v20 + 16) = xmmword_1007844F0;
  v74 = v20 + v19;
  v89 = 0x3FF0000000000000;
  sub_10001E290();
  sub_10076C29C();
  v21 = *(v8 + 16);
  v22 = a1;
  v23 = v88;
  v21(v15, v22, v88);
  v84 = v8 + 16;
  v24 = v81;
  v21(v12, v81, v23);
  __asm { FMOV            V0.2D, #16.0 }

  *v7 = _Q0;
  v30 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v31 = *(v86 + 104);
  v86 += 104;
  v79 = v31;
  v77 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v31(v7, enum case for PageGrid.HorizontalMargins.absolute(_:), v5);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v89) = 0;
  sub_10076C29C();
  v89 = 0;
  sub_10076C29C();
  v33 = v87;
  v34 = v73;
  sub_10076C1CC();
  v89 = 0x3FF0000000000000;
  sub_10076C29C();
  v35 = v78;
  v36 = v88;
  v76 = v21;
  v21(v33, v78, v88);
  v21(v34, v24, v36);
  __asm { FMOV            V0.2D, #20.0 }

  *v7 = _Q0;
  v79(v7, v30, v75);
  LOBYTE(v89) = 0;
  sub_10076C29C();
  v89 = 0;
  sub_10076C29C();
  v38 = v80;
  top = UIEdgeInsetsZero.top;
  v71 = left;
  v39 = v87;
  sub_10076C1CC();
  v68 = 2 * v38;
  v89 = 0x3FF0000000000000;
  sub_10076C29C();
  v40 = v35;
  v41 = v88;
  v42 = v76;
  v76(v39, v40, v88);
  v43 = v34;
  v44 = v81;
  v42(v34, v81, v41);
  v69 = vdupq_n_s64(0x4041000000000000uLL);
  v67 = v7;
  *v7 = v69;
  v45 = v75;
  v46 = v79;
  v79(v7, v77, v75);
  LOBYTE(v89) = 0;
  sub_10076C29C();
  v89 = 0;
  sub_10076C29C();
  v47 = v68;
  v48 = v87;
  v49 = v67;
  sub_10076C1CC();
  v68 = v47 + v80;
  v89 = 0x3FF0000000000000;
  sub_10076C29C();
  v50 = v48;
  v51 = v88;
  v52 = v76;
  v76(v50, v78, v88);
  v52(v43, v44, v51);
  *v49 = v69;
  v53 = v49;
  v46(v49, v77, v45);
  sub_1007704BC();
  LOBYTE(v89) = 0;
  sub_10076C29C();
  v89 = 0;
  sub_10076C29C();
  v54 = v87;
  v55 = v73;
  sub_10076C1CC();
  v68 = 4 * v80;
  v89 = 0x3FF0000000000000;
  sub_10076C29C();
  v56 = v54;
  v57 = v88;
  v58 = v76;
  v76(v56, v78, v88);
  v58(v55, v81, v57);
  v69 = vdupq_n_s64(0x404A000000000000uLL);
  *v53 = v69;
  v59 = v75;
  v79(v53, v77, v75);
  LOBYTE(v89) = 0;
  sub_10076C29C();
  v89 = 0;
  sub_10076C29C();
  v60 = v68;
  v61 = v87;
  v62 = v73;
  sub_10076C1CC();
  v80 += v60;
  v89 = 0x3FF0000000000000;
  sub_10076C29C();
  v63 = v61;
  v64 = v88;
  v65 = v76;
  v76(v63, v78, v88);
  v65(v62, v81, v64);
  *v53 = v69;
  v79(v53, v77, v59);
  LOBYTE(v89) = 0;
  sub_10076C29C();
  v89 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  return v72;
}

double sub_1004C8B04(void *a1, uint64_t a2, void *a3, double a4)
{
  v82 = a2;
  v89 = sub_10076642C();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_10076640C();
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v83 = v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v75[0] = v75 - v10;
  __chkstk_darwin(v11);
  v84 = v75 - v12;
  v80 = sub_10076997C();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100765AAC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v77 = v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v75 - v18;
  v90 = a1;
  v20 = sub_10076229C();
  v92 = a3;
  v21 = [a3 traitCollection];
  v22 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v20];
  v91 = [v20 length];
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = v21;
  *(v23 + 32) = v22;
  *(v23 + 40) = 1;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_100027A88;
  *(v24 + 24) = v23;
  v104 = sub_1003BE1CC;
  v105 = v24;
  aBlock = _NSConcreteStackBlock;
  v101 = 1107296256;
  v102 = sub_100026610;
  v103 = &unk_1008979D0;
  v25 = _Block_copy(&aBlock);
  v26 = v21;
  v27 = v22;

  [v20 enumerateAttributesInRange:0 options:v91 usingBlock:{0x100000, v25}];

  _Block_release(v25);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_7;
  }

  v91 = v27;
  sub_1007622AC();
  v28 = v77;
  v15[13](v77, enum case for TitledParagraphStyle.detail(_:), v14);
  sub_1004CAAE4(&qword_10094EC40, &type metadata accessor for TitledParagraphStyle);
  v29 = v19;
  sub_10077018C();
  sub_10077018C();
  if (aBlock == v97[0] && v101 == v97[1])
  {
    v76 = 1;
  }

  else
  {
    v76 = sub_10077167C();
  }

  v30 = v92;
  v31 = v15[1];
  v31(v28, v14);
  v31(v29, v14);

  sub_10076227C();
  v75[2] = sub_10076228C();
  v75[1] = v32;
  v77 = v91;
  v15 = [v30 traitCollection];
  sub_10005312C();
  if (qword_100940B60 != -1)
  {
    goto LABEL_23;
  }

LABEL_7:
  v33 = sub_10076D3DC();
  sub_10000A61C(v33, qword_1009A1018);
  v90 = v15;
  v34 = sub_100770B3C();
  v35 = sub_10076C04C();
  v103 = v35;
  v36 = sub_1004CAAE4(&qword_100943230, &type metadata accessor for Feature);
  v104 = v36;
  v37 = sub_10000DB7C(&aBlock);
  v38 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v39 = *(*(v35 - 1) + 104);
  v39(v37, enum case for Feature.measurement_with_labelplaceholder(_:), v35);
  v40 = v34;
  sub_10076C90C();
  sub_10000CD74(&aBlock);
  v41 = v78;
  sub_10076996C();
  sub_10076994C();
  v42 = v79[1];
  v43 = v80;
  v42(v41, v80);
  v98 = v35;
  v99 = v36;
  v44 = sub_10000DB7C(v97);
  v39(v44, v38, v35);
  v45 = v40;
  sub_10076C90C();
  sub_10000CD74(v97);
  v79 = v45;
  sub_10076996C();
  sub_10076994C();
  v42(v41, v43);
  v46 = 0;
  v47 = v76;
  if ((v76 & 1) == 0)
  {
    v46 = sub_1007663BC();
  }

  v48 = swift_allocObject();
  *(v48 + 16) = v46 & 1;
  v49 = v92;
  *(v48 + 24) = v81;
  *(v48 + 32) = v49;
  v50 = v82;
  *(v48 + 40) = v91;
  *(v48 + 48) = v50;
  v51 = sub_10076DDDC();
  swift_allocObject();
  v52 = v77;
  swift_unknownObjectRetain();
  v53 = sub_10076DD9C();
  v96[3] = v51;
  v96[4] = &protocol witness table for LayoutViewPlaceholder;
  v96[0] = v53;
  v54 = v87;
  v55 = v85;
  v56 = v84;
  if (v46)
  {
    if (qword_100940208 != -1)
    {
      swift_once();
    }

    v57 = sub_10000A61C(v54, qword_10099F218);
    v58 = *(v55 + 16);
    v58(v56, v57, v54);
    sub_100397DE4(v49, a4);
    sub_1007663DC();
    [v49 pageMarginInsets];
    sub_1007663EC();
  }

  else
  {
    if (v47)
    {
      if (qword_100940210 != -1)
      {
        swift_once();
      }

      v59 = qword_10099F230;
    }

    else
    {
      if (qword_100940200 != -1)
      {
        swift_once();
      }

      v59 = qword_10099F200;
    }

    v60 = sub_10000A61C(v54, v59);
    v58 = *(v55 + 16);
    v61 = v75[0];
    v58(v75[0], v60, v54);
    (*(v55 + 32))(v56, v61, v54);
  }

  v58(v83, v56, v54);
  v62 = v103;
  v63 = v104;
  v64 = sub_10000CF78(&aBlock, v103);
  v95[3] = v62;
  v95[4] = *(v63 + 1);
  v65 = sub_10000DB7C(v95);
  (*(*(v62 - 1) + 16))(v65, v64, v62);
  v66 = v98;
  v67 = v99;
  v68 = sub_10000CF78(v97, v98);
  v94[3] = v66;
  v94[4] = *(v67 + 8);
  v69 = sub_10000DB7C(v94);
  (*(*(v66 - 8) + 16))(v69, v68, v66);
  sub_10000A570(v96, v93);
  v70 = v86;
  sub_10076641C();
  sub_1004CAAE4(&unk_100959F60, &type metadata accessor for TitledParagraphLayout);
  v71 = v89;
  sub_10076D2AC();
  v73 = v72;

  (*(v88 + 8))(v70, v71);
  (*(v55 + 8))(v56, v54);
  sub_10000CD74(v96);
  sub_10000CD74(v97);
  sub_10000CD74(&aBlock);
  return v73;
}

uint64_t sub_1004C9798()
{
  sub_10000A5D4(&qword_10094ABA0);
  sub_100166CB4();
  sub_10076F83C();
  return 3;
}

uint64_t sub_1004C9810()
{
  v0 = sub_10077164C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100941200 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D9AC();
  sub_10000A61C(v4, qword_1009A2380);
  sub_10076D17C();
  sub_10076D40C();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

unint64_t sub_1004C99A8()
{
  result = qword_100959F38;
  if (!qword_100959F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100959F38);
  }

  return result;
}

unint64_t sub_1004C9A00()
{
  result = qword_100959F40;
  if (!qword_100959F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100959F40);
  }

  return result;
}

void sub_1004C9A54(void *a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_10000A5D4(&qword_10094EC28);
  sub_100166CB4();
  sub_10076FD8C();
  if (v10 == 1)
  {
    if (qword_1009401F8 != -1)
    {
      swift_once();
    }

    v8 = sub_10000A5D4(&unk_10094C370);
    sub_10000A61C(v8, qword_10099F1E8);
    swift_unknownObjectRetain();
    sub_10075FDCC();
    swift_unknownObjectRelease();
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  sub_1004C8B04(a1, v9, a5, a2);
}

id sub_1004C9B84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v113 = a3;
  v114 = a2;
  v119 = a1;
  v111 = sub_10076C5FC();
  v118 = *(v111 - 8);
  __chkstk_darwin(v111);
  v106 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v107 = &v103 - v9;
  __chkstk_darwin(v10);
  v105 = &v103 - v11;
  __chkstk_darwin(v12);
  v104 = &v103 - v13;
  v14 = sub_10000A5D4(&unk_100959F50);
  __chkstk_darwin(v14 - 8);
  v110 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v108 = &v103 - v17;
  __chkstk_darwin(v18);
  v109 = &v103 - v19;
  __chkstk_darwin(v20);
  v116 = &v103 - v21;
  v112 = sub_10076664C();
  v22 = *(v112 - 8);
  __chkstk_darwin(v112);
  v24 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100765AAC();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v30 = __chkstk_darwin(v29).n128_u64[0];
  v32 = &v103 - v31;
  v115 = a5;
  v33 = [a5 snapshotPageTraitEnvironment];
  v34 = OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_pageTraits;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_pageTraits] = v33;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (*&v5[v34])
  {
    [v5 setNeedsLayout];
  }

  v117 = v5;
  swift_unknownObjectRelease();
  sub_1007622AC();
  (*(v26 + 104))(v28, enum case for TitledParagraphStyle.detail(_:), v25);
  sub_1004CAAE4(&qword_10094EC40, &type metadata accessor for TitledParagraphStyle);
  sub_10077018C();
  sub_10077018C();
  if (aBlock == v126 && v121 == v127)
  {
    v35 = 1;
  }

  else
  {
    v35 = sub_10077167C();
  }

  v36 = *(v26 + 8);
  v36(v28, v25);
  v36(v32, v25);

  v37 = v117;
  v117[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_useDetailPageStyling] = v35 & 1;
  sub_100396B64();
  v38 = *&v37[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_separatorView];
  sub_1007665FC();
  sub_1004CAAE4(&unk_100945570, &type metadata accessor for ComponentLayoutOptions);
  v39 = v112;
  v40 = sub_10077124C();
  (*(v22 + 8))(v24, v39);
  [v38 setHidden:v40 & 1];
  sub_10000A5D4(&qword_10094ABA0);
  sub_100166CB4();
  sub_10076F84C();
  v41 = aBlock;
  if (qword_1009401F8 != -1)
  {
    swift_once();
  }

  v42 = sub_10000A5D4(&unk_10094C370);
  sub_10000A61C(v42, qword_10099F1E8);
  v43 = v115;
  v126 = v115;
  swift_unknownObjectRetain();
  sub_10075FDCC();
  result = swift_unknownObjectRelease();
  v45 = v119;
  v46 = aBlock + 1;
  if (__OFADD__(aBlock, 1))
  {
    __break(1u);
    goto LABEL_56;
  }

  type metadata accessor for TitledParagraphCollectionViewCell();
  [v37 frame];
  v48 = v47;
  sub_1004C8B04(v45, v46, v43, v49);
  if (v48 < v50)
  {
    v51 = v41;
  }

  else
  {
    v51 = 0;
  }

  if ((v51 & 1) == 0)
  {
    v73 = sub_10076229C();
    v74 = [v43 traitCollection];
    v75 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v73];
    v76 = [v73 length];
    v77 = swift_allocObject();
    *(v77 + 16) = 0;
    *(v77 + 24) = v74;
    *(v77 + 32) = v75;
    *(v77 + 40) = 1;
    v78 = swift_allocObject();
    *(v78 + 16) = sub_1000275EC;
    *(v78 + 24) = v77;
    v124 = sub_1000ACB04;
    v125 = v78;
    aBlock = _NSConcreteStackBlock;
    v121 = 1107296256;
    v122 = sub_100026610;
    v123 = &unk_1008978E0;
    v79 = _Block_copy(&aBlock);
    v80 = v74;
    v81 = v75;

    [v73 enumerateAttributesInRange:0 options:v76 usingBlock:{0x100000, v79}];

    _Block_release(v79);
    LOBYTE(v73) = swift_isEscapingClosureAtFileLocation();

    if (v73)
    {
LABEL_57:
      __break(1u);
      return result;
    }

    v72 = v108;
    v61 = *&v37[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_bodyTextView];
    v82 = v111;
    (*(v118 + 56))(v108, 1, 1, v111);
    v83 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
    v84 = v61[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed];
    v61[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed] = 0;
    v116 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel;
    v85 = *&v61[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel];
    v86 = v81;
    [v85 setNumberOfLines:0];
    if (v84 != v61[v83])
    {
      sub_10073D75C();
    }

    v68 = v86;
    sub_10073D114(v86);
    v61[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
    v87 = v110;
    sub_100415F48(v72, v110);
    v88 = v118;
    v71 = &off_100911000;
    if ((*(v118 + 48))(v87, 1, v82) == 1)
    {
      sub_100415FB8(v87);
      goto LABEL_46;
    }

    v93 = v107;
    (*(v88 + 32))(v107, v87, v82);
    v94 = v106;
    (*(v88 + 16))(v106, v93, v82);
    v95 = (*(v88 + 88))(v94, v82);
    if (v95 != enum case for Paragraph.Alignment.left(_:))
    {
      if (v95 == enum case for Paragraph.Alignment.center(_:))
      {
        v96 = 1;
        goto LABEL_45;
      }

      if (v95 == enum case for Paragraph.Alignment.right(_:))
      {
        v96 = 2;
        goto LABEL_45;
      }

      if (v95 == enum case for Paragraph.Alignment.justified(_:))
      {
        v96 = 3;
        goto LABEL_45;
      }

      if (v95 == enum case for Paragraph.Alignment.localized(_:))
      {
        v96 = 4;
        goto LABEL_45;
      }

      (*(v88 + 8))(v106, v82);
    }

    v96 = 0;
LABEL_45:
    [*&v61[v116] setTextAlignment:v96];
    (*(v88 + 8))(v107, v82);
    goto LABEL_46;
  }

  v52 = sub_10076226C();
  v53 = [v43 traitCollection];
  v54 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v52];
  v55 = [v52 length];
  v56 = swift_allocObject();
  *(v56 + 16) = 0;
  *(v56 + 24) = v53;
  *(v56 + 32) = v54;
  *(v56 + 40) = 1;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_100027A88;
  *(v57 + 24) = v56;
  v124 = sub_1003BE1CC;
  v125 = v57;
  aBlock = _NSConcreteStackBlock;
  v121 = 1107296256;
  v122 = sub_100026610;
  v123 = &unk_100897958;
  v58 = _Block_copy(&aBlock);
  v59 = v53;
  v60 = v54;

  [v52 enumerateAttributesInRange:0 options:v55 usingBlock:{0x100000, v58}];

  _Block_release(v58);
  LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

  if (v52)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v37 = v117;
  v61 = *&v117[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_bodyTextView];
  v62 = v111;
  (*(v118 + 56))(v116, 1, 1, v111);
  v63 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
  v64 = v61[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed];
  v61[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed] = 1;
  v65 = *&v61[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines];
  v66 = *&v61[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel];
  v67 = v60;
  [v66 setNumberOfLines:v65];
  if (v64 != v61[v63])
  {
    sub_10073D75C();
  }

  v68 = v67;
  sub_10073D114(v67);
  v61[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
  v69 = v109;
  sub_100415F48(v116, v109);
  v70 = v118;
  v71 = &off_100911000;
  if ((*(v118 + 48))(v69, 1, v62) != 1)
  {
    v89 = v104;
    (*(v70 + 32))(v104, v69, v62);
    v90 = v105;
    (*(v70 + 16))(v105, v89, v62);
    v91 = (*(v70 + 88))(v90, v62);
    if (v91 != enum case for Paragraph.Alignment.left(_:))
    {
      if (v91 == enum case for Paragraph.Alignment.center(_:))
      {
        v92 = 1;
        goto LABEL_42;
      }

      if (v91 == enum case for Paragraph.Alignment.right(_:))
      {
        v92 = 2;
        goto LABEL_42;
      }

      if (v91 == enum case for Paragraph.Alignment.justified(_:))
      {
        v92 = 3;
        goto LABEL_42;
      }

      if (v91 == enum case for Paragraph.Alignment.localized(_:))
      {
        v92 = 4;
        goto LABEL_42;
      }

      (*(v70 + 8))(v105, v62);
    }

    v92 = 0;
LABEL_42:
    [v66 setTextAlignment:v92];
    (*(v70 + 8))(v89, v62);
    v72 = v116;
    goto LABEL_46;
  }

  sub_100415FB8(v69);
  v72 = v116;
LABEL_46:
  [v61 v71[194]];

  sub_100415FB8(v72);
  v97 = *&v37[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_primarySubtitleLabel];
  sub_10076227C();
  if (v98)
  {
    v99 = sub_10076FF6C();
  }

  else
  {
    v99 = 0;
  }

  [v97 setText:v99];

  v100 = *&v37[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_secondarySubtitleLabel];
  sub_10076228C();
  if (v101)
  {
    v102 = sub_10076FF6C();
  }

  else
  {
    v102 = 0;
  }

  [v100 setText:v102];

  return [v37 v71[194]];
}

uint64_t sub_1004CAA8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004CAAA4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1004CAAE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004CAB60@<X0>(objc_class *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v41 = a2;
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076D39C();
  __chkstk_darwin(v6 - 8);
  v40 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076D3AC();
  if (qword_100940FE0 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_1009A1D98);
  v10 = *(v8 - 8);
  v11 = *(v10 + 16);
  v12 = v10 + 16;
  v36 = v9;
  v11(v5);
  v13 = enum case for FontSource.useCase(_:);
  v38 = v3[13];
  v38(v5);
  v45 = sub_10076D9AC();
  v58[3] = v45;
  v58[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v58);
  v56 = v2;
  v57 = &protocol witness table for FontSource;
  v14 = sub_10000DB7C(&v55);
  v37 = v3[2];
  v43 = v3 + 2;
  v37(v14, v5, v2);
  sub_10076D9BC();
  v15 = v3[1];
  v44 = v3 + 1;
  v34 = v15;
  v15(v5, v2);
  if (qword_100940FE8 != -1)
  {
    swift_once();
  }

  v35 = sub_10000A61C(v8, qword_1009A1DB0);
  (v11)(v5, v35, v8);
  v42 = v13;
  v16 = v13;
  v17 = v38;
  (v38)(v5, v16, v2);
  v56 = v45;
  v33 = v3 + 13;
  v31 = v8;
  v57 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v55);
  v30 = v12;
  v32 = v11;
  v53 = v2;
  v54 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(v52);
  v19 = v37;
  v37(v18, v5, v2);
  sub_10076D9BC();
  v20 = v34;
  v34(v5, v2);
  (v11)(v5, v36, v8);
  (v17)(v5, v42, v2);
  v53 = v45;
  v54 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v52);
  v21 = v20;
  v22 = v39;
  v23.super.isa = v39;
  isa = sub_10076D19C(v23).super.isa;
  [(objc_class *)isa lineHeight];
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v25 = sub_10000DB7C(v49);
  v19(v25, v5, v2);
  sub_10076D9BC();

  v21(v5, v2);
  v32(v5, v35, v31);
  (v17)(v5, v42, v2);
  v50 = v45;
  v51 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v49);
  v26.super.isa = v22;
  v27 = sub_10076D19C(v26).super.isa;
  [(objc_class *)v27 lineHeight];
  v47 = v2;
  v48 = &protocol witness table for FontSource;
  v28 = sub_10000DB7C(v46);
  v19(v28, v5, v2);
  sub_10076D9BC();

  v21(v5, v2);
  v47 = sub_10076D67C();
  v48 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v46);
  sub_10076D66C();
  return sub_100765A0C();
}

uint64_t sub_1004CB158(uint64_t a1)
{
  v3 = sub_100765A2C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_mainContentView);
  v18 = sub_100016F40(0, &qword_1009441F0);
  v19 = &protocol witness table for UIView;
  v17 = v7;
  v8 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_headingLabel);
  v15 = sub_1007626BC();
  v16 = &protocol witness table for UIView;
  v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_descriptionLabel);
  v14[5] = &protocol witness table for UIView;
  v14[6] = v8;
  v14[4] = v15;
  v14[1] = v9;
  (*(v4 + 16))(v6, a1, v3);
  v10 = v7;
  v11 = v8;
  v12 = v9;
  return sub_1007659DC();
}

uint64_t sub_1004CB2C0(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v3 = sub_10076C38C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  swift_getKeyPath();
  sub_10076338C();

  (*(v4 + 56))(v12, 0, 1, v3);
  v13 = OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_10003837C(v12, v2 + v13, &unk_1009434A0);
  swift_endAccess();
  sub_10076C84C();
  sub_1004CD034(&qword_100947150, &type metadata accessor for TodayCard);
  result = sub_10076332C();
  v15 = v17;
  if (v17)
  {
    sub_100016E2C(v2 + v13, v9, &unk_1009434A0);
    if ((*(v4 + 48))(v9, 1, v3) == 1)
    {

      return sub_10000CFBC(v9, &unk_1009434A0);
    }

    else
    {
      (*(v4 + 32))(v6, v9, v3);
      (*((swift_isaMask & *v2) + 0xD8))(v15, v6, v16);
      [v2 setNeedsLayout];

      return (*(v4 + 8))(v6, v3);
    }
  }

  return result;
}

char *sub_1004CB5D4(double a1, double a2, double a3, double a4)
{
  v9 = sub_10076771C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v52 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v12 - 8);
  v14 = &v48 - v13;
  v15 = OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_itemLayoutContext;
  v16 = sub_10076341C();
  v17 = *(*(v16 - 8) + 56);
  v53 = v4;
  v17(&v4[v15], 1, 1, v16);
  v51 = OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_headingLabel;
  if (qword_100940FE0 != -1)
  {
    swift_once();
  }

  v18 = sub_10076D3DC();
  v19 = sub_10000A61C(v18, qword_1009A1D98);
  v20 = *(v18 - 8);
  v50 = *(v20 + 16);
  v50(v14, v19, v18);
  v49 = *(v20 + 56);
  v49(v14, 0, 1, v18);
  v21 = enum case for DirectionalTextAlignment.leading(_:);
  v22 = *(v10 + 104);
  v22(v52, enum case for DirectionalTextAlignment.leading(_:), v9);
  v23 = sub_1007626BC();
  v48 = v9;
  v24 = v23;
  v25 = objc_allocWithZone(v23);
  *&v53[v51] = sub_1007626AC();
  v51 = OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_descriptionLabel;
  if (qword_100940FE8 != -1)
  {
    swift_once();
  }

  v26 = sub_10000A61C(v18, qword_1009A1DB0);
  v50(v14, v26, v18);
  v49(v14, 0, 1, v18);
  v22(v52, v21, v48);
  v27 = objc_allocWithZone(v24);
  v28 = sub_1007626AC();
  v29 = v53;
  *&v53[v51] = v28;
  v30 = OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_mainContentView;
  *&v29[v30] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v31 = OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_pageGrid;
  v32 = sub_10076C38C();
  (*(*(v32 - 8) + 56))(&v29[v31], 1, 1, v32);
  *&v29[OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_pageTraits] = 0;
  v33 = type metadata accessor for BaseTodayBrickCollectionViewCell();
  v54.receiver = v29;
  v54.super_class = v33;
  v34 = objc_msgSendSuper2(&v54, "initWithFrame:", a1, a2, a3, a4);
  v35 = [v34 contentView];
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v36 = OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_mainContentView;
  [*&v34[OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_mainContentView] _setCornerRadius:20.0];
  [*&v34[v36] setClipsToBounds:1];
  v37 = *&v34[v36];
  sub_100016F40(0, &qword_100942F10);
  v38 = v37;
  v39 = sub_100770D5C();
  [v38 setBackgroundColor:v39];

  v40 = OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_headingLabel;
  v41 = *&v34[OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_headingLabel];
  v42 = sub_100770D1C();
  [v41 setTextColor:v42];

  [*&v34[v40] setNumberOfLines:2];
  v43 = OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_descriptionLabel;
  [*&v34[OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_descriptionLabel] setNumberOfLines:2];
  v44 = [v34 contentView];
  [v44 addSubview:*&v34[v40]];

  v45 = [v34 contentView];
  [v45 addSubview:*&v34[v43]];

  v46 = [v34 contentView];
  [v46 addSubview:*&v34[v36]];

  return v34;
}

id sub_1004CBC10()
{
  v1 = v0;
  v2 = sub_10076D1FC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100765A3C();
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100765A2C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BaseTodayBrickCollectionViewCell();
  v20.receiver = v1;
  v20.super_class = v13;
  result = objc_msgSendSuper2(&v20, "layoutSubviews");
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_pageTraits])
  {
    swift_unknownObjectRetain();
    v15 = [v1 traitCollection];
    v18 = v2;
    v16 = v15;
    sub_1004CAB60(v15, v12);

    sub_1004CB158(v12);
    v17 = [v1 contentView];
    sub_100016F40(0, &qword_1009441F0);
    sub_10076422C();

    sub_1007659EC();
    swift_unknownObjectRelease();
    (*(v3 + 8))(v5, v18);
    (*(v6 + 8))(v8, v19);
    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

id sub_1004CBF44()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for BaseTodayBrickCollectionViewCell();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_pageTraits;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_pageTraits] = 0;
  swift_unknownObjectRelease();
  if (*&v0[v1])
  {
    [v0 setNeedsLayout];
  }

  [*&v0[OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_headingLabel] setText:0];
  return [*&v0[OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_descriptionLabel] setText:0];
}

uint64_t sub_1004CC108()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_headingLabel) text];
  if (v1)
  {
    v2 = v1;
    sub_10076FF9C();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v21[0] = v4;
  v5 = [*(v0 + OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_descriptionLabel) text];
  if (v5)
  {
    v6 = v5;
    v7 = sub_10076FF9C();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = 0;
  v21[1] = v7;
  v21[2] = v9;
  v11 = _swiftEmptyArrayStorage;
LABEL_8:
  v12 = &v21[2 * v10];
  while (++v10 != 3)
  {
    v13 = v12 + 2;
    v14 = *v12;
    v12 += 2;
    if (v14)
    {
      v15 = *(v13 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_10049D954(0, *(v11 + 2) + 1, 1, v11);
      }

      v17 = *(v11 + 2);
      v16 = *(v11 + 3);
      if (v17 >= v16 >> 1)
      {
        v11 = sub_10049D954((v16 > 1), v17 + 1, 1, v11);
      }

      *(v11 + 2) = v17 + 1;
      v18 = &v11[16 * v17];
      *(v18 + 4) = v15;
      *(v18 + 5) = v14;
      goto LABEL_8;
    }
  }

  sub_10000A5D4(&unk_100943470);
  swift_arrayDestroy();
  sub_10000A5D4(&unk_10094BB60);
  sub_10003BCA8();
  v19 = sub_10076FEFC();

  return v19;
}

id sub_1004CC3E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseTodayBrickCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BaseTodayBrickCollectionViewCell()
{
  result = qword_100959FA8;
  if (!qword_100959FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004CC51C()
{
  sub_1003DE89C(319, &qword_100944F90, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_1003DE89C(319, qword_100946AC0, &type metadata accessor for PageGrid);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1004CC634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_1004CC6B8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &unk_1009428D0);
}

uint64_t sub_1004CC720(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &unk_1009428D0);
  return swift_endAccess();
}

double sub_1004CC870()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100765A2C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076461C();
  sub_1004CAB60(v8, v7);

  sub_10076460C();
  sub_10076C2FC();
  (*(v1 + 8))(v3, v0);
  v9 = sub_10076461C();
  sub_1007659FC();
  v11 = v10;

  (*(v5 + 8))(v7, v4);
  return v11;
}

id sub_1004CCA80()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_headingLabel];
  sub_10076C71C();
  if (v3)
  {
    v4 = sub_10076FF6C();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText:v4];

  sub_10076C24C();
  v6 = v5;
  v7 = [v1 traitCollection];
  v8 = type metadata accessor for SnapshotPageTraitEnvironment();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v10 = v6;
  *(v10 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v9[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v7;
  v18.receiver = v9;
  v18.super_class = v8;
  v11 = objc_msgSendSuper2(&v18, "init");
  v12 = OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_pageTraits;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_pageTraits] = v11;
  v13 = v11;
  swift_unknownObjectRelease();
  if (*&v1[v12])
  {
    [v1 setNeedsLayout];
  }

  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_descriptionLabel];
  sub_10076C73C();
  if (v15)
  {
    v16 = sub_10076FF6C();
  }

  else
  {
    v16 = 0;
  }

  [v14 setText:v16];

  return [v1 setNeedsLayout];
}

void sub_1004CCC1C()
{
  v1 = sub_10076771C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_itemLayoutContext;
  v9 = sub_10076341C();
  v10 = *(*(v9 - 8) + 56);
  v32 = v0;
  v10(v0 + v8, 1, 1, v9);
  v29 = OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_headingLabel;
  if (qword_100940FE0 != -1)
  {
    swift_once();
  }

  v11 = sub_10076D3DC();
  v12 = sub_10000A61C(v11, qword_1009A1D98);
  v13 = *(v11 - 8);
  v28 = *(v13 + 16);
  v28(v7, v12, v11);
  v14 = *(v13 + 56);
  v14(v7, 0, 1, v11);
  v15 = enum case for DirectionalTextAlignment.leading(_:);
  v16 = v2 + 104;
  v17 = *(v2 + 104);
  v30 = v16;
  v31 = v1;
  v17(v4, enum case for DirectionalTextAlignment.leading(_:), v1);
  v18 = sub_1007626BC();
  v19 = objc_allocWithZone(v18);
  *(v32 + v29) = sub_1007626AC();
  v29 = OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_descriptionLabel;
  if (qword_100940FE8 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v11, qword_1009A1DB0);
  v28(v7, v20, v11);
  v14(v7, 0, 1, v11);
  v17(v4, v15, v31);
  v21 = objc_allocWithZone(v18);
  v22 = sub_1007626AC();
  v23 = v32;
  *(v32 + v29) = v22;
  v24 = OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_mainContentView;
  *(v23 + v24) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v25 = OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_pageGrid;
  v26 = sub_10076C38C();
  (*(*(v26 - 8) + 56))(v23 + v25, 1, 1, v26);
  *(v23 + OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_pageTraits) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1004CD034(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1004CD094()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for GenericProductReviewActionCollectionViewCell();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  v1 = [v0 contentView];
  [v0 bounds];
  [v1 setFrame:?];

  v2 = [v0 backgroundView];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame:?];
  }

  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension44GenericProductReviewActionCollectionViewCell_productTapToRateView];
  if (v4)
  {
    v5 = v4;
    [v0 bounds];
    [v5 setFrame:?];
  }

  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension44GenericProductReviewActionCollectionViewCell_productReviewActionsView];
  if (v6)
  {
    v7 = v6;
    [v0 bounds];
    [v7 setFrame:?];
  }
}

id sub_1004CD348(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension44GenericProductReviewActionCollectionViewCell_itemLayoutContext;
  v4 = sub_10076341C();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC20ProductPageExtension44GenericProductReviewActionCollectionViewCell_productTapToRateView] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension44GenericProductReviewActionCollectionViewCell_productReviewActionsView] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for GenericProductReviewActionCollectionViewCell();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_1004CD43C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenericProductReviewActionCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for GenericProductReviewActionCollectionViewCell()
{
  result = qword_100959FE0;
  if (!qword_100959FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004CD524()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t type metadata accessor for SearchAdTransparencyLabel()
{
  result = qword_10095A018;
  if (!qword_10095A018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004CD674(void *a1, id a2)
{
  v3 = [a2 layer];
  v4 = [a1 CGContext];
  [v3 renderInContext:v4];
}

void sub_1004CD72C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

char *sub_1004CD778(void *a1)
{
  v3 = sub_10076F9AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076771C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v11 - 8);
  v13 = v22 - v12;
  v14 = qword_100959FF0;
  *(v1 + v14) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v15 = v1 + qword_10095A008;
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  v16 = (v1 + qword_10095A010);
  *v16 = 0;
  v16[1] = 0;
  *(v1 + qword_100959FF8) = a1;
  v17 = a1;
  *(v1 + qword_10095A000) = sub_1004CE4CC(v17);
  v18 = sub_10076D3DC();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  (*(v8 + 104))(v10, enum case for DirectionalTextAlignment.none(_:), v7);
  v19 = sub_1007626AC();
  [v19 setUserInteractionEnabled:1];
  memset(v23, 0, sizeof(v23));
  memset(v22, 0, sizeof(v22));
  sub_10076F95C();
  sub_1000258C0(v22);
  sub_1000258C0(v23);
  sub_100770B9C();
  (*(v4 + 8))(v6, v3);
  v20 = qword_100959FF0;
  [*&v19[qword_100959FF0] addTarget:v19 action:"didTapLabelWithGestureRecognizer:"];
  [*&v19[v20] setDelegate:v19];
  [v19 addGestureRecognizer:*&v19[v20]];

  return v19;
}

double sub_1004CDAD4(char *a1)
{
  ObjectType = swift_getObjectType();
  v3 = &a1[qword_10095A008];
  if (a1[qword_10095A008 + 16])
  {
    v4 = a1;
  }

  else
  {
    v6 = *v3;
    v5 = v3[1];
    v7 = a1;
    sub_1004CDC34(v6, v5, &v12);
    if ((v13 & 1) == 0)
    {
      *&v9 = UIAccessibilityConvertFrameToScreenCoordinates(v12, v7);

      return v9;
    }
  }

  v11.receiver = a1;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, "accessibilityFrame");
  v9 = v8;

  return v9;
}

id sub_1004CDBC4(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, "setAccessibilityFrame:", a2, a3, a4, a5);
}

void sub_1004CDC34(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = [v3 attributedText];
  if (v8)
  {
    v9 = [objc_allocWithZone(NSTextStorage) initWithAttributedString:v8];
    v10 = [objc_allocWithZone(NSLayoutManager) init];
    [v9 addLayoutManager:v10];
    [v4 bounds];
    v13 = [objc_allocWithZone(NSTextContainer) initWithSize:{v11, v12}];
    [v13 setLineFragmentPadding:0.0];
    [v10 addTextContainer:v13];
    v24 = 0;
    v25 = 0;
    [v10 characterRangeForGlyphRange:a1 actualGlyphRange:{a2, &v24}];
    [v10 boundingRectForGlyphRange:v24 inTextContainer:{v25, v13}];
    v21 = v14;
    v22 = v15;
    v20 = v16;
    v23 = v17;

    *&v19 = v20;
    *&v18 = v21;
    *(&v18 + 1) = v22;
    *(&v19 + 1) = v23;
  }

  else
  {
    v18 = 0uLL;
    v19 = 0uLL;
  }

  *a3 = v18;
  *(a3 + 16) = v19;
  *(a3 + 32) = v8 == 0;
}

void sub_1004CDE04()
{
  v1 = v0;
  sub_10000A5D4(&unk_10094E7E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784500;
  *(inited + 32) = NSForegroundColorAttributeName;
  v3 = qword_10093F9C8;
  v4 = NSForegroundColorAttributeName;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_10099D800;
  v6 = sub_100016F40(0, &qword_100942F10);
  *(inited + 40) = v5;
  *(inited + 64) = v6;
  *(inited + 72) = NSFontAttributeName;
  v7 = v5;
  v8 = NSFontAttributeName;
  v9 = [v0 font];
  *(inited + 104) = sub_10000A5D4(&qword_10094DDF8);
  *(inited + 80) = v9;
  sub_1000FC5F4(inited);
  swift_setDeallocating();
  sub_10000A5D4(&unk_100948B10);
  swift_arrayDestroy();
  sub_100016F40(0, &qword_1009544A0);
  sub_10000A5D4(&unk_100942870);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007841E0;
  v11 = *&v0[qword_10095A000];
  *(v10 + 32) = v11;
  v12 = v11;
  v13 = [v0 traitCollection];
  v14 = sub_10077078C();
  v15 = [v14 length];
  v16 = &v1[qword_10095A008];
  *v16 = 0;
  *(v16 + 1) = v15;
  v16[16] = 0;
  v17 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v14];
  if (*&v1[qword_10095A010 + 8])
  {
    v18 = objc_allocWithZone(NSAttributedString);

    v19 = sub_10076FF6C();

    v20 = [v18 initWithString:v19];

    [v17 appendAttributedString:v20];
  }

  [v1 setAttributedText:v17];
}

void sub_1004CE0CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076E3AC();
  __chkstk_darwin(v4);
  sub_1007626BC();
  v5 = sub_1007626CC();
  v5(a1);
  v6 = *&v2[qword_100959FF8];
  v7 = [v2 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  sub_100770C0C();
  sub_10076E37C();
  sub_100770C1C();
  [v6 updateTraitsIfNeeded];
  v9 = sub_1004CE4CC(v6);
  v10 = *&v2[qword_10095A000];
  *&v2[qword_10095A000] = v9;

  sub_1004CDE04();
}

BOOL sub_1004CE22C(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = &a1[qword_10095A008];
  if (a1[qword_10095A008 + 16])
  {
    return 0;
  }

  v8 = *v4;
  v7 = v4[1];
  v9 = a4;
  v10 = a1;
  sub_1004CDC34(v8, v7, &v22);
  if (v23)
  {
    v5 = 0;
  }

  else
  {
    sub_100770A7C();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [v9 locationInView:v10];
    v24.x = v19;
    v24.y = v20;
    v25.origin.x = v12;
    v25.origin.y = v14;
    v25.size.width = v16;
    v25.size.height = v18;
    v5 = CGRectContainsPoint(v25, v24);
  }

  return v5;
}

void sub_1004CE328(char *a1)
{
  v1 = *(*&a1[qword_100959FF8] + qword_10094CD78);
  if (v1)
  {
    v3 = a1;
    v2 = sub_10001CE50(v1);
    v1(v2);
    sub_1000167E0(v1);
  }
}

uint64_t sub_1004CE3F0()
{
}

uint64_t sub_1004CE454(uint64_t a1)
{
}

uint64_t sub_1004CE4CC(void *a1)
{
  [a1 sizeToFit];
  [a1 bounds];
  v6 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:{v2, v3, v4, v5}];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1004CE6D4;
  *(v8 + 24) = v7;
  v13[4] = sub_1004CE6EC;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1004CD72C;
  v13[3] = &unk_100897AF0;
  v9 = _Block_copy(v13);
  v10 = a1;

  v11 = [v6 imageWithActions:v9];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004CE69C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004CE714(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for FadeInDynamicTypeButton()
{
  result = qword_10095A080;
  if (!qword_10095A080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1004CE7E0(double a1, double a2, double a3, double a4)
{
  *&v4[qword_10095A068] = 0x4059000000000000;
  v4[qword_10095A078] = 0;
  v9 = objc_opt_self();
  v10 = [v9 systemBackgroundColor];
  v11 = sub_100564464(v10);

  *&v4[qword_10095A070] = v11;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for FadeInDynamicTypeButton();
  v12 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v13 = [v9 systemBackgroundColor];
  [v12 setBackgroundColor:v13];

  v14 = [v12 layer];
  [v14 addSublayer:*&v12[qword_10095A070]];

  v15 = [v12 layer];
  [v15 setMasksToBounds:0];

  return v12;
}

id sub_1004CE984(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for FadeInDynamicTypeButton();
  v1 = objc_msgSendSuper2(&v3, "backgroundColor");

  return v1;
}

void sub_1004CE9E0(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for FadeInDynamicTypeButton();
  v10.receiver = a1;
  v10.super_class = v5;
  v6 = a3;
  v7 = a1;
  v8 = objc_msgSendSuper2(&v10, "backgroundColor");
  v9.receiver = v7;
  v9.super_class = v5;
  objc_msgSendSuper2(&v9, "setBackgroundColor:", v6);
  sub_1004CEA80(v8);
}

void sub_1004CEA80(void *a1)
{
  v2 = v1;
  v4 = [v2 backgroundColor];
  if (v4)
  {
    v5 = v4;
    if (a1)
    {
      sub_100016F40(0, &qword_100942F10);
      v6 = a1;
      v7 = sub_100770EEC();

      if (v7)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = [v2 backgroundColor];
  if (!v8)
  {
    v8 = [objc_opt_self() clearColor];
  }

  v9 = v8;
  v10 = sub_100564464(v8);

  sub_1004CF1C0(v10);
}

id sub_1004CEBB0()
{
  v1 = qword_10095A070;
  if (v0[qword_10095A078])
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  if (v0[qword_10095A078])
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  [*&v0[qword_10095A070] setStartPoint:{v2, 0.5}];
  [*&v0[v1] setEndPoint:{v3, 0.5}];

  return [v0 setNeedsLayout];
}

uint64_t sub_1004CEC44()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_10076D3DC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FadeInDynamicTypeButton();
  v14.receiver = v0;
  v14.super_class = v9;
  objc_msgSendSuper2(&v14, "layoutSubviews");
  sub_10076310C();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_1000276DC(v4);
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_100016F40(0, &qword_100942F00);
  v11 = [v0 traitCollection];
  v12 = sub_100770B3C();

  [v12 lineHeight];
  [v1 bounds];
  CGRectGetMinX(v15);
  [v1 bounds];
  CGRectGetMinY(v16);
  [v1 bounds];
  CGRectGetHeight(v17);
  v13 = *&v1[qword_10095A070];
  sub_10076422C();
  sub_100770A5C();
  [v13 setFrame:?];

  return (*(v6 + 8))(v8, v5);
}

void sub_1004CEEF8(void *a1)
{
  v1 = a1;
  sub_1004CEC44();
}

void sub_1004CEF40(void *a1)
{
  v5 = a1;
  v1 = [v5 backgroundColor];
  if (v1)
  {
    v2 = v1;
    v3 = sub_100564464(v1);
    sub_1004CF1C0(v3);

    v4 = v3;
  }

  else
  {
    v4 = v5;
  }
}

id sub_1004CEFD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FadeInDynamicTypeButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1004CF028(uint64_t a1, void *a2)
{
  v4 = sub_10076D3DC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  (*(v5 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v6);
  v8 = sub_10076312C();
  v9 = sub_100564464(a2);
  v10 = qword_10095A070;
  v11 = *&v8[qword_10095A070];
  *&v8[qword_10095A070] = v9;

  [v8 setBackgroundColor:a2];
  v12 = [v8 layer];
  [v12 addSublayer:*&v8[v10]];

  v13 = [v8 layer];
  [v13 setMasksToBounds:0];

  (*(v5 + 8))(a1, v4);
  return v8;
}

void sub_1004CF1C0(void *a1)
{
  v2 = qword_10095A070;
  v5 = *&v1[qword_10095A070];
  *&v1[qword_10095A070] = a1;
  v3 = a1;
  [v5 frame];
  [v3 setFrame:?];
  v4 = [v1 layer];
  [v4 insertSublayer:*&v1[v2] below:v5];

  [v5 removeFromSuperlayer];
  [v1 setNeedsLayout];
}

uint64_t type metadata accessor for CappedSizeDynamicTypeLabel()
{
  result = qword_10095A0D8;
  if (!qword_10095A0D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004CF328(void *a1)
{
  v3 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_10076D3DC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v1[qword_10095A0D0];
  *&v1[qword_10095A0D0] = a1;
  v21 = v10;
  if (!a1)
  {
    if (!v10)
    {
      return;
    }

    goto LABEL_14;
  }

  if (!v10)
  {
    v19 = a1;
    goto LABEL_14;
  }

  v11 = sub_10076FF9C();
  v13 = v12;
  if (v11 != sub_10076FF9C() || v13 != v14)
  {
    v16 = sub_10077167C();
    v17 = a1;

    if (v16)
    {

      v18 = v21;

      return;
    }

LABEL_14:
    sub_1007625CC();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      sub_1000276DC(v5);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      sub_1007625BC();
      [v1 setNeedsLayout];

      (*(v7 + 8))(v9, v6);
    }

    return;
  }
}

uint64_t sub_1004CF5DC()
{
  v1 = *(v0 + qword_10095A0D0);
  if (v1)
  {
    sub_1007626BC();
    v2 = sub_1007626CC();
    v3 = v1;
    v4 = v2();
    v5 = [v4 preferredContentSizeCategory];

    LOBYTE(v4) = sub_10077085C();
    if (v4)
    {
      sub_10000A5D4(&unk_100942870);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_100785D70;
      *(v6 + 32) = v2();
      v7 = objc_opt_self();
      *(v6 + 40) = [v7 traitCollectionWithPreferredContentSizeCategory:v3];
      sub_10017FF5C();
      isa = sub_1007701AC().super.isa;

      v9 = [v7 traitCollectionWithTraitsFromCollections:isa];

      return v9;
    }
  }

  sub_1007626BC();
  v11 = sub_1007626CC();

  return v11();
}

id sub_1004CF7C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CappedSizeDynamicTypeLabel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1004CF814(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_10000A5D4(&qword_100956718);
  sub_100166C0C();
  sub_10076FD8C();
  if (v10)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10075F4DC();
  }

  swift_getObjectType();
  return sub_10031CFDC(a1, v8 & 1, a6);
}

uint64_t sub_1004CF8DC()
{
  if (!sub_100318E24())
  {
    return 2;
  }

  sub_10000A5D4(&qword_10094AA50);
  sub_100166C0C();
  sub_10076F83C();
  return 3;
}

unint64_t sub_1004CF9B8()
{
  result = qword_10095A170;
  if (!qword_10095A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095A170);
  }

  return result;
}

unint64_t sub_1004CFA10()
{
  result = qword_10095A178;
  if (!qword_10095A178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095A178);
  }

  return result;
}

void sub_1004CFA64()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_100952650);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v36 - v6;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_detailItems] = sub_10075F4EC();

  v8 = sub_10075F4FC();
  v9 = &v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_titleText];
  *v9 = v8;
  v9[1] = v10;

  v11 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_titleLabel];

  v12 = sub_10076FF6C();

  [v11 setText:v12];

  [v1 setNeedsLayout];
  v13 = sub_10075F50C();
  v14 = &v1[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_explicitSummary];
  *v14 = v13;
  v14[1] = v15;

  sub_10031C0A4();
  v16 = sub_10075F4CC();
  if (v16)
  {
    v37 = v16;
    sub_10076B90C();
    sub_10076F64C();
    sub_100455D48(&qword_100956710, &type metadata accessor for Action);
    sub_10076F56C();

    v17 = sub_10000A5D4(&qword_100955BD0);
    (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  }

  else
  {
    v18 = sub_10000A5D4(&qword_100955BD0);
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  }

  v19 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkAction;
  swift_beginAccess();
  sub_10031DCE8(v7, &v1[v19]);
  swift_endAccess();
  sub_10031C22C();
  sub_1004D0064(v7);
  sub_10000A5D4(&qword_10094AA50);
  sub_100166C0C();
  sub_10076F84C();
  if (v37)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_10075F4DC();
  }

  sub_10031DB84();
  v1[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_isExpanded] = v20 & 1;
  sub_10031BDF8();
  v21 = sub_10075F4CC();
  if (v21)
  {
    v37 = v21;
    sub_10076B90C();
    sub_10076F64C();
    sub_100455D48(&qword_100956710, &type metadata accessor for Action);
    sub_10076F56C();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = sub_10000A5D4(&qword_100955BD0);
  (*(*(v23 - 8) + 56))(v4, v22, 1, v23);
  swift_beginAccess();
  sub_10031DCE8(v4, &v1[v19]);
  swift_endAccess();
  sub_10031C22C();
  sub_1004D0064(v4);
  v24 = [v1 traitCollection];
  v25 = sub_1007706CC();

  v1[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_isSeparatorDisplayed] = (v25 & 1) == 0;
  if (v25)
  {
    v26 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_separatorLineView;
    swift_beginAccess();
    v27 = *&v1[v26];
    if (v27)
    {
      [v27 removeFromSuperview];
      v28 = *&v1[v26];
    }

    else
    {
      v28 = 0;
    }

    *&v1[v26] = 0;

    [v1 setNeedsLayout];
  }

  else
  {
    v29 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v30 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_separatorLineView;
    swift_beginAccess();
    v31 = *&v1[v30];
    if (v31)
    {
      [v31 removeFromSuperview];
      v32 = *&v1[v30];
    }

    else
    {
      v32 = 0;
    }

    *&v1[v30] = v29;
    v33 = v29;

    if (v33)
    {
      sub_1000325F0();
      v34 = sub_100770CDC();
      [v33 setBackgroundColor:v34];

      v35 = [v1 contentView];
      [v35 addSubview:v33];
    }

    [v1 setNeedsLayout];
  }
}

uint64_t sub_1004D0064(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100952650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004D0110(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v7 = sub_10076D1AC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940EB0 != -1)
  {
    swift_once();
  }

  v11 = sub_10076D3DC();
  v12 = sub_10000A61C(v11, qword_1009A1A08);
  (*(*(v11 - 8) + 16))(v10, v12, v11);
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
  *a2 = sub_10076D9AC();
  *a3 = &protocol witness table for StaticDimension;
  sub_10000DB7C(a4);
  v16[3] = v7;
  v16[4] = &protocol witness table for FontSource;
  v13 = sub_10000DB7C(v16);
  (*(v8 + 16))(v13, v10, v7);
  sub_10076D9BC();
  return (*(v8 + 8))(v10, v7);
}

char *sub_1004D02FC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10076D3DC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC20ProductPageExtension22SearchTransparencyView_linkedLabel;
  if (qword_100940EB0 != -1)
  {
    swift_once();
  }

  v15 = sub_10000A61C(v10, qword_1009A1A08);
  (*(v11 + 16))(v13, v15, v10);
  v16 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *&v5[v14] = sub_10050BDFC(v13, 0, 0);
  v17 = type metadata accessor for SearchTransparencyView();
  v26.receiver = v5;
  v26.super_class = v17;
  v18 = objc_msgSendSuper2(&v26, "initWithFrame:", a1, a2, a3, a4);
  v19 = OBJC_IVAR____TtC20ProductPageExtension22SearchTransparencyView_linkedLabel;
  v20 = *&v18[OBJC_IVAR____TtC20ProductPageExtension22SearchTransparencyView_linkedLabel];
  v21 = v18;
  [v21 addSubview:v20];
  [v21 setLayoutMargins:{0.0, 32.0, 0.0, 32.0}];
  sub_1000325F0();
  v22 = sub_100770D9C();
  [v21 setBackgroundColor:v22];

  [v21 _setCornerRadius:10.0];
  v23 = *&v18[v19];
  v24 = sub_100770D1C();
  [v23 setTextColor:v24];

  [*&v18[v19] setTextAlignment:1];
  return v21;
}

id sub_1004D0844()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchTransparencyView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1004D08AC(uint64_t a1, NSString a2)
{
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel];
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

uint64_t sub_1004D0A60(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v131 = a7;
  LODWORD(v132) = a6;
  v129 = a5;
  v138 = a4;
  v133 = a3;
  v130 = a10;
  v122 = sub_10076638C();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076B96C();
  v136 = *(v14 - 8);
  v137 = v14;
  __chkstk_darwin(v14);
  v125 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v135 = &v119 - v17;
  __chkstk_darwin(v18);
  v123 = &v119 - v19;
  v139 = sub_10076201C();
  v134 = *(v139 - 8);
  __chkstk_darwin(v139);
  v128 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v127 = &v119 - v22;
  v23 = sub_10000A5D4(&unk_100962490);
  __chkstk_darwin(v23 - 8);
  v126 = &v119 - v24;
  v25 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v25 - 8);
  v27 = &v119 - v26;
  v28 = sub_100768FEC();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v124 = &v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v31 - 8);
  v33 = &v119 - v32;
  v34 = sub_10000A5D4(&unk_100946750);
  v141 = *(v34 - 8);
  v142 = v34;
  __chkstk_darwin(v34);
  v143 = &v119 - v35;
  v140 = a1;
  v36 = sub_10076BBAC();
  if (v37)
  {
    v38 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v38 = v36 & 0xFFFFFFFFFFFFLL;
    }

    if (v38)
    {
      v119 = a8;
      sub_1000325F0();
      v39 = sub_100770CFC();
      sub_1003EBF74(1, v39);

      v40 = *&a2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel];
      if (v40)
      {
        v41 = v40;
        v42 = sub_10076FF6C();

        [v41 setText:v42];
      }

      else
      {
      }

      a8 = v119;
      goto LABEL_13;
    }
  }

  v43 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel;
  v44 = *&a2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel];
  if (v44)
  {
    [v44 setHidden:1];
    v45 = *&a2[v43];
    if (v45)
    {
      [v45 setText:0];
    }
  }

LABEL_13:
  v46 = sub_10076BB6C();
  sub_1003EB74C(v46, v47);
  v48 = *&a2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_ordinalLabel];
  sub_10076BBBC();
  if (v49)
  {
    v50 = sub_10076FF6C();
  }

  else
  {
    v50 = 0;
  }

  [v48 setText:v50];

  sub_100016E2C(v130, v33, &qword_10094F730);
  v52 = v141;
  v51 = v142;
  if ((*(v141 + 48))(v33, 1, v142) == 1)
  {
    sub_10000CFBC(v33, &qword_10094F730);
    v53 = *(v29 + 104);
    v53(v124, enum case for OfferButtonSubtitlePosition.below(_:), v28);
    v53(v27, enum case for OfferButtonSubtitlePosition.right(_:), v28);
    (*(v29 + 56))(v27, 0, 1, v28);
    sub_1004D1C00(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition);
    sub_10076759C();
  }

  else
  {
    (*(v52 + 32))(v143, v33, v51);
  }

  v54 = v139;
  v55 = v134;
  v56 = sub_10076BB3C();
  v57 = v131;
  if (!v56)
  {
    goto LABEL_24;
  }

  v58 = sub_10075F78C();
  if ((*(*(v58 - 8) + 48))(v57, 1, v58) == 1)
  {
    v59 = sub_1007628DC();
    if ((*(*(v59 - 8) + 48))(a8, 1, v59) == 1)
    {
      v60 = sub_10076C54C();
      if ((*(*(v60 - 8) + 48))(a9, 1, v60) == 1)
      {

LABEL_24:
        v61 = sub_10076BB3C();
        goto LABEL_26;
      }
    }
  }

  v62 = v126;
  (*(v55 + 56))(v126, 1, 1, v54);
  v144 = 0u;
  v145 = 0u;
  v61 = sub_100766A5C();

  sub_10000CFBC(&v144, &unk_1009434C0);
  sub_10000CFBC(v62, &unk_100962490);
LABEL_26:

  v63 = sub_10076BA2C();
  v64 = sub_10076BA7C();
  sub_1001F12C8(v61, v63, 0, v133, v143, v138, v132 & 1, v64 & 1);

  sub_10000A5D4(&unk_10094A8C0);
  sub_10076F64C();
  sub_10076FC1C();
  v134 = *(&v144 + 1);
  v139 = v144;
  if (v61)
  {
    v65 = v61;
    v66 = v127;
    sub_100766A8C();
    v67 = v128;
    (*(v55 + 104))(v128, enum case for OfferLabelStyle.none(_:), v54);
    sub_1004D1C00(&unk_100958360, &type metadata accessor for OfferLabelStyle);
    v68 = sub_10076FF1C();
    v69 = *(v55 + 8);
    v69(v67, v54);
    v69(v66, v54);
    if ((v68 & 1) == 0)
    {

      sub_100766ACC();
      sub_10076148C();
      swift_unknownObjectRetain();
      sub_10076FC1C();
      sub_10076130C();

      v71 = sub_100764E4C();
      swift_allocObject();
      v72 = sub_100764E2C();
      *(&v145 + 1) = v71;
      *&v144 = v72;
      v73 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabelPresenter;
      swift_beginAccess();

      sub_100127EF0(&v144, &a2[v73]);
      swift_endAccess();
      [*&a2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel] frame];
      v147.origin.x = 0.0;
      v147.origin.y = 0.0;
      v147.size.width = 0.0;
      v147.size.height = 0.0;
      v61 = v65;
      if (CGRectEqualToRect(v146, v147))
      {
        v74 = objc_opt_self();
        v75 = [v74 areAnimationsEnabled];
        [v74 setAnimationsEnabled:0];
        sub_1004D1C00(&qword_10095A1B0, type metadata accessor for BaseLockupView);
        swift_unknownObjectRetain();
        sub_100764E3C();
        [a2 layoutIfNeeded];
        [v74 setAnimationsEnabled:v75];
      }

      else
      {
        sub_1004D1C00(&qword_10095A1B0, type metadata accessor for BaseLockupView);
        swift_unknownObjectRetain();
        sub_100764E3C();
      }

      goto LABEL_34;
    }

    v61 = v65;
  }

  v144 = 0u;
  v145 = 0u;
  v70 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabelPresenter;
  swift_beginAccess();
  sub_100127EF0(&v144, &a2[v70]);
  swift_endAccess();
  sub_1004D08AC(0, 0);
LABEL_34:
  v76 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel;
  v77 = *&a2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel];
  v78 = &selRef__setPocketInsets_;
  if (v77 && ([v77 isHidden] & 1) == 0 && (v79 = *&a2[v76]) != 0)
  {
    v80 = [v79 hasContent];
  }

  else
  {
    v80 = 0;
  }

  v81 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabelPresenter;
  swift_beginAccess();
  sub_100016E2C(&a2[v81], &v144, &unk_1009434C0);
  v82 = *(&v145 + 1);
  LODWORD(v138) = *(&v145 + 1) != 0;
  sub_10000CFBC(&v144, &unk_1009434C0);
  v83 = sub_10076BA4C();
  if (!v84)
  {
LABEL_45:
    v86 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel;
    v87 = *&a2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel];
    if (v87)
    {
      [v87 setHidden:1];
      v88 = *&a2[v86];
      if (v88)
      {
        [v88 setText:0];
      }
    }

    goto LABEL_54;
  }

  if (v82)
  {
    v85 = v80;
  }

  else
  {
    v85 = 0;
  }

  if (v85)
  {

    goto LABEL_45;
  }

  v133 = v83;
  v89 = v84;
  sub_1003EC234();
  sub_10076BAFC();
  v90 = sub_1007701EC();

  v91 = *&a2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel];
  if (v90)
  {
    if (v91)
    {
      v132 = v91;
      v92 = sub_10076BAFC();
      v93 = v120;
      sub_10076BB2C();
      v94 = v132;
      sub_100212C9C(v92, v133, v89, v93);

      v95 = v93;
      v78 = &selRef__setPocketInsets_;
      (*(v121 + 8))(v95, v122);
      goto LABEL_54;
    }
  }

  else if (v91)
  {
    v96 = v91;
    v97 = sub_10076FF6C();

    [v96 setText:v97];

    v78 = &selRef__setPocketInsets_;
    goto LABEL_54;
  }

LABEL_54:
  v98 = *&a2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel];
  sub_10076BBEC();
  if (v99)
  {
    v100 = sub_10076FF6C();
  }

  else
  {
    v100 = 0;
  }

  [v98 setText:v100];

  v101 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel;
  v102 = *&a2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel];
  if (v102)
  {
    v103 = [v102 isHidden];
    v104 = v141;
    if ((v103 & 1) != 0 || (v105 = *&a2[v101]) == 0)
    {
      v106 = 0;
    }

    else
    {
      v106 = [v105 v78[63]];
    }
  }

  else
  {
    v106 = 0;
    v104 = v141;
  }

  if (![v98 v78[63]])
  {
    goto LABEL_69;
  }

  if (v106)
  {
    if (v82)
    {
      v107 = 1;
    }

    else
    {
      v107 = v80;
    }

    if (v107)
    {
LABEL_69:
      v108 = 1;
      goto LABEL_72;
    }
  }

  else
  {
    v108 = v138;
    if (v80)
    {
      goto LABEL_72;
    }
  }

  v108 = 0;
LABEL_72:
  [v98 setHidden:v108];
  v109 = *&a2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView];
  if (sub_10076BB5C())
  {

    v110 = v129;
  }

  else
  {
    v110 = 1;
  }

  [v109 setHidden:v110 & 1];
  v111 = sub_10076BA7C();
  if (v61 && (v111 & 1) != 0)
  {
    v112 = v125;
    sub_100766ACC();
    (*(v136 + 32))(v135, v112, v137);
    swift_getObjectType();
    v113 = sub_10075EE2C();
    v115 = v114;
    v116 = &a2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_stateMachine];
    if (*&a2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_stateMachine])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_10075ED0C();
      swift_unknownObjectRelease();
    }

    *v116 = v113;
    v116[1] = v115;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    sub_1003EC6D8();
    swift_unknownObjectRelease();
    (*(v136 + 8))(v135, v137);
  }

  else
  {
    v117 = &a2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_stateMachine];
    if (*&a2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_stateMachine])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_10075ED0C();
      swift_unknownObjectRelease();
    }

    *v117 = 0;
    *(v117 + 1) = 0;
    swift_unknownObjectRelease();
    sub_1003EC6D8();
  }

  [a2 setNeedsLayout];
  swift_unknownObjectRelease();

  return (*(v104 + 8))(v143, v142);
}

uint64_t sub_1004D1C00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004D1CA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076D13C();
  v61 = *(v4 - 8);
  __chkstk_darwin(v4);
  v59 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = v5;
  __chkstk_darwin(v6);
  v60 = &v47[-v7];
  v8 = sub_10076B96C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v47[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v47[-v13];
  sub_10000A5D4(&qword_100942C70);
  v15 = sub_10076FCEC();
  sub_10075EA8C();
  v16 = sub_10076B91C();
  v17 = *(v9 + 8);
  v17(v14, v8);
  if (v16)
  {
    v51 = v16;
    v58 = v4;
    v55 = v15;
    sub_10000A5D4(&unk_10094A8C0);
    sub_10076F64C();
    v54 = a2;
    sub_10076FC1C();
    swift_getObjectType();
    sub_10075EA8C();
    v18 = sub_10075EE2C();
    swift_unknownObjectRelease();
    v17(v11, v8);
    swift_getObjectType();
    v53 = v18;
    v19 = sub_10075ECDC();
    v20 = "ActionDispatcher[ASDAppQuery]:handleOpenAppAction";
    v52 = a1;
    if (v19)
    {
      v21 = sub_10075EA6C();
      if (v21)
      {
        v20 = "ActionDispatcher[ASDAppQuery.BetaApps]:handleOpenAppAction";
        v22 = 58;
      }

      else
      {
        v22 = 49;
      }
    }

    else
    {
      v21 = 0;
      v22 = 49;
    }

    v49 = v20;
    sub_10076F8EC();
    sub_10076F8DC();
    v25 = v60;
    sub_10076D12C();
    sub_1007707EC();
    v26 = sub_10076F8DC();
    sub_10076D11C();

    sub_10000A5D4(&unk_100942870);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1007841E0;
    v28 = v51;
    *(v27 + 32) = v51;
    sub_100016F40(0, &qword_1009492D0);
    v50 = v28;
    v29.super.isa = sub_1007701AC().super.isa;

    v30 = objc_opt_self();
    v31 = &selRef_queryForBetaAppsWithStoreItemIDs_;
    v48 = v21 & 1;
    if ((v21 & 1) == 0)
    {
      v31 = &selRef_queryForStoreItemIDs_;
    }

    v51 = [v30 *v31];

    v32 = v61;
    (*(v61 + 16))(v59, v25, v58);
    sub_1004D3500(v57, v63);
    v33 = (*(v32 + 80) + 33) & ~*(v32 + 80);
    v34 = v33 + v56;
    v35 = (((v33 + v56) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
    v37 = v22;
    v38 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    *(v40 + 16) = v49;
    *(v40 + 24) = v37;
    *(v40 + 32) = 2;
    v41 = v58;
    (*(v32 + 32))(v40 + v33, v59, v58);
    *(v40 + v34) = v48;
    *(v40 + (v34 & 0xFFFFFFFFFFFFFFF8) + 8) = v52;
    sub_1004D3624(v63, v40 + v35);
    v15 = v55;
    *(v40 + v36) = v54;
    *(v40 + v38) = v15;
    v42 = v50;
    *(v40 + v39) = v50;
    aBlock[4] = sub_1004D365C;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1007272F4;
    aBlock[3] = &unk_100897CA8;
    v43 = _Block_copy(aBlock);
    v44 = v42;

    v45 = v51;
    [v51 executeQueryWithResultHandler:v43];
    _Block_release(v43);

    swift_unknownObjectRelease();
    (*(v61 + 8))(v60, v41);
  }

  else
  {
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v23 = sub_10076FD4C();
    sub_10000A61C(v23, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBEC();

    sub_1004D34AC();
    swift_allocError();
    *v24 = 0;
    sub_10076FCAC();
  }

  return v15;
}

void sub_1004D2394(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  v45 = a7;
  v46 = a8;
  v47 = a11;
  v44 = a10;
  v13 = sub_10076B96C();
  __chkstk_darwin(v13 - 8);
  v41[1] = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076F4FC();
  __chkstk_darwin(v15 - 8);
  v43 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100764E5C();
  v42 = *(v17 - 8);
  __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  v20 = v41 - v19;
  v21 = sub_1007707DC();
  sub_10076F8EC();
  v22 = sub_10076F8DC();
  sub_10076D11C();

  if (!a1)
  {
    goto LABEL_13;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_13:
    if (v45)
    {
      sub_10076B8EC();
      sub_10075EA8C();
      sub_10075EA5C();
      sub_10076B8BC();
      sub_10076B89C();
      sub_10075EA9C();
      swift_allocObject();
      v37 = sub_10075EA7C();
      sub_100564010(v37, 1, v44);
      sub_10076FC4C();

      return;
    }

    v21 = a12;
    if (qword_1009412E8 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  if (!sub_10077158C())
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) == 0)
  {
    v23 = v46;
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v24 = *(a1 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_19:
    swift_once();
LABEL_16:
    v38 = sub_10076FD4C();
    sub_10000A61C(v38, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783C60;
    sub_10076F27C();
    v51 = sub_100016F40(0, &qword_1009492D0);
    aBlock = v21;
    v39 = v21;
    sub_10076F28C();
    sub_1000258C0(&aBlock);
    sub_10076F27C();
    sub_10076FBEC();

    sub_1004D34AC();
    swift_allocError();
    *v40 = 1;
    sub_10076FCAC();

    return;
  }

  v24 = sub_10077149C();
  v23 = v46;
LABEL_7:
  sub_10075EA5C();
  v25 = v42;
  v26 = (*(v42 + 88))(v20, v17);
  if (v26 == enum case for OpenableDestination.app(_:))
  {
    v27 = [v24 bundleID];
    sub_10076FF9C();

    sub_10076F4DC();
    sub_100562288(_swiftEmptyArrayStorage);
    sub_10076976C();
    swift_allocObject();
    sub_10076975C();

    v29 = v44;
    sub_100564058(v28, 1, v44);

    v30 = objc_opt_self();
    sub_1004D3500(a9, v54);
    v31 = swift_allocObject();
    sub_1004D3624(v54, (v31 + 2));
    v31[4] = v23;
    v31[5] = v29;
    v31[6] = v47;
    v52 = sub_1004D391C;
    v53 = v31;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_1004D3230;
    v51 = &unk_100897D48;
    v32 = _Block_copy(&aBlock);

    [v30 launchApp:v24 withResultHandler:v32];

    _Block_release(v32);
  }

  else if (v26 == enum case for OpenableDestination.messages(_:))
  {
    v33 = objc_opt_self();
    sub_1004D3500(a9, v54);
    v34 = swift_allocObject();
    sub_1004D3624(v54, (v34 + 2));
    v35 = v44;
    v34[4] = v23;
    v34[5] = v35;
    v34[6] = v47;
    v52 = sub_1004D3764;
    v53 = v34;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_1004D3230;
    v51 = &unk_100897CF8;
    v36 = _Block_copy(&aBlock);

    [v33 launchMessagesExtensionForApp:v24 withResultHandler:v36];

    _Block_release(v36);
  }

  else
  {

    (*(v25 + 8))(v20, v17);
  }
}

uint64_t sub_1004D2B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27[0] = a3;
  v27[1] = a2;
  v5 = sub_10076F50C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076F08C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076F0CC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v25 = sub_10076FD4C();
    sub_10000A61C(v25, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100784500;
    sub_10076F27C();
    v29 = sub_10076B96C();
    sub_10000DB7C(aBlock);
    sub_10075EA8C();
    sub_10076F28C();
    sub_1000258C0(aBlock);
    sub_10076FBEC();

    sub_10000A5D4(&qword_100942C70);
    sub_1004D34AC();
    swift_allocError();
    v24 = 1;
    goto LABEL_9;
  }

  if (a1 == 1)
  {
    v18 = v15;
    sub_100016F40(0, &qword_1009471F0);
    v19 = sub_10077068C();
    sub_1004D3500(v3, v32);
    v20 = swift_allocObject();
    sub_1004D3624(v32, v20 + 16);
    *(v20 + 32) = v27[0];
    v30 = sub_1004D3844;
    v31 = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    v29 = &unk_100897D98;
    v21 = _Block_copy(aBlock);

    sub_10076F0AC();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1004D3850(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000A5D4(&unk_10094E1C0);
    sub_1000852B8();
    sub_1007712CC();
    sub_10077069C();
    _Block_release(v21);

    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v17, v18);
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v22 = sub_10076FD4C();
    sub_10000A61C(v22, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100784500;
    sub_10076F27C();
    v29 = sub_10076B96C();
    sub_10000DB7C(aBlock);
    sub_10075EA8C();
    sub_10076F28C();
    sub_1000258C0(aBlock);
    sub_10076FBEC();

    sub_10000A5D4(&qword_100942C70);
    sub_1004D34AC();
    swift_allocError();
    v24 = 2;
LABEL_9:
    *v23 = v24;
    return sub_10076FC7C();
  }

  sub_10000A5D4(&qword_100942C70);
  (*(v6 + 104))(v8, enum case for ActionOutcome.performed(_:), v5);
  return sub_10076FC8C();
}

uint64_t sub_1004D3230(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1004D3284(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076253C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076F4FC();
  __chkstk_darwin(v7 - 8);
  v11._object = 0x80000001007EA5D0;
  v11._countAndFlagsBits = 0xD00000000000001FLL;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_1007622EC(v11, v13);
  v12._countAndFlagsBits = 0xD000000000000021;
  v12._object = 0x80000001007EA5F0;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  sub_1007622EC(v12, v14);
  sub_10076F4DC();
  (*(v4 + 104))(v6, enum case for AlertActionStyle.normal(_:), v3);
  sub_10075FAAC();
  swift_allocObject();
  v8 = sub_10075FA7C();
  sub_100564070(v8, 1, a2);
}

unint64_t sub_1004D34AC()
{
  result = qword_10095A1B8;
  if (!qword_10095A1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095A1B8);
  }

  return result;
}

uint64_t sub_1004D3538()
{
  v1 = sub_10076D13C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (((((((((v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_1004D365C(unint64_t a1, uint64_t a2)
{
  v5 = *(sub_10076D13C() - 8);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = ((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1004D2394(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8), v2 + v8, *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1004D3748(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004D3768()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1004D37B8(uint64_t a1)
{
  sub_1004D2B50(a1, *(v1 + 32), *(v1 + 40));
  sub_10076FC4C();
}

uint64_t sub_1004D3804()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1004D3850(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1004D38AC()
{
  result = qword_10095A1C0;
  if (!qword_10095A1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095A1C0);
  }

  return result;
}

unint64_t sub_1004D3934()
{
  result = qword_10095A1C8;
  if (!qword_10095A1C8)
  {
    sub_10076000C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095A1C8);
  }

  return result;
}

uint64_t sub_1004D398C()
{
  v0 = sub_10076F50C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075FFFC();
  sub_10000A5D4(&qword_100942C70);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  return sub_10076FC8C();
}

unint64_t sub_1004D3A98()
{
  result = qword_10095A1D0;
  if (!qword_10095A1D0)
  {
    sub_10076409C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095A1D0);
  }

  return result;
}

uint64_t sub_1004D3AF0(void *a1)
{
  v2 = sub_10076F50C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 success])
  {
    (*(v3 + 104))(v6, enum case for ActionOutcome.performed(_:), v2);
    sub_10076FCBC();
    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    v8 = [a1 error];
    sub_1004D4080();
    swift_allocError();
    *v9 = v8;
    sub_10076FCAC();
  }
}

uint64_t sub_1004D3C74()
{
  v0 = sub_10076407C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = aBlock - v5;
  sub_10000A5D4(&qword_100942C70);
  v7 = sub_10076FCEC();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v9 = sub_1003767CC(Strong);

  sub_10076408C();
  (*(v1 + 16))(v3, v6, v0);
  v10 = (*(v1 + 88))(v3, v0);
  if (v10 == enum case for FamilyCircleAction.EventType.initiate(_:))
  {
    v11 = *(v1 + 8);
    v12 = FACircleEventTypeInitiate;
    v11(v6, v0);
  }

  else
  {
    v13 = *(v1 + 8);
    if (v10 == enum case for FamilyCircleAction.EventType.addFamilyMember(_:))
    {
      v12 = FACircleEventTypeAddFamilyMemberV3;
      v14 = v6;
    }

    else
    {
      v12 = FACircleEventTypeInitiate;
      v13(v6, v0);
      v14 = v3;
    }

    v13(v14, v0);
  }

  v15 = [objc_allocWithZone(FACircleContext) initWithEventType:v12];

  sub_10076405C();
  v16 = sub_10076FF6C();

  [v15 setClientName:v16];

  v17 = [objc_opt_self() mainBundle];
  v18 = [v17 bundleIdentifier];

  [v15 setClientBundleID:v18];
  if (sub_10076406C())
  {
    v19.super.isa = sub_10076FE3C().super.isa;
  }

  else
  {
    v19.super.isa = 0;
  }

  [v15 setAdditionalParameters:v19.super.isa];

  v20 = [objc_allocWithZone(FACircleStateController) initWithPresenter:v9];
  aBlock[4] = sub_1004D4060;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100177EA0;
  aBlock[3] = &unk_100897EF0;
  v21 = _Block_copy(aBlock);

  [v20 performWithContext:v15 completion:v21];
  _Block_release(v21);

  return v7;
}

uint64_t sub_1004D4068(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1004D4080()
{
  result = qword_10095A1D8;
  if (!qword_10095A1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095A1D8);
  }

  return result;
}

uint64_t sub_1004D40D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1004D4130(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

char *sub_1004D4190(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon1;
  sub_10075FD2C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v9] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v11 = OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon2;
  *&v4[v11] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v12 = OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon3;
  *&v4[v12] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon4;
  *&v4[v13] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_iconCount] = 0;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for CollectionLockupArtwork();
  v14 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon1]];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon2]];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon3]];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon4]];

  return v18;
}

uint64_t sub_1004D4530@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_iconCount);
  switch(v2)
  {
    case 3:

      return sub_1004D48EC(a1);
    case 2:

      return sub_1004D4658(a1);
    case 1:
      sub_10075FD2C();
      sub_10076D28C();
      sub_10000CF78(v4, v4[3]);
      sub_10076D2DC();
      return sub_10000CD74(v4);
    default:

      return sub_1004D4C30(a1);
  }
}

uint64_t sub_1004D4658@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_10076D58C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v12 - v8;
  sub_10076D55C();
  v12[0] = *(v1 + OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon1);
  sub_10075FD2C();
  sub_10076D28C();
  sub_10000CF78(v13, v14);
  sub_10076D2DC();
  sub_10076D57C();
  sub_10000CD74(v12);
  v10 = *(v4 + 8);
  v10(v6, v3);
  sub_10000CD74(v13);
  v12[0] = *(v1 + OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon2);
  sub_10076D28C();
  sub_10000CF78(v13, v14);
  sub_10076D2DC();
  a1[3] = v3;
  a1[4] = &protocol witness table for DisjointStack;
  sub_10000DB7C(a1);
  sub_10076D57C();
  sub_10000CD74(v12);
  v10(v9, v3);
  return sub_10000CD74(v13);
}

uint64_t sub_1004D48EC@<X0>(uint64_t *a1@<X8>)
{
  v16 = a1;
  v2 = sub_10076D58C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_10076D55C();
  v17[0] = *(v1 + OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon1);
  sub_10075FD2C();
  sub_10076D28C();
  sub_10000CF78(v18, v19);
  sub_10076D2DC();
  sub_10076D57C();
  sub_10000CD74(v17);
  v12 = *(v3 + 8);
  v12(v5, v2);
  sub_10000CD74(v18);
  v17[0] = *(v1 + OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon2);
  sub_10076D28C();
  sub_10000CF78(v18, v19);
  sub_10076D2DC();
  sub_10076D57C();
  sub_10000CD74(v17);
  v12(v8, v2);
  sub_10000CD74(v18);
  v17[0] = *(v1 + OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon3);
  sub_10076D28C();
  sub_10000CF78(v18, v19);
  sub_10076D2DC();
  v13 = v16;
  v16[3] = v2;
  v13[4] = &protocol witness table for DisjointStack;
  sub_10000DB7C(v13);
  sub_10076D57C();
  sub_10000CD74(v17);
  v12(v11, v2);
  return sub_10000CD74(v18);
}

uint64_t sub_1004D4C30@<X0>(uint64_t *a1@<X8>)
{
  v24 = a1;
  v2 = sub_10076D8DC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  v25 = sub_10076D65C();
  v27 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v26 = &v22 - v12;
  sub_10076D63C();
  sub_10076D8AC();
  v13 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon1);
  v22 = v1;
  v29[0] = v13;
  sub_10075FD2C();
  sub_10076D28C();
  sub_10000CF78(v32, v33);
  sub_10076D2DC();
  sub_10076D8BC();
  sub_10000CD74(v29);
  v14 = *(v3 + 8);
  v14(v5, v2);
  sub_10000CD74(v32);
  v32[0] = *(v1 + OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon2);
  sub_10076D28C();
  sub_10000CF78(v29, v30);
  sub_10076D2DC();
  v33 = v2;
  v34 = &protocol witness table for HorizontalStack;
  sub_10000DB7C(v32);
  sub_10076D8BC();
  sub_10000CD74(v28);
  v14(v8, v2);
  sub_10000CD74(v29);
  sub_10076D64C();
  v15 = *(v27 + 8);
  v27 += 8;
  v23 = v15;
  v15(v10, v25);
  sub_10000CD74(v32);
  sub_10076D8AC();
  v16 = v22;
  v29[0] = *(v22 + OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon3);
  sub_10076D28C();
  sub_10000CF78(v32, v33);
  sub_10076D2DC();
  sub_10076D8BC();
  sub_10000CD74(v29);
  v14(v5, v2);
  sub_10000CD74(v32);
  v29[0] = *(v16 + OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon4);
  sub_10076D28C();
  sub_10000CF78(v32, v33);
  sub_10076D2DC();
  v30 = v2;
  v31 = &protocol witness table for HorizontalStack;
  sub_10000DB7C(v29);
  sub_10076D8BC();
  sub_10000CD74(v28);
  v14(v8, v2);
  sub_10000CD74(v32);
  v17 = v25;
  v33 = v25;
  v34 = &protocol witness table for VerticalStack;
  sub_10000DB7C(v32);
  v18 = v26;
  sub_10076D64C();
  v23(v18, v17);
  sub_10000CD74(v29);
  sub_10076DF8C();
  v19 = sub_10076DFAC();
  v20 = v24;
  v24[3] = v19;
  v20[4] = &protocol witness table for Center;
  sub_10000DB7C(v20);
  return sub_10076DFBC();
}

id sub_1004D5164(unint64_t a1, char *a2)
{
  v27 = a2;
  v4 = sub_10076BF6C();
  __chkstk_darwin(v4 - 8);
  v26 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10076BEDC();
  v6 = *(v25 - 8);
  *&v7 = __chkstk_darwin(v25).n128_u64[0];
  v24 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v2 setNeedsLayout];
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
    do
    {
      v11 = 0;
      v20 = &v2[OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon4];
      v22 = &v2[OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon3];
      v19 = &v2[OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon2];
      v21 = &v2[OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon1];
      v28 = a1 & 0xFFFFFFFFFFFFFF8;
      v29 = a1 & 0xC000000000000001;
      v23 = (v6 + 8);
      while (v29)
      {
        sub_10077149C();
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_19;
        }

LABEL_9:
        if (v11 > 1)
        {
          v13 = v22;
          if (v11 == 2 || (v13 = v20, v11 == 3))
          {
LABEL_15:
            v14 = *v13;
            v15 = v24;
            sub_10076BEEC();
            v16 = sub_10076BE9C();
            (*v23)(v15, v25);
            sub_10076BFCC();
            sub_10076BF7C();
            sub_10075FCCC();
            v17 = v14;
            [v17 setContentMode:sub_10076BDBC()];
            sub_100764ADC();
            sub_10075FD0C();
            if (!sub_10076BE1C())
            {
              sub_1000325F0();
              sub_100770D5C();
            }

            sub_10075FB8C();
            [v17 setContentMode:v16];

            v6 = sub_10075FD2C();
            sub_10000D7F8();
            v2 = v27;
            sub_100760B8C();
          }
        }

        else
        {
          v13 = v21;
          if (!v11)
          {
            goto LABEL_15;
          }

          v13 = v19;
          if (v11 == 1)
          {
            goto LABEL_15;
          }
        }

        ++v11;
        if (v12 == v10)
        {
          return result;
        }
      }

      if (v11 >= *(v28 + 16))
      {
        goto LABEL_20;
      }

      v12 = v11 + 1;
      if (!__OFADD__(v11, 1))
      {
        goto LABEL_9;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      result = sub_10077158C();
      v10 = result;
    }

    while (result);
  }

  return result;
}

id sub_1004D54CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionLockupArtwork();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_1004D5590()
{
  sub_1004D4530(v3);
  sub_10000CF78(v3, v3[3]);
  sub_10076E0FC();
  v1 = v0;
  sub_10000CD74(v3);
  return v1;
}

uint64_t sub_1004D5680(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10076D54C();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  *v11 = a1;
  v12 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v13 = *(v8 + 104);
  (v13)(v11, enum case for DisjointStack.EdgePosition.anchored(_:), v7, v9);
  sub_10076D53C();
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  *v11 = a1;
  v13(v11, v12, v7);
  return sub_10076D50C();
}

void sub_1004D5840()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon1;
  sub_10075FD2C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v1) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v3 = OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon2;
  *(v0 + v3) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v4 = OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon3;
  *(v0 + v4) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v5 = OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon4;
  *(v0 + v5) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_iconCount) = 0;
  sub_10077156C();
  __break(1u);
}

char *sub_1004D5938(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_100763E9C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076D3DC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC20ProductPageExtension32TodayCardArcadeLockupOverlayView_arcadeLockupView;
  if (qword_100940A78 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v15, qword_1009A0D78);
  (*(v16 + 16))(v18, v20, v15);
  if (qword_1009406E8 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A61C(v11, qword_10095A230);
  (*(v12 + 16))(v14, v21, v11);
  v22 = objc_allocWithZone(type metadata accessor for ArcadeLockupView());
  *&v5[v19] = sub_1001AB12C(v18, v14, 0, 0.0, 0.0, 0.0, 0.0);
  v23 = OBJC_IVAR____TtC20ProductPageExtension32TodayCardArcadeLockupOverlayView_backgroundEffectView;
  if (qword_1009406F0 != -1)
  {
    swift_once();
  }

  *&v5[v23] = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_10095A248];
  swift_weakInit();
  v24 = &v5[OBJC_IVAR____TtC20ProductPageExtension32TodayCardArcadeLockupOverlayView_impressionsUpdateBlock];
  *v24 = 0;
  v24[1] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension32TodayCardArcadeLockupOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension32TodayCardArcadeLockupOverlayView_sizeCategory] = 7;
  v32.receiver = v5;
  v32.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v29 = v25;
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC20ProductPageExtension32TodayCardArcadeLockupOverlayView_backgroundEffectView]];
  v30 = OBJC_IVAR____TtC20ProductPageExtension32TodayCardArcadeLockupOverlayView_arcadeLockupView;
  [*&v29[OBJC_IVAR____TtC20ProductPageExtension32TodayCardArcadeLockupOverlayView_arcadeLockupView] setClipsToBounds:1];
  [v29 addSubview:*&v29[v30]];

  return v29;
}

uint64_t sub_1004D5D24()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100763E9C();
  sub_10000DB18(v4, qword_10095A230);
  v18 = sub_10000A61C(v4, qword_10095A230);
  v25[23] = &type metadata for Double;
  v25[24] = &protocol witness table for Double;
  v25[19] = &protocol witness table for Double;
  v25[20] = 0x4053800000000000;
  v25[18] = &type metadata for Double;
  v25[15] = 0x4024000000000000;
  v25[13] = &type metadata for Double;
  v25[14] = &protocol witness table for Double;
  v25[9] = &protocol witness table for Double;
  v25[10] = 0x4034000000000000;
  v25[8] = &type metadata for Double;
  v25[5] = 0x402C000000000000;
  if (qword_100940A78 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v16 = sub_10000A61C(v5, qword_1009A0D78);
  v6 = *(v5 - 8);
  v15 = *(v6 + 16);
  v17 = v6 + 16;
  v15(v3, v16, v5);
  v14 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3);
  v7 = sub_10076D9AC();
  v25[3] = v7;
  v25[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v25);
  v23 = v0;
  v24 = &protocol witness table for FontSource;
  v8 = sub_10000DB7C(v22);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_10076D9BC();
  v10 = v1[1];
  v10(v3, v0);
  v15(v3, v16, v5);
  (v13)(v3, v14, v0);
  v23 = v7;
  v24 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v22);
  v20 = v0;
  v21 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v19);
  v9(v11, v3, v0);
  sub_10076D9BC();
  v10(v3, v0);
  v21 = &protocol witness table for Double;
  v20 = &type metadata for Double;
  v19[0] = 0x4020000000000000;
  return sub_100763E7C();
}

id sub_1004D6088()
{
  result = [objc_opt_self() effectWithStyle:9];
  qword_10095A248 = result;
  return result;
}

uint64_t sub_1004D6200()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32TodayCardArcadeLockupOverlayView_backgroundEffectView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = [objc_opt_self() _effectWithBlurRadius:50.0 scale:0.125];
  [v1 _setEffect:v2];

  v3 = OBJC_IVAR____TtC20ProductPageExtension32TodayCardArcadeLockupOverlayView_arcadeLockupView;
  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32TodayCardArcadeLockupOverlayView_arcadeLockupView];
  sub_10076422C();
  [v4 sizeThatFits:{v5, v6}];
  v8 = v7;
  v10 = v9;

  v11 = *&v0[v3];
  sub_10076422C();
  MinX = CGRectGetMinX(v18);
  sub_10076422C();
  [v11 setFrame:{MinX, CGRectGetMidY(v19) + v10 * -0.5, v8, v10}];

  v13 = &v0[OBJC_IVAR____TtC20ProductPageExtension32TodayCardArcadeLockupOverlayView_impressionsUpdateBlock];
  result = swift_beginAccess();
  v15 = *v13;
  if (*v13)
  {

    v15(v16);
    return sub_1000167E0(v15);
  }

  return result;
}

void sub_1004D63F8()
{
  [v0 overrideUserInterfaceStyle];
  sub_10076FF9C();
  v1 = sub_10076FF6C();

  v2 = OBJC_IVAR____TtC20ProductPageExtension32TodayCardArcadeLockupOverlayView_arcadeLockupView;
  v3 = [*(*&v0[OBJC_IVAR____TtC20ProductPageExtension32TodayCardArcadeLockupOverlayView_arcadeLockupView] + OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_wordmarkView) layer];
  [v3 setCompositingFilter:v1];

  v4 = [*(*&v0[v2] + OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_subtitleLabel) layer];
  [v4 setCompositingFilter:v1];

  v5 = [*(*(*&v0[v2] + OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_offerButton) + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_subtitleLabel) layer];
  [v5 setCompositingFilter:v1];
}

void sub_1004D654C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-v5 - 8];
  v7 = sub_10076F7FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10000A570(a3, v24);
      sub_10000A5D4(&qword_1009575A0);
      sub_10076C84C();
      if ((swift_dynamicCast() & 1) != 0 && (v13 = sub_10076C83C(), , v13))
      {
        sub_1007696EC();
        if (swift_dynamicCastClass())
        {
          sub_1007696DC();
          sub_1007606FC();

          if ((*(v8 + 48))(v6, 1, v7) == 1)
          {

            sub_100269504(v6);
          }

          else
          {
            (*(v8 + 32))(v10, v6, v7);
            [*&v12[OBJC_IVAR____TtC20ProductPageExtension32TodayCardArcadeLockupOverlayView_arcadeLockupView] frame];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v22 = [v12 superview];
            [v12 convertRect:v22 toView:{v15, v17, v19, v21}];

            sub_1007660EC();

            (*(v8 + 8))(v10, v7);
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1004D69A0()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_1004D6A00(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC20ProductPageExtension32TodayCardArcadeLockupOverlayView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_10010D5A4;
}

uint64_t sub_1004D6A98()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension32TodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1);
  return v2;
}

uint64_t sub_1004D6AF4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension32TodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6);
}

void (*sub_1004D6BB4(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10000A570(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100012498(v6, v4 + 32);
  return sub_1004D7138;
}

void sub_1004D6CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v6 = v5;
  v10 = a5;
  v11 = sub_10076C7EC();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v5[OBJC_IVAR____TtC20ProductPageExtension32TodayCardArcadeLockupOverlayView_sizeCategory];
  v5[OBJC_IVAR____TtC20ProductPageExtension32TodayCardArcadeLockupOverlayView_sizeCategory] = a5;
  if (v10 == 7)
  {
    if (v16 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v5 setNeedsLayout];
    goto LABEL_6;
  }

  if (v16 == 7)
  {
    goto LABEL_5;
  }

  switch(v10)
  {
    case 6:
      if (v16 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5:
      if (v16 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4:
      if (v16 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if ((v16 - 7) > 0xFFFFFFFC || v16 != v10)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  v17 = [v5 traitCollection];
  if (v10 != 4)
  {
    sub_10076C31C();
    sub_10076C31C();
  }

  [v17 layoutDirection];
  sub_1007708DC();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [v5 setLayoutMargins:{v19, v21, v23, v25}];
  v26 = sub_100312114(a4);
  [v6 setBackgroundColor:v26];

  (*(v12 + 104))(v15, enum case for TodayCard.Style.white(_:), v11);
  sub_1004D7038(&qword_100944B98, &type metadata accessor for TodayCard.Style);
  sub_10077018C();
  sub_10077018C();
  if (v31[2] == v31[0] && v31[3] == v31[1])
  {
    v27 = 1;
  }

  else if (sub_10077167C())
  {
    v27 = 1;
  }

  else
  {
    v27 = 2;
  }

  (*(v12 + 8))(v15, v11);

  [v6 setOverrideUserInterfaceStyle:v27];
  v28 = *&v6[OBJC_IVAR____TtC20ProductPageExtension32TodayCardArcadeLockupOverlayView_arcadeLockupView];
  v29 = sub_1007696DC();
  sub_10068A7F8(v29, a2);

  sub_1004D63F8();
}

uint64_t sub_1004D7038(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004D7080()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004D70B8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004D70F0()
{

  sub_10000CD74(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

void sub_1004D7144()
{
  v1 = v0;
  v2 = sub_100763E9C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076D3DC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC20ProductPageExtension32TodayCardArcadeLockupOverlayView_arcadeLockupView;
  if (qword_100940A78 != -1)
  {
    swift_once();
  }

  v11 = sub_10000A61C(v6, qword_1009A0D78);
  (*(v7 + 16))(v9, v11, v6);
  if (qword_1009406E8 != -1)
  {
    swift_once();
  }

  v12 = sub_10000A61C(v2, qword_10095A230);
  (*(v3 + 16))(v5, v12, v2);
  v13 = objc_allocWithZone(type metadata accessor for ArcadeLockupView());
  *(v1 + v10) = sub_1001AB12C(v9, v5, 0, 0.0, 0.0, 0.0, 0.0);
  v14 = OBJC_IVAR____TtC20ProductPageExtension32TodayCardArcadeLockupOverlayView_backgroundEffectView;
  if (qword_1009406F0 != -1)
  {
    swift_once();
  }

  *(v1 + v14) = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_10095A248];
  swift_weakInit();
  v15 = (v1 + OBJC_IVAR____TtC20ProductPageExtension32TodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  *v15 = 0;
  v15[1] = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension32TodayCardArcadeLockupOverlayView_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension32TodayCardArcadeLockupOverlayView_sizeCategory) = 7;
  sub_10077156C();
  __break(1u);
}

id sub_1004D7434(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC20ProductPageExtension45PersonalizationTransparencyPageViewController_overlayViewController] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension45PersonalizationTransparencyPageViewController_presenter] = a1;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension45PersonalizationTransparencyPageViewController_objectGraph] = a2;
  v11.receiver = v3;
  v11.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", 0, 0);
  sub_1004D8074(&qword_10095A3A0, v8, type metadata accessor for PersonalizationTransparencyPageViewController);
  v9 = v7;
  sub_10076AD0C();

  return v9;
}

void sub_1004D7604()
{
  v1 = sub_1004D7914();
  v2 = [v0 childViewControllers];
  sub_10003F040();
  v3 = sub_1007701BC();

  if (v3 >> 62)
  {
    if (sub_10077158C())
    {
      goto LABEL_3;
    }

LABEL_11:

    v7 = 0;
    goto LABEL_12;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = sub_10077149C();
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_24;
    }

    v4 = *(v3 + 32);
  }

  v5 = v4;

  type metadata accessor for GenericAccountPageViewController();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    [v6 willMoveToParentViewController:0];
    v8 = [v7 view];
    if (!v8)
    {
LABEL_28:
      __break(1u);
      return;
    }

    v9 = v8;
    [v8 removeFromSuperview];

    [v7 removeFromParentViewController];
  }

  else
  {
  }

LABEL_12:
  v10 = v1;
  [v0 addChildViewController:v10];
  v11 = [v10 view];
  if (!v11)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v12 = v11;
  v13 = [v0 view];
  if (!v13)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v13;
  [v13 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [v12 setFrame:{v16, v18, v20, v22}];
  v23 = [v0 view];
  if (!v23)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v23;
  v25 = [v10 view];

  if (!v25)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v24 addSubview:v25];

  [v10 didMoveToParentViewController:v0];
  v26 = [v0 navigationItem];
  sub_10076411C();
  if (v27)
  {
    v28 = sub_10076FF6C();
  }

  else
  {
    v28 = 0;
  }

  [v26 setTitle:v28];
}

id sub_1004D7914()
{
  v1 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension45PersonalizationTransparencyPageViewController_objectGraph);
  v5 = sub_10075DB7C();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_100768EEC();
  swift_allocObject();

  v6 = sub_100768E4C();
  v7 = sub_1004D8074(&qword_100958D48, 255, &type metadata accessor for GenericAccountPagePresenter);

  v8 = sub_1006C7080(v4, v6, v7, _swiftEmptyArrayStorage, 0xD000000000000012, 0x80000001007E92A0);

  v9 = type metadata accessor for GenericAccountPageViewController();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC20ProductPageExtension32GenericAccountPageViewController_overlayViewController] = 0;
  *&v10[OBJC_IVAR____TtC20ProductPageExtension32GenericAccountPageViewController_presenter] = v6;
  *&v10[OBJC_IVAR____TtC20ProductPageExtension32GenericAccountPageViewController_objectGraph] = v8;
  v12.receiver = v10;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, "initWithStyle:", 2);
}

void sub_1004D7AE8()
{
  v1 = v0;
  v2 = sub_10076DE4C();
  v3 = [v0 childViewControllers];
  sub_10003F040();
  sub_1007701BC();

  LOBYTE(v3) = sub_1007701EC();

  if (v3)
  {
    v4 = OBJC_IVAR____TtC20ProductPageExtension45PersonalizationTransparencyPageViewController_overlayViewController;
    v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension45PersonalizationTransparencyPageViewController_overlayViewController];
    sub_10076857C();

    v6 = *&v0[v4];
    *&v0[v4] = 0;

    v7 = [v0 view];
    if (v7)
    {
      v8 = v7;
      [v7 bounds];

      sub_10076856C();
      return;
    }

    __break(1u);
  }

  else
  {
    sub_10076DE3C();
    v9 = objc_allocWithZone(sub_10076DE6C());
    v10 = sub_10076DE5C();
    v11 = OBJC_IVAR____TtC20ProductPageExtension45PersonalizationTransparencyPageViewController_overlayViewController;
    v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension45PersonalizationTransparencyPageViewController_overlayViewController];
    sub_10076857C();

    v13 = *&v1[v11];
    *&v1[v11] = v10;
    v14 = v10;

    v15 = [v1 view];
    if (v15)
    {
      v16 = v15;
      [v15 bounds];

      sub_10076856C();
      return;
    }
  }

  __break(1u);
}

id sub_1004D7D28()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension45PersonalizationTransparencyPageViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension45PersonalizationTransparencyPageViewController_overlayViewController];
  sub_10076857C();

  v3 = *&v0[v1];
  *&v0[v1] = 0;

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result bounds];

    return sub_10076856C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1004D7DF0()
{
  v1 = v0;
  sub_10076DF3C();
  sub_1004D8074(&qword_10095A3A8, 255, &type metadata accessor for PersonalizationTransparencyPagePresenter);
  swift_errorRetain();

  v2 = sub_10076DEFC();
  v3 = OBJC_IVAR____TtC20ProductPageExtension45PersonalizationTransparencyPageViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension45PersonalizationTransparencyPageViewController_overlayViewController];
  sub_10076857C();

  v5 = *&v1[v3];
  *&v1[v3] = v2;
  v8 = v2;

  v6 = [v1 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];

    sub_10076856C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1004D8074(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1004D80BC(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000A5D4(&unk_1009428D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v178 - v9;
  v11 = sub_100766C7C();
  if (v11)
  {
    v12 = v11;
    v13 = [a1 traitCollection];
    v14 = sub_100766C6C();

    *&v187 = v12;
    sub_100760A8C();
    if ((sub_10076969C() & 1) != 0 && *(v3 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_advertRotationController))
    {

      sub_10076764C();
    }

    sub_10075ECBC();
    if (swift_dynamicCastClass())
    {
      type metadata accessor for ContentSearchResultCollectionViewCell();
      v15 = swift_dynamicCastClass();
      if (!v15)
      {
LABEL_10:

        return;
      }

      v16 = v15;
      v17 = a2;
      sub_10075ECAC();
      goto LABEL_8;
    }

    sub_100763F3C();
    if (swift_dynamicCastClass())
    {
      type metadata accessor for BundleSearchResultCollectionViewCell();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
        goto LABEL_10;
      }

      v20 = v19;
      v21 = a2;
      v22 = sub_100763F2C();
      v23 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits;
      v24 = [*(v3 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits) traitCollection];
      v25 = [v24 horizontalSizeClass];

      if (v25 == 1)
      {
        [*(v4 + v23) pageMarginInsets];
        top = v26;
        left = v28;
        bottom = v30;
        right = v32;
      }

      else
      {
        top = UIEdgeInsetsZero.top;
        left = UIEdgeInsetsZero.left;
        bottom = UIEdgeInsetsZero.bottom;
        right = UIEdgeInsetsZero.right;
      }

      v50 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_objectGraph);
      v51 = [v20 contentView];
      [v51 setLayoutMargins:{top, left, bottom, right}];

      v52 = sub_10076341C();
      (*(*(v52 - 8) + 56))(v10, 1, 1, v52);
      sub_100386168(v22, v10, v50);
      sub_10000CFBC(v10, &unk_1009428D0);
      v53 = sub_10076BBDC();
      if (v53)
      {
        v54 = v53;
      }

      else
      {
        v54 = _swiftEmptyArrayStorage;
      }

      sub_10053FB7C(v54);

      [v20 setNeedsLayout];

      v55 = sub_100763F2C();
      sub_10014D68C(v55, *(v4 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_artworkLoader));

      v56 = sub_100763F2C();
      sub_1004DB428(v56, v21, v4);

LABEL_27:

      return;
    }

    sub_10076499C();
    if (!swift_dynamicCastClass())
    {
      sub_100765F5C();
      v57 = swift_dynamicCastClass();
      if (v57)
      {
        v58 = v57;
        type metadata accessor for EditorialSearchResultCollectionViewCell();
        v59 = swift_dynamicCastClass();
        if (v59)
        {
          v60 = v59;
          v61 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits;
          v62 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits);
          ObjectType = swift_getObjectType();
          v186 = a2;
          v63 = [swift_unknownObjectRetain() traitCollection];
          v64 = [v63 horizontalSizeClass];

          if (v64 == 1)
          {
            [*(v4 + v61) pageMarginInsets];
            v66 = v65;
            v68 = v67;
            v70 = v69;
            v72 = v71;
          }

          else
          {
            v66 = UIEdgeInsetsZero.top;
            v68 = UIEdgeInsetsZero.left;
            v70 = UIEdgeInsetsZero.bottom;
            v72 = UIEdgeInsetsZero.right;
          }

          v81 = ASKDeviceTypeGetCurrent();
          v82 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_objectGraph);
          v83 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_artworkIconFetcher);
          v84 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_artworkLoader);
          swift_unknownObjectRetain();
          sub_100144E84(v58, v62, v82, v83, v84, v60, v66, v68, v70, v72);

          swift_unknownObjectRelease_n();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {

            sub_100767D5C();
            sub_10076F64C();
            sub_10076FC1C();
            ObjectType = v187;
            v86 = swift_unknownObjectWeakLoadStrong();
            if (v86)
            {
              sub_1004E2AD0(&qword_100942810, type metadata accessor for VideoView);
            }

            sub_1004E2AD0(&qword_1009481F8, type metadata accessor for EditorialSearchResultCollectionViewCell);
            v130 = v186;
            v131 = ObjectType;
            sub_100767D3C();
          }
        }

        sub_1004DB908(v58, a2, v4);
      }

      else
      {
        sub_10075E7FC();
        if (swift_dynamicCastClass())
        {
          type metadata accessor for InAppPurchaseSearchResultCollectionViewCell();
          if (swift_dynamicCastClass())
          {
            v186 = a2;
            v73 = sub_10075E7EC();
            v74 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits;
            ObjectType = [*(v3 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits) traitCollection];
            v75 = [*(v3 + v74) traitCollection];
            v76 = [v75 horizontalSizeClass];

            if (v76 == 1)
            {
              [*(v4 + v74) pageMarginInsets];
            }

            else
            {
              v77 = UIEdgeInsetsZero.top;
              v78 = UIEdgeInsetsZero.left;
              v79 = UIEdgeInsetsZero.bottom;
              v80 = UIEdgeInsetsZero.right;
            }

            sub_10041EEE8(v73, *(v4 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_objectGraph), *(v4 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_artworkLoader), v77, v78, v79, v80);
          }

          v132 = sub_10075E7EC();
          sub_1004DBDE8(v132, a2, v4);
          goto LABEL_9;
        }

        sub_10076947C();
        v99 = swift_dynamicCastClass();
        if (v99)
        {
          v100 = v99;
          type metadata accessor for SearchLockupListCollectionViewCell();
          if (swift_dynamicCastClass())
          {
            v186 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_artworkLoader);
            *&v184 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_objectGraph);
            v101 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits;
            v102 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits);
            ObjectType = a2;
            v103 = [swift_unknownObjectRetain() traitCollection];
            v104 = [v103 horizontalSizeClass];

            if (v104 == 1)
            {
              [*(v3 + v101) pageMarginInsets];
            }

            else
            {
              v105 = UIEdgeInsetsZero.top;
              v106 = UIEdgeInsetsZero.left;
              v107 = UIEdgeInsetsZero.bottom;
              v108 = UIEdgeInsetsZero.right;
            }

            sub_10038B3BC(v100, v186, v184, v102, v105, v106, v107, v108);

            swift_unknownObjectRelease();
          }

          sub_1004DC2C8(v100, a2, v3);
        }

        else
        {
          sub_10075EEBC();
          v186 = swift_dynamicCastClass();
          if (!v186)
          {
            goto LABEL_10;
          }

          type metadata accessor for AppEventSearchResultCollectionViewCell();
          v133 = swift_dynamicCastClass();
          if (!v133)
          {
            type metadata accessor for ContentSearchResultCollectionViewCell();
            v150 = swift_dynamicCastClass();
            if (!v150)
            {
              goto LABEL_10;
            }

            v16 = v150;
            v17 = a2;
            sub_10075EEAC();
LABEL_8:
            v18 = sub_10067B958(v14 & 1);

            sub_1004D9468(v18, v16, a3, a1);

LABEL_9:

            goto LABEL_10;
          }

          v134 = v133;
          v135 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits;
          v136 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits);
          ObjectType = a2;
          [v136 pageMarginInsets];
          v138 = v137;
          v139 = [*(v4 + v135) traitCollection];
          v140 = [v139 horizontalSizeClass];

          v141 = v134;
          if (v140 == 1)
          {
            [*(v4 + v135) pageMarginInsets];
            v143 = v142;
            v145 = v144;
            v147 = v146;
            v149 = v148;
          }

          else
          {
            v143 = UIEdgeInsetsZero.top;
            v145 = UIEdgeInsetsZero.left;
            v147 = UIEdgeInsetsZero.bottom;
            v149 = UIEdgeInsetsZero.right;
          }

          v151 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_objectGraph);
          *&v184 = *(v4 + v135);
          swift_unknownObjectRetain();
          v152 = [v141 contentView];
          [v152 setLayoutMargins:{v143, v145, v147, v149}];

          v153 = *&v141[OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_lockupView];
          *&v153[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_regularWidthColumnSpacing] = v138;
          [v153 setNeedsLayout];
          sub_100016F40(0, &qword_100942F10);
          v154 = sub_100770D2C();
          [v141 setBackgroundColor:v154];

          v155 = sub_10075EEAC();
          v156 = sub_10076341C();
          (*(*(v156 - 8) + 56))(v10, 1, 1, v156);
          sub_100386168(v155, v10, v151);

          sub_10000CFBC(v10, &unk_1009428D0);
          v183 = OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_appEventView;
          v157 = sub_10075EE9C();
          v158 = v151;
          v159 = v141;
          sub_10069D2F0(v157, v158);

          v160 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v161 = swift_allocObject();
          v162 = v186;
          *(v161 + 2) = v160;
          *(v161 + 3) = v162;
          *(v161 + 4) = v158;
          v163 = &v141[OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_appEventViewTappedAction];
          v164 = *&v141[OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_appEventViewTappedAction];
          *v163 = sub_1004E2ABC;
          v163[1] = v161;

          v182 = v158;

          sub_1000167E0(v164);

          [v141 setNeedsLayout];
          swift_unknownObjectRelease();
          isa = sub_10075E02C().super.isa;
          v166 = [a1 layoutAttributesForItemAtIndexPath:isa];

          if (v166)
          {
            [v166 frame];
            v180 = v167;
            v181 = v168;
            v179 = v169;
            v184 = v170;

            *&v172 = v179;
            *&v171 = v180;
            *(&v171 + 1) = v181;
            *(&v172 + 1) = v184;
          }

          else
          {
            v171 = 0uLL;
            v172 = 0uLL;
          }

          v173 = ObjectType;
          v187 = v171;
          v188 = v172;
          v189 = v166 == 0;
          sub_1004DA550(v186, v159, &v187);
          v174 = swift_unknownObjectWeakLoadStrong();
          if (v174)
          {

            sub_100767D5C();
            sub_10076F64C();
            sub_10076FC1C();
            v175 = v190;
            v176 = swift_unknownObjectWeakLoadStrong();
            if (v176)
            {
              sub_1004E2AD0(&qword_100942810, type metadata accessor for VideoView);
            }

            sub_1004E2AD0(&qword_10094E308, type metadata accessor for AppEventSearchResultCollectionViewCell);
            v177 = v173;
            sub_100767D3C();
          }

          sub_1004DC7A8(v186, v159, v4);
        }
      }

LABEL_59:

      return;
    }

    type metadata accessor for AdvertSearchResultCollectionViewCell();
    v34 = swift_dynamicCastClass();
    if (!v34 || !*(v3 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_advertRotationController))
    {
      goto LABEL_10;
    }

    v35 = v34;
    v21 = a2;

    sub_10076763C();

    sub_10000A5D4(&unk_10095CDA0);
    sub_10076289C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_27;
    }

    v183 = v21;
    v186 = v190;
    v36 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits;
    [*(v3 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits) pageMarginInsets];
    v38 = v37;
    v39 = swift_unknownObjectRetain();
    v40 = [v39 traitCollection];
    v41 = [v40 horizontalSizeClass];

    v182 = v36;
    if (v41 == 1)
    {
      [*(v4 + v36) pageMarginInsets];
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v49 = v48;
    }

    else
    {
      v43 = UIEdgeInsetsZero.top;
      v45 = UIEdgeInsetsZero.left;
      v47 = UIEdgeInsetsZero.bottom;
      v49 = UIEdgeInsetsZero.right;
    }

    v87 = ASKDeviceTypeGetCurrent();
    v88 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_objectGraph);
    ObjectType = OBJC_IVAR____TtC20ProductPageExtension36AdvertSearchResultCollectionViewCell_advertsContentView;
    v89 = *(v35 + OBJC_IVAR____TtC20ProductPageExtension36AdvertSearchResultCollectionViewCell_advertsContentView);
    *&v181 = v39;
    v90 = [v39 traitCollection];
    *&v184 = v88;
    sub_10045D1F0(v186, v90, v87, v88, v38, v43, v45, v47, v49);

    [v35 setNeedsLayout];
    swift_unknownObjectRelease();

    v91 = sub_10075E02C().super.isa;
    v92 = [a1 layoutAttributesForItemAtIndexPath:v91];

    if (v92)
    {
      [v92 frame];
      v179 = v93;
      v180 = v94;
      v178 = v95;
      v181 = v96;

      *&v98 = v178;
      *&v97 = v179;
      *(&v97 + 1) = v180;
      *(&v98 + 1) = v181;
    }

    else
    {
      v97 = 0uLL;
      v98 = 0uLL;
    }

    v187 = v97;
    v188 = v98;
    v189 = v92 == 0;
    v109 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_artworkLoader);
    v110 = *(v4 + v182);
    v111 = ObjectType;
    v112 = *&ObjectType[v35];
    swift_unknownObjectRetain();
    v113 = v112;
    v114 = [v110 traitCollection];
    sub_10045F5E0(v186, &v187, v109, v114);
    swift_unknownObjectRelease();

    sub_100767D5C();
    sub_10076F64C();
    sub_10076FC1C();
    v115 = v190;
    v116 = *&v111[v35];
    v117 = swift_unknownObjectWeakLoadStrong();
    if (v117)
    {
      sub_1004E2AD0(&qword_100942810, type metadata accessor for VideoView);
    }

    sub_1004E2AD0(&unk_10095A480, type metadata accessor for AdvertsSearchResultContentView);
    v118 = v116;
    sub_100767D3C();

    v120 = v183;
    sub_1004DB428(v119, v183, v4);
    v121 = sub_10076BB0C();

    if (v121)
    {
      v122 = sub_10076518C();

      v123 = *&ObjectType[v35];
      if (v122)
      {
        v124 = objc_opt_self();
        v125 = v123;
        v126 = [v124 clearColor];
        [v125 setBackgroundColor:v126];

LABEL_55:
        sub_100387B00(v122, v184);
        [v125 setNeedsLayout];

        [v35 setNeedsLayout];

        v127 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v128 = *&ObjectType[v35];

        v129 = v128;
        sub_10053D600(sub_1004E2AC8, v127);

        goto LABEL_59;
      }
    }

    else
    {
      v123 = *&ObjectType[v35];
    }

    v125 = v123;
    v122 = 0;
    goto LABEL_55;
  }
}

void sub_1004D93DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_advertRotationController);
    v2 = Strong;

    if (v1)
    {
      sub_10076762C();
    }
  }
}

void sub_1004D9468(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v9 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits;
  [*(v4 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits) pageMarginInsets];
  v11 = v10;
  v12 = *(v4 + v9);
  v13 = [swift_unknownObjectRetain() traitCollection];
  v14 = [v13 horizontalSizeClass];

  if (v14 == 1)
  {
    [*(v5 + v9) pageMarginInsets];
    top = v15;
    left = v17;
    bottom = v19;
    right = v21;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v23 = ASKDeviceTypeGetCurrent();
  sub_100297804(a1, v12, v23, *(v5 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_objectGraph), v11, top, left, bottom, right);
  swift_unknownObjectRelease();

  isa = sub_10075E02C().super.isa;
  v25 = [a4 layoutAttributesForItemAtIndexPath:isa];

  if (v25)
  {
    [v25 frame];
    v36 = v26;
    v37 = v27;
    v35 = v28;
    v38 = v29;

    *&v31 = v35;
    *&v30 = v36;
    *(&v30 + 1) = v37;
    *(&v31 + 1) = v38;
  }

  else
  {
    v30 = 0uLL;
    v31 = 0uLL;
  }

  v40[0] = v30;
  v40[1] = v31;
  v41 = v25 == 0;
  v32 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_artworkLoader);
  v33 = *(v5 + v9);
  swift_unknownObjectRetain();
  sub_100299DC0(a1, v40, v32, v33);
  swift_unknownObjectRelease();
  sub_100767D5C();
  sub_10076F64C();
  sub_10076FC1C();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1004E2AD0(&qword_100942810, type metadata accessor for VideoView);
  }

  sub_1004E2AD0(&unk_10095A430, type metadata accessor for ContentSearchResultCollectionViewCell);
  sub_100767D3C();

  sub_1004DB428(a1, a2, v5);
}

uint64_t sub_1004D9774(uint64_t a1, void *a2)
{
  v3 = v2;
  type metadata accessor for ContentSearchResultCollectionViewCell();
  v5 = swift_dynamicCastClass();
  v55 = a2;
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = v5;
  v7 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension37ContentSearchResultCollectionViewCell_screenshots);
  v8 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_imageViews;
  result = swift_beginAccess();
  v10 = *(v7 + v8);
  if (v10 >> 62)
  {
    result = sub_10077158C();
    v11 = result;
    if (result)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_4:
      if (v11 < 1)
      {
        __break(1u);
        return result;
      }

      v53 = v2;
      v12 = v55;

      v13 = 0;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v14 = sub_10077149C();
        }

        else
        {
          v14 = *(v10 + 8 * v13 + 32);
        }

        v15 = v14;
        ++v13;
        v56 = v14;
        type metadata accessor for BorderedScreenshotView();
        sub_1004E2AD0(&qword_10094A410, type metadata accessor for BorderedScreenshotView);
        v16 = v15;
        sub_10077140C();
        sub_100760BEC();
        sub_100016C74(v57);
        v17 = *&v16[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView];
        v58.value.super.isa = 0;
        v58.is_nil = 0;
        sub_10075FCEC(v58, v18);
      }

      while (v11 != v13);

      v3 = v53;
      a2 = v55;
      goto LABEL_13;
    }
  }

  a2 = v55;
  v19 = v55;
LABEL_13:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    [*(Strong + qword_1009602D0) setImage:0];
    v56 = v21;
    type metadata accessor for VideoView();
    sub_1004E2AD0(&qword_100957FA0, type metadata accessor for VideoView);
    v22 = v21;
    sub_10077140C();
    sub_100760BEC();

    sub_100016C74(v57);
  }

  v23 = OBJC_IVAR____TtC20ProductPageExtension37ContentSearchResultCollectionViewCell_lockupView;
  v24 = *(*(v6 + OBJC_IVAR____TtC20ProductPageExtension37ContentSearchResultCollectionViewCell_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  v59.value.super.isa = 0;
  v59.is_nil = 0;
  sub_10075FCEC(v59, v25);

  v26 = *(*(v6 + v23) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_10075FD2C();
  sub_1004E2AD0(&qword_100941820, &type metadata accessor for ArtworkView);
  v27 = v26;
  sub_100760BFC();

  sub_100767D5C();
  sub_10076F64C();
  sub_10076FC1C();
  v28 = v57[0];
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    sub_1004E2AD0(&qword_100942810, type metadata accessor for VideoView);
  }

  sub_1004E2AD0(&unk_10095A430, type metadata accessor for ContentSearchResultCollectionViewCell);
  v30 = a2;
  sub_100767CFC();

LABEL_18:
  result = sub_100766C7C();
  if (!result)
  {
    return result;
  }

  type metadata accessor for AppEventSearchResultCollectionViewCell();
  v31 = swift_dynamicCastClass();
  if (v31)
  {
    v32 = v31;
    v33 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_artworkLoader);
    v34 = OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_lockupView;
    v35 = *(*(v31 + OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    v54 = a2;
    v36 = v35;
    v60.value.super.isa = 0;
    v60.is_nil = 0;
    sub_10075FCEC(v60, v37);

    v38 = *(*(v32 + v34) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    sub_10075FD2C();
    sub_1004E2AD0(&qword_100941820, &type metadata accessor for ArtworkView);
    v39 = v38;
    sub_100760BFC();

    sub_10052FC50(v33, 1, v40);
    sub_100767D5C();
    sub_10076F64C();
    sub_10076FC1C();
    v41 = v57[0];
    v42 = swift_unknownObjectWeakLoadStrong();
    if (v42)
    {
      sub_1004E2AD0(&qword_100942810, type metadata accessor for VideoView);
    }

    sub_1004E2AD0(&qword_10094E308, type metadata accessor for AppEventSearchResultCollectionViewCell);
    v43 = v54;
    sub_100767CFC();

    a2 = v55;
  }

  type metadata accessor for AdvertSearchResultCollectionViewCell();
  if (swift_dynamicCastClass() && *(v3 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_advertRotationController))
  {
    v44 = a2;

    sub_10076765C();
  }

  sub_10075ECBC();
  if (!swift_dynamicCastClass())
  {
    sub_10076499C();
    if (swift_dynamicCastClass())
    {
      if (!*(v3 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_advertRotationController))
      {
      }

      sub_10076763C();

      sub_10000A5D4(&unk_10095CDA0);
      sub_10076289C();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }

      v45 = v56;
      goto LABEL_28;
    }

    sub_100765F5C();
    v46 = swift_dynamicCastClass();
    if (v46)
    {
      v47 = v46;

      sub_1004DD6BC(v47, v3);
    }

    else
    {
      sub_10075E7FC();
      if (swift_dynamicCastClass())
      {
        v48 = sub_10075E7EC();
        sub_1004DD920(v48, v3);
        goto LABEL_29;
      }

      sub_100763F3C();
      if (swift_dynamicCastClass())
      {
        v45 = sub_100763F2C();
        goto LABEL_28;
      }

      sub_10076947C();
      v49 = swift_dynamicCastClass();
      if (v49)
      {
        v50 = v49;

        sub_1004DDB84(v50, v3);
      }

      else
      {
        sub_10075EEBC();
        v51 = swift_dynamicCastClass();
        if (!v51)
        {
        }

        v52 = v51;
        if ((sub_100766C2C() & 1) == 0)
        {
          v45 = sub_10075EEAC();
          goto LABEL_28;
        }

        sub_1004DDDE8(v52, v3);
      }
    }
  }

  v45 = sub_10075ECAC();
LABEL_28:
  sub_1004DD458(v45, v3);
LABEL_29:
}

uint64_t sub_1004DA068(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, id, char *))
{
  v10 = sub_10075E11C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  a6(v14, v15, v13);

  return (*(v11 + 8))(v13, v10);
}

void sub_1004DA550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10076BF6C();
  __chkstk_darwin(v6 - 8);
  if ((*(a3 + 32) & 1) == 0)
  {
    v7 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_artworkLoader);
    v8 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_lockupView);
    v9 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
    v10 = *(v8 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    v24.value.super.isa = 0;
    v24.is_nil = 0;
    sub_10075FCEC(v24, v11);

    v12 = *(v8 + v9);
    sub_10075FD2C();
    sub_1004E2AD0(&qword_100941820, &type metadata accessor for ArtworkView);
    v13 = v12;
    sub_100760BFC();

    v14 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_appEventView);
    v15 = OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView;
    sub_10052FC50(v7, 1, v16);
    sub_10075EEAC();
    v17 = sub_10076BB5C();

    if (v17)
    {
      v23 = v14;
      v18 = qword_10093FBE0;
      v19 = *(v8 + v9);
      if (v18 != -1)
      {
        swift_once();
      }

      v20 = sub_100763ADC();
      sub_10000A61C(v20, qword_10099DDA0);
      sub_1007639AC();
      [v19 contentMode];
      sub_10076BFCC();
      sub_10076BF7C();
      sub_10075FCCC();
      [v19 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10);
        sub_100770D5C();
      }

      sub_10075FB8C();
      v21 = *(v8 + v9);
      sub_100760B8C();

      v14 = v23;
    }

    v22 = sub_10075EE9C();
    sub_10001C418(v22, v7, *(v14 + v15));
  }
}

void sub_1004DA8A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char *a6)
{
  v81 = a6;
  v80 = a5;
  v88 = sub_10076F08C();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_10076F0CC();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076F07C();
  v79 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = (&v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = sub_10076F0EC();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v70 - v19;
  type metadata accessor for AdvertSearchResultCollectionViewCell();
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = v21;
    v77 = v12;
    sub_10016C4BC(a2, aBlock);
    v23 = a1;
    sub_10000A5D4(&unk_10095CDA0);
    sub_10076289C();
    if (swift_dynamicCast())
    {
      v78 = v23;
      v24 = v90[0];
      sub_10016C4BC(a3, aBlock);
      if (swift_dynamicCast())
      {
        v25 = v90[0];

        sub_1004DD458(v26, v6);
        v74 = v24;

        sub_1004DB428(v27, v78, v6);
        v75 = v25;

        v28 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits;
        [*(v6 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_pageTraits) pageMarginInsets];
        v71 = v29;
        v76 = [*(v6 + v28) traitCollection];
        v30 = [*(v6 + v28) traitCollection];
        v31 = [v30 horizontalSizeClass];

        v72 = v20;
        if (v31 == 1)
        {
          [*(v6 + v28) pageMarginInsets];
          top = v32;
          left = v34;
          bottom = v36;
          right = v38;
        }

        else
        {
          top = UIEdgeInsetsZero.top;
          left = UIEdgeInsetsZero.left;
          bottom = UIEdgeInsetsZero.bottom;
          right = UIEdgeInsetsZero.right;
        }

        v40 = ASKDeviceTypeGetCurrent();
        v73 = v40;
        v70 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_artworkLoader);
        [v22 setUserInteractionEnabled:0];
        v41 = OBJC_IVAR____TtC20ProductPageExtension36AdvertSearchResultCollectionViewCell_advertsContentView;
        [*&v22[OBJC_IVAR____TtC20ProductPageExtension36AdvertSearchResultCollectionViewCell_advertsContentView] frame];
        v46 = [objc_allocWithZone(type metadata accessor for AdvertsSearchResultContentView()) initWithFrame:{v42, v43, v44, v45}];
        v47 = v75;
        v48 = v76;
        v49 = v40;
        v50 = v81;
        sub_10045D1F0(v75, v76, v49, v81, *&v71, top, left, bottom, right);
        [v46 layoutIfNeeded];
        [*&v22[v41] frame];
        v90[0] = v51;
        v90[1] = v52;
        v90[2] = v53;
        v90[3] = v54;
        v91 = 0;
        sub_10045F5E0(v47, v90, v70, v48);
        v55 = (*&v22[v41] + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_disableAdvertRotation);
        swift_beginAccess();
        v56 = *v55;
        v57 = v55[1];
        sub_10001CE50(*v55);
        sub_10053D600(v56, v57);
        sub_1000167E0(v56);
        sub_100016F40(0, &qword_1009471F0);
        v71 = sub_10077068C();
        sub_10076F0DC();
        v58 = 333;
        if ((v80 & 1) == 0)
        {
          v58 = 0;
        }

        *v15 = v58;
        v59 = v79;
        (*(v79 + 104))(v15, enum case for DispatchTimeInterval.milliseconds(_:), v13);
        v60 = v72;
        sub_10076F14C();
        (*(v59 + 8))(v15, v13);
        v82 = *(v82 + 8);
        v61 = v83;
        (v82)(v17, v83);
        v62 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v63 = swift_allocObject();
        v63[2] = v62;
        v63[3] = v46;
        v63[4] = v50;
        aBlock[4] = sub_100463338;
        aBlock[5] = v63;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10009AEDC;
        aBlock[3] = &unk_100898108;
        v64 = _Block_copy(aBlock);
        v65 = v46;

        v66 = v77;
        sub_10076F0AC();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_1004E2AD0(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
        sub_10000A5D4(&unk_10094E1C0);
        sub_1000852B8();
        v67 = v85;
        v68 = v88;
        sub_1007712CC();
        v69 = v71;
        sub_10077064C();
        _Block_release(v64);

        (*(v87 + 8))(v67, v68);
        (*(v84 + 8))(v66, v86);
        (v82)(v60, v61);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

id sub_1004DB1B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultsCollectionViewDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SearchResultsCollectionViewDelegate()
{
  result = qword_10095A410;
  if (!qword_10095A410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004DB33C()
{
  sub_10024FD5C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1004DB428(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a2;
  v5 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_10076F7FC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v32 = sub_10076289C();
  v36[3] = v32;
  v36[4] = sub_1004E2AD0(&qword_100952130, &type metadata accessor for MixedMediaLockup);
  v36[0] = a1;
  sub_100016E2C(a3 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_containerImpressionMetrics, v10, &qword_1009492E0);
  v17 = *(v12 + 48);
  v18 = v17(v10, 1, v11);
  v34 = a3;
  if (v18 == 1)
  {

    sub_10000CFBC(v10, &qword_1009492E0);
    v19 = a1;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    if (*(a3 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      v20 = a1;

      v21 = v33;
      [v33 frame];
      sub_10076613C();
      v22 = v16;
      v19 = v20;
      (*(v12 + 8))(v22, v11);
      goto LABEL_7;
    }

    v23 = *(v12 + 8);

    v24 = v16;
    v19 = a1;
    v23(v24, v11);
  }

  v21 = v33;
LABEL_7:
  sub_10000A570(v36, v35);
  sub_1004E2AD0(&unk_10095A420, &type metadata accessor for MixedMediaLockup);
  sub_10076FE2C();
  if (v17(v7, 1, v11) == 1)
  {
    sub_10000CFBC(v7, &qword_1009492E0);
    v25 = v34;
  }

  else
  {
    v26 = v31;
    (*(v12 + 32))(v31, v7, v11);
    v25 = v34;
    v27 = *(v34 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v27)
    {
      [v21 frame];
      sub_1007660EC();
    }

    [v21 frame];
    v28 = sub_10000CF78(v35, v35[3]);
    sub_1004DE348(*v28, v27);
    (*(v12 + 8))(v26, v11);
  }

  sub_10000CD74(v35);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v21)
  {
    v29 = v21;
    [v29 frame];
    sub_1004DD168(v19, v25, &type metadata accessor for MixedMediaLockup, &unk_10095A420, &type metadata accessor for MixedMediaLockup);
    swift_getObjectType();
    sub_10076A01C();
  }

  return sub_10000CD74(v36);
}

uint64_t sub_1004DB908(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a2;
  v5 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_10076F7FC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v32 = sub_100765F5C();
  v36[3] = v32;
  v36[4] = sub_1004E2AD0(&qword_10095A440, &type metadata accessor for EditorialSearchResult);
  v36[0] = a1;
  sub_100016E2C(a3 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_containerImpressionMetrics, v10, &qword_1009492E0);
  v17 = *(v12 + 48);
  v18 = v17(v10, 1, v11);
  v34 = a3;
  if (v18 == 1)
  {

    sub_10000CFBC(v10, &qword_1009492E0);
    v19 = a1;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    if (*(a3 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      v20 = a1;

      v21 = v33;
      [v33 frame];
      sub_10076613C();
      v22 = v16;
      v19 = v20;
      (*(v12 + 8))(v22, v11);
      goto LABEL_7;
    }

    v23 = *(v12 + 8);

    v24 = v16;
    v19 = a1;
    v23(v24, v11);
  }

  v21 = v33;
LABEL_7:
  sub_10000A570(v36, v35);
  sub_1004E2AD0(&qword_10095A448, &type metadata accessor for EditorialSearchResult);
  sub_10076FE2C();
  if (v17(v7, 1, v11) == 1)
  {
    sub_10000CFBC(v7, &qword_1009492E0);
    v25 = v34;
  }

  else
  {
    v26 = v31;
    (*(v12 + 32))(v31, v7, v11);
    v25 = v34;
    v27 = *(v34 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v27)
    {
      [v21 frame];
      sub_1007660EC();
    }

    [v21 frame];
    v28 = sub_10000CF78(v35, v35[3]);
    sub_1004DEA84(*v28, v27);
    (*(v12 + 8))(v26, v11);
  }

  sub_10000CD74(v35);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v21)
  {
    v29 = v21;
    [v29 frame];
    sub_1004DD168(v19, v25, &type metadata accessor for EditorialSearchResult, &qword_10095A448, &type metadata accessor for EditorialSearchResult);
    swift_getObjectType();
    sub_10076A01C();
  }

  return sub_10000CD74(v36);
}

uint64_t sub_1004DBDE8(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a2;
  v5 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_10076F7FC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v32 = sub_10075E67C();
  v36[3] = v32;
  v36[4] = sub_1004E2AD0(&qword_10095A450, &type metadata accessor for InAppPurchaseLockup);
  v36[0] = a1;
  sub_100016E2C(a3 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_containerImpressionMetrics, v10, &qword_1009492E0);
  v17 = *(v12 + 48);
  v18 = v17(v10, 1, v11);
  v34 = a3;
  if (v18 == 1)
  {

    sub_10000CFBC(v10, &qword_1009492E0);
    v19 = a1;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    if (*(a3 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      v20 = a1;

      v21 = v33;
      [v33 frame];
      sub_10076613C();
      v22 = v16;
      v19 = v20;
      (*(v12 + 8))(v22, v11);
      goto LABEL_7;
    }

    v23 = *(v12 + 8);

    v24 = v16;
    v19 = a1;
    v23(v24, v11);
  }

  v21 = v33;
LABEL_7:
  sub_10000A570(v36, v35);
  sub_1004E2AD0(&qword_10095A458, &type metadata accessor for InAppPurchaseLockup);
  sub_10076FE2C();
  if (v17(v7, 1, v11) == 1)
  {
    sub_10000CFBC(v7, &qword_1009492E0);
    v25 = v34;
  }

  else
  {
    v26 = v31;
    (*(v12 + 32))(v31, v7, v11);
    v25 = v34;
    v27 = *(v34 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v27)
    {
      [v21 frame];
      sub_1007660EC();
    }

    [v21 frame];
    v28 = sub_10000CF78(v35, v35[3]);
    sub_1004DF1C0(*v28, v27);
    (*(v12 + 8))(v26, v11);
  }

  sub_10000CD74(v35);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v21)
  {
    v29 = v21;
    [v29 frame];
    sub_1004DD168(v19, v25, &type metadata accessor for InAppPurchaseLockup, &qword_10095A458, &type metadata accessor for InAppPurchaseLockup);
    swift_getObjectType();
    sub_10076A01C();
  }

  return sub_10000CD74(v36);
}

uint64_t sub_1004DC2C8(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a2;
  v5 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_10076F7FC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v32 = sub_10076947C();
  v36[3] = v32;
  v36[4] = sub_1004E2AD0(&qword_10095A460, &type metadata accessor for LockupCollectionSearchResult);
  v36[0] = a1;
  sub_100016E2C(a3 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_containerImpressionMetrics, v10, &qword_1009492E0);
  v17 = *(v12 + 48);
  v18 = v17(v10, 1, v11);
  v34 = a3;
  if (v18 == 1)
  {

    sub_10000CFBC(v10, &qword_1009492E0);
    v19 = a1;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    if (*(a3 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      v20 = a1;

      v21 = v33;
      [v33 frame];
      sub_10076613C();
      v22 = v16;
      v19 = v20;
      (*(v12 + 8))(v22, v11);
      goto LABEL_7;
    }

    v23 = *(v12 + 8);

    v24 = v16;
    v19 = a1;
    v23(v24, v11);
  }

  v21 = v33;
LABEL_7:
  sub_10000A570(v36, v35);
  sub_1004E2AD0(&unk_10095A468, &type metadata accessor for LockupCollectionSearchResult);
  sub_10076FE2C();
  if (v17(v7, 1, v11) == 1)
  {
    sub_10000CFBC(v7, &qword_1009492E0);
    v25 = v34;
  }

  else
  {
    v26 = v31;
    (*(v12 + 32))(v31, v7, v11);
    v25 = v34;
    v27 = *(v34 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v27)
    {
      [v21 frame];
      sub_1007660EC();
    }

    [v21 frame];
    v28 = sub_10000CF78(v35, v35[3]);
    sub_1004DF8FC(*v28, v27);
    (*(v12 + 8))(v26, v11);
  }

  sub_10000CD74(v35);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v21)
  {
    v29 = v21;
    [v29 frame];
    sub_1004DD168(v19, v25, &type metadata accessor for LockupCollectionSearchResult, &unk_10095A468, &type metadata accessor for LockupCollectionSearchResult);
    swift_getObjectType();
    sub_10076A01C();
  }

  return sub_10000CD74(v36);
}

uint64_t sub_1004DC7A8(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a2;
  v5 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_10076F7FC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v32 = sub_10075EEBC();
  v36[3] = v32;
  v36[4] = sub_1004E2AD0(&qword_100942860, &type metadata accessor for AppEventSearchResult);
  v36[0] = a1;
  sub_100016E2C(a3 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_containerImpressionMetrics, v10, &qword_1009492E0);
  v17 = *(v12 + 48);
  v18 = v17(v10, 1, v11);
  v34 = a3;
  if (v18 == 1)
  {

    sub_10000CFBC(v10, &qword_1009492E0);
    v19 = a1;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    if (*(a3 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      v20 = a1;

      v21 = v33;
      [v33 frame];
      sub_10076613C();
      v22 = v16;
      v19 = v20;
      (*(v12 + 8))(v22, v11);
      goto LABEL_7;
    }

    v23 = *(v12 + 8);

    v24 = v16;
    v19 = a1;
    v23(v24, v11);
  }

  v21 = v33;
LABEL_7:
  sub_10000A570(v36, v35);
  sub_1004E2AD0(&qword_10095A478, &type metadata accessor for AppEventSearchResult);
  sub_10076FE2C();
  if (v17(v7, 1, v11) == 1)
  {
    sub_10000CFBC(v7, &qword_1009492E0);
    v25 = v34;
  }

  else
  {
    v26 = v31;
    (*(v12 + 32))(v31, v7, v11);
    v25 = v34;
    v27 = *(v34 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v27)
    {
      [v21 frame];
      sub_1007660EC();
    }

    [v21 frame];
    v28 = sub_10000CF78(v35, v35[3]);
    sub_1004E0038(*v28, v27);
    (*(v12 + 8))(v26, v11);
  }

  sub_10000CD74(v35);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v21)
  {
    v29 = v21;
    [v29 frame];
    sub_1004DD168(v19, v25, &type metadata accessor for AppEventSearchResult, &qword_10095A478, &type metadata accessor for AppEventSearchResult);
    swift_getObjectType();
    sub_10076A01C();
  }

  return sub_10000CD74(v36);
}

uint64_t sub_1004DCC88(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a2;
  v5 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_10076F7FC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v32 = sub_10076083C();
  v36[3] = v32;
  v36[4] = sub_1004E2AD0(&qword_1009467D0, &type metadata accessor for LinkableText);
  v36[0] = a1;
  sub_100016E2C(a3 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_containerImpressionMetrics, v10, &qword_1009492E0);
  v17 = *(v12 + 48);
  v18 = v17(v10, 1, v11);
  v34 = a3;
  if (v18 == 1)
  {

    sub_10000CFBC(v10, &qword_1009492E0);
    v19 = a1;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    if (*(a3 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      v20 = a1;

      v21 = v33;
      [v33 frame];
      sub_10076613C();
      v22 = v16;
      v19 = v20;
      (*(v12 + 8))(v22, v11);
      goto LABEL_7;
    }

    v23 = *(v12 + 8);

    v24 = v16;
    v19 = a1;
    v23(v24, v11);
  }

  v21 = v33;
LABEL_7:
  sub_10000A570(v36, v35);
  sub_1004E2AD0(&unk_10095A490, &type metadata accessor for LinkableText);
  sub_10076FE2C();
  if (v17(v7, 1, v11) == 1)
  {
    sub_10000CFBC(v7, &qword_1009492E0);
    v25 = v34;
  }

  else
  {
    v26 = v31;
    (*(v12 + 32))(v31, v7, v11);
    v25 = v34;
    v27 = *(v34 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v27)
    {
      [v21 frame];
      sub_1007660EC();
    }

    [v21 frame];
    v28 = sub_10000CF78(v35, v35[3]);
    sub_1004E2B18(*v28, v27);
    (*(v12 + 8))(v26, v11);
  }

  sub_10000CD74(v35);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v21)
  {
    v29 = v21;
    [v29 frame];
    sub_1004DD168(v19, v25, &type metadata accessor for LinkableText, &unk_10095A490, &type metadata accessor for LinkableText);
    swift_getObjectType();
    sub_10076A01C();
  }

  return sub_10000CD74(v36);
}

uint64_t sub_1004DD168(uint64_t a1, uint64_t a2, void (*a3)(void, __n128), unint64_t *a4, void (*a5)(uint64_t))
{
  v24 = a2;
  v9 = sub_10076F7CC();
  v22 = *(v9 - 8);
  v23 = v9;
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  v15 = sub_10076F7FC();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  a3(0, v17);
  sub_1004E2AD0(a4, a5);
  sub_10076FE2C();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000CFBC(v14, &qword_1009492E0);
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    if (*(v24 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      sub_1007660EC();
      sub_10076F7DC();
      v20 = sub_1007660DC();
      (*(v22 + 8))(v11, v23);
      (*(v16 + 8))(v19, v15);
      return v20;
    }

    (*(v16 + 8))(v19, v15);
  }

  return 0;
}

uint64_t sub_1004DD458(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_10076F7FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = sub_10076289C();
  v15[4] = sub_1004E2AD0(&qword_100952130, &type metadata accessor for MixedMediaLockup);
  v15[0] = a1;
  sub_10000A570(v15, v14);
  sub_1004E2AD0(&unk_10095A420, &type metadata accessor for MixedMediaLockup);

  sub_10076FE2C();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000CFBC(v6, &qword_1009492E0);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v11)
    {
      sub_10076610C();
    }

    v12 = sub_10000CF78(v14, v14[3]);
    sub_1004E0774(*v12, v11);
    (*(v8 + 8))(v10, v7);
  }

  sub_10000CD74(v14);
  return sub_10000CD74(v15);
}

uint64_t sub_1004DD6BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_10076F7FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = sub_100765F5C();
  v15[4] = sub_1004E2AD0(&qword_10095A440, &type metadata accessor for EditorialSearchResult);
  v15[0] = a1;
  sub_10000A570(v15, v14);
  sub_1004E2AD0(&qword_10095A448, &type metadata accessor for EditorialSearchResult);

  sub_10076FE2C();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000CFBC(v6, &qword_1009492E0);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v11)
    {
      sub_10076610C();
    }

    v12 = sub_10000CF78(v14, v14[3]);
    sub_1004E0E74(*v12, v11);
    (*(v8 + 8))(v10, v7);
  }

  sub_10000CD74(v14);
  return sub_10000CD74(v15);
}

uint64_t sub_1004DD920(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_10076F7FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = sub_10075E67C();
  v15[4] = sub_1004E2AD0(&qword_10095A450, &type metadata accessor for InAppPurchaseLockup);
  v15[0] = a1;
  sub_10000A570(v15, v14);
  sub_1004E2AD0(&qword_10095A458, &type metadata accessor for InAppPurchaseLockup);

  sub_10076FE2C();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000CFBC(v6, &qword_1009492E0);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v11)
    {
      sub_10076610C();
    }

    v12 = sub_10000CF78(v14, v14[3]);
    sub_1004E1574(*v12, v11);
    (*(v8 + 8))(v10, v7);
  }

  sub_10000CD74(v14);
  return sub_10000CD74(v15);
}

uint64_t sub_1004DDB84(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_10076F7FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = sub_10076947C();
  v15[4] = sub_1004E2AD0(&qword_10095A460, &type metadata accessor for LockupCollectionSearchResult);
  v15[0] = a1;
  sub_10000A570(v15, v14);
  sub_1004E2AD0(&unk_10095A468, &type metadata accessor for LockupCollectionSearchResult);

  sub_10076FE2C();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000CFBC(v6, &qword_1009492E0);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v11)
    {
      sub_10076610C();
    }

    v12 = sub_10000CF78(v14, v14[3]);
    sub_1004E1C74(*v12, v11);
    (*(v8 + 8))(v10, v7);
  }

  sub_10000CD74(v14);
  return sub_10000CD74(v15);
}

uint64_t sub_1004DDDE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_10076F7FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = sub_10075EEBC();
  v15[4] = sub_1004E2AD0(&qword_100942860, &type metadata accessor for AppEventSearchResult);
  v15[0] = a1;
  sub_10000A570(v15, v14);
  sub_1004E2AD0(&qword_10095A478, &type metadata accessor for AppEventSearchResult);

  sub_10076FE2C();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000CFBC(v6, &qword_1009492E0);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v11)
    {
      sub_10076610C();
    }

    v12 = sub_10000CF78(v14, v14[3]);
    sub_1004E2374(*v12, v11);
    (*(v8 + 8))(v10, v7);
  }

  sub_10000CD74(v14);
  return sub_10000CD74(v15);
}

uint64_t sub_1004DE04C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_10076F7FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = sub_10076083C();
  v15[4] = sub_1004E2AD0(&qword_1009467D0, &type metadata accessor for LinkableText);
  v15[0] = a1;
  sub_10000A570(v15, v14);
  sub_1004E2AD0(&unk_10095A490, &type metadata accessor for LinkableText);

  sub_10076FE2C();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000CFBC(v6, &qword_1009492E0);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v11)
    {
      sub_10076610C();
    }

    v12 = sub_10000CF78(v14, v14[3]);
    sub_1004E3400(*v12, v11);
    (*(v8 + 8))(v10, v7);
  }

  sub_10000CD74(v14);
  return sub_10000CD74(v15);
}

uint64_t sub_1004DE2B0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004DE2E8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1004DE330(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004DE348(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000A5D4(&qword_1009632C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_10076F7FC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_10076289C();
  v55[3] = v45;
  v55[4] = sub_1004E2AD0(&qword_100952130, &type metadata accessor for MixedMediaLockup);
  v55[0] = a1;
  sub_10000A570(v55, v53);

  sub_10000A5D4(&qword_1009575A0);
  sub_10000A5D4(&qword_100952118);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100012498(v51, v54);
    sub_10000CF78(v54, v54[3]);
    v18 = sub_100766E0C();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_1009632C0;
        v23 = &unk_10079B000;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10000A570(v20, v53);
          sub_10000CF78(v53, v53[3]);
          v26 = v50;
          sub_10076FE2C();
          sub_10000CD74(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10000CFBC(v50, &qword_1009492E0);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_1004E2AD0(&unk_10095A420, &type metadata accessor for MixedMediaLockup);
            v28 = v48;
            sub_10076FE2C();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10000CFBC(v48, &qword_1009492E0);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_10076F7DC();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_10076F7CC();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100016E2C(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10000CFBC(v33, v25);
              }

              else
              {
                sub_10076F7BC();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_10076F78C();

              sub_1007660EC();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10000CFBC(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10000CFBC(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_10000CD74(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000CFBC(v51, &unk_100952120);
  }

  return sub_10000CD74(v55);
}

uint64_t sub_1004DEA84(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000A5D4(&qword_1009632C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_10076F7FC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_100765F5C();
  v55[3] = v45;
  v55[4] = sub_1004E2AD0(&qword_10095A440, &type metadata accessor for EditorialSearchResult);
  v55[0] = a1;
  sub_10000A570(v55, v53);

  sub_10000A5D4(&qword_1009575A0);
  sub_10000A5D4(&qword_100952118);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100012498(v51, v54);
    sub_10000CF78(v54, v54[3]);
    v18 = sub_100766E0C();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_1009632C0;
        v23 = &unk_10079B000;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10000A570(v20, v53);
          sub_10000CF78(v53, v53[3]);
          v26 = v50;
          sub_10076FE2C();
          sub_10000CD74(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10000CFBC(v50, &qword_1009492E0);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_1004E2AD0(&qword_10095A448, &type metadata accessor for EditorialSearchResult);
            v28 = v48;
            sub_10076FE2C();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10000CFBC(v48, &qword_1009492E0);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_10076F7DC();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_10076F7CC();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100016E2C(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10000CFBC(v33, v25);
              }

              else
              {
                sub_10076F7BC();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_10076F78C();

              sub_1007660EC();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10000CFBC(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10000CFBC(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_10000CD74(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000CFBC(v51, &unk_100952120);
  }

  return sub_10000CD74(v55);
}

uint64_t sub_1004DF1C0(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000A5D4(&qword_1009632C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_10076F7FC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_10075E67C();
  v55[3] = v45;
  v55[4] = sub_1004E2AD0(&qword_10095A450, &type metadata accessor for InAppPurchaseLockup);
  v55[0] = a1;
  sub_10000A570(v55, v53);

  sub_10000A5D4(&qword_1009575A0);
  sub_10000A5D4(&qword_100952118);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100012498(v51, v54);
    sub_10000CF78(v54, v54[3]);
    v18 = sub_100766E0C();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_1009632C0;
        v23 = &unk_10079B000;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10000A570(v20, v53);
          sub_10000CF78(v53, v53[3]);
          v26 = v50;
          sub_10076FE2C();
          sub_10000CD74(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10000CFBC(v50, &qword_1009492E0);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_1004E2AD0(&qword_10095A458, &type metadata accessor for InAppPurchaseLockup);
            v28 = v48;
            sub_10076FE2C();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10000CFBC(v48, &qword_1009492E0);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_10076F7DC();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_10076F7CC();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100016E2C(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10000CFBC(v33, v25);
              }

              else
              {
                sub_10076F7BC();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_10076F78C();

              sub_1007660EC();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10000CFBC(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10000CFBC(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_10000CD74(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000CFBC(v51, &unk_100952120);
  }

  return sub_10000CD74(v55);
}

uint64_t sub_1004DF8FC(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000A5D4(&qword_1009632C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_10076F7FC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_10076947C();
  v55[3] = v45;
  v55[4] = sub_1004E2AD0(&qword_10095A460, &type metadata accessor for LockupCollectionSearchResult);
  v55[0] = a1;
  sub_10000A570(v55, v53);

  sub_10000A5D4(&qword_1009575A0);
  sub_10000A5D4(&qword_100952118);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100012498(v51, v54);
    sub_10000CF78(v54, v54[3]);
    v18 = sub_100766E0C();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_1009632C0;
        v23 = &unk_10079B000;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10000A570(v20, v53);
          sub_10000CF78(v53, v53[3]);
          v26 = v50;
          sub_10076FE2C();
          sub_10000CD74(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10000CFBC(v50, &qword_1009492E0);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_1004E2AD0(&unk_10095A468, &type metadata accessor for LockupCollectionSearchResult);
            v28 = v48;
            sub_10076FE2C();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10000CFBC(v48, &qword_1009492E0);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_10076F7DC();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_10076F7CC();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100016E2C(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10000CFBC(v33, v25);
              }

              else
              {
                sub_10076F7BC();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_10076F78C();

              sub_1007660EC();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10000CFBC(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10000CFBC(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_10000CD74(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000CFBC(v51, &unk_100952120);
  }

  return sub_10000CD74(v55);
}

uint64_t sub_1004E0038(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000A5D4(&qword_1009632C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_10076F7FC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_10075EEBC();
  v55[3] = v45;
  v55[4] = sub_1004E2AD0(&qword_100942860, &type metadata accessor for AppEventSearchResult);
  v55[0] = a1;
  sub_10000A570(v55, v53);

  sub_10000A5D4(&qword_1009575A0);
  sub_10000A5D4(&qword_100952118);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100012498(v51, v54);
    sub_10000CF78(v54, v54[3]);
    v18 = sub_100766E0C();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_1009632C0;
        v23 = &unk_10079B000;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10000A570(v20, v53);
          sub_10000CF78(v53, v53[3]);
          v26 = v50;
          sub_10076FE2C();
          sub_10000CD74(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10000CFBC(v50, &qword_1009492E0);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_1004E2AD0(&qword_10095A478, &type metadata accessor for AppEventSearchResult);
            v28 = v48;
            sub_10076FE2C();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10000CFBC(v48, &qword_1009492E0);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_10076F7DC();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_10076F7CC();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100016E2C(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10000CFBC(v33, v25);
              }

              else
              {
                sub_10076F7BC();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_10076F78C();

              sub_1007660EC();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10000CFBC(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10000CFBC(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_10000CD74(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000CFBC(v51, &unk_100952120);
  }

  return sub_10000CD74(v55);
}

uint64_t sub_1004E0774(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000A5D4(&qword_1009632C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_10076F7FC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_10076289C();
  v55[3] = v45;
  v55[4] = sub_1004E2AD0(&qword_100952130, &type metadata accessor for MixedMediaLockup);
  v55[0] = a1;
  sub_10000A570(v55, v53);

  sub_10000A5D4(&qword_1009575A0);
  sub_10000A5D4(&qword_100952118);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100012498(v51, v54);
    sub_10000CF78(v54, v54[3]);
    v18 = sub_100766E0C();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_1009632C0;
        v23 = &unk_10079B000;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10000A570(v20, v53);
          sub_10000CF78(v53, v53[3]);
          v26 = v50;
          sub_10076FE2C();
          sub_10000CD74(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10000CFBC(v50, &qword_1009492E0);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_1004E2AD0(&unk_10095A420, &type metadata accessor for MixedMediaLockup);
            v28 = v48;
            sub_10076FE2C();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10000CFBC(v48, &qword_1009492E0);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_10076F7DC();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_10076F7CC();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100016E2C(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10000CFBC(v33, v25);
              }

              else
              {
                sub_10076F7BC();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_10076F78C();

              sub_10076610C();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10000CFBC(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10000CFBC(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_10000CD74(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000CFBC(v51, &unk_100952120);
  }

  return sub_10000CD74(v55);
}

uint64_t sub_1004E0E74(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000A5D4(&qword_1009632C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_10076F7FC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_100765F5C();
  v55[3] = v45;
  v55[4] = sub_1004E2AD0(&qword_10095A440, &type metadata accessor for EditorialSearchResult);
  v55[0] = a1;
  sub_10000A570(v55, v53);

  sub_10000A5D4(&qword_1009575A0);
  sub_10000A5D4(&qword_100952118);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100012498(v51, v54);
    sub_10000CF78(v54, v54[3]);
    v18 = sub_100766E0C();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_1009632C0;
        v23 = &unk_10079B000;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10000A570(v20, v53);
          sub_10000CF78(v53, v53[3]);
          v26 = v50;
          sub_10076FE2C();
          sub_10000CD74(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10000CFBC(v50, &qword_1009492E0);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_1004E2AD0(&qword_10095A448, &type metadata accessor for EditorialSearchResult);
            v28 = v48;
            sub_10076FE2C();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10000CFBC(v48, &qword_1009492E0);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_10076F7DC();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_10076F7CC();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100016E2C(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10000CFBC(v33, v25);
              }

              else
              {
                sub_10076F7BC();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_10076F78C();

              sub_10076610C();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10000CFBC(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10000CFBC(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_10000CD74(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000CFBC(v51, &unk_100952120);
  }

  return sub_10000CD74(v55);
}

uint64_t sub_1004E1574(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000A5D4(&qword_1009632C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_10076F7FC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_10075E67C();
  v55[3] = v45;
  v55[4] = sub_1004E2AD0(&qword_10095A450, &type metadata accessor for InAppPurchaseLockup);
  v55[0] = a1;
  sub_10000A570(v55, v53);

  sub_10000A5D4(&qword_1009575A0);
  sub_10000A5D4(&qword_100952118);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100012498(v51, v54);
    sub_10000CF78(v54, v54[3]);
    v18 = sub_100766E0C();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_1009632C0;
        v23 = &unk_10079B000;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10000A570(v20, v53);
          sub_10000CF78(v53, v53[3]);
          v26 = v50;
          sub_10076FE2C();
          sub_10000CD74(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10000CFBC(v50, &qword_1009492E0);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_1004E2AD0(&qword_10095A458, &type metadata accessor for InAppPurchaseLockup);
            v28 = v48;
            sub_10076FE2C();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10000CFBC(v48, &qword_1009492E0);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_10076F7DC();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_10076F7CC();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100016E2C(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10000CFBC(v33, v25);
              }

              else
              {
                sub_10076F7BC();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_10076F78C();

              sub_10076610C();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10000CFBC(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10000CFBC(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_10000CD74(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000CFBC(v51, &unk_100952120);
  }

  return sub_10000CD74(v55);
}

uint64_t sub_1004E1C74(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000A5D4(&qword_1009632C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_10076F7FC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_10076947C();
  v55[3] = v45;
  v55[4] = sub_1004E2AD0(&qword_10095A460, &type metadata accessor for LockupCollectionSearchResult);
  v55[0] = a1;
  sub_10000A570(v55, v53);

  sub_10000A5D4(&qword_1009575A0);
  sub_10000A5D4(&qword_100952118);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100012498(v51, v54);
    sub_10000CF78(v54, v54[3]);
    v18 = sub_100766E0C();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_1009632C0;
        v23 = &unk_10079B000;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10000A570(v20, v53);
          sub_10000CF78(v53, v53[3]);
          v26 = v50;
          sub_10076FE2C();
          sub_10000CD74(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10000CFBC(v50, &qword_1009492E0);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_1004E2AD0(&unk_10095A468, &type metadata accessor for LockupCollectionSearchResult);
            v28 = v48;
            sub_10076FE2C();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10000CFBC(v48, &qword_1009492E0);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_10076F7DC();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_10076F7CC();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100016E2C(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10000CFBC(v33, v25);
              }

              else
              {
                sub_10076F7BC();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_10076F78C();

              sub_10076610C();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10000CFBC(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10000CFBC(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_10000CD74(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000CFBC(v51, &unk_100952120);
  }

  return sub_10000CD74(v55);
}

uint64_t sub_1004E2374(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000A5D4(&qword_1009632C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_10076F7FC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_10075EEBC();
  v55[3] = v45;
  v55[4] = sub_1004E2AD0(&qword_100942860, &type metadata accessor for AppEventSearchResult);
  v55[0] = a1;
  sub_10000A570(v55, v53);

  sub_10000A5D4(&qword_1009575A0);
  sub_10000A5D4(&qword_100952118);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100012498(v51, v54);
    sub_10000CF78(v54, v54[3]);
    v18 = sub_100766E0C();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_1009632C0;
        v23 = &unk_10079B000;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10000A570(v20, v53);
          sub_10000CF78(v53, v53[3]);
          v26 = v50;
          sub_10076FE2C();
          sub_10000CD74(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10000CFBC(v50, &qword_1009492E0);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_1004E2AD0(&qword_10095A478, &type metadata accessor for AppEventSearchResult);
            v28 = v48;
            sub_10076FE2C();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10000CFBC(v48, &qword_1009492E0);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_10076F7DC();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_10076F7CC();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100016E2C(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10000CFBC(v33, v25);
              }

              else
              {
                sub_10076F7BC();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_10076F78C();

              sub_10076610C();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10000CFBC(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10000CFBC(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_10000CD74(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000CFBC(v51, &unk_100952120);
  }

  return sub_10000CD74(v55);
}

uint64_t sub_1004E2A74()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1004E2AD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004E2B18(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000A5D4(&qword_1009632C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_10076F7FC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_10076083C();
  v55[3] = v45;
  v55[4] = sub_1004E2AD0(&qword_1009467D0, &type metadata accessor for LinkableText);
  v55[0] = a1;
  sub_10000A570(v55, v53);

  sub_10000A5D4(&qword_1009575A0);
  sub_10000A5D4(&qword_100952118);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100012498(v51, v54);
    sub_10000CF78(v54, v54[3]);
    v18 = sub_100766E0C();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_1009632C0;
        v23 = &unk_10079B000;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10000A570(v20, v53);
          sub_10000CF78(v53, v53[3]);
          v26 = v50;
          sub_10076FE2C();
          sub_10000CD74(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10000CFBC(v50, &qword_1009492E0);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_1004E2AD0(&unk_10095A490, &type metadata accessor for LinkableText);
            v28 = v48;
            sub_10076FE2C();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10000CFBC(v48, &qword_1009492E0);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_10076F7DC();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_10076F7CC();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100016E2C(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10000CFBC(v33, v25);
              }

              else
              {
                sub_10076F7BC();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_10076F78C();

              sub_1007660EC();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10000CFBC(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10000CFBC(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_10000CD74(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000CFBC(v51, &unk_100952120);
  }

  return sub_10000CD74(v55);
}

void sub_1004E3254(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SearchTransparencyView();
  if (sub_1007708EC() == a2 && v7 == a3)
  {
  }

  else
  {
    v9 = sub_10077167C();

    if ((v9 & 1) == 0)
    {
      return;
    }
  }

  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    v17 = a1;
    v12 = sub_100766C4C();
    if (v12)
    {
      v13 = v12;
      v14 = sub_10076082C();
      v15 = sub_100107BF4(v14, sub_1000368B8);

      v16 = sub_10076081C();
      sub_10050C274(v16, 0, v15);

      [v11 setNeedsLayout];
      sub_1004DCC88(v13, v17, v3);
    }
  }
}

uint64_t sub_1004E3400(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000A5D4(&qword_1009632C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_10076F7FC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_10076083C();
  v55[3] = v45;
  v55[4] = sub_1004E2AD0(&qword_1009467D0, &type metadata accessor for LinkableText);
  v55[0] = a1;
  sub_10000A570(v55, v53);

  sub_10000A5D4(&qword_1009575A0);
  sub_10000A5D4(&qword_100952118);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100012498(v51, v54);
    sub_10000CF78(v54, v54[3]);
    v18 = sub_100766E0C();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_1009632C0;
        v23 = &unk_10079B000;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10000A570(v20, v53);
          sub_10000CF78(v53, v53[3]);
          v26 = v50;
          sub_10076FE2C();
          sub_10000CD74(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10000CFBC(v50, &qword_1009492E0);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_1004E2AD0(&unk_10095A490, &type metadata accessor for LinkableText);
            v28 = v48;
            sub_10076FE2C();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10000CFBC(v48, &qword_1009492E0);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_10076F7DC();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_10076F7CC();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100016E2C(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10000CFBC(v33, v25);
              }

              else
              {
                sub_10076F7BC();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_10076F78C();

              sub_10076610C();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10000CFBC(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10000CFBC(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_10000CD74(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000CFBC(v51, &unk_100952120);
  }

  return sub_10000CD74(v55);
}

void sub_1004E3B34(void *a1)
{
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    swift_getObjectType();
    v2 = a1;
    sub_100768BFC();
  }
}

uint64_t sub_1004E3BDC(void *a1, uint64_t a2, uint64_t a3)
{
  v57[1] = a3;
  v61 = a1;
  v3 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v3 - 8);
  v57[0] = v57 - v4;
  v60 = sub_1007621EC();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_10076B5BC();
  v6 = *(v62 - 8);
  __chkstk_darwin(v62);
  v8 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v57 - v10;
  v12 = sub_10000A5D4(&unk_100946710);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v57 - v14;
  v16 = sub_10000A5D4(&unk_100946720);
  v63 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = v57 - v17;
  swift_getKeyPath();
  sub_10076338C();
  v19 = v16;

  sub_1007633BC();
  sub_10076F4AC();
  (*(v13 + 8))(v15, v12);
  swift_getKeyPath();
  sub_10076F49C();
  v20 = v62;

  (*(v6 + 32))(v8, v11, v20);
  v21 = (*(v6 + 88))(v8, v20);
  if (v21 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v21 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    (*(v6 + 8))(v8, v20);
    swift_getKeyPath();
    v22 = v58;
    sub_10076F49C();

    v23 = sub_1004751F8();
    (*(v59 + 8))(v22, v60);
    v24 = v61;
    if ([v61 overrideUserInterfaceStyle] != v23)
    {
      [v24 setOverrideUserInterfaceStyle:v23];
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v24)
    {
      sub_10000A570(v68, v66);
      v25 = v24;
      sub_10000A5D4(&qword_1009575A0);
      sub_10000A5D4(&unk_1009520F0);
      if (swift_dynamicCast())
      {
        sub_100012498(v64, v67);
        sub_10000CF78(v67, v67[3]);
        if (sub_10076967C())
        {
          sub_10076518C();
        }

        swift_getObjectType();
        sub_10076457C();

        sub_10000CD74(v67);
      }

      else
      {

        v65 = 0;
        memset(v64, 0, sizeof(v64));
        sub_10000CFBC(v64, &qword_10094D3E8);
      }
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v24)
    {
      swift_getObjectType();
      v26 = v24;
      sub_100768BEC();
    }

    swift_getObjectType();
    v27 = swift_conformsToProtocol2();
    if (v27 && v24)
    {
      v28 = v27;
      ObjectType = swift_getObjectType();
      v30 = v19;
      v31 = *(v28 + 8);
      v32 = v24;
      v33 = v31(ObjectType, v28);
      v19 = v30;
      v34 = v33;
      v35 = (v33 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler);
      v36 = *(v33 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler);
      *v35 = 0;
      v35[1] = 0;
      sub_1000167E0(v36);
      [*&v34[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreButton] setUserInteractionEnabled:0];
    }

    v37 = [objc_opt_self() standardUserDefaults];
    v38 = sub_10072F66C();

    if (v38)
    {
      v39 = v61;
      [v61 bounds];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v48 = [objc_opt_self() blueColor];
      v49 = objc_allocWithZone(type metadata accessor for ImpressionMetricsDebugOverlay());
      v50 = sub_100116430(v48, v41, v43, v45, v47);
      v51 = v18;
      sub_10000CF78(v68, v68[3]);
      v52 = v57[0];
      sub_10076FE2C();
      sub_100116730(v52);
      sub_10000CFBC(v52, &qword_1009492E0);
      v53 = [v39 contentView];
      v54 = [v53 viewWithTag:58236912];

      [v54 removeFromSuperview];
      v55 = [v39 contentView];
      [v55 addSubview:v50];

      v18 = v51;
    }
  }

  (*(v63 + 8))(v18, v19);
  return sub_10000CD74(v68);
}

void sub_1004E4458(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v38[-1] - v10;
  v12 = sub_10000A5D4(&unk_100946720);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v38[-1] - v14;
  swift_getObjectType();
  v16 = swift_conformsToProtocol2();
  if (v16 && a1)
  {
    v17 = v16;
    ObjectType = swift_getObjectType();
    sub_10012B750(a2, a5, ObjectType, v17);
  }

  else
  {
    type metadata accessor for TodayDebugSectionBackgroundView();
    if (swift_dynamicCastClass())
    {
      sub_1004AD310(a2);
    }

    else
    {
      v19 = type metadata accessor for InteractiveSectionBackgroundView();
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        v21 = v20;
        type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
        v37 = v19;
        sub_10076F64C();
        sub_10076FC1C();
        sub_1001485D0(a2, a4, a5);
        v38[3] = v37;
        v38[4] = &off_10088D588;
        v38[0] = v21;
        v22 = a1;
        sub_10043DED8(v38);

        sub_10000CFBC(v38, &unk_1009575D0);
      }
    }
  }

  v23 = [objc_opt_self() standardUserDefaults];
  v24 = sub_10072F66C();

  if (v24)
  {
    [a1 bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = [objc_opt_self() redColor];
    v34 = objc_allocWithZone(type metadata accessor for ImpressionMetricsDebugOverlay());
    v35 = sub_100116430(v33, v26, v28, v30, v32);
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    (*(v13 + 8))(v15, v12);
    sub_100116730(v11);
    sub_10000CFBC(v11, &qword_1009492E0);
    v36 = [a1 viewWithTag:58236912];
    [v36 removeFromSuperview];

    [a1 addSubview:v35];
  }
}

void sub_1004E4848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  sub_100078490(a1, a3, a4, a5, a6);
  sub_10075E66C();
  v8 = sub_10076BB6C();
  v10 = v9;

  if (v10)
  {
    v26._countAndFlagsBits = 0x465F4E4F5F444441;
    v26._object = 0xEE005050415F524FLL;
    v27._object = 0x80000001007D1F20;
    v27._countAndFlagsBits = 0xD000000000000031;
    sub_1007622EC(v26, v27);
    sub_10000A5D4(&qword_100966CF0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100783DD0;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_1000A9040();
    *(v11 + 32) = v8;
    *(v11 + 40) = v10;

    sub_10076FFCC();

    v12 = objc_allocWithZone(NSMutableAttributedString);
    v13 = sub_10076FF6C();
    v14 = [v12 initWithString:v13];

    v15 = objc_allocWithZone(NSString);
    v16 = sub_10076FF6C();

    v17 = [v15 initWithString:v16];

    v18 = sub_10076FF6C();

    v19 = [v17 rangeOfString:v18 options:4];
    v21 = v20;

    v25 = [v7 tintColor];
    sub_10000A5D4(&qword_100946798);
    v22 = sub_10077119C();

    [v14 addAttribute:NSForegroundColorAttributeName value:v22 range:{v19, v21}];
    swift_unknownObjectRelease();
    v23 = *(*&v7[OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_subtitleLabel);
    if (v23)
    {
      v24 = v23;
      [v24 setAttributedText:v14];
    }
  }
}

double sub_1004E4B1C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10077164C();
  v20 = *(v4 - 8);
  v21 = v4;
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076E21C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076664C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007665FC();
  sub_1002B62A4(&unk_100945570, &type metadata accessor for ComponentLayoutOptions);
  v15 = sub_10077124C();
  (*(v12 + 8))(v14, v11);
  swift_getObjectType();
  sub_100079BE0(a3, v10);
  type metadata accessor for InAppPurchaseLockupView();
  v16 = sub_1000CBBB0(a3);
  if (v15)
  {
    v17 = v16;
    sub_10076E1AC();
    sub_10000CF78(v22, v22[3]);
    sub_1000FF02C();
    sub_10076D40C();
    (*(v20 + 8))(v6, v21);
    (*(v8 + 8))(v10, v7);
    sub_10000CD74(v22);
  }

  else
  {
    sub_100770AFC();
    v17 = v18;
    (*(v8 + 8))(v10, v7);
  }

  return v17;
}