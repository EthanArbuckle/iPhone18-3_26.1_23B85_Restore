void *sub_5D7EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication27JSVideoDetailViewController_modelResponse);
  v2 = v1;
  return v1;
}

void sub_5D820()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_musicVideoViewModel);
  v2 = type metadata accessor for JSMusicVideoViewModelRequest();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC16MusicApplication28JSMusicVideoViewModelRequest_musicVideoViewModel] = v1;
  v65.receiver = v3;
  v65.super_class = v2;
  v4 = v1;
  v5 = objc_msgSendSuper2(&v65, "init");
  v6 = objc_opt_self();
  v62 = v5;
  v7 = [v6 kindWithVariants:3];
  [v62 setItemKind:v7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_AF4EC0;
  *(v8 + 32) = sub_AB92A0();
  *(v8 + 40) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  v60 = inited;
  v61 = inited + 32;
  *(inited + 40) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF8810;
  *(v12 + 32) = sub_AB92A0();
  *(v12 + 40) = v13;
  *(v12 + 48) = sub_AB92A0();
  *(v12 + 56) = v14;
  *(v12 + 64) = sub_AB92A0();
  *(v12 + 72) = v15;
  *(v12 + 80) = sub_AB92A0();
  *(v12 + 88) = v16;
  *(v12 + 96) = sub_AB92A0();
  *(v12 + 104) = v17;
  *(v12 + 112) = sub_AB92A0();
  *(v12 + 120) = v18;
  *(v12 + 128) = sub_AB92A0();
  *(v12 + 136) = v19;
  *(v12 + 144) = sub_AB92A0();
  *(v12 + 152) = v20;
  *(v12 + 160) = sub_AB92A0();
  *(v12 + 168) = v21;
  *(v12 + 176) = sub_AB92A0();
  *(v12 + 184) = v22;
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_AF8820;
  *(v23 + 32) = sub_AB92A0();
  *(v23 + 40) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_AF4EC0;
  *(v25 + 32) = sub_AB92A0();
  *(v25 + 40) = v26;
  isa = sub_AB9740().super.isa;
  v28 = objc_opt_self();
  v29 = [v28 propertySetWithProperties:isa];

  *(v23 + 48) = v29;
  *(v23 + 56) = sub_AB92A0();
  *(v23 + 64) = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_AF4EC0;
  *(v31 + 32) = sub_AB92A0();
  *(v31 + 40) = v32;
  v33 = sub_AB9740().super.isa;
  v34 = [v28 propertySetWithProperties:v33];

  *(v23 + 72) = v34;
  *(v23 + 80) = sub_AB92A0();
  *(v23 + 88) = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_AF4EC0;
  *(v36 + 32) = sub_AB92A0();
  *(v36 + 40) = v37;
  v38 = sub_AB9740().super.isa;
  v39 = [v28 propertySetWithProperties:v38];

  *(v23 + 96) = v39;
  sub_96EA4(v23);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
  swift_arrayDestroy();
  v40 = objc_allocWithZone(MPPropertySet);
  v41 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v42 = sub_AB8FD0().super.isa;

  v43 = [v40 initWithProperties:v41 relationships:v42];

  sub_13C80(0, &unk_DE8EB0);
  v44 = sub_10F414();
  v45 = [v43 propertySetByCombiningWithPropertySet:v44];

  v46 = sub_10F414();
  v47 = [v45 propertySetByCombiningWithPropertySet:v46];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v49 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v50 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v51 = [v49 propertySetByCombiningWithPropertySet:v50];

  v52 = [v47 propertySetByCombiningWithPropertySet:v51];
  *(v60 + 48) = v52;
  sub_96EA4(v60);
  swift_setDeallocating();
  sub_12E1C(v61, &unk_DE8E80);
  v53 = objc_allocWithZone(MPPropertySet);
  v54 = sub_AB9740().super.isa;

  v55 = sub_AB8FD0().super.isa;

  v56 = [v53 initWithProperties:v54 relationships:v55];

  [v62 setItemProperties:v56];
  v57 = swift_allocObject();
  *(v57 + 16) = v63;
  aBlock[4] = sub_5F1BC;
  aBlock[5] = v57;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151E0;
  aBlock[3] = &block_descriptor_7;
  v58 = _Block_copy(aBlock);
  v59 = v63;

  [v62 performWithResponseHandler:v58];
  _Block_release(v58);
}

uint64_t sub_5DF94(void *a1)
{
  sub_13C80(0, &qword_DE8ED0);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  v4 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_5F254, v3);
}

void sub_5E064(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC16MusicApplication27JSVideoDetailViewController_modelResponse);
    v6 = a2;
    v7 = v5;
    sub_417214(a2);
    sub_5D6DC(v5);
  }
}

void sub_5E0F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7F40);
  __chkstk_darwin(v5 - 8);
  v7 = &v53 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - v9;
  v11 = *&v3[OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_contentItem];
  if (!v11)
  {
    return;
  }

  v12 = [v11 song];
  if (!v12)
  {
    return;
  }

  v58 = v12;
  v13 = [v12 relativeModelObjectForStoreLibraryPersonalization];
  if (!v13)
  {
    v17 = v58;
    goto LABEL_8;
  }

  v14 = *&v3[OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_detailHeaderLockupView];
  v57 = v13;
  if (v14)
  {
    v15 = (v14 + OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_libraryAddKeepLocalCompositeStatus);
    v16 = v15[4];
    if ((v16 & 0xFE) != 0xF8)
    {
      v18 = v15[1];
      v19 = v15[3];
      v54 = *v15;
      v55 = v19;
      v56 = v15[5];
      v20 = v15[2];
      v21 = [objc_allocWithZone(MPMutableSectionedCollection) init];
      v22 = sub_AB9260();
      [v21 appendSection:v22];

      [v21 appendItem:v57];
      v23 = v21;
      v24 = [v58 album];
      v25 = type metadata accessor for LibraryAddKeepLocalHandlingController();
      [a3 bounds];
      v76[0] = a3;
      v76[1] = v26;
      v76[2] = v27;
      v76[3] = v28;
      v76[4] = v29;
      v77 = 0;
      PresentationSource.Position.init(source:permittedArrowDirections:)(v76, 15, v64);
      v72[0] = v64[0];
      v72[1] = v64[1];
      v73 = v65;
      v74 = v66;
      v75 = v67;
      v30 = a3;
      *&v31 = PresentationSource.init(viewController:position:)(v3, v72, v63).n128_u64[0];
      if ((v16 & 0xFE) == 0x7A)
      {
        goto LABEL_12;
      }

      v32 = v16 >> 1;
      if (v32 <= 0x7C)
      {
        if (v32 != 62)
        {
          if (v32 == 63)
          {
            goto LABEL_19;
          }

LABEL_22:
          if ((v16 & 0x80) != 0)
          {
            MusicLibrary.DownloadStatus.DownloadPauseReasons.init(mediaPlayerReason:)(v56, v7);
            v48 = sub_AB8230();
            v49 = *(v48 - 8);
            if ((*(v49 + 48))(v7, 1, v48) == 1)
            {

              sub_1611C(v63);
              v50 = &qword_DE7F40;
              v51 = v7;
            }

            else
            {
              MusicLibrary.DownloadStatus.DownloadPauseReasons.alert.getter(v68);
              (*(v49 + 8))(v7, v48);
              if (!v70)
              {
                goto LABEL_12;
              }

              v59[0] = v68[0];
              v59[1] = v68[1];
              v59[2] = v68[2];
              v60 = v69;
              v61 = v70;
              v62 = v71;
              v52 = Alert.uiAlertController.getter();
              PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v52, 1, 1, 0, 0);

              sub_1611C(v63);
              v50 = &unk_DE7F48;
              v51 = v68;
            }

            sub_12E1C(v51, v50);
            goto LABEL_14;
          }

          if (![v23 firstItem])
          {
LABEL_12:

LABEL_13:
            sub_1611C(v63);
LABEL_14:

            return;
          }

          objc_opt_self();
          v37 = swift_dynamicCastObjCClass();
          if (v37)
          {
            v38 = v37;
            v39 = [objc_allocWithZone(MPModelLibraryKeepLocalChangeRequest) init];
            [v39 setModelObject:v38];
            [v39 setEnableState:3];
            v40 = [objc_opt_self() sharedDeviceLibraryController];
            [v40 performKeepLocalChangeRequest:v39 withRelatedModelObjects:0];

            sub_1611C(v63);
            swift_unknownObjectRelease();

            return;
          }

LABEL_36:

          swift_unknownObjectRelease();
          goto LABEL_13;
        }

        if (![v23 firstItem])
        {
          goto LABEL_12;
        }

        objc_opt_self();
        v43 = swift_dynamicCastObjCClass();
        if (!v43)
        {
          goto LABEL_36;
        }

        v44 = v43;
        if (([v43 libraryRemovalSupportedOptions] & 2) != 0)
        {
          sub_2BA534(v44, 0);
        }

        else
        {
          sub_2BAC50(v44, 0);
        }
      }

      else
      {
        if (v32 == 125)
        {
          if ([v23 firstItem])
          {
            objc_opt_self();
            v41 = swift_dynamicCastObjCClass();
            if (!v41)
            {
              swift_unknownObjectRelease();
            }
          }

          else
          {
            v41 = 0;
          }

          v45 = sub_AB9990();
          (*(*(v45 - 8) + 56))(v10, 1, 1, v45);
          sub_15F28(v63, v59);
          sub_AB9940();
          v46 = sub_AB9930();
          v47 = swift_allocObject();
          *(v47 + 16) = v46;
          *(v47 + 24) = &protocol witness table for MainActor;
          sub_17704(v59, v47 + 32);
          sub_DBDC8(0, 0, v10, &unk_AF79B0, v47);

          sub_1611C(v63);
          goto LABEL_39;
        }

        if (v32 != 126)
        {
          if (v32 == 127)
          {
LABEL_19:
            v33 = sub_AB9990();
            (*(*(v33 - 8) + 56))(v10, 1, 1, v33);
            sub_15F28(v63, v59);
            v34 = swift_allocObject();
            *(v34 + 16) = 0;
            *(v34 + 24) = 0;
            *(v34 + 32) = v25;
            *(v34 + 40) = v23;
            v35 = v55;
            *(v34 + 48) = v54;
            *(v34 + 56) = v18;
            *(v34 + 64) = v20;
            *(v34 + 72) = v35;
            *(v34 + 80) = v16;
            *(v34 + 81) = v68[0];
            *(v34 + 84) = *(v68 + 3);
            *(v34 + 88) = v56;
            *(v34 + 96) = v24;
            *(v34 + 104) = 0;
            sub_17704(v59, v34 + 112);
            v36 = v24;
            sub_DC0B8(0, 0, v10, &unk_AF79C0, v34);
            sub_1611C(v63);

LABEL_39:

            return;
          }

          goto LABEL_22;
        }

        if (![v23 firstItem])
        {
          goto LABEL_12;
        }

        objc_opt_self();
        v42 = swift_dynamicCastObjCClass();
        if (!v42)
        {
          goto LABEL_36;
        }

        sub_2B9FD0(v42, 0, v63);
      }

      sub_1611C(v63);
      swift_unknownObjectRelease();
      return;
    }
  }

  v17 = v57;
LABEL_8:
}

void sub_5E978(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_contentItem;
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_contentItem];
  if (a1)
  {
    if (v3 == a1)
    {
      return;
    }
  }

  else if (!v3)
  {
    return;
  }

  if ([v1 isViewLoaded])
  {
    v4 = *&v1[OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_detailHeaderLockupView];
    if (v4)
    {
      v5 = *&v1[v2];
      v6 = v4;
      if (v5)
      {
        v5 = [v5 song];
      }

      sub_27914C(v5);
    }

    sub_5EA54();
  }
}

void sub_5EA54()
{
  v1 = sub_AB35C0();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_detailHeaderLockupView);
  if (!v6)
  {
    return;
  }

  v7 = *(v0 + OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_contentItem);
  if (!v7)
  {
    return;
  }

  v8 = v0;
  v9 = v3;
  v60 = v7;
  v10 = v6;
  v11 = MPModelStoreBrowseContentItem.kind.getter();
  v13 = v11;
  if (v12 != 7)
  {
    if (v12 == 255)
    {
LABEL_11:

      v19 = v60;

      return;
    }

LABEL_10:
    sub_3EB30(v11, v12);
    goto LABEL_11;
  }

  if (![v11 hasVideo])
  {
    v11 = v13;
    v12 = 7;
    goto LABEL_10;
  }

  v14 = [v13 title];
  if (v14)
  {
    v15 = v14;
    v16 = sub_AB92A0();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  sub_277374(v16, v18);
  v20 = *(v8 + OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_musicVideoViewModel);
  v21 = OBJC_IVAR____TtC11MusicJSCore21JSMusicVideoViewModel_shouldHideArtist;
  swift_beginAccess();
  if ((*(v20 + v21) & 1) == 0)
  {
    v22 = [v13 artist];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 name];
      if (v24)
      {
        v25 = v24;
        v26 = sub_AB92A0();
        v28 = v27;

        goto LABEL_21;
      }
    }
  }

  v26 = 0;
  v28 = 0xE000000000000000;
LABEL_21:
  v29 = &v10[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_artist];
  v30 = *&v10[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_artist];
  v31 = *&v10[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_artist + 8];
  *v29 = v26;
  v29[1] = v28;
  v32 = v30 == v26 && v31 == v28;
  if (!v32 && (sub_ABB3C0() & 1) == 0)
  {
    v33 = sub_278774();

    v34 = sub_AB9260();

    [v33 setTitle:v34 forState:0];

    [v10 setNeedsLayout];
  }

  [v13 duration];
  v36 = &v10[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_duration];
  v37 = *&v10[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_duration];
  v38 = v10[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_duration + 8];
  *v36 = v35;
  *(v36 + 8) = 0;
  if ((v38 & 1) != 0 || v37 != v35)
  {
    v39 = *&v10[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_headerLockupView] + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_duration;
    v40 = *v39;
    v41 = *(v39 + 8);
    *v39 = v35;
    *(v39 + 8) = 0;
    sub_25DB0C(v40, v41);
  }

  v42 = [v13 genre];
  if (v42)
  {
    v43 = v42;
    v44 = [v42 name];
    if (v44)
    {
      v45 = v44;
      v46 = sub_AB92A0();
      v48 = v47;

      v49 = v48;
      v42 = v46;
      goto LABEL_35;
    }

    v42 = 0;
  }

  v49 = 0xE000000000000000;
LABEL_35:
  sub_277454(v42, v49);
  v50 = JSMusicVideoViewModel.item.getter();
  if (!v50 || (v51 = v50, v52 = (*(&stru_108.flags + (swift_isaMask & *v50)))(), v51, !v52) || (v53 = JSArtwork.artworkCatalog(defaultCropStyle:)(ICStoreArtworkInfoCropStyleBoundedBox), v52, !v53))
  {
    v53 = [v13 artworkCatalog];
  }

  sub_27930C(v53);

  v54 = [v13 year];
  sub_AB34F0();
  v55 = sub_45BF9C(v54);
  v57 = v56;
  (*(v2 + 8))(v5, v9);
  if (v57)
  {
    v58 = v55;
  }

  else
  {
    v58 = 0;
  }

  if (v57)
  {
    v59 = v57;
  }

  else
  {
    v59 = 0xE000000000000000;
  }

  sub_277460(v58, v59);
  sub_3EB30(v13, 7);
}

void sub_5EF70()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_contentItem);
}

