_BYTE *sub_1D4E04(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:{a2, a3, a4, a5}];
  v8 = v7;
  if (a1)
  {
    v9 = *(&stru_68.flags + (swift_isaMask & *a1));
    v10 = v7;
    v11 = a1;
    v12 = v9();
    v14 = v13;
  }

  else
  {
    v15 = v7;
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  v16 = &v8[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_compactText];
  *v16 = v12;
  v16[1] = v14;

  if (a1)
  {
    v17 = *&stru_B8.segname[(swift_isaMask & *a1) - 8];
    v18 = a1;
    v19 = v17();
    v21 = v20;

    v22 = &v8[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_regularText];
    *v22 = v19;
    v22[1] = v21;

    v23 = *(&stru_B8.size + (swift_isaMask & *v18));
    v24 = v18;
    LOBYTE(v23) = v23();

    v8[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_showsAppleMusicLogo] = v23 & 1;
    v25 = *(&stru_B8.flags + (swift_isaMask & *v24));
    v26 = v24;
    v27 = v25();
  }

  else
  {
    v28 = &v8[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_regularText];
    *v28 = 0;
    v28[1] = 0xE000000000000000;

    v27 = 0;
    v8[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_showsAppleMusicLogo] = 0;
  }

  v8[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_style] = v27 & 1;
  v29 = *&v8[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_jsUpsellBanner];
  *&v8[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_jsUpsellBanner] = a1;

  return v8;
}

void sub_1D5044(uint64_t a1, void *a2)
{
  v3 = sub_AB3430();
  v70 = *(v3 - 8);
  v71 = v3;
  __chkstk_darwin(v3);
  v69 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB3820();
  v72 = *(v5 - 8);
  __chkstk_darwin(v5);
  v68 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v7);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v63 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v63 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v19 - 8);
  v21 = &v63 - v20;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (!a2)
  {

    return;
  }

  v67 = v7;
  v23 = *&Strong[OBJC_IVAR____TtC16MusicApplication26UpsellBannerViewController_bannerView];
  v24 = Strong;
  v66 = a2;
  v25 = v24;
  v26 = v23;
  [v26 bounds];
  v87[0] = v26;
  v87[1] = v27;
  v87[2] = v28;
  v87[3] = v29;
  v87[4] = v30;
  v88 = 0;
  PresentationSource.Position.init(source:permittedArrowDirections:)(v87, 15, v79);
  v83[0] = v79[0];
  v83[1] = v79[1];
  v84 = v80;
  v85 = v81;
  v86 = v82;
  v65 = v25;
  PresentationSource.init(viewController:position:)(v25, v83, v78);
  v64 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v31 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v76, 0, sizeof(v76));
  v77 = 0;
  (*(*(v31 - 8) + 56))(v21, 1, 1, v31);
  sub_15F84(v76, &v73, &unk_DE8E30);
  if (*(&v74 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
    v32 = _s30CollectionViewSelectionHandlerVMa();
    v33 = swift_dynamicCast();
    v34 = *(v32 - 8);
    (*(v34 + 56))(v12, v33 ^ 1u, 1, v32);
    if ((*(v34 + 48))(v12, 1, v32) != 1)
    {
      v35 = *(v32 + 20);
      v36 = v72;
      (*(v72 + 16))(v18, &v12[v35], v5);
      sub_2D6C0(v12, _s30CollectionViewSelectionHandlerVMa);
      v37 = 0;
      v38 = v67;
      goto LABEL_9;
    }
  }

  else
  {
    sub_12E1C(&v73, &unk_DE8E30);
    v39 = _s30CollectionViewSelectionHandlerVMa();
    (*(*(v39 - 8) + 56))(v12, 1, 1, v39);
  }

  sub_12E1C(v12, &qword_E037A0);
  v37 = 1;
  v38 = v67;
  v36 = v72;
LABEL_9:
  (*(v36 + 56))(v18, v37, 1, v5);
  v40 = swift_unknownObjectWeakLoadStrong();
  if (v40 && (v41 = v40, sub_12B2FC(), v43 = v42, v45 = v44, v41, v43))
  {
    ObjectType = swift_getObjectType();
    (*(v45 + 8))(ObjectType, v45);
    v48 = v47;
    swift_unknownObjectRelease();
    sub_15F84(v18, v16, &unk_DE8E20);
    v49 = v72;
    if ((*(v72 + 48))(v16, 1, v5) == 1)
    {
      sub_12E1C(v16, &unk_DE8E20);
      v73 = 0u;
      v74 = 0u;
      v75 = 0;
    }

    else
    {
      v51 = *(v49 + 32);
      v72 = v48;
      v51(v68, v16, v5);
      sub_2D668();
      v48 = v72;
      sub_ABAD10();
    }

    v52 = swift_getObjectType();
    v53 = v69;
    sub_3B8F68();
    v50 = sub_21CCAC(1, v53, &v73, v52, v48);
    (*(v70 + 8))(v53, v71);
    sub_12E1C(&v73, &qword_DF2BD0);
    sub_12E1C(v18, &unk_DE8E20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v18, &unk_DE8E20);
    v50 = 0;
  }

  v54 = swift_unknownObjectWeakLoadStrong();
  if (v54)
  {
    v55 = v54;
    v56 = v21;
    sub_12AFE8();
    v58 = v57;
  }

  else
  {
    v56 = v21;
    v58 = 0;
  }

  sub_15F28(v78, &v73);
  sub_15F84(v76, (v9 + 104), &unk_DE8E30);
  sub_15F84(v56, &v9[*(v38 + 28)], &unk_DEA510);
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 8) = 1;
  *(v9 + 9) = 0;
  *(v9 + 10) = 0;
  *(v9 + 11) = 0;
  sub_2D594(&v73, v9);
  *(v9 + 12) = 0;
  v59 = *v64;
  *(&v74 + 1) = v38;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v73);
  sub_2D604(v9, boxed_opaque_existential_0);
  v61 = v59;
  v62 = v66;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v66, 0, v50, v58, &v73);

  sub_12E1C(v56, &unk_DEA510);
  sub_12E1C(v76, &unk_DE8E30);
  sub_1611C(v78);
  sub_2D6C0(v9, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v73, &unk_DE8E40);
}

void sub_1D58B8()
{
  v1 = v0;
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "viewDidLayoutSubviews");
  v2 = OBJC_IVAR____TtC16MusicApplication26UpsellBannerViewController_bannerView;
  v3 = *&v0[OBJC_IVAR____TtC16MusicApplication26UpsellBannerViewController_bannerView];
  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    v7 = v6;

    v8 = sub_1D4684(v7);
    v10 = v9;

    [v1 setPreferredContentSize:{v8, v10}];
    v11 = *&v1[v2];
    v12 = [v1 view];
    if (v12)
    {
      v13 = v12;
      [v12 frame];
      v15 = v14;
      v17 = v16;

      [v11 setFrame:{0.0, 0.0, v15, v17}];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D5B08(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "preferredContentSizeDidChangeForChildContentContainer:", a1);
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication26UpsellBannerViewController_textDrawingCache];
  [*(v3 + 64) removeAllObjects];
  [*(v3 + 80) removeAllObjects];
  if (*(v3 + 96))
  {
    *(v3 + 104) = 1;
  }

  else
  {
    v4 = [objc_opt_self() defaultCenter];
    if (qword_DE6828 != -1)
    {
      swift_once();
    }

    [v4 postNotificationName:static TextDrawing.Cache.didInvalidateNotification object:v3];
  }
}

char *sub_1D5D1C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_compactText];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_regularText];
  *v12 = 0;
  *(v12 + 1) = 0xE000000000000000;
  v4[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_showsAppleMusicLogo] = 1;
  v4[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_style] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_textDrawingCache] = 0;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_onSelection];
  *v13 = 0;
  *(v13 + 1) = 0;
  v4[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_adjustsInsetsForStatusBar] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_jsUpsellBanner] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_layoutStyle] = 0;
  v14 = OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_stackView;
  type metadata accessor for TextStackView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  [v16 setUserInteractionEnabled:0];
  v17 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  *(v16 + v17) = 0;
  *&v5[v14] = v16;
  v18 = OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_measurementStackView;
  v19 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  [v19 setUserInteractionEnabled:0];
  v20 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  *(v19 + v20) = 0;
  *&v5[v18] = v19;
  v21 = OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_containerView;
  *&v5[v21] = [objc_allocWithZone(UIView) init];
  v22 = OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_backgroundImageView;
  *&v5[v22] = [objc_allocWithZone(UIImageView) init];
  v23 = OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_logoImageView;
  *&v5[v23] = [objc_allocWithZone(UIImageView) init];
  if (qword_DE6980 != -1)
  {
    swift_once();
  }

  v37[2] = xmmword_DF50C0;
  v37[3] = unk_DF50D0;
  v37[4] = xmmword_DF50E0;
  v37[0] = xmmword_DF50A0;
  v37[1] = *algn_DF50B0;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v24 = TextStackView.Component.init(identifier:labelProperties:)(1954047348, 0xE400000000000000, v37);
  *&v5[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_textMeasurementComponent] = v24;
  v25 = *&v5[v18];
  sub_2F118(v37, v36);

  v26 = v25;
  TextStackView.add(_:)(v24);

  if (qword_DE6978 != -1)
  {
    swift_once();
  }

  v36[2] = xmmword_DF5070;
  v36[3] = unk_DF5080;
  v36[4] = xmmword_DF5090;
  v36[0] = xmmword_DF5050;
  v36[1] = unk_DF5060;
  swift_allocObject();
  v27 = TextStackView.Component.init(identifier:labelProperties:)(1954047348, 0xE400000000000000, v36);
  *&v5[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_textComponent] = v27;
  v28 = *&v5[v14];
  sub_2F118(v36, v35);

  v29 = v28;
  TextStackView.add(_:)(v27);

  v34.receiver = v5;
  v34.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v34, "initWithFrame:", a1, a2, a3, a4);
  [v30 setClipsToBounds:1];
  v31 = OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_containerView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_containerView]];
  [*&v30[v31] addSubview:*&v30[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_backgroundImageView]];
  [*&v30[v31] addSubview:*&v30[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_stackView]];
  [*&v30[v31] addSubview:*&v30[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_logoImageView]];
  [*&v30[v31] setClipsToBounds:1];
  sub_1D61A4();
  sub_1D6438();
  sub_1D65D0();
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  ControlEventHandling<>.on(_:handler:)(64, sub_1D8880, v32, ObjectType);

  return v30;
}

uint64_t sub_1D61A4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_textMeasurementComponent);
  v3 = OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_layoutStyle;
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_layoutStyle))
  {
    v4 = qword_DE6990;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = &xmmword_DF5140;
  }

  else
  {
    v6 = qword_DE6980;

    if (v6 != -1)
    {
      swift_once();
    }

    v5 = &xmmword_DF50A0;
  }

  v7 = v5[3];
  v36 = v5[2];
  v37 = v7;
  v38 = v5[4];
  v8 = v5[1];
  v34 = *v5;
  v35 = v8;
  swift_beginAccess();
  v10 = v2[3];
  v9 = v2[4];
  v11 = v2[6];
  v33[3] = v2[5];
  v33[4] = v11;
  v33[1] = v10;
  v33[2] = v9;
  v33[0] = v2[2];
  v12 = v38;
  v2[5] = v37;
  v2[6] = v12;
  v13 = v35;
  v2[2] = v34;
  v2[3] = v13;
  v2[4] = v36;
  sub_2F118(&v34, &v28);
  sub_2F118(&v34, &v28);
  sub_2F174(v33);
  sub_2EB2A8();
  sub_2F174(&v34);

  v14 = *(v1 + OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_textComponent);
  if (*(v1 + v3))
  {
    v15 = qword_DE6988;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = &xmmword_DF50F0;
  }

  else
  {
    v17 = qword_DE6978;

    if (v17 != -1)
    {
      swift_once();
    }

    v16 = &xmmword_DF5050;
  }

  v18 = v16[3];
  v30 = v16[2];
  v31 = v18;
  v32 = v16[4];
  v19 = v16[1];
  v28 = *v16;
  v29 = v19;
  swift_beginAccess();
  v21 = v14[3];
  v20 = v14[4];
  v22 = v14[6];
  v27[3] = v14[5];
  v27[4] = v22;
  v27[2] = v20;
  v27[0] = v14[2];
  v27[1] = v21;
  v23 = v32;
  v14[5] = v31;
  v14[6] = v23;
  v24 = v29;
  v14[2] = v28;
  v14[3] = v24;
  v14[4] = v30;
  sub_2F118(&v28, v26);
  sub_2F118(&v28, v26);
  sub_2F174(v27);
  sub_2EB2A8();
  sub_2F174(&v28);
}

void sub_1D6438()
{
  v1 = *&v0[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_backgroundImageView];
  if ((v0[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_style] & 1) == 0)
  {
    v4 = v0[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_layoutStyle];
    v5 = [v0 traitCollection];
    v6 = *UIColor.MusicTint.normal.unsafeMutableAddressor();
    v7 = v6;
    if (v4)
    {
      v8 = _sSo7UIImageC16MusicApplicationE16stretchableImage10filledWith12cornerRadiusABSgSo7UIColorC_12CoreGraphics7CGFloatVtFZ_0(v6, 0.0);

      if (v8)
      {
LABEL_7:

        [v1 setImage:v8];
        [v1 setHidden:0];
        v2 = *&v0[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_containerView];
        [v2 setBackgroundColor:0];
        goto LABEL_8;
      }

      __break(1u);
    }

    v8 = _sSo7UIImageC16MusicApplicationE16stretchableImage10filledWith12cornerRadiusABSgSo7UIColorC_12CoreGraphics7CGFloatVtFZ_0(v7, 13.0);

    if (!v8)
    {
      __break(1u);
      return;
    }

    goto LABEL_7;
  }

  [*&v0[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_backgroundImageView] setHidden:1];
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_containerView];
  v3 = [v0 tintColor];
  [v2 setBackgroundColor:v3];

LABEL_8:
  v9 = 13.0;
  if (v0[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_layoutStyle])
  {
    v9 = 0.0;
  }

  [v2 _setContinuousCornerRadius:v9];
}

id sub_1D65D0()
{
  v1 = OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_showsAppleMusicLogo;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_logoImageView);
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_showsAppleMusicLogo) != 1)
  {
    goto LABEL_6;
  }

  if (qword_DE6AF0 != -1)
  {
    swift_once();
  }

  v3 = qword_E71620;
  v4 = sub_AB9260();
  v5 = [objc_opt_self() imageNamed:v4 inBundle:v3 compatibleWithTraitCollection:0];

  [v2 setImage:v5];
  v6 = [objc_opt_self() whiteColor];
  [v2 setTintColor:v6];

  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_logoImageView);
  if (*(v0 + v1) == 1)
  {
    v7 = [*(v0 + OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_logoImageView) image];

    v8 = v7 == 0;
  }

  else
  {
LABEL_6:
    v8 = 1;
  }

  return [v2 setHidden:v8];
}

void sub_1D6770()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_onSelection);
    if (v2)
    {

      v2(v3);
      sub_17654(v2);
    }
  }
}

void sub_1D6848(void *a1, char a2, char a3)
{
  [a1 music_inheritedLayoutInsets];
  v6 = [a1 traitCollection];
  [v6 horizontalSizeClass];

  if (a3 & 1) == 0 && (a2)
  {
    UIView.statusBarFrame.getter(&v7);
    if ((v8 & 1) == 0)
    {
      CGRectGetHeight(v7);
    }
  }
}

BOOL sub_1D6958(uint64_t a1, uint64_t a2, CGFloat a3)
{
  v4 = v3;
  v8 = *(v4 + OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_textMeasurementComponent);
  swift_beginAccess();
  *(v8 + 112) = a1;
  *(v8 + 120) = a2;

  sub_2EB704();

  v9 = [*(v4 + OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_measurementStackView) traitCollection];
  [v9 displayScale];
  v11 = v10;

  sub_2E94A4(v13, 0.0, 0.0, a3, 5.99231045e307, v11);
  sub_3F250(v13);
  return v13[7] < 2;
}

void sub_1D6AB4()
{
  v1 = v0;
  v97.receiver = v0;
  v97.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v97, "layoutSubviews");
  [v0 bounds];
  v3 = v2;
  v4 = [v0 traitCollection];
  v5 = v0[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_layoutStyle];
  v96 = v4;
  [v4 displayScale];
  v6 = OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_showsAppleMusicLogo;
  v7 = v1[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_showsAppleMusicLogo];
  sub_1D6848(v1, v1[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_adjustsInsetsForStatusBar], v5);
  v9 = v8;
  v11 = v10;
  v13 = v3 - v10 - v12;
  if (v5)
  {
    [v1 music_inheritedLayoutInsets];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [v1 traitCollection];
    v20 = [v19 horizontalSizeClass];

    v21 = v16 + 72.0;
    v22 = v18 + 72.0;
    if (v20 != &dword_0 + 2)
    {
      v22 = v18;
      v21 = v16;
    }

    v13 = v14;
    v23 = 20.0;
  }

  else
  {
    if (v1[v6])
    {
      v23 = 10.0;
    }

    else
    {
      v23 = 5.0;
    }

    v21 = 16.0;
    v22 = 16.0;
  }

  v24 = v13 - v21 - v22;
  v25 = 0.0;
  v26 = v24;
  v27 = 0.0;
  if (v7)
  {
    v28 = [*&v1[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_logoImageView] image];
    if (v28)
    {
      v29 = v28;
      [v28 size];
      v25 = v30;
      v27 = v31;
    }

    if (v5)
    {
      v26 = v24 - (v25 + 16.0);
    }

    else
    {
      v26 = v24;
    }
  }

  v94 = v25;
  v32 = *&v1[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_textComponent];
  v33 = OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_regularText;
  v34 = &v1[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_regularText];
  v35 = *&v1[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_regularText];
  v36 = *&v1[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_regularText + 8];

  LOBYTE(v35) = sub_1D6958(v35, v36, v26);

  v37 = OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_compactText;
  v38 = &v1[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_compactText];
  if (v35)
  {
    v38 = v34;
    v37 = v33;
  }

  v39 = *&v1[v37];
  v40 = *(v38 + 1);

  swift_beginAccess();
  *(v32 + 112) = v39;
  *(v32 + 120) = v40;

  sub_2EB704();

  v41 = *&v1[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_stackView];
  v42 = [v41 traitCollection];
  [v42 displayScale];
  v44 = v43;

  sub_2E94A4(v98, 0.0, 0.0, v26, 5.99231045e307, v44);
  sub_3F250(v98);
  v45 = v99;
  v46 = v23 + v99;
  v47 = v27 + v23 + v99;
  v48 = 60.0;
  v49 = 64.0;
  if (v5)
  {
    v48 = 64.0;
    v47 = v23 + v99;
  }

  else
  {
    v49 = 42.0;
  }

  if (v7)
  {
    v46 = v47;
  }

  else
  {
    v48 = v49;
  }

  if (v46 > v48)
  {
    v50 = v46;
  }

  else
  {
    v50 = v48;
  }

  if (v7)
  {
    r1 = v98[3];
    rect_8 = v50;
    rect_16 = v13;
    rect_24 = v11;
    v89 = v9;
    if (v5)
    {
      v100.origin.x = 0.0;
      v100.origin.y = v23;
      v100.size.width = v94;
      v100.size.height = v27;
      v101.origin.x = CGRectGetMaxX(v100) + 16.0;
      v110.origin.x = 0.0;
      v101.origin.y = v23;
      *&v101.size.width = r1;
      v101.size.height = v45;
      v110.origin.y = v23;
      v110.size.width = v94;
      v110.size.height = v27;
      v102 = CGRectUnion(v101, v110);
      recta = v102.origin.x;
      y = v102.origin.y;
      width = v102.size.width;
      height = v102.size.height;
      sub_ABA470();
      CGRectGetMinX(v103);
      v104.origin.x = recta;
      v104.origin.y = y;
      v104.size.width = width;
      v104.size.height = height;
      CGRectGetMinX(v104);
      sub_ABA470();
      x = v54;
      rect = v55;
      v57 = v56;
      v59 = v58 + -3.0;
      v79 = v45;
      sub_ABA470();
      v91 = v61;
      r1a = v60;
      v63 = v62;
      v90 = v64;
    }

    else
    {
      sub_ABA470();
      x = v105.origin.x;
      r2 = v105.origin.y;
      rect = v105.size.width;
      v69 = v105.size.width;
      v70 = v105.size.height;
      v81 = v105.size.height;
      CGRectGetMaxY(v105);
      sub_ABA470();
      v82 = v106.origin.y;
      v91 = v106.size.width;
      r1a = v106.origin.x;
      v90 = v106.size.height;
      v111.origin.x = x;
      v111.origin.y = r2;
      v111.size.width = v69;
      v111.size.height = v70;
      v107 = CGRectUnion(v106, v111);
      v71 = v107.origin.x;
      v72 = v107.origin.y;
      v73 = v107.size.width;
      v74 = v107.size.height;
      v79 = v107.size.height;
      sub_ABA470();
      MinY = CGRectGetMinY(v108);
      v109.origin.x = v71;
      v109.origin.y = v72;
      v57 = v81;
      v109.size.width = v73;
      v109.size.height = v74;
      v76 = MinY - CGRectGetMinY(v109);
      v59 = r2 + v76;
      v63 = v82 + v76;
    }

    [*&v1[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_logoImageView] setFrame:{x, v59, rect, v57, *&v79}];
    v67 = v91;
    v65 = r1a;
    v9 = v89;
    v68 = v90;
    v66 = v63;
    v13 = rect_16;
    v11 = rect_24;
    v50 = rect_8;
  }

  else
  {
    v80 = v99;
    sub_ABA470();
  }

  [v41 setFrame:{v65, v66, v67, v68, *&v80}];
  v77 = *&v1[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_containerView];
  [v77 setFrame:{v11, v9, v13, v50}];
  v78 = *&v1[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_backgroundImageView];
  [v77 bounds];
  [v78 setFrame:?];
}

void sub_1D735C(char *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB92A0();
  v8 = &a1[*a4];
  v9 = *v8;
  v10 = v8[1];
  *v8 = v7;
  v8[1] = v6;
  if (v9 == v7 && v10 == v6)
  {
    v15 = a3;
    v16 = a1;
  }

  else
  {
    v12 = sub_ABB3C0();
    v13 = a3;
    v14 = a1;
    if ((v12 & 1) == 0)
    {
      [v14 setNeedsLayout];
    }
  }
}

uint64_t sub_1D74A4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_stackView);
  v3 = OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_textDrawingCache;
  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_textDrawingCache);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *(v2 + v5);
  *(v2 + v5) = v4;
  swift_retain_n();
  sub_2E6210(v6);

  v7 = *(v1 + OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_measurementStackView);
  v8 = *(v1 + v3);
  v9 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v10 = *(v7 + v9);
  *(v7 + v9) = v8;
  swift_retain_n();
  sub_2E6210(v10);
}

double sub_1D759C()
{
  sub_1D75E0(&v1);
  xmmword_DF5070 = v3;
  unk_DF5080 = v4;
  xmmword_DF5090 = v5;
  result = *&v2;
  xmmword_DF5050 = v1;
  unk_DF5060 = v2;
  return result;
}

double sub_1D75E0@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() defaultParagraphStyle];
  [v2 mutableCopy];

  sub_ABAB50();
  sub_13C80(0, &unk_E05360);
  swift_dynamicCast();
  swift_unknownObjectRelease();
  [v9 setAlignment:1];
  sub_13C80(0, &qword_DE6EE0);
  v3 = sub_ABA560();
  sub_AB2F50();
  v4 = swift_allocBox();
  sub_AB2F40();
  sub_B4908();
  v5 = v9;
  sub_AB2F70();
  sub_B4860();
  v6 = v3;
  sub_AB2F70();
  [objc_opt_self() whiteColor];
  sub_B48B4();
  sub_AB2F70();

  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  *a1 = 0xD000000000000017;
  *(a1 + 8) = 0x8000000000B565B0;
  *(a1 + 16) = sub_1D8894;
  *(a1 + 24) = v7;
  *(a1 + 32) = xmmword_AFA860;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  result = 19.0;
  *(a1 + 64) = xmmword_B03060;
  return result;
}

double sub_1D7810()
{
  sub_1D7854(&v1);
  xmmword_DF50C0 = v3;
  unk_DF50D0 = v4;
  xmmword_DF50E0 = v5;
  result = *&v2;
  xmmword_DF50A0 = v1;
  *algn_DF50B0 = v2;
  return result;
}

double sub_1D7854@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() defaultParagraphStyle];
  [v2 mutableCopy];

  sub_ABAB50();
  sub_13C80(0, &unk_E05360);
  swift_dynamicCast();
  swift_unknownObjectRelease();
  [v9 setAlignment:1];
  [v9 setLineBreakMode:1];
  sub_13C80(0, &qword_DE6EE0);
  v3 = sub_ABA560();
  sub_AB2F50();
  v4 = swift_allocBox();
  sub_AB2F40();
  sub_B4908();
  v5 = v9;
  sub_AB2F70();
  sub_B4860();
  v6 = v3;
  sub_AB2F70();
  [objc_opt_self() whiteColor];
  sub_B48B4();
  sub_AB2F70();

  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  *a1 = 0xD00000000000001ELL;
  *(a1 + 8) = 0x8000000000B565D0;
  *(a1 + 16) = sub_1D8894;
  *(a1 + 24) = v7;
  *(a1 + 32) = xmmword_AFA860;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  result = 19.0;
  *(a1 + 64) = xmmword_B03060;
  return result;
}

