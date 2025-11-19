void sub_13BF48(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

void sub_13BF5C()
{
  v1 = v0;
  v2 = sub_13B2D0(&OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___verticalStackViewTopConstraint, &selRef_topAnchor, &selRef_constraintEqualToAnchor_);
  [v2 setActive:0];

  v3 = sub_13B2D0(&OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___verticalStackViewTopGreaterThanOrEqualToConstraint, &selRef_topAnchor, &selRef_constraintGreaterThanOrEqualToAnchor_);
  [v3 setActive:0];

  v4 = sub_307828();
  if (v4)
  {

    v5 = (v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___verticalStackViewTopConstraint);
    [*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___verticalStackViewTopConstraint) setActive:1];
    v6 = (v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___verticalStackViewTopGreaterThanOrEqualToConstraint);
    v7 = 56;
  }

  else
  {
    [*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___verticalStackViewTopConstraint) setActive:0];
    v6 = (v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___verticalStackViewTopGreaterThanOrEqualToConstraint);
    v7 = 64;
    v5 = (v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___verticalStackViewTopGreaterThanOrEqualToConstraint);
  }

  [*v6 setActive:v4 == 0];
  [*v5 setConstant:*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell_style + v7)];
  v8 = sub_307898();
  if (v8 == 2 || (v8 & 1) == 0)
  {
    v9 = 48;
  }

  else
  {
    v9 = 40;
  }

  v10 = sub_13B160(&OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___artworkViewBottomConstraint, sub_13B1C4);
  [v10 setConstant:-*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell_style + v9)];
}

void sub_13C120()
{

  memcpy(v1, (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell_style), sizeof(v1));
  sub_13E214(v1);
}

void sub_13C330(void **a1)
{
  v2 = v1;
  v4 = sub_3041E8();
  v56 = *(v4 - 8);
  v57 = v4;
  __chkstk_darwin(v4);
  v54 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v6 - 8);
  v55 = &v52 - v7;
  v8 = sub_303398();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v58 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v11 - 8);
  v13 = &v52 - v12;
  v14 = sub_3031C8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v52 - v19;
  v21 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell_objectGraph];
  if (!v21)
  {
    return;
  }

  v52 = v9;
  v53 = v8;

  sub_13BF5C();
  v59 = v21;
  sub_13D19C(a1, v21, v2, &type metadata accessor for ShowHeader);
  sub_307858();
  v22 = sub_3079F8();

  if (v22)
  {
    v23 = sub_13B160(&OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___artworkView, sub_13ACC8);
    [v23 setHidden:1];
  }

  else
  {
    sub_307858();
    sub_307A08();

    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      sub_6D85C(v13, v20);
      v26 = sub_13B160(&OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___artworkView, sub_13ACC8);
      [v26 setHidden:0];

      v27 = OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___artworkView;
      v28 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell_style];
      v29 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell_style + 8];
      v30 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___artworkView];
      sub_2EF18(v20, v28, v29);

      v31 = *&v2[v27];
      sub_6D8C0(v20, v17);
      v32 = v31;
      v33 = [v2 traitCollection];
      sub_30C958();

      v34 = sub_303DF8();
      (*(*(v34 - 8) + 56))(v55, 1, 1, v34);
      v35 = v54;
      sub_304198();
      sub_30C778();
      sub_303A08();
      (*(v56 + 8))(v35, v57);
      v36 = v58;
      sub_303358();
      type metadata accessor for CachingArtworkView();
      sub_13DDD4(&qword_404F88, 255, type metadata accessor for CachingArtworkView);
      v25 = v59;
      sub_308E28();

      (*(v52 + 8))(v36, v53);
      sub_6D924(v20);
      goto LABEL_8;
    }

    sub_EB68(v13, &unk_402FF0);
    v24 = sub_13B160(&OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___artworkView, sub_13ACC8);
    [v24 setHidden:1];
  }

  v25 = v59;
LABEL_8:
  v37 = sub_13AE00();
  sub_13E5C0(a1, v25);

  v38 = sub_307828();
  if (v38)
  {
    v39 = v38;
    v40 = sub_13AEE8();
    [v40 setHidden:0];

    v41 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___upsellBannerView];
    sub_2E20D4(v39);
  }

  else
  {
    v41 = sub_13AEE8();
    [v41 setHidden:1];
  }

  v42 = sub_307898();
  if (v42 == 2 || (v42 & 1) == 0)
  {
    v51 = sub_13B0D4();
    [v51 setHidden:1];
  }

  else
  {
    v43 = sub_13B0D4();
    [v43 setHidden:0];

    v44 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___entitlementBadgeView];
    v62 = a1;
    sub_307938();
    v45 = v44;
    v46 = sub_30A2C8();
    sub_30CFC8();
    if (v61 & 1 | (v60 < 0.25))
    {
      v47 = 11;
    }

    else
    {
      v47 = 13;
    }

    v48 = ~(v61 | (v60 < 0.25));
    v49 = [objc_opt_self() effectWithStyle:v47];
    v50 = [objc_opt_self() effectForBlurEffect:v49 style:v48 & 1];
    [*&v45[qword_40E930] setEffect:v49];
    [*&v45[qword_40E938] setEffect:v50];
  }
}

void sub_13CB14(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell_objectGraph) = a1;

  v3 = sub_13B160(&OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___artworkView, sub_13ACC8);
  sub_21C008(a1);

  v4 = sub_13AE00();
  v5 = *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_primaryButton];
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_objectGraph;
  swift_beginAccess();
  *(v5 + v6) = a1;
  swift_retain_n();

  v7 = sub_13F730();

  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_objectGraph;
  swift_beginAccess();
  *&v7[v8] = a1;

  v9 = sub_13AEE8();
  sub_2E306C(a1);
}

void sub_13CC48()
{
  v0 = sub_302B48();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_13AEE8();
  v5 = sub_307158();
  v6 = v4[qword_40E018];
  v4[qword_40E018] = v5;
  if (v6 == 8 || (sub_302C18(), v8 = v7, sub_302C18(), v8 != v9))
  {
    sub_2E404C();
  }

  v10 = sub_13B2D0(&OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___verticalStackViewTrailingConstraint, &selRef_trailingAnchor, &selRef_constraintLessThanOrEqualToAnchor_);
  sub_307148();
  sub_302B28();
  v12 = v11;
  (*(v1 + 8))(v3, v0);
  [v10 setConstant:-v12];
}

uint64_t sub_13CDEC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_13DDD4(&qword_404F98, v3, type metadata accessor for HorizontalShowHeaderCell);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v4);
}

uint64_t sub_13CEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_12670(a3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4064E0);
  sub_307938();
  if (swift_dynamicCast())
  {
    sub_307898();
  }

  return sub_307198();
}

uint64_t sub_13D19C(uint64_t a1, uint64_t a2, char *a3, void (*a4)(void))
{
  v51 = a2;
  v7 = sub_3039D8();
  __chkstk_darwin(v7 - 8);
  v50 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3041E8();
  v45 = *(v9 - 8);
  v46 = v9;
  __chkstk_darwin(v9);
  v43 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v11 - 8);
  v44 = &v40 - v12;
  v13 = sub_303398();
  v48 = *(v13 - 8);
  v49 = v13;
  __chkstk_darwin(v13);
  v47 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v15 - 8);
  v17 = &v40 - v16;
  v18 = sub_3031C8();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v42 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v41 = &v40 - v22;
  v52 = a1;
  v53 = a1;

  v23 = [a3 contentView];
  a4(0);
  [v23 setOverrideUserInterfaceStyle:sub_30A2D8()];

  v24 = sub_30A2C8();
  v25 = &a3[OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_background];
  v26 = *&a3[OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_background];
  v27 = *&a3[OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_background + 8];
  *v25 = v24;
  *(v25 + 1) = 0;
  LOBYTE(a1) = v25[16];
  v25[16] = 64;
  v28 = v24;
  sub_13DD84(v26, v27, a1);
  sub_14EC50();

  sub_30A2B8();

  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_EB68(v17, &unk_402FF0);
  }

  v30 = v41;
  sub_6D85C(v17, v41);
  [a3 layoutIfNeeded];
  v31 = *&a3[OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_uberBackgroundView];
  if (v31)
  {
    v32 = *&a3[OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_uberBackgroundView + 8];
    ObjectType = swift_getObjectType();
    v34 = *(v32 + 104);
    v35 = v31;
    v34(ObjectType, v32);
  }

  sub_6D8C0(v30, v42);
  v36 = [a3 traitCollection];
  sub_30C958();

  v37 = sub_303DF8();
  (*(*(v37 - 8) + 56))(v44, 1, 1, v37);
  v38 = v43;
  sub_304198();
  sub_30C778();
  sub_303A08();
  (*(v45 + 8))(v38, v46);
  sub_3039C8();
  v39 = v47;
  sub_303378();
  type metadata accessor for UberCollectionViewCell();
  sub_13DDD4(&qword_404F90, 255, type metadata accessor for UberCollectionViewCell);
  sub_308E28();
  (*(v48 + 8))(v39, v49);
  return sub_6D924(v30);
}

uint64_t sub_13D794(void *a1, uint64_t a2, char *a3)
{
  v52 = a2;
  v5 = sub_3039D8();
  __chkstk_darwin(v5 - 8);
  v51 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3041E8();
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v44 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v9 - 8);
  v45 = &v41 - v10;
  v11 = sub_303398();
  v49 = *(v11 - 8);
  v50 = v11;
  __chkstk_darwin(v11);
  v48 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v13 - 8);
  v15 = &v41 - v14;
  v16 = sub_3031C8();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v43 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v42 = &v41 - v20;
  v54 = a1;
  v53 = a1;
  v21 = [a3 contentView];
  sub_308008();
  [v21 setOverrideUserInterfaceStyle:sub_30A2D8()];

  v22 = sub_30A2C8();
  v23 = &a3[OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_background];
  v24 = *&a3[OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_background];
  v25 = *&a3[OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_background + 8];
  *v23 = v22;
  *(v23 + 1) = 0;
  v26 = v23[16];
  v23[16] = 64;
  v27 = v22;
  v28 = v25;
  v29 = a3;
  sub_13DD84(v24, v28, v26);
  sub_14EC50();

  sub_30A2B8();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_EB68(v15, &unk_402FF0);
  }

  v31 = v42;
  sub_6D85C(v15, v42);
  [a3 layoutIfNeeded];
  v32 = *&a3[OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_uberBackgroundView];
  if (v32)
  {
    v33 = *&a3[OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_uberBackgroundView + 8];
    ObjectType = swift_getObjectType();
    v35 = *(v33 + 104);
    v36 = v32;
    v35(ObjectType, v33);
  }

  sub_6D8C0(v31, v43);
  v37 = [v29 traitCollection];
  sub_30C958();

  v38 = sub_303DF8();
  (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  v39 = v44;
  sub_304198();
  sub_30C778();
  sub_303A08();
  (*(v46 + 8))(v39, v47);
  sub_3039C8();
  v40 = v48;
  sub_303378();
  type metadata accessor for UberCollectionViewCell();
  sub_13DDD4(&qword_404F90, 255, type metadata accessor for UberCollectionViewCell);
  sub_308E28();
  (*(v49 + 8))(v40, v50);
  return sub_6D924(v31);
}

void sub_13DD84(void *a1, void *a2, unsigned __int8 a3)
{
  v4 = a3 >> 6;
  if (v4 >= 2)
  {
    if (v4 == 3)
    {
      return;
    }

    v5 = a1;

    a1 = v5;
  }
}

uint64_t sub_13DDD4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_13DE1C()
{
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell_objectGraph) = 0;
  sub_13E390(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell_style);
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___artworkView) = 0;
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell_verticalStackView;
  v2 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setAxis:1];
  [v2 setAlignment:1];
  v3 = v2;
  v4 = [v3 layer];
  [v4 setAllowsGroupBlending:0];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v1) = v3;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___textContentView) = 0;
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell_verticalSpacerView;
  v6 = [objc_allocWithZone(UIView) init];
  v7 = [v6 heightAnchor];
  v8 = [v7 constraintGreaterThanOrEqualToConstant:8.0];

  [v8 setActive:1];
  *(v0 + v5) = v6;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___upsellBannerView) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___entitlementBadgeView) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___artworkViewBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___verticalStackViewTopConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___verticalStackViewTopGreaterThanOrEqualToConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HorizontalShowHeaderCell____lazy_storage___verticalStackViewTrailingConstraint) = 0;
  sub_30D648();
  __break(1u);
}

uint64_t sub_13E020(uint64_t a1, void *a2)
{
  swift_getObjectType();
  v3 = sub_3041E8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3041C8();
  v7 = sub_3041D8();
  v8 = sub_30C7B8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "Performing OAuth action on show header subtitle click.", v9, 2u);
  }

  (*(v4 + 8))(v6, v3);
  v13[3] = sub_124C4(0, &qword_3FBD90);
  v13[0] = a2;
  sub_13DDD4(&qword_404F78, v10, type metadata accessor for HorizontalShowHeaderCell);
  v11 = a2;
  sub_3075F8();

  return sub_EB68(v13, &unk_3FBB70);
}

uint64_t sub_13E288(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 432))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_13E2D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 424) = 0;
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
      *(result + 432) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 432) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

UIFontTextStyle sub_13E390@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 80) = 2;
  *(a1 + 288) = 0x401C000000000000;
  *(a1 + 304) = 2;
  *(a1 + 312) = 0x4080400000000000;
  *(a1 + 328) = 0x4035000000000000;
  *(a1 + 344) = 1;
  *(a1 + 352) = xmmword_3266F0;
  *a1 = vdupq_n_s64(0x4072C00000000000uLL);
  *(a1 + 16) = xmmword_326700;
  *(a1 + 32) = xmmword_326710;
  *(a1 + 48) = xmmword_326720;
  *(a1 + 64) = 0x4030000000000000;
  sub_D8184();
  *(a1 + 72) = sub_30CC98();
  if (qword_3FAC98 != -1)
  {
    swift_once();
  }

  v2 = xmmword_429850;
  v3 = unk_429860;
  v15[2] = xmmword_429850;
  v15[3] = unk_429860;
  v16[0] = xmmword_429870;
  v4 = *(&xmmword_429870 + 10);
  *(v16 + 10) = *(&xmmword_429870 + 10);
  v5 = xmmword_429830;
  v6 = unk_429840;
  v15[0] = xmmword_429830;
  v15[1] = unk_429840;
  *(a1 + 152) = xmmword_429870;
  *(a1 + 120) = v2;
  *(a1 + 136) = v3;
  *(a1 + 162) = v4;
  *(a1 + 88) = v5;
  *(a1 + 104) = v6;
  *(a1 + 184) = 0x4014000000000000;
  sub_8FC54(v15, v17);
  if (qword_3FAD00 != -1)
  {
    swift_once();
  }

  v7 = xmmword_429D30;
  v17[2] = xmmword_429D30;
  v17[3] = unk_429D40;
  v8 = xmmword_429D50;
  v18[0] = xmmword_429D50;
  v9 = *(&xmmword_429D50 + 10);
  *(v18 + 10) = *(&xmmword_429D50 + 10);
  v10 = xmmword_429D10;
  v11 = unk_429D20;
  v17[0] = xmmword_429D10;
  v17[1] = unk_429D20;
  *(a1 + 240) = unk_429D40;
  *(a1 + 256) = v8;
  *(a1 + 208) = v11;
  *(a1 + 224) = v7;
  *(a1 + 266) = v9;
  *(a1 + 192) = v10;
  *(a1 + 296) = UIFontTextStyleSubheadline;
  *(a1 + 320) = 0x4035000000000000;
  *(a1 + 336) = 0x4034000000000000;
  sub_8FC54(v17, &v14);
  v12 = UIFontTextStyleSubheadline;
  *(a1 + 368) = sub_30CE08();
  *(a1 + 376) = 0x402C000000000000;
  *(a1 + 384) = xmmword_326730;
  *(a1 + 400) = xmmword_326740;
  *(a1 + 416) = 0x404C800000000000;
  *(a1 + 424) = UIFontTextStyleCaption2;

  return UIFontTextStyleCaption2;
}

void sub_13E5C0(void **a1, uint64_t a2)
{
  v3 = v2;
  v101 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEA58);
  __chkstk_darwin(v5 - 8);
  v7 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v98 = &v95 - v9;
  v100 = sub_309778();
  v10 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3019B8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140FEC();
  v16 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_titleLabel);
  sub_307908();
  if (v17)
  {
    v18 = sub_30C098();
  }

  else
  {
    v18 = 0;
  }

  [v16 setText:v18];

  v19 = sub_307878();
  v20 = v19;
  v96 = v7;
  if (v19)
  {
    v21 = sub_30B038();
    v19 = sub_1415A4(&qword_3FBDA0, &type metadata accessor for Action);
  }

  else
  {
    v21 = 0;
    v104 = 0;
    v103 = 0;
  }

  v99 = v10;
  aBlock = v20;
  v105 = v21;
  v106 = v19;
  v22 = OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_subtitleAction;
  swift_beginAccess();
  sub_101C74(&aBlock, v3 + v22);
  swift_endAccess();
  v23 = sub_13FB50(&OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___subtitleButton, sub_13F750);
  v24 = sub_307848();
  v26 = *&v23[OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel];
  if (v25)
  {
    aBlock = v24;
    v103 = v25;
    v27 = v26;
    sub_3019A8();
    sub_E504();
    sub_30D3E8();
    (*(v13 + 8))(v15, v12);

    v28 = sub_30C098();
  }

  else
  {
    v29 = v26;
    v28 = 0;
  }

  [v26 setText:v28];

  v30 = sub_307868();
  if (v30)
  {
    v31 = v30;
    v32 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___subtitleButton);
    ChevronButton.setAction(_:)(v31);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405040);
  sub_30B8E8();
  v33 = [aBlock isReachable];
  swift_unknownObjectRelease();
  if (v33 && (sub_307928() & 1) != 0)
  {
    [*(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_metadataView) setHidden:0];
    v34 = sub_307918();
    sub_3026B8();
    sub_30B8E8();
    v35 = sub_3026A8();

    sub_2CABC8(v34, v35 & 1);
  }

  else
  {
    [*(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_metadataView) setHidden:1];
  }

  v36 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_descriptionLabelContainerView);
  v37 = *(v36 + OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_descriptionLabel);
  LODWORD(v38) = 1148846080;
  [v37 setContentCompressionResistancePriority:1 forAxis:v38];
  v95 = objc_opt_self();
  v39 = [v95 secondaryLabelColor];
  [v37 setTextColor:v39];

  v40 = [objc_opt_self() preferredFontForTextStyle:*(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_style + 296)];
  sub_124C4(0, &qword_408100);
  v41 = sub_30CD18();
  v42.super.isa = v40;
  v43.super.isa = v41;
  isa = sub_307888(v42, v43).super.isa;

  [v37 setAttributedText:isa];
  v45 = sub_3078C8();
  if (v45)
  {
    v46 = v45;
    v47 = *(v36 + OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_moreButton);
    LODWORD(v48) = 1148846080;
    [v47 setContentCompressionResistancePriority:1 forAxis:v48];
    v105 = sub_3076F8();
    v106 = sub_1415A4(&unk_3FB8B0, &type metadata accessor for FlowAction);
    aBlock = v46;

    sub_30D388();

    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  v49 = v98;
  sub_2ADBB0(v98);
  v50 = v99;
  v51 = v100;
  if ((*(v99 + 48))(v49, 1, v100) != 1)
  {
    v52 = v97;
    (*(v50 + 32))(v97, v49, v51);
    v53 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_primaryButton);
    v54 = v96;
    (*(v50 + 16))(v96, v52, v51);
    (*(v50 + 56))(v54, 0, 1, v51);
    v55 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_data;
    swift_beginAccess();
    sub_749E4(v54, v53 + v55);
    swift_endAccess();
    v56 = objc_opt_self();
    v57 = swift_allocObject();
    *(v57 + 16) = v53;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_74A54;
    *(v58 + 24) = v57;
    v106 = sub_293C0;
    v107 = v58;
    aBlock = _NSConcreteStackBlock;
    v103 = 1107296256;
    v104 = sub_19D688;
    v105 = &block_descriptor_25;
    v59 = _Block_copy(&aBlock);
    v60 = v53;

    [v56 performWithoutAnimation:v59];
    _Block_release(v59);
    LOBYTE(v59) = swift_isEscapingClosureAtFileLocation();

    if (v59)
    {
      __break(1u);
      return;
    }

    sub_EB68(v54, &qword_3FEA58);
    v61 = sub_3078D8();
    if (v61)
    {

      v62 = 3;
    }

    else
    {
      aBlock = a1;
      sub_307938();
      v62 = sub_30A2D8();
    }

    v63 = &v60[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_theme];
    swift_beginAccess();
    v64 = *v63;
    v65 = v63[8];
    *v63 = v62;
    v63[8] = v61 != 0;
    if (v65 == 1)
    {
      v66 = v99;
      if (v64 > 1)
      {
        if (v64 == 2)
        {
          if (v61 && v62 == 2)
          {
            goto LABEL_33;
          }
        }

        else if (v61 && v62 >= 3)
        {
          goto LABEL_33;
        }
      }

      else if (v64)
      {
        if (v61 && v62 == 1)
        {
          goto LABEL_33;
        }
      }

      else if (v61 && !v62)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v66 = v99;
      if (!v61 && v64 == v62)
      {
        goto LABEL_33;
      }
    }

    sub_2A5A44();
LABEL_33:
    [v60 setHidden:0];
    (*(v66 + 8))(v97, v100);
    goto LABEL_34;
  }

  sub_EB68(v49, &qword_3FEA58);
  [*(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_primaryButton) setHidden:1];
LABEL_34:
  v67 = sub_3078D8();
  if (v67)
  {
    v68 = v67;
    v69 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_secondaryButton);
    [v69 setHidden:0];
    v70 = qword_40E820;
    v71 = *&v69[qword_40E820];
    sub_30B018();
    if (v72)
    {
      v73 = sub_30C098();
    }

    else
    {
      v73 = 0;
    }

    [v71 setTitle:v73 forState:0];

    v108 = a1;
    sub_307938();
    v74 = sub_30AB98();
    v105 = sub_30B038();
    v106 = sub_1415A4(&qword_3FBDA0, &type metadata accessor for Action);
    if (!v74)
    {

      v74 = v68;
    }

    aBlock = v74;
    sub_30D388();
    sub_12670(&aBlock, &v108);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405048);
    if (swift_dynamicCast())
    {
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_308D68();

      v75 = *&v69[v70];
      sub_124C4(0, &qword_408080);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v76 = sub_30D0C8();
      [v75 addAction:v76 forControlEvents:0x2000];
    }

    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    [*(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_secondaryButton) setHidden:1];
  }

  sub_3078E8();
  if (v77)
  {
    v78 = sub_13FB50(&OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___benefitsLabel, sub_13FBB4);
    [v78 setHidden:0];

    v79 = OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___benefitsLabel;
    v80 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___benefitsLabel);
    v81 = sub_30C098();

    [v80 setText:v81];

    if (sub_307878() && (sub_307AC8(), v82 = swift_dynamicCastClass(), , v82))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_315420;
      *(inited + 32) = NSUnderlineStyleAttributeName;
      *(inited + 40) = 1;
      *(inited + 64) = &type metadata for Int;
      *(inited + 72) = NSUnderlineColorAttributeName;
      v84 = NSUnderlineStyleAttributeName;
      v85 = NSUnderlineColorAttributeName;
      v86 = [v95 secondaryLabelColor];
      *(inited + 104) = sub_124C4(0, &qword_3FFD48);
      *(inited + 80) = v86;
      sub_2D6CB0(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FFD50);
      swift_arrayDestroy();
      v87 = *(v3 + v79);
      v88 = [v87 text];
      if (v88)
      {
        v89 = v88;
        sub_30C0D8();
      }

      v91 = objc_allocWithZone(NSAttributedString);
      v92 = sub_30C098();

      type metadata accessor for Key(0);
      sub_1415A4(&qword_3FB410, type metadata accessor for Key);
      v93 = sub_30BF88().super.isa;

      v94 = [v91 initWithString:v92 attributes:v93];

      [v87 setAttributedText:v94];
      [*(v3 + v79) setUserInteractionEnabled:1];
    }

    else
    {
      [*(v3 + v79) setUserInteractionEnabled:0];
    }
  }

  else
  {
    v90 = sub_13FB50(&OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___benefitsLabel, sub_13FBB4);
    [v90 setHidden:1];
  }
}

