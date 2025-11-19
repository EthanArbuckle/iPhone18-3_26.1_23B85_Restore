void sub_1750CC()
{
  if (v0[qword_DF2CD0 + 16])
  {
    [v0 loadViewIfNeeded];
    v1 = *&v0[qword_DFE2F8];
    if (v1)
    {
      v2 = v1;
      v3 = [v0 traitCollection];
      [v3 displayScale];
      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
        [v4 music_inheritedLayoutInsets];
        v7 = v6;
        v9 = v8;

        [v2 bounds];
        v14 = UIEdgeInsetsInsetRect(v10, v11, v12, v13, v7, v9);
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v21 = [v0 traitCollection];
        v22 = sub_45B2C4(v21, v14, v16, v18, v20);

        v26.origin.x = v14;
        v26.origin.y = v16;
        v26.size.width = v18;
        v26.size.height = v20;
        Width = CGRectGetWidth(v26);
        sub_471A4();
        sub_AB38F0();
        if (__OFSUB__(v22, 1))
        {
          __break(1u);
        }

        else
        {
          sub_AB3A00();
          _s16MusicApplication9AlbumCellC20detailTextComponents33_697C9E9A5E5CEA31E6831E8C6D513A7BLLAC06DetailfG0AELLVvpfi_0();
          v24 = v23;

          sub_2F48A4(v24, v3, 0, 0);

          if (qword_DE6948 == -1)
          {
LABEL_6:
            [v3 displayScale];
            sub_AB3A00();

            return;
          }
        }

        swift_once();
        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_17538C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v4);
  v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_17559C(a1);
  if (v10)
  {
    v11 = v10;
    v10();

    sub_17654(v11);
  }

  else
  {
    v12 = [v2 traitCollection];
    v13 = UITraitCollection.isMediaPicker.getter();

    if (!v13)
    {
      v14 = sub_175E9C();
      if (v14)
      {
        *v6 = v14;
        v15 = v14;
        swift_storeEnumTagMultiPayload();
        v21 = 0;
        memset(v20, 0, sizeof(v20));
        v19 = 0;
        memset(v18, 0, sizeof(v18));
        v16 = v15;
        v17 = v2;
        PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v6, v20, 3, 0, 0, 1, 0, 1, v9, v2, v18);
        sub_37D3DC(0);

        sub_1416C0(v9, type metadata accessor for PlaybackIntentDescriptor);
      }
    }
  }
}

void (*sub_17559C(void *a1))()
{
  v2 = v1;
  v4 = [a1 album];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 orphanMusicVideo];
    if (v6)
    {

      v7 = [v2 traitCollection];
      v8 = UITraitCollection.isMediaPicker.getter();

      if (!v8)
      {

        return 0;
      }
    }

    v9 = [objc_allocWithZone(MPModelLibraryRequest) init];
    v10 = [v2 traitCollection];
    UITraitCollection.configure<A, B>(libraryRequest:)(v9);

    v11 = v9;
    v12 = sub_AB9260();
    [v11 setLabel:v12];

    sub_13C80(0, &qword_DE8E90);
    v13 = static MPModelAlbum.defaultMusicKind.getter();
    [v11 setSectionKind:v13];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_AF82B0;
    *(v14 + 32) = v5;
    sub_13C80(0, &qword_DEDE20);
    v15 = v5;
    isa = sub_AB9740().super.isa;

    [v11 setScopedContainers:isa];

    type metadata accessor for JSContainerDetailComponentController();
    v17 = v15;
    v18 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v17, 0, 1, UIScreen.Dimensions.size.getter, 0);
    if (v18)
    {
      v19 = v18;
      v20 = *&v18[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];
LABEL_6:
      v21 = JSViewModel.playActivityRecommendationData.getter();
      v23 = v22;
LABEL_23:
      sub_466A4(0, 0xF000000000000000);
      v76 = v11;
      v77 = v20;
      v78 = v5;
      v79 = 0;
      v81 = 0;
      v82 = 0;
      v80 = v19;
      v83 = 1;
      v84 = v21;
      v85 = v23;
      v66 = v11;
      v67 = v20;
      v68 = v5;
      v69 = 0;
      v71 = 0;
      v72 = 0;
      v70 = v19;
      v73 = 1;
      v74 = v21;
      v75 = v23;
      sub_70EB0(&v76, v65);
      sub_70F0C(&v66);
      v58 = objc_allocWithZone(type metadata accessor for AlbumDetailViewController());
      v40 = sub_2D72DC(&v76);

      goto LABEL_32;
    }

    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      v33 = MPModelPropertyPlaylistType;
      v34 = v17;
      if ([v19 hasLoadedValueForKey:v33] && objc_msgSend(v19, "type") == &dword_8 + 1)
      {
        v19 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0);
        v20 = *&v19[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];

        goto LABEL_6;
      }

      v19 = 0;
    }

    v20 = 0;
    v21 = 0;
    v23 = 0xF000000000000000;
    goto LABEL_23;
  }

  v24 = [a1 playlist];
  if (v24)
  {
    v25 = v24;
    if ([v24 type] == &dword_0 + 3)
    {
      v26 = v25;
      v27 = [v26 name];
      if (v27)
      {
        v28 = v27;
        v29 = sub_AB92A0();
        v31 = v30;
      }

      else
      {
        v29 = 0;
        v31 = 0;
      }

      v59 = objc_allocWithZone(type metadata accessor for PlaylistsViewController());
      v40 = sub_48DDCC(v25, 0, v29, v31, 0);

      goto LABEL_32;
    }

    v41 = [objc_allocWithZone(MPModelLibraryRequest) init];
    v42 = [v2 traitCollection];
    UITraitCollection.configure<A, B>(libraryRequest:)(v41);

    v43 = v41;
    v44 = sub_AB9260();
    [v43 setLabel:v44];

    sub_13C80(0, &qword_DE9C10);
    v45 = static MPModelPlaylistEntry.defaultMusicKind.getter();
    v46 = objc_opt_self();
    v47 = [v46 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v45 options:0];
    [v43 setSectionKind:v47];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_AF82B0;
    *(v48 + 32) = v25;
    sub_13C80(0, &qword_DEDE20);
    v49 = v25;
    v50 = sub_AB9740().super.isa;

    [v43 setScopedContainers:v50];

    type metadata accessor for JSContainerDetailComponentController();
    v51 = v49;
    v52 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v51, 0, 1, UIScreen.Dimensions.size.getter, 0);
    if (v52)
    {
      v53 = v52;
      v54 = *&v52[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];
    }

    else
    {
      v60 = MPModelPropertyPlaylistType;
      v61 = v51;
      if (![v61 hasLoadedValueForKey:v60] || objc_msgSend(v61, "type") != &dword_8 + 1)
      {

        v54 = 0;
        v53 = 0;
        v55 = 0;
        v57 = 0xF000000000000000;
        goto LABEL_31;
      }

      v53 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0);
      v54 = *(v53 + OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail);
    }

    v55 = JSViewModel.playActivityRecommendationData.getter();
    v57 = v56;
LABEL_31:
    sub_466A4(0, 0xF000000000000000);
    v76 = v43;
    v77 = v54;
    v78 = v25;
    v79 = 0;
    v81 = 0;
    v82 = 0;
    v80 = v53;
    v83 = 1;
    v84 = v55;
    v85 = v57;
    v66 = v43;
    v67 = v54;
    v68 = v25;
    v69 = 0;
    v71 = 0;
    v72 = 0;
    v70 = v53;
    v73 = 1;
    v74 = v55;
    v75 = v57;
    sub_70EB0(&v76, v65);
    sub_70F0C(&v66);
    v62 = objc_allocWithZone(type metadata accessor for PlaylistDetailViewController());
    v40 = sub_39891C(&v76, 0);

    goto LABEL_32;
  }

  result = [a1 season];
  if (result)
  {
    v35 = result;
    v36 = [objc_allocWithZone(MPModelLibraryRequest) init];
    v37 = [v2 traitCollection];
    UITraitCollection.configure<A, B>(libraryRequest:)(v36);

    v38 = v36;
    v39 = sub_AB9260();
    [v38 setLabel:v39];

    MPModelTVSeason.title.getter();
    type metadata accessor for EpisodesViewController();
    v40 = sub_1DF23C(v35);

LABEL_32:
    v63 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v64 = swift_allocObject();
    *(v64 + 16) = v63;
    *(v64 + 24) = v40;
    return sub_178B90;
  }

  return result;
}

id sub_175E9C()
{
  v1 = v0;
  v2 = *&v0[qword_DFE2F0];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  result = [v3 results];
  if (!result)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v5 = result;
  isa = sub_AB3770().super.isa;
  v7 = [v5 itemAtIndexPath:isa];

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v9 = v8;
  v10 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v11 = [v1 traitCollection];
  UITraitCollection.configure<A, B>(libraryRequest:)(v10);

  v12 = v10;
  result = [v3 request];
  if (!result)
  {
    goto LABEL_19;
  }

  v13 = result;
  v14 = [result label];
  [v12 setLabel:v14];

  v15 = [v9 album];
  if (v15)
  {
    v16 = v15;
    v17 = [objc_opt_self() kindWithVariants:3];
    [v12 setItemKind:v17];

    v18 = [(objc_class *)v16 orphanMusicVideo];
    if (!v18)
    {
      sub_13C80(0, &qword_DE8E90);
      v31 = static MPModelAlbum.defaultMusicKind.getter();
      [v12 setSectionKind:v31];

      static SortOptions.ViewType.Albums.preferredItemSortDescriptors.getter();
      sub_13C80(0, &unk_DFDE50);
      v32 = sub_AB9740().super.isa;

      [v12 setItemSortDescriptors:v32];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_AF82B0;
      *(v33 + 32) = v16;
      sub_13C80(0, &qword_DEDE20);
      v16 = v16;
      v22.super.isa = sub_AB9740().super.isa;

      [v12 setScopedContainers:v22.super.isa];
      goto LABEL_14;
    }

    v19 = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_AF82B0;
    v21 = v19;
    *(v20 + 32) = [v21 identifiers];

    sub_13C80(0, &unk_DE8180);
    v22.super.isa = sub_AB9740().super.isa;

    [v12 setAllowedItemIdentifiers:v22.super.isa];
    goto LABEL_8;
  }

  v23 = [v9 playlist];
  if (v23)
  {
    v24 = v23;
    sub_13C80(0, &qword_DE9C10);
    v25 = static MPModelPlaylistEntry.defaultMusicKind.getter();
    v26 = objc_opt_self();
    v27 = [v26 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v25 options:0];
    [v12 setSectionKind:v27];

    [v12 setItemKind:v25];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_AF82B0;
    *(v28 + 32) = v24;
    sub_13C80(0, &qword_DEDE20);
    v29 = v24;
    v30 = sub_AB9740().super.isa;

    [v12 setScopedContainers:v30];

    v16 = [v29 legacyPreferredTracklistSortDescriptors];
    [v12 setItemSortDescriptors:v16];

    v22.super.isa = v12;
    goto LABEL_14;
  }

  v35 = [v9 movie];
  if (v35)
  {
    v36 = v35;
    sub_13C80(0, &unk_E03780);
    v22.super.isa = static MPModelMovie.defaultMusicKind.getter();
    [v12 setItemKind:v22.super.isa];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_AF82B0;
    v21 = v36;
    *(v37 + 32) = [v21 identifiers];

    sub_13C80(0, &unk_DE8180);
    v16 = sub_AB9740().super.isa;

    [v12 setAllowedItemIdentifiers:v16];
LABEL_8:

LABEL_14:
    v34 = [v12 playbackIntentWithStartItemIdentifiers:0];

    swift_unknownObjectRelease();
    return v34;
  }

  swift_unknownObjectRelease();
  return 0;
}

void *sub_176524(uint64_t a1, uint64_t a2, void *a3)
{
  if (sub_AB92A0() == a2 && v5 == a3)
  {
    goto LABEL_12;
  }

  v7 = sub_ABB3C0();

  if ((v7 & 1) == 0)
  {
    if (sub_AB92A0() == a2 && v8 == a3)
    {
    }

    else
    {
      v10 = sub_ABB3C0();

      if ((v10 & 1) == 0)
      {
        sub_ABAD90(73);
        swift_getObjectType();
        v13._countAndFlagsBits = sub_ABB6D0();
        sub_AB94A0(v13);

        v14._object = 0x8000000000B54420;
        v14._countAndFlagsBits = 0xD000000000000035;
        sub_AB94A0(v14);
        v15._countAndFlagsBits = a2;
        v15._object = a3;
        sub_AB94A0(v15);
        v16._countAndFlagsBits = 0x65646E6920746120;
        v16._object = 0xEE00206874615078;
        sub_AB94A0(v16);
        sub_AB3820();
        sub_179694(&qword_DF9260, &type metadata accessor for IndexPath);
        v17._countAndFlagsBits = sub_ABB330();
        sub_AB94A0(v17);

        sub_ABAFD0();
        __break(1u);
LABEL_12:

        goto LABEL_13;
      }
    }

    type metadata accessor for RecentlyAddedViewController.NoContentPlaceholderView();
    static UICollectionReusableView.reuseIdentifier.getter();
    v11 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();

    return v11;
  }

LABEL_13:
  type metadata accessor for CollectionViewSection.SectionHeaderView(0);
  static UICollectionReusableView.reuseIdentifier.getter();
  v11 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();

  sub_1767D4(v11);
  return v11;
}

void sub_1767D4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  __chkstk_darwin(v4);
  v6 = &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor:v7];

  v8 = [v2 title];
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

  sub_E298C(v10, v12, v6);

  v13 = OBJC_IVAR____TtCV16MusicApplication21CollectionViewSection17SectionHeaderView_contentConfiguration;
  swift_beginAccess();
  sub_140EBC(v6, a1 + v13);
  swift_endAccess();
  v14 = sub_E34F8();
  swift_getObjectType();
  v17[3] = v4;
  v17[4] = sub_179694(&qword_DEE978, type metadata accessor for CollectionViewSection.ContentConfiguration);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  sub_141658(a1 + v13, boxed_opaque_existential_0, type metadata accessor for CollectionViewSection.ContentConfiguration);
  sub_AB4C70();
  sub_1416C0(v6, type metadata accessor for CollectionViewSection.ContentConfiguration);
}

id sub_1769D4(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
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
  v20 = sub_176524(v16, v13, v15);

  (*(v10 + 8))(v12, v9);

  return v20;
}

void sub_176B34(void *a1, uint64_t a2, void *a3, void *a4)
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

double sub_176C70(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_179814(v6);
  v10 = v9;

  return v10;
}

void sub_176CE0(void *a1)
{
  v1 = a1;
  v2 = *(sub_1742E8() + 24);

  if (v2 == 1)
  {

    sub_3B14A4();
  }

  else
  {
  }
}

void sub_176D68(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDE38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85D0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v3;
  v4 = objc_opt_self();
  v5 = objc_opt_self();
  v6 = [v5 kindWithVariants:3];
  v7 = [v4 kindWithSongKind:v6];

  *(inited + 48) = v7;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v8;
  v9 = objc_opt_self();
  v10 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_AF82E0;
  *(v11 + 32) = [v5 kindWithVariants:3];
  sub_13C80(0, &unk_DE9C00);
  *(v11 + 40) = static MPModelTVEpisode.defaultMusicKind.getter();
  sub_13C80(0, &unk_E03780);
  *(v11 + 48) = static MPModelMovie.defaultMusicKind.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF32E0);
  isa = sub_AB9740().super.isa;

  v13 = [v10 kindWithKinds:isa];

  v14 = [v9 kindWithPlaylistEntryKind:v13 options:4];
  *(inited + 72) = v14;
  *(inited + 80) = sub_AB92A0();
  *(inited + 88) = v15;
  v16 = objc_opt_self();
  v17 = static MPModelTVEpisode.defaultMusicKind.getter();
  v18 = [v16 kindWithEpisodeKind:v17];

  *(inited + 96) = v18;
  *(inited + 104) = sub_AB92A0();
  *(inited + 112) = v19;
  v20 = [objc_opt_self() standardUserDefaults];
  LOBYTE(v18) = NSUserDefaults.showAllTVShows.getter();

  if (v18)
  {
    v21 = 3;
  }

  else
  {
    v21 = 2;
  }

  v22 = objc_opt_self();
  *(inited + 120) = [objc_opt_self() kindWithVariants:v21];
  sub_97B14(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDE40);
  swift_arrayDestroy();
  sub_13C80(0, &qword_DE7580);
  v23 = sub_AB8FD0().super.isa;

  [v22 kindWithRelationshipKinds:v23];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_AF85D0;
  *(v24 + 32) = sub_AB92A0();
  *(v24 + 40) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_AFFB00;
  *(v26 + 32) = sub_AB92A0();
  *(v26 + 40) = v27;
  *(v26 + 48) = sub_AB92A0();
  *(v26 + 56) = v28;
  *(v26 + 64) = sub_AB92A0();
  *(v26 + 72) = v29;
  *(v26 + 80) = sub_AB92A0();
  *(v26 + 88) = v30;
  *(v26 + 96) = sub_AB92A0();
  *(v26 + 104) = v31;
  *(v26 + 112) = sub_AB92A0();
  *(v26 + 120) = v32;
  *(v26 + 128) = sub_AB92A0();
  *(v26 + 136) = v33;
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_AF85F0;
  *(v34 + 32) = sub_AB92A0();
  *(v34 + 40) = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_AF4EC0;
  *(v36 + 32) = sub_AB92A0();
  *(v36 + 40) = v37;
  v38 = sub_AB9740().super.isa;
  v125 = objc_opt_self();
  v39 = [v125 propertySetWithProperties:v38];

  *(v34 + 48) = v39;
  *(v34 + 56) = sub_AB92A0();
  *(v34 + 64) = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_AF8600;
  *(v41 + 32) = sub_AB92A0();
  *(v41 + 40) = v42;
  *(v41 + 48) = sub_AB92A0();
  *(v41 + 56) = v43;
  *(v41 + 64) = sub_AB92A0();
  *(v41 + 72) = v44;
  *(v41 + 80) = sub_AB92A0();
  *(v41 + 88) = v45;
  *(v41 + 96) = sub_AB92A0();
  *(v41 + 104) = v46;
  v47 = sub_AB9740().super.isa;
  v48 = [v125 propertySetWithProperties:v47];

  *(v34 + 72) = v48;
  sub_96EA4(v34);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
  swift_arrayDestroy();
  v49 = objc_allocWithZone(MPPropertySet);
  v50 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v51 = sub_AB8FD0().super.isa;

  v52 = [v49 initWithProperties:v50 relationships:v51];

  *(v24 + 48) = v52;
  *(v24 + 56) = sub_AB92A0();
  *(v24 + 64) = v53;
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_AFFB00;
  *(v54 + 32) = sub_AB92A0();
  *(v54 + 40) = v55;
  *(v54 + 48) = sub_AB92A0();
  *(v54 + 56) = v56;
  *(v54 + 64) = sub_AB92A0();
  *(v54 + 72) = v57;
  *(v54 + 80) = sub_AB92A0();
  *(v54 + 88) = v58;
  *(v54 + 96) = sub_AB92A0();
  *(v54 + 104) = v59;
  *(v54 + 112) = sub_AB92A0();
  *(v54 + 120) = v60;
  *(v54 + 128) = sub_AB92A0();
  *(v54 + 136) = v61;
  v62 = swift_initStackObject();
  *(v62 + 16) = xmmword_AF4EC0;
  *(v62 + 32) = sub_AB92A0();
  *(v62 + 40) = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_AF4EC0;
  *(v64 + 32) = sub_AB92A0();
  *(v64 + 40) = v65;
  v66 = sub_AB9740().super.isa;
  v67 = [v125 propertySetWithProperties:v66];

  *(v62 + 48) = v67;
  sub_96EA4(v62);
  swift_setDeallocating();
  sub_12E1C(v62 + 32, &unk_DE8E80);
  v68 = objc_allocWithZone(MPPropertySet);
  v69 = sub_AB9740().super.isa;

  v70 = sub_AB8FD0().super.isa;

  v71 = [v68 initWithProperties:v69 relationships:v70];

  *(v24 + 72) = v71;
  *(v24 + 80) = sub_AB92A0();
  *(v24 + 88) = v72;
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_AF85D0;
  *(v73 + 32) = sub_AB92A0();
  *(v73 + 40) = v74;
  *(v73 + 48) = sub_AB92A0();
  *(v73 + 56) = v75;
  *(v73 + 64) = sub_AB92A0();
  *(v73 + 72) = v76;
  *(v73 + 80) = sub_AB92A0();
  *(v73 + 88) = v77;
  v78 = swift_initStackObject();
  *(v78 + 16) = xmmword_AF85F0;
  *(v78 + 32) = sub_AB92A0();
  *(v78 + 40) = v79;
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_AF4EC0;
  *(v80 + 32) = sub_AB92A0();
  *(v80 + 40) = v81;
  v82 = sub_AB9740().super.isa;
  v83 = [v125 propertySetWithProperties:v82];

  *(v78 + 48) = v83;
  *(v78 + 56) = sub_AB92A0();
  *(v78 + 64) = v84;
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_AF4EC0;
  *(v85 + 32) = sub_AB92A0();
  *(v85 + 40) = v86;
  v87 = sub_AB9740().super.isa;
  v88 = [v125 propertySetWithProperties:v87];

  *(v78 + 72) = v88;
  sub_96EA4(v78);
  swift_setDeallocating();
  swift_arrayDestroy();
  v89 = objc_allocWithZone(MPPropertySet);
  v90 = sub_AB9740().super.isa;

  v91 = sub_AB8FD0().super.isa;

  v92 = [v89 initWithProperties:v90 relationships:v91];

  *(v24 + 96) = v92;
  *(v24 + 104) = sub_AB92A0();
  *(v24 + 112) = v93;
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_AF85F0;
  *(v94 + 32) = sub_AB92A0();
  *(v94 + 40) = v95;
  *(v94 + 48) = sub_AB92A0();
  *(v94 + 56) = v96;
  v97 = sub_AB9740().super.isa;
  v98 = [v125 propertySetWithProperties:v97];

  *(v24 + 120) = v98;
  sub_96EA4(v24);
  swift_setDeallocating();
  swift_arrayDestroy();
  v99 = objc_allocWithZone(MPPropertySet);
  v100 = sub_AB9740().super.isa;
  v101 = sub_AB8FD0().super.isa;

  [v99 initWithProperties:v100 relationships:v101];

  sub_13C80(0, &qword_DE8028);
  UIScreen.Dimensions.size.getter(v102);
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v110 = v109;
  v111 = [objc_opt_self() deviceMediaLibrary];
  if (v111)
  {
    v112 = v111;
    UIView.Border.init(thickness:color:)();
    *&v122 = 0;
    *(&v122 + 1) = 60;
    *&v121 = v113;
    *(&v121 + 1) = v114;
    LibraryModelRequest.init(library:section:item:scopedContainers:filter:itemRange:)(v112, 0, 0, 0, 0, v104, v106, v108, v126, v110, v116, v115 & 1, v121, v122, 0);
    if (a1)
    {
      sub_174994();
    }

    v117 = v126[7];
    *(a2 + 96) = v126[6];
    *(a2 + 112) = v117;
    *(a2 + 128) = v126[8];
    *(a2 + 144) = v127;
    v118 = v126[3];
    *(a2 + 32) = v126[2];
    *(a2 + 48) = v118;
    v119 = v126[5];
    *(a2 + 64) = v126[4];
    *(a2 + 80) = v119;
    v120 = v126[1];
    *a2 = v126[0];
    *(a2 + 16) = v120;
  }

  else
  {
    __break(1u);
  }
}

void sub_177B68(char a1)
{
  v2 = a1 & 1;
  v3 = sub_AB35C0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_AB9250();
  __chkstk_darwin(v4 - 8);
  if (v1[qword_DF2CB0] != v2)
  {
    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v5 = sub_AB9260();

    [v1 setTitle:v5];

    v6 = sub_AB9260();

    [v1 setPlayActivityFeatureName:v6];
  }
}

void sub_177D50(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong navigationController];

    if (v5)
    {
      [v5 pushViewController:a2 animated:1];
    }
  }
}

uint64_t sub_177DE4()
{
  sub_17654(*(v0 + qword_DF2C98));
}

uint64_t sub_177E58(uint64_t a1)
{
  sub_17654(*(a1 + qword_DF2C98));
}

uint64_t type metadata accessor for RecentlyAddedViewController()
{
  result = qword_DF2D00;
  if (!qword_DF2D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_177FFC()
{
  v1 = [*v0 traitCollection];
  sub_1750CC();
  v3 = v2;

  return v3;
}

id sub_17807C()
{
  v0 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  sub_174DB0(v0);
  return v0;
}

id sub_1781BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecentlyAddedViewController.NoContentPlaceholderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_178218(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplication8SongCell_badgeView;
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeView];
  if (v5)
  {
    v6 = v5;

    v8 = sub_2F3AA8(v7);

    v9 = *&v6[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet];
    *&v6[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet] = v8;
    sub_4CAE8C(v9);
  }

  else
  {
    v10 = [v2 contentView];
    if (!v10)
    {
      v10 = v2;
    }

    objc_allocWithZone(type metadata accessor for BadgeView());

    v11 = sub_4CABD8(a1, UIFontTextStyleBody);
    v12 = *&v2[v4];
    *&v2[v4] = v11;
    v14 = v11;

    v13 = 1.0;
    if (v2[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled] == 1)
    {
      UIInterfaceGetContentDisabledAlpha();
    }

    [v14 setAlpha:v13];

    [v10 addSubview:v14];
  }
}

void sub_17841C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeView;
  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeView);
  if (v4)
  {
    v5 = v4;

    v7 = sub_2F3AA8(v6);

    v8 = *&v5[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet];
    *&v5[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet] = v7;
    sub_4CAE8C(v8);
  }

  else
  {
    v9 = sub_3A204();
    v10 = objc_allocWithZone(type metadata accessor for BadgeView());

    v11 = sub_4CABD8(a1, UIFontTextStyleBody);
    v12 = *(v1 + v3);
    *(v1 + v3) = v11;
    v13 = v11;

    v14 = objc_opt_self();
    v17 = v13;
    v15 = [v14 whiteColor];
    v16 = [v15 colorWithAlphaComponent:0.5];

    [v17 setTextColor:v16];
    [v9 addSubview:v17];
  }
}

