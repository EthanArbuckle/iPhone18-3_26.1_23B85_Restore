void sub_154AF0(double a1, double a2, CGFloat a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [Strong setBackButtonAlpha:a1];
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UberNavigationTitleView_customBackButton);
    v10 = v8;
    v11 = v9;

    if (!v9)
    {
      __break(1u);
      goto LABEL_11;
    }

    [v11 setAlpha:a2];
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12)
  {
    return;
  }

  v13 = *(v12 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UberNavigationTitleView_customBackButton);
  v14 = v12;
  v15 = v13;

  if (!v13)
  {
LABEL_11:
    __break(1u);
    return;
  }

  CGAffineTransformMakeTranslation(&v16, a3, 0.0);
  [v15 setTransform:&v16];
}

unint64_t sub_154D80()
{
  result = qword_4056A0;
  if (!qword_4056A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4056A0);
  }

  return result;
}

uint64_t sub_154DD4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_154E0C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_154E6C(void *a1, uint64_t a2, char a3)
{
  v7 = [objc_allocWithZone(v3) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews26UberParallaxBackgroundView_image];
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews26UberParallaxBackgroundView_image] = a1;
  v9 = v7;
  v10 = a1;

  v11 = &v9[OBJC_IVAR____TtC23ShelfKitCollectionViews26UberParallaxBackgroundView_fixedWidth];
  *v11 = a2;
  v11[8] = a3 & 1;
  [*&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews26UberParallaxBackgroundView_backgroundImageView] setImage:v10];
  [v9 setNeedsLayout];

  return v9;
}

char *sub_154F3C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews26UberParallaxBackgroundView_parallaxFactor] = 0x3FD3333333333333;
  v10 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews26UberParallaxBackgroundView_fixedWidth];
  *v10 = 0;
  v10[8] = 1;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews26UberParallaxBackgroundView_zoomFactor] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews26UberParallaxBackgroundView_offset] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews26UberParallaxBackgroundView_image] = 0;
  v11 = [objc_allocWithZone(UIImageView) init];
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews26UberParallaxBackgroundView_backgroundImageView] = v11;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews26UberParallaxBackgroundView_backgroundImageView;
  v14 = *&v12[OBJC_IVAR____TtC23ShelfKitCollectionViews26UberParallaxBackgroundView_backgroundImageView];
  v15 = v12;
  [v14 setContentMode:2];
  [v15 setClipsToBounds:1];
  [v15 addSubview:*&v12[v13]];
  v16 = [objc_opt_self() clearColor];
  [v15 setBackgroundColor:v16];

  return v15;
}

id sub_1551A0()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  result = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews26UberParallaxBackgroundView_image];
  if (result)
  {
    [result size];
    v3 = v2;
    v5 = v4;
    if (v0[OBJC_IVAR____TtC23ShelfKitCollectionViews26UberParallaxBackgroundView_fixedWidth + 8])
    {
      v6 = 0.0;
    }

    else
    {
      v6 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews26UberParallaxBackgroundView_fixedWidth];
    }

    [v0 bounds];
    Width = CGRectGetWidth(v20);
    if (v6 <= Width)
    {
      v6 = Width;
    }

    if (v3 >= v5)
    {
      v8 = v6 / v5;
    }

    else
    {
      v8 = v6 / v3;
    }

    v9 = v5 * v8 * *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews26UberParallaxBackgroundView_zoomFactor];
    [v0 bounds];
    v10 = CGRectGetWidth(v21);
    v11 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews26UberParallaxBackgroundView_backgroundImageView];
    [v11 setFrame:{(v6 - v10) * -0.5, 0.0, v6, v9}];
    if (*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews26UberParallaxBackgroundView_offset] * -0.3 <= 0.0)
    {
      v12 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews26UberParallaxBackgroundView_offset] * -0.3;
    }

    else
    {
      v12 = 0.0;
    }

    [v0 bounds];
    v14 = v13;
    [v0 bounds];
    v16 = v15;
    [v0 bounds];
    return [v11 _setContentRectInPixels:0.0 forContentSize:{v12, v14, v16, v17, v18}];
  }

  return result;
}

id sub_155400(double a1)
{
  v2 = *v1;
  *(*v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews26UberParallaxBackgroundView_zoomFactor) = a1;
  return [v2 setNeedsLayout];
}

id sub_15541C(double a1)
{
  v2 = *v1;
  *(*v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews26UberParallaxBackgroundView_offset) = a1;
  return [v2 setNeedsLayout];
}

uint64_t sub_15545C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 80);
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_30CFF8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_155514(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 80) = a2 + 1;
  }

  else
  {
    v7 = sub_30CFF8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for UberScrollConfiguration()
{
  result = qword_405758;
  if (!qword_405758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_155600()
{
  sub_1556A8();
  if (v0 <= 0x3F)
  {
    sub_30CFF8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1556A8()
{
  if (!qword_405768)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_405768);
    }
  }
}

unint64_t sub_155718()
{
  result = qword_4057B0;
  if (!qword_4057B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4057B0);
  }

  return result;
}

void sub_15576C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, __objc2_prop_list *a6, void *a7, void (*a8)(BOOL))
{
  v13 = *v8;
  v12 = v8[1];
  v14 = 1.0;
  v15 = *v8 == 0.0 && v13 == v12;
  v16 = 1.0;
  if (!v15)
  {
    v16 = fmin((a1 - (a2 - (a2 - v13 * a2))) / (a2 - v13 * a2 - (a2 - v12 * a2)), 1.0);
    if (v16 < 0.0)
    {
      v16 = 0.0;
    }
  }

  v18 = v8[4];
  v17 = v8[5];
  if (v18 != 0.0 || v18 != v17)
  {
    v14 = fmin((a1 - (a2 - (a2 - v18 * a2))) / (a2 - v18 * a2 - (a2 - v17 * a2)), 1.0);
    if (v14 < 0.0)
    {
      v14 = 0.0;
    }
  }

  v21 = v8[2];
  v20 = v8[3];
  v22 = v21 == 0.0 && v21 == v20;
  v23 = 1.0;
  if (!v22)
  {
    v23 = fmin((a1 - (a2 - (a2 - v21 * a2))) / (a2 - v21 * a2 - (a2 - v20 * a2)), 1.0);
    if (v23 < 0.0)
    {
      v23 = 0.0;
    }
  }

  v24 = v8[6];
  if (v24 == 0.0)
  {
    v25 = v8[7];
    v26 = 1.0;
  }

  else
  {
    v27 = (a1 - (a2 - (a2 - v24 * a2))) / (a2 - v24 * a2 - (a2 - v24 * a2));
    v25 = v8[7];
    v26 = 1.0;
    if (v27 < 1.0)
    {
      if (v27 < 0.0)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = v27;
      }
    }
  }

  if (v25 == 0.0)
  {
    v73 = 0;
  }

  else
  {
    v28 = (a1 - (a2 - (a2 - v25 * a2))) / (a2 - v25 * a2 - (a2 - v25 * a2));
    v29 = 0.0;
    if (v28 >= 0.0)
    {
      v29 = v28;
    }

    v30 = v29 <= 0.0;
    if (v28 >= 1.0)
    {
      v30 = 0;
    }

    v73 = v30;
  }

  type metadata accessor for UberScrollConfiguration();
  v70 = v8;
  v31 = sub_30CFD8();
  ObjectType = swift_getObjectType();
  v33 = a6[8];
  v74 = v31;
  v33(v31, ObjectType, a6);
  v34 = ObjectType;
  (a6[2])(ObjectType, a6, v23);
  if (v16 <= 0.0)
  {
    v36 = swift_getObjectType();
    v35 = (*(a4 + 56))(v36, a4) == 2;
  }

  else
  {
    v35 = 0;
  }

  (a6[21])(v35, ObjectType, a6);
  if (a7)
  {
    v37 = [a7 titleView];
    if (v37)
    {
      v38 = v37;
      type metadata accessor for UberNavigationTitleView();
      v39 = swift_dynamicCastClass();
      if (v39)
      {
        v40 = v39;
        v41 = v38;
        [v40 floatingTabBarHeight];
        [v40 setHideStandardTitle:{fmax(v23, v42) <= 0.0}];

        *(v40 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UberNavigationTitleView_backButtonStyle) = v73;
        sub_153DEC(v73, 1);
      }
    }
  }

  (a6[23])(a7, ObjectType, a6, v16);
  v43 = swift_getObjectType();
  (*(a4 + 24))(v43, a4, v14);
  if (a8)
  {
    a8(v26 <= 0.0);
  }

  v44 = (a6[24])(a7, ObjectType, a6);
  v45 = v44;
  v46 = v44 & 0xFFFFFFFFFFFFFF8;
  if (v44 >> 62)
  {
LABEL_84:
    v47 = sub_30D668();
  }

  else
  {
    v47 = *(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8));
  }

  v69 = v34;
  v72 = a6;
  if (!v47)
  {
    v49 = _swiftEmptyArrayStorage;
    goto LABEL_64;
  }

  v48 = 0;
  v34 = v45 & 0xC000000000000001;
  v49 = _swiftEmptyArrayStorage;
  a6 = &PlayControlsStackView;
  do
  {
    v50 = v48;
    while (1)
    {
      if (v34)
      {
        v51 = sub_30D578();
      }

      else
      {
        if (v50 >= *(v46 + 16))
        {
          goto LABEL_82;
        }

        v51 = *(v45 + 8 * v50 + 32);
      }

      v52 = v51;
      v48 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v53 = [v51 customView];

      if (v53)
      {
        break;
      }

LABEL_48:
      ++v50;
      if (v48 == v47)
      {
        goto LABEL_64;
      }
    }

    swift_getObjectType();
    v54 = swift_conformsToProtocol2();
    if (!v54)
    {

      goto LABEL_48;
    }

    v55 = v54;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v49 = sub_CA690(0, v49[2] + 1, 1, v49);
    }

    v58 = v49[2];
    v57 = v49[3];
    v59 = v58 + 1;
    if (v58 >= v57 >> 1)
    {
      v61 = sub_CA690((v57 > 1), v58 + 1, 1, v49);
      v59 = v58 + 1;
      v49 = v61;
    }

    v49[2] = v59;
    v60 = &v49[2 * v58];
    v60[4] = v53;
    v60[5] = v55;
  }

  while (v48 != v47);
LABEL_64:

  v34 = v49[2];
  if (v34)
  {
    a6 = 0;
    if (v73)
    {
      v62 = 1;
    }

    else
    {
      v62 = 2;
    }

    v63 = v49 + 5;
    while (a6 < v49[2])
    {
      v65 = *(v63 - 1);
      v66 = *v63;
      v67 = swift_getObjectType();
      v46 = *(v66 + 16);
      v45 = v65;
      if ((v46)(v67, v66))
      {
        (*(v66 + 24))(v62, v67, v66);
        if (v73)
        {
          v64 = [objc_opt_self() effectWithStyle:16];
        }

        else
        {
          v64 = 0;
        }

        (*(v66 + 8))(v64, 1, v67, v66);

        [v45 setTintColor:v74];
      }

      a6 = (a6 + 1);

      v63 += 2;
      if (v34 == a6)
      {
        goto LABEL_76;
      }
    }

LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

LABEL_76:

  v68.n128_u64[0] = 1.0;
  if (*(v70 + 80))
  {
    v68.n128_f64[0] = v23;
  }

  (v72[5])(v69, v68);
}

double sub_155E74()
{
  sub_1564BC();
  sub_3021B8();
  return v1;
}

double sub_155EC0(uint64_t a1, id a2, void *a3)
{
  if (*a1 == 1)
  {
    if (*(a1 + 8))
    {
      [a2 convertPoint:0.0 fromCoordinateSpace:0.0];
      Height = v4;
    }

    else
    {
      Height = 0.0;
    }
  }

  else
  {
    [a2 bounds];
    Height = CGRectGetHeight(v22);
  }

  [a3 _systemContentInset];
  v7 = v6;
  v8 = [a3 window];
  v9 = 0.0;
  if (v8)
  {
    v10 = v8;
    v11 = [v8 windowScene];

    if (v11)
    {
      v12 = [v11 statusBarManager];

      if (v12)
      {
        [v12 statusBarFrame];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;

        v23.origin.x = v14;
        v23.origin.y = v16;
        v23.size.width = v18;
        v23.size.height = v20;
        v9 = CGRectGetHeight(v23);
      }
    }
  }

  return Height + v7 - v9;
}

uint64_t sub_156014()
{
  v0 = type metadata accessor for UberScrollConfiguration();
  __swift_allocate_value_buffer(v0, qword_429390);
  v1 = __swift_project_value_buffer(v0, qword_429390);
  *v1 = xmmword_3278D0;
  *(v1 + 16) = xmmword_3278E0;
  __asm { FMOV            V1.2D, #0.5 }

  *(v1 + 32) = xmmword_3278F0;
  *(v1 + 48) = _Q1;
  *(v1 + 64) = xmmword_327900;
  *(v1 + 80) = 0;
  v7 = _UISolariumEnabled();
  v8 = objc_opt_self();
  v9 = &selRef_labelColor;
  if (!v7)
  {
    v9 = &selRef_whiteColor;
  }

  v10 = [v8 *v9];
  if (qword_3FAFB8 != -1)
  {
    swift_once();
  }

  v11 = qword_40DB80;
  return sub_30CFE8();
}

uint64_t sub_156140()
{
  v0 = type metadata accessor for UberScrollConfiguration();
  __swift_allocate_value_buffer(v0, qword_4293A8);
  v1 = __swift_project_value_buffer(v0, qword_4293A8);
  *v1 = xmmword_327910;
  *(v1 + 16) = xmmword_327920;
  *(v1 + 32) = xmmword_327930;
  *(v1 + 48) = vdupq_n_s64(0x3FE3333333333333uLL);
  *(v1 + 64) = xmmword_327910;
  *(v1 + 80) = 0;
  v2 = _UISolariumEnabled();
  v3 = objc_opt_self();
  v4 = &selRef_labelColor;
  if (!v2)
  {
    v4 = &selRef_whiteColor;
  }

  v5 = [v3 *v4];
  if (qword_3FAFB8 != -1)
  {
    swift_once();
  }

  v6 = qword_40DB80;
  return sub_30CFE8();
}

uint64_t sub_15626C()
{
  v0 = type metadata accessor for UberScrollConfiguration();
  __swift_allocate_value_buffer(v0, qword_4293C0);
  v1 = __swift_project_value_buffer(v0, qword_4293C0);
  *v1 = xmmword_327940;
  *(v1 + 16) = xmmword_327950;
  __asm { FMOV            V0.2D, #1.0 }

  *(v1 + 32) = _Q0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 1;
  v7 = _UISolariumEnabled();
  v8 = objc_opt_self();
  v9 = &selRef_labelColor;
  if (!v7)
  {
    v9 = &selRef_whiteColor;
  }

  v10 = [v8 *v9];
  if (qword_3FAFB8 != -1)
  {
    swift_once();
  }

  v11 = qword_40DB80;
  return sub_30CFE8();
}

uint64_t sub_156390()
{
  v0 = type metadata accessor for UberScrollConfiguration();
  __swift_allocate_value_buffer(v0, qword_4293D8);
  v1 = __swift_project_value_buffer(v0, qword_4293D8);
  *v1 = xmmword_327960;
  *(v1 + 16) = xmmword_327970;
  *(v1 + 32) = xmmword_327980;
  *(v1 + 48) = vdupq_n_s64(0x3FE6666666666666uLL);
  *(v1 + 64) = xmmword_327960;
  *(v1 + 80) = 0;
  v2 = _UISolariumEnabled();
  v3 = objc_opt_self();
  v4 = &selRef_labelColor;
  if (!v2)
  {
    v4 = &selRef_whiteColor;
  }

  v5 = [v3 *v4];
  if (qword_3FAFB8 != -1)
  {
    swift_once();
  }

  v6 = qword_40DB80;
  return sub_30CFE8();
}

unint64_t sub_1564BC()
{
  result = qword_4057B8;
  if (!qword_4057B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4057B8);
  }

  return result;
}

char *sub_156510(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_mirrorBackgroundView];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_backgroundImageView];
  *(v6 + 4) = 0;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_offset] = 0;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_mirrorAmount] = 0;
  v2[OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_uberStyle] = a1;
  type metadata accessor for FadedBlurView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_31D470;
  *(inited + 32) = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:1.0];
  *(inited + 40) = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:1.0];
  *(inited + 48) = [objc_opt_self() clearColor];
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_topBlurView] = sub_2C2D88(&off_3B4698, inited, 32.0);
  v12.receiver = v2;
  v12.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v8 setClipsToBounds:1];
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_topBlurView;
  v10 = *&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_topBlurView];
  [v8 bounds];
  [v10 setFrame:{0.0, 0.0, CGRectGetWidth(v13), 36.0}];

  [v8 addSubview:*&v8[v9]];
  return v8;
}

char *sub_156708(char **a1, void *a2, char a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_uberStyle);
  v8 = sub_30B668();
  v10 = v9;
  v12 = v8 == sub_30B668() && v10 == v11;
  v13 = &selRef_registerImage_withTraitCollection_;
  if (v12)
  {
  }

  else
  {
    v14 = sub_30D728();

    if ((v14 & 1) == 0)
    {
      v15 = type metadata accessor for UberParallaxBackgroundView();
      v16 = a2;
      v17 = sub_154E6C(a2, 0, 1);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405818);
      v19 = objc_allocWithZone(v18);
      v20 = qword_406F50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405820);
      v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v22 = v17;
      *&v19[v20] = [v21 init];
      *&v19[qword_406F60] = v22;
      v23 = &v19[qword_406F68];
      *v23 = 0;
      v23[8] = 1;
      v19[qword_406F58] = 0;
      v65.receiver = v19;
      v65.super_class = v18;
      v24 = v22;
      v25 = objc_msgSendSuper2(&v65, "initWithFrame:", 0.0, 0.0, 100.0, 100.0);
      v26 = &v25[qword_406F50];
      v27 = *&v25[qword_406F50];
      v28 = v25;
      [v27 setFrame:{0.0, 0.0, 100.0, 100.0}];
      v29 = v24;
      [v29 setFrame:{0.0, 0.0, 100.0, 100.0}];
      [v29 setAutoresizingMask:18];
      [v29 setClipsToBounds:1];
      v30 = *v26;
      [v30 addSubview:v29];
      v31 = &off_3BC4C8;
      goto LABEL_19;
    }
  }

  v15 = type metadata accessor for UberBackgroundContainerView();
  v32 = objc_allocWithZone(v15);
  *&v32[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_backgroundImageView] = 0;
  *&v32[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_gradientOverlayView] = 0;
  *&v32[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_offset] = 0;
  *&v32[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_mirrorAmount] = 0;
  *&v32[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_zoomFactor] = 0x3FF0000000000000;
  v32[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_style] = v7;
  v64.receiver = v32;
  v64.super_class = v15;
  v33 = objc_msgSendSuper2(&v64, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v33 setClipsToBounds:1];
  v34 = OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_style;
  v35 = v33[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_style];
  if (((v35 - 3) & 0xFB) != 0)
  {
    type metadata accessor for GradientView();
    v36 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    if (qword_3FAE38 != -1)
    {
      swift_once();
    }

    aBlock = xmmword_42AAB0;
    v60 = *&qword_42AAC0;
    v61 = xmmword_42AAD0;
    v62 = unk_42AAE0;
    v58[0] = xmmword_42AAB0;
    v58[1] = *&qword_42AAC0;
    v58[2] = xmmword_42AAD0;
    v58[3] = unk_42AAE0;
    sub_1504BC(&aBlock, v57);
    sub_254AD8(v58);
    v37 = v36;
    [v33 bounds];
    [v37 setFrame:?];
    [v37 setAutoresizingMask:18];

    [v33 addSubview:v37];
    v38 = *&v33[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_gradientOverlayView];
    *&v33[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_gradientOverlayView] = v37;

    v35 = v33[v34];
  }

  v39 = a2;
  v40 = sub_14CFE4(v35, v39);
  [v33 bounds];
  [v40 setFrame:?];
  [v40 setAutoresizingMask:18];
  if (*&v33[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_gradientOverlayView])
  {
    [v33 insertSubview:v40 belowSubview:?];
    v13 = &selRef_registerImage_withTraitCollection_;
  }

  else
  {
    v13 = &selRef_registerImage_withTraitCollection_;
    [v33 addSubview:v40];
  }

  v41 = *&v33[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_backgroundImageView];
  *&v33[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_backgroundImageView] = v40;
  v42 = v40;

  if (a3)
  {
    [v42 setAlpha:0.0];
    v43 = objc_opt_self();
    v44 = swift_allocObject();
    *(v44 + 16) = v42;
    *&v61 = sub_157E50;
    *(&v61 + 1) = v44;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v60 = sub_914CC;
    *(&v60 + 1) = &block_descriptor_13;
    v45 = _Block_copy(&aBlock);
    v46 = v42;

    [v43 animateWithDuration:v45 animations:0.25];

    _Block_release(v45);
  }

  else
  {
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405828);
  v48 = objc_allocWithZone(v47);
  v49 = qword_406F50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405830);
  v50 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v51 = v33;
  *&v48[v49] = [v50 init];
  *&v48[qword_406F60] = v51;
  v52 = &v48[qword_406F68];
  *v52 = 0;
  v52[8] = 1;
  v48[qword_406F58] = 0;
  v63.receiver = v48;
  v63.super_class = v47;
  v53 = v51;
  v54 = objc_msgSendSuper2(&v63, "initWithFrame:", 0.0, 0.0, 100.0, 100.0);
  v26 = &v54[qword_406F50];
  v55 = *&v54[qword_406F50];
  v28 = v54;
  [v55 setFrame:{0.0, 0.0, 100.0, 100.0}];
  v29 = v53;
  [v29 setFrame:{0.0, 0.0, 100.0, 100.0}];
  [v29 setAutoresizingMask:18];
  [v29 setClipsToBounds:1];
  v30 = *v26;
  [v30 v13[122]];
  v31 = &off_3BBE30;
LABEL_19:

  [v28 v13[122]];
  a1[3] = v15;
  a1[4] = v31;
  *a1 = v29;
  return v28;
}

void sub_156E70(void *a1, char a2)
{
  if (a1)
  {
    v4 = a1;
    v5 = sub_156708(v25, v4, a2 & 1);
    v7 = v6;
    [v2 bounds];
    [v5 setFrame:?];
    [v5 setAutoresizingMask:18];
    v8 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_topBlurView];
    [v2 insertSubview:v5 belowSubview:v8];
    v9 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_mirrorBackgroundView];
    v10 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_mirrorBackgroundView];
    *v9 = v5;
    v9[1] = v7;
    v11 = v5;

    sub_12670(v25, &v21);
    v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_backgroundImageView;
    swift_beginAccess();
    sub_1578DC(&v21, &v2[v12]);
    swift_endAccess();
    [v8 setHidden:0];
    if (a2)
    {
      [v11 setAlpha:0.0];
      v13 = objc_opt_self();
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v7;
      v23 = sub_14DC24;
      v24 = v14;
      *&v21 = _NSConcreteStackBlock;
      *(&v21 + 1) = 1107296256;
      *&v22 = sub_914CC;
      *(&v22 + 1) = &block_descriptor_30;
      v15 = _Block_copy(&v21);
      v16 = v11;

      [v13 animateWithDuration:v15 animations:0.25];
      _Block_release(v15);

      __swift_destroy_boxed_opaque_existential_1(v25);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v25);
    }
  }

  else
  {
    v17 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_mirrorBackgroundView];
    v18 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_mirrorBackgroundView];
    if (v18)
    {
      [v18 removeFromSuperview];
      v19 = *v17;
    }

    else
    {
      v19 = 0;
    }

    *v17 = 0;
    *(v17 + 1) = 0;

    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    v20 = OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_backgroundImageView;
    swift_beginAccess();
    sub_1578DC(&v21, &v2[v20]);
    swift_endAccess();
    [*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_topBlurView] setHidden:{1, v21, v22, v23}];
  }
}

id sub_1571C4()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_backgroundImageView];
  swift_beginAccess();
  v3 = *(v2 + 3);
  if (v3)
  {
    v4 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_offset];
    v5 = *(v2 + 4);
    __swift_mutable_project_boxed_opaque_existential_1(v2, *(v2 + 3));
    (*(v5 + 40))(v3, v5, v4);
  }

  swift_endAccess();
  v6 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_mirrorBackgroundView];
  if (v6)
  {
    v7 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_mirrorBackgroundView + 8];
    ObjectType = swift_getObjectType();
    v9 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_mirrorAmount];
    v10 = *(v7 + 16);
    v11 = v6;
    v10(v9, 2, ObjectType, v7);
  }

  v12 = *(v2 + 3);
  v13 = 0.0;
  if (v12)
  {
    v14 = *(v2 + 4);
    v15 = __swift_project_boxed_opaque_existential_1Tm(v2, *(v2 + 3));
    v16 = *(v12 - 8);
    v17 = __chkstk_darwin(v15);
    v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v19, v17);
    v20 = (*(v14 + 56))(v12, v14);
    (*(v16 + 8))(v19, v12);
    if (v20 > 0.0)
    {
      if (v20 * *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_offset] > 0.0)
      {
        v13 = v20 * *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_offset];
      }

      else
      {
        v13 = 0.0;
      }
    }
  }

  [v1 bounds];
  v22 = v21;
  v23 = OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_mirrorAmount;
  v24 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_mirrorAmount] + 36.0;
  v25 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_topBlurView];
  [v25 setFrame:{0.0, v13}];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400FE0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_318FC0;
  *(v26 + 32) = 0;
  *(v26 + 40) = *&v1[v23] + -2.0;
  v30.origin.x = 0.0;
  v30.origin.y = v13;
  v30.size.width = v22;
  v30.size.height = v24;
  *(v26 + 48) = CGRectGetHeight(v30);
  v27 = *&v25[OBJC_IVAR____TtC23ShelfKitCollectionViews13FadedBlurView_pointLocations];
  *&v25[OBJC_IVAR____TtC23ShelfKitCollectionViews13FadedBlurView_pointLocations] = v26;
  LOBYTE(v26) = sub_157B8C(v27, v26);

  if ((v26 & 1) == 0)
  {
    return [v25 setNeedsLayout];
  }

  return result;
}

double sub_157678()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_mirrorBackgroundView);
  v2 = 1.0;
  if (v1)
  {
    [v1 alpha];
  }

  return 1.0 - v2;
}

id sub_1576BC(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_mirrorBackgroundView);
  v3 = 1.0 - a1;
  if (v2)
  {
    [v2 setAlpha:1.0 - a1];
  }

  v4 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_topBlurView);

  return [v4 setAlpha:v3];
}

uint64_t sub_15772C(double a1)
{
  v3 = v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_backgroundImageView;
  swift_beginAccess();
  v4 = *(v3 + 24);
  if (v4)
  {
    v5 = *(v3 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v3, *(v3 + 24));
    (*(v5 + 16))(v4, v5, a1);
  }

  return swift_endAccess();
}

uint64_t sub_157838()
{
  v0 = sub_30B668();
  v2 = v1;
  if (v0 == sub_30B668() && v2 == v3)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_30D728();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_1578DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405490);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_15794C(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (!(a2 >> 62))
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
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

    v4 = sub_A803C();
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
          v15 = sub_30D578();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = sub_30D578();
LABEL_26:
        v17 = v16;
        v18 = sub_30D098();

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
    v21 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    v22 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
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
      v18 = sub_30D098();

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
    v5 = sub_30D668();
  }

  result = sub_30D668();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_157B8C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_157BE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B40);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v23 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    do
    {
      sub_157E58(v13, v10);
      sub_157E58(v14, v6);
      v16 = *(v4 + 28);
      v17 = *&v10[v16];
      v18 = *&v10[v16 + 8];
      v19 = &v6[v16];
      if (v17 == *v19 && v18 == *(v19 + 1))
      {
        sub_EB68(v6, &qword_406B40);
        sub_EB68(v10, &qword_406B40);
      }

      else
      {
        v21 = sub_30D728();
        sub_EB68(v6, &qword_406B40);
        sub_EB68(v10, &qword_406B40);
        if ((v21 & 1) == 0)
        {
          return 0;
        }
      }

      v14 += v15;
      v13 += v15;
      --v11;
    }

    while (v11);
  }

  return 1;
}