id sub_13F658()
{
  v0 = [objc_allocWithZone(UILabel) init];
  LODWORD(v1) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v1];
  [v0 setLineBreakMode:4];
  v2 = [objc_opt_self() labelColor];
  [v0 setTextColor:v2];

  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v0;
}

char *sub_13F750(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_style + 136);
  v14[2] = *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_style + 120);
  v14[3] = v1;
  v15[0] = *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_style + 152);
  *(v15 + 10) = *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_style + 162);
  v2 = *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_style + 104);
  v14[0] = *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_style + 88);
  v14[1] = v2;
  v3 = *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_style + 136);
  v12[2] = *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_style + 120);
  v12[3] = v3;
  v13[0] = *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_style + 152);
  *(v13 + 10) = *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_style + 162);
  v4 = *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_style + 104);
  v12[0] = *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_style + 88);
  v12[1] = v4;
  v5 = objc_allocWithZone(type metadata accessor for ChevronButton());
  sub_EB00(v14, &v11, &qword_3FFD68);
  v6 = sub_143168(v12, 1);
  LODWORD(v7) = 1148846080;
  [v6 setContentCompressionResistancePriority:1 forAxis:v7];
  v8 = [objc_opt_self() secondaryLabelColor];
  [*&v6[OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_imageView] setTintColor:v8];
  [*&v6[OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel] setTextColor:v8];

  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_useTopBottomMargin;
  swift_beginAccess();
  v6[v9] = 0;
  sub_142494();
  return v6;
}

char *sub_13F8BC()
{
  type metadata accessor for ShowMetadataView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  LODWORD(v1) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v1];
  v2 = [objc_opt_self() secondaryLabelColor];
  v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_color];
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_color] = v2;
  v4 = v2;

  [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_label] setTextColor:v4];
  return v0;
}

char *sub_13F97C()
{
  v0 = type metadata accessor for VEVButtonContainer.Style(0);
  v1 = (v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2A50F0(2, v16);
  v4 = v17;
  sub_1415EC(v16);
  v18 = 0;
  v5 = v1[7];
  v6 = sub_302AB8();
  (*(*(v6 - 8) + 56))(&v3[v5], 1, 1, v6);
  *(v3 + 24) = 0u;
  *(v3 + 8) = 0u;
  v7 = v20;
  *(v3 + 41) = v19;
  *v3 = v4;
  v3[40] = 3;
  *(v3 + 57) = v7;
  *(v3 + 73) = v21;
  v3[89] = v18;
  v8 = &v3[v1[8]];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = &v3[v1[10]];
  *v9 = xmmword_326BC0;
  v9[1] = xmmword_326BC0;
  *&v3[v1[11]] = 9;
  v3[v1[9]] = 1;
  v10 = objc_allocWithZone(type metadata accessor for VEVButtonContainer(0));
  v11 = v4;
  v12 = sub_1584B8(v3);
  LODWORD(v13) = 1148846080;
  [v12 setContentCompressionResistancePriority:0 forAxis:v13];
  v14 = [*&v12[qword_40E820] titleLabel];
  [v14 setAdjustsFontSizeToFitWidth:1];

  return v12;
}

id sub_13FB50(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

id sub_13FBB4(uint64_t a1)
{
  v2 = [objc_allocWithZone(UILabel) init];
  LODWORD(v3) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v3];
  v4 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:a1 action:"benefitsLabelTapped"];
  [v2 addGestureRecognizer:v4];

  v5 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor:v5];

  [v2 setAdjustsFontForContentSizeCategory:1];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v2;
}

id sub_13FCC8()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___verticalStackViewBottomConstraintToBottomConstraint;
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___verticalStackViewBottomConstraintToBottomConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___verticalStackViewBottomConstraintToBottomConstraint];
  }

  else
  {
    v4 = [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_verticalStackView] bottomAnchor];
    v5 = [v0 bottomAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];

    v7 = *&v0[v1];
    *&v0[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_13FD90()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___verticalStackViewBottomConstraintToBenefitsLabelTopConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___verticalStackViewBottomConstraintToBenefitsLabelTopConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___verticalStackViewBottomConstraintToBenefitsLabelTopConstraint);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_verticalStackView) bottomAnchor];
    v5 = sub_13FB50(&OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___benefitsLabel, sub_13FBB4);
    v6 = [v5 topAnchor];

    v7 = [v4 constraintEqualToAnchor:v6];
    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_13FE80()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___benefitsLabelBottomConstraintToBottomConstraint;
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___benefitsLabelBottomConstraintToBottomConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___benefitsLabelBottomConstraintToBottomConstraint];
  }

  else
  {
    v4 = sub_13FB50(&OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___benefitsLabel, sub_13FBB4);
    v5 = [v4 bottomAnchor];

    v6 = [v0 bottomAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];

    v8 = *&v0[v1];
    *&v0[v1] = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

char *sub_13FF64(const void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  memcpy(__dst, a1, sizeof(__dst));
  v4 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_subtitleAction];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_titleLabel;
  *&v2[v5] = sub_13F658();
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_verticalStackView;
  v7 = [objc_allocWithZone(UIStackView) init];
  [v7 setAxis:1];
  [v7 setAlignment:1];
  v8 = v7;
  v9 = [v8 layer];
  [v9 setAllowsGroupBlending:0];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2[v6] = v8;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___subtitleButton] = 0;
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_metadataView;
  *&v2[v10] = sub_13F8BC();
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_descriptionLabelContainerView;
  type metadata accessor for FadingDescriptionLabel();
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = [v12 layer];
  [v13 setAllowsGroupBlending:0];

  LODWORD(v14) = 1148846080;
  [v12 setContentCompressionResistancePriority:1 forAxis:v14];
  *&v2[v11] = v12;
  v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_buttonsHorizontalStackView;
  v16 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v16 setAxis:0];
  [v16 setSpacing:0.0];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2[v15] = v16;
  v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_primaryButton;
  *&v136[0] = 2;
  BYTE8(v136[0]) = 0;
  v18 = objc_allocWithZone(type metadata accessor for PlayButton(0));
  sub_2A76A0(v136, 2, 0);
  v20 = v19;
  LODWORD(v21) = 1148846080;
  [v19 setContentCompressionResistancePriority:0 forAxis:v21];
  *&v2[v17] = v20;
  v22 = OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_secondaryButton;
  *&v2[v22] = sub_13F97C();
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___benefitsLabel] = 0;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___verticalStackViewBottomConstraintToBottomConstraint] = 0;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___verticalStackViewBottomConstraintToBenefitsLabelTopConstraint] = 0;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___benefitsLabelBottomConstraintToBottomConstraint] = 0;
  memcpy(&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_style], __dst, 0x1B0uLL);
  sub_13D120(__dst, v136);
  v135.receiver = v2;
  v135.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v135, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v128 = objc_opt_self();
  v24 = v23;
  v25 = [v128 clearColor];
  [v24 setBackgroundColor:v25];

  v125 = OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_titleLabel;
  v26 = *(v24 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_titleLabel);
  *&v136[0] = 0;
  *(&v136[0] + 1) = 0xE000000000000000;
  v27 = v26;
  v140._object = 0x800000000033C270;
  v140._countAndFlagsBits = 0xD000000000000014;
  sub_30C238(v140);
  v141._countAndFlagsBits = 46;
  v141._object = 0xE100000000000000;
  sub_30C238(v141);
  sub_30D638();
  v28 = sub_30C098();

  [v27 setAccessibilityIdentifier:v28];

  v29 = sub_13FB50(&OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___subtitleButton, sub_13F750);
  *&v136[0] = 0;
  *(&v136[0] + 1) = 0xE000000000000000;
  v142._object = 0x800000000033C270;
  v142._countAndFlagsBits = 0xD000000000000014;
  sub_30C238(v142);
  v143._countAndFlagsBits = 46;
  v143._object = 0xE100000000000000;
  sub_30C238(v143);
  v134[0] = 1;
  sub_30D638();
  v30 = sub_30C098();

  [v29 setAccessibilityIdentifier:v30];

  v130 = OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_metadataView;
  v31 = *(v24 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_metadataView);
  *&v136[0] = 0;
  *(&v136[0] + 1) = 0xE000000000000000;
  v32 = v31;
  v144._object = 0x800000000033C270;
  v144._countAndFlagsBits = 0xD000000000000014;
  sub_30C238(v144);
  v145._countAndFlagsBits = 46;
  v145._object = 0xE100000000000000;
  sub_30C238(v145);
  v134[0] = 13;
  sub_30D638();
  v33 = sub_30C098();

  [v32 setAccessibilityIdentifier:v33];

  v124 = OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_descriptionLabelContainerView;
  v34 = *(*(v24 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_descriptionLabelContainerView) + OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_descriptionLabel);
  LODWORD(v35) = 1148846080;
  [v34 setContentCompressionResistancePriority:1 forAxis:v35];
  v36 = [v128 secondaryLabelColor];
  [v34 setTextColor:v36];

  *&v136[0] = 0;
  *(&v136[0] + 1) = 0xE000000000000000;
  v146._object = 0x800000000033C270;
  v146._countAndFlagsBits = 0xD000000000000014;
  sub_30C238(v146);
  v147._countAndFlagsBits = 46;
  v147._object = 0xE100000000000000;
  sub_30C238(v147);
  v134[0] = 3;
  sub_30D638();
  v37 = sub_30C098();

  [v34 setAccessibilityIdentifier:v37];

  v127 = OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_primaryButton;
  v38 = *(v24 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_primaryButton);
  *&v136[0] = 0;
  *(&v136[0] + 1) = 0xE000000000000000;
  v39 = v38;
  v148._object = 0x800000000033C270;
  v148._countAndFlagsBits = 0xD000000000000014;
  sub_30C238(v148);
  v149._countAndFlagsBits = 46;
  v149._object = 0xE100000000000000;
  sub_30C238(v149);
  v134[0] = 4;
  sub_30D638();
  v40 = sub_30C098();

  [v39 setAccessibilityIdentifier:v40];

  v133 = OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_secondaryButton;
  v41 = *(*(v24 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_secondaryButton) + qword_40E820);
  *&v136[0] = 0;
  *(&v136[0] + 1) = 0xE000000000000000;
  v42 = v41;
  v150._object = 0x800000000033C270;
  v150._countAndFlagsBits = 0xD000000000000014;
  sub_30C238(v150);
  v151._countAndFlagsBits = 46;
  v151._object = 0xE100000000000000;
  sub_30C238(v151);
  sub_30D638();
  v43 = sub_30C098();

  [v42 setAccessibilityIdentifier:v43];

  v44 = sub_13FB50(&OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___benefitsLabel, sub_13FBB4);
  *&v136[0] = 0;
  *(&v136[0] + 1) = 0xE000000000000000;
  v152._object = 0x800000000033C270;
  v152._countAndFlagsBits = 0xD000000000000014;
  sub_30C238(v152);
  v153._countAndFlagsBits = 46;
  v153._object = 0xE100000000000000;
  sub_30C238(v153);
  v134[0] = 9;
  sub_30D638();
  v45 = sub_30C098();

  [v44 setAccessibilityIdentifier:v45];

  [*(v24 + v125) setNumberOfLines:*&__dst[5]];
  [*(v24 + v125) setFont:*(&__dst[4] + 1)];
  v46 = *&v130[v24];
  v47 = &v46[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase];
  v48 = *&v46[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase + 16];
  v136[0] = *&v46[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase];
  v136[1] = v48;
  v49 = *&v46[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase + 32];
  v50 = *&v46[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase + 48];
  v51 = *&v46[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase + 64];
  *&v137[10] = *&v46[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase + 74];
  v136[3] = v50;
  *v137 = v51;
  v136[2] = v49;
  v52 = *(&__dst[16] + 10);
  v53 = __dst[16];
  v54 = __dst[14];
  *(v47 + 3) = __dst[15];
  *(v47 + 4) = v53;
  *(v47 + 74) = v52;
  *(v47 + 2) = v54;
  v55 = __dst[13];
  *v47 = __dst[12];
  *(v47 + 1) = v55;
  v56 = v46;
  sub_EB00(&__dst[12], v134, &qword_3FFD68);
  sub_EB68(v136, &qword_3FFD68);
  sub_2CA6A4();

  v57 = *(*(v24 + v124) + OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_descriptionLabel);
  LODWORD(v58) = 1148846080;
  [v57 setContentCompressionResistancePriority:1 forAxis:v58];
  v59 = [v128 secondaryLabelColor];
  [v57 setTextColor:v59];

  [v57 setNumberOfLines:*&__dst[19]];
  v60 = [*(*(v24 + v133) + qword_40E820) titleLabel];
  if (v60)
  {
    v61 = v60;
    [v60 setMinimumScaleFactor:*&__dst[22]];
  }

  v62 = [*(*(v24 + v133) + qword_40E820) titleLabel];
  if (v62)
  {
    v63 = v62;
    [v62 setNumberOfLines:*(&__dst[21] + 1)];
  }

  v64 = OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___benefitsLabel;
  v129 = OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___benefitsLabel;
  [*(v24 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___benefitsLabel) setFont:*&__dst[23]];
  v65 = OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_verticalStackView;
  [v24 addSubview:*(v24 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_verticalStackView)];
  [v24 addSubview:*(v24 + v64)];
  v66 = *(v24 + v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_31FDA0;
  v68 = *(v24 + v125);
  *(v67 + 32) = v68;
  v123 = OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___subtitleButton;
  v69 = *(v24 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___subtitleButton);
  *(v67 + 40) = v69;
  v70 = *&v130[v24];
  *(v67 + 48) = v70;
  v71 = *(v24 + v124);
  *(v67 + 56) = v71;
  v72 = OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_buttonsHorizontalStackView;
  v73 = *(v24 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_buttonsHorizontalStackView);
  *(v67 + 64) = v73;
  v74 = v66;
  v75 = v68;
  v76 = v69;
  v77 = v70;
  v78 = v71;
  v79 = v73;
  v80._rawValue = v67;
  sub_30C688(v80);

  v126 = v72;
  v81 = *(v24 + v72);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_31D470;
  v83 = *(v24 + v127);
  *(v82 + 32) = v83;
  v84 = *(v24 + v133);
  *(v82 + 40) = v84;
  v85 = objc_allocWithZone(UIView);
  v86 = v81;
  v87 = v83;
  v88 = v84;
  *(v82 + 48) = [v85 init];
  v89._rawValue = v82;
  sub_30C688(v89);

  [*(v24 + v65) setCustomSpacing:*(v24 + v123) afterView:*(&__dst[11] + 1)];
  [*(v24 + v65) setCustomSpacing:*&v130[v24] afterView:*&__dst[18]];
  [*(v24 + v72) setCustomSpacing:*(v24 + v127) afterView:*&__dst[21]];
  v131 = objc_opt_self();
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_326BD0;
  v91 = [*(v24 + v65) topAnchor];
  v92 = [v24 topAnchor];
  v93 = [v91 constraintEqualToAnchor:v92];

  *(v90 + 32) = v93;
  v94 = [*(v24 + v65) leadingAnchor];
  v95 = [v24 leadingAnchor];
  v96 = [v94 constraintEqualToAnchor:v95];

  *(v90 + 40) = v96;
  v97 = [*(v24 + v65) trailingAnchor];
  v98 = [v24 trailingAnchor];
  v99 = [v97 constraintEqualToAnchor:v98];

  *(v90 + 48) = v99;
  v100 = [*(v24 + v133) widthAnchor];
  v101 = [*(v24 + v127) widthAnchor];
  v102 = [v100 constraintEqualToAnchor:v101];

  sub_30C888();
  isa = sub_30CA28(v139).super.isa;

  *(v90 + 56) = isa;
  v104 = [*(v24 + v133) heightAnchor];
  v105 = [*(v24 + v127) heightAnchor];
  v106 = [v104 constraintEqualToAnchor:v105];

  *(v90 + 64) = v106;
  v107 = [*&v129[v24] topAnchor];
  v108 = [*(v24 + v126) bottomAnchor];
  v109 = [v107 constraintEqualToAnchor:v108 constant:*(&__dst[22] + 1)];
  sub_13E214(__dst);

  *(v90 + 72) = v109;
  v110 = [*&v129[v24] leadingAnchor];
  v111 = [v24 leadingAnchor];
  v112 = [v110 constraintGreaterThanOrEqualToAnchor:v111];

  *(v90 + 80) = v112;
  v113 = [*&v129[v24] trailingAnchor];
  v114 = [v24 trailingAnchor];

  v115 = [v113 constraintLessThanOrEqualToAnchor:v114];
  *(v90 + 88) = v115;
  v116 = [*&v129[v24] centerXAnchor];
  v117 = [*(v24 + v133) centerXAnchor];
  v118 = [v116 constraintEqualToAnchor:v117];

  LODWORD(v119.rawValue) = 1144750080;
  v120 = sub_30CA28(v119).super.isa;

  *(v90 + 96) = v120;
  sub_124C4(0, &qword_403000);
  v121 = sub_30C358().super.isa;

  [v131 activateConstraints:v121];

  return v24;
}

void sub_140FEC()
{
  v1 = v0;
  v2 = sub_13FCC8();
  [v2 setActive:0];

  v3 = sub_13FD90();
  [v3 setActive:0];

  if (sub_307828())
  {

    v4 = 320;
  }

  else
  {
    v4 = 328;
  }

  [*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_verticalStackView) setCustomSpacing:*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_descriptionLabelContainerView) afterView:*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_style + v4)];
  sub_3078E8();
  v6 = v5;
  if (v5)
  {
  }

  [*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___verticalStackViewBottomConstraintToBottomConstraint) setActive:v6 == 0];
  [*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___verticalStackViewBottomConstraintToBenefitsLabelTopConstraint) setActive:v6 != 0];
  v7 = sub_13FE80();
  [v7 setActive:v6 != 0];
}

uint64_t sub_141124()
{
  v1 = sub_3041E8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_subtitleAction;
  swift_beginAccess();
  sub_EB00(v0 + v5, &v12, &unk_3FBB40);
  if (v13)
  {
    sub_12658(&v12, v14);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = sub_13FB50(&OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___subtitleButton, sub_13F750);
      sub_13E020(v14, v6);

      swift_unknownObjectRelease();
    }

    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    sub_EB68(&v12, &unk_3FBB40);
    sub_3041C8();
    v8 = sub_3041D8();
    v9 = sub_30C798();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "User clicked on OAuth but there was no action available.", v10, 2u);
    }

    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_1414FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_141544()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1415A4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_141640()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_subtitleAction;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_titleLabel;
  *(v1 + v3) = sub_13F658();
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_verticalStackView;
  v5 = [objc_allocWithZone(UIStackView) init];
  [v5 setAxis:1];
  [v5 setAlignment:1];
  v6 = v5;
  v7 = [v6 layer];
  [v7 setAllowsGroupBlending:0];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v4) = v6;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___subtitleButton) = 0;
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_metadataView;
  *(v1 + v8) = sub_13F8BC();
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_descriptionLabelContainerView;
  type metadata accessor for FadingDescriptionLabel();
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = [v10 layer];
  [v11 setAllowsGroupBlending:0];

  LODWORD(v12) = 1148846080;
  [v10 setContentCompressionResistancePriority:1 forAxis:v12];
  *(v1 + v9) = v10;
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_buttonsHorizontalStackView;
  v14 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v14 setAxis:0];
  [v14 setSpacing:0.0];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v13) = v14;
  v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_primaryButton;
  v21 = 2;
  v22 = 0;
  v16 = objc_allocWithZone(type metadata accessor for PlayButton(0));
  sub_2A76A0(&v21, 2, 0);
  v18 = v17;
  LODWORD(v19) = 1148846080;
  [v17 setContentCompressionResistancePriority:0 forAxis:v19];
  *(v1 + v15) = v18;
  v20 = OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_secondaryButton;
  *(v1 + v20) = sub_13F97C();
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___benefitsLabel) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___verticalStackViewBottomConstraintToBottomConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___verticalStackViewBottomConstraintToBenefitsLabelTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___benefitsLabelBottomConstraintToBottomConstraint) = 0;
  sub_30D648();
  __break(1u);
}

void sub_141908()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v22 = sub_30C998();

  v3 = sub_13FB50(&OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___subtitleButton, sub_13F750);
  v4 = [v3 layer];

  [v4 setCompositingFilter:v22];
  v5 = [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_metadataView] layer];
  [v5 setCompositingFilter:v22];

  v6 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_descriptionLabelContainerView];
  v7 = *(v6 + OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_descriptionLabel);
  LODWORD(v8) = 1148846080;
  [v7 setContentCompressionResistancePriority:1 forAxis:v8];
  v9 = [objc_opt_self() secondaryLabelColor];
  [v7 setTextColor:v9];

  v10 = [v7 layer];
  [v10 setCompositingFilter:v22];

  v11 = *(v6 + OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_moreButton);
  LODWORD(v12) = 1148846080;
  [v11 setContentCompressionResistancePriority:1 forAxis:v12];
  v13 = [v11 layer];

  [v13 setCompositingFilter:v22];
  v14 = sub_13FB50(&OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView____lazy_storage___benefitsLabel, sub_13FBB4);
  v15 = [v14 layer];

  [v15 setCompositingFilter:v22];
  if ([*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_secondaryButton] isHidden])
  {
    v16 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews35HorizontalShowHeaderTextContentView_primaryButton];
    v17 = [v1 traitCollection];
    v18 = [v17 userInterfaceStyle];

    v19 = v16 + OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_theme;
    swift_beginAccess();
    v20 = *v19;
    v21 = *(v19 + 8);
    *v19 = v18;
    *(v19 + 8) = 0;
    if ((v21 & 1) != 0 || v20 != v18)
    {
      sub_2A5A44();
    }
  }
}

void ChevronButton.tintColor.setter(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_imageView) setTintColor:a1];
  [*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel) setTextColor:a1];
}

uint64_t ChevronButton.bind(to:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_objectGraph;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void ChevronButton.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = sub_3019B8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel);
  if (a2)
  {
    v13[0] = a1;
    v13[1] = a2;
    v10 = v9;
    sub_3019A8();
    sub_E504();
    sub_30D3E8();
    (*(v6 + 8))(v8, v5);

    v11 = sub_30C098();
  }

  else
  {
    v12 = v9;
    v11 = 0;
  }

  [v9 setText:v11];
}

uint64_t ChevronButton.setAction(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_3019B8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_objectGraph;
  result = swift_beginAccess();
  if (*(v2 + v8))
  {

    v10 = sub_30B018();
    v12 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel);
    if (v11)
    {
      v16[0] = v10;
      v16[1] = v11;
      v13 = v12;
      sub_3019A8();
      sub_E504();
      sub_30D3E8();
      (*(v5 + 8))(v7, v4);

      v14 = sub_30C098();
    }

    else
    {
      v15 = v12;
      v14 = 0;
    }

    [v12 setText:v14];

    v16[3] = sub_30B038();
    v16[4] = sub_142590();
    v16[0] = a1;

    sub_30D388();
    __swift_destroy_boxed_opaque_existential_1(v16);
    [*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_imageView) setHidden:0];
  }

  return result;
}

uint64_t ChevronButton.title.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel) text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_30C0D8();

  return v3;
}

void sub_1420F4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*(*a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel) text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_30C0D8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void (*ChevronButton.title.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = sub_3019B8();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel;
  v4[9] = v7;
  v4[10] = v8;
  v9 = [*(v1 + v8) text];
  if (v9)
  {
    v10 = v9;
    v11 = sub_30C0D8();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  *v4 = v11;
  v4[1] = v13;
  return sub_14228C;
}

void sub_14228C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(*(*a1 + 48) + *(*a1 + 80));
  if (a2)
  {
    if (v3)
    {
      v6 = v2[8];
      v5 = v2[9];
      v7 = v2[7];
      v2[2] = *v2;
      v2[3] = v3;
      v8 = v4;

      sub_3019A8();
      sub_E504();
      sub_30D3E8();
      (*(v6 + 8))(v5, v7);

      v3 = sub_30C098();
    }

    else
    {
      v13 = v4;
    }

    v14 = v2[9];
    [v4 setText:v3];
  }

  else
  {
    if (v3)
    {
      v10 = v2[8];
      v9 = v2[9];
      v11 = v2[7];
      v2[4] = *v2;
      v2[5] = v3;
      v12 = v4;
      sub_3019A8();
      sub_E504();
      sub_30D3E8();
      (*(v10 + 8))(v9, v11);

      v3 = sub_30C098();
    }

    else
    {
      v15 = v4;
    }

    v14 = v2[9];
    [v4 setText:v3];
  }

  free(v14);

  free(v2);
}

