uint64_t sub_28E278@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v16 = 0;
      v12 = 0uLL;
      goto LABEL_10;
    }
  }

  v11 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
  result = MPModelObject.bestIdentifier(for:)(*v11, 0);
  v12 = 0uLL;
  if (!v13)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v16 = 0;
LABEL_10:
    v21 = 0uLL;
    v22 = 0uLL;
    goto LABEL_26;
  }

  v14 = objc_allocWithZone(type metadata accessor for ModelObjectBackedStoreItemMetadata());
  v15 = a1;
  result = ModelObjectBackedStoreItemMetadata.init(modelObject:)(v15);
  v16 = result;
  if (!result)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0uLL;
    v22 = 0uLL;
    v12 = 0uLL;
LABEL_26:
    *a5 = v12;
    *(a5 + 16) = v21;
    *(a5 + 32) = v18;
    *(a5 + 40) = v19;
    *(a5 + 48) = v22;
    *(a5 + 64) = v20;
    *(a5 + 72) = v16;
    return result;
  }

  if (a2)
  {
    v17 = [a2 identifiers];
  }

  else
  {
    v17 = 0;
  }

  type metadata accessor for JSContainerDetailComponentController();
  v23 = v16;
  v24 = v15;
  v25 = v23;
  v26 = JSContainerDetailComponentController.__allocating_init(containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v25, 0, 1, UIScreen.Dimensions.size.getter, 0);
  v72 = a3;
  if (v26)
  {
    v27 = v26;
    v28 = *(v26 + OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail);
LABEL_14:
    v29 = v17;
    goto LABEL_17;
  }

  v30 = v24;
  v31 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v30, 0, 1, UIScreen.Dimensions.size.getter, 0);
  if (v31)
  {
    v27 = v31;
    v29 = v17;
    v28 = *&v31[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];
LABEL_17:
    v70 = v29;
    v32 = type metadata accessor for JSContainerDetailModelRequest();
    v33 = objc_allocWithZone(v32);
    v34 = &v33[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
    *v34 = 0;
    v34[1] = 0;
    v33[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption] = 13;
    swift_unknownObjectWeakInit();
    v35 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel;
    *&v33[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel] = 0;
    v33[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_isCancelled] = 0;
    *&v33[v35] = v28;
    v99.receiver = v33;
    v99.super_class = v32;
    v36 = v28;
    v66 = v29;
    v67 = v27;
    v37 = objc_msgSendSuper2(&v99, "init");
    if ((v36[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_itemKind] & 0xFE) == 2)
    {
      sub_13C80(0, &qword_DE8E90);
      v38 = v37;
      v39 = static MPModelAlbum.defaultMusicKind.getter();
      [v38 setSectionKind:v39];

      v40 = [objc_opt_self() kindWithVariants:3];
      [v38 setItemKind:v40];

      v41 = v70;
      if (v70)
      {
LABEL_19:

LABEL_22:
        v50 = JSViewModel.playActivityRecommendationData.getter();
        v52 = v51;
        sub_466A4(0, 0xF000000000000000);
        *&v87 = v37;
        *(&v87 + 1) = v28;
        v88 = v15;
        v89 = v27;
        v90 = 0;
        *&v91 = v41;
        BYTE8(v91) = 0;
        *(&v91 + 9) = *v100;
        HIDWORD(v91) = *&v100[3];
        v92 = v50;
        v93 = v52;
        v94[0] = v37;
        v94[1] = v28;
        v94[2] = v15;
        v94[3] = 0;
        v94[4] = v27;
        v94[5] = 0;
        v94[6] = v41;
        v95 = 0;
        *&v96[3] = *&v100[3];
        *v96 = *v100;
        v97 = v50;
        v98 = v52;
        sub_70EB0(&v87, v81);
        sub_70F0C(v94);
        v102 = v87;
        v103 = v88;
        v53 = v90;
        v104 = v89;
        v101 = v91;
        v54 = v25;
        v55 = v92;
        v56 = v93;
        v19 = v72;

        v57 = *(a4 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_viewModel);
        if (v57)
        {
          v58 = *(&stru_68.offset + (swift_isaMask & *v57));
          v59 = v57;
          v20 = v58();
          v16 = v60;
        }

        else
        {

          v20 = 0;
          v16 = 0xF000000000000000;
        }

        sub_466A4(v55, v56);
        v75[0] = v102;
        v75[1] = v103;
        v18 = v104;
        v76 = v104;
        v77 = v19;
        v78 = v101;
        v79 = v20;
        v80 = v16;
        v71 = v103;
        v73 = v102;
        v68 = v101;
        v81[0] = v102;
        v81[1] = v103;
        v82 = v104;
        v83 = v19;
        v84 = v101;
        v85 = v20;
        v86 = v16;
        sub_70EB0(v75, v74);
        result = sub_70F0C(v81);
        v22 = v68;
        v21 = v71;
        v12 = v73;
        goto LABEL_26;
      }
    }

    else
    {
      sub_13C80(0, &qword_DE9C10);
      v42 = static MPModelPlaylistEntry.defaultMusicKind.getter();
      v43 = objc_opt_self();
      v65 = v15;
      v44 = v25;
      v45 = a4;
      v46 = v37;
      v47 = [v43 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v42 options:0];
      [v46 setSectionKind:v47];

      [v46 setItemKind:v42];
      a4 = v45;
      v25 = v44;
      v15 = v65;
      v41 = v70;
      if (v70)
      {
        goto LABEL_19;
      }
    }

    v48 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_prominentItemIdentifiers;
    swift_beginAccess();
    v41 = *&v36[v48];
    v49 = v41;
    goto LABEL_22;
  }

  v69 = v25;
  objc_opt_self();
  v61 = swift_dynamicCastObjCClass();
  if (v61)
  {
    v62 = v61;
    v63 = MPModelPropertyPlaylistType;
    v64 = v30;
    if ([v62 hasLoadedValueForKey:v63] && objc_msgSend(v62, "type") == &dword_8 + 1)
    {
      v27 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0);
      v28 = *&v27[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];

      v25 = v69;
      goto LABEL_14;
    }
  }

  result = sub_ABAFD0();
  __break(1u);
  return result;
}

uint64_t sub_28E998(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_28EA00()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

id sub_28EA38(uint64_t a1, void *a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = sub_28DDBC(a2);

  return v4;
}

uint64_t block_copy_helper_95(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_28EA90(uint64_t a1, void *a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = sub_28D780(a2);

  return v4;
}

void sub_28EAD8(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v21 - v12;
  aBlock[0] = [a1 identifier];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF9250);
  v14 = swift_dynamicCast();
  v15 = *(v8 + 56);
  if (v14)
  {
    v15(v6, 0, 1, v7);
    v22 = a2;
    v16 = *(v8 + 32);
    v16(v13, v6, v7);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v8 + 16))(v11, v13, v7);
    v18 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    v16((v19 + v18), v11, v7);
    aBlock[4] = sub_28EE24;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_90;
    v20 = _Block_copy(aBlock);

    [v22 addAnimations:v20];
    (*(v8 + 8))(v13, v7);
    _Block_release(v20);
  }

  else
  {
    v15(v6, 1, 1, v7);
    sub_12E1C(v6, &unk_DE8E20);
    [a2 setPreferredCommitStyle:0];
  }
}

void sub_28EE24()
{
  sub_AB3820();

  sub_28ABF0();
}

uint64_t sub_28EE88()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t objectdestroy_86Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_28EFA4(double a1)
{
  v3 = *(sub_AB3430() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_41BFD0(a1, v4, v5);
}

uint64_t sub_28F018()
{

  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_28F0BC()
{

  return swift_deallocObject();
}

uint64_t sub_28F110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFC2E0);

  return sub_289494(a1, a2, a3);
}

uint64_t objectdestroy_104Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_28F23C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC2D8);
  _s10HeaderViewCMa();
  return sub_ABA060();
}

uint64_t sub_28F2D4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_28F314(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

id sub_28F43C(double a1, double a2)
{
  v3 = v2;
  isa = sub_AB3770().super.isa;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for ContainerDetailCollectionTableLayout();
  v7 = objc_msgSendSuper2(&v13, "layoutAttributesForInteractivelyMovingItemAtIndexPath:withTargetPosition:", isa, a1, a2);

  [v7 setAlpha:1.0];
  v8 = UICollectionElementKindSectionHeader;
  v9 = sub_AB3770().super.isa;
  v10 = [v3 layoutAttributesForSupplementaryViewOfKind:v8 atIndexPath:v9];

  if (v10)
  {
    [v7 frame];
    CGRectGetMinY(v14);
    [v10 frame];
    MaxY = CGRectGetMaxY(v15);
    sub_471A4();
    if (sub_AB3900())
    {
      [v10 frame];
      CGRectGetMaxY(v16);
      [v7 frame];
      [v7 setFrame:?];
    }
  }

  return v7;
}

id sub_28F7B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContainerDetailCollectionTableLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_28F80C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v3);
  v5 = (v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_allocWithZone(MPCPlaybackIntent) init];
  v7 = *&stru_68.segname[(swift_isaMask & *v1) + 8];
  v8 = v7();
  v10 = v9;

  v12 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v12 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    (v7)(v11);
    v13 = sub_AB9260();

    [v6 setPlayActivityFeatureName:v13];
  }

  result = (*(&stru_68.offset + (swift_isaMask & *v1)))(v11);
  if (v15 >> 60 == 15)
  {
    goto LABEL_15;
  }

  v16 = v15 >> 62;
  if ((v15 >> 62) <= 1)
  {
    if (!v16)
    {
      if (!BYTE6(v15))
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result < 1)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

LABEL_22:
    __break(1u);
    return result;
  }

  if (v16 == 2)
  {
    v18 = *(result + 16);
    v17 = *(result + 24);
    v19 = __OFSUB__(v17, v18);
    v20 = v17 - v18;
    if (v19)
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v20 >= 1)
    {
LABEL_13:
      v21 = result;
      v22 = v15;
      isa = sub_AB3250().super.isa;
      [v6 setPlayActivityRecommendationData:isa];

      v15 = v22;
      result = v21;
    }
  }

LABEL_14:
  result = sub_466A4(result, v15);
LABEL_15:
  if (((*(&stru_68.reserved2 + (swift_isaMask & *v1)))(result) & 1) == 0)
  {
    [v6 setShuffleMode:1];
  }

  *v5 = v6;
  swift_storeEnumTagMultiPayload();
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  return PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v5, v26, 3, 0, 0, 1, 0, 1, a1, 0, v24);
}

void sub_28FAC0(uint64_t a1, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_duration;
  v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_duration);
  v5 = *(v2 + OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_duration + 8);
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
  sub_28FAEC(v4, v5);
}

void sub_28FAEC(uint64_t a1, char a2)
{
  if (a2)
  {
    if (*(v2 + OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_duration + 8))
    {
      return;
    }

    v3 = *(v2 + OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_duration);
  }

  else
  {
    if (*(v2 + OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_duration + 8))
    {
      v4 = *(*(v2 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + 112);
      v5 = *(v2 + OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_durationTextStackView);
      if (v5)
      {
        v6 = v4;
        v7 = v5;
        if ([v7 isDescendantOfView:v6])
        {
          [v7 removeFromSuperview];
        }
      }

      else
      {
        v27 = v4;
      }

      v28 = *(v2 + OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_textComponents);
      swift_beginAccess();
      *(v28 + 112) = 0;
      *(v28 + 120) = 0xE000000000000000;

      sub_2EB704();
      goto LABEL_23;
    }

    v3 = *(v2 + OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_duration);
    if (*&a1 == v3)
    {
      return;
    }
  }

  v8 = *(*(v2 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + 112);
  v9 = OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_durationTextStackView;
  v10 = *(v2 + OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_durationTextStackView);
  if (v10)
  {
    v11 = v8;
    v4 = v10;
  }

  else
  {
    type metadata accessor for TextStackView();
    v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v13 = v8;
    v14 = [v12 init];
    v15 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textDrawingCache;
    swift_beginAccess();
    v16 = *(v2 + v15);
    v17 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v18 = *&v14[v17];
    *&v14[v17] = v16;
    swift_retain_n();
    v4 = v14;
    sub_2E6210(v18);

    TextStackView.add(_:)(*(v2 + OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_textComponents));
    v19 = *(v2 + v9);
    *(v2 + v9) = v4;

    v10 = 0;
  }

  v20 = v10;
  v21 = [v4 isDescendantOfView:v8];

  if ((v21 & 1) == 0)
  {
    [v8 addSubview:v4];
  }

  if (*Double.epsilon.unsafeMutableAddressor() >= v3)
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  else
  {
    if (qword_DE6CB0 != -1)
    {
      swift_once();
    }

    v22 = [qword_E718F0 stringFromSeconds:v3];
    v23 = sub_AB92A0();
    v25 = v24;
  }

  v26 = *(v2 + OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_textComponents);
  swift_beginAccess();
  *(v26 + 112) = v23;
  *(v26 + 120) = v25;

  sub_2EB704();

LABEL_23:
}

void sub_28FDFC()
{
  v28.receiver = v0;
  v28.super_class = type metadata accessor for MusicVideoVerticalLockupCollectionViewCell();
  objc_msgSendSuper2(&v28, "layoutSubviews");
  [v0 effectiveUserInterfaceLayoutDirection];
  v1 = &v0[OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_duration];
  if (v0[OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_duration + 8])
  {
    v2 = 1;
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_textComponents];
    swift_beginAccess();
    v4 = *(v3 + 120);
    v5 = *(v3 + 112) & 0xFFFFFFFFFFFFLL;
    if ((v4 & 0x2000000000000000) != 0)
    {
      v5 = HIBYTE(v4) & 0xF;
    }

    v2 = v5 == 0;
  }

  v6 = v0[OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_isGradientViewHidden];
  v0[OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_isGradientViewHidden] = v2;
  sub_29016C(v6);
  v7 = *&v0[OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_durationTextStackView];
  if (v7 && (v1[8] & 1) == 0)
  {
    v8 = *(*&v0[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent] + 112);
    v9 = v7;
    [v8 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [v9 sizeThatFits:{260.0, 160.0}];
    v34.origin.x = v11;
    v34.origin.y = v13;
    v34.size.width = v15;
    v34.size.height = v17;
    CGRectGetMaxX(v34);
    v35.origin.x = v11;
    v35.origin.y = v13;
    v35.size.width = v15;
    v35.size.height = v17;
    CGRectGetMaxY(v35);
    v18 = v9;
    [v0 bounds];
    sub_ABA490();
    [v18 setFrame:?];

    v19 = *&v0[OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_gradientView];
    if (v19)
    {
      v20 = v19;
      v36.origin.x = v11;
      v36.origin.y = v13;
      v36.size.width = v15;
      v36.size.height = v17;
      CGRectGetMaxX(v36);
      v37.origin.x = v11;
      v37.origin.y = v13;
      v37.size.width = v15;
      v37.size.height = v17;
      CGRectGetMaxY(v37);
      v21 = v20;
      [v0 bounds];
      sub_ABA490();
      [v21 setFrame:?];

      v22 = &v21[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
      swift_beginAccess();
      v23 = *(v22 + 3);
      v24 = *v22;
      v25 = *(v22 + 1);
      *&v27[16] = *(v22 + 2);
      *&v27[32] = v23;
      v26 = v24;
      *v27 = v25;
      sub_8A334(&v26, &v29);

      v29 = v26;
      v31 = *&v27[8];
      v32 = *&v27[24];
      v33 = *&v27[40];
      v30 = &off_CF12C0;
      Gradient.View.typedConfiguration.setter(&v29);
    }
  }
}

void sub_29016C(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_isGradientViewHidden) != (a1 & 1))
  {
    v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_durationTextStackView);
    if (v2)
    {
      v3 = OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_gradientView;
      v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_gradientView);
      if (*(v1 + OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_isGradientViewHidden))
      {
        if (v4)
        {
          v5 = *(v1 + OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_gradientView);

          [v5 setHidden:1];
        }
      }

      else
      {
        if (v4)
        {
          v6 = v2;
          v7 = v4;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
          v8 = swift_allocObject();
          *(v8 + 16) = xmmword_AF7C50;
          v9 = objc_allocWithZone(UIColor);
          v10 = v2;
          *(v8 + 32) = [v9 initWithWhite:0.0 alpha:0.0];
          *(v8 + 40) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.4];
          Gradient.init(kind:colors:locations:interpolations:startPoint:endPoint:)(kCAGradientLayerAxial, v8, 0, 0, v18, 0.7, 0.65, 1.0, 1.0);
          v11 = objc_allocWithZone(type metadata accessor for Gradient.View());
          v12 = Gradient.View.init(configuration:)(v18);
          v13 = [v12 layer];
          [v13 setMaskedCorners:8];

          v14 = *(v1 + v3);
          *(v1 + v3) = v12;
          v7 = v12;

          v4 = 0;
        }

        v15 = v4;
        v17 = v7;
        [v17 setHidden:0];
        v16 = *(*(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + 112);
        [v16 addSubview:v17];

        [v16 insertSubview:v2 aboveSubview:v17];
      }
    }
  }
}

void sub_290510()
{

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_gradientView);
}

id sub_290560()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicVideoVerticalLockupCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MusicVideoVerticalLockupCollectionViewCell()
{
  result = qword_DFC3B0;
  if (!qword_DFC3B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2906C0(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_duration];
  *v3 = 0;
  v3[8] = 1;
  v4 = OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_textComponents;
  *&v1[v4] = sub_25F6C0();
  *&v1[OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_durationTextStackView] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_gradientView] = 0;
  v1[OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_isGradientViewHidden] = 1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for MusicVideoVerticalLockupCollectionViewCell();
  return objc_msgSendSuper2(&v6, "initWithCoder:", a1);
}

void sub_2907DC()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for JSTVShowPlayBarViewController();
  objc_msgSendSuper2(&v9, "viewDidLoad");
  type metadata accessor for TVShowPlayBarView();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication29JSTVShowPlayBarViewController_tvShowPlayBarView];
  *&v0[OBJC_IVAR____TtC16MusicApplication29JSTVShowPlayBarViewController_tvShowPlayBarView] = v1;
  v3 = v1;

  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    [v4 addSubview:v3];

    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = &v3[OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_playButtonHandler];
    v8 = *&v3[OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_playButtonHandler];
    *v7 = sub_2921D0;
    v7[1] = v6;

    sub_17654(v8);

    sub_291C30();
  }

  else
  {
    __break(1u);
  }
}

void sub_290908()
{
  v0 = sub_AB3430();
  v73 = *(v0 - 8);
  __chkstk_darwin(v0);
  v72 = &v62 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_AB3820();
  v3 = *(v2 - 8);
  v74 = v2;
  v75 = v3;
  __chkstk_darwin(v2);
  v71 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v5);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v62 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v62 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v17 - 8);
  v19 = &v62 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v22 = *&Strong[OBJC_IVAR____TtC16MusicApplication29JSTVShowPlayBarViewController_contentItem];
    if (!v22)
    {

      return;
    }

    v69 = v0;
    v70 = v19;
    v68 = v5;
    v23 = *(&stru_B8.offset + (swift_isaMask & **&Strong[OBJC_IVAR____TtC16MusicApplication29JSTVShowPlayBarViewController_tvShowPlayBarViewModel]));
    v67 = v22;
    v24 = v22;
    v25 = v23();
    if (!v25)
    {

LABEL_22:
      return;
    }

    v26 = v25;
    v65 = JSSegueCoordinator.shared.unsafeMutableAddressor();
    memset(v82, 0, sizeof(v82));
    v83 = 0;
    v84 = xmmword_AF7710;
    v27 = v21;
    PresentationSource.init(viewController:position:)(v27, v82, v81);
    v80 = 0;
    memset(v79, 0, sizeof(v79));
    v63 = v24;
    v28 = [v63 innerObject];
    v64 = v26;
    sub_2641C4(v28, v21, static MPMediaLibraryFilteringOptions.none.getter, 0, v70);

    v66 = v27;
    sub_15F84(v79, &v76, &unk_DE8E30);
    if (*(&v77 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
      v29 = _s30CollectionViewSelectionHandlerVMa();
      v30 = swift_dynamicCast();
      v31 = *(v29 - 8);
      (*(v31 + 56))(v10, v30 ^ 1u, 1, v29);
      v32 = (*(v31 + 48))(v10, 1, v29);
      v34 = v68;
      v33 = v69;
      v35 = v74;
      if (v32 != 1)
      {
        v36 = *(v29 + 20);
        v37 = v75;
        (*(v75 + 16))(v16, &v10[v36], v74);
        sub_2D6C0(v10, _s30CollectionViewSelectionHandlerVMa);
        v38 = 0;
        goto LABEL_11;
      }
    }

    else
    {
      sub_12E1C(&v76, &unk_DE8E30);
      v39 = _s30CollectionViewSelectionHandlerVMa();
      (*(*(v39 - 8) + 56))(v10, 1, 1, v39);
      v34 = v68;
      v33 = v69;
      v35 = v74;
    }

    sub_12E1C(v10, &qword_E037A0);
    v38 = 1;
    v37 = v75;
LABEL_11:
    (*(v37 + 56))(v16, v38, 1, v35);
    v40 = swift_unknownObjectWeakLoadStrong();
    if (v40 && (v41 = v40, sub_12B2FC(), v43 = v42, v45 = v44, v41, v43))
    {
      ObjectType = swift_getObjectType();
      (*(v45 + 8))(ObjectType, v45);
      v48 = v47;
      swift_unknownObjectRelease();
      sub_15F84(v16, v14, &unk_DE8E20);
      v49 = v75;
      if ((*(v75 + 48))(v14, 1, v35) == 1)
      {
        sub_12E1C(v14, &unk_DE8E20);
        v76 = 0u;
        v77 = 0u;
        v78 = 0;
      }

      else
      {
        (*(v49 + 32))(v71, v14, v35);
        sub_2D668();
        v33 = v69;
        sub_ABAD10();
      }

      v51 = swift_getObjectType();
      v52 = v72;
      sub_3B8F68();
      v50 = sub_21CCAC(1, v52, &v76, v51, v48);
      (*(v73 + 8))(v52, v33);
      sub_12E1C(&v76, &qword_DF2BD0);
      sub_12E1C(v16, &unk_DE8E20);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_12E1C(v16, &unk_DE8E20);
      v50 = 0;
    }

    v53 = swift_unknownObjectWeakLoadStrong();
    if (v53)
    {
      v54 = v53;
      sub_12AFE8();
      v24 = v55;
    }

    else
    {
      v24 = 0;
    }

    sub_15F28(v81, &v76);
    sub_15F84(v79, (v7 + 104), &unk_DE8E30);
    v56 = v70;
    sub_15F84(v70, &v7[*(v34 + 28)], &unk_DEA510);
    *v7 = 0u;
    *(v7 + 1) = 0u;
    *(v7 + 2) = 0u;
    *(v7 + 3) = 0u;
    *(v7 + 8) = 1;
    *(v7 + 9) = 0;
    *(v7 + 10) = 0;
    *(v7 + 11) = 0;
    sub_2D594(&v76, v7);
    *(v7 + 12) = v67;
    v57 = *v65;
    *(&v77 + 1) = v34;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v76);
    sub_2D604(v7, boxed_opaque_existential_0);
    v59 = v63;
    v60 = v57;
    v61 = v64;
    JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v64, 0, v50, v24, &v76);

    sub_12E1C(v56, &unk_DEA510);
    sub_12E1C(v79, &unk_DE8E30);
    sub_1611C(v81);
    sub_2D6C0(v7, _s23MusicPerformanceContextVMa);

    sub_12E1C(&v76, &unk_DE8E40);

    goto LABEL_22;
  }
}

void sub_291214()
{
  v19.receiver = v0;
  v19.super_class = type metadata accessor for JSTVShowPlayBarViewController();
  objc_msgSendSuper2(&v19, "viewDidLayoutSubviews");
  v1 = [v0 traitCollection];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = *&v0[OBJC_IVAR____TtC16MusicApplication29JSTVShowPlayBarViewController_tvShowPlayBarView];
    v13 = 1.0;
    if (v12)
    {
      v14 = *(&stru_B8.offset + (swift_isaMask & **&v0[OBJC_IVAR____TtC16MusicApplication29JSTVShowPlayBarViewController_tvShowPlayBarViewModel]));
      v15 = v12;
      v16 = v14();
      if (v16)
      {

        [v15 setFrame:{v5, v7, v9, v11}];
        [v1 displayScale];
        sub_AB3A00();
        v18 = v17;

        v13 = v18 + 16.0;
      }

      else
      {
      }
    }

    v20.origin.x = v5;
    v20.origin.y = v7;
    v20.size.width = v9;
    v20.size.height = v11;
    [v0 setPreferredContentSize:{CGRectGetWidth(v20), v13}];
  }

  else
  {
    __break(1u);
  }
}

