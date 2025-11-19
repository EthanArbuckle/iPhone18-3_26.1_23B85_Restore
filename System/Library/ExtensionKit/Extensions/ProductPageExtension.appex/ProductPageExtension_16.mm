id sub_1001D8EF4(uint64_t a1, CGFloat a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_appPromotionCardView);
  CGAffineTransformMakeScale(&v4, a2, a2);
  return [v2 setTransform:&v4];
}

uint64_t sub_1001D8F54(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_10000A5D4(&qword_100952650);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  sub_100016F40(0, &qword_10094D040);
  if ((sub_100770EEC() & 1) == 0)
  {
    return 1;
  }

  v8 = *&v2[OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_appPromotionCardView];
  v9 = OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupContainerView;
  [a2 locationInView:*(v8 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupContainerView)];
  v11 = v10;
  v13 = v12;
  [*(v8 + v9) bounds];
  v25.x = v11;
  v25.y = v13;
  if (CGRectContainsPoint(v27, v25))
  {
    return 0;
  }

  [a2 locationInView:v2];
  v16 = v15;
  v18 = v17;
  v19 = [v2 hitTest:0 withEvent:?];
  [v3 bounds];
  v26.x = v16;
  v26.y = v18;
  if (CGRectContainsPoint(v28, v26))
  {
    if (v19)
    {
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();

      if (v20)
      {
        return 0;
      }
    }

    v21 = OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_clickAction;
    swift_beginAccess();
    sub_100016E2C(&v3[v21], v7, &qword_100952650);
    v22 = sub_10000A5D4(&qword_100955BD0);
    v23 = (*(*(v22 - 8) + 48))(v7, 1, v22) != 1;
    sub_10000CFBC(v7, &qword_100952650);
    return v23;
  }

  else
  {

    return 0;
  }
}

void sub_1001D9234()
{
  sub_1001D92E0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001D92E0()
{
  if (!qword_10094D010)
  {
    sub_10000CE78(&qword_100955BD0);
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, &qword_10094D010);
    }
  }
}

uint64_t (*sub_1001D9368(uint64_t **a1))()
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
  v2[4] = sub_1001D7FC8(v2);
  return sub_100019A4C;
}

double sub_1001D93EC()
{
  [*(*v0 + OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_availabilityLabelView) frame];
  CGRectGetMaxY(v2);
  sub_10076422C();
  CGRectGetHeight(v3);
  sub_10076422C();
  CGRectGetWidth(v4);
  return 0.0;
}

CGFloat sub_1001D9464()
{
  v1 = *v0;
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_availabilityLabelView] frame];
  CGRectGetMaxY(v3);
  sub_10076422C();
  CGRectGetHeight(v4);
  [v1 bounds];
  return CGRectGetWidth(v5) * 0.5;
}

uint64_t sub_1001D9510()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1001DAA10(&unk_10094D030, type metadata accessor for AppPromotionView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1001D9584(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1001DAA10(&unk_10094D030, type metadata accessor for AppPromotionView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1001D9610(uint64_t *a1))()
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
  sub_1001DAA10(&unk_10094D030, type metadata accessor for AppPromotionView);
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_1001D96CC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_appPromotionCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView);
  sub_100016F40(0, &qword_1009441F0);
  v6 = v5;
  v7 = sub_100770EEC();

  return v7 & 1;
}

double sub_1001D984C(void *a1, void *a2)
{
  v107 = sub_10077164C();
  v105 = *(v107 - 8);
  __chkstk_darwin(v107);
  v104 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_10076D93C();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v110 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_10076D95C();
  v114 = *(v115 - 1);
  __chkstk_darwin(v115);
  v113 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_10076DE7C();
  v106 = *(v109 - 8);
  __chkstk_darwin(v109);
  v102 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v103 = &v94 - v9;
  v101 = sub_10076443C();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v98 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v99 = &v94 - v12;
  __chkstk_darwin(v13);
  v97 = &v94 - v14;
  __chkstk_darwin(v15);
  v17 = &v94 - v16;
  v18 = sub_100763ADC();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v94 - v23;
  v25 = type metadata accessor for AppPromotionCardLayout(0);
  sub_100016E2C(a2 + v25[18], &v119, &unk_10094DA00);
  v108 = v120;
  sub_10000CFBC(&v119, &unk_10094DA00);
  v116 = a1;
  v26 = [a1 traitCollection];
  v27 = [v26 preferredContentSizeCategory];
  LOBYTE(a1) = sub_10077087C();

  if (a1)
  {
    v28 = v25[13];
    v29 = v25[14];
    v30 = v25[16];
    v94 = v25[15];
    v102 = v30;
    LODWORD(v98) = *(a2 + v25[19]);
    if (qword_10093F630 != -1)
    {
      swift_once();
    }

    v95 = (a2 + v28);
    v31 = (a2 + v29);
    v32 = sub_10000A61C(v18, qword_10099CCB8);
    v99 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
    sub_10076D36C();
    v34 = v33;
    v35 = [v116 traitCollection];
    (*(v19 + 16))(v24, v32, v18);
    v36 = sub_100763A4C();
    v38 = v104;
    v96 = v31;
    if ((v39 & 1) == 0 && ((v36 | v37) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_10077071C())
      {
        if (qword_10093F520 != -1)
        {
          swift_once();
        }

        v40 = qword_100944C88;
      }

      else
      {
        if (qword_10093F528 != -1)
        {
          swift_once();
        }

        v40 = qword_100944CA0;
      }

      v50 = v101;
      v51 = sub_10000A61C(v101, v40);
      v52 = v100;
      v53 = v97;
      (*(v100 + 16))(v97, v51, v50);
      (*(v52 + 32))(v17, v53, v50);
      sub_1007643EC();
      sub_10076441C();
      sub_100763A5C();
      (*(v52 + 8))(v17, v50);
    }

    sub_10076398C();
    v55 = v54;

    (*(v19 + 8))(v24, v18);
    *&v117 = _swiftEmptyArrayStorage;
    sub_10000A5D4(&unk_10094D050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100783DD0;
    v120 = &type metadata for CGFloat;
    v121 = &protocol witness table for CGFloat;
    *&v119 = v34;
    v57 = v109;
    *(inited + 56) = v109;
    *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_10000DB7C((inited + 32));
    sub_10076DE8C();
    sub_1000F9168(inited);
    v58 = v116;
    v59 = v107;
    if (v108)
    {
      v120 = &type metadata for CGFloat;
      v121 = &protocol witness table for CGFloat;
      *&v119 = ceil(v55 + 16.0 + 16.0);
      v60 = v103;
      sub_10076DE8C();
      v61 = v117;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_10049CD5C(0, v61[2] + 1, 1, v61);
      }

      v63 = v61[2];
      v62 = v61[3];
      if (v63 >= v62 >> 1)
      {
        v61 = sub_10049CD5C((v62 > 1), v63 + 1, 1, v61);
      }

      v120 = v57;
      v121 = &protocol witness table for VerticalSpaceMeasurable;
      v64 = sub_10000DB7C(&v119);
      v65 = v106;
      (*(v106 + 16))(v64, v60, v57);
      v61[2] = v63 + 1;
      sub_100012498(&v119, &v61[5 * v63 + 4]);
      (*(v65 + 8))(v60, v57);
      *&v117 = v61;
    }

    (*(v111 + 104))(v110, enum case for StackMeasurable.Axis.vertical(_:), v112);
    v66 = v113;
    sub_10076D94C();
    sub_10076D92C();
    v68 = v67;
    (*(v114 + 8))(v66, v115);
    sub_10000CF78(a2, a2[3]);
    sub_1000FF02C();
    sub_10076D40C();
    v115 = *(v105 + 8);
    v115(v38, v59);
    sub_100770ACC();
    sub_10000CF78(v95, v95[3]);
    sub_10076D2AC();
    v70 = v69;
    v71 = v99;
    sub_10000CF78((a2 + *(v99 + 6)), *(a2 + *(v99 + 6) + 24));
    sub_10076D42C();
    *&v119 = v70;
    sub_10076D3FC();
    sub_10000CF78(v96, v96[3]);
    sub_10076D2AC();
    v73 = v72;
    sub_10000CF78((a2 + *(v71 + 7)), *(a2 + *(v71 + 7) + 24));
    sub_10076D42C();
    *&v119 = v73;
    sub_10076D3FC();
    if (v98)
    {
      sub_10000CF78((a2 + v94), *(a2 + v94 + 24));
      v74 = v71;
      v75 = [v58 traitCollection];
      sub_10076E0FC();

      sub_10000CF78((a2 + *(v74 + 8)), *(a2 + *(v74 + 8) + 24));
      v76 = [v58 traitCollection];
      sub_10076D41C();

      sub_10000CF78((a2 + *(v74 + 9)), *(a2 + *(v74 + 9) + 24));
      sub_1000FF02C();
      sub_10076D40C();
      v115(v38, v107);
    }

    sub_100016E2C(&v102[a2], &v117, &unk_10094DA00);
    if (v118)
    {
      sub_100012498(&v117, &v119);
      sub_10000CF78(&v119, v120);
      if ((sub_10076D24C() & 1) == 0)
      {
        sub_10000CF78(&v119, v120);
        sub_10076D2AC();
      }

      sub_10000CD74(&v119);
    }

    else
    {
      sub_10000CFBC(&v117, &unk_10094DA00);
    }
  }

  else
  {
    if (qword_10093F628 != -1)
    {
      swift_once();
    }

    v41 = sub_10000A61C(v18, qword_10099CCA0);
    type metadata accessor for AppPromotionCardLayout.Metrics(0);
    sub_10076D36C();
    v43 = v42;
    v44 = [v116 traitCollection];
    (*(v19 + 16))(v21, v41, v18);
    v45 = sub_100763A4C();
    v47 = v109;
    if ((v48 & 1) == 0 && ((v45 | v46) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_10077071C())
      {
        if (qword_10093F520 != -1)
        {
          swift_once();
        }

        v49 = qword_100944C88;
      }

      else
      {
        if (qword_10093F528 != -1)
        {
          swift_once();
        }

        v49 = qword_100944CA0;
      }

      v77 = v101;
      v78 = sub_10000A61C(v101, v49);
      v79 = v100;
      v80 = v98;
      (*(v100 + 16))(v98, v78, v77);
      v81 = v99;
      (*(v79 + 32))(v99, v80, v77);
      sub_1007643EC();
      sub_10076441C();
      sub_100763A5C();
      (*(v79 + 8))(v81, v77);
    }

    sub_10076398C();
    v83 = v82;

    (*(v19 + 8))(v21, v18);
    *&v117 = _swiftEmptyArrayStorage;
    sub_10000A5D4(&unk_10094D050);
    v84 = swift_initStackObject();
    *(v84 + 16) = xmmword_100783DD0;
    v120 = &type metadata for CGFloat;
    v121 = &protocol witness table for CGFloat;
    *&v119 = v43;
    *(v84 + 56) = v47;
    *(v84 + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_10000DB7C((v84 + 32));
    sub_10076DE8C();
    sub_1000F9168(v84);
    if (v108)
    {
      v120 = &type metadata for CGFloat;
      v121 = &protocol witness table for CGFloat;
      *&v119 = ceil(v83 + 4.0 + 4.0);
      v85 = v102;
      sub_10076DE8C();
      v86 = v117;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = sub_10049CD5C(0, v86[2] + 1, 1, v86);
      }

      v88 = v86[2];
      v87 = v86[3];
      if (v88 >= v87 >> 1)
      {
        v86 = sub_10049CD5C((v87 > 1), v88 + 1, 1, v86);
      }

      v120 = v47;
      v121 = &protocol witness table for VerticalSpaceMeasurable;
      v89 = sub_10000DB7C(&v119);
      v90 = v106;
      (*(v106 + 16))(v89, v85, v47);
      v86[2] = v88 + 1;
      sub_100012498(&v119, &v86[5 * v88 + 4]);
      (*(v90 + 8))(v85, v47);
      *&v117 = v86;
    }

    (*(v111 + 104))(v110, enum case for StackMeasurable.Axis.vertical(_:), v112);
    v91 = v113;
    sub_10076D94C();
    sub_10076D92C();
    v68 = v92;
    (*(v114 + 8))(v91, v115);
  }

  return v68;
}

uint64_t sub_1001DAA10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001DAA58()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001DAA9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001DAAB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1001DAAF0()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    return [*(*(v0 + 24) + OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_longPressGestureRecognizer) setEnabled:1];
  }

  return result;
}

char *sub_1001DAB1C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_clickAction;
  v3 = sub_10000A5D4(&qword_100955BD0);
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = &v0[OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_initialLongPressLocation];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_availabilityLabelView] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_appPromotionCardView] = [objc_allocWithZone(type metadata accessor for AppPromotionCardView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
  *&v0[OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_longPressGestureRecognizer] = v5;
  v14.receiver = v0;
  v14.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v14, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v10 = v6;
  [v10 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v10 setClipsToBounds:0];
  [v10 addSubview:*&v10[OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_availabilityLabelView]];
  v11 = OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_appPromotionCardView;
  [v10 addSubview:*&v10[OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_appPromotionCardView]];
  v12 = OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_longPressGestureRecognizer;
  [*&v10[OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_longPressGestureRecognizer] addTarget:v10 action:"stateChangedFor:"];
  [*&v10[v12] setMinimumPressDuration:0.1];
  [*&v10[v12] setDelegate:v10];
  [*&v10[v11] addGestureRecognizer:*&v10[v12]];

  return v10;
}

void sub_1001DADA0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v10 - 8);
  v12 = &v68 - v11;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_objectGraph] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupDataSource] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupCollectionView] = 0;
  swift_weakInit();
  v13 = &v4[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_impressionsUpdateBlock];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_impressionsScrollObserver] = 0;
  v14 = OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_compoundScrollObserver;
  v15 = objc_allocWithZone(sub_1007666AC());
  *&v4[v14] = sub_10076669C();
  v16 = &v4[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_listConfiguration];
  *v16 = 0;
  *(v16 + 1) = 1;
  v17 = [objc_allocWithZone(type metadata accessor for ImageHeadingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_iconHeadingView;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_iconHeadingView] = v17;
  v19 = qword_10093FA00;
  v20 = v17;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = *&v20[OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_imageView];
  v22 = qword_10094D060;
  v23 = [v21 image];
  if (!v23 || (v24 = v23, sub_100016F40(0, &qword_10094F610), v25 = v22, v26 = sub_100770EEC(), v24, v25, (v26 & 1) == 0))
  {
    [v21 setImage:v22];
    [v20 setNeedsLayout];
  }

  v27 = qword_10093FA08;
  v28 = *&v5[v18];
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = sub_10076D3DC();
  v30 = sub_10000A61C(v29, qword_10094D068);
  v31 = *(v29 - 8);
  v32 = *(v31 + 16);
  v32(v12, v30, v29);
  v33 = *(v31 + 56);
  v33(v12, 0, 1, v29);
  sub_1005A806C(v12);

  v34 = qword_10093FA10;
  v35 = *&v5[v18];
  if (v34 != -1)
  {
    swift_once();
  }

  sub_1001E083C(&qword_10094D080, v69);
  v36 = OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_metrics;
  swift_beginAccess();
  sub_1001E0898(v69, v35 + v36);
  swift_endAccess();
  [v35 setNeedsLayout];

  sub_1001E08F4(v69);
  [*(*&v5[v18] + OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_headingLabel) setNumberOfLines:1];
  v37 = [objc_allocWithZone(type metadata accessor for SearchHeadingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v38 = OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_titleHeadingView;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_titleHeadingView] = v37;
  v39 = qword_10093FA18;
  v40 = v37;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = sub_10000A61C(v29, qword_10094D0A8);
  v32(v12, v41, v29);
  v33(v12, 0, 1, v29);
  sub_100662DD4(v12);

  [*(*&v5[v38] + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_headingLabel) setNumberOfLines:2];
  v42 = type metadata accessor for LockupCollectionSearchResultContentView();
  v68.receiver = v5;
  v68.super_class = v42;
  v43 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v47 = v43;
  [v47 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v47 setClipsToBounds:0];
  v48 = sub_1001DC7CC();
  v49 = [objc_allocWithZone(UICollectionView) initWithFrame:v48 collectionViewLayout:{a1, a2, a3, a4}];

  v50 = OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupCollectionView;
  v51 = *&v47[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupCollectionView];
  *&v47[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupCollectionView] = v49;
  v52 = v49;

  if (!v52)
  {
    __break(1u);
    goto LABEL_21;
  }

  [v52 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v53 = *&v47[v50];
  if (!v53)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v53 setClipsToBounds:0];
  [v47 addSubview:*&v47[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_iconHeadingView]];
  [v47 addSubview:*&v47[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_titleHeadingView]];
  v54 = *&v47[v50];
  if (!v54)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v54 setDelegate:v47];
  v55 = *&v47[v50];
  if (!v55)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v56 = objc_opt_self();
  v57 = v55;
  v58 = [v56 clearColor];
  [v57 setBackgroundColor:v58];

  v59 = *&v47[v50];
  if (!v59)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  type metadata accessor for SmallSearchLockupCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v61 = v59;
  sub_1007708FC();
  v62 = sub_10076FF6C();

  [v61 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v62];

  v63 = *&v47[v50];
  if (!v63)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  type metadata accessor for SeparatorSpacerReusableView();
  v64 = swift_getObjCClassFromMetadata();
  v65 = v63;
  sub_1007708FC();
  v66 = sub_10076FF6C();

  sub_1007708FC();
  v67 = sub_10076FF6C();

  [v65 registerClass:v64 forSupplementaryViewOfKind:v66 withReuseIdentifier:v67];

  if (*&v47[v50])
  {
    [v47 addSubview:?];

    return;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_1001DB574()
{
  v1 = v0;
  swift_beginAccess();
  swift_weakAssign();
  if (swift_weakLoadStrong())
  {
    sub_10076813C();
    swift_allocObject();

    v2 = sub_10076814C();

    *(v1 + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_impressionsScrollObserver) = v2;
  }
}

void (*sub_1001DB630(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_1001DB6C8;
}

void sub_1001DB6C8(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    if (swift_weakLoadStrong())
    {
      v4 = v3[4];
      sub_10076813C();
      swift_allocObject();
      *(v4 + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_impressionsScrollObserver) = sub_10076814C();
    }
  }

  free(v3);
}

uint64_t sub_1001DB79C()
{
  v0 = sub_10076048C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.appstore(_:), v0, v2);
  v5 = sub_10076046C();
  result = (*(v1 + 8))(v4, v0);
  qword_10094D060 = v5;
  return result;
}

void sub_1001DB8A8()
{
  qword_10094D098 = &type metadata for CGFloat;
  unk_10094D0A0 = &protocol witness table for CGFloat;
  qword_10094D080 = 0x4008000000000000;
}

id sub_1001DB8E4(uint64_t a1, uint64_t *a2, id *a3)
{
  v5 = sub_10076D3DC();
  sub_10000DB18(v5, a2);
  v6 = sub_10000A61C(v5, a2);
  v8 = *a3;
  *v6 = *a3;
  *(v6 + 8) = UIFontWeightSemibold;
  (*(*(v5 - 8) + 104))();

  return v8;
}

uint64_t sub_1001DB9A0()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_10094D0C0);
  v1 = sub_10000A61C(v0, qword_10094D0C0);
  if (qword_100940A10 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A61C(v0, qword_1009A0C40);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001DBA68()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &type metadata for CGFloat;
  v15 = &protocol witness table for CGFloat;
  *&v13 = 0x4010000000000000;
  if (qword_10093FA20 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v5 = sub_10000A61C(v4, qword_10094D0C0);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v11 = sub_10076D9AC();
  v12 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v10);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v6 = sub_10000DB7C(v9);
  (*(v1 + 16))(v6, v3, v0);
  sub_10076D9BC();
  (*(v1 + 8))(v3, v0);
  sub_10003F19C(&v13, &unk_10094D0D8);
  return sub_10003F19C(&v10, &unk_10094D100);
}

id sub_1001DBC90(id result, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_listConfiguration];
  if (v2[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_listConfiguration] == (result & 1) && *&v2[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_listConfiguration + 8] == a2)
  {
    return result;
  }

  v5 = result;
  *v3 = result & 1;
  *(v3 + 1) = a2;
  v6 = OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupCollectionView;
  result = *&v2[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupCollectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = [result collectionViewLayout];
  [v7 invalidateLayout];

  result = *&v2[v6];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  [result setScrollEnabled:(v5 & 1) == 0];

  return [v2 setNeedsLayout];
}

uint64_t sub_1001DBD6C()
{
  v1 = v0;
  v2 = sub_10076D1FC();
  v68 = *(v2 - 8);
  v69 = v2;
  __chkstk_darwin(v2);
  v67 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_10076D1AC();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100766BEC();
  v65 = *(v5 - 8);
  v66 = v5;
  __chkstk_darwin(v5);
  v63 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = &v54 - v8;
  v9 = sub_10076443C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v58 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v54 - v13;
  v15 = sub_100763ADC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for LockupCollectionSearchResultContentView();
  v81.receiver = v0;
  v81.super_class = v19;
  objc_msgSendSuper2(&v81, "layoutSubviews");
  [v0 bounds];
  v61 = v20;
  [v0 layoutMargins];
  v70 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_listConfiguration + 8);
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A61C(v15, qword_10099DDA0);
  v22 = [v1 traitCollection];
  (*(v16 + 16))(v18, v21, v15);
  v23 = sub_100763A4C();
  if ((v25 & 1) == 0 && ((v23 | v24) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_10077071C())
    {
      if (qword_10093F520 != -1)
      {
        swift_once();
      }

      v26 = qword_100944C88;
    }

    else
    {
      if (qword_10093F528 != -1)
      {
        swift_once();
      }

      v26 = qword_100944CA0;
    }

    v27 = sub_10000A61C(v9, v26);
    v28 = v58;
    (*(v10 + 16))(v58, v27, v9);
    (*(v10 + 32))(v14, v28, v9);
    sub_1007643EC();
    sub_10076441C();
    sub_100763A5C();
    (*(v10 + 8))(v14, v9);
  }

  sub_10076398C();

  (*(v16 + 8))(v18, v15);
  v29 = v70 - 1;
  if (__OFSUB__(v70, 1))
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_16;
  }

  v30 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_iconHeadingView);
  v80[3] = type metadata accessor for ImageHeadingView();
  v80[4] = &protocol witness table for UIView;
  v80[0] = v30;
  v31 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_titleHeadingView);
  result = type metadata accessor for SearchHeadingView();
  v79[3] = result;
  v79[4] = &protocol witness table for UIView;
  v79[0] = v31;
  v33 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupCollectionView);
  if (!v33)
  {
    __break(1u);
    return result;
  }

  v58 = v1;
  v77[0] = v33;
  sub_100016F40(0, &unk_10094D220);
  v34 = v30;
  v35 = v31;
  sub_10076D28C();
  v18 = v62;
  v29 = v59;
  v1 = v60;
  if (qword_10093FA08 != -1)
  {
    goto LABEL_22;
  }

LABEL_16:
  v36 = sub_10076D3DC();
  v37 = sub_10000A61C(v36, qword_10094D068);
  v38 = *(v36 - 8);
  v70 = *(v38 + 16);
  v57 = v38 + 16;
  v70(v29, v37, v36);
  v39 = v1[13];
  v56 = enum case for FontSource.useCase(_:);
  v55 = v39;
  v39(v29);
  v40 = sub_10076D9AC();
  v77[3] = v40;
  v77[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v77);
  v75 = v18;
  v76 = &protocol witness table for FontSource;
  v41 = sub_10000DB7C(v74);
  v42 = v1[2];
  v42(v41, v29, v18);
  sub_10076D9BC();
  v43 = v1[1];
  v43(v29, v18);
  if (qword_10093FA18 != -1)
  {
    swift_once();
  }

  v44 = sub_10000A61C(v36, qword_10094D0A8);
  v70(v29, v44, v36);
  v55(v29, v56, v18);
  v75 = v40;
  v76 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v74);
  v72 = v18;
  v73 = &protocol witness table for FontSource;
  v45 = sub_10000DB7C(v71);
  v42(v45, v29, v18);
  sub_10076D9BC();
  v43(v29, v18);
  v72 = &type metadata for CGFloat;
  v73 = &protocol witness table for CGFloat;
  v71[0] = 0x4030000000000000;
  v46 = v64;
  sub_100766BDC();
  v48 = v65;
  v47 = v66;
  (*(v65 + 16))(v63, v46, v66);
  sub_10000A570(v80, v77);
  sub_10000A570(v79, v74);
  sub_10000A570(v78, v71);
  sub_100766C0C();
  swift_allocObject();
  v77[0] = sub_100766BFC();
  (*(v48 + 8))(v46, v47);
  sub_10000CD74(v78);
  sub_10000CD74(v79);
  sub_10000CD74(v80);
  sub_1001E07F4(&qword_100950880, 255, &type metadata accessor for SearchLockupListLayout);
  v49 = v67;
  v50 = v58;
  sub_10076DFCC();
  (*(v68 + 8))(v49, v69);
  v51 = &v50[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_impressionsUpdateBlock];
  swift_beginAccess();
  v52 = *v51;
  if (*v51)
  {

    v52(v53);
    sub_1000167E0(v52);
  }
}