uint64_t ChevronButton.useTopBottomMargin.getter()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_useTopBottomMargin;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_142494()
{
  v1 = objc_opt_self();
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_viewConstraints;
  sub_91304();

  isa = sub_30C358().super.isa;

  [v1 deactivateConstraints:isa];

  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_useTopBottomMargin;
  swift_beginAccess();
  *(v0 + v2) = sub_1425E8(*(v0 + v4));

  v5 = sub_30C358().super.isa;

  [v1 activateConstraints:v5];
}

unint64_t sub_142590()
{
  result = qword_3FBDA0;
  if (!qword_3FBDA0)
  {
    sub_30B038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FBDA0);
  }

  return result;
}

uint64_t sub_1425E8(char a1)
{
  if (a1)
  {
    v2 = 6.0;
  }

  else
  {
    v2 = 0.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_31D480;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_stackView;
  v5 = [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_stackView] leadingAnchor];
  v6 = [v1 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v3 + 32) = v7;
  v8 = [*&v1[v4] trailingAnchor];
  v9 = [v1 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v3 + 40) = v10;
  v11 = [*&v1[v4] topAnchor];
  v12 = [v1 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:v2];

  *(v3 + 48) = v13;
  v14 = [*&v1[v4] bottomAnchor];
  v15 = [v1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:-v2];

  *(v3 + 56) = v16;
  return v3;
}

uint64_t (*ChevronButton.useTopBottomMargin.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_142854;
}

uint64_t ChevronButton.adjustsFontSizeToFitWidth.getter()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_adjustsFontSizeToFitWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

id ChevronButton.adjustsFontSizeToFitWidth.setter(char a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_adjustsFontSizeToFitWidth;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return [*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel) setAdjustsFontSizeToFitWidth:a1 & 1];
}

void (*ChevronButton.adjustsFontSizeToFitWidth.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_adjustsFontSizeToFitWidth;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1429A4;
}

void sub_1429A4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    [*(v3[3] + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel) setAdjustsFontSizeToFitWidth:*(v3[3] + v3[4])];
  }

  free(v3);
}

uint64_t ChevronButton.showsChevron.getter()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_showsChevron;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_142A6C(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  v7 = swift_beginAccess();
  *(v3 + v6) = a1;
  return a3(v7);
}

id sub_142AC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel) + OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase;
  v2 = *(v1 + 16);
  v19[0] = *v1;
  v19[1] = v2;
  v4 = *(v1 + 48);
  v3 = *(v1 + 64);
  v5 = *(v1 + 32);
  *&v20[10] = *(v1 + 74);
  v19[3] = v4;
  *v20 = v3;
  v19[2] = v5;
  v6 = *(v1 + 16);
  v21 = *v1;
  v22 = v6;
  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  v9 = *(v1 + 64);
  v26 = *(v1 + 80);
  v24 = v8;
  v25 = v9;
  v23 = v7;
  if (HIBYTE(*&v20[24]) > 0xFEu)
  {
    return [*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_imageView) setImage:0];
  }

  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_showsChevron;
  swift_beginAccess();
  if (*(v0 + v10) != 1)
  {
    return [*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_imageView) setImage:0];
  }

  v11 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_imageView);
  v16[2] = v23;
  v16[3] = v24;
  v16[4] = v25;
  v17 = v26;
  v16[0] = v21;
  v16[1] = v22;
  v18 = *&v20[24];
  sub_EB00(v19, &v15, &qword_4025E0);
  v12 = v11;
  v13 = sub_142C2C(v16);
  [v12 setImage:v13];

  return sub_143A1C(v19);
}

id sub_142C2C(__int128 *a1)
{
  v2 = a1[3];
  v15 = a1[2];
  v16 = v2;
  v17[0] = a1[4];
  *(v17 + 10) = *(a1 + 74);
  v3 = a1[1];
  v14 = *a1;
  v4 = [objc_opt_self() system];
  v5 = [v4 preferredContentSizeCategory];

  v6 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v5];
  v7 = sub_2DAA3C(&v14, v6);
  v8 = [objc_opt_self() fontWithDescriptor:v7 size:0.0];

  v9 = [objc_opt_self() configurationWithFont:v8 scale:*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_imageScale)];
  v10 = sub_30C098();
  v11 = [objc_opt_self() systemImageNamed:v10 withConfiguration:v9];

  if (v11)
  {
    v12 = [v11 imageWithRenderingMode:2];
  }

  else
  {

    return 0;
  }

  return v12;
}

uint64_t (*ChevronButton.showsChevron.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_142E68;
}

uint64_t sub_142E80(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

void sub_142EC4(__int128 *a1)
{
  v2 = a1[1];
  v4 = v2;
  v39 = *a1;
  v3 = v39;
  v40 = v2;
  *&v43[10] = *(a1 + 74);
  v6 = a1[4];
  v7 = a1[2];
  v42 = a1[3];
  v5 = v42;
  *v43 = v6;
  v41 = v7;
  v8 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel);
  v9 = &v8[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase];
  v10 = *&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase + 16];
  v44[0] = *&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase];
  v44[1] = v10;
  v11 = *&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase + 32];
  v12 = *&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase + 48];
  v13 = *&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase + 64];
  *(v45 + 10) = *&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase + 74];
  v44[3] = v12;
  v45[0] = v13;
  v44[2] = v11;
  *(v9 + 2) = v7;
  *(v9 + 3) = v5;
  *(v9 + 4) = a1[4];
  *(v9 + 74) = *(a1 + 74);
  *v9 = v3;
  *(v9 + 1) = v4;
  v14 = v8;
  sub_EB00(&v39, &v46, &qword_4025E0);
  sub_143A1C(v44);
  v15 = *(v9 + 1);
  v46 = *v9;
  v47 = v15;
  v17 = *(v9 + 3);
  v16 = *(v9 + 4);
  v18 = *(v9 + 2);
  *&v50[10] = *(v9 + 74);
  v49 = v17;
  *v50 = v16;
  v48 = v18;
  v19 = *(v9 + 1);
  v51 = *v9;
  v52 = v19;
  v20 = *(v9 + 2);
  v21 = *(v9 + 3);
  v22 = *(v9 + 4);
  v56 = *(v9 + 10);
  v54 = v21;
  v55 = v22;
  v53 = v20;
  v23 = *&v50[24];
  if (HIBYTE(*&v50[24]) <= 0xFEu)
  {
    v36 = v48;
    v37 = v49;
    *v38 = *v50;
    *&v38[10] = *&v50[10];
    v34 = v46;
    v35 = v47;
    sub_EB00(&v34, v31, &qword_3FFD68);
    v24 = [v14 traitCollection];
    v31[2] = v53;
    v31[3] = v54;
    v31[4] = v55;
    v32 = v56;
    v31[0] = v51;
    v31[1] = v52;
    v33 = v23;
    v25 = sub_2DAA3C(v31, v24);
    v26 = [objc_opt_self() fontWithDescriptor:v25 size:0.0];

    v30.receiver = v14;
    v30.super_class = type metadata accessor for DynamicTypeLabel();
    objc_msgSendSuper2(&v30, "setFont:", v26);

    sub_143A1C(&v46);
  }

  else
  {
  }

  if (HIBYTE(*&v43[24]) <= 0xFEu)
  {
    v27 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_imageView);
    v36 = v41;
    v37 = v42;
    *v38 = *v43;
    *&v38[16] = *&v43[16];
    v34 = v39;
    v35 = v40;
    *&v38[24] = *&v43[24];
    v28 = v27;
    v29 = sub_142C2C(&v34);
    [v28 setImage:v29];

    sub_143A1C(&v39);
  }
}

char *sub_143168(__int128 *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel;
  type metadata accessor for DynamicTypeLabel();
  *&v2[v6] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_stackView;
  *&v2[v7] = [objc_allocWithZone(UIStackView) init];
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_imageView;
  *&v2[v8] = [objc_allocWithZone(UIImageView) init];
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_viewConstraints] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_defaultTopBottomMargin] = 0x4018000000000000;
  v2[OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_useTopBottomMargin] = 1;
  v2[OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_adjustsFontSizeToFitWidth] = 0;
  v2[OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_showsChevron] = 1;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_objectGraph] = 0;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_imageScale] = a2;
  v19.receiver = v2;
  v19.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_142EC4(a1);
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_stackView;
  [*&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_stackView] setSpacing:4.0];
  [*&v9[v10] setAxis:0];
  [*&v9[v10] setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = *&v9[v10];
  v12 = v9;
  [v12 addSubview:v11];
  [*&v9[v10] setUserInteractionEnabled:0];
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel;
  [*&v12[OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel] setUserInteractionEnabled:0];
  v14 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_imageView;
  [*&v12[OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_imageView] setUserInteractionEnabled:0];
  LODWORD(v15) = 1148846080;
  [*&v12[v13] setContentCompressionResistancePriority:1 forAxis:v15];
  [*&v9[v10] addArrangedSubview:*&v12[v13]];
  [*&v9[v10] addArrangedSubview:*&v12[v14]];
  [*&v12[v14] setContentMode:4];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  [*&v12[v14] setHidden:1];
  *&v12[OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_viewConstraints] = sub_1425E8(1);

  v16 = objc_opt_self();
  sub_91304();

  isa = sub_30C358().super.isa;

  [v16 activateConstraints:isa];

  return v12;
}

id ChevronButton.tintColor.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel) tintColor];

  return v1;
}

void (*ChevronButton.tintColor.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = [*(v1 + v2) tintColor];
  return sub_1435F0;
}

void sub_1435F0(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_imageView);
  v4 = *(a1 + 16);
  if (a2)
  {
    v5 = *a1;
    [v3 setTintColor:v5];
    [*(v2 + v4) setTextColor:v5];
  }

  else
  {
    v5 = *a1;
    [*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_imageView) setTintColor:?];
    [*(v2 + v4) setTextColor:v5];
  }
}

void sub_14381C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ChevronButton.title.setter(v1, v2);
}

id sub_143894(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_adjustsFontSizeToFitWidth;
  swift_beginAccess();
  *(v3 + v4) = v2;
  return [*(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel) setAdjustsFontSizeToFitWidth:v2];
}

uint64_t keypath_get_3Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_4Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a5;
  v10 = swift_beginAccess();
  *(v8 + v9) = v7;
  return a6(v10);
}

uint64_t sub_143A1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4025E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_143A84()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel;
  type metadata accessor for DynamicTypeLabel();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_stackView;
  *(v0 + v2) = [objc_allocWithZone(UIStackView) init];
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_imageView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_viewConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_defaultTopBottomMargin) = 0x4018000000000000;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_useTopBottomMargin) = 1;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_adjustsFontSizeToFitWidth) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_showsChevron) = 1;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_objectGraph) = 0;
  sub_30D648();
  __break(1u);
}

void sub_143BB8(int64x2_t *a1@<X8>)
{
  v3 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___layoutConstants];
  if (v1[OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___layoutConstants + 80])
  {
    v4 = [v1 traitCollection];
    v5 = [v4 userInterfaceIdiom];

    v6 = 230.0;
    if (v5 == &dword_4 + 1)
    {
      v6 = 200.0;
    }

    v7 = 175.0;
    if (v5 != &dword_4 + 1)
    {
      v7 = 200.0;
    }

    v8 = 9.0;
    if (v5 == &dword_4 + 1)
    {
      v9 = 14.0;
    }

    else
    {
      v8 = 5.0;
      v9 = 12.0;
    }

    *v3 = v6;
    *(v3 + 1) = v6;
    *(v3 + 2) = v7;
    *(v3 + 3) = 0x4082200000000000;
    *(v3 + 4) = v8;
    *(v3 + 40) = xmmword_326CF0;
    *(v3 + 7) = 0x4038000000000000;
    *(v3 + 8) = v9;
    *(v3 + 9) = 0x4038000000000000;
    v3[80] = 0;
    v10 = vdupq_lane_s64(*&v6, 0);
    v11 = vdupq_lane_s64(0x4082200000000000, 0);
    *v11.i64 = v7;
    __asm { FMOV            V2.2D, #8.0 }

    *_Q2.i64 = v8;
    __asm { FMOV            V3.2D, #24.0 }

    v18.i64[1] = _Q3.i64[1];
    *v18.i64 = v9;
  }

  else
  {
    v10 = *v3;
    v11 = *(v3 + 1);
    _Q2 = *(v3 + 2);
    _Q3 = *(v3 + 3);
    v18 = *(v3 + 4);
  }

  *a1 = v10;
  a1[1] = v11;
  a1[2] = _Q2;
  a1[3] = _Q3;
  a1[4] = v18;
}

id sub_143CEC()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___horizontalStack;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___horizontalStack);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___horizontalStack);
  }

  else
  {
    v4 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v4 setAxis:0];
    [v4 setLayoutMarginsRelativeArrangement:1];
    v5 = v4;
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    sub_143BB8(v9);
    [v5 setLayoutMargins:{0.0, 0.0, v10 + 1.5, 0.0}];

    [v5 setSpacing:*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___layoutConstants + 48)];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_143E0C()
{
  v0 = type metadata accessor for EpisodeHeaderSubtitle();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews21EpisodeHeaderSubtitle_presenter] = 0;
  v1[OBJC_IVAR____TtC23ShelfKitCollectionViews21EpisodeHeaderSubtitle_style] = 0;
  v9.receiver = v1;
  v9.super_class = v0;
  v2 = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_124C4(0, &qword_408100);
  v3 = v2;
  v4 = sub_30CCF8();
  v5 = sub_30CDD8();
  v6 = sub_30CD28();

  [v3 setFont:v6];
  [v3 setNumberOfLines:1];
  v7 = [objc_opt_self() secondaryLabelColor];
  [v3 setTextColor:v7];

  return v3;
}

id sub_143F4C()
{
  v0 = type metadata accessor for EpisodeHeaderEntitlementDisplay();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderEntitlementDisplay_presenter] = 0;
  v1[OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderEntitlementDisplay_style] = 1;
  v7.receiver = v1;
  v7.super_class = v0;
  v2 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v2 setAdjustsFontForContentSizeCategory:1];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor:v3];

  v4 = v2;
  [v4 setNumberOfLines:2];
  sub_124C4(0, &qword_408100);
  v5 = sub_30CDB8();
  [v4 setFont:v5];

  [v4 setTextAlignment:4];
  return v4;
}

char *sub_144088()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___showButton;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___showButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___showButton);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for PrimaryButtonView());
    v6 = sub_148254(2u);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_144100()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___primaryButton;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___primaryButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___primaryButton);
  }

  else
  {
    v4 = _UISolariumEnabled();
    v5 = 2;
    if (!v4)
    {
      v5 = 0;
    }

    v6 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_playButtonSize);
    v14 = v5;
    v15 = 1;
    v7 = objc_allocWithZone(type metadata accessor for PlayButton(0));
    v8 = v6;
    v9 = v0;
    sub_2A76A0(&v14, v8, 0);
    v10 = *(v0 + v1);
    *(v9 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

id sub_1441B4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___layoutConstants];
  v22 = 1;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  *(v10 + 4) = 0u;
  v10[80] = 1;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_artworkWidthConstraint] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_topSpacerConstraint] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___horizontalStack] = 0;
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_verticalStack;
  v12 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v12 setAxis:1];
  [v12 setDistribution:0];
  [v12 setAlignment:1];
  [v12 setLayoutMarginsRelativeArrangement:1];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v11] = v12;
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_buttonStackView;
  v14 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v14 setAxis:0];
  [v14 setSpacing:10.0];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v13] = v14;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_episodeHeaderSubtitlePresenter] = 0;
  v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_episodeHeaderSubtitle;
  *&v4[v15] = sub_143E0C();
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_episodeHeaderEntitlementDisplayPresenter] = 0;
  v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_episodeHeaderEntitlementDisplay;
  *&v4[v16] = sub_143F4C();
  v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_episodeTitle;
  v18 = [objc_allocWithZone(UILabel) init];
  v19 = [objc_opt_self() labelColor];
  [v18 setTextColor:v19];

  [v18 setAdjustsFontForContentSizeCategory:1];
  [v18 setAccessibilityTraits:UIAccessibilityTraitHeader];
  *&v4[v17] = v18;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___showButton] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___primaryButton] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_episodePlayStateController] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_objectGraph] = 0;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_playButtonSize] = 1;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___downloadButton] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___bookmarkButton] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___artworkView] = 0;
  v21.receiver = v4;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
}

void sub_1444DC(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_objectGraph) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDD0);

  sub_30B8E8();
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_episodePlayStateController) = v4;

  sub_144590(a1);
  v3 = sub_145024();
  sub_21C008(a1);
}

void sub_144590(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_artworkWidthConstraint;
  if (!*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_artworkWidthConstraint])
  {
    v3 = v1;
    v4 = [v1 contentView];
    sub_30C6E8();
    [v4 setLayoutMargins:?];

    v5 = [v3 contentView];
    v6 = sub_143CEC();
    [v5 addSubview:v6];

    type metadata accessor for SeparatorView();
    v91 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v91 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [v3 contentView];
    [v7 addSubview:v91];

    v8 = sub_145024();
    v9 = [v8 widthAnchor];

    sub_143BB8(v95);
    v10 = [v9 constraintEqualToConstant:*v95[0].i64];

    v11 = *(v3 + v2);
    *(v3 + v2) = v10;

    v92 = v2;
    v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___artworkView;
    v13 = [*(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___artworkView) heightAnchor];
    v14 = [*(v3 + v12) widthAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    v16 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___horizontalStack);
    v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___horizontalStack;
    v90 = OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___horizontalStack;
    v18 = *(v3 + v12);
    v89 = v15;
    [v16 addArrangedSubview:v18];
    v19 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_verticalStack);
    [*(v3 + v17) addArrangedSubview:v19];
    v20 = [objc_allocWithZone(UIView) init];
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = [v20 heightAnchor];
    v22 = [v21 constraintEqualToConstant:0.0];

    LODWORD(v23.rawValue) = 1132068864;
    isa = sub_30CA28(v23).super.isa;

    v25 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_topSpacerConstraint);
    *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_topSpacerConstraint) = isa;

    v26 = [objc_allocWithZone(UIView) init];
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    v88 = v20;
    [v19 addArrangedSubview:v20];
    v27 = OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_episodeHeaderSubtitle;
    [v19 addArrangedSubview:*(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_episodeHeaderSubtitle)];
    v28 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_episodeTitle);
    [v19 addArrangedSubview:v28];
    v29 = sub_144088();
    [v19 addArrangedSubview:v29];

    v87 = v26;
    [v19 addArrangedSubview:v26];
    v30 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_buttonStackView);
    [v19 addArrangedSubview:v30];
    LODWORD(v31) = 1148846080;
    [v28 setContentHuggingPriority:1 forAxis:v31];
    v32 = (v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___layoutConstants);
    [v19 setCustomSpacing:*(v3 + v27) afterView:*(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___layoutConstants + 32)];
    [v19 setCustomSpacing:v28 afterView:v32[5]];
    v33 = sub_144100();
    [v30 addArrangedSubview:v33];

    v34 = sub_145128();
    [v30 addArrangedSubview:v34];

    v35 = sub_145394();
    [v30 addArrangedSubview:v35];

    [v30 addArrangedSubview:*(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_episodeHeaderEntitlementDisplay)];
    v36 = OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___primaryButton;
    v86 = v30;
    [v30 setCustomSpacing:*(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___primaryButton) afterView:v32[8]];
    v37 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___showButton);
    sub_147BC4(a1);

    v38 = *(v3 + v36);
    v39 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_objectGraph;
    swift_beginAccess();
    *&v38[v39] = a1;
    v40 = v38;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_326D00;
    v42 = [*(v3 + v90) leadingAnchor];
    v43 = [v3 contentView];
    v44 = [v43 layoutMarginsGuide];

    v45 = [v44 leadingAnchor];
    v46 = [v42 constraintEqualToAnchor:v45];

    *(v41 + 32) = v46;
    v47 = [*(v3 + v90) trailingAnchor];
    v48 = [v3 contentView];
    v49 = [v48 layoutMarginsGuide];

    v50 = [v49 trailingAnchor];
    v51 = [v47 constraintEqualToAnchor:v50];

    *(v41 + 40) = v51;
    v52 = [*(v3 + v90) topAnchor];
    v53 = [v3 contentView];
    v54 = [v53 layoutMarginsGuide];

    v55 = [v54 topAnchor];
    v56 = [v52 constraintEqualToAnchor:v55];

    *(v41 + 48) = v56;
    v57 = [*(v3 + v90) bottomAnchor];
    v58 = [v3 contentView];
    v59 = [v58 bottomAnchor];

    v60 = [v57 constraintEqualToAnchor:v59];
    sub_30C888();
    v61 = sub_30CA28(v96).super.isa;

    *(v41 + 56) = v61;
    v62 = [v91 leadingAnchor];
    v63 = [v3 contentView];
    v64 = [v63 layoutMarginsGuide];

    v65 = [v64 leadingAnchor];
    v66 = [v62 constraintEqualToAnchor:v65];

    *(v41 + 64) = v66;
    v67 = [v91 trailingAnchor];
    v68 = [v3 contentView];
    v69 = [v68 layoutMarginsGuide];

    v70 = [v69 trailingAnchor];
    v71 = [v67 constraintEqualToAnchor:v70];

    *(v41 + 72) = v71;
    v72 = [v91 bottomAnchor];

    v73 = [v3 contentView];
    v74 = [v73 bottomAnchor];

    v75 = [v72 constraintEqualToAnchor:v74 constant:-1.0];
    *(v41 + 80) = v75;
    v76 = *&v92[v3];
    if (v76)
    {
      v93 = objc_opt_self();
      *(v41 + 88) = v76;
      *(v41 + 96) = v89;
      v77 = v76;
      v78 = [v87 heightAnchor];
      v79 = [v88 heightAnchor];
      v80 = [v78 constraintEqualToAnchor:v79];

      sub_30C888();
      v81 = sub_30CA28(v97).super.isa;

      *(v41 + 104) = v81;
      v82 = [v86 trailingAnchor];
      v83 = [v19 trailingAnchor];
      v84 = [v82 constraintEqualToAnchor:v83];

      *(v41 + 112) = v84;
      sub_124C4(0, &qword_403000);
      v85 = sub_30C358().super.isa;

      [v93 activateConstraints:v85];

      sub_145464(a1);
    }

    else
    {
      __break(1u);
    }
  }
}

char *sub_145024()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___artworkView;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___artworkView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___artworkView);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(type metadata accessor for CachingArtworkView()) init];
    sub_2D5EC(1, 14.0);
    v6 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.15];
    v7 = &v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
    v8 = *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
    *v7 = v6;
    *(v7 + 8) = xmmword_326D10;
    *(v7 + 3) = 0x4024000000000000;
    v9 = v6;

    sub_2D294();
    v10 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

