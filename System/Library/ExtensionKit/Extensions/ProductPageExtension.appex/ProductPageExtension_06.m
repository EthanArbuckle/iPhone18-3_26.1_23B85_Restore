uint64_t sub_1000BC5FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 traitCollection];
  v9 = sub_10077071C();

  if (v9)
  {
    if (qword_10093F640 != -1)
    {
      swift_once();
    }

    v10 = qword_10099CCE8;
  }

  else
  {
    if (qword_10093F638 != -1)
    {
      swift_once();
    }

    v10 = qword_10099CCD0;
  }

  v11 = sub_10000A61C(v4, v10);
  sub_1000BD5B0(v11, v7);
  v12 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_shadowView];
  v96 = sub_10075F99C();
  v97 = &protocol witness table for UIView;
  v68 = v12;
  *&v95 = v12;
  v13 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_contentView];
  v93 = sub_10076394C();
  v94 = &protocol witness table for UIView;
  v65 = v13;
  v91 = &protocol witness table for UIView;
  *&v92 = v13;
  v14 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_borderView];
  v90 = v93;
  v63 = v14;
  *&v89 = v14;
  v15 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView];
  v87 = sub_100016F40(0, &qword_1009441F0);
  v88 = &protocol witness table for UIView;
  v55 = v87;
  v60 = v15;
  *&v86 = v15;
  v16 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkView];
  v84 = sub_10075FD2C();
  v85 = &protocol witness table for UIView;
  v59 = v16;
  *&v83 = v16;
  v17 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkFallbackView];
  v81 = type metadata accessor for AppPromotionIAPFallbackView();
  v82 = &protocol witness table for UIView;
  v58 = v17;
  *&v80 = v17;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v69 = Strong;
    v67 = type metadata accessor for VideoView();
    v66 = &protocol witness table for UIView;
  }

  else
  {
    v69 = 0;
    v66 = 0;
    v67 = 0;
  }

  v64 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_gradientBlurView];
  v70 = v7;
  if (v64)
  {
    v62 = type metadata accessor for MediaOverlayGradientBlurView();
    v61 = &protocol witness table for UIView;
  }

  else
  {
    v61 = 0;
    v62 = 0;
  }

  v19 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_kindLabel];
  v78 = sub_1007626BC();
  v79 = &protocol witness table for UILabel;
  v76 = &protocol witness table for UILabel;
  *&v77 = v19;
  v20 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_titleLabel];
  v75 = v78;
  v53 = v20;
  v54 = v19;
  *&v74 = v20;
  v21 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_subtitleView];
  v72 = type metadata accessor for AppPromotionSubtitleView();
  v73 = &protocol witness table for CustomLayoutView;
  *&v71 = v21;
  v22 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_separatorView];
  if (v22)
  {
    v56 = type metadata accessor for SeparatorView();
    v57 = &protocol witness table for UIView;
  }

  else
  {
    v56 = 0;
    v57 = 0;
  }

  v23 = type metadata accessor for AppPromotionCardLayout(0);
  v24 = (a1 + v23[17]);
  v25 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupContainerView];
  v24[3] = v55;
  v24[4] = &protocol witness table for UIView;
  *v24 = v25;
  v26 = (a1 + v23[18]);
  v27 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupView];
  v26[3] = type metadata accessor for SubscriptionLockupView();
  v26[4] = &protocol witness table for UIView;
  *v26 = v27;
  v28 = *&v21[qword_1009588E8];
  v29 = v22;
  v30 = v25;
  v31 = v27;
  v32 = v68;
  v33 = v65;
  v34 = v63;
  v35 = v60;
  v36 = v59;
  v37 = v58;
  v38 = v64;
  v39 = v64;
  v40 = v54;
  v41 = v53;
  v42 = v21;
  LOBYTE(v28) = [v28 hasContent];
  sub_1000BD614(v70, a1);
  sub_100012498(&v95, a1 + v23[5]);
  sub_100012498(&v92, a1 + v23[6]);
  sub_100012498(&v89, a1 + v23[7]);
  sub_100012498(&v86, a1 + v23[8]);
  sub_100012498(&v83, a1 + v23[9]);
  v43 = (a1 + v23[11]);
  *v43 = v69;
  v43[1] = 0;
  v44 = v66;
  v45 = v67;
  v43[2] = 0;
  v43[3] = v45;
  v43[4] = v44;
  v46 = (a1 + v23[12]);
  *v46 = v38;
  v46[1] = 0;
  v47 = v61;
  v48 = v62;
  v46[2] = 0;
  v46[3] = v48;
  v46[4] = v47;
  sub_100012498(&v77, a1 + v23[13]);
  sub_100012498(&v74, a1 + v23[14]);
  sub_100012498(&v71, a1 + v23[15]);
  v49 = (a1 + v23[16]);
  *v49 = v22;
  v49[1] = 0;
  v51 = v56;
  v50 = v57;
  v49[2] = 0;
  v49[3] = v51;
  v49[4] = v50;
  *(a1 + v23[19]) = v28;
  return sub_100012498(&v80, a1 + v23[10]);
}

id sub_1000BCD14()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_kindLabel];
  v3 = [v2 text];
  if (v3)
  {

    [v2 setText:0];
    [v1 setNeedsLayout];
  }

  sub_1000BB8E8(0);
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkView];
  v13.value.super.isa = 0;
  v13.is_nil = 0;
  sub_10075FCEC(v13, v5);
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupContainerView] setHidden:1];
  [v4 setHidden:0];
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkFallbackView] setHidden:0];
  v6 = &v1[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupViewTappedAction];
  v7 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupViewTappedAction];
  *v6 = 0;
  *(v6 + 1) = 0;
  sub_1000167E0(v7);
  sub_1000BD424();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView] insertSubview:Strong aboveSubview:v4];
    [v1 setNeedsLayout];
  }

  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupView];
  sub_10029BD40();

  v12[0] = 0x3FF0000000000000;
  v12[1] = 0;
  v12[2] = 0;
  v12[3] = 0x3FF0000000000000;
  v12[4] = 0;
  v12[5] = 0;
  [v1 setTransform:v12];
  [v1 setAlpha:1.0];
  return [v1 setHidden:0];
}

uint64_t (*sub_1000BCF68(uint64_t **a1))()
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
  v2[4] = sub_1000BBFBC(v2);
  return sub_100019A4C;
}

uint64_t sub_1000BCFD8()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1000BD568(&qword_1009473C8, v1, type metadata accessor for AppPromotionCardView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v2);
}

uint64_t sub_1000BD04C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_1000BD568(&qword_1009473C8, v5, type metadata accessor for AppPromotionCardView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v6);
}

uint64_t (*sub_1000BD0D8(uint64_t *a1))()
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

  v4 = v2;
  *a1 = v2;
  sub_1000BD568(&qword_1009473C8, v3, type metadata accessor for AppPromotionCardView);
  *(v4 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_1000BD194(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 superview];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView);
  sub_100016F40(0, &qword_1009441F0);
  v5 = v4;
  v6 = sub_100770EEC();

  return v6 & 1;
}

uint64_t sub_1000BD308()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BD360(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000BD378()
{

  return _swift_deallocObject(v0, 41, 7);
}

id sub_1000BD3E4(void *a1)
{
  sub_1000BB310();

  return [a1 setNeedsLayout];
}

void sub_1000BD424()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1000BD568(&qword_100942810, 255, type metadata accessor for VideoView);
    v2 = [v8 superview];
    if (v2)
    {
      v3 = v2;
      v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView);
      sub_100016F40(0, &qword_1009441F0);
      v5 = v4;
      v6 = sub_100770EEC();

      if ((v6 & 1) == 0)
      {
        return;
      }

      v7 = swift_unknownObjectWeakLoadStrong();
      if (!v7)
      {
        return;
      }

      v8 = v7;
      [v7 removeFromSuperview];
    }
  }
}

uint64_t sub_1000BD568(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1000BD5B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BD614(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_1000BD678()
{
  ObjectType = swift_getObjectType();
  v105 = sub_10075FEEC();
  *&v110 = *(v105 - 8);
  __chkstk_darwin(v105);
  v104 = &v98 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000A5D4(&qword_1009473D0);
  __chkstk_darwin(v2 - 8);
  v107 = &v98 - v3;
  v106 = sub_10076F9AC();
  v103 = *(v106 - 8);
  __chkstk_darwin(v106);
  v100 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_10076771C();
  v5 = *(v108 - 8);
  __chkstk_darwin(v108);
  v7 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v8 - 8);
  v10 = &v98 - v9;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_gradientBlurView] = 0;
  v11 = OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_subtitleView;
  v12 = objc_allocWithZone(type metadata accessor for AppPromotionSubtitleView());
  *&v0[v11] = sub_1004760F8(0);
  *&v0[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_separatorView] = 0;
  v13 = OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupContainerView;
  *&v0[v13] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14 = OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupView;
  *&v0[v14] = [objc_allocWithZone(type metadata accessor for SubscriptionLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupTapGestureRecognizer] = 0;
  v15 = &v0[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupViewTappedAction];
  *v15 = 0;
  v15[1] = 0;
  v0[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_includeBorderInDarkMode] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_shadowView] = [objc_allocWithZone(sub_10075F99C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_10076394C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v0[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_contentView] = v16;
  v17 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView] = v17;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkView] = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = sub_10076D3DC();
  v19 = *(v18 - 8);
  v98 = *(v19 + 56);
  v98(v10, 1, 1, v18);
  v20 = enum case for DirectionalTextAlignment.none(_:);
  v21 = *(v5 + 104);
  v102 = v5 + 104;
  v21(v7, enum case for DirectionalTextAlignment.none(_:), v108);
  v22 = sub_1007626BC();
  v23 = objc_allocWithZone(v22);
  v101 = v7;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_titleLabel] = sub_1007626AC();
  if (qword_1009410E0 != -1)
  {
    swift_once();
  }

  v24 = sub_10000A61C(v18, qword_1009A2098);
  (*(v19 + 16))(v10, v24, v18);
  v98(v10, 0, 1, v18);
  v21(v101, v20, v108);
  v25 = objc_allocWithZone(v22);
  *&v0[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_kindLabel] = sub_1007626AC();
  v26 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v0[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_borderView] = v26;
  if (qword_100940700 != -1)
  {
    swift_once();
  }

  v116[2] = xmmword_1009A0450;
  v116[3] = unk_1009A0460;
  v117 = qword_1009A0470;
  v116[0] = xmmword_1009A0430;
  v116[1] = unk_1009A0440;
  v27 = objc_allocWithZone(type metadata accessor for AppPromotionIAPFallbackView());
  *&v0[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkFallbackView] = sub_1004F0D74(v116, 0.0, 0.0, 0.0, 0.0);
  v115.receiver = v0;
  v115.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v115, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v29 = OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_contentView;
  v30 = *&v28[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_contentView];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v31 = v30;
  v32 = v100;
  sub_10076F95C();
  sub_1000258C0(&v111);
  sub_1000258C0(&v113);
  sub_100770B9C();

  v33 = *(v103 + 8);
  v34 = v106;
  v33(v32, v106);
  v108 = v29;
  v35 = *&v28[v29];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v36 = v35;
  sub_10076F95C();
  sub_1000258C0(&v111);
  sub_1000258C0(&v113);
  sub_100770B9C();

  v33(v32, v34);
  v102 = OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkView;
  v37 = *&v28[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkView];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v38 = v37;
  sub_10076F95C();
  sub_1000258C0(&v111);
  sub_1000258C0(&v113);
  sub_100770B9C();

  v33(v32, v34);
  v101 = OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_titleLabel;
  v39 = *&v28[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_titleLabel];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v40 = v39;
  sub_10076F95C();
  sub_1000258C0(&v111);
  sub_1000258C0(&v113);
  sub_100770B9C();

  v33(v32, v34);
  v103 = OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_kindLabel;
  v41 = *&v28[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_kindLabel];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v42 = v41;
  sub_10076F95C();
  sub_1000258C0(&v111);
  sub_1000258C0(&v113);
  sub_100770B9C();

  v33(v32, v34);
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v28 setClipsToBounds:0];
  v43 = OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_shadowView;
  v44 = qword_10093F8C8;
  v45 = *&v28[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_shadowView];
  v46 = v104;
  if (v44 != -1)
  {
    swift_once();
  }

  v47 = sub_10076BCFC();
  v48 = sub_10000A61C(v47, qword_10099D4F8);
  v49 = *(v47 - 8);
  v50 = v107;
  (*(v49 + 16))(v107, v48, v47);
  (*(v49 + 56))(v50, 0, 1, v47);
  sub_10075F97C();

  v51 = *&v28[v43];
  sub_10075F95C();

  v52 = *&v28[v43];
  v53 = v110;
  v54 = *(v110 + 104);
  LODWORD(v106) = enum case for CornerStyle.continuous(_:);
  v55 = v105;
  v107 = v54;
  (v54)(v46);
  v56 = v52;
  sub_10075F98C();

  v58 = *(v53 + 8);
  v57 = v53 + 8;
  v59 = v58;
  (v58)(v46, v55);
  v60 = *&v28[v43];
  v61 = [v28 traitCollection];
  v62 = [v61 userInterfaceStyle];

  [v60 setHidden:v62 == 2];
  v63 = *&v28[v43];
  v64 = v28;
  [v64 addSubview:v63];
  v65 = v108;
  v66 = qword_10093F648;
  v67 = *&v28[v108];
  if (v66 != -1)
  {
    swift_once();
  }

  ObjCClassFromMetadata = qword_10099CD00;
  [v67 setBackgroundColor:?];

  v68 = *&v28[v65];
  (v107)(v46, v106, v55);
  v69 = v68;
  sub_1007638AC();

  v100 = v59;
  (v59)(v46, v55);
  [v64 addSubview:*&v28[v65]];
  v70 = OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView;
  [*&v28[v65] addSubview:*&v64[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView]];
  [*&v64[v70] addSubview:*&v28[v102]];
  [*&v64[v70] addSubview:*&v64[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkFallbackView]];
  v71 = *&v28[v101];
  sub_100016F40(0, &qword_100942F10);
  v72 = v71;
  v73 = sub_100770CFC();
  *&v110 = v57;
  v74 = v73;
  [v72 setTextColor:v73];

  v75 = *(*&v64[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_subtitleView] + qword_1009588E8);
  v76 = objc_opt_self();
  v77 = v75;
  v78 = [v76 secondaryLabelColor];
  [v77 setTextColor:v78];

  v79 = *&v28[v103];
  v80 = sub_100770D1C();
  [v79 setTextColor:v80];

  v81 = OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_borderView;
  v82 = *&v64[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_borderView];
  v83 = ObjCClassFromMetadata;
  sub_1007638DC();

  v84 = *&v64[v81];
  sub_1007638EC();

  [*&v64[v81] setUserInteractionEnabled:0];
  [*&v64[v81] setHidden:1];
  v85 = *&v64[v81];
  (v107)(v46, v106, v55);
  v86 = v85;
  sub_1007638AC();

  (v100)(v46, v55);
  [v64 addSubview:*&v64[v81]];
  sub_1000BADE8();
  sub_1000BB310();
  sub_10000A5D4(&unk_100945BF0);
  v87 = swift_allocObject();
  v110 = xmmword_100783DD0;
  *(v87 + 16) = xmmword_100783DD0;
  *(v87 + 32) = sub_10076E88C();
  *(v87 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100770C6C();
  swift_unknownObjectRelease();

  v88 = swift_allocObject();
  *(v88 + 16) = v110;
  *(v88 + 32) = sub_10076E4CC();
  *(v88 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_100770C6C();
  swift_unknownObjectRelease();

  v89 = OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupContainerView;
  [*&v64[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupContainerView] setBackgroundColor:v83];
  [*&v28[v108] addSubview:*&v64[v89]];
  v90 = [objc_allocWithZone(UITapGestureRecognizer) init];
  v91 = OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupTapGestureRecognizer;
  v92 = *&v64[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupTapGestureRecognizer];
  *&v64[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupTapGestureRecognizer] = v90;

  result = *&v64[v91];
  if (result && ([result setDelegate:v64], (result = *&v64[v91]) != 0) && (result = objc_msgSend(result, "addTarget:action:", v64, "handleTapWithGestureRecognizer:"), *&v64[v91]))
  {
    [*&v64[v89] addGestureRecognizer:?];
    v94 = [v64 traitCollection];

    v95 = [v94 preferredContentSizeCategory];
    v96 = sub_10077087C();

    if (v96)
    {
      v97 = *&v64[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_separatorView];
      if (v97)
      {
        [v97 setHidden:0];
      }
    }

    [*&v64[v89] addSubview:*&v64[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupView]];
    return v64;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000BE710()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_gradientBlurView) = 0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_subtitleView;
  v3 = objc_allocWithZone(type metadata accessor for AppPromotionSubtitleView());
  *(v0 + v2) = sub_1004760F8(0);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_separatorView) = 0;
  v4 = OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupContainerView;
  *(v1 + v4) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupView;
  *(v1 + v5) = [objc_allocWithZone(type metadata accessor for SubscriptionLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupTapGestureRecognizer) = 0;
  v6 = (v1 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupViewTappedAction);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_includeBorderInDarkMode) = 0;
  swift_unknownObjectWeakInit();
  sub_10077156C();
  __break(1u);
}

BOOL sub_1000BE854(void *a1)
{
  v2 = v1;
  [a1 locationInView:v1];
  v4 = v3;
  v6 = v5;
  v7 = [v1 hitTest:0 withEvent:?];
  [v2 bounds];
  v13.x = v4;
  v13.y = v6;
  if (CGRectContainsPoint(v14, v13))
  {
    if (!v7)
    {
      return *&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupViewTappedAction] != 0;
    }

    sub_100016F40(0, &qword_1009441F0);
    v8 = v7;
    v9 = v2;
    v10 = sub_100770EEC();

    if (v10)
    {

      return 0;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();

    return !v12 && *&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupViewTappedAction] != 0;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1000BE98C(uint64_t a1)
{
  v2 = type metadata accessor for AppPromotionCardLayout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000BEAE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionViewTableLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_1000BEB40(void *a1)
{
  v2 = sub_10076048C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 traitCollection];
  if (qword_100941480 != -1)
  {
    swift_once();
  }

  v18.is_nil = qword_1009630B0;
  v18.value._rawValue = 0;
  isa = sub_1007706DC(v18, v7).super.isa;
  sub_100060C6C();
  v10 = sub_10077098C();
  (*(v3 + 104))(v6, enum case for SystemImage.starFill(_:), v2);
  v11 = [v10 configurationWithTraitCollection:isa];
  v12 = sub_10076046C();

  (*(v3 + 8))(v6, v2);
  v13 = [v12 imageWithRenderingMode:2];

  [v13 size];
  v15 = v14;

  return (v15 + 12.0) * 5.0 + -12.0;
}

id sub_1000BED74(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v51 = a3;
  LODWORD(v5) = a2;
  v53 = a1;
  swift_getObjectType();
  v6 = sub_10000A5D4(&qword_100947400);
  __chkstk_darwin(v6 - 8);
  v54 = &v42 - v7;
  v8 = sub_10076DD3C();
  v48 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v42 - v12;
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  __chkstk_darwin(v17);
  v18 = sub_10076DA7C();
  v49 = *(v18 - 8);
  v50 = v18;
  __chkstk_darwin(v18);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *&v3[OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_titleLabel];
  sub_10076422C();
  v22 = v21;
  v55[5] = *&v3[OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_ratingControl];
  type metadata accessor for StarRatingControl();
  sub_10076D2DC();
  v23 = [v3 traitCollection];
  if (qword_100940588 != -1)
  {
    swift_once();
  }

  if (sub_10077071C() & 1) != 0 || (sub_1007706EC())
  {

    sub_10000CD74(v55);
LABEL_6:
    v24._countAndFlagsBits = 0x525F4F545F504154;
    v24._object = 0xEB00000000455441;
    goto LABEL_7;
  }

  v46 = v20;
  v47 = v5;
  v43 = "featureFlagEnabled";
  v56._object = 0x80000001007D1A70;
  v56._countAndFlagsBits = 0xD000000000000016;
  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  v32 = sub_1007622EC(v56, v58);
  v44 = v33;
  v45 = v32;
  sub_10076DD2C();
  if (qword_100940CA8 != -1)
  {
    swift_once();
  }

  v34 = sub_10076D3DC();
  sub_10000A61C(v34, qword_1009A13F0);
  sub_10076DCFC();
  v35 = *(v48 + 8);
  v35(v10, v8);
  sub_10076DD1C();
  v35(v13, v8);
  sub_10076DD0C();
  v35(v16, v8);
  sub_10076DA5C();
  v5 = v46;
  sub_10076DA9C();
  sub_10076DA6C();
  v37 = v36;
  sub_10000CF78(v55, v55[3]);
  sub_10076E0FC();
  v39 = v38;
  sub_10000CF78(qword_10099FAF0, qword_10099FB08);
  sub_10076D41C();
  v41 = v40;

  (*(v49 + 8))(v5, v50);
  sub_10000CD74(v55);
  LOBYTE(v5) = v47;
  if (v22 < v39 + v37 + v41)
  {
    goto LABEL_6;
  }

  v24._object = (v43 | 0x8000000000000000);
  v24._countAndFlagsBits = 0xD000000000000016;
LABEL_7:
  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  sub_1007622EC(v24, v57);
  v25 = v54;
  v26 = sub_10076FF6C();

  [v52 setText:v26];

  v27 = sub_10076C6DC();
  if (v27)
  {
    v55[0] = v27;
    sub_10075F94C();
    sub_10076F64C();
    sub_1000BFE10();
    sub_10076F56C();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = sub_10000A5D4(&qword_100947408);
  (*(*(v29 - 8) + 56))(v25, v28, 1, v29);
  v30 = OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_rateAction;
  swift_beginAccess();
  sub_1000BFDA0(v25, &v4[v30]);
  swift_endAccess();
  v4[OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_isSingleColumn] = v5 & 1;
  [v4 setNeedsLayout];
  return [v4 setNeedsLayout];
}

double sub_1000BF38C(void *a1, double a2)
{
  v4 = sub_10076DD3C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v69 = &v61 - v9;
  __chkstk_darwin(v10);
  v12 = &v61 - v11;
  __chkstk_darwin(v13);
  v70 = &v61 - v14;
  v15 = sub_10076DA7C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v73 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v64 = &v61 - v19;
  v20 = sub_10076DDDC();
  swift_allocObject();
  v72 = sub_10076DD9C();
  v74[0] = v72;
  v66 = v20;
  sub_10076D2DC();
  v67 = a1;
  v21 = [a1 traitCollection];
  if (qword_100940588 != -1)
  {
    swift_once();
  }

  v22 = sub_10077071C();
  v23 = &qword_100940000;
  v65 = v7;
  v68 = v15;
  v71 = v16;
  if (v22 & 1) != 0 || (v23 = &qword_100940000, (sub_1007706EC()))
  {

    sub_10000CD74(v75);
LABEL_6:
    v24 = v5;
    v25._countAndFlagsBits = 0x525F4F545F504154;
    v25._object = 0xEB00000000455441;
    goto LABEL_7;
  }

  v63 = "featureFlagEnabled";
  v80._object = 0x80000001007D1A70;
  v80._countAndFlagsBits = 0xD000000000000016;
  v84._countAndFlagsBits = 0;
  v84._object = 0xE000000000000000;
  sub_1007622EC(v80, v84);
  sub_10076DD2C();
  if (qword_100940CA8 != -1)
  {
    swift_once();
  }

  v37 = sub_10076D3DC();
  sub_10000A61C(v37, qword_1009A13F0);
  v38 = v69;
  sub_10076DCFC();
  v39 = *(v5 + 8);
  v39(v65, v4);
  sub_10076DD1C();
  v39(v38, v4);
  sub_10076DD0C();
  v39(v12, v4);
  v7 = v65;
  sub_10076DA5C();
  v40 = v64;
  sub_10076DA9C();
  sub_10076DA6C();
  v42 = v41;
  sub_10000CF78(v75, v76);
  sub_10076E0FC();
  v44 = v43;
  sub_10000CF78(qword_10099FAF0, qword_10099FB08);
  sub_10076D41C();
  v46 = v45;

  (*(v71 + 8))(v40, v68);
  sub_10000CD74(v75);
  v23 = &qword_100940000;
  if (v44 + v42 + v46 > a2)
  {
    goto LABEL_6;
  }

  v24 = v5;
  v25._object = (v63 | 0x8000000000000000);
  v25._countAndFlagsBits = 0xD000000000000016;
LABEL_7:
  v82._countAndFlagsBits = 0;
  v82._object = 0xE000000000000000;
  v79._countAndFlagsBits = sub_1007622EC(v25, v82);
  v26 = v12;
  v83._countAndFlagsBits = 0;
  v83._object = 0xE000000000000000;
  sub_1007622EC(v79, v83);

  sub_10076DD2C();
  if (v23[405] != -1)
  {
    swift_once();
  }

  v27 = sub_10076D3DC();
  sub_10000A61C(v27, qword_1009A13F0);
  v28 = v69;
  sub_10076DCFC();
  v29 = v7;
  v30 = *(v24 + 8);
  v30(v29, v4);
  v31 = 1;
  sub_10076DD1C();
  v30(v28, v4);
  sub_10076DD0C();
  v62 = v26;
  v63 = v4;
  v30(v26, v4);
  sub_10076DA5C();
  v32 = v73;
  sub_10076DA9C();
  sub_1000BFCF0(qword_10099FAF0, v75);
  v33 = v68;
  v77[3] = v68;
  v77[4] = &protocol witness table for LabelPlaceholder;
  v34 = sub_10000DB7C(v77);
  v35 = v71;
  (*(v71 + 16))(v34, v32, v33);
  v74[0] = v72;
  sub_10076D2DC();
  v36 = [v67 traitCollection];
  if ((sub_10077071C() & 1) == 0)
  {
    if (sub_1007706EC())
    {
      v31 = 1;
      v35 = v71;
    }

    else
    {
      v81._object = 0x80000001007D1A70;
      v81._countAndFlagsBits = 0xD000000000000016;
      v85._countAndFlagsBits = 0;
      v85._object = 0xE000000000000000;
      sub_1007622EC(v81, v85);
      v47 = v65;
      sub_10076DD2C();
      v48 = v69;
      sub_10076DCFC();
      v49 = v63;
      v30(v47, v63);
      v50 = v62;
      sub_10076DD1C();
      v30(v48, v49);
      sub_10076DD0C();
      v30(v50, v49);
      sub_10076DA5C();
      v51 = v64;
      sub_10076DA9C();
      sub_10076DA6C();
      v53 = v52;
      sub_10000CF78(v78, v78[3]);
      sub_10076E0FC();
      v55 = v54;
      sub_10000CF78(v75, v76);
      sub_10076D41C();
      v57 = v56;
      v35 = v71;
      (*(v71 + 8))(v51, v33);
      v31 = v55 + v53 + v57 > a2;
    }
  }

  sub_100090EC4(v31, v74);
  sub_10000CF78(v74, v74[3]);
  sub_10076E0FC();
  v59 = v58;

  (*(v35 + 8))(v73, v33);
  sub_10000CD74(v74);
  sub_1000BFD4C(v75);
  return v59;
}

uint64_t sub_1000BFDA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100947400);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000BFE10()
{
  result = qword_100947410;
  if (!qword_100947410)
  {
    sub_10075F94C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947410);
  }

  return result;
}

