uint64_t (*sub_3577F4(void *a1, void *a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  v5 = a2;
  v6 = a1;
  return sub_35BD88;
}

void sub_357860(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_AB3430();
  v77 = *(v5 - 8);
  __chkstk_darwin(v5);
  v76 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_AB3820();
  v83 = *(v81 - 8);
  __chkstk_darwin(v81);
  v74 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v8);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v11 - 8);
  v13 = &v69 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v15 = __chkstk_darwin(v14 - 8);
  v75 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v80 = &v69 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v18 - 8);
  v20 = &v69 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v22 = Strong;
  v82 = JSSearchResultComponentController.reportSearchResultSelection(at:)();
  if (!v82)
  {

    return;
  }

  v73 = v5;
  v72 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v23 = *&v22[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView];
  if (!v23)
  {
    __break(1u);
    return;
  }

  v78 = v20;
  v79 = a3;
  v71 = v8;
  v24 = v23;
  isa = sub_AB3770().super.isa;
  v26 = [v24 cellForItemAtIndexPath:isa];

  if (v26)
  {
    sub_D5958(v89);
    v69 = v89[1];
    v70 = v89[0];
    v27 = v90;
    v28 = v91;
    v29 = v92;

    v31 = v69;
    v30 = v70;
  }

  else
  {
    v27 = 0;
    v29 = 0;
    v30 = 0uLL;
    v28 = 255;
    v31 = 0uLL;
  }

  v93[0] = v30;
  v93[1] = v31;
  v94 = v27;
  v95 = v28;
  v96 = v29;
  *&v70 = v22;
  PresentationSource.init(viewController:position:)(v70, v93, v88);
  v32 = _s30CollectionViewSelectionHandlerVMa();
  v87[3] = v32;
  v87[4] = &off_CF7E60;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v87);
  v34 = *(v83 + 16);
  v35 = a2;
  v36 = v81;
  v34(boxed_opaque_existential_0 + *(v32 + 20), v35, v81);
  swift_unknownObjectWeakInit();
  sub_2641C4(v79, v22, static MPMediaLibraryFilteringOptions.none.getter, 0, v78);
  sub_15F84(v87, &v84, &unk_DE8E30);
  if (*(&v85 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
    v37 = swift_dynamicCast();
    v38 = *(v32 - 8);
    (*(v38 + 56))(v13, v37 ^ 1u, 1, v32);
    v39 = (*(v38 + 48))(v13, 1, v32);
    v40 = v80;
    if (v39 != 1)
    {
      v34(v80, &v13[*(v32 + 20)], v36);
      sub_35BBD4(v13, _s30CollectionViewSelectionHandlerVMa);
      v41 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    sub_12E1C(&v84, &unk_DE8E30);
    (*(*(v32 - 8) + 56))(v13, 1, 1, v32);
    v40 = v80;
  }

  sub_12E1C(v13, &qword_E037A0);
  v41 = 1;
LABEL_13:
  v42 = v73;
  v43 = v83;
  (*(v83 + 56))(v40, v41, 1, v36);
  v44 = swift_unknownObjectWeakLoadStrong();
  if (v44 && (v45 = v44, sub_12B2FC(), v47 = v46, v49 = v48, v45, v47))
  {
    ObjectType = swift_getObjectType();
    (*(v49 + 8))(ObjectType, v49);
    v52 = v51;
    swift_unknownObjectRelease();
    v53 = v75;
    sub_15F84(v40, v75, &unk_DE8E20);
    if ((*(v43 + 48))(v53, 1, v36) == 1)
    {
      sub_12E1C(v53, &unk_DE8E20);
      v84 = 0u;
      v85 = 0u;
      v86 = 0;
    }

    else
    {
      (*(v43 + 32))(v74, v53, v36);
      sub_35BD2C(&qword_DFAA90, &type metadata accessor for IndexPath);
      sub_ABAD10();
    }

    v55 = swift_getObjectType();
    v56 = v76;
    sub_3B8F68();
    v54 = sub_21CCAC(1, v56, &v84, v55, v52);
    (*(v77 + 8))(v56, v42);
    sub_12E1C(&v84, &qword_DF2BD0);
    sub_12E1C(v40, &unk_DE8E20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v40, &unk_DE8E20);
    v54 = 0;
  }

  v57 = swift_unknownObjectWeakLoadStrong();
  if (v57)
  {
    v58 = v57;
    sub_12AFE8();
    v60 = v59;
  }

  else
  {
    v60 = 0;
  }

  sub_15F28(v88, &v84);
  sub_15F84(v87, (v10 + 104), &unk_DE8E30);
  v61 = v71;
  v62 = v78;
  sub_15F84(v78, &v10[*(v71 + 28)], &unk_DEA510);
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  *(v10 + 8) = 1;
  *(v10 + 9) = 0;
  *(v10 + 10) = 0;
  *(v10 + 11) = 0;
  sub_160B4(&v84, v10, &unk_DEA520);
  v63 = v79;
  *(v10 + 12) = v79;
  v64 = *v72;
  *(&v85 + 1) = v61;
  v65 = __swift_allocate_boxed_opaque_existential_0(&v84);
  sub_35BA54(v10, v65, _s23MusicPerformanceContextVMa);
  v66 = v63;
  v67 = v64;
  v68 = v82;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v82, 0, v54, v60, &v84);

  sub_12E1C(v62, &unk_DEA510);
  sub_1611C(v88);
  sub_35BBD4(v10, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v84, &unk_DE8E40);

  sub_12E1C(v87, &unk_DE8E30);
}

void sub_3581A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(MPModelLibraryRequest) init];
  sub_13C80(0, &unk_E00010);
  v7 = v6;
  v8 = static MPModelTVSeason.defaultMusicKind.getter();
  [v7 setItemKind:v8];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_AF4EC0;
  *(v11 + 32) = sub_AB92A0();
  *(v11 + 40) = v12;
  isa = sub_AB9740().super.isa;
  v14 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v14;
  sub_96EA4(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &unk_DE8E80);
  v15 = objc_allocWithZone(MPPropertySet);
  v16 = sub_AB9740().super.isa;
  sub_13C80(0, &qword_DEA550);
  v17 = sub_AB8FD0().super.isa;

  v18 = [v15 initWithProperties:v16 relationships:v17];

  [v7 setItemProperties:v18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_AF82B0;
  *(v19 + 32) = a1;
  sub_13C80(0, &qword_DEDE20);
  v20 = a1;
  v21 = sub_AB9740().super.isa;

  [v7 setScopedContainers:v21];

  UITraitCollection.configure<A, B>(libraryRequest:)(v7);
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = a3;
  v22[4] = a4;
  aBlock[4] = sub_35B9E0;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151E0;
  aBlock[3] = &block_descriptor_148;
  v23 = _Block_copy(aBlock);
  v24 = v20;

  [v7 performWithResponseHandler:v23];
  _Block_release(v23);
}

uint64_t sub_35855C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_13C80(0, &qword_DE8ED0);
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;
  v11 = a1;
  swift_errorRetain();
  v12 = a3;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_35BA3C, v10);
}

void sub_358630(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  if (!a1)
  {
    return;
  }

  v7 = [a1 results];
  if (!v7)
  {
    return;
  }

  if (a2)
  {

    return;
  }

  v18 = v7;
  if (![v7 firstItem])
  {
    goto LABEL_14;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8 || (v9 = v8, [v18 numberOfItemsInSection:0] != &dword_0 + 1))
  {
    swift_unknownObjectRelease();
LABEL_14:
    v11 = [a3 title];
    if (v11)
    {
      v12 = v11;
      sub_AB92A0();
    }

    objc_allocWithZone(type metadata accessor for SeasonsViewController());
    v13 = sub_F0338(a3);
    v14 = a4();
    v14();

    goto LABEL_17;
  }

  MPModelTVSeason.title.getter();
  if (!v10)
  {
    v15 = [a3 title];
    if (v15)
    {
      v16 = v15;
      sub_AB92A0();
    }
  }

  type metadata accessor for EpisodesViewController();
  swift_unknownObjectRetain();
  v13 = sub_1DF23C(v9);

  v17 = (a4)(v13);
  v17();

  swift_unknownObjectRelease();
LABEL_17:
}

uint64_t sub_358898(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Search.ResultContext(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
  swift_beginAccess();
  sub_35BA54(v2 + v8, v7, type metadata accessor for Search.ResultContext);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0);
  v9 = sub_AB50C0();
  v10 = &v7[*(v5 + 28)];
  v11 = *(v10 + 1);
  if (!v11 || ((v12 = *v10 & 0xFFFFFFFFFFFFLL, (v11 & 0x2000000000000000) != 0) ? (v13 = HIBYTE(v11) & 0xF) : (v13 = v12), !v9 ? (v14 = v13 == 0) : (v14 = 1), v14))
  {
    v15 = *(v2 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_isLoading);
  }

  else
  {
    v15 = 1;
  }

  v16 = sub_350D7C();
  v17 = (*(*v16 + 208))(v16) & 1;

  if (v15 == v17)
  {
    return sub_35BBD4(v7, type metadata accessor for Search.ResultContext);
  }

  sub_3B0720(v15, a1 & 1);
  sub_35BBD4(v7, type metadata accessor for Search.ResultContext);
}

uint64_t type metadata accessor for SearchResultsViewController()
{
  result = qword_DFFE40;
  if (!qword_DFFE40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_358CD4()
{
  type metadata accessor for Search.ResultContext(319);
  if (v0 <= 0x3F)
  {
    sub_358E14();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_358E14()
{
  if (!qword_DFFE50)
  {
    type metadata accessor for Search.ResultContext(255);
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_DFFE50);
    }
  }
}

void *sub_358E74(char a1)
{
  *(*v1 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_isHiddenBySearchController) = a1 ^ 1;
  *(sub_34F178() + 145) = a1;
  sub_34B9F0();

  if ((a1 & 1) == 0)
  {
    return sub_3512A4();
  }

  return result;
}

double sub_358EDC@<D0>(_OWORD *a1@<X8>)
{
  sub_34F674(v7);
  v2 = v7[7];
  a1[6] = v7[6];
  a1[7] = v2;
  a1[8] = v8[0];
  *(a1 + 137) = *(v8 + 9);
  v3 = v7[3];
  a1[2] = v7[2];
  a1[3] = v3;
  v4 = v7[5];
  a1[4] = v7[4];
  a1[5] = v4;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  a1[1] = v6;
  return result;
}

char *sub_358F40(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtCC16MusicApplication27SearchResultsViewControllerP33_ECEB0A228643F5C5A0ED18BD126DBF576Header_title];
  *v9 = 0;
  *(v9 + 1) = 0xE000000000000000;
  v10 = &v4[OBJC_IVAR____TtCC16MusicApplication27SearchResultsViewControllerP33_ECEB0A228643F5C5A0ED18BD126DBF576Header_buttonTitle];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v4[OBJC_IVAR____TtCC16MusicApplication27SearchResultsViewControllerP33_ECEB0A228643F5C5A0ED18BD126DBF576Header_buttonHandler];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = OBJC_IVAR____TtCC16MusicApplication27SearchResultsViewControllerP33_ECEB0A228643F5C5A0ED18BD126DBF576Header_stackView;
  *&v4[v12] = [objc_allocWithZone(UIStackView) init];
  v13 = OBJC_IVAR____TtCC16MusicApplication27SearchResultsViewControllerP33_ECEB0A228643F5C5A0ED18BD126DBF576Header_titleLabel;
  *&v4[v13] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtCC16MusicApplication27SearchResultsViewControllerP33_ECEB0A228643F5C5A0ED18BD126DBF576Header____lazy_storage___button] = 0;
  v47.receiver = v4;
  v47.super_class = type metadata accessor for SearchResultsViewController.Header();
  v14 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  [v14 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v15 = OBJC_IVAR____TtCC16MusicApplication27SearchResultsViewControllerP33_ECEB0A228643F5C5A0ED18BD126DBF576Header_titleLabel;
  [*&v14[OBJC_IVAR____TtCC16MusicApplication27SearchResultsViewControllerP33_ECEB0A228643F5C5A0ED18BD126DBF576Header_titleLabel] setAdjustsFontForContentSizeCategory:1];
  v16 = *&v14[v15];
  v17 = [v14 traitCollection];
  v18 = [v14 traitCollection];
  v19 = [v18 horizontalSizeClass];

  v20 = &UIFontTextStyleHeadline;
  if (v19 != &dword_0 + 2)
  {
    v20 = &UIFontTextStyleSubheadline;
  }

  v21 = *v20;
  sub_13C80(0, &qword_DE6EE0);
  v22 = sub_ABA570();

  [v16 setFont:v22];
  v23 = *&v14[v15];
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 labelColor];
  [v25 setTextColor:v26];

  [*&v14[v15] setLineBreakMode:4];
  v27 = OBJC_IVAR____TtCC16MusicApplication27SearchResultsViewControllerP33_ECEB0A228643F5C5A0ED18BD126DBF576Header_stackView;
  [*&v14[OBJC_IVAR____TtCC16MusicApplication27SearchResultsViewControllerP33_ECEB0A228643F5C5A0ED18BD126DBF576Header_stackView] addArrangedSubview:*&v14[v15]];
  v28 = *&v14[v27];
  v29 = sub_359758();
  [v28 addArrangedSubview:v29];

  [*&v14[v27] setAlignment:2];
  [*&v14[v27] setDistribution:3];
  [*&v14[v27] setAxis:0];
  [*&v14[v27] setLayoutMarginsRelativeArrangement:1];
  v30 = *&v14[v27];
  [v14 music_inheritedLayoutInsets];
  [v30 setLayoutMargins:?];

  [*&v14[v27] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v14 addSubview:*&v14[v27]];
  v31 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_AF93E0;
  v33 = [*&v14[v27] firstBaselineAnchor];
  v34 = [v14 topAnchor];
  v35 = [v33 constraintEqualToAnchor:v34 constant:30.0];

  *(v32 + 32) = v35;
  v36 = [*&v14[v27] firstBaselineAnchor];
  v37 = [v14 bottomAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:-12.0];

  *(v32 + 40) = v38;
  v39 = [*&v14[v27] leadingAnchor];
  v40 = [v14 leadingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];

  *(v32 + 48) = v41;
  v42 = [*&v14[v27] trailingAnchor];
  v43 = [v14 trailingAnchor];

  v44 = [v42 constraintEqualToAnchor:v43];
  *(v32 + 56) = v44;
  sub_13C80(0, &qword_DF7920);
  isa = sub_AB9740().super.isa;

  [v31 activateConstraints:isa];

  return v14;
}

void sub_359524(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for SearchResultsViewController.Header();
  objc_msgSendSuper2(&v10, "traitCollectionDidChange:", a1);
  v3 = *&v1[OBJC_IVAR____TtCC16MusicApplication27SearchResultsViewControllerP33_ECEB0A228643F5C5A0ED18BD126DBF576Header_titleLabel];
  v4 = [v1 traitCollection];
  v5 = [v1 traitCollection];
  v6 = [v5 horizontalSizeClass];

  v7 = &UIFontTextStyleHeadline;
  if (v6 != &dword_0 + 2)
  {
    v7 = &UIFontTextStyleSubheadline;
  }

  v8 = *v7;
  sub_13C80(0, &qword_DE6EE0);
  v9 = sub_ABA570();

  [v3 setFont:v9];
}

id sub_3596A0(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtCC16MusicApplication27SearchResultsViewControllerP33_ECEB0A228643F5C5A0ED18BD126DBF576Header_buttonTitle];
  *v3 = a1;
  *(v3 + 1) = a2;

  v4 = sub_359758();
  if (*(v3 + 1))
  {

    v5 = sub_AB9260();
  }

  else
  {
    v5 = 0;
  }

  [v4 setTitle:v5 forState:0];

  return [v2 setNeedsLayout];
}

id sub_359778(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

id sub_3597DC(void *a1)
{
  v2 = [objc_opt_self() buttonWithType:1];
  v3 = [v2 titleLabel];
  if (v3)
  {
    v4 = v3;
    [v3 setAdjustsFontForContentSizeCategory:1];
  }

  v5 = [v2 titleLabel];
  if (v5)
  {
    v6 = v5;
    sub_13C80(0, &qword_DE6EE0);
    v7 = sub_ABA570();
    [v6 setFont:v7];
  }

  [a1 addSubview:v2];
  return v2;
}

id sub_3598F4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_3599F0(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = a2;
  v22 = a3;
  v25 = sub_AB7C10();
  __chkstk_darwin(v25);
  v23 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = *(v3 + 16);
  (*(v7 + 16))(&v21 - v9, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v12, v10, v6);
  v16 = v22;
  *(v15 + v13) = v21;
  *(v15 + v14) = v11;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;
  aBlock[4] = sub_35AA24;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_103_0;
  _Block_copy(aBlock);
  v26 = _swiftEmptyArrayStorage;
  sub_35BD2C(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);

  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
  sub_36A00(&qword_DF06D0, &unk_DE9C30);
  sub_ABABB0();
  sub_AB7CB0();
  swift_allocObject();
  v18 = sub_AB7C90();

  v19 = *(v24 + 24);
  *(v24 + 24) = v18;

  sub_35A1FC(v19);
}

uint64_t sub_359D28(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0);
  v4 = sub_AB5100();
  v7 = a1;
  v8 = a2;
  sub_4BF2A8(sub_35AAD4, v6, v4);

  UnfairLock.locked<A>(_:)(sub_35AAF4);
}

uint64_t sub_359DF4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v19 = a2;
  v7 = type metadata accessor for Search.Item(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v21) = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0);
  v11 = sub_AB50E0();
  v12 = *(v11 + 16);
  if (v12)
  {
    v17 = a3;
    v21 = _swiftEmptyArrayStorage;
    v18 = v12;
    sub_ABAEC0();
    v13 = 0;
    v14 = v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    while (v13 < *(v11 + 16))
    {
      sub_35BA54(v14 + *(v8 + 72) * v13, v10, type metadata accessor for Search.Item);
      sub_35A03C(v19, &v20);
      if (v4)
      {
        goto LABEL_10;
      }

      v4 = 0;
      ++v13;
      sub_35BBD4(v10, type metadata accessor for Search.Item);
      sub_ABAE90();
      sub_ABAED0();
      sub_ABAEE0();
      sub_ABAEA0();
      if (v18 == v13)
      {

        v15 = v21;
        a3 = v17;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    sub_35BBD4(v10, type metadata accessor for Search.Item);

    __break(1u);
  }

  else
  {

    v15 = _swiftEmptyArrayStorage;
LABEL_8:
    type metadata accessor for JSSearchResultSection();
    result = JSSearchResultSection.__allocating_init(searchResultItems:)(v15);
    *a3 = result;
  }

  return result;
}

void sub_35A03C(uint64_t a1@<X1>, char **a2@<X8>)
{
  v4 = Search.Item.modelObject.getter();
  if (!v4)
  {
    v6 = 0;
    goto LABEL_13;
  }

  v5 = v4;
  v6 = [v4 innermostModelObject];

  v7 = v6;
  v8 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
  v9 = MPModelObject.bestIdentifier(for:)(*v8, 0);
  v11 = v10;

  if (!v11)
  {
LABEL_13:
    v15 = v6;
    v16 = 0;
    goto LABEL_14;
  }

  if (!a1)
  {

    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    goto LABEL_12;
  }

  if (!*(a1 + 16) || (v12 = sub_2EBF88(v9, v11), (v13 & 1) == 0))
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;

    goto LABEL_12;
  }

  sub_9ACA0(*(a1 + 56) + 40 * v12, &v18);

  if (!*(&v19 + 1))
  {
LABEL_12:
    sub_12E1C(&v18, &qword_DF2BD0);
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00000);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v14 = v21;
  v15 = v7;
  v16 = sub_3E9558(v14);

LABEL_14:
  type metadata accessor for JSSearchResultItem();
  v17 = JSSearchResultItem.__allocating_init(modelObject:mediaAPIDictionary:)(v6, v16);

  *a2 = v17;
}

void sub_35A1FC(uint64_t a1)
{
  v3 = sub_AB7C20();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 24);
  if (!a1)
  {
    goto LABEL_7;
  }

  if (v7)
  {
    v8 = v7 == a1;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    sub_AB7CA0();
    v7 = *(v1 + 24);
LABEL_7:
    if (v7)
    {
      sub_13C80(0, &qword_DE8ED0);
      (*(v4 + 104))(v6, enum case for DispatchQoS.QoSClass.userInitiated(_:), v3);

      v9 = sub_ABA190();
      (*(v4 + 8))(v6, v3);
      sub_ABA170();
    }
  }
}

uint64_t sub_35A354()
{

  return swift_deallocClassInstance();
}

uint64_t sub_35A444(uint64_t a1)
{
  *(a1 + 8) = sub_35BD2C(&qword_DFFFD8, type metadata accessor for SearchResultsViewController);
  result = sub_35BD2C(&unk_DFFFE0, type metadata accessor for SearchResultsViewController);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_35A4C8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Search.ResultContext(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4FB8);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for Search.Item(0);
  v11 = *(v10 - 8);
  result = __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_dataSource);
  if (v15)
  {
    v16 = v15;
    sub_AB5230();

    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      return sub_12E1C(v9, &qword_DF4FB8);
    }

    else
    {
      sub_35BB6C(v9, v14, type metadata accessor for Search.Item);
      v17 = *(v2 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onAddKeepLocalControl);
      if (v17)
      {
        v18 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
        swift_beginAccess();
        sub_35BA54(v2 + v18, v6, type metadata accessor for Search.ResultContext);

        v17(v14, a1, v6);
        sub_35BBD4(v6, type metadata accessor for Search.ResultContext);
        sub_35BBD4(v14, type metadata accessor for Search.Item);
        return sub_17654(v17);
      }

      else
      {
        return sub_35BBD4(v14, type metadata accessor for Search.Item);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_35A774()
{
  v1 = type metadata accessor for Search.ResultContext(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0);
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  v5 = (v0 + v2 + v1[7]);
  if (*v5)
  {

    __swift_destroy_boxed_opaque_existential_0((v5 + 1));
  }

  v6 = (v3 + v1[10]);
  v7 = v6[2];
  if ((~v7 & 0x7000000000000007) != 0)
  {
    sub_30F064(*v6, v6[1], v7);
  }

  return swift_deallocObject();
}

void sub_35A8D8()
{
  v1 = *(type metadata accessor for Search.ResultContext(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_34DE3C(v2, v3);
}

uint64_t block_copy_helper_109(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_35A954()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_35AA24()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_359D28(v0 + v2, v3);
}

void sub_35AB24()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_mediaPickerAddController) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_isHiddenBySearchController) = 0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onDidSelectItem);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onContextMenuPresentation);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onAddKeepLocalControl);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onPageRenderFinish);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_contextActionsModelLoadingHandler);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onDragSessionStart);
  *v7 = 0;
  v7[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_isLoading) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_resultsLoadingWatchdog) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_hasMixedTypes) = 0;
  v8 = v0 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
  type metadata accessor for Search.Item(0);
  sub_1D30D0();
  sub_35BD2C(&qword_DF4FB0, type metadata accessor for Search.Item);
  sub_AB5110();
  v9 = type metadata accessor for Search.ResultContext(0);
  v10 = (v8 + v9[7]);
  v10[1] = 0u;
  v10[2] = 0u;
  *v10 = 0u;
  v11 = (v8 + v9[5]);
  *v11 = 0;
  v11[1] = 0;
  *(v8 + v9[6]) = 1;
  *(v8 + v9[8]) = 0;
  *(v8 + v9[9]) = 0;
  v12 = (v8 + v9[10]);
  *v12 = 0;
  v12[1] = 0;
  v12[2] = 0x7000000000000007;
  (*(*(v9 - 1) + 56))(v1 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__unfrozenResults, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_areResultsFrozen) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___impressionsTracker) = 0;
  v13 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *(v1 + v13) = TextDrawing.Cache.init()();
  v14 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_artworkCachingReference;
  type metadata accessor for Artwork.CachingReference();
  *(v1 + v14) = swift_allocObject();
  *(v1 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_bindings) = _swiftEmptyArrayStorage;
  v15 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_jsSearchResultItemTranslator;
  type metadata accessor for SearchResultItemTranslator();
  v16 = swift_allocObject();
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v17 = UnfairLock.init()();
  *(v1 + v15) = v16;
  *(v1 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___dateFormatter) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___playabilityController) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___loadingView) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___noContentController) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_dataSource) = 0;
  *(v16 + 16) = v17;
  *(v16 + 24) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_addKeepLocalController) = 0;
  sub_ABAFD0();
  __break(1u);
}

