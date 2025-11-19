void sub_FD198(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v3 - 8);
  v25 = &v24 - v4;
  v5 = sub_303398();
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_3031C8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v24 - v16;
  v18 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_episodeInfoView);
  if (!v18)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = v18;
  sub_EB910(a1, 0);
  sub_EBC58();
  sub_EBD88();
  sub_EBE88(a1);
  sub_309A78();
  if (swift_dynamicCastClass())
  {

    sub_EC2B0();
  }

  else
  {
    sub_307D98();
    if ((sub_303D78() & 1) == 0)
    {
      v20 = sub_307D98();
      sub_EC3D8(v20);
    }
  }

  EpisodeInfoView.beginUpdates()();

  if (!*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_playControlsPresenter))
  {
    goto LABEL_12;
  }

  sub_E7674(a1);

  sub_307DA8();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_EB68(v10, &unk_402FF0);
    return;
  }

  sub_6D85C(v10, v17);
  v21 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_internalArtworkView);
  if (v21)
  {
    sub_FE64C(v17, v14, &type metadata accessor for ArtworkModel);
    v22 = sub_303DF8();
    (*(*(v22 - 8) + 56))(v25, 1, 1, v22);
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    v23 = v21;
    sub_303348();
    sub_21C4B8(v7);

    (*(v26 + 8))(v7, v27);
    sub_FE6B4(v17, &type metadata accessor for ArtworkModel);
    return;
  }

LABEL_13:
  __break(1u);
}

id sub_FD644()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiShowEpisodeCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MultiShowEpisodeCell()
{
  result = qword_402E68;
  if (!qword_402E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_FD7AC()
{
  sub_FD86C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_FD86C()
{
  if (!qword_402E78)
  {
    sub_307048();
    v0 = sub_30D3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_402E78);
    }
  }
}

id sub_FD8DC(uint64_t a1, uint64_t a2, void *a3)
{
  result = *(a1 + *a3);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_FD8F0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_302AB8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402EA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  __chkstk_darwin(v18);
  v20 = &v28 - v19;
  if (sub_FC4F4())
  {

    return sub_307198();
  }

  else
  {
    v32 = a2;
    v33 = v7;
    v34 = v6;
    v35 = a3;
    v22 = sub_307048();
    v23 = *(v22 - 8);
    v24 = *(v23 + 16);
    v30 = v23 + 16;
    v31 = v24;
    v24(v20, a1, v22);
    v29 = *(v23 + 56);
    v29(v20, 0, 1, v22);
    sub_FE22C(v20, v17);
    v28 = *(v23 + 48);
    if (v28(v17, 1, v22) == 1)
    {
      sub_EB68(v20, &qword_402EA0);
      sub_EB68(v17, &qword_402EA0);
    }

    else
    {
      sub_FA6B0();
      sub_EB68(v20, &qword_402EA0);
      (*(v23 + 8))(v17, v22);
    }

    v31(v14, a1, v22);
    v29(v14, 0, 1, v22);
    sub_FE22C(v14, v11);
    if (v28(v11, 1, v22) == 1)
    {
      sub_EB68(v14, &qword_402EA0);
      sub_EB68(v11, &qword_402EA0);
    }

    else
    {
      sub_FA6B0();
      sub_EB68(v14, &qword_402EA0);
      (*(v23 + 8))(v11, v22);
    }

    v25 = v34;
    v37 = 1;
    _s23ShelfKitCollectionViews15EpisodeInfoViewC15estimatedHeight3for05traitC012CoreGraphics7CGFloatVAA0efG5StyleO_So07UITraitC0CtFZ_0(&v37, v32);
    v26 = v36;
    sub_3028B8();
    v27 = sub_302A08();
    (*(v33 + 8))(v26, v25);
    [v27 size];

    return sub_307198();
  }
}

uint64_t sub_FDE3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return TypedShelfUIKitCell.apply(model:)(a1, a2, WitnessTable);
}

double sub_FDEC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_FE3C0(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

id sub_FDF44()
{
  result = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_internalArtworkView);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_FDF70()
{
  v0 = sub_303DF8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3030E8();
  if ((*(v1 + 88))(v3, v0) == enum case for CropCode.boundingBox(_:))
  {
    return 6;
  }

  sub_3030C8();
  v5 = sub_303118();
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_FE1E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_FE22C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402EA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_FE29C()
{
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_objectGraph) = 0;
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_presentation;
  v2 = sub_307048();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_layoutGuide) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_episodeInfoView) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_playControlsPresenter) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_playControlsView) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_internalArtworkView) = 0;
  v3 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_imageProvider;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_playStateSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_displayScale) = 0x3FF0000000000000;
  sub_30D648();
  __break(1u);
}

uint64_t sub_FE3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402EA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  result = sub_FC4F4();
  if (result)
  {
    v11 = 0uLL;
    v12 = -1;
    v13 = 0uLL;
  }

  else
  {
    v14 = sub_307048();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v9, a1, v14);
    (*(v15 + 56))(v9, 0, 1, v14);
    sub_FE22C(v9, v6);
    if ((*(v15 + 48))(v6, 1, v14) == 1)
    {
      sub_EB68(v9, &qword_402EA0);
      sub_EB68(v6, &qword_402EA0);
    }

    else
    {
      sub_FA6B0();
      sub_EB68(v9, &qword_402EA0);
      (*(v15 + 8))(v6, v14);
    }

    result = sub_30C6E8();
    *(&v11 + 1) = v16;
    *(&v13 + 1) = v17;
    v12 = 1;
  }

  *a2 = v11;
  *(a2 + 16) = v13;
  *(a2 + 32) = v12;
  return result;
}

uint64_t sub_FE5DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402EA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_FE64C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_FE6B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_FE714()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_FE754()
{
  result = qword_402470;
  if (!qword_402470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_402470);
  }

  return result;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_FE7E8()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews35PrototypeUpNextMultiShowEpisodeCell____lazy_storage___infoButton;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews35PrototypeUpNextMultiShowEpisodeCell____lazy_storage___infoButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews35PrototypeUpNextMultiShowEpisodeCell____lazy_storage___infoButton);
  }

  else
  {
    v4 = sub_FE848();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_FE848()
{
  v0 = [objc_opt_self() buttonWithType:1];
  sub_124C4(0, &qword_3FFD48);
  v1 = v0;
  v2 = sub_30D038();
  if (!v2)
  {
    v2 = [objc_opt_self() systemBackgroundColor];
  }

  v3 = v2;
  v4 = sub_30D038();
  if (!v4)
  {
    v4 = [objc_opt_self() systemBackgroundColor];
  }

  v5 = v4;
  v6 = sub_30CFB8();

  [v1 setBackgroundColor:v6];
  [v1 setFrame:{0.0, 0.0, 200.0, 200.0}];
  [v1 _setCornerRadius:17.0];

  return v1;
}

void sub_FEA8C(uint64_t a1, objc_class *a2)
{
  sub_FC828(a1, a2);

  sub_FF11C();
}

uint64_t sub_FEAB4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF760);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  sub_FD198(a1);
  sub_309A78();
  result = swift_dynamicCastClass();
  if (result)
  {

    sub_309478();
    v8 = sub_303AD8();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v6, 1, v8) == 1)
    {

      return sub_8AC08(v6);
    }

    else if ((*(v9 + 88))(v6, v8) == enum case for EpisodeListenNowReason.prototypedUpNextScore(_:))
    {
      (*(v9 + 96))(v6, v8);
      v10 = sub_309A58();
      v11 = (v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews35PrototypeUpNextMultiShowEpisodeCell_podcastUuid);
      *v11 = v10;
      v11[1] = v12;

      v13 = sub_FE7E8();
      sub_30C4B8();
      v14 = sub_30C098();

      [v13 setTitle:v14 forState:0];

      v15 = [*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews35PrototypeUpNextMultiShowEpisodeCell____lazy_storage___infoButton) titleLabel];
      if (v15)
      {
        v16 = v15;
        v17 = [objc_opt_self() systemFontOfSize:10.0];
        [v16 setFont:v17];
      }
    }

    else
    {

      return (*(v9 + 8))(v6, v8);
    }
  }

  return result;
}

void sub_FED44()
{
  v1 = v0;
  v2 = sub_3022E8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews35PrototypeUpNextMultiShowEpisodeCell_podcastUuid];
  v7 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews35PrototypeUpNextMultiShowEpisodeCell_podcastUuid + 8];
  if (v7)
  {
    v8 = *v6;

    v9 = sub_19DBA8(v8, v7);
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v26[4] = &type metadata for PrototypeUpNextSingleShowController;
    v26[5] = &off_3BD3B0;
    v16 = swift_allocObject();
    v26[1] = v16;
    *(v16 + 16) = v9;
    *(v16 + 24) = v11;
    *(v16 + 32) = v13 & 1;
    *(v16 + 40) = v15;
    v17 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_402F08));
    v18 = v15;

    v19 = sub_305C58();
    [v19 setModalPresentationStyle:2];
    v20 = [v19 popoverPresentationController];
    if (v20)
    {
      v21 = v20;
      v22 = sub_FE7E8();
      [v21 setSourceItem:v22];
    }

    v23 = sub_30CE68();
    if (v23)
    {
      v24 = v23;
      v25 = v1;
      sub_302298();
      sub_3022C8();

      (*(v3 + 8))(v5, v2);
    }

    else
    {
    }
  }
}

uint64_t sub_FEFE8()
{
}

uint64_t type metadata accessor for PrototypeUpNextMultiShowEpisodeCell()
{
  result = qword_402EF8;
  if (!qword_402EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_FF11C()
{
  v1 = sub_FE7E8();
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_31FDA0;
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews35PrototypeUpNextMultiShowEpisodeCell____lazy_storage___infoButton;
  v4 = [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews35PrototypeUpNextMultiShowEpisodeCell____lazy_storage___infoButton] trailingAnchor];
  v5 = [v0 contentView];
  v6 = [v5 trailingAnchor];

  v7 = [v4 constraintEqualToAnchor:v6 constant:-7.0];
  *(v2 + 32) = v7;
  v8 = [*&v0[v3] topAnchor];
  v9 = [v0 contentView];
  v10 = [v9 topAnchor];

  v11 = [v8 constraintEqualToAnchor:v10 constant:6.0];
  *(v2 + 40) = v11;
  v12 = [*&v0[v3] heightAnchor];
  v13 = [v12 constraintEqualToConstant:35.0];

  *(v2 + 48) = v13;
  v14 = [*&v0[v3] widthAnchor];
  v15 = [v14 constraintEqualToConstant:35.0];

  *(v2 + 56) = v15;
  v16 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_episodeInfoView];
  if (v16)
  {
    v17 = objc_opt_self();
    v18 = [v16 trailingAnchor];
    v19 = [*&v0[v3] leadingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];

    *(v2 + 64) = v20;
    sub_124C4(0, &qword_403000);
    isa = sub_30C358().super.isa;

    [v17 activateConstraints:isa];

    v22 = *&v0[v3];

    [v22 addTarget:v0 action:"buttonPressed" forControlEvents:0x2000];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_FF430()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_FF470()
{
  v0 = type metadata accessor for PlayControlsIconsSet(0);
  __swift_allocate_value_buffer(v0, qword_402F10);
  v1 = __swift_project_value_buffer(v0, qword_402F10);
  if (qword_3FAA20 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_429128);
  return sub_FE64C(v2, v1, type metadata accessor for PlayControlsIconsSet);
}

double sub_FF514()
{
  result = -6.0;
  xmmword_402F28 = xmmword_3214F0;
  *&qword_402F38 = vdupq_n_s64(0xC044000000000000);
  return result;
}

id sub_FF534(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoView] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoViewLayoutGuide] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsPresenter] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsView] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_artworkView] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playStateSubscription] = 0;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_shouldRenderEpisodeArtwork] = 0;
  v10 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playAction];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_objectGraph] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_displayScale] = 0x3FF0000000000000;
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v12 = [v11 contentView];
  [v12 layoutMargins];
  [v12 setLayoutMargins:20.0];

  v13 = [v11 contentView];
  [v13 layoutMargins];
  [v13 setLayoutMargins:?];

  return v11;
}

void sub_FF724()
{
  v1 = v0;
  v2 = type metadata accessor for PlayControlsIconsSet(0);
  __chkstk_darwin(v2);
  v4 = &v41[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoView;
  if (!*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoView) || !*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsView) || !*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_artworkView))
  {
    v6 = [objc_allocWithZone(type metadata accessor for CachingArtworkView()) init];
    v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_artworkView;
    v8 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_artworkView);
    *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_artworkView) = v6;
    v9 = v6;

    if (v9)
    {
      v10 = v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style];
      v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style] = 0;
      v41[0] = v10;
      sub_2DE78(v41);

      v11 = *(v1 + v7);
      if (v11)
      {
        v12 = qword_3FAF28;
        v13 = v11;
        if (v12 != -1)
        {
          swift_once();
        }

        v14 = qword_42AC88;
        v15 = qword_42ACA0;
        v16 = &v13[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
        v17 = *&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
        v18 = *algn_42AC90;
        *v16 = qword_42AC88;
        *(v16 + 8) = v18;
        *(v16 + 3) = v15;
        v19 = v14;

        sub_2D294();
        if (qword_3FAA78 != -1)
        {
          swift_once();
        }

        v20 = __swift_project_value_buffer(v2, qword_402F10);
        sub_FE64C(v20, v4, type metadata accessor for PlayControlsIconsSet);
        type metadata accessor for PlayControlsPresenter(0);
        v21 = swift_allocObject();
        *(v21 + 24) = 0;
        swift_unknownObjectWeakInit();
        *(v21 + 40) = 0;
        *(v21 + 48) = 0;
        sub_FE64C(v4, v21 + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsPresenter_iconsSet, type metadata accessor for PlayControlsIconsSet);
        type metadata accessor for EpisodeStateControlsPresenter();
        swift_allocObject();

        v23 = sub_E53F8(v22);

        sub_FE6B4(v4, type metadata accessor for PlayControlsIconsSet);
        *(v21 + 32) = v23;
        *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsPresenter) = v21;

        if (qword_3FAA80 != -1)
        {
          swift_once();
        }

        v24 = xmmword_402F28;
        v25 = *&qword_402F38;
        v26 = unk_402F40;
        v27 = objc_allocWithZone(type metadata accessor for PlayControlsStackView());
        v28 = sub_E7744(v21, *&v24, *(&v24 + 1), v25, v26);
        v29 = OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsView;
        v30 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsView);
        *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsView) = v28;

        v41[0] = 0;
        v31 = objc_allocWithZone(type metadata accessor for EpisodeInfoView());
        v32 = sub_E961C(v41, &_swiftEmptySetSingleton);
        v33 = *(v1 + v5);
        *(v1 + v5) = v32;

        v34 = *(v1 + v5);
        if (v34)
        {
          v35 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_playStatePublisher;
          swift_beginAccess();
          v40 = *(v34 + v35);
          swift_allocObject();
          swift_unknownObjectWeakInit();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403010);
          sub_FE754();
          v36 = sub_304F58();

          *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playStateSubscription) = v36;

          v37 = *(v1 + v7);
          if (v37)
          {
            [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
            v38 = *(v1 + v5);
            if (v38)
            {
              [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
              v39 = *(v1 + v29);
              if (v39)
              {
                [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
                return;
              }

LABEL_23:
              __break(1u);
              return;
            }

LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }
}

uint64_t sub_FFBB8(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_FE7B8;
  *(v4 + 24) = a2;
  v7[4] = sub_293C0;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_19D688;
  v7[3] = &block_descriptor_24;
  v5 = _Block_copy(v7);

  [v3 performWithoutAnimation:v5];
  _Block_release(v5);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

void sub_FFD04()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_artworkView;
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_artworkView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_30;
  }

  v3 = v0;
  [v2 removeFromSuperview];
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoView;
  v5 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoView];
  if (!v5)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v5 removeFromSuperview];
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsView;
  v7 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsView];
  if (!v7)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v7 removeFromSuperview];
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoViewLayoutGuide;
  if (*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoViewLayoutGuide])
  {
    [v0 removeLayoutGuide:?];
    v9 = *&v0[v8];
    *&v0[v8] = 0;
  }

  v10 = [v0 contentView];
  if (!*&v0[v1])
  {
    goto LABEL_32;
  }

  v11 = v10;
  [v10 addSubview:?];

  v12 = [v3 contentView];
  if (!*&v3[v4])
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v13 = v12;
  [v12 addSubview:?];

  v14 = [v3 contentView];
  if (!*&v3[v6])
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v15 = v14;
  [v14 addSubview:?];

  v16 = [objc_allocWithZone(UILayoutGuide) init];
  v17 = [v3 contentView];
  [v17 addLayoutGuide:v16];

  v18 = *&v3[v8];
  *&v3[v8] = v16;
  v19 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_320DE0;
  v21 = [v19 topAnchor];
  v22 = [v3 contentView];
  v23 = [v22 layoutMarginsGuide];

  v24 = [v23 topAnchor];
  v25 = [v21 constraintEqualToAnchor:v24];

  *(v20 + 32) = v25;
  v26 = [v19 bottomAnchor];
  v27 = *&v3[v1];
  if (!v27)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v28 = [v27 bottomAnchor];
  v29 = [v26 constraintGreaterThanOrEqualToAnchor:v28];

  *(v20 + 40) = v29;
  v30 = [v19 bottomAnchor];
  v31 = *&v3[v1];
  if (!v31)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v32 = [v31 bottomAnchor];
  v33 = [v30 constraintEqualToAnchor:v32];

  LODWORD(v34.rawValue) = 1112014848;
  isa = sub_30CA28(v34).super.isa;

  *(v20 + 48) = isa;
  v36 = *&v3[v4];
  if (!v36)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v37 = [v36 centerYAnchor];
  v38 = [v19 centerYAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  *(v20 + 56) = v39;
  v40 = *&v3[v4];
  if (!v40)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v41 = [v40 heightAnchor];
  v42 = [v19 heightAnchor];
  v43 = [v41 constraintLessThanOrEqualToAnchor:v42];

  *(v20 + 64) = v43;
  v44 = *&v3[v4];
  if (!v44)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v45 = [v44 leadingAnchor];
  v46 = [v3 contentView];
  v47 = [v46 layoutMarginsGuide];

  v48 = [v47 leadingAnchor];
  v49 = [v45 constraintEqualToAnchor:v48];

  *(v20 + 72) = v49;
  v50 = *&v3[v1];
  if (!v50)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v51 = [v50 leadingAnchor];
  v52 = *&v3[v4];
  if (!v52)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v53 = [v52 trailingAnchor];
  v54 = [v51 constraintEqualToAnchor:v53 constant:10.0];

  *(v20 + 80) = v54;
  v55 = *&v3[v1];
  if (!v55)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v56 = [v55 topAnchor];
  v57 = [v3 contentView];
  v58 = [v57 layoutMarginsGuide];

  v59 = [v58 topAnchor];
  v60 = [v56 constraintEqualToAnchor:v59 constant:4.0];

  *(v20 + 88) = v60;
  v61 = [v3 contentView];
  v62 = [v61 layoutMarginsGuide];

  v63 = [v62 trailingAnchor];
  v64 = *&v3[v1];
  if (!v64)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v65 = [v64 trailingAnchor];
  v66 = [v63 constraintEqualToAnchor:v65];

  *(v20 + 96) = v66;
  v67 = *&v3[v1];
  if (!v67)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v68 = [v67 heightAnchor];
  v69 = [v68 constraintEqualToConstant:90.0];

  *(v20 + 104) = v69;
  v70 = *&v3[v1];
  if (!v70)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v71 = [v70 widthAnchor];
  v72 = [v71 constraintEqualToConstant:90.0];

  *(v20 + 112) = v72;
  v73 = *&v3[v6];
  if (!v73)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v74 = [v73 topAnchor];
  v75 = *&v3[v1];
  if (!v75)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v76 = [v75 bottomAnchor];
  v77 = [v74 constraintGreaterThanOrEqualToAnchor:v76 constant:6.0];

  *(v20 + 120) = v77;
  v78 = *&v3[v6];
  if (!v78)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v79 = [v78 topAnchor];
  v80 = [v19 bottomAnchor];
  v81 = [v79 constraintGreaterThanOrEqualToAnchor:v80 constant:6.0];

  *(v20 + 128) = v81;
  v82 = *&v3[v6];
  if (!v82)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v83 = [v82 leadingAnchor];
  v84 = [v3 contentView];
  v85 = [v84 layoutMarginsGuide];

  v86 = [v85 leadingAnchor];
  v87 = [v83 constraintEqualToAnchor:v86 constant:0.0];

  *(v20 + 136) = v87;
  v88 = [v3 contentView];
  v89 = [v88 layoutMarginsGuide];

  v90 = [v89 trailingAnchor];
  v91 = *&v3[v6];
  if (!v91)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v92 = [v91 trailingAnchor];
  v93 = [v90 constraintEqualToAnchor:v92];

  *(v20 + 144) = v93;
  v94 = [v3 contentView];
  v95 = [v94 layoutMarginsGuide];

  v96 = [v95 bottomAnchor];
  v97 = *&v3[v6];
  if (!v97)
  {
LABEL_51:
    __break(1u);
    return;
  }

  v98 = objc_opt_self();
  v99 = [v97 bottomAnchor];
  v100 = [v96 constraintEqualToAnchor:v99];

  *(v20 + 152) = v100;
  sub_91304();
  v101 = sub_30C358().super.isa;

  [v98 activateConstraints:v101];
}

void sub_100774()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_artworkView);
  if (!v1)
  {
    __break(1u);
    goto LABEL_20;
  }

  [v1 removeFromSuperview];
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoView;
  v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoView);
  if (!v3)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v3 removeFromSuperview];
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsView;
  v5 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsView);
  if (!v5)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v5 removeFromSuperview];
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoViewLayoutGuide;
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoViewLayoutGuide))
  {
    [v0 removeLayoutGuide:?];
    v7 = *(v0 + v6);
    *(v0 + v6) = 0;
  }

  v8 = [v0 contentView];
  if (!*(v0 + v2))
  {
    goto LABEL_22;
  }

  v9 = v8;
  [v8 addSubview:?];

  v10 = [v0 contentView];
  if (!*(v0 + v4))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v11 = v10;
  [v10 addSubview:?];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_321500;
  v13 = *(v0 + v2);
  if (!v13)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v55 = v4;
  v14 = [v13 topAnchor];
  v15 = [v0 contentView];
  v16 = [v15 layoutMarginsGuide];

  v17 = [v16 topAnchor];
  v18 = [v14 constraintEqualToAnchor:v17];

  *(v12 + 32) = v18;
  v19 = *(v0 + v2);
  if (!v19)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = [v19 leadingAnchor];
  v21 = [v0 contentView];
  v22 = [v21 layoutMarginsGuide];

  v23 = [v22 leadingAnchor];
  v24 = [v20 constraintEqualToAnchor:v23];

  *(v12 + 40) = v24;
  v25 = [v0 contentView];
  v26 = [v25 layoutMarginsGuide];

  v27 = [v26 trailingAnchor];
  v28 = *(v0 + v2);
  if (!v28)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v29 = [v28 trailingAnchor];
  v30 = [v27 constraintEqualToAnchor:v29];

  *(v12 + 48) = v30;
  v31 = *&v55[v0];
  if (!v31)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v32 = [v31 topAnchor];
  v33 = *(v0 + v2);
  if (!v33)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v34 = [v33 bottomAnchor];
  v35 = [v32 constraintEqualToAnchor:v34 constant:6.0];

  *(v12 + 56) = v35;
  v36 = *&v55[v0];
  if (!v36)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v37 = [v36 leadingAnchor];
  v38 = [v0 contentView];
  v39 = [v38 layoutMarginsGuide];

  v40 = [v39 leadingAnchor];
  v41 = [v37 constraintEqualToAnchor:v40 constant:0.0];

  *(v12 + 64) = v41;
  v42 = [v0 contentView];
  v43 = [v42 layoutMarginsGuide];

  v44 = [v43 trailingAnchor];
  v45 = *&v55[v0];
  if (!v45)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v46 = [v45 trailingAnchor];
  v47 = [v44 constraintEqualToAnchor:v46];

  *(v12 + 72) = v47;
  v48 = [v0 contentView];
  v49 = [v48 layoutMarginsGuide];

  v50 = [v49 bottomAnchor];
  v51 = *&v55[v0];
  if (!v51)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v52 = objc_opt_self();
  v53 = [v51 bottomAnchor];
  v54 = [v50 constraintEqualToAnchor:v53];

  *(v12 + 80) = v54;
  sub_91304();
  isa = sub_30C358().super.isa;

  [v52 activateConstraints:isa];
}