uint64_t sub_1000BFE98(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  (*(a2 + 8))(v8);
  v4 = v9;
  v5 = v10;
  sub_10000CF78(v8, v9);
  v6 = a3(v4, v5);
  sub_10000CD74(v8);
  return v6;
}

unint64_t sub_1000BFFCC()
{
  v0 = sub_10077070C();
  v1 = sub_100763D7C();
  v6._object = 0x80000001007D28B0;
  v6._countAndFlagsBits = 0xD000000000000034;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2._countAndFlagsBits = sub_100767D6C(v6, v1, v8);
  if (v0)
  {
    v3 = 1554743522;
  }

  else
  {
    v3 = 799703266;
  }

  v5 = v3 & 0xFFFF0000FFFFFFFFLL | 0x2000000000;
  sub_1007700CC(v2);

  v7._countAndFlagsBits = 11305186;
  v7._object = 0xA300000000000000;
  sub_1007700CC(v7);

  return v5;
}

double sub_1000C00A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v88 = sub_10076997C();
  v6 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v83 = v72 - v9;
  __chkstk_darwin(v10);
  v82 = v72 - v11;
  v80 = sub_10076545C();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v81 = v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076761C();
  v87 = *(v13 - 8);
  __chkstk_darwin(v13);
  v85 = v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1007675FC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v91 = v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v92 = v72 - v19;
  v20 = sub_10076C96C();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v78 = v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v72 - v24;
  __chkstk_darwin(v26);
  v28 = v72 - v27;
  v84 = a1;
  v29 = sub_100763D5C();
  if (*(v29 + 16))
  {
    v74 = v13;
    v75 = v6;
    v30 = a4;
    v31 = *(v21 + 16);
    v31(v25, v29 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v20);

    v76 = v21;
    v32 = *(v21 + 32);
    v89 = v28;
    v90 = v20;
    v32(v28, v25, v20);
    if (qword_10093FAC8 != -1)
    {
      swift_once();
    }

    v33 = sub_10000A61C(v15, qword_10099D948);
    v77 = v16;
    v34 = *(v16 + 16);
    v35 = v92;
    v34(v92, v33, v15);
    v36 = [a4 traitCollection];
    v37 = sub_10077071C();

    if (v37)
    {
      v72[0] = v15;
      v34(v91, v35, v15);
      v31(v78, v89, v90);
      sub_100763D7C();
      v38 = [a4 traitCollection];
      v39 = sub_1007706EC();

      v40 = &enum case for AchievementGroupView.Size.phone(_:);
      if ((v39 & 1) == 0)
      {
        v40 = &enum case for AchievementGroupView.Size.pad(_:);
      }

      (*(v79 + 104))(v81, *v40, v80);
      v41 = sub_10076546C();
      v42 = objc_allocWithZone(v41);
      v43 = sub_10076544C();
      v98[8] = v41;
      v98[9] = &protocol witness table for UIView;
      v98[5] = v43;
      v44 = sub_100763D8C();
      v99._object = 0x80000001007D1EE0;
      v99._countAndFlagsBits = 0xD000000000000032;
      v100._countAndFlagsBits = 0;
      v100._object = 0xE000000000000000;
      sub_100767D6C(v99, v44, v100);
      v45 = sub_10005312C();
      if (qword_100940D80 != -1)
      {
        swift_once();
      }

      v81 = sub_10076D3DC();
      sub_10000A61C(v81, qword_1009A1678);
      v80 = v45;
      sub_100770B2C();
      v46 = sub_10076C04C();
      v98[3] = v46;
      v79 = sub_1000C12A0(&qword_100943230, &type metadata accessor for Feature);
      v98[4] = v79;
      v47 = sub_10000DB7C(v98);
      v48 = *(v46 - 8);
      v49 = *(v48 + 104);
      LODWORD(v78) = enum case for Feature.measurement_with_labelplaceholder(_:);
      v73 = v49;
      v72[1] = v48 + 104;
      v49(v47);
      sub_10076C90C();
      sub_10000CD74(v98);
      v50 = v82;
      sub_10076996C();
      sub_10076994C();
      v51 = *(v75 + 8);
      v52 = v88;
      v51(v50, v88);
      v53 = [v30 traitCollection];
      sub_1000BFFCC();

      if (qword_100940D88 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v81, qword_1009A1690);
      sub_100770B2C();
      v97[3] = v46;
      v97[4] = v79;
      v54 = sub_10000DB7C(v97);
      v73(v54, v78, v46);
      sub_10076C90C();
      sub_10000CD74(v97);
      v55 = v83;
      sub_10076996C();
      sub_10076994C();
      v51(v55, v52);
      sub_100763D6C();
      v56 = v72[0];
      if (qword_100940D90 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v81, qword_1009A16A8);
      sub_100770B2C();
      v96[3] = v46;
      v96[4] = v79;
      v57 = sub_10000DB7C(v96);
      v73(v57, v78, v46);
      sub_10076C90C();
      sub_10000CD74(v96);
      v58 = v86;
      sub_10076996C();
      sub_10076994C();
      v51(v58, v52);
      v95 = 0;
      v94 = 0u;
      v93 = 0u;
      v59 = v85;
      sub_10076760C();
      sub_1000C12A0(&unk_100947480, &type metadata accessor for AchievementSummaryLayout);
      v60 = v74;
      sub_10076D2AC();
      v62 = v61;
      (*(v87 + 8))(v59, v60);
      (*(v77 + 8))(v92, v56);
      (*(v76 + 8))(v89, v90);
    }

    else
    {
      v63 = v15;
      [v30 pageContainerSize];
      if (v65 < v64)
      {
        JUScreenClassGetLandscapeWidth();
      }

      v66 = v77;
      v67 = v90;
      v68 = v89;
      v69 = v92;
      sub_1007675CC();
      v62 = v70;
      (*(v66 + 8))(v69, v63);
      (*(v76 + 8))(v68, v67);
    }
  }

  else
  {

    return 0.0;
  }

  return v62;
}

void sub_1000C0C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = sub_10000A5D4(&unk_100946740);
  v50 = *(v8 - 8);
  v51 = v8;
  __chkstk_darwin(v8);
  v52 = &v44 - v9;
  v47 = sub_10076545C();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v48 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076C96C();
  v46 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v44 - v15;
  __chkstk_darwin(v17);
  v44 = &v44 - v18;
  v19 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_numberCompletedLabel);
  v20 = sub_100763D8C();
  v54._object = 0x80000001007D1EE0;
  v54._countAndFlagsBits = 0xD000000000000032;
  v55._countAndFlagsBits = 0;
  v55._object = 0xE000000000000000;
  sub_100767D6C(v54, v20, v55);
  v21 = sub_10076FF6C();

  [v19 setText:v21];

  v22 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_outOfTotalLabel);
  v49 = a5;
  v23 = [a5 traitCollection];
  sub_1000BFFCC();

  v24 = sub_10076FF6C();

  [v22 setText:v24];

  v25 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_completedLabel);
  sub_100763D6C();
  v26 = sub_10076FF6C();

  [v25 setText:v26];

  v27 = sub_100763D5C();
  if (*(v27 + 16))
  {
    v28 = v46;
    v29 = *(v46 + 16);
    v29(v16, v27 + ((*(v46 + 80) + 32) & ~*(v46 + 80)), v11);

    v30 = v44;
    (*(v28 + 32))(v44, v16, v11);
    v29(v13, v30, v11);
    sub_100763D7C();
    v31 = [v49 traitCollection];
    LOBYTE(v29) = sub_1007706EC();

    v32 = &enum case for AchievementGroupView.Size.phone(_:);
    if ((v29 & 1) == 0)
    {
      v32 = &enum case for AchievementGroupView.Size.pad(_:);
    }

    (*(v45 + 104))(v48, *v32, v47);
    v33 = objc_allocWithZone(sub_10076546C());
    v34 = sub_10076544C();
    v35 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_achievementGroupView;
    v36 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_achievementGroupView);
    if (v36)
    {
      [v36 removeFromSuperview];
      v37 = *(v6 + v35);
    }

    else
    {
      v37 = 0;
    }

    *(v6 + v35) = v34;
    v40 = v34;

    [*(v6 + OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_containerView) addSubview:v40];
    if (sub_100763D7C() < 2)
    {
      if (qword_10093FAB8 != -1)
      {
        swift_once();
      }

      v41 = qword_10099D918;
    }

    else
    {
      if (qword_10093FAC0 != -1)
      {
        swift_once();
      }

      v41 = qword_10099D930;
    }

    v42 = v51;
    v43 = sub_10000A61C(v51, v41);
    (*(v50 + 16))(v52, v43, v42);
    swift_beginAccess();
    sub_1007675EC();
    swift_endAccess();
    (*(v28 + 8))(v30, v11);
  }

  else
  {

    v38 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_achievementGroupView;
    v39 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_achievementGroupView);
    if (v39)
    {
      [v39 removeFromSuperview];
      v39 = *(v6 + v38);
    }

    *(v6 + v38) = 0;
  }
}

uint64_t sub_1000C12A0(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1000C12E8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_100763ADC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v15 - 8);
  v17 = &v41 - v16;
  v18 = OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_overlayStyle;
  v19 = enum case for MediaOverlayStyle.matchSystem(_:);
  v20 = sub_10076361C();
  (*(*(v20 - 8) + 104))(&v5[v18], v19, v20);
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_overlayView;
  *&v5[v21] = [objc_allocWithZone(UIVisualEffectView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v22 = OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_lockupView;
  *&v5[v22] = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_10093F650 != -1)
  {
    swift_once();
  }

  sub_1000C33DC(&qword_10099CD08, &v5[OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_metrics]);
  v42.receiver = v5;
  v42.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v27 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v28 = OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_overlayView;
  [v27 addSubview:*&v27[OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_overlayView]];
  [*&v27[v28] _setCornerRadius:1 continuous:12 maskedCorners:20.0];
  v29 = OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_lockupView;
  v30 = qword_100940AD0;
  v31 = *(*&v27[OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_lockupView] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel);
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = sub_10076D3DC();
  v33 = sub_10000A61C(v32, qword_1009A0E80);
  v34 = *(v32 - 8);
  (*(v34 + 16))(v17, v33, v32);
  (*(v34 + 56))(v17, 0, 1, v32);
  sub_1007625DC();

  v35 = qword_10093F658;
  v36 = *&v27[v29];
  if (v35 != -1)
  {
    swift_once();
  }

  v37 = sub_10000A61C(v11, qword_100947490);
  (*(v12 + 16))(v14, v37, v11);
  v38 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v12 + 24))(&v36[v38], v14, v11);
  swift_endAccess();
  [v36 setNeedsLayout];

  (*(v12 + 8))(v14, v11);
  [*&v27[v29] setLayoutMargins:{12.0, 12.0, 12.0, 12.0}];
  v39 = [*&v27[v28] contentView];
  [v39 addSubview:*&v27[v29]];

  sub_1000C17F8();
  return v27;
}

void sub_1000C17F8()
{
  v1 = sub_10076361C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v25 = *&v0[OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_overlayView];
  v10 = OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_overlayStyle;
  swift_beginAccess();
  v11 = *(v2 + 16);
  v11(v9, &v0[v10], v1);
  sub_1000C345C(v9);
  v27 = *(v2 + 8);
  v27(v9, v1);
  sub_100016F40(0, &qword_1009492C0);
  isa = sub_1007701AC().super.isa;
  v13 = v6;
  v14 = v26;

  [v25 setBackgroundEffects:isa];

  v11(v13, &v0[v10], v1);
  v11(v14, v13, v1);
  v15 = (*(v2 + 88))(v14, v1);
  if (v15 == enum case for MediaOverlayStyle.dark(_:))
  {
    v16 = 2;
    v27(v13, v1);
  }

  else if (v15 == enum case for MediaOverlayStyle.light(_:))
  {
    v16 = 1;
    v27(v13, v1);
  }

  else
  {
    v17 = v27;
    if (v15 == enum case for MediaOverlayStyle.matchSystem(_:))
    {
      v18 = [v0 traitCollection];
      v16 = [v18 userInterfaceStyle];
    }

    else
    {
      v27(v14, v1);
      v16 = 1;
    }

    v17(v13, v1);
  }

  v19 = *&v0[OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_lockupView];
  [v19 setOverrideUserInterfaceStyle:v16];
  v20 = *&v19[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton];
  if (v16 == 2)
  {
    v21 = objc_opt_self();
    v22 = v20;
    v23 = [v21 whiteColor];
  }

  else
  {
    v24 = v20;
    v23 = 0;
  }

  [v20 setTintColor:v23];
}

uint64_t sub_1000C1B9C(_BYTE *a1)
{
  v2 = v1;
  v4 = sub_10076361C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_overlayStyle;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v11, a1, v4);
  swift_endAccess();
  v12(v7, v2 + v11, v4);
  sub_1000C3414(&unk_100952B00, &type metadata accessor for MediaOverlayStyle);
  LOBYTE(v11) = sub_10076FF1C();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if ((v11 & 1) == 0)
  {
    sub_1000C17F8();
  }

  v13(a1, v4);
  return (v13)(v10, v4);
}

void sub_1000C1DAC(void *a1)
{
  v2 = v1;
  v18 = a1;
  v3 = sub_10075FEEC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1000C3414(&qword_100942810, type metadata accessor for VideoView);
    v9 = [v8 superview];
    if (!v9)
    {
LABEL_6:

      goto LABEL_7;
    }

    v10 = v9;
    sub_100016F40(0, &qword_1009441F0);
    v11 = v1;
    v12 = sub_100770EEC();

    if (v12)
    {
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        v8 = v13;
        [v13 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    (*(v4 + 104))(v6, enum case for CornerStyle.continuous(_:), v3);
    sub_1007638AC();
    (*(v4 + 8))(v6, v3);
    [v2 addSubview:v15];
    [v2 sendSubviewToBack:v15];
    [v2 setNeedsLayout];
  }

  else
  {
    v16 = v18;
  }
}

void (*sub_1000C2020(uint64_t *a1))(void ***a1, char a2)
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
  *(v3 + 8) = v1;
  v5 = sub_10075FEEC();
  v4[2] = v5;
  v6 = *(v5 - 8);
  v4[3] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v8 = OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_videoView;
  v4[4] = v7;
  v4[5] = v8;
  *v4 = swift_unknownObjectWeakLoadStrong();
  return sub_1000C2108;
}

void sub_1000C2108(void ***a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_1000C3414(&qword_100942810, type metadata accessor for VideoView);
      v7 = v4;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        v10 = v3[1];
        sub_100016F40(0, &qword_1009441F0);
        v11 = v10;
        v12 = sub_100770EEC();

        if (v12)
        {
          v13 = swift_unknownObjectWeakLoadStrong();
          if (v13)
          {
            v14 = v13;
            [v13 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v4;
    }

    swift_unknownObjectWeakAssign();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = v28;
      v31 = v3[3];
      v30 = v3[4];
      v33 = v3[1];
      v32 = v3[2];
      v31[13](v30, enum case for CornerStyle.continuous(_:), v32);
      sub_1007638AC();
      (v31[1])(v30, v32);
      [v33 addSubview:v29];
      [v33 sendSubviewToBack:v29];
      [v33 setNeedsLayout];
    }

    v27 = v3[4];

    v4 = *v3;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_1000C3414(&qword_100942810, type metadata accessor for VideoView);
    v15 = [v6 superview];
    if (v15)
    {
      v16 = v15;
      v17 = v3[1];
      sub_100016F40(0, &qword_1009441F0);
      v18 = v17;
      v19 = sub_100770EEC();

      if ((v19 & 1) == 0)
      {
        goto LABEL_13;
      }

      v20 = swift_unknownObjectWeakLoadStrong();
      if (!v20)
      {
        goto LABEL_13;
      }

      v6 = v20;
      [v20 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    v24 = v3[3];
    v23 = v3[4];
    v26 = v3[1];
    v25 = v3[2];
    v24[13](v23, enum case for CornerStyle.continuous(_:), v25);
    sub_1007638AC();
    (v24[1])(v23, v25);
    [v26 addSubview:v22];
    [v26 sendSubviewToBack:v22];
    [v26 setNeedsLayout];
  }

  v27 = v3[4];
LABEL_21:

  free(v27);

  free(v3);
}

void sub_1000C24A4()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_lockupView];
  sub_10076422C();
  [v1 sizeThatFits:{v2, v3}];
  v5 = v4;
  v15 = v6;
  sub_10076422C();
  sub_100770A0C();
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_overlayView];
  sub_10076422C();
  sub_100770A4C();
  [v7 setFrame:?];
  [v1 setFrame:{0.0, 0.0, v5, v15}];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_10076422C();
    [v9 setFrame:?];
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = (v10 + qword_1009A2508);
    v13 = *(v10 + qword_1009A2508);
    v14 = *(v10 + qword_1009A2508 + 16);
    *v12 = 0.0;
    v12[1] = 0.0;
    v12[2] = v15;
    v12[3] = 0.0;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(0, v13), vceqq_f64(*&v15, v14)))) & 1) == 0)
    {
      sub_1005EEA78();
    }
  }
}

uint64_t type metadata accessor for VideoCardView()
{
  result = qword_1009474D0;
  if (!qword_1009474D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C2798()
{
  result = sub_10076361C();
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

uint64_t (*sub_1000C2870(uint64_t **a1))()
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
  v2[4] = sub_1000C2020(v2);
  return sub_10001D41C;
}

double sub_1000C28E0(double a1)
{
  swift_getObjectType();

  return sub_1000C31A8(a1);
}

uint64_t sub_1000C294C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1000C3414(&qword_1009474F8, type metadata accessor for VideoCardView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1000C29C0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1000C3414(&qword_1009474F8, type metadata accessor for VideoCardView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1000C2A4C(uint64_t *a1))()
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
  sub_1000C3414(&qword_1009474F8, type metadata accessor for VideoCardView);
  *(v3 + 32) = sub_10076483C();
  return sub_100019A4C;
}

uint64_t sub_1000C2B20(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 superview];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_100016F40(0, &qword_1009441F0);
  v4 = v1;
  v5 = sub_100770EEC();

  return v5 & 1;
}

void sub_1000C2CD0()
{
  qword_10099CD20 = &type metadata for CGFloat;
  unk_10099CD28 = &protocol witness table for CGFloat;
  qword_10099CD08 = 0x4066000000000000;
}

uint64_t sub_1000C2CF8()
{
  v0 = sub_100763ADC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DB18(v4, qword_100947490);
  sub_10000A61C(v0, qword_100947490);
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_10099DDA0);
  (*(v1 + 16))(v3, v5, v0);
  sub_10076C13C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1000C2E5C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007639BC();
  sub_1007639FC();
  if (qword_100940A40 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v5 = sub_10000A61C(v4, qword_1009A0CD0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v18 = v6 + 16;
  v19 = v7;
  v7(v3, v5, v4);
  v8 = v1[13];
  v17 = enum case for FontSource.useCase(_:);
  v16 = v8;
  v8(v3);
  v9 = sub_10076D9AC();
  v24 = v9;
  v25 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v23);
  v21 = v0;
  v22 = &protocol witness table for FontSource;
  v10 = sub_10000DB7C(v20);
  v11 = v1[2];
  v11(v10, v3, v0);
  sub_10076D9BC();
  v12 = v1[1];
  v12(v3, v0);
  sub_1007639DC();
  if (qword_100940AD0 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v4, qword_1009A0E80);
  v19(v3, v13, v4);
  v16(v3, v17, v0);
  v24 = v9;
  v25 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v23);
  v21 = v0;
  v22 = &protocol witness table for FontSource;
  v14 = sub_10000DB7C(v20);
  v11(v14, v3, v0);
  sub_10076D9BC();
  v12(v3, v0);
  sub_100763AAC();
  sub_100763A9C();
  sub_100763A7C();
  sub_100763A9C();
  sub_100763A6C();
  v24 = sub_10076D67C();
  v25 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v23);
  sub_10076D66C();
  sub_1007639CC();
  return sub_100763A1C();
}

double sub_1000C31A8(double a1)
{
  v2 = sub_10077164C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007707CC();
  type metadata accessor for SmallLockupView();
  if (qword_10093F658 != -1)
  {
    swift_once();
  }

  v7 = sub_100763ADC();
  v8 = sub_10000A61C(v7, qword_100947490);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_100262AD0(v8, v6);
  swift_unknownObjectRelease();
  if (qword_10093F650 != -1)
  {
    swift_once();
  }

  sub_1000C33DC(&qword_10099CD08, v11);
  sub_10000CF78(v11, v11[3]);
  sub_1000FF02C();
  sub_10076D40C();
  swift_unknownObjectRelease();
  (*(v3 + 8))(v5, v2);
  sub_10000CD74(v11);
  return a1;
}

uint64_t sub_1000C3414(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C345C(uint64_t a1)
{
  v2 = sub_10076361C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for MediaOverlayStyle.dark(_:))
  {
    v8 = [objc_opt_self() _gkGameLayerModuleVisualEffect];
    sub_100016F40(0, &qword_1009492C0);
    v9 = sub_1007701BC();
  }

  else
  {
    if (v7 == enum case for MediaOverlayStyle.light(_:))
    {
      sub_10000A5D4(&unk_100942870);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1007841E0;
      v10 = [objc_opt_self() effectWithStyle:11];
    }

    else
    {
      v11 = enum case for MediaOverlayStyle.matchSystem(_:);
      v12 = v7;
      sub_10000A5D4(&unk_100942870);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1007841E0;
      v13 = objc_opt_self();
      if (v12 != v11)
      {
        *(v9 + 32) = [v13 effectWithStyle:11];
        (*(v3 + 8))(v6, v2);
        return v9;
      }

      v10 = [v13 effectWithStyle:6];
    }

    *(v9 + 32) = v10;
  }

  return v9;
}