char *sub_35AE40(_BYTE *a1, void *a2)
{
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a2)
  {
    if (qword_DE6838 != -1)
    {
      swift_once();
    }

    v4 = [a2 shouldVisuallyDisableFor:sub_10AC20(a2)];
    v5 = &a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled];
    a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled] = v4;
    if (a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_shouldDisableTextStackView] != 1)
    {
      goto LABEL_46;
    }

    v6 = v4;
    v7 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
    v8 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
    swift_beginAccess();
    v7[v8] = v6;
    if (v6 == v7[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled])
    {
      goto LABEL_46;
    }

    v9 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
    v7[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] = v6;
    v10 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
    swift_beginAccess();
    v11 = *&v7[v10];
    v45 = a1;
    if (v11 >> 62)
    {
      result = sub_ABB060();
      v46 = v9;
      if (result)
      {
LABEL_9:
        v44 = v5;
        v13 = result - 1;
        if (result >= 1)
        {
          v43 = v7;

          v14 = 0;
          if ((v11 & 0xC000000000000001) == 0)
          {
            goto LABEL_19;
          }

LABEL_11:
          v15 = *(sub_36003C(v14, v11) + 256);
          if (v15)
          {
LABEL_12:
            v16 = v15;
            if (([v16 isHidden] & 1) == 0)
            {
              v17 = v7[v46];
              v18 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
              swift_beginAccess();
              v19 = v16[v18];
              v16[v18] = v17;
              if (v17 != v19)
              {
                v20 = 1.0;
                if (v17)
                {
                  UIInterfaceGetContentDisabledAlpha();
                }

                [v16 setAlpha:v20];
              }
            }

            if (v13 != v14)
            {
              goto LABEL_21;
            }
          }

          else
          {
            while (1)
            {

              if (v13 == v14)
              {
                break;
              }

LABEL_21:
              ++v14;
              if ((v11 & 0xC000000000000001) != 0)
              {
                goto LABEL_11;
              }

LABEL_19:
              v21 = *(v11 + 8 * v14 + 32);

              v15 = *(v21 + 256);
              if (v15)
              {
                goto LABEL_12;
              }
            }
          }

LABEL_44:

          v5 = v44;
          goto LABEL_45;
        }

LABEL_55:
        __break(1u);
        return result;
      }
    }

    else
    {
      result = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
      v46 = v9;
      if (result)
      {
        goto LABEL_9;
      }
    }

LABEL_45:
    a1 = v45;
    goto LABEL_46;
  }

  v5 = &a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled];
  a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled] = 0;
  if (a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_shouldDisableTextStackView] == 1)
  {
    v22 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
    v23 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
    swift_beginAccess();
    v22[v23] = 0;
    v24 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
    if (v22[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] == 1)
    {
      v22[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] = 0;
      v25 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
      swift_beginAccess();
      v26 = *&v22[v25];
      v45 = a1;
      if (v26 >> 62)
      {
        result = sub_ABB060();
        if (!result)
        {
          goto LABEL_45;
        }
      }

      else
      {
        result = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
        if (!result)
        {
          goto LABEL_45;
        }
      }

      v44 = v5;
      v27 = result - 1;
      if (result < 1)
      {
        __break(1u);
        goto LABEL_55;
      }

      v28 = v26 & 0xC000000000000001;
      v43 = v22;

      v29 = 0;
      p_name = &JSDateDescriptor.name;
      v47 = v26;
      while (1)
      {
        if (v28)
        {
          v31 = *(sub_36003C(v29, v26) + 256);
          if (!v31)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v32 = *(v26 + 8 * v29 + 32);

          v31 = *(v32 + 256);
          if (!v31)
          {
LABEL_29:

            goto LABEL_30;
          }
        }

        v33 = v31;
        if ([v33 p_name[409]])
        {
          break;
        }

        v34 = v28;
        v35 = p_name;
        v36 = v24;
        v37 = v22;
        v38 = v22[v24];
        v39 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
        swift_beginAccess();
        v40 = v33[v39];
        v33[v39] = v38;
        if (v38 == v40)
        {

          v24 = v36;
          p_name = v35;
          v22 = v37;
          v28 = v34;
          v26 = v47;
LABEL_30:
          if (v27 == v29)
          {
            goto LABEL_44;
          }

          goto LABEL_31;
        }

        v41 = 1.0;
        if (v38)
        {
          UIInterfaceGetContentDisabledAlpha();
        }

        [v33 setAlpha:v41];

        v24 = v36;
        p_name = v35;
        v22 = v37;
        v28 = v34;
        v26 = v47;
        if (v27 == v29)
        {
          goto LABEL_44;
        }

LABEL_31:
        ++v29;
      }

      goto LABEL_30;
    }
  }

LABEL_46:
  if (*v5)
  {
    v42 = 0;
  }

  else
  {
    v42 = 3;
  }

  return [a1 setSelectionStyle:v42];
}

uint64_t sub_35B338(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Search.ResultContext(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4FB8);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for Search.Item(0);
  v11 = *(v10 - 8);
  result = __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_dataSource);
  if (v15)
  {
    v16 = v15;
    sub_AB5230();

    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      return sub_12E1C(v9, &qword_DF4FB8);
    }

    else
    {
      sub_35BB6C(v9, v14, type metadata accessor for Search.Item);
      v17 = Search.Item.modelObject.getter();
      if (v17)
      {
        v18 = v17;
        v19 = [v17 innermostModelObject];

        sub_355380(v19, a1);
      }

      v20 = *(v2 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onDidSelectItem);
      if (v20)
      {
        v21 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
        swift_beginAccess();
        sub_35BA54(v2 + v21, v6, type metadata accessor for Search.ResultContext);

        v20(v14, a1, v6);
        sub_35BBD4(v6, type metadata accessor for Search.ResultContext);
        sub_35BBD4(v14, type metadata accessor for Search.Item);
        return sub_17654(v20);
      }

      else
      {
        return sub_35BBD4(v14, type metadata accessor for Search.Item);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_35B624()
{
  v1 = (v0 + OBJC_IVAR____TtCC16MusicApplication27SearchResultsViewControllerP33_ECEB0A228643F5C5A0ED18BD126DBF576Header_title);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtCC16MusicApplication27SearchResultsViewControllerP33_ECEB0A228643F5C5A0ED18BD126DBF576Header_buttonTitle);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtCC16MusicApplication27SearchResultsViewControllerP33_ECEB0A228643F5C5A0ED18BD126DBF576Header_buttonHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtCC16MusicApplication27SearchResultsViewControllerP33_ECEB0A228643F5C5A0ED18BD126DBF576Header_stackView;
  *(v0 + v4) = [objc_allocWithZone(UIStackView) init];
  v5 = OBJC_IVAR____TtCC16MusicApplication27SearchResultsViewControllerP33_ECEB0A228643F5C5A0ED18BD126DBF576Header_titleLabel;
  *(v0 + v5) = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtCC16MusicApplication27SearchResultsViewControllerP33_ECEB0A228643F5C5A0ED18BD126DBF576Header____lazy_storage___button) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_35B71C()
{

  return swift_deallocObject();
}

uint64_t sub_35B75C()
{

  return swift_deallocObject();
}

uint64_t sub_35B7B0()
{

  return swift_deallocObject();
}

uint64_t sub_35B800()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_35B838()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_35B910()
{
  v1 = *(sub_AB3820() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_357860(v3, v0 + v2, v4);
}

uint64_t sub_35B9A0()
{

  return swift_deallocObject();
}

uint64_t sub_35B9EC()
{

  return swift_deallocObject();
}

uint64_t sub_35BA54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_35BB6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_35BBD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_35BC4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Search.ResultContext(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_35BCD8()
{
  result = qword_E00090;
  if (!qword_E00090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E00090);
  }

  return result;
}

uint64_t sub_35BD2C(unint64_t *a1, void (*a2)(uint64_t))
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

void VerticalLockupCollectionViewCell.artworkComponentBackgroundColor.setter(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
  v4 = *(v2 + 56);
  v3 = *(v2 + 64);
  *(v2 + 56) = a1;
  if (!v3)
  {
    goto LABEL_5;
  }

  sub_13C80(0, qword_DFAAC0);
  v9 = a1;
  if ((sub_ABA790() & 1) == 0)
  {
    v6 = *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
    if (v6)
    {

      v6(v7);

      sub_17654(v6);
LABEL_5:
      v8 = v4;
      goto LABEL_7;
    }
  }

  v8 = v9;
LABEL_7:
}

void (*VerticalLockupCollectionViewCell.artworkComponentBackgroundColor.modify(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
  a1[1] = v2;
  v3 = *(v2 + 56);
  *a1 = v3;
  v4 = v3;
  return sub_348684;
}

double VerticalLockupCollectionViewCell.artworkEdgeInsets.getter()
{
  v1 = v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets;
  swift_beginAccess();
  return *v1;
}

uint64_t VerticalLockupCollectionViewCell.artworkEdgeInsets.setter(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets];
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  type metadata accessor for UIEdgeInsets(0);
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets];
  v13 = *&v4[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets];
  v14 = *&v4[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets + 16];
  result = sub_AB38D0();
  if (result)
  {
    v12 = *(v9 + 1);
    *v10 = *v9;
    *(v10 + 1) = v12;
    sub_35D498();
    return [v4 setNeedsLayout];
  }

  return result;
}

void (*VerticalLockupCollectionViewCell.artworkEdgeInsets.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets;
  *(v3 + 64) = v1;
  *(v3 + 72) = v4;
  swift_beginAccess();
  return sub_35C0D0;
}

void sub_35C0D0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[8];
    v5 = v4 + v3[9];
    type metadata accessor for UIEdgeInsets(0);
    v6 = v4 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets;
    v7 = *(v4 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets + 16);
    *v3 = *(v4 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets);
    *(v3 + 1) = v7;
    v8 = *(v5 + 16);
    *(v3 + 2) = *v5;
    *(v3 + 3) = v8;
    if (sub_AB38D0())
    {
      v9 = v3[8];
      v10 = *(v5 + 24);
      v11 = *(v5 + 8);
      *v6 = *&v9[v3[9]];
      *(v6 + 8) = v11;
      *(v6 + 24) = v10;
      sub_35D498();
      [v9 setNeedsLayout];
    }
  }

  free(v3);
}

uint64_t VerticalLockupCollectionViewCell.artworkCornerTreatment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkCornerTreatment;
  swift_beginAccess();
  return sub_15F84(v1 + v3, a1, &unk_DFFBC0);
}

uint64_t VerticalLockupCollectionViewCell.artworkCornerTreatment.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkCornerTreatment;
  swift_beginAccess();
  sub_8A01C(a1, v1 + v9);
  swift_endAccess();
  v10 = *(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
  sub_15F84(v1 + v9, v8, &unk_DFFBC0);
  v11 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  sub_15F84(v10 + v11, v6, &unk_DFFBC0);
  swift_beginAccess();
  sub_8A01C(v8, v10 + v11);
  swift_endAccess();
  sub_75AE8(v6);
  sub_12E1C(a1, &unk_DFFBC0);
  sub_12E1C(v6, &unk_DFFBC0);
  return sub_12E1C(v8, &unk_DFFBC0);
}

void (*VerticalLockupCollectionViewCell.artworkCornerTreatment.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkCornerTreatment;
  v4[11] = v6;
  v4[12] = v7;
  swift_beginAccess();
  return sub_35C498;
}

void sub_35C498(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    v5 = v3[10];
    v4 = v3[11];
  }

  else
  {
    v4 = v3[11];
    v6 = v3[9];
    v5 = v3[10];
    v7 = *(v6 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
    sub_15F84(v6 + v3[12], v4, &unk_DFFBC0);
    v8 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
    swift_beginAccess();
    sub_15F84(v7 + v8, v5, &unk_DFFBC0);
    swift_beginAccess();
    sub_8A01C(v4, v7 + v8);
    swift_endAccess();
    sub_75AE8(v5);
    sub_12E1C(v5, &unk_DFFBC0);
    sub_12E1C(v4, &unk_DFFBC0);
  }

  free(v4);
  free(v5);

  free(v3);
}

id VerticalLockupCollectionViewCell.artworkPlaceholder.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkPlaceholder;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v9 = *(v3 + 32);
  v8 = *(v3 + 40);
  result = sub_80C9C(v4, v5, v6, v7);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v9;
  a1[5] = v8;
  return result;
}

void (*VerticalLockupCollectionViewCell.artworkPlaceholder.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkPlaceholder;
  *(v3 + 72) = v1;
  *(v3 + 80) = v4;
  swift_beginAccess();
  return sub_35C724;
}

void sub_35C724(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 72);
    v5 = v4 + *(v3 + 80);
    v6 = *(v4 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
    v7 = *v5;
    v8 = *(v5 + 8);
    v9 = *(v5 + 16);
    v10 = *(v5 + 24);
    v11 = *(v5 + 32);
    v12 = *(v5 + 40);
    v13 = *(v6 + 184);
    v14 = *(v6 + 168);
    *v3 = *(v6 + 152);
    *(v3 + 16) = v14;
    *(v3 + 32) = v13;
    *(v6 + 152) = v7;
    *(v6 + 160) = v8;
    *(v6 + 168) = v9;
    *(v6 + 176) = v10;
    *(v6 + 184) = v11;
    *(v6 + 192) = v12;
    sub_80C9C(v7, v8, v9, v10);
    sub_80C9C(v7, v8, v9, v10);
    sub_75948(v3);
    sub_12E1C(v3, &unk_DF8690);
    sub_2F1C8(v7, v8, v9, v10);
  }

  free(v3);
}

void *VerticalLockupCollectionViewCell.lockupImageArtworkCatalog.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void VerticalLockupCollectionViewCell.lockupImageArtworkCatalog.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_74EA4(a1);
}

void (*VerticalLockupCollectionViewCell.lockupImageArtworkCatalog.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_35C978;
}

void sub_35C978(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[3] + v3[4]);
    v5 = v4;
    sub_74EA4(v4);
  }

  free(v3);
}

uint64_t VerticalLockupCollectionViewCell.isDisabled.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_isDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VerticalLockupCollectionViewCell.isDisabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_isDisabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
  result = swift_beginAccess();
  v4[v5] = a1;
  v19 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
  v20 = v4;
  if (v4[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] != (a1 & 1))
  {
    v4[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] = a1 & 1;
    v7 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
    swift_beginAccess();
    v8 = *&v4[v7];
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
      v18 = v4;

      v10 = 0;
      if ((v8 & 0xC000000000000001) == 0)
      {
        goto LABEL_14;
      }

LABEL_6:
      v11 = *(sub_36173C(v10, v8, type metadata accessor for TextStackView.Component, 0x6E656E6F706D6F43, 0xE900000000000074) + 256);
      if (v11)
      {
LABEL_7:
        v12 = v11;
        if (([v12 isHidden] & 1) == 0)
        {
          v13 = v20[v19];
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

            [v12 setAlpha:v16];
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

void (*VerticalLockupCollectionViewCell.isDisabled.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_isDisabled;
  *(v3 + 72) = v1;
  *(v3 + 80) = v4;
  swift_beginAccess();
  return sub_35CCF8;
}

void sub_35CCF8(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    goto LABEL_20;
  }

  v4 = v3[9];
  v5 = *(v4 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView);
  v6 = *(v4 + v3[10]);
  v7 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
  swift_beginAccess();
  v5[v7] = v6;
  v23 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
  v24 = v5;
  if (v6 == v5[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled])
  {
    goto LABEL_20;
  }

  v5[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] = v6;
  v8 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
  swift_beginAccess();
  v9 = *&v5[v8];
  if (!(v9 >> 62))
  {
    v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      goto LABEL_20;
    }

    goto LABEL_5;
  }

  v10 = sub_ABB060();
  if (!v10)
  {
LABEL_20:

    free(v3);
    return;
  }

LABEL_5:
  v11 = v10 - 1;
  if (v10 >= 1)
  {
    v22 = v5;

    v12 = 0;
    p_name = &JSDateDescriptor.name;
    if ((v9 & 0xC000000000000001) == 0)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v14 = *(sub_36173C(v12, v9, type metadata accessor for TextStackView.Component, 0x6E656E6F706D6F43, 0xE900000000000074) + 256);
      if (v14)
      {
LABEL_10:
        v16 = v14;
        if (([v16 p_name[409]] & 1) == 0)
        {
          v17 = v24[v23];
          v18 = p_name;
          v19 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
          swift_beginAccess();
          v20 = v16[v19];
          v16[v19] = v17;
          p_name = v18;
          if (v17 != v20)
          {
            v21 = 1.0;
            if (v17)
            {
              UIInterfaceGetContentDisabledAlpha();
            }

            [v16 setAlpha:v21];
          }
        }
      }

      while (1)
      {

        if (v11 == v12)
        {

          goto LABEL_20;
        }

        ++v12;
        if ((v9 & 0xC000000000000001) != 0)
        {
          break;
        }

LABEL_9:
        v15 = *(v9 + 8 * v12 + 32);

        v14 = *(v15 + 256);
        if (v14)
        {
          goto LABEL_10;
        }
      }
    }
  }

  __break(1u);
}

void sub_35CF64()
{
  if ([v0 isSelected])
  {
    v1 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_selectedBackgroundViewConfiguration;
    v2 = *&v0[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_selectedBackgroundViewConfiguration];
    if (v2)
    {
      v3 = *&v0[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_selectedBackgroundViewConfiguration];
      v4 = v3;
      v5 = v3;
    }

    else
    {
      v3 = [v0 contentView];
      v4 = *&v0[v1];
      if (v4)
      {
        v5 = *&v0[v1];
      }

      else
      {
        v5 = *(*&v0[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent] + 112);
      }
    }

    v6 = objc_opt_self();
    v7 = swift_allocObject();
    v7[2] = v0;
    v7[3] = v5;
    v7[4] = v3;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_362464;
    *(v8 + 24) = v7;
    aBlock[4] = sub_2D4D0;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1822E0;
    aBlock[3] = &block_descriptor_110;
    v9 = _Block_copy(aBlock);
    v10 = v2;
    v11 = v4;
    v12 = v0;
    v13 = v5;
    v14 = v3;

    [v6 performWithoutAnimation:v9];

    _Block_release(v9);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if (v14)
    {
      __break(1u);
    }
  }

  else
  {
    v15 = sub_35D668();
    [v15 removeFromSuperview];
  }
}

void sub_35D1B8()
{
  v1 = *&v0[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];
  v3 = *(v1 + 112);
  v2 = *(v1 + 120);
  v4 = v2;
  v12 = v3;
  if (([v0 isHighlighted] & 1) != 0 || objc_msgSend(v0, "isSelected"))
  {
    [v12 setDrawMode:2];
    if (v2)
    {
      v5 = v4;
      v6 = [v5 layer];
      v7 = 0.5;
LABEL_7:
      v8 = v6;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClassUnconditional();

      *&v10 = v7;
      [v9 setOpacity:v10];

      v11 = v5;
      goto LABEL_9;
    }
  }

  else
  {
    [v12 setDrawMode:0];
    if (v2)
    {
      v5 = v4;
      v6 = [v5 layer];
      v7 = 1.0;
      goto LABEL_7;
    }
  }

  v11 = v12;
LABEL_9:
}

uint64_t VerticalLockupCollectionViewCell.artworkCachingReference.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkCachingReference;
  swift_beginAccess();
  *(v1 + v3) = a1;

  *(*(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + 16) = a1;
}

void (*VerticalLockupCollectionViewCell.artworkCachingReference.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkCachingReference;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_35D42C;
}

void sub_35D42C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    *(*(v3[3] + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + 16) = *(v3[3] + v3[4]);
  }

  free(v3);
}

uint64_t sub_35D498()
{
  [v0 bounds];
  Width = CGRectGetWidth(v12);
  v2 = [v0 traitCollection];
  v3 = (*(&stru_B8.reloff + (swift_isaMask & *v0)))();
  v5 = v4;
  v7 = v6;
  (*(&stru_108.reserved2 + (swift_isaMask & *v0)))(v3);
  v8 = Width - v5 - v7;
  [v2 displayScale];
  sub_AB3A00();
  v10 = v9;

  type metadata accessor for CGSize(0);
  (*(&stru_158.reserved2 + (swift_isaMask & *v0)))();
  result = sub_AB38D0();
  if (result)
  {
    return (*&stru_1A8.sectname[swift_isaMask & *v0])(v8, v10);
  }

  return result;
}