void sub_178600(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *&v2[*a2];
  if (v5)
  {
    v6 = v5;

    v8 = sub_2F3AA8(v7);

    v9 = *&v6[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet];
    *&v6[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet] = v8;
    sub_4CAE8C(v9);
  }

  else
  {
    v10 = [v2 contentView];
    if (!v10)
    {
      v10 = v2;
    }

    v11 = objc_allocWithZone(type metadata accessor for BadgeView());

    v12 = sub_4CABD8(a1, UIFontTextStyleBody);
    v13 = *&v2[v4];
    *&v2[v4] = v12;
    v14 = v12;

    [v10 addSubview:v14];
  }
}

void sub_17874C(uint64_t a1, id a2)
{
  v4 = [a2 album];
  if (!v4)
  {
    v7 = [a2 playlist];
    if (v7)
    {
      v5 = v7;
      v6 = MPModelPlaylist.preferredArtworkCatalog.getter();
      goto LABEL_5;
    }

    v4 = [a2 season];
    if (!v4)
    {
      v4 = [a2 movie];
      if (!v4)
      {
        v24 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
        swift_beginAccess();
        v25 = *(a1 + v24);
        *(a1 + v24) = 0;

        v12 = *(a1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
        sub_74EA4(0);
        goto LABEL_6;
      }
    }
  }

  v5 = v4;
  v6 = [v4 artworkCatalog];
LABEL_5:
  v8 = v6;
  v9 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
  swift_beginAccess();
  v10 = *(a1 + v9);
  *(a1 + v9) = v8;
  v11 = v8;

  v12 = *(a1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
  sub_74EA4(v8);

LABEL_6:
  MPModelObject.artworkPlaceholder.getter(v31);
  v13 = v31[0];
  v14 = v31[1];
  v16 = v31[2];
  v15 = v31[3];
  v17 = v31[4];
  v18 = v31[5];
  v19 = a1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkPlaceholder;
  swift_beginAccess();
  v28 = *(v19 + 8);
  v29 = *v19;
  v26 = *(v19 + 24);
  v27 = *(v19 + 16);
  v34 = v13;
  v32 = v16;
  v33 = v14;
  sub_15F84(&v34, v35, &unk_DFDE40);
  sub_15F84(&v33, v35, &unk_DFDE40);
  sub_15F84(&v32, v35, &unk_E00030);
  *v19 = v13;
  *(v19 + 8) = v14;
  *(v19 + 16) = v16;
  *(v19 + 24) = v15;
  *(v19 + 32) = v17;
  *(v19 + 40) = v18;
  v20 = v15;
  sub_2F1C8(v29, v28, v27, v26);
  v21 = *(v12 + 168);
  v35[0] = *(v12 + 152);
  v35[1] = v21;
  v35[2] = *(v12 + 184);
  *(v12 + 152) = v13;
  *(v12 + 160) = v14;
  *(v12 + 168) = v16;
  *(v12 + 176) = v15;
  *(v12 + 184) = v17;
  *(v12 + 192) = v18;
  sub_15F84(&v34, v30, &unk_DFDE40);
  sub_15F84(&v33, v30, &unk_DFDE40);
  sub_15F84(&v32, v30, &unk_E00030);
  v22 = v20;
  sub_15F84(&v34, v30, &unk_DFDE40);
  sub_15F84(&v33, v30, &unk_DFDE40);
  sub_15F84(&v32, v30, &unk_E00030);
  v23 = v22;
  sub_75948(v35);
  sub_12E1C(v35, &unk_DF8690);
  sub_12E1C(&v34, &unk_DFDE40);
  sub_12E1C(&v33, &unk_DFDE40);
  sub_12E1C(&v32, &unk_E00030);

  sub_12E1C(&v34, &unk_DFDE40);
  sub_12E1C(&v33, &unk_DFDE40);
  sub_12E1C(&v32, &unk_E00030);
}

uint64_t sub_178B18()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_178B50()
{

  return swift_deallocObject();
}

id sub_178B98(uint64_t a1, void *a2)
{
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_AB9250();
  __chkstk_darwin(v5 - 8);
  v6 = [a2 type] == &dword_8 + 1;
  v7 = OBJC_IVAR____TtC16MusicApplication9AlbumCell_layoutStyle;
  swift_beginAccess();
  v8 = *(a1 + v7);
  *(a1 + v7) = v6;
  sub_1AD7D0(v8);
  v9 = [a2 album];
  if (!v9)
  {
    v16 = [a2 playlist];
    if (v16)
    {
      v10 = v16;
      v17 = [v16 name];
      if (v17)
      {
        v18 = v17;
        v19 = sub_AB92A0();
        v21 = v20;
      }

      else
      {
        v19 = 0;
        v21 = 0xE000000000000000;
      }

      v57 = (a1 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_title);
      swift_beginAccess();
      v58 = *v57;
      v59 = v57[1];
      *v57 = v19;
      v57[1] = v21;
      sub_1AE488(v58, v59);

      v60 = [v10 curator];
      if (v60)
      {
        v61 = v60;
        v62 = [v60 name];
        if (v62)
        {
          v63 = v62;
          v64 = sub_AB92A0();
          v66 = v65;

LABEL_34:
          v71 = (a1 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_artistName);
          swift_beginAccess();
          v72 = *v71;
          v73 = v71[1];
          *v71 = v64;
          v71[1] = v66;
          sub_1AE788(v72, v73);

          v46 = sub_13C80(0, &unk_DE8EA0);
          v47 = &off_D17A48;
          goto LABEL_43;
        }
      }

      v67 = [v10 ownerName];
      if (v67)
      {
        v68 = v67;
        v64 = sub_AB92A0();
        v66 = v69;
      }

      else
      {
        sub_AB91E0();
        sub_AB3550();
        v64 = sub_AB9320();
        v66 = v70;
      }

      goto LABEL_34;
    }

    v49 = [a2 season];
    if (!v49)
    {
      result = [a2 movie];
      if (!result)
      {
        return result;
      }

      v10 = result;
      v75 = [result title];
      if (v75)
      {
        v76 = v75;
        v77 = sub_AB92A0();
        v79 = v78;
      }

      else
      {
        sub_AB91E0();
        sub_AB3550();
        v77 = sub_AB9320();
        v79 = v90;
      }

      v91 = (a1 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_title);
      swift_beginAccess();
      v92 = *v91;
      v93 = v91[1];
      *v91 = v77;
      v91[1] = v79;
      sub_1AE488(v92, v93);

      v94 = (a1 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_artistName);
      swift_beginAccess();
      v95 = *v94;
      v96 = v94[1];
      *v94 = 0;
      v94[1] = 0xE000000000000000;
      sub_1AE788(v95, v96);

      v46 = sub_13C80(0, &unk_E03780);
      v47 = &off_D17B10;
      goto LABEL_43;
    }

    v10 = v49;
    v50 = [v49 show];
    if (v50)
    {
      v51 = v50;
      v52 = [v50 title];
      if (v52)
      {
        v53 = v52;
        v54 = sub_AB92A0();
        v56 = v55;

LABEL_40:
        v81 = (a1 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_title);
        swift_beginAccess();
        v82 = *v81;
        v83 = v81[1];
        *v81 = v54;
        v81[1] = v56;
        sub_1AE488(v82, v83);

        sub_AB91E0();
        sub_AB3550();
        v84 = sub_AB9320();
        v86 = v85;
        v87 = (a1 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_artistName);
        swift_beginAccess();
        v88 = *v87;
        v89 = v87[1];
        *v87 = v84;
        v87[1] = v86;
        sub_1AE788(v88, v89);

        v46 = sub_13C80(0, &unk_E00010);
        v47 = &off_D17AE8;
        goto LABEL_43;
      }
    }

    sub_AB91E0();
    sub_AB3550();
    v54 = sub_AB9320();
    v56 = v80;
    goto LABEL_40;
  }

  v10 = v9;
  v11 = [v9 representativeTitle];
  if (v11)
  {
    v12 = v11;
    v13 = sub_AB92A0();
    v15 = v14;
  }

  else
  {
    sub_AB91E0();
    sub_AB3550();
    v13 = sub_AB9320();
    v15 = v22;
  }

  v23 = (a1 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_title);
  swift_beginAccess();
  v24 = *v23;
  v25 = v23[1];
  *v23 = v13;
  v23[1] = v15;
  sub_1AE488(v24, v25);

  v26 = [v10 artist];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 name];
    if (v28)
    {
      v29 = v28;
      v30 = sub_AB92A0();
      v32 = v31;

      v33 = (a1 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_artistName);
      swift_beginAccess();
      v34 = *v33;
      v35 = v33[1];
      *v33 = v30;
      v33[1] = v32;
      goto LABEL_16;
    }
  }

  if ([v10 isCompilation])
  {
    sub_AB91E0();
    sub_AB3550();
    v36 = sub_AB9320();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0xE000000000000000;
  }

  v39 = (a1 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_artistName);
  swift_beginAccess();
  v34 = *v39;
  v35 = v39[1];
  *v39 = v36;
  v39[1] = v38;
LABEL_16:
  sub_1AE788(v34, v35);

  v40 = [v10 orphanMusicVideo];
  if (!v40)
  {
    v46 = sub_13C80(0, &qword_DE8E90);
    v47 = &off_D17A20;
LABEL_43:
    v106 = v46;
    v107 = v47;
    v105[0] = v10;
    sub_15F84(v105, v102, &unk_DE9C60);
    v97 = v103;
    if (v103)
    {
      v98 = v104;
      __swift_project_boxed_opaque_existential_1(v102, v103);
      v99 = v10;
      v100 = sub_4CAA30(&off_CEFDE8, v97, v98);
      __swift_destroy_boxed_opaque_existential_0(v102);
    }

    else
    {
      v101 = v10;
      sub_12E1C(v102, &unk_DE9C60);
      v100 = _swiftEmptyArrayStorage;
    }

    sub_178600(v100, &OBJC_IVAR____TtC16MusicApplication9AlbumCell_badgeView);

    goto LABEL_47;
  }

  v41 = v40;
  v106 = sub_13C80(0, &unk_DE8EB0);
  v107 = &off_D179F8;
  v105[0] = v41;
  sub_15F84(v105, v102, &unk_DE9C60);
  v42 = v103;
  if (v103)
  {
    v43 = v104;
    __swift_project_boxed_opaque_existential_1(v102, v103);
    v44 = v41;
    v45 = sub_4CAA30(&off_CEFDE8, v42, v43);
    __swift_destroy_boxed_opaque_existential_0(v102);
  }

  else
  {
    v48 = v41;
    sub_12E1C(v102, &unk_DE9C60);
    v45 = _swiftEmptyArrayStorage;
  }

  sub_178600(v45, &OBJC_IVAR____TtC16MusicApplication9AlbumCell_badgeView);

LABEL_47:

  return sub_12E1C(v105, &unk_DE9C60);
}

id sub_1795A0(void *a1)
{
  v2 = [a1 album];
  if (!v2)
  {
    v5 = [a1 playlist];
    if (v5)
    {
      v3 = v5;
      v4 = MPModelPlaylist.preferredArtworkCatalog.getter();
      goto LABEL_5;
    }

    v2 = [a1 season];
    if (!v2)
    {
      v2 = [a1 movie];
      if (!v2)
      {
        return 0;
      }
    }
  }

  v3 = v2;
  v4 = [v2 artworkCatalog];
LABEL_5:
  v6 = v4;

  return v6;
}

uint64_t sub_179694(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1796DC()
{
  *(v0 + qword_DF2C80) = 0;
  *(v0 + qword_DF2C88) = 0;
  *(v0 + qword_DF2C90) = 1;
  v1 = (v0 + qword_DF2C98);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + qword_DF2CA0) = 0;
  v2 = qword_DF2CA8;
  sub_176D68(0, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF32D8);
  swift_allocObject();
  *(v0 + v2) = RequestResponse.Controller.init(request:)(v5);
  *(v0 + qword_DF2CB0) = 0;
  *(v0 + qword_DF2CB8) = 0;
  *(v0 + qword_DF2CC0) = 0;
  v3 = (v0 + qword_DF2CC8);
  *v3 = 0;
  v3[1] = 0;
  v4 = v0 + qword_DF2CD0;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  sub_ABAFD0();
  __break(1u);
}

void sub_179814(void *a1)
{
  if (v1[qword_DF2C88] == 1 && *&v1[qword_DFE2F0])
  {
    v3 = [*&v1[qword_DFE2F0] results];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 totalItemCount];

      if (v5 < 1)
      {
        return;
      }

      v6 = qword_DF2C80;
      v7 = *&v1[qword_DF2C80];
      if (v7)
      {
        v8 = *&v1[qword_DF2C80];
LABEL_10:
        v12 = v7;
        sub_1767D4(v8);
        [a1 bounds];
        v14 = v13;
        v16 = v15;
        v17 = sub_E34F8();
        [v17 sizeThatFits:{v14, v16}];

        return;
      }

      v8 = [objc_allocWithZone(type metadata accessor for CollectionViewSection.SectionHeaderView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      [v8 setHidden:1];
      [v8 setUserInteractionEnabled:0];
      v9 = [v1 view];
      if (v9)
      {
        v10 = v9;
        [v9 addSubview:v8];

        v11 = *&v1[v6];
        *&v1[v6] = v8;

        v7 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id sub_1799F0(void *a1)
{
  *(v1 + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_pageHeaderContentViewController) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_promotionalParallaxViewController) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController____lazy_storage___impressionsTracker) = 0;
  v3 = OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_viewModelKindToViewController;
  *(v1 + v3) = sub_96934(_swiftEmptyArrayStorage);
  v4 = OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_pinnedButtonContainerView;
  *(v1 + v4) = [objc_allocWithZone(type metadata accessor for PinnedButtonContainerView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController____lazy_storage___nextStepButton) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController____lazy_storage___cancelStepButton) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_isUpdating) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_nonEditingBarButtonItemsFinalized) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_onboardingVerticalStack) = a1;
  v5 = a1;
  v6 = sub_4D3A88(_swiftEmptyArrayStorage);
  sub_17B794();

  return v6;
}

void sub_179B1C(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for JSSocialOnboardingVerticalStackViewController();
  objc_msgSendSuper2(&v9, "viewWillAppear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers];
  if (v3 >> 62)
  {
LABEL_18:
    v4 = sub_ABB060();
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {

      goto LABEL_15;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = sub_35F8D4(v5, v3);
    }

    else
    {
      if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    type metadata accessor for JSOrderedPlaylistSelectorViewController();
    if (swift_dynamicCastClass())
    {
      break;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_17;
    }
  }

  [v1 setEditing:1 animated:0];
LABEL_15:
  sub_17CE84();
}

id sub_179D64()
{
  v1 = v0;
  swift_getObjectType();
  v68.receiver = v0;
  v68.super_class = type metadata accessor for JSSocialOnboardingVerticalStackViewController();
  objc_msgSendSuper2(&v68, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_onboardingVerticalStack];
  v3 = [v0 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationBar];

    [v5 setPrefersLargeTitles:1];
  }

  v6 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_nextStepButton;
  swift_beginAccess();
  v7 = *(v2 + v6);
  v8 = v7 != 0;
  if (v7)
  {
    v9 = v7;
    v10 = sub_17B6FC();
    sub_17C394(v10, v9, 0);

    v11 = *&v1[OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController____lazy_storage___nextStepButton];
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v9;
    v14 = type metadata accessor for SubtitledButton();
    v15 = v9;
    v16 = v11;
    ControlEventHandling<>.on(_:handler:)(64, sub_180770, v13, v14);
  }

  v17 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_cancelStepButton;
  swift_beginAccess();
  v18 = *(v2 + v17);
  if (v18)
  {
    v19 = v18;
    v20 = sub_17B708();
    v8 = 1;
    sub_17C394(v20, v19, 1);

    v21 = *&v1[OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController____lazy_storage___cancelStepButton];
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v19;
    v24 = type metadata accessor for SubtitledButton();
    v25 = v19;
    v26 = v21;
    ControlEventHandling<>.on(_:handler:)(64, sub_180768, v23, v24);
  }

  v27 = (v2 + OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_pinnedButtonsHeaderText);
  swift_beginAccess();
  v28 = v27[1];
  v29 = off_DF3000;
  if (v28)
  {
    v30 = *v27;
    v31 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v31 = *v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {
      v32 = *&v1[OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_pinnedButtonContainerView];
      v33 = &v32[OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_headerText];
      v34 = *&v32[OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_headerText];
      v35 = *&v32[OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_headerText + 8];
      *v33 = v30;
      *(v33 + 1) = v28;

      v36 = v32;
      sub_17EB78(v34, v35, &OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_headerText, &OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_headerLabel);

      v8 = 1;
    }
  }

  v37 = (v2 + OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_pinnedButtonsFooterText);
  swift_beginAccess();
  v38 = v37[1];
  if (v38)
  {
    v39 = *v37;
    v40 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v40 = *v37 & 0xFFFFFFFFFFFFLL;
    }

    if (v40)
    {
      v41 = *&v1[OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_pinnedButtonContainerView];
      v42 = &v41[OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_footerText];
      v43 = *&v41[OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_footerText];
      v44 = *&v41[OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_footerText + 8];
      *v42 = v39;
      *(v42 + 1) = v38;

      v45 = v41;
      sub_17EB78(v43, v44, &OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_footerText, &OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_footerLabel);

      v8 = 1;
    }
  }

  v46 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_pinnedChildViewModel;
  swift_beginAccess();
  v47 = *(v2 + v46);
  if ((~v47 & 0xF000000000000007) == 0)
  {
LABEL_24:
    if (!v8)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v48 = (v47 & 0xFFFFFFFFFFFFFF9);
  v49 = sub_17BCD8(v47);
  if (!v49)
  {
    sub_2D4D8(v47);
    goto LABEL_24;
  }

  v50 = v49;
  [v49 willMoveToParentViewController:v1];
  [v1 addChildViewController:v50];
  v51 = *&v1[OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_pinnedButtonContainerView];
  v52 = OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_embeddedChildViewController;
  v53 = *&v51[OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_embeddedChildViewController];
  *&v51[OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_embeddedChildViewController] = v50;
  if (!v53)
  {
    v59 = v50;
    v60 = v51;
    v58 = v50;
LABEL_27:
    v61 = v58;
    result = [v61 view];
    v29 = off_DF3000;
    if (!result)
    {
      goto LABEL_36;
    }

    v63 = result;
    [v51 addSubview:result];

    [v51 setNeedsLayout];
    v56 = v53;
    goto LABEL_29;
  }

  sub_13C80(0, &qword_DE7500);
  v54 = v50;
  v55 = v51;
  v56 = v53;
  v57 = sub_ABA790();

  if ((v57 & 1) == 0)
  {
    v58 = *&v51[v52];
    if (v58)
    {
      goto LABEL_27;
    }
  }

  v29 = off_DF3000;
LABEL_29:

  [v50 didMoveToParentViewController:v1];
  sub_2D4D8(v47);
LABEL_30:
  sub_17CAE8();
  result = [v1 view];
  if (result)
  {
    v64 = result;
    [result addSubview:*(v29[98] + v1)];

    result = [v1 view];
    if (result)
    {
      v65 = result;
      [result setNeedsLayout];

LABEL_33:
      v66 = sub_4D3DD0();
      [v66 setKeyboardDismissMode:1];

      sub_17C788();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF37F0);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_AF85F0;
      *(v67 + 32) = sub_AB5080();
      *(v67 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
      *(v67 + 48) = sub_AB5330();
      *(v67 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
      sub_ABA080();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void sub_17A41C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    v5 = (v33 + 16);
    v6 = *&v4[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers];
    if (v6 >> 62)
    {
      v7 = sub_ABB060();
      v5 = (v33 + 16);
      if (v7)
      {
LABEL_4:
        if (v7 < 1)
        {
          __break(1u);
          return;
        }

        v27 = v5;
        v31 = v4;
        v8 = v6 & 0xC000000000000001;

        v9 = 0;
        v10 = 0;
        v29 = v7;
        v30 = v6;
        v28 = v6 & 0xC000000000000001;
        do
        {
          if (v8)
          {
            v11 = sub_35F8D4(v10, v6);
          }

          else
          {
            v11 = *(v6 + 8 * v10 + 32);
          }

          v12 = v11;
          swift_getObjectType();
          v13 = swift_conformsToProtocol2();
          if (v13 && v12)
          {
            v14 = v13;
            if (v9)
            {
              v15 = v12;
              v34 = 1;
            }

            else
            {
              ObjectType = swift_getObjectType();
              v17 = *(v14 + 16);
              v18 = v12;
              v34 = v17(ObjectType, v14);
            }

            v19 = swift_getObjectType();
            v20 = swift_allocObject();
            v20[2] = v31;
            v20[3] = a3;
            v20[4] = v33;
            v21 = *(v14 + 8);
            v22 = v31;
            v23 = a3;

            v21(v22, sub_1807C0, v20, v19, v14);

            v7 = v29;
            v6 = v30;
            v8 = v28;
            v9 = v34;
          }

          else
          {
          }

          ++v10;
        }

        while (v7 != v10);

        v4 = v31;
        v5 = v27;
        if (v9)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
      if (v7)
      {
        goto LABEL_4;
      }
    }

    v24 = v5;
    swift_beginAccess();
    if ((*v24 & 1) == 0)
    {
      v25 = sub_17B6FC();
      (*(&stru_428.reserved2 + (swift_isaMask & *a3)))();
      sub_180354();
      v26 = v25[OBJC_IVAR____TtC16MusicApplication15MultilineButton_isActivityIndicatorActive];
      v25[OBJC_IVAR____TtC16MusicApplication15MultilineButton_isActivityIndicatorActive] = 0;
      if (v26 == 1)
      {
        [v25 setNeedsLayout];
      }

      goto LABEL_23;
    }

LABEL_19:

LABEL_23:
  }
}

_BYTE *sub_17A730(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a1 == 2)
  {
    v5 = sub_17B6FC();
    v6 = v5;
    v7 = *(v5 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_isActivityIndicatorActive);
    *(v5 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_isActivityIndicatorActive) = 1;
    if ((v7 & 1) == 0)
    {
      [v5 setNeedsLayout];
    }

    v8 = *(a2 + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController____lazy_storage___nextStepButton);

    return [v8 setUserInteractionEnabled:0];
  }

  else
  {
    if (a1)
    {
      v12 = sub_17B6FC();
      (*(&stru_428.reserved2 + (swift_isaMask & *a3)))();
      sub_180354();
      v13 = v12[OBJC_IVAR____TtC16MusicApplication15MultilineButton_isActivityIndicatorActive];
      v12[OBJC_IVAR____TtC16MusicApplication15MultilineButton_isActivityIndicatorActive] = 0;
      if (v13 == 1)
      {
        [v12 setNeedsLayout];
      }

      swift_beginAccess();
      *(a4 + 16) = 1;
    }

    v14 = sub_17B6FC();
    [v14 setUserInteractionEnabled:1];

    result = *(a2 + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController____lazy_storage___nextStepButton);
    v15 = result[OBJC_IVAR____TtC16MusicApplication15MultilineButton_isActivityIndicatorActive];
    result[OBJC_IVAR____TtC16MusicApplication15MultilineButton_isActivityIndicatorActive] = 0;
    if (v15 == 1)
    {
      return [result setNeedsLayout];
    }
  }

  return result;
}

void sub_17A8E4(uint64_t a1, uint64_t a2, void *a3)
{
  v43 = sub_AB7C10();
  v4 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_AB7C50();
  v6 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v9 = Strong;
  v10 = *(Strong + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers);
  if (v10 >> 62)
  {
    v11 = sub_ABB060();
    if (v11)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
    if (v11)
    {
LABEL_4:
      if (v11 < 1)
      {
        __break(1u);
        return;
      }

      v32 = v9;
      v33 = a3;
      v12 = v10 & 0xC000000000000001;
      v36 = v47;
      v35 = (v4 + 8);
      v34 = (v6 + 8);

      v13 = 0;
      v38 = v11;
      v39 = v10;
      v37 = v10 & 0xC000000000000001;
      v14 = v40;
      do
      {
        if (v12)
        {
          v15 = sub_35F8D4(v13, v10);
        }

        else
        {
          v15 = *(v10 + 8 * v13 + 32);
        }

        v16 = v15;
        swift_getObjectType();
        if (swift_conformsToProtocol2() && v16)
        {
          v17 = *&v16[qword_DFE798];
          v18 = *&v16[qword_DFE798 + 8];
          v19 = qword_DE67A8;
          v20 = v16;

          if (v19 != -1)
          {
            swift_once();
          }

          v21 = qword_E70D38;
          v22 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v23 = *(v21 + 96);
          v44 = *&v23[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_accessQueue];
          v24 = swift_allocObject();
          *(v24 + 16) = v23;
          *(v24 + 24) = v17;
          *(v24 + 40) = 0;
          *(v24 + 48) = 0;
          *(v24 + 32) = v18;
          *(v24 + 56) = 0;
          *(v24 + 57) = v48[0];
          *(v24 + 60) = *(v48 + 3);
          *(v24 + 64) = 0;
          *(v24 + 72) = sub_180804;
          *(v24 + 80) = v22;
          v47[2] = sub_18086C;
          v47[3] = v24;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          v47[0] = sub_1B5EB4;
          v47[1] = &block_descriptor_152;
          v25 = _Block_copy(aBlock);

          swift_retain_n();
          v26 = v23;
          sub_AB7C30();
          v45 = _swiftEmptyArrayStorage;
          sub_17FE14(&qword_DF06C0, 255, &type metadata accessor for DispatchWorkItemFlags);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
          sub_36A00(&qword_DF06D0, &unk_DE9C30);
          v28 = v42;
          v27 = v43;
          sub_ABABB0();
          sub_ABA160();

          (*v35)(v28, v27);
          (*v34)(v14, v41);
          _Block_release(v25);

          v11 = v38;
          v10 = v39;
          v12 = v37;
        }

        else
        {
        }

        ++v13;
      }

      while (v11 != v13);

      a3 = v33;
      v9 = v32;
    }
  }

  v29 = sub_17B708();
  (*(&stru_428.reserved2 + (swift_isaMask & *a3)))();
  sub_180354();
  v30 = v29[OBJC_IVAR____TtC16MusicApplication15MultilineButton_isActivityIndicatorActive];
  v29[OBJC_IVAR____TtC16MusicApplication15MultilineButton_isActivityIndicatorActive] = 0;
  if (v30 == 1)
  {
    [v29 setNeedsLayout];
  }
}

void sub_17AEDC()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for JSSocialOnboardingVerticalStackViewController();
  objc_msgSendSuper2(&v7, "viewDidLayoutSubviews");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    sub_17CC88();
    [v2 music_setLayoutInsets:?];

    v3 = *&v0[OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_onboardingVerticalStack];
    v4 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_nextStepButton;
    swift_beginAccess();
    if (!*(v3 + v4))
    {
LABEL_5:
      sub_17C788();
      return;
    }

    sub_17CAE8();
    v5 = [v0 view];
    if (v5)
    {
      v6 = v5;
      [v5 bringSubviewToFront:*&v0[OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_pinnedButtonContainerView]];

      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_17B01C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_17C788();
  }
}

void sub_17B070(void *a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_pageHeaderContentViewController;
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_pageHeaderContentViewController);
  if (a1)
  {
    if (!v3)
    {
      return;
    }

    type metadata accessor for PageHeaderContentViewController();
    v5 = v3;
    v6 = a1;
    v7 = sub_ABA790();

    if (v7)
    {
      return;
    }

    v3 = *(v1 + v2);
    if (!v3)
    {
      return;
    }
  }

  else if (!v3)
  {
    return;
  }

  v3[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_isBottomHairlineVisible] = 0;
  v8 = *&v3[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageHeaderContentView];
  v9 = v8[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBottomHairlineVisible];
  v8[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBottomHairlineVisible] = 0;
  v10 = v3;
  if (v9 == 1)
  {
    [v8 setNeedsLayout];
  }

  sub_17B794();
}

void (*sub_17B18C(void *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_pageHeaderContentViewController;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return sub_17B1E4;
}

void sub_17B1E4(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *a1;
  v9 = *(v4 + v3);
  *(v4 + v3) = *a1;
  v6 = v5;
  v7 = v6;
  if (a2)
  {
    v8 = v6;
    sub_17B070(v9);
  }

  else
  {
    sub_17B070(v9);
  }
}

uint64_t sub_17B26C()
{
  v1 = OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController____lazy_storage___impressionsTracker;
  if (*&v0[OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController____lazy_storage___impressionsTracker])
  {
    v2 = *&v0[OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController____lazy_storage___impressionsTracker];
  }

  else
  {
    v3 = sub_4D3DD0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF33E8);
    swift_allocObject();
    v2 = sub_2BE66C(v0, v3, _swiftEmptyArrayStorage, 0);
    *&v0[v1] = v2;
  }

  return v2;
}

double sub_17B314@<D0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v6 = *(v3 + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_viewModelKindToViewController);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v11 = 0;
  for (i = &off_E0B000; v9; v9 &= v9 - 1)
  {
LABEL_8:
    v14 = (v11 << 9) | (8 * __clz(__rbit64(v9)));
    v4 = *(*(v6 + 48) + v14);
    v2 = *(*(v6 + 56) + v14);
    v15 = *(i[494] + v3);
    if ((v15 & 0xC000000000000001) != 0)
    {
      v39 = (v4 & 0xFFFFFFFFFFFFFF9);
      v38 = v2;

      v37 = sub_35F8D4(a1, v15);

      swift_unknownObjectRelease();
      if (v38 == v37)
      {
        goto LABEL_29;
      }

      i = &off_E0B000;
    }

    else
    {
      if ((a1 & 0x8000000000000000) != 0)
      {
        goto LABEL_27;
      }

      if (*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)) <= a1)
      {
        goto LABEL_28;
      }

      if (v2 == *(v15 + 8 * a1 + 32))
      {
        v22 = (v4 & 0xFFFFFFFFFFFFFF9);
        v23 = v2;
        goto LABEL_19;
      }
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      sub_465CC(&v72);
      v16 = a2;
      goto LABEL_17;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  v22 = v39;
LABEL_19:

  v24 = JSViewModelKind.innerViewModel.getter(v4);

  v25 = (*(&stru_68.reserved2 + (swift_isaMask & *v24)))();
  v27 = v26;
  v28 = sub_27F09C();
  v30 = v29;
  type metadata accessor for JSSearchLandingUpsell();
  v31 = swift_dynamicCastClass();
  v32 = v24;
  if (v31)
  {
    v33 = v32;
    v34 = JSSearchLandingUpsell.tallVideoArtwork.getter();
    if (v34)
    {
      v35 = v34;

      v36 = 1;
    }

    else
    {
      v35 = JSSearchLandingUpsell.wideArtwork.getter();

      v36 = v35 != 0;
    }

    v16 = a2;
  }

  else
  {
    v36 = 0;
    v16 = a2;
  }

  *&v41 = v25;
  *(&v41 + 1) = v27;
  *&v42 = v28;
  *(&v42 + 1) = v30;
  *&v43 = v24;
  *(&v43 + 1) = a1;
  LOBYTE(v44) = v36;
  *(&v44 + 1) = 5122;
  *(&v44 + 1) = 0;
  *&v45 = 0;
  *(&v45 + 1) = v24;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49[0] = 1;
  *&v49[8] = 0;
  *&v49[16] = 0;
  v49[24] = 2;
  v50[0] = v25;
  v50[1] = v27;
  v50[2] = v28;
  v50[3] = v30;
  v50[4] = v24;
  v50[5] = a1;
  v51 = v36;
  v52 = 5122;
  v53 = 0;
  v54 = 0;
  v55 = v24;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 1;
  v60 = 0;
  v61 = 0;
  v62 = 2;
  sub_465F4(&v41, &v63);
  sub_46650(v50);
  v69 = v47;
  v70 = v48;
  v71[0] = *v49;
  *(v71 + 9) = *&v49[9];
  v65 = v43;
  v66 = v44;
  v67 = v45;
  v68 = v46;
  v63 = v41;
  v64 = v42;
  UIScreen.Dimensions.size.getter(*&v41);
  v78 = v69;
  v79 = v70;
  v80[0] = v71[0];
  *(v80 + 9) = *(v71 + 9);
  v74 = v65;
  v75 = v66;
  v76 = v67;
  v77 = v68;
  v72 = v63;
  v73 = v64;
LABEL_17:
  v17 = v79;
  v16[6] = v78;
  v16[7] = v17;
  v16[8] = v80[0];
  *(v16 + 137) = *(v80 + 9);
  v18 = v75;
  v16[2] = v74;
  v16[3] = v18;
  v19 = v77;
  v16[4] = v76;
  v16[5] = v19;
  result = *&v72;
  v21 = v73;
  *v16 = v72;
  v16[1] = v21;
  return result;
}