_BYTE *sub_145128()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___downloadButton;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___downloadButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___downloadButton);
  }

  else
  {
    v4 = sub_14518C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

_BYTE *sub_14518C(uint64_t a1)
{
  v2 = type metadata accessor for DownloadButton.Style(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  sub_3028A8();
  v6 = [objc_opt_self() tintColor];
  v7 = [v6 colorWithAlphaComponent:0.2];

  LOBYTE(v26[0]) = 0;
  LOBYTE(v25[0]) = 0;
  sub_302888();
  v8 = &v5[*(v3 + 28)];
  __asm { FMOV            V0.2D, #30.0 }

  *v8 = _Q0;
  v8[16] = 0;
  *(v8 + 24) = xmmword_326D20;
  __asm { FMOV            V0.2D, #10.0 }

  *(v8 + 40) = _Q0;
  v8[56] = 0;
  *(v8 + 8) = 0x4000000000000000;
  *(v8 + 9) = 0;
  *(v8 + 10) = v7;
  *(v8 + 11) = 0;
  v5[*(v3 + 36)] = 0;
  LOBYTE(a1) = *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_playButtonSize);
  sub_2A50F0(a1, v25);
  sub_1415EC(v25);
  v15 = v25[0];
  sub_2A50F0(a1, v26);
  sub_1415EC(v26);
  v16 = v26[0];
  v17 = objc_allocWithZone(type metadata accessor for DownloadButton(0));
  v18 = sub_19AB24(v5, v15, v16, 0);
  v19 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlayHidesBackground;
  swift_beginAccess();
  v18[v19] = 0;
  v20 = v18;
  sub_24E1B8();
  v21 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style;
  swift_beginAccess();
  v22 = v20[v21];
  v20[v21] = 2;
  if (v22 != 2)
  {
    sub_24E1B8();
  }

  return v20;
}

id sub_145394()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___bookmarkButton;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___bookmarkButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___bookmarkButton);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_playButtonSize);
    sub_2A50F0(v4, v14);
    sub_1415EC(v14);
    v5 = v14[0];
    sub_2A50F0(v4, v15);
    sub_1415EC(v15);
    v6 = v15[0];
    v7 = objc_allocWithZone(type metadata accessor for BookmarkButton());
    v8 = v6;
    v9 = v0;
    v10 = sub_A7488(v5, v8, 0);
    v11 = *(v0 + v1);
    *(v9 + v1) = v10;
    v3 = v10;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

void sub_145464(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for EpisodeHeaderSubtitlePresenter();
  swift_allocObject();

  v5 = sub_13A6E8(v4);

  *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_episodeHeaderSubtitlePresenter) = v5;

  v6 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_episodeHeaderSubtitle);
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
  *(v10 + 56) = 1;
  *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_episodeHeaderEntitlementDisplayPresenter) = v10;

  v11 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_episodeHeaderEntitlementDisplay);
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

void sub_145608(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEA58);
  __chkstk_darwin(v4 - 8);
  v6 = &v93 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v7 - 8);
  v99 = &v93 - v8;
  v9 = sub_303398();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v98 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3031C8();
  v116 = *(v12 - 8);
  __chkstk_darwin(v12);
  v97 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v93 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4051B8);
  __chkstk_darwin(v17 - 8);
  v112 = &v93 - v18;
  v114 = sub_30A388();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v107 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v108 = &v93 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4051C0);
  __chkstk_darwin(v22 - 8);
  v24 = &v93 - v23;
  v111 = sub_30A3F8();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v105 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v106 = &v93 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v28 - 8);
  v115 = &v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_objectGraph);
  if (v32)
  {
    v100 = &v93 - v31;
    v94 = v10;
    v95 = v9;
    v104 = v6;
    v33 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_episodeTitle);

    sub_3081E8();
    v103 = v32;
    v96 = v16;
    v109 = v12;
    v102 = v24;
    v101 = a1;
    if (v34)
    {
      v35 = sub_30C098();
    }

    else
    {
      v35 = 0;
    }

    [v33 setText:v35];

    v36 = sub_145024();
    v121.i64[0] = 0;
    v121.i64[1] = 0xE000000000000000;
    v123._countAndFlagsBits = 0xD00000000000001ELL;
    v123._object = 0x8000000000336AD0;
    sub_30C238(v123);
    v124._countAndFlagsBits = 46;
    v124._object = 0xE100000000000000;
    sub_30C238(v124);
    LOBYTE(aBlock) = 4;
    sub_30D638();
    v37 = sub_30C098();

    [v36 setAccessibilityIdentifier:v37];

    v121.i64[0] = 0;
    v121.i64[1] = 0xE000000000000000;
    v125._object = 0x800000000033C270;
    v125._countAndFlagsBits = 0xD000000000000014;
    sub_30C238(v125);
    v126._countAndFlagsBits = 46;
    v126._object = 0xE100000000000000;
    sub_30C238(v126);
    LOBYTE(aBlock) = 18;
    sub_30D638();
    v38 = sub_30C098();

    [v33 setAccessibilityIdentifier:v38];

    v39 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_episodeHeaderSubtitle);
    v121.i64[0] = 0;
    v121.i64[1] = 0xE000000000000000;
    v40 = v39;
    v127._object = 0x800000000033C270;
    v127._countAndFlagsBits = 0xD000000000000014;
    sub_30C238(v127);
    v128._countAndFlagsBits = 46;
    v128._object = 0xE100000000000000;
    sub_30C238(v128);
    LOBYTE(aBlock) = 19;
    sub_30D638();
    v41 = sub_30C098();

    [v40 setAccessibilityIdentifier:v41];

    v42 = sub_144100();
    v121.i64[0] = 0;
    v121.i64[1] = 0xE000000000000000;
    v129._object = 0x800000000033C270;
    v129._countAndFlagsBits = 0xD000000000000014;
    sub_30C238(v129);
    v130._countAndFlagsBits = 46;
    v130._object = 0xE100000000000000;
    sub_30C238(v130);
    LOBYTE(aBlock) = 4;
    sub_30D638();
    v43 = sub_30C098();

    [v42 setAccessibilityIdentifier:v43];

    v44 = sub_144088();
    v121.i64[0] = 0;
    v121.i64[1] = 0xE000000000000000;
    v131._object = 0x800000000033C270;
    v131._countAndFlagsBits = 0xD000000000000014;
    sub_30C238(v131);
    v132._countAndFlagsBits = 46;
    v132._object = 0xE100000000000000;
    sub_30C238(v132);
    LOBYTE(aBlock) = 2;
    sub_30D638();
    v45 = sub_30C098();

    [v44 setAccessibilityIdentifier:v45];

    v46 = OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___showButton;
    v47 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___showButton);
    v48 = v101;
    sub_3080D8();
    v49 = v100;
    sub_307A08();

    sub_147C7C(v49);

    sub_EB68(v49, &unk_402FF0);
    v100 = v46;
    v50 = *(v2 + v46);
    v51 = sub_308158();
    sub_148068(v51);

    v52 = v102;
    sub_308188();
    v53 = v110;
    v54 = v111;
    if ((*(v110 + 48))(v52, 1, v111) == 1)
    {
      sub_EB68(v52, &qword_4051C0);
    }

    else
    {
      v56 = v106;
      (*(v53 + 32))(v106, v52, v54);
      v57 = sub_145128();
      (*(v53 + 16))(v105, v56, v54);
      sub_30A438();
      swift_allocObject();

      v58 = sub_30A408();
      sub_19AA70(v58);

      (*(v53 + 8))(v56, v54);
    }

    v55 = v104;
    v59 = v114;
    v60 = v112;
    v61 = sub_145128();
    [v61 setHidden:*(*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___downloadButton) + OBJC_IVAR____TtC23ShelfKitCollectionViews14DownloadButton_presenter) == 0];

    sub_308178();
    v62 = v113;
    v63 = (*(v113 + 48))(v60, 1, v59);
    v64 = v109;
    if (v63 == 1)
    {
      sub_EB68(v60, &qword_4051B8);
    }

    else
    {
      v65 = v108;
      (*(v62 + 32))(v108, v60, v59);
      v66 = v55;
      v67 = sub_145394();
      (*(v62 + 16))(v107, v65, v59);
      sub_30A3C8();
      swift_allocObject();

      v68 = sub_30A398();
      sub_A73D4(v68);

      v55 = v66;
      v64 = v109;
      (*(v62 + 8))(v65, v59);
    }

    v69 = sub_145394();
    [v69 setHidden:*(*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___bookmarkButton) + OBJC_IVAR____TtC23ShelfKitCollectionViews14BookmarkButton_presenter) == 0];

    if ((sub_3080B8() & 1) != 0 && sub_308148())
    {
      v70 = v115;
      sub_307A08();

      if ((*(v116 + 48))(v70, 1, v64) != 1)
      {
        v71 = v96;
        sub_6D85C(v70, v96);
        v72 = OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___artworkView;
        v73 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___artworkView);
        sub_143BB8(&v121);
        v74 = [v2 traitCollection];
        sub_30C958();

        sub_6D8C0(v71, v97);
        v75 = sub_303DF8();
        (*(*(v75 - 8) + 56))(v99, 1, 1, v75);
        v119 = 0;
        aBlock = 0u;
        v118 = 0u;
        v76 = v98;
        sub_303358();
        sub_21C4B8(v76);

        (*(v94 + 8))(v76, v95);
        v77 = sub_143CEC();
        [v77 insertArrangedSubview:*(v2 + v72) atIndex:0];

        v78 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_topSpacerConstraint);
        if (!v78)
        {
LABEL_28:
          __break(1u);
          return;
        }

        [v78 setActive:0];
        [*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_verticalStack) setCustomSpacing:*&v100[v2] afterView:0.0];
        sub_6D924(v71);
        goto LABEL_19;
      }
    }

    else
    {
      v70 = v115;
      (*(v116 + 56))(v115, 1, 1, v64);
    }

    sub_EB68(v70, &unk_402FF0);
    [*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___artworkView) removeFromSuperview];
    v79 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_topSpacerConstraint);
    if (!v79)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    [v79 setActive:1];
    v80 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_verticalStack);
    sub_143BB8(&v121);
    [v80 setCustomSpacing:*&v100[v2] afterView:v122];
LABEL_19:
    v81 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_episodeHeaderSubtitlePresenter);
    if (v81)
    {
      *(v81 + 32) = v48;

      sub_13A124(v82);

      v83 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_episodeHeaderEntitlementDisplayPresenter);
      if (!v83)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      *(v83 + 32) = v48;

      sub_1392DC();

      v84 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___primaryButton);
      v85 = sub_3081A8();
      *(&v118 + 1) = sub_30B038();
      v119 = sub_146EF8(&qword_3FBDA0, 255, &type metadata accessor for Action);
      *&aBlock = v85;
      sub_308218();
      sub_308208();
      sub_309718();
      v86 = sub_309778();
      (*(*(v86 - 8) + 56))(v55, 0, 1, v86);
      v87 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_data;
      swift_beginAccess();
      sub_749E4(v55, v84 + v87);
      swift_endAccess();
      v88 = objc_opt_self();
      v89 = swift_allocObject();
      *(v89 + 16) = v84;
      v90 = swift_allocObject();
      *(v90 + 16) = sub_74A54;
      *(v90 + 24) = v89;
      v119 = sub_293C0;
      v120 = v90;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v118 = sub_19D688;
      *(&v118 + 1) = &block_descriptor_26;
      v91 = _Block_copy(&aBlock);
      v92 = v84;

      [v88 performWithoutAnimation:v91];
      _Block_release(v91);
      LOBYTE(v88) = swift_isEscapingClosureAtFileLocation();

      if ((v88 & 1) == 0)
      {
        sub_EB68(v55, &qword_3FEA58);
        return;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }
}

void sub_146748()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_episodeTitle];
  v2 = [v1 text];
  if (v2)
  {
    v3 = v2;
    v4 = sub_30C0D8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  [v1 bounds];
  Width = CGRectGetWidth(v11);
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
  v9 = sub_1AD6D0(v4, v6, inited, Width);

  swift_setDeallocating();
  swift_arrayDestroy();
  [v1 setFont:v9];
  [v1 setNumberOfLines:0];
  [v1 setNeedsLayout];
  [v1 layoutIfNeeded];
}

void sub_14696C()
{

  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___artworkView);
}

uint64_t sub_146BFC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_146C1C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 80) = v3;
  return result;
}

uint64_t sub_146C88(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_146EF8(&qword_4051C8, v3, type metadata accessor for HorizontalEpisodeHeaderCollectionViewCell);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v4);
}

uint64_t sub_146E98()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_146EF8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_146F40()
{
  v1 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___layoutConstants;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 1;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_artworkWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_topSpacerConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___horizontalStack) = 0;
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_verticalStack;
  v3 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v3 setAxis:1];
  [v3 setDistribution:0];
  [v3 setAlignment:1];
  [v3 setLayoutMarginsRelativeArrangement:1];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v2) = v3;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_buttonStackView;
  v5 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v5 setAxis:0];
  [v5 setSpacing:10.0];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v4) = v5;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_episodeHeaderSubtitlePresenter) = 0;
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_episodeHeaderSubtitle;
  *(v0 + v6) = sub_143E0C();
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_episodeHeaderEntitlementDisplayPresenter) = 0;
  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_episodeHeaderEntitlementDisplay;
  *(v0 + v7) = sub_143F4C();
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_episodeTitle;
  v9 = [objc_allocWithZone(UILabel) init];
  v10 = [objc_opt_self() labelColor];
  [v9 setTextColor:v10];

  [v9 setAdjustsFontForContentSizeCategory:1];
  [v9 setAccessibilityTraits:UIAccessibilityTraitHeader];
  *(v0 + v8) = v9;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___showButton) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___primaryButton) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_episodePlayStateController) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_objectGraph) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell_playButtonSize) = 1;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___downloadButton) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___bookmarkButton) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews41HorizontalEpisodeHeaderCollectionViewCell____lazy_storage___artworkView) = 0;
  sub_30D648();
  __break(1u);
}

_BYTE *sub_14721C()
{
  v0 = sub_26FC0C();
  v1 = objc_allocWithZone(UIColor);
  v2 = v0;
  v3 = [v1 initWithWhite:0.0 alpha:0.13];
  v4 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
  v5 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
  *v4 = v3;
  v4[1] = 0x4008000000000000;
  v4[2] = 0;
  v4[3] = 0;
  v6 = v3;

  sub_2D294();
  v7 = v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style];
  v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style] = 1;
  v9 = v7;
  sub_2DE78(&v9);

  return v2;
}

char *sub_1472E4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews23LegacyPrimaryButtonView_hStackView;
  v12 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v12 setAxis:0];
  [v12 setAlignment:3];
  v13 = v12;
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [v13 layer];

  [v14 setAllowsGroupBlending:0];
  [v13 setSpacing:6.0];
  *&v5[v11] = v13;
  v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews23LegacyPrimaryButtonView_icon;
  *&v5[v15] = sub_14721C();
  v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews23LegacyPrimaryButtonView_button;
  if (qword_3FACE8 != -1)
  {
    swift_once();
  }

  v54[2] = xmmword_429C10;
  v54[3] = unk_429C20;
  v55[0] = xmmword_429C30;
  *(v55 + 10) = *(&xmmword_429C30 + 10);
  v54[0] = xmmword_429BF0;
  v54[1] = unk_429C00;
  v52[2] = xmmword_429C10;
  v52[3] = unk_429C20;
  v53[0] = xmmword_429C30;
  *(v53 + 10) = *(&xmmword_429C30 + 10);
  v52[0] = xmmword_429BF0;
  v52[1] = unk_429C00;
  v17 = objc_allocWithZone(type metadata accessor for ChevronButton());
  sub_8FC54(v54, v51);
  v18 = sub_143168(v52, 1);
  LODWORD(v19) = 1148846080;
  [v18 setContentCompressionResistancePriority:1 forAxis:v19];
  *&v5[v16] = v18;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews23LegacyPrimaryButtonView_objectGraph] = 0;
  v50.receiver = v5;
  v50.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v50, "initWithFrame:", a1, a2, a3, a4);
  v21 = OBJC_IVAR____TtC23ShelfKitCollectionViews23LegacyPrimaryButtonView_hStackView;
  v22 = *&v20[OBJC_IVAR____TtC23ShelfKitCollectionViews23LegacyPrimaryButtonView_hStackView];
  v23 = v20;
  [v23 addSubview:v22];
  v24 = *&v20[v21];
  sub_30CE98();

  v25 = *&v20[v21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_317F20;
  v27 = OBJC_IVAR____TtC23ShelfKitCollectionViews23LegacyPrimaryButtonView_icon;
  v28 = *&v23[OBJC_IVAR____TtC23ShelfKitCollectionViews23LegacyPrimaryButtonView_icon];
  *(v26 + 32) = v28;
  v49 = OBJC_IVAR____TtC23ShelfKitCollectionViews23LegacyPrimaryButtonView_button;
  v29 = *&v23[OBJC_IVAR____TtC23ShelfKitCollectionViews23LegacyPrimaryButtonView_button];
  *(v26 + 40) = v29;
  v30 = v25;
  v31 = v28;
  v32 = v29;
  v33._rawValue = v26;
  sub_30C688(v33);

  v34 = objc_opt_self();
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_317F20;
  v36 = [*&v23[v27] heightAnchor];
  v37 = [v36 constraintEqualToConstant:22.0];

  *(v35 + 32) = v37;
  v38 = [*&v23[v27] heightAnchor];
  v39 = [*&v23[v27] widthAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  *(v35 + 40) = v40;
  sub_91304();
  isa = sub_30C358().super.isa;

  [v34 activateConstraints:isa];

  v42 = *&v23[v27];
  *&v52[0] = 0;
  *(&v52[0] + 1) = 0xE000000000000000;
  v43 = v42;
  v56._object = 0x800000000033C270;
  v56._countAndFlagsBits = 0xD000000000000014;
  sub_30C238(v56);
  v57._countAndFlagsBits = 46;
  v57._object = 0xE100000000000000;
  sub_30C238(v57);
  v51[0] = 17;
  sub_30D638();
  v44 = sub_30C098();

  [v43 setAccessibilityIdentifier:v44];

  v45 = *&v23[v49];
  *&v52[0] = 0;
  *(&v52[0] + 1) = 0xE000000000000000;
  v46 = v45;
  v58._object = 0x800000000033C270;
  v58._countAndFlagsBits = 0xD000000000000014;
  sub_30C238(v58);
  v59._countAndFlagsBits = 46;
  v59._object = 0xE100000000000000;
  sub_30C238(v59);
  v51[0] = 1;
  sub_30D638();
  v47 = sub_30C098();

  [v46 setAccessibilityIdentifier:v47];

  return v23;
}

uint64_t sub_14792C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews23LegacyPrimaryButtonView_objectGraph) = a1;

  v3 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews23LegacyPrimaryButtonView_button);
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_objectGraph;
  swift_beginAccess();
  *(v3 + v4) = a1;
}

void sub_1479BC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews23LegacyPrimaryButtonView_hStackView;
  v3 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v3 setAxis:0];
  [v3 setAlignment:3];
  v4 = v3;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [v4 layer];

  [v5 setAllowsGroupBlending:0];
  [v4 setSpacing:6.0];
  *(v1 + v2) = v4;
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews23LegacyPrimaryButtonView_icon;
  *(v1 + v6) = sub_14721C();
  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews23LegacyPrimaryButtonView_button;
  if (qword_3FACE8 != -1)
  {
    swift_once();
  }

  v14[2] = xmmword_429C10;
  v14[3] = unk_429C20;
  v15[0] = xmmword_429C30;
  *(v15 + 10) = *(&xmmword_429C30 + 10);
  v14[0] = xmmword_429BF0;
  v14[1] = unk_429C00;
  v12[2] = xmmword_429C10;
  v12[3] = unk_429C20;
  v13[0] = xmmword_429C30;
  *(v13 + 10) = *(&xmmword_429C30 + 10);
  v12[0] = xmmword_429BF0;
  v12[1] = unk_429C00;
  v8 = objc_allocWithZone(type metadata accessor for ChevronButton());
  sub_8FC54(v14, v11);
  v9 = sub_143168(v12, 1);
  LODWORD(v10) = 1148846080;
  [v9 setContentCompressionResistancePriority:1 forAxis:v10];
  *(v1 + v7) = v9;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews23LegacyPrimaryButtonView_objectGraph) = 0;
  sub_30D648();
  __break(1u);
}

void sub_147BC4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17PrimaryButtonView_objectGraph) = a1;

  v3 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17PrimaryButtonView_button);
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_objectGraph;
  swift_beginAccess();
  *(v3 + v4) = a1;

  v5 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17PrimaryButtonView_icon);
  sub_21C008(a1);
}

id sub_147C7C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v3 - 8);
  v26 = &v25 - v4;
  v5 = sub_303398();
  v27 = *(v5 - 8);
  v28 = v5;
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_3031C8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  sub_EB00(a1, v10, &unk_402FF0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_125E18(v10);
    return [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17PrimaryButtonView_icon] setHidden:1];
  }

  else
  {
    sub_6D85C(v10, v17);
    v19 = OBJC_IVAR____TtC23ShelfKitCollectionViews17PrimaryButtonView_icon;
    [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17PrimaryButtonView_icon] setHidden:0];
    if (v17[64] == 255)
    {
      if (qword_3FAFE8 != -1)
      {
        swift_once();
      }

      v20 = qword_42B028;
    }

    else
    {
      v20 = sub_303D48();
    }

    v21 = v20;
    [*&v1[v19] setBackgroundColor:v20];
    v22 = *&v1[v19];
    v23 = [v1 traitCollection];
    sub_30C958();

    sub_6D8C0(v17, v14);
    v24 = sub_303DF8();
    (*(*(v24 - 8) + 56))(v26, 1, 1, v24);
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    sub_303358();
    sub_21C4B8(v7);

    (*(v27 + 8))(v7, v28);
    return sub_6D924(v17);
  }
}

id sub_148068(uint64_t a1)
{
  v3 = sub_3019B8();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17PrimaryButtonView_button);

    v9 = sub_30B018();
    v11 = *(v8 + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel);
    if (v10)
    {
      v17[0] = v9;
      v17[1] = v10;
      v12 = v11;
      sub_3019A8();
      sub_E504();
      sub_30D3E8();
      (*(v4 + 8))(v7, v3);

      v13 = sub_30C098();
    }

    else
    {
      v16 = v11;
      v13 = 0;
    }

    [v11 setText:v13];

    ChevronButton.setAction(_:)(a1);
  }

  else
  {
    v14 = *(*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17PrimaryButtonView_button) + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel);

    return [v14 setText:{0, v5}];
  }
}