void sub_100D5C(uint64_t a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_objectGraph) = a1;

  sub_FF724();
  v4 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_artworkView);
  if (!v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v4;
  sub_21C008(a1);

  v6 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoView);
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_objectGraph;
  swift_beginAccess();
  *&v6[v7] = a1;
  v8 = v6;

  sub_3026B8();

  sub_30B8E8();
  *&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_explicitContentPresenter] = v11;

  v9 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsView);
  if (v9)
  {
    v10 = v9;
    PlayControlsStackView.bind(to:)(a1);

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_100E9C(uint64_t a1)
{
  v2 = v1;
  v21.receiver = v1;
  v21.super_class = swift_getObjectType();
  v4 = objc_msgSendSuper2(&v21, "preferredLayoutAttributesFittingAttributes:", a1);
  [v4 bounds];
  Width = CGRectGetWidth(v22);
  v6 = [v1 contentView];
  [v6 directionalLayoutMargins];
  v8 = v7;

  v9 = Width - v8;
  v10 = [v2 contentView];
  [v10 directionalLayoutMargins];
  v12 = v11;

  v13 = v9 - v12;
  [v4 bounds];
  v14 = [v2 contentView];
  [v14 directionalLayoutMargins];

  v15 = [v2 contentView];
  [v15 directionalLayoutMargins];

  v16 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoView];
  if (v2[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_shouldRenderEpisodeArtwork] == 1)
  {
    if (!v16)
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v17 = v16;
    EpisodeInfoView.prepareForLayout(fitting:)(v13 + -90.0 + -10.0);
  }

  else
  {
    if (!v16)
    {
LABEL_12:
      __break(1u);
      return;
    }

    v18 = v16;
    EpisodeInfoView.prepareForLayout(fitting:)(v13);
  }

  v19 = [v2 contentView];
  [v19 directionalLayoutMargins];

  v20 = [v2 contentView];
  [v20 directionalLayoutMargins];

  [v4 size];
  [v4 setSize:?];
  if (!*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsView])
  {
    __break(1u);
    goto LABEL_11;
  }

  if (qword_3FAA28 != -1)
  {
    swift_once();
  }

  [v4 size];
  [v4 setSize:?];
}

uint64_t sub_1013F4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v4 - 8);
  v38 = &v35 - v5;
  v6 = sub_303398();
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin(v6);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3031C8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  v20 = sub_307D18();
  v21 = v20;
  v41 = v13;
  if (v20)
  {
    v22 = sub_30B038();
    v20 = sub_101D54(&qword_3FBDA0, 255, &type metadata accessor for Action);
  }

  else
  {
    v22 = 0;
    *(&v42 + 1) = 0;
    *&v43 = 0;
  }

  *&v42 = v21;
  *(&v43 + 1) = v22;
  v44 = v20;
  v23 = OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playAction;
  swift_beginAccess();
  sub_101C74(&v42, v2 + v23);
  swift_endAccess();
  sub_309428();
  v24 = *(v9 + 48);
  result = v24(v19, 1, v8);
  v26 = OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_shouldRenderEpisodeArtwork;
  *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_shouldRenderEpisodeArtwork) = result != 1;
  if (!*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsPresenter))
  {
    __break(1u);
    goto LABEL_19;
  }

  sub_E7674(a1);

  v27 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoView);
  if (!v27)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v28 = v27;
  sub_EB910(a1, 0);
  sub_EBC58();
  sub_EBD88();
  sub_EBE88(a1);
  sub_309A78();
  if (swift_dynamicCastClass())
  {

    sub_EC2B0();
  }

  else
  {
    sub_307D98();
    if ((sub_303D78() & 1) == 0)
    {
      v29 = sub_307D98();
      sub_EC3D8(v29);
    }
  }

  EpisodeInfoView.beginUpdates()();

  if ((*(v2 + v26) & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_101CE4(v19, v16);
  if (v24(v16, 1, v8) == 1)
  {
    sub_EB68(v16, &unk_402FF0);
    return sub_EB68(v19, &unk_402FF0);
  }

  v30 = v41;
  result = sub_6D85C(v16, v41);
  v31 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_artworkView);
  if (v31)
  {
    sub_FE64C(v30, v36, &type metadata accessor for ArtworkModel);
    v32 = sub_303DF8();
    (*(*(v32 - 8) + 56))(v38, 1, 1, v32);
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    v33 = v31;
    v34 = v37;
    sub_303348();
    sub_21C4B8(v34);

    (*(v39 + 8))(v34, v40);
    sub_FE6B4(v30, &type metadata accessor for ArtworkModel);
    if (*(v2 + v26) == 1)
    {
      sub_FFD04();
      return sub_EB68(v19, &unk_402FF0);
    }

LABEL_16:
    sub_100774();
    return sub_EB68(v19, &unk_402FF0);
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_101988(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_101D54(&qword_403008, v3, type metadata accessor for SingleShowEpisodeCell);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v4);
}

double sub_101A18@<D0>(uint64_t a1@<X8>)
{
  sub_3074B8();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_101C74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_101CE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_101D54(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_101D9C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_101E04()
{
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoView) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoViewLayoutGuide) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsPresenter) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playControlsView) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_artworkView) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playStateSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_shouldRenderEpisodeArtwork) = 0;
  v1 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_playAction;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_objectGraph) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_displayScale) = 0x3FF0000000000000;
  sub_30D648();
  __break(1u);
}

uint64_t sub_101EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_101FDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ChannelSearchResultView()
{
  result = qword_4030A0;
  if (!qword_4030A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1020F0()
{
  sub_10216C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10216C()
{
  if (!qword_401C50)
  {
    sub_3031C8();
    v0 = sub_30D3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_401C50);
    }
  }
}

uint64_t sub_1021F8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_3020D8();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_3020A8();
}

uint64_t sub_102240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4030E8);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  sub_EB00(a1, &v23 - v9, &unk_402FF0);
  v11 = *(v5 + 44);
  *&v10[v11] = vdupq_n_s64(0x4051000000000000uLL);
  v12 = enum case for Artwork.Sizing.constantSize(_:);
  v13 = sub_30B168();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  v14 = sub_305BE8();
  v25 = 0;
  sub_10258C(&v36);
  v29 = *&v37[32];
  v30 = *&v37[48];
  v31[0] = *&v37[64];
  *(v31 + 9) = *&v37[73];
  v26 = v36;
  v27 = *v37;
  v28 = *&v37[16];
  v32[0] = v36;
  v32[1] = *v37;
  v32[2] = *&v37[16];
  v32[3] = *&v37[32];
  v32[4] = *&v37[48];
  v33[0] = *&v37[64];
  *(v33 + 9) = *&v37[73];
  sub_EB00(&v26, &v34, &qword_4030F0);
  sub_EB68(v32, &qword_4030F0);
  *(&v24[3] + 7) = v29;
  *(&v24[4] + 7) = v30;
  *(&v24[5] + 7) = v31[0];
  v24[6] = *(v31 + 9);
  *(v24 + 7) = v26;
  *(&v24[1] + 7) = v27;
  *(&v24[2] + 7) = v28;
  v15 = v25;
  sub_EB00(v10, v7, &qword_4030E8);
  sub_EB00(v7, a2, &qword_4030E8);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4030F8) + 48);
  *&v35[49] = v24[3];
  *&v35[65] = v24[4];
  *&v35[81] = v24[5];
  *&v35[97] = v24[6];
  *&v35[1] = v24[0];
  v17 = a2 + v16;
  v34 = v14;
  v35[0] = v15;
  *&v35[17] = v24[1];
  *&v35[33] = v24[2];
  *(v17 + 128) = HIBYTE(v24[6]);
  v18 = *&v35[64];
  *(v17 + 64) = *&v35[48];
  *(v17 + 80) = v18;
  v19 = *&v35[32];
  *(v17 + 32) = *&v35[16];
  *(v17 + 48) = v19;
  v20 = *v35;
  *v17 = v34;
  *(v17 + 16) = v20;
  v21 = *&v35[96];
  *(v17 + 96) = *&v35[80];
  *(v17 + 112) = v21;
  sub_EB00(&v34, &v36, &qword_403100);
  sub_EB68(v10, &qword_4030E8);
  *&v37[49] = v24[3];
  *&v37[65] = v24[4];
  *&v37[81] = v24[5];
  v38 = v24[6];
  *&v37[1] = v24[0];
  *&v37[17] = v24[1];
  v36 = v14;
  v37[0] = v15;
  *&v37[33] = v24[2];
  sub_EB68(&v36, &qword_403100);
  return sub_EB68(v7, &qword_4030E8);
}

uint64_t sub_10258C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ChannelSearchResultView();
  sub_E504();

  v2 = sub_3063C8();
  v4 = v3;
  v6 = v5;
  if (qword_3FAA88 != -1)
  {
    swift_once();
  }

  v7 = sub_3020D8();
  __swift_project_value_buffer(v7, qword_403018);
  v8 = sub_306308();
  v10 = v9;
  v12 = v11;
  sub_EBC8(v2, v4, v6 & 1);

  sub_306898();
  v13 = sub_306338();
  v38 = v14;
  v39 = v13;
  v36 = v15;
  v40 = v16;

  sub_EBC8(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath();

  v17 = sub_3063C8();
  v19 = v18;
  v21 = v20;
  if (qword_3FAA90 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v7, qword_403030);
  v22 = sub_306308();
  v24 = v23;
  v26 = v25;
  sub_EBC8(v17, v19, v21 & 1);

  sub_3068A8();
  v27 = sub_306338();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_EBC8(v22, v24, v26 & 1);

  v34 = swift_getKeyPath();
  *a1 = v39;
  *(a1 + 8) = v38;
  *(a1 + 16) = v36 & 1;
  *(a1 + 24) = v40;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 2;
  *(a1 + 48) = 0;
  *(a1 + 56) = v27;
  *(a1 + 64) = v29;
  *(a1 + 72) = v31 & 1;
  *(a1 + 80) = v33;
  *(a1 + 88) = v34;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  sub_EBD8(v39, v38, v36 & 1);

  sub_EBD8(v27, v29, v31 & 1);

  sub_EBC8(v27, v29, v31 & 1);

  sub_EBC8(v39, v38, v36 & 1);
}

uint64_t sub_102908@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_305AA8();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4030E0);
  return sub_102240(v1, a1 + *(v3 + 44));
}

unint64_t sub_102968()
{
  result = qword_403108;
  if (!qword_403108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403108);
  }

  return result;
}

uint64_t sub_1029CC()
{
  v0 = sub_3020D8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v4, qword_403118);
  __swift_project_value_buffer(v0, qword_403118);
  sub_3020B8();
  sub_302058();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_102AB4()
{
  v0 = sub_3020D8();
  __swift_allocate_value_buffer(v0, qword_403130);
  __swift_project_value_buffer(v0, qword_403130);
  return sub_3020A8();
}

uint64_t sub_102B00@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v1 = sub_303A58();
  v66 = *(v1 - 8);
  v67 = v1;
  __chkstk_darwin(v1);
  v3 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_306008();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403148);
  __chkstk_darwin(v8);
  v10 = &v60 - v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403150);
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v12 = &v60 - v11;
  *v10 = sub_305AA8();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403158);
  sub_103204(&v10[*(v13 + 44)]);
  sub_305FE8();
  v14 = sub_EC8C(&qword_403160, &qword_403148);
  v61 = v12;
  v62 = v8;
  v15 = v14;
  sub_306738();
  (*(v5 + 8))(v7, v4);
  sub_EB68(v10, &qword_403148);
  v72 = sub_309528();
  v73 = v16;
  v74 = sub_30A448();
  v75 = v17;
  v18 = 0;
  v19 = 0;
  if (sub_307D08())
  {
    v20 = [objc_opt_self() mainBundle];
    v59._countAndFlagsBits = 0xE000000000000000;
    v84._countAndFlagsBits = 0x455F474E49544152;
    v84._object = 0xEF544943494C5058;
    v87.value._countAndFlagsBits = 0;
    v87.value._object = 0;
    v21.super.isa = v20;
    v90._countAndFlagsBits = 0;
    v90._object = 0xE000000000000000;
    v18 = sub_301AB8(v84, v87, v21, v90, v59);
    v19 = v22;
  }

  v76 = v18;
  v77 = v19;
  sub_3039A8();
  if (sub_303A38())
  {
    v23 = [objc_opt_self() mainBundle];
    v59._countAndFlagsBits = 0xE000000000000000;
    v85._countAndFlagsBits = 0x4445564153;
    v85._object = 0xE500000000000000;
    v88.value._countAndFlagsBits = 0;
    v88.value._object = 0;
    v24.super.isa = v23;
    v91._countAndFlagsBits = 0;
    v91._object = 0xE000000000000000;
    v25 = sub_301AB8(v85, v88, v24, v91, v59);
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v29 = v66;
  v28 = v67;
  v78 = v25;
  v79 = v27;
  sub_3039A8();
  v30 = sub_303A48();
  (*(v29 + 8))(v3, v28);
  if (v30)
  {
    v31 = [objc_opt_self() mainBundle];
    v59._countAndFlagsBits = 0xE000000000000000;
    v86._countAndFlagsBits = 0x44414F4C4E574F44;
    v86._object = 0xEA00000000004445;
    v89.value._countAndFlagsBits = 0;
    v89.value._object = 0;
    v32.super.isa = v31;
    v92._countAndFlagsBits = 0;
    v92._object = 0xE000000000000000;
    v33 = sub_301AB8(v86, v89, v32, v92, v59);
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  v80 = v33;
  v81 = v35;
  result = sub_307D88();
  v37 = 0;
  v82 = result;
  v83 = v38;
  v39 = _swiftEmptyArrayStorage;
LABEL_10:
  if (v37 <= 6)
  {
    v40 = 6;
  }

  else
  {
    v40 = v37;
  }

  v41 = v40 + 1;
  v42 = 16 * v37 + 40;
  while (1)
  {
    if (v37 == 6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40AB30);
      swift_arrayDestroy();
      v69 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEC78);
      sub_EC8C(&qword_3FEC80, &qword_3FEC78);
      v49 = sub_30BFF8();
      v51 = v50;

      v69 = v49;
      v70 = v51;
      sub_E504();
      v52 = sub_3063C8();
      v54 = v53;
      v56 = v55;
      v69 = v62;
      v70 = v15;
      swift_getOpaqueTypeConformance2();
      v57 = v64;
      v58 = v61;
      sub_3066B8();
      sub_EBC8(v52, v54, v56 & 1);

      return (*(v63 + 8))(v58, v57);
    }

    if (v41 == ++v37)
    {
      break;
    }

    v43 = v42 + 16;
    v44 = *&v71[v42];
    v42 += 16;
    if (v44)
    {
      v45 = *&v68[v43];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_CAA70(0, *(v39 + 2) + 1, 1, v39);
        v39 = result;
      }

      v47 = *(v39 + 2);
      v46 = *(v39 + 3);
      if (v47 >= v46 >> 1)
      {
        result = sub_CAA70((v46 > 1), v47 + 1, 1, v39);
        v39 = result;
      }

      *(v39 + 2) = v47 + 1;
      v48 = &v39[16 * v47];
      *(v48 + 4) = v45;
      *(v48 + 5) = v44;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_103204@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403168);
  __chkstk_darwin(v1 - 8);
  v42 = &v35[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v5 = &v35[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403170);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v35[-v11];
  sub_307DA8();
  v13 = &v12[*(v7 + 48)];
  v14 = *(sub_3055F8() + 20);
  v15 = enum case for RoundedCornerStyle.continuous(_:);
  v16 = sub_305B68();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  __asm { FMOV            V0.2D, #5.0 }

  *v13 = _Q0;
  v22 = *(v7 + 44);
  *&v12[v22] = vdupq_n_s64(0x4051000000000000uLL);
  v23 = enum case for Artwork.Sizing.constantSize(_:);
  v24 = sub_30B168();
  (*(*(v24 - 8) + 104))(&v12[v22], v23, v24);
  sub_306C58();
  sub_3051F8();
  v40 = v46;
  v41 = v44;
  v38 = v49;
  v39 = v48;
  v52 = 1;
  v51 = v45;
  v50 = v47;
  *v5 = sub_305BE8();
  *(v5 + 1) = 0x4000000000000000;
  v5[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403178);
  sub_103598(&v5[*(v25 + 44)]);
  v37 = v9;
  sub_EB00(v12, v9, &qword_403170);
  v26 = v52;
  LOBYTE(v14) = v51;
  v36 = v50;
  v27 = v42;
  sub_EB00(v5, v42, &qword_403168);
  v28 = v9;
  v29 = v43;
  sub_EB00(v28, v43, &qword_403170);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403180);
  v31 = v29 + *(v30 + 48);
  *v31 = 0;
  *(v31 + 8) = v26;
  v32 = v40;
  *(v31 + 16) = v41;
  *(v31 + 24) = v14;
  *(v31 + 32) = v32;
  *(v31 + 40) = v36;
  v33 = v38;
  *(v31 + 48) = v39;
  *(v31 + 56) = v33;
  sub_EB00(v27, v29 + *(v30 + 64), &qword_403168);
  sub_EB68(v5, &qword_403168);
  sub_EB68(v12, &qword_403170);
  sub_EB68(v27, &qword_403168);
  return sub_EB68(v37, &qword_403170);
}

uint64_t sub_103598@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403188);
  __chkstk_darwin(v1);
  v3 = &v49 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403190);
  __chkstk_darwin(v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v49 - v8;
  *v3 = sub_305AA8();
  *(v3 + 1) = 0x4000000000000000;
  v3[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403198);
  sub_103AB0(&v3[*(v10 + 44)]);
  if (qword_3FAA98 != -1)
  {
    swift_once();
  }

  v11 = sub_3020D8();
  __swift_project_value_buffer(v11, qword_403118);
  sub_EC8C(&qword_4031A0, &qword_403188);
  sub_3063F8();
  sub_EB68(v3, &qword_403188);
  v12 = sub_3068A8();
  KeyPath = swift_getKeyPath();
  v14 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4031A8) + 36)];
  *v14 = KeyPath;
  v14[1] = v12;
  v15 = *(v4 + 36);
  v50 = v9;
  v16 = &v9[v15];
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC798) + 28);
  v18 = enum case for Image.Scale.small(_:);
  v19 = sub_306958();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  v20 = sub_307D88();
  if (v21)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  v23 = 0xE000000000000000;
  if (v21)
  {
    v23 = v21;
  }

  v55 = v22;
  v56 = v23;
  sub_E504();
  v24 = sub_3063C8();
  v26 = v25;
  v28 = v27;
  if (qword_3FAAA0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v11, qword_403130);
  v29 = sub_306308();
  v31 = v30;
  v33 = v32;
  sub_EBC8(v24, v26, v28 & 1);

  sub_306898();
  v34 = sub_306338();
  v36 = v35;
  v38 = v37;
  v40 = v39;

  sub_EBC8(v29, v31, v33 & 1);

  v41 = swift_getKeyPath();
  v66 = v38 & 1;
  v64 = 0;
  v42 = v50;
  sub_EB00(v50, v6, &qword_403190);
  v43 = v51;
  sub_EB00(v6, v51, &qword_403190);
  v44 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4031B0) + 48);
  *&v52 = v34;
  *(&v52 + 1) = v36;
  LOBYTE(v53) = v38 & 1;
  *(&v53 + 1) = *v65;
  DWORD1(v53) = *&v65[3];
  *(&v53 + 1) = v40;
  *v54 = v41;
  v51 = v6;
  *&v54[8] = 2;
  v54[16] = 0;
  *&v54[17] = 256;
  v45 = v52;
  v46 = v53;
  v47 = *v54;
  *(v44 + 47) = *&v54[15];
  *(v44 + 16) = v46;
  *(v44 + 32) = v47;
  *v44 = v45;
  sub_EB00(&v52, &v55, &qword_4031B8);
  sub_EB68(v42, &qword_403190);
  v55 = v34;
  v56 = v36;
  v57 = v38 & 1;
  *v58 = *v65;
  *&v58[3] = *&v65[3];
  v59 = v40;
  v60 = v41;
  v61 = 2;
  v62 = 0;
  v63 = 256;
  sub_EB68(&v55, &qword_4031B8);
  return sub_EB68(v51, &qword_403190);
}

uint64_t sub_103AB0@<X0>(char *a1@<X8>)
{
  v35 = a1;
  v34 = sub_30A4A8();
  v1 = *(v34 - 8);
  __chkstk_darwin(v34);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v32 - v5;

  v7 = v6;
  sub_30A488();
  sub_30A448();
  if (v8)
  {
    v9 = sub_30C248();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v38 = v9;
  v39 = v11;
  sub_E504();
  v12 = sub_3063C8();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  KeyPath = swift_getKeyPath();
  v20 = *(v1 + 16);
  v33 = v7;
  v21 = v7;
  v22 = v34;
  v20(v3, v21, v34);
  LOBYTE(v38) = v16 & 1;
  v37 = 0;
  v36 = 1;
  v23 = v35;
  v20(v35, v3, v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4031C0);
  v25 = &v23[*(v24 + 48)];
  v26 = v38;
  v27 = v37;
  *v25 = v12;
  *(v25 + 1) = v14;
  v25[16] = v26;
  *(v25 + 3) = v18;
  *(v25 + 4) = KeyPath;
  *(v25 + 5) = 1;
  v25[48] = v27;
  v28 = &v23[*(v24 + 64)];
  v29 = v36;
  *v28 = 0;
  v28[8] = v29;
  sub_EBD8(v12, v14, v26);
  v30 = *(v1 + 8);

  v30(v33, v22);
  sub_EBC8(v12, v14, v38);

  return (v30)(v3, v22);
}

uint64_t sub_103D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEC50);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  sub_30A478();
  v9 = sub_303748();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = enum case for EyebrowBuilder.ListContext.episodeSearchResult(_:);
  v11 = sub_3033A8();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v8, v10, v11);
  (*(v12 + 56))(v8, 0, 1, v11);
  swift_retain_n();
  swift_retain_n();
  sub_30A458();
  sub_104218(&qword_3FEC58, &type metadata accessor for EpisodeCaptionGenerator);
  v13 = sub_3053C8();
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEA68);
  sub_30B8E8();
  v16 = sub_303B28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC198);
  sub_30B8E8();

  v17 = sub_303B28();

  *a3 = a1;
  a3[1] = v13;
  a3[2] = v15;
  a3[3] = a2;
  a3[4] = v16;
  a3[5] = v17;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_104010(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_104058(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1040EC()
{
  result = qword_4031C8;
  if (!qword_4031C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4031D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403148);
    sub_EC8C(&qword_403160, &qword_403148);
    swift_getOpaqueTypeConformance2();
    sub_104218(&qword_3FC7C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4031C8);
  }

  return result;
}

uint64_t sub_104218(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for RecentlySearchedHeaderCell()
{
  result = qword_4032D8;
  if (!qword_4032D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1042AC()
{
  v0 = sub_3020D8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() currentTraitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == &dword_0 + 1)
  {
    sub_3020A8();
    sub_302058();
  }

  else
  {
    sub_302088();
    sub_302048();
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1043D8()
{
  v0 = sub_3020D8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() currentTraitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == &dword_0 + 1)
  {
    sub_3020A8();
  }

  else
  {
    sub_302038();
  }

  sub_302058();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1044F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403208);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403210);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403218);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  *v10 = sub_305AA8();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403220);
  sub_1047CC(v2, &v10[*(v14 + 44)]);
  KeyPath = swift_getKeyPath();
  sub_34804(v10, v7, &qword_403210);
  v16 = &v7[*(v5 + 44)];
  *v16 = KeyPath;
  *(v16 + 1) = 0;
  v16[16] = 0;
  LOBYTE(KeyPath) = sub_3060D8();
  v17 = sub_306108();
  sub_306108();
  if (sub_306108() != KeyPath)
  {
    v17 = sub_306108();
  }

  sub_304FD8();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_34804(v7, v13, &qword_403208);
  v26 = &v13[*(v11 + 36)];
  *v26 = v17;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = sub_3060E8();
  v28 = sub_306108();
  sub_306108();
  if (sub_306108() != v27)
  {
    v28 = sub_306108();
  }

  sub_304FD8();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_34804(v13, a1, &qword_403218);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403228);
  v38 = a1 + *(result + 36);
  *v38 = v28;
  *(v38 + 8) = v30;
  *(v38 + 16) = v32;
  *(v38 + 24) = v34;
  *(v38 + 32) = v36;
  *(v38 + 40) = 0;
  return result;
}

