uint64_t dispatch thunk of ContainerCell.separatorInsets.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 64);
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v4;
  return v3(v7);
}

uint64_t sub_22AA10(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v4 = sub_3041E8();
  v29 = *(v4 - 8);
  v30 = v4;
  __chkstk_darwin(v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - v8;
  v10 = sub_303398();
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v13 - 8);
  v15 = &v29 - v14;
  v16 = sub_3031C8();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v29 - v21;
  sub_101CE4(a1, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_125E18(v15);
  }

  sub_6D85C(v15, v22);
  if (v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_style])
  {
    v24 = v2;
    sub_3030C8();
    v25 = sub_303118();
    v26 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_artworkViewWithPlayback];

    sub_2EF18(v22, 102.0, 102.0);
    [v26 setContentMode:v25];
    sub_6D8C0(v22, v19);

    v27 = sub_303DF8();
    (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
    sub_304198();
    sub_30C778();
    sub_303A08();
    (*(v29 + 8))(v6, v30);
    v28 = [objc_opt_self() mainScreen];
    [v28 scale];

    sub_303358();
    type metadata accessor for ArtworkView();
    sub_221DB4();
    sub_308E28();
    (*(v31 + 8))(v12, v32);
  }

  return sub_6D924(v22);
}

uint64_t sub_22AEAC(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v28 = sub_3041E8();
  v3 = *(v28 - 8);
  __chkstk_darwin(v28);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_303398();
  v29 = *(v9 - 8);
  v30 = v9;
  __chkstk_darwin(v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v12 - 8);
  v14 = &v27 - v13;
  v15 = sub_3031C8();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v27 - v20;
  sub_101CE4(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_125E18(v14);
  }

  sub_6D85C(v14, v21);
  sub_3030C8();
  v23 = sub_303118();
  v24 = *(v27 + OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodeUpsellBannerCell_cachingArtworkView);
  if (qword_3FAB18 != -1)
  {
    swift_once();
  }

  sub_2EF18(v21, *&qword_404368, unk_404370);
  [v24 setContentMode:v23];
  sub_6D8C0(v21, v18);
  v25 = sub_303DF8();
  (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
  sub_304198();
  sub_30C778();
  sub_303A08();
  (*(v3 + 8))(v5, v28);
  v26 = [objc_opt_self() mainScreen];
  [v26 scale];

  sub_303358();
  type metadata accessor for ArtworkView();
  sub_221DB4();
  sub_308E28();
  (*(v29 + 8))(v11, v30);
  return sub_6D924(v21);
}

uint64_t sub_22B328(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v44 = a2;
  v5 = sub_3041E8();
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v7 - 8);
  v40 = &v36 - v8;
  v9 = sub_303398();
  v42 = *(v9 - 8);
  v43 = v9;
  __chkstk_darwin(v9);
  v41 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_303DF8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v15 - 8);
  v17 = &v36 - v16;
  v18 = sub_3031C8();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v36 - v23;
  sub_101CE4(a1, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_125E18(v17);
  }

  sub_6D85C(v17, v24);
  sub_3030E8();
  if ((*(v12 + 88))(v14, v11) == enum case for CropCode.boundingBox(_:))
  {
    v26 = 2;
  }

  else
  {
    sub_3030C8();
    v26 = sub_303118();
    (*(v12 + 8))(v14, v11);
  }

  v27 = OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_artworkView;
  v28 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews15PowerSwooshCell_artworkView];
  [v3 bounds];
  sub_2EF18(v24, v29, v30);

  [*&v3[v27] setContentMode:v26];
  v31 = *&v3[v27];
  sub_6D8C0(v24, v21);
  v32 = v31;
  [v3 bounds];
  (*(v12 + 56))(v40, 1, 1, v11);
  v33 = v37;
  sub_304198();
  sub_30C778();
  sub_303A08();
  (*(v38 + 8))(v33, v39);
  v34 = [objc_opt_self() mainScreen];
  [v34 scale];

  v35 = v41;
  sub_303358();
  type metadata accessor for ArtworkView();
  sub_221DB4();
  sub_308E28();

  (*(v42 + 8))(v35, v43);
  return sub_6D924(v24);
}

id sub_22B88C(uint64_t a1, uint64_t a2, uint64_t *a3, double a4)
{
  v44 = a3;
  v43 = a2;
  v6 = sub_3041E8();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v9 - 8);
  v39 = &v37 - v10;
  v11 = sub_303398();
  v41 = *(v11 - 8);
  v42 = v11;
  __chkstk_darwin(v11);
  v40 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_303DF8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v17 - 8);
  v19 = &v37 - v18;
  v20 = sub_3031C8();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v37 - v25;
  sub_101CE4(a1, v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    return sub_125E18(v19);
  }

  sub_6D85C(v19, v26);
  sub_3030E8();
  result = (*(v14 + 88))(v16, v13);
  if (result == enum case for CropCode.boundingBox(_:))
  {
    v28 = 6;
  }

  else
  {
    sub_3030C8();
    v28 = sub_303118();
    result = (*(v14 + 8))(v16, v13);
  }

  v29 = v45;
  v30 = *v44;
  v31 = *(v45 + *v44);
  if (!v31)
  {
    __break(1u);
    goto LABEL_11;
  }

  v32 = v31;
  sub_2EF18(v26, a4, a4);

  result = *(v29 + v30);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = [result setContentMode:v28];
  v33 = *(v29 + v30);
  if (v33)
  {
    sub_6D8C0(v26, v23);
    (*(v14 + 56))(v39, 1, 1, v13);
    v34 = v33;
    sub_304198();
    sub_30C778();
    sub_303A08();
    (*(v37 + 8))(v8, v38);
    v35 = [objc_opt_self() mainScreen];
    [v35 scale];

    v36 = v40;
    sub_303358();
    type metadata accessor for ArtworkView();
    sub_221DB4();
    sub_308E28();

    (*(v41 + 8))(v36, v42);
    return sub_6D924(v26);
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_22BDBC(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v3 = sub_3041E8();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v6 - 8);
  v34 = v31 - v7;
  v8 = sub_303398();
  v36 = *(v8 - 8);
  v37 = v8;
  __chkstk_darwin(v8);
  v35 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_303DF8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v14 - 8);
  v16 = v31 - v15;
  v17 = sub_3031C8();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v31 - v22;
  sub_101CE4(a1, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_125E18(v16);
  }

  sub_6D85C(v16, v23);
  sub_3030E8();
  if ((*(v11 + 88))(v13, v10) == enum case for CropCode.boundingBox(_:))
  {
    v25 = 5;
  }

  else
  {
    sub_3030C8();
    v25 = sub_303118();
    (*(v11 + 8))(v13, v10);
  }

  v26 = *(v31[1] + OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_artworkView);
  v27 = sub_237A54();
  sub_2EF18(v23, v27, v28);
  [v26 setContentMode:v25];
  sub_6D8C0(v23, v20);
  sub_237A54();
  (*(v11 + 56))(v34, 1, 1, v10);
  sub_304198();
  sub_30C778();
  sub_303A08();
  (*(v32 + 8))(v5, v33);
  v29 = [objc_opt_self() mainScreen];
  [v29 scale];

  v30 = v35;
  sub_303358();
  type metadata accessor for ArtworkView();
  sub_221DB4();
  sub_308E28();
  (*(v36 + 8))(v30, v37);
  return sub_6D924(v23);
}

uint64_t sub_22C2DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v61 = a2;
  v5 = sub_3041E8();
  v57 = *(v5 - 8);
  v58 = v5;
  __chkstk_darwin(v5);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v8 - 8);
  v10 = &v57 - v9;
  v11 = sub_303398();
  v59 = *(v11 - 8);
  v60 = v11;
  __chkstk_darwin(v11);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v14 - 8);
  v16 = &v57 - v15;
  v17 = sub_3031C8();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v57 - v22;
  sub_101CE4(a1, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_125E18(v16);
  }

  sub_6D85C(v16, v23);
  sub_3030C8();
  v25 = sub_303118();
  v26 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews23BrickCollectionViewCell_artworkView];
  v27 = [v3 contentView];
  [v27 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  [v27 layoutMargins];
  v37 = v36;
  v39 = v38;

  UIEdgeInsetsInsetRect(v29, v31, v33, v35, v37, v39);
  sub_2EF18(v23, v40, v41);
  [v26 setContentMode:v25];
  sub_6D8C0(v23, v20);
  v42 = [v3 contentView];
  [v42 bounds];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  [v42 layoutMargins];
  v52 = v51;
  v54 = v53;

  UIEdgeInsetsInsetRect(v44, v46, v48, v50, v52, v54);
  v55 = sub_303DF8();
  (*(*(v55 - 8) + 56))(v10, 1, 1, v55);
  sub_304198();
  sub_30C778();
  sub_303A08();
  (*(v57 + 8))(v7, v58);
  v56 = [objc_opt_self() mainScreen];
  [v56 scale];

  sub_303358();
  type metadata accessor for ArtworkView();
  sub_221DB4();
  sub_308E28();
  (*(v59 + 8))(v13, v60);
  return sub_6D924(v23);
}

uint64_t sub_22C82C(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = sub_3041E8();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v6 - 8);
  v39 = &v35 - v7;
  v8 = sub_303398();
  v41 = *(v8 - 8);
  v42 = v8;
  __chkstk_darwin(v8);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_303DF8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - v15;
  v17 = sub_3031C8();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v35 - v22;
  sub_101CE4(a1, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_125E18(v16);
  }

  sub_6D85C(v16, v23);
  sub_3030E8();
  if ((*(v11 + 88))(v13, v10) == enum case for CropCode.boundingBox(_:))
  {
    v25 = 6;
  }

  else
  {
    sub_3030C8();
    v25 = sub_303118();
    (*(v11 + 8))(v13, v10);
  }

  v26 = OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_cachingArtworkView;
  v27 = v36;
  v28 = *(v36 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_preferredArtworkSize);
  v29 = *(v36 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_preferredArtworkSize + 8);
  v30 = *(v36 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_cachingArtworkView);
  sub_2EF18(v23, v28, v29);

  [*(v27 + v26) setContentMode:v25];
  v31 = *(v27 + v26);
  sub_6D8C0(v23, v20);
  (*(v11 + 56))(v39, 1, 1, v10);
  v32 = v31;
  sub_304198();
  sub_30C778();
  sub_303A08();
  (*(v37 + 8))(v5, v38);
  v33 = [objc_opt_self() mainScreen];
  [v33 scale];

  v34 = v40;
  sub_303358();
  type metadata accessor for ArtworkView();
  sub_221DB4();
  sub_308E28();

  (*(v41 + 8))(v34, v42);
  return sub_6D924(v23);
}

uint64_t sub_22CD64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = a2;
  v5 = sub_3041E8();
  v29 = *(v5 - 8);
  v30 = v5;
  __chkstk_darwin(v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - v9;
  v11 = sub_303398();
  v31 = *(v11 - 8);
  v32 = v11;
  __chkstk_darwin(v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v14 - 8);
  v16 = &v29 - v15;
  v17 = sub_3031C8();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v29 - v22;
  sub_101CE4(a1, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_125E18(v16);
  }

  sub_6D85C(v16, v23);
  sub_3030C8();
  v25 = sub_303118();
  v26 = *(v3 + qword_40E098);
  sub_2EF18(v23, *(v3 + qword_40E038), *(v3 + qword_40E038 + 8));
  [v26 setContentMode:v25];
  sub_6D8C0(v23, v20);
  v27 = sub_303DF8();
  (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
  sub_304198();
  sub_30C778();
  sub_303A08();
  (*(v29 + 8))(v7, v30);
  v28 = [objc_opt_self() mainScreen];
  [v28 scale];

  sub_303358();
  type metadata accessor for ArtworkView();
  sub_221DB4();
  sub_308E28();
  (*(v31 + 8))(v13, v32);
  return sub_6D924(v23);
}

id ContextMenuPreviewViewController.init(preview:asPartOf:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController_defaultMaxWidth] = 0x4075E00000000000;
  v5 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController_padding];
  sub_302828();
  v7 = v6;
  sub_302828();
  v9 = v8;
  sub_302828();
  v11 = v10;
  sub_302828();
  *v5 = v7;
  *(v5 + 1) = v9;
  *(v5 + 2) = v11;
  *(v5 + 3) = v12;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController_lockupView] = 0;
  v13 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController_preferredLockupViewSize];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController_preview] = a1;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController_objectGraph] = a2;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for ContextMenuPreviewViewController();
  return objc_msgSendSuper2(&v15, "initWithNibName:bundle:", 0, 0);
}

void sub_22D31C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v5 = type metadata accessor for ContextMenuPreviewViewController();
  v26.receiver = v0;
  v26.super_class = v5;
  objc_msgSendSuper2(&v26, "loadView");
  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = v6;
  v8 = [objc_opt_self() systemBackgroundColor];
  [v7 setBackgroundColor:v8];

  v9 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController_preview];
  if (v9 >> 62)
  {

    if (v9 >> 62 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 256;
    }

    sub_22D6FC(v10, v9 & 0x3FFFFFFFFFFFFFFFLL);
  }

  else
  {
    v11 = objc_allocWithZone(type metadata accessor for EpisodeView());

    v12 = sub_8B8D0(1);
    v13 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController_objectGraph];
    *&v12[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_objectGraph] = v13;

    sub_2AE20(v14);
    v25 = 2;
    sub_8F890(v9, &v25);

    sub_307DA8();

    sub_22AA10(v4, v13);
    sub_125E18(v4);
    v15 = *&v12[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_artworkViewWithPlayback];
    v16 = v15[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style];
    v15[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style] = 3;
    v25 = v16;
    v17 = v15;
    sub_2DE78(&v25);

    v18 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController_lockupView];
    *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController_lockupView] = v12;
    v19 = v12;

    v20 = sub_22DCE8(v1, 1);
    v21 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController_preferredLockupViewSize];
    *v21 = 0.0;
    v21[1] = v20;
    if (v20 > 0.0)
    {
      v20 = v20 + *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController_padding] + *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController_padding + 16];
    }

    [v1 setPreferredContentSize:{0.0, v20}];
  }

  v22 = [v1 view];
  if (!v22)
  {
    goto LABEL_14;
  }

  if (*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController_lockupView])
  {
    v23 = v22;
    [v22 addSubview:?];

    return;
  }

LABEL_15:
  __break(1u);
}

id sub_22D670(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ContextMenuPreviewViewController();
  return objc_msgSendSuper2(&v4, "viewWillDisappear:", a1 & 1);
}

void sub_22D6FC(__int16 a1, uint64_t a2)
{
  v3 = v2;
  v27 = sub_3071E8();
  v6 = *(v27 - 8);
  __chkstk_darwin(v27);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = objc_allocWithZone(type metadata accessor for LargeLockupView());
  v13 = sub_26664C(a1 & 0x101);
  v14 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController_objectGraph];
  *&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_objectGraph] = v14;

  v15 = sub_2662B0();
  sub_2AE20(v14);

  sub_26579C(a2, 350.0);
  sub_307DA8();
  sub_22C82C(v11, v14);
  sub_125E18(v11);
  if ((a1 & 0x100) == 0)
  {
    v16 = *&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_cachingArtworkView];
    v17 = v16[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style];
    v16[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style] = 3;
    v28 = v17;
    v18 = v16;
    sub_2DE78(&v28);
  }

  v19 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController_lockupView];
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController_lockupView] = v13;
  v20 = v13;

  v21 = [v3 traitCollection];
  sub_265A80(a1 & 1, v21);

  sub_3071A8();
  v23 = v22;
  v25 = v24;
  (*(v6 + 8))(v8, v27);
  v26 = &v3[OBJC_IVAR____TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController_preferredLockupViewSize];
  *v26 = v23;
  v26[1] = v25;
  if (v23 > 0.0)
  {
    v23 = v23 + *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController_padding + 8] + *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController_padding + 24];
  }

  if (v25 > 0.0)
  {
    v25 = v25 + *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController_padding] + *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController_padding + 16];
  }

  [v3 setPreferredContentSize:{v23, v25, v27}];
}

void sub_22D9F4()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for ContextMenuPreviewViewController();
  objc_msgSendSuper2(&v13, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController_lockupView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      [v2 setFrame:{UIEdgeInsetsInsetRect(v6, v8, v10, v12, *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController_padding], *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController_padding + 8])}];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id ContextMenuPreviewViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextMenuPreviewViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_22DC20()
{
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController_defaultMaxWidth) = 0x4075E00000000000;
  v1 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController_padding);
  sub_302828();
  v3 = v2;
  sub_302828();
  v5 = v4;
  sub_302828();
  v7 = v6;
  sub_302828();
  *v1 = v3;
  v1[1] = v5;
  v1[2] = v7;
  v1[3] = v8;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController_lockupView) = 0;
  v9 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews32ContextMenuPreviewViewController_preferredLockupViewSize);
  *v9 = 0;
  v9[1] = 0;
  sub_30D648();
  __break(1u);
}

double sub_22DCE8(void *a1, int a2)
{
  v57 = a2;
  v56 = a1;
  v2 = sub_30D6F8();
  v53 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_3FAD88 != -1)
  {
    swift_once();
  }

  v61 = xmmword_42A390;
  v62 = unk_42A3A0;
  v63[0] = xmmword_42A3B0;
  *(v63 + 10) = *(&xmmword_42A3B0 + 10);
  v59 = xmmword_42A370;
  v60 = unk_42A380;
  v5 = objc_opt_self();
  v6 = [v5 system];
  v7 = [v6 preferredContentSizeCategory];

  v8 = objc_opt_self();
  v9 = [v8 traitCollectionWithPreferredContentSizeCategory:v7];

  v10 = sub_2DAA3C(&v59, v9);
  v11 = objc_opt_self();
  v58 = [v11 fontWithDescriptor:v10 size:0.0];

  if (qword_3FAD90 != -1)
  {
    swift_once();
  }

  v61 = xmmword_42A3F0;
  v62 = unk_42A400;
  v63[0] = xmmword_42A410;
  *(v63 + 10) = *(&xmmword_42A410 + 10);
  v59 = xmmword_42A3D0;
  v60 = unk_42A3E0;
  v12 = [v5 system];
  v13 = [v12 preferredContentSizeCategory];

  v14 = [v8 traitCollectionWithPreferredContentSizeCategory:v13];
  v15 = sub_2DAA3C(&v59, v14);
  v16 = [v11 fontWithDescriptor:v15 size:0.0];

  if (qword_3FAD98 != -1)
  {
    swift_once();
  }

  v61 = xmmword_42A450;
  v62 = unk_42A460;
  v63[0] = xmmword_42A470;
  *(v63 + 10) = *(&xmmword_42A470 + 10);
  v59 = xmmword_42A430;
  v60 = unk_42A440;
  v17 = [v5 system];
  v18 = [v17 preferredContentSizeCategory];

  v19 = [v8 traitCollectionWithPreferredContentSizeCategory:v18];
  v20 = sub_2DAA3C(&v59, v19);
  v54 = [v11 fontWithDescriptor:v20 size:0.0];

  [v58 lineHeight];
  v22 = v21;
  v23 = v53;
  if (qword_3FA9D0 != -1)
  {
    swift_once();
  }

  v55 = v16;
  v63[6] = xmmword_3FF920;
  v63[7] = xmmword_3FF930;
  v63[8] = unk_3FF940;
  v64 = word_3FF950;
  v63[2] = xmmword_3FF8E0;
  v63[3] = *&byte_3FF8F0;
  v63[4] = xmmword_3FF900;
  v63[5] = xmmword_3FF910;
  if (qword_3FAC38 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v2, qword_4295D8);
  v52 = *(v23 + 16);
  v52(v4, v24, v2);
  v25 = v56;
  v26 = [v56 traitCollection];
  sub_231F6C(v26, v4, 0);
  v27 = v4;
  v29 = v28;

  v30 = v25;
  v31 = *(v23 + 8);
  v31(v27, v2);
  v32 = v55;
  [v55 lineHeight];
  v34 = v33;
  [v32 lineHeight];
  v36 = v35;
  [v32 leading];
  if (qword_3FA9D8 != -1)
  {
    v50 = v37;
    swift_once();
    v37 = v50;
  }

  v69 = xmmword_3FF998;
  v70 = xmmword_3FF9A8;
  v38 = v22 + 0.0 + v29 + v34 + v36 + v37 + v36 + v37;
  v71 = unk_3FF9B8;
  v72 = word_3FF9C8;
  v65 = xmmword_3FF958;
  v66 = *&byte_3FF968;
  v67 = xmmword_3FF978;
  v68 = xmmword_3FF988;
  v52(v27, v24, v2);
  v39 = v30;
  v40 = [v30 traitCollection];
  sub_231F6C(v40, v27, 0);
  v42 = v41;

  v31(v27, v2);
  v43 = v54;
  [v54 lineHeight];
  v45 = v38 + v42 + v44;
  v46 = [v39 traitCollection];

  v47 = 102.0;
  if (v45 > 102.0)
  {
    v47 = v45;
  }

  if (v45 > 0.0)
  {
    v48 = v45;
  }

  else
  {
    v48 = 0.0;
  }

  if ((v57 & 1) == 0)
  {
    v47 = v48;
  }

  return ceil(v47);
}

uint64_t sub_22E3C0@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_alignment;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

id sub_22E414(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_alignment;
  swift_beginAccess();
  v1[v3] = v2;
  return [v1 setNeedsDisplay];
}

uint64_t (*sub_22E474(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22F628;
}

double sub_22E4D8()
{
  v1 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_safetyCutoutSize;
  swift_beginAccess();
  return *v1;
}

id sub_22E520(double a1, double a2)
{
  v5 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_safetyCutoutSize];
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return [v2 setNeedsDisplay];
}

uint64_t (*sub_22E588(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22F628;
}

double sub_22E5EC()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_fadeLength;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_22E630(double a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_fadeLength;
  swift_beginAccess();
  *&v1[v3] = a1;
  return [v1 setNeedsDisplay];
}

uint64_t (*sub_22E690(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22E6F4;
}

id sub_22E6F8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsDisplay];
  }

  return result;
}

double sub_22E74C()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_alignment;
  swift_beginAccess();
  LODWORD(v1) = v0[v1];
  [v0 bounds];
  v6 = v2;
  if (v1 == 1)
  {
    v7 = v2;
    v8 = v3;
    v9 = v4;
    v10 = v5;
    MaxX = CGRectGetMaxX(*&v2);
    v5 = v10;
    v4 = v9;
    v3 = v8;
    v6 = MaxX;
    v2 = v7;
  }

  CGRectGetMaxY(*&v2);
  return v6;
}

double sub_22E7F0()
{
  v1 = sub_22E9C4();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_alignment;
  swift_beginAccess();
  if (*(v0 + v8) == 1)
  {
    v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_fadeLength;
    swift_beginAccess();
    v10 = v1 - *(v0 + v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_315420;
    *(inited + 32) = v10;
    *(inited + 40) = v3 + 0.0;
    v19.origin.x = v1;
    v19.origin.y = v3;
    v19.size.width = v5;
    v19.size.height = v7;
    MaxY = CGRectGetMaxY(v19);
    *(inited + 48) = v1;
  }

  else
  {
    v20.origin.x = v1;
    v20.origin.y = v3;
    v20.size.width = v5;
    v20.size.height = v7;
    MaxX = CGRectGetMaxX(v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_315420;
    *(inited + 32) = MaxX;
    *(inited + 40) = v3;
    v21.origin.x = v1;
    v21.origin.y = v3;
    v21.size.width = v5;
    v21.size.height = v7;
    v14 = CGRectGetMaxX(v21);
    v22.origin.x = v1;
    v22.origin.y = v3;
    v22.size.width = v5;
    v22.size.height = v7;
    v15 = CGRectGetMaxY(v22);
    v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_fadeLength;
    swift_beginAccess();
    MaxY = v15 + 0.0;
    *(inited + 48) = v14 + *(v0 + v16);
  }

  *(inited + 56) = MaxY;
  v17 = _sSo6CGRectV23ShelfKitCollectionViewsE10containing6pointsABSo7CGPointVd_tFZ_0(inited);
  swift_setDeallocating();
  return v17;
}

double sub_22E9C4()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_alignment;
  swift_beginAccess();
  LOBYTE(v1) = v0[v1];
  [v0 bounds];
  if (v1)
  {
    v6 = v2;
    v7 = v3;
    v8 = v4;
    v9 = v5;
    MaxX = CGRectGetMaxX(*&v2);
    v15.origin.x = v6;
    v15.origin.y = v7;
    v15.size.width = v8;
    v15.size.height = v9;
    CGRectGetMaxY(v15);
    v11 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_safetyCutoutSize];
    swift_beginAccess();
    v12 = MaxX - *v11;
  }

  else
  {
    v13 = v2;
    CGRectGetMaxY(*&v2);
    swift_beginAccess();
    v12 = v13 + 0.0;
  }

  swift_beginAccess();
  return v12;
}