double sub_1D7A98()
{
  sub_1D7ADC(&v1);
  xmmword_DF5110 = v3;
  unk_DF5120 = v4;
  xmmword_DF5130 = v5;
  result = *&v2;
  xmmword_DF50F0 = v1;
  unk_DF5100 = v2;
  return result;
}

double sub_1D7ADC@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() defaultParagraphStyle];
  [v2 mutableCopy];

  sub_ABAB50();
  sub_13C80(0, &unk_E05360);
  swift_dynamicCast();
  swift_unknownObjectRelease();
  [v9 setAlignment:4];
  sub_13C80(0, &qword_DE6EE0);
  v3 = sub_ABA560();
  sub_AB2F50();
  v4 = swift_allocBox();
  sub_AB2F40();
  sub_B4908();
  v5 = v9;
  sub_AB2F70();
  sub_B4860();
  v6 = v3;
  sub_AB2F70();
  [objc_opt_self() whiteColor];
  sub_B48B4();
  sub_AB2F70();

  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  *a1 = 0xD000000000000011;
  *(a1 + 8) = 0x8000000000B56570;
  *(a1 + 16) = sub_1D888C;
  *(a1 + 24) = v7;
  *(a1 + 32) = xmmword_AFA860;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  result = 28.0;
  *(a1 + 64) = xmmword_B03070;
  return result;
}

double sub_1D7D0C()
{
  sub_1D7D50(&v1);
  xmmword_DF5160 = v3;
  unk_DF5170 = v4;
  xmmword_DF5180 = v5;
  result = *&v2;
  xmmword_DF5140 = v1;
  *algn_DF5150 = v2;
  return result;
}

double sub_1D7D50@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() defaultParagraphStyle];
  [v2 mutableCopy];

  sub_ABAB50();
  sub_13C80(0, &unk_E05360);
  swift_dynamicCast();
  swift_unknownObjectRelease();
  [v9 setAlignment:4];
  [v9 setLineBreakMode:1];
  sub_13C80(0, &qword_DE6EE0);
  v3 = sub_ABA560();
  sub_AB2F50();
  v4 = swift_allocBox();
  sub_AB2F40();
  sub_B4908();
  v5 = v9;
  sub_AB2F70();
  sub_B4860();
  v6 = v3;
  sub_AB2F70();
  [objc_opt_self() whiteColor];
  sub_B48B4();
  sub_AB2F70();

  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  *a1 = 0xD000000000000018;
  *(a1 + 8) = 0x8000000000B56590;
  *(a1 + 16) = sub_1D8894;
  *(a1 + 24) = v7;
  *(a1 + 32) = xmmword_AFA860;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  result = 28.0;
  *(a1 + 64) = xmmword_B03070;
  return result;
}

void *sub_1D7F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v40 = sub_AB2E70();
  v6 = *(v40 - 8);
  __chkstk_darwin(v40);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_AB2F50();
  v9 = *(v38 - 8);
  __chkstk_darwin(v38);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_AB2F20();
  v12 = *(v39 - 8);
  v13 = __chkstk_darwin(v39);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v36 - v16;
  v18 = swift_projectBox();
  v41 = a1;
  v42 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFA750);
  swift_allocObject();

  v19 = v12;
  sub_AB3890();
  sub_AB3880();

  swift_beginAccess();
  v20 = v38;
  (*(v9 + 16))(v11, v18, v38);
  v21 = v40;
  (*(v6 + 104))(v8, enum case for AttributedString.AttributeMergePolicy.keepNew(_:), v40);
  sub_AB2E40();
  (*(v6 + 8))(v8, v21);
  (*(v9 + 8))(v11, v20);
  v22 = v39;
  sub_13C80(0, &qword_DF5280);
  v23 = *(v19 + 16);
  v40 = v17;
  v23(v15, v17, v22);
  v24 = sub_ABA1C0();
  v25 = [objc_allocWithZone(NSTextAttachment) init];
  v26 = sub_AB9260();
  v27 = [objc_opt_self() systemImageNamed:v26];

  if (v27)
  {
    v28 = [objc_opt_self() whiteColor];
    v29 = [v27 imageWithTintColor:v28];

    v30 = [objc_opt_self() configurationWithFont:v37];
    v27 = [v29 imageWithSymbolConfiguration:v30];
  }

  [v25 setImage:v27];

  String.nonBreakingSpace.unsafeMutableAddressor();
  v31 = objc_allocWithZone(NSMutableAttributedString);

  v32 = sub_AB9260();
  v33 = [v31 initWithString:v32];

  v34 = [objc_opt_self() attributedStringWithAttachment:v25];
  [v33 appendAttributedString:v34];

  [v24 appendAttributedString:v33];
  (*(v19 + 8))(v40, v22);

  return v24;
}

unint64_t sub_1D85E4()
{
  result = qword_DF5278;
  if (!qword_DF5278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF5278);
  }

  return result;
}

uint64_t sub_1D864C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_1D868C()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_compactText);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_regularText);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_showsAppleMusicLogo) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_style) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_textDrawingCache) = 0;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_onSelection);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_adjustsInsetsForStatusBar) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_jsUpsellBanner) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_layoutStyle) = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_stackView;
  type metadata accessor for TextStackView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  [v6 setUserInteractionEnabled:0];
  v7 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  *(v6 + v7) = 0;
  *(v0 + v4) = v6;
  v8 = OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_measurementStackView;
  v9 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  [v9 setUserInteractionEnabled:0];
  v10 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  *(v9 + v10) = 0;
  *(v0 + v8) = v9;
  v11 = OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_containerView;
  *(v0 + v11) = [objc_allocWithZone(UIView) init];
  v12 = OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_backgroundImageView;
  *(v0 + v12) = [objc_allocWithZone(UIImageView) init];
  v13 = OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_logoImageView;
  *(v0 + v13) = [objc_allocWithZone(UIImageView) init];
  sub_ABAFD0();
  __break(1u);
}

void sub_1D88AC(void *a1)
{
  v2 = *(v1 + 64);
  *(v1 + 64) = a1;
  if (!v2)
  {
    if (!a1)
    {
      return;
    }

    v6 = a1;
    goto LABEL_7;
  }

  v6 = a1;
  if (!a1 || (sub_13C80(0, &qword_DF54F0), v6 = v6, v3 = v2, v4 = sub_ABA790(), v3, (v4 & 1) == 0))
  {
LABEL_7:
    sub_1D956C();

    v5 = v2;
    goto LABEL_8;
  }

  v5 = v6;
LABEL_8:
}

uint64_t sub_1D8988(uint64_t result, char a2)
{
  v3 = *(v2 + 80);
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  if (v3)
  {
    if (a2)
    {
      return result;
    }
  }

  else if ((a2 & 1) == 0)
  {
    result = sub_AB38D0();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  v4 = sub_1D93EC();
  v5 = v4[2];
  if (v5)
  {
    v6 = 0;
    v13 = v4 + 4;
    do
    {
      v8 = v13[2 * v6];
      v9 = [swift_unknownObjectRetain() navigationItem];
      v10 = [v8 parentViewController];
      if (v10)
      {
        v11 = v10;
        while (1)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          v12 = v11;
          v7 = [v12 navigationItem];

          v11 = [v12 parentViewController];
          v9 = v7;
          if (!v11)
          {
            goto LABEL_10;
          }
        }
      }

      v7 = v9;
LABEL_10:
      ++v6;
      sub_374C7C(v7);
      swift_unknownObjectRelease();
    }

    while (v6 != v5);
  }
}

uint64_t sub_1D8B24(uint64_t result, char a2)
{
  v3 = v2;
  if (a2)
  {
    if (*(v2 + 96))
    {
      return result;
    }

    goto LABEL_6;
  }

  if (*(v2 + 96) & 1) != 0 || (result = sub_AB38D0(), (result))
  {
LABEL_6:
    v19 = sub_1D93EC();
    v4 = v19[2];
    if (!v4)
    {
    }

    for (i = v19 + 4; ; i += 2)
    {
      v6 = *i;
      v7 = *(*i + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_headerItem);
      if (!v7)
      {
        break;
      }

      v8 = *&stru_298.segname[(swift_isaMask & *v7) + 8];
      swift_unknownObjectRetain();
      v9 = v7;
      v10 = v8();

      if (v10 == 1)
      {
        swift_unknownObjectRelease();

        goto LABEL_9;
      }

      v11 = sub_ABB3C0();

      if ((v11 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_8:
      swift_unknownObjectRelease();
LABEL_9:
      if (!--v4)
      {
      }
    }

    swift_unknownObjectRetain();
LABEL_15:
    v12 = *(v6 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_promotionalParallaxContentView);
    if (v12 && (*(v3 + 96) & 1) == 0)
    {
      v13 = *(v3 + 88);
      if (v13 < 0.0)
      {
        v13 = 0.0;
      }

      if (v13 > 1.0)
      {
        v13 = 1.0;
      }

      v14 = OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundOverlayAlpha;
      *&v12[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundOverlayAlpha] = v13;
      if (v12[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_layoutStyle] == 2)
      {
        v15 = v12;
        if (sub_AB38D0())
        {
          v16 = *&v15[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_backgroundOverlayView];
          if (v16)
          {
            [v16 setAlpha:*&v12[v14]];
          }

          v17 = *&v15[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_pageHeaderContentView];
          if (v17)
          {
            [v17 setAlpha:1.0 - *&v12[v14]];
          }
        }
      }

      else
      {
        v18 = v12;
      }

      sub_373738();
      swift_unknownObjectRelease();

      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1D8DE4(uint64_t result, char a2)
{
  v3 = *(v2 + 112);
  *(v2 + 104) = result;
  *(v2 + 112) = a2 & 1;
  if (v3)
  {
    if (a2)
    {
      return result;
    }
  }

  else if ((a2 & 1) == 0)
  {
    result = sub_AB38D0();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  v4 = sub_1D93EC();
  v5 = v4[2];
  if (v5)
  {
    v6 = v4 + 4;
    do
    {
      v6 += 2;
      swift_unknownObjectRetain();
      sub_375CB4(v2);
      swift_unknownObjectRelease();
      --v5;
    }

    while (v5);
  }
}

void sub_1D8EB0(char a1)
{
  v3 = a1 & 1;
  v4 = sub_AB7C10();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB7C50();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v11) = *(v1 + 113);
  *(v1 + 113) = a1;
  if (v11 != v3 && *(v1 + 114) != 1)
  {
    *(v1 + 114) = 1;
    v13 = v10;
    sub_13C80(0, &qword_DE8ED0);
    v14 = sub_ABA150();
    aBlock[4] = sub_1D9C50;
    aBlock[5] = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_46_1;
    v15 = _Block_copy(aBlock);

    sub_AB7C30();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_8FFF0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
    sub_D1010();
    sub_ABABB0();
    sub_ABA160();
    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v12, v13);
    _Block_release(v15);
  }
}

void sub_1D915C()
{
  v1 = sub_AB7C10();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB7C50();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 114) & 1) == 0)
  {
    *(v0 + 114) = 1;
    sub_13C80(0, &qword_DE8ED0);
    v9 = sub_ABA150();
    aBlock[4] = sub_1D9C0C;
    aBlock[5] = v0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_64;
    v10 = _Block_copy(aBlock);

    sub_AB7C30();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_8FFF0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
    sub_D1010();
    sub_ABABB0();
    sub_ABA160();
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
    _Block_release(v10);
  }
}

void *sub_1D93EC()
{
  v1 = *(v0 + 120);
  v2 = [v1 allObjects];
  v3 = sub_AB9760();

  v4 = *(v3 + 16);
  if (v4)
  {
    v15 = _swiftEmptyArrayStorage;
    sub_6D470(0, v4, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = v3 + 32;
    do
    {
      sub_808B0(v6, v13);
      sub_9ACFC(v13, &v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAA70);
      swift_dynamicCast();
      v7 = v14;
      v15 = v5;
      v9 = v5[2];
      v8 = v5[3];
      if (v9 >= v8 >> 1)
      {
        v11 = v14;
        sub_6D470((v8 > 1), v9 + 1, 1);
        v7 = v11;
        v5 = v15;
      }

      v5[2] = v9 + 1;
      *&v5[2 * v9 + 4] = v7;
      v6 += 32;
      --v4;
    }

    while (v4);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v5;
}

void sub_1D956C()
{
  v1 = *(v0 + 64);
  if (!v1)
  {
    return;
  }

  v2 = v0;
  v70[0] = *(v0 + 40);
  v3 = v1;
  if (sub_AB38D0() & 1) != 0 || (v70[0] = *(v0 + 32), v4 = 0.0, (sub_AB38D0()))
  {
    v5 = *(v0 + 32);
    if (*(v0 + 40) > v5 - *(v0 + 56))
    {
      v4 = *(v0 + 40);
    }

    else
    {
      v4 = v5 - *(v0 + 56);
    }
  }

  v6 = &selRef_setSubtitleText_;
  v7 = [v3 _backgroundView];
  if (!v7)
  {
    __break(1u);
    goto LABEL_58;
  }

  v8 = v7;
  v9 = &selRef__authenticateReturningError_;
  [v7 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [v3 defaultSizeForOrientation:1];
  v19 = v18;
  v72.origin.x = v11;
  v72.origin.y = v13;
  v72.size.width = v15;
  v72.size.height = v17;
  MinX = CGRectGetMinX(v72);
  v73.origin.x = v11;
  v73.origin.y = v13;
  v73.size.width = v15;
  v73.size.height = v17;
  MaxY = CGRectGetMaxY(v73);
  v74.origin.x = v11;
  v74.origin.y = v13;
  v74.size.width = v15;
  v74.size.height = v17;
  Width = CGRectGetWidth(v74);
  *v70 = v4;
  sub_471A4();
  if (sub_AB3900())
  {
    v23 = 2;
  }

  else
  {
    v75.origin.y = MaxY - v19;
    *v70 = v4;
    v75.origin.x = MinX;
    v75.size.width = Width;
    v75.size.height = v19;
    CGRectGetMidY(v75);
    v23 = sub_AB3900() & 1;
  }

  v24 = *(v2 + 24);
  *(v2 + 24) = v23;
  if (v24 != v23)
  {
    v25 = sub_1D93EC();
    v26 = v25[2];
    if (v26)
    {
      v67 = v3;
      v68 = v2;
      v27 = 0;
      v69 = v25 + 4;
      do
      {
        v29 = v69[2 * v27];
        v30 = [swift_unknownObjectRetain() navigationItem];
        v31 = [v29 parentViewController];
        if (v31)
        {
          v32 = v31;
          while (1)
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            v33 = v32;
            v28 = [v33 navigationItem];

            v32 = [v33 parentViewController];
            v30 = v28;
            if (!v32)
            {
              goto LABEL_16;
            }
          }
        }

        v28 = v30;
LABEL_16:
        ++v27;
        sub_374C7C(v28);
        swift_unknownObjectRelease();
      }

      while (v27 != v26);

      v3 = v67;
      v2 = v68;
      v6 = &selRef_setSubtitleText_;
      v9 = &selRef__authenticateReturningError_;
    }

    else
    {
    }
  }

  UIView.statusBarFrame.getter(v70);
  v34 = 0.0;
  v35 = 0.0;
  v36 = 0.0;
  v37 = 0.0;
  if ((v71 & 1) == 0)
  {
    v36 = *&v70[2];
    v37 = *&v70[3];
    v34 = *v70;
    v35 = *&v70[1];
  }

  v76.origin.x = v34;
  v76.origin.y = v35;
  v76.size.width = v36;
  v76.size.height = v37;
  CGRectGetMidY(v76);
  v38 = sub_AB3900();
  v39 = *(v2 + 115);
  *(v2 + 115) = v38 & 1;
  if ((v38 & 1) != v39)
  {
    v40 = sub_1D93EC();
    v41 = v40[2];
    if (v41)
    {
      v42 = (v40 + 4);
      do
      {
        v43 = *v42;
        v42 += 2;
        [v43 setNeedsStatusBarAppearanceUpdate];
        --v41;
      }

      while (v41);
    }
  }

  if ((*(v2 + 113) & 1) == 0)
  {
    v77.origin.x = v34;
    v77.origin.y = v35;
    v77.size.width = v36;
    v77.size.height = v37;
    v44 = CGRectGetMaxY(v77);
    v78.origin.x = v34;
    v78.origin.y = v35;
    v78.size.width = v36;
    v78.size.height = v37;
    v45 = CGRectGetMaxY(v78) - v4;
    if (v45 <= 0.0)
    {
      v45 = 0.0;
    }

    if (v45 >= v44)
    {
      v45 = v44;
    }

    sub_1D8988(*&v45, 0);
  }

  v46 = *(v2 + 32) - (*(v2 + 56) + *(v2 + 40));
  v47 = *(v2 + 64);
  if (!v47)
  {
    v61 = 0.0;
    if (v46 > 0.0)
    {
      goto LABEL_45;
    }

LABEL_44:
    v61 = 1.0;
    goto LABEL_45;
  }

  v48 = v47;
  v49 = [v48 v6[217]];
  if (!v49)
  {
LABEL_58:
    __break(1u);
    return;
  }

  v50 = v49;
  [v49 v9[56]];
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;

  v79.origin.x = v52;
  v79.origin.y = v54;
  v79.size.width = v56;
  v79.size.height = v58;
  v59 = CGRectGetMaxY(v79);

  v60 = v59 + 10.0;
  if (v59 + 10.0 > 20.0 && v46 <= v60)
  {
    v61 = 1.0;
    v66 = 1.0 - (v46 + -20.0) / (v60 + -20.0);
    if (v66 < 0.0)
    {
      v66 = 0.0;
    }

    if (v66 <= 1.0)
    {
      v61 = v66;
    }

    goto LABEL_45;
  }

  v61 = 0.0;
  if (v60 >= v46)
  {
    goto LABEL_44;
  }

LABEL_45:
  v62 = *(v2 + 88);
  v63 = *(v2 + 96);
  *(v2 + 88) = v61;
  *(v2 + 96) = 0;
  sub_1D8B24(v62, v63);
  if (v46 <= 20.0)
  {
    v64 = 1.0;
    v65 = v46 / -20.0 + 1.0;
    if (v65 < 0.0)
    {
      v65 = 0.0;
    }

    if (v65 <= 1.0)
    {
      v64 = v65;
    }
  }

  else
  {
    v64 = 0.0;
  }

  sub_1D8DE4(*&v64, 0);
}

uint64_t sub_1D9B38()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D9BB8()
{
  result = qword_DF54E8;
  if (!qword_DF54E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF54E8);
  }

  return result;
}

void sub_1D9C0C()
{
  if (*(v0 + 114) == 1)
  {
    sub_1D956C();
    *(v0 + 114) = 0;
  }
}

uint64_t block_copy_helper_64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D9C58(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v77[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v77[-v14];
  v16 = &v4[OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_headline];
  *v16 = 0;
  *(v16 + 1) = 0xE000000000000000;
  v17 = &v4[OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_title];
  *v17 = 0;
  *(v17 + 1) = 0xE000000000000000;
  v18 = &v4[OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_subtitle];
  *v18 = 0;
  *(v18 + 1) = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_featuredArtworkCatalog] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_isDisabled] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_artworkCachingReference] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_textDrawingCache] = 0;
  v19 = OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_textStackView;
  type metadata accessor for TextStackView();
  *&v5[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v22 = sub_80104(v21);

  *&v5[v20] = v22;
  v23 = OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_addButton;
  *&v5[v23] = [objc_allocWithZone(UIButton) init];
  v24 = &v5[OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_textComponents];
  *v24 = sub_1DB288();
  v24[1] = v25;
  v24[2] = v26;
  v24[3] = v27;
  v28 = type metadata accessor for FeaturedSongCell();
  v78.receiver = v5;
  v78.super_class = v28;
  v29 = objc_msgSendSuper2(&v78, "initWithFrame:", a1, a2, a3, a4);
  v30 = OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_artworkComponent;
  v31 = *&v29[OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_artworkComponent];
  v32 = v29;

  v33 = UIView.Corner.small.unsafeMutableAddressor();
  v34 = sub_ABA680();
  v35 = *(v34 - 8);
  (*(v35 + 16))(v15, v33, v34);
  (*(v35 + 56))(v15, 0, 1, v34);
  v36 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  sub_89FAC(v31 + v36, v13);
  swift_beginAccess();
  sub_8A01C(v15, v31 + v36);
  swift_endAccess();
  sub_75AE8(v13);
  sub_12E1C(v13, &unk_DFFBC0);
  sub_12E1C(v15, &unk_DFFBC0);

  v37 = UIView.Border.artwork.unsafeMutableAddressor();
  v38 = *v37;
  v39 = *(v37 + 8);
  v40 = v37[2];
  v41 = v40;
  sub_75E64(v38, v39, v40);

  v42 = *&v29[v30];
  *(v42 + 24) = 0x70756B636F6CLL;
  *(v42 + 32) = 0xE600000000000000;

  v43 = *&v29[v30];
  v44 = *(v43 + 80);
  v45 = *(v43 + 88);
  *(v43 + 80) = vdupq_n_s64(0x4064200000000000uLL);

  sub_75614(v44, v45);

  v46 = *&v29[v30];

  v47 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v48 = *v47;
  v49 = v47[1];
  v50 = v47[2];
  v51 = v47[3];
  v52 = *(v47 + 2);
  v53 = *(v46 + 184);
  v54 = *(v46 + 152);
  v79[1] = *(v46 + 168);
  v79[2] = v53;
  v79[0] = v54;
  *(v46 + 152) = v48;
  *(v46 + 160) = v49;
  *(v46 + 168) = v50;
  *(v46 + 176) = v51;
  *(v46 + 184) = v52;
  v55 = v50;
  v56 = v51;
  v57 = v48;
  v58 = v49;
  v59 = v55;
  v60 = v56;
  v61 = v57;
  v62 = v58;
  sub_75948(v79);
  sub_12E1C(v79, &unk_DF8690);

  v63 = *&v29[v30];
  v64 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v65 = (v63 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v66 = *(v63 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  *v65 = sub_8A12C;
  v65[1] = v64;

  sub_17654(v66);

  v67 = OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_textStackView;
  v68 = *&v32[OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_textStackView];
  v69 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  result = swift_beginAccess();
  v68[v69] = 0;
  v71 = *&v32[OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_textComponents + 24];
  if (!(v71 >> 62))
  {
    v72 = *(&dword_10 + (v71 & 0xFFFFFFFFFFFFFF8));
    if (v72)
    {
      goto LABEL_3;
    }

LABEL_10:
    v76 = [v32 contentView];
    [v76 addSubview:*(*&v29[v30] + 112)];
    [v76 addSubview:*&v32[v67]];
    [v76 addSubview:*&v32[OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_addButton]];

    return v32;
  }

  result = sub_ABB060();
  v72 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v72 >= 1)
  {
    v73 = v68;

    for (i = 0; i != v72; ++i)
    {
      if ((v71 & 0xC000000000000001) != 0)
      {
        v75 = sub_36003C(i, v71);
      }

      else
      {
        v75 = *(v71 + 8 * i + 32);
      }

      TextStackView.add(_:)(v75);
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA3C8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_headline);
  *v3 = a1;
  v3[1] = a2;

  v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_textComponents);
  v5 = String.trim()();

  swift_beginAccess();
  v4[7] = v5;

  return sub_2EB704();
}

uint64_t sub_1DA550(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_title);
  *v3 = a1;
  v3[1] = a2;

  v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_textComponents + 8);
  v5 = String.trim()();

  swift_beginAccess();
  v4[7] = v5;

  return sub_2EB704();
}

uint64_t sub_1DA6DC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_subtitle);
  *v3 = a1;
  v3[1] = a2;

  v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_textComponents + 16);
  v5 = String.trim()();

  swift_beginAccess();
  v4[7] = v5;

  return sub_2EB704();
}

void sub_1DA784(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_featuredArtworkCatalog);
  *(v1 + OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_featuredArtworkCatalog) = a1;
  v4 = a1;

  sub_74EA4(a1);
}