id sub_35D668()
{
  v1 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell____lazy_storage___selectedIndicatorView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell____lazy_storage___selectedIndicatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell____lazy_storage___selectedIndicatorView);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_selectedBackgroundViewConfiguration);
    v5 = *(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_selectedBackgroundViewConfiguration + 8);
    v6 = objc_allocWithZone(UIView);
    v7 = v4;
    v8 = v5;
    v9 = [v6 init];
    v10 = [v9 layer];
    [v10 setCornerCurve:kCACornerCurveContinuous];

    [v9 setBackgroundColor:v8];
    v11 = *(v0 + v1);
    *(v0 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

double VerticalLockupCollectionViewCell.artworkAspectRatio.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkAspectRatio;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VerticalLockupCollectionViewCell.artworkAspectRatio.setter(double a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkAspectRatio;
  swift_beginAccess();
  *(v2 + v4) = a1;
  result = sub_AB38D0();
  if (result)
  {
    return sub_35D498();
  }

  return result;
}

void (*VerticalLockupCollectionViewCell.artworkAspectRatio.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkAspectRatio;
  *(v3 + 48) = v1;
  *(v3 + 56) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_35D8C0;
}

void sub_35D8C0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  v1[4] = v5;
  v1[5] = v2;
  if (sub_AB38D0())
  {
    sub_35D498();
  }

  free(v1);
}

uint64_t sub_35D93C(double a1, double a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkImageSize);
  *v3 = a1;
  v3[1] = a2;
  v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
  v5 = *(v4 + 80);
  v6 = *(v4 + 88);
  *(v4 + 80) = a1;
  *(v4 + 88) = a2;
  return sub_75614(v5, v6);
}

uint64_t VerticalLockupCollectionViewCell.textDrawingCache.setter(uint64_t a1)
{
  sub_361C54(a1);
}

void (*VerticalLockupCollectionViewCell.textDrawingCache.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textDrawingCache;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_35DA48;
}

void sub_35DA48(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView);
    v6 = *(v4 + v3[4]);
    v7 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v8 = *&v5[v7];
    *&v5[v7] = v6;
    swift_retain_n();
    v9 = v5;
    sub_2E6210(v8);
  }

  free(v3);
}

char *VerticalLockupCollectionViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v66[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v66[-v14];
  v16 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets;
  if (qword_DE6AC0 != -1)
  {
    swift_once();
  }

  v17 = &v5[v16];
  v18 = xmmword_E71560;
  v19 = qword_E71570;
  v20 = qword_E71578;
  *v17 = xmmword_E71560;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  v21 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkCornerTreatment;
  v22 = UIView.Corner.medium.unsafeMutableAddressor();
  v23 = sub_ABA680();
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v5[v21], v22, v23);
  (*(v24 + 56))(&v5[v21], 0, 1, v23);
  v25 = &v5[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkPlaceholder];
  *v25 = 0u;
  v25[1] = 0u;
  v25[2] = 0u;
  *&v5[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkAspectRatio] = 0x3FF0000000000000;
  v26 = &v5[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkAccessoryStyle];
  *(v26 + 1) = 0;
  *(v26 + 2) = 0;
  *v26 = 0;
  v26[24] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_isDisabled] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkImageSize] = vdupq_n_s64(0x4064600000000000uLL);
  v27 = &v5[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_layoutInvalidationHandler];
  *v27 = 0;
  v27[1] = 0;
  v28 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v29 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v30 = sub_80104(v29);

  *&v5[v28] = v30;
  v31 = &v5[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_imageDidChangeHandler];
  *v31 = 0;
  v31[1] = 0;
  v32 = &v5[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_selectedBackgroundViewConfiguration];
  v33 = [objc_opt_self() systemLightGrayColor];
  *v32 = 0;
  *(v32 + 1) = v33;
  __asm { FMOV            V0.2D, #-6.0 }

  *(v32 + 1) = _Q0;
  *(v32 + 2) = xmmword_AF4ED0;
  *&v5[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkCachingReference] = 0;
  v39 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView;
  type metadata accessor for TextStackView();
  *&v5[v39] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textDrawingCache] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell____lazy_storage___selectedIndicatorView] = 0;
  v40 = &v5[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets];
  *v40 = v18;
  *(v40 + 2) = v19;
  *(v40 + 3) = v20;
  v41 = type metadata accessor for VerticalLockupCollectionViewCell();
  v67.receiver = v5;
  v67.super_class = v41;
  v42 = objc_msgSendSuper2(&v67, "initWithFrame:", a1, a2, a3, a4);
  v43 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent;
  v44 = v42;

  v45 = UIView.Border.artwork.unsafeMutableAddressor();
  v46 = *v45;
  v47 = *(v45 + 8);
  v48 = v45[2];
  v49 = v48;
  sub_75E64(v46, v47, v48);

  v50 = *&v42[v43];
  v51 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkCornerTreatment;
  swift_beginAccess();
  sub_15F84(&v44[v51], v15, &unk_DFFBC0);
  v52 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  sub_15F84(v50 + v52, v13, &unk_DFFBC0);
  swift_beginAccess();

  sub_8A01C(v15, v50 + v52);
  swift_endAccess();
  sub_75AE8(v13);
  sub_12E1C(v13, &unk_DFFBC0);
  sub_12E1C(v15, &unk_DFFBC0);

  v53 = *&v42[v43];
  *(v53 + 24) = 0x70756B636F6CLL;
  *(v53 + 32) = 0xE600000000000000;

  v54 = *&v42[v43];
  v55 = *(v54 + 80);
  v56 = *(v54 + 88);
  *(v54 + 80) = *&v44[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkImageSize];

  sub_75614(v55, v56);

  v57 = *&v42[v43];
  v58 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v59 = (v57 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v60 = *(v57 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  *v59 = sub_361EE8;
  v59[1] = v58;

  sub_17654(v60);

  v61 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView;
  v62 = *&v44[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
  v63 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  *(v62 + v63) = 0;
  v64 = [v44 contentView];

  [v64 addSubview:*(*&v42[v43] + 112)];
  [v64 addSubview:*&v44[v61]];
  sub_35D498();

  return v44;
}

void sub_35E130()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setNeedsLayout];
    v2 = *&v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_layoutInvalidationHandler];
    if (v2)
    {

      v2(v1);
      sub_17654(v2);
    }
  }
}

id sub_35E2CC(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for VerticalLockupCollectionViewCell();
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_35E31C(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for VerticalLockupCollectionViewCell();
  return objc_msgSendSuper2(&v4, *a1);
}

uint64_t sub_35E3E8(SEL *a1, SEL *a2, double a3, double a4, double a5, double a6)
{
  v9 = v6;
  v14 = type metadata accessor for VerticalLockupCollectionViewCell();
  v25.receiver = v9;
  v25.super_class = v14;
  objc_msgSendSuper2(&v25, *a1);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24.receiver = v9;
  v24.super_class = v14;
  objc_msgSendSuper2(&v24, *a2, a3, a4, a5, a6);
  v26.origin.x = v16;
  v26.origin.y = v18;
  v26.size.width = v20;
  v26.size.height = v22;
  CGRectGetWidth(v26);
  [v9 *a1];
  CGRectGetWidth(v27);
  result = sub_AB38D0();
  if (result)
  {
    return sub_35D498();
  }

  return result;
}

Swift::Void __swiftcall VerticalLockupCollectionViewCell.layoutSubviews()()
{
  v1 = v0;
  v49.receiver = v0;
  v49.super_class = type metadata accessor for VerticalLockupCollectionViewCell();
  objc_msgSendSuper2(&v49, "layoutSubviews");
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [v1 traitCollection];
  [v11 displayScale];
  [v1 effectiveUserInterfaceLayoutDirection];
  (*(&stru_B8.reloff + (swift_isaMask & *v1)))();
  v12 = *(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
  v13 = sub_76368(0, 0, 1);
  v15 = v14;
  v50.origin.x = v4;
  v50.origin.y = v6;
  v50.size.width = v8;
  v50.size.height = v10;
  CGRectGetMinY(v50);
  (*(&stru_158.reserved2 + (swift_isaMask & *v1)))();
  v51.origin.x = 0.0;
  v51.origin.y = 0.0;
  v51.size.width = v13;
  v51.size.height = v15;
  CGRectGetHeight(v51);
  v48 = v15;
  v16 = v4;
  sub_ABA470();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_ABA490();
  if (sub_76B28(v25, v26, v27, v28))
  {
    v52.origin.x = v18;
    v52.origin.y = v20;
    v52.size.width = v22;
    v52.size.height = v24;
    CGRectGetMaxY(v52);
    v53.origin.x = v16;
    v53.origin.y = v6;
    v53.size.width = v8;
    v53.size.height = v10;
    CGRectGetMinY(v53);
  }

  ObjectType = swift_getObjectType();
  v30 = swift_conformsToProtocol2();
  if (v30)
  {
    v31 = v1;
    sub_37C2C8(v16, ObjectType, v30);
    v32 = v1;
  }

  else
  {
    v32 = 0;
  }

  v33 = *(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView);
  sub_ABA490();
  [v33 setFrame:*&v48];

  if (v32)
  {
    v34 = swift_getObjectType();
    v35 = v32;
    sub_37C39C(v34, v30);
  }

  [*(v12 + 112) frame];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = [*(v12 + 112) layer];
  [v44 cornerRadius];
  v46 = v45;

  v47 = [objc_opt_self() effectWithRoundedRect:kCACornerCurveContinuous cornerRadius:v37 curve:{v39, v41, v43, v46}];
  [v1 setFocusEffect:v47];
}

Swift::Void __swiftcall VerticalLockupCollectionViewCell.clearArtworkCatalogs()()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
  [*(v1 + 112) clearArtworkCatalogs];
  *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = 0;
  *(v1 + 200) = 0;
  *(v1 + 208) = 0;
}

Swift::Void __swiftcall VerticalLockupCollectionViewCell.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v18.receiver = v2;
  v18.super_class = type metadata accessor for VerticalLockupCollectionViewCell();
  objc_msgSendSuper2(&v18, "traitCollectionDidChange:", isa);
  v4 = [v2 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  if (!isa)
  {

    goto LABEL_11;
  }

  v6 = [(objc_class *)isa preferredContentSizeCategory];
  v7 = sub_AB92A0();
  v9 = v8;
  if (v7 == sub_AB92A0() && v9 == v10)
  {

LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBA30);
    v13 = [v2 traitCollection];
    [v13 displayScale];

    [(objc_class *)isa displayScale];
    v16 = v14;
    LOBYTE(v17) = 0;
    sub_8A2B8();
    if ((sub_AB38D0() & 1) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

  v12 = sub_ABB3C0();

  if (v12)
  {
    goto LABEL_10;
  }

LABEL_11:
  [v2 setNeedsLayout];
  v15 = *&v2[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_layoutInvalidationHandler];
  if (v15)
  {

    v15(v2);
    sub_17654(v15);
  }
}

void VerticalLockupCollectionViewCell.isHighlighted.setter(char a1)
{
  v3 = type metadata accessor for VerticalLockupCollectionViewCell();
  v6.receiver = v1;
  v6.super_class = v3;
  v4 = objc_msgSendSuper2(&v6, "isHighlighted");
  v5.receiver = v1;
  v5.super_class = v3;
  objc_msgSendSuper2(&v5, "setHighlighted:", a1 & 1);
  if (v4 != [v1 isHighlighted])
  {
    sub_35D1B8();
  }
}

void VerticalLockupCollectionViewCell.isSelected.setter(char a1)
{
  v3 = type metadata accessor for VerticalLockupCollectionViewCell();
  v6.receiver = v1;
  v6.super_class = v3;
  v4 = objc_msgSendSuper2(&v6, "isSelected");
  v5.receiver = v1;
  v5.super_class = v3;
  objc_msgSendSuper2(&v5, "setSelected:", a1 & 1);
  if (v4 != [v1 isSelected])
  {
    sub_35D1B8();
    sub_35CF64();
  }
}

void sub_35EF78(char *a1, void *a2, void *a3)
{
  v50 = a3;
  v5 = sub_ABA680();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v46 = &v43[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB5E8);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v43[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  v13 = __chkstk_darwin(v12 - 8);
  v49 = &v43[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v52 = &v43[-v16];
  v17 = __chkstk_darwin(v15);
  v19 = &v43[-v18];
  __chkstk_darwin(v17);
  v21 = &v43[-v20];
  v22 = sub_35D668();
  v51 = a1;
  v48 = &a1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_selectedBackgroundViewConfiguration];
  [v22 setBackgroundColor:*&a1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_selectedBackgroundViewConfiguration + 8]];

  v47 = a2;
  sub_ABA690();
  sub_ABA670();
  v23 = *(v6 + 56);
  v23(v19, 0, 1, v5);
  v24 = *(v9 + 56);
  v25 = v6;
  sub_15F84(v21, v11, &unk_DFFBC0);
  sub_15F84(v19, &v11[v24], &unk_DFFBC0);
  v26 = *(v6 + 48);
  if (v26(v11, 1, v5) == 1)
  {
    v45 = v23;
    v52 = v25;
    sub_12E1C(v19, &unk_DFFBC0);
    sub_12E1C(v21, &unk_DFFBC0);
    if (v26(&v11[v24], 1, v5) == 1)
    {
      sub_12E1C(v11, &unk_DFFBC0);
      v27 = v51;
      v25 = v52;
      v28 = v49;
LABEL_9:
      v30 = *&v27[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell____lazy_storage___selectedIndicatorView];
      v35 = UIView.Corner.medium.unsafeMutableAddressor();
      (*(v25 + 2))(v28, v35, v5);
      v45(v28, 0, 1, v5);
      v29 = v48;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_15F84(v11, v52, &unk_DFFBC0);
  if (v26(&v11[v24], 1, v5) == 1)
  {
    sub_12E1C(v19, &unk_DFFBC0);
    sub_12E1C(v21, &unk_DFFBC0);
    (*(v25 + 1))(v52, v5);
LABEL_6:
    sub_12E1C(v11, &qword_DEB5E8);
    v27 = v51;
    goto LABEL_7;
  }

  v45 = v23;
  v32 = &v11[v24];
  v33 = v46;
  (*(v25 + 4))(v46, v32, v5);
  sub_362498();
  v44 = sub_AB91C0();
  v34 = *(v25 + 1);
  v34(v33, v5);
  sub_12E1C(v19, &unk_DFFBC0);
  sub_12E1C(v21, &unk_DFFBC0);
  v34(v52, v5);
  sub_12E1C(v11, &unk_DFFBC0);
  v27 = v51;
  v28 = v49;
  if (v44)
  {
    goto LABEL_9;
  }

LABEL_7:
  v29 = v48;
  v30 = *&v27[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell____lazy_storage___selectedIndicatorView];
  v31 = v47;
  sub_ABA5E0();
LABEL_10:
  sub_ABA6A0();

  v36 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell____lazy_storage___selectedIndicatorView;
  v37 = *&v27[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell____lazy_storage___selectedIndicatorView];
  [v50 frame];
  [v37 setFrame:{UIEdgeInsetsInsetRect(v38, v39, v40, v41, *(v29 + 2), *(v29 + 3))}];

  v42 = [v27 contentView];
  [v42 insertSubview:*&v27[v36] atIndex:0];
}

__n128 sub_35F520()
{
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  xmmword_E71560 = *&UIEdgeInsetsZero.top;
  *&qword_E71570 = v1;
  return result;
}

id VerticalLockupCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VerticalLockupCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_35F698(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkCachingReference;
  swift_beginAccess();
  *(v1 + v3) = a1;

  *(*(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + 16) = a1;
}

uint64_t sub_35F760()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_imageDidChangeHandler);
  sub_307CC(v1);
  return v1;
}

void (*sub_35F818(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*&stru_248.segname[(swift_isaMask & *v1) - 8])();
  return sub_A8F90;
}

uint64_t sub_35F8E8(unint64_t a1, unint64_t a2, unint64_t *a3)
{
  sub_13C80(0, a3);
  if (a2 >> 62)
  {
    v5 = sub_ABB080();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v5;
    }

LABEL_10:
    sub_ABAD90(85);
    v6._countAndFlagsBits = 0xD000000000000046;
    v6._object = 0x8000000000B60250;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(&stru_20.cmd + 8 * a1 + (a2 & 0xFFFFFFFFFFFFFF8));
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v5;
  }

  sub_ABAD90(82);
  v6._object = 0x8000000000B60200;
  v6._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  sub_AB94A0(v6);
  v8._countAndFlagsBits = sub_ABB6D0();
  sub_AB94A0(v8);

  v9._countAndFlagsBits = 0x756F662074756220;
  v9._object = 0xEB0000000020646ELL;
  sub_AB94A0(v9);
  swift_getObjectType();
  v10._countAndFlagsBits = sub_ABB6D0();
  sub_AB94A0(v10);

  result = sub_ABAFE0();
  __break(1u);
  return result;
}

uint64_t sub_35FAB8(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_ABB080();
    type metadata accessor for ImpressionTracker();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_ABAD90(85);
    v3 = "rget type\nExpected ";
    v4._countAndFlagsBits = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(&stru_20.cmd + 8 * a1 + (a2 & 0xFFFFFFFFFFFFFF8));
  type metadata accessor for ImpressionTracker();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_ABAD90(82);
  v3 = "ndViewConfiguration";
  v4._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  v4._object = (v3 | 0x8000000000000000);
  sub_AB94A0(v4);
  v6._object = 0x8000000000B602E0;
  v6._countAndFlagsBits = 0xD000000000000011;
  sub_AB94A0(v6);
  v7._countAndFlagsBits = 0x756F662074756220;
  v7._object = 0xEB0000000020646ELL;
  sub_AB94A0(v7);
  swift_getObjectType();
  v8._countAndFlagsBits = sub_ABB6D0();
  sub_AB94A0(v8);

  result = sub_ABAFE0();
  __break(1u);
  return result;
}

uint64_t sub_35FCFC(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_ABB080();
    type metadata accessor for JSSocialOnboardingNetwork();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_ABAD90(85);
    v3 = "rget type\nExpected ";
    v4._countAndFlagsBits = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(&stru_20.cmd + 8 * a1 + (a2 & 0xFFFFFFFFFFFFFF8));
  type metadata accessor for JSSocialOnboardingNetwork();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_ABAD90(82);
  v3 = "ndViewConfiguration";
  v4._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  v4._object = (v3 | 0x8000000000000000);
  sub_AB94A0(v4);
  v6._object = 0x8000000000B603A0;
  v6._countAndFlagsBits = 0xD000000000000019;
  sub_AB94A0(v6);
  v7._countAndFlagsBits = 0x756F662074756220;
  v7._object = 0xEB0000000020646ELL;
  sub_AB94A0(v7);
  swift_getObjectType();
  v8._countAndFlagsBits = sub_ABB6D0();
  sub_AB94A0(v8);

  result = sub_ABAFE0();
  __break(1u);
  return result;
}

uint64_t sub_35FE9C(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_ABB080();
    type metadata accessor for JSWhatsNewFeaturedItemViewModel();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_ABAD90(85);
    v3 = "rget type\nExpected ";
    v4._countAndFlagsBits = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(&stru_20.cmd + 8 * a1 + (a2 & 0xFFFFFFFFFFFFFF8));
  type metadata accessor for JSWhatsNewFeaturedItemViewModel();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_ABAD90(82);
  v3 = "ndViewConfiguration";
  v4._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  v4._object = (v3 | 0x8000000000000000);
  sub_AB94A0(v4);
  v6._object = 0x8000000000B60380;
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  sub_AB94A0(v6);
  v7._countAndFlagsBits = 0x756F662074756220;
  v7._object = 0xEB0000000020646ELL;
  sub_AB94A0(v7);
  swift_getObjectType();
  v8._countAndFlagsBits = sub_ABB6D0();
  sub_AB94A0(v8);

  result = sub_ABAFE0();
  __break(1u);
  return result;
}

uint64_t sub_3600E0(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_ABB080();
    type metadata accessor for JSLiveRadioCaseItem();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_ABAD90(85);
    v3 = "rget type\nExpected ";
    v4._countAndFlagsBits = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(&stru_20.cmd + 8 * a1 + (a2 & 0xFFFFFFFFFFFFFF8));
  type metadata accessor for JSLiveRadioCaseItem();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_ABAD90(82);
  v3 = "ndViewConfiguration";
  v4._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  v4._object = (v3 | 0x8000000000000000);
  sub_AB94A0(v4);
  v6._object = 0x8000000000B603E0;
  v6._countAndFlagsBits = 0xD000000000000013;
  sub_AB94A0(v6);
  v7._countAndFlagsBits = 0x756F662074756220;
  v7._object = 0xEB0000000020646ELL;
  sub_AB94A0(v7);
  swift_getObjectType();
  v8._countAndFlagsBits = sub_ABB6D0();
  sub_AB94A0(v8);

  result = sub_ABAFE0();
  __break(1u);
  return result;
}

unint64_t sub_3603F8(unint64_t result, unint64_t a2)
{
  if (a2 >> 62)
  {
    return sub_ABB080();
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)) > result)
  {
    return swift_unknownObjectRetain();
  }

  __break(1u);
  return result;
}

uint64_t sub_36044C(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_ABB080();
    type metadata accessor for JSSearchLandingViewController();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_ABAD90(85);
    v3 = "rget type\nExpected ";
    v4._countAndFlagsBits = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(&stru_20.cmd + 8 * a1 + (a2 & 0xFFFFFFFFFFFFFF8));
  type metadata accessor for JSSearchLandingViewController();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_ABAD90(82);
  v3 = "ndViewConfiguration";
  v4._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  v4._object = (v3 | 0x8000000000000000);
  sub_AB94A0(v4);
  v6._object = 0x8000000000B602A0;
  v6._countAndFlagsBits = 0xD00000000000001DLL;
  sub_AB94A0(v6);
  v7._countAndFlagsBits = 0x756F662074756220;
  v7._object = 0xEB0000000020646ELL;
  sub_AB94A0(v7);
  swift_getObjectType();
  v8._countAndFlagsBits = sub_ABB6D0();
  sub_AB94A0(v8);

  result = sub_ABAFE0();
  __break(1u);
  return result;
}

uint64_t sub_360674(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_ABB080();
    type metadata accessor for JSItemizedTextListItem();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_ABAD90(85);
    v3 = "rget type\nExpected ";
    v4._countAndFlagsBits = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(&stru_20.cmd + 8 * a1 + (a2 & 0xFFFFFFFFFFFFFF8));
  type metadata accessor for JSItemizedTextListItem();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_ABAD90(82);
  v3 = "ndViewConfiguration";
  v4._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  v4._object = (v3 | 0x8000000000000000);
  sub_AB94A0(v4);
  v6._object = 0x8000000000B602C0;
  v6._countAndFlagsBits = 0xD000000000000016;
  sub_AB94A0(v6);
  v7._countAndFlagsBits = 0x756F662074756220;
  v7._object = 0xEB0000000020646ELL;
  sub_AB94A0(v7);
  swift_getObjectType();
  v8._countAndFlagsBits = sub_ABB6D0();
  sub_AB94A0(v8);

  result = sub_ABAFE0();
  __break(1u);
  return result;
}