void sub_22EB44()
{
  v1 = UIGraphicsGetCurrentContext();
  if (v1)
  {
    v2 = v1;
    CGContextSaveGState(v1);
    v3 = sub_22E7F0();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    CGContextSetBlendMode(v2, kCGBlendModeDestinationOut);
    v25.origin.x = v3;
    v25.origin.y = v5;
    v25.size.width = v7;
    v25.size.height = v9;
    CGContextClipToRect(v2, v25);
    v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_alignment;
    swift_beginAccess();
    if ((*(v0 + v10) & 1) == 0)
    {
      sub_1A6584();
    }

    DeviceGray = CGColorSpaceCreateDeviceGray();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_317F20;
    v13 = objc_opt_self();
    v14 = [v13 clearColor];
    v15 = [v14 CGColor];

    *(v12 + 32) = v15;
    v16 = [v13 blackColor];
    v17 = [v16 CGColor];

    *(v12 + 40) = v17;
    type metadata accessor for CGColor(0);
    isa = sub_30C358().super.isa;

    v19 = CGGradientCreateWithColors(DeviceGray, isa, dbl_3B4BB0);

    if (v19)
    {
      v26.origin.x = v3;
      v26.origin.y = v5;
      v26.size.width = v7;
      v26.size.height = v9;
      MinX = CGRectGetMinX(v26);
      v27.origin.x = v3;
      v27.origin.y = v5;
      v27.size.width = v7;
      v27.size.height = v9;
      MidY = CGRectGetMidY(v27);
      v28.origin.x = v3;
      v28.origin.y = v5;
      v28.size.width = v7;
      v28.size.height = v9;
      MaxX = CGRectGetMaxX(v28);
      v29.origin.x = v3;
      v29.origin.y = v5;
      v29.size.width = v7;
      v29.size.height = v9;
      v24.y = CGRectGetMidY(v29);
      v23.x = MinX;
      v23.y = MidY;
      v24.x = MaxX;
      CGContextDrawLinearGradient(v2, v19, v23, v24, 2u);
      CGContextRestoreGState(v2);
    }
  }
}

id CornerFadeView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_alignment] = 1;
  v9 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_safetyCutoutSize];
  *v9 = 0;
  v9[1] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_fadeLength] = 0;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for CornerFadeView();
  v10 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 clearColor];
  [v12 setBackgroundColor:v13];

  return v12;
}

id CornerFadeView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CornerFadeView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_22EF90()
{
  v1 = UIGraphicsGetCurrentContext();
  if (v1)
  {
    c = v1;
    v2 = objc_opt_self();
    v3 = [v2 blackColor];
    v4 = [v3 CGColor];

    CGContextSetFillColorWithColor(c, v4);
    [v0 bounds];
    CGContextFillRect(c, v18);
    v5 = UIGraphicsGetCurrentContext();
    if (v5)
    {
      v6 = v5;
      v7 = sub_22E9C4();
      v9 = v8;
      v11 = v10;
      v13 = v12;
      CGContextSaveGState(v6);
      v19.origin.x = v7;
      v19.origin.y = v9;
      v19.size.width = v11;
      v19.size.height = v13;
      CGContextClipToRect(v6, v19);
      CGContextSetBlendMode(v6, kCGBlendModeDestinationOut);
      v14 = [v2 blackColor];
      v15 = [v14 CGColor];

      CGContextSetFillColorWithColor(v6, v15);
      v20.origin.x = v7;
      v20.origin.y = v9;
      v20.size.width = v11;
      v20.size.height = v13;
      CGContextFillRect(v6, v20);
      CGContextRestoreGState(v6);
    }

    sub_22EB44();
  }
}

unint64_t sub_22F16C()
{
  result = qword_409C60;
  if (!qword_409C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_409C60);
  }

  return result;
}

uint64_t sub_22F1C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_alignment;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_22F218(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_alignment;
  swift_beginAccess();
  v3[v4] = v2;
  return [v3 setNeedsDisplay];
}

__n128 sub_22F27C@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_safetyCutoutSize;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

id sub_22F2D4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *a2 + OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_safetyCutoutSize;
  swift_beginAccess();
  *v5 = v2;
  v5[1] = v3;
  return [v4 setNeedsDisplay];
}

double sub_22F33C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_fadeLength;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

id sub_22F394(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_fadeLength;
  swift_beginAccess();
  *&v3[v4] = v2;
  return [v3 setNeedsDisplay];
}

uint64_t sub_22F648(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_30D578();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_30D668();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_22F770(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = *v6++;
      v12 = v8;
      sub_BA538(v8);
      v9 = a1(&v12);
      sub_1DB3C(v8);
      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *sub_22F818()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_hostedViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_hiddenViews;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)); ; i = sub_30D668())
  {

    if (!i)
    {
      break;
    }

    v6 = 0;
    v16 = v2 & 0xFFFFFFFFFFFFFF8;
    v17 = v2 & 0xC000000000000001;
    v7 = v2 + 32;
LABEL_6:
    while (2)
    {
      if (v17)
      {
        v8 = sub_30D578();
      }

      else
      {
        if (v6 >= *(v16 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(v7 + 8 * v6);
      }

      v9 = v8;
      if (!__OFADD__(v6++, 1))
      {
        v11 = 0;
        v12 = *(v4 + 16);
        do
        {
          if (v12 == v11)
          {
            sub_30D5A8();
            sub_30D5E8();
            sub_30D5F8();
            sub_30D5B8();
            if (v6 == i)
            {
              goto LABEL_17;
            }

            goto LABEL_6;
          }

          if (v11 >= *(v4 + 16))
          {
            __break(1u);
            goto LABEL_19;
          }

          v2 = v11 + 1;
          v13 = *(v4 + 32 + 8 * v11);
          v14 = sub_30D0B8();
          v11 = v2;
        }

        while (v14 != v13);

        if (v6 != i)
        {
          continue;
        }

        goto LABEL_17;
      }

      break;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_17:

  return _swiftEmptyArrayStorage;
}

id sub_22FB48(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_hostedViews;
  swift_beginAccess();
  v15 = *&v7[v14];
  v30[0] = a1;
  v28[2] = v30;

  v16 = sub_22F648(sub_231A14, v28, v15);

  if ((v16 & 1) == 0)
  {
    swift_beginAccess();
    v18 = a1;
    sub_30C348();
    if (*(&dword_10 + (*&v7[v14] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v7[v14] & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_30C378();
    }

    sub_30C3C8();
    swift_endAccess();
    v19 = sub_30D0B8();
    *v30 = a3;
    *&v30[1] = a4;
    *&v30[2] = a5;
    *&v30[3] = a6;
    v30[4] = a2;
    v20 = OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_hostedViewSettings;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *&v7[v20];
    *&v7[v20] = 0x8000000000000000;
    sub_295F24(v30, v19, isUniquelyReferenced_nonNull_native);
    *&v7[v20] = v29;
    swift_endAccess();
    [v18 setAlpha:0.0];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = sub_30D0B8();
    v23 = OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_hiddenViews;
    swift_beginAccess();
    v24 = *&v7[v23];
    v25 = swift_isUniquelyReferenced_nonNull_native();
    *&v7[v23] = v24;
    if ((v25 & 1) == 0)
    {
      v24 = sub_CB258(0, *(v24 + 2) + 1, 1, v24);
      *&v7[v23] = v24;
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    if (v27 >= v26 >> 1)
    {
      v24 = sub_CB258((v26 > 1), v27 + 1, 1, v24);
    }

    *(v24 + 2) = v27 + 1;
    *&v24[8 * v27 + 32] = v22;
    *&v7[v23] = v24;
    return [v7 addSubview:v18];
  }

  return result;
}

void **sub_22FDD8(void **a1, char a2)
{
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_hostedViews;
  swift_beginAccess();
  v6 = *&v2[v5];
  p_aBlock = &aBlock;
  aBlock = a1;

  v7 = sub_22F648(sub_231E5C, v38, v6);

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *&v2[v5];

  v9 = sub_2416FC(a1, v8);
  v11 = v10;

  if (v11)
  {
    return 0;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v2;
  v14 = v2;
  v15 = a1;
  v16 = [v15 superview];
  if (v16)
  {

    v17 = sub_230300(v9);
    if (v17)
    {
      v18 = v17;
      v19 = swift_allocObject();
      *(v19 + 16) = sub_231DC0;
      *(v19 + 24) = v13;

      v20 = v18;
      sub_2303F0(v18, sub_747B0, v19);
    }

    else
    {
      if (a2)
      {
        v37 = objc_opt_self();
        v21 = swift_allocObject();
        *(v21 + 16) = v15;
        v44 = sub_231E38;
        v45 = v21;
        aBlock = _NSConcreteStackBlock;
        v41 = 1107296256;
        v42 = sub_914CC;
        v43 = &block_descriptor_55;
        v22 = _Block_copy(&aBlock);
        v23 = v15;

        v24 = swift_allocObject();
        *(v24 + 16) = sub_231DC0;
        *(v24 + 24) = v13;
        v44 = sub_747B0;
        v45 = v24;
        aBlock = _NSConcreteStackBlock;
        v41 = 1107296256;
        v42 = sub_2504C4;
        v43 = &block_descriptor_61;
        v25 = _Block_copy(&aBlock);

        [v37 animateWithDuration:6 delay:v22 options:v25 animations:0.3 completion:0.0];
        _Block_release(v25);
        _Block_release(v22);
      }

      else
      {
        [v15 removeFromSuperview];
        [v15 setAlpha:1.0];
        v26 = *&v14[OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_currentView];
        *&v14[OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_currentView] = 0;

        *&v14[OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_currentViewConstraints] = 0;
      }

      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  swift_beginAccess();
  v27 = sub_182DF0(v9);
  swift_endAccess();

  v28 = sub_30D0B8();
  v29 = OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_hostedViewSettings;
  swift_beginAccess();
  v30 = sub_191978(v28);
  if ((v31 & 1) == 0)
  {
    goto LABEL_15;
  }

  v32 = v30;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *&v14[v29];
  v46 = v34;
  *&v14[v29] = 0x8000000000000000;
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_18;
  }

  while (1)
  {
    sub_1B4358(v32, v34);
    *&v14[v29] = v34;
LABEL_15:
    swift_endAccess();
    v32 = OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_hiddenViews;
    swift_beginAccess();
    v35 = v15;
    v15 = sub_231B3C(&v14[v32]);

    v36 = *(*&v14[v32] + 16);
    if (v36 >= v15)
    {
      break;
    }

    __break(1u);
LABEL_18:
    sub_297B38();
    v34 = v46;
  }

  sub_17FBB4(v15, v36);
  swift_endAccess();

  return v20;
}

uint64_t sub_230288(void *a1, uint64_t a2)
{
  [a1 removeFromSuperview];
  [a1 setAlpha:1.0];
  v4 = *(a2 + OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_currentView);
  *(a2 + OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_currentView) = 0;

  *(a2 + OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_currentViewConstraints) = 0;
}

unint64_t sub_230300(uint64_t a1)
{
  result = sub_22F818();
  if (!(result >> 62))
  {
    v3 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    if (v3 >= 1)
    {
      goto LABEL_3;
    }

LABEL_12:

    return 0;
  }

  v8 = result;
  v3 = sub_30D668();
  result = v8;
  if (v3 < 1)
  {
    goto LABEL_12;
  }

LABEL_3:
  v4 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v3 < v4)
  {
    v4 = a1 - 1;
    if (__OFSUB__(a1, 1))
    {
      goto LABEL_18;
    }
  }

  v5 = v4 % v3;
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_15:
    v6 = sub_30D578();
    goto LABEL_10;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    v6 = *(result + 8 * v5 + 32);
LABEL_10:
    v7 = v6;

    return v7;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_2303F0(void **a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_hostedViews;
  swift_beginAccess();
  v9 = *(v4 + v8);
  aBlock = a1;
  v44[2] = &aBlock;

  v10 = sub_22F648(sub_231E5C, v44, v9);

  if (v10)
  {
    v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_hiddenViews;
    swift_beginAccess();
    v13 = a1;
    v14 = sub_231B3C((v4 + v12));

    v15 = *(*(v4 + v12) + 16);
    if (v15 < v14)
    {
      __break(1u);
      swift_endAccess();
      __break(1u);
      return;
    }

    sub_17FBB4(v14, v15);
    swift_endAccess();
    v16 = *(v4 + v8);

    v17 = sub_2416FC(v13, v16);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      v20 = OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_currentView;
      v21 = *(v4 + OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_currentView);
      if (!v21 || (sub_124C4(0, &qword_3FBD90), v22 = v13, v23 = v21, v24 = sub_30D098(), v22, v23, (v24 & 1) == 0))
      {
        v25 = sub_30D0B8();
        v26 = OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_hostedViewSettings;
        swift_beginAccess();
        if (*(*(v4 + v26) + 16))
        {
          sub_191978(v25);
          if (v27)
          {
            swift_endAccess();
            v28 = *(v4 + v20);
            if (!v28)
            {
              [v13 setAlpha:0.0];
              *(v4 + OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_currentViewConstraints) = sub_30CEB8();

              v35 = objc_opt_self();
              sub_124C4(0, &qword_403000);
              isa = sub_30C358().super.isa;

              [v35 activateConstraints:isa];

              [v13 layoutIfNeeded];
              v37 = *(v4 + v20);
              *(v4 + v20) = v13;

              v38 = objc_opt_self();
              v39 = swift_allocObject();
              *(v39 + 16) = v13;
              v49 = sub_14DC24;
              v50 = v39;
              aBlock = _NSConcreteStackBlock;
              v46 = 1107296256;
              v47 = sub_914CC;
              v48 = &block_descriptor_17_0;
              v40 = _Block_copy(&aBlock);
              v41 = v13;

              v42 = swift_allocObject();
              *(v42 + 16) = a2;
              *(v42 + 24) = a3;
              v49 = sub_231CD4;
              v50 = v42;
              aBlock = _NSConcreteStackBlock;
              v46 = 1107296256;
              v47 = sub_2504C4;
              v48 = &block_descriptor_23_1;
              v43 = _Block_copy(&aBlock);
              sub_A0EF8(a2, a3);

              [v38 animateWithDuration:6 delay:v40 options:v43 animations:0.3 completion:0.0];
              _Block_release(v43);
              _Block_release(v40);
              return;
            }

            v29 = *(v4 + v8);

            v30 = v28;
            v31 = sub_2416FC(v30, v29);
            v33 = v32;

            if (v33)
            {
              if (v17)
              {
                if (v17 > 0)
                {
LABEL_12:
                  v34 = 1;
LABEL_22:
                  sub_2308D8(v30, v13, v34, a2, a3);

                  return;
                }

LABEL_21:
                v34 = 0;
                goto LABEL_22;
              }
            }

            else if (v31 != v17)
            {
              if (v31 < v17)
              {
                goto LABEL_12;
              }

              goto LABEL_21;
            }

            v34 = 2;
            goto LABEL_22;
          }
        }

        v11 = swift_endAccess();
      }
    }
  }

  if (a2)
  {
    a2(v11);
  }
}

uint64_t sub_2308D8(void *a1, void *a2, char a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v6 = v5;
  v12 = sub_30D0B8();
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_hostedViewSettings;
  swift_beginAccess();
  v14 = *&v5[v13];
  if (*(v14 + 16) && (v15 = sub_191978(v12), (v16 & 1) != 0) && (v17 = *(v14 + 56) + 40 * v15, v18 = *(v17 + 16), v56[0] = *v17, v56[1] = v18, v57 = *(v17 + 32), swift_endAccess(), v19 = sub_30D0B8(), swift_beginAccess(), v20 = *&v6[v13], *(v20 + 16)) && (v21 = sub_191978(v19), (v22 & 1) != 0))
  {
    v23 = *(v20 + 56) + 40 * v21;
    v24 = *(v23 + 16);
    v58[0] = *v23;
    v58[1] = v24;
    v59 = *(v23 + 32);
    swift_endAccess();
    sub_23149C(a2, v58, a3);
    v25 = objc_opt_self();
    sub_124C4(0, &qword_403000);
    isa = sub_30C358().super.isa;
    v48 = v25;
    [v25 activateConstraints:isa];

    v27 = objc_opt_self();
    v28 = swift_allocObject();
    *(v28 + 16) = v6;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_231D04;
    *(v29 + 24) = v28;
    v54 = sub_293C0;
    v55 = v29;
    aBlock = _NSConcreteStackBlock;
    v51 = 1107296256;
    v52 = sub_19D688;
    v53 = &block_descriptor_32;
    v30 = _Block_copy(&aBlock);
    v31 = v6;

    v49 = v27;
    [v27 performWithoutAnimation:v30];
    _Block_release(v30);
    LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

    if (v30)
    {
      __break(1u);
    }

    else
    {
      v33 = sub_23149C(a1, v56, 0x20001u >> (8 * a3));
      v34 = sub_30CEB8();
      aBlock = v33;
      v47 = v33;

      sub_14A360(v35);
      v36 = OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_currentViewConstraints;
      if (*&v31[OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_currentViewConstraints])
      {

        v37 = sub_30C358().super.isa;

        [v48 deactivateConstraints:v37];
      }

      v38 = sub_30C358().super.isa;

      [v48 deactivateConstraints:v38];

      v39 = sub_30C358().super.isa;

      [v48 activateConstraints:v39];

      *&v31[v36] = v34;

      v40 = *&v31[OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_currentView];
      *&v31[OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_currentView] = a2;

      [a2 setAlpha:1.0];
      v41 = swift_allocObject();
      *(v41 + 16) = v31;
      v54 = sub_231E34;
      v55 = v41;
      aBlock = _NSConcreteStackBlock;
      v51 = 1107296256;
      v52 = sub_914CC;
      v53 = &block_descriptor_38;
      v42 = _Block_copy(&aBlock);
      v43 = v31;

      v44 = swift_allocObject();
      v44[2] = a1;
      v44[3] = v47;
      v44[4] = a4;
      v44[5] = a5;
      v54 = sub_231D74;
      v55 = v44;
      aBlock = _NSConcreteStackBlock;
      v51 = 1107296256;
      v52 = sub_2504C4;
      v53 = &block_descriptor_44_0;
      v45 = _Block_copy(&aBlock);
      v46 = a1;
      sub_A0EF8(a4, a5);

      [v49 animateWithDuration:6 delay:v42 options:v45 animations:0.3 completion:0.0];
      _Block_release(v45);
      _Block_release(v42);
    }
  }

  else
  {
    result = swift_endAccess();
    if (a4)
    {
      return a4(result);
    }
  }

  return result;
}

void **sub_230E60(void **a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_hostedViews;
  swift_beginAccess();
  v9 = *(v3 + v8);
  v36[2] = &aBlock;
  aBlock = a1;

  v10 = sub_22F648(sub_231E5C, v36, v9);

  if ((v10 & 1) == 0)
  {
    goto LABEL_12;
  }

  v12 = sub_30D0B8();
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_hiddenViews;
  swift_beginAccess();
  v14 = *(v4 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + v13) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = sub_CB258(0, *(v14 + 16) + 1, 1, v14);
    v14 = isUniquelyReferenced_nonNull_native;
    *(v4 + v13) = isUniquelyReferenced_nonNull_native;
  }

  v16 = *(v14 + 16);
  v15 = *(v14 + 24);
  if (v16 >= v15 >> 1)
  {
    isUniquelyReferenced_nonNull_native = sub_CB258((v15 > 1), v16 + 1, 1, v14);
    v14 = isUniquelyReferenced_nonNull_native;
  }

  *(v14 + 16) = v16 + 1;
  *(v14 + 8 * v16 + 32) = v12;
  *(v4 + v13) = v14;
  v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_currentView;
  v18 = *(v4 + OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_currentView);
  if (!v18)
  {
    goto LABEL_12;
  }

  sub_124C4(0, &qword_40A690);
  v19 = v18;
  if ((sub_30D098() & 1) == 0)
  {

LABEL_12:
    if (a2)
    {
      a2(isUniquelyReferenced_nonNull_native);
    }

    return 0;
  }

  v20 = *(v4 + v8);

  v21 = sub_2416FC(a1, v20);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
    v24 = sub_230300(v21);
    if (v24)
    {
      v25 = v24;
      sub_2303F0(v24, a2, a3);

      return v25;
    }
  }

  v27 = OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_currentViewConstraints;
  if (*(v4 + OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_currentViewConstraints))
  {
    v28 = *(v4 + OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_currentViewConstraints);
  }

  else
  {
    v28 = _swiftEmptyArrayStorage;
  }

  v29 = *(v4 + v17);
  *(v4 + v17) = 0;

  *(v4 + v27) = 0;

  v30 = objc_opt_self();
  v31 = swift_allocObject();
  *(v31 + 16) = a1;
  v41 = sub_1D4434;
  v42 = v31;
  aBlock = _NSConcreteStackBlock;
  v38 = 1107296256;
  v39 = sub_914CC;
  v40 = &block_descriptor_48;
  v32 = _Block_copy(&aBlock);
  v33 = a1;

  v34 = swift_allocObject();
  v34[2] = v28;
  v34[3] = a2;
  v34[4] = a3;
  v41 = sub_231B30;
  v42 = v34;
  aBlock = _NSConcreteStackBlock;
  v38 = 1107296256;
  v39 = sub_2504C4;
  v40 = &block_descriptor_10_1;
  v35 = _Block_copy(&aBlock);
  sub_A0EF8(a2, a3);

  [v30 animateWithDuration:6 delay:v32 options:v35 animations:0.3 completion:0.0];

  _Block_release(v35);
  _Block_release(v32);
  return 0;
}

void sub_231214(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = objc_opt_self();
  sub_124C4(0, &qword_403000);
  isa = sub_30C358().super.isa;
  [v4 deactivateConstraints:isa];

  if (a3)
  {
    a3();
  }
}

void sub_2312A8(uint64_t a1, int8x16_t *a2, uint64_t a3, char a4)
{
  v5 = v4;
  v31 = *a2;
  v32 = a2[1];
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_hostedViews;
  swift_beginAccess();
  v11 = *(v5 + v10);
  *&v36[0] = a1;
  v34 = v36;

  v12 = sub_22F648(sub_231E5C, v33, v11);

  if (v12)
  {
    v13 = sub_30D0B8();
    v14 = OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_hostedViewSettings;
    swift_beginAccess();
    v15 = *(v5 + v14);
    if (*(v15 + 16) && (v16 = sub_191978(v13), (v17 & 1) != 0))
    {
      v18 = *(v15 + 56) + 40 * v16;
      v29 = *v18;
      v30 = *(v18 + 16);
      v19 = *(v18 + 32);
      swift_endAccess();
      v20 = sub_30D0B8();
      if (a2[2].i8[0])
      {
        v21 = -1;
      }

      else
      {
        v21 = 0;
      }

      v22 = vdupq_n_s64(v21);
      v23 = vbslq_s8(v22, v29, v31);
      v24 = vbslq_s8(v22, v30, v32);
      if (a4)
      {
        v25 = v19;
      }

      else
      {
        v25 = a3;
      }

      v36[1] = v24;
      v36[0] = v23;
      v37 = v25;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *(v5 + v14);
      *(v5 + v14) = 0x8000000000000000;
      sub_295F24(v36, v20, isUniquelyReferenced_nonNull_native);
      *(v5 + v14) = v35;
      swift_endAccess();
      v27 = *(v5 + OBJC_IVAR____TtC23ShelfKitCollectionViews9CycleView_currentView);
      if (v27)
      {
        v28 = v27;
        sub_2303F0(v28, 0, 0);
      }
    }

    else
    {
      swift_endAccess();
      __break(1u);
    }
  }
}

uint64_t sub_23149C(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {

    return sub_30CEB8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_31D470;
    v9 = [a1 leadingAnchor];
    v10 = *(a2 + 32);
    if ((v10 & 2) != 0)
    {
      v12 = [v3 layoutMarginsGuide];
      v11 = [v12 leadingAnchor];
    }

    else
    {
      v11 = [v3 leadingAnchor];
    }

    v13 = *a2;
    v14 = *(a2 + 16);
    v15 = *(a2 + 24);
    v16 = [v9 constraintEqualToAnchor:v11 constant:*(a2 + 8)];

    *(v8 + 32) = v16;
    v17 = [a1 trailingAnchor];
    if ((v10 & 8) != 0)
    {
      v19 = [v3 layoutMarginsGuide];
      v18 = [v19 trailingAnchor];
    }

    else
    {
      v18 = [v3 trailingAnchor];
    }

    v20 = [v17 constraintEqualToAnchor:v18 constant:-v15];

    *(v8 + 40) = v20;
    v21 = [a1 heightAnchor];
    v22 = [v3 heightAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:-(v13 + v14)];

    *(v8 + 48) = v23;
    if (a3)
    {
      v24 = [a1 topAnchor];
      v25 = [v3 bottomAnchor];
    }

    else
    {
      v24 = [a1 bottomAnchor];
      v25 = [v3 topAnchor];
    }

    v26 = [v24 constraintEqualToAnchor:v25];

    sub_30C348();
    if (*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v8 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_30C378();
    }

    sub_30C3C8();
    return v8;
  }
}

void sub_231838(int a1, id a2, uint64_t a3, void (*a4)(void))
{
  [a2 setAlpha:0.0];
  v5 = objc_opt_self();
  sub_124C4(0, &qword_403000);
  isa = sub_30C358().super.isa;
  [v5 deactivateConstraints:isa];

  if (a4)
  {
    a4();
  }
}

uint64_t sub_2319B0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2319D0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_231A98()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_231AE8()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_231B3C(char **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 2);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  for (i = -40; ; i -= 8)
  {
    if (v4 >= *(v1 + 2))
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v6 = *&v1[8 * v4 + 32];
    if (v6 == sub_30D0B8())
    {
      break;
    }

    if (v2 == ++v4)
    {
      return *(v1 + 2);
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v7 = *(v1 + 2);
    if (v7 - 1 == v4)
    {
      break;
    }

    v9 = v4 + 1;
    v10 = v1 + 32;
    i = &v1[-i];
    while (v9 < v7)
    {
      v12 = *i;
      if (v12 != sub_30D0B8())
      {
        if (v9 != v4)
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_25;
          }

          v13 = *(v1 + 2);
          if (v4 >= v13)
          {
            goto LABEL_26;
          }

          if (v9 >= v13)
          {
            __break(1u);
            goto LABEL_23;
          }

          v11 = *&v10[8 * v4];
          *&v10[8 * v4] = *i;
          *i = v11;
        }

        ++v4;
      }

      ++v9;
      v7 = *(v1 + 2);
      i += 8;
      if (v9 == v7)
      {
        goto LABEL_10;
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v1 = sub_17EE6C(v1);
  }

LABEL_10:
  *a1 = v1;
  return v4;
}

uint64_t sub_231C94()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_231CD4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_231D24()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_231D80()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_231DC8()
{

  return _swift_deallocObject(v0, 32, 7);
}

__n128 __swift_memcpy114_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 56);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_231EB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 114))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_231EF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 114) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 114) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_231F6C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_30D6F8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v11 = *(v3 + 8);
  LODWORD(v8) = *(v3 + 16);
  v12 = *(v3 + 72);
  v27[2] = *(v3 + 56);
  v27[3] = v12;
  v28[0] = *(v3 + 88);
  *(v28 + 10) = *(v3 + 98);
  v13 = *(v3 + 40);
  v27[0] = *(v3 + 24);
  v27[1] = v13;
  v14 = *(v3 + 72);
  v23 = *(v3 + 56);
  v24 = v14;
  v25[0] = *(v3 + 88);
  *(v25 + 10) = *(v3 + 98);
  v15 = *(v3 + 40);
  v21 = *(v3 + 24);
  v22 = v15;
  if (v8 == 1)
  {
    sub_111AE0();
    sub_1728F0(v27, v19);
    if ((sub_30C978() & 1) == 0)
    {
      v10 = v11;
    }
  }

  else
  {
    sub_1728F0(v27, v19);
  }

  sub_2DBBFC(v10, &v21, a3 & 1);
  v17 = v16;
  v19[2] = v23;
  v19[3] = v24;
  v20[0] = v25[0];
  *(v20 + 10) = *(v25 + 10);
  v19[0] = v21;
  v19[1] = v22;
  sub_232BCC(v19);
  v26 = v17;
  (*(v7 + 16))(v9, a2, v6);
  result = (*(v7 + 88))(v9, v6);
  if (result != enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:) && result != enum case for FloatingPointRoundingRule.toNearestOrEven(_:) && result != enum case for FloatingPointRoundingRule.up(_:) && result != enum case for FloatingPointRoundingRule.down(_:) && result != enum case for FloatingPointRoundingRule.towardZero(_:) && result != enum case for FloatingPointRoundingRule.awayFromZero(_:))
  {
    sub_30C4C8();
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_23222C()
{
  v0 = sub_30D6F8();
  __swift_allocate_value_buffer(v0, qword_4295D8);
  v1 = __swift_project_value_buffer(v0, qword_4295D8);
  v2 = enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_2322B4()
{
  v1 = *(v0 + 16);
  v3._countAndFlagsBits = 40;
  v3._object = 0xE100000000000000;
  sub_30C238(v3);
  if (v1 == 1)
  {
    sub_111AE0();
    sub_30C978();
  }

  v4._countAndFlagsBits = sub_30C4B8();
  sub_30C238(v4);

  v5._countAndFlagsBits = 47;
  v5._object = 0xE100000000000000;
  sub_30C238(v5);
  sub_30D638();
  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  sub_30C238(v6);
  return 0;
}

uint64_t sub_2323D8()
{
  v1 = *(v0 + 16);
  sub_30D558(35);
  v3._object = 0x8000000000340A20;
  v3._countAndFlagsBits = 0xD000000000000014;
  sub_30C238(v3);
  if (v1 == 1)
  {
    sub_111AE0();
    sub_30C978();
  }

  v4._countAndFlagsBits = sub_30C4B8();
  sub_30C238(v4);

  v5._countAndFlagsBits = 0x656372756F73202CLL;
  v5._object = 0xEA0000000000203ALL;
  sub_30C238(v5);
  sub_30D638();
  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  sub_30C238(v6);
  return 0;
}

uint64_t sub_23253C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 57);
  v68 = *(a1 + 41);
  v69 = v9;
  v70 = *(a1 + 73);
  v10 = *(a1 + 89);
  v11 = *(a2 + 16);
  *&v67[6] = *a2;
  *&v67[22] = v11;
  v12 = *(a2 + 32);
  v13 = *(a2 + 48);
  v14 = *(a2 + 64);
  *&v67[79] = *(a2 + 73);
  *&v67[70] = v14;
  *&v67[54] = v13;
  *&v67[38] = v12;
  v15 = *(a2 + 89);
  if (v10)
  {
    *&v47 = v3;
    *(&v47 + 1) = v4;
    *&v48 = v6;
    *(&v48 + 1) = v5;
    *v49 = v7;
    v49[8] = v8;
    *&v49[9] = *(a1 + 41);
    *&v49[25] = *(a1 + 57);
    *&v49[41] = *(a1 + 73);
    v46 = v10;
    v50 = v10;
    v17 = *&v49[16];
    v16 = *&v49[24];
    v18 = v3;
    v19 = v4;
    v20 = *&v49[32];
    v21 = *&v49[40];
    v22 = v6;
    v23 = *&v49[48];
    v24 = v5;
    v25 = v49[56];
    if (v15)
    {
      v26 = *(a2 + 16);
      v83 = *a2;
      *v84 = v26;
      *&v84[9] = *(a2 + 25);
      v71 = *&v49[16];
      v72 = *&v49[24];
      v73 = *&v49[40];
      v74 = v49[56];
      v27 = *(a2 + 64);
      v75 = *(a2 + 48);
      v76[0] = v27;
      *(v76 + 9) = *(a2 + 73);
      v28 = v18;
      v77 = v18;
      v78 = v19;
      v79 = v22;
      v80 = v24;
      v81 = v7;
      v82 = v8;
      v29 = v19;
      v30 = v22;
      v31 = v24;
      sub_8FC54(a1, &v57);
      sub_8FC54(a2, &v57);
      sub_8FC54(&v47, &v57);
      v32 = sub_24B2A8(&v77, &v83);
      sub_232C20(&v77);
      if (v32)
      {
        v33 = sub_24B2A8(&v71, &v75);
        sub_232C20(&v75);
        sub_232C20(&v71);
        sub_232C20(&v83);
        v34 = v46;
        if (v33)
        {
          v57 = v28;
          v58 = v29;
          v59 = v30;
          v60 = v31;
          v61 = v7;
          v62 = v8;
          v63 = v68;
          v64 = v69;
          v65 = v70;
          v66 = v46;
LABEL_12:
          sub_EB68(&v57, &qword_3FFD68);
          return 1;
        }

        v57 = v28;
        v58 = v29;
        v59 = v30;
        v60 = v31;
        v61 = v7;
        v62 = v8;
        v63 = v68;
        v64 = v69;
        v65 = v70;
      }

      else
      {
        sub_232C20(&v75);
        sub_232C20(&v71);
        sub_232C20(&v83);
        v57 = v28;
        v58 = v29;
        v59 = v30;
        v60 = v31;
        v61 = v7;
        v62 = v8;
        v63 = v68;
        v64 = v69;
        v65 = v70;
        v34 = v46;
      }

      v66 = v34;
LABEL_17:
      v35 = &qword_3FFD68;
      v36 = &v57;
      goto LABEL_18;
    }

    v44 = v24;
    v45 = v19;
    v42 = v18;
    v43 = v22;
    sub_8FC54(a1, &v57);
    sub_8FC54(a2, &v57);
    sub_8FC54(&v47, &v57);
    sub_A01F8(v17, v16, v20, v21, v23, v25);
    v3 = v42;
    v6 = v43;
    v5 = v44;
    v4 = v45;
    sub_A01F8(v42, v45, v43, v44, v7, v8);
    v10 = v46;
  }

  else
  {
    if ((*(a2 + 89) & 1) == 0)
    {
      v37 = *(a2 + 16);
      v47 = *a2;
      v48 = v37;
      v38 = *(a2 + 48);
      *v49 = *(a2 + 32);
      *&v49[16] = v38;
      *&v49[32] = *(a2 + 64);
      *&v49[41] = *(a2 + 73);
      v50 = v15;
      v83 = v47;
      *v84 = v48;
      *&v84[16] = *v49;
      v84[24] = v49[8];
      v77 = v3;
      v78 = v4;
      v79 = v6;
      v80 = v5;
      v81 = v7;
      v82 = v8;
      sub_8FC54(a1, &v57);
      sub_8FC54(a2, &v57);
      v39 = v3;
      v40 = sub_24B2A8(&v77, &v83);
      sub_EB68(&v47, &qword_3FFD68);
      if (v40)
      {
        v57 = v39;
        v58 = v4;
        v59 = v6;
        v60 = v5;
        v61 = v7;
        v62 = v8;
        v63 = v68;
        v64 = v69;
        v65 = v70;
        v66 = v10;
        goto LABEL_12;
      }

      v57 = v39;
      v58 = v4;
      v59 = v6;
      v60 = v5;
      v61 = v7;
      v62 = v8;
      v63 = v68;
      v64 = v69;
      v65 = v70;
      v66 = v10;
      goto LABEL_17;
    }

    sub_8FC54(a1, &v47);
    sub_8FC54(a2, &v47);
  }

  *&v49[9] = v68;
  *&v49[25] = v69;
  *&v49[41] = v70;
  *&v55[15] = *&v67[79];
  *v55 = *&v67[64];
  v54 = *&v67[48];
  v53 = *&v67[32];
  v51 = *v67;
  *&v47 = v3;
  *(&v47 + 1) = v4;
  *&v48 = v6;
  *(&v48 + 1) = v5;
  *v49 = v7;
  v49[8] = v8;
  v50 = v10;
  v52 = *&v67[16];
  v56 = v15;
  v35 = &unk_409CE8;
  v36 = &v47;
LABEL_18:
  sub_EB68(v36, v35);
  return 0;
}