id sub_17B714(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(type metadata accessor for SubtitledButton()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

uint64_t sub_17B794()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_onboardingVerticalStack);
  v2 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_childViewModelKinds;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = *(v0 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers);
  v44 = OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_viewModelKindToViewController;
  v5 = *(v0 + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_viewModelKindToViewController);

  v6 = sub_96934(_swiftEmptyArrayStorage);
  v46 = v0;
  v47 = v3;
  v7 = *(v0 + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_pageHeaderContentViewController);
  v45 = v4;
  if (!v7)
  {
    goto LABEL_23;
  }

  if (v4 >> 62)
  {
LABEL_19:
    v8 = sub_ABB060();
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_20:
    v16 = v7;
LABEL_21:
    v4 = v7;
    sub_AB9730();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
LABEL_59:
      sub_AB97A0();
    }

    sub_AB97F0();

    v3 = v47;
    goto LABEL_23;
  }

  v8 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  if (!v8)
  {
    goto LABEL_20;
  }

LABEL_4:
  v9 = v4 & 0xC000000000000001;
  v10 = v4 & 0xFFFFFFFFFFFFFF8;
  v11 = v7;
  v4 = 0;
  while (v9)
  {
    v12 = sub_35F8D4(v4, v45);
    swift_unknownObjectRelease();
    if (v12 == v11)
    {
      v15 = sub_35F8D4(v4, v45);
      goto LABEL_14;
    }

LABEL_10:
    v14 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    ++v4;
    if (v14 == v8)
    {
      goto LABEL_21;
    }
  }

  if (v4 >= *(v10 + 16))
  {
    goto LABEL_18;
  }

  v13 = *(v45 + 8 * v4 + 32);
  if (v13 != v11)
  {
    goto LABEL_10;
  }

  v15 = v13;
LABEL_14:
  v4 = v15;
  sub_AB9730();
  v3 = v47;
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();

LABEL_23:
  v49 = *(v3 + 16);
  if (!v49)
  {
LABEL_55:

    sub_4D4068(_swiftEmptyArrayStorage, 0);

    *(v46 + v44) = v6;
  }

  v17 = 0;
  v48 = v3 + 32;
  while (2)
  {
    if (v17 >= *(v3 + 16))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v20 = *(v48 + 8 * v17);
    v4 = *(v5 + 2);
    v21 = (v20 & 0xFFFFFFFFFFFFFF9);
    if (v4)
    {
      v22 = sub_2EC220(v20);
      if (v23)
      {
        v24 = *(*(v5 + 7) + 8 * v22);
        goto LABEL_33;
      }
    }

    v24 = sub_17BCD8(v20);
    if (!v24)
    {

      goto LABEL_27;
    }

LABEL_33:
    v25 = v24;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v26 = v25 == 0;
    }

    else
    {
      v26 = 1;
    }

    if (!v26)
    {
      v27 = [v25 contentScrollView];
      if (v27)
      {
        v28 = v27;
        objc_opt_self();
        v29 = swift_dynamicCastObjCClass();
        if (v29)
        {
          [v29 _setAllowsSelectionDuringEditing:1];
        }
      }
    }

    v50 = v21;
    v30 = v5;
    v31 = v25;
    sub_AB9730();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    v5 = v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = sub_2EC220(v20);
    v34 = v6[2];
    v35 = (v33 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_57;
    }

    v37 = v33;
    if (v6[3] >= v36)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v33 & 1) == 0)
        {
          goto LABEL_50;
        }

        goto LABEL_25;
      }

      sub_33080C();
      if (v37)
      {
        goto LABEL_25;
      }

LABEL_50:
      v6[(v4 >> 6) + 8] |= 1 << v4;
      *(v6[6] + 8 * v4) = v20;
      *(v6[7] + 8 * v4) = v5;

      v40 = v6[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_58;
      }

      v6[2] = v42;
LABEL_26:
      v5 = v30;
      v3 = v47;
LABEL_27:
      if (v49 == ++v17)
      {
        goto LABEL_55;
      }

      continue;
    }

    break;
  }

  sub_326614(v36, isUniquelyReferenced_nonNull_native);
  v38 = sub_2EC220(v20);
  if ((v37 & 1) == (v39 & 1))
  {
    v4 = v38;
    if ((v37 & 1) == 0)
    {
      goto LABEL_50;
    }

LABEL_25:
    v18 = v6[7];
    v19 = *(v18 + 8 * v4);
    *(v18 + 8 * v4) = v5;

    goto LABEL_26;
  }

  result = sub_ABB4C0();
  __break(1u);
  return result;
}

char *sub_17BCD8(unint64_t a1)
{
  result = 0;
  switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
  {
    case 4uLL:
      v3 = (a1 & 0xFFFFFFFFFFFFFF9);
      v4 = objc_allocWithZone(type metadata accessor for JSGridViewController());
      return sub_4A50FC(v3);
    case 7uLL:
      v40 = (a1 & 0xFFFFFFFFFFFFFF9);
      v41 = type metadata accessor for JSMenuViewController();
      v42 = objc_allocWithZone(v41);
      *&v42[qword_DE9D50] = 0;
      *&v42[qword_DE9D58] = 0;
      v42[qword_DE9D60] = 0;
      *&v42[qword_DE9D70] = 0;
      v43 = qword_DE9D78;
      v44 = sub_AB3820();
      (*(*(v44 - 8) + 56))(&v42[v43], 1, 1, v44);
      *&v42[qword_DE9D80] = 0;
      *&v42[qword_DE9D68] = v40;
      v62.receiver = v42;
      v62.super_class = v41;
      v45 = v40;
      return objc_msgSendSuper2(&v62, "init");
    case 0xCuLL:
      v23 = (a1 & 0xFFFFFFFFFFFFFF9);
      v24 = type metadata accessor for JSParagraphViewController();
      v25 = objc_allocWithZone(v24);
      v26 = &v25[OBJC_IVAR____TtC16MusicApplication25JSParagraphViewController_additionalContentInsets];
      v27 = *&UIEdgeInsetsZero.bottom;
      *v26 = *&UIEdgeInsetsZero.top;
      *(v26 + 1) = v27;
      *&v25[OBJC_IVAR____TtC16MusicApplication25JSParagraphViewController____lazy_storage___paragraphView] = 0;
      *&v25[OBJC_IVAR____TtC16MusicApplication25JSParagraphViewController_paragraphViewModel] = v23;
      v60.receiver = v25;
      v60.super_class = v24;
      v28 = v23;
      v9 = objc_msgSendSuper2(&v60, "initWithNibName:bundle:", 0, 0);
      v29 = sub_4D3C64();
      v30 = &v29[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
      v31 = *&v29[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
      v32 = *&v29[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 8];
      v33 = v29[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 10];
      *v30 = 0;
      *(v30 + 4) = 256;
      v30[10] = 0;
      sub_4DBD3C(v31, v32 | (v33 << 16));

      result = v9;
      v34 = &v9[OBJC_IVAR____TtC16MusicApplication25JSParagraphViewController_additionalContentInsets];
      v35 = *&v9[OBJC_IVAR____TtC16MusicApplication25JSParagraphViewController_additionalContentInsets];
      v36 = *&v9[OBJC_IVAR____TtC16MusicApplication25JSParagraphViewController_additionalContentInsets + 16];
      *v34 = xmmword_AF9C80;
      *(v34 + 1) = xmmword_AF9C80;
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v35, xmmword_AF9C80), vceqq_f64(v36, xmmword_AF9C80))))))
      {
        v37 = sub_37F240();
        v38.f64[0] = *v34;
        v39.f64[0] = *(v34 + 2);
        sub_4CE85C(v38, *(v34 + 1), v39, *(v34 + 3));

        sub_37F2C4();
        goto LABEL_20;
      }

      return result;
    case 0xDuLL:
      v21 = (a1 & 0xFFFFFFFFFFFFFF9);
      objc_allocWithZone(type metadata accessor for JSMultiChoiceViewController());
      v11 = sub_498060(v21);
      goto LABEL_9;
    case 0xEuLL:
      v10 = (a1 & 0xFFFFFFFFFFFFFF9);
      objc_allocWithZone(type metadata accessor for JSMultiChoiceViewController());
      v11 = sub_498288(v10);
LABEL_9:
      v9 = v11;
      v22 = &v11[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_propertyChangedObservingDelegate];
      goto LABEL_18;
    case 0x17uLL:
      v16 = (a1 & 0xFFFFFFFFFFFFFF9);
      v17 = objc_allocWithZone(type metadata accessor for JSSocialLightIdentityCreatorViewController(0));
      v18 = v16;
      v9 = sub_319DF0(v18);

      *&v9[qword_DFE780 + 8] = &off_CFD8F8;
      goto LABEL_19;
    case 0x18uLL:
      v46 = (a1 & 0xFFFFFFFFFFFFFF9);
      v47 = objc_allocWithZone(type metadata accessor for JSSocialOnboardingFriendsFinderViewController());
      return sub_3388F0(v46);
    case 0x1BuLL:
      v48 = (a1 & 0xFFFFFFFFFFFFFF9);
      v49 = type metadata accessor for JSSocialOnboardingWelcomeViewController();
      v50 = objc_allocWithZone(v49);
      v51 = OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_textDrawingCache;
      type metadata accessor for TextDrawing.Cache();
      swift_allocObject();
      *&v50[v51] = TextDrawing.Cache.init()();
      *&v50[OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController____lazy_storage___socialOnboardingWelcomeView] = 0;
      v52 = &v50[OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_visibleBoundsSize];
      *v52 = 0;
      *(v52 + 1) = 0;
      *&v50[OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_socialOnboardingWelcomeViewModel] = v48;
      v63.receiver = v50;
      v63.super_class = v49;
      v53 = v48;
      return objc_msgSendSuper2(&v63, "initWithNibName:bundle:", 0, 0);
    case 0x1DuLL:
      v58 = (a1 & 0xFFFFFFFFFFFFFF9);
      v59 = objc_allocWithZone(type metadata accessor for JSSocialProfileEditorViewController());
      v9 = sub_4E1E34(v58);
      *&v9[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_validationDelegate + 8] = &off_CFD8F8;
      swift_unknownObjectWeakAssign();
      *&v9[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_textInputDelegate + 8] = &off_CFD8E0;
      swift_unknownObjectWeakAssign();
      v22 = &v9[OBJC_IVAR____TtC16MusicApplication35JSSocialProfileEditorViewController_propertyChangedObservingDelegate];
LABEL_18:
      *(v22 + 1) = &off_CFD8D0;
      goto LABEL_19;
    case 0x21uLL:
      v54 = (a1 & 0xFFFFFFFFFFFFFF9);
      v55 = type metadata accessor for JSCircleImageViewController();
      v56 = objc_allocWithZone(v55);
      *&v56[OBJC_IVAR____TtC16MusicApplication27JSCircleImageViewController____lazy_storage___circleImageView] = 0;
      *&v56[OBJC_IVAR____TtC16MusicApplication27JSCircleImageViewController_viewModel] = v54;
      v64.receiver = v56;
      v64.super_class = v55;
      v57 = v54;
      return objc_msgSendSuper2(&v64, "initWithNibName:bundle:", 0, 0);
    case 0x24uLL:
      v5 = (a1 & 0xFFFFFFFFFFFFFF9);
      v6 = type metadata accessor for JSOrderedPlaylistSelectorViewController();
      v7 = objc_allocWithZone(v6);
      *&v7[qword_E060E8 + 8] = 0;
      swift_unknownObjectWeakInit();
      v7[qword_E060F0] = 0;
      *&v7[qword_E06100] = 0x4000;
      *&v7[qword_E06108] = 0;
      *&v7[qword_E060F8] = v5;
      v61.receiver = v7;
      v61.super_class = v6;
      v8 = v5;
      v9 = objc_msgSendSuper2(&v61, "init");
      *&v9[qword_E060E8 + 8] = &off_CFD8D0;
LABEL_19:
      swift_unknownObjectWeakAssign();
      goto LABEL_20;
    case 0x25uLL:
      v19 = (a1 & 0xFFFFFFFFFFFFFF9);
      v20 = objc_allocWithZone(type metadata accessor for JSPrivacyLinkViewController());
      v9 = JSPrivacyLinkViewController.init(privacyLinkViewModel:)(v19);
      [v9 setModalPresentationStyle:5];
LABEL_20:
      result = v9;
      break;
    case 0x2CuLL:
      v12 = (a1 & 0xFFFFFFFFFFFFFF9);
      v13 = objc_allocWithZone(type metadata accessor for JSWhatsNewViewController(0));
      v14 = v12;
      v15 = sub_3ACE9C(v14);

      result = v15;
      break;
    default:
      return result;
  }

  return result;
}

void sub_17C394(char *a1, void *a2, char a3)
{
  v4 = v3;
  v8 = (*(&stru_338.offset + (swift_isaMask & *a2)))();
  if (!v9)
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  v10 = &a1[OBJC_IVAR____TtC16MusicApplication15SubtitledButton_title];
  v11 = *&a1[OBJC_IVAR____TtC16MusicApplication15SubtitledButton_title];
  v12 = *&a1[OBJC_IVAR____TtC16MusicApplication15SubtitledButton_title + 8];
  *v10 = v8;
  v10[1] = v9;
  v13 = v8 == v11 && v9 == v12;
  if (!v13 && (sub_ABB3C0() & 1) == 0)
  {
    sub_458374();
  }

  v15 = (*(&stru_338.reserved2 + (swift_isaMask & *a2)))(v14);
  sub_456244(v15, v16);
  if (a3)
  {
    v17 = objc_opt_self();
    v18 = [v17 whiteColor];
    [a1 setTintColor:v18];

    v19 = [v17 clearColor];
    v20 = *&a1[OBJC_IVAR____TtC16MusicApplication15MultilineButton_borderColor];
    *&a1[OBJC_IVAR____TtC16MusicApplication15MultilineButton_borderColor] = v19;
    v21 = v19;
    sub_456524(v20);

    v22 = UIColor.MusicTint.normal.unsafeMutableAddressor();
    v23 = *v22;
    v24 = *&a1[OBJC_IVAR____TtC16MusicApplication15SubtitledButton_textColor];
    *&a1[OBJC_IVAR____TtC16MusicApplication15SubtitledButton_textColor] = *v22;
    sub_13C80(0, qword_DFAAC0);
    v25 = v23;
    if ((sub_ABA790() & 1) == 0)
    {
      sub_458374();
    }
  }

  v26 = *(v4 + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_pinnedButtonContainerView);
  sub_17ED18(a1);
}

void sub_17C5D8(char a1)
{
  v2 = sub_AB3430();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12B2FC();
  if (v7)
  {
    v8 = v6;
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(ObjectType, v8);
    v11 = v10;
    swift_unknownObjectRelease();
    v12 = swift_getObjectType();
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_3B8F68();
    v13 = sub_21CCAC(1, v5, v16, v12, v11);
    (*(v3 + 8))(v5, v2);
    sub_12E1C(v16, &qword_DF2BD0);
    swift_unknownObjectRelease();
    if (v13)
    {
      sub_12AFE8();
      v15 = v14;
      JSSocialOnboardingVerticalStack.reportSelectionForBarButtonItem(_:impressions:pageDetailsProvider:)(a1, v13, v14);
    }
  }
}

void sub_17C788()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 safeAreaInsets];
    v4 = v3;

    [*&v0[OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_pinnedButtonContainerView] frame];
    if (v5 <= 0.0)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = v5 - v4;
    }

    v7 = sub_4D3DD0();
    [v7 contentInset];
    v9 = v8;

    if (v6 != v9)
    {
      v10 = *&v0[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView];
      [v10 contentInset];
      [v10 setContentInset:?];
    }

    sub_17C87C();
  }

  else
  {
    __break(1u);
  }
}

void sub_17C87C()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  sub_17CC88();
  UIEdgeInsetsInsetRect(v5, v7, v9, v11, v12, v13);
  v15 = v14;
  v17 = v16;
  v18 = *&v1[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers];
  if (v18 >> 62)
  {
    v19 = sub_ABB060();
    if (!v19)
    {
      return;
    }
  }

  else
  {
    v19 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
    if (!v19)
    {
      return;
    }
  }

  if (v19 < 1)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v30 = OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView;

  for (i = 0; i != v19; ++i)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v27 = sub_35F8D4(i, v18);
    }

    else
    {
      v27 = *(v18 + 8 * i + 32);
    }

    v28 = v27;
    v33 = v27;
    sub_13C80(0, &qword_DE7500);
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF3420);
    if (swift_dynamicCast())
    {
      sub_70DF8(v31, v34);
      v21 = sub_4D3DD0();
      [v21 adjustedContentInset];
      v23 = v22;

      [*&v1[v30] adjustedContentInset];
      v25 = v17 - (v23 + v24);
      v26 = *__swift_project_boxed_opaque_existential_1(v34, v34[3]) + OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_visibleBoundsSize;
      *v26 = v15;
      *(v26 + 8) = v25;
      sub_9E0E4();

      __swift_destroy_boxed_opaque_existential_0(v34);
    }

    else
    {
      v32 = 0;
      memset(v31, 0, sizeof(v31));

      sub_12E1C(v31, &qword_DF3428);
    }
  }
}