id sub_5EFC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSMusicVideoDetailViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_5F074()
{
  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_5F0F0()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 160);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), v1);
  }

  if (*(v0 + 176))
  {
  }

  if (*(v0 + 192))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_5F184()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_5F1DC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_5F214()
{

  return swift_deallocObject();
}

Swift::Void __swiftcall JSSettingsContainerViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFA9F0);
  __chkstk_darwin(v3 - 8);
  v58 = &v47 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA628);
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v6 = &v47 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA630);
  v50 = *(v7 - 8);
  v51 = v7;
  __chkstk_darwin(v7);
  v47 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA638);
  v53 = *(v9 - 8);
  v54 = v9;
  __chkstk_darwin(v9);
  v52 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA640);
  v56 = *(v11 - 8);
  v57 = v11;
  __chkstk_darwin(v11);
  v55 = &v47 - v12;
  v13 = sub_AB35C0();
  __chkstk_darwin(v13 - 8);
  v14 = sub_AB9250();
  __chkstk_darwin(v14 - 8);
  v61.receiver = v0;
  v61.super_class = ObjectType;
  objc_msgSendSuper2(&v61, "viewDidLoad");
  sub_AB91E0();
  sub_AB3550();
  v15 = sub_AB9320();
  v17 = v16;
  v18 = objc_allocWithZone(type metadata accessor for JSSettingsComponentController());
  v19 = JSSettingsComponentController.init(title:)(v15, v17);
  v20 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
  swift_beginAccess();
  v21 = *&v1[v20];
  if (v21)
  {
    v22 = *&stru_1F8.segname[(swift_isaMask & *v21) + 8];
    v23 = v21;
    v22(0, 0);

    v24 = *&v1[v20];
  }

  else
  {
    v24 = 0;
  }

  *&v1[v20] = v19;
  v25 = v19;

  sub_66F8C();
  v26 = [v1 navigationItem];
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v60 = ObjectType;
  v59[0] = v1;
  v27 = v1;
  v28 = sub_AB9260();

  v29 = v60;
  if (v60)
  {
    v30 = __swift_project_boxed_opaque_existential_1(v59, v60);
    v31 = *(v29 - 8);
    __chkstk_darwin(v30);
    v33 = &v47 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v33);
    v34 = sub_ABB3A0();
    (*(v31 + 8))(v33, v29);
    __swift_destroy_boxed_opaque_existential_0(v59);
  }

  else
  {
    v34 = 0;
  }

  v35 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v28 style:2 target:v34 action:"handleDoneButtonTapped"];

  swift_unknownObjectRelease();
  [v26 setRightBarButtonItem:v35];

  ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();

  ApplicationCapabilities.Controller.$capabilities.getter();

  swift_getKeyPath();
  sub_36A00(&qword_DEA648, &qword_DEA628);
  v36 = v47;
  v37 = v49;
  sub_AB5560();
  (*(v48 + 8))(v6, v37);

  sub_36A00(&qword_DEA650, &qword_DEA630);
  sub_36A00(&qword_DEA658, &unk_DFC570);
  v38 = v51;
  v39 = v52;
  sub_AB55B0();
  (*(v50 + 8))(v36, v38);
  sub_60044();
  v40 = sub_ABA150();
  v59[0] = v40;
  v41 = sub_ABA130();
  v42 = v58;
  (*(*(v41 - 8) + 56))(v58, 1, 1, v41);
  sub_36A00(&qword_DEA660, &qword_DEA638);
  sub_60090();
  v44 = v54;
  v43 = v55;
  sub_AB5590();
  sub_12E1C(v42, &unk_DFA9F0);
  (*(v53 + 8))(v39, v44);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_36A00(&qword_DEA670, &qword_DEA640);
  v45 = v57;
  v46 = sub_AB55C0();
  (*(v56 + 8))(v43, v45);

  *&v27[OBJC_IVAR____TtC16MusicApplication33JSSettingsContainerViewController_allowedServicesSubscription] = v46;
}

void sub_5FB8C(uint64_t *a1)
{
  if ((sub_472A84(8, *a1) & 1) == 0)
  {
    if (qword_DE6748 != -1)
    {
      swift_once();
    }

    v1 = sub_AB4BC0();
    __swift_project_value_buffer(v1, qword_DEA610);

    sub_480B4();

    v2 = sub_AB4BA0();
    v3 = sub_AB9F50();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138543362;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      *(v4 + 4) = Strong;
      *v5 = Strong;
      _os_log_impl(&dword_0, v2, v3, "Restriction for account modification was detected. Dismissing %{public}@.", v4, 0xCu);
      sub_12E1C(v5, &qword_DF9B20);
    }

    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      v9 = [v7 presentingViewController];

      if (v9)
      {
        [v9 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }
}

id Gliss.Coordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id JSSettingsContainerViewController.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC16MusicApplication33JSSettingsContainerViewController_allowedServicesSubscription] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

id JSSettingsContainerViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MusicApplication33JSSettingsContainerViewController_allowedServicesSubscription] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  return v4;
}

uint64_t sub_5FFE0()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_DEA610);
  __swift_project_value_buffer(v0, qword_DEA610);
  return static Logger.music(_:)();
}

unint64_t sub_60044()
{
  result = qword_DE8ED0;
  if (!qword_DE8ED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DE8ED0);
  }

  return result;
}

unint64_t sub_60090()
{
  result = qword_DEA668;
  if (!qword_DEA668)
  {
    sub_60044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEA668);
  }

  return result;
}

uint64_t sub_600E8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t type metadata accessor for JSSettingsContainerViewController()
{
  result = qword_DEA6A8;
  if (!qword_DEA6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *JSDrivenViewController.componentController.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void JSDrivenViewController.componentController.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = *&stru_1F8.segname[(swift_isaMask & *v4) + 8];
    v6 = v4;
    v5(0, 0);

    v7 = *(v1 + v3);
  }

  else
  {
    v7 = 0;
  }

  *(v1 + v3) = a1;
  v8 = a1;

  sub_66F8C();
}

void (*JSDrivenViewController.componentController.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_603B4;
}

void sub_603B4(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v7 = *(v5 + v6);
  if (a2)
  {
    if (v7)
    {
      v8 = *&stru_1F8.segname[(swift_isaMask & *v7) + 8];
      v9 = v3;
      v10 = v7;
      v8(0, 0);

      v7 = *(v5 + v6);
      v5 = v2[4];
      v6 = v2[5];
    }

    else
    {
      v9 = v3;
    }

    *(v5 + v6) = v3;
    v14 = v9;

    sub_66F8C();
    v13 = *v4;
  }

  else
  {
    if (v7)
    {
      v11 = *&stru_1F8.segname[(swift_isaMask & *v7) + 8];
      v12 = v7;
      v11(0, 0);

      v7 = *(v5 + v6);
      v5 = v2[4];
      v6 = v2[5];
    }

    *(v5 + v6) = v3;
    v13 = v3;

    sub_66F8C();
  }

  free(v2);
}

void sub_60578(_BYTE *a1, uint64_t *a2, void *a3, void (*a4)(void))
{
  v7 = v4;
  v9 = *a2;
  swift_beginAccess();
  if (a1[v9] == 1)
  {
    v10 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_lifecycleEventQueue;
    swift_beginAccess();
    v11 = *(v7 + v10);
    v12 = *(v11 + 16);
    if (v12)
    {
      v26 = a3;
      v27 = a4;
      sub_67418();

      v13 = 32;
      do
      {
        v16 = *(v11 + v13);
        if (sub_AB38D0())
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_6D5F0(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v15 = _swiftEmptyArrayStorage[2];
          v14 = _swiftEmptyArrayStorage[3];
          if (v15 >= v14 >> 1)
          {
            sub_6D5F0((v14 > 1), v15 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v15 + 1;
          *(&_swiftEmptyArrayStorage[4] + v15) = v16;
        }

        ++v13;
        --v12;
      }

      while (v12);

      a4 = v27;
      a3 = v26;
    }

    *(v7 + v10) = _swiftEmptyArrayStorage;

    *(v7 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_hasInvokedDidLoadPreemptively) = 1;
  }

  v17 = *a3;
  swift_beginAccess();
  v18 = *&a1[v17];
  if (v18)
  {
    v19 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
    swift_beginAccess();
    v20 = *(v7 + v19);
    if (v20)
    {
      v21 = *&stru_1F8.segname[(swift_isaMask & *v20) + 8];
      v22 = v18;
      v23 = v20;
      v21(0, 0);

      v20 = *(v7 + v19);
    }

    else
    {
      v22 = v18;
    }

    *(v7 + v19) = v18;
    v25 = v22;

    sub_66F8C();
  }

  else
  {
    v24 = a1;
    a4(a1);
  }
}

uint64_t JSDrivenViewController.forceShowingLargeFixedTitleHeader.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_forceShowingLargeFixedTitleHeader;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSDrivenViewController.forceShowingLargeFixedTitleHeader.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_forceShowingLargeFixedTitleHeader;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return _s16MusicApplication22JSDrivenViewControllerC09componentE0_19didUpdateHeaderItemy0A6JSCore011JSComponentE0C_AF08JSHeaderJ0CtF_0();
}

uint64_t (*JSDrivenViewController.forceShowingLargeFixedTitleHeader.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_60920;
}

uint64_t sub_60920(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return _s16MusicApplication22JSDrivenViewControllerC09componentE0_19didUpdateHeaderItemy0A6JSCore011JSComponentE0C_AF08JSHeaderJ0CtF_0();
  }

  return result;
}

uint64_t JSDrivenViewController.canShowOfflineMessage.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_canShowOfflineMessage;
  swift_beginAccess();
  return *(v0 + v1);
}

id JSDrivenViewController.canShowOfflineMessage.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_canShowOfflineMessage;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    return sub_61E28(2);
  }

  return result;
}

void (*JSDrivenViewController.canShowOfflineMessage.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_canShowOfflineMessage;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_60A94;
}

void sub_60A94(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    sub_61E28(2);
  }

  free(v1);
}

uint64_t JSDrivenViewController.prefersCancelButton.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_prefersCancelButton;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSDrivenViewController.prefersCancelButton.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_prefersCancelButton;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    return sub_65DA0();
  }

  return result;
}

void (*JSDrivenViewController.prefersCancelButton.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_prefersCancelButton;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_60C28;
}

void sub_60C28(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    sub_65DA0();
  }

  free(v1);
}

void *JSDrivenViewController.pageHeaderContentViewController.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_pageHeaderContentViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void JSDrivenViewController.pageHeaderContentViewController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_pageHeaderContentViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *JSDrivenViewController.promotionalParallaxViewController.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalParallaxViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void JSDrivenViewController.promotionalParallaxViewController.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalParallaxViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = *(v1 + v3);
  if (v6)
  {
    type metadata accessor for JSLoadingViewController();
    v7 = swift_dynamicCastClass() == 0;
    v8 = v6[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_isReadyForDisplay];
    v6[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_isReadyForDisplay] = v7;
    if ((v7 ^ v8))
    {
      v9 = v6;
      sub_3740E4();
      sub_373738();
    }
  }
}

void (*JSDrivenViewController.promotionalParallaxViewController.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalParallaxViewController;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_60F1C;
}

void sub_60F1C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[3] + v3[4]);
    if (v4)
    {
      type metadata accessor for JSLoadingViewController();
      v5 = swift_dynamicCastClass() == 0;
      v6 = v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_isReadyForDisplay];
      v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_isReadyForDisplay] = v5;
      if (v5 != v6)
      {
        v7 = v4;
        sub_3740E4();
        sub_373738();
      }
    }
  }

  free(v3);
}

uint64_t JSDrivenViewController.componentController(_:didUpdateViewModelKind:)(void *a1, unint64_t a2)
{
  sub_620B4(a2, a1);

  return _s16MusicApplication22JSDrivenViewControllerC09componentE0_19didUpdateHeaderItemy0A6JSCore011JSComponentE0C_AF08JSHeaderJ0CtF_0();
}

uint64_t JSDrivenViewController.prepareInitialContent(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isPreparingContentViewController) != 1)
  {
    return a1();
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerPreparationCompletionHandlers;
  swift_beginAccess();
  v7 = *(v2 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_6C468(0, v7[2] + 1, 1, v7, &qword_DEAB08, &unk_AF9250, &qword_E07D90);
    *(v2 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_6C468((v9 > 1), v10 + 1, 1, v7, &qword_DEAB08, &unk_AF9250, &qword_E07D90);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_70638;
  v11[5] = v5;
  *(v2 + v6) = v7;
  return swift_endAccess();
}

void sub_61244(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v8 = *a2;
  v9 = *(v4 + *a2);
  if (v9)
  {
    v10 = &v9[*a3];
    swift_beginAccess();
    *(v10 + 1) = 0;
    swift_unknownObjectWeakAssign();
    v9 = *(v4 + v8);
  }

  *(v4 + v8) = a1;

  v11 = *(v4 + v8);
  if (v11)
  {
    v12 = v11 + *a3;
    swift_beginAccess();
    *(v12 + 8) = a4;
    swift_unknownObjectWeakAssign();
  }
}

void sub_612FC(unsigned __int8 a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController);
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || (v6 = v4, ObjectType = swift_getObjectType(), v8 = *(v6 + 8), v9 = v3, LOBYTE(v6) = v8(ObjectType, v6), v9, (v6 & 1) == 0))
  {
    if (*(v1 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_hasInvokedDidLoadPreemptively) != 1 || a1 != 128)
    {
      v10 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_lifecycleEventQueue;
      swift_beginAccess();
      v11 = *(v1 + v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v10) = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = sub_6A914(0, *(v11 + 2) + 1, 1, v11, &qword_DEAAF8);
        *(v1 + v10) = v11;
      }

      v14 = *(v11 + 2);
      v13 = *(v11 + 3);
      if (v14 >= v13 >> 1)
      {
        v11 = sub_6A914((v13 > 1), v14 + 1, 1, v11, &qword_DEAAF8);
      }

      *(v11 + 2) = v14 + 1;
      v11[v14 + 32] = a1;
      *(v1 + v10) = v11;
      swift_endAccess();
      sub_614A0();
    }
  }
}

uint64_t sub_614A0()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3)
  {
    v4 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_lifecycleEventQueue;
    swift_beginAccess();
    v5 = *(v0 + v4);
    *(v0 + v4) = _swiftEmptyArrayStorage;
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = (v5 + 32);
      v8 = v3;
      do
      {
        v10 = *v7++;
        v9 = v10;
        v11 = v10 >> 5;
        if (v10 >> 5 <= 1)
        {
          if (v11)
          {
            (*(&stru_1F8.flags + (swift_isaMask & *v8)))(v9 & 1);
          }

          else
          {
            (*(&stru_1F8.reloff + (swift_isaMask & *v8)))(v9 & 1);
          }
        }

        else if (v11 == 2)
        {
          (*(&stru_1F8.reserved2 + (swift_isaMask & *v8)))(v9 & 1);
        }

        else if (v11 == 3)
        {
          (*&stru_248.sectname[swift_isaMask & *v8])(v9 & 1);
        }

        else if (v9 == 128)
        {
          (*(&stru_1F8.offset + (swift_isaMask & *v8)))();
        }

        else
        {
          (*&stru_248.segname[(swift_isaMask & *v8) - 8])();
        }

        --v6;
      }

      while (v6);
    }
  }

  return result;
}