uint64_t sub_1047CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v67 = a1;
  v84 = a2;
  v2 = sub_305D68();
  v82 = *(v2 - 8);
  v83 = v2;
  __chkstk_darwin(v2);
  v81 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_305E08();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for RecentlySearchedHeaderCell();
  v63 = *(v77 - 8);
  v62 = *(v63 + 64);
  __chkstk_darwin(v77);
  v60 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB808);
  v66 = *(v65 - 8);
  __chkstk_darwin(v65);
  v61 = &v60 - v6;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403230);
  __chkstk_darwin(v71);
  v8 = &v60 - v7;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403238);
  __chkstk_darwin(v72);
  v73 = &v60 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403240);
  v79 = *(v10 - 8);
  v80 = v10;
  __chkstk_darwin(v10);
  v75 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v85 = &v60 - v13;
  v14 = sub_3020D8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = objc_opt_self();
  v19 = [v18 mainBundle];
  v58._countAndFlagsBits = 0xE000000000000000;
  v88._countAndFlagsBits = 0xD00000000000001ELL;
  v88._object = 0x800000000033B240;
  v90.value._countAndFlagsBits = 0;
  v90.value._object = 0;
  v20.super.isa = v19;
  v92._countAndFlagsBits = 0;
  v92._object = 0xE000000000000000;
  sub_301AB8(v88, v90, v20, v92, v58);

  sub_1042AC();
  v21 = sub_306308();
  v68 = v22;
  v69 = v21;
  v64 = v23;
  v70 = v24;

  v25 = *(v15 + 8);
  v25(v17, v14);
  v26 = [v18 mainBundle];
  v59._countAndFlagsBits = 0xE000000000000000;
  v89._object = 0x800000000033B260;
  v89._countAndFlagsBits = 0xD00000000000001BLL;
  v91.value._countAndFlagsBits = 0;
  v91.value._object = 0;
  v27.super.isa = v26;
  v93._countAndFlagsBits = 0;
  v93._object = 0xE000000000000000;
  v28 = sub_301AB8(v89, v91, v27, v93, v59);
  v30 = v29;

  v86 = v28;
  v87 = v30;
  v31 = v67;
  v32 = v60;
  sub_105F08(v67, v60);
  v33 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v34 = swift_allocObject();
  sub_106110(v32, v34 + v33);
  sub_E504();
  v35 = v61;
  sub_306A98();
  sub_1043D8();
  sub_EC8C(&qword_3FB838, &qword_3FB808);
  v36 = v65;
  sub_3063F8();
  v25(v17, v14);
  (*(v66 + 8))(v35, v36);
  if (qword_3FB000 != -1)
  {
    swift_once();
  }

  v37 = sub_30D058();
  KeyPath = swift_getKeyPath();
  v39 = &v8[*(v71 + 36)];
  *v39 = KeyPath;
  v39[1] = v37;
  v40 = v74;
  sub_305DF8();
  sub_106284();
  sub_1069C8(&qword_3FCA58, &type metadata accessor for BorderlessButtonStyle);
  v41 = v73;
  v42 = v78;
  sub_3064E8();
  (*(v76 + 8))(v40, v42);
  sub_EB68(v8, &qword_403230);
  v43 = v41 + *(v72 + 36);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403250);
  sub_305648();
  sub_1063AC(v31 + *(v77 + 28), v43);
  *(v43 + *(v44 + 36)) = 0;
  v45 = v81;
  sub_305698();
  sub_10641C();
  sub_1069C8(&qword_403268, &type metadata accessor for AutomaticHoverEffect);
  v46 = v85;
  v47 = v83;
  sub_306548();
  (*(v82 + 8))(v45, v47);
  sub_EB68(v41, &qword_403238);
  v49 = v79;
  v48 = v80;
  v50 = *(v79 + 16);
  v51 = v75;
  v50(v75, v46, v80);
  v52 = v84;
  v54 = v68;
  v53 = v69;
  *v84 = v69;
  v52[1] = v54;
  LOBYTE(v43) = v64 & 1;
  *(v52 + 16) = v64 & 1;
  v52[3] = v70;
  v52[4] = 0;
  *(v52 + 40) = 1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403270);
  v50(v52 + *(v55 + 64), v51, v48);
  sub_EBD8(v53, v54, v43);
  v56 = *(v49 + 8);

  v56(v85, v48);
  v56(v51, v48);
  sub_EBC8(v53, v54, v43);
}

uint64_t sub_105120(uint64_t a1)
{
  v27 = sub_302558();
  v2 = *(v27 - 8);
  __chkstk_darwin(v27);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_305A08();
  v26 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_30B898();
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_30B738();
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_105604(v10);
  sub_30B728();
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v25 = v5;
  if (v16 == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_30C7A8();
    v17 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();
    sub_348E4(v14, v15, 0);
    (*(v26 + 8))(v7, v5);
  }

  v18 = v29;
  v31[3] = v29;
  v31[4] = &protocol witness table for EmptyAction;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v31);
  (*(v28 + 16))(boxed_opaque_existential_0Tm, v13, v18);
  (*(v2 + 104))(v4, enum case for ActionMetricsBehavior.fromAction(_:), v27);
  v20 = *(a1 + 32);
  if (v20 == 1)
  {
    v30 = *(a1 + 24);
  }

  else
  {

    sub_30C7A8();
    v21 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v26 + 8))(v7, v25);
  }

  swift_getObjectType();
  sub_307C38();
  swift_unknownObjectRelease();

  (*(v2 + 8))(v4, v27);
  __swift_destroy_boxed_opaque_existential_1(v31);

  if ((v20 & 1) == 0)
  {
    sub_30C7A8();
    v22 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v26 + 8))(v7, v25);
  }

  sub_30A5A8();
  sub_30B8E8();

  sub_30A588();

  return (*(v28 + 8))(v13, v29);
}

uint64_t sub_105604@<X0>(uint64_t a1@<X8>)
{
  v8[3] = a1;
  v1 = sub_30BA28();
  __chkstk_darwin(v1 - 8);
  v8[2] = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  __chkstk_darwin(v3 - 8);
  v5 = v8 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC160);
  sub_30B7E8();
  *(swift_allocObject() + 16) = xmmword_315430;
  v8[1] = sub_303568();
  v8[0] = sub_303858();
  sub_3037B8();
  sub_303AA8();
  v6 = sub_301CB8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_302718();
  sub_30B788();
  v15 = v9;
  sub_EB68(&v15, &unk_408130);
  v14 = v10;
  sub_EB68(&v14, &qword_3FC878);
  v13 = v11;
  sub_EB68(&v13, &qword_408140);
  sub_1EBD0(v12);

  sub_EB68(v5, &qword_3FB8E0);
  sub_30BA18();
  return sub_30B878();
}

uint64_t sub_1058E4()
{
  v0 = sub_307278();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3072C8();
  v5 = __chkstk_darwin(v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = 0;
  (*(v8 + 104))(v7, enum case for ShelfCellListSeparatorMode.Placement.custom(_:), v5);
  (*(v1 + 104))(v3, enum case for ShelfCellListSeparatorMode.Layout.default(_:), v0);
  return sub_3072D8();
}

uint64_t sub_105A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = swift_getKeyPath();
  *(a4 + 32) = 0;
  *(a4 + 40) = swift_getKeyPath();
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  v8 = (a4 + *(a3 + 28));
  v9 = *(sub_3055F8() + 20);
  v10 = enum case for RoundedCornerStyle.continuous(_:);
  v11 = sub_305B68();
  (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
  __asm { FMOV            V0.2D, #4.0 }

  *v8 = _Q0;
  sub_306D58();
  v18 = v17;
  v20 = v19;
  v21 = sub_307048();
  (*(*(v21 - 8) + 8))(a1, v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403200);
  __asm { FMOV            V0.2D, #1.5 }

  *&v8[*(v22 + 36)] = _Q0;
  v24 = &v8[*(v22 + 40)];
  *v24 = v18;
  *(v24 + 1) = v20;
  v25 = a4 + *(a3 + 32);

  return sub_105EA4(a2, v25);
}

uint64_t sub_105BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1069C8(&qword_403278, type metadata accessor for RecentlySearchedHeaderCell);

  return ShelfSwiftUICell.init(presentation:model:)(a1, a2, a3, v6);
}

uint64_t sub_105C7C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_30C968();
  v3 = sub_3071F8();
  v4 = *(*(v3 - 8) + 104);
  v5 = &enum case for ShelfHeaderStyle.subdued(_:);
  if ((v2 & 1) == 0)
  {
    v5 = &enum case for ShelfHeaderStyle.default(_:);
  }

  v6 = *v5;

  return v4(a1, v6, v3);
}

uint64_t sub_105EA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_30A218();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_105F08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentlySearchedHeaderCell();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_105F6C()
{
  v1 = (type metadata accessor for RecentlySearchedHeaderCell() - 8);
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (v2 + 16) & ~v2;
  sub_7BD8C(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));

  sub_348E4(*(v0 + v4 + 40), *(v0 + v4 + 48), *(v0 + v4 + 56));
  v5 = v1[9];
  v6 = v5 + *(sub_3055F8() + 20);
  v7 = sub_305B68();
  (*(*(v7 - 8) + 8))(v0 + v4 + v6, v7);
  v8 = v0 + v4 + v1[10];

  v9 = *(sub_30A218() + 20);
  v10 = sub_30BAA8();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v8 + v9, 1, v10))
  {
    (*(v11 + 8))(v8 + v9, v10);
  }

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_106110(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentlySearchedHeaderCell();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_106174()
{
  v1 = *(type metadata accessor for RecentlySearchedHeaderCell() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_105120(v2);
}

uint64_t sub_1061D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_305768();
  *a1 = result;
  return result;
}

uint64_t sub_106200@<X0>(uint64_t *a1@<X8>)
{
  result = sub_305768();
  *a1 = result;
  return result;
}

unint64_t sub_106284()
{
  result = qword_403248;
  if (!qword_403248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403230);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FB808);
    sub_EC8C(&qword_3FB838, &qword_3FB808);
    swift_getOpaqueTypeConformance2();
    sub_EC8C(&qword_3FC788, &qword_3FC790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403248);
  }

  return result;
}

uint64_t sub_1063AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10641C()
{
  result = qword_403258;
  if (!qword_403258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403238);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403230);
    sub_305E08();
    sub_106284();
    sub_1069C8(&qword_3FCA58, &type metadata accessor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_EC8C(&qword_403260, &qword_403250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403258);
  }

  return result;
}

uint64_t sub_106574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403200);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_30A218();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1066B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403200);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_30A218();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1067DC()
{
  sub_1068E0(319, &unk_3FEDE8, type metadata accessor for CGSize);
  if (v0 <= 0x3F)
  {
    sub_1068E0(319, &qword_3FB778, &type metadata accessor for BaseObjectGraph);
    if (v1 <= 0x3F)
    {
      sub_3449C();
      if (v2 <= 0x3F)
      {
        sub_106934();
        if (v3 <= 0x3F)
        {
          sub_30A218();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1068E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3050B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_106934()
{
  if (!qword_4032E8)
  {
    sub_3055F8();
    sub_1069C8(&qword_401E78, &type metadata accessor for RoundedRectangle);
    v0 = sub_3050E8();
    if (!v1)
    {
      atomic_store(v0, &qword_4032E8);
    }
  }
}

uint64_t sub_1069C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_106A84(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_106B08()
{
  result = qword_403338;
  if (!qword_403338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403208);
    sub_EC8C(&qword_403340, &qword_403210);
    sub_F34E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403338);
  }

  return result;
}

uint64_t sub_106BF0()
{
  v0 = sub_3020D8();
  __swift_allocate_value_buffer(v0, qword_403348);
  __swift_project_value_buffer(v0, qword_403348);
  return sub_3020A8();
}

uint64_t sub_106C3C@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v1 = sub_306838();
  v77 = *(v1 - 8);
  v78 = v1;
  __chkstk_darwin(v1);
  v79 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403368);
  __chkstk_darwin(v82);
  v80 = &v77 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403370);
  __chkstk_darwin(v4);
  v81 = &v77 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403170);
  __chkstk_darwin(v6);
  v8 = &v77 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v9 - 8);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v77 - v13;
  v15 = sub_3031C8();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403378);
  __chkstk_darwin(v19 - 8);
  v83 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v77 - v22;
  sub_307D78();
  v24 = (*(v16 + 48))(v14, 1, v15);
  v85 = v23;
  if (v24 != 1)
  {
    sub_6D85C(v14, v18);
    sub_6D8C0(v18, v11);
    (*(v16 + 56))(v11, 0, 1, v15);
    sub_E2F78(v11, v8);
    v38 = &v8[*(v6 + 40)];
    v39 = *(sub_3055F8() + 20);
    v40 = enum case for RoundedCornerStyle.continuous(_:);
    v41 = sub_305B68();
    (*(*(v41 - 8) + 104))(&v38[v39], v40, v41);
    __asm { FMOV            V0.2D, #5.0 }

    *v38 = _Q0;
    v43 = *(v6 + 36);
    *&v8[v43] = vdupq_n_s64(0x4051000000000000uLL);
    v44 = enum case for Artwork.Sizing.constantSize(_:);
    v45 = sub_30B168();
    (*(*(v45 - 8) + 104))(&v8[v43], v44, v45);
    sub_EB00(v8, v81, &qword_403170);
    swift_storeEnumTagMultiPayload();
    sub_EC8C(&qword_403398, &qword_403170);
    sub_107634();
    sub_305D48();
    sub_EB68(v8, &qword_403170);
    sub_6D924(v18);
    goto LABEL_5;
  }

  v26 = v81;
  v25 = v82;
  sub_EB68(v14, &unk_402FF0);
  if ((sub_309A38() & 0x100000000) == 0)
  {
    v27 = *(sub_3055F8() + 20);
    v28 = enum case for RoundedCornerStyle.continuous(_:);
    v29 = sub_305B68();
    v30 = v80;
    (*(*(v29 - 8) + 104))(&v80[v27], v28, v29);
    __asm { FMOV            V0.2D, #5.0 }

    *v30 = _Q0;
    sub_306C58();
    sub_3051F8();
    v36 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_403390) + 36));
    v37 = v89;
    *v36 = v88;
    v36[1] = v37;
    v36[2] = v90;
    (*(v77 + 104))(v79, enum case for Color.RGBColorSpace.sRGB(_:), v78);
    *(v30 + *(v25 + 36)) = sub_3068B8();
    sub_EB00(v30, v26, &qword_403368);
    swift_storeEnumTagMultiPayload();
    sub_EC8C(&qword_403398, &qword_403170);
    sub_107634();
    v23 = v85;
    sub_305D48();
    sub_EB68(v30, &qword_403368);
LABEL_5:
    v46 = 0;
    goto LABEL_7;
  }

  v46 = 1;
  v23 = v85;
LABEL_7:
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403380);
  (*(*(v47 - 8) + 56))(v23, v46, 1, v47);
  v48 = sub_307D88();
  if (v49)
  {
    v86 = v48;
    v87 = v49;
    sub_E504();
    v50 = sub_3063C8();
    v52 = v51;
    v54 = v53;
    if (qword_3FAAA8 != -1)
    {
      swift_once();
    }

    v55 = sub_3020D8();
    __swift_project_value_buffer(v55, qword_403348);
    v56 = sub_306308();
    v58 = v57;
    v60 = v59;
    sub_EBC8(v50, v52, v54 & 1);

    sub_306898();
    v61 = sub_306338();
    v63 = v62;
    v65 = v64;
    v67 = v66;

    sub_EBC8(v56, v58, v60 & 1);

    KeyPath = swift_getKeyPath();
    v69 = v65 & 1;
    v82 = v61;
    sub_EBD8(v61, v63, v65 & 1);

    v70 = 2;
  }

  else
  {
    v82 = 0;
    v63 = 0;
    v69 = 0;
    v67 = 0;
    KeyPath = 0;
    v70 = 0;
  }

  v71 = v85;
  v72 = v83;
  sub_EB00(v85, v83, &qword_403378);
  v73 = v84;
  sub_EB00(v72, v84, &qword_403378);
  v74 = v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_403388) + 48);
  v75 = v82;
  sub_E20E0(v82, v63, v69, v67);
  sub_E2130(v75, v63, v69, v67);
  *v74 = v75;
  *(v74 + 8) = v63;
  *(v74 + 16) = v69;
  *(v74 + 24) = v67;
  *(v74 + 32) = KeyPath;
  *(v74 + 40) = v70;
  *(v74 + 48) = 0;
  sub_EB68(v71, &qword_403378);
  sub_E2130(v75, v63, v69, v67);
  return sub_EB68(v72, &qword_403378);
}

uint64_t sub_1075D4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_305AA8();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403360);
  return sub_106C3C(a1 + *(v2 + 44));
}

unint64_t sub_107634()
{
  result = qword_4033A0;
  if (!qword_4033A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403368);
    sub_1076EC();
    sub_EC8C(&qword_3FC820, &qword_3FC828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4033A0);
  }

  return result;
}

unint64_t sub_1076EC()
{
  result = qword_4033A8;
  if (!qword_4033A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403390);
    sub_107778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4033A8);
  }

  return result;
}

unint64_t sub_107778()
{
  result = qword_4033B0;
  if (!qword_4033B0)
  {
    sub_3055F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4033B0);
  }

  return result;
}

uint64_t sub_107840()
{
  v0 = sub_3020D8();
  __swift_allocate_value_buffer(v0, qword_4033C8);
  __swift_project_value_buffer(v0, qword_4033C8);
  return sub_3020A8();
}

uint64_t sub_10788C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403170);
  __chkstk_darwin(v84);
  v4 = &v78 - v3;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4033E8);
  __chkstk_darwin(v82);
  v83 = &v78 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401DC8);
  __chkstk_darwin(v6 - 8);
  v78 = &v78 - v7;
  v80 = sub_3055F8();
  __chkstk_darwin(v80);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_306938();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401D98);
  __chkstk_darwin(v81);
  v79 = &v78 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v15 - 8);
  v17 = &v78 - v16;
  v18 = sub_3031C8();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4033F0);
  __chkstk_darwin(v22 - 8);
  v86 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v88 = &v78 - v25;
  v85 = a1;
  sub_307D78();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_EB68(v17, &unk_402FF0);
    sub_306978();
    (*(v11 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v10);
    v26 = sub_306968();

    (*(v11 + 8))(v13, v10);
    v91 = v26;
    LOWORD(v92) = 1;
    v27 = *(v80 + 20);
    v28 = enum case for RoundedCornerStyle.continuous(_:);
    v29 = sub_305B68();
    (*(*(v29 - 8) + 104))(&v9[v27], v28, v29);
    __asm { FMOV            V0.2D, #5.0 }

    *v9 = _Q0;
    sub_108364();
    v89 = sub_306B98();
    v35 = v78;
    sub_307F28();
    v36 = sub_307F38();
    (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401EE0);
    sub_1083BC();
    sub_E1D8C();
    v37 = v79;
    sub_306458();
    sub_EB68(v35, &qword_401DC8);

    sub_306C58();
    sub_3051F8();
    v38 = (v37 + *(v81 + 36));
    v39 = v92;
    *v38 = v91;
    v38[1] = v39;
    v38[2] = v93;
    sub_EB00(v37, v83, &qword_401D98);
    swift_storeEnumTagMultiPayload();
    sub_EC8C(&qword_403398, &qword_403170);
    sub_E1F84();
    v40 = v88;
    sub_305D48();
    sub_EB68(v37, &qword_401D98);
  }

  else
  {
    sub_6D85C(v17, v21);
    sub_6D8C0(v21, v4);
    (*(v19 + 56))(v4, 0, 1, v18);
    v41 = v84;
    v42 = &v4[*(v84 + 40)];
    v43 = *(v80 + 20);
    v44 = enum case for RoundedCornerStyle.continuous(_:);
    v45 = sub_305B68();
    (*(*(v45 - 8) + 104))(&v42[v43], v44, v45);
    __asm { FMOV            V0.2D, #5.0 }

    *v42 = _Q0;
    v47 = *(v41 + 36);
    *&v4[v47] = vdupq_n_s64(0x4051000000000000uLL);
    v48 = enum case for Artwork.Sizing.constantSize(_:);
    v49 = sub_30B168();
    (*(*(v49 - 8) + 104))(&v4[v47], v48, v49);
    sub_108448(v4, v83);
    swift_storeEnumTagMultiPayload();
    sub_EC8C(&qword_403398, &qword_403170);
    sub_E1F84();
    v40 = v88;
    sub_305D48();
    sub_EB68(v4, &qword_403170);
    sub_6D924(v21);
  }

  v50 = sub_307D88();
  if (v51)
  {
    v89 = v50;
    v90 = v51;
    sub_E504();
    v52 = sub_3063C8();
    v54 = v53;
    v56 = v55;
    if (qword_3FAAB0 != -1)
    {
      swift_once();
    }

    v57 = sub_3020D8();
    __swift_project_value_buffer(v57, qword_4033C8);
    v58 = sub_306308();
    v60 = v59;
    v62 = v61;
    sub_EBC8(v52, v54, v56 & 1);

    sub_306898();
    v63 = sub_306338();
    v65 = v64;
    v67 = v66;
    v69 = v68;

    sub_EBC8(v58, v60, v62 & 1);

    KeyPath = swift_getKeyPath();
    v71 = v67 & 1;
    sub_EBD8(v63, v65, v67 & 1);

    v72 = 2;
  }

  else
  {
    v63 = 0;
    v65 = 0;
    v71 = 0;
    v69 = 0;
    KeyPath = 0;
    v72 = 0;
  }

  v73 = v40;
  v74 = v86;
  sub_EB00(v73, v86, &qword_4033F0);
  v75 = v87;
  sub_EB00(v74, v87, &qword_4033F0);
  v76 = v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4033F8) + 48);
  sub_E20E0(v63, v65, v71, v69);
  sub_E2130(v63, v65, v71, v69);
  *v76 = v63;
  *(v76 + 8) = v65;
  *(v76 + 16) = v71;
  *(v76 + 24) = v69;
  *(v76 + 32) = KeyPath;
  *(v76 + 40) = v72;
  *(v76 + 48) = 0;
  sub_EB68(v88, &qword_4033F0);
  sub_E2130(v63, v65, v71, v69);
  return sub_EB68(v74, &qword_4033F0);
}

uint64_t sub_10830C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_305AA8();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4033E0);
  return sub_10788C(v3, a1 + *(v4 + 44));
}

unint64_t sub_108364()
{
  result = qword_401E78;
  if (!qword_401E78)
  {
    sub_3055F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_401E78);
  }

  return result;
}