id sub_1001DC7CC()
{
  ObjectType = swift_getObjectType();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = ObjectType;
  v3 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v7[4] = sub_1001DFF9C;
  v7[5] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1002BAFEC;
  v7[3] = &unk_10088C388;
  v4 = _Block_copy(v7);

  v5 = [v3 initWithSectionProvider:v4];
  _Block_release(v4);

  return v5;
}

id sub_1001DC8F8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = Strong;
  v5 = Strong[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_listConfiguration];
  v6 = *&Strong[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_listConfiguration + 8];
  [Strong layoutMargins];
  v9 = sub_1001DFFBC(v5, v6, a2, v7, v8);
  if (v9)
  {
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1001E0468;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100751F08;
    aBlock[3] = &unk_10088C3B0;
    v11 = _Block_copy(aBlock);
    v12 = v9;

    [v12 setVisibleItemsInvalidationHandler:v11];

    _Block_release(v11);
    v4 = v12;
  }

  return v9;
}

void sub_1001DCA68()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_impressionsScrollObserver);
    v2 = Strong;

    if (v1)
    {
      sub_10076813C();
      sub_10076194C();
    }
  }
}

uint64_t sub_1001DCD58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10000A5D4(&qword_10094D1E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v63 - v7;
  v9 = sub_10076947C();
  sub_1001E07F4(&qword_10095A460, 255, &type metadata accessor for LockupCollectionSearchResult);
  result = sub_10076332C();
  v11 = v67;
  if (!v67)
  {
    return result;
  }

  v63[1] = v9;
  v64 = v8;
  v65 = v6;
  v66 = v5;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_objectGraph] = a2;

  v12 = *&v2[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_iconHeadingView];
  sub_10076946C();
  v13 = *(v12 + OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_headingLabel);
  v14 = sub_10076FF6C();

  [v13 setText:v14];

  v15 = *&v2[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_titleHeadingView];
  sub_10076945C();
  v16 = *(v15 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_headingLabel);
  v17 = sub_10076FF6C();

  [v16 setText:v17];

  v18 = sub_10076942C();
  if (v18)
  {
    v19 = v18;
    sub_10076B8EC();
    if (v20)
    {
      v21 = *(v15 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButton);
      v22 = sub_10076FF6C();

      [v21 setTitle:v22 forState:0];

      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = v19;
      v25 = (v15 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButtonHandler);
      v26 = *(v15 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButtonHandler);
      *v25 = sub_1001DFF5C;
      v25[1] = v24;

      sub_1000167E0(v26);

      goto LABEL_7;
    }
  }

  [*(v15 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButton) setTitle:0 forState:0];
  v27 = (v15 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButtonHandler);
  v28 = *(v15 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButtonHandler);
  *v27 = 0;
  v27[1] = 0;
  sub_1000167E0(v28);
LABEL_7:
  swift_getKeyPath();
  sub_10076338C();

  v29 = v67;
  v30 = sub_10077071C();
  v31 = sub_1007706EC();

  v32 = 4;
  if (v31)
  {
    v32 = 2;
  }

  if (v30)
  {
    v33 = 1;
  }

  else
  {
    v33 = v32;
  }

  result = sub_1001DBC90(((v31 & 1) == 0), v33);
  v34 = *&v3[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupCollectionView];
  if (!v34)
  {
    __break(1u);
    goto LABEL_57;
  }

  swift_allocObject();
  swift_weakInit();
  v35 = objc_allocWithZone(sub_10000A5D4(&unk_10094D1F0));
  v36 = v34;
  v37 = sub_10076E72C();
  v38 = OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupDataSource;
  v39 = *&v3[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupDataSource];
  *&v3[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupDataSource] = v37;
  v40 = v37;

  v41 = swift_allocObject();
  *(v41 + 16) = (v31 & 1) == 0;
  *(v41 + 24) = v33;
  sub_10076E73C();

  if ((v31 & 1) == 0)
  {
    v44 = v11;
    v45 = sub_10076944C();
    v46 = v45;
    v47 = v45 & 0xFFFFFFFFFFFFFF8;
    v48 = v45 >> 62;
    if (!(v45 >> 62))
    {
      v49 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v49 >= v33)
      {
        v50 = v33;
      }

      else
      {
        v50 = *(v47 + 16);
      }

      if (v49 >= v50)
      {
LABEL_20:
        if ((v46 & 0xC000000000000001) != 0 && v50)
        {
          sub_10076BC0C();

          v51 = 0;
          do
          {
            v52 = v51 + 1;
            sub_10077147C(v51);
            v51 = v52;
          }

          while (v50 != v52);
        }

        else
        {
        }

        if (v48)
        {
          v44 = sub_10077159C();
          v31 = v53;
          v33 = v54;
          v50 = v55;

          if (v50)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v33 = 0;
          v44 = v46 & 0xFFFFFFFFFFFFFF8;
          v31 = (v46 & 0xFFFFFFFFFFFFFF8) + 32;
          v50 = (2 * v50) | 1;
          if (v50)
          {
LABEL_31:
            sub_10077169C();
            swift_unknownObjectRetain_n();
            v56 = swift_dynamicCastClass();
            if (!v56)
            {
              swift_unknownObjectRelease();
              v56 = _swiftEmptyArrayStorage;
            }

            v57 = v56[2];

            if (!__OFSUB__(v50 >> 1, v33))
            {
              if (v57 == (v50 >> 1) - v33)
              {
                v58 = swift_dynamicCastClass();
                swift_unknownObjectRelease_n();
                v43 = v64;
                if (v58)
                {
LABEL_37:

                  v42 = sub_10076943C();
                  goto LABEL_38;
                }

LABEL_36:
                swift_unknownObjectRelease();
                goto LABEL_37;
              }

              goto LABEL_55;
            }

LABEL_54:
            __break(1u);
LABEL_55:
            swift_unknownObjectRelease_n();
          }
        }

        sub_1002348D4(v44, v31, v33, v50);
        v43 = v64;
        goto LABEL_36;
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (v45 < 0)
    {
      v44 = v45;
    }

    else
    {
      v44 = v45 & 0xFFFFFFFFFFFFFF8;
    }

    v31 = sub_10077158C();
    result = sub_10077158C();
    if ((result & 0x8000000000000000) == 0)
    {
      if (v31 >= v33)
      {
        v62 = v33;
      }

      else
      {
        v62 = v31;
      }

      if (v31 >= 0)
      {
        v50 = v62;
      }

      else
      {
        v50 = v33;
      }

      if (sub_10077158C() >= v50)
      {
        goto LABEL_20;
      }

      goto LABEL_53;
    }

LABEL_57:
    __break(1u);
    return result;
  }

  v42 = v11;
  v43 = v64;
LABEL_38:
  sub_10000A5D4(&unk_100942870);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1007841E0;
  *(v59 + 32) = v42;
  swift_getKeyPath();
  sub_1001E07F4(&qword_10094D200, 255, &type metadata accessor for LockupCollectionSearchResult);
  sub_1001E07F4(&qword_10094D208, 255, &type metadata accessor for Lockup);

  sub_10076D47C();

  v60 = *&v3[v38];
  if (v60)
  {
    v61 = v60;
    sub_10076E76C();
  }

  [v3 setNeedsLayout];

  return (*(v65 + 8))(v43, v66);
}

void sub_1001DD4E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_objectGraph);
    v8 = Strong;

    if (v7)
    {
      v9 = sub_10000A5D4(&unk_1009428E0);
      sub_10076F5AC();
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v5, 1, v9) == 1)
      {

        sub_10000CFBC(v5, &unk_100943200);
      }

      else
      {
        sub_100263BF0(a2, 1, v7, v5);

        (*(v10 + 8))(v5, v9);
      }
    }
  }
}

char *sub_1001DD680(void *a1)
{
  v2 = sub_10076BF6C();
  __chkstk_darwin(v2 - 8);
  v4 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v5 - 8);
  v7 = v41 - v6;
  v8 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v8 - 8);
  v10 = v41 - v9;
  v11 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v11 - 8);
  v13 = v41 - v12;
  v14 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v14 - 8);
  v16 = v41 - v15;
  v17 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v17 - 8);
  v43 = v41 - v18;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v41[3] = v4;
  v42 = v10;
  v20 = Strong;
  type metadata accessor for SmallSearchLockupCollectionViewCell();
  sub_1007708FC();
  v21 = sub_10076FF6C();

  isa = sub_10075E02C().super.isa;
  v23 = [a1 dequeueReusableCellWithReuseIdentifier:v21 forIndexPath:isa];

  v24 = swift_dynamicCastClass();
  if (v24)
  {
    sub_10000A5D4(&qword_10094D1C8);
    sub_10076F44C();
    v25 = v44;
    sub_100760C4C();
    sub_10076F64C();
    v26 = v20;
    sub_10076FC1C();
    v41[2] = v44;
    v27 = sub_10075F78C();
    v28 = v43;
    (*(*(v27 - 8) + 56))(v43, 1, 1, v27);
    v29 = *&v24[OBJC_IVAR____TtC20ProductPageExtension35SmallSearchLockupCollectionViewCell_lockupView];
    v30 = sub_10000A5D4(&qword_100945590);
    (*(*(v30 - 8) + 56))(v16, 1, 1, v30);
    v31 = sub_1007628DC();
    (*(*(v31 - 8) + 56))(v13, 1, 1, v31);
    v32 = sub_10000A5D4(&unk_100946750);
    v33 = v42;
    (*(*(v32 - 8) + 56))(v42, 1, 1, v32);
    v34 = sub_10076C54C();
    (*(*(v34 - 8) + 56))(v7, 1, 1, v34);
    sub_1004D0A60(v25, v29, v16, v26, 0, 0, v28, v13, v7, v33);
    sub_10000CFBC(v7, &unk_100949290);
    v29[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v29 setNeedsLayout];
    sub_10000CFBC(v33, &qword_10094F730);
    sub_10000CFBC(v13, &unk_1009492A0);
    sub_10000CFBC(v16, &unk_100946760);
    v35 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
    v36 = *&v29[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView];
    sub_10075FCAC();
    v37 = sub_10075FD2C();
    sub_1001E07F4(&qword_100941820, 255, &type metadata accessor for ArtworkView);
    v41[1] = v37;
    sub_100760BFC();
    v42 = v25;
    if (sub_10076BB5C())
    {
      v41[0] = v35;
      if (qword_10093FBE0 != -1)
      {
        swift_once();
      }

      v38 = sub_100763ADC();
      sub_10000A61C(v38, qword_10099DDA0);
      sub_1007639AC();
      [v36 contentMode];
      sub_10076BFCC();
      sub_10076BF7C();
      sub_10075FCCC();
      [v36 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10);
        sub_100770D5C();
      }

      sub_10075FB8C();
      v39 = *&v29[v41[0]];
      sub_100760B8C();
    }

    [v24 setNeedsLayout];

    sub_10000CFBC(v43, &unk_10094D210);
  }

  else
  {
  }

  return v24;
}

uint64_t sub_1001DDDF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_10076FF6C();
  type metadata accessor for SeparatorSpacerReusableView();
  sub_1007708FC();
  v9 = sub_10076FF6C();

  isa = sub_10075E02C().super.isa;
  v11 = [a1 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v9 forIndexPath:isa];

  v12 = swift_dynamicCastClass();
  v13 = v12;
  if (!v12)
  {

    return v13;
  }

  v14 = v12 + OBJC_IVAR____TtC20ProductPageExtension27SeparatorSpacerReusableView_separatorInsets;
  *v14 = xmmword_100793C00;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  result = sub_10075E09C();
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (!a6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (result != 0x7FFFFFFFFFFFFFFFLL || a6 != -1)
  {
    [v13 setHidden:(result + 1) % a6 == 0];
    return v13;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_1001DDF44(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v2 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v37 - v3;
  v5 = sub_10076F7FC();
  v47 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&qword_10094D1C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_10000A5D4(&qword_10094D1C8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  v15 = sub_10075E11C();
  v55 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v50 = v14;
  v48 = v11;
  v57 = Strong;
  v46 = OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupCollectionView;
  v19 = *&Strong[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupCollectionView];
  if (!v19)
  {
    goto LABEL_25;
  }

  v20 = [v19 indexPathsForVisibleItems];
  v21 = sub_1007701BC();

  v56 = v21;
  v22 = v48;
  v54 = *(v21 + 16);
  if (!v54)
  {
LABEL_21:

    return;
  }

  v23 = 0;
  v52 = v56 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
  v53 = OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupDataSource;
  v51 = v55 + 16;
  v49 = (v12 + 48);
  v45 = (v12 + 32);
  v42 = (v47 + 6);
  v39 = (v47 + 4);
  v38 = (v47 + 1);
  v43 = (v12 + 8);
  v24 = (v55 + 8);
  v47 = (v12 + 56);
  v40 = v7;
  v44 = v10;
  while (v23 < *(v56 + 16))
  {
    (*(v55 + 16))(v17, v52 + *(v55 + 72) * v23, v15);
    v25 = *&v57[v53];
    if (!v25)
    {
      (*v24)(v17, v15);
      (*v47)(v10, 1, 1, v22);
LABEL_6:
      sub_10000CFBC(v10, &qword_10094D1C0);
      goto LABEL_7;
    }

    v26 = v25;
    sub_10076E74C();

    if ((*v49)(v10, 1, v22) == 1)
    {
      (*v24)(v17, v15);
      goto LABEL_6;
    }

    v27 = v10;
    v28 = v15;
    v29 = v4;
    (*v45)(v50, v27, v22);
    v30 = *&v57[v46];
    if (!v30)
    {
      goto LABEL_24;
    }

    v31 = v30;
    isa = sub_10075E02C().super.isa;
    v33 = [v31 cellForItemAtIndexPath:isa];

    if (v33)
    {
      swift_getKeyPath();
      v4 = v29;
      v34 = v48;
      v35 = v50;
      sub_10076F43C();

      if ((*v42)(v4, 1, v5) == 1)
      {

        (*v43)(v35, v34);
        (*v24)(v17, v28);
        sub_10000CFBC(v4, &qword_1009492E0);
        v22 = v34;
        v15 = v28;
      }

      else
      {
        v36 = v40;
        (*v39)(v40, v4, v5);
        sub_100016F40(0, &qword_10094D1D0);
        sub_1007709BC();
        if ((v58 & 1) == 0)
        {
          sub_1007660EC();
        }

        (*v38)(v36, v5);
        v22 = v48;
        (*v43)(v50, v48);
        v15 = v28;
        (*v24)(v17, v28);
      }
    }

    else
    {
      v22 = v48;
      (*v43)(v50, v48);
      (*v24)(v17, v28);
      v4 = v29;
      v15 = v28;
    }

    v10 = v44;
LABEL_7:
    if (v54 == ++v23)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

id sub_1001DE640()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockupCollectionSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for LockupCollectionSearchResultContentView.ListConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for LockupCollectionSearchResultContentView.ListConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void (*sub_1001DE83C(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1001DB630(v2);
  return sub_100019FCC;
}

uint64_t sub_1001DE8AC()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1);
  return v2;
}

uint64_t sub_1001DE908(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6);
}

void (*sub_1001DE9C8(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a2;

  return sub_1001DEB68;
}

uint64_t sub_1001DEAA8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1001E07F4(&qword_10094D1A8, a2, type metadata accessor for LockupCollectionSearchResultContentView);
  result = sub_1001E07F4(&unk_10094D1B0, v3, type metadata accessor for LockupCollectionSearchResultContentView);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001DEB2C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1001DEB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), unsigned int a7, void (*a8)(char *, uint64_t, uint64_t), void *a9, uint64_t a10)
{
  v88 = a8;
  v87 = a7;
  v84 = a5;
  v85 = a6;
  v81 = a3;
  v82 = a4;
  v98 = a2;
  v80 = a1;
  v90 = sub_10076D1AC();
  v86 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100766BEC();
  v93 = *(v11 - 8);
  v94 = v11;
  __chkstk_darwin(v11);
  v91 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v92 = &v71 - v14;
  v97 = sub_10076997C();
  v99 = *(v97 - 8);
  __chkstk_darwin(v97);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for ImageHeadingView();
  if (qword_10093FA00 != -1)
  {
    swift_once();
  }

  v17 = qword_10094D060;
  if (qword_10093FA08 != -1)
  {
    swift_once();
  }

  v18 = sub_10076D3DC();
  v19 = sub_10000A61C(v18, qword_10094D068);
  if (qword_10093FA10 != -1)
  {
    swift_once();
  }

  v20 = sub_100016F40(0, &qword_100942F00);
  v21 = [a9 traitCollection];
  v96 = v20;
  v22 = sub_100770B3C();

  v23 = objc_opt_self();
  v78 = v22;
  v75 = [v23 configurationWithFont:v22];
  v24 = [v17 imageByApplyingSymbolConfiguration:?];
  v25 = v24;
  v95 = v18;
  if (v24)
  {
    [v24 size];
  }

  v26 = sub_10076DDDC();
  swift_allocObject();
  v27 = sub_10076DDBC();

  v28 = [a9 traitCollection];
  v83 = v19;
  sub_100770B3C();

  v29 = sub_10076C04C();
  *(&v109 + 1) = v29;
  v77 = sub_1001E07F4(&qword_100943230, 255, &type metadata accessor for Feature);
  *&v110 = v77;
  v30 = sub_10000DB7C(&v108);
  v31 = *(v29 - 8);
  v32 = *(v31 + 104);
  v76 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v73 = v31 + 104;
  v74 = v32;
  v32(v30);
  sub_10076C90C();
  sub_10000CD74(&v108);
  sub_10076996C();
  v33 = sub_10076995C();
  v35 = v34;
  v36 = *(v99 + 8);
  v99 += 8;
  v72 = v36;
  v36(v16, v97);
  v37 = *(v35 + 8);

  swift_unknownObjectRetain();
  sub_1005A8BB8(v27, &protocol witness table for LayoutViewPlaceholder, v33, v37, qword_10094D080, &v108);

  swift_unknownObjectRelease();
  sub_10016C4BC(&v108, &v113);
  v38 = swift_allocObject();
  sub_1001A8FB8(&v113, (v38 + 16));
  swift_allocObject();
  v98 = sub_10076DD9C();

  swift_unknownObjectRelease();

  sub_10000CD74(&v108);
  if (qword_10093FA18 != -1)
  {
    swift_once();
  }

  v39 = v95;
  v40 = sub_10000A61C(v95, qword_10094D0A8);
  if (qword_10093FA20 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v39, qword_10094D0C0);
  if (qword_10093FA28 != -1)
  {
    swift_once();
  }

  v41 = [a9 traitCollection];
  v80 = v40;
  sub_100770B3C();

  *(&v109 + 1) = v29;
  *&v110 = v77;
  v42 = sub_10000DB7C(&v108);
  v74(v42, v76, v29);
  sub_10076C90C();
  sub_10000CD74(&v108);
  sub_10076996C();
  v43 = sub_10076995C();
  v45 = v44;
  v72(v16, v97);
  v46 = swift_allocObject();
  v47 = v85;
  *(v46 + 16) = v84;
  *(v46 + 24) = v47;
  swift_allocObject();

  v48 = sub_10076DD9C();
  sub_1001DFBC4(&unk_10094D0D8, &v108);
  v49 = swift_allocObject();
  v50 = v111;
  *(v49 + 48) = v110;
  *(v49 + 64) = v50;
  *(v49 + 80) = v112;
  v51 = v109;
  *(v49 + 16) = v108;
  *(v49 + 32) = v51;
  *(v49 + 96) = v43;
  *(v49 + 104) = v45;
  *(v49 + 112) = v48;
  swift_allocObject();
  v52 = sub_10076DD9C();
  v53 = swift_allocObject();
  *(v53 + 16) = a10;
  *(v53 + 24) = v87 & 1;
  *(v53 + 32) = v88;
  swift_allocObject();
  v99 = sub_10076DD9C();
  *(&v109 + 1) = v26;
  *&v110 = &protocol witness table for LayoutViewPlaceholder;
  v107[4] = &protocol witness table for LayoutViewPlaceholder;
  *&v108 = v98;
  v114 = v26;
  v115 = &protocol witness table for LayoutViewPlaceholder;
  *&v113 = v52;
  v97 = v52;
  v107[3] = v26;
  v107[0] = v99;
  v54 = *(v39 - 8);
  v88 = *(v54 + 16);
  v96 = v54 + 16;
  v55 = v39;
  v56 = v89;
  v88(v89, v83, v55);
  v87 = enum case for FontSource.useCase(_:);
  v57 = v86;
  v85 = *(v86 + 104);
  v58 = v90;
  v85(v56);
  v59 = sub_10076D9AC();
  v106[3] = v59;
  v106[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v106);
  v104 = v58;
  v105 = &protocol witness table for FontSource;
  v60 = sub_10000DB7C(v103);
  v61 = *(v57 + 16);
  v61(v60, v56, v58);

  sub_10076D9BC();
  v62 = *(v57 + 8);
  v62(v56, v58);
  v88(v56, v80, v95);
  (v85)(v56, v87, v58);
  v104 = v59;
  v105 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v103);
  v101 = v58;
  v102 = &protocol witness table for FontSource;
  v63 = sub_10000DB7C(v100);
  v61(v63, v56, v58);
  sub_10076D9BC();
  v62(v56, v58);
  v101 = &type metadata for CGFloat;
  v102 = &protocol witness table for CGFloat;
  v100[0] = 0x4030000000000000;
  v64 = v92;
  sub_100766BDC();
  v66 = v93;
  v65 = v94;
  (*(v93 + 16))(v91, v64, v94);
  sub_10000A570(&v108, v106);
  sub_10000A570(&v113, v103);
  sub_10000A570(v107, v100);
  sub_100766C0C();
  swift_allocObject();
  v67 = sub_100766BFC();
  (*(v66 + 8))(v64, v65);
  sub_10000CD74(v107);
  sub_10000CD74(&v113);
  sub_10000CD74(&v108);
  *&v108 = v67;
  sub_1001E07F4(&qword_10094D1E0, 255, &type metadata accessor for SearchLockupListLayout);
  sub_10076D2AC();
  v69 = v68;

  return v69;
}

double sub_1001DF800()
{
  v1 = sub_10076469C();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10076C38C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076947C();
  sub_1001E07F4(&qword_10095A460, 255, &type metadata accessor for LockupCollectionSearchResult);
  sub_10076332C();
  if (!v28)
  {
    return 0.0;
  }

  v26 = v3;
  v27 = v2;
  sub_1007632FC();
  if (qword_100940540 != -1)
  {
    swift_once();
  }

  v25 = v0;

  sub_10076C32C();
  swift_getKeyPath();
  sub_10076338C();

  v6 = v28;
  v7 = sub_10077071C();
  v8 = sub_1007706EC();

  v9 = 4;
  if (v8)
  {
    v9 = 2;
  }

  if (v7)
  {
    v9 = 1;
  }

  v24 = v9;
  HIDWORD(v23) = v8 ^ 1;
  v10 = sub_10076946C();
  v12 = v11;
  v13 = sub_10076945C();
  v15 = v14;
  if (sub_10076942C())
  {
    v16 = sub_10076B8EC();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  sub_10076C2FC();
  v20 = sub_100630CB4();
  swift_getObjectType();
  sub_1001DEB94(v10, v12, v13, v15, v16, v18, BYTE4(v23) & 1, v24, v20, v25);
  v19 = v21;
  swift_unknownObjectRelease();

  (*(v26 + 8))(v5, v27);
  return v19;
}

uint64_t sub_1001DFB4C()
{
  sub_10000CD74(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001DFB84()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001DFC20()
{
  sub_10000CD74(v0 + 16);
  sub_10000CD74(v0 + 56);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 120, 7);
}

void sub_1001DFC90(void *a1)
{
  v3 = *(v1 + 32);
  swift_getObjectType();
  sub_1001DFDDC(v3, a1);
}

void sub_1001DFCF8()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_objectGraph) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupCollectionView) = 0;
  swift_weakInit();
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_impressionsUpdateBlock);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_impressionsScrollObserver) = 0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_compoundScrollObserver;
  v3 = objc_allocWithZone(sub_1007666AC());
  *(v0 + v2) = sub_10076669C();
  sub_10077156C();
  __break(1u);
}