id sub_6164C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController;
  [v0 addChildViewController:*&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController]];
  v3 = *&v0[v2];
  v4 = [v1 viewBackgroundColor];
  [v3 setViewBackgroundColor:v4];

  v5 = *&v1[v2];
  type metadata accessor for JSVerticalStackViewController();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
    swift_beginAccess();
    v9 = *&v1[v8];
    if (v9)
    {
      v10 = *&stru_B8.segname[(swift_isaMask & *v9) + 8];
      v11 = v5;
      v12 = v9;
      v13 = v10();

      LOBYTE(v12) = (*&stru_298.segname[(swift_isaMask & *v13) + 8])();
      if (v12 > 1u)
      {
      }

      else
      {
        v14 = sub_ABB3C0();

        if ((v14 & 1) == 0)
        {
LABEL_10:

          goto LABEL_11;
        }
      }

      if (qword_DE6CA8 != -1)
      {
        swift_once();
      }

      v15 = qword_E718E8;
      v16 = *(v7 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_bottomStackItemBackgroundColor);
      *(v7 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_bottomStackItemBackgroundColor) = qword_E718E8;
      v17 = v15;
      sub_A335C(v16);

      sub_A3008(0);
      goto LABEL_10;
    }
  }

LABEL_11:
  if ([v1 isViewLoaded])
  {
    result = [*&v1[v2] view];
    if (result)
    {
      v19 = result;
      result = [v1 view];
      if (result)
      {
        v20 = result;
        [result bounds];
        [v19 setFrame:?];

        result = [v1 view];
        if (result)
        {
          v21 = result;
          [result addSubview:v19];

          goto LABEL_16;
        }

LABEL_25:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_16:
  [*&v1[v2] didMoveToParentViewController:v1];
  v22 = *&v1[v2];
  v23 = [v1 title];
  [v22 setTitle:v23];

  sub_65DA0();
  sub_655C4();
  sub_658CC();
  if (v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_appearanceState] == 128)
  {
    v24 = 0x80;
  }

  else
  {
    v24 = -127;
  }

  if (v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_appearanceState] >= 0)
  {
    v25 = v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_appearanceState];
  }

  else
  {
    v25 = v24;
  }

  v26 = v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerAppearanceState];
  v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerAppearanceState] = v25;
  v27 = *&v1[v2];
  sub_69014(v26, v25, v28, v29);

  sub_61E28(2);
  v30 = *&v1[v2];
  [v30 preferredContentSize];
  [v1 setPreferredContentSize:?];

  [v1 setNeedsStatusBarAppearanceUpdate];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAA80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  v32 = [*&v1[v2] navigationItem];
  KeyPath = swift_getKeyPath();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAB00);
  *(inited + 56) = v34;
  *(inited + 64) = &protocol witness table for KeyValueObservationTrigger<A, B>;
  *(inited + 32) = v32;
  *(inited + 40) = KeyPath;
  v35 = [*&v1[v2] navigationItem];
  v36 = swift_getKeyPath();
  *(inited + 96) = v34;
  *(inited + 104) = &protocol witness table for KeyValueObservationTrigger<A, B>;
  *(inited + 72) = v35;
  *(inited + 80) = v36;
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();

  v38 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 0, sub_70CD0, v37);

  *&v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentNavigationItemBinding] = v38;
}

id sub_61BA0(void *a1)
{
  v2 = v1;
  [a1 willMoveToParentViewController:0];
  if ([a1 isViewLoaded])
  {
    result = [a1 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
    [result removeFromSuperview];
  }

  type metadata accessor for JSVerticalStackViewController();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pageHeaderContentViewController);
    if (v7)
    {
      v8 = v7;
      v9 = a1;
      v10 = v8;
      sub_AB9730();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
    }

    else
    {
      v11 = a1;
    }

    v12 = a1;
    sub_4D4068(_swiftEmptyArrayStorage, 0);
  }

  v13 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerAppearanceState;
  v14 = *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerAppearanceState);
  if (!(v14 >> 6))
  {
    [a1 endAppearanceTransition];
LABEL_16:
    [a1 beginAppearanceTransition:0 animated:0];
    goto LABEL_17;
  }

  if (v14 >> 6 != 1)
  {
    if (v14 == 128)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_17:
  [a1 endAppearanceTransition];
LABEL_18:
  *(v2 + v13) = 0x80;
  v15 = *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController);
  swift_getObjectType();
  v16 = swift_conformsToProtocol2();
  if (v16)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    v18 = v16;
    ObjectType = swift_getObjectType();
    v20 = *(v18 + 16);
    v21 = v15;
    v20(0, ObjectType, v18);
    (*(v18 + 40))(0, ObjectType, v18);
  }

  return [a1 removeFromParentViewController];
}

id sub_61E28(char a1)
{
  v2 = v1;
  result = [v2 isViewLoaded];
  if (!result)
  {
    return result;
  }

  if (a1 == 2)
  {
    static ApplicationCapabilities.shared.getter(v21);
    sub_70C54(v21);
    if (BYTE1(v21[0]))
    {
LABEL_9:
      v9 = *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_offlineMessageView);
      *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_offlineMessageView) = 0;
      if (v9)
      {
        [v9 removeFromSuperview];
      }

      result = 0;
      v10 = *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isShowingOfflineMessage);
      *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isShowingOfflineMessage) = 0;
      if (v10)
      {
        return (*(&stru_388.flags + (swift_isaMask & *v2)))(result);
      }

      return result;
    }
  }

  else if (a1)
  {
    goto LABEL_9;
  }

  v5 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_canShowOfflineMessage;
  swift_beginAccess();
  if (*(v2 + v5) != 1)
  {
    goto LABEL_9;
  }

  v6 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_offlineMessageView;
  v7 = *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_offlineMessageView);
  if (v7)
  {
    v8 = *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_offlineMessageView);
  }

  else
  {
    v8 = sub_693F8(v2);
    v7 = 0;
  }

  v11 = v7;
  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  v12 = result;
  [result addSubview:v8];

  result = [v2 view];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v13 = result;
  [result bringSubviewToFront:v8];

  result = [v2 view];
  if (!result)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v14 = result;
  [result bounds];
  [v8 setFrame:?];

  v15 = *(v2 + v6);
  *(v2 + v6) = v8;
  if (!v15)
  {
    v19 = v8;
    v17 = 0;
    goto LABEL_22;
  }

  sub_13C80(0, &qword_DF12A0);
  v16 = v8;
  v17 = v15;
  v18 = sub_ABA790();

  if ((v18 & 1) == 0)
  {
LABEL_22:
    [v17 removeFromSuperview];
    v16 = v8;
  }

  v20 = *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isShowingOfflineMessage);
  result = &dword_0 + 1;
  *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isShowingOfflineMessage) = 1;
  if ((v20 & 1) == 0)
  {
    return (*(&stru_388.flags + (swift_isaMask & *v2)))(result);
  }

  return result;
}

uint64_t sub_620B4(unint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330);
  __chkstk_darwin(v6 - 8);
  v8 = &v95 - v7;
  v9 = *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_viewModelRevision);
  v10 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_40;
  }

  *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_viewModelRevision) = v10;
  v11 = *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController);
  swift_getObjectType();
  v12 = swift_conformsToProtocol2();
  if (v12)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = v12;
    ObjectType = swift_getObjectType();
    (*(v14 + 8))(ObjectType, v14);
  }

  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  if ((~a1 & 0xF000000000000007) != 0)
  {
    switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
    {
      case 1uLL:
      case 2uLL:
      case 3uLL:
      case 4uLL:
      case 5uLL:
      case 0xBuLL:
      case 0xCuLL:
      case 0xDuLL:
      case 0xEuLL:
      case 0xFuLL:
      case 0x10uLL:
      case 0x11uLL:
      case 0x12uLL:
      case 0x13uLL:
      case 0x14uLL:
      case 0x15uLL:
      case 0x16uLL:
      case 0x17uLL:
      case 0x18uLL:
      case 0x1BuLL:
      case 0x1EuLL:
      case 0x1FuLL:
      case 0x20uLL:
      case 0x21uLL:
      case 0x22uLL:
      case 0x23uLL:
      case 0x24uLL:
      case 0x25uLL:
      case 0x26uLL:
      case 0x27uLL:
      case 0x29uLL:
      case 0x2BuLL:
        goto LABEL_41;
      case 6uLL:
        v37 = objc_allocWithZone(type metadata accessor for JSVerticalStackViewModelViewController());
        *&v37[OBJC_IVAR____TtC16MusicApplication38JSVerticalStackViewModelViewController_lastSeenScrollableHeight] = 0;
        *&v37[OBJC_IVAR____TtC16MusicApplication38JSVerticalStackViewModelViewController_verticalStack] = a1 & 0xFFFFFFFFFFFFFF9;
        v95 = ((swift_isaMask & *(a1 & 0xFFFFFFFFFFFFFF9)) + 256);
        v96 = v10;
        v38 = *v95;
        sub_70E5C(a1);
        v39 = (a1 & 0xFFFFFFFFFFFFFF9);
        v40 = v38();
        v36 = sub_9F704(v40);
        v95 = *(&stru_B8.reloff + (swift_isaMask & *v39));
        v41 = v36;
        (v95)(v36, &off_D0CED8);
        v10 = v96;

        goto LABEL_19;
      case 7uLL:
        v45 = type metadata accessor for JSMenuViewController();
        v46 = objc_allocWithZone(v45);
        *&v46[qword_DE9D50] = 0;
        *&v46[qword_DE9D58] = 0;
        v46[qword_DE9D60] = 0;
        *&v46[qword_DE9D70] = 0;
        v47 = qword_DE9D78;
        v48 = sub_AB3820();
        (*(*(v48 - 8) + 56))(&v46[v47], 1, 1, v48);
        *&v46[qword_DE9D80] = 0;
        *&v46[qword_DE9D68] = a1 & 0xFFFFFFFFFFFFFF9;
        sub_70E5C(a1);
        v113.receiver = v46;
        v113.super_class = v45;
        v49 = (a1 & 0xFFFFFFFFFFFFFF9);
        v33 = objc_msgSendSuper2(&v113, "init");
        goto LABEL_25;
      case 8uLL:
        v42 = objc_allocWithZone(type metadata accessor for JSSettingsViewController());
        sub_70E5C(a1);
        v33 = sub_3F346C((a1 & 0xFFFFFFFFFFFFFF9));
        goto LABEL_25;
      case 9uLL:
        v43 = objc_allocWithZone(type metadata accessor for JSMessageViewController());
        *&v43[OBJC_IVAR____TtC16MusicApplication23JSMessageViewController____lazy_storage___noContentView] = 0;
        *&v43[OBJC_IVAR____TtC16MusicApplication23JSMessageViewController_messageViewModel] = a1 & 0xFFFFFFFFFFFFFF9;
        sub_70E5C(a1);
        v44 = (a1 & 0xFFFFFFFFFFFFFF9);
        v33 = sub_9F704(_swiftEmptyArrayStorage);
        goto LABEL_25;
      case 0xAuLL:
        v34 = objc_allocWithZone(UIViewController);
        v35 = (a1 & 0xFFFFFFFFFFFFFF9);
        v36 = [v34 init];
        *(v16 + 16) = v36;
        goto LABEL_27;
      case 0x19uLL:
        v61 = objc_allocWithZone(type metadata accessor for JSSocialProfileVerticalStackViewController());
        sub_70E5C(a1);
        v33 = sub_1960D0((a1 & 0xFFFFFFFFFFFFFF9));
        goto LABEL_25;
      case 0x1AuLL:
        v51 = objc_allocWithZone(type metadata accessor for JSSocialOnboardingVerticalStackViewController());
        sub_70E5C(a1);
        v33 = sub_1799F0((a1 & 0xFFFFFFFFFFFFFF9));
        goto LABEL_25;
      case 0x1CuLL:
        v50 = objc_allocWithZone(type metadata accessor for JSSocialProfileCollectionViewController());
        sub_70E5C(a1);
        v33 = sub_1AFD88((a1 & 0xFFFFFFFFFFFFFF9));
        goto LABEL_25;
      case 0x1DuLL:
        v62 = objc_allocWithZone(type metadata accessor for JSSocialProfileEditorViewController());
        sub_70E5C(a1);
        v33 = sub_4E1E34((a1 & 0xFFFFFFFFFFFFFF9));
        goto LABEL_25;
      case 0x28uLL:
        objc_allocWithZone(_s14ViewControllerCMa());
        sub_70E5C(a1);
        v63 = (a1 & 0xFFFFFFFFFFFFFF9);
        v33 = sub_2882EC(a1 & 0xFFFFFFFFFFFFFF9);
        goto LABEL_25;
      case 0x2AuLL:
        v52 = type metadata accessor for JSUserNotificationAuthorizationViewController();
        v53 = objc_allocWithZone(v52);
        *&v53[OBJC_IVAR____TtC16MusicApplication45JSUserNotificationAuthorizationViewController_engagementViewController] = 0;
        *&v53[OBJC_IVAR____TtC16MusicApplication45JSUserNotificationAuthorizationViewController_userNotificationAuthorizationViewModel] = a1 & 0xFFFFFFFFFFFFFF9;
        sub_70E5C(a1);
        v114.receiver = v53;
        v114.super_class = v52;
        v54 = (a1 & 0xFFFFFFFFFFFFFF9);
        v55 = objc_msgSendSuper2(&v114, "initWithNibName:bundle:", 0, 0);
        v56 = objc_opt_self();
        v36 = v55;
        v57 = [v56 engagementRequestForFullSheet];
        v58 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v121 = sub_14F30;
        v122 = v58;
        aBlock = _NSConcreteStackBlock;
        v118 = 1107296256;
        v119 = sub_151E0;
        v120 = &block_descriptor_140;
        v59 = _Block_copy(&aBlock);

        [v57 addFinishBlock:v59];
        _Block_release(v59);

LABEL_19:
        v60 = *(v16 + 16);
        *(v16 + 16) = v36;
        goto LABEL_26;
      case 0x2CuLL:
        v64 = objc_allocWithZone(type metadata accessor for JSWhatsNewViewController(0));
        sub_70E5C(a1);
        v33 = sub_3ACE9C((a1 & 0xFFFFFFFFFFFFFF9));
        goto LABEL_25;
      default:
        if ((*(a1 + OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_itemKind) & 0xFE) == 2)
        {
          v17 = type metadata accessor for JSContainerDetailModelRequest();
          v18 = objc_allocWithZone(v17);
          v19 = &v18[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
          *v19 = 0;
          v19[1] = 0;
          v18[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption] = 13;
          swift_unknownObjectWeakInit();
          v20 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel;
          *&v18[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel] = 0;
          v18[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_isCancelled] = 0;
          *&v18[v20] = a1;
          sub_70E5C(a1);
          sub_70E5C(a1);
          v21 = (a1 & 0xFFFFFFFFFFFFFF9);
          sub_70E5C(a1);
          v97.receiver = v18;
          v97.super_class = v17;
          v22 = a2;
          v23 = objc_msgSendSuper2(&v97, "init");
          sub_13C80(0, &qword_DE8E90);
          v24 = v23;
          v25 = static MPModelAlbum.defaultMusicKind.getter();
          [v24 setSectionKind:v25];

          v26 = [objc_opt_self() kindWithVariants:3];
          [v24 setItemKind:v26];

          v27 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_prominentItemIdentifiers;
          swift_beginAccess();
          v28 = *(a1 + v27);
          v29 = v28;
          sub_2D4D8(a1);
          sub_2D4D8(a1);
          v30 = JSViewModel.playActivityRecommendationData.getter();
          v96 = v31;
          sub_466A4(0, 0xF000000000000000);
          *v125 = v115;
          *&v125[3] = *(&v115 + 3);
          aBlock = v24;
          v118 = a1;
          v119 = 0;
          v120 = 0;
          v121 = a2;
          v122 = 0;
          v123 = v28;
          v124 = 0;
          v126 = v30;
          v127 = v96;
          v102 = v24;
          v103 = a1;
          v104 = 0;
          v105 = 0;
          v106 = a2;
          v107 = 0;
          v108 = v28;
          v109 = 0;
          *&v110[3] = *(&v115 + 3);
          *v110 = v115;
          v111 = v30;
          v112 = v96;
          sub_70EB0(&aBlock, &v98);
          sub_70F0C(&v102);
          v32 = objc_allocWithZone(type metadata accessor for AlbumDetailViewController());
          v33 = sub_2D72DC(&aBlock);
        }

        else
        {
          v65 = type metadata accessor for JSContainerDetailModelRequest();
          v66 = objc_allocWithZone(v65);
          v67 = &v66[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
          *v67 = 0;
          v67[1] = 0;
          v66[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption] = 13;
          swift_unknownObjectWeakInit();
          v68 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel;
          *&v66[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel] = 0;
          v66[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_isCancelled] = 0;
          *&v66[v68] = a1;
          sub_70E5C(a1);
          sub_70E5C(a1);
          sub_70E5C(a1);
          sub_70E5C(a1);
          sub_70E5C(a1);
          v101.receiver = v66;
          v101.super_class = v65;
          v69 = a2;
          v70 = objc_msgSendSuper2(&v101, "init");
          sub_13C80(0, &qword_DE9C10);
          v71 = static MPModelPlaylistEntry.defaultMusicKind.getter();
          v72 = objc_opt_self();
          v73 = v70;
          v74 = [v72 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v71 options:0];
          [v73 setSectionKind:v74];

          [v73 setItemKind:v71];
          v75 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_prominentItemIdentifiers;
          swift_beginAccess();
          v76 = *(a1 + v75);
          v77 = v76;
          sub_2D4D8(a1);
          sub_2D4D8(a1);
          v78 = JSViewModel.playActivityRecommendationData.getter();
          v96 = v79;
          sub_466A4(0, 0xF000000000000000);
          *v125 = v115;
          *&v125[3] = *(&v115 + 3);
          aBlock = v73;
          v118 = a1;
          v119 = 0;
          v120 = 0;
          v121 = a2;
          v122 = 0;
          v123 = v76;
          v124 = 0;
          v126 = v78;
          v127 = v96;
          v102 = v73;
          v103 = a1;
          v104 = 0;
          v105 = 0;
          v106 = a2;
          v107 = 0;
          v108 = v76;
          v109 = 0;
          *&v110[3] = *(&v115 + 3);
          *v110 = v115;
          v111 = v78;
          v112 = v96;
          sub_70EB0(&aBlock, &v98);
          sub_70F0C(&v102);
          v80 = objc_allocWithZone(type metadata accessor for PlaylistDetailViewController());
          v33 = sub_39891C(&aBlock, 0);
        }

LABEL_25:
        v36 = v33;
        v60 = *(v16 + 16);
        *(v16 + 16) = v33;
LABEL_26:

LABEL_27:
        sub_2D4D8(a1);
        if (!v36)
        {
          break;
        }

        goto LABEL_29;
    }
  }

  v81 = objc_allocWithZone(type metadata accessor for JSLoadingViewController());
  *&v81[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_loadingView] = 0;
  *&v81[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageView] = 0;
  *&v81[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_scriptingBridgeDidFailInitializationDidChangeObserver] = 0;
  v81[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_isAllowedToShowLoadingView] = 0;
  v81[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_isAllowedToShowErrorMessageView] = 0;
  *&v81[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageTask] = 0;
  *&v81[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_loadingIndicatorTask] = 0;
  v36 = sub_9F704(_swiftEmptyArrayStorage);
  v82 = *(v16 + 16);
  *(v16 + 16) = v36;

  if (!v36)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    sub_ABAFD0();
    __break(1u);
    JUMPOUT(0x635A8);
  }

LABEL_29:
  v115 = v36;
  sub_13C80(0, &qword_DE7500);
  v83 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAB10);
  if (swift_dynamicCast())
  {
    sub_70DF8(&v98, &v102);
    v84 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_metricsPageProperties;
    swift_beginAccess();
    sub_15F84(v3 + v84, v8, &unk_DF1330);
    v85 = v105;
    v86 = v106;
    __swift_mutable_project_boxed_opaque_existential_1(&v102, v105);
    v86[2](v8, v85, v86);
    __swift_destroy_boxed_opaque_existential_0(&v102);
  }

  else
  {
    v100 = 0;
    v98 = 0u;
    v99 = 0u;
    sub_12E1C(&v98, &qword_DEAB18);
  }

  *(v3 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isPreparingContentViewController) = 1;
  v87 = *(v16 + 16);
  if (!v87 || (v116 = *(v16 + 16), v88 = v87, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAB28), (swift_dynamicCast() & 1) == 0))
  {
    v100 = 0;
    v98 = 0u;
    v99 = 0u;
    goto LABEL_37;
  }

  if (!*(&v99 + 1))
  {
LABEL_37:
    sub_12E1C(&v98, &qword_DEAB20);
    sub_69678(v3, v10, v16);
  }

  sub_70DF8(&v98, &v102);
  v89 = v105;
  v90 = v106;
  __swift_project_boxed_opaque_existential_1(&v102, v105);
  v91 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v92 = swift_allocObject();
  v92[2] = v91;
  v92[3] = v10;
  v92[4] = v16;
  v93 = v90[1];

  (v93)(sub_70E50, v92, v89, v90);

  __swift_destroy_boxed_opaque_existential_0(&v102);
}