unint64_t sub_1083BC()
{
  result = qword_401EE8;
  if (!qword_401EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_401EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_401EE8);
  }

  return result;
}

uint64_t sub_108448(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1084FC()
{
  sub_111AE0();
  result = sub_30C978();
  v1 = 11.0;
  if (result)
  {
    v1 = 14.0;
  }

  qword_403410 = *&v1;
  return result;
}

uint64_t sub_108540()
{
  v0 = sub_3071E8();
  __swift_allocate_value_buffer(v0, qword_403418);
  __swift_project_value_buffer(v0, qword_403418);
  return sub_307198();
}

double sub_10859C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_3055F8();
  __chkstk_darwin(v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_305A08();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v53 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4035C0);
  __chkstk_darwin(v56);
  v10 = &v53 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403628);
  __chkstk_darwin(v57);
  v58 = &v53 - v11;
  v59 = sub_305BD8();
  v76 = 1;
  sub_108C34(&v61);
  v87 = v71;
  v88 = v72;
  v89 = v73;
  v83 = v67;
  v84 = v68;
  v85 = v69;
  v86 = v70;
  v79 = v63;
  v80 = v64;
  v81 = v65;
  v82 = v66;
  v77 = v61;
  v78 = v62;
  v91[10] = v71;
  v91[11] = v72;
  v91[12] = v73;
  v91[6] = v67;
  v91[7] = v68;
  v91[8] = v69;
  v91[9] = v70;
  v91[2] = v63;
  v91[3] = v64;
  v91[4] = v65;
  v91[5] = v66;
  v90 = v74;
  v92 = v74;
  v91[0] = v61;
  v91[1] = v62;
  sub_EB00(&v77, &v60, &qword_4035B8);
  sub_EB68(v91, &qword_4035B8);
  *(&v75[10] + 7) = v87;
  *(&v75[11] + 7) = v88;
  *(&v75[12] + 7) = v89;
  *(&v75[6] + 7) = v83;
  *(&v75[7] + 7) = v84;
  *(&v75[8] + 7) = v85;
  *(&v75[9] + 7) = v86;
  *(&v75[2] + 7) = v79;
  *(&v75[3] + 7) = v80;
  *(&v75[4] + 7) = v81;
  *(&v75[5] + 7) = v82;
  *(v75 + 7) = v77;
  *(&v75[13] + 7) = v90;
  *(&v75[1] + 7) = v78;
  v12 = v76;
  v13 = *(v2 + 40);
  if (*(v2 + 48) != 1)
  {

    sub_30C7A8();
    v14 = sub_306088();
    sub_304108();

    v15 = v53;
    sub_3059F8();
    swift_getAtKeyPath();
    sub_111DE0(v13, 0);
    (*(v54 + 8))(v15, v55);
    LOBYTE(v13) = v61;
  }

  v16 = *(v4 + 20);
  v17 = enum case for RoundedCornerStyle.continuous(_:);
  v18 = sub_305B68();
  (*(*(v18 - 8) + 104))(&v6[v16], v17, v18);
  __asm { FMOV            V0.2D, #10.0 }

  *v6 = _Q0;
  if (*(v2 + *(type metadata accessor for TopResultCell() + 40)) == 1 && (v13 & 1) != 0)
  {
    v24 = sub_306828();
  }

  else
  {
    v24 = sub_306868();
  }

  v25 = v24;
  sub_1129DC(v6, v10, &type metadata accessor for RoundedRectangle);
  v26 = v56;
  *&v10[*(v56 + 52)] = v25;
  *&v10[*(v26 + 56)] = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC538);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_315420;
  v28 = sub_3060F8();
  *(v27 + 32) = v28;
  v29 = sub_306118();
  *(v27 + 33) = v29;
  v30 = sub_306108();
  sub_306108();
  if (sub_306108() != v28)
  {
    v30 = sub_306108();
  }

  sub_306108();
  if (sub_306108() != v29)
  {
    v30 = sub_306108();
  }

  sub_304FD8();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = v58;
  sub_34804(v10, v58, &qword_4035C0);
  v40 = v39 + *(v57 + 36);
  *v40 = v30;
  *(v40 + 8) = v32;
  *(v40 + 16) = v34;
  *(v40 + 24) = v36;
  *(v40 + 32) = v38;
  *(v40 + 40) = 0;
  v41 = sub_306C58();
  v43 = v42;
  v44 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4034E8) + 36);
  sub_34804(v39, v44, &qword_403628);
  v45 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_403508) + 36));
  *v45 = v41;
  v45[1] = v43;
  v46 = v75[0];
  *(a1 + 33) = v75[1];
  *(a1 + 17) = v46;
  v47 = v75[4];
  *(a1 + 97) = v75[5];
  *(a1 + 81) = v47;
  v48 = v75[2];
  *(a1 + 65) = v75[3];
  *(a1 + 49) = v48;
  v49 = v75[8];
  *(a1 + 161) = v75[9];
  *(a1 + 145) = v49;
  v50 = v75[6];
  *(a1 + 129) = v75[7];
  *(a1 + 113) = v50;
  *(a1 + 224) = *(&v75[12] + 15);
  *(a1 + 209) = v75[12];
  result = *&v75[11];
  v52 = v75[10];
  *(a1 + 193) = v75[11];
  *a1 = v59;
  *(a1 + 8) = 0;
  *(a1 + 16) = v12;
  *(a1 + 177) = v52;
  return result;
}

uint64_t sub_108C34@<X0>(uint64_t a1@<X8>)
{
  sub_306C58();
  sub_3051F8();
  v2 = v28;
  v3 = v30;
  v4 = v32;
  v5 = v33;
  v41 = 1;
  v40 = v29;
  v39 = v31;
  type metadata accessor for TopResultCell();

  sub_11A340(v6, 2, &v22);
  sub_306C58();
  sub_3051F8();
  v45[2] = v24;
  v45[3] = v25;
  v45[4] = v26;
  v7 = v22;
  v8 = v22;
  v45[0] = v22;
  v45[1] = v23;
  v9 = v25;
  *(a1 + 96) = v24;
  *(a1 + 112) = v9;
  v10 = v25;
  *(a1 + 128) = v26;
  v11 = v23;
  v12 = v23;
  *(a1 + 64) = v7;
  *(a1 + 80) = v11;
  *(a1 + 200) = v38;
  v47[3] = v10;
  v47[4] = v26;
  v47[2] = v24;
  v13 = v34;
  v14 = v35;
  v15 = v36;
  v16 = v37;
  v44 = 1;
  v43 = v35;
  v42 = v37;
  v17 = v41;
  v18 = v40;
  v19 = v39;
  v46 = v27;
  *a1 = 0;
  *(a1 + 8) = v17;
  *(a1 + 16) = v2;
  *(a1 + 24) = v18;
  *(a1 + 32) = v3;
  *(a1 + 40) = v19;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 144) = v27;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1;
  *(a1 + 168) = v13;
  *(a1 + 176) = v14;
  *(a1 + 184) = v15;
  *(a1 + 192) = v16;
  v48 = v27;
  v47[0] = v8;
  v47[1] = v12;
  sub_111C1C(v45, &v21);
  return sub_111C78(v47);
}

uint64_t sub_108DF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v73 = a1;
  v3 = sub_305BA8();
  v71 = *(v3 - 8);
  v72 = v3;
  __chkstk_darwin(v3);
  v70 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_306008();
  v68 = *(v5 - 8);
  v69 = v5;
  __chkstk_darwin(v5);
  v67 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_307048();
  v58 = *(v7 - 8);
  v59 = v7;
  __chkstk_darwin(v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3071E8();
  v56 = *(v10 - 8);
  v57 = v10;
  __chkstk_darwin(v10);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403528);
  __chkstk_darwin(v62);
  v14 = &v55 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4035B0);
  v63 = *(v15 - 8);
  v64 = v15;
  __chkstk_darwin(v15);
  v61 = &v55 - v16;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403510);
  __chkstk_darwin(v66);
  v65 = &v55 - v17;
  v60 = sub_305BD8();
  v90 = 1;
  sub_10969C(&v75);
  v101 = v85;
  v102 = v86;
  v103 = v87;
  v97 = v81;
  v98 = v82;
  v99 = v83;
  v100 = v84;
  v93 = v77;
  v94 = v78;
  v95 = v79;
  v96 = v80;
  v91 = v75;
  v92 = v76;
  v105[10] = v85;
  v105[11] = v86;
  v105[12] = v87;
  v105[6] = v81;
  v105[7] = v82;
  v105[8] = v83;
  v105[9] = v84;
  v105[2] = v77;
  v105[3] = v78;
  v105[4] = v79;
  v105[5] = v80;
  v104 = v88;
  v106 = v88;
  v105[0] = v75;
  v105[1] = v76;
  sub_EB00(&v91, v74, &qword_4035B8);
  sub_EB68(v105, &qword_4035B8);
  *(&v89[10] + 7) = v101;
  *(&v89[11] + 7) = v102;
  *(&v89[12] + 7) = v103;
  *(&v89[6] + 7) = v97;
  *(&v89[7] + 7) = v98;
  *(&v89[8] + 7) = v99;
  *(&v89[9] + 7) = v100;
  *(&v89[2] + 7) = v93;
  *(&v89[3] + 7) = v94;
  *(&v89[4] + 7) = v95;
  *(&v89[5] + 7) = v96;
  v18 = v2;
  *(v89 + 7) = v91;
  *(&v89[13] + 7) = v104;
  *(&v89[1] + 7) = v92;
  v19 = v90;
  type metadata accessor for TopResultCell();
  LOBYTE(v75) = 1;
  sub_307028();
  v20 = [objc_opt_self() currentTraitCollection];
  sub_1098AC(v20, v12);

  (*(v58 + 8))(v9, v59);
  sub_3071B8();
  (*(v56 + 8))(v12, v57);
  sub_306C58();
  sub_3051F8();
  v21 = v62;
  v22 = &v14[*(v62 + 36)];
  v23 = *(sub_3055F8() + 20);
  v24 = enum case for RoundedCornerStyle.continuous(_:);
  v25 = sub_305B68();
  (*(*(v25 - 8) + 104))(&v22[v23], v24, v25);
  __asm { FMOV            V0.2D, #10.0 }

  *v22 = _Q0;
  v31 = [objc_opt_self() quaternarySystemFillColor];
  v32 = sub_30D058();

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4035C0);
  *&v22[*(v33 + 52)] = v32;
  *&v22[*(v33 + 56)] = 256;
  v34 = sub_306C58();
  v36 = v35;
  v37 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_403550) + 36)];
  *v37 = v34;
  v37[1] = v36;
  v38 = v89[0];
  *(v14 + 33) = v89[1];
  *(v14 + 17) = v38;
  v39 = v89[4];
  *(v14 + 97) = v89[5];
  *(v14 + 81) = v39;
  v40 = v89[2];
  *(v14 + 65) = v89[3];
  *(v14 + 49) = v40;
  v41 = v89[8];
  *(v14 + 161) = v89[9];
  *(v14 + 145) = v41;
  v42 = v89[6];
  *(v14 + 129) = v89[7];
  *(v14 + 113) = v42;
  v43 = v75;
  v44 = v76;
  *(v14 + 14) = *(&v89[12] + 15);
  *(v14 + 15) = v43;
  *(v14 + 209) = v89[12];
  v45 = v89[10];
  *(v14 + 193) = v89[11];
  *(v14 + 177) = v45;
  *v14 = v60;
  *(v14 + 1) = 0;
  v14[16] = v19;
  v46 = v77;
  *(v14 + 16) = v44;
  *(v14 + 17) = v46;
  v47 = v67;
  sub_305FE8();
  v48 = sub_11121C();
  v49 = v61;
  sub_306738();
  (*(v68 + 8))(v47, v69);
  sub_EB68(v14, &qword_403528);
  v50 = v70;
  sub_305B88();
  v74[0] = v21;
  v74[1] = v48;
  swift_getOpaqueTypeConformance2();
  v51 = v64;
  v52 = v65;
  sub_306758();
  (*(v71 + 8))(v50, v72);
  v53 = (*(v63 + 8))(v49, v51);
  __chkstk_darwin(v53);
  *(&v55 - 2) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403518);
  sub_111124();
  sub_11138C();
  sub_306728();
  return sub_EB68(v52, &qword_403510);
}

uint64_t sub_10969C@<X0>(uint64_t a1@<X8>)
{
  if (qword_3FAAB8 != -1)
  {
    swift_once();
  }

  sub_306C58();
  sub_3051F8();
  v2 = v35;
  v3 = v37;
  v4 = v39;
  v5 = v40;
  v48 = 1;
  v47 = v36;
  v46 = v38;
  type metadata accessor for TopResultCell();
  sub_309418();
  v6 = swift_dynamicCastClass() == 0;

  sub_11A340(v7, v6, &v22);
  sub_306C58();
  sub_3051F8();
  v8 = v23;
  v31[2] = v24;
  v31[3] = v25;
  v31[4] = v26;
  v9 = v22;
  v31[0] = v22;
  v31[1] = v23;
  v10 = v25;
  *(a1 + 96) = v24;
  *(a1 + 112) = v10;
  v11 = v25;
  *(a1 + 128) = v26;
  v12 = v23;
  *(a1 + 64) = v22;
  *(a1 + 80) = v12;
  *(a1 + 200) = v45;
  v33[3] = v11;
  v33[4] = v26;
  v33[2] = v24;
  v13 = v41;
  v14 = v42;
  v15 = v43;
  v16 = v44;
  v30 = 1;
  v29 = v42;
  v28 = v44;
  v17 = v48;
  v18 = v47;
  v19 = v46;
  v32 = v27;
  *a1 = 0;
  *(a1 + 8) = v17;
  *(a1 + 16) = v2;
  *(a1 + 24) = v18;
  *(a1 + 32) = v3;
  *(a1 + 40) = v19;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 144) = v27;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1;
  *(a1 + 168) = v13;
  *(a1 + 176) = v14;
  *(a1 + 184) = v15;
  *(a1 + 192) = v16;
  v34 = v27;
  v33[0] = v9;
  v33[1] = v8;
  sub_111C1C(v31, v21);
  return sub_111C78(v33);
}

uint64_t sub_1098AC@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  sub_307038();
  v4 = sub_3070F8();
  v6 = v5;
  if (v4 == sub_3070F8() && v6 == v7)
  {

    goto LABEL_6;
  }

  v8 = sub_30D728();

  if ((v8 & 1) != 0 || [a1 horizontalSizeClass] == &dword_0 + 2)
  {
LABEL_6:
    v9 = [a1 preferredContentSizeCategory];
    v10 = sub_30C0D8();
    v12 = v11;
    if (v10 != sub_30C0D8() || v12 != v13)
    {
      v15 = sub_30D728();

      if (v15)
      {
        goto LABEL_33;
      }

      v17 = sub_30C0D8();
      v19 = v18;
      if (v17 != sub_30C0D8() || v19 != v20)
      {
        v24 = sub_30D728();

        if (v24)
        {
          goto LABEL_33;
        }

        v25 = sub_30C0D8();
        v27 = v26;
        if (v25 != sub_30C0D8() || v27 != v28)
        {
          v29 = sub_30D728();

          if (v29)
          {
            goto LABEL_33;
          }

          v30 = sub_30C0D8();
          v32 = v31;
          if (v30 != sub_30C0D8() || v32 != v33)
          {
            v34 = sub_30D728();

            if (v34)
            {
LABEL_33:

              goto LABEL_13;
            }

            v35 = sub_30C0D8();
            v37 = v36;
            if (v35 != sub_30C0D8() || v37 != v38)
            {
              sub_30D728();

              goto LABEL_13;
            }
          }
        }
      }
    }

LABEL_13:

    return sub_307198();
  }

  if (qword_3FAAC0 != -1)
  {
    swift_once();
  }

  v21 = sub_3071E8();
  v22 = __swift_project_value_buffer(v21, qword_403418);
  v23 = *(*(v21 - 8) + 16);

  return v23(a2, v22, v21);
}

uint64_t sub_109CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_305A08();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);

  if ((v9 & 1) == 0)
  {
    sub_30C7A8();
    v10 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v8 = v12;
  }

  type metadata accessor for TopResultCell();
  v12 = 0;
  v13 = 1;

  return sub_2268C0(v8, &v12, a2);
}

uint64_t sub_109E80@<X0>(uint64_t a1@<X8>)
{
  if (qword_3FAAB8 != -1)
  {
    swift_once();
  }

  sub_306C58();
  sub_305638();
  *&v4[55] = v8;
  *&v4[71] = v9;
  *&v4[87] = v10;
  *&v4[103] = v11;
  *&v4[7] = v5;
  *&v4[23] = v6;
  *&v4[39] = v7;
  type metadata accessor for TopResultCell();
  sub_309548();
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    sub_111F64();
    sub_111FB8();
    swift_retain_n();

    sub_305D48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4035E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403600);
    sub_111ED8();
    sub_11200C();
    sub_305D48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4035C8);
    sub_111E4C();
    sub_112140();
    sub_305D48();
  }

  else
  {
    sub_309418();
    if (swift_dynamicCastClass())
    {
      sub_111F64();
      sub_111FB8();
      swift_retain_n();
      sub_305D48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4035E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403600);
      sub_111ED8();
      sub_11200C();
      sub_305D48();
    }

    else
    {
      sub_309A48();
      if (!swift_dynamicCastClass())
      {
        sub_30AA68();
        if (!swift_dynamicCastClass())
        {
          swift_getKeyPath();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4035C8);
          sub_111E4C();
          sub_112140();
          sub_305D48();
          goto LABEL_12;
        }
      }

      sub_112098();
      sub_1120EC();
      swift_retain_n();
      sub_305D48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4035E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403600);
      sub_111ED8();
      sub_11200C();
      sub_305D48();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4035C8);
    sub_111E4C();
    sub_112140();
    sub_305D48();
  }

LABEL_12:
  sub_112D14(v12, *(&v12 + 1), v13, SWORD4(v13), SBYTE10(v13));
  sub_306C58();
  sub_305638();
  *&v3[55] = v15;
  *&v3[71] = v16;
  *&v3[87] = v17;
  *&v3[103] = v18;
  *&v3[7] = v12;
  *&v3[23] = v13;
  *&v3[39] = v14;
  sub_112D14(v12, *(&v12 + 1), v13, SWORD4(v13), SBYTE10(v13));
  sub_112DD8(v12, *(&v12 + 1), v13, SWORD4(v13), SBYTE10(v13));
  *(a1 + 73) = *&v4[64];
  *(a1 + 89) = *&v4[80];
  *(a1 + 105) = *&v4[96];
  *(a1 + 9) = *v4;
  *(a1 + 25) = *&v4[16];
  *(a1 + 41) = *&v4[32];
  *(a1 + 57) = *&v4[48];
  *(a1 + 233) = *&v3[64];
  *(a1 + 249) = *&v3[80];
  *(a1 + 265) = *&v3[96];
  *(a1 + 169) = *v3;
  *(a1 + 185) = *&v3[16];
  *(a1 + 201) = *&v3[32];
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 120) = *(&v11 + 1);
  *(a1 + 128) = v12;
  *(a1 + 144) = v13;
  *(a1 + 152) = WORD4(v13);
  *(a1 + 154) = BYTE10(v13);
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  *(a1 + 280) = *(&v18 + 1);
  *(a1 + 217) = *&v3[48];
  return sub_112DD8(v12, *(&v12 + 1), v13, SWORD4(v13), SBYTE10(v13));
}

uint64_t sub_10A61C@<X0>(uint64_t a1@<X8>)
{
  v106 = a1;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403468);
  __chkstk_darwin(v87);
  v2 = &v75 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403470);
  v88 = *(v3 - 8);
  v89 = v3;
  __chkstk_darwin(v3);
  v86 = &v75 - v4;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403478);
  __chkstk_darwin(v91);
  v90 = (&v75 - v5);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403480);
  __chkstk_darwin(v105);
  v92 = &v75 - v6;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403488);
  __chkstk_darwin(v103);
  v104 = &v75 - v7;
  v8 = sub_305A78();
  v83 = *(v8 - 8);
  v84 = v8;
  __chkstk_darwin(v8);
  v82 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403490);
  __chkstk_darwin(v97);
  v85 = &v75 - v10;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403498);
  __chkstk_darwin(v95);
  v96 = &v75 - v11;
  v12 = sub_3071E8();
  v100 = *(v12 - 8);
  v101 = v12;
  __chkstk_darwin(v12);
  v98 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_305BA8();
  v14 = *(v99 - 8);
  __chkstk_darwin(v99);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_306008();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4034A0);
  v76 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v75 - v22;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4034A8);
  v77 = *(v80 - 8);
  __chkstk_darwin(v80);
  v25 = &v75 - v24;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4034B0);
  __chkstk_darwin(v79);
  v78 = &v75 - v26;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4034B8);
  __chkstk_darwin(v93);
  v81 = &v75 - v27;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4034C0);
  __chkstk_darwin(v102);
  v94 = &v75 - v28;
  if (sub_303098())
  {
    v91 = v17;
    v92 = v16;
    v90 = v14;
    v29 = type metadata accessor for TopResultCell();
    if (*(v107 + *(v29 + 36)) == 1 && ((v30 = v29, sub_111AE0(), (sub_30C978() & 1) != 0) || (v31 = [objc_opt_self() currentTraitCollection], v32 = v30, v33 = objc_msgSend(v31, "horizontalSizeClass"), v31, v34 = v33 == &dword_0 + 2, v30 = v32, v34)))
    {
      v89 = v30;
      sub_108DF8(v23);
      sub_305FE8();
      v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403510);
      v36 = v25;
      v37 = v21;
      v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403518);
      v107 = v38;
      v39 = sub_111124();
      v88 = sub_11138C();
      *&v113[0] = v35;
      *(&v113[0] + 1) = v38;
      *&v113[1] = v39;
      *(&v113[1] + 1) = v88;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      sub_306738();
      (*(v18 + 8))(v20, v91);
      (*(v76 + 8))(v23, v37);
      v41 = v92;
      sub_305B88();
      *&v113[0] = v37;
      *(&v113[0] + 1) = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v42 = v78;
      v43 = v80;
      sub_306758();
      v90[1](v41, v99);
      v44 = (*(v77 + 8))(v36, v43);
      __chkstk_darwin(v44);
      sub_1116A4();
      v45 = v81;
      sub_306728();
      sub_EB68(v42, &qword_4034B0);
      v46 = [objc_opt_self() currentTraitCollection];
      v47 = v98;
      sub_1098AC(v46, v98);

      sub_3071B8();
      (*(v100 + 8))(v47, v101);
      sub_306C58();
      sub_3051F8();
      v48 = (v45 + *(v93 + 36));
      v49 = v113[1];
      *v48 = v113[0];
      v48[1] = v49;
      v48[2] = v113[2];
      v50 = &qword_4034B8;
      sub_EB00(v45, v96, &qword_4034B8);
      swift_storeEnumTagMultiPayload();
      sub_1115B0();
      sub_11180C();
      v51 = v94;
      sub_305D48();
      v52 = v45;
    }

    else
    {
      v67 = sub_305BD8();
      v110 = 1;
      sub_109E80(v113);
      memcpy(v111, v113, sizeof(v111));
      memcpy(v112, v113, sizeof(v112));
      sub_EB00(v111, v108, &qword_4035A8);
      sub_EB68(v112, &qword_4035A8);
      memcpy(&v109[7], v111, 0x120uLL);
      v108[0] = v67;
      v108[1] = 0;
      LOBYTE(v108[2]) = v110;
      memcpy(&v108[2] + 1, v109, 0x127uLL);
      v68 = v82;
      v69 = sub_305A68();
      __chkstk_darwin(v69);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403588);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB800);
      sub_EC8C(&qword_403590, &qword_403588);
      sub_111934();
      v70 = v85;
      sub_306598();
      (*(v83 + 8))(v68, v84);
      memcpy(v113, v108, 0x138uLL);
      sub_EB68(v113, &qword_403588);
      KeyPath = swift_getKeyPath();
      v72 = v96;
      v73 = v70 + *(v97 + 36);
      *v73 = KeyPath;
      *(v73 + 8) = 0;
      *(v73 + 16) = 0;
      v50 = &qword_403490;
      sub_EB00(v70, v72, &qword_403490);
      swift_storeEnumTagMultiPayload();
      sub_1115B0();
      sub_11180C();
      v51 = v94;
      sub_305D48();
      v52 = v70;
    }

    sub_EB68(v52, v50);
    v65 = &qword_4034C0;
    sub_EB00(v51, v104, &qword_4034C0);
    swift_storeEnumTagMultiPayload();
    sub_111524();
    sub_1119E4();
    sub_305D48();
    v66 = v51;
  }

  else
  {
    sub_10BAF0(v107);
    sub_305FE8();
    v53 = sub_110EC0();
    v55 = v86;
    v54 = v87;
    sub_306738();
    (*(v18 + 8))(v20, v17);
    sub_EB68(v2, &qword_403468);
    sub_305B88();
    *&v113[0] = v54;
    *(&v113[0] + 1) = v53;
    swift_getOpaqueTypeConformance2();
    v56 = v89;
    v57 = v90;
    sub_306758();
    v14[1](v16, v99);
    v58 = (*(v88 + 8))(v55, v56);
    __chkstk_darwin(v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403518);
    sub_11142C();
    sub_11138C();
    v59 = v92;
    sub_306728();
    sub_EB68(v57, &qword_403478);
    type metadata accessor for TopResultCell();
    v60 = [objc_opt_self() currentTraitCollection];
    v61 = v98;
    sub_1098AC(v60, v98);

    sub_3071B8();
    (*(v100 + 8))(v61, v101);
    sub_306C58();
    sub_3051F8();
    v62 = v104;
    v63 = (v59 + *(v105 + 36));
    v64 = v113[1];
    *v63 = v113[0];
    v63[1] = v64;
    v63[2] = v113[2];
    v65 = &qword_403480;
    sub_EB00(v59, v62, &qword_403480);
    swift_storeEnumTagMultiPayload();
    sub_111524();
    sub_1119E4();
    sub_305D48();
    v66 = v59;
  }

  return sub_EB68(v66, v65);
}