double sub_2329B8(void *a1, uint64_t a2, char a3)
{
  v5 = [a1 traitCollection];
  sub_231F6C(v5, a2, a3);
  v7 = v6;

  return v7;
}

uint64_t sub_232A20(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 72);
  v32[2] = *(a1 + 56);
  v32[3] = v5;
  v33[0] = *(a1 + 88);
  *(v33 + 10) = *(a1 + 98);
  v6 = *(a1 + 40);
  v32[0] = *(a1 + 24);
  v32[1] = v6;
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 72);
  v34[2] = *(a2 + 56);
  v34[3] = v10;
  v35[0] = *(a2 + 88);
  *(v35 + 10) = *(a2 + 98);
  v11 = *(a2 + 40);
  v34[0] = *(a2 + 24);
  v34[1] = v11;
  if ((v4 & 1) == 0)
  {
    if ((v9 & 1) != 0 || v2 != v7)
    {
      v12 = 0;
      return v12 & 1;
    }

    goto LABEL_8;
  }

  v12 = 0;
  if ((v9 & 1) != 0 && v2 == v7 && v3 == v8)
  {
LABEL_8:
    v13 = *(a1 + 72);
    v25 = *(a1 + 56);
    v26 = v13;
    v27[0] = *(a1 + 88);
    *(v27 + 10) = *(a1 + 98);
    v14 = *(a1 + 40);
    v23 = *(a1 + 24);
    v24 = v14;
    v15 = *(a2 + 72);
    v20 = *(a2 + 56);
    v21 = v15;
    v22[0] = *(a2 + 88);
    *(v22 + 10) = *(a2 + 98);
    v16 = *(a2 + 40);
    v18 = *(a2 + 24);
    v19 = v16;
    sub_1728F0(v32, v30);
    sub_1728F0(v34, v30);
    v12 = sub_2DC188(&v23, &v18);
    v28[2] = v20;
    v28[3] = v21;
    v29[0] = v22[0];
    *(v29 + 10) = *(v22 + 10);
    v28[0] = v18;
    v28[1] = v19;
    sub_232BCC(v28);
    v30[2] = v25;
    v30[3] = v26;
    v31[0] = v27[0];
    *(v31 + 10) = *(v27 + 10);
    v30[0] = v23;
    v30[1] = v24;
    sub_232BCC(v30);
  }

  return v12 & 1;
}

int *sub_232C74()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = UIResponder.nearestFlowController.getter();

    if (v2)
    {
      return v2;
    }
  }

  v4 = swift_unknownObjectUnownedLoadStrong();
  v5 = [v4 nextResponder];

  if (!v5)
  {
    return 0;
  }

  v6 = UIResponder.nearestFlowController.getter();

  return v6;
}

id sub_232D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3041E8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_232C74())
  {
    v11 = v10;
    ObjectType = swift_getObjectType();
    v13 = (*(v11 + 24))(a1, a2, a3, ObjectType, v11);
    swift_unknownObjectRelease();
    return v13;
  }

  else
  {
    sub_304128();

    v15 = sub_3041D8();
    v16 = sub_30C7A8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315138;
      v19 = sub_30D8A8();
      v21 = sub_191264(v19, v20, &v23);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_0, v15, v16, "%s asked for view controller without parent flow controller, this is undefined", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
    }

    (*(v7 + 8))(v9, v6);
    return [objc_allocWithZone(UIViewController) init];
  }
}

void sub_232F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v23 = a2;
  v5 = type metadata accessor for FlowPresentationHints();
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_308778();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_232C74();
  v13 = v12;
  Strong = swift_unknownObjectUnownedLoadStrong();
  (*(v8 + 16))(v10, a1, v7);
  sub_2335F4(v23, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = (v9 + *(v22 + 80) + v14) & ~*(v22 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  (*(v8 + 32))(v16 + v14, v10, v7);
  sub_233868(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = (v16 + ((v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = v26;
  *v17 = v25;
  v17[1] = v18;
  aBlock[4] = sub_2338CC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_914CC;
  aBlock[3] = &block_descriptor_49;
  v19 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  v20 = Strong;
  [Strong dismissViewControllerAnimated:1 completion:v19];
  _Block_release(v19);
  swift_unknownObjectRelease();
}

void sub_233218(uint64_t a1, uint64_t a2, char a3, char a4, char a5, uint64_t a6)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v13 = Strong, v14 = UIResponder.nearestFlowController.getter(), v16 = v15, v13, v14) || (v17 = swift_unknownObjectUnownedLoadStrong(), v18 = [v17 nextResponder], v17, v18) && (v19 = UIResponder.nearestFlowController.getter(), v16 = v20, v18, v19))
  {
    ObjectType = swift_getObjectType();
    (*(v16 + 40))(a1, a2, a3 & 1, a4 & 1, a5 & 1, a6, ObjectType, v16);

    swift_unknownObjectRelease();
  }
}

void sub_233348(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v5 = Strong, v6 = UIResponder.nearestFlowController.getter(), v8 = v7, v5, v6) || (v9 = swift_unknownObjectUnownedLoadStrong(), v10 = [v9 nextResponder], v9, v10) && (v11 = UIResponder.nearestFlowController.getter(), v8 = v12, v10, v11))
  {
    ObjectType = swift_getObjectType();
    (*(v8 + 48))(a1, a2, ObjectType, v8);

    swift_unknownObjectRelease();
  }
}

void sub_233440(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = UIResponder.nearestFlowController.getter(), v6 = v5, v3, v4) || (v7 = swift_unknownObjectUnownedLoadStrong(), v8 = [v7 nextResponder], v7, v8) && (v9 = UIResponder.nearestFlowController.getter(), v6 = v10, v8, v9))
  {
    ObjectType = swift_getObjectType();
    (*(v6 + 56))(a1, ObjectType, v6);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_233530()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  swift_unknownObjectUnownedDestroy();
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_2335F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowPresentationHints();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_233658()
{
  v1 = sub_308778();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for FlowPresentationHints();
  v7 = *(*(v6 - 1) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v10 = v0 + v8;
  v11 = sub_30A4E8();
  (*(*(v11 - 8) + 8))(v0 + v8, v11);
  v12 = v0 + v8 + v6[6];
  v13 = *(v12 + 40);
  if (v13 != 255)
  {
    sub_1DDB0(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32), v13 & 1);
  }

  v14 = v6[7];
  v15 = sub_30AA18();
  (*(*(v15 - 8) + 8))(v10 + v14, v15);

  v16 = v10 + v6[9];
  if (*(v16 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  return _swift_deallocObject(v0, ((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | v7 | 7);
}

uint64_t sub_233868(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowPresentationHints();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2338CC()
{
  v1 = *(sub_308778() - 8);
  v2 = type metadata accessor for FlowPresentationHints();
  v5 = *(v2 - 8);
  result = v2 - 8;
  v4 = v5;
  if (*(v0 + 16))
  {
    v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v7 = (v6 + *(v1 + 64) + *(v4 + 80)) & ~*(v4 + 80);
    v8 = (v0 + ((*(v4 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
    v10 = *v8;
    v9 = v8[1];
    v11 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    return (*(v11 + 32))(v0 + v6, v0 + v7, v10, v9, ObjectType, v11);
  }

  return result;
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2339F0(void (*a1)(void))
{
  a1();

  return sub_30D8A8();
}

id sub_233A2C()
{
  result = [objc_opt_self() separatorColor];
  qword_4295F0 = result;
  return result;
}

unint64_t sub_233A68@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_234C0C(*a1);
  *a2 = result;
  return result;
}

char *sub_233A94(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11DividerView_separatorInset];
  v10 = *&UIEdgeInsetsZero.bottom;
  *v9 = *&UIEdgeInsetsZero.top;
  v9[1] = v10;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11DividerView_style] = 2;
  v11 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11DividerView_separatorView] = v11;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for DividerView();
  v12 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews11DividerView_separatorView;
  v14 = *&v12[OBJC_IVAR____TtC23ShelfKitCollectionViews11DividerView_separatorView];
  v15 = qword_3FAC40;
  v16 = v12;
  v17 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  [v17 setBackgroundColor:qword_4295F0];

  [v16 addSubview:*&v12[v13]];
  return v16;
}

id sub_233CF4()
{
  v1 = v0;
  v2 = sub_30D6F8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DividerView();
  v24.receiver = v0;
  v24.super_class = v6;
  objc_msgSendSuper2(&v24, "layoutSubviews");
  [v0 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_111AE0();
  sub_30C978();
  (*(v3 + 104))(v5, enum case for FloatingPointRoundingRule.down(_:), v2);
  sub_302E78();
  v16 = v15;
  (*(v3 + 8))(v5, v2);
  v25.origin.x = v8;
  v25.origin.y = v10;
  v25.size.width = v12;
  v25.size.height = v14;
  MinX = CGRectGetMinX(v25);
  v18 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11DividerView_separatorInset];
  v19 = MinX + v18[1];
  if ([v1 effectiveUserInterfaceLayoutDirection] == &dword_0 + 1)
  {
    v26.origin.x = v8;
    v26.origin.y = v10;
    v26.size.width = v12;
    v26.size.height = v14;
    Width = CGRectGetWidth(v26);
    v27.origin.x = v8;
    v27.origin.y = v10;
    v27.size.width = v12;
    v27.size.height = v14;
    v19 = Width - (CGRectGetWidth(v27) - v18[1] - v18[3]) - v19;
  }

  v21 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11DividerView_separatorView];
  v28.origin.x = v8;
  v28.origin.y = v10;
  v28.size.width = v12;
  v28.size.height = v14;
  v22 = CGRectGetMidY(v28) + v16 * -0.5;
  v29.origin.x = v8;
  v29.origin.y = v10;
  v29.size.width = v12;
  v29.size.height = v14;
  return [v21 setFrame:{v19, v22, CGRectGetWidth(v29) - v18[1] - v18[3], v16}];
}

id sub_233FA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DividerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_234010(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_304388();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC23ShelfKitCollectionViews26SeparatorSupplementaryView_lineColor;
  *&v4[v14] = [objc_opt_self() separatorColor];
  v15 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews26SeparatorSupplementaryView_lineCompositingFilter];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  (*(v11 + 104))(v13, enum case for Separator.Position.bottom(_:), v10);
  v22[3] = sub_304228();
  v22[4] = &protocol witness table for ZeroDimension;
  __swift_allocate_boxed_opaque_existential_0Tm(v22);
  sub_304218();
  sub_304398();
  v16 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews26SeparatorSupplementaryView_lineView] = v16;
  v21.receiver = v4;
  v21.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  [v17 setUserInteractionEnabled:0];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v17 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v18 = OBJC_IVAR____TtC23ShelfKitCollectionViews26SeparatorSupplementaryView_lineView;
  [*&v17[OBJC_IVAR____TtC23ShelfKitCollectionViews26SeparatorSupplementaryView_lineView] setBackgroundColor:*&v17[OBJC_IVAR____TtC23ShelfKitCollectionViews26SeparatorSupplementaryView_lineColor]];
  [v17 addSubview:*&v17[v18]];

  return v17;
}

id sub_234524()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_30D6F8();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35.receiver = v1;
  v35.super_class = ObjectType;
  objc_msgSendSuper2(&v35, "layoutSubviews", v5);
  [v1 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v1 layoutMargins];
  v18 = UIEdgeInsetsInsetRect(v9, v11, v13, v15, v16, v17);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [v1 traitCollection];
  sub_3043A8();
  v27 = v26;

  swift_beginAccess();
  sub_304368();
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1Tm(v34, v34[3]);
  sub_3041F8();
  sub_304208();
  v29 = v28;
  (*(v4 + 8))(v7, v3);
  __swift_destroy_boxed_opaque_existential_1(v34);
  v30 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews26SeparatorSupplementaryView_lineView];
  v36.origin.x = v18;
  v36.origin.y = v20;
  v36.size.width = v22;
  v36.size.height = v24;
  MinX = CGRectGetMinX(v36);
  v37.origin.x = v18;
  v37.origin.y = v20;
  v37.size.width = v22;
  v37.size.height = v24;
  v32 = v29 + CGRectGetMinY(v37);
  v38.origin.x = v18;
  v38.origin.y = v20;
  v38.size.width = v22;
  v38.size.height = v24;
  return [v30 setFrame:{MinX, v32, CGRectGetWidth(v38), v27}];
}

uint64_t type metadata accessor for SeparatorSupplementaryView()
{
  result = qword_409E30;
  if (!qword_409E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2348D8()
{
  result = sub_3043B8();
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

unint64_t sub_234998()
{
  result = qword_409E40;
  if (!qword_409E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_409E40);
  }

  return result;
}

double sub_2349EC(char a1, void *a2)
{
  v4 = sub_30D6F8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_111AE0();
  sub_30C978();
  (*(v5 + 104))(v7, enum case for FloatingPointRoundingRule.down(_:), v4);
  sub_302E78();
  v9 = v8;
  (*(v5 + 8))(v7, v4);
  v33 = 0;
  v10 = UIFontTextStyleBody;
  v18 = qword_32DC90[a1];
  v19 = 0;
  LOBYTE(v20) = v33;
  v21 = v10;
  v32 = 0;
  if (qword_3FAC38 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_4295D8);
  LOWORD(v17) = v32;
  v12 = [a2 traitCollection];
  sub_231F6C(v12, v11, 0);
  v14 = v13;

  sub_900A8(&v18);
  return v9 + v14;
}

unint64_t sub_234C0C(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

void sub_234C1C()
{
  v1 = sub_304388();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews26SeparatorSupplementaryView_lineColor;
  *(v0 + v5) = [objc_opt_self() separatorColor];
  v6 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews26SeparatorSupplementaryView_lineCompositingFilter);
  *v6 = 0u;
  v6[1] = 0u;
  (*(v2 + 104))(v4, enum case for Separator.Position.bottom(_:), v1);
  v8[3] = sub_304228();
  v8[4] = &protocol witness table for ZeroDimension;
  __swift_allocate_boxed_opaque_existential_0Tm(v8);
  sub_304218();
  sub_304398();
  sub_30D648();
  __break(1u);
}

id DownloadsCVCLibraryActionControllerBridge.__allocating_init(libraryActionController:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_12670(a1, v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews41DownloadsCVCLibraryActionControllerBridge_libraryActionController);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, "init");
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

id DownloadsCVCLibraryActionControllerBridge.init(libraryActionController:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_12670(a1, v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews41DownloadsCVCLibraryActionControllerBridge_libraryActionController);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "init");
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_235028(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews41DownloadsCVCLibraryActionControllerBridge_libraryActionController + 24);
  v8 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews41DownloadsCVCLibraryActionControllerBridge_libraryActionController + 32);
  __swift_project_boxed_opaque_existential_1Tm((v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews41DownloadsCVCLibraryActionControllerBridge_libraryActionController), v7);
  return a3(a1, a2, v7, v8);
}

uint64_t sub_2350FC(char *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = sub_30C0D8();
  v8 = v7;
  v9 = *&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews41DownloadsCVCLibraryActionControllerBridge_libraryActionController + 24];
  v10 = *&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews41DownloadsCVCLibraryActionControllerBridge_libraryActionController + 32];
  __swift_project_boxed_opaque_existential_1Tm(&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews41DownloadsCVCLibraryActionControllerBridge_libraryActionController], v9);
  v11 = a1;
  a4(v6, v8, v9, v10);
}

void sub_2351A0(_OWORD *a1)
{
  v2 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase];
  v3 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase + 48];
  v25[2] = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase + 32];
  v25[3] = v3;
  v26[0] = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase + 64];
  *(v26 + 10) = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase + 74];
  v4 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase + 16];
  v25[0] = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase];
  v25[1] = v4;
  v5 = a1[1];
  *v2 = *a1;
  *(v2 + 1) = v5;
  v6 = a1[3];
  *(v2 + 2) = a1[2];
  *(v2 + 3) = v6;
  *(v2 + 4) = a1[4];
  *(v2 + 74) = *(a1 + 74);
  sub_EB68(v25, &qword_4025E0);
  v7 = *(v2 + 3);
  v28 = *(v2 + 2);
  v29 = v7;
  *v30 = *(v2 + 4);
  v8 = *v30;
  *&v30[10] = *(v2 + 74);
  v9 = *(v2 + 1);
  v27[0] = *v2;
  v27[1] = v9;
  v33 = v28;
  v34 = v7;
  v35 = v8;
  v36 = *(v2 + 10);
  v31 = v27[0];
  v32 = v9;
  v10 = *&v30[24];
  if (HIBYTE(*&v30[24]) <= 0xFEu)
  {
    v11 = *(v2 + 3);
    v23[2] = *(v2 + 2);
    v23[3] = v11;
    v24[0] = *(v2 + 4);
    *(v24 + 10) = *(v2 + 74);
    v12 = *(v2 + 1);
    v23[0] = *v2;
    v23[1] = v12;
    sub_8FC54(v23, v20);
    v13 = [v1 titleLabel];
    if (v13)
    {
      v14 = v13;
      v15 = [objc_opt_self() system];
      v16 = [v15 preferredContentSizeCategory];

      v17 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v16];
      v20[2] = v33;
      v20[3] = v34;
      v20[4] = v35;
      v21 = v36;
      v20[0] = v31;
      v20[1] = v32;
      v22 = v10;
      v18 = sub_2DAA3C(v20, v17);
      v19 = [objc_opt_self() fontWithDescriptor:v18 size:0.0];

      [v14 setFont:v19];
      sub_EB68(v27, &qword_4025E0);
    }

    else
    {
      sub_EB68(v27, &qword_4025E0);
    }
  }
}