void sub_1000C36BC()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_overlayStyle;
  v2 = enum case for MediaOverlayStyle.matchSystem(_:);
  v3 = sub_10076361C();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_overlayView;
  *(v0 + v4) = [objc_allocWithZone(UIVisualEffectView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_lockupView;
  *(v0 + v5) = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1000C3818()
{
  v0 = sub_10000A5D4(&qword_100947518);
  __chkstk_darwin(v0);
  v1 = sub_10000A5D4(&qword_100947520);
  sub_10000DB18(v1, qword_100947500);
  sub_10000A61C(v1, qword_100947500);
  sub_1000C395C();
  sub_10076D4CC();
  sub_1000C39A8();
  return sub_10076E18C();
}

void sub_1000C38F8(void *a1@<X8>)
{
  v2 = objc_allocWithZone(LPLinkView);
  sub_10075DB1C(v3);
  v5 = v4;
  v6 = [v2 initWithURL:v4];

  *a1 = v6;
}

unint64_t sub_1000C395C()
{
  result = qword_100947528;
  if (!qword_100947528)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100947528);
  }

  return result;
}

unint64_t sub_1000C39A8()
{
  result = qword_100947530;
  if (!qword_100947530)
  {
    sub_10000CE78(&qword_100947518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947530);
  }

  return result;
}

uint64_t sub_1000C3A54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B75C();
  *a1 = result;
  return result;
}

unint64_t sub_1000C3A94(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_18:
    v4 = sub_10077158C();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      sub_10077149C();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    sub_10076C02C();
    sub_1000C75F4(&unk_10094BB10, &type metadata accessor for Artwork);
    v6 = sub_10076FF1C();

    if (v6)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_17;
    }
  }
}

unint64_t sub_1000C3BEC(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v6 = sub_10077158C();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = sub_10077149C();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(a2 + 8 * v7 + 32);
    }

    v9 = v8;
    sub_100016F40(0, a3);
    v10 = sub_100770EEC();

    if (v10)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1000C3CF4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v71 = a5;
  v9 = sub_10075F65C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100765F6C();
  v67 = *(v13 - 8);
  v68 = v13;
  __chkstk_darwin(v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100766EDC();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10076F4FC();
  __chkstk_darwin(v18 - 8);
  v66 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v20 - 8);
  v63 = &v55 - v21;
  v22 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v22 - 8);
  v70 = &v55 - v23;
  v62 = sub_10076C15C();
  v61 = *(v62 - 1);
  __chkstk_darwin(v62);
  v69 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v25 - 8);
  v72 = &v55 - v26;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v55 = v17;
    v56 = v10;
    v57 = v15;
    v58 = v9;
    v59 = v12;
    v60 = *(result + 32);

    v28 = sub_1000C3A94(a1, a4);
    if (v29)
    {
      v30 = 0;
    }

    else
    {
      v30 = v28;
    }

    v31 = sub_1000FCDDC(_swiftEmptyArrayStorage);
    v32 = sub_1006C7080(a6, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000012, 0x80000001007D29F0);
    v33 = objc_allocWithZone(type metadata accessor for ScreenshotsGalleryViewController());
    v34 = OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_fullScreenshotFetcher;
    type metadata accessor for ScreenshotFetcher();
    v35 = swift_allocObject();
    *(v35 + 16) = sub_1000FCDDC(_swiftEmptyArrayStorage);
    *(v35 + 32) = 0;
    swift_unknownObjectWeakInit();
    *(v35 + 32) = 0;
    swift_unknownObjectWeakAssign();
    *&v33[v34] = v35;
    v36 = OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_galleryLayout;
    *&v33[v36] = [objc_allocWithZone(type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout()) init];
    *&v33[OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_artworks] = a4;
    *&v33[OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_platform] = v71;
    *&v33[OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_placeholderImages] = v31;
    sub_100760C4C();
    sub_10076F64C();

    sub_10076FC1C();
    *&v33[OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_artworkLoader] = v75;
    *&v33[OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_selectedIndex] = v30;
    v37 = *&v33[v36];

    v38 = sub_10007689C(v37, v32);

    v39 = v38;
    v40 = [v39 navigationItem];
    v41 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v39 action:"dismissFrom:"];
    [v40 setRightBarButtonItem:v41];

    *(*&v39[OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_fullScreenshotFetcher] + 32) = &off_10089D8D8;
    swift_unknownObjectWeakAssign();

    type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
    v42 = type metadata accessor for StoreNavigationController();
    v43 = objc_allocWithZone(v42);
    *&v43[OBJC_IVAR____TtC20ProductPageExtension25StoreNavigationController_objectGraph] = a6;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v78.receiver = v43;
    v78.super_class = v42;

    v45 = objc_msgSendSuper2(&v78, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
    [v45 setDelegate:v45];
    [v45 setModalPresentationStyle:0];
    sub_10000A5D4(&unk_100942870);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1007841E0;
    *(v46 + 32) = v39;
    sub_100016F40(0, &qword_1009453B0);
    isa = sub_1007701AC().super.isa;

    [v45 setViewControllers:isa];

    v48 = sub_10000A5D4(&unk_1009428E0);
    v49 = v72;
    v71 = a6;
    sub_10076F5AC();
    v50 = *(v48 - 8);
    if ((*(v50 + 48))(v49, 1, v48) == 1)
    {

      return sub_10000CFBC(v72, &unk_100943200);
    }

    else
    {
      v77 = 0;
      v75 = 0u;
      v76 = 0u;
      (*(v61 + 104))(v69, enum case for FlowPage.viewController(_:), v62);
      v51 = sub_10075DB7C();
      (*(*(v51 - 8) + 56))(v70, 1, 1, v51);
      v52 = sub_10076096C();
      (*(*(v52 - 8) + 56))(v63, 1, 1, v52);
      v74 = v42;
      v73 = v45;
      v62 = v45;
      sub_10076F4DC();
      (*(v64 + 104))(v55, enum case for FlowPresentationContext.infer(_:), v65);
      (*(v67 + 104))(v57, enum case for FlowAnimationBehavior.infer(_:), v68);
      (*(v56 + 104))(v59, enum case for FlowOrigin.inapp(_:), v58);
      sub_10076FA2C();
      sub_10075F63C();
      swift_allocObject();
      v53 = sub_10075F5EC();
      v54 = v72;
      sub_100263C24(v53, 1, v71, v72);

      return (*(v50 + 8))(v54, v48);
    }
  }

  return result;
}

void sub_1000C4718(char a1)
{
  v2 = sub_10000A5D4(&unk_100946720);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v6 - v4;
  if (a1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      sub_10076338C();

      memset(v6, 0, sizeof(v6));
      sub_10076957C();

      sub_10000CFBC(v6, &unk_1009434C0);
      (*(v3 + 8))(v5, v2);
    }
  }
}

void sub_1000C4870(char a1)
{
  v2 = sub_10000A5D4(&unk_100946720);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v6 - v4;
  if (a1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10076468C();
      memset(v6, 0, sizeof(v6));
      sub_10076957C();

      sub_10000CFBC(v6, &unk_1009434C0);
      (*(v3 + 8))(v5, v2);
    }
  }
}

uint64_t sub_1000C49B0()
{
  swift_weakDestroy();
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void sub_1000C4A3C(void *a1, uint64_t a2, uint64_t a3)
{
  v104 = a3;
  v5 = sub_10076341C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v101 = v7;
  v102 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076B5BC();
  v107 = *(v8 - 8);
  __chkstk_darwin(v8);
  v98 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_10000A5D4(&qword_100942C28);
  __chkstk_darwin(v106);
  v108 = &v90 - v10;
  v11 = sub_10000A5D4(&unk_100946720);
  v105 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v90 - v12;
  v14 = sub_10000A5D4(&qword_100942C40);
  __chkstk_darwin(v14);
  v16 = &v90 - v15;
  v17 = sub_10000A5D4(&qword_1009499A0);
  __chkstk_darwin(v17 - 8);
  v19 = &v90 - v18;
  v20 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v20 - 8);
  v100 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v109 = &v90 - v23;
  __chkstk_darwin(v24);
  v110 = &v90 - v25;
  type metadata accessor for ProductMediaCollectionViewCell();
  v111 = swift_dynamicCastClass();
  if (!v111)
  {
    return;
  }

  v103 = v8;
  v96 = v6;
  v97 = v5;
  sub_10076092C();
  sub_1000C75F4(&qword_100947638, &type metadata accessor for ProductMedia);
  v26 = a1;
  sub_10076332C();
  v27 = v113;
  if (!v113)
  {

    return;
  }

  v99 = v26;
  if (!swift_weakLoadStrong())
  {

    return;
  }

  v93 = sub_10076091C();
  v95 = v27;
  v91 = sub_1007608BC();
  swift_getKeyPath();
  v94 = a2;
  sub_10076338C();

  sub_10002AB4C(&v16[*(v14 + 48)], v19);
  v28 = v105;
  if ((*(v105 + 48))(v19, 1, v11) == 1)
  {
    sub_10000CFBC(v16, &qword_1009499A0);
    sub_10000CFBC(v19, &qword_1009499A0);
    v29 = v107;
    v30 = v110;
    v90 = *(v107 + 56);
    v90(v110, 1, 1, v103);
  }

  else
  {
    swift_getKeyPath();
    v30 = v110;
    sub_10076F49C();

    (*(v28 + 8))(v19, v11);
    v29 = v107;
    v90 = *(v107 + 56);
    v90(v30, 0, 1, v103);
    sub_10000CFBC(v16, &qword_1009499A0);
  }

  v31 = v108;
  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  v32 = v109;
  sub_10076F49C();

  v33 = v13;
  v34 = v32;
  (*(v28 + 8))(v33, v11);
  v35 = v103;
  v90(v32, 0, 1, v103);
  v36 = *(v106 + 48);
  sub_10002ABBC(v30, v31);
  sub_10002ABBC(v34, v31 + v36);
  v37 = *(v29 + 48);
  if (v37(v31, 1, v35) == 1)
  {
    sub_10000CFBC(v34, &unk_1009568A0);
    sub_10000CFBC(v30, &unk_1009568A0);
    v38 = v37(v31 + v36, 1, v35);
    v39 = v99;
    v40 = v91;
    if (v38 == 1)
    {
      sub_10000CFBC(v31, &unk_1009568A0);
      v41 = v97;
      goto LABEL_27;
    }

    goto LABEL_14;
  }

  v42 = v100;
  sub_10002ABBC(v31, v100);
  v43 = v37(v31 + v36, 1, v35);
  v39 = v99;
  if (v43 == 1)
  {
    sub_10000CFBC(v109, &unk_1009568A0);
    sub_10000CFBC(v110, &unk_1009568A0);
    (*(v29 + 8))(v42, v103);
    v40 = v91;
LABEL_14:
    sub_10000CFBC(v31, &qword_100942C28);
    v41 = v97;
    goto LABEL_15;
  }

  v52 = v31 + v36;
  v53 = v98;
  v54 = v103;
  (*(v29 + 32))(v98, v52, v103);
  sub_1000C75F4(&qword_100942C48, &type metadata accessor for Shelf.ContentType);
  v55 = sub_10076FF1C();
  v56 = *(v29 + 8);
  v56(v53, v54);
  sub_10000CFBC(v109, &unk_1009568A0);
  sub_10000CFBC(v110, &unk_1009568A0);
  v56(v42, v54);
  sub_10000CFBC(v31, &unk_1009568A0);
  v41 = v97;
  v40 = v91;
  if (v55)
  {
    goto LABEL_27;
  }

LABEL_15:
  v44 = v40 >> 62;
  if (v40 >> 62)
  {
    v45 = sub_10077158C();
  }

  else
  {
    v45 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v46 = v93;
  if (!v45)
  {

    v113 = v46;
    goto LABEL_29;
  }

  v47 = v45 - 1;
  if (__OFSUB__(v45, 1))
  {
    goto LABEL_78;
  }

  if ((v40 & 0xC000000000000001) != 0)
  {
    goto LABEL_79;
  }

  if ((v47 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    return;
  }

  if (v47 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_82;
  }

  v48 = *(v40 + 8 * v47 + 32);

  v113 = v46;
  if (!v48)
  {
    goto LABEL_29;
  }

LABEL_23:
  v112 = v48;
  sub_100760E9C();
  sub_1000C75F4(&qword_100947630, &type metadata accessor for MediaPlatform);
  v49 = sub_10076FF1C();

  if (v49)
  {
LABEL_27:

    LODWORD(v110) = 0;
  }

  else
  {
    v50 = v40 & 0xFFFFFFFFFFFFFF8;
    if (v44)
    {
LABEL_30:
      v51 = sub_10077158C();
    }

    else
    {
LABEL_25:
      v51 = *(v50 + 16);
    }

    LODWORD(v110) = v51 > 1;
  }

  v57 = sub_10076090C();
  v44 = v57;
  v113 = _swiftEmptyArrayStorage;
  if (!(v57 >> 62))
  {
    v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_34;
  }

  while (1)
  {
    v58 = sub_10077158C();
LABEL_34:
    if (v58)
    {
      v40 = 0;
      v39 = (v44 & 0xC000000000000001);
      v41 = v44 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v39)
        {
          sub_10077149C();
          v59 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
LABEL_45:
            __break(1u);
LABEL_46:
            v60 = v113;
            v41 = v97;
            v39 = v99;
            goto LABEL_48;
          }
        }

        else
        {
          if (v40 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_62;
          }

          v59 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            goto LABEL_45;
          }
        }

        if (sub_100762A4C())
        {

          sub_1007714CC();
          sub_1007714FC();
          sub_10077150C();
          sub_1007714DC();
        }

        else
        {
        }

        ++v40;
        if (v59 == v58)
        {
          goto LABEL_46;
        }
      }
    }

    v60 = _swiftEmptyArrayStorage;
LABEL_48:

    v44 = *(v60 + 16);
    if (!v44)
    {
      goto LABEL_66;
    }

LABEL_51:
    v113 = _swiftEmptyArrayStorage;
    v46 = &v113;
    sub_1007714EC();
    if ((v44 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:

      v48 = sub_10077149C();
      v113 = v46;
      if (v48)
      {
        goto LABEL_23;
      }

LABEL_29:

      v50 = v40 & 0xFFFFFFFFFFFFFF8;
      if (!v44)
      {
        goto LABEL_25;
      }

      goto LABEL_30;
    }

    v40 = 0;
    while (1)
    {
      v39 = (v40 + 1);
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if ((v60 & 0xC000000000000001) != 0)
      {
        sub_10077149C();
        if (!sub_100762A4C())
        {
          goto LABEL_83;
        }
      }

      else
      {
        if (v40 >= *(v60 + 16))
        {
          goto LABEL_63;
        }

        if (!sub_100762A4C())
        {
          goto LABEL_83;
        }
      }

      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
      ++v40;
      if (v39 == v44)
      {

        v61 = v113;
        v39 = v99;
        goto LABEL_67;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
  }

  v44 = sub_10077158C();
  if (v44)
  {
    goto LABEL_51;
  }

LABEL_66:

  v61 = _swiftEmptyArrayStorage;
LABEL_67:
  v62 = swift_allocObject();
  swift_weakInit();
  v63 = swift_allocObject();
  *(v63 + 2) = v62;
  *(v63 + 3) = v61;
  v64 = v104;
  *(v63 + 4) = v93;
  *(v63 + 5) = v64;
  v65 = v111;
  v66 = (v111 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_screenshotSelectionHandler);
  v67 = *(v111 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_screenshotSelectionHandler);
  *v66 = sub_1000C76D4;
  v66[1] = v63;

  sub_1000167E0(v67);

  v68 = *(v65 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_topAccessoryView);
  if (v68)
  {
    type metadata accessor for PlatformSelectorView();
    v69 = swift_dynamicCastClass();
    if (v69)
    {
      v70 = v69;
      v71 = swift_allocObject();
      swift_weakInit();
      v72 = v96;
      v73 = v102;
      (*(v96 + 16))(v102, v94, v41);
      v74 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      v75 = swift_allocObject();
      *(v75 + 16) = v110;
      *(v75 + 24) = v71;
      (*(v72 + 32))(v75 + v74, v73, v41);
      v76 = (v70 + OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_didSelectHandler);
      v77 = *(v70 + OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_didSelectHandler);
      *v76 = sub_1000C77C4;
      v76[1] = v75;
      v78 = v68;

      sub_1000167E0(v77);
    }
  }

  v79 = *(v111 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_bottomAccessoryView);
  v80 = v79;

  if (v79)
  {
    type metadata accessor for PlatformSelectorView();
    v81 = swift_dynamicCastClass();
    if (v81)
    {
      v82 = v81;
      v83 = swift_allocObject();
      swift_weakInit();

      v84 = v96;
      v85 = v102;
      (*(v96 + 16))(v102, v94, v41);
      v86 = (*(v84 + 80) + 32) & ~*(v84 + 80);
      v87 = swift_allocObject();
      *(v87 + 16) = v110;
      *(v87 + 24) = v83;
      (*(v84 + 32))(v87 + v86, v85, v41);
      v88 = (v82 + OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_didSelectHandler);
      v89 = *(v82 + OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_didSelectHandler);
      *v88 = sub_1000C7828;
      v88[1] = v87;

      sub_1000167E0(v89);
    }
  }

  else
  {
  }
}

uint64_t sub_1000C5964(void *a1, uint64_t a2)
{
  v84 = a2;
  v78 = sub_10075F65C();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v79 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_100765F6C();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v77 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_100766EDC();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v75 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076F4FC();
  __chkstk_darwin(v6 - 8);
  v72 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v8 - 8);
  v82 = &v66 - v9;
  v10 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v10 - 8);
  v81 = &v66 - v11;
  v69 = sub_10076C15C();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v80 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v13 - 8);
  v83 = &v66 - v14;
  v15 = sub_10076B66C();
  v88 = *(v15 - 8);
  v89 = v15;
  __chkstk_darwin(v15);
  v87 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1007658FC();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000A5D4(&unk_100946720);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v86 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v66 - v25;
  swift_getKeyPath();
  v93 = a1;
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  v85 = *(v22 + 8);
  v85(v26, v21);
  v98 = _swiftEmptyArrayStorage;
  v27 = *(v99 + 16);
  if (!v27)
  {

    v29 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_11;
    }

LABEL_21:
    if (sub_10077158C())
    {
      goto LABEL_12;
    }
  }

  v90 = v20;
  v91 = v18;
  v92 = v17;
  v28 = v99 + 32;
  v29 = _swiftEmptyArrayStorage;
  do
  {
    sub_10000A570(v28, v96);
    sub_10000A570(v96, v95);
    sub_10000A5D4(&qword_1009575A0);
    sub_100762A6C();
    if (swift_dynamicCast())
    {
      v30 = sub_100762A4C();

      sub_10000CD74(v96);
      if (v30)
      {
        sub_10077019C();
        if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
        v29 = v98;
      }
    }

    else
    {
      sub_10000CD74(v96);
    }

    v28 += 40;
    --v27;
  }

  while (v27);

  v18 = v91;
  v17 = v92;
  v20 = v90;
  if (v29 >> 62)
  {
    goto LABEL_21;
  }

LABEL_11:
  if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

LABEL_12:
  sub_100762A6C();
  sub_1000C75F4(&qword_100945AD0, &type metadata accessor for ProductMediaItem);
  sub_10076332C();
  if (!*&v96[0])
  {
  }

  v31 = sub_100762A4C();

  if (!v31)
  {
  }

  v67 = v31;
  swift_getKeyPath();
  v32 = v86;
  sub_10076338C();

  swift_getKeyPath();
  v33 = v87;
  sub_10076F49C();

  v85(v32, v21);
  v35 = v88;
  v34 = v89;
  if ((*(v88 + 88))(v33, v89) == enum case for Shelf.ContentsMetadata.productMedia(_:))
  {
    (*(v35 + 96))(v33, v34);
    (*(v18 + 32))(v20, v33, v17);
    v36 = sub_1000C3A94(v67, v29);
    v38 = v20;
    if (v37)
    {
      v39 = 0;
    }

    else
    {
      v39 = v36;
    }

    v90 = v38;
    v40 = sub_1007658EC();
    v92 = v17;
    v41 = sub_1000FCDDC(_swiftEmptyArrayStorage);
    v42 = v84;
    v43 = sub_1006C7080(v84, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000012, 0x80000001007D29F0);
    v44 = objc_allocWithZone(type metadata accessor for ScreenshotsGalleryViewController());
    v91 = v18;
    v45 = OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_fullScreenshotFetcher;
    type metadata accessor for ScreenshotFetcher();
    v46 = swift_allocObject();
    *(v46 + 16) = sub_1000FCDDC(_swiftEmptyArrayStorage);
    *(v46 + 32) = 0;
    swift_unknownObjectWeakInit();
    *(v46 + 32) = 0;
    swift_unknownObjectWeakAssign();
    *&v44[v45] = v46;
    v47 = OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_galleryLayout;
    *&v44[v47] = [objc_allocWithZone(type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout()) init];
    *&v44[OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_artworks] = v29;
    *&v44[OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_platform] = v40;
    *&v44[OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_placeholderImages] = v41;
    sub_100760C4C();
    sub_10076F64C();

    sub_10076FC1C();
    *&v44[OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_artworkLoader] = *&v96[0];
    *&v44[OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_selectedIndex] = v39;
    v48 = *&v44[v47];

    v49 = sub_10007689C(v48, v43);

    v50 = v49;
    v51 = [v50 navigationItem];
    v52 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v50 action:"dismissFrom:"];
    [v51 setRightBarButtonItem:v52];

    *(*&v50[OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_fullScreenshotFetcher] + 32) = &off_10089D8D8;
    swift_unknownObjectWeakAssign();

    type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
    v53 = type metadata accessor for StoreNavigationController();
    v54 = objc_allocWithZone(v53);
    *&v54[OBJC_IVAR____TtC20ProductPageExtension25StoreNavigationController_objectGraph] = v42;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v94.receiver = v54;
    v94.super_class = v53;

    v56 = objc_msgSendSuper2(&v94, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
    [v56 setDelegate:v56];
    [v56 setModalPresentationStyle:0];
    sub_10000A5D4(&unk_100942870);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1007841E0;
    *(v57 + 32) = v50;
    sub_100016F40(0, &qword_1009453B0);
    isa = sub_1007701AC().super.isa;

    [v56 setViewControllers:isa];

    v59 = sub_10000A5D4(&unk_1009428E0);
    v60 = v83;
    sub_10076F5AC();
    v61 = *(v59 - 8);
    if ((*(v61 + 48))(v60, 1, v59) == 1)
    {
      (*(v91 + 8))(v90, v92);

      return sub_10000CFBC(v60, &unk_100943200);
    }

    else
    {
      v97 = 0;
      memset(v96, 0, sizeof(v96));
      (*(v68 + 104))(v80, enum case for FlowPage.viewController(_:), v69);
      v63 = sub_10075DB7C();
      (*(*(v63 - 8) + 56))(v81, 1, 1, v63);
      v64 = sub_10076096C();
      (*(*(v64 - 8) + 56))(v82, 1, 1, v64);
      v95[3] = v53;
      v95[0] = v56;
      v93 = v56;
      sub_10076F4DC();
      (*(v70 + 104))(v75, enum case for FlowPresentationContext.infer(_:), v71);
      (*(v73 + 104))(v77, enum case for FlowAnimationBehavior.infer(_:), v74);
      (*(v76 + 104))(v79, enum case for FlowOrigin.inapp(_:), v78);
      sub_10076FA2C();
      sub_10075F63C();
      swift_allocObject();
      v65 = sub_10075F5EC();
      sub_100263C24(v65, 1, v84, v60);

      (*(v91 + 8))(v90, v92);
      return (*(v61 + 8))(v60, v59);
    }
  }

  else
  {

    return (*(v35 + 8))(v33, v34);
  }
}