void sub_1001DFDDC(uint64_t a1, void *a2)
{
  type metadata accessor for SmallLockupView();
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v4 = sub_100763ADC();
  v5 = sub_10000A61C(v4, qword_10099DDA0);
  sub_100262AD0(v5, a2);
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
  }
}

uint64_t sub_1001DFEBC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001DFF1C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001DFF64()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001DFFA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1001DFFBC(char a1, uint64_t a2, void *a3, double a4, double a5)
{
  v8 = [objc_opt_self() layoutAnchorWithEdges:4 absoluteOffset:{0.0, 16.0}];
  v9 = objc_opt_self();
  v10 = 1.0;
  v11 = [v9 fractionalWidthDimension:1.0];
  v12 = [v9 absoluteDimension:16.0];
  v13 = objc_opt_self();
  v14 = [v13 sizeWithWidthDimension:v11 heightDimension:v12];

  type metadata accessor for SeparatorSpacerReusableView();
  sub_1007708FC();
  v15 = v8;
  v16 = sub_10076FF6C();

  v17 = [objc_opt_self() supplementaryItemWithLayoutSize:v14 elementKind:v16 containerAnchor:v15];

  v18 = [v9 fractionalWidthDimension:1.0];
  v41 = a2;
  v19 = [v9 fractionalHeightDimension:1.0 / a2];
  v20 = [v13 sizeWithWidthDimension:v18 heightDimension:v19];

  sub_10000A5D4(&unk_100942870);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007841E0;
  *(v21 + 32) = v17;
  sub_100016F40(0, &unk_10095DD70);
  v22 = v17;
  isa = sub_1007701AC().super.isa;

  v24 = [objc_opt_self() itemWithLayoutSize:v20 supplementaryItems:isa];

  [objc_msgSend(a3 "container")];
  v26 = v25;
  swift_unknownObjectRelease();
  if (v26 <= 0.0)
  {
    v29 = &selRef_estimatedDimension_;
  }

  else
  {
    [objc_msgSend(a3 "container")];
    v28 = v27;
    swift_unknownObjectRelease();
    v10 = v28 - a4 - a5;
    v29 = &selRef_absoluteDimension_;
  }

  v30 = [v9 *v29];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v9 fractionalHeightDimension:1.0];
  v34 = [v13 sizeWithWidthDimension:v32 heightDimension:v33];

  v35 = [v31 verticalGroupWithLayoutSize:v34 subitem:v24 count:v41];
  v36 = [objc_opt_self() fixedSpacing:16.0];
  [v35 setInterItemSpacing:v36];

  v37 = [objc_opt_self() sectionWithGroup:v35];
  [v37 setInterGroupSpacing:8.0];
  [v37 setContentInsets:{0.0, a4, 0.0, a5}];
  if (a1)
  {
    v38 = 0;
  }

  else
  {
    v38 = 4;
  }

  [v37 setOrthogonalScrollingBehavior:v38];

  return v37;
}

void sub_1001E0470()
{
  v1 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = sub_10000A5D4(&qword_10094D1C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_10000A5D4(&qword_10094D1C8);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v12 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_objectGraph);
  if (v12)
  {
    v13 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupDataSource);
    if (v13)
    {

      v14 = v13;
      sub_10076E74C();

      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        (*(v8 + 32))(v11, v6, v7);
        sub_10076F44C();
        v17 = sub_10076B9FC();

        if (!v17)
        {
          (*(v8 + 8))(v11, v7);

          return;
        }

        v18 = sub_10000A5D4(&unk_1009428E0);
        sub_10076F5AC();
        v19 = *(v18 - 8);
        if ((*(v19 + 48))(v3, 1, v18) != 1)
        {
          sub_100263BF0(v17, 1, v12, v3);

          (*(v8 + 8))(v11, v7);
          (*(v19 + 8))(v3, v18);
          return;
        }

        (*(v8 + 8))(v11, v7);

        v15 = &unk_100943200;
        v16 = v3;
        goto LABEL_7;
      }
    }

    else
    {
      (*(v8 + 56))(v6, 1, 1, v7, v9);
    }

    v15 = &qword_10094D1C0;
    v16 = v6;
LABEL_7:
    sub_10000CFBC(v16, v15);
  }
}

uint64_t sub_1001E07F4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1001E095C()
{
  result = qword_10094D230;
  if (!qword_10094D230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D230);
  }

  return result;
}

uint64_t sub_1001E09BC()
{
  v1 = sub_10075DDBC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10000A5D4(&unk_100942870);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100786040;
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v38[1] = type metadata accessor for ActionDebugSetting();
  v6 = swift_allocObject();
  *(v6 + 56) = 0xD000000000000028;
  *(v6 + 64) = 0x80000001007D8A20;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = sub_1001E1228;
  *(v6 + 112) = v5;
  v7 = v0;

  sub_10075DDAC();
  v8 = sub_10075DD8C();
  v10 = v9;
  v11 = *(v2 + 8);
  v41 = v1;
  v42 = v2 + 8;
  v11(v4, v1);
  v43 = v8;
  v44 = v10;
  sub_10077140C();

  v12 = v39;
  *(v39 + 32) = v6;
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  v14 = swift_allocObject();
  *(v14 + 56) = 0xD000000000000025;
  *(v14 + 64) = 0x80000001007D8A50;
  *(v14 + 72) = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 104) = sub_1001E1280;
  *(v14 + 112) = v13;
  v15 = v7;

  sub_10075DDAC();
  v16 = sub_10075DD8C();
  v18 = v17;
  v11(v4, v1);
  v43 = v16;
  v44 = v18;
  sub_10077140C();

  v12[5] = v14;
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  v20 = swift_allocObject();
  *(v20 + 56) = 0xD000000000000029;
  *(v20 + 64) = 0x80000001007D8A80;
  *(v20 + 72) = 0u;
  *(v20 + 88) = 0u;
  *(v20 + 104) = sub_1001E12D8;
  *(v20 + 112) = v19;
  v21 = v15;

  sub_10075DDAC();
  v22 = sub_10075DD8C();
  v24 = v23;
  v11(v4, v41);
  v43 = v22;
  v44 = v24;
  sub_10077140C();

  v12[6] = v20;
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  v26 = swift_allocObject();
  *(v26 + 56) = 0xD00000000000002DLL;
  *(v26 + 64) = 0x80000001007D8AB0;
  *(v26 + 72) = 0u;
  *(v26 + 88) = 0u;
  *(v26 + 104) = sub_1001E12F8;
  *(v26 + 112) = v25;
  v27 = v21;

  sub_10075DDAC();
  v28 = sub_10075DD8C();
  v30 = v29;
  v31 = v41;
  v11(v4, v41);
  v43 = v28;
  v44 = v30;
  sub_10077140C();

  v12[7] = v26;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1007841E0;
  type metadata accessor for DebugSection();
  v33 = swift_allocObject();
  sub_10075DDAC();
  v34 = sub_10075DD8C();
  v36 = v35;
  v11(v4, v31);
  v33[2] = v34;
  v33[3] = v36;
  v33[4] = 0;
  v33[5] = 0xE000000000000000;
  v33[6] = v12;
  *(v32 + 32) = v33;
  return v32;
}

uint64_t sub_1001E0EB0(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void), void (*a5)(void))
{
  v8 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1000527AC(v10);
  }

  a3(0);
  swift_allocObject();
  a4();
  a5();

  return (*(v12 + 8))(v10, v11);
}

uint64_t sub_1001E1030(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_1000527AC(v4);
  }

  sub_10076AD4C();
  swift_allocObject();
  v8 = sub_10076AD2C();
  sub_10026419C(v8, 1, a1, v4);

  return (*(v6 + 8))(v4, v5);
}

id sub_1001E1198()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001E11F0()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1001E1328(uint64_t a1)
{
  v2 = v1;
  if (a1 >= 1)
  {
    [v2 setLineSpacing:a1];
    v4 = [v2 font];
    if (v4)
    {
      v5 = v4;
      [v4 lineHeight];
      v7 = v6;

      v8 = [objc_allocWithZone(NSNumber) initWithDouble:a1 - v7];
      v9 = sub_1001E2870();
      *(&v23 + 1) = v9;
      *&v22 = v8;
      v10 = [v2 _defaultAttributes];
      if (v10)
      {
        v11 = v10;
        type metadata accessor for Key(0);
        sub_1001E28BC(&qword_100943320, type metadata accessor for Key);
        v12 = sub_10076FE4C();

        v21 = v12;
        if (v9)
        {
          sub_10000CD64(&v22, v20);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v19 = v12;
          sub_10024A2F4(v20, NSBaselineOffsetAttributeName, isUniquelyReferenced_nonNull_native);
          v21 = v12;
          if (v12)
          {
LABEL_6:
            v14.super.isa = sub_10076FE3C().super.isa;

LABEL_12:
            [v2 _setDefaultAttributes:{v14.super.isa, v19}];

            return;
          }
        }

        else
        {
          sub_1000258C0(&v22);
          sub_1001E165C(NSBaselineOffsetAttributeName, v20);
          sub_1000258C0(v20);
          if (v21)
          {
            goto LABEL_6;
          }
        }

        v14.super.isa = 0;
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  [v1 setLineSpacing:0];
  v22 = 0u;
  v23 = 0u;
  v15 = [v1 _defaultAttributes];
  if (!v15)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v16 = v15;
  type metadata accessor for Key(0);
  sub_1001E28BC(&qword_100943320, type metadata accessor for Key);
  v17 = sub_10076FE4C();

  v21 = v17;
  sub_1000258C0(&v22);
  sub_1001E165C(NSBaselineOffsetAttributeName, v20);
  sub_1000258C0(v20);
  if (v21)
  {
    v18.super.isa = sub_10076FE3C().super.isa;
  }

  else
  {
    v18.super.isa = 0;
  }

  [v2 _setDefaultAttributes:v18.super.isa];
}

double sub_1001E165C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1006113DC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10024BFEC();
      v9 = v11;
    }

    sub_10000CD64((*(v9 + 56) + 32 * v7), a2);
    sub_1001E1838(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1001E16FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_100561E0C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10024C878();
      v10 = v12;
    }

    sub_10000CD64((*(v10 + 56) + 32 * v8), a3);
    sub_1001E1BB4(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1001E17A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_100561E0C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10024CDEC();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1001E1F10(v6, v8);
  *v3 = v8;
  return v9;
}

void sub_1001E1838(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1007712EC() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_10076FF9C();
      sub_10077175C();
      v11 = v10;
      sub_10077008C();
      v12 = sub_1007717AC();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_1001E1A04(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1007712EC() + 1) & ~v5;
    do
    {
      sub_10077175C();

      sub_10077008C();
      v9 = sub_1007717AC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1001E1BB4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1007712EC() + 1) & ~v5;
    do
    {
      sub_10077175C();

      sub_10077008C();
      v10 = sub_1007717AC();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1001E1D64(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1007712EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_10077174C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_10076F7FC() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1001E1F10(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1007712EC() + 1) & ~v5;
    do
    {
      sub_10077175C();

      sub_10077008C();
      v9 = sub_1007717AC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1001E20C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1007712EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_10077174C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1001E2230(int64_t a1, uint64_t a2)
{
  v38 = sub_10076C45C();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_1007712EC();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_1001E28BC(&qword_10094D268, &type metadata accessor for BadgeType);
      v22 = sub_10076FEAC();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

void sub_1001E2550(int64_t a1, uint64_t a2)
{
  v38 = sub_100761D3C();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_1007712EC();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_1001E28BC(&qword_10094D270, &type metadata accessor for AdPlacementType);
      v22 = sub_10076FEAC();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 16 * a1);
          v28 = (v26 + 16 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

unint64_t sub_1001E2870()
{
  result = qword_1009492D0;
  if (!qword_1009492D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009492D0);
  }

  return result;
}

uint64_t sub_1001E28BC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1001E2908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10076BF6C();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10076BEDC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v18[1] = a2;

    sub_10076BEEC();
    v13 = (*(a4 + 32))(v12, a3, a4);
    (*(v10 + 8))(v12, v9);
    (*(a4 + 24))(a3, a4);
    v18[0] = v13;
    sub_10076BFCC();
    v14 = *(a4 + 16);
    v15 = v14(a3, a4);
    sub_10076BF7C();
    sub_10075FCCC();
    [v15 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_1000325F0();
      sub_100770D5C();
    }

    sub_10075FB8C();

    v16 = v14(a3, a4);
    [v16 setContentMode:v18[0]];

    v17 = v14(a3, a4);
    sub_10075FD2C();
    sub_10000D7F8();
    sub_100760B8C();
  }
}

void sub_1001E2BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = v6(a3, a4);
  sub_10075FB6C();

  v8 = v6(a3, a4);
  sub_10075FD2C();
  sub_10000D7F8();
  sub_100760BFC();
}

char *sub_1001E2CBC(uint64_t a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] = 0;
  v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_sizeCategory] = 7;
  v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory] = 7;
  v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_disableAnimatedFontChange] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_numberOfLines] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel] = 0;
  v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isAnimatingSizeCategoryChange] = 0;
  v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 0;
  v6 = &v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_applyPendingFontChange];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_textAfterFontTransition];
  *v7 = 0;
  v7[1] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeOutDelay] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInDelay] = 0;
  sub_1007626BC();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label] = v8;
  [v8 setContentMode:3];
  *&v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fontForSizeCategory] = a1;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_defaultFont] = a2;
  v19.receiver = v3;
  v19.super_class = type metadata accessor for TodayTransitioningLabelView();
  v9 = a2;
  v10 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  v12 = *&v10[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  v13 = v10;
  v14 = [v12 layer];
  v15 = [v13 traitCollection];
  sub_10077070C();

  [v14 setAnchorPoint:{0.0, 0.0}];
  [v13 addSubview:*&v10[v11]];
  sub_10000A5D4(&unk_100945BF0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100783DD0;
  *(v16 + 32) = sub_10076E3EC();
  *(v16 + 40) = &protocol witness table for UITraitLayoutDirection;
  sub_100770C4C();
  swift_unknownObjectRelease();

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100783DD0;
  *(v17 + 32) = sub_10076E3FC();
  *(v17 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v13;
}

id sub_1001E3000()
{
  v31.receiver = v0;
  v31.super_class = type metadata accessor for TodayTransitioningLabelView();
  objc_msgSendSuper2(&v31, "layoutSubviews");
  if (v0[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory] != 4 || (v0[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_disableAnimatedFontChange] & 1) != 0)
  {
    v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
    [v0 bounds];
    [v1 setFrame:?];
    v2 = sub_1001E34D8();
    v3 = "setLineBreakMode:";
    if (v2)
    {
      v4 = v1;
      v5 = 4;
    }

    else
    {
      [v1 setLineBreakMode:0];
      v3 = "setLineBreakStrategy:";
      v4 = v1;
      v5 = 1;
    }

    return [v4 v3];
  }

  if (v0[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] == 1)
  {
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v0;
    v9 = swift_allocObject();
    v10 = sub_1001E4EE4;
    *(v9 + 16) = sub_1001E4EE4;
    *(v9 + 24) = v8;
    v29 = sub_1000B9014;
    v30 = v9;
    v25 = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_1001C5148;
    v28 = &unk_10088C7C0;
    v11 = _Block_copy(&v25);
    v12 = v0;

    [v7 performWithoutAnimation:v11];
    _Block_release(v11);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if ((v7 & 1) == 0)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  if (v0[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] == 1)
  {
    if ((v0[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isAnimatingSizeCategoryChange] & 1) == 0)
    {
      v13 = objc_opt_self();
      v14 = swift_allocObject();
      *(v14 + 16) = v0;
      v15 = swift_allocObject();
      v16 = sub_1001E4ECC;
      *(v15 + 16) = sub_1001E4ECC;
      *(v15 + 24) = v14;
      v29 = sub_1000349FC;
      v30 = v15;
      v25 = _NSConcreteStackBlock;
      v26 = 1107296256;
      v27 = sub_1001C5148;
      v28 = &unk_10088C748;
      v17 = _Block_copy(&v25);
      v18 = v0;

      [v13 performWithoutAnimation:v17];
      _Block_release(v17);
      LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

      if (v13)
      {
        __break(1u);
        return result;
      }

      v10 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v19 = *&v0[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
    [v0 bounds];
    [v19 setFrame:?];
  }

  v10 = 0;
LABEL_16:
  v16 = 0;
LABEL_17:
  v20 = *&v0[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  v21 = sub_1001E34D8();
  v22 = "setLineBreakMode:";
  if (v21)
  {
    v23 = v20;
    v24 = 4;
  }

  else
  {
    [v20 setLineBreakMode:0];
    v22 = "setLineBreakStrategy:";
    v23 = v20;
    v24 = 1;
  }

  [v23 v22];
  sub_1000167E0(v10);
  return sub_1000167E0(v16);
}

void sub_1001E3418(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel];
  if (v1)
  {
    v3 = v1;
    [a1 bounds];
    [v3 setFrame:?];
  }
}

id sub_1001E34D8()
{
  result = [v0 text];
  if (result)
  {
    v2 = result;
    v3 = [v0 font];
    if (v3)
    {
      v4 = v3;
      sub_10000A5D4(&unk_10094E7E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100783DD0;
      *(inited + 32) = NSFontAttributeName;
      *(inited + 64) = sub_10005312C();
      *(inited + 40) = v4;
      v6 = NSFontAttributeName;
      v7 = sub_1000FC5F4(inited);
      swift_setDeallocating();
      sub_1001E4F90(inited + 32);
      [v0 bounds];
      v9 = v8;
      if (v7)
      {
        type metadata accessor for Key(0);
        sub_1001E4F38();
        v10.super.isa = sub_10076FE3C().super.isa;

LABEL_7:
        [v2 boundingRectWithSize:1 options:v10.super.isa attributes:0 context:{v9, 1.79769313e308}];
        v13 = v12;

        [v0 bounds];
        return (v14 < v13);
      }
    }

    else
    {
      [v0 bounds];
      v9 = v11;
    }

    v10.super.isa = 0;
    goto LABEL_7;
  }

  return result;
}

void sub_1001E367C(unsigned __int8 a1, char a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_sizeCategory);
  if (v4 == 7)
  {
    return;
  }

  if (a1 == 7)
  {
    goto LABEL_4;
  }

  switch(v4)
  {
    case 6:
      if (a1 != 6)
      {
        goto LABEL_4;
      }

      break;
    case 5:
      if (a1 != 5)
      {
        goto LABEL_4;
      }

      break;
    case 4:
      if (a1 == 4)
      {
        break;
      }

LABEL_4:
      v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fontForSizeCategory);
      if (*(v6 + 16) && (v7 = sub_10060FF84(v4), (v8 & 1) != 0))
      {
        v9 = (*(v6 + 56) + 8 * v7);
      }

      else
      {
        v9 = (v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_defaultFont);
      }

      v10 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
      v26 = *v9;
      v11 = [v10 font];
      v12 = v11;
      if (v11)
      {
      }

      v13 = [v10 font];
      if (v13)
      {
        v14 = v13;
        sub_10005312C();
        v15 = v26;
        v16 = sub_100770EEC();
      }

      else
      {
        v16 = 0;
      }

      [objc_opt_self() inheritedAnimationDuration];
      if (a1 == 6 || a2 == 6 || (v12 == 0) | v16 & 1 || v17 <= 0.0)
      {
        v18 = 0;
      }

      else
      {
        v18 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) ^ 1;
      }

      sub_1001E3958(v26, v18 & 1);
      v19 = v26;
      goto LABEL_25;
    default:
      if ((a1 - 7) > 0xFCu || v4 != a1)
      {
        goto LABEL_4;
      }

      break;
  }

  v20 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_sizeCategory);
  v21 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v19 = [v21 font];
  if (v19)
  {
LABEL_25:

    return;
  }

  v22 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fontForSizeCategory);
  if (*(v22 + 16))
  {
    v23 = sub_10060FF84(v20);
    if (v24)
    {
      v25 = *(*(v22 + 56) + 8 * v23);

      [v21 setFont:v25];
    }
  }
}

void sub_1001E3958(void *a1, char a2)
{
  if ((a2 & 1) != 0 && (v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label], (v5 = [v4 text]) != 0))
  {

    v6 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel;
    if (!*&v2[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel] && (v2[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isAnimatingSizeCategoryChange] & 1) == 0)
    {
      v8 = sub_1001E4C30(v4);
      [v8 setAlpha:0.0];
      [v8 setFont:a1];
      [v8 setNumberOfLines:*&v2[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_numberOfLines]];
      v9 = objc_opt_self();
      [v9 setAnimationsEnabled:0];
      v10 = [v8 layer];
      v11 = [v2 traitCollection];
      v12 = v2;
      sub_10077070C();

      [v10 setAnchorPoint:{0.0, 0.0}];
      [v9 setAnimationsEnabled:1];
      v13 = *&v2[v6];
      *&v12[v6] = v8;
      v22 = v8;

      [v12 addSubview:v22];
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      *(v15 + 24) = a1;
      v16 = &v12[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_applyPendingFontChange];
      v17 = *&v12[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_applyPendingFontChange];
      *v16 = sub_1001E4E34;
      v16[1] = v15;

      v18 = a1;
      sub_1000167E0(v17);

      if (v12[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning])
      {
      }

      else
      {
        v19 = *v16;
        if (*v16)
        {

          v19(v20);

          sub_1000167E0(v19);
        }

        else
        {
        }

        v21 = *v16;
        *v16 = 0;
        v16[1] = 0;

        sub_1000167E0(v21);
      }
    }
  }

  else
  {
    v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];

    [v7 setFont:a1];
  }
}

void sub_1001E3C74(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isAnimatingSizeCategoryChange) = 1;
    v4 = Strong;
    v5 = objc_opt_self();
    [v5 inheritedAnimationDuration];
    v7 = v6 * 0.8;
    v8 = *&v4[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeOutDelay];
    v9 = swift_allocObject();
    *(v9 + 16) = v4;
    v25 = sub_1001E4E3C;
    v26 = v9;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_10009AEDC;
    v24 = &unk_10088C630;
    v10 = _Block_copy(&aBlock);
    v11 = v4;

    [v5 animateWithDuration:131684 delay:v10 options:0 animations:v7 completion:v8];
    _Block_release(v10);
    [v5 inheritedAnimationDuration];
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    v25 = sub_1001E4E5C;
    v26 = v14;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_10009AEDC;
    v24 = &unk_10088C680;
    v15 = _Block_copy(&aBlock);
    v16 = v11;

    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = a2;
    v25 = sub_1001E4EC4;
    v26 = v17;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_1000513F0;
    v24 = &unk_10088C6D0;
    v18 = _Block_copy(&aBlock);
    v19 = v16;
    v20 = a2;

    [v5 animateWithDuration:66148 delay:v15 options:v18 animations:v13 completion:0.0];
    _Block_release(v18);
    _Block_release(v15);
    sub_1001E3F54();
  }
}