uint64_t sub_157DC8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_157E18()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_157E58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_157ED0(void *a1)
{
  *(v1 + qword_405838) = a1;
  v3 = objc_allocWithZone(UILabel);
  v4 = a1;
  v5 = [v3 init];
  v6 = [objc_opt_self() effectWithStyle:13];
  v7 = [objc_opt_self() effectForBlurEffect:v6 style:1];
  v8 = sub_2DD5B0(v6, v7);
  v10 = v9;

  *(v1 + qword_40E820) = v5;
  v11 = v5;
  v12 = sub_15943C(v5, v8, v10);
  v13 = qword_40E820;
  v14 = *&v12[qword_40E820];
  v15 = v12;
  [v14 setAdjustsFontForContentSizeCategory:1];
  v16 = *&v12[v13];
  v17 = *&v15[qword_405838];
  v18 = objc_allocWithZone(UIFontMetrics);
  v19 = v16;
  v20 = [v18 initForTextStyle:v17];
  result = [objc_opt_self() systemFontOfSize:UIFontSystemFontDesignCompact weight:11.0 design:UIFontWeightSemibold];
  if (result)
  {
    v22 = result;
    v23 = [v20 scaledFontForFont:result];

    [v19 setFont:v23];
    v24 = *&v12[v13];
    v25 = objc_opt_self();
    v26 = v24;
    v27 = [v25 mainBundle];
    v32._countAndFlagsBits = 0xE000000000000000;
    v33._object = 0x800000000033D480;
    v33._countAndFlagsBits = 0xD000000000000018;
    v34.value._countAndFlagsBits = 0;
    v34.value._object = 0;
    v28.super.isa = v27;
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    sub_301AB8(v33, v34, v28, v35, v32);

    sub_E504();
    sub_30D3D8();
    v29 = sub_30C098();

    [v26 setText:v29];

    [*&v12[v13] setTextAlignment:1];
    v30 = [v15 heightAnchor];
    v31 = [v30 constraintEqualToConstant:31.0];

    [v31 setActive:1];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1582A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EntitlementBadgeView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for EntitlementBadgeView()
{
  result = qword_405868;
  if (!qword_405868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_158388(void *a1)
{
  v2 = *&v1[qword_40E928];
  if (v1[qword_40E928 + 8] == 1 && v2)
  {
    v8 = [v1 traitCollection];
    if (a1)
    {
      v4 = [a1 userInterfaceStyle];
    }

    else
    {
      v4 = 0;
    }

    v6 = [v8 userInterfaceStyle];
    if (!a1 || v4 != v6)
    {
      if ([v8 userInterfaceStyle] == &dword_0 + 2)
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }

      [*&v1[qword_40E930] setOverrideUserInterfaceStyle:v7];
    }
  }

  else
  {
    v5 = *&v1[qword_40E930];

    [v5 setOverrideUserInterfaceStyle:v2];
  }
}

char *sub_1584B8(_OWORD *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE8A8);
  __chkstk_darwin(v4 - 8);
  v45 = &v42 - v5;
  v6 = sub_302AB8();
  v7 = __chkstk_darwin(v6);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v9;
  *(v1 + qword_4293F0) = 0;
  (*(v9 + 56))(v1 + qword_4293F8, 1, 1, v6, v7);
  sub_1593C4(a1, v1 + qword_4059C0);
  type metadata accessor for DynamicTypeButton();
  v10 = a1[3];
  v11 = a1[1];
  v50 = a1[2];
  v51 = v10;
  v12 = a1[3];
  v52[0] = a1[4];
  *(v52 + 10) = *(a1 + 74);
  v13 = a1[1];
  v49[0] = *a1;
  v49[1] = v13;
  v47[2] = v50;
  v47[3] = v12;
  v48[0] = a1[4];
  *(v48 + 10) = *(a1 + 74);
  v47[0] = v49[0];
  v47[1] = v11;
  sub_EB00(v49, &v46, &qword_3FFD68);
  v14 = sub_2353F0(v47);
  v15 = type metadata accessor for VEVButtonContainer.Style(0);
  v16 = [objc_opt_self() effectWithStyle:*(a1 + v15[9])];
  v17 = [objc_opt_self() effectForBlurEffect:v16 style:0];
  v18 = sub_2DD5B0(v16, v17);
  v20 = v19;

  *(v2 + qword_40E820) = v14;
  v21 = v14;
  v22 = sub_159450(v14, v18, v20, &qword_405C78);
  v23 = qword_40E820;
  v24 = *&v22[qword_40E820];
  v22[qword_40E940] = 0;
  v25 = &v22[qword_40E928];
  *v25 = 1;
  v25[8] = 1;
  v26 = v22;
  v27 = v24;
  sub_158388(0);
  [v26 setClipsToBounds:1];

  [v27 setContentHorizontalAlignment:0];
  v28 = v27;
  v29 = [v28 titleLabel];
  if (v29)
  {
    v30 = v29;
    [v29 setLineBreakMode:4];
  }

  v31 = [v28 titleLabel];
  if (v31)
  {
    v32 = v31;
    [v31 setNumberOfLines:1];
  }

  v33 = [objc_opt_self() labelColor];
  [v28 setTitleColor:v33 forState:0];

  [v28 setContentEdgeInsets:{*(a1 + v15[8]), *(a1 + v15[8] + 8), *(a1 + v15[8] + 16), *(a1 + v15[8] + 24)}];
  v34 = *&v22[v23];

  [v34 effectiveUserInterfaceLayoutDirection];
  sub_30C6C8();
  [v28 setImageEdgeInsets:?];
  v35 = [v28 imageView];

  if (v35)
  {
    [v35 setContentMode:4];
  }

  v36 = qword_4293F8;
  swift_beginAccess();
  v37 = v44;
  v38 = 0;
  if (!(*(v44 + 48))(&v26[v36], 1, v6))
  {
    v39 = v43;
    (*(v37 + 16))(v43, &v26[v36], v6);
    v38 = sub_302A08();
    (*(v37 + 8))(v39, v6);
  }

  [v28 setImage:v38 forState:0];

  v40 = v45;
  sub_EB00(a1 + v15[5], v45, &qword_3FE8A8);
  sub_15970C(a1);
  swift_beginAccess();
  sub_159768(v40, &v26[v36]);
  swift_endAccess();

  return v26;
}

void sub_158A3C()
{
  v1 = sub_30D6F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for VEVButtonContainer(0);
  v15.receiver = v0;
  v15.super_class = v5;
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v6 = &v0[qword_4059C0];
  if (v6[*(type metadata accessor for VEVButtonContainer.Style(0) + 28)] == 1)
  {
    v7 = [v0 layer];
    [v0 frame];
    CGRectGetHeight(v16);
    (*(v2 + 104))(v4, enum case for FloatingPointRoundingRule.down(_:), v1);
    v8 = [v0 traitCollection];
    sub_302E68();
    v10 = v9;

    (*(v2 + 8))(v4, v1);
    [v7 setCornerRadius:v10];
  }

  else
  {
    v11 = [v0 traitCollection];
    v12 = [v11 userInterfaceIdiom];

    v13 = [v0 layer];
    v7 = v13;
    v14 = 12.0;
    if (v12 == &dword_4 + 1)
    {
      v14 = 4.0;
    }

    [v13 setCornerRadius:v14];
  }
}

void sub_158C5C(void *a1)
{
  v1 = a1;
  sub_158A3C();
}

void sub_158CA4(uint64_t a1)
{
  *(a1 + qword_4293F0) = 0;
  v2 = qword_4293F8;
  v3 = sub_302AB8();
  (*(*(v3 - 8) + 56))(a1 + v2, 1, 1, v3);
  sub_30D648();
  __break(1u);
}

uint64_t sub_158D5C()
{
  sub_15970C(v0 + qword_4059C0);

  v1 = v0 + qword_4293F8;

  return sub_E4764(v1);
}

id sub_158DAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VEVButtonContainer(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_158DE4(uint64_t a1)
{
  sub_15970C(a1 + qword_4059C0);

  v2 = a1 + qword_4293F8;

  return sub_E4764(v2);
}

void sub_158E60()
{
  type metadata accessor for VEVButtonContainer.Style(319);
  if (v0 <= 0x3F)
  {
    sub_159370(319, &qword_402098, &type metadata accessor for Glyph);
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_159040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 89);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE8A8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_159108(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 89) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE8A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1591B4()
{
  sub_1592C0();
  if (v0 <= 0x3F)
  {
    sub_159370(319, &qword_402098, &type metadata accessor for Glyph);
    if (v1 <= 0x3F)
    {
      sub_159370(319, &unk_405C38, type metadata accessor for CGSize);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UIEdgeInsets(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Style(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1592C0()
{
  if (!qword_405C28)
  {
    sub_15931C();
    v0 = type metadata accessor for IdiomAwareValue();
    if (!v1)
    {
      atomic_store(v0, &qword_405C28);
    }
  }
}

unint64_t sub_15931C()
{
  result = qword_405C30;
  if (!qword_405C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_405C30);
  }

  return result;
}

void sub_159370(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_30D3A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1593C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VEVButtonContainer.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_159450(void *a1, void *a2, void *a3, uint64_t *a4)
{
  v9 = &v4[qword_40E928];
  *v9 = 0;
  v9[8] = 1;
  v4[qword_40E940] = 1;
  v10 = qword_40E948;
  *&v4[qword_40E948] = 0;
  *&v4[qword_40E930] = a2;
  *&v4[qword_40E938] = a3;
  *&v4[v10] = a1;
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v29.receiver = v4;
  v29.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v14 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = qword_40E930;
  v20 = *&v18[qword_40E930];
  sub_30CE98();

  v21 = [*&v18[v19] contentView];
  v22 = qword_40E938;
  v23 = *&v18[qword_40E938];
  sub_30CE98();

  if (a1)
  {
    v24 = v11;
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [*&v18[v22] contentView];
    [v25 addSubview:v24];

    v26 = objc_opt_self();
    sub_30CEB8();

    sub_91304();
    isa = sub_30C358().super.isa;

    [v26 activateConstraints:isa];

    [v18 invalidateIntrinsicContentSize];
    v13 = v12;
    v12 = v24;
  }

  return v18;
}

uint64_t sub_15970C(uint64_t a1)
{
  v2 = type metadata accessor for VEVButtonContainer.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_159768(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE8A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_1597D8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews32CategoryHeaderCollectionViewCell_objectGraph] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews32CategoryHeaderCollectionViewCell_artworkSubscription] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews32CategoryHeaderCollectionViewCell_titleBottomMargin] = 0x4036000000000000;
  v9 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews32CategoryHeaderCollectionViewCell_imageProvider];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews32CategoryHeaderCollectionViewCell_pageRenderController] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews32CategoryHeaderCollectionViewCell_heightConstraint] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews32CategoryHeaderCollectionViewCell____lazy_storage___titleLabel] = 0;
  v43.receiver = v4;
  v43.super_class = type metadata accessor for CategoryHeaderCollectionViewCell();
  v10 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  v11 = [v10 contentView];
  [v11 setOverrideUserInterfaceStyle:2];

  v12 = sub_159CC0();
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v13 = [v10 contentView];
  v14 = OBJC_IVAR____TtC23ShelfKitCollectionViews32CategoryHeaderCollectionViewCell____lazy_storage___titleLabel;
  [v13 addSubview:*&v10[OBJC_IVAR____TtC23ShelfKitCollectionViews32CategoryHeaderCollectionViewCell____lazy_storage___titleLabel]];

  v15 = v10;
  v16 = [v15 contentView];
  v17 = [v16 heightAnchor];

  v18 = [v15 traitCollection];
  v19 = [v18 userInterfaceIdiom];

  v20 = 134.0;
  if (v19 == &dword_4 + 1)
  {
    v20 = 114.0;
  }

  if (!v19)
  {
    v20 = 150.0;
  }

  v21 = [v17 constraintEqualToConstant:v20];

  v22 = OBJC_IVAR____TtC23ShelfKitCollectionViews32CategoryHeaderCollectionViewCell_heightConstraint;
  v23 = *&v15[OBJC_IVAR____TtC23ShelfKitCollectionViews32CategoryHeaderCollectionViewCell_heightConstraint];
  *&v15[OBJC_IVAR____TtC23ShelfKitCollectionViews32CategoryHeaderCollectionViewCell_heightConstraint] = v21;

  v24 = *&v15[v22];
  if (v24)
  {
    [v24 setActive:1];
  }

  v42 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_31D470;
  v26 = [*&v10[v14] leadingAnchor];
  v27 = [v15 contentView];
  v28 = [v27 layoutMarginsGuide];

  v29 = [v28 leadingAnchor];
  v30 = [v26 constraintEqualToAnchor:v29];

  *(v25 + 32) = v30;
  v31 = [*&v10[v14] bottomAnchor];
  v32 = [v15 contentView];
  v33 = [v32 bottomAnchor];

  v34 = [v31 constraintEqualToAnchor:v33 constant:-22.0];
  *(v25 + 40) = v34;
  v35 = [*&v10[v14] trailingAnchor];
  v36 = [v15 contentView];

  v37 = [v36 layoutMarginsGuide];
  v38 = [v37 trailingAnchor];

  v39 = [v35 constraintEqualToAnchor:v38];
  *(v25 + 48) = v39;
  sub_91304();
  isa = sub_30C358().super.isa;

  [v42 activateConstraints:isa];

  return v15;
}

id sub_159CC0()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews32CategoryHeaderCollectionViewCell____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews32CategoryHeaderCollectionViewCell____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews32CategoryHeaderCollectionViewCell____lazy_storage___titleLabel);
  }

  else
  {
    sub_159D20();
    v4 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_159D20()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle:UIFontTextStyleLargeTitle];
  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits:2];

  if (v4)
  {
    v5 = [v1 fontWithDescriptor:v4 size:0.0];

    [v0 setFont:v5];
    v6 = [objc_opt_self() whiteColor];
    [v0 setTextColor:v6];

    [v0 setAdjustsFontForContentSizeCategory:1];
    LODWORD(v7) = 1148846080;
    [v0 setContentCompressionResistancePriority:1 forAxis:v7];
    [v0 setAccessibilityTraits:UIAccessibilityTraitHeader];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_159EAC(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews32CategoryHeaderCollectionViewCell_objectGraph) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408E30);
  sub_30B8E8();
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews32CategoryHeaderCollectionViewCell_imageProvider;
  swift_beginAccess();
  sub_15AAE0(v4, v1 + v2);
  swift_endAccess();
  sub_302528();
  sub_30B998();
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews32CategoryHeaderCollectionViewCell_pageRenderController) = v4[0];
}

id sub_159F78()
{
  v1 = v0;
  v2 = sub_302B48();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v14 - v8;
  v10 = [v0 contentView];
  [v10 layoutMargins];

  v11 = [v1 contentView];
  sub_307148();
  sub_302B28();
  v12 = *(v3 + 8);
  v12(v9, v2);
  sub_307148();
  sub_302B28();
  v12(v5, v2);
  [v1 effectiveUserInterfaceLayoutDirection];
  sub_30C6C8();
  [v11 setLayoutMargins:?];

  return [v1 setNeedsLayout];
}

void sub_15A158(uint64_t a1)
{
  v2 = v1;
  v4 = sub_30B3F8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_159CC0();
  sub_308548();
  sub_30B3B8();
  (*(v5 + 8))(v7, v4);
  v9 = sub_30C098();

  [v8 setText:v9];

  v10 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews32CategoryHeaderCollectionViewCell_objectGraph];
  if (v10)
  {

    sub_13D17C(a1, v10, v2);
  }
}

id sub_15A2B0@<X0>(uint64_t a1@<X8>)
{
  result = sub_159CC0();
  *a1 = 1;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

id sub_15A2F8(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_topSafeAreaHeight);
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_topSafeAreaHeight) = a1;
  if (v2 != a1)
  {
    return sub_15A374();
  }

  return result;
}

id sub_15A374()
{
  v1 = v0;
  v2 = sub_30D6F8();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 traitCollection];
  v8 = [v7 userInterfaceIdiom];

  v9 = [v1 traitCollection];
  v10 = v9;
  if (v8)
  {
    v11 = sub_30C968();

    v12 = 134.0;
    if (v11)
    {
      v12 = 114.0;
    }
  }

  else
  {
    if ([v9 userInterfaceIdiom])
    {
      [v10 horizontalSizeClass];
    }

    [v1 bounds];
    CGRectGetWidth(v29);
    v13 = [v1 window];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 windowScene];

      if (v15)
      {
        v16 = [v15 statusBarManager];

        if (v16)
        {
          [v16 statusBarFrame];
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v24 = v23;

          v30.origin.x = v18;
          v30.origin.y = v20;
          v30.size.width = v22;
          v30.size.height = v24;
          CGRectGetMaxY(v30);
        }
      }
    }

    (*(v3 + 104))(v6, enum case for FloatingPointRoundingRule.up(_:), v2);
    sub_302E78();
    v26 = v25;
    (*(v3 + 8))(v6, v2);
    v12 = v26;
  }

  return [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews32CategoryHeaderCollectionViewCell_heightConstraint] setConstant:v12];
}

void sub_15A664()
{

  sub_15AA78(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews32CategoryHeaderCollectionViewCell_imageProvider);

  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews32CategoryHeaderCollectionViewCell____lazy_storage___titleLabel);
}

id sub_15A6E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CategoryHeaderCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_15A7E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return TypedShelfUIKitCell.apply(model:)(a1, a2, WitnessTable);
}

uint64_t sub_15A848(int a1, id a2)
{
  [a2 userInterfaceIdiom];

  return sub_307198();
}

uint64_t sub_15AA30(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_15AA78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402EB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_15AAE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402EB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_15AB50()
{
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews32CategoryHeaderCollectionViewCell_objectGraph) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews32CategoryHeaderCollectionViewCell_artworkSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews32CategoryHeaderCollectionViewCell_titleBottomMargin) = 0x4036000000000000;
  v1 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews32CategoryHeaderCollectionViewCell_imageProvider;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews32CategoryHeaderCollectionViewCell_pageRenderController) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews32CategoryHeaderCollectionViewCell_heightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews32CategoryHeaderCollectionViewCell____lazy_storage___titleLabel) = 0;
  sub_30D648();
  __break(1u);
}

char *sub_15AC10()
{
  v1 = v0;
  v2 = sub_30BB28();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___upsellBanner;
  v7 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___upsellBanner);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___upsellBanner);
  }

  else
  {
    v9 = objc_allocWithZone(type metadata accessor for UpsellBannerView());
    v10 = sub_2E423C(0, 0, 0, 1, 14.0, 16.0, 14.0, 16.0);
    memset(v15, 0, sizeof(v15));
    memset(v14, 0, sizeof(v14));
    sub_30BAB8();
    sub_EB68(v14, &unk_3FBB70);
    sub_EB68(v15, &unk_3FBB70);
    sub_30CED8();
    (*(v3 + 8))(v5, v2);
    v11 = *(v1 + v6);
    *(v1 + v6) = v10;
    v8 = v10;

    v7 = 0;
  }

  v12 = v7;
  return v8;
}

id sub_15ADC0()
{
  v0 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v1 = [v0 layer];
  [v1 setAllowsGroupBlending:0];

  [v0 setAxis:1];
  [v0 setAlignment:3];
  [v0 setBaselineRelativeArrangement:1];
  [v0 setLayoutMarginsRelativeArrangement:1];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v0;
}

char *sub_15AEC8()
{
  v0 = type metadata accessor for VEVButtonContainer.Style(0);
  __chkstk_darwin(v0);
  v2 = &v13[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_3FACC0 != -1)
  {
    swift_once();
  }

  v16 = xmmword_429A30;
  v17 = unk_429A40;
  v18[0] = xmmword_429A50;
  *(v18 + 10) = *(&xmmword_429A50 + 10);
  v14 = xmmword_429A10;
  v15 = unk_429A20;
  v3 = v0[5];
  v4 = sub_302AB8();
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  v5 = v17;
  v2[2] = v16;
  v2[3] = v5;
  v2[4] = v18[0];
  *(v2 + 74) = *(v18 + 10);
  v6 = v15;
  *v2 = v14;
  v2[1] = v6;
  v7 = v2 + v0[6];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = (v2 + v0[8]);
  *v8 = xmmword_326BC0;
  v8[1] = xmmword_326BC0;
  *(v2 + v0[9]) = 9;
  *(v2 + v0[7]) = 0;
  v9 = objc_allocWithZone(type metadata accessor for VEVButtonContainer(0));
  sub_8FC54(&v14, v13);
  v10 = sub_1584B8(v2);
  LODWORD(v11) = 1144750080;
  [*&v10[qword_40E820] setContentHuggingPriority:0 forAxis:v11];
  [v10 setHidden:1];
  return v10;
}

char *sub_15B0D0(void *a1)
{
  type metadata accessor for DynamicTypeLabel();
  if (qword_3FACD8 != -1)
  {
    swift_once();
  }

  v11[2] = xmmword_429B50;
  v11[3] = unk_429B60;
  v12[0] = xmmword_429B70;
  *(v12 + 10) = *(&xmmword_429B70 + 10);
  v11[0] = xmmword_429B30;
  v11[1] = unk_429B40;
  sub_8FC54(v11, v13);
  if (qword_3FAD10 != -1)
  {
    swift_once();
  }

  v13[2] = xmmword_429DF0;
  v13[3] = unk_429E00;
  v14[0] = xmmword_429E10;
  *(v14 + 10) = *(&xmmword_429E10 + 10);
  v13[0] = xmmword_429DD0;
  v13[1] = unk_429DE0;
  sub_8FC54(v13, v10);
  sub_F0044(v11, v13, v10);
  v2 = sub_235C3C(v10, 1, 4, 0);
  if (qword_3FAFE0 != -1)
  {
    swift_once();
  }

  [v2 setTextColor:qword_42B020];
  v3 = v2;
  LODWORD(v4) = 1148846080;
  [v3 setContentCompressionResistancePriority:1 forAxis:v4];
  v5 = [v3 layer];
  v6 = [a1 traitCollection];
  v7 = sub_30C998();

  [v5 setCompositingFilter:v7];
  v8 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:a1 action:"buttonCaptionLabelTapped"];
  [v3 addGestureRecognizer:v8];
  [v3 setHidden:1];

  return v3;
}

char *sub_15B350()
{
  type metadata accessor for DynamicTypeLabel();
  if (qword_3FACB0 != -1)
  {
    swift_once();
  }

  v5[2] = xmmword_429970;
  v5[3] = unk_429980;
  v6[0] = xmmword_429990;
  *(v6 + 10) = *(&xmmword_429990 + 10);
  v5[0] = xmmword_429950;
  v5[1] = unk_429960;
  sub_8FC54(v5, v7);
  if (qword_3FACF0 != -1)
  {
    swift_once();
  }

  v7[2] = xmmword_429C70;
  v7[3] = unk_429C80;
  v8[0] = xmmword_429C90;
  *(v8 + 10) = *(&xmmword_429C90 + 10);
  v7[0] = xmmword_429C50;
  v7[1] = unk_429C60;
  sub_8FC54(v7, v4);
  sub_F0044(v5, v7, v4);
  v0 = sub_235C3C(v4, 2, 4, 0);
  [v0 setTextAlignment:1];
  v1 = [objc_opt_self() labelColor];
  [v0 setTextColor:v1];

  LODWORD(v2) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v2];
  if (qword_3FAF38 != -1)
  {
    swift_once();
  }

  sub_2DB2E0(qword_42ACC8, *&qword_42ACD0, *&qword_42ACD8, *&qword_42ACE0);
  return v0;
}