uint64_t sub_1DA7D8(char a1)
{
  v3 = a1 & 1;
  *(v1 + OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_isDisabled) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_textStackView);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
  result = swift_beginAccess();
  *(v4 + v5) = a1;
  v18 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
  if (*(v4 + OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled) != v3)
  {
    *(v4 + OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled) = v3;
    v7 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
    swift_beginAccess();
    v8 = *(v4 + v7);
    if (v8 >> 62)
    {
      result = sub_ABB060();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
      if (!result)
      {
        return result;
      }
    }

    v9 = result - 1;
    if (result < 1)
    {
      __break(1u);
    }

    else
    {

      v10 = 0;
      if ((v8 & 0xC000000000000001) == 0)
      {
        goto LABEL_14;
      }

LABEL_6:
      v11 = *(sub_36003C(v10, v8) + 256);
      if (v11)
      {
LABEL_7:
        v12 = v11;
        if (([v12 isHidden] & 1) == 0)
        {
          v13 = *(v4 + v18);
          v14 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
          swift_beginAccess();
          v15 = v12[v14];
          v12[v14] = v13;
          if (v13 != v15)
          {
            v16 = 1.0;
            if (v13)
            {
              UIInterfaceGetContentDisabledAlpha();
            }

            [v12 setAlpha:{v16, v18}];
          }
        }

        if (v9 != v10)
        {
          goto LABEL_16;
        }
      }

      else
      {
        while (1)
        {

          if (v9 == v10)
          {
            break;
          }

LABEL_16:
          ++v10;
          if ((v8 & 0xC000000000000001) != 0)
          {
            goto LABEL_6;
          }

LABEL_14:
          v17 = *(v8 + 8 * v10 + 32);

          v11 = *(v17 + 256);
          if (v11)
          {
            goto LABEL_7;
          }
        }
      }
    }
  }

  return result;
}

void sub_1DA9C8()
{
  v1 = v0;
  v30.receiver = v0;
  v30.super_class = type metadata accessor for FeaturedSongCell();
  objc_msgSendSuper2(&v30, "layoutSubviews");
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [v1 traitCollection];
  [v11 displayScale];
  [v1 effectiveUserInterfaceLayoutDirection];
  v31.origin.x = v4;
  v31.origin.y = v6;
  v31.size.width = v8;
  v31.size.height = v10;
  CGRectGetMinX(v31);
  sub_76368(0, 0, 1);
  v29 = v12;
  sub_ABA470();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [v1 bounds];
  sub_ABA490();
  if (sub_76B28(v21, v22, v23, v24))
  {
    v32.origin.x = v14;
    v32.origin.y = v16;
    v32.size.width = v18;
    v32.size.height = v20;
    v25 = CGRectGetWidth(v32) + 0.0 + 16.0;
  }

  v26 = *&v1[OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_textComponents + 24];
  v27 = [v1 traitCollection];
  sub_2F48A4(v26, v27, 0, 0);

  v28 = *&v1[OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_textStackView];
  [v1 bounds];
  sub_ABA490();
  [v28 setFrame:?];
}

uint64_t sub_1DACD8(void *a1)
{
  v2 = v1;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for FeaturedSongCell();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  if (a1)
  {
    [a1 displayScale];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBA30);
  v4 = [v2 traitCollection];
  [v4 displayScale];
  v6 = v5;

  LOBYTE(v8) = 0;
  sub_8A2B8();
  result = sub_AB38D0();
  if (result)
  {
    return [v2 setNeedsLayout];
  }

  return result;
}

void (*sub_1DAE44(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_textDrawingCache;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1DAECC;
}

void sub_1DAECC(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_textStackView);
    v6 = *(v4 + v3[4]);
    v7 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v8 = *(v5 + v7);
    *(v5 + v7) = v6;
    swift_retain_n();
    sub_2E6210(v8);
  }

  free(v3);
}

id sub_1DAF84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeaturedSongCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1DB0EC(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_artworkCachingReference) = a1;

  *(*(v1 + OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_artworkComponent) + 16) = a1;
}

uint64_t sub_1DB1C4(uint64_t a1)
{
  sub_1DB848(a1);
}

void (*sub_1DB1FC(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1DAE44(v2);
  return sub_A8F90;
}

uint64_t sub_1DB288()
{
  sub_89F60();
  v0 = sub_ABA550();
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v1 = qword_E718C8;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  *&v38[0] = v1;
  *(&v38[0] + 1) = v4;
  v38[1] = xmmword_AF7C20;
  v38[2] = xmmword_AF82C0;
  v39 = v0;
  v40 = 1;
  v41 = xmmword_B032A0;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(0x656E696C64616568, 0xE800000000000000, v38);
  v6 = objc_opt_self();
  v23 = v3;
  v25 = v4;
  v22 = v4;
  v21 = v0;
  sub_2F118(v38, v56);
  v24 = v5;

  v7 = [v6 preferredFontForTextStyle:UIFontTextStyleBody];
  v20 = v0;
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v8 = qword_E718D8;
  v9 = qword_E718D8;
  v10 = [v2 clearColor];
  *&v32[0] = v8;
  *(&v32[0] + 1) = v10;
  v32[1] = xmmword_AF7C20;
  v33 = 0;
  v34 = 0;
  v35 = v7;
  v36 = 2;
  v37 = xmmword_AF8290;
  swift_allocObject();
  v11 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v32);
  v19 = v9;
  v18 = v10;
  v17 = v7;
  sub_2F118(v32, v56);

  v12 = [v6 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v13 = [v2 clearColor];
  *&v26[0] = v1;
  *(&v26[0] + 1) = v13;
  v26[1] = xmmword_AF7C20;
  v27 = 0;
  v28 = 0;
  v29 = v12;
  v30 = 1;
  v31 = xmmword_AFFA30;
  swift_allocObject();
  v14 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_AF82E0;
  *(v15 + 32) = v24;
  *(v15 + 40) = v11;
  *(v15 + 48) = v14;
  sub_2F118(v26, v56);

  v42[0] = v1;
  v42[1] = v13;
  v43 = xmmword_AF7C20;
  v44 = 0;
  v45 = 0;
  v46 = v12;
  v47 = 1;
  v48 = xmmword_AFFA30;
  sub_2F174(v42);
  v49[0] = v8;
  v49[1] = v10;
  v50 = xmmword_AF7C20;
  v51 = 0;
  v52 = 0;
  v53 = v7;
  v54 = 2;
  v55 = xmmword_AF8290;
  sub_2F174(v49);
  v56[0] = v1;
  v56[1] = v25;
  v57 = xmmword_AF7C20;
  v58 = xmmword_AF82C0;
  v59 = v20;
  v60 = 1;
  v61 = xmmword_B032A0;
  sub_2F174(v56);

  return v24;
}

double sub_1DB700(void *a1, double a2)
{
  sub_1DB288();
  v5 = v4;
  type metadata accessor for CGSize(0);
  if ((sub_AB38D0() & 1) == 0)
  {
    type metadata accessor for UIEdgeInsets(0);
    sub_AB38D0();
  }

  sub_2F48A4(v5, a1, 0, 0);

  return a2;
}

uint64_t sub_1DB848(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_textDrawingCache;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_retain_n();

  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_textStackView);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *(v4 + v5) = a1;

  sub_2E6210(v6);
}

void sub_1DB904()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_headline);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_title);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_subtitle);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_featuredArtworkCatalog) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_isDisabled) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_artworkCachingReference) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_textDrawingCache) = 0;
  v5 = OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_textStackView;
  type metadata accessor for TextStackView();
  *(v1 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v8 = sub_80104(v7);

  *(v1 + v6) = v8;
  v9 = OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_addButton;
  *(v1 + v9) = [objc_allocWithZone(UIButton) init];
  v10 = (v1 + OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_textComponents);
  *v10 = sub_1DB288();
  v10[1] = v11;
  v10[2] = v12;
  v10[3] = v13;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_1DBA84()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

id sub_1DBABC()
{
  v1 = v0;
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  __chkstk_darwin(v3 - 8);
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = NSUserDefaults.showAllTVShows.getter();

  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v7 = qword_DF5578;
  *&v1[v7] = [objc_opt_self() kindWithVariants:v6];
  *&v1[qword_DF5580] = 0;
  *&v1[qword_DF5588] = 0;
  *&v1[qword_DF5590] = _swiftEmptyArrayStorage;
  *&v1[qword_DF5598] = 0;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for EpisodesViewController();
  v8 = objc_msgSendSuper2(&v12, "init");
  sub_3B4C14(1);
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v9 = sub_AB9260();

  [v8 setTitle:v9];

  v10 = sub_AB9260();
  [v8 setPlayActivityFeatureName:v10];

  return v8;
}

id sub_1DBD4C()
{
  result = sub_1DBD6C();
  qword_E71188 = result;
  return result;
}

id sub_1DBD6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF8820;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_AF85F0;
  *(v6 + 32) = sub_AB92A0();
  *(v6 + 40) = v7;
  *(v6 + 48) = sub_AB92A0();
  *(v6 + 56) = v8;
  isa = sub_AB9740().super.isa;
  v10 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v10;
  sub_96EA4(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &unk_DE8E80);
  v11 = objc_allocWithZone(MPPropertySet);
  v12 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v13 = sub_AB8FD0().super.isa;

  v14 = [v11 initWithProperties:v12 relationships:v13];

  sub_13C80(0, &unk_DE9C00);
  v15 = sub_2BAFF8();
  v16 = [v14 propertySetByCombiningWithPropertySet:v15];

  v17 = sub_10F414();
  v18 = [v16 propertySetByCombiningWithPropertySet:v17];

  return v18;
}

id sub_1DC028(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + qword_DFE2F0);
  if (!v10)
  {
    return 0;
  }

  sub_15F84(a1, v5, &unk_DE8E20);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v11 = v10;
    sub_12E1C(v5, &unk_DE8E20);
    v12 = 0;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    result = [v10 results];
    if (!result)
    {
      goto LABEL_16;
    }

    v15 = result;
    isa = sub_AB3770().super.isa;
    v17 = [v15 itemAtIndexPath:isa];
    (*(v7 + 8))(v9, v6);

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (!v12)
    {
      swift_unknownObjectRelease();
    }

    v18 = v12;
  }

  result = [v10 request];
  if (result)
  {
    v19 = result;
    if (v12)
    {
      v20 = [v12 identifiers];
    }

    else
    {
      v20 = 0;
    }

    v13 = [v19 playbackIntentWithStartItemIdentifiers:v20];

    return v13;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void sub_1DC368(void *a1, uint64_t a2, uint64_t a3, const char **a4, void (*a5)(uint64_t))
{
  v12.receiver = a1;
  v12.super_class = type metadata accessor for EpisodesViewController();
  v8 = *a4;
  v9 = v12.receiver;
  objc_msgSendSuper2(&v12, v8, a3);
  v10 = *&v9[qword_DF5580];
  if (v10)
  {
    v11 = v10;
    a5(a3);

    v9 = v11;
  }
}

uint64_t sub_1DC408()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for EpisodesViewController();
  objc_msgSendSuper2(&v7, "viewDidLoad");
  v1 = *&v0[qword_DF5580];
  if (v1)
  {
    v2 = v1;
    JSComponentController.loadIfNeeded()();
  }

  v3 = sub_1DC6F0();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = *(v3 + 88);
  *(v3 + 88) = sub_1DF940;
  *(v3 + 96) = v4;

  sub_17654(v5);
}

void sub_1DC4E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1DC980();
  }
}

void sub_1DC534(void *a1)
{
  v1 = a1;
  sub_1DC408();
}

void sub_1DC57C(uint64_t a1)
{
  v2 = v1;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for EpisodesViewController();
  objc_msgSendSuper2(&v16, "traitCollectionDidChange:", a1);
  v4 = [v2 traitCollection];
  v5 = UITraitCollection.mediaPickerConfiguration.getter();

  if (v5)
  {
    v6 = objc_allocWithZone(type metadata accessor for JSMediaPickerEnvironment());
    v7 = v5;
    v8 = JSMediaPickerEnvironment.init(configuration:)(v7);
    v9 = *&v2[qword_DF5580];
    if (v9)
    {
      v10 = v9;
      v11 = v8;
      v12 = JSComponentController.environment.modify(v15);
      v14 = *v13;
      *v13 = v8;

      v12(v15, 0);
    }
  }
}

void sub_1DC684(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1DC57C(a3);
}

uint64_t sub_1DC6F0()
{
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_AB9250();
  __chkstk_darwin(v2 - 8);
  v3 = qword_DF5588;
  if (*&v0[qword_DF5588])
  {
    v4 = *&v0[qword_DF5588];
  }

  else
  {
    sub_AB91E0();
    sub_AB3550();
    v5 = sub_AB9320();
    v7 = v6;
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v8 = v0;
    v4 = sub_4309D4(v5, v7);

    *&v0[v3] = v4;
  }

  return v4;
}

uint64_t sub_1DC87C()
{
  v1 = v0;
  sub_1DEA90();
  v2 = qword_DFE2F0;
  v3 = *(v0 + qword_DFE2F0);
  if (v3)
  {
    LOBYTE(v3) = [v3 isEmpty];
  }

  sub_3E2E84(v3);

  v4 = sub_1DC6F0();
  v5 = *(v1 + v2);
  if (v5 && ([v5 isEmpty] & 1) == 0)
  {
    v13 = *(v4 + 64);
    *(v4 + 64) = 1;
    if (v13)
    {
      goto LABEL_11;
    }

LABEL_10:
    sub_430320();
    goto LABEL_11;
  }

  v6 = (*(*(v1 + qword_DF5588) + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6 & 0xFFFFFFFFFFFFLL;
    if ((v7 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v9 = v8;
    }

    v10 = v9 != 0;
    v11 = *(v4 + 64);
    *(v4 + 64) = v10;
    if (v11 == v10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v14 = *(v4 + 64);
  *(v4 + 64) = 0;
  if (v14)
  {
    goto LABEL_10;
  }

LABEL_11:
}

void sub_1DC980()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v3 = *&v0[qword_DF5578];
  v4 = v2;
  [v4 setItemKind:v3];
  v5 = sub_AB9260();
  [v4 setLabel:v5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_AF4EC0;
  *(v6 + 32) = sub_AB92A0();
  *(v6 + 40) = v7;
  isa = sub_AB9740().super.isa;
  v9 = [objc_opt_self() propertySetWithProperties:isa];

  [v4 setSectionProperties:v9];
  if (qword_DE6998 != -1)
  {
    swift_once();
  }

  [v4 setItemProperties:qword_E71188];

  if (*&v1[qword_DF5590] >> 62)
  {
    sub_13C80(0, &qword_DEDE20);

    sub_ABAFF0();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_ABB3E0();
    sub_13C80(0, &qword_DEDE20);
  }

  sub_13C80(0, &qword_DEDE20);
  v10 = sub_AB9740().super.isa;

  [v4 setScopedContainers:v10];

  if (*(*(sub_1DC6F0() + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text + 8))
  {

    v11 = sub_AB9260();
  }

  else
  {
    v11 = 0;
  }

  [v4 setFilterText:v11];

  v12 = [v1 traitCollection];
  UITraitCollection.configure<A, B>(libraryRequest:)(v4);

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15[4] = sub_1DF648;
  v15[5] = v13;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_151E0;
  v15[3] = &block_descriptor_65;
  v14 = _Block_copy(v15);

  [v4 performWithResponseHandler:v14];
  _Block_release(v14);
}

uint64_t sub_1DCD4C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_13C80(0, &qword_DE8ED0);
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a1;
  v6 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9D320, v5);
}

char *sub_1DCDF0(_BYTE *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  __chkstk_darwin(v4 - 8);
  v6 = &v41 - v5;
  v7 = a1[OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_layoutStyle];
  a1[OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_layoutStyle] = 1;
  if ((v7 & 1) == 0)
  {
    [a1 setNeedsLayout];
  }

  v8 = [a2 title];
  if (v8)
  {
    v9 = v8;
    v10 = sub_AB92A0();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = &a1[OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_title];
  *v13 = v10;
  v13[1] = v12;

  v14 = *&a1[OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_textComponents];
  v15 = 1;
  swift_beginAccess();
  *(v14 + 112) = v10;
  *(v14 + 120) = v12;

  sub_2EB704();

  v16 = [a2 releaseDate];
  if (v16)
  {
    v17 = v16;
    sub_AB33F0();

    v15 = 0;
  }

  v18 = sub_AB3430();
  (*(*(v18 - 8) + 56))(v6, v15, 1, v18);
  v19 = OBJC_IVAR____TtCC16MusicApplication24MusicVideoHorizontalCell21TVShowEpisodeListCell_releaseDate;
  swift_beginAccess();
  sub_2F0A8(v6, &a1[v19]);
  swift_endAccess();
  sub_49CCF4();
  sub_12E1C(v6, &unk_E01230);
  v20 = sub_4A3F1C();
  v21 = sub_10AC20(a2);

  v22 = [a2 shouldVisuallyDisableFor:v21];
  v23 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled;
  a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled] = v22;
  if (a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_shouldDisableTextStackView] != 1)
  {
    goto LABEL_27;
  }

  v24 = v22;
  v25 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
  v26 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
  swift_beginAccess();
  v25[v26] = v24;
  v43 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
  v44 = v25;
  if (v24 == v25[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled])
  {
    goto LABEL_27;
  }

  v27 = v44;
  v44[v43] = v24;
  v28 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
  swift_beginAccess();
  v29 = *&v27[v28];
  if (v29 >> 62)
  {
    result = sub_ABB060();
    if (!result)
    {
      goto LABEL_27;
    }
  }

  else
  {
    result = *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      goto LABEL_27;
    }
  }

  v42 = v23;
  v31 = result - 1;
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v41 = v44;

  v32 = 0;
  if ((v29 & 0xC000000000000001) == 0)
  {
    goto LABEL_22;
  }

LABEL_14:
  v33 = *(sub_36003C(v32, v29) + 256);
  if (v33)
  {
LABEL_15:
    v34 = v33;
    if (([v34 isHidden] & 1) == 0)
    {
      v35 = v44[v43];
      v36 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
      swift_beginAccess();
      v37 = v34[v36];
      v34[v36] = v35;
      if (v35 != v37)
      {
        v38 = 1.0;
        if (v35)
        {
          UIInterfaceGetContentDisabledAlpha();
        }

        [v34 setAlpha:v38];
      }
    }

    if (v31 != v32)
    {
      goto LABEL_24;
    }
  }

  else
  {
    while (1)
    {

      if (v31 == v32)
      {
        break;
      }

LABEL_24:
      ++v32;
      if ((v29 & 0xC000000000000001) != 0)
      {
        goto LABEL_14;
      }

LABEL_22:
      v39 = *(v29 + 8 * v32 + 32);

      v33 = *(v39 + 256);
      if (v33)
      {
        goto LABEL_15;
      }
    }
  }

  v23 = v42;
LABEL_27:
  if (a1[v23])
  {
    v40 = 0;
  }

  else
  {
    v40 = 3;
  }

  return [a1 setSelectionStyle:v40];
}

id sub_1DD25C(void *a1, uint64_t a2, uint64_t a3)
{
  *&v39 = a3;
  v43 = a1;
  v5 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v5);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PlaybackIntentDescriptor(0);
  v40 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v42 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v10;
  __chkstk_darwin(v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v13 - 8);
  v15 = &v38 - v14;
  v16 = sub_AB3820();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v15, a2, v16);
  (*(v17 + 56))(v15, 0, 1, v16);
  v18 = sub_1DC028(v15);
  result = sub_12E1C(v15, &unk_DE8E20);
  if (v18)
  {
    *v7 = v18;
    swift_storeEnumTagMultiPayload();
    v45 = 0;
    memset(v44, 0, sizeof(v44));
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    v20 = v3;
    v21 = v18;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v7, v44, 3, 0, 0, 1, 0, 1, v12, v3, &v50);
    result = [v20 loadViewIfNeeded];
    v22 = *&v20[qword_DFE2F8];
    if (v22)
    {
      v23 = v22;
      isa = sub_AB3770().super.isa;
      v25 = [v23 cellForItemAtIndexPath:isa];

      if (v25)
      {
        sub_D5958(v46);
        v39 = v46[0];
        v38 = v46[1];
        v26 = v47;
        v27 = v48;
        v28 = v49;

        v29 = v39;
        v30 = v38;
      }

      else
      {
        v26 = 0;
        v28 = 0;
        v27 = 255;
        v30 = 0uLL;
        v29 = 0uLL;
      }

      v50 = v29;
      v51 = v30;
      v52 = v26;
      v53 = v27;
      v54 = v28;
      v31 = v20;
      PresentationSource.init(viewController:position:)(v31, &v50, v44);
      v32 = sub_4A3F1C();
      v33 = *&v31[qword_DFE2F0];
      v34 = v42;
      sub_1DF450(v12, v42, type metadata accessor for PlaybackIntentDescriptor);
      v35 = (*(v40 + 80) + 16) & ~*(v40 + 80);
      v36 = swift_allocObject();
      sub_140E58(v34, v36 + v35);
      v37 = v33;
      sub_1109D4(v43, v33, 0, 1, v44, sub_191468, v36);

      sub_1611C(v44);
      sub_1DF5E8(v12, type metadata accessor for PlaybackIntentDescriptor);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1DD6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_AB35C0();
  __chkstk_darwin(v10 - 8);
  v11 = sub_AB9250();
  __chkstk_darwin(v11 - 8);
  if (sub_AB92A0() == a2 && v12 == a3)
  {
  }

  else
  {
    v14 = sub_ABB3C0();

    if ((v14 & 1) == 0)
    {

      sub_3DE1D8(a1, a4);
      return;
    }
  }

  type metadata accessor for AccessoryReusableView();
  static UICollectionReusableView.reuseIdentifier.getter();
  v15 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();

  v16 = *(v5 + qword_DF5580);
  if (!v16)
  {
    return;
  }

  v17 = *(v16 + OBJC_IVAR____TtC11MusicJSCore38JSLibraryCollectionComponentController_LibraryCollectionViewModel);
  v18 = OBJC_IVAR____TtC11MusicJSCore28JSLibraryCollectionViewModel_relatedContentLink;
  swift_beginAccess();
  v19 = *(v17 + v18);
  if (!v19)
  {
    return;
  }

  v20 = *(v5 + direct field offset for BrowseCollectionViewController.textDrawingCache);
  v21 = qword_DF4040;
  swift_beginAccess();
  *&v15[v21] = v20;
  swift_retain_n();
  v22 = v15;
  v55 = v19;

  v23 = qword_DF4010;
  v24 = *&v22[qword_DF4010];
  ObjectType = swift_getObjectType();
  v26 = swift_conformsToProtocol2();
  if (!v26)
  {
    __break(1u);
    goto LABEL_21;
  }

  v27 = v26;
  v28 = *(v26 + 16);
  v29 = v24;
  v28(v20, ObjectType, v27);

  sub_AB91E0();
  sub_AB3550();
  v30 = sub_AB9320();
  v32 = v31;
  v33 = *&v22[v23];
  v34 = &v33[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_title];
  *v34 = v30;
  v34[1] = v31;
  v35 = v33;

  v36 = &v35[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textComponents];
  swift_beginAccess();
  v37 = *(v36 + 1);
  swift_beginAccess();
  *(v37 + 112) = v30;
  *(v37 + 120) = v32;

  sub_2EB704();

  v38 = objc_opt_self();
  v39 = sub_AB9260();
  v40 = [v38 kitImageNamed:v39];

  if (!v40)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v41 = [v40 imageWithRenderingMode:2];

  v42 = [v41 imageFlippedForRightToLeftLayoutDirection];
  v43 = *&v22[v23];
  v44 = *&v43[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_accessoryImageView];
  v45 = v43;
  v46 = v42;
  [v44 setImage:v46];
  [v45 setNeedsLayout];

  v47 = v22[qword_DF4028];
  v22[qword_DF4028] = 0;
  if (v47 == 1)
  {
    [*&v22[qword_DF4070] setHidden:0];
  }

  v48 = v22[qword_DF4020];
  v22[qword_DF4020] = 1;
  if ((v48 & 1) == 0)
  {
    v49 = *&v22[qword_DF4068];
    [v49 setHidden:1];
  }

  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = swift_allocObject();
  *(v51 + 2) = v50;
  *(v51 + 3) = v22;
  *(v51 + 4) = v55;
  v52 = &v22[qword_DF4018];
  v53 = *&v22[qword_DF4018];
  *v52 = sub_1DF43C;
  v52[1] = v51;
  v54 = v22;
  sub_17654(v53);
}