uint64_t _s16MusicApplication22JSDrivenViewControllerC09componentE0_19didUpdateHeaderItemy0A6JSCore011JSComponentE0C_AF08JSHeaderJ0CtF_0()
{
  v5 = v0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v129 = &v121 - v10;
  v11 = sub_AB31C0();
  v12 = __chkstk_darwin(v11);
  v15 = *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_headerItemRevisionID);
  v16 = v15 + 1;
  if (__OFADD__(v15, 1))
  {
    __break(1u);
    goto LABEL_129;
  }

  v125 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = v14;
  v128 = v12;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_headerItemRevisionID) = v16;
  v17 = swift_allocObject();
  v134 = v17;
  *(v17 + 16) = 0;
  v18 = v17 + 16;
  v19 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalParallaxViewController;
  swift_beginAccess();
  v1 = *(v0 + v19);
  v20 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
  swift_beginAccess();
  v130 = v20;
  v21 = *&v20[v5];
  v131 = v19;
  v133 = v18;
  v124 = v9;
  if (!v21)
  {
    v28 = v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_wantsPromotionalParallaxViewController;
    *(v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_wantsPromotionalParallaxViewController) = 0;
    v30 = v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isArtistPromotionalLayoutStyle;
    v31 = *(v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isArtistPromotionalLayoutStyle);
    v32 = v1;
    LODWORD(v33) = 0;
    v2 = 0;
    goto LABEL_23;
  }

  v22 = *&stru_B8.segname[(swift_isaMask & *v21) + 8];
  v23 = v1;
  v24 = v21;
  v2 = v22();

  if ((*(v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_shouldIgnorePromotionalProperties) & 1) != 0 || !v2)
  {
    v28 = v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_wantsPromotionalParallaxViewController;
    *(v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_wantsPromotionalParallaxViewController) = 0;
    v30 = v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isArtistPromotionalLayoutStyle;
    v31 = *(v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isArtistPromotionalLayoutStyle);
    if (!v2)
    {
      LODWORD(v33) = 0;
      LOBYTE(v21) = 0;
      goto LABEL_23;
    }

    v34 = v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isArtistPromotionalLayoutStyle;
  }

  else
  {
    v25 = (*(&stru_1F8.size + (swift_isaMask & *v2)))();
    if (v25 || (v25 = (*(&stru_1A8.reserved2 + (swift_isaMask & *v2)))()) != 0)
    {
      v26 = v25;
      v27 = 1;
      goto LABEL_8;
    }

    v54 = (*(&stru_2E8.size + (swift_isaMask & *v2)))();
    if (v54)
    {
      v26 = v54;
      v27 = (*&stru_B8.segname[(swift_isaMask & *v54) + 16])();
LABEL_8:

      if ((v27 & 1) == 0 || v1)
      {
        v28 = v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_wantsPromotionalParallaxViewController;
        v29 = v27 & 1;
      }

      else
      {
        type metadata accessor for PromotionalParallaxViewController();
        v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v28 = v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_wantsPromotionalParallaxViewController;
        v29 = 1;
      }

      *v28 = v29;
      v34 = v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isArtistPromotionalLayoutStyle;
      v31 = *(v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isArtistPromotionalLayoutStyle);
      goto LABEL_16;
    }

    v28 = v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_wantsPromotionalParallaxViewController;
    *(v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_wantsPromotionalParallaxViewController) = 0;
    v34 = v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isArtistPromotionalLayoutStyle;
    v31 = *(v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isArtistPromotionalLayoutStyle);
  }

LABEL_16:
  v35 = *&stru_298.segname[(swift_isaMask & *v2) + 8];
  v36 = v2;
  v37 = v35();

  if (!v37)
  {
    v30 = v34;
LABEL_20:
    LOBYTE(v21) = sub_ABB3C0();

    LODWORD(v33) = 1;
    goto LABEL_23;
  }

  v30 = v34;
  if (v37 == 1)
  {
    goto LABEL_20;
  }

  LODWORD(v33) = 1;
  LOBYTE(v21) = 1;
LABEL_23:
  *v30 = v21 & 1;
  v132 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalLayoutStyleDidChange;
  *(v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalLayoutStyleDidChange) = (v31 ^ v21) & 1;
  if (v1)
  {
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    *(v39 + 24) = v16;

    sub_370294(v2, sub_710D4, v39);
  }

  v135 = v30;
  if (v33)
  {
    v40 = *(&stru_158.reloff + (swift_isaMask & *v2));
    v3 = v2;
    v41 = v40();
    v43 = v42;
    v123 = v41;
    v44 = sub_AB9260();
    [v5 setTitle:v44];

    v45 = (*(&stru_2E8.size + (swift_isaMask & *v3)))();
    if (v45)
    {
      v46 = v45;
      v126 = (*&stru_B8.segname[(swift_isaMask & *v45) + 16])();
    }

    else
    {
      v126 = 0;
    }

    v47 = [v5 traitCollection];
    v48 = UITraitCollection.isMediaPicker.getter();

    if (v48)
    {
      if (*v28)
      {
        v121 = v1;
        v122 = v43;
        v49 = 0;
        goto LABEL_47;
      }

      v53 = [v5 navigationItem];
      [v53 setLargeTitleDisplayMode:1];

LABEL_35:
      sub_6989C(v5, v3);
      sub_64C64(0);

      goto LABEL_36;
    }

    v50 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_forceShowingLargeFixedTitleHeader;
    v51 = swift_beginAccess();
    v52 = *(v5 + v50);
    v122 = v43;
    v121 = v1;
    if (v52)
    {
      v49 = 1;
      goto LABEL_47;
    }

    if ((*&stru_1A8.segname[(swift_isaMask & *v3) + 8])(v51) == 1)
    {

      v49 = 1;
LABEL_47:
      v59 = [v5 navigationItem];
      [v59 setLargeTitleDisplayMode:2];

      v60 = [v5 navigationItem];
      if (v126 & 1 | ((*v28 & 1) == 0))
      {
        v61 = 3;
      }

      else
      {
        v61 = 2;
      }

      sub_3872E8(v61);

      if (*v28 == 1 && *v135 == 1)
      {
        v62 = [v5 navigationItem];
        v63 = [v62 navigationBar];

        if (v63)
        {
          v64 = [objc_opt_self() whiteColor];
          [v63 setTintColor:v64];
        }
      }

      v65 = v33;
      if (v49)
      {
        v66 = *&v130[v5];
        v1 = v121;
        if (v66)
        {
          v67 = *&stru_108.segname[swift_isaMask & *v66];
          v68 = v66;
          v69 = v67();

          if ((~v69 & 0xF000000000000007) != 0)
          {
            v70 = [v5 navigationItem];
            v71 = v70;
            if (((v69 >> 58) & 0x3C | (v69 >> 1) & 3) == 0x1A)
            {
              [v70 setBackButtonTitle:0];
            }

            else
            {
              v73 = sub_AB9260();
              [v71 setBackButtonTitle:v73];

              v71 = v73;
            }

            sub_2D4D8(v69);
          }
        }

        v74 = [v5 navigationItem];
        [v74 setTitle:0];

        v72 = v135;
        if (v126)
        {
          v75 = [v5 traitCollection];
          v76 = [v75 horizontalSizeClass];

          sub_64C64(v76 == &dword_0 + 1);
        }
      }

      else
      {
        sub_6989C(v5, v3);
        v72 = v135;
        v1 = v121;
        if (!v48)
        {
LABEL_67:
          if (*v72 != 1)
          {
LABEL_70:

            LOBYTE(v33) = v65;
            goto LABEL_71;
          }

          v33 = v129;
          (*(&stru_338.reloff + (swift_isaMask & *v3)))();
          v77 = v127;
          v78 = v128;
          if ((*(v127 + 48))(v33, 1, v128) == 1)
          {
            sub_12E1C(v33, &unk_DF2AE0);
            goto LABEL_70;
          }

          v130 = v3;
          v99 = v125;
          (*(v77 + 32))(v125, v33, v78);
          v100 = v77;
          v101 = *(v5 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_artistRadioStationController);
          LOBYTE(v33) = v65;
          if (v101)
          {
            v102 = v78;
            v103 = v124;
            (*(v100 + 16))(v124, v99, v102);
            (*(v100 + 56))(v103, 0, 1, v102);
            v104 = v101;
            sub_26B814(v103);
            (*(v100 + 8))(v99, v102);

            goto LABEL_71;
          }

          (*(v100 + 8))(v99, v78);

LABEL_36:

          goto LABEL_71;
        }

        if (*v135 != 1)
        {
          goto LABEL_70;
        }
      }

      sub_699D4(v5, v134, v3);
      goto LABEL_67;
    }

    v55 = sub_ABB3C0();

    v49 = v55 | v126;
    if (*v28 & 1) != 0 || ((v55 | v126))
    {
      goto LABEL_47;
    }

    v4 = v33;
    if ((*&stru_298.segname[(swift_isaMask & *v3) + 8])(v56))
    {
      v57 = [v5 navigationItem];
      v58 = sub_387998();
      v1 = v121;
      if (v58 <= 2)
      {
        v108 = sub_ABB3C0();

        if (v108)
        {
LABEL_105:

          goto LABEL_106;
        }
      }

      else if (v58 == 3)
      {

LABEL_106:
        LOBYTE(v33) = v4;
        goto LABEL_35;
      }

      if (qword_DE6B20 == -1)
      {
LABEL_104:
        v109 = qword_E01290;
        v110 = sub_AB9260();
        objc_setAssociatedObject(v57, v109, v110, &dword_0 + 1);

        [v57 _setManualScrollEdgeAppearanceEnabled:0];
        [v57 _setAutoScrollEdgeTransitionDistance:16.0];
        [v57 _setManualScrollEdgeAppearanceEnabled:1];
        goto LABEL_105;
      }

LABEL_122:
      swift_once();
      goto LABEL_104;
    }

    v105 = (*&stru_1A8.segname[(swift_isaMask & *v3) + 8])();
    v1 = v121;
    if (v105)
    {
      if (v105 == 1)
      {
        goto LABEL_35;
      }

      v106 = [v5 navigationItem];
      [v106 setLargeTitleDisplayMode:2];

      v0 = [v5 navigationItem];
      v107 = sub_387998();
      if (v107 <= 1)
      {
        if (!v107)
        {

LABEL_127:
          LOBYTE(v33) = v4;
          goto LABEL_35;
        }
      }

      else if (v107 != 2 && v107 != 3)
      {
        goto LABEL_124;
      }

      v118 = sub_ABB3C0();

      if (v118)
      {
LABEL_126:

        goto LABEL_127;
      }

LABEL_124:
      if (qword_DE6B20 == -1)
      {
LABEL_125:
        v119 = qword_E01290;
        v120 = sub_AB9260();
        objc_setAssociatedObject(v0, v119, v120, &dword_0 + 1);

        [v0 _setManualScrollEdgeAppearanceEnabled:1];
        [v0 _setManualScrollEdgeAppearanceProgress:1.0];
        [v0 _setManualScrollEdgeAppearanceEnabled:0];
        [v0 _setAutoScrollEdgeTransitionDistance:0.0];
        goto LABEL_126;
      }

LABEL_129:
      swift_once();
      goto LABEL_125;
    }

    v111 = v122;
    v112 = [v5 navigationItem];
    v113 = v112;
    v114 = HIBYTE(v111) & 0xF;
    if ((v111 & 0x2000000000000000) == 0)
    {
      v114 = v123 & 0xFFFFFFFFFFFFLL;
    }

    if (v114)
    {
      v115 = 1;
    }

    else
    {
      v115 = 2;
    }

    [v112 setLargeTitleDisplayMode:{v115, v121}];

    v57 = [v5 navigationItem];
    v116 = sub_387998();
    if (v116 <= 2)
    {
      v117 = sub_ABB3C0();

      if (v117)
      {

        goto LABEL_120;
      }
    }

    else if (v116 == 3)
    {

LABEL_120:
      LOBYTE(v33) = v4;
      goto LABEL_35;
    }

    if (qword_DE6B20 == -1)
    {
      goto LABEL_104;
    }

    goto LABEL_122;
  }