id sub_15B558(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

char *sub_15B5BC(void *a1)
{
  type metadata accessor for DynamicTypeLabel();
  if (qword_3FACD8 != -1)
  {
    swift_once();
  }

  v11[2] = xmmword_429B50;
  v11[3] = unk_429B60;
  v12[0] = xmmword_429B70;
  *(v12 + 10) = *(&xmmword_429B70 + 10);
  v11[0] = xmmword_429B30;
  v11[1] = unk_429B40;
  sub_8FC54(v11, v13);
  if (qword_3FACE8 != -1)
  {
    swift_once();
  }

  v13[2] = xmmword_429C10;
  v13[3] = unk_429C20;
  v14[0] = xmmword_429C30;
  *(v14 + 10) = *(&xmmword_429C30 + 10);
  v13[0] = xmmword_429BF0;
  v13[1] = unk_429C00;
  sub_8FC54(v13, v10);
  sub_F0044(v11, v13, v10);
  v2 = sub_235C3C(v10, 1, 4, 0);
  v3 = qword_3FAFE0;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  [v4 setTextColor:qword_42B020];

  v5 = [v4 layer];
  v6 = [a1 traitCollection];
  v7 = sub_30C998();

  [v5 setCompositingFilter:v7];
  LODWORD(v8) = 1148846080;
  [v4 setContentCompressionResistancePriority:1 forAxis:v8];
  if (qword_3FAF38 != -1)
  {
    swift_once();
  }

  sub_2DB2E0(qword_42ACC8, *&qword_42ACD0, *&qword_42ACD8, *&qword_42ACE0);
  return v4;
}

id sub_15B830(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

char *sub_15B890()
{
  type metadata accessor for DynamicTypeLabel();
  if (qword_3FACA8 != -1)
  {
    swift_once();
  }

  v8[2] = xmmword_429910;
  v8[3] = unk_429920;
  v9[0] = xmmword_429930;
  *(v9 + 10) = *(&xmmword_429930 + 10);
  v8[0] = xmmword_4298F0;
  v8[1] = unk_429900;
  sub_8FC54(v8, v10);
  if (qword_3FACF0 != -1)
  {
    swift_once();
  }

  v10[2] = xmmword_429C70;
  v10[3] = unk_429C80;
  v11[0] = xmmword_429C90;
  *(v11 + 10) = *(&xmmword_429C90 + 10);
  v10[0] = xmmword_429C50;
  v10[1] = unk_429C60;
  sub_8FC54(v10, v7);
  sub_F0044(v8, v10, v7);
  v0 = sub_235C3C(v7, 3, 4, 0);
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 labelColor];
  [v2 setTextColor:v3];

  [v2 setTextAlignment:1];
  v4 = v2;
  LODWORD(v5) = 1148846080;
  [v4 setContentCompressionResistancePriority:1 forAxis:v5];
  [v4 setHidden:1];

  return v4;
}

id sub_15BA5C()
{
  v0 = [objc_allocWithZone(UIView) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = objc_allocWithZone(UIColor);
  v7[4] = sub_15BBD4;
  v7[5] = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_2EB7C;
  v7[3] = &block_descriptor_31;
  v2 = _Block_copy(v7);
  v3 = [v1 initWithDynamicProvider:v2];
  _Block_release(v2);

  [v0 setBackgroundColor:v3];

  v4 = [v0 heightAnchor];
  v5 = [v4 constraintEqualToConstant:1.0];

  [v5 setActive:1];
  [v0 setHidden:1];
  return v0;
}

id sub_15BBD4(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_whiteColor;
  if (v1 != &dword_0 + 2)
  {
    v3 = &selRef_blackColor;
  }

  v4 = [v2 *v3];
  v5 = [v4 colorWithAlphaComponent:0.5];

  return v5;
}

void sub_15BC5C(id a1)
{
  v2 = v1;
  if (a1)
  {
    v4 = [a1 userInterfaceStyle];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 traitCollection];
  v6 = [v5 userInterfaceStyle];

  if (!a1 || v4 != v6)
  {
    v7 = sub_15B558(&OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___buttonCaptionLabel, sub_15B0D0);
    v8 = [v7 layer];

    v9 = [v2 traitCollection];
    v10 = sub_30C998();

    [v8 setCompositingFilter:v10];
    v11 = sub_15B558(&OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___subtitleLabel, sub_15B5BC);
    v12 = [v11 layer];

    v13 = [v2 traitCollection];
    v14 = sub_30C998();

    [v12 setCompositingFilter:v14];
  }
}

void sub_15BE90(char a1)
{
  v2 = sub_15AC10();
  v3 = v2[qword_40E018];
  v2[qword_40E018] = a1;
  if (v3 == 8)
  {
    if (a1 == 8)
    {
      goto LABEL_7;
    }

LABEL_6:
    v8 = v2;
    sub_2E404C();
    v2 = v8;
    goto LABEL_7;
  }

  if (a1 == 8)
  {
    goto LABEL_6;
  }

  v7 = v2;
  sub_302C18();
  v5 = v4;
  sub_302C18();
  v2 = v7;
  if (v5 != v6)
  {
    goto LABEL_6;
  }

LABEL_7:
}

char *sub_15BF40(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_logoView;
  type metadata accessor for ArtworkView();
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = &v12[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
  v14 = *&v12[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
  *v13 = 0u;
  *(v13 + 1) = 0u;

  sub_2D294();
  v15 = objc_opt_self();
  v16 = [v15 clearColor];
  [v12 setBackgroundColor:v16];

  *&v5[v11] = v12;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___upsellBanner] = 0;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_bannerModel] = 0;
  v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_verticalStack;
  *&v5[v17] = sub_15ADC0();
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___subscribeButton] = 0;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___buttonCaptionLabel] = 0;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___titleLabel] = 0;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___subtitleLabel] = 0;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___benefitsTextLabel] = 0;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_blurView] = 0;
  v18 = OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_separatorView;
  *&v5[v18] = sub_15BA5C();
  v19 = OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_entitlementBadge;
  v20 = objc_allocWithZone(type metadata accessor for EntitlementBadgeView());
  *&v5[v19] = sub_157ED0(UIFontTextStyleBody);
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_objectGraph] = 0;
  v124.receiver = v5;
  v124.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v124, "initWithFrame:", a1, a2, a3, a4);
  [v21 setPreservesSuperviewLayoutMargins:1];
  type metadata accessor for FadedBlurView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_317F20;
  *(inited + 32) = [v15 clearColor];
  *(inited + 40) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:1.0];
  v23 = sub_2C2D88(&off_3B4748, inited, 50.0);
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v21 addSubview:v23];
  v24 = *&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_blurView];
  *&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_blurView] = v23;
  v123 = v23;

  v25 = OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_verticalStack;
  [v21 addSubview:*&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_verticalStack]];
  v26 = OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_logoView;
  [*&v21[v25] addArrangedSubview:*&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_logoView]];
  v120 = v26;
  [*&v21[v25] setCustomSpacing:*&v21[v26] afterView:25.0];
  v27 = *&v21[v25];
  v28 = sub_15B830(&OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___titleLabel, sub_15B350);
  [v27 addArrangedSubview:v28];

  [*&v21[v25] setCustomSpacing:*&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___titleLabel] afterView:23.0];
  v29 = *&v21[v25];
  v30 = sub_15B558(&OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___subtitleLabel, sub_15B5BC);
  [v29 addArrangedSubview:v30];

  v31 = OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_separatorView;
  [*&v21[v25] addArrangedSubview:*&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_separatorView]];
  v121 = v31;
  [*&v21[v25] setCustomSpacing:*&v21[v31] afterView:36.34];
  v32 = *&v21[v25];
  v33 = sub_15B830(&OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___benefitsTextLabel, sub_15B890);
  [v32 addArrangedSubview:v33];

  [*&v21[v25] setCustomSpacing:*&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___benefitsTextLabel] afterView:36.67];
  v34 = *&v21[v25];
  v35 = sub_15B830(&OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___subscribeButton, sub_15AEC8);
  [v34 addArrangedSubview:v35];

  v122 = OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___subscribeButton;
  [*&v21[v25] setCustomSpacing:*&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___subscribeButton] afterView:17.34];
  v36 = *&v21[v25];
  v37 = sub_15B558(&OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___buttonCaptionLabel, sub_15B0D0);
  [v36 addArrangedSubview:v37];

  [*&v21[v25] setCustomSpacing:*&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___buttonCaptionLabel] afterView:27.0];
  v38 = OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_entitlementBadge;
  [v21 addSubview:*&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_entitlementBadge]];
  sub_14A360(_swiftEmptyArrayStorage);
  v39 = sub_15AC10();
  v39[qword_40E008] = 0;

  v40 = OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___upsellBanner;
  [*&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___upsellBanner] setHidden:1];
  LODWORD(v41) = 1148846080;
  [*&v21[v40] setContentCompressionResistancePriority:1 forAxis:v41];
  v42 = *&v21[v25];
  v43 = objc_allocWithZone(UIView);
  v44 = v42;
  v45 = [v43 init];
  [v44 addArrangedSubview:v45];

  [*&v21[v25] addArrangedSubview:*&v21[v40]];
  [*&v21[v25] setCustomSpacing:*&v21[v40] afterView:25.0];
  v46 = [*&v21[v40] widthAnchor];
  v47 = [*&v21[v25] widthAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  LODWORD(v49) = 1144750080;
  [v48 setPriority:v49];
  v50 = v48;
  sub_30C348();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  v51 = [*&v21[v40] widthAnchor];
  v52 = [v51 constraintLessThanOrEqualToConstant:370.0];

  sub_30C348();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  v119 = v38;
  [*&v21[v38] setHidden:1];
  v53 = [*&v21[v25] bottomAnchor];
  v54 = [v21 layoutMarginsGuide];
  v55 = [v54 bottomAnchor];

  v56 = [v53 constraintEqualToAnchor:v55];
  LODWORD(v57) = 1148846080;
  [v56 setPriority:v57];
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_326D00;
  v59 = [*&v21[v25] leadingAnchor];
  v60 = [v21 layoutMarginsGuide];
  v61 = [v60 leadingAnchor];

  v62 = [v59 constraintEqualToAnchor:v61];
  *(v58 + 32) = v62;
  v63 = [*&v21[v25] trailingAnchor];
  v64 = [v21 layoutMarginsGuide];
  v65 = [v64 trailingAnchor];

  v66 = [v63 constraintEqualToAnchor:v65];
  *(v58 + 40) = v66;
  v67 = [*&v21[v25] topAnchor];
  v68 = [v21 layoutMarginsGuide];
  v69 = [v68 topAnchor];

  v70 = [v67 constraintEqualToAnchor:v69];
  *(v58 + 48) = v70;
  *(v58 + 56) = v56;
  v71 = *&v21[v120];
  v118 = v56;
  v72 = [v71 widthAnchor];
  v73 = [v72 constraintEqualToConstant:265.0];

  *(v58 + 64) = v73;
  v74 = [*&v21[v120] heightAnchor];
  v75 = [v74 constraintEqualToConstant:70.0];

  sub_30C888();
  isa = sub_30CA28(v125).super.isa;

  *(v58 + 72) = isa;
  v77 = [*&v21[v121] leadingAnchor];
  v78 = [v21 layoutMarginsGuide];
  v79 = [v78 leadingAnchor];

  v80 = [v77 constraintEqualToAnchor:v79];
  *(v58 + 80) = v80;
  v81 = [*&v21[v121] trailingAnchor];
  v82 = [v21 layoutMarginsGuide];
  v83 = [v82 trailingAnchor];

  v84 = [v81 constraintEqualToAnchor:v83];
  *(v58 + 88) = v84;
  v85 = [*&v21[v122] heightAnchor];
  v86 = [v85 constraintEqualToConstant:44.0];

  *(v58 + 96) = v86;
  v87 = [*&v21[v122] centerXAnchor];
  v88 = [v21 layoutMarginsGuide];
  v89 = [v88 centerXAnchor];

  v90 = [v87 constraintEqualToAnchor:v89];
  *(v58 + 104) = v90;
  v91 = [*&v21[v122] widthAnchor];
  v92 = [v91 constraintGreaterThanOrEqualToConstant:256.0];

  *(v58 + 112) = v92;
  sub_14A360(v58);
  v93 = swift_initStackObject();
  *(v93 + 16) = xmmword_31D480;
  v94 = [v123 bottomAnchor];
  v95 = [v21 bottomAnchor];
  v96 = [v94 constraintEqualToAnchor:v95];

  *(v93 + 32) = v96;
  v97 = [v123 leadingAnchor];
  v98 = [v21 leadingAnchor];
  v99 = [v97 constraintEqualToAnchor:v98];

  *(v93 + 40) = v99;
  v100 = [v123 trailingAnchor];
  v101 = [v21 trailingAnchor];
  v102 = [v100 constraintEqualToAnchor:v101];

  *(v93 + 48) = v102;
  v103 = [v123 heightAnchor];

  v104 = [v103 constraintEqualToConstant:300.0];
  *(v93 + 56) = v104;
  sub_14A360(v93);
  v105 = swift_initStackObject();
  *(v105 + 16) = xmmword_31D470;
  v106 = [*&v21[v119] leadingAnchor];
  v107 = [v21 leadingAnchor];
  v108 = [v106 constraintEqualToAnchor:v107];

  *(v105 + 32) = v108;
  v109 = [*&v21[v119] trailingAnchor];
  v110 = [v21 trailingAnchor];
  v111 = [v109 constraintEqualToAnchor:v110];

  *(v105 + 40) = v111;
  v112 = [*&v21[v119] bottomAnchor];
  v113 = [v21 bottomAnchor];

  v114 = [v112 constraintEqualToAnchor:v113];
  *(v105 + 48) = v114;
  sub_14A360(v105);

  v115 = objc_opt_self();
  sub_124C4(0, &qword_403000);
  v116 = sub_30C358().super.isa;
  [v115 activateConstraints:v116];

  return v21;
}

void sub_15CF48()
{
  v1 = v0;
  v2 = sub_3039D8();
  __chkstk_darwin(v2 - 8);
  v4 = &v170 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3041E8();
  v180 = *(v5 - 8);
  __chkstk_darwin(v5);
  v179 = &v170 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v7 - 8);
  v9 = &v170 - v8;
  v10 = sub_303398();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v170 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v14 - 8);
  v185 = &v170 - v15;
  v16 = sub_3031C8();
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v183 = &v170 - v21;
  v22 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_objectGraph];
  if (!v22)
  {
    return;
  }

  v181 = v20;
  v182 = v18;
  v173 = v19;
  v174 = v13;
  v176 = v10;
  v184 = v22;

  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_bannerModel] = sub_307FD8();

  v23 = sub_307FF8();
  v24 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_blurView];
  v25 = &selRef_registerImage_withTraitCollection_;
  v26 = &selRef_registerImage_withTraitCollection_;
  v175 = v11;
  v177 = v5;
  if (v23 > 1u)
  {
    if (v23 == 2)
    {
      if (v24)
      {
        [v24 setHidden:1];
      }

      [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_separatorView] setHidden:1];
      v32 = sub_15B830(&OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___subscribeButton, sub_15AEC8);
      [v32 setHidden:1];

      v33 = sub_15B558(&OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___buttonCaptionLabel, sub_15B0D0);
      [v33 setHidden:1];

      v34 = sub_307FD8();
      if (v34)
      {
        v35 = v34;
        v36 = sub_15AC10();
        sub_2E20D4(v35);

        [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___upsellBanner] setHidden:0];
      }

      else
      {
        v64 = sub_15AC10();
        [v64 setHidden:1];
      }

      v65 = sub_15B830(&OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___benefitsTextLabel, sub_15B890);
      [v65 setHidden:1];

      v31 = 24.0;
    }

    else
    {
      if (v24)
      {
        [v24 setHidden:1];
      }

      v43 = OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_entitlementBadge;
      [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_entitlementBadge] setHidden:0];
      v44 = sub_15B558(&OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___buttonCaptionLabel, sub_15B0D0);
      [v44 setHidden:1];

      v45 = sub_15AC10();
      [v45 setHidden:1];

      [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_separatorView] setHidden:1];
      v46 = sub_15B830(&OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___benefitsTextLabel, sub_15B890);
      [v46 setHidden:1];

      v47 = sub_15B830(&OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___subscribeButton, sub_15AEC8);
      [v47 setHidden:1];

      v48 = *&v1[v43];
      v49 = sub_307FB8();
      if (v49)
      {
        v50 = v49;
        sub_30CFC8();
        if (v192 & 1 | (v191 < 0.25))
        {
          v51 = 11;
        }

        else
        {
          v51 = 13;
        }

        v52 = ~(v192 | (v191 < 0.25));
        v53 = [objc_opt_self() effectWithStyle:v51];
        v54 = [objc_opt_self() effectForBlurEffect:v53 style:v52 & 1];
        [*&v48[qword_40E930] setEffect:v53];
        [*&v48[qword_40E938] setEffect:v54];

        v25 = &selRef_registerImage_withTraitCollection_;
        v26 = &selRef_registerImage_withTraitCollection_;
      }

      else
      {
      }

      v31 = 31.0;
    }
  }

  else if (v23)
  {
    if (v24)
    {
      v37 = v24;
      [v37 setHidden:(sub_307F98() & 1) == 0];
    }

    v38 = sub_307FD8();
    v39 = 0.0;
    v178 = v9;
    if (v38 && (sub_307F08(), v41 = v40, , v41))
    {

      v42 = 0;
      v39 = 32.67;
    }

    else
    {
      v42 = 1;
    }

    [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_separatorView] setHidden:v42];
    v55 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_verticalStack];
    v56 = sub_15B558(&OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___subtitleLabel, sub_15B5BC);
    [v55 setCustomSpacing:v56 afterView:v39];

    v57 = sub_15B830(&OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___subscribeButton, sub_15AEC8);
    [v57 setHidden:0];

    v58 = sub_15AC10();
    [v58 setHidden:1];

    LOBYTE(v55) = sub_15EA6C();
    v59 = sub_15B558(&OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___buttonCaptionLabel, sub_15B0D0);
    [v59 setHidden:(v55 & 1) == 0];

    v60 = OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___buttonCaptionLabel;
    v61 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___buttonCaptionLabel];
    if (sub_307FD8())
    {
      v62 = sub_307E48();

      v26 = &selRef_registerImage_withTraitCollection_;
      if (v62)
      {

        v63 = 1;
      }

      else
      {
        v63 = 0;
      }
    }

    else
    {
      v63 = 0;
      v26 = &selRef_registerImage_withTraitCollection_;
    }

    [v61 setUserInteractionEnabled:v63];

    v66 = *&v1[v60];
    sub_307FA8();
    if (v67)
    {
      v68 = sub_30C098();
    }

    else
    {
      v68 = 0;
    }

    [v66 v26[225]];

    v69 = sub_15B830(&OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___benefitsTextLabel, sub_15B890);
    v25 = &selRef_registerImage_withTraitCollection_;
    [v69 setHidden:0];

    v31 = 0.0;
    if (sub_307FD8() && (v70 = sub_307E48(), , v70))
    {

      v71 = [*&v1[v60] textColor];
      if (!v71)
      {
        __break(1u);
        return;
      }

      v72 = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_315420;
      *(inited + 32) = NSUnderlineStyleAttributeName;
      *(inited + 40) = 1;
      *(inited + 64) = &type metadata for Int;
      *(inited + 72) = NSUnderlineColorAttributeName;
      *(inited + 104) = sub_124C4(0, &qword_3FFD48);
      *(inited + 80) = v72;
      v74 = NSUnderlineStyleAttributeName;
      v75 = NSUnderlineColorAttributeName;
      v172 = v72;
      sub_2D6CB0(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FFD50);
      swift_arrayDestroy();
      v76 = *&v1[v60];
      v77 = [v76 text];
      if (v77)
      {
        v78 = v77;
        sub_30C0D8();
      }

      v79 = objc_allocWithZone(NSAttributedString);
      v80 = sub_30C098();

      type metadata accessor for Key(0);
      sub_15F0B8(&qword_3FB410, 255, type metadata accessor for Key);
      isa = sub_30BF88().super.isa;

      v82 = [v79 initWithString:v80 attributes:isa];

      [v76 setAttributedText:v82];
      v9 = v178;
      v26 = &selRef_registerImage_withTraitCollection_;
      v25 = &selRef_registerImage_withTraitCollection_;
    }

    else
    {
      v9 = v178;
    }
  }

  else
  {
    if (v24)
    {
      [v24 setHidden:1];
    }

    v27 = sub_15AC10();
    [v27 setHidden:1];

    [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_separatorView] setHidden:1];
    v28 = sub_15B830(&OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___subscribeButton, sub_15AEC8);
    [v28 setHidden:1];

    v29 = sub_15B558(&OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___buttonCaptionLabel, sub_15B0D0);
    [v29 setHidden:1];

    v30 = sub_15B830(&OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___benefitsTextLabel, sub_15B890);
    [v30 setHidden:1];

    v31 = 0.0;
  }

  v83 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_verticalStack];
  [v1 layoutMargins];
  v85 = -v84;
  [v1 layoutMargins];
  [v83 setLayoutMargins:{v85, 0.0, v31 - v86, 0.0}];
  v87 = sub_307F58();
  if (v88)
  {
    v188[0] = v87;
    v188[1] = v88;
    sub_120F0();
    if (sub_30C5A8())
    {
      v89 = sub_15B830(&OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___titleLabel, sub_15B350);
      v90 = sub_30C098();

      [v89 setText:v90];

      v26 = &selRef_registerImage_withTraitCollection_;
      v25 = &selRef_registerImage_withTraitCollection_;
      [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___titleLabel] setHidden:0];
      goto LABEL_49;
    }

    v25 = &selRef_registerImage_withTraitCollection_;
  }

  v91 = sub_15B830(&OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___titleLabel, sub_15B350);
  [v91 v25[207]];

LABEL_49:
  v92 = sub_15B558(&OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___subtitleLabel, sub_15B5BC);
  sub_307FE8();
  if (v93)
  {
    v94 = sub_30C098();
    v25 = &selRef_registerImage_withTraitCollection_;
  }

  else
  {
    v94 = 0;
  }

  [v92 v26[225]];

  v95 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___subtitleLabel];
  v96 = sub_307FE8();
  if (v97)
  {
    v98 = v96;
    v99 = v97;

    v100 = HIBYTE(v99) & 0xF;
    if ((v99 & 0x2000000000000000) == 0)
    {
      v100 = v98 & 0xFFFFFFFFFFFFLL;
    }

    v101 = v100 == 0;
  }

  else
  {
    v101 = 1;
  }

  [v95 v25[207]];

  sub_307FF8();
  v102 = sub_308B38();
  v104 = v103;
  if (v102 == sub_308B38() && v104 == v105)
  {
  }

  else
  {
    v106 = sub_30D728();

    if ((v106 & 1) == 0)
    {
      goto LABEL_66;
    }
  }

  v107 = sub_307FD8();
  if (v107)
  {
    v108 = v107;
    v178 = v9;
    v109 = sub_307ED8();
    if (v110)
    {
      v111 = v109;
      v112 = v110;
      v172 = v4;
      v113 = sub_15B830(&OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___subscribeButton, sub_15AEC8);
      v114 = *&v113[qword_40E820];

      v115 = [objc_opt_self() mainBundle];
      v169._countAndFlagsBits = 0xE000000000000000;
      v193._object = 0x800000000033D7B0;
      v193._countAndFlagsBits = 0xD000000000000026;
      v194.value._countAndFlagsBits = 0;
      v194.value._object = 0;
      v116.super.isa = v115;
      v195._countAndFlagsBits = 0;
      v195._object = 0xE000000000000000;
      sub_301AB8(v193, v194, v116, v195, v169);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408110);
      v117 = swift_allocObject();
      *(v117 + 16) = xmmword_315430;
      *(v117 + 56) = &type metadata for String;
      *(v117 + 64) = sub_DC9AC();
      *(v117 + 32) = v111;
      *(v117 + 40) = v112;
      sub_30C0A8();

      v118 = sub_30C098();

      [v114 setTitle:v118 forState:0];

      v188[0] = v108;
      sub_307F18();
      v119 = sub_30AB98();
      v120 = &OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___verticalStackViewBottomConstraintToBottomConstraint;
      if (v119)
      {
        v121 = v119;
        v122 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___subscribeButton];
        v189 = sub_30B038();
        v190 = sub_15F0B8(&qword_3FBDA0, 255, &type metadata accessor for Action);
        v188[0] = v121;
        v123 = qword_40E820;
        v124 = v122;
        sub_30D388();
        sub_12670(v188, v187);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB60);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405048);
        if (swift_dynamicCast())
        {
          v171 = v124;
          swift_allocObject();
          swift_unknownObjectWeakInit();

          sub_308D68();

          v125 = *&v122[v123];
          sub_124C4(0, &qword_408080);
          swift_allocObject();
          v126 = v171;
          swift_unknownObjectWeakInit();
          v127 = sub_30D0C8();
          v128 = v125;
          v120 = &OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___verticalStackViewBottomConstraintToBottomConstraint;
          [v128 addAction:v127 forControlEvents:0x2000];
        }

        else
        {
        }

        v9 = v178;
        v26 = &selRef_registerImage_withTraitCollection_;
        __swift_destroy_boxed_opaque_existential_1(v188);
      }

      else
      {
        v9 = v178;
        v26 = &selRef_registerImage_withTraitCollection_;
      }

      v140 = *&v1[v120[423]];
    }

    else
    {
      sub_307EC8();
      v130 = sub_30B018();
      v132 = v131;

      v9 = v178;
      if (!v132)
      {
        goto LABEL_74;
      }

      v133 = HIBYTE(v132) & 0xF;
      if ((v132 & 0x2000000000000000) == 0)
      {
        v133 = v130 & 0xFFFFFFFFFFFFLL;
      }

      if (!v133)
      {
LABEL_74:
        v139 = sub_15B830(&OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___subscribeButton, sub_15AEC8);
        [v139 setHidden:1];
LABEL_79:

        goto LABEL_80;
      }

      v134 = sub_15B830(&OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___subscribeButton, sub_15AEC8);
      v135 = sub_307EC8();
      v189 = sub_30B038();
      v190 = sub_15F0B8(&qword_3FBDA0, 255, &type metadata accessor for Action);
      v188[0] = v135;
      v136 = qword_40E820;
      sub_30D388();
      sub_12670(v188, v187);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405048);
      if (swift_dynamicCast())
      {
        v172 = v186;
        swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_308D68();

        v137 = *&v134[v136];
        sub_124C4(0, &qword_408080);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v26 = &selRef_registerImage_withTraitCollection_;
        v138 = sub_30D0C8();
        [v137 addAction:v138 forControlEvents:0x2000];
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1(v188);
      v164 = OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___subscribeButton;
      v165 = *(*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___subscribeButton] + qword_40E820);
      sub_307EC8();
      sub_30B018();
      v167 = v166;

      if (v167)
      {
        v168 = sub_30C098();
      }

      else
      {
        v168 = 0;
      }

      v9 = v178;
      [v165 setTitle:v168 forState:0];

      v140 = *&v1[v164];
    }

    v139 = v140;
    [v139 setHidden:0];
    goto LABEL_79;
  }

LABEL_66:
  v129 = sub_15B830(&OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___subscribeButton, sub_15AEC8);
  [v129 setHidden:1];

LABEL_80:
  v141 = sub_15B558(&OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___buttonCaptionLabel, sub_15B0D0);
  sub_307FA8();
  if (v142)
  {
    v143 = sub_30C098();
  }

  else
  {
    v143 = 0;
  }

  v144 = v185;
  [v141 v26[225]];

  v145 = sub_15B830(&OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___benefitsTextLabel, sub_15B890);
  v146 = sub_307FD8();
  if (v146)
  {
    sub_307F08();
    v148 = v147;

    if (v148)
    {
      v146 = sub_30C098();
    }

    else
    {
      v146 = 0;
    }

    v26 = &selRef_registerImage_withTraitCollection_;
  }

  [v145 v26[225]];

  sub_307F68();
  sub_307A08();

  if ((*(v181 + 48))(v144, 1, v182) == 1)
  {

    sub_EB68(v144, &unk_402FF0);
    return;
  }

  v149 = v183;
  sub_6D85C(v144, v183);
  sub_307F68();
  sub_3079F8();

  v150 = sub_3079E8();
  v152 = v151;
  if (v150 == sub_3079E8() && v152 == v153)
  {

    v154 = v177;
LABEL_94:
    v156 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_logoView];
    sub_6D8C0(v149, v173);
    v157 = sub_303DF8();
    (*(*(v157 - 8) + 56))(v9, 1, 1, v157);
    v158 = v179;
    sub_304198();
    sub_30C778();
    sub_303A08();
    (*(v180 + 8))(v158, v154);
    sub_3039C8();
    v159 = v174;
    sub_303378();
    type metadata accessor for ArtworkView();
    sub_15F0B8(&qword_404350, 255, type metadata accessor for ArtworkView);
    sub_308E28();
    (*(v175 + 8))(v159, v176);
    v160 = sub_307FC8();
    v162 = v161;

    sub_6D924(v149);
    v163 = (v156 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_accessibilityTitle);
    *v163 = v160;
    v163[1] = v162;

    return;
  }

  v155 = sub_30D728();

  v154 = v177;
  if (v155)
  {
    goto LABEL_94;
  }

  sub_6D924(v149);
}

BOOL sub_15EA6C()
{
  if (sub_307FD8())
  {
    v0 = sub_307E28();

    if (v0)
    {
      return 1;
    }
  }

  v1 = sub_307F78();
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  v4 = v2;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  return v5 != 0;
}

uint64_t sub_15EAF4()
{
  swift_getObjectType();
  v1 = sub_3041E8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v19[-1] - v6;
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_bannerModel) && (, v8 = sub_307E48(), , v8))
  {
    sub_3041C8();
    v9 = sub_3041D8();
    v10 = sub_30C7B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "Performing OAuth action on channel header subtitle click.", v11, 2u);
    }

    (*(v2 + 8))(v7, v1);
    v20[3] = sub_30B038();
    v20[4] = sub_15F0B8(&qword_3FBDA0, 255, &type metadata accessor for Action);
    v20[0] = v8;

    v12 = sub_15B558(&OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___buttonCaptionLabel, sub_15B0D0);
    v19[3] = type metadata accessor for DynamicTypeLabel();
    v19[0] = v12;
    sub_15F0B8(&qword_405DA8, v13, type metadata accessor for ChannelHeaderView);
    sub_3025C8();

    sub_EB68(v19, &unk_3FBB70);
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    sub_3041C8();
    v15 = sub_3041D8();
    v16 = sub_30C798();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "User clicked on OAuth but there was no action available.", v17, 2u);
    }

    return (*(v2 + 8))(v4, v1);
  }
}

void sub_15EFB8(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_objectGraph) = a1;

  v3 = sub_15AC10();
  sub_2E306C(a1);
}

uint64_t sub_15F028(uint64_t a1, uint64_t a2)
{
  result = sub_15F0B8(&qword_405DA8, a2, type metadata accessor for ChannelHeaderView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_15F080()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_15F0B8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_15F100()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_logoView;
  type metadata accessor for ArtworkView();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = &v3[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
  v5 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
  *v4 = 0u;
  *(v4 + 1) = 0u;

  sub_2D294();
  v6 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor:v6];

  *(v1 + v2) = v3;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___upsellBanner) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_bannerModel) = 0;
  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_verticalStack;
  *(v1 + v7) = sub_15ADC0();
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___subscribeButton) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___buttonCaptionLabel) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___titleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___subtitleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView____lazy_storage___benefitsTextLabel) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_blurView) = 0;
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_separatorView;
  *(v1 + v8) = sub_15BA5C();
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_entitlementBadge;
  v10 = objc_allocWithZone(type metadata accessor for EntitlementBadgeView());
  *(v1 + v9) = sub_157ED0(UIFontTextStyleBody);
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17ChannelHeaderView_objectGraph) = 0;
  sub_30D648();
  __break(1u);
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_15F30C()
{
  v1 = v0;
  v2 = sub_307158();
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews29ChannelUberCollectionViewCell_sizeClass;
  v4 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ChannelUberCollectionViewCell_sizeClass);
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ChannelUberCollectionViewCell_sizeClass) = v2;
  if (v4 == 8 || (sub_302C18(), v6 = v5, sub_302C18(), v6 != v7))
  {
    v8 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ChannelUberCollectionViewCell_innerView);
    if (v8)
    {
      v9 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ChannelUberCollectionViewCell_innerView + 8);
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 24);
      v12 = *(v1 + v3);
      v13 = v8;
      v11(v12, ObjectType, v9);
    }
  }
}

void sub_15F420(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

id sub_15F434()
{
  v1 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews29ChannelUberCollectionViewCell_currentModel];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v0 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == &dword_4 + 1)
  {
    v5 = 0;
  }

  else
  {
    v7 = [v0 traitCollection];
    v8 = [v7 horizontalSizeClass];

    v5 = v8 != &dword_0 + 2;
  }

  if (sub_307FF8() != 1 || v5)
  {
    type metadata accessor for ChannelHeaderView();
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];

    v9 = &unk_405E20;
    v10 = type metadata accessor for ChannelHeaderView;
  }

  else
  {
    type metadata accessor for HorizontalPaidChannelHeaderView();
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];

    v9 = &unk_405E28;
    v10 = type metadata accessor for HorizontalPaidChannelHeaderView;
  }

  sub_15FE90(v9, 255, v10);
  return v6;
}