void sub_1DDC9C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_AB3430();
  v63 = *(v6 - 8);
  v64 = v6;
  __chkstk_darwin(v6);
  v62 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB3820();
  v68 = *(v8 - 8);
  __chkstk_darwin(v8);
  v61 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v69);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v60 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v60 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v21 - 8);
  v23 = &v60 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v67 = a4;
  v25 = Strong;
  [a3 bounds];
  v84[0] = a3;
  v84[1] = v26;
  v84[2] = v27;
  v84[3] = v28;
  v84[4] = v29;
  v85 = 0;
  PresentationSource.Position.init(source:permittedArrowDirections:)(v84, 15, v76);
  v80[0] = v76[0];
  v80[1] = v76[1];
  v81 = v77;
  v82 = v78;
  v83 = v79;
  v30 = a3;
  v66 = v25;
  PresentationSource.init(viewController:position:)(v25, v80, v75);
  v65 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v31 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v73, 0, sizeof(v73));
  v74 = 0;
  (*(*(v31 - 8) + 56))(v23, 1, 1, v31);
  sub_15F84(v73, &v70, &unk_DE8E30);
  if (*(&v71 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
    v32 = _s30CollectionViewSelectionHandlerVMa();
    v33 = swift_dynamicCast();
    v34 = *(v32 - 8);
    (*(v34 + 56))(v14, v33 ^ 1u, 1, v32);
    v35 = (*(v34 + 48))(v14, 1, v32);
    v36 = v68;
    if (v35 != 1)
    {
      (*(v68 + 16))(v20, &v14[*(v32 + 20)], v8);
      sub_1DF5E8(v14, _s30CollectionViewSelectionHandlerVMa);
      v37 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    sub_12E1C(&v70, &unk_DE8E30);
    v38 = _s30CollectionViewSelectionHandlerVMa();
    (*(*(v38 - 8) + 56))(v14, 1, 1, v38);
    v36 = v68;
  }

  sub_12E1C(v14, &qword_E037A0);
  v37 = 1;
LABEL_7:
  (*(v36 + 56))(v20, v37, 1, v8);
  v39 = swift_unknownObjectWeakLoadStrong();
  if (v39 && (v40 = v39, sub_12B2FC(), v42 = v41, v44 = v43, v40, v42))
  {
    ObjectType = swift_getObjectType();
    (*(v44 + 8))(ObjectType, v44);
    v47 = v46;
    swift_unknownObjectRelease();
    sub_15F84(v20, v18, &unk_DE8E20);
    if ((*(v36 + 48))(v18, 1, v8) == 1)
    {
      sub_12E1C(v18, &unk_DE8E20);
      v70 = 0u;
      v71 = 0u;
      v72 = 0;
    }

    else
    {
      (*(v36 + 32))(v61, v18, v8);
      sub_2D668();
      sub_ABAD10();
    }

    v49 = swift_getObjectType();
    v50 = v62;
    sub_3B8F68();
    v48 = sub_21CCAC(1, v50, &v70, v49, v47);
    (*(v63 + 8))(v50, v64);
    sub_12E1C(&v70, &qword_DF2BD0);
    sub_12E1C(v20, &unk_DE8E20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v20, &unk_DE8E20);
    v48 = 0;
  }

  v51 = swift_unknownObjectWeakLoadStrong();
  if (v51)
  {
    v52 = v51;
    v53 = v23;
    sub_12AFE8();
    v55 = v54;
  }

  else
  {
    v53 = v23;
    v55 = 0;
  }

  sub_15F28(v75, &v70);
  sub_15F84(v73, (v11 + 104), &unk_DE8E30);
  v56 = v69;
  sub_15F84(v53, &v11[*(v69 + 28)], &unk_DEA510);
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  *(v11 + 8) = 1;
  *(v11 + 9) = 0;
  *(v11 + 10) = 0;
  *(v11 + 11) = 0;
  sub_2D594(&v70, v11);
  *(v11 + 12) = 0;
  v57 = *v65;
  *(&v71 + 1) = v56;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v70);
  sub_1DF450(v11, boxed_opaque_existential_0, _s23MusicPerformanceContextVMa);
  v59 = v57;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v67, 0, v48, v55, &v70);

  sub_12E1C(v53, &unk_DEA510);
  sub_12E1C(v73, &unk_DE8E30);
  sub_1611C(v75);
  sub_1DF5E8(v11, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v70, &unk_DE8E40);
}

id sub_1DE4EC(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB92A0();
  v15 = v14;
  sub_AB3790();
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a1;
  sub_1DD6E0(v16, v13, v15, v12);
  v21 = v20;

  (*(v10 + 8))(v12, v9);

  return v21;
}

double sub_1DE658(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_1DF7B4(v6);

  return v9;
}

void sub_1DE6C0(uint64_t a1, void *a2, uint64_t a3)
{
  type metadata accessor for MusicVideoHorizontalCell.TVShowEpisodeListCell(0);
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = a2;
    v9 = [v7 tableViewCell];
    if (!v9)
    {
      __break(1u);
      return;
    }

    v10 = v9;
    [v9 setSeparatorStyle:(UICollectionView.isLast(indexPath:)() & 1) == 0];
  }

  sub_3B38B0(a1, a2, a3);
}

void sub_1DE798(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  type metadata accessor for MusicVideoHorizontalCell.TVShowEpisodeListCell(0);
  v13 = swift_dynamicCastClass();
  v14 = a4;
  v15 = v14;
  if (!v13)
  {
    v20 = a3;
    v21 = a5;
    v22 = a1;
    goto LABEL_5;
  }

  v24 = v14;
  a3;
  v16 = a5;
  v17 = a1;
  v18 = [v13 tableViewCell];
  if (v18)
  {
    v19 = v18;
    [v18 setSeparatorStyle:(UICollectionView.isLast(indexPath:)() & 1) == 0];

LABEL_5:
    sub_3B38B0(a3, v15, v12);

    (*(v10 + 8))(v12, v9);
    return;
  }

  __break(1u);
}

void sub_1DE94C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_3B41F4(v11, v10);
  isa = sub_AB3770().super.isa;
  [v11 deselectItemAtIndexPath:isa animated:1];
  (*(v8 + 8))(v10, v7);
}

void *sub_1DEA90()
{
  v1 = qword_DF5598;
  if (*&v0[qword_DF5598])
  {
    v2 = *&v0[qword_DF5598];
  }

  else
  {
    v2 = sub_1DEAF8(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

void *sub_1DEAF8(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v2 = result;
    type metadata accessor for LibraryNoContentStateController();
    swift_allocObject();
    v3 = sub_3E2914(v2);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v3[6];
    v3[6] = sub_9D2B0;
    v3[7] = v4;

    sub_17654(v5);

    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = v3[27];
    v3[27] = sub_1DF448;
    v3[28] = v6;

    sub_17654(v7);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEC34@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_AB9250();
  __chkstk_darwin(v5 - 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v7 = Strong;
  v8 = sub_1DC6F0();

  v9 = (*(v8 + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  v10 = v9[1];
  if (!v10)
  {

LABEL_10:
    v20 = *(a1 + 16);
    v50 = *a1;
    v51 = v20;
    v21 = *(a1 + 48);
    v34 = *(a1 + 32);
    v35 = v21;
    v36 = *(a1 + 64);
    v37 = *(a1 + 80);
    sub_576EC(a1, &v44);
    sub_AB91E0();
    sub_AB3550();
    v22 = sub_AB9320();
    v24 = v23;
    sub_12E1C(&v50, &unk_DEE6F0);
    sub_AB91E0();
    sub_AB3550();
    v25 = sub_AB9320();
    v27 = v26;
    sub_12E1C(&v51, &unk_DEE6F0);
    *&v38 = v22;
    *(&v38 + 1) = v24;
    *&v39 = v25;
    *(&v39 + 1) = v27;
    v40 = v34;
    v41 = v35;
    v42 = v36;
    v43 = v37;
    *&v44 = v22;
    *(&v44 + 1) = v24;
    *&v45 = v25;
    *(&v45 + 1) = v27;
    v49 = v37;
    v47 = v35;
    v48 = v36;
    v46 = v34;
    sub_576EC(&v38, &v33);
    result = sub_57748(&v44);
    v13 = v43;
    v17 = v41;
    v19 = v42;
    v15 = v39;
    v18 = v40;
    v16 = v38;
    goto LABEL_11;
  }

  v11 = *v9;

  v12 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v12 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
    goto LABEL_10;
  }

  if (qword_DE6BD0 != -1)
  {
    swift_once();
  }

  v47 = xmmword_E717A8;
  v48 = xmmword_E717B8;
  v45 = xmmword_E71788;
  v46 = xmmword_E71798;
  v44 = xmmword_E71778;
  v13 = qword_E717C8;
  v49 = qword_E717C8;
  v31 = xmmword_E717A8;
  v32 = xmmword_E717B8;
  v29 = xmmword_E71788;
  v30 = xmmword_E71798;
  v28 = xmmword_E71778;
  result = sub_576EC(&v44, &v38);
  v16 = v28;
  v15 = v29;
  v18 = v30;
  v17 = v31;
  v19 = v32;
LABEL_11:
  *a2 = v16;
  *(a2 + 16) = v15;
  *(a2 + 32) = v18;
  *(a2 + 48) = v17;
  *(a2 + 64) = v19;
  *(a2 + 80) = v13;
  return result;
}

uint64_t sub_1DEF78()
{
}

id sub_1DEFE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EpisodesViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1DF020(uint64_t a1)
{
}

uint64_t type metadata accessor for EpisodesViewController()
{
  result = qword_DF55C8;
  if (!qword_DF55C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DF180()
{
  v1 = *v0;
  [*v0 loadViewIfNeeded];
  v2 = *&v1[qword_DFE2F8];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 traitCollection];
    [v3 bounds];
  }

  else
  {
    __break(1u);
  }
}

char *sub_1DF23C(void *a1)
{
  v3 = [objc_allocWithZone(v1) init];
  v4 = objc_allocWithZone(type metadata accessor for JSLibraryCollectionViewModel());
  v5 = v3;
  v6 = a1;
  v7 = JSLibraryCollectionViewModel.init(scopingModel:)(v6);
  v8 = &v7[OBJC_IVAR____TtC11MusicJSCore28JSLibraryCollectionViewModel_delegate];
  swift_beginAccess();
  *(v8 + 1) = &off_D01280;
  swift_unknownObjectWeakAssign();
  objc_allocWithZone(type metadata accessor for JSLibraryCollectionComponentController());
  v9 = v7;
  v10 = JSLibraryCollectionComponentController.init(viewModel:)(v9);
  v11 = *&v5[qword_DF5580];
  *&v5[qword_DF5580] = v10;

  v12 = sub_AB9260();
  [v5 setTitle:v12];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_AF82B0;
  *(v13 + 32) = v6;

  *&v5[qword_DF5590] = v13;

  return v5;
}

uint64_t sub_1DF3BC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DF3F4()
{

  return swift_deallocObject();
}

uint64_t sub_1DF450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF4B8()
{
  v1 = type metadata accessor for PlaybackIntentDescriptor(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = (v0 + v2);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_AB4C10();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + *(v1 + 28);
  if (*(v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v6 = v3 + *(v1 + 32);
  if (*(v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return swift_deallocObject();
}

uint64_t sub_1DF5E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_65(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DF668()
{

  return swift_deallocObject();
}

void sub_1DF6A8()
{
  v1 = v0;
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = NSUserDefaults.showAllTVShows.getter();

  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  v5 = qword_DF5578;
  *(v1 + v5) = [objc_opt_self() kindWithVariants:v4];
  *(v1 + qword_DF5580) = 0;
  *(v1 + qword_DF5588) = 0;
  *(v1 + qword_DF5590) = _swiftEmptyArrayStorage;
  *(v1 + qword_DF5598) = 0;
  sub_ABAFD0();
  __break(1u);
}

double sub_1DF7B4(void *a1)
{
  v2 = *&v1[qword_DF5580];
  v3 = 0.0;
  if (v2)
  {
    v5 = *(v2 + OBJC_IVAR____TtC11MusicJSCore38JSLibraryCollectionComponentController_LibraryCollectionViewModel);
    v6 = OBJC_IVAR____TtC11MusicJSCore28JSLibraryCollectionViewModel_relatedContentLink;
    swift_beginAccess();
    if (*(v5 + v6))
    {
      v7 = [v1 traitCollection];
      [a1 bounds];
      v9 = v8;
      v11 = v10;
      v12 = type metadata accessor for CollectionAccessoryView();
      v13 = swift_conformsToProtocol2();
      if (v13 && v12)
      {
        (*(v13 + 8))(v7, v12, v13, v9, v11);
        v3 = v14;
      }

      else
      {
        v15 = [objc_opt_self() defaultMetrics];
        sub_AB9EF0();
        v3 = v16;
      }
    }
  }

  return v3;
}

uint64_t TintColorObservingView.tintColorDidChangeCallback.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication22TintColorObservingView_tintColorDidChangeCallback);
  swift_beginAccess();
  v2 = *v1;
  sub_307CC(*v1);
  return v2;
}

uint64_t TintColorObservingView.tintColorDidChangeCallback.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16MusicApplication22TintColorObservingView_tintColorDidChangeCallback);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_17654(v6);
}

Swift::Void __swiftcall TintColorObservingView.tintColorDidChange()()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for TintColorObservingView();
  objc_msgSendSuper2(&v5, "tintColorDidChange");
  v1 = &v0[OBJC_IVAR____TtC16MusicApplication22TintColorObservingView_tintColorDidChangeCallback];
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {

    v3 = [v0 tintColor];
    if (v3)
    {
      v4 = v3;
      v2();

      sub_17654(v2);
    }

    else
    {
      __break(1u);
    }
  }
}

id TintColorObservingView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication22TintColorObservingView_tintColorDidChangeCallback];
  v10 = type metadata accessor for TintColorObservingView();
  *v9 = 0;
  *(v9 + 1) = 0;
  v12.receiver = v4;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
}

id TintColorObservingView.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC16MusicApplication22TintColorObservingView_tintColorDidChangeCallback];
  v4 = type metadata accessor for TintColorObservingView();
  *v3 = 0;
  *(v3 + 1) = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  return v5;
}

id TintColorObservingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TintColorObservingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1DFE24(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_headline];
  *v9 = 0;
  *(v9 + 1) = 0xE000000000000000;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_title];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_subtitle];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_descriptionText];
  *v12 = 0;
  *(v12 + 1) = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_badgeView] = 0;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_textComponents];
  sub_1E215C(v38);
  v14 = v38[1];
  *v13 = v38[0];
  *(v13 + 1) = v14;
  *(v13 + 4) = v39;
  v37.receiver = v4;
  v37.super_class = type metadata accessor for FeaturedShowcaseCell();
  v15 = objc_msgSendSuper2(&v37, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 layer];
  [v16 setAllowsGroupOpacity:0];

  v17 = [v15 layer];
  [v17 setAllowsGroupBlending:0];

  if (qword_DE69A0 != -1)
  {
    swift_once();
  }

  v18 = xmmword_DF5C70;
  v19 = qword_DF5C80;
  v20 = unk_DF5C88;
  v21 = &v15[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets];
  swift_beginAccess();
  *v21 = v18;
  *(v21 + 2) = v19;
  *(v21 + 3) = v20;
  type metadata accessor for UIEdgeInsets(0);
  v22 = &v15[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets];
  v35 = *&v15[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets];
  v36 = *&v15[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets + 16];
  v32 = v18;
  v33 = v19;
  v34 = v20;
  if (sub_AB38D0())
  {
    v23 = *(v21 + 1);
    *v22 = *v21;
    *(v22 + 1) = v23;
    sub_35D498();
    [v15 setNeedsLayout];
  }

  v24 = *&v15[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];

  v25 = &v15[OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_textComponents];
  result = swift_beginAccess();
  v27 = *(v25 + 4);
  if (!(v27 >> 62))
  {
    v28 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
    if (v28)
    {
      goto LABEL_7;
    }

LABEL_15:

LABEL_16:
    v31 = [v15 traitCollection];
    swift_beginAccess();
    sub_1E0B78(v31);
    swift_endAccess();

    sub_1E1A7C();
    return v15;
  }

  result = sub_ABB060();
  v28 = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (v28 >= 1)
  {

    for (i = 0; i != v28; ++i)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v30 = sub_36003C(i, v27);
      }

      else
      {
        v30 = *(v27 + 8 * i + 32);
      }

      TextStackView.add(_:)(v30);
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E0214(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_headline];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_headline];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_headline + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_textComponents;
    swift_beginAccess();
    v10 = *&v2[v9];

    v11 = String.trim()();

    swift_beginAccess();
    v10[7] = v11;

    sub_2EB704();

    [v2 setNeedsLayout];
  }
}

uint64_t sub_1E034C(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_headline] != result || *&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_headline + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_textComponents;
      swift_beginAccess();
      v5 = *&v2[v4];

      v6 = String.trim()();

      swift_beginAccess();
      v5[7] = v6;

      sub_2EB704();

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_1E046C(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_title];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_title];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_title + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = &v2[OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_textComponents];
    swift_beginAccess();
    v10 = *(v9 + 1);

    v11 = String.trim()();

    swift_beginAccess();
    v10[7] = v11;

    sub_2EB704();

    [v2 setNeedsLayout];
  }
}

uint64_t sub_1E05A8(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_title] != result || *&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_title + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = &v2[OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_textComponents];
      swift_beginAccess();
      v5 = *(v4 + 1);

      v6 = String.trim()();

      swift_beginAccess();
      v5[7] = v6;

      sub_2EB704();

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_1E06CC(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_subtitle];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_subtitle];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_subtitle + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = &v2[OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_textComponents];
    swift_beginAccess();
    v10 = *(v9 + 2);

    v11 = String.trim()();

    swift_beginAccess();
    v10[7] = v11;

    sub_2EB704();

    [v2 setNeedsLayout];
  }
}

uint64_t sub_1E0808(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_subtitle] != result || *&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_subtitle + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = &v2[OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_textComponents];
      swift_beginAccess();
      v5 = *(v4 + 2);

      v6 = String.trim()();

      swift_beginAccess();
      v5[7] = v6;

      sub_2EB704();

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_1E092C(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  v9 = sub_AB92A0();
  v10 = &a1[*a4];
  v11 = *v10;
  v12 = v10[1];
  *v10 = v9;
  v10[1] = v13;
  v14 = a3;
  v15 = a1;
  a5(v11, v12);
}

uint64_t sub_1E09C0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_descriptionText);
  v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_descriptionText);
  v5 = *(v2 + OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_descriptionText + 8);
  *v3 = a1;
  v3[1] = a2;
  sub_1E0A10(v4, v5);
}