uint64_t sub_10B5DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TopResultCell();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD678);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB808);
  v13.n128_f64[0] = __chkstk_darwin(v11);
  v15 = &v27 - v14;
  if (*(a1 + *(v5 + 44)) == 1)
  {
    v27 = v6;
    v28 = v12;
    v16 = [objc_opt_self() mainBundle];
    v26._countAndFlagsBits = 0xE000000000000000;
    v32._object = 0x800000000033B2A0;
    v32._countAndFlagsBits = 0xD00000000000001DLL;
    v33.value._countAndFlagsBits = 0;
    v33.value._object = 0;
    v17.super.isa = v16;
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    v18 = sub_301AB8(v32, v33, v17, v34, v26);
    v20 = v19;

    v29 = v18;
    v30 = v20;
    sub_304FA8();
    v21 = sub_304FC8();
    (*(*(v21 - 8) + 56))(v10, 0, 1, v21);
    sub_112A8C(a1, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TopResultCell);
    v22 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v23 = swift_allocObject();
    sub_1129DC(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for TopResultCell);
    sub_E504();
    sub_306A78();
    (*(v28 + 32))(a2, v15, v11);
    return (*(v28 + 56))(a2, 0, 1, v11);
  }

  else
  {
    v25 = *(v12 + 56);

    return v25(a2, 1, 1, v11, v13);
  }
}

uint64_t sub_10B968(uint64_t a1)
{
  v2 = sub_305A08();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);

  if ((v6 & 1) == 0)
  {
    sub_30C7A8();
    v7 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_30A5A8();
  sub_30B8E8();

  type metadata accessor for TopResultCell();
  sub_30A598();
}

uint64_t sub_10BAF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4034A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403620);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4034E8);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  if (*(a1 + *(type metadata accessor for TopResultCell() + 40)) == 1)
  {
    sub_10859C(v11);
    sub_EB00(v11, v8, &qword_4034E8);
    swift_storeEnumTagMultiPayload();
    sub_111040();
    v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403510);
    v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403518);
    v14 = sub_111124();
    v15 = sub_11138C();
    v21 = v12;
    v22 = v13;
    v23 = v14;
    v24 = v15;
    swift_getOpaqueTypeConformance2();
    sub_305D48();
    return sub_EB68(v11, &qword_4034E8);
  }

  else
  {
    sub_108DF8(v5);
    (*(v3 + 16))(v8, v5, v2);
    swift_storeEnumTagMultiPayload();
    sub_111040();
    v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403510);
    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403518);
    v19 = sub_111124();
    v20 = sub_11138C();
    v21 = v17;
    v22 = v18;
    v23 = v19;
    v24 = v20;
    swift_getOpaqueTypeConformance2();
    sub_305D48();
    return (*(v3 + 8))(v5, v2);
  }
}

double sub_10BE2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_305A08();
  v29 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEA58);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - v8;
  v10 = sub_309778();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v30 = &v29 - v15;
  type metadata accessor for TopResultCell();
  sub_309548();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_4;
  }

  swift_retain_n();
  sub_309758();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_EB68(v9, &qword_3FEA58);
LABEL_4:
    *(a2 + 80) = 0;
    result = 0.0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return result;
  }

  (*(v11 + 32))(v30, v9, v10);
  v17 = *(a1 + 24);
  v18 = *(a1 + 32);

  if ((v18 & 1) == 0)
  {
    sub_30C7A8();
    v19 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v29 + 8))(v6, v4);
    v17 = v31;
  }

  (*(v11 + 16))(v13, v30, v10);
  *&v35 = 0;
  *v32 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F60);

  sub_30B8E8();
  *&v32[8] = v31;
  sub_309728();
  *(&v35 + 1) = 0;
  v36 = 1;
  v20 = sub_309738();
  if (v22 == -1)
  {
  }

  else
  {
    v23 = v20;
    v24 = v21;
    v25 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDD0);
    sub_30B9A8();
    sub_30BE78();

    *&v35 = sub_303AF8();
    sub_303AE8();

    sub_E1BCC(v23, v24, v25);
  }

  v26 = *(v11 + 8);
  v26(v13, v10);
  v26(v30, v10);
  v27 = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v27;
  *(a2 + 64) = v35;
  *(a2 + 80) = v36;
  result = *v32;
  v28 = *&v32[16];
  *a2 = *v32;
  *(a2 + 16) = v28;
  return result;
}

uint64_t sub_10C2BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = swift_getKeyPath();
  *(a3 + 32) = 0;
  *(a3 + 40) = swift_getKeyPath();
  *(a3 + 48) = 0;
  v6 = type metadata accessor for TopResultCell();
  v7 = v6[7];
  v8 = sub_307048();
  v9 = *(v8 - 8);
  (*(v9 + 16))(a3 + v7, a1, v8);
  *(a3 + v6[8]) = a2;

  sub_307038();
  v10 = sub_3070F8();
  v12 = v11;
  if (v10 == sub_3070F8() && v12 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_30D728();
  }

  *(a3 + v6[9]) = v14 & 1;
  sub_307038();
  v15 = sub_3070F8();
  v17 = v16;
  if (v15 == sub_3070F8() && v17 == v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_30D728();
  }

  result = (*(v9 + 8))(a1, v8);
  *(a3 + v6[10]) = v19 & 1;
  return result;
}

uint64_t sub_10C4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_112A44(&qword_403630, type metadata accessor for TopResultCell);

  return ShelfSwiftUICell.init(presentation:model:)(a1, a2, a3, v6);
}

uint64_t sub_10C54C()
{
  sub_307038();
  v0 = sub_3070F8();
  v2 = v1;
  if (v0 == sub_3070F8() && v2 == v3)
  {
  }

  else
  {
    v4 = sub_30D728();

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  if (sub_307238())
  {
    return 0;
  }

  return 0x4024000000000000;
}

uint64_t sub_10C618()
{
  if (sub_307038() == 64)
  {
    return sub_307248() & 1;
  }

  else
  {
    return 0;
  }
}

void *sub_10C66C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_305BD8();
  v9 = 1;
  sub_10C784(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v11, __src, sizeof(v11));
  sub_EB00(__dst, v6, &qword_403800);
  sub_EB68(v11, &qword_403800);
  memcpy(&v8[7], __dst, 0x120uLL);
  v3 = v9;
  KeyPath = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  result = memcpy((a1 + 17), v8, 0x127uLL);
  *(a1 + 312) = KeyPath;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  return result;
}

uint64_t sub_10C784@<X0>(uint64_t a1@<X8>)
{
  if (qword_3FAAB8 != -1)
  {
    swift_once();
  }

  sub_306C58();
  sub_305638();
  *&v4[55] = v8;
  *&v4[71] = v9;
  *&v4[87] = v10;
  *&v4[103] = v11;
  *&v4[7] = v5;
  *&v4[23] = v6;
  *&v4[39] = v7;
  sub_309548();
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    sub_111F64();
    sub_112C6C();
    swift_retain_n();

    sub_305D48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403820);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403600);
    sub_112BE0();
    sub_11200C();
    sub_305D48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403808);
    sub_112B54();
    sub_112CC0();
    sub_305D48();
  }

  else
  {
    sub_309418();
    if (swift_dynamicCastClass())
    {
      sub_111F64();
      sub_112C6C();
      swift_retain_n();
      sub_305D48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403820);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403600);
      sub_112BE0();
      sub_11200C();
      sub_305D48();
    }

    else
    {
      sub_309A48();
      if (!swift_dynamicCastClass())
      {
        sub_30AA68();
        if (!swift_dynamicCastClass())
        {
          swift_getKeyPath();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403808);
          sub_112B54();
          sub_112CC0();
          sub_305D48();
          goto LABEL_12;
        }
      }

      sub_112098();
      sub_1120EC();
      swift_retain_n();
      sub_305D48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403820);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403600);
      sub_112BE0();
      sub_11200C();
      sub_305D48();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403808);
    sub_112B54();
    sub_112CC0();
    sub_305D48();
  }

LABEL_12:
  sub_112D14(v12, *(&v12 + 1), v13, SWORD4(v13), SBYTE10(v13));
  sub_306C58();
  sub_305638();
  *&v3[55] = v15;
  *&v3[71] = v16;
  *&v3[87] = v17;
  *&v3[103] = v18;
  *&v3[7] = v12;
  *&v3[23] = v13;
  *&v3[39] = v14;
  sub_112D14(v12, *(&v12 + 1), v13, SWORD4(v13), SBYTE10(v13));
  sub_112DD8(v12, *(&v12 + 1), v13, SWORD4(v13), SBYTE10(v13));
  *(a1 + 73) = *&v4[64];
  *(a1 + 89) = *&v4[80];
  *(a1 + 105) = *&v4[96];
  *(a1 + 9) = *v4;
  *(a1 + 25) = *&v4[16];
  *(a1 + 41) = *&v4[32];
  *(a1 + 57) = *&v4[48];
  *(a1 + 233) = *&v3[64];
  *(a1 + 249) = *&v3[80];
  *(a1 + 265) = *&v3[96];
  *(a1 + 169) = *v3;
  *(a1 + 185) = *&v3[16];
  *(a1 + 201) = *&v3[32];
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 120) = *(&v11 + 1);
  *(a1 + 128) = v12;
  *(a1 + 144) = v13;
  *(a1 + 152) = WORD4(v13);
  *(a1 + 154) = BYTE10(v13);
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  *(a1 + 280) = *(&v18 + 1);
  *(a1 + 217) = *&v3[48];
  return sub_112DD8(v12, *(&v12 + 1), v13, SWORD4(v13), SBYTE10(v13));
}

uint64_t sub_10CF28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_307048();
  (*(*(v6 - 8) + 8))(a1, v6);
  v7 = *a2;
  result = swift_getKeyPath();
  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_10CFAC()
{
  sub_309548();
  if (swift_dynamicCastClass())
  {
    return 2;
  }

  else
  {
    return 7;
  }
}

uint64_t sub_10CFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_112E9C();

  return ShelfSwiftUICell.init(presentation:model:)(a1, a2, a3, v6);
}

id sub_10D054(double a1, double a2, double a3, double a4)
{
  v8 = [objc_allocWithZone(UIPreviewParameters) init];
  v9 = [objc_opt_self() bezierPathWithRoundedRect:a1 cornerRadius:{a2, a3, a4, 16.0}];
  [v8 setVisiblePath:v9];

  v10 = [objc_opt_self() systemBackgroundColor];
  [v8 setBackgroundColor:v10];

  return v8;
}

uint64_t sub_10D13C@<X0>(uint64_t a1@<X8>)
{
  if (qword_3FAAC0 != -1)
  {
    swift_once();
  }

  v2 = sub_3071E8();
  v3 = __swift_project_value_buffer(v2, qword_403418);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10D1E4()
{
  v0 = sub_307278();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3072C8();
  v5 = __chkstk_darwin(v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = 256;
  (*(v8 + 104))(v7, enum case for ShelfCellListSeparatorMode.Placement.custom(_:), v5);
  (*(v1 + 104))(v3, enum case for ShelfCellListSeparatorMode.Layout.default(_:), v0);
  return sub_3072D8();
}

unint64_t sub_10D368()
{
  result = qword_403430;
  if (!qword_403430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403430);
  }

  return result;
}

unint64_t sub_10D3BC()
{
  result = qword_403438;
  if (!qword_403438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403438);
  }

  return result;
}

uint64_t type metadata accessor for TopResultCell()
{
  result = qword_403690;
  if (!qword_403690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10D5E0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a3;
  v40 = a4;
  v6 = sub_306008();
  v36 = *(v6 - 8);
  v37 = v6;
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403708);
  __chkstk_darwin(v34);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403710);
  v12 = *(v11 - 8);
  v38 = v11;
  v39 = v12;
  __chkstk_darwin(v11);
  v31 = &v29 - v13;
  v14 = sub_305088();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403718);
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v19 = &v29 - v18;
  sub_305078();
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  v21 = a2 & 1;
  *(v20 + 24) = v21;
  v22 = v32;
  *(v20 + 32) = v32;
  v29 = a1;

  v30 = v19;
  sub_306B58();

  (*(v15 + 8))(v17, v14);
  *v10 = sub_305AA8();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403720);
  sub_10DC20(a1, v21, v22, v19, &v10[*(v23 + 44)]);
  sub_305FE8();
  v24 = sub_EC8C(&qword_403728, &qword_403708);
  v25 = v31;
  v26 = v34;
  sub_306738();
  (*(v36 + 8))(v8, v37);
  sub_EB68(v10, &qword_403708);
  v41 = v29;
  v42 = v21;
  v43 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403518);
  v44 = v26;
  v45 = v24;
  swift_getOpaqueTypeConformance2();
  sub_11138C();
  v27 = v38;
  sub_306728();
  (*(v39 + 8))(v25, v27);
  return (*(v33 + 8))(v30, v35);
}

uint64_t sub_10DAA8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_305A08();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a3 & 1) == 0)
  {
    sub_30C7A8();
    v8 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
  }

  sub_30A5A8();
  sub_30B8E8();

  sub_30A578();
}

uint64_t sub_10DC20@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v92 = a4;
  LODWORD(v6) = a2;
  v98 = a5;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403730);
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v77 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403738);
  __chkstk_darwin(v9 - 8);
  v97 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v96 = &v77 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEC50);
  __chkstk_darwin(v13 - 8);
  v85 = &v77 - v14;
  v99 = type metadata accessor for TranscriptSearchResultView();
  __chkstk_darwin(v99);
  v84 = (&v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403740);
  __chkstk_darwin(v89);
  v90 = (&v77 - v16);
  v88 = sub_305A08();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401718);
  __chkstk_darwin(v18 - 8);
  v20 = &v77 - v19;
  v21 = sub_301A78();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v77 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403748);
  __chkstk_darwin(v28 - 8);
  v91 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v100 = &v77 - v31;
  swift_retain_n();
  sub_3094C8();
  v32 = (*(v22 + 48))(v20, 1, v21);

  if (v32 == 1)
  {
    sub_EB68(v20, &qword_401718);

    if ((v6 & 1) == 0)
    {
      sub_30C7A8();
      v34 = sub_306088();
      sub_304108();

      v35 = v86;
      sub_3059F8();
      swift_getAtKeyPath();

      (*(v87 + 8))(v35, v88);
      v33 = v103[0];
    }

    sub_103D78(v33, a3, v104);
    v36 = v104[1];
    v37 = v90;
    *v90 = v104[0];
    v37[1] = v36;
    v37[2] = v104[2];
    swift_storeEnumTagMultiPayload();
    sub_112A44(&qword_403750, type metadata accessor for TranscriptSearchResultView);
    sub_1127E8();
    sub_305D48();
  }

  else
  {
    v81 = v24;
    v38 = v27;
    v39 = v22;
    v40 = *(v22 + 32);
    v41 = v38;
    v42 = v21;
    v40();

    v43 = a1;
    v82 = v6;
    if ((v6 & 1) == 0)
    {
      sub_30C7A8();
      v44 = sub_306088();
      sub_304108();

      v45 = v86;
      sub_3059F8();
      swift_getAtKeyPath();

      (*(v87 + 8))(v45, v88);
      v43 = v103[0];
    }

    v79 = v39;
    v46 = *(v39 + 16);
    v47 = v81;
    v80 = v41;
    v48 = v42;
    v78 = v42;
    v46(v81, v41, v42);
    v49 = v84;
    *v84 = v43;
    v49[3] = a3;
    v46(v49 + *(v99 + 28), v47, v48);
    sub_30A478();
    v50 = sub_303748();
    v51 = v85;
    (*(*(v50 - 8) + 56))(v85, 1, 1, v50);
    v6 = enum case for EyebrowBuilder.ListContext.episodeSearchResult(_:);
    v52 = sub_3033A8();
    v53 = *(v52 - 8);
    v83 = a1;
    v54 = v53;
    (*(v53 + 104))(v51, v6, v52);
    (*(v54 + 56))(v51, 0, 1, v52);

    sub_30A458();
    sub_112A44(&qword_3FEC58, &type metadata accessor for EpisodeCaptionGenerator);
    v55 = sub_3053C8();
    v57 = v56;
    v58 = *(v79 + 8);
    v59 = v47;
    v60 = v78;
    v58(v59, v78);
    v49[1] = v55;
    v49[2] = v57;
    a1 = v83;
    sub_112A8C(v49, v90, type metadata accessor for TranscriptSearchResultView);
    swift_storeEnumTagMultiPayload();
    sub_112A44(&qword_403750, type metadata accessor for TranscriptSearchResultView);
    sub_1127E8();
    sub_305D48();
    sub_112AF4(v49, type metadata accessor for TranscriptSearchResultView);
    v58(v80, v60);
    LOBYTE(v6) = v82;
  }

  if ((v6 & 1) == 0)
  {
    sub_30C7A8();
    v61 = sub_306088();
    sub_304108();

    v62 = v86;
    sub_3059F8();
    swift_getAtKeyPath();

    (*(v87 + 8))(v62, v88);
    a1 = v103[0];
  }

  v101 = 0;
  v102 = 1;
  sub_2268C0(a1, &v101, v103);
  sub_3050D8();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403518);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403718);
  v65 = sub_11138C();
  v66 = sub_EC8C(&qword_403760, &qword_403718);
  v67 = v93;
  sub_306718();
  sub_EB68(v103, &qword_403518);
  v103[0] = v63;
  v103[1] = v64;
  v103[2] = v65;
  v103[3] = v66;
  swift_getOpaqueTypeConformance2();
  v68 = v96;
  v69 = v95;
  sub_3066F8();
  (*(v94 + 8))(v67, v69);
  v70 = v100;
  v71 = v91;
  sub_EB00(v100, v91, &qword_403748);
  v72 = v97;
  sub_EB00(v68, v97, &qword_403738);
  v73 = v98;
  sub_EB00(v71, v98, &qword_403748);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403768);
  v75 = v73 + *(v74 + 48);
  *v75 = 0;
  *(v75 + 8) = 1;
  sub_EB00(v72, v73 + *(v74 + 64), &qword_403738);
  sub_EB68(v68, &qword_403738);
  sub_EB68(v70, &qword_403748);
  sub_EB68(v72, &qword_403738);
  return sub_EB68(v71, &qword_403748);
}

uint64_t sub_10E8A8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_305A08();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_30C7A8();
    v10 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    a1 = v12;
  }

  v12 = 0;
  v13 = 1;

  return sub_2268C0(a1, &v12, a3);
}

uint64_t sub_10EA34@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v78 = a2;
  v77 = a1;
  v92 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4037E0);
  __chkstk_darwin(v3 - 8);
  v81 = &v72 - v4;
  v5 = sub_309D48();
  v79 = *(v5 - 8);
  v80 = v5;
  __chkstk_darwin(v5);
  v75 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v76 = &v72 - v8;
  __chkstk_darwin(v9);
  v86 = &v72 - v10;
  v91 = type metadata accessor for SearchResultFollowButton();
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v85 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  __chkstk_darwin(v12 - 8);
  v82 = &v72 - v13;
  v74 = sub_305A08();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4037E8);
  __chkstk_darwin(v15 - 8);
  v90 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v84 = &v72 - v18;
  __chkstk_darwin(v19);
  v88 = &v72 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v21 - 8);
  v23 = &v72 - v22;
  v24 = type metadata accessor for StandardSearchResultView();
  v25 = (v24 - 8);
  __chkstk_darwin(v24);
  v87 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v72 - v28;
  __chkstk_darwin(v30);
  v32 = &v72 - v31;
  sub_307DA8();
  v33 = sub_307D88();
  if (v34)
  {
    v35 = v33;
  }

  else
  {
    v35 = 0;
  }

  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = 0xE000000000000000;
  }

  v37 = sub_11283C();
  if (v38)
  {
    v39 = v37;
  }

  else
  {
    v39 = 0;
  }

  if (v38)
  {
    v40 = v38;
  }

  else
  {
    v40 = 0xE000000000000000;
  }

  v41 = sub_307D08();
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  v42 = v23;
  v43 = v77;
  sub_34804(v42, &v29[v25[7]], &unk_402FF0);
  v44 = &v29[v25[8]];
  *v44 = v35;
  *(v44 + 1) = v36;
  v45 = &v29[v25[9]];
  *v45 = v39;
  *(v45 + 1) = v40;
  v29[v25[10]] = v41 & 1;
  v83 = v32;
  sub_1129DC(v29, v32, type metadata accessor for StandardSearchResultView);

  if ((v78 & 1) == 0)
  {
    sub_30C7A8();
    v46 = sub_306088();
    sub_304108();

    v47 = v72;
    sub_3059F8();
    swift_getAtKeyPath();

    (*(v73 + 8))(v47, v74);
    v43 = v93;
  }

  v48 = sub_307D98();
  sub_307D08();
  v49 = v82;
  sub_307D48();
  v50 = v91;
  v51 = v85;
  v52 = &v85[*(v91 + 36)];
  *v52 = swift_getKeyPath();
  v52[8] = 0;
  v53 = v50[10];
  *(v51 + v53) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC898);
  swift_storeEnumTagMultiPayload();
  *v51 = v48;
  *(v51 + 8) = 0;
  *(v51 + 16) = 0;
  *(v51 + 24) = v43;
  v54 = v50[6];
  sub_EB00(v49, v51 + v54, &unk_400440);

  v55 = v81;
  sub_309D58();
  if ((*(v79 + 48))(v55, 1, v80) == 1)
  {

    sub_EB68(v49, &unk_400440);
    sub_EB68(v55, &qword_4037E0);

    sub_EB68(v51 + v54, &unk_400440);

    sub_EB68(v51 + v53, &qword_3FF458);
    v56 = v84;
    (*(v89 + 56))(v84, 1, 1, v50);
  }

  else
  {
    v57 = v55;
    v58 = v86;
    sub_1129DC(v57, v86, &type metadata accessor for FollowButtonPresenter.Data);
    v59 = v76;
    sub_112A8C(v58, v76, &type metadata accessor for FollowButtonPresenter.Data);
    sub_112A8C(v59, v75, &type metadata accessor for FollowButtonPresenter.Data);
    sub_306A08();
    sub_112AF4(v59, &type metadata accessor for FollowButtonPresenter.Data);
    sub_303B48();
    sub_30B8E8();

    v93 = 0;
    v94 = 0;
    v96 = 0;
    v97 = 0;
    v95 = 2;
    sub_303B38();

    v60 = (v51 + v50[8]);
    sub_3039F8();
    sub_112A44(&qword_3FF130, &type metadata accessor for PodcastStateMachine);
    v61 = sub_3053C8();
    v63 = v62;
    sub_112AF4(v86, &type metadata accessor for FollowButtonPresenter.Data);
    sub_EB68(v49, &unk_400440);
    *v60 = v61;
    v60[1] = v63;
    v56 = v84;
    sub_112A8C(v51, v84, type metadata accessor for SearchResultFollowButton);
    (*(v89 + 56))(v56, 0, 1, v50);
    sub_112AF4(v51, type metadata accessor for SearchResultFollowButton);
  }

  v64 = v88;
  sub_34804(v56, v88, &qword_4037E8);
  v65 = v83;
  v66 = v87;
  sub_112A8C(v83, v87, type metadata accessor for StandardSearchResultView);
  v67 = v90;
  sub_EB00(v64, v90, &qword_4037E8);
  v68 = v92;
  sub_112A8C(v66, v92, type metadata accessor for StandardSearchResultView);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4037F0);
  v70 = v68 + *(v69 + 48);
  *v70 = 0;
  *(v70 + 8) = 1;
  sub_EB00(v67, v68 + *(v69 + 64), &qword_4037E8);
  sub_EB68(v64, &qword_4037E8);
  sub_112AF4(v65, type metadata accessor for StandardSearchResultView);
  sub_EB68(v67, &qword_4037E8);
  return sub_112AF4(v66, type metadata accessor for StandardSearchResultView);
}