void sub_15F5C8(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v3 = [a1 horizontalSizeClass];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (!a1 || v3 != v5)
  {
    v6 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews29ChannelUberCollectionViewCell_currentModel];
    if (v6)
    {
      v7 = v6;
      sub_15F698(v7);
    }
  }
}

void sub_15F698(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews29ChannelUberCollectionViewCell_objectGraph];
  if (v2)
  {
    v3 = v1;
    v4 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews29ChannelUberCollectionViewCell_currentModel];
    *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews29ChannelUberCollectionViewCell_currentModel] = a1;

    v6 = a1;
    [v3 setPreservesSuperviewLayoutMargins:1];
    v7 = [v3 contentView];
    [v7 setPreservesSuperviewLayoutMargins:1];

    v8 = &v3[OBJC_IVAR____TtC23ShelfKitCollectionViews29ChannelUberCollectionViewCell_innerView];
    v9 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews29ChannelUberCollectionViewCell_innerView];
    if (v9)
    {
      [v9 removeFromSuperview];
    }

    v10 = sub_15F434();
    if (v10)
    {
      v12 = v10;
      v13 = v11;
      v14 = [v3 contentView];
      ObjectType = swift_getObjectType();
      v16 = v12;
      sub_30CE98();

      sub_13D794(v6, v2, v3);
      sub_3025B8();
      (*(v13 + 16))(v6, ObjectType, v13);
      (*(v13 + 24))(v3[OBJC_IVAR____TtC23ShelfKitCollectionViews29ChannelUberCollectionViewCell_sizeClass], ObjectType, v13);

      v17 = *v8;
      *v8 = v12;
      *(v8 + 1) = v13;
    }

    else
    {
    }
  }
}

id sub_15F9EC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews29ChannelUberCollectionViewCell_innerView];
  *v4 = 0;
  v4[1] = 0;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews29ChannelUberCollectionViewCell_currentModel] = 0;
  v1[OBJC_IVAR____TtC23ShelfKitCollectionViews29ChannelUberCollectionViewCell_sizeClass] = 8;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews29ChannelUberCollectionViewCell_objectGraph] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_15FAB8()
{
}

uint64_t sub_15FBA4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ChannelUberCollectionViewCell_objectGraph) = a1;
}

uint64_t sub_15FBEC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_15FE90(&qword_405E30, v3, type metadata accessor for ChannelUberCollectionViewCell);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v4);
}

uint64_t sub_15FC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_12670(a3, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4064E0);
  sub_308008();
  if (swift_dynamicCast())
  {
    sub_307FF8();
  }

  return sub_307198();
}

uint64_t sub_15FE90(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_15FED8()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell____lazy_storage___titleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(UILabel) init];
    v5 = [objc_opt_self() labelColor];
    [v4 setTextColor:v5];

    [v4 setAdjustsFontForContentSizeCategory:1];
    LODWORD(v6) = 1148846080;
    [v4 setContentCompressionResistancePriority:1 forAxis:v6];
    [v4 setAccessibilityTraits:UIAccessibilityTraitHeader];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_15FFD8()
{
  v0 = type metadata accessor for EpisodeHeaderSubtitle();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews21EpisodeHeaderSubtitle_presenter] = 0;
  v1[OBJC_IVAR____TtC23ShelfKitCollectionViews21EpisodeHeaderSubtitle_style] = 0;
  v10.receiver = v1;
  v10.super_class = v0;
  v2 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_124C4(0, &qword_408100);
  v3 = v2;
  v4 = sub_30CCD8();
  v5 = sub_30CCD8();
  v6 = sub_30CD28();

  [v3 setFont:v6];
  [v3 setNumberOfLines:1];
  v7 = [objc_opt_self() secondaryLabelColor];
  [v3 setTextColor:v7];

  LODWORD(v8) = 1148846080;
  [v3 setContentCompressionResistancePriority:1 forAxis:v8];
  return v3;
}

id sub_160134()
{
  v0 = type metadata accessor for EpisodeHeaderEntitlementDisplay();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderEntitlementDisplay_presenter] = 0;
  v1[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderEntitlementDisplay_style] = 2;
  v7.receiver = v1;
  v7.super_class = v0;
  v2 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v2 setAdjustsFontForContentSizeCategory:1];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor:v3];

  v4 = v2;
  [v4 setNumberOfLines:1];
  sub_124C4(0, &qword_408100);
  v5 = sub_30CCF8();
  [v4 setFont:v5];

  return v4;
}

id sub_16025C()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell____lazy_storage___playButton;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell____lazy_storage___playButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell____lazy_storage___playButton);
  }

  else
  {
    v4 = v0;
    v5 = _UISolariumEnabled();
    v6 = 2;
    if (!v5)
    {
      v6 = 0;
    }

    v12 = v6;
    v13 = 1;
    v7 = objc_allocWithZone(type metadata accessor for PlayButton(0));
    sub_2A76A0(&v12, 1, 0);
    v8 = *(v0 + v1);
    *(v4 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_160300(uint64_t a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_objectGraph) = a1;
  swift_retain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408E30);
  sub_30B8E8();
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_imageProvider;
  swift_beginAccess();
  sub_A32A0(v9, v2 + v4, &qword_402EB8);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405F78);
  sub_30B8E8();
  *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_libraryDataProvider) = v9[0];
  swift_unknownObjectRelease();
  sub_1604CC(a1);
  v5 = sub_16025C();
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_objectGraph;
  swift_beginAccess();
  *&v5[v6] = a1;

  v7 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_showButton);
  if (v7)
  {
    v8 = v7;
    sub_147BC4(a1);
  }

  else
  {
    __break(1u);
  }
}

void sub_1604CC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_showButton;
  if (!*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_showButton])
  {
    v3 = v1;
    v4 = objc_allocWithZone(type metadata accessor for PrimaryButtonView());
    v5 = sub_148254(2u);
    v6 = *&v1[v2];
    *&v1[v2] = v5;

    v7 = [v1 contentView];
    v8 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_verticalStack];
    [v7 addSubview:v8];

    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v3 action:"titleLabelTapped:"];
    v10 = sub_15FED8();
    v45 = v9;
    [v10 addGestureRecognizer:v9];

    v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell____lazy_storage___titleLabel;
    [*&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell____lazy_storage___titleLabel] setUserInteractionEnabled:1];
    if (*&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_model])
    {

      sub_308138();
    }

    v12 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_artworkSpacer];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_playButtonHorizontalStack];
    v14 = sub_16025C();
    [v13 addArrangedSubview:v14];

    v15 = sub_160DC0();
    [v13 addArrangedSubview:v15];

    v16 = sub_160FD0();
    [v13 addArrangedSubview:v16];

    [v8 addArrangedSubview:v12];
    [v8 setCustomSpacing:v12 afterView:10.0];
    v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_episodeHeaderSubtitle;
    [v8 addArrangedSubview:*&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_episodeHeaderSubtitle]];
    [v8 setCustomSpacing:*&v3[v17] afterView:5.0];
    [v8 addArrangedSubview:*&v3[v11]];
    [v8 setCustomSpacing:*&v3[v11] afterView:12.0];
    if (*&v3[v2])
    {
      [v8 addArrangedSubview:?];
      if (*&v3[v2])
      {
        [v8 setCustomSpacing:24.0 afterView:?];
        [v8 addArrangedSubview:v13];
        [v8 setCustomSpacing:v13 afterView:20.0];
        [v8 addArrangedSubview:*&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_episodeHeaderEntitlementDisplay]];
        v18 = [v8 topAnchor];
        v19 = [v3 contentView];
        v20 = [v19 topAnchor];

        v21 = [v18 constraintEqualToAnchor:v20 constant:0.0];
        v22 = OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_verticalStackTopConstraint;
        v23 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_verticalStackTopConstraint];
        *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_verticalStackTopConstraint] = v21;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_31FDA0;
        v25 = [v12 heightAnchor];
        v26 = [v3 contentView];
        v27 = [v26 widthAnchor];

        v28 = [v25 constraintEqualToAnchor:v27 constant:-28.0];
        *(inited + 32) = v28;
        v29 = [v8 leadingAnchor];
        v30 = [v3 contentView];
        v31 = [v30 leadingAnchor];

        v32 = [v29 constraintEqualToAnchor:v31];
        *(inited + 40) = v32;
        v33 = [v8 trailingAnchor];
        v34 = [v3 contentView];
        v35 = [v34 trailingAnchor];

        v36 = [v33 constraintEqualToAnchor:v35];
        *(inited + 48) = v36;
        v37 = *&v3[v22];
        if (v37)
        {
          *(inited + 56) = v37;
          v38 = v37;
          v39 = [v3 contentView];
          v40 = [v39 bottomAnchor];

          v41 = [v8 bottomAnchor];
          v42 = [v40 constraintEqualToAnchor:v41];

          *(inited + 64) = v42;
          sub_14A360(inited);
          v43 = objc_opt_self();
          sub_124C4(0, &qword_403000);
          isa = sub_30C358().super.isa;

          [v43 activateConstraints:isa];

          sub_160C20(a1);
          return;
        }

LABEL_11:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }
}

id sub_160AD4()
{
  v1 = v0;
  v2 = sub_302B48();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_307148();
  sub_302B28();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  v8 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_verticalStack];
  [v8 directionalLayoutMargins];
  if (v9 != v7 || (result = [v8 directionalLayoutMargins], v11 != v7))
  {
    [v8 setDirectionalLayoutMargins:{0.0, v7, 0.0, v7}];
    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_160C20(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for EpisodeHeaderSubtitlePresenter();
  swift_allocObject();

  v5 = sub_13A6E8(v4);

  *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_episodeHeaderSubtitlePresenter) = v5;

  v6 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_episodeHeaderSubtitle);
  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews21EpisodeHeaderSubtitle_presenter;
  *&v6[OBJC_IVAR____TtC23ShelfKitCollectionViews21EpisodeHeaderSubtitle_presenter] = v5;
  v8 = v6;

  v9 = *&v6[v7];
  if (v9)
  {
    *(v9 + 24) = &off_3BB838;
    swift_unknownObjectWeakAssign();
  }

  type metadata accessor for EpisodeHeaderEntitlementDisplayPresenter();
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 48) = a1;
  *(v10 + 56) = 0;
  *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_episodeHeaderEntitlementDisplayPresenter) = v10;

  v11 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_episodeHeaderEntitlementDisplay);
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderEntitlementDisplay_presenter;
  *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderEntitlementDisplay_presenter] = v10;
  v14 = v11;

  v13 = *&v11[v12];
  if (v13)
  {
    *(v13 + 24) = &off_3BB768;
    swift_unknownObjectWeakAssign();
  }
}

_BYTE *sub_160DC0()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell____lazy_storage___downloadButton;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell____lazy_storage___downloadButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell____lazy_storage___downloadButton);
  }

  else
  {
    v4 = sub_160E20();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

_BYTE *sub_160E20()
{
  v0 = type metadata accessor for DownloadButton.Style(0);
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_3028A8();
  v4 = [objc_opt_self() tintColor];
  v5 = [v4 colorWithAlphaComponent:0.2];

  v20[24] = 0;
  v20[0] = 0;
  sub_302888();
  v6 = &v3[*(v1 + 28)];
  __asm { FMOV            V0.2D, #30.0 }

  *v6 = _Q0;
  v6[16] = 0;
  *(v6 + 24) = xmmword_326D20;
  __asm { FMOV            V0.2D, #10.0 }

  *(v6 + 40) = _Q0;
  v6[56] = 0;
  *(v6 + 8) = 0x4000000000000000;
  *(v6 + 9) = 0;
  *(v6 + 10) = v5;
  *(v6 + 11) = 0;
  v3[*(v1 + 36)] = 0;
  v13 = objc_allocWithZone(type metadata accessor for DownloadButton(0));
  v14 = sub_19AB24(v3, 0x4048000000000000, 0x4048000000000000, 0);
  v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlayHidesBackground;
  swift_beginAccess();
  v14[v15] = 0;
  v16 = v14;
  sub_24E1B8();
  v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style;
  swift_beginAccess();
  v18 = v16[v17];
  v16[v17] = 2;
  if (v18 != 2)
  {
    sub_24E1B8();
  }

  return v16;
}

id sub_160FD0()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell____lazy_storage___bookmarkButton;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell____lazy_storage___bookmarkButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell____lazy_storage___bookmarkButton);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for BookmarkButton());
    v6 = sub_A7488(0x4048000000000000, 0x4048000000000000, 0);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_161050(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_objectGraph] = 0;
  v9 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_imageProvider];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_mediumArtworkSize] = vdupq_n_s64(0x4064E00000000000uLL);
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_largeArtworkSize] = vdupq_n_s64(0x4070900000000000uLL);
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_artworkWidthConstraint] = 0;
  v10 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_libraryDataProvider];
  *v10 = 0;
  v10[1] = 0;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell__uberStyle] = 1;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell__interfaceStyle] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_model] = 0;
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_verticalStack;
  v12 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v12 setAxis:1];
  [v12 setAlignment:1];
  [v12 setLayoutMarginsRelativeArrangement:1];
  *&v4[v11] = v12;
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_playButtonHorizontalStack;
  v14 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v14 setSpacing:10.0];
  [v14 setAxis:0];
  [v14 setAlignment:3];
  [v14 setBaselineRelativeArrangement:1];
  [v14 setLayoutMarginsRelativeArrangement:1];
  LODWORD(v15) = 1148846080;
  [v14 setContentHuggingPriority:0 forAxis:v15];
  *&v4[v13] = v14;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_artworkSubscription] = 0;
  v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_subscribedArtwork;
  v17 = sub_3031C8();
  (*(*(v17 - 8) + 56))(&v4[v16], 1, 1, v17);
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_episodeHeaderSubtitlePresenter] = 0;
  v18 = OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_episodeHeaderSubtitle;
  *&v4[v18] = sub_15FFD8();
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_episodeHeaderEntitlementDisplayPresenter] = 0;
  v19 = OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_episodeHeaderEntitlementDisplay;
  *&v4[v19] = sub_160134();
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_verticalStackTopConstraint] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_showButton] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell____lazy_storage___playButton] = 0;
  v20 = OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_artworkSpacer;
  *&v4[v20] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell____lazy_storage___downloadButton] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell____lazy_storage___bookmarkButton] = 0;
  v21 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_reload];
  v22 = type metadata accessor for EpisodeHeaderCollectionViewCell();
  *v21 = 0;
  v21[1] = 0;
  v24.receiver = v4;
  v24.super_class = v22;
  return objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
}

void sub_16153C(void **a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4051B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v84 - v5;
  v7 = sub_30A388();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v87 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v88 = &v84 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4051C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v84 - v13;
  v15 = sub_30A3F8();
  v92 = *(v15 - 8);
  v93 = v15;
  __chkstk_darwin(v15);
  v85 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v86 = &v84 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEA58);
  __chkstk_darwin(v19 - 8);
  v21 = &v84 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v22 - 8);
  v94 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v84 - v25;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_model) = a1;

  if ((sub_3080B8() & 1) == 0 || (v27 = sub_308148()) == 0)
  {
    sub_3080D8();
    sub_307A08();

    v29 = sub_3031C8();
    v30 = (*(*(v29 - 8) + 48))(v26, 1, v29);
    sub_EB68(v26, &unk_402FF0);
    if (v30 != 1)
    {
      v31 = v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_background;
      v32 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_background);
      v33 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_background + 8);
      *v31 = 0;
      *(v31 + 8) = 0;
      v34 = *(v31 + 16);
      *(v31 + 16) = -64;
      sub_13DD84(v32, v33, v34);
      sub_14EC50();
      [*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_artworkSpacer) setHidden:1];
      v35 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_verticalStackTopConstraint);
      if (!v35)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      [v35 setConstant:10.0];
    }

LABEL_8:
    v89 = v6;
    v90 = v8;
    v91 = v7;
    *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell__uberStyle) = sub_308228();
    aBlock = a1;
    sub_308238();
    *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell__interfaceStyle) = sub_30A2D8();
    v36 = sub_16025C();
    v37 = sub_3081A8();
    v99 = sub_30B038();
    v100 = sub_163E80(&qword_3FBDA0, &type metadata accessor for Action);
    aBlock = v37;
    sub_308218();
    sub_308208();
    sub_309718();
    v38 = sub_309778();
    (*(*(v38 - 8) + 56))(v21, 0, 1, v38);
    v39 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_data;
    swift_beginAccess();
    sub_749E4(v21, v36 + v39);
    swift_endAccess();
    v40 = objc_opt_self();
    v41 = swift_allocObject();
    *(v41 + 16) = v36;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_74A54;
    *(v42 + 24) = v41;
    v100 = sub_293C0;
    v101 = v42;
    aBlock = _NSConcreteStackBlock;
    v97 = 1107296256;
    v98 = sub_19D688;
    v99 = &block_descriptor_32;
    v43 = _Block_copy(&aBlock);
    v44 = v36;

    [v40 performWithoutAnimation:v43];
    _Block_release(v43);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      sub_EB68(v21, &qword_3FEA58);
      if (*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_objectGraph))
      {

        sub_308188();
        v47 = v92;
        v46 = v93;
        if ((*(v92 + 48))(v14, 1, v93) == 1)
        {
          sub_EB68(v14, &qword_4051C0);
        }

        else
        {
          v48 = v86;
          (*(v47 + 32))(v86, v14, v46);
          v49 = sub_160DC0();
          (*(v47 + 16))(v85, v48, v46);
          sub_30A438();
          swift_allocObject();

          v50 = sub_30A408();
          sub_19AA70(v50);

          (*(v47 + 8))(v48, v46);
        }

        v52 = v90;
        v51 = v91;
        v53 = v89;
        v54 = sub_160DC0();
        [v54 setHidden:*(*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell____lazy_storage___downloadButton) + OBJC_IVAR____TtC23ShelfKitCollectionViews14DownloadButton_presenter) == 0];

        sub_308178();
        if ((*(v52 + 48))(v53, 1, v51) == 1)
        {
          sub_EB68(v53, &qword_4051B8);
        }

        else
        {
          v55 = v88;
          (*(v52 + 32))(v88, v53, v51);
          v56 = sub_160FD0();
          (*(v52 + 16))(v87, v55, v51);
          sub_30A3C8();
          swift_allocObject();

          v57 = sub_30A398();
          sub_A73D4(v57);

          (*(v52 + 8))(v55, v51);
        }

        v58 = sub_160FD0();
        [v58 setHidden:*(*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell____lazy_storage___bookmarkButton) + OBJC_IVAR____TtC23ShelfKitCollectionViews14BookmarkButton_presenter) == 0];
      }

      v59 = OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_showButton;
      v60 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_showButton);
      if (v60)
      {
        v61 = v60;
        sub_3080D8();
        v62 = v94;
        sub_307A08();

        sub_147C7C(v62);

        sub_EB68(v62, &unk_402FF0);
        v63 = *(v2 + v59);
        if (v63)
        {
          v64 = v63;
          v65 = sub_308158();
          sub_148068(v65);

          v66 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_episodeHeaderSubtitlePresenter);
          if (v66)
          {
            *(v66 + 32) = a1;

            sub_13A124(v67);

            v68 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_episodeHeaderEntitlementDisplayPresenter);
            if (v68)
            {
              *(v68 + 32) = a1;

              sub_1392DC();

              v69 = sub_15FED8();
              sub_3081E8();
              if (v70)
              {
                v71 = sub_30C098();
              }

              else
              {
                v71 = 0;
              }

              [v69 setText:v71];

              v72 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell____lazy_storage___playButton);
              aBlock = 0;
              v97 = 0xE000000000000000;
              v73 = v72;
              v102._object = 0x800000000033C270;
              v102._countAndFlagsBits = 0xD000000000000014;
              sub_30C238(v102);
              v103._countAndFlagsBits = 46;
              v103._object = 0xE100000000000000;
              sub_30C238(v103);
              v95 = 4;
              sub_30D638();
              v74 = sub_30C098();

              [v73 setAccessibilityIdentifier:v74];

              v75 = *(v2 + v59);
              if (v75)
              {
                aBlock = 0;
                v97 = 0xE000000000000000;
                v76 = v75;
                v104._object = 0x800000000033C270;
                v104._countAndFlagsBits = 0xD000000000000014;
                sub_30C238(v104);
                v105._countAndFlagsBits = 46;
                v105._object = 0xE100000000000000;
                sub_30C238(v105);
                v95 = 1;
                sub_30D638();
                v77 = sub_30C098();

                [v76 setAccessibilityIdentifier:v77];

                v78 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_episodeHeaderSubtitle);
                aBlock = 0;
                v97 = 0xE000000000000000;
                v79 = v78;
                v106._object = 0x800000000033C270;
                v106._countAndFlagsBits = 0xD000000000000014;
                sub_30C238(v106);
                v107._countAndFlagsBits = 46;
                v107._object = 0xE100000000000000;
                sub_30C238(v107);
                v95 = 19;
                sub_30D638();
                v80 = sub_30C098();

                [v79 setAccessibilityIdentifier:v80];

                v81 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell____lazy_storage___titleLabel);
                aBlock = 0;
                v97 = 0xE000000000000000;
                v82 = v81;
                v108._object = 0x800000000033C270;
                v108._countAndFlagsBits = 0xD000000000000014;
                sub_30C238(v108);
                v109._countAndFlagsBits = 46;
                v109._object = 0xE100000000000000;
                sub_30C238(v109);
                v95 = 18;
                sub_30D638();
                v83 = sub_30C098();

                [v82 setAccessibilityIdentifier:v83];

                return;
              }

              goto LABEL_31;
            }

LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  sub_1624D0(v27);
  v28 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_verticalStackTopConstraint);
  if (v28)
  {
    [v28 setConstant:0.0];

    goto LABEL_8;
  }

LABEL_33:
  __break(1u);
}

void sub_162270()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for EpisodeHeaderCollectionViewCell();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  if (*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_model])
  {

    v2 = sub_15FED8();
    v3 = [v2 text];

    if (v3)
    {
      v4 = sub_30C0D8();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell____lazy_storage___titleLabel;
    [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell____lazy_storage___titleLabel] bounds];
    Width = CGRectGetWidth(v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4051D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_318FC0;
    sub_124C4(0, &qword_408100);
    *(inited + 32) = sub_30CC88();
    *(inited + 40) = 2;
    *(inited + 48) = sub_30CC98();
    *(inited + 56) = 3;
    *(inited + 64) = sub_30CCA8();
    *(inited + 72) = 4;
    v10 = sub_1AD6D0(v4, v6, inited, Width);
    v12 = v11;

    swift_setDeallocating();
    swift_arrayDestroy();
    v13 = *&v1[v7];
    v14 = sub_308128();
    [v13 setFont:v10];
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = v12;
    }

    [v13 setNumberOfLines:v15];
    [v13 setNeedsLayout];
    [v13 layoutIfNeeded];
  }
}

uint64_t sub_1624D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F30);
  __chkstk_darwin(v2 - 8);
  v88 = &v78 - v3;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405F40);
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v90 = &v78 - v4;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405F48);
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v78 - v5;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405F50);
  v6 = *(v99 - 8);
  __chkstk_darwin(v99);
  v8 = &v78 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v9 - 8);
  v102 = &v78 - v10;
  v98 = sub_303398();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v91 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v11;
  __chkstk_darwin(v12);
  v103 = &v78 - v13;
  v14 = sub_3041E8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v100 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405F58);
  __chkstk_darwin(v17);
  v19 = &v78 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v20 - 8);
  v101 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v87 = &v78 - v23;
  __chkstk_darwin(v24);
  v26 = &v78 - v25;
  __chkstk_darwin(v27);
  v29 = &v78 - v28;
  v30 = sub_3031C8();
  __chkstk_darwin(v30);
  v35 = __chkstk_darwin(v31);
  if (!a1)
  {
    (*(v33 + 56))(v29, 1, 1, v30, v35);
    return sub_EB68(v29, &unk_402FF0);
  }

  v86 = v34;
  v85 = v15;
  v104 = &v78 - v32;
  v83 = v8;
  v84 = v6;
  v36 = v33;
  sub_307A08();
  v37 = *(v36 + 48);
  if (v37(v29, 1, v30) == 1)
  {
    return sub_EB68(v29, &unk_402FF0);
  }

  v81 = v14;
  v38 = v104;
  sub_6D85C(v29, v104);
  v39 = OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_subscribedArtwork;
  v40 = v105;
  swift_beginAccess();
  sub_6D8C0(v38, v26);
  v41 = *(v36 + 56);
  v82 = v36 + 56;
  v79 = v41;
  v41(v26, 0, 1, v30);
  v42 = *(v17 + 48);
  v80 = v39;
  sub_EB00(&v40[v39], v19, &unk_402FF0);
  sub_EB00(v26, &v19[v42], &unk_402FF0);
  if (v37(v19, 1, v30) == 1)
  {
    sub_EB68(v26, &unk_402FF0);
    if (v37(&v19[v42], 1, v30) == 1)
    {
      sub_EB68(v19, &unk_402FF0);
      return sub_6D924(v104);
    }

    goto LABEL_10;
  }

  v44 = v87;
  sub_EB00(v19, v87, &unk_402FF0);
  if (v37(&v19[v42], 1, v30) == 1)
  {
    sub_EB68(v26, &unk_402FF0);
    sub_6D924(v44);
LABEL_10:
    sub_EB68(v19, &qword_405F58);
    v45 = v85;
    goto LABEL_11;
  }

  v47 = &v19[v42];
  v48 = v86;
  sub_6D85C(v47, v86);
  v49 = sub_303178();
  sub_6D924(v48);
  sub_EB68(v26, &unk_402FF0);
  sub_6D924(v44);
  sub_EB68(v19, &unk_402FF0);
  v45 = v85;
  if (v49)
  {
    return sub_6D924(v104);
  }

LABEL_11:
  v46 = v105;
  if (*&v105[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_objectGraph])
  {
    sub_302528();

    sub_30B998();
  }

  v50 = v103;
  v51 = v100;
  sub_304198();
  sub_30C778();
  sub_303A08();
  (*(v45 + 8))(v51, v81);
  v52 = v104;
  sub_6D8C0(v104, v86);
  v53 = [objc_opt_self() mainScreen];
  [v53 scale];

  v54 = sub_303DF8();
  (*(*(v54 - 8) + 56))(v102, 1, 1, v54);
  sub_12670(&v111, &v109);
  sub_303358();
  v55 = v101;
  sub_6D8C0(v52, v101);
  v79(v55, 0, 1, v30);
  v56 = v80;
  swift_beginAccess();
  sub_A32A0(v55, &v46[v56], &unk_402FF0);
  swift_endAccess();
  v57 = OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_imageProvider;
  swift_beginAccess();
  result = sub_EB00(&v46[v57], &v109, &qword_402EB8);
  if (v110)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v109, v110);
    v106 = sub_302128();
    sub_124C4(0, &qword_3FBF20);
    v58 = v50;
    v59 = sub_30C8F8();
    v108 = v59;
    v60 = sub_30C8E8();
    v61 = v88;
    (*(*(v60 - 8) + 56))(v88, 1, 1, v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401518);
    sub_EC8C(&qword_401520, &qword_401518);
    sub_CF4A8();
    v62 = v90;
    sub_304F28();
    sub_EB68(v61, &unk_408F30);

    __swift_destroy_boxed_opaque_existential_1(&v109);
    v63 = sub_EC8C(&qword_405F60, &qword_405F40);
    v64 = v94;
    v65 = v93;
    sub_304E48();
    (*(v92 + 8))(v62, v65);
    sub_12670(&v111, &v109);
    v106 = v65;
    v107 = v63;
    swift_getOpaqueTypeConformance2();
    v66 = v96;
    sub_3032E8();
    v67 = v83;
    sub_304E68();
    sub_EB68(&v109, &qword_405F68);
    (*(v95 + 8))(v64, v66);
    v68 = v97;
    v69 = v91;
    v70 = v98;
    (*(v97 + 16))(v91, v58, v98);
    v71 = (*(v68 + 80) + 16) & ~*(v68 + 80);
    v72 = swift_allocObject();
    (*(v68 + 32))(v72 + v71, v69, v70);
    v73 = swift_allocObject();
    v74 = v105;
    *(v73 + 16) = v105;
    sub_EC8C(&qword_405F70, &qword_405F50);
    v75 = v74;
    v76 = v99;
    v77 = sub_304EE8();

    (*(v84 + 8))(v67, v76);
    (*(v68 + 8))(v58, v70);
    __swift_destroy_boxed_opaque_existential_1(&v111);
    sub_6D924(v104);
    *&v75[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_artworkSubscription] = v77;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1633BC(void *a1, uint64_t a2)
{
  v4 = sub_303398();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = sub_3041E8();
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v32 = v12;
    swift_errorRetain();
    sub_304198();
    v30 = *(v5 + 16);
    v30(v10, a2, v4);
    swift_errorRetain();
    v15 = sub_3041D8();
    v16 = sub_30C798();

    v31 = v16;
    v17 = v16;
    v18 = v15;
    if (os_log_type_enabled(v15, v17))
    {
      v19 = swift_slowAlloc();
      v29 = v11;
      v20 = v19;
      v28 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = v21;
      *v20 = 136315394;
      v30(v7, v10, v4);
      v22 = sub_30C148();
      v24 = v23;
      (*(v5 + 8))(v10, v4);
      v25 = sub_191264(v22, v24, &v33);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2112;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v26;
      v27 = v28;
      *v28 = v26;
      _os_log_impl(&dword_0, v18, v31, "Failure fetching artwork for request %s, error %@", v20, 0x16u);
      sub_EB68(v27, &qword_3FC200);

      __swift_destroy_boxed_opaque_existential_1(v21);

      (*(v32 + 8))(v14, v29);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
      (*(v32 + 8))(v14, v11);
    }
  }
}