id sub_1E0A10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 description];
  if (sub_AB92A0() == a1 && v7 == a2)
  {
  }

  else
  {
    v9 = sub_ABB3C0();

    if ((v9 & 1) == 0)
    {
      v11 = &v3[OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_textComponents];
      swift_beginAccess();
      v12 = *(v11 + 3);

      v13 = String.trim()();

      swift_beginAccess();
      v12[7] = v13;

      sub_2EB704();

      return [v3 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_1E0B78(void *a1)
{
  sub_89F60();
  v2 = sub_ABA580();
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v3 = qword_E718C8;
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  v7 = v5;
  v60 = v6;
  v59 = v2;
  if ([a1 horizontalSizeClass] == &dword_0 + 1 || (v8 = objc_msgSend(a1, "preferredContentSizeCategory"), v9 = sub_ABA320(), v8, (v9 & 1) != 0))
  {
    v10 = sub_ABA560();
    if (qword_DE6C98 != -1)
    {
      swift_once();
    }

    v11 = qword_E718D8;
    v12 = [v4 clearColor];
    v56 = v11;
    v13 = v12;
    v14 = v10;
    v15 = sub_ABA560();
    v16 = v7;
    v17 = [v4 clearColor];
    v18 = 18.0;
    v19 = 20.0;
    v57 = 1;
    v20 = 20.0;
    v21 = 20.0;
  }

  else
  {
    v22 = objc_opt_self();
    v23 = [v22 preferredFontForTextStyle:UIFontTextStyleLargeTitle];
    if (qword_DE6C98 != -1)
    {
      swift_once();
    }

    v24 = qword_E718D8;
    v25 = [v4 clearColor];
    v56 = v24;
    v13 = v25;
    v14 = v23;
    v15 = [v22 preferredFontForTextStyle:UIFontTextStyleLargeTitle];
    v26 = v7;
    v17 = [v4 clearColor];
    v21 = 16.0;
    v20 = 37.0;
    v18 = 35.0;
    v57 = 2;
    v19 = 36.0;
  }

  v27 = v7;
  v28 = v17;
  v29 = v15;
  v55 = sub_ABA560();
  v54 = [v4 clearColor];

  v30 = *v58;
  *&v61 = v27;
  *(&v61 + 1) = v60;
  v62 = xmmword_AF7C20;
  v63 = xmmword_AF82C0;
  *&v64 = v59;
  *(&v64 + 1) = 1;
  v65 = *&v21;
  swift_beginAccess();
  v32 = v30[3];
  v31 = v30[4];
  v33 = v30[6];
  v66[3] = v30[5];
  v66[4] = v33;
  v66[1] = v32;
  v66[2] = v31;
  v66[0] = v30[2];
  v30[5] = v64;
  v30[6] = *&v21;
  v34 = v62;
  v30[2] = v61;
  v30[3] = v34;
  v30[4] = v63;
  sub_2F118(&v61, v109);
  sub_2F174(v66);
  sub_2EB2A8();
  v35 = v58[1];
  *&v67 = v56;
  *(&v67 + 1) = v13;
  v68 = xmmword_AF7C20;
  v69 = 0uLL;
  *&v70 = v14;
  *(&v70 + 1) = 2;
  v71 = *&v20;
  swift_beginAccess();
  v37 = v35[3];
  v36 = v35[4];
  v38 = v35[6];
  v72[3] = v35[5];
  v72[4] = v38;
  v72[1] = v37;
  v72[2] = v36;
  v72[0] = v35[2];
  v39 = v71;
  v35[5] = v70;
  v35[6] = v39;
  v40 = v68;
  v35[2] = v67;
  v35[3] = v40;
  v35[4] = v69;
  sub_2F118(&v67, v109);
  sub_2F174(v72);
  sub_2EB2A8();
  v41 = v58[2];
  *&v73 = v27;
  *(&v73 + 1) = v28;
  v74 = xmmword_AF7C20;
  v75 = 0uLL;
  *&v76 = v29;
  *(&v76 + 1) = v57;
  v77 = *&v18;
  swift_beginAccess();
  v43 = v41[3];
  v42 = v41[4];
  v44 = v41[6];
  v78[3] = v41[5];
  v78[4] = v44;
  v78[1] = v43;
  v78[2] = v42;
  v78[0] = v41[2];
  v45 = v77;
  v41[5] = v76;
  v41[6] = v45;
  v46 = v74;
  v41[2] = v73;
  v41[3] = v46;
  v41[4] = v75;
  sub_2F118(&v73, v109);
  sub_2F174(v78);
  sub_2EB2A8();
  v47 = v58[3];
  *&v79 = v27;
  *(&v79 + 1) = v54;
  v80 = xmmword_AF7C20;
  v81 = 0uLL;
  *&v82 = v55;
  *(&v82 + 1) = 4;
  *&v83 = v19;
  *(&v83 + 1) = 0x402C000000000000;
  swift_beginAccess();
  v49 = v47[3];
  v48 = v47[4];
  v50 = v47[6];
  v84[3] = v47[5];
  v84[4] = v50;
  v84[1] = v49;
  v84[2] = v48;
  v84[0] = v47[2];
  v51 = v83;
  v47[5] = v82;
  v47[6] = v51;
  v52 = v80;
  v47[2] = v79;
  v47[3] = v52;
  v47[4] = v81;
  sub_2F118(&v79, v109);
  sub_2F174(v84);
  sub_2EB2A8();

  v85[0] = v27;
  v85[1] = v54;
  v86 = xmmword_AF7C20;
  v88 = 0;
  v87 = 0;
  v89 = v55;
  v90 = 4;
  v91 = v19;
  v92 = 0x402C000000000000;
  sub_2F174(v85);
  v93[0] = v27;
  v93[1] = v28;
  v94 = xmmword_AF7C20;
  v96 = 0;
  v95 = 0;
  v97 = v29;
  v98 = v57;
  v99 = v18;
  v100 = 0;
  sub_2F174(v93);
  v101[0] = v56;
  v101[1] = v13;
  v102 = xmmword_AF7C20;
  v104 = 0;
  v103 = 0;
  v105 = v14;
  v106 = 2;
  v107 = v20;
  v108 = 0;
  sub_2F174(v101);
  v109[0] = v27;
  v109[1] = v60;
  v110 = xmmword_AF7C20;
  v111 = xmmword_AF82C0;
  v112 = v59;
  v113 = 1;
  v114 = v21;
  v115 = 0;
  return sub_2F174(v109);
}

void sub_1E124C(void *a1)
{
  v2 = v1;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for FeaturedShowcaseCell();
  objc_msgSendSuper2(&v16, "traitCollectionDidChange:", a1);
  v4 = [v2 traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  v6 = v5;
  if (!a1)
  {

    goto LABEL_11;
  }

  v7 = [a1 preferredContentSizeCategory];
  v8 = sub_AB92A0();
  v10 = v9;
  if (v8 == sub_AB92A0() && v10 == v11)
  {
  }

  else
  {
    v13 = sub_ABB3C0();

    if ((v13 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v14 = [v4 horizontalSizeClass];
  if (v14 != [a1 horizontalSizeClass])
  {
LABEL_11:
    v15 = [v2 traitCollection];
    swift_beginAccess();
    sub_1E0B78(v15);
    swift_endAccess();

    sub_1E1A7C();
  }
}

id sub_1E14A4(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for FeaturedShowcaseCell();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_1E14FC(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, const char **a7, SEL *a8)
{
  v15 = type metadata accessor for FeaturedShowcaseCell();
  v27.receiver = a1;
  v27.super_class = v15;
  v16 = *a7;
  v17 = a1;
  objc_msgSendSuper2(&v27, v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26.receiver = v17;
  v26.super_class = v15;
  objc_msgSendSuper2(&v26, *a8, a2, a3, a4, a5);
  sub_1E15D8(v19, v21, v23, v25);
}

uint64_t sub_1E15D8(double a1, double a2, double a3, double a4)
{
  [v4 frame];
  CGRectGetWidth(v7);
  result = sub_AB38D0();
  if (result)
  {
    v6 = [v4 traitCollection];
    swift_beginAccess();
    sub_1E0B78(v6);
    swift_endAccess();

    return sub_1E1A7C();
  }

  return result;
}

void sub_1E16A4()
{
  v1 = v0;
  v29.receiver = v0;
  v29.super_class = type metadata accessor for FeaturedShowcaseCell();
  objc_msgSendSuper2(&v29, "layoutSubviews");
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v0 traitCollection];
  v11 = [v10 horizontalSizeClass];
  [v10 displayScale];
  [v0 effectiveUserInterfaceLayoutDirection];
  HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(0, 1u, 0, v30, v7);
  v31.origin.x = v3;
  v31.origin.y = v5;
  v31.size.width = v7;
  v31.size.height = v9;
  Width = CGRectGetWidth(v31);
  if (v11 != &dword_0 + 1)
  {
    sub_AB3A00();
    Width = v13;
  }

  v14 = *&v0[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];
  sub_76368(0, 0, 1);
  sub_ABA490();
  sub_76B28(v15, v16, v17, v18);
  if (v11 == &dword_0 + 1 || (v19 = [v1 traitCollection], v20 = objc_msgSend(v19, "preferredContentSizeCategory"), v19, LOBYTE(v19) = sub_ABA320(), v20, (v19 & 1) != 0))
  {
    [*(v14 + 112) frame];
    CGRectGetMaxY(v32);
    v33.origin.x = v3;
    v33.origin.y = v5;
    v33.size.width = v7;
    v33.size.height = v9;
    CGRectGetWidth(v33);
    v34.origin.x = v3;
    v34.origin.y = v5;
    v34.size.width = v7;
    v34.size.height = v9;
    CGRectGetHeight(v34);
    v21 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView;
    v22 = *&v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
    sub_ABA490();
    [v22 setFrame:?];

    v23 = *&v1[v21];
    v24 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
    swift_beginAccess();
    *(v23 + v24) = 0;
  }

  else
  {
    sub_ABA470();
    v25 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView;
    v26 = *&v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
    sub_ABA490();
    [v26 setFrame:*&Width];

    v27 = *&v1[v25];
    v28 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
    swift_beginAccess();
    *(v27 + v28) = 1;
  }
}

__n128 sub_1E1A60()
{
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  xmmword_DF5C70 = *&UIEdgeInsetsZero.top;
  *&qword_DF5C80 = v1;
  return result;
}

uint64_t sub_1E1A7C()
{
  v1 = v0;
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v0 traitCollection];
  v11 = [v10 horizontalSizeClass];

  if (v11 == &dword_0 + 1 || (v12 = [v1 traitCollection], v13 = objc_msgSend(v12, "preferredContentSizeCategory"), v12, LOBYTE(v12) = sub_ABA320(), v13, (v12 & 1) != 0))
  {
    v21.origin.x = v3;
    v21.origin.y = v5;
    v21.size.width = v7;
    v21.size.height = v9;
    Width = CGRectGetWidth(v21);
  }

  else
  {
    v22.origin.x = v3;
    v22.origin.y = v5;
    v22.size.width = v7;
    v22.size.height = v9;
    Width = CGRectGetHeight(v22);
  }

  v15 = Width;
  type metadata accessor for CGSize(0);
  v16 = &v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkImageSize];
  result = sub_AB38D0();
  if (result)
  {
    *v16 = v15;
    v16[1] = v15;
    v18 = *&v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];
    v19 = *(v18 + 80);
    v20 = *(v18 + 88);
    *(v18 + 80) = v15;
    *(v18 + 88) = v15;
    return sub_75614(v19, v20);
  }

  return result;
}

uint64_t sub_1E1E40()
{
}

id sub_1E1F0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeaturedShowcaseCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FeaturedShowcaseCell()
{
  result = qword_DF5CC0;
  if (!qword_DF5CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1E212C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_badgeView);
  v2 = v1;
  return v1;
}

void sub_1E215C(uint64_t *a1@<X8>)
{
  sub_89F60();
  v1 = sub_ABA580();
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v2 = qword_E718C8;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  *&v51[0] = v2;
  *(&v51[0] + 1) = v5;
  v51[1] = xmmword_AF7C20;
  v51[2] = xmmword_AF82C0;
  v52 = v1;
  v53 = 1;
  v54 = xmmword_AF9C80;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v6 = TextStackView.Component.init(identifier:labelProperties:)(0x656E696C64616568, 0xE800000000000000, v51);
  v22 = v4;
  v30 = v5;
  v29 = v1;
  sub_2F118(v51, v69);
  v31 = v6;

  v7 = sub_ABA560();
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v28 = qword_E718D8;
  v8 = qword_E718D8;
  *&v45[0] = v28;
  *(&v45[0] + 1) = [v3 clearColor];
  v9 = *(&v45[0] + 1);
  v27 = *(&v45[0] + 1);
  v45[1] = xmmword_AF7C20;
  v46 = 0;
  v47 = 0;
  v48 = v7;
  v49 = 2;
  v50 = xmmword_AF7C30;
  swift_allocObject();
  v26 = v7;
  v21 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v45);
  v25 = v8;
  v24 = v9;
  v10 = v7;
  sub_2F118(v45, v69);

  v11 = sub_ABA560();
  v12 = [v3 clearColor];
  *&v39[0] = v2;
  *(&v39[0] + 1) = v12;
  v39[1] = xmmword_AF7C20;
  v40 = 0;
  v41 = 0;
  v42 = v11;
  v43 = 1;
  v20 = v11;
  v44 = xmmword_B03470;
  swift_allocObject();
  v13 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v39);
  v23 = v22;
  v19 = v12;
  v18 = v11;
  sub_2F118(v39, v69);

  v14 = sub_ABA560();
  v15 = [v3 clearColor];
  *&v33[0] = v2;
  *(&v33[0] + 1) = v15;
  v33[1] = xmmword_AF7C20;
  v34 = 0;
  v35 = 0;
  v36 = v14;
  v37 = 4;
  v38 = xmmword_B03480;
  swift_allocObject();
  v16 = TextStackView.Component.init(identifier:labelProperties:)(0x7470697263736564, 0xEB000000006E6F69, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_AF93E0;
  *(v17 + 32) = v31;
  *(v17 + 40) = v21;
  *(v17 + 48) = v13;
  *(v17 + 56) = v16;
  sub_2F118(v33, v69);

  sub_2F174(v51);
  v55[0] = v2;
  v55[1] = v15;
  v56 = xmmword_AF7C20;
  v58 = 0;
  v57 = 0;
  v59 = v14;
  v60 = 4;
  v61 = xmmword_B03480;
  sub_2F174(v55);
  v62[0] = v2;
  v62[1] = v12;
  v63 = xmmword_AF7C20;
  v64 = 0;
  v65 = 0;
  v66 = v20;
  v67 = 1;
  v68 = xmmword_B03470;
  sub_2F174(v62);
  v69[0] = v28;
  v69[1] = v27;
  v70 = xmmword_AF7C20;
  v71 = 0;
  v72 = 0;
  v73 = v26;
  v74 = 2;
  v75 = xmmword_AF7C30;
  sub_2F174(v69);

  *a1 = v31;
  a1[1] = v21;
  a1[2] = v13;
  a1[3] = v16;
  a1[4] = v17;
}

uint64_t sub_1E26A0(void *a1, id a2)
{
  [a2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [a1 displayScale];
  if ([a1 horizontalSizeClass] == &dword_0 + 1 || (v11 = objc_msgSend(a1, "preferredContentSizeCategory"), v12 = sub_ABA320(), v11, (v12 & 1) != 0))
  {
    sub_1E215C(v15);
    v13 = v15[4];
    sub_1E0B78(a1);
    sub_2F48A4(v13, a1, 0, 0);
  }

  else
  {
    sub_45BEA8(v4, v6, v8, v10);
  }

  return sub_AB3A00();
}

CGFloat sub_1E2814(void *a1, CGFloat a2, CGFloat a3)
{
  if ([a1 horizontalSizeClass] != &dword_0 + 1)
  {
    v6 = [a1 preferredContentSizeCategory];
    v7 = sub_ABA320();

    if ((v7 & 1) == 0)
    {
      sub_45B2C4(a1, 0.0, 0.0, a2, a3);
      HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1u, 1u, 0, &v10, a2);
      [a1 displayScale];
      v12.origin.x = 0.0;
      v12.origin.y = 0.0;
      v12.size.width = a2;
      v12.size.height = a3;
      CGRectGetWidth(v12);
      sub_AB3A00();
      HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1u, 1u, 0, v11, a2);
      [a1 displayScale];
      sub_AB3A00();
      return v8;
    }
  }

  return a2;
}

void sub_1E297C()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_headline);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_subtitle);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_descriptionText);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_badgeView) = 0;
  v5 = v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedShowcaseCell_textComponents;
  sub_1E215C(v7);
  v6 = v7[1];
  *v5 = v7[0];
  *(v5 + 16) = v6;
  *(v5 + 32) = v8;
  sub_ABAFD0();
  __break(1u);
}

void sub_1E2A54(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v4;
  [v4 bounds];

  v6 = [v1 view];
  if (!v6)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 music_inheritedLayoutInsets];

  bottom = UIEdgeInsetsZero.bottom;
  type metadata accessor for CGSize(0);
  top = 0.0;
  v22 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  if (sub_AB38D0() & 1) != 0 || (left = UIEdgeInsetsZero.left, right = UIEdgeInsetsZero.right, type metadata accessor for UIEdgeInsets(0), top = UIEdgeInsetsZero.top, v22 = left, v23 = bottom, v24 = right, v17 = UIEdgeInsetsZero.top, v18 = left, v19 = bottom, v20 = right, v11 = 0.0, (sub_AB38D0()))
  {
    if (UIEdgeInsetsZero.top + 0.0 + bottom < 0.0)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = UIEdgeInsetsZero.top + 0.0 + bottom;
    }
  }

  v12 = sub_42A614();
  v14 = v13;
  sub_42A7A8(v3, v12);
  v15 = sub_2F48A4(v14, v3, 0, 0);

  if (v11 > v15)
  {
    v16 = v11;
  }

  else
  {
    v16 = v15;
  }

  [a1 setRowHeight:{v16, *&v17, *&v18, *&v19, *&v20, *&top, *&v22, *&v23, *&v24}];
  [a1 invalidateLayout];
}

id sub_1E2C20(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for PersonListViewController();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1E2CC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersonListViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PersonListViewController()
{
  result = qword_DF5CF8;
  if (!qword_DF5CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1E2D8C()
{
  v0 = [objc_allocWithZone(UICollectionViewTableLayout) init];
  sub_1E2A54(v0);
  return v0;
}

void sub_1E2E04(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_title];
  swift_beginAccess();
  *v6 = a2;
  *(v6 + 1) = a3;

  v7 = *&a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 8];

  v8 = String.trim()();
  swift_beginAccess();
  v7[7] = v8;

  sub_2EB704();
  [a1 setNeedsLayout];
  v9 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_regularLayoutStyle];
  swift_beginAccess();
  *v9 = xmmword_B03570;
  v9[16] = 1;
  sub_1848CC();
  v10 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_compactLayoutStyle];
  swift_beginAccess();
  *v10 = xmmword_AF7C40;
  v10[16] = 0;
  sub_1846A0();
}

char *sub_1E2F78(void *a1)
{
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController____lazy_storage___contentFilteringController) = 0;
  v3 = OBJC_IVAR____TtC16MusicApplication20ArtistViewController_sortOptionsController;
  type metadata accessor for SortOptionsController();
  swift_allocObject();
  *(v1 + v3) = sub_225174(&off_CF02E0, 0, 0);
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController____lazy_storage___noFilteredContentStateController) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController____lazy_storage___artistHeaderViewController) = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication20ArtistViewController_playIntentControlsViewController;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF7718);
  *(v1 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC16MusicApplication20ArtistViewController_albumsTitleViewController;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF7720);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v5) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v7 = OBJC_IVAR____TtC16MusicApplication20ArtistViewController_albumsMusicVideosSpacingViewController;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF7728);
  *(v1 + v7) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = OBJC_IVAR____TtC16MusicApplication20ArtistViewController_musicVideosTitleViewController;
  *(v1 + v8) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController____lazy_storage___musicVideosPickerViewController) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_hasReceivedArtistHeaderResponse) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_artistHeaderResponse) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_albumsResponse) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_musicVideosResponse) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_networkConnectivityObserver) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController__visible) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_wantsMusicVideoPicker) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController__artistStorePusher) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_hasLoadedResponsesOnce) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_hasContent) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_responseInvalidationObserver) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController__needsModelResponsesReload) = 1;
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_artist) = a1;
  v9 = objc_allocWithZone(type metadata accessor for ArtistAlbumsViewController(0));
  swift_unknownObjectWeakInit();
  v10 = a1;
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_albumsViewController) = sub_13B3E0(3, a1, 0, 0, 0);
  v11 = objc_allocWithZone(type metadata accessor for ArtistMusicVideosViewController(0));
  swift_unknownObjectWeakInit();
  v45 = v10;
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_musicVideosViewController) = sub_368EE4(a1);
  v12 = sub_4D3A88(_swiftEmptyArrayStorage);
  v13 = [v12 navigationItem];
  [v13 setLargeTitleDisplayMode:2];

  v14 = OBJC_IVAR____TtC16MusicApplication20ArtistViewController_sortOptionsController;
  v15 = *&v12[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_sortOptionsController];
  if (v15)
  {
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = *(v15 + 48);
    *(v15 + 48) = sub_1EAB88;
    *(v15 + 56) = v16;

    sub_17654(v17);
  }

  v18 = OBJC_IVAR____TtC16MusicApplication20ArtistViewController_albumsViewController;
  swift_unknownObjectWeakAssign();
  v19 = OBJC_IVAR____TtC16MusicApplication20ArtistViewController_musicVideosViewController;
  swift_unknownObjectWeakAssign();
  v20 = *&v12[v18];
  v21 = sub_4D3C64();

  v22 = &v21[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
  v23 = *&v21[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
  v24 = *&v21[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 8];
  v25 = v21[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 10];
  *v22 = 2;
  *(v22 + 4) = 0;
  v22[10] = 0;
  sub_4DBD3C(v23, v24 | (v25 << 16));

  v26 = *&v12[v19];
  v27 = sub_4D3C64();

  v28 = &v27[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
  v29 = *&v27[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
  v30 = *&v27[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 8];
  v31 = v27[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 10];
  *v28 = 2;
  *(v28 + 4) = 0;
  v28[10] = 0;
  sub_4DBD3C(v29, v30 | (v31 << 16));

  v32 = *&v12[v14];
  if (v32)
  {
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = *(v32 + 64);
    *(v32 + 64) = sub_1EAB90;
    *(v32 + 72) = v33;

    sub_17654(v34);

    v35 = *&v12[v14];
    if (v35)
    {
      v36 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v37 = *(v35 + 80);
      *(v35 + 80) = sub_1EABD0;
      *(v35 + 88) = v36;

      sub_17654(v37);
    }
  }

  v38 = *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor();
  v39 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();

  v41 = v12;
  *&v41[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_networkConnectivityObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v38, v39, 1, 1, sub_1EABD8, v40);

  v42 = sub_1E4708();
  v43 = *(v42 + 64);
  *(v42 + 64) = 0;
  if (v43 == 1)
  {
    sub_430320();
  }

  return v41;
}

double sub_1E3554@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v13 = sub_225418();
    v14 = 0u;
    v15 = 0u;
    v16 = 1;
    PresentationSource.Position.init(source:permittedArrowDirections:)(&v13, 15, v5);
    v9[0] = v5[0];
    v9[1] = v5[1];
    v10 = v6;
    v11 = v7;
    v12 = v8;
    PresentationSource.init(viewController:position:)(v3, v9, a1);
  }

  else
  {
    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 64) = 1;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  return result;
}

void sub_1E3638()
{
  v1 = sub_AB7C10();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB7C50();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v0[OBJC_IVAR____TtC16MusicApplication20ArtistViewController__needsModelResponsesReload] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC16MusicApplication20ArtistViewController__needsModelResponsesReload] = 1;
    sub_13C80(0, &qword_DE8ED0);
    v9 = sub_ABA150();
    v10 = swift_allocObject();
    *(v10 + 16) = v0;
    aBlock[4] = sub_1EC334;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_470;
    v11 = _Block_copy(aBlock);
    v12 = v0;

    sub_AB7C30();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1EC1B0(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
    sub_D1010();
    sub_ABABB0();
    sub_ABA160();
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
    _Block_release(v11);
  }
}

char *sub_1E3914(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 0x3Fu)
  {
    return (&dword_0 + 1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *&result[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_musicVideosResponse];
    if (v4)
    {
      result = [v4 results];
      if (result)
      {
        v5 = result;
        v6 = [result totalItemCount];

        return (v6 > 0);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_1E39D8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3A90();
    v2 = sub_1E42B0();
    v3 = sub_1E439C();
    v5 = v4;
    v6 = sub_AB6500();
    v8 = *(v7 + 8);
    *(v7 + 8) = v3;
    *(v7 + 16) = v5;
    sub_17654(v8);
    v6(v9, 0);
  }
}

id sub_1E3A90()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplication20ArtistViewController_albumsResponse;
  v3 = *&v0[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_albumsResponse];
  if (!v3)
  {
    goto LABEL_7;
  }

  result = [v3 results];
  if (!result)
  {
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v5 = result;
  v6 = [result totalItemCount];

  if (v6 >= 1 && (v7 = *&v1[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_musicVideosResponse]) != 0)
  {
    result = [v7 results];
    if (!result)
    {
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v8 = result;
    v9 = [result totalItemCount];

    v10 = v9 > 0;
  }

  else
  {
LABEL_7:
    v10 = 0;
  }

  v11 = [*(sub_1E4708() + 32) searchBar];
  v12 = [v11 isFirstResponder];

  if ((v12 & 1) == 0 && ([*(*&v1[OBJC_IVAR____TtC16MusicApplication20ArtistViewController____lazy_storage___contentFilteringController] + 32) isActive] & 1) == 0)
  {
    sub_1E42B0();
    sub_AB9730();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
  }

  if (v1[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_hasContent] == 1)
  {
    v13 = [v1 traitCollection];
    v14 = UITraitCollection.isMediaPicker.getter();

    if (!v14)
    {
      v15 = *&v1[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_playIntentControlsViewController];
      v16 = *&v15[qword_E0B7F0];
      if (v16)
      {

        result = [v15 view];
        if (!result)
        {
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

        v17 = result;
        type metadata accessor for PlayIntentControlsReusableView();
        v18 = swift_dynamicCastClassUnconditional();
        v16(v15, v18);

        sub_17654(v16);
      }

      v19 = v15;
      sub_AB9730();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
    }
  }

  if (v10)
  {
    v20 = *&v1[v2];
    if (!v20)
    {
      v29 = &off_DF6000;
      goto LABEL_43;
    }

    result = [v20 results];
    if (!result)
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v21 = result;
    v22 = [result totalItemCount];

    if (v22 >= 1)
    {
      v23 = *&v1[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_albumsTitleViewController];
      v24 = *&v23[qword_E0B7F0];
      if (v24)
      {

        result = [v23 view];
        if (!result)
        {
LABEL_80:
          __break(1u);
          return result;
        }

        v25 = result;
        type metadata accessor for CollectionViewSection.SectionHeaderView(0);
        v26 = swift_dynamicCastClassUnconditional();
        v24(v23, v26);

        sub_17654(v24);
      }

      v27 = v23;
      sub_AB9730();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
    }
  }

  v28 = *&v1[v2];
  if (!v28)
  {
    v29 = &off_DF6000;
    if (!v10)
    {
      goto LABEL_54;
    }

    goto LABEL_43;
  }

  result = [v28 results];
  v29 = &off_DF6000;
  if (!result)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v30 = result;
  v31 = [result totalItemCount];

  if (v31 >= 1)
  {
    v32 = *&v1[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_albumsViewController];
    sub_AB9730();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
  }

  if (v10)
  {
LABEL_43:
    v33 = *(v29[87] + v1);
    if (v33)
    {
      result = [v33 results];
      if (!result)
      {
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v34 = result;
      v35 = [result totalItemCount];

      if (v35 >= 1)
      {
        v36 = *&v1[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_musicVideosTitleViewController];
        v37 = *&v36[qword_E0B7F0];
        if (v37)
        {

          result = [v36 view];
          if (!result)
          {
LABEL_79:
            __break(1u);
            goto LABEL_80;
          }

          v38 = result;
          type metadata accessor for CollectionViewSection.SectionHeaderView(0);
          v39 = swift_dynamicCastClassUnconditional();
          v37(v36, v39);

          sub_17654(v37);
        }

        v40 = *&v1[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_albumsMusicVideosSpacingViewController];
        sub_AB9730();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_AB97A0();
        }

        sub_AB97F0();
        v41 = v36;
        sub_AB9730();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_AB97A0();
        }

        sub_AB97F0();
      }
    }
  }

LABEL_54:
  v42 = *(v29[87] + v1);
  if (v42)
  {
    result = [v42 results];
    if (result)
    {
      v43 = result;
      v44 = [result totalItemCount];

      if (v44 >= 1)
      {
        if (v1[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_wantsMusicVideoPicker] == 1)
        {
          sub_1E6770();
        }

        else
        {
          v45 = *&v1[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_musicVideosViewController];
        }

        sub_AB9730();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_AB97A0();
        }

        sub_AB97F0();
      }

      goto LABEL_63;
    }

    goto LABEL_73;
  }

LABEL_63:
  v46 = *&v1[OBJC_IVAR____TtC16MusicApplication20ArtistViewController____lazy_storage___contentFilteringController];
  v47 = (*(v46 + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  v48 = v47[1];
  if (v48)
  {
    v49 = *v47 & 0xFFFFFFFFFFFFLL;
    if ((v48 & 0x2000000000000000) != 0)
    {
      v50 = HIBYTE(v48) & 0xF;
    }

    else
    {
      v50 = v49;
    }

    v51 = v50 != 0;
  }

  else
  {
    v51 = 0;
  }

  v52 = *(v46 + 32);

  v53 = [v52 searchBar];
  v54 = [v53 isFirstResponder];

  sub_4D4068(_swiftEmptyArrayStorage, v1[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_hasLoadedResponsesOnce] & ~(v51 ^ v54) & 1);
}

id sub_1E42B0()
{
  v1 = OBJC_IVAR____TtC16MusicApplication20ArtistViewController____lazy_storage___artistHeaderViewController;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController____lazy_storage___artistHeaderViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController____lazy_storage___artistHeaderViewController);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_artist);
    v5 = v0;
    v6 = sub_1E439C();
    v8 = v7;
    sub_AB5890();
    v9 = v17;
    v10 = v18;
    v11 = v19;
    v17 = v4;
    v18 = v6;
    *&v19 = v8;
    BYTE8(v19) = v9;
    v20 = v10;
    v21 = v11;
    v12 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF7730));
    v13 = sub_1EA454(&v17);
    v14 = *(v5 + v1);
    *(v5 + v1) = v13;
    v3 = v13;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

void *(*sub_1E439C())()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = UITraitCollection.mediaPickerConfiguration.getter();

  if (v3)
  {
    v4 = MPMediaPickerConfiguration.supportsCatalogContent.getter();

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  static ApplicationCapabilities.shared.getter(v35);
  sub_70C54(v35);
  if ((BYTE1(v35[0]) & 1) == 0)
  {
    return 0;
  }

  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication20ArtistViewController__artistStorePusher];
  if (v5 && (v6 = *(v5 + 24)) != 0 && (v7 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerDetailLink, swift_beginAccess(), *(v6 + v7)))
  {
    v8 = qword_DE69A8;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = sub_AB4BC0();
    __swift_project_value_buffer(v9, qword_E711B8);
    v10 = v1;
    v11 = sub_AB4BA0();
    v12 = sub_AB9F50();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v36[0] = v14;
      *v13 = 136315138;
      v15 = *&v10[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_artist];
      v16 = [v15 name];
      if (v16)
      {
        v17 = v16;
        v18 = sub_AB92A0();
        v20 = v19;
      }

      else
      {

        v18 = 0;
        v20 = 0;
      }

      v34[0] = v18;
      v34[1] = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6F0);
      v29 = sub_AB9350();
      v31 = sub_425E68(v29, v30, v36);

      *(v13 + 4) = v31;
      _os_log_impl(&dword_0, v11, v12, "Adding artistStorePusher handler for artistName=%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
    }

    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    *(v33 + 24) = v5;
    return sub_1EB0C4;
  }

  else
  {
    v22 = *&v1[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_artist];
    memset(v36, 0, sizeof(v36));
    v37 = xmmword_AF7710;
    v23 = v1;
    v24 = v22;
    PresentationSource.init(viewController:position:)(v23, v36, v34);
    v25 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
    v26 = MPModelObject.bestIdentifier(for:)(*v25, 0);
    if (v27)
    {
      v28 = sub_1EABE0(v26, v27, v34);
    }

    else
    {
      v28 = 0;
    }

    sub_1611C(v34);

    return v28;
  }
}