void sub_1001E3F54()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
    v3 = v1;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v38 = v3;
    [v38 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v42.origin.x = v5;
    v42.origin.y = v7;
    v42.size.width = v9;
    v42.size.height = v11;
    if (CGRectIsEmpty(v42) || (v43.origin.x = v13, v43.origin.y = v15, v43.size.width = v17, v43.size.height = v19, CGRectIsEmpty(v43)))
    {
    }

    else
    {
      v44.origin.x = v13;
      v44.origin.y = v15;
      v44.size.width = v17;
      v44.size.height = v19;
      Height = CGRectGetHeight(v44);
      v45.origin.x = v5;
      v45.origin.y = v7;
      v45.size.width = v9;
      v45.size.height = v11;
      v21 = Height / CGRectGetHeight(v45);
      [v38 transform];
      CGAffineTransformScale(&aBlock, &v40, 1.0 / v21, 1.0 / v21);
      tx = aBlock.tx;
      ty = aBlock.ty;
      v36 = *&aBlock.c;
      v37 = *&aBlock.a;
      v24 = objc_opt_self();
      [v24 setAnimationsEnabled:0];
      *&v40.a = v37;
      *&v40.c = v36;
      v40.tx = tx;
      v40.ty = ty;
      [v38 setTransform:&v40];

      [v24 setAnimationsEnabled:1];
      [v2 transform];
      aBlock = v40;
      CGAffineTransformScale(&v40, &aBlock, v21, v21);
      [v24 inheritedAnimationDuration];
      v26 = v25;
      v27 = swift_allocObject();
      v28 = *&v40.c;
      *(v27 + 24) = *&v40.a;
      *(v27 + 16) = v0;
      *(v27 + 40) = v28;
      *(v27 + 56) = *&v40.tx;
      *&aBlock.tx = sub_1001E4B40;
      *&aBlock.ty = v27;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_10009AEDC;
      *&aBlock.d = &unk_10088C540;
      v29 = _Block_copy(&aBlock);
      v30 = v0;

      [v24 animateWithDuration:197220 delay:v29 options:0 animations:v26 completion:0.0];
      _Block_release(v29);
      [v24 inheritedAnimationDuration];
      v32 = v31;
      v33 = swift_allocObject();
      *(v33 + 16) = v30;
      *&aBlock.tx = sub_1001E4BE0;
      *&aBlock.ty = v33;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_10009AEDC;
      *&aBlock.d = &unk_10088C590;
      v34 = _Block_copy(&aBlock);
      v35 = v30;

      [v24 animateWithDuration:197220 delay:v34 options:0 animations:v32 completion:0.0];

      _Block_release(v34);
    }
  }
}

void sub_1001E4348(char a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_textAfterFontTransition + 8))
    {
      v3 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);

      v4 = sub_10076FF6C();

      [v3 setText:v4];
    }

    v5 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
    [v5 setFont:?];
    [v5 setAlpha:1.0];
    [v5 setNumberOfLines:*(a2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_numberOfLines)];
    v9[0] = 0x3FF0000000000000;
    v9[1] = 0;
    v9[2] = 0;
    v9[3] = 0x3FF0000000000000;
    v9[4] = 0;
    v9[5] = 0;
    [v5 setTransform:v9];
    v6 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel;
    v7 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel);
    if (v7)
    {
      [v7 removeFromSuperview];
      v8 = *(a2 + v6);
    }

    else
    {
      v8 = 0;
    }

    *(a2 + v6) = 0;

    *(a2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isAnimatingSizeCategoryChange) = 0;
  }
}

uint64_t sub_1001E44B0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(a2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout) = 0;
  }

  return result;
}

id sub_1001E44C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  if (a2)
  {
    v5 = sub_10076FF6C();
  }

  else
  {
    v5 = 0;
  }

  [v4 setText:v5];

  v6 = *&v2[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel];
  if (v6)
  {
    v7 = v6;
    if (v3)
    {
      v3 = sub_10076FF6C();
    }

    [v7 setText:v3];
  }

  v8 = &v2[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_textAfterFontTransition];
  *v8 = 0;
  *(v8 + 1) = 0;

  return [v2 setNeedsLayout];
}

uint64_t sub_1001E45BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a4)
  {
    v8 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel);
    if (v8)
    {
      v9 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
      if (a2)
      {

        v10 = v8;
        v5 = sub_10076FF6C();
      }

      else
      {

        v15 = v8;
      }

      [v9 setText:v5];

      v16 = sub_10076FF6C();
      [v8 setText:v16];

      v17 = (v4 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_textAfterFontTransition);
      *v17 = a3;
      v17[1] = a4;
      goto LABEL_17;
    }

    v13 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);

    v14 = sub_10076FF6C();

    [v13 setText:v14];
  }

  else
  {
    v11 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
    if (a2)
    {
      v12 = sub_10076FF6C();
    }

    else
    {
      v12 = 0;
    }

    [v11 setText:v12];

    v18 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel);
    if (v18)
    {
      v19 = v18;
      if (v5)
      {
        v20 = sub_10076FF6C();
      }

      else
      {
        v20 = 0;
      }

      [v19 setText:v20];
    }
  }

  v21 = (v4 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_textAfterFontTransition);
  *v21 = 0;
  v21[1] = 0;
LABEL_17:
}

uint64_t sub_1001E47AC()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel);
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_sizeCategory);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_sizeCategory) = 7;
  sub_1001E367C(v4, 7);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isAnimatingSizeCategoryChange) = 0;
  v5 = (v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_applyPendingFontChange);
  v6 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_applyPendingFontChange);
  *v5 = 0;
  v5[1] = 0;

  return sub_1000167E0(v6);
}

id sub_1001E4868()
{
  v1 = objc_opt_self();
  [v1 setAnimationsEnabled:0];
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 traitCollection];
    v5 = sub_10077070C();

    v6 = 0.0;
    if (v5)
    {
      v6 = 1.0;
    }

    [v3 setAnchorPoint:{v6, 0.0}];
  }

  return [v1 setAnimationsEnabled:1];
}

id sub_1001E49B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayTransitioningLabelView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001E4A9C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_applyPendingFontChange);
  if (v1)
  {

    v1(v2);

    sub_1000167E0(v1);
  }
}

uint64_t sub_1001E4B08()
{

  return _swift_deallocObject(v0, 72, 7);
}

id sub_1001E4B40()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v2 = *(v0 + 40);
  v4[0] = *(v0 + 24);
  v4[1] = v2;
  v4[2] = *(v0 + 56);
  return [v1 setTransform:v4];
}

uint64_t sub_1001E4B90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001E4BA8()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1001E4BE0()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel);
  if (result)
  {
    v2[0] = 0x3FF0000000000000;
    v2[1] = 0;
    v2[2] = 0;
    v2[3] = 0x3FF0000000000000;
    v2[4] = 0;
    v2[5] = 0;
    return [result setTransform:v2];
  }

  return result;
}

id sub_1001E4C30(void *a1)
{
  v2 = sub_10076771C();
  __chkstk_darwin(v2 - 8);
  sub_1007626BC();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v3 setNumberOfLines:{objc_msgSend(a1, "numberOfLines")}];
  [v3 setLineBreakMode:{objc_msgSend(a1, "lineBreakMode")}];
  [v3 setLineBreakStrategy:{objc_msgSend(a1, "lineBreakStrategy")}];
  [v3 setUserInteractionEnabled:{objc_msgSend(a1, "isUserInteractionEnabled")}];

  sub_10076261C();
  sub_10076262C();
  sub_10076263C();
  sub_10076264C();
  v4 = [a1 text];
  [v3 setText:v4];

  return v3;
}

uint64_t sub_1001E4DBC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001E4DF4()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1001E4E5C()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel);
  if (result)
  {
    return [result setAlpha:1.0];
  }

  return result;
}

uint64_t sub_1001E4E84()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1001E4EE4()
{
  v1 = *(v0 + 16);
  v2 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  [v1 bounds];

  return [v2 setFrame:?];
}

unint64_t sub_1001E4F38()
{
  result = qword_100943320;
  if (!qword_100943320)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100943320);
  }

  return result;
}

uint64_t sub_1001E4F90(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100948B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1001E4FF8()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_numberOfLines) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isAnimatingSizeCategoryChange) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout) = 0;
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_applyPendingFontChange);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_textAfterFontTransition);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeOutDelay) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInDelay) = 0;
  sub_10077156C();
  __break(1u);
}

void sub_1001E5134()
{
  if (*(v0 + 24) == 1 && (v1 = *(v0 + 16)) != 0 && ([v1 _manualScrollEdgeAppearanceProgress], v2 >= 1.0))
  {
    v3 = (v0 + 25);
    v13 = *(v0 + 25);
    *(v0 + 25) = 1;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = (v0 + 25);
    v4 = *(v0 + 25);
    *(v0 + 25) = 0;
    if ((v4 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = *(v0 + 16);
  if (!v5 || (v6 = [v5 rightBarButtonItems]) == 0)
  {
LABEL_16:
    v14 = *(v0 + 16);
    if (v14)
    {
      goto LABEL_17;
    }

    return;
  }

  v7 = v6;
  sub_1001E555C();
  v8 = sub_1007701BC();

  if (v8 >> 62)
  {
    goto LABEL_31;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
LABEL_9:
    if (v9 >= 1)
    {
      for (i = 0; i != v9; ++i)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = sub_10077149C();
        }

        else
        {
          v11 = *(v8 + 8 * i + 32);
        }

        v12 = v11;
        [v11 setHidden:*v3];
      }

      goto LABEL_32;
    }

    __break(1u);
  }

  else
  {
LABEL_32:
    while (1)
    {

      v14 = *(v0 + 16);
      if (!v14)
      {
        break;
      }

LABEL_17:
      v15 = [v14 rightBarButtonItems];
      if (!v15)
      {
        return;
      }

      v16 = v15;
      sub_1001E555C();
      v8 = sub_1007701BC();

      if (v8 >> 62)
      {
        v0 = sub_10077158C();
        if (!v0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v0 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v0)
        {
          goto LABEL_27;
        }
      }

      if (v0 >= 1)
      {
        for (j = 0; j != v0; ++j)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v18 = sub_10077149C();
          }

          else
          {
            v18 = *(v8 + 8 * j + 32);
          }

          v19 = v18;
          [v18 setHidden:*v3];
        }

LABEL_27:

        return;
      }

      __break(1u);
LABEL_31:
      v9 = sub_10077158C();
      if (v9)
      {
        goto LABEL_9;
      }
    }
  }
}

uint64_t sub_1001E5384()
{

  return swift_deallocClassInstance();
}

void sub_1001E53E4()
{
  if (*(v0 + 24) == 1)
  {
    v1 = *(v0 + 16);
    if (v1 && ([v1 _manualScrollEdgeAppearanceProgress], v2 >= 1.0))
    {
      v4 = *(v0 + 25);
      *(v0 + 25) = 1;
      if (v4)
      {
        return;
      }
    }

    else
    {
      v3 = *(v0 + 25);
      *(v0 + 25) = 0;
      if ((v3 & 1) == 0)
      {
        return;
      }
    }

    v5 = (v0 + 25);
    v6 = *(v0 + 16);
    if (v6)
    {
      v7 = [v6 rightBarButtonItems];
      if (v7)
      {
        v8 = v7;
        sub_1001E555C();
        v9 = sub_1007701BC();

        if (v9 >> 62)
        {
          v10 = sub_10077158C();
          if (v10)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10)
          {
LABEL_11:
            if (v10 < 1)
            {
              __break(1u);
              return;
            }

            for (i = 0; i != v10; ++i)
            {
              if ((v9 & 0xC000000000000001) != 0)
              {
                v12 = sub_10077149C();
              }

              else
              {
                v12 = *(v9 + 8 * i + 32);
              }

              v13 = v12;
              [v12 setHidden:*v5];
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1001E555C()
{
  result = qword_100958FF0;
  if (!qword_100958FF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100958FF0);
  }

  return result;
}

unint64_t sub_1001E55BC()
{
  result = qword_10094D3C8;
  if (!qword_10094D3C8)
  {
    sub_1007697BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D3C8);
  }

  return result;
}

uint64_t sub_1001E561C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10075FAEC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000A5D4(&qword_100942C70);
  v7 = sub_10076FCEC();
  sub_100767E8C();
  sub_10076F64C();
  sub_10076FC1C();
  v8 = v24[1];
  sub_100767E6C();
  v9 = (*(v4 + 88))(v6, v3);
  if (v9 == enum case for ArcadeState.notSubscribed(_:))
  {
    (*(v4 + 96))(v6, v3);
    v10 = sub_10076979C();
    v11 = sub_100765B6C();
    v12 = *(*(v11 - 8) + 8);

    v12(v6, v11);
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  else if (v9 == enum case for ArcadeState.purchasing(_:))
  {
    (*(v4 + 8))(v6, v3);
    v13 = sub_10076977C();

    if (!v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v9 != enum case for ArcadeState.subscribed(_:))
    {
      v18 = enum case for ArcadeState.unknown(_:);
      v19 = v9;
      v20 = sub_1007697AC();
      if (v19 == v18)
      {

        if (v20)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v22 = *(v4 + 8);

        v22(v6, v3);
        if (v20)
        {
          goto LABEL_12;
        }
      }

LABEL_14:
      sub_1001E5994();
      swift_allocError();
      sub_10076FCAC();

      return v7;
    }

    (*(v4 + 96))(v6, v3);

    v14 = *(sub_10000A5D4(&qword_10094D3D8) + 48);
    v15 = sub_10076978C();
    v16 = sub_1007676BC();
    v17 = *(*(v16 - 8) + 8);

    v17(v6 + v14, v16);
    if (!v15)
    {
      goto LABEL_14;
    }
  }

LABEL_12:

  sub_100563DC4(v21, 1, a2);

  sub_10076FC4C();

  return v7;
}

unint64_t sub_1001E5994()
{
  result = qword_10094D3D0;
  if (!qword_10094D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D3D0);
  }

  return result;
}

unint64_t sub_1001E59FC()
{
  result = qword_10094D3E0;
  if (!qword_10094D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D3E0);
  }

  return result;
}

uint64_t sub_1001E5A50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B77C();
  *a1 = result;
  return result;
}

uint64_t sub_1001E5A7C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100763F9C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100946720);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  (*(v7 + 8))(v9, v6);
  if (v19[0] && (v10 = sub_1007603BC(), , (v10 & 1) != 0))
  {
    v11 = sub_100763FDC();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }

  else
  {
    swift_getKeyPath();
    sub_10076338C();

    v13 = v19[0];
    sub_10077071C();

    sub_10000A5D4(&unk_1009520F0);
    sub_10076333C();
    if (v18)
    {
      sub_100012498(&v17, v19);
      sub_10000CF78(v19, v19[3]);
      if (sub_10076968C())
      {
        v14 = 1;
      }

      else
      {
        (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
        sub_100763FAC();
        v14 = 0;
      }

      v16 = sub_100763FDC();
      (*(*(v16 - 8) + 56))(a1, v14, 1, v16);
      return sub_10000CD74(v19);
    }

    else
    {
      sub_1001E5E88(&v17);
      (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
      sub_100763FAC();
      v15 = sub_100763FDC();
      return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
    }
  }
}

uint64_t sub_1001E5E58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B77C();
  *a1 = result;
  return result;
}

uint64_t sub_1001E5E88(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_10094D3E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001E5EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v10 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v10 - 8);
  v53 = v44 - v11;
  v51 = sub_100768FEC();
  v47 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10000A5D4(&unk_100946750);
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = v44 - v13;
  v14 = sub_10000A5D4(&unk_100945550);
  __chkstk_darwin(v14 - 8);
  v46 = v44 - v15;
  v16 = sub_10076A3AC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000A5D4(&unk_100946760);
  *&v21 = __chkstk_darwin(v20 - 8).n128_u64[0];
  v23 = v44 - v22;
  v24 = [v6 contentView];
  [a6 pageMarginInsets];
  [v24 setLayoutMargins:?];

  v25 = sub_1007615BC();
  v45 = a3;
  if (!v25)
  {
    goto LABEL_7;
  }

  if (v25 >> 62)
  {
    v29 = v25;
    v30 = sub_10077158C();
    v25 = v29;
    if (v30)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_6:

LABEL_7:
    [*&v6[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_iconGridView] setHidden:1];
    goto LABEL_8;
  }

LABEL_4:
  v26 = v25;
  sub_100760C4C();
  sub_10076F64C();
  sub_10076FC1C();
  v27 = v54[0];
  v28 = *&v6[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_iconGridView];
  [*&v7[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_iconGridView] setHidden:0];
  *(v28 + OBJC_IVAR____TtC20ProductPageExtension12IconGridView_impressionableArtworks) = v26;

  *(v28 + OBJC_IVAR____TtC20ProductPageExtension12IconGridView_artworkLoader) = v27;

  sub_1003BF4A0(v26, v27);

LABEL_8:
  v44[1] = *&v7[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_offerButton];
  v31 = sub_1007615FC();
  v32 = sub_1007615DC();
  v33 = sub_1007615CC();
  (*(v17 + 104))(v19, enum case for OfferButtonPresenterViewAlignment.center(_:), v16);
  (*(v17 + 56))(v46, 1, 1, v16);
  sub_1001E6890(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment);
  sub_10076759C();
  v34 = sub_10000A5D4(&qword_100945590);
  (*(*(v34 - 8) + 56))(v23, 0, 1, v34);
  v35 = v47;
  v36 = v51;
  (*(v47 + 104))(v48, enum case for OfferButtonSubtitlePosition.above(_:), v51);
  (*(v35 + 56))(v53, 1, 1, v36);
  sub_1001E6890(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition);
  v37 = v49;
  sub_10076759C();
  sub_1001F12C8(v31, v32, v33, v23, v37, v45, 0, 0);

  (*(v50 + 8))(v37, v52);
  sub_100026190(v23);
  sub_100767E8C();
  sub_10076F64C();
  sub_10076FC1C();
  v38 = v54[0];
  sub_1007615EC();
  sub_10076160C();
  v39 = sub_100767DCC();
  swift_allocObject();
  v40 = v38;
  v41 = sub_100767DAC();
  sub_1001E6890(&unk_100946770, type metadata accessor for ArcadeShowcaseCollectionViewCell);
  swift_unknownObjectRetain();
  sub_100767DBC();
  v54[3] = v39;
  v54[0] = v41;
  v42 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_offerLabelPresenter;
  swift_beginAccess();

  sub_100127EF0(v54, &v7[v42]);
  swift_endAccess();
  [v7 setNeedsLayout];
}

id sub_1001E668C(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_descriptionLabel];
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

    v13 = 0;
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
    v13 = sub_10076FF6C();
LABEL_12:
    [v5 setText:v13];

    [v5 setHidden:sub_10077002C() & 1];

    return [v2 setNeedsLayout];
  }
}

uint64_t sub_1001E6890(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1001E68D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_10075FAEC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100767E8C();
  sub_10076F64C();
  sub_10076FC1C();
  v10 = v17[1];
  sub_100767E6C();
  if (sub_10075FABC())
  {
    v11 = sub_1007615EC();
  }

  else
  {
    v11 = sub_10076160C();
  }

  v13 = v11;
  v14 = v12;
  swift_getObjectType();
  v15 = sub_10026C9FC(v13, v14, a5);

  (*(v7 + 8))(v9, v6);
  return v15;
}

uint64_t sub_1001E6A68()
{
  v0 = sub_10000A5D4(&unk_100955860);
  sub_10000DB18(v0, qword_10099D890);
  sub_10000A61C(v0, qword_10099D890);
  return sub_10076F54C();
}

uint64_t sub_1001E6AE0()
{
  v0 = sub_10000A5D4(&unk_100955860);
  sub_10000DB18(v0, qword_10099D8A8);
  sub_10000A61C(v0, qword_10099D8A8);
  return sub_10076F54C();
}

uint64_t sub_1001E6B58()
{
  v0 = sub_10000A5D4(&unk_100955860);
  sub_10000DB18(v0, qword_10099D8C0);
  sub_10000A61C(v0, qword_10099D8C0);
  return sub_10076F54C();
}

uint64_t sub_1001E6BD0()
{
  v0 = sub_10000A5D4(&unk_100955860);
  sub_10000DB18(v0, qword_10099D8D8);
  sub_10000A61C(v0, qword_10099D8D8);
  return sub_10076F54C();
}

uint64_t sub_1001E6C48()
{
  v0 = sub_10075DDBC();
  v1 = *(v0 - 8);
  v66 = v0;
  v67 = v1;
  __chkstk_darwin(v0);
  v3 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100955860);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v56 - v6;
  v65 = 0x80000001007D8E30;
  if (qword_10093FA30 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v4, qword_10099D890);
  v63 = sub_10076F73C();
  v9 = sub_10076F70C();
  v11 = v5 + 16;
  v10 = *(v5 + 16);
  v10(v7, v8, v4);
  type metadata accessor for BoolPreferencesDebugSetting();
  v12 = swift_allocObject();
  strcpy((v12 + 56), "Feed Previews");
  *(v12 + 70) = -4864;
  v13 = v65;
  *(v12 + 72) = 0xD000000000000041;
  *(v12 + 80) = v13;
  *(v12 + 88) = 0;
  v64 = v10;
  v10((v12 + OBJC_IVAR____TtC20ProductPageExtension27BoolPreferencesDebugSetting_key), v7, v4);
  v14 = (v12 + OBJC_IVAR____TtC20ProductPageExtension27BoolPreferencesDebugSetting_preferences);
  *v14 = v9;
  v14[1] = &protocol witness table for LocalPreferences;

  sub_10075DDAC();
  v15 = sub_10075DD8C();
  v17 = v16;
  v18 = *(v67 + 8);
  v67 += 8;
  v65 = v18;
  v18(v3, v66);
  v68 = v15;
  v69 = v17;
  v60 = v12;
  sub_10077140C();
  v19 = *(v5 + 8);
  v61 = v5 + 8;
  v62 = v19;
  v19(v7, v4);

  v59 = 0x80000001007D8EA0;
  v20 = v3;
  if (qword_10093FA38 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A61C(v4, qword_10099D8A8);
  v22 = sub_10076F70C();
  v23 = v21;
  v24 = v64;
  v64(v7, v23, v4);
  v25 = swift_allocObject();
  *(v25 + 56) = 0xD000000000000017;
  *(v25 + 64) = 0x80000001007D8E80;
  v26 = v59;
  *(v25 + 72) = 0xD000000000000030;
  *(v25 + 80) = v26;
  *(v25 + 88) = 0;
  v24(v25 + OBJC_IVAR____TtC20ProductPageExtension27BoolPreferencesDebugSetting_key, v7, v4);
  v27 = (v25 + OBJC_IVAR____TtC20ProductPageExtension27BoolPreferencesDebugSetting_preferences);
  *v27 = v22;
  v27[1] = &protocol witness table for LocalPreferences;

  sub_10075DDAC();
  v28 = sub_10075DD8C();
  v30 = v29;
  v65(v20, v66);
  v68 = v28;
  v69 = v30;
  v59 = v25;
  sub_10077140C();
  v62(v7, v4);

  if (qword_10093FA40 != -1)
  {
    swift_once();
  }

  v31 = sub_10000A61C(v4, qword_10099D8C0);
  v32 = sub_10076F70C();
  v33 = v64;
  v64(v7, v31, v4);
  v34 = swift_allocObject();
  *(v34 + 56) = 0xD000000000000011;
  *(v34 + 64) = 0x80000001007D8EE0;
  *(v34 + 72) = 0xD000000000000067;
  *(v34 + 80) = 0x80000001007D8F00;
  *(v34 + 88) = 0;
  v33(v34 + OBJC_IVAR____TtC20ProductPageExtension27BoolPreferencesDebugSetting_key, v7, v4);
  v35 = (v34 + OBJC_IVAR____TtC20ProductPageExtension27BoolPreferencesDebugSetting_preferences);
  *v35 = v32;
  v35[1] = &protocol witness table for LocalPreferences;

  sub_10075DDAC();
  v36 = sub_10075DD8C();
  v38 = v37;
  v58 = v11;
  v65(v20, v66);
  v68 = v36;
  v69 = v38;
  sub_10077140C();
  v62(v7, v4);

  v57 = v20;
  if (qword_10093FA48 != -1)
  {
    swift_once();
  }

  v39 = sub_10000A61C(v4, qword_10099D8D8);
  v40 = sub_10076F70C();
  v41 = v64;
  v64(v7, v39, v4);
  v42 = swift_allocObject();
  *(v42 + 56) = 0xD00000000000001DLL;
  *(v42 + 64) = 0x80000001007D8F70;
  *(v42 + 72) = 0xD00000000000003DLL;
  *(v42 + 80) = 0x80000001007D8F90;
  *(v42 + 88) = 0;
  v41(v42 + OBJC_IVAR____TtC20ProductPageExtension27BoolPreferencesDebugSetting_key, v7, v4);
  v43 = (v42 + OBJC_IVAR____TtC20ProductPageExtension27BoolPreferencesDebugSetting_preferences);
  *v43 = v40;
  v43[1] = &protocol witness table for LocalPreferences;

  v44 = v57;
  sub_10075DDAC();
  v45 = sub_10075DD8C();
  v47 = v46;
  v65(v44, v66);
  v68 = v45;
  v69 = v47;
  sub_10077140C();
  v62(v7, v4);

  sub_10000A5D4(&unk_100942870);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1007841E0;
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_100786040;
  v50 = v59;
  *(v49 + 32) = v60;
  *(v49 + 40) = v50;
  *(v49 + 48) = v34;
  *(v49 + 56) = v42;
  type metadata accessor for DebugSection();
  v51 = swift_allocObject();
  sub_10075DDAC();
  v52 = sub_10075DD8C();
  v54 = v53;

  v65(v44, v66);
  v51[2] = v52;
  v51[3] = v54;
  v51[4] = 0;
  v51[5] = 0xE000000000000000;
  v51[6] = v49;
  *(v48 + 32) = v51;

  return v48;
}