uint64_t sub_360924(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_ABB080();
    type metadata accessor for JSSocialProfileCollectionItem();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_ABAD90(85);
    v3 = "rget type\nExpected ";
    v4._countAndFlagsBits = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(&stru_20.cmd + 8 * a1 + (a2 & 0xFFFFFFFFFFFFFF8));
  type metadata accessor for JSSocialProfileCollectionItem();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_ABAD90(82);
  v3 = "ndViewConfiguration";
  v4._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  v4._object = (v3 | 0x8000000000000000);
  sub_AB94A0(v4);
  v6._object = 0x8000000000B60440;
  v6._countAndFlagsBits = 0xD00000000000001DLL;
  sub_AB94A0(v6);
  v7._countAndFlagsBits = 0x756F662074756220;
  v7._object = 0xEB0000000020646ELL;
  sub_AB94A0(v7);
  swift_getObjectType();
  v8._countAndFlagsBits = sub_ABB6D0();
  sub_AB94A0(v8);

  result = sub_ABAFE0();
  __break(1u);
  return result;
}

uint64_t sub_360AD8(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_ABB080();
    type metadata accessor for JSToggleSelectorItem();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_ABAD90(85);
    v3 = "rget type\nExpected ";
    v4._countAndFlagsBits = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(&stru_20.cmd + 8 * a1 + (a2 & 0xFFFFFFFFFFFFFF8));
  type metadata accessor for JSToggleSelectorItem();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_ABAD90(82);
  v3 = "ndViewConfiguration";
  v4._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  v4._object = (v3 | 0x8000000000000000);
  sub_AB94A0(v4);
  v6._object = 0x8000000000B60320;
  v6._countAndFlagsBits = 0xD000000000000014;
  sub_AB94A0(v6);
  v7._countAndFlagsBits = 0x756F662074756220;
  v7._object = 0xEB0000000020646ELL;
  sub_AB94A0(v7);
  swift_getObjectType();
  v8._countAndFlagsBits = sub_ABB6D0();
  sub_AB94A0(v8);

  result = sub_ABAFE0();
  __break(1u);
  return result;
}

uint64_t sub_360CAC(unint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2B90);
  if (a2 >> 62)
  {
    v4 = sub_ABB080();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v4;
    }

LABEL_10:
    sub_ABAD90(85);
    v5._countAndFlagsBits = 0xD000000000000046;
    v5._object = 0x8000000000B60250;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(&stru_20.cmd + 8 * a1 + (a2 & 0xFFFFFFFFFFFFFF8));
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v4;
  }

  sub_ABAD90(82);
  v5._object = 0x8000000000B60200;
  v5._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  sub_AB94A0(v5);
  v7._countAndFlagsBits = sub_ABB6D0();
  sub_AB94A0(v7);

  v8._countAndFlagsBits = 0x756F662074756220;
  v8._object = 0xEB0000000020646ELL;
  sub_AB94A0(v8);
  swift_getObjectType();
  v9._countAndFlagsBits = sub_ABB6D0();
  sub_AB94A0(v9);

  result = sub_ABAFE0();
  __break(1u);
  return result;
}

uint64_t sub_360EBC(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_ABB080();
    type metadata accessor for JSOrderedPlaylistSelectorItem();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_ABAD90(85);
    v3 = "rget type\nExpected ";
    v4._countAndFlagsBits = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(&stru_20.cmd + 8 * a1 + (a2 & 0xFFFFFFFFFFFFFF8));
  type metadata accessor for JSOrderedPlaylistSelectorItem();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_ABAD90(82);
  v3 = "ndViewConfiguration";
  v4._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  v4._object = (v3 | 0x8000000000000000);
  sub_AB94A0(v4);
  v6._object = 0x8000000000B60300;
  v6._countAndFlagsBits = 0xD00000000000001DLL;
  sub_AB94A0(v6);
  v7._countAndFlagsBits = 0x756F662074756220;
  v7._object = 0xEB0000000020646ELL;
  sub_AB94A0(v7);
  swift_getObjectType();
  v8._countAndFlagsBits = sub_ABB6D0();
  sub_AB94A0(v8);

  result = sub_ABAFE0();
  __break(1u);
  return result;
}

uint64_t sub_361094(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_ABB080();
    type metadata accessor for JSContainerDetailEntry();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_ABAD90(85);
    v3 = "rget type\nExpected ";
    v4._countAndFlagsBits = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(&stru_20.cmd + 8 * a1 + (a2 & 0xFFFFFFFFFFFFFF8));
  type metadata accessor for JSContainerDetailEntry();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_ABAD90(82);
  v3 = "ndViewConfiguration";
  v4._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  v4._object = (v3 | 0x8000000000000000);
  sub_AB94A0(v4);
  v6._object = 0x8000000000B60420;
  v6._countAndFlagsBits = 0xD000000000000016;
  sub_AB94A0(v6);
  v7._countAndFlagsBits = 0x756F662074756220;
  v7._object = 0xEB0000000020646ELL;
  sub_AB94A0(v7);
  swift_getObjectType();
  v8._countAndFlagsBits = sub_ABB6D0();
  sub_AB94A0(v8);

  result = sub_ABAFE0();
  __break(1u);
  return result;
}

uint64_t sub_3612B8(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_ABB080();
    type metadata accessor for JSSearchLandingItem();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_ABAD90(85);
    v3 = "rget type\nExpected ";
    v4._countAndFlagsBits = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(&stru_20.cmd + 8 * a1 + (a2 & 0xFFFFFFFFFFFFFF8));
  type metadata accessor for JSSearchLandingItem();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_ABAD90(82);
  v3 = "ndViewConfiguration";
  v4._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  v4._object = (v3 | 0x8000000000000000);
  sub_AB94A0(v4);
  v6._object = 0x8000000000B603C0;
  v6._countAndFlagsBits = 0xD000000000000013;
  sub_AB94A0(v6);
  v7._countAndFlagsBits = 0x756F662074756220;
  v7._object = 0xEB0000000020646ELL;
  sub_AB94A0(v7);
  swift_getObjectType();
  v8._countAndFlagsBits = sub_ABB6D0();
  sub_AB94A0(v8);

  result = sub_ABAFE0();
  __break(1u);
  return result;
}

uint64_t sub_36146C(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_ABB080();
    type metadata accessor for JSGroupedTextListItem();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_ABAD90(85);
    v3 = "rget type\nExpected ";
    v4._countAndFlagsBits = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(&stru_20.cmd + 8 * a1 + (a2 & 0xFFFFFFFFFFFFFF8));
  type metadata accessor for JSGroupedTextListItem();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_ABAD90(82);
  v3 = "ndViewConfiguration";
  v4._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  v4._object = (v3 | 0x8000000000000000);
  sub_AB94A0(v4);
  v6._object = 0x8000000000B60400;
  v6._countAndFlagsBits = 0xD000000000000015;
  sub_AB94A0(v6);
  v7._countAndFlagsBits = 0x756F662074756220;
  v7._object = 0xEB0000000020646ELL;
  sub_AB94A0(v7);
  swift_getObjectType();
  v8._countAndFlagsBits = sub_ABB6D0();
  sub_AB94A0(v8);

  result = sub_ABAFE0();
  __break(1u);
  return result;
}

uint64_t sub_36173C(unint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  if (a2 >> 62)
  {
    v8 = sub_ABB080();
    a3(0);
    if (swift_dynamicCastClass())
    {
      return v8;
    }

LABEL_10:
    sub_ABAD90(85);
    v9._countAndFlagsBits = 0xD000000000000046;
    v9._object = 0x8000000000B60250;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = *(&stru_20.cmd + 8 * a1 + (a2 & 0xFFFFFFFFFFFFFF8));
  a3(0);
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v8;
  }

  sub_ABAD90(82);
  v9._object = 0x8000000000B60200;
  v9._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  sub_AB94A0(v9);
  v11._countAndFlagsBits = a4;
  v11._object = a5;
  sub_AB94A0(v11);
  v12._countAndFlagsBits = 0x756F662074756220;
  v12._object = 0xEB0000000020646ELL;
  sub_AB94A0(v12);
  swift_getObjectType();
  v13._countAndFlagsBits = sub_ABB6D0();
  sub_AB94A0(v13);

  result = sub_ABAFE0();
  __break(1u);
  return result;
}

uint64_t sub_3618EC(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_ABB080();
    type metadata accessor for JSSettingsSection();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_ABAD90(85);
    v3 = "rget type\nExpected ";
    v4._countAndFlagsBits = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(&stru_20.cmd + 8 * a1 + (a2 & 0xFFFFFFFFFFFFFF8));
  type metadata accessor for JSSettingsSection();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_ABAD90(82);
  v3 = "ndViewConfiguration";
  v4._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  v4._object = (v3 | 0x8000000000000000);
  sub_AB94A0(v4);
  v6._object = 0x8000000000B60360;
  v6._countAndFlagsBits = 0xD000000000000011;
  sub_AB94A0(v6);
  v7._countAndFlagsBits = 0x756F662074756220;
  v7._object = 0xEB0000000020646ELL;
  sub_AB94A0(v7);
  swift_getObjectType();
  v8._countAndFlagsBits = sub_ABB6D0();
  sub_AB94A0(v8);

  result = sub_ABAFE0();
  __break(1u);
  return result;
}

uint64_t sub_361AB4(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_ABB080();
    type metadata accessor for JSMultiChoiceItem();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_ABAD90(85);
    v3 = "rget type\nExpected ";
    v4._countAndFlagsBits = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(&stru_20.cmd + 8 * a1 + (a2 & 0xFFFFFFFFFFFFFF8));
  type metadata accessor for JSMultiChoiceItem();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_ABAD90(82);
  v3 = "ndViewConfiguration";
  v4._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  v4._object = (v3 | 0x8000000000000000);
  sub_AB94A0(v4);
  v6._object = 0x8000000000B60340;
  v6._countAndFlagsBits = 0xD000000000000011;
  sub_AB94A0(v6);
  v7._countAndFlagsBits = 0x756F662074756220;
  v7._object = 0xEB0000000020646ELL;
  sub_AB94A0(v7);
  swift_getObjectType();
  v8._countAndFlagsBits = sub_ABB6D0();
  sub_AB94A0(v8);

  result = sub_ABAFE0();
  __break(1u);
  return result;
}

uint64_t sub_361C54(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textDrawingCache;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_retain_n();

  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *&v4[v5];
  *&v4[v5] = a1;

  v7 = v4;
  sub_2E6210(v6);
}

uint64_t sub_361D1C(_OWORD *a1)
{
  v3 = v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkPlaceholder;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = a1[1];
  *v3 = *a1;
  *(v3 + 16) = v8;
  *(v3 + 32) = a1[2];
  sub_15F84(a1, v15, &unk_DF8690);
  sub_15F84(a1, v15, &unk_DF8690);
  sub_2F1C8(v4, v5, v6, v7);
  v9 = *(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
  v10 = *(v9 + 168);
  v15[0] = *(v9 + 152);
  v15[1] = v10;
  v15[2] = *(v9 + 184);
  v12 = a1[1];
  v11 = a1[2];
  *(v9 + 152) = *a1;
  *(v9 + 168) = v12;
  *(v9 + 184) = v11;
  sub_15F84(a1, v14, &unk_DF8690);
  sub_75948(v15);
  sub_12E1C(v15, &unk_DF8690);
  return sub_12E1C(a1, &unk_DF8690);
}

uint64_t type metadata accessor for VerticalLockupCollectionViewCell()
{
  result = qword_E000E8;
  if (!qword_E000E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_361EB0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_361EF0(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkAccessoryStyle;
  v10 = *(v4 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkAccessoryStyle);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  sub_7FCB4(a1);
  sub_7FCC4(v10);
  type metadata accessor for ArtworkComponentImageView();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle;
    v13 = *(v11 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle);
    v14 = *(v11 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle + 8);
    v15 = *(v11 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle + 16);
    *v12 = a1;
    *(v12 + 8) = a2;
    *(v12 + 16) = a3;
    v16 = *(v12 + 24);
    *(v12 + 24) = a4;
    sub_7FCB4(a1);
    sub_7D6F4(v13, v14, v15, v16);

    sub_7FCC4(v13);
  }
}

void _s16MusicApplication32VerticalLockupCollectionViewCellC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets;
  if (qword_DE6AC0 != -1)
  {
    swift_once();
  }

  v3 = v1 + v2;
  v4 = xmmword_E71560;
  v5 = qword_E71570;
  v6 = qword_E71578;
  *v3 = xmmword_E71560;
  *(v3 + 16) = v5;
  *(v3 + 24) = v6;
  v7 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkCornerTreatment;
  v8 = UIView.Corner.medium.unsafeMutableAddressor();
  v9 = sub_ABA680();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v1 + v7, v8, v9);
  (*(v10 + 56))(v1 + v7, 0, 1, v9);
  v11 = (v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkPlaceholder);
  *v11 = 0u;
  v11[1] = 0u;
  v11[2] = 0u;
  *(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkAspectRatio) = 0x3FF0000000000000;
  v12 = v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkAccessoryStyle;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *v12 = 0;
  *(v12 + 24) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_isDisabled) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkImageSize) = vdupq_n_s64(0x4064600000000000uLL);
  v13 = (v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_layoutInvalidationHandler);
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v16 = sub_80104(v15);

  *(v1 + v14) = v16;
  v17 = (v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_imageDidChangeHandler);
  *v17 = 0;
  v17[1] = 0;
  v18 = v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_selectedBackgroundViewConfiguration;
  v19 = [objc_opt_self() systemLightGrayColor];
  *v18 = 0;
  *(v18 + 8) = v19;
  __asm { FMOV            V0.2D, #-6.0 }

  *(v18 + 16) = _Q0;
  *(v18 + 32) = xmmword_AF4ED0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkCachingReference) = 0;
  v25 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView;
  type metadata accessor for TextStackView();
  *(v1 + v25) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textDrawingCache) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell____lazy_storage___selectedIndicatorView) = 0;
  v26 = v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets;
  *v26 = v4;
  *(v26 + 16) = v5;
  *(v26 + 24) = v6;
  sub_ABAFD0();
  __break(1u);
}

void sub_3622FC()
{
  sub_7D678();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_36241C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_110(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_362498()
{
  result = qword_DEB5F0;
  if (!qword_DEB5F0)
  {
    sub_ABA680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEB5F0);
  }

  return result;
}

uint64_t sub_3624F4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &unk_E00000;
  *&v4[OBJC_IVAR____TtC16MusicApplication17UpsellArtworkGrid_artworks] = _swiftEmptyArrayStorage;
  v11 = OBJC_IVAR____TtC16MusicApplication17UpsellArtworkGrid_artworkCachingReference;
  type metadata accessor for Artwork.Caching.Reference();
  *&v4[v11] = swift_allocObject();
  v164.receiver = v4;
  v164.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v164, "initWithFrame:", a1, a2, a3, a4);
  [v12 setClipsToBounds:1];
  v13 = objc_opt_self();
  isa = sub_AB8FD0().super.isa;
  *&v169 = 0;
  v15 = [v13 dataWithJSONObject:isa options:4 error:&v169];
  v16 = v169;

  if (!v15)
  {
    v20 = sub_AB3050();

    swift_willThrow();
    if (qword_DE6AC8 != -1)
    {
      swift_once();
    }

    v21 = sub_AB4BC0();
    __swift_project_value_buffer(v21, qword_E00120);
    swift_errorRetain();
    v22 = sub_AB4BA0();
    v23 = sub_AB9F50();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v169 = v25;
      *v24 = 136446210;
      *&v167[0] = v20;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
      v26 = sub_AB9350();
      v28 = sub_425E68(v26, v27, &v169);

      *(v24 + 4) = v28;

      _os_log_impl(&dword_0, v22, v23, "Could not parse artworks=%{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
    }

    else
    {
    }

    return v12;
  }

  v17 = sub_AB3260();
  v19 = v18;

  sub_AB2AD0();
  swift_allocObject();
  sub_AB2AC0();
  sub_367400();
  sub_AB2AB0();

  v29 = *&v165[0];
  v30 = *(*&v165[0] + 16);
  v161 = v12;
  if (v30)
  {
    *&v162[0] = _swiftEmptyArrayStorage;
    sub_6D6A0(0, v30, 0);
    v31 = _swiftEmptyArrayStorage;
    v32 = v30 - 1;
    for (i = 32; ; i += 120)
    {
      v34 = *(v29 + i);
      v35 = *(v29 + i + 16);
      v36 = *(v29 + i + 48);
      v171 = *(v29 + i + 32);
      v172 = v36;
      v169 = v34;
      v170 = v35;
      v37 = *(v29 + i + 64);
      v38 = *(v29 + i + 80);
      v39 = *(v29 + i + 96);
      v176 = *(v29 + i + 112);
      v174 = v38;
      v175 = v39;
      v173 = v37;
      sub_367454(&v169, v167);
      *&v162[0] = v31;
      v41 = v31[2];
      v40 = v31[3];
      if (v41 >= v40 >> 1)
      {
        sub_6D6A0((v40 > 1), v41 + 1, 1);
        v31 = *&v162[0];
      }

      v31[2] = v41 + 1;
      v42 = &v31[15 * v41];
      v43 = v169;
      v44 = v170;
      v45 = v172;
      *(v42 + 4) = v171;
      *(v42 + 5) = v45;
      *(v42 + 2) = v43;
      *(v42 + 3) = v44;
      v46 = v173;
      v47 = v174;
      v48 = v175;
      *(v42 + 144) = v176;
      *(v42 + 7) = v47;
      *(v42 + 8) = v48;
      *(v42 + 6) = v46;
      if (!v32)
      {
        break;
      }

      --v32;
    }

    v12 = v161;
    v10 = &unk_E00000;
  }

  else
  {

    v31 = _swiftEmptyArrayStorage;
  }

  inited = v10[39];
  *&v12[inited] = v31;

  sub_466B8(v17, v19);
  if (*(*&v12[inited] + 16) < 0xFuLL)
  {
    if (qword_DE6AC8 != -1)
    {
      swift_once();
    }

    v50 = sub_AB4BC0();
    __swift_project_value_buffer(v50, qword_E00120);
    v51 = v12;
    v52 = sub_AB4BA0();
    v53 = sub_AB9F50();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 134349056;
      *(v54 + 4) = *(*&v12[inited] + 16);

      _os_log_impl(&dword_0, v52, v53, "Not enough artworks to render grid. Expected 15, received %{public}ld", v54, 0xCu);
    }

    else
    {
    }

    return v12;
  }

  v55 = *&v12[inited];
  if (*(v55 + 16) < 6uLL)
  {
    __break(1u);
    goto LABEL_55;
  }

  sub_130B3C(v55, v55 + 32, 1, 0xDuLL);
  memset(v167, 0, sizeof(v167));
  v168 = 0;
  sub_3633F8(2, v167, v56);
  v58 = v57;

  v60 = *&v12[inited];
  v61 = *(v60 + 16);
  if (v61)
  {
    v63 = *(v60 + 32);
    v62 = *(v60 + 48);
    v64 = *(v60 + 80);
    v162[2] = *(v60 + 64);
    v162[3] = v64;
    v65 = *(v60 + 96);
    v66 = *(v60 + 112);
    v163 = *(v60 + 144);
    v67 = *(v60 + 128);
    v162[5] = v66;
    v162[6] = v67;
    v162[4] = v65;
    v162[0] = v63;
    v162[1] = v62;
    v68 = *(v60 + 32);
    v69 = *(v60 + 48);
    v70 = *(v60 + 80);
    v171 = *(v60 + 64);
    v172 = v70;
    v169 = v68;
    v170 = v69;
    v71 = *(v60 + 96);
    v72 = *(v60 + 112);
    v176 = v163;
    v174 = v72;
    v175 = v67;
    v173 = v71;
    result = sub_367398(v162, v165);
    v165[4] = v173;
    v165[5] = v174;
    v165[6] = v175;
    v166 = v176;
    v165[0] = v169;
    v165[1] = v170;
    v165[2] = v171;
    v165[3] = v172;
    if (v61 >= 0xA)
    {
      sub_130B3C(v60, v60 + 32, 6, 0x15uLL);
      sub_3633F8(1, &v169, v73);
      v75 = v74;

      sub_12E1C(v165, &unk_E001F8);
      v76 = *&v12[inited];
      if (*(v76 + 16) >= 0xFuLL)
      {
        sub_130B3C(v76, v76 + 32, 10, 0x1FuLL);
        sub_3633F8(0, v167, v77);
        v79 = v78;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
        inited = swift_initStackObject();
        v155 = xmmword_AF82E0;
        *(inited + 16) = xmmword_AF82E0;
        *(inited + 32) = v58;
        *(inited + 40) = v75;
        *(inited + 48) = v79;
        v158 = v58;
        v157 = v75;
        v156 = v79;
        v159 = inited & 0xC000000000000001;
        if ((inited & 0xC000000000000001) == 0)
        {
          v80 = v158;
LABEL_27:
          v81 = v80;
          v82 = v12;
          [v82 addSubview:v81];
          v83 = swift_allocObject();
          *(v83 + 16) = xmmword_AF7C50;
          v84 = [v81 topAnchor];
          v85 = [v82 topAnchor];
          [v82 frame];
          if (CGRectGetWidth(v177) <= 428.0)
          {
            v86 = 0.0;
          }

          else
          {
            v86 = -32.0;
          }

          v87 = [v84 constraintEqualToAnchor:v85 constant:v86];

          *(v83 + 32) = v87;
          v88 = [v82 bottomAnchor];

          v89 = [v81 bottomAnchor];
          [v82 frame];
          v91 = v90;
          v93 = v92;
          v95 = v94;
          v97 = v96;

          v178.origin.x = v91;
          v178.origin.y = v93;
          v178.size.width = v95;
          v178.size.height = v97;
          if (CGRectGetWidth(v178) <= 428.0)
          {
            v98 = 0.0;
          }

          else
          {
            v98 = -32.0;
          }

          v99 = objc_opt_self();
          v100 = [v88 constraintEqualToAnchor:v89 constant:v98];

          *(v83 + 40) = v100;
          sub_36748C();
          v101 = sub_AB9740().super.isa;

          v160 = v99;
          [v99 activateConstraints:v101];

          if (v159)
          {
            v102 = sub_3605EC(1uLL, inited);
          }

          else
          {
            v102 = *(inited + 40);
          }

          v103 = v102;
          v104 = v82;
          [v104 addSubview:v103];
          v105 = swift_allocObject();
          *(v105 + 16) = xmmword_AF7C50;
          v106 = [v103 topAnchor];
          v107 = [v104 topAnchor];
          [v104 frame];
          if (CGRectGetWidth(v179) <= 428.0)
          {
            v108 = 0.0;
          }

          else
          {
            v108 = -32.0;
          }

          v109 = [v106 constraintEqualToAnchor:v107 constant:v108];

          *(v105 + 32) = v109;
          v110 = [v104 bottomAnchor];

          v111 = [v103 bottomAnchor];
          [v104 frame];
          v113 = v112;
          v115 = v114;
          v117 = v116;
          v119 = v118;

          v180.origin.x = v113;
          v180.origin.y = v115;
          v180.size.width = v117;
          v180.size.height = v119;
          if (CGRectGetWidth(v180) <= 428.0)
          {
            v120 = 0.0;
          }

          else
          {
            v120 = -32.0;
          }

          v121 = [v110 constraintEqualToAnchor:v111 constant:v120];

          *(v105 + 40) = v121;
          v122 = sub_AB9740().super.isa;

          [v160 activateConstraints:v122];

          if (v159)
          {
            v123 = sub_3605EC(2uLL, inited);
          }

          else
          {
            v123 = *(inited + 48);
          }

          v124 = v123;
          v125 = v104;
          [v125 addSubview:v124];
          v126 = swift_allocObject();
          *(v126 + 16) = xmmword_AF7C50;
          v127 = [v124 topAnchor];
          v128 = [v125 topAnchor];
          [v125 frame];
          if (CGRectGetWidth(v181) <= 428.0)
          {
            v129 = 0.0;
          }

          else
          {
            v129 = -32.0;
          }

          v130 = [v127 constraintEqualToAnchor:v128 constant:v129];

          *(v126 + 32) = v130;
          v131 = [v125 bottomAnchor];

          v132 = [v124 bottomAnchor];
          [v125 frame];
          v134 = v133;
          v136 = v135;
          v138 = v137;
          v140 = v139;

          v182.origin.x = v134;
          v182.origin.y = v136;
          v182.size.width = v138;
          v182.size.height = v140;
          if (CGRectGetWidth(v182) <= 428.0)
          {
            v141 = 0.0;
          }

          else
          {
            v141 = -32.0;
          }

          v142 = [v131 constraintEqualToAnchor:v132 constant:v141];

          *(v126 + 40) = v142;
          v143 = sub_AB9740().super.isa;

          [v160 activateConstraints:v143];

          swift_setDeallocating();
          swift_arrayDestroy();
          v144 = swift_allocObject();
          *(v144 + 16) = v155;
          v145 = [v157 leadingAnchor];
          v146 = [v158 trailingAnchor];
          v147 = [v145 constraintEqualToAnchor:v146 constant:12.0];

          *(v144 + 32) = v147;
          v148 = [v157 centerXAnchor];
          v149 = [v125 centerXAnchor];
          v150 = [v148 constraintEqualToAnchor:v149];

          *(v144 + 40) = v150;
          v151 = [v156 leadingAnchor];
          v152 = [v157 trailingAnchor];
          v153 = [v151 constraintEqualToAnchor:v152 constant:12.0];

          *(v144 + 48) = v153;
          v154 = sub_AB9740().super.isa;

          [v160 activateConstraints:v154];

          return v161;
        }

LABEL_56:
        v80 = sub_3605EC(0, inited);
        goto LABEL_27;
      }

LABEL_55:
      __break(1u);
      goto LABEL_56;
    }
  }

  __break(1u);
  return result;
}