uint64_t sub_1E4708()
{
  v1 = OBJC_IVAR____TtC16MusicApplication20ArtistViewController____lazy_storage___contentFilteringController;
  if (*&v0[OBJC_IVAR____TtC16MusicApplication20ArtistViewController____lazy_storage___contentFilteringController])
  {
    v2 = *&v0[OBJC_IVAR____TtC16MusicApplication20ArtistViewController____lazy_storage___contentFilteringController];
  }

  else
  {
    v3 = v0;
    v4 = sub_1E47E4();
    v6 = v5;
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v7 = v3;
    v2 = sub_4309D4(v4, v6);

    *&v3[v1] = v2;
  }

  return v2;
}

uint64_t sub_1E47E4()
{
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_AB9250();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9230();
  __chkstk_darwin(v3 - 8);
  sub_AB9220();
  v12._countAndFlagsBits = 0x206E6920646E6946;
  v12._object = 0xE800000000000000;
  sub_AB9210(v12);
  v4 = *(v0 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_artist);
  v5 = [v4 name];
  if (v5)
  {
    v6 = v5;
    v7 = sub_AB92A0();
    object = v8;

    v10._countAndFlagsBits = v7;
  }

  else
  {

    sub_AB91E0();
    sub_AB3550();
    v10._countAndFlagsBits = sub_AB9320();
    object = v10._object;
  }

  v10._object = object;
  sub_AB9200(v10);

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_AB9210(v13);
  sub_AB9240();
  sub_AB3550();
  return sub_AB9320();
}

uint64_t sub_1E4A04()
{
  v1 = OBJC_IVAR____TtC16MusicApplication20ArtistViewController____lazy_storage___noFilteredContentStateController;
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController____lazy_storage___noFilteredContentStateController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController____lazy_storage___noFilteredContentStateController);
  }

  else
  {
    v3 = v0;
    v4 = sub_4D3DD0();
    type metadata accessor for NoContentController();
    swift_allocObject();
    v2 = sub_3B04BC(v4);
    swift_unknownObjectWeakInit();
    (*(*v2 + 248))(sub_1E4AF0, 0);
    swift_unknownObjectWeakDestroy();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1E4AF0@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_DE6BD0 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_576EC(&xmmword_E71778, v2);
}

id sub_1E4B60()
{
  v1 = v0;
  v40.receiver = v0;
  v40.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v40, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_albumsViewController];
  v3 = [objc_opt_self() kindWithVariants:1];
  v4 = *&v2[qword_DF15A0];
  *&v2[qword_DF15A0] = v3;
  v5 = v3;

  if ([v2 isViewLoaded])
  {
    sub_1E8A8C();
  }

  v6 = *&v1[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_albumsTitleViewController];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = (v6 + qword_E0B7F8);
  v9 = *(v6 + qword_E0B7F8);
  *v8 = sub_1EC00C;
  v8[1] = v7;
  sub_17654(v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = (v6 + qword_E0B7F0);
  v12 = *(v6 + qword_E0B7F0);
  *v11 = sub_1EC030;
  v11[1] = v10;
  sub_17654(v12);
  v13 = *&v1[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_albumsMusicVideosSpacingViewController];
  v14 = &v13[qword_E0B7F8];
  v15 = *&v13[qword_E0B7F8];
  *v14 = sub_1E4F9C;
  v14[1] = 0;
  sub_17654(v15);
  result = [v13 view];
  if (result)
  {
    v17 = result;
    v18 = [objc_opt_self() clearColor];
    [v17 setBackgroundColor:v18];

    v19 = *&v1[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_musicVideosTitleViewController];
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = (v19 + qword_E0B7F8);
    v22 = *(v19 + qword_E0B7F8);
    *v21 = sub_1EC054;
    v21[1] = v20;
    sub_17654(v22);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = (v19 + qword_E0B7F0);
    v25 = *(v19 + qword_E0B7F0);
    *v24 = sub_1EC078;
    v24[1] = v23;
    sub_17654(v25);
    v26 = *&v1[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_playIntentControlsViewController];
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = (v26 + qword_E0B7F0);
    v29 = *(v26 + qword_E0B7F0);
    *v28 = sub_1EC09C;
    v28[1] = v27;
    sub_17654(v29);
    sub_1E3A90();
    sub_1E3638();
    v30 = sub_1E4708();
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = *(v30 + 72);
    *(v30 + 72) = sub_1EC0A4;
    *(v30 + 80) = v31;

    sub_17654(v32);

    v33 = OBJC_IVAR____TtC16MusicApplication20ArtistViewController____lazy_storage___contentFilteringController;
    v34 = *&v1[OBJC_IVAR____TtC16MusicApplication20ArtistViewController____lazy_storage___contentFilteringController];
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = *(v34 + 88);
    *(v34 + 88) = sub_1EC0C0;
    *(v34 + 96) = v35;

    sub_17654(v36);

    v37 = *&v1[v33];
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39 = *(v37 + 104);
    *(v37 + 104) = sub_1EC350;
    *(v37 + 112) = v38;

    sub_17654(v39);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4FA8(double a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  __chkstk_darwin(v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(type metadata accessor for CollectionViewSection.SectionHeaderView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v13 = *(Strong + *a5);
  v14 = Strong;
  v15 = v13;

  v16 = [v15 title];
  if (!v16)
  {

    Strong = 0;
LABEL_5:
    v20 = 0xE000000000000000;
    goto LABEL_6;
  }

  v17 = v16;
  v18 = sub_AB92A0();
  v20 = v19;

  Strong = v18;
LABEL_6:
  sub_E2F40(Strong, v20, v10);

  v21 = OBJC_IVAR____TtCV16MusicApplication21CollectionViewSection17SectionHeaderView_contentConfiguration;
  swift_beginAccess();
  sub_140EBC(v10, &v11[v21]);
  swift_endAccess();
  v22 = sub_E34F8();
  swift_getObjectType();
  v27[3] = v8;
  v27[4] = sub_1EC1B0(&qword_DEE978, type metadata accessor for CollectionViewSection.ContentConfiguration);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v27);
  sub_1EC1F8(&v11[v21], boxed_opaque_existential_0, type metadata accessor for CollectionViewSection.ContentConfiguration);
  sub_AB4C70();
  sub_1EC260(v10, type metadata accessor for CollectionViewSection.ContentConfiguration);

  [*&v11[OBJC_IVAR____TtCV16MusicApplication21CollectionViewSection17SectionHeaderView____lazy_storage___contentView] sizeThatFits:{a1, a2}];
  v25 = v24;

  return v25;
}

void sub_1E5218(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  __chkstk_darwin(v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v10 = *(Strong + *a4);
  v11 = Strong;
  v12 = v10;

  v13 = [v12 title];
  if (!v13)
  {

    Strong = 0;
LABEL_5:
    v17 = 0xE000000000000000;
    goto LABEL_6;
  }

  v14 = v13;
  v15 = sub_AB92A0();
  v17 = v16;

  Strong = v15;
LABEL_6:
  sub_E2F40(Strong, v17, v8);

  v18 = OBJC_IVAR____TtCV16MusicApplication21CollectionViewSection17SectionHeaderView_contentConfiguration;
  swift_beginAccess();
  sub_140EBC(v8, a2 + v18);
  swift_endAccess();
  v19 = sub_E34F8();
  swift_getObjectType();
  v21[3] = v6;
  v21[4] = sub_1EC1B0(&qword_DEE978, type metadata accessor for CollectionViewSection.ContentConfiguration);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
  sub_1EC1F8(a2 + v18, boxed_opaque_existential_0, type metadata accessor for CollectionViewSection.ContentConfiguration);
  sub_AB4C70();
  sub_1EC260(v8, type metadata accessor for CollectionViewSection.ContentConfiguration);
}

uint64_t sub_1E5420(uint64_t a1, _BYTE *a2)
{
  v3 = a2[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isBottomHairlineHidden];
  a2[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isBottomHairlineHidden] = 1;
  if ((v3 & 1) == 0)
  {
    [*&a2[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_bottomHairlineView] setHidden:1];
  }

  v4 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v6 = swift_allocObject();
  *(v6 + 16) = sub_1EC100;
  *(v6 + 24) = v4;
  v7 = &a2[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_playHandler];
  v8 = *&a2[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_playHandler];
  *v7 = sub_140E00;
  v7[1] = v6;

  sub_17654(v8);
  sub_413EB8();
  [a2 setNeedsLayout];

  v9 = swift_allocObject();
  *(v9 + 16) = sub_1EC100;
  *(v9 + 24) = v4;
  v10 = &a2[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_shuffleHandler];
  v11 = *&a2[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_shuffleHandler];
  *v10 = sub_140E2C;
  v10[1] = v9;

  sub_17654(v11);
  sub_413EB8();
  [a2 setNeedsLayout];
}

void sub_1E55EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v54 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v7 - 8);
  v9 = v52 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v52 - v15;
  __chkstk_darwin(v14);
  v18 = v52 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v20 = Strong;
  v52[0] = a1;
  v52[1] = a2;
  (*(v5 + 56))(v18, 1, 1, v4);
  v21 = qword_DFE2F0;
  v22 = *(*&v20[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_albumsViewController] + qword_DFE2F0);
  v53 = v4;
  if (v22)
  {
    v23 = v20;
    v24 = v22;
    v25 = [v24 results];
    if (!v25)
    {
      __break(1u);
      goto LABEL_30;
    }

    v26 = v25;
    v27 = [v25 totalItemCount];

    if (v27 >= 1)
    {
      v20 = v23;
      v28 = sub_AB3820();
      (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
      sub_13D034(v9, v16);
      goto LABEL_11;
    }

    v21 = qword_DFE2F0;
    v20 = v23;
    v4 = v53;
  }

  v29 = *(*&v20[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_musicVideosViewController] + v21);
  if (v29)
  {
    v30 = v20;
    v24 = v29;
    v31 = [v24 results];
    if (v31)
    {
      v32 = v31;
      v33 = [v31 totalItemCount];

      if (v33 < 1)
      {
        v20 = v30;
        goto LABEL_12;
      }

      v20 = v30;
      v34 = sub_AB3820();
      (*(*(v34 - 8) + 56))(v9, 1, 1, v34);
      sub_369B94(v16);
LABEL_11:
      sub_12E1C(v9, &unk_DE8E20);
      sub_12E1C(v18, &unk_DEA510);
      sub_1EC140(v16, v18);
LABEL_12:
      v4 = v53;

      goto LABEL_13;
    }

LABEL_30:
    __break(1u);
    return;
  }

LABEL_13:
  sub_15F84(v18, v13, &unk_DEA510);
  if ((*(v5 + 48))(v13, 1, v4) == 1)
  {
    sub_12E1C(v18, &unk_DEA510);
    v18 = v13;
  }

  else
  {
    v35 = v54;
    v36 = sub_140E58(v13, v54);
    v37 = v20;
    v38 = PlaybackIntentDescriptor.intent.getter(v36);
    [v38 setShuffleMode:v52[0]];

    v20 = v37;
    swift_beginAccess();
    v39 = swift_unknownObjectWeakLoadStrong();
    if (v39)
    {
      v40 = v39;
      v41 = UIViewController.playActivityInformation.getter();
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v48 = PlaybackIntentDescriptor.IntentType.underlyingIntent.getter();
      v49 = HIBYTE(v43) & 0xF;
      if ((v43 & 0x2000000000000000) == 0)
      {
        v49 = v41 & 0xFFFFFFFFFFFFLL;
      }

      if (v49)
      {

        v50 = sub_AB9260();
      }

      else
      {
        v50 = 0;
      }

      [v48 setPlayActivityFeatureName:v50];

      if (v47 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        isa = sub_AB3250().super.isa;
      }

      [v48 setPlayActivityRecommendationData:isa];

      sub_466A4(v45, v47);
    }

    sub_37D3DC(0);
    sub_1EC260(v35, type metadata accessor for PlaybackIntentDescriptor);
  }

  sub_12E1C(v18, &unk_DEA510);
}

void sub_1E5B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_AB7C10();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB7C50();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((Strong[OBJC_IVAR____TtC16MusicApplication20ArtistViewController__needsModelResponsesReload] & 1) == 0)
    {
      Strong[OBJC_IVAR____TtC16MusicApplication20ArtistViewController__needsModelResponsesReload] = 1;
      v25 = v9;
      v17 = a6;
      v18 = Strong;
      sub_13C80(0, &qword_DE8ED0);
      v24 = sub_ABA150();
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      aBlock[4] = a5;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = v17;
      v20 = _Block_copy(aBlock);
      v21 = v18;

      sub_AB7C30();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1EC1B0(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
      sub_D1010();
      sub_ABABB0();
      v22 = v24;
      sub_ABA160();
      (*(v25 + 8))(v11, v8);
      (*(v13 + 8))(v15, v12);
      _Block_release(v20);

      Strong = v22;
    }
  }
}

void sub_1E5E94()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3A90();
  }
}

id sub_1E616C()
{
  v1 = v0;
  v41.receiver = v0;
  v41.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v41, "viewDidLayoutSubviews");
  v2 = sub_1E42B0();
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = result;
  [result bounds];

  sub_AB64B0();
  [v2 setPreferredContentSize:?];

  result = [v1 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  [result bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_1EA5B8(v7, v9, v11, v13);
  result = [v1 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = result;
  [result bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_1EA73C(v16, v18, v20, v22);
  result = [v1 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v23 = result;
  [result bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  sub_1EA93C(v25, v27, v29, v31);
  result = [v1 view];
  if (result)
  {
    v32 = result;
    [result bounds];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;

    return sub_1EA73C(v34, v36, v38, v40);
  }

LABEL_11:
  __break(1u);
  return result;
}

id sub_1E644C(uint64_t a1)
{
  v2 = v1;
  v25.receiver = v1;
  v25.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v25, "traitCollectionDidChange:", a1);
  v4 = *&v1[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_artistHeaderResponse];
  if (v4)
  {
    v5 = [v4 request];
    if (v5)
    {
      v6 = v5;
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = v7;
        v9 = [v1 traitCollection];
        v10.rawValue = UITraitCollection.legacyLibraryFilter.getter().rawValue;

        if (a1 && v10.rawValue == UITraitCollection.legacyLibraryFilter.getter().rawValue)
        {
          v11 = [v2 traitCollection];
          v12 = UITraitCollection.mediaLibrary.getter();

          v13 = [v8 mediaLibrary];
          if (v13)
          {
            v14 = v13;
            sub_13C80(0, &qword_DF86B0);
            v15 = sub_ABA790();

            if (v15)
            {
              goto LABEL_11;
            }
          }

          else
          {
          }
        }

        sub_1E3638();
      }

LABEL_11:
    }
  }

  v16 = [v2 traitCollection];
  v17 = UITraitCollection.isMediaPicker.getter();

  v18 = v2[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_wantsMusicVideoPicker];
  v2[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_wantsMusicVideoPicker] = v17;
  if (v17 != v18)
  {
    sub_1E3A90();
    sub_1E3638();
  }

  v19 = [v2 navigationItem];
  v20 = [v2 traitCollection];
  v21 = sub_2B51D8();
  v23 = v22;

  sub_387430(v21, v23);
  return sub_1E3A90();
}

void *sub_1E66DC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    memset(v3, 0, sizeof(v3));
    v4 = 0;
    v5 = xmmword_AF7710;
    v1 = result;
    PresentationSource.init(viewController:position:)(v1, v3, v2);
    sub_1E95C8(v2);

    return sub_1611C(v2);
  }

  return result;
}

id sub_1E6770()
{
  v1 = OBJC_IVAR____TtC16MusicApplication20ArtistViewController____lazy_storage___musicVideosPickerViewController;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController____lazy_storage___musicVideosPickerViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController____lazy_storage___musicVideosPickerViewController);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_artist);
    v5 = objc_allocWithZone(type metadata accessor for ArtistMusicVideosPickerViewController(0));
    swift_unknownObjectWeakInit();
    v6 = v4;
    v7 = v4;
    v8 = v0;
    v9 = sub_15AB74(v7);
    swift_unknownObjectWeakAssign();
    v10 = *(*(v8 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_musicVideosViewController) + qword_DFE2F0);
    v11 = v10;
    v12 = v9;
    sub_3B4724(v10);

    v13 = *(v8 + v1);
    *(v8 + v1) = v12;
    v3 = v12;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

void sub_1E685C()
{
  if (v0[OBJC_IVAR____TtC16MusicApplication20ArtistViewController__visible] == 1)
  {
    v1 = v0;
    if (v0[OBJC_IVAR____TtC16MusicApplication20ArtistViewController__needsModelResponsesReload] == 1)
    {
      v0[OBJC_IVAR____TtC16MusicApplication20ArtistViewController__needsModelResponsesReload] = 0;
      v2 = swift_allocObject();
      *(v2 + 16) = _swiftEmptyArrayStorage;
      v3 = sub_1E8A6C();
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = v4;
        v6 = v3;
        v7 = [v0 traitCollection];
        UITraitCollection.configure<A, B>(libraryRequest:)(v5);

        if (*(*(sub_1E4708() + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text + 8))
        {

          v8 = sub_AB9260();
        }

        else
        {
          v8 = 0;
        }

        [v5 setFilterText:v8];
      }

      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = swift_allocObject();
      *(v10 + 16) = v2;
      *(v10 + 24) = v9;
      v76 = sub_1EB41C;
      v77 = v10;
      aBlock = _NSConcreteStackBlock;
      v73 = 1107296256;
      v74 = sub_151E0;
      v75 = &block_descriptor_406;
      v11 = _Block_copy(&aBlock);

      v70 = [v3 newOperationWithResponseHandler:v11];
      _Block_release(v11);
      if (v1[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_wantsMusicVideoPicker] == 1)
      {
        v12 = sub_1E6770();
      }

      else
      {
        v12 = *&v1[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_musicVideosViewController];
      }

      v13 = v12;
      v71 = v3;
      ObjectType = swift_getObjectType();
      v15 = swift_conformsToProtocol2();
      if (v15)
      {
        v16 = v15;
        v17 = *(v15 + 8);
        v18 = v13;
        v19 = v17(ObjectType, v16);

        objc_opt_self();
        v20 = swift_dynamicCastObjCClass();
        if (v20)
        {
          v21 = v20;
          v22 = v19;
          v23 = [v1 traitCollection];
          UITraitCollection.configure<A, B>(libraryRequest:)(v21);

          if (*(*(sub_1E4708() + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text + 8))
          {

            v24 = sub_AB9260();
          }

          else
          {
            v24 = 0;
          }

          [v21 setFilterText:v24];
        }

        v25 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v26 = swift_allocObject();
        v26[2] = v2;
        v26[3] = v18;
        v26[4] = v25;
        v76 = sub_1EB49C;
        v77 = v26;
        aBlock = _NSConcreteStackBlock;
        v73 = 1107296256;
        v74 = sub_151E0;
        v75 = &block_descriptor_413;
        v27 = _Block_copy(&aBlock);

        v69 = v18;

        v68 = [v19 newOperationWithResponseHandler:v27];
        _Block_release(v27);
        v28 = [objc_allocWithZone(MPModelLibraryRequest) init];
        v29 = objc_opt_self();
        v30 = objc_opt_self();
        v31 = objc_opt_self();
        v32 = v28;
        v33 = [v31 kindWithVariants:1];
        v34 = [v30 kindWithSongKind:v33];

        v35 = [v29 kindWithAlbumKind:v34];
        [v32 setItemKind:v35];

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_AF82B0;
        v37 = *&v1[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_artist];
        *(v36 + 32) = [v37 identifiers];

        sub_13C80(0, &unk_DE8180);
        isa = sub_AB9740().super.isa;

        [v32 setAllowedItemIdentifiers:isa];

        v39 = sub_AB9260();
        [v32 setLabel:v39];

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_B00DA0;
        *(v40 + 32) = sub_AB92A0();
        *(v40 + 40) = v41;
        *(v40 + 48) = sub_AB92A0();
        *(v40 + 56) = v42;
        *(v40 + 64) = sub_AB92A0();
        *(v40 + 72) = v43;
        *(v40 + 80) = sub_AB92A0();
        *(v40 + 88) = v44;
        *(v40 + 96) = sub_AB92A0();
        *(v40 + 104) = v45;
        *(v40 + 112) = sub_AB92A0();
        *(v40 + 120) = v46;
        v47 = sub_AB9740().super.isa;
        v48 = [objc_opt_self() propertySetWithProperties:v47];

        [v32 setItemProperties:v48];
        v49 = [v1 traitCollection];
        v50 = UITraitCollection.mediaLibrary.getter();

        [v32 setMediaLibrary:v50];
        v51 = [v1 traitCollection];
        LOBYTE(v50) = UITraitCollection.legacyLibraryFilter.getter().rawValue;

        v52 = MPMediaLibraryFilteringOptions.itemRequestFilteringOptions.getter(v50);
        v53 = [v32 filteringOptions];
        if ((v52 & ~v53) != 0)
        {
          v54 = v52;
        }

        else
        {
          v54 = 0;
        }

        [v32 setFilteringOptions:v54 | v53];
        v55 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v56 = swift_allocObject();
        *(v56 + 16) = v55;
        *(v56 + 24) = v2;
        v76 = sub_1EB4A8;
        v77 = v56;
        aBlock = _NSConcreteStackBlock;
        v73 = 1107296256;
        v74 = sub_151E0;
        v75 = &block_descriptor_420;
        v57 = _Block_copy(&aBlock);

        v58 = [v32 newOperationWithResponseHandler:v57];
        _Block_release(v57);
        v59 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v60 = swift_allocObject();
        *(v60 + 16) = v2;
        *(v60 + 24) = v59;
        v76 = sub_1EB520;
        v77 = v60;
        aBlock = _NSConcreteStackBlock;
        v73 = 1107296256;
        v74 = sub_1B5EB4;
        v75 = &block_descriptor_427;
        v61 = _Block_copy(&aBlock);
        v62 = objc_opt_self();

        v63 = [v62 blockOperationWithBlock:v61];
        _Block_release(v61);

        [v63 addDependency:v70];
        [v63 addDependency:v68];
        [v63 addDependency:v58];
        v64 = [swift_getObjCClassFromObject() preferredQueue];
        [v64 addOperation:v70];

        v65 = [swift_getObjCClassFromObject() preferredQueue];
        [v65 addOperation:v68];

        swift_getObjectType();
        v66 = [swift_getObjCClassFromMetadata() preferredQueue];
        [v66 addOperation:v58];

        v67 = [objc_opt_self() mainQueue];
        [v67 addOperation:v63];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1E733C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1E42B0();
    v3 = sub_1E439C();
    v5 = v4;
    v6 = sub_AB6500();
    v8 = *(v7 + 8);
    *(v7 + 8) = v3;
    *(v7 + 16) = v5;
    sub_17654(v8);
    v6(v9, 0);
  }
}

void sub_1E73F0()
{
  v1 = OBJC_IVAR____TtC16MusicApplication20ArtistViewController__artistStorePusher;
  if (*&v0[OBJC_IVAR____TtC16MusicApplication20ArtistViewController__artistStorePusher])
  {
    return;
  }

  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_albumsResponse];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = *&v0[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_artistHeaderResponse];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v2;
  v5 = v3;
  v6 = v0;
  v7 = [v0 traitCollection];
  v8 = UITraitCollection.isMediaPicker.getter();

  if (v8)
  {

    v0 = v6;
LABEL_6:
    *&v0[v1] = 0;

    return;
  }

  v24 = 0;
  v9 = [v4 results];
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = &v24;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1EB538;
  *(v12 + 24) = v11;
  aBlock[4] = sub_5794C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_48D4FC;
  aBlock[3] = &block_descriptor_436;
  v13 = _Block_copy(aBlock);

  [v10 enumerateItemsUsingBlock:v13];
  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = [v5 results];
  if (!v14)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = [v14 firstItem];

  if (v16)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass() && (v17 = v24) != 0)
    {
      type metadata accessor for ArtistStorePusher();
      swift_allocObject();
      v18 = v17;
      v19 = sub_1EB9D0(v17);
      *&v6[v1] = v19;

      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = *(v19 + 104);
      *(v19 + 104) = sub_1EBED4;
      *(v19 + 112) = v20;

      sub_17654(v21);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v22 = v24;
}

uint64_t sub_1E7770(uint64_t a1, uint64_t a2, _BYTE *a3, void **a4)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
    MPModelObject.bestIdentifier(for:)(*v8, 0);
    if (v9)
    {

      v10 = *a4;
      *a4 = v7;
      swift_unknownObjectRetain();

      *a3 = 1;
    }
  }

  return swift_unknownObjectRelease();
}