id sub_1001E74BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodaySettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001E75A8(void *a1, uint64_t a2)
{
  v4 = ASKBuildTypeGetCurrent();
  v5 = sub_10076FF9C();
  v7 = v6;
  if (v5 == sub_10076FF9C() && v7 == v8)
  {
    goto LABEL_15;
  }

  v10 = sub_10077167C();

  if ((v10 & 1) == 0)
  {
    v11 = sub_10076FF9C();
    v13 = v12;
    if (v11 != sub_10076FF9C() || v13 != v14)
    {
      v16 = sub_10077167C();

      if (v16)
      {
        goto LABEL_6;
      }

      v17 = sub_10076FF9C();
      v19 = v18;
      if (v17 == sub_10076FF9C() && v19 == v20)
      {
      }

      else
      {
        v24 = sub_10077167C();

        if ((v24 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      sub_10076F73C();
      sub_10076F72C();
      if (qword_1009414D0 != -1)
      {
        swift_once();
      }

      v25 = sub_10000A5D4(&unk_100955860);
      sub_10000A61C(v25, qword_1009A3248);
      sub_10076F41C();

      if (v27 != 2 && (v27 & 1) != 0)
      {
        goto LABEL_16;
      }

LABEL_25:
      v22 = 0;
      return v22 & 1;
    }

LABEL_15:

    goto LABEL_16;
  }

LABEL_6:

LABEL_16:
  sub_10076F73C();
  sub_10076F70C();
  if (*a1 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A5D4(&unk_100955860);
  sub_10000A61C(v21, a2);
  sub_10076F41C();

  v22 = v26;
  return v22 & 1;
}

id sub_1001E787C()
{
  result = [v0 animationKeys];
  if (result)
  {
    v2 = result;
    v3 = sub_1007701BC();

    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v3 + 40;
      do
      {

        v6 = sub_10076FF6C();
        v7 = [v0 animationForKey:v6];

        if (v7)
        {
          if (([v7 isRemovedOnCompletion] & 1) == 0)
          {
            v8 = sub_10076FF6C();

            [v0 removeAnimationForKey:v8];

            goto LABEL_6;
          }
        }

LABEL_6:
        v5 += 16;
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

void sub_1001E7B28()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SubviewToAncestorResizingView();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v2 bounds];
      [v0 convertRect:v2 fromCoordinateSpace:?];
      [v4 setFrame:?];

      v2 = v4;
    }
  }
}

id sub_1001E7C28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SubviewToAncestorResizingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001E7CD0(void *a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffect);
  if (v3)
  {
    v10 = v3;
    v4 = [v10 tintColor];
    if (v4)
    {
      v5 = v4;
      if (v2)
      {
        sub_1000325F0();
        v6 = v2;
        v7 = sub_100770EEC();

        if (v7)
        {

LABEL_13:
          a1 = v10;
          goto LABEL_14;
        }
      }

      else
      {
      }
    }

    else if (!v2)
    {
      goto LABEL_13;
    }

    [v10 setTintColor:v2];
    v8 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffectView);
    if (v8)
    {
      v9 = v8;
      [v9 setEffect:v10];

      a1 = v2;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_14:
}

void (*sub_1001E7E00(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffect);
  if (v3)
  {
    v3 = [v3 tintColor];
  }

  *a1 = v3;
  return sub_1001E7E68;
}

void sub_1001E7E68(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1001E7CD0(v2);
  }

  else
  {
    sub_1001E7CD0(*a1);
  }
}

void sub_1001E7ED0(char a1)
{
  v2 = v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isInstalling];
  v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isInstalling] = a1;
  if (v2 != (a1 & 1))
  {
    if (a1)
    {
      v3 = objc_opt_self();
      v4 = swift_allocObject();
      *(v4 + 16) = v1;
      v8[4] = sub_1001EB04C;
      v8[5] = v4;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_10009AEDC;
      v8[3] = &unk_10088C928;
      v5 = _Block_copy(v8);
      v6 = v1;

      [v3 transitionWithView:v6 duration:5242880 options:v5 animations:0 completion:0.3];
      _Block_release(v5);
    }

    else
    {
      v7 = *&v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_imageView];

      [v7 setHidden:0];
    }
  }
}

uint64_t sub_1001E8144(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v19.receiver = v4;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "frame");
  v12 = v11 != a4 || v10 != a3;
  v13 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
  swift_beginAccess();
  sub_10000A570(v4 + v13, v17);
  sub_10000CF78(v17, v18);
  if (sub_1007679FC())
  {
    sub_10000CD74(v17);
    goto LABEL_6;
  }

  if (!v12)
  {
    return sub_10000CD74(v17);
  }

  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = 0.0;
  v21.size.height = 0.0;
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  v15 = CGRectEqualToRect(v20, v21);
  result = sub_10000CD74(v17);
  if (!v15)
  {
LABEL_6:
    sub_10000A570(v5 + v13, v17);
    sub_10000CF78(v17, v18);
    sub_1001EB08C(&qword_10094D5D0, v14, type metadata accessor for OfferButton);
    sub_100767A7C();
    sub_10000CD74(v17);
    sub_10000A570(v5 + v13, v17);
    sub_10000CF78(v17, v18);
    sub_100767A3C();
    return sub_10000CD74(v17);
  }

  return result;
}

id sub_1001E8324()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_effectShape];
  [v2 setHidden:0];
  [v2 setFillColor:0];
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_outlineShape];
  [v3 setHidden:0];
  [v3 setFillColor:0];
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_imageView];
  [v4 setHidden:0];
  v5 = [v1 tintColor];
  [v4 setTintColor:v5];

  v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_label];
  [v6 setHidden:0];
  [v6 setTextAlignment:1];
  [v6 setNumberOfLines:1];
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_subtitleLabel] setHidden:1];
  [v4 bounds];
  [v4 setBounds:?];
  v7 = sub_10076C04C();
  v66[3] = v7;
  v66[4] = sub_1001EB08C(&qword_100943230, 255, &type metadata accessor for Feature);
  v8 = sub_10000DB7C(v66);
  (*(*(v7 - 8) + 104))(v8, enum case for Feature.glass_offer_button_2025A(_:), v7);
  LOBYTE(v7) = sub_10076C90C();
  sub_10000CD74(v66);
  if (v7)
  {
    v9 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffectView;
    v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffectView];
    if (v10)
    {
      v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffectView];
    }

    else
    {
      v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_buttonContainerView];
      v10 = 0;
    }

    v27 = v10;
    [v11 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v73.origin.x = v29;
    v73.origin.y = v31;
    v73.size.width = v33;
    v73.size.height = v35;
    MidX = CGRectGetMidX(v73);
    v74.origin.x = v29;
    v74.origin.y = v31;
    v74.size.width = v33;
    v74.size.height = v35;
    [v4 setCenter:{MidX, CGRectGetMidY(v74)}];
    v37 = *&v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_shapeLayerView];
    [v37 bounds];
    x = v75.origin.x;
    y = v75.origin.y;
    width = v75.size.width;
    height = v75.size.height;
    v42 = CGRectGetMidX(v75);
    v76.origin.x = x;
    v76.origin.y = y;
    v76.size.width = width;
    v76.size.height = height;
    [v2 setPosition:{v42, CGRectGetMidY(v76)}];
    [v37 bounds];
    v43 = v77.origin.x;
    v44 = v77.origin.y;
    v45 = v77.size.width;
    v46 = v77.size.height;
    v47 = CGRectGetMidX(v77);
    v78.origin.x = v43;
    v78.origin.y = v44;
    v78.size.width = v45;
    v78.size.height = v46;
    [v3 setPosition:{v47, CGRectGetMidY(v78)}];
    v48 = *&v1[v9];
    if (v48)
    {
      v49 = *&v1[v9];
    }

    else
    {
      v49 = *&v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_buttonContainerView];
      v48 = 0;
    }

    v50 = v48;
    [v49 bounds];
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;

    v79.origin.x = v52;
    v79.origin.y = v54;
    v79.size.width = v56;
    v79.size.height = v58;
    v59 = CGRectGetMidX(v79);
    v80.origin.x = v52;
    v80.origin.y = v54;
    v80.size.width = v56;
    v80.size.height = v58;
    [v6 setCenter:{v59, CGRectGetMidY(v80)}];
    v60 = *&v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_buttonContainerView];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v62 = Strong;
      v63 = swift_unknownObjectWeakLoadStrong();
      if (v63)
      {
        v64 = v63;
        [v62 bounds];
        [v60 convertRect:v62 fromCoordinateSpace:?];
        [v64 setFrame:?];
      }

      else
      {
      }
    }
  }

  else
  {
    [v3 position];
    [v4 setCenter:?];
    [v1 bounds];
    v12 = v67.origin.x;
    v13 = v67.origin.y;
    v14 = v67.size.width;
    v15 = v67.size.height;
    v16 = CGRectGetMidX(v67);
    v68.origin.x = v12;
    v68.origin.y = v13;
    v68.size.width = v14;
    v68.size.height = v15;
    [v2 setPosition:{v16, CGRectGetMidY(v68)}];
    [v1 bounds];
    v17 = v69.origin.x;
    v18 = v69.origin.y;
    v19 = v69.size.width;
    v20 = v69.size.height;
    v21 = CGRectGetMidX(v69);
    v70.origin.x = v17;
    v70.origin.y = v18;
    v70.size.width = v19;
    v70.size.height = v20;
    [v3 setPosition:{v21, CGRectGetMidY(v70)}];
    [v1 bounds];
    v22 = v71.origin.x;
    v23 = v71.origin.y;
    v24 = v71.size.width;
    v25 = v71.size.height;
    v26 = CGRectGetMidX(v71);
    v72.origin.x = v22;
    v72.origin.y = v23;
    v72.size.width = v24;
    v72.size.height = v25;
    [v6 setCenter:{v26, CGRectGetMidY(v72)}];
  }

  [v2 setStrokeStart:0.0];
  [v2 setStrokeEnd:0.0];
  [v3 setStrokeStart:0.0];
  [v3 setStrokeEnd:1.0];
  return sub_1001E787C();
}

id sub_1001E88F4(char *a1, char a2, void *a3)
{
  [a1 setNeedsLayout];
  if (a2)
  {

    return [a1 layoutIfNeeded];
  }

  else
  {
    v8.receiver = a1;
    v8.super_class = type metadata accessor for OfferButton();
    objc_msgSendSuper2(&v8, "invalidateIntrinsicContentSize");
    v7 = &a1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize];
    *v7 = 0;
    *(v7 + 1) = 0;
    v7[16] = 1;
    [a3 setNeedsLayout];
    return [a3 layoutIfNeeded];
  }
}

char *sub_1001E89B8(int a1)
{
  v2 = v1;
  v101 = a1;
  ObjectType = swift_getObjectType();
  v96 = sub_10076F9AC();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_10076443C();
  v106 = *(v107 - 8);
  v4 = __chkstk_darwin(v107);
  v104 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v102 = &v93 - v7;
  v103 = v8;
  __chkstk_darwin(v6);
  v105 = &v93 - v9;
  v10 = sub_10076E3DC();
  __chkstk_darwin(v10 - 8);
  v93 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_10076771C();
  v12 = *(v110 - 8);
  __chkstk_darwin(v110);
  v109 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v14 - 8);
  v16 = &v93 - v15;
  v17 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_effectShape;
  *&v1[v17] = [objc_allocWithZone(CAShapeLayer) init];
  v18 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_outlineShape;
  *&v1[v18] = [objc_allocWithZone(CAShapeLayer) init];
  v19 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_shapeLayerView;
  *&v1[v19] = [objc_allocWithZone(UIView) init];
  v20 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_imageView;
  *&v1[v20] = [objc_allocWithZone(UIImageView) init];
  v100 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_label;
  if (qword_100940E30 != -1)
  {
    swift_once();
  }

  v21 = sub_10076D3DC();
  v22 = sub_10000A61C(v21, qword_1009A1888);
  v23 = *(v21 - 8);
  v99 = *(v23 + 16);
  v99(v16, v22, v21);
  v98 = *(v23 + 56);
  v98(v16, 0, 1, v21);
  v24 = enum case for DirectionalTextAlignment.none(_:);
  v97 = *(v12 + 104);
  v97(v109, enum case for DirectionalTextAlignment.none(_:), v110);
  v25 = sub_1007626BC();
  v26 = objc_allocWithZone(v25);
  *&v1[v100] = sub_1007626AC();
  v27 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_subtitleLabel;
  if (qword_100940E48 != -1)
  {
    swift_once();
  }

  v28 = sub_10000A61C(v21, qword_1009A18D0);
  v99(v16, v28, v21);
  v98(v16, 0, 1, v21);
  sub_10076444C();
  v97(v109, v24, v110);
  v29 = objc_allocWithZone(v25);
  *&v1[v27] = sub_1007626AC();
  v30 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_buttonContainerView;
  type metadata accessor for SubviewToAncestorResizingView();
  *&v1[v30] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v31 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffect;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffect] = 0;
  v32 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffectView;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffectView] = 0;
  v33 = &v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_presenter];
  *v33 = 0u;
  *(v33 + 1) = 0u;
  *(v33 + 4) = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_displayProperties] = 0;
  v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isInstalling] = 0;
  swift_weakInit();
  swift_unknownObjectWeakInit();
  v34 = &v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isEnabledObserver];
  *v34 = 0u;
  *(v34 + 1) = 0u;
  v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isConfigurationLayoutEnabled] = 1;
  v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_includeTopPadding] = 2;
  v35 = &v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration];
  v35[3] = sub_10076404C();
  v35[4] = &protocol witness table for EmptyConfiguration;
  sub_10000DB7C(v35);
  sub_10076403C();
  v36 = &v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize];
  *v36 = 0;
  *(v36 + 1) = 0;
  v36[16] = 1;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_traitChangeRegistration] = 0;
  if (v101)
  {
    v37 = sub_10076C04C();
    *(&v113 + 1) = v37;
    v114 = sub_1001EB08C(&qword_100943230, 255, &type metadata accessor for Feature);
    v38 = sub_10000DB7C(&aBlock);
    v39 = enum case for Feature.glass_offer_button_2025A(_:);
    (*(*(v37 - 8) + 104))(v38, enum case for Feature.glass_offer_button_2025A(_:), v37);
    LOBYTE(v37) = sub_10076C90C();
    sub_10000CD74(&aBlock);
    if (v37)
    {
      v40 = [objc_allocWithZone(UIGlassEffect) init];
      v41 = *&v2[v31];
      *&v2[v31] = v40;

      v42 = [objc_allocWithZone(UIVisualEffectView) init];
      goto LABEL_10;
    }
  }

  else
  {
    v39 = enum case for Feature.glass_offer_button_2025A(_:);
  }

  v43 = *&v2[v31];
  *&v2[v31] = 0;

  v42 = 0;
LABEL_10:
  v44 = *&v2[v32];
  *&v2[v32] = v42;

  v116.receiver = v2;
  v116.super_class = ObjectType;
  v45 = objc_msgSendSuper2(&v116, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v45 setScalesLargeContentImage:1];
  v46 = [objc_opt_self() mainScreen];
  [v46 scale];
  v48 = v47;

  v49 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_outlineShape;
  [*&v45[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_outlineShape] setContentsScale:v48];
  [*&v45[v49] setFillColor:0];
  v50 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_effectShape;
  [*&v45[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_effectShape] setContentsScale:v48];
  [*&v45[v50] setFillColor:0];
  v51 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_label;
  v52 = *&v45[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_label];
  sub_10076266C();

  v53 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_imageView;
  [*&v45[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_imageView] setContentMode:4];
  v54 = sub_10076C04C();
  *(&v113 + 1) = v54;
  v114 = sub_1001EB08C(&qword_100943230, 255, &type metadata accessor for Feature);
  v55 = sub_10000DB7C(&aBlock);
  (*(*(v54 - 8) + 104))(v55, v39, v54);
  v56 = sub_10076C90C();
  sub_10000CD74(&aBlock);
  if (v56)
  {
    v57 = *&v45[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffectView];
    if (v57 && (v58 = *&v45[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffect]) != 0)
    {
      v59 = v57;
      v60 = v58;
      sub_10076E3CC();
      sub_100770C2C();
      [v59 setUserInteractionEnabled:0];
      [v59 setEffect:v60];
      v61 = [v59 contentView];
      [v61 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_buttonContainerView]];

      [v45 addSubview:v59];
    }

    else
    {
      [v45 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_buttonContainerView]];
    }

    v65 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_buttonContainerView;
    swift_unknownObjectWeakAssign();
    v66 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_shapeLayerView;
    swift_unknownObjectWeakAssign();
    v67 = [*&v45[v66] layer];
    [v67 addSublayer:*&v45[v49]];

    v68 = [*&v45[v66] layer];
    [v68 addSublayer:*&v45[v50]];

    [*&v45[v65] addSubview:*&v45[v66]];
    [*&v45[v65] addSubview:*&v45[v51]];
    [*&v45[v65] addSubview:*&v45[v53]];
  }

  else
  {
    v62 = v45;
    v63 = [v62 layer];
    [v63 addSublayer:*&v45[v49]];

    v64 = [v62 layer];
    [v64 addSublayer:*&v45[v50]];

    [v62 addSubview:*&v45[v51]];
    [v62 addSubview:*&v45[v53]];
  }

  v69 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_subtitleLabel;
  v70 = *&v45[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_subtitleLabel];
  sub_10076266C();

  [v45 addSubview:*&v45[v69]];
  [*&v45[v69] setShowsLargeContentViewer:1];
  v71 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v45 addInteraction:v71];

  isEscapingClosureAtFileLocation = [v45 traitCollection];
  v73 = sub_10077071C();
  v74 = v107;
  v75 = v106;
  v76 = v105;
  if ((v73 & 1) == 0)
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v77 = qword_100944CA0;
    goto LABEL_23;
  }

  if (qword_10093F520 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v77 = qword_100944C88;
LABEL_23:
    v78 = sub_10000A61C(v74, v77);
    v79 = *(v75 + 16);
    v80 = v102;
    v79(v102, v78, v74);

    v81 = *(v75 + 32);
    v81(v76, v80, v74);
    v82 = objc_opt_self();
    v83 = v104;
    v79(v104, v76, v74);
    v84 = (*(v75 + 80) + 24) & ~*(v75 + 80);
    v85 = swift_allocObject();
    *(v85 + 16) = v45;
    v81((v85 + v84), v83, v74);
    v86 = swift_allocObject();
    *(v86 + 16) = sub_1001EB7F8;
    *(v86 + 24) = v85;
    v114 = sub_1000349FC;
    v115 = v86;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v113 = sub_1001C5148;
    *(&v113 + 1) = &unk_10088C9A0;
    v87 = _Block_copy(&aBlock);
    v45 = v45;

    [v82 performWithoutAnimation:v87];
    _Block_release(v87);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  v88 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
  swift_beginAccess();
  sub_10000A570(&v45[v88], &aBlock);
  sub_10000CF78(&aBlock, *(&v113 + 1));
  sub_1001EB08C(&qword_10094D5D0, v89, type metadata accessor for OfferButton);
  sub_100767A3C();
  sub_10000CD74(&aBlock);
  aBlock = 0u;
  v113 = 0u;
  memset(v111, 0, sizeof(v111));
  v90 = v94;
  sub_10076F90C();
  sub_10000CFBC(v111, &unk_1009434C0);
  sub_10000CFBC(&aBlock, &unk_1009434C0);
  sub_100770B9C();
  (*(v95 + 8))(v90, v96);
  sub_10000A5D4(&unk_100945BF0);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_100783DD0;
  *(v91 + 32) = sub_10076E88C();
  *(v91 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100770C6C();

  swift_unknownObjectRelease();

  (*(v75 + 8))(v76, v74);

  return v45;
}

id sub_1001E9A08(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_label);
  sub_1007643EC();
  [v2 frame];
  [v2 setFrame:?];
  v3 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_effectShape);
  sub_1007643EC();
  [v3 frame];
  [v3 setFrame:?];
  v4 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_outlineShape);
  sub_1007643EC();
  [v4 frame];

  return [v4 setFrame:?];
}

id ArcadeSubscribeViewController.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1001E9D8C()
{
  swift_getObjectType();
  v1 = [v0 superview];
  if (v1)
  {

    v2 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_traitChangeRegistration;
    if (*&v0[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_traitChangeRegistration])
    {
      return;
    }

    sub_10000A5D4(&unk_100945BF0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100788B20;
    *(v3 + 32) = sub_10076E88C();
    *(v3 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    *(v3 + 48) = sub_10076E3EC();
    *(v3 + 56) = &protocol witness table for UITraitLayoutDirection;
    *(v3 + 64) = sub_10076E3BC();
    *(v3 + 72) = &protocol witness table for UITraitDisplayScale;
    *(v3 + 80) = sub_10076E3FC();
    *(v3 + 88) = &protocol witness table for UITraitLegibilityWeight;
    v4 = sub_100770C6C();

    *&v0[v2] = v4;
  }

  else
  {
    if (!*&v0[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_traitChangeRegistration])
    {
      return;
    }

    swift_unknownObjectRetain();
    sub_100770C7C();
  }

  swift_unknownObjectRelease();
}

void sub_1001E9F40()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  v2 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
  swift_beginAccess();
  sub_10000A570(&v0[v2], v11);
  sub_10000CF78(v11, v12);
  [v0 bounds];
  [objc_opt_self() areAnimationsEnabled];
  sub_1001EB08C(&qword_10094D5D0, v3, type metadata accessor for OfferButton);
  sub_100767A4C();
  sub_10000CD74(v11);
  v4 = sub_10076C04C();
  v12 = v4;
  v13 = sub_1001EB08C(&qword_100943230, 255, &type metadata accessor for Feature);
  v5 = sub_10000DB7C(v11);
  (*(*(v4 - 8) + 104))(v5, enum case for Feature.glass_offer_button_2025A(_:), v4);
  LOBYTE(v4) = sub_10076C90C();
  sub_10000CD74(v11);
  if (v4)
  {
    v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_buttonContainerView];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        [v8 bounds];
        [v6 convertRect:v8 fromCoordinateSpace:?];
        [v10 setFrame:?];

        v8 = v10;
      }
    }
  }
}

uint64_t sub_1001EA5C8(char a1)
{
  swift_getObjectType();
  LODWORD(v3) = 1057971241;
  if (a1)
  {
    *&v3 = 1.0;
    v4 = 1.0;
  }

  else
  {
    v4 = 0.25;
  }

  if (a1)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.56;
  }

  [*(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_outlineShape) setOpacity:v3];
  [*(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_imageView) setAlpha:v4];
  [*(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_label) setAlpha:v5];
  v6 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
  swift_beginAccess();
  sub_10000A570(v1 + v6, v9);
  sub_10000CF78(v9, v9[3]);
  sub_1001EB08C(&qword_10094D5D0, v7, type metadata accessor for OfferButton);
  sub_100767A6C();
  return sub_10000CD74(v9);
}