char *sub_148254(unsigned __int8 a1)
{
  v2 = v1;
  v4 = a1;
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews17PrimaryButtonView_hStackView;
  v7 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v7 setAxis:0];
  [v7 setAlignment:3];
  v8 = v7;
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [v8 layer];

  [v9 setAllowsGroupBlending:0];
  [v8 setSpacing:6.0];
  *&v2[v6] = v8;
  __asm { FMOV            V0.2D, #22.0 }

  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews17PrimaryButtonView_iconSize] = _Q0;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews17PrimaryButtonView_objectGraph] = 0;
  v2[OBJC_IVAR____TtC23ShelfKitCollectionViews17PrimaryButtonView_style] = a1;
  if (v4 >= 2)
  {
    if (qword_3FACB8 != -1)
    {
      swift_once();
    }

    v15 = &xmmword_4299B0;
  }

  else
  {
    if (qword_3FACE8 != -1)
    {
      swift_once();
    }

    v15 = &xmmword_429BF0;
  }

  v16 = v15[3];
  v85 = v15[2];
  v86 = v16;
  v87[0] = v15[4];
  *(v87 + 10) = *(v15 + 74);
  v17 = v15[1];
  v84[0] = *v15;
  v84[1] = v17;
  v82[3] = v86;
  v83[0] = v87[0];
  *(v83 + 10) = *(v87 + 10);
  v82[0] = v84[0];
  v82[1] = v17;
  v82[2] = v85;
  v18 = objc_allocWithZone(type metadata accessor for ChevronButton());
  sub_EB00(v84, &v80, &qword_3FFD68);
  v19 = sub_143168(v82, 1);
  v20 = OBJC_IVAR____TtC23ShelfKitCollectionViews17PrimaryButtonView_button;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews17PrimaryButtonView_button] = v19;
  LODWORD(v21) = 1148846080;
  [v19 setContentCompressionResistancePriority:1 forAxis:v21];
  v22 = *&v2[v20];
  if (a1)
  {
    v23 = objc_opt_self();
    v24 = v22;
    if (a1 == 1)
    {
      v25 = [v23 labelColor];
    }

    else
    {
      v25 = [v23 secondaryLabelColor];
    }

    v28 = v25;
  }

  else
  {
    v26 = qword_3FAFE0;
    v27 = v22;
    if (v26 != -1)
    {
      swift_once();
    }

    v28 = qword_42B020;
  }

  v29 = v28;
  [*&v22[OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_imageView] setTintColor:v28];
  [*&v22[OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel] setTextColor:v29];

  v30 = *&v2[v20];
  v31 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_showsChevron;
  swift_beginAccess();
  v30[v31] = 1;
  v32 = v30;
  sub_142AC4();

  v33 = [objc_allocWithZone(type metadata accessor for CachingArtworkView()) init];
  v34 = OBJC_IVAR____TtC23ShelfKitCollectionViews17PrimaryButtonView_icon;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews17PrimaryButtonView_icon] = v33;
  v35 = objc_allocWithZone(UIColor);
  v36 = v33;
  v37 = [v35 initWithWhite:0.0 alpha:0.13];
  v38 = a1;
  v39 = a1 == 0;
  v40 = 0x4010000000000000;
  if (!a1)
  {
    v40 = 0x4008000000000000;
  }

  v41 = &v36[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
  v42 = *&v36[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
  *v41 = v37;
  *(v41 + 1) = v40;
  if (a1)
  {
    v43 = 0x3FF0000000000000;
  }

  else
  {
    v43 = 0;
  }

  *(v41 + 2) = 0;
  *(v41 + 3) = v43;
  v44 = v37;

  sub_2D294();
  v45 = *&v2[v34];
  v46 = v45[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style];
  v45[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style] = v39;
  LOBYTE(v80) = v46;
  v47 = v45;
  sub_2DE78(&v80);

  v79.receiver = v2;
  v79.super_class = ObjectType;
  v48 = objc_msgSendSuper2(&v79, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v49 = OBJC_IVAR____TtC23ShelfKitCollectionViews17PrimaryButtonView_hStackView;
  v50 = *&v48[OBJC_IVAR____TtC23ShelfKitCollectionViews17PrimaryButtonView_hStackView];
  v51 = v48;
  [v51 addSubview:v50];
  v52 = *&v48[v49];
  sub_30CE98();

  v53 = *&v48[v49];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_317F20;
  v55 = OBJC_IVAR____TtC23ShelfKitCollectionViews17PrimaryButtonView_icon;
  v56 = *&v51[OBJC_IVAR____TtC23ShelfKitCollectionViews17PrimaryButtonView_icon];
  *(v54 + 32) = v56;
  v78 = OBJC_IVAR____TtC23ShelfKitCollectionViews17PrimaryButtonView_button;
  v57 = *&v51[OBJC_IVAR____TtC23ShelfKitCollectionViews17PrimaryButtonView_button];
  *(v54 + 40) = v57;
  v58 = v53;
  v59 = v56;
  v60 = v57;
  v61._rawValue = v54;
  sub_30C688(v61);

  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_317F20;
  v63 = [*&v51[v55] heightAnchor];
  if (v38 >= 2)
  {
    v64 = 32.0;
  }

  else
  {
    v64 = 22.0;
  }

  v65 = objc_opt_self();
  v66 = [v63 constraintEqualToConstant:v64];

  *(v62 + 32) = v66;
  v67 = [*&v51[v55] heightAnchor];
  v68 = [*&v51[v55] widthAnchor];
  v69 = [v67 constraintEqualToAnchor:v68];

  *(v62 + 40) = v69;
  sub_91304();
  isa = sub_30C358().super.isa;

  [v65 activateConstraints:isa];

  v71 = *&v51[v55];
  v80 = 0;
  v81 = 0xE000000000000000;
  v72 = v71;
  v88._object = 0x800000000033C270;
  v88._countAndFlagsBits = 0xD000000000000014;
  sub_30C238(v88);
  v89._countAndFlagsBits = 46;
  v89._object = 0xE100000000000000;
  sub_30C238(v89);
  sub_30D638();
  v73 = sub_30C098();

  [v72 setAccessibilityIdentifier:v73];

  v74 = *&v51[v78];
  v80 = 0;
  v81 = 0xE000000000000000;
  v75 = v74;
  v90._object = 0x800000000033C270;
  v90._countAndFlagsBits = 0xD000000000000014;
  sub_30C238(v90);
  v91._countAndFlagsBits = 46;
  v91._object = 0xE100000000000000;
  sub_30C238(v91);
  sub_30D638();
  v76 = sub_30C098();

  [v75 setAccessibilityIdentifier:v76];

  return v51;
}

unint64_t sub_148B34()
{
  result = qword_405278;
  if (!qword_405278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_405278);
  }

  return result;
}

void sub_148B9C()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews17PrimaryButtonView_hStackView;
  v2 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setAxis:0];
  [v2 setAlignment:3];
  v3 = v2;
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v3 layer];

  [v4 setAllowsGroupBlending:0];
  [v3 setSpacing:6.0];
  *(v0 + v1) = v3;
  __asm { FMOV            V0.2D, #22.0 }

  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17PrimaryButtonView_iconSize) = _Q0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17PrimaryButtonView_objectGraph) = 0;
  sub_30D648();
  __break(1u);
}

id sub_148CE4()
{
  v1 = v0;
  v2 = sub_30D6F8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.15];
  v7 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_shadow];
  v8 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_shadow];
  *v7 = v6;
  *(v7 + 8) = xmmword_326D10;
  *(v7 + 3) = 0x4024000000000000;
  v9 = v6;

  sub_149850();
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_background;
  v11 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_background];
  sub_3031D8();
  *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_cornerRadius] = v12;

  v13 = *&v1[v10];
  v14 = v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_cornerStyle];
  v13[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_cornerStyle] = v14;
  v15 = qword_3FA928;
  v16 = v13;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = qword_428FC8;
  v18 = *&v16[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderColor];
  *&v16[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderColor] = qword_428FC8;
  v19 = v17;

  sub_2BE604();
  v20 = *&v1[v10];
  (*(v3 + 104))(v5, enum case for FloatingPointRoundingRule.up(_:), v2);
  v21 = v20;
  sub_302E78();
  v23 = v22;
  (*(v3 + 8))(v5, v2);
  *&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderWidth] = v23;
  sub_2BE604();

  v24 = *&v1[v10];
  sub_3031D8();
  sub_2BE934(v14, v25);

  v26 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_artworkView] + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow;
  v27 = *v26;
  *v26 = 0u;
  *(v26 + 16) = 0u;

  sub_2D294();
  return [v1 setNeedsLayout];
}

uint64_t sub_148FCC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405320);
  __chkstk_darwin(v11 - 8);
  v13 = v69 - v12;
  result = swift_beginAccess();
  v15 = off_40D118;
  if (off_40D118)
  {
    v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_artworkView;
    type metadata accessor for LegacyCachingArtworkView();
    v17 = *&stru_68.sectname[v15];
    v18 = *&stru_68.segname[v15 - 8];
    swift_getObjectType();
    v19 = sub_302B58();
    (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
    v20 = swift_unknownObjectRetain_n();
    v21 = sub_26FA54(v20, v18, v17, 0, v13);
    swift_unknownObjectRelease();
    *&v5[v16] = v21;
    v22 = &v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_artworkSize];
    *v22 = 0;
    v22[1] = 0;
    v23 = OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_chinBackground;
    *&v5[v23] = [objc_allocWithZone(UIView) init];
    v24 = OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_background;
    type metadata accessor for RoundedCornerView();
    *&v5[v24] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v25 = OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_bannerView;
    v26 = objc_allocWithZone(type metadata accessor for UpsellBannerView());
    *&v5[v25] = sub_2E423C(1, 0, 0, 1, 14.0, 16.0, 14.0, 16.0);
    v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_artworkStyle] = 0;
    v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_cornerStyle] = 0;
    v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_hasBanner] = 0;
    v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_hasEntitlementBadge] = 0;
    v27 = OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_entitlementBadgeView;
    v28 = objc_allocWithZone(type metadata accessor for EntitlementBadgeView());
    v29 = sub_157ED0(UIFontTextStyleBody);
    [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
    *&v5[v27] = v29;
    *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView____lazy_storage___entitlementBadgeConstraints] = 0;
    v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_sizeClass] = 8;
    *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_shadowView] = 0;
    v30 = &v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_shadow];
    *v30 = 0u;
    v30[1] = 0u;
    *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_objectGraph] = 0;
    v70.receiver = v5;
    v70.super_class = ObjectType;
    v31 = objc_msgSendSuper2(&v70, "initWithFrame:", a1, a2, a3, a4);
    v32 = OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_artworkView;
    v33 = *&v31[OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_artworkView];
    v34 = &v33[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
    v35 = *&v33[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
    *v34 = 0u;
    *(v34 + 1) = 0u;
    v36 = v31;
    v37 = v33;

    sub_2D294();
    v38 = OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_background;
    [*&v36[OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_background] setTranslatesAutoresizingMaskIntoConstraints:0];
    [v36 addSubview:*&v36[v38]];
    v39 = *&v36[v38];
    sub_30CE98();

    [*&v31[v32] setTranslatesAutoresizingMaskIntoConstraints:0];
    [*&v36[v38] addSubview:*&v31[v32]];
    v69[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_31FDA0;
    v41 = [*&v31[v32] leadingAnchor];
    v42 = [*&v36[v38] leadingAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];

    *(inited + 32) = v43;
    v44 = [*&v31[v32] trailingAnchor];
    v45 = [*&v36[v38] trailingAnchor];
    v46 = [v44 constraintEqualToAnchor:v45];

    *(inited + 40) = v46;
    v47 = [*&v31[v32] heightAnchor];
    v48 = [*&v31[v32] widthAnchor];
    v49 = [v47 constraintEqualToAnchor:v48];

    *(inited + 48) = v49;
    v50 = [*&v31[v32] topAnchor];
    v51 = [*&v36[v38] topAnchor];
    v52 = [v50 constraintEqualToAnchor:v51];

    *(inited + 56) = v52;
    v53 = [*&v31[v32] bottomAnchor];
    v54 = OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_chinBackground;
    v55 = [*&v36[OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_chinBackground] topAnchor];
    v56 = [v53 constraintEqualToAnchor:v55];

    *(inited + 64) = v56;
    [*&v36[v54] setTranslatesAutoresizingMaskIntoConstraints:0];
    [*&v36[v38] addSubview:*&v36[v54]];
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_31D470;
    v58 = [*&v36[v54] leadingAnchor];
    v59 = [*&v36[v38] leadingAnchor];
    v60 = [v58 constraintEqualToAnchor:v59];

    *(v57 + 32) = v60;
    v61 = [*&v36[v54] trailingAnchor];
    v62 = [*&v36[v38] trailingAnchor];
    v63 = [v61 constraintEqualToAnchor:v62];

    *(v57 + 40) = v63;
    v64 = [*&v36[v54] bottomAnchor];
    v65 = [*&v36[v38] bottomAnchor];
    v66 = [v64 constraintEqualToAnchor:v65];

    *(v57 + 48) = v66;
    v67 = objc_opt_self();
    v69[2] = v57;
    sub_14A360(inited);
    sub_91304();
    isa = sub_30C358().super.isa;

    [v67 activateConstraints:isa];

    sub_148CE4();
    return v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_149850()
{
  v1 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_shadow];
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_shadowView;
  v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_shadowView];
  if (*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_shadow])
  {
    if (v3)
    {
      v4 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_shadowView];
    }

    else
    {
      type metadata accessor for ShadowView();
      v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v6 = *&v0[v2];
      v7 = v5;
      if (v6)
      {
        [v6 removeFromSuperview];
        v6 = *&v0[v2];
      }

      *&v0[v2] = v5;
      v8 = v5;

      v4 = v8;
      [v0 bounds];
      [v4 setFrame:?];

      [v0 insertSubview:v4 atIndex:0];
      v3 = 0;
    }

    v9 = v3;
    sub_3031D8();
    v11 = v0[OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_cornerStyle];
    *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_cornerRadius] = v10;
    v4[OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_cornerStyle] = v11;
    v12 = (v10 < COERCE_DOUBLE(1)) | v11;
    if (v10 >= COERCE_DOUBLE(1))
    {
      v13 = v10;
    }

    else
    {
      v13 = 0.0;
    }

    v14 = (v12 & 1) == 0;
    if (v12)
    {
      v15 = &selRef__setContinuousCornerRadius_;
    }

    else
    {
      v15 = &selRef__setCornerRadius_;
    }

    if (v14)
    {
      v16 = &selRef__setContinuousCornerRadius_;
    }

    else
    {
      v16 = &selRef__setCornerRadius_;
    }

    [v4 *v15];
    [v4 *v16];
    [v4 setNeedsLayout];
    v17 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_shadow];
    v18 = *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_shadow];
    v19 = *v1;
    v20 = *(v1 + 1);
    *v17 = *v1;
    *(v17 + 1) = v20;
    v21 = v19;

    sub_2BF1DC();
    v3 = v21;
  }

  else
  {
    if (v3)
    {
      [v3 removeFromSuperview];
      v3 = *&v0[v2];
    }

    *&v0[v2] = 0;
  }
}

uint64_t sub_149B88(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_objectGraph) = a1;

  return sub_2E306C(v2);
}

void sub_149BD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405320);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  swift_beginAccess();
  v4 = off_40D118;
  if (!off_40D118)
  {
    __break(1u);
  }

  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_artworkView;
  type metadata accessor for LegacyCachingArtworkView();
  v6 = *&stru_68.sectname[v4];
  v7 = *&stru_68.segname[v4 - 8];
  swift_getObjectType();
  v8 = sub_302B58();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = swift_unknownObjectRetain_n();
  v10 = sub_26FA54(v9, v7, v6, 0, v3);
  swift_unknownObjectRelease();
  *(v0 + v5) = v10;
  v11 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_artworkSize);
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_chinBackground;
  *(v0 + v12) = [objc_allocWithZone(UIView) init];
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_background;
  type metadata accessor for RoundedCornerView();
  *(v0 + v13) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_bannerView;
  v15 = objc_allocWithZone(type metadata accessor for UpsellBannerView());
  *(v0 + v14) = sub_2E423C(1, 0, 0, 1, 14.0, 16.0, 14.0, 16.0);
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_artworkStyle) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_cornerStyle) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_hasBanner) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_hasEntitlementBadge) = 0;
  v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_entitlementBadgeView;
  v17 = objc_allocWithZone(type metadata accessor for EntitlementBadgeView());
  v18 = sub_157ED0(UIFontTextStyleBody);
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v16) = v18;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView____lazy_storage___entitlementBadgeConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_sizeClass) = 8;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_shadowView) = 0;
  v19 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_shadow);
  *v19 = 0u;
  v19[1] = 0u;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17UpsellArtworkView_objectGraph) = 0;
  sub_30D648();
  __break(1u);
}

id sub_149EBC(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400A80);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405358);
  __chkstk_darwin(v12 - 8);
  v14 = &v27 - v13;
  v15 = sub_30D278();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews21UpsellSubscribeButton_progressView] = 0;
  v19 = type metadata accessor for UpsellSubscribeButton();
  v27.receiver = v4;
  v27.super_class = v19;
  v20 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  [v20 setContentHorizontalAlignment:0];
  v21 = [v20 titleLabel];
  if (v21)
  {
    v22 = v21;
    [v21 setLineBreakMode:5];
  }

  v23 = [v20 titleLabel];
  if (v23)
  {
    v24 = v23;
    [v23 setNumberOfLines:1];
  }

  sub_30D1C8();
  sub_304C28();
  v25 = sub_304C18();
  (*(*(v25 - 8) + 56))(v14, 0, 1, v25);
  sub_30D208();
  (*(v16 + 16))(v11, v18, v15);
  (*(v16 + 56))(v11, 0, 1, v15);
  sub_30D2A8();

  (*(v16 + 8))(v18, v15);
  return v20;
}

uint64_t sub_14A1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_301B18();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_D8184();
  sub_30CDD8();
  sub_D81D0();
  return sub_301B28();
}

id sub_14A2F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpsellSubscribeButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_14A3E4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_CB35C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_14A534(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_CB490(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401000);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_14A668(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_30D668();
  }

  else
  {
    v7 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v3 >> 62))
  {
    v8 = *(&dword_10 + (*v3 & 0xFFFFFFFFFFFFFF8));
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_30D668();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(&dword_10 + v12) + 32, (*(&dword_18 + v12) >> 1) - *(&dword_10 + v12), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_14A7C0(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_14A904()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator____lazy_storage___scrollConfigurations;
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator____lazy_storage___scrollConfigurations))
  {
    v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator____lazy_storage___scrollConfigurations);
  }

  else
  {
    v2 = sub_14C35C();
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_14A968(void *a1)
{
  if ((_UISolariumEnabled() & 1) != 0 || *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_active) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v4 = v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_navigationBar;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v4 + 8);
        ObjectType = swift_getObjectType();
        v7 = (*(v5 + 152))(ObjectType, v5);
        swift_unknownObjectRelease();
        Strong = v7;
      }

      else
      {
        Strong = 0;
      }
    }

    v8 = Strong;
    sub_14C6EC(a1, Strong);
  }
}

id sub_14AA9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModernUberScrollCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t UINavigationBar.barButtonItems.getter()
{
  v1 = [v0 items];
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  sub_124C4(0, &qword_405360);
  v3 = sub_30C368();

  if (!(v3 >> 62))
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  v4 = sub_30D668();
  if (!v4)
  {
LABEL_17:

    return _swiftEmptyArrayStorage;
  }

LABEL_4:
  v5 = __OFSUB__(v4, 1);
  result = v4 - 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_21;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_21:
    v7 = sub_30D578();
    goto LABEL_9;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (result >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v7 = *(v3 + 8 * result + 32);
LABEL_9:
  v8 = v7;

  v9 = [v8 leftBarButtonItems];
  if (v9)
  {
    v10 = v9;
    sub_124C4(0, &unk_409000);
    v11 = sub_30C368();
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = [v8 rightBarButtonItems];
  if (v12)
  {
    v13 = v12;
    sub_124C4(0, &unk_409000);
    v14 = sub_30C368();
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  sub_14A668(v14, sub_182DF4, sub_14BB4C);

  return v11;
}

void *UINavigationBar.barButtonItems(navigationItem:)(void *a1)
{
  v2 = a1;
  if (!a1)
  {
    v2 = UINavigationBar.topNavigationItem.getter();
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  v3 = a1;
  v4 = [v2 leftBarButtonItems];
  if (v4)
  {
    v5 = v4;
    sub_124C4(0, &unk_409000);
    v6 = sub_30C368();
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  v7 = [v2 rightBarButtonItems];
  if (v7)
  {
    v8 = v7;
    sub_124C4(0, &unk_409000);
    v9 = sub_30C368();
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  sub_14A668(v9, sub_182DF4, sub_14BB4C);

  return v6;
}

unint64_t UINavigationBar.topNavigationItem.getter()
{
  result = [v0 items];
  if (!result)
  {
    return result;
  }

  v2 = result;
  sub_124C4(0, &qword_405360);
  v3 = sub_30C368();

  if (!(v3 >> 62))
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_11:

    return 0;
  }

  v4 = sub_30D668();
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_4:
  v5 = __OFSUB__(v4, 1);
  result = v4 - 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_14:
    v6 = sub_30D578();
    goto LABEL_9;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
  {
    v6 = *(v3 + 8 * result + 32);
LABEL_9:
    v7 = v6;

    return v7;
  }

  __break(1u);
  return result;
}

unint64_t UINavigationBar.titleAndView.getter()
{
  result = [v0 items];
  if (result)
  {
    v2 = result;
    sub_124C4(0, &qword_405360);
    v3 = sub_30C368();

    if (v3 >> 62)
    {
      v4 = sub_30D668();
      if (v4)
      {
LABEL_4:
        v5 = __OFSUB__(v4, 1);
        result = v4 - 1;
        if (v5)
        {
          __break(1u);
        }

        else if ((v3 & 0xC000000000000001) == 0)
        {
          if ((result & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (result < *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            v6 = *(v3 + 8 * result + 32);
LABEL_9:
            v7 = v6;

            v8 = [v7 title];
            if (v8)
            {
              v9 = v8;
              v10 = sub_30C0D8();

              return v10;
            }

            return 0;
          }

          __break(1u);
          return result;
        }

        v6 = sub_30D578();
        goto LABEL_9;
      }
    }

    else
    {
      v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
      if (v4)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

  return result;
}

void sub_14B160(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = v3;

  UINavigationBar.titleAndView.setter(v1, v2, v3);
}

void UINavigationBar.titleAndView.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [v3 items];
  if (v5)
  {
    v6 = v5;
    sub_124C4(0, &qword_405360);
    v7 = sub_30C368();

    if (v7 >> 62)
    {
      v8 = sub_30D668();
      if (v8)
      {
LABEL_4:
        v9 = __OFSUB__(v8, 1);
        v10 = v8 - 1;
        if (v9)
        {
          __break(1u);
        }

        else if ((v7 & 0xC000000000000001) == 0)
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v10 < *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
          {
            v11 = *(v7 + 8 * v10 + 32);
LABEL_9:
            v12 = v11;

            if (a2)
            {
              v15 = sub_30C098();

              v13 = v15;
            }

            else
            {
              v13 = 0;
            }

            a3 = v13;
            [v12 setTitle:?];

            goto LABEL_16;
          }

          __break(1u);
          return;
        }

        v11 = sub_30D578();
        goto LABEL_9;
      }
    }

    else
    {
      v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
      if (v8)
      {
        goto LABEL_4;
      }
    }
  }

LABEL_16:
}

void (*UINavigationBar.titleAndView.modify(unint64_t *a1))(uint64_t *a1, char a2)
{
  a1[3] = v1;
  *a1 = UINavigationBar.titleAndView.getter();
  a1[1] = v3;
  a1[2] = 0;
  return sub_14B36C;
}

void sub_14B36C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = v4;

    UINavigationBar.titleAndView.setter(v3, v2, v4);
  }

  else
  {
    UINavigationBar.titleAndView.setter(*a1, v2, v4);
  }
}

void UINavigationBar.setBackgroundOpacity(opacity:for:)(void *a1, double a2)
{
  v6 = a1;
  if (a1 || (v6 = UINavigationBar.topNavigationItem.getter()) != 0)
  {
    v4 = a1;
    [v6 _manualScrollEdgeAppearanceProgress];
    if (v5 == 0.0)
    {
      [v6 _setManualScrollEdgeAppearanceProgress:1.0e-100];
    }

    [v6 _setManualScrollEdgeAppearanceProgress:a2];
  }
}

id UINavigationBar.navBarTintColor.getter()
{
  v1 = [v0 tintColor];

  return v1;
}

void UINavigationBar.navBarTintColor.setter(void *a1)
{
  [v1 setTintColor:a1];
}

id (*UINavigationBar.titleOpacity.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  [v1 _titleOpacity];
  *a1 = v3;
  return sub_14B600;
}

unint64_t sub_14B678@<X0>(unint64_t *a1@<X8>)
{
  result = UINavigationBar.barButtonItems.getter();
  *a1 = result;
  return result;
}

unint64_t sub_14B6BC@<X0>(unint64_t *a1@<X8>)
{
  result = UINavigationBar.titleAndView.getter();
  *a1 = result;
  a1[1] = v3;
  a1[2] = 0;
  return result;
}

id sub_14B700@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 tintColor];
  *a2 = result;
  return result;
}

id sub_14B760@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 _titleOpacity];
  *a2 = v4;
  return result;
}

uint64_t sub_14B9AC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_30D668();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_30D668();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_14CD40(&qword_4053D8, &qword_4053D0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4053D0);
            v9 = sub_2452D0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_124C4(0, &qword_403000);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_14BB4C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_30D668();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_30D668();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_14CD40(&qword_405430, &qword_405428);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405428);
            v9 = sub_2452D0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_124C4(0, &unk_409000);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_14BCEC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_30D668();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_30D668();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_14CD40(&qword_405420, &qword_405418);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405418);
            v9 = sub_2452D0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_124C4(0, &qword_3FBE30);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_14BE8C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_30D668();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_30D668();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_14CD40(&qword_4053F0, &qword_4053E8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4053E8);
            v9 = sub_2452D0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_124C4(0, &qword_4053E0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_14C02C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_30D668();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_30D668();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_14CD40(&qword_405410, &qword_405408);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405408);
            v9 = sub_2452D0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for CGColor(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_14C1BC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_30D668();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_30D668();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_14CD40(&qword_405400, &qword_4053F8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4053F8);
            v9 = sub_245350(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_124C4(0, &qword_408010);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_14C35C()
{
  v0 = type metadata accessor for UberScrollConfiguration();
  v28 = *(v0 - 8);
  v29 = v0;
  __chkstk_darwin(v0);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v27 - v4;
  v6 = sub_2D6FE4(_swiftEmptyArrayStorage);
  v7 = sub_30B658();
  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_32:

    return v6;
  }

  v9 = 0;
  while (v9 < *(v7 + 16))
  {
    v10 = *(v7 + v9 + 32);
    if (_UISolariumEnabled())
    {
      goto LABEL_7;
    }

    if (v10 > 7)
    {
      goto LABEL_27;
    }

    v22 = 1 << v10;
    if (((1 << v10) & 0xC) != 0)
    {
      goto LABEL_7;
    }

    if ((v22 & 0x30) != 0)
    {
      v11 = qword_4293C0;
      if (qword_3FAB68 != -1)
      {
        swift_once();
        v11 = qword_4293C0;
      }

      goto LABEL_10;
    }

    if ((v22 & 0xC0) != 0)
    {
      v11 = qword_4293D8;
      if (qword_3FAB70 != -1)
      {
        swift_once();
        v11 = qword_4293D8;
      }
    }

    else
    {
LABEL_27:
      if (!v10)
      {
LABEL_7:
        if (qword_3FAB60 != -1)
        {
          swift_once();
        }

        v11 = qword_4293A8;
        goto LABEL_10;
      }

      v11 = qword_429390;
      if (qword_3FAB58 != -1)
      {
        swift_once();
        v11 = qword_429390;
      }
    }

LABEL_10:
    v12 = __swift_project_value_buffer(v29, v11);
    sub_14CBB8(v12, v5);
    sub_14CC1C(v5, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v6;
    v15 = sub_191B1C(v10);
    v16 = v6[2];
    v17 = (v14 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_34;
    }

    v19 = v14;
    if (v6[3] >= v18)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v6 = v30;
        if (v14)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_297094();
        v6 = v30;
        if (v19)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_293510(v18, isUniquelyReferenced_nonNull_native);
      v20 = sub_191B1C(v10);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_36;
      }

      v15 = v20;
      v6 = v30;
      if (v19)
      {
LABEL_3:
        sub_14CCDC(v2, v6[7] + *(v28 + 72) * v15);
        goto LABEL_4;
      }
    }

    v6[(v15 >> 6) + 8] |= 1 << v15;
    *(v6[6] + v15) = v10;
    sub_14CC1C(v2, v6[7] + *(v28 + 72) * v15);
    v23 = v6[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_35;
    }

    v6[2] = v25;
LABEL_4:
    if (v8 == ++v9)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_30D778();
  __break(1u);
  return result;
}

void sub_14C6EC(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UberScrollConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = (&v47 - v11);
  v13 = v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_cell;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v50 = Strong;
    v15 = *(v13 + 8);
    v16 = v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_navigationBar;
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v48 = *(v16 + 8);
      v49 = v17;
      ObjectType = swift_getObjectType();
      (*(v15 + 8))(a1, ObjectType, v15);
      [a1 contentOffset];
      v20 = v19;
      [a1 contentInset];
      v22 = v21;
      [a1 _systemContentInset];
      v24 = v23;
      v25 = (*(v15 + 48))(ObjectType, v15);
      v26 = sub_14A904();
      if (*(v26 + 16) && (v27 = sub_191B1C(v25), (v28 & 1) != 0))
      {
        v29 = v20 + v22 + v24;
        sub_14CBB8(*(v26 + 56) + *(v7 + 72) * v27, v9);

        sub_14CC1C(v9, v12);
        v30 = _UISolariumEnabled();
        v31 = *(v15 + 40);
        if (v30)
        {
          v32 = v50;
          v33 = v31(ObjectType, v15);
          v34 = *(v15 + 72);
          v35 = v32;
          v36 = a1;
          v34(&v54, ObjectType, v15);
          v51[0] = v54;
          v52 = v55;
          v53 = v56;
          v37 = [v35 contentView];
          v38 = sub_155EC0(v51, v37, v36);

          [v36 _pocketInsets];
          if (v38 != v39)
          {
            sub_30C708();
            [v36 _setPocketInsets:?];
          }

          v34(&v54, ObjectType, v15);
          v40 = v56;

          if (v40 == 1)
          {
            v43 = v12[4];
            v42 = v12[5];
            if (v43 != 0.0 || (v41.n128_u64[0] = 1.0, v43 != v42))
            {
              v41.n128_f64[0] = fmin((v29 - (v33 - (v33 - v33 * v43))) / (v33 - v33 * v43 - (v33 - v33 * v42)), 1.0);
              if (v41.n128_f64[0] < 0.0)
              {
                v41.n128_u64[0] = 0;
              }
            }

            (*(v15 + 24))(ObjectType, v15, v41);
          }

          swift_unknownObjectRelease();
        }

        else
        {
          v45 = v31(ObjectType, v15);
          v46 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_statusBarStyleHandler);
          sub_9FF04(v46);
          sub_15576C(v29, v45, v50, v15, v49, v48, a2, v46);
          swift_unknownObjectRelease();
          sub_1EBD0(v46);
        }

        sub_14CC80(v12);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v44 = v50;
    }
  }
}