void sub_1000C68C8(void *a1, uint64_t a2)
{
  v108 = a2;
  v3 = sub_10076469C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v94 = v5;
  v95 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_10076B5BC();
  v107 = *(v102 - 8);
  __chkstk_darwin(v102);
  v91 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_10000A5D4(&qword_100942C28);
  __chkstk_darwin(v100);
  v104 = &v83 - v7;
  v8 = sub_10000A5D4(&qword_1009499A0);
  __chkstk_darwin(v8 - 8);
  v98 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v96 = &v83 - v11;
  __chkstk_darwin(v12);
  v99 = &v83 - v13;
  v14 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v14 - 8);
  v92 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v103 = &v83 - v17;
  __chkstk_darwin(v18);
  v101 = &v83 - v19;
  v20 = sub_10076B66C();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000A5D4(&unk_100946720);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v97 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v83 - v28;
  v106 = sub_1007658FC();
  v30 = *(v106 - 8);
  __chkstk_darwin(v106);
  v105 = &v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlatformSelectorView();
  v32 = swift_dynamicCastClass();
  if (v32)
  {
    v93 = v30;
    v88 = v32;
    v90 = v4;
    v89 = v3;
    v33 = a1;
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v34 = *(v25 + 8);
    v34(v29, v24);
    if ((*(v21 + 88))(v23, v20) != enum case for Shelf.ContentsMetadata.productMedia(_:))
    {

      (*(v21 + 8))(v23, v20);
      return;
    }

    v35 = v34;
    (*(v21 + 96))(v23, v20);
    (*(v93 + 32))(v105, v23, v106);
    v36 = sub_1007658EC();
    v87 = sub_1007658AC();
    v37 = v96;
    v38 = v98;
    sub_10076463C();
    sub_10000CFBC(v37, &qword_1009499A0);
    v39 = v99;
    sub_10002AB4C(v38, v99);
    v40 = (*(v25 + 48))(v39, 1, v24);
    v84 = v33;
    v86 = v36;
    v85 = v35;
    if (v40 == 1)
    {
      sub_10000CFBC(v39, &qword_1009499A0);
      v41 = 1;
      v42 = v101;
    }

    else
    {
      swift_getKeyPath();
      v42 = v101;
      sub_10076F49C();

      v35(v39, v24);
      v41 = 0;
    }

    v43 = *(v107 + 56);
    v44 = v102;
    v43(v42, v41, 1, v102);
    v45 = v97;
    sub_10076468C();
    swift_getKeyPath();
    v46 = v103;
    sub_10076F49C();

    v47 = v45;
    v48 = v42;
    v85(v47, v24);
    v43(v46, 0, 1, v44);
    v49 = *(v100 + 48);
    v50 = v104;
    sub_10002ABBC(v42, v104);
    sub_10002ABBC(v46, v50 + v49);
    v51 = *(v107 + 48);
    if (v51(v50, 1, v44) == 1)
    {
      sub_10000CFBC(v46, &unk_1009568A0);
      v52 = v104;
      sub_10000CFBC(v42, &unk_1009568A0);
      v53 = v51(v52 + v49, 1, v44);
      v54 = v90;
      v55 = v93;
      v56 = v86;
      if (v53 == 1)
      {
        sub_10000CFBC(v52, &unk_1009568A0);
LABEL_24:

        v75 = 0;
LABEL_30:
        v76 = swift_allocObject();
        swift_weakLoadStrong();

        (*(v55 + 8))(v105, v106);
        swift_weakInit();

        v77 = v95;
        v78 = v89;
        (*(v54 + 16))(v95, v108, v89);
        v79 = (*(v54 + 80) + 32) & ~*(v54 + 80);
        v80 = swift_allocObject();
        *(v80 + 16) = v75;
        *(v80 + 24) = v76;
        (*(v54 + 32))(v80 + v79, v77, v78);
        v81 = (v88 + OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_didSelectHandler);
        v82 = *(v88 + OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_didSelectHandler);
        *v81 = sub_1000C755C;
        v81[1] = v80;

        sub_1000167E0(v82);

        return;
      }
    }

    else
    {
      v57 = v92;
      sub_10002ABBC(v50, v92);
      v58 = v51(v50 + v49, 1, v44);
      v54 = v90;
      if (v58 != 1)
      {
        v67 = v48;
        v68 = v57;
        v69 = v107;
        v70 = v50 + v49;
        v71 = v91;
        (*(v107 + 32))(v91, v70, v44);
        sub_1000C75F4(&qword_100942C48, &type metadata accessor for Shelf.ContentType);
        v72 = v50;
        v73 = sub_10076FF1C();
        v74 = *(v69 + 8);
        v74(v71, v44);
        sub_10000CFBC(v103, &unk_1009568A0);
        sub_10000CFBC(v67, &unk_1009568A0);
        v74(v68, v44);
        sub_10000CFBC(v72, &unk_1009568A0);
        v55 = v93;
        v56 = v86;
        v59 = v87;
        if (v73)
        {
          goto LABEL_24;
        }

LABEL_13:
        v60 = v59 >> 62;
        if (v59 >> 62)
        {
          v61 = sub_10077158C();
          if (v61)
          {
LABEL_15:
            v62 = v61 - 1;
            if (__OFSUB__(v61, 1))
            {
              __break(1u);
            }

            else if ((v59 & 0xC000000000000001) == 0)
            {
              if ((v62 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v62 < *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v63 = *(v59 + 8 * v62 + 32);

                v110 = v56;
                if (v63)
                {
                  goto LABEL_20;
                }

                goto LABEL_27;
              }

              __break(1u);
              return;
            }

            v63 = sub_10077149C();
            v110 = v56;
            if (v63)
            {
LABEL_20:
              v109 = v63;
              sub_100760E9C();
              sub_1000C75F4(&qword_100947630, &type metadata accessor for MediaPlatform);
              v64 = sub_10076FF1C();

              if (v64)
              {
                goto LABEL_24;
              }

              v65 = v59 & 0xFFFFFFFFFFFFFF8;
              if (!v60)
              {
                goto LABEL_22;
              }

              goto LABEL_28;
            }

LABEL_27:

            v65 = v59 & 0xFFFFFFFFFFFFFF8;
            if (!v60)
            {
LABEL_22:
              v66 = *(v65 + 16);
LABEL_29:

              v75 = v66 > 1;
              goto LABEL_30;
            }

LABEL_28:
            v66 = sub_10077158C();
            goto LABEL_29;
          }
        }

        else
        {
          v61 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v61)
          {
            goto LABEL_15;
          }
        }

        goto LABEL_27;
      }

      sub_10000CFBC(v103, &unk_1009568A0);
      v52 = v104;
      sub_10000CFBC(v48, &unk_1009568A0);
      (*(v107 + 8))(v57, v44);
      v55 = v93;
      v56 = v86;
    }

    sub_10000CFBC(v52, &qword_100942C28);
    v59 = v87;
    goto LABEL_13;
  }
}

uint64_t sub_1000C750C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000C755C()
{
  sub_10076469C();
  v1 = *(v0 + 16);

  sub_1000C4870(v1);
}

uint64_t sub_1000C75C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B75C();
  *a1 = result;
  return result;
}

uint64_t sub_1000C75F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C7684()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000C76F8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

double sub_1000C7940(void *a1, double a2, double a3)
{
  v7 = *v3;
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007841E0;
  *(v8 + 32) = a1;
  v9 = a1;
  v10 = sub_10076DEEC();
  [v7 measurementsWithFitting:v10 in:{a2, a3}];
  v12 = v11;

  return v12;
}

void sub_1000C7A14()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong collectionView];
    if (v2)
    {
      v3 = v2;
      isa = sub_10075E02C().super.isa;
      [v1 collectionView:v3 didSelectItemAtIndexPath:isa];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1000C7ADC()
{
  v1 = v0;
  v46 = swift_isaMask & *v0;
  v2 = sub_10076F08C();
  v53 = *(v2 - 8);
  v54 = v2;
  __chkstk_darwin(v2);
  v51 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10076F0CC();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_10076F0EC();
  v48 = *(v55 - 8);
  __chkstk_darwin(v55);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v47 = &v45 - v8;
  v9 = sub_10075E11C();
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  __chkstk_darwin(v9);
  v45 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v58 = &v45 - v12;
  v13 = sub_10076983C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_1009503C8;
  result = swift_beginAccess();
  v19 = *(v0 + v17);
  if (!v19)
  {
    return result;
  }

  v20 = v19;
  aBlock[6] = sub_1007689EC();
  aBlock[7] = v21;
  sub_10077140C();
  sub_10076984C();
  sub_1007699DC();
  v23 = v22;

  result = (*(v14 + 8))(v16, v13);
  if (v23)
  {
    return result;
  }

  sub_1007689DC();
  v24 = v58;
  sub_10075E08C();
  result = [v1 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v25 = result;
  v26.super.isa = sub_10075E02C().super.isa;
  result = [v1 collectionView];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v27 = result;
  [result contentInset];
  v29 = v28;

  [v25 _scrollToItemAtIndexPath:v26.super.isa atScrollPosition:1 additionalInsets:1 animated:{16.0 - v29, 0.0, 0.0, 0.0}];
  if (sub_1007689CC())
  {
    sub_1007689DC();
    if ((v30 & 1) == 0)
    {
      sub_100085204();
      v31 = sub_10077068C();
      sub_10076F0DC();
      v32 = v47;
      sub_10076F15C();
      v48 = *(v48 + 8);
      (v48)(v6, v55);
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = v56;
      v34 = v57;
      v36 = v45;
      (*(v56 + 16))(v45, v58, v57);
      v37 = (*(v35 + 80) + 80) & ~*(v35 + 80);
      v38 = swift_allocObject();
      v39 = v46;
      *(v38 + 16) = *(v46 + 552);
      *(v38 + 24) = *(v39 + 560);
      *(v38 + 40) = *(v39 + 576);
      *(v38 + 48) = *(v39 + 584);
      *(v38 + 64) = *(v39 + 600);
      *(v38 + 72) = v33;
      (*(v35 + 32))(v38 + v37, v36, v34);
      aBlock[4] = sub_1000C831C;
      aBlock[5] = v38;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10009AEDC;
      aBlock[3] = &unk_100887ED0;
      v40 = _Block_copy(aBlock);

      v41 = v49;
      sub_10076F0AC();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1000717C8();
      sub_10000A5D4(&unk_10094E1C0);
      sub_1000852B8();
      v42 = v51;
      v43 = v54;
      sub_1007712CC();
      sub_10077064C();
      _Block_release(v40);

      (*(v53 + 8))(v42, v43);
      v44 = v41;
      v24 = v58;
      (*(v50 + 8))(v44, v52);
      (v48)(v32, v55);
    }
  }

  return (*(v56 + 8))(v24, v57);
}

uint64_t sub_1000C8220()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C8258()
{
  v1 = sub_10075E11C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000C83C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1000C83E0()
{
  [v0 bounds];
  Width = CGRectGetWidth(v21);
  [v0 bounds];
  Height = CGRectGetHeight(v22);
  if (Height < Width)
  {
    Width = Height;
  }

  [v0 bounds];
  v3 = CGRectGetMidX(v23) - Width * 0.5;
  [v0 bounds];
  v4 = CGRectGetMidY(v24) - Width * 0.5;
  [v0 bounds];
  v5 = ceil(CGRectGetHeight(v25) * 0.6 * 0.5);
  [v0 bounds];
  v6 = ceil(CGRectGetHeight(v26) * 0.5) - v5;
  [v0 bounds];
  v7 = ceil(CGRectGetHeight(v27) * 0.6 * 0.5);
  [v0 bounds];
  v8 = ceil(CGRectGetHeight(v28) * 0.5) - v7;
  v29.origin.x = v3;
  v29.origin.y = v4;
  v29.size.width = Width;
  v29.size.height = Width;
  v30 = CGRectInset(v29, v6, v8);
  x = v30.origin.x;
  y = v30.origin.y;
  v11 = v30.size.width;
  v12 = v30.size.height;
  [v0 bounds];
  v13 = ceil(ceil(CGRectGetHeight(v31) * 0.08) * -0.5);
  [v0 bounds];
  v14 = ceil(ceil(CGRectGetHeight(v32) * 0.08) * -0.5);
  v15 = x;
  v16 = y;
  v17 = v11;
  v18 = v12;

  *&result = CGRectInset(*&v15, v13, v14);
  return result;
}

void sub_1000C8590()
{
  v1 = sub_10076FF6C();
  v2 = [v0 animationForKey:v1];

  if (v2)
  {

    v3 = sub_10076FF6C();
    [v0 removeAnimationForKey:v3];
  }

  [v0 removeAllAnimations];
  v4 = sub_1000C97F0();
  v5 = sub_10076FF6C();
  [v0 addAnimation:v4 forKey:v5];
}

uint64_t sub_1000C86BC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73736572676F7270 && a2 == 0xE800000000000000 || (sub_10077167C() & 1) != 0 || a1 == 0x6F72507265746E65 && a2 == 0xED00007373657267 || (sub_10077167C() & 1) != 0 || a1 == 0x676F725074697865 && a2 == 0xEC00000073736572 || (sub_10077167C() & 1) != 0)
  {
    return 1;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = sub_10076FF6C();
  v8.receiver = ObjCClassFromMetadata;
  v8.super_class = &OBJC_METACLASS____TtC20ProductPageExtension20InstallProgressLayer;
  v7 = objc_msgSendSuper2(&v8, "needsDisplayForKey:", v6);

  return v7;
}

id sub_1000C8864(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x73736572676F7270 && a2 == 0xE800000000000000;
  if (v3 || (sub_10077167C() & 1) != 0)
  {
    v4 = sub_10076FF6C();
    v5 = [objc_opt_self() animationWithKeyPath:v4];

    v6 = [v2 presentationLayer];
    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = v6;
    v8 = sub_10076FF6C();
    v9 = [v7 valueForKey:v8];

    if (v9)
    {
      sub_10077123C();
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }

    v21 = v19;
    v22 = v20;
    v11 = *(&v20 + 1);
    if (*(&v20 + 1))
    {
      v12 = sub_10000CF78(&v21, *(&v22 + 1));
      v13 = *(*(&v20 + 1) - 8);
      v14 = __chkstk_darwin(v12);
      v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v13 + 16))(v16, v14);
      v17 = sub_10077165C();
      (*(v13 + 8))(v16, v11);
      sub_10000CD74(&v21);
    }

    else
    {
LABEL_13:
      v17 = 0;
    }

    [v5 setFromValue:{v17, v19, v20, v21, v22}];
    swift_unknownObjectRelease();
    [v5 setDuration:0.4];
  }

  else
  {
    v10 = sub_10076FF6C();
    v23.receiver = v2;
    v23.super_class = type metadata accessor for InstallProgressLayer();
    v5 = objc_msgSendSuper2(&v23, "actionForKey:", v10);
  }

  return v5;
}

void sub_1000C8B68(CGContext *a1)
{
  CGContextSetFillColorWithColor(a1, *&v1[OBJC_IVAR____TtC20ProductPageExtension20InstallProgressLayer_stageColor]);
  [v1 bounds];
  CGContextFillRect(a1, v7);
  [v1 enterProgress];
  if (v3 > COERCE_DOUBLE(1))
  {
    sub_1000C8DA4(a1);
  }

  [v1 progress];
  if (v4 > COERCE_DOUBLE(1))
  {
    sub_1000C8F98(a1);
  }

  [v1 exitProgress];
  if (v5 > COERCE_DOUBLE(1))
  {

    sub_1000C8CA8(a1);
  }
}

void sub_1000C8CA8(CGContext *a1)
{
  CGContextSetBlendMode(a1, kCGBlendModeClear);
  v12.origin.x = sub_1000C83E0();
  Width = CGRectGetWidth(v12);
  v13.origin.x = sub_1000C83E0();
  Height = CGRectGetHeight(v13);
  if (Height >= Width)
  {
    Height = Width;
  }

  v5 = Height * 0.5;
  [v1 exitProgress];
  v7 = v6;
  [v1 bounds];
  v8 = CGRectGetWidth(v14);
  [v1 bounds];
  v9 = CGRectGetHeight(v15);
  if (v8 > v9)
  {
    v9 = v8;
  }

  v10 = v5 - (v5 + v7 * (ceil(sqrt(v9 * 0.5 * (v9 * 0.5) + v9 * 0.5 * (v9 * 0.5))) - v5));
  v16.origin.x = sub_1000C83E0();
  v17 = CGRectInset(v16, v10, v10);
  CGContextFillEllipseInRect(a1, v17);

  CGContextSetBlendMode(a1, kCGBlendModeNormal);
}

void sub_1000C8DA4(CGContext *a1)
{
  CGContextSetBlendMode(a1, kCGBlendModeClear);
  v22.origin.x = sub_1000C83E0();
  Width = CGRectGetWidth(v22);
  v23.origin.x = sub_1000C83E0();
  Height = CGRectGetHeight(v23);
  if (Height >= Width)
  {
    Height = Width;
  }

  v5 = Height * 0.5;
  [v1 enterProgress];
  v7 = v5 * (1.0 - v6);
  [v1 bounds];
  v8 = CGRectGetWidth(v24);
  [v1 bounds];
  v9 = CGRectGetHeight(v25);
  if (v9 < v8)
  {
    v8 = v9;
  }

  [v1 bounds];
  v10 = CGRectGetMidX(v26) - v8 * 0.5;
  [v1 bounds];
  v11 = CGRectGetMidY(v27) - v8 * 0.5;
  [v1 bounds];
  v12 = ceil(CGRectGetHeight(v28) * 0.6 * 0.5);
  [v1 bounds];
  v13 = ceil(CGRectGetHeight(v29) * 0.5) - v12;
  [v1 bounds];
  v14 = ceil(CGRectGetHeight(v30) * 0.6 * 0.5);
  [v1 bounds];
  v15 = ceil(CGRectGetHeight(v31) * 0.5) - v14;
  v32.origin.x = v10;
  v32.origin.y = v11;
  v32.size.width = v8;
  v32.size.height = v8;
  v33 = CGRectInset(v32, v13, v15);
  v34 = CGRectInset(v33, v7, v7);
  x = v34.origin.x;
  y = v34.origin.y;
  v18 = v34.size.width;
  v19 = v34.size.height;
  [v1 bounds];
  v20 = CGRectGetHeight(v35);
  CGContextSetLineWidth(a1, ceil(v20 * 0.08));
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = v18;
  v36.size.height = v19;
  CGContextStrokeEllipseInRect(a1, v36);

  CGContextSetBlendMode(a1, kCGBlendModeNormal);
}

void sub_1000C8F98(CGContext *a1)
{
  v2 = v1;
  v4 = sub_10076C89C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGContextSetBlendMode(a1, kCGBlendModeClear);
  [v2 bounds];
  Width = CGRectGetWidth(v34);
  [v2 bounds];
  Height = CGRectGetHeight(v35);
  if (Height < Width)
  {
    Width = Height;
  }

  [v2 bounds];
  v10 = CGRectGetMidX(v36) - Width * 0.5;
  [v2 bounds];
  v11 = CGRectGetMidY(v37) - Width * 0.5;
  [v2 bounds];
  v12 = ceil(CGRectGetHeight(v38) * 0.6 * 0.5);
  [v2 bounds];
  v13 = ceil(CGRectGetHeight(v39) * 0.5) - v12;
  [v2 bounds];
  v14 = ceil(CGRectGetHeight(v40) * 0.6 * 0.5);
  [v2 bounds];
  v15 = ceil(CGRectGetHeight(v41) * 0.5) - v14;
  v42.origin.x = v10;
  v42.origin.y = v11;
  v42.size.width = Width;
  v42.size.height = Width;
  v43 = CGRectInset(v42, v13, v15);
  CGRectGetMidX(v43);
  [v2 bounds];
  ceil(CGRectGetHeight(v44) * 0.6 * 0.5);
  [v2 bounds];
  ceil(CGRectGetHeight(v45) * 0.5);
  [v2 bounds];
  v16 = CGRectGetWidth(v46);
  [v2 bounds];
  v17 = CGRectGetHeight(v47);
  if (v17 < v16)
  {
    v16 = v17;
  }

  [v2 bounds];
  v18 = CGRectGetMidX(v48) - v16 * 0.5;
  [v2 bounds];
  v19 = CGRectGetMidY(v49) - v16 * 0.5;
  [v2 bounds];
  v20 = ceil(CGRectGetHeight(v50) * 0.6 * 0.5);
  [v2 bounds];
  v21 = ceil(CGRectGetHeight(v51) * 0.5) - v20;
  [v2 bounds];
  v22 = ceil(CGRectGetHeight(v52) * 0.6 * 0.5);
  [v2 bounds];
  v23 = ceil(CGRectGetHeight(v53) * 0.5) - v22;
  v54.origin.x = v18;
  v54.origin.y = v19;
  v54.size.width = v16;
  v54.size.height = v16;
  v55 = CGRectInset(v54, v21, v23);
  CGRectGetMidY(v55);
  [v2 bounds];
  ceil(CGRectGetHeight(v56) * 0.6 * 0.5);
  [v2 bounds];
  CGRectGetHeight(v57);
  [v2 bounds];
  ceil(CGRectGetHeight(v58) * 0.6 * 0.5);
  [v2 bounds];
  ceil(CGRectGetHeight(v59) * 0.5);
  [v2 bounds];
  v24 = CGRectGetWidth(v60);
  [v2 bounds];
  v25 = CGRectGetHeight(v61);
  if (v25 >= v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = v25;
  }

  [v2 bounds];
  v27 = CGRectGetMidX(v62) - v26 * 0.5;
  [v2 bounds];
  v28 = CGRectGetMidY(v63) - v26 * 0.5;
  [v2 bounds];
  v29 = ceil(CGRectGetHeight(v64) * 0.6 * 0.5);
  [v2 bounds];
  v30 = ceil(CGRectGetHeight(v65) * 0.5) - v29;
  [v2 bounds];
  v31 = ceil(CGRectGetHeight(v66) * 0.6 * 0.5);
  [v2 bounds];
  v32 = ceil(CGRectGetHeight(v67) * 0.5) - v31;
  v68.origin.x = v27;
  v68.origin.y = v28;
  v68.size.width = v26;
  v68.size.height = v26;
  v69 = CGRectInset(v68, v30, v32);
  CGRectGetMidY(v69);
  [v2 progress];
  sub_10077046C();
  sub_10077047C();
  CGContextClosePath(a1);
  (*(v5 + 104))(v7, enum case for CGPathFillRule.winding(_:), v4);
  sub_10077049C();
  (*(v5 + 8))(v7, v4);
  CGContextSetBlendMode(a1, kCGBlendModeNormal);
}

id sub_1000C9660(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension20InstallProgressLayer_stageColor;
  v4 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.65];
  v5 = [v4 CGColor];

  *&v1[v3] = v5;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension20InstallProgressLayer_originAngle] = 0x4012D97C7F3321D2;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for InstallProgressLayer();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_1000C9764()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InstallProgressLayer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000C97F0()
{
  v0 = sub_10076FF6C();
  v1 = [objc_opt_self() animationWithKeyPath:v0];

  isa = sub_1007703CC().super.super.isa;
  [v1 setFromValue:isa];

  v3 = sub_10077033C().super.super.isa;
  [v1 setToValue:v3];

  v4 = v1;
  [v4 setDuration:0.3];
  [v4 setFillMode:kCAFillModeForwards];
  [v4 setRemovedOnCompletion:0];

  return v4;
}

id UIView.withAccessibilityIdentifier(_:)()
{
  v1 = v0;
  v2 = sub_10076FF6C();
  [v1 setAccessibilityIdentifier:v2];

  return v1;
}