LABEL_71:
  v79 = v33;
  v80 = v133;
  v81 = swift_beginAccess();
  v82 = *v80;
  v83 = (*&stru_1F8.sectname[swift_isaMask & *v5])(v81);
  v84 = v83;
  if (v82)
  {
    v85 = v132;
    if (!v83 || (type metadata accessor for PageHeaderContentViewController(), v86 = v82, v87 = sub_ABA790(), v86, v84, (v87 & 1) == 0))
    {
LABEL_83:
      if ((v79 & *v135) == 1)
      {
        v92 = (*(&stru_1F8.size + (swift_isaMask & *v2)))();
        if (v92)
        {

          goto LABEL_87;
        }

        v93 = (*(&stru_1A8.reserved2 + (swift_isaMask & *v2)))();

        if (v93)
        {
LABEL_87:
          (*&stru_1F8.segname[(swift_isaMask & *v5) - 8])(0);
          if (v1)
          {
            v94 = v82;
            sub_37048C(v82);
          }

          goto LABEL_90;
        }
      }

      v95 = *&stru_1F8.segname[(swift_isaMask & *v5) - 8];
      v96 = v82;
      v95(v82);
LABEL_90:
      v97 = v1;
      JSDrivenViewController.promotionalParallaxViewController.setter(v1);
      sub_655C4();
      sub_658CC();
      goto LABEL_91;
    }
  }

  else
  {
    v85 = v132;
    if (v83)
    {

      goto LABEL_83;
    }
  }

  v88 = *(v5 + v131);
  if (v1)
  {
    if (!v88)
    {
      goto LABEL_83;
    }

    type metadata accessor for PromotionalParallaxViewController();
    v89 = v88;
    v90 = v1;
    v91 = sub_ABA790();

    if ((v91 & 1) == 0)
    {
      goto LABEL_83;
    }
  }

  else if (v88)
  {
    goto LABEL_83;
  }

  if (*(v5 + v85) == 1)
  {
    goto LABEL_83;
  }

LABEL_91:
  sub_65DA0();
  [v5 accessibilityUpdateForHeaderItemChange];

  *(v5 + v85) = 0;
}

void sub_64B24(char a1)
{
  v3 = [v1 contentScrollView];
  if (v3 && (v4 = v3, [v3 contentOffset], v6 = v5, v4, v6 < 0.0))
  {
    v7 = [v1 navigationItem];
    v8 = [v7 searchController];

    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (*(v1 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_needsContentOffsetResetOnViewDidAppear) & 1) != 0 || v9 || (a1)
  {
    *(v1 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_needsContentOffsetResetOnViewDidAppear) = 0;
    v10 = [v1 contentScrollView];
    if (v10)
    {
      v11 = v10;
      [v10 _scrollToTopIfPossible:1];
    }
  }
}

void sub_64C64(int a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = [v1 navigationItem];
  v6 = sub_38720C() & 1;

  if (v6 == v4)
  {
    v12 = 0;
LABEL_5:

    sub_64B24(v12);
    return;
  }

  v7 = [v2 contentScrollView];
  if (v7)
  {
    v8 = v7;
    [v7 contentOffset];
    v10 = v9;

    v11 = v10 < 0.0;
  }

  else
  {
    v11 = 0;
  }

  v13 = [v2 view];
  if (!v13)
  {
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = [v13 _isInAWindow];

  v16 = [v2 navigationItem];
  if ((sub_38720C() & 1) != (a1 & 1))
  {
    if (qword_DE6B08 != -1)
    {
      swift_once();
    }

    v17 = qword_E01278;
    isa = sub_AB9890().super.super.isa;
    objc_setAssociatedObject(v16, v17, isa, &dword_0 + 3);

    v16 = isa;
  }

  if (v11 & ~a1)
  {
    if (!v15)
    {
      v2[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_needsContentOffsetResetOnViewDidAppear] = 1;
      return;
    }

    v12 = 1;
    goto LABEL_5;
  }

  if (v2[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_wantsPromotionalParallaxViewController] == 1)
  {
    v19 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
    swift_beginAccess();
    v20 = *&v2[v19];
    if (v20)
    {
      v21 = *&stru_B8.segname[(swift_isaMask & *v20) + 8];
      v22 = v20;
      v23 = v21();

      v24 = (*(&stru_2E8.size + (swift_isaMask & *v23)))();
      if (v24)
      {
        if ((*&stru_B8.segname[(swift_isaMask & *v24) + 16])())
        {
          if (v15)
          {
            sub_64B24(1);
          }

          else
          {
            v25 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalParallaxViewController;
            swift_beginAccess();
            v26 = *&v2[v25];
            if (v26)
            {
              *(v26 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_setNeedsScrollViewReset) = 1;
            }

            v2[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_needsContentOffsetResetOnViewDidAppear] = 1;
          }
        }
      }
    }
  }
}

void sub_64FAC(char *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (!v5)
  {
    v44 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_accessoryView];
    *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_accessoryView] = 0;

    v45 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageHeaderContentView];
    v46 = *(v45 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView);
    *(v45 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView) = 0;
    sub_34549C(v46);

    v47 = &a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageTitle];
    v48 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageTitle];
    v49 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageTitle + 8];
    *v47 = 0;
    *(v47 + 1) = 0xE000000000000000;
    sub_337BF0(v48, v49);

    v50 = &a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageSupertitle];
    v51 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageSupertitle];
    v52 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageSupertitle + 8];
    *v50 = 0;
    *(v50 + 1) = 0xE000000000000000;
    sub_337D34(v51, v52);

    return;
  }

  v6 = *&stru_B8.segname[(swift_isaMask & *v5) + 8];
  v7 = v5;
  v8 = v6();

  v9 = (*(&stru_158.reloff + (swift_isaMask & *v8)))();
  v10 = &a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageTitle];
  v11 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageTitle];
  v12 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageTitle + 8];
  *v10 = v9;
  v10[1] = v13;
  sub_337BF0(v11, v12);

  v15 = (*&stru_158.segname[(swift_isaMask & *v8) - 8])(v14);
  v16 = &a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageSupertitle];
  v17 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageSupertitle];
  v18 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageSupertitle + 8];
  *v16 = v15;
  v16[1] = v19;
  sub_337D34(v17, v18);

  v21 = (*(&stru_108.size + (swift_isaMask & *v8)))(v20);
  v22 = &a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageSubtitle];
  v23 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageSubtitle];
  v24 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageSubtitle + 8];
  *v22 = v21;
  v22[1] = v25;
  sub_337D0C(v23, v24);

  v26 = [v2 traitCollection];
  v27 = [v26 preferredContentSizeCategory];

  v28 = sub_ABA310();
  v29 = sub_ABA330();

  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = 2;
  }

  if (v29)
  {
    v31 = 0;
  }

  else
  {
    v31 = 4;
  }

  v32 = *&v2[v4];
  if (v32)
  {
    v33 = *&stru_108.segname[swift_isaMask & *v32];
    v34 = v32;
    v35 = v33();

    if ((~v35 & 0xF000000000000007) != 0)
    {
      sub_2D4D8(v35);
      if (((v35 >> 58) & 0x3C | (v35 >> 1) & 3) == 0x1A)
      {
        v30 = 0;
        v31 = 0;
      }
    }
  }

  v36 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_lineBreakMode];
  *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_lineBreakMode] = v31;
  if (v36 != v31)
  {
    sub_345874(v31);
    if ([a1 isViewLoaded])
    {
      v37 = [a1 view];
      if (!v37)
      {
        __break(1u);
        goto LABEL_32;
      }

      v38 = v37;
      [v37 setNeedsLayout];
    }
  }

  v39 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_maximumNumberOfLinesInTitle];
  *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_maximumNumberOfLinesInTitle] = v30;
  if (v39 == v30)
  {
    goto LABEL_20;
  }

  sub_345868(v30);
  if (([a1 isViewLoaded] & 1) == 0)
  {
    goto LABEL_20;
  }

  v40 = [a1 view];
  if (!v40)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v41 = v40;
  [v40 setNeedsLayout];

LABEL_20:
  v42 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isArtistPromotionalLayoutStyle;
  if (v2[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isArtistPromotionalLayoutStyle])
  {
    v43 = (*(&stru_1F8.size + (swift_isaMask & *v8)))();
    if (v43 || (v43 = (*(&stru_1A8.reserved2 + (swift_isaMask & *v8)))()) != 0)
    {

      LOBYTE(v43) = 1;
    }
  }

  else
  {
    LOBYTE(v43) = 0;
  }

  sub_337EAC(v43);
  v53 = OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_isAccessoryViewAlignedWithText;
  a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_isAccessoryViewAlignedWithText] = v2[v42];
  sub_337AB4();
  v54 = OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_accessoryView;
  v55 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_accessoryView];
  if (v55 && (type metadata accessor for AccountButton(), (v56 = swift_dynamicCastClass()) != 0))
  {
    *&a1[v54] = v56;
    v57 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageHeaderContentView];
    v58 = *(v57 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView);
    *(v57 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView) = v56;
    v59 = v55;
    sub_34549C(v58);

    a1[v53] = 1;
    sub_337AB4();
    a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_isAccessoryViewAlignedWithTextForAccessibilitySizes] = 1;
    sub_337AC8();
  }

  else
  {
    *&a1[v54] = 0;
    v60 = *&a1[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageHeaderContentView];
    v61 = *(v60 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView);
    *(v60 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView) = 0;
    sub_34549C(v61);
  }
}

void sub_655C4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController);
  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = v3;
    v6 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
    swift_beginAccess();
    v7 = *(v0 + v6);
    if (v7)
    {
      v8 = *&stru_B8.segname[(swift_isaMask & *v7) + 8];
      v2;
      v9 = v7;
      v10 = v8();

      ObjectType = swift_getObjectType();
      (v5)[7](v10, ObjectType, v5);
    }

    else
    {
      v12 = v2;
    }

    v13 = swift_getObjectType();
    v14 = (*&stru_1F8.sectname[swift_isaMask & *v1])();
    v5[2](v14, v13, v5);
    type metadata accessor for JSLoadingViewController();
    if (swift_dynamicCastClass())
    {
      v15 = *(v1 + v6);
      if (v15)
      {
        v16 = *&stru_B8.segname[(swift_isaMask & *v15) + 8];
        v17 = v15;
        v18 = v16();

        LOBYTE(v17) = (*&stru_298.segname[(swift_isaMask & *v18) + 8])();
        if (!v17)
        {

          v19 = 0;
LABEL_16:
          (v5)[5](v19, v13, v5);

          return;
        }

        v20 = sub_ABB3C0();

        if (v20)
        {
          v19 = 0;
          goto LABEL_16;
        }
      }
    }

    v21 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalParallaxViewController;
    swift_beginAccess();
    v19 = *(v1 + v21);
    v22 = v19;
    goto LABEL_16;
  }
}

void sub_658CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController);
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  v3 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalParallaxViewController;
  if (v2)
  {
    v4 = v1 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    swift_beginAccess();
    v5 = *(v0 + v3);
    if (!v5)
    {
      return;
    }

    v6 = &v5[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_preferredHeightStyle];
    v7 = *&v5[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_preferredHeightStyle];
    v8 = v5[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_preferredHeightStyle + 8];
    *v6 = 0;
    v6[8] = 1;
    v9 = v5;
    sub_3734EC(v7, v8);
    goto LABEL_10;
  }

  v10 = v2;
  swift_beginAccess();
  v11 = *(v0 + v3);
  if (v11)
  {
    ObjectType = swift_getObjectType();
    v13 = *(v10 + 8);
    v14 = v1;
    v9 = v11;
    v15 = v13(ObjectType, v10);
    v16 = &v9[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_preferredHeightStyle];
    v17 = *&v9[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_preferredHeightStyle];
    v18 = v9[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_preferredHeightStyle + 8];
    *v16 = v15;
    v16[8] = v19 & 1;
    sub_3734EC(v17, v18);

LABEL_10:
  }
}