char *sub_2353F0(__int128 *a1)
{
  v3 = a1[3];
  v25 = a1[2];
  v26 = v3;
  v27[0] = a1[4];
  *(v27 + 10) = *(a1 + 74);
  v4 = a1[1];
  v23 = *a1;
  v24 = v4;
  v5 = [objc_allocWithZone(v1) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = &v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase];
  v7 = *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase];
  v28[1] = *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase + 16];
  v8 = *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase + 32];
  v9 = *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase + 48];
  v10 = *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase + 64];
  *(v29 + 10) = *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase + 74];
  v28[3] = v9;
  v29[0] = v10;
  v28[0] = v7;
  v28[2] = v8;
  v6[4] = a1[4];
  *(v6 + 74) = *(a1 + 74);
  v11 = a1[1];
  *v6 = *a1;
  v6[1] = v11;
  v12 = a1[3];
  v6[2] = a1[2];
  v6[3] = v12;
  v13 = v5;
  sub_8FC54(&v23, v21);
  sub_EB68(v28, &qword_4025E0);
  v14 = [v13 titleLabel];

  if (v14)
  {
    v15 = [objc_opt_self() system];
    v16 = [v15 preferredContentSizeCategory];

    v17 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v16];
    v21[2] = v25;
    v21[3] = v26;
    v22[0] = v27[0];
    *(v22 + 10) = *(v27 + 10);
    v21[0] = v23;
    v21[1] = v24;
    v18 = sub_2DAA3C(v21, v17);
    v19 = [objc_opt_self() fontWithDescriptor:v18 size:0.0];

    sub_EB68(&v23, &qword_3FFD68);
    [v14 setFont:v19];
  }

  else
  {
    sub_EB68(&v23, &qword_3FFD68);
  }

  return v13;
}

void sub_235634(uint64_t a1)
{
  v34.receiver = v1;
  v34.super_class = type metadata accessor for DynamicTypeButton();
  objc_msgSendSuper2(&v34, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 != &dword_4 + 1)
  {
    v5 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase];
    v6 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase + 48];
    v25 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase + 32];
    v26 = v6;
    *v27 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase + 64];
    v7 = *v27;
    *&v27[10] = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase + 74];
    v8 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase + 16];
    v24[0] = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase];
    v24[1] = v8;
    v28 = v24[0];
    v29 = v8;
    v33 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase + 80];
    v30 = v25;
    v31 = v6;
    v32 = v7;
    v9 = *&v27[24];
    if (HIBYTE(*&v27[24]) < 0xFFu)
    {
      v10 = *(v5 + 3);
      v22[2] = *(v5 + 2);
      v22[3] = v10;
      v23[0] = *(v5 + 4);
      *(v23 + 10) = *(v5 + 74);
      v11 = *(v5 + 1);
      v22[0] = *v5;
      v22[1] = v11;
      sub_8FC54(v22, v19);
      v12 = [v1 titleLabel];
      if (v12)
      {
        v13 = v12;
        v14 = [objc_opt_self() system];
        v15 = [v14 preferredContentSizeCategory];

        v16 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v15];
        v19[2] = v30;
        v19[3] = v31;
        v19[4] = v32;
        v20 = v33;
        v19[0] = v28;
        v19[1] = v29;
        v21 = v9;
        v17 = sub_2DAA3C(v19, v16);
        v18 = [objc_opt_self() fontWithDescriptor:v17 size:0.0];

        [v13 setFont:v18];
        sub_EB68(v24, &qword_4025E0);
      }

      else
      {
        sub_EB68(v24, &qword_4025E0);
      }
    }
  }
}

id DynamicTypeButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 10) = 0;
  *(v9 + 44) = -256;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for DynamicTypeButton();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

id DynamicTypeButton.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 10) = 0;
  *(v3 + 44) = -256;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DynamicTypeButton();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id DynamicTypeButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicTypeButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_235C08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int16 a12)
{
  if (HIBYTE(a12) <= 0xFEu)
  {
    sub_A0164(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, (a12 & 0x1FF) >> 8);
  }
}

char *sub_235C3C(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = a1[3];
  v32 = a1[2];
  v33 = v9;
  v34[0] = a1[4];
  *(v34 + 10) = *(a1 + 74);
  v10 = a1[1];
  v30 = *a1;
  v31 = v10;
  v11 = [objc_allocWithZone(v4) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v11 setNumberOfLines:a2];
  if (a4)
  {
    if (a2)
    {
      v12 = 4;
    }

    else
    {
      v12 = 0;
    }

    [v11 setLineBreakMode:v12];
  }

  else
  {
    [v11 setLineBreakMode:a3];
  }

  v13 = &v11[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase];
  v14 = *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase + 16];
  v28[0] = *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase];
  v28[1] = v14;
  v16 = *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase + 48];
  v15 = *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase + 64];
  v17 = *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase + 32];
  *(v29 + 10) = *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase + 74];
  v28[3] = v16;
  v29[0] = v15;
  v28[2] = v17;
  v18 = a1[3];
  v13[2] = a1[2];
  v13[3] = v18;
  v13[4] = a1[4];
  *(v13 + 74) = *(a1 + 74);
  v19 = a1[1];
  *v13 = *a1;
  v13[1] = v19;
  v20 = v11;
  sub_8FC54(&v30, v26);
  sub_EB68(v28, &qword_4025E0);
  v21 = [v20 traitCollection];

  v26[2] = v32;
  v26[3] = v33;
  v27[0] = v34[0];
  *(v27 + 10) = *(v34 + 10);
  v26[0] = v30;
  v26[1] = v31;
  v22 = sub_2DAA3C(v26, v21);
  v23 = [objc_opt_self() fontWithDescriptor:v22 size:0.0];

  sub_EB68(&v30, &qword_3FFD68);
  v25.receiver = v20;
  v25.super_class = type metadata accessor for DynamicTypeLabel();
  objc_msgSendSuper2(&v25, "setFont:", v23);

  return v20;
}

uint64_t sub_235E5C(_OWORD *a1)
{
  v2 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase];
  v3 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase + 48];
  v23[2] = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase + 32];
  v23[3] = v3;
  v24[0] = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase + 64];
  *(v24 + 10) = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase + 74];
  v4 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase + 16];
  v23[0] = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase];
  v23[1] = v4;
  v5 = a1[1];
  *v2 = *a1;
  *(v2 + 1) = v5;
  v6 = a1[3];
  *(v2 + 2) = a1[2];
  *(v2 + 3) = v6;
  *(v2 + 4) = a1[4];
  *(v2 + 74) = *(a1 + 74);
  result = sub_EB68(v23, &qword_4025E0);
  v8 = *(v2 + 3);
  v26 = *(v2 + 2);
  v27 = v8;
  *v28 = *(v2 + 4);
  v9 = *v28;
  *&v28[10] = *(v2 + 74);
  v10 = *(v2 + 1);
  v25[0] = *v2;
  v25[1] = v10;
  v31 = v26;
  v32 = v8;
  v33 = v9;
  v34 = *(v2 + 10);
  v29 = v25[0];
  v30 = v10;
  v11 = *&v28[24];
  if (HIBYTE(*&v28[24]) <= 0xFEu)
  {
    v12 = *(v2 + 3);
    v21[2] = *(v2 + 2);
    v21[3] = v12;
    v22[0] = *(v2 + 4);
    *(v22 + 10) = *(v2 + 74);
    v13 = *(v2 + 1);
    v21[0] = *v2;
    v21[1] = v13;
    sub_8FC54(v21, v18);
    v14 = [v1 traitCollection];
    v18[2] = v31;
    v18[3] = v32;
    v18[4] = v33;
    v19 = v34;
    v18[0] = v29;
    v18[1] = v30;
    v20 = v11;
    v15 = sub_2DAA3C(v18, v14);
    v16 = [objc_opt_self() fontWithDescriptor:v15 size:0.0];

    v17.receiver = v1;
    v17.super_class = type metadata accessor for DynamicTypeLabel();
    objc_msgSendSuper2(&v17, "setFont:", v16);

    return sub_EB68(v25, &qword_4025E0);
  }

  return result;
}

id sub_236074()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DynamicTypeLabel();
  v1 = objc_msgSendSuper2(&v3, "font");

  return v1;
}

void sub_236170(void *a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DynamicTypeLabel();
  objc_msgSendSuper2(&v6, "setFont:", a1);
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v5 = -256;
  sub_235E5C(v3);
}

id sub_2361DC(uint64_t a1)
{
  v3 = type metadata accessor for DynamicTypeLabel();
  v21.receiver = v1;
  v21.super_class = v3;
  result = objc_msgSendSuper2(&v21, "traitCollectionDidChange:", a1);
  v5 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase];
  v6 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase + 48];
  v23 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase + 32];
  v24 = v6;
  *v25 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase + 64];
  v7 = *v25;
  *&v25[10] = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase + 74];
  v8 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase + 16];
  v22[0] = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase];
  v22[1] = v8;
  v28 = v23;
  v29 = v6;
  v30 = v7;
  v31 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase + 80];
  v26 = v22[0];
  v27 = v8;
  v9 = *&v25[24];
  if (HIBYTE(*&v25[24]) <= 0xFEu)
  {
    v10 = *(v5 + 3);
    v19[2] = *(v5 + 2);
    v19[3] = v10;
    v20[0] = *(v5 + 4);
    *(v20 + 10) = *(v5 + 74);
    v11 = *(v5 + 1);
    v19[0] = *v5;
    v19[1] = v11;
    sub_8FC54(v19, v16);
    v12 = [v1 traitCollection];
    v16[2] = v28;
    v16[3] = v29;
    v16[4] = v30;
    v17 = v31;
    v16[0] = v26;
    v16[1] = v27;
    v18 = v9;
    v13 = sub_2DAA3C(v16, v12);
    v14 = [objc_opt_self() fontWithDescriptor:v13 size:0.0];

    v15.receiver = v1;
    v15.super_class = v3;
    objc_msgSendSuper2(&v15, "setFont:", v14);

    return sub_EB68(v22, &qword_4025E0);
  }

  return result;
}

id DynamicTypeLabel.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 10) = 0;
  *(v9 + 44) = -256;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for DynamicTypeLabel();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

id DynamicTypeLabel.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 10) = 0;
  *(v3 + 44) = -256;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DynamicTypeLabel();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id DynamicTypeLabel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicTypeLabel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_2366CC(__int128 *a1)
{
  v3 = a1[3];
  v23 = a1[2];
  v24 = v3;
  v25[0] = a1[4];
  *(v25 + 10) = *(a1 + 74);
  v4 = a1[1];
  v21 = *a1;
  v22 = v4;
  v5 = [objc_allocWithZone(v1) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = &v5[OBJC_IVAR____TtC23ShelfKitCollectionViews19DynamicTypeTextView_fontUseCase];
  v7 = *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews19DynamicTypeTextView_fontUseCase];
  v26[1] = *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews19DynamicTypeTextView_fontUseCase + 16];
  v8 = *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews19DynamicTypeTextView_fontUseCase + 32];
  v9 = *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews19DynamicTypeTextView_fontUseCase + 48];
  v10 = *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews19DynamicTypeTextView_fontUseCase + 64];
  *(v27 + 10) = *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews19DynamicTypeTextView_fontUseCase + 74];
  v26[3] = v9;
  v27[0] = v10;
  v26[0] = v7;
  v26[2] = v8;
  v6[4] = a1[4];
  *(v6 + 74) = *(a1 + 74);
  v11 = a1[1];
  *v6 = *a1;
  v6[1] = v11;
  v12 = a1[3];
  v6[2] = a1[2];
  v6[3] = v12;
  v13 = v5;
  sub_8FC54(&v21, v19);
  sub_EB68(v26, &qword_4025E0);
  v14 = [v13 traitCollection];

  v19[2] = v23;
  v19[3] = v24;
  v20[0] = v25[0];
  *(v20 + 10) = *(v25 + 10);
  v19[0] = v21;
  v19[1] = v22;
  v15 = sub_2DAA3C(v19, v14);
  v16 = [objc_opt_self() fontWithDescriptor:v15 size:0.0];

  sub_EB68(&v21, &qword_3FFD68);
  v18.receiver = v13;
  v18.super_class = type metadata accessor for DynamicTypeTextView();
  objc_msgSendSuper2(&v18, "setFont:", v16);

  return v13;
}

uint64_t sub_236890(_OWORD *a1)
{
  v2 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews19DynamicTypeTextView_fontUseCase];
  v3 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews19DynamicTypeTextView_fontUseCase + 48];
  v23[2] = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews19DynamicTypeTextView_fontUseCase + 32];
  v23[3] = v3;
  v24[0] = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews19DynamicTypeTextView_fontUseCase + 64];
  *(v24 + 10) = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews19DynamicTypeTextView_fontUseCase + 74];
  v4 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews19DynamicTypeTextView_fontUseCase + 16];
  v23[0] = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews19DynamicTypeTextView_fontUseCase];
  v23[1] = v4;
  v5 = a1[1];
  *v2 = *a1;
  *(v2 + 1) = v5;
  v6 = a1[3];
  *(v2 + 2) = a1[2];
  *(v2 + 3) = v6;
  *(v2 + 4) = a1[4];
  *(v2 + 74) = *(a1 + 74);
  result = sub_EB68(v23, &qword_4025E0);
  v8 = *(v2 + 3);
  v26 = *(v2 + 2);
  v27 = v8;
  *v28 = *(v2 + 4);
  v9 = *v28;
  *&v28[10] = *(v2 + 74);
  v10 = *(v2 + 1);
  v25[0] = *v2;
  v25[1] = v10;
  v31 = v26;
  v32 = v8;
  v33 = v9;
  v34 = *(v2 + 10);
  v29 = v25[0];
  v30 = v10;
  v11 = *&v28[24];
  if (HIBYTE(*&v28[24]) <= 0xFEu)
  {
    v12 = *(v2 + 3);
    v21[2] = *(v2 + 2);
    v21[3] = v12;
    v22[0] = *(v2 + 4);
    *(v22 + 10) = *(v2 + 74);
    v13 = *(v2 + 1);
    v21[0] = *v2;
    v21[1] = v13;
    sub_8FC54(v21, v18);
    v14 = [v1 traitCollection];
    v18[2] = v31;
    v18[3] = v32;
    v18[4] = v33;
    v19 = v34;
    v18[0] = v29;
    v18[1] = v30;
    v20 = v11;
    v15 = sub_2DAA3C(v18, v14);
    v16 = [objc_opt_self() fontWithDescriptor:v15 size:0.0];

    v17.receiver = v1;
    v17.super_class = type metadata accessor for DynamicTypeTextView();
    objc_msgSendSuper2(&v17, "setFont:", v16);

    return sub_EB68(v25, &qword_4025E0);
  }

  return result;
}

void sub_236B38(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DynamicTypeTextView();
  v33.receiver = v2;
  v33.super_class = v4;
  objc_msgSendSuper2(&v33, "traitCollectionDidChange:", a1);
  v5 = [v2 traitCollection];
  v6 = sub_30C968();

  if ((v6 & 1) == 0)
  {
    v7 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews19DynamicTypeTextView_fontUseCase];
    v8 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews19DynamicTypeTextView_fontUseCase + 48];
    v24 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews19DynamicTypeTextView_fontUseCase + 32];
    v25 = v8;
    *v26 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews19DynamicTypeTextView_fontUseCase + 64];
    v9 = *v26;
    *&v26[10] = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews19DynamicTypeTextView_fontUseCase + 74];
    v10 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews19DynamicTypeTextView_fontUseCase + 16];
    v23[0] = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews19DynamicTypeTextView_fontUseCase];
    v23[1] = v10;
    v27 = v23[0];
    v28 = v10;
    v32 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews19DynamicTypeTextView_fontUseCase + 80];
    v29 = v24;
    v30 = v8;
    v31 = v9;
    v11 = *&v26[24];
    if (HIBYTE(*&v26[24]) < 0xFFu)
    {
      v12 = *(v7 + 3);
      v21[2] = *(v7 + 2);
      v21[3] = v12;
      v22[0] = *(v7 + 4);
      *(v22 + 10) = *(v7 + 74);
      v13 = *(v7 + 1);
      v21[0] = *v7;
      v21[1] = v13;
      sub_8FC54(v21, v18);
      v14 = [v2 traitCollection];
      v18[2] = v29;
      v18[3] = v30;
      v18[4] = v31;
      v19 = v32;
      v18[0] = v27;
      v18[1] = v28;
      v20 = v11;
      v15 = sub_2DAA3C(v18, v14);
      v16 = [objc_opt_self() fontWithDescriptor:v15 size:0.0];

      v17.receiver = v2;
      v17.super_class = v4;
      objc_msgSendSuper2(&v17, "setFont:", v16);

      sub_EB68(v23, &qword_4025E0);
    }
  }
}

id sub_236EA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicTypeTextView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_236F54()
{
  if (qword_3FADA8 != -1)
  {
    swift_once();
  }

  *&v3[10] = *(&xmmword_42A530 + 10);
  v2[0] = xmmword_42A4F0;
  v2[1] = unk_42A500;
  v2[2] = xmmword_42A510;
  v2[3] = *&qword_42A520;
  *v3 = xmmword_42A530;
  xmmword_429600 = xmmword_32DDF0;
  *&algn_429611[7] = xmmword_42A4F0;
  *(&xmmword_429620 + 8) = unk_42A500;
  *(&xmmword_429630 + 8) = xmmword_42A510;
  byte_429610 = 1;
  *(&xmmword_429640 + 8) = *&qword_42A520;
  *(&xmmword_429650 + 8) = xmmword_42A530;
  qword_429668 = *(&xmmword_42A530 + 10) >> 48;
  word_429670 = word_42A548 & 0x1FF | 0x8000;
  return sub_8FC54(v2, &v1);
}

uint64_t sub_237028()
{
  if (qword_3FADB0 != -1)
  {
    swift_once();
  }

  *&v3[10] = *(&xmmword_42A590 + 10);
  v2[0] = xmmword_42A550;
  v2[1] = unk_42A560;
  v2[2] = xmmword_42A570;
  v2[3] = *&qword_42A580;
  *v3 = xmmword_42A590;
  xmmword_429680 = xmmword_32DE00;
  *&algn_429691[7] = xmmword_42A550;
  *(&xmmword_4296A0 + 8) = unk_42A560;
  *(&xmmword_4296B0 + 8) = xmmword_42A570;
  byte_429690 = 1;
  *(&xmmword_4296C0 + 8) = *&qword_42A580;
  *(&xmmword_4296D0 + 8) = xmmword_42A590;
  qword_4296E8 = *(&xmmword_42A590 + 10) >> 48;
  word_4296F0 = word_42A5A8 & 0x1FF | 0x8000;
  return sub_8FC54(v2, &v1);
}

uint64_t sub_2370FC()
{
  if (qword_3FADB8 != -1)
  {
    swift_once();
  }

  *&v3[10] = *(&xmmword_42A5F0 + 10);
  v2[0] = xmmword_42A5B0;
  v2[1] = unk_42A5C0;
  v2[2] = xmmword_42A5D0;
  v2[3] = *&qword_42A5E0;
  *v3 = xmmword_42A5F0;
  xmmword_429700 = xmmword_32DE00;
  *&algn_429711[7] = xmmword_42A5B0;
  *(&xmmword_429720 + 8) = unk_42A5C0;
  *(&xmmword_429730 + 8) = xmmword_42A5D0;
  byte_429710 = 1;
  *(&xmmword_429740 + 8) = *&qword_42A5E0;
  *(&xmmword_429750 + 8) = xmmword_42A5F0;
  qword_429768 = *(&xmmword_42A5F0 + 10) >> 48;
  word_429770 = word_42A608 & 0x1FF | 0x8000;
  return sub_8FC54(v2, &v1);
}

UIFontTextStyle sub_2371D0()
{
  xmmword_429780 = xmmword_32DE10;
  byte_429790 = 1;
  qword_429798 = UIFontTextStyleBody;
  word_4297F0 = 0;
  return UIFontTextStyleBody;
}

char *sub_237204(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_objectGraph] = 0;
  v11 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_separatorInset];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v11 = UIEdgeInsetsZero.top;
  v11[1] = left;
  v11[2] = bottom;
  v11[3] = right;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_isHovering] = 0;
  v15 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_2D5EC(1, 5.0);
  v16 = qword_3FA928;
  v17 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = qword_428FC8;
  v19 = *&v17[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderColor];
  *&v17[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderColor] = qword_428FC8;
  v20 = v18;

  sub_2BE604();
  *&v17[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderWidth] = 0x3FE0000000000000;
  sub_2BE604();

  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_artworkView] = v17;
  objc_allocWithZone(type metadata accessor for ArtworkContainer());
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_artworkContainer] = sub_29C44(3u, v17, 0, 0, 0, 0);
  type metadata accessor for DynamicTypeLabel();
  if (qword_3FADA8 != -1)
  {
    swift_once();
  }

  v42[2] = xmmword_42A510;
  v42[3] = *&qword_42A520;
  v43[0] = xmmword_42A530;
  *(v43 + 10) = *(&xmmword_42A530 + 10);
  v42[0] = xmmword_42A4F0;
  v42[1] = unk_42A500;
  v48 = xmmword_42A510;
  v49 = *&qword_42A520;
  v50[0] = xmmword_42A530;
  *(v50 + 10) = *(&xmmword_42A530 + 10);
  v46 = xmmword_42A4F0;
  v47 = unk_42A500;
  sub_8FC54(v42, v44);
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_captionLabel] = sub_235C3C(&v46, 1, 0, 1);
  if (qword_3FADB0 != -1)
  {
    swift_once();
  }

  v44[2] = xmmword_42A570;
  v44[3] = *&qword_42A580;
  v45[0] = xmmword_42A590;
  *(v45 + 10) = *(&xmmword_42A590 + 10);
  v44[0] = xmmword_42A550;
  v44[1] = unk_42A560;
  v48 = xmmword_42A570;
  v49 = *&qword_42A580;
  v50[0] = xmmword_42A590;
  *(v50 + 10) = *(&xmmword_42A590 + 10);
  v46 = xmmword_42A550;
  v47 = unk_42A560;
  sub_8FC54(v44, v40);
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_titleLabel] = sub_235C3C(&v46, 1, 0, 1);
  if (qword_3FADB8 != -1)
  {
    swift_once();
  }

  v48 = xmmword_42A5D0;
  v49 = *&qword_42A5E0;
  v50[0] = xmmword_42A5F0;
  *(v50 + 10) = *(&xmmword_42A5F0 + 10);
  v46 = xmmword_42A5B0;
  v47 = unk_42A5C0;
  v40[2] = xmmword_42A5D0;
  v40[3] = *&qword_42A5E0;
  v41[0] = xmmword_42A5F0;
  *(v41 + 10) = *(&xmmword_42A5F0 + 10);
  v40[0] = xmmword_42A5B0;
  v40[1] = unk_42A5C0;
  sub_8FC54(&v46, v39);
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_subtitleLabel] = sub_235C3C(v40, 1, 0, 1);
  v21 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_separatorView] = v21;
  v38.receiver = v5;
  v38.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v38, "initWithFrame:", a1, a2, a3, a4);
  v23 = [v22 contentView];
  [v23 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v24 = OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_captionLabel;
  [*&v22[OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_captionLabel] _setTextColorFollowsTintColor:1];
  v25 = [v22 contentView];
  [v25 addSubview:*&v22[v24]];

  v26 = [v22 contentView];
  [v26 addSubview:*&v22[OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_titleLabel]];

  v27 = OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_subtitleLabel;
  v28 = *&v22[OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_subtitleLabel];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 secondaryLabelColor];
  [v30 setTextColor:v31];

  v32 = [v22 contentView];
  [v32 addSubview:*&v22[v27]];

  v33 = [v22 contentView];
  [v33 addSubview:*&v22[OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_artworkContainer]];

  v34 = OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_separatorView;
  v35 = qword_3FAC40;
  v36 = *&v22[OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_separatorView];
  if (v35 != -1)
  {
    swift_once();
  }

  [v36 setBackgroundColor:qword_4295F0];

  [v22 addSubview:*&v22[v34]];
  sub_E8CA8();
  [v22 setIsAccessibilityElement:1];
  [v22 setAccessibilityTraits:UIAccessibilityTraitButton];

  return v22;
}

uint64_t (**sub_2378A8())(uint64_t, id)
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "prepareForReuse");
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_artworkView];
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageView;
  v4 = [*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageView] layer];
  [v4 removeAllAnimations];

  [*&v2[v3] setImage:0];
  v5 = [v2 invalidateIntrinsicContentSize];
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_isHovering;
  if (v1[OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_isHovering] != 1)
  {
    return [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_separatorView] setAlpha:1.0];
  }

  v7 = sub_26816C(v5);
  if (!v7)
  {
    return [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_separatorView] setAlpha:1.0];
  }

  v8 = v7;
  if (v1[v6] == 1)
  {
    v1[v6] = 0;
  }

  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v11 = result[2](ObjectType, result);
    sub_2A6FC(0, 0);

    return [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_separatorView] setAlpha:1.0];
  }

  __break(1u);
  return result;
}