void sub_3633F8(char a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  v104 = *a2;
  v105 = *(a2 + 16);
  v107 = *(a2 + 24);
  v109 = *(a2 + 40);
  v111 = *(a2 + 32);
  v113 = *(a2 + 56);
  v120 = *(a2 + 72);
  v123 = *(a2 + 64);
  v7 = *(a2 + 80);
  v8 = *(a2 + 88);
  v9 = *(a2 + 96);
  v10 = *(a2 + 104);
  v11 = *(a2 + 112);
  v12 = [objc_allocWithZone(UIView) init];
  v116 = UIView.forAutolayout.getter();

  v13 = v6;
  v115 = a1;
  if (v6)
  {
    v14 = v11;
    v117 = 2;
    v15 = v6;
    v16 = v9;
    v17 = v10;
    v18 = v7;
    v19 = v8;
    v21 = v120;
    v20 = v123;
    v22 = v118;
    v24 = v111;
    v23 = v113;
    v26 = v107;
    v25 = v109;
    v28 = v104;
    v27 = v105;
  }

  else
  {
    if (!*(a3 + 16))
    {
      goto LABEL_22;
    }

    v143 = *(a3 + 144);
    v29 = *(a3 + 128);
    v141 = *(a3 + 112);
    v142 = v29;
    v30 = *(a3 + 96);
    v139 = *(a3 + 80);
    v140 = v30;
    v31 = *(a3 + 64);
    v137 = *(a3 + 48);
    v138 = v31;
    v136 = *(a3 + 32);
    v114 = v143;
    v110 = *(&v142 + 1);
    v112 = v142;
    v106 = *(&v141 + 1);
    v108 = v141;
    v121 = *(&v140 + 1);
    v124 = v140;
    v23 = *(&v139 + 1);
    v119 = v139;
    v25 = *(&v31 + 1);
    v24 = v31;
    v26 = *(&v137 + 1);
    v27 = v137;
    v15 = *(&v136 + 1);
    v28 = v136;
    sub_367398(&v136, &v128);
    v22 = v119;
    v21 = v121;
    v20 = v124;
    v19 = v106;
    v18 = v108;
    v17 = v110;
    v16 = v112;
    v14 = v114;
    v13 = 0;
    v117 = 3;
  }

  v125 = v13;
  v32 = v13 == 0;
  *&v128 = v28;
  *(&v128 + 1) = v15;
  *&v129 = v27;
  *(&v129 + 1) = v26;
  *&v130 = v24;
  *(&v130 + 1) = v25;
  *&v131 = v22;
  *(&v131 + 1) = v23;
  *&v132 = v20;
  *(&v132 + 1) = v21;
  *&v133 = v18;
  *(&v133 + 1) = v19;
  *&v134 = v16;
  *(&v134 + 1) = v17;
  v135 = v14 & 1;
  v138 = v130;
  v139 = v131;
  v136 = v128;
  v137 = v129;
  v143 = v14 & 1;
  v141 = v133;
  v142 = v134;
  v140 = v132;
  sub_3674D8(a2, v127);
  v33 = sub_363F10();
  sub_3673D0(&v128);
  v34 = *(a3 + 16);
  if (v34 < v32 || v34 < v117)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v34 != 2)
  {
LABEL_20:

    sub_130B3C(v102, a3 + 32, v32, (2 * v117) | 1);
    v35 = v103;
    goto LABEL_9;
  }

  swift_bridgeObjectRetain_n();
  v35 = a3;
LABEL_9:
  sub_364634(v35);
  v37 = v36;

  v38 = 4;
  if (!v125)
  {
    v38 = 5;
  }

  if (v34 >= v38)
  {
    sub_130B3C(a3, a3 + 32, v117, (2 * v38) | 1);
    v40 = v39;

    sub_364634(v40);
    v42 = v41;

    v43 = v33;
    [v116 addSubview:v43];
    [v116 addSubview:v37];
    [v116 addSubview:v42];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_AF93E0;
    v126 = v42;
    if (v115)
    {
      if (v115 != 1)
      {
        v65 = [v37 topAnchor];
        v66 = [v116 topAnchor];
        v67 = [v65 constraintEqualToAnchor:v66];

        *(v44 + 32) = v67;
        v68 = [v42 topAnchor];
        v69 = [v37 bottomAnchor];
        v70 = [v68 constraintEqualToAnchor:v69 constant:12.0];

        *(v44 + 40) = v70;
        v71 = [v43 topAnchor];

        v72 = [v42 bottomAnchor];
        v73 = [v71 constraintEqualToAnchor:v72 constant:12.0];

        *(v44 + 48) = v73;
        v64 = [v43 bottomAnchor];

        goto LABEL_18;
      }

      v45 = [v37 topAnchor];
      v46 = [v116 topAnchor];
      v47 = [v45 constraintEqualToAnchor:v46];

      *(v44 + 32) = v47;
      v48 = [v43 topAnchor];

      v49 = [v37 bottomAnchor];
      v50 = [v48 constraintEqualToAnchor:v49 constant:12.0];

      *(v44 + 40) = v50;
      v51 = [v42 topAnchor];
      v52 = [v43 bottomAnchor];

      v53 = [v51 constraintEqualToAnchor:v52 constant:12.0];
      *(v44 + 48) = v53;
      v54 = [v42 bottomAnchor];
    }

    else
    {
      v55 = [v43 topAnchor];

      v56 = [v116 topAnchor];
      v57 = [v55 constraintEqualToAnchor:v56];

      *(v44 + 32) = v57;
      v58 = [v37 topAnchor];
      v59 = [v43 bottomAnchor];

      v60 = [v58 constraintEqualToAnchor:v59 constant:12.0];
      *(v44 + 40) = v60;
      v61 = [v42 topAnchor];
      v62 = [v37 bottomAnchor];
      v63 = [v61 constraintEqualToAnchor:v62 constant:12.0];

      *(v44 + 48) = v63;
      v54 = [v42 bottomAnchor];
    }

    v64 = v54;
LABEL_18:
    v74 = [v116 bottomAnchor];
    v75 = [v64 constraintEqualToAnchor:v74];

    *(v44 + 56) = v75;
    v122 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_B0AB40;
    v77 = [v37 leadingAnchor];
    v78 = [v116 leadingAnchor];
    v79 = [v77 constraintEqualToAnchor:v78];

    *(inited + 32) = v79;
    v80 = [v37 trailingAnchor];
    v81 = [v116 trailingAnchor];
    v82 = [v80 constraintEqualToAnchor:v81];

    *(inited + 40) = v82;
    v83 = [v37 heightAnchor];
    v84 = [v126 heightAnchor];
    v85 = [v83 constraintEqualToAnchor:v84];

    *(inited + 48) = v85;
    v86 = [v126 leadingAnchor];
    v87 = [v116 leadingAnchor];
    v88 = [v86 constraintEqualToAnchor:v87];

    *(inited + 56) = v88;
    v89 = [v126 trailingAnchor];
    v90 = [v116 trailingAnchor];
    v91 = [v89 constraintEqualToAnchor:v90];

    *(inited + 64) = v91;
    v92 = [v43 leadingAnchor];

    v93 = [v116 leadingAnchor];
    v94 = [v92 constraintEqualToAnchor:v93];

    *(inited + 72) = v94;
    v95 = [v43 trailingAnchor];

    v96 = [v116 trailingAnchor];
    v97 = [v95 constraintEqualToAnchor:v96];

    *(inited + 80) = v97;
    v98 = [v43 widthAnchor];

    v99 = [v43 heightAnchor];
    v100 = [v98 constraintEqualToAnchor:v99];

    *(inited + 88) = v100;
    v127[0] = v44;
    sub_1967C(inited);
    sub_36748C();
    isa = sub_AB9740().super.isa;

    [v122 activateConstraints:isa];

    return;
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

char *sub_363F10()
{
  v1 = v0;
  v2 = type metadata accessor for Artwork(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v24 - v6;
  sub_364194();
  v8 = objc_allocWithZone(ICStoreArtworkInfo);
  isa = sub_AB8FD0().super.isa;
  v10 = [v8 initWithArtworkResponseDictionary:isa];

  if (v10)
  {
    v11 = [objc_opt_self() tokenWithImageArtworkInfo:v10];
    v12 = objc_opt_self();
    v13 = v11;
    result = [v12 sharedStoreArtworkDataSource];
    if (result)
    {
      v15 = result;
      v16 = objc_allocWithZone(MPArtworkCatalog);
      v17 = v13;
      v18 = [v16 initWithToken:v17 dataSource:v15];

      __chkstk_darwin(v19);
      *(&v24 - 4) = v1;
      *(&v24 - 3) = v18;
      *(&v24 - 2) = v10;
      static Artwork.with(_:)(sub_367548, v7);
      sub_367554(v7, v5);
      v20 = objc_allocWithZone(type metadata accessor for Artwork.View(0));
      v21 = Artwork.View.init(configuration:)(v5);
      v22 = UIView.forAutolayout.getter();

      sub_3675B8(v7);
      return v22;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    static Artwork.with(_:)(UIScreen.Dimensions.size.getter, v7);
    v23 = objc_allocWithZone(type metadata accessor for Artwork.View(0));
    return Artwork.View.init(configuration:)(v7);
  }

  return result;
}

void *sub_364194()
{
  sub_AB2B00();
  swift_allocObject();
  sub_AB2AF0();
  v1 = *(v0 + 80);
  v22[4] = *(v0 + 64);
  v22[5] = v1;
  v22[6] = *(v0 + 96);
  v23 = *(v0 + 112);
  v2 = *(v0 + 16);
  v22[0] = *v0;
  v22[1] = v2;
  v3 = *(v0 + 48);
  v22[2] = *(v0 + 32);
  v22[3] = v3;
  sub_367678();
  v13 = sub_AB2AE0();
  v15 = v14;

  v16 = objc_opt_self();
  isa = sub_AB3250().super.isa;
  *&v22[0] = 0;
  v18 = [v16 JSONObjectWithData:isa options:4 error:v22];
  v19 = *&v22[0];

  if (v18)
  {
    sub_ABAB50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
    if (swift_dynamicCast())
    {
      v20 = v21;
    }

    else
    {
      v20 = sub_97E70(_swiftEmptyArrayStorage);
    }

    swift_unknownObjectRelease();
    sub_466B8(v13, v15);
    return v20;
  }

  else
  {
    sub_AB3050();

    swift_willThrow();
    sub_466B8(v13, v15);
    if (qword_DE6AC8 != -1)
    {
      swift_once();
    }

    v4 = sub_AB4BC0();
    __swift_project_value_buffer(v4, qword_E00120);
    swift_errorRetain();
    v5 = sub_AB4BA0();
    v6 = sub_AB9F50();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *&v22[0] = v8;
      *v7 = 136446210;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
      v9 = sub_AB9350();
      v11 = sub_425E68(v9, v10, v22);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_0, v5, v6, "Dictionary creation failed=%{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
    }

    return &_swiftEmptyDictionarySingleton;
  }
}

void sub_3644D8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_12E1C(a1 + 16, &unk_DF0CA0);
  swift_weakInit();
  *(a1 + 16) = 0xD000000000000011;
  *(a1 + 24) = 0x8000000000B0AB40;
  swift_weakAssign();
  v7 = Artwork.Decoration.grid.unsafeMutableAddressor();
  v8 = type metadata accessor for Artwork(0);
  sub_367614(v7, a1 + *(v8 + 28));
  v9 = [a4 copyColorWithKind:ICStoreArtworkInfoColorKindBackground];
  if (!v9)
  {
    v10 = [objc_opt_self() clearColor];
    v9 = [v10 CGColor];
  }

  v11 = [objc_allocWithZone(UIColor) initWithCGColor:v9];

  v12 = a3;
  v13 = Artwork.Content.init(catalog:background:)(a3, v11);
  v15 = v14;
  sub_1253F8(*a1, *(a1 + 8));
  *a1 = v13;
  *(a1 + 8) = v15;
}

void sub_364634(uint64_t a1)
{
  v2 = [objc_allocWithZone(UIView) init];
  v3 = UIView.forAutolayout.getter();

  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(a1 + 112);
    v48[4] = *(a1 + 96);
    v48[5] = v5;
    v48[6] = *(a1 + 128);
    v49 = *(a1 + 144);
    v6 = *(a1 + 48);
    v48[0] = *(a1 + 32);
    v48[1] = v6;
    v7 = *(a1 + 80);
    v48[2] = *(a1 + 64);
    v48[3] = v7;
    sub_367398(v48, v46);
    v8 = sub_363F10();
    sub_3673D0(v48);
    if (v4 != 1)
    {
      v9 = *(a1 + 216);
      v10 = *(a1 + 248);
      v46[5] = *(a1 + 232);
      v46[6] = v10;
      v47 = *(a1 + 264);
      v46[0] = *(a1 + 152);
      v11 = *(a1 + 184);
      v46[1] = *(a1 + 168);
      v46[2] = v11;
      v46[3] = *(a1 + 200);
      v46[4] = v9;
      sub_367398(v46, v45);
      v12 = sub_363F10();
      sub_3673D0(v46);
      v13 = v8;
      [v3 addSubview:v13];
      v14 = v12;
      [v3 addSubview:v14];
      v44 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_B0AB50;
      v16 = [v13 leadingAnchor];

      v17 = [v3 leadingAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];

      *(v15 + 32) = v18;
      v19 = [v13 topAnchor];

      v20 = [v3 topAnchor];
      v21 = [v19 constraintEqualToAnchor:v20];

      *(v15 + 40) = v21;
      v22 = [v13 bottomAnchor];

      v23 = [v3 bottomAnchor];
      v24 = [v22 constraintEqualToAnchor:v23];

      *(v15 + 48) = v24;
      v25 = [v14 leadingAnchor];

      v26 = [v13 trailingAnchor];
      v27 = [v25 constraintEqualToAnchor:v26 constant:12.0];

      *(v15 + 56) = v27;
      v28 = [v14 topAnchor];

      v29 = [v3 topAnchor];
      v30 = [v28 constraintEqualToAnchor:v29];

      *(v15 + 64) = v30;
      v31 = [v14 bottomAnchor];

      v32 = [v3 bottomAnchor];
      v33 = [v31 constraintEqualToAnchor:v32];

      *(v15 + 72) = v33;
      v34 = [v14 trailingAnchor];

      v35 = [v3 trailingAnchor];
      v36 = [v34 constraintEqualToAnchor:v35];

      *(v15 + 80) = v36;
      v37 = [v13 widthAnchor];

      v38 = [v14 widthAnchor];
      v39 = [v37 constraintEqualToAnchor:v38];

      *(v15 + 88) = v39;
      v40 = [v13 heightAnchor];

      v41 = [v13 widthAnchor];
      v42 = [v40 constraintEqualToAnchor:v41];

      *(v15 + 96) = v42;
      sub_36748C();
      isa = sub_AB9740().super.isa;

      [v44 activateConstraints:isa];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_364C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_ABB3C0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_364D0C(uint64_t a1)
{
  v2 = sub_367944();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_364D48(uint64_t a1)
{
  v2 = sub_367944();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_364D84(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E00270);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_367944();
  sub_ABB690();
  v9[1] = a2;
  sub_367B18();
  sub_ABB280();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_364ECC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E002E8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_367E64();
  sub_ABB690();
  v9[1] = a2;
  sub_367FEC();
  sub_ABB280();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_365014(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E00350);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_368280();
  sub_ABB690();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E00338);
  sub_368328(&qword_E00358, sub_3683A0);
  sub_ABB280();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_3651A0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E00260);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_3679EC();
  sub_ABB690();
  v8 = *(v2 + 80);
  v18 = *(v2 + 64);
  v19 = v8;
  v20 = *(v2 + 96);
  v21 = *(v2 + 112);
  v9 = *(v2 + 16);
  v14 = *v2;
  v15 = v9;
  v10 = *(v2 + 48);
  v16 = *(v2 + 32);
  v17 = v10;
  sub_367454(v2, v12);
  sub_367A94();
  sub_ABB280();
  v12[4] = v18;
  v12[5] = v19;
  v12[6] = v20;
  v13 = v21;
  v12[0] = v14;
  v12[1] = v15;
  v12[2] = v16;
  v12[3] = v17;
  sub_367AE8(v12);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_365358(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E002E0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_367F0C();
  sub_ABB690();
  v8 = *(v2 + 80);
  v18 = *(v2 + 64);
  v19 = v8;
  v20 = *(v2 + 96);
  v21 = *(v2 + 112);
  v9 = *(v2 + 16);
  v14 = *v2;
  v15 = v9;
  v10 = *(v2 + 48);
  v16 = *(v2 + 32);
  v17 = v10;
  sub_367FB4(v2, v12);
  sub_367678();
  sub_ABB280();
  v12[4] = v18;
  v12[5] = v19;
  v12[6] = v20;
  v13 = v21;
  v12[0] = v14;
  v12[1] = v15;
  v12[2] = v16;
  v12[3] = v17;
  sub_3673D0(v12);
  return (*(v5 + 8))(v7, v4);
}

void *sub_365510@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_366214(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_365570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746E65746E6F63 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_ABB3C0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_365604(uint64_t a1)
{
  v2 = sub_367E64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_365640(uint64_t a1)
{
  v2 = sub_367E64();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_36567C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_366384(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_3656D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_ABB3C0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_36575C(uint64_t a1)
{
  v2 = sub_368280();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_365798(uint64_t a1)
{
  v2 = sub_368280();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_3657D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_3664F4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_365838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_ABB3C0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_3658C8(uint64_t a1)
{
  v2 = sub_3679EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_365904(uint64_t a1)
{
  v2 = sub_3679EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_365940@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_3666A8(a1, v8);
  if (!v2)
  {
    v5 = v12;
    *(a2 + 64) = v11;
    *(a2 + 80) = v5;
    *(a2 + 96) = v13;
    *(a2 + 112) = v14;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v7;
  }

  return result;
}

uint64_t sub_365A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_ABB3C0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_365A9C(uint64_t a1)
{
  v2 = sub_367F0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_365AD8(uint64_t a1)
{
  v2 = sub_367F0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_365B14@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_3668C4(a1, v8);
  if (!v2)
  {
    v5 = v12;
    *(a2 + 64) = v11;
    *(a2 + 80) = v5;
    *(a2 + 96) = v13;
    *(a2 + 112) = v14;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v7;
  }

  return result;
}

uint64_t sub_365BD0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 7107189;
    v5 = 0x746867696568;
    if (a1 != 2)
    {
      v5 = 0x6F6C6F4374786574;
    }

    if (a1)
    {
      v4 = 0x6874646977;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6F6C6F4374786574;
    v2 = 0x726F6C6F436762;
    if (a1 != 7)
    {
      v2 = 0x3350736168;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    if (a1 <= 5u)
    {
      return 0x6F6C6F4374786574;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_365CE4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E001E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_367344();
  sub_ABB690();
  v8[15] = 0;
  sub_ABB240();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_ABB270();
  v8[13] = 2;
  sub_ABB270();
  v8[12] = 3;
  sub_ABB240();
  v8[11] = 4;
  sub_ABB240();
  v8[10] = 5;
  sub_ABB240();
  v8[9] = 6;
  sub_ABB240();
  v8[8] = 7;
  sub_ABB240();
  v8[7] = 8;
  sub_ABB250();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_365F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = sub_366AE0(a1, a2);

  *a3 = v4;
  return result;
}

uint64_t sub_365F98(uint64_t a1)
{
  v2 = sub_367344();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_365FD4(uint64_t a1)
{
  v2 = sub_367344();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_366010@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_366D54(a1, v8);
  if (!v2)
  {
    v5 = v12;
    *(a2 + 64) = v11;
    *(a2 + 80) = v5;
    *(a2 + 96) = v13;
    *(a2 + 112) = v14;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v7;
  }

  return result;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_3661B0()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E00120);
  __swift_project_value_buffer(v0, qword_E00120);
  return static Logger.music(_:)();
}

void *sub_366214(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E00230);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_367944();
  sub_ABB680();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    sub_367998();
    sub_ABB1E0();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v7;
}

void *sub_366384(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E002B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_367E64();
  sub_ABB680();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    sub_367EB8();
    sub_ABB1E0();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v7;
}

void *sub_3664F4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E00328);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_368280();
  sub_ABB680();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E00338);
    sub_368328(&qword_E00340, sub_3682D4);
    sub_ABB1E0();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v7;
}

uint64_t sub_3666A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E00248);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_3679EC();
  sub_ABB680();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  sub_367A40();
  sub_ABB1E0();
  (*(v6 + 8))(v8, v5);
  v17 = v25;
  v18 = v26;
  v19 = v27;
  v13 = v21;
  v14 = v22;
  v20 = v28;
  v15 = v23;
  v16 = v24;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v10 = v18;
  *(a2 + 64) = v17;
  *(a2 + 80) = v10;
  *(a2 + 96) = v19;
  *(a2 + 112) = v20;
  v11 = v14;
  *a2 = v13;
  *(a2 + 16) = v11;
  v12 = v16;
  *(a2 + 32) = v15;
  *(a2 + 48) = v12;
  return result;
}

uint64_t sub_3668C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E002C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_367F0C();
  sub_ABB680();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  sub_367F60();
  sub_ABB1E0();
  (*(v6 + 8))(v8, v5);
  v17 = v25;
  v18 = v26;
  v19 = v27;
  v13 = v21;
  v14 = v22;
  v20 = v28;
  v15 = v23;
  v16 = v24;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v10 = v18;
  *(a2 + 64) = v17;
  *(a2 + 80) = v10;
  *(a2 + 96) = v19;
  *(a2 + 112) = v20;
  v11 = v14;
  *a2 = v13;
  *(a2 + 16) = v11;
  v12 = v16;
  *(a2 + 32) = v15;
  *(a2 + 48) = v12;
  return result;
}

uint64_t sub_366AE0(uint64_t a1, uint64_t a2)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {
    return 0;
  }

  if (sub_ABB3C0())
  {
    return 0;
  }

  if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_ABB3C0() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003172 || (sub_ABB3C0() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003272 || (sub_ABB3C0() & 1) != 0)
  {
    return 4;
  }

  if (a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003372 || (sub_ABB3C0() & 1) != 0)
  {
    return 5;
  }

  if (a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003472 || (sub_ABB3C0() & 1) != 0)
  {
    return 6;
  }

  if (a1 == 0x726F6C6F436762 && a2 == 0xE700000000000000 || (sub_ABB3C0() & 1) != 0)
  {
    return 7;
  }

  result = 8;
  if (a1 != 0x3350736168 || a2 != 0xE500000000000000)
  {
    if (sub_ABB3C0())
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }

  return result;
}

uint64_t sub_366D54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E001D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_367344();
  sub_ABB680();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v48[0]) = 0;
  v9 = sub_ABB1A0();
  v11 = v10;
  LOBYTE(v48[0]) = 1;
  v38 = sub_ABB1D0();
  LOBYTE(v48[0]) = 2;
  v37 = sub_ABB1D0();
  LOBYTE(v48[0]) = 3;
  v36 = sub_ABB1A0();
  v39 = v12;
  LOBYTE(v48[0]) = 4;
  v33 = sub_ABB1A0();
  v35 = v13;
  LOBYTE(v48[0]) = 5;
  v14 = sub_ABB1A0();
  v34 = v15;
  v29 = v14;
  LOBYTE(v48[0]) = 6;
  v32 = 0;
  v28 = sub_ABB1A0();
  v31 = v16;
  LOBYTE(v48[0]) = 7;
  v27 = sub_ABB1A0();
  v30 = v17;
  v50 = 8;
  v18 = sub_ABB1B0();
  (*(v6 + 8))(v8, v5);
  LODWORD(v32) = v18 & 1;
  *&v40 = v9;
  *(&v40 + 1) = v11;
  *&v41 = v38;
  *(&v41 + 1) = v37;
  *&v42 = v36;
  v19 = v39;
  *(&v42 + 1) = v39;
  *&v43 = v33;
  v20 = v35;
  *(&v43 + 1) = v35;
  *&v44 = v29;
  v21 = v34;
  *(&v44 + 1) = v34;
  *&v45 = v28;
  v22 = v31;
  *(&v45 + 1) = v31;
  *&v46 = v27;
  *(&v46 + 1) = v30;
  v47 = v32;
  sub_367398(&v40, v48);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v48[0] = v9;
  v48[1] = v11;
  v48[2] = v38;
  v48[3] = v37;
  v48[4] = v36;
  v48[5] = v19;
  v48[6] = v33;
  v48[7] = v20;
  v48[8] = v29;
  v48[9] = v21;
  v48[10] = v28;
  v48[11] = v22;
  v48[12] = v27;
  v48[13] = v30;
  v49 = v32;
  result = sub_3673D0(v48);
  v24 = v45;
  *(a2 + 64) = v44;
  *(a2 + 80) = v24;
  *(a2 + 96) = v46;
  *(a2 + 112) = v47;
  v25 = v41;
  *a2 = v40;
  *(a2 + 16) = v25;
  v26 = v43;
  *(a2 + 32) = v42;
  *(a2 + 48) = v26;
  return result;
}

unint64_t sub_367344()
{
  result = qword_E001D8;
  if (!qword_E001D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E001D8);
  }

  return result;
}

unint64_t sub_367400()
{
  result = qword_E001F0;
  if (!qword_E001F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E001F0);
  }

  return result;
}

unint64_t sub_36748C()
{
  result = qword_DF7920;
  if (!qword_DF7920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DF7920);
  }

  return result;
}