void sub_17CAE8()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    sub_17CC88();
    v12 = v11;
    v14 = v13;
    v15 = *&v0[OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_onboardingVerticalStack];
    v16 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_nextStepButton;
    swift_beginAccess();
    if (*(v15 + v16))
    {
      UIEdgeInsetsInsetRect(v4, v6, v8, v10, v12, v14);
      v17 = OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_pinnedButtonContainerView;
      [*&v0[OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_pinnedButtonContainerView] sizeThatFits:{v18, v19}];
      v21 = v20;
      v22 = *&v0[v17];
      v26.origin.x = v4;
      v26.origin.y = v6;
      v26.size.width = v8;
      v26.size.height = v10;
      MinX = CGRectGetMinX(v26);
      v27.origin.x = v4;
      v27.origin.y = v6;
      v27.size.width = v8;
      v27.size.height = v10;
      v24 = CGRectGetMaxY(v27) - v21;
      if (v24 < 0.0)
      {
        v25 = 0.0;
      }

      else
      {
        v25 = v24;
      }

      v28.origin.x = v4;
      v28.origin.y = v6;
      v28.size.width = v8;
      v28.size.height = v10;
      [v22 setFrame:{MinX, v25, CGRectGetWidth(v28), v21}];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_17CC88()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = [v0 traitCollection];
    v12 = [v11 horizontalSizeClass];

    if (v12 == &dword_0 + 2)
    {
      v13.origin.x = v4;
      v13.origin.y = v6;
      v13.size.width = v8;
      v13.size.height = v10;
      CGRectGetWidth(v13);
      sub_471A4();
      if ((sub_AB38F0() & 1) == 0)
      {
        v14.origin.x = v4;
        v14.origin.y = v6;
        v14.size.width = v8;
        v14.size.height = v10;
        CGRectGetWidth(v14);
        sub_AB38F0();
      }
    }

    else if (v12 == &dword_0 + 1)
    {
      swift_beginAccess();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_17CE84()
{
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v3 = v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB9250();
  __chkstk_darwin(v4 - 8);
  v6 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v0[OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_onboardingVerticalStack];
  v8 = [v0 navigationItem];
  v9 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_isEditing;
  swift_beginAccess();
  if (*(v7 + v9) == 1)
  {
    sub_17D680(v8);
LABEL_4:

    return;
  }

  if (v0[OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_nonEditingBarButtonItemsFinalized])
  {
    goto LABEL_4;
  }

  v49[1] = v6;
  v49[2] = v3;
  v51 = OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_nonEditingBarButtonItemsFinalized;
  v52 = v8;
  v10 = [v8 rightBarButtonItems];
  if (v10)
  {
    v11 = v10;
    sub_13C80(0, &unk_DF12E0);
    v12 = sub_AB9760();
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v53 = v12;
  v13 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_cancelBarButtonItem;
  swift_beginAccess();
  v14 = *(v7 + v13);
  if (v14)
  {
    sub_13C80(0, &unk_DF12E0);
    v15 = *(&stru_68.offset + (swift_isaMask & *v14));
    v16 = v14;
    v17 = v15();
    v19 = v18;
    sub_13C80(0, &unk_E05310);
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v16;
    v22 = v16;
    v54.is_nil = sub_ABA7D0();
    v60.value._countAndFlagsBits = v17;
    v60.value._object = v19;
    v54.value.super.isa = 0;
    v56.value.super.super.isa = 0;
    v23 = sub_AB9FA0(v60, v54, v56, v58).super.super.isa;
    sub_AB9730();
    if (*(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v53 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();

    v12 = v53;
  }

  v50 = v12;
  v24 = *&v0[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers];
  if (v24 >> 62)
  {
    goto LABEL_39;
  }

  v25 = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
LABEL_14:
  v26 = v24 & 0xC000000000000001;

  v27 = 0;
  while (1)
  {
    if (v25 == v27)
    {

LABEL_33:
      v47 = v51;
      v46 = v52;
      v45 = v50;
      goto LABEL_34;
    }

    v28 = v24 + 8 * v27;
    if (v26)
    {
      v29 = sub_35F8D4(v27, v24);
    }

    else
    {
      if (v27 >= *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        v25 = sub_ABB060();
        goto LABEL_14;
      }

      v29 = *(v28 + 32);
    }

    v30 = v29;
    type metadata accessor for JSOrderedPlaylistSelectorViewController();
    v31 = swift_dynamicCastClass();

    if (v31)
    {
      break;
    }

    if (__OFADD__(v27++, 1))
    {
      goto LABEL_38;
    }
  }

  if (v26)
  {
    v33 = sub_35F8D4(v27, v24);
  }

  else
  {
    v33 = *(v28 + 32);
  }

  v34 = v33;

  v35 = swift_dynamicCastClass();
  if (!v35)
  {

    goto LABEL_33;
  }

  v36 = v35;
  sub_13C80(0, &unk_DF12E0);
  sub_AB91E0();
  sub_AB3550();
  v37 = sub_AB9320();
  v39 = v38;
  sub_13C80(0, &unk_E05310);
  v40 = swift_allocObject();
  v41 = v0;
  swift_unknownObjectWeakInit();
  v42 = swift_allocObject();
  *(v42 + 16) = v36;
  *(v42 + 24) = v40;
  v43 = v34;
  v55.is_nil = sub_ABA7D0();
  v61.value._countAndFlagsBits = v37;
  v61.value._object = v39;
  v55.value.super.isa = 0;
  v57.value.super.super.isa = 0;
  v44 = sub_AB9FA0(v61, v55, v57, v59).super.super.isa;
  sub_AB9730();
  if (*(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v53 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();

  v45 = v53;
  v0 = v41;
  v47 = v51;
  v46 = v52;
LABEL_34:
  if (v45 >> 62)
  {
    if (!sub_ABB060())
    {
      goto LABEL_41;
    }

LABEL_36:
    sub_13C80(0, &unk_DF12E0);
    isa = sub_AB9740().super.isa;

    [v46 setRightBarButtonItems:isa];
  }

  else
  {
    if (*(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_36;
    }

LABEL_41:
  }

  v0[v47] = 1;
}

void sub_17D528()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_180354();
  }
}

void sub_17D57C()
{
  v0 = JSOrderedPlaylistSelector.items.getter();
  v1 = v0;
  if (v0 >> 62)
  {
    v2 = sub_ABB060();
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v2; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = sub_360EBC(i, v1);
    }

    else
    {
      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    JSOrderedPlaylistSelectorItem.isSelected.setter(0);
  }

LABEL_10:

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_17C5D8(2);
  }
}

void sub_17D680(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_onboardingVerticalStack);
  v4 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_isEditing;
  swift_beginAccess();
  if (*(v3 + v4) == 1)
  {
    v5 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_requiresValidation;
    swift_beginAccess();
    v6 = *(v3 + v5);
    sub_13C80(0, &unk_DF12E0);
    sub_13C80(0, &unk_E05310);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    if (v6 == 1)
    {
      v26 = v7;
      v29.value.super.super.isa = sub_ABA7D0();
      v29.is_nil = 0;
      isa = sub_AB9F90(UIBarButtonSystemItemCancel, v29, v32).super.super.isa;
      [a1 setLeftBarButtonItem:{isa, 0, 0, 0, sub_1805C8, v26}];

      if (*(v1 + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_isUpdating) == 1)
      {
        v9 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
        [v9 startAnimating];
        v10 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v9];
        [a1 setRightBarButtonItem:v10];
      }

      else
      {
        v11 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v27 = v11;
        v31.value.super.super.isa = sub_ABA7D0();
        v31.is_nil = 0;
        v10 = sub_AB9F90(UIBarButtonSystemItemDone, v31, v34).super.super.isa;
        v12 = *(v1 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers);
        if (v12 >> 62)
        {
          goto LABEL_24;
        }

        for (i = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
        {

          v14 = 0;
          while (1)
          {
            if ((v12 & 0xC000000000000001) != 0)
            {
              v15 = sub_35F8D4(v14, v12);
            }

            else
            {
              if (v14 >= *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_23;
              }

              v15 = *(v12 + 8 * v14 + 32);
            }

            v16 = v15;
            v17 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            swift_getObjectType();
            v18 = swift_conformsToProtocol2();
            if (v18 && v16)
            {
              v19 = v18;
              ObjectType = swift_getObjectType();
              LOBYTE(v19) = (*(v19 + 8))(ObjectType, v19);

              if (v19)
              {
                v21 = 1;
LABEL_21:

                goto LABEL_26;
              }
            }

            else
            {
            }

            ++v14;
            if (v17 == i)
            {
              v21 = 0;
              goto LABEL_21;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          ;
        }

        v21 = 0;
LABEL_26:
        [(objc_class *)v10 setEnabled:v21, 0, 0, 0, sub_1805D0, v27];
        [a1 setRightBarButtonItem:{v10, v22, v23, v24, v25, v28}];
      }
    }

    else
    {
      v30.value.super.super.isa = sub_ABA7D0();
      v30.is_nil = 0;
      v10 = sub_AB9F90(UIBarButtonSystemItemDone, v30, v33).super.super.isa;
      [a1 setRightBarButtonItem:{v10, 0, 0, 0, sub_1805C0, v7}];
    }
  }
}

void sub_17DAA4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
    sub_17C5D8(0);
  }
}

void sub_17DB10(uint64_t a1, uint64_t a2)
{
  v3 = sub_AB7C10();
  i = *(v3 - 1);
  __chkstk_darwin(v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB7C50();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v55 = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v12 = Strong;
  v51 = v10;
  v13 = OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers;
  v14 = *(Strong + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers);
  if (v14 >> 62)
  {
LABEL_33:
    v15 = sub_ABB060();
    if (v15)
    {
      goto LABEL_4;
    }

LABEL_18:
    sub_17E180(1, v55, v12);

    return;
  }

  v15 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
  if (!v15)
  {
    goto LABEL_18;
  }

LABEL_4:
  v46 = v8;
  v47 = v6;
  v48 = v7;
  v49 = i;
  v50 = v3;
  v6 = (v14 & 0xC000000000000001);
  v8 = v14 & 0xFFFFFFFFFFFFFF8;
  v56 = v12;

  for (i = 0; ; ++i)
  {
    if (v6)
    {
      v16 = sub_35F8D4(i, v14);
    }

    else
    {
      if (i >= *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_32;
      }

      v16 = *(v14 + 8 * i + 32);
    }

    v3 = v16;
    v17 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    swift_getObjectType();
    v18 = swift_conformsToProtocol2();
    if (v18)
    {
      if (v3)
      {
        break;
      }
    }

    if (v17 == v15)
    {

      goto LABEL_18;
    }

LABEL_6:
    ;
  }

  v19 = v18;
  ObjectType = swift_getObjectType();
  v7 = (*(v19 + 8))(ObjectType, v19);

  if ((v7 & 1) == 0)
  {
    if (v17 == v15)
    {

      goto LABEL_18;
    }

    goto LABEL_6;
  }

  v53 = dispatch_group_create();
  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  v21 = *&v12[v13];

  if (v21 >> 62)
  {
    v22 = sub_ABB060();
    if (!v22)
    {
      goto LABEL_36;
    }

LABEL_21:
    if (v22 >= 1)
    {
      v23 = 0;
      v24 = v21 & 0xC000000000000001;
      v52 = v21 & 0xC000000000000001;
      do
      {
        if (v24)
        {
          v25 = sub_35F8D4(v23, v21);
        }

        else
        {
          v25 = *(v21 + 8 * v23 + 32);
        }

        v26 = v25;
        swift_getObjectType();
        v27 = swift_conformsToProtocol2();
        if (v27 && v26)
        {
          v28 = v27;
          v29 = v26;
          v30 = v53;
          dispatch_group_enter(v53);
          v58 = swift_getObjectType();
          v31 = swift_allocObject();
          v32 = v56;
          v33 = v21;
          v34 = v54;
          v31[2] = v56;
          v31[3] = v34;
          v31[4] = v30;
          v57 = *(v28 + 8);
          v35 = v32;
          v21 = v33;

          v36 = v30;
          v57(v35, sub_1806D8, v31, v58, v28);
          v24 = v52;
        }

        else
        {
        }

        ++v23;
      }

      while (v22 != v23);
      goto LABEL_36;
    }

    __break(1u);
  }

  else
  {
    v22 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
    if (v22)
    {
      goto LABEL_21;
    }

LABEL_36:

    sub_13C80(0, &qword_DE8ED0);
    v37 = sub_ABA150();
    v38 = swift_allocObject();
    v39 = v56;
    v38[2] = v55;
    v38[3] = v39;
    v38[4] = v54;
    aBlock[4] = sub_180630;
    aBlock[5] = v38;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_108_1;
    v40 = _Block_copy(aBlock);
    v41 = v39;

    v42 = v51;
    sub_AB7C30();
    v59 = _swiftEmptyArrayStorage;
    sub_17FE14(&qword_DF06C0, 255, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
    sub_36A00(&qword_DF06D0, &unk_DE9C30);
    v43 = v47;
    v44 = v50;
    sub_ABABB0();
    v45 = v53;
    sub_ABA0F0();

    (*(v49 + 8))(v43, v44);
    (*(v46 + 8))(v42, v48);
    _Block_release(v40);
  }
}

void sub_17E180(char a1, uint64_t a2, void *a3)
{
  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_23;
    }

    v15 = Strong;
    v16 = *(Strong + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_isUpdating);
    *(Strong + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_isUpdating) = 0;
    if (v16 == 1)
    {
      sub_17CE84();
    }

    goto LABEL_22;
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers);
    if (v6 >> 62)
    {
      v7 = sub_ABB060();
      if (v7)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
      if (v7)
      {
LABEL_5:
        if (v7 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v7; ++i)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = sub_35F8D4(i, v6);
          }

          else
          {
            v9 = *(v6 + 8 * i + 32);
          }

          v10 = v9;
          swift_getObjectType();
          v11 = swift_conformsToProtocol2();
          if (v11 && v10)
          {
            v12 = v11;
            ObjectType = swift_getObjectType();
            (*(v12 + 16))(ObjectType, v12);
          }
        }

        goto LABEL_20;
      }
    }
  }

LABEL_20:
  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (!v17)
  {
    goto LABEL_23;
  }

  v15 = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  aBlock[4] = sub_1806E4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_117;
  v19 = _Block_copy(aBlock);
  v20 = a3;

  [v15 dismissViewControllerAnimated:1 completion:v19];
  _Block_release(v19);
LABEL_22:

LABEL_23:
  swift_beginAccess();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    sub_17C5D8(1);
  }
}

void sub_17E428(char a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  if (a1 == 2)
  {
    v4 = *(a2 + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_isUpdating);
    *(a2 + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_isUpdating) = 1;
    if ((v4 & 1) == 0)
    {
      sub_17CE84();
    }
  }

  else
  {
    swift_beginAccess();
    *(a3 + 16) = (a1 & 1) == 0;
    dispatch_group_leave(a4);
  }
}

void sub_17E4B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
    aBlock[4] = sub_18088C;
    aBlock[5] = v2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_123_0;
    v3 = _Block_copy(aBlock);
    v4 = v1;

    [v4 dismissViewControllerAnimated:1 completion:v3];
    _Block_release(v3);
    sub_17C5D8(1);
  }
}

void sub_17E5CC()
{

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController____lazy_storage___cancelStepButton);
}

void *sub_17E754()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_pageHeaderContentViewController);
  v2 = v1;
  return v1;
}

void sub_17E784(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_pageHeaderContentViewController);
  *(v1 + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_pageHeaderContentViewController) = a1;
  v2 = a1;
  sub_17B070(v3);
}

void (*sub_17E7E4(void *a1))(void *a1)
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
  v2[4] = sub_17B18C(v2);
  return sub_A8F90;
}

void *sub_17E854()
{
  v1 = OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_promotionalParallaxViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_17E8A0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_promotionalParallaxViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_17E960@<D0>(unint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_17B314(*a1, v8);
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

char *sub_17E9C4(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_headerText];
  *v9 = 0;
  *(v9 + 1) = 0xE000000000000000;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_footerText];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_embeddedChildViewController] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_buttons] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_headerLabel] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_footerLabel] = 0;
  v11 = [objc_opt_self() effectWithStyle:4];
  v12 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v11];

  *&v4[OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_visualEffectView] = v12;
  [v12 setClipsToBounds:1];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for PinnedButtonContainerView();
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  [v13 addSubview:*&v13[OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_visualEffectView]];
  return v13;
}

void sub_17EB78(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v5 = &v4[*a3];
  v6 = *v5;
  v7 = *(v5 + 1);
  v8 = *v5 == a1 && v7 == a2;
  if (!v8 && (sub_ABB3C0() & 1) == 0)
  {
    v10 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v10 = v6 & 0xFFFFFFFFFFFFLL;
    }

    v11 = *a4;
    v12 = *&v4[*a4];
    if (v10)
    {
      if (v12)
      {
        v13 = *&v4[*a4];
      }

      else
      {
        v13 = sub_180240();
        v12 = 0;
      }

      v14 = v12;
      [v13 setHidden:0];

      v15 = sub_AB9260();

      [v13 setText:v15];

      if (([v13 isDescendantOfView:v4] & 1) == 0)
      {
        [v4 addSubview:v13];
      }

      v16 = *&v4[v11];
      *&v4[v11] = v13;
      v17 = v13;

      [v4 setNeedsLayout];
    }

    else if (v12)
    {

      [v12 setHidden:1];
    }
  }
}

id sub_17ED18(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_buttons;
  swift_beginAccess();
  v5 = *&v2[v4];
  v9[2] = &v10;
  v10 = a1;

  v6 = sub_1B3C24(sub_1800E8, v9, v5);

  if ((v6 & 1) == 0)
  {
    swift_beginAccess();
    v8 = a1;
    sub_AB9730();
    if (*(&dword_10 + (*&v2[v4] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v2[v4] & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    swift_endAccess();
    [v2 addSubview:v8];
    return [v2 setNeedsLayout];
  }

  return result;
}

double sub_17EE50(double a1, double a2)
{
  v5 = [v2 traitCollection];
  [v5 displayScale];

  sub_AB3A00();
  v7 = v6;
  [v2 safeAreaInsets];
  v9 = v8 + 40.0;
  v10 = *&v2[OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_headerText + 8];
  if ((v10 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v11 = *&v2[OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_headerText] & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = *&v2[OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_headerLabel];
    if (v12)
    {
      [v12 sizeThatFits:{a1, a2}];
      v9 = v9 + v7 + v13;
    }
  }

  v14 = *&v2[OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_embeddedChildViewController];
  if (v14)
  {
    [v14 preferredContentSize];
    v9 = v9 + v15 + 10.0;
  }

  v16 = OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_buttons;
  swift_beginAccess();
  v17 = *&v2[v16];
  if (v17 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)); ; i = sub_ABB060())
  {

    if (!i)
    {
      break;
    }

    if ((v17 & 0xC000000000000001) != 0)
    {
      v19 = sub_360E84(0, v17);
    }

    else
    {
      if (!*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v19 = *(v17 + 32);
    }

    v20 = v19;
    v21 = type metadata accessor for SubtitledButton();
    v38.receiver = v20;
    v38.super_class = v21;
    objc_msgSendSuper2(&v38, "sizeThatFits:", a1, a2);
    v23 = v22;

    v24 = 50.0;
    if (v23 > 50.0)
    {
      v24 = v23;
    }

    v9 = v9 + v24;
    if (i == 1)
    {
      break;
    }

    v29 = 5;
    while (1)
    {
      v30 = v29 - 4;
      if ((v17 & 0xC000000000000001) != 0)
      {
        v31 = sub_360E84(v29 - 4, v17);
      }

      else
      {
        if (v30 >= *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_35;
        }

        v31 = *(v17 + 8 * v29);
      }

      v32 = v31;
      v33 = __OFADD__(v30, 1);
      v34 = v29 - 3;
      if (v33)
      {
        break;
      }

      v38.receiver = v31;
      v38.super_class = v21;
      objc_msgSendSuper2(&v38, "sizeThatFits:", a1, a2);
      v36 = v35;

      v37 = v36 + 10.0;
      if (v36 <= 50.0)
      {
        v37 = 60.0;
      }

      v9 = v9 + v37;
      ++v29;
      if (v34 == i)
      {
        goto LABEL_18;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

LABEL_18:

  v25 = *&v2[OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_footerText + 8];
  if ((v25 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(v25) & 0xF;
  }

  else
  {
    v26 = *&v2[OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_footerText] & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    v27 = *&v2[OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_footerLabel];
    if (v27)
    {
      [v27 sizeThatFits:{a1, a2}];
    }
  }

  return a1;
}

void sub_17F1B0()
{
  v58.receiver = v0;
  v58.super_class = type metadata accessor for PinnedButtonContainerView();
  objc_msgSendSuper2(&v58, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 effectiveUserInterfaceLayoutDirection];
  v9 = [v0 traitCollection];
  [v9 displayScale];

  sub_AB3A00();
  v56 = v10;
  [v0 music_inheritedLayoutInsets];
  v12 = v11;
  v14 = v13 + 20.0;
  [v0 safeAreaInsets];
  v15 = UIEdgeInsetsInsetRect(v2, v4, v6, v8, v14, v12);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [*&v0[OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_visualEffectView] setFrame:{v2, v4, v6, v8}];
  v22 = *&v0[OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_headerText + 8];
  if ((v22 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v22) & 0xF;
  }

  else
  {
    v23 = *&v0[OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_headerText] & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v24 = *&v0[OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_headerLabel];
    if (v24)
    {
      v25 = v24;
      [v25 sizeThatFits:{v19, v21}];
      v27 = v26;
      v59.origin.x = v15;
      v59.origin.y = v17;
      v59.size.width = v19;
      v59.size.height = v21;
      CGRectGetWidth(v59);
      v60.origin.x = v15;
      v60.origin.y = v17;
      v60.size.width = v19;
      v60.size.height = v21;
      CGRectGetMinX(v60);
      v61.origin.x = v15;
      v61.origin.y = v17;
      v61.size.width = v19;
      v61.size.height = v21;
      CGRectGetMinY(v61);
      sub_ABA490();
      [v25 setFrame:?];

      v21 = v21 - (v56 + v27);
      v17 = v17 + v56 + v27;
    }
  }

  v28 = *&v0[OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_embeddedChildViewController];
  if (v28)
  {
    v29 = v28;
    v30 = [v29 view];
    if (v30)
    {
      v31 = v30;
      [v29 preferredContentSize];
      v33 = v32;
      v62.origin.x = v15;
      v62.origin.y = v17;
      v62.size.width = v19;
      v62.size.height = v21;
      CGRectGetWidth(v62);
      v63.origin.x = v15;
      v63.origin.y = v17;
      v63.size.width = v19;
      v63.size.height = v21;
      CGRectGetMinX(v63);
      v64.origin.x = v15;
      v64.origin.y = v17;
      v64.size.width = v19;
      v64.size.height = v21;
      CGRectGetMinY(v64);
      sub_ABA490();
      [v31 setFrame:?];

      v21 = v21 - (v33 + 10.0);
      v17 = v17 + v33 + 10.0;
    }

    else
    {
    }
  }

  v34 = OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_buttons;
  swift_beginAccess();
  v35 = *&v0[v34];
  if (v35 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)); ; i = sub_ABB060())
  {

    if (!i)
    {
      break;
    }

    if ((v35 & 0xC000000000000001) != 0)
    {
      v37 = sub_360E84(0, v35);
    }

    else
    {
      if (!*(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v37 = *(v35 + 32);
    }

    v38 = v37;
    v39 = type metadata accessor for SubtitledButton();
    v57.receiver = v38;
    v57.super_class = v39;
    objc_msgSendSuper2(&v57, "sizeThatFits:", v19, v21);
    if (v40 > 50.0)
    {
      v41 = v40;
    }

    else
    {
      v41 = 50.0;
    }

    v65.origin.x = v15;
    v65.origin.y = v17;
    v65.size.width = v19;
    v65.size.height = v21;
    CGRectGetWidth(v65);
    v66.origin.x = v15;
    v66.origin.y = v17;
    v66.size.width = v19;
    v66.size.height = v21;
    CGRectGetMinX(v66);
    v67.origin.x = v15;
    v67.origin.y = v17;
    v67.size.width = v19;
    v67.size.height = v21;
    CGRectGetMinY(v67);
    v42 = v38;
    sub_ABA490();
    [v42 setFrame:?];

    v21 = v21 - (v41 + 10.0);
    v17 = v17 + v41 + 10.0;
    if (i == 1)
    {
      break;
    }

    v47 = 5;
    while (1)
    {
      v48 = v47 - 4;
      if ((v35 & 0xC000000000000001) != 0)
      {
        v49 = sub_360E84(v47 - 4, v35);
      }

      else
      {
        if (v48 >= *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_39;
        }

        v49 = *(v35 + 8 * v47);
      }

      v50 = v49;
      v51 = __OFADD__(v48, 1);
      v52 = v47 - 3;
      if (v51)
      {
        break;
      }

      v57.receiver = v49;
      v57.super_class = v39;
      objc_msgSendSuper2(&v57, "sizeThatFits:", v19, v21);
      if (v53 > 50.0)
      {
        v54 = v53;
      }

      else
      {
        v54 = 50.0;
      }

      v71.origin.x = v15;
      v71.origin.y = v17;
      v71.size.width = v19;
      v71.size.height = v21;
      CGRectGetWidth(v71);
      v72.origin.x = v15;
      v72.origin.y = v17;
      v72.size.width = v19;
      v72.size.height = v21;
      CGRectGetMinX(v72);
      v73.origin.x = v15;
      v73.origin.y = v17;
      v73.size.width = v19;
      v73.size.height = v21;
      CGRectGetMinY(v73);
      v55 = v50;
      sub_ABA490();
      [v55 setFrame:?];

      v21 = v21 - v54;
      v17 = v17 + v54;
      ++v47;
      if (v52 == i)
      {
        goto LABEL_21;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

LABEL_21:

  v43 = *&v0[OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_footerText + 8];
  if ((v43 & 0x2000000000000000) != 0)
  {
    v44 = HIBYTE(v43) & 0xF;
  }

  else
  {
    v44 = *&v0[OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_footerText] & 0xFFFFFFFFFFFFLL;
  }

  if (v44)
  {
    v45 = *&v0[OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_footerLabel];
    if (v45)
    {
      v46 = v45;
      [v46 sizeThatFits:{v19, v21}];
      v68.origin.x = v15;
      v68.origin.y = v17;
      v68.size.width = v19;
      v68.size.height = v21;
      CGRectGetWidth(v68);
      v69.origin.x = v15;
      v69.origin.y = v17;
      v69.size.width = v19;
      v69.size.height = v21;
      CGRectGetMinX(v69);
      v70.origin.x = v15;
      v70.origin.y = v17;
      v70.size.width = v19;
      v70.size.height = v21;
      CGRectGetMinY(v70);
      sub_ABA490();
      [v46 setFrame:?];
    }
  }
}

id sub_17F8AC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_17F9F0(uint64_t a1, uint64_t a2)
{
  result = sub_17FE14(&qword_DF3418, a2, type metadata accessor for JSSocialOnboardingVerticalStackViewController);
  *(a1 + 16) = result;
  return result;
}

void sub_17FA48(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    sub_17CC88();
    [v2 music_setLayoutInsets:?];

    sub_17CAE8();
    sub_17C788();
  }

  else
  {
    __break(1u);
  }
}

void sub_17FAA8()
{
  v1 = sub_AB7C10();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB7C50();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v0[OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_pageHeaderContentViewController])
  {
    if ((v0[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_needsItemsRecomputation] & 1) == 0)
    {
      v0[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_needsItemsRecomputation] = 1;
      v15 = v7;
      sub_13C80(0, &qword_DE8ED0);
      v14 = sub_ABA150();
      v10 = swift_allocObject();
      *(v10 + 16) = v0;
      aBlock[4] = sub_A95F0;
      aBlock[5] = v10;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = &block_descriptor_51;
      v11 = _Block_copy(aBlock);
      v12 = v0;

      sub_AB7C30();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_17FE14(&qword_DF06C0, 255, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
      sub_36A00(&qword_DF06D0, &unk_DE9C30);
      sub_ABABB0();
      v13 = v14;
      sub_ABA160();
      (*(v2 + 8))(v4, v1);
      (*(v6 + 8))(v9, v15);
      _Block_release(v11);
    }
  }
}

uint64_t sub_17FDC4()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_17FE14(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_17FE5C(char a1)
{
  v2 = v1;
  LOBYTE(v3) = a1;
  v4 = *&v1[OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_onboardingVerticalStack];
  v5 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_requiresValidation;
  swift_beginAccess();
  if (*(v4 + v5) == 1)
  {
    v6 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_isEditing;
    swift_beginAccess();
    if (*(v4 + v6) == 1)
    {
      v7 = [v1 navigationItem];
      v8 = [v7 rightBarButtonItem];
      if (v8)
      {
        v9 = *&v2[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers];
        if (v9 >> 62)
        {
          goto LABEL_24;
        }

        for (i = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)); i; v8 = v16)
        {
          v21 = v8;
          v22 = v7;
          v23 = v3;

          v11 = 0;
          if ((v9 & 0xC000000000000001) != 0)
          {
LABEL_7:
            v8 = sub_35F8D4(v11, v9);
            goto LABEL_10;
          }

          while (1)
          {
            if (v11 >= *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_23;
            }

            v8 = *(v9 + 8 * v11 + 32);
LABEL_10:
            v7 = v8;
            v3 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              break;
            }

            swift_getObjectType();
            v12 = swift_conformsToProtocol2();
            if (v12 && v7)
            {
              v13 = v12;
              ObjectType = swift_getObjectType();
              LOBYTE(v13) = (*(v13 + 8))(ObjectType, v13);

              if (v13)
              {
                LOBYTE(v3) = v23;
                v15 = v23;
                goto LABEL_21;
              }

              if (v3 == i)
              {
                goto LABEL_19;
              }
            }

            else
            {

              if (v3 == i)
              {
LABEL_19:
                v15 = 0;
                LOBYTE(v3) = v23;
LABEL_21:

                v8 = v21;
                v7 = v22;
                goto LABEL_26;
              }
            }

            ++v11;
            if ((v9 & 0xC000000000000001) != 0)
            {
              goto LABEL_7;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          v16 = v8;
          i = sub_ABB060();
        }

        v15 = 0;
LABEL_26:
        v17 = v15 & 1;
        v18 = v8;
        [v8 setEnabled:{v17, v21, v22}];

        v7 = v18;
      }
    }

    v19 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_nextStepButton;
    swift_beginAccess();
    if (*(v4 + v19))
    {
      v20 = sub_17B6FC();
      [v20 setEnabled:v3 & 1];
    }
  }
}

void sub_180140()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_pageHeaderContentViewController) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_promotionalParallaxViewController) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController____lazy_storage___impressionsTracker) = 0;
  v1 = OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_viewModelKindToViewController;
  *(v0 + v1) = sub_96934(_swiftEmptyArrayStorage);
  v2 = OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_pinnedButtonContainerView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for PinnedButtonContainerView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController____lazy_storage___nextStepButton) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController____lazy_storage___cancelStepButton) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_isUpdating) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_nonEditingBarButtonItemsFinalized) = 0;
  sub_ABAFD0();
  __break(1u);
}

id sub_180240()
{
  v0 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v0 setNumberOfLines:0];
  [v0 setTextAlignment:1];
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  [v0 setTextColor:qword_E718C8];
  [v0 setAdjustsFontForContentSizeCategory:1];
  sub_13C80(0, &qword_DE6EE0);
  v1 = sub_ABA560();
  [v0 setFont:v1];

  return v0;
}