void sub_65A3C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_AB3430();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Metrics.Event(0);
  __chkstk_darwin(v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
  swift_beginAccess();
  v14 = *(v3 + v13);
  if (v14)
  {
    v36 = v7;
    v15 = *&stru_B8.segname[(swift_isaMask & *v14) + 8];
    v16 = v14;
    v17 = v15();

    v18 = sub_4D39CC();
    if (v18)
    {
      v19 = v18;
      swift_getObjectType();
      v20 = swift_conformsToProtocol2();
      if (v20)
      {
        v21 = v20;
        sub_70FD4(a1, v12, type metadata accessor for Metrics.Event.Action);
        v22 = v10[7];
        v23 = v10[8];
        v24 = v10[6];
        v12[v10[5]] = 0;
        *&v12[v24] = a2;
        *&v12[v22] = 0;
        *&v12[v23] = 0;
        ObjectType = swift_getObjectType();
        v26 = a2;
        v27 = ObjectType;
        v35 = ObjectType;
        v28 = *(v21 + 8);
        v29 = v26;
        v28(v27, v21);
        v31 = v30;
        v32 = swift_getObjectType();
        v38 = 0;
        memset(v37, 0, sizeof(v37));
        sub_3B8F68();
        v33 = sub_21CCAC(1, v9, v37, v32, v31);
        (*(v36 + 8))(v9, v6);
        sub_12E1C(v37, &qword_DF2BD0);
        swift_unknownObjectRelease();
        v34 = (*(v21 + 16))(v35, v21);
        (*&stru_428.segname[(swift_isaMask & *v17) + 16])(v12, v33, v34);
        sub_7103C(v12, type metadata accessor for Metrics.Event);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_65DA0()
{
  v1 = v0;
  v86 = 0;
  v2 = _swiftEmptyArrayStorage;
  v92 = _swiftEmptyArrayStorage;
  v93 = _swiftEmptyArrayStorage;
  v3 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_trailingBarButtonItemMap;
  v89 = *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_trailingBarButtonItemMap);

  v4 = sub_96C40(_swiftEmptyArrayStorage);
  v5 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
  swift_beginAccess();
  v6 = *(v0 + v5);
  if (v6)
  {
    v7 = &swift_isaMask;
    v8 = *&stru_B8.segname[(swift_isaMask & *v6) + 8];
    v9 = v6;
    v10 = v8();

    v11 = (*&stru_338.segname[(swift_isaMask & *v10) - 8])();
    if (v11)
    {
      v12 = sub_D1290(v11, v89);
      if (!v12)
      {
        v20 = (*&stru_B8.segname[swift_isaMask & *v11])();
        if (!v20)
        {
          sub_13C80(0, &unk_DF12E0);
          v7 = (*(&stru_68.offset + (swift_isaMask & *v11)))();
          v29 = v28;
          sub_13C80(0, &unk_E05310);
          v30 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v31 = swift_allocObject();
          *(v31 + 16) = v30;
          *(v31 + 24) = v11;
          v32 = v11;
          v78 = 0;
          v79 = 0;
          v81 = sub_70FA8;
          v82 = v31;
          v80 = 0;
          v99.is_nil = sub_ABA7D0();
          v108.value._countAndFlagsBits = v7;
          v108.value._object = v29;
          v99.value.super.isa = 0;
          v103.value.super.super.isa = 0;
          v14 = sub_AB9FA0(v108, v99, v103, v105).super.super.isa;
          goto LABEL_15;
        }

        v21 = v20;
        sub_13C80(0, &unk_DF12E0);
        v106.value._countAndFlagsBits = (*(&stru_68.offset + (swift_isaMask & *v11)))();
        v98.value.super.isa = 0;
        v98.is_nil = 0;
        v101.value.super.super.isa = 0;
        memset(v94, 0, sizeof(v94));
        v95 = 0;
        v96 = xmmword_AF7710;
        v14 = sub_AB9FA0(v106, v98, v101, v104).super.super.isa;
        PresentationSource.init(viewController:position:)(v1, v94, v90);
        v22 = JSMenu.sections.getter();
        __chkstk_darwin(v22);
        v80 = v21;
        v81 = v90;
        v7 = v21;
        v82 = v21;
        v23 = v86;
        v24 = sub_4BF0D0(sub_70FB0, &v78, v22);
        v86 = v23;

        if (v24 >> 62)
        {
          goto LABEL_70;
        }

        sub_ABB3E0();
        sub_13C80(0, &qword_DEAB30);
        v25 = v24;
        goto LABEL_13;
      }

      v13 = *(&stru_68.offset + (swift_isaMask & *v11));
      v14 = v12;
      v13();
      v15 = sub_AB9260();

      [(objc_class *)v14 setTitle:v15];

      if ((v4 & 0xC000000000000001) != 0)
      {
        while (1)
        {
          v16 = v4 < 0 ? v4 : v4 & 0xFFFFFFFFFFFFFF8;
          v17 = v11;
          v18 = v14;
          v19 = sub_ABAFA0();
          if (!__OFADD__(v19, 1))
          {
            break;
          }

          __break(1u);
LABEL_70:
          sub_13C80(0, &qword_DEAB30);

          v25 = sub_ABAFF0();

LABEL_13:
          sub_13C80(0, &qword_DF1D50);
          v107._countAndFlagsBits = 0;
          v107._object = 0xE000000000000000;
          v109.value._countAndFlagsBits = 0;
          v109.value._object = 0;
          v102.value.super.isa = 0;
          v102.is_nil = 0;
          v26.value = 0;
          isa = sub_ABA5B0(v107, v109, v102, v26, 0xFFFFFFFFFFFFFFFFLL, v25, v83).super.super.isa;

          sub_1611C(v90);
          [(objc_class *)v14 setMenu:isa];

LABEL_15:
          v2 = _swiftEmptyArrayStorage;
          if ((v4 & 0xC000000000000001) == 0)
          {
            goto LABEL_16;
          }
        }

        v4 = sub_42639C(v16, v19 + 1);
      }

      else
      {
LABEL_16:
        v33 = v11;
        v34 = v14;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90[0] = v4;
      sub_92200(v14, v11, isUniquelyReferenced_nonNull_native);

      v4 = v90[0];
      sub_AB9730();
      if (*(&dword_10 + (v93 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v93 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
    }
  }

  *(v1 + v3) = v4;

  v36 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController;
  v37 = &selRef__authenticateReturningError_;
  v38 = [*(v1 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController) navigationItem];
  v39 = [v38 rightBarButtonItems];
  if (v39)
  {
    v40 = v39;
    sub_13C80(0, &unk_DF12E0);
    v41 = sub_AB9760();

    sub_19620(v41);
  }

  else
  {
  }

  v42 = [*(v1 + v36) navigationItem];
  v43 = [v42 leftBarButtonItems];
  if (v43)
  {
    v44 = v43;
    sub_13C80(0, &unk_DF12E0);
    v45 = sub_AB9760();

    sub_19620(v45);
  }

  else
  {
  }

  v46 = *(v1 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contextBarButtonItem);
  if (v46)
  {
    v47 = v46;
    sub_AB9730();
    if (*(&dword_10 + (v93 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v93 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
LABEL_67:
      sub_AB97A0();
    }

    sub_AB97F0();
  }

  v48 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_prefersCancelButton;
  swift_beginAccess();
  if (*(v1 + v48) == 1 && ([v1 _isInPopoverPresentation] & 1) == 0)
  {
    v49 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_cancelBarButtonItem;
    v50 = *(v1 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_cancelBarButtonItem);
    if (v50)
    {
      v51 = *(v1 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_cancelBarButtonItem);
    }

    else
    {
      sub_13C80(0, &unk_DF12E0);
      sub_13C80(0, &unk_E05310);
      v52 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v78 = 0;
      v79 = 0;
      v81 = sub_70F60;
      v82 = v52;
      v80 = 0;
      v97.value.super.super.isa = sub_ABA7D0();
      v97.is_nil = 0;
      v53.super.super.isa = sub_AB9F90(UIBarButtonSystemItemCancel, v97, v100).super.super.isa;
      v54 = *(v1 + v49);
      *(v1 + v49) = v53.super.super.isa;
      v51 = v53.super.super.isa;

      v50 = 0;
    }

    v55 = v50;
    sub_AB9730();
    if (*(&dword_10 + (v93 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v93 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
  }

  v56 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_previousLeftBarButtonItems;
  v57 = v92;

  v59 = sub_12C280(v58, v57);

  if ((v59 & 1) == 0)
  {
    *(v1 + v56) = v57;

    v60 = [v1 v37[190]];
    sub_13C80(0, &unk_DF12E0);
    v61 = sub_AB9740().super.isa;
    [v60 setLeftBarButtonItems:v61 animated:1];
  }

  v62 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_previousRightBarButtonItems;
  v63 = v93;

  v65 = sub_12C280(v64, v63);

  if ((v65 & 1) == 0)
  {
    *(v1 + v62) = v63;

    v66 = [v1 v37[190]];
    sub_13C80(0, &unk_DF12E0);
    v67 = sub_AB9740().super.isa;
    [v66 setRightBarButtonItems:v67 animated:1];
  }

  v68 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalParallaxViewController;
  swift_beginAccess();
  v69 = *(v1 + v68);
  if (v69)
  {
    v91 = v2;
    if (v63 >> 62)
    {
      v1 = sub_ABB060();
    }

    else
    {
      v1 = *(&dword_10 + (v63 & 0xFFFFFFFFFFFFFF8));
    }

    v87 = v57;
    v88 = v4;
    v70 = v69;
    v71 = v70;
    if (v1)
    {
      v37 = 0;
      v72 = _swiftEmptyArrayStorage;
      v47 = &selRef_performWithResponseHandler_;
      v85 = v70;
      do
      {
        v84 = v72;
        v73 = v37;
        while (1)
        {
          if ((v63 & 0xC000000000000001) != 0)
          {
            v74 = sub_3600B8(v73, v63);
          }

          else
          {
            if (v73 >= *(&dword_10 + (v63 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_66;
            }

            v74 = *(v63 + 8 * v73 + 32);
          }

          v75 = v74;
          v37 = (v73 + 1);
          if (__OFADD__(v73, 1))
          {
            __break(1u);
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

          v76 = [v74 customView];
          if (v76)
          {
            v4 = v76;
            type metadata accessor for SymbolButton(0);
            v2 = swift_dynamicCastClass();

            v75 = v4;
            if (v2)
            {
              break;
            }
          }

          ++v73;
          if (v37 == v1)
          {
            v71 = v85;
            v72 = v84;
            goto LABEL_63;
          }
        }

        sub_AB9730();
        if (*(&dword_10 + (v91 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v91 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_AB97A0();
        }

        sub_AB97F0();
        v72 = v91;
        v71 = v85;
      }

      while (v37 != v1);
    }

    else
    {
      v72 = _swiftEmptyArrayStorage;
    }

LABEL_63:

    *&v71[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_barSymbolButtons] = v72;
  }

  else
  {
  }
}

id JSDrivenViewController.init()()
{
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_forceShowingLargeFixedTitleHeader] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_canShowOfflineMessage] = 1;
  v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_prefersCancelButton] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_pageHeaderContentViewController] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalParallaxViewController] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_ppt_isContentReady] = 0;
  v1 = &v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_ppt_onContentIsReady];
  *v1 = 0;
  v1[1] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_appearanceState] = 0x80;
  v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerAppearanceState] = 0x80;
  v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_hasInvokedDidLoadPreemptively] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_lifecycleEventQueue] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_presentationSegue] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_pushSegue] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_offlineMessageView] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_networkConnectivityObserver] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isShowingOfflineMessage] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_viewModelRevision] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isPreparingContentViewController] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerPreparationCompletionHandlers] = _swiftEmptyArrayStorage;
  v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_shouldIgnorePromotionalProperties] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isArtistPromotionalLayoutStyle] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalLayoutStyleDidChange] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_wantsPromotionalParallaxViewController] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_headerItemRevisionID] = 1;
  v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_needsContentOffsetResetOnViewDidAppear] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_artistRadioStationController] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_browseContentItem] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_cancelBarButtonItem] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contextBarButtonItem] = 0;
  v2 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_trailingBarButtonItemMap;
  *&v0[v2] = sub_96C40(_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_previousLeftBarButtonItems] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_previousRightBarButtonItems] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentNavigationItemBinding] = 0;
  v3 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_metricsPageProperties;
  v4 = type metadata accessor for MetricsPageProperties();
  (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  v5 = objc_allocWithZone(type metadata accessor for JSLoadingViewController());
  *&v5[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_loadingView] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageView] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_scriptingBridgeDidFailInitializationDidChangeObserver] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_isAllowedToShowLoadingView] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_isAllowedToShowErrorMessageView] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageTask] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_loadingIndicatorTask] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController] = sub_9F704(_swiftEmptyArrayStorage);
  v9.receiver = v0;
  v9.super_class = type metadata accessor for JSDrivenViewController();
  v6 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", 0, 0);
  sub_6164C();
  v7 = [v6 navigationItem];
  [v7 _setSupportsTwoLineLargeTitles:1];

  return v6;
}

id JSDrivenViewController.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_ppt_onContentIsReady];
  if (v1)
  {

    v1(v2);
    sub_17654(v1);
  }

  sub_612FC(0x81u);
  v3 = *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController];
  sub_61BA0(v3);

  v5.receiver = v0;
  v5.super_class = type metadata accessor for JSDrivenViewController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_66F8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v1 - 8);
  v3 = &v37 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - v5;
  v7 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
  swift_beginAccess();
  v8 = *&v0[v7];
  if (v8)
  {
    v38 = v3;
    v9 = *&stru_1F8.segname[(swift_isaMask & *v8) + 8];
    v10 = v0;
    v11 = v8;
    v39 = v0;
    v9(v0, &protocol witness table for JSDrivenViewController);
    v12 = [v10 traitCollection];
    v13 = UITraitCollection.mediaPickerConfiguration.getter();

    if (v13)
    {
      v14 = objc_allocWithZone(type metadata accessor for JSMediaPickerEnvironment());
      v15 = v13;
      v16 = JSMediaPickerEnvironment.init(configuration:)(v15);
      v17 = v6;
      v18 = v10;
      v19 = *&stru_108.segname[(swift_isaMask & *v11) - 8];
      v37 = v16;
      v20 = v19(v40);
      v10 = v18;
      v6 = v17;
      v21 = v20;
      v23 = *v22;
      *v22 = v16;

      v21(v40, 0);
    }

    v37 = (*(&stru_108.flags + (swift_isaMask & *v11)))();
    v25 = v24;
    v26 = (*&stru_158.segname[(swift_isaMask & *v11) + 16])();
    v28 = v27;
    v29 = v38;
    v30 = (*&stru_1A8.sectname[swift_isaMask & *v11])();
    v31 = (*(&stru_1A8.offset + (swift_isaMask & *v11)))(v30);
    MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)(v37, v25, v26, v28, v29, v31, 0, 0, v6);
    v32 = type metadata accessor for MetricsPageProperties();
    (*(*(v32 - 8) + 56))(v6, 0, 1, v32);
    v33 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_metricsPageProperties;
    swift_beginAccess();
    sub_160B4(v6, &v10[v33], &unk_DF1330);
    swift_endAccess();
    updated = _s16MusicApplication22JSDrivenViewControllerC09componentE0_19didUpdateHeaderItemy0A6JSCore011JSComponentE0C_AF08JSHeaderJ0CtF_0();
    v35 = (*&stru_108.segname[swift_isaMask & *v11])(updated);
    sub_620B4(v35, 0);
    sub_2D4D8(v35);
  }

  else
  {
    sub_620B4(0xF000000000000007, 0);
  }

  return sub_614A0();
}

unint64_t sub_67418()
{
  result = qword_DEA6C8;
  if (!qword_DEA6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEA6C8);
  }

  return result;
}

uint64_t sub_6746C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController;
  result = *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController);
  if (result != a1)
  {
    result = [result isEqual:a1];
    if ((result & 1) == 0)
    {
      sub_61BA0(a1);
      sub_6164C();
      v6 = *(v2 + v4);
      v7 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalParallaxViewController;
      swift_beginAccess();
      v8 = *(v2 + v7);
      if (v8)
      {
        type metadata accessor for JSLoadingViewController();
        v9 = swift_dynamicCastClass() == 0;
        v10 = v8[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_isReadyForDisplay];
        v8[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_isReadyForDisplay] = v9;
        if ((v9 ^ v10))
        {
          v11 = v6;
          v12 = v8;
          sub_3740E4();
          sub_373738();
        }
      }

      type metadata accessor for JSLoadingViewController();
      result = swift_dynamicCastClass();
      if (!result)
      {
        v13 = *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_ppt_isContentReady);
        *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_ppt_isContentReady) = 1;
        if ((v13 & 1) == 0)
        {
          v14 = *(v2 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_ppt_onContentIsReady);
          if (v14)
          {

            v14(v15);
            return sub_17654(v14);
          }
        }
      }
    }
  }

  return result;
}

void *JSDrivenViewController.childForStatusBarStyle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController);
  v2 = v1;
  return v1;
}