void sub_1E7818(char a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication20ArtistViewController_hasContent;
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_hasContent) == (a1 & 1))
  {
    return;
  }

  v3 = v1;
  v5 = (*(sub_1E4708() + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  v6 = v5[1];
  if (!v6)
  {

    sub_1E4A04();
    LOBYTE(v8) = 0;
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v7 = *v5;

  if ((v6 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v8 = v7 & 0xFFFFFFFFFFFFLL;
  }

  sub_1E4A04();
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = *(v3 + v2) ^ 1;
  LOBYTE(v8) = 1;
LABEL_10:
  sub_3B0720(v9 & 1, 0);

  v10 = *(v3 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController____lazy_storage___contentFilteringController);
  v11 = *(v10 + 64);
  v12 = (v8 | *(v3 + v2)) & 1;
  *(v10 + 64) = v12;
  if (v11 != v12)
  {

    sub_430320();
  }

  sub_1E3A90();
  if (a1)
  {

    sub_1E7950();
  }
}

void sub_1E7950()
{
  if (v0[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_hasContent])
  {
    return;
  }

  v1 = (*(sub_1E4708() + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  v2 = v1[1];
  if (!v2)
  {

LABEL_8:
    v5 = [v0 navigationController];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 removeViewController:v0 animated:1];
    }

    return;
  }

  v3 = *v1;

  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    goto LABEL_8;
  }
}

uint64_t sub_1E7A38(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  swift_beginAccess();
  v7 = *(a1 + 16);
  v8 = a3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_6AA00(0, v7[2] + 1, 1, v7);
    *(a1 + 16) = v7;
  }

  v11 = v7[2];
  v10 = v7[3];
  if (v11 >= v10 >> 1)
  {
    v7 = sub_6AA00((v10 > 1), v11 + 1, 1, v7);
  }

  v7[2] = v11 + 1;
  v12 = &v7[2 * v11];
  v12[4] = sub_1EC004;
  v12[5] = v6;
  *(a1 + 16) = v7;
  return swift_endAccess();
}

void sub_1E7B44(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = a2;
    sub_3B4724(a2);
    v6 = *&v4[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_albumsResponse];
    *&v4[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_albumsResponse] = a2;
    v7 = v5;
  }
}

uint64_t sub_1E7BD4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  sub_13C80(0, &qword_DE8ED0);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a1;
  v9[5] = a5;
  v10 = a1;

  v11 = a4;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1EBF50, v9);
}

uint64_t sub_1E7C98(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  swift_beginAccess();
  v9 = *(a1 + 16);
  v10 = a3;

  v11 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_6AA00(0, v9[2] + 1, 1, v9);
    *(a1 + 16) = v9;
  }

  v14 = v9[2];
  v13 = v9[3];
  if (v14 >= v13 >> 1)
  {
    v9 = sub_6AA00((v13 > 1), v14 + 1, 1, v9);
  }

  v9[2] = v14 + 1;
  v15 = &v9[2 * v14];
  v15[4] = sub_1EBFA4;
  v15[5] = v8;
  *(a1 + 16) = v9;
  return swift_endAccess();
}

void sub_1E7DB0(void *a1, void *a2)
{
  v3 = *&stru_158.segname[(swift_isaMask & *a1) - 8];
  v4 = a2;
  v3(a2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_musicVideosResponse);
    *(Strong + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_musicVideosResponse) = a2;
    v7 = Strong;
    v8 = v4;
  }
}

uint64_t sub_1E7E78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  sub_13C80(0, &qword_DE8ED0);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v11 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(a6, v10);
}

uint64_t sub_1E7F30(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_hasReceivedArtistHeaderResponse);
    *(Strong + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_hasReceivedArtistHeaderResponse) = 1;
    if ((v8 & 1) == 0)
    {
      sub_1E3A90();
    }
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a3;
  swift_beginAccess();
  v10 = *(a2 + 16);
  v11 = a3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_6AA00(0, v10[2] + 1, 1, v10);
    *(a2 + 16) = v10;
  }

  v14 = v10[2];
  v13 = v10[3];
  if (v14 >= v13 >> 1)
  {
    v10 = sub_6AA00((v13 > 1), v14 + 1, 1, v10);
  }

  v10[2] = v14 + 1;
  v15 = &v10[2 * v14];
  v15[4] = sub_1EBEF0;
  v15[5] = v9;
  *(a2 + 16) = v10;
  return swift_endAccess();
}

uint64_t sub_1E8080(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_artistHeaderResponse);
    *(result + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_artistHeaderResponse) = a2;
    v5 = result;
    v6 = a2;

    v7 = MPModelResponseDidInvalidateNotification;
    v8 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    v10 = v6;
    v11 = v7;

    type metadata accessor for NotificationObserver();
    swift_allocObject();
    *&v5[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_responseInvalidationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v11, a2, 1, 1, sub_1EBEF8, v8);
  }

  return result;
}

void sub_1E81BC()
{
  v0 = sub_AB7C10();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB7C50();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((Strong[OBJC_IVAR____TtC16MusicApplication20ArtistViewController__needsModelResponsesReload] & 1) == 0)
    {
      Strong[OBJC_IVAR____TtC16MusicApplication20ArtistViewController__needsModelResponsesReload] = 1;
      v9 = Strong;
      sub_13C80(0, &qword_DE8ED0);
      v10 = sub_ABA150();
      v11 = swift_allocObject();
      *(v11 + 16) = v9;
      aBlock[4] = sub_1EC334;
      aBlock[5] = v11;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = &block_descriptor_451;
      v12 = _Block_copy(aBlock);
      v13 = v9;

      sub_AB7C30();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1EC1B0(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
      sub_D1010();
      sub_ABABB0();
      sub_ABA160();
      (*(v1 + 8))(v3, v0);
      (*(v5 + 8))(v7, v4);
      _Block_release(v12);

      Strong = v10;
    }
  }
}

void sub_1E84CC(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {

    v4 = v2 + 40;
    do
    {
      v5 = *(v4 - 8);

      v5(v6);

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    *(Strong + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_hasLoadedResponsesOnce) = 1;
    v9 = *(Strong + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_albumsResponse);
    if (!v9)
    {
      goto LABEL_10;
    }

    v10 = [v9 results];
    if (!v10)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v11 = v10;
    v12 = [v10 totalItemCount];

    if (v12 > 0)
    {
      v13 = 1;
    }

    else
    {
LABEL_10:
      v14 = *&v8[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_musicVideosResponse];
      if (v14)
      {
        v15 = [v14 results];
        if (!v15)
        {
LABEL_24:
          __break(1u);
          return;
        }

        v16 = v15;
        v17 = [v15 totalItemCount];

        v13 = v17 > 0;
      }

      else
      {
        v13 = 0;
      }
    }

    v18 = v8[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_hasContent];
    v8[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_hasContent] = v13;
    sub_1E7818(v18);
    sub_1E73F0();
    sub_1E3A90();
    v19 = *&v8[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_artistHeaderResponse];
    if (!v19)
    {
LABEL_19:

      return;
    }

    v20 = [v19 results];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 firstItem];

      if (v22)
      {
        objc_opt_self();
        v23 = swift_dynamicCastObjCClass();
        if (!v23)
        {

          swift_unknownObjectRelease();
          return;
        }

        v24 = *&v8[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_artist];
        *&v8[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_artist] = v23;
        v25 = v23;
        swift_unknownObjectRetain();

        v26 = sub_1E42B0();
        swift_unknownObjectRetain();
        v27 = sub_AB6500();
        v29 = *v28;
        *v28 = v25;

        v27(&v33, 0);
        v30 = *(sub_1E4708() + 32);

        v31 = [v30 searchBar];

        sub_1E47E4();
        v32 = sub_AB9260();

        [v31 setPlaceholder:v32];
        swift_unknownObjectRelease();
      }

      goto LABEL_19;
    }

    goto LABEL_23;
  }
}

uint64_t sub_1E87BC()
{
}

id sub_1E8AE8(uint64_t a1, void *a2)
{
  sub_140970(a1, a2);
  result = [a2 year];
  if (result >= 1)
  {
    v5 = sub_ABB330();
    v7 = v6;
    v8 = (a1 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_artistName);
    swift_beginAccess();
    v9 = *v8;
    v10 = v8[1];
    *v8 = v5;
    v8[1] = v7;
    sub_1AE788(v9, v10);
  }

  return result;
}

void sub_1E8CC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = a4;
  v5 = sub_AB7C10();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_AB7C50();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC16MusicApplication20ArtistViewController__needsModelResponsesReload) == 1)
    {
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC16MusicApplication20ArtistViewController__needsModelResponsesReload) = 1;
      v17 = Strong;
      sub_13C80(0, &qword_DE8ED0);
      v14 = sub_ABA150();
      v15 = swift_allocObject();
      *(v15 + 16) = v17;
      aBlock[4] = a3;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = v18;
      v16 = _Block_copy(aBlock);
      v18 = v17;

      sub_AB7C30();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1EC1B0(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
      sub_D1010();
      sub_ABABB0();
      sub_ABA160();
      (*(v6 + 8))(v8, v5);
      (*(v10 + 8))(v12, v9);
      _Block_release(v16);
    }
  }
}

uint64_t sub_1E9018(uint64_t (*a1)(void), void (*a2)(uint64_t))
{
  v3 = a1();
  a2(v3);
  sub_3E2E84(0);
}

id sub_1E9068(uint64_t a1, void *a2)
{
  sub_36D400(a1, a2);
  result = [a2 year];
  if (result >= 1)
  {
    v5 = sub_ABB330();
    v6 = (a1 + OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_artistName);
    v7 = *(a1 + OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_artistName);
    v8 = *(a1 + OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_artistName + 8);
    *v6 = v5;
    v6[1] = v9;
    sub_17217C(v7, v8);
  }

  return result;
}

id sub_1E912C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  swift_unknownObjectWeakInit();
  v11.receiver = a1;
  v11.super_class = a5(0);
  v8 = a3;
  v9 = objc_msgSendSuper2(&v11, "initWithCoder:", v8);

  return v9;
}

id sub_1E91D8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *sub_1E92B4(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = [v1 itemProperties];
  if (v2)
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_AF4EC0;
    *(v4 + 32) = sub_AB92A0();
    *(v4 + 40) = v5;
    isa = sub_AB9740().super.isa;
    v7 = [objc_opt_self() propertySetWithProperties:isa];

    v8 = [v3 propertySetByCombiningWithPropertySet:v7];
  }

  else
  {
    v8 = 0;
  }

  [v1 setItemProperties:v8];

  [v1 setSectionProperties:0];
  return v1;
}

id sub_1E9420(uint64_t a1, void *a2)
{
  sub_15C4E0(a1, a2);
  result = [a2 year];
  if (result >= 1)
  {
    v5 = sub_ABB330();
    v7 = v6;
    v8 = (a1 + OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_subtitle);
    *v8 = v5;
    v8[1] = v6;

    v9 = *(a1 + OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_textComponents + 8);
    swift_beginAccess();
    *(v9 + 112) = v5;
    *(v9 + 120) = v7;

    sub_2EB704();
  }

  return result;
}

void sub_1E95C8(uint64_t a1)
{
  v2 = v1;
  v60 = a1;
  v57 = sub_AB3430();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB3820();
  v59 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v58);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v19 - 8);
  v21 = &v53 - v20;
  v22 = *(v2 + 24);
  if (!v22)
  {
    return;
  }

  v23 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerDetailLink;
  swift_beginAccess();
  v24 = *(v22 + v23);
  if (!v24)
  {
    return;
  }

  v55 = v24;
  v54 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v25 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v64, 0, sizeof(v64));
  v65 = 0;
  (*(*(v25 - 8) + 56))(v21, 1, 1, v25);
  sub_15F84(v64, &v61, &unk_DE8E30);
  if (*(&v62 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
    v26 = _s30CollectionViewSelectionHandlerVMa();
    v27 = swift_dynamicCast();
    v28 = *(v26 - 8);
    (*(v28 + 56))(v12, v27 ^ 1u, 1, v26);
    if ((*(v28 + 48))(v12, 1, v26) != 1)
    {
      v29 = v59;
      (*(v59 + 16))(v18, &v12[*(v26 + 20)], v5);
      sub_1EC260(v12, _s30CollectionViewSelectionHandlerVMa);
      v30 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    sub_12E1C(&v61, &unk_DE8E30);
    v31 = _s30CollectionViewSelectionHandlerVMa();
    (*(*(v31 - 8) + 56))(v12, 1, 1, v31);
  }

  sub_12E1C(v12, &qword_E037A0);
  v30 = 1;
  v29 = v59;
LABEL_8:
  (*(v29 + 56))(v18, v30, 1, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v33 = Strong, sub_12B2FC(), v35 = v34, v37 = v36, v33, v35))
  {
    ObjectType = swift_getObjectType();
    (*(v37 + 8))(ObjectType, v37);
    v53 = v39;
    swift_unknownObjectRelease();
    sub_15F84(v18, v16, &unk_DE8E20);
    v40 = v59;
    if ((*(v59 + 48))(v16, 1, v5) == 1)
    {
      sub_12E1C(v16, &unk_DE8E20);
      v61 = 0u;
      v62 = 0u;
      v63 = 0;
    }

    else
    {
      (*(v40 + 32))(v7, v16, v5);
      sub_1EC1B0(&qword_DFAA90, &type metadata accessor for IndexPath);
      sub_ABAD10();
    }

    v42 = swift_getObjectType();
    v43 = v53;
    sub_3B8F68();
    v41 = sub_21CCAC(1, v4, &v61, v42, v43);
    (*(v56 + 8))(v4, v57);
    sub_12E1C(&v61, &qword_DF2BD0);
    sub_12E1C(v18, &unk_DE8E20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v18, &unk_DE8E20);
    v41 = 0;
  }

  v44 = swift_unknownObjectWeakLoadStrong();
  if (v44)
  {
    v45 = v44;
    sub_12AFE8();
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  sub_15F28(v60, &v61);
  sub_15F84(v64, (v9 + 104), &unk_DE8E30);
  v48 = v58;
  sub_15F84(v21, &v9[*(v58 + 28)], &unk_DEA510);
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 8) = 1;
  *(v9 + 9) = 0;
  *(v9 + 10) = 0;
  *(v9 + 11) = 0;
  sub_2D594(&v61, v9);
  *(v9 + 12) = 0;
  v49 = *v54;
  *(&v62 + 1) = v48;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v61);
  sub_1EC1F8(v9, boxed_opaque_existential_0, _s23MusicPerformanceContextVMa);
  v51 = v49;
  v52 = v55;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v55, 0, v41, v47, &v61);
  sub_12E1C(v21, &unk_DEA510);
  sub_12E1C(v64, &unk_DE8E30);
  sub_1EC260(v9, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v61, &unk_DE8E40);
}

void sub_1E9E2C(uint64_t a1, uint64_t a2)
{
  v3 = sub_AB31C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(type metadata accessor for JSDrivenViewController()) init];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_728FC(v7, 0, 1, Strong);
  }

  v10 = *JSBridge.shared.unsafeMutableAddressor();
  (*(v4 + 16))(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = (v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v4 + 32))(v13 + v11, v6, v3);
  *(v13 + v12) = v7;
  v14 = *&stru_B8.segname[(swift_isaMask & *v10) + 16];
  v15 = v10;
  v16 = v7;
  v14(sub_1EB2CC, v13);
}

uint64_t sub_1EA00C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_AB31C0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  v10 = a3;
  JSApplication.initiateOpenURL(_:sourceApplicationBundleIdentifier:referrerURL:completion:)(a2, 0, 0, v7, sub_1EB3A0, v9);
  sub_12E1C(v7, &unk_DF2AE0);
}

void sub_1EA14C(void *a1)
{
  if (a1)
  {
    type metadata accessor for JSDeepLinkSegue();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = OBJC_IVAR____TtC11MusicJSCore15JSDeepLinkSegue_pushSegues;
      v4 = v2;
      swift_beginAccess();
      v5 = *(v4 + v3);
      if (v5 >> 62)
      {
        if (!sub_ABB060())
        {
          return;
        }
      }

      else if (!*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
      {
        return;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = a1;

        v8 = sub_361284(0, v5);
      }

      else
      {
        if (!*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return;
        }

        v6 = *(v5 + 32);
        v7 = a1;
        v8 = v6;
      }

      JSDrivenViewController.configure(pushSegue:)(v8);
    }
  }
}

uint64_t sub_1EA254()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);

  sub_466A4(v7, v8);
  sub_17654(*(v0 + 104));
  v9 = *(v0 + 96);
  *(v0 + 96) = 0;

  if (v9)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v10 = *(v9 + 96);
      swift_retain_n();

      v9 = v10;
    }

    while (v10);
  }

  return v0;
}

uint64_t sub_1EA328()
{
  sub_1EA254();

  return swift_deallocClassInstance();
}

void sub_1EA380()
{
  v1 = *(v0 + 104);
  if (v1)
  {

    v1(v0);

    sub_17654(v1);
  }
}

uint64_t sub_1EA3F0()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E711B8);
  __swift_project_value_buffer(v0, qword_E711B8);
  return static Logger.music(_:)();
}

id sub_1EA454(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 48);
  v12 = *(a1 + 24);
  v4 = *(a1 + 16);
  v10[1] = *a1;
  v10[2] = v4;
  v10[3] = *(a1 + 32);
  v11 = v3;
  v5 = v1;

  sub_307CC(v2);
  sub_15F84(&v12, v10, &qword_DFE980);
  v6 = sub_AB64F0();
  result = [v6 view];
  if (result)
  {
    v8 = result;

    sub_17654(v2);
    sub_12E1C(&v12, &qword_DFE980);

    v9 = [objc_opt_self() clearColor];
    [v8 setBackgroundColor:v9];

    sub_AB64B0();
    [v6 setPreferredContentSize:?];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1EA5B8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v6 = *&v4[qword_E0B7F8];
  if (v6 && (, *&v9 = COERCE_DOUBLE(v6(v4, a3, a4)), v11 = v10, sub_17654(v6), (v11 & 1) == 0))
  {
    v17 = *&v9;
  }

  else
  {
    v12 = [v5 traitCollection];
    result = [v5 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v14 = result;
    [result music_inheritedLayoutInsets];

    v15 = [objc_opt_self() defaultMetrics];
    sub_AB9EF0();
    v17 = v16;
  }

  return [v5 setPreferredContentSize:{0.0, v17}];
}

id sub_1EA73C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = *&v4[qword_E0B7F8];
  if (v10)
  {

    *&v11 = COERCE_DOUBLE(v10(v4, a3, a4));
    v13 = v12;
    sub_17654(v10);
    if ((v13 & 1) == 0)
    {
      v30 = *&v11;
      goto LABEL_10;
    }
  }

  v14 = type metadata accessor for CollectionViewSection.SectionHeaderView(0);
  v15 = swift_conformsToProtocol2();
  if (!v15 || !v14)
  {
    result = [v5 view];
    if (result)
    {
      v31 = result;
      [result sizeThatFits:{a3, a4}];
      v30 = v32;

      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  v16 = v15;
  v17 = [v5 traitCollection];
  result = [v5 view];
  if (!result)
  {
    goto LABEL_14;
  }

  v19 = result;
  [result music_inheritedLayoutInsets];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = UIEdgeInsetsInsetRect_1(a1, a2, a3, a4, v21, v23, v25, v27);
  (*(v16 + 8))(v17, v14, v16, v28);
  v30 = v29;

LABEL_10:

  return [v5 setPreferredContentSize:{0.0, v30}];
}

id sub_1EA93C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = *&v4[qword_E0B7F8];
  if (v10)
  {

    *&v11 = COERCE_DOUBLE(v10(v4, a3, a4));
    v13 = v12;
    sub_17654(v10);
    if ((v13 & 1) == 0)
    {
      v19 = *&v11;
      goto LABEL_13;
    }
  }

  v14 = sub_13C80(0, &qword_DEF620);
  v15 = swift_conformsToProtocol2();
  if (v15)
  {
    v16 = v14 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v20 = v15;
    v21 = [v5 traitCollection];
    result = [v5 view];
    if (result)
    {
      v23 = result;
      [result music_inheritedLayoutInsets];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;

      v32 = UIEdgeInsetsInsetRect_1(a1, a2, a3, a4, v25, v27, v29, v31);
      (*(v20 + 8))(v21, v14, v20, v32);
      v19 = v33;

      goto LABEL_13;
    }

LABEL_17:
    __break(1u);
    return result;
  }

  result = [v5 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = result;
  [result sizeThatFits:{a3, a4}];
  v19 = v18;

LABEL_13:

  return [v5 setPreferredContentSize:{0.0, v19}];
}

uint64_t sub_1EAB50()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void (*sub_1EABE0(uint64_t a1, void *a2, uint64_t a3))()
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v39 - v7;
  v9 = sub_AB31C0();
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  v11 = __chkstk_darwin(v9);
  v44 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v39 - v13;
  __chkstk_darwin(v12);
  v16 = &v39 - v15;
  BagProvider.shared.unsafeMutableAddressor();

  v17 = BagProvider.bag.getter();

  if (!v17)
  {
    return 0;
  }

  v18 = [v17 stringForBagKey:ICURLBagKeyCountryCode];

  if (!v18)
  {
    return 0;
  }

  v42 = v16;
  v43 = a3;
  v19 = a2;
  v20 = sub_AB92A0();
  v22 = v21;

  v46 = 0;
  v47 = 0xE000000000000000;
  sub_ABAD90(36);

  v46 = 0xD000000000000018;
  v47 = 0x8000000000B56F20;
  v48._countAndFlagsBits = v20;
  v48._object = v22;
  sub_AB94A0(v48);
  v49._countAndFlagsBits = 0x2F7473697472612FLL;
  v49._object = 0xE800000000000000;
  sub_AB94A0(v49);
  v50._countAndFlagsBits = a1;
  v50._object = v19;
  sub_AB94A0(v50);
  sub_AB3180();

  v23 = v45;
  if ((*(v45 + 48))(v8, 1, v9) == 1)
  {
    sub_12E1C(v8, &unk_DF2AE0);

    return 0;
  }

  v41 = v22;
  v25 = v42;
  v40 = *(v23 + 32);
  v40(v42, v8, v9);
  if (qword_DE69A8 != -1)
  {
    swift_once();
  }

  v26 = sub_AB4BC0();
  __swift_project_value_buffer(v26, qword_E711B8);
  (*(v23 + 16))(v14, v25, v9);
  v27 = sub_AB4BA0();
  v28 = sub_AB9F50();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v46 = v39;
    *v29 = 136315138;
    v30 = _s10Foundation3URLV11MusicJSCoreE12JSSerializedSSvg_0();
    v32 = v31;
    (*(v45 + 8))(v14, v9);
    v33 = sub_425E68(v30, v32, &v46);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_0, v27, v28, "Adding segue navigation for url=%s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);

    v23 = v45;
  }

  else
  {
    (*(v23 + 8))(v14, v9);
  }

  sub_15F28(v43, &v46);
  v34 = v44;
  v35 = v25;
  v36 = v40;
  v40(v44, v35, v9);
  v37 = (*(v23 + 80) + 112) & ~*(v23 + 80);
  v38 = swift_allocObject();
  sub_17704(&v46, v38 + 16);
  v36(v38 + v37, v34, v9);

  return sub_1EB1CC;
}

uint64_t sub_1EB0CC()
{
  v1 = sub_AB31C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  swift_unknownObjectWeakDestroy();
  v4 = *(v0 + 64);
  if (v4 != 255)
  {
    sub_17774(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), v4);
  }

  if (*(v0 + 80))
  {
  }

  if (*(v0 + 96))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 112) & ~v3), v1);

  return swift_deallocObject();
}

void sub_1EB1CC()
{
  v1 = *(sub_AB31C0() - 8);
  v2 = v0 + ((*(v1 + 80) + 112) & ~*(v1 + 80));

  sub_1E9E2C(v0 + 16, v2);
}

uint64_t sub_1EB230()
{
  v1 = sub_AB31C0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1EB2CC(uint64_t a1)
{
  v3 = *(sub_AB31C0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1EA00C(a1, v1 + v4, v5);
}

uint64_t sub_1EB368()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_66(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1EB3E4()
{

  return swift_deallocObject();
}

uint64_t sub_1EB454()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_383Tm()
{

  return swift_deallocObject();
}

void sub_1EB550()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController____lazy_storage___contentFilteringController) = 0;
  v2 = OBJC_IVAR____TtC16MusicApplication20ArtistViewController_sortOptionsController;
  type metadata accessor for SortOptionsController();
  swift_allocObject();
  *(v0 + v2) = sub_225174(&off_CF0AF8, 0, 0);
  *(v0 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController____lazy_storage___noFilteredContentStateController) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController____lazy_storage___artistHeaderViewController) = 0;
  v3 = OBJC_IVAR____TtC16MusicApplication20ArtistViewController_playIntentControlsViewController;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF7718);
  *(v1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC16MusicApplication20ArtistViewController_albumsTitleViewController;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF7720);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v4) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v6 = OBJC_IVAR____TtC16MusicApplication20ArtistViewController_albumsMusicVideosSpacingViewController;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF7728);
  *(v1 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = OBJC_IVAR____TtC16MusicApplication20ArtistViewController_musicVideosTitleViewController;
  *(v1 + v7) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController____lazy_storage___musicVideosPickerViewController) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_hasReceivedArtistHeaderResponse) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_artistHeaderResponse) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_albumsResponse) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_musicVideosResponse) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_networkConnectivityObserver) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController__visible) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_wantsMusicVideoPicker) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController__artistStorePusher) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_hasLoadedResponsesOnce) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_hasContent) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController_responseInvalidationObserver) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication20ArtistViewController__needsModelResponsesReload) = 1;
  sub_ABAFD0();
  __break(1u);
}