uint64_t sub_1000C9940()
{
  v0 = sub_10076D1AC();
  v57 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10075E77C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v56 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v45 - v7;
  v9 = sub_10000A5D4(&unk_10094CD50);
  __chkstk_darwin(v9 - 8);
  v49 = v45 - v10;
  v11 = sub_10075E8CC();
  sub_10000DB18(v11, qword_10099CD58);
  v45[2] = sub_10000A61C(v11, qword_10099CD58);
  if (qword_10093F670 != -1)
  {
    swift_once();
  }

  v12 = sub_10000A61C(v3, qword_10099CD70);
  v13 = *(v4 + 16);
  v13(v8, v12, v3);
  sub_10075E73C();
  v15 = v14;
  v17 = v16;
  v18 = *(v4 + 8);
  v18(v8, v3);
  v75 = v15;
  v76 = v17;
  v19 = v56;
  v13(v56, v12, v3);
  sub_10075E73C();
  v21 = v20;
  v23 = v22;
  v18(v19, v3);
  v74[0] = v21;
  v74[1] = v23;
  sub_10000A5D4(&unk_100943120);
  type metadata accessor for CGSize(0);
  sub_10075FDEC();
  v77 = &type metadata for Double;
  v78 = &protocol witness table for Double;
  v75 = 0x402E000000000000;
  if (qword_100940A28 != -1)
  {
    swift_once();
  }

  v24 = sub_10076D3DC();
  v47 = sub_10000A61C(v24, qword_1009A0C88);
  v25 = *(v24 - 8);
  v54 = *(v25 + 16);
  v55 = v25 + 16;
  v54(v2, v47, v24);
  v48 = enum case for FontSource.useCase(_:);
  v26 = v57;
  v27 = v57 + 104;
  v53 = *(v57 + 104);
  v53(v2);
  v56 = sub_10076D9AC();
  v74[3] = v56;
  v74[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v74);
  v72 = v0;
  v73 = &protocol witness table for FontSource;
  v28 = sub_10000DB7C(v71);
  v29 = *(v26 + 16);
  v29(v28, v2, v0);
  v50 = v29;
  sub_10076D9BC();
  v52 = *(v26 + 8);
  v52(v2, v0);
  v54(v2, v47, v24);
  v30 = v48;
  (v53)(v2, v48, v0);
  v72 = v56;
  v73 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v71);
  v69 = v0;
  v70 = &protocol witness table for FontSource;
  v31 = sub_10000DB7C(v68);
  v29(v31, v2, v0);
  v32 = v54;
  sub_10076D9BC();
  v52(v2, v0);
  v51 = v24;
  v32(v2, v47, v24);
  v45[1] = v27;
  (v53)(v2, v30, v0);
  v69 = v56;
  v70 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v68);
  v66 = v0;
  v67 = &protocol witness table for FontSource;
  v33 = sub_10000DB7C(v65);
  v47 = v26 + 16;
  v50(v33, v2, v0);
  sub_10076D9BC();
  v57 = v26 + 8;
  v52(v2, v0);
  if (qword_100940A30 != -1)
  {
    swift_once();
  }

  v34 = v51;
  v46 = sub_10000A61C(v51, qword_1009A0CA0);
  v35 = v54;
  v54(v2, v46, v34);
  v36 = v48;
  v37 = v53;
  v53(v2);
  v66 = v56;
  v67 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v65);
  v63 = v0;
  v64 = &protocol witness table for FontSource;
  v38 = sub_10000DB7C(v62);
  v50(v38, v2, v0);
  sub_10076D9BC();
  v52(v2, v0);
  v35(v2, v46, v51);
  v37(v2, v36, v0);
  v39 = v56;
  v63 = v56;
  v64 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v62);
  v60 = v0;
  v61 = &protocol witness table for FontSource;
  v40 = sub_10000DB7C(v59);
  v41 = v50;
  v50(v40, v2, v0);
  sub_10076D9BC();
  v42 = v52;
  v52(v2, v0);
  v54(v2, v46, v51);
  (v53)(v2, v36, v0);
  v60 = v39;
  v61 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v59);
  v58[3] = v0;
  v58[4] = &protocol witness table for FontSource;
  v43 = sub_10000DB7C(v58);
  v41(v43, v2, v0);
  sub_10076D9BC();
  v42(v2, v0);
  return sub_10075E8AC();
}

uint64_t sub_1000CA184()
{
  v0 = sub_10075E77C();
  sub_10000DB18(v0, qword_10099CD70);
  sub_10000A61C(v0, qword_10099CD70);
  return sub_10075E6FC();
}

uint64_t sub_1000CA1E4()
{
  v0 = sub_10000A5D4(&unk_100942EF0);
  sub_10000DB18(v0, qword_1009476A0);
  sub_10000A61C(v0, qword_1009476A0);
  sub_10000A5D4(&unk_100943120);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FDDC();
}

id sub_1000CA280()
{
  v1 = v0;
  v2 = sub_10075E57C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v39 - v6;
  __chkstk_darwin(v7);
  v9 = &v39 - v8;
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_iconView];
  v14 = OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_theme;
  swift_beginAccess();
  v15 = *(v3 + 16);
  v15(v12, &v1[v14], v2);
  v16 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_theme;
  swift_beginAccess();
  (*(v3 + 24))(v13 + v16, v12, v2);
  swift_endAccess();
  v15(v9, (v13 + v16), v2);
  sub_1005B84F8(v9);
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
  sub_1000CBF30(&qword_100947700, &type metadata accessor for InAppPurchaseTheme);
  sub_10077018C();
  sub_10077018C();
  if (v45 == v43 && v46 == v44)
  {
    v21 = v20;
    v22 = v41;
    v41(v21, v2);
    v22(v19, v2);

LABEL_5:
    v26 = v42;
    v27 = *&v42[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_titleLabel];
    v28 = [v42 tintColor];
    [v27 setTextColor:v28];

    v29 = *&v26[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_subtitleLabel];
    if (v29)
    {
      v30 = [v26 tintColor];
      [v29 setTextColor:v30];
    }

    v31 = *&v26[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_descriptionLabel];
    v32 = [v26 tintColor];
    [v31 setTextColor:v32];
    goto LABEL_11;
  }

  v23 = sub_10077167C();
  v24 = v20;
  v25 = v41;
  v41(v24, v2);
  v25(v19, v2);

  if (v23)
  {
    goto LABEL_5;
  }

  v26 = v42;
  v33 = *&v42[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_titleLabel];
  sub_1000325F0();
  v34 = sub_100770CFC();
  [v33 setTextColor:v34];

  v35 = *&v26[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_subtitleLabel];
  if (v35)
  {
    v36 = sub_100770CFC();
    [v35 setTextColor:v36];
  }

  v37 = *&v26[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_descriptionLabel];
  v32 = sub_100770D1C();
  [v37 setTextColor:v32];
LABEL_11:

  return [v26 setNeedsLayout];
}

char *sub_1000CA728(int a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_10076771C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v8 - 8);
  v10 = &v51 - v9;
  v11 = sub_10075E77C();
  __chkstk_darwin(v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_theme;
  v15 = enum case for InAppPurchaseTheme.infer(_:);
  v16 = sub_10075E57C();
  (*(*(v16 - 8) + 104))(&v2[v14], v15, v16);
  v2[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_isHeightConstrained] = 0;
  if (qword_10093F670 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v11, qword_10099CD70);
  sub_10075E6EC();
  sub_10075E6FC();
  v17 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  v53 = a1;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_iconView] = sub_1005B7DD4(v13, a1 & 1);
  if (qword_100940A28 != -1)
  {
    swift_once();
  }

  v18 = sub_10076D3DC();
  v19 = sub_10000A61C(v18, qword_1009A0C88);
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
  v23 = sub_1007626BC();
  v24 = objc_allocWithZone(v23);
  *&v2[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_titleLabel] = sub_1007626AC();
  if (qword_100940A30 != -1)
  {
    swift_once();
  }

  v25 = sub_10000A61C(v18, qword_1009A0CA0);
  v58(v10, v25, v18);
  v57(v10, 0, 1, v18);
  v55(v7, v56, v4);
  v26 = objc_allocWithZone(v23);
  *&v2[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_descriptionLabel] = sub_1007626AC();
  v27 = objc_allocWithZone(type metadata accessor for OfferButton());
  v28 = sub_1001E89B8(0);
  v29 = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_offerButton] = v28;
  if (v53)
  {
    v58(v10, v52, v18);
    v57(v10, 0, 1, v18);
    v55(v7, v56, v4);
    v30 = objc_allocWithZone(v23);
    v29 = sub_1007626AC();
  }

  *&v2[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_subtitleLabel] = v29;
  v31 = type metadata accessor for InAppPurchaseLockupView();
  v60.receiver = v2;
  v60.super_class = v31;
  v32 = objc_msgSendSuper2(&v60, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v36 = v32;
  [v36 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  if (qword_10093F678 != -1)
  {
    swift_once();
  }

  v37 = sub_10000A5D4(&unk_100942EF0);
  sub_10000A61C(v37, qword_1009476A0);
  v59 = v36;
  v38 = v36;
  sub_10075FDCC();

  v39 = OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_titleLabel;
  sub_100770E7C();
  v40 = OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_subtitleLabel;
  if (*&v38[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_subtitleLabel])
  {
    sub_100770E7C();
  }

  v41 = OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_descriptionLabel;
  sub_100770E7C();
  v42 = *&v38[v41];
  sub_1000325F0();
  v43 = v42;
  v44 = sub_100770D1C();
  [v43 setTextColor:v44];

  v45 = *&v38[v39];
  sub_10076266C();

  [v38 addSubview:*&v38[v39]];
  v46 = *&v38[v41];
  sub_10076266C();

  [v38 addSubview:*&v38[v41]];
  [v38 addSubview:*&v38[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_offerButton]];
  [v38 addSubview:*&v38[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_iconView]];
  v47 = *&v38[v40];
  if (v47)
  {
    v48 = v47;
    sub_10076266C();
    [v38 addSubview:v48];
  }

  sub_10000A5D4(&unk_100945BF0);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_100783DD0;
  *(v49 + 32) = sub_10076E3EC();
  *(v49 + 40) = &protocol witness table for UITraitLayoutDirection;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v38;
}

void sub_1000CAFA0()
{
  v1 = v0;
  v2 = sub_10075E57C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v20 - v7;
  v9 = type metadata accessor for InAppPurchaseLockupView();
  v21.receiver = v0;
  v21.super_class = v9;
  objc_msgSendSuper2(&v21, "tintColorDidChange");
  v10 = OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_theme;
  swift_beginAccess();
  (*(v3 + 16))(v8, &v1[v10], v2);
  (*(v3 + 104))(v5, enum case for InAppPurchaseTheme.spotlight(_:), v2);
  sub_1000CBF30(&qword_100947700, &type metadata accessor for InAppPurchaseTheme);
  sub_10077018C();
  sub_10077018C();
  if (v20[3] == v20[1] && v20[4] == v20[2])
  {
    v11 = *(v3 + 8);
    v11(v5, v2);
    v11(v8, v2);
  }

  else
  {
    v12 = sub_10077167C();
    v13 = *(v3 + 8);
    v13(v5, v2);
    v13(v8, v2);

    if ((v12 & 1) == 0)
    {
      return;
    }
  }

  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_titleLabel];
  v15 = [v1 tintColor];
  [v14 setTextColor:v15];

  v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_subtitleLabel];
  if (v16)
  {
    v17 = [v1 tintColor];
    [v16 setTextColor:v17];
  }

  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_descriptionLabel];
  v19 = [v1 tintColor];
  [v18 setTextColor:v19];
}

uint64_t sub_1000CB308()
{
  v1 = v0;
  v44 = sub_10076D1FC();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10075E8EC();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10075E8CC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = type metadata accessor for InAppPurchaseLockupView();
  v62.receiver = v1;
  v62.super_class = v10;
  objc_msgSendSuper2(&v62, "layoutSubviews");
  if (qword_10093F668 != -1)
  {
    swift_once();
  }

  v11 = sub_10000A61C(v4, qword_10099CD58);
  v38 = v5;
  v12 = *(v5 + 16);
  v12(v9, v11, v4);
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_offerButton];
  v36 = v10;
  sub_10076422C();
  v14 = &v13[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize];
  if (v13[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v15 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000A570(&v13[v15], &v59);
    sub_10000CF78(&v59, v60);
    sub_100767A2C();
    v17 = v16;
    v19 = v18;
    sub_10000CD74(&v59);
    *v14 = v17;
    *(v14 + 1) = v19;
    v14[16] = 0;
  }

  sub_10075E88C();
  sub_10075E89C();
  v12(v37, v9, v4);
  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_iconView];
  v60 = type metadata accessor for InAppPurchaseView();
  v61 = &protocol witness table for UIView;
  v59 = v20;
  v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_titleLabel];
  v22 = sub_1007626BC();
  v57 = v22;
  v58 = &protocol witness table for UILabel;
  v56 = v21;
  v23 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_subtitleLabel];
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
  v26 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_descriptionLabel];
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
  sub_10075E8DC();
  sub_10076422C();
  v34 = v41;
  sub_10075E86C();
  (*(v43 + 8))(v34, v44);
  (*(v40 + 8))(v33, v42);
  return (*(v38 + 8))(v9, v4);
}

id sub_1000CB9AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseLockupView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseLockupView()
{
  result = qword_1009476E8;
  if (!qword_1009476E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000CBAF4()
{
  result = sub_10075E57C();
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

double sub_1000CBBB0(void *a1)
{
  v2 = sub_10076443C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = sub_10075E8CC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093F668 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v9, qword_10099CD58);
  (*(v10 + 16))(v12, v13, v9);
  v14 = [a1 traitCollection];
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v15 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v15 = qword_100944CA0;
  }

  v16 = sub_10000A61C(v2, v15);
  (*(v3 + 16))(v5, v16, v2);

  (*(v3 + 32))(v8, v5, v2);
  sub_1007643EC();
  sub_10076441C();
  sub_10075E88C();
  sub_10075E8EC();
  sub_1000CBF30(&qword_1009476F8, &type metadata accessor for InAppPurchaseLockupViewLayout);
  sub_10076DBDC();
  v18 = v17;
  (*(v3 + 8))(v8, v2);
  (*(v10 + 8))(v12, v9);
  return v18;
}

uint64_t sub_1000CBF30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000CBF78(void *a1)
{
  if (qword_10093F678 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A5D4(&unk_100942EF0);
  sub_10000A61C(v2, qword_1009476A0);
  v3 = a1;
  sub_10075FDCC();

  sub_100770E7C();
  if (*&v3[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_subtitleLabel])
  {
    sub_100770E7C();
  }

  return sub_100770E7C();
}

char *sub_1000CC068(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension31ReviewSummaryCollectionViewCell_itemLayoutContext;
  v10 = sub_10076341C();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC20ProductPageExtension31ReviewSummaryCollectionViewCell_reviewSummaryView;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for ReviewSummaryView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for ReviewSummaryCollectionViewCell();
  v12 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v13 = [v12 contentView];
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v14 = [v12 contentView];
  [v14 addSubview:*&v12[OBJC_IVAR____TtC20ProductPageExtension31ReviewSummaryCollectionViewCell_reviewSummaryView]];

  return v12;
}

id sub_1000CC430()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReviewSummaryCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ReviewSummaryCollectionViewCell()
{
  result = qword_100947730;
  if (!qword_100947730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000CC594(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v10 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension31ReviewSummaryCollectionViewCell_reviewSummaryView);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v14[4] = a5;
    v14[5] = v11;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_10009AEDC;
    v14[3] = a6;
    v12 = _Block_copy(v14);
    v13 = v10;

    [a1 addAnimations:v12];
    _Block_release(v12);
  }
}

void *sub_1000CC690()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension31ReviewSummaryCollectionViewCell_reviewSummaryView) + OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_previewContainer);
  v2 = v1;
  return v1;
}

uint64_t sub_1000CC6D0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000CC710(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000CC73C(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      LOBYTE(v4) = 1;
      return v4 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v4 = v12 - 4;
        v13 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          sub_10077149C();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          if (!v11)
          {
LABEL_24:
            if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v14 = *(a2 + 8 * v12);

            goto LABEL_26;
          }
        }

        v14 = sub_10077149C();
LABEL_26:
        LOBYTE(v4) = sub_100077570(v14);

        if (v4)
        {
          ++v12;
          if (v13 != v5)
          {
            continue;
          }
        }

        return v4 & 1;
      }
    }

    v15 = (v3 + 32);
    v16 = (a2 + 32);
    v17 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = v5 - 1;
    while (1)
    {
      if (!v17)
      {
        goto LABEL_40;
      }

      if (!v18)
      {
        break;
      }

      v20 = *v15++;
      a2 = v20;
      v21 = *v16++;
      v3 = v21;

      v4 = sub_100077570(v22);

      v24 = v19-- != 0;
      if (v4)
      {
        --v18;
        --v17;
        if (v24)
        {
          continue;
        }
      }

      return v4 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_10077158C();
  }

  result = sub_10077158C();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  LOBYTE(v4) = 0;
  return v4 & 1;
}

uint64_t sub_1000CC978(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_10077158C();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v16 = 0;
    return v16 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v16 = 1;
    return v16 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = sub_10077158C();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = sub_10077149C();
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v4 = *(a1 + 8 * v12);

        if (v11)
        {
LABEL_20:
          v15 = sub_10077149C();
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v15 = *(a2 + 8 * v12);

LABEL_25:
      v16 = (*(*v4 + 96))(v15);

      if (v16)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v16 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CCB4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      if (v6 == 6)
      {
        if (v7 != 6)
        {
          return 0;
        }
      }

      else if (v5 == 5)
      {
        if (v7 != 5)
        {
          return 0;
        }
      }

      else if (v5 == 4)
      {
        if (v7 != 4)
        {
          return 0;
        }
      }

      else if ((v7 - 7) > 0xFFFFFFFC || v5 != v7)
      {
        return 0;
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1000CCBE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_46;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      return 0;
    }

LABEL_5:
    if (!v5)
    {
      return 1;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a1 < 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
      return 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | a1) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      for (i = 4; ; ++i)
      {
        v16 = i - 4;
        v17 = i - 3;
        if (__OFADD__(i - 4, 1))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = sub_10077149C();
          if (!v11)
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (v16 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v4 = *(a1 + 8 * i);

          if (!v11)
          {
LABEL_29:
            if (v16 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_45;
            }

            v13 = *(a2 + 8 * i);

            goto LABEL_19;
          }
        }

        v13 = sub_10077149C();
LABEL_19:
        v14 = *(v4 + 16);

        v4 = *(v13 + 16);

        result = v14 == v4;
        if (v14 != v4 || v17 == v5)
        {
          return result;
        }
      }
    }

    v18 = (a1 + 32);
    v19 = (a2 + 32);
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = v5 - 1;
    while (1)
    {
      if (!v20)
      {
        goto LABEL_42;
      }

      if (!v21)
      {
        break;
      }

      v24 = *v18++;
      v23 = v24;
      v25 = *v19++;
      v26 = *(v23 + 16);
      v27 = *(v25 + 16);
      v29 = v22-- != 0;
      result = v26 == v27;
      if (v26 == v27)
      {
        --v21;
        --v20;
        if (v29)
        {
          continue;
        }
      }

      return result;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v5 = sub_10077158C();
  }

  result = sub_10077158C();
  if (v5 == result)
  {
    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_1000CCE4C(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_1000325F0();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = sub_10077149C();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = sub_10077149C();
LABEL_26:
        v17 = v16;
        v18 = sub_100770EEC();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_100770EEC();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_10077158C();
  }

  result = sub_10077158C();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1000CD08C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076B96C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_1000D0788(&qword_100947768, &type metadata accessor for AdamId);
    v22 = sub_10076FF1C();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CD2E8(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v7 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    v21 = a3;
    result = sub_10077158C();
    a3 = v21;
    if (v8 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v18 = 0;
    return v18 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v8)
  {
    goto LABEL_28;
  }

  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  v11 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v10 = a1;
  }

  if (v7)
  {
    v11 = v10;
  }

  v12 = a2 & 0xFFFFFFFFFFFFFF8;
  v13 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v12 = a2;
  }

  if (a2 >> 62)
  {
    v13 = v12;
  }

  if (v11 == v13)
  {
LABEL_28:
    v18 = 1;
    return v18 & 1;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    a3(0);
    v14 = a2 & 0xC000000000000001;
    v15 = 4;
    v7 = v8;
    while (1)
    {
      v16 = v15 - 4;
      v17 = v15 - 3;
      if (__OFADD__(v15 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v19 = a3;
        v20 = sub_10077158C();
        a3 = v19;
        v8 = v20;
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        sub_10077149C();
        if (v14)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v16 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        if (v14)
        {
LABEL_20:
          sub_10077149C();
          goto LABEL_25;
        }
      }

      if (v16 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

LABEL_25:
      sub_1000D0788(a4, a5);
      v18 = sub_10076FF1C();

      if (v18)
      {
        ++v15;
        if (v17 != v7)
        {
          continue;
        }
      }

      return v18 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CD4F4(void *a1, char *a2)
{
  v283 = a2;
  v244 = sub_10076F9AC();
  v243 = *(v244 - 8);
  __chkstk_darwin(v244);
  v240 = &v231 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v241 = &v231 - v6;
  __chkstk_darwin(v7);
  v242 = &v231 - v8;
  v263 = sub_10076892C();
  v262 = *(v263 - 8);
  __chkstk_darwin(v263);
  v264 = &v231 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076894C();
  v268 = *(v10 - 8);
  __chkstk_darwin(v10);
  v267 = &v231 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = sub_10076771C();
  v258 = *(v259 - 8);
  __chkstk_darwin(v259);
  v260 = &v231 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v13 - 8);
  v257 = &v231 - v14;
  v266 = sub_100762FFC();
  v265 = *(v266 - 8);
  __chkstk_darwin(v266);
  v256 = &v231 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v261 = &v231 - v17;
  __chkstk_darwin(v18);
  v255 = &v231 - v19;
  v254 = sub_10077164C();
  v253 = *(v254 - 8);
  __chkstk_darwin(v254);
  v252 = &v231 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = sub_10076C38C();
  v250 = *(v251 - 8);
  __chkstk_darwin(v251);
  v249 = &v231 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_1007608DC();
  v247 = *(v248 - 8);
  __chkstk_darwin(v248);
  v246 = &v231 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = sub_10076B5BC();
  v272 = *(v278 - 8);
  __chkstk_darwin(v278);
  v233 = &v231 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = sub_10000A5D4(&qword_100942C28);
  __chkstk_darwin(v271);
  v279 = &v231 - v24;
  v25 = sub_10000A5D4(&unk_100946720);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v270 = (&v231 - v27);
  v28 = sub_10000A5D4(&qword_100942C40);
  __chkstk_darwin(v28);
  v30 = &v231 - v29;
  v31 = sub_10000A5D4(&qword_1009499A0);
  __chkstk_darwin(v31 - 8);
  v33 = &v231 - v32;
  v34 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v34 - 8);
  v239 = &v231 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v269 = &v231 - v37;
  __chkstk_darwin(v38);
  v276 = &v231 - v39;
  sub_10076092C();
  sub_1000D0788(&qword_100947638, &type metadata accessor for ProductMedia);
  v40 = a1;
  result = sub_10076332C();
  v42 = v287;
  if (!v287)
  {
    return result;
  }

  v236 = v10;
  v43 = sub_100630CB4();
  v44 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_objectGraph);
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_objectGraph) = v283;

  sub_100595060(v44);

  *(v2 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_pageTraits) = v43;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v45 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_flowLayout);
  ObjectType = swift_getObjectType();
  v283 = v43;
  [v43 pageMarginInsets];
  [v45 setSectionInset:?];

  v280 = v2;
  sub_100594F54(v46);
  v47 = sub_10076091C();
  v48 = sub_1007608BC();
  v238 = sub_1007608CC();
  v273 = v49;
  v274 = v42;
  v245 = sub_1007608FC();
  v277 = v50;
  v232 = sub_10000A5D4(&unk_100942870);
  v51 = swift_allocObject();
  v231 = xmmword_1007841E0;
  *(v51 + 16) = xmmword_1007841E0;
  *(v51 + 32) = v47;
  v281 = v47;

  v282 = v48;
  v234 = sub_1000CD2E8(v48, v51, &type metadata accessor for MediaPlatform, &qword_100947630, &type metadata accessor for MediaPlatform);

  swift_getKeyPath();
  sub_10076338C();

  sub_10002AB4C(&v30[*(v28 + 48)], v33);
  v52 = (*(v26 + 48))(v33, 1, v25);
  v275 = v40;
  if (v52 == 1)
  {
    sub_10000CFBC(v30, &qword_1009499A0);
    sub_10000CFBC(v33, &qword_1009499A0);
    v53 = v26;
    v54 = v25;
    v55 = v272;
    v56 = v276;
    v57 = v278;
    v237 = v272[7];
    v237(v276, 1, 1, v278);
  }

  else
  {
    swift_getKeyPath();
    v56 = v276;
    sub_10076F49C();

    (*(v26 + 8))(v33, v25);
    v53 = v26;
    v54 = v25;
    v55 = v272;
    v57 = v278;
    v237 = v272[7];
    v237(v56, 0, 1, v278);
    sub_10000CFBC(v30, &qword_1009499A0);
  }

  swift_getKeyPath();
  v58 = v270;
  sub_10076338C();

  swift_getKeyPath();
  v59 = v269;
  sub_10076F49C();

  v61 = *(v53 + 8);
  v60 = v53 + 8;
  v61(v58, v54);
  v237(v59, 0, 1, v57);
  v62 = v271[12];
  v63 = v56;
  v64 = v56;
  v65 = v279;
  sub_100016E2C(v63, v279, &unk_1009568A0);
  sub_100016E2C(v59, v65 + v62, &unk_1009568A0);
  v66 = v55[6];
  v67 = v66(v65, 1, v57);
  v278 = v282 >> 62;
  if (v67 == 1)
  {
    sub_10000CFBC(v59, &unk_1009568A0);
    v68 = v279;
    sub_10000CFBC(v64, &unk_1009568A0);
    v69 = v66(v68 + v62, 1, v57);
    v70 = v282;
    if (v69 == 1)
    {
      sub_10000CFBC(v68, &unk_1009568A0);
LABEL_22:
      LODWORD(v279) = 0;
      v78 = 1;
      goto LABEL_27;
    }

    goto LABEL_10;
  }

  v60 = v239;
  sub_100016E2C(v65, v239, &unk_1009568A0);
  if (v66(v65 + v62, 1, v57) == 1)
  {
    sub_10000CFBC(v59, &unk_1009568A0);
    v68 = v279;
    sub_10000CFBC(v276, &unk_1009568A0);
    (v55[1])(v60, v57);
    v70 = v282;
LABEL_10:
    sub_10000CFBC(v68, &qword_100942C28);
    goto LABEL_11;
  }

  v75 = v233;
  (v55[4])(v233, v65 + v62, v57);
  sub_1000D0788(&qword_100942C48, &type metadata accessor for Shelf.ContentType);
  v76 = sub_10076FF1C();
  v77 = v55[1];
  v77(v75, v57);
  sub_10000CFBC(v59, &unk_1009568A0);
  sub_10000CFBC(v276, &unk_1009568A0);
  v77(v60, v57);
  sub_10000CFBC(v65, &unk_1009568A0);
  v70 = v282;
  if (v76)
  {
    goto LABEL_22;
  }

LABEL_11:
  if (!v278)
  {
    v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v71)
    {
      goto LABEL_13;
    }

LABEL_24:

    goto LABEL_25;
  }

  v71 = sub_10077158C();
  if (!v71)
  {
    goto LABEL_24;
  }