double sub_237A54()
{
  v1 = [v0 contentView];
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v1 layoutMargins];
  v11 = v10;
  v13 = v12;

  v20.origin.x = UIEdgeInsetsInsetRect(v3, v5, v7, v9, v11, v13);
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  v18 = CGRectGetWidth(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  CGRectGetWidth(v21);
  return v18;
}

uint64_t sub_237B48()
{
  v1 = v0;
  v105.receiver = v0;
  v105.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v105, "layoutSubviews");
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_separatorInset + 8];
  v11 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_separatorInset + 24];
  sub_111AE0();
  if (sub_30C978())
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.5;
  }

  v13 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_separatorView];
  v106.origin.x = v3;
  v106.origin.y = v5;
  v106.size.width = v7;
  v106.size.height = v9;
  MinY = CGRectGetMinY(v106);
  v69 = v3;
  v107.origin.x = v3;
  v66 = v5;
  v107.origin.y = v5;
  v107.size.width = v7;
  v68 = v9;
  v107.size.height = v9;
  v70 = v12;
  [v13 setFrame:{v10, MinY, CGRectGetWidth(v107) - v10 - v11, v12}];
  v15 = [v1 contentView];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [v15 layoutMargins];
  v25 = v24;
  v27 = v26;

  v28 = UIEdgeInsetsInsetRect(v17, v19, v21, v23, v25, v27);
  v67 = v29;
  v31 = v30;
  v33 = v32;
  v34 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_captionLabel];
  if (qword_3FAC48 != -1)
  {
    swift_once();
  }

  v95[4] = xmmword_429640;
  v95[5] = xmmword_429650;
  v95[6] = unk_429660;
  v96 = word_429670;
  v95[0] = xmmword_429600;
  v95[1] = *&byte_429610;
  v95[2] = xmmword_429620;
  v95[3] = xmmword_429630;
  v97 = xmmword_429600;
  v98 = *&byte_429610;
  v99 = xmmword_429620;
  v100 = xmmword_429630;
  v101 = xmmword_429640;
  v102 = xmmword_429650;
  v103 = unk_429660;
  v104 = word_429670;
  sub_9004C(v95, v93);
  v35 = v34;
  v36 = sub_CB81C(0, 1, 1, _swiftEmptyArrayStorage);
  v38 = *(v36 + 2);
  v37 = *(v36 + 3);
  if (v38 >= v37 >> 1)
  {
    v36 = sub_CB81C((v37 > 1), v38 + 1, 1, v36);
  }

  v39 = v102;
  v40 = &v36[128 * v38];
  *(v40 + 104) = v101;
  *(v40 + 120) = v39;
  *(v40 + 136) = v103;
  v41 = v98;
  *(v40 + 40) = v97;
  *(v40 + 56) = v41;
  v42 = v100;
  *(v40 + 72) = v99;
  *(v36 + 2) = v38 + 1;
  *(v40 + 4) = v35;
  *(v40 + 76) = v104;
  *(v40 + 88) = v42;
  *(v40 + 77) = 1;
  v43 = sub_240444(v1, v36, 0, v69, v66, v7, v9);

  v44 = qword_3FAC50;
  v45 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_titleLabel];
  if (v44 != -1)
  {
    v65 = v45;
    swift_once();
    v45 = v65;
  }

  v87[4] = xmmword_4296C0;
  v87[5] = xmmword_4296D0;
  v87[6] = unk_4296E0;
  v88 = word_4296F0;
  v87[0] = xmmword_429680;
  v87[1] = *&byte_429690;
  v87[2] = xmmword_4296A0;
  v87[3] = xmmword_4296B0;
  *&v89[8] = xmmword_429680;
  *&v89[24] = *&byte_429690;
  *&v89[40] = xmmword_4296A0;
  *&v89[56] = xmmword_4296B0;
  *&v89[72] = xmmword_4296C0;
  *&v89[88] = xmmword_4296D0;
  *&v89[104] = unk_4296E0;
  *&v89[120] = word_4296F0;
  *v89 = v45;
  *&v89[122] = 0;
  v46 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_subtitleLabel];
  sub_9004C(v87, v93);
  if (qword_3FAC58 != -1)
  {
    swift_once();
  }

  v90[4] = xmmword_429740;
  v90[5] = xmmword_429750;
  v90[6] = unk_429760;
  v91 = word_429770;
  v90[0] = xmmword_429700;
  v90[1] = *&byte_429710;
  v90[2] = xmmword_429720;
  v90[3] = xmmword_429730;
  *&v92[8] = xmmword_429700;
  *&v92[24] = *&byte_429710;
  *&v92[40] = xmmword_429720;
  *&v92[56] = xmmword_429730;
  *&v92[72] = xmmword_429740;
  *&v92[88] = xmmword_429750;
  *&v92[104] = unk_429760;
  *&v92[120] = word_429770;
  *v92 = v46;
  *&v92[122] = 0;
  *v79 = *&v89[96];
  *&v79[12] = *&v89[108];
  *(v86 + 12) = *&v92[108];
  HIDWORD(v86[0]) = unk_429764;
  v93[2] = *&v89[32];
  v93[3] = *&v89[48];
  v93[0] = *v89;
  v93[1] = *&v89[16];
  v93[7] = *&v79[16];
  v93[6] = *v79;
  v93[4] = *&v89[64];
  v93[5] = *&v89[80];
  v93[11] = *&v92[48];
  v93[10] = *&v92[32];
  v93[9] = *&v92[16];
  v93[8] = *v92;
  *&v94[12] = *(v86 + 12);
  *v94 = *&v92[96];
  v93[13] = *&v92[80];
  v93[12] = *&v92[64];
  v94[28] = 0;
  v84 = *&v92[64];
  v85 = *&v92[80];
  v86[0] = *&v92[96];
  *(v86 + 13) = *&v94[13];
  v80 = *v92;
  v81 = *&v92[16];
  v82 = *&v92[32];
  v83 = *&v92[48];
  v77 = *&v89[64];
  v78 = *&v89[80];
  v73 = *v89;
  v74 = *&v89[16];
  v75 = *&v89[32];
  v76 = *&v89[48];
  sub_9004C(v90, v71);
  sub_238F10(v89, v71);
  sub_238F10(v92, v71);
  v47 = sub_300B6C(v1, v69, v43, v7, v68 - v43);
  if (qword_3FAC60 != -1)
  {
    swift_once();
  }

  v48 = v33 - v70;
  v77 = xmmword_4297C0;
  v78 = unk_4297D0;
  *v79 = xmmword_4297E0;
  *&v79[16] = word_4297F0;
  v73 = xmmword_429780;
  v74 = *&byte_429790;
  v75 = xmmword_4297A0;
  v76 = unk_4297B0;
  sub_9004C(&v73, v71);
  if (qword_3FAC38 != -1)
  {
    swift_once();
  }

  v49 = sub_30D6F8();
  v50 = __swift_project_value_buffer(v49, qword_4295D8);
  v71[4] = v77;
  v71[5] = v78;
  v71[6] = *v79;
  v72 = *&v79[16];
  v71[0] = v73;
  v71[1] = v74;
  v71[2] = v75;
  v71[3] = v76;
  v51 = [v1 traitCollection];
  sub_231F6C(v51, v50, 0);
  v53 = v52;

  sub_900A8(&v73);
  v108.origin.x = v28;
  v108.origin.y = v70 + v67;
  v108.size.width = v31;
  v108.size.height = v33 - v70;
  v54 = CGRectGetWidth(v108) * 0.5;
  v109.origin.x = v28;
  v109.origin.y = v70 + v67;
  v109.size.width = v31;
  v109.size.height = v48;
  v55 = CGRectGetHeight(v109) - v47 - v53;
  v56 = v28;
  v57 = v70 + v67;
  v58 = v31;
  v59 = v48;
  if (v55 >= v54)
  {
    MinX = CGRectGetMinX(*&v56);
    v110.origin.x = v28;
    v110.origin.y = v70 + v67;
    v110.size.width = v31;
    v110.size.height = v48;
    Width = CGRectGetWidth(v110);
    v62 = MinX;
    v55 = v54;
  }

  else
  {
    MidX = CGRectGetMidX(*&v56);
    Width = v55 + v55;
    v62 = MidX + (v55 + v55) * -0.5;
  }

  [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_artworkContainer] setFrame:{v62, v47 + v53, Width, v55, *&v66}];
  sub_238F6C(v89);
  sub_238F6C(v92);
  return sub_238FC0(v93);
}

uint64_t sub_238484()
{
  v0 = sub_303DF8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3030E8();
  if ((*(v1 + 88))(v3, v0) == enum case for CropCode.boundingBox(_:))
  {
    return 5;
  }

  sub_3030C8();
  v5 = sub_303118();
  (*(v1 + 8))(v3, v0);
  return v5;
}

id sub_2385A0(char a1)
{
  v2 = 1.0;
  if (a1)
  {
    v2 = 0.0;
  }

  return [*(*v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_separatorView) setAlpha:v2];
}

uint64_t sub_238610@<X0>(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

id sub_2386A0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_captionLabel];
  sub_308088();
  if (v3)
  {
    v4 = sub_30C098();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText:v4];

  v5 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_titleLabel];
  sub_308098();
  if (v6)
  {
    v7 = sub_30C098();
  }

  else
  {
    v7 = 0;
  }

  [v5 setText:v7];

  v8 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_subtitleLabel];
  sub_3080A8();
  if (v9)
  {
    v10 = sub_30C098();
  }

  else
  {
    v10 = 0;
  }

  [v8 setText:v10];

  return [v1 setNeedsLayout];
}

uint64_t sub_2387C0(uint64_t a1, uint64_t a2)
{
  sub_111AE0();
  sub_30C978();
  if (qword_3FAC48 != -1)
  {
    swift_once();
  }

  v14[4] = xmmword_429640;
  v14[5] = xmmword_429650;
  v14[6] = unk_429660;
  v14[0] = xmmword_429600;
  v14[1] = *&byte_429610;
  v14[2] = xmmword_429620;
  v14[3] = xmmword_429630;
  v32 = xmmword_429640;
  v33 = xmmword_429650;
  v34 = unk_429660;
  v28 = xmmword_429600;
  v29 = *&byte_429610;
  v15 = word_429670;
  v35 = word_429670;
  v30 = xmmword_429620;
  v31 = xmmword_429630;
  sub_9004C(v14, v26);
  if (qword_3FAC38 != -1)
  {
    swift_once();
  }

  v3 = sub_30D6F8();
  v4 = __swift_project_value_buffer(v3, qword_4295D8);
  sub_231F6C(a2, v4, 0);
  v16[4] = v32;
  v16[5] = v33;
  v16[6] = v34;
  v17 = v35;
  v16[0] = v28;
  v16[1] = v29;
  v16[2] = v30;
  v16[3] = v31;
  sub_900A8(v16);
  if (qword_3FAC50 != -1)
  {
    swift_once();
  }

  v18[4] = xmmword_4296C0;
  v18[5] = xmmword_4296D0;
  v18[6] = unk_4296E0;
  v18[0] = xmmword_429680;
  v18[1] = *&byte_429690;
  v18[2] = xmmword_4296A0;
  v18[3] = xmmword_4296B0;
  v32 = xmmword_4296C0;
  v33 = xmmword_4296D0;
  v34 = unk_4296E0;
  v28 = xmmword_429680;
  v29 = *&byte_429690;
  v19 = word_4296F0;
  v35 = word_4296F0;
  v30 = xmmword_4296A0;
  v31 = xmmword_4296B0;
  sub_9004C(v18, v26);
  sub_231F6C(a2, v4, 0);
  v20[4] = v32;
  v20[5] = v33;
  v20[6] = v34;
  v21 = v35;
  v20[0] = v28;
  v20[1] = v29;
  v20[2] = v30;
  v20[3] = v31;
  sub_900A8(v20);
  if (qword_3FAC58 != -1)
  {
    swift_once();
  }

  v22[4] = xmmword_429740;
  v22[5] = xmmword_429750;
  v22[6] = unk_429760;
  v22[0] = xmmword_429700;
  v22[1] = *&byte_429710;
  v22[2] = xmmword_429720;
  v22[3] = xmmword_429730;
  v32 = xmmword_429740;
  v33 = xmmword_429750;
  v34 = unk_429760;
  v28 = xmmword_429700;
  v29 = *&byte_429710;
  v23 = word_429770;
  v35 = word_429770;
  v30 = xmmword_429720;
  v31 = xmmword_429730;
  sub_9004C(v22, v26);
  sub_231F6C(a2, v4, 0);
  v24[4] = v32;
  v24[5] = v33;
  v24[6] = v34;
  v25 = v35;
  v24[0] = v28;
  v24[1] = v29;
  v24[2] = v30;
  v24[3] = v31;
  sub_900A8(v24);
  if (qword_3FAC60 != -1)
  {
    swift_once();
  }

  v26[4] = xmmword_4297C0;
  v26[5] = unk_4297D0;
  v26[6] = xmmword_4297E0;
  v27 = word_4297F0;
  v26[0] = xmmword_429780;
  v26[1] = *&byte_429790;
  v26[2] = xmmword_4297A0;
  v26[3] = unk_4297B0;
  v10 = xmmword_4297C0;
  v11 = unk_4297D0;
  v12 = xmmword_4297E0;
  v13 = word_4297F0;
  v6 = xmmword_429780;
  v7 = *&byte_429790;
  v8 = xmmword_4297A0;
  v9 = unk_4297B0;
  sub_9004C(v26, &v28);
  sub_231F6C(a2, v4, 0);
  v32 = v10;
  v33 = v11;
  v34 = v12;
  v35 = v13;
  v28 = v6;
  v29 = v7;
  v30 = v8;
  v31 = v9;
  sub_900A8(&v28);
  return sub_307198();
}

void sub_238C00(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews31EditorialCardCollectionViewCell_objectGraph) = a1;

  sub_2AE20(v2);
}

uint64_t sub_238C4C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_238EC8(&qword_409F98, v3, type metadata accessor for EditorialCardCollectionViewCell);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v4);
}

uint64_t sub_238CE8@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ShelfArtworkPosition.bottom(_:);
  v3 = sub_307228();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_238EC8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_239014(uint64_t a1)
{
  v2 = v1;
  v4 = sub_303418();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_303458();
  v15[4] = sub_309548();
  v15[5] = sub_23949C();
  v15[1] = a1;
  __swift_project_boxed_opaque_existential_1Tm(&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews19EpisodeCaptionLabel_storeDataProvider], *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews19EpisodeCaptionLabel_storeDataProvider + 24]);

  sub_308FC8();
  (*(v5 + 104))(v7, enum case for EyebrowBuilder.Style.default(_:), v4);
  sub_303438();
  v8 = sub_303428();
  v10 = v9;

  if (v10)
  {
    v8 = sub_30C248();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews19EpisodeCaptionLabel_caption];
  *v13 = v8;
  v13[1] = v12;

  if (v12)
  {
    v14 = sub_30C098();
  }

  else
  {
    v14 = 0;
  }

  [v2 setText:v14];
}

uint64_t sub_2392D8(void *a1)
{
  result = swift_beginAccess();
  if (off_40D118)
  {
    sub_12670((off_40D118 + 6), &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews19EpisodeCaptionLabel_storeDataProvider]);
    v4 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews19EpisodeCaptionLabel_caption];
    v5 = type metadata accessor for EpisodeCaptionLabel();
    *v4 = 0;
    *(v4 + 1) = 0;
    v7.receiver = v1;
    v7.super_class = v5;
    v6 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

    if (v6)
    {
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2393B0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews19EpisodeCaptionLabel_storeDataProvider);
}

id sub_2393F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EpisodeCaptionLabel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_23949C()
{
  result = qword_3FE950;
  if (!qword_3FE950)
  {
    sub_309548();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FE950);
  }

  return result;
}

void EpisodePlayProgressView.borderColor.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_borderColor;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  v6 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_borderShapeLayer];
  v7 = *&v1[v3];
  if (v7)
  {
    v8 = [v7 CGColor];
  }

  else
  {
    v8 = 0;
  }

  [v6 setStrokeColor:v8];

  if (*&v1[v3])
  {
    v9 = [v1 layer];
    [v9 addSublayer:v6];

    v5 = v9;
  }

  else
  {
    [v6 removeFromSuperlayer];
  }
}

id sub_239668(uint64_t a1, void *a2, void **a3, void **a4)
{
  if (*a2 != -1)
  {
    v7 = a4;
    v8 = a3;
    swift_once();
    a3 = v8;
    a4 = v7;
  }

  v5 = *a3;
  *a4 = *a3;

  return v5;
}

char *sub_2396C8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView__progress];
  *v10 = 0;
  v10[4] = 1;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_borderColor] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_barHeight] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_cornerRadius] = 0x4010000000000000;
  if (qword_3FAC68 != -1)
  {
    swift_once();
  }

  v11 = qword_409FD8;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_progressColor] = qword_409FD8;
  v12 = qword_3FAC70;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_409FE0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_trackColor] = qword_409FE0;
  v15 = objc_allocWithZone(CAShapeLayer);
  v16 = v14;
  v17 = [v15 init];
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_backgroundShapeLayer] = v17;
  v18 = [objc_allocWithZone(CAShapeLayer) init];
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_foregroundShapeLayer] = v18;
  v19 = [objc_allocWithZone(CAShapeLayer) init];
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_borderShapeLayer] = v19;
  [v19 setFillColor:0];
  v24.receiver = v4;
  v24.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  [v20 setOpaque:0];
  v21 = [v20 layer];
  [v21 addSublayer:*&v20[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_backgroundShapeLayer]];

  v22 = [v20 layer];
  [v22 addSublayer:*&v20[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_foregroundShapeLayer]];

  return v20;
}

double EpisodePlayProgressView.barHeight.getter()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_barHeight;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*EpisodePlayProgressView.barHeight.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AEB8;
}

double EpisodePlayProgressView.cornerRadius.getter()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_cornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_239ACC(uint64_t *a1, double a2)
{
  v4 = *a1;
  swift_beginAccess();
  *&v2[v4] = a2;
  return [v2 setNeedsLayout];
}

uint64_t (*EpisodePlayProgressView.cornerRadius.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_239B8C;
}

id sub_239B90(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsLayout];
  }

  return result;
}

id EpisodePlayProgressView.progressColor.getter()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_progressColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_239C4C(void *a1, uint64_t *a2, void *a3)
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  v8 = a1;

  v9 = *(v3 + *a3);
  v10 = [v8 CGColor];
  [v9 setFillColor:v10];
}

void (*EpisodePlayProgressView.progressColor.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_progressColor;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_239D7C;
}

id EpisodePlayProgressView.trackColor.getter()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_trackColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_239DDC(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a5;
  swift_beginAccess();
  v10 = *(v8 + v9);
  *(v8 + v9) = v7;
  v11 = v7;

  v12 = *(v8 + *a6);
  v13 = [v11 CGColor];
  [v12 setFillColor:v13];
}

void (*EpisodePlayProgressView.trackColor.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_trackColor;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_239F0C;
}

void sub_239F18(void **a1, char a2, void *a3)
{
  v5 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v6 = v5[3];
    v7 = *(v6 + *a3);
    v8 = [*(v6 + v5[4]) CGColor];
    [v7 setFillColor:v8];
  }

  free(v5);
}

void *EpisodePlayProgressView.borderColor.getter()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_borderColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_239FF4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_borderColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  sub_23A058();
}

void sub_23A058()
{
  v1 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_borderShapeLayer];
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_borderColor;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3)
  {
    v4 = [v3 CGColor];
  }

  else
  {
    v4 = 0;
  }

  [v1 setStrokeColor:v4];

  if (*&v0[v2])
  {
    v5 = [v0 layer];
    [v5 addSublayer:v1];
  }

  else
  {
    [v1 removeFromSuperlayer];
  }
}

void (*EpisodePlayProgressView.borderColor.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_borderColor;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_23A1C0;
}

void sub_23A1C0(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(v3 + 24);
    v4 = *(v3 + 32);
    v6 = *(v5 + OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_borderShapeLayer);
    v7 = *(v5 + v4);
    if (v7)
    {
      v8 = [v7 CGColor];
      v5 = *(v3 + 24);
      v4 = *(v3 + 32);
    }

    else
    {
      v8 = 0;
    }

    [v6 setStrokeColor:v8];

    if (*(v5 + v4))
    {
      v9 = [*(v3 + 24) layer];
      [v9 addSublayer:v6];
    }

    else
    {
      [v6 removeFromSuperlayer];
    }
  }

  free(v3);
}

Swift::Void __swiftcall EpisodePlayProgressView.layoutSubviews()()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_foregroundShapeLayer];
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_progressColor;
  swift_beginAccess();
  v3 = [*&v0[v2] CGColor];
  [v1 setFillColor:v3];

  v4 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_backgroundShapeLayer];
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_trackColor;
  swift_beginAccess();
  v6 = [*&v0[v5] CGColor];
  [v4 setFillColor:v6];

  v7 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_borderShapeLayer];
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_borderColor;
  swift_beginAccess();
  v9 = *&v0[v8];
  if (v9)
  {
    v10 = [v9 CGColor];
  }

  else
  {
    v10 = 0;
  }

  [v7 setStrokeColor:v10];

  sub_23A4D0();
  sub_23A670();
  sub_23A89C();
}

id sub_23A4D0()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_borderColor;
  result = swift_beginAccess();
  if (*&v0[v1])
  {
    v3 = [v0 traitCollection];
    [v3 displayScale];
    v5 = v4;

    v6 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_borderShapeLayer];
    v7 = 1.0 / v5;
    [v0 bounds];
    v16 = CGRectInset(v15, v7 * 0.5, v7 * 0.5);
    x = v16.origin.x;
    y = v16.origin.y;
    width = v16.size.width;
    height = v16.size.height;
    v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_cornerRadius;
    swift_beginAccess();
    v13 = [objc_opt_self() bezierPathWithRoundedRect:x cornerRadius:{y, width, height, *&v0[v12]}];
    v14 = [v13 CGPath];

    [v6 setPath:v14];
    [v6 setLineWidth:v7];
    [v0 bounds];
    return [v6 setFrame:?];
  }

  return result;
}

id sub_23A670()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_borderColor;
  swift_beginAccess();
  v10 = 0.0;
  if (*&v0[v9])
  {
    v11 = [v0 traitCollection];
    [v11 displayScale];
    v13 = v12;

    v14 = 1.0 / v13;
    if (*&v0[v9])
    {
      v15 = [v0 traitCollection];
      [v15 displayScale];
      v17 = v16;

      v10 = 1.0 / v17;
    }
  }

  else
  {
    v14 = 0.0;
  }

  v36.origin.x = v2;
  v36.origin.y = v4;
  v36.size.width = v6;
  v36.size.height = v8;
  v37 = CGRectInset(v36, v14, v10);
  x = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  height = v37.size.height;
  v22 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_backgroundShapeLayer];
  v23 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_cornerRadius;
  swift_beginAccess();
  v24 = [objc_opt_self() bezierPathWithRoundedRect:x cornerRadius:{y, width, height, *&v0[v23]}];
  v25 = [v24 CGPath];

  [v22 setPath:v25];
  v26 = [v0 layer];
  [v26 bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  return [v22 setFrame:{v28, v30, v32, v34}];
}

id sub_23A89C()
{
  v1 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView__progress];
  v2 = 0.5;
  if ((v0[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView__progress + 4] & 1) == 0)
  {
    v3 = 0.0;
    if (*v1 >= 0.0)
    {
      v3 = *v1;
    }

    v4 = v3;
    if (*v1 < 1.0)
    {
      v2 = v4;
    }

    else
    {
      v2 = 1.0;
    }
  }

  [v0 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_borderColor;
  swift_beginAccess();
  v14 = 0.0;
  if (*&v0[v13])
  {
    v15 = [v0 traitCollection];
    [v15 displayScale];
    v17 = v16;

    v18 = 1.0 / v17;
    if (*&v0[v13])
    {
      v19 = [v0 traitCollection];
      [v19 displayScale];
      v21 = v20;

      v14 = 1.0 / v21;
    }
  }

  else
  {
    v18 = 0.0;
  }

  v47.origin.x = v6;
  v47.origin.y = v8;
  v47.size.width = v10;
  v47.size.height = v12;
  v48 = CGRectInset(v47, v18, v14);
  x = v48.origin.x;
  y = v48.origin.y;
  width = v48.size.width;
  height = v48.size.height;
  v26 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_cornerRadius;
  swift_beginAccess();
  v27 = ceil(*&v0[v26] + *&v0[v26]);
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  v28 = CGRectGetWidth(v49) - v27;
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  v29 = ceil(v2 * CGRectGetWidth(v50));
  if (v29 <= v27)
  {
    v29 = v27;
  }

  if (v28 >= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = v28;
  }

  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  MinX = CGRectGetMinX(v51);
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  MinY = CGRectGetMinY(v52);
  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = width;
  v53.size.height = height;
  v33 = CGRectGetHeight(v53);
  v34 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_foregroundShapeLayer];
  v35 = [objc_opt_self() bezierPathWithRoundedRect:5 byRoundingCorners:MinX cornerRadii:{MinY, v30, v33, *&v0[v26], *&v0[v26]}];
  v36 = [v35 CGPath];

  [v34 setPath:v36];
  v37 = [v0 layer];
  [v37 bounds];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  return [v34 setFrame:{v39, v41, v43, v45}];
}

double keypath_getTm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