void sub_163738(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_background;
  v4 = *(a2 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_background + 16);
  if (v4 > 0x3F)
  {
    v8 = v2;
    goto LABEL_7;
  }

  v6 = *v3;
  v5 = *(v3 + 8);
  sub_124C4(0, &qword_401538);
  v9 = v2;
  sub_1503A0(v6, v5, v4);
  v7 = sub_30D098();
  sub_13DD84(v6, v5, v4);
  if ((v7 & 1) == 0)
  {
LABEL_7:
    sub_14E674(v2);
    return;
  }
}

uint64_t sub_163828()
{

  sub_EB68(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_imageProvider, &qword_402EB8);

  swift_unknownObjectRelease();

  sub_EB68(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_subscribedArtwork, &unk_402FF0);

  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_reload);

  return sub_1EBD0(v1);
}

id sub_1639BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EpisodeHeaderCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for EpisodeHeaderCollectionViewCell()
{
  result = qword_405F10;
  if (!qword_405F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_163BE8()
{
  sub_10216C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_163D20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return TypedShelfUIKitCell.apply(model:)(a1, a2, WitnessTable);
}

uint64_t sub_163D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_reload);
  v5 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_reload);
  *v4 = a2;
  v4[1] = a3;

  return sub_1EBD0(v5);
}

uint64_t sub_163E80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_163FA0()
{
  v1 = sub_303398();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_164028(void *a1)
{
  v3 = *(sub_303398() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1633BC(a1, v4);
}

uint64_t sub_164098()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_164100()
{
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_model))
  {

    sub_308138();
    v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_reload);
    if (v1)
    {

      v1(0);
      sub_1EBD0(v1);
    }
  }

  return result;
}

void sub_1641A8()
{
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_objectGraph) = 0;
  v1 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_imageProvider;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_mediumArtworkSize) = vdupq_n_s64(0x4064E00000000000uLL);
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_largeArtworkSize) = vdupq_n_s64(0x4070900000000000uLL);
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_artworkWidthConstraint) = 0;
  v2 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_libraryDataProvider);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell__uberStyle) = 1;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell__interfaceStyle) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_model) = 0;
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_verticalStack;
  v4 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v4 setAxis:1];
  [v4 setAlignment:1];
  [v4 setLayoutMarginsRelativeArrangement:1];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_playButtonHorizontalStack;
  v6 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v6 setSpacing:10.0];
  [v6 setAxis:0];
  [v6 setAlignment:3];
  [v6 setBaselineRelativeArrangement:1];
  [v6 setLayoutMarginsRelativeArrangement:1];
  LODWORD(v7) = 1148846080;
  [v6 setContentHuggingPriority:0 forAxis:v7];
  *(v0 + v5) = v6;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_artworkSubscription) = 0;
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_subscribedArtwork;
  v9 = sub_3031C8();
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_episodeHeaderSubtitlePresenter) = 0;
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_episodeHeaderSubtitle;
  *(v0 + v10) = sub_15FFD8();
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_episodeHeaderEntitlementDisplayPresenter) = 0;
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_episodeHeaderEntitlementDisplay;
  *(v0 + v11) = sub_160134();
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_verticalStackTopConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_showButton) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell____lazy_storage___playButton) = 0;
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_artworkSpacer;
  *(v0 + v12) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell____lazy_storage___downloadButton) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell____lazy_storage___bookmarkButton) = 0;
  v13 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_reload);
  *v13 = 0;
  v13[1] = 0;
  sub_30D648();
  __break(1u);
}

char *sub_1644C8()
{
  type metadata accessor for ArtworkView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
  *v1 = 0u;
  *(v1 + 1) = 0u;

  sub_2D294();
  v3 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor:v3];

  LODWORD(v4) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v4];
  return v0;
}

id sub_164584()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___leftVerticalStackView;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___leftVerticalStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___leftVerticalStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIStackView) init];
    [v4 setAlignment:1];
    [v4 setBaselineRelativeArrangement:1];
    [v4 setAxis:1];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_164648()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___rightVerticalStackView;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___rightVerticalStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___rightVerticalStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIStackView) init];
    [v4 setAlignment:0];
    [v4 setAxis:1];
    [v4 setBaselineRelativeArrangement:1];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_16470C()
{
  v1 = v0;
  v2 = type metadata accessor for VEVButtonContainer.Style(0);
  __chkstk_darwin(v2);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___subscribeButton;
  v7 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___subscribeButton);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___subscribeButton);
  }

  else
  {
    if (qword_3FACC0 != -1)
    {
      v21 = v3;
      swift_once();
      v3 = v21;
    }

    v25 = xmmword_429A30;
    v26 = unk_429A40;
    v27[0] = xmmword_429A50;
    *(v27 + 10) = *(&xmmword_429A50 + 10);
    v23 = xmmword_429A10;
    v24 = unk_429A20;
    v9 = v3[5];
    v10 = v3;
    v11 = sub_302AB8();
    (*(*(v11 - 8) + 56))(v5 + v9, 1, 1, v11);
    v12 = v26;
    v5[2] = v25;
    v5[3] = v12;
    v5[4] = v27[0];
    *(v5 + 74) = *(v27 + 10);
    v13 = v24;
    *v5 = v23;
    v5[1] = v13;
    v14 = v5 + v10[6];
    *v14 = 0;
    *(v14 + 1) = 0;
    v14[16] = 1;
    v15 = (v5 + v10[8]);
    *v15 = xmmword_326BC0;
    v15[1] = xmmword_326BC0;
    *(v5 + v10[9]) = 9;
    *(v5 + v10[7]) = 0;
    objc_allocWithZone(type metadata accessor for VEVButtonContainer(0));
    sub_8FC54(&v23, v22);
    v16 = sub_1584B8(v5);
    v16[qword_40E940] = 0;
    v17 = *(v1 + v6);
    *(v1 + v6) = v16;
    v8 = v16;

    v7 = 0;
  }

  v18 = v7;
  return v8;
}

char *sub_164938(void *a1)
{
  type metadata accessor for FadingDescriptionLabel();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_descriptionLabel];
  v4 = [a1 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  sub_124C4(0, &qword_408100);
  if (v5 == &dword_4 + 1)
  {
    v6 = sub_30CD88();
  }

  else
  {
    v6 = sub_30CDB8();
  }

  v7 = v6;
  [v3 setFont:v6];

  v8 = [*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_moreButton] titleLabel];
  if (v8)
  {
    v10 = v8;
    v11 = [a1 traitCollection];
    v12 = [v11 userInterfaceIdiom];

    if (v12 == &dword_4 + 1)
    {
      v13 = sub_30CCC8();
    }

    else
    {
      v13 = sub_30CDD8();
    }

    v14 = v13;
    [v10 setFont:v13];
  }

  LODWORD(v9) = 1148846080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v9];
  return v2;
}

id sub_164AEC(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

char *sub_164B50(uint64_t a1)
{
  type metadata accessor for DynamicTypeLabel();
  if (qword_3FACD8 != -1)
  {
    swift_once();
  }

  v11[2] = xmmword_429B50;
  v11[3] = unk_429B60;
  v12[0] = xmmword_429B70;
  *(v12 + 10) = *(&xmmword_429B70 + 10);
  v11[0] = xmmword_429B30;
  v11[1] = unk_429B40;
  sub_8FC54(v11, v13);
  if (qword_3FAD18 != -1)
  {
    swift_once();
  }

  v13[2] = xmmword_429E50;
  v13[3] = unk_429E60;
  v14[0] = xmmword_429E70;
  *(v14 + 10) = *(&xmmword_429E70 + 10);
  v13[0] = xmmword_429E30;
  v13[1] = unk_429E40;
  sub_8FC54(v13, v10);
  sub_F0044(v11, v13, v10);
  v2 = sub_235C3C(v10, 1, 4, 0);
  v3 = qword_3FAFE0;
  v4 = v2;
  if (v3 != -1)
  {
    v9 = v4;
    swift_once();
    v4 = v9;
  }

  v5 = v4;
  [v4 setTextColor:qword_42B020];
  [v5 setTextAlignment:1];

  LODWORD(v6) = 1148846080;
  [v5 setContentCompressionResistancePriority:1 forAxis:v6];
  v7 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:a1 action:"buttonCaptionLabelTapped"];
  [v5 addGestureRecognizer:v7];

  return v5;
}

char *sub_164D50()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___subtitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___subtitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___subtitleLabel);
  }

  else
  {
    v4 = sub_164DB0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_164DB0()
{
  type metadata accessor for DynamicTypeLabel();
  if (qword_3FACD8 != -1)
  {
    swift_once();
  }

  v7[2] = xmmword_429B50;
  v7[3] = unk_429B60;
  v8[0] = xmmword_429B70;
  *(v8 + 10) = *(&xmmword_429B70 + 10);
  v7[0] = xmmword_429B30;
  v7[1] = unk_429B40;
  sub_8FC54(v7, v9);
  if (qword_3FACE8 != -1)
  {
    swift_once();
  }

  v9[2] = xmmword_429C10;
  v9[3] = unk_429C20;
  v10[0] = xmmword_429C30;
  *(v10 + 10) = *(&xmmword_429C30 + 10);
  v9[0] = xmmword_429BF0;
  v9[1] = unk_429C00;
  sub_8FC54(v9, v6);
  sub_F0044(v7, v9, v6);
  v0 = sub_235C3C(v6, 1, 4, 0);
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 labelColor];
  [v2 setTextColor:v3];

  LODWORD(v4) = 1148846080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v4];
  if (qword_3FAF38 != -1)
  {
    swift_once();
  }

  sub_2DB2E0(qword_42ACC8, *&qword_42ACD0, *&qword_42ACD8, *&qword_42ACE0);
  return v2;
}

char *sub_164F94()
{
  type metadata accessor for DynamicTypeLabel();
  if (qword_3FACA8 != -1)
  {
    swift_once();
  }

  v7[2] = xmmword_429910;
  v7[3] = unk_429920;
  v8[0] = xmmword_429930;
  *(v8 + 10) = *(&xmmword_429930 + 10);
  v7[0] = xmmword_4298F0;
  v7[1] = unk_429900;
  sub_8FC54(v7, v9);
  if (qword_3FACE8 != -1)
  {
    swift_once();
  }

  v9[2] = xmmword_429C10;
  v9[3] = unk_429C20;
  v10[0] = xmmword_429C30;
  *(v10 + 10) = *(&xmmword_429C30 + 10);
  v9[0] = xmmword_429BF0;
  v9[1] = unk_429C00;
  sub_8FC54(v9, v6);
  sub_F0044(v7, v9, v6);
  v0 = sub_235C3C(v6, 3, 4, 0);
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 labelColor];
  [v2 setTextColor:v3];

  LODWORD(v4) = 1148846080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v4];

  return v2;
}

id sub_165130()
{
  v0 = [objc_allocWithZone(UIView) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = objc_allocWithZone(UIColor);
  v7[4] = sub_15BBD4;
  v7[5] = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_2EB7C;
  v7[3] = &block_descriptor_33;
  v2 = _Block_copy(v7);
  v3 = [v1 initWithDynamicProvider:v2];
  _Block_release(v2);

  [v0 setBackgroundColor:v3];

  v4 = [v0 heightAnchor];
  v5 = [v4 constraintEqualToConstant:1.0];

  [v5 setActive:1];
  return v0;
}

void sub_165294(id a1)
{
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
    v6 = sub_164AEC(&OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___buttonCaptionLabel, sub_164B50);
    v7 = [v6 layer];

    v8 = [v1 traitCollection];
    v9 = sub_30C998();

    [v7 setCompositingFilter:v9];
  }
}

char *sub_165438(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_logoView;
  *&v4[v10] = sub_1644C8();
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___leftVerticalStackView] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___rightVerticalStackView] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_rightView] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_lastColumnWidth] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___subscribeButton] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___descriptionLabelContainer] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___buttonCaptionLabel] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___subtitleLabel] = 0;
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_benefitsTextLabel;
  *&v4[v11] = sub_164F94();
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_separatorView;
  *&v4[v12] = sub_165130();
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_blurView] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_bannerModel] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_objectGraph] = 0;
  v125.receiver = v4;
  v125.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v125, "initWithFrame:", a1, a2, a3, a4);
  [v13 setPreservesSuperviewLayoutMargins:1];
  type metadata accessor for FadedBlurView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_317F20;
  *(inited + 32) = [objc_opt_self() clearColor];
  *(inited + 40) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:1.0];
  v15 = sub_2C2D88(&off_3B4778, inited, 50.0);
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v13 addSubview:v15];
  v16 = *&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_blurView];
  *&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_blurView] = v15;
  v122 = v15;

  v17 = [objc_allocWithZone(UIView) init];
  v18 = *&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_rightView];
  *&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_rightView] = v17;

  v119 = OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_separatorView;
  [v13 addSubview:*&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_separatorView]];
  v19 = sub_164584();
  [v13 addSubview:v19];

  v20 = sub_164648();
  [v13 addSubview:v20];

  v21 = sub_164AEC(&OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___descriptionLabelContainer, sub_164938);
  v22 = *&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_descriptionLabel];

  LODWORD(v23) = 1148846080;
  [v22 setContentCompressionResistancePriority:1 forAxis:v23];

  v24 = *&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___leftVerticalStackView];
  v25 = OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___leftVerticalStackView;
  v26 = objc_allocWithZone(UIView);
  v27 = v24;
  v28 = [v26 init];
  [v27 addArrangedSubview:v28];

  v29 = OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_logoView;
  v121 = OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_logoView;
  [*&v13[v25] addArrangedSubview:*&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_logoView]];
  v30 = *&v13[v25];
  v31 = sub_164D50();
  [v30 addArrangedSubview:v31];

  v124 = OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___descriptionLabelContainer;
  [*&v13[v25] addArrangedSubview:*&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___descriptionLabelContainer]];
  [*&v13[v25] setCustomSpacing:*&v13[v29] afterView:30.0];
  v118 = OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___subtitleLabel;
  [*&v13[v25] setCustomSpacing:*&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___subtitleLabel] afterView:61.0];
  v32 = OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___rightVerticalStackView;
  v33 = *&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___rightVerticalStackView];
  v34 = sub_16470C();
  [v33 addArrangedSubview:v34];

  v35 = *&v13[v32];
  v36 = sub_164AEC(&OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___buttonCaptionLabel, sub_164B50);
  [v35 addArrangedSubview:v36];

  v37 = *&v13[v32];
  v38 = objc_allocWithZone(UIView);
  v39 = v37;
  v40 = [v38 init];
  [v39 addArrangedSubview:v40];

  v123 = OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_benefitsTextLabel;
  [*&v13[v32] addArrangedSubview:*&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_benefitsTextLabel]];
  v120 = OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___subscribeButton;
  [*&v13[v32] setCustomSpacing:*&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___subscribeButton] afterView:23.0];
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_320DE0;
  v42 = [*&v13[v25] leadingAnchor];
  v43 = [v13 layoutMarginsGuide];
  v44 = [v43 leadingAnchor];

  v45 = [v42 constraintEqualToAnchor:v44];
  *(v41 + 32) = v45;
  v46 = [*&v13[v25] topAnchor];
  v47 = [v13 layoutMarginsGuide];
  v48 = [v47 topAnchor];

  v49 = [v46 constraintEqualToAnchor:v48];
  *(v41 + 40) = v49;
  v50 = [*&v13[v119] leadingAnchor];
  v51 = [v13 layoutMarginsGuide];
  v52 = [v51 leadingAnchor];

  v53 = [v50 constraintEqualToAnchor:v52];
  *(v41 + 48) = v53;
  v54 = [*&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___buttonCaptionLabel] lastBaselineAnchor];
  v55 = [*&v13[v118] lastBaselineAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];

  *(v41 + 56) = v56;
  v57 = [*&v13[v119] trailingAnchor];
  v58 = [v13 layoutMarginsGuide];
  v59 = [v58 trailingAnchor];

  v60 = [v57 constraintEqualToAnchor:v59];
  *(v41 + 64) = v60;
  v61 = [*&v13[v119] topAnchor];
  v62 = [*&v13[v118] lastBaselineAnchor];
  v63 = [v61 constraintEqualToAnchor:v62 constant:23.0];

  *(v41 + 72) = v63;
  v64 = [*&v13[v32] trailingAnchor];
  v65 = [v13 layoutMarginsGuide];
  v66 = [v65 trailingAnchor];

  v67 = [v64 constraintEqualToAnchor:v66];
  *(v41 + 80) = v67;
  v68 = [v13 bottomAnchor];
  v69 = [*(*&v13[v124] + OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_descriptionLabel) lastBaselineAnchor];
  v70 = [v68 constraintGreaterThanOrEqualToAnchor:v69 constant:36.0];

  sub_30C888();
  isa = sub_30CA28(v126).super.isa;

  *(v41 + 88) = isa;
  v72 = [v13 bottomAnchor];
  v73 = [*&v13[v123] lastBaselineAnchor];
  v74 = [v72 constraintGreaterThanOrEqualToAnchor:v73 constant:36.0];

  sub_30C888();
  v75 = sub_30CA28(v127).super.isa;

  *(v41 + 96) = v75;
  v76 = [*&v13[v120] heightAnchor];
  v77 = [v13 traitCollection];
  v78 = [v77 userInterfaceIdiom];

  v79 = 48.0;
  if (v78 == &dword_4 + 1)
  {
    v79 = 34.0;
  }

  v80 = [v76 constraintEqualToConstant:v79];

  *(v41 + 104) = v80;
  v81 = [*&v13[v120] widthAnchor];
  v82 = [v81 constraintGreaterThanOrEqualToConstant:265.0];

  *(v41 + 112) = v82;
  v83 = [*&v13[v25] widthAnchor];
  v84 = [v13 layoutMarginsGuide];
  v85 = [v84 widthAnchor];

  v86 = [v83 constraintEqualToAnchor:v85 multiplier:0.54];
  *(v41 + 120) = v86;
  v87 = [*&v13[v32] widthAnchor];
  v88 = [v13 layoutMarginsGuide];
  v89 = [v88 widthAnchor];

  v90 = [v87 constraintEqualToAnchor:v89 multiplier:0.29];
  LODWORD(v91.rawValue) = 1144750080;
  v92 = sub_30CA28(v91).super.isa;

  *(v41 + 128) = v92;
  v93 = [*&v13[v121] widthAnchor];
  v94 = [v93 constraintLessThanOrEqualToConstant:400.0];

  *(v41 + 136) = v94;
  v95 = [*&v13[v121] heightAnchor];
  v96 = [v95 constraintEqualToConstant:100.0];

  *(v41 + 144) = v96;
  v97 = [*&v13[v121] topAnchor];
  v98 = [v13 topAnchor];
  v99 = [v97 constraintEqualToAnchor:v98 constant:100.0];

  *(v41 + 152) = v99;
  sub_14A360(v41);
  v100 = [*&v13[v123] firstBaselineAnchor];
  v101 = [*(*&v13[v124] + OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_descriptionLabel) firstBaselineAnchor];
  v102 = [v100 constraintEqualToAnchor:v101];

  sub_30C348();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  v103 = swift_initStackObject();
  *(v103 + 16) = xmmword_31D480;
  v104 = [v122 bottomAnchor];
  v105 = [v13 bottomAnchor];
  v106 = [v104 constraintEqualToAnchor:v105];

  *(v103 + 32) = v106;
  v107 = [v122 leadingAnchor];
  v108 = [v13 leadingAnchor];
  v109 = [v107 constraintEqualToAnchor:v108];

  *(v103 + 40) = v109;
  v110 = [v122 trailingAnchor];
  v111 = [v13 trailingAnchor];

  v112 = [v110 constraintEqualToAnchor:v111];
  *(v103 + 48) = v112;
  v113 = [v122 heightAnchor];

  v114 = [v113 constraintEqualToConstant:300.0];
  *(v103 + 56) = v114;
  sub_14A360(v103);
  v115 = objc_opt_self();
  sub_124C4(0, &qword_403000);
  v116 = sub_30C358().super.isa;

  [v115 activateConstraints:v116];

  return v13;
}

void sub_1663B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_303758();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_3041E8();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v9 - 8);
  v118 = &v110 - v10;
  v121 = sub_303398();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v119 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v12 - 8);
  v124 = &v110 - v13;
  v14 = sub_3031C8();
  __chkstk_darwin(v14);
  __chkstk_darwin(v15);
  v125 = &v110 - v19;
  v20 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_objectGraph);
  if (!v20)
  {
    return;
  }

  v122 = v18;
  v123 = v16;
  v111 = v17;
  v112 = v5;
  v113 = v4;

  *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_bannerModel) = sub_307FD8();

  v21 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_blurView);
  if (v21)
  {
    v22 = v21;
    sub_307FF8();
    v23 = sub_308B38();
    v25 = v24;
    if (v23 == sub_308B38() && v25 == v26)
    {
      v27 = 1;
    }

    else
    {
      v27 = sub_30D728();
    }

    [v22 setHidden:v27 & 1];
  }

  v28 = sub_164AEC(&OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___descriptionLabelContainer, sub_164938);
  v29 = *&v28[OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_moreButton];

  v30 = sub_167D10(a1);
  v129 = sub_3076F8();
  v130 = sub_16829C(&unk_3FB8B0, 255, &type metadata accessor for FlowAction);
  v128 = v30;
  sub_30D388();

  __swift_destroy_boxed_opaque_existential_1(&v128);
  v31 = sub_307FD8();
  v126 = v20;
  if (v31)
  {
    v32 = v31;
    v33 = sub_307ED8();
    if (v34)
    {
      v35 = v33;
      v36 = v34;
      v114 = v7;
      v37 = sub_16470C();
      v38 = *&v37[qword_40E820];

      v39 = [objc_opt_self() mainBundle];
      v109._countAndFlagsBits = 0xE000000000000000;
      v131._object = 0x800000000033D7B0;
      v131._countAndFlagsBits = 0xD000000000000026;
      v132.value._countAndFlagsBits = 0;
      v132.value._object = 0;
      v40.super.isa = v39;
      v133._countAndFlagsBits = 0;
      v133._object = 0xE000000000000000;
      sub_301AB8(v131, v132, v40, v133, v109);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408110);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_315430;
      *(v41 + 56) = &type metadata for String;
      *(v41 + 64) = sub_DC9AC();
      *(v41 + 32) = v35;
      *(v41 + 40) = v36;
      sub_30C0A8();

      v42 = sub_30C098();

      [v38 setTitle:v42 forState:0];

      v128 = v32;
      sub_307F18();
      v43 = sub_30AB98();
      v44 = &OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___verticalStackViewBottomConstraintToBottomConstraint;
      if (v43)
      {
        v45 = v43;
        v46 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___subscribeButton);
        v129 = sub_30B038();
        v130 = sub_16829C(&qword_3FBDA0, 255, &type metadata accessor for Action);
        v128 = v45;
        v47 = qword_40E820;
        v48 = v46;
        sub_30D388();
        sub_12670(&v128, v127);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB60);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405048);
        if (swift_dynamicCast())
        {
          v110 = v48;
          swift_allocObject();
          swift_unknownObjectWeakInit();

          sub_308D68();

          v49 = *&v46[v47];
          sub_124C4(0, &qword_408080);
          swift_allocObject();
          v50 = v110;
          swift_unknownObjectWeakInit();
          v51 = sub_30D0C8();
          v52 = v49;
          v44 = &OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___verticalStackViewBottomConstraintToBottomConstraint;
          [v52 addAction:v51 forControlEvents:0x2000];
        }

        else
        {
        }

        v7 = v114;
        __swift_destroy_boxed_opaque_existential_1(&v128);
      }

      else
      {
        v7 = v114;
      }

      [*(v2 + v44[501]) setHidden:{0, v110}];
      goto LABEL_27;
    }
  }

  if (sub_307FD8())
  {
    v53 = sub_307EC8();

    v54 = sub_16470C();
    v129 = sub_30B038();
    v130 = sub_16829C(&qword_3FBDA0, 255, &type metadata accessor for Action);
    v128 = v53;
    v55 = qword_40E820;
    v114 = v53;

    sub_30D388();
    sub_12670(&v128, v127);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405048);
    if (swift_dynamicCast())
    {
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_308D68();

      v56 = *&v54[v55];
      sub_124C4(0, &qword_408080);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v57 = sub_30D0C8();
      [v56 addAction:v57 forControlEvents:0x2000];
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_1(&v128);
    v59 = OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___subscribeButton;
    v60 = *(*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___subscribeButton) + qword_40E820);
    sub_30B018();
    if (v61)
    {
      v62 = sub_30C098();
    }

    else
    {
      v62 = 0;
    }

    [v60 setTitle:v62 forState:0];

    [*(v2 + v59) setHidden:0];
LABEL_27:

    goto LABEL_28;
  }

  v58 = sub_16470C();
  [v58 setHidden:1];