id sub_1001EA724()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "invalidateIntrinsicContentSize");
  v1 = &v0[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize];
  *v1 = 0;
  *(v1 + 1) = 0;
  v1[16] = 1;
  v2 = objc_opt_self();
  v3 = [v2 areAnimationsEnabled];
  [v2 setAnimationsEnabled:0];
  v4 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isConfigurationLayoutEnabled;
  v0[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isConfigurationLayoutEnabled] = 0;
  v5 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
  swift_beginAccess();
  sub_10000A570(&v0[v5], v8);
  sub_10000CF78(v8, v9);
  sub_1001EB08C(&qword_10094D5D0, v6, type metadata accessor for OfferButton);
  sub_100767A7C();
  sub_10000CD74(v8);
  sub_10000A570(&v0[v5], v8);
  sub_10000CF78(v8, v9);
  sub_100767A3C();
  sub_10000CD74(v8);
  [v2 setAnimationsEnabled:v3];
  v0[v4] = 1;
  [v0 setNeedsLayout];
  return [v0 setNeedsDisplay];
}

id sub_1001EA9B8@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_label);
  *a1 = v2;
  return v2;
}

id sub_1001EA9CC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_subtitleLabel);
  *a1 = v2;
  return v2;
}

id sub_1001EA9E0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_imageView);
  *a1 = v2;
  return v2;
}

id sub_1001EA9F4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "isHighlighted");
}

id sub_1001EAA2C()
{
  v1 = [v0 tintColor];

  return v1;
}

id sub_1001EAA64()
{
  result = [objc_opt_self() areAnimationsEnabled];
  if (result)
  {
    return *(v0 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isConfigurationLayoutEnabled);
  }

  return result;
}

id (*sub_1001EAAD4(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 overrideUserInterfaceStyle];
  return sub_1001EAB28;
}

id sub_1001EAB3C()
{
  result = *(v0 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffect);
  if (result)
  {
    return [result tintColor];
  }

  return result;
}

uint64_t (*sub_1001EAB78(void *a1))()
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
  v2[4] = sub_1001E7E00(v2);
  return sub_100019A4C;
}

void *sub_1001EAC00()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffectView);
  v2 = v1;
  if (!v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_buttonContainerView);
    v3 = v2;
  }

  v4 = v1;
  return v2;
}

id sub_1001EAC50()
{
  v1 = [v0 largeContentImage];

  return v1;
}

void sub_1001EAC88(void *a1)
{
  [v1 setLargeContentImage:a1];
}

void (*sub_1001EACD0(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 largeContentImage];
  return sub_1001EAD2C;
}

void sub_1001EAD2C(id *a1)
{
  v1 = *a1;
  [a1[1] setLargeContentImage:?];
}

uint64_t sub_1001EAD74()
{
  v1 = [v0 largeContentTitle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10076FF9C();

  return v3;
}

void sub_1001EADDC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_10076FF6C();
  }

  else
  {
    v3 = 0;
  }

  [v2 setLargeContentTitle:v3];
}

uint64_t (*sub_1001EAE48(uint64_t **a1))()
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
  v2[4] = sub_1001EAEB8(v2);
  return sub_10001D41C;
}

void (*sub_1001EAEB8(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 largeContentTitle];
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

  *a1 = v5;
  a1[1] = v7;
  return sub_1001EAF40;
}

void sub_1001EAF40(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    if (v3)
    {

      v4 = sub_10076FF6C();
    }

    else
    {
      v4 = 0;
    }

    [*(a1 + 16) setLargeContentTitle:v4];
  }

  else if (v3)
  {
    v4 = sub_10076FF6C();

    [*(a1 + 16) setLargeContentTitle:v4];
  }

  else
  {
    v4 = 0;
    [*(a1 + 16) setLargeContentTitle:0];
  }
}

uint64_t sub_1001EB014()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001EB074(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001EB08C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1001EB0D4(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_presenter;
  result = swift_beginAccess();
  if (*(v1 + 24))
  {
    sub_10000A570(v1, v3);
    sub_10000CF78(v3, v3[3]);
    sub_10076586C();
    return sub_10000CD74(v3);
  }

  return result;
}

uint64_t sub_1001EB184()
{
  v1 = v0 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize;
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize + 16))
  {
    v2 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000A570(v0 + v2, v8);
    sub_10000CF78(v8, v8[3]);
    sub_100767A2C();
    v4 = v3;
    v6 = v5;
    result = sub_10000CD74(v8);
    *v1 = v4;
    *(v1 + 8) = v6;
    *(v1 + 16) = 0;
  }

  return result;
}

void sub_1001EB244()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_effectShape;
  *(v1 + v8) = [objc_allocWithZone(CAShapeLayer) init];
  v9 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_outlineShape;
  *(v1 + v9) = [objc_allocWithZone(CAShapeLayer) init];
  v10 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_shapeLayerView;
  *(v1 + v10) = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_imageView;
  *(v1 + v11) = [objc_allocWithZone(UIImageView) init];
  v29 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_label;
  if (qword_100940E30 != -1)
  {
    swift_once();
  }

  v12 = sub_10076D3DC();
  v13 = sub_10000A61C(v12, qword_1009A1888);
  v14 = *(v12 - 8);
  v28 = *(v14 + 16);
  v28(v7, v13, v12);
  v27 = *(v14 + 56);
  v27(v7, 0, 1, v12);
  v15 = enum case for DirectionalTextAlignment.none(_:);
  v16 = *(v3 + 104);
  v30 = v3 + 104;
  v31 = v2;
  v16(v32, enum case for DirectionalTextAlignment.none(_:), v2);
  v17 = sub_1007626BC();
  v18 = objc_allocWithZone(v17);
  *(v1 + v29) = sub_1007626AC();
  v19 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_subtitleLabel;
  if (qword_100940E48 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v12, qword_1009A18D0);
  v28(v7, v20, v12);
  v27(v7, 0, 1, v12);
  sub_10076444C();
  v16(v32, v15, v31);
  v21 = objc_allocWithZone(v17);
  *(v1 + v19) = sub_1007626AC();
  v22 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_buttonContainerView;
  type metadata accessor for SubviewToAncestorResizingView();
  *(v1 + v22) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffect) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffectView) = 0;
  v23 = v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_presenter;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_displayProperties) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isInstalling) = 0;
  swift_weakInit();
  swift_unknownObjectWeakInit();
  v24 = (v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isEnabledObserver);
  *v24 = 0u;
  v24[1] = 0u;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isConfigurationLayoutEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_includeTopPadding) = 2;
  v25 = (v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration);
  v25[3] = sub_10076404C();
  v25[4] = &protocol witness table for EmptyConfiguration;
  sub_10000DB7C(v25);
  sub_10076403C();
  v26 = v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize;
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = 1;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_traitChangeRegistration) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1001EB734()
{
  v1 = sub_10076443C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

id sub_1001EB7F8()
{
  sub_10076443C();
  v1 = *(v0 + 16);

  return sub_1001E9A08(v1);
}

char *sub_1001EB874(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension35SmallSearchLockupCollectionViewCell_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14.receiver = v4;
  v14.super_class = type metadata accessor for SmallSearchLockupCollectionViewCell();
  v10 = objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
  v11 = [v10 contentView];
  [v11 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v12 = [v10 contentView];
  [v12 addSubview:*&v10[OBJC_IVAR____TtC20ProductPageExtension35SmallSearchLockupCollectionViewCell_lockupView]];

  return v10;
}

id sub_1001EBB2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmallSearchLockupCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001EBBA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>, double a8@<D4>, double a9@<D5>)
{
  v50 = a6;
  v45 = a5;
  v55 = a4;
  v47 = a9;
  v46 = a8;
  v56 = a1;
  v54 = a7;
  v41 = sub_10076EA6C();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v39 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10076B5BC();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076C36C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v44 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v39 - v18;
  v20 = sub_10000A5D4(&qword_100942C40);
  __chkstk_darwin(v20);
  v43 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v39 - v23;
  sub_100016E2C(a2, &v39 - v23, &qword_1009499A0);
  v42 = v20;
  sub_100016E2C(a3, &v24[*(v20 + 48)], &qword_1009499A0);
  swift_getKeyPath();
  sub_10000A5D4(&unk_100946720);
  sub_10076F49C();

  v52 = v15;
  v25 = *(v15 + 104);
  v26 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!LOBYTE(v57[0]))
  {
    v26 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v27 = *v26;
  v51 = v19;
  v53 = v14;
  v25(v19, v27, v14);
  sub_10076963C();
  v28 = v57[3];
  sub_10000CFBC(v57, &qword_100943310);
  swift_getKeyPath();
  v29 = v49;
  v30 = v48;
  sub_10076F49C();

  if ((*(v30 + 88))(v13, v29) == enum case for Shelf.ContentType.productReview(_:))
  {
    v31 = v24;
    v32 = v51;
    v33 = v52;
    v34 = v53;
    if (v28)
    {
      (*(v52 + 16))(v44, v51, v53);
      sub_1005AC334(0.0);
      sub_10076C33C();
    }

    else
    {
      v38 = v39;
      sub_10076202C();
      (*(v33 + 16))(v44, v32, v34);
      sub_10052D554(v38);
      sub_10076C33C();
      (*(v40 + 8))(v38, v41);
    }

    (*(v33 + 8))(v32, v34);
    return sub_10000CFBC(v31, &qword_100942C40);
  }

  else
  {
    v57[0] = v45;
    v35 = v43;
    sub_100016E2C(v24, v43, &qword_100942C40);
    v36 = *(v42 + 48);
    sub_100061E6C();
    sub_1007620BC();
    (*(v52 + 8))(v51, v53);
    sub_10000CFBC(v24, &qword_100942C40);
    sub_10000CFBC(v35 + v36, &qword_1009499A0);
    sub_10000CFBC(v35, &qword_1009499A0);
    return (*(v30 + 8))(v13, v29);
  }
}

uint64_t sub_1001EC290()
{
  sub_1001EC6B8();

  return sub_1007620BC();
}

uint64_t sub_1001EC374()
{
  sub_1001EC6B8();

  return sub_1007620AC();
}

uint64_t sub_1001EC458(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001EC714();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

uint64_t sub_1001EC4B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D6>, double a7@<D7>)
{
  v20[4] = a4;
  *&v20[2] = a6;
  *&v20[3] = a7;
  v20[0] = a5;
  v20[1] = a1;
  v10 = sub_10000A5D4(&qword_100942C40);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v20 - v15;
  v17 = *v7;
  sub_100016E2C(a2, v20 - v15, &qword_1009499A0);
  sub_100016E2C(a3, &v16[*(v11 + 56)], &qword_1009499A0);
  v20[5] = v17;
  sub_100016E2C(v16, v13, &qword_100942C40);
  v18 = *(v11 + 56);
  sub_100061E6C();

  sub_1007620AC();
  sub_10000CFBC(v16, &qword_100942C40);

  sub_10000CFBC(&v13[v18], &qword_1009499A0);
  return sub_10000CFBC(v13, &qword_1009499A0);
}

unint64_t sub_1001EC6B8()
{
  result = qword_10094D610;
  if (!qword_10094D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D610);
  }

  return result;
}

unint64_t sub_1001EC714()
{
  result = qword_10094D618;
  if (!qword_10094D618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D618);
  }

  return result;
}

uint64_t type metadata accessor for TodayCardLabelsView()
{
  result = qword_10094D6F8;
  if (!qword_10094D6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001ECBA4()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_applyPendingFontChange;
  v2 = *(*(v0 + qword_10094D6B8) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_applyPendingFontChange);
  if (v2)
  {

    v2(v3);
    sub_1000167E0(v2);
    v1 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_applyPendingFontChange;
  }

  v4 = *(*(v0 + qword_10094D6C0) + v1);
  if (v4)
  {

    v4(v5);
    sub_1000167E0(v4);
    v1 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_applyPendingFontChange;
  }

  v6 = *(*(v0 + qword_10094D6D0) + v1);
  if (v6)
  {

    v6(v7);

    sub_1000167E0(v6);
  }
}

void sub_1001ECCB8()
{
  if (qword_10093FA50 != -1)
  {
    swift_once();
  }

  v0 = qword_10094D648;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 preferredFontDescriptorWithTextStyle:v2];
  v4 = [v3 fontDescriptorWithSymbolicTraits:2];
  v5 = objc_opt_self();
  if (v4)
  {
    v6 = [v5 fontWithDescriptor:v4 size:0.0];

    v3 = v4;
  }

  else
  {
    v6 = [v5 fontWithDescriptor:v3 size:0.0];
  }

  qword_10094D650 = v6;
}

id sub_1001ECE0C()
{
  result = [objc_opt_self() systemFontOfSize:43.0 weight:UIFontWeightHeavy];
  qword_10094D668 = result;
  return result;
}

void sub_1001ECE78()
{
  if (qword_10093FA78 != -1)
  {
    swift_once();
  }

  v0 = qword_10094D670;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 preferredFontDescriptorWithTextStyle:v2];
  v4 = [objc_opt_self() fontWithDescriptor:v3 size:0.0];

  qword_10094D678 = v4;
}

void sub_1001ECF8C(uint64_t a1, void *a2, void **a3, void *a4)
{
  if (*a2 != -1)
  {
    v12 = a3;
    swift_once();
    a3 = v12;
  }

  v5 = *a3;
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 preferredFontDescriptorWithTextStyle:v7];
  v9 = [v8 fontDescriptorWithSymbolicTraits:32770];
  v10 = objc_opt_self();
  if (v9)
  {
    v11 = [v10 fontWithDescriptor:v9 size:0.0];

    v8 = v9;
  }

  else
  {
    v11 = [v10 fontWithDescriptor:v8 size:0.0];
  }

  *a4 = v11;
}

char *sub_1001ED0D8(uint64_t a1, _OWORD *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v76 = sub_10076F9AC();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[qword_10094D6A8] = 7;
  v3[qword_10094D6B0] = 7;
  v7 = qword_10094D6C8;
  *&v3[v7] = [objc_allocWithZone(UIImageView) init];
  v3[qword_10094D6D8] = 0;
  v3[qword_10094D6E8] = 0;
  v3[qword_10094D6F0] = 0;
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 40);
  v11 = *(a1 + 56);
  v12 = *(a1 + 72);
  v13 = *(a1 + 88);
  v14 = &v3[qword_10094D6E0];
  v15 = *(a1 + 16);
  *v14 = *a1;
  v14[1] = v15;
  v16 = *(a1 + 80);
  v14[4] = *(a1 + 64);
  v14[5] = v16;
  v17 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v17;
  v18 = &v3[qword_10094D6A0];
  v19 = a2[1];
  *v18 = *a2;
  v18[1] = v19;
  *(v18 + 25) = *(a2 + 25);
  sub_10000A5D4(&qword_10094D750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783DE0;
  *(inited + 32) = 5;
  v21 = qword_10093FA68;
  v82 = v8;

  v81 = v9;

  v80 = v10;

  v79 = v11;

  v78 = v12;

  v77 = v13;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_10094D660;
  *(inited + 40) = qword_10094D660;
  *(inited + 48) = 2;
  *(inited + 56) = v22;
  *(inited + 64) = 3;
  *(inited + 72) = v22;
  *(inited + 80) = 0;
  *(inited + 88) = v22;
  *(inited + 96) = 1;
  *(inited + 104) = v22;
  *(inited + 112) = 6;
  v23 = qword_10093FAA0;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = qword_10094D698;
  *(inited + 120) = qword_10094D698;
  *(inited + 128) = 4;
  v26 = qword_10093FA90;
  v27 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = qword_10094D688;
  *(inited + 136) = qword_10094D688;
  v29 = sub_1000FC220(inited);
  swift_setDeallocating();
  v30 = v28;
  sub_10000A5D4(&qword_10094D758);
  swift_arrayDestroy();
  v31 = type metadata accessor for TodayTransitioningLabelView();
  v32 = objc_allocWithZone(v31);
  *&v3[qword_10094D6C0] = sub_1001E2CBC(v29, v24);
  v33 = sub_1000FC220(_swiftEmptyArrayStorage);
  if (qword_10093FA80 != -1)
  {
    swift_once();
  }

  v34 = qword_10094D678;
  objc_allocWithZone(v31);
  *&v3[qword_10094D6D0] = sub_1001E2CBC(v33, v34);
  v35 = sub_1000FC220(_swiftEmptyArrayStorage);
  if (qword_10093FA58 != -1)
  {
    swift_once();
  }

  v36 = qword_10094D650;
  v37 = objc_allocWithZone(v31);
  *&v3[qword_10094D6B8] = sub_1001E2CBC(v35, v36);
  v88.receiver = v3;
  v88.super_class = ObjectType;
  v38 = objc_msgSendSuper2(&v88, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v39 = [v38 layer];
  [v39 setAllowsGroupBlending:0];

  v40 = qword_10094D6C0;
  *(*&v38[qword_10094D6C0] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v41 = *&v38[qword_10094D6B8];
  v42 = qword_10094D6B8;
  v73 = qword_10094D6B8;
  *(v41 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v43 = *&v38[qword_10094D6D0];
  v44 = qword_10094D6D0;
  v72 = qword_10094D6D0;
  *(v43 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v45 = *(v41 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  sub_100016F40(0, &qword_100942F10);
  v46 = v45;
  v47 = sub_100770D1C();
  [v46 setTextColor:v47];

  v48 = *&v38[v40];
  v71 = v40;
  v49 = *(v48 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v50 = sub_100770CFC();
  [v49 setTextColor:v50];

  v51 = *(*&v38[v44] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v52 = sub_100770D1C();
  [v51 setTextColor:v52];

  v53 = qword_10094D6C8;
  [*&v38[qword_10094D6C8] setContentMode:1];
  v54 = *(*&v38[v42] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v55 = v54;
  v56 = v74;
  sub_10076F95C();
  sub_10000CFBC(&v84, &unk_1009434C0);
  sub_10000CFBC(&v86, &unk_1009434C0);
  sub_100770B9C();

  v57 = *(v75 + 8);
  v58 = v76;
  v57(v56, v76);
  v59 = *(*&v38[v40] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v60 = v59;
  sub_10076F95C();
  sub_10000CFBC(&v84, &unk_1009434C0);
  sub_10000CFBC(&v86, &unk_1009434C0);
  sub_100770B9C();

  v57(v56, v58);
  v61 = *&v38[v53];
  v62 = v53;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v63 = v61;
  sub_10076F95C();
  sub_10000CFBC(&v84, &unk_1009434C0);
  sub_10000CFBC(&v86, &unk_1009434C0);
  sub_100770B9C();

  v57(v56, v58);
  v64 = v72;
  v65 = *(*&v38[v72] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v66 = v65;
  sub_10076F95C();
  sub_10000CFBC(&v84, &unk_1009434C0);
  sub_10000CFBC(&v86, &unk_1009434C0);
  sub_100770B9C();

  v57(v56, v58);
  [v38 addSubview:*&v38[v73]];
  [v38 addSubview:*&v38[v71]];
  [v38 addSubview:*&v38[v62]];
  [v38 addSubview:*&v38[v64]];
  sub_10000A5D4(&unk_100945BF0);
  v67 = swift_allocObject();
  v76 = xmmword_100783DD0;
  *(v67 + 16) = xmmword_100783DD0;
  *(v67 + 32) = sub_10076E88C();
  *(v67 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(&v87 + 1) = ObjectType;
  *&v86 = v38;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(&v86);
  v68 = swift_allocObject();
  *(v68 + 16) = v76;
  *(v68 + 32) = sub_10076E3FC();
  *(v68 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v38;
}

id sub_1001EDB98()
{
  v1 = v0;
  v2 = *&v0[qword_10094D6B8];
  v3 = qword_10094D6A8;
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_sizeCategory);
  v5 = v1[qword_10094D6A8];
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_sizeCategory) = v5;
  sub_1001E367C(v4, v5);
  v6 = *&v1[qword_10094D6C0];
  v7 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_sizeCategory);
  v8 = v1[v3];
  *(v6 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_sizeCategory) = v8;
  sub_1001E367C(v7, v8);
  v9 = *&v1[qword_10094D6D0];
  v10 = *(v9 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_sizeCategory);
  v11 = v1[v3];
  *(v9 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_sizeCategory) = v11;
  sub_1001E367C(v10, v11);

  return [v1 setNeedsLayout];
}

double sub_1001EDC4C()
{
  [v0 layoutIfNeeded];
  v1 = v0[qword_10094D6A8];
  v2 = *&v0[qword_10094D6B8];
  if ([*&v2[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label] isHidden] & 1) != 0 || (v3 = *&v0[qword_10094D6C0], (objc_msgSend(*&v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label], "isHidden")))
  {
    v4 = *&v0[qword_10094D6C0];
    v5 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
    if ([*&v4[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label] isHidden] & 1) != 0 || (v0[qword_10094D6D8])
    {
      if (([*&v4[v5] isHidden] & 1) != 0 || v0[qword_10094D6D8] != 1)
      {
        v10 = *&v0[qword_10094D6C8];
        if (([v10 isHidden] & 1) == 0)
        {
          [v10 frame];
LABEL_19:
          MaxY = CGRectGetMaxY(*&v6);
          return MaxY + 20.0;
        }

        [v0 bounds];
      }

      else
      {
        [v4 frame];
        if (v1 != 4)
        {
          goto LABEL_19;
        }
      }

      return CGRectGetMinY(*&v6);
    }

    else
    {
      [v4 frame];
      result = CGRectGetMinY(v18);
      if (v1 != 4)
      {
        return result + 20.0;
      }
    }
  }

  else
  {
    if (v1 != 4)
    {
      [v3 frame];
      MaxY = CGRectGetMinY(v19);
      return MaxY + 20.0;
    }

    [v2 frame];

    return CGRectGetMaxY(*&v12);
  }

  return result;
}

id sub_1001EDE3C()
{
  v1 = v0;
  v2 = *&v0[qword_10094D6B8];
  v3 = &v0[qword_10094D6E0];
  v4 = *&v0[qword_10094D6E0];

  v5 = [v0 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = v4(v6);

  *(v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_numberOfLines) = v7;
  v8 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel);
  if (!v8)
  {
    v8 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  }

  [v8 setNumberOfLines:v7];
  v9 = *&v1[qword_10094D6C0];
  v10 = *(v3 + 10);

  v11 = [v1 traitCollection];
  v12 = [v11 preferredContentSizeCategory];

  v13 = v10(v12);

  *(v9 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_numberOfLines) = v13;
  v14 = *(v9 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel);
  if (!v14)
  {
    v14 = *(v9 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  }

  [v14 setNumberOfLines:v13];
  v15 = *&v1[qword_10094D6D0];
  v16 = *(v3 + 6);

  v17 = [v1 traitCollection];
  v18 = [v17 preferredContentSizeCategory];

  v19 = v16(v18);

  *(v15 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_numberOfLines) = v19;
  v20 = *(v15 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel);
  if (v20)
  {
    [v20 setNumberOfLines:v19];
  }

  else
  {
    [*(v15 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label) setNumberOfLines:v19];
  }

  v21 = *(v3 + 2);
  v22 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);

  v23 = [v1 traitCollection];
  v24 = [v23 preferredContentSizeCategory];

  v25 = v21(v24);

  [v22 setMaximumContentSizeCategory:v25];

  v26 = *(v3 + 4);
  v27 = *(v9 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);

  v28 = [v1 traitCollection];
  v29 = [v28 preferredContentSizeCategory];

  v30 = v26(v29);

  [v27 setMaximumContentSizeCategory:v30];

  v31 = *(v3 + 8);
  v32 = *(v15 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);

  v33 = [v1 traitCollection];
  v34 = [v33 preferredContentSizeCategory];

  v35 = v31(v34);

  [v32 setMaximumContentSizeCategory:v35];

  return [v1 setNeedsLayout];
}

void sub_1001EE26C()
{
  v1 = *(v0 + qword_10094D6B8);
  v2 = *(v0 + qword_10094D6F0);
  v3 = &OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning) = v2;
  if (v2 == 1)
  {
    *(*(v0 + qword_10094D6C0) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning) = 1;
    v4 = *(v0 + qword_10094D6D0);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout) = 0;
    v5 = *(v0 + qword_10094D6C0);
    *(v5 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning) = v2;
    *(v5 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout) = 0;
    v4 = *(v0 + qword_10094D6D0);
    *(v4 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning) = v2;
    v3 = &OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout;
    LOBYTE(v2) = 0;
  }

  *(v4 + *v3) = v2;
}

void sub_1001EE314(void *a1)
{
  v1 = a1;
  sub_1001EDE3C();
}

void sub_1001EE35C(uint64_t a1, char a2)
{
  v4 = sub_10076C7EC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v5 + 104))(v8, enum case for TodayCard.Style.white(_:), v4, v6);
    sub_1001F0244(&qword_100944B98, &type metadata accessor for TodayCard.Style);
    sub_10077018C();
    sub_10077018C();
    if (v10[2] == v10[0] && v10[3] == v10[1])
    {
      v9 = 1;
    }

    else if (sub_10077167C())
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    (*(v5 + 8))(v8, v4);

    [v2 setOverrideUserInterfaceStyle:v9];
    sub_1001EE568();
  }

  else
  {
    [v2 setOverrideUserInterfaceStyle:{0, v6.n128_f64[0]}];

    sub_1001EE568();
  }
}

void sub_1001EE568()
{
  if ([v0 overrideUserInterfaceStyle])
  {
    [v0 overrideUserInterfaceStyle];
    sub_10076FF9C();
    v1 = sub_10076FF6C();

    v2 = [*&v0[qword_10094D6B8] layer];
    [v2 setCompositingFilter:v1];

    v4 = [*&v0[qword_10094D6D0] layer];
    [v4 setCompositingFilter:v1];
  }

  else
  {
    v3 = [*&v0[qword_10094D6B8] layer];
    [v3 setCompositingFilter:0];

    v4 = [*&v0[qword_10094D6D0] layer];
    [v4 setCompositingFilter:0];
  }
}

id sub_1001EE6D4@<X0>(uint64_t *a1@<X8>)
{
  v20 = *(v1 + qword_10094D6A0 + 16);
  v21 = *(v1 + qword_10094D6A0);
  v3 = *(v1 + qword_10094D6A0 + 32);
  v4 = *(v1 + qword_10094D6B8);
  v5 = *(v1 + qword_10094D6C0);
  v6 = *(v1 + qword_10094D6A0 + 40);
  v7 = *&v5[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  v23 = sub_1007626BC();
  v24 = &protocol witness table for UILabel;
  *&v22 = v7;
  v8 = *(v1 + qword_10094D6C8);
  v9 = v4;
  v10 = v5;
  v11 = v7;
  v12 = [v8 image];
  if (v12)
  {

    v13 = sub_100016F40(0, &qword_10094A280);
    v14 = v8;
    v15 = &protocol witness table for UIView;
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v8 = 0;
  }

  v19 = *(v1 + qword_10094D6D0);
  v16 = *(v1 + qword_10094D6D8);
  a1[3] = &type metadata for TodayCardLabelsLayout;
  a1[4] = sub_1001F0350();
  v17 = swift_allocObject();
  *a1 = v17;
  *(v17 + 16) = v21;
  *(v17 + 32) = v20;
  *(v17 + 48) = v3;
  *(v17 + 56) = v6;
  *(v17 + 64) = v9;
  *(v17 + 72) = v10;
  sub_10003F19C(&v22, v17 + 80);
  *(v17 + 120) = v8;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 144) = v13;
  *(v17 + 152) = v15;
  *(v17 + 160) = v19;
  *(v17 + 168) = v16;

  return v19;
}

void sub_1001EE880(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_10000CF78(a1, a1[3]);
  v4 = sub_10076E36C();
  v6 = v3();

  if (v6)
  {
    sub_10000CF78(a1, a1[3]);
    v5 = sub_10076E36C();
    if (sub_10077086C())
    {
      v6;
    }

    sub_10008B8A4(a1, a1[3]);
    sub_10076E37C();
  }
}

void sub_1001EE99C(void *a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  sub_10000CF78(a1, a1[3]);
  v4 = sub_10076E36C();
  v6 = v3();

  if (v6)
  {
    sub_10000CF78(a1, a1[3]);
    v5 = sub_10076E36C();
    if (sub_10077086C())
    {
      v6;
    }

    sub_10008B8A4(a1, a1[3]);
    sub_10076E37C();
  }
}

void sub_1001EEAB8(void *a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  sub_10000CF78(a1, a1[3]);
  v4 = sub_10076E36C();
  v6 = v3();

  if (v6)
  {
    sub_10000CF78(a1, a1[3]);
    v5 = sub_10076E36C();
    if (sub_10077086C())
    {
      v6;
    }

    sub_10008B8A4(a1, a1[3]);
    sub_10076E37C();
  }
}

id sub_1001EEBD4(void *a1)
{
  v1 = a1;
  sub_1001EEC4C();
  v3 = v2;

  if (v3)
  {
    v4 = sub_10076FF6C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1001EEC4C()
{
  v0 = sub_1001EEEC8();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_21:
    v3 = sub_10077158C();
    if (!v3)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_22;
    }
  }

  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = sub_10077149C();
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_20;
        }

        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v9 = [v7 text];
      if (v9)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_22;
      }
    }

    v10 = v9;
    v11 = sub_10076FF9C();
    v18 = v12;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_10049D954(0, *(v5 + 2) + 1, 1, v5);
    }

    v14 = *(v5 + 2);
    v13 = *(v5 + 3);
    if (v14 >= v13 >> 1)
    {
      v5 = sub_10049D954((v13 > 1), v14 + 1, 1, v5);
    }

    *(v5 + 2) = v14 + 1;
    v15 = &v5[16 * v14];
    *(v15 + 4) = v11;
    *(v15 + 5) = v18;
  }

  while (v4 != v3);