void sub_180354()
{
  v0 = sub_AB4BC0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = Logger.jsBridge.unsafeMutableAddressor();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_AB4BA0();
  v6 = sub_AB9F40();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_425E68(0xD000000000000035, 0x8000000000B546E0, &v10);
    _os_log_impl(&dword_0, v5, v6, "Attempted to perform %s within Legacy Music, outside a picker environment, which is not unexpected.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  (*(v1 + 8))(v3, v0);
}

void sub_180508()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_headerText);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_footerText);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_embeddedChildViewController) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_buttons) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_headerLabel) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_B95EA7AEEA306FB0B77EC0083A5C6FD425PinnedButtonContainerView_footerLabel) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_1805E8()
{

  return swift_deallocObject();
}

void sub_180630()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  sub_17E180((*(v3 + 16) & 1) == 0, v1, v2);
}

uint64_t sub_180690()
{

  return swift_deallocObject();
}

uint64_t sub_180714()
{

  return swift_deallocObject();
}

uint64_t sub_180778()
{

  return swift_deallocObject();
}

uint64_t sub_1807CC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18080C()
{

  v1 = *(v0 + 64);
  if (v1 != &dword_0 + 1)
  {
  }

  return swift_deallocObject();
}

char *sub_1808B4()
{
  *&v0[OBJC_IVAR____TtC16MusicApplication29ApplicationMessageCoordinator_messageCoordinator] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication29ApplicationMessageCoordinator_scriptingApplicationMessageGroup] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication29ApplicationMessageCoordinator_applicationContextProvider] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication29ApplicationMessageCoordinator_networkConnectivityObserver] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication29ApplicationMessageCoordinator_libraryBannerOptInDidChangeNotificationObserver] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication29ApplicationMessageCoordinator_scriptingBridgeDidFailInitializationDidChangeObserver] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication29ApplicationMessageCoordinator_playEndTotalDurationEventNotificationObserver] = 0;
  v29.receiver = v0;
  v29.super_class = type metadata accessor for ApplicationMessageCoordinator();
  v1 = objc_msgSendSuper2(&v29, "init");
  v2 = [objc_opt_self() standardUserDefaults];
  sub_AFE98();
  sub_36A48();
  NSUserDefaults.subscript.getter(&v27);
  if (v28)
  {
    if (swift_dynamicCast())
    {

      return v1;
    }
  }

  else
  {
    sub_9BC10(&v27);
  }

  v3 = [objc_allocWithZone(IAMMessageCoordinator) init];
  v4 = *&v1[OBJC_IVAR____TtC16MusicApplication29ApplicationMessageCoordinator_messageCoordinator];
  *&v1[OBJC_IVAR____TtC16MusicApplication29ApplicationMessageCoordinator_messageCoordinator] = v3;
  v5 = v3;

  v6 = [objc_allocWithZone(type metadata accessor for MusicApplicationContextProvider()) init];
  v7 = *&v1[OBJC_IVAR____TtC16MusicApplication29ApplicationMessageCoordinator_applicationContextProvider];
  *&v1[OBJC_IVAR____TtC16MusicApplication29ApplicationMessageCoordinator_applicationContextProvider] = v6;

  v8 = [objc_allocWithZone(type metadata accessor for JSApplicationMessageGroup()) init];
  v9 = *&v1[OBJC_IVAR____TtC16MusicApplication29ApplicationMessageCoordinator_scriptingApplicationMessageGroup];
  *&v1[OBJC_IVAR____TtC16MusicApplication29ApplicationMessageCoordinator_scriptingApplicationMessageGroup] = v8;
  v26 = v8;

  v10 = v1;
  [v5 setMetricsDelegate:v10];
  v11 = JSApplicationMessageTarget.reporter.unsafeMutableAddressor();
  swift_beginAccess();
  v11[1] = &off_CFDC80;
  swift_unknownObjectWeakAssign();
  v12 = JSBridge.shared.unsafeMutableAddressor();
  v13 = *v12;
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = *&stru_B8.segname[(swift_isaMask & *v13) + 16];
  v16 = v13;

  v15(sub_182278, v14);

  v17 = *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor();
  v18 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();

  *&v10[OBJC_IVAR____TtC16MusicApplication29ApplicationMessageCoordinator_networkConnectivityObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, v18, 1, 1, sub_182280, v19);

  v20 = *JSBridge.didFailInitializationDidChange.unsafeMutableAddressor();
  v21 = *v12;
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = v20;
  v24 = v21;

  swift_allocObject();
  *&v10[OBJC_IVAR____TtC16MusicApplication29ApplicationMessageCoordinator_scriptingBridgeDidFailInitializationDidChangeObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v23, v21, 1, 1, sub_1822A8, v22);

  sub_1817F8();
  sub_181310();

  return v1;
}

uint64_t sub_180CCC(uint64_t *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *a1;
    v5 = *a1 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_scriptingMessageDelegate;
    swift_beginAccess();
    *(v5 + 8) = &off_CFDC50;
    swift_unknownObjectWeakAssign();
    v6 = v4 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_globalMessagePresentationDelegate;
    swift_beginAccess();
    *(v6 + 8) = &off_CFDC40;
    swift_unknownObjectWeakAssign();
    v7 = *JSCapabilitiesController.Notifications.libraryBannerOptInDidChangeNotification.unsafeMutableAddressor();
    v8 = a1[2];
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v10 = v7;
    v11 = v8;
    *&v3[OBJC_IVAR____TtC16MusicApplication29ApplicationMessageCoordinator_libraryBannerOptInDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v10, v8, 1, 1, sub_1822D0, v9);
  }

  return result;
}

void sub_180E48()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC16MusicApplication29ApplicationMessageCoordinator_messageCoordinator);
    if (v2)
    {
      v3 = v2;
      sub_11BA4(&off_CF03B0);
      swift_arrayDestroy();
      isa = sub_AB9B30().super.isa;

      [v3 reportApplicationContextPropertiesDidChange:isa];

      v1 = isa;
    }
  }
}

void sub_180F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC16MusicApplication29ApplicationMessageCoordinator_messageCoordinator);
    if (v8)
    {
      v9 = v8;
      sub_11BA4(a3);
      sub_E17A4(a4);
      isa = sub_AB9B30().super.isa;

      [v9 reportApplicationContextPropertiesDidChange:isa];

      v7 = isa;
    }
  }
}

id sub_181020()
{
  result = [objc_allocWithZone(type metadata accessor for ApplicationMessageCoordinator()) init];
  qword_E71090 = result;
  return result;
}

void sub_181050(char a1)
{
  v2 = sub_AB4BC0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *OS_os_log.scripting.unsafeMutableAddressor();
  sub_AB4BD0();
  v7 = sub_AB4BA0();
  v8 = sub_AB9F50();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&dword_0, v7, v8, "[ApplicationMessageCoordinator] will trigger message presentation: %{BOOL}d", v9, 8u);
  }

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_1811AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_181200(uint64_t a1)
{
  v2 = *JSMetricsController.shared.unsafeMutableAddressor();
  v3 = sub_3E8814(a1);
  JSMetricsController.recordNativeEvent(_:)(v3);
}

void sub_181310()
{
  v1 = objc_allocWithZone(IAMCountableEvent);
  v2 = sub_AB9260();
  v10 = [v1 initWithName:v2];

  v3 = *&v0[OBJC_IVAR____TtC16MusicApplication29ApplicationMessageCoordinator_messageCoordinator];
  if (v3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    aBlock[4] = sub_1821F4;
    aBlock[5] = v4;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181750;
    aBlock[3] = &block_descriptor_43_1;
    v5 = _Block_copy(aBlock);
    v6 = v3;
    v7 = v10;
    v8 = v0;

    v9 = [v6 beginObservingTriggerEvent:v7 withHandler:v5];

    _Block_release(v5);
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1814AC(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(v5) = a1;
  v6 = sub_AB4BC0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    swift_errorRetain();
    v10 = *OS_os_log.scripting.unsafeMutableAddressor();
    sub_AB4BD0();
    swift_errorRetain();
    v11 = sub_AB4BA0();
    v12 = sub_AB9F30();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      HIDWORD(v23) = v5;
      v5 = v13;
      v14 = swift_slowAlloc();
      v24 = v14;
      *v5 = 136315138;
      swift_getErrorValue();
      v15 = sub_ABB520();
      v17 = sub_425E68(v15, v16, &v24);

      *(v5 + 4) = v17;
      _os_log_impl(&dword_0, v11, v12, "[ApplicationMessageCoordinator] Unable to observe launch event: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);

      LOBYTE(v5) = BYTE4(v23);

      (*(v7 + 8))(v9, v6);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }
  }

  v18 = *JSBridge.shared.unsafeMutableAddressor();
  v19 = swift_allocObject();
  *(v19 + 16) = v5 & 1;
  v20 = *&stru_B8.segname[(swift_isaMask & *v18) + 16];
  v21 = v18;
  v20(sub_18220C, v19);
}

uint64_t sub_181750(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = sub_AB92A0();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a4;
  v6(a2, v7, v9, a4);
}

void sub_1817F8()
{
  v1 = OBJC_IVAR____TtC16MusicApplication29ApplicationMessageCoordinator_playEndTotalDurationEventNotificationObserver;
  if (!*(v0 + OBJC_IVAR____TtC16MusicApplication29ApplicationMessageCoordinator_playEndTotalDurationEventNotificationObserver))
  {
    v2 = MPCPlayActivityUtilitiesPlayEndNotification;
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    *(v0 + v1) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v2, 0, 1, 1, sub_1821B4, v3);
  }
}

void sub_1818E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_18193C();
  }
}

void sub_18193C()
{
  v1 = v0;
  v2 = sub_AB92A0();
  v3 = sub_AB2BC0();
  if (v3)
  {
    v4 = v3;
    sub_ABAD10();
    if (*(v4 + 16) && (v5 = sub_2EC004(v12), (v6 & 1) != 0))
    {
      sub_808B0(*(v4 + 56) + 32 * v5, v13);
      sub_8085C(v12);
      if (swift_dynamicCast())
      {
        if (v2)
        {
          v7 = *(v1 + OBJC_IVAR____TtC16MusicApplication29ApplicationMessageCoordinator_messageCoordinator);
          if (v7)
          {
            v8 = objc_allocWithZone(IAMCountableEvent);
            v9 = v7;
            v10 = sub_AB9260();
            v11 = [v8 initWithName:v10];

            [v9 receiveEvent:v11];

            return;
          }
        }
      }
    }

    else
    {
      sub_8085C(v12);
    }
  }

  else
  {
  }
}

id sub_181ADC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ApplicationMessageCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_181BD0(int a1, int a2, id a3, SEL *a4)
{
  v6 = [a3 targetIdentifier];
  if (!v6)
  {
    sub_AB92A0();
    v10 = sub_AB9260();

    v6 = v10;
  }

  v7 = *(v4 + OBJC_IVAR____TtC16MusicApplication29ApplicationMessageCoordinator_messageCoordinator);
  if (v7)
  {
    v11 = v6;
    v8 = v7;
    v9 = sub_AB9260();
    [v8 *a4];

    v6 = v11;
  }
}

void sub_181CA4(int a1, int a2, int a3, int a4, id a5)
{
  v6 = [a5 targetIdentifier];
  if (!v6)
  {
    sub_AB92A0();
    v11 = sub_AB9260();

    v6 = v11;
  }

  v7 = *(v5 + OBJC_IVAR____TtC16MusicApplication29ApplicationMessageCoordinator_messageCoordinator);
  if (v7)
  {
    v12 = v6;
    v8 = v7;
    v9 = sub_AB9260();
    v10 = sub_AB9260();
    [v8 reportMessageWithIdentifier:v9 actionWasPerformedWithIdentifier:v10 fromTargetWithIdentifier:v12];

    v6 = v12;
  }
}

void sub_181E2C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication29ApplicationMessageCoordinator_scriptingApplicationMessageGroup);
  if (v1)
  {
    v2 = v1;
    v3 = sub_AB9260();
    v4 = sub_AB9260();
    [v2 reportModalMessageWithIdentifier:v3 actionWasPerformedWithIdentifier:v4];
  }
}

void sub_181F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *(v5 + OBJC_IVAR____TtC16MusicApplication29ApplicationMessageCoordinator_scriptingApplicationMessageGroup);
  if (v6)
  {
    v8 = v6;
    v9 = sub_AB9260();
    [v8 *a5];
  }
}

void sub_181F9C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication29ApplicationMessageCoordinator_scriptingApplicationMessageGroup);
  if (v1)
  {
    v2 = objc_allocWithZone(IAMFigaroEvent);
    v3 = v1;
    isa = sub_AB8FD0().super.isa;
    v5 = [v2 initWithFigaroEventProperties:isa];

    [v3 receiveEvent:v5];
  }
}

void sub_182078()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication29ApplicationMessageCoordinator_messageCoordinator);
  if (v1)
  {
    v2 = v1;
    v3 = sub_AB9260();
    v5[4] = sub_181050;
    v5[5] = 0;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_1811AC;
    v5[3] = &block_descriptor_52;
    v4 = _Block_copy(v5);
    [v2 triggerPresentationForMessageWithIdentifier:v3 completionHandler:v4];
    _Block_release(v4);
  }
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_18217C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1821BC()
{

  return swift_deallocObject();
}

uint64_t sub_182238()
{

  return swift_deallocObject();
}

char *TitleSectionHeaderView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_forSizing] = 0;
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_supertitle];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_title];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_titleMaximumNumberOfLines] = 2;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_subtitle];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_systemStyleButtonAttributedTitle];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = NSFontAttributeName;
  v14 = objc_opt_self();
  v15 = NSFontAttributeName;
  v16 = [v14 preferredFontForTextStyle:UIFontTextStyleBody];
  *(inited + 64) = sub_13C80(0, &qword_DE6EE0);
  *(inited + 40) = v16;
  sub_96EB8(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &qword_DE6EE8);
  v17 = objc_allocWithZone(NSAttributedString);
  v18 = sub_AB9260();
  type metadata accessor for Key(0);
  sub_3FB3C();
  isa = sub_AB8FD0().super.isa;

  v20 = [v17 initWithString:v18 attributes:isa];

  *v12 = 0;
  *(v12 + 1) = 0xE000000000000000;
  v12[16] = 0;
  *(v12 + 3) = v20;
  *&v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_systemStyleButtonPossibleAttributedTitles] = _swiftEmptyArrayStorage;
  v21 = &v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_accessoryButtonHandler];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textTappedHandler];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_compactLayoutStyle];
  *v23 = xmmword_AF7C40;
  v23[16] = 0;
  v24 = &v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_regularLayoutStyle];
  *v24 = xmmword_AF8610;
  v24[16] = 1;
  *&v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_imageArtworkCatalog] = 0;
  v25 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_imageArtworkCornerTreatment;
  v26 = sub_ABA680();
  (*(*(v26 - 8) + 56))(&v4[v25], 1, 1, v26);
  v27 = &v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_artworkPlaceholder];
  v28 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v30 = *v28;
  v29 = v28[1];
  v31 = v28[2];
  v32 = v28[3];
  v33 = *(v28 + 2);
  *v27 = *v28;
  *(v27 + 1) = v29;
  *(v27 + 2) = v31;
  *(v27 + 3) = v32;
  *(v27 + 2) = v33;
  *&v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_additionalContentView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_additionalContentViewReservedWidth] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView__currentPreferredHeight] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_topHairlineLeadingAlignment] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_topHairlineTrailingAlignment] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_isTopHairlineVisible] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_bottomHairlineLeadingAlignment] = 1;
  v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_bottomHairlineTrailingAlignment] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_isBottomHairlineVisible] = 0;
  v34 = &v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_layoutInsets];
  *v34 = 0u;
  *(v34 + 1) = 0u;
  v34[32] = 1;
  *&v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textDrawingCache] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_artworkCachingReference] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView____lazy_storage___artworkComponent] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_topHairlineView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_bottomHairlineView] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView__isTopHairlineVisible] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView__isBottomHairlineVisible] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_subtitleTextDrawingView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_supertitleTextDrawingView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_systemStyleButton] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_tapGestureRecognizerHandler] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_tapGestureRecognizer] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_floatingBackgroundView] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_floating] = 0;
  v35 = &v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_layoutStyle];
  *v35 = xmmword_AF7C40;
  v35[16] = 0;
  v36 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_chevronImageView;
  v37 = v31;
  v38 = v32;
  v39 = v30;
  v40 = v29;
  *&v4[v36] = _s16MusicApplication22TitleSectionHeaderViewC012chevronImageF033_1D932DF44907200D5208B83E703ABC72LLSo07UIImageF0Cvpfi_0();
  *&v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_externalBackgroundColor] = 0;
  v41 = &v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_layoutInvalidationHandler];
  *v41 = 0;
  v41[1] = 0;
  v42 = sub_189D88(*v35, *(v35 + 1), v35[16]);
  v43 = &v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents];
  *v43 = v42;
  v43[1] = v44;
  v43[2] = v45;
  v43[3] = v46;
  type metadata accessor for TextDrawing.View();
  *&v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_titleTextDrawingView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v51.receiver = v4;
  v51.super_class = type metadata accessor for TitleSectionHeaderView();
  v47 = objc_msgSendSuper2(&v51, "initWithFrame:", a1, a2, a3, a4);
  v48 = [v47 layer];
  [v48 setAllowsGroupOpacity:0];

  v49 = [v47 layer];
  [v49 setAllowsGroupBlending:0];

  [v47 addSubview:*&v47[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_titleTextDrawingView]];
  if (qword_DE6C58 != -1)
  {
    swift_once();
  }

  [v47 setBackgroundColor:{qword_E71898, 0x4034000000000000, 0x4020000000000000}];

  return v47;
}

UICollectionViewLayoutAttributes __swiftcall TitleSectionHeaderView.preferredLayoutAttributesFitting(_:)(UICollectionViewLayoutAttributes a1)
{
  v1 = sub_18B220(a1.super.isa);

  return v1;
}

uint64_t TitleSectionHeaderView.forSizing.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_forSizing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TitleSectionHeaderView.forSizing.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_forSizing;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_182B30()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents];
  v3 = &v1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_supertitle];
  swift_beginAccess();

  v4 = String.trim()();

  swift_beginAccess();
  v2[7] = v4;

  sub_2EB704();
  v5 = *(v3 + 1);
  v6 = *v3 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v5) & 0xF;
  }

  v7 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_supertitleTextDrawingView;
  v8 = *&v1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_supertitleTextDrawingView];
  if (!v6)
  {
    if (v8)
    {
      [v8 removeFromSuperview];
      v11 = *&v1[v7];
    }

    else
    {
      v11 = 0;
    }

    *&v1[v7] = 0;
    goto LABEL_10;
  }

  if (!v8)
  {
    type metadata accessor for TextDrawing.View();
    v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v10 = *&v1[v7];
    *&v1[v7] = v9;
    v11 = v9;

    [v1 addSubview:v11];
LABEL_10:
  }

  return [v1 setNeedsLayout];
}

uint64_t (*TitleSectionHeaderView.supertitle.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_182CE4;
}

id TitleSectionHeaderView.title.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = &v2[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_title];
  swift_beginAccess();
  *v6 = a1;
  *(v6 + 1) = a2;

  v7 = *&v2[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 8];
  v8 = String.trim()();

  swift_beginAccess();
  v7[7] = v8;

  sub_2EB704();
  return [v3 setNeedsLayout];
}

void (*TitleSectionHeaderView.title.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_title;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_182F70;
}

void sub_182F70(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *&v4[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 8];

    v6 = String.trim()();

    swift_beginAccess();
    v5[7] = v6;

    sub_2EB704();
    [v4 setNeedsLayout];
  }

  free(v3);
}

uint64_t TitleSectionHeaderView.titleMaximumNumberOfLines.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_titleMaximumNumberOfLines;
  swift_beginAccess();
  return *(v0 + v1);
}

id TitleSectionHeaderView.titleMaximumNumberOfLines.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_titleMaximumNumberOfLines;
  result = swift_beginAccess();
  v5 = *&v1[v3];
  *&v1[v3] = a1;
  if (v5 != a1)
  {
    v6 = *&v1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 8];
    v13 = *&v1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents];
    v7 = *&v1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 16];
    v8 = *&v1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_layoutStyle];
    v9 = *&v1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_layoutStyle + 8];
    v10 = v1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_layoutStyle + 16];
    swift_beginAccess();
    v11 = *&v1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_supertitleTextDrawingView] != 0;
    v12 = *&v1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_subtitleTextDrawingView] != 0;

    sub_189794(v8, v9, v10, a1, v11, v12, v13, v6, v7);

    return [v1 setNeedsLayout];
  }

  return result;
}

void (*TitleSectionHeaderView.titleMaximumNumberOfLines.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_titleMaximumNumberOfLines;
  *(v3 + 56) = v1;
  *(v3 + 64) = v5;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v5);
  return sub_183244;
}

void sub_183244(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    TitleSectionHeaderView.titleMaximumNumberOfLines.setter(*(*a1 + 48));
  }

  else
  {
    v5 = v2[7];
    v4 = v2[8];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v6 != v3)
    {
      v7 = v2[7];
      v14 = *&v7[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 8];
      v15 = *&v7[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents];
      v8 = *&v7[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 16];
      v9 = *&v7[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_layoutStyle];
      v10 = *&v7[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_layoutStyle + 8];
      v11 = v7[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_layoutStyle + 16];
      swift_beginAccess();
      v12 = *&v7[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_supertitleTextDrawingView] != 0;
      v13 = *&v7[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_subtitleTextDrawingView] != 0;

      sub_189794(v9, v10, v11, v3, v12, v13, v15, v14, v8);

      [v7 setNeedsLayout];
    }
  }

  free(v2);
}

void sub_1833C8(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t))
{
  v9 = sub_AB92A0();
  v11 = v10;
  v12 = &a1[*a4];
  swift_beginAccess();
  *v12 = v9;
  v12[1] = v11;
  v13 = a3;
  v14 = a1;

  a5(v15);
}

uint64_t sub_183490(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  *v8 = a1;
  v8[1] = a2;

  return a4(v9);
}