uint64_t sub_10F45C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v76 = a2;
  v81 = a1;
  v87 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4037E0);
  __chkstk_darwin(v3 - 8);
  v79 = &v69 - v4;
  v5 = sub_309D48();
  v77 = *(v5 - 8);
  v78 = v5;
  __chkstk_darwin(v5);
  v73 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v74 = &v69 - v8;
  __chkstk_darwin(v9);
  v75 = &v69 - v10;
  v11 = type metadata accessor for SearchResultFollowButton();
  v84 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  __chkstk_darwin(v14 - 8);
  v88 = &v69 - v15;
  v72 = sub_305A08();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4037E8);
  __chkstk_darwin(v17 - 8);
  v86 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v80 = &v69 - v20;
  __chkstk_darwin(v21);
  v83 = &v69 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v23 - 8);
  v25 = &v69 - v24;
  v26 = type metadata accessor for StandardSearchResultView();
  __chkstk_darwin(v26);
  v82 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v69 - v29;
  __chkstk_darwin(v31);
  v89 = &v69 - v32;
  sub_307DA8();
  v33 = sub_307D88();
  if (v34)
  {
    v35 = v33;
  }

  else
  {
    v35 = 0;
  }

  v36 = 0xE000000000000000;
  if (v34)
  {
    v37 = v34;
  }

  else
  {
    v37 = 0xE000000000000000;
  }

  v38 = sub_307DE8();
  v85 = v11;
  if (v38)
  {
    if (v38[2])
    {
      v39 = v38[4];
      v36 = v38[5];
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v39 = 0;
  }

  v40 = sub_307D08();
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  sub_34804(v25, &v30[v26[5]], &unk_402FF0);
  v41 = &v30[v26[6]];
  *v41 = v35;
  *(v41 + 1) = v37;
  v42 = &v30[v26[7]];
  *v42 = v39;
  *(v42 + 1) = v36;
  v30[v26[8]] = v40 & 1;
  sub_1129DC(v30, v89, type metadata accessor for StandardSearchResultView);
  v43 = v81;

  if ((v76 & 1) == 0)
  {
    sub_30C7A8();
    v44 = sub_306088();
    sub_304108();

    v45 = v70;
    sub_3059F8();
    swift_getAtKeyPath();

    (*(v71 + 8))(v45, v72);
    v43 = v90;
  }

  v46 = sub_307D98();
  sub_307D08();
  v47 = v88;
  sub_307D48();
  v48 = v85;
  v49 = &v13[v85[9]];
  *v49 = swift_getKeyPath();
  v49[8] = 0;
  v50 = v48[10];
  *&v13[v50] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC898);
  swift_storeEnumTagMultiPayload();
  *v13 = v46;
  *(v13 + 1) = 0;
  v13[16] = 0;
  *(v13 + 3) = v43;
  v51 = v48[6];
  sub_EB00(v47, &v13[v51], &unk_400440);

  v52 = v79;
  sub_309D58();
  if ((*(v77 + 48))(v52, 1, v78) == 1)
  {

    sub_EB68(v88, &unk_400440);
    sub_EB68(v52, &qword_4037E0);

    sub_EB68(&v13[v51], &unk_400440);

    sub_EB68(&v13[v50], &qword_3FF458);
    v53 = v80;
    (*(v84 + 56))(v80, 1, 1, v48);
  }

  else
  {
    v54 = v52;
    v55 = v75;
    sub_1129DC(v54, v75, &type metadata accessor for FollowButtonPresenter.Data);
    v56 = v74;
    sub_112A8C(v55, v74, &type metadata accessor for FollowButtonPresenter.Data);
    sub_112A8C(v56, v73, &type metadata accessor for FollowButtonPresenter.Data);
    sub_306A08();
    sub_112AF4(v56, &type metadata accessor for FollowButtonPresenter.Data);
    sub_303B48();
    sub_30B8E8();

    v90 = 0;
    v91 = 0;
    v93 = 0;
    v94 = 0;
    v92 = 2;
    sub_303B38();

    v57 = &v13[v48[8]];
    sub_3039F8();
    sub_112A44(&qword_3FF130, &type metadata accessor for PodcastStateMachine);
    v58 = sub_3053C8();
    v60 = v59;
    sub_112AF4(v55, &type metadata accessor for FollowButtonPresenter.Data);
    sub_EB68(v88, &unk_400440);
    *v57 = v58;
    v57[1] = v60;
    v53 = v80;
    sub_112A8C(v13, v80, type metadata accessor for SearchResultFollowButton);
    (*(v84 + 56))(v53, 0, 1, v48);
    sub_112AF4(v13, type metadata accessor for SearchResultFollowButton);
  }

  v61 = v83;
  sub_34804(v53, v83, &qword_4037E8);
  v62 = v89;
  v63 = v82;
  sub_112A8C(v89, v82, type metadata accessor for StandardSearchResultView);
  v64 = v86;
  sub_EB00(v61, v86, &qword_4037E8);
  v65 = v87;
  sub_112A8C(v63, v87, type metadata accessor for StandardSearchResultView);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4037F0);
  v67 = v65 + *(v66 + 48);
  *v67 = 0;
  *(v67 + 8) = 1;
  sub_EB00(v64, v65 + *(v66 + 64), &qword_4037E8);
  sub_EB68(v61, &qword_4037E8);
  sub_112AF4(v62, type metadata accessor for StandardSearchResultView);
  sub_EB68(v64, &qword_4037E8);
  return sub_112AF4(v63, type metadata accessor for StandardSearchResultView);
}

uint64_t sub_10FE9C@<X0>(void (*a1)(uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a2@<X8>)
{
  v15[0] = a2;
  v4 = sub_306008();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4037C8);
  __chkstk_darwin(v8);
  v10 = v15 - v9;
  v11 = *v2;
  v12 = *(v2 + 8);
  v13 = v2[2];
  *v10 = sub_305AA8();
  *(v10 + 1) = 0;
  v10[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4037D0);
  a1(v11, v12, v13);
  sub_305FE8();
  sub_EC8C(&qword_4037D8, &qword_4037C8);
  sub_306738();
  (*(v5 + 8))(v7, v4);
  return sub_EB68(v10, &qword_4037C8);
}

uint64_t sub_11007C@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v1 - 8);
  v3 = &v29 - v2;
  v4 = type metadata accessor for ChannelSearchResultView();
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  sub_307DA8();
  v14 = sub_307D88();
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  v18 = [objc_opt_self() mainBundle];
  v28._countAndFlagsBits = 0xE000000000000000;
  v31._object = 0x800000000033B2F0;
  v31._countAndFlagsBits = 0xD000000000000017;
  v32.value._countAndFlagsBits = 0;
  v32.value._object = 0;
  v19.super.isa = v18;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  v20 = sub_301AB8(v31, v32, v19, v33, v28);
  v22 = v21;

  sub_34804(v3, v10, &unk_402FF0);
  v23 = &v10[*(v5 + 28)];
  *v23 = v16;
  *(v23 + 1) = v17;
  v24 = &v10[*(v5 + 32)];
  *v24 = v20;
  v24[1] = v22;
  sub_1129DC(v10, v13, type metadata accessor for ChannelSearchResultView);
  sub_112A8C(v13, v7, type metadata accessor for ChannelSearchResultView);
  v25 = v30;
  sub_112A8C(v7, v30, type metadata accessor for ChannelSearchResultView);
  v26 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_403790) + 48);
  *v26 = 0;
  *(v26 + 8) = 1;
  sub_112AF4(v13, type metadata accessor for ChannelSearchResultView);
  return sub_112AF4(v7, type metadata accessor for ChannelSearchResultView);
}

uint64_t sub_110334@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v20 = a1;
  v22 = a3;
  v23 = sub_305BA8();
  v21 = *(v23 - 8);
  __chkstk_darwin(v23);
  v18 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_306008();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403770);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403778);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  *v10 = sub_305AA8();
  *(v10 + 1) = 0;
  v10[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403780);
  a2(v20);
  sub_305FE8();
  v15 = sub_EC8C(&qword_403788, &qword_403770);
  sub_306738();
  (*(v5 + 8))(v7, v19);
  sub_EB68(v10, &qword_403770);
  v16 = v18;
  sub_305B88();
  v24 = v8;
  v25 = v15;
  swift_getOpaqueTypeConformance2();
  sub_306758();
  (*(v21 + 8))(v16, v23);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_11067C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v5 = type metadata accessor for ChannelSearchResultView();
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  sub_307DA8();
  v15 = sub_307D88();
  if (v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  v18 = 0xE000000000000000;
  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  v20 = sub_307DD8();
  if (v21)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  if (v21)
  {
    v18 = v21;
  }

  sub_34804(v4, v11, &unk_402FF0);
  v23 = &v11[*(v6 + 28)];
  *v23 = v17;
  *(v23 + 1) = v19;
  v24 = &v11[*(v6 + 32)];
  *v24 = v22;
  *(v24 + 1) = v18;
  sub_1129DC(v11, v14, type metadata accessor for ChannelSearchResultView);
  sub_112A8C(v14, v8, type metadata accessor for ChannelSearchResultView);
  sub_112A8C(v8, a1, type metadata accessor for ChannelSearchResultView);
  v25 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_403790) + 48);
  *v25 = 0;
  *(v25 + 8) = 1;
  sub_112AF4(v14, type metadata accessor for ChannelSearchResultView);
  return sub_112AF4(v8, type metadata accessor for ChannelSearchResultView);
}

uint64_t sub_1108D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v19 = sub_305BA8();
  v17 = *(v19 - 8);
  __chkstk_darwin(v19);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_306008();
  v5 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403798);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v12 = sub_305AA8();

  v20 = v12;
  v21 = 0;
  v22 = 1;
  v23 = a1;
  v24 = 0;
  v25 = 1;
  sub_305FE8();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4037A0);
  v14 = sub_EC8C(&qword_4037A8, &qword_4037A0);
  sub_306738();
  (*(v5 + 8))(v7, v16);

  sub_305B88();
  v20 = v13;
  v21 = v14;
  swift_getOpaqueTypeConformance2();
  sub_306758();
  (*(v17 + 8))(v4, v19);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_110BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v19 = sub_305BA8();
  v17 = *(v19 - 8);
  __chkstk_darwin(v19);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_306008();
  v5 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4037B0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v12 = sub_305AA8();

  v20 = v12;
  v21 = 0;
  v22 = 1;
  v23 = a1;
  v24 = 0;
  v25 = 1;
  sub_305FE8();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4037B8);
  v14 = sub_EC8C(&qword_4037C0, &qword_4037B8);
  sub_306738();
  (*(v5 + 8))(v7, v16);

  sub_305B88();
  v20 = v13;
  v21 = v14;
  swift_getOpaqueTypeConformance2();
  sub_306758();
  (*(v17 + 8))(v4, v19);
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_110EC0()
{
  result = qword_4034C8;
  if (!qword_4034C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403468);
    sub_110F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4034C8);
  }

  return result;
}

unint64_t sub_110F44()
{
  result = qword_4034D0;
  if (!qword_4034D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4034D8);
    sub_111040();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403510);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403518);
    sub_111124();
    sub_11138C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4034D0);
  }

  return result;
}

unint64_t sub_111040()
{
  result = qword_4034E0;
  if (!qword_4034E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4034E8);
    sub_EC8C(&qword_4034F0, &qword_4034F8);
    sub_EC8C(&qword_403500, &qword_403508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4034E0);
  }

  return result;
}

unint64_t sub_111124()
{
  result = qword_403520;
  if (!qword_403520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403510);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403528);
    sub_11121C();
    swift_getOpaqueTypeConformance2();
    sub_112A44(&qword_3FC7C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403520);
  }

  return result;
}

unint64_t sub_11121C()
{
  result = qword_403530;
  if (!qword_403530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403528);
    sub_1112D4();
    sub_EC8C(&qword_403548, &qword_403550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403530);
  }

  return result;
}

unint64_t sub_1112D4()
{
  result = qword_403538;
  if (!qword_403538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403540);
    sub_EC8C(&qword_4034F0, &qword_4034F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403538);
  }

  return result;
}

unint64_t sub_11138C()
{
  result = qword_403558;
  if (!qword_403558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403518);
    sub_E1788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403558);
  }

  return result;
}

unint64_t sub_11142C()
{
  result = qword_403560;
  if (!qword_403560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403478);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403468);
    sub_110EC0();
    swift_getOpaqueTypeConformance2();
    sub_112A44(&qword_3FC7C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403560);
  }

  return result;
}

unint64_t sub_111524()
{
  result = qword_403568;
  if (!qword_403568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4034C0);
    sub_1115B0();
    sub_11180C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403568);
  }

  return result;
}

unint64_t sub_1115B0()
{
  result = qword_403570;
  if (!qword_403570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4034B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4034B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403518);
    sub_1116A4();
    sub_11138C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403570);
  }

  return result;
}

unint64_t sub_1116A4()
{
  result = qword_403578;
  if (!qword_403578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4034B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4034A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403510);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403518);
    sub_111124();
    sub_11138C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_112A44(&qword_3FC7C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403578);
  }

  return result;
}

unint64_t sub_11180C()
{
  result = qword_403580;
  if (!qword_403580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403490);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403588);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FB800);
    sub_EC8C(&qword_403590, &qword_403588);
    sub_111934();
    swift_getOpaqueTypeConformance2();
    sub_F34E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403580);
  }

  return result;
}

unint64_t sub_111934()
{
  result = qword_403598;
  if (!qword_403598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FB800);
    sub_EC8C(&qword_3FB838, &qword_3FB808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403598);
  }

  return result;
}

unint64_t sub_1119E4()
{
  result = qword_4035A0;
  if (!qword_4035A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403480);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403478);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403518);
    sub_11142C();
    sub_11138C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4035A0);
  }

  return result;
}

unint64_t sub_111AE0()
{
  result = qword_4019C0;
  if (!qword_4019C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4019C0);
  }

  return result;
}

uint64_t sub_111B34()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 horizontalSizeClass];

  if (v1 == &dword_0 + 2)
  {
    sub_307038();
    v2 = sub_3070F8();
    v4 = v3;
    if (v2 == sub_3070F8() && v4 == v5)
    {

      v6 = 0;
    }

    else
    {
      v7 = sub_30D728();

      v6 = v7 ^ 1;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_111CCC()
{
  v1 = (type metadata accessor for TopResultCell() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_7BD8C(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16));

  sub_111DE0(*(v0 + v3 + 40), *(v0 + v3 + 48));
  v5 = v1[9];
  v6 = sub_307048();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_111DE0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_111DEC()
{
  v1 = *(type metadata accessor for TopResultCell() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10B968(v2);
}

unint64_t sub_111E4C()
{
  result = qword_4035D0;
  if (!qword_4035D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4035C8);
    sub_111ED8();
    sub_11200C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4035D0);
  }

  return result;
}

unint64_t sub_111ED8()
{
  result = qword_4035D8;
  if (!qword_4035D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4035E0);
    sub_111F64();
    sub_111FB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4035D8);
  }

  return result;
}

unint64_t sub_111F64()
{
  result = qword_4035E8;
  if (!qword_4035E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4035E8);
  }

  return result;
}

unint64_t sub_111FB8()
{
  result = qword_4035F0;
  if (!qword_4035F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4035F0);
  }

  return result;
}

unint64_t sub_11200C()
{
  result = qword_4035F8;
  if (!qword_4035F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403600);
    sub_112098();
    sub_1120EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4035F8);
  }

  return result;
}

unint64_t sub_112098()
{
  result = qword_403608;
  if (!qword_403608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403608);
  }

  return result;
}

unint64_t sub_1120EC()
{
  result = qword_403610;
  if (!qword_403610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403610);
  }

  return result;
}

unint64_t sub_112140()
{
  result = qword_403618;
  if (!qword_403618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403618);
  }

  return result;
}

uint64_t sub_112200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_307048();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1122D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_307048();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

void sub_112390()
{
  sub_1068E0(319, &unk_3FEDE8, type metadata accessor for CGSize);
  if (v0 <= 0x3F)
  {
    sub_1068E0(319, &qword_3FB778, &type metadata accessor for BaseObjectGraph);
    if (v1 <= 0x3F)
    {
      sub_1124A4();
      if (v2 <= 0x3F)
      {
        sub_307048();
        if (v3 <= 0x3F)
        {
          sub_307DF8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1124A4()
{
  if (!qword_4036A0)
  {
    v0 = sub_3050B8();
    if (!v1)
    {
      atomic_store(v0, &qword_4036A0);
    }
  }
}

uint64_t sub_1124F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_11253C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_112590()
{
  result = qword_4036E8;
  if (!qword_4036E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4036F0);
    sub_111524();
    sub_1119E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4036E8);
  }

  return result;
}

unint64_t sub_112624()
{
  result = qword_4036F8;
  if (!qword_4036F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4036F8);
  }

  return result;
}

unint64_t sub_11267C()
{
  result = qword_403700;
  if (!qword_403700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403700);
  }

  return result;
}

uint64_t sub_112778()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1127E8()
{
  result = qword_403758;
  if (!qword_403758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403758);
  }

  return result;
}

uint64_t sub_11283C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400FD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_315420;
  v1 = [objc_opt_self() mainBundle];
  v2 = 0xE000000000000000;
  v11._countAndFlagsBits = 0xE000000000000000;
  v14._object = 0x800000000033B310;
  v14._countAndFlagsBits = 0xD000000000000014;
  v15.value._countAndFlagsBits = 0;
  v15.value._object = 0;
  v3.super.isa = v1;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v4 = sub_301AB8(v14, v15, v3, v16, v11);
  v6 = v5;

  *(v0 + 32) = v4;
  *(v0 + 40) = v6;
  v7 = sub_307DE8();
  if (v7)
  {
    if (v7[2])
    {
      v8 = v7[4];
      v2 = v7[5];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  *(v0 + 48) = v8;
  *(v0 + 56) = v2;
  sub_303458();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEC78);
  v13 = sub_EC8C(&qword_4037F8, &qword_3FEC78);
  v11._object = v0;
  v9 = sub_3033B8();
  __swift_destroy_boxed_opaque_existential_1(&v11._object);
  return v9;
}

uint64_t sub_1129DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_112A44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_112A8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_112AF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_112B54()
{
  result = qword_403810;
  if (!qword_403810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403808);
    sub_112BE0();
    sub_11200C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403810);
  }

  return result;
}

unint64_t sub_112BE0()
{
  result = qword_403818;
  if (!qword_403818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403820);
    sub_111F64();
    sub_112C6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403818);
  }

  return result;
}

unint64_t sub_112C6C()
{
  result = qword_403828;
  if (!qword_403828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403828);
  }

  return result;
}

unint64_t sub_112CC0()
{
  result = qword_403830;
  if (!qword_403830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403830);
  }

  return result;
}

uint64_t sub_112D14(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    return sub_112D64(a1, a2, a3, a4, HIBYTE(a4) & 1);
  }
}

uint64_t sub_112D64(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    return sub_112D94(a1, a2, a3, a4 & 1);
  }
}

uint64_t sub_112D94(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }
}

uint64_t sub_112DD8(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    return sub_112E2C(a1, a2, a3, a4, HIBYTE(a4) & 1);
  }
}

uint64_t sub_112E2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    return sub_112E5C(a1, a2, a3, a4 & 1);
  }
}

uint64_t sub_112E5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {

    v4 = vars8;
  }
}

unint64_t sub_112E9C()
{
  result = qword_403838;
  if (!qword_403838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403838);
  }

  return result;
}

uint64_t sub_112F10()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403710);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403518);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403708);
  sub_EC8C(&qword_403728, &qword_403708);
  swift_getOpaqueTypeConformance2();
  sub_11138C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_113014()
{
  result = qword_403840;
  if (!qword_403840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403848);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403770);
    sub_EC8C(&qword_403788, &qword_403770);
    swift_getOpaqueTypeConformance2();
    sub_112A44(&qword_3FC7C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403840);
  }

  return result;
}

unint64_t sub_113144()
{
  result = qword_403850;
  if (!qword_403850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403858);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4037A0);
    sub_EC8C(&qword_4037A8, &qword_4037A0);
    swift_getOpaqueTypeConformance2();
    sub_112A44(&qword_3FC7C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403850);
  }

  return result;
}

unint64_t sub_113274()
{
  result = qword_403860;
  if (!qword_403860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403868);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4037B8);
    sub_EC8C(&qword_4037C0, &qword_4037B8);
    swift_getOpaqueTypeConformance2();
    sub_112A44(&qword_3FC7C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403860);
  }

  return result;
}

uint64_t sub_1133A0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4037C8);
  sub_EC8C(&qword_4037D8, &qword_4037C8);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_11343C()
{
  result = qword_403870;
  if (!qword_403870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403878);
    sub_EC8C(&qword_403880, &qword_403888);
    sub_F34E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403870);
  }

  return result;
}