id keypath_setTm(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *&v6[v7] = v5;
  return [v6 setNeedsLayout];
}

id keypath_get_5Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

id sub_23AD9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_borderColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_23AEBC()
{
  if (qword_3FADC8 != -1)
  {
    swift_once();
  }

  v2[2] = xmmword_42A690;
  v2[3] = *&qword_42A6A0;
  v3[0] = xmmword_42A6B0;
  *(v3 + 10) = *(&xmmword_42A6B0 + 10);
  v2[0] = xmmword_42A670;
  v2[1] = *&qword_42A680;
  xmmword_40A090 = *&qword_42A6A0;
  xmmword_40A0A0 = xmmword_42A6B0;
  xmmword_40A070 = *&qword_42A680;
  xmmword_40A080 = xmmword_42A690;
  *(&xmmword_40A0A0 + 10) = *(&xmmword_42A6B0 + 10);
  xmmword_40A060 = xmmword_42A670;
  return sub_EB00(v2, &v1, &qword_3FFD68);
}

id sub_23AF64(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = [*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_moreButton) *a2];
    v8 = [*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_textView) *a2];
    v9 = [v7 constraintEqualToAnchor:v8];

    v10 = *(v2 + v3);
    *(v2 + v3) = v9;
    v5 = v9;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

char *ExpandableTextView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_textView;
  type metadata accessor for DynamicTypeTextView();
  if (qword_3FAC78 != -1)
  {
    swift_once();
  }

  v60[2] = xmmword_40A080;
  v60[3] = xmmword_40A090;
  v61[0] = xmmword_40A0A0;
  *(v61 + 10) = *(&xmmword_40A0A0 + 10);
  v60[0] = xmmword_40A060;
  v60[1] = xmmword_40A070;
  v58[2] = xmmword_40A080;
  v58[3] = xmmword_40A090;
  v59[0] = xmmword_40A0A0;
  *(v59 + 10) = *(&xmmword_40A0A0 + 10);
  v58[0] = xmmword_40A060;
  v58[1] = xmmword_40A070;
  sub_EB00(v60, v57, &qword_3FFD68);
  *&v4[v10] = sub_2366CC(v58);
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_moreButton;
  sub_302AD8();
  v12 = sub_302AC8();
  v13 = sub_289928(v12);

  *&v4[v11] = v13;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView____lazy_storage___moreButtonLeadingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView____lazy_storage___moreButtonTrailingConstraint] = 0;
  v14 = OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_shareSheetContentSource;
  v15 = sub_30A5E8();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_hasMoreButton] = 1;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_collapsedNumberOfLines] = 3;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_isCollapsed] = 1;
  v16 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_moreTapHandler];
  *v16 = 0;
  v16[1] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_objectGraph] = 0;
  v56.receiver = v4;
  v56.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v56, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v21 = v17;
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v22 = v21;
  v23 = sub_302AC8();
  [v22 setBackgroundColor:v23];

  v24 = OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_textView;
  [*&v22[OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_textView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v22[v24] setSelectable:0];
  [*&v22[v24] setEditable:0];
  [*&v22[v24] setScrollEnabled:0];
  [*&v22[v24] setUserInteractionEnabled:1];
  v25 = *&v22[v24];
  v26 = sub_302AC8();
  [v25 setBackgroundColor:v26];

  v27 = [*&v22[v24] textContainer];
  [v27 setMaximumNumberOfLines:*&v22[OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_collapsedNumberOfLines]];

  v28 = [*&v22[v24] textContainer];
  [v28 setLineBreakMode:0];

  [*&v22[v24] setTextContainerInset:{UIEdgeInsetsZero.top, left, bottom, right}];
  v29 = [*&v22[v24] textContainer];
  [v29 setLineFragmentPadding:0.0];

  v30 = *&v22[v24];
  [v30 setDelegate:v22];

  [v22 addSubview:*&v22[v24]];
  v31 = OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_moreButton;
  [*&v22[OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_moreButton] setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = *&v22[v31];
  v33 = v22;
  v34 = v32;
  v35 = [v33 tintColor];
  [v34 setTitleColor:v35 forState:0];

  v36 = *&v22[v31];
  [v36 addTarget:v33 action:"moreFrom:" forControlEvents:64];

  [v33 addSubview:*&v22[v31]];
  v55 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_31FDA0;
  v38 = [*&v22[v24] leadingAnchor];
  v39 = [v33 leadingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  *(v37 + 32) = v40;
  v41 = [*&v22[v24] trailingAnchor];
  v42 = [v33 trailingAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];

  *(v37 + 40) = v43;
  v44 = [*&v22[v24] topAnchor];
  v45 = [v33 topAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];

  *(v37 + 48) = v46;
  v47 = [*&v22[v24] bottomAnchor];
  v48 = [v33 bottomAnchor];

  v49 = [v47 constraintEqualToAnchor:v48];
  *(v37 + 56) = v49;
  v50 = [*&v22[v31] bottomAnchor];
  v51 = [*&v22[v24] bottomAnchor];
  v52 = [v50 constraintEqualToAnchor:v51 constant:-1.0];

  *(v37 + 64) = v52;
  sub_124C4(0, &qword_403000);
  isa = sub_30C358().super.isa;

  [v55 activateConstraints:isa];

  return v33;
}

Swift::Void __swiftcall ExpandableTextView.tintColorDidChange()()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "tintColorDidChange");
  v1 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_moreButton];
  v2 = [v0 tintColor];
  [v1 setTitleColor:v2 forState:0];
}

void sub_23B924(unint64_t a1, char a2, char a3, char a4, uint64_t a5)
{
  v6 = v5;
  if ((~a1 & 0xF000000000000007) != 0)
  {
    v12 = (a1 & 0x3FFFFFFFFFFFFFFFLL);
    v13 = sub_30B588();
    if (__OFSUB__(*&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_collapsedNumberOfLines], 1))
    {
      __break(1u);
    }

    else
    {
      v14 = v13;
      v50 = a4;
      v49 = a5;
      v15 = *&v6[OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_textView];
      [v15 frame];
      CGRectGetWidth(v55);
      v16 = [v15 textContainer];
      [v16 lineBreakMode];

      v17 = sub_304268();
      v18 = [v6 effectiveUserInterfaceLayoutDirection] == 0;
      v19 = sub_23AF64(&OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView____lazy_storage___moreButtonTrailingConstraint, &selRef_trailingAnchor);
      [v19 setActive:(v17 != 0) ^ v18];

      v20 = sub_23AF64(&OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView____lazy_storage___moreButtonLeadingConstraint, &selRef_leadingAnchor);
      [v20 setActive:{objc_msgSend(*&v6[OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView____lazy_storage___moreButtonTrailingConstraint], "isActive") ^ 1}];

      if (a3)
      {
        v21 = 7;
      }

      else
      {
        v21 = 0;
      }

      [v15 setDataDetectorTypes:v21];
      [v15 setSelectable:a3 & 1];
      v22 = OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_isCollapsed;
      v6[OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_isCollapsed] = a2 & 1;
      sub_23BE10();
      v23 = OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_shareSheetContentSource;
      swift_beginAccess();
      sub_23E620(v49, &v6[v23]);
      swift_endAccess();
      v24 = v12;
      sub_2D6CB0(_swiftEmptyArrayStorage);
      v25 = [v15 font];
      if (v25)
      {
        v26 = v25;
        v53 = sub_124C4(0, &qword_408100);
        *&v52 = v26;
        sub_1DA94(&v52, v51);
        v27 = v26;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_295508(v51, NSFontAttributeName, isUniquelyReferenced_nonNull_native);
      }

      v29 = [v15 textColor];
      if (v29)
      {
        v30 = v29;
        v53 = sub_124C4(0, &qword_3FFD48);
        *&v52 = v30;
        sub_1DA94(&v52, v51);
        v31 = v30;
        v32 = swift_isUniquelyReferenced_nonNull_native();
        sub_295508(v51, NSForegroundColorAttributeName, v32);
      }

      v33 = sub_304298();
      sub_304248();
      v34 = objc_allocWithZone(v33);
      v35 = sub_3042A8();
      v36 = sub_304238();

      [v15 setAttributedText:v36];
      if (v50 != 4)
      {
        [v15 setTextAlignment:4];
      }

      [v6 layoutIfNeeded];
      [v6 layoutMargins];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;
      [v6 bounds];
      v47 = sub_23CD2C(a1, v38, v40, v42, v44, v45, v46);
      v6[OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_hasMoreButton] = v47;
      if (v47)
      {
        v48 = v6[v22] ^ 1;
      }

      else
      {
        v48 = 1;
      }

      [*&v6[OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_moreButton] setHidden:v48 & 1];
      sub_23E690(a1);
    }
  }

  else
  {
    [*&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_textView] setText:0];

    [v5 setNeedsLayout];
  }
}

id sub_23BE10()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_isCollapsed);
  v2 = [*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_textView) textContainer];
  v3 = v2;
  if (v1 == 1)
  {
    [v2 setMaximumNumberOfLines:*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_collapsedNumberOfLines)];

    v4 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_moreButton);
    v5 = (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_hasMoreButton) & 1) == 0;
  }

  else
  {
    [v2 setMaximumNumberOfLines:0];

    v4 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_moreButton);
    v5 = 1;
  }

  return [v4 setHidden:v5];
}

UIAction_optional __swiftcall ExpandableTextView.textView(_:primaryActionFor:defaultAction:)(UITextView _, UITextItem primaryActionFor, UIAction defaultAction)
{
  v3 = sub_23D5D8(primaryActionFor.super.isa, defaultAction.super.super.isa);
  result.value.super.super.isa = v3;
  result.is_nil = v4;
  return result;
}

uint64_t sub_23BF88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_30B898();
  __chkstk_darwin(v4 - 8);
  v5 = sub_301CB8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_301C58(0);
  if (v10)
  {
    if (v9 == 0xD000000000000012 && v10 == 0x80000000003410F0)
    {

LABEL_6:
      (*(v6 + 16))(v8, a1, v5);
      sub_30B868();
      return sub_30AD88();
    }

    v11 = sub_30D728();

    if (v11)
    {
      goto LABEL_6;
    }
  }

  v13 = sub_30ADA8();
  v14 = *(*(v13 - 8) + 56);

  return v14(a2, 1, 1, v13);
}

void sub_23C184()
{
  v0 = [objc_opt_self() sharedApplication];
  sub_301C08(v1);
  v3 = v2;
  sub_2D6B88(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_23ECD0(&unk_404010, type metadata accessor for OpenExternalURLOptionsKey);
  isa = sub_30BF88().super.isa;

  [v0 openURL:v3 options:isa completionHandler:0];
}

UITextItemMenuConfiguration_optional __swiftcall ExpandableTextView.textView(_:menuConfigurationFor:defaultMenu:)(UITextView _, UITextItem menuConfigurationFor, UIMenu defaultMenu)
{
  v3 = sub_23D99C(menuConfigurationFor.super.isa, defaultMenu.super.super.isa);
  result.value.super.isa = v3;
  result.is_nil = v4;
  return result;
}

uint64_t sub_23C2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_30ADA8();
    v12[3] = v6;
    v12[4] = sub_23ECD0(&qword_40A180, &type metadata accessor for SeekToTimestampAndPlayAction);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v12);
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_0Tm, a3, v6);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v9 = Strong;
    if (Strong)
    {
      Strong = type metadata accessor for ExpandableTextView();
    }

    else
    {
      v11[1] = 0;
      v11[2] = 0;
    }

    v11[0] = v9;
    v11[3] = Strong;
    v10 = swift_unknownObjectWeakLoadStrong();
    type metadata accessor for ExpandableTextView();
    sub_23ECD0(&unk_40A170, type metadata accessor for ExpandableTextView);
    sub_3025C8();

    sub_EB68(v11, &unk_3FBB70);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return result;
}

uint64_t sub_23C460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v5 = sub_30A5E8();
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_308C18();
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v33 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40A160);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  __chkstk_darwin(v16);
  v18 = &v32 - v17;
  sub_3019E8();
  sub_23E87C(a3, v7);
  sub_EB00(v18, v15, &qword_40A160);
  v19 = sub_301A18();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  if (v21(v15, 1, v19) == 1)
  {
    sub_EB68(v15, &qword_40A160);
  }

  else
  {
    sub_301A08();
    (*(v20 + 8))(v15, v19);
  }

  sub_EB00(v18, v12, &qword_40A160);
  if (v21(v12, 1, v19) == 1)
  {
    sub_EB68(v12, &qword_40A160);
  }

  else
  {
    sub_3019F8();
    (*(v20 + 8))(v12, v19);
  }

  v22 = v35;
  v23 = v33;
  sub_308C08();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v37[3] = v22;
    v37[4] = sub_23ECD0(&qword_40A168, &type metadata accessor for ShareSheetAction);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v37);
    v27 = v34;
    (*(v34 + 16))(boxed_opaque_existential_0Tm, v23, v22);
    swift_beginAccess();
    v28 = swift_unknownObjectWeakLoadStrong();
    v29 = v28;
    if (v28)
    {
      v28 = type metadata accessor for ExpandableTextView();
    }

    else
    {
      v36[1] = 0;
      v36[2] = 0;
    }

    v36[0] = v29;
    v36[3] = v28;
    v31 = swift_unknownObjectWeakLoadStrong();
    type metadata accessor for ExpandableTextView();
    sub_23ECD0(&unk_40A170, type metadata accessor for ExpandableTextView);
    sub_3025C8();

    (*(v27 + 8))(v23, v22);
    sub_EB68(v18, &qword_40A160);
    sub_EB68(v36, &unk_3FBB70);
    return __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    (*(v34 + 8))(v23, v22);
    return sub_EB68(v18, &qword_40A160);
  }
}

id sub_23C95C(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t (*a6)(id, id))
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a1;
  v14 = a6(v11, v12);

  return v14;
}

uint64_t ExpandableTextView.bind(to:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_objectGraph;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_23CB48()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_textView;
  type metadata accessor for DynamicTypeTextView();
  if (qword_3FAC78 != -1)
  {
    swift_once();
  }

  v12[2] = xmmword_40A080;
  v12[3] = xmmword_40A090;
  v13[0] = xmmword_40A0A0;
  *(v13 + 10) = *(&xmmword_40A0A0 + 10);
  v12[0] = xmmword_40A060;
  v12[1] = xmmword_40A070;
  v10[2] = xmmword_40A080;
  v10[3] = xmmword_40A090;
  v11[0] = xmmword_40A0A0;
  *(v11 + 10) = *(&xmmword_40A0A0 + 10);
  v10[0] = xmmword_40A060;
  v10[1] = xmmword_40A070;
  sub_EB00(v12, v9, &qword_3FFD68);
  *(v0 + v2) = sub_2366CC(v10);
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_moreButton;
  sub_302AD8();
  v4 = sub_302AC8();
  v5 = sub_289928(v4);

  *(v1 + v3) = v5;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView____lazy_storage___moreButtonLeadingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView____lazy_storage___moreButtonTrailingConstraint) = 0;
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_shareSheetContentSource;
  v7 = sub_30A5E8();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_hasMoreButton) = 1;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_collapsedNumberOfLines) = 3;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_isCollapsed) = 1;
  v8 = (v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_moreTapHandler);
  *v8 = 0;
  v8[1] = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_objectGraph) = 0;
  sub_30D648();
  __break(1u);
}

BOOL sub_23CD2C(unint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v10 = a6 - (a3 + a5);
  if (a1 >> 62)
  {
    v45 = (a1 & 0x3FFFFFFFFFFFFFFFLL);
    v46 = sub_304238();

    v47 = [objc_allocWithZone(NSStringDrawingContext) init];
    [v46 mutableCopy];
    sub_30D448();
    swift_unknownObjectRelease();
    sub_124C4(0, &qword_404AB8);
    if (swift_dynamicCast())
    {
      v48 = qword_3FAC78;
      v49 = v80;
      if (v48 != -1)
      {
        swift_once();
      }

      v77 = xmmword_40A080;
      v78 = xmmword_40A090;
      v79[0] = xmmword_40A0A0;
      *(v79 + 10) = *(&xmmword_40A0A0 + 10);
      v75 = xmmword_40A060;
      v76 = xmmword_40A070;
      v50 = [objc_opt_self() system];
      v51 = [v50 preferredContentSizeCategory];

      v52 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v51];
      v53 = sub_2DAA3C(&v75, v52);
      v54 = [objc_opt_self() fontWithDescriptor:v53 size:0.0];

      v55 = [v49 fullRange];
      [v49 addAttribute:NSFontAttributeName value:v54 range:{v55, v56}];

      v28 = v49;
      v57 = v47;
      if ([v28 length] <= 0)
      {
        v59 = sub_2D6CB0(_swiftEmptyArrayStorage);
      }

      else
      {
        v58 = [v28 attributesAtIndex:0 effectiveRange:0];
        type metadata accessor for Key(0);
        sub_23ECD0(&qword_3FB410, type metadata accessor for Key);
        v59 = sub_30BF98();
      }

      v66 = [v28 string];
      v67 = sub_30C0D8();
      v69 = v68;

      sub_268E60(v10, 1.79769313e308, v67, v69, 1uLL, v59, v47);

      if (qword_3FAE40 != -1)
      {
        swift_once();
      }

      sub_303D28();

      if (v77)
      {
        v28 = v28;
        [v28 boundingRectWithSize:1 options:v57 context:{v10, 1.79769313e308}];
        v62 = v70;
        v63 = v71;
        v64 = v72;
        v65 = v73;
        *&v75 = v70;
        *(&v75 + 1) = v71;
        *&v76 = v72;
        *(&v76 + 1) = v73;
        LOBYTE(v77) = 0;

        sub_303D38();
      }

      else
      {
        v65 = *(&v76 + 1);
        v64 = *&v76;
        v63 = *(&v75 + 1);
        v62 = *&v75;
      }
    }

    else
    {
      v61 = v47;
      v28 = 0;
      v62 = 0.0;
      v63 = 0.0;
      v64 = 0.0;
      v65 = 0.0;
    }

    v82.origin.x = v62;
    v82.origin.y = v63;
    v82.size.width = v64;
    v82.size.height = v65;
    Height = CGRectGetHeight(v82);
  }

  else
  {
    v11 = sub_304278();
    v13 = v12;
    v14 = [objc_allocWithZone(NSStringDrawingContext) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FFD70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_315420;
    *(inited + 32) = NSFontAttributeName;
    v16 = qword_3FAC78;
    v17 = NSFontAttributeName;
    if (v16 != -1)
    {
      swift_once();
    }

    v77 = xmmword_40A080;
    v78 = xmmword_40A090;
    v79[0] = xmmword_40A0A0;
    *(v79 + 10) = *(&xmmword_40A0A0 + 10);
    v75 = xmmword_40A060;
    v76 = xmmword_40A070;
    v18 = [objc_opt_self() system];
    v19 = [v18 preferredContentSizeCategory];

    v20 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v19];
    v21 = sub_2DAA3C(&v75, v20);
    v22 = [objc_opt_self() fontWithDescriptor:v21 size:0.0];

    *(inited + 40) = v22;
    *(inited + 48) = NSParagraphStyleAttributeName;
    v23 = qword_3FAE78;
    v24 = NSParagraphStyleAttributeName;
    if (v23 != -1)
    {
      swift_once();
    }

    v25 = qword_42AB90;
    *(inited + 56) = qword_42AB90;
    v26 = v25;
    v27 = sub_2D6EEC(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40A140);
    swift_arrayDestroy();
    v28 = v14;
    v29 = sub_2D618C(v27);
    v30 = sub_268E60(v10, 1.79769313e308, v11, v13, 1uLL, v29, v14);

    if (qword_3FAE40 != -1)
    {
      swift_once();
    }

    v81 = v30;

    sub_303D28();

    if (v77)
    {
      v31 = sub_30C098();
      sub_2D618C(v27);
      type metadata accessor for Key(0);
      sub_23ECD0(&qword_3FB410, type metadata accessor for Key);
      isa = sub_30BF88().super.isa;

      [v31 boundingRectWithSize:1 options:isa attributes:v28 context:{v10, 1.79769313e308}];
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;

      *&v75 = v34;
      *(&v75 + 1) = v36;
      *&v76 = v38;
      *(&v76 + 1) = v40;
      LOBYTE(v77) = 0;
      v81 = v30;

      sub_303D38();

      v41 = v34;
      v42 = v36;
      v43 = v38;
      v44 = v40;
    }

    else
    {
      v44 = *(&v76 + 1);
      v43 = v76;
      v42 = *(&v75 + 1);
      v41 = v75;
    }

    Height = CGRectGetHeight(*&v41);
  }

  return Height + 0.0 + a2 + a4 > a7;
}

void *sub_23D5D8(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40A150);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_30C628();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_301CB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v23 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  sub_30C638();
  if ((*(v7 + 88))(v9, v6) == enum case for UITextItem.Content.link(_:))
  {
    (*(v7 + 96))(v9, v6);
    v16 = *(v11 + 32);
    v16(v15, v9, v10);
    sub_23BF88(v15, v5);
    v17 = sub_30ADA8();
    if ((*(*(v17 - 8) + 48))(v5, 1, v17) == 1)
    {
      sub_EB68(v5, &qword_40A150);
      sub_124C4(0, &qword_408080);
      v18 = v23;
      (*(v11 + 16))(v23, v15, v10);
      v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
      v20 = swift_allocObject();
      v16((v20 + v19), v18, v10);
      a2 = sub_30D0C8();
      (*(v11 + 8))(v15, v10);
    }

    else
    {
      (*(v11 + 8))(v15, v10);
      sub_EB68(v5, &qword_40A150);
      return 0;
    }
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    v21 = a2;
  }

  return a2;
}