LABEL_13:
  v72 = v71 - 1;
  if (__OFSUB__(v71, 1))
  {
    __break(1u);
  }

  else if ((v70 & 0xC000000000000001) == 0)
  {
    if ((v72 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v72 < *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v73 = *(v70 + 8 * v72 + 32);

      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_89;
  }

  v73 = sub_10077149C();
LABEL_18:
  *&v287 = v281;
  if (!v73)
  {
LABEL_25:

    goto LABEL_26;
  }

  *&v284 = v73;
  sub_100760E9C();
  sub_1000D0788(&qword_100947630, &type metadata accessor for MediaPlatform);
  v74 = sub_10076FF1C();

  if (v74)
  {
    goto LABEL_22;
  }

LABEL_26:
  v78 = 0;
  LODWORD(v279) = v234 ^ 1;
LABEL_27:
  v79 = v246;
  sub_1007608EC();
  v80 = (*(v247 + 88))(v79, v248);
  LODWORD(v276) = v78;
  if (v80 != enum case for ProductMedia.DescriptionPlacement.top(_:))
  {
    v85 = v263;
    v86 = v280;
    if (v80 != enum case for ProductMedia.DescriptionPlacement.bottom(_:))
    {
      result = sub_10077166C();
      __break(1u);
      return result;
    }

    v87 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_topAccessoryView;
    v88 = *(v280 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_topAccessoryView);
    if (v88)
    {
      [v88 removeFromSuperview];
      v89 = *(v86 + v87);
    }

    else
    {
      v89 = 0;
    }

    *(v86 + v87) = 0;

    [v86 setNeedsLayout];
    v272 = type metadata accessor for PlatformSelectorView();
    swift_getKeyPath();
    v129 = v249;
    sub_10076338C();

    sub_10076C2FC();
    (*(v250 + 8))(v129, v251);
    if (v279)
    {
      if (qword_100940760 != -1)
      {
        swift_once();
      }

      [qword_10095B420 size];
    }

    else
    {
      if (v278)
      {
        v130 = sub_10077158C();
      }

      else
      {
        v130 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v130 > 1)
      {
        sub_100760E9C();
        v131 = swift_allocObject();
        *(v131 + 16) = v231;
        *(v131 + 32) = v281;

        v132 = sub_100760E5C();

        goto LABEL_64;
      }
    }

    sub_100760E9C();
    v132 = sub_100760E5C();
LABEL_64:

    if (qword_100940768 != -1)
    {
      swift_once();
    }

    v133 = sub_10000A61C(v85, qword_10095B428);
    sub_10076891C();
    sub_10000CF78(&v287, *(&v288 + 1));
    v134 = v252;
    sub_1000FF02C();
    sub_10076D40C();
    v136 = v135;
    (*(v253 + 8))(v134, v254);
    sub_10050A104(v132, v136);
    sub_10000CD74(&v287);
    if (v132 >> 62)
    {
      sub_10077158C();
    }

    v137 = v259;

    v138 = v283;
    sub_100762FEC();
    v139 = sub_100509DF4(v132, v138);

    v271 = v139;
    v140 = sub_1007688DC();
    if (qword_100940B88 != -1)
    {
      swift_once();
    }

    v141 = sub_10076D3DC();
    v142 = sub_10000A61C(v141, qword_1009A1090);
    v143 = *(v141 - 8);
    v144 = v257;
    (*(v143 + 16))(v257, v142, v141);
    (*(v143 + 56))(v144, 0, 1, v141);
    (*(v258 + 104))(v260, enum case for DirectionalTextAlignment.none(_:), v137);
    v145 = sub_1007626BC();
    v146 = objc_allocWithZone(v145);
    v147 = sub_1007626AC();
    [v147 setAttributedText:v140];
    v270 = v140;
    if (qword_100940760 != -1)
    {
      swift_once();
    }

    v275 = qword_10095B420;
    [qword_10095B420 size];
    v148 = sub_10076DDDC();
    swift_allocObject();
    v149 = sub_10076DDBC();
    (*(v262 + 16))(v264, v133, v85);
    v150 = v265;
    v151 = v256;
    v152 = v266;
    (*(v265 + 16))(v261, v256, v266);
    *(&v288 + 1) = v145;
    v289 = &protocol witness table for UILabel;
    *&v287 = v147;
    *(&v285 + 1) = v148;
    v286 = &protocol witness table for LayoutViewPlaceholder;
    *&v284 = v149;
    v153 = v147;

    v154 = v267;
    sub_10076893C();
    [v283 pageMarginInsets];
    sub_100770ACC();
    sub_1000D0788(&qword_100947740, &type metadata accessor for PlatformSelectorViewLayout);
    v116 = v236;
    sub_10076D2AC();
    sub_100770AEC();
    v156 = v155;
    v158 = v157;

    (v268[1])(v154, v116);
    (*(v150 + 8))(v151, v152);
    v122 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_bottomAccessoryView;
    v123 = v280;
    v159 = *(v280 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_bottomAccessoryView);
    if (v159)
    {
      [v159 setFrame:{0.0, 0.0, v156, v158}];
      v125 = v281;
      v126 = v282;
      v121 = &OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_topAccessoryView;
      goto LABEL_79;
    }

    v127 = [objc_allocWithZone(v272) initWithFrame:{0.0, 0.0, v156, v158}];
    v128 = *(v123 + v122);
    v126 = v282;
    v121 = &OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_topAccessoryView;
    if (!v128)
    {
      v116 = 0;
      goto LABEL_78;
    }

    goto LABEL_75;
  }

  v81 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_bottomAccessoryView;
  v82 = v280;
  v83 = *(v280 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_bottomAccessoryView);
  v60 = v263;
  if (v83)
  {
    [v83 removeFromSuperview];
    v84 = *(v82 + v81);
  }

  else
  {
    v84 = 0;
  }

  *(v82 + v81) = 0;

  [v82 setNeedsLayout];
  v57 = type metadata accessor for PlatformSelectorView();
  swift_getKeyPath();
  v90 = v249;
  sub_10076338C();

  sub_10076C2FC();
  (*(v250 + 8))(v90, v251);
  if (v279)
  {
    if (qword_100940760 == -1)
    {
LABEL_36:
      [qword_10095B420 size];
      goto LABEL_41;
    }

LABEL_89:
    swift_once();
    goto LABEL_36;
  }

  if (v278)
  {
    v91 = sub_10077158C();
  }

  else
  {
    v91 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v91 > 1)
  {
    sub_100760E9C();
    v92 = swift_allocObject();
    *(v92 + 16) = v231;
    *(v92 + 32) = v281;

    v93 = sub_100760E5C();

    goto LABEL_42;
  }

LABEL_41:
  sub_100760E9C();
  v93 = sub_100760E5C();
LABEL_42:

  if (qword_100940768 != -1)
  {
    swift_once();
  }

  v94 = sub_10000A61C(v60, qword_10095B428);
  sub_10076891C();
  sub_10000CF78(&v287, *(&v288 + 1));
  v95 = v252;
  sub_1000FF02C();
  sub_10076D40C();
  v97 = v96;
  (*(v253 + 8))(v95, v254);
  sub_10050A104(v93, v97);
  sub_10000CD74(&v287);
  if (v93 >> 62)
  {
    sub_10077158C();
  }

  v98 = v259;

  v99 = v283;
  sub_100762FEC();
  v100 = sub_100509DF4(v93, v99);

  v272 = v100;
  v101 = sub_1007688DC();
  if (qword_100940B88 != -1)
  {
    swift_once();
  }

  v270 = v57;
  v102 = sub_10076D3DC();
  v103 = sub_10000A61C(v102, qword_1009A1090);
  v104 = *(v102 - 8);
  v105 = v257;
  (*(v104 + 16))(v257, v103, v102);
  (*(v104 + 56))(v105, 0, 1, v102);
  (*(v258 + 104))(v260, enum case for DirectionalTextAlignment.none(_:), v98);
  v106 = sub_1007626BC();
  v107 = objc_allocWithZone(v106);
  v108 = sub_1007626AC();
  [v108 setAttributedText:v101];
  v271 = v101;
  if (qword_100940760 != -1)
  {
    swift_once();
  }

  v275 = qword_10095B420;
  [qword_10095B420 size];
  v109 = sub_10076DDDC();
  swift_allocObject();
  v110 = sub_10076DDBC();
  (*(v262 + 16))(v264, v94, v60);
  v111 = v265;
  v112 = v255;
  v113 = v266;
  (*(v265 + 16))(v261, v255, v266);
  *(&v288 + 1) = v106;
  v289 = &protocol witness table for UILabel;
  *&v287 = v108;
  *(&v285 + 1) = v109;
  v286 = &protocol witness table for LayoutViewPlaceholder;
  *&v284 = v110;
  v114 = v108;

  v115 = v267;
  sub_10076893C();
  [v283 pageMarginInsets];
  sub_100770ACC();
  sub_1000D0788(&qword_100947740, &type metadata accessor for PlatformSelectorViewLayout);
  v116 = v236;
  sub_10076D2AC();
  sub_100770AEC();
  v118 = v117;
  v120 = v119;

  (v268[1])(v115, v116);
  (*(v111 + 8))(v112, v113);
  v121 = &OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_topAccessoryView;
  v122 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_topAccessoryView;
  v123 = v280;
  v124 = *(v280 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_topAccessoryView);
  if (!v124)
  {
    v127 = [objc_allocWithZone(v270) initWithFrame:{0.0, 0.0, v118, v120}];
    v128 = *(v123 + v122);
    v126 = v282;
    if (!v128)
    {
      v116 = 0;
      goto LABEL_78;
    }

LABEL_75:
    [v128 removeFromSuperview];
    v116 = *(v123 + v122);
LABEL_78:
    v125 = v281;
    *(v123 + v122) = v127;
    v160 = v127;

    v161 = [v123 contentView];
    [v161 addSubview:v160];

    [v123 setNeedsLayout];
    goto LABEL_79;
  }

  [v124 setFrame:{0.0, 0.0, v118, v120}];
  v125 = v281;
  v126 = v282;
LABEL_79:
  v272 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_topAccessoryView;
  v162 = *(v123 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_topAccessoryView);
  if (!v162)
  {
    goto LABEL_123;
  }

  type metadata accessor for PlatformSelectorView();
  v163 = swift_dynamicCastClass();
  if (!v163)
  {
    goto LABEL_123;
  }

  v164 = v163;
  if (v279)
  {
    goto LABEL_93;
  }

  if (v278)
  {
    if (sub_10077158C() > 1)
    {
      goto LABEL_84;
    }

LABEL_93:

    v166 = 0;
    v165 = v126;
    goto LABEL_94;
  }

  if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 1)
  {
    goto LABEL_93;
  }

LABEL_84:
  v165 = swift_allocObject();
  *(v165 + 16) = v231;
  *(v165 + 32) = v125;

  v166 = 1;
LABEL_94:
  v270 = v162;
  v167 = sub_10050A204(v165);

  if (v166)
  {
    v168 = v238;
  }

  else
  {
    v168 = v245;
  }

  v170 = &v164[OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_text];
  *v170 = v168;
  v170[1] = v169;

  v171 = _swiftEmptyArrayStorage;
  *&v287 = _swiftEmptyArrayStorage;
  v172 = *(v167 + 2);
  v271 = v164;
  if (v172)
  {
    v173 = 0;
    v174 = v167 + 56;
    v267 = v172 - 1;
    v171 = _swiftEmptyArrayStorage;
    v268 = (v167 + 56);
    do
    {
      v269 = v171;
      v175 = &v174[32 * v173];
      v164 = v173;
      while (1)
      {
        if (v164 >= *(v167 + 2))
        {
          __break(1u);
          goto LABEL_131;
        }

        v176 = sub_10076FF6C();
        v177 = [objc_opt_self() _systemImageNamed:v176];

        if (v177)
        {
          break;
        }

LABEL_101:
        ++v164;
        v175 += 32;
        if (v172 == v164)
        {
          v164 = v271;
          v171 = v269;
          goto LABEL_113;
        }
      }

      if (qword_100940758 != -1)
      {
        swift_once();
      }

      v178 = [v177 imageWithTintColor:qword_1009A0618];

      if (!v178)
      {
        goto LABEL_101;
      }

      sub_10077019C();
      if (*((v287 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v287 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      v173 = v164 + 1;
      sub_10077025C();
      v171 = v287;
      v179 = v267 == v164;
      v164 = v271;
      v174 = v268;
    }

    while (!v179);
  }

LABEL_113:
  v180 = OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_images;
  *&v164[OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_images] = v171;

  v181 = *&v164[OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_accessoryImageView];
  if (v279)
  {
    if (qword_100940760 != -1)
    {
      swift_once();
    }

    v182 = v275;
  }

  else
  {
    v182 = 0;
  }

  [v181 setImage:v182];

  v183 = *&v164[v180];
  if (v183)
  {
    if (v183 >> 62)
    {
LABEL_131:
      v184 = sub_10077158C();
    }

    else
    {
      v184 = *((v183 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v184 = 0;
  }

  *&v164[OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_numberOfBadges] = v184;
  v185 = v283;
  *&v164[OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_pageTraits] = v283;
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  sub_100508D8C();
  [v185 pageMarginInsets];
  [v164 setLayoutMargins:?];
  [v164 setNeedsLayout];
  v287 = 0u;
  v288 = 0u;
  v284 = 0u;
  v285 = 0u;
  v186 = v240;
  sub_10076F91C();
  sub_10000CFBC(&v284, &unk_1009434C0);
  sub_10000CFBC(&v287, &unk_1009434C0);
  *&v287 = v167;
  *(&v287 + 1) = sub_100509AE4;
  *&v288 = 0;

  sub_10000A5D4(&qword_100947748);
  sub_1000D06A0();
  v187 = sub_10076FEFC();
  v189 = v188;

  *(&v288 + 1) = &type metadata for String;
  *&v287 = v187;
  *(&v287 + 1) = v189;
  v190 = v241;
  sub_10076F98C();
  LOBYTE(v116) = v243 + 8;
  v121 = *(v243 + 8);
  v191 = v244;
  (v121)(v186, v244);
  sub_10000CFBC(&v287, &unk_1009434C0);
  *&v287 = v167;
  *(&v287 + 1) = sub_100509AF0;
  *&v288 = 0;
  v192 = sub_10076FEFC();
  v194 = v193;

  *(&v288 + 1) = &type metadata for String;
  *&v287 = v192;
  *(&v287 + 1) = v194;
  v195 = v242;
  sub_10076F98C();
  (v121)(v190, v191);
  sub_10000CFBC(&v287, &unk_1009434C0);
  sub_100770B9C();

  (v121)(v195, v191);
  v123 = v280;
  v125 = v281;
  v126 = v282;
LABEL_123:
  v196 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_bottomAccessoryView;
  v197 = *(v123 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_bottomAccessoryView);
  if (!v197 || (type metadata accessor for PlatformSelectorView(), (v198 = swift_dynamicCastClass()) == 0))
  {

    goto LABEL_166;
  }

  v121 = v198;
  if (v279)
  {
    goto LABEL_133;
  }

  if (v278)
  {
    if (sub_10077158C() > 1)
    {
      goto LABEL_128;
    }

LABEL_133:

    v200 = 0;
    v199 = v126;
    goto LABEL_134;
  }

  if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 1)
  {
    goto LABEL_133;
  }

LABEL_128:
  v199 = swift_allocObject();
  *(v199 + 16) = v231;
  *(v199 + 32) = v125;

  v200 = 1;
LABEL_134:
  v270 = v196;
  v269 = v197;
  v126 = sub_10050A204(v199);

  if (v200)
  {
    v201 = v238;
  }

  else
  {
    v201 = v245;
  }

  if (v200)
  {
    v202 = v273;
  }

  else
  {
    v202 = v277;
  }

  v203 = (v121 + OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_text);
  *v203 = v201;
  v203[1] = v202;

  v204 = _swiftEmptyArrayStorage;
  *&v287 = _swiftEmptyArrayStorage;
  v205 = *(v126 + 16);
  v271 = v121;
  if (v205)
  {
    v196 = 0;
    v206 = (v126 + 56);
    v268 = (v205 - 1);
    v204 = _swiftEmptyArrayStorage;
    v116 = &_s10Foundation8IndexSetVs0C7AlgebraAAMc_ptr;
    v123 = &selRef__setPocketInsets_;
    v273 = (v126 + 56);
    do
    {
      v277 = v204;
      v125 = &v206[32 * v196];
      v121 = v196;
      while (1)
      {
        if (v121 >= *(v126 + 16))
        {
          __break(1u);
          goto LABEL_175;
        }

        v196 = *v125;

        v207 = sub_10076FF6C();
        v208 = [objc_opt_self() _systemImageNamed:v207];

        if (v208)
        {
          break;
        }

LABEL_144:
        v121 = (v121 + 1);
        v125 += 4;
        if (v205 == v121)
        {
          v121 = v271;
          v204 = v277;
          goto LABEL_156;
        }
      }

      if (qword_100940758 != -1)
      {
        swift_once();
      }

      v209 = [v208 imageWithTintColor:qword_1009A0618];

      if (!v209)
      {
        goto LABEL_144;
      }

      sub_10077019C();
      if (*((v287 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v287 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      v196 = (v121 + 1);
      sub_10077025C();
      v204 = v287;
      v179 = v268 == v121;
      v121 = v271;
      v206 = v273;
    }

    while (!v179);
  }

LABEL_156:
  v210 = OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_images;
  *(v121 + OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_images) = v204;

  v211 = *(v121 + OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_accessoryImageView);
  if (v279)
  {
    v123 = v280;
    if (qword_100940760 != -1)
    {
      swift_once();
    }

    v212 = v275;
  }

  else
  {
    v212 = 0;
    v123 = v280;
  }

  [v211 setImage:v212];

  v213 = *(v121 + v210);
  if (v213)
  {
    if (v213 >> 62)
    {
      goto LABEL_207;
    }

    v214 = *((v213 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  else
  {
    v214 = 0;
  }

  while (1)
  {
    *(v121 + OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_numberOfBadges) = v214;
    v215 = v283;
    *(v121 + OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_pageTraits) = v283;
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
    sub_100508D8C();
    [v215 pageMarginInsets];
    [v121 setLayoutMargins:?];
    [v121 setNeedsLayout];
    v287 = 0u;
    v288 = 0u;
    v284 = 0u;
    v285 = 0u;
    v216 = v240;
    sub_10076F91C();
    sub_10000CFBC(&v284, &unk_1009434C0);
    sub_10000CFBC(&v287, &unk_1009434C0);
    *&v287 = v126;
    *(&v287 + 1) = sub_100509AE4;
    *&v288 = 0;

    sub_10000A5D4(&qword_100947748);
    sub_1000D06A0();
    v217 = sub_10076FEFC();
    v219 = v218;

    *(&v288 + 1) = &type metadata for String;
    *&v287 = v217;
    *(&v287 + 1) = v219;
    v116 = v241;
    sub_10076F98C();
    v121 = *(v243 + 8);
    v220 = v244;
    (v121)(v216, v244);
    sub_10000CFBC(&v287, &unk_1009434C0);
    *&v287 = v126;
    *(&v287 + 1) = sub_100509AF0;
    *&v288 = 0;
    v221 = sub_10076FEFC();
    v223 = v222;

    *(&v288 + 1) = &type metadata for String;
    *&v287 = v221;
    *(&v287 + 1) = v223;
    v224 = v242;
    sub_10076F98C();
    (v121)(v116, v220);
    sub_10000CFBC(&v287, &unk_1009434C0);
    sub_100770B9C();

    (v121)(v224, v220);
    v125 = v281;
    v126 = v282;
    v196 = v270;
LABEL_166:
    if (v278)
    {
      break;
    }

    v225 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v225)
    {
      goto LABEL_176;
    }

LABEL_168:
    if ((v126 & 0xC000000000000001) != 0)
    {

      v121 = sub_10077149C();
      *&v287 = v125;
      if (!v121)
      {
        goto LABEL_177;
      }
    }

    else
    {
      if (!*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        v228 = sub_10077149C();
LABEL_185:

        *&v287 = v125;
        if (v228)
        {
          *&v284 = v228;
          sub_100760E9C();
          sub_1000D0788(&qword_100947630, &type metadata accessor for MediaPlatform);
          v226 = sub_10076FF1C();

          if ((v116 & 1) == 0)
          {
            v229 = 0;
            goto LABEL_193;
          }
        }

        else
        {

          if ((v116 & 1) == 0)
          {
            goto LABEL_196;
          }

          v226 = 0;
        }

LABEL_192:
        v229 = *(v272 + v123) != 0;
LABEL_193:
        *(v123 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_displaysTopAccessoryDivider) = v229;
        sub_1005961CC();
        if ((v226 & 1) == 0)
        {
          goto LABEL_197;
        }

LABEL_194:
        v230 = *(v196 + v123) != 0;
        goto LABEL_198;
      }

      v121 = *(v126 + 32);

      *&v287 = v125;
      if (!v121)
      {
        goto LABEL_177;
      }
    }

    *&v284 = v121;
    sub_100760E9C();
    sub_1000D0788(&qword_100947630, &type metadata accessor for MediaPlatform);

    LOBYTE(v116) = sub_10076FF1C();

    if ((v276 & 1) == 0)
    {

      if (v116)
      {
        v226 = 1;
        goto LABEL_192;
      }

LABEL_189:
      *(v123 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_displaysTopAccessoryDivider) = 0;
      sub_1005961CC();
      goto LABEL_194;
    }

LABEL_180:
    v227 = v225 - 1;
    if (__OFSUB__(v225, 1))
    {
      goto LABEL_203;
    }

    if ((v126 & 0xC000000000000001) != 0)
    {
      goto LABEL_204;
    }

    if ((v227 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v227 < *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v228 = *(v126 + 8 * v227 + 32);

      goto LABEL_185;
    }

    __break(1u);
LABEL_207:
    v214 = sub_10077158C();
  }

LABEL_175:
  v225 = sub_10077158C();
  if (v225)
  {
    goto LABEL_168;
  }

LABEL_176:

LABEL_177:
  if (!v276)
  {

    goto LABEL_189;
  }

  if (v225)
  {
    LOBYTE(v116) = 0;
    goto LABEL_180;
  }

LABEL_196:
  *(v123 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_displaysTopAccessoryDivider) = 0;
  sub_1005961CC();
LABEL_197:
  v230 = 0;
LABEL_198:
  *(v123 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_displaysBottomAccessoryDivider) = v230;
  sub_1005961E0();
  [v123 setNeedsLayout];

  swift_unknownObjectRelease();
}

uint64_t sub_1000D0558@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &unk_1009428D0);
}

uint64_t sub_1000D05C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

unint64_t sub_1000D06A0()
{
  result = qword_100947750;
  if (!qword_100947750)
  {
    sub_10000CE78(&qword_100947748);
    sub_1000D0724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947750);
  }

  return result;
}

unint64_t sub_1000D0724()
{
  result = qword_100947758;
  if (!qword_100947758)
  {
    sub_10000CE78(&qword_100947760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947758);
  }

  return result;
}

uint64_t sub_1000D0788(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000D07D4()
{
  if ([v0 isViewLoaded])
  {
    v1 = [v0 view];
    if (!v1)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {

      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
LABEL_8:
        [v5 safeAreaInsets];

        return;
      }

      goto LABEL_11;
    }
  }

  v6 = [v0 parentViewController];
  if (v6)
  {
    v7 = v6;
    v5 = [v6 viewIfLoaded];

    if (v5)
    {
      goto LABEL_8;
    }
  }
}

char *sub_1000D0918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  *(v3 + qword_100947770) = 0;
  v7 = v3 + qword_10099CDD0;
  *(v3 + qword_10099CDD0 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1007609FC();
  if (!v8)
  {

    sub_10000CC8C(v7);
    swift_deallocPartialClassInstance();
    return 0;
  }

  sub_10076A14C();
  sub_10076F64C();
  sub_10076FC1C();
  *(v3 + qword_100947778) = v15;
  *(v3 + qword_10099CDC8) = a2;

  v9 = sub_100487810(a1, a3);
  v10 = *&v9[qword_10099E390];
  v11 = v9;
  v12 = v10;

  sub_10076668C();

  result = [v11 collectionView];
  if (result)
  {
    v14 = result;
    [result setKeyboardDismissMode:1];

    return v11;
  }

  __break(1u);
  return result;
}

id sub_1000D0B2C(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_10076F9AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.receiver = a1;
  v11.super_class = ObjectType;
  v7 = a1;
  objc_msgSendSuper2(&v11, "viewDidLoad");
  result = [v7 collectionView];
  if (result)
  {
    v9 = result;
    memset(v10, 0, sizeof(v10));
    sub_10076F96C();
    sub_10000CFBC(v10, &unk_1009434C0);
    sub_100770B9C();

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000D0D00(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_10076A13C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v14, v12);
  (*(v9 + 104))(v11, *a4, v8);
  sub_10076A0FC();
  (*(v9 + 8))(v11, v8);
}

void sub_1000D0E48(void *a1, uint64_t a2, uint64_t a3, const char **a4, unsigned int *a5)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10076A13C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = a1;
  v16.super_class = ObjectType;
  v14 = *a4;
  v15 = a1;
  objc_msgSendSuper2(&v16, v14, a3);
  (*(v11 + 104))(v13, *a5, v10);
  sub_10076A0FC();
  (*(v11 + 8))(v13, v10);
}

void sub_1000D0F84(void *a1, double a2, double a3)
{
  v14.receiver = v3;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = [v3 collectionView];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 collectionViewLayout];

    [v9 invalidateLayout];
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  v13[4] = sub_1000D3E34;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1006F5994;
  v13[3] = &unk_100888158;
  v11 = _Block_copy(v13);
  v12 = v3;

  [a1 animateAlongsideTransition:v11 completion:0];
  _Block_release(v11);
}

uint64_t sub_1000D10E8()
{
  v0 = objc_opt_self();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1000D3E8C;
  *(v2 + 24) = v1;
  v5[4] = sub_1000349FC;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1001C5148;
  v5[3] = &unk_1008881D0;
  v3 = _Block_copy(v5);

  [v0 performWithoutAnimation:v3];
  _Block_release(v3);
  LOBYTE(v0) = swift_isEscapingClosureAtFileLocation();

  if (v0)
  {
    __break(1u);
  }

  return result;
}

void sub_1000D1250()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong collectionView];

    [v2 reloadData];
  }
}

void sub_1000D12CC(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1000D0F84(a5, a2, a3);
  swift_unknownObjectRelease();
}

uint64_t sub_1000D134C()
{
  ObjectType = swift_getObjectType();
  v0 = sub_10000A5D4(&qword_100947D68);
  v16 = *(v0 - 8);
  v17 = v0;
  __chkstk_darwin(v0);
  v15 = &ObjectType - v1;
  v2 = sub_10000A5D4(&qword_100947D70);
  v13 = *(v2 - 8);
  v14 = v2;
  __chkstk_darwin(v2);
  v12 = &ObjectType - v3;
  v4 = sub_10000A5D4(&qword_100947D78);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &ObjectType - v6;
  sub_1006E05EC();
  sub_10076A58C();
  sub_10000A5D4(&qword_100947D80);
  sub_100071820(&qword_100947D88, &qword_100947D80);
  sub_10076F45C();
  sub_10076F46C();

  sub_10000CD74(v18);
  (*(v5 + 8))(v7, v4);
  sub_10076A5AC();
  sub_10000A5D4(&qword_100947D90);
  sub_100071820(&qword_100947D98, &qword_100947D90);
  sub_10076F45C();
  v8 = v12;
  sub_10076F46C();

  sub_10000CD74(v18);
  (*(v13 + 8))(v8, v14);
  sub_10076A59C();
  sub_10000A5D4(&qword_100947DA0);
  sub_100071820(&qword_100947DA8, &qword_100947DA0);
  sub_10076F45C();
  v9 = v15;
  sub_10076F46C();

  sub_10000CD74(v18);
  return (*(v16 + 8))(v9, v17);
}

uint64_t sub_1000D1784(uint64_t a1, uint64_t a2)
{
  v3 = a2 + qword_10099CDD0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_1000D1814(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1000D3E2C;
}

uint64_t sub_1000D1878(uint64_t a1, uint64_t a2)
{
  v3 = a2 + qword_10099CDD0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_1000D1908(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000D3DEC;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1000B8F0C;
}

id sub_1000D1998(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076E71C();
  v71 = *(v4 - 8);
  __chkstk_darwin(v4);
  v69 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v66 - v7;
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v70 = v66 - v11;
  v12 = [v1 collectionView];
  if (v12)
  {
    v13 = v12;
    [v12 setHidden:1];
  }

  sub_100769CBC();
  v15 = v14;
  sub_100769CDC();
  v16 = sub_100769CCC();
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];
  v72 = v15;
  v73 = v17;
  v68 = a1;
  if (v16)
  {
    v67 = v4;
    v18 = sub_10076B8EC();
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0;
    }

    v66[1] = v20;
    v21 = sub_10076B8FC();
    if (v21)
    {
      v22 = v21;
      if (sub_10076BE0C())
      {
        sub_10076044C();
      }

      else if (sub_10076BDFC())
      {
        sub_1005A6008(v22, 0);
      }
    }

    sub_100016F40(0, &qword_1009641D0);
    v23 = swift_allocObject();
    *(v23 + 16) = v73;
    *(v23 + 24) = v16;

    v16 = sub_100770F1C();
    v4 = v67;
  }

  sub_10076E70C();

  sub_10076E6EC();
  sub_10076E6BC();
  if (v16)
  {
    v24 = v16;
    v25 = [v24 title];
    v26 = sub_10076FF9C();
    v28 = v27;

    v29 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v29 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      v30 = [v24 title];
      sub_10076FF9C();

      v31 = sub_10076E6FC();
      sub_1007710EC();
      v31(v74, 0);
    }

    v32 = [v24 image];
    if (v32)
    {
      v33 = v32;
      v34 = sub_10076E6FC();
      sub_1007710BC();
      v34(v74, 0);
      v35 = sub_10076E6FC();
      sub_100770FBC();
      v35(v74, 0);
      v36 = sub_10076E6FC();
      sub_100770FFC();
      v36(v74, 0);
      v37 = [objc_opt_self() configurationWithScale:1];
      v38 = sub_10076E6FC();
      sub_100770F4C();
      v38(v74, 0);
    }

    v39 = v24;
    v40 = sub_10076E6DC();
    sub_10076E6CC();
    v40(v74, 0);
  }

  else
  {
  }

  v42 = v70;
  v41 = v71;
  (*(v71 + 32))(v70, v8, v4);
  v43 = sub_100769CAC();
  if (v43)
  {
    v44 = v43;
    v45 = v69;
    (*(v41 + 16))(v69, v42, v4);
    v46 = objc_allocWithZone(type metadata accessor for ContextualContentUnavailableView());
    v47 = v73;

    v48 = sub_10033ED54(v45, v44, v47);
  }

  else
  {
    sub_100016F40(0, &qword_100947DB0);
    (*(v41 + 16))(v69, v42, v4);
    v48 = sub_10077094C();
  }

  v49 = objc_allocWithZone(sub_10076617C());
  v50 = v48;
  v51 = sub_10076616C();
  v52 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
  v53 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
  sub_10076857C();

  v54 = *&v2[v52];
  *&v2[v52] = v51;
  v55 = v51;

  result = [v2 view];
  if (result)
  {
    v57 = result;
    [result bounds];
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;

    v74[0] = v59;
    v74[1] = v61;
    v74[2] = v63;
    v74[3] = v65;
    v75 = 0;
    sub_10076856C();

    return (*(v41 + 8))(v42, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id (*sub_1000D2034(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1000D3D80;
}

void sub_1000D20C0(void *a1)
{
  v1 = a1;
  sub_1000D2098();
}

uint64_t sub_1000D2130(unsigned int *a1, void (*a2)(void), unsigned int *a3)
{
  v20 = a1;
  v6 = v3;
  v7 = sub_10076A13C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10075F2AC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_10000CF08(v6 + v15, v22);
  if (v23)
  {
    sub_10000A570(v22, v21);
    sub_10000CFBC(v22, &unk_10094E1F0);
    v18 = a2;
    v19 = v7;
    sub_10000CF78(v21, v21[3]);
    (*(v12 + 104))(v14, *v20, v11);
    a2 = v18;
    v7 = v19;
    sub_10075F2BC();
    (*(v12 + 8))(v14, v11);
    v16 = sub_10000CD74(v21);
  }

  else
  {
    v16 = sub_10000CFBC(v22, &unk_10094E1F0);
  }

  a2(v16);
  (*(v8 + 104))(v10, *a3, v7);
  sub_10076A0FC();
  return (*(v8 + 8))(v10, v7);
}

void sub_1000D23C4(void *a1)
{
  v1 = a1;
  sub_1000D2108();
}

uint64_t sub_1000D240C@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_1000D3D00(&qword_100947D60, type metadata accessor for SearchResultsDiffablePageViewController);
  v2 = sub_10076A6BC();
  v18[3] = swift_getObjectType();
  v18[0] = v2;
  v3 = sub_10076A6AC();
  v19[3] = swift_getObjectType();
  v19[0] = v3;
  sub_10000CD08(v18, v17);
  sub_10000CD64(v17, v16);
  sub_10000A5D4(&qword_100942460);
  if (swift_dynamicCast() && *&v15[0])
  {
    v14 = v15[0];
    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_10049CD38(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_10049CD38((v5 > 1), v6 + 1, 1, v4);
    }

    v4[2] = v6 + 1;
    *&v4[2 * v6 + 4] = v14;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_10000CD08(v19, v17);
  sub_10000CD64(v17, v16);
  sub_10000A5D4(&qword_100942460);
  if (swift_dynamicCast() && *&v15[0])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_10049CD38(0, v4[2] + 1, 1, v4);
    }

    v8 = v4[2];
    v7 = v4[3];
    v9 = v15[0];
    if (v8 >= v7 >> 1)
    {
      v13 = sub_10049CD38((v7 > 1), v8 + 1, 1, v4);
      v9 = v15[0];
      v4 = v13;
    }

    v4[2] = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  sub_10076A6DC();
  v10 = type metadata accessor for SearchResultsPageLayoutSectionProvider();
  swift_allocObject();
  sub_10000A570(v17, v16);
  sub_10000A570(v16, v15);

  v11 = sub_1007697CC();
  sub_10000CD74(v16);
  result = sub_10000CD74(v17);
  a1[3] = v10;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v11;
  return result;
}

id sub_1000D2720()
{
  v1 = v0;
  swift_getObjectType();
  sub_10000A5D4(&qword_100942480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100788B20;
  sub_10000A5D4(&qword_100947D48);
  swift_allocObject();
  swift_retain_n();

  v3 = sub_10076A80C();
  v4 = sub_100071820(&qword_100947D50, &qword_100947D48);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  type metadata accessor for SearchResultsCollectionElementsObserver();
  v5 = swift_allocObject();
  v6 = sub_1000D3D00(&qword_100947D58, type metadata accessor for SearchResultsCollectionElementsObserver);
  *(v2 + 48) = v5;
  *(v2 + 56) = v6;
  type metadata accessor for BackgroundConfigurationCollectionElementsObserver();
  v7 = swift_allocObject();
  *(v7 + 16) = 2;
  v8 = sub_1000D3D00(&qword_100942498, type metadata accessor for BackgroundConfigurationCollectionElementsObserver);
  *(v2 + 64) = v7;
  *(v2 + 72) = v8;
  sub_1000D3D00(&qword_100947D60, type metadata accessor for SearchResultsDiffablePageViewController);
  sub_10076A6DC();
  sub_10076848C();

  result = [v1 collectionView];
  if (result)
  {
    sub_10076AF7C();
    swift_allocObject();
    *(v2 + 80) = sub_10076AF6C();
    *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
    sub_10076A43C();
    swift_allocObject();
    v10 = sub_10076A42C();
    sub_1006DDC90();
    if (swift_dynamicCastClass())
    {
      sub_10076A40C();
      sub_10076A41C();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1000D2A4C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SearchResultsPageShelfLayoutSpacingProvider;
  result = sub_1000D3CAC();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000D2A80()
{
  sub_10000A5D4(&qword_100947D18);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100784500;
  v2 = [v0 collectionView];
  type metadata accessor for SearchResultItemSupplementaryProvider();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  *(v3 + 24) = &off_100887FE8;
  swift_unknownObjectWeakAssign();
  v4 = sub_1000D3D00(&qword_100947D20, type metadata accessor for SearchResultItemSupplementaryProvider);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  sub_10000A5D4(&qword_100947D28);
  sub_100071820(&qword_100947D30, &qword_100947D28);
  sub_10076A6DC();
  type metadata accessor for GenericPageItemSupplementaryProvider();
  v5 = swift_allocObject();
  sub_10000A570(v9, v5 + 16);
  type metadata accessor for GenericPageSeparatorItemSupplementaryProvider();
  v6 = swift_allocObject();
  sub_100012498(v9, v6 + 16);
  *(v5 + 56) = v6;
  v7 = sub_1000D3D00(&qword_100947D38, type metadata accessor for GenericPageItemSupplementaryProvider);
  *(v1 + 48) = v5;
  *(v1 + 56) = v7;
  sub_10076A34C();
  swift_allocObject();
  return sub_10076A33C();
}

void sub_1000D2C98(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&qword_100947D10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - v6;
  sub_100735E08(a1);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  LODWORD(a1) = enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:);
  (*(v5 + 8))(v7, v4);
  if (v8 == a1)
  {
    *(v2 + qword_100947770) = sub_10076A5DC() & 1;
    sub_100767D5C();
    sub_10076F64C();
    sub_10076FC1C();
    v9 = v10[1];
    sub_100767D0C();
  }
}

void sub_1000D2E38(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10076FF6C();
  isa = sub_10075E02C().super.isa;
  v21.receiver = v5;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "collectionView:willDisplaySupplementaryView:forElementKind:atIndexPath:", a1, a2, v11, isa);

  type metadata accessor for SearchTransparencyView();
  if (sub_1007708EC() == a3 && v13 == a4)
  {
  }

  else
  {
    v14 = sub_10077167C();

    if ((v14 & 1) == 0)
    {
      return;
    }
  }

  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;
    v17 = a2;
    if (sub_10076A5CC())
    {
      v18 = sub_10076082C();
      v19 = sub_100107BF4(v18, sub_1000368B8);

      v20 = sub_10076081C();
      sub_10050C274(v20, 0, v19);

      [v16 setNeedsLayout];
    }

    else
    {
    }
  }
}

uint64_t sub_1000D3014(void *a1, uint64_t a2, void *a3, void *a4)
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
  sub_1000D2E38(v14, v15, v11, v13);

  return (*(v8 + 8))(v10, v7);
}

id sub_1000D3158@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10076C38C();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 collectionView];
  if (result)
  {
    v9 = result;
    sub_1000D32C8(result);

    sub_10076C21C();
    sub_10076A5EC();
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      sub_10075E08C();
      v11 = 0;
    }

    (*(v4 + 8))(v7, v3);
    v12 = sub_10075E11C();
    return (*(*(v12 - 8) + 56))(a1, v11, 1, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000D32C8(void *a1)
{
  v2 = sub_10076207C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076C36C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = v18 - v12;
  (*(v7 + 104))(v18 - v12, enum case for PageGrid.Direction.vertical(_:), v6, v11);
  [a1 bounds];
  v18[0] = v14;
  v18[1] = v15;
  sub_1000D07D4();
  v16 = [a1 traitCollection];
  sub_10076203C();
  (*(v7 + 16))(v9, v13, v6);
  if (qword_100940540 != -1)
  {
    swift_once();
  }

  sub_10076C33C();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v13, v6);
}

double sub_1000D35A8(void *a1)
{
  v2 = sub_10076C38C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076A5CC();
  v7 = 0.0;
  if (v6)
  {
    v8 = v6;
    sub_1000D32C8(a1);
    sub_10076C8BC();
    sub_10076C2FC();
    sub_1000D3900(v9, v8, a1);
    v11 = v10;

    v12 = *(v3 + 8);
    v12(v5, v2);
    if (v11 != 0.0)
    {
      sub_1000D32C8(a1);
      sub_10076C23C();
      v14 = v13;
      v12(v5, v2);
      return v11 + v14;
    }
  }

  return v7;
}

uint64_t sub_1000D3714()
{

  sub_10000CC8C(v0 + qword_10099CDD0);
}

uint64_t sub_1000D3764(uint64_t a1)
{

  sub_10000CC8C(a1 + qword_10099CDD0);
}

uint64_t type metadata accessor for SearchResultsDiffablePageViewController()
{
  result = qword_1009477A8;
  if (!qword_1009477A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D38A4@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + qword_10099E360);
  a1[3] = sub_10076A60C();
  a1[4] = &protocol witness table for SearchResultsDiffablePagePresenter;
  *a1 = v3;
}

double sub_1000D3900(double a1, uint64_t a2, void *a3)
{
  v5 = sub_10076997C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076080C();
  sub_100016F40(0, &qword_100942F00);
  if (qword_100940EB0 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D3DC();
  sub_10000A61C(v9, qword_1009A1A08);
  v10 = [a3 traitCollection];
  sub_100770B3C();

  v11 = sub_10076C04C();
  v16 = v11;
  v17 = sub_1000D3D00(&qword_100943230, &type metadata accessor for Feature);
  v12 = sub_10000DB7C(v15);
  (*(*(v11 - 8) + 104))(v12, enum case for Feature.measurement_with_labelplaceholder(_:), v11);
  sub_10076C90C();
  sub_10000CD74(v15);
  sub_10076996C();
  sub_10076994C();
  (*(v6 + 8))(v8, v5);
  sub_10000CF78(v15, v16);
  sub_10076D2AC();
  if (qword_1009406D8 != -1)
  {
    swift_once();
  }

  sub_10000CF78(qword_1009A0380, qword_1009A0398);
  sub_10076D42C();
  if (qword_1009406E0 != -1)
  {
    swift_once();
  }

  sub_10000CF78(qword_1009A03A8, qword_1009A03C0);
  sub_10076D3FC();
  sub_10000CD74(v15);
  return a1;
}

unint64_t sub_1000D3CAC()
{
  result = qword_100947D40;
  if (!qword_100947D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947D40);
  }

  return result;
}

uint64_t sub_1000D3D00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000D3D48()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000D3DA4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000D3DF4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000D3E3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000D3E54()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000D3EEC(uint64_t a1, SEL *a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  result = [v7 *a2];
  *a4 = v7;
  return result;
}

uint64_t sub_1000D3F48(uint64_t a1)
{
  v3 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_pendingAction) = a1;

  if (a1)
  {
    v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_objectGraph);
    v8 = sub_10000A5D4(&unk_1009428E0);
    sub_10076F5AC();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {
      sub_10000CFBC(v5, &unk_100943200);
    }

    else
    {

      sub_100263BF0(v10, 1, v7, v5);

      (*(v9 + 8))(v5, v8);
    }

    sub_1000D3F48(0);
  }

  return result;
}

void sub_1000D40E4(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_installOfferView;
  *&v2[v5] = [objc_allocWithZone(type metadata accessor for InstallPageInstallingOfferView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_preInstallFreeOfferView;
  *&v2[v6] = [objc_allocWithZone(type metadata accessor for InstallPagePreInstallFreeOfferView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_preInstallPaidOfferView;
  *&v2[v7] = [objc_allocWithZone(type metadata accessor for InstallPagePreInstallPaidOfferView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_inAppPurchaseIntentAction] = 0;
  v8 = &v2[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_activeView];
  *v8 = 0;
  v8[1] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_offerViewTransitionFadeDuration] = 0x3FD3333333333333;
  v9 = OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_appAdamId;
  v10 = sub_10076B96C();
  (*(*(v10 - 8) + 56))(&v2[v9], 1, 1, v10);
  v11 = &v2[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_offerMode];
  *v11 = 0;
  v11[8] = 1;
  v2[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_isInBackground] = 0;
  v2[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_didProgressWhileForegrounded] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_pendingAction] = 0;
  v12 = &v2[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_lifecycleObserver];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_overlayViewController] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_objectGraph] = a2;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_presenter] = a1;
  sub_100760C4C();
  sub_10076F64C();

  sub_10076FC1C();
  *&v2[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_artworkLoader] = v29[0];
  v30.receiver = v2;
  v30.super_class = type metadata accessor for InAppPurchaseInstallPageViewController();
  v13 = objc_msgSendSuper2(&v30, "initWithNibName:bundle:", 0, 0);
  sub_1000DAAAC(&qword_100947E80, type metadata accessor for InAppPurchaseInstallPageViewController);
  v14 = v13;
  sub_10075E99C();
  v15 = [v14 view];
  if (v15)
  {
    v16 = v15;
    [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

    v17 = [v14 view];
    if (v17)
    {
      sub_100016F40(0, &qword_100942F10);
      v18 = sub_100770D2C();
      [v17 setBackgroundColor:v18];

      v19 = objc_opt_self();
      v20 = [v19 defaultCenter];
      [v20 addObserver:v14 selector:"willEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

      v21 = [v19 defaultCenter];
      [v21 addObserver:v14 selector:"didEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];

      v22 = [v19 defaultCenter];
      v23 = v14;
      v24 = sub_10076A3DC();
      [v22 addObserver:v23 selector:"askToBuyRequestNotificationReceived:" name:v24 object:0];

      v25 = [v19 defaultCenter];
      v26 = v23;
      v27 = sub_10076A7FC();
      [v25 addObserver:v26 selector:"didCompletePurchase:" name:v27 object:0];

      v29[3] = sub_10075E9AC();
      v29[4] = &protocol witness table for BasePresenter;

      v29[0] = a1;
      v28 = OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_lifecycleObserver;
      swift_beginAccess();
      sub_10003837C(v29, v26 + v28, &unk_10094E1F0);
      swift_endAccess();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000D46DC(char a1)
{
  if ((*(v1 + OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_offerMode + 8) & 1) == 0)
  {
    v3 = sub_10076574C();
    if (v3 == sub_10076574C())
    {
      if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_inAppPurchaseIntentAction) && (sub_10075E61C(), swift_dynamicCastClass()))
      {

        sub_10075E5BC();

        if (qword_1009412D8 != -1)
        {
          swift_once();
        }

        v4 = sub_10076FD4C();
        sub_10000A61C(v4, qword_1009A25D0);
        sub_10000A5D4(&unk_100942A60);
        sub_10076F33C();
        *(swift_allocObject() + 16) = xmmword_100784500;
        sub_10076F27C();
        v13 = &type metadata for Bool;
        v5 = a1 & 1;
        LOBYTE(v12[0]) = v5;
        sub_10076F32C();
        sub_10000CFBC(v12, &unk_1009434C0);
        sub_10076FBDC();

        v6 = swift_allocObject();
        *(v6 + 16) = v5;
        v7 = objc_allocWithZone(SKInstallSheetStatusUpdateRequest);
        v8 = sub_10076FF6C();

        v14 = sub_1000DAB04;
        v15 = v6;
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 1107296256;
        v12[2] = sub_1000DA39C;
        v13 = &unk_100888388;
        v9 = _Block_copy(v12);

        v10 = [v7 initWithAppBundleId:v8 isInstallSheetOpen:v5 completionHandler:v9];
        _Block_release(v9);

        [v10 start];
      }

      else
      {
        if (qword_1009412D8 != -1)
        {
          swift_once();
        }

        v11 = sub_10076FD4C();
        sub_10000A61C(v11, qword_1009A25D0);
        sub_10000A5D4(&unk_100942A60);
        sub_10076F33C();
        *(swift_allocObject() + 16) = xmmword_100783DD0;
        sub_10076F27C();
        sub_10076FBDC();
      }
    }
  }
}

uint64_t sub_1000D4B24(uint64_t a1, char a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1009412D8 != -1)
    {
      swift_once();
    }

    v2 = sub_10076FD4C();
    sub_10000A61C(v2, qword_1009A25D0);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100784500;
    sub_10076F27C();
    swift_getErrorValue();
    v9 = v7;
    v3 = sub_10000DB7C(v8);
    (*(*(v7 - 1) + 16))(v3);
    sub_10076F32C();
    sub_10000CFBC(v8, &unk_1009434C0);
    sub_10076FBDC();
  }

  else
  {
    if (qword_1009412D8 != -1)
    {
      swift_once();
    }

    v6 = sub_10076FD4C();
    sub_10000A61C(v6, qword_1009A25D0);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100784500;
    sub_10076F27C();
    v9 = &type metadata for Bool;
    LOBYTE(v8[0]) = a2 & 1;
    sub_10076F32C();
    sub_10000CFBC(v8, &unk_1009434C0);
    sub_10076FBDC();
  }
}

id sub_1000D4E64()
{
  v1 = v0;
  v2 = sub_10075F2AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InAppPurchaseInstallPageViewController();
  v15.receiver = v0;
  v15.super_class = v6;
  objc_msgSendSuper2(&v15, "viewDidLoad");
  v7 = OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016E2C(v1 + v7, v13, &unk_10094E1F0);
  if (v14)
  {
    sub_10000A570(v13, v12);
    sub_10000CFBC(v13, &unk_10094E1F0);
    sub_10000CF78(v12, v12[3]);
    (*(v3 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v2);
    sub_10075F2BC();
    (*(v3 + 8))(v5, v2);
    sub_10000CD74(v12);
  }

  else
  {
    sub_10000CFBC(v13, &unk_10094E1F0);
  }

  v8 = [v1 navigationItem];
  [v8 setLargeTitleDisplayMode:2];

  result = [v1 view];
  if (result)
  {
    v10 = result;
    [result setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

    return sub_100760C9C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000D50F0(char a1)
{
  v3 = sub_10075F2AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InAppPurchaseInstallPageViewController();
  v14.receiver = v1;
  v14.super_class = v7;
  objc_msgSendSuper2(&v14, "viewWillAppear:", a1 & 1);
  v8 = OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016E2C(v1 + v8, v12, &unk_10094E1F0);
  if (!v13)
  {
    return sub_10000CFBC(v12, &unk_10094E1F0);
  }

  sub_10000A570(v12, v11);
  sub_10000CFBC(v12, &unk_10094E1F0);
  sub_10000CF78(v11, v11[3]);
  (*(v4 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v3);
  sub_10075F2BC();
  (*(v4 + 8))(v6, v3);
  return sub_10000CD74(v11);
}

void sub_1000D5370(char a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-1] - v5;
  v7 = sub_10075F2AC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for InAppPurchaseInstallPageViewController();
  v21.receiver = v2;
  v21.super_class = v11;
  objc_msgSendSuper2(&v21, "viewDidAppear:", a1 & 1);
  v12 = OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016E2C(&v2[v12], v19, &unk_10094E1F0);
  if (v20)
  {
    sub_10000A570(v19, v18);
    sub_10000CFBC(v19, &unk_10094E1F0);
    sub_10000CF78(v18, v18[3]);
    (*(v8 + 104))(v10, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v7);
    sub_10075F2BC();
    (*(v8 + 8))(v10, v7);
    sub_10000CD74(v18);
  }

  else
  {
    sub_10000CFBC(v19, &unk_10094E1F0);
  }

  sub_1000D46DC(1);
  if (*&v2[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_pendingAction])
  {
    v13 = *&v2[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_objectGraph];
    v14 = sub_10000A5D4(&unk_1009428E0);

    sub_10076F5AC();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v6, 1, v14) == 1)
    {
      sub_10000CFBC(v6, &unk_100943200);
    }

    else
    {

      sub_100263BF0(v16, 1, v13, v6);

      (*(v15 + 8))(v6, v14);
    }

    sub_1000D3F48(0);
  }
}

uint64_t sub_1000D5708(SEL *a1, unsigned int *a2)
{
  v5 = sub_10075F2AC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for InAppPurchaseInstallPageViewController();
  v16.receiver = v2;
  v16.super_class = v9;
  objc_msgSendSuper2(&v16, *a1);
  v10 = OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016E2C(v2 + v10, v14, &unk_10094E1F0);
  if (!v15)
  {
    return sub_10000CFBC(v14, &unk_10094E1F0);
  }

  sub_10000A570(v14, v13);
  sub_10000CFBC(v14, &unk_10094E1F0);
  sub_10000CF78(v13, v13[3]);
  (*(v6 + 104))(v8, *a2, v5);
  sub_10075F2BC();
  (*(v6 + 8))(v8, v5);
  return sub_10000CD74(v13);
}

uint64_t sub_1000D591C()
{
  v1 = sub_10075F2AC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InAppPurchaseInstallPageViewController();
  v12.receiver = v0;
  v12.super_class = v5;
  objc_msgSendSuper2(&v12, "as_viewWillBecomePartiallyVisible");
  v6 = OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016E2C(v0 + v6, v10, &unk_10094E1F0);
  if (!v11)
  {
    return sub_10000CFBC(v10, &unk_10094E1F0);
  }

  sub_10000A570(v10, v9);
  sub_10000CFBC(v10, &unk_10094E1F0);
  sub_10000CF78(v9, v9[3]);
  sub_10076FA9C();
  (*(v2 + 104))(v4, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v1);
  sub_10075F2BC();
  (*(v2 + 8))(v4, v1);
  return sub_10000CD74(v9);
}

uint64_t sub_1000D5B30(char a1)
{
  v3 = sub_10075F2AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InAppPurchaseInstallPageViewController();
  v14.receiver = v1;
  v14.super_class = v7;
  objc_msgSendSuper2(&v14, "viewWillDisappear:", a1 & 1);
  v8 = OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016E2C(v1 + v8, v12, &unk_10094E1F0);
  if (!v13)
  {
    return sub_10000CFBC(v12, &unk_10094E1F0);
  }

  sub_10000A570(v12, v11);
  sub_10000CFBC(v12, &unk_10094E1F0);
  sub_10000CF78(v11, v11[3]);
  sub_10076FA9C();
  (*(v4 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v3);
  sub_10075F2BC();
  (*(v4 + 8))(v6, v3);
  return sub_10000CD74(v11);
}

void sub_1000D5DC8(char a1)
{
  v3 = sub_10075F2AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InAppPurchaseInstallPageViewController();
  v13.receiver = v1;
  v13.super_class = v7;
  objc_msgSendSuper2(&v13, "viewDidDisappear:", a1 & 1);
  v8 = OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016E2C(v1 + v8, v11, &unk_10094E1F0);
  if (v12)
  {
    sub_10000A570(v11, v10);
    sub_10000CFBC(v11, &unk_10094E1F0);
    sub_10000CF78(v10, v10[3]);
    (*(v4 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v3);
    sub_10075F2BC();
    (*(v4 + 8))(v6, v3);
    sub_10000CD74(v10);
  }

  else
  {
    sub_10000CFBC(v11, &unk_10094E1F0);
  }

  sub_1000D46DC(0);
}

void sub_1000D6114()
{
  v1 = v0;
  v2 = sub_10076DE4C();
  __chkstk_darwin(v2 - 8);
  sub_10076DE3C();
  v3 = objc_allocWithZone(sub_10076DE6C());
  v4 = sub_10076DE5C();
  v5 = OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_overlayViewController;
  v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_overlayViewController];
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

void sub_1000D626C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_overlayViewController];
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

void sub_1000D6350()
{
  v1 = v0;
  sub_10076DF3C();
  sub_1000DAAAC(&qword_100947E90, &type metadata accessor for InAppPurchaseInstallPagePresenter);
  swift_errorRetain();

  v2 = sub_10076DEFC();
  v3 = OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_overlayViewController];
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

void sub_1000D64C8(unint64_t a1, uint64_t a2, uint64_t a3, NSString a4)
{
  v5 = v4;
  v9 = sub_10000A5D4(&qword_100942A80);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v33 - v11;
  if (a4)
  {
    a4 = sub_10076FF6C();
  }

  [v5 setTitle:{a4, v10}];

  v13 = &v5[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_activeView];
  v14 = *&v5[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_activeView];
  swift_unknownObjectRetain();
  sub_1000D87C0(a1);
  if (sub_10075E7BC())
  {
    sub_10076BB7C();

    v15 = sub_10076B96C();
    (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  }

  else
  {
    v16 = sub_10076B96C();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  }

  v17 = OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_appAdamId;
  swift_beginAccess();
  sub_10003837C(v12, &v5[v17], &qword_100942A80);
  swift_endAccess();
  if (sub_10075E7CC())
  {
    v18 = sub_10076BA2C();

    *&v5[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_inAppPurchaseIntentAction] = v18;
  }

  if (*v13)
  {
    v19 = *(v13 + 1);
    ObjectType = swift_getObjectType();
    v33 = v13;
    v21 = ObjectType;
    v22 = *&v5[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_objectGraph];
    v23 = a1;
    v24 = *(v19 + 8);
    swift_unknownObjectRetain();
    v25 = v21;
    v13 = v33;
    v24(a2, v22, v25, v19);
    a1 = v23;
    swift_unknownObjectRelease();
  }

  if (v14)
  {
    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    if (v26)
    {
      swift_unknownObjectRetain();
    }

    if (*v13)
    {
      goto LABEL_14;
    }

LABEL_17:
    v27 = 0;
    goto LABEL_18;
  }

  v26 = 0;
  if (!*v13)
  {
    goto LABEL_17;
  }

LABEL_14:
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    swift_unknownObjectRetain();
  }

LABEL_18:
  sub_1000D89F8(v26, v27);

  v28 = &v5[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_offerMode];
  if (v5[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_offerMode + 8] == 1)
  {
    sub_1000D46DC(0);
    *v28 = a1;
    v28[8] = 0;
LABEL_23:
    sub_1000D46DC(1);
    goto LABEL_24;
  }

  v29 = sub_10076574C();
  if (v29 != sub_10076574C())
  {
    sub_1000D46DC(0);
  }

  *v28 = a1;
  v28[8] = 0;
  v30 = sub_10076574C();
  if (v30 != sub_10076574C())
  {
    goto LABEL_23;
  }

LABEL_24:
  v31 = [v5 view];
  if (v31)
  {
    v32 = v31;
    [v31 setNeedsLayout];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

id sub_1000D68CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(__n128), void (*a6)(uint64_t))
{
  v86 = a6;
  v87 = a1;
  v8 = v6;
  v90 = a3;
  v91 = a4;
  v88 = a2;
  v9 = sub_100766CDC();
  __chkstk_darwin(v9 - 8);
  v85 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v11 - 8);
  v84 = &v72 - v12;
  v13 = sub_1007628DC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v72 - v18;
  v20 = sub_100769A4C();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_10076443C();
  v24 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v73 = &v72 - v27;
  __chkstk_darwin(v28);
  v75 = &v72 - v29;
  __chkstk_darwin(v30);
  v78 = &v72 - v31;
  __chkstk_darwin(v32);
  v79 = &v72 - v33;
  __chkstk_darwin(v34);
  v80 = &v72 - v35;
  v36 = sub_100763B4C();
  v82 = *(v36 - 8);
  v83 = v36;
  v37 = __chkstk_darwin(v36);
  v81 = &v72 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  a5(v37);
  sub_100769A1C();
  (*(v21 + 8))(v23, v20);
  v89 = v8;
  result = [v8 view];
  if (result)
  {
    v40 = result;
    v41 = [result traitCollection];

    v42 = *(v14 + 104);
    v42(v16, enum case for OfferEnvironment.arcadeProductPage(_:), v13);
    v43 = sub_1007628BC();
    v44 = *(v14 + 8);
    v44(v16, v13);
    v92 = v13;
    if (v43)
    {
      v45 = v19;
      if (qword_10093F550 != -1)
      {
        swift_once();
      }

      v46 = v77;
      v47 = sub_10000A61C(v77, qword_10099CA98);
      v48 = v78;
      (*(v24 + 16))(v78, v47, v46);

      v49 = v44;
      goto LABEL_16;
    }

    v42(v16, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v13);
    v50 = sub_1007628BC();
    v76 = v44;
    v44(v16, v13);
    if (v50)
    {
      v45 = v19;
      if (qword_10093F548 != -1)
      {
        swift_once();
      }

      v51 = qword_10099CA80;
      v46 = v77;
LABEL_14:
      v52 = sub_10000A61C(v46, v51);
      v48 = v78;
      (*(v24 + 16))(v78, v52, v46);

LABEL_15:
      v49 = v76;
LABEL_16:
      v53 = *(v24 + 32);
      v54 = v79;
      v53(v79, v48, v46);
      v49(v45, v92);
      v53(v80, v54, v46);
      v55 = sub_10000A5D4(&unk_100946750);
      (*(*(v55 - 8) + 56))(v84, 1, 1, v55);

      v86(v56);
      v57 = v81;
      sub_100763B3C();
      sub_1000DA834(v57, v90, v91, *&v89[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_installOfferView], &type metadata accessor for TextConfiguration, sub_1001F5C0C);
      return (*(v82 + 8))(v57, v83);
    }

    if (sub_1007628AC())
    {
      v45 = v19;
      v46 = v77;
      if (qword_10093F540 != -1)
      {
        swift_once();
      }

      v51 = qword_10099CA68;
      goto LABEL_14;
    }

    v58 = v92;
    v42(v16, enum case for OfferEnvironment.navigationBar(_:), v92);
    v45 = v19;
    v59 = sub_1007628BC();
    v76(v16, v58);
    v46 = v77;
    if (v59)
    {
      if (qword_10093F558 != -1)
      {
        swift_once();
      }

      v60 = sub_10000A61C(v46, qword_100944CE8);
      v48 = v78;
      (*(v24 + 16))(v78, v60, v46);

      goto LABEL_15;
    }

    v61 = sub_1007700AC();
    v62 = v41;
    if (sub_10077071C())
    {
      v49 = v76;
      if (v61 <= 8)
      {
LABEL_23:
        v63 = sub_10077071C();
        v48 = v78;
        if (v63)
        {
          if (qword_10093F520 != -1)
          {
            swift_once();
          }

          v64 = qword_100944C88;
        }

        else
        {
          if (qword_10093F528 != -1)
          {
            swift_once();
          }

          v64 = qword_100944CA0;
        }

        v67 = sub_10000A61C(v46, v64);
        v68 = v74;
        (*(v24 + 16))(v74, v67, v46);

        (*(v24 + 32))(v48, v68, v46);
        goto LABEL_16;
      }
    }

    else
    {
      v49 = v76;
      if (v61 < 7)
      {
        goto LABEL_23;
      }
    }

    v65 = sub_10077071C();
    v48 = v78;
    v72 = v62;
    if (v65)
    {
      if (qword_10093F520 != -1)
      {
        swift_once();
      }

      v66 = qword_100944C88;
    }

    else
    {
      if (qword_10093F528 != -1)
      {
        swift_once();
      }

      v66 = qword_100944CA0;
    }

    v69 = sub_10000A61C(v46, v66);
    v70 = v73;
    (*(v24 + 16))(v73, v69, v46);
    v71 = v75;
    (*(v24 + 32))(v75, v70, v46);
    sub_10076C13C();

    (*(v24 + 8))(v71, v46);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_1000D7308(uint64_t a1, void *a2)
{
  v33 = a1;
  v34 = a2;
  v3 = sub_100769A4C();
  __chkstk_darwin(v3 - 8);
  v31 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100945550);
  __chkstk_darwin(v5 - 8);
  v30 = v28 - v6;
  v7 = sub_10076A3AC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v29 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&qword_100945590);
  __chkstk_darwin(v10 - 8);
  v28[1] = v28 - v11;
  v12 = sub_10076443C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v28 - v17;
  v28[0] = sub_10076731C();
  v19 = *(v28[0] - 8);
  *&v20 = __chkstk_darwin(v28[0]).n128_u64[0];
  v22 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v2;
  result = [v2 view];
  if (result)
  {
    v24 = result;
    v25 = [result traitCollection];

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

    v27 = sub_10000A61C(v12, v26);
    (*(v13 + 16))(v15, v27, v12);

    (*(v13 + 32))(v18, v15, v12);
    (*(v8 + 104))(v29, enum case for OfferButtonPresenterViewAlignment.center(_:), v7);
    (*(v8 + 56))(v30, 1, 1, v7);
    sub_1000DAAAC(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment);
    sub_10076759C();
    sub_100769A0C();
    sub_10076730C();
    sub_1000DA834(v22, v33, v34, *&v32[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_installOfferView], &type metadata accessor for RedownloadConfiguration, sub_1001F5C50);
    return (*(v19 + 8))(v22, v28[0]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000D77E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v77 = a3;
  v78 = a4;
  v75 = a1;
  v76 = a2;
  v7 = sub_100766CDC();
  __chkstk_darwin(v7 - 8);
  v74 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v9 - 8);
  v73 = &v61 - v10;
  v72 = sub_1007628DC();
  v11 = *(v72 - 8);
  __chkstk_darwin(v72);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v61 - v15;
  v17 = sub_100769A4C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10076443C();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v62 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v61 = &v61 - v25;
  __chkstk_darwin(v26);
  v63 = &v61 - v27;
  __chkstk_darwin(v28);
  v65 = &v61 - v29;
  __chkstk_darwin(v30);
  v66 = &v61 - v31;
  __chkstk_darwin(v32);
  v68 = &v61 - v33;
  v34 = sub_100763B4C();
  v70 = *(v34 - 8);
  v71 = v34;
  __chkstk_darwin(v34);
  v69 = &v61 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v5[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_isInBackground] & 1) == 0)
  {
    v5[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_didProgressWhileForegrounded] = 1;
  }

  v67 = *&v5[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_installOfferView];
  sub_10022FF30(a5);
  sub_100769A3C();
  sub_100769A1C();
  (*(v18 + 8))(v20, v17);
  result = [v5 view];
  if (result)
  {
    v37 = result;
    v79 = [result traitCollection];

    v38 = *(v11 + 104);
    v39 = v72;
    v38(v13, enum case for OfferEnvironment.arcadeProductPage(_:), v72);
    LOBYTE(v37) = sub_1007628BC();
    v40 = *(v11 + 8);
    v40(v13, v39);
    v64 = v16;
    if (v37)
    {
      if (qword_10093F550 != -1)
      {
        swift_once();
      }

      v41 = qword_10099CA98;
LABEL_16:
      v43 = sub_10000A61C(v21, v41);
      v44 = v65;
      (*(v22 + 16))(v65, v43, v21);

LABEL_17:
      v45 = *(v22 + 32);
      v46 = v66;
      v45(v66, v44, v21);
      v40(v64, v39);
      v45(v68, v46, v21);
      v47 = sub_10000A5D4(&unk_100946750);
      (*(*(v47 - 8) + 56))(v73, 1, 1, v47);

      sub_100766CCC();
      v48 = v69;
      sub_100763B3C();
      sub_1000DA834(v48, v77, v78, v67, &type metadata accessor for TextConfiguration, sub_1001F5C0C);
      return (*(v70 + 8))(v48, v71);
    }

    v38(v13, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v39);
    v42 = sub_1007628BC();
    v40(v13, v39);
    if (v42)
    {
      if (qword_10093F548 != -1)
      {
        swift_once();
      }

      v41 = qword_10099CA80;
      goto LABEL_16;
    }

    if (sub_1007628AC())
    {
      if (qword_10093F540 != -1)
      {
        swift_once();
      }

      v41 = qword_10099CA68;
      goto LABEL_16;
    }

    v38(v13, enum case for OfferEnvironment.navigationBar(_:), v39);
    v49 = sub_1007628BC();
    v40(v13, v39);
    if (v49)
    {
      if (qword_10093F558 != -1)
      {
        swift_once();
      }

      v50 = sub_10000A61C(v21, qword_100944CE8);
      v44 = v65;
      (*(v22 + 16))(v65, v50, v21);

      goto LABEL_17;
    }

    v51 = sub_1007700AC();
    if (sub_10077071C())
    {
      if (v51 <= 8)
      {
LABEL_24:
        if (sub_10077071C())
        {
          v52 = v65;
          if (qword_10093F520 != -1)
          {
            swift_once();
          }

          v53 = qword_100944C88;
        }

        else
        {
          v52 = v65;
          if (qword_10093F528 != -1)
          {
            swift_once();
          }

          v53 = qword_100944CA0;
        }

        v56 = sub_10000A61C(v21, v53);
        v57 = v62;
        (*(v22 + 16))(v62, v56, v21);

        (*(v22 + 32))(v52, v57, v21);
        v44 = v52;
        goto LABEL_17;
      }
    }

    else if (v51 < 7)
    {
      goto LABEL_24;
    }

    if (sub_10077071C())
    {
      v54 = v65;
      if (qword_10093F520 != -1)
      {
        swift_once();
      }

      v55 = qword_100944C88;
    }

    else
    {
      v54 = v65;
      if (qword_10093F528 != -1)
      {
        swift_once();
      }

      v55 = qword_100944CA0;
    }

    v58 = sub_10000A61C(v21, v55);
    v59 = v61;
    (*(v22 + 16))(v61, v58, v21);
    v60 = v63;
    (*(v22 + 32))(v63, v59, v21);
    v44 = v54;
    sub_10076C13C();

    (*(v22 + 8))(v60, v21);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

id sub_1000D8204(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v3 = sub_100769A4C();
  __chkstk_darwin(v3 - 8);
  v29 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100945550);
  __chkstk_darwin(v5 - 8);
  v28 = &v26 - v6;
  v7 = sub_10076A3AC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&qword_100945590);
  __chkstk_darwin(v11 - 8);
  v12 = sub_10076443C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v26 - v18;
  v27 = *&v2[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_installOfferView];
  result = [v2 view];
  if (result)
  {
    v21 = result;
    v22 = [result traitCollection];

    if (sub_10077071C())
    {
      if (qword_10093F520 != -1)
      {
        swift_once();
      }

      v23 = qword_100944C88;
    }

    else
    {
      if (qword_10093F528 != -1)
      {
        swift_once();
      }

      v23 = qword_100944CA0;
    }

    v24 = sub_10000A61C(v12, v23);
    (*(v13 + 16))(v15, v24, v12);

    (*(v13 + 32))(v19, v15, v12);
    (*(v8 + 104))(v10, enum case for OfferButtonPresenterViewAlignment.center(_:), v7);
    (*(v8 + 56))(v28, 1, 1, v7);
    sub_1000DAAAC(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment);
    sub_10076759C();
    sub_100769A0C();
    sub_10076A48C();
    swift_allocObject();
    v25 = sub_10076A47C();
    sub_1000DA9B4(v25, v30, v31, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}