uint64_t sub_113594(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403890);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF458);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_113738(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403890);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF458);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for SearchResultFollowButton()
{
  result = qword_4038F0;
  if (!qword_4038F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_113914()
{
  sub_30B9A8();
  if (v0 <= 0x3F)
  {
    sub_11451C(319, &qword_403900, &type metadata accessor for ImpressionMetrics, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_11451C(319, &qword_403908, &type metadata accessor for FollowButtonPresenter.Data, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_113A98();
        if (v3 <= 0x3F)
        {
          sub_11451C(319, &qword_3FF4C8, &type metadata accessor for InteractionContextAction, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_113B2C();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_113A98()
{
  if (!qword_403910)
  {
    sub_3039F8();
    sub_116548(&qword_3FF130, &type metadata accessor for PodcastStateMachine);
    v0 = sub_3053D8();
    if (!v1)
    {
      atomic_store(v0, &qword_403910);
    }
  }
}

void sub_113B2C()
{
  if (!qword_3FF4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_400440);
    v0 = sub_3050B8();
    if (!v1)
    {
      atomic_store(v0, &qword_3FF4D0);
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_113BA4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_113BEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_113C44()
{
  sub_11451C(319, &qword_401C50, &type metadata accessor for ArtworkModel, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_30B168();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_113D14(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_3030F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = v9 - 1;
  v11 = *(sub_30B168() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = *(*(a3 + 16) - 8);
  v16 = *(v15 + 84);
  v17 = *(v7 + 80);
  v18 = *(v11 + 80);
  v19 = *(v11 + 64);
  v20 = *(v15 + 80);
  if (v16 <= v14)
  {
    v21 = v14;
  }

  else
  {
    v21 = *(v15 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v22 = ((((*(v7 + 64) + ((v17 + 130) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 26) & 0xFFFFFFFFFFFFFFF8) + v18 + 16;
  v23 = v19 + v20;
  if (a2 <= v21)
  {
    goto LABEL_34;
  }

  v24 = ((v23 + (v22 & ~v18)) & ~v20) + *(v15 + 64);
  v25 = 8 * v24;
  if (v24 <= 3)
  {
    v28 = ((a2 - v21 + ~(-1 << v25)) >> v25) + 1;
    if (HIWORD(v28))
    {
      v26 = *(a1 + v24);
      if (!v26)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v28 > 0xFF)
    {
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v28 < 2)
    {
LABEL_34:
      if (v10 == v21)
      {
        if ((v8 & 0x80000000) != 0)
        {
          v33 = (*(v7 + 48))((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v17 + 58) & ~v17, v8, v6);
        }

        else
        {
          v32 = *(a1 + 1);
          if (v32 >= 0xFFFFFFFF)
          {
            LODWORD(v32) = -1;
          }

          v33 = v32 + 1;
        }

        if (v33 >= 2)
        {
          return v33 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v34 = (a1 + v22) & ~v18;
        if (v13 == v21)
        {
          v35 = *(v12 + 48);

          return v35(v34);
        }

        else
        {
          v36 = *(v15 + 48);

          return v36((v23 + v34) & ~v20, v16);
        }
      }
    }
  }

  v26 = *(a1 + v24);
  if (!*(a1 + v24))
  {
    goto LABEL_34;
  }

LABEL_21:
  v29 = (v26 - 1) << v25;
  if (v24 > 3)
  {
    v29 = 0;
  }

  if (v24)
  {
    if (v24 <= 3)
    {
      v30 = ((v23 + (v22 & ~v18)) & ~v20) + *(v15 + 64);
    }

    else
    {
      v30 = 4;
    }

    if (v30 > 2)
    {
      if (v30 == 3)
      {
        v31 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v31 = *a1;
      }
    }

    else if (v30 == 1)
    {
      v31 = *a1;
    }

    else
    {
      v31 = *a1;
    }
  }

  else
  {
    v31 = 0;
  }

  return v21 + (v31 | v29) + 1;
}

void sub_1140A0(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_3030F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(sub_30B168() - 8);
  v13 = *(v12 + 84);
  if (v13 <= v11 - 1)
  {
    v14 = v11 - 1;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(*(a4 + 16) - 8);
  v16 = *(v15 + 84);
  v17 = *(v9 + 80);
  v18 = *(v12 + 80);
  v19 = *(v12 + 64);
  v20 = *(v15 + 80);
  if (v16 <= v14)
  {
    v21 = v14;
  }

  else
  {
    v21 = *(v15 + 84);
  }

  v22 = ((((*(v9 + 64) + ((v17 + 130) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 26) & 0xFFFFFFFFFFFFFFF8) + 16;
  v23 = ((v19 + v20 + ((v22 + v18) & ~v18)) & ~v20) + *(v15 + 64);
  if (a3 <= v21)
  {
    v24 = 0;
  }

  else if (v23 <= 3)
  {
    v27 = ((a3 - v21 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
    if (HIWORD(v27))
    {
      v24 = 4;
    }

    else
    {
      if (v27 < 0x100)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }

      if (v27 >= 2)
      {
        v24 = v28;
      }

      else
      {
        v24 = 0;
      }
    }
  }

  else
  {
    v24 = 1;
  }

  if (v21 < a2)
  {
    v25 = ~v21 + a2;
    if (v23 < 4)
    {
      v26 = (v25 >> (8 * v23)) + 1;
      if (v23)
      {
        v29 = v25 & ~(-1 << (8 * v23));
        bzero(a1, v23);
        if (v23 != 3)
        {
          if (v23 == 2)
          {
            *a1 = v29;
            if (v24 > 1)
            {
LABEL_59:
              if (v24 == 2)
              {
                *(a1 + v23) = v26;
              }

              else
              {
                *(a1 + v23) = v26;
              }

              return;
            }
          }

          else
          {
            *a1 = v25;
            if (v24 > 1)
            {
              goto LABEL_59;
            }
          }

          goto LABEL_56;
        }

        *a1 = v29;
        *(a1 + 2) = BYTE2(v29);
      }

      if (v24 > 1)
      {
        goto LABEL_59;
      }
    }

    else
    {
      bzero(a1, v23);
      *a1 = v25;
      v26 = 1;
      if (v24 > 1)
      {
        goto LABEL_59;
      }
    }

LABEL_56:
    if (v24)
    {
      *(a1 + v23) = v26;
    }

    return;
  }

  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *(a1 + v23) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *(a1 + v23) = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v24)
  {
    goto LABEL_36;
  }

  *(a1 + v23) = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v11 - 1 == v21)
  {
    if (a2 >= v11)
    {
      if (v22)
      {
        bzero(a1, v22);
        *a1 = a2 - v11;
      }
    }

    else
    {
      v30 = (a2 + 1);
      if ((v10 & 0x80000000) != 0)
      {
        v33 = *(v9 + 56);

        v33((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v17 + 58) & ~v17, v30, v10, v8);
      }

      else if ((v30 & 0x80000000) != 0)
      {
        *a1 = (a2 - 0x7FFFFFFF);
        *(a1 + 1) = 0;
      }

      else
      {
        *(a1 + 1) = a2;
      }
    }
  }

  else if (v13 == v21)
  {
    v31 = *(v12 + 56);

    v31((a1 + v22 + v18) & ~v18, a2);
  }

  else
  {
    v32 = *(v15 + 56);

    v32((v19 + v20 + ((a1 + v22 + v18) & ~v18)) & ~v20, a2, v16);
  }
}

void sub_11451C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_114614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_EB00(a1, &v11 - v8, &unk_400440);
  return a5(v9);
}

uint64_t sub_1146C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401DC8);
  __chkstk_darwin(v3 - 8);
  v42 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v5 - 8);
  v39 = &v32 - v6;
  v34 = sub_30B168();
  v7 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_30B198();
  v41 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(a1 + 16);
  v15 = v37;
  v16 = sub_116548(&qword_401F00, &type metadata accessor for Artwork);
  v35 = *(a1 + 24);
  v36 = v16;
  *&v44 = v12;
  *(&v44 + 1) = v15;
  *&v45 = v16;
  *(&v45 + 1) = v35;
  v38 = &opaque type descriptor for <<opaque return type of View.artworkStyle<A>(shape:shadow:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v32 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v32 - v21;
  v23 = v40;
  sub_EB00(v40, v11, &unk_402FF0);
  (*(v7 + 16))(v33, v23 + *(a1 + 36), v34);
  v24 = sub_303DF8();
  (*(*(v24 - 8) + 56))(v39, 1, 1, v24);
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_306C38();
  sub_30B188();
  v25 = v42;
  sub_307F28();
  v26 = sub_307F38();
  (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  v28 = v36;
  v27 = v37;
  v29 = v35;
  sub_306458();
  sub_EB68(v25, &qword_401DC8);
  (*(v41 + 8))(v14, v12);
  *&v44 = v12;
  *(&v44 + 1) = v27;
  *&v45 = v28;
  *(&v45 + 1) = v29;
  swift_getOpaqueTypeConformance2();
  sub_1A7FE0(v19);
  v30 = *(v32 + 8);
  v30(v19, OpaqueTypeMetadata2);
  sub_1A7FE0(v22);
  return (v30)(v22, OpaqueTypeMetadata2);
}

uint64_t sub_114BD8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_306928();
  sub_306158();
  v3 = sub_306178();

  KeyPath = swift_getKeyPath();
  v5 = sub_3068A8();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

uint64_t sub_114C78@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_306928();
  sub_306158();
  v3 = sub_306178();

  KeyPath = swift_getKeyPath();
  v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCA28) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC798) + 28);
  v7 = enum case for Image.Scale.medium(_:);
  v8 = sub_306958();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  *v5 = swift_getKeyPath();
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  v9 = sub_3068A8();
  v10 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403A68);
  v12 = (a1 + *(result + 36));
  *v12 = v10;
  v12[1] = v9;
  return result;
}

uint64_t sub_114DC0(uint64_t a1, uint64_t a2, char a3)
{
  v23 = a1;
  v4 = sub_30B898();
  v21 = *(v4 - 8);
  v22 = v4;
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_30B7E8();
  v7 = *(v24 - 8);
  __chkstk_darwin(v24);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  v13 = sub_305A08();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a3 & 1) == 0)
  {
    sub_30C7A8();
    v17 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v14 + 8))(v16, v13);
  }

  sub_308EE8();
  sub_30B8C8();

  if (v25[0])
  {
    sub_307D28();
    if (v26)
    {
      __swift_project_boxed_opaque_existential_1Tm(v25, v26);
      sub_30B718();
      v19 = sub_30B888();
      (*(v21 + 8))(v6, v22);
      if (*(v19 + 16))
      {
        v20 = v24;
        (*(v7 + 16))(v12, v19 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v24);

        sub_30B7C8();
        (*(v7 + 8))(v12, v20);
        __swift_destroy_boxed_opaque_existential_1(v25);
LABEL_10:
        sub_308D58();
        v25[0] = sub_307D98();
        sub_1D770();
        sub_30D438();
        sub_308D38();

        sub_307E18();
        sub_308EC8();

        return (*(v7 + 8))(v9, v20);
      }

      __swift_destroy_boxed_opaque_existential_1(v25);
    }

    else
    {
      sub_EB68(v25, &unk_3FBB40);
    }

    v20 = v24;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1151DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403A58);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - v3;
  v6 = *v0;
  v5 = v0[1];
  v7 = *(v0 + 16);
  sub_33940(v5, v7);
  v10[3] = sub_307DF8();
  v10[4] = sub_116548(&qword_403A60, &type metadata accessor for LegacyLockup);
  v10[0] = v6;
  v11[3] = sub_30ACB8();
  v11[4] = sub_116548(&qword_3FF5F0, &type metadata accessor for PodcastsContextMenuProvider);
  __swift_allocate_boxed_opaque_existential_0Tm(v11);

  sub_30ACA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403A68);
  sub_116590();
  sub_309178();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  *(v8 + 32) = v7;
  sub_EC8C(&qword_403A78, &qword_403A58);

  sub_306588();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_115498@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_305438();
  v77 = *(v4 - 8);
  v78 = v4;
  __chkstk_darwin(v4);
  v76 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v74 = &v65 - v7;
  v8 = sub_309DB8();
  v71 = *(v8 - 8);
  __chkstk_darwin(v8);
  v70 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_305A08();
  v68 = *(v10 - 8);
  __chkstk_darwin(v10);
  v67 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_309D48();
  __chkstk_darwin(v12 - 8);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4039D8);
  __chkstk_darwin(v69);
  v14 = &v65 - v13;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4039E0);
  __chkstk_darwin(v73);
  v16 = &v65 - v15;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4039E8);
  __chkstk_darwin(v72);
  v75 = &v65 - v17;
  v18 = type metadata accessor for SearchResultFollowButton();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403890);
  sub_306A18();
  sub_308B78();
  KeyPath = swift_getKeyPath();
  v20 = v2 + v18[9];
  v21 = *v20;
  v22 = *(v20 + 8);

  if ((v22 & 1) == 0)
  {
    sub_30C7A8();
    v23 = sub_306088();
    v66 = v10;
    v24 = v16;
    v25 = v8;
    v26 = a1;
    v27 = v23;
    sub_304108();

    a1 = v26;
    v8 = v25;
    v16 = v24;
    v28 = v67;
    sub_3059F8();
    swift_getAtKeyPath();

    (*(v68 + 8))(v28, v66);
    v21 = v81[0];
  }

  v29 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4039F0) + 36)];
  *v29 = KeyPath;
  v29[1] = v21;
  v30 = swift_getKeyPath();
  v31 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4039F8) + 36)];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406C00);
  sub_33CD0(v31 + *(v32 + 28));
  *v31 = v30;
  v33 = swift_getKeyPath();
  v34 = v18[6];
  v35 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_403A00) + 36)];
  sub_EB00(v2 + v34, v35 + *(v32 + 28), &unk_400440);
  *v35 = v33;
  v36 = *(v2 + v18[8] + 8);
  sub_3039E8();
  LOBYTE(v33) = sub_303218();
  sub_289D8(v79);
  v37 = swift_getKeyPath();
  v38 = swift_allocObject();
  *(v38 + 16) = v33 & 1;
  v39 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_403A08) + 36)];
  *v39 = v37;
  v39[1] = sub_3CEE8;
  v39[2] = v38;
  sub_3039F8();
  sub_116548(&qword_3FF130, &type metadata accessor for PodcastStateMachine);
  v40 = sub_304D28();
  v41 = &v14[*(v69 + 36)];
  *v41 = v40;
  v41[1] = v36;

  v42 = v70;
  sub_309D98();
  sub_115EEC();
  sub_306488();
  (*(v71 + 8))(v42, v8);
  sub_EB68(v14, &qword_4039D8);
  sub_306258();
  sub_306178();

  v43 = sub_306288();

  v44 = swift_getKeyPath();
  v45 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_403A38) + 36)];
  *v45 = v44;
  v45[1] = v43;
  v46 = &v16[*(v73 + 36)];
  v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC798) + 28);
  v48 = enum case for Image.Scale.medium(_:);
  v49 = sub_306958();
  (*(*(v49 - 8) + 104))(v46 + v47, v48, v49);
  *v46 = swift_getKeyPath();
  v50 = v74;
  sub_305428();
  v51 = v76;
  sub_305408();
  v52 = v78;
  v53 = *(v77 + 8);
  v53(v50, v78);
  sub_1162BC();
  v54 = v75;
  sub_3065B8();
  v53(v51, v52);
  sub_116468(v16);
  v55 = (v54 + *(v72 + 36));
  v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD720) + 28);
  sub_305C18();
  v57 = sub_305C28();
  (*(*(v57 - 8) + 56))(v55 + v56, 0, 1, v57);
  *v55 = swift_getKeyPath();
  sub_3039E8();
  LOBYTE(v55) = sub_303218();
  sub_289D8(v80);
  if (v55)
  {
    v58 = sub_3068A8();
  }

  else
  {
    v58 = sub_306828();
  }

  v59 = v58;
  sub_3039E8();
  v60 = sub_303218();
  sub_289D8(v81);
  if (v60)
  {
    v61 = sub_306868();
  }

  else
  {
    v62 = [objc_opt_self() systemGray6Color];
    v61 = sub_30D058();
  }

  sub_1164D8(v54, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403A50);
  v64 = (a1 + *(result + 36));
  *v64 = v59;
  v64[1] = v61;
  return result;
}

unint64_t sub_115EEC()
{
  result = qword_403A10;
  if (!qword_403A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4039D8);
    sub_115FA4();
    sub_EC8C(&qword_3FF150, &qword_3FF158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403A10);
  }

  return result;
}

unint64_t sub_115FA4()
{
  result = qword_403A18;
  if (!qword_403A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403A08);
    sub_11605C();
    sub_EC8C(&qword_3FF5D0, &qword_3FF5D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403A18);
  }

  return result;
}

unint64_t sub_11605C()
{
  result = qword_403A20;
  if (!qword_403A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403A00);
    sub_116114();
    sub_EC8C(&unk_406C50, &unk_406C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403A20);
  }

  return result;
}

unint64_t sub_116114()
{
  result = qword_403A28;
  if (!qword_403A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4039F8);
    sub_1161CC();
    sub_EC8C(&unk_406C50, &unk_406C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403A28);
  }

  return result;
}

unint64_t sub_1161CC()
{
  result = qword_403A30;
  if (!qword_403A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4039F0);
    sub_116548(&qword_3FF5C8, &type metadata accessor for FollowShowButton);
    sub_EC8C(&qword_406C70, &qword_406C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403A30);
  }

  return result;
}

unint64_t sub_1162BC()
{
  result = qword_403A40;
  if (!qword_403A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4039E0);
    sub_116374();
    sub_EC8C(&qword_3FC7B8, &qword_3FC798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403A40);
  }

  return result;
}

unint64_t sub_116374()
{
  result = qword_403A48;
  if (!qword_403A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403A38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4039D8);
    sub_115EEC();
    swift_getOpaqueTypeConformance2();
    sub_EC8C(&qword_3FC778, &qword_3FC780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403A48);
  }

  return result;
}

uint64_t sub_116468(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4039E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1164D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4039E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_116548(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_116590()
{
  result = qword_403A70;
  if (!qword_403A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403A68);
    sub_37E00();
    sub_EC8C(&qword_3FC788, &qword_3FC790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403A70);
  }

  return result;
}

uint64_t sub_116648()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_116694()
{
  sub_30B198();
  sub_116548(&qword_401F00, &type metadata accessor for Artwork);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_116730()
{
  result = qword_403A80;
  if (!qword_403A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403A88);
    sub_37EB8();
    sub_EC8C(&qword_3FC788, &qword_3FC790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403A80);
  }

  return result;
}

unint64_t sub_1167EC()
{
  result = qword_403A90;
  if (!qword_403A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403A50);
    sub_1168A4();
    sub_EC8C(&qword_403AA0, &qword_403AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403A90);
  }

  return result;
}

unint64_t sub_1168A4()
{
  result = qword_403A98;
  if (!qword_403A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4039E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4039E0);
    sub_1162BC();
    swift_getOpaqueTypeConformance2();
    sub_EC8C(&qword_3FD718, &qword_3FD720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403A98);
  }

  return result;
}

uint64_t sub_116998()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403A58);
  sub_EC8C(&qword_403A78, &qword_403A58);
  return swift_getOpaqueTypeConformance2();
}

void sub_116A30()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = sub_30C968();

  v2 = 10.0;
  xmmword_403AB0 = xmmword_322FE0;
  if (v1)
  {
    v2 = 12.0;
  }

  qword_403AC0 = 0;
  qword_403AC8 = *&v2;
}

uint64_t sub_116B10(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = sub_3020D8();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  v8 = [objc_opt_self() currentTraitCollection];
  v9 = sub_30C968();

  if (v9)
  {
    return a3();
  }

  else
  {
    return a4();
  }
}

uint64_t sub_116BB8()
{
  sub_309548();
  if (swift_dynamicCastClass())
  {

    v0 = sub_309528();
LABEL_5:
    v1 = v0;

    return v1;
  }

  sub_309418();
  if (swift_dynamicCastClass())
  {

    v0 = sub_307DD8();
    goto LABEL_5;
  }

  sub_309A48();
  if (swift_dynamicCastClass())
  {
    return 0;
  }

  sub_30AA68();
  if (swift_dynamicCastClass())
  {
    return 0;
  }

  v3 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0xE000000000000000;
  v6._object = 0x800000000033B310;
  v6._countAndFlagsBits = 0xD000000000000014;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v4.super.isa = v3;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v1 = sub_301AB8(v6, v7, v4, v8, v5);

  return v1;
}

uint64_t sub_116CF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B00);
  __chkstk_darwin(v4 - 8);
  v6 = (&v39 - v5);
  v7 = sub_305088();
  v40 = *(v7 - 8);
  v41 = v7;
  __chkstk_darwin(v7);
  v39 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403718);
  v43 = *(v9 - 8);
  __chkstk_darwin(v9);
  v42 = &v39 - v10;
  v11 = sub_305A08();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(v1 + 24);
  v15 = *(v1 + 16);
  v45 = v15;
  if (v46 != 1)
  {

    sub_30C7A8();
    v18 = v9;
    v19 = v6;
    v20 = a1;
    v21 = sub_306088();
    sub_304108();

    a1 = v20;
    v6 = v19;
    v9 = v18;
    sub_3059F8();
    swift_getAtKeyPath();
    sub_EB68(&v45, &qword_403B08);
    (*(v12 + 8))(v14, v11);
    v15 = v44[0];
    v17 = v42;
    if (!v44[0])
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v16 = v15;
  v17 = v42;
  if (v15)
  {
LABEL_5:
    v22 = sub_306CC8();
    v23 = &v15[OBJC_IVAR____TtC23ShelfKitCollectionViews28ShelvesViewSwiftUIHelperCell_transitionNamespace];
    *v23 = v22;
    v23[8] = 0;
  }

LABEL_6:
  v24 = v39;
  sub_305078();
  v25 = swift_allocObject();
  v26 = *(v2 + 48);
  *(v25 + 48) = *(v2 + 32);
  *(v25 + 64) = v26;
  *(v25 + 80) = *(v2 + 64);
  *(v25 + 96) = *(v2 + 80);
  v27 = *(v2 + 16);
  *(v25 + 16) = *v2;
  *(v25 + 32) = v27;
  sub_111C1C(v2, v44);
  v28 = v41;
  sub_306B58();

  (*(v40 + 8))(v24, v28);
  v29 = [objc_opt_self() currentTraitCollection];
  v30 = [v29 preferredContentSizeCategory];

  LOBYTE(v29) = sub_30CAE8();
  if (v29)
  {
    v31 = sub_306C08();
  }

  else
  {
    v31 = sub_306C28();
  }

  *v6 = v31;
  v6[1] = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B10);
  sub_117388(v2, v17, v6 + *(v33 + 44));
  v34 = swift_allocObject();
  v35 = *(v2 + 48);
  *(v34 + 48) = *(v2 + 32);
  *(v34 + 64) = v35;
  *(v34 + 80) = *(v2 + 64);
  *(v34 + 96) = *(v2 + 80);
  v36 = *(v2 + 16);
  *(v34 + 16) = *v2;
  *(v34 + 32) = v36;
  sub_34804(v6, a1, &qword_403B00);
  v37 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B18) + 36));
  *v37 = sub_11A584;
  v37[1] = v34;
  sub_111C1C(v2, v44);
  return (*(v43 + 8))(v17, v9);
}

uint64_t sub_1171F0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_305A08();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = *(a2 + 8);
  v7 = v12;

  if ((v7 & 1) == 0)
  {
    sub_30C7A8();
    v8 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();
    sub_EB68(&v11, &qword_3FCA88);
    (*(v4 + 8))(v6, v3);
  }

  sub_30A5A8();
  sub_30B8E8();

  sub_30A578();
}