uint64_t sub_23D99C(uint64_t a1, void *a2)
{
  v91 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40A148);
  __chkstk_darwin(v2 - 8);
  v93 = &v69 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40A130);
  __chkstk_darwin(v4 - 8);
  v88 = &v69 - v5;
  v87 = sub_30A5E8();
  v89 = *(v87 - 1);
  __chkstk_darwin(v87);
  v82 = v6;
  v83 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v84 = &v69 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40A150);
  __chkstk_darwin(v9 - 8);
  v11 = &v69 - v10;
  v12 = sub_30ADA8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v85 = v14;
  v86 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v90 = &v69 - v16;
  v17 = sub_30C628();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_301CB8();
  v22 = *(v21 - 1);
  __chkstk_darwin(v21);
  v80 = v23;
  v81 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v69 - v25;
  sub_30C638();
  if ((*(v18 + 88))(v20, v17) != enum case for UITextItem.Content.link(_:))
  {
    (*(v18 + 8))(v20, v17);
    goto LABEL_5;
  }

  (*(v18 + 96))(v20, v17);
  v27 = *(v22 + 32);
  v27(v26, v20, v21);
  sub_23BF88(v26, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    (*(v22 + 8))(v26, v21);
    sub_EB68(v11, &qword_40A150);
LABEL_5:
    sub_124C4(0, &qword_40A158);
    v28 = enum case for UITextItemMenuConfiguration.Preview.default(_:);
    v29 = sub_30CBC8();
    v30 = *(v29 - 8);
    v31 = v93;
    (*(v30 + 104))(v93, v28, v29);
    (*(v30 + 56))(v31, 0, 1, v29);
    v32 = v91;
    return sub_30CBD8();
  }

  v71 = v27;
  v72 = v22 + 32;
  v78 = v26;
  v79 = v22;
  v91 = v21;
  v76 = *(v13 + 32);
  v34 = v90;
  v76(v90, v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_31BF90;
  v36 = sub_124C4(0, &qword_408080);
  v96._countAndFlagsBits = 2036427856;
  v96._object = 0xE400000000000000;
  v99._countAndFlagsBits = 0;
  v99._object = 0xE000000000000000;
  v75 = sub_303868(v96, v99);
  v74 = v37;
  v38 = sub_30C098();
  v70 = objc_opt_self();
  v73 = [v70 systemImageNamed:v38];

  v39 = swift_allocObject();
  v40 = v92;
  swift_unknownObjectWeakInit();
  v77 = v13;
  v42 = v13 + 16;
  v41 = *(v13 + 16);
  v43 = v86;
  v41(v86, v34, v12);
  v44 = (*(v42 + 64) + 24) & ~*(v42 + 64);
  v45 = swift_allocObject();
  *(v45 + 16) = v39;
  v86 = v12;
  v76((v45 + v44), v43, v12);
  v85 = v36;
  *(v35 + 32) = sub_30D0C8();
  v94 = v35;
  v46 = OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_shareSheetContentSource;
  swift_beginAccess();
  v47 = v40 + v46;
  v48 = v88;
  sub_EB00(v47, v88, &unk_40A130);
  v49 = v89;
  if ((*(v89 + 48))(v48, 1, v87) == 1)
  {
    sub_EB68(v48, &unk_40A130);
  }

  else
  {
    v50 = v84;
    sub_23E818(v48, v84);
    v97._countAndFlagsBits = 0xA680E26572616853;
    v100._countAndFlagsBits = 0x5255206572616853;
    v100._object = 0xAC000000A680E24CLL;
    v97._object = 0xA800000000000000;
    sub_303868(v97, v100);
    v88 = v51;
    v52 = sub_30C098();
    v87 = [v70 systemImageNamed:v52];

    v53 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v54 = v79 + 16;
    v55 = v81;
    v56 = v91;
    (*(v79 + 16))(v81, v78, v91);
    v57 = v83;
    sub_23E87C(v50, v83);
    v58 = (*(v54 + 64) + 16) & ~*(v54 + 64);
    v59 = (v80 + *(v49 + 80) + v58) & ~*(v49 + 80);
    v60 = (v82 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = swift_allocObject();
    v71(v61 + v58, v55, v56);
    sub_23E818(v57, v61 + v59);
    *(v61 + v60) = v53;
    sub_30D0C8();
    sub_30C348();
    if (*(&dword_10 + (v94 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v94 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_30C378();
    }

    sub_30C3C8();
    sub_23EB7C(v50);
    v35 = v94;
  }

  sub_124C4(0, &qword_40A158);
  sub_124C4(0, &qword_408070);
  v98._countAndFlagsBits = 0;
  v98._object = 0xE000000000000000;
  v101.value._countAndFlagsBits = 0;
  v101.value._object = 0;
  v95.value.super.isa = 0;
  v95.is_nil = 0;
  v62.value = 0;
  sub_30CE58(v98, v101, v95, v62, 0xFFFFFFFFFFFFFFFFLL, v35, v68);
  v63 = enum case for UITextItemMenuConfiguration.Preview.default(_:);
  v64 = sub_30CBC8();
  v65 = *(v64 - 8);
  v66 = v93;
  (*(v65 + 104))(v93, v63, v64);
  (*(v65 + 56))(v66, 0, 1, v64);
  v67 = sub_30CBD8();
  (*(v77 + 8))(v90, v86);
  (*(v79 + 8))(v78, v91);
  return v67;
}

uint64_t type metadata accessor for ExpandableTextView()
{
  result = qword_40A118;
  if (!qword_40A118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23E4F8()
{
  sub_23E5C8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23E5C8()
{
  if (!qword_40A128)
  {
    sub_30A5E8();
    v0 = sub_30D3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_40A128);
    }
  }
}

uint64_t sub_23E620(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40A130);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_23E690(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }
}

uint64_t sub_23E6A8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_23E6E0()
{
  v1 = sub_30ADA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_23E7A4(uint64_t a1)
{
  v3 = *(sub_30ADA8() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_23C2B4(a1, v4, v5);
}

uint64_t sub_23E818(uint64_t a1, uint64_t a2)
{
  v4 = sub_30A5E8();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E87C(uint64_t a1, uint64_t a2)
{
  v4 = sub_30A5E8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8E0()
{
  v1 = sub_301CB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(sub_30A5E8() - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v10 = sub_307CF8();
    (*(*(v10 - 8) + 8))(v0 + v8, v10);
  }

  return _swift_deallocObject(v0, ((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v7 | 7);
}

uint64_t sub_23EA7C(uint64_t a1)
{
  v3 = *(sub_301CB8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_30A5E8() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_23C460(a1, v1 + v4, v1 + v7, v8);
}

uint64_t sub_23EB7C(uint64_t a1)
{
  v2 = sub_30A5E8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23EBD8()
{
  v1 = sub_301CB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_23EC60()
{
  sub_301CB8();

  sub_23C184();
}

uint64_t sub_23ECD0(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_23ED24(__int128 *a1, void *a2)
{
  v4 = a1[3];
  v13 = a1[2];
  v14 = v4;
  v15[0] = a1[4];
  *(v15 + 10) = *(a1 + 74);
  v5 = a1[1];
  v11 = *a1;
  v12 = v5;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23FadeInDynamicTypeButton_maximumFadeWidth] = 0x4059000000000000;
  v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23FadeInDynamicTypeButton_fadeInPosition] = 0;
  v6 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23FadeInDynamicTypeButton_touchInsets];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23FadeInDynamicTypeButton_fadeLayer] = sub_21D810(a2);
  v16.receiver = v2;
  v16.super_class = type metadata accessor for FadeInDynamicTypeButton();
  v7 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0, v11, v12, v13, v14, v15[0], *&v15[1], *(&v15[1] + 1));
  sub_2351A0(&v11);
  [v7 setBackgroundColor:a2];
  v8 = [v7 layer];
  [v8 setMasksToBounds:0];

  v9 = [v7 layer];
  [v9 addSublayer:*&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews23FadeInDynamicTypeButton_fadeLayer]];

  return v7;
}

void sub_23F034()
{
  v1 = [v0 backgroundColor];
  if (v1)
  {
    v15 = v1;
    v2 = objc_opt_self();
    [v2 begin];
    [v2 setValue:kCFBooleanTrue forKey:kCATransactionDisableActions];
    v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews23FadeInDynamicTypeButton_fadeLayer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC498);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_315420;
    v5 = [v15 colorWithAlphaComponent:0.0];
    v6 = [v5 CGColor];

    type metadata accessor for CGColor(0);
    v8 = v7;
    *(v4 + 56) = v7;
    *(v4 + 32) = v6;
    v9 = [v15 CGColor];
    *(v4 + 88) = v8;
    *(v4 + 64) = v9;
    isa = sub_30C358().super.isa;

    [v3 setColors:isa];

    if (v0[OBJC_IVAR____TtC23ShelfKitCollectionViews23FadeInDynamicTypeButton_fadeInPosition] == 1)
    {
      v11 = [v3 colors];
      if (v11)
      {
        v12 = v11;
        v13 = sub_30C368();

        sub_1A663C();
        if (v13)
        {
          v14.super.isa = sub_30C358().super.isa;
        }

        else
        {
          v14.super.isa = 0;
        }

        [v3 setColors:{v14.super.isa, v15}];
      }

      else
      {
        [v3 setColors:0];
      }
    }

    [v2 commit];
  }
}

id sub_23F294()
{
  v26.receiver = v0;
  v26.super_class = type metadata accessor for FadeInDynamicTypeButton();
  result = objc_msgSendSuper2(&v26, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase + 48];
  v29 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase + 32];
  v30 = v2;
  *v31 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase + 64];
  v3 = *v31;
  *&v31[10] = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase + 74];
  v4 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase + 16];
  v27 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase];
  v28 = v4;
  v34 = v29;
  v35 = v2;
  v36 = v3;
  v37 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase + 80];
  v32 = v27;
  v33 = v4;
  v5 = *&v31[24];
  if (HIBYTE(*&v31[24]) <= 0xFEu)
  {
    v6 = objc_opt_self();
    v24[2] = v29;
    v24[3] = v30;
    v25[0] = *v31;
    *(v25 + 10) = *&v31[10];
    v24[0] = v27;
    v24[1] = v28;
    sub_8FC54(v24, v21);
    v7 = [v6 system];
    v8 = [v7 preferredContentSizeCategory];

    v9 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v8];
    v21[2] = v34;
    v21[3] = v35;
    v21[4] = v36;
    v22 = v37;
    v21[0] = v32;
    v21[1] = v33;
    v23 = v5;
    v10 = sub_2DAA3C(v21, v9);
    v11 = [objc_opt_self() fontWithDescriptor:v10 size:0.0];

    [v11 lineHeight];
    v13 = v12;

    v14 = fmin(v13 + v13, 100.0);
    LOBYTE(v10) = v0[OBJC_IVAR____TtC23ShelfKitCollectionViews23FadeInDynamicTypeButton_fadeInPosition];
    [v0 bounds];
    if (v10)
    {
      MaxX = CGRectGetMaxX(*&v15);
    }

    else
    {
      MaxX = CGRectGetMinX(*&v15) - v14;
    }

    [v0 bounds];
    MinY = CGRectGetMinY(v38);
    [v0 bounds];
    [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews23FadeInDynamicTypeButton_fadeLayer] setFrame:{MaxX, MinY, v14, CGRectGetHeight(v39)}];
    return sub_143A1C(&v27);
  }

  return result;
}

id sub_23F664()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FadeInDynamicTypeButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_23F6E0()
{
  result = qword_40A1D0;
  if (!qword_40A1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40A1D0);
  }

  return result;
}

char *sub_23F734()
{
  type metadata accessor for DynamicTypeButton();
  if (qword_3FAD08 != -1)
  {
    swift_once();
  }

  v12[2] = xmmword_429D90;
  v12[3] = unk_429DA0;
  v13[0] = xmmword_429DB0;
  *(v13 + 10) = *(&xmmword_429DB0 + 10);
  v12[0] = xmmword_429D70;
  v12[1] = unk_429D80;
  v10[2] = xmmword_429D90;
  v10[3] = unk_429DA0;
  v11[0] = xmmword_429DB0;
  *(v11 + 10) = *(&xmmword_429DB0 + 10);
  v10[0] = xmmword_429D70;
  v10[1] = unk_429D80;
  sub_8FC54(v12, v9);
  v0 = sub_2353F0(v10);
  v1 = [objc_opt_self() mainBundle];
  v8._countAndFlagsBits = 0x8000000000341300;
  v14._object = 0x80000000003412E0;
  v14._countAndFlagsBits = 0xD00000000000001DLL;
  v15.value._countAndFlagsBits = 0;
  v15.value._object = 0;
  v2.super.isa = v1;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_301AB8(v14, v15, v2, v16, v8);

  v3 = sub_30C098();

  [v0 setTitle:v3 forState:0];

  v4 = [objc_opt_self() labelColor];
  [v0 setTitleColor:v4 forState:0];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = v0;
  v6 = sub_30C098();
  [v5 setAccessibilityIdentifier:v6];

  return v5;
}

char *sub_23F944(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_fadeLength] = 0x4059000000000000;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_safetyPadding] = 0x4010000000000000;
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_moreButton;
  *&v5[v10] = sub_23F734();
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_descriptionLabel;
  v12 = [objc_allocWithZone(UILabel) init];
  [v12 setNumberOfLines:3];
  sub_124C4(0, &qword_408100);
  v13 = sub_30CDB8();
  [v12 setFont:v13];

  [v12 setLineBreakMode:4];
  *&v5[v11] = v12;
  v14 = OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_descriptionMask;
  type metadata accessor for CornerFadeView();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_fadeLength;
  swift_beginAccess();
  *&v15[v16] = 0x4059000000000000;
  [v15 setNeedsDisplay];
  *&v5[v14] = v15;
  v34.receiver = v5;
  v34.super_class = type metadata accessor for FadingDescriptionLabel();
  v17 = objc_msgSendSuper2(&v34, "initWithFrame:", a1, a2, a3, a4);
  v18 = OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_descriptionLabel;
  v19 = *&v17[OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_descriptionLabel];
  v20 = *&v17[OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_descriptionMask];
  v21 = v17;
  [v19 setMaskView:v20];
  [v21 addSubview:*&v17[v18]];
  v22 = OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_moreButton;
  [v21 addSubview:*&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_moreButton]];
  [v21 bringSubviewToFront:*&v21[v22]];
  [*&v21[v22] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v17[v18] setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = [*&v21[v22] lastBaselineAnchor];
  v24 = [*&v17[v18] lastBaselineAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  sub_30C348();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  v26 = [*&v21[v22] trailingAnchor];
  v27 = [*&v17[v18] trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  sub_30C348();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  v29 = *&v17[v18];
  v30 = sub_30CEA8();

  sub_14A360(v30);
  v31 = objc_opt_self();
  sub_124C4(0, &qword_403000);
  isa = sub_30C358().super.isa;
  [v31 activateConstraints:isa];

  return v21;
}

id sub_23FDF0()
{
  v1 = v0;
  v47.receiver = v0;
  v47.super_class = type metadata accessor for FadingDescriptionLabel();
  objc_msgSendSuper2(&v47, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_descriptionMask];
  v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_descriptionLabel];
  [v3 bounds];
  [v2 setFrame:?];
  v4 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_moreButton];
  [v4 setHidden:(sub_2D9078() & 1) == 0];
  if ((sub_2D9078() & 1) == 0)
  {
    v46 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_safetyCutoutSize];
    swift_beginAccess();
    *v46 = 0;
    *(v46 + 1) = 0;
    return [v2 setNeedsDisplay];
  }

  [v4 bounds];
  [v4 convertRect:v3 toCoordinateSpace:?];
  v6 = v5;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_315420;
  *(inited + 32) = v6;
  *(inited + 40) = v8;
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_alignment;
  swift_beginAccess();
  LODWORD(v10) = v2[v10];
  [v2 bounds];
  v15 = v11;
  if (v10 == 1)
  {
    v16 = v11;
    v17 = v12;
    v18 = v13;
    v19 = v14;
    MaxX = CGRectGetMaxX(*&v11);
    v14 = v19;
    v13 = v18;
    v12 = v17;
    v15 = MaxX;
    v11 = v16;
  }

  MaxY = CGRectGetMaxY(*&v11);
  *(inited + 48) = v15;
  *(inited + 56) = MaxY;
  v22 = _sSo6CGRectV23ShelfKitCollectionViewsE10containing6pointsABSo7CGPointVd_tFZ_0(inited);
  v24 = v23;
  v26 = v25;
  v28 = v27;
  swift_setDeallocating();
  [v3 lastBaselineMaxY];
  v30 = v29;
  result = [v3 font];
  if (result)
  {
    v32 = result;
    [result descender];
    v34 = v33;

    result = [v3 font];
    if (result)
    {
      v35 = result;
      v36 = v30 - v34;
      [result lineHeight];
      v38 = v37;

      v39 = ceil(v36 - v38);
      v48.origin.x = v22;
      v48.origin.y = v24;
      v48.size.width = v26;
      v48.size.height = v28;
      MinY = CGRectGetMinY(v48);
      if (v39 <= MinY)
      {
        v39 = MinY;
      }

      v49.origin.x = v22;
      v49.origin.y = v24;
      v49.size.width = v26;
      v49.size.height = v28;
      v41 = CGRectGetMinY(v49);
      v42 = UIEdgeInsetsInsetRect_3(v22, v24, v26, v28, v39 - v41, 0.0, 0.0, 0.0) + *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_safetyPadding];
      v44 = v43 + 0.0;
      v45 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_safetyCutoutSize];
      swift_beginAccess();
      *v45 = v42;
      v45[1] = v44;
      return [v2 setNeedsDisplay];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_2401F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FadingDescriptionLabel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_2402BC()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_fadeLength) = 0x4059000000000000;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_safetyPadding) = 0x4010000000000000;
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_moreButton;
  *(v1 + v2) = sub_23F734();
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_descriptionLabel;
  v4 = [objc_allocWithZone(UILabel) init];
  [v4 setNumberOfLines:3];
  sub_124C4(0, &qword_408100);
  v5 = sub_30CDB8();
  [v4 setFont:v5];

  [v4 setLineBreakMode:4];
  *(v1 + v3) = v4;
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_descriptionMask;
  type metadata accessor for CornerFadeView();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_fadeLength;
  swift_beginAccess();
  *&v7[v8] = 0x4059000000000000;
  [v7 setNeedsDisplay];
  *(v1 + v6) = v7;
  sub_30D648();
  __break(1u);
}

double sub_240444(void *a1, uint64_t a2, char a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  MinY = CGRectGetMinY(*&a4);
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = (a2 + 32);
    v13 = 0.0;
    do
    {
      *&v42[108] = *(v12 + 108);
      v25 = v12[5];
      *&v42[64] = v12[4];
      *&v42[80] = v25;
      *&v42[96] = v12[6];
      v26 = v12[1];
      *v42 = *v12;
      *&v42[16] = v26;
      v27 = v12[3];
      *&v42[32] = v12[2];
      *&v42[48] = v27;
      v28 = v42[122];
      v29 = *v42;
      sub_238F10(v42, v40);
      [v29 sizeThatFits:{a6, a7}];
      if (v28 != 1 || (v30 >= COERCE_DOUBLE(1) ? (v32 = v31 < COERCE_DOUBLE(1)) : (v32 = 1), !v32))
      {
        v14 = v31;
        v37 = v13;
        [v29 lastBaselineFromBottom];
        v16 = v15;
        sub_9004C(&v42[8], v40);
        if (qword_3FAC38 != -1)
        {
          swift_once();
        }

        v17 = sub_30D6F8();
        v18 = __swift_project_value_buffer(v17, qword_4295D8);
        v40[4] = *&v42[72];
        v40[5] = *&v42[88];
        v40[6] = *&v42[104];
        v41 = *&v42[120];
        v40[0] = *&v42[8];
        v40[1] = *&v42[24];
        v40[2] = *&v42[40];
        v40[3] = *&v42[56];
        v19 = [a1 traitCollection];
        sub_231F6C(v19, v18, a3 & 1);
        v21 = v20;

        sub_900A8(&v42[8]);
        v43.origin.x = a4;
        v43.origin.y = a5;
        v43.size.width = a6;
        v43.size.height = a7;
        MinX = CGRectGetMinX(v43);
        v36 = v16;
        v23 = MinY - v37 + v21 - (v14 - v16);
        v44.origin.x = a4;
        v44.origin.y = a5;
        v44.size.width = a6;
        v44.size.height = a7;
        Width = CGRectGetWidth(v44);
        [v29 setFrame:{MinX, v23, Width, v14}];
        v45.origin.x = MinX;
        v45.origin.y = v23;
        v45.size.width = Width;
        v45.size.height = v14;
        MinY = CGRectGetMaxY(v45);
        v13 = v36;
      }

      sub_238F6C(v42);
      v12 += 8;
      --v11;
    }

    while (v11);
  }

  else
  {
    v13 = 0.0;
  }

  return MinY - v13;
}

uint64_t sub_2406D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_240720(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy124_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_24079C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 124))
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

uint64_t sub_2407E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 124) = 1;
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

    *(result + 124) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t FlowController.change(tab:popToRoot:userInitiated:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_30B9A8();
  v10 = sub_30B978();
  (*(a5 + 40))(a1, 0, a2, a3, 0, v10, a4, a5);
}

int *UIResponder.nearestFlowController.getter()
{
  v1 = v0;
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (!v2 || !v0 || (v3 = v2, ObjectType = swift_getObjectType(), v5 = *(v3 + 16), v6 = v0, v7 = v5(ObjectType, v3), v6, !v7))
  {
    v8 = [v1 nextResponder];
    if (v8)
    {
      v9 = v8;
      v7 = UIResponder.nearestFlowController.getter();
    }

    else
    {
      swift_beginAccess();
      v7 = off_40D118;
      if (off_40D118)
      {
      }
    }
  }

  return v7;
}

int *UIResponder.nearestFlowController(differentFrom:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_240CC4(a1);
}

int *sub_240B20(void *a1)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v14 = v2;
  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (v3 && v1)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 16);

    v7 = v1;
    v8 = v6(ObjectType, v4);
    if (v8)
    {
      v9 = v8;
      if (!sub_184500(v8, v2))
      {

        goto LABEL_16;
      }

      sub_1926F0(v13, v9);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
  }

  v10 = [v1 nextResponder];
  if (v10)
  {
    v11 = v10;
    v9 = sub_240B20(v14);

LABEL_16:

    return v9;
  }

  swift_beginAccess();
  v9 = off_40D118;
  if (off_40D118)
  {
  }

  return v9;
}

int *sub_240CC4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40A230);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_315430;
  *(inited + 32) = a1;
  v3 = sub_24543C(inited);
  swift_setDeallocating();
  v4 = sub_240B20(v3);

  return v4;
}

uint64_t sub_240D6C()
{
  v1 = v0;
  v2 = sub_308778();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v10 = __chkstk_darwin(v9);
  v12 = &v32 - v11;
  v13 = *(v3 + 16);
  v13(&v32 - v11, v1, v2, v10);
  v14 = (*(v3 + 88))(v12, v2);
  if (v14 == enum case for FlowDestination.searchResults(_:))
  {
    (v13)(v5, v12, v2);
    (*(v3 + 96))(v5, v2);
    sub_229B18(v5);
    v15 = 12;
  }

  else if (v14 == enum case for FlowDestination.page(_:) || v14 == enum case for FlowDestination.topLevelPage(_:))
  {
    (v13)(v5, v12, v2);
    (*(v3 + 96))(v5, v2);

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408E10);
    sub_229B18(v5 + *(v16 + 48));
    v15 = 9;
  }

  else if (v14 == enum case for FlowDestination.modernTopCharts(_:))
  {
    (v13)(v5, v12, v2);
    (*(v3 + 96))(v5, v2);

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408E10);
    sub_229B18(v5 + *(v18 + 48));
    v15 = 6;
  }

  else
  {
    if (v14 == enum case for FlowDestination.episodeList(_:))
    {
      (v13)(v8, v12, v2);
      (*(v3 + 96))(v8, v2);
      v19 = *v8;
      v20 = *(v8 + 1);
      v21 = *(v8 + 2);
      v22 = *(v8 + 3);
      v23 = *(v8 + 4);
      v24 = *(v8 + 5);
      v25 = *(v8 + 6);
      v26 = *(v8 + 7);
      if (v8[64] == 10)
      {
        v27 = v23 | v24 | v25;
        if (!(v21 | v20 | v19 | v22 | v27 | v26))
        {
          v15 = 4;
          goto LABEL_6;
        }

        v28 = v21 | v20 | v22 | v27 | v26;
        if (v19 == 5 && v28 == 0)
        {
          v15 = 16;
          goto LABEL_6;
        }

        if (v19 == 6 && v28 == 0)
        {
          v15 = 15;
          goto LABEL_6;
        }
      }

      sub_218584(v19, v20, v21, v22, v23, v24, v25, v26, v8[64]);
    }

    else
    {
      if (v14 == enum case for FlowDestination.station(_:))
      {
        (v13)(v5, v12, v2);
        (*(v3 + 96))(v5, v2);
        v15 = *v5;
        goto LABEL_6;
      }

      if (v14 == enum case for FlowDestination.listen(_:))
      {
        v15 = 8;
        goto LABEL_6;
      }

      if (v14 == enum case for FlowDestination.library(_:) || v14 == enum case for FlowDestination.libraryTab(_:))
      {
        v15 = 7;
        goto LABEL_6;
      }

      if (v14 == enum case for FlowDestination.channels(_:))
      {
        v15 = 2;
        goto LABEL_6;
      }

      if (v14 == enum case for FlowDestination.recentlyAdded(_:))
      {
        goto LABEL_38;
      }

      if (v14 == enum case for FlowDestination.recentlyUpdated(_:))
      {
        v15 = 17;
        goto LABEL_6;
      }

      if (v14 == enum case for FlowDestination.shows(_:))
      {
LABEL_38:
        v15 = 1;
        goto LABEL_6;
      }

      if (v14 == enum case for FlowDestination.stationTab(_:))
      {
        v15 = 0;
        goto LABEL_6;
      }
    }

    v15 = 19;
  }

LABEL_6:
  (*(v3 + 8))(v12, v2);
  return v15;
}

uint64_t FlowDestination.init(testUrl:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_301C98();
  if (!v5)
  {
    goto LABEL_10;
  }

  if (v4 == 0x7374736163646F70 && v5 == 0xEC0000007470702DLL)
  {

    goto LABEL_6;
  }

  v6 = sub_30D728();

  if ((v6 & 1) == 0)
  {
LABEL_10:
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_408E80) + 48);
    v10 = sub_301CB8();
    (*(*(v10 - 8) + 32))(a2, a1, v10);
    v11 = enum case for FlowOrigin.inapp(_:);
    v12 = sub_307728();
    (*(*(v12 - 8) + 104))(a2 + v9, v11, v12);
    v13 = &enum case for FlowDestination.unknown(_:);
    goto LABEL_22;
  }

LABEL_6:
  v7 = sub_301C68();
  if (!v8)
  {
    goto LABEL_25;
  }

  if (v7 == 0x7972617262696CLL && v8 == 0xE700000000000000)
  {
  }

  else
  {
    v14 = sub_30D728();

    if ((v14 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v15 = sub_301BF8();
  v17 = v16;
  if (sub_30C208() < 1)
  {
    goto LABEL_25;
  }

  if (v15 == 0x6B72616D6B6F6F62 && v17 == 0xE900000000000073 || (sub_30D728() & 1) != 0)
  {
    v18 = sub_301CB8();
    (*(*(v18 - 8) + 8))(a1, v18);

    *a2 = 5;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0;
    *(a2 + 64) = 10;
    v13 = &enum case for FlowDestination.episodeList(_:);
    goto LABEL_22;
  }

  if (v15 != 0x73776F6873 || v17 != 0xE500000000000000)
  {
    v19 = sub_30D728();

    if (v19)
    {
      goto LABEL_21;
    }

    while (1)
    {
LABEL_25:
      sub_30D558(20);

      v26._countAndFlagsBits = sub_301C88();
      sub_30C238(v26);

      sub_30D648();
      __break(1u);
    }
  }

LABEL_21:
  v20 = sub_301CB8();
  (*(*(v20 - 8) + 8))(a1, v20);
  v13 = &enum case for FlowDestination.shows(_:);
LABEL_22:
  v21 = *v13;
  v22 = sub_308778();
  v23 = *(*(v22 - 8) + 104);

  return v23(a2, v21, v22);
}

unint64_t sub_241710(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v6 = sub_30D668();
  }

  else
  {
    v6 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
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
      v8 = sub_30D578();
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
    sub_124C4(0, a3);
    v10 = sub_30D098();

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

uint64_t NavigationFlowController.__allocating_init(navigationController:asPartOf:)(void *a1, uint64_t a2)
{
  *(swift_allocObject() + OBJC_IVAR____TtC23ShelfKitCollectionViews24NavigationFlowController_pushDisabledForTests) = 0;
  swift_unknownObjectUnownedInit();
  v4 = sub_2180E0(a1, a2);

  return v4;
}

uint64_t NavigationFlowController.init(navigationController:asPartOf:)(void *a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews24NavigationFlowController_pushDisabledForTests) = 0;
  swift_unknownObjectUnownedInit();
  v5 = sub_2180E0(a1, a2);

  return v5;
}

uint64_t sub_241904(uint64_t a1)
{
  v2 = sub_30A4E8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FlowPresentationHints();
  if (!*(a1 + *(v6 + 20)))
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v9 = [Strong viewControllers];

    sub_124C4(0, &qword_3FBE30);
    v10 = sub_30C368();

    if (v10 >> 62)
    {
      v17 = sub_30D668();

      if (!v17)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));

      if (!v11)
      {
        goto LABEL_7;
      }
    }

    v12 = *(v3 + 104);
    v12(v5, enum case for FlowPresentationContext.replace(_:), v2);
    sub_245C8C(&unk_40A520, 255, &type metadata accessor for FlowPresentationContext);
    v13 = sub_30C018();
    v14 = *(v3 + 8);
    v14(v5, v2);
    if ((v13 & 1) == 0)
    {
      v12(v5, enum case for FlowPresentationContext.replaceTopView(_:), v2);
      v16 = sub_30C018();
      v14(v5, v2);
      v7 = v16 ^ 1;
      return v7 & 1;
    }

    goto LABEL_7;
  }

  if (*(a1 + *(v6 + 20)) == 1)
  {
LABEL_7:
    v7 = 0;
    return v7 & 1;
  }

  v7 = 1;
  return v7 & 1;
}