uint64_t sub_14CBB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UberScrollConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14CC1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UberScrollConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_14CC80(uint64_t a1)
{
  v2 = type metadata accessor for UberScrollConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_14CCDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UberScrollConfiguration();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_14CD40(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_14CDA0(void *a1, char a2)
{
  if (a1)
  {
    v4 = v2[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_style];
    v5 = a1;
    v6 = sub_14CFE4(v4, v5);
    [v2 bounds];
    [v6 setFrame:?];
    [v6 setAutoresizingMask:18];
    if (*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_gradientOverlayView])
    {
      [v2 insertSubview:v6 belowSubview:?];
    }

    else
    {
      [v2 addSubview:v6];
    }

    v8 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_backgroundImageView];
    *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_backgroundImageView] = v6;
    v13 = v6;

    if (a2)
    {
      [v13 setAlpha:0.0];
      v9 = objc_opt_self();
      v10 = swift_allocObject();
      *(v10 + 16) = v13;
      aBlock[4] = sub_14DC24;
      aBlock[5] = v10;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_914CC;
      aBlock[3] = &block_descriptor_27;
      v11 = _Block_copy(aBlock);
      v12 = v13;

      [v9 animateWithDuration:v11 animations:0.25];

      _Block_release(v11);
    }

    else
    {
    }
  }

  else
  {
    v7 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_backgroundImageView];
    if (v7)
    {

      [v7 removeFromSuperview];
    }
  }
}

char *sub_14CFE4(char a1, void *a2)
{
  swift_getObjectType();
  switch(a1)
  {
    case 7:
      v9 = [v2 traitCollection];
      *&v22 = 0xC046000000000000;
      *(&v22 + 1) = 15;
      v23 = xmmword_327250;
      if (sub_30C968())
      {
        v10 = sub_1506C0;
        *&v24 = sub_1506C0;
        *(&v24 + 1) = 0;
        v11 = sub_1506D0;
        *&v25 = sub_1506D0;
      }

      else
      {
        v10 = sub_1506F0;
        *&v24 = sub_1506F0;
        *(&v24 + 1) = 0;
        v11 = sub_150760;
        *&v25 = sub_150760;
      }

      *(&v25 + 1) = 0;
      *&v26 = sub_1506E8;
      *(&v26 + 1) = 0;
      sub_14DC50(&v22, v15);

      *&v22 = 0xC046000000000000;
      *(&v22 + 1) = 15;
      v23 = xmmword_327250;
      v24 = v10;
      v25 = v11;
      *&v26 = sub_1506E8;
      *(&v26 + 1) = 0;
      type metadata accessor for UberFadeOutBackgroundView();
      v13 = a2;
      return sub_150518(a2, &v22);
    case 3:
      type metadata accessor for UberFadeOutBackgroundView();
      *&v15[0] = 0xC066400000000000;
      *(&v15[0] + 1) = 8;
      v15[1] = xmmword_327240;
      v16 = sub_150634;
      v17 = 0;
      v18 = sub_150640;
      v19 = 0;
      v20 = sub_F5C94;
      v21 = 0;
      v24 = sub_150634;
      v25 = sub_150640;
      v26 = sub_F5C94;
      v22 = v15[0];
      v23 = xmmword_327240;
      v8 = a2;
      sub_14DC50(v15, &v14);
      return sub_150518(a2, &v22);
    case 2:
      type metadata accessor for UberParallaxBackgroundView();
      v5 = sub_14EBC8();
      v6 = a2;
      return sub_154E6C(a2, v5, 0);
    default:
      v12 = [objc_allocWithZone(UIImageView) initWithImage:a2];
      [v12 setContentMode:2];
      return v12;
  }
}

void sub_14D288()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_30D6F8();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_style) == 7)
  {
    v7 = [v0 traitCollection];
    v8 = sub_30C968();

    if (v8)
    {
      v9 = sub_1506C0;
    }

    else
    {
      v9 = sub_1506F0;
    }

    v10 = [v1 traitCollection];
    v9();
    v12 = v11;

    if (v12 == 1)
    {
      (*(v3 + 104))(v6, enum case for FloatingPointRoundingRule.up(_:), v2);
      sub_302E78();
      sub_302E78();
      (*(v3 + 8))(v6, v2);
    }

    else
    {
      [v1 bounds];
    }
  }

  else
  {
    sub_14EBC8();
  }
}

uint64_t sub_14D4A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_backgroundImageView);
  if (v1 && (v10[0] = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_backgroundImageView), sub_293E0(), v2 = v1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405498), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v8 + 1))
    {
      sub_12658(&v7, v10);
      v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_offset);
      v4 = v11;
      v5 = v12;
      __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
      (*(v5 + 40))(v4, v5, v3);
      return __swift_destroy_boxed_opaque_existential_1(v10);
    }
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
  }

  return sub_14DCAC(&v7);
}

uint64_t sub_14D5A4(double a1)
{
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_offset;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_offset) = a1;
  v3 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_backgroundImageView);
  if (v3 && (v12[0] = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_backgroundImageView), sub_293E0(), v4 = v3, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405498), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v10 + 1))
    {
      sub_12658(&v9, v12);
      v5 = *(v1 + v2);
      v6 = v13;
      v7 = v14;
      __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
      (*(v7 + 40))(v6, v7, v5);
      return __swift_destroy_boxed_opaque_existential_1(v12);
    }
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
  }

  return sub_14DCAC(&v9);
}

uint64_t sub_14D6A4()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_backgroundImageView);
  if (v1 && (v10[0] = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_backgroundImageView), sub_293E0(), v2 = v1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405498), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v8 + 1))
    {
      sub_12658(&v7, v10);
      v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_zoomFactor);
      v4 = v11;
      v5 = v12;
      __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
      (*(v5 + 16))(v4, v5, v3);
      return __swift_destroy_boxed_opaque_existential_1(v10);
    }
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
  }

  return sub_14DCAC(&v7);
}

uint64_t sub_14D7A0(double a1)
{
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_zoomFactor;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_zoomFactor) = a1;
  v3 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_backgroundImageView);
  if (v3 && (v12[0] = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_backgroundImageView), sub_293E0(), v4 = v3, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405498), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v10 + 1))
    {
      sub_12658(&v9, v12);
      v5 = *(v1 + v2);
      v6 = v13;
      v7 = v14;
      __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
      (*(v7 + 16))(v6, v7, v5);
      return __swift_destroy_boxed_opaque_existential_1(v12);
    }
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
  }

  return sub_14DCAC(&v9);
}

uint64_t sub_14D8A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_backgroundImageView);
  if (v1 && (v9[0] = v1, sub_293E0(), v2 = v1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405498), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v7 + 1))
    {
      sub_12658(&v6, v9);
      v3 = v10;
      v4 = v11;
      __swift_project_boxed_opaque_existential_1Tm(v9, v10);
      (*(v4 + 56))(v3, v4);
      return __swift_destroy_boxed_opaque_existential_1(v9);
    }
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
  }

  return sub_14DCAC(&v6);
}

uint64_t sub_14DBEC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_14DCAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

id sub_14DD84(void *a1)
{
  if (((*&stru_158.segname[(swift_isaMask & *v1) + 8])() | 4) == 7)
  {

    return a1;
  }

  else
  {
    if (_UISolariumEnabled())
    {
      v3 = _UIBackgroundExtensionView;
      v4 = &off_3BBF48;
    }

    else
    {
      v3 = type metadata accessor for DummyExtensionView();
      v4 = &off_3BC0B0;
    }

    v5 = [objc_allocWithZone(v3) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    swift_getObjectType();
    v6 = v4[2];
    v7 = a1;
    v8 = v5;
    v6(a1);

    return v8;
  }
}

id sub_14DECC()
{
  v1 = [v0 contentView];
  v2 = [v1 overrideUserInterfaceStyle];

  return v2;
}

id sub_14DF1C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = [a1 refreshControl];
  if (v5)
  {
    v6 = v5;
    if ([v5 isRefreshing])
    {
      [a1 _systemContentInset];
      v8 = v7;
      [v6 frame];
      Height = CGRectGetHeight(v49);

      v11.n128_f64[0] = v8 - Height;
      goto LABEL_6;
    }
  }

  v10 = [a1 _systemContentInset];
LABEL_6:
  (*(&stru_B8.size + (swift_isaMask & *v2)))(v10, v11);
  v12 = [a1 contentOffset];
  v14 = v13;
  v15 = *&stru_B8.segname[(swift_isaMask & *v2) + 16];
  v16 = -(v15)(v12);
  if (v14 <= v16)
  {
    v16 = v14;
  }

  v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_backgroundYOffset;
  *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_backgroundYOffset) = v16;
  v18 = v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_uberBackgroundView;
  v19 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_uberBackgroundView);
  if (v19)
  {
    v46 = v17;
    v20 = ObjectType;
    v21 = *(v18 + 1);
    v22 = swift_getObjectType();
    v23 = v14 + v15();
    v47 = v15;
    v24 = *(v21 + 64);
    v25 = v19;
    v26 = v21;
    v27 = v20;
    v17 = v46;
    v24(v22, v26, v23);
    v15 = v47;

    v28 = *v18;
    if (*v18)
    {
      v29 = *(v18 + 1);
      v30 = swift_getObjectType();
      v31 = v47();
      v32 = v31 - (*(v27 + 312))();
      v33 = *(v29 + 88);
      v34 = v28;
      v33(v30, v29, v32);
      v15 = v47;
    }
  }

  [v2 bounds];
  v35 = CGRectGetHeight(v50);
  v36 = *(v2 + v17);
  [v2 bounds];
  v37 = CGRectGetHeight(v51);
  v15();
  v39 = *v18;
  if (*v18)
  {
    v40 = *(v18 + 1);
    v41 = (v35 - v36) / (v37 + v38);
    v42 = swift_getObjectType();
    v43 = *(v40 + 40);
    v44 = v39;
    v43(v42, v40, v41);
  }

  [v2 setNeedsLayout];

  return [v2 layoutIfNeeded];
}

void sub_14E240(double a1)
{
  v2 = v1;
  v3 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_uberBackgroundView];
  v4 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_uberBackgroundView];
  if (v4)
  {
    v6 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 112);
    v11 = v4;
    if (v8(ObjectType, v6))
    {
      (*(v6 + 16))(ObjectType, v6, a1);
    }

    else
    {
      v9 = sub_14E55C();
      [v2 bringSubviewToFront:v9];

      v10 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell____lazy_storage___fadeOutView];
      [v10 setAlpha:a1];
    }
  }
}

void (*sub_14E378(double *a1))(double *a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_uberBackgroundView;
  *(a1 + 1) = v1;
  *(a1 + 2) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 8);
    v9 = v5;
    v10 = v8(ObjectType, v6);
  }

  else
  {
    v10 = 0.0;
  }

  *a1 = v10;
  return sub_14E42C;
}

void sub_14E42C(double *a1)
{
  v1 = *(a1 + 1);
  v2 = &v1[*(a1 + 2)];
  v3 = *a1;
  v4 = *v2;
  if (*v2)
  {
    v5 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 112);
    v10 = v4;
    if (v7(ObjectType, v5))
    {
      (*(v5 + 16))(ObjectType, v5, v3);
    }

    else
    {
      v8 = sub_14E55C();
      [v1 bringSubviewToFront:v8];

      v9 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell____lazy_storage___fadeOutView];
      [v9 setAlpha:v3];
    }
  }
}

id sub_14E55C()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell____lazy_storage___fadeOutView;
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell____lazy_storage___fadeOutView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell____lazy_storage___fadeOutView];
  }

  else
  {
    [v0 bounds];
    v8 = [objc_allocWithZone(UIView) initWithFrame:{v4, v5, v6, v7}];
    [v8 setAutoresizingMask:18];
    v9 = [objc_opt_self() systemBackgroundColor];
    [v8 setBackgroundColor:v9];

    [v8 setAlpha:0.0];
    v10 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void sub_14E674(void *a1)
{
  v3 = sub_302118();
  __chkstk_darwin(v3);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_background;
    v9 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_background + 16);
    if (v9 > 0x3F)
    {
      v19 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_uberBackgroundView);
      if (v19)
      {
        v46 = v5;
        v47 = v4;
        v20 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_uberBackgroundView + 8);
        ObjectType = swift_getObjectType();
        v22 = *(v20 + 120);
        v48 = a1;
        v23 = v19;
        v24 = v22(ObjectType, v20);

        if (v24)
        {
          v26 = [objc_allocWithZone(MTImageAnalyzer) init];
          v27 = v48;
          v28 = [v26 colorThemeForArtwork:?];

          if (!v28)
          {
            __break(1u);
            return;
          }

          v29 = [v28 backgroundColor];

          if (v29)
          {
            v30 = v29;
            sub_302108();
            v31 = [v1 contentView];
            [v31 setOverrideUserInterfaceStyle:sub_3020E8()];

            v32 = (*(&stru_158.flags + (swift_isaMask & *v1)))();
            v33 = *v8;
            v34 = *(v8 + 1);
            *v8 = v29;
            *(v8 + 1) = a1;
            v35 = v8[16];
            v8[16] = v32 & 1 | 0x80;
            v36 = v27;
            v37 = v30;
            v38 = v36;
            v39 = v37;
            sub_13DD84(v33, v34, v35);
            sub_14EC50();

            (*(v46 + 8))(v7, v47);
            return;
          }
        }
      }

      else
      {
        v25 = a1;
      }

      v40 = (*(&stru_158.flags + (swift_isaMask & *v1)))(v25);
      v41 = *v8;
      v42 = *(v8 + 1);
      *v8 = a1;
      *(v8 + 1) = v40 & 1;
      v43 = v8[16];
      v8[16] = 0;
      v48 = a1;
      v12 = v41;
      v13 = v42;
      v14 = v43;
    }

    else
    {
      v11 = *v8;
      v10 = *(v8 + 1);
      *v8 = a1;
      *(v8 + 1) = 0;
      v8[16] = 0;
      v48 = a1;
      v12 = v11;
      v13 = v10;
      v14 = v9;
    }

    sub_13DD84(v12, v13, v14);
    sub_14EC50();

    v44 = v48;
  }

  else
  {
    v15 = v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_background;
    v16 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_background);
    v17 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_background + 8);
    *v15 = 0;
    *(v15 + 1) = 0;
    v18 = v15[16];
    v15[16] = -64;
    sub_13DD84(v16, v17, v18);

    sub_14EC50();
  }
}

void (*sub_14EA70(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = (v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_background);
  if (*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_background + 16) > 0x3Fu)
  {
    v4 = 0;
  }

  else
  {
    v4 = *v3;
    v5 = *v3;
  }

  *a1 = v4;
  return sub_14EADC;
}

void sub_14EADC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_14E674(v2);
  }

  else
  {
    sub_14E674(*a1);
  }
}

id sub_14EB44@<X0>(uint64_t a1@<X8>)
{
  if (qword_3FAB50 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_429380;
  v3 = byte_429388;
  *a1 = byte_429378;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return v2;
}

void sub_14EC34()
{
  byte_429378 = 1;
  qword_429380 = 0;
  byte_429388 = 0;
}

void sub_14EC50()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_uberBackgroundView;
  v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_uberBackgroundView);
  if (v3)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 128);
    v20 = v3;
    v6(0, 0, ObjectType, v4);
    v7 = v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_background;
    v8 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_background);
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    v11 = v10 >> 6;
    if (v10 >> 6 > 1)
    {
      if (v11 == 2)
      {
        sub_1503A0(v8, v9, v10);
        v19 = v9;
        v6(v9, v10 & 1, ObjectType, v4);

        if (v8)
        {
          v13 = v20;
          v14 = v8;
        }

        else
        {
          v16 = objc_opt_self();
          v17 = v20;
          v14 = [v16 clearColor];
          v8 = 0;
        }

        v18 = v8;
        [v20 setBackgroundColor:v14];

        v15 = v19;
      }

      else
      {
        v15 = v20;
      }
    }

    else
    {
      if (v11)
      {
        [v20 setBackgroundColor:v8];
      }

      else
      {
        v12 = v8;
        v6(v8, v9 & 1, ObjectType, v4);
      }

      sub_13DD84(v8, v9, v10);
    }
  }
}

void *sub_14EE8C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_backgroundYOffset] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_backgroundHeight] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_backgroundContentView] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_topSafeAreaHeight] = 0;
  v9 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_uberBackgroundView];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_background];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = -64;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell____lazy_storage___fadeOutView] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_requestCancellable] = 0;
  v44.receiver = v4;
  v44.super_class = type metadata accessor for UberCollectionViewCell();
  v11 = objc_msgSendSuper2(&v44, "initWithFrame:", a1, a2, a3, a4);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 clearColor];
  [v13 setBackgroundColor:v14];

  v15 = *&stru_158.segname[(swift_isaMask & *v13) + 8];
  v16 = v15();
  v17 = v15();
  if (v17 > 3)
  {
    v21 = v13;
    if (v17 - 4 < 2)
    {
      goto LABEL_17;
    }

    if (v17 != 6)
    {
      v25 = type metadata accessor for UberBackgroundContainerView();
      v26 = objc_allocWithZone(v25);
      *&v26[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_backgroundImageView] = 0;
      *&v26[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_gradientOverlayView] = 0;
      *&v26[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_offset] = 0;
      *&v26[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_mirrorAmount] = 0;
      *&v26[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_zoomFactor] = 0x3FF0000000000000;
      v26[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_style] = v16;
      v43.receiver = v26;
      v43.super_class = v25;
      v24 = objc_msgSendSuper2(&v43, "initWithFrame:", 0.0, 0.0, 0.0, 0.0, v39.receiver, v39.super_class);
      goto LABEL_8;
    }

LABEL_6:
    v22 = type metadata accessor for UberBackgroundContainerView();
    v23 = objc_allocWithZone(v22);
    *&v23[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_backgroundImageView] = 0;
    *&v23[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_gradientOverlayView] = 0;
    *&v23[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_offset] = 0;
    *&v23[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_mirrorAmount] = 0;
    *&v23[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_zoomFactor] = 0x3FF0000000000000;
    v23[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_style] = v16;
    v24 = objc_msgSendSuper2(&v39, "initWithFrame:", 0.0, 0.0, 0.0, 0.0, v23, v22);
LABEL_8:
    v19 = v24;
    [v24 setClipsToBounds:1];
    if (((v19[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_style] - 3) & 0xFB) != 0)
    {
      type metadata accessor for GradientView();
      v27 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (qword_3FAE38 != -1)
      {
        swift_once();
      }

      v42[0] = xmmword_42AAB0;
      v42[1] = *&qword_42AAC0;
      v42[2] = xmmword_42AAD0;
      v42[3] = unk_42AAE0;
      v41[0] = xmmword_42AAB0;
      v41[1] = *&qword_42AAC0;
      v41[2] = xmmword_42AAD0;
      v41[3] = unk_42AAE0;
      sub_1504BC(v42, v40);
      sub_254AD8(v41);
      v28 = v27;
      [v19 bounds];
      [v28 setFrame:?];
      [v28 setAutoresizingMask:18];

      [v19 addSubview:v28];
      v29 = *&v19[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_gradientOverlayView];
      *&v19[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_gradientOverlayView] = v28;
    }

    v20 = &off_3BBE70;
    goto LABEL_13;
  }

  if (v17 - 1 >= 2)
  {
    goto LABEL_6;
  }

  v18 = objc_allocWithZone(type metadata accessor for UberTopFlipAndBlurBackgroundView());
  v19 = sub_156510(v16);
  v20 = &off_3BC598;