void *sub_291574()
{
  result = (*(&stru_B8.offset + (swift_isaMask & **&v0[OBJC_IVAR____TtC16MusicApplication29JSTVShowPlayBarViewController_tvShowPlayBarViewModel])))();
  if (result)
  {
    v54 = v0;
    v55 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_AF4EC0;
    *(v2 + 32) = sub_AB92A0();
    *(v2 + 40) = v3;
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
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_AF85F0;
    *(v9 + 32) = sub_AB92A0();
    *(v9 + 40) = v10;
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_AF4EC0;
    *(v11 + 32) = sub_AB92A0();
    *(v11 + 40) = v12;
    isa = sub_AB9740().super.isa;
    v14 = objc_opt_self();
    v15 = [v14 propertySetWithProperties:isa];

    *(v9 + 48) = v15;
    *(v9 + 56) = sub_AB92A0();
    *(v9 + 64) = v16;
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_AF85F0;
    *(v17 + 32) = sub_AB92A0();
    *(v17 + 40) = v18;
    *(v17 + 48) = sub_AB92A0();
    *(v17 + 56) = v19;
    v20 = sub_AB9740().super.isa;
    v21 = [v14 propertySetWithProperties:v20];

    *(v9 + 72) = v21;
    sub_96EA4(v9);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
    swift_arrayDestroy();
    v22 = objc_allocWithZone(MPPropertySet);
    v23 = sub_AB9740().super.isa;

    sub_13C80(0, &qword_DEA550);
    v24 = sub_AB8FD0().super.isa;

    v25 = [v22 initWithProperties:v23 relationships:v24];

    sub_13C80(0, &unk_DE9C00);
    v26 = sub_10F414();
    v27 = [v25 propertySetByCombiningWithPropertySet:v26];

    v28 = sub_10F414();
    v29 = [v27 propertySetByCombiningWithPropertySet:v28];

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v31 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
    v32 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
    v33 = [v31 propertySetByCombiningWithPropertySet:v32];

    v34 = [v29 propertySetByCombiningWithPropertySet:v33];
    *(inited + 48) = v34;
    sub_96EA4(inited);
    swift_setDeallocating();
    sub_12E1C(inited + 32, &unk_DE8E80);
    v35 = objc_allocWithZone(MPPropertySet);
    v36 = sub_AB9740().super.isa;

    v37 = sub_AB8FD0().super.isa;

    v38 = [v35 initWithProperties:v36 relationships:v37];

    type metadata accessor for JSModelMediaContentItemBuilder();
    v39 = swift_allocObject();
    v39[4] = 0;
    v39[2] = v38;
    v40 = objc_allocWithZone(MPModelStoreBrowseContentItemBuilder);
    v41 = v38;
    result = [v40 initWithRequestedPropertySet:v41];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v39[3] = result;
    v42 = [objc_opt_self() activeAccount];
    sub_4D3314(v55, v42);
    v44 = v43;

    v45 = OBJC_IVAR____TtC16MusicApplication29JSTVShowPlayBarViewController_contentItem;
    v46 = v54;
    v47 = *&v54[OBJC_IVAR____TtC16MusicApplication29JSTVShowPlayBarViewController_contentItem];
    *&v54[OBJC_IVAR____TtC16MusicApplication29JSTVShowPlayBarViewController_contentItem] = v44;
    if (v47)
    {
      if (v44)
      {
        sub_13C80(0, &unk_DEDE10);
        v48 = v44;
        v49 = v47;
        v50 = sub_ABA790();

        if (v50)
        {

          v47 = v49;
LABEL_14:

          goto LABEL_15;
        }

LABEL_9:
        if ([v54 isViewLoaded])
        {
          sub_291C30();
        }

        v52 = *&v46[v45];
        if (v52)
        {
          v52 = [v52 episode];
        }

        v53 = *&v46[OBJC_IVAR____TtC16MusicApplication29JSTVShowPlayBarViewController_episode];
        *&v46[OBJC_IVAR____TtC16MusicApplication29JSTVShowPlayBarViewController_episode] = v52;

        goto LABEL_14;
      }
    }

    else if (!v44)
    {
LABEL_15:
    }

    v51 = v44;
    goto LABEL_9;
  }

  return result;
}

void sub_291C30()
{
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_AB9250();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9230();
  __chkstk_darwin(v3 - 8);
  v4 = *(v0 + OBJC_IVAR____TtC16MusicApplication29JSTVShowPlayBarViewController_tvShowPlayBarView);
  if (!v4)
  {
    return;
  }

  v5 = *(v0 + OBJC_IVAR____TtC16MusicApplication29JSTVShowPlayBarViewController_tvShowPlayBarViewModel);
  v6 = *(&stru_B8.offset + (swift_isaMask & *v5));
  v34 = v4;
  v7 = v6();
  if (!v7)
  {
    v17 = v34;
    goto LABEL_10;
  }

  v8 = *(v0 + OBJC_IVAR____TtC16MusicApplication29JSTVShowPlayBarViewController_episode);
  v33 = v7;
  if (!v8)
  {

    v17 = v33;
    goto LABEL_10;
  }

  v9 = *(&stru_248.reserved2 + (swift_isaMask & *v7));
  v32 = v8;
  v10 = v9();
  v12 = v11;

  v14 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v14 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v15 = (v9)(v13);
    sub_22775C(v15, v16);

    v17 = v32;
LABEL_10:

    return;
  }

  v18 = [v32 season];
  if (v18)
  {
    v19 = v18;
    [v18 number];

    sub_AB9220();
    v36._countAndFlagsBits = 0x206E6F73616553;
    v36._object = 0xE700000000000000;
    sub_AB9210(v36);
    sub_AB91F0();
    v37._countAndFlagsBits = 0x646F73697045202CLL;
    v37._object = 0xEA00000000002065;
    sub_AB9210(v37);
    [v32 episodeNumber];
    sub_AB91F0();
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    sub_AB9210(v38);
    sub_AB9240();
    sub_AB3550();
    v20 = sub_AB9320();
  }

  else
  {
    v22 = [v32 title];
    if (v22)
    {
      v23 = v22;
      v24 = sub_AB92A0();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0xE000000000000000;
    }

    v20 = v24;
    v21 = v26;
  }

  v27 = sub_22775C(v20, v21);
  v28 = (*(&stru_B8.reserved2 + (swift_isaMask & *v5)))(v27);
  v29 = OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_isBottomHairlineHidden;
  v30 = v34[OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_isBottomHairlineHidden];
  v34[OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_isBottomHairlineHidden] = (v28 & 1) == 0;
  [*&v34[OBJC_IVAR____TtC16MusicApplication17TVShowPlayBarView_bottomHairlineView] setHidden:?];
  v31 = v34;
  if (v30 != v34[v29])
  {
    [v34 setNeedsLayout];
    v31 = v34;
  }
}

id sub_2920D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSTVShowPlayBarViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_292198()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2921D8@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_292234()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

Swift::Int sub_29228C()
{
  sub_ABB5C0();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 8))(v1, v2);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_29231C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 8))(v1, v2);
  sub_AB93F0();
}

Swift::Int sub_2923A0()
{
  sub_ABB5C0();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 8))(v1, v2);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_29242C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  if (v5 == (*(v9 + 8))(v8, v9) && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_ABB3C0();
  }

  return v12 & 1;
}

uint64_t sub_292508()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 deviceMediaLibrary];
  if (v5)
  {
    v6 = v5;
    sub_29712C();
    v7 = sub_ABA790();

    if (v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v8 = [v4 name];
  if (!v8)
  {
LABEL_7:
    v10 = 0;
    v12 = 0;
    goto LABEL_8;
  }

  v9 = v8;
  v10 = sub_AB92A0();
  v12 = v11;

LABEL_8:

  *(v1 + 32) = v10;
  *(v1 + 40) = v12;
  return result;
}

uint64_t sub_2925E4(char a1, uint64_t a2, void *a3)
{
  v6 = sub_AB35C0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_AB9250();
  __chkstk_darwin(v7 - 8);
  v8 = sub_AB9230();
  __chkstk_darwin(v8 - 8);
  if (a1)
  {
    sub_AB9220();
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    sub_AB9210(v15);
    v16._countAndFlagsBits = a2;
    v16._object = a3;
    sub_AB9200(v16);
    v9._countAndFlagsBits = 0x7262694C206E6920;
    v9._object = 0xEB00000000797261;
LABEL_6:
    sub_AB9210(v9);
    sub_AB9240();
    sub_AB3550();
    return sub_AB9320();
  }

  static ApplicationCapabilities.shared.getter(v13);
  v10 = v14;

  sub_70C54(v13);
  v11 = sub_472A84(2, v10);

  if ((v11 & 1) == 0)
  {
    sub_AB9220();
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    sub_AB9210(v20);
    v21._countAndFlagsBits = a2;
    v21._object = a3;
    sub_AB9200(v21);
    v9._countAndFlagsBits = 0x69646152206E6920;
    v9._object = 0xE90000000000006FLL;
    goto LABEL_6;
  }

  sub_AB9220();
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_AB9210(v17);
  v18._countAndFlagsBits = a2;
  v18._object = a3;
  sub_AB9200(v18);
  v19._countAndFlagsBits = 0x6C707041206E6920;
  v19._object = 0xEF636973754D2065;
  sub_AB9210(v19);
  sub_AB9240();
  sub_AB3550();
  return sub_AB9320();
}

id sub_292888(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

void sub_2928CC(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtCC16MusicApplication6Search3Bar_selectedSource] = 2;
  *&v4[OBJC_IVAR____TtCC16MusicApplication6Search3Bar____lazy_storage___impressionsTracker] = 0;
  v4[OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarKind] = 0;
  v9 = [objc_opt_self() deviceMediaLibrary];
  if (!v9)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = &v4[OBJC_IVAR____TtCC16MusicApplication6Search3Bar_barText];
  *v10 = 0u;
  *(v10 + 2) = v9;
  v10[24] = 2;
  *(v10 + 2) = 0u;
  v4[OBJC_IVAR____TtCC16MusicApplication6Search3Bar__showsScopeBar] = 0;
  v11 = OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView;
  v12 = [objc_allocWithZone(_s3BarC21ScopeBarContainerViewCMa()) init];
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 clearColor];
  [v14 setBackgroundColor:v15];

  [v14 setHidden:1];
  [v14 setAlpha:0.0];

  *&v4[v11] = v14;
  v29.receiver = v4;
  v29.super_class = _s3BarCMa();
  v16 = objc_msgSendSuper2(&v29, "initWithFrame:", a1, a2, a3, a4);
  v17 = OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView;
  v18 = *&v16[OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView];
  v19 = v16;
  [v19 addSubview:v18];
  if (v19[OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarKind])
  {
    v20 = &OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_resultScopeBar;
  }

  else
  {
    v20 = &OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_sourceScopeBar;
  }

  v21 = *(*&v16[v17] + *v20);
  [v21 setHidden:0];

  v22 = v19;
  v23 = [v22 searchField];
  if (!v23)
  {
    goto LABEL_9;
  }

  v24 = v23;
  [v23 setDelegate:v22];

  v25 = [v22 searchField];
  if (v25)
  {
    v26 = v22;
    [v25 addTarget:v26 action:"textFieldDidChange:" forControlEvents:0x20000];

    v27 = *(*&v16[v17] + OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_resultScopeBar);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = v27;

    sub_AB3920();

    return;
  }

LABEL_10:
  __break(1u);
}

void sub_292BDC(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v53 = a2;
  v66 = sub_AB3430();
  v64 = *(v66 - 8);
  v5 = __chkstk_darwin(v66);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v59 = &v51 - v9;
  v63 = v10;
  __chkstk_darwin(v8);
  v62 = &v51 - v11;
  v60 = v7;
  v52 = a1;
  if (!(a1 >> 62))
  {
    v12 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    v61 = a3;
    if (!v12)
    {
      goto LABEL_12;
    }

    goto LABEL_3;
  }

  v25 = sub_ABB060();
  if (v25 < 0)
  {
    __break(1u);
  }

  v12 = v25;
  v61 = a3;
  if (v25)
  {
LABEL_3:
    swift_beginAccess();
    v13 = 0;
    v56 = v64 + 16;
    v57 = v52 & 0xC000000000000001;
    v54 = v64 + 8;
    v55 = v64 + 32;
    v58 = v12;
    v14 = v66;
    do
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v23 = Strong;
        v24 = sub_29324C();

        if (v57)
        {
          sub_3605EC(v13, v52);
          swift_unknownObjectRelease();
        }

        v15 = v62;
        sub_AB3420();
        v16 = swift_allocObject();
        swift_weakInit();
        v17 = v64;
        v18 = *(v64 + 16);
        v65 = v24;
        v19 = v59;
        v18(v59, v15, v14);
        v20 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v21 = swift_allocObject();
        *(v21 + 16) = v16;
        *(v21 + 24) = v13;
        (*(v17 + 32))(v21 + v20, v19, v14);

        sub_48C6A0(sub_297634, v21);
        (*(v17 + 8))(v15, v14);

        v12 = v58;
      }

      ++v13;
    }

    while (v12 != v13);
  }

LABEL_12:
  v26 = v53;
  if (!(v53 >> 62))
  {
    v27 = *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8));
    v28 = v60;
    if (!v27)
    {
      return;
    }

    goto LABEL_14;
  }

  v50 = sub_ABB060();
  if (v50 < 0)
  {
    __break(1u);
  }

  v27 = v50;
  v28 = v60;
  if (v50)
  {
LABEL_14:
    swift_beginAccess();
    v29 = 0;
    v30 = v26 & 0xC000000000000001;
    v55 = v64 + 32;
    v56 = v64 + 16;
    v59 = (v64 + 8);
    v57 = v26 & 0xC000000000000001;
    v54 = v27;
    do
    {
      v31 = swift_unknownObjectWeakLoadStrong();
      if (v31)
      {
        v32 = v31;
        v33 = sub_29324C();

        if (v30)
        {
          v34 = sub_3605EC(v29, v26);
        }

        else
        {
          v34 = *(v26 + 8 * v29 + 32);
        }

        v65 = v34;
        sub_AB3420();
        v35 = swift_unknownObjectWeakLoadStrong();
        if (!v35 || (v36 = v35, sub_29330C(v29, v68), v36, v76 = v68[6], v77 = v68[7], v78[0] = v69[0], *(v78 + 9) = *(v69 + 9), v72 = v68[2], v73 = v68[3], v74 = v68[4], v75 = v68[5], v70 = v68[0], v71 = v68[1], sub_A996C(&v70) == 1))
        {
          (*v59)(v28, v66);
        }

        else
        {
          v85 = v76;
          v86 = v77;
          v87[0] = v78[0];
          *(v87 + 9) = *(v78 + 9);
          v81 = v72;
          v82 = v73;
          v83 = v74;
          v84 = v75;
          v79 = v70;
          v80 = v71;
          v58 = v33[11];
          v37 = swift_allocObject();
          swift_weakInit();
          v38 = v64;
          v39 = v62;
          v40 = v66;
          (*(v64 + 16))(v62, v60, v66);
          v41 = (*(v38 + 80) + 210) & ~*(v38 + 80);
          v42 = swift_allocObject();
          v43 = v86;
          *(v42 + 136) = v85;
          *(v42 + 152) = v43;
          *(v42 + 168) = v87[0];
          *(v42 + 177) = *(v87 + 9);
          v44 = v82;
          *(v42 + 72) = v81;
          *(v42 + 88) = v44;
          v45 = v84;
          *(v42 + 104) = v83;
          *(v42 + 120) = v45;
          v46 = v80;
          *(v42 + 40) = v79;
          *(v42 + 16) = v37;
          *(v42 + 24) = v29;
          v47 = v65;
          *(v42 + 32) = v65;
          *(v42 + 56) = v46;
          *(v42 + 200) = 0;
          *(v42 + 208) = 1025;
          v48 = v39;
          v27 = v54;
          (*(v38 + 32))(v42 + v41, v48, v40);

          v49 = v47;
          sub_132C20(v68, &v67);
          sub_48C6A0(sub_2977B4, v42);
          sub_12E1C(v68, qword_DF1340);
          (*(v38 + 8))(v60, v40);

          v30 = v57;
          v28 = v60;
          v26 = v53;
        }
      }

      ++v29;
    }

    while (v27 != v29);
  }
}

void *sub_29324C()
{
  v1 = OBJC_IVAR____TtCC16MusicApplication6Search3Bar____lazy_storage___impressionsTracker;
  if (*&v0[OBJC_IVAR____TtCC16MusicApplication6Search3Bar____lazy_storage___impressionsTracker])
  {
    v2 = *&v0[OBJC_IVAR____TtCC16MusicApplication6Search3Bar____lazy_storage___impressionsTracker];
  }

  else
  {
    v3 = *(*&v0[OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView] + OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_resultScopeBar);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC538);
    swift_allocObject();
    v2 = sub_2C11D0(v0, v3, 0, 0);
    *&v0[v1] = v2;
  }

  return v2;
}

double sub_29330C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(*(v2 + OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView) + OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_resultScopeBar);
  sub_AB3960();

  Array.subscript.getter(&_s3BarC18ResultScopeWrapperVN, &v46);
  if (*(&v47 + 1))
  {
    v49 = v46;
    v50 = v47;
    v51 = v48;

    v6 = *(&v50 + 1);
    v7 = v51;
    __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
    v8 = (*(v7 + 16))(v6, v7);
    v10 = v9;
    v11 = *(&v50 + 1);
    v12 = v51;
    __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
    v13 = (*(v12 + 16))(v11, v12);
    *&v20 = v8;
    *(&v20 + 1) = v10;
    *&v21 = v13;
    *(&v21 + 1) = v14;
    *&v22 = 2;
    *(&v22 + 1) = a1;
    *v23 = 512;
    v23[2] = 20;
    memset(&v23[8], 0, 72);
    v24[0] = 1;
    *&v24[8] = 0;
    *&v24[16] = 0;
    v24[24] = 2;
    v25[0] = v8;
    v25[1] = v10;
    v25[2] = v13;
    v25[3] = v14;
    v25[4] = 2;
    v25[5] = a1;
    v26 = 512;
    v27 = 20;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0;
    v33 = 1;
    v34 = 0;
    v35 = 0;
    v36 = 2;
    sub_465F4(&v20, &v52);
    sub_46650(v25);
    sub_297350(&v49);
    v43 = *&v23[48];
    v44 = *&v23[64];
    v45[0] = *v24;
    *(v45 + 9) = *&v24[9];
    v39 = v22;
    v40 = *v23;
    v41 = *&v23[16];
    v42 = *&v23[32];
    v37 = v20;
    v38 = v21;
    UIScreen.Dimensions.size.getter(*&v20);
    v58 = v43;
    v59 = v44;
    v60[0] = v45[0];
    *(v60 + 9) = *(v45 + 9);
    v54 = v39;
    v55 = v40;
    v56 = v41;
    v57 = v42;
    v52 = v37;
    v53 = v38;
  }

  else
  {
    sub_12E1C(&v46, &unk_DFC5A0);

    sub_465CC(&v52);
  }

  v15 = v59;
  a2[6] = v58;
  a2[7] = v15;
  a2[8] = v60[0];
  *(a2 + 137) = *(v60 + 9);
  v16 = v55;
  a2[2] = v54;
  a2[3] = v16;
  v17 = v57;
  a2[4] = v56;
  a2[5] = v17;
  result = *&v52;
  v19 = v53;
  *a2 = v52;
  a2[1] = v19;
  return result;
}