uint64_t sub_117388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B20);
  __chkstk_darwin(v6 - 8);
  v8 = &v24[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v24[-1] - v10;
  *v11 = sub_305AA8();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B28);
  sub_117698(a1, a2, &v11[*(v12 + 44)]);
  v13 = sub_305AA8();
  v30 = 1;
  sub_11A05C(a1, &v25);
  v33 = *&v26[16];
  v34 = *&v26[32];
  v35 = *&v26[48];
  v36 = *&v26[64];
  v31 = v25;
  v32 = *v26;
  v37[2] = *&v26[16];
  v37[3] = *&v26[32];
  v37[4] = *&v26[48];
  v37[5] = *&v26[64];
  v37[0] = v25;
  v37[1] = *v26;
  sub_EB00(&v31, &v23, &qword_403B30);
  sub_EB68(v37, &qword_403B30);
  *&v29[39] = v33;
  *&v29[55] = v34;
  *&v29[71] = v35;
  *&v29[87] = v36;
  *&v29[7] = v31;
  *&v29[23] = v32;
  v14 = v30;
  v25 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA30);
  sub_306A18();
  if (v23)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  sub_EB00(v11, v8, &qword_403B20);
  sub_EB00(v8, a3, &qword_403B20);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B38) + 48);
  *&v24[6] = *&v29[95];
  *(&v24[5] + 1) = *&v29[80];
  *(&v24[3] + 1) = *&v29[48];
  *(&v24[4] + 1) = *&v29[64];
  *(&v24[1] + 1) = *&v29[16];
  v17 = (a3 + v16);
  v23 = v13;
  LOBYTE(v24[0]) = v14;
  *(&v24[2] + 1) = *&v29[32];
  *(v24 + 1) = *v29;
  *(&v24[6] + 1) = v15;
  v18 = v24[2];
  v17[2] = v24[1];
  v17[3] = v18;
  v19 = v24[6];
  v17[6] = v24[5];
  v17[7] = v19;
  v20 = v24[4];
  v17[4] = v24[3];
  v17[5] = v20;
  v21 = v24[0];
  *v17 = v23;
  v17[1] = v21;
  sub_EB00(&v23, &v25, &qword_403B40);
  sub_EB68(v11, &qword_403B20);
  *&v26[49] = *&v29[48];
  *&v26[65] = *&v29[64];
  *v27 = *&v29[80];
  *&v26[1] = *v29;
  *&v26[17] = *&v29[16];
  v25 = v13;
  v26[0] = v14;
  *&v27[15] = *&v29[95];
  *&v26[33] = *&v29[32];
  v28 = v15;
  sub_EB68(&v25, &qword_403B40);
  return sub_EB68(v8, &qword_403B20);
}

uint64_t sub_117698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B50);
  __chkstk_darwin(v6 - 8);
  v8 = &v29[-v7 - 8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B58);
  __chkstk_darwin(v9);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v12);
  v14 = &v29[-v13 - 8];
  __chkstk_darwin(v15);
  v17 = &v29[-v16 - 8];
  v18 = [objc_opt_self() currentTraitCollection];
  v19 = [v18 preferredContentSizeCategory];

  LOBYTE(v18) = sub_30CAE8();
  if (v18)
  {
    v20 = sub_305A98();
  }

  else
  {
    v20 = sub_305AA8();
  }

  *v8 = v20;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B60);
  sub_117AC4(a1, a2, &v8[*(v21 + 44)]);
  sub_34804(v8, v14, &qword_403B50);
  *&v14[*(v9 + 36)] = 0x3FF0000000000000;
  sub_34804(v14, v17, &qword_403B58);
  if (qword_3FAAC8 != -1)
  {
    swift_once();
  }

  sub_306C58();
  sub_305638();
  *&v29[55] = v34;
  *&v29[71] = v35;
  *&v29[87] = v36;
  *&v29[103] = v37;
  *&v29[7] = v31;
  *&v29[23] = v32;
  v30 = 1;
  *&v29[39] = v33;
  sub_EB00(v17, v11, &qword_403B58);
  sub_EB00(v11, a3, &qword_403B58);
  v22 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B68) + 48);
  v23 = *&v29[80];
  *(v22 + 73) = *&v29[64];
  *(v22 + 89) = v23;
  *(v22 + 105) = *&v29[96];
  v24 = *&v29[16];
  *(v22 + 9) = *v29;
  *(v22 + 25) = v24;
  v25 = *&v29[48];
  *(v22 + 41) = *&v29[32];
  *v22 = 0;
  *(v22 + 8) = 1;
  v26 = *&v29[111];
  *(v22 + 57) = v25;
  *(v22 + 120) = v26;
  *(v22 + 128) = 0;
  sub_EB68(v17, &qword_403B58);
  return sub_EB68(v11, &qword_403B58);
}

uint64_t sub_117AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B70);
  __chkstk_darwin(v66);
  v67 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v51 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B78);
  __chkstk_darwin(v9);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B80);
  v62 = *(v12 - 8);
  v63 = v12;
  __chkstk_darwin(v12);
  v14 = &v51 - v13;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B88);
  __chkstk_darwin(v60);
  v61 = &v51 - v15;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B90);
  __chkstk_darwin(v59);
  v65 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v51 - v18;
  __chkstk_darwin(v20);
  v64 = &v51 - v21;
  if (qword_3FAAC8 != -1)
  {
    swift_once();
  }

  sub_306C58();
  sub_3051F8();
  v56 = v68;
  v55 = v70;
  v54 = v72;
  v53 = v73;
  v76 = 1;
  v58 = v69;
  v75 = v69;
  v57 = v71;
  v74 = v71;
  sub_1181DC();
  v22 = sub_306C58();
  v24 = v23;
  v25 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_403B98) + 36)];
  sub_1185D8(a1, v52, v25);
  v26 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_403BA0) + 36));
  *v26 = v22;
  v26[1] = v24;
  v27 = a1;
  v28 = &v11[*(v9 + 36)];
  *v28 = 0x3FF0000000000000;
  *(v28 + 4) = 0;
  sub_306CC8();
  sub_11A5D8();
  sub_306438();
  sub_EB68(v11, &qword_403B78);
  v29 = sub_3060D8();
  v30 = [objc_opt_self() currentTraitCollection];
  v31 = [v30 preferredContentSizeCategory];

  LOBYTE(v30) = sub_30CAE8();
  if (v30)
  {
    if (qword_3FAAD0 != -1)
    {
      swift_once();
    }

    v32 = sub_3020D8();
    __swift_project_value_buffer(v32, qword_403AD0);
    v33 = sub_302098();
    [v33 ascender];
    [v33 leading];
    [v33 capHeight];
  }

  sub_304FD8();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v61;
  (*(v62 + 32))(v61, v14, v63);
  v43 = v42 + *(v60 + 36);
  *v43 = v29;
  *(v43 + 8) = v35;
  *(v43 + 16) = v37;
  *(v43 + 24) = v39;
  *(v43 + 32) = v41;
  *(v43 + 40) = 0;
  sub_34804(v42, v19, &qword_403B88);
  *&v19[*(v59 + 36)] = 0x4000000000000000;
  v44 = v64;
  sub_34804(v19, v64, &qword_403B90);
  *v8 = sub_305BE8();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403BE8);
  sub_118968(v27, &v8[*(v45 + 44)]);
  v46 = v65;
  *&v8[*(v66 + 36)] = 0x4000000000000000;
  sub_EB00(v44, v46, &qword_403B90);
  v47 = v67;
  sub_EB00(v8, v67, &qword_403B70);
  *a3 = 0;
  *(a3 + 8) = 1;
  *(a3 + 16) = v56;
  *(a3 + 24) = v58;
  *(a3 + 32) = v55;
  *(a3 + 40) = v57;
  v48 = v53;
  *(a3 + 48) = v54;
  *(a3 + 56) = v48;
  *(a3 + 64) = 0x3FF0000000000000;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403BF0);
  sub_EB00(v46, a3 + *(v49 + 48), &qword_403B90);
  sub_EB00(v47, a3 + *(v49 + 64), &qword_403B70);
  sub_EB68(v8, &qword_403B70);
  sub_EB68(v44, &qword_403B90);
  sub_EB68(v47, &qword_403B70);
  return sub_EB68(v46, &qword_403B90);
}

uint64_t sub_1181DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4030E8);
  __chkstk_darwin(v0);
  v2 = &v27 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403C88);
  __chkstk_darwin(v3);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403170);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  sub_309418();
  if (swift_dynamicCastClass())
  {

    sub_307DA8();
    v9 = *(v0 + 36);
    *&v2[v9] = vdupq_n_s64(0x4045000000000000uLL);
    v10 = enum case for Artwork.Sizing.constantSize(_:);
    v11 = sub_30B168();
    (*(*(v11 - 8) + 104))(&v2[v9], v10, v11);
    sub_EB00(v2, v5, &qword_4030E8);
    swift_storeEnumTagMultiPayload();
    sub_EC8C(&qword_403BD8, &qword_4030E8);
    sub_EC8C(&qword_403398, &qword_403170);
    sub_305D48();

    v12 = v2;
    v13 = &qword_4030E8;
  }

  else
  {
    sub_307DA8();
    v14 = &v8[*(v6 + 40)];
    v15 = *(sub_3055F8() + 20);
    v16 = enum case for RoundedCornerStyle.continuous(_:);
    v17 = sub_305B68();
    (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
    __asm { FMOV            V0.2D, #5.0 }

    *v14 = _Q0;
    v23 = *(v6 + 36);
    *&v8[v23] = vdupq_n_s64(0x4045000000000000uLL);
    v24 = enum case for Artwork.Sizing.constantSize(_:);
    v25 = sub_30B168();
    (*(*(v25 - 8) + 104))(&v8[v23], v24, v25);
    sub_EB00(v8, v5, &qword_403170);
    swift_storeEnumTagMultiPayload();
    sub_EC8C(&qword_403BD8, &qword_4030E8);
    sub_EC8C(&qword_403398, &qword_403170);
    sub_305D48();
    v12 = v8;
    v13 = &qword_403170;
  }

  return sub_EB68(v12, v13);
}

uint64_t sub_1185D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_305A08();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403C70);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  if (*(a1 + 80) - 1 <= 1 && (v24[0] = *(a1 + 48), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA30), sub_306A18(), v27 == 1))
  {
    v20 = a2;
    v21 = a3;
    v28 = *(a1 + 8);
    v14 = *a1;
    v27 = *a1;
    v15 = v28;

    if ((v15 & 1) == 0)
    {
      sub_30C7A8();
      v16 = sub_306088();
      sub_304108();

      sub_3059F8();
      swift_getAtKeyPath();
      sub_EB68(&v27, &qword_3FCA88);
      (*(v7 + 8))(v9, v6);
      v14 = *&v24[0];
    }

    v22 = 0x4018000000000000;
    v23 = 0;

    sub_2268C0(v14, &v22, v24);
    sub_306208();
    sub_3061C8();
    v17 = sub_306218();

    KeyPath = swift_getKeyPath();
    v26 = v17;
    sub_3050D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403C78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403718);
    sub_11AA8C();
    sub_EC8C(&qword_403760, &qword_403718);
    sub_306718();
    sub_EB68(v24, &qword_403C78);
    a3 = v21;
    (*(v11 + 32))(v21, v13, v10);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v11 + 56))(a3, v18, 1, v10);
}

uint64_t sub_118968@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v160 = a2;
  v147 = sub_30B368();
  v142 = *(v147 - 8);
  __chkstk_darwin(v147);
  v141 = &v141 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403BF8);
  __chkstk_darwin(v145);
  v146 = (&v141 - v4);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403C00);
  v158 = *(v164 - 8);
  __chkstk_darwin(v164);
  v148 = &v141 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403C08);
  __chkstk_darwin(v6 - 8);
  v159 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v167 = &v141 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF2B8);
  __chkstk_darwin(v10 - 8);
  v12 = &v141 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEC50);
  __chkstk_darwin(v13 - 8);
  v15 = &v141 - v14;
  v163 = sub_305A08();
  v162 = *(v163 - 8);
  __chkstk_darwin(v163);
  v161 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3091E8();
  v149 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403C10);
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v21 = &v141 - v20;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403C18);
  v156 = *(v157 - 8);
  __chkstk_darwin(v157);
  KeyPath = &v141 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403C20);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v153 = &v141 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v152 = &v141 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403C28);
  __chkstk_darwin(v28 - 8);
  v166 = &v141 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v141 - v31;
  v33 = a1[9];
  v34 = sub_309548();
  v168 = v33;
  v154 = v34;
  v35 = swift_dynamicCastClass();
  v165 = a1;
  v169 = v32;
  if (!v35)
  {
    (*(v24 + 56))(v32, 1, 1, v23);
    v37 = v164;
    v38 = v167;
    goto LABEL_17;
  }

  v143 = v24;
  v144 = v23;
  v192 = *(a1 + 8);
  v36 = *a1;
  v191 = *a1;
  if (v192 == 1)
  {
    *&v171 = v36;

    sub_EB00(&v191, &v176, &qword_3FCA88);
  }

  else
  {

    sub_EB00(&v191, &v176, &qword_3FCA88);
    sub_30C7A8();
    v39 = sub_306088();
    sub_304108();

    v40 = v161;
    sub_3059F8();
    swift_getAtKeyPath();
    sub_EB68(&v191, &qword_3FCA88);
    (*(v162 + 8))(v40, v163);
  }

  v41 = sub_303748();
  (*(*(v41 - 8) + 56))(v15, 1, 1, v41);
  v42 = enum case for EyebrowBuilder.ListContext.episodeSearchResult(_:);
  v43 = sub_3033A8();
  v44 = *(v43 - 8);
  (*(v44 + 104))(v15, v42, v43);
  (*(v44 + 56))(v15, 0, 1, v43);
  if (sub_3091C8())
  {
    v45 = enum case for Text.Case.uppercase(_:);
    v46 = sub_306358();
    v47 = *(v46 - 8);
    (*(v47 + 104))(v12, v45, v46);
    (*(v47 + 56))(v12, 0, 1, v46);
  }

  else
  {
    v48 = sub_306358();
    (*(*(v48 - 8) + 56))(v12, 1, 1, v48);
  }

  v49 = v167;
  v50 = v165;

  sub_3091D8();
  v51 = v164;
  if (qword_3FAAD8 != -1)
  {
    swift_once();
  }

  v52 = sub_3020D8();
  __swift_project_value_buffer(v52, qword_403AE8);
  v53 = sub_11AA3C(&qword_403C68, &type metadata accessor for EpisodeEyebrowView);
  sub_3063F8();
  (*(v149 + 8))(v19, v17);
  sub_306198();
  v176 = v17;
  v177 = v53;
  swift_getOpaqueTypeConformance2();
  v54 = KeyPath;
  v55 = v151;
  sub_3064C8();
  (*(v150 + 8))(v21, v55);
  v190 = *(v50 + 40);
  v56 = v50[4];
  v189 = v56;
  v57 = v49;
  if (v190 != 1)
  {

    sub_30C7A8();
    v62 = sub_306088();
    sub_304108();

    v63 = v161;
    sub_3059F8();
    swift_getAtKeyPath();
    sub_EB68(&v189, &qword_403B48);
    (*(v162 + 8))(v63, v163);
    v58 = v144;
    v59 = v143;
    if (v176 != 1)
    {
      goto LABEL_13;
    }

LABEL_15:
    v60 = v51;
    v64 = [objc_opt_self() lightTextColor];
    v61 = sub_30D058();

    goto LABEL_16;
  }

  v58 = v144;
  v59 = v143;
  if (v56)
  {
    goto LABEL_15;
  }

LABEL_13:
  v60 = v51;
  v61 = sub_3068A8();
LABEL_16:

  v65 = v153;
  (*(v156 + 32))(v153, v54, v157);
  *&v65[*(v58 + 36)] = v61;
  v66 = v65;
  v67 = v152;
  sub_34804(v66, v152, &qword_403C20);
  v68 = v67;
  v69 = v169;
  sub_34804(v68, v169, &qword_403C20);
  (*(v59 + 56))(v69, 0, 1, v58);
  v37 = v60;
  v38 = v57;
LABEL_17:
  v70 = sub_307D88();
  if (!v71)
  {
    v78 = 0;
    v157 = 0;
    v156 = 0;
    KeyPath = 0;
    v151 = 0;
    v153 = 0;
    LODWORD(v152) = 0;
    v85 = 0;
    v86 = 0;
    goto LABEL_27;
  }

  v176 = v70;
  v177 = v71;
  sub_E504();
  v72 = sub_3063C8();
  v74 = v73;
  v76 = v75;
  if (qword_3FAAD0 != -1)
  {
    swift_once();
  }

  v77 = sub_3020D8();
  __swift_project_value_buffer(v77, qword_403AD0);
  v78 = sub_306308();
  v157 = v79;
  v81 = v80;
  v156 = v82;
  sub_EBC8(v72, v74, v76 & 1);

  KeyPath = swift_getKeyPath();
  v83 = v165[4];
  v187 = v83;
  v188 = *(v165 + 40);
  if (v188 != 1)
  {

    sub_30C7A8();
    v87 = sub_306088();
    sub_304108();

    v88 = v161;
    sub_3059F8();
    swift_getAtKeyPath();
    sub_EB68(&v187, &qword_403B48);
    (*(v162 + 8))(v88, v163);
    if (v176 != 1)
    {
      goto LABEL_22;
    }

LABEL_25:
    v84 = sub_306878();
    goto LABEL_26;
  }

  if (v83)
  {
    goto LABEL_25;
  }

LABEL_22:
  v84 = sub_306898();
LABEL_26:
  v153 = v84;
  LOBYTE(v176) = v81 & 1;
  LOBYTE(v171) = 0;
  v86 = v81 & 1;
  v85 = 0;
  LODWORD(v152) = 256;
  v151 = 1;
LABEL_27:
  v89 = swift_dynamicCastClass();
  v168 = 0;
  v164 = v86;
  if (!v89)
  {
    v91 = sub_116BB8();
    if (!v92)
    {
      v111 = [objc_opt_self() currentTraitCollection];
      v112 = [v111 preferredContentSizeCategory];

      LOBYTE(v111) = sub_30CAE8();
      if ((v111 & 1) == 0)
      {
        v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403C30);
        v117 = v148;
        (*(*(v140 - 8) + 56))(v148, 1, 1, v140);
        goto LABEL_43;
      }

      if (qword_3FAAD8 != -1)
      {
        swift_once();
      }

      v113 = sub_3020D8();
      __swift_project_value_buffer(v113, qword_403AE8);
      sub_301FF8();
      v114 = v141;
      sub_30B378();
      v115 = v142;
      v116 = v147;
      (*(v142 + 16))(v146, v114, v147);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403C48);
      sub_11A8F0();
      sub_11AA3C(&qword_403C60, &type metadata accessor for VSpacer);
      v117 = v148;
      sub_305D48();
      (*(v115 + 8))(v114, v116);
      v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403C30);
      (*(*(v118 - 8) + 56))(v117, 0, 1, v118);
LABEL_42:
      v86 = v164;
LABEL_43:
      sub_11A880(v117, v38);
      v90 = 0;
      v85 = v168;
      goto LABEL_44;
    }

    v154 = v78;
    v93 = v37;
    v176 = v91;
    v177 = v92;
    sub_E504();
    v94 = sub_3063C8();
    v96 = v95;
    v98 = v97;
    if (qword_3FAAD8 != -1)
    {
      swift_once();
    }

    v99 = sub_3020D8();
    __swift_project_value_buffer(v99, qword_403AE8);
    v100 = sub_306308();
    v102 = v101;
    v104 = v103;
    v106 = v105;
    sub_EBC8(v94, v96, v98 & 1);

    v107 = swift_getKeyPath();
    v108 = v104 & 1;
    LOBYTE(v176) = v104 & 1;
    LOBYTE(v171) = 0;
    v109 = v165[4];
    v185 = v109;
    v186 = *(v165 + 40);
    if (v186 == 1)
    {
      if ((v109 & 1) == 0)
      {
LABEL_34:
        v110 = sub_3068A8();
LABEL_41:
        v124 = v146;
        *v146 = v100;
        v124[1] = v102;
        *(v124 + 16) = v108;
        v124[3] = v106;
        v124[4] = v107;
        v124[5] = 1;
        *(v124 + 24) = 0;
        *(v124 + 50) = 1;
        v124[7] = v110;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403C48);
        sub_11A8F0();
        sub_11AA3C(&qword_403C60, &type metadata accessor for VSpacer);
        v117 = v148;
        sub_305D48();
        v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403C30);
        (*(*(v125 - 8) + 56))(v117, 0, 1, v125);
        v37 = v93;
        v78 = v154;
        goto LABEL_42;
      }
    }

    else
    {

      sub_30C7A8();
      v119 = sub_306088();
      sub_304108();

      v120 = v102;
      v121 = v161;
      sub_3059F8();
      swift_getAtKeyPath();
      sub_EB68(&v185, &qword_403B48);
      v122 = v121;
      v102 = v120;
      (*(v162 + 8))(v122, v163);
      if (v170 != 1)
      {
        goto LABEL_34;
      }
    }

    v123 = [objc_opt_self() lightTextColor];
    v110 = sub_30D058();

    goto LABEL_41;
  }

  v90 = 1;
LABEL_44:
  (*(v158 + 56))(v38, v90, 1, v37);
  v126 = v166;
  sub_EB00(v169, v166, &qword_403C28);
  v127 = v38;
  v128 = v159;
  sub_EB00(v127, v159, &qword_403C08);
  v129 = v160;
  sub_EB00(v126, v160, &qword_403C28);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403C38);
  v131 = v129 + *(v130 + 48);
  *&v171 = v78;
  v132 = v157;
  *(&v171 + 1) = v157;
  *&v172 = v86;
  v133 = v156;
  *(&v172 + 1) = v156;
  v134 = KeyPath;
  *&v173 = KeyPath;
  v135 = v151;
  *(&v173 + 1) = v151;
  *&v174 = v85;
  v136 = v153;
  *(&v174 + 1) = v153;
  LOWORD(v126) = v152;
  v175 = v152;
  *(v131 + 64) = v152;
  v137 = v172;
  *v131 = v171;
  *(v131 + 16) = v137;
  v138 = v174;
  *(v131 + 32) = v173;
  *(v131 + 48) = v138;
  sub_EB00(v128, v129 + *(v130 + 64), &qword_403C08);
  sub_EB00(&v171, &v176, &qword_403C40);
  sub_EB68(v167, &qword_403C08);
  sub_EB68(v169, &qword_403C28);
  sub_EB68(v128, &qword_403C08);
  v176 = v78;
  v177 = v132;
  v178 = v164;
  v179 = v133;
  v180 = v134;
  v181 = v135;
  v182 = v168;
  v183 = v136;
  v184 = v126;
  sub_EB68(&v176, &qword_403C40);
  return sub_EB68(v166, &qword_403C28);
}

double sub_11A05C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_305A08();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a1 + 72);
  KeyPath = swift_getKeyPath();
  v10 = *(a1 + 32);
  v25 = v10;
  v26 = *(a1 + 40);
  LODWORD(a1) = v26;

  if (a1 == 1)
  {
    if ((v10 & 1) == 0)
    {
LABEL_3:
      v11 = sub_306898();
      goto LABEL_6;
    }
  }

  else
  {
    sub_EB00(&v25, &v20, &qword_403B48);
    sub_30C7A8();
    v12 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();
    sub_EB68(&v25, &qword_403B48);
    (*(v5 + 8))(v7, v4);
    if (v19[24] != 1)
    {
      goto LABEL_3;
    }
  }

  v13 = [objc_opt_self() lightTextColor];
  v11 = sub_30D058();

LABEL_6:
  if (qword_3FAAC8 != -1)
  {
    swift_once();
  }

  sub_306C58();
  sub_3051F8();
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  *a2 = v8;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = 0;
  *(a2 + 24) = v11;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v14;
  *(a2 + 56) = v15;
  *(a2 + 64) = v16;
  *(a2 + 72) = v17;
  result = *&v24;
  *(a2 + 80) = v24;
  return result;
}

uint64_t sub_11A340@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = swift_getKeyPath();
  result = sub_306A08();
  *a3 = KeyPath;
  *(a3 + 8) = 0;
  *(a3 + 16) = v7;
  *(a3 + 24) = 0;
  *(a3 + 32) = v8;
  *(a3 + 40) = 0;
  *(a3 + 48) = v10;
  *(a3 + 56) = v11;
  *(a3 + 64) = 0;
  *(a3 + 72) = a1;
  *(a3 + 80) = a2;
  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_11A44C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_11A494(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm_6()
{

  sub_703E4(*(v0 + 32), *(v0 + 40));
  sub_111DE0(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 97, 7);
}

unint64_t sub_11A5D8()
{
  result = qword_403BA8;
  if (!qword_403BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403B78);
    sub_11A664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403BA8);
  }

  return result;
}

unint64_t sub_11A664()
{
  result = qword_403BB0;
  if (!qword_403BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_403B98);
    sub_11A71C();
    sub_EC8C(&qword_403BE0, &qword_403BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_403BB0);
  }

  return result;
}