LABEL_28:
  v63 = sub_164D50();
  sub_307FE8();
  if (v64)
  {
    v65 = sub_30C098();
  }

  else
  {
    v65 = 0;
  }

  [v63 setText:v65];

  v66 = *(*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___descriptionLabelContainer) + OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_descriptionLabel);
  sub_307F88();
  if (v67)
  {
    v68 = sub_30C098();
  }

  else
  {
    v68 = 0;
  }

  [v66 setText:v68];

  v69 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_benefitsTextLabel);
  v70 = sub_307FD8();
  if (v70)
  {
    sub_307F08();
    v72 = v71;

    if (v72)
    {
      v70 = sub_30C098();
    }

    else
    {
      v70 = 0;
    }
  }

  [v69 setText:v70];

  v73 = sub_164AEC(&OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___buttonCaptionLabel, sub_164B50);
  sub_307FA8();
  if (v74)
  {
    v75 = sub_30C098();
  }

  else
  {
    v75 = 0;
  }

  [v73 setText:v75];

  if (sub_307FD8() && (v76 = sub_307E48(), , v76))
  {
    v114 = v7;

    v77 = OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___buttonCaptionLabel;
    v78 = [*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___buttonCaptionLabel) textColor];
    if (!v78)
    {
      __break(1u);
      return;
    }

    v79 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_315420;
    *(inited + 32) = NSUnderlineStyleAttributeName;
    *(inited + 40) = 1;
    *(inited + 64) = &type metadata for Int;
    *(inited + 72) = NSUnderlineColorAttributeName;
    *(inited + 104) = sub_124C4(0, &qword_3FFD48);
    *(inited + 80) = v79;
    v81 = NSUnderlineStyleAttributeName;
    v82 = NSUnderlineColorAttributeName;
    v83 = v79;
    sub_2D6CB0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FFD50);
    swift_arrayDestroy();
    v84 = *(v2 + v77);
    v85 = [v84 text];
    if (v85)
    {
      v86 = v85;
      sub_30C0D8();
    }

    v7 = v114;
    v87 = objc_allocWithZone(NSAttributedString);
    v88 = sub_30C098();

    type metadata accessor for Key(0);
    sub_16829C(&qword_3FB410, 255, type metadata accessor for Key);
    isa = sub_30BF88().super.isa;

    v90 = [v87 initWithString:v88 attributes:isa];

    [v84 setAttributedText:v90];
    [*(v2 + v77) setUserInteractionEnabled:1];
  }

  else
  {
    [*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___buttonCaptionLabel) setUserInteractionEnabled:0];
  }

  sub_307F68();
  v91 = v124;
  sub_307A08();

  if ((*(v122 + 48))(v91, 1, v123) == 1)
  {

    sub_EB68(v91, &unk_402FF0);
    return;
  }

  sub_6D85C(v91, v125);
  sub_307F68();
  sub_3079F8();

  v92 = sub_3079E8();
  v94 = v93;
  if (v92 == sub_3079E8() && v94 == v95)
  {

LABEL_54:
    v97 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_logoView);
    v98 = v125;
    sub_6D8C0(v125, v111);
    v99 = sub_303DF8();
    (*(*(v99 - 8) + 56))(v118, 1, 1, v99);
    v100 = v115;
    sub_304198();
    sub_30C778();
    sub_303A08();
    (*(v116 + 8))(v100, v117);
    v101 = [objc_opt_self() mainScreen];
    [v101 scale];

    v102 = v119;
    sub_303358();
    type metadata accessor for ArtworkView();
    sub_16829C(&qword_404350, 255, type metadata accessor for ArtworkView);
    sub_308E28();
    (*(v120 + 8))(v102, v121);
    sub_303198();
    v103 = &v97[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageSize];
    *v103 = v104;
    *(v103 + 1) = v105;
    [v97 setNeedsLayout];
    v106 = v112;
    v107 = v113;
    (*(v112 + 104))(v7, enum case for ArtworkAspectRule.aspectFit(_:), v113);
    [v97 effectiveUserInterfaceLayoutDirection];
    [v97 setContentMode:6];

    sub_6D924(v98);
    v108 = OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_aspectRule;
    swift_beginAccess();
    (*(v106 + 40))(&v97[v108], v7, v107);
    swift_endAccess();
    return;
  }

  v96 = sub_30D728();

  if (v96)
  {
    goto LABEL_54;
  }

  sub_6D924(v125);
}

uint64_t sub_1677A0()
{
  swift_getObjectType();
  v1 = sub_3041E8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v19[-1] - v6;
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_bannerModel) && (, v8 = sub_307E48(), , v8))
  {
    sub_3041C8();
    v9 = sub_3041D8();
    v10 = sub_30C7B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "Performing OAuth action on channel header subtitle click.", v11, 2u);
    }

    (*(v2 + 8))(v7, v1);
    v20[3] = sub_30B038();
    v20[4] = sub_16829C(&qword_3FBDA0, 255, &type metadata accessor for Action);
    v20[0] = v8;

    v12 = sub_164AEC(&OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___buttonCaptionLabel, sub_164B50);
    v19[3] = type metadata accessor for DynamicTypeLabel();
    v19[0] = v12;
    sub_16829C(&qword_406018, v13, type metadata accessor for HorizontalPaidChannelHeaderView);
    sub_3025C8();

    sub_EB68(v19, &unk_3FBB70);
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    sub_3041C8();
    v15 = sub_3041D8();
    v16 = sub_30C798();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "User clicked on OAuth but there was no action available.", v17, 2u);
    }

    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_167C70(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_objectGraph) = a1;
}

uint64_t sub_167CB8(uint64_t a1, uint64_t a2)
{
  result = sub_16829C(&qword_406018, a2, type metadata accessor for HorizontalPaidChannelHeaderView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_167D10(uint64_t a1)
{
  v25 = a1;
  v1 = sub_30B898();
  __chkstk_darwin(v1 - 8);
  v33 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_30AA18();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v32 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_30A4E8();
  v27 = *(v5 - 8);
  v28 = v5;
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_308778();
  v29 = *(v26 - 8);
  __chkstk_darwin(v26);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  __chkstk_darwin(v10 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40A130);
  __chkstk_darwin(v13 - 8);
  v15 = &v25 - v14;
  sub_307F88();
  v16 = sub_304298();
  sub_304258();
  sub_304248();
  v17 = objc_allocWithZone(v16);
  sub_3042C8();
  v18 = sub_30A5E8();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = sub_30BAA8();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  sub_30B5C8();
  swift_allocObject();
  sub_30B598();
  sub_307FC8();
  sub_308798();
  swift_allocObject();

  *v9 = sub_308788();
  v20 = v29[13];
  v29 = v9;
  v20(v9, enum case for FlowDestination.longDescription(_:), v26);
  (*(v27 + 104))(v7, enum case for FlowPresentationContext.presentModal(_:), v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4090E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_315420;

  LOBYTE(v9) = sub_30AF68();
  *(inited + 32) = v9;
  v22 = sub_30AF98();
  *(inited + 33) = v22;
  sub_30AFB8();
  sub_30AFB8();
  if (sub_30AFB8() != v9)
  {
    sub_30AFB8();
  }

  sub_30AFB8();
  if (sub_30AFB8() != v22)
  {
    sub_30AFB8();
  }

  (*(v30 + 104))(v32, enum case for FlowDestinationPageHeader.standard(_:), v31);
  sub_30B868();
  sub_3076F8();
  swift_allocObject();
  v23 = sub_307708();

  return v23;
}

uint64_t sub_16829C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1682E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_16831C()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_logoView;
  *(v0 + v1) = sub_1644C8();
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___leftVerticalStackView) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___rightVerticalStackView) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_rightView) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_lastColumnWidth) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___subscribeButton) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___descriptionLabelContainer) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___buttonCaptionLabel) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView____lazy_storage___subtitleLabel) = 0;
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_benefitsTextLabel;
  *(v0 + v2) = sub_164F94();
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_separatorView;
  *(v0 + v3) = sub_165130();
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_blurView) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_bannerModel) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView_objectGraph) = 0;
  sub_30D648();
  __break(1u);
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_168448(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews26RoomUberCollectionViewCell_fixedHeightConstraint] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews26RoomUberCollectionViewCell_objectGraph] = 0;
  v28.receiver = v4;
  v28.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v28, "initWithFrame:", a1, a2, a3, a4);
  v11 = [v10 traitCollection];
  if (sub_30C968())
  {

    v12 = 220.0;
  }

  else
  {
    v13 = [v11 horizontalSizeClass];

    if (v13 == &dword_0 + 2)
    {
      v12 = 310.0;
    }

    else
    {
      v12 = 112.0;
    }
  }

  v14 = [v10 traitCollection];

  v15 = sub_30C968();
  if ((v15 & 1) == 0)
  {
    v22 = v10;
    v23 = [v22 contentView];
    v24 = [v23 heightAnchor];

    v25 = [v24 constraintEqualToConstant:v12];
    sub_30C888();
    isa = sub_30CA28(v29).super.isa;

    v27 = *&v22[OBJC_IVAR____TtC23ShelfKitCollectionViews26RoomUberCollectionViewCell_fixedHeightConstraint];
    *&v22[OBJC_IVAR____TtC23ShelfKitCollectionViews26RoomUberCollectionViewCell_fixedHeightConstraint] = isa;
    v20 = isa;

    goto LABEL_10;
  }

  v16 = [v10 contentView];
  v17 = [v16 heightAnchor];

  v18 = [v17 constraintEqualToConstant:v12];
  v19 = *&v10[OBJC_IVAR____TtC23ShelfKitCollectionViews26RoomUberCollectionViewCell_fixedHeightConstraint];
  *&v10[OBJC_IVAR____TtC23ShelfKitCollectionViews26RoomUberCollectionViewCell_fixedHeightConstraint] = v18;
  v20 = v18;

  if (v20)
  {
    v21 = v10;
LABEL_10:
    [(objc_class *)v20 setActive:1];

    return;
  }

  __break(1u);
}

void sub_1686D0(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void sub_168754(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews26RoomUberCollectionViewCell_objectGraph] = a1;

  v2 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews26RoomUberCollectionViewCell_fixedHeightConstraint];
  if (v2)
  {

    v6 = v2;
    v3 = [v1 traitCollection];
    if (sub_30C968())
    {

      v4 = 220.0;
    }

    else
    {
      v5 = [v3 horizontalSizeClass];

      v4 = 112.0;
      if (v5 == &dword_0 + 2)
      {
        v4 = 310.0;
      }
    }

    [v6 setConstant:v4];
  }

  else
  {
    __break(1u);
  }
}

void sub_16884C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_302118();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3041E8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  v13 = sub_3031C8();
  __chkstk_darwin(v13 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_303398();
  __chkstk_darwin(v16);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews26RoomUberCollectionViewCell_objectGraph])
  {
    v33 = v18;
    v34 = v17;
    v32 = a1 + *(sub_30B438() + 20);
    sub_6D8C0(v32, v15);

    v21 = [v2 traitCollection];
    v22 = sub_30C968();
    v31 = v4;
    if ((v22 & 1) == 0)
    {
      [v21 horizontalSizeClass];
    }

    [v2 bounds];
    v23 = sub_303DF8();
    (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
    sub_304198();
    sub_30C778();
    sub_303A08();
    (*(v7 + 8))(v9, v6);
    v24 = [objc_opt_self() mainScreen];
    [v24 scale];

    sub_303358();
    sub_1690F0(&qword_406080, v25, type metadata accessor for RoomUberCollectionViewCell);
    sub_308E28();
    v26 = *(v32 + 64);
    if (v26 == 255)
    {
      (*(v33 + 8))(v20, v34);
    }

    else
    {
      v27 = *(v32 + 56);
      sub_12FD0C(v27, *(v32 + 64));
      v28 = [v2 contentView];
      sub_12FD0C(v27, v26);
      v29 = v35;
      sub_3020F8();
      v30 = sub_3020E8();
      (*(v36 + 8))(v29, v31);
      [v28 setOverrideUserInterfaceStyle:v30];

      sub_12FD20(v27, v26);
      (*(v33 + 8))(v20, v34);
    }
  }
}

uint64_t sub_168D84()
{
}

uint64_t sub_168E4C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1690F0(&qword_406088, v3, type metadata accessor for RoomUberCollectionViewCell);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v4);
}

uint64_t sub_168ED0(uint64_t a1, void *a2)
{
  if ((sub_30C968() & 1) == 0)
  {
    [a2 horizontalSizeClass];
  }

  return sub_307198();
}

uint64_t sub_168F50()
{
  if (sub_307248())
  {
    return 0;
  }

  else
  {
    return 0x4020000000000000;
  }
}

uint64_t sub_1690F0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_169138(unsigned __int8 a1)
{
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowUberCollectionViewCell_sizeClass;
  v3 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowUberCollectionViewCell_sizeClass);
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowUberCollectionViewCell_sizeClass) = a1;
  if (v3 == 8)
  {
    if (a1 == 8)
    {
      return;
    }
  }

  else if (a1 == 8)
  {
    a1 = 8;
  }

  else
  {
    sub_302C18();
    v5 = v4;
    sub_302C18();
    if (v5 == v6)
    {
      return;
    }

    a1 = *(v1 + v2);
  }

  v7 = *(*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowUberCollectionViewCell_showPageHeader) + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_upsellBanner);
  v8 = v7[qword_40E018];
  v7[qword_40E018] = a1;
  if (v8 == 8)
  {
    if (a1 == 8)
    {
      return;
    }

    v15 = v7;
    v14 = v7;
    goto LABEL_15;
  }

  v9 = a1;
  v15 = v7;
  v10 = v7;
  if (v9 == 8 || (sub_302C18(), v12 = v11, sub_302C18(), v12 != v13))
  {
LABEL_15:
    sub_2E404C();
  }
}

char *sub_169284(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowUberCollectionViewCell_showPageHeader;
  type metadata accessor for ShowHeaderView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowUberCollectionViewCell_episodePlayStateController] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowUberCollectionViewCell_showHeader] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowUberCollectionViewCell_objectGraph] = 0;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowUberCollectionViewCell_sizeClass] = 8;
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  [v11 setPreservesSuperviewLayoutMargins:1];
  v12 = [v11 contentView];
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowUberCollectionViewCell_showPageHeader;
  v14 = *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowUberCollectionViewCell_showPageHeader];
  sub_30CE98();

  v15 = [v11 contentView];
  [v15 setPreservesSuperviewLayoutMargins:1];

  [*&v11[v13] setPreservesSuperviewLayoutMargins:1];
  return v11;
}

uint64_t sub_169474@<X0>(uint64_t a1@<X8>)
{
  result = sub_2C310C();
  *a1 = 1;
  *(a1 + 8) = result;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_1694C4(uint64_t result)
{
  v2 = v1;
  v3 = result;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowUberCollectionViewCell_showHeader;
  if (!*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowUberCollectionViewCell_showHeader] || (sub_307938(), sub_169B28(&qword_406100, 255, &type metadata accessor for ShowHeader), , v5 = sub_30C018(), result = , (v5 & 1) == 0))
  {
    v6 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowUberCollectionViewCell_objectGraph];
    if (v6)
    {
      *&v2[v4] = v3;

      sub_13D100(v7, v6, v2);
      sub_2C3380(v3);
    }
  }

  return result;
}

uint64_t sub_1695E4()
{
}

void sub_1696EC()
{
  v0 = sub_307158();

  sub_169138(v0);
}

uint64_t sub_169724(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowUberCollectionViewCell_objectGraph) = a1;

  return ShowHeaderView.bind(to:)(v2);
}

uint64_t sub_169770(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_169B28(&qword_406108, v3, type metadata accessor for ShowUberCollectionViewCell);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v4);
}

uint64_t sub_1697F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_12670(a3, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4064E0);
  sub_307938();
  if (swift_dynamicCast())
  {
    if (sub_3078D8() || sub_307828())
    {

LABEL_11:
      sub_307198();
    }

    v3 = sub_307898();
    if (v3 != 2 && (v3 & 1) != 0)
    {
      goto LABEL_11;
    }

    sub_307858();
    sub_3079F8();

    v4 = sub_3079E8();
    v6 = v5;
    if (v4 == sub_3079E8() && v6 == v7)
    {

      goto LABEL_11;
    }

    v8 = sub_30D728();

    if (v8)
    {
      goto LABEL_11;
    }
  }

  return sub_307198();
}

uint64_t sub_169B28(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_169B70()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowUberCollectionViewCell_showPageHeader;
  type metadata accessor for ShowHeaderView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowUberCollectionViewCell_episodePlayStateController) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowUberCollectionViewCell_showHeader) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowUberCollectionViewCell_objectGraph) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowUberCollectionViewCell_sizeClass) = 8;
  sub_30D648();
  __break(1u);
}

void ModernTitleHeaderView.apply(header:objectGraph:)(uint64_t a1, uint64_t a2)
{
  v360 = a1;
  ObjectType = swift_getObjectType();
  v340 = sub_304C68();
  v339 = *(v340 - 8);
  __chkstk_darwin(v340);
  v338 = &v293 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406140);
  __chkstk_darwin(v4 - 8);
  v337 = &v293 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4090C0);
  __chkstk_darwin(v6 - 8);
  v318 = &v293 - v7;
  v333 = sub_307BE8();
  v332 = *(v333 - 8);
  __chkstk_darwin(v333);
  v342 = &v293 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406148);
  __chkstk_darwin(v345);
  v346 = &v293 - v9;
  v325 = sub_3023D8();
  v324 = *(v325 - 8);
  __chkstk_darwin(v325);
  v322 = &v293 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v321 = v10;
  __chkstk_darwin(v11);
  v323 = &v293 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406150);
  __chkstk_darwin(v13 - 8);
  v341 = (&v293 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v352 = &v293 - v16;
  __chkstk_darwin(v17);
  v320 = (&v293 - v18);
  __chkstk_darwin(v19);
  v328 = &v293 - v20;
  v331 = sub_301A78();
  v330 = *(v331 - 8);
  __chkstk_darwin(v331);
  v316 = &v293 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v329 = &v293 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400D50);
  __chkstk_darwin(v24 - 8);
  v336 = &v293 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v350 = &v293 - v27;
  v356 = sub_307678();
  v355 = *(v356 - 8);
  __chkstk_darwin(v356);
  v326 = &v293 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v334 = &v293 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F30);
  __chkstk_darwin(v31 - 8);
  v302 = &v293 - v32;
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405F40);
  v304 = *(v305 - 8);
  __chkstk_darwin(v305);
  v303 = &v293 - v33;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405F48);
  v307 = *(v309 - 8);
  __chkstk_darwin(v309);
  v306 = &v293 - v34;
  v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405F50);
  v313 = *(v314 - 8);
  __chkstk_darwin(v314);
  v312 = &v293 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v36 - 8);
  v301 = (&v293 - v37);
  v311 = sub_303398();
  v310 = *(v311 - 8);
  __chkstk_darwin(v311);
  v308 = &v293 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v300 = sub_3041E8();
  v299 = *(v300 - 8);
  __chkstk_darwin(v300);
  v298 = &v293 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v296 = sub_303758();
  v295 = *(v296 - 8);
  __chkstk_darwin(v296);
  v294 = &v293 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400450);
  __chkstk_darwin(v41 - 8);
  v348 = &v293 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v347 = &v293 - v44;
  __chkstk_darwin(v45);
  v335 = &v293 - v46;
  __chkstk_darwin(v47);
  v344 = &v293 - v48;
  __chkstk_darwin(v49);
  v327 = &v293 - v50;
  __chkstk_darwin(v51);
  v354 = &v293 - v52;
  __chkstk_darwin(v53);
  v353 = &v293 - v54;
  __chkstk_darwin(v55);
  v349 = &v293 - v56;
  __chkstk_darwin(v57);
  v315 = &v293 - v58;
  __chkstk_darwin(v59);
  v61 = &v293 - v60;
  __chkstk_darwin(v62);
  v64 = &v293 - v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v65 - 8);
  v317 = &v293 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v69 = &v293 - v68;
  v70 = sub_3031C8();
  v71 = *(v70 - 8);
  __chkstk_darwin(v70);
  v297 = &v293 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v73);
  v75 = &v293 - v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408E30);
  sub_30B8E8();
  sub_302528();
  v343 = a2;
  sub_30B998();
  v351 = v364;
  sub_EB00(v360, v64, &qword_400450);
  v76 = sub_30B0B8();
  v77 = *(v76 - 8);
  v78 = *(v77 + 48);
  v362 = v77 + 48;
  v361 = v78;
  v79 = v78(v64, 1, v76);
  p_cache = (&OBJC_METACLASS____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView + 16);
  v358 = v76;
  v357 = v77;
  if (v79 != 1)
  {
    sub_30B098();
    p_cache = (&OBJC_METACLASS____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView + 16);
    v81 = *(v77 + 8);
    v81(v64, v76);
    if ((*(v71 + 48))(v69, 1, v70) == 1)
    {
      goto LABEL_4;
    }

    v83 = v69;
    v69 = v75;
    sub_6D85C(v83, v75);
    sub_EB00(v360, v61, &qword_400450);
    if (v361(v61, 1, v76) == 1)
    {
      sub_EB68(v61, &qword_400450);
    }

    else
    {
      v84 = v76;
      v85 = sub_30B088();
      v87 = v86;
      v81(v61, v84);
      if (v87)
      {
        v364 = v85;
        v365 = v87;
        sub_120F0();
        v88 = sub_30C5A8();

        if (v88)
        {
          v89 = v315;
          sub_EB00(v360, v315, &qword_400450);
          v90 = v358;
          v91 = v361(v89, 1, v358);
          v82 = v359;
          if (v91 == 1)
          {
            sub_EB68(v89, &qword_400450);
          }

          else
          {
            v98 = sub_30B0A8();
            v100 = v99;
            v81(v89, v90);
            if (v100)
            {
              v364 = v98;
              v365 = v100;
              v101 = sub_30C5A8();

              if (v101)
              {
                if (v69[64] == 255)
                {
                  goto LABEL_31;
                }

                v102 = sub_303D48();
                v103 = v301;
                v104 = v299;
                v105 = v298;
                v106 = v296;
                v107 = (&OBJC_METACLASS____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView + 16);
                goto LABEL_34;
              }
            }
          }

          sub_170FB4(v69, &type metadata accessor for ArtworkModel);
          goto LABEL_12;
        }
      }
    }

    sub_170FB4(v75, &type metadata accessor for ArtworkModel);
    v82 = v359;
LABEL_12:
    p_cache = &OBJC_METACLASS____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView.cache;
    goto LABEL_13;
  }

  sub_EB68(v64, &qword_400450);
  (*(v71 + 56))(v69, 1, 1, v70);
LABEL_4:
  sub_EB68(v69, &unk_402FF0);
  v82 = v359;