void JSDrivenViewController.preferredContentSizeDidChange(forChildContentContainer:)(void *a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for JSDrivenViewController();
  v3 = objc_msgSendSuper2(&v8, "preferredContentSizeDidChangeForChildContentContainer:", a1);
  v4 = (*&stru_1F8.sectname[swift_isaMask & *v1])(v3);
  if (v4)
  {
    v5 = v4;
    sub_64FAC(v4);
  }

  v6 = *(v1 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController);
  if (v6 == a1)
  {
    v7 = v6;
    [v7 preferredContentSize];
    [v1 setPreferredContentSize:?];
  }
}

Swift::Void __swiftcall JSDrivenViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v48.receiver = v1;
  v48.super_class = type metadata accessor for JSDrivenViewController();
  v4 = objc_msgSendSuper2(&v48, "traitCollectionDidChange:", isa);
  v5 = (*&stru_1F8.sectname[swift_isaMask & *v1])(v4);
  if (v5)
  {
    goto LABEL_2;
  }

  v22 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalParallaxViewController;
  swift_beginAccess();
  v23 = *&v2[v22];
  if (v23)
  {
    v24 = *(v23 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_pageHeaderContentViewController);
    if (v24)
    {
      v5 = v24;
LABEL_2:
      v6 = v5;
      sub_64FAC(v5);
    }
  }

  v7 = [v2 traitCollection];
  v8 = UITraitCollection.mediaPickerConfiguration.getter();

  if (v8)
  {
    v9 = objc_allocWithZone(type metadata accessor for JSMediaPickerEnvironment());
    v10 = v8;
    v11 = JSMediaPickerEnvironment.init(configuration:)(v10);
    v12 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
    swift_beginAccess();
    v13 = *&v2[v12];
    if (v13)
    {
      v14 = *&stru_108.segname[(swift_isaMask & *v13) - 8];
      v15 = v13;
      v16 = v11;
      v17 = v14(v47);
      v19 = *v18;
      *v18 = v11;

      v17(v47, 0);
    }

    v20 = *&v2[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contextBarButtonItem];
    if (v20)
    {
      v21 = v20;
      [v21 setHidden:1];
    }
  }

  else
  {
    v25 = *&v2[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contextBarButtonItem];
    if (v25)
    {
      [v25 setHidden:0];
    }
  }

  if (isa)
  {
    v26 = [(objc_class *)isa horizontalSizeClass];
  }

  else
  {
    v26 = 0;
  }

  v27 = [v2 traitCollection];
  v28 = [v27 horizontalSizeClass];

  if ((!isa || v26 != v28) && v2[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_wantsPromotionalParallaxViewController] == 1)
  {
    v29 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
    swift_beginAccess();
    v30 = *&v2[v29];
    if (v30)
    {
      v31 = *&stru_B8.segname[(swift_isaMask & *v30) + 8];
      v32 = v30;
      v33 = v31();

      v34 = (*(&stru_2E8.size + (swift_isaMask & *v33)))();
      if (v34)
      {
        if (((*&stru_B8.segname[(swift_isaMask & *v34) + 16])() & 1) == 0)
        {
          goto LABEL_32;
        }

        v35 = [v2 navigationItem];
        v36 = sub_38720C();

        v37 = [v2 navigationItem];
        v38 = [v2 traitCollection];
        v39 = [v38 horizontalSizeClass];

        if ((v39 == &dword_0 + 1) != (sub_38720C() & 1))
        {
          if (qword_DE6B08 != -1)
          {
            swift_once();
          }

          v40 = qword_E01278;
          v41 = sub_AB9890().super.super.isa;
          objc_setAssociatedObject(v37, v40, v41, &dword_0 + 3);

          v37 = v41;
        }

        v42 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalParallaxViewController;
        swift_beginAccess();
        v43 = *&v2[v42];
        if (v43 && *&v43[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_upsellBannerView])
        {
          v44 = v43;
          v45 = [v2 navigationItem];
          v46 = sub_38720C() & 1;

          if ((v36 & 1) != v46)
          {
            v44[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_setNeedsScrollViewReset] = 1;
          }
        }

        else
        {
LABEL_32:
          v44 = v34;
        }
      }
    }
  }
}

Swift::Void __swiftcall JSDrivenViewController.viewDidLoad()()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for JSDrivenViewController();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [*&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController] view];
    if (v3)
    {
      v4 = v3;
      [v2 addSubview:v3];

      v5 = *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor();
      v6 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for NotificationObserver();
      swift_allocObject();

      *&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_networkConnectivityObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v5, v6, 1, 1, sub_7090C, v7);

      sub_61E28(2);
      sub_612FC(0x80u);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall JSDrivenViewController.viewDidLayoutSubviews()()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for JSDrivenViewController();
  objc_msgSendSuper2(&v5, "viewDidLayoutSubviews");
  v1 = [*&v0[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController] view];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      [v2 setFrame:?];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall JSDrivenViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for JSDrivenViewController();
  objc_msgSendSuper2(&v7, "viewWillAppear:", v2);
  v3 = v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_appearanceState];
  v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_appearanceState] = v2;
  if (v3 > 0x3F || ((v3 ^ v2) & 1) != 0)
  {
    v4 = v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerAppearanceState];
    v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerAppearanceState] = v2;
    if (v4 >> 6)
    {
      v5 = *&v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController];
      if (v4 >> 6 == 1)
      {
        v6 = v5;
        [v6 endAppearanceTransition];
        [v6 beginAppearanceTransition:1 animated:v2];
      }

      else if (v4 == 128)
      {
        [v5 beginAppearanceTransition:1 animated:v2];
      }
    }
  }

  sub_612FC(v2);
  sub_65DA0();
}

Swift::Void __swiftcall JSDrivenViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for JSDrivenViewController();
  objc_msgSendSuper2(&v7, "viewDidAppear:", a1);
  v3 = v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_appearanceState];
  v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_appearanceState] = -127;
  if (v3 == 129)
  {
    goto LABEL_9;
  }

  v4 = v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerAppearanceState];
  v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerAppearanceState] = -127;
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController];
  if (!(v4 >> 6))
  {
    [v5 endAppearanceTransition];
    goto LABEL_9;
  }

  if (v4 >> 6 == 1)
  {
    v6 = v5;
    [v6 endAppearanceTransition];
    [v6 beginAppearanceTransition:1 animated:0];
    [v6 endAppearanceTransition];
  }

  else
  {
    if (v4 != 128)
    {
      goto LABEL_9;
    }

    v6 = v5;
    [v6 beginAppearanceTransition:1 animated:0];
    [v6 endAppearanceTransition];
  }

LABEL_9:
  sub_612FC(a1 | 0x20);
  sub_61E28(2);
  if (v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_needsContentOffsetResetOnViewDidAppear])
  {
    sub_64B24(0);
  }
}

Swift::Void __swiftcall JSDrivenViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = a1;
  v3 = type metadata accessor for Metrics.Event.Action(0);
  __chkstk_darwin(v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for JSDrivenViewController();
  v16.receiver = v1;
  v16.super_class = v6;
  objc_msgSendSuper2(&v16, "viewWillDisappear:", v2);
  v7 = v2 | 0x40;
  v8 = v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_appearanceState];
  v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_appearanceState] = v2 | 0x40;
  if (v8 & 0xC0) != 0x40 || ((v8 ^ v2))
  {
    v9 = v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerAppearanceState];
    v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerAppearanceState] = v7;
    if (v9 >> 6)
    {
      if (v9 >> 6 != 1 && v9 != 128)
      {
        [*&v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController] beginAppearanceTransition:0 animated:v2];
        v7 = v2 | 0x40;
      }
    }

    else
    {
      v10 = *&v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController];
      [v10 endAppearanceTransition];
      [v10 beginAppearanceTransition:0 animated:v2];

      v7 = v2 | 0x40;
    }
  }

  sub_612FC(v7);
  if (sub_2B510C())
  {
    v11 = [v1 navigationController];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 topViewController];

      if (v13)
      {
        *v5 = 1;
        swift_storeEnumTagMultiPayload();
        v14 = *&v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_browseContentItem];
        v15 = v14;
        sub_65A3C(v5, v14);
        sub_7103C(v5, type metadata accessor for Metrics.Event.Action);
      }
    }
  }
}

Swift::Void __swiftcall JSDrivenViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v18.receiver = v1;
  v18.super_class = type metadata accessor for JSDrivenViewController();
  objc_msgSendSuper2(&v18, "viewDidDisappear:", a1);
  v3 = v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_appearanceState];
  v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_appearanceState] = 0x80;
  if (v3 != 128)
  {
    v4 = v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerAppearanceState];
    v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerAppearanceState] = 0x80;
    v5 = *&v1[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController];
    if (!(v4 >> 6))
    {
      v6 = v5;
      [v6 endAppearanceTransition];
      [v6 beginAppearanceTransition:0 animated:0];
      [v6 endAppearanceTransition];
LABEL_8:

      goto LABEL_9;
    }

    if (v4 >> 6 == 1)
    {
      [v5 endAppearanceTransition];
      goto LABEL_9;
    }

    if (v4 != 128)
    {
      v6 = v5;
      [v6 beginAppearanceTransition:0 animated:0];
      [v6 endAppearanceTransition];
      goto LABEL_8;
    }
  }

LABEL_9:
  v7 = sub_4D39CC();
  if (v7)
  {
    v8 = v7;
    swift_getObjectType();
    v9 = swift_conformsToProtocol2();
    if (v9)
    {
      v10 = v9;
      goto LABEL_14;
    }
  }

  sub_12B2FC();
  v8 = v11;
  v10 = v12;
LABEL_14:
  sub_612FC(a1 | 0x60);
  if (v8)
  {
    ObjectType = swift_getObjectType();
    v14 = *(v10 + 8);
    swift_unknownObjectRetain();
    v14(ObjectType, v10);
    v16 = v15;
    swift_unknownObjectRelease();
    v17 = swift_getObjectType();
    (*(v16 + 104))(v17, v16);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

uint64_t JSDrivenViewController.title.getter()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for JSDrivenViewController();
  v1 = objc_msgSendSuper2(&v5, "title");
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_AB92A0();

  return v3;
}

void JSDrivenViewController.title.setter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_AB9260();
  }

  else
  {
    v3 = 0;
  }

  v6.receiver = v2;
  v6.super_class = type metadata accessor for JSDrivenViewController();
  objc_msgSendSuper2(&v6, "setTitle:", v3);

  v4 = *&v2[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController];
  v5 = [v2 title];
  [v4 setTitle:v5];
}

Swift::Void __swiftcall JSDrivenViewController.willMove(toParent:)(UIViewController_optional toParent)
{
  isa = toParent.value.super.super.isa;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for JSDrivenViewController();
  objc_msgSendSuper2(&v5, "willMoveToParentViewController:", isa);
  if (isa)
  {
    v3 = [v1 navigationItem];
    sub_13C80(0, &unk_DF12E0);
    v4 = sub_AB9740().super.isa;
    [v3 setRightBarButtonItems:v4 animated:0];
  }
}

id JSDrivenViewController.preferredStatusBarStyle.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalParallaxViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return [*(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController) preferredStatusBarStyle];
  }

  v3 = v2;
  v4 = PromotionalParallaxViewController.preferredStatusBarStyle.getter();

  return v4;
}

UIScrollView_optional __swiftcall JSDrivenViewController.contentScrollView()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController) contentScrollView];

  v2 = v1;
  result.value.super.super.super.isa = v2;
  result.is_nil = v3;
  return result;
}

void sub_68DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() sharedApplication];
  v6 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = a2;
  v8[4] = a3;
  aBlock[4] = sub_70D9C;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_8;
  v9 = _Block_copy(aBlock);

  [v5 _performBlockAfterCATransactionCommits:v9];
  _Block_release(v9);
}

void sub_68F10(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (qword_DE6A10 != -1)
    {
      v7 = Strong;
      swift_once();
      Strong = v7;
    }

    v6 = Strong;
    sub_274318(Strong, a2, a3);
  }
}

void sub_68FC0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_65DA0();
  }
}

id sub_69014(id result, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v5 = result >> 6;
  if (result >> 6)
  {
    if (v5 == 1)
    {
      if ((a2 & 0xC0) == 0x40)
      {
        return result;
      }
    }

    else if (result == 128)
    {
      if (a2 == 128)
      {
        return result;
      }
    }

    else if (a2 == 129)
    {
      return result;
    }
  }

  else if (a2 < 0x40u)
  {
    return result;
  }

  if (!(a2 >> 6))
  {
    if (!(result >> 6))
    {
      return result;
    }

    if (v5 == 1)
    {
      [v4 endAppearanceTransition];
      v7 = "beginAppearanceTransition:animated:";
      a4 = a2 & 1;
      v6 = v4;
    }

    else
    {
      if (result != 128)
      {
        return result;
      }

      a4 = a2 & 1;
      v6 = v4;
      v7 = "beginAppearanceTransition:animated:";
    }

    a3 = 1;
    goto LABEL_32;
  }

  if (a2 >> 6 != 1)
  {
    if (a2 == 128)
    {
      if (result >> 6)
      {
        if (v5 != 1)
        {
          if (result == 128)
          {
            return result;
          }

          [v4 beginAppearanceTransition:0 animated:0];
        }

        goto LABEL_39;
      }

      [v4 endAppearanceTransition];
      [v4 beginAppearanceTransition:0 animated:0];
    }

    else
    {
      if (!(result >> 6))
      {
LABEL_39:
        v7 = "endAppearanceTransition";
LABEL_40:
        v6 = v4;

        return [v6 v7];
      }

      if (v5 != 1)
      {
        if (result != 128)
        {
          return result;
        }

        [v4 beginAppearanceTransition:1 animated:0];
        goto LABEL_39;
      }

      [v4 endAppearanceTransition];
      [v4 beginAppearanceTransition:1 animated:0];
    }

    v7 = "endAppearanceTransition";
    goto LABEL_40;
  }

  if (!(result >> 6))
  {
    [v4 endAppearanceTransition];
    v7 = "beginAppearanceTransition:animated:";
    a4 = a2 & 1;
    v6 = v4;
    a3 = 0;
LABEL_32:

    return [v6 v7];
  }

  if (v5 != 1 && result != 128)
  {
    a4 = a2 & 1;
    v6 = v4;
    v7 = "beginAppearanceTransition:animated:";
    a3 = 0;
    goto LABEL_32;
  }

  return result;
}

void sub_69258()
{
  v0 = sub_AB4BC0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  static ApplicationCapabilities.shared.getter(v12);
  sub_70C54(v12);
  v4 = BYTE1(v12[0]);
  v5 = *OS_os_log.scripting.unsafeMutableAddressor();
  sub_AB4BD0();
  v6 = sub_AB4BA0();
  v7 = sub_AB9F50();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v4;
    _os_log_impl(&dword_0, v6, v7, "[JSDrivenViewController] Network connectivity did change. Has network connectivity: %{BOOL}d", v8, 8u);
  }

  (*(v1 + 8))(v3, v0);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_61E28(v4);
  }
}