void sub_1EB768()
{
  v1 = v0;
  v2 = sub_4D3DD0();
  [v2 contentOffset];
  v4 = v3;
  v6 = v5;

  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;
  v12 = v11;

  v13 = &v1[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds];
  *v13 = v4;
  *(v13 + 1) = v6;
  *(v13 + 2) = v10;
  *(v13 + 3) = v12;
  sub_4DB494();
  sub_4D7AA8();
  v14 = sub_1E42B0();
  v15 = [v14 view];

  if (!v15)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = OBJC_IVAR____TtC16MusicApplication20ArtistViewController____lazy_storage___artistHeaderViewController;
  v17 = [*&v1[OBJC_IVAR____TtC16MusicApplication20ArtistViewController____lazy_storage___artistHeaderViewController] view];
  if (!v17)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = v17;
  [v17 frame];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = [v1 view];
  [v15 convertRect:v27 toView:{v20, v22, v24, v26}];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v48.origin.x = v29;
  v48.origin.y = v31;
  v48.size.width = v33;
  v48.size.height = v35;
  MaxY = CGRectGetMaxY(v48);
  v37 = [v1 view];
  if (!v37)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v38 = v37;
  [v37 safeAreaInsets];
  v40 = v39;

  if (MaxY <= v40 && (v41 = *&v1[v16], v42 = UIViewController.isDescendant(of:)(v1), v41, v42))
  {
    v43 = *&v1[OBJC_IVAR____TtC16MusicApplication20ArtistViewController_artist];
    v45 = [v43 name];

    v44 = v45;
  }

  else
  {
    v44 = 0;
  }

  v46 = v44;
  [v1 setTitle:?];
}

uint64_t sub_1EB9D0(void *a1)
{
  v1[12] = 0;
  v1[13] = 0;
  v1[14] = 0;
  if (!a1)
  {
    goto LABEL_17;
  }

  v2 = v1;
  type metadata accessor for JSContainerDetailComponentController();
  v4 = a1;
  v5 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v4, 0, 1, UIScreen.Dimensions.size.getter, 0);
  if (!v5)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      v12 = MPModelPropertyPlaylistType;
      v13 = v4;
      if ([v11 hasLoadedValueForKey:v12] && objc_msgSend(v11, "type") == &dword_8 + 1)
      {
        v7 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0);
        v8 = *&v7[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];

        v6 = 0;
        v9 = v7;
        goto LABEL_8;
      }
    }

LABEL_17:
    result = sub_ABAFD0();
    __break(1u);
    return result;
  }

  v6 = v5;
  v7 = *&v5[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];
  v8 = v7;
  v9 = v5;
LABEL_8:
  v42 = v4;
  v14 = v7;
  v15 = type metadata accessor for JSContainerDetailModelRequest();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
  *v17 = 0;
  v17[1] = 0;
  v16[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption] = 13;
  swift_unknownObjectWeakInit();
  v18 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel;
  *&v16[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel] = 0;
  v16[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_isCancelled] = 0;
  *&v16[v18] = v8;
  v54.receiver = v16;
  v54.super_class = v15;
  v19 = v8;
  v20 = v6;
  v21 = v19;
  v22 = objc_msgSendSuper2(&v54, "init");
  if ((v21[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_itemKind] & 0xFE) == 2)
  {
    sub_13C80(0, &qword_DE8E90);
    v23 = v22;
    v24 = static MPModelAlbum.defaultMusicKind.getter();
    [v23 setSectionKind:v24];

    v25 = [objc_opt_self() kindWithVariants:3];
    v26 = v25;
  }

  else
  {
    sub_13C80(0, &qword_DE9C10);
    v25 = static MPModelPlaylistEntry.defaultMusicKind.getter();
    v27 = objc_opt_self();
    v26 = v22;
    v28 = [v27 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v25 options:0];
    [v26 setSectionKind:v28];

    v23 = v25;
  }

  [v22 setItemKind:v25];

  v29 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_prominentItemIdentifiers;
  swift_beginAccess();
  v30 = *&v21[v29];
  v31 = v30;

  v32 = JSViewModel.playActivityRecommendationData.getter();
  v34 = v33;
  sub_466A4(0, 0xF000000000000000);
  *&v44 = v22;
  *(&v44 + 1) = v8;
  v45 = a1;
  v46 = v9;
  *&v47 = v30;
  BYTE8(v47) = 1;
  *(&v47 + 9) = v55[0];
  HIDWORD(v47) = *(v55 + 3);
  *&v48 = v32;
  *(&v48 + 1) = v34;
  v49[0] = v22;
  v49[1] = v8;
  v49[2] = a1;
  v49[3] = 0;
  v49[4] = v9;
  v49[5] = 0;
  v49[6] = v30;
  v50 = 1;
  *&v51[3] = *(v55 + 3);
  *v51 = v55[0];
  v52 = v32;
  v53 = v34;
  sub_70EB0(&v44, v43);
  v35 = sub_70F0C(v49);
  v36 = v46;
  v37 = v47;
  *(v2 + 3) = v46;
  *(v2 + 4) = v37;
  *(v2 + 5) = v48;
  v38 = v45;
  *(v2 + 1) = v44;
  *(v2 + 2) = v38;
  if (v36)
  {
    (*(&stru_1F8.offset + (swift_isaMask & *v36)))(v35);
  }

  v39 = v2[3];
  if (v39)
  {
    v40 = v39 + OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerDetailDelegate;
    swift_beginAccess();
    *(v40 + 8) = &off_D01520;
    swift_unknownObjectWeakAssign();
  }

  return v2;
}

uint64_t sub_1EBF00()
{

  return swift_deallocObject();
}

uint64_t sub_1EBF5C()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_439Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1EC108()
{

  return swift_deallocObject();
}

uint64_t sub_1EC140(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1EC1B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1EC1F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1EC260(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1EC354(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v3 - 8);
  v5 = v35 - v4;
  v6 = sub_AB31C0();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v35 - v12;
  __chkstk_darwin(v11);
  v15 = v35 - v14;
  v16 = [objc_opt_self() defaultWorkspace];
  if (v16)
  {
    v17 = v16;
    v18 = OBJC_IVAR____TtC11MusicJSCore15JSRedirectSegue_url;
    swift_beginAccess();
    sub_1EC750(v1 + v18, v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_12E1C(v5, &unk_DF2AE0);
    }

    else
    {
      v35[1] = a1;
      v19 = *(v7 + 32);
      v19(v15, v5, v6);
      sub_AB30F0(v20);
      v22 = v21;
      v23 = [v17 URLOverrideForURL:v21];

      if (v23)
      {
        sub_AB3150();

        v19(v13, v10, v6);
        sub_AB30F0(v24);
        v26 = v25;
        sub_97420(_swiftEmptyArrayStorage);
        isa = sub_AB8FD0().super.isa;

        [v17 openSensitiveURL:v26 withOptions:isa];

        v28 = sub_414AFC(v36);
        if (v37)
        {
          __swift_project_boxed_opaque_existential_1(v36, v37);
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v30 = Strong;
            _s30CollectionViewSelectionHandlerVMa();
            v31 = sub_AB3770().super.isa;
            [v30 deselectItemAtIndexPath:v31 animated:1];
            v32 = *(v7 + 8);
            v32(v13, v6);
            v32(v15, v6);
          }

          else
          {
            v34 = *(v7 + 8);
            v34(v13, v6);
            v34(v15, v6);
          }

          __swift_destroy_boxed_opaque_existential_0(v36);
        }

        else
        {
          v33 = *(v7 + 8);
          v33(v13, v6, v28);
          (v33)(v15, v6);
          sub_12E1C(v36, &unk_DE8E30);
        }
      }

      else
      {
        (*(v7 + 8))(v15, v6);
      }
    }
  }
}

uint64_t sub_1EC750(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1EC7D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_editingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = &v3[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_editingMenu];
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  v3[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_pendingSelectedIdentifier] = 13;
  v8 = OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_downloadManagerObserver;
  *&v4[v8] = [objc_allocWithZone(type metadata accessor for LibraryMenuViewController.DownloadManagerObserver()) init];
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_prewarmedIdentifierViewController];
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_requestResponseController;
  Library.Menu.Request.init()(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF7990);
  swift_allocObject();
  *&v4[v10] = RequestResponse.Controller.init(request:)(v18);
  *&v4[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_dataSource] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_allowsAnimatedChanges] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_hasLoadedSuccessfulResponse] = 0;
  if (a2)
  {
    v11 = sub_AB9260();
  }

  else
  {
    v11 = 0;
  }

  v17.receiver = v4;
  v17.super_class = type metadata accessor for LibraryMenuViewController();
  v12 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", v11, a3);

  v13 = v12;
  v14 = sub_4D3C64();
  v15 = v14[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isReadyForDisplay];
  v14[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isReadyForDisplay] = 0;
  sub_4DB9F0(v15);

  return v13;
}

id sub_1ECA00()
{
  v1 = v0;
  v68.receiver = v0;
  v68.super_class = type metadata accessor for LibraryMenuViewController();
  objc_msgSendSuper2(&v68, "viewDidLoad");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  if (qword_DE6C58 != -1)
  {
    swift_once();
  }

  v4 = qword_E71898;
  [v3 setBackgroundColor:qword_E71898];

  result = [v1 view];
  if (!result)
  {
    goto LABEL_8;
  }

  v5 = result;
  v6 = AccessibilityIdentifier.libraryMenuView.unsafeMutableAddressor();
  v7 = *v6;
  v8 = v6[1];
  sub_13C80(0, &qword_DF12A0);

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v7, v8);

  result = [v1 tableView];
  if (result)
  {
    v9 = result;
    [result setDelegate:v1];
    [v9 setAlwaysBounceVertical:1];
    [v9 setBackgroundColor:v4];
    [v9 setAllowsMultipleSelectionDuringEditing:1];
    [v9 setAllowsSelectionDuringEditing:1];
    [v9 setAllowsFocus:1];
    [v9 setRemembersLastFocusedIndexPath:1];
    type metadata accessor for LibraryMenuViewController.Cell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = sub_AB9260();
    [v9 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v11];

    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = objc_allocWithZone(type metadata accessor for LibraryMenuViewController.DataSource()) + qword_DF78B0;
    *v13 = 0;
    v13[1] = 0;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1F3590;
    *(v14 + 24) = v12;
    v49 = v9;
    v15 = sub_AB51A0();
    v16 = *&v1[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_dataSource];
    *&v1[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_dataSource] = v15;
    v17 = v15;

    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = &v17[qword_DF78B0];
    v20 = *&v17[qword_DF78B0];
    *v19 = sub_1F35C4;
    v19[1] = v18;

    sub_17654(v20);

    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = *&v1[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_downloadManagerObserver];
    v23 = (v22 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewControllerP33_101455BD5CE9FA82B04106C497F7C13023DownloadManagerObserver_didFinishAssetDownload);
    v24 = *(v22 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewControllerP33_101455BD5CE9FA82B04106C497F7C13023DownloadManagerObserver_didFinishAssetDownload);
    *v23 = sub_1F35CC;
    v23[1] = v21;
    swift_retain_n();
    sub_17654(v24);
    v25 = (v22 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewControllerP33_101455BD5CE9FA82B04106C497F7C13023DownloadManagerObserver_didEnqueueAssetDownloads);
    v26 = *(v22 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewControllerP33_101455BD5CE9FA82B04106C497F7C13023DownloadManagerObserver_didEnqueueAssetDownloads);
    *v25 = sub_1F35CC;
    v25[1] = v21;
    sub_17654(v26);
    v27 = (v22 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewControllerP33_101455BD5CE9FA82B04106C497F7C13023DownloadManagerObserver_didCancelAssetsDownload);
    v28 = *(v22 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewControllerP33_101455BD5CE9FA82B04106C497F7C13023DownloadManagerObserver_didCancelAssetsDownload);
    *v27 = sub_1F35CC;
    v27[1] = v21;
    sub_17654(v28);
    v29 = *&v1[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_requestResponseController];
    v30 = [v1 traitCollection];
    swift_beginAccess();
    v31 = *(v29 + 48);
    v61 = *(v29 + 32);
    v62 = v31;
    v32 = *(v29 + 64);
    v33 = *(v29 + 80);
    v60 = *(v29 + 16);
    v63 = v32;
    v64 = v33;
    v34 = *(&v61 + 1);
    v35 = v60;
    LOBYTE(v22) = BYTE8(v60);
    v36 = *(v29 + 25);
    *(v67 + 3) = *(v29 + 28);
    v67[0] = v36;
    v37 = *(v29 + 57);
    v38 = *(v29 + 73);
    *&v66[15] = *(v29 + 88);
    v65 = v37;
    *v66 = v38;
    sub_1F32FC(&v60, &v50);
    UITraitCollection.mediaLibrary.getter();
    Library.Menu.Request.MediaLibrarySource.init(_:)();
    v40 = v39;
    LOBYTE(v24) = v41;
    sub_1F3358(v35, v22);
    v59 = v24 & 1;
    rawValue = UITraitCollection.combinedLibraryRequestFilter.getter().rawValue;
    v43 = UITraitCollection.mediaPickerConfiguration.getter();

    v44 = UITraitCollection.mediaPickerConfiguration.getter();
    LOBYTE(v34) = v44 == 0;

    v45 = sub_1F26FC();

    v57 = v65;
    v50 = v40;
    v51 = v59;
    *v52 = v67[0];
    *&v52[3] = *(v67 + 3);
    v53 = rawValue;
    v54 = v43;
    v55 = v45;
    v56 = v34;
    *v58 = *v66;
    *&v58[15] = *&v66[15];
    RequestResponse.Controller.request.setter(&v50);

    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = (v29 + *(*v29 + 128));
    swift_beginAccess();
    v48 = *v47;
    *v47 = sub_1F35D4;
    v47[1] = v46;

    sub_17654(v48);
  }

LABEL_9:
  __break(1u);
  return result;
}

char *sub_1ECFC8(void *a1, uint64_t a2, char a3)
{
  v5 = sub_AB9260();
  isa = sub_AB3770().super.isa;
  v7 = [a1 dequeueReusableCellWithIdentifier:v5 forIndexPath:isa];

  type metadata accessor for LibraryMenuViewController.Cell();
  v8 = swift_dynamicCastClassUnconditional();
  Library.Menu.Identifier.symbolName(for:)(2, a3);
  v9 = sub_AB9260();
  v10 = [objc_opt_self() systemImageNamed:v9];

  v11 = *&v8[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_symbol];
  *&v8[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_symbol] = v10;
  v12 = v10;

  sub_1F0C44();
  Library.Menu.Identifier.name(for:)();
  v13 = sub_1F13DC();
  v14 = sub_AB9260();

  [v13 setText:v14];

  v15 = v7;
  [v8 setAccessoryType:1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    sub_1F0304(v8);
  }

  return v8;
}

uint64_t sub_1ED1A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF7950);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v36 - v2;
  result = sub_AB51B0();
  v5 = v45;
  if (v45 != 13)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = result;
      v7 = swift_allocObject();
      v8 = &v6[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_editingMenu];
      swift_beginAccess();
      v9 = *v8;
      if (*v8)
      {
        v42 = v6;
        v36 = v1;
        v37 = v0;
        v11 = v8[4];
        v10 = v8[5];
        v12 = v8[2];
        v13 = v8[3];
        v14 = v8[1];
        v7[2] = v9;
        v7[3] = v14;
        v7[4] = v12;
        v7[5] = v13;
        v7[6] = v11;
        v7[7] = v10;

        v15 = v14;

        v16 = sub_AB37B0();
        Library.Menu.move(_:to:)(v5, v16);
        v17 = v7[2];
        v18 = v7[3];
        v19 = v7[4];
        v20 = v7[5];
        v21 = v7[6];
        v22 = v7[7];
        v23 = *v8;
        v24 = v8[1];
        v25 = v8[2];
        v40 = v8[3];
        v41 = v25;
        v26 = v8[4];
        v38 = v8[5];
        v39 = v26;
        *v8 = v17;
        v8[1] = v18;
        v8[2] = v19;
        v8[3] = v20;
        v8[4] = v21;
        v8[5] = v22;

        v27 = v18;

        result = sub_1F3364(v23, v24);
        v28 = *&v42[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_dataSource];
        if (v28)
        {
          v29 = v7[3];
          sub_1F3218();
          v41 = v28;

          v40 = v29;

          sub_AB5110();
          v30._rawValue = &off_CF0B20;
          v31 = v37;
          sub_AB50D0(v30);
          v43 = 0;
          v44 = 0;
          sub_AB5090();

          v32 = swift_allocObject();
          v33 = v42;
          *(v32 + 16) = v7;
          *(v32 + 24) = v33;

          v34 = v33;
          v35 = v41;
          sub_AB51C0();

          (*(v36 + 8))(v3, v31);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        return swift_deallocUninitializedObject();
      }
    }
  }

  return result;
}

void sub_1ED55C(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v4 - 8);
  v28 = &v26 - v5;
  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    v27 = a2;
    v26 = OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_dataSource;

    swift_beginAccess();
    v8 = 0;
    v29 = v6;
    while (v8 < *(v6 + 16))
    {
      v9 = *(v6 + v8 + 32);
      v10 = *(a1 + 32);
      v32 = *(a1 + 16);
      v33 = v10;
      v34 = *(a1 + 48);
      v11 = *(&v32 + 1);
      v35 = v32;
      v38 = *(&v10 + 1);
      v39[0] = v10;
      v36 = *(&v34 + 1);
      v37 = v34;
      sub_15F84(&v35, v31, &qword_DF7980);
      v12 = v11;
      sub_15F84(v39, v31, &qword_DF7980);
      sub_15F84(&v38, v31, &qword_DF7988);
      sub_15F84(&v37, v31, &qword_DF7980);
      sub_15F84(&v36, v31, &qword_DF7988);
      v30 = v9;
      v13 = Library.Menu.selectionState(for:)(v9);
      sub_12E1C(&v35, &qword_DF7980);

      sub_12E1C(v39, &qword_DF7980);
      sub_12E1C(&v38, &qword_DF7988);
      sub_12E1C(&v37, &qword_DF7980);
      v6 = v29;
      sub_12E1C(&v36, &qword_DF7988);
      if (!v13)
      {
        v14 = v27;
        v15 = [v27 tableView];
        if (!v15)
        {
          goto LABEL_14;
        }

        v16 = *&v14[v26];
        if (!v16)
        {
          goto LABEL_15;
        }

        v17 = v15;
        v18 = v7;
        v19 = a1;
        v31[0] = v30;
        v20 = v16;
        v21 = v28;
        sub_AB51D0();

        v22 = sub_AB3820();
        v23 = *(v22 - 8);
        isa = 0;
        if ((*(v23 + 48))(v21, 1, v22) != 1)
        {
          v25 = v28;
          isa = sub_AB3770().super.isa;
          (*(v23 + 8))(v25, v22);
        }

        [v17 selectRowAtIndexPath:isa animated:0 scrollPosition:0];

        a1 = v19;
        v7 = v18;
      }

      if (v7 == ++v8)
      {

        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_1ED8E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v0 - 8);
  v2 = &v20 - v1;
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = 0;
    v10 = OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_dataSource;
    v11 = (v4 + 48);
    v20 = (v4 + 8);
    v21 = (v4 + 32);
    while (1)
    {
      v12 = *&v8[v10];
      if (!v12)
      {
        __break(1u);
        return;
      }

      v22 = *(&off_CF0B50 + v9 + 32);
      v13 = v12;
      sub_AB51D0();

      if ((*v11)(v2, 1, v3) == 1)
      {
        sub_12E1C(v2, &unk_DE8E20);
      }

      else
      {
        (*v21)(v6, v2, v3);
        v14 = [v8 tableView];
        if (v14)
        {
          v15 = v14;
          v16 = v10;
          isa = sub_AB3770().super.isa;
          v18 = [v15 cellForRowAtIndexPath:isa];

          if (v18)
          {
            type metadata accessor for LibraryMenuViewController.Cell();
            v19 = swift_dynamicCastClass();
            if (v19)
            {
              sub_1F0304(v19);
              (*v20)(v6, v3);

LABEL_14:
              v10 = v16;
              goto LABEL_4;
            }
          }

          (*v20)(v6, v3);
          goto LABEL_14;
        }

        (*v20)(v6, v3);
      }

LABEL_4:
      if (++v9 == 2)
      {

        return;
      }
    }
  }
}

void sub_1EDBC8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ([Strong isEditing])
    {
    }

    else
    {
      RequestResponse.Revision.content.getter(v2);
      v3[0] = v2[0];
      v3[1] = v2[1];
      v3[2] = v2[2];
      sub_1EDCBC(v3);

      sub_12E1C(v3, &qword_DF7978);
    }
  }
}

void sub_1EDCBC(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF7948);
  __chkstk_darwin(v4 - 8);
  v6 = v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF7950);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - v9;
  if ([v2 isViewLoaded])
  {
    v11 = *a1;
    if (v11)
    {
      sub_1F3218();
      sub_AB5110();
      v12._rawValue = &off_CF0B78;
      sub_AB50D0(v12);
      v19[0] = 0;
      v19[1] = 0;
      sub_AB5090();
      (*(v8 + 56))(v6, 0, 1, v7);
      (*(v8 + 32))(v10, v6, v7);
    }

    else
    {
      (*(v8 + 56))(v6, 1, 1, v7);
      sub_1F3218();
      sub_AB5110();
      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        sub_12E1C(v6, &qword_DF7948);
      }
    }

    v13 = *&v2[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_dataSource];
    if (v13)
    {
      *(swift_allocObject() + 16) = v2;
      v14 = v2;
      v15 = v13;
      sub_AB51C0();

      if (v11)
      {
        v16 = OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_hasLoadedSuccessfulResponse;
        v14[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_hasLoadedSuccessfulResponse] = 1;
        v17 = sub_4D3C64();
        v18 = v17[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isReadyForDisplay];
        v17[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isReadyForDisplay] = v14[v16];
        sub_4DB9F0(v18);
        (*(v8 + 8))(v10, v7);
      }

      else
      {
        (*(v8 + 8))(v10, v7);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1EE208(char a1, char a2)
{
  v3 = v2;
  v6 = a1 & 1;
  result = [v3 isEditing];
  if (result != v6)
  {
    if (a1)
    {
      v8 = *&v3[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_requestResponseController];
      RequestResponse.Controller.isPaused.setter(1);
      swift_beginAccess();
      v9 = v8[2];
      v10 = v8[3];
      v11 = v8[5];
      v40[3] = v8[4];
      v40[4] = v11;
      v40[1] = v9;
      v40[2] = v10;
      v12 = v8[1];
      v39 = v11;
      v40[0] = v12;
      v13 = v8[4];
      v37 = v8[3];
      v38 = v13;
      v14 = v8[2];
      v35 = v8[1];
      v36 = v14;
      sub_1F32FC(v40, &v43);
      sub_1C060(&v43, 12);
      v41[2] = v37;
      v41[3] = v38;
      v41[4] = v39;
      v41[0] = v35;
      v41[1] = v36;
      v31 = v37;
      v32 = v38;
      v33 = v39;
      v29 = v35;
      v30 = v36;
      v15 = swift_allocObject();
      *(v15 + 16) = v3;
      *(v15 + 24) = a2 & 1;
      *(v15 + 25) = 1;
      sub_1F32FC(v41, &v43);
      v16 = sub_1F3428();
      v17 = v3;
      Request.performThenCompleteOnMain(_:_:)(0, sub_1F3418, v15, &type metadata for Library.Menu.Request, v16);
      sub_12E1C(v34, &unk_DF7968);
      v42[2] = v31;
      v42[3] = v32;
      v42[4] = v33;
      v42[0] = v29;
      v42[1] = v30;
      sub_1F347C(v42);
      v45 = v37;
      v46 = v38;
      v47 = v39;
      v43 = v35;
      v44 = v36;
      sub_1F347C(&v43);
    }

    else
    {
      v18 = &v3[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_editingMenu];
      swift_beginAccess();
      v19 = *v18;
      if (*v18)
      {
        v21 = *(v18 + 4);
        v20 = *(v18 + 5);
        v23 = *(v18 + 2);
        v22 = *(v18 + 3);
        v24 = *(v18 + 1);
        *&v43 = v19;
        *(&v43 + 1) = v24;
        *&v44 = v23;
        *(&v44 + 1) = v22;
        *&v45 = v21;
        *(&v45 + 1) = v20;

        v25 = v24;

        Library.Menu.persist()();
      }

      RequestResponse.Controller.isPaused.setter(0);
      v26 = &v3[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_editingMenu];
      swift_beginAccess();
      v27 = *v26;
      v28 = *(v26 + 1);
      *v26 = 0u;
      *(v26 + 1) = 0u;
      *(v26 + 2) = 0u;
      sub_1F3364(v27, v28);
      v48.receiver = v3;
      v48.super_class = type metadata accessor for LibraryMenuViewController();
      objc_msgSendSuper2(&v48, "setEditing:animated:", 0, a2 & 1);
      return RequestResponse.Controller.setNeedsReload(_:)(0, 0);
    }
  }

  return result;
}