void sub_2935A0(char a1, char a2)
{
  v5 = v2[OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarKind];
  v6 = a1 & 1;
  v2[OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarKind] = a1 & 1;
  v7 = OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView;
  v8 = *&v2[OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView];
  v9 = *&v8[OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_sourceScopeBarOffset + 8];
  *&v8[OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_sourceScopeBarOffset + 8] = 0;
  if (v9 != 0.0)
  {
    [v8 setNeedsLayout];
  }

  v10 = *&v2[v7];
  v11 = *&v10[OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_resultScopeBarOffset + 8];
  *&v10[OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_resultScopeBarOffset + 8] = 0;
  if (v11 == 0.0)
  {
    if ((a1 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [v10 setNeedsLayout];
    if ((a1 & 1) == 0)
    {
LABEL_5:
      v12 = *&v2[v7];
      [v12 bounds];
      Height = CGRectGetHeight(v41);
      v14 = *&v12[OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_resultScopeBarOffset + 8];
      *&v12[OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_resultScopeBarOffset + 8] = Height;
      if (Height == v14)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v12 = *&v2[v7];
  [v12 bounds];
  v31 = -CGRectGetHeight(v42);
  v32 = *&v12[OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_sourceScopeBarOffset + 8];
  *&v12[OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_sourceScopeBarOffset + 8] = v31;
  if (v32 != v31)
  {
LABEL_6:
    [v12 setNeedsLayout];
  }

LABEL_7:

  if (v5 != (a1 & 1))
  {
    v15 = *&v2[v7];
    v16 = OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_resultScopeBar;
    v17 = OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_sourceScopeBar;
    if (v5)
    {
      v18 = OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_resultScopeBar;
    }

    else
    {
      v18 = OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_sourceScopeBar;
    }

    v19 = *&v15[v18];
    if (a1)
    {
      v20 = v16;
    }

    else
    {
      v20 = v17;
    }

    v33 = *&v15[v20];
    if (a2)
    {
      [v15 setClipsToBounds:1];
      [v33 setHidden:0];
      v21 = objc_opt_self();
      v22 = swift_allocObject();
      v22[2] = v19;
      v22[3] = v33;
      v22[4] = v2;
      v38 = sub_297208;
      v39 = v22;
      aBlock = _NSConcreteStackBlock;
      v35 = 1107296256;
      v36 = sub_1B5EB4;
      v37 = &block_descriptor_96;
      v23 = _Block_copy(&aBlock);
      v24 = v19;
      v25 = v33;
      v26 = v2;

      v27 = swift_allocObject();
      *(v27 + 16) = v6;
      *(v27 + 24) = v26;
      *(v27 + 32) = v24;
      v38 = sub_2972D0;
      v39 = v27;
      aBlock = _NSConcreteStackBlock;
      v35 = 1107296256;
      v36 = sub_1811AC;
      v37 = &block_descriptor_61;
      v28 = _Block_copy(&aBlock);
      v29 = v24;
      v30 = v26;

      [v21 animateWithDuration:2 delay:v23 usingSpringWithDamping:v28 initialSpringVelocity:0.35 options:0.0 animations:0.9 completion:1.0];

      _Block_release(v28);
      _Block_release(v23);
    }

    else
    {
      [v15 setClipsToBounds:0];
      [v33 setHidden:0];
      [v19 setHidden:1];
    }
  }
}

void sub_293974()
{
  v4.receiver = v0;
  v4.super_class = _s3BarCMa();
  objc_msgSendSuper2(&v4, "layoutSubviews");
  v1 = OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView;
  v2 = *&v0[OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView];
  [v0 bounds];
  [v2 sizeThatFits:{CGRectGetWidth(v5), 0.0}];

  v3 = *&v0[v1];
  [v0 bounds];
  CGRectGetMaxY(v6);
  [v0 bounds];
  CGRectGetWidth(v7);
  [v0 effectiveUserInterfaceLayoutDirection];
  [v0 bounds];
  sub_ABA490();
  [v3 setFrame:?];
}

void sub_293AD4(uint64_t a1)
{
  v2 = v1;
  v12.receiver = v1;
  v12.super_class = _s3BarCMa();
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = UITraitCollection.mediaLibrary.getter();

  if (!a1)
  {

    goto LABEL_5;
  }

  v6 = UITraitCollection.mediaLibrary.getter();
  sub_29712C();
  v7 = sub_ABA790();

  if ((v7 & 1) == 0)
  {
LABEL_5:
    v8 = [v2 traitCollection];
    v9 = UITraitCollection.mediaLibrary.getter();

    v10 = &v2[OBJC_IVAR____TtCC16MusicApplication6Search3Bar_barText];
    swift_beginAccess();
    v11 = *(v10 + 2);
    *(v10 + 2) = v9;

    sub_292508();
    swift_endAccess();
    sub_294A9C();
  }
}

id sub_293C64(uint64_t a1, double a2, double a3)
{
  v7 = OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView;
  if ([*&v3[OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView] isHidden] & 1) != 0 || (objc_msgSend(*(*&v3[v7] + OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_resultScopeBar), "isHidden"))
  {
    v14.receiver = v3;
    v14.super_class = _s3BarCMa();
    v8 = objc_msgSendSuper2(&v14, "hitTest:withEvent:", a1, a2, a3);
  }

  else
  {
    [*(*&v3[v7] + OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_resultScopeBar) convertPoint:v3 fromCoordinateSpace:{a2, a3}];
    v11 = v10;
    v13 = v12;
    [*(*&v3[v7] + OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_resultScopeBar) bounds];
    v17.x = v11;
    v17.y = v13;
    if (CGRectContainsPoint(v18, v17))
    {
      v8 = [*(*&v3[v7] + OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_resultScopeBar) hitTest:a1 withEvent:{v11, v13}];
    }

    else
    {
      v15.receiver = v3;
      v15.super_class = _s3BarCMa();
      v8 = objc_msgSendSuper2(&v15, "hitTest:withEvent:", a1, a2, a3);
    }
  }

  return v8;
}

void sub_293E4C(char a1, char a2)
{
  v3 = v2;
  v6 = a1 & 1;
  ObjectType = swift_getObjectType();
  if ([v3 showsScopeBar] != v6)
  {
    v3[OBJC_IVAR____TtCC16MusicApplication6Search3Bar__showsScopeBar] = v6;
    [v3 setNeedsLayout];
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v3;
    *(v8 + 32) = ObjectType;
    v9 = OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView;
    v10 = *&v3[OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView];
    if (a2)
    {
      v11 = v3;
      [v10 setHidden:0];
      v12 = objc_opt_self();
      v13 = swift_allocObject();
      *(v13 + 16) = v6;
      *(v13 + 24) = v11;
      *(v13 + 32) = sub_2973B8;
      *(v13 + 40) = v8;
      v33 = sub_297404;
      v34 = v13;
      v29 = _NSConcreteStackBlock;
      v30 = 1107296256;
      v31 = sub_1B5EB4;
      v32 = &block_descriptor_70_0;
      v14 = _Block_copy(&v29);
      v15 = v11;

      v16 = swift_allocObject();
      *(v16 + 16) = v6;
      *(v16 + 24) = v15;
      v33 = sub_29744C;
      v34 = v16;
      v29 = _NSConcreteStackBlock;
      v30 = 1107296256;
      v31 = sub_1811AC;
      v32 = &block_descriptor_76;
      v17 = _Block_copy(&v29);
      v18 = v15;

      [v12 animateKeyframesWithDuration:0 delay:v14 options:v17 animations:0.35 completion:0.0];

      _Block_release(v17);
      _Block_release(v14);
    }

    else
    {
      if (a1)
      {
        v19 = 1.0;
      }

      else
      {
        v19 = 0.0;
      }

      v20 = v3;
      [v10 setAlpha:v19];
      left = UIEdgeInsetsZero.left;
      if (a1)
      {
        right = UIEdgeInsetsZero.right;
        [*&v3[v9] intrinsicContentSize];
        bottom = v23 + 24.0;
        v25 = 4;
      }

      else
      {
        v25 = 0;
        bottom = UIEdgeInsetsZero.bottom;
        right = UIEdgeInsetsZero.right;
      }

      [v20 _setOverrideContentInsets:v25 forRectEdges:{UIEdgeInsetsZero.top, left, bottom, right}];
      [v20 sizeToFit];
      [v20 layoutIfNeeded];
      v26 = [v20 superview];
      [v26 sizeToFit];

      v27 = [v20 superview];
      [v27 layoutIfNeeded];

      v28 = *&v3[v9];
      [v28 setHidden:(a1 & 1) == 0];
    }
  }
}

void sub_294210(char a1, char *a2)
{
  left = UIEdgeInsetsZero.left;
  if (a1)
  {
    right = UIEdgeInsetsZero.right;
    [*&a2[OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView] intrinsicContentSize];
    bottom = v5 + 24.0;
    v7 = 4;
  }

  else
  {
    v7 = 0;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  [a2 _setOverrideContentInsets:v7 forRectEdges:{UIEdgeInsetsZero.top, left, bottom, right}];
  [a2 sizeToFit];
  [a2 layoutIfNeeded];
  v8 = [a2 superview];
  [v8 sizeToFit];

  v9 = [a2 superview];
  [v9 layoutIfNeeded];
}

uint64_t sub_294334(char a1, void *a2, uint64_t (*a3)(void))
{
  if (a1)
  {
    v6 = 0.7;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a1;
  v12[4] = sub_297500;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1B5EB4;
  v12[3] = &block_descriptor_82;
  v9 = _Block_copy(v12);
  v10 = a2;

  [v7 addKeyframeWithRelativeStartTime:v9 relativeDuration:v6 animations:0.3];
  _Block_release(v9);
  return a3();
}

uint64_t sub_2946A8()
{
  v1 = v0 + OBJC_IVAR____TtCC16MusicApplication6Search3Bar_barText;
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (*(v1 + 40))
  {
    v3 = *(v1 + 32);

    v4 = v2;
  }

  else
  {
    v5 = *(v1 + 24);

    v6 = v2;
    if (v5 == 2)
    {
      v3 = 0;
    }

    else
    {
      v3 = sub_474EF0(v5 & 1);
    }
  }

  return v3;
}

void sub_2948B8(void *a1)
{
  v3 = [a1 text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_AB92A0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = &v1[OBJC_IVAR____TtCC16MusicApplication6Search3Bar_barText];
  swift_beginAccess();
  *v8 = v5;
  v8[1] = v7;

  sub_294A9C();
  v9 = [v1 delegate];
  if (v9)
  {
    v10 = v9;
    if ([v9 respondsToSelector:"searchBar:textDidChange:"])
    {
      v11 = [a1 text];
      if (v11)
      {
        v12 = v11;
        sub_AB92A0();
      }

      v13 = sub_AB9260();
      [v10 searchBar:v1 textDidChange:v13];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_294A9C()
{
  v1 = [v0 searchField];
  if (!v1)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v2 = v1;
  v3 = &v0[OBJC_IVAR____TtCC16MusicApplication6Search3Bar_barText];
  swift_beginAccess();
  v4 = *(v3 + 2);
  if (*(v3 + 5))
  {

    v5 = v4;
  }

  else
  {
    v6 = v3[24];
    if (v6 == 2)
    {

      v7 = v4;
      v8 = 0;
      goto LABEL_8;
    }

    v9 = v4;
    sub_474EF0(v6 & 1);
  }

  swift_bridgeObjectRetain_n();
  v8 = sub_AB9260();

LABEL_8:
  [v2 setPlaceholder:v8];

  v10 = [v0 searchTextField];
  v11 = [v10 isFirstResponder];

  v12 = *(v3 + 1);
  if (!v12)
  {
    if (v11)
    {
      return;
    }

LABEL_17:
    v21 = [v0 searchField];
    if (v21)
    {
      v20 = v21;
      [v21 setText:0];
      goto LABEL_19;
    }

    goto LABEL_27;
  }

  if (v11)
  {
    return;
  }

  v13 = *v3;
  v14 = *v3 & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v12) & 0xF;
  }

  if (!v14)
  {
    goto LABEL_17;
  }

  v15 = *(v3 + 2);
  v16 = v3[24];

  v17 = v15;

  v18 = sub_296914(v13, v12, v17, v16);

  v19 = [v0 searchField];
  v20 = v19;
  if (!v18)
  {
    if (v19)
    {
      if (*(v3 + 1))
      {

        v22 = sub_AB9260();
      }

      else
      {
        v22 = 0;
      }

      [v20 setText:v22];

      v20 = v22;
      goto LABEL_19;
    }

LABEL_29:
    __break(1u);
    return;
  }

  if (!v19)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v19 setAttributedText:v18];

LABEL_19:
}

char *sub_294D54()
{
  v1 = v0;
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  __chkstk_darwin(v3 - 8);
  v4 = OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_resultScopeBar;
  *&v1[v4] = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC588)) init];
  v5 = OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_sourceScopeBar;
  v6 = objc_allocWithZone(_s3BarC14SourceScopeBarCMa());
  sub_2956CC(_swiftEmptyArrayStorage);
  *&v1[v5] = v7;
  v8 = &v1[OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_resultScopeBarOffset];
  vertical = UIOffsetZero.vertical;
  *v8 = UIOffsetZero.horizontal;
  v8[1] = vertical;
  v10 = &v1[OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_sourceScopeBarOffset];
  *v10 = UIOffsetZero.horizontal;
  v10[1] = vertical;
  v19.receiver = v1;
  v19.super_class = _s3BarC21ScopeBarContainerViewCMa();
  v11 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v12 = OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_resultScopeBar;
  v13 = *&v11[OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_resultScopeBar];
  v14 = v11;
  [v13 setHidden:1];
  v15 = OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_sourceScopeBar;
  [*&v14[OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_sourceScopeBar] setHidden:1];
  v16 = *&v14[v15];
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v17 = sub_AB9260();

  [v16 setAccessibilityLabel:v17];

  [v14 addSubview:*&v11[v12]];
  [v14 addSubview:*&v14[v15]];

  return v14;
}

id sub_295004()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC580);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v22 - v4);
  v6 = _s3BarC21ScopeBarContainerViewCMa();
  v23.receiver = v0;
  v23.super_class = v6;
  objc_msgSendSuper2(&v23, "layoutSubviews");
  [v0 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  *v22 = v13;
  [v0 music_inheritedLayoutInsets];
  v22[1] = v15;
  v16 = *&v0[OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_resultScopeBar];
  *v5 = v15;
  v5[1] = v17;
  v5[2] = v18;
  v5[3] = v19;
  (*(v3 + 104))(v5, enum case for ScopeBar.ContentInsetMode.custom<A>(_:), v2);
  sub_AB3940();
  [v16 sizeThatFits:{v12, v14}];
  sub_ABA460();
  sub_ABA4E0();
  v24 = 0u;
  v25 = 0u;
  v26 = 1;
  sub_ABA480();
  [v16 setFrame:?];
  v20 = *&v1[OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_sourceScopeBar];
  [v20 intrinsicContentSize];
  v27.origin.x = v8;
  v27.origin.y = v10;
  v27.size.width = v12;
  *&v27.size.height = v22[0];
  CGRectGetWidth(v27);
  sub_AB9E60();
  sub_ABA460();
  sub_ABA4E0();
  sub_ABA480();
  return [v20 setFrame:?];
}

uint64_t sub_295494(double a1, double a2)
{
  [*(v2 + OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_resultScopeBar) sizeThatFits:?];
  [*(v2 + OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_sourceScopeBar) sizeThatFits:{a1, a2}];
  sub_7FD28();
  sub_AB38E0();
  return sub_AB38E0();
}

void sub_2956CC(uint64_t a1)
{
  v3 = sub_AB35C0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_AB9250();
  __chkstk_darwin(v4 - 8);
  v5 = &v1[OBJC_IVAR____TtCCC16MusicApplication6Search3Bar14SourceScopeBar_selectionHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtCCC16MusicApplication6Search3Bar14SourceScopeBar_sources] = a1;
  v6 = _s3BarC14SourceScopeBarCMa();
  v30.receiver = v1;
  v30.super_class = v6;

  v7 = objc_msgSendSuper2(&v30, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v25 = v6;
    v9 = a1 + 32;
    v24 = v7;
    v10 = v7;
    v11 = 0;
    v29 = a1;
    v28 = v8;
    v27 = a1 + 32;
    v26 = v10;
    while (v11 < *(a1 + 16))
    {
      if (*(v9 + v11))
      {
        sub_AB91E0();
        sub_AB3550();
      }

      else
      {
        static ApplicationCapabilities.shared.getter(v31);
        v13 = v32;
        v33 = v32;

        sub_70C54(v31);
        if (*(v13 + 16))
        {
          sub_ABB5C0();
          sub_AB93F0();
          v14 = sub_ABB610();
          v15 = -1 << *(v13 + 32);
          v16 = v14 & ~v15;
          if ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
          {
            v17 = ~v15;
            while (1)
            {
              v18 = *(*(v13 + 48) + v16);
              if (v18 <= 4)
              {
                if (*(*(v13 + 48) + v16) > 1u && v18 == 2)
                {
LABEL_24:

                  break;
                }
              }

              else if (*(*(v13 + 48) + v16) > 7u && v18 == 8 && 0x8000000000B5B970 == 0x8000000000B5B9B0)
              {
                goto LABEL_24;
              }

              v19 = sub_ABB3C0();

              if ((v19 & 1) == 0)
              {
                v16 = (v16 + 1) & v17;
                if ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
                {
                  continue;
                }
              }

              break;
            }
          }
        }

        sub_12E1C(&v33, &unk_DFC570);
        sub_AB91E0();
        sub_AB3550();
        a1 = v29;
        v8 = v28;
        v9 = v27;
        v10 = v26;
      }

      ++v11;
      sub_AB9320();
      v12 = sub_AB9260();

      [v10 addSegmentWithTitle:v12];

      if (v11 == v8)
      {

        v6 = v25;
        v20 = v24;
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  else
  {
    v20 = v7;
    v21 = v7;

LABEL_28:
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = v20;
    ControlEventHandling<>.on(_:handler:)(4096, sub_297124, v22, v6);

    [v23 setSelectedSegmentIndex:0];
  }
}

void sub_295C90()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *&Strong[OBJC_IVAR____TtCCC16MusicApplication6Search3Bar14SourceScopeBar_selectionHandler];
    if (v2)
    {

      v3 = [v1 selectedSegmentIndex];
      if ((v3 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v4 = *&v1[OBJC_IVAR____TtCCC16MusicApplication6Search3Bar14SourceScopeBar_sources];
        if (v3 < *(v4 + 16))
        {
          v5 = *(v4 + v3 + 32);

          v2(v5);

          sub_17654(v2);
          return;
        }
      }

      __break(1u);
    }

    else
    {
    }
  }
}

void sub_295DE8()
{
  v1 = v0;
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  __chkstk_darwin(v3 - 8);
  v4 = OBJC_IVAR____TtCCC16MusicApplication6Search3Bar14SourceScopeBar_sources;
  v5 = *(*&v0[OBJC_IVAR____TtCCC16MusicApplication6Search3Bar14SourceScopeBar_sources] + 16);
  v6 = [v1 selectedSegmentIndex];
  v7 = 2;
  if ((v6 & 0x8000000000000000) == 0 && v6 < v5)
  {
    v8 = [v1 selectedSegmentIndex];
    if ((v8 & 0x8000000000000000) != 0)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v9 = *&v1[v4];
    if (v8 >= *(v9 + 16))
    {
LABEL_38:
      __break(1u);
      return;
    }

    v7 = *(v9 + v8 + 32);
  }

  [v1 removeAllSegments];
  v10 = *&v1[v4];
  v11 = *(v10 + 16);
  if (v11)
  {
    v26 = v4;
    v12 = v10 + 32;

    v13 = 0;
    v30 = v1;
    v29 = v10;
    v28 = v11;
    v27 = v10 + 32;
    while (v13 < *(v10 + 16))
    {
      if (*(v12 + v13))
      {
        sub_AB91E0();
        sub_AB3550();
      }

      else
      {
        static ApplicationCapabilities.shared.getter(v31);
        v15 = v32;
        v33 = v32;

        sub_70C54(v31);
        if (*(v15 + 16))
        {
          sub_ABB5C0();
          sub_AB93F0();
          v16 = sub_ABB610();
          v17 = -1 << *(v15 + 32);
          v18 = v16 & ~v17;
          if ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
          {
            v19 = ~v17;
            while (1)
            {
              v20 = *(*(v15 + 48) + v18);
              if (v20 <= 4)
              {
                if (*(*(v15 + 48) + v18) > 1u && v20 == 2)
                {
LABEL_29:

                  break;
                }
              }

              else if (*(*(v15 + 48) + v18) > 7u && v20 == 8 && 0x8000000000B5B970 == 0x8000000000B5B9B0)
              {
                goto LABEL_29;
              }

              v21 = sub_ABB3C0();

              if ((v21 & 1) == 0)
              {
                v18 = (v18 + 1) & v19;
                if ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
                {
                  continue;
                }
              }

              break;
            }
          }
        }

        sub_12E1C(&v33, &unk_DFC570);
        sub_AB91E0();
        sub_AB3550();
        v1 = v30;
        v10 = v29;
        v11 = v28;
        v12 = v27;
      }

      ++v13;
      sub_AB9320();
      v14 = sub_AB9260();

      [v1 addSegmentWithTitle:v14];

      if (v13 == v11)
      {

        v4 = v26;
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_32:
  if (v7 != 2)
  {
    v22 = *&v1[v4];

    v23 = sub_469CF8(v7 & 1, v22);
    v25 = v24;

    if ((v25 & 1) == 0)
    {
      [v1 setSelectedSegmentIndex:v23];
    }
  }
}

id sub_296464(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_296584(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2965CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_296624(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29666C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_2966DC()
{
  result = qword_DFC4F8;
  if (!qword_DFC4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFC4F8);
  }

  return result;
}

unint64_t sub_296734()
{
  result = qword_DFC500;
  if (!qword_DFC500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFC500);
  }

  return result;
}

unint64_t sub_29678C()
{
  result = qword_DFC508;
  if (!qword_DFC508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFC508);
  }

  return result;
}

double sub_2967F0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_29330C(*a1, v8);
  v3 = v8[7];
  a2[6] = v8[6];
  a2[7] = v3;
  a2[8] = v9[0];
  *(a2 + 137) = *(v9 + 9);
  v4 = v8[3];
  a2[2] = v8[2];
  a2[3] = v4;
  v5 = v8[5];
  a2[4] = v8[4];
  a2[5] = v5;
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  a2[1] = v7;
  return result;
}

unint64_t sub_296858()
{
  result = qword_DFC530;
  if (!qword_DFC530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFC538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFC530);
  }

  return result;
}

uint64_t sub_2968BC(uint64_t a1, uint64_t a2)
{
  result = sub_297178(&qword_DFC568, a2, _s3BarCMa);
  *(a1 + 16) = result;
  return result;
}

id sub_296914(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  result = [objc_opt_self() deviceMediaLibrary];
  if (result)
  {
    v8 = result;
    sub_29712C();
    v9 = a3;
    v10 = sub_ABA790();

    result = 0;
    if (v10)
    {
      if (a2)
      {
        v11 = String.trim()();
        if (a4 == 2)
        {

          return 0;
        }

        sub_2925E4(a4 & 1, v11._countAndFlagsBits, v11._object);
        v12 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFA730);
        inited = swift_initStackObject();
        *(inited + 32) = NSFontAttributeName;
        *(inited + 16) = xmmword_AF85F0;
        *(inited + 40) = v12;
        *(inited + 48) = NSForegroundColorAttributeName;
        v14 = qword_DE6A60;
        v15 = NSFontAttributeName;
        v16 = NSForegroundColorAttributeName;
        v17 = v15;
        v18 = v16;
        v19 = v12;
        if (v14 != -1)
        {
          swift_once();
        }

        v20 = qword_DFC410;
        *(inited + 56) = qword_DFC410;
        v21 = v20;
        v38 = sub_96A34(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFC590);
        swift_arrayDestroy();
        v22 = swift_initStackObject();
        *(v22 + 16) = xmmword_AF85F0;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
        *(v22 + 48) = v18;
        v23 = qword_DE6A68;
        v37 = v19;
        if (v23 != -1)
        {
          swift_once();
        }

        v24 = qword_DFC418;
        *(v22 + 56) = qword_DFC418;
        v25 = v24;
        v26 = sub_96A34(v22);
        swift_setDeallocating();
        swift_arrayDestroy();
        sub_3E856C(v26);
        v27 = objc_allocWithZone(NSMutableAttributedString);
        v28 = sub_AB9260();
        type metadata accessor for Key(0);
        sub_297178(&qword_DE6EF0, 255, type metadata accessor for Key);
        isa = sub_AB8FD0().super.isa;

        v30 = [v27 initWithString:v28 attributes:isa];

        v31 = sub_AB9260();

        v32 = sub_AB9260();
        v33 = [v31 rangeOfString:v32 options:129];
        v35 = v34;

        if (v33 == sub_AB2A10())
        {

          return 0;
        }

        sub_3E856C(v38);
        v36 = sub_AB8FD0().super.isa;

        [v30 addAttributes:v36 range:{v33, v35}];

        return v30;
      }
    }
  }

  return result;
}

void sub_296D90()
{
  *(v0 + OBJC_IVAR____TtCC16MusicApplication6Search3Bar_selectedSource) = 2;
  *(v0 + OBJC_IVAR____TtCC16MusicApplication6Search3Bar____lazy_storage___impressionsTracker) = 0;
  *(v0 + OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarKind) = 0;
  v1 = [objc_opt_self() deviceMediaLibrary];
  if (!v1)
  {
    __break(1u);
  }

  v2 = v0 + OBJC_IVAR____TtCC16MusicApplication6Search3Bar_barText;
  *v2 = 0u;
  *(v2 + 16) = v1;
  *(v2 + 24) = 2;
  *(v2 + 32) = 0u;
  *(v0 + OBJC_IVAR____TtCC16MusicApplication6Search3Bar__showsScopeBar) = 0;
  v3 = OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView;
  v4 = [objc_allocWithZone(_s3BarC21ScopeBarContainerViewCMa()) init];
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 clearColor];
  [v6 setBackgroundColor:v7];

  [v6 setHidden:1];
  [v6 setAlpha:0.0];

  *(v0 + v3) = v6;
  sub_ABAFD0();
  __break(1u);
}

void sub_296F10()
{
  v1 = [v0 searchField];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  [v1 setAttributedText:0];

  v3 = [v0 searchField];
  if (!v3)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = &v0[OBJC_IVAR____TtCC16MusicApplication6Search3Bar_barText];
  swift_beginAccess();
  if (*(v5 + 1))
  {

    v6 = sub_AB9260();
  }

  else
  {
    v6 = 0;
  }

  [v4 setText:v6];
}

void sub_297004()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_resultScopeBar;
  *(v1 + v2) = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC588)) init];
  v3 = OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_sourceScopeBar;
  v4 = objc_allocWithZone(_s3BarC14SourceScopeBarCMa());
  sub_2956CC(_swiftEmptyArrayStorage);
  *(v1 + v3) = v5;
  v6 = (v1 + OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_resultScopeBarOffset);
  vertical = UIOffsetZero.vertical;
  *v6 = UIOffsetZero.horizontal;
  v6[1] = vertical;
  v8 = (v1 + OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_sourceScopeBarOffset);
  *v8 = UIOffsetZero.horizontal;
  v8[1] = vertical;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_2970EC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

unint64_t sub_29712C()
{
  result = qword_DF86B0;
  if (!qword_DF86B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DF86B0);
  }

  return result;
}

uint64_t sub_297178(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2971C0()
{

  return swift_deallocObject();
}

id sub_297208()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  [v1 setAlpha:0.0];
  [v2 setAlpha:1.0];
  v4 = *(v3 + OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView);

  return [v4 layoutIfNeeded];
}

uint64_t block_copy_helper_96(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_297290()
{

  return swift_deallocObject();
}

void sub_2972D0()
{
  v1 = *(v0 + 24);
  if (*(v0 + 16) == *(v1 + OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarKind))
  {
    [*(v0 + 32) setHidden:1];
    v2 = *(v1 + OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView);

    [v2 setClipsToBounds:0];
  }
}

uint64_t sub_297380()
{

  return swift_deallocObject();
}

uint64_t sub_2973C4()
{

  return swift_deallocObject();
}

uint64_t sub_297414()
{

  return swift_deallocObject();
}

id sub_29744C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = [v2 showsScopeBar];
  if (v1 == result)
  {
    v4 = *&v2[OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView];

    return [v4 setHidden:v1 ^ 1u];
  }

  return result;
}

uint64_t sub_2974C8()
{

  return swift_deallocObject();
}

id sub_297500()
{
  v1 = 0.0;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(*(v0 + 16) + OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView) setAlpha:v1];
}

uint64_t sub_297538()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_297570()
{
  v1 = sub_AB3430();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_297634()
{
  v1 = *(sub_AB3430() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_471B58(v2, v3, v4);
}

uint64_t sub_297698()
{
  v1 = sub_AB3430();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);

  v4 = *(v0 + 72);
  if (v4 >= 9)
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 210) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_2977B4()
{
  v1 = *(sub_AB3430() - 8);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  v6 = *(v0 + 16);
  v7 = *(v0 + 209);
  v8 = v0 + ((*(v1 + 80) + 210) & ~*(v1 + 80));

  return sub_46CC94(v6, v2, v3, (v0 + 40), v4, v5, v7, v8);
}

uint64_t EnvironmentMonitorObserver.networkType.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_297918@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_29799C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_AB5520();
}

uint64_t sub_297A2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC658);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC5B8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t EnvironmentMonitorObserver.isNetworkConstrained.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_297C54@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_297CD8(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_AB5520();
}

uint64_t sub_297D68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC650);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t EnvironmentMonitorObserver.thermalLevel.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_297F90@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_298014(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_AB5520();
}

uint64_t sub_2980A4(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  sub_AB54E0();
  return swift_endAccess();
}

uint64_t sub_29811C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  sub_AB54E0();
  return swift_endAccess();
}

uint64_t sub_298198(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA08);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA28);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

Swift::Int sub_29837C()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_ABB5D0(qword_B07E70[v1]);
  return sub_ABB610();
}

Swift::Int sub_298404()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_ABB5D0(qword_B07E70[v1]);
  return sub_ABB610();
}