id sub_183500()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 16];
  v3 = &v1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_subtitle];
  swift_beginAccess();

  v4 = String.trim()();

  swift_beginAccess();
  v2[7] = v4;

  sub_2EB704();
  v5 = *(v3 + 1);
  v6 = *v3 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v5) & 0xF;
  }

  v7 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_subtitleTextDrawingView;
  v8 = *&v1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_subtitleTextDrawingView];
  if (!v6)
  {
    if (v8)
    {
      [v8 removeFromSuperview];
      v11 = *&v1[v7];
    }

    else
    {
      v11 = 0;
    }

    *&v1[v7] = 0;
    goto LABEL_10;
  }

  if (!v8)
  {
    type metadata accessor for TextDrawing.View();
    v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v10 = *&v1[v7];
    *&v1[v7] = v9;
    v11 = v9;

    [v1 addSubview:v11];
LABEL_10:
  }

  return [v1 setNeedsLayout];
}

uint64_t (*TitleSectionHeaderView.subtitle.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1836B8;
}

uint64_t TitleSectionHeaderView.systemStyleButtonTitle.setter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_systemStyleButtonPossibleAttributedTitles;
  swift_beginAccess();
  v37 = v2;
  v5 = *(v2 + v4);
  v6 = *(v5 + 16);

  v8 = 0;
  v9 = -v6;
  v38 = _swiftEmptyArrayStorage;
LABEL_2:
  v10 = v8 + 1;
  v11 = 32 * v8;
  while (v9 + v10 != 1)
  {
    v8 = v10;
    if ((v10 - 1) >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_23;
    }

    v13 = *(v5 + v11 + 32);
    v12 = *(v5 + v11 + 40);
    v14 = *(v5 + v11 + 48);
    v15 = *(v5 + v11 + 56);
    if (v13 == a1 && v12 == a2)
    {
      v13 = a1;
LABEL_12:

      v17 = v15;
      v18 = v38;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_6D620(0, v38[2] + 1, 1);
        v18 = v38;
      }

      v20 = v18[2];
      v19 = v18[3];
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        result = sub_6D620((v19 > 1), v20 + 1, 1);
        v21 = v20 + 1;
        v18 = v38;
      }

      v18[2] = v21;
      v38 = v18;
      v22 = &v18[4 * v20];
      v22[4] = v13;
      v22[5] = v12;
      *(v22 + 48) = v14;
      v22[7] = v17;
      goto LABEL_2;
    }

    ++v10;
    v11 += 32;
    result = sub_ABB3C0();
    if (result)
    {
      goto LABEL_12;
    }
  }

  if (!v38[2])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = NSFontAttributeName;
    v28 = objc_opt_self();
    v23 = a2;

    v29 = NSFontAttributeName;
    v30 = [v28 preferredFontForTextStyle:UIFontTextStyleBody];
    *(inited + 64) = sub_13C80(0, &qword_DE6EE0);
    *(inited + 40) = v30;
    sub_96EB8(inited);
    swift_setDeallocating();
    sub_12E1C(inited + 32, &qword_DE6EE8);
    v31 = objc_allocWithZone(NSAttributedString);
    v32 = sub_AB9260();

    type metadata accessor for Key(0);
    sub_3FB3C();
    isa = sub_AB8FD0().super.isa;

    v26 = [v31 initWithString:v32 attributes:isa];

    v24 = 0;
    goto LABEL_21;
  }

  if (v38[2])
  {
    a1 = v38[4];
    v23 = v38[5];
    v24 = *(v38 + 48);
    v25 = v38[7];

    v26 = v25;

LABEL_21:
    v34 = v37 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_systemStyleButtonAttributedTitle;
    swift_beginAccess();
    v35 = *(v34 + 24);
    *v34 = a1;
    *(v34 + 8) = v23;
    *(v34 + 16) = v24;
    *(v34 + 24) = v26;
    v36 = v26;
    swift_bridgeObjectRetain_n();

    sub_183C1C();

    return swift_bridgeObjectRelease_n();
  }

LABEL_23:
  __break(1u);
  return result;
}

MusicApplication::TitleSectionHeaderView::SystemButtonAttributedTitle __swiftcall TitleSectionHeaderView.SystemButtonAttributedTitle.init(text:style:)(Swift::String text, MusicApplication::TitleSectionHeaderView::SystemButtonAttributedTitle::Style style)
{
  object = text._object;
  countAndFlagsBits = text._countAndFlagsBits;

  v5 = sub_18B370(countAndFlagsBits, object, style & 1);

  v6 = style & 1;
  v7 = countAndFlagsBits;
  v8 = object;
  v9 = v5;
  result.attributedString.super.isa = v9;
  result.text._object = v8;
  result.text._countAndFlagsBits = v7;
  result.style = v6;
  return result;
}

void (*TitleSectionHeaderView.systemStyleButtonTitle.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = (v1 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_systemStyleButtonAttributedTitle);
  swift_beginAccess();
  v6 = v5[1];
  *(v4 + 24) = *v5;
  *(v4 + 32) = v6;

  return sub_183BA4;
}

void sub_183BA4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    TitleSectionHeaderView.systemStyleButtonTitle.setter(v3, v4);
  }

  else
  {
    TitleSectionHeaderView.systemStyleButtonTitle.setter(*(*a1 + 24), v4);
  }

  free(v2);
}

id sub_183C1C()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_systemStyleButtonAttributedTitle];
  swift_beginAccess();
  v3 = *(v2 + 1);
  v4 = *v2 & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  v5 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_systemStyleButton;
  v6 = *&v0[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_systemStyleButton];
  if (v4)
  {
    if (v6 || (v7 = objc_opt_self(), v8 = [v7 buttonWithType:1], objc_msgSend(v7, "easyTouchDefaultHitRectInsets"), objc_msgSend(v8, "setHitRectInsets:"), objc_msgSend(v8, "setContentHorizontalAlignment:", 2), v9 = swift_allocObject(), swift_unknownObjectWeakInit(), v10 = swift_allocObject(), *(v10 + 16) = v9, *(v10 + 24) = v8, v11 = sub_13C80(0, &qword_E0BC00), v12 = v8, ControlEventHandling<>.on(_:handler:)(64, sub_18BC20, v10, v11), , objc_msgSend(v1, "addSubview:", v12), v13 = *&v1[v5], *&v1[v5] = v12, v13, (v6 = *&v1[v5]) != 0))
    {
      [v6 setAttributedTitle:*(v2 + 3) forState:0];
    }
  }

  else if (v6)
  {
    v14 = v6;
    [v14 removeFromSuperview];
    v15 = *&v1[v5];
    *&v1[v5] = 0;
  }

  return [v1 setNeedsLayout];
}

void sub_183E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = (Strong + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_accessoryButtonHandler);
    swift_beginAccess();
    v7 = *v6;
    if (*v6)
    {

      v7(v5, a3);
      sub_17654(v7);
    }
  }
}

uint64_t TitleSectionHeaderView.systemStyleButtonAttributedTitle.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_systemStyleButtonAttributedTitle);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[3];

  v4 = v3;
  return v2;
}

uint64_t TitleSectionHeaderView.systemStyleButtonAttributedTitle.setter(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v9 = v4 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_systemStyleButtonAttributedTitle;
  swift_beginAccess();
  v10 = *(v9 + 24);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3 & 1;
  *(v9 + 24) = a4;

  v11 = a4;

  sub_183C1C();
}

uint64_t (*TitleSectionHeaderView.systemStyleButtonAttributedTitle.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_184044;
}

void *TitleSectionHeaderView.systemStyleButtonPossibleTitles.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_systemStyleButtonPossibleAttributedTitles;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (v3)
  {

    sub_6D5A0(0, v3, 0);
    v4 = (v2 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];

      if (v7 >= v8 >> 1)
      {
        sub_6D5A0((v8 > 1), v7 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v7 + 1;
      v9 = &_swiftEmptyArrayStorage[2 * v7];
      v9[4] = v6;
      v9[5] = v5;
      v4 += 4;
      --v3;
    }

    while (v3);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t TitleSectionHeaderView.systemStyleButtonPossibleTitles.setter(uint64_t a1)
{
  sub_18B558(a1);
}

uint64_t (*TitleSectionHeaderView.systemStyleButtonPossibleTitles.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = TitleSectionHeaderView.systemStyleButtonPossibleTitles.getter();
  return sub_1841E0;
}

uint64_t sub_1841E0(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    sub_18B558(v3);
  }

  else
  {
    sub_18B558(v2);
  }
}

uint64_t TitleSectionHeaderView.systemStyleButtonPossibleAttributedTitles.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_systemStyleButtonPossibleAttributedTitles;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t TitleSectionHeaderView.accessoryButtonHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_accessoryButtonHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_17654(v6);
}

id sub_184414()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textTappedHandler;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_chevronImageView;
  v4 = *&v0[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_chevronImageView];
  if (v2)
  {
    if (([v4 isDescendantOfView:v0] & 1) == 0)
    {
      [v0 addSubview:*&v0[v3]];
    }

    v5 = [objc_allocWithZone(UITapGestureRecognizer) init];
    v6 = *&v0[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_tapGestureRecognizer];
    *&v0[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_tapGestureRecognizer] = v5;
    v7 = v5;
    sub_188AD0(v6);
  }

  else
  {
    [v4 removeFromSuperview];
    v6 = *&v0[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_tapGestureRecognizer];
    *&v0[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_tapGestureRecognizer] = 0;
    sub_188AD0(v6);
  }

  return [v0 setNeedsLayout];
}

uint64_t sub_184530(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t TitleSectionHeaderView.textTappedHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textTappedHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  sub_307CC(a1);
  sub_17654(v6);
  sub_184414();
  return sub_17654(a1);
}

uint64_t (*TitleSectionHeaderView.textTappedHandler.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_184688;
}

void sub_1846A0()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 == &dword_0 + 1)
  {
    v3 = &v0[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_compactLayoutStyle];
    swift_beginAccess();
    v4 = *v3;
    v5 = *(v3 + 1);
    LOBYTE(v3) = v3[16];
    v6 = &v0[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_layoutStyle];
    *v6 = v4;
    *(v6 + 1) = v5;
    v6[16] = v3;
    v7 = *&v0[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 8];
    v13 = *&v0[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents];
    v8 = *&v0[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 16];
    v9 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_titleMaximumNumberOfLines;
    swift_beginAccess();
    v10 = *&v0[v9];
    swift_beginAccess();
    v11 = *&v0[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_supertitleTextDrawingView] != 0;
    v12 = *&v0[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_subtitleTextDrawingView] != 0;

    sub_189794(v4, v5, v3, v10, v11, v12, v13, v7, v8);

    [v0 setNeedsLayout];
  }
}

uint64_t (*TitleSectionHeaderView.compactLayoutStyle.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1848B4;
}

void sub_1848CC()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 == &dword_0 + 2)
  {
    v3 = &v0[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_regularLayoutStyle];
    swift_beginAccess();
    v4 = *v3;
    v5 = *(v3 + 1);
    LOBYTE(v3) = v3[16];
    v6 = &v0[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_layoutStyle];
    *v6 = v4;
    *(v6 + 1) = v5;
    v6[16] = v3;
    v7 = *&v0[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 8];
    v13 = *&v0[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents];
    v8 = *&v0[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 16];
    v9 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_titleMaximumNumberOfLines;
    swift_beginAccess();
    v10 = *&v0[v9];
    swift_beginAccess();
    v11 = *&v0[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_supertitleTextDrawingView] != 0;
    v12 = *&v0[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_subtitleTextDrawingView] != 0;

    sub_189794(v4, v5, v3, v10, v11, v12, v13, v7, v8);

    [v0 setNeedsLayout];
  }
}

uint64_t sub_184A5C(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t sub_184AC4(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t (*a5)(uint64_t))
{
  v10 = v5 + *a4;
  v11 = swift_beginAccess();
  *v10 = a1;
  *(v10 + 8) = a2;
  *(v10 + 16) = a3 & 1;
  return a5(v11);
}

uint64_t (*TitleSectionHeaderView.regularLayoutStyle.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_184B9C;
}

void sub_184BB4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_imageArtworkCatalog;
  swift_beginAccess();
  v3 = *&v0[v2];
  v4 = sub_188A28();
  if (v3)
  {
    v5 = *&v0[v2];
    v6 = v5;
    sub_74EA4(v5);

    v7 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView____lazy_storage___artworkComponent;
    v8 = *&v0[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView____lazy_storage___artworkComponent];
    v9 = *&v1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_artworkPlaceholder];
    v10 = *&v1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_artworkPlaceholder + 8];
    v11 = *&v1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_artworkPlaceholder + 16];
    v12 = *&v1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_artworkPlaceholder + 24];
    v13 = *&v1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_artworkPlaceholder + 32];
    v14 = *(v8 + 168);
    v30[0] = *(v8 + 152);
    v30[1] = v14;
    v30[2] = *(v8 + 184);
    *(v8 + 152) = v9;
    *(v8 + 160) = v10;
    *(v8 + 168) = v11;
    *(v8 + 176) = v12;
    *(v8 + 184) = v13;
    v15 = v11;
    v16 = v12;
    v17 = v9;
    v18 = v10;
    v19 = v15;
    v20 = v16;

    v21 = v17;
    v22 = v18;
    sub_75948(v30);
    sub_12E1C(v30, &unk_DF8690);

    v23 = UIView.Border.artwork.unsafeMutableAddressor();
    v24 = *v23;
    v25 = *(v23 + 8);
    v26 = v23[2];
    v27 = v26;
    sub_75E64(v24, v25, v26);

    v28 = *&v1[v7];
    *(v28 + 24) = 0x70756B636F6CLL;
    *(v28 + 32) = 0xE600000000000000;

    if (([*(*&v1[v7] + 112) isDescendantOfView:v1] & 1) == 0)
    {
      [v1 addSubview:*(*&v1[v7] + 112)];
    }
  }

  else
  {
    v29 = *(v4 + 112);

    [v29 removeFromSuperview];
  }
}

void *TitleSectionHeaderView.imageArtworkCatalog.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_imageArtworkCatalog;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TitleSectionHeaderView.imageArtworkCatalog.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_imageArtworkCatalog;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_184BB4();
}

uint64_t (*TitleSectionHeaderView.imageArtworkCatalog.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_184ECC;
}

uint64_t sub_184EE4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t TitleSectionHeaderView.imageArtworkCornerTreatment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_imageArtworkCornerTreatment;
  swift_beginAccess();
  return sub_15F84(v1 + v3, a1, &unk_DFFBC0);
}

uint64_t TitleSectionHeaderView.imageArtworkCornerTreatment.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_imageArtworkCornerTreatment;
  swift_beginAccess();
  sub_8A01C(a1, v1 + v9);
  swift_endAccess();
  v10 = sub_188A28();
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
  sub_12E1C(v8, &unk_DFFBC0);
}

void (*TitleSectionHeaderView.imageArtworkCornerTreatment.modify(uint64_t *a1))(void **a1, char a2)
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

  v7 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_imageArtworkCornerTreatment;
  v4[11] = v6;
  v4[12] = v7;
  swift_beginAccess();
  return sub_185228;
}

void sub_185228(void **a1, char a2)
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
    v6 = v3[12];
    v7 = v3[9];
    v5 = v3[10];
    v8 = sub_188A28();
    sub_15F84(v7 + v6, v4, &unk_DFFBC0);
    v9 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
    swift_beginAccess();
    sub_15F84(v8 + v9, v5, &unk_DFFBC0);
    swift_beginAccess();
    sub_8A01C(v4, v8 + v9);
    swift_endAccess();
    sub_75AE8(v5);
    sub_12E1C(v5, &unk_DFFBC0);
    sub_12E1C(v4, &unk_DFFBC0);
  }

  free(v4);
  free(v5);

  free(v3);
}

uint64_t TitleSectionHeaderView.topHairlineLeadingAlignment.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_topHairlineLeadingAlignment;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*TitleSectionHeaderView.topHairlineLeadingAlignment.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_topHairlineLeadingAlignment;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_185444;
}

uint64_t TitleSectionHeaderView.topHairlineTrailingAlignment.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_topHairlineTrailingAlignment;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*TitleSectionHeaderView.topHairlineTrailingAlignment.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_topHairlineTrailingAlignment;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_18BC84;
}

uint64_t TitleSectionHeaderView.isTopHairlineVisible.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_isTopHairlineVisible;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*TitleSectionHeaderView.isTopHairlineVisible.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_isTopHairlineVisible;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_18560C;
}

uint64_t TitleSectionHeaderView.bottomHairlineLeadingAlignment.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_bottomHairlineLeadingAlignment;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*TitleSectionHeaderView.bottomHairlineLeadingAlignment.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_bottomHairlineLeadingAlignment;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_18BC84;
}

uint64_t TitleSectionHeaderView.bottomHairlineTrailingAlignment.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_bottomHairlineTrailingAlignment;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_18574C(char a1, uint64_t *a2)
{
  v4 = *a2;
  result = swift_beginAccess();
  v6 = v2[v4];
  v2[v4] = a1 & 1;
  if (v6 != (a1 & 1))
  {
    return [v2 setNeedsLayout];
  }

  return result;
}

uint64_t (*TitleSectionHeaderView.bottomHairlineTrailingAlignment.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_bottomHairlineTrailingAlignment;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_18BC84;
}

void sub_18584C(id **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = *(*a1 + 40);
  v5 = v2[v3];
  v2[v3] = v4;
  if (v4 != v5)
  {
    [v1[3] setNeedsLayout];
  }

  free(v1);
}

uint64_t TitleSectionHeaderView.isBottomHairlineVisible.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_isBottomHairlineVisible;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_185900(char a1, uint64_t *a2, void *a3)
{
  v6 = *a2;
  result = swift_beginAccess();
  v3[v6] = a1;
  if (v3[*a3] != (a1 & 1))
  {
    v3[*a3] = a1 & 1;
    return [v3 setNeedsLayout];
  }

  return result;
}

void (*TitleSectionHeaderView.isBottomHairlineVisible.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_isBottomHairlineVisible;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_185A00;
}

void sub_185A0C(void **a1, char a2, void *a3)
{
  v5 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v6 = v5[3];
    v7 = v6[v5[4]];
    if (v6[*a3] != v7)
    {
      v6[*a3] = v7;
      [v6 setNeedsLayout];
    }
  }

  free(v5);
}

__n128 TitleSectionHeaderView.layoutInsets.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_layoutInsets;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 TitleSectionHeaderView.layoutInsets.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_layoutInsets;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