LABEL_22:

  sub_10000A5D4(&unk_10094BB60);
  sub_10003BCA8();
  v16 = sub_10076FEFC();

  return v16;
}

void sub_1001EEE34(void *a1, uint64_t a2, NSString a3)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_10076FF9C();
    v6 = a1;
    a3 = sub_10076FF6C();
  }

  else
  {
    v7 = a1;
  }

  v8.receiver = a1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "setAccessibilityLabel:", a3);
}

void *sub_1001EEEC8()
{
  sub_10000A5D4(&unk_100942870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784DC0;
  v2 = *(v0 + qword_10094D6B8);
  *(inited + 32) = v2;
  v3 = *(v0 + qword_10094D6C0);
  *(inited + 40) = v3;
  v4 = *(v0 + qword_10094D6D0);
  *(inited + 48) = v4;
  v21 = _swiftEmptyArrayStorage;
  v5 = inited & 0xC000000000000001;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_33;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_32;
  }

  for (i = v6; ; i = sub_10077149C())
  {
    v10 = i;
    if ([i isHidden] & 1) != 0 || (objc_msgSend(*&v10[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label], "isHidden"))
    {

      if (v5)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
      if (v5)
      {
LABEL_18:
        v11 = sub_10077149C();
        goto LABEL_9;
      }
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      goto LABEL_32;
    }

    v11 = *(inited + 40);
LABEL_9:
    v12 = v11;
    if ([v11 isHidden] & 1) != 0 || (objc_msgSend(*&v12[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label], "isHidden"))
    {

      if (v5)
      {
        break;
      }

      goto LABEL_12;
    }

    sub_1007714CC();
    sub_1007714FC();
    sub_10077150C();
    sub_1007714DC();
    if (v5)
    {
      break;
    }

LABEL_12:
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v13 = *(inited + 48);
      goto LABEL_14;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v13 = sub_10077149C();
LABEL_14:
  v14 = v13;
  if ([v13 isHidden] & 1) != 0 || (objc_msgSend(*&v14[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label], "isHidden"))
  {
  }

  else
  {
    sub_1007714CC();
    sub_1007714FC();
    sub_10077150C();
    sub_1007714DC();
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  if ((v21 & 0x8000000000000000) != 0 || (v21 & 0x4000000000000000) != 0)
  {
    v15 = sub_10077158C();
    if (v15)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

  v15 = *(v21 + 16);
  if (!v15)
  {
LABEL_35:

    return _swiftEmptyArrayStorage;
  }

LABEL_25:
  result = sub_1007714EC();
  if (v15 < 0)
  {
    __break(1u);
  }

  else
  {
    v17 = 0;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v18 = sub_10077149C();
      }

      else
      {
        v18 = *(v21 + 8 * v17 + 32);
      }

      v19 = v18;
      ++v17;
      v20 = *&v18[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];

      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
    }

    while (v15 != v17);

    return _swiftEmptyArrayStorage;
  }

  return result;
}

Class sub_1001EF240(void *a1)
{
  v1 = a1;
  v2 = sub_1001EEEC8();
  sub_10016E304(v2);

  v3.super.isa = sub_1007701AC().super.isa;

  return v3.super.isa;
}

void sub_1001EF2C8(void *a1, uint64_t a2, Class isa, SEL *a4)
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    sub_1007701BC();
    v8 = a1;
    isa = sub_1007701AC().super.isa;
  }

  else
  {
    v9 = a1;
  }

  v10.receiver = a1;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, *a4, isa);
}

uint64_t sub_1001EF39C()
{
}

uint64_t sub_1001EF464(uint64_t a1)
{
}

__n128 sub_1001EF538(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1001EF554(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1001EF59C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001EF628(uint64_t a1)
{
  v2 = sub_10076637C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&qword_10094D760);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  sub_1001F01D4(a1, &v35 - v10);
  v12 = *(v3 + 48);
  v13 = v12(v11, 1, v2);
  v36 = v3;
  if (v13 == 1)
  {
    sub_10000CFBC(v11, &qword_10094D760);
    v14 = 0;
  }

  else
  {
    sub_10076636C();
    sub_1001F0244(&qword_10094D768, &type metadata accessor for StringCharacteristics);
    v14 = sub_10077124C();
    v15 = *(v3 + 8);
    v15(v5, v2);
    v15(v11, v2);
  }

  sub_1001F01D4(a1, v8);
  if (v12(v8, 1, v2) != 1)
  {
    sub_10076634C();
    sub_1001F0244(&qword_10094D768, &type metadata accessor for StringCharacteristics);
    v17 = sub_10077124C();
    v18 = *(v36 + 8);
    v18(v5, v2);
    v18(v8, v2);
    if (v14)
    {
      v19 = 52.0;
    }

    else
    {
      v19 = 44.0;
    }

    if ((v14 | v17))
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  sub_10000CFBC(v8, &qword_10094D760);
  if ((v14 & 1) == 0)
  {
LABEL_11:
    v16 = 0x4042000000000000;
    goto LABEL_12;
  }

  v16 = 0x404A000000000000;
LABEL_12:
  v19 = *&v16;
LABEL_13:
  v20 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v20 setMaximumLineHeight:v19];
  sub_10000A5D4(&unk_10094E7E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783C60;
  *(inited + 32) = NSFontAttributeName;
  v22 = qword_10093FA70;
  v23 = NSFontAttributeName;
  if (v22 != -1)
  {
    swift_once();
  }

  v24 = qword_10094D668;
  v25 = sub_100016F40(0, &qword_100942F00);
  *(inited + 40) = v24;
  *(inited + 64) = v25;
  *(inited + 72) = NSParagraphStyleAttributeName;
  v26 = sub_100016F40(0, &unk_10095D790);
  *(inited + 80) = v20;
  *(inited + 104) = v26;
  *(inited + 112) = kCTBaselineOffsetAttributeName;
  v27 = objc_allocWithZone(NSNumber);
  v28 = v24;
  v29 = NSParagraphStyleAttributeName;
  v30 = v20;
  v31 = kCTBaselineOffsetAttributeName;
  v32 = [v27 initWithDouble:{fmin(v19 + -43.0, 0.0)}];
  *(inited + 144) = sub_100016F40(0, &qword_1009492D0);
  *(inited + 120) = v32;
  v33 = sub_1000FC5F4(inited);
  swift_setDeallocating();
  sub_10000A5D4(&unk_100948B10);
  swift_arrayDestroy();

  return v33;
}

unint64_t sub_1001EFB40(uint64_t *a1, void **a2)
{
  sub_10000A5D4(&unk_10094E7E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783C60;
  *(inited + 32) = NSFontAttributeName;
  v5 = *a1;
  v6 = NSFontAttributeName;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = *a2;
  v8 = sub_100016F40(0, &qword_100942F00);
  *(inited + 40) = v7;
  *(inited + 64) = v8;
  *(inited + 72) = NSParagraphStyleAttributeName;
  v9 = objc_allocWithZone(NSParagraphStyle);
  v10 = v7;
  v11 = NSParagraphStyleAttributeName;
  v12 = [v9 init];
  v13 = sub_100016F40(0, &qword_10094D748);
  *(inited + 80) = v12;
  *(inited + 104) = v13;
  *(inited + 112) = kCTBaselineOffsetAttributeName;
  v14 = objc_allocWithZone(NSNumber);
  v15 = kCTBaselineOffsetAttributeName;
  v16 = [v14 initWithDouble:0.0];
  *(inited + 144) = sub_100016F40(0, &qword_1009492D0);
  *(inited + 120) = v16;
  v17 = sub_1000FC5F4(inited);
  swift_setDeallocating();
  sub_10000A5D4(&unk_100948B10);
  swift_arrayDestroy();
  return v17;
}

id sub_1001EFCF0(_BYTE *a1)
{
  v3 = *&a1[qword_10094D6A0 + 32];
  v4 = a1[qword_10094D6A0 + 40];
  v5 = &v1[qword_10094D6A0];
  v6 = *&a1[qword_10094D6A0 + 16];
  *v5 = *&a1[qword_10094D6A0];
  *(v5 + 1) = v6;
  *(v5 + 4) = v3;
  v5[40] = v4;
  [v1 setNeedsLayout];
  v1[qword_10094D6D8] = a1[qword_10094D6D8];
  v7 = *&v1[qword_10094D6C0];
  *(v7 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v8 = v7;
  v51 = *&v1[qword_10094D6B8];
  v9 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  v50 = *&a1[qword_10094D6B8];
  v10 = *(v50 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v11 = *(v51 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v12 = [v10 text];
  [v11 setText:v12];

  v13 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  v14 = *(v8 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v15 = v8;
  v16 = *&a1[qword_10094D6C0];
  v17 = *(v16 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v18 = v14;
  v19 = [v17 attributedText];
  [v18 setAttributedText:v19];

  v49 = v15;
  v20 = *(v16 + v13);
  v21 = *(v15 + v13);
  [v21 setAdjustsFontSizeToFitWidth:{objc_msgSend(v20, "adjustsFontSizeToFitWidth")}];

  v22 = *(v16 + v13);
  v23 = *(v15 + v13);
  [v22 minimumScaleFactor];
  [v23 setMinimumScaleFactor:?];

  v24 = *&v1[qword_10094D6C8];
  v46 = v24;
  v47 = *&a1[qword_10094D6C8];
  v25 = [v47 image];
  [v24 setImage:v25];

  v26 = *&v1[qword_10094D6D0];
  v27 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  v28 = *&a1[qword_10094D6D0];
  v29 = *(v28 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v30 = *(v26 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v31 = [v29 text];
  [v30 setText:v31];

  v32 = *(v50 + v9);
  v33 = *(v51 + v9);
  [v33 setHidden:{objc_msgSend(v32, "isHidden")}];

  v34 = *(v16 + v13);
  v35 = *(v49 + v13);
  [v35 setHidden:{objc_msgSend(v34, "isHidden")}];

  [v46 setHidden:{objc_msgSend(v47, "isHidden")}];
  v36 = *(v26 + v27);
  v37 = *(v28 + v27);
  v38 = v36;
  [v38 setHidden:{objc_msgSend(v37, "isHidden")}];

  v39 = *&a1[qword_10094D6E0 + 88];
  v40 = &v1[qword_10094D6E0];
  v41 = *&a1[qword_10094D6E0 + 8];
  v42 = *&a1[qword_10094D6E0 + 24];
  v45 = *&a1[qword_10094D6E0 + 40];
  v43 = *&a1[qword_10094D6E0 + 56];
  *v48 = *&a1[qword_10094D6E0 + 72];
  *v40 = *&a1[qword_10094D6E0];
  *(v40 + 8) = v41;
  *(v40 + 24) = v42;
  *(v40 + 40) = v45;
  *(v40 + 56) = v43;
  *(v40 + 72) = *v48;
  *(v40 + 11) = v39;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_1001EDE3C();

  [v1 setOverrideUserInterfaceStyle:{objc_msgSend(a1, "overrideUserInterfaceStyle")}];
  sub_1001EE568();

  return [v1 setNeedsLayout];
}

uint64_t sub_1001F01D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10094D760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001F0244(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1001F028C()
{
  *(v0 + qword_10094D6A8) = 7;
  *(v0 + qword_10094D6B0) = 7;
  v1 = qword_10094D6C8;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  *(v0 + qword_10094D6D8) = 0;
  *(v0 + qword_10094D6E8) = 0;
  *(v0 + qword_10094D6F0) = 0;
  sub_10077156C();
  __break(1u);
}

unint64_t sub_1001F0350()
{
  result = qword_10094D770;
  if (!qword_10094D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D770);
  }

  return result;
}

uint64_t sub_1001F03A4()
{
  sub_10000CD74(v0 + 80);
  if (*(v0 + 144))
  {
    sub_10000CD74(v0 + 120);
  }

  return _swift_deallocObject(v0, 169, 7);
}

uint64_t sub_1001F040C()
{
  v7 = sub_10077067C();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10077063C();
  __chkstk_darwin(v3);
  v4 = sub_10076F0CC();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_100085204();
  sub_10076F0BC();
  v8 = _swiftEmptyArrayStorage;
  sub_1001F0EF0(&qword_10094D780, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000A5D4(&qword_10094D788);
  sub_100048C98(&qword_10094D790, &qword_10094D788);
  sub_1007712CC();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = sub_1007706AC();
  qword_10094D778 = result;
  return result;
}

uint64_t sub_1001F065C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_opt_self() sharedInstance];
  v17[0] = 0;
  LODWORD(a4) = [v10 setCategory:a3 mode:a4 options:a5 error:v17];

  if (a4)
  {
    v11 = v17[0];
  }

  else
  {
    v12 = v17[0];
    sub_10075DA4C();

    swift_willThrow();
    if (qword_1009412D8 != -1)
    {
      swift_once();
    }

    v13 = sub_10076FD4C();
    sub_10000A61C(v13, qword_1009A25D0);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100784500;
    sub_10076F27C();
    swift_getErrorValue();
    v17[3] = v16;
    v14 = sub_10000DB7C(v17);
    (*(*(v16 - 1) + 16))(v14);
    sub_10076F32C();
    sub_1000258C0(v17);
    sub_10076FBEC();
  }

  return sub_1001F0C04(a1, a2, &unk_10088CB28, sub_1001F12BC, &unk_10088CB40);
}

uint64_t sub_1001F0914(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 sharedInstance];
  v6 = [v5 categoryOptions];

  if ((v6 & 1) == 0)
  {
    v7 = [v4 sharedInstance];
    v15[0] = 0;
    v8 = [v7 setCategory:AVAudioSessionCategoryPlayback mode:AVAudioSessionModeDefault options:1 error:v15];

    if (v8)
    {
      v9 = v15[0];
    }

    else
    {
      v10 = v15[0];
      sub_10075DA4C();

      swift_willThrow();
      if (qword_1009412D8 != -1)
      {
        swift_once();
      }

      v11 = sub_10076FD4C();
      sub_10000A61C(v11, qword_1009A25D0);
      sub_10000A5D4(&unk_100942A60);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100784500;
      sub_10076F27C();
      swift_getErrorValue();
      v15[3] = v14;
      v12 = sub_10000DB7C(v15);
      (*(*(v14 - 1) + 16))(v12);
      sub_10076F32C();
      sub_1000258C0(v15);
      sub_10076FBEC();
    }
  }

  return sub_1001F0C04(a1, a2, &unk_10088CBC8, sub_1001F1278, &unk_10088CBE0);
}

uint64_t sub_1001F0C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v8 = sub_10076F08C();
  v21 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10076F0CC();
  v11 = *(v20 - 8);
  __chkstk_darwin(v20);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100085204();
  v14 = sub_10077068C();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  aBlock[4] = a4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = v19;
  v16 = _Block_copy(aBlock);
  sub_10001CE50(a1);

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001F0EF0(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0);
  sub_100048C98(&qword_100945170, &unk_10094E1C0);
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v16);

  (*(v21 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v20);
}

uint64_t sub_1001F0ED8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001F0EF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001F0F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076F08C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076F0CC();
  v8 = *(v15 - 8);
  __chkstk_darwin(v15);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093FAA8 != -1)
  {
    swift_once();
  }

  v14[1] = qword_10094D778;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  aBlock[4] = sub_1001F1230;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_10088CB90;
  v12 = _Block_copy(aBlock);
  sub_10001CE50(a1);
  sub_10076F0AC();
  v16 = _swiftEmptyArrayStorage;
  sub_1001F0EF0(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0);
  sub_100048C98(&qword_100945170, &unk_10094E1C0);
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v15);
}

uint64_t sub_1001F1238()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001F127C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

id sub_1001F12C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v9 = v8;
  v91 = a8;
  v92 = a7;
  v97 = a5;
  v98 = a4;
  v89 = a3;
  v88 = sub_10000A5D4(&qword_10094D7B0);
  __chkstk_darwin(v88);
  v90 = v78 - v13;
  v14 = sub_10076C55C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v100 = v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_10075FAEC();
  v94 = *(v95 - 1);
  __chkstk_darwin(v95);
  v18 = v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000A5D4(&unk_100946750);
  v101 = *(v19 - 8);
  v102 = v19;
  v20 = *(v101 + 64);
  __chkstk_darwin(v19);
  v99 = v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v96 = v78 - v22;
  v23 = sub_10000A5D4(&unk_100946760);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23 - 8);
  *&v29 = __chkstk_darwin(v26).n128_u64[0];
  if (a1 && a2)
  {
    v81 = v28;
    v85 = v78 - v27;
    v84 = a2;
    v83 = v15;
    v87 = v14;
    *&v9[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_displayProperties] = a1;
    swift_retain_n();

    v110 = 0;
    v108 = 0u;
    v109 = 0u;
    v30 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_presenter;
    swift_beginAccess();
    v80 = v30;
    sub_1001F9A10(&v108, &v9[v30]);
    swift_endAccess();
    swift_weakAssign();
    sub_100767E8C();
    v78[3] = sub_10076F64C();
    sub_10076FC1C();
    v31 = v108;
    sub_100767E2C();
    v32 = sub_100766A6C();
    v93 = a1;
    v86 = v31;
    if (v32)
    {
      v33 = swift_allocObject();
      v82 = v9;
      v79 = v33;
      swift_unknownObjectWeakInit();
      v34 = swift_allocObject();
      v78[1] = v34;
      swift_weakInit();
      v78[2] = a6;
      sub_100016E2C(v98, v85, &unk_100946760);
      v35 = v101;
      v36 = v102;
      v37 = v96;
      (*(v101 + 16))(v96, v97, v102);
      v38 = (*(v24 + 80) + 56) & ~*(v24 + 80);
      v39 = (v25 + *(v35 + 80) + v38) & ~*(v35 + 80);
      v40 = swift_allocObject();
      v41 = v79;
      *(v40 + 2) = v34;
      *(v40 + 3) = v41;
      v42 = v84;
      *(v40 + 4) = v93;
      *(v40 + 5) = v42;
      *(v40 + 6) = v89;
      sub_1001F9D20(v85, &v40[v38]);
      (*(v35 + 32))(&v40[v39], v37, v36);
      v43 = &v40[v39 + v20];
      *v43 = v92 & 1;
      v43[1] = v91 & 1;

      sub_100767DFC();
      v9 = v82;
      a1 = v93;

      v31 = v86;
    }

    sub_100767E6C();
    v44 = v31;
    v45 = sub_10075FABC();
    (*(v94 + 8))(v18, v95);
    v46 = v100;
    sub_100766AEC();
    if (!sub_1001F26A4(v46, a1, v45 & 1))
    {

      return (*(v83 + 8))(v46, v87);
    }

    v47 = v101 + 16;
    v48 = *(v101 + 16);
    v48(v99, v97, v102);
    sub_100016E2C(v98, v81, &unk_100946760);
    v49 = *(v88 + 48);
    v50 = v83;
    v51 = v90;
    v52 = v46;
    v53 = v87;
    (*(v83 + 16))(v90, v52, v87);
    *(v51 + v49) = v45 & 1;
    v54 = (*(v50 + 88))(v51, v53);
    if (v54 == enum case for OfferType.app(_:))
    {
LABEL_7:
      (*(v50 + 8))(v51, v53);
      sub_10000A5D4(&unk_10094A8C0);
      sub_10076FC1C();
      v97 = v104;
      v98 = v103;
      sub_10000A5D4(&qword_10094D7B8);
      sub_10076FC1C();
      v106 = sub_10076097C();
      v107 = &protocol witness table for Restrictions;
      sub_10076FC1C();
      v48(v96, v99, v102);
      v55 = v81;
      sub_100016E2C(v81, v85, &unk_100946760);
      sub_10076148C();
      sub_10076FC1C();
      sub_10076130C();

      v56 = sub_10075EF7C();
      swift_allocObject();

      v57 = sub_10075EF6C();
      sub_10000CFBC(v55, &unk_100946760);
      (*(v101 + 8))(v99, v102);
      *(&v109 + 1) = v56;
      v110 = &protocol witness table for AppOfferButtonPresenter;
      *&v108 = v57;
LABEL_20:
      v68 = objc_opt_self();
      v69 = [v68 areAnimationsEnabled];
      [v68 setAnimationsEnabled:0];
      v70 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isConfigurationLayoutEnabled;
      v9[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isConfigurationLayoutEnabled] = 0;
      [v9 setHidden:0];
      sub_1001F9A80(&qword_10094D7C0, type metadata accessor for OfferButton);
      sub_10008B8A4(&v108, *(&v109 + 1));
      swift_unknownObjectRetain();
      sub_10076585C();
      [v68 setAnimationsEnabled:v69];

      (*(v50 + 8))(v100, v87);
      v9[v70] = 1;
      sub_10000A570(&v108, v105);
      v71 = v80;
      swift_beginAccess();
      sub_1001F9A10(v105, &v9[v71]);
      swift_endAccess();
      return sub_10000CD74(&v108);
    }

    v94 = v47;
    v95 = v48;
    if (v54 == enum case for OfferType.inAppPurchase(_:))
    {
      v82 = v9;
      sub_10000CFBC(v81, &unk_100946760);
      v59 = v102;
      (*(v101 + 8))(v99, v102);
      if (sub_100766A9C())
      {
        sub_10000A5D4(&unk_10094A8C0);
        sub_10076FC1C();
        sub_10076097C();
        sub_10076FC1C();
        v95(v96, v97, v59);
        sub_100016E2C(v98, v85, &unk_100946760);
        v60 = sub_10075E1BC();
        swift_allocObject();

        v61 = sub_10075E18C();
        v62 = &protocol witness table for StreamlinedInAppPurchaseOfferButtonPresenter;
      }

      else
      {
        sub_10000A5D4(&unk_10094A8C0);
        sub_10076FC1C();
        sub_10076097C();
        sub_10076FC1C();
        v95(v96, v97, v59);
        sub_100016E2C(v98, v85, &unk_100946760);
        v60 = sub_10075E9DC();
        swift_allocObject();

        v61 = sub_10075E9BC();
        v62 = &protocol witness table for InAppPurchaseOfferButtonPresenter;
      }

      *(&v109 + 1) = v60;
      v110 = v62;
      *&v108 = v61;
      v50 = v83;
      (*(v83 + 8))(v90, v87);
      v9 = v82;
      goto LABEL_20;
    }

    v63 = v101;
    v64 = v102;
    v65 = v99;
    if (v54 == enum case for OfferType.arcade(_:))
    {
      sub_10000CFBC(v81, &unk_100946760);
      (*(v63 + 8))(v65, v64);
      v95(v96, v97, v64);
      sub_100016E2C(v98, v85, &unk_100946760);
      v66 = sub_10076AB7C();
      swift_allocObject();

      v67 = sub_10076AB6C();
      *(&v109 + 1) = v66;
      v110 = &protocol witness table for ArcadeSubscriptionOfferButtonPresenter;
      *&v108 = v67;
    }

    else
    {
      if (v54 != enum case for OfferType.arcadeApp(_:))
      {
        sub_10000A5D4(&unk_10094A8C0);
        sub_10076FC1C();
        v97 = v104;
        v98 = v103;
        sub_10000A5D4(&qword_10094D7B8);
        sub_10076FC1C();
        v106 = sub_10076097C();
        v107 = &protocol witness table for Restrictions;
        sub_10076FC1C();
        v72 = v102;
        v95(v96, v65, v102);
        v73 = v81;
        sub_100016E2C(v81, v85, &unk_100946760);
        sub_10076148C();
        sub_10076FC1C();
        sub_10076130C();

        v74 = sub_10075EF7C();
        swift_allocObject();

        v75 = sub_10075EF6C();
        sub_10000CFBC(v73, &unk_100946760);
        (*(v101 + 8))(v99, v72);
        *(&v109 + 1) = v74;
        v110 = &protocol witness table for AppOfferButtonPresenter;
        *&v108 = v75;
        sub_10000CFBC(v90, &qword_10094D7B0);
        v50 = v83;
        goto LABEL_20;
      }

      v50 = v83;
      v48 = v95;
      if (v45)
      {
        goto LABEL_7;
      }

      sub_10000CFBC(v81, &unk_100946760);
      (*(v101 + 8))(v99, v102);
      sub_10076295C();
      if (swift_dynamicCastClass())
      {
        sub_1007628EC();
      }

      v95(v96, v97, v102);
      sub_100016E2C(v98, v85, &unk_100946760);
      v76 = sub_10076AB7C();
      swift_allocObject();

      v77 = sub_10076AB6C();
      *(&v109 + 1) = v76;
      v110 = &protocol witness table for ArcadeSubscriptionOfferButtonPresenter;

      *&v108 = v77;
    }

    v50 = v83;
    (*(v83 + 8))(v51, v87);
    goto LABEL_20;
  }

  return [v9 setHidden:{1, v29}];
}

void (*sub_1001F2548(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 accessibilityLabel];
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

  *a1 = v5;
  a1[1] = v7;
  return sub_1001F25D0;
}

void sub_1001F25D0(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    if (v3)
    {

      v4 = sub_10076FF6C();
    }

    else
    {
      v4 = 0;
    }

    [*(a1 + 16) setAccessibilityLabel:v4];
  }

  else if (v3)
  {
    v4 = sub_10076FF6C();

    [*(a1 + 16) setAccessibilityLabel:v4];
  }

  else
  {
    v4 = 0;
    [*(a1 + 16) setAccessibilityLabel:0];
  }
}

BOOL sub_1001F26A4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_10000A5D4(&qword_10094D7B0);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_presenter;
  swift_beginAccess();
  sub_100016E2C(v3 + v9, &v19, &qword_10094D5D8);
  if (!v20)
  {
    sub_10000CFBC(&v19, &qword_10094D5D8);
    return 1;
  }

  sub_100012498(&v19, v21);
  v10 = *(v6 + 48);
  v11 = sub_10076C55C();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v8, a1, v11);
  v8[v10] = a3 & 1;
  v13 = (*(v12 + 88))(v8, v11);
  if (v13 == enum case for OfferType.app(_:))
  {
    goto LABEL_3;
  }

  if (v13 == enum case for OfferType.inAppPurchase(_:))
  {
    if (sub_100766A9C())
    {
      v16 = sub_10075E1BC();
    }

    else
    {
      v16 = sub_10075E9DC();
    }

    v14 = v16;
    (*(v12 + 8))(v8, v11);
    goto LABEL_12;
  }

  if (v13 == enum case for OfferType.arcade(_:))
  {
    goto LABEL_9;
  }

  if (v13 != enum case for OfferType.arcadeApp(_:))
  {
    v14 = sub_10075EF7C();
    sub_10000CFBC(v8, &qword_10094D7B0);
    goto LABEL_12;
  }

  if (a3)
  {
LABEL_3:
    (*(v12 + 8))(v8, v11);
    v14 = sub_10075EF7C();
  }

  else
  {
LABEL_9:
    (*(v12 + 8))(v8, v11);
    v14 = sub_10076AB7C();
  }