uint64_t sub_298450@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore18EnvironmentMonitorC12ThermalLevelO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t EnvironmentMonitorObserver.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC16MusicApplication26EnvironmentMonitorObserver_environmentMonitor;
  v3 = [objc_opt_self() sharedMonitor];
  *&v0[v2] = v3;
  v4 = [v3 networkType];
  swift_beginAccess();
  v9 = v4;
  type metadata accessor for ICEnvironmentNetworkType(0);
  sub_AB54D0();
  swift_endAccess();
  LOBYTE(v4) = [*&v0[v2] isNetworkConstrained];
  swift_beginAccess();
  LOBYTE(v9) = v4;
  sub_AB54D0();
  swift_endAccess();
  result = [*&v0[v2] currentThermalLevel];
  if (HIDWORD(result))
  {
    __break(1u);
  }

  else
  {
    v6 = sub_2991F8(result);
    swift_beginAccess();
    LOBYTE(v9) = v6;
    sub_AB54D0();
    swift_endAccess();
    v8.receiver = v0;
    v8.super_class = ObjectType;
    v7 = objc_msgSendSuper2(&v8, "init");
    [*&v7[OBJC_IVAR____TtC16MusicApplication26EnvironmentMonitorObserver_environmentMonitor] registerObserver:v7];
    return v7;
  }

  return result;
}

id EnvironmentMonitorObserver.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC16MusicApplication26EnvironmentMonitorObserver_environmentMonitor] unregisterObserver:v0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_2988FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_AB9940();
  v5[4] = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_298994, v7, v6);
}

uint64_t sub_298994()
{
  v1 = *(v0 + 16);
  v2 = [*(v0 + 24) isNetworkConstrained];
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 40) = v2;
  v3 = v1;
  sub_AB5520();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_298A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_AB9940();
  v5[5] = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_298B34, v7, v6);
}

uint64_t sub_298B34()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 32) networkType];
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 16) = v2;
  v3 = v1;
  sub_AB5520();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_298C3C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_AB9990();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_AB9940();
  v10 = v3;
  v11 = a1;
  v12 = sub_AB9930();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v10;
  v13[5] = v11;
  sub_DBDC8(0, 0, v8, a3, v13);
}

uint64_t sub_298D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_AB9940();
  v5[4] = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_298E08, v7, v6);
}

unint64_t sub_298E08()
{
  result = [*(v0 + 24) currentThermalLevel];
  if (HIDWORD(result))
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    v3 = sub_2991F8(result);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 40) = v3;
    v4 = v2;
    sub_AB5520();

    v5 = *(v0 + 8);

    return v5();
  }

  return result;
}

uint64_t sub_298F04(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_AB9990();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_AB9940();
  v12 = a3;
  v13 = a1;
  v14 = v12;
  v15 = sub_AB9930();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v13;
  v16[5] = v14;
  sub_DBDC8(0, 0, v10, a5, v16);
}

uint64_t EnvironmentMonitorObserver.ThermalLevel.description.getter(unsigned __int8 a1)
{
  v1 = 0x6C616E696D6F6ELL;
  v2 = 0x676E697065656C73;
  if (a1 != 5)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  v3 = 0x7976616568;
  if (a1 != 3)
  {
    v3 = 0x676E697070617274;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x746867696CLL;
  if (a1 != 1)
  {
    v4 = 0x6574617265646F6DLL;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_299128()
{
  v1 = *v0;
  v2 = 0x6C616E696D6F6ELL;
  v3 = 0x676E697065656C73;
  if (v1 != 5)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  v4 = 0x7976616568;
  if (v1 != 3)
  {
    v4 = 0x676E697070617274;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x746867696CLL;
  if (v1 != 1)
  {
    v5 = 0x6574617265646F6DLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2991F8(uint64_t result)
{
  if (result > 29)
  {
    switch(result)
    {
      case 0x1E:
        return 3;
      case 0x28:
        return 4;
      case 0x32:
        return 5;
    }
  }

  else
  {
    switch(result)
    {
      case 0:
        return result;
      case 0xA:
        return 1;
      case 0x14:
        return 2;
    }
  }

  return 6;
}

uint64_t _s9MusicCore18EnvironmentMonitorC12ThermalLevelO8rawValueAESgSi_tcfC_0(uint64_t result)
{
  if (result > 19)
  {
    if (result > 39)
    {
      if (result == 40)
      {
        return 4;
      }

      if (result == 50)
      {
        return 5;
      }
    }

    else
    {
      if (result == 20)
      {
        return 2;
      }

      if (result == 30)
      {
        return 3;
      }
    }

    return 7;
  }

  if (result == -1)
  {
    return 6;
  }

  if (result)
  {
    if (result == 10)
    {
      return 1;
    }

    return 7;
  }

  return result;
}

uint64_t sub_2992DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17CF8;

  return sub_2988FC(a1, v4, v5, v7, v6);
}

uint64_t sub_29939C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17CF8;

  return sub_298A9C(a1, v4, v5, v7, v6);
}

uint64_t sub_29945C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17CF8;

  return sub_298D70(a1, v4, v5, v7, v6);
}

uint64_t type metadata accessor for EnvironmentMonitorObserver()
{
  result = qword_DFC620;
  if (!qword_DFC620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_299610()
{
  sub_299740();
  if (v0 <= 0x3F)
  {
    sub_299798(319, &qword_DFC638);
    if (v1 <= 0x3F)
    {
      sub_299798(319, &unk_DFC640);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_299740()
{
  if (!qword_DFC630)
  {
    type metadata accessor for ICEnvironmentNetworkType(255);
    v0 = sub_AB5540();
    if (!v1)
    {
      atomic_store(v0, &qword_DFC630);
    }
  }
}

void sub_299798(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_AB5540();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_2997F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17BD0;

  return sub_298A9C(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm_5()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_2999C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10.receiver = v2;
  v10.super_class = type metadata accessor for JSShelfModelRequest();
  objc_msgSendSuper2(&v10, "copyWithZone:", a1);
  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_808B0(a2, v9);
  if (swift_dynamicCast())
  {
    v5 = *&v2[OBJC_IVAR____TtC16MusicApplication19JSShelfModelRequest_shelfViewModel];
    v6 = *&v8[OBJC_IVAR____TtC16MusicApplication19JSShelfModelRequest_shelfViewModel];
    *&v8[OBJC_IVAR____TtC16MusicApplication19JSShelfModelRequest_shelfViewModel] = v5;
    v7 = v5;
  }
}

uint64_t sub_299AE4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_13C80(0, &qword_DE8ED0);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;

  v13 = a4;

  v14 = a1;
  swift_errorRetain();
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_29BEA4, v12);
}

uint64_t sub_299BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v13 = *(*a1 + 152);

  v14 = a5;
  swift_errorRetain();
  v13(a2, sub_AAED4, v12);
}

void sub_299E64(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC16MusicApplication28JSShelfModelRequestOperation_request];
  v2 = *&v1[OBJC_IVAR____TtC16MusicApplication19JSShelfModelRequest_shelfViewModel];
  if (!v2)
  {
LABEL_45:
    __break(1u);
    return;
  }

  v42 = v2;
  v3 = [v1 sectionProperties];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 sectionKind];
    if (v5)
    {
      v6 = v5;
      [v5 modelClass];

      swift_getObjCClassMetadata();
      v7 = [swift_getObjCClassFromMetadata() requiredStoreLibraryPersonalizationProperties];
      v8 = [v4 propertySetByCombiningWithPropertySet:v7];

      type metadata accessor for JSModelShelfSectionBuilder();
      v9 = swift_allocObject();
      *(v9 + 30) = 0;
      *(v9 + 14) = 0;
      *(v9 + 6) = 2;
      v9[2] = v8;

      goto LABEL_7;
    }
  }

  v9 = 0;
LABEL_7:
  v10 = [v1 itemProperties];
  v41 = v1;
  if (!v10)
  {
LABEL_11:
    v17 = 0;
    goto LABEL_12;
  }

  v11 = v10;
  v12 = [v1 itemKind];
  if (!v12)
  {

    goto LABEL_11;
  }

  v13 = v12;
  [v12 modelClass];

  swift_getObjCClassMetadata();
  v14 = [swift_getObjCClassFromMetadata() requiredStoreLibraryPersonalizationProperties];
  v15 = [v11 propertySetByCombiningWithPropertySet:v14];

  v16 = objc_allocWithZone(type metadata accessor for JSModelGridItemBuilder());
  v17 = sub_4E1C54(v15);

LABEL_12:
  v54 = [objc_allocWithZone(MPMutableSectionedCollection) init];
  v53 = [objc_allocWithZone(MPMutableSectionedCollection) init];
  v18 = JSShelf.sections.getter();
  v19 = v18;
  if (v18 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v21 = 0;
    v47 = v9;
    v48 = v19 & 0xC000000000000001;
    v43 = v19 + 32;
    v44 = v19 & 0xFFFFFFFFFFFFFF8;
    v45 = i;
    v46 = v19;
    while (1)
    {
      if (v48)
      {
        v22 = sub_360280(v21, v19);
      }

      else
      {
        if (v21 >= *(v44 + 16))
        {
          goto LABEL_42;
        }

        v22 = *(v43 + 8 * v21);
      }

      v23 = v22;
      if (__OFADD__(v21++, 1))
      {
        break;
      }

      if (v9)
      {
        v25 = sub_26ACAC(v22);
        [v53 appendSection:v23];
        v49 = v25;
        [v54 appendSection:v25];
        v26 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_items;
        swift_beginAccess();
        v27 = *&v23[v26];
        if (v27 >> 62)
        {
          v28 = sub_ABB060();
          v50 = v23;
          v51 = v21;
          if (v28)
          {
LABEL_24:

            v29 = 0;
            while (1)
            {
              if ((v27 & 0xC000000000000001) != 0)
              {
                v33 = sub_361634(v29, v27);
              }

              else
              {
                if (v29 >= *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)))
                {
                  goto LABEL_40;
                }

                v33 = *(v27 + 8 * v29 + 32);
              }

              v19 = v33;
              v34 = v29 + 1;
              if (__OFADD__(v29, 1))
              {
                break;
              }

              if (v17)
              {
                v35 = [a1 userIdentity];
                if (!v35)
                {
                  __break(1u);
                  goto LABEL_45;
                }

                v30 = v35;
                v31 = sub_4DFEA4(v19, v35);

                v9 = &selRef__authenticateReturningError_;
                [v53 appendItem:v19];
                v32 = v31;
                [v54 appendItem:v32];
              }

              ++v29;
              if (v34 == v28)
              {
                goto LABEL_37;
              }
            }

            __break(1u);
LABEL_40:
            __break(1u);
            break;
          }
        }

        else
        {
          v28 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
          v50 = v23;
          v51 = v21;
          if (v28)
          {
            goto LABEL_24;
          }
        }

LABEL_37:

        v19 = v46;
        v9 = v47;
        i = v45;
        v21 = v51;
        if (v51 == v45)
        {
          goto LABEL_38;
        }
      }

      else
      {

        if (v21 == i)
        {
          goto LABEL_38;
        }
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

LABEL_38:

  v36 = [objc_allocWithZone(MPStoreLibraryPersonalizationRequest) initWithUnpersonalizedRequest:v41 unpersonalizedContentDescriptors:v54];
  [v36 setRepresentedObjects:v53];
  v37 = swift_allocObject();
  *(v37 + 16) = v41;
  *(v37 + 24) = a1;
  aBlock[4] = sub_29BDB8;
  aBlock[5] = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151E0;
  aBlock[3] = &block_descriptor_36_0;
  v38 = _Block_copy(aBlock);
  v39 = v41;
  v40 = a1;

  [v36 performWithResponseHandler:v38];

  _Block_release(v38);
}

void sub_29A41C(void *a1, uint64_t a2, void *a3, char *a4)
{
  if (a1 && (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) != 0))
  {
    v8 = v7;
    objc_allocWithZone(type metadata accessor for JSShelfModelResponse());
    v9 = a1;
    v13 = sub_29A688(a3, v8);
    v10 = *&a4[OBJC_IVAR____TtC16MusicApplication28JSShelfModelRequestOperation_responseHandler];
    v11 = v13;
    v12 = v13;
  }

  else
  {
    v12 = 0;
    v10 = *&a4[OBJC_IVAR____TtC16MusicApplication28JSShelfModelRequestOperation_responseHandler];
  }

  v14 = v12;
  v10();

  [a4 finish];
}

char *sub_29A688(char *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_sectionsDidChangeNotificationObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_personalizationResponseInvalidationObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_personalizationResponse] = a2;
  v4 = a2;
  v5 = [v4 representedObjectResults];
  if (!v5)
  {
    v5 = [objc_allocWithZone(MPSectionedCollection) init];
  }

  *&v2[OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults] = v5;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for JSShelfModelResponse();
  result = objc_msgSendSuper2(&v22, "initWithRequest:", a1);
  if (result)
  {
    v7 = result;
    v8 = v4;
    v9 = v7;
    v10 = [v8 results];
    [v9 setResults:v10];

    v21 = a1;
    v11 = *&a1[OBJC_IVAR____TtC16MusicApplication19JSShelfModelRequest_shelfViewModel];
    v12 = v11;
    v13 = *JSShelf.sectionsDidChangeNotification.unsafeMutableAddressor();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v15 = v9;
    v16 = v12;
    *&v15[OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_sectionsDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v13, v11, 1, 1, sub_AAF10, v14);

    v17 = MPModelResponseDidInvalidateNotification;
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = v8;
    v20 = v17;

    swift_allocObject();
    *&v15[OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_personalizationResponseInvalidationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v20, v8, 1, 1, sub_AADB4, v18);

    LOBYTE(v18) = [v19 isValid];

    if ((v18 & 1) == 0)
    {
      [v15 _invalidate];
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29AA6C(void *a1, void (*a2)(id), uint64_t a3)
{
  if (a1)
  {
    type metadata accessor for JSShelfModelResponse();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v7;
      v9 = swift_allocObject();
      v9[2] = v3;
      v9[3] = v8;
      v9[4] = a2;
      v9[5] = a3;
      v10 = objc_allocWithZone(MPChangeDetails);
      v16[4] = sub_29BC48;
      v16[5] = v9;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 1107296256;
      v16[2] = sub_1546C;
      v16[3] = &block_descriptor_97;
      v11 = _Block_copy(v16);
      v12 = a1;
      v13 = v3;
      sub_307CC(a2);
      v14 = [v10 initWithBlock:v11];
      _Block_release(v11);

      if (a2)
      {
        v15 = v14;
        a2(v14);

        return;
      }

      goto LABEL_9;
    }
  }

  if (!a2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  a2(0);
}

void sub_29ABE8(void *a1, void *a2, void *a3, void (*a4)(id), uint64_t a5)
{
  v83 = a1;
  v9 = sub_AB3730();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &selRef__authenticateReturningError_;
  v84 = a2;
  v14 = [a2 results];
  if (!v14)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v15 = v14;
  v16 = [v14 numberOfSections];

  v17 = [a3 results];
  if (!v17)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    return;
  }

  v18 = v17;
  v19 = [v17 numberOfSections];

  v20 = v19;
  v21 = v16 == v19;
  v22 = a3;
  v23 = a3;
  v82 = v16;
  if (v21)
  {
    if ((v16 & 0x8000000000000000) == 0)
    {
      if (!v16)
      {
        return;
      }

      v24 = 0;
      while (1)
      {
        v25 = [v22 v13[229]];
        if (!v25)
        {
          break;
        }

        v26 = v25;
        v27 = [v25 itemsInSectionAtIndex:v24];

        v28 = sub_AB9760();
        v29 = sub_12DBD8(v28);

        v30 = [v84 v13[229]];
        if (!v30)
        {
          goto LABEL_54;
        }

        v31 = v30;
        v32 = v24 + 1;
        if (v29)
        {
          v33 = v29;
        }

        else
        {
          v33 = _swiftEmptyArrayStorage;
        }

        v34 = [v30 itemsInSectionAtIndex:v24];

        v35 = sub_AB9760();
        v36 = sub_12DBD8(v35);

        if (!v36)
        {
          v36 = _swiftEmptyArrayStorage;
        }

        v85 = v36;
        v86 = v33;
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC868);
        v38 = sub_29BC6C();
        v39 = sub_29BCD0();
        v40 = Collection<>.compare<A>(with:comparator:)(&v85, 0, 0, v37, v37, v38, v38, v39);

        sub_29B1A0(v40, v24, v83);

        ++v24;
        v21 = v82 == v32;
        v13 = &selRef__authenticateReturningError_;
        v22 = a3;
        if (v21)
        {
          return;
        }
      }

LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    __break(1u);
    goto LABEL_50;
  }

  v77 = a5;
  if (v20 >= v16)
  {
    v41 = v16;
  }

  else
  {
    v41 = v20;
  }

  if (v41 < 0)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v80 = v12;
  v81 = v20;
  v76 = a4;
  v78 = v10;
  v79 = v9;
  if (v41)
  {
    v42 = 0;
    while (1)
    {
      v43 = [v22 results];
      if (!v43)
      {
        break;
      }

      v44 = v43;
      v45 = [v43 itemsInSectionAtIndex:v42];

      v46 = sub_AB9760();
      v47 = sub_12DBD8(v46);

      v48 = [v84 results];
      if (!v48)
      {
        goto LABEL_55;
      }

      v49 = v48;
      v50 = v42 + 1;
      if (v47)
      {
        v51 = v47;
      }

      else
      {
        v51 = _swiftEmptyArrayStorage;
      }

      v52 = [v48 itemsInSectionAtIndex:v42];

      v53 = sub_AB9760();
      v54 = sub_12DBD8(v53);

      if (v54)
      {
        v55 = v54;
      }

      else
      {
        v55 = _swiftEmptyArrayStorage;
      }

      v85 = v55;
      v86 = v51;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC868);
      v57 = sub_29BC6C();
      v58 = sub_29BCD0();
      v59 = Collection<>.compare<A>(with:comparator:)(&v85, 0, 0, v56, v56, v57, v57, v58);

      sub_29B1A0(v59, v42, v83);

      ++v42;
      v22 = v23;
      if (v41 == v50)
      {
        goto LABEL_33;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_33:
  v61 = v81;
  v60 = v82;
  if (v81 < v82)
  {
    v22 = v84;
  }

  v62 = [v22 results];
  if (!v62)
  {
    if (v76)
    {
      v76(v83);
      return;
    }

    goto LABEL_58;
  }

  v63 = v62;
  if (v61 > v60)
  {
    v60 = v61;
  }

  v64 = v80;
  _s14MusicUtilities15AIDiffingUpdateV18deletedSectionsSet10Foundation05IndexG0Vvpfi_0();
  if (v41 >= v60)
  {
    goto LABEL_51;
  }

  do
  {
    sub_AB36F0(v41++);
  }

  while (v60 != v41);
  v65 = v63;
  v66 = [v84 results];
  v68 = v78;
  v67 = v79;
  if (!v66)
  {

    goto LABEL_46;
  }

  v69 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC888);
  v70 = sub_ABA790();

  if ((v70 & 1) == 0)
  {
LABEL_46:
    sub_AB36C0(v71);
    v73 = v74;
    [v83 setDeletedSections:v74];
    goto LABEL_47;
  }

  sub_AB36C0(v71);
  v73 = v72;
  [v83 setInsertedSections:v72];
LABEL_47:

  (*(v68 + 8))(v64, v67);
}

void sub_29B1A0(uint64_t a1, uint64_t a2, id a3)
{
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v64 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v72 = &v61 - v11;
  v12 = __chkstk_darwin(v10);
  v71 = &v61 - v13;
  v14 = __chkstk_darwin(v12);
  v67 = &v61 - v15;
  v16 = __chkstk_darwin(v14);
  v63 = &v61 - v17;
  v18 = __chkstk_darwin(v16);
  v62 = &v61 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v61 - v21;
  __chkstk_darwin(v20);
  v78 = &v61 - v23;
  v24 = *(a1 + 16);
  if (v24)
  {
    v73 = (v7 + 8);
    v76 = (v7 + 16);
    v77 = (v7 + 32);
    v75 = v24 - 1;
    v25 = (a1 + 56);
    v69 = v22;
    v70 = a3;
    v65 = v7;
    v66 = a2;
    while (1)
    {
      v26 = *(v25 - 3);
      v27 = *(v25 - 16);
      v74 = *v25;
      v28 = v78;
      sub_AB37C0();
      sub_AB37C0();
      if (v27 == 1)
      {
        v29 = *v76;
        if (v26)
        {
          if (v26 == 1)
          {
            v29(v62, v22, v6);
            v68 = [a3 insertedItemIndexPaths];
            v30 = sub_AB9760();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v30 = sub_6AE4C(0, v30[2] + 1, 1, v30);
            }

            v32 = v30[2];
            v31 = v30[3];
            if (v32 >= v31 >> 1)
            {
              v30 = sub_6AE4C(v31 > 1, v32 + 1, 1, v30);
            }

            v30[2] = v32 + 1;
            (*(v7 + 32))(v30 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v32, v62, v6);
            v33.super.isa = sub_AB9740().super.isa;
            [a3 setInsertedItemIndexPaths:v33.super.isa];
          }

          else
          {
            v29(v64, v22, v6);
            v68 = [a3 updatedItemIndexPaths];
            v57 = sub_AB9760();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v57 = sub_6AE4C(0, v57[2] + 1, 1, v57);
            }

            v59 = v57[2];
            v58 = v57[3];
            if (v59 >= v58 >> 1)
            {
              v57 = sub_6AE4C(v58 > 1, v59 + 1, 1, v57);
            }

            v57[2] = v59 + 1;
            (*(v7 + 32))(v57 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v59, v64, v6);
            v33.super.isa = sub_AB9740().super.isa;
            [a3 setUpdatedItemIndexPaths:v33.super.isa];
          }
        }

        else
        {
          v29(v63, v28, v6);
          v52 = [a3 deletedItemIndexPaths];
          v53 = sub_AB9760();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v68 = v52;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v53 = sub_6AE4C(0, v53[2] + 1, 1, v53);
          }

          v56 = v53[2];
          v55 = v53[3];
          if (v56 >= v55 >> 1)
          {
            v53 = sub_6AE4C(v55 > 1, v56 + 1, 1, v53);
          }

          v53[2] = v56 + 1;
          (*(v7 + 32))(v53 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v56, v63, v6);
          v33.super.isa = sub_AB9740().super.isa;
          [a3 setDeletedItemIndexPaths:v33.super.isa];
        }

        v60 = *(v7 + 8);
        v60(v22, v6);
        v60(v78, v6);

        v51 = v75;
        if (!v75)
        {
          return;
        }
      }

      else
      {
        v34 = v67;
        sub_AB37C0();
        v68 = *v73;
        (v68)(v28, v6);
        v35 = *v77;
        (*v77)(v28, v34, v6);
        v36 = *v76;
        (*v76)(v71, v28, v6);
        v37 = [a3 deletedItemIndexPaths];
        v38 = sub_AB9760();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_6AE4C(0, *(v38 + 2) + 1, 1, v38);
        }

        v40 = *(v38 + 2);
        v39 = *(v38 + 3);
        if (v40 >= v39 >> 1)
        {
          v38 = sub_6AE4C(v39 > 1, v40 + 1, 1, v38);
        }

        *(v38 + 2) = v40 + 1;
        v41 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v42 = *(v7 + 72);
        v35(&v38[v41 + v42 * v40], v71, v6);
        isa = sub_AB9740().super.isa;
        v44 = v70;
        [v70 setDeletedItemIndexPaths:isa];

        v36(v72, v69, v6);
        v45 = [v44 insertedItemIndexPaths];
        v46 = sub_AB9760();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_6AE4C(0, *(v46 + 2) + 1, 1, v46);
        }

        v48 = *(v46 + 2);
        v47 = *(v46 + 3);
        v22 = v69;
        if (v48 >= v47 >> 1)
        {
          v46 = sub_6AE4C(v47 > 1, v48 + 1, 1, v46);
        }

        *(v46 + 2) = v48 + 1;
        v35(&v46[v41 + v48 * v42], v72, v6);
        v49 = sub_AB9740().super.isa;
        a3 = v70;
        [v70 setInsertedItemIndexPaths:v49];
        v50 = v68;
        (v68)(v22, v6);
        v50(v78, v6);

        v7 = v65;
        v51 = v75;
        if (!v75)
        {
          return;
        }
      }

      v75 = v51 - 1;
      v25 += 4;
    }
  }
}

id sub_29BAE4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_29BBAC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_29BBF8()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t block_copy_helper_97(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29BC6C()
{
  result = qword_DFC870;
  if (!qword_DFC870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFC868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFC870);
  }

  return result;
}

unint64_t sub_29BCD0()
{
  result = qword_DFC878;
  if (!qword_DFC878)
  {
    sub_13C80(255, &qword_DFC880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFC878);
  }

  return result;
}

uint64_t sub_29BD38()
{

  return swift_deallocObject();
}

uint64_t sub_29BD78()
{

  return swift_deallocObject();
}

uint64_t sub_29BDC0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_29BDF8()
{

  return swift_deallocObject();
}

uint64_t sub_29BE4C()
{

  return swift_deallocObject();
}

uint64_t sub_29BEB4()
{

  return swift_deallocObject();
}