Swift::Void __swiftcall TitleSectionHeaderView.layoutSubviews()()
{
  v1 = v0;
  v359.receiver = v0;
  v359.super_class = type metadata accessor for TitleSectionHeaderView();
  objc_msgSendSuper2(&v359, "layoutSubviews");
  v2 = &selRef__authenticateReturningError_;
  [v0 bounds];
  v4 = v3;
  v6 = v5;
  v345 = v7;
  v9 = v8;
  v10 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_forSizing;
  swift_beginAccess();
  v326 = v10;
  if (*(v1 + v10) == 1)
  {
    left = UIEdgeInsetsZero.left;
    right = UIEdgeInsetsZero.right;
    top = UIEdgeInsetsZero.top;
  }

  else
  {
    v13 = (v1 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_layoutInsets);
    swift_beginAccess();
    if (v13[4])
    {
      [v1 music_inheritedLayoutInsets];
      top = v14;
      left = v15;
      right = v16;
    }

    else
    {
      right = v13[3];
      left = v13[1];
      top = *v13;
    }
  }

  v17 = [v1 traitCollection];
  [v17 displayScale];
  v19 = v18;

  [v1 effectiveUserInterfaceLayoutDirection];
  v20 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_isTopHairlineVisible;
  swift_beginAccess();
  v21 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_topHairlineView;
  v22 = *(v1 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_topHairlineView);
  v23 = &selRef__authenticateReturningError_;
  v342 = v6;
  v344 = v9;
  v334 = left;
  if (*(v1 + v20) != 1)
  {
    v341 = 0.0;
    v25 = right;
    if (v22)
    {
      [v22 removeFromSuperview];
    }

    goto LABEL_21;
  }

  if (!v22)
  {
    v26 = [objc_allocWithZone(UIView) init];
    v27 = qword_DE6C70;
    v24 = v26;
    if (v27 != -1)
    {
      goto LABEL_152;
    }

    goto LABEL_12;
  }

  v24 = *(v1 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_topHairlineView);
  while (1)
  {
    v29 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_topHairlineLeadingAlignment;
    swift_beginAccess();
    if (*(v1 + v29))
    {
      v30 = v345 - left;
    }

    else
    {
      v30 = v345;
    }

    if (!*(v1 + v29))
    {
      left = v4;
    }

    v31 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_topHairlineTrailingAlignment;
    swift_beginAccess();
    v25 = right;
    if (*(v1 + v31))
    {
      v30 = v30 - right;
    }

    right = 1.0 / v19;
    v32 = v22;
    v433.origin.x = left;
    v6 = v342;
    v433.origin.y = v342;
    v433.size.width = v30;
    v433.size.height = 1.0 / v19;
    v341 = CGRectGetHeight(v433) + 0.0;
    sub_ABA490();
    [v24 setFrame:?];

LABEL_21:
    v33 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_isBottomHairlineVisible;
    swift_beginAccess();
    v34 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_bottomHairlineView;
    v35 = *(v1 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_bottomHairlineView);
    left = v4;
    v343 = v4;
    if (*(v1 + v33) == 1)
    {
      if (v35)
      {
        v36 = *(v1 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_bottomHairlineView);
      }

      else
      {
        v39 = [objc_allocWithZone(UIView) init];
        v40 = qword_DE6C70;
        v36 = v39;
        if (v40 != -1)
        {
          swift_once();
        }

        [v36 setBackgroundColor:qword_E718B0];
        [v1 addSubview:v36];
        v41 = *(v1 + v34);
        *(v1 + v34) = v36;

        v35 = 0;
      }

      v42 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_bottomHairlineLeadingAlignment;
      swift_beginAccess();
      v37 = v345;
      v4 = v334;
      if (*(v1 + v42))
      {
        right = v345 - v334;
      }

      else
      {
        right = v345;
      }

      if (*(v1 + v42))
      {
        v43 = v334;
      }

      else
      {
        v43 = left;
      }

      v44 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_bottomHairlineTrailingAlignment;
      swift_beginAccess();
      if (*(v1 + v44))
      {
        right = right - v25;
      }

      v45 = 1.0 / v19;
      v46 = v35;
      v434.origin.x = left;
      left = v342;
      v434.origin.y = v342;
      v434.size.width = v345;
      v19 = v344;
      v434.size.height = v344;
      MaxY = CGRectGetMaxY(v434);
      v435.origin.x = v43;
      v435.origin.y = v342;
      v435.size.width = right;
      v435.size.height = v45;
      v48 = MaxY - CGRectGetHeight(v435);
      v436.origin.x = v43;
      v436.origin.y = v48;
      v436.size.width = right;
      v436.size.height = v45;
      v341 = v341 + CGRectGetHeight(v436);
      v38 = v343;
      v6 = v342;
      sub_ABA490();
      [v36 setFrame:?];
    }

    else
    {
      if (v35)
      {
        [v35 removeFromSuperview];
      }

      v19 = v344;
      v37 = v345;
      v38 = v4;
      v4 = v334;
    }

    v49 = UIEdgeInsetsInsetRect(v38, v6, v37, v19, top, v4);
    v51 = v50;
    recta.origin.x = v49;
    v320 = v53;
    v321 = v52;
    recta.origin.y = v52;
    recta.size.width = v50;
    recta.size.height = v53;
    v54 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_imageArtworkCatalog;
    swift_beginAccess();
    v319 = v54;
    v55 = &selRef__authenticateReturningError_;
    v332 = v51;
    v56 = v49;
    if (*(v1 + v54))
    {
      v57 = *(v1 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_artworkCachingReference);
      v56 = v49;
      if (v57)
      {

        *(sub_188A28() + 16) = v57;

        v58 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView____lazy_storage___artworkComponent;
        v59 = *(v1 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView____lazy_storage___artworkComponent);
        v60 = *(v59 + 80);
        v61 = *(v59 + 88);
        *(v59 + 80) = vdupq_n_s64(0x4044000000000000uLL);

        sub_75614(v60, v61);

        CGRectGetMinX(recta);
        CGRectGetMinY(recta);
        [v1 v2[56]];
        sub_ABA470();
        left = v62;
        v63 = [objc_opt_self() defaultMetrics];
        [v63 scaledValueForValue:4.0];

        right = sub_76368(0, 0, 1);

        v38 = v343;
        sub_ABA490();
        sub_76B28(v64, v65, v66, v67);

        [*(*(v1 + v58) + 112) frame];
        MaxX = CGRectGetMaxX(v437);

        v56 = MaxX + 12.0 + recta.origin.x;
        v51 = recta.size.width - (MaxX + 12.0);
        recta.origin.x = v56;
        recta.size.width = v51;
      }
    }

    v357 = 0.0;
    v356 = 0.0;
    v333 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_systemStyleButton;
    v322 = v49;
    if (!*(v1 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_systemStyleButton))
    {
      y = recta.origin.y;
      height = recta.size.height;
      v79 = v51;
      Width = CGRectGetWidth(*&v56);
      v329 = 0;
      v357 = 0.0;
      v356 = 0.0;
      goto LABEL_51;
    }

    if (qword_DE6908 != -1)
    {
      swift_once();
    }

    v69 = qword_DF34F0;
    [v1 addSubview:qword_DF34F0];
    v70 = objc_opt_self();
    v71 = swift_allocObject();
    v71[2] = v1;
    v71[3] = v69;
    v71[4] = &recta;
    v71[5] = &v356;
    v72 = swift_allocObject();
    *(v72 + 16) = sub_18B8A4;
    *(v72 + 24) = v71;
    *&v427 = sub_70638;
    *(&v427 + 1) = v72;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v426 = sub_1822E0;
    *(&v426 + 1) = &block_descriptor_43_2;
    v2 = _Block_copy(&aBlock);
    v21 = v1;
    v24 = v69;

    [v70 performWithoutAnimation:v2];
    _Block_release(v2);
    LOBYTE(v70) = swift_isEscapingClosureAtFileLocation();

    if ((v70 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_152:
    swift_once();
LABEL_12:
    [v24 setBackgroundColor:qword_E718B0];
    [v1 addSubview:v24];
    v28 = *&v21[v1];
    *&v21[v1] = v24;

    v22 = 0;
  }

  [v24 removeFromSuperview];
  v73 = [v21 traitCollection];
  v74 = [v73 preferredContentSizeCategory];

  LOBYTE(v73) = sub_ABA320();
  v75 = CGRectGetWidth(recta);
  if (v73)
  {
    Width = v75;
  }

  else
  {
    Width = v75 - v356 + -16.0;
  }

  v329 = sub_18B8A4;
  v55 = &selRef__authenticateReturningError_;
LABEL_51:
  v80 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_additionalContentViewReservedWidth;
  *&aBlock = *(v1 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_additionalContentViewReservedWidth);
  *&v412 = 0;
  v330 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_additionalContentViewReservedWidth;
  if (sub_AB38D0())
  {
    Width = Width - *(v1 + v80);
  }

  v81 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textDrawingCache;
  swift_beginAccess();
  v82 = *(v1 + v81);
  v335 = 0.0;
  v337 = 0.0;
  v83 = off_DF3000;
  if (!v82)
  {
    goto LABEL_70;
  }

  v84 = *(v1 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_supertitleTextDrawingView);
  v323 = v81;
  if (v84)
  {
    v85 = *(v1 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents);
    swift_beginAccess();
    v86 = *(v85 + 112);
    v87 = *(v85 + 120);
    swift_beginAccess();
    v88 = *(v85 + 48);
    v89 = *(v85 + 64);
    v90 = *(v85 + 96);
    v423 = *(v85 + 80);
    v424 = v90;
    v422 = v89;
    v421 = v88;
    v420 = *(v85 + 32);
    v91 = recta.size.width;
    v92 = recta.size.height;
    v93 = *(v82 + 32);
    v94 = *(v82 + 40);
    v95 = *(v82 + 72);
    v315 = *(v82 + 64);
    v96 = *(v82 + 80);
    v97 = *(v82 + 88);

    v98 = v94;
    v99 = v84;

    sub_2F118(&v420, &aBlock);
    v338 = v86;
    sub_108594(v86, v87, &v420, v98, v315, v95, v96, v97, v360, v91, v92, v93);
    v403 = v362;
    v404 = v363;
    v405 = v364;
    v406 = v365;
    v399 = v360[0];
    v400 = v360[1];
    v401 = v360[2];
    v402 = v361;

    v416 = v403;
    v417 = v404;
    v418 = v405;
    v419 = v406;
    v412 = v399;
    v413 = v400;
    v414 = v401;
    v415 = v402;
    UIScreen.Dimensions.size.getter(*&v402);
    v429 = v416;
    v430 = v417;
    v431 = v418;
    v432 = v419;
    aBlock = v412;
    v426 = v413;
    v427 = v414;
    v428 = v415;
    sub_109B04(v360, &v386);
    v316 = v99;
    TextDrawing.View.textDrawingContext.setter(&aBlock);
    v100 = *(&v361 + 1);
    v101 = *(&v364 + 1);
    v314 = Width;
    if ((*(&v422 + 1) & 0x8000000000000000) != 0)
    {
      v109 = v421;
      sub_2F118(&v420, &v386);
      v110 = v109(v338, v87);
      v111 = [v110 length];
      if (v111 < 1)
      {

        v108 = *&v424;
        v23 = &selRef__authenticateReturningError_;
        v106 = v338;
        v83 = off_DF3000;
        v81 = v323;
      }

      else
      {
        v112 = v111;
        *&__dst = 0;
        *&v372[0] = 0;
        v113 = swift_allocObject();
        *(v113 + 16) = v372;
        *(v113 + 24) = &__dst;
        v114 = swift_allocObject();
        *(v114 + 16) = sub_18BC3C;
        *(v114 + 24) = v113;
        *&v388 = sub_18BC40;
        *(&v388 + 1) = v114;
        *&v386 = _NSConcreteStackBlock;
        *(&v386 + 1) = 1107296256;
        *&v387 = sub_9B8A0;
        *(&v387 + 1) = &block_descriptor_34_0;
        v115 = _Block_copy(&v386);

        [v110 enumerateAttribute:NSFontAttributeName inRange:0 options:v112 usingBlock:{0, v115}];
        _Block_release(v115);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          goto LABEL_154;
        }

        v117 = __dst;

        v23 = &selRef__authenticateReturningError_;
        v83 = off_DF3000;
        if (v117)
        {
          [v117 _scaledValueForValue:*&v424];
          v108 = v118;
        }

        else
        {

          v108 = *&v424;
        }

        v81 = v323;
        v106 = v338;
      }
    }

    else
    {
      v102 = v423;
      sub_2F118(&v420, &v386);
      v103 = v102;
      v104 = [v103 _fontAdjustedForCurrentContentSizeCategory];
      if (v104)
      {
        v105 = v104;

        v103 = v105;
      }

      v23 = &selRef__authenticateReturningError_;
      v83 = off_DF3000;
      v81 = v323;
      v106 = v338;
      [v103 _scaledValueForValue:*&v424];
      v108 = v107;

      sub_2F174(&v420);
    }

    CGRectGetMinY(recta);
    v119 = v100 + v108 - *&v364 - v101;
    TextLabelProperties.scaledValue(forValue:text:)(v106, v87, *(&v424 + 1));
    v121 = v120 + v119;
    x = recta.origin.x;
    v123 = recta.origin.y;
    v124 = recta.size.width;
    v125 = recta.size.height;
    v126 = v316;
    v438.origin.x = x;
    v438.origin.y = v123;
    v438.size.width = v124;
    v438.size.height = v125;
    CGRectGetMinX(v438);
    v6 = v342;
    v38 = v343;
    sub_ABA490();
    [v126 v23[262]];

    sub_2F174(&v420);
    sub_109AB0(v360);

    v337 = v121;
    recta.origin.y = v121 + recta.origin.y;

    v82 = *(v1 + v81);
    v55 = &selRef__authenticateReturningError_;
    Width = v314;
    if (v82)
    {
      goto LABEL_68;
    }

LABEL_70:
    v327 = CGRectGetMaxY(recta);
    goto LABEL_89;
  }

  v337 = 0.0;
LABEL_68:
  v127 = *(v1 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 8);
  swift_beginAccess();
  v128 = *(v127 + 120);
  v336 = *(v127 + 112);
  swift_beginAccess();
  v129 = *(v127 + 64);
  v408 = *(v127 + 48);
  v409 = v129;
  v130 = *(v127 + 96);
  v410 = *(v127 + 80);
  v411 = v130;
  v407 = *(v127 + 32);
  if (*(v1 + v326) == 1)
  {

    sub_2F118(&v407, &v412);
    v131 = 1.79769313e308;
  }

  else
  {
    v132 = recta.origin.x;
    v133 = recta.origin.y;
    v134 = recta.size.width;
    v135 = recta.size.height;

    sub_2F118(&v407, &v412);
    v439.origin.x = v132;
    v439.origin.y = v133;
    v439.size.width = v134;
    v439.size.height = v135;
    v131 = CGRectGetHeight(v439);
  }

  v136 = *(v82 + 32);
  v137 = *(v82 + 64);
  v138 = *(v82 + 72);
  v139 = *(v82 + 80);
  v140 = *(v82 + 88);
  v141 = *(v82 + 40);
  sub_108594(v336, v128, &v407, v141, v137, v138, v139, v140, v366, Width, v131, v136);
  v390 = v368;
  v391 = v369;
  v392 = v370;
  v393 = v371;
  v386 = v366[0];
  v387 = v366[1];
  v388 = v366[2];
  v389 = v367;

  v403 = v390;
  v404 = v391;
  v405 = v392;
  v406 = v393;
  v399 = v386;
  v400 = v387;
  v401 = v388;
  v142 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_titleTextDrawingView;
  v143 = *(v1 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_titleTextDrawingView);
  v402 = v389;
  UIScreen.Dimensions.size.getter(*&v388);
  v416 = v403;
  v417 = v404;
  v418 = v405;
  v419 = v406;
  v412 = v399;
  v413 = v400;
  v414 = v401;
  v415 = v402;
  v144 = v143;
  sub_109B04(v366, &__dst);
  TextDrawing.View.textDrawingContext.setter(&v412);

  v317 = v128;
  if ((*(&v409 + 1) & 0x8000000000000000) == 0)
  {
    v145 = v410;
    sub_2F118(&v407, &__dst);
    v146 = v145;
    v147 = [v146 _fontAdjustedForCurrentContentSizeCategory];
    if (v147)
    {
      v148 = v147;

      v146 = v148;
    }

    v149 = v128;
    v23 = &selRef__authenticateReturningError_;
    v150 = v336;
    v55 = &selRef__authenticateReturningError_;
    [v146 _scaledValueForValue:*&v411];
    v152 = v151;

    sub_2F174(&v407);
    goto LABEL_83;
  }

  v153 = v408;
  sub_2F118(&v407, &__dst);
  v154 = v153(v336, v128);
  v155 = [v154 length];
  if (v155 >= 1)
  {
    v156 = v155;
    *&v372[0] = 0;
    *&v348 = 0;
    v157 = swift_allocObject();
    *(v157 + 16) = &v348;
    *(v157 + 24) = v372;
    v158 = swift_allocObject();
    *(v158 + 16) = sub_18BC3C;
    *(v158 + 24) = v157;
    *&v380 = sub_18BC40;
    *(&v380 + 1) = v158;
    *&__dst = _NSConcreteStackBlock;
    *(&__dst + 1) = 1107296256;
    *&v379 = sub_9B8A0;
    *(&v379 + 1) = &block_descriptor_23;
    v159 = _Block_copy(&__dst);

    [v154 enumerateAttribute:NSFontAttributeName inRange:0 options:v156 usingBlock:{0, v159}];
    _Block_release(v159);
    LOBYTE(v159) = swift_isEscapingClosureAtFileLocation();

    if ((v159 & 1) == 0)
    {
      v160 = *&v372[0];

      v23 = &selRef__authenticateReturningError_;
      v55 = &selRef__authenticateReturningError_;
      if (v160)
      {
        [v160 _scaledValueForValue:*&v411];
        v152 = v161;
      }

      else
      {

        v152 = *&v411;
      }

      v149 = v317;
      v150 = v336;
      goto LABEL_83;
    }

    __break(1u);
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  v152 = *&v411;
  v23 = &selRef__authenticateReturningError_;
  v149 = v317;
  v150 = v336;
  v55 = &selRef__authenticateReturningError_;
LABEL_83:
  MinY = CGRectGetMinY(recta);
  v163 = *(&v367 + 1);
  v327 = v152 + MinY;
  v164 = *(&v367 + 1) + v152 - *&v370 - *(&v370 + 1);
  TextLabelProperties.scaledValue(forValue:text:)(v150, v149, *(&v411 + 1));
  v335 = v165 + v164;
  v166 = recta.origin.x;
  v167 = recta.origin.y;
  v168 = recta.size.width;
  v169 = recta.size.height;
  v170 = *(v1 + v142);
  v440.origin.x = v166;
  v440.origin.y = v167;
  v440.size.width = v168;
  v440.size.height = v169;
  CGRectGetMinX(v440);
  v6 = v342;
  v38 = v343;
  sub_ABA490();
  [v170 v23[262]];

  [*(v1 + v142) v55[107]];
  CGRectGetMaxY(v441);
  v171 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textTappedHandler;
  swift_beginAccess();
  v172 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_chevronImageView;
  v173 = *(v1 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_chevronImageView);
  if (*(v1 + v171))
  {
    [v173 sizeThatFits:{recta.size.width, recta.size.height}];
    [*(v1 + v142) v55[107]];
    CGRectGetMaxX(v442);
    [*(v1 + v142) v55[107]];
    sub_ABA470();
    v174 = [v1 traitCollection];
    v175 = [v174 preferredContentSizeCategory];

    LOBYTE(v174) = sub_ABA330();
    if (v174)
    {
      v176 = [objc_opt_self() defaultMetrics];
      [v176 scaledValueForValue:1.0];
    }

    v177 = *(v1 + v172);
    sub_ABA490();
    [v177 v23[262]];
    sub_2F174(&v407);
    sub_109AB0(v366);
  }

  else
  {
    v177 = v173;
    [v177 v23[262]];
    sub_2F174(&v407);
    sub_109AB0(v366);
  }

  v83 = off_DF3000;
  v81 = v323;
LABEL_89:
  *&v399 = *(v1 + v330);
  *&v386 = 0;
  if (sub_AB38D0())
  {
    v178 = *(v1 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_additionalContentView);
    if (v178)
    {
      v179 = recta.origin.x;
      v180 = recta.origin.y;
      v181 = recta.size.width;
      v182 = recta.size.height;
      v183 = v178;
      v443.origin.x = v179;
      v443.origin.y = v180;
      v443.size.width = v181;
      v443.size.height = v182;
      v6 = v342;
      CGRectGetMaxX(v443);
      CGRectGetMinY(recta);
      CGRectGetHeight(recta);
      sub_ABA490();
      v186 = v185;
      v188 = v187;
      v190 = v189;
      v191 = *(v1 + v333);
      if (v191)
      {
        v192 = v191;
        [v192 v55[107]];
        v193 = CGRectGetHeight(v444);
        [v192 v55[107]];
        v313 = v193;
        sub_ABA470();
        v186 = v194;
        v188 = v195;
        v190 = v196;
        v198 = v197;

        v184 = v198;
      }

      [v183 v23[262]];

      v38 = v343;
    }
  }

  v331 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_titleTextDrawingView;
  [*(v1 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_titleTextDrawingView) v55[107]];
  v200 = v199;
  [*(v1 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_chevronImageView) v55[107]];
  v202 = v200 + v201;
  v203 = *(v1 + v81);
  if (!v203 || (v204 = *(v1 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_subtitleTextDrawingView)) == 0)
  {
    v231 = *(v83[178] + v1);
    v232 = 0.0;
    v233 = 0.0;
    if (v231)
    {
      [v231 v55[107]];
    }

    if (v202 > v233)
    {
      v234 = v202;
    }

    else
    {
      v234 = v233;
    }

    recta.origin.x = v234 + recta.origin.x;
    recta.size.width = recta.size.width - v234;
    v235 = v345;
    goto LABEL_131;
  }

  v205 = *(v1 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 16);
  swift_beginAccess();
  v206 = *(v205 + 112);
  v207 = *(v205 + 120);
  swift_beginAccess();
  v208 = *(v205 + 48);
  v209 = *(v205 + 64);
  v210 = *(v205 + 96);
  v397 = *(v205 + 80);
  v398 = v210;
  v396 = v209;
  v395 = v208;
  v394 = *(v205 + 32);
  v211 = recta.size.width;
  v212 = recta.size.height;
  v213 = v203[4];
  v214 = *(v203 + 5);
  v215 = *(v203 + 9);
  v324 = *(v203 + 8);
  v216 = *(v203 + 10);
  v217 = *(v203 + 11);

  v218 = v214;
  v219 = v204;

  sub_2F118(&v394, &v399);
  v328 = v206;
  sub_108594(v206, v207, &v394, v218, v324, v215, v216, v217, v372, v211, v212, v213);
  v382 = v374;
  v383 = v375;
  v384 = v376;
  v385 = v377;
  __dst = v372[0];
  v379 = v372[1];
  v380 = v372[2];
  v381 = v373;

  v390 = v382;
  v391 = v383;
  v392 = v384;
  v393 = v385;
  v386 = __dst;
  v387 = v379;
  v388 = v380;
  v389 = v381;
  UIScreen.Dimensions.size.getter(*&v380);
  v403 = v390;
  v404 = v391;
  v405 = v392;
  v406 = v393;
  v399 = v386;
  v400 = v387;
  v401 = v388;
  v402 = v389;
  sub_109B04(v372, &v348);
  v325 = v219;
  TextDrawing.View.textDrawingContext.setter(&v399);
  v220 = *(&v373 + 1);
  v221 = *(&v376 + 1);
  v318 = *&v373;
  if ((*(&v396 + 1) & 0x8000000000000000) == 0)
  {
    v222 = v206;
    v223 = v397;
    sub_2F118(&v394, &v348);
    v224 = v223;
    v225 = [v224 _fontAdjustedForCurrentContentSizeCategory];
    v226 = v319;
    if (v225)
    {
      v227 = v225;

      v224 = v227;
    }

    v23 = &selRef__authenticateReturningError_;
    v228 = off_DF3000;
    [v224 _scaledValueForValue:*&v398];
    v230 = v229;

    sub_2F174(&v394);
    goto LABEL_114;
  }

  v236 = v395;
  sub_2F118(&v394, &v348);
  v237 = v236(v206, v207);
  v238 = [v237 length];
  if (v238 >= 1)
  {
    v239 = v238;
    *&v347[0] = 0;
    v346[0] = 0;
    v240 = swift_allocObject();
    *(v240 + 16) = v346;
    *(v240 + 24) = v347;
    v241 = swift_allocObject();
    *(v241 + 16) = sub_9B94C;
    *(v241 + 24) = v240;
    *&v350 = sub_109B70;
    *(&v350 + 1) = v241;
    *&v348 = _NSConcreteStackBlock;
    *(&v348 + 1) = 1107296256;
    *&v349 = sub_9B8A0;
    *(&v349 + 1) = &block_descriptor_53;
    v242 = _Block_copy(&v348);

    [v237 enumerateAttribute:NSFontAttributeName inRange:0 options:v239 usingBlock:{0, v242}];
    _Block_release(v242);
    v243 = swift_isEscapingClosureAtFileLocation();

    if ((v243 & 1) == 0)
    {
      v244 = *&v347[0];

      v23 = &selRef__authenticateReturningError_;
      v228 = off_DF3000;
      if (v244)
      {
        [v244 _scaledValueForValue:*&v398];
        v230 = v245;
      }

      else
      {

        v230 = *&v398;
      }

      v226 = v319;
      goto LABEL_113;
    }

LABEL_155:
    __break(1u);
    return;
  }

  v230 = *&v398;
  v23 = &selRef__authenticateReturningError_;
  v226 = v319;
  v228 = off_DF3000;
LABEL_113:
  v222 = v328;
LABEL_114:
  v246 = v220 + v230 - *&v376 - v221;
  TextLabelProperties.scaledValue(forValue:text:)(v222, v207, *(&v398 + 1));
  v248 = v247;
  v249 = recta.origin.x;
  v250 = recta.origin.y;
  v251 = recta.size.width;
  v252 = recta.size.height;
  v253 = v325;
  v445.origin.x = v249;
  v445.origin.y = v250;
  v445.size.width = v251;
  v445.size.height = v252;
  CGRectGetMinX(v445);
  v6 = v342;
  v38 = v343;
  sub_ABA490();
  [v253 v23[262]];

  if (*(v1 + v226))
  {
    v254 = 52.0;
  }

  else
  {
    v254 = 0.0;
  }

  v255 = *(v228[178] + v1);
  if (v255)
  {
    [v255 frame];
    if (v202 > v318)
    {
      v257 = v202;
    }

    else
    {
      v257 = v318;
    }

    if (v257 > v256)
    {
      v256 = v257;
    }
  }

  else if (v202 <= v318)
  {
    if (v318 > 0.0)
    {
      v256 = v318;
    }

    else
    {
      v256 = 0.0;
    }
  }

  else if (v202 > 0.0)
  {
    v256 = v202;
  }

  else
  {
    v256 = 0.0;
  }

  v232 = v248 + v246;
  v258 = v254 + v256;
  v446.origin.x = v322;
  recta.origin.x = v322 + v254 + v256;
  v446.size.height = v320;
  v446.origin.y = v321;
  v446.size.width = v332;
  v259 = CGRectGetWidth(v446);

  sub_2F174(&v394);
  sub_109AB0(v372);
  recta.size.width = v259 - v258;

  v235 = v345;
LABEL_131:
  v260 = *(v1 + v333);
  v261 = 0.0;
  if (v260)
  {
    v262 = v260;
    v263 = [v262 titleLabel];
    if (v263)
    {
      v264 = v263;
      v265 = v356;
      v266 = v357;
      v267 = v23[262];
      v268 = v262;
      [v268 v267];
      [v268 layoutIfNeeded];
      v269 = [v1 traitCollection];
      v270 = [v269 preferredContentSizeCategory];

      LOBYTE(v269) = sub_ABA320();
      v340 = v232;
      if (v269)
      {
        [*(v1 + v331) frame];
      }

      else
      {
        CGRectGetMaxX(recta);
      }

      [v264 _baselineOffsetFromBottom];
      [v268 frame];
      CGRectGetHeight(v447);
      [v264 frame];
      CGRectGetMaxY(v448);
      v272 = [v1 traitCollection];
      v273 = [v272 preferredContentSizeCategory];

      LOBYTE(v272) = sub_ABA320();
      if (v272)
      {
        [*(v1 + v331) frame];
        CGRectGetMaxY(v449);
        v274 = *(v1 + v331);
        v275 = *&v274[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 48];
        v277 = *&v274[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext];
        v276 = *&v274[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 16];
        v350 = *&v274[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 32];
        v351 = v275;
        v348 = v277;
        v349 = v276;
        v278 = *&v274[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 112];
        v280 = *&v274[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 64];
        v279 = *&v274[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 80];
        v354 = *&v274[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 96];
        v355 = v278;
        v352 = v280;
        v353 = v279;
        memmove(&__dst, &v274[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext], 0x80uLL);
        if (sub_11D03C(&__dst) != 1)
        {
          v390 = v382;
          v391 = v383;
          v392 = v384;
          v393 = v385;
          v386 = __dst;
          v387 = v379;
          v388 = v380;
          v389 = v381;
          v281 = v274;
          sub_15F84(&v348, v347, &qword_DF08F8);
          sub_11DEFC(&v386);
          v283 = v282;
          v285 = v284;
          v287 = v286;
          v289 = v288;
          [v281 bounds];
          CGRectGetMaxY(v450);
          v451.origin.x = v283;
          v451.origin.y = v285;
          v451.size.width = v287;
          v451.size.height = v289;
          v6 = v342;
          v38 = v343;
          CGRectGetMaxY(v451);
          sub_12E1C(&v348, &qword_DF08F8);
        }
      }

      v235 = v345;
      sub_ABA490();
      [v268 v23[262]];

      v290 = *(v1 + v331);
      v291 = *&v290[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 48];
      v293 = *&v290[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext];
      v292 = *&v290[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 16];
      v347[2] = *&v290[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 32];
      v347[3] = v291;
      v347[0] = v293;
      v347[1] = v292;
      v294 = *&v290[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 112];
      v296 = *&v290[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 64];
      v295 = *&v290[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 80];
      v347[6] = *&v290[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext + 96];
      v347[7] = v294;
      v347[4] = v296;
      v347[5] = v295;
      memmove(&v348, &v290[OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext], 0x80uLL);
      if (sub_11D03C(&v348) == 1)
      {

        recta.size.width = recta.size.width - (v356 + 16.0);
        v261 = v327;
      }

      else
      {
        v382 = v352;
        v383 = v353;
        v384 = v354;
        v385 = v355;
        __dst = v348;
        v379 = v349;
        v380 = v350;
        v381 = v351;
        v297 = v290;
        sub_15F84(v347, v346, &qword_DF08F8);
        sub_11DEFC(&__dst);
        v299 = v298;
        v301 = v300;
        v303 = v302;
        v305 = v304;
        [v297 bounds];
        v306 = CGRectGetMaxY(v452);
        v453.origin.x = v299;
        v453.origin.y = v301;
        v453.size.width = v303;
        v453.size.height = v305;
        v6 = v342;
        v38 = v343;
        v307 = CGRectGetMaxY(v453);

        sub_12E1C(v347, &qword_DF08F8);
        v261 = v327 - (v306 - v307 + *(&v354 + 1));
        recta.size.width = recta.size.width - (v356 + 16.0);
      }

      v271 = v329;
      v232 = v340;
    }

    else
    {

      v271 = v329;
    }
  }

  else
  {
    v271 = v329;
  }

  v308 = [v1 traitCollection];
  v309 = [v308 preferredContentSizeCategory];

  LOBYTE(v308) = sub_ABA320();
  if (v308)
  {
    v310 = v337 + v335 + v261;
  }

  else
  {
    v311 = v335;
    if (v335 <= v261)
    {
      v311 = v261;
    }

    v310 = v337 + v311;
  }

  v312 = v341 + v232 + v310;
  [*(v1 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_floatingBackgroundView) v23[262]];
  *(v1 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView__currentPreferredHeight) = v312;
  sub_17654(v271);
}

uint64_t sub_188024(uint64_t a1, void *a2, uint64_t a3, double *a4)
{
  v8 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_systemStyleButtonPossibleAttributedTitles;
  swift_beginAccess();
  v9 = *(a1 + v8);
  v10 = *(v9 + 16);
  if (v10)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAAE0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_AF4EC0;
    v11 = (a1 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_systemStyleButtonAttributedTitle);
    swift_beginAccess();
    v13 = *v11;
    v12 = v11[1];
    v14 = *(v11 + 16);
    v15 = v11[3];
    *(v9 + 32) = v13;
    *(v9 + 40) = v12;
    *(v9 + 48) = v14;
    *(v9 + 56) = v15;

    v16 = v15;
    v10 = 1;
  }

  v17 = (v9 + 56);
  do
  {
    v19 = *v17;

    v20 = v19;
    [a2 setAttributedTitle:v20 forState:0];
    [a2 sizeThatFits:{*(a3 + 16), *(a3 + 24)}];
    v22 = *a4;
    if (*a4 >= v21)
    {
      v18 = *(a4 + 1);
    }

    else
    {
      v22 = v21;
    }

    *a4 = v22;
    *(a4 + 1) = v18;

    v17 += 4;
    --v10;
  }

  while (v10);
}

Swift::Void __swiftcall TitleSectionHeaderView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v43.receiver = v1;
  v43.super_class = type metadata accessor for TitleSectionHeaderView();
  objc_msgSendSuper2(&v43, "traitCollectionDidChange:", isa);
  v4 = [v1 traitCollection];
  if (isa)
  {
    [(objc_class *)isa displayScale];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBA30);
  [v4 displayScale];
  sub_8A2B8();
  if (sub_AB38D0())
  {
    [v1 setNeedsLayout];
  }

  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  if (!isa)
  {

LABEL_11:
    v13 = [v4 preferredContentSizeCategory];
    v14 = sub_ABA310();
    v15 = sub_ABA330();

    if (v15)
    {
      v16 = 3;
    }

    else
    {
      v16 = 1;
    }

    TitleSectionHeaderView.titleMaximumNumberOfLines.setter(v16);
    [v2 setNeedsLayout];
    v17 = *&v2[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_layoutInvalidationHandler];
    if (v17)
    {

      v17(v2);
      sub_17654(v17);
    }

    goto LABEL_16;
  }

  v7 = [(objc_class *)isa preferredContentSizeCategory];
  v8 = sub_AB92A0();
  v10 = v9;
  if (v8 == sub_AB92A0() && v10 == v11)
  {

    goto LABEL_16;
  }

  v12 = sub_ABB3C0();

  if ((v12 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_16:
  if ([v4 horizontalSizeClass] == &dword_0 + 2)
  {
    v42 = v4;
    v18 = &v2[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_regularLayoutStyle];
    swift_beginAccess();
    v19 = *v18;
    v20 = *(v18 + 1);
    v21 = v18[16];
    v22 = &v2[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_layoutStyle];
    *v22 = *v18;
    *(v22 + 1) = v20;
    v22[16] = v21;
    v23 = *&v2[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 8];
    v40 = *&v2[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents];
    v24 = *&v2[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 16];
    v25 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_titleMaximumNumberOfLines;
    swift_beginAccess();
    v26 = *&v2[v25];
    swift_beginAccess();
    v27 = *&v2[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_supertitleTextDrawingView] != 0;
    v28 = *&v2[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_subtitleTextDrawingView] != 0;

    sub_189794(v19, v20, v21, v26, v27, v28, v40, v23, v24);
LABEL_20:

    [v2 setNeedsLayout];
    v4 = v42;
    goto LABEL_21;
  }

  if ([v4 horizontalSizeClass] == &dword_0 + 1)
  {
    v42 = v4;
    v29 = &v2[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_compactLayoutStyle];
    swift_beginAccess();
    v30 = *v29;
    v31 = *(v29 + 1);
    v32 = v29[16];
    v33 = &v2[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_layoutStyle];
    *v33 = *v29;
    *(v33 + 1) = v31;
    v33[16] = v32;
    v34 = *&v2[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 8];
    v41 = *&v2[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents];
    v35 = *&v2[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 16];
    v36 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_titleMaximumNumberOfLines;
    swift_beginAccess();
    v37 = *&v2[v36];
    swift_beginAccess();
    v38 = *&v2[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_supertitleTextDrawingView] != 0;
    v39 = *&v2[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_subtitleTextDrawingView] != 0;

    sub_189794(v30, v31, v32, v37, v38, v39, v41, v34, v35);
    goto LABEL_20;
  }

LABEL_21:
}

Swift::Void __swiftcall TitleSectionHeaderView.music_inheritedLayoutInsetsDidChange()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for TitleSectionHeaderView();
  objc_msgSendSuper2(&v1, "music_inheritedLayoutInsetsDidChange");
  [v0 setNeedsLayout];
}

Swift::Void __swiftcall TitleSectionHeaderView.apply(_:)(UICollectionViewLayoutAttributes a1)
{
  v3 = type metadata accessor for TitleSectionHeaderView();
  v12.receiver = v1;
  v12.super_class = v3;
  objc_msgSendSuper2(&v12, "applyLayoutAttributes:", a1.super.isa);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1.super.isa;
    v7 = [v5 floating];
    v8 = v1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_floating];
    v1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_floating] = v7;
    if (v7 != v8)
    {
      if (v7)
      {
        v9 = [objc_opt_self() clearColor];
      }

      else
      {
        v9 = *&v1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_externalBackgroundColor];
      }

      v10 = v9;
      v11.receiver = v1;
      v11.super_class = v3;
      objc_msgSendSuper2(&v11, "setBackgroundColor:", v9);

      v6 = v10;
    }
  }
}