char *sub_693F8(void *a1)
{
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  __chkstk_darwin(v3 - 8);
  result = [a1 view];
  if (result)
  {
    v5 = result;
    [result bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [objc_allocWithZone(type metadata accessor for InformativeView()) initWithFrame:{v7, v9, v11, v13}];
    [v14 setAutoresizingMask:18];
    sub_AB91E0();
    sub_AB3550();
    v15 = sub_AB9320();
    v16 = &v14[OBJC_IVAR____TtC16MusicApplication15InformativeView_title];
    v17 = *&v14[OBJC_IVAR____TtC16MusicApplication15InformativeView_title];
    v18 = *&v14[OBJC_IVAR____TtC16MusicApplication15InformativeView_title + 8];
    *v16 = v15;
    v16[1] = v19;
    sub_22E6D0(v17, v18);

    static DeviceCapabilities.hasWAPICapability.getter();
    sub_AB91E0();
    sub_AB3550();
    v20 = sub_AB9320();
    v21 = &v14[OBJC_IVAR____TtC16MusicApplication15InformativeView_message];
    v22 = *&v14[OBJC_IVAR____TtC16MusicApplication15InformativeView_message];
    v23 = *&v14[OBJC_IVAR____TtC16MusicApplication15InformativeView_message + 8];
    *v21 = v20;
    v21[1] = v24;
    sub_22E7B0(v22, v23);

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_69678(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_viewModelRevision) == a2)
  {
    v3 = result;
    result = swift_beginAccess();
    v5 = *(a3 + 16);
    if (v5)
    {
      v6 = *(v3 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController);
      *(v3 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController) = v5;
      v7 = v5;
      sub_6746C(v6);

      *(v3 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isPreparingContentViewController) = 0;
      v8 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerPreparationCompletionHandlers;
      swift_beginAccess();
      v9 = *(v3 + v8);
      *(v3 + v8) = _swiftEmptyArrayStorage;
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = v9 + 40;
        do
        {
          v12 = *(v11 - 8);

          v12(v13);

          v11 += 16;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_69788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_69678(Strong, a2, a3);
  }
}

void sub_697F4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(Strong + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_headerItemRevisionID) == a2 && (*(Strong + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_wantsPromotionalParallaxViewController) & 1) == 0)
    {
      v5 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalParallaxViewController;
      swift_beginAccess();
      if (*&v4[v5])
      {
        JSDrivenViewController.promotionalParallaxViewController.setter(0);
        sub_655C4();
      }
    }
  }
}

void sub_6989C(void *a1, void *a2)
{
  v4 = [a1 navigationItem];
  [v4 setBackButtonTitle:0];

  LODWORD(a2) = (*&stru_298.segname[(swift_isaMask & *a2) + 8])();
  v7 = [a1 navigationItem];
  if (a2 == 1)
  {
    [v7 setTitle:0];
    v5 = v7;
  }

  else
  {
    v6 = sub_AB9260();
    [v7 setTitle:v6];

    v5 = v6;
  }
}

void sub_699D4(void *a1, uint64_t a2, void *a3)
{
  v5 = (*&stru_1F8.sectname[swift_isaMask & *a1])();
  if (!v5)
  {
    type metadata accessor for PageHeaderContentViewController();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  v6 = v5;
  swift_beginAccess();
  v7 = *(a2 + 16);
  *(a2 + 16) = v6;

  swift_beginAccess();
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = *(&stru_1F8.size + (swift_isaMask & *a3));
    v10 = v8;
    v11 = v9();
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v11 = (*(&stru_1A8.reserved2 + (swift_isaMask & *a3)))();
      v12 = v11 != 0;
    }

    v10[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_isBelowPromotionalImage] = v12;
    sub_337AA0();
  }

  swift_beginAccess();
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = v13;
    sub_64FAC(v14);
  }

  else
  {
    __break(1u);
  }
}

void sub_69B98(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_AB3430();
  v62 = *(v5 - 8);
  v63 = v5;
  __chkstk_darwin(v5);
  v61 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v59 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v68);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v59 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v16 = __chkstk_darwin(v15 - 8);
  v60 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v59 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v20 - 8);
  v22 = &v59 - v21;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v24 = Strong;
  v67 = a3;
  if ([a1 sender])
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v69 = 0u;
    v70 = 0u;
  }

  v74[0] = v69;
  v74[1] = v70;
  if (!*(&v70 + 1))
  {
    sub_12E1C(v74, &unk_DE8E40);
    goto LABEL_10;
  }

  sub_13C80(0, &unk_DF12E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v66 = JSSegueCoordinator.shared.unsafeMutableAddressor();
    v25 = 0;
    v28 = 0;
    v30 = 0;
    v26 = 0uLL;
    v27 = 0uLL;
    v29 = 255;
    goto LABEL_11;
  }

  v25 = *&v79[0];
  v66 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  if (v25)
  {
    v83 = v25;
    v84 = 0u;
    v85 = 0u;
    v86 = 1;
    PresentationSource.Position.init(source:permittedArrowDirections:)(&v83, 15, v75);
    v26 = v75[0];
    v27 = v75[1];
    v28 = v76;
    v29 = v77;
    v30 = v78;
  }

  else
  {
    v28 = 0;
    v30 = 0;
    v26 = 0uLL;
    v29 = 255;
    v27 = 0uLL;
  }

LABEL_11:
  v79[0] = v26;
  v79[1] = v27;
  v80 = v28;
  v81 = v29;
  v82 = v30;
  v65 = v25;
  v64 = v24;
  PresentationSource.init(viewController:position:)(v64, v79, v74);
  v31 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v72, 0, sizeof(v72));
  v73 = 0;
  (*(*(v31 - 8) + 56))(v22, 1, 1, v31);
  sub_15F84(v72, &v69, &unk_DE8E30);
  if (*(&v70 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
    v32 = _s30CollectionViewSelectionHandlerVMa();
    v33 = swift_dynamicCast();
    v34 = *(v32 - 8);
    (*(v34 + 56))(v14, v33 ^ 1u, 1, v32);
    if ((*(v34 + 48))(v14, 1, v32) != 1)
    {
      (*(v8 + 16))(v19, &v14[*(v32 + 20)], v7);
      sub_7103C(v14, _s30CollectionViewSelectionHandlerVMa);
      v35 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    sub_12E1C(&v69, &unk_DE8E30);
    v36 = _s30CollectionViewSelectionHandlerVMa();
    (*(*(v36 - 8) + 56))(v14, 1, 1, v36);
  }

  sub_12E1C(v14, &qword_E037A0);
  v35 = 1;
LABEL_16:
  (*(v8 + 56))(v19, v35, 1, v7);
  v37 = swift_unknownObjectWeakLoadStrong();
  if (v37 && (v38 = v37, sub_12B2FC(), v40 = v39, v42 = v41, v38, v40))
  {
    ObjectType = swift_getObjectType();
    (*(v42 + 8))(ObjectType, v42);
    v45 = v44;
    swift_unknownObjectRelease();
    v46 = v60;
    sub_15F84(v19, v60, &unk_DE8E20);
    if ((*(v8 + 48))(v46, 1, v7) == 1)
    {
      sub_12E1C(v46, &unk_DE8E20);
      v69 = 0u;
      v70 = 0u;
      v71 = 0;
    }

    else
    {
      (*(v8 + 32))(v59, v46, v7);
      sub_2D668();
      sub_ABAD10();
    }

    v48 = swift_getObjectType();
    v49 = v61;
    sub_3B8F68();
    v47 = sub_21CCAC(1, v49, &v69, v48, v45);
    (*(v62 + 8))(v49, v63);
    sub_12E1C(&v69, &qword_DF2BD0);
    sub_12E1C(v19, &unk_DE8E20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v19, &unk_DE8E20);
    v47 = 0;
  }

  v50 = swift_unknownObjectWeakLoadStrong();
  if (v50)
  {
    v51 = v50;
    v52 = v22;
    sub_12AFE8();
    v54 = v53;
  }

  else
  {
    v52 = v22;
    v54 = 0;
  }

  sub_15F28(v74, &v69);
  sub_15F84(v72, (v11 + 104), &unk_DE8E30);
  v55 = v68;
  sub_15F84(v52, &v11[*(v68 + 28)], &unk_DEA510);
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  *(v11 + 8) = 1;
  *(v11 + 9) = 0;
  *(v11 + 10) = 0;
  *(v11 + 11) = 0;
  sub_160B4(&v69, v11, &unk_DEA520);
  *(v11 + 12) = 0;
  v56 = *v66;
  *(&v70 + 1) = v55;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v69);
  sub_70FD4(v11, boxed_opaque_existential_0, _s23MusicPerformanceContextVMa);
  v58 = v56;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v67, 0, v47, v54, &v69);

  sub_12E1C(v52, &unk_DEA510);
  sub_12E1C(v72, &unk_DE8E30);
  sub_1611C(v74);
  sub_7103C(v11, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v69, &unk_DE8E40);
}

void sub_6A4E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_6A544(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 5;
  if (v2 >> 5 <= 1)
  {
    if (v4)
    {
      if ((v3 & 0xE0) != 0x20)
      {
        return 0;
      }
    }

    else if (v3 >= 0x20)
    {
      return 0;
    }
  }

  else if (v4 == 2)
  {
    if ((v3 & 0xE0) != 0x40)
    {
      return 0;
    }
  }

  else if (v4 == 3)
  {
    if ((v3 & 0xE0) != 0x60)
    {
      return 0;
    }
  }

  else if (v2 == 128)
  {
    if (v3 != 128)
    {
      return 0;
    }
  }

  else if (v3 != 129)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_6A66C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_ppt_onContentIsReady);
  sub_307CC(v1);
  return v1;
}

char *sub_6A6C0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA838);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_6A914(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

char *sub_6AA40(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAAF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_6ABB0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAA30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAA38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_6ACE4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA9A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6AEB0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

char *sub_6AFF8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  v16 = 16 * v9;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v11;
}

char *sub_6B0F0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6B1FC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAA88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6B31C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAA28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6B43C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA930);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_6B564(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAAA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAAA8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6B698(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA818);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6B8EC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF12B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6BA68(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[24 * v9])
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_6BB84(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF12F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_6BCC8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAA40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAA48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_6BE34(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 1;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 5);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[4 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 32 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_6BF7C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA9F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6C0A4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[40 * v9])
    {
      memmove(v13, v14, 40 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_6C1E8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_6C31C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEDC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_6C468(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_6C59C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E04F10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6C6C4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 1;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 5);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[32 * v9])
    {
      memmove(v14, v15, 32 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_6C7D0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA9B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6C8F0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA9B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_6C9F4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA9A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6CB34(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[40 * v9])
    {
      memmove(v13, v14, 40 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_6CC50(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1310);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 240);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[240 * v8])
    {
      memmove(v12, v13, 240 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6CD9C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA8A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6CEBC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA8B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_6CFF0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_6D228(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_6D410(void *a1, int64_t a2, char a3)
{
  result = sub_6DB88(a1, a2, a3, *v3, &unk_E24B20, &unk_AF8E60, &unk_DED830);
  *v3 = result;
  return result;
}

char *sub_6D450(char *a1, int64_t a2, char a3)
{
  result = sub_6D950(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_6D470(void *a1, int64_t a2, char a3)
{
  result = sub_6DA54(a1, a2, a3, *v3, &qword_DEAA68, &unk_AF90F8, &qword_DEAA70);
  *v3 = result;
  return result;
}

void *sub_6D4B0(void *a1, int64_t a2, char a3)
{
  result = sub_6DA54(a1, a2, a3, *v3, &qword_DEA820, &unk_AF8E20, &qword_DEA828);
  *v3 = result;
  return result;
}

void *sub_6D4F0(void *a1, int64_t a2, char a3)
{
  result = sub_6DB88(a1, a2, a3, *v3, &qword_DFC2B0, &unk_B077B0, &qword_DFE680);
  *v3 = result;
  return result;
}

char *sub_6D530(char *a1, int64_t a2, char a3)
{
  result = sub_6E6D4(a1, a2, a3, *v3, &qword_DEA878);
  *v3 = result;
  return result;
}

void *sub_6D560(void *a1, int64_t a2, char a3)
{
  result = sub_6E34C(a1, a2, a3, *v3, &unk_DFAA80, &unk_AF9360, &qword_DEA868);
  *v3 = result;
  return result;
}

char *sub_6D5A0(char *a1, int64_t a2, char a3)
{
  result = sub_6DCBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_6D5C0(char *a1, int64_t a2, char a3)
{
  result = sub_6E6D4(a1, a2, a3, *v3, &qword_DEA830);
  *v3 = result;
  return result;
}

char *sub_6D5F0(char *a1, int64_t a2, char a3)
{
  result = sub_6E6D4(a1, a2, a3, *v3, &qword_DEAAF8);
  *v3 = result;
  return result;
}

char *sub_6D620(char *a1, int64_t a2, char a3)
{
  result = sub_6DDC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_6D640(char *a1, int64_t a2, char a3)
{
  result = sub_6DED4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_6D660(char *a1, int64_t a2, char a3)
{
  result = sub_6DFE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_6D680(void *a1, int64_t a2, char a3)
{
  result = sub_6E0EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_6D6A0(char *a1, int64_t a2, char a3)
{
  result = sub_6E22C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_6D6C0(void *a1, int64_t a2, char a3)
{
  result = sub_6E34C(a1, a2, a3, *v3, &qword_DEA8D0, &unk_AF8F08, &qword_DEA8D8);
  *v3 = result;
  return result;
}

void *sub_6D700(void *a1, int64_t a2, char a3)
{
  result = sub_6E494(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_6D720(char *a1, int64_t a2, char a3)
{
  result = sub_6E5C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_6D740(char *a1, int64_t a2, char a3)
{
  result = sub_6E6D4(a1, a2, a3, *v3, &unk_DF1D40);
  *v3 = result;
  return result;
}

char *sub_6D770(char *a1, int64_t a2, char a3)
{
  result = sub_6E6D4(a1, a2, a3, *v3, &qword_DEA950);
  *v3 = result;
  return result;
}

char *sub_6D7A0(char *a1, int64_t a2, char a3)
{
  result = sub_6E7C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_6D7C0(char *a1, int64_t a2, char a3)
{
  result = sub_6E9B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_6D7E0(char *a1, int64_t a2, char a3)
{
  result = sub_6EBFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_6D800(char *a1, int64_t a2, char a3)
{
  result = sub_6ED0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_6D820(char *a1, int64_t a2, char a3)
{
  result = sub_6E6D4(a1, a2, a3, *v3, &qword_DEA990);
  *v3 = result;
  return result;
}

char *sub_6D850(char *a1, int64_t a2, char a3)
{
  result = sub_6EAD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_6D870(size_t a1, int64_t a2, char a3)
{
  result = sub_6EE38(a1, a2, a3, *v3, &qword_DEA970, &unk_AF8FC0, &type metadata accessor for MusicPlayActivityFields);
  *v3 = result;
  return result;
}

size_t sub_6D8B4(size_t a1, int64_t a2, char a3)
{
  result = sub_6EE38(a1, a2, a3, *v3, &qword_DEA8C8, &unk_AF8F00, type metadata accessor for Search.Item);
  *v3 = result;
  return result;
}

size_t sub_6D8F8(size_t a1, int64_t a2, char a3)
{
  result = sub_6EE38(a1, a2, a3, *v3, &qword_DEAAD8, &unk_AF9178, type metadata accessor for Search.Recents.Result.Item);
  *v3 = result;
  return result;
}

char *sub_6D950(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA860);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_6DA54(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_6DB88(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_6DCBC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6DDC8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAAE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6DED4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAB38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6DFE0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E04F10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_6E0EC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA9A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6E22C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAAE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_6E34C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_6E494(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA8F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA900);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6E5C8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA8F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6E6D4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

char *sub_6E7C0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAA18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 3 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_6E8C4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA980);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_6E9B8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAAC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6EAD8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1310);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 240);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[240 * v8])
    {
      memmove(v12, v13, 240 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6EBFC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6ED0C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA8A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_6EE38(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}