int *sub_241B84()
{
  v1 = v0;
  v2 = sub_303078();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = Strong;
  if (v2)
  {
    v5 = [Strong tabBarController];
  }

  else
  {
    v5 = [Strong splitViewController];
  }

  v6 = v5;

  if (v6)
  {
    ObjectType = swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8)
    {
      v9 = (*(v8 + 16))(ObjectType, v8);

      if (v9)
      {
        return v9;
      }
    }

    else
    {
    }
  }

  v10 = swift_unknownObjectUnownedLoadStrong();
  v11 = [v10 nextResponder];

  if (!v11)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40A230);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_315430;
  *(inited + 32) = v1;
  v13 = sub_24543C(inited);
  swift_setDeallocating();
  v9 = sub_240B20(v13);

  return v9;
}

uint64_t sub_241D08(uint64_t a1, uint64_t a2, objc_class *a3, uint64_t a4)
{
  v135 = a4;
  v134 = a3;
  v142 = a2;
  v140 = sub_30B328();
  v141 = *(v140 - 8);
  __chkstk_darwin(v140);
  v139 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_30AA18();
  v129 = *(v131 - 1);
  __chkstk_darwin(v131);
  v130 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_3041E8();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_308778();
  v10 = *(v9 - 1);
  __chkstk_darwin(v9);
  v12 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_30A4E8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v133 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v118 - v17;
  __chkstk_darwin(v19);
  v21 = &v118 - v20;
  v138 = v4;
  v136 = OBJC_IVAR____TtC23ShelfKitCollectionViews24NavigationFlowController_navigationController;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v23 = [Strong traitCollection];

  v143 = a1;
  sub_245F18(v21);

  v25 = v14 + 16;
  v24 = *(v14 + 16);
  v24(v18, v21, v13);
  v137 = v14;
  v27 = *(v14 + 88);
  v26 = v14 + 88;
  v132 = v27;
  v28 = v27(v18, v13);
  if (v28 == enum case for FlowPresentationContext.showDetail(_:) || v28 == enum case for FlowPresentationContext.push(_:) || v28 == enum case for FlowPresentationContext.pushDetail(_:) || v28 == enum case for FlowPresentationContext.replace(_:) || v28 == enum case for FlowPresentationContext.replaceTopView(_:))
  {
    v124 = enum case for FlowPresentationContext.showDetail(_:);
    v122 = enum case for FlowPresentationContext.pushDetail(_:);
    v123 = enum case for FlowPresentationContext.push(_:);
    v121 = enum case for FlowPresentationContext.replace(_:);
    v135 = v26;
    v120 = enum case for FlowPresentationContext.replaceTopView(_:);
    v125 = v24;
    v34 = swift_unknownObjectUnownedLoadStrong();
    v35 = [v34 topViewController];

    if (v35 && (v146 = v35, sub_124C4(0, &qword_3FBE30), v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40A250), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v148 + 1))
      {
        v134 = v36;
        v119 = v21;
        v118 = v13;
        sub_12658(&v147, &v150);
        v37 = v151;
        v38 = v152;
        __swift_project_boxed_opaque_existential_1Tm(&v150, v151);
        v39 = (*(v38 + 8))(v37, v38);
        v40 = 0;
        v13 = *(v39 + 16);
        v21 = (v10 + 8);
        while (1)
        {
          if (v13 == v40)
          {

            __swift_destroy_boxed_opaque_existential_1(&v150);
            v13 = v118;
            v21 = v119;
            goto LABEL_22;
          }

          if (v40 >= *(v39 + 16))
          {
            break;
          }

          (*(v10 + 16))(v12, v39 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v40++, v9);
          v41 = sub_308738();
          (*(v10 + 8))(v12, v9);
          if (v41)
          {

            v42 = v126;
            sub_304128();
            v43 = sub_3041D8();
            v44 = sub_30C7B8();
            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              *v45 = 0;
              _os_log_impl(&dword_0, v43, v44, "Dropping navigation target because we're already showing this page", v45, 2u);
            }

            (*(v127 + 8))(v42, v128);
            __swift_project_boxed_opaque_existential_1Tm((v138 + 160), *(v138 + 184));
            sub_30A888();
            sub_12670(&v150, &v146);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40A258);
            v46 = swift_dynamicCast();
            v47 = v137;
            v48 = v118;
            v49 = v119;
            if (v46)
            {
              sub_12658(v144, &v147);
              __swift_project_boxed_opaque_existential_1Tm(&v147, *(&v148 + 1));
              sub_1C1B70(v143);
              (*(v47 + 8))(v49, v48);
              __swift_destroy_boxed_opaque_existential_1(&v147);
            }

            else
            {
              (*(v137 + 8))(v119, v118);
              v145 = 0;
              memset(v144, 0, sizeof(v144));
              sub_EB68(v144, &qword_40A260);
            }

            return __swift_destroy_boxed_opaque_existential_1(&v150);
          }
        }

        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }
    }

    else
    {
      v149 = 0;
      v147 = 0u;
      v148 = 0u;
    }

    sub_EB68(&v147, &qword_408E48);
LABEL_22:
    v50 = sub_217B24(v143);
    if (!v50)
    {
      return (*(v137 + 8))(v21, v13);
    }

    v128 = v25;
    v146 = v50;
    v51 = v50;
    v52 = sub_124C4(0, &qword_3FBE30);
    v134 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40A238);
    v127 = v52;
    if (swift_dynamicCast())
    {
      sub_12658(&v147, &v150);
      v53 = type metadata accessor for FlowPresentationHints();
      v54 = v130;
      (*(v129 + 16))(v130, v142 + *(v53 + 28), v131);
      v55 = v151;
      v56 = v152;
      __swift_mutable_project_boxed_opaque_existential_1(&v150, v151);
      (*(v56 + 16))(v54, v55, v56);
      __swift_destroy_boxed_opaque_existential_1(&v150);
    }

    else
    {
      v149 = 0;
      v147 = 0u;
      v148 = 0u;
      sub_EB68(&v147, &qword_40A240);
    }

    v57 = sub_240D6C();
    if (v57 != 19)
    {
      v58 = v57;
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v119 = v21;
        v118 = v13;
        v59 = v134;
        sub_BA528(v58);
        v143 = v58;
        v131 = v59;
        sub_30AB08();
        v9 = sub_30B348();
        v60 = 0;
        v13 = v9[2];
        v61 = v141;
        v62 = v139;
        while (v13 != v60)
        {
          if (v60 >= v9[2])
          {
            goto LABEL_72;
          }

          v21 = v140;
          (*(v61 + 16))(v62, v9 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v60++, v140);
          v63 = sub_30B2F8();
          v64 = sub_308428();
          sub_1DB3C(v63);
          (*(v61 + 8))(v62, v21);
          if (v64)
          {

            v65 = v143;
            goto LABEL_36;
          }
        }

        v65 = v143;
        if ((sub_308458() & 1) == 0)
        {
          sub_BA54C(v65);

          v13 = v118;
          v21 = v119;
          goto LABEL_52;
        }

LABEL_36:
        v66 = swift_unknownObjectUnownedLoadStrong();
        v67 = [v66 tab];

        v13 = v118;
        v21 = v119;
        if (v67)
        {
          v68 = [v67 managingTabGroup];

          if (v68)
          {
            if (sub_308458())
            {
              sub_30A1A8();
              sub_30A198();
            }

            else
            {
              sub_3083F8();
            }

            v69 = sub_30C098();

            [v68 setDefaultChildIdentifier:v69];
          }
        }

        v70 = swift_unknownObjectUnownedLoadStrong();
        v71 = [v70 tabBarController];

        if (v71)
        {
          sub_30A1A8();
          sub_30B8C8();
          v72 = v150;
          if (v150)
          {
            v73 = sub_30A188();
            v74 = sub_30CC28();

            if (v74)
            {
              v75 = v131;

              v76 = v74;
              [v71 setSelectedTab:v76];

              sub_BA54C(v65);
              return (*(v137 + 8))(v119, v13);
            }

            sub_BA54C(v65);

            v21 = v119;
          }

          else
          {
            sub_BA54C(v65);
          }
        }

        else
        {
          sub_BA54C(v65);
        }
      }

      else
      {
        sub_BA54C(v58);
      }
    }

LABEL_52:
    v77 = sub_241904(v142);
    v78 = v133;
    v125(v133, v21, v13);
    v79 = v132(v78, v13);
    if (v79 == v124 || v79 == v123 || v79 == v122)
    {
      v90 = swift_unknownObjectUnownedLoadStrong();
      v91 = [v90 presentedViewController];

      sub_245598(v91, v77 & 1);
      v92 = swift_unknownObjectUnownedLoadStrong();
      v93 = [v92 topViewController];

      if (v93)
      {
        type metadata accessor for LoadingPageViewController();
        v94 = swift_dynamicCastClass();

        if (v94)
        {
          v95 = swift_unknownObjectUnownedLoadStrong();
        }
      }

      v96 = *(v142 + *(type metadata accessor for FlowPresentationHints() + 32));
      if (v96)
      {
        v97 = sub_3030A8();
        v151 = v97;
        v152 = sub_245C8C(&qword_3FBDC0, 255, &type metadata accessor for Podcasts);
        boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v150);
        (*(*(v97 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for Podcasts.uipTransitions(_:), v97);
        v99 = v96;
        v100 = sub_302E88();
        __swift_destroy_boxed_opaque_existential_1(&v150);
        if (v100)
        {
          v101 = [objc_allocWithZone(UIZoomTransitionOptions) init];
          v102 = swift_allocObject();
          v103 = v134;
          *(v102 + 16) = v134;
          v104 = v103;
          sub_30CB68();
          sub_124C4(0, &qword_40A248);
          *(swift_allocObject() + 16) = v99;
          v105 = v99;
          v106 = v101;
          v99 = sub_30CBB8();

          [(objc_class *)v104 setPreferredTransition:v99];
        }
      }

      v107 = v134;
      sub_2433B8(v134, v77 & 1);

      return (*(v137 + 8))(v21, v13);
    }

    if (v79 == v121)
    {
      v80 = swift_unknownObjectUnownedLoadStrong();
      v81 = [v80 tabBarItem];

      v82 = swift_unknownObjectUnownedLoadStrong();
      sub_30CB38();

      v83 = swift_unknownObjectUnownedLoadStrong();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_31BF90;
      v85 = v134;
      *(v84 + 32) = v134;
      v86 = v85;
      v87 = v21;
      isa = sub_30C358().super.isa;

      [v83 setViewControllers:isa animated:v77 & 1];

      v89 = swift_unknownObjectUnownedLoadStrong();
      [v89 setTabBarItem:v81];

      return (*(v137 + 8))(v87, v13);
    }

    if (v79 != v120)
    {
      v113 = *(v137 + 8);
      v113(v21, v13);

      return (v113)(v78, v13);
    }

    v108 = swift_unknownObjectUnownedLoadStrong();
    v9 = [v108 tabBarItem];

    v109 = swift_unknownObjectUnownedLoadStrong();
    sub_30CB38();

    v110 = swift_unknownObjectUnownedLoadStrong();
    v111 = [v110 viewControllers];

    v112 = sub_30C368();
    v150 = v112;
    if (!(v112 >> 62))
    {
      if (*(&dword_10 + (v112 & 0xFFFFFFFFFFFFFF8)) < 1)
      {
LABEL_74:

        v150 = _swiftEmptyArrayStorage;
        goto LABEL_75;
      }

LABEL_69:

LABEL_75:
      v114 = v134;
      sub_30C348();
      if (*(&dword_10 + (v150 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v150 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_30C378();
      }

      sub_30C3C8();
      v115 = swift_unknownObjectUnownedLoadStrong();
      v116 = sub_30C358().super.isa;

      [v115 setViewControllers:v116 animated:0];

      v117 = swift_unknownObjectUnownedLoadStrong();
      [v117 setTabBarItem:v9];

      return (*(v137 + 8))(v21, v13);
    }

LABEL_73:
    if (sub_30D668() < 1)
    {
      goto LABEL_74;
    }

    goto LABEL_69;
  }

  v29 = *(v137 + 8);
  v29(v18, v13);
  if (sub_241B84())
  {
    v31 = v30;
    ObjectType = swift_getObjectType();
    (*(v31 + 32))(v143, v142, v134, v135, ObjectType, v31);
    swift_unknownObjectRelease();
  }

  return (v29)(v21, v13);
}

uint64_t sub_243158()
{
  if (!(*v0 >> 62))
  {
    result = *(&dword_10 + (*v0 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_2453D8();
    if (result)
    {
      return result;
    }

    if (*v0 >> 62)
    {
      v4 = sub_30D668();
      v3 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v3)
      {
        return sub_182DF0(result);
      }
    }

    else
    {
      v2 = *(&dword_10 + (*v0 & 0xFFFFFFFFFFFFFF8));
      v3 = __OFSUB__(v2, 1);
      result = v2 - 1;
      if (!v3)
      {
        return sub_182DF0(result);
      }
    }

    __break(1u);
    return result;
  }

  result = sub_30D668();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_2431E8()
{
  v1 = *v0;
  if (!*(*v0 + 16))
  {
    return 0;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v3 = *(v1 + 16);
    if (v3)
    {
LABEL_4:
      v4 = v3 - 1;
      result = *(v1 + 16 * v4 + 32);
      *(v1 + 16) = v4;
      *v0 = v1;
      return result;
    }
  }

  else
  {
    result = sub_17EF34(v1);
    v1 = result;
    v3 = *(result + 16);
    if (v3)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24325C@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v26 = a1;
  sub_124C4(0, &qword_3FBE30);
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40A290);
  if (swift_dynamicCast())
  {
    sub_12658(v24, v27);
    v5 = v28;
    v6 = v29;
    __swift_project_boxed_opaque_existential_1Tm(v27, v28);
    v7 = (*(v6 + 16))(v5, v6);
    v8 = v7 == 0;
    if (v7)
    {
      v9 = v7;
      [v7 frame];
      v20 = v11;
      v22 = v10;
      v18 = v13;
      v19 = v12;

      *&v14 = v20;
      *(&v14 + 1) = v18;
      v21 = v14;
      *&v14 = v22;
      *(&v14 + 1) = v19;
      v23 = v14;
    }

    else
    {
      v21 = 0u;
      v23 = 0u;
    }

    result = __swift_destroy_boxed_opaque_existential_1(v27);
    v17 = v21;
    v16 = v23;
  }

  else
  {
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    result = sub_EB68(v24, &unk_40A298);
    v16 = 0uLL;
    v8 = 1;
    v17 = 0uLL;
  }

  *a2 = v16;
  *(a2 + 16) = v17;
  *(a2 + 32) = v8;
  return result;
}

void sub_2433B8(void *a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews24NavigationFlowController_pushDisabledForTests);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v12 = Strong;
  if (v5 == 1)
  {
    v7 = swift_unknownObjectUnownedLoadStrong();
    v8 = [v7 viewControllers];

    sub_124C4(0, &qword_3FBE30);
    sub_30C368();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_31BF90;
    *(inited + 32) = a1;
    v10 = a1;
    sub_14A3B8(inited);
    isa = sub_30C358().super.isa;

    [v12 setViewControllers:isa];
  }

  else
  {
    [Strong pushViewController:a1 animated:a2 & 1];
  }
}

void *sub_243534()
{
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v0)
  {
    v1 = v0;
  }

  else
  {
    v2 = [v0 childViewControllers];
    sub_124C4(0, &qword_3FBE30);
    v3 = sub_30C368();

    if (v3 >> 62)
    {
LABEL_19:
      v4 = sub_30D668();
    }

    else
    {
      v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    }

    for (i = 0; v4 != i; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_30D578();
      }

      else
      {
        if (i >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_18;
        }

        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v0 = sub_243534();

      if (v0)
      {

        return v0;
      }
    }

    return 0;
  }

  return v0;
}

void sub_24369C()
{
  v0 = sub_309D18();
  v2 = v1;
  if (v0 == sub_309D18() && v2 == v3)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_30D728();

    v6 = v5 ^ 1;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
}

void sub_243778(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = [Strong viewControllers];

  sub_124C4(0, &qword_3FBE30);
  v6 = sub_30C368();

  v7 = sub_241710(a1, v6, &qword_3FBE30);
  if ((v8 & 1) != 0 || (v9 = v7, v10 = v7 - 1, v7 < 1))
  {

    if (sub_241B84())
    {
      v17 = v16;
      ObjectType = swift_getObjectType();
      (*(v17 + 48))(a1, a2, ObjectType, v17);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v11 = sub_309D18();
    v13 = v12;
    if (v11 == sub_309D18() && v13 == v14)
    {

      v15 = 0;
    }

    else
    {
      v19 = sub_30D728();

      v15 = v19 ^ 1;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v20 = sub_30D578();
    }

    else
    {
      if (v9 > *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        return;
      }

      v20 = *(v6 + 8 * v10 + 32);
    }

    v25 = v20;

    v21 = swift_unknownObjectUnownedLoadStrong();
    v22 = [v21 presentedViewController];

    if (v22)
    {

      v23 = swift_unknownObjectUnownedLoadStrong();
      [v23 dismissViewControllerAnimated:0 completion:0];
    }

    v24 = swift_unknownObjectUnownedLoadStrong();
  }
}

uint64_t NavigationFlowController.deinit()
{
  v0 = BaseFlowController.deinit();
  swift_unknownObjectUnownedDestroy();
  return v0;
}

uint64_t NavigationFlowController.__deallocating_deinit()
{
  BaseFlowController.deinit();
  swift_unknownObjectUnownedDestroy();

  return swift_deallocClassInstance();
}

id sub_243B24()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for FlowNavigationController();
  result = objc_msgSendSuper2(&v5, "nextResponder");
  if (!result)
  {
    v2 = [v0 viewIfLoaded];
    if (v2 && (v3 = v2, v4 = [v2 superview], v3, v4))
    {
      return v4;
    }

    else
    {
      return [v0 parentViewController];
    }
  }

  return result;
}

char *FlowNavigationController.__allocating_init(asPartOf:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(v1) init];
  type metadata accessor for NavigationFlowController();
  *(swift_allocObject() + OBJC_IVAR____TtC23ShelfKitCollectionViews24NavigationFlowController_pushDisabledForTests) = 0;
  swift_unknownObjectUnownedInit();
  v4 = v3;
  v5 = sub_2180E0(v4, a1);

  v6 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews24FlowNavigationController_flowController];
  swift_beginAccess();
  *v6 = v5;
  v6[1] = &protocol witness table for BaseFlowController;

  swift_unknownObjectRelease();
  return v4;
}

void *FlowNavigationController.init()()
{
  v1 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews24FlowNavigationController_macNavigationBar];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews24FlowNavigationController_flowController];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews24FlowNavigationController_actionRunner];
  *v3 = 0;
  *(v3 + 1) = 0;
  if (_UISolariumEnabled())
  {
    v13.receiver = v0;
    v13.super_class = type metadata accessor for FlowNavigationController();
    v4 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", 0, 0);
  }

  else
  {
    sub_124C4(0, &unk_40A280);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14.receiver = v0;
    v14.super_class = type metadata accessor for FlowNavigationController();
    v4 = objc_msgSendSuper2(&v14, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
  }

  v6 = v4;
  type metadata accessor for FlowActionRunner();
  v7 = swift_allocObject();
  v8 = objc_allocWithZone(type metadata accessor for ModelViewOverflowTransitioning());
  v9 = v6;
  *(v7 + 16) = [v8 init];
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v10 = sub_245C8C(&qword_3FBDA8, 255, type metadata accessor for FlowActionRunner);
  (*(&stru_68.reserved2 + (swift_isaMask & *v9)))(v7, v10);
  [v9 useDefaultRestorationIdentifier];
  v11 = [v9 navigationBar];
  [v11 setPrefersLargeTitles:1];

  return v9;
}

void FlowNavigationController.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24FlowNavigationController_macNavigationBar);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24FlowNavigationController_flowController);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24FlowNavigationController_actionRunner);
  *v3 = 0;
  v3[1] = 0;
  sub_30D648();
  __break(1u);
}

void sub_243FE8()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for FlowNavigationController();
  objc_msgSendSuper2(&v5, "viewDidLoad");
  [v0 setDelegate:v0];
  v1 = [v0 navigationBar];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];

    sub_302BF8();
    sub_302C08();
    [v1 setLayoutMargins:{0.0, v4, 0.0, v4}];
  }

  else
  {
    __break(1u);
  }
}

void sub_244110(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for FlowNavigationController();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1);
  v3 = [v1 navigationBar];
  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];

    sub_302BF8();
    sub_302C08();
    [v3 setLayoutMargins:{0.0, v6, 0.0, v6}];
  }

  else
  {
    __break(1u);
  }
}

void sub_2442E0(uint64_t a1, double a2, double a3)
{
  v9.receiver = v3;
  v9.super_class = type metadata accessor for FlowNavigationController();
  objc_msgSendSuper2(&v9, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = [v3 navigationBar];
  sub_302BF8();
  sub_302C08();
  [v7 setLayoutMargins:{0.0, v8, 0.0, v8}];
}

id sub_244464()
{
  v1 = [v0 navigationBar];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result bounds];

    sub_302BF8();
    sub_302C08();
    [v1 setLayoutMargins:{0.0, v4, 0.0, v4}];

    v5.receiver = v0;
    v5.super_class = type metadata accessor for FlowNavigationController();
    return objc_msgSendSuper2(&v5, "viewWillLayoutSubviews");
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24468C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC23ShelfKitCollectionViews24FlowNavigationController_flowController);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_2447D4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
  return swift_unknownObjectRelease();
}

id sub_2448C8()
{
  v1 = [v0 topViewController];

  return v1;
}

id sub_244994()
{
  v1 = [v0 topViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 supportedInterfaceOrientations];

    return v3;
  }

  else
  {
    v5.receiver = v0;
    v5.super_class = type metadata accessor for FlowNavigationController();
    return objc_msgSendSuper2(&v5, "supportedInterfaceOrientations");
  }
}

id sub_244A0C(char a1)
{
  v3 = [v1 viewControllers];
  sub_124C4(0, &qword_3FBE30);
  v4 = sub_30C368();

  if (v4 >> 62)
  {
    v5 = sub_30D668();
  }

  else
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  }

  if (v5 < 2)
  {
    v9 = [v1 viewControllers];
    v10 = sub_30C368();

    if (v10 >> 62)
    {
      result = sub_30D668();
      if (result)
      {
LABEL_8:
        if ((v10 & 0xC000000000000001) != 0)
        {
          v11 = sub_30D578();
        }

        else
        {
          if (!*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }

          v11 = *(v10 + 32);
        }

        v12 = v11;

        v13 = [v12 contentScrollView];
        if (!v13)
        {

          return 0;
        }

        v14 = v13;
        v20 = v12;
        v15 = v12;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40A290);
        if (swift_dynamicCast())
        {
          v16 = *(&v22 + 1);
          v17 = v23;
          __swift_project_boxed_opaque_existential_1Tm(&v21, *(&v22 + 1));
          (*(v17 + 8))(&v24, v16, v17);
          __swift_destroy_boxed_opaque_existential_1(&v21);
          if (*(&v25 + 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40A2B0);
            if (swift_dynamicCast())
            {
              if (*(&v27 + 1))
              {
                goto LABEL_21;
              }
            }

            else
            {
              v28 = 0;
              v26 = 0u;
              v27 = 0u;
            }

            goto LABEL_20;
          }
        }

        else
        {
          v23 = 0;
          v21 = 0u;
          v22 = 0u;
          sub_EB68(&v21, &unk_40A298);
          v24 = 0u;
          v25 = 0u;
        }

        sub_EB68(&v24, &unk_3FBB70);
        v26 = 0u;
        v27 = 0u;
        v28 = 0;
LABEL_20:
        sub_EB68(&v26, &qword_40A2A8);
        *&v21 = v15;
        v15 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40A2B0);
        if (swift_dynamicCast())
        {
LABEL_21:
          sub_12658(&v26, v29);
          sub_30C748();
          __swift_project_boxed_opaque_existential_1Tm(v29, v30);
          v18 = sub_30AD38();
          __swift_project_boxed_opaque_existential_1Tm(v29, v30);
          sub_30AD28();
          if (v18)
          {
            [v14 statusBarScrollToTopAnimated:a1 & 1];

            __swift_destroy_boxed_opaque_existential_1(v29);
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(v29);
          }

          return 0;
        }

        v28 = 0;
        v26 = 0u;
        v27 = 0u;
        sub_EB68(&v26, &qword_40A2A8);
        sub_30CB38();
        [v14 statusBarScrollToTopAnimated:a1 & 1];

        return 0;
      }
    }

    else
    {
      result = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  sub_30CB38();
  v19.receiver = v1;
  v19.super_class = type metadata accessor for FlowNavigationController();
  result = objc_msgSendSuper2(&v19, "popToRootViewControllerAnimated:", a1 & 1);
  if (result)
  {
    v7 = result;
    v8 = sub_30C368();

    return v8;
  }

  return result;
}

id FlowNavigationController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id FlowNavigationController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController:a1];

  return v3;
}

id FlowNavigationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FlowNavigationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void (*sub_245230(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*&stru_68.segname[(swift_isaMask & *v1) + 16])();
  return sub_2E9BC;
}

uint64_t (*sub_2452D0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_30D578();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_245F14;
  }

  __break(1u);
  return result;
}