uint64_t sub_29BF14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x79426E6F69746361;
  v4 = 0xEC000000656E696CLL;
  if (v2 != 1)
  {
    v3 = 0x65546C6961746564;
    v4 = 0xEF6C6562614C7478;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x62614C656C746974;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000006C65;
  }

  v7 = 0x79426E6F69746361;
  v8 = 0xEC000000656E696CLL;
  if (*a2 != 1)
  {
    v7 = 0x65546C6961746564;
    v8 = 0xEF6C6562614C7478;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x62614C656C746974;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000006C65;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_ABB3C0();
  }

  return v11 & 1;
}

Swift::Int sub_29C040()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_29C0FC()
{
  sub_AB93F0();
}

Swift::Int sub_29C1A4()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_29C25C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2A8D28(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_29C28C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006C65;
  v4 = 0xEC000000656E696CLL;
  v5 = 0x79426E6F69746361;
  if (v2 != 1)
  {
    v5 = 0x65546C6961746564;
    v4 = 0xEF6C6562614C7478;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x62614C656C746974;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

id sub_29C304()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView);
  v2 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField;
  v3 = [*(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField) isFirstResponder];
  v4 = *(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel);
  if ((v3 & 1) == 0)
  {
    result = [v4 isFirstResponder];
    if (!result)
    {
      return result;
    }

    v4 = *(v1 + v2);
  }

  return [v4 becomeFirstResponder];
}

void sub_29C398()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView);
  v3 = *&v2[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField];
  [v3 setUserInteractionEnabled:0];
  *(v3 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_isEnabled) = 0;
  sub_2351D4();

  v35 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel;
  v4 = *&v2[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel];
  [v4 setUserInteractionEnabled:0];
  *(v4 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_isEnabled) = 0;
  sub_2351D4();

  v34 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_visibilitySwitch;
  [*&v2[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_visibilitySwitch] setHidden:1];
  v5 = sub_29F560();
  [v5 setHidden:1];

  v33 = OBJC_IVAR____TtC16MusicApplication12DetailHeader_shouldHideHeaderControls;
  v6 = 1;
  if ((*(v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_shouldHideHeaderControls) & 1) == 0)
  {
    v6 = *(v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_layout + 2);
  }

  [*&v2[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionsContainerView] setHidden:v6];
  sub_29C7E0();
  v7 = OBJC_IVAR____TtC16MusicApplication12DetailHeader_supportsShuffle;
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_supportsShuffle))
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = &v2[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionStackLayoutHelper];
  v2[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionStackLayoutHelper + 17] = v8;
  [v2 setNeedsLayout];
  [*v9 setHidden:v6];
  v10 = v6 ^ 1;
  v11 = *(&stru_1F8.flags + (swift_isaMask & **v9));
  v12 = *v9;
  v11(v10, 0);

  v13 = *(v9 + 1);
  if (v10)
  {
    [v13 setHidden:(*(v1 + v7) & 1) == 0];
    v14 = *(v1 + v7);
  }

  else
  {
    [v13 setHidden:1];
    v14 = 0;
  }

  v15 = *(v9 + 1);
  v16 = *(&stru_1F8.flags + (swift_isaMask & *v15));
  v17 = v15;
  v16(v14, 0);

  v18 = *&v2[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_glideActionIndicatorView];
  if (v18)
  {
    if (*(v1 + v33))
    {
      v19 = 1;
    }

    else
    {
      v19 = *(v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_layout + 2) ^ 1;
    }

    [v18 setHidden:v19 & 1];
  }

  v20 = *&v2[v35];
  v21 = *&v20[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
  v22 = *&v20[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8];
  v23 = v20[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16];
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = *&v20[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
    }

    else
    {
      v24 = 0;
    }

    if (v23 == 2)
    {
      v25 = *&v20[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8];
    }

    else
    {
      v25 = 0xE000000000000000;
    }

    goto LABEL_23;
  }

  if (!v20[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16])
  {
    v24 = *&v20[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
    v25 = *&v20[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8];
LABEL_23:
    v26 = v20;
    sub_258078(v21, v22, v23);
    goto LABEL_25;
  }

  v27 = v20;
  sub_258078(v21, v22, 1);
  v28 = [v21 string];
  v24 = sub_AB92A0();
  v25 = v29;

  sub_2372F0(v21, v22, 1);
LABEL_25:

  if ((v25 & 0x2000000000000000) != 0)
  {
    v30 = HIBYTE(v25) & 0xF;
  }

  else
  {
    v30 = v24 & 0xFFFFFFFFFFFFLL;
  }

  [v20 setHidden:v30 == 0];

  [*(v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_descriptionSeparator) setHidden:1];
  [*&v2[v34] setHidden:1];
  [*(v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_visibilitySeparator) setHidden:1];
  sub_235318();
  v32 = (v31 & 1) != 0 && (*(*&v2[v35] + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_isEnabled) & 1) == 0 && v2[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_layout] < 2u;
  [*&v2[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_moreButton] setHidden:!v32];
  sub_2A5854(v32);
  sub_2A2D6C();
}

void sub_29C7E0()
{
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_shouldHideHeaderControls))
  {
    v1 = 1;
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_isEditing);
  }

  v40 = v1;
  v37 = v0;
  v39 = *(v0 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView);
  v35 = OBJC_IVAR____TtC16MusicApplication12DetailHeader_hiddenHeaderElements;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_hiddenHeaderElements);
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  v5 = *(v39 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField);

  do
  {
    v7 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v9 = *v4;
    if (v9 != 1 && v9 != 2)
    {

      break;
    }

    v6 = sub_ABB3C0();

    ++v4;
  }

  while ((v6 & 1) == 0);

  [v5 setHidden:v7 != 0];

  v10 = *(v39 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionButton);
  if (v40)
  {
    v11 = v10;
    v12 = 1;
  }

  else
  {
    v13 = *(v37 + v35);
    v14 = *(v13 + 16);
    v15 = (v13 + 32);
    v16 = v10;

    while (1)
    {
      if (!v14)
      {

        v12 = 0;
        goto LABEL_25;
      }

      if (*v15 && *v15 != 2)
      {
        break;
      }

      v17 = sub_ABB3C0();

      ++v15;
      --v14;
      if (v17)
      {
        goto LABEL_24;
      }
    }

LABEL_24:

    v12 = 1;
  }

LABEL_25:
  [v10 setHidden:{v12, v35, v37}];

  v18 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_detailLabel;
  v19 = [*(v39 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_detailLabel) attributedText];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 string];
    v22 = sub_AB92A0();
    v24 = v23;

    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v25 = 0;
    v24 = 0xE000000000000000;
  }

  v26 = *(v39 + v18);
  if (v40)
  {
    v27 = v26;

    v28 = 1;
  }

  else
  {
    v29 = v26;

    v30 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v30 = v25;
    }

    if (v30)
    {
      v31 = *(v38 + v36);
      v32 = *(v31 + 16);
      v33 = (v31 + 32);

      while (1)
      {
        if (!v32)
        {

          v28 = 0;
          goto LABEL_44;
        }

        if (*v33 && *v33 != 1)
        {
          break;
        }

        v34 = sub_ABB3C0();

        ++v33;
        --v32;
        if (v34)
        {
          goto LABEL_43;
        }
      }

LABEL_43:

      v28 = 1;
    }

    else
    {
      v28 = 1;
    }
  }

LABEL_44:
  [v26 setHidden:v28];

  sub_2A2D6C();
}

uint64_t sub_29CBEC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = sub_29F3F0(a3);
  sub_15F84(a1, v13, &unk_DE8E40);
  v6 = v14;
  if (v14)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v8 = *(v6 - 8);
    __chkstk_darwin(v7);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_ABB3A0();
    (*(v8 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v11 = 0;
  }

  [v5 addTarget:v11 action:a2 forControlEvents:64];

  return swift_unknownObjectRelease();
}

id sub_29CD60(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication12DetailHeader_actionText];
  *v10 = 0;
  v10[1] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication12DetailHeader_showsArtwork] = 1;
  *&v4[OBJC_IVAR____TtC16MusicApplication12DetailHeader_hiddenHeaderElements] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC16MusicApplication12DetailHeader_textColor] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication12DetailHeader_editingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC16MusicApplication12DetailHeader_isEditing] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication12DetailHeader_supportsShuffle] = 1;
  v11 = OBJC_IVAR____TtC16MusicApplication12DetailHeader_visibilitySeparator;
  _s9SeparatorCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v5[v11] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC16MusicApplication12DetailHeader_descriptionSeparator;
  *&v5[v13] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR____TtC16MusicApplication12DetailHeader_artworkCachingReference;
  type metadata accessor for Artwork.CachingReference();
  *&v5[v14] = swift_allocObject();
  v15 = OBJC_IVAR____TtC16MusicApplication12DetailHeader_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v17 = sub_80104(v16);

  *&v5[v15] = v17;
  v5[OBJC_IVAR____TtC16MusicApplication12DetailHeader_shouldHideHeaderControls] = 0;
  v18 = &v5[OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___detailsConstraints];
  *v18 = 0u;
  v18[1] = 0u;
  v18[2] = 0u;
  *&v5[OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkContainerView] = 0;
  v19 = &v5[OBJC_IVAR____TtC16MusicApplication12DetailHeader_calculatedShadowSize];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  *&v5[OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkShadowView] = 0;
  v20 = OBJC_IVAR____TtC16MusicApplication12DetailHeader_radiosityShadow;
  *&v5[v20] = [objc_allocWithZone(UIImageView) init];
  *&v5[OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkView] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkEditingOverlayView] = 0;
  v21 = sub_ABA310();
  if (a3 <= 592.0)
  {
  }

  else
  {
    v22 = v21;
    v23 = sub_ABA340();

    if (v23)
    {
      v24 = 0;
      goto LABEL_6;
    }
  }

  v24 = 1;
LABEL_6:
  v25 = &v5[OBJC_IVAR____TtC16MusicApplication12DetailHeader_layout];
  *v25 = 0;
  v25[1] = v24;
  v25[2] = 0;
  v26 = objc_allocWithZone(type metadata accessor for DetailHeader.DetailsView());
  if (v24)
  {
    v27 = 256;
  }

  else
  {
    v27 = 0;
  }

  v28 = sub_2A5EB0(v27, a1, a2, a3, a4);
  *&v5[OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView] = v28;
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v31.receiver = v5;
  v31.super_class = type metadata accessor for DetailHeader();
  v29 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  sub_29F7E8();
  [v29 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];

  return v29;
}

id sub_29D0B4()
{
  v1 = v0;
  v33.receiver = v0;
  v33.super_class = type metadata accessor for DetailHeader();
  objc_msgSendSuper2(&v33, "layoutSubviews");
  sub_29C398();
  result = [v0 bounds];
  if (v3 > 0.0)
  {
    result = [v0 bounds];
    if (v4 > 0.0)
    {
      if (v0[OBJC_IVAR____TtC16MusicApplication12DetailHeader_layout + 1])
      {
        sub_29F1F0();
      }

      else
      {
        sub_29F04C();
      }

      v5 = sub_29F500();
      [v5 frame];
      v7 = v6;
      v9 = v8;
      v11 = v10;

      v12 = *&v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader_artworkComponent];
      v13 = v12[10];
      v14 = v12[11];
      v12[10] = v11;
      v12[11] = v11;
      sub_75614(v13, v14);
      v15 = v12[12];
      v16 = v12[13];
      v12[12] = v11;
      v12[13] = v11;
      sub_756F8(v15, v16);
      sub_76B28(v7, v9, v11, v11);
      sub_29E964();
      sub_29ECFC();
      v17 = sub_29F560();
      [v17 sizeToFit];

      v18 = *&v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkView];
      v19 = *&v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkEditingOverlayView];
      v20 = v18;
      [v20 center];
      [v19 setCenter:?];

      [v1 bounds];
      Width = CGRectGetWidth(v34);
      v22 = HI.SizeClass.init(_:)(Width);
      v23 = HI.SizeClass.margin.getter(v22);
      v24 = v23;
      if ([v1 effectiveUserInterfaceLayoutDirection] == &dword_0 + 1)
      {
        [v1 bounds];
        v24 = CGRectGetWidth(v35) - v23;
      }

      [v1 bounds];
      v25 = CGRectGetWidth(v36) - v23;
      v26 = objc_opt_self();
      v27 = swift_allocObject();
      *(v27 + 16) = v1;
      *(v27 + 24) = v24;
      *(v27 + 32) = v25;
      v28 = swift_allocObject();
      *(v28 + 16) = sub_2A9B68;
      *(v28 + 24) = v27;
      v32[4] = sub_36C08;
      v32[5] = v28;
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 1107296256;
      v32[2] = sub_1822E0;
      v32[3] = &block_descriptor_227;
      v29 = _Block_copy(v32);
      v30 = v1;

      [v26 performWithoutAnimation:v29];
      _Block_release(v29);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }
  }

  return result;
}

char *sub_29D3CC(char *result, double a2)
{
  if (result[OBJC_IVAR____TtC16MusicApplication12DetailHeader_isEditing] == 1)
  {
    v87 = v11;
    v88 = v10;
    v89 = v9;
    v90 = v8;
    v91 = v7;
    v92 = v6;
    v93 = v5;
    v94 = v4;
    v95 = v2;
    v96 = v3;
    v12 = result;
    v13 = *&result[OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView];
    v14 = *&result[OBJC_IVAR____TtC16MusicApplication12DetailHeader_visibilitySeparator];
    v15 = *&result[OBJC_IVAR____TtC16MusicApplication12DetailHeader_descriptionSeparator];
    if (result[OBJC_IVAR____TtC16MusicApplication12DetailHeader_layout + 1])
    {
      [*&v13[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_visibilitySwitch] frame];
      [v13 convertRect:v12 toCoordinateSpace:?];
      MinY = CGRectGetMinY(v97);
      [v14 frame];
      [v14 setFrame:{a2, MinY}];
      [v14 frame];
      [v14 setFrame:?];
      v18 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField;
      [*&v13[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField] frame];
      [v13 convertRect:v12 toCoordinateSpace:?];
      v19 = CGRectGetMinY(v98);
      v20 = *&v13[v18];
      v21 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font;
      [*&v20[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font] ascender];
      [v20 bounds];
      Height = CGRectGetHeight(v99);
      [*&v20[v21] descender];
      v24 = v23;
      v25 = [objc_opt_self() defaultMetrics];
      v26 = *&v13[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel] + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text;
      v27 = *v26;
      v28 = *(v26 + 8);
      v29 = *(v26 + 16);
      if (v29 > 1)
      {
        if (v29 == 2)
        {
          v30 = *v26;
        }

        else
        {
          v30 = 0;
        }

        if (v29 == 2)
        {
          v31 = *(v26 + 8);
        }

        else
        {
          v31 = 0xE000000000000000;
        }

        sub_258078(v27, v28, v29);
      }

      else if (*(v26 + 16))
      {
        v73 = *v26;
        v74 = *(v26 + 8);
        v75 = [v27 string];
        v30 = sub_AB92A0();
        v31 = v76;

        sub_2372F0(v73, v74, 1);
      }

      else
      {
        v30 = *v26;
        v31 = *(v26 + 8);
        sub_258078(v27, v28, 0);
      }

      if ((v31 & 0x2000000000000000) != 0)
      {
        v77 = HIBYTE(v31) & 0xF;
      }

      else
      {
        v77 = v30 & 0xFFFFFFFFFFFFLL;
      }

      v78 = 30.0;
      if (!v77)
      {
        v78 = 26.0;
      }

      v79 = v19 + Height + v24;
      sub_2A8ACC(&recta.origin.y, v78);
      sub_2A9900(&recta.origin.y);
      v80 = v86;
      v81 = [v12 traitCollection];
      [v25 scaledValueForValue:v81 compatibleWithTraitCollection:v80];
      v83 = v82;

      v50 = &selRef_frame;
      [v15 frame];
      v51 = &selRef_setFrame_;
      [v15 setFrame:{a2, v79 + v83}];
    }

    else
    {
      [*&result[OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView] frame];
      v33 = v32;
      v84 = v34;
      recta.origin.x = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;
      [*&v13[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionsContainerView] frame];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v100.origin.x = v33;
      v100.origin.y = v35;
      v100.size.width = v37;
      v100.size.height = v39;
      MinX = CGRectGetMinX(v100);
      v101.origin.x = v41;
      v101.origin.y = v43;
      v101.size.width = v45;
      v101.size.height = v47;
      v49 = CGRectGetMinY(v101);
      [v14 frame];
      [v14 setFrame:{MinX, v49}];
      v102.origin.x = recta.origin.x;
      v102.origin.y = v84;
      v102.size.width = v37;
      v102.size.height = v39;
      CGRectGetWidth(v102);
      v50 = &selRef_bounds;
      [v14 bounds];
      v51 = &selRef_setBounds_;
      [v14 setBounds:?];
      v52 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel;
      [*&v13[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel] frame];
      [v13 convertRect:v12 toCoordinateSpace:?];
      v54 = v53;
      v56 = v55;
      v58 = v57;
      v60 = v59;
      v103.origin.x = recta.origin.x;
      v103.origin.y = v84;
      v103.size.width = v37;
      v103.size.height = v39;
      v61 = CGRectGetMinX(v103);
      v104.origin.x = v54;
      v104.origin.y = v56;
      v104.size.width = v58;
      v104.size.height = v60;
      v62 = CGRectGetMinY(v104);
      v63 = *&v13[v52];
      v64 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font;
      [*&v63[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font] ascender];
      v66 = v65;
      [v63 bounds];
      [*&v63[v64] descender];
      v67 = v62 + v66;
      v68 = [objc_opt_self() defaultMetrics];
      sub_2A8864(v13, &recta.origin.y);
      sub_2A8D74(&recta.origin.y);
      v69 = v86;
      v70 = [v12 traitCollection];
      [v68 scaledValueForValue:v70 compatibleWithTraitCollection:v69];
      v72 = v71;

      [v15 frame];
      [v15 setFrame:{v61, v67 - v72}];
      v106.origin.x = recta.origin.x;
      v106.origin.y = v84;
      v106.size.width = v37;
      v106.size.height = v39;
      CGRectGetWidth(v106);
    }

    [v15 *v50];
    [v15 *v51];
    [v14 intrinsicContentSize];
    [v14 frame];
    [v14 setFrame:?];
    [v15 intrinsicContentSize];
    [v15 frame];
    return [v15 setFrame:?];
  }

  return result;
}

id sub_29DA28(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for DetailHeader();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_29DA7C(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, const char **a7, SEL *a8)
{
  v15 = type metadata accessor for DetailHeader();
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
  sub_29DB54(v19, v21, v23, v25);
}

void sub_29DB54(double a1, double a2, double a3, double a4)
{
  [v4 bounds];
  if (v8 == a3 && v7 == a4)
  {
    return;
  }

  v10 = &v4[OBJC_IVAR____TtC16MusicApplication12DetailHeader_layout];
  v11 = v4[OBJC_IVAR____TtC16MusicApplication12DetailHeader_layout];
  [v4 bounds];
  v13 = v12;
  v14 = v10[2];
  v15 = [v4 traitCollection];
  v16 = [v15 preferredContentSizeCategory];

  if (v13 <= 592.0)
  {

    goto LABEL_10;
  }

  v17 = sub_ABA340();

  if ((v17 & 1) == 0)
  {
LABEL_10:
    v18 = 1;
    goto LABEL_11;
  }

  v18 = 0;
LABEL_11:
  *v10 = v11;
  v10[1] = v18;
  v10[2] = v14;

  sub_2A0600();
}

uint64_t sub_29DC80(double a1, double a2)
{
  v5 = [v2 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  if (a1 <= 592.0)
  {
  }

  else
  {
    v7 = sub_ABA340();

    if (v7)
    {
      v8 = *&v2[OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView];
      sub_2A8864(v8, &aBlock);
      if (v2[OBJC_IVAR____TtC16MusicApplication12DetailHeader_layout] != 2)
      {
        [v8 frame];
        CGRectGetHeight(v52);
        [*&v8[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionsContainerView] frame];
        CGRectGetHeight(v53);
        return sub_2A8D74(&aBlock);
      }

      v9 = objc_opt_self();
      v10 = swift_allocObject();
      *(v10 + 16) = v2;
      *(v10 + 24) = a1;
      *(v10 + 32) = a2;
      v11 = swift_allocObject();
      *(v11 + 16) = sub_2A9E5C;
      *(v11 + 24) = v10;
      v43[4] = sub_36C08;
      v43[5] = v11;
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 1107296256;
      v43[2] = sub_1822E0;
      v43[3] = &block_descriptor_217;
      v12 = _Block_copy(v43);
      v13 = v2;

      [v9 performWithoutAnimation:v12];
      _Block_release(v12);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        [v8 frame];
        CGRectGetHeight(v49);
        sub_2A8D74(&aBlock);
      }

      goto LABEL_29;
    }
  }

  v16 = objc_opt_self();
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_2A9AD8;
  *(v18 + 24) = v17;
  v47 = sub_2D4D0;
  v48 = v18;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v45 = sub_1822E0;
  v46 = &block_descriptor_207;
  v19 = _Block_copy(&aBlock);
  v20 = v2;

  [v16 performWithoutAnimation:v19];
  _Block_release(v19);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

  v21 = *&v20[OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView];
  v22 = *&v21[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel] + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text;
  v23 = *v22;
  v24 = *(v22 + 8);
  v25 = *(v22 + 16);
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = *v22;
    }

    else
    {
      v26 = 0;
    }

    if (v25 == 2)
    {
      v27 = *(v22 + 8);
    }

    else
    {
      v27 = 0xE000000000000000;
    }

    sub_258078(v23, v24, v25);
  }

  else if (*(v22 + 16))
  {
    v28 = *v22;
    v29 = *(v22 + 8);
    v30 = [v23 string];
    v26 = sub_AB92A0();
    v27 = v31;

    sub_2372F0(v28, v29, 1);
  }

  else
  {
    v26 = *v22;
    v27 = *(v22 + 8);
    sub_258078(v23, v24, 0);
  }

  if ((v27 & 0x2000000000000000) != 0)
  {
    v32 = HIBYTE(v27) & 0xF;
  }

  else
  {
    v32 = v26 & 0xFFFFFFFFFFFFLL;
  }

  v33 = 30.0;
  if (!v32)
  {
    v33 = 26.0;
  }

  sub_2A8ACC(&aBlock, v33);
  if (v20[OBJC_IVAR____TtC16MusicApplication12DetailHeader_layout] != 2)
  {
    v34 = sub_29F500();
    [v34 frame];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    v50.origin.x = v36;
    v50.origin.y = v38;
    v50.size.width = v40;
    v50.size.height = v42;
    CGRectGetHeight(v50);
  }

  [v21 frame];
  CGRectGetHeight(v51);
  sub_2A9900(&aBlock);
}

id sub_29E210(void *a1)
{
  v22.receiver = v1;
  v22.super_class = type metadata accessor for DetailHeader();
  objc_msgSendSuper2(&v22, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (!a1 || v4 != [a1 userInterfaceStyle])
  {
    v5 = *&v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader_radiosityShadow];
    v6 = [v1 traitCollection];
    v7 = [v6 userInterfaceStyle] == &dword_0 + 2;

    [v5 setAlpha:dbl_B07F40[v7]];
    sub_29ECFC();
  }

  v8 = [v1 traitCollection];
  v9 = [v8 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_10;
  }

  v10 = [a1 preferredContentSizeCategory];
  v11 = sub_AB92A0();
  v13 = v12;
  if (v11 == sub_AB92A0() && v13 == v14)
  {
  }

  v16 = sub_ABB3C0();

  if ((v16 & 1) == 0)
  {
LABEL_10:
    [v1 bounds];
    Width = CGRectGetWidth(v23);
    v18 = [v1 traitCollection];
    v19 = [v18 preferredContentSizeCategory];

    if (Width <= 592.0)
    {
    }

    else
    {
      v20 = sub_ABA340();

      if (v20)
      {
        v21 = 0;
LABEL_15:
        v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader_layout + 1] = v21;
        sub_2A0600();
        [v1 invalidateIntrinsicContentSize];
        return [v1 setNeedsLayout];
      }
    }

    v21 = 1;
    goto LABEL_15;
  }

  return result;
}