LABEL_13:
  [*(p_cache[43] + v82) setHidden:1];
  while (1)
  {
    v92 = [*&v82[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_verticalSubStack] arrangedSubviews];
    sub_124C4(0, &qword_3FBD90);
    v93 = sub_30C368();

    if (v93 >> 62)
    {
      break;
    }

    v94 = *(&dword_10 + (v93 & 0xFFFFFFFFFFFFFF8));
    if (!v94)
    {
      goto LABEL_43;
    }

LABEL_16:
    v95 = 0;
    while (1)
    {
      if ((v93 & 0xC000000000000001) != 0)
      {
        v96 = sub_30D578();
      }

      else
      {
        if (v95 >= *(&dword_10 + (v93 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_30;
        }

        v96 = *(v93 + 8 * v95 + 32);
      }

      v69 = v96;
      v97 = v95 + 1;
      if (__OFADD__(v95, 1))
      {
        break;
      }

      [v96 removeFromSuperview];

      ++v95;
      if (v97 == v94)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v103 = v301;
    v104 = v299;
    v105 = v298;
    v106 = v296;
    v107 = &OBJC_METACLASS____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView.cache;
    if (qword_3FAFE8 != -1)
    {
      swift_once();
    }

    v102 = qword_42B028;
LABEL_34:
    v108 = *(v107[43] + v82);
    [v108 setBackgroundColor:v102];
    sub_303198();
    v109 = &v108[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageSize];
    *v109 = v110;
    *(v109 + 1) = v111;
    [v108 setNeedsLayout];
    v112 = v295;
    v113 = v294;
    (*(v295 + 104))(v294, enum case for ArtworkAspectRule.aspectFill(_:), v106);
    [v108 effectiveUserInterfaceLayoutDirection];
    [v108 setContentMode:6];
    v114 = OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_aspectRule;
    swift_beginAccess();
    (*(v112 + 40))(&v108[v114], v113, v106);
    swift_endAccess();
    v115 = v69[129];
    v315 = v102;
    if (v115 == 4)
    {
LABEL_35:
      v116 = 0;
      goto LABEL_41;
    }

    v117 = sub_3031E8();
    v119 = v118;
    if (v117 == sub_3031E8() && v119 == v120)
    {
    }

    else
    {
      v121 = sub_30D728();

      if ((v121 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v116 = 1;
LABEL_41:
    v122 = v108[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style];
    v108[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style] = v116;
    LOBYTE(v364) = v122;
    sub_2DE78(&v364);
    sub_304198();
    sub_30C778();
    sub_303A08();
    (*(v104 + 8))(v105, v300);
    v301 = &type metadata accessor for ArtworkModel;
    sub_170EA0(v69, v297, &type metadata accessor for ArtworkModel);
    v123 = sub_303DF8();
    (*(*(v123 - 8) + 56))(v103, 1, 1, v123);
    sub_12670(&v364, &v363);
    v124 = [objc_opt_self() mainScreen];
    [v124 scale];

    v125 = v308;
    sub_303348();
    __swift_project_boxed_opaque_existential_1Tm(v370, v370[3]);
    v363 = sub_302128();
    sub_124C4(0, &qword_3FBF20);
    v300 = v69;
    v126 = sub_30C8F8();
    v368 = v126;
    v127 = sub_30C8E8();
    v128 = v302;
    (*(*(v127 - 8) + 56))(v302, 1, 1, v127);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401518);
    sub_EC8C(&qword_401520, &qword_401518);
    sub_CF4A8();
    v129 = v303;
    sub_304F28();
    sub_EB68(v128, &unk_408F30);

    v130 = sub_EC8C(&qword_405F60, &qword_405F40);
    v131 = v306;
    v69 = v305;
    sub_304E48();
    (*(v304 + 8))(v129, v69);
    sub_12670(&v364, &v363);
    v368 = v69;
    v369 = v130;
    swift_getOpaqueTypeConformance2();
    v132 = v309;
    sub_3032E8();
    v133 = v312;
    sub_304E68();
    sub_EB68(&v363, &qword_405F68);
    (*(v307 + 8))(v131, v132);
    *(swift_allocObject() + 16) = v108;
    sub_EC8C(&qword_405F70, &qword_405F50);
    v134 = v108;
    v135 = v314;
    v136 = sub_304EE8();

    (*(v313 + 8))(v133, v135);
    v82 = v359;
    *&v359[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_artworkCancellable] = v136;

    [v134 setHidden:0];

    (*(v310 + 8))(v125, v311);
    __swift_destroy_boxed_opaque_existential_1(&v364);
    sub_170FB4(v300, v301);
  }

  v94 = sub_30D668();
  if (v94)
  {
    goto LABEL_16;
  }

LABEL_43:

  v137 = v360;
  v138 = v349;
  sub_EB00(v360, v349, &qword_400450);
  v139 = v358;
  if (v361(v138, 1, v358) == 1)
  {
    sub_EB68(v138, &qword_400450);
    goto LABEL_47;
  }

  v140 = sub_30B078();
  (*(v357 + 8))(v138, v139);
  if (v140)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v141 = swift_allocObject();
    *(v141 + 16) = xmmword_317F20;
    v142 = *&v82[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_subtitleLabel];
    v143 = *&v82[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_titleLabel];
    *(v141 + 32) = v142;
    *(v141 + 40) = v143;
    v144 = v142;
    v349 = v143;
  }

  else
  {
LABEL_47:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v141 = swift_allocObject();
    *(v141 + 16) = xmmword_317F20;
    v142 = *&v82[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_titleLabel];
    v143 = *&v82[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_subtitleLabel];
    *(v141 + 32) = v142;
    *(v141 + 40) = v143;
    v144 = v143;
    v349 = v142;
  }

  v145 = v142;
  v146 = v143;
  v147._rawValue = v141;
  sub_30C688(v147);

  v148 = sub_16FEE0();
  [v148 setActive:0];

  [*&v82[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView____lazy_storage___topConstraint] setActive:1];
  v149 = sub_16FFAC();
  [v149 setActive:0];

  [*&v82[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView____lazy_storage___bottomConstraint] setActive:1];
  v150 = v353;
  sub_EB00(v137, v353, &qword_400450);
  if (v361(v150, 1, v139) == 1)
  {
    sub_EB68(v150, &qword_400450);
    v151 = v357;
    v152 = v354;
    goto LABEL_51;
  }

  v153 = sub_30B088();
  v155 = v154;
  v151 = v357;
  (*(v357 + 8))(v150, v139);
  v353 = v155;
  v152 = v354;
  if (!v155)
  {
LABEL_51:

    v153 = 0;
    v353 = 0xE000000000000000;
  }

  v354 = v153;
  sub_EB00(v137, v152, &qword_400450);
  if (v361(v152, 1, v139) == 1)
  {
    sub_EB68(v152, &qword_400450);
    v156 = v350;
    (*(v355 + 56))(v350, 1, 1, v356);
    v157 = v352;
    goto LABEL_55;
  }

  v156 = v350;
  sub_30B068();
  v158 = v152;
  v159 = *(v151 + 8);
  v159(v158, v139);
  v160 = (*(v355 + 48))(v156, 1, v356);
  v157 = v352;
  if (v160 != 1)
  {
    (*(v355 + 32))(v334, v156, v356);
    v178 = v359;
    v179 = *&v359[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_titleButton];
    sub_30D2D8();
    sub_124C4(0, &qword_408080);
    v180 = *&v178[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_horizontalSubStack];
    *(swift_allocObject() + 16) = v180;
    v181 = v180;
    v182 = sub_30D0C8();
    [v179 addAction:v182 forControlEvents:1];

    *(swift_allocObject() + 16) = v181;
    v183 = v181;
    v184 = sub_30D0C8();
    [v179 addAction:v184 forControlEvents:488];

    v352 = v179;
    [v179 setHidden:0];
    if (qword_3FABD8 != -1)
    {
      swift_once();
    }

    v185 = [objc_opt_self() configurationWithFont:qword_406128 scale:1];
    v186 = sub_30C098();
    v187 = [objc_opt_self() systemImageNamed:v186 withConfiguration:v185];

    v188 = v187;
    v346 = v185;

    v189 = v329;
    v190 = v354;
    v191 = v327;
    if (!v188)
    {
      __break(1u);
      goto LABEL_116;
    }

    v192 = objc_opt_self();
    v345 = v188;
    v193 = [v192 textAttachmentWithImage:v188];
    v194 = [objc_opt_self() attributedStringWithAttachment:v193];

    sub_301AA8();
    v364 = [objc_opt_self() tintColor];
    sub_1363FC();
    sub_301A98();
    v195 = sub_16FC14(v190, v353, v189, 1);
    [v349 setAttributedText:v195];

    v173 = [objc_allocWithZone(type metadata accessor for HeaderButton()) init];
    v196 = &v173[OBJC_IVAR____TtC23ShelfKitCollectionViews12HeaderButton_touchOutsideMargin];
    __asm { FMOV            V0.2D, #10.0 }

    *v196 = _Q0;
    *(v196 + 1) = _Q0;
    sub_EB00(v137, v191, &qword_400450);
    v198 = v358;
    if (v361(v191, 1, v358) == 1)
    {
      sub_EB68(v191, &qword_400450);
      v199 = sub_30B048();
      v200 = v328;
      (*(*(v199 - 8) + 56))(v328, 1, 1, v199);
      v163 = v359;
      v174 = v348;
    }

    else
    {
      v200 = v328;
      sub_30B058();
      v159(v191, v198);
      v203 = sub_30B048();
      v204 = *(v203 - 8);
      v205 = (*(v204 + 48))(v200, 1, v203);
      v163 = v359;
      v174 = v348;
      if (v205 != 1)
      {
        v206 = v320;
        sub_EB00(v200, v320, &qword_406150);
        if ((*(v204 + 88))(v206, v203) == enum case for Header.PrimaryAction.seeAll(_:))
        {
          v350 = v144;
          (*(v204 + 96))(v206, v203);
          v207 = *v206;
          sub_30B028();
          v208 = v323;
          sub_302348();

          v209 = v324;
          v210 = v322;
          v211 = v325;
          (*(v324 + 16))(v322, v208, v325);
          v212 = (*(v209 + 80) + 16) & ~*(v209 + 80);
          v213 = swift_allocObject();
          (*(v209 + 32))(v213 + v212, v210, v211);
          v349 = sub_30B948();

          (*(v209 + 8))(v208, v211);
          sub_30B018();
          if (v214)
          {
            v215 = sub_30C098();
          }

          else
          {
            v215 = 0;
          }

          v163 = v359;
          v144 = v350;
          [v173 setTitle:v215 forState:0];

          v366 = sub_30B038();
          v367 = sub_170F6C(&qword_3FBDA0, &type metadata accessor for Action);
          v364 = v207;

          sub_30D388();

          __swift_destroy_boxed_opaque_existential_1(&v364);
          v189 = v329;
          v200 = v328;
        }

        else
        {
          (*(v204 + 8))(v206, v203);
        }
      }
    }

    sub_EB68(v200, &qword_406150);
    v262 = OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_forceHideButton;
    swift_beginAccess();
    v263 = 1;
    if ((v163[v262] & 1) == 0)
    {
      v263 = sub_30D0E8();
    }

    [v173 setHidden:v263 & 1];

    (*(v330 + 8))(v189, v331);
    (*(v355 + 8))(v334, v356);
    v163[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_accessibilityHasContextAction] = 1;
LABEL_95:
    v264 = OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_button;
    v265 = *&v163[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_button];
    v266 = v173;
    if (v265)
    {
      [v265 removeFromSuperview];
      v267 = *&v163[v264];
    }

    else
    {
      v267 = 0;
    }

    v268 = v347;
    *&v163[v264] = v173;
    v269 = v266;

    sub_1700D0();
    v270 = v352;
    if ([v352 isHidden])
    {
      [v270 setHoverStyle:0];
      v271 = v360;
    }

    else
    {
      v272 = v144;
      sub_30C6D8();
      sub_124C4(0, &qword_4061A0);
      sub_30C6D8();
      sub_30C6B8();
      v273 = v338;
      sub_304C38();
      v274 = v337;
      sub_304C48();
      v275 = v339;
      v276 = v273;
      v277 = v340;
      (*(v339 + 8))(v276, v340);
      (*(v275 + 56))(v274, 0, 1, v277);
      v278 = sub_30C718();
      v271 = v360;
      v279 = v335;
      sub_EB00(v360, v335, &qword_400450);
      v280 = v358;
      if (v361(v279, 1, v358) == 1)
      {
        sub_EB68(v279, &qword_400450);
        v281 = v336;
        (*(v355 + 56))(v336, 1, 1, v356);
        v282 = 0;
      }

      else
      {
        v281 = v336;
        sub_30B068();
        (*(v357 + 8))(v279, v280);
        if ((*(v355 + 48))(v281, 1, v356) == 1)
        {
          v282 = 0;
        }

        else
        {
          v282 = v278;
        }
      }

      v144 = v272;
      sub_EB68(v281, &qword_400D50);
      [v352 setHoverStyle:v282];
    }

    v283 = *&v163[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_horizontalParentStack];
    v284 = sub_30C098();

    [v283 setAccessibilityLabel:v284];

    sub_EB00(v271, v268, &qword_400450);
    v285 = v358;
    if (v361(v268, 1, v358) == 1)
    {
      sub_EB68(v268, &qword_400450);
    }

    else
    {
      sub_30B0A8();
      v287 = v286;
      (*(v357 + 8))(v268, v285);
      if (v287)
      {
        v288 = sub_30C098();

LABEL_111:
        [v144 setText:v288];

        sub_EB00(v271, v174, &qword_400450);
        if (v361(v174, 1, v285) == 1)
        {
          sub_EB68(v174, &qword_400450);
          v289 = 0;
          v290 = 0;
        }

        else
        {
          v289 = sub_30B0A8();
          v290 = v291;
          (*(v357 + 8))(v174, v285);
        }

        v368 = v289;
        v369 = v290;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40AB30);
        sub_120F0();
        v292 = sub_30D398();

        [v144 setHidden:v292 & 1];

        __swift_destroy_boxed_opaque_existential_1(v370);
        return;
      }
    }

    v288 = 0;
    goto LABEL_111;
  }

LABEL_55:
  sub_EB68(v156, &qword_400D50);
  v161 = v344;
  sub_EB00(v137, v344, &qword_400450);
  if (v361(v161, 1, v139) == 1)
  {
    sub_EB68(v161, &qword_400450);
    v162 = sub_30B048();
    (*(*(v162 - 8) + 56))(v157, 1, 1, v162);
  }

  else
  {
    sub_30B058();
    v157 = v352;
    (*(v151 + 8))(v161, v139);
  }

  v163 = v359;
  v164 = v346;
  v165 = v353;
  v166 = OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_forceHideButton;
  swift_beginAccess();
  v167 = v163[v166];
  v168 = v345[12];
  sub_170CC8(v157, v164);
  v164[v168] = v167;
  v169 = sub_30B048();
  v170 = *(v169 - 8);
  if ((*(v170 + 48))(v164, 1, v169) == 1)
  {
LABEL_59:
    v171 = *&v163[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_titleButton];
    [v171 setTitle:0 forState:0];
    [v171 setImage:0 forState:0];
    sub_30D378(0x2000uLL);
    v352 = v171;
    [v171 setHidden:1];
    v172 = sub_30C098();
    [v349 setText:v172];

    v163[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_accessibilityHasContextAction] = 0;
    sub_EB68(v164, &qword_406148);
    v173 = 0;
    goto LABEL_60;
  }

  v350 = v144;
  v175 = v341;
  sub_EB00(v164, v341, &qword_406150);
  v176 = (*(v170 + 88))(v175, v169);
  if (v176 == enum case for Header.PrimaryAction.actionButton(_:))
  {
    (*(v170 + 96))(v175, v169);
    (*(v332 + 32))(v342, v175, v333);
    v177 = *&v163[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_titleButton];
    [v177 setTitle:0 forState:0];
    [v177 setImage:0 forState:0];
    sub_30D378(0x2000uLL);
    v352 = v177;
    [v177 setHidden:1];
    v364 = v354;
    v365 = v165;
    sub_120F0();
    sub_30C5A8();
    v216 = sub_30C098();
    v144 = v350;
    [v349 setText:v216];

    v173 = [objc_allocWithZone(type metadata accessor for HeaderButton()) init];
    v217 = &v173[OBJC_IVAR____TtC23ShelfKitCollectionViews12HeaderButton_touchOutsideMargin];
    __asm { FMOV            V0.2D, #10.0 }

    *v217 = _Q0;
    *(v217 + 1) = _Q0;
    sub_307BC8();
    v223 = sub_30C098();

    [v173 setTitle:v223 forState:0];

    sub_307BD8();
    sub_30D388();
    __swift_destroy_boxed_opaque_existential_1(&v364);
    v163 = v359;
    if (v359[v166])
    {
      v224 = 1;
    }

    else
    {
      v224 = sub_30D0E8();
    }

    v174 = v348;
    v233 = v333;
    [v173 setHidden:v224 & 1];
    (*(v332 + 8))(v342, v233);
    v163[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_accessibilityHasContextAction] = 0;
    sub_EB68(v164, &qword_406150);
    goto LABEL_95;
  }

  if (v176 != enum case for Header.PrimaryAction.seeAll(_:))
  {
    if (v176 != enum case for Header.PrimaryAction.menu(_:))
    {
      (*(v170 + 8))(v341, v169);
      goto LABEL_88;
    }

    v225 = v341;
    (*(v170 + 96))();
    (*(v355 + 32))(v326, v225, v356);
    v226 = sub_30C098();
    [v349 setText:v226];

    v352 = *&v163[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_titleButton];
    [v352 setHidden:0];
    v173 = [objc_allocWithZone(type metadata accessor for HeaderButton()) init];
    v227 = &v173[OBJC_IVAR____TtC23ShelfKitCollectionViews12HeaderButton_touchOutsideMargin];
    __asm { FMOV            V0.2D, #10.0 }

    *v227 = _Q0;
    *(v227 + 1) = _Q0;
    sub_307658();
    v229 = sub_30C098();

    [v173 setTitle:v229 forState:0];

    sub_307B78();
    v230 = v317;
    sub_307638();
    v231 = sub_307B68();
    sub_EB68(v230, &unk_402FF0);
    [v173 setImage:v231 forState:0];

    sub_30D2D8();
    v232 = 1;
    v144 = v350;
    if ((v163[v166] & 1) == 0)
    {
      v232 = sub_30D0E8();
    }

    [v173 setHidden:v232 & 1];
    (*(v355 + 8))(v326, v356);
    v163[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_accessibilityHasContextAction] = 1;
    sub_EB68(v164, &qword_406150);
LABEL_60:
    v174 = v348;
    goto LABEL_95;
  }

  v201 = v341;
  (*(v170 + 96))(v341, v169);
  v202 = *v201;
  if (v167)
  {

LABEL_88:
    v144 = v350;
    goto LABEL_59;
  }

  sub_3093A8();

  sub_30B9B8();
  v234 = sub_302268();
  v235 = v318;
  (*(*(v234 - 8) + 56))(v318, 1, 1, v234);
  v366 = ObjectType;
  v364 = v163;
  v346 = v163;
  sub_309388();

  sub_EB68(v235, &unk_4090C0);
  sub_EB68(&v364, &unk_3FBB70);
  sub_30B028();
  v236 = v323;
  sub_302348();

  v237 = v324;
  v238 = v322;
  v239 = v325;
  (*(v324 + 16))(v322, v236, v325);
  v240 = (*(v237 + 80) + 16) & ~*(v237 + 80);
  v241 = swift_allocObject();
  (*(v237 + 32))(v241 + v240, v238, v239);
  v242 = sub_30B948();

  v243 = v236;
  v244 = v346;
  (*(v237 + 8))(v243, v239);
  v245 = *&v244[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_titleButton];
  v366 = sub_30B038();
  v367 = sub_170F6C(&qword_3FBDA0, &type metadata accessor for Action);
  v364 = v202;
  v345 = v202;

  v344 = v242;
  sub_30D388();
  __swift_destroy_boxed_opaque_existential_1(&v364);
  sub_124C4(0, &qword_408080);
  v246 = *&v244[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_horizontalSubStack];
  *(swift_allocObject() + 16) = v246;
  v247 = v246;
  v248 = sub_30D0C8();
  [v245 addAction:v248 forControlEvents:1];

  *(swift_allocObject() + 16) = v247;
  v249 = v247;
  v250 = sub_30D0C8();
  [v245 addAction:v250 forControlEvents:488];

  v352 = v245;
  [v245 setHidden:0];
  if (qword_3FABE0 != -1)
  {
    swift_once();
  }

  v251 = [objc_opt_self() configurationWithFont:qword_406130 scale:1];
  v252 = [v244 traitCollection];
  [v252 layoutDirection];

  v253 = v251;
  v254 = sub_30C098();
  v255 = [objc_opt_self() systemImageNamed:v254 withConfiguration:v253];

  v256 = v244;
  v144 = v350;
  v257 = v353;
  if (v255)
  {

    v258 = [objc_opt_self() textAttachmentWithImage:v255];
    v259 = [objc_opt_self() attributedStringWithAttachment:v258];

    v260 = v316;
    sub_301AA8();
    v364 = [objc_opt_self() secondaryLabelColor];
    sub_1363FC();
    sub_301A98();
    v261 = sub_16FC14(v354, v257, v260, 1);
    [v349 setAttributedText:v261];

    (*(v330 + 8))(v260, v331);
    v256[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_accessibilityHasContextAction] = 0;
    sub_EB68(v164, &qword_406150);
    v173 = 0;
    v163 = v359;
    goto LABEL_60;
  }

LABEL_116:
  __break(1u);
}

uint64_t ModernTitleHeaderView.style.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_301DF8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for ModernTitleHeaderView.Style(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_style;
  swift_beginAccess();
  sub_170EA0(v2 + v11, v10, type metadata accessor for ModernTitleHeaderView.Style);
  swift_beginAccess();
  sub_170F08(a1, v2 + v11);
  swift_endAccess();
  (*(v5 + 16))(v7, v2 + v11, v4);
  sub_170F6C(&qword_4061C0, &type metadata accessor for UUID);
  LOBYTE(v11) = sub_30C018();
  (*(v5 + 8))(v7, v4);
  if ((v11 & 1) == 0)
  {
    sub_16F540();
  }

  sub_170FB4(a1, type metadata accessor for ModernTitleHeaderView.Style);
  return sub_170FB4(v10, type metadata accessor for ModernTitleHeaderView.Style);
}

uint64_t ModernTitleHeaderView.Style.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_301DF8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double sub_16D828()
{
  v0 = type metadata accessor for ModernTitleHeaderView.Style(0);
  __swift_allocate_value_buffer(v0, qword_429438);
  v1 = __swift_project_value_buffer(v0, qword_429438);
  *&result = sub_16D874(v1).n128_u64[0];
  return result;
}

__n128 sub_16D874@<Q0>(uint64_t a1@<X8>)
{
  if (qword_3FACC8 != -1)
  {
    swift_once();
  }

  v47[0] = xmmword_429A70;
  v47[1] = unk_429A80;
  v47[2] = xmmword_429A90;
  v47[3] = unk_429AA0;
  *v48 = xmmword_429AB0;
  *&v48[10] = *(&xmmword_429AB0 + 10);
  v41 = unk_429AA0;
  v42 = xmmword_429A70;
  v36 = unk_429A80;
  v40 = xmmword_429A90;
  v38 = *&v48[8];
  v39 = xmmword_429AB0;
  v37 = *(&xmmword_429AB0 + 10) >> 48;
  v35 = unk_429AC8;
  v46 = 0;
  v49 = xmmword_429A70;
  v50 = unk_429A80;
  *(v53 + 10) = *(&xmmword_429AB0 + 10);
  v52 = unk_429AA0;
  v53[0] = xmmword_429AB0;
  v51 = xmmword_429A90;
  sub_EB00(v47, v67, &qword_3FFD68);
  sub_EB00(&v49, v67, &qword_3FFD68);
  if (qword_3FACD8 != -1)
  {
    swift_once();
  }

  v56 = xmmword_429B50;
  v57 = unk_429B60;
  v58[0] = xmmword_429B70;
  *(v58 + 10) = *(&xmmword_429B70 + 10);
  v54 = xmmword_429B30;
  v55 = unk_429B40;
  v62 = unk_429B60;
  v63[0] = xmmword_429B70;
  v60 = unk_429B40;
  v61 = xmmword_429B50;
  *(v63 + 10) = *(&xmmword_429B70 + 10);
  v59 = xmmword_429B30;
  v2 = objc_opt_self();
  sub_EB00(&v54, v67, &qword_3FFD68);
  sub_EB00(&v59, v67, &qword_3FFD68);
  v34 = [v2 labelColor];
  v33 = [objc_opt_self() configurationWithPointSize:4 weight:3 scale:15.0];
  if (qword_3FABC0 != -1)
  {
    swift_once();
  }

  v32 = qword_406110;
  v64[0] = xmmword_429B30;
  v64[1] = unk_429B40;
  v64[2] = xmmword_429B50;
  v64[3] = unk_429B60;
  *v65 = xmmword_429B70;
  *&v65[10] = *(&xmmword_429B70 + 10);
  v28 = unk_429B40;
  v29 = xmmword_429B30;
  v26 = unk_429B60;
  v27 = xmmword_429B50;
  v3 = xmmword_429B70;
  v22 = *(&xmmword_429B70 + 10) >> 48;
  v23 = *&v65[8];
  v4 = unk_429B88;
  v45 = 0;
  v67[0] = xmmword_429B30;
  v67[1] = unk_429B40;
  *&v68[10] = *(&xmmword_429B70 + 10);
  v67[3] = unk_429B60;
  *v68 = xmmword_429B70;
  v67[2] = xmmword_429B50;
  v30 = unk_429B60;
  v31 = unk_429B40;
  v24 = xmmword_429B50;
  v25 = xmmword_429B30;
  v5 = xmmword_429B70;
  v6 = unk_429B88;
  v44 = 0;
  sub_EB00(v64, v43, &qword_3FFD68);
  sub_EB00(v67, v43, &qword_3FFD68);
  if (qword_3FABE8 != -1)
  {
    swift_once();
  }

  v7 = qword_406138;
  sub_301DE8();
  v8 = type metadata accessor for ModernTitleHeaderView.Style(0);
  v9 = a1 + v8[5];
  *v9 = xmmword_328890;
  *(v9 + 16) = 0;
  *(v9 + 40) = v36;
  *(v9 + 24) = v42;
  *(v9 + 72) = v41;
  *(v9 + 56) = v40;
  *(v9 + 88) = v39;
  *(v9 + 96) = v38;
  *(v9 + 104) = v37;
  *(v9 + 112) = v35 & 0x1FF | 0x8000;
  v10 = (a1 + v8[6]);
  v11 = v52;
  v10[2] = v51;
  v10[3] = v11;
  v10[4] = v53[0];
  *(v10 + 74) = *(v53 + 10);
  v12 = v50;
  *v10 = v49;
  v10[1] = v12;
  v13 = (a1 + v8[7]);
  v14 = v55;
  *v13 = v54;
  v13[1] = v14;
  *(v13 + 74) = *(v58 + 10);
  v15 = v58[0];
  v13[3] = v57;
  v13[4] = v15;
  v13[2] = v56;
  v16 = (a1 + v8[8]);
  v17 = v62;
  v16[2] = v61;
  v16[3] = v17;
  v16[4] = v63[0];
  *(v16 + 74) = *(v63 + 10);
  v18 = v60;
  *v16 = v59;
  v16[1] = v18;
  *(a1 + v8[9]) = v34;
  *(a1 + v8[10]) = v7;
  *(a1 + v8[11]) = v33;
  v19 = a1 + v8[12];
  *v19 = v32;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  *(v19 + 17) = *v66;
  *(v19 + 20) = *&v66[3];
  *(v19 + 40) = v28;
  *(v19 + 24) = v29;
  *(v19 + 72) = v26;
  *(v19 + 56) = v27;
  *(v19 + 88) = v3;
  *(v19 + 96) = v23;
  *(v19 + 104) = v22;
  *(v19 + 112) = v4 & 0x1FF | 0x8000;
  v20 = a1 + v8[13];
  *v20 = xmmword_3288A0;
  *(v20 + 16) = 0;
  *(v20 + 20) = *&v43[3];
  *(v20 + 17) = *v43;
  *(v20 + 24) = v25;
  *(v20 + 40) = v31;
  *(v20 + 56) = v24;
  result = v30;
  *(v20 + 72) = v30;
  *(v20 + 88) = v5;
  *(v20 + 104) = v22;
  *(v20 + 112) = v6 & 0x1FF | 0x8000;
  return result;
}

double sub_16DDB4(__n128 a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for ModernTitleHeaderView.Style(0);
  __swift_allocate_value_buffer(v4, a3);
  v5 = __swift_project_value_buffer(v4, a3);
  *&result = sub_16DE30(&qword_3FABC0, &qword_406110, sub_16F2B8, v5, a1).n128_u64[0];
  return result;
}

__n128 sub_16DE30@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  *&v53 = a3;
  v66 = a5;
  v56 = a2;
  *&v55 = a1;
  v6 = sub_304738();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_304838();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_3FACA0 != -1)
  {
    swift_once();
  }

  v71[0] = xmmword_429890;
  v71[1] = unk_4298A0;
  v71[2] = xmmword_4298B0;
  v71[3] = unk_4298C0;
  v72[0] = xmmword_4298D0;
  *(v72 + 10) = *(&xmmword_4298D0 + 10);
  v64 = unk_4298C0;
  v65 = xmmword_429890;
  v59 = unk_4298A0;
  v63 = xmmword_4298B0;
  v61 = *(&v72[0] + 1);
  v62 = xmmword_4298D0;
  v60 = *(&xmmword_4298D0 + 10) >> 48;
  v57 = unk_4298E8;
  v70 = 0;
  sub_EB00(v71, v88, &qword_3FFD68);
  sub_3047E8();
  sub_304768();
  (*(v11 + 8))(v13, v10);
  v58 = sub_304708();
  (*(v7 + 8))(v9, v6);
  v74 = 0;
  if (qword_3FACE8 != -1)
  {
    swift_once();
  }

  v77 = xmmword_429C10;
  v78 = unk_429C20;
  v79[0] = xmmword_429C30;
  *(v79 + 10) = *(&xmmword_429C30 + 10);
  v75 = xmmword_429BF0;
  v76 = unk_429C00;
  v83 = unk_429C20;
  v84[0] = xmmword_429C30;
  v82 = xmmword_429C10;
  *(v84 + 10) = *(&xmmword_429C30 + 10);
  v80 = xmmword_429BF0;
  v81 = unk_429C00;
  sub_124C4(0, &qword_408100);
  sub_EB00(&v75, v88, &qword_3FFD68);
  sub_EB00(&v80, v88, &qword_3FFD68);
  v14 = sub_30CDB8();
  v54 = [objc_opt_self() configurationWithFont:v14];

  if (*v55 != -1)
  {
    swift_once();
  }

  v56 = *v56;
  v85[0] = xmmword_429BF0;
  v85[1] = unk_429C00;
  v85[2] = xmmword_429C10;
  v85[3] = unk_429C20;
  v86[0] = xmmword_429C30;
  *(v86 + 10) = *(&xmmword_429C30 + 10);
  v46 = unk_429C00;
  v47 = xmmword_429BF0;
  v44 = unk_429C20;
  v45 = xmmword_429C10;
  v42 = *(&v86[0] + 1);
  v43 = xmmword_429C30;
  v41 = *(&xmmword_429C30 + 10) >> 48;
  v15 = unk_429C48;
  v69 = 0;
  v88[0] = xmmword_429BF0;
  v88[1] = unk_429C00;
  *&v89[10] = *(&xmmword_429C30 + 10);
  v88[3] = unk_429C20;
  *v89 = xmmword_429C30;
  v88[2] = xmmword_429C10;
  v55 = xmmword_429BF0;
  v51 = unk_429C20;
  v52 = xmmword_429C10;
  v53 = unk_429C00;
  v49 = *(&xmmword_429C30 + 1);
  v50 = xmmword_429C30;
  v48 = v41;
  v16 = unk_429C48;
  v68 = 0;
  sub_EB00(v85, v67, &qword_3FFD68);
  sub_EB00(v88, v67, &qword_3FFD68);
  if (qword_3FABD0 != -1)
  {
    swift_once();
  }

  v17 = qword_3FABE8;
  v18 = qword_406120;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = v57 & 0x1FF | 0x8000;
  v20 = qword_406138;
  sub_301DE8();
  v21 = type metadata accessor for ModernTitleHeaderView.Style(0);
  v22 = a4 + v21[5];
  *v22 = v66;
  *(v22 + 16) = 0;
  *(v22 + 17) = *v73;
  *(v22 + 20) = *&v73[3];
  *(v22 + 40) = v59;
  v23 = v64;
  *(v22 + 24) = v65;
  *(v22 + 72) = v23;
  *(v22 + 56) = v63;
  v24 = v61;
  *(v22 + 88) = v62;
  *(v22 + 96) = v24;
  *(v22 + 104) = v60;
  *(v22 + 112) = v19;
  v25 = a4 + v21[6];
  *v25 = v58;
  *(v25 + 8) = 0u;
  *(v25 + 24) = 0u;
  *(v25 + 40) = 3;
  v26 = v67[1];
  *(v25 + 41) = v67[0];
  *(v25 + 57) = v26;
  *(v25 + 73) = v67[2];
  *(v25 + 89) = v74;
  v27 = (a4 + v21[7]);
  v28 = v78;
  v27[2] = v77;
  v27[3] = v28;
  v27[4] = v79[0];
  *(v27 + 74) = *(v79 + 10);
  v29 = v76;
  *v27 = v75;
  v27[1] = v29;
  v30 = (a4 + v21[8]);
  v31 = v81;
  *v30 = v80;
  v30[1] = v31;
  *(v30 + 74) = *(v84 + 10);
  v32 = v84[0];
  v30[3] = v83;
  v30[4] = v32;
  v30[2] = v82;
  *(a4 + v21[9]) = v18;
  *(a4 + v21[10]) = v20;
  *(a4 + v21[11]) = v54;
  v33 = a4 + v21[12];
  *v33 = v56;
  *(v33 + 8) = 0;
  *(v33 + 16) = 0;
  *(v33 + 20) = *&v87[3];
  *(v33 + 17) = *v87;
  v34 = v47;
  *(v33 + 40) = v46;
  *(v33 + 24) = v34;
  v35 = v45;
  *(v33 + 72) = v44;
  *(v33 + 56) = v35;
  v36 = v42;
  *(v33 + 88) = v43;
  *(v33 + 96) = v36;
  *(v33 + 104) = v41;
  *(v33 + 112) = v15 & 0x1FF | 0x8000;
  v37 = a4 + v21[13];
  *v37 = xmmword_3288C0;
  *(v37 + 16) = 0;
  *(v37 + 20) = *(v90 + 3);
  *(v37 + 17) = v90[0];
  *(v37 + 40) = v53;
  *(v37 + 24) = v55;
  result = v52;
  *(v37 + 72) = v51;
  *(v37 + 56) = result;
  v39 = v49;
  *(v37 + 88) = v50;
  *(v37 + 96) = v39;
  *(v37 + 104) = v48;
  *(v37 + 112) = v16 & 0x1FF | 0x8000;
  return result;
}

double sub_16E514(__n128 a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for ModernTitleHeaderView.Style(0);
  __swift_allocate_value_buffer(v4, a3);
  v5 = __swift_project_value_buffer(v4, a3);
  *&result = sub_16DE30(&unk_3FABC8, &qword_406118, sub_16F2FC, v5, a1).n128_u64[0];
  return result;
}

double sub_16E5D0(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = type metadata accessor for ModernTitleHeaderView.Style(0);
  __swift_allocate_value_buffer(v9, a2);
  v10 = __swift_project_value_buffer(v9, a2);
  *&result = sub_16E640(a3, a4, a5, v10).n128_u64[0];
  return result;
}

__n128 sub_16E640@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v54 = a3;
  v57 = a2;
  *&v56 = a1;
  v5 = sub_304738();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_304838();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_307508();
  v14 = v13;
  if (qword_3FACA0 != -1)
  {
    swift_once();
  }

  v71[0] = xmmword_429890;
  v71[1] = unk_4298A0;
  v71[2] = xmmword_4298B0;
  v71[3] = unk_4298C0;
  v72[0] = xmmword_4298D0;
  *(v72 + 10) = *(&xmmword_4298D0 + 10);
  v65 = unk_4298C0;
  v66 = xmmword_429890;
  v60 = unk_4298A0;
  v64 = xmmword_4298B0;
  v62 = *(&v72[0] + 1);
  v63 = xmmword_4298D0;
  v61 = *(&xmmword_4298D0 + 10) >> 48;
  v58 = unk_4298E8;
  v70 = 0;
  sub_EB00(v71, v88, &qword_3FFD68);
  sub_3047E8();
  sub_304768();
  (*(v10 + 8))(v12, v9);
  v59 = sub_304708();
  (*(v6 + 8))(v8, v5);
  v74 = 0;
  if (qword_3FACE8 != -1)
  {
    swift_once();
  }

  v77 = xmmword_429C10;
  v78 = unk_429C20;
  v79[0] = xmmword_429C30;
  *(v79 + 10) = *(&xmmword_429C30 + 10);
  v75 = xmmword_429BF0;
  v76 = unk_429C00;
  v83 = unk_429C20;
  v84[0] = xmmword_429C30;
  v82 = xmmword_429C10;
  *(v84 + 10) = *(&xmmword_429C30 + 10);
  v80 = xmmword_429BF0;
  v81 = unk_429C00;
  sub_124C4(0, &qword_408100);
  sub_EB00(&v75, v88, &qword_3FFD68);
  sub_EB00(&v80, v88, &qword_3FFD68);
  v15 = sub_30CDB8();
  v55 = [objc_opt_self() configurationWithFont:v15];

  if (*v56 != -1)
  {
    swift_once();
  }

  v57 = *v57;
  v85[0] = xmmword_429BF0;
  v85[1] = unk_429C00;
  v85[2] = xmmword_429C10;
  v85[3] = unk_429C20;
  v86[0] = xmmword_429C30;
  *(v86 + 10) = *(&xmmword_429C30 + 10);
  v47 = unk_429C00;
  v48 = xmmword_429BF0;
  v45 = unk_429C20;
  v46 = xmmword_429C10;
  v43 = *(&v86[0] + 1);
  v44 = xmmword_429C30;
  v42 = *(&xmmword_429C30 + 10) >> 48;
  v16 = unk_429C48;
  v69 = 0;
  v88[0] = xmmword_429BF0;
  v88[1] = unk_429C00;
  *&v89[10] = *(&xmmword_429C30 + 10);
  v88[3] = unk_429C20;
  *v89 = xmmword_429C30;
  v88[2] = xmmword_429C10;
  v56 = xmmword_429BF0;
  v52 = unk_429C20;
  v53 = xmmword_429C10;
  v54 = unk_429C00;
  v50 = *(&xmmword_429C30 + 1);
  v51 = xmmword_429C30;
  v49 = v42;
  v17 = unk_429C48;
  v68 = 0;
  sub_EB00(v85, v67, &qword_3FFD68);
  sub_EB00(v88, v67, &qword_3FFD68);
  if (qword_3FABD0 != -1)
  {
    swift_once();
  }

  v18 = qword_3FABE8;
  v19 = qword_406120;
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = v58 & 0x1FF | 0x8000;
  v21 = qword_406138;
  sub_301DE8();
  v22 = type metadata accessor for ModernTitleHeaderView.Style(0);
  v23 = a4 + v22[5];
  *v23 = v14 + 30.0;
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  *(v23 + 17) = *v73;
  *(v23 + 20) = *&v73[3];
  *(v23 + 40) = v60;
  v24 = v65;
  *(v23 + 24) = v66;
  *(v23 + 72) = v24;
  *(v23 + 56) = v64;
  v25 = v62;
  *(v23 + 88) = v63;
  *(v23 + 96) = v25;
  *(v23 + 104) = v61;
  *(v23 + 112) = v20;
  v26 = a4 + v22[6];
  *v26 = v59;
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  *(v26 + 40) = 3;
  v27 = v67[1];
  *(v26 + 41) = v67[0];
  *(v26 + 57) = v27;
  *(v26 + 73) = v67[2];
  *(v26 + 89) = v74;
  v28 = (a4 + v22[7]);
  v29 = v78;
  v28[2] = v77;
  v28[3] = v29;
  v28[4] = v79[0];
  *(v28 + 74) = *(v79 + 10);
  v30 = v76;
  *v28 = v75;
  v28[1] = v30;
  v31 = (a4 + v22[8]);
  v32 = v81;
  *v31 = v80;
  v31[1] = v32;
  *(v31 + 74) = *(v84 + 10);
  v33 = v84[0];
  v31[3] = v83;
  v31[4] = v33;
  v31[2] = v82;
  *(a4 + v22[9]) = v19;
  *(a4 + v22[10]) = v21;
  *(a4 + v22[11]) = v55;
  v34 = a4 + v22[12];
  *v34 = v57;
  *(v34 + 8) = 0;
  *(v34 + 16) = 0;
  *(v34 + 20) = *&v87[3];
  *(v34 + 17) = *v87;
  v35 = v48;
  *(v34 + 40) = v47;
  *(v34 + 24) = v35;
  v36 = v46;
  *(v34 + 72) = v45;
  *(v34 + 56) = v36;
  v37 = v43;
  *(v34 + 88) = v44;
  *(v34 + 96) = v37;
  *(v34 + 104) = v42;
  *(v34 + 112) = v16 & 0x1FF | 0x8000;
  v38 = a4 + v22[13];
  *v38 = xmmword_3288C0;
  *(v38 + 16) = 0;
  *(v38 + 20) = *(v90 + 3);
  *(v38 + 17) = v90[0];
  *(v38 + 40) = v54;
  *(v38 + 24) = v56;
  result = v53;
  *(v38 + 72) = v52;
  *(v38 + 56) = result;
  v40 = v50;
  *(v38 + 88) = v51;
  *(v38 + 96) = v40;
  *(v38 + 104) = v49;
  *(v38 + 112) = v17 & 0x1FF | 0x8000;
  return result;
}

double sub_16ED20(__n128 a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for ModernTitleHeaderView.Style(0);
  __swift_allocate_value_buffer(v4, a3);
  v5 = __swift_project_value_buffer(v4, a3);
  *&result = sub_16ED78(v5, a1).n128_u64[0];
  return result;
}

__n128 sub_16ED78@<Q0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  if (qword_3FAD50 != -1)
  {
    swift_once();
  }

  v51[0] = xmmword_42A0D0;
  v51[1] = *&qword_42A0E0;
  v51[2] = xmmword_42A0F0;
  v51[3] = unk_42A100;
  *v52 = xmmword_42A110;
  *&v52[10] = *(&xmmword_42A110 + 10);
  v44 = unk_42A100;
  v45 = xmmword_42A0D0;
  v39 = *&qword_42A0E0;
  v43 = xmmword_42A0F0;
  v41 = *&v52[8];
  v42 = xmmword_42A110;
  v40 = *(&xmmword_42A110 + 10) >> 48;
  v38 = unk_42A128;
  v50 = 0;
  v53 = xmmword_42A0D0;
  v54 = *&qword_42A0E0;
  *(v57 + 10) = *(&xmmword_42A110 + 10);
  v56 = unk_42A100;
  v57[0] = xmmword_42A110;
  v55 = xmmword_42A0F0;
  sub_EB00(v51, v71, &qword_3FFD68);
  sub_EB00(&v53, v71, &qword_3FFD68);
  if (qword_3FAD38 != -1)
  {
    swift_once();
  }

  v60 = xmmword_429FD0;
  v61 = *&qword_429FE0;
  v62[0] = xmmword_429FF0;
  *(v62 + 10) = *(&xmmword_429FF0 + 10);
  v58 = xmmword_429FB0;
  v59 = *&qword_429FC0;
  v66 = *&qword_429FE0;
  v67[0] = xmmword_429FF0;
  v64 = *&qword_429FC0;
  v65 = xmmword_429FD0;
  *(v67 + 10) = *(&xmmword_429FF0 + 10);
  v63 = xmmword_429FB0;
  v3 = objc_opt_self();
  sub_EB00(&v58, v71, &qword_3FFD68);
  sub_EB00(&v63, v71, &qword_3FFD68);
  v37 = [v3 configurationWithPointSize:4 weight:3 scale:15.0];
  if (qword_3FABC0 != -1)
  {
    swift_once();
  }

  v36 = qword_406110;
  v68[0] = xmmword_429FB0;
  v68[1] = *&qword_429FC0;
  v68[2] = xmmword_429FD0;
  v68[3] = *&qword_429FE0;
  *v69 = xmmword_429FF0;
  *&v69[10] = *(&xmmword_429FF0 + 10);
  v34 = *&qword_429FC0;
  v35 = xmmword_429FB0;
  v32 = *&qword_429FE0;
  v33 = xmmword_429FD0;
  v30 = *&v69[8];
  v31 = xmmword_429FF0;
  v29 = *(&xmmword_429FF0 + 10) >> 48;
  v4 = word_42A008;
  v49 = 0;
  v71[0] = xmmword_42A0D0;
  v71[1] = *&qword_42A0E0;
  *&v72[10] = *(&xmmword_42A110 + 10);
  v71[3] = unk_42A100;
  *v72 = xmmword_42A110;
  v71[2] = xmmword_42A0F0;
  v27 = unk_42A100;
  v28 = *&qword_42A0E0;
  v24 = xmmword_42A0F0;
  v25 = xmmword_42A0D0;
  v5 = xmmword_42A110;
  v26 = *(&xmmword_42A110 + 10) >> 48;
  v6 = unk_42A128;
  v48 = 0;
  sub_EB00(v68, v47, &qword_3FFD68);
  sub_EB00(v71, v47, &qword_3FFD68);
  if (qword_3FABD0 != -1)
  {
    swift_once();
  }

  v7 = qword_3FABE8;
  v8 = qword_406120;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_406138;
  sub_301DE8();
  v10 = type metadata accessor for ModernTitleHeaderView.Style(0);
  v11 = a1 + v10[5];
  *v11 = a2;
  *(v11 + 16) = 0;
  *(v11 + 40) = v39;
  *(v11 + 24) = v45;
  *(v11 + 72) = v44;
  *(v11 + 56) = v43;
  *(v11 + 88) = v42;
  *(v11 + 96) = v41;
  *(v11 + 104) = v40;
  *(v11 + 112) = v38 & 0x1FF | 0x8000;
  v12 = (a1 + v10[6]);
  v13 = v56;
  v12[2] = v55;
  v12[3] = v13;
  v12[4] = v57[0];
  *(v12 + 74) = *(v57 + 10);
  v14 = v54;
  *v12 = v53;
  v12[1] = v14;
  v15 = (a1 + v10[7]);
  v16 = v59;
  *v15 = v58;
  v15[1] = v16;
  *(v15 + 74) = *(v62 + 10);
  v17 = v62[0];
  v15[3] = v61;
  v15[4] = v17;
  v15[2] = v60;
  v18 = (a1 + v10[8]);
  v19 = v66;
  v18[2] = v65;
  v18[3] = v19;
  v18[4] = v67[0];
  *(v18 + 74) = *(v67 + 10);
  v20 = v64;
  *v18 = v63;
  v18[1] = v20;
  *(a1 + v10[9]) = v8;
  *(a1 + v10[10]) = v9;
  *(a1 + v10[11]) = v37;
  v21 = a1 + v10[12];
  *v21 = v36;
  *(v21 + 8) = 0;
  *(v21 + 16) = 0;
  *(v21 + 17) = *v70;
  *(v21 + 20) = *&v70[3];
  *(v21 + 40) = v34;
  *(v21 + 24) = v35;
  *(v21 + 72) = v32;
  *(v21 + 56) = v33;
  *(v21 + 88) = v31;
  *(v21 + 96) = v30;
  *(v21 + 104) = v29;
  *(v21 + 112) = v4 & 0x1FF | 0x8000;
  v22 = a1 + v10[13];
  *v22 = xmmword_3288F0;
  *(v22 + 16) = 0;
  *(v22 + 20) = *&v47[3];
  *(v22 + 17) = *v47;
  *(v22 + 24) = v25;
  *(v22 + 40) = v28;
  *(v22 + 56) = v24;
  result = v27;
  *(v22 + 72) = v27;
  *(v22 + 88) = v5;
  *(v22 + 104) = v26;
  *(v22 + 112) = v6 & 0x1FF | 0x8000;
  return result;
}

uint64_t sub_16F354()
{
  sub_124C4(0, &qword_408100);
  result = sub_30CD38();
  qword_406128 = result;
  return result;
}

uint64_t sub_16F398()
{
  sub_124C4(0, &qword_408100);
  result = sub_30CD48();
  qword_406130 = result;
  return result;
}

id sub_16F3F0(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

uint64_t ModernTitleHeaderView.style.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_style;
  swift_beginAccess();
  return sub_170EA0(v1 + v3, a1, type metadata accessor for ModernTitleHeaderView.Style);
}

uint64_t sub_16F4A0(uint64_t a1)
{
  v2 = type metadata accessor for ModernTitleHeaderView.Style(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_170EA0(a1, v4, type metadata accessor for ModernTitleHeaderView.Style);
  return ModernTitleHeaderView.style.setter(v4);
}

void sub_16F540()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_titleLabel];
  v3 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_style];
  swift_beginAccess();
  v4 = type metadata accessor for ModernTitleHeaderView.Style(0);
  v5 = &v3[v4[6]];
  v6 = *(v5 + 3);
  v7 = *(v5 + 1);
  v33 = *(v5 + 2);
  v34 = v6;
  v8 = *(v5 + 3);
  v35[0] = *(v5 + 4);
  *(v35 + 10) = *(v5 + 74);
  v9 = *(v5 + 1);
  v32[0] = *v5;
  v32[1] = v9;
  v38 = v33;
  v39 = v8;
  v40[0] = *(v5 + 4);
  *(v40 + 10) = *(v5 + 74);
  v36 = v32[0];
  v37 = v7;
  sub_EB00(v32, &v27, &qword_3FFD68);
  sub_235E5C(&v36);
  v10 = &v3[v4[7]];
  v11 = *(v10 + 3);
  v12 = *(v10 + 1);
  v38 = *(v10 + 2);
  v39 = v11;
  v13 = *(v10 + 3);
  v40[0] = *(v10 + 4);
  *(v40 + 10) = *(v10 + 74);
  v14 = *(v10 + 1);
  v36 = *v10;
  v37 = v14;
  v29 = v38;
  v30 = v13;
  v31[0] = *(v10 + 4);
  *(v31 + 10) = *(v10 + 74);
  v15 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_subtitleLabel];
  v27 = v36;
  v28 = v12;
  sub_EB00(&v36, v25, &qword_3FFD68);
  sub_235E5C(&v27);
  [v2 setTextColor:*&v3[v4[9]]];
  [v15 setTextColor:*&v3[v4[10]]];
  v16 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_button];
  if (v16)
  {
    v17 = &v3[v4[8]];
    v18 = *(v17 + 3);
    v19 = *(v17 + 1);
    v29 = *(v17 + 2);
    v30 = v18;
    v20 = *(v17 + 3);
    v31[0] = *(v17 + 4);
    *(v31 + 10) = *(v17 + 74);
    v21 = *(v17 + 1);
    v27 = *v17;
    v28 = v21;
    v25[2] = v29;
    v25[3] = v20;
    v26[0] = *(v17 + 4);
    *(v26 + 10) = *(v17 + 74);
    v25[0] = v27;
    v25[1] = v19;
    v22 = v16;
    sub_EB00(&v27, &v24, &qword_3FFD68);
    sub_2351A0(v25);
  }

  v23 = [v1 traitCollection];
  sub_170488(v23);
}