LABEL_13:
  swift_getObjectType();
  [v19 setAccessibilityIgnoresInvertColors:1];
  v30 = (v13 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_uberBackgroundView);
  v31 = *(v13 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_uberBackgroundView);
  *v30 = v19;
  v30[1] = v20;
  v32 = v19;

  v33 = v32;
  v34 = sub_14DD84(v33);

  [v13 insertSubview:v34 atIndex:0];
  v35 = *(v13 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_backgroundContentView);
  *(v13 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_backgroundContentView) = v34;
  v21 = v34;

  if ((*(v20 + 14))())
  {
    v36 = v33;
    v33 = v21;
    v21 = v13;
  }

  else
  {
    v37 = sub_14E55C();
    [v13 addSubview:v37];

    v36 = *(v13 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell____lazy_storage___fadeOutView);
    [v13 bringSubviewToFront:v36];
  }

LABEL_17:
  return v13;
}

void sub_14F4B4()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for UberCollectionViewCell();
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_backgroundContentView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 contentView];
    [v3 frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v16.origin.x = v5;
    v16.origin.y = v7;
    v16.size.width = v9;
    v16.size.height = v11;
    Height = CGRectGetHeight(v16);
    v13 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_backgroundYOffset];
    if (Height <= Height - v13)
    {
      Height = Height - v13;
    }

    v14 = OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_backgroundHeight;
    *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_backgroundHeight] = Height;
    [v0 bounds];
    [v2 setFrame:{0.0, v13, CGRectGetWidth(v17), *&v0[v14]}];
  }
}

void sub_14F6B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_uberBackgroundView);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_uberBackgroundView + 8);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 8);
    v5 = v1;
    v4(ObjectType, v2);
  }
}

void (*sub_14F748(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_14E378(v2);
  return sub_A9A78;
}

double sub_14F7B8()
{
  v1 = [v0 contentView];
  [v1 frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;

  return CGRectGetHeight(*&v10);
}

char *sub_14F8B8()
{
  v1 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_uberBackgroundView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_uberBackgroundView];
  }

  else
  {
    v2 = v0;
    v1 = 0;
  }

  v3 = v1;
  return v2;
}

id sub_14F93C()
{
  v1 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_background);
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_background + 16) > 0x3Fu)
  {
    return 0;
  }

  v2 = *v1;
  v3 = *v1;
  return v2;
}

void (*sub_14F988(void *a1))(void *)
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
  v2[4] = sub_14EA70(v2);
  return sub_A8F58;
}

uint64_t sub_14FA40(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_requestCancellable;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_14FAF8(void *a1)
{
  v2 = a1;

  sub_14E674(a1);
}

id sub_14FD5C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_14FDA4(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews18DummyExtensionView_contentView];
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews18DummyExtensionView_contentView] = a1;
  v4 = a1;

  if (a1)
  {
    [v1 addSubview:v4];
    [v1 setNeedsLayout];
  }
}

void sub_14FE40(void *a1)
{
  [v1 setContentView:a1];
}

uint64_t sub_14FF3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_14FF98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_23ShelfKitCollectionViews04UberC8ViewCellC10BackgroundO(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_150254(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 17))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1502A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_15030C(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = -64;
  }

  return result;
}

unint64_t sub_15034C()
{
  result = qword_405548;
  if (!qword_405548)
  {
    type metadata accessor for UberCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_405548);
  }

  return result;
}

id sub_1503A0(id result, void *a2, unsigned __int8 a3)
{
  v4 = a3 >> 6;
  if (v4 >= 2)
  {
    if (v4 == 3)
    {
      return result;
    }

    v5 = result;
    result = a2;
  }

  return result;
}

void sub_1503F0()
{
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_backgroundYOffset) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_backgroundHeight) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_backgroundContentView) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_topSafeAreaHeight) = 0;
  v1 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_uberBackgroundView);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_background;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = -64;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell____lazy_storage___fadeOutView) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_requestCancellable) = 0;
  sub_30D648();
  __break(1u);
}

char *sub_150518(void *a1, _OWORD *a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(v3) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = &v6[OBJC_IVAR____TtC23ShelfKitCollectionViews25UberFadeOutBackgroundView_configuration];
  *v7 = *a2;
  v9 = a2[3];
  v8 = a2[4];
  v10 = a2[2];
  *(v7 + 1) = a2[1];
  *(v7 + 2) = v10;
  *(v7 + 3) = v9;
  *(v7 + 4) = v8;
  v11 = v6;
  sub_14DC50(a2, &v15);

  v12 = *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews25UberFadeOutBackgroundView_image];
  *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews25UberFadeOutBackgroundView_image] = a1;
  v13 = a1;

  [*&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews25UberFadeOutBackgroundView_backgroundImageView] setImage:v13];
  [v11 setNeedsLayout];
  sub_153A38(a2);

  return v11;
}

double sub_150640()
{
  sub_303E38();
  sub_303E38();
  return v1;
}

uint64_t sub_1506F0(void *a1)
{
  v2 = 0x3FED70A3D70A3D71;
  if ([a1 userInterfaceIdiom] && objc_msgSend(a1, "horizontalSizeClass") == &dword_0 + 2)
  {
    return 0x4083600000000000;
  }

  return v2;
}

double sub_150760(unint64_t a1)
{
  result = 0.0;
  if (a1 <= 2)
  {
    return dbl_327798[a1];
  }

  return result;
}

char *sub_15078C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews25UberFadeOutBackgroundView_configuration];
  *&v25 = 0xC046000000000000;
  *(&v25 + 1) = 15;
  v26 = xmmword_327250;
  v27 = sub_1506F0;
  v28 = 0;
  v29 = sub_150760;
  v30 = 0;
  *&v31 = sub_1506E8;
  *(&v31 + 1) = 0;
  *(v10 + 2) = sub_1506F0;
  *(v10 + 3) = sub_150760;
  *(v10 + 4) = v31;
  v11 = v26;
  *v10 = v25;
  *(v10 + 1) = v11;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews25UberFadeOutBackgroundView_zoomFactor] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews25UberFadeOutBackgroundView_offset] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews25UberFadeOutBackgroundView_parallaxFactor] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews25UberFadeOutBackgroundView_image] = 0;
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews25UberFadeOutBackgroundView_gradientMaskLayer;
  v13 = objc_allocWithZone(CAGradientLayer);
  sub_14DC50(&v25, v24);
  *&v4[v12] = [v13 init];
  v14 = [objc_allocWithZone(UIImageView) init];
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews25UberFadeOutBackgroundView_backgroundImageView] = v14;
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  v16 = *&v15[OBJC_IVAR____TtC23ShelfKitCollectionViews25UberFadeOutBackgroundView_backgroundImageView];
  v17 = v15;
  v18 = v16;
  sub_151738(v16);
  v17[OBJC_IVAR____TtC23ShelfKitCollectionViews32_PodcastsBackgroundExtensionView_disableAutomaticLayout] = 1;
  v19 = *&v17[OBJC_IVAR____TtC23ShelfKitCollectionViews32_PodcastsBackgroundExtensionView_effectsView];
  swift_getKeyPath();
  swift_getKeyPath();
  v24[0] = 0;
  v20 = v19;
  sub_30CF08();

  v21 = [v17 layer];
  [v21 setMask:*&v17[OBJC_IVAR____TtC23ShelfKitCollectionViews25UberFadeOutBackgroundView_gradientMaskLayer]];

  return v17;
}

void sub_150A08(void *a1, void *a2)
{
  v5 = objc_opt_self();
  [v5 begin];
  [v5 setDisableActions:1];
  [a2 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [a1 bounds];
  v55 = v15;
  v56 = v14;
  rect_24 = v17;
  v54 = v16;
  v18 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews25UberFadeOutBackgroundView_gradientMaskLayer];
  [a1 bounds];
  [v18 setFrame:?];
  v19 = objc_opt_self();
  v20 = [v19 whiteColor];
  v21 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews25UberFadeOutBackgroundView_configuration];
  v22 = [v20 colorWithAlphaComponent:*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews25UberFadeOutBackgroundView_configuration + 24]];

  v23 = [v22 CGColor];
  v24 = *(v21 + 1);
  v25 = [v2 effectiveUserInterfaceLayoutDirection];
  if ((v24 & 2) != 0)
  {
    if (v25 == &dword_0 + 1)
    {
      if ((v24 & 8) == 0)
      {
        v26 = 8;
        if ((v24 & 1) == 0)
        {
LABEL_21:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_31D470;
          v36 = [v19 whiteColor];
          v37 = [v36 CGColor];

          *(inited + 32) = v37;
          *(inited + 40) = v23;
          v38 = v23;
          v39 = [v19 clearColor];
          v40 = [v39 CGColor];

          *(inited + 48) = v40;
          sub_14A4DC(inited);
          goto LABEL_22;
        }

        goto LABEL_18;
      }

      v27 = 8;
      v28 = 2;
    }

    else
    {
      if ((v24 & 8) == 0)
      {
        v26 = 2;
        if ((v24 & 1) == 0)
        {
LABEL_19:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
          v29 = swift_initStackObject();
          *(v29 + 16) = xmmword_31D470;
          v30 = [v19 clearColor];
          v31 = [v30 CGColor];

          *(v29 + 32) = v31;
          *(v29 + 40) = v23;
          v32 = v23;
          v33 = [v19 whiteColor];
          v34 = [v33 CGColor];

          *(v29 + 48) = v34;
          sub_14A4DC(v29);
LABEL_20:
          if ((v26 & 8) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_18:
        if ((v26 & 2) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v27 = 2;
      v28 = 8;
    }

LABEL_17:
    v26 = v27 | v28;
    goto LABEL_18;
  }

  if ((v24 & 8) != 0)
  {
    v27 = 0;
    v28 = 8;
    if (v25 == &dword_0 + 1)
    {
      v28 = 2;
    }

    goto LABEL_17;
  }

  v26 = 0;
  if (v24)
  {
    goto LABEL_18;
  }

LABEL_22:
  sub_1ADEE8(_swiftEmptyArrayStorage);

  isa = sub_30C358().super.isa;

  [v18 setColors:isa];

  v57.origin.x = v7;
  v57.origin.y = v9;
  v57.size.width = v11;
  v57.size.height = v13;
  CGRectGetMinX(v57);
  v58.origin.y = v9;
  v58.origin.x = v7;
  v58.size.width = v11;
  v58.size.height = v13;
  CGRectGetMaxX(v58);
  v59.origin.x = v56;
  v59.origin.y = v55;
  v59.size.width = v54;
  v59.size.height = rect_24;
  CGRectGetWidth(v59);
  v42.super.super.isa = sub_302DF8().super.super.isa;
  v60.origin.x = v7;
  v60.origin.y = v9;
  v60.size.width = v11;
  v60.size.height = v13;
  CGRectGetMinX(v60);
  v61.origin.x = v56;
  v61.origin.y = v55;
  v61.size.width = v54;
  v61.size.height = rect_24;
  CGRectGetWidth(v61);
  v43.super.super.isa = sub_302DF8().super.super.isa;
  v62.origin.x = v7;
  v62.origin.y = v9;
  v62.size.width = v11;
  v62.size.height = v13;
  CGRectGetMaxX(v62);
  v63.origin.x = v56;
  v63.origin.y = v55;
  v63.size.width = v54;
  v63.size.height = rect_24;
  CGRectGetWidth(v63);
  v44.super.super.isa = sub_302DF8().super.super.isa;
  v64.origin.x = v56;
  v64.origin.y = v55;
  v64.size.width = v54;
  v64.size.height = rect_24;
  CGRectGetWidth(v64);
  v45.super.super.isa = sub_302DF8().super.super.isa;
  if ((v26 & 2) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v46 = swift_initStackObject();
    *(v46 + 16) = xmmword_31D470;
    sub_124C4(0, &qword_4053E0);
    *(v46 + 32) = sub_30D068(0.0);
    *(v46 + 40) = v42;
    *(v46 + 48) = v43;
    v47 = v42.super.super.isa;
    v48 = v43.super.super.isa;
    sub_14A508(v46);
  }

  if ((v26 & 8) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v49 = swift_initStackObject();
    *(v49 + 16) = xmmword_31D470;
    *(v49 + 32) = v44;
    *(v49 + 40) = v45;
    sub_124C4(0, &qword_4053E0);
    v50 = v44.super.super.isa;
    v51 = v45.super.super.isa;
    *(v49 + 48) = sub_30D068(1.0);
    sub_14A508(v49);
  }

  sub_124C4(0, &qword_4053E0);
  v52 = sub_30C358().super.isa;

  [v18 setLocations:v52];

  [v18 setStartPoint:{0.0, 0.5}];
  [v18 setEndPoint:{1.0, 0.5}];
  [v5 commit];
}

void sub_15105C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_30D6F8();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62.receiver = v1;
  v62.super_class = ObjectType;
  objc_msgSendSuper2(&v62, "layoutSubviews", v5);
  v8 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews25UberFadeOutBackgroundView_image];
  if (!v8)
  {
    return;
  }

  v60 = v3;
  v9 = v8;
  [v1 bounds];
  v11 = v10;
  [v9 size];
  v13 = v12;
  v61 = v9;
  [v9 size];
  v14 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews25UberFadeOutBackgroundView_configuration];
  v15 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews25UberFadeOutBackgroundView_configuration + 48];
  v17 = v13 / v16;

  v18 = [v1 traitCollection];
  v19 = [v18 horizontalSizeClass];

  [v1 bounds];
  v22 = v15(v19, v20, v21);
  v24 = v23;

  v25 = *(v14 + 8);

  v26 = [v1 traitCollection];
  v27 = v25();

  v28 = *(v14 + 4);

  v29 = [v1 traitCollection];
  v30 = COERCE_DOUBLE(v28());
  v32 = v31;

  if (v32)
  {
    if (v32 == 1)
    {
      v33 = v30;
      v34 = v30 / v17;
      [v1 safeAreaInsets];
      v36 = v24 + v35;
      if (v36 <= v11 - v34)
      {
        v37 = v11 - v34;
      }

      else
      {
        v37 = v36;
      }
    }

    else
    {
      v33 = v11 * v17;
      [v1 safeAreaInsets];
      v37 = v24 + v38;
      v34 = v11;
    }
  }

  else
  {
    [v1 bounds];
    v33 = CGRectGetWidth(v63) * v30;
    v34 = v33 / v17;
    v37 = v24 + v11 - v34;
  }

  v39 = v60;
  v40 = v61;
  v41 = [v1 effectiveUserInterfaceLayoutDirection];
  if ((v27 & 2) == 0)
  {
    if ((v27 & 8) == 0)
    {
      goto LABEL_26;
    }

    v42 = 0;
    v43 = 8;
    if (v41 == &dword_0 + 1)
    {
      v43 = 2;
    }

    if (v27)
    {
      goto LABEL_26;
    }

LABEL_23:
    if ((v27 & 4) == 0 && (v42 | v43) == 8)
    {
      goto LABEL_25;
    }

LABEL_26:
    [v1 safeAreaInsets];
    v46 = v22 + v47;
    goto LABEL_27;
  }

  if (v41 != &dword_0 + 1)
  {
    if ((v27 & 8) == 0)
    {
      goto LABEL_26;
    }

    v42 = 2;
    v43 = 8;
    if (v27)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if ((v27 & 8) != 0)
  {
    v42 = 8;
    v43 = 2;
    if (v27)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if ((v27 & 5) != 0)
  {
    goto LABEL_26;
  }

LABEL_25:
  [v1 bounds];
  v44 = CGRectGetWidth(v64) - v33;
  [v1 safeAreaInsets];
  v46 = v44 - (v22 + v45);
LABEL_27:
  v48 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews25UberFadeOutBackgroundView_backgroundImageView];
  (*(v4 + 104))(v7, enum case for FloatingPointRoundingRule.up(_:), v39);
  v49 = [v1 traitCollection];
  [v49 displayScale];
  if (v50 < COERCE_DOUBLE(1))
  {
    v51 = [objc_opt_self() mainScreen];
    [v51 scale];
  }

  v65.origin.x = v46;
  v65.origin.y = v37;
  v65.size.width = v33;
  v65.size.height = v34;
  CGRectGetMinX(v65);
  sub_302E58();
  v53 = v52;
  v66.origin.x = v46;
  v66.origin.y = v37;
  v66.size.width = v33;
  v66.size.height = v34;
  CGRectGetMinY(v66);
  sub_302E58();
  v55 = v54;
  v67.origin.x = v46;
  v67.origin.y = v37;
  v67.size.width = v33;
  v67.size.height = v34;
  CGRectGetWidth(v67);
  sub_302E58();
  v57 = v56;
  v68.origin.x = v46;
  v68.origin.y = v37;
  v68.size.width = v33;
  v68.size.height = v34;
  CGRectGetHeight(v68);
  sub_302E58();
  v59 = v58;

  (*(v4 + 8))(v7, v39);
  [v48 setFrame:{v53, v55, v57, v59}];
  sub_150A08(v1, v48);
}

void sub_1515F8()
{

  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews25UberFadeOutBackgroundView_gradientMaskLayer);
}

void sub_151738(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews32_PodcastsBackgroundExtensionView_effectsView];
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_C06707F825E99BAFD690449AC4377D5933_UIBackgroundExtensionEffectsView_referenceView;
  v5 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_C06707F825E99BAFD690449AC4377D5933_UIBackgroundExtensionEffectsView_referenceView];
  if (a1)
  {
    if (v5 == a1)
    {
      goto LABEL_10;
    }
  }

  else if (!v5)
  {
    return;
  }

  v12 = a1;
  v6 = [v5 superview];
  if (v6)
  {
    v7 = v6;
    sub_124C4(0, &qword_3FBD90);
    v8 = v1;
    v9 = sub_30D098();

    if (v9)
    {
      [*&v3[v4] removeFromSuperview];
    }
  }

  v10 = *&v3[v4];
  *&v3[v4] = v12;
  v11 = v12;

  [v3 setNeedsLayout];
  if (v12)
  {
    [v1 insertSubview:v11 belowSubview:v3];
    a1 = v11;
LABEL_10:
  }
}

id sub_1518A4(double a1)
{
  v2 = *v1;
  *(*v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews25UberFadeOutBackgroundView_zoomFactor) = a1;
  return [v2 setNeedsLayout];
}

id sub_1518C0(double a1)
{
  v2 = *v1;
  *(*v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews25UberFadeOutBackgroundView_offset) = a1;
  return [v2 setNeedsLayout];
}

char *sub_151B64(void *a1)
{
  v1[OBJC_IVAR____TtC23ShelfKitCollectionViews32_PodcastsBackgroundExtensionView_disableAutomaticLayout] = 0;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews32_PodcastsBackgroundExtensionView_effectsView] = [objc_allocWithZone(type metadata accessor for _UIBackgroundExtensionEffectsView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8.receiver = v1;
  v8.super_class = type metadata accessor for _PodcastsBackgroundExtensionView();
  v3 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);
  v4 = v3;
  if (v3)
  {
    v5 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews32_PodcastsBackgroundExtensionView_effectsView];
    v6 = v3;
    [v6 addSubview:v5];
  }

  return v4;
}

void sub_151C4C()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for _PodcastsBackgroundExtensionView();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews32_PodcastsBackgroundExtensionView_effectsView];
  [v0 bounds];
  [v1 setFrame:?];
  if ((v0[OBJC_IVAR____TtC23ShelfKitCollectionViews32_PodcastsBackgroundExtensionView_disableAutomaticLayout] & 1) == 0)
  {
    v2 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_C06707F825E99BAFD690449AC4377D5933_UIBackgroundExtensionEffectsView_referenceView];
    if (v2)
    {
      v3 = v2;
      [v0 bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      [v0 safeAreaInsets];
      [v3 setFrame:{UIEdgeInsetsInsetRect(v5, v7, v9, v11, v12, v13)}];
    }
  }
}

uint64_t sub_151DE8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_30CEF8();

  return v1;
}