id sub_29E524@<X0>(void *a1@<X8>)
{
  v3 = &v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___detailsConstraints];
  v4 = *&v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___detailsConstraints];
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___detailsConstraints + 8];
  v6 = *&v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___detailsConstraints + 16];
  v7 = *&v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___detailsConstraints + 24];
  v8 = *&v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___detailsConstraints + 32];
  v9 = *&v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___detailsConstraints + 40];
  if (v4)
  {
    v10 = *&v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___detailsConstraints];
    v11 = v5;
    v12 = v6;
    v13 = v7;
    v14 = v8;
    v15 = v9;
  }

  else
  {
    v16 = v1;
    v17 = *&v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView];
    v48 = v5;
    v46 = v7;
    v47 = v6;
    v44 = v9;
    v45 = v8;
    v18 = [v17 leadingAnchor];
    v19 = [v16 leadingAnchor];
    v43 = [v18 constraintEqualToAnchor:v19];

    v20 = [v17 trailingAnchor];
    v21 = [v16 trailingAnchor];
    v42 = [v20 constraintLessThanOrEqualToAnchor:v21];

    v22 = [v17 trailingAnchor];
    v23 = [v16 trailingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];

    LODWORD(v25) = 1144750080;
    v41 = [v24 withPriority:v25];

    v26 = [v17 widthAnchor];
    v40 = [v26 constraintLessThanOrEqualToConstant:UIView.maxReadableContentWidth(for:)()];

    v27 = [v17 bottomAnchor];
    v28 = [v16 bottomAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];

    v30 = [v17 centerYAnchor];
    v31 = [*(*&v16[OBJC_IVAR____TtC16MusicApplication12DetailHeader_artworkComponent] + 112) centerYAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    v33 = *(v3 + 1);
    v38 = *(v3 + 2);
    v39 = *v3;
    v36 = *(v3 + 4);
    v37 = *(v3 + 3);
    v35 = *(v3 + 5);
    *v3 = v43;
    *(v3 + 1) = v42;
    *(v3 + 2) = v41;
    *(v3 + 3) = v40;
    *(v3 + 4) = v29;
    *(v3 + 5) = v32;
    v10 = v43;
    v11 = v42;
    v12 = v41;
    v13 = v40;
    v14 = v29;
    v15 = v32;
    sub_2A99C0(v39, v33, v38, v37, v36, v35);
    v9 = v44;
    v8 = v45;
    v7 = v46;
    v6 = v47;
    v5 = v48;
    v4 = 0;
  }

  result = sub_2A9A30(v4, v5, v6, v7, v8, v9);
  *a1 = v10;
  a1[1] = v11;
  a1[2] = v12;
  a1[3] = v13;
  a1[4] = v14;
  a1[5] = v15;
  return result;
}

id sub_29E898()
{
  v1 = OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkShadowView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkShadowView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkShadowView);
  }

  else
  {
    v4 = v0;
    v5 = [objc_opt_self() blackColor];
    UIView.Shadow.init(color:opacity:radius:offset:)(v5, v10, 0.15, 10.0, 0.0, 3.0);
    v6 = [objc_allocWithZone(UIView) init];
    UIView.shadow.setter(v10);
    v7 = *(v4 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_29E964()
{
  v1 = v0;
  v2 = sub_ABA620();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v40 - v7;
  v9 = sub_29E898();
  v10 = sub_29F500();
  [v10 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkView;
  [*(v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkView) frame];
  v20 = CGRectGetWidth(v42) * 0.04;
  [*(v1 + v19) frame];
  v21 = CGRectGetHeight(v43) * 0.04;
  v44.origin.x = v12;
  v44.origin.y = v14;
  v44.size.width = v16;
  v44.size.height = v18;
  v45 = CGRectInset(v44, v20, v21);
  x = v45.origin.x;
  y = v45.origin.y;
  width = v45.size.width;
  height = v45.size.height;
  [*(v1 + v19) frame];
  v26 = CGRectGetHeight(v46) * 0.05;
  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  v48 = CGRectOffset(v47, 0.0, v26);
  [v9 setFrame:{v48.origin.x, v48.origin.y, v48.size.width, v48.size.height}];

  v27 = OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkShadowView;
  [*(v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkShadowView) bounds];
  v30 = v28;
  v31 = v29;
  v32 = v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_calculatedShadowSize;
  if ((*(v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_calculatedShadowSize + 16) & 1) != 0 || v28 != *v32 || v29 != *(v32 + 8))
  {
    v41 = v2;
    v33 = *(v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_artworkComponent);
    v34 = *(v33 + 112);
    sub_ABA690();
    v35 = sub_ABA680();
    if ((*(*(v35 - 8) + 48))(v8, 1, v35))
    {
      sub_12E1C(v8, &unk_DFFBC0);

      v36 = 0.0;
    }

    else
    {
      sub_ABA650();
      sub_12E1C(v8, &unk_DFFBC0);

      [*(v33 + 112) frame];
      sub_ABA610();
      v36 = v37;
      (*(v3 + 8))(v5, v41);
    }

    v38 = [*(v1 + v27) layer];
    [*(v1 + v27) bounds];
    v39 = CGPathCreateWithRoundedRect(v49, v36, v36, 0);
    [v38 setShadowPath:v39];

    *v32 = v30;
    *(v32 + 8) = v31;
    *(v32 + 16) = 0;
  }
}

void sub_29ECFC()
{
  v1 = OBJC_IVAR____TtC16MusicApplication12DetailHeader_radiosityShadow;
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication12DetailHeader_radiosityShadow];
  v3 = sub_29F500();
  v4 = v2;
  [v3 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkView;
  [*&v0[OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkView] frame];
  v14 = CGRectGetWidth(v37) * 0.088335;
  [*&v0[v13] frame];
  v15 = CGRectGetHeight(v38) * 0.088335;
  v39.origin.x = v6;
  v39.origin.y = v8;
  v39.size.width = v10;
  v39.size.height = v12;
  v40 = CGRectInset(v39, v14, v15);
  x = v40.origin.x;
  y = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  [*&v0[v13] frame];
  v20 = CGRectGetHeight(v41) * 0.088335;
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v43 = CGRectOffset(v42, 0.0, v20);
  [v4 setFrame:{v43.origin.x, v43.origin.y, v43.size.width, v43.size.height}];

  v21 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorSaturate];
  v22 = [v0 traitCollection];
  v23 = [v22 userInterfaceStyle];

  if (v23 == &dword_0 + 2)
  {
    v24 = &type metadata for Int;
  }

  else
  {
    v24 = &type metadata for Double;
  }

  v25 = 1.8;
  if (v23 == &dword_0 + 2)
  {
    v25 = COERCE_DOUBLE(2);
  }

  v36[3] = v24;
  *v36 = v25;
  __swift_project_boxed_opaque_existential_1(v36, v24);
  v26 = sub_ABB3A0();
  __swift_destroy_boxed_opaque_existential_0(v36);
  [v21 setValue:v26 forKey:kCAFilterInputAmount];
  swift_unknownObjectRelease();
  v27 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
  isa = sub_AB9A80().super.super.isa;
  [v27 setValue:isa forKey:kCAFilterInputRadius];

  v29 = sub_AB9890().super.super.isa;
  [v27 setValue:v29 forKey:kCAFilterInputNormalizeEdges];

  v30 = [*&v0[v1] layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_AF85F0;
  v32 = sub_13C80(0, &qword_DFCBE8);
  *(v31 + 32) = v21;
  *(v31 + 88) = v32;
  *(v31 + 56) = v32;
  *(v31 + 64) = v27;
  v33 = v21;
  v34 = v27;
  v35 = sub_AB9740().super.isa;

  [v30 setFilters:v35];
}

uint64_t sub_29F04C()
{
  v1 = v0;
  [v0 bounds];
  Width = CGRectGetWidth(v22);
  v3 = [v0 traitCollection];
  v4 = UITraitCollection.isAccessibilitySizeCategory.getter();

  HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(2u, 0, v4 & 1, v20, Width);
  sub_2A8864(*&v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView], dy);
  v5 = dy[1];
  [v1 bounds];
  v24 = CGRectInset(v23, v21, 0.0);
  v25 = CGRectOffset(v24, 0.0, dy[0]);
  x = v25.origin.x;
  y = v25.origin.y;
  v8 = v25.size.width;
  height = v25.size.height;
  v10 = [v1 effectiveUserInterfaceLayoutDirection];
  memset(&slice, 0, sizeof(slice));
  memset(&v17, 0, sizeof(v17));
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = v8;
  v26.size.height = height;
  CGRectDivide(v26, &slice, &v17, v5, (2 * (v10 == &dword_0 + 1)));
  v11 = slice.origin.x;
  v12 = slice.origin.y;
  v13 = slice.size.width;
  v14 = slice.size.height;
  v15 = sub_29E884();
  [v15 setFrame:{v11, v12, v13, v14}];

  return sub_2A8D74(dy);
}

uint64_t sub_29F1F0()
{
  v1 = v0;
  v2 = *(*&v0[OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView] + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel) + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text;
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v6 = *v2;
    }

    else
    {
      v6 = 0;
    }

    if (v5 == 2)
    {
      v7 = *(v2 + 8);
    }

    else
    {
      v7 = 0xE000000000000000;
    }

    sub_258078(v3, v4, v5);
  }

  else if (*(v2 + 16))
  {
    v8 = *v2;
    v9 = *(v2 + 8);
    v10 = [v3 string];
    v6 = sub_AB92A0();
    v7 = v11;

    sub_2372F0(v8, v9, 1);
  }

  else
  {
    v6 = *v2;
    v7 = *(v2 + 8);
    sub_258078(v3, v4, 0);
  }

  if ((v7 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v12 = v6 & 0xFFFFFFFFFFFFLL;
  }

  v13 = 30.0;
  if (!v12)
  {
    v13 = 26.0;
  }

  [v1 bounds];
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  v18 = CGRectGetWidth(v30);
  v19 = [v1 traitCollection];
  v20 = UITraitCollection.isAccessibilitySizeCategory.getter();

  HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(2u, 0, v20 & 1, v29, v18);
  if (v29[24] >= 2u)
  {
    v21 = &v27;
  }

  else
  {
    v21 = &v28;
  }

  v22 = *v21;
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v23 = CGRectGetWidth(v31) - (v22 + v22);
  v24 = sub_29E884();
  [v24 setFrame:{v22, v26, v23, v23}];

  return sub_2A9900(&v26);
}

id sub_29F3F0(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView);
      v3 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_moreButton;
    }

    else
    {
      if (a1 == 4)
      {
        v4 = sub_29F560();
        v5 = *&v4[OBJC_IVAR____TtCC16MusicApplication12DetailHeaderP33_A13DD19D58D33EBE9EDF18CE691179B728ArtworkEditButtonWrapperView_button];

        return v5;
      }

      v2 = *(*(v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView) + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_visibilitySwitch);
      v3 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader37PlaylistVisibilitySwitchContainerView_switchButton;
    }

    goto LABEL_12;
  }

  if (!a1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView);
    v3 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionButton;
    goto LABEL_12;
  }

  if (a1 == 1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView);
    v3 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionStackLayoutHelper;
LABEL_12:
    v7 = *(v2 + v3);
    goto LABEL_13;
  }

  v7 = *(*(v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView) + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionStackLayoutHelper + 8);
LABEL_13:

  return v7;
}

id sub_29F500()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkView);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkView);
  }

  else
  {
    v3 = *(*(v0 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_artworkComponent) + 112);
    *(v0 + OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkView) = v3;
    v2 = v3;
    v1 = 0;
  }

  v4 = v1;
  return v2;
}

id sub_29F560()
{
  v1 = OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkEditingOverlayView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkEditingOverlayView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkEditingOverlayView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for DetailHeader.ArtworkEditButtonWrapperView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_29F5E4()
{
  v1 = v0;
  v2 = v0[OBJC_IVAR____TtC16MusicApplication12DetailHeader_showsArtwork];
  v3 = sub_29E884();
  v16 = v3;
  if (v2 == 1)
  {
    v4 = *&v0[OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView];
    v5 = [v3 superview];
    if (v5 && (v6 = v5, sub_13C80(0, &qword_DF12A0), v7 = v0, v8 = sub_ABA790(), v7, v6, (v8 & 1) != 0))
    {
      [v16 setHidden:0];
    }

    else
    {
      [v1 insertSubview:v16 belowSubview:v4];
    }

    v9 = sub_29F500();
    v10 = OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkContainerView;
    v11 = *&v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkContainerView];
    [v11 bounds];
    [v9 setFrame:?];

    v12 = OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkView;
    [*&v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkView] setAutoresizingMask:18];
    v13 = *&v1[v10];
    v14 = sub_29E898();
    [v13 addSubview:v14];

    [*&v1[v10] addSubview:*&v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader_radiosityShadow]];
    [*&v1[v10] addSubview:*&v1[v12]];
    v15 = *&v1[v10];
    v16 = sub_29F560();
    [v15 addSubview:?];
  }

  else
  {
    [v3 setHidden:1];
  }
}

void sub_29F7E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v61 - v6;
  v8 = *&v0[OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView];
  [v0 addSubview:v8];
  sub_29F5E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_AF93E0;
  sub_29E524(&aBlock);
  v10 = aBlock;
  v11 = v63;
  v12 = v64;
  v13 = v65;
  v14 = v66;

  *(v9 + 32) = v10;
  v15 = &v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___detailsConstraints];
  *(v9 + 40) = *&v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___detailsConstraints + 8];
  *(v9 + 48) = v15[2];
  *(v9 + 56) = v15[3];
  Array<A>.activate()(v9);

  v16 = sub_29F560();
  [v16 setHidden:1];

  v17 = v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader_layout];
  v18 = v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader_layout + 1];
  v19 = v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader_layout + 2];
  v20 = (v8 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_layout);
  v21 = *(v8 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_layout);
  v22 = *(v8 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_layout + 1);
  v23 = *(v8 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_layout + 2);
  *v20 = v17;
  v20[1] = v18;
  v20[2] = v19;
  if (v21 != v17 || ((v18 ^ v22) & 1) != 0 || ((v19 ^ v23) & 1) != 0)
  {
    sub_2A1A4C();
  }

  v24 = *&v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader_artworkComponent];
  v25 = UIView.Corner.large.unsafeMutableAddressor();
  v26 = sub_ABA680();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v7, v25, v26);
  (*(v27 + 56))(v7, 0, 1, v26);
  v28 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  sub_15F84(v24 + v28, v5, &unk_DFFBC0);
  swift_beginAccess();
  sub_8A01C(v7, v24 + v28);
  swift_endAccess();
  sub_75AE8(v5);
  sub_12E1C(v5, &unk_DFFBC0);
  sub_12E1C(v7, &unk_DFFBC0);
  v29 = UIView.Border.artwork.unsafeMutableAddressor();
  v30 = *v29;
  v31 = *(v29 + 8);
  v32 = v29[2];
  v33 = v32;
  sub_75E64(v30, v31, v32);
  *(v24 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isReusable) = 0;
  *(v24 + 24) = 0xD000000000000015;
  *(v24 + 32) = 0x8000000000B5C510;

  *(v24 + 16) = *&v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader_artworkCachingReference];

  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = (v24 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v36 = *(v24 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  *v35 = sub_13B168;
  v35[1] = v34;

  sub_17654(v36);

  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = (v24 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler);
  v39 = *(v24 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler);
  *v38 = sub_2A9980;
  v38[1] = v37;

  sub_17654(v39);

  v40 = OBJC_IVAR____TtC16MusicApplication12DetailHeader_radiosityShadow;
  [*&v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader_radiosityShadow] setContentMode:2];
  [*&v1[v40] _setAnimatesContents:1];
  v41 = [*&v1[v40] layer];
  v42 = [*(v24 + 112) layer];
  [v42 cornerRadius];
  [v41 setCornerRadius:?];

  v43 = *&v1[v40];
  v44 = [v1 traitCollection];
  LODWORD(v40) = [v44 userInterfaceStyle] == &dword_0 + 2;

  [v43 setAlpha:dbl_B07F40[v40]];
  v45 = *(v8 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField);
  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v47 = &v45[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_delegate];
  v48 = *&v45[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_delegate];
  *v47 = sub_2A9988;
  v47[1] = v46;
  v49 = v45;

  sub_17654(v48);

  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = v47[2];
  v47[2] = sub_2A9990;
  v47[3] = v50;

  sub_17654(v51);

  v52 = *(v8 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel);
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = &v52[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_delegate];
  v55 = *&v52[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_delegate + 16];
  *(v54 + 2) = sub_2A9998;
  *(v54 + 3) = v53;
  v56 = v52;

  sub_17654(v55);

  v57 = [objc_opt_self() defaultCenter];
  v58 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v66 = sub_2A99A0;
  v67 = v58;
  aBlock = _NSConcreteStackBlock;
  v63 = 1107296256;
  v64 = sub_2A0500;
  v65 = &block_descriptor_98;
  v59 = _Block_copy(&aBlock);

  v60 = [v57 addObserverForName:UIApplicationDidEnterBackgroundNotification object:0 queue:0 usingBlock:v59];
  _Block_release(v59);
  swift_unknownObjectRelease();

  [v1 addSubview:*&v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader_visibilitySeparator]];
  [v1 addSubview:*&v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader_descriptionSeparator]];
}

void sub_29FF9C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC16MusicApplication12DetailHeader_radiosityShadow);

    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_artworkComponent);
      v5 = v3;

      v6 = [*(v4 + 112) image];
    }

    else
    {
      v6 = 0;
    }

    [v2 setImage:v6];
  }
}

void sub_2A008C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView);

    [v2 setNeedsLayout];
  }
}

void sub_2A0104()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC16MusicApplication12DetailHeader_isEditing) == 1 && swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(*&v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView] + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField);
      v3 = *&v2[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView];
      v4 = v2;
      v5 = [v3 textStorage];
      v6 = [v5 string];

      sub_3A5D7C();
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_2A0210()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC16MusicApplication12DetailHeader_isEditing) != 1 || !swift_unknownObjectWeakLoadStrong())
    {

      return;
    }

    v2 = *(*&v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView] + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel) + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text;
    v3 = *v2;
    v4 = *(v2 + 8);
    v5 = *(v2 + 16);
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        goto LABEL_10;
      }
    }

    else if (*(v2 + 16))
    {
      v6 = *v2;
      v7 = [v3 string];
      sub_AB92A0();

      sub_2372F0(v6, v4, 1);
LABEL_10:
      sub_3A5EE4();

      swift_unknownObjectRelease();

      return;
    }

    sub_23732C(v3, *(v2 + 8), v5);
    goto LABEL_10;
  }
}

void sub_2A034C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(*&v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView] + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField);
      v3 = *&v2[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView];
      v4 = v2;
      v5 = [v3 textStorage];
      v6 = [v5 string];

      sub_3A5D7C();
      swift_unknownObjectRelease();
    }

    if (!swift_unknownObjectWeakLoadStrong())
    {

      return;
    }

    v7 = *(*&v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView] + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel) + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text;
    v8 = *v7;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        goto LABEL_11;
      }
    }

    else if (*(v7 + 16))
    {
      v11 = *v7;
      v12 = [v8 string];
      sub_AB92A0();

      sub_2372F0(v11, v9, 1);
LABEL_11:
      sub_3A5EE4();

      swift_unknownObjectRelease();

      return;
    }

    sub_23732C(v8, *(v7 + 8), v10);
    goto LABEL_11;
  }
}

void sub_2A0500(uint64_t a1, void *a2)
{
  v4 = sub_AB2BD0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  sub_AB2B90();

  v9 = a2;
  v8(v7);
  (*(v5 + 8))(v7, v4);
}

void sub_2A0600()
{
  v1 = v0;
  [v0 setNeedsLayout];
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView];
  v3 = &v0[OBJC_IVAR____TtC16MusicApplication12DetailHeader_layout];
  v4 = v0[OBJC_IVAR____TtC16MusicApplication12DetailHeader_layout];
  v5 = v0[OBJC_IVAR____TtC16MusicApplication12DetailHeader_layout + 1];
  v6 = v0[OBJC_IVAR____TtC16MusicApplication12DetailHeader_layout + 2];
  v7 = (v2 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_layout);
  v8 = *(v2 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_layout);
  v9 = *(v2 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_layout + 1);
  v10 = *(v2 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_layout + 2);
  *v7 = v4;
  v7[1] = v5;
  v7[2] = v6;
  if (v8 != v4 || ((v5 ^ v9) & 1) != 0 || ((v6 ^ v10) & 1) != 0)
  {
    sub_2A1A4C();
  }

  [v0 bounds];
  Width = CGRectGetWidth(v46);
  v12 = [v0 traitCollection];
  v13 = UITraitCollection.isAccessibilitySizeCategory.getter();

  HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(2u, 0, v13 & 1, v39, Width);
  if ((v3[1] & 1) != 0 || *v3 == 2)
  {
    sub_29E524(&v41);
    v14 = v41;
    v15 = v42;
    v16 = v43;
    v17 = v44;

    v18 = v40;
    [v14 setConstant:v40];

    v19 = *&v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___detailsConstraints + 32];
    [v19 setActive:1];
  }

  else
  {
    sub_2A8864(v2, &v41);
    sub_29E524(&v33);
    v20 = v33;
    v21 = v34;
    v22 = v35;
    v23 = v36;
    v24 = v37;

    v18 = v40;
    [v20 setConstant:*(&v41 + 1) + v18 + v18];

    v25 = *&v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___detailsConstraints + 32];
    [v25 setActive:0];

    sub_2A8D74(&v41);
  }

  sub_29E524(&v33);
  v27 = v33;
  v26 = v34;
  v28 = v35;
  v29 = v36;
  v30 = v37;

  [v26 setConstant:-v18];
  v31 = *&v1[OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___detailsConstraints + 24];
  if (*v3 == 2)
  {
    v32 = 1500.0;
  }

  else
  {
    v32 = UIView.maxReadableContentWidth(for:)();
  }

  [v31 setConstant:v32];
}

void sub_2A0B54(id a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_textColor);
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_textColor) = a1;
  if (!a1)
  {
    if (!v2)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!v2)
  {
    a1 = a1;
LABEL_8:
    v7 = a1;
    goto LABEL_9;
  }

  v6 = a1;
  sub_13C80(0, qword_DFAAC0);
  v7 = v6;
  v3 = v2;
  v4 = sub_ABA790();

  if ((v4 & 1) == 0)
  {
LABEL_9:
    sub_2A0D84();

    v5 = v2;
    goto LABEL_10;
  }

  v5 = v7;
LABEL_10:
}

id sub_2A0C64(uint64_t *a1, Class *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_allocWithZone(*a2) init];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_2A0CE4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [*(v2 + *a2) heightAnchor];
    v7 = [v6 constraintEqualToConstant:0.0];

    v8 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

void sub_2A0D84()
{
  v1 = v0;
  v47 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_textColor;
  v2 = *(v0 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_textColor);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField);
    v4 = *(v0 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_textColor);
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_artworkProminentColor);
    if (v5 == 2)
    {
      v3 = *(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField);
      v4 = [objc_opt_self() labelColor];
      v6 = 0;
      goto LABEL_10;
    }

    v7 = objc_opt_self();
    if (v5)
    {
      v8 = [v7 systemWhiteColor];
    }

    else
    {
      v8 = [v7 systemBlackColor];
    }

    v4 = v8;
    v3 = *(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField);
    v9 = v4;
  }

  v10 = v2;
  v6 = v4;
LABEL_10:
  v11 = *&v3[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textColor];
  *&v3[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textColor] = v4;
  sub_13C80(0, qword_DFAAC0);
  v12 = v4;
  if ((sub_ABA790() & 1) == 0)
  {
    sub_2366F4();
  }

  v13 = [v3 layer];
  v14 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_artworkProminentColor;
  v15 = *(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_artworkProminentColor);
  if (v15 == 2)
  {
    v16 = 0;
  }

  else
  {
    if (v15)
    {
      v17 = &kCAFilterPlusL;
    }

    else
    {
      v17 = &kCAFilterPlusD;
    }

    v18 = *v17;
    v49 = *v17;
    sub_13C80(0, &qword_DE8170);
    v19 = v18;
    v16 = sub_ABB3A0();
  }

  [v13 setCompositingFilter:{v16, v47}];

  swift_unknownObjectRelease();
  [*(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionButton) setTintColor:v6];
  v20 = *(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_detailLabel);
  v21 = v6;
  if (!v6)
  {
    v21 = [objc_opt_self() secondaryLabelColor];
  }

  v22 = v6;
  [v20 setTextColor:v21];

  v23 = *(v1 + v14);
  v24 = 0.45;
  if (v23)
  {
    v24 = 0.6;
  }

  if (v23 == 2)
  {
    v24 = 1.0;
  }

  [v20 setAlpha:v24];
  v25 = [v20 layer];
  v26 = *(v1 + v14);
  if (v26 == 2)
  {
    v27 = 0;
  }

  else
  {
    if (v26)
    {
      v28 = &kCAFilterPlusL;
    }

    else
    {
      v28 = &kCAFilterPlusD;
    }

    v29 = *v28;
    v50 = *v28;
    sub_13C80(0, &qword_DE8170);
    v30 = v29;
    v27 = sub_ABB3A0();
  }

  [v25 setCompositingFilter:v27];

  swift_unknownObjectRelease();
  sub_2A1284();
  v31 = [*(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel) layer];
  v32 = *(v1 + v14);
  if (v32 == 2)
  {
    v33 = 0;
  }

  else
  {
    if (v32)
    {
      v34 = &kCAFilterPlusL;
    }

    else
    {
      v34 = &kCAFilterPlusD;
    }

    v35 = *v34;
    v51 = *v34;
    sub_13C80(0, &qword_DE8170);
    v36 = v35;
    v33 = sub_ABB3A0();
  }

  [v31 setCompositingFilter:v33];

  swift_unknownObjectRelease();
  v37 = *(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_moreButton);
  v38 = v22;
  if (!v6)
  {
    v38 = [objc_opt_self() labelColor];
  }

  v39 = v22;
  [v37 setTitleColor:v38 forState:0];

  v40 = *(v1 + v48);
  if (v40)
  {
    [v40 _luminance];
    if (v41 == 1.0)
    {
      v42 = 1;
      goto LABEL_46;
    }

    if (v41 == 0.0)
    {
      v42 = 0;
      goto LABEL_46;
    }
  }

  v43 = *(v1 + v14);
  if (v43 == 2)
  {
    v42 = 2;
  }

  else
  {
    v42 = v43 & 1;
  }