uint64_t sub_3674D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E001F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_367554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3675B8(uint64_t a1)
{
  v2 = type metadata accessor for Artwork(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_367614(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork.Decoration(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_367678()
{
  result = qword_E00208;
  if (!qword_E00208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E00208);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UpsellArtworkGrid.ArtworkData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UpsellArtworkGrid.ArtworkData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_367840()
{
  result = qword_E00218;
  if (!qword_E00218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E00218);
  }

  return result;
}

unint64_t sub_367898()
{
  result = qword_E00220;
  if (!qword_E00220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E00220);
  }

  return result;
}

unint64_t sub_3678F0()
{
  result = qword_E00228;
  if (!qword_E00228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E00228);
  }

  return result;
}

unint64_t sub_367944()
{
  result = qword_E00238;
  if (!qword_E00238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E00238);
  }

  return result;
}

unint64_t sub_367998()
{
  result = qword_E00240;
  if (!qword_E00240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E00240);
  }

  return result;
}

unint64_t sub_3679EC()
{
  result = qword_E00250;
  if (!qword_E00250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E00250);
  }

  return result;
}

unint64_t sub_367A40()
{
  result = qword_E00258;
  if (!qword_E00258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E00258);
  }

  return result;
}

unint64_t sub_367A94()
{
  result = qword_E00268;
  if (!qword_E00268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E00268);
  }

  return result;
}

unint64_t sub_367B18()
{
  result = qword_E00278;
  if (!qword_E00278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E00278);
  }

  return result;
}

uint64_t sub_367B8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_367BD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_367C58()
{
  result = qword_E00280;
  if (!qword_E00280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E00280);
  }

  return result;
}

unint64_t sub_367CB0()
{
  result = qword_E00288;
  if (!qword_E00288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E00288);
  }

  return result;
}

unint64_t sub_367D08()
{
  result = qword_E00290;
  if (!qword_E00290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E00290);
  }

  return result;
}

unint64_t sub_367D60()
{
  result = qword_E00298;
  if (!qword_E00298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E00298);
  }

  return result;
}

unint64_t sub_367DB8()
{
  result = qword_E002A0;
  if (!qword_E002A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E002A0);
  }

  return result;
}

unint64_t sub_367E10()
{
  result = qword_E002A8;
  if (!qword_E002A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E002A8);
  }

  return result;
}

unint64_t sub_367E64()
{
  result = qword_E002B8;
  if (!qword_E002B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E002B8);
  }

  return result;
}

unint64_t sub_367EB8()
{
  result = qword_E002C0;
  if (!qword_E002C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E002C0);
  }

  return result;
}

unint64_t sub_367F0C()
{
  result = qword_E002D0;
  if (!qword_E002D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E002D0);
  }

  return result;
}

unint64_t sub_367F60()
{
  result = qword_E002D8;
  if (!qword_E002D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E002D8);
  }

  return result;
}

unint64_t sub_367FEC()
{
  result = qword_E002F0;
  if (!qword_E002F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E002F0);
  }

  return result;
}

unint64_t sub_368074()
{
  result = qword_E002F8;
  if (!qword_E002F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E002F8);
  }

  return result;
}

unint64_t sub_3680CC()
{
  result = qword_E00300;
  if (!qword_E00300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E00300);
  }

  return result;
}

unint64_t sub_368124()
{
  result = qword_E00308;
  if (!qword_E00308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E00308);
  }

  return result;
}

unint64_t sub_36817C()
{
  result = qword_E00310;
  if (!qword_E00310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E00310);
  }

  return result;
}

unint64_t sub_3681D4()
{
  result = qword_E00318;
  if (!qword_E00318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E00318);
  }

  return result;
}

unint64_t sub_36822C()
{
  result = qword_E00320;
  if (!qword_E00320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E00320);
  }

  return result;
}

unint64_t sub_368280()
{
  result = qword_E00330;
  if (!qword_E00330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E00330);
  }

  return result;
}

unint64_t sub_3682D4()
{
  result = qword_E00348;
  if (!qword_E00348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E00348);
  }

  return result;
}

uint64_t sub_368328(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E00338);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_3683A0()
{
  result = qword_E00360;
  if (!qword_E00360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E00360);
  }

  return result;
}

unint64_t sub_368408()
{
  result = qword_E00368;
  if (!qword_E00368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E00368);
  }

  return result;
}

unint64_t sub_368460()
{
  result = qword_E00370;
  if (!qword_E00370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E00370);
  }

  return result;
}

unint64_t sub_3684B8()
{
  result = qword_E00378;
  if (!qword_E00378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E00378);
  }

  return result;
}

void sub_368528()
{
  sub_4D7AA8();
  v1 = [objc_opt_self() sharedApplication];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_368B38;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1B5EB4;
  v5[3] = &block_descriptor_111;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 _performBlockAfterCATransactionCommits:v3];
  _Block_release(v3);

  sub_368630();
}

void sub_368630()
{
  v1 = v0;
  v2 = sub_4D3DD0();
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView;
  [*(v1 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView) contentSize];
  v13 = v12;
  [*(v1 + v11) adjustedContentInset];
  [*(v1 + v11) contentOffset];
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  v14 = v13 - CGRectGetHeight(v17);
  if (v14 < 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v14;
  }

  if (v13 > 0.0)
  {
    v16 = OBJC_IVAR____TtC16MusicApplication38JSVerticalStackViewModelViewController_lastSeenScrollableHeight;
    if (*(v1 + OBJC_IVAR____TtC16MusicApplication38JSVerticalStackViewModelViewController_lastSeenScrollableHeight) < v15 || (v18.origin.x = v4, v18.origin.y = v6, v18.size.width = v8, v18.size.height = v10, v13 < CGRectGetHeight(v18)))
    {
      v19.origin.x = v4;
      v19.origin.y = v6;
      v19.size.width = v8;
      v19.size.height = v10;
      CGRectGetHeight(v19);
      sub_471A4();
      if (sub_AB38F0())
      {
        (*(&stru_108.size + (swift_isaMask & **(v1 + OBJC_IVAR____TtC16MusicApplication38JSVerticalStackViewModelViewController_verticalStack))))();
        *(v1 + v16) = v15;
      }
    }
  }
}

id sub_3689E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSVerticalStackViewModelViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JSVerticalStackViewModelViewController()
{
  result = qword_E003B0;
  if (!qword_E003B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_368AD4()
{

  sub_A34B8(v0);
}

uint64_t sub_368B00()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_111(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_368B58()
{
  v0 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v1 = sub_AB9260();
  [v0 setLabel:v1];

  v2 = [objc_opt_self() kindWithVariants:2];
  [v0 setItemKind:v2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_AF4EC0;
  *(v3 + 32) = sub_AB92A0();
  *(v3 + 40) = v4;
  isa = sub_AB9740().super.isa;
  v6 = [objc_opt_self() propertySetWithProperties:isa];

  [v0 setSectionProperties:v6];
  if (qword_DE6AD0 != -1)
  {
    swift_once();
  }

  [v0 setItemProperties:qword_E715F8];
  sub_369838();
  sub_13C80(0, &unk_DFDE50);

  v7 = sub_AB9740().super.isa;

  [v0 setItemSortDescriptors:v7];

  v8 = sub_369910();
  v9 = v8;
  if (v8[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption])
  {
    v10 = v8[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_contentType];

    v11 = qword_B0B708[v10];
  }

  else
  {
    v11 = *MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
  }

  [v0 setFilteringOptions:v11];
  sub_36A668(v0);

  return v0;
}

uint64_t sub_368DDC()
{
  v1 = v0;
  sub_369B2C();
  v2 = qword_DFE2F0;
  v3 = *(v0 + qword_DFE2F0);
  if (v3)
  {
    LOBYTE(v3) = [v3 isEmpty];
  }

  sub_3E2E84(v3);

  v4 = sub_3699A0();
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

  v6 = (*(*(v1 + qword_E003D8) + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
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

id sub_368EE4(void *a1)
{
  v3 = sub_AB35C0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_AB9250();
  __chkstk_darwin(v4 - 8);
  *&v1[qword_E003C8] = 0;
  *&v1[qword_E003D0] = 0;
  *&v1[qword_E003D8] = 0;
  *&v1[qword_E003E0] = 0;
  *&v1[qword_E003E8] = 0;
  *&v1[qword_E003C0] = a1;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for MusicVideosViewController();
  v5 = a1;
  v6 = objc_msgSendSuper2(&v10, "init");
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v7 = sub_AB9260();

  [v6 setTitle:v7];

  v8 = sub_AB9260();
  [v6 setPlayActivityFeatureName:v8];

  return v6;
}

char *sub_3690E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_AB35C0();
  __chkstk_darwin(v10 - 8);
  v11 = sub_AB9250();
  __chkstk_darwin(v11 - 8);
  v12 = sub_AB9230();
  __chkstk_darwin(v12 - 8);
  if (sub_AB92A0() == a2 && v13 == a3)
  {

    goto LABEL_13;
  }

  v15 = sub_ABB3C0();

  if (v15)
  {
LABEL_13:
    type metadata accessor for CollectionViewSection.SectionHeaderView(0);
    static UICollectionReusableView.reuseIdentifier.getter();
    v17 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();

    v25 = *&v4[qword_DFE2F0];
    if (!v25)
    {
      return v17;
    }

    result = [v25 results];
    if (result)
    {
      v26 = result;
      v27 = [result sectionAtIndex:IndexPath.safeSection.getter()];

      if (v27 && (swift_dynamicCast() & 1) != 0)
      {
        v28 = HIBYTE(v46) & 0xF;
        if ((v46 & 0x2000000000000000) == 0)
        {
          v28 = v45 & 0xFFFFFFFFFFFFLL;
        }

        if (v28)
        {
          sub_36A900(v17, v45, v46);
        }
      }

      return v17;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  v16 = UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  if (*v16 == a2 && v16[1] == a3 || (sub_ABB3C0() & 1) != 0)
  {
    type metadata accessor for PlayIntentControlsReusableView();
    static UICollectionReusableView.reuseIdentifier.getter();
    v17 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();

    v18 = *&v4[direct field offset for BrowseCollectionViewController.textDrawingCache];
    *&v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_textDrawingCache] = v18;
    swift_retain_n();

    v19 = *&v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_textStackView];
    v20 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v21 = *(v19 + v20);
    *(v19 + v20) = v18;
    swift_retain_n();
    sub_2E6210(v21);

    sub_AB9220();
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    sub_AB9210(v48);
    v22 = *&v5[qword_DFE2F0];
    if (!v22)
    {
LABEL_22:
      sub_AB91F0();
      v49._countAndFlagsBits = 0x5620636973754D20;
      v49._object = 0xEF2973286F656469;
      sub_AB9210(v49);
      sub_AB9240();
      sub_AB3550();
      v29 = sub_AB9320();
      v30 = &v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_title];
      *v30 = v29;
      v30[1] = v31;

      sub_413638();
      v32 = v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isBottomHairlineHidden];
      v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isBottomHairlineHidden] = 1;
      if ((v32 & 1) == 0)
      {
        [*&v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_bottomHairlineView] setHidden:1];
      }

      v33 = v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isTopHairlineHidden];
      v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isTopHairlineHidden] = 1;
      if ((v33 & 1) == 0)
      {
        [*&v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_topHairlineView] setHidden:1];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA940);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_AF4EC0;
      *(v34 + 32) = 0;
      v35 = [v5 traitCollection];
      v36 = [v35 horizontalSizeClass];

      if (v36 == &dword_0 + 2)
      {
        v34 = sub_6B7E4(&dword_0 + 1, 2, 1, v34);
        *(v34 + 16) = 2;
        *(v34 + 33) = 1;
      }

      v37 = *&v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_userInterfaceComponents];
      *&v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_userInterfaceComponents] = v34;
      if ((sub_12D0A4(v34, v37) & 1) == 0)
      {
        sub_413EB8();
        [v17 setNeedsLayout];
      }

      v38 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v39 = swift_allocObject();
      *(v39 + 16) = sub_36D9D8;
      *(v39 + 24) = v38;
      v40 = &v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_playHandler];
      v41 = *&v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_playHandler];
      *v40 = sub_140E00;
      v40[1] = v39;

      sub_17654(v41);
      sub_413EB8();
      [v17 setNeedsLayout];

      v42 = swift_allocObject();
      *(v42 + 16) = sub_36D9D8;
      *(v42 + 24) = v38;
      v43 = &v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_shuffleHandler];
      v44 = *&v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_shuffleHandler];
      *v43 = sub_140E2C;
      v43[1] = v42;

      sub_17654(v44);
      sub_413EB8();
      [v17 setNeedsLayout];

      return v17;
    }

    result = [v22 results];
    if (result)
    {
      v24 = result;
      [result totalItemCount];

      goto LABEL_22;
    }

    goto LABEL_36;
  }

  return sub_3DE1D8(a1, a4);
}

void *sub_369838()
{
  v1 = qword_E003C8;
  if (*(v0 + qword_E003C8))
  {
    v2 = *(v0 + qword_E003C8);
  }

  else
  {
    v3 = *(v0 + qword_E003C0) != 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1D40);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_AF4EC0;
    *(v4 + 32) = v3;
    type metadata accessor for SortOptionsController();
    swift_allocObject();
    v2 = sub_225174(v4, 0, 0);
    *(v0 + v1) = v2;
  }

  return v2;
}

_BYTE *sub_369910()
{
  v1 = qword_E003D0;
  v2 = *(v0 + qword_E003D0);
  if (v2)
  {
    v3 = *(v0 + qword_E003D0);
  }

  else
  {
    v4 = *(v0 + qword_E003C0);
    objc_allocWithZone(type metadata accessor for LibraryFilterOptionsController());
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = 7;
    }

    v6 = v0;
    v7 = sub_4F4944(v5);
    v8 = *(v0 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_3699A0()
{
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_AB9250();
  __chkstk_darwin(v2 - 8);
  v3 = qword_E003D8;
  if (*&v0[qword_E003D8])
  {
    v4 = *&v0[qword_E003D8];
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

void *sub_369B2C()
{
  v1 = qword_E003E0;
  if (*&v0[qword_E003E0])
  {
    v2 = *&v0[qword_E003E0];
  }

  else
  {
    v2 = sub_36B0DC(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

void sub_369B94(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v3);
  v5 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v1[qword_DFE2F0];
  if (v6)
  {
    v33 = v6;
    v7 = [v33 request];
    if (v7)
    {
      v8 = v7;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        v11 = [v9 filterText];
        if (v11)
        {
          v12 = v11;
          v13 = sub_AB92A0();
          v15 = v14;

          v16 = HIBYTE(v15) & 0xF;
          if ((v15 & 0x2000000000000000) == 0)
          {
            v16 = v13 & 0xFFFFFFFFFFFFLL;
          }

          if (v16)
          {
            [v10 setFilterText:0];
            *&v38[0] = _swiftEmptyArrayStorage;
            v17 = [v33 results];
            if (v17)
            {
              v18 = v17;
              v19 = swift_allocObject();
              *(v19 + 16) = v38;
              v20 = swift_allocObject();
              *(v20 + 16) = sub_140FE8;
              *(v20 + 24) = v19;
              v32 = v19;
              v36 = sub_57B9C;
              v37 = v20;
              *&aBlock = _NSConcreteStackBlock;
              *(&aBlock + 1) = 1107296256;
              *&v35 = sub_48D644;
              *(&v35 + 1) = &block_descriptor_90_0;
              v21 = _Block_copy(&aBlock);

              [v18 enumerateItemIdentifiersUsingBlock:v21];
              _Block_release(v21);
              LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

              if ((v19 & 1) == 0)
              {
                sub_13C80(0, &unk_DE8180);

                isa = sub_AB9740().super.isa;

                [v10 setAllowedItemIdentifiers:isa];

                v23 = sub_140FE8;
LABEL_15:
                v26 = [v10 playbackIntentWithStartItemIdentifiers:0];
                if (v26)
                {
                  *v5 = v26;
                  swift_storeEnumTagMultiPayload();
                  v36 = 0;
                  aBlock = 0u;
                  v35 = 0u;
                  v39 = 0;
                  memset(v38, 0, sizeof(v38));
                  v27 = v1;
                  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v5, &aBlock, 3, 0, 0, 1, 0, 1, a1, v1, v38);
                  v28 = type metadata accessor for PlaybackIntentDescriptor(0);
                  (*(*(v28 - 8) + 56))(a1, 0, 1, v28);
                }

                else
                {
                  v31 = type metadata accessor for PlaybackIntentDescriptor(0);
                  (*(*(v31 - 8) + 56))(a1, 1, 1, v31);
                }

                sub_17654(v23);
                return;
              }

              __break(1u);
            }

            __break(1u);
            return;
          }
        }

        v23 = 0;
        goto LABEL_15;
      }
    }

    v29 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v29 - 8) + 56))(a1, 1, 1, v29);
    v30 = v33;
  }

  else
  {
    v24 = type metadata accessor for PlaybackIntentDescriptor(0);
    v25 = *(*(v24 - 8) + 56);

    v25(a1, 1, 1, v24);
  }
}

void sub_36A098()
{
  [v0 loadViewIfNeeded];
  v1 = *&v0[qword_DFE2F8];
  if (v1)
  {
    v2 = v1;
    sub_36A154();
    [v2 bounds];
    v3 = [v0 traitCollection];
    [v3 displayScale];
    sub_AB3A00();
  }

  else
  {
    __break(1u);
  }
}

void sub_36A154()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    x = v11.origin.x;
    y = v11.origin.y;
    width = v11.size.width;
    height = v11.size.height;
    v9 = CGRectGetWidth(v11);
    v8 = 0x40A3880000000000;
    sub_471A4();
    if ((sub_AB38F0() & 1) == 0)
    {
      v12.origin.x = x;
      v12.origin.y = y;
      v12.size.width = width;
      v12.size.height = height;
      v9 = CGRectGetWidth(v12);
      v8 = 0x4097700000000000;
      if ((sub_AB38F0() & 1) == 0)
      {
        v13.origin.x = x;
        v13.origin.y = y;
        v13.size.width = width;
        v13.size.height = height;
        v9 = CGRectGetWidth(v13);
        v8 = 0x4092C00000000000;
        if ((sub_AB38F0() & 1) == 0)
        {
          v14.origin.x = x;
          v14.origin.y = y;
          v14.size.width = width;
          v14.size.height = height;
          v9 = CGRectGetWidth(v14);
          v8 = 0x4084500000000000;
          sub_AB38F0();
        }
      }
    }

    [v2 music_inheritedLayoutInsets];
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    v10 = CGRectGetWidth(v15);
    sub_AB38F0();
    v7 = [v0 traitCollection];
    [v7 displayScale];

    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    CGRectGetWidth(v16);
    sub_AB3A00();
  }

  else
  {
    __break(1u);
  }
}