uint64_t TitleSectionHeaderView.textDrawingCache.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textDrawingCache;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_188A28()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView____lazy_storage___artworkComponent;
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView____lazy_storage___artworkComponent))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView____lazy_storage___artworkComponent);
  }

  else
  {
    v3 = v0;
    type metadata accessor for ArtworkComponentImageView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    _s9ComponentCMa(0);
    swift_allocObject();
    v2 = sub_80104(v4);

    *(v3 + v1) = v2;
  }

  return v2;
}

void sub_188AD0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_tapGestureRecognizer;
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_tapGestureRecognizer];
  if (!a1)
  {
    if (!v5)
    {
      return;
    }

LABEL_7:
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = sub_13C80(0, &qword_DEE998);
    v11 = v5;

    v12 = UIGestureRecognizerHandling<>.addHandler(_:)(sub_18BBD8, v9, v10);

    *&v2[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_tapGestureRecognizerHandler] = v12;

    [v2 addGestureRecognizer:v11];

    if (!a1)
    {
      return;
    }

    goto LABEL_8;
  }

  if (v5)
  {
    sub_13C80(0, &qword_DEE998);
    v6 = v5;
    v7 = a1;
    v8 = sub_ABA790();

    if (v8)
    {
      return;
    }

    v5 = *&v2[v4];
    if (v5)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  v14 = a1;
  [v2 removeGestureRecognizer:?];
  if (*&v2[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_tapGestureRecognizerHandler])
  {
    sub_13C80(0, &qword_DEE998);

    UIGestureRecognizerHandling<>.removeHandler(_:)(v13);
  }

  else
  {
  }
}

void sub_188CE4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (Strong + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textTappedHandler);
    swift_beginAccess();
    v3 = *v2;
    if (*v2)
    {

      v3(v1);
      sub_17654(v3);
    }
  }
}

id sub_188D88()
{
  result = sub_188DA8();
  qword_DF34F0 = result;
  return result;
}

id sub_188DA8()
{
  v0 = [objc_opt_self() buttonWithType:1];
  v1 = [v0 titleLabel];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v2 setFont:v3];
  }

  [v0 setContentHorizontalAlignment:2];

  return v0;
}

id _s16MusicApplication22TitleSectionHeaderViewC012chevronImageF033_1D932DF44907200D5208B83E703ABC72LLSo07UIImageF0Cvpfi_0()
{
  v0 = objc_opt_self();
  v1 = [v0 configurationWithTextStyle:UIFontTextStyleTitle2 scale:1];
  v2 = [v0 configurationWithWeight:7];
  v3 = [v1 configurationByApplyingConfiguration:v2];

  v4 = v3;
  v5 = sub_AB9260();
  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

  v7 = [objc_allocWithZone(UIImageView) initWithImage:v6];
  v8 = [objc_opt_self() secondaryLabelColor];
  [v7 setTintColor:v8];

  v9 = v7;
  [v9 setContentMode:4];

  return v9;
}

id TitleSectionHeaderView.backgroundColor.getter()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for TitleSectionHeaderView();
  v1 = objc_msgSendSuper2(&v3, "backgroundColor");

  return v1;
}

void TitleSectionHeaderView.backgroundColor.setter(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for TitleSectionHeaderView();
  objc_msgSendSuper2(&v4, "setBackgroundColor:", a1);
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_externalBackgroundColor];
  *&v1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_externalBackgroundColor] = a1;
}

id TitleSectionHeaderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitleSectionHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_189440(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_artworkCachingReference;
  *(v1 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_artworkCachingReference) = a1;

  v3 = sub_188A28();

  *(v3 + 16) = *(v1 + v2);
}

MusicApplication::TitleSectionHeaderView::SystemButtonAttributedTitle::Style_optional __swiftcall TitleSectionHeaderView.SystemButtonAttributedTitle.Style.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = MusicApplication_TitleSectionHeaderView_SystemButtonAttributedTitle_Style_emphasized;
  }

  else
  {
    v1.value = MusicApplication_TitleSectionHeaderView_SystemButtonAttributedTitle_Style_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *sub_18951C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t static TitleSectionHeaderView.SystemButtonAttributedTitle.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a1 == a5 && a2 == a6 || (v9 = sub_ABB3C0(), v10 = 0, (v9 & 1) != 0))
  {
    v10 = a3 ^ a7 ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_189594(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_ABB3C0();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

BOOL sub_1895F4(unint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a1 > 4)
    {
      if (a1 <= 6)
      {
        if (!(a1 ^ 5 | a2))
        {
          return (a6 & 1) != 0 && !(a4 ^ 5 | a5);
        }

        return (a6 & 1) != 0 && !(a4 ^ 6 | a5);
      }

      else
      {
        if (!(a1 ^ 7 | a2))
        {
          return (a6 & 1) != 0 && !(a4 ^ 7 | a5);
        }

        if (!(a1 ^ 8 | a2))
        {
          return (a6 & 1) != 0 && !(a4 ^ 8 | a5);
        }

        return (a6 & 1) != 0 && a4 > 8;
      }
    }

    else
    {
      if (a1 > 1)
      {
        if (a1 ^ 2 | a2)
        {
          if (!(a1 ^ 3 | a2))
          {
            return (a6 & 1) != 0 && !(a4 ^ 3 | a5);
          }

          if ((a6 & 1) != 0 && !(a4 ^ 4 | a5))
          {
            return 1;
          }
        }

        else if ((a6 & 1) != 0 && !(a4 ^ 2 | a5))
        {
          return 1;
        }

        return 0;
      }

      if (!(a1 | a2))
      {
        return (a6 & 1) != 0 && !(a4 | a5);
      }

      return (a6 & 1) != 0 && !(a4 ^ 1 | a5);
    }
  }

  else
  {
    if (a6)
    {
      return 0;
    }

    return *&a1 == *&a4 && *&a2 == *&a5;
  }
}

uint64_t sub_189794(unint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, char a6, _OWORD *a7, _OWORD *a8, _OWORD *a9)
{
  sub_13C80(0, &qword_DE6EE0);
  v13 = sub_ABA550();
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v14 = qword_E718C8;
  v15 = objc_opt_self();
  v16 = v14;
  v17 = v15;
  v18 = [v15 clearColor];
  v64 = v14;
  *&v101 = v14;
  *(&v101 + 1) = v18;
  v102 = xmmword_AF7C20;
  v103 = 0uLL;
  *&v104 = v13;
  *(&v104 + 1) = 1;
  v105 = xmmword_B016C0;
  swift_beginAccess();
  v19 = a7[5];
  v106[2] = a7[4];
  v106[3] = v19;
  v106[4] = a7[6];
  v20 = a7[3];
  v106[0] = a7[2];
  v106[1] = v20;
  v21 = v104;
  a7[4] = 0uLL;
  a7[5] = v21;
  a7[6] = v105;
  v22 = v102;
  a7[2] = v101;
  a7[3] = v22;
  v65 = v16;
  v63 = v18;
  v62 = v18;
  v61 = v13;
  sub_2F118(&v101, v94);
  sub_2F174(v106);
  sub_2EB2A8();
  v23 = a3;
  if (a3)
  {
    v24 = *&a2;
    if (a1 > 5)
    {
      v26 = v17;
      if (__PAIR128__((a1 >= 6) + a2 - 1, a1 - 6) >= 2)
      {
        if (a1 ^ 8 | a2)
        {
          v25 = sub_ABA550();
          goto LABEL_8;
        }

        v53 = sub_ABA560();
      }

      else
      {
        v53 = sub_ABA5A0();
      }

      v25 = v53;
      v27 = v65;
      goto LABEL_11;
    }

    v25 = sub_ABA5A0();
  }

  else
  {
    v25 = sub_ABA550();
    v24 = *&a2;
  }

  v26 = v17;
LABEL_8:
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v27 = qword_E718D8;
LABEL_11:
  v28 = v27;
  v29 = v25;
  v30 = [v26 clearColor];
  if (v23)
  {
    v31 = dbl_B01A18[a1];
    v32 = dbl_B01A68[a1];
  }

  else
  {
    v31 = *&a1;
    v32 = v24;
  }

  if (a5)
  {
    v33 = 21.0;
  }

  else
  {
    v33 = v31;
  }

  *&v67 = v28;
  *(&v67 + 1) = v30;
  v68 = xmmword_AF7C20;
  if (a6)
  {
    v34 = 5.0;
  }

  else
  {
    v34 = v32;
  }

  v69 = 0uLL;
  v55 = v29;
  v56 = v30;
  *&v70 = v29;
  *(&v70 + 1) = a4;
  *&v71 = v33;
  *(&v71 + 1) = v34;
  v35 = v30;
  swift_beginAccess();
  v36 = a8[5];
  v72[2] = a8[4];
  v72[3] = v36;
  v72[4] = a8[6];
  v37 = a8[3];
  v72[0] = a8[2];
  v72[1] = v37;
  v38 = v70;
  a8[4] = 0uLL;
  a8[5] = v38;
  a8[6] = v71;
  v39 = v68;
  a8[2] = v67;
  a8[3] = v39;
  v60 = v28;
  v40 = v28;
  v58 = v35;
  v41 = v29;
  sub_2F118(&v67, v94);
  sub_2F174(v72);
  sub_2EB2A8();
  v42 = sub_ABA550();
  v43 = v65;
  v44 = [v26 clearColor];
  *&v73 = v64;
  *(&v73 + 1) = v44;
  v74 = xmmword_AF7C20;
  v75 = 0uLL;
  *&v76 = v42;
  *(&v76 + 1) = 1;
  v77 = xmmword_B016D0;
  swift_beginAccess();
  v45 = a9[5];
  v78[2] = a9[4];
  v78[3] = v45;
  v78[4] = a9[6];
  v46 = a9[3];
  v78[0] = a9[2];
  v78[1] = v46;
  v47 = v76;
  a9[4] = v75;
  a9[5] = v47;
  a9[6] = v77;
  v48 = v74;
  a9[2] = v73;
  a9[3] = v48;
  v49 = v43;
  v50 = v44;
  v51 = v42;
  sub_2F118(&v73, v94);
  sub_2F174(v78);
  sub_2EB2A8();

  v79[0] = v64;
  v79[1] = v44;
  v80 = xmmword_AF7C20;
  v82 = 0;
  v81 = 0;
  v83 = v42;
  v84 = 1;
  v85 = xmmword_B016D0;
  sub_2F174(v79);
  v86[0] = v60;
  v86[1] = v56;
  v87 = xmmword_AF7C20;
  v89 = 0;
  v88 = 0;
  v90 = v55;
  v91 = a4;
  v92 = v33;
  v93 = v34;
  sub_2F174(v86);
  v94[0] = v64;
  v94[1] = v63;
  v95 = xmmword_AF7C20;
  v97 = 0;
  v96 = 0;
  v98 = v13;
  v99 = 1;
  v100 = xmmword_B016C0;
  return sub_2F174(v94);
}

uint64_t sub_189D88(unint64_t a1, uint64_t a2, char a3)
{
  sub_13C80(0, &qword_DE6EE0);
  v6 = sub_ABA550();
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v7 = qword_E718C8;
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 clearColor];
  v43 = v7;
  *&v82[0] = v7;
  *(&v82[0] + 1) = v10;
  v82[1] = xmmword_AF7C20;
  v83 = 0;
  v84 = 0;
  v85 = v6;
  v86 = 1;
  v87 = xmmword_B016C0;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v11 = TextStackView.Component.init(identifier:labelProperties:)(0x7469747265707573, 0xEA0000000000656CLL, v82);
  v44 = v8;
  if ((a3 & 1) == 0)
  {
LABEL_6:
    v16 = v9;
    v17 = v10;
    v18 = v6;
    sub_2F118(v82, v75);

    v15 = sub_ABA550();
    goto LABEL_7;
  }

  if (a1 > 5)
  {
    if (__PAIR128__((a1 >= 6) + a2 - 1, a1 - 6) < 2)
    {
      v20 = v9;
      v34 = v10;
      v35 = v6;
      sub_2F118(v82, v75);

      v19 = sub_ABA5A0();
      goto LABEL_10;
    }

    if (!(a1 ^ 8 | a2))
    {
      v20 = v9;
      v36 = v10;
      v37 = v6;
      sub_2F118(v82, v75);

      v19 = sub_ABA560();
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v12 = v9;
  v13 = v10;
  v14 = v6;
  sub_2F118(v82, v75);

  v15 = sub_ABA5A0();
LABEL_7:
  v19 = v15;
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v20 = qword_E718D8;
LABEL_10:
  v21 = v20;
  v22 = v19;
  v23 = [v44 clearColor];
  v46 = v6;
  if (a3)
  {
    a2 = *&dbl_B01A68[a1];
    a1 = *&dbl_B01A18[a1];
  }

  *&v75[0] = v21;
  *(&v75[0] + 1) = v23;
  v75[1] = xmmword_AF7C20;
  v77 = 0;
  v76 = 0;
  v78 = v22;
  v79 = 2;
  v80 = a1;
  v81 = a2;
  v24 = v23;
  v41 = v23;
  swift_allocObject();
  v40 = v22;
  v25 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v75);
  v26 = v21;
  v42 = v21;
  v27 = v25;
  v39 = v26;
  v38 = v24;
  v28 = v22;
  sub_2F118(v75, v69);

  v29 = sub_ABA550();
  v45 = v9;
  v30 = [v44 clearColor];
  *&v69[0] = v43;
  *(&v69[0] + 1) = v30;
  v69[1] = xmmword_AF7C20;
  v70 = 0;
  v71 = 0;
  v72 = v29;
  v73 = 1;
  v74 = xmmword_B016D0;
  swift_allocObject();
  v31 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_AF82E0;
  *(v32 + 32) = v11;
  *(v32 + 40) = v27;
  *(v32 + 48) = v31;
  sub_2F118(v69, v62);

  v47[0] = v43;
  v47[1] = v30;
  v48 = xmmword_AF7C20;
  v49 = 0;
  v50 = 0;
  v51 = v29;
  v52 = 1;
  v53 = xmmword_B016D0;
  sub_2F174(v47);
  v54[0] = v42;
  v54[1] = v41;
  v55 = xmmword_AF7C20;
  v56 = 0;
  v57 = 0;
  v58 = v40;
  v59 = 2;
  v60 = a1;
  v61 = a2;
  sub_2F174(v54);
  v62[0] = v43;
  v62[1] = v10;
  v63 = xmmword_AF7C20;
  v64 = 0;
  v65 = 0;
  v66 = v46;
  v67 = 1;
  v68 = xmmword_B016C0;
  sub_2F174(v62);
  return v11;
}

uint64_t type metadata accessor for TitleSectionHeaderView()
{
  result = qword_DF3610;
  if (!qword_DF3610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18A3F8(unint64_t a1, uint64_t a2, char a3, double a4)
{
  v8 = sub_AB35C0();
  __chkstk_darwin(v8 - 8);
  v9 = sub_AB9250();
  __chkstk_darwin(v9 - 8);
  sub_189D88(a1, a2, a3 & 1);
  v11 = v10;
  swift_beginAccess();
  v12 = v11[3];
  v13 = v11[5];
  v14 = v11[6];
  v34 = v11[4];
  v35 = v13;
  v36 = v14;
  v32 = v11[2];
  v33 = v12;
  if ((*(&v34 + 1) & 0x8000000000000000) != 0)
  {
    v19 = v33;
    sub_2F118(&v32, aBlock);
    sub_2F118(&v32, aBlock);
    sub_AB91E0();
    sub_AB3550();
    v20 = sub_AB9320();
    v21 = v19(v20);

    v22 = [v21 length];
    if (v22 <= 0)
    {
    }

    else
    {
      v23 = v22;
      v30 = 0;
      v29 = 0;
      v24 = swift_allocObject();
      *(v24 + 16) = &v29;
      *(v24 + 24) = &v30;
      v25 = swift_allocObject();
      *(v25 + 16) = sub_18BC3C;
      *(v25 + 24) = v24;
      aBlock[4] = sub_18BC40;
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_9B8A0;
      aBlock[3] = &block_descriptor_161_0;
      v26 = _Block_copy(aBlock);

      [v21 enumerateAttribute:NSFontAttributeName inRange:0 options:v23 usingBlock:{0, v26}];
      _Block_release(v26);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        return;
      }

      v28 = v30;

      if (v28)
      {
        [v28 _scaledValueForValue:a4];
        sub_2F174(&v32);

        return;
      }
    }

    sub_2F174(&v32);

    return;
  }

  v15 = v35;
  sub_2F118(&v32, aBlock);
  sub_2F118(&v32, aBlock);
  v16 = v15;
  v17 = [v16 _fontAdjustedForCurrentContentSizeCategory];
  if (v17)
  {
    v18 = v17;

    v16 = v18;
  }

  [v16 _scaledValueForValue:a4];

  sub_2F174(&v32);
  sub_2F174(&v32);
}

uint64_t sub_18A8A8(void *a1, unint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_AB35C0();
  __chkstk_darwin(v8 - 8);
  v9 = sub_AB9250();
  __chkstk_darwin(v9 - 8);
  sub_189D88(a2, a3, a4 & 1);
  v11 = v10;
  swift_beginAccess();
  v12 = v11[3];
  v13 = v11[5];
  v14 = v11[6];
  v36 = v11[4];
  v37 = v13;
  *v38 = v14;
  v34 = v11[2];
  v35 = v12;
  if ((*(&v36 + 1) & 0x8000000000000000) == 0)
  {
    v15 = v37;
    sub_2F118(&v34, aBlock);
    sub_2F118(&v34, aBlock);
    v16 = v15;
    v17 = [v16 _fontAdjustedForCurrentContentSizeCategory];
    if (v17)
    {
      v18 = v17;

      v16 = v18;
    }

    [v16 _scaledValueForValue:v38[0]];
    [v16 _scaledValueForValue:v38[1]];

    sub_2F174(&v34);
    goto LABEL_11;
  }

  v19 = v35;
  v20 = *(&v34 + 1);
  sub_2F118(&v34, aBlock);
  sub_2F118(&v34, aBlock);
  sub_AB91E0();
  sub_AB3550();
  v21 = sub_AB9320();
  v22 = v19(v21);

  v23 = [v22 length];
  if (v23 <= 0)
  {

LABEL_11:
    [a1 displayScale];
    sub_AB3A00();
    sub_2F174(&v34);
  }

  v24 = v23;
  v30 = v20;
  v32 = 0;
  v31 = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = &v31;
  *(v25 + 24) = &v32;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_18BC3C;
  *(v26 + 24) = v25;
  aBlock[4] = sub_18BC40;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_9B8A0;
  aBlock[3] = &block_descriptor_150;
  v27 = _Block_copy(aBlock);

  [v22 enumerateAttribute:NSFontAttributeName inRange:0 options:v24 usingBlock:{0, v27, v30}];
  _Block_release(v27);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if ((v27 & 1) == 0)
  {
    v29 = v32;

    if (v29)
    {
      [v29 _scaledValueForValue:v38[0]];
      [v29 _scaledValueForValue:v38[1]];
    }

    else
    {
    }

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void _s16MusicApplication22TitleSectionHeaderViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_forSizing) = 0;
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_supertitle);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_titleMaximumNumberOfLines) = 2;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_subtitle);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_systemStyleButtonAttributedTitle;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = NSFontAttributeName;
  v6 = objc_opt_self();
  v7 = NSFontAttributeName;
  v8 = [v6 preferredFontForTextStyle:UIFontTextStyleBody];
  *(inited + 64) = sub_13C80(0, &qword_DE6EE0);
  *(inited + 40) = v8;
  sub_96EB8(inited);

  v9 = objc_allocWithZone(NSAttributedString);
  v10 = sub_AB9260();
  type metadata accessor for Key(0);
  sub_3FB3C();
  isa = sub_AB8FD0().super.isa;

  v12 = [v9 initWithString:v10 attributes:isa];

  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 0;
  *(v4 + 24) = v12;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_systemStyleButtonPossibleAttributedTitles) = _swiftEmptyArrayStorage;
  v13 = (v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_accessoryButtonHandler);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textTappedHandler);
  *v14 = 0;
  v14[1] = 0;
  v15 = v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_compactLayoutStyle;
  *v15 = xmmword_AF7C40;
  *(v15 + 16) = 0;
  v16 = v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_regularLayoutStyle;
  *v16 = xmmword_AF8610;
  *(v16 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_imageArtworkCatalog) = 0;
  v17 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_imageArtworkCornerTreatment;
  v18 = sub_ABA680();
  (*(*(v18 - 8) + 56))(v0 + v17, 1, 1, v18);
  v19 = v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_artworkPlaceholder;
  v20 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v22 = *v20;
  v21 = v20[1];
  v23 = v20[2];
  v24 = v20[3];
  v25 = *(v20 + 2);
  *v19 = *v20;
  *(v19 + 8) = v21;
  *(v19 + 16) = v23;
  *(v19 + 24) = v24;
  *(v19 + 32) = v25;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_additionalContentView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_additionalContentViewReservedWidth) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView__currentPreferredHeight) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_topHairlineLeadingAlignment) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_topHairlineTrailingAlignment) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_isTopHairlineVisible) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_bottomHairlineLeadingAlignment) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_bottomHairlineTrailingAlignment) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_isBottomHairlineVisible) = 0;
  v26 = v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_layoutInsets;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textDrawingCache) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_artworkCachingReference) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView____lazy_storage___artworkComponent) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_topHairlineView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_bottomHairlineView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView__isTopHairlineVisible) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView__isBottomHairlineVisible) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_subtitleTextDrawingView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_supertitleTextDrawingView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_systemStyleButton) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_tapGestureRecognizerHandler) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_tapGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_floatingBackgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_floating) = 0;
  v27 = v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_layoutStyle;
  *v27 = xmmword_AF7C40;
  *(v27 + 16) = 0;
  v28 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_chevronImageView;
  v29 = v23;
  v30 = v24;
  v31 = v22;
  v32 = v21;
  *(v0 + v28) = _s16MusicApplication22TitleSectionHeaderViewC012chevronImageF033_1D932DF44907200D5208B83E703ABC72LLSo07UIImageF0Cvpfi_0();
  *(v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_externalBackgroundColor) = 0;
  v33 = (v0 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_layoutInvalidationHandler);
  *v33 = 0;
  v33[1] = 0;
  sub_ABAFD0();
  __break(1u);
}