LABEL_46:
  v44 = v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionStackLayoutHelper;
  v45 = *(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionStackLayoutHelper);
  SymbolButton.materialColor.setter(v42);

  v46 = *(v44 + 8);
  SymbolButton.materialColor.setter(v42);

  sub_2A4304();
}

id sub_2A1284()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel);
  v3 = v2[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_isEnabled];
  if (v3 == 1)
  {
    v4 = [objc_opt_self() labelColor];
LABEL_3:
    v5 = v4;
    goto LABEL_11;
  }

  v6 = *(v0 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_textColor);
  v5 = v6;
  if (!v6)
  {
    v7 = *(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_artworkProminentColor);
    if (v7 == 2)
    {
      v4 = [objc_opt_self() secondaryLabelColor];
      goto LABEL_3;
    }

    v8 = objc_opt_self();
    v9 = &selRef_systemWhiteColor;
    if ((v7 & 1) == 0)
    {
      v9 = &selRef_systemBlackColor;
    }

    v5 = [v8 *v9];
  }

  v10 = v6;
LABEL_11:
  v11 = *&v2[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textColor];
  *&v2[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textColor] = v5;
  sub_13C80(0, qword_DFAAC0);
  v12 = v5;
  if ((sub_ABA790() & 1) == 0)
  {
    sub_2366F4();
  }

  v13 = 1.0;
  if ((v3 & 1) == 0)
  {
    v13 = 0.6;
    if (*(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_artworkProminentColor) == 2)
    {
      v13 = 1.0;
    }
  }

  return [v2 setAlpha:v13];
}

uint64_t sub_2A1428()
{
  v1 = v0;
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF37F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_AF4EC0;
  *(v2 + 32) = sub_AB5330();
  *(v2 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_ABA6F0();
  swift_unknownObjectRelease();

  v3 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel];
  v4 = *(v3 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text);
  v5 = *(v3 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8);
  v6 = *(v3 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v7 = *(v3 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text);
    }

    else
    {
      v7 = 0;
    }

    if (v6 == 2)
    {
      v8 = *(v3 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8);
    }

    else
    {
      v8 = 0xE000000000000000;
    }

    sub_258078(v4, v5, v6);
  }

  else if (*(v3 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16))
  {
    v9 = *(v3 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text);
    v10 = *(v3 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8);
    v11 = [v4 string];
    v7 = sub_AB92A0();
    v8 = v12;

    sub_2372F0(v9, v10, 1);
  }

  else
  {
    v7 = *(v3 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text);
    v8 = *(v3 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8);
    sub_258078(v4, v5, 0);
  }

  if ((v8 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v13 = v7 & 0xFFFFFFFFFFFFLL;
  }

  v14 = 30.0;
  if (!v13)
  {
    v14 = 26.0;
  }

  v15 = sub_2A8ACC(v36, v14);
  v16 = *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_topSpacer];
  [v1 addArrangedSubview:{v16, v15}];
  v17 = *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField];
  [v1 addArrangedSubview:v17];
  v18 = *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionButton];
  [v1 addArrangedSubview:v18];
  [v1 addArrangedSubview:*&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_detailEmptyTextSpacer]];
  v19 = *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_detailLabel];
  [v1 addArrangedSubview:v19];
  [v1 addArrangedSubview:v3];
  v20 = *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionsContainerView];
  [v1 addArrangedSubview:v20];
  if (v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_layout + 2] == 1 && *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_glideActionIndicatorView])
  {
    [v1 addArrangedSubview:?];
  }

  [v1 addArrangedSubview:*&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_bottomSpacer]];
  [v1 setAxis:1];
  [v1 setBaselineRelativeArrangement:1];
  [v16 setUserInteractionEnabled:0];
  [v1 insertSubview:*&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_visibilitySwitch] aboveSubview:v20];
  [v1 addSubview:*&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_moreButton]];
  [v17 setUserInteractionEnabled:0];
  v21 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_isEnabled;
  v17[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_isEnabled] = 0;
  sub_2351D4();
  v22 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_maximumNumberOfLines;
  *&v17[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_maximumNumberOfLines] = 2;
  if ((v17[v21] & 1) == 0)
  {
    v23 = [*&v17[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView] textContainer];
    [v23 setMaximumNumberOfLines:*&v17[v22]];
  }

  [*&v17[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView] setAdjustsFontForContentSizeCategory:1];
  v24 = [v18 titleLabel];
  [v24 _setTextColorFollowsTintColor:1];

  v25 = [v18 titleLabel];
  if (v25)
  {
    v26 = v25;
    [v25 setNumberOfLines:3];
  }

  [v19 setNumberOfLines:0];
  __chkstk_darwin([v19 setAdjustsFontForContentSizeCategory:1]);
  v27 = static PlayIntentLayoutHelper.Configuration.with(_:)(sub_2A9930);
  v28 = &v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionStackLayoutHelper];
  *(v28 + 8) = v27;
  *(v28 + 3) = v29;
  [v1 setNeedsLayout];
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = v3 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_delegate;
  v32 = *(v3 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_delegate + 32);
  *(v31 + 32) = sub_2A9978;
  *(v31 + 40) = v30;

  sub_17654(v32);

  [*(v3 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView) setAdjustsFontForContentSizeCategory:1];
  v33 = sub_2A0C3C();
  [v33 setActive:1];

  v34 = sub_2A0CD0();
  [v34 setActive:1];

  sub_2A0D84();
  return sub_2A9900(v36);
}

void sub_2A1984()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel;
    sub_235318();
    v4 = (v3 & 1) != 0 && (*(*&v1[v2] + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_isEnabled) & 1) == 0 && v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_layout] < 2u;
    [*&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_moreButton] setHidden:!v4];
    sub_2A5854(v4);
  }
}

void sub_2A1A4C()
{
  v1 = v0;
  v2 = [v0 superview];
  if (!v2)
  {
    return;
  }

  v3 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField];
  [v3 endEditing:1];
  v4 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel];
  [v4 removeFromSuperview];
  v5 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionsContainerView];
  [v5 removeFromSuperview];
  v6 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_visibilitySwitch];
  [v6 removeFromSuperview];
  v155 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_glideActionIndicatorView;
  [*&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_glideActionIndicatorView] removeFromSuperview];
  v7 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_bottomSpacer];
  [v7 removeFromSuperview];
  v156 = &v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_layout];
  v8 = v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_layout];
  v9 = [v1 superview];
  v10 = v9;
  if (v8 == 2)
  {
    if (v9)
    {
      type metadata accessor for DetailHeader();
      swift_dynamicCastClassUnconditional();
      v11 = sub_29E884();

      [v11 removeFromSuperview];
      [*&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_topSpacer] removeFromSuperview];
      [v3 removeFromSuperview];
      [*&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionButton] removeFromSuperview];
      [*&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_detailLabel] removeFromSuperview];
      [*&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_detailEmptyTextSpacer] removeFromSuperview];
      if (v156[1])
      {
        goto LABEL_7;
      }

      v12 = v7;
      v13 = [v1 superview];
      if (v13)
      {
        v14 = v13;
        swift_dynamicCastClassUnconditional();
        sub_29E524(&v164);
        v15 = v164;
        v16 = v165;
        v17 = v166;
        v19 = v167;
        v18 = v168;

        [v18 setActive:0];
        v7 = v12;
LABEL_7:
        v20 = *&v1[v155];
        if (v20 && v156[2] == 1)
        {
          [v1 addArrangedSubview:v20];
        }

        else
        {
          [v1 addArrangedSubview:v5];
        }

        [v1 addArrangedSubview:v7];
        v32 = &v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionStackLayoutHelper];
        v33 = *v32;
        SymbolButton.materialColor.setter(2);

        v157 = v32[1];
        SymbolButton.materialColor.setter(2);

        return;
      }

      goto LABEL_78;
    }

    __break(1u);
    goto LABEL_75;
  }

  v153 = v4;
  v151 = v7;
  if (!v9)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  type metadata accessor for DetailHeader();
  v150 = v10;
  v154 = swift_dynamicCastClassUnconditional();
  v21 = [v1 superview];
  if (!v21)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v22 = v21;
  v23 = swift_dynamicCastClassUnconditional();
  v24 = [v1 superview];
  if (!v24)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    return;
  }

  v25 = v24;
  swift_dynamicCastClassUnconditional();
  v26 = sub_29E884();

  [v23 insertSubview:v26 belowSubview:v1];
  [v1 addArrangedSubview:*&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_topSpacer]];
  [v1 addArrangedSubview:v3];
  v149 = *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionButton];
  [v1 addArrangedSubview:?];
  [v1 addArrangedSubview:*&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_detailEmptyTextSpacer]];
  v152 = *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_detailLabel];
  [v1 addArrangedSubview:?];
  if (v156[1])
  {
    v27 = *&v4[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
    v28 = *&v4[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8];
    v29 = v4[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16];
    if (v29 > 1)
    {
      if (v29 == 2)
      {
        v30 = *&v4[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
      }

      else
      {
        v30 = 0;
      }

      if (v29 == 2)
      {
        v31 = *&v4[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8];
      }

      else
      {
        v31 = 0xE000000000000000;
      }

      sub_258078(v27, v28, v29);
    }

    else if (v4[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16])
    {
      v100 = *&v4[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
      v101 = *&v4[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8];
      v102 = [v27 string];
      v30 = sub_AB92A0();
      v31 = v103;

      sub_2372F0(v100, v101, 1);
    }

    else
    {
      v30 = *&v4[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
      v31 = *&v4[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8];
      sub_258078(v27, v28, 0);
    }

    if ((v31 & 0x2000000000000000) != 0)
    {
      v104 = HIBYTE(v31) & 0xF;
    }

    else
    {
      v104 = v30 & 0xFFFFFFFFFFFFLL;
    }

    v105 = 30.0;
    if (!v104)
    {
      v105 = 26.0;
    }

    sub_2A8ACC(&v164, v105);
    sub_29E524(&v158);
    v106 = v158;
    v107 = v159;
    v108 = v160;
    v109 = v161;
    v110 = v163;

    [v110 setActive:0];
    v111 = v175;
    v91 = v173;
    v112 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_favoriteSymbol;
    v113 = *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_favoriteSymbol];
    v147 = v174;
    if (v113)
    {
      v114 = v176;
      v115 = v174;
      v116 = v111;
      v117 = [v113 imageWithConfiguration:v114];
      v118 = *&v1[v112];
    }

    else
    {
      v119 = v174;
      v120 = v111;
      v118 = 0;
      v117 = 0;
    }

    v121 = v151;
    v122 = v153;
    *&v1[v112] = v117;

    v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionStackLayoutHelper + 16] = 1;
    [v1 setNeedsLayout];
    v148 = v111;
    if (v154[OBJC_IVAR____TtC16MusicApplication12DetailHeader_isEditing] == 1)
    {
      v123 = &selRef_setSubtitleText_;
      [v1 addArrangedSubview:v153];
      [v1 addArrangedSubview:v5];
    }

    else
    {
      [v152 setHidden:0];
      v123 = &selRef_setSubtitleText_;
      if ((v156[2] & 1) == 0)
      {
        [v1 addArrangedSubview:v5];
      }

      [v1 addArrangedSubview:v153];
    }

    [v1 addArrangedSubview:v6];
    v124 = v149;
    v125 = &selRef_setSubtitleText_;
    if (v156[2] == 1 && *&v1[v155])
    {
      [v1 addArrangedSubview:?];
    }

    [v1 addArrangedSubview:v151];
    sub_2A9900(&v164);
    goto LABEL_70;
  }

  sub_2A8864(v1, &v164);
  v34 = v172;
  v146 = v170;
  v147 = v171;
  v35 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_favoriteSymbol;
  v36 = *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_favoriteSymbol];
  v148 = v172;
  if (v36)
  {
    v37 = v172;
    v38 = v175;
    v39 = v171;
    v40 = v37;
    v41 = [v36 imageWithConfiguration:v38];
    v42 = *&v1[v35];
  }

  else
  {
    v43 = v171;
    v44 = v34;
    v42 = 0;
    v41 = 0;
  }

  *&v1[v35] = v41;

  v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionStackLayoutHelper + 16] = 0;
  [v1 setNeedsLayout];
  [v1 addArrangedSubview:v4];
  [v154 addSubview:v5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_AF82E0;
  v46 = [v5 bottomAnchor];
  v47 = [v1 superview];
  if (!v47)
  {
    goto LABEL_79;
  }

  v48 = v47;
  v49 = [swift_dynamicCastClassUnconditional() bottomAnchor];

  v50 = [v46 constraintEqualToAnchor:v49 constant:*&v164 - v169];
  *(v45 + 32) = v50;
  v51 = [v5 leadingAnchor];
  v52 = [v1 leadingAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];

  *(v45 + 40) = v53;
  v54 = [v5 trailingAnchor];
  v55 = [v1 trailingAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];

  *(v45 + 48) = v56;
  Array<A>.activate()(v45);

  if (v156[2] == 1)
  {
    v57 = *&v1[v155];
    if (v57)
    {
      v58 = v57;
      [v5 setHidden:1];
      v59 = UIView.forAutolayout.getter();
      [v154 addSubview:v59];

      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_AF82E0;
      v61 = [v58 bottomAnchor];
      v62 = sub_29F500();
      v63 = [v62 bottomAnchor];

      v64 = [v61 constraintEqualToAnchor:v63];
      *(v60 + 32) = v64;
      v65 = [v58 leadingAnchor];
      v66 = [v1 leadingAnchor];
      v67 = [v65 constraintEqualToAnchor:v66];

      *(v60 + 40) = v67;
      v68 = [v58 trailingAnchor];
      v69 = [v1 trailingAnchor];
      v70 = [v68 constraintEqualToAnchor:v69];

      *(v60 + 48) = v70;
      Array<A>.activate()(v60);
    }
  }

  [v154 insertSubview:v6 aboveSubview:v5];
  v71 = objc_opt_self();
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_AF93E0;
  v73 = [v6 topAnchor];
  v74 = [v5 topAnchor];
  v75 = [v73 constraintEqualToAnchor:v74];

  *(v72 + 32) = v75;
  v76 = [v6 leadingAnchor];
  v77 = [v5 leadingAnchor];
  v78 = [v76 constraintEqualToAnchor:v77];

  *(v72 + 40) = v78;
  v79 = [v6 trailingAnchor];
  v80 = [v5 trailingAnchor];
  v81 = [v79 constraintEqualToAnchor:v80];

  *(v72 + 48) = v81;
  v82 = [v6 bottomAnchor];
  v83 = [v5 bottomAnchor];
  v84 = [v82 constraintEqualToAnchor:v83];

  *(v72 + 56) = v84;
  sub_13C80(0, &qword_DF7920);
  isa = sub_AB9740().super.isa;

  [v71 activateConstraints:isa];

  if (v156[2] == 1 && (v86 = *&v1[v155]) != 0)
  {
    v87 = v86;
    v88 = [v87 topAnchor];
    v89 = [v1 bottomAnchor];
    v90 = [v88 constraintEqualToAnchor:v89];
  }

  else
  {
    v88 = [v5 topAnchor];
    v89 = [v1 bottomAnchor];
    v90 = [v88 constraintEqualToAnchor:v89];
  }

  v91 = v146;

  v92 = *&v153[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
  v93 = v153[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16];
  if (v93 > 1)
  {
    if (v93 != 2)
    {
      v97 = 0;
      v99 = 0xE000000000000000;
      goto LABEL_63;
    }

LABEL_43:
    v97 = *&v153[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
    v99 = *&v153[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8];
LABEL_63:
    sub_258078(v92, *&v153[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8], v93);
    goto LABEL_64;
  }

  if (!v153[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16])
  {
    goto LABEL_43;
  }

  v94 = *&v153[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
  v95 = *&v153[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8];
  v96 = [v92 string];
  v97 = sub_AB92A0();
  v99 = v98;

  v91 = v146;
  sub_2372F0(v94, v95, 1);
LABEL_64:

  if ((v99 & 0x2000000000000000) != 0)
  {
    v126 = HIBYTE(v99) & 0xF;
  }

  else
  {
    v126 = v97 & 0xFFFFFFFFFFFFLL;
  }

  v121 = v151;
  v127 = v3;
  if (v126)
  {
    sub_29E524(&v158);
    v128 = v158;
    v129 = v159;
    v130 = v160;
    v131 = v161;
    v132 = v163;

    [v132 setActive:0];
    [v90 setActive:1];

    sub_2A8D74(&v164);
    v3 = v127;
    v122 = v153;
    v124 = v149;
    v123 = &selRef_setSubtitleText_;
    v125 = &selRef_setSubtitleText_;
  }

  else
  {
    sub_29E524(&v158);
    v133 = v158;
    v134 = v159;
    v135 = v160;
    v136 = v161;
    v137 = v163;

    v121 = v151;
    [v5 bounds];
    v125 = &selRef_setSubtitleText_;
    [v137 setConstant:CGRectGetHeight(v178) * -0.5];

    v91 = v146;
    v138 = *&v154[OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___detailsConstraints + 40];
    [v138 setActive:1];

    [v90 setActive:0];
    sub_2A8D74(&v164);
    v3 = v127;
    v122 = v153;
    v124 = v149;
    v123 = &selRef_setSubtitleText_;
  }

LABEL_70:
  v139 = sub_2A0C3C();
  [v122 intrinsicContentSize];
  [v139 v125[321]];

  [v1 v123[477]];
  [v124 setContentHorizontalAlignment:4 * (v91 != 1)];
  *&v3[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textAlignment] = v91;
  v141 = [v124 titleLabel];
  [v141 setTextAlignment:v91];

  [v152 setTextAlignment:v91];
  v142 = *&v3[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font];
  *&v3[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font] = v147;
  v143 = v147;

  sub_2366F4();
  v144 = [v124 titleLabel];
  if (v144)
  {
    v145 = v144;
    [v144 setFont:v148];
  }

  [v1 bringSubviewToFront:*&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_moreButton]];
  sub_2A2B88();
  sub_2A2D6C();
}

void sub_2A2B88()
{
  if (v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_layout + 1])
  {
    v1 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel] + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text;
    v2 = *v1;
    v3 = *(v1 + 8);
    v4 = *(v1 + 16);
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v5 = *v1;
      }

      else
      {
        v5 = 0;
      }

      if (v4 == 2)
      {
        v6 = *(v1 + 8);
      }

      else
      {
        v6 = 0xE000000000000000;
      }

      sub_258078(v2, v3, v4);
    }

    else if (*(v1 + 16))
    {
      v9 = *v1;
      v10 = *(v1 + 8);
      v11 = [v2 string];
      v5 = sub_AB92A0();
      v6 = v12;

      sub_2372F0(v9, v10, 1);
    }

    else
    {
      v5 = *v1;
      v6 = *(v1 + 8);
      sub_258078(v2, v3, 0);
    }

    if ((v6 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(v6) & 0xF;
    }

    else
    {
      v13 = v5 & 0xFFFFFFFFFFFFLL;
    }

    v14 = 30.0;
    if (!v13)
    {
      v14 = 26.0;
    }

    v15 = [v0 traitCollection];
    v16 = [v15 preferredContentSizeCategory];

    LOBYTE(v15) = sub_ABA350();
    if (v15)
    {
      v17 = v21;
    }

    else
    {
      v17 = v20;
    }

    [*&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_detailLabel] setFont:v17];
    sub_2A9900(v18);
  }

  else
  {
    v7 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_detailLabel];
    sub_2A8864(v0, v18);
    v8 = v19;
    sub_2A8D74(v18);
    [v7 setFont:v8];
  }
}

void sub_2A2D6C()
{
  v1 = [v0 arrangedSubviews];
  sub_13C80(0, &qword_DF12A0);
  v2 = sub_AB9760();

  if (v2 >> 62)
  {
    v3 = sub_ABB060();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_3605EC(i, v2);
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    [v0 setCustomSpacing:v5 afterView:3.40282347e38];
  }

LABEL_10:

  v7 = &v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_layout];
  if (v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_layout + 1])
  {
    v8 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel] + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text;
    v9 = *v8;
    v10 = *(v8 + 8);
    v11 = *(v8 + 16);
    v149 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel];
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v12 = *v8;
      }

      else
      {
        v12 = 0;
      }

      if (v11 == 2)
      {
        v13 = *(v8 + 8);
      }

      else
      {
        v13 = 0xE000000000000000;
      }

      sub_258078(v9, v10, v11);
    }

    else if (*(v8 + 16))
    {
      v72 = *v8;
      v73 = *(v8 + 8);
      v74 = [v9 string];
      v12 = sub_AB92A0();
      v13 = v75;

      sub_2372F0(v72, v73, 1);
    }

    else
    {
      v12 = *v8;
      v13 = *(v8 + 8);
      sub_258078(v9, v10, 0);
    }

    if ((v13 & 0x2000000000000000) != 0)
    {
      v76 = HIBYTE(v13) & 0xF;
    }

    else
    {
      v76 = v12 & 0xFFFFFFFFFFFFLL;
    }

    v77 = 30.0;
    if (!v76)
    {
      v77 = 26.0;
    }

    sub_2A8ACC(&v152, v77);
    v78 = v154;
    v79 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_topSpacer];
    v80 = objc_opt_self();
    v81 = [v80 defaultMetrics];
    v82 = [v0 traitCollection];
    [v81 scaledValueForValue:v82 compatibleWithTraitCollection:v78];
    v84 = v83;

    [v0 setCustomSpacing:v79 afterView:v84];
    v85 = [v0 superview];
    if (v85)
    {
      v86 = v85;
      type metadata accessor for DetailHeader();
      v87 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC16MusicApplication12DetailHeader_isEditing);

      if (v87 == 1)
      {
        v88 = v159;
        v89 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField];
        v90 = [v80 defaultMetrics];
        v91 = [v0 traitCollection];
        [v90 scaledValueForValue:v91 compatibleWithTraitCollection:v88];
        v93 = v92;

        [v0 setCustomSpacing:v89 afterView:v93];
        v94 = v160;
        v95 = [v80 defaultMetrics];
        v96 = [v0 traitCollection];
        [v95 scaledValueForValue:v96 compatibleWithTraitCollection:v94];
        v98 = v97;

        v99 = v0;
        v100 = v98;
        v101 = v149;
LABEL_62:
        [v99 setCustomSpacing:v101 afterView:{v100, v149}];
        goto LABEL_63;
      }

      if (*v7 == 2)
      {
        v102 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_glideActionIndicatorView];
        if (!v102 || v7[2] != 1)
        {
          v140 = v163;
          v141 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionsContainerView];
          v95 = [v80 defaultMetrics];
          v142 = [v0 traitCollection];
          [v95 scaledValueForValue:v142 compatibleWithTraitCollection:v140];
          v144 = v143;

          v99 = v0;
          v100 = v144;
          v101 = v141;
          goto LABEL_62;
        }

        v103 = v163;
        v104 = v102;
        v95 = [v80 defaultMetrics];
        v105 = [v0 traitCollection];
      }

      else
      {
        v106 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionButton];
        if (*(v106 + OBJC_IVAR____TtC16MusicApplicationP33_A13DD19D58D33EBE9EDF18CE691179B710TextButton_hasExcessiveHeightCharacters))
        {
          v107 = &v156;
        }

        else
        {
          v107 = &v155;
        }

        v108 = *v107;
        v109 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField];
        v110 = [v80 defaultMetrics];
        v111 = [v0 traitCollection];
        [v110 scaledValueForValue:v111 compatibleWithTraitCollection:v108];
        v113 = v112;

        [v0 setCustomSpacing:v109 afterView:v113];
        v114 = v157;
        v115 = [v80 defaultMetrics];
        v116 = [v0 traitCollection];
        [v115 scaledValueForValue:v116 compatibleWithTraitCollection:v114];
        v118 = v117;

        [v0 setCustomSpacing:v106 afterView:v118];
        v119 = v158;
        v120 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_detailLabel];
        v121 = [v80 defaultMetrics];
        v122 = [v0 traitCollection];
        [v121 scaledValueForValue:v122 compatibleWithTraitCollection:v119];
        v124 = v123;

        [v0 setCustomSpacing:v120 afterView:v124];
        v125 = v162;
        v126 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionsContainerView];
        v127 = [v80 defaultMetrics];
        v128 = [v0 traitCollection];
        [v127 scaledValueForValue:v128 compatibleWithTraitCollection:v125];
        v130 = v129;

        [v0 setCustomSpacing:v126 afterView:v130];
        v131 = v165;
        v132 = [v80 defaultMetrics];
        v133 = [v0 traitCollection];
        [v132 scaledValueForValue:v133 compatibleWithTraitCollection:v131];
        v135 = v134;

        [v0 setCustomSpacing:v151 afterView:v135];
        v136 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_glideActionIndicatorView];
        if (!v136)
        {
          goto LABEL_64;
        }

        v103 = v166;
        v104 = v136;
        v95 = [v80 defaultMetrics];
        v105 = [v0 traitCollection];
      }

      v137 = v105;
      [v95 scaledValueForValue:v137 compatibleWithTraitCollection:v103];
      v139 = v138;

      [v0 setCustomSpacing:v104 afterView:v139];