void (*ModernTitleHeaderView.style.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 24) = v1;
  v5 = *(*(type metadata accessor for ModernTitleHeaderView.Style(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 32) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 32) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 40) = v6;
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_style;
  swift_beginAccess();
  sub_170EA0(v1 + v8, v7, type metadata accessor for ModernTitleHeaderView.Style);
  return sub_16F898;
}

void sub_16F898(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    sub_170EA0(*(*a1 + 40), v3, type metadata accessor for ModernTitleHeaderView.Style);
    ModernTitleHeaderView.style.setter(v3);
    sub_170FB4(v4, type metadata accessor for ModernTitleHeaderView.Style);
  }

  else
  {
    ModernTitleHeaderView.style.setter(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t ModernTitleHeaderView.forceHideButton.getter()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_forceHideButton;
  swift_beginAccess();
  return *(v0 + v1);
}

void ModernTitleHeaderView.forceHideButton.setter(char a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_forceHideButton;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_button);
  if (v4)
  {
    v5 = v4;
    if (a1)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_30D0E8();
    }

    [v5 setHidden:v6 & 1];
  }
}

void (*ModernTitleHeaderView.forceHideButton.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_forceHideButton;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_16FA98;
}

void sub_16FA98(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_button);
    if (v5)
    {
      v6 = *(v4 + v3[4]);
      v7 = v5;
      if (v6)
      {
        v8 = 1;
      }

      else
      {
        v8 = sub_30D0E8();
      }

      [v7 setHidden:v8 & 1];
    }
  }

  free(v3);
}

void sub_16FB30(void **a1, _BYTE *a2)
{
  v3 = *a1;
  v6 = v3;
  if (a2[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_renderingMode + 8])
  {
    [*&a2[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageView] setImage:v3];
  }

  else
  {
    v4 = *&a2[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageView];
    v5 = [v3 imageWithRenderingMode:*&a2[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_renderingMode]];
    [v4 setImage:v5];
  }

  [a2 invalidateIntrinsicContentSize];
}

void *sub_16FC14(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v5 = v4;
  v21[0] = a1;
  v21[1] = a3;
  v8 = sub_301B18();
  __chkstk_darwin(v8 - 8);
  v9 = sub_301A78();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v14 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  v15 = [v5 traitCollection];
  v16 = [v15 layoutDirection];

  [v14 setBaseWritingDirection:v16 == &dword_0 + 1];
  sub_124C4(0, &qword_404AB8);
  if (a4)
  {
    v22 = v21[0];
    v23 = a2;

    v17._countAndFlagsBits = 41154;
    v17._object = 0xA200000000000000;
  }

  else
  {
    v22 = 41154;
    v23 = 0xA200000000000000;
    v17._countAndFlagsBits = v21[0];
    v17._object = a2;
  }

  sub_30C238(v17);
  sub_301B08();
  sub_301A88();
  sub_301A48();
  (*(v10 + 8))(v12, v9);
  v18 = sub_30CA18();
  v19 = v14;
  [v18 addAttribute:NSParagraphStyleAttributeName value:v19 range:{0, objc_msgSend(v18, "length")}];

  return v18;
}

id sub_16FEE0()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView____lazy_storage___topConstraint;
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView____lazy_storage___topConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView____lazy_storage___topConstraint];
  }

  else
  {
    v4 = [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_verticalSubStack] firstBaselineAnchor];
    v5 = [v0 topAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];

    v7 = *&v0[v1];
    *&v0[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_16FFAC()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView____lazy_storage___bottomConstraint;
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView____lazy_storage___bottomConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView____lazy_storage___bottomConstraint];
  }

  else
  {
    v4 = [v0 bottomAnchor];
    v5 = [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_verticalSubStack] lastBaselineAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];

    v7 = *&v0[v1];
    *&v0[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1700D0()
{
  v1 = sub_304C68();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406140);
  __chkstk_darwin(v5 - 8);
  v7 = &v25[-v6];
  v8 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_button];
  if (v8)
  {
    v9 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_style];
    swift_beginAccess();
    v10 = type metadata accessor for ModernTitleHeaderView.Style(0);
    v11 = &v9[*(v10 + 32)];
    v12 = *(v11 + 3);
    v13 = *(v11 + 1);
    v29 = *(v11 + 2);
    v30 = v12;
    v14 = *(v11 + 3);
    v31[0] = *(v11 + 4);
    *(v31 + 10) = *(v11 + 74);
    v15 = *(v11 + 1);
    v28[0] = *v11;
    v28[1] = v15;
    v26[2] = v29;
    v26[3] = v14;
    v27[0] = *(v11 + 4);
    *(v27 + 10) = *(v11 + 74);
    v26[0] = v28[0];
    v26[1] = v13;
    v16 = v8;
    sub_EB00(v28, v25, &qword_3FFD68);
    v17 = v0;
    sub_2351A0(v26);
    [v16 setPreferredSymbolConfiguration:*&v9[*(v10 + 44)] forImageInState:0];
    v18 = v16;
    LODWORD(v19) = 1148829696;
    [v18 setContentCompressionResistancePriority:0 forAxis:v19];
    LODWORD(v20) = 1144750080;
    [v18 setContentCompressionResistancePriority:1 forAxis:v20];
    sub_124C4(0, &qword_4061A0);
    sub_30C6D8();
    sub_30C6B8();
    sub_304C38();
    sub_304C48();
    (*(v2 + 8))(v4, v1);
    (*(v2 + 56))(v7, 0, 1, v1);
    v21 = sub_30C718();
    [v18 setHoverStyle:v21];

    v22 = [v17 traitCollection];
    sub_1707B0(v22);
    v23 = sub_16FEE0();
    [v23 setActive:0];

    [*&v17[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView____lazy_storage___topConstraint] setActive:1];
    v24 = sub_16FFAC();
    [v24 setActive:0];

    [*&v17[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView____lazy_storage___bottomConstraint] setActive:1];
  }
}

void sub_170488(uint64_t a1)
{
  v3 = sub_16FEE0();
  v4 = v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_style;
  swift_beginAccess();
  v5 = type metadata accessor for ModernTitleHeaderView.Style(0);
  v6 = v4 + v5[5];
  v7 = *(v6 + 80);
  v8 = *(v6 + 48);
  v50 = *(v6 + 64);
  v51 = v7;
  v9 = *(v6 + 80);
  v52 = *(v6 + 96);
  v10 = *(v6 + 16);
  v11 = *(v6 + 48);
  v48 = *(v6 + 32);
  v49 = v11;
  v12 = *(v6 + 16);
  v47[0] = *v6;
  v47[1] = v12;
  v76 = v50;
  v77 = v9;
  v78 = *(v6 + 96);
  v72 = v47[0];
  v73 = v10;
  v53 = *(v6 + 112);
  v79 = *(v6 + 112);
  v74 = v48;
  v75 = v8;
  sub_9004C(v47, v65);
  if (qword_3FAC38 != -1)
  {
    swift_once();
  }

  v13 = sub_30D6F8();
  v14 = __swift_project_value_buffer(v13, qword_4295D8);
  sub_231F6C(a1, v14, 0);
  v16 = v15;
  v54[4] = v76;
  v54[5] = v77;
  v54[6] = v78;
  v55 = v79;
  v54[0] = v72;
  v54[1] = v73;
  v54[2] = v74;
  v54[3] = v75;
  sub_900A8(v54);
  [v3 setConstant:v16];

  v17 = (v4 + v5[12]);
  v18 = v17[5];
  v19 = v17[3];
  v59 = v17[4];
  v60 = v18;
  v20 = v17[5];
  v61 = v17[6];
  v21 = v17[1];
  v56[0] = *v17;
  v56[1] = v21;
  v22 = v17[3];
  v24 = *v17;
  v23 = v17[1];
  v57 = v17[2];
  v58 = v22;
  v76 = v59;
  v77 = v20;
  v78 = v17[6];
  v72 = v24;
  v73 = v23;
  v25 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_verticalSubStack);
  v62 = *(v17 + 56);
  v79 = *(v17 + 56);
  v74 = v57;
  v75 = v19;
  sub_9004C(v56, v65);
  sub_231F6C(a1, v14, 0);
  v27 = v26;
  v63[4] = v76;
  v63[5] = v77;
  v63[6] = v78;
  v64 = v79;
  v63[0] = v72;
  v63[1] = v73;
  v63[2] = v74;
  v63[3] = v75;
  sub_900A8(v63);
  [v25 setSpacing:v27];
  v28 = sub_16FFAC();
  v29 = (v4 + v5[13]);
  v30 = v29[5];
  v31 = v29[3];
  v68 = v29[4];
  v69 = v30;
  v32 = v29[5];
  v70 = v29[6];
  v33 = v29[1];
  v65[0] = *v29;
  v65[1] = v33;
  v34 = v29[3];
  v36 = *v29;
  v35 = v29[1];
  v66 = v29[2];
  v67 = v34;
  v43 = v68;
  v44 = v32;
  v45 = v29[6];
  v39 = v36;
  v40 = v35;
  v71 = *(v29 + 56);
  v46 = *(v29 + 56);
  v41 = v66;
  v42 = v31;
  sub_9004C(v65, &v72);
  sub_231F6C(a1, v14, 0);
  v38 = v37;
  v76 = v43;
  v77 = v44;
  v78 = v45;
  v79 = v46;
  v72 = v39;
  v73 = v40;
  v74 = v41;
  v75 = v42;
  sub_900A8(&v72);
  [v28 setConstant:v38];
}

void sub_1707B0(void *a1)
{
  v2 = v1;
  v4 = [a1 preferredContentSizeCategory];
  v5 = sub_30CAD8();

  v6 = v5 & ([a1 horizontalSizeClass] == &dword_0 + 1);
  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_shouldStackButtons;
  v8 = (*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_shouldStackButtons) == 2) | v6 ^ *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_shouldStackButtons);
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_button;
  v10 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_button);
  if (!v10)
  {
LABEL_4:
    if ((v8 & 1) == 0)
    {
      return;
    }

    goto LABEL_5;
  }

  v11 = [v10 superview];
  if (v11)
  {

    goto LABEL_4;
  }

LABEL_5:
  *(v2 + v7) = v6;
  v12 = *(v2 + v9);
  if (v12)
  {
    v13 = v12;
    [v13 removeFromSuperview];
    v14 = v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_style;
    swift_beginAccess();
    v15 = (v14 + *(type metadata accessor for ModernTitleHeaderView.Style(0) + 32));
    v16 = v15[3];
    v17 = v15[1];
    v25 = v15[2];
    v26 = v16;
    v18 = v15[3];
    v27[0] = v15[4];
    *(v27 + 10) = *(v15 + 74);
    v19 = v15[1];
    v24[0] = *v15;
    v24[1] = v19;
    v22[2] = v25;
    v22[3] = v18;
    v23[0] = v15[4];
    *(v23 + 10) = *(v15 + 74);
    v22[0] = v24[0];
    v22[1] = v17;
    sub_EB00(v24, &v21, &qword_3FFD68);
    sub_2351A0(v22);
    if (v6)
    {
      v20 = OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_verticalSubStack;
    }

    else
    {
      v20 = OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_horizontalParentStack;
    }

    [*(v2 + v20) addArrangedSubview:v13];
  }
}

Swift::Void __swiftcall ModernTitleHeaderView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "traitCollectionDidChange:", isa);
  v3 = [v1 traitCollection];
  sub_1707B0(v3);
  v4 = sub_16FEE0();
  [v4 setActive:0];

  [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView____lazy_storage___topConstraint] setActive:1];
  v5 = sub_16FFAC();
  [v5 setActive:0];

  [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView____lazy_storage___bottomConstraint] setActive:1];
  [v1 setNeedsUpdateConstraints];
}

Swift::Void __swiftcall ModernTitleHeaderView.updateConstraints()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "updateConstraints");
  v1 = [v0 traitCollection];
  sub_170488(v1);
}

uint64_t sub_170CC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406150);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_170D54()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t objectdestroyTm_8()
{
  v1 = sub_3023D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_170EA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_170F08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModernTitleHeaderView.Style(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_170F6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_170FB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}