void sub_36A448(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [v1 view];
  if (!v14)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v15 = v14;
  [v14 music_inheritedLayoutInsets];
  v17 = v16;
  v19 = v18;

  sub_36A154();
  v21 = v20;
  v25.origin.x = v7;
  v25.origin.y = v9;
  v25.size.width = v11;
  v25.size.height = v13;
  CGRectGetHeight(v25);
  sub_173970(v3, v21);
  [a1 setItemSize:v21];
  [a1 setSectionInset:{10.0, v17, 0.0, v19}];
  [a1 setMinimumLineSpacing:12.0];
  [a1 setSectionHeadersPinToVisibleBounds:0];
  swift_getObjectType();
  [swift_getObjCClassFromMetadata() invalidationContextClass];
  swift_getObjCClassMetadata();
  sub_13C80(0, &qword_DF1D18);
  swift_dynamicCastMetatypeUnconditional();
  v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [a1 invalidateLayoutWithContext:v22];
  v23 = *&v1[qword_E003E8];
  *&v1[qword_E003E8] = 0;
}

void sub_36A668(void *a1)
{
  v3 = *&v1[qword_E003C0];
  v4 = [v1 traitCollection];
  v5 = [v1 traitCollection];
  rawValue = UITraitCollection.legacyLibraryFilter.getter().rawValue;

  v7 = MPMediaLibraryFilteringOptions.itemRequestFilteringOptions.getter(rawValue);
  v8 = UITraitCollection.mediaLibrary.getter();
  [a1 setMediaLibrary:v8];

  v9 = [a1 filteringOptions];
  if ((v7 & ~v9) != 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  [a1 setFilteringOptions:v10 | v9];
  if ((UITraitCollection.mediaPickerLibraryFilter.getter().rawValue & 0x10) != 0)
  {
    [a1 setFilteringOptions:{objc_msgSend(a1, "filteringOptions") | 0x10}];
  }

  if (v3)
  {
    v11 = v3;
    v12 = [a1 scopedContainers];
    if (v12)
    {
      v13 = v12;
      sub_13C80(0, &qword_DEDE20);
      v14 = sub_AB9760();
    }

    else
    {
      v14 = _swiftEmptyArrayStorage;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_AF82B0;
    *(v15 + 32) = v11;
    v20 = v15;
    v16 = v11;
    sub_19638(v14);
    sub_13C80(0, &qword_DEDE20);
    isa = sub_AB9740().super.isa;

    [a1 setScopedContainers:isa];

    v4 = isa;
  }

  if (*(*(sub_3699A0() + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text + 8))
  {

    v18 = sub_AB9260();
  }

  else
  {
    v18 = 0;
  }

  [a1 setFilterText:{v18, v18, v20}];
}

void sub_36A900(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  __chkstk_darwin(v8);
  v10 = &v17[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor:v11];

  v12 = [v4 traitCollection];
  sub_E2C18(a2, a3, v12, v10);

  v13 = OBJC_IVAR____TtCV16MusicApplication21CollectionViewSection17SectionHeaderView_contentConfiguration;
  swift_beginAccess();
  sub_140EBC(v10, a1 + v13);
  swift_endAccess();
  v14 = sub_E34F8();
  swift_getObjectType();
  v17[3] = v8;
  v17[4] = sub_140F20();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  sub_141658(a1 + v13, boxed_opaque_existential_0, type metadata accessor for CollectionViewSection.ContentConfiguration);
  sub_AB4C70();
  sub_1416C0(v10, type metadata accessor for CollectionViewSection.ContentConfiguration);
}

void sub_36AAEC(void *a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for MusicVideosViewController();
  objc_msgSendSuper2(&v10, "encodeRestorableStateWithCoder:", a1);
  v3 = *&v1[qword_E003C0];
  if (v3)
  {
    v4 = type metadata accessor for CodableModelIdentity();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtC16MusicApplication20CodableModelIdentity_model] = v3;
    v9.receiver = v5;
    v9.super_class = v4;
    v6 = v3;
    v7 = objc_msgSendSuper2(&v9, "init");
    v8 = sub_AB9260();
    [a1 encodeObject:v7 forKey:{v8, v9.receiver, v9.super_class}];
  }
}

void sub_36ABD8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_36AAEC(v4);
}

void sub_36AC40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85D0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  v6 = MPModelRelationshipSongArtist;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_AF4EC0;
  *(v8 + 32) = sub_AB92A0();
  *(v8 + 40) = v9;
  v36 = v6;
  isa = sub_AB9740().super.isa;
  v11 = objc_opt_self();
  v12 = [v11 propertySetWithProperties:isa];

  *(inited + 48) = v12;
  v13 = MPModelRelationshipSongAlbum;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_AF85F0;
  *(v15 + 32) = sub_AB92A0();
  *(v15 + 40) = v16;
  *(v15 + 48) = sub_AB92A0();
  *(v15 + 56) = v17;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_AF4EC0;
  v19 = MPModelRelationshipAlbumRepresentativeSong;
  *(v18 + 32) = sub_AB92A0();
  *(v18 + 40) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_AF4EC0;
  *(v21 + 32) = sub_AB92A0();
  *(v21 + 40) = v22;
  v37 = v13;
  v23 = v19;
  v24 = sub_AB9740().super.isa;
  v25 = [v11 propertySetWithProperties:v24];

  *(v18 + 48) = v25;
  sub_96EA4(v18);
  swift_setDeallocating();
  sub_12E1C(v18 + 32, &unk_DE8E80);
  v26 = objc_allocWithZone(MPPropertySet);
  v27 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v28 = sub_AB8FD0().super.isa;

  v29 = [v26 initWithProperties:v27 relationships:v28];

  *(inited + 72) = v29;
  sub_96EA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
  swift_arrayDestroy();
  v30 = objc_allocWithZone(MPPropertySet);
  v31 = sub_AB9740().super.isa;

  v32 = sub_AB8FD0().super.isa;

  v33 = [v30 initWithProperties:v31 relationships:v32];

  sub_13C80(0, &unk_DE8EB0);
  v34 = sub_10F414();
  v35 = [v33 propertySetByCombiningWithPropertySet:v34];

  qword_E715F8 = v35;
}

void *sub_36B0DC(void *a1)
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
    v3[27] = sub_36D9D0;
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

void sub_36B218(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v5 = Strong;
  v6 = sub_3699A0();

  v7 = (*(v6 + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  v8 = v7[1];
  if (!v8)
  {

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v9 = *v7;

  v10 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v10 = v9 & 0xFFFFFFFFFFFFLL;
  }

  v11 = v10 != 0;
LABEL_8:
  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12 && (v13 = v12, v14 = sub_369910(), v13, sub_4F4414(v11, v31), v14, *(&v31[0] + 1) != 1))
  {
    v17 = v33;
    v15 = v34;
    v16 = v32;
    v22 = v31[3];
    v23 = v31[2];
    v20 = v31[1];
    v21 = v31[0];
  }

  else
  {
    if (v11)
    {
      if (qword_DE6BD0 != -1)
      {
        swift_once();
      }

      v29[3] = xmmword_E717A8;
      v29[4] = xmmword_E717B8;
      v29[1] = xmmword_E71788;
      v29[2] = xmmword_E71798;
      v29[0] = xmmword_E71778;
      v15 = qword_E717C8;
      v30 = qword_E717C8;
      v17 = *(&xmmword_E717B8 + 1);
      v16 = xmmword_E717B8;
      v26 = xmmword_E71798;
      v27 = xmmword_E717A8;
      v24 = xmmword_E71778;
      v25 = xmmword_E71788;
      v18 = v29;
      v19 = &v28;
    }

    else
    {
      v17 = *(a1 + 72);
      v15 = *(a1 + 80);
      v16 = *(a1 + 64);
      v26 = *(a1 + 32);
      v27 = *(a1 + 48);
      v24 = *a1;
      v25 = *(a1 + 16);
      v19 = v29;
      v18 = a1;
    }

    sub_576EC(v18, v19);
    v21 = v24;
    v20 = v25;
    v23 = v26;
    v22 = v27;
  }

  *a2 = v21;
  *(a2 + 16) = v20;
  *(a2 + 32) = v23;
  *(a2 + 48) = v22;
  *(a2 + 64) = v16;
  *(a2 + 72) = v17;
  *(a2 + 80) = v15;
}

uint64_t sub_36B400()
{
  v1 = v0;
  v31.receiver = v0;
  v31.super_class = type metadata accessor for MusicVideosViewController();
  objc_msgSendSuper2(&v31, "viewDidLoad");
  v2 = [v0 navigationItem];
  v3 = [v2 rightBarButtonItems];
  if (v3)
  {
    v4 = v3;
    sub_13C80(0, &unk_DF12E0);
    v5 = sub_AB9760();

    v2 = v4;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v30 = v5;
  v6 = sub_369910();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = &v6[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOptionDidChange];
  v9 = *&v6[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOptionDidChange];
  *v8 = sub_36D8B0;
  v8[1] = v7;

  sub_17654(v9);

  v10 = *&v1[qword_E003D0];
  v11 = sub_369838();
  v12 = sub_4F46B0();
  sub_13C80(0, &qword_DF1D50);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v11;

  isa = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, (&dword_0 + 1), 0, sub_14176C, v14).super.super.isa;

  UIBarButtonItem.primaryActionKind.setter(isa, 1);

  v16 = *&v10[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController____lazy_storage___filterBarButtonItem];

  sub_AB9730();
  if (*(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v30 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  v17 = [v1 navigationItem];
  sub_13C80(0, &unk_DF12E0);
  v18 = sub_AB9740().super.isa;

  [v17 setRightBarButtonItems:v18 animated:0];

  v19 = qword_E003C8;
  v20 = *&v1[qword_E003C8];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = *(v20 + 64);
  *(v20 + 64) = sub_36D8FC;
  *(v20 + 72) = v21;

  sub_17654(v22);

  v23 = *&v1[v19];
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = *(v23 + 48);
  *(v23 + 48) = sub_141790;
  *(v23 + 56) = v24;

  sub_17654(v25);

  v26 = sub_3699A0();
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = *(v26 + 88);
  *(v26 + 88) = sub_36DA28;
  *(v26 + 96) = v27;

  sub_17654(v28);
}

void sub_36B864()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*&stru_518.segname[(swift_isaMask & *Strong) + 16])();
  }
}

void sub_36B8F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*&stru_518.segname[(swift_isaMask & *Strong) + 16])();
  }
}

void sub_36B97C(void *a1)
{
  v1 = a1;
  sub_36B400();
}

void sub_36B9C4(char a1)
{
  v3 = type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MusicVideosViewController();
  v9.receiver = v1;
  v9.super_class = v6;
  objc_msgSendSuper2(&v9, "viewDidAppear:", a1 & 1);
  if (!*&v1[qword_E003C0])
  {
    v7 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v8 = MetricsEvent.Page.libraryMusicVideosList.unsafeMutableAddressor();
    sub_141658(v8, v5, type metadata accessor for MetricsEvent.Page);
    (*(&stru_68.reloff + (swift_isaMask & *v7)))(v5, 0, 0, 0, 0, 0);
    sub_1416C0(v5, type metadata accessor for MetricsEvent.Page);
  }
}

void sub_36BB04(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_36B9C4(a3);
}

void sub_36BB58()
{
  v1 = (*&stru_518.segname[(swift_isaMask & *v0) + 8])();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4[4] = sub_36D634;
  v4[5] = v2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_151E0;
  v4[3] = &block_descriptor_112;
  v3 = _Block_copy(v4);

  [v1 performWithResponseHandler:v3];
  _Block_release(v3);
}

uint64_t sub_36BC74(void *a1, uint64_t a2, uint64_t a3)
{
  sub_13C80(0, &qword_DE8ED0);
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a1;
  v6 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_465C4, v5);
}