LABEL_12:
  sub_10000CF78(v21, v21[3]);
  DynamicType = swift_getDynamicType();
  sub_10000CD74(v21);
  return DynamicType != v14;
}

uint64_t sub_1001F2968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10)
{
  v77 = a8;
  v78 = a7;
  v71 = a6;
  v73 = a5;
  v83 = a4;
  v10 = sub_10000A5D4(&qword_10094D7B0);
  __chkstk_darwin(v10);
  v76 = v65 - v11;
  v12 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v12 - 8);
  v75 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v80 = v65 - v15;
  v79 = sub_10000A5D4(&unk_100946750);
  v81 = *(v79 - 8);
  __chkstk_darwin(v79);
  v74 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v65 - v18;
  v20 = sub_10076C55C();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v84 = v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10075FAEC();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v82 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
    }

    v29 = Strong;
    v72 = v20;
    sub_100762F4C();
    v30 = sub_10075FABC();
    (*(v24 + 8))(v26, v23);
    v31 = v84;
    v32 = v83;
    sub_100766AEC();
    if (!sub_1001F26A4(v31, v32, v30 & 1))
    {

      return (*(v21 + 8))(v31, v72);
    }

    v68 = v29;
    v69 = a10;
    v67 = a9;
    v33 = v81 + 16;
    v34 = *(v81 + 16);
    v66 = v19;
    v35 = v79;
    v34(v19, v77, v79);
    sub_100016E2C(v78, v80, &unk_100946760);
    v36 = *(v10 + 48);
    v37 = v76;
    v38 = v31;
    v39 = v72;
    (*(v21 + 16))(v76, v38, v72);
    *(v37 + v36) = v30 & 1;
    v70 = v21;
    v40 = (*(v21 + 88))(v37, v39);
    if (v40 != enum case for OfferType.app(_:))
    {
      v65[0] = v34;
      v65[1] = v33;
      if (v40 == enum case for OfferType.inAppPurchase(_:))
      {
        sub_10000CFBC(v80, &unk_100946760);
        (*(v81 + 8))(v19, v35);
        if (sub_100766A9C())
        {
          sub_10000A5D4(&unk_10094A8C0);
          sub_10076F64C();
          sub_10076FC1C();
          sub_10076097C();
          sub_10076FC1C();
          (v65[0])(v74, v77, v35);
          sub_100016E2C(v78, v75, &unk_100946760);
          v46 = sub_10075E1BC();
          swift_allocObject();

          v47 = sub_10075E18C();
          v48 = &protocol witness table for StreamlinedInAppPurchaseOfferButtonPresenter;
        }

        else
        {
          sub_10000A5D4(&unk_10094A8C0);
          sub_10076F64C();
          sub_10076FC1C();
          sub_10076097C();
          sub_10076FC1C();
          (v65[0])(v74, v77, v35);
          sub_100016E2C(v78, v75, &unk_100946760);
          v46 = sub_10075E9DC();
          swift_allocObject();

          v47 = sub_10075E9BC();
          v48 = &protocol witness table for InAppPurchaseOfferButtonPresenter;
        }

        v91 = v46;
        v92 = v48;
        v90 = v47;
        v45 = v70;
        (*(v70 + 8))(v76, v72);
        goto LABEL_16;
      }

      v49 = v81;
      v50 = v80;
      if (v40 == enum case for OfferType.arcade(_:))
      {
        sub_10000CFBC(v80, &unk_100946760);
        (*(v49 + 8))(v19, v35);
        (v65[0])(v74, v77, v35);
        sub_100016E2C(v78, v75, &unk_100946760);
        v51 = sub_10076AB7C();
        swift_allocObject();

        v52 = sub_10076AB6C();
        v91 = v51;
        v92 = &protocol witness table for ArcadeSubscriptionOfferButtonPresenter;
        v90 = v52;
        v45 = v70;
        (*(v70 + 8))(v37, v72);
        goto LABEL_16;
      }

      if (v40 != enum case for OfferType.arcadeApp(_:))
      {
        sub_10000A5D4(&unk_10094A8C0);
        sub_10076F64C();
        sub_10076FC1C();
        v78 = v85;
        v77 = v86;
        sub_10000A5D4(&qword_10094D7B8);
        sub_10076FC1C();
        v88 = sub_10076097C();
        v89 = &protocol witness table for Restrictions;
        sub_10076FC1C();
        (v65[0])(v74, v19, v35);
        sub_100016E2C(v50, v75, &unk_100946760);
        sub_10076148C();
        sub_10076FC1C();
        sub_10076130C();

        v61 = sub_10075EF7C();
        swift_allocObject();

        v62 = sub_10075EF6C();
        sub_10000CFBC(v50, &unk_100946760);
        (*(v81 + 8))(v19, v79);
        v91 = v61;
        v92 = &protocol witness table for AppOfferButtonPresenter;
        v90 = v62;
        sub_10000CFBC(v37, &qword_10094D7B0);
        goto LABEL_6;
      }

      v39 = v72;
      v34 = v65[0];
      if ((v30 & 1) == 0)
      {
        sub_10000CFBC(v80, &unk_100946760);
        (*(v81 + 8))(v66, v35);
        if (v73)
        {
          sub_10076295C();
          v58 = swift_dynamicCastClass();
          v59 = v72;
          v60 = v65[0];
          if (v58)
          {
            sub_1007628EC();
            v35 = v79;
          }

          v60(v74, v77, v35);
        }

        else
        {
          v59 = v72;
          (v65[0])(v74, v77, v35);
        }

        sub_100016E2C(v78, v75, &unk_100946760);
        v63 = sub_10076AB7C();
        swift_allocObject();

        v64 = sub_10076AB6C();
        v91 = v63;
        v92 = &protocol witness table for ArcadeSubscriptionOfferButtonPresenter;

        v90 = v64;
        v45 = v70;
        (*(v70 + 8))(v76, v59);
        goto LABEL_16;
      }
    }

    (*(v70 + 8))(v37, v39);
    sub_10000A5D4(&unk_10094A8C0);
    sub_10076F64C();
    sub_10076FC1C();
    v78 = v86;
    sub_10000A5D4(&qword_10094D7B8);
    sub_10076FC1C();
    v88 = sub_10076097C();
    v89 = &protocol witness table for Restrictions;
    sub_10076FC1C();
    v41 = v66;
    v34(v74, v66, v35);
    v42 = v80;
    sub_100016E2C(v80, v75, &unk_100946760);
    sub_10076148C();
    sub_10076FC1C();
    sub_10076130C();

    v43 = sub_10075EF7C();
    swift_allocObject();

    v44 = sub_10075EF6C();
    sub_10000CFBC(v42, &unk_100946760);
    (*(v81 + 8))(v41, v79);
    v91 = v43;
    v92 = &protocol witness table for AppOfferButtonPresenter;
    v90 = v44;
LABEL_6:
    v45 = v70;
LABEL_16:
    v53 = objc_opt_self();
    v54 = [v53 areAnimationsEnabled];
    [v53 setAnimationsEnabled:0];
    v55 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isConfigurationLayoutEnabled;
    v56 = v68;
    *(v68 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isConfigurationLayoutEnabled) = 0;
    [v56 setHidden:0];
    sub_1001F9A80(&qword_10094D7C0, type metadata accessor for OfferButton);
    sub_10008B8A4(&v90, v91);
    swift_unknownObjectRetain();
    sub_10076585C();
    [v53 setAnimationsEnabled:v54];

    (*(v45 + 8))(v84, v72);
    *(v56 + v55) = 1;
    sub_10000A570(&v90, v87);
    v57 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_presenter;
    swift_beginAccess();
    sub_1001F9A10(v87, v56 + v57);
    swift_endAccess();

    return sub_10000CD74(&v90);
  }

  return result;
}

uint64_t sub_1001F3A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v77 = a5;
  v82 = a3;
  v83 = a4;
  v80 = a1;
  v81 = a2;
  v78 = sub_100769A4C();
  v75 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100766CDC();
  __chkstk_darwin(v10 - 8);
  v74 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v12 - 8);
  v73 = &v63 - v13;
  v14 = sub_1007628DC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v63 - v19;
  v21 = sub_10076443C();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v64 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v63 = &v63 - v25;
  __chkstk_darwin(v26);
  v65 = &v63 - v27;
  __chkstk_darwin(v28);
  v68 = &v63 - v29;
  __chkstk_darwin(v30);
  v87 = &v63 - v31;
  __chkstk_darwin(v32);
  v69 = &v63 - v33;
  v34 = sub_100763B4C();
  v71 = *(v34 - 8);
  v72 = v34;
  __chkstk_darwin(v34);
  v70 = &v63 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v37 = __chkstk_darwin(v36).n128_u64[0];
  v66 = &v63 - v38;
  [v7 setSelected:{0, v37}];
  v79 = a6;
  sub_100769A1C();
  v86 = [v7 traitCollection];
  v84 = v7;
  v67 = v7[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_includeTopPadding];
  v39 = *(v15 + 104);
  v39(v17, enum case for OfferEnvironment.arcadeProductPage(_:), v14);
  LOBYTE(a6) = sub_1007628BC();
  v40 = *(v15 + 8);
  v40(v17, v14);
  v85 = v40;
  if (a6)
  {
    if (qword_10093F550 != -1)
    {
      swift_once();
    }

    v41 = qword_10099CA98;
LABEL_13:
    v43 = sub_10000A61C(v21, v41);
    v44 = v68;
    (*(v22 + 16))(v68, v43, v21);
LABEL_14:
    v45 = v87;
    goto LABEL_15;
  }

  v39(v17, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v14);
  v42 = sub_1007628BC();
  v40(v17, v14);
  if (v42)
  {
    if (qword_10093F548 != -1)
    {
      swift_once();
    }

    v41 = qword_10099CA80;
    goto LABEL_13;
  }

  if (sub_1007628AC())
  {
    if (qword_10093F540 != -1)
    {
      swift_once();
    }

    v41 = qword_10099CA68;
    goto LABEL_13;
  }

  v39(v17, enum case for OfferEnvironment.navigationBar(_:), v14);
  v52 = sub_1007628BC();
  v85(v17, v14);
  if (v52)
  {
    if (qword_10093F558 != -1)
    {
      swift_once();
    }

    v53 = sub_10000A61C(v21, qword_100944CE8);
    v44 = v68;
    (*(v22 + 16))(v68, v53, v21);
    goto LABEL_14;
  }

  v54 = sub_1007700AC();
  if ((sub_10077071C() & 1) == 0)
  {
    if (v54 < 7)
    {
      goto LABEL_24;
    }

LABEL_29:
    if (sub_10077071C())
    {
      v56 = v68;
      if (qword_10093F520 != -1)
      {
        swift_once();
      }

      v57 = qword_100944C88;
    }

    else
    {
      v56 = v68;
      if (qword_10093F528 != -1)
      {
        swift_once();
      }

      v57 = qword_100944CA0;
    }

    v60 = sub_10000A61C(v21, v57);
    v61 = v63;
    (*(v22 + 16))(v63, v60, v21);
    v62 = v65;
    (*(v22 + 32))(v65, v61, v21);
    v44 = v56;
    sub_10076C13C();
    (*(v22 + 8))(v62, v21);
    goto LABEL_14;
  }

  if (v54 > 8)
  {
    goto LABEL_29;
  }

LABEL_24:
  if (sub_10077071C())
  {
    v45 = v87;
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v55 = qword_100944C88;
  }

  else
  {
    v45 = v87;
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v55 = qword_100944CA0;
  }

  v58 = sub_10000A61C(v21, v55);
  v59 = v64;
  (*(v22 + 16))(v64, v58, v21);
  v44 = v68;
  (*(v22 + 32))(v68, v59, v21);
LABEL_15:
  v46 = *(v22 + 32);
  v46(v45, v44, v21);
  if (v67 != 2)
  {
    sub_10076442C();
    v45 = v87;
  }

  v85(v20, v14);
  v46(v69, v45, v21);
  sub_100016E2C(v77, v73, &qword_10094F730);
  (*(v75 + 16))(v76, v79, v78);

  sub_100766CBC();
  v47 = v66;
  sub_100763B3C();
  v49 = v70;
  v48 = v71;
  v50 = v72;
  (*(v71 + 16))(v70, v47, v72);
  sub_1001F5C94(v49, v84, &type metadata accessor for TextConfiguration, &protocol witness table for TextConfiguration, &unk_10088CD60, sub_1001F9EE8, &unk_10088CD78);
  return (*(v48 + 8))(v47, v50);
}

uint64_t sub_1001F4464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v69 = a5;
  v74 = a3;
  v75 = a4;
  v72 = a1;
  v73 = a2;
  v70 = sub_100769A4C();
  v67 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100766CDC();
  __chkstk_darwin(v10 - 8);
  v66 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v12 - 8);
  v65 = &v55 - v13;
  v14 = sub_1007628DC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v55 - v19;
  v21 = sub_10076443C();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v55 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v59 = &v55 - v25;
  __chkstk_darwin(v26);
  v60 = &v55 - v27;
  __chkstk_darwin(v28);
  v61 = &v55 - v29;
  v30 = sub_100763B4C();
  v63 = *(v30 - 8);
  v64 = v30;
  __chkstk_darwin(v30);
  v62 = &v55 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v33 = __chkstk_darwin(v32).n128_u64[0];
  v56 = &v55 - v34;
  [v7 setSelected:{0, v33}];
  v71 = a6;
  sub_100769A1C();
  v58 = [v7 traitCollection];
  v76 = v7;
  v57 = v7[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_includeTopPadding];
  v35 = *(v15 + 104);
  v35(v17, enum case for OfferEnvironment.arcadeProductPage(_:), v14);
  LOBYTE(a6) = sub_1007628BC();
  v36 = *(v15 + 8);
  v36(v17, v14);
  v77 = v36;
  if (a6)
  {
    if (qword_10093F550 != -1)
    {
      swift_once();
    }

    v37 = qword_10099CA98;
LABEL_13:
    v39 = sub_10000A61C(v21, v37);
    v40 = v59;
    (*(v22 + 16))(v59, v39, v21);
    v41 = v60;
    v42 = v58;
    goto LABEL_14;
  }

  v35(v17, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v14);
  v38 = sub_1007628BC();
  v36(v17, v14);
  if (v38)
  {
    if (qword_10093F548 != -1)
    {
      swift_once();
    }

    v37 = qword_10099CA80;
    goto LABEL_13;
  }

  if (sub_1007628AC())
  {
    if (qword_10093F540 != -1)
    {
      swift_once();
    }

    v37 = qword_10099CA68;
    goto LABEL_13;
  }

  v35(v17, enum case for OfferEnvironment.navigationBar(_:), v14);
  v49 = sub_1007628BC();
  v77(v17, v14);
  if (v49)
  {
    v40 = v59;
    v41 = v60;
    v42 = v58;
    if (qword_10093F558 != -1)
    {
      swift_once();
    }

    v50 = sub_10000A61C(v21, qword_100944CE8);
    (*(v22 + 16))(v40, v50, v21);
  }

  else
  {
    v42 = v58;
    v51 = sub_10077071C();
    v40 = v59;
    v41 = v60;
    if (v51)
    {
      if (qword_10093F520 != -1)
      {
        swift_once();
      }

      v52 = qword_100944C88;
    }

    else
    {
      if (qword_10093F528 != -1)
      {
        swift_once();
      }

      v52 = qword_100944CA0;
    }

    v53 = sub_10000A61C(v21, v52);
    v54 = v55;
    (*(v22 + 16))(v55, v53, v21);
    (*(v22 + 32))(v40, v54, v21);
  }

LABEL_14:
  v43 = *(v22 + 32);
  v43(v41, v40, v21);
  if (v57 != 2)
  {
    sub_10076442C();
  }

  v77(v20, v14);
  v43(v61, v41, v21);
  sub_100016E2C(v69, v65, &qword_10094F730);
  (*(v67 + 16))(v68, v71, v70);

  sub_100766CBC();
  v44 = v56;
  sub_100763B2C();
  v46 = v62;
  v45 = v63;
  v47 = v64;
  (*(v63 + 16))(v62, v44, v64);
  sub_1001F5C94(v46, v76, &type metadata accessor for TextConfiguration, &protocol witness table for TextConfiguration, &unk_10088CD60, sub_1001F9EE8, &unk_10088CD78);
  return (*(v45 + 8))(v44, v47);
}