LABEL_63:

LABEL_64:
      sub_2A9900(&v152);
      return;
    }

    goto LABEL_75;
  }

  v150 = &v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_layout];
  sub_2A8864(v0, &v152);
  v14 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField];
  v15 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font;
  [*&v14[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font] ascender];
  v17 = v16;
  [v14 bounds];
  [*&v14[v15] descender];
  [v0 setCustomSpacing:*&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_topSpacer] afterView:v17];
  v18 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionButton];
  if (*(v18 + OBJC_IVAR____TtC16MusicApplicationP33_A13DD19D58D33EBE9EDF18CE691179B710TextButton_hasExcessiveHeightCharacters))
  {
    v19 = &v154;
  }

  else
  {
    v19 = &v153;
  }

  v20 = *v19;
  v21 = objc_opt_self();
  v22 = [v21 defaultMetrics];
  v23 = &selRef__authenticateReturningError_;
  v24 = [v0 traitCollection];
  v25 = &selRef_setSubtitleText_;
  [v22 scaledValueForValue:v24 compatibleWithTraitCollection:v20];
  v27 = v26;

  [v0 setCustomSpacing:v14 afterView:v27];
  v28 = v156;
  v29 = [v21 defaultMetrics];
  v30 = [v0 traitCollection];
  [v29 scaledValueForValue:v30 compatibleWithTraitCollection:v28];
  v32 = v31;

  [v0 setCustomSpacing:v18 afterView:v32];
  v33 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_detailLabel];
  v34 = [v33 text];
  if (v34)
  {
    v35 = v34;
    v36 = sub_AB92A0();
    v38 = v37;

    v39 = v36 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v39 = 0;
    v38 = 0xE000000000000000;
  }

  v40 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v40 = v39;
  }

  if (v40)
  {
LABEL_32:
    if (*v150 == 2)
    {
      v50 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_glideActionIndicatorView];
      if (v50 && v150[2] == 1)
      {
        v51 = v164;
        v52 = v50;
        v53 = [v21 defaultMetrics];
        v54 = [v0 traitCollection];
        [v53 scaledValueForValue:v54 compatibleWithTraitCollection:v51];
        v56 = v55;

        [v0 setCustomSpacing:v52 afterView:v56];
      }

      else
      {
        v67 = v164;
        v68 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionsContainerView];
        v53 = [v21 defaultMetrics];
        v69 = [v0 traitCollection];
        [v53 scaledValueForValue:v69 compatibleWithTraitCollection:v67];
        v71 = v70;

        [v0 setCustomSpacing:v68 afterView:v71];
      }

      goto LABEL_72;
    }

    v57 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel];
    v58 = *(v57 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text);
    v59 = *(v57 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16);
    if (v59 > 1)
    {
      if (v59 != 2)
      {
        v63 = 0;
        v65 = 0xE000000000000000;
        goto LABEL_66;
      }
    }

    else if (*(v57 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16))
    {
      v60 = *(v57 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text);
      v61 = *(v57 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8);
      v62 = [v58 string];
      v63 = sub_AB92A0();
      v65 = v64;

      v23 = &selRef__authenticateReturningError_;
      v66 = v60;
      v25 = &selRef_setSubtitleText_;
      sub_2372F0(v66, v61, 1);
LABEL_67:

      if ((v65 & 0x2000000000000000) != 0)
      {
        if ((v65 & 0xF00000000000000) == 0)
        {
LABEL_73:
          sub_2A8D74(&v152);
          return;
        }
      }

      else if ((v63 & 0xFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_73;
      }

      [v0 setCustomSpacing:v33 afterView:{v157, v150}];
      v145 = v161;
      v53 = [v21 defaultMetrics];
      v146 = [v0 v23[334]];
      [v53 v25[474]];
      v148 = v147;

      [v0 setCustomSpacing:v57 afterView:v148];
LABEL_72:

      goto LABEL_73;
    }

    v63 = *(v57 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text);
    v65 = *(v57 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8);
LABEL_66:
    sub_258078(v58, *(v57 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8), v59);
    goto LABEL_67;
  }

  v41 = [v33 font];
  if (v41)
  {
    v42 = v41;
    [v41 lineHeight];
    v44 = v43;

    v45 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_detailEmptyTextSpacer];
    v46 = [v21 defaultMetrics];
    v47 = [v0 traitCollection];
    [v46 scaledValueForValue:v47 compatibleWithTraitCollection:v44];
    v49 = v48;

    [v0 setCustomSpacing:v45 afterView:v49];
    goto LABEL_32;
  }

LABEL_76:
  __break(1u);
}

void sub_2A3A10(void *a1, unint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  if ((*(v2 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_layout + 1) & 1) == 0)
  {

    sub_2A8864(v2, v35);
    v6 = *(v2 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel);
    v13 = v6 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_lineHeight;
    *v13 = v37;
    *(v13 + 8) = 0;
    v14 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_maximumNumberOfLines;
    *(v6 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_maximumNumberOfLines) = v36;
    if ((*(v6 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_isEnabled) & 1) == 0)
    {
      v15 = [*(v6 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView) textContainer];
      [v15 setMaximumNumberOfLines:*(v6 + v14)];
    }

    v16 = v40;
    sub_2A8D74(v35);
    goto LABEL_32;
  }

  v6 = *(v2 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel);
  v7 = (v6 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text);
  v8 = *(v6 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text);
  v9 = *(v6 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8);
  v10 = *(v6 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = *(v6 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text);
    }

    else
    {
      v11 = 0;
    }

    if (v10 == 2)
    {
      v12 = *(v6 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8);
    }

    else
    {
      v12 = 0xE000000000000000;
    }
  }

  else
  {
    if (*(v6 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16))
    {

      sub_258078(v8, v9, 1);
      v17 = [v8 string];
      v11 = sub_AB92A0();
      v12 = v18;

      sub_2372F0(v8, v9, 1);
      goto LABEL_22;
    }

    v11 = *v7;
    v12 = v7[1];
  }

  sub_258078(v8, v9, v10);
LABEL_22:

  if ((v12 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(v12) & 0xF;
  }

  else
  {
    v19 = v11 & 0xFFFFFFFFFFFFLL;
  }

  v20 = 30.0;
  if (!v19)
  {
    v20 = 26.0;
  }

  v21 = sub_2A8ACC(v35, v20);
  v22 = v6 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_lineHeight;
  *v22 = v39;
  *(v22 + 8) = 0;
  v23 = [v3 traitCollection];
  v24 = [v23 preferredContentSizeCategory];

  LOBYTE(v23) = sub_ABA360();
  v25 = v38;
  if ((v23 & 1) == 0)
  {
    v25 = v38 + 2;
    if (__OFADD__(v38, 2))
    {
      __break(1u);
      return;
    }
  }

  v26 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_maximumNumberOfLines;
  *(v6 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_maximumNumberOfLines) = v25;
  if ((*(v6 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_isEnabled) & 1) == 0)
  {
    v27 = [*(v6 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView) textContainer];
    [v27 setMaximumNumberOfLines:*(v6 + v26)];
  }

  v16 = v41;
  sub_2A9900(v35);
LABEL_32:
  v28 = *(v6 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font);
  *(v6 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font) = v16;
  v29 = v16;

  sub_2366F4();
  v30 = v6 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text;
  v31 = *(v6 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text);
  v32 = *(v6 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8);
  v33 = *(v6 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16);
  if (v33 != 2 || (v4 == v31 ? (v34 = v32 == v5) : (v34 = 0), !v34 && (sub_ABB3C0() & 1) == 0))
  {
    *v30 = v4;
    *(v30 + 8) = v5;
    *(v30 + 16) = 2;

    sub_2372F0(v31, v32, v33);
    sub_2366F4();
  }
}

void sub_2A3DB0()
{
  v1 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel];
  v2 = *&v1[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8];
  v4 = v1[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16];
  if (v4 <= 1)
  {
    if (v1[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16])
    {
      sub_23732C(*&v1[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text], *&v1[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8], 1);
      v5 = [v2 string];
      sub_AB92A0();

LABEL_6:
      v6 = sub_AB9260();
      v7 = [v6 _isNaturallyRTL];

      sub_2372F0(v2, v3, v4);
      v8 = v7;
      goto LABEL_8;
    }

LABEL_5:
    sub_23732C(*&v1[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text], *&v1[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8], v1[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16]);
    sub_23732C(v2, v3, v4);
    goto LABEL_6;
  }

  if (v4 == 2)
  {
    goto LABEL_5;
  }

  v8 = [v0 effectiveUserInterfaceLayoutDirection];
LABEL_8:
  [v1 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = *&v1[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font];
  v18 = v1[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_lineHeight + 8];
  v49 = v17;
  if (v18 == 255)
  {
    [v17 lineHeight];
    v19 = v21;
  }

  else
  {
    v19 = *&v1[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_lineHeight];
    if (v18)
    {
      v20 = v17;
    }

    else
    {
      v22 = objc_opt_self();
      v23 = v49;
      v24 = [v22 defaultMetrics];
      [v24 scaledValueForValue:v19];
      v19 = v25;
    }
  }

  [v49 _bodyLeading];
  v47 = v26;
  v27 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_moreButton];
  [v27 sizeToFit];
  [v27 layoutIfNeeded];
  [v27 frame];
  CGRectGetWidth(v53);
  v54.origin.x = v10;
  v54.origin.y = v12;
  v54.size.width = v14;
  v54.size.height = v16;
  CGRectGetMaxX(v54);
  v55.origin.x = v10;
  v55.origin.y = v12;
  v55.size.width = v14;
  v55.size.height = v16;
  CGRectGetMaxY(v55);
  [v0 bounds];
  sub_ABA490();
  [v27 setFrame:?];
  [v0 convertRect:v27 toCoordinateSpace:{v10, v12, v14, v16}];
  v28 = &v27[OBJC_IVAR____TtC16MusicApplicationP33_A13DD19D58D33EBE9EDF18CE691179B710MoreButton_hitArea];
  *v28 = v29;
  *(v28 + 1) = v30;
  *(v28 + 2) = v31;
  *(v28 + 3) = v32;
  v28[32] = 0;
  v33 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelMaskLayer];
  if (v33)
  {
    v48 = v33;
    v34 = [v27 titleLabel];
    if (v34)
    {
      v35 = v34;
      [v34 frame];
      v37 = v36;

      v38 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelGradientSublayer];
      if (v38)
      {
        v39 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelContainerSublayer];
        if (v39)
        {
          v40 = objc_opt_self();
          v41 = v38;
          v42 = v39;
          [v40 begin];
          [v40 setDisableActions:1];
          [v1 bounds];
          [v48 setFrame:?];
          v43 = v47 + v47 + v37;
          if (v8 == &dword_0 + 1)
          {
            v44 = 0.0;
            v45 = CGRectMaxXEdge;
          }

          else
          {
            [v1 bounds];
            v45 = CGRectMinXEdge;
            v44 = CGRectGetMaxX(v56) - v43;
          }

          [v1 bounds];
          [v42 setFrame:{v44, CGRectGetMaxY(v57) - v19, v43, v19}];
          [v42 bounds];
          memset(&slice, 0, sizeof(slice));
          memset(&remainder, 0, sizeof(remainder));
          CGRectDivide(v58, &slice, &remainder, v47 + v47, v45);
          [v41 setFrame:{slice.origin.x, slice.origin.y, slice.size.width, slice.size.height}];
          [v40 commit];

          return;
        }
      }
    }

    v46 = v48;
  }

  else
  {
    v46 = v49;
  }
}

void sub_2A4304()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFCB98);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v71 - v3;
  v5 = *(v0 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField);
  v6 = v5 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text;
  v7 = *(v5 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text);
  v8 = *(v5 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8);
  v9 = *(v5 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16);
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      v7 = 0;
      v8 = 0xE000000000000000;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (!*(v5 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16))
  {
LABEL_5:
    sub_23732C(*(v5 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text), *(v5 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8), v9);
    goto LABEL_7;
  }

  sub_23732C(*(v5 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text), *(v5 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8), 1);
  v10 = [v7 string];
  v11 = sub_AB92A0();
  v74 = v6;
  v12 = v4;
  v13 = v1;
  v14 = v2;
  v15 = v5;
  v16 = v11;
  v18 = v17;

  sub_2372F0(v7, v8, 1);
  v7 = v16;
  v5 = v15;
  v2 = v14;
  v1 = v13;
  v4 = v12;
  v6 = v74;
  v8 = v18;
LABEL_7:
  if (*(v0 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_isFavorite) != 1 || (*(v5 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_isEnabled) & 1) != 0 || *(v0 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_layout) == 2)
  {
    v19 = *v6;
    v20 = *(v6 + 8);
    v21 = *(v6 + 16);
    if (v21 || (v7 == v19 ? (v22 = v20 == v8) : (v22 = 0), !v22 && (sub_ABB3C0() & 1) == 0))
    {
      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = 0;

      sub_2372F0(v19, v20, v21);
      sub_2366F4();
    }

    v23 = AccessibilityIdentifier.detailHeaderTitle.unsafeMutableAddressor();
    v24 = *v23;
    v25 = v23[1];
    type metadata accessor for TextViewLabel();

    UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v24, v25);
    return;
  }

  v72 = v5;
  v26 = *(v0 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_favoriteSymbol);
  if (v26)
  {
    v77 = v7;
    v78 = v8;
    sub_36A00(&qword_DFCBA0, &qword_DFCB98);
    v73 = v26;
    sub_AB48B0();
    v75 = 0;
    v76 = 0xE000000000000000;
    sub_2A9810();
    sub_2A9864();
    v74 = v0;
    sub_AB9D90();
    (*(v2 + 8))(v4, v1);

    v27 = objc_allocWithZone(NSMutableAttributedString);
    v28 = sub_AB9260();
    v29 = [v27 initWithString:v28];

    String.nonBreakingSpace.unsafeMutableAddressor();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = NSFontAttributeName;
    v31 = objc_opt_self();

    v32 = NSFontAttributeName;
    v33 = [v31 preferredFontForTextStyle:UIFontTextStyleBody];
    *(inited + 64) = sub_13C80(0, &qword_DE6EE0);
    *(inited + 40) = v33;
    sub_96EB8(inited);
    swift_setDeallocating();
    sub_12E1C(inited + 32, &qword_DE6EE8);
    v34 = objc_allocWithZone(NSAttributedString);
    v35 = sub_AB9260();
    type metadata accessor for Key(0);
    sub_2A98B8(&qword_DE6EF0, type metadata accessor for Key);
    isa = sub_AB8FD0().super.isa;

    v37 = [v34 initWithString:v35 attributes:isa];

    [v29 appendAttributedString:v37];
    v38 = sub_2A0C50();
    v39 = v74;
    v40 = v38;
    v41 = *(v74 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_artworkProminentColor);
    if (v41 == 2)
    {
      v42 = [objc_opt_self() tintColor];
    }

    else
    {
      v43 = objc_opt_self();
      v44 = &selRef_systemWhiteColor;
      if ((v41 & 1) == 0)
      {
        v44 = &selRef_systemBlackColor;
      }

      v45 = [v43 *v44];
      v42 = [v45 colorWithAlphaComponent:0.6];
    }

    v47 = v72;
    v46 = v73;
    v48 = [v73 imageWithTintColor:v42];

    [v40 setImage:v48];
    v49 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView____lazy_storage___favoriteSymbolAttachment;
    v50 = *(v47 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font);
    v51 = *(v39 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView____lazy_storage___favoriteSymbolAttachment);
    [v50 capHeight];
    v53 = v52;
    [v46 size];
    v55 = round(v53 - v54) * 0.5;
    [v46 size];
    [v51 setBounds:{0.0, v55, v56, v57}];

    v58 = [objc_opt_self() attributedStringWithAttachment:*(v39 + v49)];
    [v29 appendAttributedString:v58];

    v59 = *(v6 + 16);
    if (v59 == 1)
    {
      v61 = *v6;
      v60 = *(v6 + 8);
      sub_13C80(0, &qword_DFA720);
      v62 = v29;
      sub_258078(v61, v60, 1);
      v63 = sub_ABA790();
      sub_2372F0(v61, v60, 1);
      if (v63)
      {
LABEL_32:

        v68 = AccessibilityIdentifier.detailHeaderTitleFavorited.unsafeMutableAddressor();
        v69 = *v68;
        v70 = v68[1];
        type metadata accessor for TextViewLabel();

        UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v69, v70);

        return;
      }

      LOBYTE(v59) = *(v6 + 16);
    }

    else
    {
      v64 = v29;
    }

    v65 = *v6;
    v66 = *(v6 + 8);
    *v6 = v29;
    *(v6 + 8) = 0;
    *(v6 + 16) = 1;
    v67 = v29;
    sub_2372F0(v65, v66, v59);
    sub_2366F4();
    goto LABEL_32;
  }
}

uint64_t sub_2A4B50@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v59 = sub_AB3AE0();
  v67 = *(v59 - 8);
  v1 = __chkstk_darwin(v59);
  v57 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v58 = &v47 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFCBB8);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v47 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFCB98);
  v66 = *(v62 - 8);
  v11 = __chkstk_darwin(v62);
  v56 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v47 - v14;
  __chkstk_darwin(v13);
  v55 = &v47 - v16;
  v63 = sub_AB4880();
  v65 = *(v63 - 8);
  __chkstk_darwin(v63);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFCBC0);
  __chkstk_darwin(v19 - 8);
  v21 = &v47 - v20;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFCBC8);
  v64 = *(v54 - 8);
  v22 = __chkstk_darwin(v54);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v61 = &v47 - v25;
  v26 = sub_AB4890();
  (*(*(v26 - 8) + 56))(v21, 1, 1, v26);
  sub_AB3AC0();
  sub_AB3B00();
  sub_36A00(&qword_DFCBD0, &qword_DFCBB8);
  sub_AB3AA0();
  v27 = *(v5 + 8);
  v27(v8, v4);
  sub_AB3AB0();
  v27(v10, v4);
  v49 = sub_36A00(&qword_DFCBA0, &qword_DFCB98);
  v50 = v15;
  v28 = v55;
  v29 = v15;
  v30 = v62;
  sub_AB4870();
  v52 = *(v66 + 8);
  v66 += 8;
  v52(v29, v30);
  v31 = *(v65 + 8);
  v65 += 8;
  v53 = v31;
  v31(v18, v63);
  sub_12E1C(v21, &qword_DFCBC0);
  v32 = v28;
  sub_AB3B10();
  sub_36A00(&qword_DFCBD8, &qword_DFCBC8);
  v33 = v54;
  sub_AB3AA0();
  v34 = *(v64 + 8);
  v64 += 8;
  v51 = v34;
  v35 = v24;
  v36 = v33;
  v34(v35, v33);
  v37 = v57;
  sub_AB3AD0();
  sub_2A98B8(&qword_DFCBE0, &type metadata accessor for Anchor);
  v38 = v58;
  v39 = v59;
  sub_AB3AA0();
  v40 = *(v67 + 8);
  v67 += 8;
  v48 = v40;
  v40(v37, v39);
  v41 = v32;
  sub_AB3AB0();
  sub_AB3AC0();
  v42 = v50;
  v43 = v62;
  sub_AB4860();
  v44 = v56;
  sub_AB4860();
  sub_AB4840();
  v45 = v52;
  v52(v44, v43);
  v45(v42, v43);
  v53(v18, v63);
  v45(v41, v43);
  v48(v38, v39);
  return v51(v61, v36);
}

uint64_t sub_2A52F4@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_AB4880();
  v24 = *(v1 - 8);
  v25 = v1;
  __chkstk_darwin(v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFCBB8);
  v5 = *(v4 - 8);
  v22 = v4;
  v23 = v5;
  __chkstk_darwin(v4);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFCB98);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v21 - v14;
  __chkstk_darwin(v13);
  v17 = &v21 - v16;
  sub_AB48A0();
  sub_36A00(&qword_DFCBA0, &qword_DFCB98);
  sub_AB3A80();
  v18 = *(v9 + 8);
  v18(v15, v8);
  sub_AB48A0();
  sub_AB3A80();
  v18(v12, v8);
  sub_AB3A90();
  sub_AB3AC0();
  sub_36A00(&qword_DFCBD0, &qword_DFCBB8);
  v19 = v22;
  sub_AB4850();
  (*(v24 + 8))(v3, v25);
  sub_AB3AF0();
  (*(v23 + 8))(v7, v19);
  v18(v15, v8);
  return (v18)(v17, v8);
}

void sub_2A56B8()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = type metadata accessor for DetailHeader.DetailsView();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  v2 = &v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionStackLayoutHelper];
  v3 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionStackLayoutHelper];
  v4 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionStackLayoutHelper + 8];
  v5 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionStackLayoutHelper + 24];
  v6 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionsContainerView];
  v7 = *(v2 + 8);
  v8 = v3;
  v9 = v4;
  [v6 bounds];
  v20[0] = v10;
  v20[1] = v11;
  v20[2] = v12;
  v20[3] = v13;
  v21 = 0;
  PlayIntentLayoutHelper.layout(in:rect:)(v6, v20, v8, v9, v7, v5);

  v14 = sub_2A0CD0();
  [*v2 intrinsicContentSize];
  [v14 setConstant:v15];

  v16 = *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel];
  sub_235318();
  v18 = (v17 & 1) != 0 && (*(v16 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_isEnabled) & 1) == 0 && v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_layout] < 2u;
  sub_2A5854(v18);
  sub_2A3DB0();
  sub_2A4304();
}

void sub_2A5854(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel];
  v4 = *&v3[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
  v5 = *&v3[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8];
  v6 = v3[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16];
  if (v6 <= 1)
  {
    if (v3[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16])
    {
      sub_23732C(*&v3[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text], *&v3[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8], 1);
      v7 = [v4 string];
      sub_AB92A0();

      goto LABEL_6;
    }

LABEL_5:
    sub_23732C(*&v3[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text], *&v3[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8], v3[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16]);
    sub_23732C(v4, v5, v6);
LABEL_6:
    v8 = sub_AB9260();
    v9 = [v8 _isNaturallyRTL];

    sub_2372F0(v4, v5, v6);
    v10 = v9;
    if (a1)
    {
      goto LABEL_7;
    }

LABEL_12:
    v15 = *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelMaskLayer];
    *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelMaskLayer] = 0;

    v16 = *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelContainerSublayer];
    *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelContainerSublayer] = 0;

    v17 = *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelGradientSublayer];
    *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelGradientSublayer] = 0;

    v32 = [v3 layer];
    [v32 setMask:0];
LABEL_14:

    return;
  }

  if (v6 == 2)
  {
    goto LABEL_5;
  }

  v10 = [v1 effectiveUserInterfaceLayoutDirection];
  if ((a1 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  v11 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelGradientSublayer;
  v12 = *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelGradientSublayer];
  if (v12)
  {
    v13 = v12;
    sub_2A5C14(v13, v10);
  }

  v14 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelMaskLayer;
  if (!*&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelMaskLayer])
  {
    v18 = [objc_allocWithZone(CALayer) init];
    v19 = objc_opt_self();
    v20 = [v19 blackColor];
    v21 = [v20 CGColor];

    [v18 setBackgroundColor:v21];
    v22 = *&v1[v14];
    *&v1[v14] = v18;

    v23 = [objc_allocWithZone(CALayer) init];
    v24 = [v19 blackColor];
    v25 = [v24 CGColor];

    [v23 setBackgroundColor:v25];
    [v23 setCompositingFilter:kCAFilterDestOut];
    v26 = *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelContainerSublayer];
    *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelContainerSublayer] = v23;
    v27 = v23;

    v28 = sub_2A5D74(v10);
    v29 = *&v1[v11];
    *&v1[v11] = v28;
    v30 = v28;

    [v27 addSublayer:v30];
    [*&v1[v14] addSublayer:v27];
    v32 = [v3 layer];
    v31 = *&v1[v14];
    [v32 setMask:v31];

    goto LABEL_14;
  }
}