void sub_36BD18(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for MusicVideosViewController();
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, "music_viewInheritedLayoutInsetsDidChange");
  [v1 loadViewIfNeeded];
  v2 = *&v1[qword_DFE2F8];
  if (v2)
  {
    v3 = [v2 collectionViewLayout];
    type metadata accessor for BrowseCollectionViewFlowLayout();
    v4 = swift_dynamicCastClassUnconditional();
    sub_36A448(v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_36BDD8(void *a1)
{
  v68 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  __chkstk_darwin(v68);
  v71 = v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB3820();
  v76 = *(v4 - 8);
  v77 = v4;
  v5 = __chkstk_darwin(v4);
  v82 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v75 = v67 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v67 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1D10);
  __chkstk_darwin(v14 - 8);
  v16 = v67 - v15;
  v17 = type metadata accessor for MusicVideosViewController();
  v91.receiver = v1;
  v91.super_class = v17;
  objc_msgSendSuper2(&v91, "traitCollectionDidChange:", a1);
  v83 = v1;
  v18 = [v1 traitCollection];
  if (v18)
  {
    v19 = v18;
    if (a1)
    {
      sub_13C80(0, &qword_E00AB0);
      v20 = a1;
      v21 = sub_ABA790();

      if (v21)
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

  v22 = v83;
  [v83 loadViewIfNeeded];
  v23 = qword_DFE2F8;
  v24 = *&v22[qword_DFE2F8];
  if (!v24)
  {
    goto LABEL_44;
  }

  v25 = [v24 collectionViewLayout];
  type metadata accessor for BrowseCollectionViewFlowLayout();
  v26 = swift_dynamicCastClass();
  if (!v26)
  {

    return;
  }

  v67[0] = v25;
  v27 = v83;
  sub_36A448(v26);
  [v27 loadViewIfNeeded];
  v28 = *&v27[v23];
  if (!v28)
  {
    goto LABEL_45;
  }

  v29 = sub_AB92A0();
  v31 = v30;
  v32 = v28;
  v33 = UICollectionView.visibleSupplementaryElements(of:)(v29, v31);
  v73 = v34;
  v74 = v35;

  v36 = 0;
  v37 = *(v33 + 16);
  v78 = qword_DFE2F0;
  v72 = v76 + 16;
  v79 = (v76 + 48);
  v80 = (v76 + 56);
  v38 = (v76 + 32);
  v84 = (v76 + 8);
  v39 = v82;
  v40 = v77;
  v81 = v33;
  if (v37)
  {
    goto LABEL_14;
  }

LABEL_17:
  v41 = 1;
  for (i = v37; ; i = v36 + 1)
  {
    v42 = 1;
    (*v80)(v13, v41, 1, v40);
    v43 = v13;
    sub_1766C(v13, v11);
    if ((*v79)(v11, 1, v40) != 1)
    {
      v44 = v75;
      (*v38)(v75, v11, v40);
      v73(v44);
      v39 = v82;
      (*v84)(v44, v40);
      v42 = 0;
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1D20);
    (*(*(v45 - 8) + 56))(v16, v42, 1, v45);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1D20);
    if ((*(*(v46 - 8) + 48))(v16, 1, v46) == 1)
    {

      return;
    }

    v47 = *&v16[*(v46 + 48)];
    (*v38)(v39, v16, v40);
    v48 = *&v83[v78];
    if (!v48)
    {
      (*v84)(v39, v40);

      v36 = i;
      v33 = v81;
      if (i == v37)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    v49 = v81;
    v50 = [v48 results];
    if (!v50)
    {
      goto LABEL_43;
    }

    v51 = v50;
    v52 = v39;
    v53 = [v50 sectionAtIndex:IndexPath.safeSection.getter()];

    if (!v53)
    {
      v40 = v77;
      (*v84)(v52, v77);

      v39 = v52;
      goto LABEL_37;
    }

    v90 = v53;
    if ((swift_dynamicCast() & 1) == 0)
    {
      v39 = v82;
      v40 = v77;
      (*v84)(v82, v77);
LABEL_34:

      goto LABEL_37;
    }

    v55 = v86;
    v54 = v87;
    v56 = HIBYTE(v87) & 0xF;
    if ((v87 & 0x2000000000000000) == 0)
    {
      v56 = v86 & 0xFFFFFFFFFFFFLL;
    }

    v39 = v82;
    if (!v56)
    {
      v65 = v77;
      (*v84)(v82, v77);
      v40 = v65;

      goto LABEL_34;
    }

    if (v47)
    {
      type metadata accessor for CollectionViewSection.SectionHeaderView(0);
      v57 = swift_dynamicCastClass();
      if (v57)
      {
        v70 = v57;
        v58 = [objc_opt_self() clearColor];
        [v70 setBackgroundColor:v58];

        v59 = [v83 traitCollection];
        sub_E2C18(v55, v54, v59, v71);

        v60 = OBJC_IVAR____TtCV16MusicApplication21CollectionViewSection17SectionHeaderView_contentConfiguration;
        v61 = v70;
        swift_beginAccess();
        sub_140EBC(v71, v61 + v60);
        swift_endAccess();
        v69 = sub_E34F8();
        v67[2] = v62;
        v67[1] = swift_getObjectType();
        v88 = v68;
        v89 = sub_140F20();
        v63 = __swift_allocate_boxed_opaque_existential_0(&v86);
        sub_141658(v61 + v60, v63, type metadata accessor for CollectionViewSection.ContentConfiguration);
        sub_AB4C70();
        sub_1416C0(v71, type metadata accessor for CollectionViewSection.ContentConfiguration);
        v64 = v77;
        (*v84)(v82, v77);
        v40 = v64;

        v39 = v82;
        goto LABEL_37;
      }
    }

    v66 = v77;
    (*v84)(v39, v77);
    v40 = v66;

LABEL_37:
    v13 = v43;
    v33 = v49;
    v36 = i;
    if (i == v37)
    {
      goto LABEL_17;
    }

LABEL_14:
    if ((v36 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v36 >= *(v33 + 16))
    {
      goto LABEL_42;
    }

    (*(v76 + 16))(v13, v33 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v36, v40);
    v41 = 0;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

void sub_36C6F0(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_36BDD8(a3);
}

void sub_36C75C(void *a1, uint64_t a2, void *a3, void *a4)
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

double sub_36C898(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  sub_36D694(v8, a5);
  v12 = v11;

  return v12;
}

void sub_36C918(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for PlaybackIntentDescriptor(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = sub_AB3820();
    (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
    sub_369B94(v7);
    sub_12E1C(v4, &unk_DE8E20);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_12E1C(v7, &unk_DEA510);
    }

    else
    {
      v15 = sub_140E58(v7, v11);
      v16 = PlaybackIntentDescriptor.intent.getter(v15);
      [v16 setShuffleMode:a1];

      v18 = PlaybackIntentDescriptor.intent.getter(v17);
      [v18 setRepeatMode:0];

      sub_37D3DC(0);
      sub_1416C0(v11, type metadata accessor for PlaybackIntentDescriptor);
    }
  }
}

char *sub_36CBAC(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB92A0();
  v15 = v14;
  sub_AB3790();
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a1;
  v20 = sub_3690E8(v16, v13, v15, v12);

  (*(v10 + 8))(v12, v9);

  return v20;
}

double sub_36CD0C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = [v5 traitCollection];
  [v4 bounds];
  v7 = [objc_opt_self() defaultMetrics];
  sub_AB9EF0();
  v9 = v8;

  return v9;
}

void sub_36CE2C()
{

  v1 = *(v0 + qword_E003E8);
}

id sub_36CEAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicVideosViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_36CEE4(uint64_t a1)
{

  v2 = *(a1 + qword_E003E8);
}

uint64_t type metadata accessor for MusicVideosViewController()
{
  result = qword_E00418;
  if (!qword_E00418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_36D138()
{
  v0 = [objc_allocWithZone(type metadata accessor for BrowseCollectionViewFlowLayout()) init];
  sub_36A448(v0);
  return v0;
}

uint64_t sub_36D1A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for PlaybackIntentDescriptor(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB3820();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v4, a1, v12);
  (*(v13 + 56))(v4, 0, 1, v12);
  sub_369B94(v7);
  sub_12E1C(v4, &unk_DE8E20);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_12E1C(v7, &unk_DEA510);
  }

  sub_140E58(v7, v11);
  sub_37D3DC(0);
  return sub_1416C0(v11, type metadata accessor for PlaybackIntentDescriptor);
}

uint64_t sub_36D400(uint64_t a1, id a2)
{
  v4 = [a2 title];
  if (v4)
  {
    v5 = v4;
    v6 = sub_AB92A0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = (a1 + OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_title);
  v10 = *(a1 + OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_title);
  v11 = *(a1 + OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_title + 8);
  *v9 = v6;
  v9[1] = v8;
  sub_171ED4(v10, v11);

  v12 = [a2 artist];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 name];
    if (v14)
    {
      v15 = v14;
      v16 = sub_AB92A0();
      v18 = v17;

      goto LABEL_9;
    }
  }

  v16 = 0;
  v18 = 0xE000000000000000;
LABEL_9:
  v19 = (a1 + OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_artistName);
  v20 = *(a1 + OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_artistName);
  v21 = *(a1 + OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_artistName + 8);
  *v19 = v16;
  v19[1] = v18;
  sub_17217C(v20, v21);

  v31[3] = sub_13C80(0, &unk_DE8EB0);
  v31[4] = &off_D179F8;
  v31[0] = a2;
  sub_140D18(v31, v28);
  v22 = v29;
  if (v29)
  {
    v23 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v24 = a2;
    v25 = sub_4CAA30(&off_CEFDE8, v22, v23);
    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  else
  {
    v26 = a2;
    sub_12E1C(v28, &unk_DE9C60);
    v25 = _swiftEmptyArrayStorage;
  }

  sub_1783BC(v25);

  return sub_12E1C(v31, &unk_DE9C60);
}

uint64_t sub_36D5FC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_112(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_36D654()
{

  return swift_deallocObject();
}

void sub_36D694(void *a1, uint64_t a2)
{
  v4 = *&v2[qword_DFE2F0];
  if (v4)
  {
    v6 = [v4 results];
    if (v6)
    {
      v7 = v6;
      if ([v6 numberOfSections] >= 2 && (objc_msgSend(v7, "sectionAtIndex:", a2), (swift_dynamicCast() & 1) != 0))
      {
        v8 = qword_E003E8;
        v9 = *&v2[qword_E003E8];
        if (v9)
        {
          v10 = *&v2[qword_E003E8];
LABEL_11:
          v14 = v9;
          sub_36A900(v10, v20, v21);
          [a1 bounds];
          v16 = v15;
          v18 = v17;
          v19 = sub_E34F8();
          [v19 sizeThatFits:{v16, v18}];

          return;
        }

        v10 = [objc_allocWithZone(type metadata accessor for CollectionViewSection.SectionHeaderView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
        [v10 setHidden:1];
        [v10 setUserInteractionEnabled:0];
        v11 = [v2 view];
        if (v11)
        {
          v12 = v11;
          [v11 addSubview:v10];

          v13 = *&v2[v8];
          *&v2[v8] = v10;

          v9 = 0;
          goto LABEL_11;
        }

        __break(1u);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_36D8BC()
{

  return swift_deallocObject();
}

void sub_36D918()
{
  *(v0 + qword_E003C8) = 0;
  *(v0 + qword_E003D0) = 0;
  *(v0 + qword_E003D8) = 0;
  *(v0 + qword_E003E0) = 0;
  *(v0 + qword_E003E8) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_36D9E0()
{

  return swift_deallocObject();
}

char *sub_36DA2C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC16MusicApplication27SocialOnboardingNetworkCell_networkStackView;
  type metadata accessor for SocialOnboardingNetworkStackView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v18.receiver = v4;
  v18.super_class = type metadata accessor for SocialOnboardingNetworkCell();
  v10 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  v11 = objc_allocWithZone(UIView);
  v12 = v10;
  v13 = [v11 init];
  v14 = [objc_opt_self() clearColor];
  [v13 setBackgroundColor:v14];

  [v12 setSelectedBackgroundView:v13];
  v15 = [v12 contentView];
  [v15 addSubview:*&v12[OBJC_IVAR____TtC16MusicApplication27SocialOnboardingNetworkCell_networkStackView]];

  v16 = [v12 contentView];
  if (qword_DE6AD8 != -1)
  {
    swift_once();
  }

  [v16 music_setLayoutInsets:{*&qword_E00AB8, *&qword_E00AC0, *&qword_E00AC8, *&qword_E00AD0}];

  return v12;
}

id sub_36DDA8()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for SocialOnboardingNetworkCell();
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v1 = [v0 contentView];
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  [v0 effectiveUserInterfaceLayoutDirection];
  v10 = [v0 contentView];
  [v10 music_inheritedLayoutInsets];
  v12 = v11;
  v14 = v13;

  UIEdgeInsetsInsetRect(v3, v5, v7, v9, v12, v14);
  v15 = *&v0[OBJC_IVAR____TtC16MusicApplication27SocialOnboardingNetworkCell_networkStackView];
  sub_ABA490();
  return [v15 setFrame:?];
}

double sub_36E004()
{
  result = -1.0;
  qword_E00AB8 = 0x4024000000000000;
  qword_E00AC0 = 0xBFF0000000000000;
  qword_E00AC8 = 0x4024000000000000;
  qword_E00AD0 = 0xBFF0000000000000;
  return result;
}

uint64_t sub_36E07C()
{
  if (qword_DE6AE0 != -1)
  {
    result = swift_once();
  }

  if (qword_DE6AD8 != -1)
  {
    return swift_once();
  }

  return result;
}

char *sub_36E128(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_title];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_artworks] = _swiftEmptyArrayStorage;
  v4[OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_isHighlighted] = 0;
  v10 = OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_backgroundView;
  *&v4[v10] = [objc_allocWithZone(UIImageView) init];
  v11 = OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_titleLabel;
  *&v4[v11] = [objc_allocWithZone(UILabel) init];
  *&v4[OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_reusableArtworkComponents] = _swiftEmptyArrayStorage;
  v31.receiver = v4;
  v31.super_class = type metadata accessor for SocialOnboardingNetworkStackView();
  v12 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  v13 = qword_DE6AE0;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  [v14 music_setLayoutInsets:{xmmword_E00AF8, *&qword_E00B08, unk_E00B10}];
  v15 = objc_opt_self();
  v16 = [v15 clearColor];
  [v14 setBackgroundColor:v16];

  v17 = OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_titleLabel;
  v18 = *&v14[OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_titleLabel];
  v19 = [v15 clearColor];
  [v18 setBackgroundColor:v19];

  [*&v14[v17] setAdjustsFontForContentSizeCategory:1];
  v20 = *&v14[v17];
  sub_13C80(0, &qword_DE6EE0);
  v21 = v20;
  v22 = sub_ABA560();
  [v21 setFont:v22];

  [*&v14[v17] setLineBreakMode:5];
  [*&v14[v17] setMinimumScaleFactor:0.7];
  [*&v14[v17] setAdjustsFontSizeToFitWidth:1];
  [*&v14[v17] setNumberOfLines:1];
  [*&v14[v17] _setTextColorFollowsTintColor:1];
  v23 = OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_backgroundView;
  [v14 addSubview:*&v14[OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_backgroundView]];
  [v14 addSubview:*&v14[v17]];
  v24 = qword_DE6CA8;
  if (v14[OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_isHighlighted] != 1)
  {
    goto LABEL_8;
  }

  if (qword_DE6CA8 != -1)
  {
    swift_once();
  }

  v25 = qword_E718E8;
  v26 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.2];
  v27 = [v25 _colorBlendedWithColor:v26 compositingFilter:kCAFilterPlusD];

  if (!v27)
  {
    __break(1u);
LABEL_8:
    if (v24 != -1)
    {
      swift_once();
    }

    v27 = qword_E718E8;
  }

  v28 = *&v14[v23];
  v29 = _sSo7UIImageC16MusicApplicationE16stretchableImage10filledWith12cornerRadiusABSgSo7UIColorC_12CoreGraphics7CGFloatVtFZ_0(v27, *&qword_E00AE8);
  [v28 setImage:v29];

  return v14;
}

uint64_t sub_36E584(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_title];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_title];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_title + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (!v7 && (sub_ABB3C0() & 1) == 0)
  {
    v8 = *&v2[OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_titleLabel];

    v9 = sub_AB9260();

    [v8 setText:v9];

    [v2 setNeedsLayout];
  }
}

void sub_36E658(char a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_isHighlighted;
  v3 = v1[OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_isHighlighted];
  v1[OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_isHighlighted] = a1;
  if (v3 != (a1 & 1))
  {
    v4 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_titleLabel];
    v5 = [v1 tintColor];
    if (!v5)
    {
      v5 = *UIColor.MusicTint.normal.unsafeMutableAddressor();
    }

    v6 = 1.0;
    if (v1[v2])
    {
      v6 = 0.5;
    }

    v7 = v5;
    v8 = [v5 colorWithAlphaComponent:v6];

    [v4 setTextColor:v8];
    if (v1[v2] == 1)
    {
      if (qword_DE6CA8 != -1)
      {
        swift_once();
      }

      v9 = qword_E718E8;
      v10 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.2];
      v11 = [v9 _colorBlendedWithColor:v10 compositingFilter:kCAFilterPlusD];

      if (!v11)
      {
        __break(1u);
        return;
      }
    }

    else
    {
      if (qword_DE6CA8 != -1)
      {
        swift_once();
      }

      v11 = qword_E718E8;
    }

    v12 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_backgroundView];
    if (qword_DE6AE0 != -1)
    {
      swift_once();
    }

    v13 = _sSo7UIImageC16MusicApplicationE16stretchableImage10filledWith12cornerRadiusABSgSo7UIColorC_12CoreGraphics7CGFloatVtFZ_0(v11, *&qword_E00AE8);
    [v12 setImage:v13];
  }
}

void sub_36E898()
{
  v74.receiver = v0;
  v74.super_class = type metadata accessor for SocialOnboardingNetworkStackView();
  objc_msgSendSuper2(&v74, "layoutSubviews");
  [v0 bounds];
  y = v3;
  v6 = v5;
  v70 = v7;
  v9 = v8;
  v10 = [v0 traitCollection];
  [v10 displayScale];

  [v0 effectiveUserInterfaceLayoutDirection];
  v56 = v0;
  [v0 music_inheritedLayoutInsets];
  v12 = v11;
  v14 = v13;
  if (qword_DE6AE0 != -1)
  {
    goto LABEL_64;
  }

LABEL_2:
  v77 = xmmword_E00AF8;
  v78 = *&qword_E00B08;
  v79 = qword_E00B18;
  v75 = xmmword_E00AD8;
  v76 = *&qword_E00AE8;
  v80.origin.x = UIEdgeInsetsInsetRect(y, v6, v70, v9, v12, v14);
  x = v80.origin.x;
  MaxX = y;
  y = v80.origin.y;
  width = v80.size.width;
  v14 = v6;
  height = v80.size.height;
  CGRectGetWidth(v80);
  sub_AB39F0();
  v20 = sub_36F140(v19);
  if (__OFSUB__(v20, 1))
  {
    __break(1u);
    goto LABEL_66;
  }

  v1 = v20;
  v68 = *(&v75 + 1);
  v69 = v75;
  v66 = v14;
  v67 = MaxX;
  v21 = *&v79;
  v65 = v9;
  v54 = *&v56[OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_titleLabel];
  [v54 sizeThatFits:{width, height}];
  v23 = v22;
  v81.origin.x = x;
  v81.origin.y = y;
  v72 = width;
  v81.size.width = width;
  v64 = height;
  v81.size.height = height;
  CGRectGetWidth(v81);
  v62 = y;
  v63 = v21;
  v52 = v23;
  y = v9;
  sub_ABA470();
  v9 = v82.origin.x;
  v24 = v82.origin.y;
  v25 = v82.size.width;
  v14 = v82.size.height;
  width = CGRectGetWidth(v82);
  v83.origin.x = v9;
  v83.origin.y = v24;
  v83.size.width = v25;
  v83.size.height = v14;
  MaxX = CGRectGetMaxX(v83);
  v53 = OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_reusableArtworkComponents;
  v73 = *&v56[OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_reusableArtworkComponents];
  v2 = *&v56[OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_artworks];
  if (v2 >> 62)
  {
LABEL_66:
    v26 = sub_ABB060();
    goto LABEL_5;
  }

  v26 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
LABEL_5:

  v27 = &selRef__authenticateReturningError_;
  v55 = v2;
  if (!v26)
  {
    goto LABEL_49;
  }

  v28 = 0;
  v6 = v64;
  v12 = v72 - (v63 + width);
  v60 = v2 & 0xFFFFFFFFFFFFFF8;
  v61 = v2 & 0xC000000000000001;
  rect_24 = v2 + 32;
  rect_8 = v1;
  rect_16 = v26;
  while (1)
  {
    if (v61)
    {
      v29 = sub_3616A0(v28, v55);
    }

    else
    {
      if (v28 >= *(v60 + 16))
      {
        goto LABEL_62;
      }

      v29 = *(rect_24 + 8 * v28);
    }

    v30 = v29;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_61;
    }

    if (v28 >= v1)
    {
      break;
    }

    *&v72 = v28 + 1;
    v2 = v73;
    if (!(v73 >> 62))
    {
      v1 = *(&dword_10 + (v73 & 0xFFFFFFFFFFFFFF8));
      if (v1)
      {
        goto LABEL_14;
      }

      goto LABEL_25;
    }

    v1 = sub_ABB060();
    if (v1)
    {
LABEL_14:
      v31 = 0;
      v32 = v73 & 0xC000000000000001;
      do
      {
        if (v32)
        {
          v33 = *(sub_3602B8(v31, v73) + 64);
          if (v33)
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (v31 >= *(&dword_10 + (v73 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_60;
          }

          v38 = *(v73 + 8 * v31 + 32);

          v33 = *(v38 + 64);
          if (v33)
          {
LABEL_17:
            sub_13C80(0, &qword_E04530);
            v34 = v30;
            v35 = v33;
            v36 = sub_ABA790();

            if (v36)
            {
              if (v32)
              {
                v2 = sub_3602B8(v31, v73);
              }

              else
              {
                if (v31 >= *(&dword_10 + (v73 & 0xFFFFFFFFFFFFFF8)))
                {
                  __break(1u);
                  goto LABEL_69;
                }

                v2 = *(v73 + 8 * v31 + 32);
              }

              sub_2E5F34(v31);

              v27 = &selRef__authenticateReturningError_;
              v40 = rect_16;
              goto LABEL_39;
            }

            v37 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              goto LABEL_59;
            }

            goto LABEL_24;
          }
        }

        v37 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
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
          swift_once();
          goto LABEL_2;
        }

LABEL_24:
        ++v31;
      }

      while (v37 != v1);
    }

LABEL_25:
    if (v73 >> 62)
    {
      v39 = sub_ABB060();
    }

    else
    {
      v39 = *(&dword_10 + (v73 & 0xFFFFFFFFFFFFFF8));
    }

    v27 = &selRef__authenticateReturningError_;
    v40 = rect_16;
    if (v39)
    {
      if ((v73 & 0xC000000000000001) != 0)
      {
        v2 = sub_3602B8(0, v73);
      }

      else
      {
        if (!*(&dword_10 + (v73 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_63;
        }

        v2 = *(v73 + 32);
      }

      sub_2E5F34(0);
    }

    else
    {
      type metadata accessor for ArtworkComponentImageView();
      v41 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      _s9ComponentCMa(0);
      swift_allocObject();
      v2 = sub_80104(v41);

      v42 = *(v2 + 80);
      v43 = *(v2 + 88);
      *(v2 + 80) = v69;
      *(v2 + 88) = v68;

      sub_75614(v42, v43);
      [v56 addSubview:*(v2 + 112)];
    }

LABEL_39:
    [*(v2 + 112) v27[266]];
    v44 = v30;
    sub_74EA4(v30);
    v84.origin.x = v63 + MaxX;
    v84.origin.y = v62;
    v84.size.width = v12;
    v84.size.height = v6;
    CGRectGetMaxX(v84);
    v14 = v67;
    v52 = v68;
    sub_ABA470();
    v9 = v85.origin.x;
    v71 = CGRectGetWidth(v85);
    sub_ABA490();
    sub_76B28(v45, v46, v47, v48);
    sub_AB9730();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    v12 = v12 - (v63 + v71);
    sub_AB97F0();

    v28 = *&v72;
    y = v65;
    v6 = v64;
    v1 = rect_8;
    if (*&v72 == v40)
    {
      goto LABEL_49;
    }
  }

LABEL_49:

  if (v73 >> 62)
  {
    v49 = sub_ABB060();
  }

  else
  {
    v49 = *(&dword_10 + (v73 & 0xFFFFFFFFFFFFFF8));
  }

  if (v49)
  {
    if (v49 >= 1)
    {
      for (i = 0; i != v49; ++i)
      {
        if ((v73 & 0xC000000000000001) != 0)
        {
          v51 = sub_3602B8(i, v73);
        }

        else
        {
          v51 = *(v73 + 8 * i + 32);
        }

        [*(v51 + 112) v27[266]];
      }

      goto LABEL_58;
    }

LABEL_69:
    __break(1u);
  }

  else
  {
LABEL_58:

    sub_199A8(_swiftEmptyArrayStorage);
    *&v56[v53] = v73;

    sub_ABA490();
    [v54 setFrame:?];
    [*&v56[OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_backgroundView] setFrame:{v67, v66, v70, v65}];
  }
}

uint64_t sub_36F140(double a1)
{
  v2 = a1 / *v1;
  if (COERCE__INT64(fabs(v2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(v2, 1))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (*v1 * v2 + v1[8] * (v2 - 1) <= a1)
  {
    return v2;
  }

  else
  {
    return v2 - 1;
  }
}

double sub_36F208(double a1, double a2)
{
  if (qword_DE6AE0 != -1)
  {
    swift_once();
  }

  sub_7FD28();
  if (sub_AB38E0())
  {
    [*(v2 + OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_titleLabel) sizeThatFits:{a1, a2, 0, *&a1}];
    if (*(v2 + OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_artworks) >> 62)
    {
      sub_ABB060();
    }
  }

  return a1;
}

double sub_36F348()
{
  __asm { FMOV            V0.2D, #22.0 }

  xmmword_E00AD8 = _Q0;
  *&qword_E00AE8 = xmmword_B0B760;
  result = 0.0;
  xmmword_E00AF8 = xmmword_B0B770;
  *&qword_E00B08 = xmmword_B0B770;
  qword_E00B18 = 0x4010000000000000;
  return result;
}

id sub_36F394(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_36F470()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_title);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_artworks) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_isHighlighted) = 0;
  v2 = OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_backgroundView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_titleLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_AE81844C619861A7126782E3B7A64D4232SocialOnboardingNetworkStackView_reusableArtworkComponents) = _swiftEmptyArrayStorage;
  sub_ABAFD0();
  __break(1u);
}

char *CuratorActivityCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication19CuratorActivityCell_title];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v11 = OBJC_IVAR____TtC16MusicApplication19CuratorActivityCell_textComponents;
  *&v4[v11] = _s16MusicApplication19CuratorActivityCellC14textComponents33_92B4383430C9FCD6B56F80ACB14131BELLAC04TextG0AELLVvpfi_0();
  v53.receiver = v4;
  v53.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v53, "initWithFrame:", a1, a2, a3, a4);
  v13 = &v12[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets];
  swift_beginAccess();
  type metadata accessor for UIEdgeInsets(0);
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v14 = &v12[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets];
  v15 = *&v12[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets + 16];
  v54 = *&v12[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets];
  v55 = v15;
  v16 = v12;
  if (sub_AB38D0())
  {
    v17 = *(v13 + 1);
    *v14 = *v13;
    *(v14 + 1) = v17;
    sub_35D498();
    [v16 setNeedsLayout];
  }

  v18 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[2];
  v22 = v18[3];
  v23 = v18[4];
  v24 = v18[5];
  v51 = v24;
  v52 = v23;
  v25 = &v16[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkPlaceholder];
  swift_beginAccess();
  v49 = *(v25 + 1);
  v50 = *v25;
  v47 = *(v25 + 3);
  v48 = *(v25 + 2);
  *v25 = v19;
  *(v25 + 1) = v20;
  *(v25 + 2) = v21;
  *(v25 + 3) = v22;
  *(v25 + 4) = v23;
  *(v25 + 5) = v24;
  v26 = v19;
  v27 = v20;
  v28 = v21;
  v29 = v22;
  v30 = v26;
  v31 = v27;
  v32 = v28;
  v33 = v29;
  sub_2F1C8(v50, v49, v48, v47);
  v34 = *&v16[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];
  v35 = *(v34 + 168);
  v54 = *(v34 + 152);
  v55 = v35;
  v56 = *(v34 + 184);
  *(v34 + 152) = v19;
  *(v34 + 160) = v20;
  *(v34 + 168) = v21;
  *(v34 + 176) = v22;
  *(v34 + 184) = v52;
  *(v34 + 192) = v51;
  v36 = v30;
  v37 = v31;
  v38 = v32;
  v39 = v33;
  v40 = v36;
  v41 = v37;
  v42 = v38;
  v43 = v39;
  sub_75948(&v54);
  sub_B2A40(&v54);

  v44 = *&v16[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];

  TextStackView.add(_:)(v45);

  return v16;
}

void CuratorActivityCell.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication19CuratorActivityCell_title);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = OBJC_IVAR____TtC16MusicApplication19CuratorActivityCell_textComponents;
  *(v0 + v2) = _s16MusicApplication19CuratorActivityCellC14textComponents33_92B4383430C9FCD6B56F80ACB14131BELLAC04TextG0AELLVvpfi_0();
  sub_ABAFD0();
  __break(1u);
}

uint64_t CuratorActivityCell.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication19CuratorActivityCell_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t CuratorActivityCell.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC16MusicApplication19CuratorActivityCell_title];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 1);
  *v5 = a1;
  *(v5 + 1) = a2;
  v8 = v6 == a1 && v7 == a2;
  if (!v8 && (sub_ABB3C0() & 1) == 0)
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication19CuratorActivityCell_textComponents];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }
}

uint64_t sub_36FBEC(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC16MusicApplication19CuratorActivityCell_title];
  swift_beginAccess();
  result = a1;
  if (*v5 != a1 || *(v5 + 1) != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v8 = *&v2[OBJC_IVAR____TtC16MusicApplication19CuratorActivityCell_textComponents];

      v9 = String.trim()();

      swift_beginAccess();
      v8[7] = v9;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

void (*CuratorActivityCell.title.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MusicApplication19CuratorActivityCell_title;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_36FD80;
}

void sub_36FD80(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 32);
  v7 = (v5 + v4);
  v9 = *v7;
  v8 = v7[1];
  *v7 = v3;
  v7[1] = v6;
  if (a2)
  {

    sub_36FBEC(v9, v8);
  }

  else
  {
    sub_36FBEC(v9, v8);
  }

  free(v2);
}

double static CuratorActivityCell.preferredHeight(traitCollection:width:)(void *a1, double a2)
{
  v4 = _s16MusicApplication19CuratorActivityCellC14textComponents33_92B4383430C9FCD6B56F80ACB14131BELLAC04TextG0AELLVvpfi_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF82B0;
  *(inited + 32) = v4;

  v6 = sub_2F48A4(inited, a1, 0, 0);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v6 + a2 + 0.0;
}

uint64_t sub_36FEF4()
{
}

uint64_t _s16MusicApplication19CuratorActivityCellC14textComponents33_92B4383430C9FCD6B56F80ACB14131BELLAC04TextG0AELLVvpfi_0()
{
  v0 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v1 = qword_E718D8;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  *&v11[0] = v1;
  *(&v11[0] + 1) = v4;
  v11[1] = xmmword_AF82D0;
  v12 = 0;
  v13 = 0;
  v14 = v0;
  v15 = 2;
  v16 = xmmword_AF7C30;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v11);
  v17[0] = v1;
  v17[1] = v4;
  v18 = xmmword_AF82D0;
  v19 = 0;
  v20 = 0;
  v21 = v0;
  v22 = 2;
  v23 = xmmword_AF7C30;
  v6 = v3;
  v7 = v4;
  v8 = v0;
  sub_2F118(v11, v10);
  sub_2F174(v17);

  return v5;
}