void sub_151E5C(void *a1)
{
  v2 = v1;
  v107.receiver = v1;
  v107.super_class = type metadata accessor for _UIBackgroundExtensionEffectsView();
  objc_msgSendSuper2(&v107, "layoutSublayersOfLayer:", a1);
  sub_124C4(0, &qword_40A690);
  v4 = [v1 layer];
  v5 = sub_30D098();

  if (v5)
  {
    v6 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_C06707F825E99BAFD690449AC4377D5933_UIBackgroundExtensionEffectsView_referenceView];
    if (v6)
    {
      v103 = a1;
      v7 = objc_opt_self();
      v8 = v6;
      [v7 begin];
      [v7 setDisableActions:1];
      v104 = [v8 layer];
      v9 = OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_C06707F825E99BAFD690449AC4377D5933_UIBackgroundExtensionEffectsView_portals;
      swift_beginAccess();
      v10 = 0;
      v11 = 0;
LABEL_4:
      if (v11 <= 4)
      {
        v12 = 4;
      }

      else
      {
        v12 = v11;
      }

      v13 = v11;
      while (v12 != v13)
      {
        v14 = *(&off_3B46D0 + v13 + 32);
        [v8 frame];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;
        [v2 bounds];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v31 = v16;
        v32 = v18;
        v33 = v20;
        v34 = v22;
        if (v14 > 1)
        {
          if (v14 == 2)
          {
            MaxY = CGRectGetMaxY(*&v31);
            v110.origin.x = v24;
            v110.origin.y = v26;
            v110.size.width = v28;
            v110.size.height = v30;
            if (MaxY < CGRectGetMaxY(v110))
            {
              goto LABEL_27;
            }
          }

          else
          {
            MaxX = CGRectGetMaxX(*&v31);
            v112.origin.x = v24;
            v112.origin.y = v26;
            v112.size.width = v28;
            v112.size.height = v30;
            if (MaxX < CGRectGetMaxX(v112))
            {
LABEL_27:
              v47 = *&v2[v9];
              if (*(v47 + 16) && (v48 = sub_191CC8(v14), (v49 & 1) != 0))
              {
                v50 = *(*(v47 + 56) + 8 * v48);
                v51 = [v50 superlayer];
                if (v51)
                {
                }

                else
                {
                  [v103 insertSublayer:v50 atIndex:0];
                }
              }

              else
              {
                v102 = v7;
                v52 = [objc_allocWithZone(CAPortalLayer) init];
                v106.a = 8.18364421e-308;
                v106.b = -1.39234638e188;
                v53 = 0x6D6F74746F42;
                if (v14 != 2)
                {
                  v53 = 0x7468676952;
                }

                v54 = 0xE600000000000000;
                if (v14 != 2)
                {
                  v54 = 0xE500000000000000;
                }

                v55 = 7368532;
                if (v14)
                {
                  v55 = 1952867660;
                }

                v56 = 0xE300000000000000;
                if (v14)
                {
                  v56 = 0xE400000000000000;
                }

                if (v14 <= 1)
                {
                  v57 = v55;
                }

                else
                {
                  v57 = v53;
                }

                if (v14 <= 1)
                {
                  v58 = v56;
                }

                else
                {
                  v58 = v54;
                }

                v50 = v52;
                v108._countAndFlagsBits = v57;
                v108._object = v58;
                sub_30C238(v108);

                v59 = sub_30C098();

                [v50 setName:v59];

                [v103 insertSublayer:v50 atIndex:0];
                swift_beginAccess();
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v105.a = *&v2[v9];
                *&v2[v9] = 0x8000000000000000;
                sub_2961BC(v50, v14, isUniquelyReferenced_nonNull_native);
                *&v2[v9] = v105.a;
                swift_endAccess();
                v7 = v102;
              }

              [v50 setSourceLayer:v104];
              [v8 frame];
              v65 = v61;
              v66 = v62;
              v67 = v63;
              v68 = v64;
              if (v14 > 1)
              {
                if (v14 != 2)
                {
                  MinX = CGRectGetMaxX(*&v61);
                  goto LABEL_53;
                }

                MinX = CGRectGetMinX(*&v61);
                v115.origin.x = v65;
                v115.origin.y = v66;
                v115.size.width = v67;
                v115.size.height = v68;
                v72 = CGRectGetMaxY(v115);
              }

              else
              {
                if (!v14)
                {
                  MinX = CGRectGetMinX(*&v61);
                  v113.origin.x = v65;
                  v113.origin.y = v66;
                  v113.size.width = v67;
                  v113.size.height = v68;
                  MinY = CGRectGetMinY(v113);
                  v114.origin.x = v65;
                  v114.origin.y = v66;
                  v114.size.width = v67;
                  v114.size.height = v68;
                  v71 = MinY - CGRectGetHeight(v114);
                  goto LABEL_55;
                }

                v73 = CGRectGetMinX(*&v61);
                v116.origin.x = v65;
                v116.origin.y = v66;
                v116.size.width = v67;
                v116.size.height = v68;
                MinX = v73 - CGRectGetWidth(v116);
LABEL_53:
                v117.origin.x = v65;
                v117.origin.y = v66;
                v117.size.width = v67;
                v117.size.height = v68;
                v72 = CGRectGetMinY(v117);
              }

              v71 = v72;
LABEL_55:
              v11 = v13 + 1;
              v118.origin.x = v65;
              v118.origin.y = v66;
              v118.size.width = v67;
              v118.size.height = v68;
              Width = CGRectGetWidth(v118);
              v119.origin.x = v65;
              v119.origin.y = v66;
              v119.size.width = v67;
              v119.size.height = v68;
              [v50 setFrame:{MinX, v71, Width, CGRectGetHeight(v119)}];
              v75 = 1.0;
              if (((v14 - 1) & 0xFFFFFFFFFFFFFFFDLL) != 0)
              {
                v76 = 1.0;
              }

              else
              {
                v76 = -1.0;
              }

              v106.b = 0.0;
              v106.c = 0.0;
              if ((v14 & 0x7D) == 0)
              {
                v75 = -1.0;
              }

              v106.a = 1.0;
              v106.d = 1.0;
              v106.tx = 0.0;
              v106.ty = 0.0;
              CGAffineTransformScale(&v105, &v106, v76, v75);
              v106 = v105;
              [v50 setAffineTransform:&v106];

              v10 = 1;
              if (v13 == 3)
              {
LABEL_64:
                swift_getKeyPath();
                swift_getKeyPath();
                sub_30CEF8();

                if (LOBYTE(v106.a))
                {
                  goto LABEL_65;
                }

                v81 = OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_C06707F825E99BAFD690449AC4377D5933_UIBackgroundExtensionEffectsView_blurLayer;
                v82 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_C06707F825E99BAFD690449AC4377D5933_UIBackgroundExtensionEffectsView_blurLayer];
                if (v82)
                {
                  v83 = v82;
                  v84 = [v83 superlayer];
                  v85 = v103;
                  if (v84)
                  {
                  }

                  else
                  {
                    [v103 addSublayer:v83];
                  }
                }

                else
                {
                  v83 = [objc_allocWithZone(CABackdropLayer) init];
                  v86 = sub_30C098();
                  [v83 setName:v86];

                  v85 = v103;
                  [v103 addSublayer:v83];
                  v87 = *&v2[v81];
                  *&v2[v81] = v83;

                  v88 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterVariableBlur];
                  v89 = sub_30C098();
                  [v88 setName:v89];

                  isa = sub_30C3E8().super.super.isa;
                  [v88 setValue:isa forKey:kCAFilterInputNormalizeEdges];

                  v91 = sub_30C588().super.super.isa;
                  [v88 setValue:v91 forKey:kCAFilterInputRadius];

                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC498);
                  v92 = swift_allocObject();
                  *(v92 + 16) = xmmword_315430;
                  *(v92 + 56) = sub_124C4(0, &qword_3FC4A0);
                  *(v92 + 32) = v88;
                  v93 = v88;
                  v94 = sub_30C358().super.isa;

                  [v83 setFilters:v94];
                }

                [v8 frame];
                v99 = sub_1528F8(v95, v96, v97, v98);
                v100 = [v99 CGImage];
                v101 = sub_30C098();
                [v83 setValue:v100 forKeyPath:v101];

                [v85 bounds];
                [v83 setFrame:?];

                v80 = v104;
LABEL_74:

                [v7 commit];
                return;
              }

              goto LABEL_4;
            }
          }
        }

        else if (v14)
        {
          v37 = CGRectGetMinX(*&v31);
          v111.origin.x = v24;
          v111.origin.y = v26;
          v111.size.width = v28;
          v111.size.height = v30;
          if (CGRectGetMinX(v111) < v37)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v35 = CGRectGetMinY(*&v31);
          v109.origin.x = v24;
          v109.origin.y = v26;
          v109.size.width = v28;
          v109.size.height = v30;
          if (CGRectGetMinY(v109) < v35)
          {
            goto LABEL_27;
          }
        }

        v39 = *&v2[v9];
        if (*(v39 + 16))
        {
          v40 = sub_191CC8(v14);
          if (v41)
          {
            [*(*(v39 + 56) + 8 * v40) removeFromSuperlayer];
          }
        }

        swift_beginAccess();
        v42 = sub_191CC8(v14);
        if (v43)
        {
          v44 = v42;
          v45 = swift_isUniquelyReferenced_nonNull_native();
          a = *&v2[v9];
          v105.a = a;
          *&v2[v9] = 0x8000000000000000;
          if (!v45)
          {
            sub_297EC4();
            a = v105.a;
          }

          sub_1B4650(v44, *&a);
          *&v2[v9] = a;
        }

        ++v13;
        swift_endAccess();
        if (v13 == 4)
        {
          if (v10)
          {
            goto LABEL_64;
          }

LABEL_65:
          v77 = OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_C06707F825E99BAFD690449AC4377D5933_UIBackgroundExtensionEffectsView_blurLayer;
          v78 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_C06707F825E99BAFD690449AC4377D5933_UIBackgroundExtensionEffectsView_blurLayer];
          if (v78)
          {
            v79 = v78;
            [v79 removeFromSuperlayer];
          }

          v80 = *&v2[v77];
          *&v2[v77] = 0;
          goto LABEL_74;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1528F8(double a1, double a2, double a3, double a4)
{
  [v4 bounds];
  v11 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v9, v10}];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = v4;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_153AA0;
  *(v13 + 24) = v12;
  v18[4] = sub_153AC0;
  v18[5] = v13;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_2B136C;
  v18[3] = &block_descriptor_28;
  v14 = _Block_copy(v18);
  v15 = v4;

  v16 = [v11 imageWithActions:v14];

  _Block_release(v14);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if ((v11 & 1) == 0)
  {
    return v16;
  }

  __break(1u);
  return result;
}

void sub_152AC8(void *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  c = [a1 CGContext];
  v10 = [objc_allocWithZone(CAGradientLayer) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC498);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_315420;
  v12 = objc_opt_self();
  v13 = [v12 blackColor];
  v14 = [v13 CGColor];

  type metadata accessor for CGColor(0);
  v16 = v15;
  *(v11 + 56) = v15;
  *(v11 + 32) = v14;
  v17 = [v12 clearColor];
  v18 = [v17 CGColor];

  *(v11 + 88) = v16;
  *(v11 + 64) = v18;
  isa = sub_30C358().super.isa;

  [v10 setColors:isa];

  for (i = 0; i != 4; ++i)
  {
    v22 = *(&off_3B46F8 + i + 32);
    [a2 bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = a3;
    v32 = a4;
    v33 = a5;
    if (v22 > 1)
    {
      v36 = a6;
      if (v22 == 2)
      {
        MaxY = CGRectGetMaxY(*&v31);
        v63.origin.x = v24;
        v63.origin.y = v26;
        v63.size.width = v28;
        v63.size.height = v30;
        MaxX = CGRectGetMaxY(v63);
      }

      else
      {
        MaxY = CGRectGetMaxX(*&v31);
        v65.origin.x = v24;
        v65.origin.y = v26;
        v65.size.width = v28;
        v65.size.height = v30;
        MaxX = CGRectGetMaxX(v65);
      }

      if (MaxY >= MaxX)
      {
        continue;
      }
    }

    else if (v22)
    {
      v39 = a6;
      MinX = CGRectGetMinX(*&v31);
      v64.origin.x = v24;
      v64.origin.y = v26;
      v64.size.width = v28;
      v64.size.height = v30;
      if (CGRectGetMinX(v64) >= MinX)
      {
        continue;
      }
    }

    else
    {
      v34 = a6;
      MinY = CGRectGetMinY(*&v31);
      v62.origin.x = v24;
      v62.origin.y = v26;
      v62.size.width = v28;
      v62.size.height = v30;
      if (CGRectGetMinY(v62) >= MinY)
      {
        continue;
      }
    }

    [a2 bounds];
    v45 = sub_152F04(v22, a3, a4, a5, a6, v41, v42, v43, v44);
    v47 = v46;
    v49 = v48;
    v51 = v50;
    [v10 setFrame:?];
    v52 = v45;
    v53 = v47;
    v54 = v49;
    v55 = v51;
    if ((v22 | 2) == 2)
    {
      Height = CGRectGetHeight(*&v52);
    }

    else
    {
      Height = CGRectGetWidth(*&v52);
    }

    v57 = 0.0;
    if (Height > 0.0)
    {
      v57 = fmax(fmin(72.0 / Height, 1.0), 0.0);
    }

    if (v22 > 1)
    {
      v58 = 0.0;
      if (v22 == 2)
      {
        [v10 setStartPoint:{0.0, v57}];
      }

      else
      {
        [v10 setStartPoint:{v57, 0.0}];
      }

      v21 = 0.0;
    }

    else if (v22)
    {
      v58 = 1.0;
      v21 = 0.0;
      [v10 setStartPoint:{1.0 - v57, 0.0}];
    }

    else
    {
      v21 = 1.0;
      v58 = 0.0;
      [v10 setStartPoint:{0.0, 1.0 - v57}];
    }

    [v10 setEndPoint:{v58, v21}];
    CGContextSaveGState(c);
    CGContextTranslateCTM(c, v45, v47);
    [v10 renderInContext:c];
    CGContextRestoreGState(c);
  }
}

double sub_152F04(unsigned __int8 a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  CGRectGetHeight(*&a2);
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  CGRectGetWidth(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  CGRectGetHeight(v26);
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  Width = CGRectGetWidth(v27);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v33.origin.x = a6;
      v33.origin.y = a7;
      v33.size.width = a8;
      v33.size.height = a9;
      MinX = CGRectGetMinX(v33);
      v34.origin.x = a2;
      v34.origin.y = a3;
      v34.size.width = a4;
      v34.size.height = a5;
      CGRectGetMaxY(v34);
      v35.origin.x = a6;
      v35.origin.y = a7;
      v35.size.width = a8;
      v35.size.height = a9;
      CGRectGetWidth(v35);
      v36.origin.x = a6;
      v36.origin.y = a7;
      v36.size.width = a8;
      v36.size.height = a9;
      CGRectGetMaxY(v36);
      v37.origin.x = a2;
      v37.origin.y = a3;
      v37.size.width = a4;
      v37.size.height = a5;
      CGRectGetMaxY(v37);
      return MinX;
    }

    v19 = Width * 0.05;
    v42.origin.x = a2;
    v42.origin.y = a3;
    v42.size.width = a4;
    v42.size.height = a5;
    MinX = CGRectGetMaxX(v42) - v19;
    v43.origin.x = a6;
    v16 = a7;
    v17 = a8;
    v43.origin.y = a7;
    v43.size.width = a8;
    v18 = a9;
    v43.size.height = a9;
    CGRectGetMinY(v43);
    v44.origin.x = a6;
    v44.origin.y = a7;
    v44.size.width = a8;
    v44.size.height = a9;
    CGRectGetMaxX(v44);
    v45.origin.x = a2;
    v45.origin.y = a3;
    v45.size.width = a4;
    v45.size.height = a5;
    CGRectGetMaxX(v45);
LABEL_8:
    v46.origin.x = a6;
    v46.origin.y = v16;
    v46.size.width = v17;
    v46.size.height = v18;
    CGRectGetHeight(v46);
    return MinX;
  }

  if (a1)
  {
    v38.origin.x = a6;
    v16 = a7;
    v17 = a8;
    v38.origin.y = a7;
    v38.size.width = a8;
    v18 = a9;
    v38.size.height = a9;
    MinX = CGRectGetMinX(v38);
    v39.origin.x = a6;
    v39.origin.y = a7;
    v39.size.width = a8;
    v39.size.height = a9;
    CGRectGetMinY(v39);
    v40.origin.x = a2;
    v40.origin.y = a3;
    v40.size.width = a4;
    v40.size.height = a5;
    CGRectGetMinX(v40);
    v41.origin.x = a6;
    v41.origin.y = a7;
    v41.size.width = a8;
    v41.size.height = a9;
    CGRectGetMinX(v41);
    goto LABEL_8;
  }

  v28.origin.x = a6;
  v28.origin.y = a7;
  v28.size.width = a8;
  v28.size.height = a9;
  MinX = CGRectGetMinX(v28);
  v29.origin.x = a6;
  v29.origin.y = a7;
  v29.size.width = a8;
  v29.size.height = a9;
  CGRectGetMinY(v29);
  v30.origin.x = a6;
  v30.origin.y = a7;
  v30.size.width = a8;
  v30.size.height = a9;
  CGRectGetWidth(v30);
  v31.origin.x = a2;
  v31.origin.y = a3;
  v31.size.width = a4;
  v31.size.height = a5;
  CGRectGetMinY(v31);
  v32.origin.x = a6;
  v32.origin.y = a7;
  v32.size.width = a8;
  v32.size.height = a9;
  CGRectGetMinY(v32);
  return MinX;
}

id sub_153230(double a1, double a2, double a3, double a4)
{
  v9 = sub_30CF38();
  __chkstk_darwin(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405660);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - v12;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_C06707F825E99BAFD690449AC4377D5933_UIBackgroundExtensionEffectsView_referenceView] = 0;
  v14 = OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_C06707F825E99BAFD690449AC4377D5933_UIBackgroundExtensionEffectsView__disableBlurEffects;
  v20 = 0;
  sub_30CF28();
  sub_30CEE8();
  (*(v11 + 32))(&v4[v14], v13, v10);
  v15 = OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_C06707F825E99BAFD690449AC4377D5933_UIBackgroundExtensionEffectsView_portals;
  *&v4[v15] = sub_2D74A0(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_C06707F825E99BAFD690449AC4377D5933_UIBackgroundExtensionEffectsView_blurLayer] = 0;
  v16 = type metadata accessor for _UIBackgroundExtensionEffectsView();
  v19.receiver = v4;
  v19.super_class = v16;
  return objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
}

id sub_153434(void *a1)
{
  v3 = sub_30CF38();
  __chkstk_darwin(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405660);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_C06707F825E99BAFD690449AC4377D5933_UIBackgroundExtensionEffectsView_referenceView] = 0;
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_C06707F825E99BAFD690449AC4377D5933_UIBackgroundExtensionEffectsView__disableBlurEffects;
  v15 = 0;
  sub_30CF28();
  sub_30CEE8();
  (*(v5 + 32))(&v1[v8], v7, v4);
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_C06707F825E99BAFD690449AC4377D5933_UIBackgroundExtensionEffectsView_portals;
  *&v1[v9] = sub_2D74A0(_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_C06707F825E99BAFD690449AC4377D5933_UIBackgroundExtensionEffectsView_blurLayer] = 0;
  v10 = type metadata accessor for _UIBackgroundExtensionEffectsView();
  v14.receiver = v1;
  v14.super_class = v10;
  v11 = objc_msgSendSuper2(&v14, "initWithCoder:", a1);

  if (v11)
  {
  }

  return v11;
}

id sub_15364C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for _UIBackgroundExtensionEffectsView()
{
  result = qword_405630;
  if (!qword_405630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_153780()
{
  sub_15382C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_15382C()
{
  if (!qword_405640)
  {
    sub_30CF38();
    v0 = sub_30CF18();
    if (!v1)
    {
      atomic_store(v0, &qword_405640);
    }
  }
}

uint64_t sub_1538BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_153904(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_15396C()
{
  result = qword_405648;
  if (!qword_405648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_405650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_405648);
  }

  return result;
}

unint64_t sub_1539E4()
{
  result = qword_405658;
  if (!qword_405658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_405658);
  }

  return result;
}

uint64_t sub_153A68()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_153AE0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_30CEF8();

  *a1 = v3;
  return result;
}

uint64_t sub_153B64(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_30CF08();
}

void sub_153BD8()
{
  v1 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews25UberFadeOutBackgroundView_configuration);
  *&v6 = 0xC046000000000000;
  *(&v6 + 1) = 15;
  v7 = xmmword_327250;
  v8 = sub_1506F0;
  v9 = 0;
  v10 = sub_150760;
  v11 = 0;
  *&v12 = sub_1506E8;
  *(&v12 + 1) = 0;
  v1[2] = sub_1506F0;
  v1[3] = sub_150760;
  v1[4] = v12;
  v2 = v7;
  *v1 = v6;
  v1[1] = v2;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews25UberFadeOutBackgroundView_zoomFactor) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews25UberFadeOutBackgroundView_offset) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews25UberFadeOutBackgroundView_parallaxFactor) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews25UberFadeOutBackgroundView_image) = 0;
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews25UberFadeOutBackgroundView_gradientMaskLayer;
  v4 = objc_allocWithZone(CAGradientLayer);
  sub_14DC50(&v6, v5);
  *(v0 + v3) = [v4 init];
  sub_30D648();
  __break(1u);
}

uint64_t getEnumTagSinglePayload for UberFadeOutBackgroundView.Configuration.ImageContentMode(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for UberFadeOutBackgroundView.Configuration.ImageContentMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_153DAC(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_153DC4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_153DEC(char a1, char a2)
{
  if (a1)
  {
    v4 = 1.0;
    v5 = 0.0;
    v6 = 0.35;
    v7 = 0.0;
  }

  else
  {
    v8 = [v2 traitCollection];
    v9 = sub_30C9D8();

    if (v9)
    {
      v5 = 20.0;
    }

    else
    {
      v5 = -20.0;
    }

    v7 = 1.0;
    v4 = 0.0;
    v6 = 0.2;
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v7;
  *(v11 + 32) = v4;
  *(v11 + 40) = v5;
  if (a2)
  {
    v12 = objc_allocWithZone(UIViewPropertyAnimator);
    v16[4] = sub_154E44;
    v16[5] = v11;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_914CC;
    v16[3] = &block_descriptor_29;
    v13 = _Block_copy(v16);

    v14 = [v12 initWithDuration:2 curve:v13 animations:v6];
    _Block_release(v13);
    [v14 startAnimation];
  }

  else
  {

    sub_154AF0(v7, v4, v5);
  }
}

void sub_154000(uint64_t a1)
{
  v53 = a1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4080B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v51 - v4;
  v59 = sub_302AB8();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23UberNavigationTitleView_backButtonStyle] = 0;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23UberNavigationTitleView_customBackButton] = 0;
  v62.receiver = v1;
  v62.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v62, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v7 setHideStandardTitle:1];
  sub_302938();
  v8 = sub_3029E8();
  v9 = *(v8 - 8);
  v54 = *(v9 + 56);
  v55 = v9 + 56;
  v54(v5, 1, 1, v8);
  v58 = type metadata accessor for GlyphButton();
  v10 = objc_allocWithZone(v58);
  v11 = &v10[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customTitle];
  *v11 = 0;
  v11[1] = 0;
  *&v10[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillMask] = 0;
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_platterFillColor;
  sub_124C4(0, &qword_3FFD48);
  v13 = objc_opt_self();
  v14 = [v13 systemGray6Color];
  v52 = v13;
  v15 = [v13 systemGray5Color];
  v16 = sub_30CFB8();

  *&v10[v12] = v16;
  v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyphView;
  *&v10[v17] = [objc_allocWithZone(UIImageView) init];
  v18 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillView;
  v19 = [objc_allocWithZone(UIView) init];
  [v19 setClipsToBounds:1];
  [v19 setUserInteractionEnabled:0];
  *&v10[v18] = v19;
  v20 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView;
  v21 = [objc_opt_self() effectWithStyle:16];
  v22 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v21];

  v23 = v22;
  [v23 setUserInteractionEnabled:0];
  v24 = v57;
  [v23 setClipsToBounds:1];

  *&v10[v20] = v23;
  v25 = v59;
  *&v10[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_previousPlatterFillColor] = 0;
  *&v10[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay] = 0;
  v10[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlayHidesBackground] = 1;
  v26 = &v10[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock];
  *v26 = 0;
  v26[1] = 0;
  v10[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeOutInProgress] = 0;
  v27 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color;
  v28 = v8;
  v29 = v56;
  v54(&v10[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color], 1, 1, v28);
  (*(v24 + 16))(&v10[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyph], v29, v25);
  swift_beginAccess();
  sub_A8088(v5, &v10[v27]);
  swift_endAccess();
  v10[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style] = 1;
  v10[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_active] = 0;
  v30 = *&v10[v17];
  v31 = &v10[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout];
  *(v31 + 1) = 0;
  *(v31 + 2) = 0;
  *v31 = v30;
  v31[24] = 0;
  v61.receiver = v10;
  v61.super_class = v58;
  v32 = v30;
  v33 = objc_msgSendSuper2(&v61, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_24DE30();
  if (v33[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 24])
  {
    __break(1u);
    goto LABEL_12;
  }

  v34 = objc_opt_self();
  sub_124C4(0, &qword_403000);
  isa = sub_30C358().super.isa;
  [v34 activateConstraints:isa];

  sub_A80F8(v5);
  (*(v24 + 8))(v29, v25);
  v36 = OBJC_IVAR____TtC23ShelfKitCollectionViews23UberNavigationTitleView_customBackButton;
  v37 = *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews23UberNavigationTitleView_customBackButton];
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews23UberNavigationTitleView_customBackButton] = v33;
  v38 = v33;

  v39 = sub_30C098();
  [v38 setAccessibilityIdentifier:v39];

  v40 = *&v7[v36];
  if (!v40)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v41 = v40;
  v42 = [v52 whiteColor];
  [v41 setTintColor:v42];

  v43 = *&v7[v36];
  if (!v43)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v44 = sub_309298();
  swift_allocObject();
  v45 = v43;
  v46 = sub_309288();
  v60[3] = v44;
  v60[4] = sub_B6864();
  v60[0] = v46;
  sub_30D388();

  __swift_destroy_boxed_opaque_existential_1(v60);
  if (!*&v7[v36])
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v7 addSubview:?];
  if (v7[OBJC_IVAR____TtC23ShelfKitCollectionViews23UberNavigationTitleView_backButtonStyle])
  {
    v47 = *&v7[v36];
    if (v47)
    {
      [v47 setAlpha:1.0];
      v48 = &selRef_setBackButtonAlpha_;
      v49 = v7;
LABEL_10:
      v50 = v49;
      [v50 *v48];

      return;
    }

    goto LABEL_15;
  }

  [v7 setBackButtonAlpha:1.0];
  v49 = *&v7[v36];
  if (v49)
  {
    v48 = &selRef_setAlpha_;
    goto LABEL_10;
  }

LABEL_16:
  __break(1u);
}

id sub_154708()
{
  v1 = v0;
  v28.receiver = v0;
  v28.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v28, "layoutSubviews");
  v2 = [v0 effectiveUserInterfaceLayoutDirection];
  v3 = [v0 overlays];
  if (v3)
  {
    v4 = v3;
    sub_30CBF8();
    v5 = v29;
    v6 = v30;
    v7 = v31;
    v8 = v32;

    if (v33)
    {
      v5 = 0.0;
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }
  }

  else
  {
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
  }

  [v1 layoutMargins];
  v10 = v9;
  v12 = v11;
  [v1 safeAreaInsets];
  if (v2 == &dword_0 + 1)
  {
    v15 = v12 - v14;
  }

  else
  {
    v15 = v10 - v13;
  }

  [v1 floatingTabBarHeight];
  if (v16 <= 0.0)
  {
    [v1 bounds];
    Height = CGRectGetHeight(v34);
  }

  else
  {
    [v1 floatingTabBarHeight];
    v18 = v17;
    [v1 layoutMargins];
    Height = v18 + v19;
  }

  v21 = v15 + 8.0;
  v22 = v5;
  v23 = v6;
  v24 = v7;
  v25 = v8;
  if (v2 == &dword_0 + 1)
  {
    v26 = CGRectGetMaxX(*&v22) + -28.0 - v21;
  }

  else
  {
    v26 = v21 + CGRectGetMinX(*&v22);
  }

  result = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23UberNavigationTitleView_customBackButton];
  if (result)
  {
    return [result setFrame:{v26, (Height + -28.0) * 0.5, 28.0, 28.0}];
  }

  __break(1u);
  return result;
}

void sub_154994(double a1, double a2, CGFloat a3)
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